  .text
  .globl _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, @function

#! file-offset 0x276e0
#! rip-offset  0x276e0
#! capacity    768 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE:        #        0x276e0  0      
  pushq %r12                                                         #  1     0x276e0  3      
  movl %edi, %r12d                                                   #  2     0x276e3  3      
  pushq %rbx                                                         #  3     0x276e6  2      
  movl %esi, %ebx                                                    #  4     0x276e8  2      
  subl $0x18, %esp                                                   #  5     0x276ea  3      
  addq %r15, %rsp                                                    #  6     0x276ed  3      
  cmpb $0x0, 0x10009569(%rip)                                        #  7     0x276f0  7      
  je .L_27840                                                        #  8     0x276f7  6      
  nop                                                                #  9     0x276fd  1      
.L_27700:                                                            #        0x276fe  0      
  movl 0x10009564(%rip), %eax                                        #  10    0x276fe  6      
  testq %rax, %rax                                                   #  11    0x27704  3      
  je .L_277c0                                                        #  12    0x27707  6      
  cmpb $0x0, 0x1000954c(%rip)                                        #  13    0x2770d  7      
  je .L_27760                                                        #  14    0x27714  6      
  nop                                                                #  15    0x2771a  1      
.L_27720:                                                            #        0x2771b  0      
  movl %ebx, %ebx                                                    #  16    0x2771b  2      
  movq (%r15,%rbx,1), %rsi                                           #  17    0x2771d  4      
  movl %eax, %eax                                                    #  18    0x27721  2      
  movl 0xc(%r15,%rax,1), %eax                                        #  19    0x27723  5      
  movq %rsi, (%rsp)                                                  #  20    0x27728  4      
  movl %ebx, %ebx                                                    #  21    0x2772c  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  22    0x2772e  5      
  movl %edx, 0x8(%rsp)                                               #  23    0x27733  4      
  nop                                                                #  24    0x27737  1      
  movl %r12d, %r12d                                                  #  25    0x27738  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  26    0x2773b  5      
  addl $0x18, %esp                                                   #  27    0x27740  3      
  addq %r15, %rsp                                                    #  28    0x27743  3      
  popq %rbx                                                          #  29    0x27746  2      
  popq %r12                                                          #  30    0x27748  3      
  andl $0xffffffe0, %eax                                             #  31    0x2774b  5      
  addq %r15, %rax                                                    #  32    0x27750  3      
  jmpq %rax                                                          #  33    0x27753  2      
  nop                                                                #  34    0x27755  1      
.L_27760:                                                            #        0x27756  0      
  movl $0x10030c60, %edi                                             #  35    0x27756  5      
  nop                                                                #  36    0x2775b  1      
  nop                                                                #  37    0x2775c  1      
  callq .__cxa_guard_acquire                                         #  38    0x2775d  5      
  testl %eax, %eax                                                   #  39    0x27762  2      
  jne .L_27900                                                       #  40    0x27764  6      
  nop                                                                #  41    0x2776a  1      
  nop                                                                #  42    0x2776b  1      
.L_277a0:                                                            #        0x2776c  0      
  movl 0x100094f6(%rip), %eax                                        #  43    0x2776c  6      
  jmpq .L_27720                                                      #  44    0x27772  5      
  nop                                                                #  45    0x27777  1      
  nop                                                                #  46    0x27778  1      
.L_277c0:                                                            #        0x27779  0      
  movl %ebx, %ebx                                                    #  47    0x27779  2      
  movl (%r15,%rbx,1), %edx                                           #  48    0x2777b  4      
  testl %edx, %edx                                                   #  49    0x2777f  2      
  je .L_278e0                                                        #  50    0x27781  6      
  movl %ebx, %ebx                                                    #  51    0x27787  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  52    0x27789  6      
  jne .L_278e0                                                       #  53    0x2778f  6      
  nop                                                                #  54    0x27795  1      
  nop                                                                #  55    0x27796  1      
  nop                                                                #  56    0x27797  1      
  callq ._ZN2pp6Module3GetEv                                         #  57    0x27798  5      
  movl %eax, %eax                                                    #  58    0x2779d  2      
  movl %ebx, %edx                                                    #  59    0x2779f  2      
  movl $0xfffffffa, %ecx                                             #  60    0x277a1  5      
  movl %eax, %eax                                                    #  61    0x277a6  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  62    0x277a8  5      
  xorl %esi, %esi                                                    #  63    0x277ad  2      
  nop                                                                #  64    0x277af  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  65    0x277b0  5      
  addl $0x18, %esp                                                   #  66    0x277b5  3      
  addq %r15, %rsp                                                    #  67    0x277b8  3      
  movl $0xffffffff, %eax                                             #  68    0x277bb  5      
  popq %rbx                                                          #  69    0x277c0  2      
  popq %r12                                                          #  70    0x277c2  3      
  popq %r11                                                          #  71    0x277c5  3      
  andl $0xffffffe0, %r11d                                            #  72    0x277c8  7      
  addq %r15, %r11                                                    #  73    0x277cf  3      
  jmpq %r11                                                          #  74    0x277d2  3      
  nop                                                                #  75    0x277d5  1      
.L_27840:                                                            #        0x277d6  0      
  movl $0x10030c60, %edi                                             #  76    0x277d6  5      
  nop                                                                #  77    0x277db  1      
  nop                                                                #  78    0x277dc  1      
  callq .__cxa_guard_acquire                                         #  79    0x277dd  5      
  testl %eax, %eax                                                   #  80    0x277e2  2      
  je .L_27700                                                        #  81    0x277e4  6      
  nop                                                                #  82    0x277ea  1      
  nop                                                                #  83    0x277eb  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x277ec  5      
  movl %eax, %edi                                                    #  85    0x277f1  2      
  movl $0x10020478, %esi                                             #  86    0x277f3  5      
  nop                                                                #  87    0x277f8  1      
  nop                                                                #  88    0x277f9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x277fa  5      
  movl $0x10030c60, %edi                                             #  90    0x277ff  5      
  movl %eax, 0x1000945e(%rip)                                        #  91    0x27804  6      
  nop                                                                #  92    0x2780a  1      
  nop                                                                #  93    0x2780b  1      
  callq .__cxa_guard_release                                         #  94    0x2780c  5      
  jmpq .L_27700                                                      #  95    0x27811  5      
  nop                                                                #  96    0x27816  1      
  nop                                                                #  97    0x27817  1      
.L_278e0:                                                            #        0x27818  0      
  addl $0x18, %esp                                                   #  98    0x27818  3      
  addq %r15, %rsp                                                    #  99    0x2781b  3      
  movl $0xfffffffa, %eax                                             #  100   0x2781e  5      
  popq %rbx                                                          #  101   0x27823  2      
  popq %r12                                                          #  102   0x27825  3      
  popq %r11                                                          #  103   0x27828  3      
  andl $0xffffffe0, %r11d                                            #  104   0x2782b  7      
  addq %r15, %r11                                                    #  105   0x27832  3      
  jmpq %r11                                                          #  106   0x27835  3      
  nop                                                                #  107   0x27838  1      
.L_27900:                                                            #        0x27839  0      
  nop                                                                #  108   0x27839  1      
  nop                                                                #  109   0x2783a  1      
  callq ._ZN2pp6Module3GetEv                                         #  110   0x2783b  5      
  movl %eax, %edi                                                    #  111   0x27840  2      
  movl $0x10020478, %esi                                             #  112   0x27842  5      
  nop                                                                #  113   0x27847  1      
  nop                                                                #  114   0x27848  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  115   0x27849  5      
  movl $0x10030c60, %edi                                             #  116   0x2784e  5      
  movl %eax, 0x1000940f(%rip)                                        #  117   0x27853  6      
  nop                                                                #  118   0x27859  1      
  nop                                                                #  119   0x2785a  1      
  callq .__cxa_guard_release                                         #  120   0x2785b  5      
  jmpq .L_277a0                                                      #  121   0x27860  5      
  nop                                                                #  122   0x27865  1      
  nop                                                                #  123   0x27866  1      
.L_27980:                                                            #        0x27867  0      
  movl %eax, %ebx                                                    #  124   0x27867  2      
  movl $0x10030c60, %edi                                             #  125   0x27869  5      
  nop                                                                #  126   0x2786e  1      
  nop                                                                #  127   0x2786f  1      
  callq .__cxa_guard_abort                                           #  128   0x27870  5      
  movl %ebx, %edi                                                    #  129   0x27875  2      
  nop                                                                #  130   0x27877  1      
  nop                                                                #  131   0x27878  1      
  callq ._Unwind_Resume                                              #  132   0x27879  5      
  jmpq .L_27980                                                      #  133   0x2787e  5      
  nop                                                                #  134   0x27883  1      
  nop                                                                #  135   0x27884  1      
                                                                                              
.size _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE

