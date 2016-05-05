  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  vorpd %xmm2, %xmm3, %xmm12  #  1     0     4      OPC=vorpd_xmm_xmm_xmm  
  vmovupd %ymm12, %ymm1       #  2     0x4   5      OPC=vmovupd_ymm_ymm    
  pxor %xmm1, %xmm2           #  3     0x9   4      OPC=pxor_xmm_xmm       
  vmovdqa %xmm2, %xmm1        #  4     0xd   4      OPC=vmovdqa_xmm_xmm    
  retq                        #  5     0x11  1      OPC=retq               
                                                                           
.size target, .-target
