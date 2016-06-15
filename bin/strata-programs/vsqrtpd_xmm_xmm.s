  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  callq .move_064_128_r8_r9_xmm3  #  2     0x5   5      OPC=callq_label      
  vmovdqu %xmm3, %xmm2            #  3     0xa   4      OPC=vmovdqu_xmm_xmm  
  vsqrtpd %ymm2, %ymm1            #  4     0xe   4      OPC=vsqrtpd_ymm_ymm  
  retq                            #  5     0x12  1      OPC=retq             
                                                                             
.size target, .-target
