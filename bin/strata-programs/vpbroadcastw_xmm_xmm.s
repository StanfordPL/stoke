  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label           
  callq .move_016_032_r10w_r11w_ebx             #  2     0x5   5      OPC=callq_label           
  callq .move_016_008_bx_r8b_r9b                #  3     0xa   5      OPC=callq_label           
  callq .move_r9b_to_byte_3_of_rbx              #  4     0xf   5      OPC=callq_label           
  vmovd %ebx, %xmm1                             #  5     0x14  4      OPC=vmovd_xmm_r32         
  callq .move_r9b_to_byte_19_of_ymm1            #  6     0x18  5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1             #  7     0x1d  5      OPC=callq_label           
  vbroadcastss %xmm1, %xmm1                     #  8     0x22  5      OPC=vbroadcastss_xmm_xmm  
  retq                                          #  9     0x27  1      OPC=retq                  
                                                                                                
.size target, .-target
