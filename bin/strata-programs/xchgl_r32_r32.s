  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %bx, %r10                   #  1     0     4      OPC=movswq_r64_r16  
  movslq %ebx, %rbx                  #  2     0x4   3      OPC=movslq_r64_r32  
  callq .move_032_016_ecx_r8w_r9w    #  3     0x7   5      OPC=callq_label     
  callq .move_064_032_rbx_r10d_r11d  #  4     0xc   5      OPC=callq_label     
  movq %r10, %rcx                    #  5     0x11  3      OPC=movq_r64_r64    
  callq .move_016_032_r8w_r9w_ebx    #  6     0x14  5      OPC=callq_label     
  retq                               #  7     0x19  1      OPC=retq            
                                                                               
.size target, .-target
