  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %ah      #  1     0    2      OPC=movb_rh_r8      
  cmpxchgb %cl, %ah  #  2     0x2  3      OPC=cmpxchgb_rh_r8  
  movsbl %ah, %ebx   #  3     0x5  3      OPC=movsbl_r32_rh   
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
