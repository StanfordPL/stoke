  .text
  .globl _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, @function

#! file-offset 0x27700
#! rip-offset  0x27700
#! capacity    768 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE:        #        0x27700  0      
  pushq %r12                                                         #  1     0x27700  3      
  movl %edi, %r12d                                                   #  2     0x27703  3      
  pushq %rbx                                                         #  3     0x27706  2      
  movl %esi, %ebx                                                    #  4     0x27708  2      
  subl $0x18, %esp                                                   #  5     0x2770a  3      
  addq %r15, %rsp                                                    #  6     0x2770d  3      
  cmpb $0x0, 0x10009549(%rip)                                        #  7     0x27710  7      
  je .L_27860                                                        #  8     0x27717  6      
  nop                                                                #  9     0x2771d  1      
.L_27720:                                                            #        0x2771e  0      
  movl 0x10009544(%rip), %eax                                        #  10    0x2771e  6      
  testq %rax, %rax                                                   #  11    0x27724  3      
  je .L_277e0                                                        #  12    0x27727  6      
  cmpb $0x0, 0x1000952c(%rip)                                        #  13    0x2772d  7      
  je .L_27780                                                        #  14    0x27734  6      
  nop                                                                #  15    0x2773a  1      
.L_27740:                                                            #        0x2773b  0      
  movl %ebx, %ebx                                                    #  16    0x2773b  2      
  movq (%r15,%rbx,1), %rsi                                           #  17    0x2773d  4      
  movl %eax, %eax                                                    #  18    0x27741  2      
  movl 0xc(%r15,%rax,1), %eax                                        #  19    0x27743  5      
  movq %rsi, (%rsp)                                                  #  20    0x27748  4      
  movl %ebx, %ebx                                                    #  21    0x2774c  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  22    0x2774e  5      
  movl %edx, 0x8(%rsp)                                               #  23    0x27753  4      
  nop                                                                #  24    0x27757  1      
  movl %r12d, %r12d                                                  #  25    0x27758  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  26    0x2775b  5      
  addl $0x18, %esp                                                   #  27    0x27760  3      
  addq %r15, %rsp                                                    #  28    0x27763  3      
  popq %rbx                                                          #  29    0x27766  2      
  popq %r12                                                          #  30    0x27768  3      
  andl $0xffffffe0, %eax                                             #  31    0x2776b  5      
  addq %r15, %rax                                                    #  32    0x27770  3      
  jmpq %rax                                                          #  33    0x27773  2      
  nop                                                                #  34    0x27775  1      
.L_27780:                                                            #        0x27776  0      
  movl $0x10030c60, %edi                                             #  35    0x27776  5      
  nop                                                                #  36    0x2777b  1      
  nop                                                                #  37    0x2777c  1      
  callq .__cxa_guard_acquire                                         #  38    0x2777d  5      
  testl %eax, %eax                                                   #  39    0x27782  2      
  jne .L_27920                                                       #  40    0x27784  6      
  nop                                                                #  41    0x2778a  1      
  nop                                                                #  42    0x2778b  1      
.L_277c0:                                                            #        0x2778c  0      
  movl 0x100094d6(%rip), %eax                                        #  43    0x2778c  6      
  jmpq .L_27740                                                      #  44    0x27792  5      
  nop                                                                #  45    0x27797  1      
  nop                                                                #  46    0x27798  1      
.L_277e0:                                                            #        0x27799  0      
  movl %ebx, %ebx                                                    #  47    0x27799  2      
  movl (%r15,%rbx,1), %edx                                           #  48    0x2779b  4      
  testl %edx, %edx                                                   #  49    0x2779f  2      
  je .L_27900                                                        #  50    0x277a1  6      
  movl %ebx, %ebx                                                    #  51    0x277a7  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  52    0x277a9  6      
  jne .L_27900                                                       #  53    0x277af  6      
  nop                                                                #  54    0x277b5  1      
  nop                                                                #  55    0x277b6  1      
  nop                                                                #  56    0x277b7  1      
  callq ._ZN2pp6Module3GetEv                                         #  57    0x277b8  5      
  movl %eax, %eax                                                    #  58    0x277bd  2      
  movl %ebx, %edx                                                    #  59    0x277bf  2      
  movl $0xfffffffa, %ecx                                             #  60    0x277c1  5      
  movl %eax, %eax                                                    #  61    0x277c6  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  62    0x277c8  5      
  xorl %esi, %esi                                                    #  63    0x277cd  2      
  nop                                                                #  64    0x277cf  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  65    0x277d0  5      
  addl $0x18, %esp                                                   #  66    0x277d5  3      
  addq %r15, %rsp                                                    #  67    0x277d8  3      
  movl $0xffffffff, %eax                                             #  68    0x277db  5      
  popq %rbx                                                          #  69    0x277e0  2      
  popq %r12                                                          #  70    0x277e2  3      
  popq %r11                                                          #  71    0x277e5  3      
  andl $0xffffffe0, %r11d                                            #  72    0x277e8  7      
  addq %r15, %r11                                                    #  73    0x277ef  3      
  jmpq %r11                                                          #  74    0x277f2  3      
  nop                                                                #  75    0x277f5  1      
