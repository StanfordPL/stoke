  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmovupd %xmm1, %xmm5         #  1     0    4      OPC=vmovupd_xmm_xmm      
  vhaddps %xmm2, %xmm5, %xmm5  #  2     0x4  4      OPC=vhaddps_xmm_xmm_xmm  
  movups %xmm5, %xmm1          #  3     0x8  3      OPC=movups_xmm_xmm       
  retq                         #  4     0xb  1      OPC=retq                 
                                                                             
.size target, .-target
