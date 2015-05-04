  .text
  .globl _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, @function

#! file-offset 0x2bf40
#! rip-offset  0x2bf40
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var:   #        0x2bf40  0      
  pushq %rbx                                     #  1     0x2bf40  2      
  movl %edi, %ebx                                #  2     0x2bf42  2      
  subl $0x30, %esp                               #  3     0x2bf44  3      
  addq %r15, %rsp                                #  4     0x2bf47  3      
  cmpb $0x0, 0x10004d2f(%rip)                    #  5     0x2bf4a  7      
  je .L_2c180                                    #  6     0x2bf51  6      
  nop                                            #  7     0x2bf57  1      
.L_2bf60:                                        #        0x2bf58  0      
  movl 0x10004d2a(%rip), %eax                    #  8     0x2bf58  6      
  testq %rax, %rax                               #  9     0x2bf5e  3      
  jne .L_2c100                                   #  10    0x2bf61  6      
  cmpb $0x0, 0x10004d22(%rip)                    #  11    0x2bf67  7      
  je .L_2c060                                    #  12    0x2bf6e  6      
  nop                                            #  13    0x2bf74  1      
.L_2bf80:                                        #        0x2bf75  0      
  movl 0x10004d1d(%rip), %eax                    #  14    0x2bf75  6      
  testq %rax, %rax                               #  15    0x2bf7b  3      
  jne .L_2bfe0                                   #  16    0x2bf7e  6      
  cmpb $0x0, 0x10004d15(%rip)                    #  17    0x2bf84  7      
  je .L_2c360                                    #  18    0x2bf8b  6      
  nop                                            #  19    0x2bf91  1      
.L_2bfa0:                                        #        0x2bf92  0      
  movl 0x10004d10(%rip), %edx                    #  20    0x2bf92  6      
  xorl %eax, %eax                                #  21    0x2bf98  2      
  testq %rdx, %rdx                               #  22    0x2bf9a  3      
  jne .L_2c2e0                                   #  23    0x2bf9d  6      
  addl $0x30, %esp                               #  24    0x2bfa3  3      
  addq %r15, %rsp                                #  25    0x2bfa6  3      
  popq %rbx                                      #  26    0x2bfa9  2      
  popq %r11                                      #  27    0x2bfab  3      
  nop                                            #  28    0x2bfae  1      
  andl $0xffffffe0, %r11d                        #  29    0x2bfaf  7      
  addq %r15, %r11                                #  30    0x2bfb6  3      
  jmpq %r11                                      #  31    0x2bfb9  3      
  nop                                            #  32    0x2bfbc  1      
  nop                                            #  33    0x2bfbd  1      
.L_2bfe0:                                        #        0x2bfbe  0      
  cmpb $0x0, 0x10004ccb(%rip)                    #  34    0x2bfbe  7      
  je .L_2c220                                    #  35    0x2bfc5  6      
  nop                                            #  36    0x2bfcb  1      
  nop                                            #  37    0x2bfcc  1      
.L_2c000:                                        #        0x2bfcd  0      
  movl %ebx, %ebx                                #  38    0x2bfcd  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2bfcf  4      
  movl %eax, %eax                                #  40    0x2bfd3  2      
  movl (%r15,%rax,1), %eax                       #  41    0x2bfd5  4      
  movq %rdi, 0x10(%rsp)                          #  42    0x2bfd9  5      
  movl %ebx, %ebx                                #  43    0x2bfde  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2bfe0  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2bfe5  5      
  nop                                            #  46    0x2bfea  1      
  nop                                            #  47    0x2bfeb  1      
  nop                                            #  48    0x2bfec  1      
  andl $0xffffffe0, %eax                         #  49    0x2bfed  5      
  addq %r15, %rax                                #  50    0x2bff2  3      
  callq %rax                                     #  51    0x2bff5  2      
  addl $0x30, %esp                               #  52    0x2bff7  3      
  addq %r15, %rsp                                #  53    0x2bffa  3      
  movl $0x1, %eax                                #  54    0x2bffd  5      
  popq %rbx                                      #  55    0x2c002  2      
  popq %r11                                      #  56    0x2c004  3      
  andl $0xffffffe0, %r11d                        #  57    0x2c007  7      
  addq %r15, %r11                                #  58    0x2c00e  3      
  jmpq %r11                                      #  59    0x2c011  3      
  nop                                            #  60    0x2c014  1      
