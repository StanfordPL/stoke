  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode           
.target:                               #        0    0      OPC=<label>      
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label  
  callq .move_64_128_xmm10_xmm11_xmm1  #  2     0x5  5      OPC=callq_label  
  retq                                 #  3     0xa  1      OPC=retq         
                                                                             
.size target, .-target
