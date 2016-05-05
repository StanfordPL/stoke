  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzbw %bh, %si     #  1     0    4      OPC=movzbw_r16_rh   
  cmpxchgb %sil, %cl  #  2     0x4  4      OPC=cmpxchgb_r8_r8  
  retq                #  3     0x8  1      OPC=retq            
                                                               
.size target, .-target
