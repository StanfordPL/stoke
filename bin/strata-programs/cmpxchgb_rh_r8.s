  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %cl, %ah      #  1     0    2      OPC=movb_rh_r8      
  cmpxchgb %ah, %bh  #  2     0x2  3      OPC=cmpxchgb_rh_rh  
  retq               #  3     0x5  1      OPC=retq            
                                                              
.size target, .-target
