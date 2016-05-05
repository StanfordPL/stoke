  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label     
  movswq %ax, %rbx                  #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_008_016_r12b_r13b_cx  #  3     0x9   5      OPC=callq_label     
  movzwl %cx, %eax                  #  4     0xe   3      OPC=movzwl_r32_r16  
  retq                              #  5     0x11  1      OPC=retq            
                                                                              
.size target, .-target
