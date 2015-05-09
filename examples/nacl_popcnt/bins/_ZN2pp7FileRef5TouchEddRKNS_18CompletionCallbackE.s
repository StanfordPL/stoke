  .text
  .globl _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, @function

#! file-offset 0x33980
#! rip-offset  0x33980
#! capacity    2048 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE:                  #        0x33980  0      
  pushq %r12                                                         #  1     0x33980  3      
  movl %edi, %r12d                                                   #  2     0x33983  3      
  pushq %rbx                                                         #  3     0x33986  2      
  movl %esi, %ebx                                                    #  4     0x33988  2      
  subl $0x48, %esp                                                   #  5     0x3398a  3      
  addq %r15, %rsp                                                    #  6     0x3398d  3      
  cmpb $0x0, 0xfffd349(%rip)                                         #  7     0x33990  7      
  movsd %xmm0, (%rsp)                                                #  8     0x33997  5      
  movsd %xmm1, 0x8(%rsp)                                             #  9     0x3399c  6      
  je .L_33c00                                                        #  10    0x339a2  6      
  nop                                                                #  11    0x339a8  1      
  nop                                                                #  12    0x339a9  1      
.L_339c0:                                                            #        0x339aa  0      
  movl 0xfffd338(%rip), %eax                                         #  13    0x339aa  6      
  testq %rax, %rax                                                   #  14    0x339b0  3      
  jne .L_33ba0                                                       #  15    0x339b3  6      
  cmpb $0x0, 0xfffd330(%rip)                                         #  16    0x339b9  7      
  je .L_33b00                                                        #  17    0x339c0  6      
  nop                                                                #  18    0x339c6  1      
.L_339e0:                                                            #        0x339c7  0      
  movl 0xfffd32b(%rip), %eax                                         #  19    0x339c7  6      
  testq %rax, %rax                                                   #  20    0x339cd  3      
  jne .L_33a80                                                       #  21    0x339d0  6      
  cmpb $0x0, 0xfffd323(%rip)                                         #  22    0x339d6  7      
  je .L_33de0                                                        #  23    0x339dd  6      
  nop                                                                #  24    0x339e3  1      
.L_33a00:                                                            #        0x339e4  0      
  movl 0xfffd31e(%rip), %eax                                         #  25    0x339e4  6      
  testq %rax, %rax                                                   #  26    0x339ea  3      
  jne .L_33d80                                                       #  27    0x339ed  6      
  movl %ebx, %ebx                                                    #  28    0x339f3  2      
  movl (%r15,%rbx,1), %r11d                                          #  29    0x339f5  4      
  testl %r11d, %r11d                                                 #  30    0x339f9  3      
  je .L_33d00                                                        #  31    0x339fc  6      
  xchgw %ax, %ax                                                     #  32    0x33a02  3      
  movl %ebx, %ebx                                                    #  33    0x33a05  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  34    0x33a07  6      
  jne .L_33d00                                                       #  35    0x33a0d  6      
  nop                                                                #  36    0x33a13  1      
  callq ._ZN2pp6Module3GetEv                                         #  37    0x33a14  5      
  movl %eax, %eax                                                    #  38    0x33a19  2      
  movl %ebx, %edx                                                    #  39    0x33a1b  2      
  movl $0xfffffffa, %ecx                                             #  40    0x33a1d  5      
  movl %eax, %eax                                                    #  41    0x33a22  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  42    0x33a24  5      
  xorl %esi, %esi                                                    #  43    0x33a29  2      
  nop                                                                #  44    0x33a2b  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  45    0x33a2c  5      
  addl $0x48, %esp                                                   #  46    0x33a31  3      
  addq %r15, %rsp                                                    #  47    0x33a34  3      
  movl $0xffffffff, %eax                                             #  48    0x33a37  5      
  popq %rbx                                                          #  49    0x33a3c  2      
  popq %r12                                                          #  50    0x33a3e  3      
  popq %r11                                                          #  51    0x33a41  3      
  andl $0xffffffe0, %r11d                                            #  52    0x33a44  7      
  addq %r15, %r11                                                    #  53    0x33a4b  3      
  jmpq %r11                                                          #  54    0x33a4e  3      
  nop                                                                #  55    0x33a51  1      
.L_33a80:                                                            #        0x33a52  0      
  cmpb $0x0, 0xfffd297(%rip)                                         #  56    0x33a52  7      
  je .L_33ca0                                                        #  57    0x33a59  6      
  nop                                                                #  58    0x33a5f  1      
  nop                                                                #  59    0x33a60  1      
.L_33aa0:                                                            #        0x33a61  0      
  movl %ebx, %ebx                                                    #  60    0x33a61  2      
  movq (%r15,%rbx,1), %rsi                                           #  61    0x33a63  4      
  movl %eax, %eax                                                    #  62    0x33a67  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  63    0x33a69  5      
  movq %rsi, 0x20(%rsp)                                              #  64    0x33a6e  5      
  movl %ebx, %ebx                                                    #  65    0x33a73  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  66    0x33a75  5      
  movl %edx, 0x28(%rsp)                                              #  67    0x33a7a  4      
  nop                                                                #  68    0x33a7e  1      
.L_33ac0:                                                            #        0x33a7f  0      
  movl %r12d, %r12d                                                  #  69    0x33a7f  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  70    0x33a82  5      
  movsd 0x8(%rsp), %xmm1                                             #  71    0x33a87  6      
  movsd (%rsp), %xmm0                                                #  72    0x33a8d  5      
  addl $0x48, %esp                                                   #  73    0x33a92  3      
  addq %r15, %rsp                                                    #  74    0x33a95  3      
  popq %rbx                                                          #  75    0x33a98  2      
  popq %r12                                                          #  76    0x33a9a  3      
  nop                                                                #  77    0x33a9d  1      
  andl $0xffffffe0, %eax                                             #  78    0x33a9e  5      
  addq %r15, %rax                                                    #  79    0x33aa3  3      
  jmpq %rax                                                          #  80    0x33aa6  2      
  nop                                                                #  81    0x33aa8  1      
  nop                                                                #  82    0x33aa9  1      
.L_33b00:                                                            #        0x33aaa  0      
  movl $0x10030cf0, %edi                                             #  83    0x33aaa  5      
  nop                                                                #  84    0x33aaf  1      
  nop                                                                #  85    0x33ab0  1      
  callq .__cxa_guard_acquire                                         #  86    0x33ab1  5      
  testl %eax, %eax                                                   #  87    0x33ab6  2      
  je .L_339e0                                                        #  88    0x33ab8  6      
  nop                                                                #  89    0x33abe  1      
  nop                                                                #  90    0x33abf  1      
  callq ._ZN2pp6Module3GetEv                                         #  91    0x33ac0  5      
  movl %eax, %edi                                                    #  92    0x33ac5  2      
  movl $0x10020664, %esi                                             #  93    0x33ac7  5      
  nop                                                                #  94    0x33acc  1      
  nop                                                                #  95    0x33acd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  96    0x33ace  5      
  movl $0x10030cf0, %edi                                             #  97    0x33ad3  5      
  movl %eax, 0xfffd21a(%rip)                                         #  98    0x33ad8  6      
  nop                                                                #  99    0x33ade  1      
  nop                                                                #  100   0x33adf  1      
  callq .__cxa_guard_release                                         #  101   0x33ae0  5      
  jmpq .L_339e0                                                      #  102   0x33ae5  5      
  nop                                                                #  103   0x33aea  1      
  nop                                                                #  104   0x33aeb  1      
.L_33ba0:                                                            #        0x33aec  0      
  cmpb $0x0, 0xfffd1ed(%rip)                                         #  105   0x33aec  7      
  je .L_33d20                                                        #  106   0x33af3  6      
  nop                                                                #  107   0x33af9  1      
  nop                                                                #  108   0x33afa  1      
.L_33bc0:                                                            #        0x33afb  0      
  movl %ebx, %ebx                                                    #  109   0x33afb  2      
  movq (%r15,%rbx,1), %rsi                                           #  110   0x33afd  4      
  movl %eax, %eax                                                    #  111   0x33b01  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  112   0x33b03  5      
  movq %rsi, 0x30(%rsp)                                              #  113   0x33b08  5      
  movl %ebx, %ebx                                                    #  114   0x33b0d  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  115   0x33b0f  5      
  movl %edx, 0x38(%rsp)                                              #  116   0x33b14  4      
  nop                                                                #  117   0x33b18  1      
  jmpq .L_33ac0                                                      #  118   0x33b19  5      
  nop                                                                #  119   0x33b1e  1      
  nop                                                                #  120   0x33b1f  1      
