  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode            
.target:                  #        0    0      OPC=<label>       
  notl %ecx               #  1     0    2      OPC=notl_r32      
  cmc                     #  2     0x2  1      OPC=cmc           
  adcl %ecx, %ebx         #  3     0x3  2      OPC=adcl_r32_r32  
  callq .set_szp_for_ebx  #  4     0x5  5      OPC=callq_label   
  cmc                     #  5     0xa  1      OPC=cmc           
  retq                    #  6     0xb  1      OPC=retq          
                                                                 
.size target, .-target
