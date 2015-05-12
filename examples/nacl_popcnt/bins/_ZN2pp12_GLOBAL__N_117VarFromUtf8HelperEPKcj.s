  .text
  .globl _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj
  .type _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, @function

#! file-offset 0x2b5c0
#! rip-offset  0x2b5c0
#! capacity    1664 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj:                     #        0x2b5c0  0      
  movq %rbx, -0x18(%rsp)                                           #  1     0x2b5c0  5      
  movq %r12, -0x10(%rsp)                                           #  2     0x2b5c5  5      
  movl %esi, %ebx                                                  #  3     0x2b5ca  2      
  movq %r13, -0x8(%rsp)                                            #  4     0x2b5cc  5      
  subl $0x58, %esp                                                 #  5     0x2b5d1  3      
  addq %r15, %rsp                                                  #  6     0x2b5d4  3      
  cmpb $0x0, 0x100056a2(%rip)                                      #  7     0x2b5d7  7      
  xchgw %ax, %ax                                                   #  8     0x2b5de  3      
  movl %edi, %r12d                                                 #  9     0x2b5e1  3      
  je .L_2b820                                                      #  10    0x2b5e4  6      
  nop                                                              #  11    0x2b5ea  1      
  nop                                                              #  12    0x2b5eb  1      
.L_2b600:                                                          #        0x2b5ec  0      
  movl 0x10005696(%rip), %eax                                      #  13    0x2b5ec  6      
  testq %rax, %rax                                                 #  14    0x2b5f2  3      
  jne .L_2b7c0                                                     #  15    0x2b5f5  6      
  cmpb $0x0, 0x1000568e(%rip)                                      #  16    0x2b5fb  7      
  je .L_2b720                                                      #  17    0x2b602  6      
  nop                                                              #  18    0x2b608  1      
.L_2b620:                                                          #        0x2b609  0      
  movl 0x10005689(%rip), %eax                                      #  19    0x2b609  6      
  testq %rax, %rax                                                 #  20    0x2b60f  3      
  jne .L_2b6c0                                                     #  21    0x2b612  6      
  cmpb $0x0, 0x10005681(%rip)                                      #  22    0x2b618  7      
  je .L_2b920                                                      #  23    0x2b61f  6      
  nop                                                              #  24    0x2b625  1      
.L_2b640:                                                          #        0x2b626  0      
  movl 0x1000567c(%rip), %ecx                                      #  25    0x2b626  6      
  testl %ecx, %ecx                                                 #  26    0x2b62c  2      
  jne .L_2b9c0                                                     #  27    0x2b62e  6      
  movq $0x0, 0x20(%rsp)                                            #  28    0x2b634  9      
  movl $0x1, 0x20(%rsp)                                            #  29    0x2b63d  8      
  nop                                                              #  30    0x2b645  1      
  movq 0x20(%rsp), %rax                                            #  31    0x2b646  5      
  movq $0x0, 0x38(%rsp)                                            #  32    0x2b64b  9      
  movq %rax, 0x30(%rsp)                                            #  33    0x2b654  5      
  nop                                                              #  34    0x2b659  1      
.L_2b680:                                                          #        0x2b65a  0      
  movq 0x30(%rsp), %rax                                            #  35    0x2b65a  5      
  movq 0x38(%rsp), %rdx                                            #  36    0x2b65f  5      
  movq 0x40(%rsp), %rbx                                            #  37    0x2b664  5      
  movq 0x48(%rsp), %r12                                            #  38    0x2b669  5      
  movq 0x50(%rsp), %r13                                            #  39    0x2b66e  5      
  addl $0x58, %esp                                                 #  40    0x2b673  3      
  addq %r15, %rsp                                                  #  41    0x2b676  3      
  nop                                                              #  42    0x2b679  1      
  popq %r11                                                        #  43    0x2b67a  3      
  andl $0xffffffe0, %r11d                                          #  44    0x2b67d  7      
  addq %r15, %r11                                                  #  45    0x2b684  3      
  jmpq %r11                                                        #  46    0x2b687  3      
  nop                                                              #  47    0x2b68a  1      
  nop                                                              #  48    0x2b68b  1      
.L_2b6c0:                                                          #        0x2b68c  0      
  cmpb $0x0, 0x100055fd(%rip)                                      #  49    0x2b68c  7      
  je .L_2b8c0                                                      #  50    0x2b693  6      
  nop                                                              #  51    0x2b699  1      
  nop                                                              #  52    0x2b69a  1      
