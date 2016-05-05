  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmsub213sd %xmm3, %xmm11, %xmm3               #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11            #  3     0xa   5      OPC=callq_label               
  vfmsub213pd %xmm10, %xmm2, %xmm1                #  4     0xf   5      OPC=vfmsub213pd_xmm_xmm_xmm   
  retq                                            #  5     0x14  1      OPC=retq                      
                                                                                                      
.size target, .-target
