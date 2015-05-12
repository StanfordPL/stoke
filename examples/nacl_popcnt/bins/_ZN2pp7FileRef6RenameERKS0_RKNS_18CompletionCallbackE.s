  .text
  .globl _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, @function

#! file-offset 0x329a0
#! rip-offset  0x329a0
#! capacity    2112 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE:              #        0x329a0  0      
  movq %rbx, -0x18(%rsp)                                             #  1     0x329a0  5      
  movq %r12, -0x10(%rsp)                                             #  2     0x329a5  5      
  movl %edx, %ebx                                                    #  3     0x329aa  2      
  movq %r13, -0x8(%rsp)                                              #  4     0x329ac  5      
  subl $0x48, %esp                                                   #  5     0x329b1  3      
  addq %r15, %rsp                                                    #  6     0x329b4  3      
  cmpb $0x0, 0xfffe322(%rip)                                         #  7     0x329b7  7      
  xchgw %ax, %ax                                                     #  8     0x329be  3      
  movl %edi, %r13d                                                   #  9     0x329c1  3      
  movl %esi, %r12d                                                   #  10    0x329c4  3      
  je .L_32c60                                                        #  11    0x329c7  6      
  nop                                                                #  12    0x329cd  1      
  nop                                                                #  13    0x329ce  1      
.L_329e0:                                                            #        0x329cf  0      
  movl 0xfffe313(%rip), %eax                                         #  14    0x329cf  6      
  testq %rax, %rax                                                   #  15    0x329d5  3      
  jne .L_32c00                                                       #  16    0x329d8  6      
  cmpb $0x0, 0xfffe30b(%rip)                                         #  17    0x329de  7      
  je .L_32b60                                                        #  18    0x329e5  6      
  nop                                                                #  19    0x329eb  1      
.L_32a00:                                                            #        0x329ec  0      
  movl 0xfffe306(%rip), %eax                                         #  20    0x329ec  6      
  testq %rax, %rax                                                   #  21    0x329f2  3      
  jne .L_32ae0                                                       #  22    0x329f5  6      
  cmpb $0x0, 0xfffe2fe(%rip)                                         #  23    0x329fb  7      
  je .L_32e40                                                        #  24    0x32a02  6      
  nop                                                                #  25    0x32a08  1      
.L_32a20:                                                            #        0x32a09  0      
  movl 0xfffe2f9(%rip), %eax                                         #  26    0x32a09  6      
  testq %rax, %rax                                                   #  27    0x32a0f  3      
  jne .L_32de0                                                       #  28    0x32a12  6      
  movl %ebx, %ebx                                                    #  29    0x32a18  2      
  movl (%r15,%rbx,1), %r9d                                           #  30    0x32a1a  4      
  testl %r9d, %r9d                                                   #  31    0x32a1e  3      
  je .L_32d60                                                        #  32    0x32a21  6      
  xchgw %ax, %ax                                                     #  33    0x32a27  3      
  movl %ebx, %ebx                                                    #  34    0x32a2a  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  35    0x32a2c  6      
  jne .L_32d60                                                       #  36    0x32a32  6      
  nop                                                                #  37    0x32a38  1      
  callq ._ZN2pp6Module3GetEv                                         #  38    0x32a39  5      
  movl %eax, %eax                                                    #  39    0x32a3e  2      
  movl $0xfffffffa, %ecx                                             #  40    0x32a40  5      
  movl %ebx, %edx                                                    #  41    0x32a45  2      
  movl %eax, %eax                                                    #  42    0x32a47  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  43    0x32a49  5      
  xorl %esi, %esi                                                    #  44    0x32a4e  2      
  nop                                                                #  45    0x32a50  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  46    0x32a51  5      
  movl $0xffffffff, %eax                                             #  47    0x32a56  5      
  nop                                                                #  48    0x32a5b  1      
  nop                                                                #  49    0x32a5c  1      
.L_32aa0:                                                            #        0x32a5d  0      
  movq 0x30(%rsp), %rbx                                              #  50    0x32a5d  5      
  movq 0x38(%rsp), %r12                                              #  51    0x32a62  5      
  movq 0x40(%rsp), %r13                                              #  52    0x32a67  5      
  addl $0x48, %esp                                                   #  53    0x32a6c  3      
  addq %r15, %rsp                                                    #  54    0x32a6f  3      
  popq %r11                                                          #  55    0x32a72  3      
  nop                                                                #  56    0x32a75  1      
  andl $0xffffffe0, %r11d                                            #  57    0x32a76  7      
  addq %r15, %r11                                                    #  58    0x32a7d  3      
  jmpq %r11                                                          #  59    0x32a80  3      
  nop                                                                #  60    0x32a83  1      
  nop                                                                #  61    0x32a84  1      
.L_32ae0:                                                            #        0x32a85  0      
  cmpb $0x0, 0xfffe264(%rip)                                         #  62    0x32a85  7      
  je .L_32d00                                                        #  63    0x32a8c  6      
  nop                                                                #  64    0x32a92  1      
  nop                                                                #  65    0x32a93  1      
.L_32b00:                                                            #        0x32a94  0      
  movl %ebx, %ebx                                                    #  66    0x32a94  2      
  movq (%r15,%rbx,1), %rdx                                           #  67    0x32a96  4      
  movl %eax, %eax                                                    #  68    0x32a9a  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  69    0x32a9c  5      
  movq %rdx, 0x10(%rsp)                                              #  70    0x32aa1  5      
  movl %ebx, %ebx                                                    #  71    0x32aa6  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  72    0x32aa8  5      
  movl %ecx, 0x18(%rsp)                                              #  73    0x32aad  4      
  nop                                                                #  74    0x32ab1  1      
.L_32b20:                                                            #        0x32ab2  0      
  movl %r12d, %r12d                                                  #  75    0x32ab2  3      
  movl 0x4(%r15,%r12,1), %esi                                        #  76    0x32ab5  5      
  movl %r13d, %r13d                                                  #  77    0x32aba  3      
  movl 0x4(%r15,%r13,1), %edi                                        #  78    0x32abd  5      
  movq 0x30(%rsp), %rbx                                              #  79    0x32ac2  5      
  movq 0x38(%rsp), %r12                                              #  80    0x32ac7  5      
  movq 0x40(%rsp), %r13                                              #  81    0x32acc  5      
  nop                                                                #  82    0x32ad1  1      
  addl $0x48, %esp                                                   #  83    0x32ad2  3      
  addq %r15, %rsp                                                    #  84    0x32ad5  3      
  andl $0xffffffe0, %eax                                             #  85    0x32ad8  5      
  addq %r15, %rax                                                    #  86    0x32add  3      
  jmpq %rax                                                          #  87    0x32ae0  2      
  nop                                                                #  88    0x32ae2  1      
  nop                                                                #  89    0x32ae3  1      
.L_32b60:                                                            #        0x32ae4  0      
  movl $0x10030cf0, %edi                                             #  90    0x32ae4  5      
  nop                                                                #  91    0x32ae9  1      
  nop                                                                #  92    0x32aea  1      
  callq .__cxa_guard_acquire                                         #  93    0x32aeb  5      
  testl %eax, %eax                                                   #  94    0x32af0  2      
  je .L_32a00                                                        #  95    0x32af2  6      
  nop                                                                #  96    0x32af8  1      
  nop                                                                #  97    0x32af9  1      
  callq ._ZN2pp6Module3GetEv                                         #  98    0x32afa  5      
  movl %eax, %edi                                                    #  99    0x32aff  2      
  movl $0x10020664, %esi                                             #  100   0x32b01  5      
  nop                                                                #  101   0x32b06  1      
  nop                                                                #  102   0x32b07  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  103   0x32b08  5      
  movl $0x10030cf0, %edi                                             #  104   0x32b0d  5      
  movl %eax, 0xfffe1e0(%rip)                                         #  105   0x32b12  6      
  nop                                                                #  106   0x32b18  1      
  nop                                                                #  107   0x32b19  1      
  callq .__cxa_guard_release                                         #  108   0x32b1a  5      
  jmpq .L_32a00                                                      #  109   0x32b1f  5      
  nop                                                                #  110   0x32b24  1      
  nop                                                                #  111   0x32b25  1      
.L_32c00:                                                            #        0x32b26  0      
  cmpb $0x0, 0xfffe1b3(%rip)                                         #  112   0x32b26  7      
  je .L_32d80                                                        #  113   0x32b2d  6      
  nop                                                                #  114   0x32b33  1      
  nop                                                                #  115   0x32b34  1      
