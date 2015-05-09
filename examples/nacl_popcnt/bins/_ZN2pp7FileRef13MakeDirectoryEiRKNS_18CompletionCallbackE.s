  .text
  .globl _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, @function

#! file-offset 0x309e0
#! rip-offset  0x309e0
#! capacity    1984 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE:            #        0x309e0  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x309e0  5      
  movq %r12, -0x10(%rsp)                                               #  2     0x309e5  5      
  movl %edx, %ebx                                                      #  3     0x309ea  2      
  movq %r13, -0x8(%rsp)                                                #  4     0x309ec  5      
  subl $0x48, %esp                                                     #  5     0x309f1  3      
  addq %r15, %rsp                                                      #  6     0x309f4  3      
  cmpb $0x0, 0x100002e2(%rip)                                          #  7     0x309f7  7      
  xchgw %ax, %ax                                                       #  8     0x309fe  3      
  movl %esi, %r12d                                                     #  9     0x30a01  3      
  movl %edi, %r13d                                                     #  10    0x30a04  3      
  je .L_30be0                                                          #  11    0x30a07  6      
  nop                                                                  #  12    0x30a0d  1      
  nop                                                                  #  13    0x30a0e  1      
.L_30a20:                                                              #        0x30a0f  0      
  movl 0x100002d3(%rip), %eax                                          #  14    0x30a0f  6      
  testq %rax, %rax                                                     #  15    0x30a15  3      
  jne .L_30b80                                                         #  16    0x30a18  6      
  cmpb $0x0, 0x100002cb(%rip)                                          #  17    0x30a1e  7      
  je .L_30ae0                                                          #  18    0x30a25  6      
  nop                                                                  #  19    0x30a2b  1      
.L_30a40:                                                              #        0x30a2c  0      
  movl 0x100002c6(%rip), %eax                                          #  20    0x30a2c  6      
  testq %rax, %rax                                                     #  21    0x30a32  3      
  je .L_30c80                                                          #  22    0x30a35  6      
  testl $0xfffffffe, %r12d                                             #  23    0x30a3b  7      
  jne .L_30d80                                                         #  24    0x30a42  6      
  nop                                                                  #  25    0x30a48  1      
  cmpb $0x0, 0x100002a0(%rip)                                          #  26    0x30a49  7      
  je .L_30d20                                                          #  27    0x30a50  6      
  nop                                                                  #  28    0x30a56  1      
  nop                                                                  #  29    0x30a57  1      
.L_30a80:                                                              #        0x30a58  0      
  movl %ebx, %ebx                                                      #  30    0x30a58  2      
  movq (%r15,%rbx,1), %rdx                                             #  31    0x30a5a  4      
  movl %eax, %eax                                                      #  32    0x30a5e  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  33    0x30a60  5      
  movl %r12d, %esi                                                     #  34    0x30a65  3      
  andl $0x1, %esi                                                      #  35    0x30a68  3      
  movq %rdx, 0x10(%rsp)                                                #  36    0x30a6b  5      
  movl %ebx, %ebx                                                      #  37    0x30a70  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  38    0x30a72  5      
  nop                                                                  #  39    0x30a77  1      
  movl %ecx, 0x18(%rsp)                                                #  40    0x30a78  4      
  movl %r13d, %r13d                                                    #  41    0x30a7c  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  42    0x30a7f  5      
  nop                                                                  #  43    0x30a84  1      
  nop                                                                  #  44    0x30a85  1      
.L_30ac0:                                                              #        0x30a86  0      
  movq 0x30(%rsp), %rbx                                                #  45    0x30a86  5      
  movq 0x38(%rsp), %r12                                                #  46    0x30a8b  5      
  movq 0x40(%rsp), %r13                                                #  47    0x30a90  5      
  addl $0x48, %esp                                                     #  48    0x30a95  3      
  addq %r15, %rsp                                                      #  49    0x30a98  3      
  andl $0xffffffe0, %eax                                               #  50    0x30a9b  5      
  addq %r15, %rax                                                      #  51    0x30aa0  3      
  jmpq %rax                                                            #  52    0x30aa3  2      
  nop                                                                  #  53    0x30aa5  1      
.L_30ae0:                                                              #        0x30aa6  0      
  movl $0x10030cf0, %edi                                               #  54    0x30aa6  5      
  nop                                                                  #  55    0x30aab  1      
  nop                                                                  #  56    0x30aac  1      
  callq .__cxa_guard_acquire                                           #  57    0x30aad  5      
  testl %eax, %eax                                                     #  58    0x30ab2  2      
  je .L_30a40                                                          #  59    0x30ab4  6      
  nop                                                                  #  60    0x30aba  1      
  nop                                                                  #  61    0x30abb  1      
  callq ._ZN2pp6Module3GetEv                                           #  62    0x30abc  5      
  movl %eax, %edi                                                      #  63    0x30ac1  2      
  movl $0x10020664, %esi                                               #  64    0x30ac3  5      
  nop                                                                  #  65    0x30ac8  1      
  nop                                                                  #  66    0x30ac9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  67    0x30aca  5      
  movl $0x10030cf0, %edi                                               #  68    0x30acf  5      
  movl %eax, 0x1000021e(%rip)                                          #  69    0x30ad4  6      
  nop                                                                  #  70    0x30ada  1      
  nop                                                                  #  71    0x30adb  1      
  callq .__cxa_guard_release                                           #  72    0x30adc  5      
  jmpq .L_30a40                                                        #  73    0x30ae1  5      
  nop                                                                  #  74    0x30ae6  1      
  nop                                                                  #  75    0x30ae7  1      
.L_30b80:                                                              #        0x30ae8  0      
  cmpb $0x0, 0x100001f1(%rip)                                          #  76    0x30ae8  7      
  je .L_30e40                                                          #  77    0x30aef  6      
  nop                                                                  #  78    0x30af5  1      
  nop                                                                  #  79    0x30af6  1      
.L_30ba0:                                                              #        0x30af7  0      
  movl %ebx, %ebx                                                      #  80    0x30af7  2      
  movq (%r15,%rbx,1), %rdx                                             #  81    0x30af9  4      
  movl %eax, %eax                                                      #  82    0x30afd  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  83    0x30aff  5      
  movl %r12d, %esi                                                     #  84    0x30b04  3      
  movq %rdx, 0x20(%rsp)                                                #  85    0x30b07  5      
  movl %ebx, %ebx                                                      #  86    0x30b0c  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  87    0x30b0e  5      
  movl %ecx, 0x28(%rsp)                                                #  88    0x30b13  4      
  movl %r13d, %r13d                                                    #  89    0x30b17  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  90    0x30b1a  5      
  jmpq .L_30ac0                                                        #  91    0x30b1f  5      
  nop                                                                  #  92    0x30b24  1      
  nop                                                                  #  93    0x30b25  1      
.L_30be0:                                                              #        0x30b26  0      
  movl $0x10030ce0, %edi                                               #  94    0x30b26  5      
  nop                                                                  #  95    0x30b2b  1      
  nop                                                                  #  96    0x30b2c  1      
  callq .__cxa_guard_acquire                                           #  97    0x30b2d  5      
  testl %eax, %eax                                                     #  98    0x30b32  2      
  je .L_30a20                                                          #  99    0x30b34  6      
  nop                                                                  #  100   0x30b3a  1      
  nop                                                                  #  101   0x30b3b  1      
  callq ._ZN2pp6Module3GetEv                                           #  102   0x30b3c  5      
  movl %eax, %edi                                                      #  103   0x30b41  2      
  movl $0x10020654, %esi                                               #  104   0x30b43  5      
  nop                                                                  #  105   0x30b48  1      
  nop                                                                  #  106   0x30b49  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  107   0x30b4a  5      
  movl $0x10030ce0, %edi                                               #  108   0x30b4f  5      
  movl %eax, 0x1000018e(%rip)                                          #  109   0x30b54  6      
  nop                                                                  #  110   0x30b5a  1      
  nop                                                                  #  111   0x30b5b  1      
  callq .__cxa_guard_release                                           #  112   0x30b5c  5      
  jmpq .L_30a20                                                        #  113   0x30b61  5      
  nop                                                                  #  114   0x30b66  1      
  nop                                                                  #  115   0x30b67  1      
.L_30c80:                                                              #        0x30b68  0      
  cmpb $0x0, 0x10000191(%rip)                                          #  116   0x30b68  7      
  je .L_30f00                                                          #  117   0x30b6f  6      
  nop                                                                  #  118   0x30b75  1      
  nop                                                                  #  119   0x30b76  1      
.L_30ca0:                                                              #        0x30b77  0      
  movl 0x1000018b(%rip), %edx                                          #  120   0x30b77  6      
  testl %edx, %edx                                                     #  121   0x30b7d  2      
  je .L_30ea0                                                          #  122   0x30b7f  6      
  testl $0xfffffffe, %r12d                                             #  123   0x30b85  7      
  movl $0xfffffff4, %esi                                               #  124   0x30b8c  5      
  jne .L_30ec0                                                         #  125   0x30b91  6      
  nop                                                                  #  126   0x30b97  1      
  nop                                                                  #  127   0x30b98  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  128   0x30b99  5      
  movl %ebx, %ebx                                                      #  129   0x30b9e  2      
  movq (%r15,%rbx,1), %rdx                                             #  130   0x30ba0  4      
  movl %eax, %eax                                                      #  131   0x30ba4  2      
  movl %r12d, %esi                                                     #  132   0x30ba6  3      
  movl %eax, %eax                                                      #  133   0x30ba9  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  134   0x30bab  5      
  andl $0x1, %esi                                                      #  135   0x30bb0  3      
  movq %rdx, (%rsp)                                                    #  136   0x30bb3  4      
  movl %ebx, %ebx                                                      #  137   0x30bb7  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  138   0x30bb9  5      
  movl %ecx, 0x8(%rsp)                                                 #  139   0x30bbe  4      
  movl %r13d, %r13d                                                    #  140   0x30bc2  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  141   0x30bc5  5      
  jmpq .L_30ac0                                                        #  142   0x30bca  5      
  nop                                                                  #  143   0x30bcf  1      
.L_30d20:                                                              #        0x30bd0  0      
  movl $0x10030cf0, %edi                                               #  144   0x30bd0  5      
  nop                                                                  #  145   0x30bd5  1      
  nop                                                                  #  146   0x30bd6  1      
  callq .__cxa_guard_acquire                                           #  147   0x30bd7  5      
  testl %eax, %eax                                                     #  148   0x30bdc  2      
  jne .L_31020                                                         #  149   0x30bde  6      
  nop                                                                  #  150   0x30be4  1      
  nop                                                                  #  151   0x30be5  1      
.L_30d60:                                                              #        0x30be6  0      
  movl 0x1000010c(%rip), %eax                                          #  152   0x30be6  6      
  jmpq .L_30a80                                                        #  153   0x30bec  5      
  nop                                                                  #  154   0x30bf1  1      
  nop                                                                  #  155   0x30bf2  1      
.L_30d80:                                                              #        0x30bf3  0      
  movl %ebx, %ebx                                                      #  156   0x30bf3  2      
  movl (%r15,%rbx,1), %ecx                                             #  157   0x30bf5  4      
  testl %ecx, %ecx                                                     #  158   0x30bf9  2      
  je .L_30ee0                                                          #  159   0x30bfb  6      
  movl %ebx, %ebx                                                      #  160   0x30c01  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                         #  161   0x30c03  6      
  jne .L_30ee0                                                         #  162   0x30c09  6      
  nop                                                                  #  163   0x30c0f  1      
  nop                                                                  #  164   0x30c10  1      
  nop                                                                  #  165   0x30c11  1      
  callq ._ZN2pp6Module3GetEv                                           #  166   0x30c12  5      
  movl %eax, %eax                                                      #  167   0x30c17  2      
  movl $0xfffffff4, %ecx                                               #  168   0x30c19  5      
  movl %ebx, %edx                                                      #  169   0x30c1e  2      
  movl %eax, %eax                                                      #  170   0x30c20  2      
  movl 0x24(%r15,%rax,1), %edi                                         #  171   0x30c22  5      
  xorl %esi, %esi                                                      #  172   0x30c27  2      
  nop                                                                  #  173   0x30c29  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi    #  174   0x30c2a  5      
  movl $0xffffffff, %eax                                               #  175   0x30c2f  5      
  nop                                                                  #  176   0x30c34  1      
  nop                                                                  #  177   0x30c35  1      
.L_30e00:                                                              #        0x30c36  0      
  movq 0x30(%rsp), %rbx                                                #  178   0x30c36  5      
  movq 0x38(%rsp), %r12                                                #  179   0x30c3b  5      
  movq 0x40(%rsp), %r13                                                #  180   0x30c40  5      
  addl $0x48, %esp                                                     #  181   0x30c45  3      
  addq %r15, %rsp                                                      #  182   0x30c48  3      
  popq %r11                                                            #  183   0x30c4b  3      
  nop                                                                  #  184   0x30c4e  1      
  andl $0xffffffe0, %r11d                                              #  185   0x30c4f  7      
  addq %r15, %r11                                                      #  186   0x30c56  3      
  jmpq %r11                                                            #  187   0x30c59  3      
  nop                                                                  #  188   0x30c5c  1      
  nop                                                                  #  189   0x30c5d  1      
.L_30e40:                                                              #        0x30c5e  0      
  movl $0x10030ce0, %edi                                               #  190   0x30c5e  5      
  nop                                                                  #  191   0x30c63  1      
  nop                                                                  #  192   0x30c64  1      
  callq .__cxa_guard_acquire                                           #  193   0x30c65  5      
  testl %eax, %eax                                                     #  194   0x30c6a  2      
  jne .L_30fa0                                                         #  195   0x30c6c  6      
  nop                                                                  #  196   0x30c72  1      
  nop                                                                  #  197   0x30c73  1      
.L_30e80:                                                              #        0x30c74  0      
  movl 0x1000006e(%rip), %eax                                          #  198   0x30c74  6      
  jmpq .L_30ba0                                                        #  199   0x30c7a  5      
  nop                                                                  #  200   0x30c7f  1      
  nop                                                                  #  201   0x30c80  1      
.L_30ea0:                                                              #        0x30c81  0      
  movl $0xfffffffa, %esi                                               #  202   0x30c81  5      
  nop                                                                  #  203   0x30c86  1      
  nop                                                                  #  204   0x30c87  1      
.L_30ec0:                                                              #        0x30c88  0      
  movl %ebx, %edi                                                      #  205   0x30c88  2      
  movq 0x38(%rsp), %r12                                                #  206   0x30c8a  5      
  movq 0x30(%rsp), %rbx                                                #  207   0x30c8f  5      
  movq 0x40(%rsp), %r13                                                #  208   0x30c94  5      
  addl $0x48, %esp                                                     #  209   0x30c99  3      
  addq %r15, %rsp                                                      #  210   0x30c9c  3      
  jmpq ._ZNK2pp18CompletionCallback8MayForceEi                         #  211   0x30c9f  5      
  nop                                                                  #  212   0x30ca4  1      
.L_30ee0:                                                              #        0x30ca5  0      
  movl $0xfffffff4, %eax                                               #  213   0x30ca5  5      
  jmpq .L_30e00                                                        #  214   0x30caa  5      
  nop                                                                  #  215   0x30caf  1      
  nop                                                                  #  216   0x30cb0  1      
.L_30f00:                                                              #        0x30cb1  0      
  movl $0x10030d00, %edi                                               #  217   0x30cb1  5      
  nop                                                                  #  218   0x30cb6  1      
  nop                                                                  #  219   0x30cb7  1      
  callq .__cxa_guard_acquire                                           #  220   0x30cb8  5      
  testl %eax, %eax                                                     #  221   0x30cbd  2      
  je .L_30ca0                                                          #  222   0x30cbf  6      
  nop                                                                  #  223   0x30cc5  1      
  nop                                                                  #  224   0x30cc6  1      
  callq ._ZN2pp6Module3GetEv                                           #  225   0x30cc7  5      
  movl %eax, %edi                                                      #  226   0x30ccc  2      
  movl $0x10020644, %esi                                               #  227   0x30cce  5      
  nop                                                                  #  228   0x30cd3  1      
  nop                                                                  #  229   0x30cd4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  230   0x30cd5  5      
  movl $0x10030d00, %edi                                               #  231   0x30cda  5      
  movl %eax, 0x10000023(%rip)                                          #  232   0x30cdf  6      
  nop                                                                  #  233   0x30ce5  1      
  nop                                                                  #  234   0x30ce6  1      
  callq .__cxa_guard_release                                           #  235   0x30ce7  5      
  jmpq .L_30ca0                                                        #  236   0x30cec  5      
  nop                                                                  #  237   0x30cf1  1      
  nop                                                                  #  238   0x30cf2  1      
.L_30fa0:                                                              #        0x30cf3  0      
  nop                                                                  #  239   0x30cf3  1      
  nop                                                                  #  240   0x30cf4  1      
  callq ._ZN2pp6Module3GetEv                                           #  241   0x30cf5  5      
  movl %eax, %edi                                                      #  242   0x30cfa  2      
  movl $0x10020654, %esi                                               #  243   0x30cfc  5      
  nop                                                                  #  244   0x30d01  1      
  nop                                                                  #  245   0x30d02  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  246   0x30d03  5      
  movl $0x10030ce0, %edi                                               #  247   0x30d08  5      
  movl %eax, 0xfffffd5(%rip)                                           #  248   0x30d0d  6      
  nop                                                                  #  249   0x30d13  1      
  nop                                                                  #  250   0x30d14  1      
  callq .__cxa_guard_release                                           #  251   0x30d15  5      
  jmpq .L_30e80                                                        #  252   0x30d1a  5      
  nop                                                                  #  253   0x30d1f  1      
  nop                                                                  #  254   0x30d20  1      
.L_31020:                                                              #        0x30d21  0      
  nop                                                                  #  255   0x30d21  1      
  nop                                                                  #  256   0x30d22  1      
  callq ._ZN2pp6Module3GetEv                                           #  257   0x30d23  5      
  movl %eax, %edi                                                      #  258   0x30d28  2      
  movl $0x10020664, %esi                                               #  259   0x30d2a  5      
  nop                                                                  #  260   0x30d2f  1      
  nop                                                                  #  261   0x30d30  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  262   0x30d31  5      
  movl $0x10030cf0, %edi                                               #  263   0x30d36  5      
  movl %eax, 0xfffffb7(%rip)                                           #  264   0x30d3b  6      
  nop                                                                  #  265   0x30d41  1      
  nop                                                                  #  266   0x30d42  1      
  callq .__cxa_guard_release                                           #  267   0x30d43  5      
  jmpq .L_30d60                                                        #  268   0x30d48  5      
  nop                                                                  #  269   0x30d4d  1      
  nop                                                                  #  270   0x30d4e  1      
.L_310a0:                                                              #        0x30d4f  0      
  movl %eax, %ebx                                                      #  271   0x30d4f  2      
  movl $0x10030ce0, %edi                                               #  272   0x30d51  5      
  nop                                                                  #  273   0x30d56  1      
  nop                                                                  #  274   0x30d57  1      
  callq .__cxa_guard_abort                                             #  275   0x30d58  5      
  movl %ebx, %edi                                                      #  276   0x30d5d  2      
  nop                                                                  #  277   0x30d5f  1      
  nop                                                                  #  278   0x30d60  1      
  callq ._Unwind_Resume                                                #  279   0x30d61  5      
.L_310e0:                                                              #        0x30d66  0      
  movl %eax, %ebx                                                      #  280   0x30d66  2      
  movl $0x10030cf0, %edi                                               #  281   0x30d68  5      
  nop                                                                  #  282   0x30d6d  1      
  nop                                                                  #  283   0x30d6e  1      
  callq .__cxa_guard_abort                                             #  284   0x30d6f  5      
  movl %ebx, %edi                                                      #  285   0x30d74  2      
  nop                                                                  #  286   0x30d76  1      
  nop                                                                  #  287   0x30d77  1      
  callq ._Unwind_Resume                                                #  288   0x30d78  5      
  movl %eax, %ebx                                                      #  289   0x30d7d  2      
  movl $0x10030d00, %edi                                               #  290   0x30d7f  5      
  nop                                                                  #  291   0x30d84  1      
  nop                                                                  #  292   0x30d85  1      
  callq .__cxa_guard_abort                                             #  293   0x30d86  5      
  movl %ebx, %edi                                                      #  294   0x30d8b  2      
  nop                                                                  #  295   0x30d8d  1      
  nop                                                                  #  296   0x30d8e  1      
  callq ._Unwind_Resume                                                #  297   0x30d8f  5      
  jmpq .L_310a0                                                        #  298   0x30d94  5      
  nop                                                                  #  299   0x30d99  1      
  nop                                                                  #  300   0x30d9a  1      
  jmpq .L_310e0                                                        #  301   0x30d9b  5      
  nop                                                                  #  302   0x30da0  1      
  nop                                                                  #  303   0x30da1  1      
  nop                                                                  #  304   0x30da2  1      
                                                                                                
.size _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE

