  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                 
.target:                       #        0     0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm1       #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  vpmovzxdq %xmm1, %ymm13      #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm  
  vorpd %ymm13, %ymm13, %ymm1  #  3     0xa   5      OPC=vorpd_ymm_ymm_ymm  
  vmovdqu %ymm1, %ymm1         #  4     0xf   4      OPC=vmovdqu_ymm_ymm    
  retq                         #  5     0x13  1      OPC=retq               
                                                                            
.size target, .-target
