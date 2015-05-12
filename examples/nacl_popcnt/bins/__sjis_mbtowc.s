  .text
  .globl __sjis_mbtowc
  .type __sjis_mbtowc, @function

#! file-offset 0x7dc00
#! rip-offset  0x7dc00
#! capacity    448 bytes

# Text                           #  Line  RIP      Bytes  
.__sjis_mbtowc:                  #        0x7dc00  0      
  movl %esi, %esi                #  1     0x7dc00  2      
  leal -0x4(%rsp), %eax          #  2     0x7dc02  4      
  movl %edx, %edx                #  3     0x7dc06  2      
  testq %rsi, %rsi               #  4     0x7dc08  3      
  movl %edi, %edi                #  5     0x7dc0b  2      
  movl %r9d, %r9d                #  6     0x7dc0d  3      
  cmoveq %rax, %rsi              #  7     0x7dc10  4      
  xorl %eax, %eax                #  8     0x7dc14  2      
  testq %rdx, %rdx               #  9     0x7dc16  3      
  jne .L_7dc40                   #  10    0x7dc19  6      
  nop                            #  11    0x7dc1f  1      
.L_7dc20:                        #        0x7dc20  0      
  popq %r11                      #  12    0x7dc20  3      
  andl $0xffffffe0, %r11d        #  13    0x7dc23  7      
  addq %r15, %r11                #  14    0x7dc2a  3      
  jmpq %r11                      #  15    0x7dc2d  3      
  nop                            #  16    0x7dc30  1      
  nop                            #  17    0x7dc31  1      
.L_7dc40:                        #        0x7dc32  0      
  testl %ecx, %ecx               #  18    0x7dc32  2      
  je .L_7dd20                    #  19    0x7dc34  6      
  movl %edx, %edx                #  20    0x7dc3a  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7dc3c  5      
  movl %r9d, %r9d                #  22    0x7dc41  3      
  movl (%r15,%r9,1), %eax        #  23    0x7dc44  4      
  testl %eax, %eax               #  24    0x7dc48  2      
  movzbl %r10b, %r8d             #  25    0x7dc4a  4      
  nop                            #  26    0x7dc4e  1      
  jne .L_7dd40                   #  27    0x7dc4f  6      
  leal -0xe0(%r8), %eax          #  28    0x7dc55  7      
  cmpl $0xf, %eax                #  29    0x7dc5c  3      
  jbe .L_7dca0                   #  30    0x7dc5f  6      
  leal -0x81(%r8), %eax          #  31    0x7dc65  7      
  cmpl $0x1e, %eax               #  32    0x7dc6c  3      
  nop                            #  33    0x7dc6f  1      
  ja .L_7dd60                    #  34    0x7dc70  6      
  nop                            #  35    0x7dc76  1      
  nop                            #  36    0x7dc77  1      
.L_7dca0:                        #        0x7dc78  0      
  cmpl $0x1, %ecx                #  37    0x7dc78  3      
  movl %r9d, %r9d                #  38    0x7dc7b  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7dc7e  5      
  movl %r9d, %r9d                #  40    0x7dc83  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7dc86  8      
  jbe .L_7dd20                   #  42    0x7dc8e  6      
  movl %edx, %edx                #  43    0x7dc94  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  44    0x7dc96  6      
  movl $0x2, %eax                #  45    0x7dc9c  5      
  nop                            #  46    0x7dca1  1      
  nop                            #  47    0x7dca2  1      
.L_7dce0:                        #        0x7dca3  0      
  leal -0x80(%r8), %edx          #  48    0x7dca3  4      
  cmpl $0x7c, %edx               #  49    0x7dca7  3      
  jbe .L_7dd80                   #  50    0x7dcaa  6      
  leal -0x40(%r8), %edx          #  51    0x7dcb0  4      
  cmpl $0x3e, %edx               #  52    0x7dcb4  3      
  jbe .L_7dd80                   #  53    0x7dcb7  6      
  nop                            #  54    0x7dcbd  1      
  movl %edi, %edi                #  55    0x7dcbe  2      
  movl $0x54, (%r15,%rdi,1)      #  56    0x7dcc0  8      
  movl $0xffffffff, %eax         #  57    0x7dcc8  5      
  popq %r11                      #  58    0x7dccd  3      
  andl $0xffffffe0, %r11d        #  59    0x7dcd0  7      
  addq %r15, %r11                #  60    0x7dcd7  3      
  jmpq %r11                      #  61    0x7dcda  3      
  nop                            #  62    0x7dcdd  1      
.L_7dd20:                        #        0x7dcde  0      
  movl $0xfffffffe, %eax         #  63    0x7dcde  5      
  jmpq .L_7dc20                  #  64    0x7dce3  5      
  nop                            #  65    0x7dce8  1      
  nop                            #  66    0x7dce9  1      
.L_7dd40:                        #        0x7dcea  0      
  cmpl $0x1, %eax                #  67    0x7dcea  3      
  je .L_7dce0                    #  68    0x7dced  6      
  nop                            #  69    0x7dcf3  1      
  nop                            #  70    0x7dcf4  1      
.L_7dd60:                        #        0x7dcf5  0      
  xorl %eax, %eax                #  71    0x7dcf5  2      
  movl %esi, %esi                #  72    0x7dcf7  2      
  movl %r8d, (%r15,%rsi,1)       #  73    0x7dcf9  4      
  movl %edx, %edx                #  74    0x7dcfd  2      
  cmpb $0x0, (%r15,%rdx,1)       #  75    0x7dcff  5      
  setne %al                      #  76    0x7dd04  3      
  popq %r11                      #  77    0x7dd07  3      
  andl $0xffffffe0, %r11d        #  78    0x7dd0a  7      
  addq %r15, %r11                #  79    0x7dd11  3      
  jmpq %r11                      #  80    0x7dd14  3      
  xchgw %ax, %ax                 #  81    0x7dd17  3      
.L_7dd80:                        #        0x7dd1a  0      
  movl %r9d, %r9d                #  82    0x7dd1a  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  83    0x7dd1d  6      
  movl %r9d, %r9d                #  84    0x7dd23  3      
  movl $0x0, (%r15,%r9,1)        #  85    0x7dd26  8      
  shll $0x8, %edx                #  86    0x7dd2e  3      
  leal (%r8,%rdx,1), %edx        #  87    0x7dd31  4      
  nop                            #  88    0x7dd35  1      
  movl %esi, %esi                #  89    0x7dd36  2      
  movl %edx, (%r15,%rsi,1)       #  90    0x7dd38  4      
  popq %r11                      #  91    0x7dd3c  3      
  andl $0xffffffe0, %r11d        #  92    0x7dd3f  7      
  addq %r15, %r11                #  93    0x7dd46  3      
  jmpq %r11                      #  94    0x7dd49  3      
  nop                            #  95    0x7dd4c  1      
                                                          
.size __sjis_mbtowc, .-__sjis_mbtowc

