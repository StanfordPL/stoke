  .text
  .globl _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, @function

#! file-offset 0x339a0
#! rip-offset  0x339a0
#! capacity    2048 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE:                  #        0x339a0  0      
  pushq %r12                                                         #  1     0x339a0  3      
  movl %edi, %r12d                                                   #  2     0x339a3  3      
  pushq %rbx                                                         #  3     0x339a6  2      
  movl %esi, %ebx                                                    #  4     0x339a8  2      
  subl $0x48, %esp                                                   #  5     0x339aa  3      
  addq %r15, %rsp                                                    #  6     0x339ad  3      
  cmpb $0x0, 0xfffd329(%rip)                                         #  7     0x339b0  7      
  movsd %xmm0, (%rsp)                                                #  8     0x339b7  5      
  movsd %xmm1, 0x8(%rsp)                                             #  9     0x339bc  6      
  je .L_33c20                                                        #  10    0x339c2  6      
  nop                                                                #  11    0x339c8  1      
  nop                                                                #  12    0x339c9  1      
.L_339e0:                                                            #        0x339ca  0      
  movl 0xfffd318(%rip), %eax                                         #  13    0x339ca  6      
  testq %rax, %rax                                                   #  14    0x339d0  3      
  jne .L_33bc0                                                       #  15    0x339d3  6      
  cmpb $0x0, 0xfffd310(%rip)                                         #  16    0x339d9  7      
  je .L_33b20                                                        #  17    0x339e0  6      
  nop                                                                #  18    0x339e6  1      
.L_33a00:                                                            #        0x339e7  0      
  movl 0xfffd30b(%rip), %eax                                         #  19    0x339e7  6      
  testq %rax, %rax                                                   #  20    0x339ed  3      
  jne .L_33aa0                                                       #  21    0x339f0  6      
  cmpb $0x0, 0xfffd303(%rip)                                         #  22    0x339f6  7      
  je .L_33e00                                                        #  23    0x339fd  6      
  nop                                                                #  24    0x33a03  1      
.L_33a20:                                                            #        0x33a04  0      
  movl 0xfffd2fe(%rip), %eax                                         #  25    0x33a04  6      
  testq %rax, %rax                                                   #  26    0x33a0a  3      
  jne .L_33da0                                                       #  27    0x33a0d  6      
  movl %ebx, %ebx                                                    #  28    0x33a13  2      
  movl (%r15,%rbx,1), %r11d                                          #  29    0x33a15  4      
  testl %r11d, %r11d                                                 #  30    0x33a19  3      
  je .L_33d20                                                        #  31    0x33a1c  6      
  xchgw %ax, %ax                                                     #  32    0x33a22  3      
  movl %ebx, %ebx                                                    #  33    0x33a25  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  34    0x33a27  6      
  jne .L_33d20                                                       #  35    0x33a2d  6      
  nop                                                                #  36    0x33a33  1      
  callq ._ZN2pp6Module3GetEv                                         #  37    0x33a34  5      
  movl %eax, %eax                                                    #  38    0x33a39  2      
  movl %ebx, %edx                                                    #  39    0x33a3b  2      
  movl $0xfffffffa, %ecx                                             #  40    0x33a3d  5      
  movl %eax, %eax                                                    #  41    0x33a42  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  42    0x33a44  5      
  xorl %esi, %esi                                                    #  43    0x33a49  2      
  nop                                                                #  44    0x33a4b  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  45    0x33a4c  5      
  addl $0x48, %esp                                                   #  46    0x33a51  3      
  addq %r15, %rsp                                                    #  47    0x33a54  3      
  movl $0xffffffff, %eax                                             #  48    0x33a57  5      
  popq %rbx                                                          #  49    0x33a5c  2      
  popq %r12                                                          #  50    0x33a5e  3      
  popq %r11                                                          #  51    0x33a61  3      
  andl $0xffffffe0, %r11d                                            #  52    0x33a64  7      
  addq %r15, %r11                                                    #  53    0x33a6b  3      
  jmpq %r11                                                          #  54    0x33a6e  3      
  nop                                                                #  55    0x33a71  1      
.L_33aa0:                                                            #        0x33a72  0      
  cmpb $0x0, 0xfffd277(%rip)                                         #  56    0x33a72  7      
  je .L_33cc0                                                        #  57    0x33a79  6      
  nop                                                                #  58    0x33a7f  1      
  nop                                                                #  59    0x33a80  1      
.L_33ac0:                                                            #        0x33a81  0      
  movl %ebx, %ebx                                                    #  60    0x33a81  2      
  movq (%r15,%rbx,1), %rsi                                           #  61    0x33a83  4      
  movl %eax, %eax                                                    #  62    0x33a87  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  63    0x33a89  5      
  movq %rsi, 0x20(%rsp)                                              #  64    0x33a8e  5      
  movl %ebx, %ebx                                                    #  65    0x33a93  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  66    0x33a95  5      
  movl %edx, 0x28(%rsp)                                              #  67    0x33a9a  4      
  nop                                                                #  68    0x33a9e  1      
.L_33ae0:                                                            #        0x33a9f  0      
  movl %r12d, %r12d                                                  #  69    0x33a9f  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  70    0x33aa2  5      
  movsd 0x8(%rsp), %xmm1                                             #  71    0x33aa7  6      
  movsd (%rsp), %xmm0                                                #  72    0x33aad  5      
  addl $0x48, %esp                                                   #  73    0x33ab2  3      
  addq %r15, %rsp                                                    #  74    0x33ab5  3      
  popq %rbx                                                          #  75    0x33ab8  2      
  popq %r12                                                          #  76    0x33aba  3      
  nop                                                                #  77    0x33abd  1      
  andl $0xffffffe0, %eax                                             #  78    0x33abe  5      
  addq %r15, %rax                                                    #  79    0x33ac3  3      
  jmpq %rax                                                          #  80    0x33ac6  2      
  nop                                                                #  81    0x33ac8  1      
  nop                                                                #  82    0x33ac9  1      
.L_33b20:                                                            #        0x33aca  0      
  movl $0x10030cf0, %edi                                             #  83    0x33aca  5      
  nop                                                                #  84    0x33acf  1      
  nop                                                                #  85    0x33ad0  1      
  callq .__cxa_guard_acquire                                         #  86    0x33ad1  5      
  testl %eax, %eax                                                   #  87    0x33ad6  2      
  je .L_33a00                                                        #  88    0x33ad8  6      
  nop                                                                #  89    0x33ade  1      
  nop                                                                #  90    0x33adf  1      
  callq ._ZN2pp6Module3GetEv                                         #  91    0x33ae0  5      
  movl %eax, %edi                                                    #  92    0x33ae5  2      
  movl $0x10020664, %esi                                             #  93    0x33ae7  5      
  nop                                                                #  94    0x33aec  1      
  nop                                                                #  95    0x33aed  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  96    0x33aee  5      
  movl $0x10030cf0, %edi                                             #  97    0x33af3  5      
  movl %eax, 0xfffd1fa(%rip)                                         #  98    0x33af8  6      
  nop                                                                #  99    0x33afe  1      
  nop                                                                #  100   0x33aff  1      
  callq .__cxa_guard_release                                         #  101   0x33b00  5      
  jmpq .L_33a00                                                      #  102   0x33b05  5      
  nop                                                                #  103   0x33b0a  1      
  nop                                                                #  104   0x33b0b  1      
.L_33bc0:                                                            #        0x33b0c  0      
  cmpb $0x0, 0xfffd1cd(%rip)                                         #  105   0x33b0c  7      
  je .L_33d40                                                        #  106   0x33b13  6      
  nop                                                                #  107   0x33b19  1      
  nop                                                                #  108   0x33b1a  1      
.L_33be0:                                                            #        0x33b1b  0      
  movl %ebx, %ebx                                                    #  109   0x33b1b  2      
  movq (%r15,%rbx,1), %rsi                                           #  110   0x33b1d  4      
  movl %eax, %eax                                                    #  111   0x33b21  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  112   0x33b23  5      
  movq %rsi, 0x30(%rsp)                                              #  113   0x33b28  5      
  movl %ebx, %ebx                                                    #  114   0x33b2d  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  115   0x33b2f  5      
  movl %edx, 0x38(%rsp)                                              #  116   0x33b34  4      
  nop                                                                #  117   0x33b38  1      
  jmpq .L_33ae0                                                      #  118   0x33b39  5      
  nop                                                                #  119   0x33b3e  1      
  nop                                                                #  120   0x33b3f  1      
