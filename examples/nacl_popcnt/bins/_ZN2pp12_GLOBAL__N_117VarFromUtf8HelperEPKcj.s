  .text
  .globl _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj
  .type _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, @function

#! file-offset 0x2b640
#! rip-offset  0x2b640
#! capacity    1664 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj:                     #        0x2b640  0      
  movq %rbx, -0x18(%rsp)                                           #  1     0x2b640  5      
  movq %r12, -0x10(%rsp)                                           #  2     0x2b645  5      
  movl %esi, %ebx                                                  #  3     0x2b64a  2      
  movq %r13, -0x8(%rsp)                                            #  4     0x2b64c  5      
  subl $0x58, %esp                                                 #  5     0x2b651  3      
  addq %r15, %rsp                                                  #  6     0x2b654  3      
  cmpb $0x0, 0x10005622(%rip)                                      #  7     0x2b657  7      
  xchgw %ax, %ax                                                   #  8     0x2b65e  3      
  movl %edi, %r12d                                                 #  9     0x2b661  3      
  je .L_2b8a0                                                      #  10    0x2b664  6      
  nop                                                              #  11    0x2b66a  1      
  nop                                                              #  12    0x2b66b  1      
.L_2b680:                                                          #        0x2b66c  0      
  movl 0x10005616(%rip), %eax                                      #  13    0x2b66c  6      
  testq %rax, %rax                                                 #  14    0x2b672  3      
  jne .L_2b840                                                     #  15    0x2b675  6      
  cmpb $0x0, 0x1000560e(%rip)                                      #  16    0x2b67b  7      
  je .L_2b7a0                                                      #  17    0x2b682  6      
  nop                                                              #  18    0x2b688  1      
.L_2b6a0:                                                          #        0x2b689  0      
  movl 0x10005609(%rip), %eax                                      #  19    0x2b689  6      
  testq %rax, %rax                                                 #  20    0x2b68f  3      
  jne .L_2b740                                                     #  21    0x2b692  6      
  cmpb $0x0, 0x10005601(%rip)                                      #  22    0x2b698  7      
  je .L_2b9a0                                                      #  23    0x2b69f  6      
  nop                                                              #  24    0x2b6a5  1      
.L_2b6c0:                                                          #        0x2b6a6  0      
  movl 0x100055fc(%rip), %ecx                                      #  25    0x2b6a6  6      
  testl %ecx, %ecx                                                 #  26    0x2b6ac  2      
  jne .L_2ba40                                                     #  27    0x2b6ae  6      
  movq $0x0, 0x20(%rsp)                                            #  28    0x2b6b4  9      
  movl $0x1, 0x20(%rsp)                                            #  29    0x2b6bd  8      
  nop                                                              #  30    0x2b6c5  1      
  movq 0x20(%rsp), %rax                                            #  31    0x2b6c6  5      
  movq $0x0, 0x38(%rsp)                                            #  32    0x2b6cb  9      
  movq %rax, 0x30(%rsp)                                            #  33    0x2b6d4  5      
  nop                                                              #  34    0x2b6d9  1      
.L_2b700:                                                          #        0x2b6da  0      
  movq 0x30(%rsp), %rax                                            #  35    0x2b6da  5      
  movq 0x38(%rsp), %rdx                                            #  36    0x2b6df  5      
  movq 0x40(%rsp), %rbx                                            #  37    0x2b6e4  5      
  movq 0x48(%rsp), %r12                                            #  38    0x2b6e9  5      
  movq 0x50(%rsp), %r13                                            #  39    0x2b6ee  5      
  addl $0x58, %esp                                                 #  40    0x2b6f3  3      
  addq %r15, %rsp                                                  #  41    0x2b6f6  3      
  nop                                                              #  42    0x2b6f9  1      
  popq %r11                                                        #  43    0x2b6fa  3      
  andl $0xffffffe0, %r11d                                          #  44    0x2b6fd  7      
  addq %r15, %r11                                                  #  45    0x2b704  3      
  jmpq %r11                                                        #  46    0x2b707  3      
  nop                                                              #  47    0x2b70a  1      
  nop                                                              #  48    0x2b70b  1      
.L_2b740:                                                          #        0x2b70c  0      
  cmpb $0x0, 0x1000557d(%rip)                                      #  49    0x2b70c  7      
  je .L_2b940                                                      #  50    0x2b713  6      
  nop                                                              #  51    0x2b719  1      
  nop                                                              #  52    0x2b71a  1      
.L_2b760:                                                          #        0x2b71b  0      
  movl %eax, %eax                                                  #  53    0x2b71b  2      
  movl 0x8(%r15,%rax,1), %eax                                      #  54    0x2b71d  5      
  movl %ebx, %esi                                                  #  55    0x2b722  2      
  movl %r12d, %edi                                                 #  56    0x2b724  3      
  nop                                                              #  57    0x2b727  1      
  andl $0xffffffe0, %eax                                           #  58    0x2b728  5      
  addq %r15, %rax                                                  #  59    0x2b72d  3      
  callq %rax                                                       #  60    0x2b730  2      
  movq %rdx, 0x38(%rsp)                                            #  61    0x2b732  5      
  movq %rax, 0x30(%rsp)                                            #  62    0x2b737  5      
  jmpq .L_2b700                                                    #  63    0x2b73c  5      
  xchgw %ax, %ax                                                   #  64    0x2b741  3      
  nop                                                              #  65    0x2b744  1      
.L_2b7a0:                                                          #        0x2b745  0      
  movl $0x10030c90, %edi                                           #  66    0x2b745  5      
  nop                                                              #  67    0x2b74a  1      
  nop                                                              #  68    0x2b74b  1      
  callq .__cxa_guard_acquire                                       #  69    0x2b74c  5      
  testl %eax, %eax                                                 #  70    0x2b751  2      
  je .L_2b6a0                                                      #  71    0x2b753  6      
  nop                                                              #  72    0x2b759  1      
  nop                                                              #  73    0x2b75a  1      
  callq ._ZN2pp6Module3GetEv                                       #  74    0x2b75b  5      
  movl %eax, %edi                                                  #  75    0x2b760  2      
  movl $0x10020522, %esi                                           #  76    0x2b762  5      
  nop                                                              #  77    0x2b767  1      
  nop                                                              #  78    0x2b768  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  79    0x2b769  5      
  movl $0x10030c90, %edi                                           #  80    0x2b76e  5      
  movl %eax, 0x1000551f(%rip)                                      #  81    0x2b773  6      
  nop                                                              #  82    0x2b779  1      
  nop                                                              #  83    0x2b77a  1      
  callq .__cxa_guard_release                                       #  84    0x2b77b  5      
  jmpq .L_2b6a0                                                    #  85    0x2b780  5      
  nop                                                              #  86    0x2b785  1      
  nop                                                              #  87    0x2b786  1      
.L_2b840:                                                          #        0x2b787  0      
  cmpb $0x0, 0x100054f2(%rip)                                      #  88    0x2b787  7      
  jne .L_2b760                                                     #  89    0x2b78e  6      
  movl $0x10030c80, %edi                                           #  90    0x2b794  5      
  nop                                                              #  91    0x2b799  1      
  callq .__cxa_guard_acquire                                       #  92    0x2b79a  5      
  testl %eax, %eax                                                 #  93    0x2b79f  2      
  jne .L_2bac0                                                     #  94    0x2b7a1  6      
  nop                                                              #  95    0x2b7a7  1      
  nop                                                              #  96    0x2b7a8  1      
.L_2b880:                                                          #        0x2b7a9  0      
  movl 0x100054d9(%rip), %eax                                      #  97    0x2b7a9  6      
  jmpq .L_2b760                                                    #  98    0x2b7af  5      
  nop                                                              #  99    0x2b7b4  1      
  nop                                                              #  100   0x2b7b5  1      
.L_2b8a0:                                                          #        0x2b7b6  0      
  movl $0x10030c80, %edi                                           #  101   0x2b7b6  5      
  nop                                                              #  102   0x2b7bb  1      
  nop                                                              #  103   0x2b7bc  1      
  callq .__cxa_guard_acquire                                       #  104   0x2b7bd  5      
  testl %eax, %eax                                                 #  105   0x2b7c2  2      
  je .L_2b680                                                      #  106   0x2b7c4  6      
  nop                                                              #  107   0x2b7ca  1      
  nop                                                              #  108   0x2b7cb  1      
  callq ._ZN2pp6Module3GetEv                                       #  109   0x2b7cc  5      
  movl %eax, %edi                                                  #  110   0x2b7d1  2      
  movl $0x10020516, %esi                                           #  111   0x2b7d3  5      
  nop                                                              #  112   0x2b7d8  1      
  nop                                                              #  113   0x2b7d9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  114   0x2b7da  5      
  movl $0x10030c80, %edi                                           #  115   0x2b7df  5      
  movl %eax, 0x1000549e(%rip)                                      #  116   0x2b7e4  6      
  nop                                                              #  117   0x2b7ea  1      
  nop                                                              #  118   0x2b7eb  1      
  callq .__cxa_guard_release                                       #  119   0x2b7ec  5      
  jmpq .L_2b680                                                    #  120   0x2b7f1  5      
  nop                                                              #  121   0x2b7f6  1      
  nop                                                              #  122   0x2b7f7  1      
.L_2b940:                                                          #        0x2b7f8  0      
  movl $0x10030c90, %edi                                           #  123   0x2b7f8  5      
  nop                                                              #  124   0x2b7fd  1      
  nop                                                              #  125   0x2b7fe  1      
  callq .__cxa_guard_acquire                                       #  126   0x2b7ff  5      
  testl %eax, %eax                                                 #  127   0x2b804  2      
  jne .L_2bb40                                                     #  128   0x2b806  6      
  nop                                                              #  129   0x2b80c  1      
  nop                                                              #  130   0x2b80d  1      
.L_2b980:                                                          #        0x2b80e  0      
  movl 0x10005484(%rip), %eax                                      #  131   0x2b80e  6      
  jmpq .L_2b760                                                    #  132   0x2b814  5      
  nop                                                              #  133   0x2b819  1      
  nop                                                              #  134   0x2b81a  1      
.L_2b9a0:                                                          #        0x2b81b  0      
  movl $0x10030ca0, %edi                                           #  135   0x2b81b  5      
  nop                                                              #  136   0x2b820  1      
  nop                                                              #  137   0x2b821  1      
  callq .__cxa_guard_acquire                                       #  138   0x2b822  5      
  testl %eax, %eax                                                 #  139   0x2b827  2      
  je .L_2b6c0                                                      #  140   0x2b829  6      
  nop                                                              #  141   0x2b82f  1      
  nop                                                              #  142   0x2b830  1      
  callq ._ZN2pp6Module3GetEv                                       #  143   0x2b831  5      
  movl %eax, %edi                                                  #  144   0x2b836  2      
  movl $0x1002050a, %esi                                           #  145   0x2b838  5      
  nop                                                              #  146   0x2b83d  1      
  nop                                                              #  147   0x2b83e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  148   0x2b83f  5      
  movl $0x10030ca0, %edi                                           #  149   0x2b844  5      
  movl %eax, 0x10005459(%rip)                                      #  150   0x2b849  6      
  nop                                                              #  151   0x2b84f  1      
  nop                                                              #  152   0x2b850  1      
  callq .__cxa_guard_release                                       #  153   0x2b851  5      
  jmpq .L_2b6c0                                                    #  154   0x2b856  5      
  nop                                                              #  155   0x2b85b  1      
  nop                                                              #  156   0x2b85c  1      
.L_2ba40:                                                          #        0x2b85d  0      
  nop                                                              #  157   0x2b85d  1      
  nop                                                              #  158   0x2b85e  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  159   0x2b85f  5      
  movl %eax, %eax                                                  #  160   0x2b864  2      
  movl %eax, %eax                                                  #  161   0x2b866  2      
  movl 0x8(%r15,%rax,1), %r13d                                     #  162   0x2b868  5      
  nop                                                              #  163   0x2b86d  1      
  nop                                                              #  164   0x2b86e  1      
  callq ._ZN2pp6Module3GetEv                                       #  165   0x2b86f  5      
  movl %ebx, %edx                                                  #  166   0x2b874  2      
  movl %eax, %eax                                                  #  167   0x2b876  2      
  movl %r12d, %esi                                                 #  168   0x2b878  3      
  movl %eax, %eax                                                  #  169   0x2b87b  2      
  movl 0x1c(%r15,%rax,1), %edi                                     #  170   0x2b87d  5      
  nop                                                              #  171   0x2b882  1      
  andl $0xffffffe0, %r13d                                          #  172   0x2b883  7      
  addq %r15, %r13                                                  #  173   0x2b88a  3      
  callq %r13                                                       #  174   0x2b88d  3      
  movq %rax, 0x30(%rsp)                                            #  175   0x2b890  5      
  movq %rdx, 0x38(%rsp)                                            #  176   0x2b895  5      
  jmpq .L_2b700                                                    #  177   0x2b89a  5      
  xchgw %ax, %ax                                                   #  178   0x2b89f  3      
  nop                                                              #  179   0x2b8a2  1      
