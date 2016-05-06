  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  movapd %xmm3, %xmm7                 #  1     0     4      OPC=movapd_xmm_xmm              
  vfmsubadd231ps %xmm1, %xmm2, %xmm7  #  2     0x4   5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  vmulsd %xmm3, %xmm7, %xmm1          #  3     0x9   4      OPC=vmulsd_xmm_xmm_xmm          
  movupd %xmm7, %xmm1                 #  4     0xd   4      OPC=movupd_xmm_xmm              
  retq                                #  5     0x11  1      OPC=retq                        
                                                                                            
.size target, .-target
