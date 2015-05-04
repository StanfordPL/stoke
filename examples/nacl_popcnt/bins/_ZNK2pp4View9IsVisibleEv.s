  .text
  .globl _ZNK2pp4View9IsVisibleEv
  .type _ZNK2pp4View9IsVisibleEv, @function

#! file-offset 0x2f920
#! rip-offset  0x2f920
#! capacity    1824 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View9IsVisibleEv:                       #        0x2f920  0      
  cmpb $0x0, 0x10001389(%rip)                    #  1     0x2f920  7      
  pushq %rbx                                     #  2     0x2f927  2      
  movl %edi, %ebx                                #  3     0x2f929  2      
  je .L_2fb40                                    #  4     0x2f92b  6      
  nop                                            #  5     0x2f931  1      
  nop                                            #  6     0x2f932  1      
.L_2f940:                                        #        0x2f933  0      
  movl 0x1000137f(%rip), %eax                    #  7     0x2f933  6      
  testq %rax, %rax                               #  8     0x2f939  3      
  jne .L_2fac0                                   #  9     0x2f93c  6      
  cmpb $0x0, 0x10001377(%rip)                    #  10    0x2f942  7      
  je .L_2fa20                                    #  11    0x2f949  6      
  nop                                            #  12    0x2f94f  1      
.L_2f960:                                        #        0x2f950  0      
  movl 0x10001372(%rip), %eax                    #  13    0x2f950  6      
  testq %rax, %rax                               #  14    0x2f956  3      
  jne .L_2f9a0                                   #  15    0x2f959  6      
  cmpb $0x0, 0x1000136a(%rip)                    #  16    0x2f95f  7      
  je .L_2fca0                                    #  17    0x2f966  6      
  nop                                            #  18    0x2f96c  1      
.L_2f980:                                        #        0x2f96d  0      
  movl 0x10001365(%rip), %edx                    #  19    0x2f96d  6      
  xorl %eax, %eax                                #  20    0x2f973  2      
  testq %rdx, %rdx                               #  21    0x2f975  3      
  jne .L_2fc40                                   #  22    0x2f978  6      
  popq %rbx                                      #  23    0x2f97e  2      
  popq %r11                                      #  24    0x2f980  3      
  andl $0xffffffe0, %r11d                        #  25    0x2f983  7      
  addq %r15, %r11                                #  26    0x2f98a  3      
  jmpq %r11                                      #  27    0x2f98d  3      
  xchgw %ax, %ax                                 #  28    0x2f990  3      
.L_2f9a0:                                        #        0x2f993  0      
  cmpb $0x0, 0x10001326(%rip)                    #  29    0x2f993  7      
  je .L_2fbe0                                    #  30    0x2f99a  6      
  nop                                            #  31    0x2f9a0  1      
  nop                                            #  32    0x2f9a1  1      
.L_2f9c0:                                        #        0x2f9a2  0      
  movl %eax, %eax                                #  33    0x2f9a2  2      
  movl 0xc(%r15,%rax,1), %eax                    #  34    0x2f9a4  5      
  movl %ebx, %ebx                                #  35    0x2f9a9  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  36    0x2f9ab  5      
  nop                                            #  37    0x2f9b0  1      
  andl $0xffffffe0, %eax                         #  38    0x2f9b1  5      
  addq %r15, %rax                                #  39    0x2f9b6  3      
  callq %rax                                     #  40    0x2f9b9  2      
  testl %eax, %eax                               #  41    0x2f9bb  2      
  setne %al                                      #  42    0x2f9bd  3      
  nop                                            #  43    0x2f9c0  1      
  nop                                            #  44    0x2f9c1  1      
.L_2fa00:                                        #        0x2f9c2  0      
  popq %rbx                                      #  45    0x2f9c2  2      
  popq %r11                                      #  46    0x2f9c4  3      
  andl $0xffffffe0, %r11d                        #  47    0x2f9c7  7      
  addq %r15, %r11                                #  48    0x2f9ce  3      
  jmpq %r11                                      #  49    0x2f9d1  3      
  nop                                            #  50    0x2f9d4  1      
  nop                                            #  51    0x2f9d5  1      
.L_2fa20:                                        #        0x2f9d6  0      
  movl $0x10030cc0, %edi                         #  52    0x2f9d6  5      
  nop                                            #  53    0x2f9db  1      
  nop                                            #  54    0x2f9dc  1      
  callq .__cxa_guard_acquire                     #  55    0x2f9dd  5      
  testl %eax, %eax                               #  56    0x2f9e2  2      
  je .L_2f960                                    #  57    0x2f9e4  6      
  nop                                            #  58    0x2f9ea  1      
  nop                                            #  59    0x2f9eb  1      
  callq ._ZN2pp6Module3GetEv                     #  60    0x2f9ec  5      
  movl %eax, %edi                                #  61    0x2f9f1  2      
  movl $0x10020632, %esi                         #  62    0x2f9f3  5      
  nop                                            #  63    0x2f9f8  1      
  nop                                            #  64    0x2f9f9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  65    0x2f9fa  5      
  movl $0x10030cc0, %edi                         #  66    0x2f9ff  5      
  movl %eax, 0x100012be(%rip)                    #  67    0x2fa04  6      
  nop                                            #  68    0x2fa0a  1      
  nop                                            #  69    0x2fa0b  1      
  callq .__cxa_guard_release                     #  70    0x2fa0c  5      
  jmpq .L_2f960                                  #  71    0x2fa11  5      
  nop                                            #  72    0x2fa16  1      
  nop                                            #  73    0x2fa17  1      
.L_2fac0:                                        #        0x2fa18  0      
  cmpb $0x0, 0x10001291(%rip)                    #  74    0x2fa18  7      
  jne .L_2f9c0                                   #  75    0x2fa1f  6      
  movl $0x10030cb0, %edi                         #  76    0x2fa25  5      
  nop                                            #  77    0x2fa2a  1      
  callq .__cxa_guard_acquire                     #  78    0x2fa2b  5      
  testl %eax, %eax                               #  79    0x2fa30  2      
  jne .L_2fd40                                   #  80    0x2fa32  6      
  nop                                            #  81    0x2fa38  1      
  nop                                            #  82    0x2fa39  1      
.L_2fb00:                                        #        0x2fa3a  0      
  movl 0x10001278(%rip), %eax                    #  83    0x2fa3a  6      
  movl %ebx, %ebx                                #  84    0x2fa40  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  85    0x2fa42  5      
  movl %eax, %eax                                #  86    0x2fa47  2      
  movl 0xc(%r15,%rax,1), %eax                    #  87    0x2fa49  5      
  nop                                            #  88    0x2fa4e  1      
  andl $0xffffffe0, %eax                         #  89    0x2fa4f  5      
  addq %r15, %rax                                #  90    0x2fa54  3      
  callq %rax                                     #  91    0x2fa57  2      
  testl %eax, %eax                               #  92    0x2fa59  2      
  setne %al                                      #  93    0x2fa5b  3      
  jmpq .L_2fa00                                  #  94    0x2fa5e  5      
  nop                                            #  95    0x2fa63  1      
  nop                                            #  96    0x2fa64  1      
.L_2fb40:                                        #        0x2fa65  0      
  movl $0x10030cb0, %edi                         #  97    0x2fa65  5      
  nop                                            #  98    0x2fa6a  1      
  nop                                            #  99    0x2fa6b  1      
  callq .__cxa_guard_acquire                     #  100   0x2fa6c  5      
  testl %eax, %eax                               #  101   0x2fa71  2      
  je .L_2f940                                    #  102   0x2fa73  6      
  nop                                            #  103   0x2fa79  1      
  nop                                            #  104   0x2fa7a  1      
  callq ._ZN2pp6Module3GetEv                     #  105   0x2fa7b  5      
  movl %eax, %edi                                #  106   0x2fa80  2      
  movl $0x10020625, %esi                         #  107   0x2fa82  5      
  nop                                            #  108   0x2fa87  1      
  nop                                            #  109   0x2fa88  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  110   0x2fa89  5      
  movl $0x10030cb0, %edi                         #  111   0x2fa8e  5      
  movl %eax, 0x1000121f(%rip)                    #  112   0x2fa93  6      
  nop                                            #  113   0x2fa99  1      
  nop                                            #  114   0x2fa9a  1      
  callq .__cxa_guard_release                     #  115   0x2fa9b  5      
  jmpq .L_2f940                                  #  116   0x2faa0  5      
  nop                                            #  117   0x2faa5  1      
  nop                                            #  118   0x2faa6  1      
.L_2fbe0:                                        #        0x2faa7  0      
  movl $0x10030cc0, %edi                         #  119   0x2faa7  5      
  nop                                            #  120   0x2faac  1      
  nop                                            #  121   0x2faad  1      
  callq .__cxa_guard_acquire                     #  122   0x2faae  5      
  testl %eax, %eax                               #  123   0x2fab3  2      
  jne .L_2fea0                                   #  124   0x2fab5  6      
  nop                                            #  125   0x2fabb  1      
  nop                                            #  126   0x2fabc  1      
.L_2fc20:                                        #        0x2fabd  0      
  movl 0x10001205(%rip), %eax                    #  127   0x2fabd  6      
  jmpq .L_2f9c0                                  #  128   0x2fac3  5      
  nop                                            #  129   0x2fac8  1      
  nop                                            #  130   0x2fac9  1      
.L_2fc40:                                        #        0x2faca  0      
  cmpb $0x0, 0x100011ff(%rip)                    #  131   0x2faca  7      
  je .L_2fdc0                                    #  132   0x2fad1  6      
  nop                                            #  133   0x2fad7  1      
  nop                                            #  134   0x2fad8  1      
.L_2fc60:                                        #        0x2fad9  0      
  movl %edx, %edx                                #  135   0x2fad9  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  136   0x2fadb  5      
  movl %ebx, %ebx                                #  137   0x2fae0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  138   0x2fae2  5      
  nop                                            #  139   0x2fae7  1      
  andl $0xffffffe0, %eax                         #  140   0x2fae8  5      
  addq %r15, %rax                                #  141   0x2faed  3      
  callq %rax                                     #  142   0x2faf0  2      
  popq %rbx                                      #  143   0x2faf2  2      
  popq %r11                                      #  144   0x2faf4  3      
  testl %eax, %eax                               #  145   0x2faf7  2      
  setne %al                                      #  146   0x2faf9  3      
  andl $0xffffffe0, %r11d                        #  147   0x2fafc  7      
  addq %r15, %r11                                #  148   0x2fb03  3      
  jmpq %r11                                      #  149   0x2fb06  3      
  nop                                            #  150   0x2fb09  1      
.L_2fca0:                                        #        0x2fb0a  0      
  movl $0x10030cd0, %edi                         #  151   0x2fb0a  5      
  nop                                            #  152   0x2fb0f  1      
  nop                                            #  153   0x2fb10  1      
  callq .__cxa_guard_acquire                     #  154   0x2fb11  5      
  testl %eax, %eax                               #  155   0x2fb16  2      
  je .L_2f980                                    #  156   0x2fb18  6      
  nop                                            #  157   0x2fb1e  1      
  nop                                            #  158   0x2fb1f  1      
  callq ._ZN2pp6Module3GetEv                     #  159   0x2fb20  5      
  movl %eax, %edi                                #  160   0x2fb25  2      
  movl $0x10020618, %esi                         #  161   0x2fb27  5      
  nop                                            #  162   0x2fb2c  1      
  nop                                            #  163   0x2fb2d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  164   0x2fb2e  5      
  movl $0x10030cd0, %edi                         #  165   0x2fb33  5      
  movl %eax, 0x1000119a(%rip)                    #  166   0x2fb38  6      
  nop                                            #  167   0x2fb3e  1      
  nop                                            #  168   0x2fb3f  1      
  callq .__cxa_guard_release                     #  169   0x2fb40  5      
  jmpq .L_2f980                                  #  170   0x2fb45  5      
  nop                                            #  171   0x2fb4a  1      
  nop                                            #  172   0x2fb4b  1      
.L_2fd40:                                        #        0x2fb4c  0      
  nop                                            #  173   0x2fb4c  1      
  nop                                            #  174   0x2fb4d  1      
  callq ._ZN2pp6Module3GetEv                     #  175   0x2fb4e  5      
  movl %eax, %edi                                #  176   0x2fb53  2      
  movl $0x10020625, %esi                         #  177   0x2fb55  5      
  nop                                            #  178   0x2fb5a  1      
  nop                                            #  179   0x2fb5b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  180   0x2fb5c  5      
  movl $0x10030cb0, %edi                         #  181   0x2fb61  5      
  movl %eax, 0x1000114c(%rip)                    #  182   0x2fb66  6      
  nop                                            #  183   0x2fb6c  1      
  nop                                            #  184   0x2fb6d  1      
  callq .__cxa_guard_release                     #  185   0x2fb6e  5      
  jmpq .L_2fb00                                  #  186   0x2fb73  5      
  nop                                            #  187   0x2fb78  1      
  nop                                            #  188   0x2fb79  1      
.L_2fdc0:                                        #        0x2fb7a  0      
  movl $0x10030cd0, %edi                         #  189   0x2fb7a  5      
  nop                                            #  190   0x2fb7f  1      
  nop                                            #  191   0x2fb80  1      
  callq .__cxa_guard_acquire                     #  192   0x2fb81  5      
  testl %eax, %eax                               #  193   0x2fb86  2      
  jne .L_2fe20                                   #  194   0x2fb88  6      
  nop                                            #  195   0x2fb8e  1      
  nop                                            #  196   0x2fb8f  1      
.L_2fe00:                                        #        0x2fb90  0      
  movl 0x10001142(%rip), %edx                    #  197   0x2fb90  6      
  jmpq .L_2fc60                                  #  198   0x2fb96  5      
  nop                                            #  199   0x2fb9b  1      
  nop                                            #  200   0x2fb9c  1      
.L_2fe20:                                        #        0x2fb9d  0      
  nop                                            #  201   0x2fb9d  1      
  nop                                            #  202   0x2fb9e  1      
  callq ._ZN2pp6Module3GetEv                     #  203   0x2fb9f  5      
  movl %eax, %edi                                #  204   0x2fba4  2      
  movl $0x10020618, %esi                         #  205   0x2fba6  5      
  nop                                            #  206   0x2fbab  1      
  nop                                            #  207   0x2fbac  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  208   0x2fbad  5      
  movl $0x10030cd0, %edi                         #  209   0x2fbb2  5      
  movl %eax, 0x1000111b(%rip)                    #  210   0x2fbb7  6      
  nop                                            #  211   0x2fbbd  1      
  nop                                            #  212   0x2fbbe  1      
  callq .__cxa_guard_release                     #  213   0x2fbbf  5      
  jmpq .L_2fe00                                  #  214   0x2fbc4  5      
  nop                                            #  215   0x2fbc9  1      
  nop                                            #  216   0x2fbca  1      
.L_2fea0:                                        #        0x2fbcb  0      
  nop                                            #  217   0x2fbcb  1      
  nop                                            #  218   0x2fbcc  1      
  callq ._ZN2pp6Module3GetEv                     #  219   0x2fbcd  5      
  movl %eax, %edi                                #  220   0x2fbd2  2      
  movl $0x10020632, %esi                         #  221   0x2fbd4  5      
  nop                                            #  222   0x2fbd9  1      
  nop                                            #  223   0x2fbda  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  224   0x2fbdb  5      
  movl $0x10030cc0, %edi                         #  225   0x2fbe0  5      
  movl %eax, 0x100010dd(%rip)                    #  226   0x2fbe5  6      
  nop                                            #  227   0x2fbeb  1      
  nop                                            #  228   0x2fbec  1      
  callq .__cxa_guard_release                     #  229   0x2fbed  5      
  jmpq .L_2fc20                                  #  230   0x2fbf2  5      
  nop                                            #  231   0x2fbf7  1      
  nop                                            #  232   0x2fbf8  1      
.L_2ff20:                                        #        0x2fbf9  0      
  movl %eax, %ebx                                #  233   0x2fbf9  2      
  movl $0x10030cb0, %edi                         #  234   0x2fbfb  5      
  nop                                            #  235   0x2fc00  1      
  nop                                            #  236   0x2fc01  1      
  callq .__cxa_guard_abort                       #  237   0x2fc02  5      
  movl %ebx, %edi                                #  238   0x2fc07  2      
  nop                                            #  239   0x2fc09  1      
  nop                                            #  240   0x2fc0a  1      
  callq ._Unwind_Resume                          #  241   0x2fc0b  5      
.L_2ff60:                                        #        0x2fc10  0      
  movl %eax, %ebx                                #  242   0x2fc10  2      
  movl $0x10030cc0, %edi                         #  243   0x2fc12  5      
  nop                                            #  244   0x2fc17  1      
  nop                                            #  245   0x2fc18  1      
  callq .__cxa_guard_abort                       #  246   0x2fc19  5      
  movl %ebx, %edi                                #  247   0x2fc1e  2      
  nop                                            #  248   0x2fc20  1      
  nop                                            #  249   0x2fc21  1      
  callq ._Unwind_Resume                          #  250   0x2fc22  5      
  jmpq .L_2ff60                                  #  251   0x2fc27  5      
  nop                                            #  252   0x2fc2c  1      
  nop                                            #  253   0x2fc2d  1      
  jmpq .L_2ff20                                  #  254   0x2fc2e  5      
  nop                                            #  255   0x2fc33  1      
  nop                                            #  256   0x2fc34  1      
.L_2ffe0:                                        #        0x2fc35  0      
  movl %eax, %ebx                                #  257   0x2fc35  2      
  movl $0x10030cd0, %edi                         #  258   0x2fc37  5      
  nop                                            #  259   0x2fc3c  1      
  nop                                            #  260   0x2fc3d  1      
  callq .__cxa_guard_abort                       #  261   0x2fc3e  5      
  movl %ebx, %edi                                #  262   0x2fc43  2      
  nop                                            #  263   0x2fc45  1      
  nop                                            #  264   0x2fc46  1      
  callq ._Unwind_Resume                          #  265   0x2fc47  5      
  jmpq .L_2ffe0                                  #  266   0x2fc4c  5      
  nop                                            #  267   0x2fc51  1      
  nop                                            #  268   0x2fc52  1      
                                                                          
.size _ZNK2pp4View9IsVisibleEv, .-_ZNK2pp4View9IsVisibleEv

