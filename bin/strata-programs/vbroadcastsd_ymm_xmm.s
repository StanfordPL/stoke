  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm10, %xmm10, %xmm11    #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovdqu %ymm11, %ymm10                #  3     0xa   5      OPC=vmovdqu_ymm_ymm          
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label              
  retq                                  #  5     0x14  1      OPC=retq                     
                                                                                           
.size target, .-target
