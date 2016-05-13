  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovupd %xmm2, %xmm1        #  1     0    4      OPC=vmovupd_xmm_xmm     
  vmovaps %xmm3, %xmm7        #  2     0x4  4      OPC=vmovaps_xmm_xmm     
  vsubpd %ymm7, %ymm1, %ymm1  #  3     0x8  4      OPC=vsubpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
