  .text
  .globl _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, @function

#! file-offset 0x331c0
#! rip-offset  0x331c0
#! capacity    1984 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE:                   #        0x331c0  0      
  pushq %r12                                                         #  1     0x331c0  3      
  movl %edi, %r12d                                                   #  2     0x331c3  3      
  pushq %rbx                                                         #  3     0x331c6  2      
  movl %esi, %ebx                                                    #  4     0x331c8  2      
  subl $0x38, %esp                                                   #  5     0x331ca  3      
  addq %r15, %rsp                                                    #  6     0x331cd  3      
  cmpb $0x0, 0xfffdb09(%rip)                                         #  7     0x331d0  7      
  je .L_33400                                                        #  8     0x331d7  6      
  nop                                                                #  9     0x331dd  1      
.L_331e0:                                                            #        0x331de  0      
  movl 0xfffdb04(%rip), %eax                                         #  10    0x331de  6      
  testq %rax, %rax                                                   #  11    0x331e4  3      
  jne .L_333a0                                                       #  12    0x331e7  6      
  cmpb $0x0, 0xfffdafc(%rip)                                         #  13    0x331ed  7      
  je .L_33300                                                        #  14    0x331f4  6      
  nop                                                                #  15    0x331fa  1      
.L_33200:                                                            #        0x331fb  0      
  movl 0xfffdaf7(%rip), %eax                                         #  16    0x331fb  6      
  testq %rax, %rax                                                   #  17    0x33201  3      
  jne .L_332a0                                                       #  18    0x33204  6      
  cmpb $0x0, 0xfffdaef(%rip)                                         #  19    0x3320a  7      
  je .L_335e0                                                        #  20    0x33211  6      
  nop                                                                #  21    0x33217  1      
.L_33220:                                                            #        0x33218  0      
  movl 0xfffdaea(%rip), %eax                                         #  22    0x33218  6      
  testq %rax, %rax                                                   #  23    0x3321e  3      
  jne .L_33580                                                       #  24    0x33221  6      
  movl %ebx, %ebx                                                    #  25    0x33227  2      
  movl (%r15,%rbx,1), %r10d                                          #  26    0x33229  4      
  testl %r10d, %r10d                                                 #  27    0x3322d  3      
  je .L_33500                                                        #  28    0x33230  6      
  xchgw %ax, %ax                                                     #  29    0x33236  3      
  movl %ebx, %ebx                                                    #  30    0x33239  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  31    0x3323b  6      
  jne .L_33500                                                       #  32    0x33241  6      
  nop                                                                #  33    0x33247  1      
  callq ._ZN2pp6Module3GetEv                                         #  34    0x33248  5      
  movl %eax, %eax                                                    #  35    0x3324d  2      
  movl %ebx, %edx                                                    #  36    0x3324f  2      
  movl $0xfffffffa, %ecx                                             #  37    0x33251  5      
  movl %eax, %eax                                                    #  38    0x33256  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  39    0x33258  5      
  xorl %esi, %esi                                                    #  40    0x3325d  2      
  nop                                                                #  41    0x3325f  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  42    0x33260  5      
  addl $0x38, %esp                                                   #  43    0x33265  3      
  addq %r15, %rsp                                                    #  44    0x33268  3      
  movl $0xffffffff, %eax                                             #  45    0x3326b  5      
  popq %rbx                                                          #  46    0x33270  2      
  popq %r12                                                          #  47    0x33272  3      
  popq %r11                                                          #  48    0x33275  3      
  andl $0xffffffe0, %r11d                                            #  49    0x33278  7      
  addq %r15, %r11                                                    #  50    0x3327f  3      
  jmpq %r11                                                          #  51    0x33282  3      
  nop                                                                #  52    0x33285  1      
.L_332a0:                                                            #        0x33286  0      
  cmpb $0x0, 0xfffda63(%rip)                                         #  53    0x33286  7      
  je .L_334a0                                                        #  54    0x3328d  6      
  nop                                                                #  55    0x33293  1      
  nop                                                                #  56    0x33294  1      
.L_332c0:                                                            #        0x33295  0      
  movl %ebx, %ebx                                                    #  57    0x33295  2      
  movq (%r15,%rbx,1), %rsi                                           #  58    0x33297  4      
  movl %eax, %eax                                                    #  59    0x3329b  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  60    0x3329d  5      
  movq %rsi, 0x10(%rsp)                                              #  61    0x332a2  5      
  movl %ebx, %ebx                                                    #  62    0x332a7  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  63    0x332a9  5      
  movl %edx, 0x18(%rsp)                                              #  64    0x332ae  4      
  nop                                                                #  65    0x332b2  1      
  movl %r12d, %r12d                                                  #  66    0x332b3  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  67    0x332b6  5      
  addl $0x38, %esp                                                   #  68    0x332bb  3      
  addq %r15, %rsp                                                    #  69    0x332be  3      
  popq %rbx                                                          #  70    0x332c1  2      
  popq %r12                                                          #  71    0x332c3  3      
  andl $0xffffffe0, %eax                                             #  72    0x332c6  5      
  addq %r15, %rax                                                    #  73    0x332cb  3      
  jmpq %rax                                                          #  74    0x332ce  2      
  nop                                                                #  75    0x332d0  1      
.L_33300:                                                            #        0x332d1  0      
  movl $0x10030cf0, %edi                                             #  76    0x332d1  5      
  nop                                                                #  77    0x332d6  1      
  nop                                                                #  78    0x332d7  1      
  callq .__cxa_guard_acquire                                         #  79    0x332d8  5      
  testl %eax, %eax                                                   #  80    0x332dd  2      
  je .L_33200                                                        #  81    0x332df  6      
  nop                                                                #  82    0x332e5  1      
  nop                                                                #  83    0x332e6  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x332e7  5      
  movl %eax, %edi                                                    #  85    0x332ec  2      
  movl $0x10020664, %esi                                             #  86    0x332ee  5      
  nop                                                                #  87    0x332f3  1      
  nop                                                                #  88    0x332f4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x332f5  5      
  movl $0x10030cf0, %edi                                             #  90    0x332fa  5      
  movl %eax, 0xfffd9f3(%rip)                                         #  91    0x332ff  6      
  nop                                                                #  92    0x33305  1      
  nop                                                                #  93    0x33306  1      
  callq .__cxa_guard_release                                         #  94    0x33307  5      
  jmpq .L_33200                                                      #  95    0x3330c  5      
  nop                                                                #  96    0x33311  1      
  nop                                                                #  97    0x33312  1      
.L_333a0:                                                            #        0x33313  0      
  cmpb $0x0, 0xfffd9c6(%rip)                                         #  98    0x33313  7      
  je .L_33520                                                        #  99    0x3331a  6      
  nop                                                                #  100   0x33320  1      
  nop                                                                #  101   0x33321  1      
.L_333c0:                                                            #        0x33322  0      
  movl %ebx, %ebx                                                    #  102   0x33322  2      
  movq (%r15,%rbx,1), %rsi                                           #  103   0x33324  4      
  movl %eax, %eax                                                    #  104   0x33328  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  105   0x3332a  5      
  movq %rsi, 0x20(%rsp)                                              #  106   0x3332f  5      
  movl %ebx, %ebx                                                    #  107   0x33334  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  108   0x33336  5      
  movl %edx, 0x28(%rsp)                                              #  109   0x3333b  4      
  nop                                                                #  110   0x3333f  1      
  movl %r12d, %r12d                                                  #  111   0x33340  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  112   0x33343  5      
  addl $0x38, %esp                                                   #  113   0x33348  3      
  addq %r15, %rsp                                                    #  114   0x3334b  3      
  popq %rbx                                                          #  115   0x3334e  2      
  popq %r12                                                          #  116   0x33350  3      
  andl $0xffffffe0, %eax                                             #  117   0x33353  5      
  addq %r15, %rax                                                    #  118   0x33358  3      
  jmpq %rax                                                          #  119   0x3335b  2      
  nop                                                                #  120   0x3335d  1      
