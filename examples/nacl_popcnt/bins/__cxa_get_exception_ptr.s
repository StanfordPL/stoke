  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x4c4c0
#! rip-offset  0x4c4c0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__cxa_get_exception_ptr:       #        0x4c4c0  0      
  popq %r11                     #  1     0x4c4c0  3      
  subl $0x30, %edi              #  2     0x4c4c3  3      
  movl %edi, %edi               #  3     0x4c4c6  2      
  movl 0x28(%r15,%rdi,1), %eax  #  4     0x4c4c8  5      
  andl $0xffffffe0, %r11d       #  5     0x4c4cd  7      
  addq %r15, %r11               #  6     0x4c4d4  3      
  jmpq %r11                     #  7     0x4c4d7  3      
  nop                           #  8     0x4c4da  1      
  nop                           #  9     0x4c4db  1      
  nop                           #  10    0x4c4dc  1      
  nop                           #  11    0x4c4dd  1      
  nop                           #  12    0x4c4de  1      
  nop                           #  13    0x4c4df  1      
  nop                           #  14    0x4c4e0  1      
  nop                           #  15    0x4c4e1  1      
  nop                           #  16    0x4c4e2  1      
  nop                           #  17    0x4c4e3  1      
                                                         
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

