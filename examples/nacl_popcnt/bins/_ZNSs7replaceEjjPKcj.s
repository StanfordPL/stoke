  .text
  .globl _ZNSs7replaceEjjPKcj
  .type _ZNSs7replaceEjjPKcj, @function

#! file-offset 0x48e00
#! rip-offset  0x48e00
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7replaceEjjPKcj:                   #        0x48e00  0      
  movq %r12, -0x18(%rsp)                 #  1     0x48e00  5      
  movl %edi, %r12d                       #  2     0x48e05  3      
  movq %r13, -0x10(%rsp)                 #  3     0x48e08  5      
  movq %r14, -0x8(%rsp)                  #  4     0x48e0d  5      
  movq %rbx, -0x20(%rsp)                 #  5     0x48e12  5      
  movl %esi, %r13d                       #  6     0x48e17  3      
  subl $0x58, %esp                       #  7     0x48e1a  3      
  addq %r15, %rsp                        #  8     0x48e1d  3      
  movl %ecx, %esi                        #  9     0x48e20  2      
  movl %r12d, %r12d                      #  10    0x48e22  3      
  movl (%r15,%r12,1), %ecx               #  11    0x48e25  4      
  movl %r8d, %r14d                       #  12    0x48e29  3      
  leal -0xc(%rcx), %edi                  #  13    0x48e2c  3      
  movl %edi, %edi                        #  14    0x48e2f  2      
  movl (%r15,%rdi,1), %eax               #  15    0x48e31  4      
  cmpl %eax, %r13d                       #  16    0x48e35  3      
  ja .L_490a0                            #  17    0x48e38  6      
  movl %eax, %ebx                        #  18    0x48e3e  2      
  subl %r13d, %ebx                       #  19    0x48e40  3      
  cmpl %edx, %ebx                        #  20    0x48e43  2      
  cmoval %edx, %ebx                      #  21    0x48e45  3      
  movl %ebx, %edx                        #  22    0x48e48  2      
  subl %eax, %edx                        #  23    0x48e4a  2      
  addl $0x3ffffffc, %edx                 #  24    0x48e4c  6      
  cmpl %edx, %r8d                        #  25    0x48e52  3      
  ja .L_49080                            #  26    0x48e55  6      
  cmpl %ecx, %esi                        #  27    0x48e5b  2      
  nop                                    #  28    0x48e5d  1      
  jae .L_48f00                           #  29    0x48e5e  6      
  nop                                    #  30    0x48e64  1      
  nop                                    #  31    0x48e65  1      
.L_48e80:                                #        0x48e66  0      
  movl %esi, %ecx                        #  32    0x48e66  2      
  movl %r12d, %edi                       #  33    0x48e68  3      
  movl %r14d, %r8d                       #  34    0x48e6b  3      
  movl %ebx, %edx                        #  35    0x48e6e  2      
  movl %r13d, %esi                       #  36    0x48e70  3      
  nop                                    #  37    0x48e73  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  38    0x48e74  5      
  movl %eax, %r12d                       #  39    0x48e79  3      
  nop                                    #  40    0x48e7c  1      
  nop                                    #  41    0x48e7d  1      
.L_48ec0:                                #        0x48e7e  0      
  movl %r12d, %eax                       #  42    0x48e7e  3      
  movq 0x38(%rsp), %rbx                  #  43    0x48e81  5      
  movq 0x40(%rsp), %r12                  #  44    0x48e86  5      
  movq 0x48(%rsp), %r13                  #  45    0x48e8b  5      
  movq 0x50(%rsp), %r14                  #  46    0x48e90  5      
  addl $0x58, %esp                       #  47    0x48e95  3      
  addq %r15, %rsp                        #  48    0x48e98  3      
  popq %r11                              #  49    0x48e9b  3      
  nop                                    #  50    0x48e9e  1      
  andl $0xffffffe0, %r11d                #  51    0x48e9f  7      
  addq %r15, %r11                        #  52    0x48ea6  3      
  jmpq %r11                              #  53    0x48ea9  3      
  nop                                    #  54    0x48eac  1      
  nop                                    #  55    0x48ead  1      
.L_48f00:                                #        0x48eae  0      
  addl %ecx, %eax                        #  56    0x48eae  2      
  cmpl %esi, %eax                        #  57    0x48eb0  2      
  jb .L_48e80                            #  58    0x48eb2  6      
  movl %edi, %edi                        #  59    0x48eb8  2      
  movl 0x8(%r15,%rdi,1), %edi            #  60    0x48eba  5      
  testl %edi, %edi                       #  61    0x48ebf  2      
  jg .L_48e80                            #  62    0x48ec1  6      
  leal (%r14,%rsi,1), %edx               #  63    0x48ec7  4      
  nop                                    #  64    0x48ecb  1      
  leal (%r13,%rcx,1), %eax               #  65    0x48ecc  5      
  cmpl %eax, %edx                        #  66    0x48ed1  2      
  ja .L_48fa0                            #  67    0x48ed3  6      
  subl %ecx, %esi                        #  68    0x48ed9  2      
  movl %esi, 0x1c(%rsp)                  #  69    0x48edb  4      
  xchgw %ax, %ax                         #  70    0x48edf  3      
  nop                                    #  71    0x48ee2  1      
