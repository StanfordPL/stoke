  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  addw %bx, %ax    #  2     0x2  3      OPC=addw_r16_r16  
  adcq %rbx, %rbx  #  3     0x5  3      OPC=adcq_r64_r64  
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
