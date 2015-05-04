  .text
  .globl __sjis_mbtowc
  .type __sjis_mbtowc, @function

#! file-offset 0x7dc80
#! rip-offset  0x7dc80
#! capacity    448 bytes

# Text                           #  Line  RIP      Bytes  
.__sjis_mbtowc:                  #        0x7dc80  0      
  movl %esi, %esi                #  1     0x7dc80  2      
  leal -0x4(%rsp), %eax          #  2     0x7dc82  4      
  movl %edx, %edx                #  3     0x7dc86  2      
  testq %rsi, %rsi               #  4     0x7dc88  3      
  movl %edi, %edi                #  5     0x7dc8b  2      
  movl %r9d, %r9d                #  6     0x7dc8d  3      
  cmoveq %rax, %rsi              #  7     0x7dc90  4      
  xorl %eax, %eax                #  8     0x7dc94  2      
  testq %rdx, %rdx               #  9     0x7dc96  3      
  jne .L_7dcc0                   #  10    0x7dc99  6      
  nop                            #  11    0x7dc9f  1      
.L_7dca0:                        #        0x7dca0  0      
  popq %r11                      #  12    0x7dca0  3      
  andl $0xffffffe0, %r11d        #  13    0x7dca3  7      
  addq %r15, %r11                #  14    0x7dcaa  3      
  jmpq %r11                      #  15    0x7dcad  3      
  nop                            #  16    0x7dcb0  1      
  nop                            #  17    0x7dcb1  1      
.L_7dcc0:                        #        0x7dcb2  0      
  testl %ecx, %ecx               #  18    0x7dcb2  2      
  je .L_7dda0                    #  19    0x7dcb4  6      
  movl %edx, %edx                #  20    0x7dcba  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7dcbc  5      
  movl %r9d, %r9d                #  22    0x7dcc1  3      
  movl (%r15,%r9,1), %eax        #  23    0x7dcc4  4      
  testl %eax, %eax               #  24    0x7dcc8  2      
  movzbl %r10b, %r8d             #  25    0x7dcca  4      
  nop                            #  26    0x7dcce  1      
  jne .L_7ddc0                   #  27    0x7dccf  6      
  leal -0xe0(%r8), %eax          #  28    0x7dcd5  7      
  cmpl $0xf, %eax                #  29    0x7dcdc  3      
  jbe .L_7dd20                   #  30    0x7dcdf  6      
  leal -0x81(%r8), %eax          #  31    0x7dce5  7      
  cmpl $0x1e, %eax               #  32    0x7dcec  3      
  nop                            #  33    0x7dcef  1      
  ja .L_7dde0                    #  34    0x7dcf0  6      
  nop                            #  35    0x7dcf6  1      
  nop                            #  36    0x7dcf7  1      
.L_7dd20:                        #        0x7dcf8  0      
  cmpl $0x1, %ecx                #  37    0x7dcf8  3      
  movl %r9d, %r9d                #  38    0x7dcfb  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7dcfe  5      
  movl %r9d, %r9d                #  40    0x7dd03  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7dd06  8      
  jbe .L_7dda0                   #  42    0x7dd0e  6      
  movl %edx, %edx                #  43    0x7dd14  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  44    0x7dd16  6      
  movl $0x2, %eax                #  45    0x7dd1c  5      
  nop                            #  46    0x7dd21  1      
  nop                            #  47    0x7dd22  1      
.L_7dd60:                        #        0x7dd23  0      
  leal -0x80(%r8), %edx          #  48    0x7dd23  4      
  cmpl $0x7c, %edx               #  49    0x7dd27  3      
  jbe .L_7de00                   #  50    0x7dd2a  6      
  leal -0x40(%r8), %edx          #  51    0x7dd30  4      
  cmpl $0x3e, %edx               #  52    0x7dd34  3      
  jbe .L_7de00                   #  53    0x7dd37  6      
  nop                            #  54    0x7dd3d  1      
  movl %edi, %edi                #  55    0x7dd3e  2      
  movl $0x54, (%r15,%rdi,1)      #  56    0x7dd40  8      
  movl $0xffffffff, %eax         #  57    0x7dd48  5      
  popq %r11                      #  58    0x7dd4d  3      
  andl $0xffffffe0, %r11d        #  59    0x7dd50  7      
  addq %r15, %r11                #  60    0x7dd57  3      
  jmpq %r11                      #  61    0x7dd5a  3      
  nop                            #  62    0x7dd5d  1      
.L_7dda0:                        #        0x7dd5e  0      
  movl $0xfffffffe, %eax         #  63    0x7dd5e  5      
  jmpq .L_7dca0                  #  64    0x7dd63  5      
  nop                            #  65    0x7dd68  1      
  nop                            #  66    0x7dd69  1      
.L_7ddc0:                        #        0x7dd6a  0      
  cmpl $0x1, %eax                #  67    0x7dd6a  3      
  je .L_7dd60                    #  68    0x7dd6d  6      
  nop                            #  69    0x7dd73  1      
  nop                            #  70    0x7dd74  1      
.L_7dde0:                        #        0x7dd75  0      
  xorl %eax, %eax                #  71    0x7dd75  2      
  movl %esi, %esi                #  72    0x7dd77  2      
  movl %r8d, (%r15,%rsi,1)       #  73    0x7dd79  4      
  movl %edx, %edx                #  74    0x7dd7d  2      
  cmpb $0x0, (%r15,%rdx,1)       #  75    0x7dd7f  5      
  setne %al                      #  76    0x7dd84  3      
  popq %r11                      #  77    0x7dd87  3      
  andl $0xffffffe0, %r11d        #  78    0x7dd8a  7      
  addq %r15, %r11                #  79    0x7dd91  3      
  jmpq %r11                      #  80    0x7dd94  3      
  xchgw %ax, %ax                 #  81    0x7dd97  3      
.L_7de00:                        #        0x7dd9a  0      
  movl %r9d, %r9d                #  82    0x7dd9a  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  83    0x7dd9d  6      
  movl %r9d, %r9d                #  84    0x7dda3  3      
  movl $0x0, (%r15,%r9,1)        #  85    0x7dda6  8      
  shll $0x8, %edx                #  86    0x7ddae  3      
  leal (%r8,%rdx,1), %edx        #  87    0x7ddb1  4      
  nop                            #  88    0x7ddb5  1      
  movl %esi, %esi                #  89    0x7ddb6  2      
  movl %edx, (%r15,%rsi,1)       #  90    0x7ddb8  4      
  popq %r11                      #  91    0x7ddbc  3      
  andl $0xffffffe0, %r11d        #  92    0x7ddbf  7      
  addq %r15, %r11                #  93    0x7ddc6  3      
  jmpq %r11                      #  94    0x7ddc9  3      
  nop                            #  95    0x7ddcc  1      
                                                          
.size __sjis_mbtowc, .-__sjis_mbtowc

