  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode             
.target:                               #        0    0      OPC=<label>        
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label    
  divpd %xmm2, %xmm10                  #  2     0x5  5      OPC=divpd_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa  5      OPC=callq_label    
  retq                                 #  4     0xf  1      OPC=retq           
                                                                               
.size target, .-target
