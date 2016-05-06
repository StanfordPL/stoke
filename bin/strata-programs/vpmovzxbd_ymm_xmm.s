  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vmaxss %xmm5, %xmm5, %xmm4                      #  3     0xa   4      OPC=vmaxss_xmm_xmm_xmm  
  vpmovzxbd %xmm8, %xmm10                         #  4     0xe   5      OPC=vpmovzxbd_xmm_xmm   
  vpmovzxbd %xmm4, %xmm11                         #  5     0x13  5      OPC=vpmovzxbd_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1            #  6     0x18  5      OPC=callq_label         
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
