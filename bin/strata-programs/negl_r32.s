  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  notl %ebx        #  1     0    2      OPC=notl_r32      
  xorl %eax, %eax  #  2     0x2  2      OPC=xorl_r32_r32  
  setnb %al        #  3     0x4  3      OPC=setnb_r8      
  addl %eax, %ebx  #  4     0x7  2      OPC=addl_r32_r32  
  cmc              #  5     0x9  1      OPC=cmc           
  retq             #  6     0xa  1      OPC=retq          
                                                          
.size target, .-target
