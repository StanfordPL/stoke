  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %xmm1, %xmm14           #  1     0     4      OPC=vmovdqu_xmm_xmm        
  vunpcklpd %xmm14, %xmm2, %xmm8  #  2     0x4   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vsubps %ymm8, %ymm14, %ymm11    #  3     0x9   5      OPC=vsubps_ymm_ymm_ymm     
  movss %xmm11, %xmm1             #  4     0xe   5      OPC=movss_xmm_xmm          
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
