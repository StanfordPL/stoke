  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vaddpd %xmm2, %xmm1, %xmm9   #  1     0    4      OPC=vaddpd_xmm_xmm_xmm  
  vminpd %ymm9, %ymm9, %ymm12  #  2     0x4  5      OPC=vminpd_ymm_ymm_ymm  
  movaps %xmm12, %xmm1         #  3     0x9  4      OPC=movaps_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
