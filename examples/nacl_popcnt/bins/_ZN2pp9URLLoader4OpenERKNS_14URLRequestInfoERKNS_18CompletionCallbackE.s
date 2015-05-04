  .text
  .globl _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE
  .type _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, @function

#! file-offset 0x28e80
#! rip-offset  0x28e80
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE:  #        0x28e80  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x28e80  5      
  movq %r12, -0x10(%rsp)                                                  #  2     0x28e85  5      
  movl %edx, %ebx                                                         #  3     0x28e8a  2      
  movq %r13, -0x8(%rsp)                                                   #  4     0x28e8c  5      
  subl $0x28, %esp                                                        #  5     0x28e91  3      
  addq %r15, %rsp                                                         #  6     0x28e94  3      
  cmpb $0x0, 0x10007dc2(%rip)                                             #  7     0x28e97  7      
  xchgw %ax, %ax                                                          #  8     0x28e9e  3      
  movl %edi, %r13d                                                        #  9     0x28ea1  3      
  movl %esi, %r12d                                                        #  10    0x28ea4  3      
  je .L_29060                                                             #  11    0x28ea7  6      
  nop                                                                     #  12    0x28ead  1      
  nop                                                                     #  13    0x28eae  1      
.L_28ec0:                                                                 #        0x28eaf  0      
  movl 0x10007db3(%rip), %eax                                             #  14    0x28eaf  6      
  testq %rax, %rax                                                        #  15    0x28eb5  3      
  je .L_28fa0                                                             #  16    0x28eb8  6      
  cmpb $0x0, 0x10007d9b(%rip)                                             #  17    0x28ebe  7      
  je .L_28f40                                                             #  18    0x28ec5  6      
  nop                                                                     #  19    0x28ecb  1      
.L_28ee0:                                                                 #        0x28ecc  0      
  movl %ebx, %ebx                                                         #  20    0x28ecc  2      
  movq (%r15,%rbx,1), %rdx                                                #  21    0x28ece  4      
  movl %eax, %eax                                                         #  22    0x28ed2  2      
  movl 0x8(%r15,%rax,1), %eax                                             #  23    0x28ed4  5      
  movq %rdx, (%rsp)                                                       #  24    0x28ed9  4      
  movl %ebx, %ebx                                                         #  25    0x28edd  2      
  movl 0x8(%r15,%rbx,1), %ecx                                             #  26    0x28edf  5      
  movq 0x10(%rsp), %rbx                                                   #  27    0x28ee4  5      
  nop                                                                     #  28    0x28ee9  1      
  movl %ecx, 0x8(%rsp)                                                    #  29    0x28eea  4      
  movl %r12d, %r12d                                                       #  30    0x28eee  3      
  movl 0x4(%r15,%r12,1), %esi                                             #  31    0x28ef1  5      
  movl %r13d, %r13d                                                       #  32    0x28ef6  3      
  movl 0x4(%r15,%r13,1), %edi                                             #  33    0x28ef9  5      
  movq 0x18(%rsp), %r12                                                   #  34    0x28efe  5      
  movq 0x20(%rsp), %r13                                                   #  35    0x28f03  5      
  xchgw %ax, %ax                                                          #  36    0x28f08  3      
  addl $0x28, %esp                                                        #  37    0x28f0b  3      
  addq %r15, %rsp                                                         #  38    0x28f0e  3      
  andl $0xffffffe0, %eax                                                  #  39    0x28f11  5      
  addq %r15, %rax                                                         #  40    0x28f16  3      
  jmpq %rax                                                               #  41    0x28f19  2      
  nop                                                                     #  42    0x28f1b  1      
  nop                                                                     #  43    0x28f1c  1      
.L_28f40:                                                                 #        0x28f1d  0      
  movl $0x10030c60, %edi                                                  #  44    0x28f1d  5      
  nop                                                                     #  45    0x28f22  1      
  nop                                                                     #  46    0x28f23  1      
  callq .__cxa_guard_acquire                                              #  47    0x28f24  5      
  testl %eax, %eax                                                        #  48    0x28f29  2      
  jne .L_29120                                                            #  49    0x28f2b  6      
  nop                                                                     #  50    0x28f31  1      
  nop                                                                     #  51    0x28f32  1      
