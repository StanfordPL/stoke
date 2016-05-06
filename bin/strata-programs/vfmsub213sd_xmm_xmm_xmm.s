  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmsub213pd %xmm3, %xmm2, %xmm10     #  2     0x5   5      OPC=vfmsub213pd_xmm_xmm_xmm  
  vmaxsd %xmm2, %xmm11, %xmm1          #  3     0xa   4      OPC=vmaxsd_xmm_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
