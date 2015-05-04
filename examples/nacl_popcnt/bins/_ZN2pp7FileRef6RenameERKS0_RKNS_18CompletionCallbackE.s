  .text
  .globl _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, @function

#! file-offset 0x32a20
#! rip-offset  0x32a20
#! capacity    2112 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE:              #        0x32a20  0      
  movq %rbx, -0x18(%rsp)                                             #  1     0x32a20  5      
  movq %r12, -0x10(%rsp)                                             #  2     0x32a25  5      
  movl %edx, %ebx                                                    #  3     0x32a2a  2      
  movq %r13, -0x8(%rsp)                                              #  4     0x32a2c  5      
  subl $0x48, %esp                                                   #  5     0x32a31  3      
  addq %r15, %rsp                                                    #  6     0x32a34  3      
  cmpb $0x0, 0xfffe2a2(%rip)                                         #  7     0x32a37  7      
  xchgw %ax, %ax                                                     #  8     0x32a3e  3      
  movl %edi, %r13d                                                   #  9     0x32a41  3      
  movl %esi, %r12d                                                   #  10    0x32a44  3      
  je .L_32ce0                                                        #  11    0x32a47  6      
  nop                                                                #  12    0x32a4d  1      
  nop                                                                #  13    0x32a4e  1      
.L_32a60:                                                            #        0x32a4f  0      
  movl 0xfffe293(%rip), %eax                                         #  14    0x32a4f  6      
  testq %rax, %rax                                                   #  15    0x32a55  3      
  jne .L_32c80                                                       #  16    0x32a58  6      
  cmpb $0x0, 0xfffe28b(%rip)                                         #  17    0x32a5e  7      
  je .L_32be0                                                        #  18    0x32a65  6      
  nop                                                                #  19    0x32a6b  1      
.L_32a80:                                                            #        0x32a6c  0      
  movl 0xfffe286(%rip), %eax                                         #  20    0x32a6c  6      
  testq %rax, %rax                                                   #  21    0x32a72  3      
  jne .L_32b60                                                       #  22    0x32a75  6      
  cmpb $0x0, 0xfffe27e(%rip)                                         #  23    0x32a7b  7      
  je .L_32ec0                                                        #  24    0x32a82  6      
  nop                                                                #  25    0x32a88  1      
.L_32aa0:                                                            #        0x32a89  0      
  movl 0xfffe279(%rip), %eax                                         #  26    0x32a89  6      
  testq %rax, %rax                                                   #  27    0x32a8f  3      
  jne .L_32e60                                                       #  28    0x32a92  6      
  movl %ebx, %ebx                                                    #  29    0x32a98  2      
  movl (%r15,%rbx,1), %r9d                                           #  30    0x32a9a  4      
  testl %r9d, %r9d                                                   #  31    0x32a9e  3      
  je .L_32de0                                                        #  32    0x32aa1  6      
  xchgw %ax, %ax                                                     #  33    0x32aa7  3      
  movl %ebx, %ebx                                                    #  34    0x32aaa  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  35    0x32aac  6      
  jne .L_32de0                                                       #  36    0x32ab2  6      
  nop                                                                #  37    0x32ab8  1      
  callq ._ZN2pp6Module3GetEv                                         #  38    0x32ab9  5      
  movl %eax, %eax                                                    #  39    0x32abe  2      
  movl $0xfffffffa, %ecx                                             #  40    0x32ac0  5      
  movl %ebx, %edx                                                    #  41    0x32ac5  2      
  movl %eax, %eax                                                    #  42    0x32ac7  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  43    0x32ac9  5      
  xorl %esi, %esi                                                    #  44    0x32ace  2      
  nop                                                                #  45    0x32ad0  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  46    0x32ad1  5      
  movl $0xffffffff, %eax                                             #  47    0x32ad6  5      
  nop                                                                #  48    0x32adb  1      
  nop                                                                #  49    0x32adc  1      
.L_32b20:                                                            #        0x32add  0      
  movq 0x30(%rsp), %rbx                                              #  50    0x32add  5      
  movq 0x38(%rsp), %r12                                              #  51    0x32ae2  5      
  movq 0x40(%rsp), %r13                                              #  52    0x32ae7  5      
  addl $0x48, %esp                                                   #  53    0x32aec  3      
  addq %r15, %rsp                                                    #  54    0x32aef  3      
  popq %r11                                                          #  55    0x32af2  3      
  nop                                                                #  56    0x32af5  1      
  andl $0xffffffe0, %r11d                                            #  57    0x32af6  7      
  addq %r15, %r11                                                    #  58    0x32afd  3      
  jmpq %r11                                                          #  59    0x32b00  3      
  nop                                                                #  60    0x32b03  1      
  nop                                                                #  61    0x32b04  1      
