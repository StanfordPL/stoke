  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm5, %xmm13                       #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  movddup %xmm4, %xmm4                          #  3     0xa   4      OPC=movddup_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label          
  vpmovzxwq %xmm3, %xmm1                        #  5     0x13  5      OPC=vpmovzxwq_xmm_xmm    
  vhsubps %xmm13, %xmm1, %xmm1                  #  6     0x18  5      OPC=vhsubps_xmm_xmm_xmm  
  retq                                          #  7     0x1d  1      OPC=retq                 
                                                                                               
.size target, .-target
