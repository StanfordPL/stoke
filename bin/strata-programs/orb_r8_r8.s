  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode            
.target:                 #        0    0      OPC=<label>       
  xorl %eax, %eax        #  1     0    2      OPC=xorl_r32_r32  
  setnae %ah             #  2     0x2  3      OPC=setnae_rh     
  adcb %cl, %ah          #  3     0x5  2      OPC=adcb_rh_r8    
  orb %ah, %bl           #  4     0x7  2      OPC=orb_r8_rh     
  callq .set_szp_for_bl  #  5     0x9  5      OPC=callq_label   
  retq                   #  6     0xe  1      OPC=retq          
                                                                
.size target, .-target
