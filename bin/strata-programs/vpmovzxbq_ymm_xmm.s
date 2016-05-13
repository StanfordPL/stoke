  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1            #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  callq .move_byte_11_of_ymm1_to_r9b   #  3     0xa   5      OPC=callq_label           
  callq .move_r9b_to_byte_24_of_ymm1   #  4     0xf   5      OPC=callq_label           
  callq .move_byte_6_of_ymm1_to_r9b    #  5     0x14  5      OPC=callq_label           
  callq .move_r9b_to_byte_16_of_ymm1   #  6     0x19  5      OPC=callq_label           
  pmovzxbq %xmm10, %xmm1               #  7     0x1e  6      OPC=pmovzxbq_xmm_xmm      
  retq                                 #  8     0x24  1      OPC=retq                  
                                                                                       
.size target, .-target
