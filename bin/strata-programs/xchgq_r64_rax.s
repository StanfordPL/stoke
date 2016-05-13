  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label    
  callq .move_032_064_r10d_r11d_rbx  #  2     0x5  5      OPC=callq_label    
  xchgq %rax, %rbx                   #  3     0xa  3      OPC=xchgq_r64_r64  
  retq                               #  4     0xd  1      OPC=retq           
                                                                             
.size target, .-target
