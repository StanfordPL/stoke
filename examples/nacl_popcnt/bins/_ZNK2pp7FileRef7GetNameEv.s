  .text
  .globl _ZNK2pp7FileRef7GetNameEv
  .type _ZNK2pp7FileRef7GetNameEv, @function

#! file-offset 0x348e0
#! rip-offset  0x348e0
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetNameEv:                      #        0x348e0  0      
  pushq %r12                                     #  1     0x348e0  3      
  movl %esi, %r12d                               #  2     0x348e3  3      
  pushq %rbx                                     #  3     0x348e6  2      
  movl %edi, %ebx                                #  4     0x348e8  2      
  subl $0x48, %esp                               #  5     0x348ea  3      
  addq %r15, %rsp                                #  6     0x348ed  3      
  cmpb $0x0, 0xfffc3e9(%rip)                     #  7     0x348f0  7      
  je .L_34b00                                    #  8     0x348f7  6      
  nop                                            #  9     0x348fd  1      
.L_34900:                                        #        0x348fe  0      
  movl 0xfffc3e4(%rip), %eax                     #  10    0x348fe  6      
  testq %rax, %rax                               #  11    0x34904  3      
  jne .L_34aa0                                   #  12    0x34907  6      
  cmpb $0x0, 0xfffc3dc(%rip)                     #  13    0x3490d  7      
  je .L_34a00                                    #  14    0x34914  6      
  nop                                            #  15    0x3491a  1      
.L_34920:                                        #        0x3491b  0      
  movl 0xfffc3d7(%rip), %eax                     #  16    0x3491b  6      
  testq %rax, %rax                               #  17    0x34921  3      
  jne .L_34980                                   #  18    0x34924  6      
  cmpb $0x0, 0xfffc3cf(%rip)                     #  19    0x3492a  7      
  je .L_34c60                                    #  20    0x34931  6      
  nop                                            #  21    0x34937  1      
.L_34940:                                        #        0x34938  0      
  movl 0xfffc3ca(%rip), %eax                     #  22    0x34938  6      
  testq %rax, %rax                               #  23    0x3493e  3      
  jne .L_34c00                                   #  24    0x34941  6      
  movl %ebx, %edi                                #  25    0x34947  2      
  nop                                            #  26    0x34949  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x3494a  5      
  addl $0x48, %esp                               #  28    0x3494f  3      
  addq %r15, %rsp                                #  29    0x34952  3      
  movl %ebx, %eax                                #  30    0x34955  2      
  popq %rbx                                      #  31    0x34957  2      
  popq %r12                                      #  32    0x34959  3      
  popq %r11                                      #  33    0x3495c  3      
  andl $0xffffffe0, %r11d                        #  34    0x3495f  7      
  addq %r15, %r11                                #  35    0x34966  3      
  jmpq %r11                                      #  36    0x34969  3      
  nop                                            #  37    0x3496c  1      
.L_34980:                                        #        0x3496d  0      
  cmpb $0x0, 0xfffc37c(%rip)                     #  38    0x3496d  7      
  je .L_34ba0                                    #  39    0x34974  6      
  nop                                            #  40    0x3497a  1      
  nop                                            #  41    0x3497b  1      
.L_349a0:                                        #        0x3497c  0      
  movl %eax, %eax                                #  42    0x3497c  2      
  movl 0xc(%r15,%rax,1), %eax                    #  43    0x3497e  5      
  movl %r12d, %r12d                              #  44    0x34983  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x34986  5      
  nop                                            #  46    0x3498b  1      
  andl $0xffffffe0, %eax                         #  47    0x3498c  5      
  addq %r15, %rax                                #  48    0x34991  3      
  callq %rax                                     #  49    0x34994  2      
  movl %ebx, %ebx                                #  50    0x34996  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x34998  8      
  movl %ebx, %ebx                                #  52    0x349a0  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x349a2  5      
  movl %ebx, %ebx                                #  54    0x349a7  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x349a9  6      
  movl %ebx, %ebx                                #  56    0x349af  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x349b1  5      
  addl $0x48, %esp                               #  58    0x349b6  3      
  addq %r15, %rsp                                #  59    0x349b9  3      
  movl %ebx, %eax                                #  60    0x349bc  2      
  popq %rbx                                      #  61    0x349be  2      
  popq %r12                                      #  62    0x349c0  3      
  popq %r11                                      #  63    0x349c3  3      
  andl $0xffffffe0, %r11d                        #  64    0x349c6  7      
  addq %r15, %r11                                #  65    0x349cd  3      
  jmpq %r11                                      #  66    0x349d0  3      
  nop                                            #  67    0x349d3  1      
