  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movb %bl, %dh    #  1     0    2      OPC=movb_rh_r8     
  xchgb %dh, %bl   #  2     0x2  2      OPC=xchgb_r8_rh    
  sbbb %cl, %dh    #  3     0x4  2      OPC=sbbb_rh_r8     
  movzbw %dh, %bx  #  4     0x6  4      OPC=movzbw_r16_rh  
  retq             #  5     0xa  1      OPC=retq           
                                                           
.size target, .-target
