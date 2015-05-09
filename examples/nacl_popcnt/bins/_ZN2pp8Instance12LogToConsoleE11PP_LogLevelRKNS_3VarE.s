  .text
  .globl _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE
  .type _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, @function

#! file-offset 0x21280
#! rip-offset  0x21280
#! capacity    736 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE:  #        0x21280  0      
  movq %rbx, -0x18(%rsp)                                 #  1     0x21280  5      
  movq %r12, -0x10(%rsp)                                 #  2     0x21285  5      
  movl %edx, %ebx                                        #  3     0x2128a  2      
  movq %r13, -0x8(%rsp)                                  #  4     0x2128c  5      
  subl $0x28, %esp                                       #  5     0x21291  3      
  addq %r15, %rsp                                        #  6     0x21294  3      
  cmpb $0x0, 0x1000f96a(%rip)                            #  7     0x21297  7      
  xchgw %ax, %ax                                         #  8     0x2129e  3      
  movl %esi, %r13d                                       #  9     0x212a1  3      
  movl %edi, %r12d                                       #  10    0x212a4  3      
  je .L_213a0                                            #  11    0x212a7  6      
  nop                                                    #  12    0x212ad  1      
  nop                                                    #  13    0x212ae  1      
.L_212c0:                                                #        0x212af  0      
  movl 0x1000f95b(%rip), %eax                            #  14    0x212af  6      
  testq %rax, %rax                                       #  15    0x212b5  3      
  je .L_21440                                            #  16    0x212b8  6      
  xchgw %ax, %ax                                         #  17    0x212be  3      
  nop                                                    #  18    0x212c1  1      
.L_212e0:                                                #        0x212c2  0      
  cmpb $0x0, 0x1000f93f(%rip)                            #  19    0x212c2  7      
  je .L_21360                                            #  20    0x212c9  6      
  nop                                                    #  21    0x212cf  1      
  nop                                                    #  22    0x212d0  1      
.L_21300:                                                #        0x212d1  0      
  movl %ebx, %ebx                                        #  23    0x212d1  2      
  movq 0x8(%r15,%rbx,1), %rdx                            #  24    0x212d3  5      
  movl %eax, %eax                                        #  25    0x212d8  2      
  movl (%r15,%rax,1), %eax                               #  26    0x212da  4      
  movl %r13d, %esi                                       #  27    0x212de  3      
  movq 0x20(%rsp), %r13                                  #  28    0x212e1  5      
  movq %rdx, (%rsp)                                      #  29    0x212e6  4      
  movl %ebx, %ebx                                        #  30    0x212ea  2      
  movq 0x10(%r15,%rbx,1), %rcx                           #  31    0x212ec  5      
  movq 0x10(%rsp), %rbx                                  #  32    0x212f1  5      
  movq %rcx, 0x8(%rsp)                                   #  33    0x212f6  5      
  movl %r12d, %r12d                                      #  34    0x212fb  3      
  movl 0x4(%r15,%r12,1), %edi                            #  35    0x212fe  5      
  movq 0x18(%rsp), %r12                                  #  36    0x21303  5      
  addl $0x28, %esp                                       #  37    0x21308  3      
  addq %r15, %rsp                                        #  38    0x2130b  3      
  nop                                                    #  39    0x2130e  1      
  andl $0xffffffe0, %eax                                 #  40    0x2130f  5      
  addq %r15, %rax                                        #  41    0x21314  3      
  jmpq %rax                                              #  42    0x21317  2      
  nop                                                    #  43    0x21319  1      
  nop                                                    #  44    0x2131a  1      
.L_21360:                                                #        0x2131b  0      
  movl $0x10030c08, %edi                                 #  45    0x2131b  5      
  nop                                                    #  46    0x21320  1      
  nop                                                    #  47    0x21321  1      
  callq .__cxa_guard_acquire                             #  48    0x21322  5      
  testl %eax, %eax                                       #  49    0x21327  2      
  jne .L_21480                                           #  50    0x21329  6      
  movl 0x1000f8db(%rip), %eax                            #  51    0x2132f  6      
  jmpq .L_21300                                          #  52    0x21335  5      
  nop                                                    #  53    0x2133a  1      
.L_213a0:                                                #        0x2133b  0      
  movl $0x10030c08, %edi                                 #  54    0x2133b  5      
  nop                                                    #  55    0x21340  1      
  nop                                                    #  56    0x21341  1      
  callq .__cxa_guard_acquire                             #  57    0x21342  5      
  testl %eax, %eax                                       #  58    0x21347  2      
  je .L_212c0                                            #  59    0x21349  6      
  nop                                                    #  60    0x2134f  1      
  nop                                                    #  61    0x21350  1      
  callq ._ZN2pp6Module3GetEv                             #  62    0x21351  5      
  movl %eax, %edi                                        #  63    0x21356  2      
  movl $0x100202b8, %esi                                 #  64    0x21358  5      
  nop                                                    #  65    0x2135d  1      
  nop                                                    #  66    0x2135e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  67    0x2135f  5      
  movl $0x10030c08, %edi                                 #  68    0x21364  5      
  movl %eax, 0x1000f8a1(%rip)                            #  69    0x21369  6      
  nop                                                    #  70    0x2136f  1      
  nop                                                    #  71    0x21370  1      
  callq .__cxa_guard_release                             #  72    0x21371  5      
  movl 0x1000f894(%rip), %eax                            #  73    0x21376  6      
  testq %rax, %rax                                       #  74    0x2137c  3      
  jne .L_212e0                                           #  75    0x2137f  6      
  xchgw %ax, %ax                                         #  76    0x21385  3      
  nop                                                    #  77    0x21388  1      
.L_21440:                                                #        0x21389  0      
  movq 0x10(%rsp), %rbx                                  #  78    0x21389  5      
  movq 0x18(%rsp), %r12                                  #  79    0x2138e  5      
  movq 0x20(%rsp), %r13                                  #  80    0x21393  5      
  addl $0x28, %esp                                       #  81    0x21398  3      
  addq %r15, %rsp                                        #  82    0x2139b  3      
  popq %r11                                              #  83    0x2139e  3      
  nop                                                    #  84    0x213a1  1      
  andl $0xffffffe0, %r11d                                #  85    0x213a2  7      
  addq %r15, %r11                                        #  86    0x213a9  3      
  jmpq %r11                                              #  87    0x213ac  3      
  nop                                                    #  88    0x213af  1      
  nop                                                    #  89    0x213b0  1      
.L_21480:                                                #        0x213b1  0      
  nop                                                    #  90    0x213b1  1      
  nop                                                    #  91    0x213b2  1      
  callq ._ZN2pp6Module3GetEv                             #  92    0x213b3  5      
  movl %eax, %edi                                        #  93    0x213b8  2      
  movl $0x100202b8, %esi                                 #  94    0x213ba  5      
  nop                                                    #  95    0x213bf  1      
  nop                                                    #  96    0x213c0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc          #  97    0x213c1  5      
  movl $0x10030c08, %edi                                 #  98    0x213c6  5      
  movl %eax, 0x1000f83f(%rip)                            #  99    0x213cb  6      
  nop                                                    #  100   0x213d1  1      
  nop                                                    #  101   0x213d2  1      
  callq .__cxa_guard_release                             #  102   0x213d3  5      
  movl 0x1000f832(%rip), %eax                            #  103   0x213d8  6      
  jmpq .L_21300                                          #  104   0x213de  5      
  nop                                                    #  105   0x213e3  1      
  nop                                                    #  106   0x213e4  1      
.L_21500:                                                #        0x213e5  0      
  movl %eax, %ebx                                        #  107   0x213e5  2      
  movl $0x10030c08, %edi                                 #  108   0x213e7  5      
  nop                                                    #  109   0x213ec  1      
  nop                                                    #  110   0x213ed  1      
  callq .__cxa_guard_abort                               #  111   0x213ee  5      
  movl %ebx, %edi                                        #  112   0x213f3  2      
  nop                                                    #  113   0x213f5  1      
  nop                                                    #  114   0x213f6  1      
  callq ._Unwind_Resume                                  #  115   0x213f7  5      
  jmpq .L_21500                                          #  116   0x213fc  5      
  nop                                                    #  117   0x21401  1      
  nop                                                    #  118   0x21402  1      
                                                                                  
.size _ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE, .-_ZN2pp8Instance12LogToConsoleE11PP_LogLevelRKNS_3VarE

