  .text
  .globl _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, @function

#! file-offset 0x28e00
#! rip-offset  0x28e00
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE:  #        0x28e00  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x28e00  5      
  movq %r12, -0x10(%rsp)                                                  #  2     0x28e05  5      
  movl %edx, %ebx                                                         #  3     0x28e0a  2      
  movq %r13, -0x8(%rsp)                                                   #  4     0x28e0c  5      
  subl $0x28, %esp                                                        #  5     0x28e11  3      
  addq %r15, %rsp                                                         #  6     0x28e14  3      
  cmpb $0x0, 0x10007e42(%rip)                                             #  7     0x28e17  7      
  xchgw %ax, %ax                                                          #  8     0x28e1e  3      
  movl %edi, %r13d                                                        #  9     0x28e21  3      
  movl %esi, %r12d                                                        #  10    0x28e24  3      
  je .L_28fe0                                                             #  11    0x28e27  6      
  nop                                                                     #  12    0x28e2d  1      
  nop                                                                     #  13    0x28e2e  1      
.L_28e40:                                                                 #        0x28e2f  0      
  movl 0x10007e33(%rip), %eax                                             #  14    0x28e2f  6      
  testq %rax, %rax                                                        #  15    0x28e35  3      
  je .L_28f20                                                             #  16    0x28e38  6      
  cmpb $0x0, 0x10007e1b(%rip)                                             #  17    0x28e3e  7      
  je .L_28ec0                                                             #  18    0x28e45  6      
  nop                                                                     #  19    0x28e4b  1      
.L_28e60:                                                                 #        0x28e4c  0      
  movl %ebx, %ebx                                                         #  20    0x28e4c  2      
  movq (%r15,%rbx,1), %rdx                                                #  21    0x28e4e  4      
  movl %eax, %eax                                                         #  22    0x28e52  2      
  movl 0x8(%r15,%rax,1), %eax                                             #  23    0x28e54  5      
  movq %rdx, (%rsp)                                                       #  24    0x28e59  4      
  movl %ebx, %ebx                                                         #  25    0x28e5d  2      
  movl 0x8(%r15,%rbx,1), %ecx                                             #  26    0x28e5f  5      
  movq 0x10(%rsp), %rbx                                                   #  27    0x28e64  5      
  nop                                                                     #  28    0x28e69  1      
  movl %ecx, 0x8(%rsp)                                                    #  29    0x28e6a  4      
  movl %r12d, %r12d                                                       #  30    0x28e6e  3      
  movl 0x4(%r15,%r12,1), %esi                                             #  31    0x28e71  5      
  movl %r13d, %r13d                                                       #  32    0x28e76  3      
  movl 0x4(%r15,%r13,1), %edi                                             #  33    0x28e79  5      
  movq 0x18(%rsp), %r12                                                   #  34    0x28e7e  5      
  movq 0x20(%rsp), %r13                                                   #  35    0x28e83  5      
  xchgw %ax, %ax                                                          #  36    0x28e88  3      
  addl $0x28, %esp                                                        #  37    0x28e8b  3      
  addq %r15, %rsp                                                         #  38    0x28e8e  3      
  andl $0xffffffe0, %eax                                                  #  39    0x28e91  5      
  addq %r15, %rax                                                         #  40    0x28e96  3      
  jmpq %rax                                                               #  41    0x28e99  2      
  nop                                                                     #  42    0x28e9b  1      
  nop                                                                     #  43    0x28e9c  1      
.L_28ec0:                                                                 #        0x28e9d  0      
  movl $0x10030c60, %edi                                                  #  44    0x28e9d  5      
  nop                                                                     #  45    0x28ea2  1      
  nop                                                                     #  46    0x28ea3  1      
  callq .__cxa_guard_acquire                                              #  47    0x28ea4  5      
  testl %eax, %eax                                                        #  48    0x28ea9  2      
  jne .L_290a0                                                            #  49    0x28eab  6      
  nop                                                                     #  50    0x28eb1  1      
  nop                                                                     #  51    0x28eb2  1      
.L_28f00:                                                                 #        0x28eb3  0      
  movl 0x10007daf(%rip), %eax                                             #  52    0x28eb3  6      
  jmpq .L_28e60                                                           #  53    0x28eb9  5      
  nop                                                                     #  54    0x28ebe  1      
  nop                                                                     #  55    0x28ebf  1      
.L_28f20:                                                                 #        0x28ec0  0      
  movl %ebx, %ebx                                                         #  56    0x28ec0  2      
  movl (%r15,%rbx,1), %esi                                                #  57    0x28ec2  4      
  testl %esi, %esi                                                        #  58    0x28ec6  2      
  je .L_29080                                                             #  59    0x28ec8  6      
  movl %ebx, %ebx                                                         #  60    0x28ece  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                            #  61    0x28ed0  6      
  jne .L_29080                                                            #  62    0x28ed6  6      
  nop                                                                     #  63    0x28edc  1      
  nop                                                                     #  64    0x28edd  1      
  nop                                                                     #  65    0x28ede  1      
  callq ._ZN2pp6Module3GetEv                                              #  66    0x28edf  5      
  movl %eax, %eax                                                         #  67    0x28ee4  2      
  movl $0xfffffffa, %ecx                                                  #  68    0x28ee6  5      
  movl %ebx, %edx                                                         #  69    0x28eeb  2      
  movl %eax, %eax                                                         #  70    0x28eed  2      
  movl 0x24(%r15,%rax,1), %edi                                            #  71    0x28eef  5      
  xorl %esi, %esi                                                         #  72    0x28ef4  2      
  nop                                                                     #  73    0x28ef6  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi       #  74    0x28ef7  5      
  movl $0xffffffff, %eax                                                  #  75    0x28efc  5      
  nop                                                                     #  76    0x28f01  1      
  nop                                                                     #  77    0x28f02  1      
.L_28fa0:                                                                 #        0x28f03  0      
  movq 0x10(%rsp), %rbx                                                   #  78    0x28f03  5      
  movq 0x18(%rsp), %r12                                                   #  79    0x28f08  5      
  movq 0x20(%rsp), %r13                                                   #  80    0x28f0d  5      
  addl $0x28, %esp                                                        #  81    0x28f12  3      
  addq %r15, %rsp                                                         #  82    0x28f15  3      
  popq %r11                                                               #  83    0x28f18  3      
  nop                                                                     #  84    0x28f1b  1      
  andl $0xffffffe0, %r11d                                                 #  85    0x28f1c  7      
  addq %r15, %r11                                                         #  86    0x28f23  3      
  jmpq %r11                                                               #  87    0x28f26  3      
  nop                                                                     #  88    0x28f29  1      
  nop                                                                     #  89    0x28f2a  1      
.L_28fe0:                                                                 #        0x28f2b  0      
  movl $0x10030c60, %edi                                                  #  90    0x28f2b  5      
  nop                                                                     #  91    0x28f30  1      
  nop                                                                     #  92    0x28f31  1      
  callq .__cxa_guard_acquire                                              #  93    0x28f32  5      
  testl %eax, %eax                                                        #  94    0x28f37  2      
  je .L_28e40                                                             #  95    0x28f39  6      
  nop                                                                     #  96    0x28f3f  1      
  nop                                                                     #  97    0x28f40  1      
  callq ._ZN2pp6Module3GetEv                                              #  98    0x28f41  5      
  movl %eax, %edi                                                         #  99    0x28f46  2      
  movl $0x10020478, %esi                                                  #  100   0x28f48  5      
  nop                                                                     #  101   0x28f4d  1      
  nop                                                                     #  102   0x28f4e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  103   0x28f4f  5      
  movl $0x10030c60, %edi                                                  #  104   0x28f54  5      
  movl %eax, 0x10007d09(%rip)                                             #  105   0x28f59  6      
  nop                                                                     #  106   0x28f5f  1      
  nop                                                                     #  107   0x28f60  1      
  callq .__cxa_guard_release                                              #  108   0x28f61  5      
  jmpq .L_28e40                                                           #  109   0x28f66  5      
  nop                                                                     #  110   0x28f6b  1      
  nop                                                                     #  111   0x28f6c  1      
.L_29080:                                                                 #        0x28f6d  0      
  movl $0xfffffffa, %eax                                                  #  112   0x28f6d  5      
  jmpq .L_28fa0                                                           #  113   0x28f72  5      
  nop                                                                     #  114   0x28f77  1      
  nop                                                                     #  115   0x28f78  1      
.L_290a0:                                                                 #        0x28f79  0      
  nop                                                                     #  116   0x28f79  1      
  nop                                                                     #  117   0x28f7a  1      
  callq ._ZN2pp6Module3GetEv                                              #  118   0x28f7b  5      
  movl %eax, %edi                                                         #  119   0x28f80  2      
  movl $0x10020478, %esi                                                  #  120   0x28f82  5      
  nop                                                                     #  121   0x28f87  1      
  nop                                                                     #  122   0x28f88  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  123   0x28f89  5      
  movl $0x10030c60, %edi                                                  #  124   0x28f8e  5      
  movl %eax, 0x10007ccf(%rip)                                             #  125   0x28f93  6      
  nop                                                                     #  126   0x28f99  1      
  nop                                                                     #  127   0x28f9a  1      
  callq .__cxa_guard_release                                              #  128   0x28f9b  5      
  jmpq .L_28f00                                                           #  129   0x28fa0  5      
  nop                                                                     #  130   0x28fa5  1      
  nop                                                                     #  131   0x28fa6  1      
.L_29120:                                                                 #        0x28fa7  0      
  movl %eax, %ebx                                                         #  132   0x28fa7  2      
  movl $0x10030c60, %edi                                                  #  133   0x28fa9  5      
  nop                                                                     #  134   0x28fae  1      
  nop                                                                     #  135   0x28faf  1      
  callq .__cxa_guard_abort                                                #  136   0x28fb0  5      
  movl %ebx, %edi                                                         #  137   0x28fb5  2      
  nop                                                                     #  138   0x28fb7  1      
  nop                                                                     #  139   0x28fb8  1      
  callq ._Unwind_Resume                                                   #  140   0x28fb9  5      
  jmpq .L_29120                                                           #  141   0x28fbe  5      
  nop                                                                     #  142   0x28fc3  1      
  nop                                                                     #  143   0x28fc4  1      
  nop                                                                     #  144   0x28fc5  1      
  nop                                                                     #  145   0x28fc6  1      
  nop                                                                     #  146   0x28fc7  1      
  nop                                                                     #  147   0x28fc8  1      
  nop                                                                     #  148   0x28fc9  1      
  nop                                                                     #  149   0x28fca  1      
  nop                                                                     #  150   0x28fcb  1      
  nop                                                                     #  151   0x28fcc  1      
  nop                                                                     #  152   0x28fcd  1      
  nop                                                                     #  153   0x28fce  1      
  nop                                                                     #  154   0x28fcf  1      
  nop                                                                     #  155   0x28fd0  1      
  nop                                                                     #  156   0x28fd1  1      
  nop                                                                     #  157   0x28fd2  1      
  nop                                                                     #  158   0x28fd3  1      
  nop                                                                     #  159   0x28fd4  1      
  nop                                                                     #  160   0x28fd5  1      
  nop                                                                     #  161   0x28fd6  1      
  nop                                                                     #  162   0x28fd7  1      
  nop                                                                     #  163   0x28fd8  1      
  nop                                                                     #  164   0x28fd9  1      
  nop                                                                     #  165   0x28fda  1      
  nop                                                                     #  166   0x28fdb  1      
  nop                                                                     #  167   0x28fdc  1      
  nop                                                                     #  168   0x28fdd  1      
  nop                                                                     #  169   0x28fde  1      
  nop                                                                     #  170   0x28fdf  1      
  nop                                                                     #  171   0x28fe0  1      
                                                                                                   
.size _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE

