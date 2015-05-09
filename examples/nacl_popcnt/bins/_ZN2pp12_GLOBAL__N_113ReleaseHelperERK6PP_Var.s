  .text
  .globl _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, @function

#! file-offset 0x2c960
#! rip-offset  0x2c960
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var:  #        0x2c960  0      
  pushq %rbx                                     #  1     0x2c960  2      
  movl %edi, %ebx                                #  2     0x2c962  2      
  subl $0x30, %esp                               #  3     0x2c964  3      
  addq %r15, %rsp                                #  4     0x2c967  3      
  cmpb $0x0, 0x1000430f(%rip)                    #  5     0x2c96a  7      
  je .L_2cba0                                    #  6     0x2c971  6      
  nop                                            #  7     0x2c977  1      
.L_2c980:                                        #        0x2c978  0      
  movl 0x1000430a(%rip), %eax                    #  8     0x2c978  6      
  testq %rax, %rax                               #  9     0x2c97e  3      
  jne .L_2cb20                                   #  10    0x2c981  6      
  cmpb $0x0, 0x10004302(%rip)                    #  11    0x2c987  7      
  je .L_2ca80                                    #  12    0x2c98e  6      
  nop                                            #  13    0x2c994  1      
.L_2c9a0:                                        #        0x2c995  0      
  movl 0x100042fd(%rip), %eax                    #  14    0x2c995  6      
  testq %rax, %rax                               #  15    0x2c99b  3      
  jne .L_2ca00                                   #  16    0x2c99e  6      
  cmpb $0x0, 0x100042f5(%rip)                    #  17    0x2c9a4  7      
  je .L_2cd80                                    #  18    0x2c9ab  6      
  nop                                            #  19    0x2c9b1  1      
.L_2c9c0:                                        #        0x2c9b2  0      
  movl 0x100042f0(%rip), %edx                    #  20    0x2c9b2  6      
  xorl %eax, %eax                                #  21    0x2c9b8  2      
  testq %rdx, %rdx                               #  22    0x2c9ba  3      
  jne .L_2cd00                                   #  23    0x2c9bd  6      
  addl $0x30, %esp                               #  24    0x2c9c3  3      
  addq %r15, %rsp                                #  25    0x2c9c6  3      
  popq %rbx                                      #  26    0x2c9c9  2      
  popq %r11                                      #  27    0x2c9cb  3      
  nop                                            #  28    0x2c9ce  1      
  andl $0xffffffe0, %r11d                        #  29    0x2c9cf  7      
  addq %r15, %r11                                #  30    0x2c9d6  3      
  jmpq %r11                                      #  31    0x2c9d9  3      
  nop                                            #  32    0x2c9dc  1      
  nop                                            #  33    0x2c9dd  1      
.L_2ca00:                                        #        0x2c9de  0      
  cmpb $0x0, 0x100042ab(%rip)                    #  34    0x2c9de  7      
  je .L_2cc40                                    #  35    0x2c9e5  6      
  nop                                            #  36    0x2c9eb  1      
  nop                                            #  37    0x2c9ec  1      
.L_2ca20:                                        #        0x2c9ed  0      
  movl %ebx, %ebx                                #  38    0x2c9ed  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2c9ef  4      
  movl %eax, %eax                                #  40    0x2c9f3  2      
  movl 0x4(%r15,%rax,1), %eax                    #  41    0x2c9f5  5      
  movq %rdi, 0x10(%rsp)                          #  42    0x2c9fa  5      
  movl %ebx, %ebx                                #  43    0x2c9ff  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2ca01  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2ca06  5      
  xchgw %ax, %ax                                 #  46    0x2ca0b  3      
  nop                                            #  47    0x2ca0e  1      
  nop                                            #  48    0x2ca0f  1      
  andl $0xffffffe0, %eax                         #  49    0x2ca10  5      
  addq %r15, %rax                                #  50    0x2ca15  3      
  callq %rax                                     #  51    0x2ca18  2      
  addl $0x30, %esp                               #  52    0x2ca1a  3      
  addq %r15, %rsp                                #  53    0x2ca1d  3      
  movl $0x1, %eax                                #  54    0x2ca20  5      
  popq %rbx                                      #  55    0x2ca25  2      
  popq %r11                                      #  56    0x2ca27  3      
  andl $0xffffffe0, %r11d                        #  57    0x2ca2a  7      
  addq %r15, %r11                                #  58    0x2ca31  3      
  jmpq %r11                                      #  59    0x2ca34  3      
  nop                                            #  60    0x2ca37  1      
