  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovdqu %xmm2, %xmm10       #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vorpd %xmm2, %xmm10, %xmm4  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  pand %xmm4, %xmm1           #  3     0x8  4      OPC=pand_xmm_xmm       
  retq                        #  4     0xc  1      OPC=retq               
                                                                          
.size target, .-target
