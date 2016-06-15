  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label     
  phaddd %xmm12, %xmm2                  #  2     0x5   6      OPC=phaddd_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xb   5      OPC=callq_label     
  phaddd %xmm13, %xmm11                 #  4     0x10  6      OPC=phaddd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x16  5      OPC=callq_label     
  retq                                  #  6     0x1b  1      OPC=retq            
                                                                                  
.size target, .-target
