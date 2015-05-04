  .text
  .globl _ZNK2pp7FileRef9GetParentEv
  .type _ZNK2pp7FileRef9GetParentEv, @function

#! file-offset 0x34fa0
#! rip-offset  0x34fa0
#! capacity    1760 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef9GetParentEv:                    #        0x34fa0  0      
  pushq %r12                                     #  1     0x34fa0  3      
  movl %esi, %r12d                               #  2     0x34fa3  3      
  pushq %rbx                                     #  3     0x34fa6  2      
  movl %edi, %ebx                                #  4     0x34fa8  2      
  subl $0x8, %esp                                #  5     0x34faa  3      
  addq %r15, %rsp                                #  6     0x34fad  3      
  cmpb $0x0, 0xfffbd29(%rip)                     #  7     0x34fb0  7      
  je .L_351e0                                    #  8     0x34fb7  6      
  nop                                            #  9     0x34fbd  1      
.L_34fc0:                                        #        0x34fbe  0      
  movl 0xfffbd24(%rip), %eax                     #  10    0x34fbe  6      
  testq %rax, %rax                               #  11    0x34fc4  3      
  jne .L_35180                                   #  12    0x34fc7  6      
  cmpb $0x0, 0xfffbd1c(%rip)                     #  13    0x34fcd  7      
  je .L_350e0                                    #  14    0x34fd4  6      
  nop                                            #  15    0x34fda  1      
.L_34fe0:                                        #        0x34fdb  0      
  movl 0xfffbd17(%rip), %eax                     #  16    0x34fdb  6      
  testq %rax, %rax                               #  17    0x34fe1  3      
  jne .L_35060                                   #  18    0x34fe4  6      
  cmpb $0x0, 0xfffbd0f(%rip)                     #  19    0x34fea  7      
  je .L_35340                                    #  20    0x34ff1  6      
  nop                                            #  21    0x34ff7  1      
.L_35000:                                        #        0x34ff8  0      
  movl 0xfffbd0a(%rip), %eax                     #  22    0x34ff8  6      
  testq %rax, %rax                               #  23    0x34ffe  3      
  jne .L_352e0                                   #  24    0x35001  6      
  movl %ebx, %edi                                #  25    0x35007  2      
  nop                                            #  26    0x35009  1      
  callq ._ZN2pp8ResourceC2Ev                     #  27    0x3500a  5      
  movl %ebx, %ebx                                #  28    0x3500f  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  29    0x35011  8      
  movl %ebx, %eax                                #  30    0x35019  2      
  addl $0x8, %esp                                #  31    0x3501b  3      
  addq %r15, %rsp                                #  32    0x3501e  3      
  popq %rbx                                      #  33    0x35021  2      
  popq %r12                                      #  34    0x35023  3      
  popq %r11                                      #  35    0x35026  3      
  nop                                            #  36    0x35029  1      
  andl $0xffffffe0, %r11d                        #  37    0x3502a  7      
  addq %r15, %r11                                #  38    0x35031  3      
  jmpq %r11                                      #  39    0x35034  3      
  nop                                            #  40    0x35037  1      
  nop                                            #  41    0x35038  1      
.L_35060:                                        #        0x35039  0      
  cmpb $0x0, 0xfffbcb0(%rip)                     #  42    0x35039  7      
  je .L_35280                                    #  43    0x35040  6      
  nop                                            #  44    0x35046  1      
  nop                                            #  45    0x35047  1      
.L_35080:                                        #        0x35048  0      
  movl %eax, %eax                                #  46    0x35048  2      
  movl 0x14(%r15,%rax,1), %eax                   #  47    0x3504a  5      
  movl %r12d, %r12d                              #  48    0x3504f  3      
  movl 0x4(%r15,%r12,1), %edi                    #  49    0x35052  5      
  nop                                            #  50    0x35057  1      
  andl $0xffffffe0, %eax                         #  51    0x35058  5      
  addq %r15, %rax                                #  52    0x3505d  3      
  callq %rax                                     #  53    0x35060  2      
  movl %ebx, %edi                                #  54    0x35062  2      
  movl %eax, %edx                                #  55    0x35064  2      
  xorl %esi, %esi                                #  56    0x35066  2      
  nop                                            #  57    0x35068  1      
  nop                                            #  58    0x35069  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  59    0x3506a  5      
  addl $0x8, %esp                                #  60    0x3506f  3      
  addq %r15, %rsp                                #  61    0x35072  3      
  movl %ebx, %eax                                #  62    0x35075  2      
  popq %rbx                                      #  63    0x35077  2      
  popq %r12                                      #  64    0x35079  3      
  popq %r11                                      #  65    0x3507c  3      
  andl $0xffffffe0, %r11d                        #  66    0x3507f  7      
  addq %r15, %r11                                #  67    0x35086  3      
  jmpq %r11                                      #  68    0x35089  3      
  nop                                            #  69    0x3508c  1      
