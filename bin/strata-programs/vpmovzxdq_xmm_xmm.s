  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode           
.target:                                          #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label  
  vzeroall                                        #  2     0x5   3      OPC=vzeroall     
  callq .move_byte_5_of_ymm1_to_r9b               #  3     0x8   5      OPC=callq_label  
  callq .move_064_128_r8_r9_xmm2                  #  4     0xd   5      OPC=callq_label  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label  
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x17  5      OPC=callq_label  
  retq                                            #  7     0x1c  1      OPC=retq         
                                                                                         
.size target, .-target
