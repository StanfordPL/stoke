  .text
  .globl simple
  .type simple, @function

#! file-offset 0x90
#! rip-offset  0x50
#! capacity    16 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.simple:              #        0x50  0      OPC=<label>          
  cmpq %rdi, %rsi     #  1     0x50  3      OPC=cmpq_r64_r64     
  movq %rdi, %rax     #  2     0x53  3      OPC=movq_r64_r64     
  cmovaeq %rsi, %rax  #  3     0x56  4      OPC=cmovaeq_r64_r64  
  retq                #  4     0x5a  1      OPC=retq             
  nop                 #  5     0x5b  1      OPC=nop              
  nop                 #  6     0x5c  1      OPC=nop              
  nop                 #  7     0x5d  1      OPC=nop              
  nop                 #  8     0x5e  1      OPC=nop              
  nop                 #  9     0x5f  1      OPC=nop              
                                                                 
.size simple, .-simple

