  .text
  .globl _ZNK2pp7FileRef9GetParentEv
  .type _ZNK2pp7FileRef9GetParentEv, @function

#! file-offset 0x34f20
#! rip-offset  0x34f20
#! capacity    1760 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef9GetParentEv:                    #        0x34f20  0      
  pushq %r12                                     #  1     0x34f20  3      
  movl %esi, %r12d                               #  2     0x34f23  3      
  pushq %rbx                                     #  3     0x34f26  2      
  movl %edi, %ebx                                #  4     0x34f28  2      
  subl $0x8, %esp                                #  5     0x34f2a  3      
  addq %r15, %rsp                                #  6     0x34f2d  3      
  cmpb $0x0, 0xfffbda9(%rip)                     #  7     0x34f30  7      
  je .L_35160                                    #  8     0x34f37  6      
  nop                                            #  9     0x34f3d  1      
.L_34f40:                                        #        0x34f3e  0      
  movl 0xfffbda4(%rip), %eax                     #  10    0x34f3e  6      
  testq %rax, %rax                               #  11    0x34f44  3      
  jne .L_35100                                   #  12    0x34f47  6      
  cmpb $0x0, 0xfffbd9c(%rip)                     #  13    0x34f4d  7      
  je .L_35060                                    #  14    0x34f54  6      
  nop                                            #  15    0x34f5a  1      
.L_34f60:                                        #        0x34f5b  0      
  movl 0xfffbd97(%rip), %eax                     #  16    0x34f5b  6      
  testq %rax, %rax                               #  17    0x34f61  3      
  jne .L_34fe0                                   #  18    0x34f64  6      
  cmpb $0x0, 0xfffbd8f(%rip)                     #  19    0x34f6a  7      
  je .L_352c0                                    #  20    0x34f71  6      
  nop                                            #  21    0x34f77  1      
.L_34f80:                                        #        0x34f78  0      
  movl 0xfffbd8a(%rip), %eax                     #  22    0x34f78  6      
  testq %rax, %rax                               #  23    0x34f7e  3      
  jne .L_35260                                   #  24    0x34f81  6      
  movl %ebx, %edi                                #  25    0x34f87  2      
  nop                                            #  26    0x34f89  1      
  callq ._ZN2pp8ResourceC2Ev                     #  27    0x34f8a  5      
  movl %ebx, %ebx                                #  28    0x34f8f  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  29    0x34f91  8      
  movl %ebx, %eax                                #  30    0x34f99  2      
  addl $0x8, %esp                                #  31    0x34f9b  3      
  addq %r15, %rsp                                #  32    0x34f9e  3      
  popq %rbx                                      #  33    0x34fa1  2      
  popq %r12                                      #  34    0x34fa3  3      
  popq %r11                                      #  35    0x34fa6  3      
  nop                                            #  36    0x34fa9  1      
  andl $0xffffffe0, %r11d                        #  37    0x34faa  7      
  addq %r15, %r11                                #  38    0x34fb1  3      
  jmpq %r11                                      #  39    0x34fb4  3      
  nop                                            #  40    0x34fb7  1      
  nop                                            #  41    0x34fb8  1      
.L_34fe0:                                        #        0x34fb9  0      
  cmpb $0x0, 0xfffbd30(%rip)                     #  42    0x34fb9  7      
  je .L_35200                                    #  43    0x34fc0  6      
  nop                                            #  44    0x34fc6  1      
  nop                                            #  45    0x34fc7  1      
