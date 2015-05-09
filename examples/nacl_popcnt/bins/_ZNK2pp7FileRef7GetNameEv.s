  .text
  .globl _ZNK2pp7FileRef7GetNameEv
  .type _ZNK2pp7FileRef7GetNameEv, @function

#! file-offset 0x34840
#! rip-offset  0x34840
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetNameEv:                      #        0x34840  0      
  pushq %r12                                     #  1     0x34840  3      
  movl %esi, %r12d                               #  2     0x34843  3      
  pushq %rbx                                     #  3     0x34846  2      
  movl %edi, %ebx                                #  4     0x34848  2      
  subl $0x48, %esp                               #  5     0x3484a  3      
  addq %r15, %rsp                                #  6     0x3484d  3      
  cmpb $0x0, 0xfffc489(%rip)                     #  7     0x34850  7      
  je .L_34a60                                    #  8     0x34857  6      
  nop                                            #  9     0x3485d  1      
.L_34860:                                        #        0x3485e  0      
  movl 0xfffc484(%rip), %eax                     #  10    0x3485e  6      
  testq %rax, %rax                               #  11    0x34864  3      
  jne .L_34a00                                   #  12    0x34867  6      
  cmpb $0x0, 0xfffc47c(%rip)                     #  13    0x3486d  7      
  je .L_34960                                    #  14    0x34874  6      
  nop                                            #  15    0x3487a  1      
.L_34880:                                        #        0x3487b  0      
  movl 0xfffc477(%rip), %eax                     #  16    0x3487b  6      
  testq %rax, %rax                               #  17    0x34881  3      
  jne .L_348e0                                   #  18    0x34884  6      
  cmpb $0x0, 0xfffc46f(%rip)                     #  19    0x3488a  7      
  je .L_34bc0                                    #  20    0x34891  6      
  nop                                            #  21    0x34897  1      
.L_348a0:                                        #        0x34898  0      
  movl 0xfffc46a(%rip), %eax                     #  22    0x34898  6      
  testq %rax, %rax                               #  23    0x3489e  3      
  jne .L_34b60                                   #  24    0x348a1  6      
  movl %ebx, %edi                                #  25    0x348a7  2      
  nop                                            #  26    0x348a9  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x348aa  5      
  addl $0x48, %esp                               #  28    0x348af  3      
  addq %r15, %rsp                                #  29    0x348b2  3      
  movl %ebx, %eax                                #  30    0x348b5  2      
  popq %rbx                                      #  31    0x348b7  2      
  popq %r12                                      #  32    0x348b9  3      
  popq %r11                                      #  33    0x348bc  3      
  andl $0xffffffe0, %r11d                        #  34    0x348bf  7      
  addq %r15, %r11                                #  35    0x348c6  3      
  jmpq %r11                                      #  36    0x348c9  3      
  nop                                            #  37    0x348cc  1      
.L_348e0:                                        #        0x348cd  0      
  cmpb $0x0, 0xfffc41c(%rip)                     #  38    0x348cd  7      
  je .L_34b00                                    #  39    0x348d4  6      
  nop                                            #  40    0x348da  1      
  nop                                            #  41    0x348db  1      
.L_34900:                                        #        0x348dc  0      
  movl %eax, %eax                                #  42    0x348dc  2      
  movl 0xc(%r15,%rax,1), %eax                    #  43    0x348de  5      
  movl %r12d, %r12d                              #  44    0x348e3  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x348e6  5      
  nop                                            #  46    0x348eb  1      
  andl $0xffffffe0, %eax                         #  47    0x348ec  5      
  addq %r15, %rax                                #  48    0x348f1  3      
  callq %rax                                     #  49    0x348f4  2      
  movl %ebx, %ebx                                #  50    0x348f6  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x348f8  8      
  movl %ebx, %ebx                                #  52    0x34900  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x34902  5      
  movl %ebx, %ebx                                #  54    0x34907  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x34909  6      
  movl %ebx, %ebx                                #  56    0x3490f  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x34911  5      
  addl $0x48, %esp                               #  58    0x34916  3      
  addq %r15, %rsp                                #  59    0x34919  3      
  movl %ebx, %eax                                #  60    0x3491c  2      
  popq %rbx                                      #  61    0x3491e  2      
  popq %r12                                      #  62    0x34920  3      
  popq %r11                                      #  63    0x34923  3      
  andl $0xffffffe0, %r11d                        #  64    0x34926  7      
  addq %r15, %r11                                #  65    0x3492d  3      
  jmpq %r11                                      #  66    0x34930  3      
  nop                                            #  67    0x34933  1      
