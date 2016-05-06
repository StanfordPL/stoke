  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  pmovzxwd %xmm2, %xmm5                         #  1     0     5      OPC=pmovzxwd_xmm_xmm        
  pmovzxwd %xmm1, %xmm1                         #  2     0x5   5      OPC=pmovzxwd_xmm_xmm        
  vpbroadcastw %xmm5, %xmm0                     #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm    
  vmovsldup %xmm5, %xmm14                       #  4     0xf   4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x13  5      OPC=callq_label             
  vpbroadcastw %xmm5, %ymm3                     #  6     0x18  5      OPC=vpbroadcastw_ymm_xmm    
  vpunpckldq %xmm3, %xmm0, %xmm0                #  7     0x1d  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm2, %xmm0, %xmm13               #  8     0x21  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vandnpd %ymm13, %ymm14, %ymm13                #  9     0x25  5      OPC=vandnpd_ymm_ymm_ymm     
  xorps %xmm13, %xmm1                           #  10    0x2a  4      OPC=xorps_xmm_xmm           
  retq                                          #  11    0x2e  1      OPC=retq                    
                                                                                                  
.size target, .-target
