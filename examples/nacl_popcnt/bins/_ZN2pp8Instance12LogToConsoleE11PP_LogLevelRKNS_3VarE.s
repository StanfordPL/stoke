  .text
  .globl _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE
  .type _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, @function

#! file-offset 0x21320
#! rip-offset  0x21320
#! capacity    736 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE:  #        0x21320  0      
  movq %rbx, -0x18(%rsp)                                 #  1     0x21320  5      
  movq %r12, -0x10(%rsp)                                 #  2     0x21325  5      
  movl %edx, %ebx                                        #  3     0x2132a  2      
  movq %r13, -0x8(%rsp)                                  #  4     0x2132c  5      
  subl $0x28, %esp                                       #  5     0x21331  3      
  addq %r15, %rsp                                        #  6     0x21334  3      
  cmpb $0x0, 0x1000f8ca(%rip)                            #  7     0x21337  7      
  xchgw %ax, %ax                                         #  8     0x2133e  3      
  movl %esi, %r13d                                       #  9     0x21341  3      
  movl %edi, %r12d                                       #  10    0x21344  3      
  je .L_21440                                            #  11    0x21347  6      
  nop                                                    #  12    0x2134d  1      
  nop                                                    #  13    0x2134e  1      
.L_21360:                                                #        0x2134f  0      
  movl 0x1000f8bb(%rip), %eax                            #  14    0x2134f  6      
  testq %rax, %rax                                       #  15    0x21355  3      
  je .L_214e0                                            #  16    0x21358  6      
  xchgw %ax, %ax                                         #  17    0x2135e  3      
  nop                                                    #  18    0x21361  1      
.L_21380:                                                #        0x21362  0      
  cmpb $0x0, 0x1000f89f(%rip)                            #  19    0x21362  7      
  je .L_21400                                            #  20    0x21369  6      
  nop                                                    #  21    0x2136f  1      
  nop                                                    #  22    0x21370  1      
.L_213a0:                                                #        0x21371  0      
  movl %ebx, %ebx                                        #  23    0x21371  2      
  movq 0x8(%r15,%rbx,1), %rdx                            #  24    0x21373  5      
  movl %eax, %eax                                        #  25    0x21378  2      
  movl (%r15,%rax,1), %eax                               #  26    0x2137a  4      
  movl %r13d, %esi                                       #  27    0x2137e  3      
  movq 0x20(%rsp), %r13                                  #  28    0x21381  5      
  movq %rdx, (%rsp)                                      #  29    0x21386  4      
  movl %ebx, %ebx                                        #  30    0x2138a  2      
  movq 0x10(%r15,%rbx,1), %rcx                           #  31    0x2138c  5      
  movq 0x10(%rsp), %rbx                                  #  32    0x21391  5      
  movq %rcx, 0x8(%rsp)                                   #  33    0x21396  5      
  movl %r12d, %r12d                                      #  34    0x2139b  3      
  movl 0x4(%r15,%r12,1), %edi                            #  35    0x2139e  5      
  movq 0x18(%rsp), %r12                                  #  36    0x213a3  5      
  addl $0x28, %esp                                       #  37    0x213a8  3      
  addq %r15, %rsp                                        #  38    0x213ab  3      
  nop                                                    #  39    0x213ae  1      
  andl $0xffffffe0, %eax                                 #  40    0x213af  5      
  addq %r15, %rax                                        #  41    0x213b4  3      
  jmpq %rax                                              #  42    0x213b7  2      
  nop                                                    #  43    0x213b9  1      
  nop                                                    #  44    0x213ba  1      
.L_21400:                                                #        0x213bb  0      
  movl $0x10030c08, %edi                                 #  45    0x213bb  5      
  nop                                                    #  46    0x213c0  1      
  nop                                                    #  47    0x213c1  1      
  callq .__cxa_guard_acquire                             #  48    0x213c2  5      
  testl %eax, %eax                                       #  49    0x213c7  2      
  jne .L_21520                                           #  50    0x213c9  6      
  movl 0x1000f83b(%rip), %eax                            #  51    0x213cf  6      
  jmpq .L_213a0                                          #  52    0x213d5  5      
  nop                                                    #  53    0x213da  1      
