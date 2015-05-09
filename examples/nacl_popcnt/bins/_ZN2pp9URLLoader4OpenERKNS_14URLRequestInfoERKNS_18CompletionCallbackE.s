  .text
  .globl _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, @function

#! file-offset 0x28de0
#! rip-offset  0x28de0
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE:  #        0x28de0  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x28de0  5      
  movq %r12, -0x10(%rsp)                                                  #  2     0x28de5  5      
  movl %edx, %ebx                                                         #  3     0x28dea  2      
  movq %r13, -0x8(%rsp)                                                   #  4     0x28dec  5      
  subl $0x28, %esp                                                        #  5     0x28df1  3      
  addq %r15, %rsp                                                         #  6     0x28df4  3      
  cmpb $0x0, 0x10007e62(%rip)                                             #  7     0x28df7  7      
  xchgw %ax, %ax                                                          #  8     0x28dfe  3      
  movl %edi, %r13d                                                        #  9     0x28e01  3      
  movl %esi, %r12d                                                        #  10    0x28e04  3      
  je .L_28fc0                                                             #  11    0x28e07  6      
  nop                                                                     #  12    0x28e0d  1      
  nop                                                                     #  13    0x28e0e  1      
.L_28e20:                                                                 #        0x28e0f  0      
  movl 0x10007e53(%rip), %eax                                             #  14    0x28e0f  6      
  testq %rax, %rax                                                        #  15    0x28e15  3      
  je .L_28f00                                                             #  16    0x28e18  6      
  cmpb $0x0, 0x10007e3b(%rip)                                             #  17    0x28e1e  7      
  je .L_28ea0                                                             #  18    0x28e25  6      
  nop                                                                     #  19    0x28e2b  1      
.L_28e40:                                                                 #        0x28e2c  0      
  movl %ebx, %ebx                                                         #  20    0x28e2c  2      
  movq (%r15,%rbx,1), %rdx                                                #  21    0x28e2e  4      
  movl %eax, %eax                                                         #  22    0x28e32  2      
  movl 0x8(%r15,%rax,1), %eax                                             #  23    0x28e34  5      
  movq %rdx, (%rsp)                                                       #  24    0x28e39  4      
  movl %ebx, %ebx                                                         #  25    0x28e3d  2      
  movl 0x8(%r15,%rbx,1), %ecx                                             #  26    0x28e3f  5      
  movq 0x10(%rsp), %rbx                                                   #  27    0x28e44  5      
  nop                                                                     #  28    0x28e49  1      
  movl %ecx, 0x8(%rsp)                                                    #  29    0x28e4a  4      
  movl %r12d, %r12d                                                       #  30    0x28e4e  3      
  movl 0x4(%r15,%r12,1), %esi                                             #  31    0x28e51  5      
  movl %r13d, %r13d                                                       #  32    0x28e56  3      
  movl 0x4(%r15,%r13,1), %edi                                             #  33    0x28e59  5      
  movq 0x18(%rsp), %r12                                                   #  34    0x28e5e  5      
  movq 0x20(%rsp), %r13                                                   #  35    0x28e63  5      
  xchgw %ax, %ax                                                          #  36    0x28e68  3      
  addl $0x28, %esp                                                        #  37    0x28e6b  3      
  addq %r15, %rsp                                                         #  38    0x28e6e  3      
  andl $0xffffffe0, %eax                                                  #  39    0x28e71  5      
  addq %r15, %rax                                                         #  40    0x28e76  3      
  jmpq %rax                                                               #  41    0x28e79  2      
  nop                                                                     #  42    0x28e7b  1      
  nop                                                                     #  43    0x28e7c  1      
.L_28ea0:                                                                 #        0x28e7d  0      
  movl $0x10030c60, %edi                                                  #  44    0x28e7d  5      
  nop                                                                     #  45    0x28e82  1      
  nop                                                                     #  46    0x28e83  1      
  callq .__cxa_guard_acquire                                              #  47    0x28e84  5      
  testl %eax, %eax                                                        #  48    0x28e89  2      
  jne .L_29080                                                            #  49    0x28e8b  6      
  nop                                                                     #  50    0x28e91  1      
  nop                                                                     #  51    0x28e92  1      
