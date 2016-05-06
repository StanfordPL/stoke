  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminpd %xmm3, %xmm2, %xmm4   #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  vmovdqa %ymm4, %ymm14        #  2     0x4  4      OPC=vmovdqa_ymm_ymm     
  vmovsd %xmm14, %xmm2, %xmm1  #  3     0x8  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
