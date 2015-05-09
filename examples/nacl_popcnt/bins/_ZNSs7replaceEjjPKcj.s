  .text
  .globl _ZNSs7replaceEjjPKcj
  .type _ZNSs7replaceEjjPKcj, @function

#! file-offset 0x48de0
#! rip-offset  0x48de0
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7replaceEjjPKcj:                   #        0x48de0  0      
  movq %r12, -0x18(%rsp)                 #  1     0x48de0  5      
  movl %edi, %r12d                       #  2     0x48de5  3      
  movq %r13, -0x10(%rsp)                 #  3     0x48de8  5      
  movq %r14, -0x8(%rsp)                  #  4     0x48ded  5      
  movq %rbx, -0x20(%rsp)                 #  5     0x48df2  5      
  movl %esi, %r13d                       #  6     0x48df7  3      
  subl $0x58, %esp                       #  7     0x48dfa  3      
  addq %r15, %rsp                        #  8     0x48dfd  3      
  movl %ecx, %esi                        #  9     0x48e00  2      
  movl %r12d, %r12d                      #  10    0x48e02  3      
  movl (%r15,%r12,1), %ecx               #  11    0x48e05  4      
  movl %r8d, %r14d                       #  12    0x48e09  3      
  leal -0xc(%rcx), %edi                  #  13    0x48e0c  3      
  movl %edi, %edi                        #  14    0x48e0f  2      
  movl (%r15,%rdi,1), %eax               #  15    0x48e11  4      
  cmpl %eax, %r13d                       #  16    0x48e15  3      
  ja .L_49080                            #  17    0x48e18  6      
  movl %eax, %ebx                        #  18    0x48e1e  2      
  subl %r13d, %ebx                       #  19    0x48e20  3      
  cmpl %edx, %ebx                        #  20    0x48e23  2      
  cmoval %edx, %ebx                      #  21    0x48e25  3      
  movl %ebx, %edx                        #  22    0x48e28  2      
  subl %eax, %edx                        #  23    0x48e2a  2      
  addl $0x3ffffffc, %edx                 #  24    0x48e2c  6      
  cmpl %edx, %r8d                        #  25    0x48e32  3      
  ja .L_49060                            #  26    0x48e35  6      
  cmpl %ecx, %esi                        #  27    0x48e3b  2      
  nop                                    #  28    0x48e3d  1      
  jae .L_48ee0                           #  29    0x48e3e  6      
  nop                                    #  30    0x48e44  1      
  nop                                    #  31    0x48e45  1      
.L_48e60:                                #        0x48e46  0      
  movl %esi, %ecx                        #  32    0x48e46  2      
  movl %r12d, %edi                       #  33    0x48e48  3      
  movl %r14d, %r8d                       #  34    0x48e4b  3      
  movl %ebx, %edx                        #  35    0x48e4e  2      
  movl %r13d, %esi                       #  36    0x48e50  3      
  nop                                    #  37    0x48e53  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  38    0x48e54  5      
  movl %eax, %r12d                       #  39    0x48e59  3      
  nop                                    #  40    0x48e5c  1      
  nop                                    #  41    0x48e5d  1      
.L_48ea0:                                #        0x48e5e  0      
  movl %r12d, %eax                       #  42    0x48e5e  3      
  movq 0x38(%rsp), %rbx                  #  43    0x48e61  5      
  movq 0x40(%rsp), %r12                  #  44    0x48e66  5      
  movq 0x48(%rsp), %r13                  #  45    0x48e6b  5      
  movq 0x50(%rsp), %r14                  #  46    0x48e70  5      
  addl $0x58, %esp                       #  47    0x48e75  3      
  addq %r15, %rsp                        #  48    0x48e78  3      
  popq %r11                              #  49    0x48e7b  3      
  nop                                    #  50    0x48e7e  1      
  andl $0xffffffe0, %r11d                #  51    0x48e7f  7      
  addq %r15, %r11                        #  52    0x48e86  3      
  jmpq %r11                              #  53    0x48e89  3      
  nop                                    #  54    0x48e8c  1      
  nop                                    #  55    0x48e8d  1      
.L_48ee0:                                #        0x48e8e  0      
  addl %ecx, %eax                        #  56    0x48e8e  2      
  cmpl %esi, %eax                        #  57    0x48e90  2      
  jb .L_48e60                            #  58    0x48e92  6      
  movl %edi, %edi                        #  59    0x48e98  2      
  movl 0x8(%r15,%rdi,1), %edi            #  60    0x48e9a  5      
  testl %edi, %edi                       #  61    0x48e9f  2      
  jg .L_48e60                            #  62    0x48ea1  6      
  leal (%r14,%rsi,1), %edx               #  63    0x48ea7  4      
  nop                                    #  64    0x48eab  1      
  leal (%r13,%rcx,1), %eax               #  65    0x48eac  5      
  cmpl %eax, %edx                        #  66    0x48eb1  2      
  ja .L_48f80                            #  67    0x48eb3  6      
  subl %ecx, %esi                        #  68    0x48eb9  2      
  movl %esi, 0x1c(%rsp)                  #  69    0x48ebb  4      
  xchgw %ax, %ax                         #  70    0x48ebf  3      
  nop                                    #  71    0x48ec2  1      
.L_48f20:                                #        0x48ec3  0      
  movl %r13d, %esi                       #  72    0x48ec3  3      
  movl %r12d, %edi                       #  73    0x48ec6  3      
  movl %r14d, %ecx                       #  74    0x48ec9  3      
  movl %ebx, %edx                        #  75    0x48ecc  2      
  nop                                    #  76    0x48ece  1      
  nop                                    #  77    0x48ecf  1      
  callq ._ZNSs9_M_mutateEjjj             #  78    0x48ed0  5      
  movl %r12d, %r12d                      #  79    0x48ed5  3      
  movl (%r15,%r12,1), %edi               #  80    0x48ed8  4      
  movl 0x1c(%rsp), %esi                  #  81    0x48edc  4      
  addl %edi, %esi                        #  82    0x48ee0  2      
  cmpl $0x1, %r14d                       #  83    0x48ee2  4      
  leal (%r13,%rdi,1), %edi               #  84    0x48ee6  5      
  je .L_48fa0                            #  85    0x48eeb  6      
  movl %r14d, %edx                       #  86    0x48ef1  3      
  callq .memcpy                          #  87    0x48ef4  5      
  jmpq .L_48ea0                          #  88    0x48ef9  5      
  nop                                    #  89    0x48efe  1      
  nop                                    #  90    0x48eff  1      
.L_48f80:                                #        0x48f00  0      
  leal (%rbx,%r13,1), %eax               #  91    0x48f00  4      
  addl %ecx, %eax                        #  92    0x48f04  2      
  cmpl %esi, %eax                        #  93    0x48f06  2      
  ja .L_48fc0                            #  94    0x48f08  6      
  movl %r14d, %eax                       #  95    0x48f0e  3      
  subl %ecx, %esi                        #  96    0x48f11  2      
  subl %ebx, %eax                        #  97    0x48f13  2      
  addl %esi, %eax                        #  98    0x48f15  2      
  movl %eax, 0x1c(%rsp)                  #  99    0x48f17  4      
  jmpq .L_48f20                          #  100   0x48f1b  5      
  nop                                    #  101   0x48f20  1      
.L_48fa0:                                #        0x48f21  0      
  movl %esi, %esi                        #  102   0x48f21  2      
  movzbl (%r15,%rsi,1), %eax             #  103   0x48f23  5      
  movl %edi, %edi                        #  104   0x48f28  2      
  movb %al, (%r15,%rdi,1)                #  105   0x48f2a  4      
  jmpq .L_48ea0                          #  106   0x48f2e  5      
  nop                                    #  107   0x48f33  1      
.L_48fc0:                                #        0x48f34  0      
  leal 0x20(%rsp), %eax                  #  108   0x48f34  4      
  leal 0x2f(%rsp), %ecx                  #  109   0x48f38  4      
  movl %r14d, %edx                       #  110   0x48f3c  3      
  movl %eax, %edi                        #  111   0x48f3f  2      
  movq %rax, 0x8(%rsp)                   #  112   0x48f41  5      
  nop                                    #  113   0x48f46  1      
  callq ._ZNSsC1EPKcjRKSaIcE             #  114   0x48f47  5      
  movl 0x20(%rsp), %ecx                  #  115   0x48f4c  4      
  movl %r14d, %r8d                       #  116   0x48f50  3      
  movl %ebx, %edx                        #  117   0x48f53  2      
  movl %r13d, %esi                       #  118   0x48f55  3      
  movl %r12d, %edi                       #  119   0x48f58  3      
  nop                                    #  120   0x48f5b  1      
  callq ._ZNSs15_M_replace_safeEjjPKcj   #  121   0x48f5c  5      
  movl 0x20(%rsp), %edi                  #  122   0x48f61  4      
  movl %eax, %r12d                       #  123   0x48f65  3      
  subl $0xc, %edi                        #  124   0x48f68  3      
  cmpl $0x10031da0, %edi                 #  125   0x48f6b  6      
  je .L_48ea0                            #  126   0x48f71  6      
  movl %edi, %edi                        #  127   0x48f77  2      
  movl 0x8(%r15,%rdi,1), %eax            #  128   0x48f79  5      
  leal -0x1(%rax), %edx                  #  129   0x48f7e  3      
  testl %eax, %eax                       #  130   0x48f81  2      
  movl %edi, %edi                        #  131   0x48f83  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  132   0x48f85  5      
  jg .L_48ea0                            #  133   0x48f8a  6      
  leal 0x2e(%rsp), %esi                  #  134   0x48f90  4      
  nop                                    #  135   0x48f94  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  136   0x48f95  5      
  jmpq .L_48ea0                          #  137   0x48f9a  5      
  nop                                    #  138   0x48f9f  1      
  nop                                    #  139   0x48fa0  1      
.L_49060:                                #        0x48fa1  0      
  movl $0x10020a54, %edi                 #  140   0x48fa1  5      
  nop                                    #  141   0x48fa6  1      
  nop                                    #  142   0x48fa7  1      
  callq ._ZSt20__throw_length_errorPKc   #  143   0x48fa8  5      
.L_49080:                                #        0x48fad  0      
  movl $0x10020a54, %edi                 #  144   0x48fad  5      
  nop                                    #  145   0x48fb2  1      
  nop                                    #  146   0x48fb3  1      
  callq ._ZSt20__throw_out_of_rangePKc   #  147   0x48fb4  5      
  movl 0x8(%rsp), %edi                   #  148   0x48fb9  4      
  movl %eax, %ebx                        #  149   0x48fbd  2      
  nop                                    #  150   0x48fbf  1      
  nop                                    #  151   0x48fc0  1      
  callq ._ZNSsD1Ev                       #  152   0x48fc1  5      
  movl %ebx, %edi                        #  153   0x48fc6  2      
  nop                                    #  154   0x48fc8  1      
  nop                                    #  155   0x48fc9  1      
  callq ._Unwind_Resume                  #  156   0x48fca  5      
  movl %eax, %edi                        #  157   0x48fcf  2      
  nop                                    #  158   0x48fd1  1      
  nop                                    #  159   0x48fd2  1      
  callq ._Unwind_Resume                  #  160   0x48fd3  5      
                                                                  
.size _ZNSs7replaceEjjPKcj, .-_ZNSs7replaceEjjPKcj

