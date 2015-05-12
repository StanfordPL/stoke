  .text
  .globl _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE
  .type _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, @function

#! file-offset 0x212a0
#! rip-offset  0x212a0
#! capacity    736 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE:  #        0x212a0  0      
  movq %rbx, -0x18(%rsp)                                 #  1     0x212a0  5      
  movq %r12, -0x10(%rsp)                                 #  2     0x212a5  5      
  movl %edx, %ebx                                        #  3     0x212aa  2      
  movq %r13, -0x8(%rsp)                                  #  4     0x212ac  5      
  subl $0x28, %esp                                       #  5     0x212b1  3      
  addq %r15, %rsp                                        #  6     0x212b4  3      
  cmpb $0x0, 0x1000f94a(%rip)                            #  7     0x212b7  7      
  xchgw %ax, %ax                                         #  8     0x212be  3      
  movl %esi, %r13d                                       #  9     0x212c1  3      
  movl %edi, %r12d                                       #  10    0x212c4  3      
  je .L_213c0                                            #  11    0x212c7  6      
  nop                                                    #  12    0x212cd  1      
  nop                                                    #  13    0x212ce  1      
.L_212e0:                                                #        0x212cf  0      
  movl 0x1000f93b(%rip), %eax                            #  14    0x212cf  6      
  testq %rax, %rax                                       #  15    0x212d5  3      
  je .L_21460                                            #  16    0x212d8  6      
  xchgw %ax, %ax                                         #  17    0x212de  3      
  nop                                                    #  18    0x212e1  1      
.L_21300:                                                #        0x212e2  0      
  cmpb $0x0, 0x1000f91f(%rip)                            #  19    0x212e2  7      
  je .L_21380                                            #  20    0x212e9  6      
  nop                                                    #  21    0x212ef  1      
  nop                                                    #  22    0x212f0  1      
.L_21320:                                                #        0x212f1  0      
  movl %ebx, %ebx                                        #  23    0x212f1  2      
  movq 0x8(%r15,%rbx,1), %rdx                            #  24    0x212f3  5      
  movl %eax, %eax                                        #  25    0x212f8  2      
  movl (%r15,%rax,1), %eax                               #  26    0x212fa  4      
  movl %r13d, %esi                                       #  27    0x212fe  3      
  movq 0x20(%rsp), %r13                                  #  28    0x21301  5      
  movq %rdx, (%rsp)                                      #  29    0x21306  4      
  movl %ebx, %ebx                                        #  30    0x2130a  2      
  movq 0x10(%r15,%rbx,1), %rcx                           #  31    0x2130c  5      
  movq 0x10(%rsp), %rbx                                  #  32    0x21311  5      
  movq %rcx, 0x8(%rsp)                                   #  33    0x21316  5      
  movl %r12d, %r12d                                      #  34    0x2131b  3      
  movl 0x4(%r15,%r12,1), %edi                            #  35    0x2131e  5      
  movq 0x18(%rsp), %r12                                  #  36    0x21323  5      
  addl $0x28, %esp                                       #  37    0x21328  3      
  addq %r15, %rsp                                        #  38    0x2132b  3      
  nop                                                    #  39    0x2132e  1      
  andl $0xffffffe0, %eax                                 #  40    0x2132f  5      
  addq %r15, %rax                                        #  41    0x21334  3      
  jmpq %rax                                              #  42    0x21337  2      
  nop                                                    #  43    0x21339  1      
  nop                                                    #  44    0x2133a  1      
.L_21380:                                                #        0x2133b  0      
  movl $0x10030c08, %edi                                 #  45    0x2133b  5      
  nop                                                    #  46    0x21340  1      
  nop                                                    #  47    0x21341  1      
  callq .__cxa_guard_acquire                             #  48    0x21342  5      
  testl %eax, %eax                                       #  49    0x21347  2      
  jne .L_214a0                                           #  50    0x21349  6      
  movl 0x1000f8bb(%rip), %eax                            #  51    0x2134f  6      
  jmpq .L_21320                                          #  52    0x21355  5      
  nop                                                    #  53    0x2135a  1      
.L_213c0:                                                #        0x2135b  0      
  movl $0x10030c08, %edi                                 #  54    0x2135b  5      
  nop                                                    #  55    0x21360  1      
  nop                                                    #  56    0x21361  1      
  callq .__cxa_guard_acquire                             #  57    0x21362  5      
  testl %eax, %eax                                       #  58    0x21367  2      
  je .L_212e0                                            #  59    0x21369  6      
  nop                                                    #  60    0x2136f  1      
  nop                                                    #  61    0x21370  1      
  callq ._ZN2pp6Module3GetEv                             #  62    0x21371  5      
  movl %eax, %edi                                        #  63    0x21376  2      
  movl $0x100202b8, %esi                                 #  64    0x21378  5      
  nop                                                    #  65    0x2137d  1      
  nop                                                    #  66    0x2137e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  67    0x2137f  5      
  movl $0x10030c08, %edi                                 #  68    0x21384  5      
  movl %eax, 0x1000f881(%rip)                            #  69    0x21389  6      
  nop                                                    #  70    0x2138f  1      
  nop                                                    #  71    0x21390  1      
  callq .__cxa_guard_release                             #  72    0x21391  5      
  movl 0x1000f874(%rip), %eax                            #  73    0x21396  6      
  testq %rax, %rax                                       #  74    0x2139c  3      
  jne .L_21300                                           #  75    0x2139f  6      
  xchgw %ax, %ax                                         #  76    0x213a5  3      
  nop                                                    #  77    0x213a8  1      
.L_21460:                                                #        0x213a9  0      
  movq 0x10(%rsp), %rbx                                  #  78    0x213a9  5      
  movq 0x18(%rsp), %r12                                  #  79    0x213ae  5      
  movq 0x20(%rsp), %r13                                  #  80    0x213b3  5      
  addl $0x28, %esp                                       #  81    0x213b8  3      
  addq %r15, %rsp                                        #  82    0x213bb  3      
  popq %r11                                              #  83    0x213be  3      
  nop                                                    #  84    0x213c1  1      
  andl $0xffffffe0, %r11d                                #  85    0x213c2  7      
  addq %r15, %r11                                        #  86    0x213c9  3      
  jmpq %r11                                              #  87    0x213cc  3      
  nop                                                    #  88    0x213cf  1      
  nop                                                    #  89    0x213d0  1      
.L_214a0:                                                #        0x213d1  0      
  nop                                                    #  90    0x213d1  1      
  nop                                                    #  91    0x213d2  1      
  callq ._ZN2pp6Module3GetEv                             #  92    0x213d3  5      
  movl %eax, %edi                                        #  93    0x213d8  2      
  movl $0x100202b8, %esi                                 #  94    0x213da  5      
  nop                                                    #  95    0x213df  1      
  nop                                                    #  96    0x213e0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  97    0x213e1  5      
  movl $0x10030c08, %edi                                 #  98    0x213e6  5      
  movl %eax, 0x1000f81f(%rip)                            #  99    0x213eb  6      
  nop                                                    #  100   0x213f1  1      
  nop                                                    #  101   0x213f2  1      
  callq .__cxa_guard_release                             #  102   0x213f3  5      
  movl 0x1000f812(%rip), %eax                            #  103   0x213f8  6      
  jmpq .L_21320                                          #  104   0x213fe  5      
  nop                                                    #  105   0x21403  1      
  nop                                                    #  106   0x21404  1      
.L_21520:                                                #        0x21405  0      
  movl %eax, %ebx                                        #  107   0x21405  2      
  movl $0x10030c08, %edi                                 #  108   0x21407  5      
  nop                                                    #  109   0x2140c  1      
  nop                                                    #  110   0x2140d  1      
  callq .__cxa_guard_abort                               #  111   0x2140e  5      
  movl %ebx, %edi                                        #  112   0x21413  2      
  nop                                                    #  113   0x21415  1      
  nop                                                    #  114   0x21416  1      
  callq ._Unwind_Resume                                  #  115   0x21417  5      
  jmpq .L_21520                                          #  116   0x2141c  5      
  nop                                                    #  117   0x21421  1      
  nop                                                    #  118   0x21422  1      
                                                                                  
.size _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, .-_ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE

