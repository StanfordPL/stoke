  .text
  .globl _ZNK2pp3Var8AsStringEv
  .type _ZNK2pp3Var8AsStringEv, @function

#! file-offset 0x2a000
#! rip-offset  0x2a000
#! capacity    1888 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNK2pp3Var8AsStringEv:                                           #        0x2a000  0      
  movq %r12, -0x8(%rsp)                                            #  1     0x2a000  5      
  movl %esi, %r12d                                                 #  2     0x2a005  3      
  movq %rbx, -0x10(%rsp)                                           #  3     0x2a008  5      
  subl $0x58, %esp                                                 #  4     0x2a00d  3      
  addq %r15, %rsp                                                  #  5     0x2a010  3      
  movl %r12d, %r12d                                                #  6     0x2a013  3      
  cmpl $0x5, 0x8(%r15,%r12,1)                                      #  7     0x2a016  6      
  movl %edi, %ebx                                                  #  8     0x2a01c  2      
  xchgw %ax, %ax                                                   #  9     0x2a01e  3      
  je .L_2a080                                                      #  10    0x2a021  6      
  nop                                                              #  11    0x2a027  1      
  nop                                                              #  12    0x2a028  1      
.L_2a040:                                                          #        0x2a029  0      
  movl %ebx, %ebx                                                  #  13    0x2a029  2      
  movl $0x10031dac, (%r15,%rbx,1)                                  #  14    0x2a02b  8      
  nop                                                              #  15    0x2a033  1      
  nop                                                              #  16    0x2a034  1      
.L_2a060:                                                          #        0x2a035  0      
  movl %ebx, %eax                                                  #  17    0x2a035  2      
  movq 0x50(%rsp), %r12                                            #  18    0x2a037  5      
  movq 0x48(%rsp), %rbx                                            #  19    0x2a03c  5      
  addl $0x58, %esp                                                 #  20    0x2a041  3      
  addq %r15, %rsp                                                  #  21    0x2a044  3      
  popq %r11                                                        #  22    0x2a047  3      
  andl $0xffffffe0, %r11d                                          #  23    0x2a04a  7      
  addq %r15, %r11                                                  #  24    0x2a051  3      
  jmpq %r11                                                        #  25    0x2a054  3      
  xchgw %ax, %ax                                                   #  26    0x2a057  3      
.L_2a080:                                                          #        0x2a05a  0      
  cmpb $0x0, 0x10006c1f(%rip)                                      #  27    0x2a05a  7      
  je .L_2a220                                                      #  28    0x2a061  6      
  nop                                                              #  29    0x2a067  1      
  nop                                                              #  30    0x2a068  1      
.L_2a0a0:                                                          #        0x2a069  0      
  movl 0x10006c19(%rip), %eax                                      #  31    0x2a069  6      
  testq %rax, %rax                                                 #  32    0x2a06f  3      
  je .L_2a160                                                      #  33    0x2a072  6      
  cmpb $0x0, 0x10006c01(%rip)                                      #  34    0x2a078  7      
  je .L_2a3e0                                                      #  35    0x2a07f  6      
  nop                                                              #  36    0x2a085  1      
.L_2a0c0:                                                          #        0x2a086  0      
  movl %r12d, %r12d                                                #  37    0x2a086  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  38    0x2a089  5      
  movl %r12d, %r12d                                                #  39    0x2a08e  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  40    0x2a091  5      
  leal 0x38(%rsp), %edx                                            #  41    0x2a096  4      
  movl %eax, %eax                                                  #  42    0x2a09a  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  43    0x2a09c  5      
  movq %rsi, 0x28(%rsp)                                            #  44    0x2a0a1  5      
  movq %rdi, 0x20(%rsp)                                            #  45    0x2a0a6  5      
  nop                                                              #  46    0x2a0ab  1      
  nop                                                              #  47    0x2a0ac  1      
  andl $0xffffffe0, %eax                                           #  48    0x2a0ad  5      
  addq %r15, %rax                                                  #  49    0x2a0b2  3      
  callq %rax                                                       #  50    0x2a0b5  2      
  movl %eax, %esi                                                  #  51    0x2a0b7  2      
  nop                                                              #  52    0x2a0b9  1      
  nop                                                              #  53    0x2a0ba  1      
.L_2a120:                                                          #        0x2a0bb  0      
  movl 0x38(%rsp), %edx                                            #  54    0x2a0bb  4      
  leal 0x3f(%rsp), %ecx                                            #  55    0x2a0bf  4      
  movl %ebx, %edi                                                  #  56    0x2a0c3  2      
  xchgw %ax, %ax                                                   #  57    0x2a0c5  3      
  nop                                                              #  58    0x2a0c8  1      
  callq ._ZNSsC1EPKcjRKSaIcE                                       #  59    0x2a0c9  5      
  jmpq .L_2a060                                                    #  60    0x2a0ce  5      
  nop                                                              #  61    0x2a0d3  1      
  nop                                                              #  62    0x2a0d4  1      
.L_2a160:                                                          #        0x2a0d5  0      
  cmpb $0x0, 0x10006bb4(%rip)                                      #  63    0x2a0d5  7      
  je .L_2a340                                                      #  64    0x2a0dc  6      
  nop                                                              #  65    0x2a0e2  1      
  nop                                                              #  66    0x2a0e3  1      
.L_2a180:                                                          #        0x2a0e4  0      
  movl 0x10006bae(%rip), %eax                                      #  67    0x2a0e4  6      
  testq %rax, %rax                                                 #  68    0x2a0ea  3      
  jne .L_2a2c0                                                     #  69    0x2a0ed  6      
  cmpb $0x0, 0x10006ba6(%rip)                                      #  70    0x2a0f3  7      
  je .L_2a440                                                      #  71    0x2a0fa  6      
  nop                                                              #  72    0x2a100  1      
.L_2a1a0:                                                          #        0x2a101  0      
  movl 0x10006ba0(%rip), %r8d                                      #  73    0x2a101  7      
  testl %r8d, %r8d                                                 #  74    0x2a108  3      
  je .L_2a040                                                      #  75    0x2a10b  6      
  nop                                                              #  76    0x2a111  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  77    0x2a112  5      
  movl %r12d, %r12d                                                #  78    0x2a117  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  79    0x2a11a  5      
  movl %r12d, %r12d                                                #  80    0x2a11f  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  81    0x2a122  5      
  movl %eax, %eax                                                  #  82    0x2a127  2      
  movl %eax, %eax                                                  #  83    0x2a129  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  84    0x2a12b  5      
  leal 0x38(%rsp), %edx                                            #  85    0x2a130  4      
  nop                                                              #  86    0x2a134  1      
  movq %rsi, 0x8(%rsp)                                             #  87    0x2a135  5      
  movq %rdi, (%rsp)                                                #  88    0x2a13a  4      
  nop                                                              #  89    0x2a13e  1      
  andl $0xffffffe0, %eax                                           #  90    0x2a13f  5      
  addq %r15, %rax                                                  #  91    0x2a144  3      
  callq %rax                                                       #  92    0x2a147  2      
  movl %eax, %esi                                                  #  93    0x2a149  2      
  jmpq .L_2a120                                                    #  94    0x2a14b  5      
  nop                                                              #  95    0x2a150  1      
  nop                                                              #  96    0x2a151  1      
.L_2a220:                                                          #        0x2a152  0      
  movl $0x10030c80, %edi                                           #  97    0x2a152  5      
  nop                                                              #  98    0x2a157  1      
  nop                                                              #  99    0x2a158  1      
  callq .__cxa_guard_acquire                                       #  100   0x2a159  5      
  testl %eax, %eax                                                 #  101   0x2a15e  2      
  je .L_2a0a0                                                      #  102   0x2a160  6      
  nop                                                              #  103   0x2a166  1      
  nop                                                              #  104   0x2a167  1      
  callq ._ZN2pp6Module3GetEv                                       #  105   0x2a168  5      
  movl %eax, %edi                                                  #  106   0x2a16d  2      
  movl $0x10020516, %esi                                           #  107   0x2a16f  5      
  nop                                                              #  108   0x2a174  1      
  nop                                                              #  109   0x2a175  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  110   0x2a176  5      
  movl $0x10030c80, %edi                                           #  111   0x2a17b  5      
  movl %eax, 0x10006b02(%rip)                                      #  112   0x2a180  6      
  nop                                                              #  113   0x2a186  1      
  nop                                                              #  114   0x2a187  1      
  callq .__cxa_guard_release                                       #  115   0x2a188  5      
  jmpq .L_2a0a0                                                    #  116   0x2a18d  5      
  nop                                                              #  117   0x2a192  1      
  nop                                                              #  118   0x2a193  1      
.L_2a2c0:                                                          #        0x2a194  0      
  cmpb $0x0, 0x10006af5(%rip)                                      #  119   0x2a194  7      
  je .L_2a4e0                                                      #  120   0x2a19b  6      
  nop                                                              #  121   0x2a1a1  1      
  nop                                                              #  122   0x2a1a2  1      
.L_2a2e0:                                                          #        0x2a1a3  0      
  movl %r12d, %r12d                                                #  123   0x2a1a3  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  124   0x2a1a6  5      
  movl %r12d, %r12d                                                #  125   0x2a1ab  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  126   0x2a1ae  5      
  leal 0x38(%rsp), %edx                                            #  127   0x2a1b3  4      
  movl %eax, %eax                                                  #  128   0x2a1b7  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  129   0x2a1b9  5      
  movq %rsi, 0x18(%rsp)                                            #  130   0x2a1be  5      
  movq %rdi, 0x10(%rsp)                                            #  131   0x2a1c3  5      
  nop                                                              #  132   0x2a1c8  1      
  nop                                                              #  133   0x2a1c9  1      
  andl $0xffffffe0, %eax                                           #  134   0x2a1ca  5      
  addq %r15, %rax                                                  #  135   0x2a1cf  3      
  callq %rax                                                       #  136   0x2a1d2  2      
  movl %eax, %esi                                                  #  137   0x2a1d4  2      
  jmpq .L_2a120                                                    #  138   0x2a1d6  5      
  nop                                                              #  139   0x2a1db  1      
  nop                                                              #  140   0x2a1dc  1      
.L_2a340:                                                          #        0x2a1dd  0      
  movl $0x10030c90, %edi                                           #  141   0x2a1dd  5      
  nop                                                              #  142   0x2a1e2  1      
  nop                                                              #  143   0x2a1e3  1      
  callq .__cxa_guard_acquire                                       #  144   0x2a1e4  5      
  testl %eax, %eax                                                 #  145   0x2a1e9  2      
  je .L_2a180                                                      #  146   0x2a1eb  6      
  nop                                                              #  147   0x2a1f1  1      
  nop                                                              #  148   0x2a1f2  1      
  callq ._ZN2pp6Module3GetEv                                       #  149   0x2a1f3  5      
  movl %eax, %edi                                                  #  150   0x2a1f8  2      
  movl $0x10020522, %esi                                           #  151   0x2a1fa  5      
  nop                                                              #  152   0x2a1ff  1      
  nop                                                              #  153   0x2a200  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  154   0x2a201  5      
  movl $0x10030c90, %edi                                           #  155   0x2a206  5      
  movl %eax, 0x10006a87(%rip)                                      #  156   0x2a20b  6      
  nop                                                              #  157   0x2a211  1      
  nop                                                              #  158   0x2a212  1      
  callq .__cxa_guard_release                                       #  159   0x2a213  5      
  jmpq .L_2a180                                                    #  160   0x2a218  5      
  nop                                                              #  161   0x2a21d  1      
  nop                                                              #  162   0x2a21e  1      
.L_2a3e0:                                                          #        0x2a21f  0      
  movl $0x10030c80, %edi                                           #  163   0x2a21f  5      
  nop                                                              #  164   0x2a224  1      
  nop                                                              #  165   0x2a225  1      
  callq .__cxa_guard_acquire                                       #  166   0x2a226  5      
  testl %eax, %eax                                                 #  167   0x2a22b  2      
  jne .L_2a540                                                     #  168   0x2a22d  6      
  nop                                                              #  169   0x2a233  1      
  nop                                                              #  170   0x2a234  1      
.L_2a420:                                                          #        0x2a235  0      
  movl 0x10006a4d(%rip), %eax                                      #  171   0x2a235  6      
  jmpq .L_2a0c0                                                    #  172   0x2a23b  5      
  nop                                                              #  173   0x2a240  1      
  nop                                                              #  174   0x2a241  1      
.L_2a440:                                                          #        0x2a242  0      
  movl $0x10030ca0, %edi                                           #  175   0x2a242  5      
  nop                                                              #  176   0x2a247  1      
  nop                                                              #  177   0x2a248  1      
  callq .__cxa_guard_acquire                                       #  178   0x2a249  5      
  testl %eax, %eax                                                 #  179   0x2a24e  2      
  je .L_2a1a0                                                      #  180   0x2a250  6      
  nop                                                              #  181   0x2a256  1      
  nop                                                              #  182   0x2a257  1      
  callq ._ZN2pp6Module3GetEv                                       #  183   0x2a258  5      
  movl %eax, %edi                                                  #  184   0x2a25d  2      
  movl $0x1002050a, %esi                                           #  185   0x2a25f  5      
  nop                                                              #  186   0x2a264  1      
  nop                                                              #  187   0x2a265  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  188   0x2a266  5      
  movl $0x10030ca0, %edi                                           #  189   0x2a26b  5      
  movl %eax, 0x10006a32(%rip)                                      #  190   0x2a270  6      
  nop                                                              #  191   0x2a276  1      
  nop                                                              #  192   0x2a277  1      
  callq .__cxa_guard_release                                       #  193   0x2a278  5      
  jmpq .L_2a1a0                                                    #  194   0x2a27d  5      
  nop                                                              #  195   0x2a282  1      
  nop                                                              #  196   0x2a283  1      
.L_2a4e0:                                                          #        0x2a284  0      
  movl $0x10030c90, %edi                                           #  197   0x2a284  5      
  nop                                                              #  198   0x2a289  1      
  nop                                                              #  199   0x2a28a  1      
  callq .__cxa_guard_acquire                                       #  200   0x2a28b  5      
  testl %eax, %eax                                                 #  201   0x2a290  2      
  jne .L_2a5c0                                                     #  202   0x2a292  6      
  nop                                                              #  203   0x2a298  1      
  nop                                                              #  204   0x2a299  1      
.L_2a520:                                                          #        0x2a29a  0      
  movl 0x100069f8(%rip), %eax                                      #  205   0x2a29a  6      
  jmpq .L_2a2e0                                                    #  206   0x2a2a0  5      
  nop                                                              #  207   0x2a2a5  1      
  nop                                                              #  208   0x2a2a6  1      
.L_2a540:                                                          #        0x2a2a7  0      
  nop                                                              #  209   0x2a2a7  1      
  nop                                                              #  210   0x2a2a8  1      
  callq ._ZN2pp6Module3GetEv                                       #  211   0x2a2a9  5      
  movl %eax, %edi                                                  #  212   0x2a2ae  2      
  movl $0x10020516, %esi                                           #  213   0x2a2b0  5      
  nop                                                              #  214   0x2a2b5  1      
  nop                                                              #  215   0x2a2b6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  216   0x2a2b7  5      
  movl $0x10030c80, %edi                                           #  217   0x2a2bc  5      
  movl %eax, 0x100069c1(%rip)                                      #  218   0x2a2c1  6      
  nop                                                              #  219   0x2a2c7  1      
  nop                                                              #  220   0x2a2c8  1      
  callq .__cxa_guard_release                                       #  221   0x2a2c9  5      
  jmpq .L_2a420                                                    #  222   0x2a2ce  5      
  nop                                                              #  223   0x2a2d3  1      
  nop                                                              #  224   0x2a2d4  1      
