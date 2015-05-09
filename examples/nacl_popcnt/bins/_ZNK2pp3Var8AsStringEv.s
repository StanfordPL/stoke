  .text
  .globl _ZNK2pp3Var8AsStringEv
  .type _ZNK2pp3Var8AsStringEv, @function

#! file-offset 0x29f60
#! rip-offset  0x29f60
#! capacity    1888 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNK2pp3Var8AsStringEv:                                           #        0x29f60  0      
  movq %r12, -0x8(%rsp)                                            #  1     0x29f60  5      
  movl %esi, %r12d                                                 #  2     0x29f65  3      
  movq %rbx, -0x10(%rsp)                                           #  3     0x29f68  5      
  subl $0x58, %esp                                                 #  4     0x29f6d  3      
  addq %r15, %rsp                                                  #  5     0x29f70  3      
  movl %r12d, %r12d                                                #  6     0x29f73  3      
  cmpl $0x5, 0x8(%r15,%r12,1)                                      #  7     0x29f76  6      
  movl %edi, %ebx                                                  #  8     0x29f7c  2      
  xchgw %ax, %ax                                                   #  9     0x29f7e  3      
  je .L_29fe0                                                      #  10    0x29f81  6      
  nop                                                              #  11    0x29f87  1      
  nop                                                              #  12    0x29f88  1      
.L_29fa0:                                                          #        0x29f89  0      
  movl %ebx, %ebx                                                  #  13    0x29f89  2      
  movl $0x10031dac, (%r15,%rbx,1)                                  #  14    0x29f8b  8      
  nop                                                              #  15    0x29f93  1      
  nop                                                              #  16    0x29f94  1      
.L_29fc0:                                                          #        0x29f95  0      
  movl %ebx, %eax                                                  #  17    0x29f95  2      
  movq 0x50(%rsp), %r12                                            #  18    0x29f97  5      
  movq 0x48(%rsp), %rbx                                            #  19    0x29f9c  5      
  addl $0x58, %esp                                                 #  20    0x29fa1  3      
  addq %r15, %rsp                                                  #  21    0x29fa4  3      
  popq %r11                                                        #  22    0x29fa7  3      
  andl $0xffffffe0, %r11d                                          #  23    0x29faa  7      
  addq %r15, %r11                                                  #  24    0x29fb1  3      
  jmpq %r11                                                        #  25    0x29fb4  3      
  xchgw %ax, %ax                                                   #  26    0x29fb7  3      
.L_29fe0:                                                          #        0x29fba  0      
  cmpb $0x0, 0x10006cbf(%rip)                                      #  27    0x29fba  7      
  je .L_2a180                                                      #  28    0x29fc1  6      
  nop                                                              #  29    0x29fc7  1      
  nop                                                              #  30    0x29fc8  1      
.L_2a000:                                                          #        0x29fc9  0      
  movl 0x10006cb9(%rip), %eax                                      #  31    0x29fc9  6      
  testq %rax, %rax                                                 #  32    0x29fcf  3      
  je .L_2a0c0                                                      #  33    0x29fd2  6      
  cmpb $0x0, 0x10006ca1(%rip)                                      #  34    0x29fd8  7      
  je .L_2a340                                                      #  35    0x29fdf  6      
  nop                                                              #  36    0x29fe5  1      
.L_2a020:                                                          #        0x29fe6  0      
  movl %r12d, %r12d                                                #  37    0x29fe6  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  38    0x29fe9  5      
  movl %r12d, %r12d                                                #  39    0x29fee  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  40    0x29ff1  5      
  leal 0x38(%rsp), %edx                                            #  41    0x29ff6  4      
  movl %eax, %eax                                                  #  42    0x29ffa  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  43    0x29ffc  5      
  movq %rsi, 0x28(%rsp)                                            #  44    0x2a001  5      
  movq %rdi, 0x20(%rsp)                                            #  45    0x2a006  5      
  nop                                                              #  46    0x2a00b  1      
  nop                                                              #  47    0x2a00c  1      
  andl $0xffffffe0, %eax                                           #  48    0x2a00d  5      
  addq %r15, %rax                                                  #  49    0x2a012  3      
  callq %rax                                                       #  50    0x2a015  2      
  movl %eax, %esi                                                  #  51    0x2a017  2      
  nop                                                              #  52    0x2a019  1      
  nop                                                              #  53    0x2a01a  1      
.L_2a080:                                                          #        0x2a01b  0      
  movl 0x38(%rsp), %edx                                            #  54    0x2a01b  4      
  leal 0x3f(%rsp), %ecx                                            #  55    0x2a01f  4      
  movl %ebx, %edi                                                  #  56    0x2a023  2      
  xchgw %ax, %ax                                                   #  57    0x2a025  3      
  nop                                                              #  58    0x2a028  1      
  callq ._ZNSsC1EPKcjRKSaIcE                                       #  59    0x2a029  5      
  jmpq .L_29fc0                                                    #  60    0x2a02e  5      
  nop                                                              #  61    0x2a033  1      
  nop                                                              #  62    0x2a034  1      
.L_2a0c0:                                                          #        0x2a035  0      
  cmpb $0x0, 0x10006c54(%rip)                                      #  63    0x2a035  7      
  je .L_2a2a0                                                      #  64    0x2a03c  6      
  nop                                                              #  65    0x2a042  1      
  nop                                                              #  66    0x2a043  1      
.L_2a0e0:                                                          #        0x2a044  0      
  movl 0x10006c4e(%rip), %eax                                      #  67    0x2a044  6      
  testq %rax, %rax                                                 #  68    0x2a04a  3      
  jne .L_2a220                                                     #  69    0x2a04d  6      
  cmpb $0x0, 0x10006c46(%rip)                                      #  70    0x2a053  7      
  je .L_2a3a0                                                      #  71    0x2a05a  6      
  nop                                                              #  72    0x2a060  1      
.L_2a100:                                                          #        0x2a061  0      
  movl 0x10006c40(%rip), %r8d                                      #  73    0x2a061  7      
  testl %r8d, %r8d                                                 #  74    0x2a068  3      
  je .L_29fa0                                                      #  75    0x2a06b  6      
  nop                                                              #  76    0x2a071  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  77    0x2a072  5      
  movl %r12d, %r12d                                                #  78    0x2a077  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  79    0x2a07a  5      
  movl %r12d, %r12d                                                #  80    0x2a07f  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  81    0x2a082  5      
  movl %eax, %eax                                                  #  82    0x2a087  2      
  movl %eax, %eax                                                  #  83    0x2a089  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  84    0x2a08b  5      
  leal 0x38(%rsp), %edx                                            #  85    0x2a090  4      
  nop                                                              #  86    0x2a094  1      
  movq %rsi, 0x8(%rsp)                                             #  87    0x2a095  5      
  movq %rdi, (%rsp)                                                #  88    0x2a09a  4      
  nop                                                              #  89    0x2a09e  1      
  andl $0xffffffe0, %eax                                           #  90    0x2a09f  5      
  addq %r15, %rax                                                  #  91    0x2a0a4  3      
  callq %rax                                                       #  92    0x2a0a7  2      
  movl %eax, %esi                                                  #  93    0x2a0a9  2      
  jmpq .L_2a080                                                    #  94    0x2a0ab  5      
  nop                                                              #  95    0x2a0b0  1      
  nop                                                              #  96    0x2a0b1  1      
.L_2a180:                                                          #        0x2a0b2  0      
  movl $0x10030c80, %edi                                           #  97    0x2a0b2  5      
  nop                                                              #  98    0x2a0b7  1      
  nop                                                              #  99    0x2a0b8  1      
  callq .__cxa_guard_acquire                                       #  100   0x2a0b9  5      
  testl %eax, %eax                                                 #  101   0x2a0be  2      
  je .L_2a000                                                      #  102   0x2a0c0  6      
  nop                                                              #  103   0x2a0c6  1      
  nop                                                              #  104   0x2a0c7  1      
  callq ._ZN2pp6Module3GetEv                                       #  105   0x2a0c8  5      
  movl %eax, %edi                                                  #  106   0x2a0cd  2      
  movl $0x10020516, %esi                                           #  107   0x2a0cf  5      
  nop                                                              #  108   0x2a0d4  1      
  nop                                                              #  109   0x2a0d5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  110   0x2a0d6  5      
  movl $0x10030c80, %edi                                           #  111   0x2a0db  5      
  movl %eax, 0x10006ba2(%rip)                                      #  112   0x2a0e0  6      
  nop                                                              #  113   0x2a0e6  1      
  nop                                                              #  114   0x2a0e7  1      
  callq .__cxa_guard_release                                       #  115   0x2a0e8  5      
  jmpq .L_2a000                                                    #  116   0x2a0ed  5      
  nop                                                              #  117   0x2a0f2  1      
  nop                                                              #  118   0x2a0f3  1      
.L_2a220:                                                          #        0x2a0f4  0      
  cmpb $0x0, 0x10006b95(%rip)                                      #  119   0x2a0f4  7      
  je .L_2a440                                                      #  120   0x2a0fb  6      
  nop                                                              #  121   0x2a101  1      
  nop                                                              #  122   0x2a102  1      
.L_2a240:                                                          #        0x2a103  0      
  movl %r12d, %r12d                                                #  123   0x2a103  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  124   0x2a106  5      
  movl %r12d, %r12d                                                #  125   0x2a10b  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  126   0x2a10e  5      
  leal 0x38(%rsp), %edx                                            #  127   0x2a113  4      
  movl %eax, %eax                                                  #  128   0x2a117  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  129   0x2a119  5      
  movq %rsi, 0x18(%rsp)                                            #  130   0x2a11e  5      
  movq %rdi, 0x10(%rsp)                                            #  131   0x2a123  5      
  nop                                                              #  132   0x2a128  1      
  nop                                                              #  133   0x2a129  1      
  andl $0xffffffe0, %eax                                           #  134   0x2a12a  5      
  addq %r15, %rax                                                  #  135   0x2a12f  3      
  callq %rax                                                       #  136   0x2a132  2      
  movl %eax, %esi                                                  #  137   0x2a134  2      
  jmpq .L_2a080                                                    #  138   0x2a136  5      
  nop                                                              #  139   0x2a13b  1      
  nop                                                              #  140   0x2a13c  1      
.L_2a2a0:                                                          #        0x2a13d  0      
  movl $0x10030c90, %edi                                           #  141   0x2a13d  5      
  nop                                                              #  142   0x2a142  1      
  nop                                                              #  143   0x2a143  1      
  callq .__cxa_guard_acquire                                       #  144   0x2a144  5      
  testl %eax, %eax                                                 #  145   0x2a149  2      
  je .L_2a0e0                                                      #  146   0x2a14b  6      
  nop                                                              #  147   0x2a151  1      
  nop                                                              #  148   0x2a152  1      
  callq ._ZN2pp6Module3GetEv                                       #  149   0x2a153  5      
  movl %eax, %edi                                                  #  150   0x2a158  2      
  movl $0x10020522, %esi                                           #  151   0x2a15a  5      
  nop                                                              #  152   0x2a15f  1      
  nop                                                              #  153   0x2a160  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  154   0x2a161  5      
  movl $0x10030c90, %edi                                           #  155   0x2a166  5      
  movl %eax, 0x10006b27(%rip)                                      #  156   0x2a16b  6      
  nop                                                              #  157   0x2a171  1      
  nop                                                              #  158   0x2a172  1      
  callq .__cxa_guard_release                                       #  159   0x2a173  5      
  jmpq .L_2a0e0                                                    #  160   0x2a178  5      
  nop                                                              #  161   0x2a17d  1      
  nop                                                              #  162   0x2a17e  1      
