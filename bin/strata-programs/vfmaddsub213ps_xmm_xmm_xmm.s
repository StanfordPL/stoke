  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpor %xmm3, %xmm3, %xmm10         #  1     0     4      OPC=vpor_xmm_xmm_xmm          
  vxorpd %xmm3, %xmm10, %xmm3       #  2     0x4   4      OPC=vxorpd_xmm_xmm_xmm        
  vfnmsub132ps %ymm3, %ymm3, %ymm3  #  3     0x8   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  addsubps %xmm10, %xmm3            #  4     0xd   5      OPC=addsubps_xmm_xmm          
  vfmadd213ps %xmm3, %xmm2, %xmm1   #  5     0x12  5      OPC=vfmadd213ps_xmm_xmm_xmm   
  retq                              #  6     0x17  1      OPC=retq                      
                                                                                        
.size target, .-target
