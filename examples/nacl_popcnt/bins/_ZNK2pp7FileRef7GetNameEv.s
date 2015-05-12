  .text
  .globl _ZNK2pp7FileRef7GetNameEv
  .type _ZNK2pp7FileRef7GetNameEv, @function

#! file-offset 0x34860
#! rip-offset  0x34860
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetNameEv:                      #        0x34860  0      
  pushq %r12                                     #  1     0x34860  3      
  movl %esi, %r12d                               #  2     0x34863  3      
  pushq %rbx                                     #  3     0x34866  2      
  movl %edi, %ebx                                #  4     0x34868  2      
  subl $0x48, %esp                               #  5     0x3486a  3      
  addq %r15, %rsp                                #  6     0x3486d  3      
  cmpb $0x0, 0xfffc469(%rip)                     #  7     0x34870  7      
  je .L_34a80                                    #  8     0x34877  6      
  nop                                            #  9     0x3487d  1      
.L_34880:                                        #        0x3487e  0      
  movl 0xfffc464(%rip), %eax                     #  10    0x3487e  6      
  testq %rax, %rax                               #  11    0x34884  3      
  jne .L_34a20                                   #  12    0x34887  6      
  cmpb $0x0, 0xfffc45c(%rip)                     #  13    0x3488d  7      
  je .L_34980                                    #  14    0x34894  6      
  nop                                            #  15    0x3489a  1      
.L_348a0:                                        #        0x3489b  0      
  movl 0xfffc457(%rip), %eax                     #  16    0x3489b  6      
  testq %rax, %rax                               #  17    0x348a1  3      
  jne .L_34900                                   #  18    0x348a4  6      
  cmpb $0x0, 0xfffc44f(%rip)                     #  19    0x348aa  7      
  je .L_34be0                                    #  20    0x348b1  6      
  nop                                            #  21    0x348b7  1      
.L_348c0:                                        #        0x348b8  0      
  movl 0xfffc44a(%rip), %eax                     #  22    0x348b8  6      
  testq %rax, %rax                               #  23    0x348be  3      
  jne .L_34b80                                   #  24    0x348c1  6      
  movl %ebx, %edi                                #  25    0x348c7  2      
  nop                                            #  26    0x348c9  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x348ca  5      
  addl $0x48, %esp                               #  28    0x348cf  3      
  addq %r15, %rsp                                #  29    0x348d2  3      
  movl %ebx, %eax                                #  30    0x348d5  2      
  popq %rbx                                      #  31    0x348d7  2      
  popq %r12                                      #  32    0x348d9  3      
  popq %r11                                      #  33    0x348dc  3      
  andl $0xffffffe0, %r11d                        #  34    0x348df  7      
  addq %r15, %r11                                #  35    0x348e6  3      
  jmpq %r11                                      #  36    0x348e9  3      
  nop                                            #  37    0x348ec  1      
.L_34900:                                        #        0x348ed  0      
  cmpb $0x0, 0xfffc3fc(%rip)                     #  38    0x348ed  7      
  je .L_34b20                                    #  39    0x348f4  6      
  nop                                            #  40    0x348fa  1      
  nop                                            #  41    0x348fb  1      
.L_34920:                                        #        0x348fc  0      
  movl %eax, %eax                                #  42    0x348fc  2      
  movl 0xc(%r15,%rax,1), %eax                    #  43    0x348fe  5      
  movl %r12d, %r12d                              #  44    0x34903  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x34906  5      
  nop                                            #  46    0x3490b  1      
  andl $0xffffffe0, %eax                         #  47    0x3490c  5      
  addq %r15, %rax                                #  48    0x34911  3      
  callq %rax                                     #  49    0x34914  2      
  movl %ebx, %ebx                                #  50    0x34916  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x34918  8      
  movl %ebx, %ebx                                #  52    0x34920  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x34922  5      
  movl %ebx, %ebx                                #  54    0x34927  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x34929  6      
  movl %ebx, %ebx                                #  56    0x3492f  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x34931  5      
  addl $0x48, %esp                               #  58    0x34936  3      
  addq %r15, %rsp                                #  59    0x34939  3      
  movl %ebx, %eax                                #  60    0x3493c  2      
  popq %rbx                                      #  61    0x3493e  2      
  popq %r12                                      #  62    0x34940  3      
  popq %r11                                      #  63    0x34943  3      
  andl $0xffffffe0, %r11d                        #  64    0x34946  7      
  addq %r15, %r11                                #  65    0x3494d  3      
  jmpq %r11                                      #  66    0x34950  3      
  nop                                            #  67    0x34953  1      
