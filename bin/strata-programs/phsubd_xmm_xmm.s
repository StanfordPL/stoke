  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movsldup %xmm2, %xmm0        #  1     0     4      OPC=movsldup_xmm_xmm    
  vmovsldup %xmm1, %xmm13      #  2     0x4   4      OPC=vmovsldup_xmm_xmm   
  movdqu %xmm0, %xmm15         #  3     0x8   5      OPC=movdqu_xmm_xmm      
  vpsubq %xmm1, %xmm13, %xmm9  #  4     0xd   4      OPC=vpsubq_xmm_xmm_xmm  
  vpsubq %xmm2, %xmm15, %xmm0  #  5     0x11  4      OPC=vpsubq_xmm_xmm_xmm  
  movdqu %xmm9, %xmm1          #  6     0x15  5      OPC=movdqu_xmm_xmm      
  phaddd %xmm0, %xmm1          #  7     0x1a  5      OPC=phaddd_xmm_xmm      
  retq                         #  8     0x1f  1      OPC=retq                
                                                                             
.size target, .-target
