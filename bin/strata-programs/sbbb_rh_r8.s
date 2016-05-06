  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  cmc            #  1     0    1      OPC=cmc         
  notb %bl       #  2     0x1  2      OPC=notb_r8     
  adcb %bl, %ah  #  3     0x3  2      OPC=adcb_rh_r8  
  cmc            #  4     0x5  1      OPC=cmc         
  retq           #  5     0x6  1      OPC=retq        
                                                      
.size target, .-target
