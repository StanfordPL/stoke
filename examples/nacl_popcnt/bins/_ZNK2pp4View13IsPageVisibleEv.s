  .text
  .globl _ZNK2pp4View13IsPageVisibleEv
  .type _ZNK2pp4View13IsPageVisibleEv, @function

#! file-offset 0x2f1e0
#! rip-offset  0x2f1e0
#! capacity    1856 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View13IsPageVisibleEv:                  #        0x2f1e0  0      
  cmpb $0x0, 0x10001ac9(%rip)                    #  1     0x2f1e0  7      
  pushq %rbx                                     #  2     0x2f1e7  2      
  movl %edi, %ebx                                #  3     0x2f1e9  2      
  je .L_2f420                                    #  4     0x2f1eb  6      
  nop                                            #  5     0x2f1f1  1      
  nop                                            #  6     0x2f1f2  1      
.L_2f200:                                        #        0x2f1f3  0      
  movl 0x10001abf(%rip), %eax                    #  7     0x2f1f3  6      
  testq %rax, %rax                               #  8     0x2f1f9  3      
  jne .L_2f3a0                                   #  9     0x2f1fc  6      
  cmpb $0x0, 0x10001ab7(%rip)                    #  10    0x2f202  7      
  je .L_2f300                                    #  11    0x2f209  6      
  nop                                            #  12    0x2f20f  1      
.L_2f220:                                        #        0x2f210  0      
  movl 0x10001ab2(%rip), %eax                    #  13    0x2f210  6      
  testq %rax, %rax                               #  14    0x2f216  3      
  jne .L_2f280                                   #  15    0x2f219  6      
  cmpb $0x0, 0x10001aaa(%rip)                    #  16    0x2f21f  7      
  je .L_2f580                                    #  17    0x2f226  6      
  nop                                            #  18    0x2f22c  1      
.L_2f240:                                        #        0x2f22d  0      
  movl 0x10001aa5(%rip), %edx                    #  19    0x2f22d  6      
  movl $0x1, %eax                                #  20    0x2f233  5      
  testq %rdx, %rdx                               #  21    0x2f238  3      
  jne .L_2f520                                   #  22    0x2f23b  6      
  popq %rbx                                      #  23    0x2f241  2      
  popq %r11                                      #  24    0x2f243  3      
  nop                                            #  25    0x2f246  1      
  andl $0xffffffe0, %r11d                        #  26    0x2f247  7      
  addq %r15, %r11                                #  27    0x2f24e  3      
  jmpq %r11                                      #  28    0x2f251  3      
  nop                                            #  29    0x2f254  1      
  nop                                            #  30    0x2f255  1      
.L_2f280:                                        #        0x2f256  0      
  cmpb $0x0, 0x10001a63(%rip)                    #  31    0x2f256  7      
  je .L_2f4c0                                    #  32    0x2f25d  6      
  nop                                            #  33    0x2f263  1      
  nop                                            #  34    0x2f264  1      
.L_2f2a0:                                        #        0x2f265  0      
  movl %eax, %eax                                #  35    0x2f265  2      
  movl 0x10(%r15,%rax,1), %eax                   #  36    0x2f267  5      
  movl %ebx, %ebx                                #  37    0x2f26c  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  38    0x2f26e  5      
  nop                                            #  39    0x2f273  1      
  andl $0xffffffe0, %eax                         #  40    0x2f274  5      
  addq %r15, %rax                                #  41    0x2f279  3      
  callq %rax                                     #  42    0x2f27c  2      
  testl %eax, %eax                               #  43    0x2f27e  2      
  setne %al                                      #  44    0x2f280  3      
  nop                                            #  45    0x2f283  1      
  nop                                            #  46    0x2f284  1      
.L_2f2e0:                                        #        0x2f285  0      
  popq %rbx                                      #  47    0x2f285  2      
  popq %r11                                      #  48    0x2f287  3      
  andl $0xffffffe0, %r11d                        #  49    0x2f28a  7      
  addq %r15, %r11                                #  50    0x2f291  3      
  jmpq %r11                                      #  51    0x2f294  3      
  nop                                            #  52    0x2f297  1      
  nop                                            #  53    0x2f298  1      
.L_2f300:                                        #        0x2f299  0      
  movl $0x10030cc0, %edi                         #  54    0x2f299  5      
  nop                                            #  55    0x2f29e  1      
  nop                                            #  56    0x2f29f  1      
  callq .__cxa_guard_acquire                     #  57    0x2f2a0  5      
  testl %eax, %eax                               #  58    0x2f2a5  2      
  je .L_2f220                                    #  59    0x2f2a7  6      
  nop                                            #  60    0x2f2ad  1      
  nop                                            #  61    0x2f2ae  1      
  callq ._ZN2pp6Module3GetEv                     #  62    0x2f2af  5      
  movl %eax, %edi                                #  63    0x2f2b4  2      
  movl $0x10020632, %esi                         #  64    0x2f2b6  5      
  nop                                            #  65    0x2f2bb  1      
  nop                                            #  66    0x2f2bc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  67    0x2f2bd  5      
  movl $0x10030cc0, %edi                         #  68    0x2f2c2  5      
  movl %eax, 0x100019fb(%rip)                    #  69    0x2f2c7  6      
  nop                                            #  70    0x2f2cd  1      
  nop                                            #  71    0x2f2ce  1      
  callq .__cxa_guard_release                     #  72    0x2f2cf  5      
  jmpq .L_2f220                                  #  73    0x2f2d4  5      
  nop                                            #  74    0x2f2d9  1      
  nop                                            #  75    0x2f2da  1      
.L_2f3a0:                                        #        0x2f2db  0      
  cmpb $0x0, 0x100019ce(%rip)                    #  76    0x2f2db  7      
  jne .L_2f2a0                                   #  77    0x2f2e2  6      
  movl $0x10030cb0, %edi                         #  78    0x2f2e8  5      
  nop                                            #  79    0x2f2ed  1      
  callq .__cxa_guard_acquire                     #  80    0x2f2ee  5      
  testl %eax, %eax                               #  81    0x2f2f3  2      
  jne .L_2f620                                   #  82    0x2f2f5  6      
  nop                                            #  83    0x2f2fb  1      
  nop                                            #  84    0x2f2fc  1      
.L_2f3e0:                                        #        0x2f2fd  0      
  movl 0x100019b5(%rip), %eax                    #  85    0x2f2fd  6      
  movl %ebx, %ebx                                #  86    0x2f303  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  87    0x2f305  5      
  movl %eax, %eax                                #  88    0x2f30a  2      
  movl 0x10(%r15,%rax,1), %eax                   #  89    0x2f30c  5      
  nop                                            #  90    0x2f311  1      
  andl $0xffffffe0, %eax                         #  91    0x2f312  5      
  addq %r15, %rax                                #  92    0x2f317  3      
  callq %rax                                     #  93    0x2f31a  2      
  testl %eax, %eax                               #  94    0x2f31c  2      
  setne %al                                      #  95    0x2f31e  3      
  jmpq .L_2f2e0                                  #  96    0x2f321  5      
  nop                                            #  97    0x2f326  1      
  nop                                            #  98    0x2f327  1      
.L_2f420:                                        #        0x2f328  0      
  movl $0x10030cb0, %edi                         #  99    0x2f328  5      
  nop                                            #  100   0x2f32d  1      
  nop                                            #  101   0x2f32e  1      
  callq .__cxa_guard_acquire                     #  102   0x2f32f  5      
  testl %eax, %eax                               #  103   0x2f334  2      
  je .L_2f200                                    #  104   0x2f336  6      
  nop                                            #  105   0x2f33c  1      
  nop                                            #  106   0x2f33d  1      
  callq ._ZN2pp6Module3GetEv                     #  107   0x2f33e  5      
  movl %eax, %edi                                #  108   0x2f343  2      
  movl $0x10020625, %esi                         #  109   0x2f345  5      
  nop                                            #  110   0x2f34a  1      
  nop                                            #  111   0x2f34b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  112   0x2f34c  5      
  movl $0x10030cb0, %edi                         #  113   0x2f351  5      
  movl %eax, 0x1000195c(%rip)                    #  114   0x2f356  6      
  nop                                            #  115   0x2f35c  1      
  nop                                            #  116   0x2f35d  1      
  callq .__cxa_guard_release                     #  117   0x2f35e  5      
  jmpq .L_2f200                                  #  118   0x2f363  5      
  nop                                            #  119   0x2f368  1      
  nop                                            #  120   0x2f369  1      
.L_2f4c0:                                        #        0x2f36a  0      
  movl $0x10030cc0, %edi                         #  121   0x2f36a  5      
  nop                                            #  122   0x2f36f  1      
  nop                                            #  123   0x2f370  1      
  callq .__cxa_guard_acquire                     #  124   0x2f371  5      
  testl %eax, %eax                               #  125   0x2f376  2      
  jne .L_2f780                                   #  126   0x2f378  6      
  nop                                            #  127   0x2f37e  1      
  nop                                            #  128   0x2f37f  1      
.L_2f500:                                        #        0x2f380  0      
  movl 0x10001942(%rip), %eax                    #  129   0x2f380  6      
  jmpq .L_2f2a0                                  #  130   0x2f386  5      
  nop                                            #  131   0x2f38b  1      
  nop                                            #  132   0x2f38c  1      
