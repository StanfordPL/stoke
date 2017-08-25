  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovaps %xmm2, %xmm7       #  1     0    4      OPC=vmovaps_xmm_xmm    
  vcvtpd2dq %ymm7, %xmm4     #  2     0x4  4      OPC=vcvtpd2dq_xmm_ymm  
  vorps %xmm4, %xmm4, %xmm1  #  3     0x8  4      OPC=vorps_xmm_xmm_xmm  
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
