  .text
  .globl quadword_copy
  .type quadword_copy, @function

#! file-offset 0x69faa
#! rip-offset  0x69faa
#! capacity    54 bytes

# Text                              #  Line  RIP      Bytes  
.quadword_copy:                     #        0x69faa  0      
  movl %edx, %ecx                   #  1     0x69faa  2      
  shrl $0x3, %ecx                   #  2     0x69fac  3      
  nop                               #  3     0x69faf  1      
  movl %esi, %esi                   #  4     0x69fb0  2      
  leaq (%r15,%rsi,1), %rsi          #  5     0x69fb2  4      
  movl %edi, %edi                   #  6     0x69fb6  2      
  leaq (%r15,%rdi,1), %rdi          #  7     0x69fb8  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  8     0x69fbc  4      
  nop                               #  9     0x69fc0  1      
  movl %edx, %ecx                   #  10    0x69fc1  2      
  andl $0x7, %ecx                   #  11    0x69fc3  3      
  movl %esi, %esi                   #  12    0x69fc6  2      
  leaq (%r15,%rsi,1), %rsi          #  13    0x69fc8  4      
  movl %edi, %edi                   #  14    0x69fcc  2      
  leaq (%r15,%rdi,1), %rdi          #  15    0x69fce  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  16    0x69fd2  3      
  popq %r11                         #  17    0x69fd5  3      
  andl $0xffffffe0, %r11d           #  18    0x69fd8  7      
  addq %r15, %r11                   #  19    0x69fdf  3      
  jmpq %r11                         #  20    0x69fe2  3      
  nop                               #  21    0x69fe5  1      
                                                             
.size quadword_copy, .-quadword_copy

