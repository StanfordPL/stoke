  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vmovapd %xmm2, %xmm1   #  1     0    4      OPC=vmovapd_xmm_xmm   
  addsubpd %xmm3, %xmm1  #  2     0x4  4      OPC=addsubpd_xmm_xmm  
  retq                   #  3     0x8  1      OPC=retq              
                                                                    
.size target, .-target
