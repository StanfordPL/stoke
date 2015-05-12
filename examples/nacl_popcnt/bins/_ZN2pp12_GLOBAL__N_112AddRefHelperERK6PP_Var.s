  .text
  .globl _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, @function

#! file-offset 0x2bec0
#! rip-offset  0x2bec0
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var:   #        0x2bec0  0      
  pushq %rbx                                     #  1     0x2bec0  2      
  movl %edi, %ebx                                #  2     0x2bec2  2      
  subl $0x30, %esp                               #  3     0x2bec4  3      
  addq %r15, %rsp                                #  4     0x2bec7  3      
  cmpb $0x0, 0x10004daf(%rip)                    #  5     0x2beca  7      
  je .L_2c100                                    #  6     0x2bed1  6      
  nop                                            #  7     0x2bed7  1      
.L_2bee0:                                        #        0x2bed8  0      
  movl 0x10004daa(%rip), %eax                    #  8     0x2bed8  6      
  testq %rax, %rax                               #  9     0x2bede  3      
  jne .L_2c080                                   #  10    0x2bee1  6      
  cmpb $0x0, 0x10004da2(%rip)                    #  11    0x2bee7  7      
  je .L_2bfe0                                    #  12    0x2beee  6      
  nop                                            #  13    0x2bef4  1      
.L_2bf00:                                        #        0x2bef5  0      
  movl 0x10004d9d(%rip), %eax                    #  14    0x2bef5  6      
  testq %rax, %rax                               #  15    0x2befb  3      
  jne .L_2bf60                                   #  16    0x2befe  6      
  cmpb $0x0, 0x10004d95(%rip)                    #  17    0x2bf04  7      
  je .L_2c2e0                                    #  18    0x2bf0b  6      
  nop                                            #  19    0x2bf11  1      
.L_2bf20:                                        #        0x2bf12  0      
  movl 0x10004d90(%rip), %edx                    #  20    0x2bf12  6      
  xorl %eax, %eax                                #  21    0x2bf18  2      
  testq %rdx, %rdx                               #  22    0x2bf1a  3      
  jne .L_2c260                                   #  23    0x2bf1d  6      
  addl $0x30, %esp                               #  24    0x2bf23  3      
  addq %r15, %rsp                                #  25    0x2bf26  3      
  popq %rbx                                      #  26    0x2bf29  2      
  popq %r11                                      #  27    0x2bf2b  3      
  nop                                            #  28    0x2bf2e  1      
  andl $0xffffffe0, %r11d                        #  29    0x2bf2f  7      
  addq %r15, %r11                                #  30    0x2bf36  3      
  jmpq %r11                                      #  31    0x2bf39  3      
  nop                                            #  32    0x2bf3c  1      
  nop                                            #  33    0x2bf3d  1      
.L_2bf60:                                        #        0x2bf3e  0      
  cmpb $0x0, 0x10004d4b(%rip)                    #  34    0x2bf3e  7      
  je .L_2c1a0                                    #  35    0x2bf45  6      
  nop                                            #  36    0x2bf4b  1      
  nop                                            #  37    0x2bf4c  1      
.L_2bf80:                                        #        0x2bf4d  0      
  movl %ebx, %ebx                                #  38    0x2bf4d  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2bf4f  4      
  movl %eax, %eax                                #  40    0x2bf53  2      
  movl (%r15,%rax,1), %eax                       #  41    0x2bf55  4      
  movq %rdi, 0x10(%rsp)                          #  42    0x2bf59  5      
  movl %ebx, %ebx                                #  43    0x2bf5e  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2bf60  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2bf65  5      
  nop                                            #  46    0x2bf6a  1      
  nop                                            #  47    0x2bf6b  1      
  nop                                            #  48    0x2bf6c  1      
  andl $0xffffffe0, %eax                         #  49    0x2bf6d  5      
  addq %r15, %rax                                #  50    0x2bf72  3      
  callq %rax                                     #  51    0x2bf75  2      
  addl $0x30, %esp                               #  52    0x2bf77  3      
  addq %r15, %rsp                                #  53    0x2bf7a  3      
  movl $0x1, %eax                                #  54    0x2bf7d  5      
  popq %rbx                                      #  55    0x2bf82  2      
  popq %r11                                      #  56    0x2bf84  3      
  andl $0xffffffe0, %r11d                        #  57    0x2bf87  7      
  addq %r15, %r11                                #  58    0x2bf8e  3      
  jmpq %r11                                      #  59    0x2bf91  3      
  nop                                            #  60    0x2bf94  1      
