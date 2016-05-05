  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  sall $0x1, %eax  #  2     0x3  2      OPC=sall_r32_one  
  cltq             #  3     0x5  2      OPC=cltq          
  cltq             #  4     0x7  2      OPC=cltq          
  adcw %ax, %bx    #  5     0x9  3      OPC=adcw_r16_r16  
  addw %bx, %bx    #  6     0xc  3      OPC=addw_r16_r16  
  retq             #  7     0xf  1      OPC=retq          
                                                          
.size target, .-target
