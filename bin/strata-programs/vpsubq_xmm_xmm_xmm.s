  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label   
  vzeroall                          #  3     0xa   3      OPC=vzeroall      
  subq %r9, %r11                    #  4     0xd   3      OPC=subq_r64_r64  
  subq %r8, %r10                    #  5     0x10  3      OPC=subq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  6     0x13  5      OPC=callq_label   
  retq                              #  7     0x18  1      OPC=retq          
                                                                            
.size target, .-target
