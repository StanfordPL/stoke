  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label   
  xorl %eax, %eax          #  2     0x5  2      OPC=xorl_r32_r32  
  addb %cl, %ah            #  3     0x7  2      OPC=addb_rh_r8    
  cltq                     #  4     0x9  2      OPC=cltq          
  retq                     #  5     0xb  1      OPC=retq          
                                                                  
.size target, .-target
