  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovupd %xmm1, %xmm12             #  1     0     4      OPC=vmovupd_xmm_xmm          
  vmovdqu %xmm2, %xmm6              #  2     0x4   4      OPC=vmovdqu_xmm_xmm          
  vmovaps %xmm3, %xmm1              #  3     0x8   4      OPC=vmovaps_xmm_xmm          
  vfmadd213ps %ymm12, %ymm6, %ymm1  #  4     0xc   5      OPC=vfmadd213ps_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
