  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm5            #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vminpd %ymm5, %ymm5, %ymm5           #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm    
  vsqrtpd %xmm5, %xmm10                #  4     0xe   4      OPC=vsqrtpd_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
