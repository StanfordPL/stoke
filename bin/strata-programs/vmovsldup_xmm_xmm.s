  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vbroadcastss %xmm2, %xmm9            #  2     0x5   5      OPC=vbroadcastss_xmm_xmm     
  vbroadcastss %xmm13, %xmm5           #  3     0xa   5      OPC=vbroadcastss_xmm_xmm     
  vpunpcklqdq %xmm5, %xmm9, %xmm1      #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
