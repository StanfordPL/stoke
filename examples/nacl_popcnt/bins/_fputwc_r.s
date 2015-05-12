  .text
  .globl _fputwc_r
  .type _fputwc_r, @function

#! file-offset 0x87d40
#! rip-offset  0x87d40
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._fputwc_r:                              #        0x87d40  0      
  pushq %r14                             #  1     0x87d40  3      
  movl %edi, %edi                        #  2     0x87d43  2      
  pushq %r13                             #  3     0x87d45  3      
  pushq %r12                             #  4     0x87d48  3      
  movl %esi, %r12d                       #  5     0x87d4b  3      
  pushq %rbx                             #  6     0x87d4e  2      
  movl %edx, %ebx                        #  7     0x87d50  2      
  subl $0x28, %esp                       #  8     0x87d52  3      
  addq %r15, %rsp                        #  9     0x87d55  3      
  movl %ebx, %ebx                        #  10    0x87d58  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  11    0x87d5a  6      
  nop                                    #  12    0x87d60  1      
  movq %rdi, 0x8(%rsp)                   #  13    0x87d61  5      
  movswl %dx, %eax                       #  14    0x87d66  3      
  testb $0x2, %ah                        #  15    0x87d69  3      
  je .L_88040                            #  16    0x87d6c  6      
  nop                                    #  17    0x87d72  1      
.L_87d80:                                #        0x87d73  0      
  testb $0x20, %ah                       #  18    0x87d73  3      
  jne .L_87da0                           #  19    0x87d76  6      
  movl %ebx, %ebx                        #  20    0x87d7c  2      
  orl $0x2000, 0x78(%r15,%rbx,1)         #  21    0x87d7e  9      
  orb $0x20, %dh                         #  22    0x87d87  3      
  movl %ebx, %ebx                        #  23    0x87d8a  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  24    0x87d8c  6      
  nop                                    #  25    0x87d92  1      
.L_87da0:                                #        0x87d93  0      
  nop                                    #  26    0x87d93  1      
  nop                                    #  27    0x87d94  1      
  callq .__locale_mb_cur_max             #  28    0x87d95  5      
  cmpl $0x1, %eax                        #  29    0x87d9a  3      
  je .L_88000                            #  30    0x87d9d  6      
  nop                                    #  31    0x87da3  1      
  nop                                    #  32    0x87da4  1      
.L_87de0:                                #        0x87da5  0      
  leal 0x10(%rsp), %r13d                 #  33    0x87da5  5      
  movl 0x8(%rsp), %edi                   #  34    0x87daa  4      
  leal 0x70(%rbx), %ecx                  #  35    0x87dae  3      
  movl %r12d, %edx                       #  36    0x87db1  3      
  movl %r13d, %esi                       #  37    0x87db4  3      
  nop                                    #  38    0x87db7  1      
  callq ._wcrtomb_r                      #  39    0x87db8  5      
  cmpl $0xffffffff, %eax                 #  40    0x87dbd  5      
  movl %eax, %r14d                       #  41    0x87dc2  3      
  je .L_87f20                            #  42    0x87dc5  6      
  testl %eax, %eax                       #  43    0x87dcb  2      
  je .L_87f80                            #  44    0x87dcd  6      
  nop                                    #  45    0x87dd3  1      
.L_87e20:                                #        0x87dd4  0      
  xorl %ecx, %ecx                        #  46    0x87dd4  2      
  jmpq .L_87e80                          #  47    0x87dd6  5      
  nop                                    #  48    0x87ddb  1      
  nop                                    #  49    0x87ddc  1      
.L_87e40:                                #        0x87ddd  0      
  movl %r13d, %edx                       #  50    0x87ddd  3      
  movl %ebx, %ebx                        #  51    0x87de0  2      
  movl (%r15,%rbx,1), %eax               #  52    0x87de2  4      
  movl %edx, %edx                        #  53    0x87de6  2      
  movzbl (%r15,%rdx,1), %edx             #  54    0x87de8  5      
  movl %eax, %eax                        #  55    0x87ded  2      
  movb %dl, (%r15,%rax,1)                #  56    0x87def  4      
  movl %ebx, %ebx                        #  57    0x87df3  2      
  addl $0x1, (%r15,%rbx,1)               #  58    0x87df5  5      
  nop                                    #  59    0x87dfa  1      
