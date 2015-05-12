  .text
  .globl _ZNK2pp4View13IsPageVisibleEv
  .type _ZNK2pp4View13IsPageVisibleEv, @function

#! file-offset 0x2f160
#! rip-offset  0x2f160
#! capacity    1856 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View13IsPageVisibleEv:                  #        0x2f160  0      
  cmpb $0x0, 0x10001b49(%rip)                    #  1     0x2f160  7      
  pushq %rbx                                     #  2     0x2f167  2      
  movl %edi, %ebx                                #  3     0x2f169  2      
  je .L_2f3a0                                    #  4     0x2f16b  6      
  nop                                            #  5     0x2f171  1      
  nop                                            #  6     0x2f172  1      
.L_2f180:                                        #        0x2f173  0      
  movl 0x10001b3f(%rip), %eax                    #  7     0x2f173  6      
  testq %rax, %rax                               #  8     0x2f179  3      
  jne .L_2f320                                   #  9     0x2f17c  6      
  cmpb $0x0, 0x10001b37(%rip)                    #  10    0x2f182  7      
  je .L_2f280                                    #  11    0x2f189  6      
  nop                                            #  12    0x2f18f  1      
.L_2f1a0:                                        #        0x2f190  0      
  movl 0x10001b32(%rip), %eax                    #  13    0x2f190  6      
  testq %rax, %rax                               #  14    0x2f196  3      
  jne .L_2f200                                   #  15    0x2f199  6      
  cmpb $0x0, 0x10001b2a(%rip)                    #  16    0x2f19f  7      
  je .L_2f500                                    #  17    0x2f1a6  6      
  nop                                            #  18    0x2f1ac  1      
.L_2f1c0:                                        #        0x2f1ad  0      
  movl 0x10001b25(%rip), %edx                    #  19    0x2f1ad  6      
  movl $0x1, %eax                                #  20    0x2f1b3  5      
  testq %rdx, %rdx                               #  21    0x2f1b8  3      
  jne .L_2f4a0                                   #  22    0x2f1bb  6      
  popq %rbx                                      #  23    0x2f1c1  2      
  popq %r11                                      #  24    0x2f1c3  3      
  nop                                            #  25    0x2f1c6  1      
  andl $0xffffffe0, %r11d                        #  26    0x2f1c7  7      
  addq %r15, %r11                                #  27    0x2f1ce  3      
  jmpq %r11                                      #  28    0x2f1d1  3      
  nop                                            #  29    0x2f1d4  1      
  nop                                            #  30    0x2f1d5  1      
.L_2f200:                                        #        0x2f1d6  0      
  cmpb $0x0, 0x10001ae3(%rip)                    #  31    0x2f1d6  7      
  je .L_2f440                                    #  32    0x2f1dd  6      
  nop                                            #  33    0x2f1e3  1      
  nop                                            #  34    0x2f1e4  1      
.L_2f220:                                        #        0x2f1e5  0      
  movl %eax, %eax                                #  35    0x2f1e5  2      
  movl 0x10(%r15,%rax,1), %eax                   #  36    0x2f1e7  5      
  movl %ebx, %ebx                                #  37    0x2f1ec  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  38    0x2f1ee  5      
  nop                                            #  39    0x2f1f3  1      
  andl $0xffffffe0, %eax                         #  40    0x2f1f4  5      
  addq %r15, %rax                                #  41    0x2f1f9  3      
  callq %rax                                     #  42    0x2f1fc  2      
  testl %eax, %eax                               #  43    0x2f1fe  2      
  setne %al                                      #  44    0x2f200  3      
  nop                                            #  45    0x2f203  1      
  nop                                            #  46    0x2f204  1      
.L_2f260:                                        #        0x2f205  0      
  popq %rbx                                      #  47    0x2f205  2      
  popq %r11                                      #  48    0x2f207  3      
  andl $0xffffffe0, %r11d                        #  49    0x2f20a  7      
  addq %r15, %r11                                #  50    0x2f211  3      
  jmpq %r11                                      #  51    0x2f214  3      
  nop                                            #  52    0x2f217  1      
  nop                                            #  53    0x2f218  1      
.L_2f280:                                        #        0x2f219  0      
  movl $0x10030cc0, %edi                         #  54    0x2f219  5      
  nop                                            #  55    0x2f21e  1      
  nop                                            #  56    0x2f21f  1      
  callq .__cxa_guard_acquire                     #  57    0x2f220  5      
  testl %eax, %eax                               #  58    0x2f225  2      
  je .L_2f1a0                                    #  59    0x2f227  6      
  nop                                            #  60    0x2f22d  1      
  nop                                            #  61    0x2f22e  1      
  callq ._ZN2pp6Module3GetEv                     #  62    0x2f22f  5      
  movl %eax, %edi                                #  63    0x2f234  2      
  movl $0x10020632, %esi                         #  64    0x2f236  5      
  nop                                            #  65    0x2f23b  1      
  nop                                            #  66    0x2f23c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  67    0x2f23d  5      
  movl $0x10030cc0, %edi                         #  68    0x2f242  5      
  movl %eax, 0x10001a7b(%rip)                    #  69    0x2f247  6      
  nop                                            #  70    0x2f24d  1      
  nop                                            #  71    0x2f24e  1      
  callq .__cxa_guard_release                     #  72    0x2f24f  5      
  jmpq .L_2f1a0                                  #  73    0x2f254  5      
  nop                                            #  74    0x2f259  1      
  nop                                            #  75    0x2f25a  1      
.L_2f320:                                        #        0x2f25b  0      
  cmpb $0x0, 0x10001a4e(%rip)                    #  76    0x2f25b  7      
  jne .L_2f220                                   #  77    0x2f262  6      
  movl $0x10030cb0, %edi                         #  78    0x2f268  5      
  nop                                            #  79    0x2f26d  1      
  callq .__cxa_guard_acquire                     #  80    0x2f26e  5      
  testl %eax, %eax                               #  81    0x2f273  2      
  jne .L_2f5a0                                   #  82    0x2f275  6      
  nop                                            #  83    0x2f27b  1      
  nop                                            #  84    0x2f27c  1      
.L_2f360:                                        #        0x2f27d  0      
  movl 0x10001a35(%rip), %eax                    #  85    0x2f27d  6      
  movl %ebx, %ebx                                #  86    0x2f283  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  87    0x2f285  5      
  movl %eax, %eax                                #  88    0x2f28a  2      
  movl 0x10(%r15,%rax,1), %eax                   #  89    0x2f28c  5      
  nop                                            #  90    0x2f291  1      
  andl $0xffffffe0, %eax                         #  91    0x2f292  5      
  addq %r15, %rax                                #  92    0x2f297  3      
  callq %rax                                     #  93    0x2f29a  2      
  testl %eax, %eax                               #  94    0x2f29c  2      
  setne %al                                      #  95    0x2f29e  3      
  jmpq .L_2f260                                  #  96    0x2f2a1  5      
  nop                                            #  97    0x2f2a6  1      
  nop                                            #  98    0x2f2a7  1      
.L_2f3a0:                                        #        0x2f2a8  0      
  movl $0x10030cb0, %edi                         #  99    0x2f2a8  5      
  nop                                            #  100   0x2f2ad  1      
  nop                                            #  101   0x2f2ae  1      
  callq .__cxa_guard_acquire                     #  102   0x2f2af  5      
  testl %eax, %eax                               #  103   0x2f2b4  2      
  je .L_2f180                                    #  104   0x2f2b6  6      
  nop                                            #  105   0x2f2bc  1      
  nop                                            #  106   0x2f2bd  1      
  callq ._ZN2pp6Module3GetEv                     #  107   0x2f2be  5      
  movl %eax, %edi                                #  108   0x2f2c3  2      
  movl $0x10020625, %esi                         #  109   0x2f2c5  5      
  nop                                            #  110   0x2f2ca  1      
  nop                                            #  111   0x2f2cb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  112   0x2f2cc  5      
  movl $0x10030cb0, %edi                         #  113   0x2f2d1  5      
  movl %eax, 0x100019dc(%rip)                    #  114   0x2f2d6  6      
  nop                                            #  115   0x2f2dc  1      
  nop                                            #  116   0x2f2dd  1      
  callq .__cxa_guard_release                     #  117   0x2f2de  5      
  jmpq .L_2f180                                  #  118   0x2f2e3  5      
  nop                                            #  119   0x2f2e8  1      
  nop                                            #  120   0x2f2e9  1      
.L_2f440:                                        #        0x2f2ea  0      
  movl $0x10030cc0, %edi                         #  121   0x2f2ea  5      
  nop                                            #  122   0x2f2ef  1      
  nop                                            #  123   0x2f2f0  1      
  callq .__cxa_guard_acquire                     #  124   0x2f2f1  5      
  testl %eax, %eax                               #  125   0x2f2f6  2      
  jne .L_2f700                                   #  126   0x2f2f8  6      
  nop                                            #  127   0x2f2fe  1      
  nop                                            #  128   0x2f2ff  1      
