  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovaps %xmm1, %xmm1    #  1     0    4      OPC=vmovaps_xmm_xmm    
  vcvtps2dq %ymm1, %ymm6  #  2     0x4  4      OPC=vcvtps2dq_ymm_ymm  
  movd %xmm6, %ebx        #  3     0x8  4      OPC=movd_r32_xmm       
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
