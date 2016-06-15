  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovapd %xmm3, %xmm5         #  1     0    4      OPC=vmovapd_xmm_xmm     
  vmaxps %xmm2, %xmm2, %xmm11  #  2     0x4  4      OPC=vmaxps_xmm_xmm_xmm  
  vmaxpd %ymm5, %ymm11, %ymm1  #  3     0x8  4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
