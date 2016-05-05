  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label            
  vsubpd %xmm3, %xmm8, %xmm0         #  2     0x5  4      OPC=vsubpd_xmm_xmm_xmm     
  vunpcklpd %xmm9, %xmm0, %xmm1      #  3     0x9  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq                   
                                                                                     
.size target, .-target
