  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vorps %xmm3, %xmm2, %xmm14  #  1     0    4      OPC=vorps_xmm_xmm_xmm  
  vmovapd %xmm14, %xmm1       #  2     0x4  5      OPC=vmovapd_xmm_xmm    
  retq                        #  3     0x9  1      OPC=retq               
                                                                          
.size target, .-target
