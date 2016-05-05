  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label          
  vsubsd %xmm2, %xmm1, %xmm3         #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm   
  callq .move_r8b_to_byte_4_of_ymm1  #  3     0x9   5      OPC=callq_label          
  vsqrtss %xmm1, %xmm2, %xmm13       #  4     0xe   4      OPC=vsqrtss_xmm_xmm_xmm  
  addpd %xmm13, %xmm1                #  5     0x12  5      OPC=addpd_xmm_xmm        
  movsd %xmm3, %xmm1                 #  6     0x17  4      OPC=movsd_xmm_xmm        
  retq                               #  7     0x1b  1      OPC=retq                 
                                                                                    
.size target, .-target
