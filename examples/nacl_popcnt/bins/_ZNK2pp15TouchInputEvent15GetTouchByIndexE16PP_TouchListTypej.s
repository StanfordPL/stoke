  .text
  .globl _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, @function

#! file-offset 0x3a7e0
#! rip-offset  0x3a7e0
#! capacity    832 bytes

# Text                                                           #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej:  #        0x3a7e0  0      
  movq %rbx, -0x20(%rsp)                                         #  1     0x3a7e0  5      
  movq %r12, -0x18(%rsp)                                         #  2     0x3a7e5  5      
  movl %edi, %ebx                                                #  3     0x3a7ea  2      
  movq %r13, -0x10(%rsp)                                         #  4     0x3a7ec  5      
  movq %r14, -0x8(%rsp)                                          #  5     0x3a7f1  5      
  subl $0x48, %esp                                               #  6     0x3a7f6  3      
  addq %r15, %rsp                                                #  7     0x3a7f9  3      
  nop                                                            #  8     0x3a7fc  1      
  cmpb $0x0, 0xfff651c(%rip)                                     #  9     0x3a7fd  7      
  movl %edx, %r14d                                               #  10    0x3a804  3      
  movl %ecx, %r13d                                               #  11    0x3a807  3      
  movl %esi, %r12d                                               #  12    0x3a80a  3      
  je .L_3a8c0                                                    #  13    0x3a80d  6      
  nop                                                            #  14    0x3a813  1      
.L_3a820:                                                        #        0x3a814  0      
  movl 0xfff650e(%rip), %eax                                     #  15    0x3a814  6      
  testq %rax, %rax                                               #  16    0x3a81a  3      
  jne .L_3a960                                                   #  17    0x3a81d  6      
  xchgw %ax, %ax                                                 #  18    0x3a823  3      
  nop                                                            #  19    0x3a826  1      
.L_3a840:                                                        #        0x3a827  0      
  movl %ebx, %ebx                                                #  20    0x3a827  2      
  movq $0x0, (%r15,%rbx,1)                                       #  21    0x3a829  8      
  movl %ebx, %ebx                                                #  22    0x3a831  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                    #  23    0x3a833  9      
  movl %ebx, %ebx                                                #  24    0x3a83c  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                   #  25    0x3a83e  9      
  movl %ebx, %ebx                                                #  26    0x3a847  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                   #  27    0x3a849  9      
  nop                                                            #  28    0x3a852  1      
  nop                                                            #  29    0x3a853  1      
.L_3a880:                                                        #        0x3a854  0      
  movl %ebx, %eax                                                #  30    0x3a854  2      
  movq 0x30(%rsp), %r12                                          #  31    0x3a856  5      
  movq 0x28(%rsp), %rbx                                          #  32    0x3a85b  5      
  movq 0x38(%rsp), %r13                                          #  33    0x3a860  5      
  movq 0x40(%rsp), %r14                                          #  34    0x3a865  5      
  addl $0x48, %esp                                               #  35    0x3a86a  3      
  addq %r15, %rsp                                                #  36    0x3a86d  3      
  popq %r11                                                      #  37    0x3a870  3      
  xchgw %ax, %ax                                                 #  38    0x3a873  3      
  andl $0xffffffe0, %r11d                                        #  39    0x3a876  7      
  addq %r15, %r11                                                #  40    0x3a87d  3      
  jmpq %r11                                                      #  41    0x3a880  3      
  nop                                                            #  42    0x3a883  1      
  nop                                                            #  43    0x3a884  1      
.L_3a8c0:                                                        #        0x3a885  0      
  movl $0x10030d20, %edi                                         #  44    0x3a885  5      
  nop                                                            #  45    0x3a88a  1      
  nop                                                            #  46    0x3a88b  1      
  callq .__cxa_guard_acquire                                     #  47    0x3a88c  5      
  testl %eax, %eax                                               #  48    0x3a891  2      
  je .L_3a820                                                    #  49    0x3a893  6      
  nop                                                            #  50    0x3a899  1      
  nop                                                            #  51    0x3a89a  1      
  callq ._ZN2pp6Module3GetEv                                     #  52    0x3a89b  5      
  movl %eax, %edi                                                #  53    0x3a8a0  2      
  movl $0x100206d8, %esi                                         #  54    0x3a8a2  5      
  nop                                                            #  55    0x3a8a7  1      
  nop                                                            #  56    0x3a8a8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  57    0x3a8a9  5      
  movl $0x10030d20, %edi                                         #  58    0x3a8ae  5      
  movl %eax, 0xfff646f(%rip)                                     #  59    0x3a8b3  6      
  nop                                                            #  60    0x3a8b9  1      
  nop                                                            #  61    0x3a8ba  1      
  callq .__cxa_guard_release                                     #  62    0x3a8bb  5      
  movl 0xfff6462(%rip), %eax                                     #  63    0x3a8c0  6      
  testq %rax, %rax                                               #  64    0x3a8c6  3      
  je .L_3a840                                                    #  65    0x3a8c9  6      
  xchgw %ax, %ax                                                 #  66    0x3a8cf  3      
  nop                                                            #  67    0x3a8d2  1      
