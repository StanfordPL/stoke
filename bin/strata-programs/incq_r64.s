  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm7      #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vsubpd %ymm7, %ymm7, %ymm1      #  2     0x4   4      OPC=vsubpd_ymm_ymm_ymm  
  callq .move_128_064_xmm1_r8_r9  #  3     0x8   5      OPC=callq_label         
  negw %r8w                       #  4     0xd   4      OPC=negw_r16            
  setge %r9b                      #  5     0x11  4      OPC=setge_r8            
  addq %r9, %rbx                  #  6     0x15  3      OPC=addq_r64_r64        
  retq                            #  7     0x18  1      OPC=retq                
                                                                                
.size target, .-target
