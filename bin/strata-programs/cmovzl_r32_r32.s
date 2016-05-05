  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movl %ecx, %esi    #  1     0    2      OPC=movl_r32_r32    
  cmovel %esi, %ebx  #  2     0x2  3      OPC=cmovel_r32_r32  
  retq               #  3     0x5  1      OPC=retq            
                                                              
.size target, .-target
