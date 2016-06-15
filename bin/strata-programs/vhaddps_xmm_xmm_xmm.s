  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vpbroadcastq %xmm3, %xmm14           #  1     0     5      OPC=vpbroadcastq_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vunpckhps %xmm3, %xmm14, %xmm12      #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckldq %xmm13, %xmm2, %xmm1      #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %ymm12, %ymm1, %ymm11    #  5     0x13  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movlhps %xmm12, %xmm1                #  6     0x18  4      OPC=movlhps_xmm_xmm          
  addps %xmm11, %xmm1                  #  7     0x1c  4      OPC=addps_xmm_xmm            
  retq                                 #  8     0x20  1      OPC=retq                     
                                                                                          
.size target, .-target