.L_27860:                                                            #        0x277f6  0      
  movl $0x10030c60, %edi                                             #  76    0x277f6  5      
  nop                                                                #  77    0x277fb  1      
  nop                                                                #  78    0x277fc  1      
  callq .__cxa_guard_acquire                                         #  79    0x277fd  5      
  testl %eax, %eax                                                   #  80    0x27802  2      
  je .L_27720                                                        #  81    0x27804  6      
  nop                                                                #  82    0x2780a  1      
  nop                                                                #  83    0x2780b  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x2780c  5      
  movl %eax, %edi                                                    #  85    0x27811  2      
  movl $0x10020478, %esi                                             #  86    0x27813  5      
  nop                                                                #  87    0x27818  1      
  nop                                                                #  88    0x27819  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x2781a  5      
  movl $0x10030c60, %edi                                             #  90    0x2781f  5      
  movl %eax, 0x1000943e(%rip)                                        #  91    0x27824  6      
  nop                                                                #  92    0x2782a  1      
  nop                                                                #  93    0x2782b  1      
  callq .__cxa_guard_release                                         #  94    0x2782c  5      
  jmpq .L_27720                                                      #  95    0x27831  5      
  nop                                                                #  96    0x27836  1      
  nop                                                                #  97    0x27837  1      
.L_27900:                                                            #        0x27838  0      
  addl $0x18, %esp                                                   #  98    0x27838  3      
  addq %r15, %rsp                                                    #  99    0x2783b  3      
  movl $0xfffffffa, %eax                                             #  100   0x2783e  5      
  popq %rbx                                                          #  101   0x27843  2      
  popq %r12                                                          #  102   0x27845  3      
  popq %r11                                                          #  103   0x27848  3      
  andl $0xffffffe0, %r11d                                            #  104   0x2784b  7      
  addq %r15, %r11                                                    #  105   0x27852  3      
  jmpq %r11                                                          #  106   0x27855  3      
  nop                                                                #  107   0x27858  1      
.L_27920:                                                            #        0x27859  0      
  nop                                                                #  108   0x27859  1      
  nop                                                                #  109   0x2785a  1      
  callq ._ZN2pp6Module3GetEv                                         #  110   0x2785b  5      
  movl %eax, %edi                                                    #  111   0x27860  2      
  movl $0x10020478, %esi                                             #  112   0x27862  5      
  nop                                                                #  113   0x27867  1      
  nop                                                                #  114   0x27868  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  115   0x27869  5      
  movl $0x10030c60, %edi                                             #  116   0x2786e  5      
  movl %eax, 0x100093ef(%rip)                                        #  117   0x27873  6      
  nop                                                                #  118   0x27879  1      
  nop                                                                #  119   0x2787a  1      
  callq .__cxa_guard_release                                         #  120   0x2787b  5      
  jmpq .L_277c0                                                      #  121   0x27880  5      
  nop                                                                #  122   0x27885  1      
  nop                                                                #  123   0x27886  1      
.L_279a0:                                                            #        0x27887  0      
  movl %eax, %ebx                                                    #  124   0x27887  2      
  movl $0x10030c60, %edi                                             #  125   0x27889  5      
  nop                                                                #  126   0x2788e  1      
  nop                                                                #  127   0x2788f  1      
  callq .__cxa_guard_abort                                           #  128   0x27890  5      
  movl %ebx, %edi                                                    #  129   0x27895  2      
  nop                                                                #  130   0x27897  1      
  nop                                                                #  131   0x27898  1      
  callq ._Unwind_Resume                                              #  132   0x27899  5      
  jmpq .L_279a0                                                      #  133   0x2789e  5      
  nop                                                                #  134   0x278a3  1      
  nop                                                                #  135   0x278a4  1      
                                                                                              
.size _ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader14FollowRedirectERKNS_18CompletionCallbackE

