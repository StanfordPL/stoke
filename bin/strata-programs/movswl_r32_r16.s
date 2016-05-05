  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movzwl %cx, %ebx                 #  1     0     3      OPC=movzwl_r32_r16  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label     
  movq $0xffffffffffffffc0, %rbx   #  3     0x8   10     OPC=movq_r64_imm64  
  movw %r8w, %bx                   #  4     0x12  4      OPC=movw_r16_r16    
  movswq %bx, %r9                  #  5     0x16  4      OPC=movswq_r64_r16  
  xchgl %ebx, %r9d                 #  6     0x1a  3      OPC=xchgl_r32_r32   
  retq                             #  7     0x1d  1      OPC=retq            
                                                                             
.size target, .-target
