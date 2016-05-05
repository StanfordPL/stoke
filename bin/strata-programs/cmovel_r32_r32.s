  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  callq .move_064_032_rbx_r12d_r13d  #  1     0    5      OPC=callq_label      
  xchgl %ebx, %ecx                   #  2     0x5  2      OPC=xchgl_r32_r32    
  cmovnel %r12d, %ebx                #  3     0x7  4      OPC=cmovnel_r32_r32  
  retq                               #  4     0xb  1      OPC=retq             
                                                                               
.size target, .-target
