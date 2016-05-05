  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %cx  #  1     0    4      OPC=movsbw_r16_rh  
  adcb %cl, %bl    #  2     0x4  2      OPC=adcb_r8_r8     
  retq             #  3     0x6  1      OPC=retq           
                                                           
.size target, .-target
