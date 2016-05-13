  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vorpd %xmm3, %xmm3, %xmm6         #  1     0     4      OPC=vorpd_xmm_xmm_xmm         
  vmovapd %xmm1, %xmm3              #  2     0x4   4      OPC=vmovapd_xmm_xmm           
  movaps %xmm6, %xmm1               #  3     0x8   3      OPC=movaps_xmm_xmm            
  vfnmsub213pd %xmm3, %xmm2, %xmm1  #  4     0xb   5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  retq                              #  5     0x10  1      OPC=retq                      
                                                                                        
.size target, .-target
