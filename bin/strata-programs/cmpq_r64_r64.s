  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  subq %rcx, %rbx  #  1     0    3      OPC=subq_r64_r64  
  retq             #  2     0x3  1      OPC=retq          
                                                          
.size target, .-target