.L_32b60:                                                            #        0x32b05  0      
  cmpb $0x0, 0xfffe1e4(%rip)                                         #  62    0x32b05  7      
  je .L_32d80                                                        #  63    0x32b0c  6      
  nop                                                                #  64    0x32b12  1      
  nop                                                                #  65    0x32b13  1      
.L_32b80:                                                            #        0x32b14  0      
  movl %ebx, %ebx                                                    #  66    0x32b14  2      
  movq (%r15,%rbx,1), %rdx                                           #  67    0x32b16  4      
  movl %eax, %eax                                                    #  68    0x32b1a  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  69    0x32b1c  5      
  movq %rdx, 0x10(%rsp)                                              #  70    0x32b21  5      
  movl %ebx, %ebx                                                    #  71    0x32b26  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  72    0x32b28  5      
  movl %ecx, 0x18(%rsp)                                              #  73    0x32b2d  4      
  nop                                                                #  74    0x32b31  1      
.L_32ba0:                                                            #        0x32b32  0      
  movl %r12d, %r12d                                                  #  75    0x32b32  3      
  movl 0x4(%r15,%r12,1), %esi                                        #  76    0x32b35  5      
  movl %r13d, %r13d                                                  #  77    0x32b3a  3      
  movl 0x4(%r15,%r13,1), %edi                                        #  78    0x32b3d  5      
  movq 0x30(%rsp), %rbx                                              #  79    0x32b42  5      
  movq 0x38(%rsp), %r12                                              #  80    0x32b47  5      
  movq 0x40(%rsp), %r13                                              #  81    0x32b4c  5      
  nop                                                                #  82    0x32b51  1      
  addl $0x48, %esp                                                   #  83    0x32b52  3      
  addq %r15, %rsp                                                    #  84    0x32b55  3      
  andl $0xffffffe0, %eax                                             #  85    0x32b58  5      
  addq %r15, %rax                                                    #  86    0x32b5d  3      
  jmpq %rax                                                          #  87    0x32b60  2      
  nop                                                                #  88    0x32b62  1      
  nop                                                                #  89    0x32b63  1      
.L_32be0:                                                            #        0x32b64  0      
  movl $0x10030cf0, %edi                                             #  90    0x32b64  5      
  nop                                                                #  91    0x32b69  1      
  nop                                                                #  92    0x32b6a  1      
  callq .__cxa_guard_acquire                                         #  93    0x32b6b  5      
  testl %eax, %eax                                                   #  94    0x32b70  2      
  je .L_32a80                                                        #  95    0x32b72  6      
  nop                                                                #  96    0x32b78  1      
  nop                                                                #  97    0x32b79  1      
  callq ._ZN2pp6Module3GetEv                                         #  98    0x32b7a  5      
  movl %eax, %edi                                                    #  99    0x32b7f  2      
  movl $0x10020664, %esi                                             #  100   0x32b81  5      
  nop                                                                #  101   0x32b86  1      
  nop                                                                #  102   0x32b87  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  103   0x32b88  5      
  movl $0x10030cf0, %edi                                             #  104   0x32b8d  5      
  movl %eax, 0xfffe160(%rip)                                         #  105   0x32b92  6      
  nop                                                                #  106   0x32b98  1      
  nop                                                                #  107   0x32b99  1      
  callq .__cxa_guard_release                                         #  108   0x32b9a  5      
  jmpq .L_32a80                                                      #  109   0x32b9f  5      
  nop                                                                #  110   0x32ba4  1      
  nop                                                                #  111   0x32ba5  1      
.L_32c80:                                                            #        0x32ba6  0      
  cmpb $0x0, 0xfffe133(%rip)                                         #  112   0x32ba6  7      
  je .L_32e00                                                        #  113   0x32bad  6      
  nop                                                                #  114   0x32bb3  1      
  nop                                                                #  115   0x32bb4  1      
.L_32ca0:                                                            #        0x32bb5  0      
  movl %ebx, %ebx                                                    #  116   0x32bb5  2      
  movq (%r15,%rbx,1), %rdx                                           #  117   0x32bb7  4      
  movl %eax, %eax                                                    #  118   0x32bbb  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  119   0x32bbd  5      
  movq %rdx, 0x20(%rsp)                                              #  120   0x32bc2  5      
  movl %ebx, %ebx                                                    #  121   0x32bc7  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  122   0x32bc9  5      
  movl %ecx, 0x28(%rsp)                                              #  123   0x32bce  4      
  nop                                                                #  124   0x32bd2  1      
  jmpq .L_32ba0                                                      #  125   0x32bd3  5      
  nop                                                                #  126   0x32bd8  1      
  nop                                                                #  127   0x32bd9  1      
.L_32ce0:                                                            #        0x32bda  0      
  movl $0x10030ce0, %edi                                             #  128   0x32bda  5      
  nop                                                                #  129   0x32bdf  1      
  nop                                                                #  130   0x32be0  1      
  callq .__cxa_guard_acquire                                         #  131   0x32be1  5      
  testl %eax, %eax                                                   #  132   0x32be6  2      
  je .L_32a60                                                        #  133   0x32be8  6      
  nop                                                                #  134   0x32bee  1      
  nop                                                                #  135   0x32bef  1      
  callq ._ZN2pp6Module3GetEv                                         #  136   0x32bf0  5      
  movl %eax, %edi                                                    #  137   0x32bf5  2      
  movl $0x10020654, %esi                                             #  138   0x32bf7  5      
  nop                                                                #  139   0x32bfc  1      
  nop                                                                #  140   0x32bfd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  141   0x32bfe  5      
  movl $0x10030ce0, %edi                                             #  142   0x32c03  5      
  movl %eax, 0xfffe0da(%rip)                                         #  143   0x32c08  6      
  nop                                                                #  144   0x32c0e  1      
  nop                                                                #  145   0x32c0f  1      
  callq .__cxa_guard_release                                         #  146   0x32c10  5      
  jmpq .L_32a60                                                      #  147   0x32c15  5      
  nop                                                                #  148   0x32c1a  1      
  nop                                                                #  149   0x32c1b  1      
.L_32d80:                                                            #        0x32c1c  0      
  movl $0x10030cf0, %edi                                             #  150   0x32c1c  5      
  nop                                                                #  151   0x32c21  1      
  nop                                                                #  152   0x32c22  1      
  callq .__cxa_guard_acquire                                         #  153   0x32c23  5      
  testl %eax, %eax                                                   #  154   0x32c28  2      
  jne .L_330c0                                                       #  155   0x32c2a  6      
  nop                                                                #  156   0x32c30  1      
  nop                                                                #  157   0x32c31  1      
.L_32dc0:                                                            #        0x32c32  0      
  movl 0xfffe0c0(%rip), %eax                                         #  158   0x32c32  6      
  jmpq .L_32b80                                                      #  159   0x32c38  5      
  nop                                                                #  160   0x32c3d  1      
  nop                                                                #  161   0x32c3e  1      
.L_32de0:                                                            #        0x32c3f  0      
  movl $0xfffffffa, %eax                                             #  162   0x32c3f  5      
  jmpq .L_32b20                                                      #  163   0x32c44  5      
  nop                                                                #  164   0x32c49  1      
  nop                                                                #  165   0x32c4a  1      
.L_32e00:                                                            #        0x32c4b  0      
  movl $0x10030ce0, %edi                                             #  166   0x32c4b  5      
  nop                                                                #  167   0x32c50  1      
  nop                                                                #  168   0x32c51  1      
  callq .__cxa_guard_acquire                                         #  169   0x32c52  5      
  testl %eax, %eax                                                   #  170   0x32c57  2      
  jne .L_32f60                                                       #  171   0x32c59  6      
  nop                                                                #  172   0x32c5f  1      
  nop                                                                #  173   0x32c60  1      
.L_32e40:                                                            #        0x32c61  0      
  movl 0xfffe081(%rip), %eax                                         #  174   0x32c61  6      
  jmpq .L_32ca0                                                      #  175   0x32c67  5      
  nop                                                                #  176   0x32c6c  1      
  nop                                                                #  177   0x32c6d  1      
.L_32e60:                                                            #        0x32c6e  0      
  cmpb $0x0, 0xfffe08b(%rip)                                         #  178   0x32c6e  7      
  je .L_32fe0                                                        #  179   0x32c75  6      
  nop                                                                #  180   0x32c7b  1      
  nop                                                                #  181   0x32c7c  1      
