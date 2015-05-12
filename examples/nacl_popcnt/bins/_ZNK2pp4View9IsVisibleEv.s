  .text
  .globl _ZNK2pp4View9IsVisibleEv
  .type _ZNK2pp4View9IsVisibleEv, @function

#! file-offset 0x2f8a0
#! rip-offset  0x2f8a0
#! capacity    1824 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View9IsVisibleEv:                       #        0x2f8a0  0      
  cmpb $0x0, 0x10001409(%rip)                    #  1     0x2f8a0  7      
  pushq %rbx                                     #  2     0x2f8a7  2      
  movl %edi, %ebx                                #  3     0x2f8a9  2      
  je .L_2fac0                                    #  4     0x2f8ab  6      
  nop                                            #  5     0x2f8b1  1      
  nop                                            #  6     0x2f8b2  1      
.L_2f8c0:                                        #        0x2f8b3  0      
  movl 0x100013ff(%rip), %eax                    #  7     0x2f8b3  6      
  testq %rax, %rax                               #  8     0x2f8b9  3      
  jne .L_2fa40                                   #  9     0x2f8bc  6      
  cmpb $0x0, 0x100013f7(%rip)                    #  10    0x2f8c2  7      
  je .L_2f9a0                                    #  11    0x2f8c9  6      
  nop                                            #  12    0x2f8cf  1      
.L_2f8e0:                                        #        0x2f8d0  0      
  movl 0x100013f2(%rip), %eax                    #  13    0x2f8d0  6      
  testq %rax, %rax                               #  14    0x2f8d6  3      
  jne .L_2f920                                   #  15    0x2f8d9  6      
  cmpb $0x0, 0x100013ea(%rip)                    #  16    0x2f8df  7      
  je .L_2fc20                                    #  17    0x2f8e6  6      
  nop                                            #  18    0x2f8ec  1      
.L_2f900:                                        #        0x2f8ed  0      
  movl 0x100013e5(%rip), %edx                    #  19    0x2f8ed  6      
  xorl %eax, %eax                                #  20    0x2f8f3  2      
  testq %rdx, %rdx                               #  21    0x2f8f5  3      
  jne .L_2fbc0                                   #  22    0x2f8f8  6      
  popq %rbx                                      #  23    0x2f8fe  2      
  popq %r11                                      #  24    0x2f900  3      
  andl $0xffffffe0, %r11d                        #  25    0x2f903  7      
  addq %r15, %r11                                #  26    0x2f90a  3      
  jmpq %r11                                      #  27    0x2f90d  3      
  xchgw %ax, %ax                                 #  28    0x2f910  3      
.L_2f920:                                        #        0x2f913  0      
  cmpb $0x0, 0x100013a6(%rip)                    #  29    0x2f913  7      
  je .L_2fb60                                    #  30    0x2f91a  6      
  nop                                            #  31    0x2f920  1      
  nop                                            #  32    0x2f921  1      
.L_2f940:                                        #        0x2f922  0      
  movl %eax, %eax                                #  33    0x2f922  2      
  movl 0xc(%r15,%rax,1), %eax                    #  34    0x2f924  5      
  movl %ebx, %ebx                                #  35    0x2f929  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  36    0x2f92b  5      
  nop                                            #  37    0x2f930  1      
  andl $0xffffffe0, %eax                         #  38    0x2f931  5      
  addq %r15, %rax                                #  39    0x2f936  3      
  callq %rax                                     #  40    0x2f939  2      
  testl %eax, %eax                               #  41    0x2f93b  2      
  setne %al                                      #  42    0x2f93d  3      
  nop                                            #  43    0x2f940  1      
  nop                                            #  44    0x2f941  1      
.L_2f980:                                        #        0x2f942  0      
  popq %rbx                                      #  45    0x2f942  2      
  popq %r11                                      #  46    0x2f944  3      
  andl $0xffffffe0, %r11d                        #  47    0x2f947  7      
  addq %r15, %r11                                #  48    0x2f94e  3      
  jmpq %r11                                      #  49    0x2f951  3      
  nop                                            #  50    0x2f954  1      
  nop                                            #  51    0x2f955  1      
.L_2f9a0:                                        #        0x2f956  0      
  movl $0x10030cc0, %edi                         #  52    0x2f956  5      
  nop                                            #  53    0x2f95b  1      
  nop                                            #  54    0x2f95c  1      
  callq .__cxa_guard_acquire                     #  55    0x2f95d  5      
  testl %eax, %eax                               #  56    0x2f962  2      
  je .L_2f8e0                                    #  57    0x2f964  6      
  nop                                            #  58    0x2f96a  1      
  nop                                            #  59    0x2f96b  1      
  callq ._ZN2pp6Module3GetEv                     #  60    0x2f96c  5      
  movl %eax, %edi                                #  61    0x2f971  2      
  movl $0x10020632, %esi                         #  62    0x2f973  5      
  nop                                            #  63    0x2f978  1      
  nop                                            #  64    0x2f979  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  65    0x2f97a  5      
  movl $0x10030cc0, %edi                         #  66    0x2f97f  5      
  movl %eax, 0x1000133e(%rip)                    #  67    0x2f984  6      
  nop                                            #  68    0x2f98a  1      
  nop                                            #  69    0x2f98b  1      
  callq .__cxa_guard_release                     #  70    0x2f98c  5      
  jmpq .L_2f8e0                                  #  71    0x2f991  5      
  nop                                            #  72    0x2f996  1      
  nop                                            #  73    0x2f997  1      
.L_2fa40:                                        #        0x2f998  0      
  cmpb $0x0, 0x10001311(%rip)                    #  74    0x2f998  7      
  jne .L_2f940                                   #  75    0x2f99f  6      
  movl $0x10030cb0, %edi                         #  76    0x2f9a5  5      
  nop                                            #  77    0x2f9aa  1      
  callq .__cxa_guard_acquire                     #  78    0x2f9ab  5      
  testl %eax, %eax                               #  79    0x2f9b0  2      
  jne .L_2fcc0                                   #  80    0x2f9b2  6      
  nop                                            #  81    0x2f9b8  1      
  nop                                            #  82    0x2f9b9  1      
.L_2fa80:                                        #        0x2f9ba  0      
  movl 0x100012f8(%rip), %eax                    #  83    0x2f9ba  6      
  movl %ebx, %ebx                                #  84    0x2f9c0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  85    0x2f9c2  5      
  movl %eax, %eax                                #  86    0x2f9c7  2      
  movl 0xc(%r15,%rax,1), %eax                    #  87    0x2f9c9  5      
  nop                                            #  88    0x2f9ce  1      
  andl $0xffffffe0, %eax                         #  89    0x2f9cf  5      
  addq %r15, %rax                                #  90    0x2f9d4  3      
  callq %rax                                     #  91    0x2f9d7  2      
  testl %eax, %eax                               #  92    0x2f9d9  2      
  setne %al                                      #  93    0x2f9db  3      
  jmpq .L_2f980                                  #  94    0x2f9de  5      
  nop                                            #  95    0x2f9e3  1      
  nop                                            #  96    0x2f9e4  1      
.L_2fac0:                                        #        0x2f9e5  0      
  movl $0x10030cb0, %edi                         #  97    0x2f9e5  5      
  nop                                            #  98    0x2f9ea  1      
  nop                                            #  99    0x2f9eb  1      
  callq .__cxa_guard_acquire                     #  100   0x2f9ec  5      
  testl %eax, %eax                               #  101   0x2f9f1  2      
  je .L_2f8c0                                    #  102   0x2f9f3  6      
  nop                                            #  103   0x2f9f9  1      
  nop                                            #  104   0x2f9fa  1      
  callq ._ZN2pp6Module3GetEv                     #  105   0x2f9fb  5      
  movl %eax, %edi                                #  106   0x2fa00  2      
  movl $0x10020625, %esi                         #  107   0x2fa02  5      
  nop                                            #  108   0x2fa07  1      
  nop                                            #  109   0x2fa08  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  110   0x2fa09  5      
  movl $0x10030cb0, %edi                         #  111   0x2fa0e  5      
  movl %eax, 0x1000129f(%rip)                    #  112   0x2fa13  6      
  nop                                            #  113   0x2fa19  1      
  nop                                            #  114   0x2fa1a  1      
  callq .__cxa_guard_release                     #  115   0x2fa1b  5      
  jmpq .L_2f8c0                                  #  116   0x2fa20  5      
  nop                                            #  117   0x2fa25  1      
  nop                                            #  118   0x2fa26  1      
.L_2fb60:                                        #        0x2fa27  0      
  movl $0x10030cc0, %edi                         #  119   0x2fa27  5      
  nop                                            #  120   0x2fa2c  1      
  nop                                            #  121   0x2fa2d  1      
  callq .__cxa_guard_acquire                     #  122   0x2fa2e  5      
  testl %eax, %eax                               #  123   0x2fa33  2      
  jne .L_2fe20                                   #  124   0x2fa35  6      
  nop                                            #  125   0x2fa3b  1      
  nop                                            #  126   0x2fa3c  1      
.L_2fba0:                                        #        0x2fa3d  0      
  movl 0x10001285(%rip), %eax                    #  127   0x2fa3d  6      
  jmpq .L_2f940                                  #  128   0x2fa43  5      
  nop                                            #  129   0x2fa48  1      
  nop                                            #  130   0x2fa49  1      
