  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm5               #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovupd %xmm1, %xmm6               #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vdivps %ymm5, %ymm6, %ymm2         #  3     0x8   4      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xc   5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label         
  retq                               #  6     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
