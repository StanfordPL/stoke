  .text
  .globl simple_cheat_constprop_0
  .type simple_cheat_constprop_0, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    16 bytes

# Text                            #  Line  RIP  Bytes  Opcode               
.simple_cheat_constprop_0:        #        0    0      OPC=<label>          
  cmpq $0xffffffdf, %rdi          #  1     0    4      OPC=cmpq_r64_imm8    
  movq $0xffffffffffffffdf, %rax  #  2     0x4  7      OPC=movq_r64_imm32   
  cmovaeq %rdi, %rax              #  3     0xb  4      OPC=cmovaeq_r64_r64  
  retq                            #  4     0xf  1      OPC=retq             
                                                                            
.size simple_cheat_constprop_0, .-simple_cheat_constprop_0