.L_2b6e0:                                                          #        0x2b69b  0      
  movl %eax, %eax                                                  #  53    0x2b69b  2      
  movl 0x8(%r15,%rax,1), %eax                                      #  54    0x2b69d  5      
  movl %ebx, %esi                                                  #  55    0x2b6a2  2      
  movl %r12d, %edi                                                 #  56    0x2b6a4  3      
  nop                                                              #  57    0x2b6a7  1      
  andl $0xffffffe0, %eax                                           #  58    0x2b6a8  5      
  addq %r15, %rax                                                  #  59    0x2b6ad  3      
  callq %rax                                                       #  60    0x2b6b0  2      
  movq %rdx, 0x38(%rsp)                                            #  61    0x2b6b2  5      
  movq %rax, 0x30(%rsp)                                            #  62    0x2b6b7  5      
  jmpq .L_2b680                                                    #  63    0x2b6bc  5      
  xchgw %ax, %ax                                                   #  64    0x2b6c1  3      
  nop                                                              #  65    0x2b6c4  1      
.L_2b720:                                                          #        0x2b6c5  0      
  movl $0x10030c90, %edi                                           #  66    0x2b6c5  5      
  nop                                                              #  67    0x2b6ca  1      
  nop                                                              #  68    0x2b6cb  1      
  callq .__cxa_guard_acquire                                       #  69    0x2b6cc  5      
  testl %eax, %eax                                                 #  70    0x2b6d1  2      
  je .L_2b620                                                      #  71    0x2b6d3  6      
  nop                                                              #  72    0x2b6d9  1      
  nop                                                              #  73    0x2b6da  1      
  callq ._ZN2pp6Module3GetEv                                       #  74    0x2b6db  5      
  movl %eax, %edi                                                  #  75    0x2b6e0  2      
  movl $0x10020522, %esi                                           #  76    0x2b6e2  5      
  nop                                                              #  77    0x2b6e7  1      
  nop                                                              #  78    0x2b6e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  79    0x2b6e9  5      
  movl $0x10030c90, %edi                                           #  80    0x2b6ee  5      
  movl %eax, 0x1000559f(%rip)                                      #  81    0x2b6f3  6      
  nop                                                              #  82    0x2b6f9  1      
  nop                                                              #  83    0x2b6fa  1      
  callq .__cxa_guard_release                                       #  84    0x2b6fb  5      
  jmpq .L_2b620                                                    #  85    0x2b700  5      
  nop                                                              #  86    0x2b705  1      
  nop                                                              #  87    0x2b706  1      
.L_2b7c0:                                                          #        0x2b707  0      
  cmpb $0x0, 0x10005572(%rip)                                      #  88    0x2b707  7      
  jne .L_2b6e0                                                     #  89    0x2b70e  6      
  movl $0x10030c80, %edi                                           #  90    0x2b714  5      
  nop                                                              #  91    0x2b719  1      
  callq .__cxa_guard_acquire                                       #  92    0x2b71a  5      
  testl %eax, %eax                                                 #  93    0x2b71f  2      
  jne .L_2ba40                                                     #  94    0x2b721  6      
  nop                                                              #  95    0x2b727  1      
  nop                                                              #  96    0x2b728  1      
.L_2b800:                                                          #        0x2b729  0      
  movl 0x10005559(%rip), %eax                                      #  97    0x2b729  6      
  jmpq .L_2b6e0                                                    #  98    0x2b72f  5      
  nop                                                              #  99    0x2b734  1      
  nop                                                              #  100   0x2b735  1      
.L_2b820:                                                          #        0x2b736  0      
  movl $0x10030c80, %edi                                           #  101   0x2b736  5      
  nop                                                              #  102   0x2b73b  1      
  nop                                                              #  103   0x2b73c  1      
  callq .__cxa_guard_acquire                                       #  104   0x2b73d  5      
  testl %eax, %eax                                                 #  105   0x2b742  2      
  je .L_2b600                                                      #  106   0x2b744  6      
  nop                                                              #  107   0x2b74a  1      
  nop                                                              #  108   0x2b74b  1      
  callq ._ZN2pp6Module3GetEv                                       #  109   0x2b74c  5      
  movl %eax, %edi                                                  #  110   0x2b751  2      
  movl $0x10020516, %esi                                           #  111   0x2b753  5      
  nop                                                              #  112   0x2b758  1      
  nop                                                              #  113   0x2b759  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  114   0x2b75a  5      
  movl $0x10030c80, %edi                                           #  115   0x2b75f  5      
  movl %eax, 0x1000551e(%rip)                                      #  116   0x2b764  6      
  nop                                                              #  117   0x2b76a  1      
  nop                                                              #  118   0x2b76b  1      
  callq .__cxa_guard_release                                       #  119   0x2b76c  5      
  jmpq .L_2b600                                                    #  120   0x2b771  5      
  nop                                                              #  121   0x2b776  1      
  nop                                                              #  122   0x2b777  1      
