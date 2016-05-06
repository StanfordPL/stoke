  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_byte_7_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label               
  callq .move_r8b_to_byte_7_of_ymm1  #  2     0x5   5      OPC=callq_label               
  vfnmsub231ps %xmm1, %xmm2, %xmm3   #  3     0xa   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vmovapd %xmm3, %xmm1               #  4     0xf   4      OPC=vmovapd_xmm_xmm           
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
