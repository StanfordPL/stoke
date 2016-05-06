  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmovups %xmm1, %xmm1              #  1     0     4      OPC=vmovups_xmm_xmm           
  vandnps %xmm1, %xmm1, %xmm9       #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm       
  vfnmsub231pd %ymm9, %ymm9, %ymm1  #  3     0x8   5      OPC=vfnmsub231pd_ymm_ymm_ymm  
  vfmsub231pd %xmm3, %xmm2, %xmm1   #  4     0xd   5      OPC=vfmsub231pd_xmm_xmm_xmm   
  retq                              #  5     0x12  1      OPC=retq                      
                                                                                        
.size target, .-target