.L_2ca80:                                        #        0x2ca38  0      
  movl $0x10030c90, %edi                         #  61    0x2ca38  5      
  nop                                            #  62    0x2ca3d  1      
  nop                                            #  63    0x2ca3e  1      
  callq .__cxa_guard_acquire                     #  64    0x2ca3f  5      
  testl %eax, %eax                               #  65    0x2ca44  2      
  je .L_2c9a0                                    #  66    0x2ca46  6      
  nop                                            #  67    0x2ca4c  1      
  nop                                            #  68    0x2ca4d  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2ca4e  5      
  movl %eax, %edi                                #  70    0x2ca53  2      
  movl $0x10020522, %esi                         #  71    0x2ca55  5      
  nop                                            #  72    0x2ca5a  1      
  nop                                            #  73    0x2ca5b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2ca5c  5      
  movl $0x10030c90, %edi                         #  75    0x2ca61  5      
  movl %eax, 0x1000422c(%rip)                    #  76    0x2ca66  6      
  nop                                            #  77    0x2ca6c  1      
  nop                                            #  78    0x2ca6d  1      
  callq .__cxa_guard_release                     #  79    0x2ca6e  5      
  jmpq .L_2c9a0                                  #  80    0x2ca73  5      
  nop                                            #  81    0x2ca78  1      
  nop                                            #  82    0x2ca79  1      
.L_2cb20:                                        #        0x2ca7a  0      
  cmpb $0x0, 0x100041ff(%rip)                    #  83    0x2ca7a  7      
  je .L_2cca0                                    #  84    0x2ca81  6      
  nop                                            #  85    0x2ca87  1      
  nop                                            #  86    0x2ca88  1      
.L_2cb40:                                        #        0x2ca89  0      
  movl %ebx, %ebx                                #  87    0x2ca89  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2ca8b  4      
  movl %eax, %eax                                #  89    0x2ca8f  2      
  movl 0x4(%r15,%rax,1), %eax                    #  90    0x2ca91  5      
  movq %rdi, 0x20(%rsp)                          #  91    0x2ca96  5      
  movl %ebx, %ebx                                #  92    0x2ca9b  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2ca9d  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2caa2  5      
  xchgw %ax, %ax                                 #  95    0x2caa7  3      
  nop                                            #  96    0x2caaa  1      
  nop                                            #  97    0x2caab  1      
  andl $0xffffffe0, %eax                         #  98    0x2caac  5      
  addq %r15, %rax                                #  99    0x2cab1  3      
  callq %rax                                     #  100   0x2cab4  2      
  addl $0x30, %esp                               #  101   0x2cab6  3      
  addq %r15, %rsp                                #  102   0x2cab9  3      
  movl $0x1, %eax                                #  103   0x2cabc  5      
  popq %rbx                                      #  104   0x2cac1  2      
  popq %r11                                      #  105   0x2cac3  3      
  andl $0xffffffe0, %r11d                        #  106   0x2cac6  7      
  addq %r15, %r11                                #  107   0x2cacd  3      
  jmpq %r11                                      #  108   0x2cad0  3      
  nop                                            #  109   0x2cad3  1      
.L_2cba0:                                        #        0x2cad4  0      
  movl $0x10030c80, %edi                         #  110   0x2cad4  5      
  nop                                            #  111   0x2cad9  1      
  nop                                            #  112   0x2cada  1      
  callq .__cxa_guard_acquire                     #  113   0x2cadb  5      
  testl %eax, %eax                               #  114   0x2cae0  2      
  je .L_2c980                                    #  115   0x2cae2  6      
  nop                                            #  116   0x2cae8  1      
  nop                                            #  117   0x2cae9  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2caea  5      
  movl %eax, %edi                                #  119   0x2caef  2      
  movl $0x10020516, %esi                         #  120   0x2caf1  5      
  nop                                            #  121   0x2caf6  1      
  nop                                            #  122   0x2caf7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2caf8  5      
  movl $0x10030c80, %edi                         #  124   0x2cafd  5      
  movl %eax, 0x10004180(%rip)                    #  125   0x2cb02  6      
  nop                                            #  126   0x2cb08  1      
  nop                                            #  127   0x2cb09  1      
  callq .__cxa_guard_release                     #  128   0x2cb0a  5      
  jmpq .L_2c980                                  #  129   0x2cb0f  5      
  nop                                            #  130   0x2cb14  1      
  nop                                            #  131   0x2cb15  1      
.L_2cc40:                                        #        0x2cb16  0      
  movl $0x10030c90, %edi                         #  132   0x2cb16  5      
  nop                                            #  133   0x2cb1b  1      
  nop                                            #  134   0x2cb1c  1      
  callq .__cxa_guard_acquire                     #  135   0x2cb1d  5      
  testl %eax, %eax                               #  136   0x2cb22  2      
  jne .L_2cf80                                   #  137   0x2cb24  6      
  nop                                            #  138   0x2cb2a  1      
  nop                                            #  139   0x2cb2b  1      
.L_2cc80:                                        #        0x2cb2c  0      
  movl 0x10004166(%rip), %eax                    #  140   0x2cb2c  6      
  jmpq .L_2ca20                                  #  141   0x2cb32  5      
  nop                                            #  142   0x2cb37  1      
  nop                                            #  143   0x2cb38  1      
.L_2cca0:                                        #        0x2cb39  0      
  movl $0x10030c80, %edi                         #  144   0x2cb39  5      
  nop                                            #  145   0x2cb3e  1      
  nop                                            #  146   0x2cb3f  1      
  callq .__cxa_guard_acquire                     #  147   0x2cb40  5      
  testl %eax, %eax                               #  148   0x2cb45  2      
  jne .L_2ce20                                   #  149   0x2cb47  6      
  nop                                            #  150   0x2cb4d  1      
  nop                                            #  151   0x2cb4e  1      
.L_2cce0:                                        #        0x2cb4f  0      
  movl 0x10004133(%rip), %eax                    #  152   0x2cb4f  6      
  jmpq .L_2cb40                                  #  153   0x2cb55  5      
  nop                                            #  154   0x2cb5a  1      
  nop                                            #  155   0x2cb5b  1      
.L_2cd00:                                        #        0x2cb5c  0      
  cmpb $0x0, 0x1000413d(%rip)                    #  156   0x2cb5c  7      
  je .L_2cea0                                    #  157   0x2cb63  6      
  nop                                            #  158   0x2cb69  1      
  nop                                            #  159   0x2cb6a  1      
.L_2cd20:                                        #        0x2cb6b  0      
  movl %ebx, %ebx                                #  160   0x2cb6b  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2cb6d  4      
  movl %edx, %edx                                #  162   0x2cb71  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  163   0x2cb73  5      
  movq %rdi, (%rsp)                              #  164   0x2cb78  4      
  movl %ebx, %ebx                                #  165   0x2cb7c  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2cb7e  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2cb83  5      
  nop                                            #  168   0x2cb88  1      
  nop                                            #  169   0x2cb89  1      
  nop                                            #  170   0x2cb8a  1      
  andl $0xffffffe0, %eax                         #  171   0x2cb8b  5      
  addq %r15, %rax                                #  172   0x2cb90  3      
  callq %rax                                     #  173   0x2cb93  2      
  addl $0x30, %esp                               #  174   0x2cb95  3      
  addq %r15, %rsp                                #  175   0x2cb98  3      
  movl $0x1, %eax                                #  176   0x2cb9b  5      
  popq %rbx                                      #  177   0x2cba0  2      
  popq %r11                                      #  178   0x2cba2  3      
  andl $0xffffffe0, %r11d                        #  179   0x2cba5  7      
  addq %r15, %r11                                #  180   0x2cbac  3      
  jmpq %r11                                      #  181   0x2cbaf  3      
  nop                                            #  182   0x2cbb2  1      
