  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  vrcpps %xmm3, %xmm1                             #  1     0     4      OPC=vrcpps_xmm_xmm   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label      
  vmovdqu %xmm3, %xmm8                            #  3     0x9   4      OPC=vmovdqu_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label      
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
