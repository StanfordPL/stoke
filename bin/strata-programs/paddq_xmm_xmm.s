  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm1_r8_r9    #  2     0x5   5      OPC=callq_label    
  addq %r10, %r8                    #  3     0xa   3      OPC=addq_r64_r64   
  xchgw %r8w, %r8w                  #  4     0xd   4      OPC=xchgw_r16_r16  
  addq %r11, %r9                    #  5     0x11  3      OPC=addq_r64_r64   
  callq .move_064_128_r8_r9_xmm1    #  6     0x14  5      OPC=callq_label    
  retq                              #  7     0x19  1      OPC=retq           
                                                                             
.size target, .-target
