  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovapd %xmm2, %xmm0        #  1     0    4      OPC=vmovapd_xmm_xmm     
  vmovups %xmm1, %xmm5        #  2     0x4  4      OPC=vmovups_xmm_xmm     
  vdivpd %ymm0, %ymm5, %ymm7  #  3     0x8  4      OPC=vdivpd_ymm_ymm_ymm  
  movups %xmm7, %xmm1         #  4     0xc  3      OPC=movups_xmm_xmm      
  retq                        #  5     0xf  1      OPC=retq                
                                                                           
.size target, .-target
