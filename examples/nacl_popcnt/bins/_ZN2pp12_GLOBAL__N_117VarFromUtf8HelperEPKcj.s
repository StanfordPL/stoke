  .text
  .globl _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj
  .type _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, @function

#! file-offset 0x2b5a0
#! rip-offset  0x2b5a0
#! capacity    1664 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj:                     #        0x2b5a0  0      
  movq %rbx, -0x18(%rsp)                                           #  1     0x2b5a0  5      
  movq %r12, -0x10(%rsp)                                           #  2     0x2b5a5  5      
  movl %esi, %ebx                                                  #  3     0x2b5aa  2      
  movq %r13, -0x8(%rsp)                                            #  4     0x2b5ac  5      
  subl $0x58, %esp                                                 #  5     0x2b5b1  3      
  addq %r15, %rsp                                                  #  6     0x2b5b4  3      
  cmpb $0x0, 0x100056c2(%rip)                                      #  7     0x2b5b7  7      
  xchgw %ax, %ax                                                   #  8     0x2b5be  3      
  movl %edi, %r12d                                                 #  9     0x2b5c1  3      
  je .L_2b800                                                      #  10    0x2b5c4  6      
  nop                                                              #  11    0x2b5ca  1      
  nop                                                              #  12    0x2b5cb  1      
.L_2b5e0:                                                          #        0x2b5cc  0      
  movl 0x100056b6(%rip), %eax                                      #  13    0x2b5cc  6      
  testq %rax, %rax                                                 #  14    0x2b5d2  3      
  jne .L_2b7a0                                                     #  15    0x2b5d5  6      
  cmpb $0x0, 0x100056ae(%rip)                                      #  16    0x2b5db  7      
  je .L_2b700                                                      #  17    0x2b5e2  6      
  nop                                                              #  18    0x2b5e8  1      
.L_2b600:                                                          #        0x2b5e9  0      
  movl 0x100056a9(%rip), %eax                                      #  19    0x2b5e9  6      
  testq %rax, %rax                                                 #  20    0x2b5ef  3      
  jne .L_2b6a0                                                     #  21    0x2b5f2  6      
  cmpb $0x0, 0x100056a1(%rip)                                      #  22    0x2b5f8  7      
  je .L_2b900                                                      #  23    0x2b5ff  6      
  nop                                                              #  24    0x2b605  1      
.L_2b620:                                                          #        0x2b606  0      
  movl 0x1000569c(%rip), %ecx                                      #  25    0x2b606  6      
  testl %ecx, %ecx                                                 #  26    0x2b60c  2      
  jne .L_2b9a0                                                     #  27    0x2b60e  6      
  movq $0x0, 0x20(%rsp)                                            #  28    0x2b614  9      
  movl $0x1, 0x20(%rsp)                                            #  29    0x2b61d  8      
  nop                                                              #  30    0x2b625  1      
  movq 0x20(%rsp), %rax                                            #  31    0x2b626  5      
  movq $0x0, 0x38(%rsp)                                            #  32    0x2b62b  9      
  movq %rax, 0x30(%rsp)                                            #  33    0x2b634  5      
  nop                                                              #  34    0x2b639  1      
.L_2b660:                                                          #        0x2b63a  0      
  movq 0x30(%rsp), %rax                                            #  35    0x2b63a  5      
  movq 0x38(%rsp), %rdx                                            #  36    0x2b63f  5      
  movq 0x40(%rsp), %rbx                                            #  37    0x2b644  5      
  movq 0x48(%rsp), %r12                                            #  38    0x2b649  5      
  movq 0x50(%rsp), %r13                                            #  39    0x2b64e  5      
  addl $0x58, %esp                                                 #  40    0x2b653  3      
  addq %r15, %rsp                                                  #  41    0x2b656  3      
  nop                                                              #  42    0x2b659  1      
  popq %r11                                                        #  43    0x2b65a  3      
  andl $0xffffffe0, %r11d                                          #  44    0x2b65d  7      
  addq %r15, %r11                                                  #  45    0x2b664  3      
  jmpq %r11                                                        #  46    0x2b667  3      
  nop                                                              #  47    0x2b66a  1      
  nop                                                              #  48    0x2b66b  1      
.L_2b6a0:                                                          #        0x2b66c  0      
  cmpb $0x0, 0x1000561d(%rip)                                      #  49    0x2b66c  7      
  je .L_2b8a0                                                      #  50    0x2b673  6      
  nop                                                              #  51    0x2b679  1      
  nop                                                              #  52    0x2b67a  1      