.L_2b8c0:                                                          #        0x2b778  0      
  movl $0x10030c90, %edi                                           #  123   0x2b778  5      
  nop                                                              #  124   0x2b77d  1      
  nop                                                              #  125   0x2b77e  1      
  callq .__cxa_guard_acquire                                       #  126   0x2b77f  5      
  testl %eax, %eax                                                 #  127   0x2b784  2      
  jne .L_2bac0                                                     #  128   0x2b786  6      
  nop                                                              #  129   0x2b78c  1      
  nop                                                              #  130   0x2b78d  1      
.L_2b900:                                                          #        0x2b78e  0      
  movl 0x10005504(%rip), %eax                                      #  131   0x2b78e  6      
  jmpq .L_2b6e0                                                    #  132   0x2b794  5      
  nop                                                              #  133   0x2b799  1      
  nop                                                              #  134   0x2b79a  1      
.L_2b920:                                                          #        0x2b79b  0      
  movl $0x10030ca0, %edi                                           #  135   0x2b79b  5      
  nop                                                              #  136   0x2b7a0  1      
  nop                                                              #  137   0x2b7a1  1      
  callq .__cxa_guard_acquire                                       #  138   0x2b7a2  5      
  testl %eax, %eax                                                 #  139   0x2b7a7  2      
  je .L_2b640                                                      #  140   0x2b7a9  6      
  nop                                                              #  141   0x2b7af  1      
  nop                                                              #  142   0x2b7b0  1      
  callq ._ZN2pp6Module3GetEv                                       #  143   0x2b7b1  5      
  movl %eax, %edi                                                  #  144   0x2b7b6  2      
  movl $0x1002050a, %esi                                           #  145   0x2b7b8  5      
  nop                                                              #  146   0x2b7bd  1      
  nop                                                              #  147   0x2b7be  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  148   0x2b7bf  5      
  movl $0x10030ca0, %edi                                           #  149   0x2b7c4  5      
  movl %eax, 0x100054d9(%rip)                                      #  150   0x2b7c9  6      
  nop                                                              #  151   0x2b7cf  1      
  nop                                                              #  152   0x2b7d0  1      
  callq .__cxa_guard_release                                       #  153   0x2b7d1  5      
  jmpq .L_2b640                                                    #  154   0x2b7d6  5      
  nop                                                              #  155   0x2b7db  1      
  nop                                                              #  156   0x2b7dc  1      
.L_2b9c0:                                                          #        0x2b7dd  0      
  nop                                                              #  157   0x2b7dd  1      
  nop                                                              #  158   0x2b7de  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  159   0x2b7df  5      
  movl %eax, %eax                                                  #  160   0x2b7e4  2      
  movl %eax, %eax                                                  #  161   0x2b7e6  2      
  movl 0x8(%r15,%rax,1), %r13d                                     #  162   0x2b7e8  5      
  nop                                                              #  163   0x2b7ed  1      
  nop                                                              #  164   0x2b7ee  1      
  callq ._ZN2pp6Module3GetEv                                       #  165   0x2b7ef  5      
  movl %ebx, %edx                                                  #  166   0x2b7f4  2      
  movl %eax, %eax                                                  #  167   0x2b7f6  2      
  movl %r12d, %esi                                                 #  168   0x2b7f8  3      
  movl %eax, %eax                                                  #  169   0x2b7fb  2      
  movl 0x1c(%r15,%rax,1), %edi                                     #  170   0x2b7fd  5      
  nop                                                              #  171   0x2b802  1      
  andl $0xffffffe0, %r13d                                          #  172   0x2b803  7      
  addq %r15, %r13                                                  #  173   0x2b80a  3      
  callq %r13                                                       #  174   0x2b80d  3      
  movq %rax, 0x30(%rsp)                                            #  175   0x2b810  5      
  movq %rdx, 0x38(%rsp)                                            #  176   0x2b815  5      
  jmpq .L_2b680                                                    #  177   0x2b81a  5      
  xchgw %ax, %ax                                                   #  178   0x2b81f  3      
  nop                                                              #  179   0x2b822  1      
