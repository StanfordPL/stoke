  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovsxbd %xmm9, %xmm1                          #  2     0x5   5      OPC=vpmovsxbd_xmm_xmm  
  vmovapd %xmm1, %xmm9                            #  3     0xa   4      OPC=vmovapd_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1              #  4     0xe   5      OPC=callq_label        
  pmovsxbd %xmm2, %xmm1                           #  5     0x13  5      OPC=pmovsxbd_xmm_xmm   
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
