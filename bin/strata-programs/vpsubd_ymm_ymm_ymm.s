  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpunpckhdq %ymm3, %ymm2, %ymm4  #  1     0    4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm2, %ymm14  #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm   
  vphsubd %ymm4, %ymm14, %ymm1    #  3     0x8  5      OPC=vphsubd_ymm_ymm_ymm     
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
