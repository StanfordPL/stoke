  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovdqu %xmm3, %xmm10         #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovups %xmm2, %xmm11         #  2     0x4   4      OPC=vmovups_xmm_xmm     
  vaddps %ymm10, %ymm11, %ymm3  #  3     0x8   5      OPC=vaddps_ymm_ymm_ymm  
  vmovdqa %xmm3, %xmm1          #  4     0xd   4      OPC=vmovdqa_xmm_xmm     
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
