  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovdqa %ymm2, %ymm1  #  1     0    4      OPC=vmovdqa_ymm_ymm  
  retq                  #  2     0x4  1      OPC=retq             
                                                                  
.size target, .-target
