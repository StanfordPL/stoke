  .text
  .globl _ZNK2pp4View13IsPageVisibleEv
  .type _ZNK2pp4View13IsPageVisibleEv, @function

#! file-offset 0x2f140
#! rip-offset  0x2f140
#! capacity    1856 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View13IsPageVisibleEv:                  #        0x2f140  0      
  cmpb $0x0, 0x10001b69(%rip)                    #  1     0x2f140  7      
  pushq %rbx                                     #  2     0x2f147  2      
  movl %edi, %ebx                                #  3     0x2f149  2      
  je .L_2f380                                    #  4     0x2f14b  6      
  nop                                            #  5     0x2f151  1      
  nop                                            #  6     0x2f152  1      
.L_2f160:                                        #        0x2f153  0      
  movl 0x10001b5f(%rip), %eax                    #  7     0x2f153  6      
  testq %rax, %rax                               #  8     0x2f159  3      
  jne .L_2f300                                   #  9     0x2f15c  6      
  cmpb $0x0, 0x10001b57(%rip)                    #  10    0x2f162  7      
  je .L_2f260                                    #  11    0x2f169  6      
  nop                                            #  12    0x2f16f  1      
.L_2f180:                                        #        0x2f170  0      
  movl 0x10001b52(%rip), %eax                    #  13    0x2f170  6      
  testq %rax, %rax                               #  14    0x2f176  3      
  jne .L_2f1e0                                   #  15    0x2f179  6      
  cmpb $0x0, 0x10001b4a(%rip)                    #  16    0x2f17f  7      
  je .L_2f4e0                                    #  17    0x2f186  6      
  nop                                            #  18    0x2f18c  1      
.L_2f1a0:                                        #        0x2f18d  0      
  movl 0x10001b45(%rip), %edx                    #  19    0x2f18d  6      
  movl $0x1, %eax                                #  20    0x2f193  5      
  testq %rdx, %rdx                               #  21    0x2f198  3      
  jne .L_2f480                                   #  22    0x2f19b  6      
  popq %rbx                                      #  23    0x2f1a1  2      
  popq %r11                                      #  24    0x2f1a3  3      
  nop                                            #  25    0x2f1a6  1      
  andl $0xffffffe0, %r11d                        #  26    0x2f1a7  7      
  addq %r15, %r11                                #  27    0x2f1ae  3      
  jmpq %r11                                      #  28    0x2f1b1  3      
  nop                                            #  29    0x2f1b4  1      
  nop                                            #  30    0x2f1b5  1      
.L_2f1e0:                                        #        0x2f1b6  0      
  cmpb $0x0, 0x10001b03(%rip)                    #  31    0x2f1b6  7      
  je .L_2f420                                    #  32    0x2f1bd  6      
  nop                                            #  33    0x2f1c3  1      
  nop                                            #  34    0x2f1c4  1      
.L_2f200:                                        #        0x2f1c5  0      
  movl %eax, %eax                                #  35    0x2f1c5  2      
  movl 0x10(%r15,%rax,1), %eax                   #  36    0x2f1c7  5      
  movl %ebx, %ebx                                #  37    0x2f1cc  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  38    0x2f1ce  5      
  nop                                            #  39    0x2f1d3  1      
  andl $0xffffffe0, %eax                         #  40    0x2f1d4  5      
  addq %r15, %rax                                #  41    0x2f1d9  3      
  callq %rax                                     #  42    0x2f1dc  2      
  testl %eax, %eax                               #  43    0x2f1de  2      
  setne %al                                      #  44    0x2f1e0  3      
  nop                                            #  45    0x2f1e3  1      
  nop                                            #  46    0x2f1e4  1      
.L_2f240:                                        #        0x2f1e5  0      
  popq %rbx                                      #  47    0x2f1e5  2      
  popq %r11                                      #  48    0x2f1e7  3      
  andl $0xffffffe0, %r11d                        #  49    0x2f1ea  7      
  addq %r15, %r11                                #  50    0x2f1f1  3      
  jmpq %r11                                      #  51    0x2f1f4  3      
  nop                                            #  52    0x2f1f7  1      
  nop                                            #  53    0x2f1f8  1      
.L_2f260:                                        #        0x2f1f9  0      
  movl $0x10030cc0, %edi                         #  54    0x2f1f9  5      
  nop                                            #  55    0x2f1fe  1      
  nop                                            #  56    0x2f1ff  1      
  callq .__cxa_guard_acquire                     #  57    0x2f200  5      
  testl %eax, %eax                               #  58    0x2f205  2      
  je .L_2f180                                    #  59    0x2f207  6      
  nop                                            #  60    0x2f20d  1      
  nop                                            #  61    0x2f20e  1      
  callq ._ZN2pp6Module3GetEv                     #  62    0x2f20f  5      
  movl %eax, %edi                                #  63    0x2f214  2      
  movl $0x10020632, %esi                         #  64    0x2f216  5      
  nop                                            #  65    0x2f21b  1      
  nop                                            #  66    0x2f21c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  67    0x2f21d  5      
  movl $0x10030cc0, %edi                         #  68    0x2f222  5      
  movl %eax, 0x10001a9b(%rip)                    #  69    0x2f227  6      
  nop                                            #  70    0x2f22d  1      
  nop                                            #  71    0x2f22e  1      
  callq .__cxa_guard_release                     #  72    0x2f22f  5      
  jmpq .L_2f180                                  #  73    0x2f234  5      
  nop                                            #  74    0x2f239  1      
  nop                                            #  75    0x2f23a  1      
.L_2f300:                                        #        0x2f23b  0      
  cmpb $0x0, 0x10001a6e(%rip)                    #  76    0x2f23b  7      
  jne .L_2f200                                   #  77    0x2f242  6      
  movl $0x10030cb0, %edi                         #  78    0x2f248  5      
  nop                                            #  79    0x2f24d  1      
  callq .__cxa_guard_acquire                     #  80    0x2f24e  5      
  testl %eax, %eax                               #  81    0x2f253  2      
  jne .L_2f580                                   #  82    0x2f255  6      
  nop                                            #  83    0x2f25b  1      
  nop                                            #  84    0x2f25c  1      
.L_2f340:                                        #        0x2f25d  0      
  movl 0x10001a55(%rip), %eax                    #  85    0x2f25d  6      
  movl %ebx, %ebx                                #  86    0x2f263  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  87    0x2f265  5      
  movl %eax, %eax                                #  88    0x2f26a  2      
  movl 0x10(%r15,%rax,1), %eax                   #  89    0x2f26c  5      
  nop                                            #  90    0x2f271  1      
  andl $0xffffffe0, %eax                         #  91    0x2f272  5      
  addq %r15, %rax                                #  92    0x2f277  3      
  callq %rax                                     #  93    0x2f27a  2      
  testl %eax, %eax                               #  94    0x2f27c  2      
  setne %al                                      #  95    0x2f27e  3      
  jmpq .L_2f240                                  #  96    0x2f281  5      
  nop                                            #  97    0x2f286  1      
  nop                                            #  98    0x2f287  1      
.L_2f380:                                        #        0x2f288  0      
  movl $0x10030cb0, %edi                         #  99    0x2f288  5      
  nop                                            #  100   0x2f28d  1      
  nop                                            #  101   0x2f28e  1      
  callq .__cxa_guard_acquire                     #  102   0x2f28f  5      
  testl %eax, %eax                               #  103   0x2f294  2      
  je .L_2f160                                    #  104   0x2f296  6      
  nop                                            #  105   0x2f29c  1      
  nop                                            #  106   0x2f29d  1      
  callq ._ZN2pp6Module3GetEv                     #  107   0x2f29e  5      
  movl %eax, %edi                                #  108   0x2f2a3  2      
  movl $0x10020625, %esi                         #  109   0x2f2a5  5      
  nop                                            #  110   0x2f2aa  1      
  nop                                            #  111   0x2f2ab  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  112   0x2f2ac  5      
  movl $0x10030cb0, %edi                         #  113   0x2f2b1  5      
  movl %eax, 0x100019fc(%rip)                    #  114   0x2f2b6  6      
  nop                                            #  115   0x2f2bc  1      
  nop                                            #  116   0x2f2bd  1      
  callq .__cxa_guard_release                     #  117   0x2f2be  5      
  jmpq .L_2f160                                  #  118   0x2f2c3  5      
  nop                                            #  119   0x2f2c8  1      
  nop                                            #  120   0x2f2c9  1      
.L_2f420:                                        #        0x2f2ca  0      
  movl $0x10030cc0, %edi                         #  121   0x2f2ca  5      
  nop                                            #  122   0x2f2cf  1      
  nop                                            #  123   0x2f2d0  1      
  callq .__cxa_guard_acquire                     #  124   0x2f2d1  5      
  testl %eax, %eax                               #  125   0x2f2d6  2      
  jne .L_2f6e0                                   #  126   0x2f2d8  6      
  nop                                            #  127   0x2f2de  1      
  nop                                            #  128   0x2f2df  1      
.L_2f460:                                        #        0x2f2e0  0      
  movl 0x100019e2(%rip), %eax                    #  129   0x2f2e0  6      
  jmpq .L_2f200                                  #  130   0x2f2e6  5      
  nop                                            #  131   0x2f2eb  1      
  nop                                            #  132   0x2f2ec  1      
