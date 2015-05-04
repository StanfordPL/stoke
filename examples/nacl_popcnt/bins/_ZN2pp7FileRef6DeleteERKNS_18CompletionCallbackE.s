  .text
  .globl _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, @function

#! file-offset 0x33260
#! rip-offset  0x33260
#! capacity    1984 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE:                   #        0x33260  0      
  pushq %r12                                                         #  1     0x33260  3      
  movl %edi, %r12d                                                   #  2     0x33263  3      
  pushq %rbx                                                         #  3     0x33266  2      
  movl %esi, %ebx                                                    #  4     0x33268  2      
  subl $0x38, %esp                                                   #  5     0x3326a  3      
  addq %r15, %rsp                                                    #  6     0x3326d  3      
  cmpb $0x0, 0xfffda69(%rip)                                         #  7     0x33270  7      
  je .L_334a0                                                        #  8     0x33277  6      
  nop                                                                #  9     0x3327d  1      
.L_33280:                                                            #        0x3327e  0      
  movl 0xfffda64(%rip), %eax                                         #  10    0x3327e  6      
  testq %rax, %rax                                                   #  11    0x33284  3      
  jne .L_33440                                                       #  12    0x33287  6      
  cmpb $0x0, 0xfffda5c(%rip)                                         #  13    0x3328d  7      
  je .L_333a0                                                        #  14    0x33294  6      
  nop                                                                #  15    0x3329a  1      
.L_332a0:                                                            #        0x3329b  0      
  movl 0xfffda57(%rip), %eax                                         #  16    0x3329b  6      
  testq %rax, %rax                                                   #  17    0x332a1  3      
  jne .L_33340                                                       #  18    0x332a4  6      
  cmpb $0x0, 0xfffda4f(%rip)                                         #  19    0x332aa  7      
  je .L_33680                                                        #  20    0x332b1  6      
  nop                                                                #  21    0x332b7  1      
.L_332c0:                                                            #        0x332b8  0      
  movl 0xfffda4a(%rip), %eax                                         #  22    0x332b8  6      
  testq %rax, %rax                                                   #  23    0x332be  3      
  jne .L_33620                                                       #  24    0x332c1  6      
  movl %ebx, %ebx                                                    #  25    0x332c7  2      
  movl (%r15,%rbx,1), %r10d                                          #  26    0x332c9  4      
  testl %r10d, %r10d                                                 #  27    0x332cd  3      
  je .L_335a0                                                        #  28    0x332d0  6      
  xchgw %ax, %ax                                                     #  29    0x332d6  3      
  movl %ebx, %ebx                                                    #  30    0x332d9  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  31    0x332db  6      
  jne .L_335a0                                                       #  32    0x332e1  6      
  nop                                                                #  33    0x332e7  1      
  callq ._ZN2pp6Module3GetEv                                         #  34    0x332e8  5      
  movl %eax, %eax                                                    #  35    0x332ed  2      
  movl %ebx, %edx                                                    #  36    0x332ef  2      
  movl $0xfffffffa, %ecx                                             #  37    0x332f1  5      
  movl %eax, %eax                                                    #  38    0x332f6  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  39    0x332f8  5      
  xorl %esi, %esi                                                    #  40    0x332fd  2      
  nop                                                                #  41    0x332ff  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  42    0x33300  5      
  addl $0x38, %esp                                                   #  43    0x33305  3      
  addq %r15, %rsp                                                    #  44    0x33308  3      
  movl $0xffffffff, %eax                                             #  45    0x3330b  5      
  popq %rbx                                                          #  46    0x33310  2      
  popq %r12                                                          #  47    0x33312  3      
  popq %r11                                                          #  48    0x33315  3      
  andl $0xffffffe0, %r11d                                            #  49    0x33318  7      
  addq %r15, %r11                                                    #  50    0x3331f  3      
  jmpq %r11                                                          #  51    0x33322  3      
  nop                                                                #  52    0x33325  1      
.L_33340:                                                            #        0x33326  0      
  cmpb $0x0, 0xfffd9c3(%rip)                                         #  53    0x33326  7      
  je .L_33540                                                        #  54    0x3332d  6      
  nop                                                                #  55    0x33333  1      
  nop                                                                #  56    0x33334  1      
