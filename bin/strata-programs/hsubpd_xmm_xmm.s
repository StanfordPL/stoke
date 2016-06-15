  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vhsubpd %xmm2, %xmm1, %xmm7  #  1     0    4      OPC=vhsubpd_xmm_xmm_xmm  
  movdqu %xmm7, %xmm1          #  2     0x4  4      OPC=movdqu_xmm_xmm       
  retq                         #  3     0x8  1      OPC=retq                 
                                                                             
.size target, .-target
