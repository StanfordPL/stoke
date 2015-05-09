  .text
  .globl _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, @function

#! file-offset 0x28540
#! rip-offset  0x28540
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE:  #        0x28540  0      
  pushq %r12                                                          #  1     0x28540  3      
  movl %edi, %r12d                                                    #  2     0x28543  3      
  pushq %rbx                                                          #  3     0x28546  2      
  movl %esi, %ebx                                                     #  4     0x28548  2      
  subl $0x18, %esp                                                    #  5     0x2854a  3      
  addq %r15, %rsp                                                     #  6     0x2854d  3      
  cmpb $0x0, 0x10008709(%rip)                                         #  7     0x28550  7      
  je .L_286a0                                                         #  8     0x28557  6      
  nop                                                                 #  9     0x2855d  1      
.L_28560:                                                             #        0x2855e  0      
  movl 0x10008704(%rip), %eax                                         #  10    0x2855e  6      
  testq %rax, %rax                                                    #  11    0x28564  3      
  je .L_28620                                                         #  12    0x28567  6      
  cmpb $0x0, 0x100086ec(%rip)                                         #  13    0x2856d  7      
  je .L_285c0                                                         #  14    0x28574  6      
  nop                                                                 #  15    0x2857a  1      
.L_28580:                                                             #        0x2857b  0      
  movl %ebx, %ebx                                                     #  16    0x2857b  2      
  movq (%r15,%rbx,1), %rsi                                            #  17    0x2857d  4      
  movl %eax, %eax                                                     #  18    0x28581  2      
  movl 0x20(%r15,%rax,1), %eax                                        #  19    0x28583  5      
  movq %rsi, (%rsp)                                                   #  20    0x28588  4      
  movl %ebx, %ebx                                                     #  21    0x2858c  2      
  movl 0x8(%r15,%rbx,1), %edx                                         #  22    0x2858e  5      
  movl %edx, 0x8(%rsp)                                                #  23    0x28593  4      
  nop                                                                 #  24    0x28597  1      
  movl %r12d, %r12d                                                   #  25    0x28598  3      
  movl 0x4(%r15,%r12,1), %edi                                         #  26    0x2859b  5      
  addl $0x18, %esp                                                    #  27    0x285a0  3      
  addq %r15, %rsp                                                     #  28    0x285a3  3      
  popq %rbx                                                           #  29    0x285a6  2      
  popq %r12                                                           #  30    0x285a8  3      
  andl $0xffffffe0, %eax                                              #  31    0x285ab  5      
  addq %r15, %rax                                                     #  32    0x285b0  3      
  jmpq %rax                                                           #  33    0x285b3  2      
  nop                                                                 #  34    0x285b5  1      
.L_285c0:                                                             #        0x285b6  0      
  movl $0x10030c60, %edi                                              #  35    0x285b6  5      
  nop                                                                 #  36    0x285bb  1      
  nop                                                                 #  37    0x285bc  1      
  callq .__cxa_guard_acquire                                          #  38    0x285bd  5      
  testl %eax, %eax                                                    #  39    0x285c2  2      
  jne .L_28760                                                        #  40    0x285c4  6      
  nop                                                                 #  41    0x285ca  1      
  nop                                                                 #  42    0x285cb  1      
.L_28600:                                                             #        0x285cc  0      
  movl 0x10008696(%rip), %eax                                         #  43    0x285cc  6      
  jmpq .L_28580                                                       #  44    0x285d2  5      
  nop                                                                 #  45    0x285d7  1      
  nop                                                                 #  46    0x285d8  1      
.L_28620:                                                             #        0x285d9  0      
  movl %ebx, %ebx                                                     #  47    0x285d9  2      
  movl (%r15,%rbx,1), %ecx                                            #  48    0x285db  4      
  testl %ecx, %ecx                                                    #  49    0x285df  2      
  je .L_28740                                                         #  50    0x285e1  6      
  movl %ebx, %ebx                                                     #  51    0x285e7  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                        #  52    0x285e9  6      
  jne .L_28740                                                        #  53    0x285ef  6      
  nop                                                                 #  54    0x285f5  1      
  nop                                                                 #  55    0x285f6  1      
  nop                                                                 #  56    0x285f7  1      
  callq ._ZN2pp6Module3GetEv                                          #  57    0x285f8  5      
  movl %eax, %eax                                                     #  58    0x285fd  2      
  movl %ebx, %edx                                                     #  59    0x285ff  2      
  movl $0xfffffffa, %ecx                                              #  60    0x28601  5      
  movl %eax, %eax                                                     #  61    0x28606  2      
  movl 0x24(%r15,%rax,1), %edi                                        #  62    0x28608  5      
  xorl %esi, %esi                                                     #  63    0x2860d  2      
  nop                                                                 #  64    0x2860f  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi   #  65    0x28610  5      
  addl $0x18, %esp                                                    #  66    0x28615  3      
  addq %r15, %rsp                                                     #  67    0x28618  3      
  movl $0xffffffff, %eax                                              #  68    0x2861b  5      
  popq %rbx                                                           #  69    0x28620  2      
  popq %r12                                                           #  70    0x28622  3      
  popq %r11                                                           #  71    0x28625  3      
  andl $0xffffffe0, %r11d                                             #  72    0x28628  7      
  addq %r15, %r11                                                     #  73    0x2862f  3      
  jmpq %r11                                                           #  74    0x28632  3      
  nop                                                                 #  75    0x28635  1      
.L_286a0:                                                             #        0x28636  0      
  movl $0x10030c60, %edi                                              #  76    0x28636  5      
  nop                                                                 #  77    0x2863b  1      
  nop                                                                 #  78    0x2863c  1      
  callq .__cxa_guard_acquire                                          #  79    0x2863d  5      
  testl %eax, %eax                                                    #  80    0x28642  2      
  je .L_28560                                                         #  81    0x28644  6      
  nop                                                                 #  82    0x2864a  1      
  nop                                                                 #  83    0x2864b  1      
  callq ._ZN2pp6Module3GetEv                                          #  84    0x2864c  5      
  movl %eax, %edi                                                     #  85    0x28651  2      
  movl $0x10020478, %esi                                              #  86    0x28653  5      
  nop                                                                 #  87    0x28658  1      
  nop                                                                 #  88    0x28659  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  89    0x2865a  5      
  movl $0x10030c60, %edi                                              #  90    0x2865f  5      
  movl %eax, 0x100085fe(%rip)                                         #  91    0x28664  6      
  nop                                                                 #  92    0x2866a  1      
  nop                                                                 #  93    0x2866b  1      
  callq .__cxa_guard_release                                          #  94    0x2866c  5      
  jmpq .L_28560                                                       #  95    0x28671  5      
  nop                                                                 #  96    0x28676  1      
  nop                                                                 #  97    0x28677  1      
.L_28740:                                                             #        0x28678  0      
  addl $0x18, %esp                                                    #  98    0x28678  3      
  addq %r15, %rsp                                                     #  99    0x2867b  3      
  movl $0xfffffffa, %eax                                              #  100   0x2867e  5      
  popq %rbx                                                           #  101   0x28683  2      
  popq %r12                                                           #  102   0x28685  3      
  popq %r11                                                           #  103   0x28688  3      
  andl $0xffffffe0, %r11d                                             #  104   0x2868b  7      
  addq %r15, %r11                                                     #  105   0x28692  3      
  jmpq %r11                                                           #  106   0x28695  3      
  nop                                                                 #  107   0x28698  1      
.L_28760:                                                             #        0x28699  0      
  nop                                                                 #  108   0x28699  1      
  nop                                                                 #  109   0x2869a  1      
  callq ._ZN2pp6Module3GetEv                                          #  110   0x2869b  5      
  movl %eax, %edi                                                     #  111   0x286a0  2      
  movl $0x10020478, %esi                                              #  112   0x286a2  5      
  nop                                                                 #  113   0x286a7  1      
  nop                                                                 #  114   0x286a8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  115   0x286a9  5      
  movl $0x10030c60, %edi                                              #  116   0x286ae  5      
  movl %eax, 0x100085af(%rip)                                         #  117   0x286b3  6      
  nop                                                                 #  118   0x286b9  1      
  nop                                                                 #  119   0x286ba  1      
  callq .__cxa_guard_release                                          #  120   0x286bb  5      
  jmpq .L_28600                                                       #  121   0x286c0  5      
  nop                                                                 #  122   0x286c5  1      
  nop                                                                 #  123   0x286c6  1      
.L_287e0:                                                             #        0x286c7  0      
  movl %eax, %ebx                                                     #  124   0x286c7  2      
  movl $0x10030c60, %edi                                              #  125   0x286c9  5      
  nop                                                                 #  126   0x286ce  1      
  nop                                                                 #  127   0x286cf  1      
  callq .__cxa_guard_abort                                            #  128   0x286d0  5      
  movl %ebx, %edi                                                     #  129   0x286d5  2      
  nop                                                                 #  130   0x286d7  1      
  nop                                                                 #  131   0x286d8  1      
  callq ._Unwind_Resume                                               #  132   0x286d9  5      
  jmpq .L_287e0                                                       #  133   0x286de  5      
  nop                                                                 #  134   0x286e3  1      
  nop                                                                 #  135   0x286e4  1      
                                                                                               
.size _ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader21FinishStreamingToFileERKNS_18CompletionCallbackE

