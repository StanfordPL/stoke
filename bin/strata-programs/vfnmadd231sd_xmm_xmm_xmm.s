  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                        
.target:                              #        0    0      OPC=<label>                   
  vpandn %xmm2, %xmm2, %xmm14         #  1     0    4      OPC=vpandn_xmm_xmm_xmm        
  vfnmsub213pd %xmm2, %xmm14, %xmm14  #  2     0x4  5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vfmadd231sd %xmm3, %xmm14, %xmm1    #  3     0x9  5      OPC=vfmadd231sd_xmm_xmm_xmm   
  retq                                #  4     0xe  1      OPC=retq                      
                                                                                         
.size target, .-target
