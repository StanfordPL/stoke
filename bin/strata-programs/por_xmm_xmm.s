  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovapd %xmm2, %xmm2       #  1     0    4      OPC=vmovapd_xmm_xmm    
  vorpd %xmm1, %xmm2, %xmm3  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  movdqa %xmm3, %xmm1        #  3     0x8  4      OPC=movdqa_xmm_xmm     
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