.L_87e60:                                #        0x87dfb  0      
  addl $0x1, %ecx                        #  60    0x87dfb  3      
  addl $0x1, %r13d                       #  61    0x87dfe  4      
  cmpl %r14d, %ecx                       #  62    0x87e02  3      
  jae .L_87f80                           #  63    0x87e05  6      
  nop                                    #  64    0x87e0b  1      
  nop                                    #  65    0x87e0c  1      
.L_87e80:                                #        0x87e0d  0      
  movl %ebx, %ebx                        #  66    0x87e0d  2      
  movl 0x8(%r15,%rbx,1), %eax            #  67    0x87e0f  5      
  subl $0x1, %eax                        #  68    0x87e14  3      
  testl %eax, %eax                       #  69    0x87e17  2      
  movl %ebx, %ebx                        #  70    0x87e19  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  71    0x87e1b  5      
  jns .L_87e40                           #  72    0x87e20  6      
  movl %ebx, %ebx                        #  73    0x87e26  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  74    0x87e28  5      
  nop                                    #  75    0x87e2d  1      
  jl .L_87fa0                            #  76    0x87e2e  6      
  movl %r13d, %edx                       #  77    0x87e34  3      
  movl %ebx, %ebx                        #  78    0x87e37  2      
  movl (%r15,%rbx,1), %eax               #  79    0x87e39  4      
  movl %edx, %edx                        #  80    0x87e3d  2      
  movzbl (%r15,%rdx,1), %edx             #  81    0x87e3f  5      
  movl %eax, %eax                        #  82    0x87e44  2      
  movb %dl, (%r15,%rax,1)                #  83    0x87e46  4      
  nop                                    #  84    0x87e4a  1      
  movl %ebx, %ebx                        #  85    0x87e4b  2      
  movl (%r15,%rbx,1), %eax               #  86    0x87e4d  4      
  movl %eax, %eax                        #  87    0x87e51  2      
  movzbl (%r15,%rax,1), %edx             #  88    0x87e53  5      
  cmpb $0xa, %dl                         #  89    0x87e58  3      
  je .L_88080                            #  90    0x87e5b  6      
  addl $0x1, %eax                        #  91    0x87e61  3      
  xorl %edx, %edx                        #  92    0x87e64  2      
  nop                                    #  93    0x87e66  1      
  movl %ebx, %ebx                        #  94    0x87e67  2      
  movl %eax, (%r15,%rbx,1)               #  95    0x87e69  4      
  nop                                    #  96    0x87e6d  1      
  nop                                    #  97    0x87e6e  1      
.L_87f00:                                #        0x87e6f  0      
  testb %dl, %dl                         #  98    0x87e6f  2      
  je .L_87e60                            #  99    0x87e71  6      
  movl %ebx, %ebx                        #  100   0x87e77  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  101   0x87e79  6      
  movl $0xffffffff, %r12d                #  102   0x87e7f  6      
  jmpq .L_87f40                          #  103   0x87e85  5      
  nop                                    #  104   0x87e8a  1      
.L_87f20:                                #        0x87e8b  0      
  movl %ebx, %ebx                        #  105   0x87e8b  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  106   0x87e8d  6      
  movl %r14d, %r12d                      #  107   0x87e93  3      
  orl $0x40, %eax                        #  108   0x87e96  3      
  movl %ebx, %ebx                        #  109   0x87e99  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  110   0x87e9b  6      
  nop                                    #  111   0x87ea1  1      
.L_87f40:                                #        0x87ea2  0      
  testb $0x2, %ah                        #  112   0x87ea2  3      
  jne .L_87f60                           #  113   0x87ea5  6      
  leal 0x5c(%rbx), %edi                  #  114   0x87eab  3      
  nop                                    #  115   0x87eae  1      
  nop                                    #  116   0x87eaf  1      
  callq .__local_lock_release_recursive  #  117   0x87eb0  5      