.L_21440:                                                #        0x213db  0      
  movl $0x10030c08, %edi                                 #  54    0x213db  5      
  nop                                                    #  55    0x213e0  1      
  nop                                                    #  56    0x213e1  1      
  callq .__cxa_guard_acquire                             #  57    0x213e2  5      
  testl %eax, %eax                                       #  58    0x213e7  2      
  je .L_21360                                            #  59    0x213e9  6      
  nop                                                    #  60    0x213ef  1      
  nop                                                    #  61    0x213f0  1      
  callq ._ZN2pp6Module3GetEv                             #  62    0x213f1  5      
  movl %eax, %edi                                        #  63    0x213f6  2      
  movl $0x100202b8, %esi                                 #  64    0x213f8  5      
  nop                                                    #  65    0x213fd  1      
  nop                                                    #  66    0x213fe  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  67    0x213ff  5      
  movl $0x10030c08, %edi                                 #  68    0x21404  5      
  movl %eax, 0x1000f801(%rip)                            #  69    0x21409  6      
  nop                                                    #  70    0x2140f  1      
  nop                                                    #  71    0x21410  1      
  callq .__cxa_guard_release                             #  72    0x21411  5      
  movl 0x1000f7f4(%rip), %eax                            #  73    0x21416  6      
  testq %rax, %rax                                       #  74    0x2141c  3      
  jne .L_21380                                           #  75    0x2141f  6      
  xchgw %ax, %ax                                         #  76    0x21425  3      
  nop                                                    #  77    0x21428  1      
.L_214e0:                                                #        0x21429  0      
  movq 0x10(%rsp), %rbx                                  #  78    0x21429  5      
  movq 0x18(%rsp), %r12                                  #  79    0x2142e  5      
  movq 0x20(%rsp), %r13                                  #  80    0x21433  5      
  addl $0x28, %esp                                       #  81    0x21438  3      
  addq %r15, %rsp                                        #  82    0x2143b  3      
  popq %r11                                              #  83    0x2143e  3      
  nop                                                    #  84    0x21441  1      
  andl $0xffffffe0, %r11d                                #  85    0x21442  7      
  addq %r15, %r11                                        #  86    0x21449  3      
  jmpq %r11                                              #  87    0x2144c  3      
  nop                                                    #  88    0x2144f  1      
  nop                                                    #  89    0x21450  1      
.L_21520:                                                #        0x21451  0      
  nop                                                    #  90    0x21451  1      
  nop                                                    #  91    0x21452  1      
  callq ._ZN2pp6Module3GetEv                             #  92    0x21453  5      
  movl %eax, %edi                                        #  93    0x21458  2      
  movl $0x100202b8, %esi                                 #  94    0x2145a  5      
  nop                                                    #  95    0x2145f  1      
  nop                                                    #  96    0x21460  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  97    0x21461  5      
  movl $0x10030c08, %edi                                 #  98    0x21466  5      
  movl %eax, 0x1000f79f(%rip)                            #  99    0x2146b  6      
  nop                                                    #  100   0x21471  1      
  nop                                                    #  101   0x21472  1      
  callq .__cxa_guard_release                             #  102   0x21473  5      
  movl 0x1000f792(%rip), %eax                            #  103   0x21478  6      
  jmpq .L_213a0                                          #  104   0x2147e  5      
  nop                                                    #  105   0x21483  1      
  nop                                                    #  106   0x21484  1      
.L_215a0:                                                #        0x21485  0      
  movl %eax, %ebx                                        #  107   0x21485  2      
  movl $0x10030c08, %edi                                 #  108   0x21487  5      
  nop                                                    #  109   0x2148c  1      
  nop                                                    #  110   0x2148d  1      
  callq .__cxa_guard_abort                               #  111   0x2148e  5      
  movl %ebx, %edi                                        #  112   0x21493  2      
  nop                                                    #  113   0x21495  1      
  nop                                                    #  114   0x21496  1      
  callq ._Unwind_Resume                                  #  115   0x21497  5      
  jmpq .L_215a0                                          #  116   0x2149c  5      
  nop                                                    #  117   0x214a1  1      
  nop                                                    #  118   0x214a2  1      
                                                                                  
.size _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, .-_ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE

