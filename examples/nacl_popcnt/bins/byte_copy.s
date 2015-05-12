  .text
  .globl byte_copy
  .type byte_copy, @function

#! file-offset 0x69f8a
#! rip-offset  0x69f8a
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.byte_copy:                         #        0x69f8a  0      
  movl %edx, %ecx                   #  1     0x69f8a  2      
  movl %esi, %esi                   #  2     0x69f8c  2      
  leaq (%r15,%rsi,1), %rsi          #  3     0x69f8e  4      
  movl %edi, %edi                   #  4     0x69f92  2      
  leaq (%r15,%rdi,1), %rdi          #  5     0x69f94  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  6     0x69f98  3      
  popq %r11                         #  7     0x69f9b  3      
  nop                               #  8     0x69f9e  1      
  andl $0xffffffe0, %r11d           #  9     0x69f9f  7      
  addq %r15, %r11                   #  10    0x69fa6  3      
  jmpq %r11                         #  11    0x69fa9  3      
                                                             
.size byte_copy, .-byte_copy

