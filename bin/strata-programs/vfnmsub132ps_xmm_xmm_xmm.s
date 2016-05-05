  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label               
  vmovups %xmm1, %xmm11              #  2     0x5   4      OPC=vmovups_xmm_xmm           
  callq .move_064_128_r8_r9_xmm1     #  3     0x9   5      OPC=callq_label               
  vfnmsub231ps %xmm3, %xmm11, %xmm1  #  4     0xe   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
