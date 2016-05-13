  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vmaxss %xmm13, %xmm13, %xmm0                    #  3     0xa   5      OPC=vmaxss_xmm_xmm_xmm  
  vmovss %xmm11, %xmm13, %xmm9                    #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm  
  movsldup %xmm0, %xmm13                          #  5     0x14  5      OPC=movsldup_xmm_xmm    
  vmovss %xmm10, %xmm13, %xmm8                    #  6     0x19  5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1e  5      OPC=callq_label         
  retq                                            #  8     0x23  1      OPC=retq                
                                                                                                
.size target, .-target
