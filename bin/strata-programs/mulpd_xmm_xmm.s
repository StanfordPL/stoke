  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovapd %xmm1, %xmm3        #  1     0     4      OPC=vmovapd_xmm_xmm     
  vmovaps %xmm2, %xmm8        #  2     0x4   4      OPC=vmovaps_xmm_xmm     
  vmulpd %ymm8, %ymm3, %ymm6  #  3     0x8   5      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm6, %xmm1         #  4     0xd   4      OPC=movdqa_xmm_xmm      
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
