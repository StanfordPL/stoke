  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vxorpd %xmm4, %xmm4, %xmm1                    #  1     0     4      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  movd %xmm4, %r12d                             #  3     0x9   5      OPC=movd_r32_xmm        
  setg %spl                                     #  4     0xe   4      OPC=setg_r8             
  xorb %spl, %r12b                              #  5     0x12  3      OPC=xorb_r8_r8          
  cmovbeq %rcx, %rbx                            #  6     0x15  4      OPC=cmovbeq_r64_r64     
  retq                                          #  7     0x19  1      OPC=retq                
                                                                                              
.size target, .-target
