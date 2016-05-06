  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpunpcklqdq %xmm1, %xmm1, %xmm13   #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm   
  movss %xmm3, %xmm1                 #  2     0x4   4      OPC=movss_xmm_xmm             
  vpunpckldq %ymm13, %ymm13, %ymm13  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm    
  vfnmsub213ss %xmm13, %xmm2, %xmm1  #  4     0xd   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                      
                                                                                         
.size target, .-target
