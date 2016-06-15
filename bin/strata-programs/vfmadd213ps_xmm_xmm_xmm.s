  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  pxor %xmm9, %xmm9                  #  1     0     5      OPC=pxor_xmm_xmm              
  vandps %xmm9, %xmm3, %xmm10        #  2     0x5   5      OPC=vandps_xmm_xmm_xmm        
  vfnmsub231ps %xmm3, %xmm10, %xmm3  #  3     0xa   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vfmsub132ps %xmm1, %xmm3, %xmm2    #  4     0xf   5      OPC=vfmsub132ps_xmm_xmm_xmm   
  vorpd %ymm2, %ymm10, %ymm1         #  5     0x14  4      OPC=vorpd_ymm_ymm_ymm         
  retq                               #  6     0x18  1      OPC=retq                      
                                                                                         
.size target, .-target
