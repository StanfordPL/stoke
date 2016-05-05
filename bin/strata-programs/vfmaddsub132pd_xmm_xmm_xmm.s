  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmsub231sd %xmm3, %xmm10, %xmm2     #  2     0x5   5      OPC=vfmsub231sd_xmm_xmm_xmm  
  vpunpcklqdq %xmm2, %xmm10, %xmm12    #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vfmadd231pd %xmm3, %xmm1, %xmm2      #  4     0xe   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovhlps %xmm12, %xmm2, %xmm1        #  5     0x13  5      OPC=vmovhlps_xmm_xmm_xmm     
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
