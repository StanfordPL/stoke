  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  movq %xmm2, %xmm0           #  1     0     4      OPC=movq_xmm_xmm        
  vmovss %xmm0, %xmm0, %xmm7  #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm  
  vsubpd %xmm7, %xmm1, %xmm4  #  3     0x8   4      OPC=vsubpd_xmm_xmm_xmm  
  movsd %xmm4, %xmm1          #  4     0xc   4      OPC=movsd_xmm_xmm       
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
