  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  vmovapd %xmm1, %xmm12     #  1     0    4      OPC=vmovapd_xmm_xmm     
  vcvttpd2dq %ymm12, %xmm9  #  2     0x4  5      OPC=vcvttpd2dq_xmm_ymm  
  movd %xmm9, %ebx          #  3     0x9  5      OPC=movd_r32_xmm        
  retq                      #  4     0xe  1      OPC=retq                
                                                                         
.size target, .-target
