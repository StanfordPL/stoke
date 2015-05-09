  .text
  .globl _ZNK2pp4View12IsFullscreenEv
  .type _ZNK2pp4View12IsFullscreenEv, @function

#! file-offset 0x2ffa0
#! rip-offset  0x2ffa0
#! capacity    1824 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View12IsFullscreenEv:                   #        0x2ffa0  0      
  cmpb $0x0, 0x10000d09(%rip)                    #  1     0x2ffa0  7      
  pushq %rbx                                     #  2     0x2ffa7  2      
  movl %edi, %ebx                                #  3     0x2ffa9  2      
  je .L_301c0                                    #  4     0x2ffab  6      
  nop                                            #  5     0x2ffb1  1      
  nop                                            #  6     0x2ffb2  1      
.L_2ffc0:                                        #        0x2ffb3  0      
  movl 0x10000cff(%rip), %eax                    #  7     0x2ffb3  6      
  testq %rax, %rax                               #  8     0x2ffb9  3      
  jne .L_30140                                   #  9     0x2ffbc  6      
  cmpb $0x0, 0x10000cf7(%rip)                    #  10    0x2ffc2  7      
  je .L_300a0                                    #  11    0x2ffc9  6      
  nop                                            #  12    0x2ffcf  1      
.L_2ffe0:                                        #        0x2ffd0  0      
  movl 0x10000cf2(%rip), %eax                    #  13    0x2ffd0  6      
  testq %rax, %rax                               #  14    0x2ffd6  3      
  jne .L_30020                                   #  15    0x2ffd9  6      
  cmpb $0x0, 0x10000cea(%rip)                    #  16    0x2ffdf  7      
  je .L_30320                                    #  17    0x2ffe6  6      
  nop                                            #  18    0x2ffec  1      
.L_30000:                                        #        0x2ffed  0      
  movl 0x10000ce5(%rip), %edx                    #  19    0x2ffed  6      
  xorl %eax, %eax                                #  20    0x2fff3  2      
  testq %rdx, %rdx                               #  21    0x2fff5  3      
  jne .L_302c0                                   #  22    0x2fff8  6      
  popq %rbx                                      #  23    0x2fffe  2      
  popq %r11                                      #  24    0x30000  3      
  andl $0xffffffe0, %r11d                        #  25    0x30003  7      
  addq %r15, %r11                                #  26    0x3000a  3      
  jmpq %r11                                      #  27    0x3000d  3      
  xchgw %ax, %ax                                 #  28    0x30010  3      
.L_30020:                                        #        0x30013  0      
  cmpb $0x0, 0x10000ca6(%rip)                    #  29    0x30013  7      
  je .L_30260                                    #  30    0x3001a  6      
  nop                                            #  31    0x30020  1      
  nop                                            #  32    0x30021  1      
.L_30040:                                        #        0x30022  0      
  movl %eax, %eax                                #  33    0x30022  2      
  movl 0x8(%r15,%rax,1), %eax                    #  34    0x30024  5      
  movl %ebx, %ebx                                #  35    0x30029  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  36    0x3002b  5      
  nop                                            #  37    0x30030  1      
  andl $0xffffffe0, %eax                         #  38    0x30031  5      
  addq %r15, %rax                                #  39    0x30036  3      
  callq %rax                                     #  40    0x30039  2      
  testl %eax, %eax                               #  41    0x3003b  2      
  setne %al                                      #  42    0x3003d  3      
  nop                                            #  43    0x30040  1      
  nop                                            #  44    0x30041  1      
.L_30080:                                        #        0x30042  0      
  popq %rbx                                      #  45    0x30042  2      
  popq %r11                                      #  46    0x30044  3      
  andl $0xffffffe0, %r11d                        #  47    0x30047  7      
  addq %r15, %r11                                #  48    0x3004e  3      
  jmpq %r11                                      #  49    0x30051  3      
  nop                                            #  50    0x30054  1      
  nop                                            #  51    0x30055  1      
.L_300a0:                                        #        0x30056  0      
  movl $0x10030cc0, %edi                         #  52    0x30056  5      
  nop                                            #  53    0x3005b  1      
  nop                                            #  54    0x3005c  1      
  callq .__cxa_guard_acquire                     #  55    0x3005d  5      
  testl %eax, %eax                               #  56    0x30062  2      
  je .L_2ffe0                                    #  57    0x30064  6      
  nop                                            #  58    0x3006a  1      
  nop                                            #  59    0x3006b  1      
  callq ._ZN2pp6Module3GetEv                     #  60    0x3006c  5      
  movl %eax, %edi                                #  61    0x30071  2      
  movl $0x10020632, %esi                         #  62    0x30073  5      
  nop                                            #  63    0x30078  1      
  nop                                            #  64    0x30079  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  65    0x3007a  5      
  movl $0x10030cc0, %edi                         #  66    0x3007f  5      
  movl %eax, 0x10000c3e(%rip)                    #  67    0x30084  6      
  nop                                            #  68    0x3008a  1      
  nop                                            #  69    0x3008b  1      
  callq .__cxa_guard_release                     #  70    0x3008c  5      
  jmpq .L_2ffe0                                  #  71    0x30091  5      
  nop                                            #  72    0x30096  1      
  nop                                            #  73    0x30097  1      
