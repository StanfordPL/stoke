  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vmovdqa %xmm2, %xmm10               #  1     0     4      OPC=vmovdqa_xmm_xmm    
  callq .move_128_64_xmm2_xmm8_xmm9   #  2     0x4   5      OPC=callq_label        
  vpmovzxwd %xmm9, %xmm9              #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm  
  vpmovzxwd %xmm10, %xmm8             #  4     0xe   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label        
  retq                                #  6     0x18  1      OPC=retq               
                                                                                   
.size target, .-target
