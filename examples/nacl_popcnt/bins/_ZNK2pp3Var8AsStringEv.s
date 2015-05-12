  .text
  .globl _ZNK2pp3Var8AsStringEv
  .type _ZNK2pp3Var8AsStringEv, @function

#! file-offset 0x29f80
#! rip-offset  0x29f80
#! capacity    1888 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNK2pp3Var8AsStringEv:                                           #        0x29f80  0      
  movq %r12, -0x8(%rsp)                                            #  1     0x29f80  5      
  movl %esi, %r12d                                                 #  2     0x29f85  3      
  movq %rbx, -0x10(%rsp)                                           #  3     0x29f88  5      
  subl $0x58, %esp                                                 #  4     0x29f8d  3      
  addq %r15, %rsp                                                  #  5     0x29f90  3      
  movl %r12d, %r12d                                                #  6     0x29f93  3      
  cmpl $0x5, 0x8(%r15,%r12,1)                                      #  7     0x29f96  6      
  movl %edi, %ebx                                                  #  8     0x29f9c  2      
  xchgw %ax, %ax                                                   #  9     0x29f9e  3      
  je .L_2a000                                                      #  10    0x29fa1  6      
  nop                                                              #  11    0x29fa7  1      
  nop                                                              #  12    0x29fa8  1      
.L_29fc0:                                                          #        0x29fa9  0      
  movl %ebx, %ebx                                                  #  13    0x29fa9  2      
  movl $0x10031dac, (%r15,%rbx,1)                                  #  14    0x29fab  8      
  nop                                                              #  15    0x29fb3  1      
  nop                                                              #  16    0x29fb4  1      
.L_29fe0:                                                          #        0x29fb5  0      
  movl %ebx, %eax                                                  #  17    0x29fb5  2      
  movq 0x50(%rsp), %r12                                            #  18    0x29fb7  5      
  movq 0x48(%rsp), %rbx                                            #  19    0x29fbc  5      
  addl $0x58, %esp                                                 #  20    0x29fc1  3      
  addq %r15, %rsp                                                  #  21    0x29fc4  3      
  popq %r11                                                        #  22    0x29fc7  3      
  andl $0xffffffe0, %r11d                                          #  23    0x29fca  7      
  addq %r15, %r11                                                  #  24    0x29fd1  3      
  jmpq %r11                                                        #  25    0x29fd4  3      
  xchgw %ax, %ax                                                   #  26    0x29fd7  3      
.L_2a000:                                                          #        0x29fda  0      
  cmpb $0x0, 0x10006c9f(%rip)                                      #  27    0x29fda  7      
  je .L_2a1a0                                                      #  28    0x29fe1  6      
  nop                                                              #  29    0x29fe7  1      
  nop                                                              #  30    0x29fe8  1      
.L_2a020:                                                          #        0x29fe9  0      
  movl 0x10006c99(%rip), %eax                                      #  31    0x29fe9  6      
  testq %rax, %rax                                                 #  32    0x29fef  3      
  je .L_2a0e0                                                      #  33    0x29ff2  6      
  cmpb $0x0, 0x10006c81(%rip)                                      #  34    0x29ff8  7      
  je .L_2a360                                                      #  35    0x29fff  6      
  nop                                                              #  36    0x2a005  1      
.L_2a040:                                                          #        0x2a006  0      
  movl %r12d, %r12d                                                #  37    0x2a006  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  38    0x2a009  5      
  movl %r12d, %r12d                                                #  39    0x2a00e  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  40    0x2a011  5      
  leal 0x38(%rsp), %edx                                            #  41    0x2a016  4      
  movl %eax, %eax                                                  #  42    0x2a01a  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  43    0x2a01c  5      
  movq %rsi, 0x28(%rsp)                                            #  44    0x2a021  5      
  movq %rdi, 0x20(%rsp)                                            #  45    0x2a026  5      
  nop                                                              #  46    0x2a02b  1      
  nop                                                              #  47    0x2a02c  1      
  andl $0xffffffe0, %eax                                           #  48    0x2a02d  5      
  addq %r15, %rax                                                  #  49    0x2a032  3      
  callq %rax                                                       #  50    0x2a035  2      
  movl %eax, %esi                                                  #  51    0x2a037  2      
  nop                                                              #  52    0x2a039  1      
  nop                                                              #  53    0x2a03a  1      
.L_2a0a0:                                                          #        0x2a03b  0      
  movl 0x38(%rsp), %edx                                            #  54    0x2a03b  4      
  leal 0x3f(%rsp), %ecx                                            #  55    0x2a03f  4      
  movl %ebx, %edi                                                  #  56    0x2a043  2      
  xchgw %ax, %ax                                                   #  57    0x2a045  3      
  nop                                                              #  58    0x2a048  1      
  callq ._ZNSsC1EPKcjRKSaIcE                                       #  59    0x2a049  5      
  jmpq .L_29fe0                                                    #  60    0x2a04e  5      
  nop                                                              #  61    0x2a053  1      
  nop                                                              #  62    0x2a054  1      
.L_2a0e0:                                                          #        0x2a055  0      
  cmpb $0x0, 0x10006c34(%rip)                                      #  63    0x2a055  7      
  je .L_2a2c0                                                      #  64    0x2a05c  6      
  nop                                                              #  65    0x2a062  1      
  nop                                                              #  66    0x2a063  1      
.L_2a100:                                                          #        0x2a064  0      
  movl 0x10006c2e(%rip), %eax                                      #  67    0x2a064  6      
  testq %rax, %rax                                                 #  68    0x2a06a  3      
  jne .L_2a240                                                     #  69    0x2a06d  6      
  cmpb $0x0, 0x10006c26(%rip)                                      #  70    0x2a073  7      
  je .L_2a3c0                                                      #  71    0x2a07a  6      
  nop                                                              #  72    0x2a080  1      
.L_2a120:                                                          #        0x2a081  0      
  movl 0x10006c20(%rip), %r8d                                      #  73    0x2a081  7      
  testl %r8d, %r8d                                                 #  74    0x2a088  3      
  je .L_29fc0                                                      #  75    0x2a08b  6      
  nop                                                              #  76    0x2a091  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  77    0x2a092  5      
  movl %r12d, %r12d                                                #  78    0x2a097  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  79    0x2a09a  5      
  movl %r12d, %r12d                                                #  80    0x2a09f  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  81    0x2a0a2  5      
  movl %eax, %eax                                                  #  82    0x2a0a7  2      
  movl %eax, %eax                                                  #  83    0x2a0a9  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  84    0x2a0ab  5      
  leal 0x38(%rsp), %edx                                            #  85    0x2a0b0  4      
  nop                                                              #  86    0x2a0b4  1      
  movq %rsi, 0x8(%rsp)                                             #  87    0x2a0b5  5      
  movq %rdi, (%rsp)                                                #  88    0x2a0ba  4      
  nop                                                              #  89    0x2a0be  1      
  andl $0xffffffe0, %eax                                           #  90    0x2a0bf  5      
  addq %r15, %rax                                                  #  91    0x2a0c4  3      
  callq %rax                                                       #  92    0x2a0c7  2      
  movl %eax, %esi                                                  #  93    0x2a0c9  2      
  jmpq .L_2a0a0                                                    #  94    0x2a0cb  5      
  nop                                                              #  95    0x2a0d0  1      
  nop                                                              #  96    0x2a0d1  1      
.L_2a1a0:                                                          #        0x2a0d2  0      
  movl $0x10030c80, %edi                                           #  97    0x2a0d2  5      
  nop                                                              #  98    0x2a0d7  1      
  nop                                                              #  99    0x2a0d8  1      
  callq .__cxa_guard_acquire                                       #  100   0x2a0d9  5      
  testl %eax, %eax                                                 #  101   0x2a0de  2      
  je .L_2a020                                                      #  102   0x2a0e0  6      
  nop                                                              #  103   0x2a0e6  1      
  nop                                                              #  104   0x2a0e7  1      
  callq ._ZN2pp6Module3GetEv                                       #  105   0x2a0e8  5      
  movl %eax, %edi                                                  #  106   0x2a0ed  2      
  movl $0x10020516, %esi                                           #  107   0x2a0ef  5      
  nop                                                              #  108   0x2a0f4  1      
  nop                                                              #  109   0x2a0f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  110   0x2a0f6  5      
  movl $0x10030c80, %edi                                           #  111   0x2a0fb  5      
  movl %eax, 0x10006b82(%rip)                                      #  112   0x2a100  6      
  nop                                                              #  113   0x2a106  1      
  nop                                                              #  114   0x2a107  1      
  callq .__cxa_guard_release                                       #  115   0x2a108  5      
  jmpq .L_2a020                                                    #  116   0x2a10d  5      
  nop                                                              #  117   0x2a112  1      
  nop                                                              #  118   0x2a113  1      
.L_2a240:                                                          #        0x2a114  0      
  cmpb $0x0, 0x10006b75(%rip)                                      #  119   0x2a114  7      
  je .L_2a460                                                      #  120   0x2a11b  6      
  nop                                                              #  121   0x2a121  1      
  nop                                                              #  122   0x2a122  1      
.L_2a260:                                                          #        0x2a123  0      
  movl %r12d, %r12d                                                #  123   0x2a123  3      
  movq 0x10(%r15,%r12,1), %rsi                                     #  124   0x2a126  5      
  movl %r12d, %r12d                                                #  125   0x2a12b  3      
  movq 0x8(%r15,%r12,1), %rdi                                      #  126   0x2a12e  5      
  leal 0x38(%rsp), %edx                                            #  127   0x2a133  4      
  movl %eax, %eax                                                  #  128   0x2a137  2      
  movl 0xc(%r15,%rax,1), %eax                                      #  129   0x2a139  5      
  movq %rsi, 0x18(%rsp)                                            #  130   0x2a13e  5      
  movq %rdi, 0x10(%rsp)                                            #  131   0x2a143  5      
  nop                                                              #  132   0x2a148  1      
  nop                                                              #  133   0x2a149  1      
  andl $0xffffffe0, %eax                                           #  134   0x2a14a  5      
  addq %r15, %rax                                                  #  135   0x2a14f  3      
  callq %rax                                                       #  136   0x2a152  2      
  movl %eax, %esi                                                  #  137   0x2a154  2      
  jmpq .L_2a0a0                                                    #  138   0x2a156  5      
  nop                                                              #  139   0x2a15b  1      
  nop                                                              #  140   0x2a15c  1      
.L_2a2c0:                                                          #        0x2a15d  0      
  movl $0x10030c90, %edi                                           #  141   0x2a15d  5      
  nop                                                              #  142   0x2a162  1      
  nop                                                              #  143   0x2a163  1      
  callq .__cxa_guard_acquire                                       #  144   0x2a164  5      
  testl %eax, %eax                                                 #  145   0x2a169  2      
  je .L_2a100                                                      #  146   0x2a16b  6      
  nop                                                              #  147   0x2a171  1      
  nop                                                              #  148   0x2a172  1      
  callq ._ZN2pp6Module3GetEv                                       #  149   0x2a173  5      
  movl %eax, %edi                                                  #  150   0x2a178  2      
  movl $0x10020522, %esi                                           #  151   0x2a17a  5      
  nop                                                              #  152   0x2a17f  1      
  nop                                                              #  153   0x2a180  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  154   0x2a181  5      
  movl $0x10030c90, %edi                                           #  155   0x2a186  5      
  movl %eax, 0x10006b07(%rip)                                      #  156   0x2a18b  6      
  nop                                                              #  157   0x2a191  1      
  nop                                                              #  158   0x2a192  1      
  callq .__cxa_guard_release                                       #  159   0x2a193  5      
  jmpq .L_2a100                                                    #  160   0x2a198  5      
  nop                                                              #  161   0x2a19d  1      
  nop                                                              #  162   0x2a19e  1      
.L_2a360:                                                          #        0x2a19f  0      
  movl $0x10030c80, %edi                                           #  163   0x2a19f  5      
  nop                                                              #  164   0x2a1a4  1      
  nop                                                              #  165   0x2a1a5  1      
  callq .__cxa_guard_acquire                                       #  166   0x2a1a6  5      
  testl %eax, %eax                                                 #  167   0x2a1ab  2      
  jne .L_2a4c0                                                     #  168   0x2a1ad  6      
  nop                                                              #  169   0x2a1b3  1      
  nop                                                              #  170   0x2a1b4  1      
.L_2a3a0:                                                          #        0x2a1b5  0      
  movl 0x10006acd(%rip), %eax                                      #  171   0x2a1b5  6      
  jmpq .L_2a040                                                    #  172   0x2a1bb  5      
  nop                                                              #  173   0x2a1c0  1      
  nop                                                              #  174   0x2a1c1  1      
.L_2a3c0:                                                          #        0x2a1c2  0      
  movl $0x10030ca0, %edi                                           #  175   0x2a1c2  5      
  nop                                                              #  176   0x2a1c7  1      
  nop                                                              #  177   0x2a1c8  1      
  callq .__cxa_guard_acquire                                       #  178   0x2a1c9  5      
  testl %eax, %eax                                                 #  179   0x2a1ce  2      
  je .L_2a120                                                      #  180   0x2a1d0  6      
  nop                                                              #  181   0x2a1d6  1      
  nop                                                              #  182   0x2a1d7  1      
  callq ._ZN2pp6Module3GetEv                                       #  183   0x2a1d8  5      
  movl %eax, %edi                                                  #  184   0x2a1dd  2      
  movl $0x1002050a, %esi                                           #  185   0x2a1df  5      
  nop                                                              #  186   0x2a1e4  1      
  nop                                                              #  187   0x2a1e5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  188   0x2a1e6  5      
  movl $0x10030ca0, %edi                                           #  189   0x2a1eb  5      
  movl %eax, 0x10006ab2(%rip)                                      #  190   0x2a1f0  6      
  nop                                                              #  191   0x2a1f6  1      
  nop                                                              #  192   0x2a1f7  1      
  callq .__cxa_guard_release                                       #  193   0x2a1f8  5      
  jmpq .L_2a120                                                    #  194   0x2a1fd  5      
  nop                                                              #  195   0x2a202  1      
  nop                                                              #  196   0x2a203  1      
.L_2a460:                                                          #        0x2a204  0      
  movl $0x10030c90, %edi                                           #  197   0x2a204  5      
  nop                                                              #  198   0x2a209  1      
  nop                                                              #  199   0x2a20a  1      
  callq .__cxa_guard_acquire                                       #  200   0x2a20b  5      
  testl %eax, %eax                                                 #  201   0x2a210  2      
  jne .L_2a540                                                     #  202   0x2a212  6      
  nop                                                              #  203   0x2a218  1      
  nop                                                              #  204   0x2a219  1      
.L_2a4a0:                                                          #        0x2a21a  0      
  movl 0x10006a78(%rip), %eax                                      #  205   0x2a21a  6      
  jmpq .L_2a260                                                    #  206   0x2a220  5      
  nop                                                              #  207   0x2a225  1      
  nop                                                              #  208   0x2a226  1      
.L_2a4c0:                                                          #        0x2a227  0      
  nop                                                              #  209   0x2a227  1      
  nop                                                              #  210   0x2a228  1      
  callq ._ZN2pp6Module3GetEv                                       #  211   0x2a229  5      
  movl %eax, %edi                                                  #  212   0x2a22e  2      
  movl $0x10020516, %esi                                           #  213   0x2a230  5      
  nop                                                              #  214   0x2a235  1      
  nop                                                              #  215   0x2a236  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  216   0x2a237  5      
  movl $0x10030c80, %edi                                           #  217   0x2a23c  5      
  movl %eax, 0x10006a41(%rip)                                      #  218   0x2a241  6      
  nop                                                              #  219   0x2a247  1      
  nop                                                              #  220   0x2a248  1      
  callq .__cxa_guard_release                                       #  221   0x2a249  5      
  jmpq .L_2a3a0                                                    #  222   0x2a24e  5      
  nop                                                              #  223   0x2a253  1      
  nop                                                              #  224   0x2a254  1      
.L_2a540:                                                          #        0x2a255  0      
  nop                                                              #  225   0x2a255  1      
  nop                                                              #  226   0x2a256  1      
  callq ._ZN2pp6Module3GetEv                                       #  227   0x2a257  5      
  movl %eax, %edi                                                  #  228   0x2a25c  2      
  movl $0x10020522, %esi                                           #  229   0x2a25e  5      
  nop                                                              #  230   0x2a263  1      
  nop                                                              #  231   0x2a264  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  232   0x2a265  5      
  movl $0x10030c90, %edi                                           #  233   0x2a26a  5      
  movl %eax, 0x10006a23(%rip)                                      #  234   0x2a26f  6      
  nop                                                              #  235   0x2a275  1      
  nop                                                              #  236   0x2a276  1      
  callq .__cxa_guard_release                                       #  237   0x2a277  5      
  jmpq .L_2a4a0                                                    #  238   0x2a27c  5      
  nop                                                              #  239   0x2a281  1      
  nop                                                              #  240   0x2a282  1      
.L_2a5c0:                                                          #        0x2a283  0      
  movl %eax, %ebx                                                  #  241   0x2a283  2      
  movl $0x10030c80, %edi                                           #  242   0x2a285  5      
  nop                                                              #  243   0x2a28a  1      
  nop                                                              #  244   0x2a28b  1      
  callq .__cxa_guard_abort                                         #  245   0x2a28c  5      
  movl %ebx, %edi                                                  #  246   0x2a291  2      
  nop                                                              #  247   0x2a293  1      
  nop                                                              #  248   0x2a294  1      
  callq ._Unwind_Resume                                            #  249   0x2a295  5      
.L_2a600:                                                          #        0x2a29a  0      
  movl %eax, %ebx                                                  #  250   0x2a29a  2      
  movl $0x10030c90, %edi                                           #  251   0x2a29c  5      
  nop                                                              #  252   0x2a2a1  1      
  nop                                                              #  253   0x2a2a2  1      
  callq .__cxa_guard_abort                                         #  254   0x2a2a3  5      
  movl %ebx, %edi                                                  #  255   0x2a2a8  2      
  nop                                                              #  256   0x2a2aa  1      
  nop                                                              #  257   0x2a2ab  1      
  callq ._Unwind_Resume                                            #  258   0x2a2ac  5      
  movl %eax, %edi                                                  #  259   0x2a2b1  2      
  nop                                                              #  260   0x2a2b3  1      
  nop                                                              #  261   0x2a2b4  1      
  callq ._Unwind_Resume                                            #  262   0x2a2b5  5      
  jmpq .L_2a5c0                                                    #  263   0x2a2ba  5      
  nop                                                              #  264   0x2a2bf  1      
  nop                                                              #  265   0x2a2c0  1      
  jmpq .L_2a600                                                    #  266   0x2a2c1  5      
  nop                                                              #  267   0x2a2c6  1      
  nop                                                              #  268   0x2a2c7  1      
  movl %eax, %ebx                                                  #  269   0x2a2c8  2      
  movl $0x10030ca0, %edi                                           #  270   0x2a2ca  5      
  nop                                                              #  271   0x2a2cf  1      
  nop                                                              #  272   0x2a2d0  1      
  callq .__cxa_guard_abort                                         #  273   0x2a2d1  5      
  movl %ebx, %edi                                                  #  274   0x2a2d6  2      
  nop                                                              #  275   0x2a2d8  1      
  nop                                                              #  276   0x2a2d9  1      
  callq ._Unwind_Resume                                            #  277   0x2a2da  5      
                                                                                            
.size _ZNK2pp3Var8AsStringEv, .-_ZNK2pp3Var8AsStringEv

