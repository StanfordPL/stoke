  .text
  .globl _ZNK2pp4View9IsVisibleEv
  .type _ZNK2pp4View9IsVisibleEv, @function

#! file-offset 0x2f880
#! rip-offset  0x2f880
#! capacity    1824 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View9IsVisibleEv:                       #        0x2f880  0      
  cmpb $0x0, 0x10001429(%rip)                    #  1     0x2f880  7      
  pushq %rbx                                     #  2     0x2f887  2      
  movl %edi, %ebx                                #  3     0x2f889  2      
  je .L_2faa0                                    #  4     0x2f88b  6      
  nop                                            #  5     0x2f891  1      
  nop                                            #  6     0x2f892  1      
.L_2f8a0:                                        #        0x2f893  0      
  movl 0x1000141f(%rip), %eax                    #  7     0x2f893  6      
  testq %rax, %rax                               #  8     0x2f899  3      
  jne .L_2fa20                                   #  9     0x2f89c  6      
  cmpb $0x0, 0x10001417(%rip)                    #  10    0x2f8a2  7      
  je .L_2f980                                    #  11    0x2f8a9  6      
  nop                                            #  12    0x2f8af  1      
.L_2f8c0:                                        #        0x2f8b0  0      
  movl 0x10001412(%rip), %eax                    #  13    0x2f8b0  6      
  testq %rax, %rax                               #  14    0x2f8b6  3      
  jne .L_2f900                                   #  15    0x2f8b9  6      
  cmpb $0x0, 0x1000140a(%rip)                    #  16    0x2f8bf  7      
  je .L_2fc00                                    #  17    0x2f8c6  6      
  nop                                            #  18    0x2f8cc  1      
.L_2f8e0:                                        #        0x2f8cd  0      
  movl 0x10001405(%rip), %edx                    #  19    0x2f8cd  6      
  xorl %eax, %eax                                #  20    0x2f8d3  2      
  testq %rdx, %rdx                               #  21    0x2f8d5  3      
  jne .L_2fba0                                   #  22    0x2f8d8  6      
  popq %rbx                                      #  23    0x2f8de  2      
  popq %r11                                      #  24    0x2f8e0  3      
  andl $0xffffffe0, %r11d                        #  25    0x2f8e3  7      
  addq %r15, %r11                                #  26    0x2f8ea  3      
  jmpq %r11                                      #  27    0x2f8ed  3      
  xchgw %ax, %ax                                 #  28    0x2f8f0  3      
.L_2f900:                                        #        0x2f8f3  0      
  cmpb $0x0, 0x100013c6(%rip)                    #  29    0x2f8f3  7      
  je .L_2fb40                                    #  30    0x2f8fa  6      
  nop                                            #  31    0x2f900  1      
  nop                                            #  32    0x2f901  1      
.L_2f920:                                        #        0x2f902  0      
  movl %eax, %eax                                #  33    0x2f902  2      
  movl 0xc(%r15,%rax,1), %eax                    #  34    0x2f904  5      
  movl %ebx, %ebx                                #  35    0x2f909  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  36    0x2f90b  5      
  nop                                            #  37    0x2f910  1      
  andl $0xffffffe0, %eax                         #  38    0x2f911  5      
  addq %r15, %rax                                #  39    0x2f916  3      
  callq %rax                                     #  40    0x2f919  2      
  testl %eax, %eax                               #  41    0x2f91b  2      
  setne %al                                      #  42    0x2f91d  3      
  nop                                            #  43    0x2f920  1      
  nop                                            #  44    0x2f921  1      
.L_2f960:                                        #        0x2f922  0      
  popq %rbx                                      #  45    0x2f922  2      
  popq %r11                                      #  46    0x2f924  3      
  andl $0xffffffe0, %r11d                        #  47    0x2f927  7      
  addq %r15, %r11                                #  48    0x2f92e  3      
  jmpq %r11                                      #  49    0x2f931  3      
  nop                                            #  50    0x2f934  1      
  nop                                            #  51    0x2f935  1      
