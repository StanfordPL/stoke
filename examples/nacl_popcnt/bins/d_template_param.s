  .text
  .globl d_template_param
  .type d_template_param, @function

#! file-offset 0x4ff80
#! rip-offset  0x4ff80
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.d_template_param:              #        0x4ff80  0      
  pushq %rbx                    #  1     0x4ff80  2      
  movl %edi, %ebx               #  2     0x4ff82  2      
  movl %ebx, %ebx               #  3     0x4ff84  2      
  movl 0xc(%r15,%rbx,1), %eax   #  4     0x4ff86  5      
  movl %eax, %eax               #  5     0x4ff8b  2      
  cmpb $0x54, (%r15,%rax,1)     #  6     0x4ff8d  5      
  je .L_4ffe0                   #  7     0x4ff92  6      
  nop                           #  8     0x4ff98  1      
.L_4ffa0:                       #        0x4ff99  0      
  xorl %eax, %eax               #  9     0x4ff99  2      
  nop                           #  10    0x4ff9b  1      
  nop                           #  11    0x4ff9c  1      
.L_4ffc0:                       #        0x4ff9d  0      
  popq %rbx                     #  12    0x4ff9d  2      
  popq %r11                     #  13    0x4ff9f  3      
  andl $0xffffffe0, %r11d       #  14    0x4ffa2  7      
  addq %r15, %r11               #  15    0x4ffa9  3      
  jmpq %r11                     #  16    0x4ffac  3      
  nop                           #  17    0x4ffaf  1      
  nop                           #  18    0x4ffb0  1      
.L_4ffe0:                       #        0x4ffb1  0      
  leal 0x1(%rax), %edx          #  19    0x4ffb1  3      
  xorl %ecx, %ecx               #  20    0x4ffb4  2      
  movl %ebx, %ebx               #  21    0x4ffb6  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  22    0x4ffb8  5      
  movl %edx, %edx               #  23    0x4ffbd  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  24    0x4ffbf  5      
  je .L_50020                   #  25    0x4ffc4  6      
  movl %ebx, %edi               #  26    0x4ffca  2      
  nop                           #  27    0x4ffcc  1      
  callq .d_number               #  28    0x4ffcd  5      
  testl %eax, %eax              #  29    0x4ffd2  2      
  js .L_4ffa0                   #  30    0x4ffd4  6      
  movl %ebx, %ebx               #  31    0x4ffda  2      
  movl 0xc(%r15,%rbx,1), %edx   #  32    0x4ffdc  5      
  movl %edx, %edx               #  33    0x4ffe1  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  34    0x4ffe3  5      
  jne .L_4ffa0                  #  35    0x4ffe8  6      
  leal 0x1(%rax), %ecx          #  36    0x4ffee  3      
  nop                           #  37    0x4fff1  1      
.L_50020:                       #        0x4fff2  0      
  addl $0x1, %edx               #  38    0x4fff2  3      
  movl %ebx, %ebx               #  39    0x4fff5  2      
  addl $0x1, 0x28(%r15,%rbx,1)  #  40    0x4fff7  6      
  movl %ebx, %ebx               #  41    0x4fffd  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x4ffff  5      
  movl %ebx, %ebx               #  43    0x50004  2      
  movl 0x14(%r15,%rbx,1), %edx  #  44    0x50006  5      
  movl %ebx, %ebx               #  45    0x5000b  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  46    0x5000d  5      
  jge .L_4ffa0                  #  47    0x50012  6      
  leal (%rdx,%rdx,2), %eax      #  48    0x50018  3      
  addl $0x1, %edx               #  49    0x5001b  3      
  movl %ebx, %ebx               #  50    0x5001e  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  51    0x50020  5      
  shll $0x2, %eax               #  52    0x50025  3      
  movl %ebx, %ebx               #  53    0x50028  2      
  addl 0x10(%r15,%rbx,1), %eax  #  54    0x5002a  5      
  testq %rax, %rax              #  55    0x5002f  3      
  je .L_4ffc0                   #  56    0x50032  6      
  movl %eax, %eax               #  57    0x50038  2      
  movl $0x5, (%r15,%rax,1)      #  58    0x5003a  8      
  movl %eax, %eax               #  59    0x50042  2      
  movl %ecx, 0x4(%r15,%rax,1)   #  60    0x50044  5      
  popq %rbx                     #  61    0x50049  2      
  popq %r11                     #  62    0x5004b  3      
  nop                           #  63    0x5004e  1      
  andl $0xffffffe0, %r11d       #  64    0x5004f  7      
  addq %r15, %r11               #  65    0x50056  3      
  jmpq %r11                     #  66    0x50059  3      
  nop                           #  67    0x5005c  1      
  nop                           #  68    0x5005d  1      
                                                         
.size d_template_param, .-d_template_param

