  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  andps %xmm2, %xmm3                    #  1     0     3      OPC=andps_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x3   5      OPC=callq_label    
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0x8   5      OPC=callq_label    
  pand %xmm11, %xmm9                    #  4     0xd   5      OPC=pand_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label    
  retq                                  #  6     0x17  1      OPC=retq           
                                                                                 
.size target, .-target
