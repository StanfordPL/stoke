  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vminpd %xmm1, %xmm1, %xmm8                      #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm        
  vfnmsub132sd %xmm11, %xmm8, %xmm1               #  3     0x9   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  vfmsub231pd %xmm3, %xmm2, %xmm1                 #  4     0xe   5      OPC=vfmsub231pd_xmm_xmm_xmm   
  retq                                            #  5     0x13  1      OPC=retq                      
                                                                                                      
.size target, .-target
