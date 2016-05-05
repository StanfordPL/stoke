  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movswq %bx, %r8  #  1     0    4      OPC=movswq_r64_r16  
  clc              #  2     0x4  1      OPC=clc             
  adcw %r8w, %r8w  #  3     0x5  4      OPC=adcw_r16_r16    
  adcw %bx, %bx    #  4     0x9  3      OPC=adcw_r16_r16    
  retq             #  5     0xc  1      OPC=retq            
                                                            
.size target, .-target
