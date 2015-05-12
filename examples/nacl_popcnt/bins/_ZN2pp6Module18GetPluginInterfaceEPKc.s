  .text
  .globl _ZN2pp6Module18GetPluginInterfaceEPKc
  .type _ZN2pp6Module18GetPluginInterfaceEPKc, @function

#! file-offset 0x25100
#! rip-offset  0x25100
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._ZN2pp6Module18GetPluginInterfaceEPKc:  #        0x25100  0      
  pushq %r12                             #  1     0x25100  3      
  movl %esi, %r8d                        #  2     0x25103  3      
  movl $0x13, %ecx                       #  3     0x25106  5      
  movq %r8, %rsi                         #  4     0x2510b  3      
  movl $0x100203e0, %eax                 #  5     0x2510e  5      
  pushq %rbx                             #  6     0x25113  2      
  movl %edi, %ebx                        #  7     0x25115  2      
  movl $0x10020371, %edi                 #  8     0x25117  5      
  subl $0x28, %esp                       #  9     0x2511c  3      
  addq %r15, %rsp                        #  10    0x2511f  3      
  movl %esi, %esi                        #  11    0x25122  2      
  leaq (%r15,%rsi,1), %rsi               #  12    0x25124  4      
  movl %edi, %edi                        #  13    0x25128  2      
  leaq (%r15,%rdi,1), %rdi               #  14    0x2512a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  15    0x2512e  3      
  movl %esi, %esi                        #  16    0x25131  2      
  movl %edi, %edi                        #  17    0x25133  2      
  seta %cl                               #  18    0x25135  3      
  setb %dl                               #  19    0x25138  3      
  cmpb %dl, %cl                          #  20    0x2513b  2      
  je .L_251c0                            #  21    0x2513d  6      
  movl $0x11, %ecx                       #  22    0x25143  5      
  movl $0x10020384, %edi                 #  23    0x25148  5      
  movq %r8, %rsi                         #  24    0x2514d  3      
  movl %esi, %esi                        #  25    0x25150  2      
  leaq (%r15,%rsi,1), %rsi               #  26    0x25152  4      
  movl %edi, %edi                        #  27    0x25156  2      
  leaq (%r15,%rdi,1), %rdi               #  28    0x25158  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  29    0x2515c  3      
  movl %esi, %esi                        #  30    0x2515f  2      
  movl %edi, %edi                        #  31    0x25161  2      
  nop                                    #  32    0x25163  1      
  movl $0x100304d0, %eax                 #  33    0x25164  5      
  seta %cl                               #  34    0x25169  3      
  setb %dl                               #  35    0x2516c  3      
  cmpb %dl, %cl                          #  36    0x2516f  2      
  je .L_251c0                            #  37    0x25171  6      
  movl $0x12, %ecx                       #  38    0x25177  5      
  movl $0x10020395, %edi                 #  39    0x2517c  5      
  movq %r8, %rsi                         #  40    0x25181  3      
  nop                                    #  41    0x25184  1      
  movl %esi, %esi                        #  42    0x25185  2      
  leaq (%r15,%rsi,1), %rsi               #  43    0x25187  4      
  movl %edi, %edi                        #  44    0x2518b  2      
  leaq (%r15,%rdi,1), %rdi               #  45    0x2518d  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  46    0x25191  3      
  movl %esi, %esi                        #  47    0x25194  2      
  movl %edi, %edi                        #  48    0x25196  2      
  movl $0x100304e4, %eax                 #  49    0x25198  5      
  seta %cl                               #  50    0x2519d  3      
  setb %dl                               #  51    0x251a0  3      
  cmpb %dl, %cl                          #  52    0x251a3  2      
  nop                                    #  53    0x251a5  1      
  jne .L_251e0                           #  54    0x251a6  6      
  nop                                    #  55    0x251ac  1      
  nop                                    #  56    0x251ad  1      
.L_251c0:                                #        0x251ae  0      
  addl $0x28, %esp                       #  57    0x251ae  3      
  addq %r15, %rsp                        #  58    0x251b1  3      
  popq %rbx                              #  59    0x251b4  2      
  popq %r12                              #  60    0x251b6  3      
  popq %r11                              #  61    0x251b9  3      
  andl $0xffffffe0, %r11d                #  62    0x251bc  7      
  addq %r15, %r11                        #  63    0x251c3  3      
  jmpq %r11                              #  64    0x251c6  3      
  nop                                    #  65    0x251c9  1      
