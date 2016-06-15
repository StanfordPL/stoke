  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %xmm8     #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  vmovhlps %xmm8, %xmm8, %xmm3  #  2     0x5  5      OPC=vmovhlps_xmm_xmm_xmm  
  cvttss2sil %xmm3, %ebx        #  3     0xa  4      OPC=cvttss2sil_r32_xmm    
  retq                          #  4     0xe  1      OPC=retq                  
                                                                               
.size target, .-target