.L_28f80:                                                                 #        0x28f33  0      
  movl 0x10007d2f(%rip), %eax                                             #  52    0x28f33  6      
  jmpq .L_28ee0                                                           #  53    0x28f39  5      
  nop                                                                     #  54    0x28f3e  1      
  nop                                                                     #  55    0x28f3f  1      
.L_28fa0:                                                                 #        0x28f40  0      
  movl %ebx, %ebx                                                         #  56    0x28f40  2      
  movl (%r15,%rbx,1), %esi                                                #  57    0x28f42  4      
  testl %esi, %esi                                                        #  58    0x28f46  2      
  je .L_29100                                                             #  59    0x28f48  6      
  movl %ebx, %ebx                                                         #  60    0x28f4e  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                            #  61    0x28f50  6      
  jne .L_29100                                                            #  62    0x28f56  6      
  nop                                                                     #  63    0x28f5c  1      
  nop                                                                     #  64    0x28f5d  1      
  nop                                                                     #  65    0x28f5e  1      
  callq ._ZN2pp6Module3GetEv                                              #  66    0x28f5f  5      
  movl %eax, %eax                                                         #  67    0x28f64  2      
  movl $0xfffffffa, %ecx                                                  #  68    0x28f66  5      
  movl %ebx, %edx                                                         #  69    0x28f6b  2      
  movl %eax, %eax                                                         #  70    0x28f6d  2      
  movl 0x24(%r15,%rax,1), %edi                                            #  71    0x28f6f  5      
  xorl %esi, %esi                                                         #  72    0x28f74  2      
  nop                                                                     #  73    0x28f76  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi       #  74    0x28f77  5      
  movl $0xffffffff, %eax                                                  #  75    0x28f7c  5      
  nop                                                                     #  76    0x28f81  1      
  nop                                                                     #  77    0x28f82  1      
.L_29020:                                                                 #        0x28f83  0      
  movq 0x10(%rsp), %rbx                                                   #  78    0x28f83  5      
  movq 0x18(%rsp), %r12                                                   #  79    0x28f88  5      
  movq 0x20(%rsp), %r13                                                   #  80    0x28f8d  5      
  addl $0x28, %esp                                                        #  81    0x28f92  3      
  addq %r15, %rsp                                                         #  82    0x28f95  3      
  popq %r11                                                               #  83    0x28f98  3      
  nop                                                                     #  84    0x28f9b  1      
  andl $0xffffffe0, %r11d                                                 #  85    0x28f9c  7      
  addq %r15, %r11                                                         #  86    0x28fa3  3      
  jmpq %r11                                                               #  87    0x28fa6  3      
  nop                                                                     #  88    0x28fa9  1      
  nop                                                                     #  89    0x28faa  1      
.L_29060:                                                                 #        0x28fab  0      
  movl $0x10030c60, %edi                                                  #  90    0x28fab  5      
  nop                                                                     #  91    0x28fb0  1      
  nop                                                                     #  92    0x28fb1  1      
  callq .__cxa_guard_acquire                                              #  93    0x28fb2  5      
  testl %eax, %eax                                                        #  94    0x28fb7  2      
  je .L_28ec0                                                             #  95    0x28fb9  6      
  nop                                                                     #  96    0x28fbf  1      
  nop                                                                     #  97    0x28fc0  1      
  callq ._ZN2pp6Module3GetEv                                              #  98    0x28fc1  5      
  movl %eax, %edi                                                         #  99    0x28fc6  2      
  movl $0x10020478, %esi                                                  #  100   0x28fc8  5      
  nop                                                                     #  101   0x28fcd  1      
  nop                                                                     #  102   0x28fce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  103   0x28fcf  5      
  movl $0x10030c60, %edi                                                  #  104   0x28fd4  5      
  movl %eax, 0x10007c89(%rip)                                             #  105   0x28fd9  6      
  nop                                                                     #  106   0x28fdf  1      
  nop                                                                     #  107   0x28fe0  1      
  callq .__cxa_guard_release                                              #  108   0x28fe1  5      
  jmpq .L_28ec0                                                           #  109   0x28fe6  5      
  nop                                                                     #  110   0x28feb  1      
  nop                                                                     #  111   0x28fec  1      
.L_29100:                                                                 #        0x28fed  0      
  movl $0xfffffffa, %eax                                                  #  112   0x28fed  5      
  jmpq .L_29020                                                           #  113   0x28ff2  5      
  nop                                                                     #  114   0x28ff7  1      
  nop                                                                     #  115   0x28ff8  1      
.L_29120:                                                                 #        0x28ff9  0      
  nop                                                                     #  116   0x28ff9  1      
  nop                                                                     #  117   0x28ffa  1      
  callq ._ZN2pp6Module3GetEv                                              #  118   0x28ffb  5      
  movl %eax, %edi                                                         #  119   0x29000  2      
  movl $0x10020478, %esi                                                  #  120   0x29002  5      
  nop                                                                     #  121   0x29007  1      
  nop                                                                     #  122   0x29008  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  123   0x29009  5      
  movl $0x10030c60, %edi                                                  #  124   0x2900e  5      
  movl %eax, 0x10007c4f(%rip)                                             #  125   0x29013  6      
  nop                                                                     #  126   0x29019  1      
  nop                                                                     #  127   0x2901a  1      
  callq .__cxa_guard_release                                              #  128   0x2901b  5      
  jmpq .L_28f80                                                           #  129   0x29020  5      
  nop                                                                     #  130   0x29025  1      
  nop                                                                     #  131   0x29026  1      
.L_291a0:                                                                 #        0x29027  0      
  movl %eax, %ebx                                                         #  132   0x29027  2      
  movl $0x10030c60, %edi                                                  #  133   0x29029  5      
  nop                                                                     #  134   0x2902e  1      
  nop                                                                     #  135   0x2902f  1      
  callq .__cxa_guard_abort                                                #  136   0x29030  5      
  movl %ebx, %edi                                                         #  137   0x29035  2      
  nop                                                                     #  138   0x29037  1      
  nop                                                                     #  139   0x29038  1      
  callq ._Unwind_Resume                                                   #  140   0x29039  5      
  jmpq .L_291a0                                                           #  141   0x2903e  5      
  nop                                                                     #  142   0x29043  1      
  nop                                                                     #  143   0x29044  1      
  nop                                                                     #  144   0x29045  1      
  nop                                                                     #  145   0x29046  1      
  nop                                                                     #  146   0x29047  1      
  nop                                                                     #  147   0x29048  1      
  nop                                                                     #  148   0x29049  1      
  nop                                                                     #  149   0x2904a  1      
  nop                                                                     #  150   0x2904b  1      
  nop                                                                     #  151   0x2904c  1      
  nop                                                                     #  152   0x2904d  1      
  nop                                                                     #  153   0x2904e  1      
  nop                                                                     #  154   0x2904f  1      
  nop                                                                     #  155   0x29050  1      
  nop                                                                     #  156   0x29051  1      
  nop                                                                     #  157   0x29052  1      
  nop                                                                     #  158   0x29053  1      
  nop                                                                     #  159   0x29054  1      
  nop                                                                     #  160   0x29055  1      
  nop                                                                     #  161   0x29056  1      
  nop                                                                     #  162   0x29057  1      
  nop                                                                     #  163   0x29058  1      
  nop                                                                     #  164   0x29059  1      
  nop                                                                     #  165   0x2905a  1      
  nop                                                                     #  166   0x2905b  1      
  nop                                                                     #  167   0x2905c  1      
  nop                                                                     #  168   0x2905d  1      
  nop                                                                     #  169   0x2905e  1      
  nop                                                                     #  170   0x2905f  1      
  nop                                                                     #  171   0x29060  1      
                                                                                                   
.size _ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE, .-_ZN2pp9URLLoader4OpenERKNS_14URLRequestInfoERKNS_18CompletionCallbackE

