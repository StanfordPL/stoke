  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movdqu %xmm3, %xmm3   #  1     0    4      OPC=movdqu_xmm_xmm   
  divss %xmm3, %xmm2    #  2     0x4  4      OPC=divss_xmm_xmm    
  vmovaps %xmm2, %xmm1  #  3     0x8  4      OPC=vmovaps_xmm_xmm  
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
