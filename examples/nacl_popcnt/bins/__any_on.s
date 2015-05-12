  .text
  .globl __any_on
  .type __any_on, @function

#! file-offset 0x7ebc0
#! rip-offset  0x7ebc0
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.__any_on:                      #        0x7ebc0  0      
  movl %edi, %edi               #  1     0x7ebc0  2      
  movl %esi, %edx               #  2     0x7ebc2  2      
  movl %edi, %edi               #  3     0x7ebc4  2      
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x7ebc6  5      
  sarl $0x5, %edx               #  5     0x7ebcb  3      
  cmpl %edx, %eax               #  6     0x7ebce  2      
  jl .L_7ec00                   #  7     0x7ebd0  6      
  jle .L_7ec60                  #  8     0x7ebd6  6      
  movl %esi, %ecx               #  9     0x7ebdc  2      
  movl %edx, %eax               #  10    0x7ebde  2      
  andl $0x1f, %ecx              #  11    0x7ebe0  3      
  nop                           #  12    0x7ebe3  1      
  jne .L_7eca0                  #  13    0x7ebe4  6      
  nop                           #  14    0x7ebea  1      
  nop                           #  15    0x7ebeb  1      
.L_7ec00:                       #        0x7ebec  0      
  leal 0x14(%rdi), %edx         #  16    0x7ebec  3      
  leal 0x14(%rdi,%rax,4), %eax  #  17    0x7ebef  4      
  nop                           #  18    0x7ebf3  1      
  nop                           #  19    0x7ebf4  1      
.L_7ec20:                       #        0x7ebf5  0      
  cmpl %eax, %edx               #  20    0x7ebf5  2      
  jae .L_7ec80                  #  21    0x7ebf7  6      
  subl $0x4, %eax               #  22    0x7ebfd  3      
  movl %eax, %eax               #  23    0x7ec00  2      
  movl (%r15,%rax,1), %ecx      #  24    0x7ec02  4      
  testl %ecx, %ecx              #  25    0x7ec06  2      
  je .L_7ec20                   #  26    0x7ec08  6      
  nop                           #  27    0x7ec0e  1      
.L_7ec40:                       #        0x7ec0f  0      
  movl $0x1, %eax               #  28    0x7ec0f  5      
  popq %r11                     #  29    0x7ec14  3      
  andl $0xffffffe0, %r11d       #  30    0x7ec17  7      
  addq %r15, %r11               #  31    0x7ec1e  3      
  jmpq %r11                     #  32    0x7ec21  3      
  nop                           #  33    0x7ec24  1      
.L_7ec60:                       #        0x7ec25  0      
  movl %edx, %eax               #  34    0x7ec25  2      
  jmpq .L_7ec00                 #  35    0x7ec27  5      
  nop                           #  36    0x7ec2c  1      
  nop                           #  37    0x7ec2d  1      
.L_7ec80:                       #        0x7ec2e  0      
  xorl %eax, %eax               #  38    0x7ec2e  2      
  popq %r11                     #  39    0x7ec30  3      
  andl $0xffffffe0, %r11d       #  40    0x7ec33  7      
  addq %r15, %r11               #  41    0x7ec3a  3      
  jmpq %r11                     #  42    0x7ec3d  3      
  nop                           #  43    0x7ec40  1      
  nop                           #  44    0x7ec41  1      
.L_7eca0:                       #        0x7ec42  0      
  leal 0x10(,%rax,4), %edx      #  45    0x7ec42  7      
  movslq %edx, %rdx             #  46    0x7ec49  3      
  leaq (%rdi,%rdx,1), %rdx      #  47    0x7ec4c  4      
  movl %edx, %edx               #  48    0x7ec50  2      
  movl 0x4(%r15,%rdx,1), %r8d   #  49    0x7ec52  5      
  movl %r8d, %edx               #  50    0x7ec57  3      
  shrl %cl, %edx                #  51    0x7ec5a  2      
  shll %cl, %edx                #  52    0x7ec5c  2      
  cmpl %r8d, %edx               #  53    0x7ec5e  3      
  nop                           #  54    0x7ec61  1      
  jne .L_7ec40                  #  55    0x7ec62  6      
  jmpq .L_7ec00                 #  56    0x7ec68  5      
  nop                           #  57    0x7ec6d  1      
  nop                           #  58    0x7ec6e  1      
                                                         
.size __any_on, .-__any_on

