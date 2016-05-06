  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vpmovzxdq %xmm1, %xmm0   #  1     0    5      OPC=vpmovzxdq_xmm_xmm   
  vcvttps2dq %ymm0, %ymm1  #  2     0x5  4      OPC=vcvttps2dq_ymm_ymm  
  vmovq %xmm1, %rbx        #  3     0x9  5      OPC=vmovq_r64_xmm       
  retq                     #  4     0xe  1      OPC=retq                
                                                                        
.size target, .-target
