  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x4c420
#! rip-offset  0x4c420
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__cxa_get_exception_ptr:       #        0x4c420  0      
  popq %r11                     #  1     0x4c420  3      
  subl $0x30, %edi              #  2     0x4c423  3      
  movl %edi, %edi               #  3     0x4c426  2      
  movl 0x28(%r15,%rdi,1), %eax  #  4     0x4c428  5      
  andl $0xffffffe0, %r11d       #  5     0x4c42d  7      
  addq %r15, %r11               #  6     0x4c434  3      
  jmpq %r11                     #  7     0x4c437  3      
  nop                           #  8     0x4c43a  1      
  nop                           #  9     0x4c43b  1      
  nop                           #  10    0x4c43c  1      
  nop                           #  11    0x4c43d  1      
  nop                           #  12    0x4c43e  1      
  nop                           #  13    0x4c43f  1      
  nop                           #  14    0x4c440  1      
  nop                           #  15    0x4c441  1      
  nop                           #  16    0x4c442  1      
  nop                           #  17    0x4c443  1      
                                                         
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

