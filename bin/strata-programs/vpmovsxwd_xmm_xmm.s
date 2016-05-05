  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  addl %r9d, %r9d                 #  2     0x5   3      OPC=addl_r32_r32       
  vzeroall                        #  3     0x8   3      OPC=vzeroall           
  callq .move_064_128_r8_r9_xmm3  #  4     0xb   5      OPC=callq_label        
  vpmovsxwd %xmm3, %ymm11         #  5     0x10  5      OPC=vpmovsxwd_ymm_xmm  
  movups %xmm11, %xmm1            #  6     0x15  4      OPC=movups_xmm_xmm     
  retq                            #  7     0x19  1      OPC=retq               
                                                                               
.size target, .-target
