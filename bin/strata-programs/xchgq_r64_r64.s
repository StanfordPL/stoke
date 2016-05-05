  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label   
  movq %rcx, %rbx                  #  2     0x5   3      OPC=movq_r64_r64  
  callq .move_016_032_r8w_r9w_edx  #  3     0x8   5      OPC=callq_label   
  callq .move_032_016_edx_r8w_r9w  #  4     0xd   5      OPC=callq_label   
  callq .move_032_064_r8d_r9d_rcx  #  5     0x12  5      OPC=callq_label   
  retq                             #  6     0x17  1      OPC=retq          
                                                                           
.size target, .-target
