  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovsd %xmm2, %xmm2, %xmm0   #  1     0     4      OPC=vmovsd_xmm_xmm_xmm  
  vmaxsd %xmm0, %xmm0, %xmm15  #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm  
  pmovzxwd %xmm15, %xmm3       #  3     0x8   6      OPC=pmovzxwd_xmm_xmm    
  vpaddd %xmm2, %xmm2, %xmm2   #  4     0xe   4      OPC=vpaddd_xmm_xmm_xmm  
  vpmovzxwd %xmm2, %ymm5       #  5     0x12  5      OPC=vpmovzxwd_ymm_xmm   
  vpsubq %xmm3, %xmm5, %xmm9   #  6     0x17  4      OPC=vpsubq_xmm_xmm_xmm  
  movaps %xmm9, %xmm1          #  7     0x1b  4      OPC=movaps_xmm_xmm      
  retq                         #  8     0x1f  1      OPC=retq                
                                                                             
.size target, .-target
