  .text
  .globl _Unwind_GetTextRelBase
  .type _Unwind_GetTextRelBase, @function

#! file-offset 0x58fa0
#! rip-offset  0x58fa0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetTextRelBase:        #        0x58fa0  0      
  popq %r11                     #  1     0x58fa0  3      
  movl %edi, %edi               #  2     0x58fa3  2      
  movl %edi, %edi               #  3     0x58fa5  2      
  movl 0x54(%r15,%rdi,1), %eax  #  4     0x58fa7  5      
  andl $0xffffffe0, %r11d       #  5     0x58fac  7      
  addq %r15, %r11               #  6     0x58fb3  3      
  jmpq %r11                     #  7     0x58fb6  3      
  nop                           #  8     0x58fb9  1      
                                                         
.size _Unwind_GetTextRelBase, .-_Unwind_GetTextRelBase

