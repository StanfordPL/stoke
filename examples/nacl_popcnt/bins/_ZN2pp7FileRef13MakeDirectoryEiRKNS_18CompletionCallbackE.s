  .text
  .globl _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, @function

#! file-offset 0x30a00
#! rip-offset  0x30a00
#! capacity    1984 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE:            #        0x30a00  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x30a00  5      
  movq %r12, -0x10(%rsp)                                               #  2     0x30a05  5      
  movl %edx, %ebx                                                      #  3     0x30a0a  2      
  movq %r13, -0x8(%rsp)                                                #  4     0x30a0c  5      
  subl $0x48, %esp                                                     #  5     0x30a11  3      
  addq %r15, %rsp                                                      #  6     0x30a14  3      
  cmpb $0x0, 0x100002c2(%rip)                                          #  7     0x30a17  7      
  xchgw %ax, %ax                                                       #  8     0x30a1e  3      
  movl %esi, %r12d                                                     #  9     0x30a21  3      
  movl %edi, %r13d                                                     #  10    0x30a24  3      
  je .L_30c00                                                          #  11    0x30a27  6      
  nop                                                                  #  12    0x30a2d  1      
  nop                                                                  #  13    0x30a2e  1      
.L_30a40:                                                              #        0x30a2f  0      
  movl 0x100002b3(%rip), %eax                                          #  14    0x30a2f  6      
  testq %rax, %rax                                                     #  15    0x30a35  3      
  jne .L_30ba0                                                         #  16    0x30a38  6      
  cmpb $0x0, 0x100002ab(%rip)                                          #  17    0x30a3e  7      
  je .L_30b00                                                          #  18    0x30a45  6      
  nop                                                                  #  19    0x30a4b  1      
.L_30a60:                                                              #        0x30a4c  0      
  movl 0x100002a6(%rip), %eax                                          #  20    0x30a4c  6      
  testq %rax, %rax                                                     #  21    0x30a52  3      
  je .L_30ca0                                                          #  22    0x30a55  6      
  testl $0xfffffffe, %r12d                                             #  23    0x30a5b  7      
  jne .L_30da0                                                         #  24    0x30a62  6      
  nop                                                                  #  25    0x30a68  1      
  cmpb $0x0, 0x10000280(%rip)                                          #  26    0x30a69  7      
  je .L_30d40                                                          #  27    0x30a70  6      
  nop                                                                  #  28    0x30a76  1      
  nop                                                                  #  29    0x30a77  1      
.L_30aa0:                                                              #        0x30a78  0      
  movl %ebx, %ebx                                                      #  30    0x30a78  2      
  movq (%r15,%rbx,1), %rdx                                             #  31    0x30a7a  4      
  movl %eax, %eax                                                      #  32    0x30a7e  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  33    0x30a80  5      
  movl %r12d, %esi                                                     #  34    0x30a85  3      
  andl $0x1, %esi                                                      #  35    0x30a88  3      
  movq %rdx, 0x10(%rsp)                                                #  36    0x30a8b  5      
  movl %ebx, %ebx                                                      #  37    0x30a90  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  38    0x30a92  5      
  nop                                                                  #  39    0x30a97  1      
  movl %ecx, 0x18(%rsp)                                                #  40    0x30a98  4      
  movl %r13d, %r13d                                                    #  41    0x30a9c  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  42    0x30a9f  5      
  nop                                                                  #  43    0x30aa4  1      
  nop                                                                  #  44    0x30aa5  1      
.L_30ae0:                                                              #        0x30aa6  0      
  movq 0x30(%rsp), %rbx                                                #  45    0x30aa6  5      
  movq 0x38(%rsp), %r12                                                #  46    0x30aab  5      
  movq 0x40(%rsp), %r13                                                #  47    0x30ab0  5      
  addl $0x48, %esp                                                     #  48    0x30ab5  3      
  addq %r15, %rsp                                                      #  49    0x30ab8  3      
  andl $0xffffffe0, %eax                                               #  50    0x30abb  5      
  addq %r15, %rax                                                      #  51    0x30ac0  3      
  jmpq %rax                                                            #  52    0x30ac3  2      
  nop                                                                  #  53    0x30ac5  1      
