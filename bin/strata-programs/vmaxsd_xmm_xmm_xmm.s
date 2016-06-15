  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm3, %xmm3, %xmm13  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovdqa %xmm2, %xmm6              #  2     0x4   4      OPC=vmovdqa_xmm_xmm          
  vmaxpd %ymm13, %ymm6, %ymm3       #  3     0x8   5      OPC=vmaxpd_ymm_ymm_ymm       
  vmovsd %xmm3, %xmm2, %xmm1        #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm       
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