.L_34a00:                                        #        0x349d4  0      
  movl $0x10030cf0, %edi                         #  68    0x349d4  5      
  nop                                            #  69    0x349d9  1      
  nop                                            #  70    0x349da  1      
  callq .__cxa_guard_acquire                     #  71    0x349db  5      
  testl %eax, %eax                               #  72    0x349e0  2      
  je .L_34920                                    #  73    0x349e2  6      
  nop                                            #  74    0x349e8  1      
  nop                                            #  75    0x349e9  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x349ea  5      
  movl %eax, %edi                                #  77    0x349ef  2      
  movl $0x10020664, %esi                         #  78    0x349f1  5      
  nop                                            #  79    0x349f6  1      
  nop                                            #  80    0x349f7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x349f8  5      
  movl $0x10030cf0, %edi                         #  82    0x349fd  5      
  movl %eax, 0xfffc2f0(%rip)                     #  83    0x34a02  6      
  nop                                            #  84    0x34a08  1      
  nop                                            #  85    0x34a09  1      
  callq .__cxa_guard_release                     #  86    0x34a0a  5      
  jmpq .L_34920                                  #  87    0x34a0f  5      
  nop                                            #  88    0x34a14  1      
  nop                                            #  89    0x34a15  1      
.L_34aa0:                                        #        0x34a16  0      
  cmpb $0x0, 0xfffc2c3(%rip)                     #  90    0x34a16  7      
  jne .L_349a0                                   #  91    0x34a1d  6      
  movl $0x10030ce0, %edi                         #  92    0x34a23  5      
  nop                                            #  93    0x34a28  1      
  callq .__cxa_guard_acquire                     #  94    0x34a29  5      
  testl %eax, %eax                               #  95    0x34a2e  2      
  jne .L_34d00                                   #  96    0x34a30  6      
  nop                                            #  97    0x34a36  1      
  nop                                            #  98    0x34a37  1      
.L_34ae0:                                        #        0x34a38  0      
  movl 0xfffc2aa(%rip), %eax                     #  99    0x34a38  6      
  jmpq .L_349a0                                  #  100   0x34a3e  5      
  nop                                            #  101   0x34a43  1      
  nop                                            #  102   0x34a44  1      
.L_34b00:                                        #        0x34a45  0      
  movl $0x10030ce0, %edi                         #  103   0x34a45  5      
  nop                                            #  104   0x34a4a  1      
  nop                                            #  105   0x34a4b  1      
  callq .__cxa_guard_acquire                     #  106   0x34a4c  5      
  testl %eax, %eax                               #  107   0x34a51  2      
  je .L_34900                                    #  108   0x34a53  6      
  nop                                            #  109   0x34a59  1      
  nop                                            #  110   0x34a5a  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x34a5b  5      
  movl %eax, %edi                                #  112   0x34a60  2      
  movl $0x10020654, %esi                         #  113   0x34a62  5      
  nop                                            #  114   0x34a67  1      
  nop                                            #  115   0x34a68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x34a69  5      
  movl $0x10030ce0, %edi                         #  117   0x34a6e  5      
  movl %eax, 0xfffc26f(%rip)                     #  118   0x34a73  6      
  nop                                            #  119   0x34a79  1      
  nop                                            #  120   0x34a7a  1      
  callq .__cxa_guard_release                     #  121   0x34a7b  5      
  jmpq .L_34900                                  #  122   0x34a80  5      
  nop                                            #  123   0x34a85  1      
  nop                                            #  124   0x34a86  1      
