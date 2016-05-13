  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  pmovsxwd %xmm2, %xmm0   #  1     0    5      OPC=pmovsxwd_xmm_xmm   
  vpmovsxdq %xmm0, %xmm1  #  2     0x5  5      OPC=vpmovsxdq_xmm_xmm  
  retq                    #  3     0xa  1      OPC=retq               
                                                                      
.size target, .-target
