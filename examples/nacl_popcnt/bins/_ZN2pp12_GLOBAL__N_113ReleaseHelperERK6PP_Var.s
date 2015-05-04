  .text
  .globl _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, @function

#! file-offset 0x2ca00
#! rip-offset  0x2ca00
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var:  #        0x2ca00  0      
  pushq %rbx                                     #  1     0x2ca00  2      
  movl %edi, %ebx                                #  2     0x2ca02  2      
  subl $0x30, %esp                               #  3     0x2ca04  3      
  addq %r15, %rsp                                #  4     0x2ca07  3      
  cmpb $0x0, 0x1000426f(%rip)                    #  5     0x2ca0a  7      
  je .L_2cc40                                    #  6     0x2ca11  6      
  nop                                            #  7     0x2ca17  1      
.L_2ca20:                                        #        0x2ca18  0      
  movl 0x1000426a(%rip), %eax                    #  8     0x2ca18  6      
  testq %rax, %rax                               #  9     0x2ca1e  3      
  jne .L_2cbc0                                   #  10    0x2ca21  6      
  cmpb $0x0, 0x10004262(%rip)                    #  11    0x2ca27  7      
  je .L_2cb20                                    #  12    0x2ca2e  6      
  nop                                            #  13    0x2ca34  1      
.L_2ca40:                                        #        0x2ca35  0      
  movl 0x1000425d(%rip), %eax                    #  14    0x2ca35  6      
  testq %rax, %rax                               #  15    0x2ca3b  3      
  jne .L_2caa0                                   #  16    0x2ca3e  6      
  cmpb $0x0, 0x10004255(%rip)                    #  17    0x2ca44  7      
  je .L_2ce20                                    #  18    0x2ca4b  6      
  nop                                            #  19    0x2ca51  1      
.L_2ca60:                                        #        0x2ca52  0      
  movl 0x10004250(%rip), %edx                    #  20    0x2ca52  6      
  xorl %eax, %eax                                #  21    0x2ca58  2      
  testq %rdx, %rdx                               #  22    0x2ca5a  3      
  jne .L_2cda0                                   #  23    0x2ca5d  6      
  addl $0x30, %esp                               #  24    0x2ca63  3      
  addq %r15, %rsp                                #  25    0x2ca66  3      
  popq %rbx                                      #  26    0x2ca69  2      
  popq %r11                                      #  27    0x2ca6b  3      
  nop                                            #  28    0x2ca6e  1      
  andl $0xffffffe0, %r11d                        #  29    0x2ca6f  7      
  addq %r15, %r11                                #  30    0x2ca76  3      
  jmpq %r11                                      #  31    0x2ca79  3      
  nop                                            #  32    0x2ca7c  1      
  nop                                            #  33    0x2ca7d  1      
.L_2caa0:                                        #        0x2ca7e  0      
  cmpb $0x0, 0x1000420b(%rip)                    #  34    0x2ca7e  7      
  je .L_2cce0                                    #  35    0x2ca85  6      
  nop                                            #  36    0x2ca8b  1      
  nop                                            #  37    0x2ca8c  1      
.L_2cac0:                                        #        0x2ca8d  0      
  movl %ebx, %ebx                                #  38    0x2ca8d  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2ca8f  4      
  movl %eax, %eax                                #  40    0x2ca93  2      
  movl 0x4(%r15,%rax,1), %eax                    #  41    0x2ca95  5      
  movq %rdi, 0x10(%rsp)                          #  42    0x2ca9a  5      
  movl %ebx, %ebx                                #  43    0x2ca9f  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2caa1  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2caa6  5      
  xchgw %ax, %ax                                 #  46    0x2caab  3      
  nop                                            #  47    0x2caae  1      
  nop                                            #  48    0x2caaf  1      
  andl $0xffffffe0, %eax                         #  49    0x2cab0  5      
  addq %r15, %rax                                #  50    0x2cab5  3      
  callq %rax                                     #  51    0x2cab8  2      
  addl $0x30, %esp                               #  52    0x2caba  3      
  addq %r15, %rsp                                #  53    0x2cabd  3      
  movl $0x1, %eax                                #  54    0x2cac0  5      
  popq %rbx                                      #  55    0x2cac5  2      
  popq %r11                                      #  56    0x2cac7  3      
  andl $0xffffffe0, %r11d                        #  57    0x2caca  7      
  addq %r15, %r11                                #  58    0x2cad1  3      
  jmpq %r11                                      #  59    0x2cad4  3      
  nop                                            #  60    0x2cad7  1      
