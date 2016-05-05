  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovapd %xmm2, %xmm1                 #  1     0     4      OPC=vmovapd_xmm_xmm    
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vcvtps2pd %xmm3, %ymm10              #  3     0x9   4      OPC=vcvtps2pd_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label        
  retq                                 #  5     0x12  1      OPC=retq               
                                                                                    
.size target, .-target