.L_2c060:                                        #        0x2c015  0      
  movl $0x10030c90, %edi                         #  61    0x2c015  5      
  nop                                            #  62    0x2c01a  1      
  nop                                            #  63    0x2c01b  1      
  callq .__cxa_guard_acquire                     #  64    0x2c01c  5      
  testl %eax, %eax                               #  65    0x2c021  2      
  je .L_2bf80                                    #  66    0x2c023  6      
  nop                                            #  67    0x2c029  1      
  nop                                            #  68    0x2c02a  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2c02b  5      
  movl %eax, %edi                                #  70    0x2c030  2      
  movl $0x10020522, %esi                         #  71    0x2c032  5      
  nop                                            #  72    0x2c037  1      
  nop                                            #  73    0x2c038  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2c039  5      
  movl $0x10030c90, %edi                         #  75    0x2c03e  5      
  movl %eax, 0x10004c4f(%rip)                    #  76    0x2c043  6      
  nop                                            #  77    0x2c049  1      
  nop                                            #  78    0x2c04a  1      
  callq .__cxa_guard_release                     #  79    0x2c04b  5      
  jmpq .L_2bf80                                  #  80    0x2c050  5      
  nop                                            #  81    0x2c055  1      
  nop                                            #  82    0x2c056  1      
.L_2c100:                                        #        0x2c057  0      
  cmpb $0x0, 0x10004c22(%rip)                    #  83    0x2c057  7      
  je .L_2c280                                    #  84    0x2c05e  6      
  nop                                            #  85    0x2c064  1      
  nop                                            #  86    0x2c065  1      
.L_2c120:                                        #        0x2c066  0      
  movl %ebx, %ebx                                #  87    0x2c066  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2c068  4      
  movl %eax, %eax                                #  89    0x2c06c  2      
  movl (%r15,%rax,1), %eax                       #  90    0x2c06e  4      
  movq %rdi, 0x20(%rsp)                          #  91    0x2c072  5      
  movl %ebx, %ebx                                #  92    0x2c077  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2c079  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2c07e  5      
  nop                                            #  95    0x2c083  1      
  nop                                            #  96    0x2c084  1      
  nop                                            #  97    0x2c085  1      
  andl $0xffffffe0, %eax                         #  98    0x2c086  5      
  addq %r15, %rax                                #  99    0x2c08b  3      
  callq %rax                                     #  100   0x2c08e  2      
  addl $0x30, %esp                               #  101   0x2c090  3      
  addq %r15, %rsp                                #  102   0x2c093  3      
  movl $0x1, %eax                                #  103   0x2c096  5      
  popq %rbx                                      #  104   0x2c09b  2      
  popq %r11                                      #  105   0x2c09d  3      
  andl $0xffffffe0, %r11d                        #  106   0x2c0a0  7      
  addq %r15, %r11                                #  107   0x2c0a7  3      
  jmpq %r11                                      #  108   0x2c0aa  3      
  nop                                            #  109   0x2c0ad  1      
.L_2c180:                                        #        0x2c0ae  0      
  movl $0x10030c80, %edi                         #  110   0x2c0ae  5      
  nop                                            #  111   0x2c0b3  1      
  nop                                            #  112   0x2c0b4  1      
  callq .__cxa_guard_acquire                     #  113   0x2c0b5  5      
  testl %eax, %eax                               #  114   0x2c0ba  2      
  je .L_2bf60                                    #  115   0x2c0bc  6      
  nop                                            #  116   0x2c0c2  1      
  nop                                            #  117   0x2c0c3  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2c0c4  5      
  movl %eax, %edi                                #  119   0x2c0c9  2      
  movl $0x10020516, %esi                         #  120   0x2c0cb  5      
  nop                                            #  121   0x2c0d0  1      
  nop                                            #  122   0x2c0d1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2c0d2  5      
  movl $0x10030c80, %edi                         #  124   0x2c0d7  5      
  movl %eax, 0x10004ba6(%rip)                    #  125   0x2c0dc  6      
  nop                                            #  126   0x2c0e2  1      
  nop                                            #  127   0x2c0e3  1      
  callq .__cxa_guard_release                     #  128   0x2c0e4  5      
  jmpq .L_2bf60                                  #  129   0x2c0e9  5      
  nop                                            #  130   0x2c0ee  1      
  nop                                            #  131   0x2c0ef  1      
.L_2c220:                                        #        0x2c0f0  0      
  movl $0x10030c90, %edi                         #  132   0x2c0f0  5      
  nop                                            #  133   0x2c0f5  1      
  nop                                            #  134   0x2c0f6  1      
  callq .__cxa_guard_acquire                     #  135   0x2c0f7  5      
  testl %eax, %eax                               #  136   0x2c0fc  2      
  jne .L_2c560                                   #  137   0x2c0fe  6      
  nop                                            #  138   0x2c104  1      
  nop                                            #  139   0x2c105  1      
.L_2c260:                                        #        0x2c106  0      
  movl 0x10004b8c(%rip), %eax                    #  140   0x2c106  6      
  jmpq .L_2c000                                  #  141   0x2c10c  5      
  nop                                            #  142   0x2c111  1      
  nop                                            #  143   0x2c112  1      
.L_2c280:                                        #        0x2c113  0      
  movl $0x10030c80, %edi                         #  144   0x2c113  5      
  nop                                            #  145   0x2c118  1      
  nop                                            #  146   0x2c119  1      
  callq .__cxa_guard_acquire                     #  147   0x2c11a  5      
  testl %eax, %eax                               #  148   0x2c11f  2      
  jne .L_2c400                                   #  149   0x2c121  6      
  nop                                            #  150   0x2c127  1      
  nop                                            #  151   0x2c128  1      
.L_2c2c0:                                        #        0x2c129  0      
  movl 0x10004b59(%rip), %eax                    #  152   0x2c129  6      
  jmpq .L_2c120                                  #  153   0x2c12f  5      
  nop                                            #  154   0x2c134  1      
  nop                                            #  155   0x2c135  1      
.L_2c2e0:                                        #        0x2c136  0      
  cmpb $0x0, 0x10004b63(%rip)                    #  156   0x2c136  7      
  je .L_2c480                                    #  157   0x2c13d  6      
  nop                                            #  158   0x2c143  1      
  nop                                            #  159   0x2c144  1      
.L_2c300:                                        #        0x2c145  0      
  movl %ebx, %ebx                                #  160   0x2c145  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2c147  4      
  movl %edx, %edx                                #  162   0x2c14b  2      
  movl (%r15,%rdx,1), %eax                       #  163   0x2c14d  4      
  movq %rdi, (%rsp)                              #  164   0x2c151  4      
  movl %ebx, %ebx                                #  165   0x2c155  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2c157  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2c15c  5      
  nop                                            #  168   0x2c161  1      
  nop                                            #  169   0x2c162  1      
  nop                                            #  170   0x2c163  1      
  andl $0xffffffe0, %eax                         #  171   0x2c164  5      
  addq %r15, %rax                                #  172   0x2c169  3      
  callq %rax                                     #  173   0x2c16c  2      
  addl $0x30, %esp                               #  174   0x2c16e  3      
  addq %r15, %rsp                                #  175   0x2c171  3      
  movl $0x1, %eax                                #  176   0x2c174  5      
  popq %rbx                                      #  177   0x2c179  2      
  popq %r11                                      #  178   0x2c17b  3      
  andl $0xffffffe0, %r11d                        #  179   0x2c17e  7      
  addq %r15, %r11                                #  180   0x2c185  3      
  jmpq %r11                                      #  181   0x2c188  3      
  nop                                            #  182   0x2c18b  1      