.L_35000:                                        #        0x34fc8  0      
  movl %eax, %eax                                #  46    0x34fc8  2      
  movl 0x14(%r15,%rax,1), %eax                   #  47    0x34fca  5      
  movl %r12d, %r12d                              #  48    0x34fcf  3      
  movl 0x4(%r15,%r12,1), %edi                    #  49    0x34fd2  5      
  nop                                            #  50    0x34fd7  1      
  andl $0xffffffe0, %eax                         #  51    0x34fd8  5      
  addq %r15, %rax                                #  52    0x34fdd  3      
  callq %rax                                     #  53    0x34fe0  2      
  movl %ebx, %edi                                #  54    0x34fe2  2      
  movl %eax, %edx                                #  55    0x34fe4  2      
  xorl %esi, %esi                                #  56    0x34fe6  2      
  nop                                            #  57    0x34fe8  1      
  nop                                            #  58    0x34fe9  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  59    0x34fea  5      
  addl $0x8, %esp                                #  60    0x34fef  3      
  addq %r15, %rsp                                #  61    0x34ff2  3      
  movl %ebx, %eax                                #  62    0x34ff5  2      
  popq %rbx                                      #  63    0x34ff7  2      
  popq %r12                                      #  64    0x34ff9  3      
  popq %r11                                      #  65    0x34ffc  3      
  andl $0xffffffe0, %r11d                        #  66    0x34fff  7      
  addq %r15, %r11                                #  67    0x35006  3      
  jmpq %r11                                      #  68    0x35009  3      
  nop                                            #  69    0x3500c  1      
.L_35060:                                        #        0x3500d  0      
  movl $0x10030cf0, %edi                         #  70    0x3500d  5      
  nop                                            #  71    0x35012  1      
  nop                                            #  72    0x35013  1      
  callq .__cxa_guard_acquire                     #  73    0x35014  5      
  testl %eax, %eax                               #  74    0x35019  2      
  je .L_34f60                                    #  75    0x3501b  6      
  nop                                            #  76    0x35021  1      
  nop                                            #  77    0x35022  1      
  callq ._ZN2pp6Module3GetEv                     #  78    0x35023  5      
  movl %eax, %edi                                #  79    0x35028  2      
  movl $0x10020664, %esi                         #  80    0x3502a  5      
  nop                                            #  81    0x3502f  1      
  nop                                            #  82    0x35030  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  83    0x35031  5      
  movl $0x10030cf0, %edi                         #  84    0x35036  5      
  movl %eax, 0xfffbcb7(%rip)                     #  85    0x3503b  6      
  nop                                            #  86    0x35041  1      
  nop                                            #  87    0x35042  1      
  callq .__cxa_guard_release                     #  88    0x35043  5      
  jmpq .L_34f60                                  #  89    0x35048  5      
  nop                                            #  90    0x3504d  1      
  nop                                            #  91    0x3504e  1      
.L_35100:                                        #        0x3504f  0      
  cmpb $0x0, 0xfffbc8a(%rip)                     #  92    0x3504f  7      
  jne .L_35000                                   #  93    0x35056  6      
  movl $0x10030ce0, %edi                         #  94    0x3505c  5      
  nop                                            #  95    0x35061  1      
  callq .__cxa_guard_acquire                     #  96    0x35062  5      
  testl %eax, %eax                               #  97    0x35067  2      
  jne .L_35360                                   #  98    0x35069  6      
  nop                                            #  99    0x3506f  1      
  nop                                            #  100   0x35070  1      
.L_35140:                                        #        0x35071  0      
  movl 0xfffbc71(%rip), %eax                     #  101   0x35071  6      
  jmpq .L_35000                                  #  102   0x35077  5      
  nop                                            #  103   0x3507c  1      
  nop                                            #  104   0x3507d  1      
.L_35160:                                        #        0x3507e  0      
  movl $0x10030ce0, %edi                         #  105   0x3507e  5      
  nop                                            #  106   0x35083  1      
  nop                                            #  107   0x35084  1      
  callq .__cxa_guard_acquire                     #  108   0x35085  5      
  testl %eax, %eax                               #  109   0x3508a  2      
  je .L_34f40                                    #  110   0x3508c  6      
  nop                                            #  111   0x35092  1      
  nop                                            #  112   0x35093  1      
  callq ._ZN2pp6Module3GetEv                     #  113   0x35094  5      
  movl %eax, %edi                                #  114   0x35099  2      
  movl $0x10020654, %esi                         #  115   0x3509b  5      
  nop                                            #  116   0x350a0  1      
  nop                                            #  117   0x350a1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  118   0x350a2  5      
  movl $0x10030ce0, %edi                         #  119   0x350a7  5      
  movl %eax, 0xfffbc36(%rip)                     #  120   0x350ac  6      
  nop                                            #  121   0x350b2  1      
  nop                                            #  122   0x350b3  1      
  callq .__cxa_guard_release                     #  123   0x350b4  5      
  jmpq .L_34f40                                  #  124   0x350b9  5      
  nop                                            #  125   0x350be  1      
  nop                                            #  126   0x350bf  1      
