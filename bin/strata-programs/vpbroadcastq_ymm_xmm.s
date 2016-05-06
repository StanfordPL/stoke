  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm1           #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vmovupd %xmm1, %xmm8                #  2     0x5   4      OPC=vmovupd_xmm_xmm       
  vmovdqa %ymm1, %ymm9                #  3     0x9   4      OPC=vmovdqa_ymm_ymm       
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label           
  retq                                #  5     0x12  1      OPC=retq                  
                                                                                      
.size target, .-target
