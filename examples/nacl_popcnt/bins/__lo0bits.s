  .text
  .globl __lo0bits
  .type __lo0bits, @function

#! file-offset 0x7e480
#! rip-offset  0x7e480
#! capacity    352 bytes

# Text                      #  Line  RIP      Bytes  
.__lo0bits:                 #        0x7e480  0      
  movl %edi, %edi           #  1     0x7e480  2      
  movl %edi, %edi           #  2     0x7e482  2      
  movl (%r15,%rdi,1), %edx  #  3     0x7e484  4      
  testb $0x7, %dl           #  4     0x7e488  3      
  je .L_7e4c0               #  5     0x7e48b  6      
  xorl %eax, %eax           #  6     0x7e491  2      
  testb $0x1, %dl           #  7     0x7e493  3      
  jne .L_7e580              #  8     0x7e496  6      
  testb $0x2, %dl           #  9     0x7e49c  3      
  nop                       #  10    0x7e49f  1      
  jne .L_7e5c0              #  11    0x7e4a0  6      
  shrl $0x2, %edx           #  12    0x7e4a6  3      
  movl $0x2, %eax           #  13    0x7e4a9  5      
  movl %edi, %edi           #  14    0x7e4ae  2      
  movl %edx, (%r15,%rdi,1)  #  15    0x7e4b0  4      
  popq %r11                 #  16    0x7e4b4  3      
  andl $0xffffffe0, %r11d   #  17    0x7e4b7  7      
  addq %r15, %r11           #  18    0x7e4be  3      
  jmpq %r11                 #  19    0x7e4c1  3      
.L_7e4c0:                   #        0x7e4c4  0      
  xorl %eax, %eax           #  20    0x7e4c4  2      
  testw %dx, %dx            #  21    0x7e4c6  3      
  jne .L_7e4e0              #  22    0x7e4c9  6      
  shrl $0x10, %edx          #  23    0x7e4cf  3      
  movb $0x10, %al           #  24    0x7e4d2  2      
  nop                       #  25    0x7e4d4  1      
  nop                       #  26    0x7e4d5  1      
.L_7e4e0:                   #        0x7e4d6  0      
  testb %dl, %dl            #  27    0x7e4d6  2      
  jne .L_7e500              #  28    0x7e4d8  6      
  addl $0x8, %eax           #  29    0x7e4de  3      
  shrl $0x8, %edx           #  30    0x7e4e1  3      
  nop                       #  31    0x7e4e4  1      
  nop                       #  32    0x7e4e5  1      
.L_7e500:                   #        0x7e4e6  0      
  testb $0xf, %dl           #  33    0x7e4e6  3      
  jne .L_7e520              #  34    0x7e4e9  6      
  addl $0x4, %eax           #  35    0x7e4ef  3      
  shrl $0x4, %edx           #  36    0x7e4f2  3      
  nop                       #  37    0x7e4f5  1      
  nop                       #  38    0x7e4f6  1      
.L_7e520:                   #        0x7e4f7  0      
  testb $0x3, %dl           #  39    0x7e4f7  3      
  jne .L_7e540              #  40    0x7e4fa  6      
  addl $0x2, %eax           #  41    0x7e500  3      
  shrl $0x2, %edx           #  42    0x7e503  3      
  nop                       #  43    0x7e506  1      
  nop                       #  44    0x7e507  1      
.L_7e540:                   #        0x7e508  0      
  testb $0x1, %dl           #  45    0x7e508  3      
  jne .L_7e560              #  46    0x7e50b  6      
  shrl $0x1, %edx           #  47    0x7e511  2      
  je .L_7e5a0               #  48    0x7e513  6      
  addl $0x1, %eax           #  49    0x7e519  3      
  nop                       #  50    0x7e51c  1      
  nop                       #  51    0x7e51d  1      
.L_7e560:                   #        0x7e51e  0      
  movl %edi, %edi           #  52    0x7e51e  2      
  movl %edx, (%r15,%rdi,1)  #  53    0x7e520  4      
  nop                       #  54    0x7e524  1      
  nop                       #  55    0x7e525  1      
.L_7e580:                   #        0x7e526  0      
  popq %r11                 #  56    0x7e526  3      
  andl $0xffffffe0, %r11d   #  57    0x7e529  7      
  addq %r15, %r11           #  58    0x7e530  3      
  jmpq %r11                 #  59    0x7e533  3      
  nop                       #  60    0x7e536  1      
  nop                       #  61    0x7e537  1      
.L_7e5a0:                   #        0x7e538  0      
  movl $0x20, %eax          #  62    0x7e538  5      
  popq %r11                 #  63    0x7e53d  3      
  andl $0xffffffe0, %r11d   #  64    0x7e540  7      
  addq %r15, %r11           #  65    0x7e547  3      
  jmpq %r11                 #  66    0x7e54a  3      
  nop                       #  67    0x7e54d  1      
.L_7e5c0:                   #        0x7e54e  0      
  shrl $0x1, %edx           #  68    0x7e54e  2      
  movb $0x1, %al            #  69    0x7e550  2      
  movl %edi, %edi           #  70    0x7e552  2      
  movl %edx, (%r15,%rdi,1)  #  71    0x7e554  4      
  popq %r11                 #  72    0x7e558  3      
  andl $0xffffffe0, %r11d   #  73    0x7e55b  7      
  addq %r15, %r11           #  74    0x7e562  3      
  jmpq %r11                 #  75    0x7e565  3      
  nop                       #  76    0x7e568  1      
                                                     
.size __lo0bits, .-__lo0bits