.L_2f980:                                        #        0x2f936  0      
  movl $0x10030cc0, %edi                         #  52    0x2f936  5      
  nop                                            #  53    0x2f93b  1      
  nop                                            #  54    0x2f93c  1      
  callq .__cxa_guard_acquire                     #  55    0x2f93d  5      
  testl %eax, %eax                               #  56    0x2f942  2      
  je .L_2f8c0                                    #  57    0x2f944  6      
  nop                                            #  58    0x2f94a  1      
  nop                                            #  59    0x2f94b  1      
  callq ._ZN2pp6Module3GetEv                     #  60    0x2f94c  5      
  movl %eax, %edi                                #  61    0x2f951  2      
  movl $0x10020632, %esi                         #  62    0x2f953  5      
  nop                                            #  63    0x2f958  1      
  nop                                            #  64    0x2f959  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  65    0x2f95a  5      
  movl $0x10030cc0, %edi                         #  66    0x2f95f  5      
  movl %eax, 0x1000135e(%rip)                    #  67    0x2f964  6      
  nop                                            #  68    0x2f96a  1      
  nop                                            #  69    0x2f96b  1      
  callq .__cxa_guard_release                     #  70    0x2f96c  5      
  jmpq .L_2f8c0                                  #  71    0x2f971  5      
  nop                                            #  72    0x2f976  1      
  nop                                            #  73    0x2f977  1      
.L_2fa20:                                        #        0x2f978  0      
  cmpb $0x0, 0x10001331(%rip)                    #  74    0x2f978  7      
  jne .L_2f920                                   #  75    0x2f97f  6      
  movl $0x10030cb0, %edi                         #  76    0x2f985  5      
  nop                                            #  77    0x2f98a  1      
  callq .__cxa_guard_acquire                     #  78    0x2f98b  5      
  testl %eax, %eax                               #  79    0x2f990  2      
  jne .L_2fca0                                   #  80    0x2f992  6      
  nop                                            #  81    0x2f998  1      
  nop                                            #  82    0x2f999  1      
.L_2fa60:                                        #        0x2f99a  0      
  movl 0x10001318(%rip), %eax                    #  83    0x2f99a  6      
  movl %ebx, %ebx                                #  84    0x2f9a0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  85    0x2f9a2  5      
  movl %eax, %eax                                #  86    0x2f9a7  2      
  movl 0xc(%r15,%rax,1), %eax                    #  87    0x2f9a9  5      
  nop                                            #  88    0x2f9ae  1      
  andl $0xffffffe0, %eax                         #  89    0x2f9af  5      
  addq %r15, %rax                                #  90    0x2f9b4  3      
  callq %rax                                     #  91    0x2f9b7  2      
  testl %eax, %eax                               #  92    0x2f9b9  2      
  setne %al                                      #  93    0x2f9bb  3      
  jmpq .L_2f960                                  #  94    0x2f9be  5      
  nop                                            #  95    0x2f9c3  1      
  nop                                            #  96    0x2f9c4  1      
.L_2faa0:                                        #        0x2f9c5  0      
  movl $0x10030cb0, %edi                         #  97    0x2f9c5  5      
  nop                                            #  98    0x2f9ca  1      
  nop                                            #  99    0x2f9cb  1      
  callq .__cxa_guard_acquire                     #  100   0x2f9cc  5      
  testl %eax, %eax                               #  101   0x2f9d1  2      
  je .L_2f8a0                                    #  102   0x2f9d3  6      
  nop                                            #  103   0x2f9d9  1      
  nop                                            #  104   0x2f9da  1      
  callq ._ZN2pp6Module3GetEv                     #  105   0x2f9db  5      
  movl %eax, %edi                                #  106   0x2f9e0  2      
  movl $0x10020625, %esi                         #  107   0x2f9e2  5      
  nop                                            #  108   0x2f9e7  1      
  nop                                            #  109   0x2f9e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  110   0x2f9e9  5      
  movl $0x10030cb0, %edi                         #  111   0x2f9ee  5      
  movl %eax, 0x100012bf(%rip)                    #  112   0x2f9f3  6      
  nop                                            #  113   0x2f9f9  1      
  nop                                            #  114   0x2f9fa  1      
  callq .__cxa_guard_release                     #  115   0x2f9fb  5      
  jmpq .L_2f8a0                                  #  116   0x2fa00  5      
  nop                                            #  117   0x2fa05  1      
  nop                                            #  118   0x2fa06  1      
.L_2fb40:                                        #        0x2fa07  0      
  movl $0x10030cc0, %edi                         #  119   0x2fa07  5      
  nop                                            #  120   0x2fa0c  1      
  nop                                            #  121   0x2fa0d  1      
  callq .__cxa_guard_acquire                     #  122   0x2fa0e  5      
  testl %eax, %eax                               #  123   0x2fa13  2      
  jne .L_2fe00                                   #  124   0x2fa15  6      
  nop                                            #  125   0x2fa1b  1      
  nop                                            #  126   0x2fa1c  1      
.L_2fb80:                                        #        0x2fa1d  0      
  movl 0x100012a5(%rip), %eax                    #  127   0x2fa1d  6      
  jmpq .L_2f920                                  #  128   0x2fa23  5      
  nop                                            #  129   0x2fa28  1      
  nop                                            #  130   0x2fa29  1      
