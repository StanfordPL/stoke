  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movdqa %xmm2, %xmm8  #  1     0    5      OPC=movdqa_xmm_xmm  
  pandn %xmm8, %xmm1   #  2     0x5  5      OPC=pandn_xmm_xmm   
  retq                 #  3     0xa  1      OPC=retq            
                                                                
.size target, .-target
