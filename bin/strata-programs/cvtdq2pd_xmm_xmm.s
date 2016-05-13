  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxdq %xmm2, %xmm0                #  1     0     5      OPC=vpmovzxdq_xmm_xmm  
  vmovaps %ymm0, %ymm2                  #  2     0x5   4      OPC=vmovaps_ymm_ymm    
  vcvtdq2pd %ymm2, %ymm3                #  3     0x9   4      OPC=vcvtdq2pd_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xd   5      OPC=callq_label        
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x12  5      OPC=callq_label        
  retq                                  #  6     0x17  1      OPC=retq               
                                                                                     
.size target, .-target
