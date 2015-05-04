  .text
  .globl _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, @function

#! file-offset 0x285e0
#! rip-offset  0x285e0
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE:  #        0x285e0  0      
  pushq %r12                                                          #  1     0x285e0  3      
  movl %edi, %r12d                                                    #  2     0x285e3  3      
  pushq %rbx                                                          #  3     0x285e6  2      
  movl %esi, %ebx                                                     #  4     0x285e8  2      
  subl $0x18, %esp                                                    #  5     0x285ea  3      
  addq %r15, %rsp                                                     #  6     0x285ed  3      
  cmpb $0x0, 0x10008669(%rip)                                         #  7     0x285f0  7      
  je .L_28740                                                         #  8     0x285f7  6      
  nop                                                                 #  9     0x285fd  1      
.L_28600:                                                             #        0x285fe  0      
  movl 0x10008664(%rip), %eax                                         #  10    0x285fe  6      
  testq %rax, %rax                                                    #  11    0x28604  3      
  je .L_286c0                                                         #  12    0x28607  6      
  cmpb $0x0, 0x1000864c(%rip)                                         #  13    0x2860d  7      
  je .L_28660                                                         #  14    0x28614  6      
  nop                                                                 #  15    0x2861a  1      
.L_28620:                                                             #        0x2861b  0      
  movl %ebx, %ebx                                                     #  16    0x2861b  2      
  movq (%r15,%rbx,1), %rsi                                            #  17    0x2861d  4      
  movl %eax, %eax                                                     #  18    0x28621  2      
  movl 0x20(%r15,%rax,1), %eax                                        #  19    0x28623  5      
  movq %rsi, (%rsp)                                                   #  20    0x28628  4      
  movl %ebx, %ebx                                                     #  21    0x2862c  2      
  movl 0x8(%r15,%rbx,1), %edx                                         #  22    0x2862e  5      
  movl %edx, 0x8(%rsp)                                                #  23    0x28633  4      
  nop                                                                 #  24    0x28637  1      
  movl %r12d, %r12d                                                   #  25    0x28638  3      
  movl 0x4(%r15,%r12,1), %edi                                         #  26    0x2863b  5      
  addl $0x18, %esp                                                    #  27    0x28640  3      
  addq %r15, %rsp                                                     #  28    0x28643  3      
  popq %rbx                                                           #  29    0x28646  2      
  popq %r12                                                           #  30    0x28648  3      
  andl $0xffffffe0, %eax                                              #  31    0x2864b  5      
  addq %r15, %rax                                                     #  32    0x28650  3      
  jmpq %rax                                                           #  33    0x28653  2      
  nop                                                                 #  34    0x28655  1      
.L_28660:                                                             #        0x28656  0      
  movl $0x10030c60, %edi                                              #  35    0x28656  5      
  nop                                                                 #  36    0x2865b  1      
  nop                                                                 #  37    0x2865c  1      
  callq .__cxa_guard_acquire                                          #  38    0x2865d  5      
  testl %eax, %eax                                                    #  39    0x28662  2      
  jne .L_28800                                                        #  40    0x28664  6      
  nop                                                                 #  41    0x2866a  1      
  nop                                                                 #  42    0x2866b  1      
.L_286a0:                                                             #        0x2866c  0      
  movl 0x100085f6(%rip), %eax                                         #  43    0x2866c  6      
  jmpq .L_28620                                                       #  44    0x28672  5      
  nop                                                                 #  45    0x28677  1      
  nop                                                                 #  46    0x28678  1      
.L_286c0:                                                             #        0x28679  0      
  movl %ebx, %ebx                                                     #  47    0x28679  2      
  movl (%r15,%rbx,1), %ecx                                            #  48    0x2867b  4      
  testl %ecx, %ecx                                                    #  49    0x2867f  2      
  je .L_287e0                                                         #  50    0x28681  6      
  movl %ebx, %ebx                                                     #  51    0x28687  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                        #  52    0x28689  6      
  jne .L_287e0                                                        #  53    0x2868f  6      
  nop                                                                 #  54    0x28695  1      
  nop                                                                 #  55    0x28696  1      
  nop                                                                 #  56    0x28697  1      
  callq ._ZN2pp6Module3GetEv                                          #  57    0x28698  5      
  movl %eax, %eax                                                     #  58    0x2869d  2      
  movl %ebx, %edx                                                     #  59    0x2869f  2      
  movl $0xfffffffa, %ecx                                              #  60    0x286a1  5      
  movl %eax, %eax                                                     #  61    0x286a6  2      
  movl 0x24(%r15,%rax,1), %edi                                        #  62    0x286a8  5      
  xorl %esi, %esi                                                     #  63    0x286ad  2      
  nop                                                                 #  64    0x286af  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi   #  65    0x286b0  5      
  addl $0x18, %esp                                                    #  66    0x286b5  3      
  addq %r15, %rsp                                                     #  67    0x286b8  3      
  movl $0xffffffff, %eax                                              #  68    0x286bb  5      
  popq %rbx                                                           #  69    0x286c0  2      
  popq %r12                                                           #  70    0x286c2  3      
  popq %r11                                                           #  71    0x286c5  3      
  andl $0xffffffe0, %r11d                                             #  72    0x286c8  7      
  addq %r15, %r11                                                     #  73    0x286cf  3      
  jmpq %r11                                                           #  74    0x286d2  3      
  nop                                                                 #  75    0x286d5  1      
.L_28740:                                                             #        0x286d6  0      
  movl $0x10030c60, %edi                                              #  76    0x286d6  5      
  nop                                                                 #  77    0x286db  1      
  nop                                                                 #  78    0x286dc  1      
  callq .__cxa_guard_acquire                                          #  79    0x286dd  5      
  testl %eax, %eax                                                    #  80    0x286e2  2      
  je .L_28600                                                         #  81    0x286e4  6      
  nop                                                                 #  82    0x286ea  1      
  nop                                                                 #  83    0x286eb  1      
  callq ._ZN2pp6Module3GetEv                                          #  84    0x286ec  5      
  movl %eax, %edi                                                     #  85    0x286f1  2      
  movl $0x10020478, %esi                                              #  86    0x286f3  5      
  nop                                                                 #  87    0x286f8  1      
  nop                                                                 #  88    0x286f9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  89    0x286fa  5      
  movl $0x10030c60, %edi                                              #  90    0x286ff  5      
  movl %eax, 0x1000855e(%rip)                                         #  91    0x28704  6      
  nop                                                                 #  92    0x2870a  1      
  nop                                                                 #  93    0x2870b  1      
  callq .__cxa_guard_release                                          #  94    0x2870c  5      
  jmpq .L_28600                                                       #  95    0x28711  5      
  nop                                                                 #  96    0x28716  1      
  nop                                                                 #  97    0x28717  1      
.L_287e0:                                                             #        0x28718  0      
  addl $0x18, %esp                                                    #  98    0x28718  3      
  addq %r15, %rsp                                                     #  99    0x2871b  3      
  movl $0xfffffffa, %eax                                              #  100   0x2871e  5      
  popq %rbx                                                           #  101   0x28723  2      
  popq %r12                                                           #  102   0x28725  3      
  popq %r11                                                           #  103   0x28728  3      
  andl $0xffffffe0, %r11d                                             #  104   0x2872b  7      
  addq %r15, %r11                                                     #  105   0x28732  3      
  jmpq %r11                                                           #  106   0x28735  3      
  nop                                                                 #  107   0x28738  1      
.L_28800:                                                             #        0x28739  0      
  nop                                                                 #  108   0x28739  1      
  nop                                                                 #  109   0x2873a  1      
  callq ._ZN2pp6Module3GetEv                                          #  110   0x2873b  5      
  movl %eax, %edi                                                     #  111   0x28740  2      
  movl $0x10020478, %esi                                              #  112   0x28742  5      
  nop                                                                 #  113   0x28747  1      
  nop                                                                 #  114   0x28748  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  115   0x28749  5      
  movl $0x10030c60, %edi                                              #  116   0x2874e  5      
  movl %eax, 0x1000850f(%rip)                                         #  117   0x28753  6      
  nop                                                                 #  118   0x28759  1      
  nop                                                                 #  119   0x2875a  1      
  callq .__cxa_guard_release                                          #  120   0x2875b  5      
  jmpq .L_286a0                                                       #  121   0x28760  5      
  nop                                                                 #  122   0x28765  1      
  nop                                                                 #  123   0x28766  1      
.L_28880:                                                             #        0x28767  0      
  movl %eax, %ebx                                                     #  124   0x28767  2      
  movl $0x10030c60, %edi                                              #  125   0x28769  5      
  nop                                                                 #  126   0x2876e  1      
  nop                                                                 #  127   0x2876f  1      
  callq .__cxa_guard_abort                                            #  128   0x28770  5      
  movl %ebx, %edi                                                     #  129   0x28775  2      
  nop                                                                 #  130   0x28777  1      
  nop                                                                 #  131   0x28778  1      
  callq ._Unwind_Resume                                               #  132   0x28779  5      
  jmpq .L_28880                                                       #  133   0x2877e  5      
  nop                                                                 #  134   0x28783  1      
  nop                                                                 #  135   0x28784  1      
                                                                                               
.size _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE

