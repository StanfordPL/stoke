  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vpxor %xmm12, %xmm12, %xmm9                     #  2     0x5   5      OPC=vpxor_xmm_xmm_xmm         
  vfnmsub231pd %xmm10, %xmm9, %xmm2               #  3     0xa   5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  vfnmsub132pd %xmm3, %xmm2, %xmm1                #  4     0xf   5      OPC=vfnmsub132pd_xmm_xmm_xmm  
  retq                                            #  5     0x14  1      OPC=retq                      
                                                                                                      
.size target, .-target
