  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm4, %xmm3                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovapd %xmm3, %xmm14                         #  3     0xa   4      OPC=vmovapd_xmm_xmm    
  movdqa %xmm14, %xmm1                          #  4     0xe   5      OPC=movdqa_xmm_xmm     
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
