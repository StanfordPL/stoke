  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vpmovsxbd %xmm2, %xmm3               #  1     0     5      OPC=vpmovsxbd_xmm_xmm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vpmovsxdq %xmm10, %xmm8              #  3     0xa   5      OPC=vpmovsxdq_xmm_xmm  
  vpmovsxdq %xmm11, %xmm9              #  4     0xf   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2   #  5     0x14  5      OPC=callq_label        
  vmovapd %ymm2, %ymm1                 #  6     0x19  4      OPC=vmovapd_ymm_ymm    
  retq                                 #  7     0x1d  1      OPC=retq               
                                                                                    
.size target, .-target