.L_32c20:                                                            #        0x32b35  0      
  movl %ebx, %ebx                                                    #  116   0x32b35  2      
  movq (%r15,%rbx,1), %rdx                                           #  117   0x32b37  4      
  movl %eax, %eax                                                    #  118   0x32b3b  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  119   0x32b3d  5      
  movq %rdx, 0x20(%rsp)                                              #  120   0x32b42  5      
  movl %ebx, %ebx                                                    #  121   0x32b47  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  122   0x32b49  5      
  movl %ecx, 0x28(%rsp)                                              #  123   0x32b4e  4      
  nop                                                                #  124   0x32b52  1      
  jmpq .L_32b20                                                      #  125   0x32b53  5      
  nop                                                                #  126   0x32b58  1      
  nop                                                                #  127   0x32b59  1      
.L_32c60:                                                            #        0x32b5a  0      
  movl $0x10030ce0, %edi                                             #  128   0x32b5a  5      
  nop                                                                #  129   0x32b5f  1      
  nop                                                                #  130   0x32b60  1      
  callq .__cxa_guard_acquire                                         #  131   0x32b61  5      
  testl %eax, %eax                                                   #  132   0x32b66  2      
  je .L_329e0                                                        #  133   0x32b68  6      
  nop                                                                #  134   0x32b6e  1      
  nop                                                                #  135   0x32b6f  1      
  callq ._ZN2pp6Module3GetEv                                         #  136   0x32b70  5      
  movl %eax, %edi                                                    #  137   0x32b75  2      
  movl $0x10020654, %esi                                             #  138   0x32b77  5      
  nop                                                                #  139   0x32b7c  1      
  nop                                                                #  140   0x32b7d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  141   0x32b7e  5      
  movl $0x10030ce0, %edi                                             #  142   0x32b83  5      
  movl %eax, 0xfffe15a(%rip)                                         #  143   0x32b88  6      
  nop                                                                #  144   0x32b8e  1      
  nop                                                                #  145   0x32b8f  1      
  callq .__cxa_guard_release                                         #  146   0x32b90  5      
  jmpq .L_329e0                                                      #  147   0x32b95  5      
  nop                                                                #  148   0x32b9a  1      
  nop                                                                #  149   0x32b9b  1      
.L_32d00:                                                            #        0x32b9c  0      
  movl $0x10030cf0, %edi                                             #  150   0x32b9c  5      
  nop                                                                #  151   0x32ba1  1      
  nop                                                                #  152   0x32ba2  1      
  callq .__cxa_guard_acquire                                         #  153   0x32ba3  5      
  testl %eax, %eax                                                   #  154   0x32ba8  2      
  jne .L_33040                                                       #  155   0x32baa  6      
  nop                                                                #  156   0x32bb0  1      
  nop                                                                #  157   0x32bb1  1      
.L_32d40:                                                            #        0x32bb2  0      
  movl 0xfffe140(%rip), %eax                                         #  158   0x32bb2  6      
  jmpq .L_32b00                                                      #  159   0x32bb8  5      
  nop                                                                #  160   0x32bbd  1      
  nop                                                                #  161   0x32bbe  1      
.L_32d60:                                                            #        0x32bbf  0      
  movl $0xfffffffa, %eax                                             #  162   0x32bbf  5      
  jmpq .L_32aa0                                                      #  163   0x32bc4  5      
  nop                                                                #  164   0x32bc9  1      
  nop                                                                #  165   0x32bca  1      
.L_32d80:                                                            #        0x32bcb  0      
  movl $0x10030ce0, %edi                                             #  166   0x32bcb  5      
  nop                                                                #  167   0x32bd0  1      
  nop                                                                #  168   0x32bd1  1      
  callq .__cxa_guard_acquire                                         #  169   0x32bd2  5      
  testl %eax, %eax                                                   #  170   0x32bd7  2      
  jne .L_32ee0                                                       #  171   0x32bd9  6      
  nop                                                                #  172   0x32bdf  1      
  nop                                                                #  173   0x32be0  1      
.L_32dc0:                                                            #        0x32be1  0      
  movl 0xfffe101(%rip), %eax                                         #  174   0x32be1  6      
  jmpq .L_32c20                                                      #  175   0x32be7  5      
  nop                                                                #  176   0x32bec  1      
  nop                                                                #  177   0x32bed  1      
.L_32de0:                                                            #        0x32bee  0      
  cmpb $0x0, 0xfffe10b(%rip)                                         #  178   0x32bee  7      
  je .L_32f60                                                        #  179   0x32bf5  6      
  nop                                                                #  180   0x32bfb  1      
  nop                                                                #  181   0x32bfc  1      
