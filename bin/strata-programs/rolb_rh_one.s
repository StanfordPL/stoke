  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP   Bytes  Opcode            
.target:          #        0     0      OPC=<label>       
  callq .set_sf   #  1     0     5      OPC=callq_label   
  setns %al       #  2     0x5   3      OPC=setns_r8      
  xaddb %ah, %al  #  3     0x8   3      OPC=xaddb_r8_rh   
  xaddb %ah, %al  #  4     0xb   3      OPC=xaddb_r8_rh   
  addw %ax, %ax   #  5     0xe   3      OPC=addw_r16_r16  
  retq            #  6     0x11  1      OPC=retq          
                                                          
.size target, .-target
