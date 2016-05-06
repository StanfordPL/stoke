  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  xaddb %cl, %bl         #  1     0    3      OPC=xaddb_r8_r8  
  callq .set_szp_for_bl  #  2     0x3  5      OPC=callq_label  
  retq                   #  3     0x8  1      OPC=retq         
                                                               
.size target, .-target
