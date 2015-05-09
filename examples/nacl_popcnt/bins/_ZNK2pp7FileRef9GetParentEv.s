  .text
  .globl _ZNK2pp7FileRef9GetParentEv
  .type _ZNK2pp7FileRef9GetParentEv, @function

#! file-offset 0x34f00
#! rip-offset  0x34f00
#! capacity    1760 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef9GetParentEv:                    #        0x34f00  0      
  pushq %r12                                     #  1     0x34f00  3      
  movl %esi, %r12d                               #  2     0x34f03  3      
  pushq %rbx                                     #  3     0x34f06  2      
  movl %edi, %ebx                                #  4     0x34f08  2      
  subl $0x8, %esp                                #  5     0x34f0a  3      
  addq %r15, %rsp                                #  6     0x34f0d  3      
  cmpb $0x0, 0xfffbdc9(%rip)                     #  7     0x34f10  7      
  je .L_35140                                    #  8     0x34f17  6      
  nop                                            #  9     0x34f1d  1      
.L_34f20:                                        #        0x34f1e  0      
  movl 0xfffbdc4(%rip), %eax                     #  10    0x34f1e  6      
  testq %rax, %rax                               #  11    0x34f24  3      
  jne .L_350e0                                   #  12    0x34f27  6      
  cmpb $0x0, 0xfffbdbc(%rip)                     #  13    0x34f2d  7      
  je .L_35040                                    #  14    0x34f34  6      
  nop                                            #  15    0x34f3a  1      
.L_34f40:                                        #        0x34f3b  0      
  movl 0xfffbdb7(%rip), %eax                     #  16    0x34f3b  6      
  testq %rax, %rax                               #  17    0x34f41  3      
  jne .L_34fc0                                   #  18    0x34f44  6      
  cmpb $0x0, 0xfffbdaf(%rip)                     #  19    0x34f4a  7      
  je .L_352a0                                    #  20    0x34f51  6      
  nop                                            #  21    0x34f57  1      
.L_34f60:                                        #        0x34f58  0      
  movl 0xfffbdaa(%rip), %eax                     #  22    0x34f58  6      
  testq %rax, %rax                               #  23    0x34f5e  3      
  jne .L_35240                                   #  24    0x34f61  6      
  movl %ebx, %edi                                #  25    0x34f67  2      
  nop                                            #  26    0x34f69  1      
  callq ._ZN2pp8ResourceC2Ev                     #  27    0x34f6a  5      
  movl %ebx, %ebx                                #  28    0x34f6f  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  29    0x34f71  8      
  movl %ebx, %eax                                #  30    0x34f79  2      
  addl $0x8, %esp                                #  31    0x34f7b  3      
  addq %r15, %rsp                                #  32    0x34f7e  3      
  popq %rbx                                      #  33    0x34f81  2      
  popq %r12                                      #  34    0x34f83  3      
  popq %r11                                      #  35    0x34f86  3      
  nop                                            #  36    0x34f89  1      
  andl $0xffffffe0, %r11d                        #  37    0x34f8a  7      
  addq %r15, %r11                                #  38    0x34f91  3      
  jmpq %r11                                      #  39    0x34f94  3      
  nop                                            #  40    0x34f97  1      
  nop                                            #  41    0x34f98  1      
.L_34fc0:                                        #        0x34f99  0      
  cmpb $0x0, 0xfffbd50(%rip)                     #  42    0x34f99  7      
  je .L_351e0                                    #  43    0x34fa0  6      
  nop                                            #  44    0x34fa6  1      
  nop                                            #  45    0x34fa7  1      
.L_34fe0:                                        #        0x34fa8  0      
  movl %eax, %eax                                #  46    0x34fa8  2      
  movl 0x14(%r15,%rax,1), %eax                   #  47    0x34faa  5      
  movl %r12d, %r12d                              #  48    0x34faf  3      
  movl 0x4(%r15,%r12,1), %edi                    #  49    0x34fb2  5      
  nop                                            #  50    0x34fb7  1      
  andl $0xffffffe0, %eax                         #  51    0x34fb8  5      
  addq %r15, %rax                                #  52    0x34fbd  3      
  callq %rax                                     #  53    0x34fc0  2      
  movl %ebx, %edi                                #  54    0x34fc2  2      
  movl %eax, %edx                                #  55    0x34fc4  2      
  xorl %esi, %esi                                #  56    0x34fc6  2      
  nop                                            #  57    0x34fc8  1      
  nop                                            #  58    0x34fc9  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  59    0x34fca  5      
  addl $0x8, %esp                                #  60    0x34fcf  3      
  addq %r15, %rsp                                #  61    0x34fd2  3      
  movl %ebx, %eax                                #  62    0x34fd5  2      
  popq %rbx                                      #  63    0x34fd7  2      
  popq %r12                                      #  64    0x34fd9  3      
  popq %r11                                      #  65    0x34fdc  3      
  andl $0xffffffe0, %r11d                        #  66    0x34fdf  7      
  addq %r15, %r11                                #  67    0x34fe6  3      
  jmpq %r11                                      #  68    0x34fe9  3      
  nop                                            #  69    0x34fec  1      
.L_35040:                                        #        0x34fed  0      
  movl $0x10030cf0, %edi                         #  70    0x34fed  5      
  nop                                            #  71    0x34ff2  1      
  nop                                            #  72    0x34ff3  1      
  callq .__cxa_guard_acquire                     #  73    0x34ff4  5      
  testl %eax, %eax                               #  74    0x34ff9  2      
  je .L_34f40                                    #  75    0x34ffb  6      
  nop                                            #  76    0x35001  1      
  nop                                            #  77    0x35002  1      
  callq ._ZN2pp6Module3GetEv                     #  78    0x35003  5      
  movl %eax, %edi                                #  79    0x35008  2      
  movl $0x10020664, %esi                         #  80    0x3500a  5      
  nop                                            #  81    0x3500f  1      
  nop                                            #  82    0x35010  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  83    0x35011  5      
  movl $0x10030cf0, %edi                         #  84    0x35016  5      
  movl %eax, 0xfffbcd7(%rip)                     #  85    0x3501b  6      
  nop                                            #  86    0x35021  1      
  nop                                            #  87    0x35022  1      
  callq .__cxa_guard_release                     #  88    0x35023  5      
  jmpq .L_34f40                                  #  89    0x35028  5      
  nop                                            #  90    0x3502d  1      
  nop                                            #  91    0x3502e  1      
.L_350e0:                                        #        0x3502f  0      
  cmpb $0x0, 0xfffbcaa(%rip)                     #  92    0x3502f  7      
  jne .L_34fe0                                   #  93    0x35036  6      
  movl $0x10030ce0, %edi                         #  94    0x3503c  5      
  nop                                            #  95    0x35041  1      
  callq .__cxa_guard_acquire                     #  96    0x35042  5      
  testl %eax, %eax                               #  97    0x35047  2      
  jne .L_35340                                   #  98    0x35049  6      
  nop                                            #  99    0x3504f  1      
  nop                                            #  100   0x35050  1      
.L_35120:                                        #        0x35051  0      
  movl 0xfffbc91(%rip), %eax                     #  101   0x35051  6      
  jmpq .L_34fe0                                  #  102   0x35057  5      
  nop                                            #  103   0x3505c  1      
  nop                                            #  104   0x3505d  1      
.L_35140:                                        #        0x3505e  0      
  movl $0x10030ce0, %edi                         #  105   0x3505e  5      
  nop                                            #  106   0x35063  1      
  nop                                            #  107   0x35064  1      
  callq .__cxa_guard_acquire                     #  108   0x35065  5      
  testl %eax, %eax                               #  109   0x3506a  2      
  je .L_34f20                                    #  110   0x3506c  6      
  nop                                            #  111   0x35072  1      
  nop                                            #  112   0x35073  1      
  callq ._ZN2pp6Module3GetEv                     #  113   0x35074  5      
  movl %eax, %edi                                #  114   0x35079  2      
  movl $0x10020654, %esi                         #  115   0x3507b  5      
  nop                                            #  116   0x35080  1      
  nop                                            #  117   0x35081  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  118   0x35082  5      
  movl $0x10030ce0, %edi                         #  119   0x35087  5      
  movl %eax, 0xfffbc56(%rip)                     #  120   0x3508c  6      
  nop                                            #  121   0x35092  1      
  nop                                            #  122   0x35093  1      
  callq .__cxa_guard_release                     #  123   0x35094  5      
  jmpq .L_34f20                                  #  124   0x35099  5      
  nop                                            #  125   0x3509e  1      
  nop                                            #  126   0x3509f  1      
.L_351e0:                                        #        0x350a0  0      
  movl $0x10030cf0, %edi                         #  127   0x350a0  5      
  nop                                            #  128   0x350a5  1      
  nop                                            #  129   0x350a6  1      
  callq .__cxa_guard_acquire                     #  130   0x350a7  5      
  testl %eax, %eax                               #  131   0x350ac  2      
  jne .L_35440                                   #  132   0x350ae  6      
  nop                                            #  133   0x350b4  1      
  nop                                            #  134   0x350b5  1      
.L_35220:                                        #        0x350b6  0      
  movl 0xfffbc3c(%rip), %eax                     #  135   0x350b6  6      
  jmpq .L_34fe0                                  #  136   0x350bc  5      
  nop                                            #  137   0x350c1  1      
  nop                                            #  138   0x350c2  1      
.L_35240:                                        #        0x350c3  0      
  cmpb $0x0, 0xfffbc36(%rip)                     #  139   0x350c3  7      
  jne .L_34fe0                                   #  140   0x350ca  6      
  movl $0x10030d00, %edi                         #  141   0x350d0  5      
  nop                                            #  142   0x350d5  1      
  callq .__cxa_guard_acquire                     #  143   0x350d6  5      
  testl %eax, %eax                               #  144   0x350db  2      
  jne .L_353c0                                   #  145   0x350dd  6      
  nop                                            #  146   0x350e3  1      
  nop                                            #  147   0x350e4  1      
.L_35280:                                        #        0x350e5  0      
  movl 0xfffbc1d(%rip), %eax                     #  148   0x350e5  6      
  jmpq .L_34fe0                                  #  149   0x350eb  5      
  nop                                            #  150   0x350f0  1      
  nop                                            #  151   0x350f1  1      
.L_352a0:                                        #        0x350f2  0      
  movl $0x10030d00, %edi                         #  152   0x350f2  5      
  nop                                            #  153   0x350f7  1      
  nop                                            #  154   0x350f8  1      
  callq .__cxa_guard_acquire                     #  155   0x350f9  5      
  testl %eax, %eax                               #  156   0x350fe  2      
  je .L_34f60                                    #  157   0x35100  6      
  nop                                            #  158   0x35106  1      
  nop                                            #  159   0x35107  1      
  callq ._ZN2pp6Module3GetEv                     #  160   0x35108  5      
  movl %eax, %edi                                #  161   0x3510d  2      
  movl $0x10020644, %esi                         #  162   0x3510f  5      
  nop                                            #  163   0x35114  1      
  nop                                            #  164   0x35115  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  165   0x35116  5      
  movl $0x10030d00, %edi                         #  166   0x3511b  5      
  movl %eax, 0xfffbbe2(%rip)                     #  167   0x35120  6      
  nop                                            #  168   0x35126  1      
  nop                                            #  169   0x35127  1      
  callq .__cxa_guard_release                     #  170   0x35128  5      
  jmpq .L_34f60                                  #  171   0x3512d  5      
  nop                                            #  172   0x35132  1      
  nop                                            #  173   0x35133  1      
.L_35340:                                        #        0x35134  0      
  nop                                            #  174   0x35134  1      
  nop                                            #  175   0x35135  1      
  callq ._ZN2pp6Module3GetEv                     #  176   0x35136  5      
  movl %eax, %edi                                #  177   0x3513b  2      
  movl $0x10020654, %esi                         #  178   0x3513d  5      
  nop                                            #  179   0x35142  1      
  nop                                            #  180   0x35143  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  181   0x35144  5      
  movl $0x10030ce0, %edi                         #  182   0x35149  5      
  movl %eax, 0xfffbb94(%rip)                     #  183   0x3514e  6      
  nop                                            #  184   0x35154  1      
  nop                                            #  185   0x35155  1      
  callq .__cxa_guard_release                     #  186   0x35156  5      
  jmpq .L_35120                                  #  187   0x3515b  5      
  nop                                            #  188   0x35160  1      
  nop                                            #  189   0x35161  1      
.L_353c0:                                        #        0x35162  0      
  nop                                            #  190   0x35162  1      
  nop                                            #  191   0x35163  1      
  callq ._ZN2pp6Module3GetEv                     #  192   0x35164  5      
  movl %eax, %edi                                #  193   0x35169  2      
  movl $0x10020644, %esi                         #  194   0x3516b  5      
  nop                                            #  195   0x35170  1      
  nop                                            #  196   0x35171  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  197   0x35172  5      
  movl $0x10030d00, %edi                         #  198   0x35177  5      
  movl %eax, 0xfffbb86(%rip)                     #  199   0x3517c  6      
  nop                                            #  200   0x35182  1      
  nop                                            #  201   0x35183  1      
  callq .__cxa_guard_release                     #  202   0x35184  5      
  jmpq .L_35280                                  #  203   0x35189  5      
  nop                                            #  204   0x3518e  1      
  nop                                            #  205   0x3518f  1      
.L_35440:                                        #        0x35190  0      
  nop                                            #  206   0x35190  1      
  nop                                            #  207   0x35191  1      
  callq ._ZN2pp6Module3GetEv                     #  208   0x35192  5      
  movl %eax, %edi                                #  209   0x35197  2      
  movl $0x10020664, %esi                         #  210   0x35199  5      
  nop                                            #  211   0x3519e  1      
  nop                                            #  212   0x3519f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  213   0x351a0  5      
  movl $0x10030cf0, %edi                         #  214   0x351a5  5      
  movl %eax, 0xfffbb48(%rip)                     #  215   0x351aa  6      
  nop                                            #  216   0x351b0  1      
  nop                                            #  217   0x351b1  1      
  callq .__cxa_guard_release                     #  218   0x351b2  5      
  jmpq .L_35220                                  #  219   0x351b7  5      
  nop                                            #  220   0x351bc  1      
  nop                                            #  221   0x351bd  1      
.L_354c0:                                        #        0x351be  0      
  movl %eax, %ebx                                #  222   0x351be  2      
  movl $0x10030d00, %edi                         #  223   0x351c0  5      
  nop                                            #  224   0x351c5  1      
  nop                                            #  225   0x351c6  1      
  callq .__cxa_guard_abort                       #  226   0x351c7  5      
  movl %ebx, %edi                                #  227   0x351cc  2      
  nop                                            #  228   0x351ce  1      
  nop                                            #  229   0x351cf  1      
  callq ._Unwind_Resume                          #  230   0x351d0  5      
.L_35500:                                        #        0x351d5  0      
  movl %eax, %ebx                                #  231   0x351d5  2      
  movl $0x10030cf0, %edi                         #  232   0x351d7  5      
  nop                                            #  233   0x351dc  1      
  nop                                            #  234   0x351dd  1      
  callq .__cxa_guard_abort                       #  235   0x351de  5      
  movl %ebx, %edi                                #  236   0x351e3  2      
  nop                                            #  237   0x351e5  1      
  nop                                            #  238   0x351e6  1      
  callq ._Unwind_Resume                          #  239   0x351e7  5      
  jmpq .L_35500                                  #  240   0x351ec  5      
  nop                                            #  241   0x351f1  1      
  nop                                            #  242   0x351f2  1      
.L_35560:                                        #        0x351f3  0      
  movl %eax, %ebx                                #  243   0x351f3  2      
  movl $0x10030ce0, %edi                         #  244   0x351f5  5      
  nop                                            #  245   0x351fa  1      
  nop                                            #  246   0x351fb  1      
  callq .__cxa_guard_abort                       #  247   0x351fc  5      
  movl %ebx, %edi                                #  248   0x35201  2      
  nop                                            #  249   0x35203  1      
  nop                                            #  250   0x35204  1      
  callq ._Unwind_Resume                          #  251   0x35205  5      
  jmpq .L_35560                                  #  252   0x3520a  5      
  nop                                            #  253   0x3520f  1      
  nop                                            #  254   0x35210  1      
  jmpq .L_354c0                                  #  255   0x35211  5      
  nop                                            #  256   0x35216  1      
  nop                                            #  257   0x35217  1      
  nop                                            #  258   0x35218  1      
                                                                          
.size _ZNK2pp7FileRef9GetParentEv, .-_ZNK2pp7FileRef9GetParentEv

