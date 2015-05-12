  .text
  .globl _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, @function

#! file-offset 0x2c980
#! rip-offset  0x2c980
#! capacity    1984 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var:  #        0x2c980  0      
  pushq %rbx                                     #  1     0x2c980  2      
  movl %edi, %ebx                                #  2     0x2c982  2      
  subl $0x30, %esp                               #  3     0x2c984  3      
  addq %r15, %rsp                                #  4     0x2c987  3      
  cmpb $0x0, 0x100042ef(%rip)                    #  5     0x2c98a  7      
  je .L_2cbc0                                    #  6     0x2c991  6      
  nop                                            #  7     0x2c997  1      
.L_2c9a0:                                        #        0x2c998  0      
  movl 0x100042ea(%rip), %eax                    #  8     0x2c998  6      
  testq %rax, %rax                               #  9     0x2c99e  3      
  jne .L_2cb40                                   #  10    0x2c9a1  6      
  cmpb $0x0, 0x100042e2(%rip)                    #  11    0x2c9a7  7      
  je .L_2caa0                                    #  12    0x2c9ae  6      
  nop                                            #  13    0x2c9b4  1      
.L_2c9c0:                                        #        0x2c9b5  0      
  movl 0x100042dd(%rip), %eax                    #  14    0x2c9b5  6      
  testq %rax, %rax                               #  15    0x2c9bb  3      
  jne .L_2ca20                                   #  16    0x2c9be  6      
  cmpb $0x0, 0x100042d5(%rip)                    #  17    0x2c9c4  7      
  je .L_2cda0                                    #  18    0x2c9cb  6      
  nop                                            #  19    0x2c9d1  1      
.L_2c9e0:                                        #        0x2c9d2  0      
  movl 0x100042d0(%rip), %edx                    #  20    0x2c9d2  6      
  xorl %eax, %eax                                #  21    0x2c9d8  2      
  testq %rdx, %rdx                               #  22    0x2c9da  3      
  jne .L_2cd20                                   #  23    0x2c9dd  6      
  addl $0x30, %esp                               #  24    0x2c9e3  3      
  addq %r15, %rsp                                #  25    0x2c9e6  3      
  popq %rbx                                      #  26    0x2c9e9  2      
  popq %r11                                      #  27    0x2c9eb  3      
  nop                                            #  28    0x2c9ee  1      
  andl $0xffffffe0, %r11d                        #  29    0x2c9ef  7      
  addq %r15, %r11                                #  30    0x2c9f6  3      
  jmpq %r11                                      #  31    0x2c9f9  3      
  nop                                            #  32    0x2c9fc  1      
  nop                                            #  33    0x2c9fd  1      
.L_2ca20:                                        #        0x2c9fe  0      
  cmpb $0x0, 0x1000428b(%rip)                    #  34    0x2c9fe  7      
  je .L_2cc60                                    #  35    0x2ca05  6      
  nop                                            #  36    0x2ca0b  1      
  nop                                            #  37    0x2ca0c  1      
.L_2ca40:                                        #        0x2ca0d  0      
  movl %ebx, %ebx                                #  38    0x2ca0d  2      
  movq (%r15,%rbx,1), %rdi                       #  39    0x2ca0f  4      
  movl %eax, %eax                                #  40    0x2ca13  2      
  movl 0x4(%r15,%rax,1), %eax                    #  41    0x2ca15  5      
  movq %rdi, 0x10(%rsp)                          #  42    0x2ca1a  5      
  movl %ebx, %ebx                                #  43    0x2ca1f  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  44    0x2ca21  5      
  movq %rsi, 0x18(%rsp)                          #  45    0x2ca26  5      
  xchgw %ax, %ax                                 #  46    0x2ca2b  3      
  nop                                            #  47    0x2ca2e  1      
  nop                                            #  48    0x2ca2f  1      
  andl $0xffffffe0, %eax                         #  49    0x2ca30  5      
  addq %r15, %rax                                #  50    0x2ca35  3      
  callq %rax                                     #  51    0x2ca38  2      
  addl $0x30, %esp                               #  52    0x2ca3a  3      
  addq %r15, %rsp                                #  53    0x2ca3d  3      
  movl $0x1, %eax                                #  54    0x2ca40  5      
  popq %rbx                                      #  55    0x2ca45  2      
  popq %r11                                      #  56    0x2ca47  3      
  andl $0xffffffe0, %r11d                        #  57    0x2ca4a  7      
  addq %r15, %r11                                #  58    0x2ca51  3      
  jmpq %r11                                      #  59    0x2ca54  3      
  nop                                            #  60    0x2ca57  1      
