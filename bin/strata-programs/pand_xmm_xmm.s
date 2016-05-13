  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vpxor %xmm1, %xmm2, %xmm0  #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  pandn %xmm2, %xmm0         #  2     0x4   4      OPC=pandn_xmm_xmm      
  vmovapd %xmm0, %xmm2       #  3     0x8   4      OPC=vmovapd_xmm_xmm    
  movdqa %xmm2, %xmm1        #  4     0xc   4      OPC=movdqa_xmm_xmm     
  retq                       #  5     0x10  1      OPC=retq               
                                                                          
.size target, .-target
