  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label   
  xorl %eax, %eax          #  2     0x5  2      OPC=xorl_r32_r32  
  addb %bl, %ah            #  3     0x7  2      OPC=addb_rh_r8    
  retq                     #  4     0x9  1      OPC=retq          
                                                                  
.size target, .-target
