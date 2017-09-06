  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vcvttpd2dq %ymm11, %xmm11    #  2     0x4  5      OPC=vcvttpd2dq_xmm_ymm  
  vmovd %xmm11, %ebx           #  3     0x9  4      OPC=vmovd_r32_xmm       
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
