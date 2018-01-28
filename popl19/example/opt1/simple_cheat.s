  .text
  .globl simple_cheat
  .type simple_cheat, @function

#! file-offset 0xba
#! rip-offset  0x7a
#! capacity    11 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.simple_cheat:        #        0x7a  0      OPC=<label>          
  cmpq %rsi, %rdi     #  1     0x7a  3      OPC=cmpq_r64_r64     
  movq %rsi, %rax     #  2     0x7d  3      OPC=movq_r64_r64     
  cmovaeq %rdi, %rax  #  3     0x80  4      OPC=cmovaeq_r64_r64  
  retq                #  4     0x84  1      OPC=retq             
                                                                 
.size simple_cheat, .-simple_cheat

