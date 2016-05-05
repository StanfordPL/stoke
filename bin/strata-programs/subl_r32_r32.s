  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  sbbl %ecx, %ebx  #  2     0x2  2      OPC=sbbl_r32_r32  
  retq             #  3     0x4  1      OPC=retq          
                                                          
.size target, .-target
