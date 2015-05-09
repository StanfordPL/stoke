  .text
  .globl __eucjp_mbtowc
  .type __eucjp_mbtowc, @function

#! file-offset 0x7dda0
#! rip-offset  0x7dda0
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__eucjp_mbtowc:                 #        0x7dda0  0      
  movl %esi, %esi                #  1     0x7dda0  2      
  leal -0x4(%rsp), %eax          #  2     0x7dda2  4      
  movl %edx, %edx                #  3     0x7dda6  2      
  testq %rsi, %rsi               #  4     0x7dda8  3      
  movl %edi, %edi                #  5     0x7ddab  2      
  movl %r9d, %r9d                #  6     0x7ddad  3      
  cmoveq %rax, %rsi              #  7     0x7ddb0  4      
  xorl %eax, %eax                #  8     0x7ddb4  2      
  testq %rdx, %rdx               #  9     0x7ddb6  3      
  jne .L_7dde0                   #  10    0x7ddb9  6      
  nop                            #  11    0x7ddbf  1      
.L_7ddc0:                        #        0x7ddc0  0      
  popq %r11                      #  12    0x7ddc0  3      
  andl $0xffffffe0, %r11d        #  13    0x7ddc3  7      
  addq %r15, %r11                #  14    0x7ddca  3      
  jmpq %r11                      #  15    0x7ddcd  3      
  nop                            #  16    0x7ddd0  1      
  nop                            #  17    0x7ddd1  1      
.L_7dde0:                        #        0x7ddd2  0      
  testl %ecx, %ecx               #  18    0x7ddd2  2      
  je .L_7dee0                    #  19    0x7ddd4  6      
  movl %edx, %edx                #  20    0x7ddda  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7dddc  5      
  movl %r9d, %r9d                #  22    0x7dde1  3      
  movl (%r15,%r9,1), %eax        #  23    0x7dde4  4      
  testl %eax, %eax               #  24    0x7dde8  2      
  movzbl %r10b, %r8d             #  25    0x7ddea  4      
  nop                            #  26    0x7ddee  1      
  jne .L_7df00                   #  27    0x7ddef  6      
  leal -0xa1(%r8), %eax          #  28    0x7ddf5  7      
  cmpl $0x5d, %eax               #  29    0x7ddfc  3      
  jbe .L_7de40                   #  30    0x7ddff  6      
  leal -0x8e(%r8), %eax          #  31    0x7de05  7      
  cmpl $0x1, %eax                #  32    0x7de0c  3      
  nop                            #  33    0x7de0f  1      
  ja .L_7df20                    #  34    0x7de10  6      
  nop                            #  35    0x7de16  1      
  nop                            #  36    0x7de17  1      
.L_7de40:                        #        0x7de18  0      
  cmpl $0x1, %ecx                #  37    0x7de18  3      
  movl %r9d, %r9d                #  38    0x7de1b  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7de1e  5      
  movl %r9d, %r9d                #  40    0x7de23  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7de26  8      
  jbe .L_7dee0                   #  42    0x7de2e  6      
  nop                            #  43    0x7de34  1      
  movl %edx, %edx                #  44    0x7de35  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  45    0x7de37  6      
  movl $0x2, %eax                #  46    0x7de3d  5      
  nop                            #  47    0x7de42  1      
  nop                            #  48    0x7de43  1      
.L_7de80:                        #        0x7de44  0      
  leal -0xa1(%r8), %r10d         #  49    0x7de44  7      
  cmpl $0x5d, %r10d              #  50    0x7de4b  4      
  ja .L_7dfc0                    #  51    0x7de4f  6      
  movl %r9d, %r9d                #  52    0x7de55  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  53    0x7de58  6      
  cmpb $0x8f, %r10b              #  54    0x7de5e  4      
  xchgw %ax, %ax                 #  55    0x7de62  3      
  je .L_7dfe0                    #  56    0x7de65  6      
  movzbl %r10b, %edx             #  57    0x7de6b  4      
  movl %r9d, %r9d                #  58    0x7de6f  3      
  movl $0x0, (%r15,%r9,1)        #  59    0x7de72  8      
  shll $0x8, %edx                #  60    0x7de7a  3      
  leal (%r8,%rdx,1), %edx        #  61    0x7de7d  4      
  nop                            #  62    0x7de81  1      
  movl %esi, %esi                #  63    0x7de82  2      
  movl %edx, (%r15,%rsi,1)       #  64    0x7de84  4      
  popq %r11                      #  65    0x7de88  3      
  andl $0xffffffe0, %r11d        #  66    0x7de8b  7      
  addq %r15, %r11                #  67    0x7de92  3      
  jmpq %r11                      #  68    0x7de95  3      
  nop                            #  69    0x7de98  1      
