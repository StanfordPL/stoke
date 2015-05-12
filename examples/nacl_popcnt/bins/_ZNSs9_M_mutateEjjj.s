  .text
  .globl _ZNSs9_M_mutateEjjj
  .type _ZNSs9_M_mutateEjjj, @function

#! file-offset 0x47e60
#! rip-offset  0x47e60
#! capacity    832 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs9_M_mutateEjjj:                    #        0x47e60  0      
  movq %r12, -0x18(%rsp)                 #  1     0x47e60  5      
  movl %edi, %r12d                       #  2     0x47e65  3      
  movq %rbx, -0x20(%rsp)                 #  3     0x47e68  5      
  movq %r14, -0x8(%rsp)                  #  4     0x47e6d  5      
  movq %r13, -0x10(%rsp)                 #  5     0x47e72  5      
  movl %edx, %r14d                       #  6     0x47e77  3      
  subl $0x58, %esp                       #  7     0x47e7a  3      
  addq %r15, %rsp                        #  8     0x47e7d  3      
  movl %r12d, %r12d                      #  9     0x47e80  3      
  movl (%r15,%r12,1), %edx               #  10    0x47e83  4      
  movl %ecx, %ebx                        #  11    0x47e87  2      
  subl %r14d, %ebx                       #  12    0x47e89  3      
  movl %esi, 0x10(%rsp)                  #  13    0x47e8c  4      
  movl %ecx, 0x14(%rsp)                  #  14    0x47e90  4      
  leal -0xc(%rdx), %eax                  #  15    0x47e94  3      
  movl %eax, %eax                        #  16    0x47e97  2      
  movl (%r15,%rax,1), %r13d              #  17    0x47e99  4      
  addl %r13d, %ebx                       #  18    0x47e9d  3      
  subl %esi, %r13d                       #  19    0x47ea0  3      
  movl %eax, %eax                        #  20    0x47ea3  2      
  movl 0x4(%r15,%rax,1), %esi            #  21    0x47ea5  5      
  subl %r14d, %r13d                      #  22    0x47eaa  3      
  cmpl %esi, %ebx                        #  23    0x47ead  2      
  jbe .L_47fc0                           #  24    0x47eaf  6      
  nop                                    #  25    0x47eb5  1      
.L_47ec0:                                #        0x47eb6  0      
  leal 0x2f(%rsp), %eax                  #  26    0x47eb6  4      
  movl %ebx, %edi                        #  27    0x47eba  2      
  movl %eax, %edx                        #  28    0x47ebc  2      
  movq %rax, 0x8(%rsp)                   #  29    0x47ebe  5      
  nop                                    #  30    0x47ec3  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  31    0x47ec4  5      
  movl 0x10(%rsp), %r11d                 #  32    0x47ec9  5      
  movl %eax, %eax                        #  33    0x47ece  2      
  movq %rax, 0x18(%rsp)                  #  34    0x47ed0  5      
  testl %r11d, %r11d                     #  35    0x47ed5  3      
  jne .L_480a0                           #  36    0x47ed8  6      
  nop                                    #  37    0x47ede  1      
.L_47f00:                                #        0x47edf  0      
  testl %r13d, %r13d                     #  38    0x47edf  3      
  jne .L_48040                           #  39    0x47ee2  6      
  nop                                    #  40    0x47ee8  1      
  nop                                    #  41    0x47ee9  1      
.L_47f20:                                #        0x47eea  0      
  movl %r12d, %r12d                      #  42    0x47eea  3      
  movl (%r15,%r12,1), %edi               #  43    0x47eed  4      
  subl $0xc, %edi                        #  44    0x47ef1  3      
  cmpl $0x10031da0, %edi                 #  45    0x47ef4  6      
  jne .L_48120                           #  46    0x47efa  6      
  nop                                    #  47    0x47f00  1      
.L_47f40:                                #        0x47f01  0      
  movl 0x18(%rsp), %eax                  #  48    0x47f01  4      
  addl $0xc, %eax                        #  49    0x47f05  3      
  movl %r12d, %r12d                      #  50    0x47f08  3      
  movl %eax, (%r15,%r12,1)               #  51    0x47f0b  4      
  subl $0xc, %eax                        #  52    0x47f0f  3      
  nop                                    #  53    0x47f12  1      
.L_47f60:                                #        0x47f13  0      
  movl %eax, %eax                        #  54    0x47f13  2      
  movl %ebx, (%r15,%rax,1)               #  55    0x47f15  4      
  addl %eax, %ebx                        #  56    0x47f19  2      
  movl %eax, %eax                        #  57    0x47f1b  2      
  movl $0x0, 0x8(%r15,%rax,1)            #  58    0x47f1d  9      
  movl %ebx, %ebx                        #  59    0x47f26  2      
  movb $0x0, 0xc(%r15,%rbx,1)            #  60    0x47f28  6      
  movq 0x38(%rsp), %rbx                  #  61    0x47f2e  5      
  movq 0x40(%rsp), %r12                  #  62    0x47f33  5      
  movq 0x48(%rsp), %r13                  #  63    0x47f38  5      
  movq 0x50(%rsp), %r14                  #  64    0x47f3d  5      
  addl $0x58, %esp                       #  65    0x47f42  3      
  addq %r15, %rsp                        #  66    0x47f45  3      
  popq %r11                              #  67    0x47f48  3      
  nop                                    #  68    0x47f4b  1      
  andl $0xffffffe0, %r11d                #  69    0x47f4c  7      
  addq %r15, %r11                        #  70    0x47f53  3      
  jmpq %r11                              #  71    0x47f56  3      
  nop                                    #  72    0x47f59  1      
  nop                                    #  73    0x47f5a  1      
.L_47fc0:                                #        0x47f5b  0      
  movl %eax, %eax                        #  74    0x47f5b  2      
  movl 0x8(%r15,%rax,1), %ecx            #  75    0x47f5d  5      
  testl %ecx, %ecx                       #  76    0x47f62  2      
  jg .L_47ec0                            #  77    0x47f64  6      
  cmpl 0x14(%rsp), %r14d                 #  78    0x47f6a  5      
  je .L_47f60                            #  79    0x47f6f  6      
  testl %r13d, %r13d                     #  80    0x47f75  3      
  je .L_47f60                            #  81    0x47f78  6      
  movl 0x14(%rsp), %edi                  #  82    0x47f7e  4      
  nop                                    #  83    0x47f82  1      
  addl 0x10(%rsp), %edi                  #  84    0x47f83  4      
  addl 0x10(%rsp), %r14d                 #  85    0x47f87  5      
  addl %edx, %edi                        #  86    0x47f8c  2      
  cmpl $0x1, %r13d                       #  87    0x47f8e  4      
  leal (%r14,%rdx,1), %esi               #  88    0x47f92  4      
  je .L_480e0                            #  89    0x47f96  6      
  movl %r13d, %edx                       #  90    0x47f9c  3      
  nop                                    #  91    0x47f9f  1      
  nop                                    #  92    0x47fa0  1      
  nop                                    #  93    0x47fa1  1      
  callq .memmove                         #  94    0x47fa2  5      
  movl %r12d, %r12d                      #  95    0x47fa7  3      
  movl (%r15,%r12,1), %eax               #  96    0x47faa  4      
  subl $0xc, %eax                        #  97    0x47fae  3      
  jmpq .L_47f60                          #  98    0x47fb1  5      
  xchgw %ax, %ax                         #  99    0x47fb6  3      
  nop                                    #  100   0x47fb9  1      
.L_48040:                                #        0x47fba  0      
  addl 0x10(%rsp), %r14d                 #  101   0x47fba  5      
  movl %r12d, %r12d                      #  102   0x47fbf  3      
  movl (%r15,%r12,1), %esi               #  103   0x47fc2  4      
  movl 0x14(%rsp), %edi                  #  104   0x47fc6  4      
  addl 0x10(%rsp), %edi                  #  105   0x47fca  4      
  movl 0x18(%rsp), %eax                  #  106   0x47fce  4      
  addl %r14d, %esi                       #  107   0x47fd2  3      
  cmpl $0x1, %r13d                       #  108   0x47fd5  4      
  nop                                    #  109   0x47fd9  1      
  leal 0xc(%rdi,%rax,1), %edi            #  110   0x47fda  4      
  je .L_48100                            #  111   0x47fde  6      
  movl %r13d, %edx                       #  112   0x47fe4  3      
  nop                                    #  113   0x47fe7  1      
  callq .memcpy                          #  114   0x47fe8  5      
  jmpq .L_47f20                          #  115   0x47fed  5      
  nop                                    #  116   0x47ff2  1      
  nop                                    #  117   0x47ff3  1      
.L_480a0:                                #        0x47ff4  0      
  movl 0x18(%rsp), %edi                  #  118   0x47ff4  4      
  movl 0x10(%rsp), %edx                  #  119   0x47ff8  4      
  movl %r12d, %r12d                      #  120   0x47ffc  3      
  movl (%r15,%r12,1), %esi               #  121   0x47fff  4      
  addl $0xc, %edi                        #  122   0x48003  3      
  nop                                    #  123   0x48006  1      
  callq ._ZNSs7_M_copyEPcPKcj            #  124   0x48007  5      
  jmpq .L_47f00                          #  125   0x4800c  5      
  nop                                    #  126   0x48011  1      
  nop                                    #  127   0x48012  1      
.L_480e0:                                #        0x48013  0      
  movl %esi, %esi                        #  128   0x48013  2      
  movzbl (%r15,%rsi,1), %eax             #  129   0x48015  5      
  movl %edi, %edi                        #  130   0x4801a  2      
  movb %al, (%r15,%rdi,1)                #  131   0x4801c  4      
  movl %r12d, %r12d                      #  132   0x48020  3      
  movl (%r15,%r12,1), %eax               #  133   0x48023  4      
  subl $0xc, %eax                        #  134   0x48027  3      
  jmpq .L_47f60                          #  135   0x4802a  5      
  nop                                    #  136   0x4802f  1      
.L_48100:                                #        0x48030  0      
  movl %esi, %esi                        #  137   0x48030  2      
  movzbl (%r15,%rsi,1), %eax             #  138   0x48032  5      
  movl %edi, %edi                        #  139   0x48037  2      
  movb %al, (%r15,%rdi,1)                #  140   0x48039  4      
  jmpq .L_47f20                          #  141   0x4803d  5      
  nop                                    #  142   0x48042  1      
.L_48120:                                #        0x48043  0      
  movl %edi, %edi                        #  143   0x48043  2      
  movl 0x8(%r15,%rdi,1), %eax            #  144   0x48045  5      
  leal -0x1(%rax), %edx                  #  145   0x4804a  3      
  testl %eax, %eax                       #  146   0x4804d  2      
  movl %edi, %edi                        #  147   0x4804f  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  148   0x48051  5      
  jg .L_47f40                            #  149   0x48056  6      
  movl 0x8(%rsp), %esi                   #  150   0x4805c  4      
  nop                                    #  151   0x48060  1      
  nop                                    #  152   0x48061  1      
  nop                                    #  153   0x48062  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  154   0x48063  5      
  jmpq .L_47f40                          #  155   0x48068  5      
  nop                                    #  156   0x4806d  1      
  nop                                    #  157   0x4806e  1      
  movl %eax, %edi                        #  158   0x4806f  2      
  nop                                    #  159   0x48071  1      
  nop                                    #  160   0x48072  1      
  callq ._Unwind_Resume                  #  161   0x48073  5      
                                                                  
.size _ZNSs9_M_mutateEjjj, .-_ZNSs9_M_mutateEjjj

