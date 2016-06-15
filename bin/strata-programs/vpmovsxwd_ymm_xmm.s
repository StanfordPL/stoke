  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label       
  vmovq %xmm12, %xmm11                  #  2     0x5   5      OPC=vmovq_xmm_xmm     
  pmovsxwd %xmm13, %xmm13               #  3     0xa   6      OPC=pmovsxwd_xmm_xmm  
  pmovsxwd %xmm11, %xmm12               #  4     0x10  6      OPC=pmovsxwd_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x16  5      OPC=callq_label       
  vmovaps %ymm3, %ymm1                  #  6     0x1b  4      OPC=vmovaps_ymm_ymm   
  retq                                  #  7     0x1f  1      OPC=retq              
                                                                                    
.size target, .-target
