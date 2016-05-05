  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm9  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm3, %ymm2, %ymm6  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqa %ymm9, %ymm2             #  3     0x8   5      OPC=vmovdqa_ymm_ymm          
  vsubpd %ymm6, %ymm2, %ymm1       #  4     0xd   4      OPC=vsubpd_ymm_ymm_ymm       
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
