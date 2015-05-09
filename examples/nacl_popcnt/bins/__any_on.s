  .text
  .globl __any_on
  .type __any_on, @function

#! file-offset 0x7eba0
#! rip-offset  0x7eba0
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.__any_on:                      #        0x7eba0  0      
  movl %edi, %edi               #  1     0x7eba0  2      
  movl %esi, %edx               #  2     0x7eba2  2      
  movl %edi, %edi               #  3     0x7eba4  2      
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x7eba6  5      
  sarl $0x5, %edx               #  5     0x7ebab  3      
  cmpl %edx, %eax               #  6     0x7ebae  2      
  jl .L_7ebe0                   #  7     0x7ebb0  6      
  jle .L_7ec40                  #  8     0x7ebb6  6      
  movl %esi, %ecx               #  9     0x7ebbc  2      
  movl %edx, %eax               #  10    0x7ebbe  2      
  andl $0x1f, %ecx              #  11    0x7ebc0  3      
  nop                           #  12    0x7ebc3  1      
  jne .L_7ec80                  #  13    0x7ebc4  6      
  nop                           #  14    0x7ebca  1      
  nop                           #  15    0x7ebcb  1      
.L_7ebe0:                       #        0x7ebcc  0      
  leal 0x14(%rdi), %edx         #  16    0x7ebcc  3      
  leal 0x14(%rdi,%rax,4), %eax  #  17    0x7ebcf  4      
  nop                           #  18    0x7ebd3  1      
  nop                           #  19    0x7ebd4  1      
.L_7ec00:                       #        0x7ebd5  0      
  cmpl %eax, %edx               #  20    0x7ebd5  2      
  jae .L_7ec60                  #  21    0x7ebd7  6      
  subl $0x4, %eax               #  22    0x7ebdd  3      
  movl %eax, %eax               #  23    0x7ebe0  2      
  movl (%r15,%rax,1), %ecx      #  24    0x7ebe2  4      
  testl %ecx, %ecx              #  25    0x7ebe6  2      
  je .L_7ec00                   #  26    0x7ebe8  6      
  nop                           #  27    0x7ebee  1      
.L_7ec20:                       #        0x7ebef  0      
  movl $0x1, %eax               #  28    0x7ebef  5      
  popq %r11                     #  29    0x7ebf4  3      
  andl $0xffffffe0, %r11d       #  30    0x7ebf7  7      
  addq %r15, %r11               #  31    0x7ebfe  3      
  jmpq %r11                     #  32    0x7ec01  3      
  nop                           #  33    0x7ec04  1      
.L_7ec40:                       #        0x7ec05  0      
  movl %edx, %eax               #  34    0x7ec05  2      
  jmpq .L_7ebe0                 #  35    0x7ec07  5      
  nop                           #  36    0x7ec0c  1      
  nop                           #  37    0x7ec0d  1      
.L_7ec60:                       #        0x7ec0e  0      
  xorl %eax, %eax               #  38    0x7ec0e  2      
  popq %r11                     #  39    0x7ec10  3      
  andl $0xffffffe0, %r11d       #  40    0x7ec13  7      
  addq %r15, %r11               #  41    0x7ec1a  3      
  jmpq %r11                     #  42    0x7ec1d  3      
  nop                           #  43    0x7ec20  1      
  nop                           #  44    0x7ec21  1      
.L_7ec80:                       #        0x7ec22  0      
  leal 0x10(,%rax,4), %edx      #  45    0x7ec22  7      
  movslq %edx, %rdx             #  46    0x7ec29  3      
  leaq (%rdi,%rdx,1), %rdx      #  47    0x7ec2c  4      
  movl %edx, %edx               #  48    0x7ec30  2      
  movl 0x4(%r15,%rdx,1), %r8d   #  49    0x7ec32  5      
  movl %r8d, %edx               #  50    0x7ec37  3      
  shrl %cl, %edx                #  51    0x7ec3a  2      
  shll %cl, %edx                #  52    0x7ec3c  2      
  cmpl %r8d, %edx               #  53    0x7ec3e  3      
  nop                           #  54    0x7ec41  1      
  jne .L_7ec20                  #  55    0x7ec42  6      
  jmpq .L_7ebe0                 #  56    0x7ec48  5      
  nop                           #  57    0x7ec4d  1      
  nop                           #  58    0x7ec4e  1      
                                                         
.size __any_on, .-__any_on

