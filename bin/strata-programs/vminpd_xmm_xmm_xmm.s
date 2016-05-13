  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxps %xmm3, %xmm3, %xmm8  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  vmovups %xmm2, %xmm1        #  2     0x4  4      OPC=vmovups_xmm_xmm     
  vminpd %ymm8, %ymm1, %ymm1  #  3     0x8  5      OPC=vminpd_ymm_ymm_ymm  
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
