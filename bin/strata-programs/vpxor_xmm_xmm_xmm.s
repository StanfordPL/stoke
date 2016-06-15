  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label      
  vmovdqa %xmm3, %xmm1              #  2     0x5   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9    #  3     0x9   5      OPC=callq_label      
  xorq %r8, %r12                    #  4     0xe   3      OPC=xorq_r64_r64     
  xorq %r9, %r13                    #  5     0x11  3      OPC=xorq_r64_r64     
  callq .move_064_128_r12_r13_xmm1  #  6     0x14  5      OPC=callq_label      
  retq                              #  7     0x19  1      OPC=retq             
                                                                               
.size target, .-target
