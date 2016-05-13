  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  orq %rcx, %rdx   #  1     0    3      OPC=orq_r64_r64   
  xorq %rcx, %rdx  #  2     0x3  3      OPC=xorq_r64_r64  
  movq %rdx, %rbx  #  3     0x6  3      OPC=movq_r64_r64  
  retq             #  4     0x9  1      OPC=retq          
                                                          
.size target, .-target
