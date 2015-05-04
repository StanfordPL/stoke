  .text
  .globl _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, @function

#! file-offset 0x30a80
#! rip-offset  0x30a80
#! capacity    1984 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE:            #        0x30a80  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x30a80  5      
  movq %r12, -0x10(%rsp)                                               #  2     0x30a85  5      
  movl %edx, %ebx                                                      #  3     0x30a8a  2      
  movq %r13, -0x8(%rsp)                                                #  4     0x30a8c  5      
  subl $0x48, %esp                                                     #  5     0x30a91  3      
  addq %r15, %rsp                                                      #  6     0x30a94  3      
  cmpb $0x0, 0x10000242(%rip)                                          #  7     0x30a97  7      
  xchgw %ax, %ax                                                       #  8     0x30a9e  3      
  movl %esi, %r12d                                                     #  9     0x30aa1  3      
  movl %edi, %r13d                                                     #  10    0x30aa4  3      
  je .L_30c80                                                          #  11    0x30aa7  6      
  nop                                                                  #  12    0x30aad  1      
  nop                                                                  #  13    0x30aae  1      
.L_30ac0:                                                              #        0x30aaf  0      
  movl 0x10000233(%rip), %eax                                          #  14    0x30aaf  6      
  testq %rax, %rax                                                     #  15    0x30ab5  3      
  jne .L_30c20                                                         #  16    0x30ab8  6      
  cmpb $0x0, 0x1000022b(%rip)                                          #  17    0x30abe  7      
  je .L_30b80                                                          #  18    0x30ac5  6      
  nop                                                                  #  19    0x30acb  1      
.L_30ae0:                                                              #        0x30acc  0      
  movl 0x10000226(%rip), %eax                                          #  20    0x30acc  6      
  testq %rax, %rax                                                     #  21    0x30ad2  3      
  je .L_30d20                                                          #  22    0x30ad5  6      
  testl $0xfffffffe, %r12d                                             #  23    0x30adb  7      
  jne .L_30e20                                                         #  24    0x30ae2  6      
  nop                                                                  #  25    0x30ae8  1      
  cmpb $0x0, 0x10000200(%rip)                                          #  26    0x30ae9  7      
  je .L_30dc0                                                          #  27    0x30af0  6      
  nop                                                                  #  28    0x30af6  1      
  nop                                                                  #  29    0x30af7  1      
.L_30b20:                                                              #        0x30af8  0      
  movl %ebx, %ebx                                                      #  30    0x30af8  2      
  movq (%r15,%rbx,1), %rdx                                             #  31    0x30afa  4      
  movl %eax, %eax                                                      #  32    0x30afe  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  33    0x30b00  5      
  movl %r12d, %esi                                                     #  34    0x30b05  3      
  andl $0x1, %esi                                                      #  35    0x30b08  3      
  movq %rdx, 0x10(%rsp)                                                #  36    0x30b0b  5      
  movl %ebx, %ebx                                                      #  37    0x30b10  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  38    0x30b12  5      
  nop                                                                  #  39    0x30b17  1      
  movl %ecx, 0x18(%rsp)                                                #  40    0x30b18  4      
  movl %r13d, %r13d                                                    #  41    0x30b1c  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  42    0x30b1f  5      
  nop                                                                  #  43    0x30b24  1      
  nop                                                                  #  44    0x30b25  1      
.L_30b60:                                                              #        0x30b26  0      
  movq 0x30(%rsp), %rbx                                                #  45    0x30b26  5      
  movq 0x38(%rsp), %r12                                                #  46    0x30b2b  5      
  movq 0x40(%rsp), %r13                                                #  47    0x30b30  5      
  addl $0x48, %esp                                                     #  48    0x30b35  3      
  addq %r15, %rsp                                                      #  49    0x30b38  3      
  andl $0xffffffe0, %eax                                               #  50    0x30b3b  5      
  addq %r15, %rax                                                      #  51    0x30b40  3      
  jmpq %rax                                                            #  52    0x30b43  2      
  nop                                                                  #  53    0x30b45  1      
