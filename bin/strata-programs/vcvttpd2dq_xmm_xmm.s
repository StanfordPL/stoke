  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovdqu %xmm2, %xmm4     #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vcvttpd2dq %ymm4, %xmm1  #  2     0x4  4      OPC=vcvttpd2dq_xmm_ymm  
  retq                     #  3     0x8  1      OPC=retq                
                                                                        
.size target, .-target