.L_2ba40:                                                          #        0x2b823  0      
  nop                                                              #  180   0x2b823  1      
  nop                                                              #  181   0x2b824  1      
  callq ._ZN2pp6Module3GetEv                                       #  182   0x2b825  5      
  movl %eax, %edi                                                  #  183   0x2b82a  2      
  movl $0x10020516, %esi                                           #  184   0x2b82c  5      
  nop                                                              #  185   0x2b831  1      
  nop                                                              #  186   0x2b832  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  187   0x2b833  5      
  movl $0x10030c80, %edi                                           #  188   0x2b838  5      
  movl %eax, 0x10005445(%rip)                                      #  189   0x2b83d  6      
  nop                                                              #  190   0x2b843  1      
  nop                                                              #  191   0x2b844  1      
  callq .__cxa_guard_release                                       #  192   0x2b845  5      
  jmpq .L_2b800                                                    #  193   0x2b84a  5      
  nop                                                              #  194   0x2b84f  1      
  nop                                                              #  195   0x2b850  1      
.L_2bac0:                                                          #        0x2b851  0      
  nop                                                              #  196   0x2b851  1      
  nop                                                              #  197   0x2b852  1      
  callq ._ZN2pp6Module3GetEv                                       #  198   0x2b853  5      
  movl %eax, %edi                                                  #  199   0x2b858  2      
  movl $0x10020522, %esi                                           #  200   0x2b85a  5      
  nop                                                              #  201   0x2b85f  1      
  nop                                                              #  202   0x2b860  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  203   0x2b861  5      
  movl $0x10030c90, %edi                                           #  204   0x2b866  5      
  movl %eax, 0x10005427(%rip)                                      #  205   0x2b86b  6      
  nop                                                              #  206   0x2b871  1      
  nop                                                              #  207   0x2b872  1      
  callq .__cxa_guard_release                                       #  208   0x2b873  5      
  jmpq .L_2b900                                                    #  209   0x2b878  5      
  nop                                                              #  210   0x2b87d  1      
  nop                                                              #  211   0x2b87e  1      
.L_2bb40:                                                          #        0x2b87f  0      
  movl %eax, %ebx                                                  #  212   0x2b87f  2      
  movl $0x10030c90, %edi                                           #  213   0x2b881  5      
  nop                                                              #  214   0x2b886  1      
  nop                                                              #  215   0x2b887  1      
  callq .__cxa_guard_abort                                         #  216   0x2b888  5      
  movl %ebx, %edi                                                  #  217   0x2b88d  2      
  nop                                                              #  218   0x2b88f  1      
  nop                                                              #  219   0x2b890  1      
  callq ._Unwind_Resume                                            #  220   0x2b891  5      
.L_2bb80:                                                          #        0x2b896  0      
  movl %eax, %ebx                                                  #  221   0x2b896  2      
  movl $0x10030c80, %edi                                           #  222   0x2b898  5      
  nop                                                              #  223   0x2b89d  1      
  nop                                                              #  224   0x2b89e  1      
  callq .__cxa_guard_abort                                         #  225   0x2b89f  5      
  movl %ebx, %edi                                                  #  226   0x2b8a4  2      
  nop                                                              #  227   0x2b8a6  1      
  nop                                                              #  228   0x2b8a7  1      
  callq ._Unwind_Resume                                            #  229   0x2b8a8  5      
  movl %eax, %ebx                                                  #  230   0x2b8ad  2      
  movl $0x10030ca0, %edi                                           #  231   0x2b8af  5      
  nop                                                              #  232   0x2b8b4  1      
  nop                                                              #  233   0x2b8b5  1      
  callq .__cxa_guard_abort                                         #  234   0x2b8b6  5      
  movl %ebx, %edi                                                  #  235   0x2b8bb  2      
  nop                                                              #  236   0x2b8bd  1      
  nop                                                              #  237   0x2b8be  1      
  callq ._Unwind_Resume                                            #  238   0x2b8bf  5      
  jmpq .L_2bb80                                                    #  239   0x2b8c4  5      
  nop                                                              #  240   0x2b8c9  1      
  nop                                                              #  241   0x2b8ca  1      
  jmpq .L_2bb40                                                    #  242   0x2b8cb  5      
  nop                                                              #  243   0x2b8d0  1      
  nop                                                              #  244   0x2b8d1  1      
  nop                                                              #  245   0x2b8d2  1      
                                                                                            
.size _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, .-_ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj

