  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vmovsldup %xmm13, %xmm6               #  2     0x5   5      OPC=vmovsldup_xmm_xmm  
  vmovsldup %xmm2, %xmm8                #  3     0xa   4      OPC=vmovsldup_xmm_xmm  
  vmovapd %xmm6, %xmm9                  #  4     0xe   4      OPC=vmovapd_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label        
  retq                                  #  6     0x17  1      OPC=retq               
                                                                                     
.size target, .-target