.L_251e0:                                #        0x251ca  0      
  leal 0x1f(%rsp), %edx                  #  66    0x251ca  4      
  leal 0x10(%rsp), %edi                  #  67    0x251ce  4      
  movl %r8d, %esi                        #  68    0x251d2  3      
  nop                                    #  69    0x251d5  1      
  nop                                    #  70    0x251d6  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  71    0x251d7  5      
  movl %ebx, %ebx                        #  72    0x251dc  2      
  movl 0x30(%r15,%rbx,1), %edx           #  73    0x251de  5      
  leal 0x2c(%rbx), %r12d                 #  74    0x251e3  4      
  movq %r12, %r9                         #  75    0x251e7  3      
  testq %rdx, %rdx                       #  76    0x251ea  3      
  je .L_253c0                            #  77    0x251ed  6      
  movl 0x10(%rsp), %r8d                  #  78    0x251f3  5      
  leal -0xc(%r8), %r10d                  #  79    0x251f8  4      
  movl %r10d, %r10d                      #  80    0x251fc  3      
  movl (%r15,%r10,1), %ebx               #  81    0x251ff  4      
  jmpq .L_25280                          #  82    0x25203  5      
  nop                                    #  83    0x25208  1      
  nop                                    #  84    0x25209  1      
.L_25240:                                #        0x2520a  0      
  movl %edx, %edx                        #  85    0x2520a  2      
  movl 0x8(%r15,%rdx,1), %eax            #  86    0x2520c  5      
  movq %rdx, %r9                         #  87    0x25211  3      
  testq %rax, %rax                       #  88    0x25214  3      
  je .L_252e0                            #  89    0x25217  6      
  nop                                    #  90    0x2521d  1      
.L_25260:                                #        0x2521e  0      
  movq %rax, %rdx                        #  91    0x2521e  3      
  nop                                    #  92    0x25221  1      
  nop                                    #  93    0x25222  1      
.L_25280:                                #        0x25223  0      
  movl %edx, %edx                        #  94    0x25223  2      
  movl 0x10(%r15,%rdx,1), %esi           #  95    0x25225  5      
  movq %r8, %rdi                         #  96    0x2522a  3      
  leal -0xc(%rsi), %eax                  #  97    0x2522d  3      
  movl %eax, %eax                        #  98    0x25230  2      
  movl (%r15,%rax,1), %eax               #  99    0x25232  4      
  cmpl %eax, %ebx                        #  100   0x25236  2      
  movl %eax, %ecx                        #  101   0x25238  2      
  cmovbel %ebx, %ecx                     #  102   0x2523a  3      
  movl %ecx, %ecx                        #  103   0x2523d  2      
  cmpq %rcx, %rcx                        #  104   0x2523f  3      
  nop                                    #  105   0x25242  1      
  movl %esi, %esi                        #  106   0x25243  2      
  leaq (%r15,%rsi,1), %rsi               #  107   0x25245  4      
  movl %edi, %edi                        #  108   0x25249  2      
  leaq (%r15,%rdi,1), %rdi               #  109   0x2524b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  110   0x2524f  3      
  movl %esi, %esi                        #  111   0x25252  2      
  movl %edi, %edi                        #  112   0x25254  2      
  seta %cl                               #  113   0x25256  3      
  setb %sil                              #  114   0x25259  4      
  subl %ebx, %eax                        #  115   0x2525d  2      
  subb %sil, %cl                         #  116   0x2525f  3      
  xchgw %ax, %ax                         #  117   0x25262  3      
  movsbl %cl, %ecx                       #  118   0x25265  3      
  testl %ecx, %ecx                       #  119   0x25268  2      
  cmovel %eax, %ecx                      #  120   0x2526a  3      
  testl %ecx, %ecx                       #  121   0x2526d  2      
  jns .L_25240                           #  122   0x2526f  6      
  movl %edx, %edx                        #  123   0x25275  2      
  movl 0xc(%r15,%rdx,1), %eax            #  124   0x25277  5      
  testq %rax, %rax                       #  125   0x2527c  3      
  jne .L_25260                           #  126   0x2527f  6      
  nop                                    #  127   0x25285  1      