.L_2a340:                                                          #        0x2a17f  0      
  movl $0x10030c80, %edi                                           #  163   0x2a17f  5      
  nop                                                              #  164   0x2a184  1      
  nop                                                              #  165   0x2a185  1      
  callq .__cxa_guard_acquire                                       #  166   0x2a186  5      
  testl %eax, %eax                                                 #  167   0x2a18b  2      
  jne .L_2a4a0                                                     #  168   0x2a18d  6      
  nop                                                              #  169   0x2a193  1      
  nop                                                              #  170   0x2a194  1      
.L_2a380:                                                          #        0x2a195  0      
  movl 0x10006aed(%rip), %eax                                      #  171   0x2a195  6      
  jmpq .L_2a020                                                    #  172   0x2a19b  5      
  nop                                                              #  173   0x2a1a0  1      
  nop                                                              #  174   0x2a1a1  1      
.L_2a3a0:                                                          #        0x2a1a2  0      
  movl $0x10030ca0, %edi                                           #  175   0x2a1a2  5      
  nop                                                              #  176   0x2a1a7  1      
  nop                                                              #  177   0x2a1a8  1      
  callq .__cxa_guard_acquire                                       #  178   0x2a1a9  5      
  testl %eax, %eax                                                 #  179   0x2a1ae  2      
  je .L_2a100                                                      #  180   0x2a1b0  6      
  nop                                                              #  181   0x2a1b6  1      
  nop                                                              #  182   0x2a1b7  1      
  callq ._ZN2pp6Module3GetEv                                       #  183   0x2a1b8  5      
  movl %eax, %edi                                                  #  184   0x2a1bd  2      
  movl $0x1002050a, %esi                                           #  185   0x2a1bf  5      
  nop                                                              #  186   0x2a1c4  1      
  nop                                                              #  187   0x2a1c5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  188   0x2a1c6  5      
  movl $0x10030ca0, %edi                                           #  189   0x2a1cb  5      
  movl %eax, 0x10006ad2(%rip)                                      #  190   0x2a1d0  6      
  nop                                                              #  191   0x2a1d6  1      
  nop                                                              #  192   0x2a1d7  1      
  callq .__cxa_guard_release                                       #  193   0x2a1d8  5      
  jmpq .L_2a100                                                    #  194   0x2a1dd  5      
  nop                                                              #  195   0x2a1e2  1      
  nop                                                              #  196   0x2a1e3  1      
.L_2a440:                                                          #        0x2a1e4  0      
  movl $0x10030c90, %edi                                           #  197   0x2a1e4  5      
  nop                                                              #  198   0x2a1e9  1      
  nop                                                              #  199   0x2a1ea  1      
  callq .__cxa_guard_acquire                                       #  200   0x2a1eb  5      
  testl %eax, %eax                                                 #  201   0x2a1f0  2      
  jne .L_2a520                                                     #  202   0x2a1f2  6      
  nop                                                              #  203   0x2a1f8  1      
  nop                                                              #  204   0x2a1f9  1      
.L_2a480:                                                          #        0x2a1fa  0      
  movl 0x10006a98(%rip), %eax                                      #  205   0x2a1fa  6      
  jmpq .L_2a240                                                    #  206   0x2a200  5      
  nop                                                              #  207   0x2a205  1      
  nop                                                              #  208   0x2a206  1      
.L_2a4a0:                                                          #        0x2a207  0      
  nop                                                              #  209   0x2a207  1      
  nop                                                              #  210   0x2a208  1      
  callq ._ZN2pp6Module3GetEv                                       #  211   0x2a209  5      
  movl %eax, %edi                                                  #  212   0x2a20e  2      
  movl $0x10020516, %esi                                           #  213   0x2a210  5      
  nop                                                              #  214   0x2a215  1      
  nop                                                              #  215   0x2a216  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  216   0x2a217  5      
  movl $0x10030c80, %edi                                           #  217   0x2a21c  5      
  movl %eax, 0x10006a61(%rip)                                      #  218   0x2a221  6      
  nop                                                              #  219   0x2a227  1      
  nop                                                              #  220   0x2a228  1      
  callq .__cxa_guard_release                                       #  221   0x2a229  5      
  jmpq .L_2a380                                                    #  222   0x2a22e  5      
  nop                                                              #  223   0x2a233  1      
  nop                                                              #  224   0x2a234  1      
.L_2a520:                                                          #        0x2a235  0      
  nop                                                              #  225   0x2a235  1      
  nop                                                              #  226   0x2a236  1      
  callq ._ZN2pp6Module3GetEv                                       #  227   0x2a237  5      
  movl %eax, %edi                                                  #  228   0x2a23c  2      
  movl $0x10020522, %esi                                           #  229   0x2a23e  5      
  nop                                                              #  230   0x2a243  1      
  nop                                                              #  231   0x2a244  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  232   0x2a245  5      
  movl $0x10030c90, %edi                                           #  233   0x2a24a  5      
  movl %eax, 0x10006a43(%rip)                                      #  234   0x2a24f  6      
  nop                                                              #  235   0x2a255  1      
  nop                                                              #  236   0x2a256  1      
  callq .__cxa_guard_release                                       #  237   0x2a257  5      
  jmpq .L_2a480                                                    #  238   0x2a25c  5      
  nop                                                              #  239   0x2a261  1      
  nop                                                              #  240   0x2a262  1      
.L_2a5a0:                                                          #        0x2a263  0      
  movl %eax, %ebx                                                  #  241   0x2a263  2      
  movl $0x10030c80, %edi                                           #  242   0x2a265  5      
  nop                                                              #  243   0x2a26a  1      
  nop                                                              #  244   0x2a26b  1      
  callq .__cxa_guard_abort                                         #  245   0x2a26c  5      
  movl %ebx, %edi                                                  #  246   0x2a271  2      
  nop                                                              #  247   0x2a273  1      
  nop                                                              #  248   0x2a274  1      
  callq ._Unwind_Resume                                            #  249   0x2a275  5      
.L_2a5e0:                                                          #        0x2a27a  0      
  movl %eax, %ebx                                                  #  250   0x2a27a  2      
  movl $0x10030c90, %edi                                           #  251   0x2a27c  5      
  nop                                                              #  252   0x2a281  1      
  nop                                                              #  253   0x2a282  1      
  callq .__cxa_guard_abort                                         #  254   0x2a283  5      
  movl %ebx, %edi                                                  #  255   0x2a288  2      
  nop                                                              #  256   0x2a28a  1      
  nop                                                              #  257   0x2a28b  1      
  callq ._Unwind_Resume                                            #  258   0x2a28c  5      
  movl %eax, %edi                                                  #  259   0x2a291  2      
  nop                                                              #  260   0x2a293  1      
  nop                                                              #  261   0x2a294  1      
  callq ._Unwind_Resume                                            #  262   0x2a295  5      
  jmpq .L_2a5a0                                                    #  263   0x2a29a  5      
  nop                                                              #  264   0x2a29f  1      
  nop                                                              #  265   0x2a2a0  1      
  jmpq .L_2a5e0                                                    #  266   0x2a2a1  5      
  nop                                                              #  267   0x2a2a6  1      
  nop                                                              #  268   0x2a2a7  1      
  movl %eax, %ebx                                                  #  269   0x2a2a8  2      
  movl $0x10030ca0, %edi                                           #  270   0x2a2aa  5      
  nop                                                              #  271   0x2a2af  1      
  nop                                                              #  272   0x2a2b0  1      
  callq .__cxa_guard_abort                                         #  273   0x2a2b1  5      
  movl %ebx, %edi                                                  #  274   0x2a2b6  2      
  nop                                                              #  275   0x2a2b8  1      
  nop                                                              #  276   0x2a2b9  1      
  callq ._Unwind_Resume                                            #  277   0x2a2ba  5      
                                                                                            
.size _ZNK2pp3Var8AsStringEv, .-_ZNK2pp3Var8AsStringEv