.L_2bac0:                                                          #        0x2b8a3  0      
  nop                                                              #  180   0x2b8a3  1      
  nop                                                              #  181   0x2b8a4  1      
  callq ._ZN2pp6Module3GetEv                                       #  182   0x2b8a5  5      
  movl %eax, %edi                                                  #  183   0x2b8aa  2      
  movl $0x10020516, %esi                                           #  184   0x2b8ac  5      
  nop                                                              #  185   0x2b8b1  1      
  nop                                                              #  186   0x2b8b2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  187   0x2b8b3  5      
  movl $0x10030c80, %edi                                           #  188   0x2b8b8  5      
  movl %eax, 0x100053c5(%rip)                                      #  189   0x2b8bd  6      
  nop                                                              #  190   0x2b8c3  1      
  nop                                                              #  191   0x2b8c4  1      
  callq .__cxa_guard_release                                       #  192   0x2b8c5  5      
  jmpq .L_2b880                                                    #  193   0x2b8ca  5      
  nop                                                              #  194   0x2b8cf  1      
  nop                                                              #  195   0x2b8d0  1      
.L_2bb40:                                                          #        0x2b8d1  0      
  nop                                                              #  196   0x2b8d1  1      
  nop                                                              #  197   0x2b8d2  1      
  callq ._ZN2pp6Module3GetEv                                       #  198   0x2b8d3  5      
  movl %eax, %edi                                                  #  199   0x2b8d8  2      
  movl $0x10020522, %esi                                           #  200   0x2b8da  5      
  nop                                                              #  201   0x2b8df  1      
  nop                                                              #  202   0x2b8e0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  203   0x2b8e1  5      
  movl $0x10030c90, %edi                                           #  204   0x2b8e6  5      
  movl %eax, 0x100053a7(%rip)                                      #  205   0x2b8eb  6      
  nop                                                              #  206   0x2b8f1  1      
  nop                                                              #  207   0x2b8f2  1      
  callq .__cxa_guard_release                                       #  208   0x2b8f3  5      
  jmpq .L_2b980                                                    #  209   0x2b8f8  5      
  nop                                                              #  210   0x2b8fd  1      
  nop                                                              #  211   0x2b8fe  1      
.L_2bbc0:                                                          #        0x2b8ff  0      
  movl %eax, %ebx                                                  #  212   0x2b8ff  2      
  movl $0x10030c90, %edi                                           #  213   0x2b901  5      
  nop                                                              #  214   0x2b906  1      
  nop                                                              #  215   0x2b907  1      
  callq .__cxa_guard_abort                                         #  216   0x2b908  5      
  movl %ebx, %edi                                                  #  217   0x2b90d  2      
  nop                                                              #  218   0x2b90f  1      
  nop                                                              #  219   0x2b910  1      
  callq ._Unwind_Resume                                            #  220   0x2b911  5      
.L_2bc00:                                                          #        0x2b916  0      
  movl %eax, %ebx                                                  #  221   0x2b916  2      
  movl $0x10030c80, %edi                                           #  222   0x2b918  5      
  nop                                                              #  223   0x2b91d  1      
  nop                                                              #  224   0x2b91e  1      
  callq .__cxa_guard_abort                                         #  225   0x2b91f  5      
  movl %ebx, %edi                                                  #  226   0x2b924  2      
  nop                                                              #  227   0x2b926  1      
  nop                                                              #  228   0x2b927  1      
  callq ._Unwind_Resume                                            #  229   0x2b928  5      
  movl %eax, %ebx                                                  #  230   0x2b92d  2      
  movl $0x10030ca0, %edi                                           #  231   0x2b92f  5      
  nop                                                              #  232   0x2b934  1      
  nop                                                              #  233   0x2b935  1      
  callq .__cxa_guard_abort                                         #  234   0x2b936  5      
  movl %ebx, %edi                                                  #  235   0x2b93b  2      
  nop                                                              #  236   0x2b93d  1      
  nop                                                              #  237   0x2b93e  1      
  callq ._Unwind_Resume                                            #  238   0x2b93f  5      
  jmpq .L_2bc00                                                    #  239   0x2b944  5      
  nop                                                              #  240   0x2b949  1      
  nop                                                              #  241   0x2b94a  1      
  jmpq .L_2bbc0                                                    #  242   0x2b94b  5      
  nop                                                              #  243   0x2b950  1      
  nop                                                              #  244   0x2b951  1      
  nop                                                              #  245   0x2b952  1      
                                                                                            
.size _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, .-_ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj

