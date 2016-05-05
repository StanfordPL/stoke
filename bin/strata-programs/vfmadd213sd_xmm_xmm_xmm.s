  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmadd231pd %xmm1, %xmm10, %xmm3     #  2     0x5   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vpunpcklqdq %ymm3, %ymm3, %ymm11     #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovsd %xmm11, %xmm1, %xmm1          #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm       
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
