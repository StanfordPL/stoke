  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm1             #  1     0     5      OPC=vpbroadcastb_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vaddpd %xmm10, %xmm11, %xmm0          #  3     0xa   5      OPC=vaddpd_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm3   #  4     0xf   5      OPC=callq_label           
  vmovlhps %xmm3, %xmm0, %xmm1          #  5     0x14  4      OPC=vmovlhps_xmm_xmm_xmm  
  vpbroadcastw %xmm1, %ymm1             #  6     0x18  5      OPC=vpbroadcastw_ymm_xmm  
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
