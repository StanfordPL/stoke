  .text
  .globl __lo0bits
  .type __lo0bits, @function

#! file-offset 0x7e4a0
#! rip-offset  0x7e4a0
#! capacity    352 bytes

# Text                      #  Line  RIP      Bytes  
.__lo0bits:                 #        0x7e4a0  0      
  movl %edi, %edi           #  1     0x7e4a0  2      
  movl %edi, %edi           #  2     0x7e4a2  2      
  movl (%r15,%rdi,1), %edx  #  3     0x7e4a4  4      
  testb $0x7, %dl           #  4     0x7e4a8  3      
  je .L_7e4e0               #  5     0x7e4ab  6      
  xorl %eax, %eax           #  6     0x7e4b1  2      
  testb $0x1, %dl           #  7     0x7e4b3  3      
  jne .L_7e5a0              #  8     0x7e4b6  6      
  testb $0x2, %dl           #  9     0x7e4bc  3      
  nop                       #  10    0x7e4bf  1      
  jne .L_7e5e0              #  11    0x7e4c0  6      
  shrl $0x2, %edx           #  12    0x7e4c6  3      
  movl $0x2, %eax           #  13    0x7e4c9  5      
  movl %edi, %edi           #  14    0x7e4ce  2      
  movl %edx, (%r15,%rdi,1)  #  15    0x7e4d0  4      
  popq %r11                 #  16    0x7e4d4  3      
  andl $0xffffffe0, %r11d   #  17    0x7e4d7  7      
  addq %r15, %r11           #  18    0x7e4de  3      
  jmpq %r11                 #  19    0x7e4e1  3      
.L_7e4e0:                   #        0x7e4e4  0      
  xorl %eax, %eax           #  20    0x7e4e4  2      
  testw %dx, %dx            #  21    0x7e4e6  3      
  jne .L_7e500              #  22    0x7e4e9  6      
  shrl $0x10, %edx          #  23    0x7e4ef  3      
  movb $0x10, %al           #  24    0x7e4f2  2      
  nop                       #  25    0x7e4f4  1      
  nop                       #  26    0x7e4f5  1      
.L_7e500:                   #        0x7e4f6  0      
  testb %dl, %dl            #  27    0x7e4f6  2      
  jne .L_7e520              #  28    0x7e4f8  6      
  addl $0x8, %eax           #  29    0x7e4fe  3      
  shrl $0x8, %edx           #  30    0x7e501  3      
  nop                       #  31    0x7e504  1      
  nop                       #  32    0x7e505  1      
.L_7e520:                   #        0x7e506  0      
  testb $0xf, %dl           #  33    0x7e506  3      
  jne .L_7e540              #  34    0x7e509  6      
  addl $0x4, %eax           #  35    0x7e50f  3      
  shrl $0x4, %edx           #  36    0x7e512  3      
  nop                       #  37    0x7e515  1      
  nop                       #  38    0x7e516  1      
.L_7e540:                   #        0x7e517  0      
  testb $0x3, %dl           #  39    0x7e517  3      
  jne .L_7e560              #  40    0x7e51a  6      
  addl $0x2, %eax           #  41    0x7e520  3      
  shrl $0x2, %edx           #  42    0x7e523  3      
  nop                       #  43    0x7e526  1      
  nop                       #  44    0x7e527  1      
.L_7e560:                   #        0x7e528  0      
  testb $0x1, %dl           #  45    0x7e528  3      
  jne .L_7e580              #  46    0x7e52b  6      
  shrl $0x1, %edx           #  47    0x7e531  2      
  je .L_7e5c0               #  48    0x7e533  6      
  addl $0x1, %eax           #  49    0x7e539  3      
  nop                       #  50    0x7e53c  1      
  nop                       #  51    0x7e53d  1      
.L_7e580:                   #        0x7e53e  0      
  movl %edi, %edi           #  52    0x7e53e  2      
  movl %edx, (%r15,%rdi,1)  #  53    0x7e540  4      
  nop                       #  54    0x7e544  1      
  nop                       #  55    0x7e545  1      
.L_7e5a0:                   #        0x7e546  0      
  popq %r11                 #  56    0x7e546  3      
  andl $0xffffffe0, %r11d   #  57    0x7e549  7      
  addq %r15, %r11           #  58    0x7e550  3      
  jmpq %r11                 #  59    0x7e553  3      
  nop                       #  60    0x7e556  1      
  nop                       #  61    0x7e557  1      
.L_7e5c0:                   #        0x7e558  0      
  movl $0x20, %eax          #  62    0x7e558  5      
  popq %r11                 #  63    0x7e55d  3      
  andl $0xffffffe0, %r11d   #  64    0x7e560  7      
  addq %r15, %r11           #  65    0x7e567  3      
  jmpq %r11                 #  66    0x7e56a  3      
  nop                       #  67    0x7e56d  1      
.L_7e5e0:                   #        0x7e56e  0      
  shrl $0x1, %edx           #  68    0x7e56e  2      
  movb $0x1, %al            #  69    0x7e570  2      
  movl %edi, %edi           #  70    0x7e572  2      
  movl %edx, (%r15,%rdi,1)  #  71    0x7e574  4      
  popq %r11                 #  72    0x7e578  3      
  andl $0xffffffe0, %r11d   #  73    0x7e57b  7      
  addq %r15, %r11           #  74    0x7e582  3      
  jmpq %r11                 #  75    0x7e585  3      
  nop                       #  76    0x7e588  1      
                                                     
.size __lo0bits, .-__lo0bits

