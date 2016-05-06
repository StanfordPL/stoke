  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  movb %bl, %bh  #  1     0    2      OPC=movb_rh_r8  
  subb %cl, %bh  #  2     0x2  2      OPC=subb_rh_r8  
  movb %bh, %bl  #  3     0x4  2      OPC=movb_r8_rh  
  retq           #  4     0x6  1      OPC=retq        
                                                      
.size target, .-target
