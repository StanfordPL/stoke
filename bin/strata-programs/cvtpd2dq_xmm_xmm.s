  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvtpd2dqx %xmm2, %xmm9  #  1     0    4      OPC=vcvtpd2dqx_xmm_xmm  
  movapd %xmm9, %xmm1      #  2     0x4  5      OPC=movapd_xmm_xmm      
  retq                     #  3     0x9  1      OPC=retq                
                                                                        
.size target, .-target
