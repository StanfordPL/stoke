  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm12           #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhdq %ymm2, %ymm12, %ymm0  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm3, %ymm0, %ymm6    #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm3, %ymm6, %ymm1   #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm1, %ymm6, %ymm14   #  5     0x10  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm0, %ymm5  #  6     0x14  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vsubps %ymm5, %ymm14, %ymm1      #  7     0x18  4      OPC=vsubps_ymm_ymm_ymm       
  retq                             #  8     0x1c  1      OPC=retq                     
                                                                                      
.size target, .-target
