  .text
  .globl _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, @function

#! file-offset 0x331e0
#! rip-offset  0x331e0
#! capacity    1984 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE:                   #        0x331e0  0      
  pushq %r12                                                         #  1     0x331e0  3      
  movl %edi, %r12d                                                   #  2     0x331e3  3      
  pushq %rbx                                                         #  3     0x331e6  2      
  movl %esi, %ebx                                                    #  4     0x331e8  2      
  subl $0x38, %esp                                                   #  5     0x331ea  3      
  addq %r15, %rsp                                                    #  6     0x331ed  3      
  cmpb $0x0, 0xfffdae9(%rip)                                         #  7     0x331f0  7      
  je .L_33420                                                        #  8     0x331f7  6      
  nop                                                                #  9     0x331fd  1      
.L_33200:                                                            #        0x331fe  0      
  movl 0xfffdae4(%rip), %eax                                         #  10    0x331fe  6      
  testq %rax, %rax                                                   #  11    0x33204  3      
  jne .L_333c0                                                       #  12    0x33207  6      
  cmpb $0x0, 0xfffdadc(%rip)                                         #  13    0x3320d  7      
  je .L_33320                                                        #  14    0x33214  6      
  nop                                                                #  15    0x3321a  1      
.L_33220:                                                            #        0x3321b  0      
  movl 0xfffdad7(%rip), %eax                                         #  16    0x3321b  6      
  testq %rax, %rax                                                   #  17    0x33221  3      
  jne .L_332c0                                                       #  18    0x33224  6      
  cmpb $0x0, 0xfffdacf(%rip)                                         #  19    0x3322a  7      
  je .L_33600                                                        #  20    0x33231  6      
  nop                                                                #  21    0x33237  1      
.L_33240:                                                            #        0x33238  0      
  movl 0xfffdaca(%rip), %eax                                         #  22    0x33238  6      
  testq %rax, %rax                                                   #  23    0x3323e  3      
  jne .L_335a0                                                       #  24    0x33241  6      
  movl %ebx, %ebx                                                    #  25    0x33247  2      
  movl (%r15,%rbx,1), %r10d                                          #  26    0x33249  4      
  testl %r10d, %r10d                                                 #  27    0x3324d  3      
  je .L_33520                                                        #  28    0x33250  6      
  xchgw %ax, %ax                                                     #  29    0x33256  3      
  movl %ebx, %ebx                                                    #  30    0x33259  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  31    0x3325b  6      
  jne .L_33520                                                       #  32    0x33261  6      
  nop                                                                #  33    0x33267  1      
  callq ._ZN2pp6Module3GetEv                                         #  34    0x33268  5      
  movl %eax, %eax                                                    #  35    0x3326d  2      
  movl %ebx, %edx                                                    #  36    0x3326f  2      
  movl $0xfffffffa, %ecx                                             #  37    0x33271  5      
  movl %eax, %eax                                                    #  38    0x33276  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  39    0x33278  5      
  xorl %esi, %esi                                                    #  40    0x3327d  2      
  nop                                                                #  41    0x3327f  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  42    0x33280  5      
  addl $0x38, %esp                                                   #  43    0x33285  3      
  addq %r15, %rsp                                                    #  44    0x33288  3      
  movl $0xffffffff, %eax                                             #  45    0x3328b  5      
  popq %rbx                                                          #  46    0x33290  2      
  popq %r12                                                          #  47    0x33292  3      
  popq %r11                                                          #  48    0x33295  3      
  andl $0xffffffe0, %r11d                                            #  49    0x33298  7      
  addq %r15, %r11                                                    #  50    0x3329f  3      
  jmpq %r11                                                          #  51    0x332a2  3      
  nop                                                                #  52    0x332a5  1      
.L_332c0:                                                            #        0x332a6  0      
  cmpb $0x0, 0xfffda43(%rip)                                         #  53    0x332a6  7      
  je .L_334c0                                                        #  54    0x332ad  6      
  nop                                                                #  55    0x332b3  1      
  nop                                                                #  56    0x332b4  1      
.L_332e0:                                                            #        0x332b5  0      
  movl %ebx, %ebx                                                    #  57    0x332b5  2      
  movq (%r15,%rbx,1), %rsi                                           #  58    0x332b7  4      
  movl %eax, %eax                                                    #  59    0x332bb  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  60    0x332bd  5      
  movq %rsi, 0x10(%rsp)                                              #  61    0x332c2  5      
  movl %ebx, %ebx                                                    #  62    0x332c7  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  63    0x332c9  5      
  movl %edx, 0x18(%rsp)                                              #  64    0x332ce  4      
  nop                                                                #  65    0x332d2  1      
  movl %r12d, %r12d                                                  #  66    0x332d3  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  67    0x332d6  5      
  addl $0x38, %esp                                                   #  68    0x332db  3      
  addq %r15, %rsp                                                    #  69    0x332de  3      
  popq %rbx                                                          #  70    0x332e1  2      
  popq %r12                                                          #  71    0x332e3  3      
  andl $0xffffffe0, %eax                                             #  72    0x332e6  5      
  addq %r15, %rax                                                    #  73    0x332eb  3      
  jmpq %rax                                                          #  74    0x332ee  2      
  nop                                                                #  75    0x332f0  1      
.L_33320:                                                            #        0x332f1  0      
  movl $0x10030cf0, %edi                                             #  76    0x332f1  5      
  nop                                                                #  77    0x332f6  1      
  nop                                                                #  78    0x332f7  1      
  callq .__cxa_guard_acquire                                         #  79    0x332f8  5      
  testl %eax, %eax                                                   #  80    0x332fd  2      
  je .L_33220                                                        #  81    0x332ff  6      
  nop                                                                #  82    0x33305  1      
  nop                                                                #  83    0x33306  1      
  callq ._ZN2pp6Module3GetEv                                         #  84    0x33307  5      
  movl %eax, %edi                                                    #  85    0x3330c  2      
  movl $0x10020664, %esi                                             #  86    0x3330e  5      
  nop                                                                #  87    0x33313  1      
  nop                                                                #  88    0x33314  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  89    0x33315  5      
  movl $0x10030cf0, %edi                                             #  90    0x3331a  5      
  movl %eax, 0xfffd9d3(%rip)                                         #  91    0x3331f  6      
  nop                                                                #  92    0x33325  1      
  nop                                                                #  93    0x33326  1      
  callq .__cxa_guard_release                                         #  94    0x33327  5      
  jmpq .L_33220                                                      #  95    0x3332c  5      
  nop                                                                #  96    0x33331  1      
  nop                                                                #  97    0x33332  1      
.L_333c0:                                                            #        0x33333  0      
  cmpb $0x0, 0xfffd9a6(%rip)                                         #  98    0x33333  7      
  je .L_33540                                                        #  99    0x3333a  6      
  nop                                                                #  100   0x33340  1      
  nop                                                                #  101   0x33341  1      
.L_333e0:                                                            #        0x33342  0      
  movl %ebx, %ebx                                                    #  102   0x33342  2      
  movq (%r15,%rbx,1), %rsi                                           #  103   0x33344  4      
  movl %eax, %eax                                                    #  104   0x33348  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  105   0x3334a  5      
  movq %rsi, 0x20(%rsp)                                              #  106   0x3334f  5      
  movl %ebx, %ebx                                                    #  107   0x33354  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  108   0x33356  5      
  movl %edx, 0x28(%rsp)                                              #  109   0x3335b  4      
  nop                                                                #  110   0x3335f  1      
  movl %r12d, %r12d                                                  #  111   0x33360  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  112   0x33363  5      
  addl $0x38, %esp                                                   #  113   0x33368  3      
  addq %r15, %rsp                                                    #  114   0x3336b  3      
  popq %rbx                                                          #  115   0x3336e  2      
  popq %r12                                                          #  116   0x33370  3      
  andl $0xffffffe0, %eax                                             #  117   0x33373  5      
  addq %r15, %rax                                                    #  118   0x33378  3      
  jmpq %rax                                                          #  119   0x3337b  2      
  nop                                                                #  120   0x3337d  1      
.L_33420:                                                            #        0x3337e  0      
  movl $0x10030ce0, %edi                                             #  121   0x3337e  5      
  nop                                                                #  122   0x33383  1      
  nop                                                                #  123   0x33384  1      
  callq .__cxa_guard_acquire                                         #  124   0x33385  5      
  testl %eax, %eax                                                   #  125   0x3338a  2      
  je .L_33200                                                        #  126   0x3338c  6      
  nop                                                                #  127   0x33392  1      
  nop                                                                #  128   0x33393  1      
  callq ._ZN2pp6Module3GetEv                                         #  129   0x33394  5      
  movl %eax, %edi                                                    #  130   0x33399  2      
  movl $0x10020654, %esi                                             #  131   0x3339b  5      
  nop                                                                #  132   0x333a0  1      
  nop                                                                #  133   0x333a1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  134   0x333a2  5      
  movl $0x10030ce0, %edi                                             #  135   0x333a7  5      
  movl %eax, 0xfffd936(%rip)                                         #  136   0x333ac  6      
  nop                                                                #  137   0x333b2  1      
  nop                                                                #  138   0x333b3  1      
  callq .__cxa_guard_release                                         #  139   0x333b4  5      
  jmpq .L_33200                                                      #  140   0x333b9  5      
  nop                                                                #  141   0x333be  1      
  nop                                                                #  142   0x333bf  1      
.L_334c0:                                                            #        0x333c0  0      
  movl $0x10030cf0, %edi                                             #  143   0x333c0  5      
  nop                                                                #  144   0x333c5  1      
  nop                                                                #  145   0x333c6  1      
  callq .__cxa_guard_acquire                                         #  146   0x333c7  5      
  testl %eax, %eax                                                   #  147   0x333cc  2      
  jne .L_33800                                                       #  148   0x333ce  6      
  nop                                                                #  149   0x333d4  1      
  nop                                                                #  150   0x333d5  1      
.L_33500:                                                            #        0x333d6  0      
  movl 0xfffd91c(%rip), %eax                                         #  151   0x333d6  6      
  jmpq .L_332e0                                                      #  152   0x333dc  5      
  nop                                                                #  153   0x333e1  1      
  nop                                                                #  154   0x333e2  1      
.L_33520:                                                            #        0x333e3  0      
  addl $0x38, %esp                                                   #  155   0x333e3  3      
  addq %r15, %rsp                                                    #  156   0x333e6  3      
  movl $0xfffffffa, %eax                                             #  157   0x333e9  5      
  popq %rbx                                                          #  158   0x333ee  2      
  popq %r12                                                          #  159   0x333f0  3      
  popq %r11                                                          #  160   0x333f3  3      
  andl $0xffffffe0, %r11d                                            #  161   0x333f6  7      
  addq %r15, %r11                                                    #  162   0x333fd  3      
  jmpq %r11                                                          #  163   0x33400  3      
  nop                                                                #  164   0x33403  1      
.L_33540:                                                            #        0x33404  0      
  movl $0x10030ce0, %edi                                             #  165   0x33404  5      
  nop                                                                #  166   0x33409  1      
  nop                                                                #  167   0x3340a  1      
  callq .__cxa_guard_acquire                                         #  168   0x3340b  5      
  testl %eax, %eax                                                   #  169   0x33410  2      
  jne .L_336a0                                                       #  170   0x33412  6      
  nop                                                                #  171   0x33418  1      
  nop                                                                #  172   0x33419  1      
.L_33580:                                                            #        0x3341a  0      
  movl 0xfffd8c8(%rip), %eax                                         #  173   0x3341a  6      
  jmpq .L_333e0                                                      #  174   0x33420  5      
  nop                                                                #  175   0x33425  1      
  nop                                                                #  176   0x33426  1      
.L_335a0:                                                            #        0x33427  0      
  cmpb $0x0, 0xfffd8d2(%rip)                                         #  177   0x33427  7      
  je .L_33720                                                        #  178   0x3342e  6      
  nop                                                                #  179   0x33434  1      
  nop                                                                #  180   0x33435  1      
.L_335c0:                                                            #        0x33436  0      
  movl %ebx, %ebx                                                    #  181   0x33436  2      
  movq (%r15,%rbx,1), %rsi                                           #  182   0x33438  4      
  movl %eax, %eax                                                    #  183   0x3343c  2      
  movl 0x20(%r15,%rax,1), %eax                                       #  184   0x3343e  5      
  movq %rsi, (%rsp)                                                  #  185   0x33443  4      
  movl %ebx, %ebx                                                    #  186   0x33447  2      
  movl 0x8(%r15,%rbx,1), %edx                                        #  187   0x33449  5      
  movl %edx, 0x8(%rsp)                                               #  188   0x3344e  4      
  nop                                                                #  189   0x33452  1      
  movl %r12d, %r12d                                                  #  190   0x33453  3      
  movl 0x4(%r15,%r12,1), %edi                                        #  191   0x33456  5      
  addl $0x38, %esp                                                   #  192   0x3345b  3      
  addq %r15, %rsp                                                    #  193   0x3345e  3      
  popq %rbx                                                          #  194   0x33461  2      
  popq %r12                                                          #  195   0x33463  3      
  andl $0xffffffe0, %eax                                             #  196   0x33466  5      
  addq %r15, %rax                                                    #  197   0x3346b  3      
  jmpq %rax                                                          #  198   0x3346e  2      
  nop                                                                #  199   0x33470  1      
.L_33600:                                                            #        0x33471  0      
  movl $0x10030d00, %edi                                             #  200   0x33471  5      
  nop                                                                #  201   0x33476  1      
  nop                                                                #  202   0x33477  1      
  callq .__cxa_guard_acquire                                         #  203   0x33478  5      
  testl %eax, %eax                                                   #  204   0x3347d  2      
  je .L_33240                                                        #  205   0x3347f  6      
  nop                                                                #  206   0x33485  1      
  nop                                                                #  207   0x33486  1      
  callq ._ZN2pp6Module3GetEv                                         #  208   0x33487  5      
  movl %eax, %edi                                                    #  209   0x3348c  2      
  movl $0x10020644, %esi                                             #  210   0x3348e  5      
  nop                                                                #  211   0x33493  1      
  nop                                                                #  212   0x33494  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  213   0x33495  5      
  movl $0x10030d00, %edi                                             #  214   0x3349a  5      
  movl %eax, 0xfffd863(%rip)                                         #  215   0x3349f  6      
  nop                                                                #  216   0x334a5  1      
  nop                                                                #  217   0x334a6  1      
  callq .__cxa_guard_release                                         #  218   0x334a7  5      
  jmpq .L_33240                                                      #  219   0x334ac  5      
  nop                                                                #  220   0x334b1  1      
  nop                                                                #  221   0x334b2  1      
.L_336a0:                                                            #        0x334b3  0      
  nop                                                                #  222   0x334b3  1      
  nop                                                                #  223   0x334b4  1      
  callq ._ZN2pp6Module3GetEv                                         #  224   0x334b5  5      
  movl %eax, %edi                                                    #  225   0x334ba  2      
  movl $0x10020654, %esi                                             #  226   0x334bc  5      
  nop                                                                #  227   0x334c1  1      
  nop                                                                #  228   0x334c2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  229   0x334c3  5      
  movl $0x10030ce0, %edi                                             #  230   0x334c8  5      
  movl %eax, 0xfffd815(%rip)                                         #  231   0x334cd  6      
  nop                                                                #  232   0x334d3  1      
  nop                                                                #  233   0x334d4  1      
  callq .__cxa_guard_release                                         #  234   0x334d5  5      
  jmpq .L_33580                                                      #  235   0x334da  5      
  nop                                                                #  236   0x334df  1      
  nop                                                                #  237   0x334e0  1      
.L_33720:                                                            #        0x334e1  0      
  movl $0x10030d00, %edi                                             #  238   0x334e1  5      
  nop                                                                #  239   0x334e6  1      
  nop                                                                #  240   0x334e7  1      
  callq .__cxa_guard_acquire                                         #  241   0x334e8  5      
  testl %eax, %eax                                                   #  242   0x334ed  2      
  jne .L_33780                                                       #  243   0x334ef  6      
  nop                                                                #  244   0x334f5  1      
  nop                                                                #  245   0x334f6  1      
.L_33760:                                                            #        0x334f7  0      
  movl 0xfffd80b(%rip), %eax                                         #  246   0x334f7  6      
  jmpq .L_335c0                                                      #  247   0x334fd  5      
  nop                                                                #  248   0x33502  1      
  nop                                                                #  249   0x33503  1      
.L_33780:                                                            #        0x33504  0      
  nop                                                                #  250   0x33504  1      
  nop                                                                #  251   0x33505  1      
  callq ._ZN2pp6Module3GetEv                                         #  252   0x33506  5      
  movl %eax, %edi                                                    #  253   0x3350b  2      
  movl $0x10020644, %esi                                             #  254   0x3350d  5      
  nop                                                                #  255   0x33512  1      
  nop                                                                #  256   0x33513  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  257   0x33514  5      
  movl $0x10030d00, %edi                                             #  258   0x33519  5      
  movl %eax, 0xfffd7e4(%rip)                                         #  259   0x3351e  6      
  nop                                                                #  260   0x33524  1      
  nop                                                                #  261   0x33525  1      
  callq .__cxa_guard_release                                         #  262   0x33526  5      
  jmpq .L_33760                                                      #  263   0x3352b  5      
  nop                                                                #  264   0x33530  1      
  nop                                                                #  265   0x33531  1      
.L_33800:                                                            #        0x33532  0      
  nop                                                                #  266   0x33532  1      
  nop                                                                #  267   0x33533  1      
  callq ._ZN2pp6Module3GetEv                                         #  268   0x33534  5      
  movl %eax, %edi                                                    #  269   0x33539  2      
  movl $0x10020664, %esi                                             #  270   0x3353b  5      
  nop                                                                #  271   0x33540  1      
  nop                                                                #  272   0x33541  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  273   0x33542  5      
  movl $0x10030cf0, %edi                                             #  274   0x33547  5      
  movl %eax, 0xfffd7a6(%rip)                                         #  275   0x3354c  6      
  nop                                                                #  276   0x33552  1      
  nop                                                                #  277   0x33553  1      
  callq .__cxa_guard_release                                         #  278   0x33554  5      
  jmpq .L_33500                                                      #  279   0x33559  5      
  nop                                                                #  280   0x3355e  1      
  nop                                                                #  281   0x3355f  1      
.L_33880:                                                            #        0x33560  0      
  movl %eax, %ebx                                                    #  282   0x33560  2      
  movl $0x10030ce0, %edi                                             #  283   0x33562  5      
  nop                                                                #  284   0x33567  1      
  nop                                                                #  285   0x33568  1      
  callq .__cxa_guard_abort                                           #  286   0x33569  5      
  movl %ebx, %edi                                                    #  287   0x3356e  2      
  nop                                                                #  288   0x33570  1      
  nop                                                                #  289   0x33571  1      
  callq ._Unwind_Resume                                              #  290   0x33572  5      
.L_338c0:                                                            #        0x33577  0      
  movl %eax, %ebx                                                    #  291   0x33577  2      
  movl $0x10030cf0, %edi                                             #  292   0x33579  5      
  nop                                                                #  293   0x3357e  1      
  nop                                                                #  294   0x3357f  1      
  callq .__cxa_guard_abort                                           #  295   0x33580  5      
  movl %ebx, %edi                                                    #  296   0x33585  2      
  nop                                                                #  297   0x33587  1      
  nop                                                                #  298   0x33588  1      
  callq ._Unwind_Resume                                              #  299   0x33589  5      
  jmpq .L_338c0                                                      #  300   0x3358e  5      
  nop                                                                #  301   0x33593  1      
  nop                                                                #  302   0x33594  1      
  jmpq .L_33880                                                      #  303   0x33595  5      
  nop                                                                #  304   0x3359a  1      
  nop                                                                #  305   0x3359b  1      
.L_33940:                                                            #        0x3359c  0      
  movl %eax, %ebx                                                    #  306   0x3359c  2      
  movl $0x10030d00, %edi                                             #  307   0x3359e  5      
  nop                                                                #  308   0x335a3  1      
  nop                                                                #  309   0x335a4  1      
  callq .__cxa_guard_abort                                           #  310   0x335a5  5      
  movl %ebx, %edi                                                    #  311   0x335aa  2      
  nop                                                                #  312   0x335ac  1      
  nop                                                                #  313   0x335ad  1      
  callq ._Unwind_Resume                                              #  314   0x335ae  5      
  jmpq .L_33940                                                      #  315   0x335b3  5      
  nop                                                                #  316   0x335b8  1      
  nop                                                                #  317   0x335b9  1      
                                                                                              
.size _ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6DeleteERKNS_18CompletionCallbackE

