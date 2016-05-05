  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm4  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %ymm4, %ymm4, %ymm5    #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklwd %ymm5, %ymm4, %ymm1   #  3     0x8  4      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
