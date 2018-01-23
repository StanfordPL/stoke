  .text
  .globl simple_cheat
  .type simple_cheat, @function

#! file-offset 0xa0
#! rip-offset  0x60
#! capacity    11 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.simple_cheat:        #        0x60  0      OPC=<label>          
  cmpq %rsi, %rdi     #  1     0x60  3      OPC=cmpq_r64_r64     
  movq %rsi, %rax     #  2     0x63  3      OPC=movq_r64_r64     
  cmovaeq %rdi, %rax  #  3     0x66  4      OPC=cmovaeq_r64_r64  
  retq                #  4     0x6a  1      OPC=retq             
                                                                 
.size simple_cheat, .-simple_cheat