.L_350e0:                                        #        0x3508d  0      
  movl $0x10030cf0, %edi                         #  70    0x3508d  5      
  nop                                            #  71    0x35092  1      
  nop                                            #  72    0x35093  1      
  callq .__cxa_guard_acquire                     #  73    0x35094  5      
  testl %eax, %eax                               #  74    0x35099  2      
  je .L_34fe0                                    #  75    0x3509b  6      
  nop                                            #  76    0x350a1  1      
  nop                                            #  77    0x350a2  1      
  callq ._ZN2pp6Module3GetEv                     #  78    0x350a3  5      
  movl %eax, %edi                                #  79    0x350a8  2      
  movl $0x10020664, %esi                         #  80    0x350aa  5      
  nop                                            #  81    0x350af  1      
  nop                                            #  82    0x350b0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  83    0x350b1  5      
  movl $0x10030cf0, %edi                         #  84    0x350b6  5      
  movl %eax, 0xfffbc37(%rip)                     #  85    0x350bb  6      
  nop                                            #  86    0x350c1  1      
  nop                                            #  87    0x350c2  1      
  callq .__cxa_guard_release                     #  88    0x350c3  5      
  jmpq .L_34fe0                                  #  89    0x350c8  5      
  nop                                            #  90    0x350cd  1      
  nop                                            #  91    0x350ce  1      
.L_35180:                                        #        0x350cf  0      
  cmpb $0x0, 0xfffbc0a(%rip)                     #  92    0x350cf  7      
  jne .L_35080                                   #  93    0x350d6  6      
  movl $0x10030ce0, %edi                         #  94    0x350dc  5      
  nop                                            #  95    0x350e1  1      
  callq .__cxa_guard_acquire                     #  96    0x350e2  5      
  testl %eax, %eax                               #  97    0x350e7  2      
  jne .L_353e0                                   #  98    0x350e9  6      
  nop                                            #  99    0x350ef  1      
  nop                                            #  100   0x350f0  1      
.L_351c0:                                        #        0x350f1  0      
  movl 0xfffbbf1(%rip), %eax                     #  101   0x350f1  6      
  jmpq .L_35080                                  #  102   0x350f7  5      
  nop                                            #  103   0x350fc  1      
  nop                                            #  104   0x350fd  1      
.L_351e0:                                        #        0x350fe  0      
  movl $0x10030ce0, %edi                         #  105   0x350fe  5      
  nop                                            #  106   0x35103  1      
  nop                                            #  107   0x35104  1      
  callq .__cxa_guard_acquire                     #  108   0x35105  5      
  testl %eax, %eax                               #  109   0x3510a  2      
  je .L_34fc0                                    #  110   0x3510c  6      
  nop                                            #  111   0x35112  1      
  nop                                            #  112   0x35113  1      
  callq ._ZN2pp6Module3GetEv                     #  113   0x35114  5      
  movl %eax, %edi                                #  114   0x35119  2      
  movl $0x10020654, %esi                         #  115   0x3511b  5      
  nop                                            #  116   0x35120  1      
  nop                                            #  117   0x35121  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  118   0x35122  5      
  movl $0x10030ce0, %edi                         #  119   0x35127  5      
  movl %eax, 0xfffbbb6(%rip)                     #  120   0x3512c  6      
  nop                                            #  121   0x35132  1      
  nop                                            #  122   0x35133  1      
  callq .__cxa_guard_release                     #  123   0x35134  5      
  jmpq .L_34fc0                                  #  124   0x35139  5      
  nop                                            #  125   0x3513e  1      
  nop                                            #  126   0x3513f  1      
.L_35280:                                        #        0x35140  0      
  movl $0x10030cf0, %edi                         #  127   0x35140  5      
  nop                                            #  128   0x35145  1      
  nop                                            #  129   0x35146  1      
  callq .__cxa_guard_acquire                     #  130   0x35147  5      
  testl %eax, %eax                               #  131   0x3514c  2      
  jne .L_354e0                                   #  132   0x3514e  6      
  nop                                            #  133   0x35154  1      
  nop                                            #  134   0x35155  1      
.L_352c0:                                        #        0x35156  0      
  movl 0xfffbb9c(%rip), %eax                     #  135   0x35156  6      
  jmpq .L_35080                                  #  136   0x3515c  5      
  nop                                            #  137   0x35161  1      
  nop                                            #  138   0x35162  1      
.L_352e0:                                        #        0x35163  0      
  cmpb $0x0, 0xfffbb96(%rip)                     #  139   0x35163  7      
  jne .L_35080                                   #  140   0x3516a  6      
  movl $0x10030d00, %edi                         #  141   0x35170  5      
  nop                                            #  142   0x35175  1      
  callq .__cxa_guard_acquire                     #  143   0x35176  5      
  testl %eax, %eax                               #  144   0x3517b  2      
  jne .L_35460                                   #  145   0x3517d  6      
  nop                                            #  146   0x35183  1      
  nop                                            #  147   0x35184  1      
.L_35320:                                        #        0x35185  0      
  movl 0xfffbb7d(%rip), %eax                     #  148   0x35185  6      
  jmpq .L_35080                                  #  149   0x3518b  5      
  nop                                            #  150   0x35190  1      
  nop                                            #  151   0x35191  1      
.L_35340:                                        #        0x35192  0      
  movl $0x10030d00, %edi                         #  152   0x35192  5      
  nop                                            #  153   0x35197  1      
  nop                                            #  154   0x35198  1      
  callq .__cxa_guard_acquire                     #  155   0x35199  5      
  testl %eax, %eax                               #  156   0x3519e  2      
  je .L_35000                                    #  157   0x351a0  6      
  nop                                            #  158   0x351a6  1      
  nop                                            #  159   0x351a7  1      
  callq ._ZN2pp6Module3GetEv                     #  160   0x351a8  5      
  movl %eax, %edi                                #  161   0x351ad  2      
  movl $0x10020644, %esi                         #  162   0x351af  5      
  nop                                            #  163   0x351b4  1      
  nop                                            #  164   0x351b5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  165   0x351b6  5      
  movl $0x10030d00, %edi                         #  166   0x351bb  5      
  movl %eax, 0xfffbb42(%rip)                     #  167   0x351c0  6      
  nop                                            #  168   0x351c6  1      
  nop                                            #  169   0x351c7  1      
  callq .__cxa_guard_release                     #  170   0x351c8  5      
  jmpq .L_35000                                  #  171   0x351cd  5      
  nop                                            #  172   0x351d2  1      
  nop                                            #  173   0x351d3  1      
.L_353e0:                                        #        0x351d4  0      
  nop                                            #  174   0x351d4  1      
  nop                                            #  175   0x351d5  1      
  callq ._ZN2pp6Module3GetEv                     #  176   0x351d6  5      
  movl %eax, %edi                                #  177   0x351db  2      
  movl $0x10020654, %esi                         #  178   0x351dd  5      
  nop                                            #  179   0x351e2  1      
  nop                                            #  180   0x351e3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  181   0x351e4  5      
  movl $0x10030ce0, %edi                         #  182   0x351e9  5      
  movl %eax, 0xfffbaf4(%rip)                     #  183   0x351ee  6      
  nop                                            #  184   0x351f4  1      
  nop                                            #  185   0x351f5  1      
  callq .__cxa_guard_release                     #  186   0x351f6  5      
  jmpq .L_351c0                                  #  187   0x351fb  5      
  nop                                            #  188   0x35200  1      
  nop                                            #  189   0x35201  1      
.L_35460:                                        #        0x35202  0      
  nop                                            #  190   0x35202  1      
  nop                                            #  191   0x35203  1      
  callq ._ZN2pp6Module3GetEv                     #  192   0x35204  5      
  movl %eax, %edi                                #  193   0x35209  2      
  movl $0x10020644, %esi                         #  194   0x3520b  5      
  nop                                            #  195   0x35210  1      
  nop                                            #  196   0x35211  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  197   0x35212  5      
  movl $0x10030d00, %edi                         #  198   0x35217  5      
  movl %eax, 0xfffbae6(%rip)                     #  199   0x3521c  6      
  nop                                            #  200   0x35222  1      
  nop                                            #  201   0x35223  1      
  callq .__cxa_guard_release                     #  202   0x35224  5      
  jmpq .L_35320                                  #  203   0x35229  5      
  nop                                            #  204   0x3522e  1      
  nop                                            #  205   0x3522f  1      
.L_354e0:                                        #        0x35230  0      
  nop                                            #  206   0x35230  1      
  nop                                            #  207   0x35231  1      
  callq ._ZN2pp6Module3GetEv                     #  208   0x35232  5      
  movl %eax, %edi                                #  209   0x35237  2      
  movl $0x10020664, %esi                         #  210   0x35239  5      
  nop                                            #  211   0x3523e  1      
  nop                                            #  212   0x3523f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  213   0x35240  5      
  movl $0x10030cf0, %edi                         #  214   0x35245  5      
  movl %eax, 0xfffbaa8(%rip)                     #  215   0x3524a  6      
  nop                                            #  216   0x35250  1      
  nop                                            #  217   0x35251  1      
  callq .__cxa_guard_release                     #  218   0x35252  5      
  jmpq .L_352c0                                  #  219   0x35257  5      
  nop                                            #  220   0x3525c  1      
  nop                                            #  221   0x3525d  1      
.L_35560:                                        #        0x3525e  0      
  movl %eax, %ebx                                #  222   0x3525e  2      
  movl $0x10030d00, %edi                         #  223   0x35260  5      
  nop                                            #  224   0x35265  1      
  nop                                            #  225   0x35266  1      
  callq .__cxa_guard_abort                       #  226   0x35267  5      
  movl %ebx, %edi                                #  227   0x3526c  2      
  nop                                            #  228   0x3526e  1      
  nop                                            #  229   0x3526f  1      
  callq ._Unwind_Resume                          #  230   0x35270  5      
.L_355a0:                                        #        0x35275  0      
  movl %eax, %ebx                                #  231   0x35275  2      
  movl $0x10030cf0, %edi                         #  232   0x35277  5      
  nop                                            #  233   0x3527c  1      
  nop                                            #  234   0x3527d  1      
  callq .__cxa_guard_abort                       #  235   0x3527e  5      
  movl %ebx, %edi                                #  236   0x35283  2      
  nop                                            #  237   0x35285  1      
  nop                                            #  238   0x35286  1      
  callq ._Unwind_Resume                          #  239   0x35287  5      
  jmpq .L_355a0                                  #  240   0x3528c  5      
  nop                                            #  241   0x35291  1      
  nop                                            #  242   0x35292  1      
.L_35600:                                        #        0x35293  0      
  movl %eax, %ebx                                #  243   0x35293  2      
  movl $0x10030ce0, %edi                         #  244   0x35295  5      
  nop                                            #  245   0x3529a  1      
  nop                                            #  246   0x3529b  1      
  callq .__cxa_guard_abort                       #  247   0x3529c  5      
  movl %ebx, %edi                                #  248   0x352a1  2      
  nop                                            #  249   0x352a3  1      
  nop                                            #  250   0x352a4  1      
  callq ._Unwind_Resume                          #  251   0x352a5  5      
  jmpq .L_35600                                  #  252   0x352aa  5      
  nop                                            #  253   0x352af  1      
  nop                                            #  254   0x352b0  1      
  jmpq .L_35560                                  #  255   0x352b1  5      
  nop                                            #  256   0x352b6  1      
  nop                                            #  257   0x352b7  1      
  nop                                            #  258   0x352b8  1      
                                                                          
.size _ZNK2pp7FileRef9GetParentEv, .-_ZNK2pp7FileRef9GetParentEv

