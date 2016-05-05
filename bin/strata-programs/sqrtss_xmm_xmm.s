  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  sqrtps %xmm8, %xmm4                             #  2     0x5   4      OPC=sqrtps_xmm_xmm      
  vmovss %xmm4, %xmm1, %xmm7                      #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  movups %xmm7, %xmm1                             #  4     0xd   3      OPC=movups_xmm_xmm      
  retq                                            #  5     0x10  1      OPC=retq                
                                                                                                
.size target, .-target
