  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  phsubd %xmm3, %xmm12                  #  2     0x5   6      OPC=phsubd_xmm_xmm       
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0xb   5      OPC=callq_label          
  vphsubd %xmm9, %xmm13, %xmm0          #  4     0x10  5      OPC=vphsubd_xmm_xmm_xmm  
  vmovapd %xmm0, %xmm13                 #  5     0x15  4      OPC=vmovapd_xmm_xmm      
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x19  5      OPC=callq_label          
  retq                                  #  7     0x1e  1      OPC=retq                 
                                                                                       
.size target, .-target
