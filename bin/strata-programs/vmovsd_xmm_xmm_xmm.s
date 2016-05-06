  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label              
  vmovapd %xmm3, %xmm13              #  2     0x5  4      OPC=vmovapd_xmm_xmm          
  vpunpcklqdq %xmm9, %xmm13, %xmm1   #  3     0x9  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
