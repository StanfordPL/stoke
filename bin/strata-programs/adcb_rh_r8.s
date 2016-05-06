  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  movzbl %ah, %edi       #  1     0    3      OPC=movzbl_r32_rh  
  adcb %dil, %bl         #  2     0x3  3      OPC=adcb_r8_r8     
  callq .set_szp_for_bl  #  3     0x6  5      OPC=callq_label    
  movb %bl, %ah          #  4     0xb  2      OPC=movb_rh_r8     
  retq                   #  5     0xd  1      OPC=retq           
                                                                 
.size target, .-target