.L_2c360:                                        #        0x2c18c  0      
  movl $0x10030ca0, %edi                         #  183   0x2c18c  5      
  nop                                            #  184   0x2c191  1      
  nop                                            #  185   0x2c192  1      
  callq .__cxa_guard_acquire                     #  186   0x2c193  5      
  testl %eax, %eax                               #  187   0x2c198  2      
  je .L_2bfa0                                    #  188   0x2c19a  6      
  nop                                            #  189   0x2c1a0  1      
  nop                                            #  190   0x2c1a1  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2c1a2  5      
  movl %eax, %edi                                #  192   0x2c1a7  2      
  movl $0x1002050a, %esi                         #  193   0x2c1a9  5      
  nop                                            #  194   0x2c1ae  1      
  nop                                            #  195   0x2c1af  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2c1b0  5      
  movl $0x10030ca0, %edi                         #  197   0x2c1b5  5      
  movl %eax, 0x10004ae8(%rip)                    #  198   0x2c1ba  6      
  nop                                            #  199   0x2c1c0  1      
  nop                                            #  200   0x2c1c1  1      
  callq .__cxa_guard_release                     #  201   0x2c1c2  5      
  jmpq .L_2bfa0                                  #  202   0x2c1c7  5      
  nop                                            #  203   0x2c1cc  1      
  nop                                            #  204   0x2c1cd  1      
.L_2c400:                                        #        0x2c1ce  0      
  nop                                            #  205   0x2c1ce  1      
  nop                                            #  206   0x2c1cf  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2c1d0  5      
  movl %eax, %edi                                #  208   0x2c1d5  2      
  movl $0x10020516, %esi                         #  209   0x2c1d7  5      
  nop                                            #  210   0x2c1dc  1      
  nop                                            #  211   0x2c1dd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2c1de  5      
  movl $0x10030c80, %edi                         #  213   0x2c1e3  5      
  movl %eax, 0x10004a9a(%rip)                    #  214   0x2c1e8  6      
  nop                                            #  215   0x2c1ee  1      
  nop                                            #  216   0x2c1ef  1      
  callq .__cxa_guard_release                     #  217   0x2c1f0  5      
  jmpq .L_2c2c0                                  #  218   0x2c1f5  5      
  nop                                            #  219   0x2c1fa  1      
  nop                                            #  220   0x2c1fb  1      
.L_2c480:                                        #        0x2c1fc  0      
  movl $0x10030ca0, %edi                         #  221   0x2c1fc  5      
  nop                                            #  222   0x2c201  1      
  nop                                            #  223   0x2c202  1      
  callq .__cxa_guard_acquire                     #  224   0x2c203  5      
  testl %eax, %eax                               #  225   0x2c208  2      
  jne .L_2c4e0                                   #  226   0x2c20a  6      
  nop                                            #  227   0x2c210  1      
  nop                                            #  228   0x2c211  1      
.L_2c4c0:                                        #        0x2c212  0      
  movl 0x10004a90(%rip), %edx                    #  229   0x2c212  6      
  jmpq .L_2c300                                  #  230   0x2c218  5      
  nop                                            #  231   0x2c21d  1      
  nop                                            #  232   0x2c21e  1      
.L_2c4e0:                                        #        0x2c21f  0      
  nop                                            #  233   0x2c21f  1      
  nop                                            #  234   0x2c220  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2c221  5      
  movl %eax, %edi                                #  236   0x2c226  2      
  movl $0x1002050a, %esi                         #  237   0x2c228  5      
  nop                                            #  238   0x2c22d  1      
  nop                                            #  239   0x2c22e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2c22f  5      
  movl $0x10030ca0, %edi                         #  241   0x2c234  5      
  movl %eax, 0x10004a69(%rip)                    #  242   0x2c239  6      
  nop                                            #  243   0x2c23f  1      
  nop                                            #  244   0x2c240  1      
  callq .__cxa_guard_release                     #  245   0x2c241  5      
  jmpq .L_2c4c0                                  #  246   0x2c246  5      
  nop                                            #  247   0x2c24b  1      
  nop                                            #  248   0x2c24c  1      
.L_2c560:                                        #        0x2c24d  0      
  nop                                            #  249   0x2c24d  1      
  nop                                            #  250   0x2c24e  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2c24f  5      
  movl %eax, %edi                                #  252   0x2c254  2      
  movl $0x10020522, %esi                         #  253   0x2c256  5      
  nop                                            #  254   0x2c25b  1      
  nop                                            #  255   0x2c25c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2c25d  5      
  movl $0x10030c90, %edi                         #  257   0x2c262  5      
  movl %eax, 0x10004a2b(%rip)                    #  258   0x2c267  6      
  nop                                            #  259   0x2c26d  1      
  nop                                            #  260   0x2c26e  1      
  callq .__cxa_guard_release                     #  261   0x2c26f  5      
  jmpq .L_2c260                                  #  262   0x2c274  5      
  nop                                            #  263   0x2c279  1      
  nop                                            #  264   0x2c27a  1      
.L_2c5e0:                                        #        0x2c27b  0      
  movl %eax, %ebx                                #  265   0x2c27b  2      
  movl $0x10030c80, %edi                         #  266   0x2c27d  5      
  nop                                            #  267   0x2c282  1      
  nop                                            #  268   0x2c283  1      
  callq .__cxa_guard_abort                       #  269   0x2c284  5      
  movl %ebx, %edi                                #  270   0x2c289  2      
  nop                                            #  271   0x2c28b  1      
  nop                                            #  272   0x2c28c  1      
  callq ._Unwind_Resume                          #  273   0x2c28d  5      
.L_2c620:                                        #        0x2c292  0      
  movl %eax, %ebx                                #  274   0x2c292  2      
  movl $0x10030c90, %edi                         #  275   0x2c294  5      
  nop                                            #  276   0x2c299  1      
  nop                                            #  277   0x2c29a  1      
  callq .__cxa_guard_abort                       #  278   0x2c29b  5      
  movl %ebx, %edi                                #  279   0x2c2a0  2      
  nop                                            #  280   0x2c2a2  1      
  nop                                            #  281   0x2c2a3  1      
  callq ._Unwind_Resume                          #  282   0x2c2a4  5      
  jmpq .L_2c620                                  #  283   0x2c2a9  5      
  nop                                            #  284   0x2c2ae  1      
  nop                                            #  285   0x2c2af  1      
  jmpq .L_2c5e0                                  #  286   0x2c2b0  5      
  nop                                            #  287   0x2c2b5  1      
  nop                                            #  288   0x2c2b6  1      
.L_2c6a0:                                        #        0x2c2b7  0      
  movl %eax, %ebx                                #  289   0x2c2b7  2      
  movl $0x10030ca0, %edi                         #  290   0x2c2b9  5      
  nop                                            #  291   0x2c2be  1      
  nop                                            #  292   0x2c2bf  1      
  callq .__cxa_guard_abort                       #  293   0x2c2c0  5      
  movl %ebx, %edi                                #  294   0x2c2c5  2      
  nop                                            #  295   0x2c2c7  1      
  nop                                            #  296   0x2c2c8  1      
  callq ._Unwind_Resume                          #  297   0x2c2c9  5      
  jmpq .L_2c6a0                                  #  298   0x2c2ce  5      
  nop                                            #  299   0x2c2d3  1      
  nop                                            #  300   0x2c2d4  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var

