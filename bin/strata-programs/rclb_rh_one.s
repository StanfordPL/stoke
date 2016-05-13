  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  setnc %al      #  1     0    3      OPC=setnc_r8    
  cwtl           #  2     0x3  1      OPC=cwtl        
  cltq           #  3     0x4  2      OPC=cltq        
  adcb %ah, %ah  #  4     0x6  2      OPC=adcb_rh_rh  
  retq           #  5     0x8  1      OPC=retq        
                                                      
.size target, .-target
