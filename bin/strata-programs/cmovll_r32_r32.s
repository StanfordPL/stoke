  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpxor %xmm2, %xmm2, %xmm1           #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_byte_25_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label        
  setnl %r14b                         #  3     0x9   4      OPC=setnl_r8           
  xaddb %r14b, %r8b                   #  4     0xd   4      OPC=xaddb_r8_r8        
  cmovel %ecx, %ebx                   #  5     0x11  3      OPC=cmovel_r32_r32     
  retq                                #  6     0x14  1      OPC=retq               
                                                                                   
.size target, .-target