.L_33c20:                                                            #        0x33b40  0      
  movl $0x10030ce0, %edi                                             #  121   0x33b40  5      
  nop                                                                #  122   0x33b45  1      
  nop                                                                #  123   0x33b46  1      
  callq .__cxa_guard_acquire                                         #  124   0x33b47  5      
  testl %eax, %eax                                                   #  125   0x33b4c  2      
  je .L_339e0                                                        #  126   0x33b4e  6      
  nop                                                                #  127   0x33b54  1      
  nop                                                                #  128   0x33b55  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33b56  5      
  movl %eax, %edi                                                    #  130   0x33b5b  2      
  movl $0x10020654, %esi                                             #  131   0x33b5d  5      
  nop                                                                #  132   0x33b62  1      
  nop                                                                #  133   0x33b63  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x33b64  5      
  movl $0x10030ce0, %edi                                             #  135   0x33b69  5      
  movl %eax, 0xfffd174(%rip)                                         #  136   0x33b6e  6      
  nop                                                                #  137   0x33b74  1      
  nop                                                                #  138   0x33b75  1      
  callq .__cxa_guard_release                                         #  139   0x33b76  5      
  jmpq .L_339e0                                                      #  140   0x33b7b  5      
  nop                                                                #  141   0x33b80  1      
  nop                                                                #  142   0x33b81  1      
.L_33cc0:                                                            #        0x33b82  0      
  movl $0x10030cf0, %edi                                             #  143   0x33b82  5      
  nop                                                                #  144   0x33b87  1      
  nop                                                                #  145   0x33b88  1      
  callq .__cxa_guard_acquire                                         #  146   0x33b89  5      
  testl %eax, %eax                                                   #  147   0x33b8e  2      
  jne .L_34000                                                       #  148   0x33b90  6      
  nop                                                                #  149   0x33b96  1      
  nop                                                                #  150   0x33b97  1      
.L_33d00:                                                            #        0x33b98  0      
  movl 0xfffd15a(%rip), %eax                                         #  151   0x33b98  6      
  jmpq .L_33ac0                                                      #  152   0x33b9e  5      
  nop                                                                #  153   0x33ba3  1      
  nop                                                                #  154   0x33ba4  1      
.L_33d20:                                                            #        0x33ba5  0      
  addl $0x48, %esp                                                   #  155   0x33ba5  3      
  addq %r15, %rsp                                                    #  156   0x33ba8  3      
  movl $0xfffffffa, %eax                                             #  157   0x33bab  5      
  popq %rbx                                                          #  158   0x33bb0  2      
  popq %r12                                                          #  159   0x33bb2  3      
  popq %r11                                                          #  160   0x33bb5  3      
  andl $0xffffffe0, %r11d                                            #  161   0x33bb8  7      
  addq %r15, %r11                                                    #  162   0x33bbf  3      
  jmpq %r11                                                          #  163   0x33bc2  3      
  nop                                                                #  164   0x33bc5  1      
.L_33d40:                                                            #        0x33bc6  0      
  movl $0x10030ce0, %edi                                             #  165   0x33bc6  5      
  nop                                                                #  166   0x33bcb  1      
  nop                                                                #  167   0x33bcc  1      
  callq .__cxa_guard_acquire                                         #  168   0x33bcd  5      
  testl %eax, %eax                                                   #  169   0x33bd2  2      
  jne .L_33ea0                                                       #  170   0x33bd4  6      
  nop                                                                #  171   0x33bda  1      
  nop                                                                #  172   0x33bdb  1      
.L_33d80:                                                            #        0x33bdc  0      
  movl 0xfffd106(%rip), %eax                                         #  173   0x33bdc  6      
  jmpq .L_33be0                                                      #  174   0x33be2  5      
  nop                                                                #  175   0x33be7  1      
  nop                                                                #  176   0x33be8  1      
.L_33da0:                                                            #        0x33be9  0      
  cmpb $0x0, 0xfffd110(%rip)                                         #  177   0x33be9  7      
  je .L_33f20                                                        #  178   0x33bf0  6      
  nop                                                                #  179   0x33bf6  1      
  nop                                                                #  180   0x33bf7  1      
.L_33dc0:                                                            #        0x33bf8  0      
  movl %ebx, %ebx                                                    #  181   0x33bf8  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x33bfa  4      
  movl %eax, %eax                                                    #  183   0x33bfe  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  184   0x33c00  5      
  movq %rsi, 0x10(%rsp)                                              #  185   0x33c05  5      
  movl %ebx, %ebx                                                    #  186   0x33c0a  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x33c0c  5      
  movl %edx, 0x18(%rsp)                                              #  188   0x33c11  4      
  nop                                                                #  189   0x33c15  1      
  jmpq .L_33ae0                                                      #  190   0x33c16  5      
  nop                                                                #  191   0x33c1b  1      
  nop                                                                #  192   0x33c1c  1      
.L_33e00:                                                            #        0x33c1d  0      
  movl $0x10030d00, %edi                                             #  193   0x33c1d  5      
  nop                                                                #  194   0x33c22  1      
  nop                                                                #  195   0x33c23  1      
  callq .__cxa_guard_acquire                                         #  196   0x33c24  5      
  testl %eax, %eax                                                   #  197   0x33c29  2      
  je .L_33a20                                                        #  198   0x33c2b  6      
  nop                                                                #  199   0x33c31  1      
  nop                                                                #  200   0x33c32  1      
  callq ._ZN2pp6Module3GetEv                                         #  201   0x33c33  5      
  movl %eax, %edi                                                    #  202   0x33c38  2      
  movl $0x10020644, %esi                                             #  203   0x33c3a  5      
  nop                                                                #  204   0x33c3f  1      
  nop                                                                #  205   0x33c40  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  206   0x33c41  5      
  movl $0x10030d00, %edi                                             #  207   0x33c46  5      
  movl %eax, 0xfffd0b7(%rip)                                         #  208   0x33c4b  6      
  nop                                                                #  209   0x33c51  1      
  nop                                                                #  210   0x33c52  1      
  callq .__cxa_guard_release                                         #  211   0x33c53  5      
  jmpq .L_33a20                                                      #  212   0x33c58  5      
  nop                                                                #  213   0x33c5d  1      
  nop                                                                #  214   0x33c5e  1      
.L_33ea0:                                                            #        0x33c5f  0      
  nop                                                                #  215   0x33c5f  1      
  nop                                                                #  216   0x33c60  1      
  callq ._ZN2pp6Module3GetEv                                         #  217   0x33c61  5      
  movl %eax, %edi                                                    #  218   0x33c66  2      
  movl $0x10020654, %esi                                             #  219   0x33c68  5      
  nop                                                                #  220   0x33c6d  1      
  nop                                                                #  221   0x33c6e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  222   0x33c6f  5      
  movl $0x10030ce0, %edi                                             #  223   0x33c74  5      
  movl %eax, 0xfffd069(%rip)                                         #  224   0x33c79  6      
  nop                                                                #  225   0x33c7f  1      
  nop                                                                #  226   0x33c80  1      
  callq .__cxa_guard_release                                         #  227   0x33c81  5      
  jmpq .L_33d80                                                      #  228   0x33c86  5      
  nop                                                                #  229   0x33c8b  1      
  nop                                                                #  230   0x33c8c  1      
.L_33f20:                                                            #        0x33c8d  0      
  movl $0x10030d00, %edi                                             #  231   0x33c8d  5      
  nop                                                                #  232   0x33c92  1      
  nop                                                                #  233   0x33c93  1      
  callq .__cxa_guard_acquire                                         #  234   0x33c94  5      
  testl %eax, %eax                                                   #  235   0x33c99  2      
  jne .L_33f80                                                       #  236   0x33c9b  6      
  nop                                                                #  237   0x33ca1  1      
  nop                                                                #  238   0x33ca2  1      
.L_33f60:                                                            #        0x33ca3  0      
  movl 0xfffd05f(%rip), %eax                                         #  239   0x33ca3  6      
  jmpq .L_33dc0                                                      #  240   0x33ca9  5      
  nop                                                                #  241   0x33cae  1      
  nop                                                                #  242   0x33caf  1      
.L_33f80:                                                            #        0x33cb0  0      
  nop                                                                #  243   0x33cb0  1      
  nop                                                                #  244   0x33cb1  1      
  callq ._ZN2pp6Module3GetEv                                         #  245   0x33cb2  5      
  movl %eax, %edi                                                    #  246   0x33cb7  2      
  movl $0x10020644, %esi                                             #  247   0x33cb9  5      
  nop                                                                #  248   0x33cbe  1      
  nop                                                                #  249   0x33cbf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  250   0x33cc0  5      
  movl $0x10030d00, %edi                                             #  251   0x33cc5  5      
  movl %eax, 0xfffd038(%rip)                                         #  252   0x33cca  6      
  nop                                                                #  253   0x33cd0  1      
  nop                                                                #  254   0x33cd1  1      
  callq .__cxa_guard_release                                         #  255   0x33cd2  5      
  jmpq .L_33f60                                                      #  256   0x33cd7  5      
  nop                                                                #  257   0x33cdc  1      
  nop                                                                #  258   0x33cdd  1      
.L_34000:                                                            #        0x33cde  0      
  nop                                                                #  259   0x33cde  1      
  nop                                                                #  260   0x33cdf  1      
  callq ._ZN2pp6Module3GetEv                                         #  261   0x33ce0  5      
  movl %eax, %edi                                                    #  262   0x33ce5  2      
  movl $0x10020664, %esi                                             #  263   0x33ce7  5      
  nop                                                                #  264   0x33cec  1      
  nop                                                                #  265   0x33ced  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  266   0x33cee  5      
  movl $0x10030cf0, %edi                                             #  267   0x33cf3  5      
  movl %eax, 0xfffcffa(%rip)                                         #  268   0x33cf8  6      
  nop                                                                #  269   0x33cfe  1      
  nop                                                                #  270   0x33cff  1      
  callq .__cxa_guard_release                                         #  271   0x33d00  5      
  jmpq .L_33d00                                                      #  272   0x33d05  5      
  nop                                                                #  273   0x33d0a  1      
  nop                                                                #  274   0x33d0b  1      
.L_34080:                                                            #        0x33d0c  0      
  movl %eax, %ebx                                                    #  275   0x33d0c  2      
  movl $0x10030ce0, %edi                                             #  276   0x33d0e  5      
  nop                                                                #  277   0x33d13  1      
  nop                                                                #  278   0x33d14  1      
  callq .__cxa_guard_abort                                           #  279   0x33d15  5      
  movl %ebx, %edi                                                    #  280   0x33d1a  2      
  nop                                                                #  281   0x33d1c  1      
  nop                                                                #  282   0x33d1d  1      
  callq ._Unwind_Resume                                              #  283   0x33d1e  5      
.L_340c0:                                                            #        0x33d23  0      
  movl %eax, %ebx                                                    #  284   0x33d23  2      
  movl $0x10030cf0, %edi                                             #  285   0x33d25  5      
  nop                                                                #  286   0x33d2a  1      
  nop                                                                #  287   0x33d2b  1      
  callq .__cxa_guard_abort                                           #  288   0x33d2c  5      
  movl %ebx, %edi                                                    #  289   0x33d31  2      
  nop                                                                #  290   0x33d33  1      
  nop                                                                #  291   0x33d34  1      
  callq ._Unwind_Resume                                              #  292   0x33d35  5      
  jmpq .L_340c0                                                      #  293   0x33d3a  5      
  nop                                                                #  294   0x33d3f  1      
  nop                                                                #  295   0x33d40  1      
  jmpq .L_34080                                                      #  296   0x33d41  5      
  nop                                                                #  297   0x33d46  1      
  nop                                                                #  298   0x33d47  1      
.L_34140:                                                            #        0x33d48  0      
  movl %eax, %ebx                                                    #  299   0x33d48  2      
  movl $0x10030d00, %edi                                             #  300   0x33d4a  5      
  nop                                                                #  301   0x33d4f  1      
  nop                                                                #  302   0x33d50  1      
  callq .__cxa_guard_abort                                           #  303   0x33d51  5      
  movl %ebx, %edi                                                    #  304   0x33d56  2      
  nop                                                                #  305   0x33d58  1      
  nop                                                                #  306   0x33d59  1      
  callq ._Unwind_Resume                                              #  307   0x33d5a  5      
  jmpq .L_34140                                                      #  308   0x33d5f  5      
  nop                                                                #  309   0x33d64  1      
  nop                                                                #  310   0x33d65  1      
                                                                                              
.size _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE

