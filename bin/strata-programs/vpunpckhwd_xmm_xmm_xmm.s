  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label             
  callq .move_128_064_xmm3_r12_r13     #  2     0x5   5      OPC=callq_label             
  callq .move_064_128_r12_r13_xmm2     #  3     0xa   5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xf   5      OPC=callq_label             
  vpunpcklwd %xmm11, %xmm9, %xmm1      #  5     0x14  5      OPC=vpunpcklwd_xmm_xmm_xmm  
  retq                                 #  6     0x19  1      OPC=retq                    
                                                                                         
.size target, .-target
