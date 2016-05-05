  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vandpd %xmm1, %xmm1, %xmm9        #  1     0    4      OPC=vandpd_xmm_xmm_xmm        
  vfnmadd231pd %xmm3, %xmm9, %xmm2  #  2     0x4  5      OPC=vfnmadd231pd_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm9, %xmm1        #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm        
  retq                              #  4     0xd  1      OPC=retq                      
                                                                                       
.size target, .-target