.L_3a960:                                                        #        0x3a8d3  0      
  cmpb $0x0, 0xfff6446(%rip)                                     #  68    0x3a8d3  7      
  je .L_3a9e0                                                    #  69    0x3a8da  6      
  nop                                                            #  70    0x3a8e0  1      
  nop                                                            #  71    0x3a8e1  1      
.L_3a980:                                                        #        0x3a8e2  0      
  movl %eax, %eax                                                #  72    0x3a8e2  2      
  movl 0x10(%r15,%rax,1), %eax                                   #  73    0x3a8e4  5      
  movl %esp, %edi                                                #  74    0x3a8e9  2      
  movl %r12d, %r12d                                              #  75    0x3a8eb  3      
  movl 0x4(%r15,%r12,1), %esi                                    #  76    0x3a8ee  5      
  movl %r13d, %ecx                                               #  77    0x3a8f3  3      
  movl %r14d, %edx                                               #  78    0x3a8f6  3      
  nop                                                            #  79    0x3a8f9  1      
  andl $0xffffffe0, %eax                                         #  80    0x3a8fa  5      
  addq %r15, %rax                                                #  81    0x3a8ff  3      
  callq %rax                                                     #  82    0x3a902  2      
  movq (%rsp), %rax                                              #  83    0x3a904  4      
  movl %ebx, %ebx                                                #  84    0x3a908  2      
  movq %rax, (%r15,%rbx,1)                                       #  85    0x3a90a  4      
  movq 0x8(%rsp), %rax                                           #  86    0x3a90e  5      
  movl %ebx, %ebx                                                #  87    0x3a913  2      
  movq %rax, 0x8(%r15,%rbx,1)                                    #  88    0x3a915  5      
  movq 0x10(%rsp), %rax                                          #  89    0x3a91a  5      
  nop                                                            #  90    0x3a91f  1      
  movl %ebx, %ebx                                                #  91    0x3a920  2      
  movq %rax, 0x10(%r15,%rbx,1)                                   #  92    0x3a922  5      
  movl 0x18(%rsp), %eax                                          #  93    0x3a927  4      
  movl %ebx, %ebx                                                #  94    0x3a92b  2      
  movl %eax, 0x18(%r15,%rbx,1)                                   #  95    0x3a92d  5      
  jmpq .L_3a880                                                  #  96    0x3a932  5      
  nop                                                            #  97    0x3a937  1      
.L_3a9e0:                                                        #        0x3a938  0      
  movl $0x10030d20, %edi                                         #  98    0x3a938  5      
  nop                                                            #  99    0x3a93d  1      
  nop                                                            #  100   0x3a93e  1      
  callq .__cxa_guard_acquire                                     #  101   0x3a93f  5      
  testl %eax, %eax                                               #  102   0x3a944  2      
  jne .L_3aa40                                                   #  103   0x3a946  6      
  nop                                                            #  104   0x3a94c  1      
  nop                                                            #  105   0x3a94d  1      
.L_3aa20:                                                        #        0x3a94e  0      
  movl 0xfff63d4(%rip), %eax                                     #  106   0x3a94e  6      
  jmpq .L_3a980                                                  #  107   0x3a954  5      
  nop                                                            #  108   0x3a959  1      
  nop                                                            #  109   0x3a95a  1      
.L_3aa40:                                                        #        0x3a95b  0      
  nop                                                            #  110   0x3a95b  1      
  nop                                                            #  111   0x3a95c  1      
  callq ._ZN2pp6Module3GetEv                                     #  112   0x3a95d  5      
  movl %eax, %edi                                                #  113   0x3a962  2      
  movl $0x100206d8, %esi                                         #  114   0x3a964  5      
  nop                                                            #  115   0x3a969  1      
  nop                                                            #  116   0x3a96a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  117   0x3a96b  5      
  movl $0x10030d20, %edi                                         #  118   0x3a970  5      
  movl %eax, 0xfff63ad(%rip)                                     #  119   0x3a975  6      
  nop                                                            #  120   0x3a97b  1      
  nop                                                            #  121   0x3a97c  1      
  callq .__cxa_guard_release                                     #  122   0x3a97d  5      
  jmpq .L_3aa20                                                  #  123   0x3a982  5      
  nop                                                            #  124   0x3a987  1      
  nop                                                            #  125   0x3a988  1      
.L_3aac0:                                                        #        0x3a989  0      
  movl %eax, %ebx                                                #  126   0x3a989  2      
  movl $0x10030d20, %edi                                         #  127   0x3a98b  5      
  nop                                                            #  128   0x3a990  1      
  nop                                                            #  129   0x3a991  1      
  callq .__cxa_guard_abort                                       #  130   0x3a992  5      
  movl %ebx, %edi                                                #  131   0x3a997  2      
  nop                                                            #  132   0x3a999  1      
  nop                                                            #  133   0x3a99a  1      
  callq ._Unwind_Resume                                          #  134   0x3a99b  5      
  jmpq .L_3aac0                                                  #  135   0x3a9a0  5      
  nop                                                            #  136   0x3a9a5  1      
  nop                                                            #  137   0x3a9a6  1      
                                                                                          
.size _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej

