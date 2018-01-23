  .text
  .globl simple_constprop_1
  .type simple_constprop_1, @function

#! file-offset 0x50
#! rip-offset  0x10
#! capacity    16 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.simple_constprop_1:              #        0x10  0      OPC=<label>          
  cmpq $0xffffffdf, %rdi          #  1     0x10  4      OPC=cmpq_r64_imm8    
  movq $0xffffffffffffffdf, %rax  #  2     0x14  7      OPC=movq_r64_imm32   
  cmovaeq %rdi, %rax              #  3     0x1b  4      OPC=cmovaeq_r64_r64  
  retq                            #  4     0x1f  1      OPC=retq             
                                                                             
.size simple_constprop_1, .-simple_constprop_1

