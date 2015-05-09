  .text
  .globl _fputwc_r
  .type _fputwc_r, @function

#! file-offset 0x87d20
#! rip-offset  0x87d20
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._fputwc_r:                              #        0x87d20  0      
  pushq %r14                             #  1     0x87d20  3      
  movl %edi, %edi                        #  2     0x87d23  2      
  pushq %r13                             #  3     0x87d25  3      
  pushq %r12                             #  4     0x87d28  3      
  movl %esi, %r12d                       #  5     0x87d2b  3      
  pushq %rbx                             #  6     0x87d2e  2      
  movl %edx, %ebx                        #  7     0x87d30  2      
  subl $0x28, %esp                       #  8     0x87d32  3      
  addq %r15, %rsp                        #  9     0x87d35  3      
  movl %ebx, %ebx                        #  10    0x87d38  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  11    0x87d3a  6      
  nop                                    #  12    0x87d40  1      
  movq %rdi, 0x8(%rsp)                   #  13    0x87d41  5      
  movswl %dx, %eax                       #  14    0x87d46  3      
  testb $0x2, %ah                        #  15    0x87d49  3      
  je .L_88020                            #  16    0x87d4c  6      
  nop                                    #  17    0x87d52  1      
.L_87d60:                                #        0x87d53  0      
  testb $0x20, %ah                       #  18    0x87d53  3      
  jne .L_87d80                           #  19    0x87d56  6      
  movl %ebx, %ebx                        #  20    0x87d5c  2      
  orl $0x2000, 0x78(%r15,%rbx,1)         #  21    0x87d5e  9      
  orb $0x20, %dh                         #  22    0x87d67  3      
  movl %ebx, %ebx                        #  23    0x87d6a  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  24    0x87d6c  6      
  nop                                    #  25    0x87d72  1      
.L_87d80:                                #        0x87d73  0      
  nop                                    #  26    0x87d73  1      
  nop                                    #  27    0x87d74  1      
  callq .__locale_mb_cur_max             #  28    0x87d75  5      
  cmpl $0x1, %eax                        #  29    0x87d7a  3      
  je .L_87fe0                            #  30    0x87d7d  6      
  nop                                    #  31    0x87d83  1      
  nop                                    #  32    0x87d84  1      
.L_87dc0:                                #        0x87d85  0      
  leal 0x10(%rsp), %r13d                 #  33    0x87d85  5      
  movl 0x8(%rsp), %edi                   #  34    0x87d8a  4      
  leal 0x70(%rbx), %ecx                  #  35    0x87d8e  3      
  movl %r12d, %edx                       #  36    0x87d91  3      
  movl %r13d, %esi                       #  37    0x87d94  3      
  nop                                    #  38    0x87d97  1      
  callq ._wcrtomb_r                      #  39    0x87d98  5      
  cmpl $0xffffffff, %eax                 #  40    0x87d9d  5      
  movl %eax, %r14d                       #  41    0x87da2  3      
  je .L_87f00                            #  42    0x87da5  6      
  testl %eax, %eax                       #  43    0x87dab  2      
  je .L_87f60                            #  44    0x87dad  6      
  nop                                    #  45    0x87db3  1      
.L_87e00:                                #        0x87db4  0      
  xorl %ecx, %ecx                        #  46    0x87db4  2      
  jmpq .L_87e60                          #  47    0x87db6  5      
  nop                                    #  48    0x87dbb  1      
  nop                                    #  49    0x87dbc  1      
.L_87e20:                                #        0x87dbd  0      
  movl %r13d, %edx                       #  50    0x87dbd  3      
  movl %ebx, %ebx                        #  51    0x87dc0  2      
  movl (%r15,%rbx,1), %eax               #  52    0x87dc2  4      
  movl %edx, %edx                        #  53    0x87dc6  2      
  movzbl (%r15,%rdx,1), %edx             #  54    0x87dc8  5      
  movl %eax, %eax                        #  55    0x87dcd  2      
  movb %dl, (%r15,%rax,1)                #  56    0x87dcf  4      
  movl %ebx, %ebx                        #  57    0x87dd3  2      
  addl $0x1, (%r15,%rbx,1)               #  58    0x87dd5  5      
  nop                                    #  59    0x87dda  1      
