  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label           
  movsbw %r12b, %ax                  #  2     0x5   5      OPC=movsbw_r16_r8         
  movw %ax, %r12w                    #  3     0xa   4      OPC=movw_r16_r16          
  callq .move_064_128_r12_r13_xmm2   #  4     0xe   5      OPC=callq_label           
  callq .move_128_064_xmm2_r8_r9     #  5     0x13  5      OPC=callq_label           
  vpbroadcastd %xmm2, %ymm1          #  6     0x18  5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_r8b_to_byte_3_of_ymm1  #  7     0x1d  5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1  #  8     0x22  5      OPC=callq_label           
  callq .move_r8b_to_byte_1_of_ymm1  #  9     0x27  5      OPC=callq_label           
  vpbroadcastd %xmm1, %xmm1          #  10    0x2c  5      OPC=vpbroadcastd_xmm_xmm  
  retq                               #  11    0x31  1      OPC=retq                  
                                                                                     
.size target, .-target