.L_2bfe0:                                        #        0x2bf95  0      
  movl $0x10030c90, %edi                         #  61    0x2bf95  5      
  nop                                            #  62    0x2bf9a  1      
  nop                                            #  63    0x2bf9b  1      
  callq .__cxa_guard_acquire                     #  64    0x2bf9c  5      
  testl %eax, %eax                               #  65    0x2bfa1  2      
  je .L_2bf00                                    #  66    0x2bfa3  6      
  nop                                            #  67    0x2bfa9  1      
  nop                                            #  68    0x2bfaa  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2bfab  5      
  movl %eax, %edi                                #  70    0x2bfb0  2      
  movl $0x10020522, %esi                         #  71    0x2bfb2  5      
  nop                                            #  72    0x2bfb7  1      
  nop                                            #  73    0x2bfb8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2bfb9  5      
  movl $0x10030c90, %edi                         #  75    0x2bfbe  5      
  movl %eax, 0x10004ccf(%rip)                    #  76    0x2bfc3  6      
  nop                                            #  77    0x2bfc9  1      
  nop                                            #  78    0x2bfca  1      
  callq .__cxa_guard_release                     #  79    0x2bfcb  5      
  jmpq .L_2bf00                                  #  80    0x2bfd0  5      
  nop                                            #  81    0x2bfd5  1      
  nop                                            #  82    0x2bfd6  1      
.L_2c080:                                        #        0x2bfd7  0      
  cmpb $0x0, 0x10004ca2(%rip)                    #  83    0x2bfd7  7      
  je .L_2c200                                    #  84    0x2bfde  6      
  nop                                            #  85    0x2bfe4  1      
  nop                                            #  86    0x2bfe5  1      
.L_2c0a0:                                        #        0x2bfe6  0      
  movl %ebx, %ebx                                #  87    0x2bfe6  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2bfe8  4      
  movl %eax, %eax                                #  89    0x2bfec  2      
  movl (%r15,%rax,1), %eax                       #  90    0x2bfee  4      
  movq %rdi, 0x20(%rsp)                          #  91    0x2bff2  5      
  movl %ebx, %ebx                                #  92    0x2bff7  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2bff9  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2bffe  5      
  nop                                            #  95    0x2c003  1      
  nop                                            #  96    0x2c004  1      
  nop                                            #  97    0x2c005  1      
  andl $0xffffffe0, %eax                         #  98    0x2c006  5      
  addq %r15, %rax                                #  99    0x2c00b  3      
  callq %rax                                     #  100   0x2c00e  2      
  addl $0x30, %esp                               #  101   0x2c010  3      
  addq %r15, %rsp                                #  102   0x2c013  3      
  movl $0x1, %eax                                #  103   0x2c016  5      
  popq %rbx                                      #  104   0x2c01b  2      
  popq %r11                                      #  105   0x2c01d  3      
  andl $0xffffffe0, %r11d                        #  106   0x2c020  7      
  addq %r15, %r11                                #  107   0x2c027  3      
  jmpq %r11                                      #  108   0x2c02a  3      
  nop                                            #  109   0x2c02d  1      
.L_2c100:                                        #        0x2c02e  0      
  movl $0x10030c80, %edi                         #  110   0x2c02e  5      
  nop                                            #  111   0x2c033  1      
  nop                                            #  112   0x2c034  1      
  callq .__cxa_guard_acquire                     #  113   0x2c035  5      
  testl %eax, %eax                               #  114   0x2c03a  2      
  je .L_2bee0                                    #  115   0x2c03c  6      
  nop                                            #  116   0x2c042  1      
  nop                                            #  117   0x2c043  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2c044  5      
  movl %eax, %edi                                #  119   0x2c049  2      
  movl $0x10020516, %esi                         #  120   0x2c04b  5      
  nop                                            #  121   0x2c050  1      
  nop                                            #  122   0x2c051  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2c052  5      
  movl $0x10030c80, %edi                         #  124   0x2c057  5      
  movl %eax, 0x10004c26(%rip)                    #  125   0x2c05c  6      
  nop                                            #  126   0x2c062  1      
  nop                                            #  127   0x2c063  1      
  callq .__cxa_guard_release                     #  128   0x2c064  5      
  jmpq .L_2bee0                                  #  129   0x2c069  5      
  nop                                            #  130   0x2c06e  1      
  nop                                            #  131   0x2c06f  1      
.L_2c1a0:                                        #        0x2c070  0      
  movl $0x10030c90, %edi                         #  132   0x2c070  5      
  nop                                            #  133   0x2c075  1      
  nop                                            #  134   0x2c076  1      
  callq .__cxa_guard_acquire                     #  135   0x2c077  5      
  testl %eax, %eax                               #  136   0x2c07c  2      
  jne .L_2c4e0                                   #  137   0x2c07e  6      
  nop                                            #  138   0x2c084  1      
  nop                                            #  139   0x2c085  1      
.L_2c1e0:                                        #        0x2c086  0      
  movl 0x10004c0c(%rip), %eax                    #  140   0x2c086  6      
  jmpq .L_2bf80                                  #  141   0x2c08c  5      
  nop                                            #  142   0x2c091  1      
  nop                                            #  143   0x2c092  1      
.L_2c200:                                        #        0x2c093  0      
  movl $0x10030c80, %edi                         #  144   0x2c093  5      
  nop                                            #  145   0x2c098  1      
  nop                                            #  146   0x2c099  1      
  callq .__cxa_guard_acquire                     #  147   0x2c09a  5      
  testl %eax, %eax                               #  148   0x2c09f  2      
  jne .L_2c380                                   #  149   0x2c0a1  6      
  nop                                            #  150   0x2c0a7  1      
  nop                                            #  151   0x2c0a8  1      
.L_2c240:                                        #        0x2c0a9  0      
  movl 0x10004bd9(%rip), %eax                    #  152   0x2c0a9  6      
  jmpq .L_2c0a0                                  #  153   0x2c0af  5      
  nop                                            #  154   0x2c0b4  1      
  nop                                            #  155   0x2c0b5  1      
.L_2c260:                                        #        0x2c0b6  0      
  cmpb $0x0, 0x10004be3(%rip)                    #  156   0x2c0b6  7      
  je .L_2c400                                    #  157   0x2c0bd  6      
  nop                                            #  158   0x2c0c3  1      
  nop                                            #  159   0x2c0c4  1      
.L_2c280:                                        #        0x2c0c5  0      
  movl %ebx, %ebx                                #  160   0x2c0c5  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2c0c7  4      
  movl %edx, %edx                                #  162   0x2c0cb  2      
  movl (%r15,%rdx,1), %eax                       #  163   0x2c0cd  4      
  movq %rdi, (%rsp)                              #  164   0x2c0d1  4      
  movl %ebx, %ebx                                #  165   0x2c0d5  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2c0d7  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2c0dc  5      
  nop                                            #  168   0x2c0e1  1      
  nop                                            #  169   0x2c0e2  1      
  nop                                            #  170   0x2c0e3  1      
  andl $0xffffffe0, %eax                         #  171   0x2c0e4  5      
  addq %r15, %rax                                #  172   0x2c0e9  3      
  callq %rax                                     #  173   0x2c0ec  2      
  addl $0x30, %esp                               #  174   0x2c0ee  3      
  addq %r15, %rsp                                #  175   0x2c0f1  3      
  movl $0x1, %eax                                #  176   0x2c0f4  5      
  popq %rbx                                      #  177   0x2c0f9  2      
  popq %r11                                      #  178   0x2c0fb  3      
  andl $0xffffffe0, %r11d                        #  179   0x2c0fe  7      
  addq %r15, %r11                                #  180   0x2c105  3      
  jmpq %r11                                      #  181   0x2c108  3      
  nop                                            #  182   0x2c10b  1      
.L_2c2e0:                                        #        0x2c10c  0      
  movl $0x10030ca0, %edi                         #  183   0x2c10c  5      
  nop                                            #  184   0x2c111  1      
  nop                                            #  185   0x2c112  1      
  callq .__cxa_guard_acquire                     #  186   0x2c113  5      
  testl %eax, %eax                               #  187   0x2c118  2      
  je .L_2bf20                                    #  188   0x2c11a  6      
  nop                                            #  189   0x2c120  1      
  nop                                            #  190   0x2c121  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2c122  5      
  movl %eax, %edi                                #  192   0x2c127  2      
  movl $0x1002050a, %esi                         #  193   0x2c129  5      
  nop                                            #  194   0x2c12e  1      
  nop                                            #  195   0x2c12f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2c130  5      
  movl $0x10030ca0, %edi                         #  197   0x2c135  5      
  movl %eax, 0x10004b68(%rip)                    #  198   0x2c13a  6      
  nop                                            #  199   0x2c140  1      
  nop                                            #  200   0x2c141  1      
  callq .__cxa_guard_release                     #  201   0x2c142  5      
  jmpq .L_2bf20                                  #  202   0x2c147  5      
  nop                                            #  203   0x2c14c  1      
  nop                                            #  204   0x2c14d  1      
.L_2c380:                                        #        0x2c14e  0      
  nop                                            #  205   0x2c14e  1      
  nop                                            #  206   0x2c14f  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2c150  5      
  movl %eax, %edi                                #  208   0x2c155  2      
  movl $0x10020516, %esi                         #  209   0x2c157  5      
  nop                                            #  210   0x2c15c  1      
  nop                                            #  211   0x2c15d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2c15e  5      
  movl $0x10030c80, %edi                         #  213   0x2c163  5      
  movl %eax, 0x10004b1a(%rip)                    #  214   0x2c168  6      
  nop                                            #  215   0x2c16e  1      
  nop                                            #  216   0x2c16f  1      
  callq .__cxa_guard_release                     #  217   0x2c170  5      
  jmpq .L_2c240                                  #  218   0x2c175  5      
  nop                                            #  219   0x2c17a  1      
  nop                                            #  220   0x2c17b  1      
.L_2c400:                                        #        0x2c17c  0      
  movl $0x10030ca0, %edi                         #  221   0x2c17c  5      
  nop                                            #  222   0x2c181  1      
  nop                                            #  223   0x2c182  1      
  callq .__cxa_guard_acquire                     #  224   0x2c183  5      
  testl %eax, %eax                               #  225   0x2c188  2      
  jne .L_2c460                                   #  226   0x2c18a  6      
  nop                                            #  227   0x2c190  1      
  nop                                            #  228   0x2c191  1      
.L_2c440:                                        #        0x2c192  0      
  movl 0x10004b10(%rip), %edx                    #  229   0x2c192  6      
  jmpq .L_2c280                                  #  230   0x2c198  5      
  nop                                            #  231   0x2c19d  1      
  nop                                            #  232   0x2c19e  1      
.L_2c460:                                        #        0x2c19f  0      
  nop                                            #  233   0x2c19f  1      
  nop                                            #  234   0x2c1a0  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2c1a1  5      
  movl %eax, %edi                                #  236   0x2c1a6  2      
  movl $0x1002050a, %esi                         #  237   0x2c1a8  5      
  nop                                            #  238   0x2c1ad  1      
  nop                                            #  239   0x2c1ae  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2c1af  5      
  movl $0x10030ca0, %edi                         #  241   0x2c1b4  5      
  movl %eax, 0x10004ae9(%rip)                    #  242   0x2c1b9  6      
  nop                                            #  243   0x2c1bf  1      
  nop                                            #  244   0x2c1c0  1      
  callq .__cxa_guard_release                     #  245   0x2c1c1  5      
  jmpq .L_2c440                                  #  246   0x2c1c6  5      
  nop                                            #  247   0x2c1cb  1      
  nop                                            #  248   0x2c1cc  1      
.L_2c4e0:                                        #        0x2c1cd  0      
  nop                                            #  249   0x2c1cd  1      
  nop                                            #  250   0x2c1ce  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2c1cf  5      
  movl %eax, %edi                                #  252   0x2c1d4  2      
  movl $0x10020522, %esi                         #  253   0x2c1d6  5      
  nop                                            #  254   0x2c1db  1      
  nop                                            #  255   0x2c1dc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2c1dd  5      
  movl $0x10030c90, %edi                         #  257   0x2c1e2  5      
  movl %eax, 0x10004aab(%rip)                    #  258   0x2c1e7  6      
  nop                                            #  259   0x2c1ed  1      
  nop                                            #  260   0x2c1ee  1      
  callq .__cxa_guard_release                     #  261   0x2c1ef  5      
  jmpq .L_2c1e0                                  #  262   0x2c1f4  5      
  nop                                            #  263   0x2c1f9  1      
  nop                                            #  264   0x2c1fa  1      
.L_2c560:                                        #        0x2c1fb  0      
  movl %eax, %ebx                                #  265   0x2c1fb  2      
  movl $0x10030c80, %edi                         #  266   0x2c1fd  5      
  nop                                            #  267   0x2c202  1      
  nop                                            #  268   0x2c203  1      
  callq .__cxa_guard_abort                       #  269   0x2c204  5      
  movl %ebx, %edi                                #  270   0x2c209  2      
  nop                                            #  271   0x2c20b  1      
  nop                                            #  272   0x2c20c  1      
  callq ._Unwind_Resume                          #  273   0x2c20d  5      
.L_2c5a0:                                        #        0x2c212  0      
  movl %eax, %ebx                                #  274   0x2c212  2      
  movl $0x10030c90, %edi                         #  275   0x2c214  5      
  nop                                            #  276   0x2c219  1      
  nop                                            #  277   0x2c21a  1      
  callq .__cxa_guard_abort                       #  278   0x2c21b  5      
  movl %ebx, %edi                                #  279   0x2c220  2      
  nop                                            #  280   0x2c222  1      
  nop                                            #  281   0x2c223  1      
  callq ._Unwind_Resume                          #  282   0x2c224  5      
  jmpq .L_2c5a0                                  #  283   0x2c229  5      
  nop                                            #  284   0x2c22e  1      
  nop                                            #  285   0x2c22f  1      
  jmpq .L_2c560                                  #  286   0x2c230  5      
  nop                                            #  287   0x2c235  1      
  nop                                            #  288   0x2c236  1      
.L_2c620:                                        #        0x2c237  0      
  movl %eax, %ebx                                #  289   0x2c237  2      
  movl $0x10030ca0, %edi                         #  290   0x2c239  5      
  nop                                            #  291   0x2c23e  1      
  nop                                            #  292   0x2c23f  1      
  callq .__cxa_guard_abort                       #  293   0x2c240  5      
  movl %ebx, %edi                                #  294   0x2c245  2      
  nop                                            #  295   0x2c247  1      
  nop                                            #  296   0x2c248  1      
  callq ._Unwind_Resume                          #  297   0x2c249  5      
  jmpq .L_2c620                                  #  298   0x2c24e  5      
  nop                                            #  299   0x2c253  1      
  nop                                            #  300   0x2c254  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var

