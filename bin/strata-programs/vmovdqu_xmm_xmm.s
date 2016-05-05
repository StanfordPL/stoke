  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode           
.target:                                #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label  
  vzeroall                              #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm3      #  3     0x8   5      OPC=callq_label  
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xd   5      OPC=callq_label  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label  
  retq                                  #  6     0x17  1      OPC=retq         
                                                                               
.size target, .-target
