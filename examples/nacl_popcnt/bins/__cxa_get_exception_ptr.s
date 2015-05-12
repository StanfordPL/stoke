  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x4c440
#! rip-offset  0x4c440
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__cxa_get_exception_ptr:       #        0x4c440  0      
  popq %r11                     #  1     0x4c440  3      
  subl $0x30, %edi              #  2     0x4c443  3      
  movl %edi, %edi               #  3     0x4c446  2      
  movl 0x28(%r15,%rdi,1), %eax  #  4     0x4c448  5      
  andl $0xffffffe0, %r11d       #  5     0x4c44d  7      
  addq %r15, %r11               #  6     0x4c454  3      
  jmpq %r11                     #  7     0x4c457  3      
  nop                           #  8     0x4c45a  1      
  nop                           #  9     0x4c45b  1      
  nop                           #  10    0x4c45c  1      
  nop                           #  11    0x4c45d  1      
  nop                           #  12    0x4c45e  1      
  nop                           #  13    0x4c45f  1      
  nop                           #  14    0x4c460  1      
  nop                           #  15    0x4c461  1      
  nop                           #  16    0x4c462  1      
  nop                           #  17    0x4c463  1      
                                                         
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

