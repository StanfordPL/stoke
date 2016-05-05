  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %ymm2, %ymm3, %ymm5   #  1     0    4      OPC=vorpd_ymm_ymm_ymm   
  vminpd %ymm5, %ymm5, %ymm1  #  2     0x4  4      OPC=vminpd_ymm_ymm_ymm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
