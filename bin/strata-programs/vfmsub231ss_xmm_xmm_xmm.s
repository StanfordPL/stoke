  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovddup %xmm9, %xmm9                           #  2     0x5   5      OPC=vmovddup_xmm_xmm         
  vfmsub132ps %xmm3, %xmm1, %xmm2                 #  3     0xa   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vmaxpd %ymm2, %ymm2, %ymm8                      #  4     0xf   4      OPC=vmaxpd_ymm_ymm_ymm       
  vcvtpd2ps %ymm9, %xmm1                          #  5     0x13  5      OPC=vcvtpd2ps_xmm_ymm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
