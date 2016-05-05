  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovdqa %xmm1, %xmm1             #  1     0     4      OPC=vmovdqa_xmm_xmm          
  vmovupd %xmm3, %xmm0             #  2     0x4   4      OPC=vmovupd_xmm_xmm          
  vmovupd %xmm2, %xmm4             #  3     0x8   4      OPC=vmovupd_xmm_xmm          
  vfmsub132ps %ymm0, %ymm4, %ymm1  #  4     0xc   5      OPC=vfmsub132ps_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
