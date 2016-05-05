  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vpor %ymm3, %ymm2, %ymm8     #  1     0    4      OPC=vpor_ymm_ymm_ymm     
  vandpd %ymm2, %ymm3, %ymm4   #  2     0x4  4      OPC=vandpd_ymm_ymm_ymm   
  vandnpd %ymm8, %ymm4, %ymm1  #  3     0x8  5      OPC=vandnpd_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
