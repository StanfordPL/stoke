  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm10  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  minpd %xmm10, %xmm10        #  2     0x5   5      OPC=minpd_xmm_xmm         
  vpmovzxwd %xmm10, %xmm14    #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm     
  movapd %xmm14, %xmm1        #  4     0xf   5      OPC=movapd_xmm_xmm        
  retq                        #  5     0x14  1      OPC=retq                  
                                                                              
.size target, .-target
