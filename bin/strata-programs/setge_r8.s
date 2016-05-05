  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode           
.target:         #        0    0      OPC=<label>      
  callq .set_cf  #  1     0    5      OPC=callq_label  
  setnge %dh     #  2     0x5  3      OPC=setnge_rh    
  setb %bl       #  3     0x8  3      OPC=setb_r8      
  xorb %dh, %bl  #  4     0xb  2      OPC=xorb_r8_rh   
  retq           #  5     0xd  1      OPC=retq         
                                                       
.size target, .-target