.L_2caa0:                                        #        0x2ca58  0      
  movl $0x10030c90, %edi                         #  61    0x2ca58  5      
  nop                                            #  62    0x2ca5d  1      
  nop                                            #  63    0x2ca5e  1      
  callq .__cxa_guard_acquire                     #  64    0x2ca5f  5      
  testl %eax, %eax                               #  65    0x2ca64  2      
  je .L_2c9c0                                    #  66    0x2ca66  6      
  nop                                            #  67    0x2ca6c  1      
  nop                                            #  68    0x2ca6d  1      
  callq ._ZN2pp6Module3GetEv                     #  69    0x2ca6e  5      
  movl %eax, %edi                                #  70    0x2ca73  2      
  movl $0x10020522, %esi                         #  71    0x2ca75  5      
  nop                                            #  72    0x2ca7a  1      
  nop                                            #  73    0x2ca7b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  74    0x2ca7c  5      
  movl $0x10030c90, %edi                         #  75    0x2ca81  5      
  movl %eax, 0x1000420c(%rip)                    #  76    0x2ca86  6      
  nop                                            #  77    0x2ca8c  1      
  nop                                            #  78    0x2ca8d  1      
  callq .__cxa_guard_release                     #  79    0x2ca8e  5      
  jmpq .L_2c9c0                                  #  80    0x2ca93  5      
  nop                                            #  81    0x2ca98  1      
  nop                                            #  82    0x2ca99  1      
.L_2cb40:                                        #        0x2ca9a  0      
  cmpb $0x0, 0x100041df(%rip)                    #  83    0x2ca9a  7      
  je .L_2ccc0                                    #  84    0x2caa1  6      
  nop                                            #  85    0x2caa7  1      
  nop                                            #  86    0x2caa8  1      
.L_2cb60:                                        #        0x2caa9  0      
  movl %ebx, %ebx                                #  87    0x2caa9  2      
  movq (%r15,%rbx,1), %rdi                       #  88    0x2caab  4      
  movl %eax, %eax                                #  89    0x2caaf  2      
  movl 0x4(%r15,%rax,1), %eax                    #  90    0x2cab1  5      
  movq %rdi, 0x20(%rsp)                          #  91    0x2cab6  5      
  movl %ebx, %ebx                                #  92    0x2cabb  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  93    0x2cabd  5      
  movq %rsi, 0x28(%rsp)                          #  94    0x2cac2  5      
  xchgw %ax, %ax                                 #  95    0x2cac7  3      
  nop                                            #  96    0x2caca  1      
  nop                                            #  97    0x2cacb  1      
  andl $0xffffffe0, %eax                         #  98    0x2cacc  5      
  addq %r15, %rax                                #  99    0x2cad1  3      
  callq %rax                                     #  100   0x2cad4  2      
  addl $0x30, %esp                               #  101   0x2cad6  3      
  addq %r15, %rsp                                #  102   0x2cad9  3      
  movl $0x1, %eax                                #  103   0x2cadc  5      
  popq %rbx                                      #  104   0x2cae1  2      
  popq %r11                                      #  105   0x2cae3  3      
  andl $0xffffffe0, %r11d                        #  106   0x2cae6  7      
  addq %r15, %r11                                #  107   0x2caed  3      
  jmpq %r11                                      #  108   0x2caf0  3      
  nop                                            #  109   0x2caf3  1      