.L_34980:                                        #        0x34954  0      
  movl $0x10030cf0, %edi                         #  68    0x34954  5      
  nop                                            #  69    0x34959  1      
  nop                                            #  70    0x3495a  1      
  callq .__cxa_guard_acquire                     #  71    0x3495b  5      
  testl %eax, %eax                               #  72    0x34960  2      
  je .L_348a0                                    #  73    0x34962  6      
  nop                                            #  74    0x34968  1      
  nop                                            #  75    0x34969  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x3496a  5      
  movl %eax, %edi                                #  77    0x3496f  2      
  movl $0x10020664, %esi                         #  78    0x34971  5      
  nop                                            #  79    0x34976  1      
  nop                                            #  80    0x34977  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x34978  5      
  movl $0x10030cf0, %edi                         #  82    0x3497d  5      
  movl %eax, 0xfffc370(%rip)                     #  83    0x34982  6      
  nop                                            #  84    0x34988  1      
  nop                                            #  85    0x34989  1      
  callq .__cxa_guard_release                     #  86    0x3498a  5      
  jmpq .L_348a0                                  #  87    0x3498f  5      
  nop                                            #  88    0x34994  1      
  nop                                            #  89    0x34995  1      
.L_34a20:                                        #        0x34996  0      
  cmpb $0x0, 0xfffc343(%rip)                     #  90    0x34996  7      
  jne .L_34920                                   #  91    0x3499d  6      
  movl $0x10030ce0, %edi                         #  92    0x349a3  5      
  nop                                            #  93    0x349a8  1      
  callq .__cxa_guard_acquire                     #  94    0x349a9  5      
  testl %eax, %eax                               #  95    0x349ae  2      
  jne .L_34c80                                   #  96    0x349b0  6      
  nop                                            #  97    0x349b6  1      
  nop                                            #  98    0x349b7  1      
.L_34a60:                                        #        0x349b8  0      
  movl 0xfffc32a(%rip), %eax                     #  99    0x349b8  6      
  jmpq .L_34920                                  #  100   0x349be  5      
  nop                                            #  101   0x349c3  1      
  nop                                            #  102   0x349c4  1      
.L_34a80:                                        #        0x349c5  0      
  movl $0x10030ce0, %edi                         #  103   0x349c5  5      
  nop                                            #  104   0x349ca  1      
  nop                                            #  105   0x349cb  1      
  callq .__cxa_guard_acquire                     #  106   0x349cc  5      
  testl %eax, %eax                               #  107   0x349d1  2      
  je .L_34880                                    #  108   0x349d3  6      
  nop                                            #  109   0x349d9  1      
  nop                                            #  110   0x349da  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x349db  5      
  movl %eax, %edi                                #  112   0x349e0  2      
  movl $0x10020654, %esi                         #  113   0x349e2  5      
  nop                                            #  114   0x349e7  1      
  nop                                            #  115   0x349e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x349e9  5      
  movl $0x10030ce0, %edi                         #  117   0x349ee  5      
  movl %eax, 0xfffc2ef(%rip)                     #  118   0x349f3  6      
  nop                                            #  119   0x349f9  1      
  nop                                            #  120   0x349fa  1      
  callq .__cxa_guard_release                     #  121   0x349fb  5      
  jmpq .L_34880                                  #  122   0x34a00  5      
  nop                                            #  123   0x34a05  1      
  nop                                            #  124   0x34a06  1      
.L_34b20:                                        #        0x34a07  0      
  movl $0x10030cf0, %edi                         #  125   0x34a07  5      
  nop                                            #  126   0x34a0c  1      
  nop                                            #  127   0x34a0d  1      
  callq .__cxa_guard_acquire                     #  128   0x34a0e  5      
  testl %eax, %eax                               #  129   0x34a13  2      
  jne .L_34d80                                   #  130   0x34a15  6      
  nop                                            #  131   0x34a1b  1      
  nop                                            #  132   0x34a1c  1      
.L_34b60:                                        #        0x34a1d  0      
  movl 0xfffc2d5(%rip), %eax                     #  133   0x34a1d  6      
  jmpq .L_34920                                  #  134   0x34a23  5      
  nop                                            #  135   0x34a28  1      
  nop                                            #  136   0x34a29  1      
.L_34b80:                                        #        0x34a2a  0      
  cmpb $0x0, 0xfffc2cf(%rip)                     #  137   0x34a2a  7      
  jne .L_34920                                   #  138   0x34a31  6      
  movl $0x10030d00, %edi                         #  139   0x34a37  5      
  nop                                            #  140   0x34a3c  1      
  callq .__cxa_guard_acquire                     #  141   0x34a3d  5      
  testl %eax, %eax                               #  142   0x34a42  2      
  jne .L_34d00                                   #  143   0x34a44  6      
  nop                                            #  144   0x34a4a  1      
  nop                                            #  145   0x34a4b  1      
.L_34bc0:                                        #        0x34a4c  0      
  movl 0xfffc2b6(%rip), %eax                     #  146   0x34a4c  6      
  jmpq .L_34920                                  #  147   0x34a52  5      
  nop                                            #  148   0x34a57  1      
  nop                                            #  149   0x34a58  1      
.L_34be0:                                        #        0x34a59  0      
  movl $0x10030d00, %edi                         #  150   0x34a59  5      
  nop                                            #  151   0x34a5e  1      
  nop                                            #  152   0x34a5f  1      
  callq .__cxa_guard_acquire                     #  153   0x34a60  5      
  testl %eax, %eax                               #  154   0x34a65  2      
  je .L_348c0                                    #  155   0x34a67  6      
  nop                                            #  156   0x34a6d  1      
  nop                                            #  157   0x34a6e  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x34a6f  5      
  movl %eax, %edi                                #  159   0x34a74  2      
  movl $0x10020644, %esi                         #  160   0x34a76  5      
  nop                                            #  161   0x34a7b  1      
  nop                                            #  162   0x34a7c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x34a7d  5      
  movl $0x10030d00, %edi                         #  164   0x34a82  5      
  movl %eax, 0xfffc27b(%rip)                     #  165   0x34a87  6      
  nop                                            #  166   0x34a8d  1      
  nop                                            #  167   0x34a8e  1      
  callq .__cxa_guard_release                     #  168   0x34a8f  5      
  jmpq .L_348c0                                  #  169   0x34a94  5      
  nop                                            #  170   0x34a99  1      
  nop                                            #  171   0x34a9a  1      
.L_34c80:                                        #        0x34a9b  0      
  nop                                            #  172   0x34a9b  1      
  nop                                            #  173   0x34a9c  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x34a9d  5      
  movl %eax, %edi                                #  175   0x34aa2  2      
  movl $0x10020654, %esi                         #  176   0x34aa4  5      
  nop                                            #  177   0x34aa9  1      
  nop                                            #  178   0x34aaa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x34aab  5      
  movl $0x10030ce0, %edi                         #  180   0x34ab0  5      
  movl %eax, 0xfffc22d(%rip)                     #  181   0x34ab5  6      
  nop                                            #  182   0x34abb  1      
  nop                                            #  183   0x34abc  1      
  callq .__cxa_guard_release                     #  184   0x34abd  5      
  jmpq .L_34a60                                  #  185   0x34ac2  5      
  nop                                            #  186   0x34ac7  1      
  nop                                            #  187   0x34ac8  1      
.L_34d00:                                        #        0x34ac9  0      
  nop                                            #  188   0x34ac9  1      
  nop                                            #  189   0x34aca  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x34acb  5      
  movl %eax, %edi                                #  191   0x34ad0  2      
  movl $0x10020644, %esi                         #  192   0x34ad2  5      
  nop                                            #  193   0x34ad7  1      
  nop                                            #  194   0x34ad8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x34ad9  5      
  movl $0x10030d00, %edi                         #  196   0x34ade  5      
  movl %eax, 0xfffc21f(%rip)                     #  197   0x34ae3  6      
  nop                                            #  198   0x34ae9  1      
  nop                                            #  199   0x34aea  1      
  callq .__cxa_guard_release                     #  200   0x34aeb  5      
  jmpq .L_34bc0                                  #  201   0x34af0  5      
  nop                                            #  202   0x34af5  1      
  nop                                            #  203   0x34af6  1      
.L_34d80:                                        #        0x34af7  0      
  nop                                            #  204   0x34af7  1      
  nop                                            #  205   0x34af8  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x34af9  5      
  movl %eax, %edi                                #  207   0x34afe  2      
  movl $0x10020664, %esi                         #  208   0x34b00  5      
  nop                                            #  209   0x34b05  1      
  nop                                            #  210   0x34b06  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x34b07  5      
  movl $0x10030cf0, %edi                         #  212   0x34b0c  5      
  movl %eax, 0xfffc1e1(%rip)                     #  213   0x34b11  6      
  nop                                            #  214   0x34b17  1      
  nop                                            #  215   0x34b18  1      
  callq .__cxa_guard_release                     #  216   0x34b19  5      
  jmpq .L_34b60                                  #  217   0x34b1e  5      
  nop                                            #  218   0x34b23  1      
  nop                                            #  219   0x34b24  1      
.L_34e00:                                        #        0x34b25  0      
  movl %eax, %ebx                                #  220   0x34b25  2      
  movl $0x10030d00, %edi                         #  221   0x34b27  5      
  nop                                            #  222   0x34b2c  1      
  nop                                            #  223   0x34b2d  1      
  callq .__cxa_guard_abort                       #  224   0x34b2e  5      
  movl %ebx, %edi                                #  225   0x34b33  2      
  nop                                            #  226   0x34b35  1      
  nop                                            #  227   0x34b36  1      
  callq ._Unwind_Resume                          #  228   0x34b37  5      
.L_34e40:                                        #        0x34b3c  0      
  movl %eax, %ebx                                #  229   0x34b3c  2      
  movl $0x10030cf0, %edi                         #  230   0x34b3e  5      
  nop                                            #  231   0x34b43  1      
  nop                                            #  232   0x34b44  1      
  callq .__cxa_guard_abort                       #  233   0x34b45  5      
  movl %ebx, %edi                                #  234   0x34b4a  2      
  nop                                            #  235   0x34b4c  1      
  nop                                            #  236   0x34b4d  1      
  callq ._Unwind_Resume                          #  237   0x34b4e  5      
  jmpq .L_34e40                                  #  238   0x34b53  5      
  nop                                            #  239   0x34b58  1      
  nop                                            #  240   0x34b59  1      
.L_34ea0:                                        #        0x34b5a  0      
  movl %eax, %ebx                                #  241   0x34b5a  2      
  movl $0x10030ce0, %edi                         #  242   0x34b5c  5      
  nop                                            #  243   0x34b61  1      
  nop                                            #  244   0x34b62  1      
  callq .__cxa_guard_abort                       #  245   0x34b63  5      
  movl %ebx, %edi                                #  246   0x34b68  2      
  nop                                            #  247   0x34b6a  1      
  nop                                            #  248   0x34b6b  1      
  callq ._Unwind_Resume                          #  249   0x34b6c  5      
  jmpq .L_34ea0                                  #  250   0x34b71  5      
  nop                                            #  251   0x34b76  1      
  nop                                            #  252   0x34b77  1      
  jmpq .L_34e00                                  #  253   0x34b78  5      
  nop                                            #  254   0x34b7d  1      
  nop                                            #  255   0x34b7e  1      
  nop                                            #  256   0x34b7f  1      
                                                                          
.size _ZNK2pp7FileRef7GetNameEv, .-_ZNK2pp7FileRef7GetNameEv

