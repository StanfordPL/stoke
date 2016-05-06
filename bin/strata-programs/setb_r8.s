  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label    
  movsbq %cl, %rbx         #  2     0x5  4      OPC=movsbq_r64_r8  
  orq %rcx, %rbx           #  3     0x9  3      OPC=orq_r64_r64    
  retq                     #  4     0xc  1      OPC=retq           
                                                                   
.size target, .-target