.L_2a5c0:                                                          #        0x2a2d5  0      
  nop                                                              #  225   0x2a2d5  1      
  nop                                                              #  226   0x2a2d6  1      
  callq ._ZN2pp6Module3GetEv                                       #  227   0x2a2d7  5      
  movl %eax, %edi                                                  #  228   0x2a2dc  2      
  movl $0x10020522, %esi                                           #  229   0x2a2de  5      
  nop                                                              #  230   0x2a2e3  1      
  nop                                                              #  231   0x2a2e4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  232   0x2a2e5  5      
  movl $0x10030c90, %edi                                           #  233   0x2a2ea  5      
  movl %eax, 0x100069a3(%rip)                                      #  234   0x2a2ef  6      
  nop                                                              #  235   0x2a2f5  1      
  nop                                                              #  236   0x2a2f6  1      
  callq .__cxa_guard_release                                       #  237   0x2a2f7  5      
  jmpq .L_2a520                                                    #  238   0x2a2fc  5      
  nop                                                              #  239   0x2a301  1      
  nop                                                              #  240   0x2a302  1      
.L_2a640:                                                          #        0x2a303  0      
  movl %eax, %ebx                                                  #  241   0x2a303  2      
  movl $0x10030c80, %edi                                           #  242   0x2a305  5      
  nop                                                              #  243   0x2a30a  1      
  nop                                                              #  244   0x2a30b  1      
  callq .__cxa_guard_abort                                         #  245   0x2a30c  5      
  movl %ebx, %edi                                                  #  246   0x2a311  2      
  nop                                                              #  247   0x2a313  1      
  nop                                                              #  248   0x2a314  1      
  callq ._Unwind_Resume                                            #  249   0x2a315  5      
.L_2a680:                                                          #        0x2a31a  0      
  movl %eax, %ebx                                                  #  250   0x2a31a  2      
  movl $0x10030c90, %edi                                           #  251   0x2a31c  5      
  nop                                                              #  252   0x2a321  1      
  nop                                                              #  253   0x2a322  1      
  callq .__cxa_guard_abort                                         #  254   0x2a323  5      
  movl %ebx, %edi                                                  #  255   0x2a328  2      
  nop                                                              #  256   0x2a32a  1      
  nop                                                              #  257   0x2a32b  1      
  callq ._Unwind_Resume                                            #  258   0x2a32c  5      
  movl %eax, %edi                                                  #  259   0x2a331  2      
  nop                                                              #  260   0x2a333  1      
  nop                                                              #  261   0x2a334  1      
  callq ._Unwind_Resume                                            #  262   0x2a335  5      
  jmpq .L_2a640                                                    #  263   0x2a33a  5      
  nop                                                              #  264   0x2a33f  1      
  nop                                                              #  265   0x2a340  1      
  jmpq .L_2a680                                                    #  266   0x2a341  5      
  nop                                                              #  267   0x2a346  1      
  nop                                                              #  268   0x2a347  1      
  movl %eax, %ebx                                                  #  269   0x2a348  2      
  movl $0x10030ca0, %edi                                           #  270   0x2a34a  5      
  nop                                                              #  271   0x2a34f  1      
  nop                                                              #  272   0x2a350  1      
  callq .__cxa_guard_abort                                         #  273   0x2a351  5      
  movl %ebx, %edi                                                  #  274   0x2a356  2      
  nop                                                              #  275   0x2a358  1      
  nop                                                              #  276   0x2a359  1      
  callq ._Unwind_Resume                                            #  277   0x2a35a  5      
                                                                                            
.size _ZNK2pp3Var8AsStringEv, .-_ZNK2pp3Var8AsStringEv