.L_35200:                                        #        0x350c0  0      
  movl $0x10030cf0, %edi                         #  127   0x350c0  5      
  nop                                            #  128   0x350c5  1      
  nop                                            #  129   0x350c6  1      
  callq .__cxa_guard_acquire                     #  130   0x350c7  5      
  testl %eax, %eax                               #  131   0x350cc  2      
  jne .L_35460                                   #  132   0x350ce  6      
  nop                                            #  133   0x350d4  1      
  nop                                            #  134   0x350d5  1      
.L_35240:                                        #        0x350d6  0      
  movl 0xfffbc1c(%rip), %eax                     #  135   0x350d6  6      
  jmpq .L_35000                                  #  136   0x350dc  5      
  nop                                            #  137   0x350e1  1      
  nop                                            #  138   0x350e2  1      
.L_35260:                                        #        0x350e3  0      
  cmpb $0x0, 0xfffbc16(%rip)                     #  139   0x350e3  7      
  jne .L_35000                                   #  140   0x350ea  6      
  movl $0x10030d00, %edi                         #  141   0x350f0  5      
  nop                                            #  142   0x350f5  1      
  callq .__cxa_guard_acquire                     #  143   0x350f6  5      
  testl %eax, %eax                               #  144   0x350fb  2      
  jne .L_353e0                                   #  145   0x350fd  6      
  nop                                            #  146   0x35103  1      
  nop                                            #  147   0x35104  1      
.L_352a0:                                        #        0x35105  0      
  movl 0xfffbbfd(%rip), %eax                     #  148   0x35105  6      
  jmpq .L_35000                                  #  149   0x3510b  5      
  nop                                            #  150   0x35110  1      
  nop                                            #  151   0x35111  1      
.L_352c0:                                        #        0x35112  0      
  movl $0x10030d00, %edi                         #  152   0x35112  5      
  nop                                            #  153   0x35117  1      
  nop                                            #  154   0x35118  1      
  callq .__cxa_guard_acquire                     #  155   0x35119  5      
  testl %eax, %eax                               #  156   0x3511e  2      
  je .L_34f80                                    #  157   0x35120  6      
  nop                                            #  158   0x35126  1      
  nop                                            #  159   0x35127  1      
  callq ._ZN2pp6Module3GetEv                     #  160   0x35128  5      
  movl %eax, %edi                                #  161   0x3512d  2      
  movl $0x10020644, %esi                         #  162   0x3512f  5      
  nop                                            #  163   0x35134  1      
  nop                                            #  164   0x35135  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  165   0x35136  5      
  movl $0x10030d00, %edi                         #  166   0x3513b  5      
  movl %eax, 0xfffbbc2(%rip)                     #  167   0x35140  6      
  nop                                            #  168   0x35146  1      
  nop                                            #  169   0x35147  1      
  callq .__cxa_guard_release                     #  170   0x35148  5      
  jmpq .L_34f80                                  #  171   0x3514d  5      
  nop                                            #  172   0x35152  1      
  nop                                            #  173   0x35153  1      
.L_35360:                                        #        0x35154  0      
  nop                                            #  174   0x35154  1      
  nop                                            #  175   0x35155  1      
  callq ._ZN2pp6Module3GetEv                     #  176   0x35156  5      
  movl %eax, %edi                                #  177   0x3515b  2      
  movl $0x10020654, %esi                         #  178   0x3515d  5      
  nop                                            #  179   0x35162  1      
  nop                                            #  180   0x35163  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  181   0x35164  5      
  movl $0x10030ce0, %edi                         #  182   0x35169  5      
  movl %eax, 0xfffbb74(%rip)                     #  183   0x3516e  6      
  nop                                            #  184   0x35174  1      
  nop                                            #  185   0x35175  1      
  callq .__cxa_guard_release                     #  186   0x35176  5      
  jmpq .L_35140                                  #  187   0x3517b  5      
  nop                                            #  188   0x35180  1      
  nop                                            #  189   0x35181  1      
.L_353e0:                                        #        0x35182  0      
  nop                                            #  190   0x35182  1      
  nop                                            #  191   0x35183  1      
  callq ._ZN2pp6Module3GetEv                     #  192   0x35184  5      
  movl %eax, %edi                                #  193   0x35189  2      
  movl $0x10020644, %esi                         #  194   0x3518b  5      
  nop                                            #  195   0x35190  1      
  nop                                            #  196   0x35191  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  197   0x35192  5      
  movl $0x10030d00, %edi                         #  198   0x35197  5      
  movl %eax, 0xfffbb66(%rip)                     #  199   0x3519c  6      
  nop                                            #  200   0x351a2  1      
  nop                                            #  201   0x351a3  1      
  callq .__cxa_guard_release                     #  202   0x351a4  5      
  jmpq .L_352a0                                  #  203   0x351a9  5      
  nop                                            #  204   0x351ae  1      
  nop                                            #  205   0x351af  1      
.L_35460:                                        #        0x351b0  0      
  nop                                            #  206   0x351b0  1      
  nop                                            #  207   0x351b1  1      
  callq ._ZN2pp6Module3GetEv                     #  208   0x351b2  5      
  movl %eax, %edi                                #  209   0x351b7  2      
  movl $0x10020664, %esi                         #  210   0x351b9  5      
  nop                                            #  211   0x351be  1      
  nop                                            #  212   0x351bf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  213   0x351c0  5      
  movl $0x10030cf0, %edi                         #  214   0x351c5  5      
  movl %eax, 0xfffbb28(%rip)                     #  215   0x351ca  6      
  nop                                            #  216   0x351d0  1      
  nop                                            #  217   0x351d1  1      
  callq .__cxa_guard_release                     #  218   0x351d2  5      
  jmpq .L_35240                                  #  219   0x351d7  5      
  nop                                            #  220   0x351dc  1      
  nop                                            #  221   0x351dd  1      
.L_354e0:                                        #        0x351de  0      
  movl %eax, %ebx                                #  222   0x351de  2      
  movl $0x10030d00, %edi                         #  223   0x351e0  5      
  nop                                            #  224   0x351e5  1      
  nop                                            #  225   0x351e6  1      
  callq .__cxa_guard_abort                       #  226   0x351e7  5      
  movl %ebx, %edi                                #  227   0x351ec  2      
  nop                                            #  228   0x351ee  1      
  nop                                            #  229   0x351ef  1      
  callq ._Unwind_Resume                          #  230   0x351f0  5      
.L_35520:                                        #        0x351f5  0      
  movl %eax, %ebx                                #  231   0x351f5  2      
  movl $0x10030cf0, %edi                         #  232   0x351f7  5      
  nop                                            #  233   0x351fc  1      
  nop                                            #  234   0x351fd  1      
  callq .__cxa_guard_abort                       #  235   0x351fe  5      
  movl %ebx, %edi                                #  236   0x35203  2      
  nop                                            #  237   0x35205  1      
  nop                                            #  238   0x35206  1      
  callq ._Unwind_Resume                          #  239   0x35207  5      
  jmpq .L_35520                                  #  240   0x3520c  5      
  nop                                            #  241   0x35211  1      
  nop                                            #  242   0x35212  1      
.L_35580:                                        #        0x35213  0      
  movl %eax, %ebx                                #  243   0x35213  2      
  movl $0x10030ce0, %edi                         #  244   0x35215  5      
  nop                                            #  245   0x3521a  1      
  nop                                            #  246   0x3521b  1      
  callq .__cxa_guard_abort                       #  247   0x3521c  5      
  movl %ebx, %edi                                #  248   0x35221  2      
  nop                                            #  249   0x35223  1      
  nop                                            #  250   0x35224  1      
  callq ._Unwind_Resume                          #  251   0x35225  5      
  jmpq .L_35580                                  #  252   0x3522a  5      
  nop                                            #  253   0x3522f  1      
  nop                                            #  254   0x35230  1      
  jmpq .L_354e0                                  #  255   0x35231  5      
  nop                                            #  256   0x35236  1      
  nop                                            #  257   0x35237  1      
  nop                                            #  258   0x35238  1      
                                                                          
.size _ZNK2pp7FileRef9GetParentEv, .-_ZNK2pp7FileRef9GetParentEv

