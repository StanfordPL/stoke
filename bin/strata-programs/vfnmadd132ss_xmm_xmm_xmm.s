  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                        
.target:                             #        0    0      OPC=<label>                   
  vpandn %xmm2, %xmm2, %xmm11        #  1     0    4      OPC=vpandn_xmm_xmm_xmm        
  vfnmsub213ps %xmm2, %xmm11, %xmm2  #  2     0x4  5      OPC=vfnmsub213ps_xmm_xmm_xmm  
  vfnmsub132ss %xmm3, %xmm2, %xmm1   #  3     0x9  5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq                      
                                                                                        
.size target, .-target
