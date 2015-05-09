  .text
  .globl _ZNK2pp7FileRef7GetPathEv
  .type _ZNK2pp7FileRef7GetPathEv, @function

#! file-offset 0x34180
#! rip-offset  0x34180
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetPathEv:                      #        0x34180  0      
  pushq %r12                                     #  1     0x34180  3      
  movl %esi, %r12d                               #  2     0x34183  3      
  pushq %rbx                                     #  3     0x34186  2      
  movl %edi, %ebx                                #  4     0x34188  2      
  subl $0x48, %esp                               #  5     0x3418a  3      
  addq %r15, %rsp                                #  6     0x3418d  3      
  cmpb $0x0, 0xfffcb49(%rip)                     #  7     0x34190  7      
  je .L_343a0                                    #  8     0x34197  6      
  nop                                            #  9     0x3419d  1      
.L_341a0:                                        #        0x3419e  0      
  movl 0xfffcb44(%rip), %eax                     #  10    0x3419e  6      
  testq %rax, %rax                               #  11    0x341a4  3      
  jne .L_34340                                   #  12    0x341a7  6      
  cmpb $0x0, 0xfffcb3c(%rip)                     #  13    0x341ad  7      
  je .L_342a0                                    #  14    0x341b4  6      
  nop                                            #  15    0x341ba  1      
.L_341c0:                                        #        0x341bb  0      
  movl 0xfffcb37(%rip), %eax                     #  16    0x341bb  6      
  testq %rax, %rax                               #  17    0x341c1  3      
  jne .L_34220                                   #  18    0x341c4  6      
  cmpb $0x0, 0xfffcb2f(%rip)                     #  19    0x341ca  7      
  je .L_34500                                    #  20    0x341d1  6      
  nop                                            #  21    0x341d7  1      
.L_341e0:                                        #        0x341d8  0      
  movl 0xfffcb2a(%rip), %eax                     #  22    0x341d8  6      
  testq %rax, %rax                               #  23    0x341de  3      
  jne .L_344a0                                   #  24    0x341e1  6      
  movl %ebx, %edi                                #  25    0x341e7  2      
  nop                                            #  26    0x341e9  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x341ea  5      
  addl $0x48, %esp                               #  28    0x341ef  3      
  addq %r15, %rsp                                #  29    0x341f2  3      
  movl %ebx, %eax                                #  30    0x341f5  2      
  popq %rbx                                      #  31    0x341f7  2      
  popq %r12                                      #  32    0x341f9  3      
  popq %r11                                      #  33    0x341fc  3      
  andl $0xffffffe0, %r11d                        #  34    0x341ff  7      
  addq %r15, %r11                                #  35    0x34206  3      
  jmpq %r11                                      #  36    0x34209  3      
  nop                                            #  37    0x3420c  1      
.L_34220:                                        #        0x3420d  0      
  cmpb $0x0, 0xfffcadc(%rip)                     #  38    0x3420d  7      
  je .L_34440                                    #  39    0x34214  6      
  nop                                            #  40    0x3421a  1      
  nop                                            #  41    0x3421b  1      
.L_34240:                                        #        0x3421c  0      
  movl %eax, %eax                                #  42    0x3421c  2      
  movl 0x10(%r15,%rax,1), %eax                   #  43    0x3421e  5      
  movl %r12d, %r12d                              #  44    0x34223  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x34226  5      
  nop                                            #  46    0x3422b  1      
  andl $0xffffffe0, %eax                         #  47    0x3422c  5      
  addq %r15, %rax                                #  48    0x34231  3      
  callq %rax                                     #  49    0x34234  2      
  movl %ebx, %ebx                                #  50    0x34236  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x34238  8      
  movl %ebx, %ebx                                #  52    0x34240  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x34242  5      
  movl %ebx, %ebx                                #  54    0x34247  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x34249  6      
  movl %ebx, %ebx                                #  56    0x3424f  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x34251  5      
  addl $0x48, %esp                               #  58    0x34256  3      
  addq %r15, %rsp                                #  59    0x34259  3      
  movl %ebx, %eax                                #  60    0x3425c  2      
  popq %rbx                                      #  61    0x3425e  2      
  popq %r12                                      #  62    0x34260  3      
  popq %r11                                      #  63    0x34263  3      
  andl $0xffffffe0, %r11d                        #  64    0x34266  7      
  addq %r15, %r11                                #  65    0x3426d  3      
  jmpq %r11                                      #  66    0x34270  3      
  nop                                            #  67    0x34273  1      
.L_342a0:                                        #        0x34274  0      
  movl $0x10030cf0, %edi                         #  68    0x34274  5      
  nop                                            #  69    0x34279  1      
  nop                                            #  70    0x3427a  1      
  callq .__cxa_guard_acquire                     #  71    0x3427b  5      
  testl %eax, %eax                               #  72    0x34280  2      
  je .L_341c0                                    #  73    0x34282  6      
  nop                                            #  74    0x34288  1      
  nop                                            #  75    0x34289  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x3428a  5      
  movl %eax, %edi                                #  77    0x3428f  2      
  movl $0x10020664, %esi                         #  78    0x34291  5      
  nop                                            #  79    0x34296  1      
  nop                                            #  80    0x34297  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x34298  5      
  movl $0x10030cf0, %edi                         #  82    0x3429d  5      
  movl %eax, 0xfffca50(%rip)                     #  83    0x342a2  6      
  nop                                            #  84    0x342a8  1      
  nop                                            #  85    0x342a9  1      
  callq .__cxa_guard_release                     #  86    0x342aa  5      
  jmpq .L_341c0                                  #  87    0x342af  5      
  nop                                            #  88    0x342b4  1      
  nop                                            #  89    0x342b5  1      
.L_34340:                                        #        0x342b6  0      
  cmpb $0x0, 0xfffca23(%rip)                     #  90    0x342b6  7      
  jne .L_34240                                   #  91    0x342bd  6      
  movl $0x10030ce0, %edi                         #  92    0x342c3  5      
  nop                                            #  93    0x342c8  1      
  callq .__cxa_guard_acquire                     #  94    0x342c9  5      
  testl %eax, %eax                               #  95    0x342ce  2      
  jne .L_345a0                                   #  96    0x342d0  6      
  nop                                            #  97    0x342d6  1      
  nop                                            #  98    0x342d7  1      
.L_34380:                                        #        0x342d8  0      
  movl 0xfffca0a(%rip), %eax                     #  99    0x342d8  6      
  jmpq .L_34240                                  #  100   0x342de  5      
  nop                                            #  101   0x342e3  1      
  nop                                            #  102   0x342e4  1      
.L_343a0:                                        #        0x342e5  0      
  movl $0x10030ce0, %edi                         #  103   0x342e5  5      
  nop                                            #  104   0x342ea  1      
  nop                                            #  105   0x342eb  1      
  callq .__cxa_guard_acquire                     #  106   0x342ec  5      
  testl %eax, %eax                               #  107   0x342f1  2      
  je .L_341a0                                    #  108   0x342f3  6      
  nop                                            #  109   0x342f9  1      
  nop                                            #  110   0x342fa  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x342fb  5      
  movl %eax, %edi                                #  112   0x34300  2      
  movl $0x10020654, %esi                         #  113   0x34302  5      
  nop                                            #  114   0x34307  1      
  nop                                            #  115   0x34308  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x34309  5      
  movl $0x10030ce0, %edi                         #  117   0x3430e  5      
  movl %eax, 0xfffc9cf(%rip)                     #  118   0x34313  6      
  nop                                            #  119   0x34319  1      
  nop                                            #  120   0x3431a  1      
  callq .__cxa_guard_release                     #  121   0x3431b  5      
  jmpq .L_341a0                                  #  122   0x34320  5      
  nop                                            #  123   0x34325  1      
  nop                                            #  124   0x34326  1      
.L_34440:                                        #        0x34327  0      
  movl $0x10030cf0, %edi                         #  125   0x34327  5      
  nop                                            #  126   0x3432c  1      
  nop                                            #  127   0x3432d  1      
  callq .__cxa_guard_acquire                     #  128   0x3432e  5      
  testl %eax, %eax                               #  129   0x34333  2      
  jne .L_346a0                                   #  130   0x34335  6      
  nop                                            #  131   0x3433b  1      
  nop                                            #  132   0x3433c  1      
.L_34480:                                        #        0x3433d  0      
  movl 0xfffc9b5(%rip), %eax                     #  133   0x3433d  6      
  jmpq .L_34240                                  #  134   0x34343  5      
  nop                                            #  135   0x34348  1      
  nop                                            #  136   0x34349  1      
.L_344a0:                                        #        0x3434a  0      
  cmpb $0x0, 0xfffc9af(%rip)                     #  137   0x3434a  7      
  jne .L_34240                                   #  138   0x34351  6      
  movl $0x10030d00, %edi                         #  139   0x34357  5      
  nop                                            #  140   0x3435c  1      
  callq .__cxa_guard_acquire                     #  141   0x3435d  5      
  testl %eax, %eax                               #  142   0x34362  2      
  jne .L_34620                                   #  143   0x34364  6      
  nop                                            #  144   0x3436a  1      
  nop                                            #  145   0x3436b  1      
.L_344e0:                                        #        0x3436c  0      
  movl 0xfffc996(%rip), %eax                     #  146   0x3436c  6      
  jmpq .L_34240                                  #  147   0x34372  5      
  nop                                            #  148   0x34377  1      
  nop                                            #  149   0x34378  1      
.L_34500:                                        #        0x34379  0      
  movl $0x10030d00, %edi                         #  150   0x34379  5      
  nop                                            #  151   0x3437e  1      
  nop                                            #  152   0x3437f  1      
  callq .__cxa_guard_acquire                     #  153   0x34380  5      
  testl %eax, %eax                               #  154   0x34385  2      
  je .L_341e0                                    #  155   0x34387  6      
  nop                                            #  156   0x3438d  1      
  nop                                            #  157   0x3438e  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x3438f  5      
  movl %eax, %edi                                #  159   0x34394  2      
  movl $0x10020644, %esi                         #  160   0x34396  5      
  nop                                            #  161   0x3439b  1      
  nop                                            #  162   0x3439c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x3439d  5      
  movl $0x10030d00, %edi                         #  164   0x343a2  5      
  movl %eax, 0xfffc95b(%rip)                     #  165   0x343a7  6      
  nop                                            #  166   0x343ad  1      
  nop                                            #  167   0x343ae  1      
  callq .__cxa_guard_release                     #  168   0x343af  5      
  jmpq .L_341e0                                  #  169   0x343b4  5      
  nop                                            #  170   0x343b9  1      
  nop                                            #  171   0x343ba  1      
.L_345a0:                                        #        0x343bb  0      
  nop                                            #  172   0x343bb  1      
  nop                                            #  173   0x343bc  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x343bd  5      
  movl %eax, %edi                                #  175   0x343c2  2      
  movl $0x10020654, %esi                         #  176   0x343c4  5      
  nop                                            #  177   0x343c9  1      
  nop                                            #  178   0x343ca  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x343cb  5      
  movl $0x10030ce0, %edi                         #  180   0x343d0  5      
  movl %eax, 0xfffc90d(%rip)                     #  181   0x343d5  6      
  nop                                            #  182   0x343db  1      
  nop                                            #  183   0x343dc  1      
  callq .__cxa_guard_release                     #  184   0x343dd  5      
  jmpq .L_34380                                  #  185   0x343e2  5      
  nop                                            #  186   0x343e7  1      
  nop                                            #  187   0x343e8  1      
.L_34620:                                        #        0x343e9  0      
  nop                                            #  188   0x343e9  1      
  nop                                            #  189   0x343ea  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x343eb  5      
  movl %eax, %edi                                #  191   0x343f0  2      
  movl $0x10020644, %esi                         #  192   0x343f2  5      
  nop                                            #  193   0x343f7  1      
  nop                                            #  194   0x343f8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x343f9  5      
  movl $0x10030d00, %edi                         #  196   0x343fe  5      
  movl %eax, 0xfffc8ff(%rip)                     #  197   0x34403  6      
  nop                                            #  198   0x34409  1      
  nop                                            #  199   0x3440a  1      
  callq .__cxa_guard_release                     #  200   0x3440b  5      
  jmpq .L_344e0                                  #  201   0x34410  5      
  nop                                            #  202   0x34415  1      
  nop                                            #  203   0x34416  1      
.L_346a0:                                        #        0x34417  0      
  nop                                            #  204   0x34417  1      
  nop                                            #  205   0x34418  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x34419  5      
  movl %eax, %edi                                #  207   0x3441e  2      
  movl $0x10020664, %esi                         #  208   0x34420  5      
  nop                                            #  209   0x34425  1      
  nop                                            #  210   0x34426  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x34427  5      
  movl $0x10030cf0, %edi                         #  212   0x3442c  5      
  movl %eax, 0xfffc8c1(%rip)                     #  213   0x34431  6      
  nop                                            #  214   0x34437  1      
  nop                                            #  215   0x34438  1      
  callq .__cxa_guard_release                     #  216   0x34439  5      
  jmpq .L_34480                                  #  217   0x3443e  5      
  nop                                            #  218   0x34443  1      
  nop                                            #  219   0x34444  1      
.L_34720:                                        #        0x34445  0      
  movl %eax, %ebx                                #  220   0x34445  2      
  movl $0x10030d00, %edi                         #  221   0x34447  5      
  nop                                            #  222   0x3444c  1      
  nop                                            #  223   0x3444d  1      
  callq .__cxa_guard_abort                       #  224   0x3444e  5      
  movl %ebx, %edi                                #  225   0x34453  2      
  nop                                            #  226   0x34455  1      
  nop                                            #  227   0x34456  1      
  callq ._Unwind_Resume                          #  228   0x34457  5      
.L_34760:                                        #        0x3445c  0      
  movl %eax, %ebx                                #  229   0x3445c  2      
  movl $0x10030cf0, %edi                         #  230   0x3445e  5      
  nop                                            #  231   0x34463  1      
  nop                                            #  232   0x34464  1      
  callq .__cxa_guard_abort                       #  233   0x34465  5      
  movl %ebx, %edi                                #  234   0x3446a  2      
  nop                                            #  235   0x3446c  1      
  nop                                            #  236   0x3446d  1      
  callq ._Unwind_Resume                          #  237   0x3446e  5      
  jmpq .L_34760                                  #  238   0x34473  5      
  nop                                            #  239   0x34478  1      
  nop                                            #  240   0x34479  1      
.L_347c0:                                        #        0x3447a  0      
  movl %eax, %ebx                                #  241   0x3447a  2      
  movl $0x10030ce0, %edi                         #  242   0x3447c  5      
  nop                                            #  243   0x34481  1      
  nop                                            #  244   0x34482  1      
  callq .__cxa_guard_abort                       #  245   0x34483  5      
  movl %ebx, %edi                                #  246   0x34488  2      
  nop                                            #  247   0x3448a  1      
  nop                                            #  248   0x3448b  1      
  callq ._Unwind_Resume                          #  249   0x3448c  5      
  jmpq .L_347c0                                  #  250   0x34491  5      
  nop                                            #  251   0x34496  1      
  nop                                            #  252   0x34497  1      
  jmpq .L_34720                                  #  253   0x34498  5      
  nop                                            #  254   0x3449d  1      
  nop                                            #  255   0x3449e  1      
  nop                                            #  256   0x3449f  1      
                                                                          
.size _ZNK2pp7FileRef7GetPathEv, .-_ZNK2pp7FileRef7GetPathEv