.L_48f40:                                #        0x48ee3  0      
  movl %r13d, %esi                       #  72    0x48ee3  3      
  movl %r12d, %edi                       #  73    0x48ee6  3      
  movl %r14d, %ecx                       #  74    0x48ee9  3      
  movl %ebx, %edx                        #  75    0x48eec  2      
  nop                                    #  76    0x48eee  1      
  nop                                    #  77    0x48eef  1      
  callq ._ZNSs9_M_mutateEjjj             #  78    0x48ef0  5      
  movl %r12d, %r12d                      #  79    0x48ef5  3      
  movl (%r15,%r12,1), %edi               #  80    0x48ef8  4      
  movl 0x1c(%rsp), %esi                  #  81    0x48efc  4      
  addl %edi, %esi                        #  82    0x48f00  2      
  cmpl $0x1, %r14d                       #  83    0x48f02  4      
  leal (%r13,%rdi,1), %edi               #  84    0x48f06  5      
  je .L_48fc0                            #  85    0x48f0b  6      
  movl %r14d, %edx                       #  86    0x48f11  3      
  callq .memcpy                          #  87    0x48f14  5      
  jmpq .L_48ec0                          #  88    0x48f19  5      
  nop                                    #  89    0x48f1e  1      
  nop                                    #  90    0x48f1f  1      
.L_48fa0:                                #        0x48f20  0      
  leal (%rbx,%r13,1), %eax               #  91    0x48f20  4      
  addl %ecx, %eax                        #  92    0x48f24  2      
  cmpl %esi, %eax                        #  93    0x48f26  2      
  ja .L_48fe0                            #  94    0x48f28  6      
  movl %r14d, %eax                       #  95    0x48f2e  3      
  subl %ecx, %esi                        #  96    0x48f31  2      
  subl %ebx, %eax                        #  97    0x48f33  2      
  addl %esi, %eax                        #  98    0x48f35  2      
  movl %eax, 0x1c(%rsp)                  #  99    0x48f37  4      
  jmpq .L_48f40                          #  100   0x48f3b  5      
  nop                                    #  101   0x48f40  1      
.L_48fc0:                                #        0x48f41  0      
  movl %esi, %esi                        #  102   0x48f41  2      
  movzbl (%r15,%rsi,1), %eax             #  103   0x48f43  5      
  movl %edi, %edi                        #  104   0x48f48  2      
  movb %al, (%r15,%rdi,1)                #  105   0x48f4a  4      
  jmpq .L_48ec0                          #  106   0x48f4e  5      
  nop                                    #  107   0x48f53  1      
.L_48fe0:                                #        0x48f54  0      
  leal 0x20(%rsp), %eax                  #  108   0x48f54  4      
  leal 0x2f(%rsp), %ecx                  #  109   0x48f58  4      
  movl %r14d, %edx                       #  110   0x48f5c  3      
  movl %eax, %edi                        #  111   0x48f5f  2      
  movq %rax, 0x8(%rsp)                   #  112   0x48f61  5      
  nop                                    #  113   0x48f66  1      
  callq ._ZNSsC1EPKcjRKSaIcE             #  114   0x48f67  5      
  movl 0x20(%rsp), %ecx                  #  115   0x48f6c  4      
  movl %r14d, %r8d                       #  116   0x48f70  3      
  movl %ebx, %edx                        #  117   0x48f73  2      
  movl %r13d, %esi                       #  118   0x48f75  3      
  movl %r12d, %edi                       #  119   0x48f78  3      
  nop                                    #  120   0x48f7b  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  121   0x48f7c  5      
  movl 0x20(%rsp), %edi                  #  122   0x48f81  4      
  movl %eax, %r12d                       #  123   0x48f85  3      
  subl $0xc, %edi                        #  124   0x48f88  3      
  cmpl $0x10031da0, %edi                 #  125   0x48f8b  6      
  je .L_48ec0                            #  126   0x48f91  6      
  movl %edi, %edi                        #  127   0x48f97  2      
  movl 0x8(%r15,%rdi,1), %eax            #  128   0x48f99  5      
  leal -0x1(%rax), %edx                  #  129   0x48f9e  3      
  testl %eax, %eax                       #  130   0x48fa1  2      
  movl %edi, %edi                        #  131   0x48fa3  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  132   0x48fa5  5      
  jg .L_48ec0                            #  133   0x48faa  6      
  leal 0x2e(%rsp), %esi                  #  134   0x48fb0  4      
  nop                                    #  135   0x48fb4  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  136   0x48fb5  5      
  jmpq .L_48ec0                          #  137   0x48fba  5      
  nop                                    #  138   0x48fbf  1      
  nop                                    #  139   0x48fc0  1      
.L_49080:                                #        0x48fc1  0      
  movl $0x10020a54, %edi                 #  140   0x48fc1  5      
  nop                                    #  141   0x48fc6  1      
  nop                                    #  142   0x48fc7  1      
  callq ._ZSt20__throw_length_errorPKc   #  143   0x48fc8  5      
.L_490a0:                                #        0x48fcd  0      
  movl $0x10020a54, %edi                 #  144   0x48fcd  5      
  nop                                    #  145   0x48fd2  1      
  nop                                    #  146   0x48fd3  1      
  callq ._ZSt20__throw_out_of_rangePKc   #  147   0x48fd4  5      
  movl 0x8(%rsp), %edi                   #  148   0x48fd9  4      
  movl %eax, %ebx                        #  149   0x48fdd  2      
  nop                                    #  150   0x48fdf  1      
  nop                                    #  151   0x48fe0  1      
  callq ._ZNSsD1Ev                       #  152   0x48fe1  5      
  movl %ebx, %edi                        #  153   0x48fe6  2      
  nop                                    #  154   0x48fe8  1      
  nop                                    #  155   0x48fe9  1      
  callq ._Unwind_Resume                  #  156   0x48fea  5      
  movl %eax, %edi                        #  157   0x48fef  2      
  nop                                    #  158   0x48ff1  1      
  nop                                    #  159   0x48ff2  1      
  callq ._Unwind_Resume                  #  160   0x48ff3  5      
                                                                  
.size _ZNSs7replaceEjjPKcj, .-_ZNSs7replaceEjjPKcj

