  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xchgb %bl, %ah   #  1     0    2      OPC=xchgb_rh_r8    
  sbbb %bl, %ah    #  2     0x2  2      OPC=sbbb_rh_r8     
  movsbw %ah, %bx  #  3     0x4  4      OPC=movsbw_r16_rh  
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
