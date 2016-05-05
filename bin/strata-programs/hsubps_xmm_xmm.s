  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpunpckldq %xmm2, %xmm1, %xmm8    #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm1, %xmm10    #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm10, %xmm8, %xmm15  #  3     0x8   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhdq %xmm10, %xmm8           #  4     0xd   5      OPC=punpckhdq_xmm_xmm       
  vsubps %xmm8, %xmm15, %xmm4       #  5     0x12  5      OPC=vsubps_xmm_xmm_xmm      
  movdqu %xmm4, %xmm1               #  6     0x17  4      OPC=movdqu_xmm_xmm          
  retq                              #  7     0x1b  1      OPC=retq                    
                                                                                      
.size target, .-target
