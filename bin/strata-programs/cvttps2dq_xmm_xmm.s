  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvttps2dq %xmm2, %xmm8  #  1     0    4      OPC=vcvttps2dq_xmm_xmm  
  movapd %xmm8, %xmm1      #  2     0x4  5      OPC=movapd_xmm_xmm      
  retq                     #  3     0x9  1      OPC=retq                
                                                                        
.size target, .-target
