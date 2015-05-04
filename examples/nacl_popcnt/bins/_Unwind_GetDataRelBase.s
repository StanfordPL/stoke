  .text
  .globl _Unwind_GetDataRelBase
  .type _Unwind_GetDataRelBase, @function

#! file-offset 0x58f80
#! rip-offset  0x58f80
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetDataRelBase:        #        0x58f80  0      
  popq %r11                     #  1     0x58f80  3      
  movl %edi, %edi               #  2     0x58f83  2      
  movl %edi, %edi               #  3     0x58f85  2      
  movl 0x58(%r15,%rdi,1), %eax  #  4     0x58f87  5      
  andl $0xffffffe0, %r11d       #  5     0x58f8c  7      
  addq %r15, %r11               #  6     0x58f93  3      
  jmpq %r11                     #  7     0x58f96  3      
  nop                           #  8     0x58f99  1      
                                                         
.size _Unwind_GetDataRelBase, .-_Unwind_GetDataRelBase

