  .text
  .globl quadword_copy
  .type quadword_copy, @function

#! file-offset 0x69f8a
#! rip-offset  0x69f8a
#! capacity    54 bytes

# Text                              #  Line  RIP      Bytes  
.quadword_copy:                     #        0x69f8a  0      
  movl %edx, %ecx                   #  1     0x69f8a  2      
  shrl $0x3, %ecx                   #  2     0x69f8c  3      
  nop                               #  3     0x69f8f  1      
  movl %esi, %esi                   #  4     0x69f90  2      
  leaq (%r15,%rsi,1), %rsi          #  5     0x69f92  4      
  movl %edi, %edi                   #  6     0x69f96  2      
  leaq (%r15,%rdi,1), %rdi          #  7     0x69f98  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  8     0x69f9c  4      
  nop                               #  9     0x69fa0  1      
  movl %edx, %ecx                   #  10    0x69fa1  2      
  andl $0x7, %ecx                   #  11    0x69fa3  3      
  movl %esi, %esi                   #  12    0x69fa6  2      
  leaq (%r15,%rsi,1), %rsi          #  13    0x69fa8  4      
  movl %edi, %edi                   #  14    0x69fac  2      
  leaq (%r15,%rdi,1), %rdi          #  15    0x69fae  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  16    0x69fb2  3      
  popq %r11                         #  17    0x69fb5  3      
  andl $0xffffffe0, %r11d           #  18    0x69fb8  7      
  addq %r15, %r11                   #  19    0x69fbf  3      
  jmpq %r11                         #  20    0x69fc2  3      
  nop                               #  21    0x69fc5  1      
                                                             
.size quadword_copy, .-quadword_copy

