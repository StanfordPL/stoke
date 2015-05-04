  .text
  .globl _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, @function

#! file-offset 0x27400
#! rip-offset  0x27400
#! capacity    896 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE:   #        0x27400  0      
  movq %rbx, -0x20(%rsp)                                             #  1     0x27400  5      
  movq %r12, -0x18(%rsp)                                             #  2     0x27405  5      
  movl %ecx, %ebx                                                    #  3     0x2740a  2      
  movq %r13, -0x10(%rsp)                                             #  4     0x2740c  5      
  movq %r14, -0x8(%rsp)                                              #  5     0x27411  5      
  subl $0x38, %esp                                                   #  6     0x27416  3      
  addq %r15, %rsp                                                    #  7     0x27419  3      
  nop                                                                #  8     0x2741c  1      
  cmpb $0x0, 0x1000983c(%rip)                                        #  9     0x2741d  7      
  movl %edx, %r13d                                                   #  10    0x27424  3      
  movl %edi, %r12d                                                   #  11    0x27427  3      
  movl %esi, %r14d                                                   #  12    0x2742a  3      
  je .L_275e0                                                        #  13    0x2742d  6      
  nop                                                                #  14    0x27433  1      
.L_27440:                                                            #        0x27434  0      
  movl 0x1000982e(%rip), %eax                                        #  15    0x27434  6      
  testq %rax, %rax                                                   #  16    0x2743a  3      
  je .L_27520                                                        #  17    0x2743d  6      
  cmpb $0x0, 0x10009816(%rip)                                        #  18    0x27443  7      
  je .L_274c0                                                        #  19    0x2744a  6      
  nop                                                                #  20    0x27450  1      
.L_27460:                                                            #        0x27451  0      
  movl %ebx, %ebx                                                    #  21    0x27451  2      
  movq (%r15,%rbx,1), %rcx                                           #  22    0x27453  4      
  movl %eax, %eax                                                    #  23    0x27457  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  24    0x27459  5      
  movl %r13d, %edx                                                   #  25    0x2745e  3      
  movl %r14d, %esi                                                   #  26    0x27461  3      
  movq 0x28(%rsp), %r13                                              #  27    0x27464  5      
  movq 0x30(%rsp), %r14                                              #  28    0x27469  5      
  nop                                                                #  29    0x2746e  1      
  movq %rcx, (%rsp)                                                  #  30    0x2746f  4      
  movl %ebx, %ebx                                                    #  31    0x27473  2      
  movl 0x8(%r15,%rbx,1), %r8d                                        #  32    0x27475  5      
  movq 0x18(%rsp), %rbx                                              #  33    0x2747a  5      
  movl %r8d, 0x8(%rsp)                                               #  34    0x2747f  5      
  movl %r12d, %r12d                                                  #  35    0x27484  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  36    0x27487  5      
  nop                                                                #  37    0x2748c  1      
  movq 0x20(%rsp), %r12                                              #  38    0x2748d  5      
  addl $0x38, %esp                                                   #  39    0x27492  3      
  addq %r15, %rsp                                                    #  40    0x27495  3      
  andl $0xffffffe0, %eax                                             #  41    0x27498  5      
  addq %r15, %rax                                                    #  42    0x2749d  3      
  jmpq %rax                                                          #  43    0x274a0  2      
  nop                                                                #  44    0x274a2  1      
.L_274c0:                                                            #        0x274a3  0      
  movl $0x10030c60, %edi                                             #  45    0x274a3  5      
  nop                                                                #  46    0x274a8  1      
  nop                                                                #  47    0x274a9  1      
  callq .__cxa_guard_acquire                                         #  48    0x274aa  5      
  testl %eax, %eax                                                   #  49    0x274af  2      
  jne .L_276a0                                                       #  50    0x274b1  6      
  nop                                                                #  51    0x274b7  1      
  nop                                                                #  52    0x274b8  1      
.L_27500:                                                            #        0x274b9  0      
  movl 0x100097a9(%rip), %eax                                        #  53    0x274b9  6      
  jmpq .L_27460                                                      #  54    0x274bf  5      
  nop                                                                #  55    0x274c4  1      
  nop                                                                #  56    0x274c5  1      
.L_27520:                                                            #        0x274c6  0      
  movl %ebx, %ebx                                                    #  57    0x274c6  2      
  movl (%r15,%rbx,1), %eax                                           #  58    0x274c8  4      
  testl %eax, %eax                                                   #  59    0x274cc  2      
  je .L_27680                                                        #  60    0x274ce  6      
  movl %ebx, %ebx                                                    #  61    0x274d4  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  62    0x274d6  6      
  jne .L_27680                                                       #  63    0x274dc  6      
  nop                                                                #  64    0x274e2  1      
  nop                                                                #  65    0x274e3  1      
  nop                                                                #  66    0x274e4  1      
  callq ._ZN2pp6Module3GetEv                                         #  67    0x274e5  5      
  movl %eax, %eax                                                    #  68    0x274ea  2      
  movl $0xfffffffa, %ecx                                             #  69    0x274ec  5      
  movl %ebx, %edx                                                    #  70    0x274f1  2      
  movl %eax, %eax                                                    #  71    0x274f3  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  72    0x274f5  5      
  xorl %esi, %esi                                                    #  73    0x274fa  2      
  nop                                                                #  74    0x274fc  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  75    0x274fd  5      
  movl $0xffffffff, %eax                                             #  76    0x27502  5      
  nop                                                                #  77    0x27507  1      
  nop                                                                #  78    0x27508  1      
.L_275a0:                                                            #        0x27509  0      
  movq 0x18(%rsp), %rbx                                              #  79    0x27509  5      
  movq 0x20(%rsp), %r12                                              #  80    0x2750e  5      
  movq 0x28(%rsp), %r13                                              #  81    0x27513  5      
  movq 0x30(%rsp), %r14                                              #  82    0x27518  5      
  addl $0x38, %esp                                                   #  83    0x2751d  3      
  addq %r15, %rsp                                                    #  84    0x27520  3      
  popq %r11                                                          #  85    0x27523  3      
  nop                                                                #  86    0x27526  1      
  andl $0xffffffe0, %r11d                                            #  87    0x27527  7      
  addq %r15, %r11                                                    #  88    0x2752e  3      
  jmpq %r11                                                          #  89    0x27531  3      
  nop                                                                #  90    0x27534  1      
  nop                                                                #  91    0x27535  1      
.L_275e0:                                                            #        0x27536  0      
  movl $0x10030c60, %edi                                             #  92    0x27536  5      
  nop                                                                #  93    0x2753b  1      
  nop                                                                #  94    0x2753c  1      
  callq .__cxa_guard_acquire                                         #  95    0x2753d  5      
  testl %eax, %eax                                                   #  96    0x27542  2      
  je .L_27440                                                        #  97    0x27544  6      
  nop                                                                #  98    0x2754a  1      
  nop                                                                #  99    0x2754b  1      
  callq ._ZN2pp6Module3GetEv                                         #  100   0x2754c  5      
  movl %eax, %edi                                                    #  101   0x27551  2      
  movl $0x10020478, %esi                                             #  102   0x27553  5      
  nop                                                                #  103   0x27558  1      
  nop                                                                #  104   0x27559  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  105   0x2755a  5      
  movl $0x10030c60, %edi                                             #  106   0x2755f  5      
  movl %eax, 0x100096fe(%rip)                                        #  107   0x27564  6      
  nop                                                                #  108   0x2756a  1      
  nop                                                                #  109   0x2756b  1      
  callq .__cxa_guard_release                                         #  110   0x2756c  5      
  jmpq .L_27440                                                      #  111   0x27571  5      
  nop                                                                #  112   0x27576  1      
  nop                                                                #  113   0x27577  1      
.L_27680:                                                            #        0x27578  0      
  movl $0xfffffffa, %eax                                             #  114   0x27578  5      
  jmpq .L_275a0                                                      #  115   0x2757d  5      
  nop                                                                #  116   0x27582  1      
  nop                                                                #  117   0x27583  1      
.L_276a0:                                                            #        0x27584  0      
  nop                                                                #  118   0x27584  1      
  nop                                                                #  119   0x27585  1      
  callq ._ZN2pp6Module3GetEv                                         #  120   0x27586  5      
  movl %eax, %edi                                                    #  121   0x2758b  2      
  movl $0x10020478, %esi                                             #  122   0x2758d  5      
  nop                                                                #  123   0x27592  1      
  nop                                                                #  124   0x27593  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  125   0x27594  5      
  movl $0x10030c60, %edi                                             #  126   0x27599  5      
  movl %eax, 0x100096c4(%rip)                                        #  127   0x2759e  6      
  nop                                                                #  128   0x275a4  1      
  nop                                                                #  129   0x275a5  1      
  callq .__cxa_guard_release                                         #  130   0x275a6  5      
  jmpq .L_27500                                                      #  131   0x275ab  5      
  nop                                                                #  132   0x275b0  1      
  nop                                                                #  133   0x275b1  1      
.L_27720:                                                            #        0x275b2  0      
  movl %eax, %ebx                                                    #  134   0x275b2  2      
  movl $0x10030c60, %edi                                             #  135   0x275b4  5      
  nop                                                                #  136   0x275b9  1      
  nop                                                                #  137   0x275ba  1      
  callq .__cxa_guard_abort                                           #  138   0x275bb  5      
  movl %ebx, %edi                                                    #  139   0x275c0  2      
  nop                                                                #  140   0x275c2  1      
  nop                                                                #  141   0x275c3  1      
  callq ._Unwind_Resume                                              #  142   0x275c4  5      
  jmpq .L_27720                                                      #  143   0x275c9  5      
  nop                                                                #  144   0x275ce  1      
  nop                                                                #  145   0x275cf  1      
                                                                                              
.size _ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader16ReadResponseBodyEPviRKNS_18CompletionCallbackE

