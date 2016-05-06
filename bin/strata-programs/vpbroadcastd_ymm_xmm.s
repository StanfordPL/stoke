  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label           
  callq .move_064_128_r12_r13_xmm3      #  2     0x5   5      OPC=callq_label           
  vbroadcastss %xmm3, %xmm13            #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  vmovdqa %xmm13, %xmm12                #  4     0xf   5      OPC=vmovdqa_xmm_xmm       
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
