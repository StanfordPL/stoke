  .text
  .globl main
  .type main, @function

#! file-offset 0x19e
#! rip-offset  0x15e
#! capacity    16 bytes

# Text             #  Line  RIP    Bytes  Opcode              
.main:             #        0x15e  0      OPC=<label>         
  movl $0x0, %edi  #  1     0x15e  5      OPC=movl_r32_imm32  
  callq .L_168     #  2     0x163  5      OPC=callq_label     
.L_168:            #        0x168  0      OPC=<label>         
  movl $0x0, %eax  #  3     0x168  5      OPC=movl_r32_imm32  
  retq             #  4     0x16d  1      OPC=retq            
                                                              
.size main, .-main

