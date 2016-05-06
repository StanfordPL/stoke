  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswq %cx, %rdx   #  1     0     4      OPC=movswq_r64_r16  
  xchgw %cx, %bx     #  2     0x4   3      OPC=xchgw_r16_r16   
  movswq %cx, %rax   #  3     0x7   4      OPC=movswq_r64_r16  
  orq %rax, %rdx     #  4     0xb   3      OPC=orq_r64_r64     
  movslq %edx, %rbx  #  5     0xe   3      OPC=movslq_r64_r32  
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