.L_87e40:                                #        0x87ddb  0      
  addl $0x1, %ecx                        #  60    0x87ddb  3      
  addl $0x1, %r13d                       #  61    0x87dde  4      
  cmpl %r14d, %ecx                       #  62    0x87de2  3      
  jae .L_87f60                           #  63    0x87de5  6      
  nop                                    #  64    0x87deb  1      
  nop                                    #  65    0x87dec  1      
.L_87e60:                                #        0x87ded  0      
  movl %ebx, %ebx                        #  66    0x87ded  2      
  movl 0x8(%r15,%rbx,1), %eax            #  67    0x87def  5      
  subl $0x1, %eax                        #  68    0x87df4  3      
  testl %eax, %eax                       #  69    0x87df7  2      
  movl %ebx, %ebx                        #  70    0x87df9  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  71    0x87dfb  5      
  jns .L_87e20                           #  72    0x87e00  6      
  movl %ebx, %ebx                        #  73    0x87e06  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  74    0x87e08  5      
  nop                                    #  75    0x87e0d  1      
  jl .L_87f80                            #  76    0x87e0e  6      
  movl %r13d, %edx                       #  77    0x87e14  3      
  movl %ebx, %ebx                        #  78    0x87e17  2      
  movl (%r15,%rbx,1), %eax               #  79    0x87e19  4      
  movl %edx, %edx                        #  80    0x87e1d  2      
  movzbl (%r15,%rdx,1), %edx             #  81    0x87e1f  5      
  movl %eax, %eax                        #  82    0x87e24  2      
  movb %dl, (%r15,%rax,1)                #  83    0x87e26  4      
  nop                                    #  84    0x87e2a  1      
  movl %ebx, %ebx                        #  85    0x87e2b  2      
  movl (%r15,%rbx,1), %eax               #  86    0x87e2d  4      
  movl %eax, %eax                        #  87    0x87e31  2      
  movzbl (%r15,%rax,1), %edx             #  88    0x87e33  5      
  cmpb $0xa, %dl                         #  89    0x87e38  3      
  je .L_88060                            #  90    0x87e3b  6      
  addl $0x1, %eax                        #  91    0x87e41  3      
  xorl %edx, %edx                        #  92    0x87e44  2      
  nop                                    #  93    0x87e46  1      
  movl %ebx, %ebx                        #  94    0x87e47  2      
  movl %eax, (%r15,%rbx,1)               #  95    0x87e49  4      
  nop                                    #  96    0x87e4d  1      
  nop                                    #  97    0x87e4e  1      
.L_87ee0:                                #        0x87e4f  0      
  testb %dl, %dl                         #  98    0x87e4f  2      
  je .L_87e40                            #  99    0x87e51  6      
  movl %ebx, %ebx                        #  100   0x87e57  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  101   0x87e59  6      
  movl $0xffffffff, %r12d                #  102   0x87e5f  6      
  jmpq .L_87f20                          #  103   0x87e65  5      
  nop                                    #  104   0x87e6a  1      
.L_87f00:                                #        0x87e6b  0      
  movl %ebx, %ebx                        #  105   0x87e6b  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  106   0x87e6d  6      
  movl %r14d, %r12d                      #  107   0x87e73  3      
  orl $0x40, %eax                        #  108   0x87e76  3      
  movl %ebx, %ebx                        #  109   0x87e79  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  110   0x87e7b  6      
  nop                                    #  111   0x87e81  1      
.L_87f20:                                #        0x87e82  0      
  testb $0x2, %ah                        #  112   0x87e82  3      
  jne .L_87f40                           #  113   0x87e85  6      
  leal 0x5c(%rbx), %edi                  #  114   0x87e8b  3      
  nop                                    #  115   0x87e8e  1      
  nop                                    #  116   0x87e8f  1      
  callq .__local_lock_release_recursive  #  117   0x87e90  5      
