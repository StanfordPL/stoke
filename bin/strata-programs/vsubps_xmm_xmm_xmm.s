  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm5  #  1     0    4      OPC=vminps_xmm_xmm_xmm  
  subps %xmm3, %xmm5          #  2     0x4  3      OPC=subps_xmm_xmm       
  vmovdqu %xmm5, %xmm1        #  3     0x7  4      OPC=vmovdqu_xmm_xmm     
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
