TODO:

- allow manual stride assignment so we can build very wide scrolling framebuffers
  this simply means we advance by a user supplied stride and not the calculated one
  stride always has to be a multiple of 128 bytes
- a tile buffer (for both display layers)
  each layer has their own 16x16 tile index buffer
  tiles are fetched by hardware from a tile buffer (uploaded by VCP or CPU)
  scrolling is achieved by using scroll registers / scanout address, and updating tile indices
  in 'masked' mode this should give us a nice dual layer playfield
- hardware configuration registers
  we need a way to distinguish between hardware versions and the emulator
  we should add a version register to each unit (VCP/VPU/APU etc) which returns a 32 bit version number when read
  status register + offset sounds like a good idea, it's easy to add new entries there