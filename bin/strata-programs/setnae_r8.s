  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  setc %r15b         #  1     0    4      OPC=setc_r8        
  movzbw %r15b, %bx  #  2     0x4  5      OPC=movzbw_r16_r8  
  retq               #  3     0x9  1      OPC=retq           
                                                             
.size target, .-target