.L_28ee0:                                                                 #        0x28e93  0      
  movl 0x10007dcf(%rip), %eax                                             #  52    0x28e93  6      
  jmpq .L_28e40                                                           #  53    0x28e99  5      
  nop                                                                     #  54    0x28e9e  1      
  nop                                                                     #  55    0x28e9f  1      
.L_28f00:                                                                 #        0x28ea0  0      
  movl %ebx, %ebx                                                         #  56    0x28ea0  2      
  movl (%r15,%rbx,1), %esi                                                #  57    0x28ea2  4      
  testl %esi, %esi                                                        #  58    0x28ea6  2      
  je .L_29060                                                             #  59    0x28ea8  6      
  movl %ebx, %ebx                                                         #  60    0x28eae  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                            #  61    0x28eb0  6      
  jne .L_29060                                                            #  62    0x28eb6  6      
  nop                                                                     #  63    0x28ebc  1      
  nop                                                                     #  64    0x28ebd  1      
  nop                                                                     #  65    0x28ebe  1      
  callq ._ZN2pp6Module3GetEv                                              #  66    0x28ebf  5      
  movl %eax, %eax                                                         #  67    0x28ec4  2      
  movl $0xfffffffa, %ecx                                                  #  68    0x28ec6  5      
  movl %ebx, %edx                                                         #  69    0x28ecb  2      
  movl %eax, %eax                                                         #  70    0x28ecd  2      
  movl 0x24(%r15,%rax,1), %edi                                            #  71    0x28ecf  5      
  xorl %esi, %esi                                                         #  72    0x28ed4  2      
  nop                                                                     #  73    0x28ed6  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi       #  74    0x28ed7  5      
  movl $0xffffffff, %eax                                                  #  75    0x28edc  5      
  nop                                                                     #  76    0x28ee1  1      
  nop                                                                     #  77    0x28ee2  1      
.L_28f80:                                                                 #        0x28ee3  0      
  movq 0x10(%rsp), %rbx                                                   #  78    0x28ee3  5      
  movq 0x18(%rsp), %r12                                                   #  79    0x28ee8  5      
  movq 0x20(%rsp), %r13                                                   #  80    0x28eed  5      
  addl $0x28, %esp                                                        #  81    0x28ef2  3      
  addq %r15, %rsp                                                         #  82    0x28ef5  3      
  popq %r11                                                               #  83    0x28ef8  3      
  nop                                                                     #  84    0x28efb  1      
  andl $0xffffffe0, %r11d                                                 #  85    0x28efc  7      
  addq %r15, %r11                                                         #  86    0x28f03  3      
  jmpq %r11                                                               #  87    0x28f06  3      
  nop                                                                     #  88    0x28f09  1      
  nop                                                                     #  89    0x28f0a  1      
.L_28fc0:                                                                 #        0x28f0b  0      
  movl $0x10030c60, %edi                                                  #  90    0x28f0b  5      
  nop                                                                     #  91    0x28f10  1      
  nop                                                                     #  92    0x28f11  1      
  callq .__cxa_guard_acquire                                              #  93    0x28f12  5      
  testl %eax, %eax                                                        #  94    0x28f17  2      
  je .L_28e20                                                             #  95    0x28f19  6      
  nop                                                                     #  96    0x28f1f  1      
  nop                                                                     #  97    0x28f20  1      
  callq ._ZN2pp6Module3GetEv                                              #  98    0x28f21  5      
  movl %eax, %edi                                                         #  99    0x28f26  2      
  movl $0x10020478, %esi                                                  #  100   0x28f28  5      
  nop                                                                     #  101   0x28f2d  1      
  nop                                                                     #  102   0x28f2e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  103   0x28f2f  5      
  movl $0x10030c60, %edi                                                  #  104   0x28f34  5      
  movl %eax, 0x10007d29(%rip)                                             #  105   0x28f39  6      
  nop                                                                     #  106   0x28f3f  1      
  nop                                                                     #  107   0x28f40  1      
  callq .__cxa_guard_release                                              #  108   0x28f41  5      
  jmpq .L_28e20                                                           #  109   0x28f46  5      
  nop                                                                     #  110   0x28f4b  1      
  nop                                                                     #  111   0x28f4c  1      
.L_29060:                                                                 #        0x28f4d  0      
  movl $0xfffffffa, %eax                                                  #  112   0x28f4d  5      
  jmpq .L_28f80                                                           #  113   0x28f52  5      
  nop                                                                     #  114   0x28f57  1      
  nop                                                                     #  115   0x28f58  1      
.L_29080:                                                                 #        0x28f59  0      
  nop                                                                     #  116   0x28f59  1      
  nop                                                                     #  117   0x28f5a  1      
  callq ._ZN2pp6Module3GetEv                                              #  118   0x28f5b  5      
  movl %eax, %edi                                                         #  119   0x28f60  2      
  movl $0x10020478, %esi                                                  #  120   0x28f62  5      
  nop                                                                     #  121   0x28f67  1      
  nop                                                                     #  122   0x28f68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  123   0x28f69  5      
  movl $0x10030c60, %edi                                                  #  124   0x28f6e  5      
  movl %eax, 0x10007cef(%rip)                                             #  125   0x28f73  6      
  nop                                                                     #  126   0x28f79  1      
  nop                                                                     #  127   0x28f7a  1      
  callq .__cxa_guard_release                                              #  128   0x28f7b  5      
  jmpq .L_28ee0                                                           #  129   0x28f80  5      
  nop                                                                     #  130   0x28f85  1      
  nop                                                                     #  131   0x28f86  1      
.L_29100:                                                                 #        0x28f87  0      
  movl %eax, %ebx                                                         #  132   0x28f87  2      
  movl $0x10030c60, %edi                                                  #  133   0x28f89  5      
  nop                                                                     #  134   0x28f8e  1      
  nop                                                                     #  135   0x28f8f  1      
  callq .__cxa_guard_abort                                                #  136   0x28f90  5      
  movl %ebx, %edi                                                         #  137   0x28f95  2      
  nop                                                                     #  138   0x28f97  1      
  nop                                                                     #  139   0x28f98  1      
  callq ._Unwind_Resume                                                   #  140   0x28f99  5      
  jmpq .L_29100                                                           #  141   0x28f9e  5      
  nop                                                                     #  142   0x28fa3  1      
  nop                                                                     #  143   0x28fa4  1      
  nop                                                                     #  144   0x28fa5  1      
  nop                                                                     #  145   0x28fa6  1      
  nop                                                                     #  146   0x28fa7  1      
  nop                                                                     #  147   0x28fa8  1      
  nop                                                                     #  148   0x28fa9  1      
  nop                                                                     #  149   0x28faa  1      
  nop                                                                     #  150   0x28fab  1      
  nop                                                                     #  151   0x28fac  1      
  nop                                                                     #  152   0x28fad  1      
  nop                                                                     #  153   0x28fae  1      
  nop                                                                     #  154   0x28faf  1      
  nop                                                                     #  155   0x28fb0  1      
  nop                                                                     #  156   0x28fb1  1      
  nop                                                                     #  157   0x28fb2  1      
  nop                                                                     #  158   0x28fb3  1      
  nop                                                                     #  159   0x28fb4  1      
  nop                                                                     #  160   0x28fb5  1      
  nop                                                                     #  161   0x28fb6  1      
  nop                                                                     #  162   0x28fb7  1      
  nop                                                                     #  163   0x28fb8  1      
  nop                                                                     #  164   0x28fb9  1      
  nop                                                                     #  165   0x28fba  1      
  nop                                                                     #  166   0x28fbb  1      
  nop                                                                     #  167   0x28fbc  1      
  nop                                                                     #  168   0x28fbd  1      
  nop                                                                     #  169   0x28fbe  1      
  nop                                                                     #  170   0x28fbf  1      
  nop                                                                     #  171   0x28fc0  1      
                                                                                                   
.size _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE

