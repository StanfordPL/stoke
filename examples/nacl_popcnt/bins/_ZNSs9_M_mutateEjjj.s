  .text
  .globl _ZNSs9_M_mutateEjjj
  .type _ZNSs9_M_mutateEjjj, @function

#! file-offset 0x47ee0
#! rip-offset  0x47ee0
#! capacity    832 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs9_M_mutateEjjj:                    #        0x47ee0  0      
  movq %r12, -0x18(%rsp)                 #  1     0x47ee0  5      
  movl %edi, %r12d                       #  2     0x47ee5  3      
  movq %rbx, -0x20(%rsp)                 #  3     0x47ee8  5      
  movq %r14, -0x8(%rsp)                  #  4     0x47eed  5      
  movq %r13, -0x10(%rsp)                 #  5     0x47ef2  5      
  movl %edx, %r14d                       #  6     0x47ef7  3      
  subl $0x58, %esp                       #  7     0x47efa  3      
  addq %r15, %rsp                        #  8     0x47efd  3      
  movl %r12d, %r12d                      #  9     0x47f00  3      
  movl (%r15,%r12,1), %edx               #  10    0x47f03  4      
  movl %ecx, %ebx                        #  11    0x47f07  2      
  subl %r14d, %ebx                       #  12    0x47f09  3      
  movl %esi, 0x10(%rsp)                  #  13    0x47f0c  4      
  movl %ecx, 0x14(%rsp)                  #  14    0x47f10  4      
  leal -0xc(%rdx), %eax                  #  15    0x47f14  3      
  movl %eax, %eax                        #  16    0x47f17  2      
  movl (%r15,%rax,1), %r13d              #  17    0x47f19  4      
  addl %r13d, %ebx                       #  18    0x47f1d  3      
  subl %esi, %r13d                       #  19    0x47f20  3      
  movl %eax, %eax                        #  20    0x47f23  2      
  movl 0x4(%r15,%rax,1), %esi            #  21    0x47f25  5      
  subl %r14d, %r13d                      #  22    0x47f2a  3      
  cmpl %esi, %ebx                        #  23    0x47f2d  2      
  jbe .L_48040                           #  24    0x47f2f  6      
  nop                                    #  25    0x47f35  1      
.L_47f40:                                #        0x47f36  0      
  leal 0x2f(%rsp), %eax                  #  26    0x47f36  4      
  movl %ebx, %edi                        #  27    0x47f3a  2      
  movl %eax, %edx                        #  28    0x47f3c  2      
  movq %rax, 0x8(%rsp)                   #  29    0x47f3e  5      
  nop                                    #  30    0x47f43  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  31    0x47f44  5      
  movl 0x10(%rsp), %r11d                 #  32    0x47f49  5      
  movl %eax, %eax                        #  33    0x47f4e  2      
  movq %rax, 0x18(%rsp)                  #  34    0x47f50  5      
  testl %r11d, %r11d                     #  35    0x47f55  3      
  jne .L_48120                           #  36    0x47f58  6      
  nop                                    #  37    0x47f5e  1      
.L_47f80:                                #        0x47f5f  0      
  testl %r13d, %r13d                     #  38    0x47f5f  3      
  jne .L_480c0                           #  39    0x47f62  6      
  nop                                    #  40    0x47f68  1      
  nop                                    #  41    0x47f69  1      
.L_47fa0:                                #        0x47f6a  0      
  movl %r12d, %r12d                      #  42    0x47f6a  3      
  movl (%r15,%r12,1), %edi               #  43    0x47f6d  4      
  subl $0xc, %edi                        #  44    0x47f71  3      
  cmpl $0x10031da0, %edi                 #  45    0x47f74  6      
  jne .L_481a0                           #  46    0x47f7a  6      
  nop                                    #  47    0x47f80  1      
