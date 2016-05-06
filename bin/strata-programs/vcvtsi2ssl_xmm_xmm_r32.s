  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label        
  vzeroall                          #  2     0x5   3      OPC=vzeroall           
  callq .move_064_128_r10_r11_xmm3  #  3     0x8   5      OPC=callq_label        
  cvtsi2ssl %ebx, %xmm3             #  4     0xd   4      OPC=cvtsi2ssl_xmm_r32  
  movdqa %xmm3, %xmm1               #  5     0x11  4      OPC=movdqa_xmm_xmm     
  retq                              #  6     0x15  1      OPC=retq               
                                                                                 
.size target, .-target
