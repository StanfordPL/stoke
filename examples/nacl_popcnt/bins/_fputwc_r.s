  .text
  .globl _fputwc_r
  .type _fputwc_r, @function

#! file-offset 0x87dc0
#! rip-offset  0x87dc0
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._fputwc_r:                              #        0x87dc0  0      
  pushq %r14                             #  1     0x87dc0  3      
  movl %edi, %edi                        #  2     0x87dc3  2      
  pushq %r13                             #  3     0x87dc5  3      
  pushq %r12                             #  4     0x87dc8  3      
  movl %esi, %r12d                       #  5     0x87dcb  3      
  pushq %rbx                             #  6     0x87dce  2      
  movl %edx, %ebx                        #  7     0x87dd0  2      
  subl $0x28, %esp                       #  8     0x87dd2  3      
  addq %r15, %rsp                        #  9     0x87dd5  3      
  movl %ebx, %ebx                        #  10    0x87dd8  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  11    0x87dda  6      
  nop                                    #  12    0x87de0  1      
  movq %rdi, 0x8(%rsp)                   #  13    0x87de1  5      
  movswl %dx, %eax                       #  14    0x87de6  3      
  testb $0x2, %ah                        #  15    0x87de9  3      
  je .L_880c0                            #  16    0x87dec  6      
  nop                                    #  17    0x87df2  1      
.L_87e00:                                #        0x87df3  0      
  testb $0x20, %ah                       #  18    0x87df3  3      
  jne .L_87e20                           #  19    0x87df6  6      
  movl %ebx, %ebx                        #  20    0x87dfc  2      
  orl $0x2000, 0x78(%r15,%rbx,1)         #  21    0x87dfe  9      
  orb $0x20, %dh                         #  22    0x87e07  3      
  movl %ebx, %ebx                        #  23    0x87e0a  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  24    0x87e0c  6      
  nop                                    #  25    0x87e12  1      
.L_87e20:                                #        0x87e13  0      
  nop                                    #  26    0x87e13  1      
  nop                                    #  27    0x87e14  1      
  callq .__locale_mb_cur_max             #  28    0x87e15  5      
  cmpl $0x1, %eax                        #  29    0x87e1a  3      
  je .L_88080                            #  30    0x87e1d  6      
  nop                                    #  31    0x87e23  1      
  nop                                    #  32    0x87e24  1      
.L_87e60:                                #        0x87e25  0      
  leal 0x10(%rsp), %r13d                 #  33    0x87e25  5      
  movl 0x8(%rsp), %edi                   #  34    0x87e2a  4      
  leal 0x70(%rbx), %ecx                  #  35    0x87e2e  3      
  movl %r12d, %edx                       #  36    0x87e31  3      
  movl %r13d, %esi                       #  37    0x87e34  3      
  nop                                    #  38    0x87e37  1      
  callq ._wcrtomb_r                      #  39    0x87e38  5      
  cmpl $0xffffffff, %eax                 #  40    0x87e3d  5      
  movl %eax, %r14d                       #  41    0x87e42  3      
  je .L_87fa0                            #  42    0x87e45  6      
  testl %eax, %eax                       #  43    0x87e4b  2      
  je .L_88000                            #  44    0x87e4d  6      
  nop                                    #  45    0x87e53  1      
.L_87ea0:                                #        0x87e54  0      
  xorl %ecx, %ecx                        #  46    0x87e54  2      
  jmpq .L_87f00                          #  47    0x87e56  5      
  nop                                    #  48    0x87e5b  1      
  nop                                    #  49    0x87e5c  1      
.L_87ec0:                                #        0x87e5d  0      
  movl %r13d, %edx                       #  50    0x87e5d  3      
  movl %ebx, %ebx                        #  51    0x87e60  2      
  movl (%r15,%rbx,1), %eax               #  52    0x87e62  4      
  movl %edx, %edx                        #  53    0x87e66  2      
  movzbl (%r15,%rdx,1), %edx             #  54    0x87e68  5      
  movl %eax, %eax                        #  55    0x87e6d  2      
  movb %dl, (%r15,%rax,1)                #  56    0x87e6f  4      
  movl %ebx, %ebx                        #  57    0x87e73  2      
  addl $0x1, (%r15,%rbx,1)               #  58    0x87e75  5      
  nop                                    #  59    0x87e7a  1      
.L_87ee0:                                #        0x87e7b  0      
  addl $0x1, %ecx                        #  60    0x87e7b  3      
  addl $0x1, %r13d                       #  61    0x87e7e  4      
  cmpl %r14d, %ecx                       #  62    0x87e82  3      
  jae .L_88000                           #  63    0x87e85  6      
  nop                                    #  64    0x87e8b  1      
  nop                                    #  65    0x87e8c  1      
.L_87f00:                                #        0x87e8d  0      
  movl %ebx, %ebx                        #  66    0x87e8d  2      
  movl 0x8(%r15,%rbx,1), %eax            #  67    0x87e8f  5      
  subl $0x1, %eax                        #  68    0x87e94  3      
  testl %eax, %eax                       #  69    0x87e97  2      
  movl %ebx, %ebx                        #  70    0x87e99  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  71    0x87e9b  5      
  jns .L_87ec0                           #  72    0x87ea0  6      
  movl %ebx, %ebx                        #  73    0x87ea6  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  74    0x87ea8  5      
  nop                                    #  75    0x87ead  1      
  jl .L_88020                            #  76    0x87eae  6      
  movl %r13d, %edx                       #  77    0x87eb4  3      
  movl %ebx, %ebx                        #  78    0x87eb7  2      
  movl (%r15,%rbx,1), %eax               #  79    0x87eb9  4      
  movl %edx, %edx                        #  80    0x87ebd  2      
  movzbl (%r15,%rdx,1), %edx             #  81    0x87ebf  5      
  movl %eax, %eax                        #  82    0x87ec4  2      
  movb %dl, (%r15,%rax,1)                #  83    0x87ec6  4      
  nop                                    #  84    0x87eca  1      
  movl %ebx, %ebx                        #  85    0x87ecb  2      
  movl (%r15,%rbx,1), %eax               #  86    0x87ecd  4      
  movl %eax, %eax                        #  87    0x87ed1  2      
  movzbl (%r15,%rax,1), %edx             #  88    0x87ed3  5      
  cmpb $0xa, %dl                         #  89    0x87ed8  3      
  je .L_88100                            #  90    0x87edb  6      
  addl $0x1, %eax                        #  91    0x87ee1  3      
  xorl %edx, %edx                        #  92    0x87ee4  2      
  nop                                    #  93    0x87ee6  1      
  movl %ebx, %ebx                        #  94    0x87ee7  2      
  movl %eax, (%r15,%rbx,1)               #  95    0x87ee9  4      
  nop                                    #  96    0x87eed  1      
  nop                                    #  97    0x87eee  1      
.L_87f80:                                #        0x87eef  0      
  testb %dl, %dl                         #  98    0x87eef  2      
  je .L_87ee0                            #  99    0x87ef1  6      
  movl %ebx, %ebx                        #  100   0x87ef7  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  101   0x87ef9  6      
  movl $0xffffffff, %r12d                #  102   0x87eff  6      
  jmpq .L_87fc0                          #  103   0x87f05  5      
  nop                                    #  104   0x87f0a  1      
.L_87fa0:                                #        0x87f0b  0      
  movl %ebx, %ebx                        #  105   0x87f0b  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  106   0x87f0d  6      
  movl %r14d, %r12d                      #  107   0x87f13  3      
  orl $0x40, %eax                        #  108   0x87f16  3      
  movl %ebx, %ebx                        #  109   0x87f19  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  110   0x87f1b  6      
  nop                                    #  111   0x87f21  1      
.L_87fc0:                                #        0x87f22  0      
  testb $0x2, %ah                        #  112   0x87f22  3      
  jne .L_87fe0                           #  113   0x87f25  6      
  leal 0x5c(%rbx), %edi                  #  114   0x87f2b  3      
  nop                                    #  115   0x87f2e  1      
  nop                                    #  116   0x87f2f  1      
  callq .__local_lock_release_recursive  #  117   0x87f30  5      