.L_2f480:                                        #        0x2f2ed  0      
  cmpb $0x0, 0x100019dc(%rip)                    #  133   0x2f2ed  7      
  je .L_2f600                                    #  134   0x2f2f4  6      
  nop                                            #  135   0x2f2fa  1      
  nop                                            #  136   0x2f2fb  1      
.L_2f4a0:                                        #        0x2f2fc  0      
  movl %edx, %edx                                #  137   0x2f2fc  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  138   0x2f2fe  5      
  movl %ebx, %ebx                                #  139   0x2f303  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  140   0x2f305  5      
  nop                                            #  141   0x2f30a  1      
  andl $0xffffffe0, %eax                         #  142   0x2f30b  5      
  addq %r15, %rax                                #  143   0x2f310  3      
  callq %rax                                     #  144   0x2f313  2      
  popq %rbx                                      #  145   0x2f315  2      
  popq %r11                                      #  146   0x2f317  3      
  testl %eax, %eax                               #  147   0x2f31a  2      
  setne %al                                      #  148   0x2f31c  3      
  andl $0xffffffe0, %r11d                        #  149   0x2f31f  7      
  addq %r15, %r11                                #  150   0x2f326  3      
  jmpq %r11                                      #  151   0x2f329  3      
  nop                                            #  152   0x2f32c  1      
.L_2f4e0:                                        #        0x2f32d  0      
  movl $0x10030cd0, %edi                         #  153   0x2f32d  5      
  nop                                            #  154   0x2f332  1      
  nop                                            #  155   0x2f333  1      
  callq .__cxa_guard_acquire                     #  156   0x2f334  5      
  testl %eax, %eax                               #  157   0x2f339  2      
  je .L_2f1a0                                    #  158   0x2f33b  6      
  nop                                            #  159   0x2f341  1      
  nop                                            #  160   0x2f342  1      
  callq ._ZN2pp6Module3GetEv                     #  161   0x2f343  5      
  movl %eax, %edi                                #  162   0x2f348  2      
  movl $0x10020618, %esi                         #  163   0x2f34a  5      
  nop                                            #  164   0x2f34f  1      
  nop                                            #  165   0x2f350  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  166   0x2f351  5      
  movl $0x10030cd0, %edi                         #  167   0x2f356  5      
  movl %eax, 0x10001977(%rip)                    #  168   0x2f35b  6      
  nop                                            #  169   0x2f361  1      
  nop                                            #  170   0x2f362  1      
  callq .__cxa_guard_release                     #  171   0x2f363  5      
  jmpq .L_2f1a0                                  #  172   0x2f368  5      
  nop                                            #  173   0x2f36d  1      
  nop                                            #  174   0x2f36e  1      
.L_2f580:                                        #        0x2f36f  0      
  nop                                            #  175   0x2f36f  1      
  nop                                            #  176   0x2f370  1      
  callq ._ZN2pp6Module3GetEv                     #  177   0x2f371  5      
  movl %eax, %edi                                #  178   0x2f376  2      
  movl $0x10020625, %esi                         #  179   0x2f378  5      
  nop                                            #  180   0x2f37d  1      
  nop                                            #  181   0x2f37e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  182   0x2f37f  5      
  movl $0x10030cb0, %edi                         #  183   0x2f384  5      
  movl %eax, 0x10001929(%rip)                    #  184   0x2f389  6      
  nop                                            #  185   0x2f38f  1      
  nop                                            #  186   0x2f390  1      
  callq .__cxa_guard_release                     #  187   0x2f391  5      
  jmpq .L_2f340                                  #  188   0x2f396  5      
  nop                                            #  189   0x2f39b  1      
  nop                                            #  190   0x2f39c  1      
.L_2f600:                                        #        0x2f39d  0      
  movl $0x10030cd0, %edi                         #  191   0x2f39d  5      
  nop                                            #  192   0x2f3a2  1      
  nop                                            #  193   0x2f3a3  1      
  callq .__cxa_guard_acquire                     #  194   0x2f3a4  5      
  testl %eax, %eax                               #  195   0x2f3a9  2      
  jne .L_2f660                                   #  196   0x2f3ab  6      
  nop                                            #  197   0x2f3b1  1      
  nop                                            #  198   0x2f3b2  1      
.L_2f640:                                        #        0x2f3b3  0      
  movl 0x1000191f(%rip), %edx                    #  199   0x2f3b3  6      
  jmpq .L_2f4a0                                  #  200   0x2f3b9  5      
  nop                                            #  201   0x2f3be  1      
  nop                                            #  202   0x2f3bf  1      
.L_2f660:                                        #        0x2f3c0  0      
  nop                                            #  203   0x2f3c0  1      
  nop                                            #  204   0x2f3c1  1      
  callq ._ZN2pp6Module3GetEv                     #  205   0x2f3c2  5      
  movl %eax, %edi                                #  206   0x2f3c7  2      
  movl $0x10020618, %esi                         #  207   0x2f3c9  5      
  nop                                            #  208   0x2f3ce  1      
  nop                                            #  209   0x2f3cf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  210   0x2f3d0  5      
  movl $0x10030cd0, %edi                         #  211   0x2f3d5  5      
  movl %eax, 0x100018f8(%rip)                    #  212   0x2f3da  6      
  nop                                            #  213   0x2f3e0  1      
  nop                                            #  214   0x2f3e1  1      
  callq .__cxa_guard_release                     #  215   0x2f3e2  5      
  jmpq .L_2f640                                  #  216   0x2f3e7  5      
  nop                                            #  217   0x2f3ec  1      
  nop                                            #  218   0x2f3ed  1      
.L_2f6e0:                                        #        0x2f3ee  0      
  nop                                            #  219   0x2f3ee  1      
  nop                                            #  220   0x2f3ef  1      
  callq ._ZN2pp6Module3GetEv                     #  221   0x2f3f0  5      
  movl %eax, %edi                                #  222   0x2f3f5  2      
  movl $0x10020632, %esi                         #  223   0x2f3f7  5      
  nop                                            #  224   0x2f3fc  1      
  nop                                            #  225   0x2f3fd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  226   0x2f3fe  5      
  movl $0x10030cc0, %edi                         #  227   0x2f403  5      
  movl %eax, 0x100018ba(%rip)                    #  228   0x2f408  6      
  nop                                            #  229   0x2f40e  1      
  nop                                            #  230   0x2f40f  1      
  callq .__cxa_guard_release                     #  231   0x2f410  5      
  jmpq .L_2f460                                  #  232   0x2f415  5      
  nop                                            #  233   0x2f41a  1      
  nop                                            #  234   0x2f41b  1      
.L_2f760:                                        #        0x2f41c  0      
  movl %eax, %ebx                                #  235   0x2f41c  2      
  movl $0x10030cb0, %edi                         #  236   0x2f41e  5      
  nop                                            #  237   0x2f423  1      
  nop                                            #  238   0x2f424  1      
  callq .__cxa_guard_abort                       #  239   0x2f425  5      
  movl %ebx, %edi                                #  240   0x2f42a  2      
  nop                                            #  241   0x2f42c  1      
  nop                                            #  242   0x2f42d  1      
  callq ._Unwind_Resume                          #  243   0x2f42e  5      
.L_2f7a0:                                        #        0x2f433  0      
  movl %eax, %ebx                                #  244   0x2f433  2      
  movl $0x10030cc0, %edi                         #  245   0x2f435  5      
  nop                                            #  246   0x2f43a  1      
  nop                                            #  247   0x2f43b  1      
  callq .__cxa_guard_abort                       #  248   0x2f43c  5      
  movl %ebx, %edi                                #  249   0x2f441  2      
  nop                                            #  250   0x2f443  1      
  nop                                            #  251   0x2f444  1      
  callq ._Unwind_Resume                          #  252   0x2f445  5      
  jmpq .L_2f7a0                                  #  253   0x2f44a  5      
  nop                                            #  254   0x2f44f  1      
  nop                                            #  255   0x2f450  1      
  jmpq .L_2f760                                  #  256   0x2f451  5      
  nop                                            #  257   0x2f456  1      
  nop                                            #  258   0x2f457  1      
.L_2f820:                                        #        0x2f458  0      
  movl %eax, %ebx                                #  259   0x2f458  2      
  movl $0x10030cd0, %edi                         #  260   0x2f45a  5      
  nop                                            #  261   0x2f45f  1      
  nop                                            #  262   0x2f460  1      
  callq .__cxa_guard_abort                       #  263   0x2f461  5      
  movl %ebx, %edi                                #  264   0x2f466  2      
  nop                                            #  265   0x2f468  1      
  nop                                            #  266   0x2f469  1      
  callq ._Unwind_Resume                          #  267   0x2f46a  5      
  jmpq .L_2f820                                  #  268   0x2f46f  5      
  nop                                            #  269   0x2f474  1      
  nop                                            #  270   0x2f475  1      
                                                                          
.size _ZNK2pp4View13IsPageVisibleEv, .-_ZNK2pp4View13IsPageVisibleEv

