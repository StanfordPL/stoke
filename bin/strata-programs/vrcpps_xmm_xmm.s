  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label     
  vzeroall                              #  2     0x5   3      OPC=vzeroall        
  callq .move_064_128_r12_r13_xmm1      #  3     0x8   5      OPC=callq_label     
  vrcpps %ymm1, %ymm10                  #  4     0xd   4      OPC=vrcpps_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x11  5      OPC=callq_label     
  retq                                  #  6     0x16  1      OPC=retq            
                                                                                  
.size target, .-target
