  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vmulss %xmm2, %xmm2, %xmm1           #  2     0x5  4      OPC=vmulss_xmm_xmm_xmm  
  sqrtss %xmm12, %xmm1                 #  3     0x9  5      OPC=sqrtss_xmm_xmm      
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