.L_32e00:                                                            #        0x32bfd  0      
  movl %ebx, %ebx                                                    #  182   0x32bfd  2      
  movq (%r15,%rbx,1), %rdx                                           #  183   0x32bff  4      
  movl %eax, %eax                                                    #  184   0x32c03  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  185   0x32c05  5      
  movq %rdx, (%rsp)                                                  #  186   0x32c0a  4      
  movl %ebx, %ebx                                                    #  187   0x32c0e  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  188   0x32c10  5      
  movl %ecx, 0x8(%rsp)                                               #  189   0x32c15  4      
  nop                                                                #  190   0x32c19  1      
  jmpq .L_32b20                                                      #  191   0x32c1a  5      
  nop                                                                #  192   0x32c1f  1      
  nop                                                                #  193   0x32c20  1      
.L_32e40:                                                            #        0x32c21  0      
  movl $0x10030d00, %edi                                             #  194   0x32c21  5      
  nop                                                                #  195   0x32c26  1      
  nop                                                                #  196   0x32c27  1      
  callq .__cxa_guard_acquire                                         #  197   0x32c28  5      
  testl %eax, %eax                                                   #  198   0x32c2d  2      
  je .L_32a20                                                        #  199   0x32c2f  6      
  nop                                                                #  200   0x32c35  1      
  nop                                                                #  201   0x32c36  1      
  callq ._ZN2pp6Module3GetEv                                         #  202   0x32c37  5      
  movl %eax, %edi                                                    #  203   0x32c3c  2      
  movl $0x10020644, %esi                                             #  204   0x32c3e  5      
  nop                                                                #  205   0x32c43  1      
  nop                                                                #  206   0x32c44  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  207   0x32c45  5      
  movl $0x10030d00, %edi                                             #  208   0x32c4a  5      
  movl %eax, 0xfffe0b3(%rip)                                         #  209   0x32c4f  6      
  nop                                                                #  210   0x32c55  1      
  nop                                                                #  211   0x32c56  1      
  callq .__cxa_guard_release                                         #  212   0x32c57  5      
  jmpq .L_32a20                                                      #  213   0x32c5c  5      
  nop                                                                #  214   0x32c61  1      
  nop                                                                #  215   0x32c62  1      
.L_32ee0:                                                            #        0x32c63  0      
  nop                                                                #  216   0x32c63  1      
  nop                                                                #  217   0x32c64  1      
  callq ._ZN2pp6Module3GetEv                                         #  218   0x32c65  5      
  movl %eax, %edi                                                    #  219   0x32c6a  2      
  movl $0x10020654, %esi                                             #  220   0x32c6c  5      
  nop                                                                #  221   0x32c71  1      
  nop                                                                #  222   0x32c72  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  223   0x32c73  5      
  movl $0x10030ce0, %edi                                             #  224   0x32c78  5      
  movl %eax, 0xfffe065(%rip)                                         #  225   0x32c7d  6      
  nop                                                                #  226   0x32c83  1      
  nop                                                                #  227   0x32c84  1      
  callq .__cxa_guard_release                                         #  228   0x32c85  5      
  jmpq .L_32dc0                                                      #  229   0x32c8a  5      
  nop                                                                #  230   0x32c8f  1      
  nop                                                                #  231   0x32c90  1      
.L_32f60:                                                            #        0x32c91  0      
  movl $0x10030d00, %edi                                             #  232   0x32c91  5      
  nop                                                                #  233   0x32c96  1      
  nop                                                                #  234   0x32c97  1      
  callq .__cxa_guard_acquire                                         #  235   0x32c98  5      
  testl %eax, %eax                                                   #  236   0x32c9d  2      
  jne .L_32fc0                                                       #  237   0x32c9f  6      
  nop                                                                #  238   0x32ca5  1      
  nop                                                                #  239   0x32ca6  1      
.L_32fa0:                                                            #        0x32ca7  0      
  movl 0xfffe05b(%rip), %eax                                         #  240   0x32ca7  6      
  jmpq .L_32e00                                                      #  241   0x32cad  5      
  nop                                                                #  242   0x32cb2  1      
  nop                                                                #  243   0x32cb3  1      
.L_32fc0:                                                            #        0x32cb4  0      
  nop                                                                #  244   0x32cb4  1      
  nop                                                                #  245   0x32cb5  1      
  callq ._ZN2pp6Module3GetEv                                         #  246   0x32cb6  5      
  movl %eax, %edi                                                    #  247   0x32cbb  2      
  movl $0x10020644, %esi                                             #  248   0x32cbd  5      
  nop                                                                #  249   0x32cc2  1      
  nop                                                                #  250   0x32cc3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  251   0x32cc4  5      
  movl $0x10030d00, %edi                                             #  252   0x32cc9  5      
  movl %eax, 0xfffe034(%rip)                                         #  253   0x32cce  6      
  nop                                                                #  254   0x32cd4  1      
  nop                                                                #  255   0x32cd5  1      
  callq .__cxa_guard_release                                         #  256   0x32cd6  5      
  jmpq .L_32fa0                                                      #  257   0x32cdb  5      
  nop                                                                #  258   0x32ce0  1      
  nop                                                                #  259   0x32ce1  1      
.L_33040:                                                            #        0x32ce2  0      
  nop                                                                #  260   0x32ce2  1      
  nop                                                                #  261   0x32ce3  1      
  callq ._ZN2pp6Module3GetEv                                         #  262   0x32ce4  5      
  movl %eax, %edi                                                    #  263   0x32ce9  2      
  movl $0x10020664, %esi                                             #  264   0x32ceb  5      
  nop                                                                #  265   0x32cf0  1      
  nop                                                                #  266   0x32cf1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  267   0x32cf2  5      
  movl $0x10030cf0, %edi                                             #  268   0x32cf7  5      
  movl %eax, 0xfffdff6(%rip)                                         #  269   0x32cfc  6      
  nop                                                                #  270   0x32d02  1      
  nop                                                                #  271   0x32d03  1      
  callq .__cxa_guard_release                                         #  272   0x32d04  5      
  jmpq .L_32d40                                                      #  273   0x32d09  5      
  nop                                                                #  274   0x32d0e  1      
  nop                                                                #  275   0x32d0f  1      
.L_330c0:                                                            #        0x32d10  0      
  movl %eax, %ebx                                                    #  276   0x32d10  2      
  movl $0x10030ce0, %edi                                             #  277   0x32d12  5      
  nop                                                                #  278   0x32d17  1      
  nop                                                                #  279   0x32d18  1      
  callq .__cxa_guard_abort                                           #  280   0x32d19  5      
  movl %ebx, %edi                                                    #  281   0x32d1e  2      
  nop                                                                #  282   0x32d20  1      
  nop                                                                #  283   0x32d21  1      
  callq ._Unwind_Resume                                              #  284   0x32d22  5      
.L_33100:                                                            #        0x32d27  0      
  movl %eax, %ebx                                                    #  285   0x32d27  2      
  movl $0x10030cf0, %edi                                             #  286   0x32d29  5      
  nop                                                                #  287   0x32d2e  1      
  nop                                                                #  288   0x32d2f  1      
  callq .__cxa_guard_abort                                           #  289   0x32d30  5      
  movl %ebx, %edi                                                    #  290   0x32d35  2      
  nop                                                                #  291   0x32d37  1      
  nop                                                                #  292   0x32d38  1      
  callq ._Unwind_Resume                                              #  293   0x32d39  5      
  jmpq .L_33100                                                      #  294   0x32d3e  5      
  nop                                                                #  295   0x32d43  1      
  nop                                                                #  296   0x32d44  1      
  jmpq .L_330c0                                                      #  297   0x32d45  5      
  nop                                                                #  298   0x32d4a  1      
  nop                                                                #  299   0x32d4b  1      
.L_33180:                                                            #        0x32d4c  0      
  movl %eax, %ebx                                                    #  300   0x32d4c  2      
  movl $0x10030d00, %edi                                             #  301   0x32d4e  5      
  nop                                                                #  302   0x32d53  1      
  nop                                                                #  303   0x32d54  1      
  callq .__cxa_guard_abort                                           #  304   0x32d55  5      
  movl %ebx, %edi                                                    #  305   0x32d5a  2      
  nop                                                                #  306   0x32d5c  1      
  nop                                                                #  307   0x32d5d  1      
  callq ._Unwind_Resume                                              #  308   0x32d5e  5      
  jmpq .L_33180                                                      #  309   0x32d63  5      
  nop                                                                #  310   0x32d68  1      
  nop                                                                #  311   0x32d69  1      
                                                                                              
.size _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE

