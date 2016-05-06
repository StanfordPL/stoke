  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label      
  cmovpol %r10d, %ecx                #  2     0x5  4      OPC=cmovpol_r32_r32  
  xchgl %ebx, %ecx                   #  3     0x9  2      OPC=xchgl_r32_r32    
  retq                               #  4     0xb  1      OPC=retq             
                                                                               
.size target, .-target