.L_47fc0:                                #        0x47f81  0      
  movl 0x18(%rsp), %eax                  #  48    0x47f81  4      
  addl $0xc, %eax                        #  49    0x47f85  3      
  movl %r12d, %r12d                      #  50    0x47f88  3      
  movl %eax, (%r15,%r12,1)               #  51    0x47f8b  4      
  subl $0xc, %eax                        #  52    0x47f8f  3      
  nop                                    #  53    0x47f92  1      
.L_47fe0:                                #        0x47f93  0      
  movl %eax, %eax                        #  54    0x47f93  2      
  movl %ebx, (%r15,%rax,1)               #  55    0x47f95  4      
  addl %eax, %ebx                        #  56    0x47f99  2      
  movl %eax, %eax                        #  57    0x47f9b  2      
  movl $0x0, 0x8(%r15,%rax,1)            #  58    0x47f9d  9      
  movl %ebx, %ebx                        #  59    0x47fa6  2      
  movb $0x0, 0xc(%r15,%rbx,1)            #  60    0x47fa8  6      
  movq 0x38(%rsp), %rbx                  #  61    0x47fae  5      
  movq 0x40(%rsp), %r12                  #  62    0x47fb3  5      
  movq 0x48(%rsp), %r13                  #  63    0x47fb8  5      
  movq 0x50(%rsp), %r14                  #  64    0x47fbd  5      
  addl $0x58, %esp                       #  65    0x47fc2  3      
  addq %r15, %rsp                        #  66    0x47fc5  3      
  popq %r11                              #  67    0x47fc8  3      
  nop                                    #  68    0x47fcb  1      
  andl $0xffffffe0, %r11d                #  69    0x47fcc  7      
  addq %r15, %r11                        #  70    0x47fd3  3      
  jmpq %r11                              #  71    0x47fd6  3      
  nop                                    #  72    0x47fd9  1      
  nop                                    #  73    0x47fda  1      
.L_48040:                                #        0x47fdb  0      
  movl %eax, %eax                        #  74    0x47fdb  2      
  movl 0x8(%r15,%rax,1), %ecx            #  75    0x47fdd  5      
  testl %ecx, %ecx                       #  76    0x47fe2  2      
  jg .L_47f40                            #  77    0x47fe4  6      
  cmpl 0x14(%rsp), %r14d                 #  78    0x47fea  5      
  je .L_47fe0                            #  79    0x47fef  6      
  testl %r13d, %r13d                     #  80    0x47ff5  3      
  je .L_47fe0                            #  81    0x47ff8  6      
  movl 0x14(%rsp), %edi                  #  82    0x47ffe  4      
  nop                                    #  83    0x48002  1      
  addl 0x10(%rsp), %edi                  #  84    0x48003  4      
  addl 0x10(%rsp), %r14d                 #  85    0x48007  5      
  addl %edx, %edi                        #  86    0x4800c  2      
  cmpl $0x1, %r13d                       #  87    0x4800e  4      
  leal (%r14,%rdx,1), %esi               #  88    0x48012  4      
  je .L_48160                            #  89    0x48016  6      
  movl %r13d, %edx                       #  90    0x4801c  3      
  nop                                    #  91    0x4801f  1      
  nop                                    #  92    0x48020  1      
  nop                                    #  93    0x48021  1      
  callq .memmove                         #  94    0x48022  5      
  movl %r12d, %r12d                      #  95    0x48027  3      
  movl (%r15,%r12,1), %eax               #  96    0x4802a  4      
  subl $0xc, %eax                        #  97    0x4802e  3      
  jmpq .L_47fe0                          #  98    0x48031  5      
  xchgw %ax, %ax                         #  99    0x48036  3      
  nop                                    #  100   0x48039  1      