.L_87f40:                                #        0x87e95  0      
  addl $0x28, %esp                       #  118   0x87e95  3      
  addq %r15, %rsp                        #  119   0x87e98  3      
  movl %r12d, %eax                       #  120   0x87e9b  3      
  popq %rbx                              #  121   0x87e9e  2      
  popq %r12                              #  122   0x87ea0  3      
  popq %r13                              #  123   0x87ea3  3      
  popq %r14                              #  124   0x87ea6  3      
  popq %r11                              #  125   0x87ea9  3      
  andl $0xffffffe0, %r11d                #  126   0x87eac  7      
  addq %r15, %r11                        #  127   0x87eb3  3      
  jmpq %r11                              #  128   0x87eb6  3      
  nop                                    #  129   0x87eb9  1      
.L_87f60:                                #        0x87eba  0      
  movl %ebx, %ebx                        #  130   0x87eba  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  131   0x87ebc  6      
  jmpq .L_87f20                          #  132   0x87ec2  5      
  nop                                    #  133   0x87ec7  1      
  nop                                    #  134   0x87ec8  1      
.L_87f80:                                #        0x87ec9  0      
  movl %r13d, %eax                       #  135   0x87ec9  3      
  movl %ebx, %edx                        #  136   0x87ecc  2      
  movl %eax, %eax                        #  137   0x87ece  2      
  movzbl (%r15,%rax,1), %esi             #  138   0x87ed0  5      
  nop                                    #  139   0x87ed5  1      
  nop                                    #  140   0x87ed6  1      
.L_87fa0:                                #        0x87ed7  0      
  movl 0x8(%rsp), %edi                   #  141   0x87ed7  4      
  movl %ecx, (%rsp)                      #  142   0x87edb  3      
  nop                                    #  143   0x87ede  1      
  nop                                    #  144   0x87edf  1      
  callq .__swbuf_r                       #  145   0x87ee0  5      
  cmpl $0xffffffff, %eax                 #  146   0x87ee5  5      
  movl (%rsp), %ecx                      #  147   0x87eea  3      
  sete %dl                               #  148   0x87eed  3      
  jmpq .L_87ee0                          #  149   0x87ef0  5      
  nop                                    #  150   0x87ef5  1      
  nop                                    #  151   0x87ef6  1      
.L_87fe0:                                #        0x87ef7  0      
  cmpl $0xff, %r12d                      #  152   0x87ef7  4      
  jg .L_87dc0                            #  153   0x87efb  6      
  testl %r12d, %r12d                     #  154   0x87f01  3      
  jle .L_87dc0                           #  155   0x87f04  6      
  movb %r12b, 0x10(%rsp)                 #  156   0x87f0a  5      
  nop                                    #  157   0x87f0f  1      
  movl $0x1, %r14d                       #  158   0x87f10  6      
  leal 0x10(%rsp), %r13d                 #  159   0x87f16  5      
  jmpq .L_87e00                          #  160   0x87f1b  5      
  nop                                    #  161   0x87f20  1      
  nop                                    #  162   0x87f21  1      
.L_88020:                                #        0x87f22  0      
  leal 0x5c(%rbx), %edi                  #  163   0x87f22  3      
  nop                                    #  164   0x87f25  1      
  nop                                    #  165   0x87f26  1      
  callq .__local_lock_acquire_recursive  #  166   0x87f27  5      
  movl %ebx, %ebx                        #  167   0x87f2c  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  168   0x87f2e  6      
  movswl %dx, %eax                       #  169   0x87f34  3      
  jmpq .L_87d60                          #  170   0x87f37  5      
  nop                                    #  171   0x87f3c  1      
  nop                                    #  172   0x87f3d  1      
.L_88060:                                #        0x87f3e  0      
  movl %ebx, %edx                        #  173   0x87f3e  2      
  movl $0xa, %esi                        #  174   0x87f40  5      
  jmpq .L_87fa0                          #  175   0x87f45  5      
  nop                                    #  176   0x87f4a  1      
  nop                                    #  177   0x87f4b  1      
                                                                  
.size _fputwc_r, .-_fputwc_r

