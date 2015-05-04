  .text
  .globl _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, @function

#! file-offset 0x33a20
#! rip-offset  0x33a20
#! capacity    2048 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE:                  #        0x33a20  0      
  pushq %r12                                                         #  1     0x33a20  3      
  movl %edi, %r12d                                                   #  2     0x33a23  3      
  pushq %rbx                                                         #  3     0x33a26  2      
  movl %esi, %ebx                                                    #  4     0x33a28  2      
  subl $0x48, %esp                                                   #  5     0x33a2a  3      
  addq %r15, %rsp                                                    #  6     0x33a2d  3      
  cmpb $0x0, 0xfffd2a9(%rip)                                         #  7     0x33a30  7      
  movsd %xmm0, (%rsp)                                                #  8     0x33a37  5      
  movsd %xmm1, 0x8(%rsp)                                             #  9     0x33a3c  6      
  je .L_33ca0                                                        #  10    0x33a42  6      
  nop                                                                #  11    0x33a48  1      
  nop                                                                #  12    0x33a49  1      
.L_33a60:                                                            #        0x33a4a  0      
  movl 0xfffd298(%rip), %eax                                         #  13    0x33a4a  6      
  testq %rax, %rax                                                   #  14    0x33a50  3      
  jne .L_33c40                                                       #  15    0x33a53  6      
  cmpb $0x0, 0xfffd290(%rip)                                         #  16    0x33a59  7      
  je .L_33ba0                                                        #  17    0x33a60  6      
  nop                                                                #  18    0x33a66  1      
.L_33a80:                                                            #        0x33a67  0      
  movl 0xfffd28b(%rip), %eax                                         #  19    0x33a67  6      
  testq %rax, %rax                                                   #  20    0x33a6d  3      
  jne .L_33b20                                                       #  21    0x33a70  6      
  cmpb $0x0, 0xfffd283(%rip)                                         #  22    0x33a76  7      
  je .L_33e80                                                        #  23    0x33a7d  6      
  nop                                                                #  24    0x33a83  1      
.L_33aa0:                                                            #        0x33a84  0      
  movl 0xfffd27e(%rip), %eax                                         #  25    0x33a84  6      
  testq %rax, %rax                                                   #  26    0x33a8a  3      
  jne .L_33e20                                                       #  27    0x33a8d  6      
  movl %ebx, %ebx                                                    #  28    0x33a93  2      
  movl (%r15,%rbx,1), %r11d                                          #  29    0x33a95  4      
  testl %r11d, %r11d                                                 #  30    0x33a99  3      
  je .L_33da0                                                        #  31    0x33a9c  6      
  xchgw %ax, %ax                                                     #  32    0x33aa2  3      
  movl %ebx, %ebx                                                    #  33    0x33aa5  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  34    0x33aa7  6      
  jne .L_33da0                                                       #  35    0x33aad  6      
  nop                                                                #  36    0x33ab3  1      
  callq ._ZN2pp6Module3GetEv                                         #  37    0x33ab4  5      
  movl %eax, %eax                                                    #  38    0x33ab9  2      
  movl %ebx, %edx                                                    #  39    0x33abb  2      
  movl $0xfffffffa, %ecx                                             #  40    0x33abd  5      
  movl %eax, %eax                                                    #  41    0x33ac2  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  42    0x33ac4  5      
  xorl %esi, %esi                                                    #  43    0x33ac9  2      
  nop                                                                #  44    0x33acb  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  45    0x33acc  5      
  addl $0x48, %esp                                                   #  46    0x33ad1  3      
  addq %r15, %rsp                                                    #  47    0x33ad4  3      
  movl $0xffffffff, %eax                                             #  48    0x33ad7  5      
  popq %rbx                                                          #  49    0x33adc  2      
  popq %r12                                                          #  50    0x33ade  3      
  popq %r11                                                          #  51    0x33ae1  3      
  andl $0xffffffe0, %r11d                                            #  52    0x33ae4  7      
  addq %r15, %r11                                                    #  53    0x33aeb  3      
  jmpq %r11                                                          #  54    0x33aee  3      
  nop                                                                #  55    0x33af1  1      
.L_33b20:                                                            #        0x33af2  0      
  cmpb $0x0, 0xfffd1f7(%rip)                                         #  56    0x33af2  7      
  je .L_33d40                                                        #  57    0x33af9  6      
  nop                                                                #  58    0x33aff  1      
  nop                                                                #  59    0x33b00  1      
.L_33b40:                                                            #        0x33b01  0      
  movl %ebx, %ebx                                                    #  60    0x33b01  2      
  movq (%r15,%rbx,1), %rsi                                           #  61    0x33b03  4      
  movl %eax, %eax                                                    #  62    0x33b07  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  63    0x33b09  5      
  movq %rsi, 0x20(%rsp)                                              #  64    0x33b0e  5      
  movl %ebx, %ebx                                                    #  65    0x33b13  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  66    0x33b15  5      
  movl %edx, 0x28(%rsp)                                              #  67    0x33b1a  4      
  nop                                                                #  68    0x33b1e  1      
.L_33b60:                                                            #        0x33b1f  0      
  movl %r12d, %r12d                                                  #  69    0x33b1f  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  70    0x33b22  5      
  movsd 0x8(%rsp), %xmm1                                             #  71    0x33b27  6      
  movsd (%rsp), %xmm0                                                #  72    0x33b2d  5      
  addl $0x48, %esp                                                   #  73    0x33b32  3      
  addq %r15, %rsp                                                    #  74    0x33b35  3      
  popq %rbx                                                          #  75    0x33b38  2      
  popq %r12                                                          #  76    0x33b3a  3      
  nop                                                                #  77    0x33b3d  1      
  andl $0xffffffe0, %eax                                             #  78    0x33b3e  5      
  addq %r15, %rax                                                    #  79    0x33b43  3      
  jmpq %rax                                                          #  80    0x33b46  2      
  nop                                                                #  81    0x33b48  1      
  nop                                                                #  82    0x33b49  1      
.L_33ba0:                                                            #        0x33b4a  0      
  movl $0x10030cf0, %edi                                             #  83    0x33b4a  5      
  nop                                                                #  84    0x33b4f  1      
  nop                                                                #  85    0x33b50  1      
  callq .__cxa_guard_acquire                                         #  86    0x33b51  5      
  testl %eax, %eax                                                   #  87    0x33b56  2      
  je .L_33a80                                                        #  88    0x33b58  6      
  nop                                                                #  89    0x33b5e  1      
  nop                                                                #  90    0x33b5f  1      
  callq ._ZN2pp6Module3GetEv                                         #  91    0x33b60  5      
  movl %eax, %edi                                                    #  92    0x33b65  2      
  movl $0x10020664, %esi                                             #  93    0x33b67  5      
  nop                                                                #  94    0x33b6c  1      
  nop                                                                #  95    0x33b6d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  96    0x33b6e  5      
  movl $0x10030cf0, %edi                                             #  97    0x33b73  5      
  movl %eax, 0xfffd17a(%rip)                                         #  98    0x33b78  6      
  nop                                                                #  99    0x33b7e  1      
  nop                                                                #  100   0x33b7f  1      
  callq .__cxa_guard_release                                         #  101   0x33b80  5      
  jmpq .L_33a80                                                      #  102   0x33b85  5      
  nop                                                                #  103   0x33b8a  1      
  nop                                                                #  104   0x33b8b  1      
.L_33c40:                                                            #        0x33b8c  0      
  cmpb $0x0, 0xfffd14d(%rip)                                         #  105   0x33b8c  7      
  je .L_33dc0                                                        #  106   0x33b93  6      
  nop                                                                #  107   0x33b99  1      
  nop                                                                #  108   0x33b9a  1      
.L_33c60:                                                            #        0x33b9b  0      
  movl %ebx, %ebx                                                    #  109   0x33b9b  2      
  movq (%r15,%rbx,1), %rsi                                           #  110   0x33b9d  4      
  movl %eax, %eax                                                    #  111   0x33ba1  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  112   0x33ba3  5      
  movq %rsi, 0x30(%rsp)                                              #  113   0x33ba8  5      
  movl %ebx, %ebx                                                    #  114   0x33bad  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  115   0x33baf  5      
  movl %edx, 0x38(%rsp)                                              #  116   0x33bb4  4      
  nop                                                                #  117   0x33bb8  1      
  jmpq .L_33b60                                                      #  118   0x33bb9  5      
  nop                                                                #  119   0x33bbe  1      
  nop                                                                #  120   0x33bbf  1      
.L_33ca0:                                                            #        0x33bc0  0      
  movl $0x10030ce0, %edi                                             #  121   0x33bc0  5      
  nop                                                                #  122   0x33bc5  1      
  nop                                                                #  123   0x33bc6  1      
  callq .__cxa_guard_acquire                                         #  124   0x33bc7  5      
  testl %eax, %eax                                                   #  125   0x33bcc  2      
  je .L_33a60                                                        #  126   0x33bce  6      
  nop                                                                #  127   0x33bd4  1      
  nop                                                                #  128   0x33bd5  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33bd6  5      
  movl %eax, %edi                                                    #  130   0x33bdb  2      
  movl $0x10020654, %esi                                             #  131   0x33bdd  5      
  nop                                                                #  132   0x33be2  1      
  nop                                                                #  133   0x33be3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x33be4  5      
  movl $0x10030ce0, %edi                                             #  135   0x33be9  5      
  movl %eax, 0xfffd0f4(%rip)                                         #  136   0x33bee  6      
  nop                                                                #  137   0x33bf4  1      
  nop                                                                #  138   0x33bf5  1      
  callq .__cxa_guard_release                                         #  139   0x33bf6  5      
  jmpq .L_33a60                                                      #  140   0x33bfb  5      
  nop                                                                #  141   0x33c00  1      
  nop                                                                #  142   0x33c01  1      
.L_33d40:                                                            #        0x33c02  0      
  movl $0x10030cf0, %edi                                             #  143   0x33c02  5      
  nop                                                                #  144   0x33c07  1      
  nop                                                                #  145   0x33c08  1      
  callq .__cxa_guard_acquire                                         #  146   0x33c09  5      
  testl %eax, %eax                                                   #  147   0x33c0e  2      
  jne .L_34080                                                       #  148   0x33c10  6      
  nop                                                                #  149   0x33c16  1      
  nop                                                                #  150   0x33c17  1      
.L_33d80:                                                            #        0x33c18  0      
  movl 0xfffd0da(%rip), %eax                                         #  151   0x33c18  6      
  jmpq .L_33b40                                                      #  152   0x33c1e  5      
  nop                                                                #  153   0x33c23  1      
  nop                                                                #  154   0x33c24  1      
.L_33da0:                                                            #        0x33c25  0      
  addl $0x48, %esp                                                   #  155   0x33c25  3      
  addq %r15, %rsp                                                    #  156   0x33c28  3      
  movl $0xfffffffa, %eax                                             #  157   0x33c2b  5      
  popq %rbx                                                          #  158   0x33c30  2      
  popq %r12                                                          #  159   0x33c32  3      
  popq %r11                                                          #  160   0x33c35  3      
  andl $0xffffffe0, %r11d                                            #  161   0x33c38  7      
  addq %r15, %r11                                                    #  162   0x33c3f  3      
  jmpq %r11                                                          #  163   0x33c42  3      
  nop                                                                #  164   0x33c45  1      
.L_33dc0:                                                            #        0x33c46  0      
  movl $0x10030ce0, %edi                                             #  165   0x33c46  5      
  nop                                                                #  166   0x33c4b  1      
  nop                                                                #  167   0x33c4c  1      
  callq .__cxa_guard_acquire                                         #  168   0x33c4d  5      
  testl %eax, %eax                                                   #  169   0x33c52  2      
  jne .L_33f20                                                       #  170   0x33c54  6      
  nop                                                                #  171   0x33c5a  1      
  nop                                                                #  172   0x33c5b  1      
.L_33e00:                                                            #        0x33c5c  0      
  movl 0xfffd086(%rip), %eax                                         #  173   0x33c5c  6      
  jmpq .L_33c60                                                      #  174   0x33c62  5      
  nop                                                                #  175   0x33c67  1      
  nop                                                                #  176   0x33c68  1      
.L_33e20:                                                            #        0x33c69  0      
  cmpb $0x0, 0xfffd090(%rip)                                         #  177   0x33c69  7      
  je .L_33fa0                                                        #  178   0x33c70  6      
  nop                                                                #  179   0x33c76  1      
  nop                                                                #  180   0x33c77  1      
.L_33e40:                                                            #        0x33c78  0      
  movl %ebx, %ebx                                                    #  181   0x33c78  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x33c7a  4      
  movl %eax, %eax                                                    #  183   0x33c7e  2      
  movl 0x1c(%r15,%rax,1), %eax                                       #  184   0x33c80  5      
  movq %rsi, 0x10(%rsp)                                              #  185   0x33c85  5      
  movl %ebx, %ebx                                                    #  186   0x33c8a  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x33c8c  5      
  movl %edx, 0x18(%rsp)                                              #  188   0x33c91  4      
  nop                                                                #  189   0x33c95  1      
  jmpq .L_33b60                                                      #  190   0x33c96  5      
  nop                                                                #  191   0x33c9b  1      
  nop                                                                #  192   0x33c9c  1      
.L_33e80:                                                            #        0x33c9d  0      
  movl $0x10030d00, %edi                                             #  193   0x33c9d  5      
  nop                                                                #  194   0x33ca2  1      
  nop                                                                #  195   0x33ca3  1      
  callq .__cxa_guard_acquire                                         #  196   0x33ca4  5      
  testl %eax, %eax                                                   #  197   0x33ca9  2      
  je .L_33aa0                                                        #  198   0x33cab  6      
  nop                                                                #  199   0x33cb1  1      
  nop                                                                #  200   0x33cb2  1      
  callq ._ZN2pp6Module3GetEv                                         #  201   0x33cb3  5      
  movl %eax, %edi                                                    #  202   0x33cb8  2      
  movl $0x10020644, %esi                                             #  203   0x33cba  5      
  nop                                                                #  204   0x33cbf  1      
  nop                                                                #  205   0x33cc0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  206   0x33cc1  5      
  movl $0x10030d00, %edi                                             #  207   0x33cc6  5      
  movl %eax, 0xfffd037(%rip)                                         #  208   0x33ccb  6      
  nop                                                                #  209   0x33cd1  1      
  nop                                                                #  210   0x33cd2  1      
  callq .__cxa_guard_release                                         #  211   0x33cd3  5      
  jmpq .L_33aa0                                                      #  212   0x33cd8  5      
  nop                                                                #  213   0x33cdd  1      
  nop                                                                #  214   0x33cde  1      
.L_33f20:                                                            #        0x33cdf  0      
  nop                                                                #  215   0x33cdf  1      
  nop                                                                #  216   0x33ce0  1      
  callq ._ZN2pp6Module3GetEv                                         #  217   0x33ce1  5      
  movl %eax, %edi                                                    #  218   0x33ce6  2      
  movl $0x10020654, %esi                                             #  219   0x33ce8  5      
  nop                                                                #  220   0x33ced  1      
  nop                                                                #  221   0x33cee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  222   0x33cef  5      
  movl $0x10030ce0, %edi                                             #  223   0x33cf4  5      
  movl %eax, 0xfffcfe9(%rip)                                         #  224   0x33cf9  6      
  nop                                                                #  225   0x33cff  1      
  nop                                                                #  226   0x33d00  1      
  callq .__cxa_guard_release                                         #  227   0x33d01  5      
  jmpq .L_33e00                                                      #  228   0x33d06  5      
  nop                                                                #  229   0x33d0b  1      
  nop                                                                #  230   0x33d0c  1      
.L_33fa0:                                                            #        0x33d0d  0      
  movl $0x10030d00, %edi                                             #  231   0x33d0d  5      
  nop                                                                #  232   0x33d12  1      
  nop                                                                #  233   0x33d13  1      
  callq .__cxa_guard_acquire                                         #  234   0x33d14  5      
  testl %eax, %eax                                                   #  235   0x33d19  2      
  jne .L_34000                                                       #  236   0x33d1b  6      
  nop                                                                #  237   0x33d21  1      
  nop                                                                #  238   0x33d22  1      
.L_33fe0:                                                            #        0x33d23  0      
  movl 0xfffcfdf(%rip), %eax                                         #  239   0x33d23  6      
  jmpq .L_33e40                                                      #  240   0x33d29  5      
  nop                                                                #  241   0x33d2e  1      
  nop                                                                #  242   0x33d2f  1      
.L_34000:                                                            #        0x33d30  0      
  nop                                                                #  243   0x33d30  1      
  nop                                                                #  244   0x33d31  1      
  callq ._ZN2pp6Module3GetEv                                         #  245   0x33d32  5      
  movl %eax, %edi                                                    #  246   0x33d37  2      
  movl $0x10020644, %esi                                             #  247   0x33d39  5      
  nop                                                                #  248   0x33d3e  1      
  nop                                                                #  249   0x33d3f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  250   0x33d40  5      
  movl $0x10030d00, %edi                                             #  251   0x33d45  5      
  movl %eax, 0xfffcfb8(%rip)                                         #  252   0x33d4a  6      
  nop                                                                #  253   0x33d50  1      
  nop                                                                #  254   0x33d51  1      
  callq .__cxa_guard_release                                         #  255   0x33d52  5      
  jmpq .L_33fe0                                                      #  256   0x33d57  5      
  nop                                                                #  257   0x33d5c  1      
  nop                                                                #  258   0x33d5d  1      
.L_34080:                                                            #        0x33d5e  0      
  nop                                                                #  259   0x33d5e  1      
  nop                                                                #  260   0x33d5f  1      
  callq ._ZN2pp6Module3GetEv                                         #  261   0x33d60  5      
  movl %eax, %edi                                                    #  262   0x33d65  2      
  movl $0x10020664, %esi                                             #  263   0x33d67  5      
  nop                                                                #  264   0x33d6c  1      
  nop                                                                #  265   0x33d6d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  266   0x33d6e  5      
  movl $0x10030cf0, %edi                                             #  267   0x33d73  5      
  movl %eax, 0xfffcf7a(%rip)                                         #  268   0x33d78  6      
  nop                                                                #  269   0x33d7e  1      
  nop                                                                #  270   0x33d7f  1      
  callq .__cxa_guard_release                                         #  271   0x33d80  5      
  jmpq .L_33d80                                                      #  272   0x33d85  5      
  nop                                                                #  273   0x33d8a  1      
  nop                                                                #  274   0x33d8b  1      
.L_34100:                                                            #        0x33d8c  0      
  movl %eax, %ebx                                                    #  275   0x33d8c  2      
  movl $0x10030ce0, %edi                                             #  276   0x33d8e  5      
  nop                                                                #  277   0x33d93  1      
  nop                                                                #  278   0x33d94  1      
  callq .__cxa_guard_abort                                           #  279   0x33d95  5      
  movl %ebx, %edi                                                    #  280   0x33d9a  2      
  nop                                                                #  281   0x33d9c  1      
  nop                                                                #  282   0x33d9d  1      
  callq ._Unwind_Resume                                              #  283   0x33d9e  5      
.L_34140:                                                            #        0x33da3  0      
  movl %eax, %ebx                                                    #  284   0x33da3  2      
  movl $0x10030cf0, %edi                                             #  285   0x33da5  5      
  nop                                                                #  286   0x33daa  1      
  nop                                                                #  287   0x33dab  1      
  callq .__cxa_guard_abort                                           #  288   0x33dac  5      
  movl %ebx, %edi                                                    #  289   0x33db1  2      
  nop                                                                #  290   0x33db3  1      
  nop                                                                #  291   0x33db4  1      
  callq ._Unwind_Resume                                              #  292   0x33db5  5      
  jmpq .L_34140                                                      #  293   0x33dba  5      
  nop                                                                #  294   0x33dbf  1      
  nop                                                                #  295   0x33dc0  1      
  jmpq .L_34100                                                      #  296   0x33dc1  5      
  nop                                                                #  297   0x33dc6  1      
  nop                                                                #  298   0x33dc7  1      
.L_341c0:                                                            #        0x33dc8  0      
  movl %eax, %ebx                                                    #  299   0x33dc8  2      
  movl $0x10030d00, %edi                                             #  300   0x33dca  5      
  nop                                                                #  301   0x33dcf  1      
  nop                                                                #  302   0x33dd0  1      
  callq .__cxa_guard_abort                                           #  303   0x33dd1  5      
  movl %ebx, %edi                                                    #  304   0x33dd6  2      
  nop                                                                #  305   0x33dd8  1      
  nop                                                                #  306   0x33dd9  1      
  callq ._Unwind_Resume                                              #  307   0x33dda  5      
  jmpq .L_341c0                                                      #  308   0x33ddf  5      
  nop                                                                #  309   0x33de4  1      
  nop                                                                #  310   0x33de5  1      
                                                                                              
.size _ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE, .-_ZN2pp7FileRef5TouchEddRKNS_18CompletionCallbackE

