#!/usr/bin/env python3
"""Convert an image to raw RGB565 bytes suitable for writing to a Linux framebuffer.

Produces *raw pixel bytes* (no header). By default, output is little-endian RGB565,
matching the behavior described by https://longfangsong.github.io/en/image-to-rgb565/.

Examples
--------
# Convert and resize to exactly 800x480, then write to a file
python tools/image_to_rgb565.py input.png out.rgb565 --size 800x480

# Write directly to /dev/fb0 (run on Linux, usually as root)
python tools/image_to_rgb565.py input.png - --size 800x480 | cat > /dev/fb0

# If your framebuffer line length includes padding, add per-row stride
python tools/image_to_rgb565.py input.png out.rgb565 --size 800x480 --stride-bytes 2048

Notes
-----
For `cat out.rgb565 > /dev/fb0` to display correctly, these must match your fb:
- resolution (width/height)
- pixel format (RGB565 vs BGR565)
- endianness (most common: little)
- stride/line_length (bytes per row)
"""

from __future__ import annotations

import argparse
import os
import re
import sys
from dataclasses import dataclass
from typing import BinaryIO, Iterable, Optional, Tuple


try:
    from PIL import Image
except ImportError as exc:  # pragma: no cover
    raise SystemExit(
        "Missing dependency: Pillow. Install with: pip install pillow"
    ) from exc


_SIZE_RE = re.compile(r"^(?P<w>\d+)x(?P<h>\d+)$")


@dataclass(frozen=True)
class Options:
    width: Optional[int]
    height: Optional[int]
    stride_bytes: Optional[int]
    endian: str  # 'little' | 'big'
    pixel_format: str  # 'rgb565' | 'bgr565'
    flip_x: bool
    flip_y: bool
    bg_rgb: Tuple[int, int, int]


def _parse_size(size: Optional[str]) -> Tuple[Optional[int], Optional[int]]:
    if not size:
        return None, None
    match = _SIZE_RE.match(size.strip())
    if not match:
        raise argparse.ArgumentTypeError("--size must be like 800x480")
    return int(match.group("w")), int(match.group("h"))


def _parse_rgb(value: str) -> Tuple[int, int, int]:
    v = value.strip()
    if v.startswith("#"):
        v = v[1:]
    if len(v) != 6 or any(c not in "0123456789abcdefABCDEF" for c in v):
        raise argparse.ArgumentTypeError("--bg must be a 6-hex-digit RGB value like 000000 or #112233")
    r = int(v[0:2], 16)
    g = int(v[2:4], 16)
    b = int(v[4:6], 16)
    return r, g, b


def _open_output(path: str) -> BinaryIO:
    if path == "-":
        # On Windows, ensure stdout is in binary mode.
        if hasattr(sys.stdout, "buffer"):
            return sys.stdout.buffer  # type: ignore[return-value]
        return sys.stdout  # pragma: no cover
    return open(path, "wb")


def _composite_over_bg(img: Image.Image, bg_rgb: Tuple[int, int, int]) -> Image.Image:
    """Ensure we have an RGB image, compositing alpha over a solid background."""
    if img.mode in ("RGBA", "LA") or (img.mode == "P" and "transparency" in img.info):
        rgba = img.convert("RGBA")
        background = Image.new("RGBA", rgba.size, (bg_rgb[0], bg_rgb[1], bg_rgb[2], 255))
        composited = Image.alpha_composite(background, rgba)
        return composited.convert("RGB")
    return img.convert("RGB")


def _iter_rgb_bytes(img_rgb: Image.Image) -> memoryview:
    # `tobytes()` returns packed RGB bytes: R, G, B, R, G, B ...
    return memoryview(img_rgb.tobytes())


