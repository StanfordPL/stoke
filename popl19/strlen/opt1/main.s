  .text
  .globl main
  .type main, @function

#! file-offset 0x19f
#! rip-offset  0x15f
#! capacity    16 bytes

# Text             #  Line  RIP    Bytes  Opcode              
.main:             #        0x15f  0      OPC=<label>         
  movl $0x0, %edi  #  1     0x15f  5      OPC=movl_r32_imm32  
  callq .L_169     #  2     0x164  5      OPC=callq_label     
.L_169:            #        0x169  0      OPC=<label>         
  movl $0x0, %eax  #  3     0x169  5      OPC=movl_r32_imm32  
  retq             #  4     0x16e  1      OPC=retq            
                                                              
.size main, .-main

