  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm1                          #  1     0     4      OPC=vmovupd_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vmaxps %xmm3, %xmm4, %xmm13                   #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm  
  movss %xmm13, %xmm1                           #  4     0xd   5      OPC=movss_xmm_xmm       
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