.L_2cb20:                                        #        0x2cad8  0      
  movl $0x10030c90, %edi                         #  61    0x2cad8  5      
  nop                                            #  62    0x2cadd  1      
  nop                                            #  63    0x2cade  1      
  callq .__cxa_guard_acquire                     #  64    0x2cadf  5      
  testl %eax, %eax                               #  65    0x2cae4  2      
  je .L_2ca40                                    #  66    0x2cae6  6      
  nop                                            #  67    0x2caec  1      
  nop                                            #  68    0x2caed  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2caee  5      
  movl %eax, %edi                                #  70    0x2caf3  2      
  movl $0x10020522, %esi                         #  71    0x2caf5  5      
  nop                                            #  72    0x2cafa  1      
  nop                                            #  73    0x2cafb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2cafc  5      
  movl $0x10030c90, %edi                         #  75    0x2cb01  5      
  movl %eax, 0x1000418c(%rip)                    #  76    0x2cb06  6      
  nop                                            #  77    0x2cb0c  1      
  nop                                            #  78    0x2cb0d  1      
  callq .__cxa_guard_release                     #  79    0x2cb0e  5      
  jmpq .L_2ca40                                  #  80    0x2cb13  5      
  nop                                            #  81    0x2cb18  1      
  nop                                            #  82    0x2cb19  1      
.L_2cbc0:                                        #        0x2cb1a  0      
  cmpb $0x0, 0x1000415f(%rip)                    #  83    0x2cb1a  7      
  je .L_2cd40                                    #  84    0x2cb21  6      
  nop                                            #  85    0x2cb27  1      
  nop                                            #  86    0x2cb28  1      
.L_2cbe0:                                        #        0x2cb29  0      
  movl %ebx, %ebx                                #  87    0x2cb29  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2cb2b  4      
  movl %eax, %eax                                #  89    0x2cb2f  2      
  movl 0x4(%r15,%rax,1), %eax                    #  90    0x2cb31  5      
  movq %rdi, 0x20(%rsp)                          #  91    0x2cb36  5      
  movl %ebx, %ebx                                #  92    0x2cb3b  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2cb3d  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2cb42  5      
  xchgw %ax, %ax                                 #  95    0x2cb47  3      
  nop                                            #  96    0x2cb4a  1      
  nop                                            #  97    0x2cb4b  1      
  andl $0xffffffe0, %eax                         #  98    0x2cb4c  5      
  addq %r15, %rax                                #  99    0x2cb51  3      
  callq %rax                                     #  100   0x2cb54  2      
  addl $0x30, %esp                               #  101   0x2cb56  3      
  addq %r15, %rsp                                #  102   0x2cb59  3      
  movl $0x1, %eax                                #  103   0x2cb5c  5      
  popq %rbx                                      #  104   0x2cb61  2      
  popq %r11                                      #  105   0x2cb63  3      
  andl $0xffffffe0, %r11d                        #  106   0x2cb66  7      
  addq %r15, %r11                                #  107   0x2cb6d  3      
  jmpq %r11                                      #  108   0x2cb70  3      
  nop                                            #  109   0x2cb73  1      