.L_33400:                                                            #        0x3335e  0      
  movl $0x10030ce0, %edi                                             #  121   0x3335e  5      
  nop                                                                #  122   0x33363  1      
  nop                                                                #  123   0x33364  1      
  callq .__cxa_guard_acquire                                         #  124   0x33365  5      
  testl %eax, %eax                                                   #  125   0x3336a  2      
  je .L_331e0                                                        #  126   0x3336c  6      
  nop                                                                #  127   0x33372  1      
  nop                                                                #  128   0x33373  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33374  5      
  movl %eax, %edi                                                    #  130   0x33379  2      
  movl $0x10020654, %esi                                             #  131   0x3337b  5      
  nop                                                                #  132   0x33380  1      
  nop                                                                #  133   0x33381  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x33382  5      
  movl $0x10030ce0, %edi                                             #  135   0x33387  5      
  movl %eax, 0xfffd956(%rip)                                         #  136   0x3338c  6      
  nop                                                                #  137   0x33392  1      
  nop                                                                #  138   0x33393  1      
  callq .__cxa_guard_release                                         #  139   0x33394  5      
  jmpq .L_331e0                                                      #  140   0x33399  5      
  nop                                                                #  141   0x3339e  1      
  nop                                                                #  142   0x3339f  1      
.L_334a0:                                                            #        0x333a0  0      
  movl $0x10030cf0, %edi                                             #  143   0x333a0  5      
  nop                                                                #  144   0x333a5  1      
  nop                                                                #  145   0x333a6  1      
  callq .__cxa_guard_acquire                                         #  146   0x333a7  5      
  testl %eax, %eax                                                   #  147   0x333ac  2      
  jne .L_337e0                                                       #  148   0x333ae  6      
  nop                                                                #  149   0x333b4  1      
  nop                                                                #  150   0x333b5  1      
.L_334e0:                                                            #        0x333b6  0      
  movl 0xfffd93c(%rip), %eax                                         #  151   0x333b6  6      
  jmpq .L_332c0                                                      #  152   0x333bc  5      
  nop                                                                #  153   0x333c1  1      
  nop                                                                #  154   0x333c2  1      
.L_33500:                                                            #        0x333c3  0      
  addl $0x38, %esp                                                   #  155   0x333c3  3      
  addq %r15, %rsp                                                    #  156   0x333c6  3      
  movl $0xfffffffa, %eax                                             #  157   0x333c9  5      
  popq %rbx                                                          #  158   0x333ce  2      
  popq %r12                                                          #  159   0x333d0  3      
  popq %r11                                                          #  160   0x333d3  3      
  andl $0xffffffe0, %r11d                                            #  161   0x333d6  7      
  addq %r15, %r11                                                    #  162   0x333dd  3      
  jmpq %r11                                                          #  163   0x333e0  3      
  nop                                                                #  164   0x333e3  1      
.L_33520:                                                            #        0x333e4  0      
  movl $0x10030ce0, %edi                                             #  165   0x333e4  5      
  nop                                                                #  166   0x333e9  1      
  nop                                                                #  167   0x333ea  1      
  callq .__cxa_guard_acquire                                         #  168   0x333eb  5      
  testl %eax, %eax                                                   #  169   0x333f0  2      
  jne .L_33680                                                       #  170   0x333f2  6      
  nop                                                                #  171   0x333f8  1      
  nop                                                                #  172   0x333f9  1      
.L_33560:                                                            #        0x333fa  0      
  movl 0xfffd8e8(%rip), %eax                                         #  173   0x333fa  6      
  jmpq .L_333c0                                                      #  174   0x33400  5      
  nop                                                                #  175   0x33405  1      
  nop                                                                #  176   0x33406  1      
.L_33580:                                                            #        0x33407  0      
  cmpb $0x0, 0xfffd8f2(%rip)                                         #  177   0x33407  7      
  je .L_33700                                                        #  178   0x3340e  6      
  nop                                                                #  179   0x33414  1      
  nop                                                                #  180   0x33415  1      
