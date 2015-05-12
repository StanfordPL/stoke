  .text
  .globl _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, @function

#! file-offset 0x28560
#! rip-offset  0x28560
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE:  #        0x28560  0      
  pushq %r12                                                          #  1     0x28560  3      
  movl %edi, %r12d                                                    #  2     0x28563  3      
  pushq %rbx                                                          #  3     0x28566  2      
  movl %esi, %ebx                                                     #  4     0x28568  2      
  subl $0x18, %esp                                                    #  5     0x2856a  3      
  addq %r15, %rsp                                                     #  6     0x2856d  3      
  cmpb $0x0, 0x100086e9(%rip)                                         #  7     0x28570  7      
  je .L_286c0                                                         #  8     0x28577  6      
  nop                                                                 #  9     0x2857d  1      
.L_28580:                                                             #        0x2857e  0      
  movl 0x100086e4(%rip), %eax                                         #  10    0x2857e  6      
  testq %rax, %rax                                                    #  11    0x28584  3      
  je .L_28640                                                         #  12    0x28587  6      
  cmpb $0x0, 0x100086cc(%rip)                                         #  13    0x2858d  7      
  je .L_285e0                                                         #  14    0x28594  6      
  nop                                                                 #  15    0x2859a  1      
.L_285a0:                                                             #        0x2859b  0      
  movl %ebx, %ebx                                                     #  16    0x2859b  2      
  movq (%r15,%rbx,1), %rsi                                            #  17    0x2859d  4      
  movl %eax, %eax                                                     #  18    0x285a1  2      
  movl 0x20(%r15,%rax,1), %eax                                        #  19    0x285a3  5      
  movq %rsi, (%rsp)                                                   #  20    0x285a8  4      
  movl %ebx, %ebx                                                     #  21    0x285ac  2      
  movl 0x8(%r15,%rbx,1), %edx                                         #  22    0x285ae  5      
  movl %edx, 0x8(%rsp)                                                #  23    0x285b3  4      
  nop                                                                 #  24    0x285b7  1      
  movl %r12d, %r12d                                                   #  25    0x285b8  3      
  movl 0x4(%r15,%r12,1), %edi                                         #  26    0x285bb  5      
  addl $0x18, %esp                                                    #  27    0x285c0  3      
  addq %r15, %rsp                                                     #  28    0x285c3  3      
  popq %rbx                                                           #  29    0x285c6  2      
  popq %r12                                                           #  30    0x285c8  3      
  andl $0xffffffe0, %eax                                              #  31    0x285cb  5      
  addq %r15, %rax                                                     #  32    0x285d0  3      
  jmpq %rax                                                           #  33    0x285d3  2      
  nop                                                                 #  34    0x285d5  1      
.L_285e0:                                                             #        0x285d6  0      
  movl $0x10030c60, %edi                                              #  35    0x285d6  5      
  nop                                                                 #  36    0x285db  1      
  nop                                                                 #  37    0x285dc  1      
  callq .__cxa_guard_acquire                                          #  38    0x285dd  5      
  testl %eax, %eax                                                    #  39    0x285e2  2      
  jne .L_28780                                                        #  40    0x285e4  6      
  nop                                                                 #  41    0x285ea  1      
  nop                                                                 #  42    0x285eb  1      
.L_28620:                                                             #        0x285ec  0      
  movl 0x10008676(%rip), %eax                                         #  43    0x285ec  6      
  jmpq .L_285a0                                                       #  44    0x285f2  5      
  nop                                                                 #  45    0x285f7  1      
  nop                                                                 #  46    0x285f8  1      
.L_28640:                                                             #        0x285f9  0      
  movl %ebx, %ebx                                                     #  47    0x285f9  2      
  movl (%r15,%rbx,1), %ecx                                            #  48    0x285fb  4      
  testl %ecx, %ecx                                                    #  49    0x285ff  2      
  je .L_28760                                                         #  50    0x28601  6      
  movl %ebx, %ebx                                                     #  51    0x28607  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                        #  52    0x28609  6      
  jne .L_28760                                                        #  53    0x2860f  6      
  nop                                                                 #  54    0x28615  1      
  nop                                                                 #  55    0x28616  1      
  nop                                                                 #  56    0x28617  1      
  callq ._ZN2pp6Module3GetEv                                          #  57    0x28618  5      
  movl %eax, %eax                                                     #  58    0x2861d  2      
  movl %ebx, %edx                                                     #  59    0x2861f  2      
  movl $0xfffffffa, %ecx                                              #  60    0x28621  5      
  movl %eax, %eax                                                     #  61    0x28626  2      
  movl 0x24(%r15,%rax,1), %edi                                        #  62    0x28628  5      
  xorl %esi, %esi                                                     #  63    0x2862d  2      
  nop                                                                 #  64    0x2862f  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi   #  65    0x28630  5      
  addl $0x18, %esp                                                    #  66    0x28635  3      
  addq %r15, %rsp                                                     #  67    0x28638  3      
  movl $0xffffffff, %eax                                              #  68    0x2863b  5      
  popq %rbx                                                           #  69    0x28640  2      
  popq %r12                                                           #  70    0x28642  3      
  popq %r11                                                           #  71    0x28645  3      
  andl $0xffffffe0, %r11d                                             #  72    0x28648  7      
  addq %r15, %r11                                                     #  73    0x2864f  3      
  jmpq %r11                                                           #  74    0x28652  3      
  nop                                                                 #  75    0x28655  1      
.L_286c0:                                                             #        0x28656  0      
  movl $0x10030c60, %edi                                              #  76    0x28656  5      
  nop                                                                 #  77    0x2865b  1      
  nop                                                                 #  78    0x2865c  1      
  callq .__cxa_guard_acquire                                          #  79    0x2865d  5      
  testl %eax, %eax                                                    #  80    0x28662  2      
  je .L_28580                                                         #  81    0x28664  6      
  nop                                                                 #  82    0x2866a  1      
  nop                                                                 #  83    0x2866b  1      
  callq ._ZN2pp6Module3GetEv                                          #  84    0x2866c  5      
  movl %eax, %edi                                                     #  85    0x28671  2      
  movl $0x10020478, %esi                                              #  86    0x28673  5      
  nop                                                                 #  87    0x28678  1      
  nop                                                                 #  88    0x28679  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  89    0x2867a  5      
  movl $0x10030c60, %edi                                              #  90    0x2867f  5      
  movl %eax, 0x100085de(%rip)                                         #  91    0x28684  6      
  nop                                                                 #  92    0x2868a  1      
  nop                                                                 #  93    0x2868b  1      
  callq .__cxa_guard_release                                          #  94    0x2868c  5      
  jmpq .L_28580                                                       #  95    0x28691  5      
  nop                                                                 #  96    0x28696  1      
  nop                                                                 #  97    0x28697  1      
.L_28760:                                                             #        0x28698  0      
  addl $0x18, %esp                                                    #  98    0x28698  3      
  addq %r15, %rsp                                                     #  99    0x2869b  3      
  movl $0xfffffffa, %eax                                              #  100   0x2869e  5      
  popq %rbx                                                           #  101   0x286a3  2      
  popq %r12                                                           #  102   0x286a5  3      
  popq %r11                                                           #  103   0x286a8  3      
  andl $0xffffffe0, %r11d                                             #  104   0x286ab  7      
  addq %r15, %r11                                                     #  105   0x286b2  3      
  jmpq %r11                                                           #  106   0x286b5  3      
  nop                                                                 #  107   0x286b8  1      
.L_28780:                                                             #        0x286b9  0      
  nop                                                                 #  108   0x286b9  1      
  nop                                                                 #  109   0x286ba  1      
  callq ._ZN2pp6Module3GetEv                                          #  110   0x286bb  5      
  movl %eax, %edi                                                     #  111   0x286c0  2      
  movl $0x10020478, %esi                                              #  112   0x286c2  5      
  nop                                                                 #  113   0x286c7  1      
  nop                                                                 #  114   0x286c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  115   0x286c9  5      
  movl $0x10030c60, %edi                                              #  116   0x286ce  5      
  movl %eax, 0x1000858f(%rip)                                         #  117   0x286d3  6      
  nop                                                                 #  118   0x286d9  1      
  nop                                                                 #  119   0x286da  1      
  callq .__cxa_guard_release                                          #  120   0x286db  5      
  jmpq .L_28620                                                       #  121   0x286e0  5      
  nop                                                                 #  122   0x286e5  1      
  nop                                                                 #  123   0x286e6  1      
.L_28800:                                                             #        0x286e7  0      
  movl %eax, %ebx                                                     #  124   0x286e7  2      
  movl $0x10030c60, %edi                                              #  125   0x286e9  5      
  nop                                                                 #  126   0x286ee  1      
  nop                                                                 #  127   0x286ef  1      
  callq .__cxa_guard_abort                                            #  128   0x286f0  5      
  movl %ebx, %edi                                                     #  129   0x286f5  2      
  nop                                                                 #  130   0x286f7  1      
  nop                                                                 #  131   0x286f8  1      
  callq ._Unwind_Resume                                               #  132   0x286f9  5      
  jmpq .L_28800                                                       #  133   0x286fe  5      
  nop                                                                 #  134   0x28703  1      
  nop                                                                 #  135   0x28704  1      
                                                                                               
.size _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE

