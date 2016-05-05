  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                        
.target:                                        #        0    0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label               
  vfnmsub231ps %xmm4, %xmm1, %xmm2              #  2     0x5  5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vmovss %xmm2, %xmm1, %xmm1                    #  3     0xa  4      OPC=vmovss_xmm_xmm_xmm        
  retq                                          #  4     0xe  1      OPC=retq                      
                                                                                                   
.size target, .-target
