  .text
  .globl _ZN2pp6Module18GetPluginInterfaceEPKc
  .type _ZN2pp6Module18GetPluginInterfaceEPKc, @function

#! file-offset 0x25180
#! rip-offset  0x25180
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._ZN2pp6Module18GetPluginInterfaceEPKc:  #        0x25180  0      
  pushq %r12                             #  1     0x25180  3      
  movl %esi, %r8d                        #  2     0x25183  3      
  movl $0x13, %ecx                       #  3     0x25186  5      
  movq %r8, %rsi                         #  4     0x2518b  3      
  movl $0x100203e0, %eax                 #  5     0x2518e  5      
  pushq %rbx                             #  6     0x25193  2      
  movl %edi, %ebx                        #  7     0x25195  2      
  movl $0x10020371, %edi                 #  8     0x25197  5      
  subl $0x28, %esp                       #  9     0x2519c  3      
  addq %r15, %rsp                        #  10    0x2519f  3      
  movl %esi, %esi                        #  11    0x251a2  2      
  leaq (%r15,%rsi,1), %rsi               #  12    0x251a4  4      
  movl %edi, %edi                        #  13    0x251a8  2      
  leaq (%r15,%rdi,1), %rdi               #  14    0x251aa  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  15    0x251ae  3      
  movl %esi, %esi                        #  16    0x251b1  2      
  movl %edi, %edi                        #  17    0x251b3  2      
  seta %cl                               #  18    0x251b5  3      
  setb %dl                               #  19    0x251b8  3      
  cmpb %dl, %cl                          #  20    0x251bb  2      
  je .L_25240                            #  21    0x251bd  6      
  movl $0x11, %ecx                       #  22    0x251c3  5      
  movl $0x10020384, %edi                 #  23    0x251c8  5      
  movq %r8, %rsi                         #  24    0x251cd  3      
  movl %esi, %esi                        #  25    0x251d0  2      
  leaq (%r15,%rsi,1), %rsi               #  26    0x251d2  4      
  movl %edi, %edi                        #  27    0x251d6  2      
  leaq (%r15,%rdi,1), %rdi               #  28    0x251d8  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  29    0x251dc  3      
  movl %esi, %esi                        #  30    0x251df  2      
  movl %edi, %edi                        #  31    0x251e1  2      
  nop                                    #  32    0x251e3  1      
  movl $0x100304d0, %eax                 #  33    0x251e4  5      
  seta %cl                               #  34    0x251e9  3      
  setb %dl                               #  35    0x251ec  3      
  cmpb %dl, %cl                          #  36    0x251ef  2      
  je .L_25240                            #  37    0x251f1  6      
  movl $0x12, %ecx                       #  38    0x251f7  5      
  movl $0x10020395, %edi                 #  39    0x251fc  5      
  movq %r8, %rsi                         #  40    0x25201  3      
  nop                                    #  41    0x25204  1      
  movl %esi, %esi                        #  42    0x25205  2      
  leaq (%r15,%rsi,1), %rsi               #  43    0x25207  4      
  movl %edi, %edi                        #  44    0x2520b  2      
  leaq (%r15,%rdi,1), %rdi               #  45    0x2520d  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  46    0x25211  3      
  movl %esi, %esi                        #  47    0x25214  2      
  movl %edi, %edi                        #  48    0x25216  2      
  movl $0x100304e4, %eax                 #  49    0x25218  5      
  seta %cl                               #  50    0x2521d  3      
  setb %dl                               #  51    0x25220  3      
  cmpb %dl, %cl                          #  52    0x25223  2      
  nop                                    #  53    0x25225  1      
  jne .L_25260                           #  54    0x25226  6      
  nop                                    #  55    0x2522c  1      
  nop                                    #  56    0x2522d  1      
.L_25240:                                #        0x2522e  0      
  addl $0x28, %esp                       #  57    0x2522e  3      
  addq %r15, %rsp                        #  58    0x25231  3      
  popq %rbx                              #  59    0x25234  2      
  popq %r12                              #  60    0x25236  3      
  popq %r11                              #  61    0x25239  3      
  andl $0xffffffe0, %r11d                #  62    0x2523c  7      
  addq %r15, %r11                        #  63    0x25243  3      
  jmpq %r11                              #  64    0x25246  3      
  nop                                    #  65    0x25249  1      
.L_25260:                                #        0x2524a  0      
  leal 0x1f(%rsp), %edx                  #  66    0x2524a  4      
  leal 0x10(%rsp), %edi                  #  67    0x2524e  4      
  movl %r8d, %esi                        #  68    0x25252  3      
  nop                                    #  69    0x25255  1      
  nop                                    #  70    0x25256  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  71    0x25257  5      
  movl %ebx, %ebx                        #  72    0x2525c  2      
  movl 0x30(%r15,%rbx,1), %edx           #  73    0x2525e  5      
  leal 0x2c(%rbx), %r12d                 #  74    0x25263  4      
  movq %r12, %r9                         #  75    0x25267  3      
  testq %rdx, %rdx                       #  76    0x2526a  3      
  je .L_25440                            #  77    0x2526d  6      
  movl 0x10(%rsp), %r8d                  #  78    0x25273  5      
  leal -0xc(%r8), %r10d                  #  79    0x25278  4      
  movl %r10d, %r10d                      #  80    0x2527c  3      
  movl (%r15,%r10,1), %ebx               #  81    0x2527f  4      
  jmpq .L_25300                          #  82    0x25283  5      
  nop                                    #  83    0x25288  1      
  nop                                    #  84    0x25289  1      
.L_252c0:                                #        0x2528a  0      
  movl %edx, %edx                        #  85    0x2528a  2      
  movl 0x8(%r15,%rdx,1), %eax            #  86    0x2528c  5      
  movq %rdx, %r9                         #  87    0x25291  3      
  testq %rax, %rax                       #  88    0x25294  3      
  je .L_25360                            #  89    0x25297  6      
  nop                                    #  90    0x2529d  1      
.L_252e0:                                #        0x2529e  0      
  movq %rax, %rdx                        #  91    0x2529e  3      
  nop                                    #  92    0x252a1  1      
  nop                                    #  93    0x252a2  1      
.L_25300:                                #        0x252a3  0      
  movl %edx, %edx                        #  94    0x252a3  2      
  movl 0x10(%r15,%rdx,1), %esi           #  95    0x252a5  5      
  movq %r8, %rdi                         #  96    0x252aa  3      
  leal -0xc(%rsi), %eax                  #  97    0x252ad  3      
  movl %eax, %eax                        #  98    0x252b0  2      
  movl (%r15,%rax,1), %eax               #  99    0x252b2  4      
  cmpl %eax, %ebx                        #  100   0x252b6  2      
  movl %eax, %ecx                        #  101   0x252b8  2      
  cmovbel %ebx, %ecx                     #  102   0x252ba  3      
  movl %ecx, %ecx                        #  103   0x252bd  2      
  cmpq %rcx, %rcx                        #  104   0x252bf  3      
  nop                                    #  105   0x252c2  1      
  movl %esi, %esi                        #  106   0x252c3  2      
  leaq (%r15,%rsi,1), %rsi               #  107   0x252c5  4      
  movl %edi, %edi                        #  108   0x252c9  2      
  leaq (%r15,%rdi,1), %rdi               #  109   0x252cb  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  110   0x252cf  3      
  movl %esi, %esi                        #  111   0x252d2  2      
  movl %edi, %edi                        #  112   0x252d4  2      
  seta %cl                               #  113   0x252d6  3      
  setb %sil                              #  114   0x252d9  4      
  subl %ebx, %eax                        #  115   0x252dd  2      
  subb %sil, %cl                         #  116   0x252df  3      
  xchgw %ax, %ax                         #  117   0x252e2  3      
  movsbl %cl, %ecx                       #  118   0x252e5  3      
  testl %ecx, %ecx                       #  119   0x252e8  2      
  cmovel %eax, %ecx                      #  120   0x252ea  3      
  testl %ecx, %ecx                       #  121   0x252ed  2      
  jns .L_252c0                           #  122   0x252ef  6      
  movl %edx, %edx                        #  123   0x252f5  2      
  movl 0xc(%r15,%rdx,1), %eax            #  124   0x252f7  5      
  testq %rax, %rax                       #  125   0x252fc  3      
  jne .L_252e0                           #  126   0x252ff  6      
  nop                                    #  127   0x25305  1      
.L_25360:                                #        0x25306  0      
  cmpl %r9d, %r12d                       #  128   0x25306  3      
  je .L_25420                            #  129   0x25309  6      
  movl %r9d, %r9d                        #  130   0x2530f  3      
  movl 0x10(%r15,%r9,1), %edi            #  131   0x25312  5      
  movl %r10d, %r10d                      #  132   0x25317  3      
  movl (%r15,%r10,1), %edx               #  133   0x2531a  4      
  movq %r8, %rsi                         #  134   0x2531e  3      
  movl %edx, %ecx                        #  135   0x25321  2      
  leal -0xc(%rdi), %eax                  #  136   0x25323  3      
  movl %eax, %eax                        #  137   0x25326  2      
  movl (%r15,%rax,1), %eax               #  138   0x25328  4      
  cmpl %edx, %eax                        #  139   0x2532c  2      
  cmovbel %eax, %ecx                     #  140   0x2532e  3      
  movl %ecx, %ecx                        #  141   0x25331  2      
  cmpq %rcx, %rcx                        #  142   0x25333  3      
  movl %esi, %esi                        #  143   0x25336  2      
  leaq (%r15,%rsi,1), %rsi               #  144   0x25338  4      
  movl %edi, %edi                        #  145   0x2533c  2      
  leaq (%r15,%rdi,1), %rdi               #  146   0x2533e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  147   0x25342  3      
  movl %esi, %esi                        #  148   0x25345  2      
  movl %edi, %edi                        #  149   0x25347  2      
  seta %cl                               #  150   0x25349  3      
  setb %bl                               #  151   0x2534c  3      
  subl %eax, %edx                        #  152   0x2534f  2      
  subb %bl, %cl                          #  153   0x25351  2      
  movsbl %cl, %ecx                       #  154   0x25353  3      
  testl %ecx, %ecx                       #  155   0x25356  2      
  cmovel %edx, %ecx                      #  156   0x25358  3      
  testl %ecx, %ecx                       #  157   0x2535b  2      
  js .L_25420                            #  158   0x2535d  6      
  nop                                    #  159   0x25363  1      
.L_253c0:                                #        0x25364  0      
  cmpl $0x10031da0, %r10d                #  160   0x25364  7      
  jne .L_25480                           #  161   0x2536b  6      
  nop                                    #  162   0x25371  1      
  nop                                    #  163   0x25372  1      
.L_253e0:                                #        0x25373  0      
  xorl %eax, %eax                        #  164   0x25373  2      
  cmpl %r9d, %r12d                       #  165   0x25375  3      
  je .L_25240                            #  166   0x25378  6      
  movl %r9d, %r9d                        #  167   0x2537e  3      
  movl 0x14(%r15,%r9,1), %eax            #  168   0x25381  5      
  addl $0x28, %esp                       #  169   0x25386  3      
  addq %r15, %rsp                        #  170   0x25389  3      
  popq %rbx                              #  171   0x2538c  2      
  popq %r12                              #  172   0x2538e  3      
  popq %r11                              #  173   0x25391  3      
  xchgw %ax, %ax                         #  174   0x25394  3      
  andl $0xffffffe0, %r11d                #  175   0x25397  7      
  addq %r15, %r11                        #  176   0x2539e  3      
  jmpq %r11                              #  177   0x253a1  3      
  nop                                    #  178   0x253a4  1      
  nop                                    #  179   0x253a5  1      
.L_25420:                                #        0x253a6  0      
  movq %r12, %r9                         #  180   0x253a6  3      
  jmpq .L_253c0                          #  181   0x253a9  5      
  nop                                    #  182   0x253ae  1      
  nop                                    #  183   0x253af  1      
.L_25440:                                #        0x253b0  0      
  movl 0x10(%rsp), %r8d                  #  184   0x253b0  5      
  leal -0xc(%r8), %r10d                  #  185   0x253b5  4      
  jmpq .L_25360                          #  186   0x253b9  5      
  nop                                    #  187   0x253be  1      
  nop                                    #  188   0x253bf  1      
  movl %eax, %edi                        #  189   0x253c0  2      
  nop                                    #  190   0x253c2  1      
  nop                                    #  191   0x253c3  1      
  callq ._Unwind_Resume                  #  192   0x253c4  5      
.L_25480:                                #        0x253c9  0      
  movl %r10d, %r10d                      #  193   0x253c9  3      
  movl 0x8(%r15,%r10,1), %eax            #  194   0x253cc  5      
  leal -0x1(%rax), %edx                  #  195   0x253d1  3      
  testl %eax, %eax                       #  196   0x253d4  2      
  movl %r10d, %r10d                      #  197   0x253d6  3      
  movl %edx, 0x8(%r15,%r10,1)            #  198   0x253d9  5      
  jg .L_253e0                            #  199   0x253de  6      
  leal 0x1e(%rsp), %esi                  #  200   0x253e4  4      
  nop                                    #  201   0x253e8  1      
  movl %r10d, %edi                       #  202   0x253e9  3      
  movq %r9, 0x8(%rsp)                    #  203   0x253ec  5      
  nop                                    #  204   0x253f1  1      
  nop                                    #  205   0x253f2  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  206   0x253f3  5      
  movq 0x8(%rsp), %r9                    #  207   0x253f8  5      
  jmpq .L_253e0                          #  208   0x253fd  5      
  nop                                    #  209   0x25402  1      
  nop                                    #  210   0x25403  1      
                                                                  
.size _ZN2pp6Module18GetPluginInterfaceEPKc, .-_ZN2pp6Module18GetPluginInterfaceEPKc

