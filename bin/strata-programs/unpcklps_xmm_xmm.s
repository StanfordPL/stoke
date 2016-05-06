  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm9  #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vmovdqa %xmm9, %xmm10      #  2     0x5   5      OPC=vmovdqa_xmm_xmm       
  vmovddup %xmm2, %xmm15     #  3     0xa   4      OPC=vmovddup_xmm_xmm      
  unpckhps %xmm15, %xmm10    #  4     0xe   4      OPC=unpckhps_xmm_xmm      
  movapd %xmm10, %xmm1       #  5     0x12  5      OPC=movapd_xmm_xmm        
  retq                       #  6     0x17  1      OPC=retq                  
                                                                             
.size target, .-target
