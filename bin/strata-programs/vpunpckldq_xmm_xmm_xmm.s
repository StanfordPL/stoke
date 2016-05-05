  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastq %xmm3, %ymm6      #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %xmm3, %xmm6, %xmm9  #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vpor %xmm9, %xmm9, %xmm7       #  3     0x9   5      OPC=vpor_xmm_xmm_xmm       
  unpcklps %xmm7, %xmm2          #  4     0xe   3      OPC=unpcklps_xmm_xmm       
  vmulpd %xmm6, %xmm2, %xmm12    #  5     0x11  4      OPC=vmulpd_xmm_xmm_xmm     
  vxorps %xmm12, %xmm2, %xmm1    #  6     0x15  5      OPC=vxorps_xmm_xmm_xmm     
  movdqu %xmm2, %xmm1            #  7     0x1a  4      OPC=movdqu_xmm_xmm         
  retq                           #  8     0x1e  1      OPC=retq                   
                                                                                  
.size target, .-target
