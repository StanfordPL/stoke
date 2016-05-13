  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpmovzxdq %xmm2, %xmm10               #  1     0     5      OPC=vpmovzxdq_xmm_xmm        
  vunpckhps %xmm10, %xmm2, %xmm12       #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm12, %xmm12, %xmm0     #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vorps %xmm12, %xmm12, %xmm11          #  4     0xf   5      OPC=vorps_xmm_xmm_xmm        
  vmovupd %ymm10, %ymm12                #  5     0x14  5      OPC=vmovupd_ymm_ymm          
  vmovss %xmm11, %xmm0, %xmm13          #  6     0x19  5      OPC=vmovss_xmm_xmm_xmm       
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1e  5      OPC=callq_label              
  retq                                  #  8     0x23  1      OPC=retq                     
                                                                                           
.size target, .-target