.L_2f520:                                        #        0x2f38d  0      
  cmpb $0x0, 0x1000193c(%rip)                    #  133   0x2f38d  7      
  je .L_2f6a0                                    #  134   0x2f394  6      
  nop                                            #  135   0x2f39a  1      
  nop                                            #  136   0x2f39b  1      
.L_2f540:                                        #        0x2f39c  0      
  movl %edx, %edx                                #  137   0x2f39c  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  138   0x2f39e  5      
  movl %ebx, %ebx                                #  139   0x2f3a3  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  140   0x2f3a5  5      
  nop                                            #  141   0x2f3aa  1      
  andl $0xffffffe0, %eax                         #  142   0x2f3ab  5      
  addq %r15, %rax                                #  143   0x2f3b0  3      
  callq %rax                                     #  144   0x2f3b3  2      
  popq %rbx                                      #  145   0x2f3b5  2      
  popq %r11                                      #  146   0x2f3b7  3      
  testl %eax, %eax                               #  147   0x2f3ba  2      
  setne %al                                      #  148   0x2f3bc  3      
  andl $0xffffffe0, %r11d                        #  149   0x2f3bf  7      
  addq %r15, %r11                                #  150   0x2f3c6  3      
  jmpq %r11                                      #  151   0x2f3c9  3      
  nop                                            #  152   0x2f3cc  1      
.L_2f580:                                        #        0x2f3cd  0      
  movl $0x10030cd0, %edi                         #  153   0x2f3cd  5      
  nop                                            #  154   0x2f3d2  1      
  nop                                            #  155   0x2f3d3  1      
  callq .__cxa_guard_acquire                     #  156   0x2f3d4  5      
  testl %eax, %eax                               #  157   0x2f3d9  2      
  je .L_2f240                                    #  158   0x2f3db  6      
  nop                                            #  159   0x2f3e1  1      
  nop                                            #  160   0x2f3e2  1      
  callq ._ZN2pp6Module3GetEv                     #  161   0x2f3e3  5      
  movl %eax, %edi                                #  162   0x2f3e8  2      
  movl $0x10020618, %esi                         #  163   0x2f3ea  5      
  nop                                            #  164   0x2f3ef  1      
  nop                                            #  165   0x2f3f0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  166   0x2f3f1  5      
  movl $0x10030cd0, %edi                         #  167   0x2f3f6  5      
  movl %eax, 0x100018d7(%rip)                    #  168   0x2f3fb  6      
  nop                                            #  169   0x2f401  1      
  nop                                            #  170   0x2f402  1      
  callq .__cxa_guard_release                     #  171   0x2f403  5      
  jmpq .L_2f240                                  #  172   0x2f408  5      
  nop                                            #  173   0x2f40d  1      
  nop                                            #  174   0x2f40e  1      
.L_2f620:                                        #        0x2f40f  0      
  nop                                            #  175   0x2f40f  1      
  nop                                            #  176   0x2f410  1      
  callq ._ZN2pp6Module3GetEv                     #  177   0x2f411  5      
  movl %eax, %edi                                #  178   0x2f416  2      
  movl $0x10020625, %esi                         #  179   0x2f418  5      
  nop                                            #  180   0x2f41d  1      
  nop                                            #  181   0x2f41e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  182   0x2f41f  5      
  movl $0x10030cb0, %edi                         #  183   0x2f424  5      
  movl %eax, 0x10001889(%rip)                    #  184   0x2f429  6      
  nop                                            #  185   0x2f42f  1      
  nop                                            #  186   0x2f430  1      
  callq .__cxa_guard_release                     #  187   0x2f431  5      
  jmpq .L_2f3e0                                  #  188   0x2f436  5      
  nop                                            #  189   0x2f43b  1      
  nop                                            #  190   0x2f43c  1      
.L_2f6a0:                                        #        0x2f43d  0      
  movl $0x10030cd0, %edi                         #  191   0x2f43d  5      
  nop                                            #  192   0x2f442  1      
  nop                                            #  193   0x2f443  1      
  callq .__cxa_guard_acquire                     #  194   0x2f444  5      
  testl %eax, %eax                               #  195   0x2f449  2      
  jne .L_2f700                                   #  196   0x2f44b  6      
  nop                                            #  197   0x2f451  1      
  nop                                            #  198   0x2f452  1      
.L_2f6e0:                                        #        0x2f453  0      
  movl 0x1000187f(%rip), %edx                    #  199   0x2f453  6      
  jmpq .L_2f540                                  #  200   0x2f459  5      
  nop                                            #  201   0x2f45e  1      
  nop                                            #  202   0x2f45f  1      
.L_2f700:                                        #        0x2f460  0      
  nop                                            #  203   0x2f460  1      
  nop                                            #  204   0x2f461  1      
  callq ._ZN2pp6Module3GetEv                     #  205   0x2f462  5      
  movl %eax, %edi                                #  206   0x2f467  2      
  movl $0x10020618, %esi                         #  207   0x2f469  5      
  nop                                            #  208   0x2f46e  1      
  nop                                            #  209   0x2f46f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  210   0x2f470  5      
  movl $0x10030cd0, %edi                         #  211   0x2f475  5      
  movl %eax, 0x10001858(%rip)                    #  212   0x2f47a  6      
  nop                                            #  213   0x2f480  1      
  nop                                            #  214   0x2f481  1      
  callq .__cxa_guard_release                     #  215   0x2f482  5      
  jmpq .L_2f6e0                                  #  216   0x2f487  5      
  nop                                            #  217   0x2f48c  1      
  nop                                            #  218   0x2f48d  1      
.L_2f780:                                        #        0x2f48e  0      
  nop                                            #  219   0x2f48e  1      
  nop                                            #  220   0x2f48f  1      
  callq ._ZN2pp6Module3GetEv                     #  221   0x2f490  5      
  movl %eax, %edi                                #  222   0x2f495  2      
  movl $0x10020632, %esi                         #  223   0x2f497  5      
  nop                                            #  224   0x2f49c  1      
  nop                                            #  225   0x2f49d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  226   0x2f49e  5      
  movl $0x10030cc0, %edi                         #  227   0x2f4a3  5      
  movl %eax, 0x1000181a(%rip)                    #  228   0x2f4a8  6      
  nop                                            #  229   0x2f4ae  1      
  nop                                            #  230   0x2f4af  1      
  callq .__cxa_guard_release                     #  231   0x2f4b0  5      
  jmpq .L_2f500                                  #  232   0x2f4b5  5      
  nop                                            #  233   0x2f4ba  1      
  nop                                            #  234   0x2f4bb  1      
.L_2f800:                                        #        0x2f4bc  0      
  movl %eax, %ebx                                #  235   0x2f4bc  2      
  movl $0x10030cb0, %edi                         #  236   0x2f4be  5      
  nop                                            #  237   0x2f4c3  1      
  nop                                            #  238   0x2f4c4  1      
  callq .__cxa_guard_abort                       #  239   0x2f4c5  5      
  movl %ebx, %edi                                #  240   0x2f4ca  2      
  nop                                            #  241   0x2f4cc  1      
  nop                                            #  242   0x2f4cd  1      
  callq ._Unwind_Resume                          #  243   0x2f4ce  5      
.L_2f840:                                        #        0x2f4d3  0      
  movl %eax, %ebx                                #  244   0x2f4d3  2      
  movl $0x10030cc0, %edi                         #  245   0x2f4d5  5      
  nop                                            #  246   0x2f4da  1      
  nop                                            #  247   0x2f4db  1      
  callq .__cxa_guard_abort                       #  248   0x2f4dc  5      
  movl %ebx, %edi                                #  249   0x2f4e1  2      
  nop                                            #  250   0x2f4e3  1      
  nop                                            #  251   0x2f4e4  1      
  callq ._Unwind_Resume                          #  252   0x2f4e5  5      
  jmpq .L_2f840                                  #  253   0x2f4ea  5      
  nop                                            #  254   0x2f4ef  1      
  nop                                            #  255   0x2f4f0  1      
  jmpq .L_2f800                                  #  256   0x2f4f1  5      
  nop                                            #  257   0x2f4f6  1      
  nop                                            #  258   0x2f4f7  1      
.L_2f8c0:                                        #        0x2f4f8  0      
  movl %eax, %ebx                                #  259   0x2f4f8  2      
  movl $0x10030cd0, %edi                         #  260   0x2f4fa  5      
  nop                                            #  261   0x2f4ff  1      
  nop                                            #  262   0x2f500  1      
  callq .__cxa_guard_abort                       #  263   0x2f501  5      
  movl %ebx, %edi                                #  264   0x2f506  2      
  nop                                            #  265   0x2f508  1      
  nop                                            #  266   0x2f509  1      
  callq ._Unwind_Resume                          #  267   0x2f50a  5      
  jmpq .L_2f8c0                                  #  268   0x2f50f  5      
  nop                                            #  269   0x2f514  1      
  nop                                            #  270   0x2f515  1      
                                                                          
.size _ZNK2pp4View13IsPageVisibleEv, .-_ZNK2pp4View13IsPageVisibleEv

