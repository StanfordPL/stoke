  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm0                           #  1     0     4      OPC=movshdup_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  paddq %xmm0, %xmm1                              #  3     0x9   4      OPC=paddq_xmm_xmm          
  vpaddq %xmm9, %xmm2, %xmm6                      #  4     0xd   5      OPC=vpaddq_xmm_xmm_xmm     
  vunpcklpd %xmm9, %xmm1, %xmm4                   #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm8, %xmm5                    #  6     0x17  4      OPC=vmovhlps_xmm_xmm_xmm   
  vpaddq %xmm10, %xmm11, %xmm7                    #  7     0x1b  5      OPC=vpaddq_xmm_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  8     0x20  5      OPC=callq_label            
  retq                                            #  9     0x25  1      OPC=retq                   
                                                                                                   
.size target, .-target
