  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vdivps %xmm2, %xmm1, %xmm8                      #  1     0     4      OPC=vdivps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vrsqrtps %ymm8, %ymm2                           #  3     0x9   5      OPC=vrsqrtps_ymm_ymm    
  movss %xmm2, %xmm1                              #  4     0xe   4      OPC=movss_xmm_xmm       
  retq                                            #  5     0x12  1      OPC=retq                
                                                                                                
.size target, .-target
