  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  vrcpps %xmm2, %xmm6  #  1     0    4      OPC=vrcpps_xmm_xmm  
  movdqa %xmm6, %xmm1  #  2     0x4  4      OPC=movdqa_xmm_xmm  
  retq                 #  3     0x8  1      OPC=retq            
                                                                
.size target, .-target