.L_32e80:                                                            #        0x32c7d  0      
  movl %ebx, %ebx                                                    #  182   0x32c7d  2      
  movq (%r15,%rbx,1), %rdx                                           #  183   0x32c7f  4      
  movl %eax, %eax                                                    #  184   0x32c83  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  185   0x32c85  5      
  movq %rdx, (%rsp)                                                  #  186   0x32c8a  4      
  movl %ebx, %ebx                                                    #  187   0x32c8e  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  188   0x32c90  5      
  movl %ecx, 0x8(%rsp)                                               #  189   0x32c95  4      
  nop                                                                #  190   0x32c99  1      
  jmpq .L_32ba0                                                      #  191   0x32c9a  5      
  nop                                                                #  192   0x32c9f  1      
  nop                                                                #  193   0x32ca0  1      
.L_32ec0:                                                            #        0x32ca1  0      
  movl $0x10030d00, %edi                                             #  194   0x32ca1  5      
  nop                                                                #  195   0x32ca6  1      
  nop                                                                #  196   0x32ca7  1      
  callq .__cxa_guard_acquire                                         #  197   0x32ca8  5      
  testl %eax, %eax                                                   #  198   0x32cad  2      
  je .L_32aa0                                                        #  199   0x32caf  6      
  nop                                                                #  200   0x32cb5  1      
  nop                                                                #  201   0x32cb6  1      
  callq ._ZN2pp6Module3GetEv                                         #  202   0x32cb7  5      
  movl %eax, %edi                                                    #  203   0x32cbc  2      
  movl $0x10020644, %esi                                             #  204   0x32cbe  5      
  nop                                                                #  205   0x32cc3  1      
  nop                                                                #  206   0x32cc4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  207   0x32cc5  5      
  movl $0x10030d00, %edi                                             #  208   0x32cca  5      
  movl %eax, 0xfffe033(%rip)                                         #  209   0x32ccf  6      
  nop                                                                #  210   0x32cd5  1      
  nop                                                                #  211   0x32cd6  1      
  callq .__cxa_guard_release                                         #  212   0x32cd7  5      
  jmpq .L_32aa0                                                      #  213   0x32cdc  5      
  nop                                                                #  214   0x32ce1  1      
  nop                                                                #  215   0x32ce2  1      
.L_32f60:                                                            #        0x32ce3  0      
  nop                                                                #  216   0x32ce3  1      
  nop                                                                #  217   0x32ce4  1      
  callq ._ZN2pp6Module3GetEv                                         #  218   0x32ce5  5      
  movl %eax, %edi                                                    #  219   0x32cea  2      
  movl $0x10020654, %esi                                             #  220   0x32cec  5      
  nop                                                                #  221   0x32cf1  1      
  nop                                                                #  222   0x32cf2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  223   0x32cf3  5      
  movl $0x10030ce0, %edi                                             #  224   0x32cf8  5      
  movl %eax, 0xfffdfe5(%rip)                                         #  225   0x32cfd  6      
  nop                                                                #  226   0x32d03  1      
  nop                                                                #  227   0x32d04  1      
  callq .__cxa_guard_release                                         #  228   0x32d05  5      
  jmpq .L_32e40                                                      #  229   0x32d0a  5      
  nop                                                                #  230   0x32d0f  1      
  nop                                                                #  231   0x32d10  1      
.L_32fe0:                                                            #        0x32d11  0      
  movl $0x10030d00, %edi                                             #  232   0x32d11  5      
  nop                                                                #  233   0x32d16  1      
  nop                                                                #  234   0x32d17  1      
  callq .__cxa_guard_acquire                                         #  235   0x32d18  5      
  testl %eax, %eax                                                   #  236   0x32d1d  2      
  jne .L_33040                                                       #  237   0x32d1f  6      
  nop                                                                #  238   0x32d25  1      
  nop                                                                #  239   0x32d26  1      
.L_33020:                                                            #        0x32d27  0      
  movl 0xfffdfdb(%rip), %eax                                         #  240   0x32d27  6      
  jmpq .L_32e80                                                      #  241   0x32d2d  5      
  nop                                                                #  242   0x32d32  1      
  nop                                                                #  243   0x32d33  1      
.L_33040:                                                            #        0x32d34  0      
  nop                                                                #  244   0x32d34  1      
  nop                                                                #  245   0x32d35  1      
  callq ._ZN2pp6Module3GetEv                                         #  246   0x32d36  5      
  movl %eax, %edi                                                    #  247   0x32d3b  2      
  movl $0x10020644, %esi                                             #  248   0x32d3d  5      
  nop                                                                #  249   0x32d42  1      
  nop                                                                #  250   0x32d43  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  251   0x32d44  5      
  movl $0x10030d00, %edi                                             #  252   0x32d49  5      
  movl %eax, 0xfffdfb4(%rip)                                         #  253   0x32d4e  6      
  nop                                                                #  254   0x32d54  1      
  nop                                                                #  255   0x32d55  1      
  callq .__cxa_guard_release                                         #  256   0x32d56  5      
  jmpq .L_33020                                                      #  257   0x32d5b  5      
  nop                                                                #  258   0x32d60  1      
  nop                                                                #  259   0x32d61  1      
.L_330c0:                                                            #        0x32d62  0      
  nop                                                                #  260   0x32d62  1      
  nop                                                                #  261   0x32d63  1      
  callq ._ZN2pp6Module3GetEv                                         #  262   0x32d64  5      
  movl %eax, %edi                                                    #  263   0x32d69  2      
  movl $0x10020664, %esi                                             #  264   0x32d6b  5      
  nop                                                                #  265   0x32d70  1      
  nop                                                                #  266   0x32d71  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  267   0x32d72  5      
  movl $0x10030cf0, %edi                                             #  268   0x32d77  5      
  movl %eax, 0xfffdf76(%rip)                                         #  269   0x32d7c  6      
  nop                                                                #  270   0x32d82  1      
  nop                                                                #  271   0x32d83  1      
  callq .__cxa_guard_release                                         #  272   0x32d84  5      
  jmpq .L_32dc0                                                      #  273   0x32d89  5      
  nop                                                                #  274   0x32d8e  1      
  nop                                                                #  275   0x32d8f  1      
.L_33140:                                                            #        0x32d90  0      
  movl %eax, %ebx                                                    #  276   0x32d90  2      
  movl $0x10030ce0, %edi                                             #  277   0x32d92  5      
  nop                                                                #  278   0x32d97  1      
  nop                                                                #  279   0x32d98  1      
  callq .__cxa_guard_abort                                           #  280   0x32d99  5      
  movl %ebx, %edi                                                    #  281   0x32d9e  2      
  nop                                                                #  282   0x32da0  1      
  nop                                                                #  283   0x32da1  1      
  callq ._Unwind_Resume                                              #  284   0x32da2  5      
.L_33180:                                                            #        0x32da7  0      
  movl %eax, %ebx                                                    #  285   0x32da7  2      
  movl $0x10030cf0, %edi                                             #  286   0x32da9  5      
  nop                                                                #  287   0x32dae  1      
  nop                                                                #  288   0x32daf  1      
  callq .__cxa_guard_abort                                           #  289   0x32db0  5      
  movl %ebx, %edi                                                    #  290   0x32db5  2      
  nop                                                                #  291   0x32db7  1      
  nop                                                                #  292   0x32db8  1      
  callq ._Unwind_Resume                                              #  293   0x32db9  5      
  jmpq .L_33180                                                      #  294   0x32dbe  5      
  nop                                                                #  295   0x32dc3  1      
  nop                                                                #  296   0x32dc4  1      
  jmpq .L_33140                                                      #  297   0x32dc5  5      
  nop                                                                #  298   0x32dca  1      
  nop                                                                #  299   0x32dcb  1      
.L_33200:                                                            #        0x32dcc  0      
  movl %eax, %ebx                                                    #  300   0x32dcc  2      
  movl $0x10030d00, %edi                                             #  301   0x32dce  5      
  nop                                                                #  302   0x32dd3  1      
  nop                                                                #  303   0x32dd4  1      
  callq .__cxa_guard_abort                                           #  304   0x32dd5  5      
  movl %ebx, %edi                                                    #  305   0x32dda  2      
  nop                                                                #  306   0x32ddc  1      
  nop                                                                #  307   0x32ddd  1      
  callq ._Unwind_Resume                                              #  308   0x32dde  5      
  jmpq .L_33200                                                      #  309   0x32de3  5      
  nop                                                                #  310   0x32de8  1      
  nop                                                                #  311   0x32de9  1      
                                                                                              
.size _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE

