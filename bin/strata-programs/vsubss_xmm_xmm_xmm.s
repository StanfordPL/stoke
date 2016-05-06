  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovaps %xmm2, %xmm13         #  1     0     4      OPC=vmovaps_xmm_xmm     
  vpmovzxdq %xmm3, %xmm11       #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm   
  vsubps %ymm11, %ymm13, %ymm6  #  3     0x9   5      OPC=vsubps_ymm_ymm_ymm  
  vmovss %xmm6, %xmm13, %xmm1   #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  retq                          #  5     0x12  1      OPC=retq                
                                                                              
.size target, .-target
