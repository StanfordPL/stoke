  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbq %bl, %r8  #  1     0    4      OPC=movsbq_r64_r8  
  sarq $0x1, %r8   #  2     0x4  3      OPC=sarq_r64_one   
  movq %r8, %rbx   #  3     0x7  3      OPC=movq_r64_r64   
  retq             #  4     0xa  1      OPC=retq           
                                                           
.size target, .-target
