  .text
  .globl __eucjp_mbtowc
  .type __eucjp_mbtowc, @function

#! file-offset 0x7ddc0
#! rip-offset  0x7ddc0
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__eucjp_mbtowc:                 #        0x7ddc0  0      
  movl %esi, %esi                #  1     0x7ddc0  2      
  leal -0x4(%rsp), %eax          #  2     0x7ddc2  4      
  movl %edx, %edx                #  3     0x7ddc6  2      
  testq %rsi, %rsi               #  4     0x7ddc8  3      
  movl %edi, %edi                #  5     0x7ddcb  2      
  movl %r9d, %r9d                #  6     0x7ddcd  3      
  cmoveq %rax, %rsi              #  7     0x7ddd0  4      
  xorl %eax, %eax                #  8     0x7ddd4  2      
  testq %rdx, %rdx               #  9     0x7ddd6  3      
  jne .L_7de00                   #  10    0x7ddd9  6      
  nop                            #  11    0x7dddf  1      
.L_7dde0:                        #        0x7dde0  0      
  popq %r11                      #  12    0x7dde0  3      
  andl $0xffffffe0, %r11d        #  13    0x7dde3  7      
  addq %r15, %r11                #  14    0x7ddea  3      
  jmpq %r11                      #  15    0x7dded  3      
  nop                            #  16    0x7ddf0  1      
  nop                            #  17    0x7ddf1  1      
.L_7de00:                        #        0x7ddf2  0      
  testl %ecx, %ecx               #  18    0x7ddf2  2      
  je .L_7df00                    #  19    0x7ddf4  6      
  movl %edx, %edx                #  20    0x7ddfa  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7ddfc  5      
  movl %r9d, %r9d                #  22    0x7de01  3      
  movl (%r15,%r9,1), %eax        #  23    0x7de04  4      
  testl %eax, %eax               #  24    0x7de08  2      
  movzbl %r10b, %r8d             #  25    0x7de0a  4      
  nop                            #  26    0x7de0e  1      
  jne .L_7df20                   #  27    0x7de0f  6      
  leal -0xa1(%r8), %eax          #  28    0x7de15  7      
  cmpl $0x5d, %eax               #  29    0x7de1c  3      
  jbe .L_7de60                   #  30    0x7de1f  6      
  leal -0x8e(%r8), %eax          #  31    0x7de25  7      
  cmpl $0x1, %eax                #  32    0x7de2c  3      
  nop                            #  33    0x7de2f  1      
  ja .L_7df40                    #  34    0x7de30  6      
  nop                            #  35    0x7de36  1      
  nop                            #  36    0x7de37  1      
.L_7de60:                        #        0x7de38  0      
  cmpl $0x1, %ecx                #  37    0x7de38  3      
  movl %r9d, %r9d                #  38    0x7de3b  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7de3e  5      
  movl %r9d, %r9d                #  40    0x7de43  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7de46  8      
  jbe .L_7df00                   #  42    0x7de4e  6      
  nop                            #  43    0x7de54  1      
  movl %edx, %edx                #  44    0x7de55  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  45    0x7de57  6      
  movl $0x2, %eax                #  46    0x7de5d  5      
  nop                            #  47    0x7de62  1      
  nop                            #  48    0x7de63  1      
.L_7dea0:                        #        0x7de64  0      
  leal -0xa1(%r8), %r10d         #  49    0x7de64  7      
  cmpl $0x5d, %r10d              #  50    0x7de6b  4      
  ja .L_7dfe0                    #  51    0x7de6f  6      
  movl %r9d, %r9d                #  52    0x7de75  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  53    0x7de78  6      
  cmpb $0x8f, %r10b              #  54    0x7de7e  4      
  xchgw %ax, %ax                 #  55    0x7de82  3      
  je .L_7e000                    #  56    0x7de85  6      
  movzbl %r10b, %edx             #  57    0x7de8b  4      
  movl %r9d, %r9d                #  58    0x7de8f  3      
  movl $0x0, (%r15,%r9,1)        #  59    0x7de92  8      
  shll $0x8, %edx                #  60    0x7de9a  3      
  leal (%r8,%rdx,1), %edx        #  61    0x7de9d  4      
  nop                            #  62    0x7dea1  1      
  movl %esi, %esi                #  63    0x7dea2  2      
  movl %edx, (%r15,%rsi,1)       #  64    0x7dea4  4      
  popq %r11                      #  65    0x7dea8  3      
  andl $0xffffffe0, %r11d        #  66    0x7deab  7      
  addq %r15, %r11                #  67    0x7deb2  3      
  jmpq %r11                      #  68    0x7deb5  3      
  nop                            #  69    0x7deb8  1      
