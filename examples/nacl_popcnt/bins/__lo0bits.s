  .text
  .globl __lo0bits
  .type __lo0bits, @function

#! file-offset 0x7e520
#! rip-offset  0x7e520
#! capacity    352 bytes

# Text                      #  Line  RIP      Bytes  
.__lo0bits:                 #        0x7e520  0      
  movl %edi, %edi           #  1     0x7e520  2      
  movl %edi, %edi           #  2     0x7e522  2      
  movl (%r15,%rdi,1), %edx  #  3     0x7e524  4      
  testb $0x7, %dl           #  4     0x7e528  3      
  je .L_7e560               #  5     0x7e52b  6      
  xorl %eax, %eax           #  6     0x7e531  2      
  testb $0x1, %dl           #  7     0x7e533  3      
  jne .L_7e620              #  8     0x7e536  6      
  testb $0x2, %dl           #  9     0x7e53c  3      
  nop                       #  10    0x7e53f  1      
  jne .L_7e660              #  11    0x7e540  6      
  shrl $0x2, %edx           #  12    0x7e546  3      
  movl $0x2, %eax           #  13    0x7e549  5      
  movl %edi, %edi           #  14    0x7e54e  2      
  movl %edx, (%r15,%rdi,1)  #  15    0x7e550  4      
  popq %r11                 #  16    0x7e554  3      
  andl $0xffffffe0, %r11d   #  17    0x7e557  7      
  addq %r15, %r11           #  18    0x7e55e  3      
  jmpq %r11                 #  19    0x7e561  3      
.L_7e560:                   #        0x7e564  0      
  xorl %eax, %eax           #  20    0x7e564  2      
  testw %dx, %dx            #  21    0x7e566  3      
  jne .L_7e580              #  22    0x7e569  6      
  shrl $0x10, %edx          #  23    0x7e56f  3      
  movb $0x10, %al           #  24    0x7e572  2      
  nop                       #  25    0x7e574  1      
  nop                       #  26    0x7e575  1      
.L_7e580:                   #        0x7e576  0      
  testb %dl, %dl            #  27    0x7e576  2      
  jne .L_7e5a0              #  28    0x7e578  6      
  addl $0x8, %eax           #  29    0x7e57e  3      
  shrl $0x8, %edx           #  30    0x7e581  3      
  nop                       #  31    0x7e584  1      
  nop                       #  32    0x7e585  1      
.L_7e5a0:                   #        0x7e586  0      
  testb $0xf, %dl           #  33    0x7e586  3      
  jne .L_7e5c0              #  34    0x7e589  6      
  addl $0x4, %eax           #  35    0x7e58f  3      
  shrl $0x4, %edx           #  36    0x7e592  3      
  nop                       #  37    0x7e595  1      
  nop                       #  38    0x7e596  1      
.L_7e5c0:                   #        0x7e597  0      
  testb $0x3, %dl           #  39    0x7e597  3      
  jne .L_7e5e0              #  40    0x7e59a  6      
  addl $0x2, %eax           #  41    0x7e5a0  3      
  shrl $0x2, %edx           #  42    0x7e5a3  3      
  nop                       #  43    0x7e5a6  1      
  nop                       #  44    0x7e5a7  1      
.L_7e5e0:                   #        0x7e5a8  0      
  testb $0x1, %dl           #  45    0x7e5a8  3      
  jne .L_7e600              #  46    0x7e5ab  6      
  shrl $0x1, %edx           #  47    0x7e5b1  2      
  je .L_7e640               #  48    0x7e5b3  6      
  addl $0x1, %eax           #  49    0x7e5b9  3      
  nop                       #  50    0x7e5bc  1      
  nop                       #  51    0x7e5bd  1      
.L_7e600:                   #        0x7e5be  0      
  movl %edi, %edi           #  52    0x7e5be  2      
  movl %edx, (%r15,%rdi,1)  #  53    0x7e5c0  4      
  nop                       #  54    0x7e5c4  1      
  nop                       #  55    0x7e5c5  1      
.L_7e620:                   #        0x7e5c6  0      
  popq %r11                 #  56    0x7e5c6  3      
  andl $0xffffffe0, %r11d   #  57    0x7e5c9  7      
  addq %r15, %r11           #  58    0x7e5d0  3      
  jmpq %r11                 #  59    0x7e5d3  3      
  nop                       #  60    0x7e5d6  1      
  nop                       #  61    0x7e5d7  1      
.L_7e640:                   #        0x7e5d8  0      
  movl $0x20, %eax          #  62    0x7e5d8  5      
  popq %r11                 #  63    0x7e5dd  3      
  andl $0xffffffe0, %r11d   #  64    0x7e5e0  7      
  addq %r15, %r11           #  65    0x7e5e7  3      
  jmpq %r11                 #  66    0x7e5ea  3      
  nop                       #  67    0x7e5ed  1      
.L_7e660:                   #        0x7e5ee  0      
  shrl $0x1, %edx           #  68    0x7e5ee  2      
  movb $0x1, %al            #  69    0x7e5f0  2      
  movl %edi, %edi           #  70    0x7e5f2  2      
  movl %edx, (%r15,%rdi,1)  #  71    0x7e5f4  4      
  popq %r11                 #  72    0x7e5f8  3      
  andl $0xffffffe0, %r11d   #  73    0x7e5fb  7      
  addq %r15, %r11           #  74    0x7e602  3      
  jmpq %r11                 #  75    0x7e605  3      
  nop                       #  76    0x7e608  1      
                                                     
.size __lo0bits, .-__lo0bits