.L_335a0:                                                            #        0x33416  0      
  movl %ebx, %ebx                                                    #  181   0x33416  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x33418  4      
  movl %eax, %eax                                                    #  183   0x3341c  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  184   0x3341e  5      
  movq %rsi, (%rsp)                                                  #  185   0x33423  4      
  movl %ebx, %ebx                                                    #  186   0x33427  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x33429  5      
  movl %edx, 0x8(%rsp)                                               #  188   0x3342e  4      
  nop                                                                #  189   0x33432  1      
  movl %r12d, %r12d                                                  #  190   0x33433  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  191   0x33436  5      
  addl $0x38, %esp                                                   #  192   0x3343b  3      
  addq %r15, %rsp                                                    #  193   0x3343e  3      
  popq %rbx                                                          #  194   0x33441  2      
  popq %r12                                                          #  195   0x33443  3      
  andl $0xffffffe0, %eax                                             #  196   0x33446  5      
  addq %r15, %rax                                                    #  197   0x3344b  3      
  jmpq %rax                                                          #  198   0x3344e  2      
  nop                                                                #  199   0x33450  1      
.L_335e0:                                                            #        0x33451  0      
  movl $0x10030d00, %edi                                             #  200   0x33451  5      
  nop                                                                #  201   0x33456  1      
  nop                                                                #  202   0x33457  1      
  callq .__cxa_guard_acquire                                         #  203   0x33458  5      
  testl %eax, %eax                                                   #  204   0x3345d  2      
  je .L_33220                                                        #  205   0x3345f  6      
  nop                                                                #  206   0x33465  1      
  nop                                                                #  207   0x33466  1      
  callq ._ZN2pp6Module3GetEv                                         #  208   0x33467  5      
  movl %eax, %edi                                                    #  209   0x3346c  2      
  movl $0x10020644, %esi                                             #  210   0x3346e  5      
  nop                                                                #  211   0x33473  1      
  nop                                                                #  212   0x33474  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  213   0x33475  5      
  movl $0x10030d00, %edi                                             #  214   0x3347a  5      
  movl %eax, 0xfffd883(%rip)                                         #  215   0x3347f  6      
  nop                                                                #  216   0x33485  1      
  nop                                                                #  217   0x33486  1      
  callq .__cxa_guard_release                                         #  218   0x33487  5      
  jmpq .L_33220                                                      #  219   0x3348c  5      
  nop                                                                #  220   0x33491  1      
  nop                                                                #  221   0x33492  1      
.L_33680:                                                            #        0x33493  0      
  nop                                                                #  222   0x33493  1      
  nop                                                                #  223   0x33494  1      
  callq ._ZN2pp6Module3GetEv                                         #  224   0x33495  5      
  movl %eax, %edi                                                    #  225   0x3349a  2      
  movl $0x10020654, %esi                                             #  226   0x3349c  5      
  nop                                                                #  227   0x334a1  1      
  nop                                                                #  228   0x334a2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  229   0x334a3  5      
  movl $0x10030ce0, %edi                                             #  230   0x334a8  5      
  movl %eax, 0xfffd835(%rip)                                         #  231   0x334ad  6      
  nop                                                                #  232   0x334b3  1      
  nop                                                                #  233   0x334b4  1      
  callq .__cxa_guard_release                                         #  234   0x334b5  5      
  jmpq .L_33560                                                      #  235   0x334ba  5      
  nop                                                                #  236   0x334bf  1      
  nop                                                                #  237   0x334c0  1      
.L_33700:                                                            #        0x334c1  0      
  movl $0x10030d00, %edi                                             #  238   0x334c1  5      
  nop                                                                #  239   0x334c6  1      
  nop                                                                #  240   0x334c7  1      
  callq .__cxa_guard_acquire                                         #  241   0x334c8  5      
  testl %eax, %eax                                                   #  242   0x334cd  2      
  jne .L_33760                                                       #  243   0x334cf  6      
  nop                                                                #  244   0x334d5  1      
  nop                                                                #  245   0x334d6  1      
.L_33740:                                                            #        0x334d7  0      
  movl 0xfffd82b(%rip), %eax                                         #  246   0x334d7  6      
  jmpq .L_335a0                                                      #  247   0x334dd  5      
  nop                                                                #  248   0x334e2  1      
  nop                                                                #  249   0x334e3  1      
.L_33760:                                                            #        0x334e4  0      
  nop                                                                #  250   0x334e4  1      
  nop                                                                #  251   0x334e5  1      
  callq ._ZN2pp6Module3GetEv                                         #  252   0x334e6  5      
  movl %eax, %edi                                                    #  253   0x334eb  2      
  movl $0x10020644, %esi                                             #  254   0x334ed  5      
  nop                                                                #  255   0x334f2  1      
  nop                                                                #  256   0x334f3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  257   0x334f4  5      
  movl $0x10030d00, %edi                                             #  258   0x334f9  5      
  movl %eax, 0xfffd804(%rip)                                         #  259   0x334fe  6      
  nop                                                                #  260   0x33504  1      
  nop                                                                #  261   0x33505  1      
  callq .__cxa_guard_release                                         #  262   0x33506  5      
  jmpq .L_33740                                                      #  263   0x3350b  5      
  nop                                                                #  264   0x33510  1      
  nop                                                                #  265   0x33511  1      
.L_337e0:                                                            #        0x33512  0      
  nop                                                                #  266   0x33512  1      
  nop                                                                #  267   0x33513  1      
  callq ._ZN2pp6Module3GetEv                                         #  268   0x33514  5      
  movl %eax, %edi                                                    #  269   0x33519  2      
  movl $0x10020664, %esi                                             #  270   0x3351b  5      
  nop                                                                #  271   0x33520  1      
  nop                                                                #  272   0x33521  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  273   0x33522  5      
  movl $0x10030cf0, %edi                                             #  274   0x33527  5      
  movl %eax, 0xfffd7c6(%rip)                                         #  275   0x3352c  6      
  nop                                                                #  276   0x33532  1      
  nop                                                                #  277   0x33533  1      
  callq .__cxa_guard_release                                         #  278   0x33534  5      
  jmpq .L_334e0                                                      #  279   0x33539  5      
  nop                                                                #  280   0x3353e  1      
  nop                                                                #  281   0x3353f  1      
.L_33860:                                                            #        0x33540  0      
  movl %eax, %ebx                                                    #  282   0x33540  2      
  movl $0x10030ce0, %edi                                             #  283   0x33542  5      
  nop                                                                #  284   0x33547  1      
  nop                                                                #  285   0x33548  1      
  callq .__cxa_guard_abort                                           #  286   0x33549  5      
  movl %ebx, %edi                                                    #  287   0x3354e  2      
  nop                                                                #  288   0x33550  1      
  nop                                                                #  289   0x33551  1      
  callq ._Unwind_Resume                                              #  290   0x33552  5      
.L_338a0:                                                            #        0x33557  0      
  movl %eax, %ebx                                                    #  291   0x33557  2      
  movl $0x10030cf0, %edi                                             #  292   0x33559  5      
  nop                                                                #  293   0x3355e  1      
  nop                                                                #  294   0x3355f  1      
  callq .__cxa_guard_abort                                           #  295   0x33560  5      
  movl %ebx, %edi                                                    #  296   0x33565  2      
  nop                                                                #  297   0x33567  1      
  nop                                                                #  298   0x33568  1      
  callq ._Unwind_Resume                                              #  299   0x33569  5      
  jmpq .L_338a0                                                      #  300   0x3356e  5      
  nop                                                                #  301   0x33573  1      
  nop                                                                #  302   0x33574  1      
  jmpq .L_33860                                                      #  303   0x33575  5      
  nop                                                                #  304   0x3357a  1      
  nop                                                                #  305   0x3357b  1      
.L_33920:                                                            #        0x3357c  0      
  movl %eax, %ebx                                                    #  306   0x3357c  2      
  movl $0x10030d00, %edi                                             #  307   0x3357e  5      
  nop                                                                #  308   0x33583  1      
  nop                                                                #  309   0x33584  1      
  callq .__cxa_guard_abort                                           #  310   0x33585  5      
  movl %ebx, %edi                                                    #  311   0x3358a  2      
  nop                                                                #  312   0x3358c  1      
  nop                                                                #  313   0x3358d  1      
  callq ._Unwind_Resume                                              #  314   0x3358e  5      
  jmpq .L_33920                                                      #  315   0x33593  5      
  nop                                                                #  316   0x33598  1      
  nop                                                                #  317   0x33599  1      
                                                                                              
.size _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE

