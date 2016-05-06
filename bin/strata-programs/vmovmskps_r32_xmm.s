  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm12  #  1     0    5      OPC=vpmovsxdq_ymm_xmm  
  vmovmskpd %ymm12, %rbx   #  2     0x5  5      OPC=vmovmskpd_r64_ymm  
  retq                     #  3     0xa  1      OPC=retq               
                                                                       
.size target, .-target
