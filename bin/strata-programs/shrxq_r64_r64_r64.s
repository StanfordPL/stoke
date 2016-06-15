  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movq %rcx, %rbx  #  1     0    3      OPC=movq_r64_r64   
  xaddb %cl, %dl   #  2     0x3  3      OPC=xaddb_r8_r8    
  xchgw %bx, %bx   #  3     0x6  3      OPC=xchgw_r16_r16  
  shrq %cl, %rbx   #  4     0x9  3      OPC=shrq_r64_cl    
  retq             #  5     0xc  1      OPC=retq           
                                                           
.size target, .-target
