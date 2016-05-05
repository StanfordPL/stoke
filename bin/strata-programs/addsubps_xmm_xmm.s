  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vaddps %xmm2, %xmm1, %xmm3                      #  1     0     4      OPC=vaddps_xmm_xmm_xmm     
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x4   5      OPC=callq_label            
  vsubps %xmm2, %xmm1, %xmm4                      #  3     0x9   4      OPC=vsubps_xmm_xmm_xmm     
  vunpckhpd %ymm4, %ymm4, %ymm6                   #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label            
  vmovss %xmm11, %xmm10, %xmm7                    #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1b  5      OPC=callq_label            
  retq                                            #  8     0x20  1      OPC=retq                   
                                                                                                   
.size target, .-target