.L_2f480:                                        #        0x2f300  0      
  movl 0x100019c2(%rip), %eax                    #  129   0x2f300  6      
  jmpq .L_2f220                                  #  130   0x2f306  5      
  nop                                            #  131   0x2f30b  1      
  nop                                            #  132   0x2f30c  1      
.L_2f4a0:                                        #        0x2f30d  0      
  cmpb $0x0, 0x100019bc(%rip)                    #  133   0x2f30d  7      
  je .L_2f620                                    #  134   0x2f314  6      
  nop                                            #  135   0x2f31a  1      
  nop                                            #  136   0x2f31b  1      
.L_2f4c0:                                        #        0x2f31c  0      
  movl %edx, %edx                                #  137   0x2f31c  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  138   0x2f31e  5      
  movl %ebx, %ebx                                #  139   0x2f323  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  140   0x2f325  5      
  nop                                            #  141   0x2f32a  1      
  andl $0xffffffe0, %eax                         #  142   0x2f32b  5      
  addq %r15, %rax                                #  143   0x2f330  3      
  callq %rax                                     #  144   0x2f333  2      
  popq %rbx                                      #  145   0x2f335  2      
  popq %r11                                      #  146   0x2f337  3      
  testl %eax, %eax                               #  147   0x2f33a  2      
  setne %al                                      #  148   0x2f33c  3      
  andl $0xffffffe0, %r11d                        #  149   0x2f33f  7      
  addq %r15, %r11                                #  150   0x2f346  3      
  jmpq %r11                                      #  151   0x2f349  3      
  nop                                            #  152   0x2f34c  1      
.L_2f500:                                        #        0x2f34d  0      
  movl $0x10030cd0, %edi                         #  153   0x2f34d  5      
  nop                                            #  154   0x2f352  1      
  nop                                            #  155   0x2f353  1      
  callq .__cxa_guard_acquire                     #  156   0x2f354  5      
  testl %eax, %eax                               #  157   0x2f359  2      
  je .L_2f1c0                                    #  158   0x2f35b  6      
  nop                                            #  159   0x2f361  1      
  nop                                            #  160   0x2f362  1      
  callq ._ZN2pp6Module3GetEv                     #  161   0x2f363  5      
  movl %eax, %edi                                #  162   0x2f368  2      
  movl $0x10020618, %esi                         #  163   0x2f36a  5      
  nop                                            #  164   0x2f36f  1      
  nop                                            #  165   0x2f370  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  166   0x2f371  5      
  movl $0x10030cd0, %edi                         #  167   0x2f376  5      
  movl %eax, 0x10001957(%rip)                    #  168   0x2f37b  6      
  nop                                            #  169   0x2f381  1      
  nop                                            #  170   0x2f382  1      
  callq .__cxa_guard_release                     #  171   0x2f383  5      
  jmpq .L_2f1c0                                  #  172   0x2f388  5      
  nop                                            #  173   0x2f38d  1      
  nop                                            #  174   0x2f38e  1      
.L_2f5a0:                                        #        0x2f38f  0      
  nop                                            #  175   0x2f38f  1      
  nop                                            #  176   0x2f390  1      
  callq ._ZN2pp6Module3GetEv                     #  177   0x2f391  5      
  movl %eax, %edi                                #  178   0x2f396  2      
  movl $0x10020625, %esi                         #  179   0x2f398  5      
  nop                                            #  180   0x2f39d  1      
  nop                                            #  181   0x2f39e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  182   0x2f39f  5      
  movl $0x10030cb0, %edi                         #  183   0x2f3a4  5      
  movl %eax, 0x10001909(%rip)                    #  184   0x2f3a9  6      
  nop                                            #  185   0x2f3af  1      
  nop                                            #  186   0x2f3b0  1      
  callq .__cxa_guard_release                     #  187   0x2f3b1  5      
  jmpq .L_2f360                                  #  188   0x2f3b6  5      
  nop                                            #  189   0x2f3bb  1      
  nop                                            #  190   0x2f3bc  1      
.L_2f620:                                        #        0x2f3bd  0      
  movl $0x10030cd0, %edi                         #  191   0x2f3bd  5      
  nop                                            #  192   0x2f3c2  1      
  nop                                            #  193   0x2f3c3  1      
  callq .__cxa_guard_acquire                     #  194   0x2f3c4  5      
  testl %eax, %eax                               #  195   0x2f3c9  2      
  jne .L_2f680                                   #  196   0x2f3cb  6      
  nop                                            #  197   0x2f3d1  1      
  nop                                            #  198   0x2f3d2  1      
.L_2f660:                                        #        0x2f3d3  0      
  movl 0x100018ff(%rip), %edx                    #  199   0x2f3d3  6      
  jmpq .L_2f4c0                                  #  200   0x2f3d9  5      
  nop                                            #  201   0x2f3de  1      
  nop                                            #  202   0x2f3df  1      
.L_2f680:                                        #        0x2f3e0  0      
  nop                                            #  203   0x2f3e0  1      
  nop                                            #  204   0x2f3e1  1      
  callq ._ZN2pp6Module3GetEv                     #  205   0x2f3e2  5      
  movl %eax, %edi                                #  206   0x2f3e7  2      
  movl $0x10020618, %esi                         #  207   0x2f3e9  5      
  nop                                            #  208   0x2f3ee  1      
  nop                                            #  209   0x2f3ef  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  210   0x2f3f0  5      
  movl $0x10030cd0, %edi                         #  211   0x2f3f5  5      
  movl %eax, 0x100018d8(%rip)                    #  212   0x2f3fa  6      
  nop                                            #  213   0x2f400  1      
  nop                                            #  214   0x2f401  1      
  callq .__cxa_guard_release                     #  215   0x2f402  5      
  jmpq .L_2f660                                  #  216   0x2f407  5      
  nop                                            #  217   0x2f40c  1      
  nop                                            #  218   0x2f40d  1      
.L_2f700:                                        #        0x2f40e  0      
  nop                                            #  219   0x2f40e  1      
  nop                                            #  220   0x2f40f  1      
  callq ._ZN2pp6Module3GetEv                     #  221   0x2f410  5      
  movl %eax, %edi                                #  222   0x2f415  2      
  movl $0x10020632, %esi                         #  223   0x2f417  5      
  nop                                            #  224   0x2f41c  1      
  nop                                            #  225   0x2f41d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  226   0x2f41e  5      
  movl $0x10030cc0, %edi                         #  227   0x2f423  5      
  movl %eax, 0x1000189a(%rip)                    #  228   0x2f428  6      
  nop                                            #  229   0x2f42e  1      
  nop                                            #  230   0x2f42f  1      
  callq .__cxa_guard_release                     #  231   0x2f430  5      
  jmpq .L_2f480                                  #  232   0x2f435  5      
  nop                                            #  233   0x2f43a  1      
  nop                                            #  234   0x2f43b  1      
.L_2f780:                                        #        0x2f43c  0      
  movl %eax, %ebx                                #  235   0x2f43c  2      
  movl $0x10030cb0, %edi                         #  236   0x2f43e  5      
  nop                                            #  237   0x2f443  1      
  nop                                            #  238   0x2f444  1      
  callq .__cxa_guard_abort                       #  239   0x2f445  5      
  movl %ebx, %edi                                #  240   0x2f44a  2      
  nop                                            #  241   0x2f44c  1      
  nop                                            #  242   0x2f44d  1      
  callq ._Unwind_Resume                          #  243   0x2f44e  5      
.L_2f7c0:                                        #        0x2f453  0      
  movl %eax, %ebx                                #  244   0x2f453  2      
  movl $0x10030cc0, %edi                         #  245   0x2f455  5      
  nop                                            #  246   0x2f45a  1      
  nop                                            #  247   0x2f45b  1      
  callq .__cxa_guard_abort                       #  248   0x2f45c  5      
  movl %ebx, %edi                                #  249   0x2f461  2      
  nop                                            #  250   0x2f463  1      
  nop                                            #  251   0x2f464  1      
  callq ._Unwind_Resume                          #  252   0x2f465  5      
  jmpq .L_2f7c0                                  #  253   0x2f46a  5      
  nop                                            #  254   0x2f46f  1      
  nop                                            #  255   0x2f470  1      
  jmpq .L_2f780                                  #  256   0x2f471  5      
  nop                                            #  257   0x2f476  1      
  nop                                            #  258   0x2f477  1      
.L_2f840:                                        #        0x2f478  0      
  movl %eax, %ebx                                #  259   0x2f478  2      
  movl $0x10030cd0, %edi                         #  260   0x2f47a  5      
  nop                                            #  261   0x2f47f  1      
  nop                                            #  262   0x2f480  1      
  callq .__cxa_guard_abort                       #  263   0x2f481  5      
  movl %ebx, %edi                                #  264   0x2f486  2      
  nop                                            #  265   0x2f488  1      
  nop                                            #  266   0x2f489  1      
  callq ._Unwind_Resume                          #  267   0x2f48a  5      
  jmpq .L_2f840                                  #  268   0x2f48f  5      
  nop                                            #  269   0x2f494  1      
  nop                                            #  270   0x2f495  1      
                                                                          
.size _ZNK2pp4View13IsPageVisibleEv, .-_ZNK2pp4View13IsPageVisibleEv