.L_2b6c0:                                                          #        0x2b67b  0      
  movl %eax, %eax                                                  #  53    0x2b67b  2      
  movl 0x8(%r15,%rax,1), %eax                                      #  54    0x2b67d  5      
  movl %ebx, %esi                                                  #  55    0x2b682  2      
  movl %r12d, %edi                                                 #  56    0x2b684  3      
  nop                                                              #  57    0x2b687  1      
  andl $0xffffffe0, %eax                                           #  58    0x2b688  5      
  addq %r15, %rax                                                  #  59    0x2b68d  3      
  callq %rax                                                       #  60    0x2b690  2      
  movq %rdx, 0x38(%rsp)                                            #  61    0x2b692  5      
  movq %rax, 0x30(%rsp)                                            #  62    0x2b697  5      
  jmpq .L_2b660                                                    #  63    0x2b69c  5      
  xchgw %ax, %ax                                                   #  64    0x2b6a1  3      
  nop                                                              #  65    0x2b6a4  1      
.L_2b700:                                                          #        0x2b6a5  0      
  movl $0x10030c90, %edi                                           #  66    0x2b6a5  5      
  nop                                                              #  67    0x2b6aa  1      
  nop                                                              #  68    0x2b6ab  1      
  callq .__cxa_guard_acquire                                       #  69    0x2b6ac  5      
  testl %eax, %eax                                                 #  70    0x2b6b1  2      
  je .L_2b600                                                      #  71    0x2b6b3  6      
  nop                                                              #  72    0x2b6b9  1      
  nop                                                              #  73    0x2b6ba  1      
  callq ._ZN2pp6Module3GetEv                                       #  74    0x2b6bb  5      
  movl %eax, %edi                                                  #  75    0x2b6c0  2      
  movl $0x10020522, %esi                                           #  76    0x2b6c2  5      
  nop                                                              #  77    0x2b6c7  1      
  nop                                                              #  78    0x2b6c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  79    0x2b6c9  5      
  movl $0x10030c90, %edi                                           #  80    0x2b6ce  5      
  movl %eax, 0x100055bf(%rip)                                      #  81    0x2b6d3  6      
  nop                                                              #  82    0x2b6d9  1      
  nop                                                              #  83    0x2b6da  1      
  callq .__cxa_guard_release                                       #  84    0x2b6db  5      
  jmpq .L_2b600                                                    #  85    0x2b6e0  5      
  nop                                                              #  86    0x2b6e5  1      
  nop                                                              #  87    0x2b6e6  1      
.L_2b7a0:                                                          #        0x2b6e7  0      
  cmpb $0x0, 0x10005592(%rip)                                      #  88    0x2b6e7  7      
  jne .L_2b6c0                                                     #  89    0x2b6ee  6      
  movl $0x10030c80, %edi                                           #  90    0x2b6f4  5      
  nop                                                              #  91    0x2b6f9  1      
  callq .__cxa_guard_acquire                                       #  92    0x2b6fa  5      
  testl %eax, %eax                                                 #  93    0x2b6ff  2      
  jne .L_2ba20                                                     #  94    0x2b701  6      
  nop                                                              #  95    0x2b707  1      
  nop                                                              #  96    0x2b708  1      
.L_2b7e0:                                                          #        0x2b709  0      
  movl 0x10005579(%rip), %eax                                      #  97    0x2b709  6      
  jmpq .L_2b6c0                                                    #  98    0x2b70f  5      
  nop                                                              #  99    0x2b714  1      
  nop                                                              #  100   0x2b715  1      
.L_2b800:                                                          #        0x2b716  0      
  movl $0x10030c80, %edi                                           #  101   0x2b716  5      
  nop                                                              #  102   0x2b71b  1      
  nop                                                              #  103   0x2b71c  1      
  callq .__cxa_guard_acquire                                       #  104   0x2b71d  5      
  testl %eax, %eax                                                 #  105   0x2b722  2      
  je .L_2b5e0                                                      #  106   0x2b724  6      
  nop                                                              #  107   0x2b72a  1      
  nop                                                              #  108   0x2b72b  1      
  callq ._ZN2pp6Module3GetEv                                       #  109   0x2b72c  5      
  movl %eax, %edi                                                  #  110   0x2b731  2      
  movl $0x10020516, %esi                                           #  111   0x2b733  5      
  nop                                                              #  112   0x2b738  1      
  nop                                                              #  113   0x2b739  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  114   0x2b73a  5      
  movl $0x10030c80, %edi                                           #  115   0x2b73f  5      
  movl %eax, 0x1000553e(%rip)                                      #  116   0x2b744  6      
  nop                                                              #  117   0x2b74a  1      
  nop                                                              #  118   0x2b74b  1      
  callq .__cxa_guard_release                                       #  119   0x2b74c  5      
  jmpq .L_2b5e0                                                    #  120   0x2b751  5      
  nop                                                              #  121   0x2b756  1      
  nop                                                              #  122   0x2b757  1      
.L_2b8a0:                                                          #        0x2b758  0      
  movl $0x10030c90, %edi                                           #  123   0x2b758  5      
  nop                                                              #  124   0x2b75d  1      
  nop                                                              #  125   0x2b75e  1      
  callq .__cxa_guard_acquire                                       #  126   0x2b75f  5      
  testl %eax, %eax                                                 #  127   0x2b764  2      
  jne .L_2baa0                                                     #  128   0x2b766  6      
  nop                                                              #  129   0x2b76c  1      
  nop                                                              #  130   0x2b76d  1      
.L_2b8e0:                                                          #        0x2b76e  0      
  movl 0x10005524(%rip), %eax                                      #  131   0x2b76e  6      
  jmpq .L_2b6c0                                                    #  132   0x2b774  5      
  nop                                                              #  133   0x2b779  1      
  nop                                                              #  134   0x2b77a  1      
.L_2b900:                                                          #        0x2b77b  0      
  movl $0x10030ca0, %edi                                           #  135   0x2b77b  5      
  nop                                                              #  136   0x2b780  1      
  nop                                                              #  137   0x2b781  1      
  callq .__cxa_guard_acquire                                       #  138   0x2b782  5      
  testl %eax, %eax                                                 #  139   0x2b787  2      
  je .L_2b620                                                      #  140   0x2b789  6      
  nop                                                              #  141   0x2b78f  1      
  nop                                                              #  142   0x2b790  1      
  callq ._ZN2pp6Module3GetEv                                       #  143   0x2b791  5      
  movl %eax, %edi                                                  #  144   0x2b796  2      
  movl $0x1002050a, %esi                                           #  145   0x2b798  5      
  nop                                                              #  146   0x2b79d  1      
  nop                                                              #  147   0x2b79e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  148   0x2b79f  5      
  movl $0x10030ca0, %edi                                           #  149   0x2b7a4  5      
  movl %eax, 0x100054f9(%rip)                                      #  150   0x2b7a9  6      
  nop                                                              #  151   0x2b7af  1      
  nop                                                              #  152   0x2b7b0  1      
  callq .__cxa_guard_release                                       #  153   0x2b7b1  5      
  jmpq .L_2b620                                                    #  154   0x2b7b6  5      
  nop                                                              #  155   0x2b7bb  1      
  nop                                                              #  156   0x2b7bc  1      
.L_2b9a0:                                                          #        0x2b7bd  0      
  nop                                                              #  157   0x2b7bd  1      
  nop                                                              #  158   0x2b7be  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v  #  159   0x2b7bf  5      
  movl %eax, %eax                                                  #  160   0x2b7c4  2      
  movl %eax, %eax                                                  #  161   0x2b7c6  2      
  movl 0x8(%r15,%rax,1), %r13d                                     #  162   0x2b7c8  5      
  nop                                                              #  163   0x2b7cd  1      
  nop                                                              #  164   0x2b7ce  1      
  callq ._ZN2pp6Module3GetEv                                       #  165   0x2b7cf  5      
  movl %ebx, %edx                                                  #  166   0x2b7d4  2      
  movl %eax, %eax                                                  #  167   0x2b7d6  2      
  movl %r12d, %esi                                                 #  168   0x2b7d8  3      
  movl %eax, %eax                                                  #  169   0x2b7db  2      
  movl 0x1c(%r15,%rax,1), %edi                                     #  170   0x2b7dd  5      
  nop                                                              #  171   0x2b7e2  1      
  andl $0xffffffe0, %r13d                                          #  172   0x2b7e3  7      
  addq %r15, %r13                                                  #  173   0x2b7ea  3      
  callq %r13                                                       #  174   0x2b7ed  3      
  movq %rax, 0x30(%rsp)                                            #  175   0x2b7f0  5      
  movq %rdx, 0x38(%rsp)                                            #  176   0x2b7f5  5      
  jmpq .L_2b660                                                    #  177   0x2b7fa  5      
  xchgw %ax, %ax                                                   #  178   0x2b7ff  3      
  nop                                                              #  179   0x2b802  1      
.L_2ba20:                                                          #        0x2b803  0      
  nop                                                              #  180   0x2b803  1      
  nop                                                              #  181   0x2b804  1      
  callq ._ZN2pp6Module3GetEv                                       #  182   0x2b805  5      
  movl %eax, %edi                                                  #  183   0x2b80a  2      
  movl $0x10020516, %esi                                           #  184   0x2b80c  5      
  nop                                                              #  185   0x2b811  1      
  nop                                                              #  186   0x2b812  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  187   0x2b813  5      
  movl $0x10030c80, %edi                                           #  188   0x2b818  5      
  movl %eax, 0x10005465(%rip)                                      #  189   0x2b81d  6      
  nop                                                              #  190   0x2b823  1      
  nop                                                              #  191   0x2b824  1      
  callq .__cxa_guard_release                                       #  192   0x2b825  5      
  jmpq .L_2b7e0                                                    #  193   0x2b82a  5      
  nop                                                              #  194   0x2b82f  1      
  nop                                                              #  195   0x2b830  1      
.L_2baa0:                                                          #        0x2b831  0      
  nop                                                              #  196   0x2b831  1      
  nop                                                              #  197   0x2b832  1      
  callq ._ZN2pp6Module3GetEv                                       #  198   0x2b833  5      
  movl %eax, %edi                                                  #  199   0x2b838  2      
  movl $0x10020522, %esi                                           #  200   0x2b83a  5      
  nop                                                              #  201   0x2b83f  1      
  nop                                                              #  202   0x2b840  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                    #  203   0x2b841  5      
  movl $0x10030c90, %edi                                           #  204   0x2b846  5      
  movl %eax, 0x10005447(%rip)                                      #  205   0x2b84b  6      
  nop                                                              #  206   0x2b851  1      
  nop                                                              #  207   0x2b852  1      
  callq .__cxa_guard_release                                       #  208   0x2b853  5      
  jmpq .L_2b8e0                                                    #  209   0x2b858  5      
  nop                                                              #  210   0x2b85d  1      
  nop                                                              #  211   0x2b85e  1      
.L_2bb20:                                                          #        0x2b85f  0      
  movl %eax, %ebx                                                  #  212   0x2b85f  2      
  movl $0x10030c90, %edi                                           #  213   0x2b861  5      
  nop                                                              #  214   0x2b866  1      
  nop                                                              #  215   0x2b867  1      
  callq .__cxa_guard_abort                                         #  216   0x2b868  5      
  movl %ebx, %edi                                                  #  217   0x2b86d  2      
  nop                                                              #  218   0x2b86f  1      
  nop                                                              #  219   0x2b870  1      
  callq ._Unwind_Resume                                            #  220   0x2b871  5      
.L_2bb60:                                                          #        0x2b876  0      
  movl %eax, %ebx                                                  #  221   0x2b876  2      
  movl $0x10030c80, %edi                                           #  222   0x2b878  5      
  nop                                                              #  223   0x2b87d  1      
  nop                                                              #  224   0x2b87e  1      
  callq .__cxa_guard_abort                                         #  225   0x2b87f  5      
  movl %ebx, %edi                                                  #  226   0x2b884  2      
  nop                                                              #  227   0x2b886  1      
  nop                                                              #  228   0x2b887  1      
  callq ._Unwind_Resume                                            #  229   0x2b888  5      
  movl %eax, %ebx                                                  #  230   0x2b88d  2      
  movl $0x10030ca0, %edi                                           #  231   0x2b88f  5      
  nop                                                              #  232   0x2b894  1      
  nop                                                              #  233   0x2b895  1      
  callq .__cxa_guard_abort                                         #  234   0x2b896  5      
  movl %ebx, %edi                                                  #  235   0x2b89b  2      
  nop                                                              #  236   0x2b89d  1      
  nop                                                              #  237   0x2b89e  1      
  callq ._Unwind_Resume                                            #  238   0x2b89f  5      
  jmpq .L_2bb60                                                    #  239   0x2b8a4  5      
  nop                                                              #  240   0x2b8a9  1      
  nop                                                              #  241   0x2b8aa  1      
  jmpq .L_2bb20                                                    #  242   0x2b8ab  5      
  nop                                                              #  243   0x2b8b0  1      
  nop                                                              #  244   0x2b8b1  1      
  nop                                                              #  245   0x2b8b2  1      
                                                                                            
.size _ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj, .-_ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj

