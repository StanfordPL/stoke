  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vmovdqu %xmm1, %xmm12        #  1     0     4      OPC=vmovdqu_xmm_xmm       
  vpbroadcastq %xmm12, %xmm14  #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm  
  vcvtpd2dq %ymm14, %xmm0      #  3     0x9   5      OPC=vcvtpd2dq_xmm_ymm     
  movd %xmm0, %ebx             #  4     0xe   4      OPC=movd_r32_xmm          
  retq                         #  5     0x12  1      OPC=retq                  
                                                                               
.size target, .-target
