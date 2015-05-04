  .text
  .globl byte_copy
  .type byte_copy, @function

#! file-offset 0x6a00a
#! rip-offset  0x6a00a
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.byte_copy:                         #        0x6a00a  0      
  movl %edx, %ecx                   #  1     0x6a00a  2      
  movl %esi, %esi                   #  2     0x6a00c  2      
  leaq (%r15,%rsi,1), %rsi          #  3     0x6a00e  4      
  movl %edi, %edi                   #  4     0x6a012  2      
  leaq (%r15,%rdi,1), %rdi          #  5     0x6a014  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  6     0x6a018  3      
  popq %r11                         #  7     0x6a01b  3      
  nop                               #  8     0x6a01e  1      
  andl $0xffffffe0, %r11d           #  9     0x6a01f  7      
  addq %r15, %r11                   #  10    0x6a026  3      
  jmpq %r11                         #  11    0x6a029  3      
                                                             
.size byte_copy, .-byte_copy