.L_30b00:                                                              #        0x30ac6  0      
  movl $0x10030cf0, %edi                                               #  54    0x30ac6  5      
  nop                                                                  #  55    0x30acb  1      
  nop                                                                  #  56    0x30acc  1      
  callq .__cxa_guard_acquire                                           #  57    0x30acd  5      
  testl %eax, %eax                                                     #  58    0x30ad2  2      
  je .L_30a60                                                          #  59    0x30ad4  6      
  nop                                                                  #  60    0x30ada  1      
  nop                                                                  #  61    0x30adb  1      
  callq ._ZN2pp6Module3GetEv                                           #  62    0x30adc  5      
  movl %eax, %edi                                                      #  63    0x30ae1  2      
  movl $0x10020664, %esi                                               #  64    0x30ae3  5      
  nop                                                                  #  65    0x30ae8  1      
  nop                                                                  #  66    0x30ae9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  67    0x30aea  5      
  movl $0x10030cf0, %edi                                               #  68    0x30aef  5      
  movl %eax, 0x100001fe(%rip)                                          #  69    0x30af4  6      
  nop                                                                  #  70    0x30afa  1      
  nop                                                                  #  71    0x30afb  1      
  callq .__cxa_guard_release                                           #  72    0x30afc  5      
  jmpq .L_30a60                                                        #  73    0x30b01  5      
  nop                                                                  #  74    0x30b06  1      
  nop                                                                  #  75    0x30b07  1      
.L_30ba0:                                                              #        0x30b08  0      
  cmpb $0x0, 0x100001d1(%rip)                                          #  76    0x30b08  7      
  je .L_30e60                                                          #  77    0x30b0f  6      
  nop                                                                  #  78    0x30b15  1      
  nop                                                                  #  79    0x30b16  1      
.L_30bc0:                                                              #        0x30b17  0      
  movl %ebx, %ebx                                                      #  80    0x30b17  2      
  movq (%r15,%rbx,1), %rdx                                             #  81    0x30b19  4      
  movl %eax, %eax                                                      #  82    0x30b1d  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  83    0x30b1f  5      
  movl %r12d, %esi                                                     #  84    0x30b24  3      
  movq %rdx, 0x20(%rsp)                                                #  85    0x30b27  5      
  movl %ebx, %ebx                                                      #  86    0x30b2c  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  87    0x30b2e  5      
  movl %ecx, 0x28(%rsp)                                                #  88    0x30b33  4      
  movl %r13d, %r13d                                                    #  89    0x30b37  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  90    0x30b3a  5      
  jmpq .L_30ae0                                                        #  91    0x30b3f  5      
  nop                                                                  #  92    0x30b44  1      
  nop                                                                  #  93    0x30b45  1      
.L_30c00:                                                              #        0x30b46  0      
  movl $0x10030ce0, %edi                                               #  94    0x30b46  5      
  nop                                                                  #  95    0x30b4b  1      
  nop                                                                  #  96    0x30b4c  1      
  callq .__cxa_guard_acquire                                           #  97    0x30b4d  5      
  testl %eax, %eax                                                     #  98    0x30b52  2      
  je .L_30a40                                                          #  99    0x30b54  6      
  nop                                                                  #  100   0x30b5a  1      
  nop                                                                  #  101   0x30b5b  1      
  callq ._ZN2pp6Module3GetEv                                           #  102   0x30b5c  5      
  movl %eax, %edi                                                      #  103   0x30b61  2      
  movl $0x10020654, %esi                                               #  104   0x30b63  5      
  nop                                                                  #  105   0x30b68  1      
  nop                                                                  #  106   0x30b69  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  107   0x30b6a  5      
  movl $0x10030ce0, %edi                                               #  108   0x30b6f  5      
  movl %eax, 0x1000016e(%rip)                                          #  109   0x30b74  6      
  nop                                                                  #  110   0x30b7a  1      
  nop                                                                  #  111   0x30b7b  1      
  callq .__cxa_guard_release                                           #  112   0x30b7c  5      
  jmpq .L_30a40                                                        #  113   0x30b81  5      
  nop                                                                  #  114   0x30b86  1      
  nop                                                                  #  115   0x30b87  1      
.L_30ca0:                                                              #        0x30b88  0      
  cmpb $0x0, 0x10000171(%rip)                                          #  116   0x30b88  7      
  je .L_30f20                                                          #  117   0x30b8f  6      
  nop                                                                  #  118   0x30b95  1      
  nop                                                                  #  119   0x30b96  1      
.L_30cc0:                                                              #        0x30b97  0      
  movl 0x1000016b(%rip), %edx                                          #  120   0x30b97  6      
  testl %edx, %edx                                                     #  121   0x30b9d  2      
  je .L_30ec0                                                          #  122   0x30b9f  6      
  testl $0xfffffffe, %r12d                                             #  123   0x30ba5  7      
  movl $0xfffffff4, %esi                                               #  124   0x30bac  5      
  jne .L_30ee0                                                         #  125   0x30bb1  6      
  nop                                                                  #  126   0x30bb7  1      
  nop                                                                  #  127   0x30bb8  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  128   0x30bb9  5      
  movl %ebx, %ebx                                                      #  129   0x30bbe  2      
  movq (%r15,%rbx,1), %rdx                                             #  130   0x30bc0  4      
  movl %eax, %eax                                                      #  131   0x30bc4  2      
  movl %r12d, %esi                                                     #  132   0x30bc6  3      
  movl %eax, %eax                                                      #  133   0x30bc9  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  134   0x30bcb  5      
  andl $0x1, %esi                                                      #  135   0x30bd0  3      
  movq %rdx, (%rsp)                                                    #  136   0x30bd3  4      
  movl %ebx, %ebx                                                      #  137   0x30bd7  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  138   0x30bd9  5      
  movl %ecx, 0x8(%rsp)                                                 #  139   0x30bde  4      
  movl %r13d, %r13d                                                    #  140   0x30be2  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  141   0x30be5  5      
  jmpq .L_30ae0                                                        #  142   0x30bea  5      
  nop                                                                  #  143   0x30bef  1      
.L_30d40:                                                              #        0x30bf0  0      
  movl $0x10030cf0, %edi                                               #  144   0x30bf0  5      
  nop                                                                  #  145   0x30bf5  1      
  nop                                                                  #  146   0x30bf6  1      
  callq .__cxa_guard_acquire                                           #  147   0x30bf7  5      
  testl %eax, %eax                                                     #  148   0x30bfc  2      
  jne .L_31040                                                         #  149   0x30bfe  6      
  nop                                                                  #  150   0x30c04  1      
  nop                                                                  #  151   0x30c05  1      
.L_30d80:                                                              #        0x30c06  0      
  movl 0x100000ec(%rip), %eax                                          #  152   0x30c06  6      
  jmpq .L_30aa0                                                        #  153   0x30c0c  5      
  nop                                                                  #  154   0x30c11  1      
  nop                                                                  #  155   0x30c12  1      
.L_30da0:                                                              #        0x30c13  0      
  movl %ebx, %ebx                                                      #  156   0x30c13  2      
  movl (%r15,%rbx,1), %ecx                                             #  157   0x30c15  4      
  testl %ecx, %ecx                                                     #  158   0x30c19  2      
  je .L_30f00                                                          #  159   0x30c1b  6      
  movl %ebx, %ebx                                                      #  160   0x30c21  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                         #  161   0x30c23  6      
  jne .L_30f00                                                         #  162   0x30c29  6      
  nop                                                                  #  163   0x30c2f  1      
  nop                                                                  #  164   0x30c30  1      
  nop                                                                  #  165   0x30c31  1      
  callq ._ZN2pp6Module3GetEv                                           #  166   0x30c32  5      
  movl %eax, %eax                                                      #  167   0x30c37  2      
  movl $0xfffffff4, %ecx                                               #  168   0x30c39  5      
  movl %ebx, %edx                                                      #  169   0x30c3e  2      
  movl %eax, %eax                                                      #  170   0x30c40  2      
  movl 0x24(%r15,%rax,1), %edi                                         #  171   0x30c42  5      
  xorl %esi, %esi                                                      #  172   0x30c47  2      
  nop                                                                  #  173   0x30c49  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi    #  174   0x30c4a  5      
  movl $0xffffffff, %eax                                               #  175   0x30c4f  5      
  nop                                                                  #  176   0x30c54  1      
  nop                                                                  #  177   0x30c55  1      
.L_30e20:                                                              #        0x30c56  0      
  movq 0x30(%rsp), %rbx                                                #  178   0x30c56  5      
  movq 0x38(%rsp), %r12                                                #  179   0x30c5b  5      
  movq 0x40(%rsp), %r13                                                #  180   0x30c60  5      
  addl $0x48, %esp                                                     #  181   0x30c65  3      
  addq %r15, %rsp                                                      #  182   0x30c68  3      
  popq %r11                                                            #  183   0x30c6b  3      
  nop                                                                  #  184   0x30c6e  1      
  andl $0xffffffe0, %r11d                                              #  185   0x30c6f  7      
  addq %r15, %r11                                                      #  186   0x30c76  3      
  jmpq %r11                                                            #  187   0x30c79  3      
  nop                                                                  #  188   0x30c7c  1      
  nop                                                                  #  189   0x30c7d  1      
.L_30e60:                                                              #        0x30c7e  0      
  movl $0x10030ce0, %edi                                               #  190   0x30c7e  5      
  nop                                                                  #  191   0x30c83  1      
  nop                                                                  #  192   0x30c84  1      
  callq .__cxa_guard_acquire                                           #  193   0x30c85  5      
  testl %eax, %eax                                                     #  194   0x30c8a  2      
  jne .L_30fc0                                                         #  195   0x30c8c  6      
  nop                                                                  #  196   0x30c92  1      
  nop                                                                  #  197   0x30c93  1      
.L_30ea0:                                                              #        0x30c94  0      
  movl 0x1000004e(%rip), %eax                                          #  198   0x30c94  6      
  jmpq .L_30bc0                                                        #  199   0x30c9a  5      
  nop                                                                  #  200   0x30c9f  1      
  nop                                                                  #  201   0x30ca0  1      
.L_30ec0:                                                              #        0x30ca1  0      
  movl $0xfffffffa, %esi                                               #  202   0x30ca1  5      
  nop                                                                  #  203   0x30ca6  1      
  nop                                                                  #  204   0x30ca7  1      
.L_30ee0:                                                              #        0x30ca8  0      
  movl %ebx, %edi                                                      #  205   0x30ca8  2      
  movq 0x38(%rsp), %r12                                                #  206   0x30caa  5      
  movq 0x30(%rsp), %rbx                                                #  207   0x30caf  5      
  movq 0x40(%rsp), %r13                                                #  208   0x30cb4  5      
  addl $0x48, %esp                                                     #  209   0x30cb9  3      
  addq %r15, %rsp                                                      #  210   0x30cbc  3      
  jmpq ._ZNK2pp18CompletionCallback8MayForceEi                         #  211   0x30cbf  5      
  nop                                                                  #  212   0x30cc4  1      
.L_30f00:                                                              #        0x30cc5  0      
  movl $0xfffffff4, %eax                                               #  213   0x30cc5  5      
  jmpq .L_30e20                                                        #  214   0x30cca  5      
  nop                                                                  #  215   0x30ccf  1      
  nop                                                                  #  216   0x30cd0  1      
.L_30f20:                                                              #        0x30cd1  0      
  movl $0x10030d00, %edi                                               #  217   0x30cd1  5      
  nop                                                                  #  218   0x30cd6  1      
  nop                                                                  #  219   0x30cd7  1      
  callq .__cxa_guard_acquire                                           #  220   0x30cd8  5      
  testl %eax, %eax                                                     #  221   0x30cdd  2      
  je .L_30cc0                                                          #  222   0x30cdf  6      
  nop                                                                  #  223   0x30ce5  1      
  nop                                                                  #  224   0x30ce6  1      
  callq ._ZN2pp6Module3GetEv                                           #  225   0x30ce7  5      
  movl %eax, %edi                                                      #  226   0x30cec  2      
  movl $0x10020644, %esi                                               #  227   0x30cee  5      
  nop                                                                  #  228   0x30cf3  1      
  nop                                                                  #  229   0x30cf4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  230   0x30cf5  5      
  movl $0x10030d00, %edi                                               #  231   0x30cfa  5      
  movl %eax, 0x10000003(%rip)                                          #  232   0x30cff  6      
  nop                                                                  #  233   0x30d05  1      
  nop                                                                  #  234   0x30d06  1      
  callq .__cxa_guard_release                                           #  235   0x30d07  5      
  jmpq .L_30cc0                                                        #  236   0x30d0c  5      
  nop                                                                  #  237   0x30d11  1      
  nop                                                                  #  238   0x30d12  1      
.L_30fc0:                                                              #        0x30d13  0      
  nop                                                                  #  239   0x30d13  1      
  nop                                                                  #  240   0x30d14  1      
  callq ._ZN2pp6Module3GetEv                                           #  241   0x30d15  5      
  movl %eax, %edi                                                      #  242   0x30d1a  2      
  movl $0x10020654, %esi                                               #  243   0x30d1c  5      
  nop                                                                  #  244   0x30d21  1      
  nop                                                                  #  245   0x30d22  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  246   0x30d23  5      
  movl $0x10030ce0, %edi                                               #  247   0x30d28  5      
  movl %eax, 0xfffffb5(%rip)                                           #  248   0x30d2d  6      
  nop                                                                  #  249   0x30d33  1      
  nop                                                                  #  250   0x30d34  1      
  callq .__cxa_guard_release                                           #  251   0x30d35  5      
  jmpq .L_30ea0                                                        #  252   0x30d3a  5      
  nop                                                                  #  253   0x30d3f  1      
  nop                                                                  #  254   0x30d40  1      
.L_31040:                                                              #        0x30d41  0      
  nop                                                                  #  255   0x30d41  1      
  nop                                                                  #  256   0x30d42  1      
  callq ._ZN2pp6Module3GetEv                                           #  257   0x30d43  5      
  movl %eax, %edi                                                      #  258   0x30d48  2      
  movl $0x10020664, %esi                                               #  259   0x30d4a  5      
  nop                                                                  #  260   0x30d4f  1      
  nop                                                                  #  261   0x30d50  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  262   0x30d51  5      
  movl $0x10030cf0, %edi                                               #  263   0x30d56  5      
  movl %eax, 0xfffff97(%rip)                                           #  264   0x30d5b  6      
  nop                                                                  #  265   0x30d61  1      
  nop                                                                  #  266   0x30d62  1      
  callq .__cxa_guard_release                                           #  267   0x30d63  5      
  jmpq .L_30d80                                                        #  268   0x30d68  5      
  nop                                                                  #  269   0x30d6d  1      
  nop                                                                  #  270   0x30d6e  1      
.L_310c0:                                                              #        0x30d6f  0      
  movl %eax, %ebx                                                      #  271   0x30d6f  2      
  movl $0x10030ce0, %edi                                               #  272   0x30d71  5      
  nop                                                                  #  273   0x30d76  1      
  nop                                                                  #  274   0x30d77  1      
  callq .__cxa_guard_abort                                             #  275   0x30d78  5      
  movl %ebx, %edi                                                      #  276   0x30d7d  2      
  nop                                                                  #  277   0x30d7f  1      
  nop                                                                  #  278   0x30d80  1      
  callq ._Unwind_Resume                                                #  279   0x30d81  5      
.L_31100:                                                              #        0x30d86  0      
  movl %eax, %ebx                                                      #  280   0x30d86  2      
  movl $0x10030cf0, %edi                                               #  281   0x30d88  5      
  nop                                                                  #  282   0x30d8d  1      
  nop                                                                  #  283   0x30d8e  1      
  callq .__cxa_guard_abort                                             #  284   0x30d8f  5      
  movl %ebx, %edi                                                      #  285   0x30d94  2      
  nop                                                                  #  286   0x30d96  1      
  nop                                                                  #  287   0x30d97  1      
  callq ._Unwind_Resume                                                #  288   0x30d98  5      
  movl %eax, %ebx                                                      #  289   0x30d9d  2      
  movl $0x10030d00, %edi                                               #  290   0x30d9f  5      
  nop                                                                  #  291   0x30da4  1      
  nop                                                                  #  292   0x30da5  1      
  callq .__cxa_guard_abort                                             #  293   0x30da6  5      
  movl %ebx, %edi                                                      #  294   0x30dab  2      
  nop                                                                  #  295   0x30dad  1      
  nop                                                                  #  296   0x30dae  1      
  callq ._Unwind_Resume                                                #  297   0x30daf  5      
  jmpq .L_310c0                                                        #  298   0x30db4  5      
  nop                                                                  #  299   0x30db9  1      
  nop                                                                  #  300   0x30dba  1      
  jmpq .L_31100                                                        #  301   0x30dbb  5      
  nop                                                                  #  302   0x30dc0  1      
  nop                                                                  #  303   0x30dc1  1      
  nop                                                                  #  304   0x30dc2  1      
                                                                                                
.size _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE

