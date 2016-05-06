  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmovapd %xmm1, %xmm1              #  1     0     4      OPC=vmovapd_xmm_xmm           
  vmovapd %xmm2, %xmm8              #  2     0x4   4      OPC=vmovapd_xmm_xmm           
  vmaxpd %xmm3, %xmm3, %xmm5        #  3     0x8   4      OPC=vmaxpd_xmm_xmm_xmm        
  vfnmadd231pd %ymm5, %ymm8, %ymm1  #  4     0xc   5      OPC=vfnmadd231pd_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                      
                                                                                        
.size target, .-target
