  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovsldup %xmm11, %xmm11                        #  2     0x5   5      OPC=vmovsldup_xmm_xmm  
  vmovdqa %xmm11, %xmm3                           #  3     0xa   5      OPC=vmovdqa_xmm_xmm    
  vmovsldup %xmm9, %xmm1                          #  4     0xf   5      OPC=vmovsldup_xmm_xmm  
  unpcklpd %xmm3, %xmm1                           #  5     0x14  4      OPC=unpcklpd_xmm_xmm   
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