.L_2cbc0:                                        #        0x2caf4  0      
  movl $0x10030c80, %edi                         #  110   0x2caf4  5      
  nop                                            #  111   0x2caf9  1      
  nop                                            #  112   0x2cafa  1      
  callq .__cxa_guard_acquire                     #  113   0x2cafb  5      
  testl %eax, %eax                               #  114   0x2cb00  2      
  je .L_2c9a0                                    #  115   0x2cb02  6      
  nop                                            #  116   0x2cb08  1      
  nop                                            #  117   0x2cb09  1      
  callq ._ZN2pp6Module3GetEv                     #  118   0x2cb0a  5      
  movl %eax, %edi                                #  119   0x2cb0f  2      
  movl $0x10020516, %esi                         #  120   0x2cb11  5      
  nop                                            #  121   0x2cb16  1      
  nop                                            #  122   0x2cb17  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  123   0x2cb18  5      
  movl $0x10030c80, %edi                         #  124   0x2cb1d  5      
  movl %eax, 0x10004160(%rip)                    #  125   0x2cb22  6      
  nop                                            #  126   0x2cb28  1      
  nop                                            #  127   0x2cb29  1      
  callq .__cxa_guard_release                     #  128   0x2cb2a  5      
  jmpq .L_2c9a0                                  #  129   0x2cb2f  5      
  nop                                            #  130   0x2cb34  1      
  nop                                            #  131   0x2cb35  1      
.L_2cc60:                                        #        0x2cb36  0      
  movl $0x10030c90, %edi                         #  132   0x2cb36  5      
  nop                                            #  133   0x2cb3b  1      
  nop                                            #  134   0x2cb3c  1      
  callq .__cxa_guard_acquire                     #  135   0x2cb3d  5      
  testl %eax, %eax                               #  136   0x2cb42  2      
  jne .L_2cfa0                                   #  137   0x2cb44  6      
  nop                                            #  138   0x2cb4a  1      
  nop                                            #  139   0x2cb4b  1      
.L_2cca0:                                        #        0x2cb4c  0      
  movl 0x10004146(%rip), %eax                    #  140   0x2cb4c  6      
  jmpq .L_2ca40                                  #  141   0x2cb52  5      
  nop                                            #  142   0x2cb57  1      
  nop                                            #  143   0x2cb58  1      
.L_2ccc0:                                        #        0x2cb59  0      
  movl $0x10030c80, %edi                         #  144   0x2cb59  5      
  nop                                            #  145   0x2cb5e  1      
  nop                                            #  146   0x2cb5f  1      
  callq .__cxa_guard_acquire                     #  147   0x2cb60  5      
  testl %eax, %eax                               #  148   0x2cb65  2      
  jne .L_2ce40                                   #  149   0x2cb67  6      
  nop                                            #  150   0x2cb6d  1      
  nop                                            #  151   0x2cb6e  1      
.L_2cd00:                                        #        0x2cb6f  0      
  movl 0x10004113(%rip), %eax                    #  152   0x2cb6f  6      
  jmpq .L_2cb60                                  #  153   0x2cb75  5      
  nop                                            #  154   0x2cb7a  1      
  nop                                            #  155   0x2cb7b  1      
.L_2cd20:                                        #        0x2cb7c  0      
  cmpb $0x0, 0x1000411d(%rip)                    #  156   0x2cb7c  7      
  je .L_2cec0                                    #  157   0x2cb83  6      
  nop                                            #  158   0x2cb89  1      
  nop                                            #  159   0x2cb8a  1      
.L_2cd40:                                        #        0x2cb8b  0      
  movl %ebx, %ebx                                #  160   0x2cb8b  2      
  movq (%r15,%rbx,1), %rdi                       #  161   0x2cb8d  4      
  movl %edx, %edx                                #  162   0x2cb91  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  163   0x2cb93  5      
  movq %rdi, (%rsp)                              #  164   0x2cb98  4      
  movl %ebx, %ebx                                #  165   0x2cb9c  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  166   0x2cb9e  5      
  movq %rsi, 0x8(%rsp)                           #  167   0x2cba3  5      
  nop                                            #  168   0x2cba8  1      
  nop                                            #  169   0x2cba9  1      
  nop                                            #  170   0x2cbaa  1      
  andl $0xffffffe0, %eax                         #  171   0x2cbab  5      
  addq %r15, %rax                                #  172   0x2cbb0  3      
  callq %rax                                     #  173   0x2cbb3  2      
  addl $0x30, %esp                               #  174   0x2cbb5  3      
  addq %r15, %rsp                                #  175   0x2cbb8  3      
  movl $0x1, %eax                                #  176   0x2cbbb  5      
  popq %rbx                                      #  177   0x2cbc0  2      
  popq %r11                                      #  178   0x2cbc2  3      
  andl $0xffffffe0, %r11d                        #  179   0x2cbc5  7      
  addq %r15, %r11                                #  180   0x2cbcc  3      
  jmpq %r11                                      #  181   0x2cbcf  3      
  nop                                            #  182   0x2cbd2  1      
.L_2cda0:                                        #        0x2cbd3  0      
  movl $0x10030ca0, %edi                         #  183   0x2cbd3  5      
  nop                                            #  184   0x2cbd8  1      
  nop                                            #  185   0x2cbd9  1      
  callq .__cxa_guard_acquire                     #  186   0x2cbda  5      
  testl %eax, %eax                               #  187   0x2cbdf  2      
  je .L_2c9e0                                    #  188   0x2cbe1  6      
  nop                                            #  189   0x2cbe7  1      
  nop                                            #  190   0x2cbe8  1      
  callq ._ZN2pp6Module3GetEv                     #  191   0x2cbe9  5      
  movl %eax, %edi                                #  192   0x2cbee  2      
  movl $0x1002050a, %esi                         #  193   0x2cbf0  5      
  nop                                            #  194   0x2cbf5  1      
  nop                                            #  195   0x2cbf6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  196   0x2cbf7  5      
  movl $0x10030ca0, %edi                         #  197   0x2cbfc  5      
  movl %eax, 0x100040a1(%rip)                    #  198   0x2cc01  6      
  nop                                            #  199   0x2cc07  1      
  nop                                            #  200   0x2cc08  1      
  callq .__cxa_guard_release                     #  201   0x2cc09  5      
  jmpq .L_2c9e0                                  #  202   0x2cc0e  5      
  nop                                            #  203   0x2cc13  1      
  nop                                            #  204   0x2cc14  1      
.L_2ce40:                                        #        0x2cc15  0      
  nop                                            #  205   0x2cc15  1      
  nop                                            #  206   0x2cc16  1      
  callq ._ZN2pp6Module3GetEv                     #  207   0x2cc17  5      
  movl %eax, %edi                                #  208   0x2cc1c  2      
  movl $0x10020516, %esi                         #  209   0x2cc1e  5      
  nop                                            #  210   0x2cc23  1      
  nop                                            #  211   0x2cc24  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  212   0x2cc25  5      
  movl $0x10030c80, %edi                         #  213   0x2cc2a  5      
  movl %eax, 0x10004053(%rip)                    #  214   0x2cc2f  6      
  nop                                            #  215   0x2cc35  1      
  nop                                            #  216   0x2cc36  1      
  callq .__cxa_guard_release                     #  217   0x2cc37  5      
  jmpq .L_2cd00                                  #  218   0x2cc3c  5      
  nop                                            #  219   0x2cc41  1      
  nop                                            #  220   0x2cc42  1      
.L_2cec0:                                        #        0x2cc43  0      
  movl $0x10030ca0, %edi                         #  221   0x2cc43  5      
  nop                                            #  222   0x2cc48  1      
  nop                                            #  223   0x2cc49  1      
  callq .__cxa_guard_acquire                     #  224   0x2cc4a  5      
  testl %eax, %eax                               #  225   0x2cc4f  2      
  jne .L_2cf20                                   #  226   0x2cc51  6      
  nop                                            #  227   0x2cc57  1      
  nop                                            #  228   0x2cc58  1      
.L_2cf00:                                        #        0x2cc59  0      
  movl 0x10004049(%rip), %edx                    #  229   0x2cc59  6      
  jmpq .L_2cd40                                  #  230   0x2cc5f  5      
  nop                                            #  231   0x2cc64  1      
  nop                                            #  232   0x2cc65  1      