.L_2fbc0:                                        #        0x2fa4a  0      
  cmpb $0x0, 0x1000127f(%rip)                    #  131   0x2fa4a  7      
  je .L_2fd40                                    #  132   0x2fa51  6      
  nop                                            #  133   0x2fa57  1      
  nop                                            #  134   0x2fa58  1      
.L_2fbe0:                                        #        0x2fa59  0      
  movl %edx, %edx                                #  135   0x2fa59  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  136   0x2fa5b  5      
  movl %ebx, %ebx                                #  137   0x2fa60  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  138   0x2fa62  5      
  nop                                            #  139   0x2fa67  1      
  andl $0xffffffe0, %eax                         #  140   0x2fa68  5      
  addq %r15, %rax                                #  141   0x2fa6d  3      
  callq %rax                                     #  142   0x2fa70  2      
  popq %rbx                                      #  143   0x2fa72  2      
  popq %r11                                      #  144   0x2fa74  3      
  testl %eax, %eax                               #  145   0x2fa77  2      
  setne %al                                      #  146   0x2fa79  3      
  andl $0xffffffe0, %r11d                        #  147   0x2fa7c  7      
  addq %r15, %r11                                #  148   0x2fa83  3      
  jmpq %r11                                      #  149   0x2fa86  3      
  nop                                            #  150   0x2fa89  1      
.L_2fc20:                                        #        0x2fa8a  0      
  movl $0x10030cd0, %edi                         #  151   0x2fa8a  5      
  nop                                            #  152   0x2fa8f  1      
  nop                                            #  153   0x2fa90  1      
  callq .__cxa_guard_acquire                     #  154   0x2fa91  5      
  testl %eax, %eax                               #  155   0x2fa96  2      
  je .L_2f900                                    #  156   0x2fa98  6      
  nop                                            #  157   0x2fa9e  1      
  nop                                            #  158   0x2fa9f  1      
  callq ._ZN2pp6Module3GetEv                     #  159   0x2faa0  5      
  movl %eax, %edi                                #  160   0x2faa5  2      
  movl $0x10020618, %esi                         #  161   0x2faa7  5      
  nop                                            #  162   0x2faac  1      
  nop                                            #  163   0x2faad  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  164   0x2faae  5      
  movl $0x10030cd0, %edi                         #  165   0x2fab3  5      
  movl %eax, 0x1000121a(%rip)                    #  166   0x2fab8  6      
  nop                                            #  167   0x2fabe  1      
  nop                                            #  168   0x2fabf  1      
  callq .__cxa_guard_release                     #  169   0x2fac0  5      
  jmpq .L_2f900                                  #  170   0x2fac5  5      
  nop                                            #  171   0x2faca  1      
  nop                                            #  172   0x2facb  1      
.L_2fcc0:                                        #        0x2facc  0      
  nop                                            #  173   0x2facc  1      
  nop                                            #  174   0x2facd  1      
  callq ._ZN2pp6Module3GetEv                     #  175   0x2face  5      
  movl %eax, %edi                                #  176   0x2fad3  2      
  movl $0x10020625, %esi                         #  177   0x2fad5  5      
  nop                                            #  178   0x2fada  1      
  nop                                            #  179   0x2fadb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  180   0x2fadc  5      
  movl $0x10030cb0, %edi                         #  181   0x2fae1  5      
  movl %eax, 0x100011cc(%rip)                    #  182   0x2fae6  6      
  nop                                            #  183   0x2faec  1      
  nop                                            #  184   0x2faed  1      
  callq .__cxa_guard_release                     #  185   0x2faee  5      
  jmpq .L_2fa80                                  #  186   0x2faf3  5      
  nop                                            #  187   0x2faf8  1      
  nop                                            #  188   0x2faf9  1      
.L_2fd40:                                        #        0x2fafa  0      
  movl $0x10030cd0, %edi                         #  189   0x2fafa  5      
  nop                                            #  190   0x2faff  1      
  nop                                            #  191   0x2fb00  1      
  callq .__cxa_guard_acquire                     #  192   0x2fb01  5      
  testl %eax, %eax                               #  193   0x2fb06  2      
  jne .L_2fda0                                   #  194   0x2fb08  6      
  nop                                            #  195   0x2fb0e  1      
  nop                                            #  196   0x2fb0f  1      
.L_2fd80:                                        #        0x2fb10  0      
  movl 0x100011c2(%rip), %edx                    #  197   0x2fb10  6      
  jmpq .L_2fbe0                                  #  198   0x2fb16  5      
  nop                                            #  199   0x2fb1b  1      
  nop                                            #  200   0x2fb1c  1      
.L_2fda0:                                        #        0x2fb1d  0      
  nop                                            #  201   0x2fb1d  1      
  nop                                            #  202   0x2fb1e  1      
  callq ._ZN2pp6Module3GetEv                     #  203   0x2fb1f  5      
  movl %eax, %edi                                #  204   0x2fb24  2      
  movl $0x10020618, %esi                         #  205   0x2fb26  5      
  nop                                            #  206   0x2fb2b  1      
  nop                                            #  207   0x2fb2c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  208   0x2fb2d  5      
  movl $0x10030cd0, %edi                         #  209   0x2fb32  5      
  movl %eax, 0x1000119b(%rip)                    #  210   0x2fb37  6      
  nop                                            #  211   0x2fb3d  1      
  nop                                            #  212   0x2fb3e  1      
  callq .__cxa_guard_release                     #  213   0x2fb3f  5      
  jmpq .L_2fd80                                  #  214   0x2fb44  5      
  nop                                            #  215   0x2fb49  1      
  nop                                            #  216   0x2fb4a  1      
.L_2fe20:                                        #        0x2fb4b  0      
  nop                                            #  217   0x2fb4b  1      
  nop                                            #  218   0x2fb4c  1      
  callq ._ZN2pp6Module3GetEv                     #  219   0x2fb4d  5      
  movl %eax, %edi                                #  220   0x2fb52  2      
  movl $0x10020632, %esi                         #  221   0x2fb54  5      
  nop                                            #  222   0x2fb59  1      
  nop                                            #  223   0x2fb5a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  224   0x2fb5b  5      
  movl $0x10030cc0, %edi                         #  225   0x2fb60  5      
  movl %eax, 0x1000115d(%rip)                    #  226   0x2fb65  6      
  nop                                            #  227   0x2fb6b  1      
  nop                                            #  228   0x2fb6c  1      
  callq .__cxa_guard_release                     #  229   0x2fb6d  5      
  jmpq .L_2fba0                                  #  230   0x2fb72  5      
  nop                                            #  231   0x2fb77  1      
  nop                                            #  232   0x2fb78  1      
.L_2fea0:                                        #        0x2fb79  0      
  movl %eax, %ebx                                #  233   0x2fb79  2      
  movl $0x10030cb0, %edi                         #  234   0x2fb7b  5      
  nop                                            #  235   0x2fb80  1      
  nop                                            #  236   0x2fb81  1      
  callq .__cxa_guard_abort                       #  237   0x2fb82  5      
  movl %ebx, %edi                                #  238   0x2fb87  2      
  nop                                            #  239   0x2fb89  1      
  nop                                            #  240   0x2fb8a  1      
  callq ._Unwind_Resume                          #  241   0x2fb8b  5      
.L_2fee0:                                        #        0x2fb90  0      
  movl %eax, %ebx                                #  242   0x2fb90  2      
  movl $0x10030cc0, %edi                         #  243   0x2fb92  5      
  nop                                            #  244   0x2fb97  1      
  nop                                            #  245   0x2fb98  1      
  callq .__cxa_guard_abort                       #  246   0x2fb99  5      
  movl %ebx, %edi                                #  247   0x2fb9e  2      
  nop                                            #  248   0x2fba0  1      
  nop                                            #  249   0x2fba1  1      
  callq ._Unwind_Resume                          #  250   0x2fba2  5      
  jmpq .L_2fee0                                  #  251   0x2fba7  5      
  nop                                            #  252   0x2fbac  1      
  nop                                            #  253   0x2fbad  1      
  jmpq .L_2fea0                                  #  254   0x2fbae  5      
  nop                                            #  255   0x2fbb3  1      
  nop                                            #  256   0x2fbb4  1      
.L_2ff60:                                        #        0x2fbb5  0      
  movl %eax, %ebx                                #  257   0x2fbb5  2      
  movl $0x10030cd0, %edi                         #  258   0x2fbb7  5      
  nop                                            #  259   0x2fbbc  1      
  nop                                            #  260   0x2fbbd  1      
  callq .__cxa_guard_abort                       #  261   0x2fbbe  5      
  movl %ebx, %edi                                #  262   0x2fbc3  2      
  nop                                            #  263   0x2fbc5  1      
  nop                                            #  264   0x2fbc6  1      
  callq ._Unwind_Resume                          #  265   0x2fbc7  5      
  jmpq .L_2ff60                                  #  266   0x2fbcc  5      
  nop                                            #  267   0x2fbd1  1      
  nop                                            #  268   0x2fbd2  1      
                                                                          
.size _ZNK2pp4View9IsVisibleEv, .-_ZNK2pp4View9IsVisibleEv