.L_2cc40:                                        #        0x2cb74  0      
  movl $0x10030c80, %edi                         #  110   0x2cb74  5      
  nop                                            #  111   0x2cb79  1      
  nop                                            #  112   0x2cb7a  1      
  callq .__cxa_guard_acquire                     #  113   0x2cb7b  5      
  testl %eax, %eax                               #  114   0x2cb80  2      
  je .L_2ca20                                    #  115   0x2cb82  6      
  nop                                            #  116   0x2cb88  1      
  nop                                            #  117   0x2cb89  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2cb8a  5      
  movl %eax, %edi                                #  119   0x2cb8f  2      
  movl $0x10020516, %esi                         #  120   0x2cb91  5      
  nop                                            #  121   0x2cb96  1      
  nop                                            #  122   0x2cb97  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2cb98  5      
  movl $0x10030c80, %edi                         #  124   0x2cb9d  5      
  movl %eax, 0x100040e0(%rip)                    #  125   0x2cba2  6      
  nop                                            #  126   0x2cba8  1      
  nop                                            #  127   0x2cba9  1      
  callq .__cxa_guard_release                     #  128   0x2cbaa  5      
  jmpq .L_2ca20                                  #  129   0x2cbaf  5      
  nop                                            #  130   0x2cbb4  1      
  nop                                            #  131   0x2cbb5  1      
.L_2cce0:                                        #        0x2cbb6  0      
  movl $0x10030c90, %edi                         #  132   0x2cbb6  5      
  nop                                            #  133   0x2cbbb  1      
  nop                                            #  134   0x2cbbc  1      
  callq .__cxa_guard_acquire                     #  135   0x2cbbd  5      
  testl %eax, %eax                               #  136   0x2cbc2  2      
  jne .L_2d020                                   #  137   0x2cbc4  6      
  nop                                            #  138   0x2cbca  1      
  nop                                            #  139   0x2cbcb  1      
.L_2cd20:                                        #        0x2cbcc  0      
  movl 0x100040c6(%rip), %eax                    #  140   0x2cbcc  6      
  jmpq .L_2cac0                                  #  141   0x2cbd2  5      
  nop                                            #  142   0x2cbd7  1      
  nop                                            #  143   0x2cbd8  1      
.L_2cd40:                                        #        0x2cbd9  0      
  movl $0x10030c80, %edi                         #  144   0x2cbd9  5      
  nop                                            #  145   0x2cbde  1      
  nop                                            #  146   0x2cbdf  1      
  callq .__cxa_guard_acquire                     #  147   0x2cbe0  5      
  testl %eax, %eax                               #  148   0x2cbe5  2      
  jne .L_2cec0                                   #  149   0x2cbe7  6      
  nop                                            #  150   0x2cbed  1      
  nop                                            #  151   0x2cbee  1      
.L_2cd80:                                        #        0x2cbef  0      
  movl 0x10004093(%rip), %eax                    #  152   0x2cbef  6      
  jmpq .L_2cbe0                                  #  153   0x2cbf5  5      
  nop                                            #  154   0x2cbfa  1      
  nop                                            #  155   0x2cbfb  1      
.L_2cda0:                                        #        0x2cbfc  0      
  cmpb $0x0, 0x1000409d(%rip)                    #  156   0x2cbfc  7      
  je .L_2cf40                                    #  157   0x2cc03  6      
  nop                                            #  158   0x2cc09  1      
  nop                                            #  159   0x2cc0a  1      
.L_2cdc0:                                        #        0x2cc0b  0      
  movl %ebx, %ebx                                #  160   0x2cc0b  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2cc0d  4      
  movl %edx, %edx                                #  162   0x2cc11  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  163   0x2cc13  5      
  movq %rdi, (%rsp)                              #  164   0x2cc18  4      
  movl %ebx, %ebx                                #  165   0x2cc1c  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2cc1e  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2cc23  5      
  nop                                            #  168   0x2cc28  1      
  nop                                            #  169   0x2cc29  1      
  nop                                            #  170   0x2cc2a  1      
  andl $0xffffffe0, %eax                         #  171   0x2cc2b  5      
  addq %r15, %rax                                #  172   0x2cc30  3      
  callq %rax                                     #  173   0x2cc33  2      
  addl $0x30, %esp                               #  174   0x2cc35  3      
  addq %r15, %rsp                                #  175   0x2cc38  3      
  movl $0x1, %eax                                #  176   0x2cc3b  5      
  popq %rbx                                      #  177   0x2cc40  2      
  popq %r11                                      #  178   0x2cc42  3      
  andl $0xffffffe0, %r11d                        #  179   0x2cc45  7      
  addq %r15, %r11                                #  180   0x2cc4c  3      
  jmpq %r11                                      #  181   0x2cc4f  3      
  nop                                            #  182   0x2cc52  1      
.L_2ce20:                                        #        0x2cc53  0      
  movl $0x10030ca0, %edi                         #  183   0x2cc53  5      
  nop                                            #  184   0x2cc58  1      
  nop                                            #  185   0x2cc59  1      
  callq .__cxa_guard_acquire                     #  186   0x2cc5a  5      
  testl %eax, %eax                               #  187   0x2cc5f  2      
  je .L_2ca60                                    #  188   0x2cc61  6      
  nop                                            #  189   0x2cc67  1      
  nop                                            #  190   0x2cc68  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2cc69  5      
  movl %eax, %edi                                #  192   0x2cc6e  2      
  movl $0x1002050a, %esi                         #  193   0x2cc70  5      
  nop                                            #  194   0x2cc75  1      
  nop                                            #  195   0x2cc76  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2cc77  5      
  movl $0x10030ca0, %edi                         #  197   0x2cc7c  5      
  movl %eax, 0x10004021(%rip)                    #  198   0x2cc81  6      
  nop                                            #  199   0x2cc87  1      
  nop                                            #  200   0x2cc88  1      
  callq .__cxa_guard_release                     #  201   0x2cc89  5      
  jmpq .L_2ca60                                  #  202   0x2cc8e  5      
  nop                                            #  203   0x2cc93  1      
  nop                                            #  204   0x2cc94  1      
.L_2cec0:                                        #        0x2cc95  0      
  nop                                            #  205   0x2cc95  1      
  nop                                            #  206   0x2cc96  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2cc97  5      
  movl %eax, %edi                                #  208   0x2cc9c  2      
  movl $0x10020516, %esi                         #  209   0x2cc9e  5      
  nop                                            #  210   0x2cca3  1      
  nop                                            #  211   0x2cca4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2cca5  5      
  movl $0x10030c80, %edi                         #  213   0x2ccaa  5      
  movl %eax, 0x10003fd3(%rip)                    #  214   0x2ccaf  6      
  nop                                            #  215   0x2ccb5  1      
  nop                                            #  216   0x2ccb6  1      
  callq .__cxa_guard_release                     #  217   0x2ccb7  5      
  jmpq .L_2cd80                                  #  218   0x2ccbc  5      
  nop                                            #  219   0x2ccc1  1      
  nop                                            #  220   0x2ccc2  1      
.L_2cf40:                                        #        0x2ccc3  0      
  movl $0x10030ca0, %edi                         #  221   0x2ccc3  5      
  nop                                            #  222   0x2ccc8  1      
  nop                                            #  223   0x2ccc9  1      
  callq .__cxa_guard_acquire                     #  224   0x2ccca  5      
  testl %eax, %eax                               #  225   0x2cccf  2      
  jne .L_2cfa0                                   #  226   0x2ccd1  6      
  nop                                            #  227   0x2ccd7  1      
  nop                                            #  228   0x2ccd8  1      
.L_2cf80:                                        #        0x2ccd9  0      
  movl 0x10003fc9(%rip), %edx                    #  229   0x2ccd9  6      
  jmpq .L_2cdc0                                  #  230   0x2ccdf  5      
  nop                                            #  231   0x2cce4  1      
  nop                                            #  232   0x2cce5  1      
.L_2cfa0:                                        #        0x2cce6  0      
  nop                                            #  233   0x2cce6  1      
  nop                                            #  234   0x2cce7  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2cce8  5      
  movl %eax, %edi                                #  236   0x2cced  2      
  movl $0x1002050a, %esi                         #  237   0x2ccef  5      
  nop                                            #  238   0x2ccf4  1      
  nop                                            #  239   0x2ccf5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2ccf6  5      
  movl $0x10030ca0, %edi                         #  241   0x2ccfb  5      
  movl %eax, 0x10003fa2(%rip)                    #  242   0x2cd00  6      
  nop                                            #  243   0x2cd06  1      
  nop                                            #  244   0x2cd07  1      
  callq .__cxa_guard_release                     #  245   0x2cd08  5      
  jmpq .L_2cf80                                  #  246   0x2cd0d  5      
  nop                                            #  247   0x2cd12  1      
  nop                                            #  248   0x2cd13  1      
.L_2d020:                                        #        0x2cd14  0      
  nop                                            #  249   0x2cd14  1      
  nop                                            #  250   0x2cd15  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2cd16  5      
  movl %eax, %edi                                #  252   0x2cd1b  2      
  movl $0x10020522, %esi                         #  253   0x2cd1d  5      
  nop                                            #  254   0x2cd22  1      
  nop                                            #  255   0x2cd23  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2cd24  5      
  movl $0x10030c90, %edi                         #  257   0x2cd29  5      
  movl %eax, 0x10003f64(%rip)                    #  258   0x2cd2e  6      
  nop                                            #  259   0x2cd34  1      
  nop                                            #  260   0x2cd35  1      
  callq .__cxa_guard_release                     #  261   0x2cd36  5      
  jmpq .L_2cd20                                  #  262   0x2cd3b  5      
  nop                                            #  263   0x2cd40  1      
  nop                                            #  264   0x2cd41  1      
.L_2d0a0:                                        #        0x2cd42  0      
  movl %eax, %ebx                                #  265   0x2cd42  2      
  movl $0x10030c80, %edi                         #  266   0x2cd44  5      
  nop                                            #  267   0x2cd49  1      
  nop                                            #  268   0x2cd4a  1      
  callq .__cxa_guard_abort                       #  269   0x2cd4b  5      
  movl %ebx, %edi                                #  270   0x2cd50  2      
  nop                                            #  271   0x2cd52  1      
  nop                                            #  272   0x2cd53  1      
  callq ._Unwind_Resume                          #  273   0x2cd54  5      
.L_2d0e0:                                        #        0x2cd59  0      
  movl %eax, %ebx                                #  274   0x2cd59  2      
  movl $0x10030c90, %edi                         #  275   0x2cd5b  5      
  nop                                            #  276   0x2cd60  1      
  nop                                            #  277   0x2cd61  1      
  callq .__cxa_guard_abort                       #  278   0x2cd62  5      
  movl %ebx, %edi                                #  279   0x2cd67  2      
  nop                                            #  280   0x2cd69  1      
  nop                                            #  281   0x2cd6a  1      
  callq ._Unwind_Resume                          #  282   0x2cd6b  5      
  jmpq .L_2d0e0                                  #  283   0x2cd70  5      
  nop                                            #  284   0x2cd75  1      
  nop                                            #  285   0x2cd76  1      
  jmpq .L_2d0a0                                  #  286   0x2cd77  5      
  nop                                            #  287   0x2cd7c  1      
  nop                                            #  288   0x2cd7d  1      
.L_2d160:                                        #        0x2cd7e  0      
  movl %eax, %ebx                                #  289   0x2cd7e  2      
  movl $0x10030ca0, %edi                         #  290   0x2cd80  5      
  nop                                            #  291   0x2cd85  1      
  nop                                            #  292   0x2cd86  1      
  callq .__cxa_guard_abort                       #  293   0x2cd87  5      
  movl %ebx, %edi                                #  294   0x2cd8c  2      
  nop                                            #  295   0x2cd8e  1      
  nop                                            #  296   0x2cd8f  1      
  callq ._Unwind_Resume                          #  297   0x2cd90  5      
  jmpq .L_2d160                                  #  298   0x2cd95  5      
  nop                                            #  299   0x2cd9a  1      
  nop                                            #  300   0x2cd9b  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var

