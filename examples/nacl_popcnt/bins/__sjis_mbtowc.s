  .text
  .globl __sjis_mbtowc
  .type __sjis_mbtowc, @function

#! file-offset 0x7dbe0
#! rip-offset  0x7dbe0
#! capacity    448 bytes

# Text                           #  Line  RIP      Bytes  
.__sjis_mbtowc:                  #        0x7dbe0  0      
  movl %esi, %esi                #  1     0x7dbe0  2      
  leal -0x4(%rsp), %eax          #  2     0x7dbe2  4      
  movl %edx, %edx                #  3     0x7dbe6  2      
  testq %rsi, %rsi               #  4     0x7dbe8  3      
  movl %edi, %edi                #  5     0x7dbeb  2      
  movl %r9d, %r9d                #  6     0x7dbed  3      
  cmoveq %rax, %rsi              #  7     0x7dbf0  4      
  xorl %eax, %eax                #  8     0x7dbf4  2      
  testq %rdx, %rdx               #  9     0x7dbf6  3      
  jne .L_7dc20                   #  10    0x7dbf9  6      
  nop                            #  11    0x7dbff  1      
.L_7dc00:                        #        0x7dc00  0      
  popq %r11                      #  12    0x7dc00  3      
  andl $0xffffffe0, %r11d        #  13    0x7dc03  7      
  addq %r15, %r11                #  14    0x7dc0a  3      
  jmpq %r11                      #  15    0x7dc0d  3      
  nop                            #  16    0x7dc10  1      
  nop                            #  17    0x7dc11  1      
.L_7dc20:                        #        0x7dc12  0      
  testl %ecx, %ecx               #  18    0x7dc12  2      
  je .L_7dd00                    #  19    0x7dc14  6      
  movl %edx, %edx                #  20    0x7dc1a  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7dc1c  5      
  movl %r9d, %r9d                #  22    0x7dc21  3      
  movl (%r15,%r9,1), %eax        #  23    0x7dc24  4      
  testl %eax, %eax               #  24    0x7dc28  2      
  movzbl %r10b, %r8d             #  25    0x7dc2a  4      
  nop                            #  26    0x7dc2e  1      
  jne .L_7dd20                   #  27    0x7dc2f  6      
  leal -0xe0(%r8), %eax          #  28    0x7dc35  7      
  cmpl $0xf, %eax                #  29    0x7dc3c  3      
  jbe .L_7dc80                   #  30    0x7dc3f  6      
  leal -0x81(%r8), %eax          #  31    0x7dc45  7      
  cmpl $0x1e, %eax               #  32    0x7dc4c  3      
  nop                            #  33    0x7dc4f  1      
  ja .L_7dd40                    #  34    0x7dc50  6      
  nop                            #  35    0x7dc56  1      
  nop                            #  36    0x7dc57  1      
.L_7dc80:                        #        0x7dc58  0      
  cmpl $0x1, %ecx                #  37    0x7dc58  3      
  movl %r9d, %r9d                #  38    0x7dc5b  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7dc5e  5      
  movl %r9d, %r9d                #  40    0x7dc63  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7dc66  8      
  jbe .L_7dd00                   #  42    0x7dc6e  6      
  movl %edx, %edx                #  43    0x7dc74  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  44    0x7dc76  6      
  movl $0x2, %eax                #  45    0x7dc7c  5      
  nop                            #  46    0x7dc81  1      
  nop                            #  47    0x7dc82  1      
.L_7dcc0:                        #        0x7dc83  0      
  leal -0x80(%r8), %edx          #  48    0x7dc83  4      
  cmpl $0x7c, %edx               #  49    0x7dc87  3      
  jbe .L_7dd60                   #  50    0x7dc8a  6      
  leal -0x40(%r8), %edx          #  51    0x7dc90  4      
  cmpl $0x3e, %edx               #  52    0x7dc94  3      
  jbe .L_7dd60                   #  53    0x7dc97  6      
  nop                            #  54    0x7dc9d  1      
  movl %edi, %edi                #  55    0x7dc9e  2      
  movl $0x54, (%r15,%rdi,1)      #  56    0x7dca0  8      
  movl $0xffffffff, %eax         #  57    0x7dca8  5      
  popq %r11                      #  58    0x7dcad  3      
  andl $0xffffffe0, %r11d        #  59    0x7dcb0  7      
  addq %r15, %r11                #  60    0x7dcb7  3      
  jmpq %r11                      #  61    0x7dcba  3      
  nop                            #  62    0x7dcbd  1      
.L_7dd00:                        #        0x7dcbe  0      
  movl $0xfffffffe, %eax         #  63    0x7dcbe  5      
  jmpq .L_7dc00                  #  64    0x7dcc3  5      
  nop                            #  65    0x7dcc8  1      
  nop                            #  66    0x7dcc9  1      
.L_7dd20:                        #        0x7dcca  0      
  cmpl $0x1, %eax                #  67    0x7dcca  3      
  je .L_7dcc0                    #  68    0x7dccd  6      
  nop                            #  69    0x7dcd3  1      
  nop                            #  70    0x7dcd4  1      
.L_7dd40:                        #        0x7dcd5  0      
  xorl %eax, %eax                #  71    0x7dcd5  2      
  movl %esi, %esi                #  72    0x7dcd7  2      
  movl %r8d, (%r15,%rsi,1)       #  73    0x7dcd9  4      
  movl %edx, %edx                #  74    0x7dcdd  2      
  cmpb $0x0, (%r15,%rdx,1)       #  75    0x7dcdf  5      
  setne %al                      #  76    0x7dce4  3      
  popq %r11                      #  77    0x7dce7  3      
  andl $0xffffffe0, %r11d        #  78    0x7dcea  7      
  addq %r15, %r11                #  79    0x7dcf1  3      
  jmpq %r11                      #  80    0x7dcf4  3      
  xchgw %ax, %ax                 #  81    0x7dcf7  3      
.L_7dd60:                        #        0x7dcfa  0      
  movl %r9d, %r9d                #  82    0x7dcfa  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  83    0x7dcfd  6      
  movl %r9d, %r9d                #  84    0x7dd03  3      
  movl $0x0, (%r15,%r9,1)        #  85    0x7dd06  8      
  shll $0x8, %edx                #  86    0x7dd0e  3      
  leal (%r8,%rdx,1), %edx        #  87    0x7dd11  4      
  nop                            #  88    0x7dd15  1      
  movl %esi, %esi                #  89    0x7dd16  2      
  movl %edx, (%r15,%rsi,1)       #  90    0x7dd18  4      
  popq %r11                      #  91    0x7dd1c  3      
  andl $0xffffffe0, %r11d        #  92    0x7dd1f  7      
  addq %r15, %r11                #  93    0x7dd26  3      
  jmpq %r11                      #  94    0x7dd29  3      
  nop                            #  95    0x7dd2c  1      
                                                          
.size __sjis_mbtowc, .-__sjis_mbtowc

