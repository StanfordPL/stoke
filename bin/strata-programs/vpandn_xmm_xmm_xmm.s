  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vmaxss %xmm3, %xmm3, %xmm1    #  1     0    4      OPC=vmaxss_xmm_xmm_xmm   
  movdqu %xmm2, %xmm14          #  2     0x4  5      OPC=movdqu_xmm_xmm       
  vandnps %xmm1, %xmm14, %xmm1  #  3     0x9  4      OPC=vandnps_xmm_xmm_xmm  
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
