  .text
  .globl memchr
  .type memchr, @function

#! file-offset 0x69c60
#! rip-offset  0x69c60
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.memchr:                       #        0x69c60  0      
  movl %edi, %edi              #  1     0x69c60  2      
  testb $0x3, %dil             #  2     0x69c62  4      
  jne .L_69ca0                 #  3     0x69c66  6      
  jmpq .L_69d00                #  4     0x69c6c  5      
  nop                          #  5     0x69c71  1      
  nop                          #  6     0x69c72  1      
.L_69c80:                      #        0x69c73  0      
  movl %edi, %edi              #  7     0x69c73  2      
  cmpb %sil, (%r15,%rdi,1)     #  8     0x69c75  4      
  je .L_69ce0                  #  9     0x69c79  6      
  addl $0x1, %edi              #  10    0x69c7f  3      
  subl $0x1, %edx              #  11    0x69c82  3      
  testb $0x3, %dil             #  12    0x69c85  4      
  je .L_69d00                  #  13    0x69c89  6      
  nop                          #  14    0x69c8f  1      
.L_69ca0:                      #        0x69c90  0      
  testl %edx, %edx             #  15    0x69c90  2      
  jne .L_69c80                 #  16    0x69c92  6      
  nop                          #  17    0x69c98  1      
  nop                          #  18    0x69c99  1      
.L_69cc0:                      #        0x69c9a  0      
  xorl %eax, %eax              #  19    0x69c9a  2      
  popq %r11                    #  20    0x69c9c  3      
  andl $0xffffffe0, %r11d      #  21    0x69c9f  7      
  addq %r15, %r11              #  22    0x69ca6  3      
  jmpq %r11                    #  23    0x69ca9  3      
  nop                          #  24    0x69cac  1      
  nop                          #  25    0x69cad  1      
.L_69ce0:                      #        0x69cae  0      
  movq %rdi, %rax              #  26    0x69cae  3      
  popq %r11                    #  27    0x69cb1  3      
  andl $0xffffffe0, %r11d      #  28    0x69cb4  7      
  addq %r15, %r11              #  29    0x69cbb  3      
  jmpq %r11                    #  30    0x69cbe  3      
  xchgw %ax, %ax               #  31    0x69cc1  3      
  nop                          #  32    0x69cc4  1      
.L_69d00:                      #        0x69cc5  0      
  cmpl $0x3, %edx              #  33    0x69cc5  3      
  ja .L_69d80                  #  34    0x69cc8  6      
  nop                          #  35    0x69cce  1      
  nop                          #  36    0x69ccf  1      
.L_69d20:                      #        0x69cd0  0      
  testl %edx, %edx             #  37    0x69cd0  2      
  je .L_69cc0                  #  38    0x69cd2  6      
  movl %edi, %edi              #  39    0x69cd8  2      
  cmpb %sil, (%r15,%rdi,1)     #  40    0x69cda  4      
  je .L_69ce0                  #  41    0x69cde  6      
  subl $0x1, %edx              #  42    0x69ce4  3      
  jmpq .L_69d60                #  43    0x69ce7  5      
  nop                          #  44    0x69cec  1      
.L_69d40:                      #        0x69ced  0      
  addl $0x1, %edi              #  45    0x69ced  3      
  subl $0x1, %edx              #  46    0x69cf0  3      
  movl %edi, %edi              #  47    0x69cf3  2      
  cmpb %sil, (%r15,%rdi,1)     #  48    0x69cf5  4      
  je .L_69ce0                  #  49    0x69cf9  6      
  nop                          #  50    0x69cff  1      
  nop                          #  51    0x69d00  1      
.L_69d60:                      #        0x69d01  0      
  testl %edx, %edx             #  52    0x69d01  2      
  jne .L_69d40                 #  53    0x69d03  6      
  jmpq .L_69cc0                #  54    0x69d09  5      
  nop                          #  55    0x69d0e  1      
  nop                          #  56    0x69d0f  1      
.L_69d80:                      #        0x69d10  0      
  movzbl %sil, %ecx            #  57    0x69d10  4      
  movl %ecx, %eax              #  58    0x69d14  2      
  shll $0x8, %eax              #  59    0x69d16  3      
  orl %ecx, %eax               #  60    0x69d19  2      
  movl %eax, %r8d              #  61    0x69d1b  3      
  shll $0x10, %r8d             #  62    0x69d1e  4      
  orl %eax, %r8d               #  63    0x69d22  3      
  nop                          #  64    0x69d25  1      
.L_69da0:                      #        0x69d26  0      
  movl %edi, %edi              #  65    0x69d26  2      
  movl (%r15,%rdi,1), %ecx     #  66    0x69d28  4      
  xorl %r8d, %ecx              #  67    0x69d2c  3      
  leal -0x1010101(%rcx), %eax  #  68    0x69d2f  6      
  notl %ecx                    #  69    0x69d35  2      
  andl %ecx, %eax              #  70    0x69d37  2      
  testl $0x80808080, %eax      #  71    0x69d39  5      
  jne .L_69d20                 #  72    0x69d3e  6      
  xchgw %ax, %ax               #  73    0x69d44  3      
  subl $0x4, %edx              #  74    0x69d47  3      
  addl $0x4, %edi              #  75    0x69d4a  3      
  cmpl $0x3, %edx              #  76    0x69d4d  3      
  ja .L_69da0                  #  77    0x69d50  6      
  jmpq .L_69d20                #  78    0x69d56  5      
  nop                          #  79    0x69d5b  1      
  nop                          #  80    0x69d5c  1      
  nop                          #  81    0x69d5d  1      
  nop                          #  82    0x69d5e  1      
  nop                          #  83    0x69d5f  1      
  nop                          #  84    0x69d60  1      
  nop                          #  85    0x69d61  1      
  nop                          #  86    0x69d62  1      
  nop                          #  87    0x69d63  1      
  nop                          #  88    0x69d64  1      
  nop                          #  89    0x69d65  1      
  nop                          #  90    0x69d66  1      
  nop                          #  91    0x69d67  1      
  nop                          #  92    0x69d68  1      
  nop                          #  93    0x69d69  1      
  nop                          #  94    0x69d6a  1      
                                                        
.size memchr, .-memchr

