  .text
  .globl _ZNSs9_M_mutateEjjj
  .type _ZNSs9_M_mutateEjjj, @function

#! file-offset 0x47e40
#! rip-offset  0x47e40
#! capacity    832 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs9_M_mutateEjjj:                    #        0x47e40  0      
  movq %r12, -0x18(%rsp)                 #  1     0x47e40  5      
  movl %edi, %r12d                       #  2     0x47e45  3      
  movq %rbx, -0x20(%rsp)                 #  3     0x47e48  5      
  movq %r14, -0x8(%rsp)                  #  4     0x47e4d  5      
  movq %r13, -0x10(%rsp)                 #  5     0x47e52  5      
  movl %edx, %r14d                       #  6     0x47e57  3      
  subl $0x58, %esp                       #  7     0x47e5a  3      
  addq %r15, %rsp                        #  8     0x47e5d  3      
  movl %r12d, %r12d                      #  9     0x47e60  3      
  movl (%r15,%r12,1), %edx               #  10    0x47e63  4      
  movl %ecx, %ebx                        #  11    0x47e67  2      
  subl %r14d, %ebx                       #  12    0x47e69  3      
  movl %esi, 0x10(%rsp)                  #  13    0x47e6c  4      
  movl %ecx, 0x14(%rsp)                  #  14    0x47e70  4      
  leal -0xc(%rdx), %eax                  #  15    0x47e74  3      
  movl %eax, %eax                        #  16    0x47e77  2      
  movl (%r15,%rax,1), %r13d              #  17    0x47e79  4      
  addl %r13d, %ebx                       #  18    0x47e7d  3      
  subl %esi, %r13d                       #  19    0x47e80  3      
  movl %eax, %eax                        #  20    0x47e83  2      
  movl 0x4(%r15,%rax,1), %esi            #  21    0x47e85  5      
  subl %r14d, %r13d                      #  22    0x47e8a  3      
  cmpl %esi, %ebx                        #  23    0x47e8d  2      
  jbe .L_47fa0                           #  24    0x47e8f  6      
  nop                                    #  25    0x47e95  1      
.L_47ea0:                                #        0x47e96  0      
  leal 0x2f(%rsp), %eax                  #  26    0x47e96  4      
  movl %ebx, %edi                        #  27    0x47e9a  2      
  movl %eax, %edx                        #  28    0x47e9c  2      
  movq %rax, 0x8(%rsp)                   #  29    0x47e9e  5      
  nop                                    #  30    0x47ea3  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  31    0x47ea4  5      
  movl 0x10(%rsp), %r11d                 #  32    0x47ea9  5      
  movl %eax, %eax                        #  33    0x47eae  2      
  movq %rax, 0x18(%rsp)                  #  34    0x47eb0  5      
  testl %r11d, %r11d                     #  35    0x47eb5  3      
  jne .L_48080                           #  36    0x47eb8  6      
  nop                                    #  37    0x47ebe  1      
.L_47ee0:                                #        0x47ebf  0      
  testl %r13d, %r13d                     #  38    0x47ebf  3      
  jne .L_48020                           #  39    0x47ec2  6      
  nop                                    #  40    0x47ec8  1      
  nop                                    #  41    0x47ec9  1      
.L_47f00:                                #        0x47eca  0      
  movl %r12d, %r12d                      #  42    0x47eca  3      
  movl (%r15,%r12,1), %edi               #  43    0x47ecd  4      
  subl $0xc, %edi                        #  44    0x47ed1  3      
  cmpl $0x10031da0, %edi                 #  45    0x47ed4  6      
  jne .L_48100                           #  46    0x47eda  6      
  nop                                    #  47    0x47ee0  1      
.L_47f20:                                #        0x47ee1  0      
  movl 0x18(%rsp), %eax                  #  48    0x47ee1  4      
  addl $0xc, %eax                        #  49    0x47ee5  3      
  movl %r12d, %r12d                      #  50    0x47ee8  3      
  movl %eax, (%r15,%r12,1)               #  51    0x47eeb  4      
  subl $0xc, %eax                        #  52    0x47eef  3      
  nop                                    #  53    0x47ef2  1      
.L_47f40:                                #        0x47ef3  0      
  movl %eax, %eax                        #  54    0x47ef3  2      
  movl %ebx, (%r15,%rax,1)               #  55    0x47ef5  4      
  addl %eax, %ebx                        #  56    0x47ef9  2      
  movl %eax, %eax                        #  57    0x47efb  2      
  movl $0x0, 0x8(%r15,%rax,1)            #  58    0x47efd  9      
  movl %ebx, %ebx                        #  59    0x47f06  2      
  movb $0x0, 0xc(%r15,%rbx,1)            #  60    0x47f08  6      
  movq 0x38(%rsp), %rbx                  #  61    0x47f0e  5      
  movq 0x40(%rsp), %r12                  #  62    0x47f13  5      
  movq 0x48(%rsp), %r13                  #  63    0x47f18  5      
  movq 0x50(%rsp), %r14                  #  64    0x47f1d  5      
  addl $0x58, %esp                       #  65    0x47f22  3      
  addq %r15, %rsp                        #  66    0x47f25  3      
  popq %r11                              #  67    0x47f28  3      
  nop                                    #  68    0x47f2b  1      
  andl $0xffffffe0, %r11d                #  69    0x47f2c  7      
  addq %r15, %r11                        #  70    0x47f33  3      
  jmpq %r11                              #  71    0x47f36  3      
  nop                                    #  72    0x47f39  1      
  nop                                    #  73    0x47f3a  1      
.L_47fa0:                                #        0x47f3b  0      
  movl %eax, %eax                        #  74    0x47f3b  2      
  movl 0x8(%r15,%rax,1), %ecx            #  75    0x47f3d  5      
  testl %ecx, %ecx                       #  76    0x47f42  2      
  jg .L_47ea0                            #  77    0x47f44  6      
  cmpl 0x14(%rsp), %r14d                 #  78    0x47f4a  5      
  je .L_47f40                            #  79    0x47f4f  6      
  testl %r13d, %r13d                     #  80    0x47f55  3      
  je .L_47f40                            #  81    0x47f58  6      
  movl 0x14(%rsp), %edi                  #  82    0x47f5e  4      
  nop                                    #  83    0x47f62  1      
  addl 0x10(%rsp), %edi                  #  84    0x47f63  4      
  addl 0x10(%rsp), %r14d                 #  85    0x47f67  5      
  addl %edx, %edi                        #  86    0x47f6c  2      
  cmpl $0x1, %r13d                       #  87    0x47f6e  4      
  leal (%r14,%rdx,1), %esi               #  88    0x47f72  4      
  je .L_480c0                            #  89    0x47f76  6      
  movl %r13d, %edx                       #  90    0x47f7c  3      
  nop                                    #  91    0x47f7f  1      
  nop                                    #  92    0x47f80  1      
  nop                                    #  93    0x47f81  1      
  callq .memmove                         #  94    0x47f82  5      
  movl %r12d, %r12d                      #  95    0x47f87  3      
  movl (%r15,%r12,1), %eax               #  96    0x47f8a  4      
  subl $0xc, %eax                        #  97    0x47f8e  3      
  jmpq .L_47f40                          #  98    0x47f91  5      
  xchgw %ax, %ax                         #  99    0x47f96  3      
  nop                                    #  100   0x47f99  1      
