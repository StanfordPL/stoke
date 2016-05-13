  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label        
  vpmovsxwd %xmm12, %ymm1              #  3     0xa   5      OPC=vpmovsxwd_ymm_xmm  
  callq .move_r9b_to_byte_25_of_ymm1   #  4     0xf   5      OPC=callq_label        
  vpmovsxdq %xmm1, %ymm1               #  5     0x14  5      OPC=vpmovsxdq_ymm_xmm  
  retq                                 #  6     0x19  1      OPC=retq               
                                                                                    
.size target, .-target
