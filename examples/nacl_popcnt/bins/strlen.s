  .text
  .globl strlen
  .type strlen, @function

#! file-offset 0x6b760
#! rip-offset  0x6b760
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.strlen:                       #        0x6b760  0      
  movl %edi, %edi              #  1     0x6b760  2      
  testb $0x3, %dil             #  2     0x6b762  4      
  movq %rdi, %rdx              #  3     0x6b766  3      
  je .L_6b7e0                  #  4     0x6b769  6      
  xorl %eax, %eax              #  5     0x6b76f  2      
  movl %edi, %edi              #  6     0x6b771  2      
  cmpb $0x0, (%r15,%rdi,1)     #  7     0x6b773  5      
  jne .L_6b7a0                 #  8     0x6b778  6      
  jmpq .L_6b860                #  9     0x6b77e  5      
  nop                          #  10    0x6b783  1      
.L_6b780:                      #        0x6b784  0      
  movl %edx, %edx              #  11    0x6b784  2      
  cmpb $0x0, (%r15,%rdx,1)     #  12    0x6b786  5      
  je .L_6b880                  #  13    0x6b78b  6      
  nop                          #  14    0x6b791  1      
  nop                          #  15    0x6b792  1      
.L_6b7a0:                      #        0x6b793  0      
  addl $0x1, %edx              #  16    0x6b793  3      
  testb $0x3, %dl              #  17    0x6b796  3      
  jne .L_6b780                 #  18    0x6b799  6      
  jmpq .L_6b7e0                #  19    0x6b79f  5      
  nop                          #  20    0x6b7a4  1      
  nop                          #  21    0x6b7a5  1      
.L_6b7c0:                      #        0x6b7a6  0      
  addl $0x4, %edx              #  22    0x6b7a6  3      
  nop                          #  23    0x6b7a9  1      
  nop                          #  24    0x6b7aa  1      
.L_6b7e0:                      #        0x6b7ab  0      
  movl %edx, %edx              #  25    0x6b7ab  2      
  movl (%r15,%rdx,1), %ecx     #  26    0x6b7ad  4      
  leal -0x1010101(%rcx), %eax  #  27    0x6b7b1  6      
  notl %ecx                    #  28    0x6b7b7  2      
  andl %ecx, %eax              #  29    0x6b7b9  2      
  testl $0x80808080, %eax      #  30    0x6b7bb  5      
  je .L_6b7c0                  #  31    0x6b7c0  6      
  movl %edx, %edx              #  32    0x6b7c6  2      
  cmpb $0x0, (%r15,%rdx,1)     #  33    0x6b7c8  5      
  xchgw %ax, %ax               #  34    0x6b7cd  3      
  je .L_6b840                  #  35    0x6b7d0  6      
  nop                          #  36    0x6b7d6  1      
  nop                          #  37    0x6b7d7  1      
.L_6b820:                      #        0x6b7d8  0      
  addl $0x1, %edx              #  38    0x6b7d8  3      
  movl %edx, %edx              #  39    0x6b7db  2      
  cmpb $0x0, (%r15,%rdx,1)     #  40    0x6b7dd  5      
  jne .L_6b820                 #  41    0x6b7e2  6      
  nop                          #  42    0x6b7e8  1      
  nop                          #  43    0x6b7e9  1      
.L_6b840:                      #        0x6b7ea  0      
  movl %edx, %eax              #  44    0x6b7ea  2      
  subl %edi, %eax              #  45    0x6b7ec  2      
  nop                          #  46    0x6b7ee  1      
  nop                          #  47    0x6b7ef  1      
.L_6b860:                      #        0x6b7f0  0      
  popq %r11                    #  48    0x6b7f0  3      
  andl $0xffffffe0, %r11d      #  49    0x6b7f3  7      
  addq %r15, %r11              #  50    0x6b7fa  3      
  jmpq %r11                    #  51    0x6b7fd  3      
  nop                          #  52    0x6b800  1      
  nop                          #  53    0x6b801  1      
.L_6b880:                      #        0x6b802  0      
  movl %edx, %eax              #  54    0x6b802  2      
  subl %edi, %eax              #  55    0x6b804  2      
  popq %r11                    #  56    0x6b806  3      
  andl $0xffffffe0, %r11d      #  57    0x6b809  7      
  addq %r15, %r11              #  58    0x6b810  3      
  jmpq %r11                    #  59    0x6b813  3      
  nop                          #  60    0x6b816  1      
  nop                          #  61    0x6b817  1      
  nop                          #  62    0x6b818  1      
  nop                          #  63    0x6b819  1      
  nop                          #  64    0x6b81a  1      
  nop                          #  65    0x6b81b  1      
  nop                          #  66    0x6b81c  1      
  nop                          #  67    0x6b81d  1      
  nop                          #  68    0x6b81e  1      
  nop                          #  69    0x6b81f  1      
  nop                          #  70    0x6b820  1      
  nop                          #  71    0x6b821  1      
  nop                          #  72    0x6b822  1      
  nop                          #  73    0x6b823  1      
  nop                          #  74    0x6b824  1      
  nop                          #  75    0x6b825  1      
                                                        
.size strlen, .-strlen

