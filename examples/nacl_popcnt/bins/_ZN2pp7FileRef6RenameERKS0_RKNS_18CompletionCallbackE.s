  .text
  .globl _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE
  .type _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, @function

#! file-offset 0x32980
#! rip-offset  0x32980
#! capacity    2112 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE:              #        0x32980  0      
  movq %rbx, -0x18(%rsp)                                             #  1     0x32980  5      
  movq %r12, -0x10(%rsp)                                             #  2     0x32985  5      
  movl %edx, %ebx                                                    #  3     0x3298a  2      
  movq %r13, -0x8(%rsp)                                              #  4     0x3298c  5      
  subl $0x48, %esp                                                   #  5     0x32991  3      
  addq %r15, %rsp                                                    #  6     0x32994  3      
  cmpb $0x0, 0xfffe342(%rip)                                         #  7     0x32997  7      
  xchgw %ax, %ax                                                     #  8     0x3299e  3      
  movl %edi, %r13d                                                   #  9     0x329a1  3      
  movl %esi, %r12d                                                   #  10    0x329a4  3      
  je .L_32c40                                                        #  11    0x329a7  6      
  nop                                                                #  12    0x329ad  1      
  nop                                                                #  13    0x329ae  1      
.L_329c0:                                                            #        0x329af  0      
  movl 0xfffe333(%rip), %eax                                         #  14    0x329af  6      
  testq %rax, %rax                                                   #  15    0x329b5  3      
  jne .L_32be0                                                       #  16    0x329b8  6      
  cmpb $0x0, 0xfffe32b(%rip)                                         #  17    0x329be  7      
  je .L_32b40                                                        #  18    0x329c5  6      
  nop                                                                #  19    0x329cb  1      
.L_329e0:                                                            #        0x329cc  0      
  movl 0xfffe326(%rip), %eax                                         #  20    0x329cc  6      
  testq %rax, %rax                                                   #  21    0x329d2  3      
  jne .L_32ac0                                                       #  22    0x329d5  6      
  cmpb $0x0, 0xfffe31e(%rip)                                         #  23    0x329db  7      
  je .L_32e20                                                        #  24    0x329e2  6      
  nop                                                                #  25    0x329e8  1      
.L_32a00:                                                            #        0x329e9  0      
  movl 0xfffe319(%rip), %eax                                         #  26    0x329e9  6      
  testq %rax, %rax                                                   #  27    0x329ef  3      
  jne .L_32dc0                                                       #  28    0x329f2  6      
  movl %ebx, %ebx                                                    #  29    0x329f8  2      
  movl (%r15,%rbx,1), %r9d                                           #  30    0x329fa  4      
  testl %r9d, %r9d                                                   #  31    0x329fe  3      
  je .L_32d40                                                        #  32    0x32a01  6      
  xchgw %ax, %ax                                                     #  33    0x32a07  3      
  movl %ebx, %ebx                                                    #  34    0x32a0a  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  35    0x32a0c  6      
  jne .L_32d40                                                       #  36    0x32a12  6      
  nop                                                                #  37    0x32a18  1      
  callq ._ZN2pp6Module3GetEv                                         #  38    0x32a19  5      
  movl %eax, %eax                                                    #  39    0x32a1e  2      
  movl $0xfffffffa, %ecx                                             #  40    0x32a20  5      
  movl %ebx, %edx                                                    #  41    0x32a25  2      
  movl %eax, %eax                                                    #  42    0x32a27  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  43    0x32a29  5      
  xorl %esi, %esi                                                    #  44    0x32a2e  2      
  nop                                                                #  45    0x32a30  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  46    0x32a31  5      
  movl $0xffffffff, %eax                                             #  47    0x32a36  5      
  nop                                                                #  48    0x32a3b  1      
  nop                                                                #  49    0x32a3c  1      
.L_32a80:                                                            #        0x32a3d  0      
  movq 0x30(%rsp), %rbx                                              #  50    0x32a3d  5      
  movq 0x38(%rsp), %r12                                              #  51    0x32a42  5      
  movq 0x40(%rsp), %r13                                              #  52    0x32a47  5      
  addl $0x48, %esp                                                   #  53    0x32a4c  3      
  addq %r15, %rsp                                                    #  54    0x32a4f  3      
  popq %r11                                                          #  55    0x32a52  3      
  nop                                                                #  56    0x32a55  1      
  andl $0xffffffe0, %r11d                                            #  57    0x32a56  7      
  addq %r15, %r11                                                    #  58    0x32a5d  3      
  jmpq %r11                                                          #  59    0x32a60  3      
  nop                                                                #  60    0x32a63  1      
  nop                                                                #  61    0x32a64  1      
.L_32ac0:                                                            #        0x32a65  0      
  cmpb $0x0, 0xfffe284(%rip)                                         #  62    0x32a65  7      
  je .L_32ce0                                                        #  63    0x32a6c  6      
  nop                                                                #  64    0x32a72  1      
  nop                                                                #  65    0x32a73  1      
.L_32ae0:                                                            #        0x32a74  0      
  movl %ebx, %ebx                                                    #  66    0x32a74  2      
  movq (%r15,%rbx,1), %rdx                                           #  67    0x32a76  4      
  movl %eax, %eax                                                    #  68    0x32a7a  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  69    0x32a7c  5      
  movq %rdx, 0x10(%rsp)                                              #  70    0x32a81  5      
  movl %ebx, %ebx                                                    #  71    0x32a86  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  72    0x32a88  5      
  movl %ecx, 0x18(%rsp)                                              #  73    0x32a8d  4      
  nop                                                                #  74    0x32a91  1      
.L_32b00:                                                            #        0x32a92  0      
  movl %r12d, %r12d                                                  #  75    0x32a92  3      
  movl 0x4(%r15,%r12,1), %esi                                        #  76    0x32a95  5      
  movl %r13d, %r13d                                                  #  77    0x32a9a  3      
  movl 0x4(%r15,%r13,1), %edi                                        #  78    0x32a9d  5      
  movq 0x30(%rsp), %rbx                                              #  79    0x32aa2  5      
  movq 0x38(%rsp), %r12                                              #  80    0x32aa7  5      
  movq 0x40(%rsp), %r13                                              #  81    0x32aac  5      
  nop                                                                #  82    0x32ab1  1      
  addl $0x48, %esp                                                   #  83    0x32ab2  3      
  addq %r15, %rsp                                                    #  84    0x32ab5  3      
  andl $0xffffffe0, %eax                                             #  85    0x32ab8  5      
  addq %r15, %rax                                                    #  86    0x32abd  3      
  jmpq %rax                                                          #  87    0x32ac0  2      
  nop                                                                #  88    0x32ac2  1      
  nop                                                                #  89    0x32ac3  1      
.L_32b40:                                                            #        0x32ac4  0      
  movl $0x10030cf0, %edi                                             #  90    0x32ac4  5      
  nop                                                                #  91    0x32ac9  1      
  nop                                                                #  92    0x32aca  1      
  callq .__cxa_guard_acquire                                         #  93    0x32acb  5      
  testl %eax, %eax                                                   #  94    0x32ad0  2      
  je .L_329e0                                                        #  95    0x32ad2  6      
  nop                                                                #  96    0x32ad8  1      
  nop                                                                #  97    0x32ad9  1      
  callq ._ZN2pp6Module3GetEv                                         #  98    0x32ada  5      
  movl %eax, %edi                                                    #  99    0x32adf  2      
  movl $0x10020664, %esi                                             #  100   0x32ae1  5      
  nop                                                                #  101   0x32ae6  1      
  nop                                                                #  102   0x32ae7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  103   0x32ae8  5      
  movl $0x10030cf0, %edi                                             #  104   0x32aed  5      
  movl %eax, 0xfffe200(%rip)                                         #  105   0x32af2  6      
  nop                                                                #  106   0x32af8  1      
  nop                                                                #  107   0x32af9  1      
  callq .__cxa_guard_release                                         #  108   0x32afa  5      
  jmpq .L_329e0                                                      #  109   0x32aff  5      
  nop                                                                #  110   0x32b04  1      
  nop                                                                #  111   0x32b05  1      
.L_32be0:                                                            #        0x32b06  0      
  cmpb $0x0, 0xfffe1d3(%rip)                                         #  112   0x32b06  7      
  je .L_32d60                                                        #  113   0x32b0d  6      
  nop                                                                #  114   0x32b13  1      
  nop                                                                #  115   0x32b14  1      
.L_32c00:                                                            #        0x32b15  0      
  movl %ebx, %ebx                                                    #  116   0x32b15  2      
  movq (%r15,%rbx,1), %rdx                                           #  117   0x32b17  4      
  movl %eax, %eax                                                    #  118   0x32b1b  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  119   0x32b1d  5      
  movq %rdx, 0x20(%rsp)                                              #  120   0x32b22  5      
  movl %ebx, %ebx                                                    #  121   0x32b27  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  122   0x32b29  5      
  movl %ecx, 0x28(%rsp)                                              #  123   0x32b2e  4      
  nop                                                                #  124   0x32b32  1      
  jmpq .L_32b00                                                      #  125   0x32b33  5      
  nop                                                                #  126   0x32b38  1      
  nop                                                                #  127   0x32b39  1      
.L_32c40:                                                            #        0x32b3a  0      
  movl $0x10030ce0, %edi                                             #  128   0x32b3a  5      
  nop                                                                #  129   0x32b3f  1      
  nop                                                                #  130   0x32b40  1      
  callq .__cxa_guard_acquire                                         #  131   0x32b41  5      
  testl %eax, %eax                                                   #  132   0x32b46  2      
  je .L_329c0                                                        #  133   0x32b48  6      
  nop                                                                #  134   0x32b4e  1      
  nop                                                                #  135   0x32b4f  1      
  callq ._ZN2pp6Module3GetEv                                         #  136   0x32b50  5      
  movl %eax, %edi                                                    #  137   0x32b55  2      
  movl $0x10020654, %esi                                             #  138   0x32b57  5      
  nop                                                                #  139   0x32b5c  1      
  nop                                                                #  140   0x32b5d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  141   0x32b5e  5      
  movl $0x10030ce0, %edi                                             #  142   0x32b63  5      
  movl %eax, 0xfffe17a(%rip)                                         #  143   0x32b68  6      
  nop                                                                #  144   0x32b6e  1      
  nop                                                                #  145   0x32b6f  1      
  callq .__cxa_guard_release                                         #  146   0x32b70  5      
  jmpq .L_329c0                                                      #  147   0x32b75  5      
  nop                                                                #  148   0x32b7a  1      
  nop                                                                #  149   0x32b7b  1      
.L_32ce0:                                                            #        0x32b7c  0      
  movl $0x10030cf0, %edi                                             #  150   0x32b7c  5      
  nop                                                                #  151   0x32b81  1      
  nop                                                                #  152   0x32b82  1      
  callq .__cxa_guard_acquire                                         #  153   0x32b83  5      
  testl %eax, %eax                                                   #  154   0x32b88  2      
  jne .L_33020                                                       #  155   0x32b8a  6      
  nop                                                                #  156   0x32b90  1      
  nop                                                                #  157   0x32b91  1      
.L_32d20:                                                            #        0x32b92  0      
  movl 0xfffe160(%rip), %eax                                         #  158   0x32b92  6      
  jmpq .L_32ae0                                                      #  159   0x32b98  5      
  nop                                                                #  160   0x32b9d  1      
  nop                                                                #  161   0x32b9e  1      
.L_32d40:                                                            #        0x32b9f  0      
  movl $0xfffffffa, %eax                                             #  162   0x32b9f  5      
  jmpq .L_32a80                                                      #  163   0x32ba4  5      
  nop                                                                #  164   0x32ba9  1      
  nop                                                                #  165   0x32baa  1      
.L_32d60:                                                            #        0x32bab  0      
  movl $0x10030ce0, %edi                                             #  166   0x32bab  5      
  nop                                                                #  167   0x32bb0  1      
  nop                                                                #  168   0x32bb1  1      
  callq .__cxa_guard_acquire                                         #  169   0x32bb2  5      
  testl %eax, %eax                                                   #  170   0x32bb7  2      
  jne .L_32ec0                                                       #  171   0x32bb9  6      
  nop                                                                #  172   0x32bbf  1      
  nop                                                                #  173   0x32bc0  1      
.L_32da0:                                                            #        0x32bc1  0      
  movl 0xfffe121(%rip), %eax                                         #  174   0x32bc1  6      
  jmpq .L_32c00                                                      #  175   0x32bc7  5      
  nop                                                                #  176   0x32bcc  1      
  nop                                                                #  177   0x32bcd  1      
.L_32dc0:                                                            #        0x32bce  0      
  cmpb $0x0, 0xfffe12b(%rip)                                         #  178   0x32bce  7      
  je .L_32f40                                                        #  179   0x32bd5  6      
  nop                                                                #  180   0x32bdb  1      
  nop                                                                #  181   0x32bdc  1      
.L_32de0:                                                            #        0x32bdd  0      
  movl %ebx, %ebx                                                    #  182   0x32bdd  2      
  movq (%r15,%rbx,1), %rdx                                           #  183   0x32bdf  4      
  movl %eax, %eax                                                    #  184   0x32be3  2      
  movl 0x24(%r15,%rax,1), %eax                                       #  185   0x32be5  5      
  movq %rdx, (%rsp)                                                  #  186   0x32bea  4      
  movl %ebx, %ebx                                                    #  187   0x32bee  2      
  movl 0x8(%r15,%rbx,1), %ecx                                        #  188   0x32bf0  5      
  movl %ecx, 0x8(%rsp)                                               #  189   0x32bf5  4      
  nop                                                                #  190   0x32bf9  1      
  jmpq .L_32b00                                                      #  191   0x32bfa  5      
  nop                                                                #  192   0x32bff  1      
  nop                                                                #  193   0x32c00  1      
.L_32e20:                                                            #        0x32c01  0      
  movl $0x10030d00, %edi                                             #  194   0x32c01  5      
  nop                                                                #  195   0x32c06  1      
  nop                                                                #  196   0x32c07  1      
  callq .__cxa_guard_acquire                                         #  197   0x32c08  5      
  testl %eax, %eax                                                   #  198   0x32c0d  2      
  je .L_32a00                                                        #  199   0x32c0f  6      
  nop                                                                #  200   0x32c15  1      
  nop                                                                #  201   0x32c16  1      
  callq ._ZN2pp6Module3GetEv                                         #  202   0x32c17  5      
  movl %eax, %edi                                                    #  203   0x32c1c  2      
  movl $0x10020644, %esi                                             #  204   0x32c1e  5      
  nop                                                                #  205   0x32c23  1      
  nop                                                                #  206   0x32c24  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  207   0x32c25  5      
  movl $0x10030d00, %edi                                             #  208   0x32c2a  5      
  movl %eax, 0xfffe0d3(%rip)                                         #  209   0x32c2f  6      
  nop                                                                #  210   0x32c35  1      
  nop                                                                #  211   0x32c36  1      
  callq .__cxa_guard_release                                         #  212   0x32c37  5      
  jmpq .L_32a00                                                      #  213   0x32c3c  5      
  nop                                                                #  214   0x32c41  1      
  nop                                                                #  215   0x32c42  1      
.L_32ec0:                                                            #        0x32c43  0      
  nop                                                                #  216   0x32c43  1      
  nop                                                                #  217   0x32c44  1      
  callq ._ZN2pp6Module3GetEv                                         #  218   0x32c45  5      
  movl %eax, %edi                                                    #  219   0x32c4a  2      
  movl $0x10020654, %esi                                             #  220   0x32c4c  5      
  nop                                                                #  221   0x32c51  1      
  nop                                                                #  222   0x32c52  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  223   0x32c53  5      
  movl $0x10030ce0, %edi                                             #  224   0x32c58  5      
  movl %eax, 0xfffe085(%rip)                                         #  225   0x32c5d  6      
  nop                                                                #  226   0x32c63  1      
  nop                                                                #  227   0x32c64  1      
  callq .__cxa_guard_release                                         #  228   0x32c65  5      
  jmpq .L_32da0                                                      #  229   0x32c6a  5      
  nop                                                                #  230   0x32c6f  1      
  nop                                                                #  231   0x32c70  1      
.L_32f40:                                                            #        0x32c71  0      
  movl $0x10030d00, %edi                                             #  232   0x32c71  5      
  nop                                                                #  233   0x32c76  1      
  nop                                                                #  234   0x32c77  1      
  callq .__cxa_guard_acquire                                         #  235   0x32c78  5      
  testl %eax, %eax                                                   #  236   0x32c7d  2      
  jne .L_32fa0                                                       #  237   0x32c7f  6      
  nop                                                                #  238   0x32c85  1      
  nop                                                                #  239   0x32c86  1      
.L_32f80:                                                            #        0x32c87  0      
  movl 0xfffe07b(%rip), %eax                                         #  240   0x32c87  6      
  jmpq .L_32de0                                                      #  241   0x32c8d  5      
  nop                                                                #  242   0x32c92  1      
  nop                                                                #  243   0x32c93  1      
.L_32fa0:                                                            #        0x32c94  0      
  nop                                                                #  244   0x32c94  1      
  nop                                                                #  245   0x32c95  1      
  callq ._ZN2pp6Module3GetEv                                         #  246   0x32c96  5      
  movl %eax, %edi                                                    #  247   0x32c9b  2      
  movl $0x10020644, %esi                                             #  248   0x32c9d  5      
  nop                                                                #  249   0x32ca2  1      
  nop                                                                #  250   0x32ca3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  251   0x32ca4  5      
  movl $0x10030d00, %edi                                             #  252   0x32ca9  5      
  movl %eax, 0xfffe054(%rip)                                         #  253   0x32cae  6      
  nop                                                                #  254   0x32cb4  1      
  nop                                                                #  255   0x32cb5  1      
  callq .__cxa_guard_release                                         #  256   0x32cb6  5      
  jmpq .L_32f80                                                      #  257   0x32cbb  5      
  nop                                                                #  258   0x32cc0  1      
  nop                                                                #  259   0x32cc1  1      
.L_33020:                                                            #        0x32cc2  0      
  nop                                                                #  260   0x32cc2  1      
  nop                                                                #  261   0x32cc3  1      
  callq ._ZN2pp6Module3GetEv                                         #  262   0x32cc4  5      
  movl %eax, %edi                                                    #  263   0x32cc9  2      
  movl $0x10020664, %esi                                             #  264   0x32ccb  5      
  nop                                                                #  265   0x32cd0  1      
  nop                                                                #  266   0x32cd1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                      #  267   0x32cd2  5      
  movl $0x10030cf0, %edi                                             #  268   0x32cd7  5      
  movl %eax, 0xfffe016(%rip)                                         #  269   0x32cdc  6      
  nop                                                                #  270   0x32ce2  1      
  nop                                                                #  271   0x32ce3  1      
  callq .__cxa_guard_release                                         #  272   0x32ce4  5      
  jmpq .L_32d20                                                      #  273   0x32ce9  5      
  nop                                                                #  274   0x32cee  1      
  nop                                                                #  275   0x32cef  1      
.L_330a0:                                                            #        0x32cf0  0      
  movl %eax, %ebx                                                    #  276   0x32cf0  2      
  movl $0x10030ce0, %edi                                             #  277   0x32cf2  5      
  nop                                                                #  278   0x32cf7  1      
  nop                                                                #  279   0x32cf8  1      
  callq .__cxa_guard_abort                                           #  280   0x32cf9  5      
  movl %ebx, %edi                                                    #  281   0x32cfe  2      
  nop                                                                #  282   0x32d00  1      
  nop                                                                #  283   0x32d01  1      
  callq ._Unwind_Resume                                              #  284   0x32d02  5      
.L_330e0:                                                            #        0x32d07  0      
  movl %eax, %ebx                                                    #  285   0x32d07  2      
  movl $0x10030cf0, %edi                                             #  286   0x32d09  5      
  nop                                                                #  287   0x32d0e  1      
  nop                                                                #  288   0x32d0f  1      
  callq .__cxa_guard_abort                                           #  289   0x32d10  5      
  movl %ebx, %edi                                                    #  290   0x32d15  2      
  nop                                                                #  291   0x32d17  1      
  nop                                                                #  292   0x32d18  1      
  callq ._Unwind_Resume                                              #  293   0x32d19  5      
  jmpq .L_330e0                                                      #  294   0x32d1e  5      
  nop                                                                #  295   0x32d23  1      
  nop                                                                #  296   0x32d24  1      
  jmpq .L_330a0                                                      #  297   0x32d25  5      
  nop                                                                #  298   0x32d2a  1      
  nop                                                                #  299   0x32d2b  1      
.L_33160:                                                            #        0x32d2c  0      
  movl %eax, %ebx                                                    #  300   0x32d2c  2      
  movl $0x10030d00, %edi                                             #  301   0x32d2e  5      
  nop                                                                #  302   0x32d33  1      
  nop                                                                #  303   0x32d34  1      
  callq .__cxa_guard_abort                                           #  304   0x32d35  5      
  movl %ebx, %edi                                                    #  305   0x32d3a  2      
  nop                                                                #  306   0x32d3c  1      
  nop                                                                #  307   0x32d3d  1      
  callq ._Unwind_Resume                                              #  308   0x32d3e  5      
  jmpq .L_33160                                                      #  309   0x32d43  5      
  nop                                                                #  310   0x32d48  1      
  nop                                                                #  311   0x32d49  1      
                                                                                              
.size _ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE, .-_ZN2pp7FileRef6RenameERKS0_RKNS_18CompletionCallbackE

