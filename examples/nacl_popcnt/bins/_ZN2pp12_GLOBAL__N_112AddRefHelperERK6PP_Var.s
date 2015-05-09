  .text
  .globl _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, @function

#! file-offset 0x2bea0
#! rip-offset  0x2bea0
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var:   #        0x2bea0  0      
  pushq %rbx                                     #  1     0x2bea0  2      
  movl %edi, %ebx                                #  2     0x2bea2  2      
  subl $0x30, %esp                               #  3     0x2bea4  3      
  addq %r15, %rsp                                #  4     0x2bea7  3      
  cmpb $0x0, 0x10004dcf(%rip)                    #  5     0x2beaa  7      
  je .L_2c0e0                                    #  6     0x2beb1  6      
  nop                                            #  7     0x2beb7  1      
.L_2bec0:                                        #        0x2beb8  0      
  movl 0x10004dca(%rip), %eax                    #  8     0x2beb8  6      
  testq %rax, %rax                               #  9     0x2bebe  3      
  jne .L_2c060                                   #  10    0x2bec1  6      
  cmpb $0x0, 0x10004dc2(%rip)                    #  11    0x2bec7  7      
  je .L_2bfc0                                    #  12    0x2bece  6      
  nop                                            #  13    0x2bed4  1      
.L_2bee0:                                        #        0x2bed5  0      
  movl 0x10004dbd(%rip), %eax                    #  14    0x2bed5  6      
  testq %rax, %rax                               #  15    0x2bedb  3      
  jne .L_2bf40                                   #  16    0x2bede  6      
  cmpb $0x0, 0x10004db5(%rip)                    #  17    0x2bee4  7      
  je .L_2c2c0                                    #  18    0x2beeb  6      
  nop                                            #  19    0x2bef1  1      
.L_2bf00:                                        #        0x2bef2  0      
  movl 0x10004db0(%rip), %edx                    #  20    0x2bef2  6      
  xorl %eax, %eax                                #  21    0x2bef8  2      
  testq %rdx, %rdx                               #  22    0x2befa  3      
  jne .L_2c240                                   #  23    0x2befd  6      
  addl $0x30, %esp                               #  24    0x2bf03  3      
  addq %r15, %rsp                                #  25    0x2bf06  3      
  popq %rbx                                      #  26    0x2bf09  2      
  popq %r11                                      #  27    0x2bf0b  3      
  nop                                            #  28    0x2bf0e  1      
  andl $0xffffffe0, %r11d                        #  29    0x2bf0f  7      
  addq %r15, %r11                                #  30    0x2bf16  3      
  jmpq %r11                                      #  31    0x2bf19  3      
  nop                                            #  32    0x2bf1c  1      
  nop                                            #  33    0x2bf1d  1      
.L_2bf40:                                        #        0x2bf1e  0      
  cmpb $0x0, 0x10004d6b(%rip)                    #  34    0x2bf1e  7      
  je .L_2c180                                    #  35    0x2bf25  6      
  nop                                            #  36    0x2bf2b  1      
  nop                                            #  37    0x2bf2c  1      
.L_2bf60:                                        #        0x2bf2d  0      
  movl %ebx, %ebx                                #  38    0x2bf2d  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2bf2f  4      
  movl %eax, %eax                                #  40    0x2bf33  2      
  movl (%r15,%rax,1), %eax                       #  41    0x2bf35  4      
  movq %rdi, 0x10(%rsp)                          #  42    0x2bf39  5      
  movl %ebx, %ebx                                #  43    0x2bf3e  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2bf40  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2bf45  5      
  nop                                            #  46    0x2bf4a  1      
  nop                                            #  47    0x2bf4b  1      
  nop                                            #  48    0x2bf4c  1      
  andl $0xffffffe0, %eax                         #  49    0x2bf4d  5      
  addq %r15, %rax                                #  50    0x2bf52  3      
  callq %rax                                     #  51    0x2bf55  2      
  addl $0x30, %esp                               #  52    0x2bf57  3      
  addq %r15, %rsp                                #  53    0x2bf5a  3      
  movl $0x1, %eax                                #  54    0x2bf5d  5      
  popq %rbx                                      #  55    0x2bf62  2      
  popq %r11                                      #  56    0x2bf64  3      
  andl $0xffffffe0, %r11d                        #  57    0x2bf67  7      
  addq %r15, %r11                                #  58    0x2bf6e  3      
  jmpq %r11                                      #  59    0x2bf71  3      
  nop                                            #  60    0x2bf74  1      
