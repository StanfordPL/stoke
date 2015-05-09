  .text
  .globl memchr
  .type memchr, @function

#! file-offset 0x69c40
#! rip-offset  0x69c40
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.memchr:                       #        0x69c40  0      
  movl %edi, %edi              #  1     0x69c40  2      
  testb $0x3, %dil             #  2     0x69c42  4      
  jne .L_69c80                 #  3     0x69c46  6      
  jmpq .L_69ce0                #  4     0x69c4c  5      
  nop                          #  5     0x69c51  1      
  nop                          #  6     0x69c52  1      
.L_69c60:                      #        0x69c53  0      
  movl %edi, %edi              #  7     0x69c53  2      
  cmpb %sil, (%r15,%rdi,1)     #  8     0x69c55  4      
  je .L_69cc0                  #  9     0x69c59  6      
  addl $0x1, %edi              #  10    0x69c5f  3      
  subl $0x1, %edx              #  11    0x69c62  3      
  testb $0x3, %dil             #  12    0x69c65  4      
  je .L_69ce0                  #  13    0x69c69  6      
  nop                          #  14    0x69c6f  1      
.L_69c80:                      #        0x69c70  0      
  testl %edx, %edx             #  15    0x69c70  2      
  jne .L_69c60                 #  16    0x69c72  6      
  nop                          #  17    0x69c78  1      
  nop                          #  18    0x69c79  1      
.L_69ca0:                      #        0x69c7a  0      
  xorl %eax, %eax              #  19    0x69c7a  2      
  popq %r11                    #  20    0x69c7c  3      
  andl $0xffffffe0, %r11d      #  21    0x69c7f  7      
  addq %r15, %r11              #  22    0x69c86  3      
  jmpq %r11                    #  23    0x69c89  3      
  nop                          #  24    0x69c8c  1      
  nop                          #  25    0x69c8d  1      
.L_69cc0:                      #        0x69c8e  0      
  movq %rdi, %rax              #  26    0x69c8e  3      
  popq %r11                    #  27    0x69c91  3      
  andl $0xffffffe0, %r11d      #  28    0x69c94  7      
  addq %r15, %r11              #  29    0x69c9b  3      
  jmpq %r11                    #  30    0x69c9e  3      
  xchgw %ax, %ax               #  31    0x69ca1  3      
  nop                          #  32    0x69ca4  1      
.L_69ce0:                      #        0x69ca5  0      
  cmpl $0x3, %edx              #  33    0x69ca5  3      
  ja .L_69d60                  #  34    0x69ca8  6      
  nop                          #  35    0x69cae  1      
  nop                          #  36    0x69caf  1      
.L_69d00:                      #        0x69cb0  0      
  testl %edx, %edx             #  37    0x69cb0  2      
  je .L_69ca0                  #  38    0x69cb2  6      
  movl %edi, %edi              #  39    0x69cb8  2      
  cmpb %sil, (%r15,%rdi,1)     #  40    0x69cba  4      
  je .L_69cc0                  #  41    0x69cbe  6      
  subl $0x1, %edx              #  42    0x69cc4  3      
  jmpq .L_69d40                #  43    0x69cc7  5      
  nop                          #  44    0x69ccc  1      
.L_69d20:                      #        0x69ccd  0      
  addl $0x1, %edi              #  45    0x69ccd  3      
  subl $0x1, %edx              #  46    0x69cd0  3      
  movl %edi, %edi              #  47    0x69cd3  2      
  cmpb %sil, (%r15,%rdi,1)     #  48    0x69cd5  4      
  je .L_69cc0                  #  49    0x69cd9  6      
  nop                          #  50    0x69cdf  1      
  nop                          #  51    0x69ce0  1      
.L_69d40:                      #        0x69ce1  0      
  testl %edx, %edx             #  52    0x69ce1  2      
  jne .L_69d20                 #  53    0x69ce3  6      
  jmpq .L_69ca0                #  54    0x69ce9  5      
  nop                          #  55    0x69cee  1      
  nop                          #  56    0x69cef  1      
.L_69d60:                      #        0x69cf0  0      
  movzbl %sil, %ecx            #  57    0x69cf0  4      
  movl %ecx, %eax              #  58    0x69cf4  2      
  shll $0x8, %eax              #  59    0x69cf6  3      
  orl %ecx, %eax               #  60    0x69cf9  2      
  movl %eax, %r8d              #  61    0x69cfb  3      
  shll $0x10, %r8d             #  62    0x69cfe  4      
  orl %eax, %r8d               #  63    0x69d02  3      
  nop                          #  64    0x69d05  1      
.L_69d80:                      #        0x69d06  0      
  movl %edi, %edi              #  65    0x69d06  2      
  movl (%r15,%rdi,1), %ecx     #  66    0x69d08  4      
  xorl %r8d, %ecx              #  67    0x69d0c  3      
  leal -0x1010101(%rcx), %eax  #  68    0x69d0f  6      
  notl %ecx                    #  69    0x69d15  2      
  andl %ecx, %eax              #  70    0x69d17  2      
  testl $0x80808080, %eax      #  71    0x69d19  5      
  jne .L_69d00                 #  72    0x69d1e  6      
  xchgw %ax, %ax               #  73    0x69d24  3      
  subl $0x4, %edx              #  74    0x69d27  3      
  addl $0x4, %edi              #  75    0x69d2a  3      
  cmpl $0x3, %edx              #  76    0x69d2d  3      
  ja .L_69d80                  #  77    0x69d30  6      
  jmpq .L_69d00                #  78    0x69d36  5      
  nop                          #  79    0x69d3b  1      
  nop                          #  80    0x69d3c  1      
  nop                          #  81    0x69d3d  1      
  nop                          #  82    0x69d3e  1      
  nop                          #  83    0x69d3f  1      
  nop                          #  84    0x69d40  1      
  nop                          #  85    0x69d41  1      
  nop                          #  86    0x69d42  1      
  nop                          #  87    0x69d43  1      
  nop                          #  88    0x69d44  1      
  nop                          #  89    0x69d45  1      
  nop                          #  90    0x69d46  1      
  nop                          #  91    0x69d47  1      
  nop                          #  92    0x69d48  1      
  nop                          #  93    0x69d49  1      
  nop                          #  94    0x69d4a  1      
                                                        
.size memchr, .-memchr

