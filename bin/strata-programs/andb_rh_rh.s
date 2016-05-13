  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %dx  #  1     0    4      OPC=movsbw_r16_rh  
  andb %bh, %dl    #  2     0x4  2      OPC=andb_r8_rh     
  xchgb %ah, %dl   #  3     0x6  2      OPC=xchgb_r8_rh    
  testb %bh, %dl   #  4     0x8  2      OPC=testb_r8_rh    
  retq             #  5     0xa  1      OPC=retq           
                                                           
.size target, .-target
