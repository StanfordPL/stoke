  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_064_032_rcx_r10d_r11d  #  1     0     5      OPC=callq_label  
  callq .move_064_032_rdx_r8d_r9d    #  2     0x5   5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx  #  3     0xa   5      OPC=callq_label  
  callq .move_032_064_r8d_r9d_rcx    #  4     0xf   5      OPC=callq_label  
  salq %cl, %rbx                     #  5     0x14  3      OPC=salq_r64_cl  
  retq                               #  6     0x17  1      OPC=retq         
                                                                            
.size target, .-target
