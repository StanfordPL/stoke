  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %ax, %rbx                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x4   5      OPC=callq_label     
  movq $0xffffffffffffffff, %rdx     #  3     0x9   10     OPC=movq_r64_imm64  
  xaddw %dx, %r11w                   #  4     0x13  5      OPC=xaddw_r16_r16   
  retq                               #  5     0x18  1      OPC=retq            
                                                                               
.size target, .-target
