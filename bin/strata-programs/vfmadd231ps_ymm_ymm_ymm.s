  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd132ps %ymm3, %ymm1, %ymm2  #  1     0    5      OPC=vfmadd132ps_ymm_ymm_ymm  
  vminps %ymm2, %ymm2, %ymm10      #  2     0x5  4      OPC=vminps_ymm_ymm_ymm       
  vmaxpd %ymm10, %ymm2, %ymm1      #  3     0x9  5      OPC=vmaxpd_ymm_ymm_ymm       
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