.L_2fba0:                                        #        0x2fa2a  0      
  cmpb $0x0, 0x1000129f(%rip)                    #  131   0x2fa2a  7      
  je .L_2fd20                                    #  132   0x2fa31  6      
  nop                                            #  133   0x2fa37  1      
  nop                                            #  134   0x2fa38  1      
.L_2fbc0:                                        #        0x2fa39  0      
  movl %edx, %edx                                #  135   0x2fa39  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  136   0x2fa3b  5      
  movl %ebx, %ebx                                #  137   0x2fa40  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  138   0x2fa42  5      
  nop                                            #  139   0x2fa47  1      
  andl $0xffffffe0, %eax                         #  140   0x2fa48  5      
  addq %r15, %rax                                #  141   0x2fa4d  3      
  callq %rax                                     #  142   0x2fa50  2      
  popq %rbx                                      #  143   0x2fa52  2      
  popq %r11                                      #  144   0x2fa54  3      
  testl %eax, %eax                               #  145   0x2fa57  2      
  setne %al                                      #  146   0x2fa59  3      
  andl $0xffffffe0, %r11d                        #  147   0x2fa5c  7      
  addq %r15, %r11                                #  148   0x2fa63  3      
  jmpq %r11                                      #  149   0x2fa66  3      
  nop                                            #  150   0x2fa69  1      
.L_2fc00:                                        #        0x2fa6a  0      
  movl $0x10030cd0, %edi                         #  151   0x2fa6a  5      
  nop                                            #  152   0x2fa6f  1      
  nop                                            #  153   0x2fa70  1      
  callq .__cxa_guard_acquire                     #  154   0x2fa71  5      
  testl %eax, %eax                               #  155   0x2fa76  2      
  je .L_2f8e0                                    #  156   0x2fa78  6      
  nop                                            #  157   0x2fa7e  1      
  nop                                            #  158   0x2fa7f  1      
  callq ._ZN2pp6Module3GetEv                     #  159   0x2fa80  5      
  movl %eax, %edi                                #  160   0x2fa85  2      
  movl $0x10020618, %esi                         #  161   0x2fa87  5      
  nop                                            #  162   0x2fa8c  1      
  nop                                            #  163   0x2fa8d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  164   0x2fa8e  5      
  movl $0x10030cd0, %edi                         #  165   0x2fa93  5      
  movl %eax, 0x1000123a(%rip)                    #  166   0x2fa98  6      
  nop                                            #  167   0x2fa9e  1      
  nop                                            #  168   0x2fa9f  1      
  callq .__cxa_guard_release                     #  169   0x2faa0  5      
  jmpq .L_2f8e0                                  #  170   0x2faa5  5      
  nop                                            #  171   0x2faaa  1      
  nop                                            #  172   0x2faab  1      
.L_2fca0:                                        #        0x2faac  0      
  nop                                            #  173   0x2faac  1      
  nop                                            #  174   0x2faad  1      
  callq ._ZN2pp6Module3GetEv                     #  175   0x2faae  5      
  movl %eax, %edi                                #  176   0x2fab3  2      
  movl $0x10020625, %esi                         #  177   0x2fab5  5      
  nop                                            #  178   0x2faba  1      
  nop                                            #  179   0x2fabb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  180   0x2fabc  5      
  movl $0x10030cb0, %edi                         #  181   0x2fac1  5      
  movl %eax, 0x100011ec(%rip)                    #  182   0x2fac6  6      
  nop                                            #  183   0x2facc  1      
  nop                                            #  184   0x2facd  1      
  callq .__cxa_guard_release                     #  185   0x2face  5      
  jmpq .L_2fa60                                  #  186   0x2fad3  5      
  nop                                            #  187   0x2fad8  1      
  nop                                            #  188   0x2fad9  1      
.L_2fd20:                                        #        0x2fada  0      
  movl $0x10030cd0, %edi                         #  189   0x2fada  5      
  nop                                            #  190   0x2fadf  1      
  nop                                            #  191   0x2fae0  1      
  callq .__cxa_guard_acquire                     #  192   0x2fae1  5      
  testl %eax, %eax                               #  193   0x2fae6  2      
  jne .L_2fd80                                   #  194   0x2fae8  6      
  nop                                            #  195   0x2faee  1      
  nop                                            #  196   0x2faef  1      
.L_2fd60:                                        #        0x2faf0  0      
  movl 0x100011e2(%rip), %edx                    #  197   0x2faf0  6      
  jmpq .L_2fbc0                                  #  198   0x2faf6  5      
  nop                                            #  199   0x2fafb  1      
  nop                                            #  200   0x2fafc  1      
