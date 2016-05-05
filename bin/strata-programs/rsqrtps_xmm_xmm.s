  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vrsqrtps %xmm2, %xmm8  #  1     0    4      OPC=vrsqrtps_xmm_xmm  
  movapd %xmm8, %xmm1    #  2     0x4  5      OPC=movapd_xmm_xmm    
  retq                   #  3     0x9  1      OPC=retq              
                                                                    
.size target, .-target
