  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x5, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  movsbq %cl, %r12                   #  3     0xf   4      OPC=movsbq_r64_r8   
  callq .move_008_016_r12b_r13b_bx   #  4     0x13  5      OPC=callq_label     
  retq                               #  5     0x18  1      OPC=retq            
                                                                               
.size target, .-target
