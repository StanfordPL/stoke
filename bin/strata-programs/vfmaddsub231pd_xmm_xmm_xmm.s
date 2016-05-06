  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vxorps %ymm1, %ymm1, %ymm6          #  1     0     4      OPC=vxorps_ymm_ymm_ymm          
  vmovq %xmm3, %xmm12                 #  2     0x4   4      OPC=vmovq_xmm_xmm               
  vxorpd %xmm1, %xmm1, %xmm11         #  3     0x8   4      OPC=vxorpd_xmm_xmm_xmm          
  vmaxps %ymm6, %ymm12, %ymm6         #  4     0xc   4      OPC=vmaxps_ymm_ymm_ymm          
  vfnmsub231pd %xmm11, %xmm6, %xmm1   #  5     0x10  5      OPC=vfnmsub231pd_xmm_xmm_xmm    
  vfmsubadd231pd %xmm3, %xmm2, %xmm1  #  6     0x15  5      OPC=vfmsubadd231pd_xmm_xmm_xmm  
  retq                                #  7     0x1a  1      OPC=retq                        
                                                                                            
.size target, .-target
