  .text
  .globl simple
  .type simple, @function

#! file-offset 0xb0
#! rip-offset  0x70
#! capacity    16 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.simple:              #        0x70  0      OPC=<label>          
  cmpq %rdi, %rsi     #  1     0x70  3      OPC=cmpq_r64_r64     
  movq %rdi, %rax     #  2     0x73  3      OPC=movq_r64_r64     
  cmovaeq %rsi, %rax  #  3     0x76  4      OPC=cmovaeq_r64_r64  
  retq                #  4     0x7a  1      OPC=retq             
  nop                 #  5     0x7b  1      OPC=nop              
  nop                 #  6     0x7c  1      OPC=nop              
  nop                 #  7     0x7d  1      OPC=nop              
  nop                 #  8     0x7e  1      OPC=nop              
  nop                 #  9     0x7f  1      OPC=nop              
                                                                 
.size simple, .-simple

