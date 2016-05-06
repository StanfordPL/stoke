  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovupd %xmm1, %xmm13              #  1     0     4      OPC=vmovupd_xmm_xmm           
  vmovdqu %xmm2, %xmm6               #  2     0x4   4      OPC=vmovdqu_xmm_xmm           
  vmovapd %xmm3, %xmm1               #  3     0x8   4      OPC=vmovapd_xmm_xmm           
  vfnmsub132ps %ymm1, %ymm13, %ymm6  #  4     0xc   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vmovapd %xmm6, %xmm1               #  5     0x11  4      OPC=vmovapd_xmm_xmm           
  retq                               #  6     0x15  1      OPC=retq                      
                                                                                         
.size target, .-target