.L_30140:                                        #        0x30098  0      
  cmpb $0x0, 0x10000c11(%rip)                    #  74    0x30098  7      
  jne .L_30040                                   #  75    0x3009f  6      
  movl $0x10030cb0, %edi                         #  76    0x300a5  5      
  nop                                            #  77    0x300aa  1      
  callq .__cxa_guard_acquire                     #  78    0x300ab  5      
  testl %eax, %eax                               #  79    0x300b0  2      
  jne .L_303c0                                   #  80    0x300b2  6      
  nop                                            #  81    0x300b8  1      
  nop                                            #  82    0x300b9  1      
.L_30180:                                        #        0x300ba  0      
  movl 0x10000bf8(%rip), %eax                    #  83    0x300ba  6      
  movl %ebx, %ebx                                #  84    0x300c0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  85    0x300c2  5      
  movl %eax, %eax                                #  86    0x300c7  2      
  movl 0x8(%r15,%rax,1), %eax                    #  87    0x300c9  5      
  nop                                            #  88    0x300ce  1      
  andl $0xffffffe0, %eax                         #  89    0x300cf  5      
  addq %r15, %rax                                #  90    0x300d4  3      
  callq %rax                                     #  91    0x300d7  2      
  testl %eax, %eax                               #  92    0x300d9  2      
  setne %al                                      #  93    0x300db  3      
  jmpq .L_30080                                  #  94    0x300de  5      
  nop                                            #  95    0x300e3  1      
  nop                                            #  96    0x300e4  1      
.L_301c0:                                        #        0x300e5  0      
  movl $0x10030cb0, %edi                         #  97    0x300e5  5      
  nop                                            #  98    0x300ea  1      
  nop                                            #  99    0x300eb  1      
  callq .__cxa_guard_acquire                     #  100   0x300ec  5      
  testl %eax, %eax                               #  101   0x300f1  2      
  je .L_2ffc0                                    #  102   0x300f3  6      
  nop                                            #  103   0x300f9  1      
  nop                                            #  104   0x300fa  1      
  callq ._ZN2pp6Module3GetEv                     #  105   0x300fb  5      
  movl %eax, %edi                                #  106   0x30100  2      
  movl $0x10020625, %esi                         #  107   0x30102  5      
  nop                                            #  108   0x30107  1      
  nop                                            #  109   0x30108  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  110   0x30109  5      
  movl $0x10030cb0, %edi                         #  111   0x3010e  5      
  movl %eax, 0x10000b9f(%rip)                    #  112   0x30113  6      
  nop                                            #  113   0x30119  1      
  nop                                            #  114   0x3011a  1      
  callq .__cxa_guard_release                     #  115   0x3011b  5      
  jmpq .L_2ffc0                                  #  116   0x30120  5      
  nop                                            #  117   0x30125  1      
  nop                                            #  118   0x30126  1      
.L_30260:                                        #        0x30127  0      
  movl $0x10030cc0, %edi                         #  119   0x30127  5      
  nop                                            #  120   0x3012c  1      
  nop                                            #  121   0x3012d  1      
  callq .__cxa_guard_acquire                     #  122   0x3012e  5      
  testl %eax, %eax                               #  123   0x30133  2      
  jne .L_30520                                   #  124   0x30135  6      
  nop                                            #  125   0x3013b  1      
  nop                                            #  126   0x3013c  1      
.L_302a0:                                        #        0x3013d  0      
  movl 0x10000b85(%rip), %eax                    #  127   0x3013d  6      
  jmpq .L_30040                                  #  128   0x30143  5      
  nop                                            #  129   0x30148  1      
  nop                                            #  130   0x30149  1      
.L_302c0:                                        #        0x3014a  0      
  cmpb $0x0, 0x10000b7f(%rip)                    #  131   0x3014a  7      
  je .L_30440                                    #  132   0x30151  6      
  nop                                            #  133   0x30157  1      
  nop                                            #  134   0x30158  1      