.L_48020:                                #        0x47f9a  0      
  addl 0x10(%rsp), %r14d                 #  101   0x47f9a  5      
  movl %r12d, %r12d                      #  102   0x47f9f  3      
  movl (%r15,%r12,1), %esi               #  103   0x47fa2  4      
  movl 0x14(%rsp), %edi                  #  104   0x47fa6  4      
  addl 0x10(%rsp), %edi                  #  105   0x47faa  4      
  movl 0x18(%rsp), %eax                  #  106   0x47fae  4      
  addl %r14d, %esi                       #  107   0x47fb2  3      
  cmpl $0x1, %r13d                       #  108   0x47fb5  4      
  nop                                    #  109   0x47fb9  1      
  leal 0xc(%rdi,%rax,1), %edi            #  110   0x47fba  4      
  je .L_480e0                            #  111   0x47fbe  6      
  movl %r13d, %edx                       #  112   0x47fc4  3      
  nop                                    #  113   0x47fc7  1      
  callq .memcpy                          #  114   0x47fc8  5      
  jmpq .L_47f00                          #  115   0x47fcd  5      
  nop                                    #  116   0x47fd2  1      
  nop                                    #  117   0x47fd3  1      
.L_48080:                                #        0x47fd4  0      
  movl 0x18(%rsp), %edi                  #  118   0x47fd4  4      
  movl 0x10(%rsp), %edx                  #  119   0x47fd8  4      
  movl %r12d, %r12d                      #  120   0x47fdc  3      
  movl (%r15,%r12,1), %esi               #  121   0x47fdf  4      
  addl $0xc, %edi                        #  122   0x47fe3  3      
  nop                                    #  123   0x47fe6  1      
  callq ._ZNSs7_M_copyEPcPKcj            #  124   0x47fe7  5      
  jmpq .L_47ee0                          #  125   0x47fec  5      
  nop                                    #  126   0x47ff1  1      
  nop                                    #  127   0x47ff2  1      
.L_480c0:                                #        0x47ff3  0      
  movl %esi, %esi                        #  128   0x47ff3  2      
  movzbl (%r15,%rsi,1), %eax             #  129   0x47ff5  5      
  movl %edi, %edi                        #  130   0x47ffa  2      
  movb %al, (%r15,%rdi,1)                #  131   0x47ffc  4      
  movl %r12d, %r12d                      #  132   0x48000  3      
  movl (%r15,%r12,1), %eax               #  133   0x48003  4      
  subl $0xc, %eax                        #  134   0x48007  3      
  jmpq .L_47f40                          #  135   0x4800a  5      
  nop                                    #  136   0x4800f  1      
.L_480e0:                                #        0x48010  0      
  movl %esi, %esi                        #  137   0x48010  2      
  movzbl (%r15,%rsi,1), %eax             #  138   0x48012  5      
  movl %edi, %edi                        #  139   0x48017  2      
  movb %al, (%r15,%rdi,1)                #  140   0x48019  4      
  jmpq .L_47f00                          #  141   0x4801d  5      
  nop                                    #  142   0x48022  1      
.L_48100:                                #        0x48023  0      
  movl %edi, %edi                        #  143   0x48023  2      
  movl 0x8(%r15,%rdi,1), %eax            #  144   0x48025  5      
  leal -0x1(%rax), %edx                  #  145   0x4802a  3      
  testl %eax, %eax                       #  146   0x4802d  2      
  movl %edi, %edi                        #  147   0x4802f  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  148   0x48031  5      
  jg .L_47f20                            #  149   0x48036  6      
  movl 0x8(%rsp), %esi                   #  150   0x4803c  4      
  nop                                    #  151   0x48040  1      
  nop                                    #  152   0x48041  1      
  nop                                    #  153   0x48042  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  154   0x48043  5      
  jmpq .L_47f20                          #  155   0x48048  5      
  nop                                    #  156   0x4804d  1      
  nop                                    #  157   0x4804e  1      
  movl %eax, %edi                        #  158   0x4804f  2      
  nop                                    #  159   0x48051  1      
  nop                                    #  160   0x48052  1      
  callq ._Unwind_Resume                  #  161   0x48053  5      
                                                                  
.size _ZNSs9_M_mutateEjjj, .-_ZNSs9_M_mutateEjjj