def _pack_rgb565_bytes(
    rgb_bytes: memoryview,
    *,
    endian: str,
    pixel_format: str,
) -> bytearray:
    """Convert packed RGB bytes to packed RGB565 (2 bytes per pixel)."""
    if endian not in ("little", "big"):
        raise ValueError("endian must be 'little' or 'big'")
    if pixel_format not in ("rgb565", "bgr565"):
        raise ValueError("pixel_format must be 'rgb565' or 'bgr565'")

    out = bytearray((len(rgb_bytes) // 3) * 2)
    out_i = 0

    if pixel_format == "rgb565":
        for i in range(0, len(rgb_bytes), 3):
            r = rgb_bytes[i]
            g = rgb_bytes[i + 1]
            b = rgb_bytes[i + 2]
            value = ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3)
            if endian == "little":
                out[out_i] = value & 0xFF
                out[out_i + 1] = (value >> 8) & 0xFF
            else:
                out[out_i] = (value >> 8) & 0xFF
                out[out_i + 1] = value & 0xFF
            out_i += 2
    else:  # bgr565
        for i in range(0, len(rgb_bytes), 3):
            r = rgb_bytes[i]
            g = rgb_bytes[i + 1]
            b = rgb_bytes[i + 2]
            value = ((b & 0xF8) << 8) | ((g & 0xFC) << 3) | (r >> 3)
            if endian == "little":
                out[out_i] = value & 0xFF
                out[out_i + 1] = (value >> 8) & 0xFF
            else:
                out[out_i] = (value >> 8) & 0xFF
                out[out_i + 1] = value & 0xFF
            out_i += 2

    return out


def _write_with_optional_stride(
    out_f: BinaryIO,
    rgb565: bytearray,
    *,
    width: int,
    height: int,
    stride_bytes: Optional[int],
) -> None:
    row_bytes = width * 2
    if stride_bytes is None or stride_bytes == row_bytes:
        out_f.write(rgb565)
        return

    if stride_bytes < row_bytes:
        raise SystemExit(
            f"--stride-bytes ({stride_bytes}) must be >= width*2 ({row_bytes})"
        )

    pad = bytes(stride_bytes - row_bytes)
    # Write row-by-row to insert padding.
    offset = 0
    for _ in range(height):
        out_f.write(rgb565[offset : offset + row_bytes])
        out_f.write(pad)
        offset += row_bytes


def convert_image_to_rgb565(in_path: str, out_path: str, opts: Options) -> None:
    img = Image.open(in_path)
    img = _composite_over_bg(img, opts.bg_rgb)

    if opts.flip_x:
        img = img.transpose(Image.FLIP_LEFT_RIGHT)
    if opts.flip_y:
        img = img.transpose(Image.FLIP_TOP_BOTTOM)

    width = img.width
    height = img.height
    if opts.width is not None and opts.height is not None:
        if (img.width, img.height) != (opts.width, opts.height):
            # Use nearest to mimic a simple, predictable embedded-style resample.
            img = img.resize((opts.width, opts.height), resample=Image.Resampling.NEAREST)
        width, height = opts.width, opts.height

    rgb_bytes = _iter_rgb_bytes(img)
    rgb565 = _pack_rgb565_bytes(rgb_bytes, endian=opts.endian, pixel_format=opts.pixel_format)

    with _open_output(out_path) as out_f:
        _write_with_optional_stride(
            out_f,
            rgb565,
            width=width,
            height=height,
            stride_bytes=opts.stride_bytes,
        )


def _build_arg_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Convert an image to raw RGB565 bytes (default: little-endian).",
    )
    p.add_argument("input", help="Input image path (png/jpg/...) ")
    p.add_argument(
        "output",
        help="Output raw file path, or '-' to write to stdout",
    )
    p.add_argument(
        "--size",
        default=None,
        help="Optional output size like 800x480 (resizes with nearest-neighbor)",
    )
    p.add_argument(
        "--stride-bytes",
        type=int,
        default=None,
        help="Optional bytes-per-row (pads each row with zeros to match framebuffer stride)",
    )
    p.add_argument(
        "--endianness",
        choices=("little", "big"),
        default="little",
        help="Byte order of each 16-bit pixel (default: little)",
    )
    p.add_argument(
        "--format",
        choices=("rgb565", "bgr565"),
        default="rgb565",
        help="Pixel channel ordering (default: rgb565)",
    )
    p.add_argument("--flip-x", action="store_true", help="Flip image horizontally")
    p.add_argument("--flip-y", action="store_true", help="Flip image vertically")
    p.add_argument(
        "--bg",
        type=_parse_rgb,
        default=(0, 0, 0),
        help="Background color for transparent pixels, e.g. 000000 or #112233 (default: 000000)",
    )
    return p


def main(argv: Optional[Iterable[str]] = None) -> int:
    parser = _build_arg_parser()
    args = parser.parse_args(list(argv) if argv is not None else None)

    width, height = _parse_size(args.size)

    opts = Options(
        width=width,
        height=height,
        stride_bytes=args.stride_bytes,
        endian=args.endianness,
        pixel_format=args.format,
        flip_x=args.flip_x,
        flip_y=args.flip_y,
        bg_rgb=args.bg,
    )

    convert_image_to_rgb565(args.input, args.output, opts)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
