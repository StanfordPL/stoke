  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                        
.target:                                        #        0    0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label               
  vfnmsub132ps %xmm1, %xmm3, %xmm4              #  2     0x5  5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vmovss %xmm4, %xmm1, %xmm1                    #  3     0xa  4      OPC=vmovss_xmm_xmm_xmm        
  retq                                          #  4     0xe  1      OPC=retq                      
                                                                                                   
.size target, .-target