.L_480c0:                                #        0x4803a  0      
  addl 0x10(%rsp), %r14d                 #  101   0x4803a  5      
  movl %r12d, %r12d                      #  102   0x4803f  3      
  movl (%r15,%r12,1), %esi               #  103   0x48042  4      
  movl 0x14(%rsp), %edi                  #  104   0x48046  4      
  addl 0x10(%rsp), %edi                  #  105   0x4804a  4      
  movl 0x18(%rsp), %eax                  #  106   0x4804e  4      
  addl %r14d, %esi                       #  107   0x48052  3      
  cmpl $0x1, %r13d                       #  108   0x48055  4      
  nop                                    #  109   0x48059  1      
  leal 0xc(%rdi,%rax,1), %edi            #  110   0x4805a  4      
  je .L_48180                            #  111   0x4805e  6      
  movl %r13d, %edx                       #  112   0x48064  3      
  nop                                    #  113   0x48067  1      
  callq .memcpy                          #  114   0x48068  5      
  jmpq .L_47fa0                          #  115   0x4806d  5      
  nop                                    #  116   0x48072  1      
  nop                                    #  117   0x48073  1      
.L_48120:                                #        0x48074  0      
  movl 0x18(%rsp), %edi                  #  118   0x48074  4      
  movl 0x10(%rsp), %edx                  #  119   0x48078  4      
  movl %r12d, %r12d                      #  120   0x4807c  3      
  movl (%r15,%r12,1), %esi               #  121   0x4807f  4      
  addl $0xc, %edi                        #  122   0x48083  3      
  nop                                    #  123   0x48086  1      
  callq ._ZNSs7_M_copyEPcPKcj            #  124   0x48087  5      
  jmpq .L_47f80                          #  125   0x4808c  5      
  nop                                    #  126   0x48091  1      
  nop                                    #  127   0x48092  1      
.L_48160:                                #        0x48093  0      
  movl %esi, %esi                        #  128   0x48093  2      
  movzbl (%r15,%rsi,1), %eax             #  129   0x48095  5      
  movl %edi, %edi                        #  130   0x4809a  2      
  movb %al, (%r15,%rdi,1)                #  131   0x4809c  4      
  movl %r12d, %r12d                      #  132   0x480a0  3      
  movl (%r15,%r12,1), %eax               #  133   0x480a3  4      
  subl $0xc, %eax                        #  134   0x480a7  3      
  jmpq .L_47fe0                          #  135   0x480aa  5      
  nop                                    #  136   0x480af  1      
.L_48180:                                #        0x480b0  0      
  movl %esi, %esi                        #  137   0x480b0  2      
  movzbl (%r15,%rsi,1), %eax             #  138   0x480b2  5      
  movl %edi, %edi                        #  139   0x480b7  2      
  movb %al, (%r15,%rdi,1)                #  140   0x480b9  4      
  jmpq .L_47fa0                          #  141   0x480bd  5      
  nop                                    #  142   0x480c2  1      
.L_481a0:                                #        0x480c3  0      
  movl %edi, %edi                        #  143   0x480c3  2      
  movl 0x8(%r15,%rdi,1), %eax            #  144   0x480c5  5      
  leal -0x1(%rax), %edx                  #  145   0x480ca  3      
  testl %eax, %eax                       #  146   0x480cd  2      
  movl %edi, %edi                        #  147   0x480cf  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  148   0x480d1  5      
  jg .L_47fc0                            #  149   0x480d6  6      
  movl 0x8(%rsp), %esi                   #  150   0x480dc  4      
  nop                                    #  151   0x480e0  1      
  nop                                    #  152   0x480e1  1      
  nop                                    #  153   0x480e2  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  154   0x480e3  5      
  jmpq .L_47fc0                          #  155   0x480e8  5      
  nop                                    #  156   0x480ed  1      
  nop                                    #  157   0x480ee  1      
  movl %eax, %edi                        #  158   0x480ef  2      
  nop                                    #  159   0x480f1  1      
  nop                                    #  160   0x480f2  1      
  callq ._Unwind_Resume                  #  161   0x480f3  5      
                                                                  
.size _ZNSs9_M_mutateEjjj, .-_ZNSs9_M_mutateEjjj

