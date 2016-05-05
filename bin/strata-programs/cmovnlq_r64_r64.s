  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xchgq %rbx, %rcx   #  1     0    3      OPC=xchgq_r64_r64   
  cmovlq %rcx, %rbx  #  2     0x3  4      OPC=cmovlq_r64_r64  
  retq               #  3     0x7  1      OPC=retq            
                                                              
.size target, .-target
