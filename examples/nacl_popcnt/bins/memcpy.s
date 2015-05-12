  .text
  .globl memcpy
  .type memcpy, @function

#! file-offset 0x69de0
#! rip-offset  0x69de0
#! capacity    46 bytes

# Text                              #  Line  RIP      Bytes  
.memcpy:                            #        0x69de0  0      
  movl %edi, %eax                   #  1     0x69de0  2      
  cmpl $0x10, %edx                  #  2     0x69de2  3      
  jb .byte_copy                     #  3     0x69de5  6      
  movl %edi, %r8d                   #  4     0x69deb  3      
  andl $0x7, %r8d                   #  5     0x69dee  4      
  je .quadword_aligned              #  6     0x69df2  6      
  movl $0x8, %ecx                   #  7     0x69df8  5      
  subl %r8d, %ecx                   #  8     0x69dfd  3      
  subl %ecx, %edx                   #  9     0x69e00  2      
  xchgw %ax, %ax                    #  10    0x69e02  3      
  movl %esi, %esi                   #  11    0x69e05  2      
  leaq (%r15,%rsi,1), %rsi          #  12    0x69e07  4      
  movl %edi, %edi                   #  13    0x69e0b  2      
  leaq (%r15,%rdi,1), %rdi          #  14    0x69e0d  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  15    0x69e11  3      
                                                             
.size memcpy, .-memcpy

