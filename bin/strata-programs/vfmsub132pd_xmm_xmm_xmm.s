  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovsd %xmm3, %xmm3, %xmm0         #  1     0     4      OPC=vmovsd_xmm_xmm_xmm       
  vmovapd %xmm2, %xmm7               #  2     0x4   4      OPC=vmovapd_xmm_xmm          
  vmaxss %xmm7, %xmm2, %xmm13        #  3     0x8   4      OPC=vmaxss_xmm_xmm_xmm       
  vmovups %xmm1, %xmm15              #  4     0xc   4      OPC=vmovups_xmm_xmm          
  vfmsub231pd %ymm0, %ymm15, %ymm13  #  5     0x10  5      OPC=vfmsub231pd_ymm_ymm_ymm  
  vmovupd %xmm13, %xmm1              #  6     0x15  5      OPC=vmovupd_xmm_xmm          
  retq                               #  7     0x1a  1      OPC=retq                     
                                                                                        
.size target, .-target
