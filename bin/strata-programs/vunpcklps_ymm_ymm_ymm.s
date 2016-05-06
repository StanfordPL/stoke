  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movlhps %xmm2, %xmm2           #  1     0     3      OPC=movlhps_xmm_xmm        
  vmovddup %ymm3, %ymm8          #  2     0x3   4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm6          #  3     0x7   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm8, %ymm6, %ymm1  #  4     0xb   5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
