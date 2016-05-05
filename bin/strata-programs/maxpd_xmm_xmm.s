  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vmaxpd %xmm2, %xmm1, %xmm3                    #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4  5      OPC=callq_label         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0x9  5      OPC=callq_label         
  retq                                          #  4     0xe  1      OPC=retq                
                                                                                             
.size target, .-target
