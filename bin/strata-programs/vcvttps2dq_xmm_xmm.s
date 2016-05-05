  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vandpd %xmm2, %xmm2, %xmm8  #  1     0    4      OPC=vandpd_xmm_xmm_xmm  
  vcvttps2dq %ymm8, %ymm1     #  2     0x4  5      OPC=vcvttps2dq_ymm_ymm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
