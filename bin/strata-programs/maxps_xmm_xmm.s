  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode                  
.target:                             #        0    0      OPC=<label>             
  vmaxps %xmm2, %xmm1, %xmm2         #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4  5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm1  #  3     0x9  5      OPC=callq_label         
  retq                               #  4     0xe  1      OPC=retq                
                                                                                  
.size target, .-target