.L_2bfc0:                                        #        0x2bf75  0      
  movl $0x10030c90, %edi                         #  61    0x2bf75  5      
  nop                                            #  62    0x2bf7a  1      
  nop                                            #  63    0x2bf7b  1      
  callq .__cxa_guard_acquire                     #  64    0x2bf7c  5      
  testl %eax, %eax                               #  65    0x2bf81  2      
  je .L_2bee0                                    #  66    0x2bf83  6      
  nop                                            #  67    0x2bf89  1      
  nop                                            #  68    0x2bf8a  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2bf8b  5      
  movl %eax, %edi                                #  70    0x2bf90  2      
  movl $0x10020522, %esi                         #  71    0x2bf92  5      
  nop                                            #  72    0x2bf97  1      
  nop                                            #  73    0x2bf98  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2bf99  5      
  movl $0x10030c90, %edi                         #  75    0x2bf9e  5      
  movl %eax, 0x10004cef(%rip)                    #  76    0x2bfa3  6      
  nop                                            #  77    0x2bfa9  1      
  nop                                            #  78    0x2bfaa  1      
  callq .__cxa_guard_release                     #  79    0x2bfab  5      
  jmpq .L_2bee0                                  #  80    0x2bfb0  5      
  nop                                            #  81    0x2bfb5  1      
  nop                                            #  82    0x2bfb6  1      
.L_2c060:                                        #        0x2bfb7  0      
  cmpb $0x0, 0x10004cc2(%rip)                    #  83    0x2bfb7  7      
  je .L_2c1e0                                    #  84    0x2bfbe  6      
  nop                                            #  85    0x2bfc4  1      
  nop                                            #  86    0x2bfc5  1      
.L_2c080:                                        #        0x2bfc6  0      
  movl %ebx, %ebx                                #  87    0x2bfc6  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2bfc8  4      
  movl %eax, %eax                                #  89    0x2bfcc  2      
  movl (%r15,%rax,1), %eax                       #  90    0x2bfce  4      
  movq %rdi, 0x20(%rsp)                          #  91    0x2bfd2  5      
  movl %ebx, %ebx                                #  92    0x2bfd7  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2bfd9  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2bfde  5      
  nop                                            #  95    0x2bfe3  1      
  nop                                            #  96    0x2bfe4  1      
  nop                                            #  97    0x2bfe5  1      
  andl $0xffffffe0, %eax                         #  98    0x2bfe6  5      
  addq %r15, %rax                                #  99    0x2bfeb  3      
  callq %rax                                     #  100   0x2bfee  2      
  addl $0x30, %esp                               #  101   0x2bff0  3      
  addq %r15, %rsp                                #  102   0x2bff3  3      
  movl $0x1, %eax                                #  103   0x2bff6  5      
  popq %rbx                                      #  104   0x2bffb  2      
  popq %r11                                      #  105   0x2bffd  3      
  andl $0xffffffe0, %r11d                        #  106   0x2c000  7      
  addq %r15, %r11                                #  107   0x2c007  3      
  jmpq %r11                                      #  108   0x2c00a  3      
  nop                                            #  109   0x2c00d  1      
