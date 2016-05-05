  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmadd132ss %xmm3, %xmm1, %xmm2     #  2     0x5   5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  vfnmsub213ss %xmm10, %xmm2, %xmm1    #  3     0xa   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movss %xmm2, %xmm1                   #  4     0xf   4      OPC=movss_xmm_xmm             
  retq                                 #  5     0x13  1      OPC=retq                      
                                                                                           
.size target, .-target
