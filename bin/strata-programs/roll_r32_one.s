  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  movl %ebx, %esp  #  2     0x2  2      OPC=movl_r32_r32  
  rcll $0x1, %esp  #  3     0x4  2      OPC=rcll_r32_one  
  rcll $0x1, %ebx  #  4     0x6  2      OPC=rcll_r32_one  
  retq             #  5     0x8  1      OPC=retq          
                                                          
.size target, .-target
