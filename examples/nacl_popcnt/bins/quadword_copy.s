  .text
  .globl quadword_copy
  .type quadword_copy, @function

#! file-offset 0x6a02a
#! rip-offset  0x6a02a
#! capacity    54 bytes

# Text                              #  Line  RIP      Bytes  
.quadword_copy:                     #        0x6a02a  0      
  movl %edx, %ecx                   #  1     0x6a02a  2      
  shrl $0x3, %ecx                   #  2     0x6a02c  3      
  nop                               #  3     0x6a02f  1      
  movl %esi, %esi                   #  4     0x6a030  2      
  leaq (%r15,%rsi,1), %rsi          #  5     0x6a032  4      
  movl %edi, %edi                   #  6     0x6a036  2      
  leaq (%r15,%rdi,1), %rdi          #  7     0x6a038  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  8     0x6a03c  4      
  nop                               #  9     0x6a040  1      
  movl %edx, %ecx                   #  10    0x6a041  2      
  andl $0x7, %ecx                   #  11    0x6a043  3      
  movl %esi, %esi                   #  12    0x6a046  2      
  leaq (%r15,%rsi,1), %rsi          #  13    0x6a048  4      
  movl %edi, %edi                   #  14    0x6a04c  2      
  leaq (%r15,%rdi,1), %rdi          #  15    0x6a04e  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  16    0x6a052  3      
  popq %r11                         #  17    0x6a055  3      
  andl $0xffffffe0, %r11d           #  18    0x6a058  7      
  addq %r15, %r11                   #  19    0x6a05f  3      
  jmpq %r11                         #  20    0x6a062  3      
  nop                               #  21    0x6a065  1      
                                                             
.size quadword_copy, .-quadword_copy

