  .text
  .globl _ZNK2pp7FileRef7GetPathEv
  .type _ZNK2pp7FileRef7GetPathEv, @function

#! file-offset 0x341a0
#! rip-offset  0x341a0
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetPathEv:                      #        0x341a0  0      
  pushq %r12                                     #  1     0x341a0  3      
  movl %esi, %r12d                               #  2     0x341a3  3      
  pushq %rbx                                     #  3     0x341a6  2      
  movl %edi, %ebx                                #  4     0x341a8  2      
  subl $0x48, %esp                               #  5     0x341aa  3      
  addq %r15, %rsp                                #  6     0x341ad  3      
  cmpb $0x0, 0xfffcb29(%rip)                     #  7     0x341b0  7      
  je .L_343c0                                    #  8     0x341b7  6      
  nop                                            #  9     0x341bd  1      
.L_341c0:                                        #        0x341be  0      
  movl 0xfffcb24(%rip), %eax                     #  10    0x341be  6      
  testq %rax, %rax                               #  11    0x341c4  3      
  jne .L_34360                                   #  12    0x341c7  6      
  cmpb $0x0, 0xfffcb1c(%rip)                     #  13    0x341cd  7      
  je .L_342c0                                    #  14    0x341d4  6      
  nop                                            #  15    0x341da  1      
.L_341e0:                                        #        0x341db  0      
  movl 0xfffcb17(%rip), %eax                     #  16    0x341db  6      
  testq %rax, %rax                               #  17    0x341e1  3      
  jne .L_34240                                   #  18    0x341e4  6      
  cmpb $0x0, 0xfffcb0f(%rip)                     #  19    0x341ea  7      
  je .L_34520                                    #  20    0x341f1  6      
  nop                                            #  21    0x341f7  1      
.L_34200:                                        #        0x341f8  0      
  movl 0xfffcb0a(%rip), %eax                     #  22    0x341f8  6      
  testq %rax, %rax                               #  23    0x341fe  3      
  jne .L_344c0                                   #  24    0x34201  6      
  movl %ebx, %edi                                #  25    0x34207  2      
  nop                                            #  26    0x34209  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x3420a  5      
  addl $0x48, %esp                               #  28    0x3420f  3      
  addq %r15, %rsp                                #  29    0x34212  3      
  movl %ebx, %eax                                #  30    0x34215  2      
  popq %rbx                                      #  31    0x34217  2      
  popq %r12                                      #  32    0x34219  3      
  popq %r11                                      #  33    0x3421c  3      
  andl $0xffffffe0, %r11d                        #  34    0x3421f  7      
  addq %r15, %r11                                #  35    0x34226  3      
  jmpq %r11                                      #  36    0x34229  3      
  nop                                            #  37    0x3422c  1      
.L_34240:                                        #        0x3422d  0      
  cmpb $0x0, 0xfffcabc(%rip)                     #  38    0x3422d  7      
  je .L_34460                                    #  39    0x34234  6      
  nop                                            #  40    0x3423a  1      
  nop                                            #  41    0x3423b  1      
.L_34260:                                        #        0x3423c  0      
  movl %eax, %eax                                #  42    0x3423c  2      
  movl 0x10(%r15,%rax,1), %eax                   #  43    0x3423e  5      
  movl %r12d, %r12d                              #  44    0x34243  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x34246  5      
  nop                                            #  46    0x3424b  1      
  andl $0xffffffe0, %eax                         #  47    0x3424c  5      
  addq %r15, %rax                                #  48    0x34251  3      
  callq %rax                                     #  49    0x34254  2      
  movl %ebx, %ebx                                #  50    0x34256  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x34258  8      
  movl %ebx, %ebx                                #  52    0x34260  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x34262  5      
  movl %ebx, %ebx                                #  54    0x34267  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x34269  6      
  movl %ebx, %ebx                                #  56    0x3426f  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x34271  5      
  addl $0x48, %esp                               #  58    0x34276  3      
  addq %r15, %rsp                                #  59    0x34279  3      
  movl %ebx, %eax                                #  60    0x3427c  2      
  popq %rbx                                      #  61    0x3427e  2      
  popq %r12                                      #  62    0x34280  3      
  popq %r11                                      #  63    0x34283  3      
  andl $0xffffffe0, %r11d                        #  64    0x34286  7      
  addq %r15, %r11                                #  65    0x3428d  3      
  jmpq %r11                                      #  66    0x34290  3      
  nop                                            #  67    0x34293  1      
.L_342c0:                                        #        0x34294  0      
  movl $0x10030cf0, %edi                         #  68    0x34294  5      
  nop                                            #  69    0x34299  1      
  nop                                            #  70    0x3429a  1      
  callq .__cxa_guard_acquire                     #  71    0x3429b  5      
  testl %eax, %eax                               #  72    0x342a0  2      
  je .L_341e0                                    #  73    0x342a2  6      
  nop                                            #  74    0x342a8  1      
  nop                                            #  75    0x342a9  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x342aa  5      
  movl %eax, %edi                                #  77    0x342af  2      
  movl $0x10020664, %esi                         #  78    0x342b1  5      
  nop                                            #  79    0x342b6  1      
  nop                                            #  80    0x342b7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x342b8  5      
  movl $0x10030cf0, %edi                         #  82    0x342bd  5      
  movl %eax, 0xfffca30(%rip)                     #  83    0x342c2  6      
  nop                                            #  84    0x342c8  1      
  nop                                            #  85    0x342c9  1      
  callq .__cxa_guard_release                     #  86    0x342ca  5      
  jmpq .L_341e0                                  #  87    0x342cf  5      
  nop                                            #  88    0x342d4  1      
  nop                                            #  89    0x342d5  1      
.L_34360:                                        #        0x342d6  0      
  cmpb $0x0, 0xfffca03(%rip)                     #  90    0x342d6  7      
  jne .L_34260                                   #  91    0x342dd  6      
  movl $0x10030ce0, %edi                         #  92    0x342e3  5      
  nop                                            #  93    0x342e8  1      
  callq .__cxa_guard_acquire                     #  94    0x342e9  5      
  testl %eax, %eax                               #  95    0x342ee  2      
  jne .L_345c0                                   #  96    0x342f0  6      
  nop                                            #  97    0x342f6  1      
  nop                                            #  98    0x342f7  1      
.L_343a0:                                        #        0x342f8  0      
  movl 0xfffc9ea(%rip), %eax                     #  99    0x342f8  6      
  jmpq .L_34260                                  #  100   0x342fe  5      
  nop                                            #  101   0x34303  1      
  nop                                            #  102   0x34304  1      
.L_343c0:                                        #        0x34305  0      
  movl $0x10030ce0, %edi                         #  103   0x34305  5      
  nop                                            #  104   0x3430a  1      
  nop                                            #  105   0x3430b  1      
  callq .__cxa_guard_acquire                     #  106   0x3430c  5      
  testl %eax, %eax                               #  107   0x34311  2      
  je .L_341c0                                    #  108   0x34313  6      
  nop                                            #  109   0x34319  1      
  nop                                            #  110   0x3431a  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x3431b  5      
  movl %eax, %edi                                #  112   0x34320  2      
  movl $0x10020654, %esi                         #  113   0x34322  5      
  nop                                            #  114   0x34327  1      
  nop                                            #  115   0x34328  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x34329  5      
  movl $0x10030ce0, %edi                         #  117   0x3432e  5      
  movl %eax, 0xfffc9af(%rip)                     #  118   0x34333  6      
  nop                                            #  119   0x34339  1      
  nop                                            #  120   0x3433a  1      
  callq .__cxa_guard_release                     #  121   0x3433b  5      
  jmpq .L_341c0                                  #  122   0x34340  5      
  nop                                            #  123   0x34345  1      
  nop                                            #  124   0x34346  1      
.L_34460:                                        #        0x34347  0      
  movl $0x10030cf0, %edi                         #  125   0x34347  5      
  nop                                            #  126   0x3434c  1      
  nop                                            #  127   0x3434d  1      
  callq .__cxa_guard_acquire                     #  128   0x3434e  5      
  testl %eax, %eax                               #  129   0x34353  2      
  jne .L_346c0                                   #  130   0x34355  6      
  nop                                            #  131   0x3435b  1      
  nop                                            #  132   0x3435c  1      
.L_344a0:                                        #        0x3435d  0      
  movl 0xfffc995(%rip), %eax                     #  133   0x3435d  6      
  jmpq .L_34260                                  #  134   0x34363  5      
  nop                                            #  135   0x34368  1      
  nop                                            #  136   0x34369  1      
.L_344c0:                                        #        0x3436a  0      
  cmpb $0x0, 0xfffc98f(%rip)                     #  137   0x3436a  7      
  jne .L_34260                                   #  138   0x34371  6      
  movl $0x10030d00, %edi                         #  139   0x34377  5      
  nop                                            #  140   0x3437c  1      
  callq .__cxa_guard_acquire                     #  141   0x3437d  5      
  testl %eax, %eax                               #  142   0x34382  2      
  jne .L_34640                                   #  143   0x34384  6      
  nop                                            #  144   0x3438a  1      
  nop                                            #  145   0x3438b  1      
.L_34500:                                        #        0x3438c  0      
  movl 0xfffc976(%rip), %eax                     #  146   0x3438c  6      
  jmpq .L_34260                                  #  147   0x34392  5      
  nop                                            #  148   0x34397  1      
  nop                                            #  149   0x34398  1      
.L_34520:                                        #        0x34399  0      
  movl $0x10030d00, %edi                         #  150   0x34399  5      
  nop                                            #  151   0x3439e  1      
  nop                                            #  152   0x3439f  1      
  callq .__cxa_guard_acquire                     #  153   0x343a0  5      
  testl %eax, %eax                               #  154   0x343a5  2      
  je .L_34200                                    #  155   0x343a7  6      
  nop                                            #  156   0x343ad  1      
  nop                                            #  157   0x343ae  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x343af  5      
  movl %eax, %edi                                #  159   0x343b4  2      
  movl $0x10020644, %esi                         #  160   0x343b6  5      
  nop                                            #  161   0x343bb  1      
  nop                                            #  162   0x343bc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x343bd  5      
  movl $0x10030d00, %edi                         #  164   0x343c2  5      
  movl %eax, 0xfffc93b(%rip)                     #  165   0x343c7  6      
  nop                                            #  166   0x343cd  1      
  nop                                            #  167   0x343ce  1      
  callq .__cxa_guard_release                     #  168   0x343cf  5      
  jmpq .L_34200                                  #  169   0x343d4  5      
  nop                                            #  170   0x343d9  1      
  nop                                            #  171   0x343da  1      
.L_345c0:                                        #        0x343db  0      
  nop                                            #  172   0x343db  1      
  nop                                            #  173   0x343dc  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x343dd  5      
  movl %eax, %edi                                #  175   0x343e2  2      
  movl $0x10020654, %esi                         #  176   0x343e4  5      
  nop                                            #  177   0x343e9  1      
  nop                                            #  178   0x343ea  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x343eb  5      
  movl $0x10030ce0, %edi                         #  180   0x343f0  5      
  movl %eax, 0xfffc8ed(%rip)                     #  181   0x343f5  6      
  nop                                            #  182   0x343fb  1      
  nop                                            #  183   0x343fc  1      
  callq .__cxa_guard_release                     #  184   0x343fd  5      
  jmpq .L_343a0                                  #  185   0x34402  5      
  nop                                            #  186   0x34407  1      
  nop                                            #  187   0x34408  1      
.L_34640:                                        #        0x34409  0      
  nop                                            #  188   0x34409  1      
  nop                                            #  189   0x3440a  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x3440b  5      
  movl %eax, %edi                                #  191   0x34410  2      
  movl $0x10020644, %esi                         #  192   0x34412  5      
  nop                                            #  193   0x34417  1      
  nop                                            #  194   0x34418  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x34419  5      
  movl $0x10030d00, %edi                         #  196   0x3441e  5      
  movl %eax, 0xfffc8df(%rip)                     #  197   0x34423  6      
  nop                                            #  198   0x34429  1      
  nop                                            #  199   0x3442a  1      
  callq .__cxa_guard_release                     #  200   0x3442b  5      
  jmpq .L_34500                                  #  201   0x34430  5      
  nop                                            #  202   0x34435  1      
  nop                                            #  203   0x34436  1      
.L_346c0:                                        #        0x34437  0      
  nop                                            #  204   0x34437  1      
  nop                                            #  205   0x34438  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x34439  5      
  movl %eax, %edi                                #  207   0x3443e  2      
  movl $0x10020664, %esi                         #  208   0x34440  5      
  nop                                            #  209   0x34445  1      
  nop                                            #  210   0x34446  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x34447  5      
  movl $0x10030cf0, %edi                         #  212   0x3444c  5      
  movl %eax, 0xfffc8a1(%rip)                     #  213   0x34451  6      
  nop                                            #  214   0x34457  1      
  nop                                            #  215   0x34458  1      
  callq .__cxa_guard_release                     #  216   0x34459  5      
  jmpq .L_344a0                                  #  217   0x3445e  5      
  nop                                            #  218   0x34463  1      
  nop                                            #  219   0x34464  1      
.L_34740:                                        #        0x34465  0      
  movl %eax, %ebx                                #  220   0x34465  2      
  movl $0x10030d00, %edi                         #  221   0x34467  5      
  nop                                            #  222   0x3446c  1      
  nop                                            #  223   0x3446d  1      
  callq .__cxa_guard_abort                       #  224   0x3446e  5      
  movl %ebx, %edi                                #  225   0x34473  2      
  nop                                            #  226   0x34475  1      
  nop                                            #  227   0x34476  1      
  callq ._Unwind_Resume                          #  228   0x34477  5      
.L_34780:                                        #        0x3447c  0      
  movl %eax, %ebx                                #  229   0x3447c  2      
  movl $0x10030cf0, %edi                         #  230   0x3447e  5      
  nop                                            #  231   0x34483  1      
  nop                                            #  232   0x34484  1      
  callq .__cxa_guard_abort                       #  233   0x34485  5      
  movl %ebx, %edi                                #  234   0x3448a  2      
  nop                                            #  235   0x3448c  1      
  nop                                            #  236   0x3448d  1      
  callq ._Unwind_Resume                          #  237   0x3448e  5      
  jmpq .L_34780                                  #  238   0x34493  5      
  nop                                            #  239   0x34498  1      
  nop                                            #  240   0x34499  1      
.L_347e0:                                        #        0x3449a  0      
  movl %eax, %ebx                                #  241   0x3449a  2      
  movl $0x10030ce0, %edi                         #  242   0x3449c  5      
  nop                                            #  243   0x344a1  1      
  nop                                            #  244   0x344a2  1      
  callq .__cxa_guard_abort                       #  245   0x344a3  5      
  movl %ebx, %edi                                #  246   0x344a8  2      
  nop                                            #  247   0x344aa  1      
  nop                                            #  248   0x344ab  1      
  callq ._Unwind_Resume                          #  249   0x344ac  5      
  jmpq .L_347e0                                  #  250   0x344b1  5      
  nop                                            #  251   0x344b6  1      
  nop                                            #  252   0x344b7  1      
  jmpq .L_34740                                  #  253   0x344b8  5      
  nop                                            #  254   0x344bd  1      
  nop                                            #  255   0x344be  1      
  nop                                            #  256   0x344bf  1      
                                                                          
.size _ZNK2pp7FileRef7GetPathEv, .-_ZNK2pp7FileRef7GetPathEv