.L_33360:                                                            #        0x33335  0      
  movl %ebx, %ebx                                                    #  57    0x33335  2      
  movq (%r15,%rbx,1), %rsi                                           #  58    0x33337  4      
  movl %eax, %eax                                                    #  59    0x3333b  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  60    0x3333d  5      
  movq %rsi, 0x10(%rsp)                                              #  61    0x33342  5      
  movl %ebx, %ebx                                                    #  62    0x33347  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  63    0x33349  5      
  movl %edx, 0x18(%rsp)                                              #  64    0x3334e  4      
  nop                                                                #  65    0x33352  1      
  movl %r12d, %r12d                                                  #  66    0x33353  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  67    0x33356  5      
  addl $0x38, %esp                                                   #  68    0x3335b  3      
  addq %r15, %rsp                                                    #  69    0x3335e  3      
  popq %rbx                                                          #  70    0x33361  2      
  popq %r12                                                          #  71    0x33363  3      
  andl $0xffffffe0, %eax                                             #  72    0x33366  5      
  addq %r15, %rax                                                    #  73    0x3336b  3      
  jmpq %rax                                                          #  74    0x3336e  2      
  nop                                                                #  75    0x33370  1      
.L_333a0:                                                            #        0x33371  0      
  movl $0x10030cf0, %edi                                             #  76    0x33371  5      
  nop                                                                #  77    0x33376  1      
  nop                                                                #  78    0x33377  1      
  callq .__cxa_guard_acquire                                         #  79    0x33378  5      
  testl %eax, %eax                                                   #  80    0x3337d  2      
  je .L_332a0                                                        #  81    0x3337f  6      
  nop                                                                #  82    0x33385  1      
  nop                                                                #  83    0x33386  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x33387  5      
  movl %eax, %edi                                                    #  85    0x3338c  2      
  movl $0x10020664, %esi                                             #  86    0x3338e  5      
  nop                                                                #  87    0x33393  1      
  nop                                                                #  88    0x33394  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x33395  5      
  movl $0x10030cf0, %edi                                             #  90    0x3339a  5      
  movl %eax, 0xfffd953(%rip)                                         #  91    0x3339f  6      
  nop                                                                #  92    0x333a5  1      
  nop                                                                #  93    0x333a6  1      
  callq .__cxa_guard_release                                         #  94    0x333a7  5      
  jmpq .L_332a0                                                      #  95    0x333ac  5      
  nop                                                                #  96    0x333b1  1      
  nop                                                                #  97    0x333b2  1      
.L_33440:                                                            #        0x333b3  0      
  cmpb $0x0, 0xfffd926(%rip)                                         #  98    0x333b3  7      
  je .L_335c0                                                        #  99    0x333ba  6      
  nop                                                                #  100   0x333c0  1      
  nop                                                                #  101   0x333c1  1      
.L_33460:                                                            #        0x333c2  0      
  movl %ebx, %ebx                                                    #  102   0x333c2  2      
  movq (%r15,%rbx,1), %rsi                                           #  103   0x333c4  4      
  movl %eax, %eax                                                    #  104   0x333c8  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  105   0x333ca  5      
  movq %rsi, 0x20(%rsp)                                              #  106   0x333cf  5      
  movl %ebx, %ebx                                                    #  107   0x333d4  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  108   0x333d6  5      
  movl %edx, 0x28(%rsp)                                              #  109   0x333db  4      
  nop                                                                #  110   0x333df  1      
  movl %r12d, %r12d                                                  #  111   0x333e0  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  112   0x333e3  5      
  addl $0x38, %esp                                                   #  113   0x333e8  3      
  addq %r15, %rsp                                                    #  114   0x333eb  3      
  popq %rbx                                                          #  115   0x333ee  2      
  popq %r12                                                          #  116   0x333f0  3      
  andl $0xffffffe0, %eax                                             #  117   0x333f3  5      
  addq %r15, %rax                                                    #  118   0x333f8  3      
  jmpq %rax                                                          #  119   0x333fb  2      
  nop                                                                #  120   0x333fd  1      
.L_334a0:                                                            #        0x333fe  0      
  movl $0x10030ce0, %edi                                             #  121   0x333fe  5      
  nop                                                                #  122   0x33403  1      
  nop                                                                #  123   0x33404  1      
  callq .__cxa_guard_acquire                                         #  124   0x33405  5      
  testl %eax, %eax                                                   #  125   0x3340a  2      
  je .L_33280                                                        #  126   0x3340c  6      
  nop                                                                #  127   0x33412  1      
  nop                                                                #  128   0x33413  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33414  5      
  movl %eax, %edi                                                    #  130   0x33419  2      
  movl $0x10020654, %esi                                             #  131   0x3341b  5      
  nop                                                                #  132   0x33420  1      
  nop                                                                #  133   0x33421  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x33422  5      
  movl $0x10030ce0, %edi                                             #  135   0x33427  5      
  movl %eax, 0xfffd8b6(%rip)                                         #  136   0x3342c  6      
  nop                                                                #  137   0x33432  1      
  nop                                                                #  138   0x33433  1      
  callq .__cxa_guard_release                                         #  139   0x33434  5      
  jmpq .L_33280                                                      #  140   0x33439  5      
  nop                                                                #  141   0x3343e  1      
  nop                                                                #  142   0x3343f  1      
.L_33540:                                                            #        0x33440  0      
  movl $0x10030cf0, %edi                                             #  143   0x33440  5      
  nop                                                                #  144   0x33445  1      
  nop                                                                #  145   0x33446  1      
  callq .__cxa_guard_acquire                                         #  146   0x33447  5      
  testl %eax, %eax                                                   #  147   0x3344c  2      
  jne .L_33880                                                       #  148   0x3344e  6      
  nop                                                                #  149   0x33454  1      
  nop                                                                #  150   0x33455  1      
.L_33580:                                                            #        0x33456  0      
  movl 0xfffd89c(%rip), %eax                                         #  151   0x33456  6      
  jmpq .L_33360                                                      #  152   0x3345c  5      
  nop                                                                #  153   0x33461  1      
  nop                                                                #  154   0x33462  1      
.L_335a0:                                                            #        0x33463  0      
  addl $0x38, %esp                                                   #  155   0x33463  3      
  addq %r15, %rsp                                                    #  156   0x33466  3      
  movl $0xfffffffa, %eax                                             #  157   0x33469  5      
  popq %rbx                                                          #  158   0x3346e  2      
  popq %r12                                                          #  159   0x33470  3      
  popq %r11                                                          #  160   0x33473  3      
  andl $0xffffffe0, %r11d                                            #  161   0x33476  7      
  addq %r15, %r11                                                    #  162   0x3347d  3      
  jmpq %r11                                                          #  163   0x33480  3      
  nop                                                                #  164   0x33483  1      
.L_335c0:                                                            #        0x33484  0      
  movl $0x10030ce0, %edi                                             #  165   0x33484  5      
  nop                                                                #  166   0x33489  1      
  nop                                                                #  167   0x3348a  1      
  callq .__cxa_guard_acquire                                         #  168   0x3348b  5      
  testl %eax, %eax                                                   #  169   0x33490  2      
  jne .L_33720                                                       #  170   0x33492  6      
  nop                                                                #  171   0x33498  1      
  nop                                                                #  172   0x33499  1      
.L_33600:                                                            #        0x3349a  0      
  movl 0xfffd848(%rip), %eax                                         #  173   0x3349a  6      
  jmpq .L_33460                                                      #  174   0x334a0  5      
  nop                                                                #  175   0x334a5  1      
  nop                                                                #  176   0x334a6  1      
.L_33620:                                                            #        0x334a7  0      
  cmpb $0x0, 0xfffd852(%rip)                                         #  177   0x334a7  7      
  je .L_337a0                                                        #  178   0x334ae  6      
  nop                                                                #  179   0x334b4  1      
  nop                                                                #  180   0x334b5  1      
.L_33640:                                                            #        0x334b6  0      
  movl %ebx, %ebx                                                    #  181   0x334b6  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x334b8  4      
  movl %eax, %eax                                                    #  183   0x334bc  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  184   0x334be  5      
  movq %rsi, (%rsp)                                                  #  185   0x334c3  4      
  movl %ebx, %ebx                                                    #  186   0x334c7  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x334c9  5      
  movl %edx, 0x8(%rsp)                                               #  188   0x334ce  4      
  nop                                                                #  189   0x334d2  1      
  movl %r12d, %r12d                                                  #  190   0x334d3  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  191   0x334d6  5      
  addl $0x38, %esp                                                   #  192   0x334db  3      
  addq %r15, %rsp                                                    #  193   0x334de  3      
  popq %rbx                                                          #  194   0x334e1  2      
  popq %r12                                                          #  195   0x334e3  3      
  andl $0xffffffe0, %eax                                             #  196   0x334e6  5      
  addq %r15, %rax                                                    #  197   0x334eb  3      
  jmpq %rax                                                          #  198   0x334ee  2      
  nop                                                                #  199   0x334f0  1      
.L_33680:                                                            #        0x334f1  0      
  movl $0x10030d00, %edi                                             #  200   0x334f1  5      
  nop                                                                #  201   0x334f6  1      
  nop                                                                #  202   0x334f7  1      
  callq .__cxa_guard_acquire                                         #  203   0x334f8  5      
  testl %eax, %eax                                                   #  204   0x334fd  2      
  je .L_332c0                                                        #  205   0x334ff  6      
  nop                                                                #  206   0x33505  1      
  nop                                                                #  207   0x33506  1      
  callq ._ZN2pp6Module3GetEv                                         #  208   0x33507  5      
  movl %eax, %edi                                                    #  209   0x3350c  2      
  movl $0x10020644, %esi                                             #  210   0x3350e  5      
  nop                                                                #  211   0x33513  1      
  nop                                                                #  212   0x33514  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  213   0x33515  5      
  movl $0x10030d00, %edi                                             #  214   0x3351a  5      
  movl %eax, 0xfffd7e3(%rip)                                         #  215   0x3351f  6      
  nop                                                                #  216   0x33525  1      
  nop                                                                #  217   0x33526  1      
  callq .__cxa_guard_release                                         #  218   0x33527  5      
  jmpq .L_332c0                                                      #  219   0x3352c  5      
  nop                                                                #  220   0x33531  1      
  nop                                                                #  221   0x33532  1      
.L_33720:                                                            #        0x33533  0      
  nop                                                                #  222   0x33533  1      
  nop                                                                #  223   0x33534  1      
  callq ._ZN2pp6Module3GetEv                                         #  224   0x33535  5      
  movl %eax, %edi                                                    #  225   0x3353a  2      
  movl $0x10020654, %esi                                             #  226   0x3353c  5      
  nop                                                                #  227   0x33541  1      
  nop                                                                #  228   0x33542  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  229   0x33543  5      
  movl $0x10030ce0, %edi                                             #  230   0x33548  5      
  movl %eax, 0xfffd795(%rip)                                         #  231   0x3354d  6      
  nop                                                                #  232   0x33553  1      
  nop                                                                #  233   0x33554  1      
  callq .__cxa_guard_release                                         #  234   0x33555  5      
  jmpq .L_33600                                                      #  235   0x3355a  5      
  nop                                                                #  236   0x3355f  1      
  nop                                                                #  237   0x33560  1      
.L_337a0:                                                            #        0x33561  0      
  movl $0x10030d00, %edi                                             #  238   0x33561  5      
  nop                                                                #  239   0x33566  1      
  nop                                                                #  240   0x33567  1      
  callq .__cxa_guard_acquire                                         #  241   0x33568  5      
  testl %eax, %eax                                                   #  242   0x3356d  2      
  jne .L_33800                                                       #  243   0x3356f  6      
  nop                                                                #  244   0x33575  1      
  nop                                                                #  245   0x33576  1      
.L_337e0:                                                            #        0x33577  0      
  movl 0xfffd78b(%rip), %eax                                         #  246   0x33577  6      
  jmpq .L_33640                                                      #  247   0x3357d  5      
  nop                                                                #  248   0x33582  1      
  nop                                                                #  249   0x33583  1      
.L_33800:                                                            #        0x33584  0      
  nop                                                                #  250   0x33584  1      
  nop                                                                #  251   0x33585  1      
  callq ._ZN2pp6Module3GetEv                                         #  252   0x33586  5      
  movl %eax, %edi                                                    #  253   0x3358b  2      
  movl $0x10020644, %esi                                             #  254   0x3358d  5      
  nop                                                                #  255   0x33592  1      
  nop                                                                #  256   0x33593  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  257   0x33594  5      
  movl $0x10030d00, %edi                                             #  258   0x33599  5      
  movl %eax, 0xfffd764(%rip)                                         #  259   0x3359e  6      
  nop                                                                #  260   0x335a4  1      
  nop                                                                #  261   0x335a5  1      
  callq .__cxa_guard_release                                         #  262   0x335a6  5      
  jmpq .L_337e0                                                      #  263   0x335ab  5      
  nop                                                                #  264   0x335b0  1      
  nop                                                                #  265   0x335b1  1      
.L_33880:                                                            #        0x335b2  0      
  nop                                                                #  266   0x335b2  1      
  nop                                                                #  267   0x335b3  1      
  callq ._ZN2pp6Module3GetEv                                         #  268   0x335b4  5      
  movl %eax, %edi                                                    #  269   0x335b9  2      
  movl $0x10020664, %esi                                             #  270   0x335bb  5      
  nop                                                                #  271   0x335c0  1      
  nop                                                                #  272   0x335c1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  273   0x335c2  5      
  movl $0x10030cf0, %edi                                             #  274   0x335c7  5      
  movl %eax, 0xfffd726(%rip)                                         #  275   0x335cc  6      
  nop                                                                #  276   0x335d2  1      
  nop                                                                #  277   0x335d3  1      
  callq .__cxa_guard_release                                         #  278   0x335d4  5      
  jmpq .L_33580                                                      #  279   0x335d9  5      
  nop                                                                #  280   0x335de  1      
  nop                                                                #  281   0x335df  1      
.L_33900:                                                            #        0x335e0  0      
  movl %eax, %ebx                                                    #  282   0x335e0  2      
  movl $0x10030ce0, %edi                                             #  283   0x335e2  5      
  nop                                                                #  284   0x335e7  1      
  nop                                                                #  285   0x335e8  1      
  callq .__cxa_guard_abort                                           #  286   0x335e9  5      
  movl %ebx, %edi                                                    #  287   0x335ee  2      
  nop                                                                #  288   0x335f0  1      
  nop                                                                #  289   0x335f1  1      
  callq ._Unwind_Resume                                              #  290   0x335f2  5      
.L_33940:                                                            #        0x335f7  0      
  movl %eax, %ebx                                                    #  291   0x335f7  2      
  movl $0x10030cf0, %edi                                             #  292   0x335f9  5      
  nop                                                                #  293   0x335fe  1      
  nop                                                                #  294   0x335ff  1      
  callq .__cxa_guard_abort                                           #  295   0x33600  5      
  movl %ebx, %edi                                                    #  296   0x33605  2      
  nop                                                                #  297   0x33607  1      
  nop                                                                #  298   0x33608  1      
  callq ._Unwind_Resume                                              #  299   0x33609  5      
  jmpq .L_33940                                                      #  300   0x3360e  5      
  nop                                                                #  301   0x33613  1      
  nop                                                                #  302   0x33614  1      
  jmpq .L_33900                                                      #  303   0x33615  5      
  nop                                                                #  304   0x3361a  1      
  nop                                                                #  305   0x3361b  1      
.L_339c0:                                                            #        0x3361c  0      
  movl %eax, %ebx                                                    #  306   0x3361c  2      
  movl $0x10030d00, %edi                                             #  307   0x3361e  5      
  nop                                                                #  308   0x33623  1      
  nop                                                                #  309   0x33624  1      
  callq .__cxa_guard_abort                                           #  310   0x33625  5      
  movl %ebx, %edi                                                    #  311   0x3362a  2      
  nop                                                                #  312   0x3362c  1      
  nop                                                                #  313   0x3362d  1      
  callq ._Unwind_Resume                                              #  314   0x3362e  5      
  jmpq .L_339c0                                                      #  315   0x33633  5      
  nop                                                                #  316   0x33638  1      
  nop                                                                #  317   0x33639  1      
                                                                                              
.size _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE

