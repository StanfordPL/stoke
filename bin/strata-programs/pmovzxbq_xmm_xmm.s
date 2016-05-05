  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovzxbq %xmm2, %xmm2             #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label        
  movddup %xmm8, %xmm1               #  3     0xa   5      OPC=movddup_xmm_xmm    
  vorpd %ymm2, %ymm2, %ymm15         #  4     0xf   4      OPC=vorpd_ymm_ymm_ymm  
  unpckhpd %xmm15, %xmm1             #  5     0x13  5      OPC=unpckhpd_xmm_xmm   
  retq                               #  6     0x18  1      OPC=retq               
                                                                                  
.size target, .-target
