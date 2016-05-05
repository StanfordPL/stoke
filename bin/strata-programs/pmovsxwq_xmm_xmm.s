  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxwq %xmm2, %xmm0  #  1     0    5      OPC=vpmovsxwq_xmm_xmm  
  movdqa %xmm0, %xmm1     #  2     0x5  4      OPC=movdqa_xmm_xmm     
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
