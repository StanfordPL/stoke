  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vfmsub231sd %xmm3, %xmm1, %xmm2   #  1     0     5      OPC=vfmsub231sd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label              
  callq .move_128_064_xmm2_r12_r13  #  3     0xa   5      OPC=callq_label              
  vzeroall                          #  4     0xf   3      OPC=vzeroall                 
  xchgq %r12, %r10                  #  5     0x12  3      OPC=xchgq_r64_r64            
  callq .move_064_128_r10_r11_xmm1  #  6     0x15  5      OPC=callq_label              
  retq                              #  7     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
