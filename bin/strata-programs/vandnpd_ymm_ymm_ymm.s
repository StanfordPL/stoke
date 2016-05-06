  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  pandn %xmm3, %xmm2                    #  2     0x5   4      OPC=pandn_xmm_xmm        
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label          
  vmovdqa %xmm10, %xmm14                #  4     0xe   5      OPC=vmovdqa_xmm_xmm      
  vandnpd %xmm13, %xmm11, %xmm11        #  5     0x13  5      OPC=vandnpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm3  #  6     0x18  5      OPC=callq_label          
  vorpd %ymm3, %ymm14, %ymm1            #  7     0x1d  4      OPC=vorpd_ymm_ymm_ymm    
  retq                                  #  8     0x21  1      OPC=retq                 
                                                                                       
.size target, .-target
