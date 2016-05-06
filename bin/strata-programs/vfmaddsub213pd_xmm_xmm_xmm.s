  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmaddsub231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfmaddsub231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13    #  2     0x5   5      OPC=callq_label                 
  vaddps %xmm2, %xmm3, %xmm1          #  3     0xa   4      OPC=vaddps_xmm_xmm_xmm          
  callq .move_064_128_r12_r13_xmm1    #  4     0xe   5      OPC=callq_label                 
  retq                                #  5     0x13  1      OPC=retq                        
                                                                                            
.size target, .-target
