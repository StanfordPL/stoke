  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovd %ebx, %xmm13       #  1     0    4      OPC=vmovd_xmm_r32      
  vcvtdq2ps %xmm13, %xmm0  #  2     0x4  5      OPC=vcvtdq2ps_xmm_xmm  
  movss %xmm0, %xmm1       #  3     0x9  4      OPC=movss_xmm_xmm      
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