.L_252e0:                                #        0x25286  0      
  cmpl %r9d, %r12d                       #  128   0x25286  3      
  je .L_253a0                            #  129   0x25289  6      
  movl %r9d, %r9d                        #  130   0x2528f  3      
  movl 0x10(%r15,%r9,1), %edi            #  131   0x25292  5      
  movl %r10d, %r10d                      #  132   0x25297  3      
  movl (%r15,%r10,1), %edx               #  133   0x2529a  4      
  movq %r8, %rsi                         #  134   0x2529e  3      
  movl %edx, %ecx                        #  135   0x252a1  2      
  leal -0xc(%rdi), %eax                  #  136   0x252a3  3      
  movl %eax, %eax                        #  137   0x252a6  2      
  movl (%r15,%rax,1), %eax               #  138   0x252a8  4      
  cmpl %edx, %eax                        #  139   0x252ac  2      
  cmovbel %eax, %ecx                     #  140   0x252ae  3      
  movl %ecx, %ecx                        #  141   0x252b1  2      
  cmpq %rcx, %rcx                        #  142   0x252b3  3      
  movl %esi, %esi                        #  143   0x252b6  2      
  leaq (%r15,%rsi,1), %rsi               #  144   0x252b8  4      
  movl %edi, %edi                        #  145   0x252bc  2      
  leaq (%r15,%rdi,1), %rdi               #  146   0x252be  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  147   0x252c2  3      
  movl %esi, %esi                        #  148   0x252c5  2      
  movl %edi, %edi                        #  149   0x252c7  2      
  seta %cl                               #  150   0x252c9  3      
  setb %bl                               #  151   0x252cc  3      
  subl %eax, %edx                        #  152   0x252cf  2      
  subb %bl, %cl                          #  153   0x252d1  2      
  movsbl %cl, %ecx                       #  154   0x252d3  3      
  testl %ecx, %ecx                       #  155   0x252d6  2      
  cmovel %edx, %ecx                      #  156   0x252d8  3      
  testl %ecx, %ecx                       #  157   0x252db  2      
  js .L_253a0                            #  158   0x252dd  6      
  nop                                    #  159   0x252e3  1      
.L_25340:                                #        0x252e4  0      
  cmpl $0x10031da0, %r10d                #  160   0x252e4  7      
  jne .L_25400                           #  161   0x252eb  6      
  nop                                    #  162   0x252f1  1      
  nop                                    #  163   0x252f2  1      
.L_25360:                                #        0x252f3  0      
  xorl %eax, %eax                        #  164   0x252f3  2      
  cmpl %r9d, %r12d                       #  165   0x252f5  3      
  je .L_251c0                            #  166   0x252f8  6      
  movl %r9d, %r9d                        #  167   0x252fe  3      
  movl 0x14(%r15,%r9,1), %eax            #  168   0x25301  5      
  addl $0x28, %esp                       #  169   0x25306  3      
  addq %r15, %rsp                        #  170   0x25309  3      
  popq %rbx                              #  171   0x2530c  2      
  popq %r12                              #  172   0x2530e  3      
  popq %r11                              #  173   0x25311  3      
  xchgw %ax, %ax                         #  174   0x25314  3      
  andl $0xffffffe0, %r11d                #  175   0x25317  7      
  addq %r15, %r11                        #  176   0x2531e  3      
  jmpq %r11                              #  177   0x25321  3      
  nop                                    #  178   0x25324  1      
  nop                                    #  179   0x25325  1      
.L_253a0:                                #        0x25326  0      
  movq %r12, %r9                         #  180   0x25326  3      
  jmpq .L_25340                          #  181   0x25329  5      
  nop                                    #  182   0x2532e  1      
  nop                                    #  183   0x2532f  1      
.L_253c0:                                #        0x25330  0      
  movl 0x10(%rsp), %r8d                  #  184   0x25330  5      
  leal -0xc(%r8), %r10d                  #  185   0x25335  4      
  jmpq .L_252e0                          #  186   0x25339  5      
  nop                                    #  187   0x2533e  1      
  nop                                    #  188   0x2533f  1      
  movl %eax, %edi                        #  189   0x25340  2      
  nop                                    #  190   0x25342  1      
  nop                                    #  191   0x25343  1      
  callq ._Unwind_Resume                  #  192   0x25344  5      
.L_25400:                                #        0x25349  0      
  movl %r10d, %r10d                      #  193   0x25349  3      
  movl 0x8(%r15,%r10,1), %eax            #  194   0x2534c  5      
  leal -0x1(%rax), %edx                  #  195   0x25351  3      
  testl %eax, %eax                       #  196   0x25354  2      
  movl %r10d, %r10d                      #  197   0x25356  3      
  movl %edx, 0x8(%r15,%r10,1)            #  198   0x25359  5      
  jg .L_25360                            #  199   0x2535e  6      
  leal 0x1e(%rsp), %esi                  #  200   0x25364  4      
  nop                                    #  201   0x25368  1      
  movl %r10d, %edi                       #  202   0x25369  3      
  movq %r9, 0x8(%rsp)                    #  203   0x2536c  5      
  nop                                    #  204   0x25371  1      
  nop                                    #  205   0x25372  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  206   0x25373  5      
  movq 0x8(%rsp), %r9                    #  207   0x25378  5      
  jmpq .L_25360                          #  208   0x2537d  5      
  nop                                    #  209   0x25382  1      
  nop                                    #  210   0x25383  1      
                                                                  
.size _ZN2pp6Module18GetPluginInterfaceEPKc, .-_ZN2pp6Module18GetPluginInterfaceEPKc

