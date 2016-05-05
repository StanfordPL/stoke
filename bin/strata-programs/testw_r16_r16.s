  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %bx, %r10   #  1     0    4      OPC=movswq_r64_r16  
  movswl %cx, %edi   #  2     0x4  3      OPC=movswl_r32_r16  
  xchgl %edi, %r10d  #  3     0x7  3      OPC=xchgl_r32_r32   
  andl %r10d, %edi   #  4     0xa  3      OPC=andl_r32_r32    
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
