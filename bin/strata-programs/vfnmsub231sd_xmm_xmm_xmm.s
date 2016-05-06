  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  vfnmsub213sd %xmm1, %xmm2, %xmm12    #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  vmovsd %xmm12, %xmm1, %xmm10         #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm        
  vmovdqa %xmm10, %xmm1                #  4     0xf   5      OPC=vmovdqa_xmm_xmm           
  retq                                 #  5     0x14  1      OPC=retq                      
                                                                                           
.size target, .-target
