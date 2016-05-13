  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm4                  #  1     0     4      OPC=vmovupd_xmm_xmm     
  callq .move_128_64_xmm1_xmm12_xmm13   #  2     0x4   5      OPC=callq_label         
  vmovdqa %xmm4, %xmm14                 #  3     0x9   4      OPC=vmovdqa_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xd   5      OPC=callq_label         
  vmulpd %ymm14, %ymm3, %ymm12          #  5     0x12  5      OPC=vmulpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x17  5      OPC=callq_label         
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
