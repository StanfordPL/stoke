  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm6, %xmm3                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  pmovsxdq %xmm3, %xmm9                         #  3     0x9   6      OPC=pmovsxdq_xmm_xmm        
  pmovsxdq %xmm2, %xmm8                         #  4     0xf   6      OPC=pmovsxdq_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1            #  5     0x15  5      OPC=callq_label             
  retq                                          #  6     0x1a  1      OPC=retq                    
                                                                                                  
.size target, .-target
