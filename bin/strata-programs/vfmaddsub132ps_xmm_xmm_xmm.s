  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vpandn %xmm1, %xmm1, %xmm10          #  1     0     4      OPC=vpandn_xmm_xmm_xmm        
  vfnmsub231ps %ymm10, %ymm10, %ymm10  #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  movdqa %xmm2, %xmm7                  #  3     0x9   4      OPC=movdqa_xmm_xmm            
  vaddsubps %xmm7, %xmm10, %xmm2       #  4     0xd   4      OPC=vaddsubps_xmm_xmm_xmm     
  vfmadd132ps %xmm3, %xmm2, %xmm1      #  5     0x11  5      OPC=vfmadd132ps_xmm_xmm_xmm   
  retq                                 #  6     0x16  1      OPC=retq                      
                                                                                           
.size target, .-target