.L_7dee0:                        #        0x7de99  0      
  movl $0xfffffffe, %eax         #  70    0x7de99  5      
  jmpq .L_7ddc0                  #  71    0x7de9e  5      
  nop                            #  72    0x7dea3  1      
  nop                            #  73    0x7dea4  1      
.L_7df00:                        #        0x7dea5  0      
  cmpl $0x1, %eax                #  74    0x7dea5  3      
  je .L_7de80                    #  75    0x7dea8  6      
  cmpl $0x2, %eax                #  76    0x7deae  3      
  je .L_7df40                    #  77    0x7deb1  6      
  nop                            #  78    0x7deb7  1      
  nop                            #  79    0x7deb8  1      
.L_7df20:                        #        0x7deb9  0      
  xorl %eax, %eax                #  80    0x7deb9  2      
  movl %esi, %esi                #  81    0x7debb  2      
  movl %r8d, (%r15,%rsi,1)       #  82    0x7debd  4      
  movl %edx, %edx                #  83    0x7dec1  2      
  cmpb $0x0, (%r15,%rdx,1)       #  84    0x7dec3  5      
  setne %al                      #  85    0x7dec8  3      
  popq %r11                      #  86    0x7decb  3      
  andl $0xffffffe0, %r11d        #  87    0x7dece  7      
  addq %r15, %r11                #  88    0x7ded5  3      
  jmpq %r11                      #  89    0x7ded8  3      
  xchgw %ax, %ax                 #  90    0x7dedb  3      
.L_7df40:                        #        0x7dede  0      
  movb $0x1, %al                 #  91    0x7dede  2      
  nop                            #  92    0x7dee0  1      
  nop                            #  93    0x7dee1  1      
.L_7df60:                        #        0x7dee2  0      
  leal -0xa1(%r8), %edx          #  94    0x7dee2  7      
  cmpl $0x5d, %edx               #  95    0x7dee9  3      
  ja .L_7dfc0                    #  96    0x7deec  6      
  movl %r9d, %r9d                #  97    0x7def2  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  98    0x7def5  6      
  andl $0x7f, %r8d               #  99    0x7defb  4      
  nop                            #  100   0x7deff  1      
  movl %r9d, %r9d                #  101   0x7df00  3      
  movl $0x0, (%r15,%r9,1)        #  102   0x7df03  8      
  shll $0x8, %edx                #  103   0x7df0b  3      
  leal (%r8,%rdx,1), %edx        #  104   0x7df0e  4      
  movl %esi, %esi                #  105   0x7df12  2      
  movl %edx, (%r15,%rsi,1)       #  106   0x7df14  4      
  popq %r11                      #  107   0x7df18  3      
  nop                            #  108   0x7df1b  1      
  andl $0xffffffe0, %r11d        #  109   0x7df1c  7      
  addq %r15, %r11                #  110   0x7df23  3      
  jmpq %r11                      #  111   0x7df26  3      
  nop                            #  112   0x7df29  1      
  nop                            #  113   0x7df2a  1      
.L_7dfc0:                        #        0x7df2b  0      
  movl %edi, %edi                #  114   0x7df2b  2      
  movl $0x54, (%r15,%rdi,1)      #  115   0x7df2d  8      
  movl $0xffffffff, %eax         #  116   0x7df35  5      
  popq %r11                      #  117   0x7df3a  3      
  andl $0xffffffe0, %r11d        #  118   0x7df3d  7      
  addq %r15, %r11                #  119   0x7df44  3      
  jmpq %r11                      #  120   0x7df47  3      
  nop                            #  121   0x7df4a  1      
.L_7dfe0:                        #        0x7df4b  0      
  cmpl %eax, %ecx                #  122   0x7df4b  2      
  movl %r9d, %r9d                #  123   0x7df4d  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  124   0x7df50  5      
  movl %r9d, %r9d                #  125   0x7df55  3      
  movl $0x2, (%r15,%r9,1)        #  126   0x7df58  8      
  jbe .L_7dee0                   #  127   0x7df60  6      
  leal (%rax,%rdx,1), %edx       #  128   0x7df66  3      
  xchgw %ax, %ax                 #  129   0x7df69  3      
  addl $0x1, %eax                #  130   0x7df6c  3      
  movl %edx, %edx                #  131   0x7df6f  2      
  movzbl (%r15,%rdx,1), %r8d     #  132   0x7df71  5      
  jmpq .L_7df60                  #  133   0x7df76  5      
  xchgw %ax, %ax                 #  134   0x7df7b  3      
  nop                            #  135   0x7df7e  1      
                                                          
.size __eucjp_mbtowc, .-__eucjp_mbtowc