.L_2fd80:                                        #        0x2fafd  0      
  nop                                            #  201   0x2fafd  1      
  nop                                            #  202   0x2fafe  1      
  callq ._ZN2pp6Module3GetEv                     #  203   0x2faff  5      
  movl %eax, %edi                                #  204   0x2fb04  2      
  movl $0x10020618, %esi                         #  205   0x2fb06  5      
  nop                                            #  206   0x2fb0b  1      
  nop                                            #  207   0x2fb0c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  208   0x2fb0d  5      
  movl $0x10030cd0, %edi                         #  209   0x2fb12  5      
  movl %eax, 0x100011bb(%rip)                    #  210   0x2fb17  6      
  nop                                            #  211   0x2fb1d  1      
  nop                                            #  212   0x2fb1e  1      
  callq .__cxa_guard_release                     #  213   0x2fb1f  5      
  jmpq .L_2fd60                                  #  214   0x2fb24  5      
  nop                                            #  215   0x2fb29  1      
  nop                                            #  216   0x2fb2a  1      
.L_2fe00:                                        #        0x2fb2b  0      
  nop                                            #  217   0x2fb2b  1      
  nop                                            #  218   0x2fb2c  1      
  callq ._ZN2pp6Module3GetEv                     #  219   0x2fb2d  5      
  movl %eax, %edi                                #  220   0x2fb32  2      
  movl $0x10020632, %esi                         #  221   0x2fb34  5      
  nop                                            #  222   0x2fb39  1      
  nop                                            #  223   0x2fb3a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  224   0x2fb3b  5      
  movl $0x10030cc0, %edi                         #  225   0x2fb40  5      
  movl %eax, 0x1000117d(%rip)                    #  226   0x2fb45  6      
  nop                                            #  227   0x2fb4b  1      
  nop                                            #  228   0x2fb4c  1      
  callq .__cxa_guard_release                     #  229   0x2fb4d  5      
  jmpq .L_2fb80                                  #  230   0x2fb52  5      
  nop                                            #  231   0x2fb57  1      
  nop                                            #  232   0x2fb58  1      
.L_2fe80:                                        #        0x2fb59  0      
  movl %eax, %ebx                                #  233   0x2fb59  2      
  movl $0x10030cb0, %edi                         #  234   0x2fb5b  5      
  nop                                            #  235   0x2fb60  1      
  nop                                            #  236   0x2fb61  1      
  callq .__cxa_guard_abort                       #  237   0x2fb62  5      
  movl %ebx, %edi                                #  238   0x2fb67  2      
  nop                                            #  239   0x2fb69  1      
  nop                                            #  240   0x2fb6a  1      
  callq ._Unwind_Resume                          #  241   0x2fb6b  5      
.L_2fec0:                                        #        0x2fb70  0      
  movl %eax, %ebx                                #  242   0x2fb70  2      
  movl $0x10030cc0, %edi                         #  243   0x2fb72  5      
  nop                                            #  244   0x2fb77  1      
  nop                                            #  245   0x2fb78  1      
  callq .__cxa_guard_abort                       #  246   0x2fb79  5      
  movl %ebx, %edi                                #  247   0x2fb7e  2      
  nop                                            #  248   0x2fb80  1      
  nop                                            #  249   0x2fb81  1      
  callq ._Unwind_Resume                          #  250   0x2fb82  5      
  jmpq .L_2fec0                                  #  251   0x2fb87  5      
  nop                                            #  252   0x2fb8c  1      
  nop                                            #  253   0x2fb8d  1      
  jmpq .L_2fe80                                  #  254   0x2fb8e  5      
  nop                                            #  255   0x2fb93  1      
  nop                                            #  256   0x2fb94  1      
.L_2ff40:                                        #        0x2fb95  0      
  movl %eax, %ebx                                #  257   0x2fb95  2      
  movl $0x10030cd0, %edi                         #  258   0x2fb97  5      
  nop                                            #  259   0x2fb9c  1      
  nop                                            #  260   0x2fb9d  1      
  callq .__cxa_guard_abort                       #  261   0x2fb9e  5      
  movl %ebx, %edi                                #  262   0x2fba3  2      
  nop                                            #  263   0x2fba5  1      
  nop                                            #  264   0x2fba6  1      
  callq ._Unwind_Resume                          #  265   0x2fba7  5      
  jmpq .L_2ff40                                  #  266   0x2fbac  5      
  nop                                            #  267   0x2fbb1  1      
  nop                                            #  268   0x2fbb2  1      
                                                                          
.size _ZNK2pp4View9IsVisibleEv, .-_ZNK2pp4View9IsVisibleEv

