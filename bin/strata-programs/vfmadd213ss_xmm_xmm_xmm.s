  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd231ps %xmm1, %xmm2, %xmm3  #  1     0    5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vmovss %xmm3, %xmm1, %xmm1       #  2     0x5  4      OPC=vmovss_xmm_xmm_xmm       
  retq                             #  3     0x9  1      OPC=retq                     
                                                                                     
.size target, .-target
