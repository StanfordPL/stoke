  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                        
.target:                              #        0    0      OPC=<label>                   
  vpandn %xmm3, %xmm3, %xmm10         #  1     0    4      OPC=vpandn_xmm_xmm_xmm        
  vfnmsub213sd %xmm3, %xmm10, %xmm10  #  2     0x4  5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  vfnmsub213sd %xmm10, %xmm2, %xmm1   #  3     0x9  5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq                      
                                                                                         
.size target, .-target
