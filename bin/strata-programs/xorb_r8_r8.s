  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  movb %cl, %bh          #  1     0    2      OPC=movb_rh_r8   
  xorb %bh, %bl          #  2     0x2  2      OPC=xorb_r8_rh   
  callq .set_szp_for_bl  #  3     0x4  5      OPC=callq_label  
  retq                   #  4     0x9  1      OPC=retq         
                                                               
.size target, .-target
