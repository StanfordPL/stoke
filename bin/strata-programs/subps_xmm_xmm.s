  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm2, %xmm10        #  1     0     4      OPC=vmovaps_xmm_xmm     
  vminps %xmm1, %xmm1, %xmm4   #  2     0x4   4      OPC=vminps_xmm_xmm_xmm  
  vsubps %ymm10, %ymm4, %ymm2  #  3     0x8   5      OPC=vsubps_ymm_ymm_ymm  
  movdqu %xmm2, %xmm1          #  4     0xd   4      OPC=movdqu_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
