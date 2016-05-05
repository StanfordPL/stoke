  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  pmovsxdq %xmm8, %xmm15                          #  2     0x5   6      OPC=pmovsxdq_xmm_xmm          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xb   5      OPC=callq_label               
  vmovss %xmm3, %xmm1, %xmm1                      #  4     0x10  4      OPC=vmovss_xmm_xmm_xmm        
  vfnmadd231ss %xmm8, %xmm15, %xmm1               #  5     0x14  5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  retq                                            #  6     0x19  1      OPC=retq                      
                                                                                                      
.size target, .-target