.L_87fe0:                                #        0x87f35  0      
  addl $0x28, %esp                       #  118   0x87f35  3      
  addq %r15, %rsp                        #  119   0x87f38  3      
  movl %r12d, %eax                       #  120   0x87f3b  3      
  popq %rbx                              #  121   0x87f3e  2      
  popq %r12                              #  122   0x87f40  3      
  popq %r13                              #  123   0x87f43  3      
  popq %r14                              #  124   0x87f46  3      
  popq %r11                              #  125   0x87f49  3      
  andl $0xffffffe0, %r11d                #  126   0x87f4c  7      
  addq %r15, %r11                        #  127   0x87f53  3      
  jmpq %r11                              #  128   0x87f56  3      
  nop                                    #  129   0x87f59  1      
.L_88000:                                #        0x87f5a  0      
  movl %ebx, %ebx                        #  130   0x87f5a  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  131   0x87f5c  6      
  jmpq .L_87fc0                          #  132   0x87f62  5      
  nop                                    #  133   0x87f67  1      
  nop                                    #  134   0x87f68  1      
.L_88020:                                #        0x87f69  0      
  movl %r13d, %eax                       #  135   0x87f69  3      
  movl %ebx, %edx                        #  136   0x87f6c  2      
  movl %eax, %eax                        #  137   0x87f6e  2      
  movzbl (%r15,%rax,1), %esi             #  138   0x87f70  5      
  nop                                    #  139   0x87f75  1      
  nop                                    #  140   0x87f76  1      
.L_88040:                                #        0x87f77  0      
  movl 0x8(%rsp), %edi                   #  141   0x87f77  4      
  movl %ecx, (%rsp)                      #  142   0x87f7b  3      
  nop                                    #  143   0x87f7e  1      
  nop                                    #  144   0x87f7f  1      
  callq .__swbuf_r                       #  145   0x87f80  5      
  cmpl $0xffffffff, %eax                 #  146   0x87f85  5      
  movl (%rsp), %ecx                      #  147   0x87f8a  3      
  sete %dl                               #  148   0x87f8d  3      
  jmpq .L_87f80                          #  149   0x87f90  5      
  nop                                    #  150   0x87f95  1      
  nop                                    #  151   0x87f96  1      
.L_88080:                                #        0x87f97  0      
  cmpl $0xff, %r12d                      #  152   0x87f97  4      
  jg .L_87e60                            #  153   0x87f9b  6      
  testl %r12d, %r12d                     #  154   0x87fa1  3      
  jle .L_87e60                           #  155   0x87fa4  6      
  movb %r12b, 0x10(%rsp)                 #  156   0x87faa  5      
  nop                                    #  157   0x87faf  1      
  movl $0x1, %r14d                       #  158   0x87fb0  6      
  leal 0x10(%rsp), %r13d                 #  159   0x87fb6  5      
  jmpq .L_87ea0                          #  160   0x87fbb  5      
  nop                                    #  161   0x87fc0  1      
  nop                                    #  162   0x87fc1  1      
.L_880c0:                                #        0x87fc2  0      
  leal 0x5c(%rbx), %edi                  #  163   0x87fc2  3      
  nop                                    #  164   0x87fc5  1      
  nop                                    #  165   0x87fc6  1      
  callq .__local_lock_acquire_recursive  #  166   0x87fc7  5      
  movl %ebx, %ebx                        #  167   0x87fcc  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  168   0x87fce  6      
  movswl %dx, %eax                       #  169   0x87fd4  3      
  jmpq .L_87e00                          #  170   0x87fd7  5      
  nop                                    #  171   0x87fdc  1      
  nop                                    #  172   0x87fdd  1      
.L_88100:                                #        0x87fde  0      
  movl %ebx, %edx                        #  173   0x87fde  2      
  movl $0xa, %esi                        #  174   0x87fe0  5      
  jmpq .L_88040                          #  175   0x87fe5  5      
  nop                                    #  176   0x87fea  1      
  nop                                    #  177   0x87feb  1      
                                                                  
.size _fputwc_r, .-_fputwc_r

