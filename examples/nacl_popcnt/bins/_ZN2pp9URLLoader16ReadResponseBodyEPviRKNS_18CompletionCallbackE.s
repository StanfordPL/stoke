  .text
  .globl _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, @function

#! file-offset 0x27360
#! rip-offset  0x27360
#! capacity    896 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE:   #        0x27360  0      
  movq %rbx, -0x20(%rsp)                                             #  1     0x27360  5      
  movq %r12, -0x18(%rsp)                                             #  2     0x27365  5      
  movl %ecx, %ebx                                                    #  3     0x2736a  2      
  movq %r13, -0x10(%rsp)                                             #  4     0x2736c  5      
  movq %r14, -0x8(%rsp)                                              #  5     0x27371  5      
  subl $0x38, %esp                                                   #  6     0x27376  3      
  addq %r15, %rsp                                                    #  7     0x27379  3      
  nop                                                                #  8     0x2737c  1      
  cmpb $0x0, 0x100098dc(%rip)                                        #  9     0x2737d  7      
  movl %edx, %r13d                                                   #  10    0x27384  3      
  movl %edi, %r12d                                                   #  11    0x27387  3      
  movl %esi, %r14d                                                   #  12    0x2738a  3      
  je .L_27540                                                        #  13    0x2738d  6      
  nop                                                                #  14    0x27393  1      
.L_273a0:                                                            #        0x27394  0      
  movl 0x100098ce(%rip), %eax                                        #  15    0x27394  6      
  testq %rax, %rax                                                   #  16    0x2739a  3      
  je .L_27480                                                        #  17    0x2739d  6      
  cmpb $0x0, 0x100098b6(%rip)                                        #  18    0x273a3  7      
  je .L_27420                                                        #  19    0x273aa  6      
  nop                                                                #  20    0x273b0  1      
.L_273c0:                                                            #        0x273b1  0      
  movl %ebx, %ebx                                                    #  21    0x273b1  2      
  movq (%r15,%rbx,1), %rcx                                           #  22    0x273b3  4      
  movl %eax, %eax                                                    #  23    0x273b7  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  24    0x273b9  5      
  movl %r13d, %edx                                                   #  25    0x273be  3      
  movl %r14d, %esi                                                   #  26    0x273c1  3      
  movq 0x28(%rsp), %r13                                              #  27    0x273c4  5      
  movq 0x30(%rsp), %r14                                              #  28    0x273c9  5      
  nop                                                                #  29    0x273ce  1      
  movq %rcx, (%rsp)                                                  #  30    0x273cf  4      
  movl %ebx, %ebx                                                    #  31    0x273d3  2      
  movl 0x8(%r15,%rbx,1), %r8d                                        #  32    0x273d5  5      
  movq 0x18(%rsp), %rbx                                              #  33    0x273da  5      
  movl %r8d, 0x8(%rsp)                                               #  34    0x273df  5      
  movl %r12d, %r12d                                                  #  35    0x273e4  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  36    0x273e7  5      
  nop                                                                #  37    0x273ec  1      
  movq 0x20(%rsp), %r12                                              #  38    0x273ed  5      
  addl $0x38, %esp                                                   #  39    0x273f2  3      
  addq %r15, %rsp                                                    #  40    0x273f5  3      
  andl $0xffffffe0, %eax                                             #  41    0x273f8  5      
  addq %r15, %rax                                                    #  42    0x273fd  3      
  jmpq %rax                                                          #  43    0x27400  2      
  nop                                                                #  44    0x27402  1      
.L_27420:                                                            #        0x27403  0      
  movl $0x10030c60, %edi                                             #  45    0x27403  5      
  nop                                                                #  46    0x27408  1      
  nop                                                                #  47    0x27409  1      
  callq .__cxa_guard_acquire                                         #  48    0x2740a  5      
  testl %eax, %eax                                                   #  49    0x2740f  2      
  jne .L_27600                                                       #  50    0x27411  6      
  nop                                                                #  51    0x27417  1      
  nop                                                                #  52    0x27418  1      
.L_27460:                                                            #        0x27419  0      
  movl 0x10009849(%rip), %eax                                        #  53    0x27419  6      
  jmpq .L_273c0                                                      #  54    0x2741f  5      
  nop                                                                #  55    0x27424  1      
  nop                                                                #  56    0x27425  1      
.L_27480:                                                            #        0x27426  0      
  movl %ebx, %ebx                                                    #  57    0x27426  2      
  movl (%r15,%rbx,1), %eax                                           #  58    0x27428  4      
  testl %eax, %eax                                                   #  59    0x2742c  2      
  je .L_275e0                                                        #  60    0x2742e  6      
  movl %ebx, %ebx                                                    #  61    0x27434  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  62    0x27436  6      
  jne .L_275e0                                                       #  63    0x2743c  6      
  nop                                                                #  64    0x27442  1      
  nop                                                                #  65    0x27443  1      
  nop                                                                #  66    0x27444  1      
  callq ._ZN2pp6Module3GetEv                                         #  67    0x27445  5      
  movl %eax, %eax                                                    #  68    0x2744a  2      
  movl $0xfffffffa, %ecx                                             #  69    0x2744c  5      
  movl %ebx, %edx                                                    #  70    0x27451  2      
  movl %eax, %eax                                                    #  71    0x27453  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  72    0x27455  5      
  xorl %esi, %esi                                                    #  73    0x2745a  2      
  nop                                                                #  74    0x2745c  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  75    0x2745d  5      
  movl $0xffffffff, %eax                                             #  76    0x27462  5      
  nop                                                                #  77    0x27467  1      
  nop                                                                #  78    0x27468  1      
.L_27500:                                                            #        0x27469  0      
  movq 0x18(%rsp), %rbx                                              #  79    0x27469  5      
  movq 0x20(%rsp), %r12                                              #  80    0x2746e  5      
  movq 0x28(%rsp), %r13                                              #  81    0x27473  5      
  movq 0x30(%rsp), %r14                                              #  82    0x27478  5      
  addl $0x38, %esp                                                   #  83    0x2747d  3      
  addq %r15, %rsp                                                    #  84    0x27480  3      
  popq %r11                                                          #  85    0x27483  3      
  nop                                                                #  86    0x27486  1      
  andl $0xffffffe0, %r11d                                            #  87    0x27487  7      
  addq %r15, %r11                                                    #  88    0x2748e  3      
  jmpq %r11                                                          #  89    0x27491  3      
  nop                                                                #  90    0x27494  1      
  nop                                                                #  91    0x27495  1      
.L_27540:                                                            #        0x27496  0      
  movl $0x10030c60, %edi                                             #  92    0x27496  5      
  nop                                                                #  93    0x2749b  1      
  nop                                                                #  94    0x2749c  1      
  callq .__cxa_guard_acquire                                         #  95    0x2749d  5      
  testl %eax, %eax                                                   #  96    0x274a2  2      
  je .L_273a0                                                        #  97    0x274a4  6      
  nop                                                                #  98    0x274aa  1      
  nop                                                                #  99    0x274ab  1      
  callq ._ZN2pp6Module3GetEv                                         #  100   0x274ac  5      
  movl %eax, %edi                                                    #  101   0x274b1  2      
  movl $0x10020478, %esi                                             #  102   0x274b3  5      
  nop                                                                #  103   0x274b8  1      
  nop                                                                #  104   0x274b9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  105   0x274ba  5      
  movl $0x10030c60, %edi                                             #  106   0x274bf  5      
  movl %eax, 0x1000979e(%rip)                                        #  107   0x274c4  6      
  nop                                                                #  108   0x274ca  1      
  nop                                                                #  109   0x274cb  1      
  callq .__cxa_guard_release                                         #  110   0x274cc  5      
  jmpq .L_273a0                                                      #  111   0x274d1  5      
  nop                                                                #  112   0x274d6  1      
  nop                                                                #  113   0x274d7  1      
.L_275e0:                                                            #        0x274d8  0      
  movl $0xfffffffa, %eax                                             #  114   0x274d8  5      
  jmpq .L_27500                                                      #  115   0x274dd  5      
  nop                                                                #  116   0x274e2  1      
  nop                                                                #  117   0x274e3  1      
.L_27600:                                                            #        0x274e4  0      
  nop                                                                #  118   0x274e4  1      
  nop                                                                #  119   0x274e5  1      
  callq ._ZN2pp6Module3GetEv                                         #  120   0x274e6  5      
  movl %eax, %edi                                                    #  121   0x274eb  2      
  movl $0x10020478, %esi                                             #  122   0x274ed  5      
  nop                                                                #  123   0x274f2  1      
  nop                                                                #  124   0x274f3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  125   0x274f4  5      
  movl $0x10030c60, %edi                                             #  126   0x274f9  5      
  movl %eax, 0x10009764(%rip)                                        #  127   0x274fe  6      
  nop                                                                #  128   0x27504  1      
  nop                                                                #  129   0x27505  1      
  callq .__cxa_guard_release                                         #  130   0x27506  5      
  jmpq .L_27460                                                      #  131   0x2750b  5      
  nop                                                                #  132   0x27510  1      
  nop                                                                #  133   0x27511  1      
.L_27680:                                                            #        0x27512  0      
  movl %eax, %ebx                                                    #  134   0x27512  2      
  movl $0x10030c60, %edi                                             #  135   0x27514  5      
  nop                                                                #  136   0x27519  1      
  nop                                                                #  137   0x2751a  1      
  callq .__cxa_guard_abort                                           #  138   0x2751b  5      
  movl %ebx, %edi                                                    #  139   0x27520  2      
  nop                                                                #  140   0x27522  1      
  nop                                                                #  141   0x27523  1      
  callq ._Unwind_Resume                                              #  142   0x27524  5      
  jmpq .L_27680                                                      #  143   0x27529  5      
  nop                                                                #  144   0x2752e  1      
  nop                                                                #  145   0x2752f  1      
                                                                                              
.size _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE

