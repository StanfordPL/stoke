  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  subl %ecx, %ebx  #  1     0    2      OPC=subl_r32_r32  
  retq             #  2     0x2  1      OPC=retq          
                                                          
.size target, .-target
