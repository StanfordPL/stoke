  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                          
.target:                              #        0    0      OPC=<label>                     
  vpmovzxbd %xmm1, %xmm8              #  1     0    5      OPC=vpmovzxbd_xmm_xmm           
  vfnmsub231ps %xmm1, %xmm8, %xmm1    #  2     0x5  5      OPC=vfnmsub231ps_xmm_xmm_xmm    
  vfmaddsub231ps %xmm3, %xmm2, %xmm1  #  3     0xa  5      OPC=vfmaddsub231ps_xmm_xmm_xmm  
  retq                                #  4     0xf  1      OPC=retq                        
                                                                                           
.size target, .-target
