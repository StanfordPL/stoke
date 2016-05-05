  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovapd %xmm3, %xmm14              #  1     0     4      OPC=vmovapd_xmm_xmm           
  vmovdqu %xmm2, %xmm8               #  2     0x4   4      OPC=vmovdqu_xmm_xmm           
  vminss %xmm1, %xmm1, %xmm1         #  3     0x8   4      OPC=vminss_xmm_xmm_xmm        
  vfnmsub213pd %ymm8, %ymm1, %ymm14  #  4     0xc   5      OPC=vfnmsub213pd_ymm_ymm_ymm  
  vmaxps %xmm14, %xmm14, %xmm1       #  5     0x11  5      OPC=vmaxps_xmm_xmm_xmm        
  por %xmm14, %xmm1                  #  6     0x16  5      OPC=por_xmm_xmm               
  retq                               #  7     0x1b  1      OPC=retq                      
                                                                                         
.size target, .-target
