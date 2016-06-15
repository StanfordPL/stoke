  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpmovzxbq %xmm2, %ymm2              #  1     0     5      OPC=vpmovzxbq_ymm_xmm     
  vhaddps %ymm2, %ymm2, %ymm2         #  2     0x5   4      OPC=vhaddps_ymm_ymm_ymm   
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x9   5      OPC=callq_label           
  vmovlhps %xmm9, %xmm2, %xmm1        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                #  5     0x13  1      OPC=retq                  
                                                                                      
.size target, .-target