.L_2c0e0:                                        #        0x2c00e  0      
  movl $0x10030c80, %edi                         #  110   0x2c00e  5      
  nop                                            #  111   0x2c013  1      
  nop                                            #  112   0x2c014  1      
  callq .__cxa_guard_acquire                     #  113   0x2c015  5      
  testl %eax, %eax                               #  114   0x2c01a  2      
  je .L_2bec0                                    #  115   0x2c01c  6      
  nop                                            #  116   0x2c022  1      
  nop                                            #  117   0x2c023  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2c024  5      
  movl %eax, %edi                                #  119   0x2c029  2      
  movl $0x10020516, %esi                         #  120   0x2c02b  5      
  nop                                            #  121   0x2c030  1      
  nop                                            #  122   0x2c031  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2c032  5      
  movl $0x10030c80, %edi                         #  124   0x2c037  5      
  movl %eax, 0x10004c46(%rip)                    #  125   0x2c03c  6      
  nop                                            #  126   0x2c042  1      
  nop                                            #  127   0x2c043  1      
  callq .__cxa_guard_release                     #  128   0x2c044  5      
  jmpq .L_2bec0                                  #  129   0x2c049  5      
  nop                                            #  130   0x2c04e  1      
  nop                                            #  131   0x2c04f  1      
.L_2c180:                                        #        0x2c050  0      
  movl $0x10030c90, %edi                         #  132   0x2c050  5      
  nop                                            #  133   0x2c055  1      
  nop                                            #  134   0x2c056  1      
  callq .__cxa_guard_acquire                     #  135   0x2c057  5      
  testl %eax, %eax                               #  136   0x2c05c  2      
  jne .L_2c4c0                                   #  137   0x2c05e  6      
  nop                                            #  138   0x2c064  1      
  nop                                            #  139   0x2c065  1      
.L_2c1c0:                                        #        0x2c066  0      
  movl 0x10004c2c(%rip), %eax                    #  140   0x2c066  6      
  jmpq .L_2bf60                                  #  141   0x2c06c  5      
  nop                                            #  142   0x2c071  1      
  nop                                            #  143   0x2c072  1      
.L_2c1e0:                                        #        0x2c073  0      
  movl $0x10030c80, %edi                         #  144   0x2c073  5      
  nop                                            #  145   0x2c078  1      
  nop                                            #  146   0x2c079  1      
  callq .__cxa_guard_acquire                     #  147   0x2c07a  5      
  testl %eax, %eax                               #  148   0x2c07f  2      
  jne .L_2c360                                   #  149   0x2c081  6      
  nop                                            #  150   0x2c087  1      
  nop                                            #  151   0x2c088  1      
.L_2c220:                                        #        0x2c089  0      
  movl 0x10004bf9(%rip), %eax                    #  152   0x2c089  6      
  jmpq .L_2c080                                  #  153   0x2c08f  5      
  nop                                            #  154   0x2c094  1      
  nop                                            #  155   0x2c095  1      
.L_2c240:                                        #        0x2c096  0      
  cmpb $0x0, 0x10004c03(%rip)                    #  156   0x2c096  7      
  je .L_2c3e0                                    #  157   0x2c09d  6      
  nop                                            #  158   0x2c0a3  1      
  nop                                            #  159   0x2c0a4  1      
.L_2c260:                                        #        0x2c0a5  0      
  movl %ebx, %ebx                                #  160   0x2c0a5  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2c0a7  4      
  movl %edx, %edx                                #  162   0x2c0ab  2      
  movl (%r15,%rdx,1), %eax                       #  163   0x2c0ad  4      
  movq %rdi, (%rsp)                              #  164   0x2c0b1  4      
  movl %ebx, %ebx                                #  165   0x2c0b5  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2c0b7  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2c0bc  5      
  nop                                            #  168   0x2c0c1  1      
  nop                                            #  169   0x2c0c2  1      
  nop                                            #  170   0x2c0c3  1      
  andl $0xffffffe0, %eax                         #  171   0x2c0c4  5      
  addq %r15, %rax                                #  172   0x2c0c9  3      
  callq %rax                                     #  173   0x2c0cc  2      
  addl $0x30, %esp                               #  174   0x2c0ce  3      
  addq %r15, %rsp                                #  175   0x2c0d1  3      
  movl $0x1, %eax                                #  176   0x2c0d4  5      
  popq %rbx                                      #  177   0x2c0d9  2      
  popq %r11                                      #  178   0x2c0db  3      
  andl $0xffffffe0, %r11d                        #  179   0x2c0de  7      
  addq %r15, %r11                                #  180   0x2c0e5  3      
  jmpq %r11                                      #  181   0x2c0e8  3      
  nop                                            #  182   0x2c0eb  1      
.L_2c2c0:                                        #        0x2c0ec  0      
  movl $0x10030ca0, %edi                         #  183   0x2c0ec  5      
  nop                                            #  184   0x2c0f1  1      
  nop                                            #  185   0x2c0f2  1      
  callq .__cxa_guard_acquire                     #  186   0x2c0f3  5      
  testl %eax, %eax                               #  187   0x2c0f8  2      
  je .L_2bf00                                    #  188   0x2c0fa  6      
  nop                                            #  189   0x2c100  1      
  nop                                            #  190   0x2c101  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2c102  5      
  movl %eax, %edi                                #  192   0x2c107  2      
  movl $0x1002050a, %esi                         #  193   0x2c109  5      
  nop                                            #  194   0x2c10e  1      
  nop                                            #  195   0x2c10f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2c110  5      
  movl $0x10030ca0, %edi                         #  197   0x2c115  5      
  movl %eax, 0x10004b88(%rip)                    #  198   0x2c11a  6      
  nop                                            #  199   0x2c120  1      
  nop                                            #  200   0x2c121  1      
  callq .__cxa_guard_release                     #  201   0x2c122  5      
  jmpq .L_2bf00                                  #  202   0x2c127  5      
  nop                                            #  203   0x2c12c  1      
  nop                                            #  204   0x2c12d  1      
.L_2c360:                                        #        0x2c12e  0      
  nop                                            #  205   0x2c12e  1      
  nop                                            #  206   0x2c12f  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2c130  5      
  movl %eax, %edi                                #  208   0x2c135  2      
  movl $0x10020516, %esi                         #  209   0x2c137  5      
  nop                                            #  210   0x2c13c  1      
  nop                                            #  211   0x2c13d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2c13e  5      
  movl $0x10030c80, %edi                         #  213   0x2c143  5      
  movl %eax, 0x10004b3a(%rip)                    #  214   0x2c148  6      
  nop                                            #  215   0x2c14e  1      
  nop                                            #  216   0x2c14f  1      
  callq .__cxa_guard_release                     #  217   0x2c150  5      
  jmpq .L_2c220                                  #  218   0x2c155  5      
  nop                                            #  219   0x2c15a  1      
  nop                                            #  220   0x2c15b  1      
.L_2c3e0:                                        #        0x2c15c  0      
  movl $0x10030ca0, %edi                         #  221   0x2c15c  5      
  nop                                            #  222   0x2c161  1      
  nop                                            #  223   0x2c162  1      
  callq .__cxa_guard_acquire                     #  224   0x2c163  5      
  testl %eax, %eax                               #  225   0x2c168  2      
  jne .L_2c440                                   #  226   0x2c16a  6      
  nop                                            #  227   0x2c170  1      
  nop                                            #  228   0x2c171  1      
.L_2c420:                                        #        0x2c172  0      
  movl 0x10004b30(%rip), %edx                    #  229   0x2c172  6      
  jmpq .L_2c260                                  #  230   0x2c178  5      
  nop                                            #  231   0x2c17d  1      
  nop                                            #  232   0x2c17e  1      
.L_2c440:                                        #        0x2c17f  0      
  nop                                            #  233   0x2c17f  1      
  nop                                            #  234   0x2c180  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2c181  5      
  movl %eax, %edi                                #  236   0x2c186  2      
  movl $0x1002050a, %esi                         #  237   0x2c188  5      
  nop                                            #  238   0x2c18d  1      
  nop                                            #  239   0x2c18e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2c18f  5      
  movl $0x10030ca0, %edi                         #  241   0x2c194  5      
  movl %eax, 0x10004b09(%rip)                    #  242   0x2c199  6      
  nop                                            #  243   0x2c19f  1      
  nop                                            #  244   0x2c1a0  1      
  callq .__cxa_guard_release                     #  245   0x2c1a1  5      
  jmpq .L_2c420                                  #  246   0x2c1a6  5      
  nop                                            #  247   0x2c1ab  1      
  nop                                            #  248   0x2c1ac  1      
.L_2c4c0:                                        #        0x2c1ad  0      
  nop                                            #  249   0x2c1ad  1      
  nop                                            #  250   0x2c1ae  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2c1af  5      
  movl %eax, %edi                                #  252   0x2c1b4  2      
  movl $0x10020522, %esi                         #  253   0x2c1b6  5      
  nop                                            #  254   0x2c1bb  1      
  nop                                            #  255   0x2c1bc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2c1bd  5      
  movl $0x10030c90, %edi                         #  257   0x2c1c2  5      
  movl %eax, 0x10004acb(%rip)                    #  258   0x2c1c7  6      
  nop                                            #  259   0x2c1cd  1      
  nop                                            #  260   0x2c1ce  1      
  callq .__cxa_guard_release                     #  261   0x2c1cf  5      
  jmpq .L_2c1c0                                  #  262   0x2c1d4  5      
  nop                                            #  263   0x2c1d9  1      
  nop                                            #  264   0x2c1da  1      
.L_2c540:                                        #        0x2c1db  0      
  movl %eax, %ebx                                #  265   0x2c1db  2      
  movl $0x10030c80, %edi                         #  266   0x2c1dd  5      
  nop                                            #  267   0x2c1e2  1      
  nop                                            #  268   0x2c1e3  1      
  callq .__cxa_guard_abort                       #  269   0x2c1e4  5      
  movl %ebx, %edi                                #  270   0x2c1e9  2      
  nop                                            #  271   0x2c1eb  1      
  nop                                            #  272   0x2c1ec  1      
  callq ._Unwind_Resume                          #  273   0x2c1ed  5      
.L_2c580:                                        #        0x2c1f2  0      
  movl %eax, %ebx                                #  274   0x2c1f2  2      
  movl $0x10030c90, %edi                         #  275   0x2c1f4  5      
  nop                                            #  276   0x2c1f9  1      
  nop                                            #  277   0x2c1fa  1      
  callq .__cxa_guard_abort                       #  278   0x2c1fb  5      
  movl %ebx, %edi                                #  279   0x2c200  2      
  nop                                            #  280   0x2c202  1      
  nop                                            #  281   0x2c203  1      
  callq ._Unwind_Resume                          #  282   0x2c204  5      
  jmpq .L_2c580                                  #  283   0x2c209  5      
  nop                                            #  284   0x2c20e  1      
  nop                                            #  285   0x2c20f  1      
  jmpq .L_2c540                                  #  286   0x2c210  5      
  nop                                            #  287   0x2c215  1      
  nop                                            #  288   0x2c216  1      
.L_2c600:                                        #        0x2c217  0      
  movl %eax, %ebx                                #  289   0x2c217  2      
  movl $0x10030ca0, %edi                         #  290   0x2c219  5      
  nop                                            #  291   0x2c21e  1      
  nop                                            #  292   0x2c21f  1      
  callq .__cxa_guard_abort                       #  293   0x2c220  5      
  movl %ebx, %edi                                #  294   0x2c225  2      
  nop                                            #  295   0x2c227  1      
  nop                                            #  296   0x2c228  1      
  callq ._Unwind_Resume                          #  297   0x2c229  5      
  jmpq .L_2c600                                  #  298   0x2c22e  5      
  nop                                            #  299   0x2c233  1      
  nop                                            #  300   0x2c234  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var

