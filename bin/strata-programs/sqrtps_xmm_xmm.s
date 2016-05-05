  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovdqu %xmm2, %xmm4  #  1     0    4      OPC=vmovdqu_xmm_xmm  
  vsqrtps %ymm4, %ymm7  #  2     0x4  4      OPC=vsqrtps_ymm_ymm  
  movdqa %xmm7, %xmm1   #  3     0x8  4      OPC=movdqa_xmm_xmm   
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
