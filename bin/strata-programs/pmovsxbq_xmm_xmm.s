  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxdq %xmm2, %xmm8  #  1     0    5      OPC=vpmovsxdq_xmm_xmm  
  vpmovsxbd %xmm8, %ymm4  #  2     0x5  5      OPC=vpmovsxbd_ymm_xmm  
  pmovsxdq %xmm4, %xmm1   #  3     0xa  5      OPC=pmovsxdq_xmm_xmm   
  retq                    #  4     0xf  1      OPC=retq               
                                                                      
.size target, .-target