.L_87f60:                                #        0x87eb5  0      
  addl $0x28, %esp                       #  118   0x87eb5  3      
  addq %r15, %rsp                        #  119   0x87eb8  3      
  movl %r12d, %eax                       #  120   0x87ebb  3      
  popq %rbx                              #  121   0x87ebe  2      
  popq %r12                              #  122   0x87ec0  3      
  popq %r13                              #  123   0x87ec3  3      
  popq %r14                              #  124   0x87ec6  3      
  popq %r11                              #  125   0x87ec9  3      
  andl $0xffffffe0, %r11d                #  126   0x87ecc  7      
  addq %r15, %r11                        #  127   0x87ed3  3      
  jmpq %r11                              #  128   0x87ed6  3      
  nop                                    #  129   0x87ed9  1      
.L_87f80:                                #        0x87eda  0      
  movl %ebx, %ebx                        #  130   0x87eda  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  131   0x87edc  6      
  jmpq .L_87f40                          #  132   0x87ee2  5      
  nop                                    #  133   0x87ee7  1      
  nop                                    #  134   0x87ee8  1      
.L_87fa0:                                #        0x87ee9  0      
  movl %r13d, %eax                       #  135   0x87ee9  3      
  movl %ebx, %edx                        #  136   0x87eec  2      
  movl %eax, %eax                        #  137   0x87eee  2      
  movzbl (%r15,%rax,1), %esi             #  138   0x87ef0  5      
  nop                                    #  139   0x87ef5  1      
  nop                                    #  140   0x87ef6  1      
.L_87fc0:                                #        0x87ef7  0      
  movl 0x8(%rsp), %edi                   #  141   0x87ef7  4      
  movl %ecx, (%rsp)                      #  142   0x87efb  3      
  nop                                    #  143   0x87efe  1      
  nop                                    #  144   0x87eff  1      
  callq .__swbuf_r                       #  145   0x87f00  5      
  cmpl $0xffffffff, %eax                 #  146   0x87f05  5      
  movl (%rsp), %ecx                      #  147   0x87f0a  3      
  sete %dl                               #  148   0x87f0d  3      
  jmpq .L_87f00                          #  149   0x87f10  5      
  nop                                    #  150   0x87f15  1      
  nop                                    #  151   0x87f16  1      
.L_88000:                                #        0x87f17  0      
  cmpl $0xff, %r12d                      #  152   0x87f17  4      
  jg .L_87de0                            #  153   0x87f1b  6      
  testl %r12d, %r12d                     #  154   0x87f21  3      
  jle .L_87de0                           #  155   0x87f24  6      
  movb %r12b, 0x10(%rsp)                 #  156   0x87f2a  5      
  nop                                    #  157   0x87f2f  1      
  movl $0x1, %r14d                       #  158   0x87f30  6      
  leal 0x10(%rsp), %r13d                 #  159   0x87f36  5      
  jmpq .L_87e20                          #  160   0x87f3b  5      
  nop                                    #  161   0x87f40  1      
  nop                                    #  162   0x87f41  1      
.L_88040:                                #        0x87f42  0      
  leal 0x5c(%rbx), %edi                  #  163   0x87f42  3      
  nop                                    #  164   0x87f45  1      
  nop                                    #  165   0x87f46  1      
  callq .__local_lock_acquire_recursive  #  166   0x87f47  5      
  movl %ebx, %ebx                        #  167   0x87f4c  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  168   0x87f4e  6      
  movswl %dx, %eax                       #  169   0x87f54  3      
  jmpq .L_87d80                          #  170   0x87f57  5      
  nop                                    #  171   0x87f5c  1      
  nop                                    #  172   0x87f5d  1      
.L_88080:                                #        0x87f5e  0      
  movl %ebx, %edx                        #  173   0x87f5e  2      
  movl $0xa, %esi                        #  174   0x87f60  5      
  jmpq .L_87fc0                          #  175   0x87f65  5      
  nop                                    #  176   0x87f6a  1      
  nop                                    #  177   0x87f6b  1      
                                                                  
.size _fputwc_r, .-_fputwc_r

