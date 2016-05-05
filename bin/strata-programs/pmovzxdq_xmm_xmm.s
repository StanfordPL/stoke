  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_256_xmm8_xmm9_ymm3              #  2     0x5   5      OPC=callq_label           
  vmovlhps %xmm3, %xmm3, %xmm6                    #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  movddup %xmm9, %xmm1                            #  4     0xe   5      OPC=movddup_xmm_xmm       
  movss %xmm6, %xmm1                              #  5     0x13  4      OPC=movss_xmm_xmm         
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