.L_34ba0:                                        #        0x34a87  0      
  movl $0x10030cf0, %edi                         #  125   0x34a87  5      
  nop                                            #  126   0x34a8c  1      
  nop                                            #  127   0x34a8d  1      
  callq .__cxa_guard_acquire                     #  128   0x34a8e  5      
  testl %eax, %eax                               #  129   0x34a93  2      
  jne .L_34e00                                   #  130   0x34a95  6      
  nop                                            #  131   0x34a9b  1      
  nop                                            #  132   0x34a9c  1      
.L_34be0:                                        #        0x34a9d  0      
  movl 0xfffc255(%rip), %eax                     #  133   0x34a9d  6      
  jmpq .L_349a0                                  #  134   0x34aa3  5      
  nop                                            #  135   0x34aa8  1      
  nop                                            #  136   0x34aa9  1      
.L_34c00:                                        #        0x34aaa  0      
  cmpb $0x0, 0xfffc24f(%rip)                     #  137   0x34aaa  7      
  jne .L_349a0                                   #  138   0x34ab1  6      
  movl $0x10030d00, %edi                         #  139   0x34ab7  5      
  nop                                            #  140   0x34abc  1      
  callq .__cxa_guard_acquire                     #  141   0x34abd  5      
  testl %eax, %eax                               #  142   0x34ac2  2      
  jne .L_34d80                                   #  143   0x34ac4  6      
  nop                                            #  144   0x34aca  1      
  nop                                            #  145   0x34acb  1      
.L_34c40:                                        #        0x34acc  0      
  movl 0xfffc236(%rip), %eax                     #  146   0x34acc  6      
  jmpq .L_349a0                                  #  147   0x34ad2  5      
  nop                                            #  148   0x34ad7  1      
  nop                                            #  149   0x34ad8  1      
.L_34c60:                                        #        0x34ad9  0      
  movl $0x10030d00, %edi                         #  150   0x34ad9  5      
  nop                                            #  151   0x34ade  1      
  nop                                            #  152   0x34adf  1      
  callq .__cxa_guard_acquire                     #  153   0x34ae0  5      
  testl %eax, %eax                               #  154   0x34ae5  2      
  je .L_34940                                    #  155   0x34ae7  6      
  nop                                            #  156   0x34aed  1      
  nop                                            #  157   0x34aee  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x34aef  5      
  movl %eax, %edi                                #  159   0x34af4  2      
  movl $0x10020644, %esi                         #  160   0x34af6  5      
  nop                                            #  161   0x34afb  1      
  nop                                            #  162   0x34afc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x34afd  5      
  movl $0x10030d00, %edi                         #  164   0x34b02  5      
  movl %eax, 0xfffc1fb(%rip)                     #  165   0x34b07  6      
  nop                                            #  166   0x34b0d  1      
  nop                                            #  167   0x34b0e  1      
  callq .__cxa_guard_release                     #  168   0x34b0f  5      
  jmpq .L_34940                                  #  169   0x34b14  5      
  nop                                            #  170   0x34b19  1      
  nop                                            #  171   0x34b1a  1      
.L_34d00:                                        #        0x34b1b  0      
  nop                                            #  172   0x34b1b  1      
  nop                                            #  173   0x34b1c  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x34b1d  5      
  movl %eax, %edi                                #  175   0x34b22  2      
  movl $0x10020654, %esi                         #  176   0x34b24  5      
  nop                                            #  177   0x34b29  1      
  nop                                            #  178   0x34b2a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x34b2b  5      
  movl $0x10030ce0, %edi                         #  180   0x34b30  5      
  movl %eax, 0xfffc1ad(%rip)                     #  181   0x34b35  6      
  nop                                            #  182   0x34b3b  1      
  nop                                            #  183   0x34b3c  1      
  callq .__cxa_guard_release                     #  184   0x34b3d  5      
  jmpq .L_34ae0                                  #  185   0x34b42  5      
  nop                                            #  186   0x34b47  1      
  nop                                            #  187   0x34b48  1      
.L_34d80:                                        #        0x34b49  0      
  nop                                            #  188   0x34b49  1      
  nop                                            #  189   0x34b4a  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x34b4b  5      
  movl %eax, %edi                                #  191   0x34b50  2      
  movl $0x10020644, %esi                         #  192   0x34b52  5      
  nop                                            #  193   0x34b57  1      
  nop                                            #  194   0x34b58  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x34b59  5      
  movl $0x10030d00, %edi                         #  196   0x34b5e  5      
  movl %eax, 0xfffc19f(%rip)                     #  197   0x34b63  6      
  nop                                            #  198   0x34b69  1      
  nop                                            #  199   0x34b6a  1      
  callq .__cxa_guard_release                     #  200   0x34b6b  5      
  jmpq .L_34c40                                  #  201   0x34b70  5      
  nop                                            #  202   0x34b75  1      
  nop                                            #  203   0x34b76  1      
.L_34e00:                                        #        0x34b77  0      
  nop                                            #  204   0x34b77  1      
  nop                                            #  205   0x34b78  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x34b79  5      
  movl %eax, %edi                                #  207   0x34b7e  2      
  movl $0x10020664, %esi                         #  208   0x34b80  5      
  nop                                            #  209   0x34b85  1      
  nop                                            #  210   0x34b86  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x34b87  5      
  movl $0x10030cf0, %edi                         #  212   0x34b8c  5      
  movl %eax, 0xfffc161(%rip)                     #  213   0x34b91  6      
  nop                                            #  214   0x34b97  1      
  nop                                            #  215   0x34b98  1      
  callq .__cxa_guard_release                     #  216   0x34b99  5      
  jmpq .L_34be0                                  #  217   0x34b9e  5      
  nop                                            #  218   0x34ba3  1      
  nop                                            #  219   0x34ba4  1      
.L_34e80:                                        #        0x34ba5  0      
  movl %eax, %ebx                                #  220   0x34ba5  2      
  movl $0x10030d00, %edi                         #  221   0x34ba7  5      
  nop                                            #  222   0x34bac  1      
  nop                                            #  223   0x34bad  1      
  callq .__cxa_guard_abort                       #  224   0x34bae  5      
  movl %ebx, %edi                                #  225   0x34bb3  2      
  nop                                            #  226   0x34bb5  1      
  nop                                            #  227   0x34bb6  1      
  callq ._Unwind_Resume                          #  228   0x34bb7  5      
.L_34ec0:                                        #        0x34bbc  0      
  movl %eax, %ebx                                #  229   0x34bbc  2      
  movl $0x10030cf0, %edi                         #  230   0x34bbe  5      
  nop                                            #  231   0x34bc3  1      
  nop                                            #  232   0x34bc4  1      
  callq .__cxa_guard_abort                       #  233   0x34bc5  5      
  movl %ebx, %edi                                #  234   0x34bca  2      
  nop                                            #  235   0x34bcc  1      
  nop                                            #  236   0x34bcd  1      
  callq ._Unwind_Resume                          #  237   0x34bce  5      
  jmpq .L_34ec0                                  #  238   0x34bd3  5      
  nop                                            #  239   0x34bd8  1      
  nop                                            #  240   0x34bd9  1      
.L_34f20:                                        #        0x34bda  0      
  movl %eax, %ebx                                #  241   0x34bda  2      
  movl $0x10030ce0, %edi                         #  242   0x34bdc  5      
  nop                                            #  243   0x34be1  1      
  nop                                            #  244   0x34be2  1      
  callq .__cxa_guard_abort                       #  245   0x34be3  5      
  movl %ebx, %edi                                #  246   0x34be8  2      
  nop                                            #  247   0x34bea  1      
  nop                                            #  248   0x34beb  1      
  callq ._Unwind_Resume                          #  249   0x34bec  5      
  jmpq .L_34f20                                  #  250   0x34bf1  5      
  nop                                            #  251   0x34bf6  1      
  nop                                            #  252   0x34bf7  1      
  jmpq .L_34e80                                  #  253   0x34bf8  5      
  nop                                            #  254   0x34bfd  1      
  nop                                            #  255   0x34bfe  1      
  nop                                            #  256   0x34bff  1      
                                                                          
.size _ZNK2pp7FileRef7GetNameEv, .-_ZNK2pp7FileRef7GetNameEv

