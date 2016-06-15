  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub132pd %ymm1, %ymm3, %ymm2  #  1     0    5      OPC=vfmsub132pd_ymm_ymm_ymm  
  vminpd %ymm2, %ymm2, %ymm1       #  2     0x5  4      OPC=vminpd_ymm_ymm_ymm       
  retq                             #  3     0x9  1      OPC=retq                     
                                                                                     
.size target, .-target
