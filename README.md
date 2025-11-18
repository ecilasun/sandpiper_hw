# Sandpiper SoC

This repo contains the SoC hardware design files for project sandpiper, to run alongside the dual ARM processors of the Xynq 7020 part.

Please check the individual license files in the source directory for any third party opensource library used.

Linux drivers, hardware design ideas and video/audio/vcp units (C)2025 Engin Cilasun

# About Sandpiper

Sandpiper is an interesting machine. It is a linux based small computer based around a Zynq 7020 SoC, with custom video and audio circuitry programmed into the FPGA fabric. A specialzed device driver allows access to a shared memory region and some control registers to control these video and audio devices.

An SDK is provided alongside the PCB for the keyboard module and enclosure files for 3D printing, as well as the build files for Linux kernel and drivers in the following repositories:

https://github.com/ecilasun/sandpiper_hw/

https://github.com/ecilasun/sandpiper_petalinux/

https://github.com/ecilasun/sandpiper_pcb/

https://github.com/ecilasun/sandpiper_sdk/
