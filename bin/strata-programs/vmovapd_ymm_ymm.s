  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label      
  vmovdqa %ymm2, %ymm1                      #  2     0x5  4      OPC=vmovdqa_ymm_ymm  
  callq .move_r9b_to_byte_12_of_ymm1        #  3     0x9  5      OPC=callq_label      
  retq                                      #  4     0xe  1      OPC=retq             
                                                                                      
.size target, .-target
