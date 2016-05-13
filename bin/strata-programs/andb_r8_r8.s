  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %r12  #  1     0    4      OPC=movsbq_r64_r8  
  movsbl %cl, %ebx  #  2     0x4  3      OPC=movsbl_r32_r8  
  andl %r12d, %ebx  #  3     0x7  3      OPC=andl_r32_r32   
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
