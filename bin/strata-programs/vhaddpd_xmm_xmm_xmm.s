  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovlhps %xmm3, %xmm2, %xmm1     #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm     
  vpunpckhqdq %xmm3, %xmm2, %xmm9  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  addpd %xmm9, %xmm1               #  3     0x8  5      OPC=addpd_xmm_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
