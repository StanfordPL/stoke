  .text
  .globl _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, @function

#! file-offset 0x27380
#! rip-offset  0x27380
#! capacity    896 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE:   #        0x27380  0      
  movq %rbx, -0x20(%rsp)                                             #  1     0x27380  5      
  movq %r12, -0x18(%rsp)                                             #  2     0x27385  5      
  movl %ecx, %ebx                                                    #  3     0x2738a  2      
  movq %r13, -0x10(%rsp)                                             #  4     0x2738c  5      
  movq %r14, -0x8(%rsp)                                              #  5     0x27391  5      
  subl $0x38, %esp                                                   #  6     0x27396  3      
  addq %r15, %rsp                                                    #  7     0x27399  3      
  nop                                                                #  8     0x2739c  1      
  cmpb $0x0, 0x100098bc(%rip)                                        #  9     0x2739d  7      
  movl %edx, %r13d                                                   #  10    0x273a4  3      
  movl %edi, %r12d                                                   #  11    0x273a7  3      
  movl %esi, %r14d                                                   #  12    0x273aa  3      
  je .L_27560                                                        #  13    0x273ad  6      
  nop                                                                #  14    0x273b3  1      
.L_273c0:                                                            #        0x273b4  0      
  movl 0x100098ae(%rip), %eax                                        #  15    0x273b4  6      
  testq %rax, %rax                                                   #  16    0x273ba  3      
  je .L_274a0                                                        #  17    0x273bd  6      
  cmpb $0x0, 0x10009896(%rip)                                        #  18    0x273c3  7      
  je .L_27440                                                        #  19    0x273ca  6      
  nop                                                                #  20    0x273d0  1      
.L_273e0:                                                            #        0x273d1  0      
  movl %ebx, %ebx                                                    #  21    0x273d1  2      
  movq (%r15,%rbx,1), %rcx                                           #  22    0x273d3  4      
  movl %eax, %eax                                                    #  23    0x273d7  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  24    0x273d9  5      
  movl %r13d, %edx                                                   #  25    0x273de  3      
  movl %r14d, %esi                                                   #  26    0x273e1  3      
  movq 0x28(%rsp), %r13                                              #  27    0x273e4  5      
  movq 0x30(%rsp), %r14                                              #  28    0x273e9  5      
  nop                                                                #  29    0x273ee  1      
  movq %rcx, (%rsp)                                                  #  30    0x273ef  4      
  movl %ebx, %ebx                                                    #  31    0x273f3  2      
  movl 0x8(%r15,%rbx,1), %r8d                                        #  32    0x273f5  5      
  movq 0x18(%rsp), %rbx                                              #  33    0x273fa  5      
  movl %r8d, 0x8(%rsp)                                               #  34    0x273ff  5      
  movl %r12d, %r12d                                                  #  35    0x27404  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  36    0x27407  5      
  nop                                                                #  37    0x2740c  1      
  movq 0x20(%rsp), %r12                                              #  38    0x2740d  5      
  addl $0x38, %esp                                                   #  39    0x27412  3      
  addq %r15, %rsp                                                    #  40    0x27415  3      
  andl $0xffffffe0, %eax                                             #  41    0x27418  5      
  addq %r15, %rax                                                    #  42    0x2741d  3      
  jmpq %rax                                                          #  43    0x27420  2      
  nop                                                                #  44    0x27422  1      
.L_27440:                                                            #        0x27423  0      
  movl $0x10030c60, %edi                                             #  45    0x27423  5      
  nop                                                                #  46    0x27428  1      
  nop                                                                #  47    0x27429  1      
  callq .__cxa_guard_acquire                                         #  48    0x2742a  5      
  testl %eax, %eax                                                   #  49    0x2742f  2      
  jne .L_27620                                                       #  50    0x27431  6      
  nop                                                                #  51    0x27437  1      
  nop                                                                #  52    0x27438  1      
.L_27480:                                                            #        0x27439  0      
  movl 0x10009829(%rip), %eax                                        #  53    0x27439  6      
  jmpq .L_273e0                                                      #  54    0x2743f  5      
  nop                                                                #  55    0x27444  1      
  nop                                                                #  56    0x27445  1      
.L_274a0:                                                            #        0x27446  0      
  movl %ebx, %ebx                                                    #  57    0x27446  2      
  movl (%r15,%rbx,1), %eax                                           #  58    0x27448  4      
  testl %eax, %eax                                                   #  59    0x2744c  2      
  je .L_27600                                                        #  60    0x2744e  6      
  movl %ebx, %ebx                                                    #  61    0x27454  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  62    0x27456  6      
  jne .L_27600                                                       #  63    0x2745c  6      
  nop                                                                #  64    0x27462  1      
  nop                                                                #  65    0x27463  1      
  nop                                                                #  66    0x27464  1      
  callq ._ZN2pp6Module3GetEv                                         #  67    0x27465  5      
  movl %eax, %eax                                                    #  68    0x2746a  2      
  movl $0xfffffffa, %ecx                                             #  69    0x2746c  5      
  movl %ebx, %edx                                                    #  70    0x27471  2      
  movl %eax, %eax                                                    #  71    0x27473  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  72    0x27475  5      
  xorl %esi, %esi                                                    #  73    0x2747a  2      
  nop                                                                #  74    0x2747c  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  75    0x2747d  5      
  movl $0xffffffff, %eax                                             #  76    0x27482  5      
  nop                                                                #  77    0x27487  1      
  nop                                                                #  78    0x27488  1      
.L_27520:                                                            #        0x27489  0      
  movq 0x18(%rsp), %rbx                                              #  79    0x27489  5      
  movq 0x20(%rsp), %r12                                              #  80    0x2748e  5      
  movq 0x28(%rsp), %r13                                              #  81    0x27493  5      
  movq 0x30(%rsp), %r14                                              #  82    0x27498  5      
  addl $0x38, %esp                                                   #  83    0x2749d  3      
  addq %r15, %rsp                                                    #  84    0x274a0  3      
  popq %r11                                                          #  85    0x274a3  3      
  nop                                                                #  86    0x274a6  1      
  andl $0xffffffe0, %r11d                                            #  87    0x274a7  7      
  addq %r15, %r11                                                    #  88    0x274ae  3      
  jmpq %r11                                                          #  89    0x274b1  3      
  nop                                                                #  90    0x274b4  1      
  nop                                                                #  91    0x274b5  1      
.L_27560:                                                            #        0x274b6  0      
  movl $0x10030c60, %edi                                             #  92    0x274b6  5      
  nop                                                                #  93    0x274bb  1      
  nop                                                                #  94    0x274bc  1      
  callq .__cxa_guard_acquire                                         #  95    0x274bd  5      
  testl %eax, %eax                                                   #  96    0x274c2  2      
  je .L_273c0                                                        #  97    0x274c4  6      
  nop                                                                #  98    0x274ca  1      
  nop                                                                #  99    0x274cb  1      
  callq ._ZN2pp6Module3GetEv                                         #  100   0x274cc  5      
  movl %eax, %edi                                                    #  101   0x274d1  2      
  movl $0x10020478, %esi                                             #  102   0x274d3  5      
  nop                                                                #  103   0x274d8  1      
  nop                                                                #  104   0x274d9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  105   0x274da  5      
  movl $0x10030c60, %edi                                             #  106   0x274df  5      
  movl %eax, 0x1000977e(%rip)                                        #  107   0x274e4  6      
  nop                                                                #  108   0x274ea  1      
  nop                                                                #  109   0x274eb  1      
  callq .__cxa_guard_release                                         #  110   0x274ec  5      
  jmpq .L_273c0                                                      #  111   0x274f1  5      
  nop                                                                #  112   0x274f6  1      
  nop                                                                #  113   0x274f7  1      
.L_27600:                                                            #        0x274f8  0      
  movl $0xfffffffa, %eax                                             #  114   0x274f8  5      
  jmpq .L_27520                                                      #  115   0x274fd  5      
  nop                                                                #  116   0x27502  1      
  nop                                                                #  117   0x27503  1      
.L_27620:                                                            #        0x27504  0      
  nop                                                                #  118   0x27504  1      
  nop                                                                #  119   0x27505  1      
  callq ._ZN2pp6Module3GetEv                                         #  120   0x27506  5      
  movl %eax, %edi                                                    #  121   0x2750b  2      
  movl $0x10020478, %esi                                             #  122   0x2750d  5      
  nop                                                                #  123   0x27512  1      
  nop                                                                #  124   0x27513  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  125   0x27514  5      
  movl $0x10030c60, %edi                                             #  126   0x27519  5      
  movl %eax, 0x10009744(%rip)                                        #  127   0x2751e  6      
  nop                                                                #  128   0x27524  1      
  nop                                                                #  129   0x27525  1      
  callq .__cxa_guard_release                                         #  130   0x27526  5      
  jmpq .L_27480                                                      #  131   0x2752b  5      
  nop                                                                #  132   0x27530  1      
  nop                                                                #  133   0x27531  1      
.L_276a0:                                                            #        0x27532  0      
  movl %eax, %ebx                                                    #  134   0x27532  2      
  movl $0x10030c60, %edi                                             #  135   0x27534  5      
  nop                                                                #  136   0x27539  1      
  nop                                                                #  137   0x2753a  1      
  callq .__cxa_guard_abort                                           #  138   0x2753b  5      
  movl %ebx, %edi                                                    #  139   0x27540  2      
  nop                                                                #  140   0x27542  1      
  nop                                                                #  141   0x27543  1      
  callq ._Unwind_Resume                                              #  142   0x27544  5      
  jmpq .L_276a0                                                      #  143   0x27549  5      
  nop                                                                #  144   0x2754e  1      
  nop                                                                #  145   0x2754f  1      
                                                                                              
.size _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE

