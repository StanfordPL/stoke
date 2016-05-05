  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub132pd %xmm1, %xmm3, %xmm2  #  1     0    5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vmovdqa %xmm2, %xmm12            #  2     0x5  4      OPC=vmovdqa_xmm_xmm          
  vmovups %ymm12, %ymm1            #  3     0x9  5      OPC=vmovups_ymm_ymm          
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
