  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %xmm11   #  1     0    5      OPC=vpmovzxdq_xmm_xmm  
  vcvtps2dq %ymm11, %ymm12  #  2     0x5  5      OPC=vcvtps2dq_ymm_ymm  
  vmovq %xmm12, %rbx        #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                      #  4     0xf  1      OPC=retq               
                                                                        
.size target, .-target
