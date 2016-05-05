  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxbd %xmm2, %xmm15  #  1     0    5      OPC=vpmovzxbd_xmm_xmm  
  movdqa %xmm15, %xmm1     #  2     0x5  5      OPC=movdqa_xmm_xmm     
  retq                     #  3     0xa  1      OPC=retq               
                                                                       
.size target, .-target
