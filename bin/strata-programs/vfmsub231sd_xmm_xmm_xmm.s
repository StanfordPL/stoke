  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastq %xmm1, %ymm0        #  1     0    5      OPC=vpbroadcastq_ymm_xmm     
  vfmsub132pd %xmm3, %xmm0, %xmm2  #  2     0x5  5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm1, %xmm1       #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm       
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