.L_2cd80:                                        #        0x2cbb3  0      
  movl $0x10030ca0, %edi                         #  183   0x2cbb3  5      
  nop                                            #  184   0x2cbb8  1      
  nop                                            #  185   0x2cbb9  1      
  callq .__cxa_guard_acquire                     #  186   0x2cbba  5      
  testl %eax, %eax                               #  187   0x2cbbf  2      
  je .L_2c9c0                                    #  188   0x2cbc1  6      
  nop                                            #  189   0x2cbc7  1      
  nop                                            #  190   0x2cbc8  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2cbc9  5      
  movl %eax, %edi                                #  192   0x2cbce  2      
  movl $0x1002050a, %esi                         #  193   0x2cbd0  5      
  nop                                            #  194   0x2cbd5  1      
  nop                                            #  195   0x2cbd6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2cbd7  5      
  movl $0x10030ca0, %edi                         #  197   0x2cbdc  5      
  movl %eax, 0x100040c1(%rip)                    #  198   0x2cbe1  6      
  nop                                            #  199   0x2cbe7  1      
  nop                                            #  200   0x2cbe8  1      
  callq .__cxa_guard_release                     #  201   0x2cbe9  5      
  jmpq .L_2c9c0                                  #  202   0x2cbee  5      
  nop                                            #  203   0x2cbf3  1      
  nop                                            #  204   0x2cbf4  1      
.L_2ce20:                                        #        0x2cbf5  0      
  nop                                            #  205   0x2cbf5  1      
  nop                                            #  206   0x2cbf6  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2cbf7  5      
  movl %eax, %edi                                #  208   0x2cbfc  2      
  movl $0x10020516, %esi                         #  209   0x2cbfe  5      
  nop                                            #  210   0x2cc03  1      
  nop                                            #  211   0x2cc04  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2cc05  5      
  movl $0x10030c80, %edi                         #  213   0x2cc0a  5      
  movl %eax, 0x10004073(%rip)                    #  214   0x2cc0f  6      
  nop                                            #  215   0x2cc15  1      
  nop                                            #  216   0x2cc16  1      
  callq .__cxa_guard_release                     #  217   0x2cc17  5      
  jmpq .L_2cce0                                  #  218   0x2cc1c  5      
  nop                                            #  219   0x2cc21  1      
  nop                                            #  220   0x2cc22  1      
.L_2cea0:                                        #        0x2cc23  0      
  movl $0x10030ca0, %edi                         #  221   0x2cc23  5      
  nop                                            #  222   0x2cc28  1      
  nop                                            #  223   0x2cc29  1      
  callq .__cxa_guard_acquire                     #  224   0x2cc2a  5      
  testl %eax, %eax                               #  225   0x2cc2f  2      
  jne .L_2cf00                                   #  226   0x2cc31  6      
  nop                                            #  227   0x2cc37  1      
  nop                                            #  228   0x2cc38  1      
.L_2cee0:                                        #        0x2cc39  0      
  movl 0x10004069(%rip), %edx                    #  229   0x2cc39  6      
  jmpq .L_2cd20                                  #  230   0x2cc3f  5      
  nop                                            #  231   0x2cc44  1      
  nop                                            #  232   0x2cc45  1      
.L_2cf00:                                        #        0x2cc46  0      
  nop                                            #  233   0x2cc46  1      
  nop                                            #  234   0x2cc47  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2cc48  5      
  movl %eax, %edi                                #  236   0x2cc4d  2      
  movl $0x1002050a, %esi                         #  237   0x2cc4f  5      
  nop                                            #  238   0x2cc54  1      
  nop                                            #  239   0x2cc55  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2cc56  5      
  movl $0x10030ca0, %edi                         #  241   0x2cc5b  5      
  movl %eax, 0x10004042(%rip)                    #  242   0x2cc60  6      
  nop                                            #  243   0x2cc66  1      
  nop                                            #  244   0x2cc67  1      
  callq .__cxa_guard_release                     #  245   0x2cc68  5      
  jmpq .L_2cee0                                  #  246   0x2cc6d  5      
  nop                                            #  247   0x2cc72  1      
  nop                                            #  248   0x2cc73  1      
.L_2cf80:                                        #        0x2cc74  0      
  nop                                            #  249   0x2cc74  1      
  nop                                            #  250   0x2cc75  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2cc76  5      
  movl %eax, %edi                                #  252   0x2cc7b  2      
  movl $0x10020522, %esi                         #  253   0x2cc7d  5      
  nop                                            #  254   0x2cc82  1      
  nop                                            #  255   0x2cc83  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2cc84  5      
  movl $0x10030c90, %edi                         #  257   0x2cc89  5      
  movl %eax, 0x10004004(%rip)                    #  258   0x2cc8e  6      
  nop                                            #  259   0x2cc94  1      
  nop                                            #  260   0x2cc95  1      
  callq .__cxa_guard_release                     #  261   0x2cc96  5      
  jmpq .L_2cc80                                  #  262   0x2cc9b  5      
  nop                                            #  263   0x2cca0  1      
  nop                                            #  264   0x2cca1  1      
.L_2d000:                                        #        0x2cca2  0      
  movl %eax, %ebx                                #  265   0x2cca2  2      
  movl $0x10030c80, %edi                         #  266   0x2cca4  5      
  nop                                            #  267   0x2cca9  1      
  nop                                            #  268   0x2ccaa  1      
  callq .__cxa_guard_abort                       #  269   0x2ccab  5      
  movl %ebx, %edi                                #  270   0x2ccb0  2      
  nop                                            #  271   0x2ccb2  1      
  nop                                            #  272   0x2ccb3  1      
  callq ._Unwind_Resume                          #  273   0x2ccb4  5      
.L_2d040:                                        #        0x2ccb9  0      
  movl %eax, %ebx                                #  274   0x2ccb9  2      
  movl $0x10030c90, %edi                         #  275   0x2ccbb  5      
  nop                                            #  276   0x2ccc0  1      
  nop                                            #  277   0x2ccc1  1      
  callq .__cxa_guard_abort                       #  278   0x2ccc2  5      
  movl %ebx, %edi                                #  279   0x2ccc7  2      
  nop                                            #  280   0x2ccc9  1      
  nop                                            #  281   0x2ccca  1      
  callq ._Unwind_Resume                          #  282   0x2cccb  5      
  jmpq .L_2d040                                  #  283   0x2ccd0  5      
  nop                                            #  284   0x2ccd5  1      
  nop                                            #  285   0x2ccd6  1      
  jmpq .L_2d000                                  #  286   0x2ccd7  5      
  nop                                            #  287   0x2ccdc  1      
  nop                                            #  288   0x2ccdd  1      
.L_2d0c0:                                        #        0x2ccde  0      
  movl %eax, %ebx                                #  289   0x2ccde  2      
  movl $0x10030ca0, %edi                         #  290   0x2cce0  5      
  nop                                            #  291   0x2cce5  1      
  nop                                            #  292   0x2cce6  1      
  callq .__cxa_guard_abort                       #  293   0x2cce7  5      
  movl %ebx, %edi                                #  294   0x2ccec  2      
  nop                                            #  295   0x2ccee  1      
  nop                                            #  296   0x2ccef  1      
  callq ._Unwind_Resume                          #  297   0x2ccf0  5      
  jmpq .L_2d0c0                                  #  298   0x2ccf5  5      
  nop                                            #  299   0x2ccfa  1      
  nop                                            #  300   0x2ccfb  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var

