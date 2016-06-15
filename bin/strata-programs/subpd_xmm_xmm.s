  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm6   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmaxss %xmm1, %xmm1, %xmm10  #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm  
  vsubpd %ymm6, %ymm10, %ymm7  #  3     0x8   4      OPC=vsubpd_ymm_ymm_ymm  
  movapd %xmm7, %xmm1          #  4     0xc   4      OPC=movapd_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
