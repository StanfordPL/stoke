  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vminps %ymm1, %ymm1, %ymm9       #  1     0    4      OPC=vminps_ymm_ymm_ymm       
  vfmsub132ps %ymm3, %ymm9, %ymm2  #  2     0x4  5      OPC=vfmsub132ps_ymm_ymm_ymm  
  vminps %ymm2, %ymm2, %ymm1       #  3     0x9  4      OPC=vminps_ymm_ymm_ymm       
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
