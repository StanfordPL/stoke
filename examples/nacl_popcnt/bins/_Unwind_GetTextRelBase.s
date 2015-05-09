  .text
  .globl _Unwind_GetTextRelBase
  .type _Unwind_GetTextRelBase, @function

#! file-offset 0x58f00
#! rip-offset  0x58f00
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetTextRelBase:        #        0x58f00  0      
  popq %r11                     #  1     0x58f00  3      
  movl %edi, %edi               #  2     0x58f03  2      
  movl %edi, %edi               #  3     0x58f05  2      
  movl 0x54(%r15,%rdi,1), %eax  #  4     0x58f07  5      
  andl $0xffffffe0, %r11d       #  5     0x58f0c  7      
  addq %r15, %r11               #  6     0x58f13  3      
  jmpq %r11                     #  7     0x58f16  3      
  nop                           #  8     0x58f19  1      
                                                         
.size _Unwind_GetTextRelBase, .-_Unwind_GetTextRelBase

