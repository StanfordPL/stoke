  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movddup %xmm2, %xmm9           #  1     0     5      OPC=movddup_xmm_xmm        
  vunpcklpd %xmm3, %xmm9, %xmm1  #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm3, %xmm8   #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm   
  subpd %xmm8, %xmm1             #  4     0xd   5      OPC=subpd_xmm_xmm          
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
