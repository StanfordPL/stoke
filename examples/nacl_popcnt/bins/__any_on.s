  .text
  .globl __any_on
  .type __any_on, @function

#! file-offset 0x7ec40
#! rip-offset  0x7ec40
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.__any_on:                      #        0x7ec40  0      
  movl %edi, %edi               #  1     0x7ec40  2      
  movl %esi, %edx               #  2     0x7ec42  2      
  movl %edi, %edi               #  3     0x7ec44  2      
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x7ec46  5      
  sarl $0x5, %edx               #  5     0x7ec4b  3      
  cmpl %edx, %eax               #  6     0x7ec4e  2      
  jl .L_7ec80                   #  7     0x7ec50  6      
  jle .L_7ece0                  #  8     0x7ec56  6      
  movl %esi, %ecx               #  9     0x7ec5c  2      
  movl %edx, %eax               #  10    0x7ec5e  2      
  andl $0x1f, %ecx              #  11    0x7ec60  3      
  nop                           #  12    0x7ec63  1      
  jne .L_7ed20                  #  13    0x7ec64  6      
  nop                           #  14    0x7ec6a  1      
  nop                           #  15    0x7ec6b  1      
.L_7ec80:                       #        0x7ec6c  0      
  leal 0x14(%rdi), %edx         #  16    0x7ec6c  3      
  leal 0x14(%rdi,%rax,4), %eax  #  17    0x7ec6f  4      
  nop                           #  18    0x7ec73  1      
  nop                           #  19    0x7ec74  1      
.L_7eca0:                       #        0x7ec75  0      
  cmpl %eax, %edx               #  20    0x7ec75  2      
  jae .L_7ed00                  #  21    0x7ec77  6      
  subl $0x4, %eax               #  22    0x7ec7d  3      
  movl %eax, %eax               #  23    0x7ec80  2      
  movl (%r15,%rax,1), %ecx      #  24    0x7ec82  4      
  testl %ecx, %ecx              #  25    0x7ec86  2      
  je .L_7eca0                   #  26    0x7ec88  6      
  nop                           #  27    0x7ec8e  1      
.L_7ecc0:                       #        0x7ec8f  0      
  movl $0x1, %eax               #  28    0x7ec8f  5      
  popq %r11                     #  29    0x7ec94  3      
  andl $0xffffffe0, %r11d       #  30    0x7ec97  7      
  addq %r15, %r11               #  31    0x7ec9e  3      
  jmpq %r11                     #  32    0x7eca1  3      
  nop                           #  33    0x7eca4  1      
.L_7ece0:                       #        0x7eca5  0      
  movl %edx, %eax               #  34    0x7eca5  2      
  jmpq .L_7ec80                 #  35    0x7eca7  5      
  nop                           #  36    0x7ecac  1      
  nop                           #  37    0x7ecad  1      
.L_7ed00:                       #        0x7ecae  0      
  xorl %eax, %eax               #  38    0x7ecae  2      
  popq %r11                     #  39    0x7ecb0  3      
  andl $0xffffffe0, %r11d       #  40    0x7ecb3  7      
  addq %r15, %r11               #  41    0x7ecba  3      
  jmpq %r11                     #  42    0x7ecbd  3      
  nop                           #  43    0x7ecc0  1      
  nop                           #  44    0x7ecc1  1      
.L_7ed20:                       #        0x7ecc2  0      
  leal 0x10(,%rax,4), %edx      #  45    0x7ecc2  7      
  movslq %edx, %rdx             #  46    0x7ecc9  3      
  leaq (%rdi,%rdx,1), %rdx      #  47    0x7eccc  4      
  movl %edx, %edx               #  48    0x7ecd0  2      
  movl 0x4(%r15,%rdx,1), %r8d   #  49    0x7ecd2  5      
  movl %r8d, %edx               #  50    0x7ecd7  3      
  shrl %cl, %edx                #  51    0x7ecda  2      
  shll %cl, %edx                #  52    0x7ecdc  2      
  cmpl %r8d, %edx               #  53    0x7ecde  3      
  nop                           #  54    0x7ece1  1      
  jne .L_7ecc0                  #  55    0x7ece2  6      
  jmpq .L_7ec80                 #  56    0x7ece8  5      
  nop                           #  57    0x7eced  1      
  nop                           #  58    0x7ecee  1      
                                                         
.size __any_on, .-__any_on

