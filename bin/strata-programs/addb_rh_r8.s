  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  xaddb %ah, %bl         #  1     0    3      OPC=xaddb_r8_rh  
  callq .set_szp_for_bl  #  2     0x3  5      OPC=callq_label  
  movb %bl, %ah          #  3     0x8  2      OPC=movb_rh_r8   
  retq                   #  4     0xa  1      OPC=retq         
                                                               
.size target, .-target