.L_7df00:                        #        0x7deb9  0      
  movl $0xfffffffe, %eax         #  70    0x7deb9  5      
  jmpq .L_7dde0                  #  71    0x7debe  5      
  nop                            #  72    0x7dec3  1      
  nop                            #  73    0x7dec4  1      
.L_7df20:                        #        0x7dec5  0      
  cmpl $0x1, %eax                #  74    0x7dec5  3      
  je .L_7dea0                    #  75    0x7dec8  6      
  cmpl $0x2, %eax                #  76    0x7dece  3      
  je .L_7df60                    #  77    0x7ded1  6      
  nop                            #  78    0x7ded7  1      
  nop                            #  79    0x7ded8  1      
.L_7df40:                        #        0x7ded9  0      
  xorl %eax, %eax                #  80    0x7ded9  2      
  movl %esi, %esi                #  81    0x7dedb  2      
  movl %r8d, (%r15,%rsi,1)       #  82    0x7dedd  4      
  movl %edx, %edx                #  83    0x7dee1  2      
  cmpb $0x0, (%r15,%rdx,1)       #  84    0x7dee3  5      
  setne %al                      #  85    0x7dee8  3      
  popq %r11                      #  86    0x7deeb  3      
  andl $0xffffffe0, %r11d        #  87    0x7deee  7      
  addq %r15, %r11                #  88    0x7def5  3      
  jmpq %r11                      #  89    0x7def8  3      
  xchgw %ax, %ax                 #  90    0x7defb  3      
.L_7df60:                        #        0x7defe  0      
  movb $0x1, %al                 #  91    0x7defe  2      
  nop                            #  92    0x7df00  1      
  nop                            #  93    0x7df01  1      
.L_7df80:                        #        0x7df02  0      
  leal -0xa1(%r8), %edx          #  94    0x7df02  7      
  cmpl $0x5d, %edx               #  95    0x7df09  3      
  ja .L_7dfe0                    #  96    0x7df0c  6      
  movl %r9d, %r9d                #  97    0x7df12  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  98    0x7df15  6      
  andl $0x7f, %r8d               #  99    0x7df1b  4      
  nop                            #  100   0x7df1f  1      
  movl %r9d, %r9d                #  101   0x7df20  3      
  movl $0x0, (%r15,%r9,1)        #  102   0x7df23  8      
  shll $0x8, %edx                #  103   0x7df2b  3      
  leal (%r8,%rdx,1), %edx        #  104   0x7df2e  4      
  movl %esi, %esi                #  105   0x7df32  2      
  movl %edx, (%r15,%rsi,1)       #  106   0x7df34  4      
  popq %r11                      #  107   0x7df38  3      
  nop                            #  108   0x7df3b  1      
  andl $0xffffffe0, %r11d        #  109   0x7df3c  7      
  addq %r15, %r11                #  110   0x7df43  3      
  jmpq %r11                      #  111   0x7df46  3      
  nop                            #  112   0x7df49  1      
  nop                            #  113   0x7df4a  1      
.L_7dfe0:                        #        0x7df4b  0      
  movl %edi, %edi                #  114   0x7df4b  2      
  movl $0x54, (%r15,%rdi,1)      #  115   0x7df4d  8      
  movl $0xffffffff, %eax         #  116   0x7df55  5      
  popq %r11                      #  117   0x7df5a  3      
  andl $0xffffffe0, %r11d        #  118   0x7df5d  7      
  addq %r15, %r11                #  119   0x7df64  3      
  jmpq %r11                      #  120   0x7df67  3      
  nop                            #  121   0x7df6a  1      
.L_7e000:                        #        0x7df6b  0      
  cmpl %eax, %ecx                #  122   0x7df6b  2      
  movl %r9d, %r9d                #  123   0x7df6d  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  124   0x7df70  5      
  movl %r9d, %r9d                #  125   0x7df75  3      
  movl $0x2, (%r15,%r9,1)        #  126   0x7df78  8      
  jbe .L_7df00                   #  127   0x7df80  6      
  leal (%rax,%rdx,1), %edx       #  128   0x7df86  3      
  xchgw %ax, %ax                 #  129   0x7df89  3      
  addl $0x1, %eax                #  130   0x7df8c  3      
  movl %edx, %edx                #  131   0x7df8f  2      
  movzbl (%r15,%rdx,1), %r8d     #  132   0x7df91  5      
  jmpq .L_7df80                  #  133   0x7df96  5      
  xchgw %ax, %ax                 #  134   0x7df9b  3      
  nop                            #  135   0x7df9e  1      
                                                          
.size __eucjp_mbtowc, .-__eucjp_mbtowc