.L_34960:                                        #        0x34934  0      
  movl $0x10030cf0, %edi                         #  68    0x34934  5      
  nop                                            #  69    0x34939  1      
  nop                                            #  70    0x3493a  1      
  callq .__cxa_guard_acquire                     #  71    0x3493b  5      
  testl %eax, %eax                               #  72    0x34940  2      
  je .L_34880                                    #  73    0x34942  6      
  nop                                            #  74    0x34948  1      
  nop                                            #  75    0x34949  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x3494a  5      
  movl %eax, %edi                                #  77    0x3494f  2      
  movl $0x10020664, %esi                         #  78    0x34951  5      
  nop                                            #  79    0x34956  1      
  nop                                            #  80    0x34957  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x34958  5      
  movl $0x10030cf0, %edi                         #  82    0x3495d  5      
  movl %eax, 0xfffc390(%rip)                     #  83    0x34962  6      
  nop                                            #  84    0x34968  1      
  nop                                            #  85    0x34969  1      
  callq .__cxa_guard_release                     #  86    0x3496a  5      
  jmpq .L_34880                                  #  87    0x3496f  5      
  nop                                            #  88    0x34974  1      
  nop                                            #  89    0x34975  1      
.L_34a00:                                        #        0x34976  0      
  cmpb $0x0, 0xfffc363(%rip)                     #  90    0x34976  7      
  jne .L_34900                                   #  91    0x3497d  6      
  movl $0x10030ce0, %edi                         #  92    0x34983  5      
  nop                                            #  93    0x34988  1      
  callq .__cxa_guard_acquire                     #  94    0x34989  5      
  testl %eax, %eax                               #  95    0x3498e  2      
  jne .L_34c60                                   #  96    0x34990  6      
  nop                                            #  97    0x34996  1      
  nop                                            #  98    0x34997  1      
.L_34a40:                                        #        0x34998  0      
  movl 0xfffc34a(%rip), %eax                     #  99    0x34998  6      
  jmpq .L_34900                                  #  100   0x3499e  5      
  nop                                            #  101   0x349a3  1      
  nop                                            #  102   0x349a4  1      
.L_34a60:                                        #        0x349a5  0      
  movl $0x10030ce0, %edi                         #  103   0x349a5  5      
  nop                                            #  104   0x349aa  1      
  nop                                            #  105   0x349ab  1      
  callq .__cxa_guard_acquire                     #  106   0x349ac  5      
  testl %eax, %eax                               #  107   0x349b1  2      
  je .L_34860                                    #  108   0x349b3  6      
  nop                                            #  109   0x349b9  1      
  nop                                            #  110   0x349ba  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x349bb  5      
  movl %eax, %edi                                #  112   0x349c0  2      
  movl $0x10020654, %esi                         #  113   0x349c2  5      
  nop                                            #  114   0x349c7  1      
  nop                                            #  115   0x349c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x349c9  5      
  movl $0x10030ce0, %edi                         #  117   0x349ce  5      
  movl %eax, 0xfffc30f(%rip)                     #  118   0x349d3  6      
  nop                                            #  119   0x349d9  1      
  nop                                            #  120   0x349da  1      
  callq .__cxa_guard_release                     #  121   0x349db  5      
  jmpq .L_34860                                  #  122   0x349e0  5      
  nop                                            #  123   0x349e5  1      
  nop                                            #  124   0x349e6  1      
.L_34b00:                                        #        0x349e7  0      
  movl $0x10030cf0, %edi                         #  125   0x349e7  5      
  nop                                            #  126   0x349ec  1      
  nop                                            #  127   0x349ed  1      
  callq .__cxa_guard_acquire                     #  128   0x349ee  5      
  testl %eax, %eax                               #  129   0x349f3  2      
  jne .L_34d60                                   #  130   0x349f5  6      
  nop                                            #  131   0x349fb  1      
  nop                                            #  132   0x349fc  1      
.L_34b40:                                        #        0x349fd  0      
  movl 0xfffc2f5(%rip), %eax                     #  133   0x349fd  6      
  jmpq .L_34900                                  #  134   0x34a03  5      
  nop                                            #  135   0x34a08  1      
  nop                                            #  136   0x34a09  1      
.L_34b60:                                        #        0x34a0a  0      
  cmpb $0x0, 0xfffc2ef(%rip)                     #  137   0x34a0a  7      
  jne .L_34900                                   #  138   0x34a11  6      
  movl $0x10030d00, %edi                         #  139   0x34a17  5      
  nop                                            #  140   0x34a1c  1      
  callq .__cxa_guard_acquire                     #  141   0x34a1d  5      
  testl %eax, %eax                               #  142   0x34a22  2      
  jne .L_34ce0                                   #  143   0x34a24  6      
  nop                                            #  144   0x34a2a  1      
  nop                                            #  145   0x34a2b  1      
.L_34ba0:                                        #        0x34a2c  0      
  movl 0xfffc2d6(%rip), %eax                     #  146   0x34a2c  6      
  jmpq .L_34900                                  #  147   0x34a32  5      
  nop                                            #  148   0x34a37  1      
  nop                                            #  149   0x34a38  1      
.L_34bc0:                                        #        0x34a39  0      
  movl $0x10030d00, %edi                         #  150   0x34a39  5      
  nop                                            #  151   0x34a3e  1      
  nop                                            #  152   0x34a3f  1      
  callq .__cxa_guard_acquire                     #  153   0x34a40  5      
  testl %eax, %eax                               #  154   0x34a45  2      
  je .L_348a0                                    #  155   0x34a47  6      
  nop                                            #  156   0x34a4d  1      
  nop                                            #  157   0x34a4e  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x34a4f  5      
  movl %eax, %edi                                #  159   0x34a54  2      
  movl $0x10020644, %esi                         #  160   0x34a56  5      
  nop                                            #  161   0x34a5b  1      
  nop                                            #  162   0x34a5c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x34a5d  5      
  movl $0x10030d00, %edi                         #  164   0x34a62  5      
  movl %eax, 0xfffc29b(%rip)                     #  165   0x34a67  6      
  nop                                            #  166   0x34a6d  1      
  nop                                            #  167   0x34a6e  1      
  callq .__cxa_guard_release                     #  168   0x34a6f  5      
  jmpq .L_348a0                                  #  169   0x34a74  5      
  nop                                            #  170   0x34a79  1      
  nop                                            #  171   0x34a7a  1      
.L_34c60:                                        #        0x34a7b  0      
  nop                                            #  172   0x34a7b  1      
  nop                                            #  173   0x34a7c  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x34a7d  5      
  movl %eax, %edi                                #  175   0x34a82  2      
  movl $0x10020654, %esi                         #  176   0x34a84  5      
  nop                                            #  177   0x34a89  1      
  nop                                            #  178   0x34a8a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x34a8b  5      
  movl $0x10030ce0, %edi                         #  180   0x34a90  5      
  movl %eax, 0xfffc24d(%rip)                     #  181   0x34a95  6      
  nop                                            #  182   0x34a9b  1      
  nop                                            #  183   0x34a9c  1      
  callq .__cxa_guard_release                     #  184   0x34a9d  5      
  jmpq .L_34a40                                  #  185   0x34aa2  5      
  nop                                            #  186   0x34aa7  1      
  nop                                            #  187   0x34aa8  1      
.L_34ce0:                                        #        0x34aa9  0      
  nop                                            #  188   0x34aa9  1      
  nop                                            #  189   0x34aaa  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x34aab  5      
  movl %eax, %edi                                #  191   0x34ab0  2      
  movl $0x10020644, %esi                         #  192   0x34ab2  5      
  nop                                            #  193   0x34ab7  1      
  nop                                            #  194   0x34ab8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x34ab9  5      
  movl $0x10030d00, %edi                         #  196   0x34abe  5      
  movl %eax, 0xfffc23f(%rip)                     #  197   0x34ac3  6      
  nop                                            #  198   0x34ac9  1      
  nop                                            #  199   0x34aca  1      
  callq .__cxa_guard_release                     #  200   0x34acb  5      
  jmpq .L_34ba0                                  #  201   0x34ad0  5      
  nop                                            #  202   0x34ad5  1      
  nop                                            #  203   0x34ad6  1      
.L_34d60:                                        #        0x34ad7  0      
  nop                                            #  204   0x34ad7  1      
  nop                                            #  205   0x34ad8  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x34ad9  5      
  movl %eax, %edi                                #  207   0x34ade  2      
  movl $0x10020664, %esi                         #  208   0x34ae0  5      
  nop                                            #  209   0x34ae5  1      
  nop                                            #  210   0x34ae6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x34ae7  5      
  movl $0x10030cf0, %edi                         #  212   0x34aec  5      
  movl %eax, 0xfffc201(%rip)                     #  213   0x34af1  6      
  nop                                            #  214   0x34af7  1      
  nop                                            #  215   0x34af8  1      
  callq .__cxa_guard_release                     #  216   0x34af9  5      
  jmpq .L_34b40                                  #  217   0x34afe  5      
  nop                                            #  218   0x34b03  1      
  nop                                            #  219   0x34b04  1      
.L_34de0:                                        #        0x34b05  0      
  movl %eax, %ebx                                #  220   0x34b05  2      
  movl $0x10030d00, %edi                         #  221   0x34b07  5      
  nop                                            #  222   0x34b0c  1      
  nop                                            #  223   0x34b0d  1      
  callq .__cxa_guard_abort                       #  224   0x34b0e  5      
  movl %ebx, %edi                                #  225   0x34b13  2      
  nop                                            #  226   0x34b15  1      
  nop                                            #  227   0x34b16  1      
  callq ._Unwind_Resume                          #  228   0x34b17  5      
.L_34e20:                                        #        0x34b1c  0      
  movl %eax, %ebx                                #  229   0x34b1c  2      
  movl $0x10030cf0, %edi                         #  230   0x34b1e  5      
  nop                                            #  231   0x34b23  1      
  nop                                            #  232   0x34b24  1      
  callq .__cxa_guard_abort                       #  233   0x34b25  5      
  movl %ebx, %edi                                #  234   0x34b2a  2      
  nop                                            #  235   0x34b2c  1      
  nop                                            #  236   0x34b2d  1      
  callq ._Unwind_Resume                          #  237   0x34b2e  5      
  jmpq .L_34e20                                  #  238   0x34b33  5      
  nop                                            #  239   0x34b38  1      
  nop                                            #  240   0x34b39  1      
.L_34e80:                                        #        0x34b3a  0      
  movl %eax, %ebx                                #  241   0x34b3a  2      
  movl $0x10030ce0, %edi                         #  242   0x34b3c  5      
  nop                                            #  243   0x34b41  1      
  nop                                            #  244   0x34b42  1      
  callq .__cxa_guard_abort                       #  245   0x34b43  5      
  movl %ebx, %edi                                #  246   0x34b48  2      
  nop                                            #  247   0x34b4a  1      
  nop                                            #  248   0x34b4b  1      
  callq ._Unwind_Resume                          #  249   0x34b4c  5      
  jmpq .L_34e80                                  #  250   0x34b51  5      
  nop                                            #  251   0x34b56  1      
  nop                                            #  252   0x34b57  1      
  jmpq .L_34de0                                  #  253   0x34b58  5      
  nop                                            #  254   0x34b5d  1      
  nop                                            #  255   0x34b5e  1      
  nop                                            #  256   0x34b5f  1      
                                                                          
.size _ZNK2pp7FileRef7GetNameEv, .-_ZNK2pp7FileRef7GetNameEv