.L_302e0:                                        #        0x30159  0      
  movl %edx, %edx                                #  135   0x30159  2      
  movl 0x8(%r15,%rdx,1), %eax                    #  136   0x3015b  5      
  movl %ebx, %ebx                                #  137   0x30160  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  138   0x30162  5      
  nop                                            #  139   0x30167  1      
  andl $0xffffffe0, %eax                         #  140   0x30168  5      
  addq %r15, %rax                                #  141   0x3016d  3      
  callq %rax                                     #  142   0x30170  2      
  popq %rbx                                      #  143   0x30172  2      
  popq %r11                                      #  144   0x30174  3      
  testl %eax, %eax                               #  145   0x30177  2      
  setne %al                                      #  146   0x30179  3      
  andl $0xffffffe0, %r11d                        #  147   0x3017c  7      
  addq %r15, %r11                                #  148   0x30183  3      
  jmpq %r11                                      #  149   0x30186  3      
  nop                                            #  150   0x30189  1      
.L_30320:                                        #        0x3018a  0      
  movl $0x10030cd0, %edi                         #  151   0x3018a  5      
  nop                                            #  152   0x3018f  1      
  nop                                            #  153   0x30190  1      
  callq .__cxa_guard_acquire                     #  154   0x30191  5      
  testl %eax, %eax                               #  155   0x30196  2      
  je .L_30000                                    #  156   0x30198  6      
  nop                                            #  157   0x3019e  1      
  nop                                            #  158   0x3019f  1      
  callq ._ZN2pp6Module3GetEv                     #  159   0x301a0  5      
  movl %eax, %edi                                #  160   0x301a5  2      
  movl $0x10020618, %esi                         #  161   0x301a7  5      
  nop                                            #  162   0x301ac  1      
  nop                                            #  163   0x301ad  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  164   0x301ae  5      
  movl $0x10030cd0, %edi                         #  165   0x301b3  5      
  movl %eax, 0x10000b1a(%rip)                    #  166   0x301b8  6      
  nop                                            #  167   0x301be  1      
  nop                                            #  168   0x301bf  1      
  callq .__cxa_guard_release                     #  169   0x301c0  5      
  jmpq .L_30000                                  #  170   0x301c5  5      
  nop                                            #  171   0x301ca  1      
  nop                                            #  172   0x301cb  1      
.L_303c0:                                        #        0x301cc  0      
  nop                                            #  173   0x301cc  1      
  nop                                            #  174   0x301cd  1      
  callq ._ZN2pp6Module3GetEv                     #  175   0x301ce  5      
  movl %eax, %edi                                #  176   0x301d3  2      
  movl $0x10020625, %esi                         #  177   0x301d5  5      
  nop                                            #  178   0x301da  1      
  nop                                            #  179   0x301db  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  180   0x301dc  5      
  movl $0x10030cb0, %edi                         #  181   0x301e1  5      
  movl %eax, 0x10000acc(%rip)                    #  182   0x301e6  6      
  nop                                            #  183   0x301ec  1      
  nop                                            #  184   0x301ed  1      
  callq .__cxa_guard_release                     #  185   0x301ee  5      
  jmpq .L_30180                                  #  186   0x301f3  5      
  nop                                            #  187   0x301f8  1      
  nop                                            #  188   0x301f9  1      
.L_30440:                                        #        0x301fa  0      
  movl $0x10030cd0, %edi                         #  189   0x301fa  5      
  nop                                            #  190   0x301ff  1      
  nop                                            #  191   0x30200  1      
  callq .__cxa_guard_acquire                     #  192   0x30201  5      
  testl %eax, %eax                               #  193   0x30206  2      
  jne .L_304a0                                   #  194   0x30208  6      
  nop                                            #  195   0x3020e  1      
  nop                                            #  196   0x3020f  1      
.L_30480:                                        #        0x30210  0      
  movl 0x10000ac2(%rip), %edx                    #  197   0x30210  6      
  jmpq .L_302e0                                  #  198   0x30216  5      
  nop                                            #  199   0x3021b  1      
  nop                                            #  200   0x3021c  1      
.L_304a0:                                        #        0x3021d  0      
  nop                                            #  201   0x3021d  1      
  nop                                            #  202   0x3021e  1      
  callq ._ZN2pp6Module3GetEv                     #  203   0x3021f  5      
  movl %eax, %edi                                #  204   0x30224  2      
  movl $0x10020618, %esi                         #  205   0x30226  5      
  nop                                            #  206   0x3022b  1      
  nop                                            #  207   0x3022c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  208   0x3022d  5      
  movl $0x10030cd0, %edi                         #  209   0x30232  5      
  movl %eax, 0x10000a9b(%rip)                    #  210   0x30237  6      
  nop                                            #  211   0x3023d  1      
  nop                                            #  212   0x3023e  1      
  callq .__cxa_guard_release                     #  213   0x3023f  5      
  jmpq .L_30480                                  #  214   0x30244  5      
  nop                                            #  215   0x30249  1      
  nop                                            #  216   0x3024a  1      
.L_30520:                                        #        0x3024b  0      
  nop                                            #  217   0x3024b  1      
  nop                                            #  218   0x3024c  1      
  callq ._ZN2pp6Module3GetEv                     #  219   0x3024d  5      
  movl %eax, %edi                                #  220   0x30252  2      
  movl $0x10020632, %esi                         #  221   0x30254  5      
  nop                                            #  222   0x30259  1      
  nop                                            #  223   0x3025a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  224   0x3025b  5      
  movl $0x10030cc0, %edi                         #  225   0x30260  5      
  movl %eax, 0x10000a5d(%rip)                    #  226   0x30265  6      
  nop                                            #  227   0x3026b  1      
  nop                                            #  228   0x3026c  1      
  callq .__cxa_guard_release                     #  229   0x3026d  5      
  jmpq .L_302a0                                  #  230   0x30272  5      
  nop                                            #  231   0x30277  1      
  nop                                            #  232   0x30278  1      
.L_305a0:                                        #        0x30279  0      
  movl %eax, %ebx                                #  233   0x30279  2      
  movl $0x10030cb0, %edi                         #  234   0x3027b  5      
  nop                                            #  235   0x30280  1      
  nop                                            #  236   0x30281  1      
  callq .__cxa_guard_abort                       #  237   0x30282  5      
  movl %ebx, %edi                                #  238   0x30287  2      
  nop                                            #  239   0x30289  1      
  nop                                            #  240   0x3028a  1      
  callq ._Unwind_Resume                          #  241   0x3028b  5      
.L_305e0:                                        #        0x30290  0      
  movl %eax, %ebx                                #  242   0x30290  2      
  movl $0x10030cc0, %edi                         #  243   0x30292  5      
  nop                                            #  244   0x30297  1      
  nop                                            #  245   0x30298  1      
  callq .__cxa_guard_abort                       #  246   0x30299  5      
  movl %ebx, %edi                                #  247   0x3029e  2      
  nop                                            #  248   0x302a0  1      
  nop                                            #  249   0x302a1  1      
  callq ._Unwind_Resume                          #  250   0x302a2  5      
  jmpq .L_305e0                                  #  251   0x302a7  5      
  nop                                            #  252   0x302ac  1      
  nop                                            #  253   0x302ad  1      
  jmpq .L_305a0                                  #  254   0x302ae  5      
  nop                                            #  255   0x302b3  1      
  nop                                            #  256   0x302b4  1      
.L_30660:                                        #        0x302b5  0      
  movl %eax, %ebx                                #  257   0x302b5  2      
  movl $0x10030cd0, %edi                         #  258   0x302b7  5      
  nop                                            #  259   0x302bc  1      
  nop                                            #  260   0x302bd  1      
  callq .__cxa_guard_abort                       #  261   0x302be  5      
  movl %ebx, %edi                                #  262   0x302c3  2      
  nop                                            #  263   0x302c5  1      
  nop                                            #  264   0x302c6  1      
  callq ._Unwind_Resume                          #  265   0x302c7  5      
  jmpq .L_30660                                  #  266   0x302cc  5      
  nop                                            #  267   0x302d1  1      
  nop                                            #  268   0x302d2  1      
  nop                                            #  269   0x302d3  1      
  nop                                            #  270   0x302d4  1      
  nop                                            #  271   0x302d5  1      
  nop                                            #  272   0x302d6  1      
  nop                                            #  273   0x302d7  1      
  nop                                            #  274   0x302d8  1      
  nop                                            #  275   0x302d9  1      
  nop                                            #  276   0x302da  1      
  nop                                            #  277   0x302db  1      
  nop                                            #  278   0x302dc  1      
  nop                                            #  279   0x302dd  1      
  nop                                            #  280   0x302de  1      
  nop                                            #  281   0x302df  1      
  nop                                            #  282   0x302e0  1      
  nop                                            #  283   0x302e1  1      
  nop                                            #  284   0x302e2  1      
  nop                                            #  285   0x302e3  1      
  nop                                            #  286   0x302e4  1      
  nop                                            #  287   0x302e5  1      
  nop                                            #  288   0x302e6  1      
  nop                                            #  289   0x302e7  1      
  nop                                            #  290   0x302e8  1      
  nop                                            #  291   0x302e9  1      
  nop                                            #  292   0x302ea  1      
  nop                                            #  293   0x302eb  1      
  nop                                            #  294   0x302ec  1      
  nop                                            #  295   0x302ed  1      
  nop                                            #  296   0x302ee  1      
                                                                          
.size _ZNK2pp4View12IsFullscreenEv, .-_ZNK2pp4View12IsFullscreenEv

