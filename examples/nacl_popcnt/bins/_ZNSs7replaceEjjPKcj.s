  .text
  .globl _ZNSs7replaceEjjPKcj
  .type _ZNSs7replaceEjjPKcj, @function

#! file-offset 0x48e80
#! rip-offset  0x48e80
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7replaceEjjPKcj:                   #        0x48e80  0      
  movq %r12, -0x18(%rsp)                 #  1     0x48e80  5      
  movl %edi, %r12d                       #  2     0x48e85  3      
  movq %r13, -0x10(%rsp)                 #  3     0x48e88  5      
  movq %r14, -0x8(%rsp)                  #  4     0x48e8d  5      
  movq %rbx, -0x20(%rsp)                 #  5     0x48e92  5      
  movl %esi, %r13d                       #  6     0x48e97  3      
  subl $0x58, %esp                       #  7     0x48e9a  3      
  addq %r15, %rsp                        #  8     0x48e9d  3      
  movl %ecx, %esi                        #  9     0x48ea0  2      
  movl %r12d, %r12d                      #  10    0x48ea2  3      
  movl (%r15,%r12,1), %ecx               #  11    0x48ea5  4      
  movl %r8d, %r14d                       #  12    0x48ea9  3      
  leal -0xc(%rcx), %edi                  #  13    0x48eac  3      
  movl %edi, %edi                        #  14    0x48eaf  2      
  movl (%r15,%rdi,1), %eax               #  15    0x48eb1  4      
  cmpl %eax, %r13d                       #  16    0x48eb5  3      
  ja .L_49120                            #  17    0x48eb8  6      
  movl %eax, %ebx                        #  18    0x48ebe  2      
  subl %r13d, %ebx                       #  19    0x48ec0  3      
  cmpl %edx, %ebx                        #  20    0x48ec3  2      
  cmoval %edx, %ebx                      #  21    0x48ec5  3      
  movl %ebx, %edx                        #  22    0x48ec8  2      
  subl %eax, %edx                        #  23    0x48eca  2      
  addl $0x3ffffffc, %edx                 #  24    0x48ecc  6      
  cmpl %edx, %r8d                        #  25    0x48ed2  3      
  ja .L_49100                            #  26    0x48ed5  6      
  cmpl %ecx, %esi                        #  27    0x48edb  2      
  nop                                    #  28    0x48edd  1      
  jae .L_48f80                           #  29    0x48ede  6      
  nop                                    #  30    0x48ee4  1      
  nop                                    #  31    0x48ee5  1      
.L_48f00:                                #        0x48ee6  0      
  movl %esi, %ecx                        #  32    0x48ee6  2      
  movl %r12d, %edi                       #  33    0x48ee8  3      
  movl %r14d, %r8d                       #  34    0x48eeb  3      
  movl %ebx, %edx                        #  35    0x48eee  2      
  movl %r13d, %esi                       #  36    0x48ef0  3      
  nop                                    #  37    0x48ef3  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  38    0x48ef4  5      
  movl %eax, %r12d                       #  39    0x48ef9  3      
  nop                                    #  40    0x48efc  1      
  nop                                    #  41    0x48efd  1      
.L_48f40:                                #        0x48efe  0      
  movl %r12d, %eax                       #  42    0x48efe  3      
  movq 0x38(%rsp), %rbx                  #  43    0x48f01  5      
  movq 0x40(%rsp), %r12                  #  44    0x48f06  5      
  movq 0x48(%rsp), %r13                  #  45    0x48f0b  5      
  movq 0x50(%rsp), %r14                  #  46    0x48f10  5      
  addl $0x58, %esp                       #  47    0x48f15  3      
  addq %r15, %rsp                        #  48    0x48f18  3      
  popq %r11                              #  49    0x48f1b  3      
  nop                                    #  50    0x48f1e  1      
  andl $0xffffffe0, %r11d                #  51    0x48f1f  7      
  addq %r15, %r11                        #  52    0x48f26  3      
  jmpq %r11                              #  53    0x48f29  3      
  nop                                    #  54    0x48f2c  1      
  nop                                    #  55    0x48f2d  1      
.L_48f80:                                #        0x48f2e  0      
  addl %ecx, %eax                        #  56    0x48f2e  2      
  cmpl %esi, %eax                        #  57    0x48f30  2      
  jb .L_48f00                            #  58    0x48f32  6      
  movl %edi, %edi                        #  59    0x48f38  2      
  movl 0x8(%r15,%rdi,1), %edi            #  60    0x48f3a  5      
  testl %edi, %edi                       #  61    0x48f3f  2      
  jg .L_48f00                            #  62    0x48f41  6      
  leal (%r14,%rsi,1), %edx               #  63    0x48f47  4      
  nop                                    #  64    0x48f4b  1      
  leal (%r13,%rcx,1), %eax               #  65    0x48f4c  5      
  cmpl %eax, %edx                        #  66    0x48f51  2      
  ja .L_49020                            #  67    0x48f53  6      
  subl %ecx, %esi                        #  68    0x48f59  2      
  movl %esi, 0x1c(%rsp)                  #  69    0x48f5b  4      
  xchgw %ax, %ax                         #  70    0x48f5f  3      
  nop                                    #  71    0x48f62  1      
.L_48fc0:                                #        0x48f63  0      
  movl %r13d, %esi                       #  72    0x48f63  3      
  movl %r12d, %edi                       #  73    0x48f66  3      
  movl %r14d, %ecx                       #  74    0x48f69  3      
  movl %ebx, %edx                        #  75    0x48f6c  2      
  nop                                    #  76    0x48f6e  1      
  nop                                    #  77    0x48f6f  1      
  callq ._ZNSs9_M_mutateEjjj             #  78    0x48f70  5      
  movl %r12d, %r12d                      #  79    0x48f75  3      
  movl (%r15,%r12,1), %edi               #  80    0x48f78  4      
  movl 0x1c(%rsp), %esi                  #  81    0x48f7c  4      
  addl %edi, %esi                        #  82    0x48f80  2      
  cmpl $0x1, %r14d                       #  83    0x48f82  4      
  leal (%r13,%rdi,1), %edi               #  84    0x48f86  5      
  je .L_49040                            #  85    0x48f8b  6      
  movl %r14d, %edx                       #  86    0x48f91  3      
  callq .memcpy                          #  87    0x48f94  5      
  jmpq .L_48f40                          #  88    0x48f99  5      
  nop                                    #  89    0x48f9e  1      
  nop                                    #  90    0x48f9f  1      
.L_49020:                                #        0x48fa0  0      
  leal (%rbx,%r13,1), %eax               #  91    0x48fa0  4      
  addl %ecx, %eax                        #  92    0x48fa4  2      
  cmpl %esi, %eax                        #  93    0x48fa6  2      
  ja .L_49060                            #  94    0x48fa8  6      
  movl %r14d, %eax                       #  95    0x48fae  3      
  subl %ecx, %esi                        #  96    0x48fb1  2      
  subl %ebx, %eax                        #  97    0x48fb3  2      
  addl %esi, %eax                        #  98    0x48fb5  2      
  movl %eax, 0x1c(%rsp)                  #  99    0x48fb7  4      
  jmpq .L_48fc0                          #  100   0x48fbb  5      
  nop                                    #  101   0x48fc0  1      
.L_49040:                                #        0x48fc1  0      
  movl %esi, %esi                        #  102   0x48fc1  2      
  movzbl (%r15,%rsi,1), %eax             #  103   0x48fc3  5      
  movl %edi, %edi                        #  104   0x48fc8  2      
  movb %al, (%r15,%rdi,1)                #  105   0x48fca  4      
  jmpq .L_48f40                          #  106   0x48fce  5      
  nop                                    #  107   0x48fd3  1      
.L_49060:                                #        0x48fd4  0      
  leal 0x20(%rsp), %eax                  #  108   0x48fd4  4      
  leal 0x2f(%rsp), %ecx                  #  109   0x48fd8  4      
  movl %r14d, %edx                       #  110   0x48fdc  3      
  movl %eax, %edi                        #  111   0x48fdf  2      
  movq %rax, 0x8(%rsp)                   #  112   0x48fe1  5      
  nop                                    #  113   0x48fe6  1      
  callq ._ZNSsC1EPKcjRKSaIcE             #  114   0x48fe7  5      
  movl 0x20(%rsp), %ecx                  #  115   0x48fec  4      
  movl %r14d, %r8d                       #  116   0x48ff0  3      
  movl %ebx, %edx                        #  117   0x48ff3  2      
  movl %r13d, %esi                       #  118   0x48ff5  3      
  movl %r12d, %edi                       #  119   0x48ff8  3      
  nop                                    #  120   0x48ffb  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  121   0x48ffc  5      
  movl 0x20(%rsp), %edi                  #  122   0x49001  4      
  movl %eax, %r12d                       #  123   0x49005  3      
  subl $0xc, %edi                        #  124   0x49008  3      
  cmpl $0x10031da0, %edi                 #  125   0x4900b  6      
  je .L_48f40                            #  126   0x49011  6      
  movl %edi, %edi                        #  127   0x49017  2      
  movl 0x8(%r15,%rdi,1), %eax            #  128   0x49019  5      
  leal -0x1(%rax), %edx                  #  129   0x4901e  3      
  testl %eax, %eax                       #  130   0x49021  2      
  movl %edi, %edi                        #  131   0x49023  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  132   0x49025  5      
  jg .L_48f40                            #  133   0x4902a  6      
  leal 0x2e(%rsp), %esi                  #  134   0x49030  4      
  nop                                    #  135   0x49034  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  136   0x49035  5      
  jmpq .L_48f40                          #  137   0x4903a  5      
  nop                                    #  138   0x4903f  1      
  nop                                    #  139   0x49040  1      
.L_49100:                                #        0x49041  0      
  movl $0x10020a54, %edi                 #  140   0x49041  5      
  nop                                    #  141   0x49046  1      
  nop                                    #  142   0x49047  1      
  callq ._ZSt20__throw_length_errorPKc   #  143   0x49048  5      
.L_49120:                                #        0x4904d  0      
  movl $0x10020a54, %edi                 #  144   0x4904d  5      
  nop                                    #  145   0x49052  1      
  nop                                    #  146   0x49053  1      
  callq ._ZSt20__throw_out_of_rangePKc   #  147   0x49054  5      
  movl 0x8(%rsp), %edi                   #  148   0x49059  4      
  movl %eax, %ebx                        #  149   0x4905d  2      
  nop                                    #  150   0x4905f  1      
  nop                                    #  151   0x49060  1      
  callq ._ZNSsD1Ev                       #  152   0x49061  5      
  movl %ebx, %edi                        #  153   0x49066  2      
  nop                                    #  154   0x49068  1      
  nop                                    #  155   0x49069  1      
  callq ._Unwind_Resume                  #  156   0x4906a  5      
  movl %eax, %edi                        #  157   0x4906f  2      
  nop                                    #  158   0x49071  1      
  nop                                    #  159   0x49072  1      
  callq ._Unwind_Resume                  #  160   0x49073  5      
                                                                  
.size _ZNSs7replaceEjjPKcj, .-_ZNSs7replaceEjjPKcj

