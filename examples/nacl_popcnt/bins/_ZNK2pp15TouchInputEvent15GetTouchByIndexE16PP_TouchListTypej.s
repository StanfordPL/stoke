  .text
  .globl _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, @function

#! file-offset 0x3a800
#! rip-offset  0x3a800
#! capacity    832 bytes

# Text                                                           #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej:  #        0x3a800  0      
  movq %rbx, -0x20(%rsp)                                         #  1     0x3a800  5      
  movq %r12, -0x18(%rsp)                                         #  2     0x3a805  5      
  movl %edi, %ebx                                                #  3     0x3a80a  2      
  movq %r13, -0x10(%rsp)                                         #  4     0x3a80c  5      
  movq %r14, -0x8(%rsp)                                          #  5     0x3a811  5      
  subl $0x48, %esp                                               #  6     0x3a816  3      
  addq %r15, %rsp                                                #  7     0x3a819  3      
  nop                                                            #  8     0x3a81c  1      
  cmpb $0x0, 0xfff64fc(%rip)                                     #  9     0x3a81d  7      
  movl %edx, %r14d                                               #  10    0x3a824  3      
  movl %ecx, %r13d                                               #  11    0x3a827  3      
  movl %esi, %r12d                                               #  12    0x3a82a  3      
  je .L_3a8e0                                                    #  13    0x3a82d  6      
  nop                                                            #  14    0x3a833  1      
.L_3a840:                                                        #        0x3a834  0      
  movl 0xfff64ee(%rip), %eax                                     #  15    0x3a834  6      
  testq %rax, %rax                                               #  16    0x3a83a  3      
  jne .L_3a980                                                   #  17    0x3a83d  6      
  xchgw %ax, %ax                                                 #  18    0x3a843  3      
  nop                                                            #  19    0x3a846  1      
.L_3a860:                                                        #        0x3a847  0      
  movl %ebx, %ebx                                                #  20    0x3a847  2      
  movq $0x0, (%r15,%rbx,1)                                       #  21    0x3a849  8      
  movl %ebx, %ebx                                                #  22    0x3a851  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                    #  23    0x3a853  9      
  movl %ebx, %ebx                                                #  24    0x3a85c  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                   #  25    0x3a85e  9      
  movl %ebx, %ebx                                                #  26    0x3a867  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                   #  27    0x3a869  9      
  nop                                                            #  28    0x3a872  1      
  nop                                                            #  29    0x3a873  1      
.L_3a8a0:                                                        #        0x3a874  0      
  movl %ebx, %eax                                                #  30    0x3a874  2      
  movq 0x30(%rsp), %r12                                          #  31    0x3a876  5      
  movq 0x28(%rsp), %rbx                                          #  32    0x3a87b  5      
  movq 0x38(%rsp), %r13                                          #  33    0x3a880  5      
  movq 0x40(%rsp), %r14                                          #  34    0x3a885  5      
  addl $0x48, %esp                                               #  35    0x3a88a  3      
  addq %r15, %rsp                                                #  36    0x3a88d  3      
  popq %r11                                                      #  37    0x3a890  3      
  xchgw %ax, %ax                                                 #  38    0x3a893  3      
  andl $0xffffffe0, %r11d                                        #  39    0x3a896  7      
  addq %r15, %r11                                                #  40    0x3a89d  3      
  jmpq %r11                                                      #  41    0x3a8a0  3      
  nop                                                            #  42    0x3a8a3  1      
  nop                                                            #  43    0x3a8a4  1      
.L_3a8e0:                                                        #        0x3a8a5  0      
  movl $0x10030d20, %edi                                         #  44    0x3a8a5  5      
  nop                                                            #  45    0x3a8aa  1      
  nop                                                            #  46    0x3a8ab  1      
  callq .__cxa_guard_acquire                                     #  47    0x3a8ac  5      
  testl %eax, %eax                                               #  48    0x3a8b1  2      
  je .L_3a840                                                    #  49    0x3a8b3  6      
  nop                                                            #  50    0x3a8b9  1      
  nop                                                            #  51    0x3a8ba  1      
  callq ._ZN2pp6Module3GetEv                                     #  52    0x3a8bb  5      
  movl %eax, %edi                                                #  53    0x3a8c0  2      
  movl $0x100206d8, %esi                                         #  54    0x3a8c2  5      
  nop                                                            #  55    0x3a8c7  1      
  nop                                                            #  56    0x3a8c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  57    0x3a8c9  5      
  movl $0x10030d20, %edi                                         #  58    0x3a8ce  5      
  movl %eax, 0xfff644f(%rip)                                     #  59    0x3a8d3  6      
  nop                                                            #  60    0x3a8d9  1      
  nop                                                            #  61    0x3a8da  1      
  callq .__cxa_guard_release                                     #  62    0x3a8db  5      
  movl 0xfff6442(%rip), %eax                                     #  63    0x3a8e0  6      
  testq %rax, %rax                                               #  64    0x3a8e6  3      
  je .L_3a860                                                    #  65    0x3a8e9  6      
  xchgw %ax, %ax                                                 #  66    0x3a8ef  3      
  nop                                                            #  67    0x3a8f2  1      
.L_3a980:                                                        #        0x3a8f3  0      
  cmpb $0x0, 0xfff6426(%rip)                                     #  68    0x3a8f3  7      
  je .L_3aa00                                                    #  69    0x3a8fa  6      
  nop                                                            #  70    0x3a900  1      
  nop                                                            #  71    0x3a901  1      
.L_3a9a0:                                                        #        0x3a902  0      
  movl %eax, %eax                                                #  72    0x3a902  2      
  movl 0x10(%r15,%rax,1), %eax                                   #  73    0x3a904  5      
  movl %esp, %edi                                                #  74    0x3a909  2      
  movl %r12d, %r12d                                              #  75    0x3a90b  3      
  movl 0x4(%r15,%r12,1), %esi                                    #  76    0x3a90e  5      
  movl %r13d, %ecx                                               #  77    0x3a913  3      
  movl %r14d, %edx                                               #  78    0x3a916  3      
  nop                                                            #  79    0x3a919  1      
  andl $0xffffffe0, %eax                                         #  80    0x3a91a  5      
  addq %r15, %rax                                                #  81    0x3a91f  3      
  callq %rax                                                     #  82    0x3a922  2      
  movq (%rsp), %rax                                              #  83    0x3a924  4      
  movl %ebx, %ebx                                                #  84    0x3a928  2      
  movq %rax, (%r15,%rbx,1)                                       #  85    0x3a92a  4      
  movq 0x8(%rsp), %rax                                           #  86    0x3a92e  5      
  movl %ebx, %ebx                                                #  87    0x3a933  2      
  movq %rax, 0x8(%r15,%rbx,1)                                    #  88    0x3a935  5      
  movq 0x10(%rsp), %rax                                          #  89    0x3a93a  5      
  nop                                                            #  90    0x3a93f  1      
  movl %ebx, %ebx                                                #  91    0x3a940  2      
  movq %rax, 0x10(%r15,%rbx,1)                                   #  92    0x3a942  5      
  movl 0x18(%rsp), %eax                                          #  93    0x3a947  4      
  movl %ebx, %ebx                                                #  94    0x3a94b  2      
  movl %eax, 0x18(%r15,%rbx,1)                                   #  95    0x3a94d  5      
  jmpq .L_3a8a0                                                  #  96    0x3a952  5      
  nop                                                            #  97    0x3a957  1      
.L_3aa00:                                                        #        0x3a958  0      
  movl $0x10030d20, %edi                                         #  98    0x3a958  5      
  nop                                                            #  99    0x3a95d  1      
  nop                                                            #  100   0x3a95e  1      
  callq .__cxa_guard_acquire                                     #  101   0x3a95f  5      
  testl %eax, %eax                                               #  102   0x3a964  2      
  jne .L_3aa60                                                   #  103   0x3a966  6      
  nop                                                            #  104   0x3a96c  1      
  nop                                                            #  105   0x3a96d  1      
.L_3aa40:                                                        #        0x3a96e  0      
  movl 0xfff63b4(%rip), %eax                                     #  106   0x3a96e  6      
  jmpq .L_3a9a0                                                  #  107   0x3a974  5      
  nop                                                            #  108   0x3a979  1      
  nop                                                            #  109   0x3a97a  1      
.L_3aa60:                                                        #        0x3a97b  0      
  nop                                                            #  110   0x3a97b  1      
  nop                                                            #  111   0x3a97c  1      
  callq ._ZN2pp6Module3GetEv                                     #  112   0x3a97d  5      
  movl %eax, %edi                                                #  113   0x3a982  2      
  movl $0x100206d8, %esi                                         #  114   0x3a984  5      
  nop                                                            #  115   0x3a989  1      
  nop                                                            #  116   0x3a98a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  117   0x3a98b  5      
  movl $0x10030d20, %edi                                         #  118   0x3a990  5      
  movl %eax, 0xfff638d(%rip)                                     #  119   0x3a995  6      
  nop                                                            #  120   0x3a99b  1      
  nop                                                            #  121   0x3a99c  1      
  callq .__cxa_guard_release                                     #  122   0x3a99d  5      
  jmpq .L_3aa40                                                  #  123   0x3a9a2  5      
  nop                                                            #  124   0x3a9a7  1      
  nop                                                            #  125   0x3a9a8  1      
.L_3aae0:                                                        #        0x3a9a9  0      
  movl %eax, %ebx                                                #  126   0x3a9a9  2      
  movl $0x10030d20, %edi                                         #  127   0x3a9ab  5      
  nop                                                            #  128   0x3a9b0  1      
  nop                                                            #  129   0x3a9b1  1      
  callq .__cxa_guard_abort                                       #  130   0x3a9b2  5      
  movl %ebx, %edi                                                #  131   0x3a9b7  2      
  nop                                                            #  132   0x3a9b9  1      
  nop                                                            #  133   0x3a9ba  1      
  callq ._Unwind_Resume                                          #  134   0x3a9bb  5      
  jmpq .L_3aae0                                                  #  135   0x3a9c0  5      
  nop                                                            #  136   0x3a9c5  1      
  nop                                                            #  137   0x3a9c6  1      
                                                                                          
.size _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej

