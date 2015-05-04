  .text
  .globl _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, @function

#! file-offset 0x27780
#! rip-offset  0x27780
#! capacity    768 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE:        #        0x27780  0      
  pushq %r12                                                         #  1     0x27780  3      
  movl %edi, %r12d                                                   #  2     0x27783  3      
  pushq %rbx                                                         #  3     0x27786  2      
  movl %esi, %ebx                                                    #  4     0x27788  2      
  subl $0x18, %esp                                                   #  5     0x2778a  3      
  addq %r15, %rsp                                                    #  6     0x2778d  3      
  cmpb $0x0, 0x100094c9(%rip)                                        #  7     0x27790  7      
  je .L_278e0                                                        #  8     0x27797  6      
  nop                                                                #  9     0x2779d  1      
.L_277a0:                                                            #        0x2779e  0      
  movl 0x100094c4(%rip), %eax                                        #  10    0x2779e  6      
  testq %rax, %rax                                                   #  11    0x277a4  3      
  je .L_27860                                                        #  12    0x277a7  6      
  cmpb $0x0, 0x100094ac(%rip)                                        #  13    0x277ad  7      
  je .L_27800                                                        #  14    0x277b4  6      
  nop                                                                #  15    0x277ba  1      
.L_277c0:                                                            #        0x277bb  0      
  movl %ebx, %ebx                                                    #  16    0x277bb  2      
  movq (%r15,%rbx,1), %rsi                                           #  17    0x277bd  4      
  movl %eax, %eax                                                    #  18    0x277c1  2      
  movl 0xc(%r15,%rax,1), %eax                                        #  19    0x277c3  5      
  movq %rsi, (%rsp)                                                  #  20    0x277c8  4      
  movl %ebx, %ebx                                                    #  21    0x277cc  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  22    0x277ce  5      
  movl %edx, 0x8(%rsp)                                               #  23    0x277d3  4      
  nop                                                                #  24    0x277d7  1      
  movl %r12d, %r12d                                                  #  25    0x277d8  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  26    0x277db  5      
  addl $0x18, %esp                                                   #  27    0x277e0  3      
  addq %r15, %rsp                                                    #  28    0x277e3  3      
  popq %rbx                                                          #  29    0x277e6  2      
  popq %r12                                                          #  30    0x277e8  3      
  andl $0xffffffe0, %eax                                             #  31    0x277eb  5      
  addq %r15, %rax                                                    #  32    0x277f0  3      
  jmpq %rax                                                          #  33    0x277f3  2      
  nop                                                                #  34    0x277f5  1      
.L_27800:                                                            #        0x277f6  0      
  movl $0x10030c60, %edi                                             #  35    0x277f6  5      
  nop                                                                #  36    0x277fb  1      
  nop                                                                #  37    0x277fc  1      
  callq .__cxa_guard_acquire                                         #  38    0x277fd  5      
  testl %eax, %eax                                                   #  39    0x27802  2      
  jne .L_279a0                                                       #  40    0x27804  6      
  nop                                                                #  41    0x2780a  1      
  nop                                                                #  42    0x2780b  1      
.L_27840:                                                            #        0x2780c  0      
  movl 0x10009456(%rip), %eax                                        #  43    0x2780c  6      
  jmpq .L_277c0                                                      #  44    0x27812  5      
  nop                                                                #  45    0x27817  1      
  nop                                                                #  46    0x27818  1      
.L_27860:                                                            #        0x27819  0      
  movl %ebx, %ebx                                                    #  47    0x27819  2      
  movl (%r15,%rbx,1), %edx                                           #  48    0x2781b  4      
  testl %edx, %edx                                                   #  49    0x2781f  2      
  je .L_27980                                                        #  50    0x27821  6      
  movl %ebx, %ebx                                                    #  51    0x27827  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  52    0x27829  6      
  jne .L_27980                                                       #  53    0x2782f  6      
  nop                                                                #  54    0x27835  1      
  nop                                                                #  55    0x27836  1      
  nop                                                                #  56    0x27837  1      
  callq ._ZN2pp6Module3GetEv                                         #  57    0x27838  5      
  movl %eax, %eax                                                    #  58    0x2783d  2      
  movl %ebx, %edx                                                    #  59    0x2783f  2      
  movl $0xfffffffa, %ecx                                             #  60    0x27841  5      
  movl %eax, %eax                                                    #  61    0x27846  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  62    0x27848  5      
  xorl %esi, %esi                                                    #  63    0x2784d  2      
  nop                                                                #  64    0x2784f  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  65    0x27850  5      
  addl $0x18, %esp                                                   #  66    0x27855  3      
  addq %r15, %rsp                                                    #  67    0x27858  3      
  movl $0xffffffff, %eax                                             #  68    0x2785b  5      
  popq %rbx                                                          #  69    0x27860  2      
  popq %r12                                                          #  70    0x27862  3      
  popq %r11                                                          #  71    0x27865  3      
  andl $0xffffffe0, %r11d                                            #  72    0x27868  7      
  addq %r15, %r11                                                    #  73    0x2786f  3      
  jmpq %r11                                                          #  74    0x27872  3      
  nop                                                                #  75    0x27875  1      
.L_278e0:                                                            #        0x27876  0      
  movl $0x10030c60, %edi                                             #  76    0x27876  5      
  nop                                                                #  77    0x2787b  1      
  nop                                                                #  78    0x2787c  1      
  callq .__cxa_guard_acquire                                         #  79    0x2787d  5      
  testl %eax, %eax                                                   #  80    0x27882  2      
  je .L_277a0                                                        #  81    0x27884  6      
  nop                                                                #  82    0x2788a  1      
  nop                                                                #  83    0x2788b  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x2788c  5      
  movl %eax, %edi                                                    #  85    0x27891  2      
  movl $0x10020478, %esi                                             #  86    0x27893  5      
  nop                                                                #  87    0x27898  1      
  nop                                                                #  88    0x27899  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x2789a  5      
  movl $0x10030c60, %edi                                             #  90    0x2789f  5      
  movl %eax, 0x100093be(%rip)                                        #  91    0x278a4  6      
  nop                                                                #  92    0x278aa  1      
  nop                                                                #  93    0x278ab  1      
  callq .__cxa_guard_release                                         #  94    0x278ac  5      
  jmpq .L_277a0                                                      #  95    0x278b1  5      
  nop                                                                #  96    0x278b6  1      
  nop                                                                #  97    0x278b7  1      
.L_27980:                                                            #        0x278b8  0      
  addl $0x18, %esp                                                   #  98    0x278b8  3      
  addq %r15, %rsp                                                    #  99    0x278bb  3      
  movl $0xfffffffa, %eax                                             #  100   0x278be  5      
  popq %rbx                                                          #  101   0x278c3  2      
  popq %r12                                                          #  102   0x278c5  3      
  popq %r11                                                          #  103   0x278c8  3      
  andl $0xffffffe0, %r11d                                            #  104   0x278cb  7      
  addq %r15, %r11                                                    #  105   0x278d2  3      
  jmpq %r11                                                          #  106   0x278d5  3      
  nop                                                                #  107   0x278d8  1      
.L_279a0:                                                            #        0x278d9  0      
  nop                                                                #  108   0x278d9  1      
  nop                                                                #  109   0x278da  1      
  callq ._ZN2pp6Module3GetEv                                         #  110   0x278db  5      
  movl %eax, %edi                                                    #  111   0x278e0  2      
  movl $0x10020478, %esi                                             #  112   0x278e2  5      
  nop                                                                #  113   0x278e7  1      
  nop                                                                #  114   0x278e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  115   0x278e9  5      
  movl $0x10030c60, %edi                                             #  116   0x278ee  5      
  movl %eax, 0x1000936f(%rip)                                        #  117   0x278f3  6      
  nop                                                                #  118   0x278f9  1      
  nop                                                                #  119   0x278fa  1      
  callq .__cxa_guard_release                                         #  120   0x278fb  5      
  jmpq .L_27840                                                      #  121   0x27900  5      
  nop                                                                #  122   0x27905  1      
  nop                                                                #  123   0x27906  1      
.L_27a20:                                                            #        0x27907  0      
  movl %eax, %ebx                                                    #  124   0x27907  2      
  movl $0x10030c60, %edi                                             #  125   0x27909  5      
  nop                                                                #  126   0x2790e  1      
  nop                                                                #  127   0x2790f  1      
  callq .__cxa_guard_abort                                           #  128   0x27910  5      
  movl %ebx, %edi                                                    #  129   0x27915  2      
  nop                                                                #  130   0x27917  1      
  nop                                                                #  131   0x27918  1      
  callq ._Unwind_Resume                                              #  132   0x27919  5      
  jmpq .L_27a20                                                      #  133   0x2791e  5      
  nop                                                                #  134   0x27923  1      
  nop                                                                #  135   0x27924  1      
                                                                                              
.size _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE

