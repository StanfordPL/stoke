  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movdqa %xmm3, %xmm4              #  1     0     4      OPC=movdqa_xmm_xmm          
  vpunpckhdq %xmm4, %xmm2, %xmm13  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm1             #  3     0x8   4      OPC=vmovdqu_xmm_xmm         
  unpcklps %xmm3, %xmm1            #  4     0xc   3      OPC=unpcklps_xmm_xmm        
  vphsubd %xmm13, %xmm1, %xmm1     #  5     0xf   5      OPC=vphsubd_xmm_xmm_xmm     
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