.L_2cf20:                                        #        0x2cc66  0      
  nop                                            #  233   0x2cc66  1      
  nop                                            #  234   0x2cc67  1      
  callq ._ZN2pp6Module3GetEv                     #  235   0x2cc68  5      
  movl %eax, %edi                                #  236   0x2cc6d  2      
  movl $0x1002050a, %esi                         #  237   0x2cc6f  5      
  nop                                            #  238   0x2cc74  1      
  nop                                            #  239   0x2cc75  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  240   0x2cc76  5      
  movl $0x10030ca0, %edi                         #  241   0x2cc7b  5      
  movl %eax, 0x10004022(%rip)                    #  242   0x2cc80  6      
  nop                                            #  243   0x2cc86  1      
  nop                                            #  244   0x2cc87  1      
  callq .__cxa_guard_release                     #  245   0x2cc88  5      
  jmpq .L_2cf00                                  #  246   0x2cc8d  5      
  nop                                            #  247   0x2cc92  1      
  nop                                            #  248   0x2cc93  1      
.L_2cfa0:                                        #        0x2cc94  0      
  nop                                            #  249   0x2cc94  1      
  nop                                            #  250   0x2cc95  1      
  callq ._ZN2pp6Module3GetEv                     #  251   0x2cc96  5      
  movl %eax, %edi                                #  252   0x2cc9b  2      
  movl $0x10020522, %esi                         #  253   0x2cc9d  5      
  nop                                            #  254   0x2cca2  1      
  nop                                            #  255   0x2cca3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  256   0x2cca4  5      
  movl $0x10030c90, %edi                         #  257   0x2cca9  5      
  movl %eax, 0x10003fe4(%rip)                    #  258   0x2ccae  6      
  nop                                            #  259   0x2ccb4  1      
  nop                                            #  260   0x2ccb5  1      
  callq .__cxa_guard_release                     #  261   0x2ccb6  5      
  jmpq .L_2cca0                                  #  262   0x2ccbb  5      
  nop                                            #  263   0x2ccc0  1      
  nop                                            #  264   0x2ccc1  1      
.L_2d020:                                        #        0x2ccc2  0      
  movl %eax, %ebx                                #  265   0x2ccc2  2      
  movl $0x10030c80, %edi                         #  266   0x2ccc4  5      
  nop                                            #  267   0x2ccc9  1      
  nop                                            #  268   0x2ccca  1      
  callq .__cxa_guard_abort                       #  269   0x2cccb  5      
  movl %ebx, %edi                                #  270   0x2ccd0  2      
  nop                                            #  271   0x2ccd2  1      
  nop                                            #  272   0x2ccd3  1      
  callq ._Unwind_Resume                          #  273   0x2ccd4  5      
.L_2d060:                                        #        0x2ccd9  0      
  movl %eax, %ebx                                #  274   0x2ccd9  2      
  movl $0x10030c90, %edi                         #  275   0x2ccdb  5      
  nop                                            #  276   0x2cce0  1      
  nop                                            #  277   0x2cce1  1      
  callq .__cxa_guard_abort                       #  278   0x2cce2  5      
  movl %ebx, %edi                                #  279   0x2cce7  2      
  nop                                            #  280   0x2cce9  1      
  nop                                            #  281   0x2ccea  1      
  callq ._Unwind_Resume                          #  282   0x2cceb  5      
  jmpq .L_2d060                                  #  283   0x2ccf0  5      
  nop                                            #  284   0x2ccf5  1      
  nop                                            #  285   0x2ccf6  1      
  jmpq .L_2d020                                  #  286   0x2ccf7  5      
  nop                                            #  287   0x2ccfc  1      
  nop                                            #  288   0x2ccfd  1      
.L_2d0e0:                                        #        0x2ccfe  0      
  movl %eax, %ebx                                #  289   0x2ccfe  2      
  movl $0x10030ca0, %edi                         #  290   0x2cd00  5      
  nop                                            #  291   0x2cd05  1      
  nop                                            #  292   0x2cd06  1      
  callq .__cxa_guard_abort                       #  293   0x2cd07  5      
  movl %ebx, %edi                                #  294   0x2cd0c  2      
  nop                                            #  295   0x2cd0e  1      
  nop                                            #  296   0x2cd0f  1      
  callq ._Unwind_Resume                          #  297   0x2cd10  5      
  jmpq .L_2d0e0                                  #  298   0x2cd15  5      
  nop                                            #  299   0x2cd1a  1      
  nop                                            #  300   0x2cd1b  1      
                                                                          
.size _ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var, .-_ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var

