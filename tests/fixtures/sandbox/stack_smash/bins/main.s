  .text
  .globl main
  .type main, @function

#! file-offset 0x4f4
#! rip-offset  0x4004f4
#! capacity    28 bytes

# Text             #  Line  RIP       Bytes  
.main:             #        0x4004f4  0      
  pushq %rbp       #  1     0x4004f4  2      
  movq %rsp, %rbp  #  2     0x4004f6  3      
  callq ._Z3foov   #  3     0x4004f9  5      
  movl $0x0, %eax  #  4     0x4004fe  5      
  popq %rbp        #  5     0x400503  2      
  retq             #  6     0x400505  1      
  nop              #  7     0x400506  1      
  xchgw %ax, %ax   #  8     0x400507  3      
                                             
.size main, .-main

