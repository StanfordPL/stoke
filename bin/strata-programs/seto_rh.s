  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_of_into_rcx  #  1     0    5      OPC=callq_label   
  xorl %eax, %eax          #  2     0x5  2      OPC=xorl_r32_r32  
  xaddb %ah, %cl           #  3     0x7  3      OPC=xaddb_r8_rh   
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