.L_33c00:                                                            #        0x33b20  0      
  movl $0x10030ce0, %edi                                             #  121   0x33b20  5      
  nop                                                                #  122   0x33b25  1      
  nop                                                                #  123   0x33b26  1      
  callq .__cxa_guard_acquire                                         #  124   0x33b27  5      
  testl %eax, %eax                                                   #  125   0x33b2c  2      
  je .L_339c0                                                        #  126   0x33b2e  6      
  nop                                                                #  127   0x33b34  1      
  nop                                                                #  128   0x33b35  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33b36  5      
  movl %eax, %edi                                                    #  130   0x33b3b  2      
  movl $0x10020654, %esi                                             #  131   0x33b3d  5      
  nop                                                                #  132   0x33b42  1      
  nop                                                                #  133   0x33b43  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x33b44  5      
  movl $0x10030ce0, %edi                                             #  135   0x33b49  5      
  movl %eax, 0xfffd194(%rip)                                         #  136   0x33b4e  6      
  nop                                                                #  137   0x33b54  1      
  nop                                                                #  138   0x33b55  1      
  callq .__cxa_guard_release                                         #  139   0x33b56  5      
  jmpq .L_339c0                                                      #  140   0x33b5b  5      
  nop                                                                #  141   0x33b60  1      
  nop                                                                #  142   0x33b61  1      
.L_33ca0:                                                            #        0x33b62  0      
  movl $0x10030cf0, %edi                                             #  143   0x33b62  5      
  nop                                                                #  144   0x33b67  1      
  nop                                                                #  145   0x33b68  1      
  callq .__cxa_guard_acquire                                         #  146   0x33b69  5      
  testl %eax, %eax                                                   #  147   0x33b6e  2      
  jne .L_33fe0                                                       #  148   0x33b70  6      
  nop                                                                #  149   0x33b76  1      
  nop                                                                #  150   0x33b77  1      
.L_33ce0:                                                            #        0x33b78  0      
  movl 0xfffd17a(%rip), %eax                                         #  151   0x33b78  6      
  jmpq .L_33aa0                                                      #  152   0x33b7e  5      
  nop                                                                #  153   0x33b83  1      
  nop                                                                #  154   0x33b84  1      
.L_33d00:                                                            #        0x33b85  0      
  addl $0x48, %esp                                                   #  155   0x33b85  3      
  addq %r15, %rsp                                                    #  156   0x33b88  3      
  movl $0xfffffffa, %eax                                             #  157   0x33b8b  5      
  popq %rbx                                                          #  158   0x33b90  2      
  popq %r12                                                          #  159   0x33b92  3      
  popq %r11                                                          #  160   0x33b95  3      
  andl $0xffffffe0, %r11d                                            #  161   0x33b98  7      
  addq %r15, %r11                                                    #  162   0x33b9f  3      
  jmpq %r11                                                          #  163   0x33ba2  3      
  nop                                                                #  164   0x33ba5  1      
.L_33d20:                                                            #        0x33ba6  0      
  movl $0x10030ce0, %edi                                             #  165   0x33ba6  5      
  nop                                                                #  166   0x33bab  1      
  nop                                                                #  167   0x33bac  1      
  callq .__cxa_guard_acquire                                         #  168   0x33bad  5      
  testl %eax, %eax                                                   #  169   0x33bb2  2      
  jne .L_33e80                                                       #  170   0x33bb4  6      
  nop                                                                #  171   0x33bba  1      
  nop                                                                #  172   0x33bbb  1      
.L_33d60:                                                            #        0x33bbc  0      
  movl 0xfffd126(%rip), %eax                                         #  173   0x33bbc  6      
  jmpq .L_33bc0                                                      #  174   0x33bc2  5      
  nop                                                                #  175   0x33bc7  1      
  nop                                                                #  176   0x33bc8  1      
.L_33d80:                                                            #        0x33bc9  0      
  cmpb $0x0, 0xfffd130(%rip)                                         #  177   0x33bc9  7      
  je .L_33f00                                                        #  178   0x33bd0  6      
  nop                                                                #  179   0x33bd6  1      
  nop                                                                #  180   0x33bd7  1      
.L_33da0:                                                            #        0x33bd8  0      
  movl %ebx, %ebx                                                    #  181   0x33bd8  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x33bda  4      
  movl %eax, %eax                                                    #  183   0x33bde  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  184   0x33be0  5      
  movq %rsi, 0x10(%rsp)                                              #  185   0x33be5  5      
  movl %ebx, %ebx                                                    #  186   0x33bea  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x33bec  5      
  movl %edx, 0x18(%rsp)                                              #  188   0x33bf1  4      
  nop                                                                #  189   0x33bf5  1      
  jmpq .L_33ac0                                                      #  190   0x33bf6  5      
  nop                                                                #  191   0x33bfb  1      
  nop                                                                #  192   0x33bfc  1      
.L_33de0:                                                            #        0x33bfd  0      
  movl $0x10030d00, %edi                                             #  193   0x33bfd  5      
  nop                                                                #  194   0x33c02  1      
  nop                                                                #  195   0x33c03  1      
  callq .__cxa_guard_acquire                                         #  196   0x33c04  5      
  testl %eax, %eax                                                   #  197   0x33c09  2      
  je .L_33a00                                                        #  198   0x33c0b  6      
  nop                                                                #  199   0x33c11  1      
  nop                                                                #  200   0x33c12  1      
  callq ._ZN2pp6Module3GetEv                                         #  201   0x33c13  5      
  movl %eax, %edi                                                    #  202   0x33c18  2      
  movl $0x10020644, %esi                                             #  203   0x33c1a  5      
  nop                                                                #  204   0x33c1f  1      
  nop                                                                #  205   0x33c20  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  206   0x33c21  5      
  movl $0x10030d00, %edi                                             #  207   0x33c26  5      
  movl %eax, 0xfffd0d7(%rip)                                         #  208   0x33c2b  6      
  nop                                                                #  209   0x33c31  1      
  nop                                                                #  210   0x33c32  1      
  callq .__cxa_guard_release                                         #  211   0x33c33  5      
  jmpq .L_33a00                                                      #  212   0x33c38  5      
  nop                                                                #  213   0x33c3d  1      
  nop                                                                #  214   0x33c3e  1      
.L_33e80:                                                            #        0x33c3f  0      
  nop                                                                #  215   0x33c3f  1      
  nop                                                                #  216   0x33c40  1      
  callq ._ZN2pp6Module3GetEv                                         #  217   0x33c41  5      
  movl %eax, %edi                                                    #  218   0x33c46  2      
  movl $0x10020654, %esi                                             #  219   0x33c48  5      
  nop                                                                #  220   0x33c4d  1      
  nop                                                                #  221   0x33c4e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  222   0x33c4f  5      
  movl $0x10030ce0, %edi                                             #  223   0x33c54  5      
  movl %eax, 0xfffd089(%rip)                                         #  224   0x33c59  6      
  nop                                                                #  225   0x33c5f  1      
  nop                                                                #  226   0x33c60  1      
  callq .__cxa_guard_release                                         #  227   0x33c61  5      
  jmpq .L_33d60                                                      #  228   0x33c66  5      
  nop                                                                #  229   0x33c6b  1      
  nop                                                                #  230   0x33c6c  1      
.L_33f00:                                                            #        0x33c6d  0      
  movl $0x10030d00, %edi                                             #  231   0x33c6d  5      
  nop                                                                #  232   0x33c72  1      
  nop                                                                #  233   0x33c73  1      
  callq .__cxa_guard_acquire                                         #  234   0x33c74  5      
  testl %eax, %eax                                                   #  235   0x33c79  2      
  jne .L_33f60                                                       #  236   0x33c7b  6      
  nop                                                                #  237   0x33c81  1      
  nop                                                                #  238   0x33c82  1      
.L_33f40:                                                            #        0x33c83  0      
  movl 0xfffd07f(%rip), %eax                                         #  239   0x33c83  6      
  jmpq .L_33da0                                                      #  240   0x33c89  5      
  nop                                                                #  241   0x33c8e  1      
  nop                                                                #  242   0x33c8f  1      