.L_30b80:                                                              #        0x30b46  0      
  movl $0x10030cf0, %edi                                               #  54    0x30b46  5      
  nop                                                                  #  55    0x30b4b  1      
  nop                                                                  #  56    0x30b4c  1      
  callq .__cxa_guard_acquire                                           #  57    0x30b4d  5      
  testl %eax, %eax                                                     #  58    0x30b52  2      
  je .L_30ae0                                                          #  59    0x30b54  6      
  nop                                                                  #  60    0x30b5a  1      
  nop                                                                  #  61    0x30b5b  1      
  callq ._ZN2pp6Module3GetEv                                           #  62    0x30b5c  5      
  movl %eax, %edi                                                      #  63    0x30b61  2      
  movl $0x10020664, %esi                                               #  64    0x30b63  5      
  nop                                                                  #  65    0x30b68  1      
  nop                                                                  #  66    0x30b69  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  67    0x30b6a  5      
  movl $0x10030cf0, %edi                                               #  68    0x30b6f  5      
  movl %eax, 0x1000017e(%rip)                                          #  69    0x30b74  6      
  nop                                                                  #  70    0x30b7a  1      
  nop                                                                  #  71    0x30b7b  1      
  callq .__cxa_guard_release                                           #  72    0x30b7c  5      
  jmpq .L_30ae0                                                        #  73    0x30b81  5      
  nop                                                                  #  74    0x30b86  1      
  nop                                                                  #  75    0x30b87  1      
.L_30c20:                                                              #        0x30b88  0      
  cmpb $0x0, 0x10000151(%rip)                                          #  76    0x30b88  7      
  je .L_30ee0                                                          #  77    0x30b8f  6      
  nop                                                                  #  78    0x30b95  1      
  nop                                                                  #  79    0x30b96  1      
.L_30c40:                                                              #        0x30b97  0      
  movl %ebx, %ebx                                                      #  80    0x30b97  2      
  movq (%r15,%rbx,1), %rdx                                             #  81    0x30b99  4      
  movl %eax, %eax                                                      #  82    0x30b9d  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  83    0x30b9f  5      
  movl %r12d, %esi                                                     #  84    0x30ba4  3      
  movq %rdx, 0x20(%rsp)                                                #  85    0x30ba7  5      
  movl %ebx, %ebx                                                      #  86    0x30bac  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  87    0x30bae  5      
  movl %ecx, 0x28(%rsp)                                                #  88    0x30bb3  4      
  movl %r13d, %r13d                                                    #  89    0x30bb7  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  90    0x30bba  5      
  jmpq .L_30b60                                                        #  91    0x30bbf  5      
  nop                                                                  #  92    0x30bc4  1      
  nop                                                                  #  93    0x30bc5  1      
.L_30c80:                                                              #        0x30bc6  0      
  movl $0x10030ce0, %edi                                               #  94    0x30bc6  5      
  nop                                                                  #  95    0x30bcb  1      
  nop                                                                  #  96    0x30bcc  1      
  callq .__cxa_guard_acquire                                           #  97    0x30bcd  5      
  testl %eax, %eax                                                     #  98    0x30bd2  2      
  je .L_30ac0                                                          #  99    0x30bd4  6      
  nop                                                                  #  100   0x30bda  1      
  nop                                                                  #  101   0x30bdb  1      
  callq ._ZN2pp6Module3GetEv                                           #  102   0x30bdc  5      
  movl %eax, %edi                                                      #  103   0x30be1  2      
  movl $0x10020654, %esi                                               #  104   0x30be3  5      
  nop                                                                  #  105   0x30be8  1      
  nop                                                                  #  106   0x30be9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  107   0x30bea  5      
  movl $0x10030ce0, %edi                                               #  108   0x30bef  5      
  movl %eax, 0x100000ee(%rip)                                          #  109   0x30bf4  6      
  nop                                                                  #  110   0x30bfa  1      
  nop                                                                  #  111   0x30bfb  1      
  callq .__cxa_guard_release                                           #  112   0x30bfc  5      
  jmpq .L_30ac0                                                        #  113   0x30c01  5      
  nop                                                                  #  114   0x30c06  1      
  nop                                                                  #  115   0x30c07  1      
.L_30d20:                                                              #        0x30c08  0      
  cmpb $0x0, 0x100000f1(%rip)                                          #  116   0x30c08  7      
  je .L_30fa0                                                          #  117   0x30c0f  6      
  nop                                                                  #  118   0x30c15  1      
  nop                                                                  #  119   0x30c16  1      
.L_30d40:                                                              #        0x30c17  0      
  movl 0x100000eb(%rip), %edx                                          #  120   0x30c17  6      
  testl %edx, %edx                                                     #  121   0x30c1d  2      
  je .L_30f40                                                          #  122   0x30c1f  6      
  testl $0xfffffffe, %r12d                                             #  123   0x30c25  7      
  movl $0xfffffff4, %esi                                               #  124   0x30c2c  5      
  jne .L_30f60                                                         #  125   0x30c31  6      
  nop                                                                  #  126   0x30c37  1      
  nop                                                                  #  127   0x30c38  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  128   0x30c39  5      
  movl %ebx, %ebx                                                      #  129   0x30c3e  2      
  movq (%r15,%rbx,1), %rdx                                             #  130   0x30c40  4      
  movl %eax, %eax                                                      #  131   0x30c44  2      
  movl %r12d, %esi                                                     #  132   0x30c46  3      
  movl %eax, %eax                                                      #  133   0x30c49  2      
  movl 0x18(%r15,%rax,1), %eax                                         #  134   0x30c4b  5      
  andl $0x1, %esi                                                      #  135   0x30c50  3      
  movq %rdx, (%rsp)                                                    #  136   0x30c53  4      
  movl %ebx, %ebx                                                      #  137   0x30c57  2      
  movl 0x8(%r15,%rbx,1), %ecx                                          #  138   0x30c59  5      
  movl %ecx, 0x8(%rsp)                                                 #  139   0x30c5e  4      
  movl %r13d, %r13d                                                    #  140   0x30c62  3      
  movl 0x4(%r15,%r13,1), %edi                                          #  141   0x30c65  5      
  jmpq .L_30b60                                                        #  142   0x30c6a  5      
  nop                                                                  #  143   0x30c6f  1      
.L_30dc0:                                                              #        0x30c70  0      
  movl $0x10030cf0, %edi                                               #  144   0x30c70  5      
  nop                                                                  #  145   0x30c75  1      
  nop                                                                  #  146   0x30c76  1      
  callq .__cxa_guard_acquire                                           #  147   0x30c77  5      
  testl %eax, %eax                                                     #  148   0x30c7c  2      
  jne .L_310c0                                                         #  149   0x30c7e  6      
  nop                                                                  #  150   0x30c84  1      
  nop                                                                  #  151   0x30c85  1      
.L_30e00:                                                              #        0x30c86  0      
  movl 0x1000006c(%rip), %eax                                          #  152   0x30c86  6      
  jmpq .L_30b20                                                        #  153   0x30c8c  5      
  nop                                                                  #  154   0x30c91  1      
  nop                                                                  #  155   0x30c92  1      
.L_30e20:                                                              #        0x30c93  0      
  movl %ebx, %ebx                                                      #  156   0x30c93  2      
  movl (%r15,%rbx,1), %ecx                                             #  157   0x30c95  4      
  testl %ecx, %ecx                                                     #  158   0x30c99  2      
  je .L_30f80                                                          #  159   0x30c9b  6      
  movl %ebx, %ebx                                                      #  160   0x30ca1  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                         #  161   0x30ca3  6      
  jne .L_30f80                                                         #  162   0x30ca9  6      
  nop                                                                  #  163   0x30caf  1      
  nop                                                                  #  164   0x30cb0  1      
  nop                                                                  #  165   0x30cb1  1      
  callq ._ZN2pp6Module3GetEv                                           #  166   0x30cb2  5      
  movl %eax, %eax                                                      #  167   0x30cb7  2      
  movl $0xfffffff4, %ecx                                               #  168   0x30cb9  5      
  movl %ebx, %edx                                                      #  169   0x30cbe  2      
  movl %eax, %eax                                                      #  170   0x30cc0  2      
  movl 0x24(%r15,%rax,1), %edi                                         #  171   0x30cc2  5      
  xorl %esi, %esi                                                      #  172   0x30cc7  2      
  nop                                                                  #  173   0x30cc9  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi    #  174   0x30cca  5      
  movl $0xffffffff, %eax                                               #  175   0x30ccf  5      
  nop                                                                  #  176   0x30cd4  1      
  nop                                                                  #  177   0x30cd5  1      
.L_30ea0:                                                              #        0x30cd6  0      
  movq 0x30(%rsp), %rbx                                                #  178   0x30cd6  5      
  movq 0x38(%rsp), %r12                                                #  179   0x30cdb  5      
  movq 0x40(%rsp), %r13                                                #  180   0x30ce0  5      
  addl $0x48, %esp                                                     #  181   0x30ce5  3      
  addq %r15, %rsp                                                      #  182   0x30ce8  3      
  popq %r11                                                            #  183   0x30ceb  3      
  nop                                                                  #  184   0x30cee  1      
  andl $0xffffffe0, %r11d                                              #  185   0x30cef  7      
  addq %r15, %r11                                                      #  186   0x30cf6  3      
  jmpq %r11                                                            #  187   0x30cf9  3      
  nop                                                                  #  188   0x30cfc  1      
  nop                                                                  #  189   0x30cfd  1      
.L_30ee0:                                                              #        0x30cfe  0      
  movl $0x10030ce0, %edi                                               #  190   0x30cfe  5      
  nop                                                                  #  191   0x30d03  1      
  nop                                                                  #  192   0x30d04  1      
  callq .__cxa_guard_acquire                                           #  193   0x30d05  5      
  testl %eax, %eax                                                     #  194   0x30d0a  2      
  jne .L_31040                                                         #  195   0x30d0c  6      
  nop                                                                  #  196   0x30d12  1      
  nop                                                                  #  197   0x30d13  1      
.L_30f20:                                                              #        0x30d14  0      
  movl 0xfffffce(%rip), %eax                                           #  198   0x30d14  6      
  jmpq .L_30c40                                                        #  199   0x30d1a  5      
  nop                                                                  #  200   0x30d1f  1      
  nop                                                                  #  201   0x30d20  1      
.L_30f40:                                                              #        0x30d21  0      
  movl $0xfffffffa, %esi                                               #  202   0x30d21  5      
  nop                                                                  #  203   0x30d26  1      
  nop                                                                  #  204   0x30d27  1      
.L_30f60:                                                              #        0x30d28  0      
  movl %ebx, %edi                                                      #  205   0x30d28  2      
  movq 0x38(%rsp), %r12                                                #  206   0x30d2a  5      
  movq 0x30(%rsp), %rbx                                                #  207   0x30d2f  5      
  movq 0x40(%rsp), %r13                                                #  208   0x30d34  5      
  addl $0x48, %esp                                                     #  209   0x30d39  3      
  addq %r15, %rsp                                                      #  210   0x30d3c  3      
  jmpq ._ZNK2pp18CompletionCallback8MayForceEi                         #  211   0x30d3f  5      
  nop                                                                  #  212   0x30d44  1      
.L_30f80:                                                              #        0x30d45  0      
  movl $0xfffffff4, %eax                                               #  213   0x30d45  5      
  jmpq .L_30ea0                                                        #  214   0x30d4a  5      
  nop                                                                  #  215   0x30d4f  1      
  nop                                                                  #  216   0x30d50  1      
.L_30fa0:                                                              #        0x30d51  0      
  movl $0x10030d00, %edi                                               #  217   0x30d51  5      
  nop                                                                  #  218   0x30d56  1      
  nop                                                                  #  219   0x30d57  1      
  callq .__cxa_guard_acquire                                           #  220   0x30d58  5      
  testl %eax, %eax                                                     #  221   0x30d5d  2      
  je .L_30d40                                                          #  222   0x30d5f  6      
  nop                                                                  #  223   0x30d65  1      
  nop                                                                  #  224   0x30d66  1      
  callq ._ZN2pp6Module3GetEv                                           #  225   0x30d67  5      
  movl %eax, %edi                                                      #  226   0x30d6c  2      
  movl $0x10020644, %esi                                               #  227   0x30d6e  5      
  nop                                                                  #  228   0x30d73  1      
  nop                                                                  #  229   0x30d74  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  230   0x30d75  5      
  movl $0x10030d00, %edi                                               #  231   0x30d7a  5      
  movl %eax, 0xfffff83(%rip)                                           #  232   0x30d7f  6      
  nop                                                                  #  233   0x30d85  1      
  nop                                                                  #  234   0x30d86  1      
  callq .__cxa_guard_release                                           #  235   0x30d87  5      
  jmpq .L_30d40                                                        #  236   0x30d8c  5      
  nop                                                                  #  237   0x30d91  1      
  nop                                                                  #  238   0x30d92  1      
.L_31040:                                                              #        0x30d93  0      
  nop                                                                  #  239   0x30d93  1      
  nop                                                                  #  240   0x30d94  1      
  callq ._ZN2pp6Module3GetEv                                           #  241   0x30d95  5      
  movl %eax, %edi                                                      #  242   0x30d9a  2      
  movl $0x10020654, %esi                                               #  243   0x30d9c  5      
  nop                                                                  #  244   0x30da1  1      
  nop                                                                  #  245   0x30da2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  246   0x30da3  5      
  movl $0x10030ce0, %edi                                               #  247   0x30da8  5      
  movl %eax, 0xfffff35(%rip)                                           #  248   0x30dad  6      
  nop                                                                  #  249   0x30db3  1      
  nop                                                                  #  250   0x30db4  1      
  callq .__cxa_guard_release                                           #  251   0x30db5  5      
  jmpq .L_30f20                                                        #  252   0x30dba  5      
  nop                                                                  #  253   0x30dbf  1      
  nop                                                                  #  254   0x30dc0  1      
.L_310c0:                                                              #        0x30dc1  0      
  nop                                                                  #  255   0x30dc1  1      
  nop                                                                  #  256   0x30dc2  1      
  callq ._ZN2pp6Module3GetEv                                           #  257   0x30dc3  5      
  movl %eax, %edi                                                      #  258   0x30dc8  2      
  movl $0x10020664, %esi                                               #  259   0x30dca  5      
  nop                                                                  #  260   0x30dcf  1      
  nop                                                                  #  261   0x30dd0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  262   0x30dd1  5      
  movl $0x10030cf0, %edi                                               #  263   0x30dd6  5      
  movl %eax, 0xfffff17(%rip)                                           #  264   0x30ddb  6      
  nop                                                                  #  265   0x30de1  1      
  nop                                                                  #  266   0x30de2  1      
  callq .__cxa_guard_release                                           #  267   0x30de3  5      
  jmpq .L_30e00                                                        #  268   0x30de8  5      
  nop                                                                  #  269   0x30ded  1      
  nop                                                                  #  270   0x30dee  1      
.L_31140:                                                              #        0x30def  0      
  movl %eax, %ebx                                                      #  271   0x30def  2      
  movl $0x10030ce0, %edi                                               #  272   0x30df1  5      
  nop                                                                  #  273   0x30df6  1      
  nop                                                                  #  274   0x30df7  1      
  callq .__cxa_guard_abort                                             #  275   0x30df8  5      
  movl %ebx, %edi                                                      #  276   0x30dfd  2      
  nop                                                                  #  277   0x30dff  1      
  nop                                                                  #  278   0x30e00  1      
  callq ._Unwind_Resume                                                #  279   0x30e01  5      
.L_31180:                                                              #        0x30e06  0      
  movl %eax, %ebx                                                      #  280   0x30e06  2      
  movl $0x10030cf0, %edi                                               #  281   0x30e08  5      
  nop                                                                  #  282   0x30e0d  1      
  nop                                                                  #  283   0x30e0e  1      
  callq .__cxa_guard_abort                                             #  284   0x30e0f  5      
  movl %ebx, %edi                                                      #  285   0x30e14  2      
  nop                                                                  #  286   0x30e16  1      
  nop                                                                  #  287   0x30e17  1      
  callq ._Unwind_Resume                                                #  288   0x30e18  5      
  movl %eax, %ebx                                                      #  289   0x30e1d  2      
  movl $0x10030d00, %edi                                               #  290   0x30e1f  5      
  nop                                                                  #  291   0x30e24  1      
  nop                                                                  #  292   0x30e25  1      
  callq .__cxa_guard_abort                                             #  293   0x30e26  5      
  movl %ebx, %edi                                                      #  294   0x30e2b  2      
  nop                                                                  #  295   0x30e2d  1      
  nop                                                                  #  296   0x30e2e  1      
  callq ._Unwind_Resume                                                #  297   0x30e2f  5      
  jmpq .L_31140                                                        #  298   0x30e34  5      
  nop                                                                  #  299   0x30e39  1      
  nop                                                                  #  300   0x30e3a  1      
  jmpq .L_31180                                                        #  301   0x30e3b  5      
  nop                                                                  #  302   0x30e40  1      
  nop                                                                  #  303   0x30e41  1      
  nop                                                                  #  304   0x30e42  1      
                                                                                                
.size _ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef13MakeDirectoryEiRKNS_18CompletionCallbackE

