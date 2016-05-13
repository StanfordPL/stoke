  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vfnmsub231pd %xmm3, %xmm1, %xmm2   #  1     0     5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  movsd %xmm2, %xmm1                 #  2     0x5   4      OPC=movsd_xmm_xmm             
  callq .move_128_064_xmm1_r10_r11   #  3     0x9   5      OPC=callq_label               
  vzeroall                           #  4     0xe   3      OPC=vzeroall                  
  vfmadd231ss %xmm14, %xmm12, %xmm1  #  5     0x11  5      OPC=vfmadd231ss_xmm_xmm_xmm   
  callq .move_064_128_r10_r11_xmm1   #  6     0x16  5      OPC=callq_label               
  retq                               #  7     0x1b  1      OPC=retq                      
                                                                                         
.size target, .-target