.L_33f60:                                                            #        0x33c90  0      
  nop                                                                #  243   0x33c90  1      
  nop                                                                #  244   0x33c91  1      
  callq ._ZN2pp6Module3GetEv                                         #  245   0x33c92  5      
  movl %eax, %edi                                                    #  246   0x33c97  2      
  movl $0x10020644, %esi                                             #  247   0x33c99  5      
  nop                                                                #  248   0x33c9e  1      
  nop                                                                #  249   0x33c9f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  250   0x33ca0  5      
  movl $0x10030d00, %edi                                             #  251   0x33ca5  5      
  movl %eax, 0xfffd058(%rip)                                         #  252   0x33caa  6      
  nop                                                                #  253   0x33cb0  1      
  nop                                                                #  254   0x33cb1  1      
  callq .__cxa_guard_release                                         #  255   0x33cb2  5      
  jmpq .L_33f40                                                      #  256   0x33cb7  5      
  nop                                                                #  257   0x33cbc  1      
  nop                                                                #  258   0x33cbd  1      
.L_33fe0:                                                            #        0x33cbe  0      
  nop                                                                #  259   0x33cbe  1      
  nop                                                                #  260   0x33cbf  1      
  callq ._ZN2pp6Module3GetEv                                         #  261   0x33cc0  5      
  movl %eax, %edi                                                    #  262   0x33cc5  2      
  movl $0x10020664, %esi                                             #  263   0x33cc7  5      
  nop                                                                #  264   0x33ccc  1      
  nop                                                                #  265   0x33ccd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  266   0x33cce  5      
  movl $0x10030cf0, %edi                                             #  267   0x33cd3  5      
  movl %eax, 0xfffd01a(%rip)                                         #  268   0x33cd8  6      
  nop                                                                #  269   0x33cde  1      
  nop                                                                #  270   0x33cdf  1      
  callq .__cxa_guard_release                                         #  271   0x33ce0  5      
  jmpq .L_33ce0                                                      #  272   0x33ce5  5      
  nop                                                                #  273   0x33cea  1      
  nop                                                                #  274   0x33ceb  1      
.L_34060:                                                            #        0x33cec  0      
  movl %eax, %ebx                                                    #  275   0x33cec  2      
  movl $0x10030ce0, %edi                                             #  276   0x33cee  5      
  nop                                                                #  277   0x33cf3  1      
  nop                                                                #  278   0x33cf4  1      
  callq .__cxa_guard_abort                                           #  279   0x33cf5  5      
  movl %ebx, %edi                                                    #  280   0x33cfa  2      
  nop                                                                #  281   0x33cfc  1      
  nop                                                                #  282   0x33cfd  1      
  callq ._Unwind_Resume                                              #  283   0x33cfe  5      
.L_340a0:                                                            #        0x33d03  0      
  movl %eax, %ebx                                                    #  284   0x33d03  2      
  movl $0x10030cf0, %edi                                             #  285   0x33d05  5      
  nop                                                                #  286   0x33d0a  1      
  nop                                                                #  287   0x33d0b  1      
  callq .__cxa_guard_abort                                           #  288   0x33d0c  5      
  movl %ebx, %edi                                                    #  289   0x33d11  2      
  nop                                                                #  290   0x33d13  1      
  nop                                                                #  291   0x33d14  1      
  callq ._Unwind_Resume                                              #  292   0x33d15  5      
  jmpq .L_340a0                                                      #  293   0x33d1a  5      
  nop                                                                #  294   0x33d1f  1      
  nop                                                                #  295   0x33d20  1      
  jmpq .L_34060                                                      #  296   0x33d21  5      
  nop                                                                #  297   0x33d26  1      
  nop                                                                #  298   0x33d27  1      
.L_34120:                                                            #        0x33d28  0      
  movl %eax, %ebx                                                    #  299   0x33d28  2      
  movl $0x10030d00, %edi                                             #  300   0x33d2a  5      
  nop                                                                #  301   0x33d2f  1      
  nop                                                                #  302   0x33d30  1      
  callq .__cxa_guard_abort                                           #  303   0x33d31  5      
  movl %ebx, %edi                                                    #  304   0x33d36  2      
  nop                                                                #  305   0x33d38  1      
  nop                                                                #  306   0x33d39  1      
  callq ._Unwind_Resume                                              #  307   0x33d3a  5      
  jmpq .L_34120                                                      #  308   0x33d3f  5      
  nop                                                                #  309   0x33d44  1      
  nop                                                                #  310   0x33d45  1      
                                                                                              
.size _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE

