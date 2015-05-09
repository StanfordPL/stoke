  .text
  .globl _ZN2pp6Module18GetPluginInterfaceEPKc
  .type _ZN2pp6Module18GetPluginInterfaceEPKc, @function

#! file-offset 0x250e0
#! rip-offset  0x250e0
#! capacity    864 bytes

# Text                                   #  Line  RIP      Bytes  
._ZN2pp6Module18GetPluginInterfaceEPKc:  #        0x250e0  0      
  pushq %r12                             #  1     0x250e0  3      
  movl %esi, %r8d                        #  2     0x250e3  3      
  movl $0x13, %ecx                       #  3     0x250e6  5      
  movq %r8, %rsi                         #  4     0x250eb  3      
  movl $0x100203e0, %eax                 #  5     0x250ee  5      
  pushq %rbx                             #  6     0x250f3  2      
  movl %edi, %ebx                        #  7     0x250f5  2      
  movl $0x10020371, %edi                 #  8     0x250f7  5      
  subl $0x28, %esp                       #  9     0x250fc  3      
  addq %r15, %rsp                        #  10    0x250ff  3      
  movl %esi, %esi                        #  11    0x25102  2      
  leaq (%r15,%rsi,1), %rsi               #  12    0x25104  4      
  movl %edi, %edi                        #  13    0x25108  2      
  leaq (%r15,%rdi,1), %rdi               #  14    0x2510a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  15    0x2510e  3      
  movl %esi, %esi                        #  16    0x25111  2      
  movl %edi, %edi                        #  17    0x25113  2      
  seta %cl                               #  18    0x25115  3      
  setb %dl                               #  19    0x25118  3      
  cmpb %dl, %cl                          #  20    0x2511b  2      
  je .L_251a0                            #  21    0x2511d  6      
  movl $0x11, %ecx                       #  22    0x25123  5      
  movl $0x10020384, %edi                 #  23    0x25128  5      
  movq %r8, %rsi                         #  24    0x2512d  3      
  movl %esi, %esi                        #  25    0x25130  2      
  leaq (%r15,%rsi,1), %rsi               #  26    0x25132  4      
  movl %edi, %edi                        #  27    0x25136  2      
  leaq (%r15,%rdi,1), %rdi               #  28    0x25138  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  29    0x2513c  3      
  movl %esi, %esi                        #  30    0x2513f  2      
  movl %edi, %edi                        #  31    0x25141  2      
  nop                                    #  32    0x25143  1      
  movl $0x100304d0, %eax                 #  33    0x25144  5      
  seta %cl                               #  34    0x25149  3      
  setb %dl                               #  35    0x2514c  3      
  cmpb %dl, %cl                          #  36    0x2514f  2      
  je .L_251a0                            #  37    0x25151  6      
  movl $0x12, %ecx                       #  38    0x25157  5      
  movl $0x10020395, %edi                 #  39    0x2515c  5      
  movq %r8, %rsi                         #  40    0x25161  3      
  nop                                    #  41    0x25164  1      
  movl %esi, %esi                        #  42    0x25165  2      
  leaq (%r15,%rsi,1), %rsi               #  43    0x25167  4      
  movl %edi, %edi                        #  44    0x2516b  2      
  leaq (%r15,%rdi,1), %rdi               #  45    0x2516d  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  46    0x25171  3      
  movl %esi, %esi                        #  47    0x25174  2      
  movl %edi, %edi                        #  48    0x25176  2      
  movl $0x100304e4, %eax                 #  49    0x25178  5      
  seta %cl                               #  50    0x2517d  3      
  setb %dl                               #  51    0x25180  3      
  cmpb %dl, %cl                          #  52    0x25183  2      
  nop                                    #  53    0x25185  1      
  jne .L_251c0                           #  54    0x25186  6      
  nop                                    #  55    0x2518c  1      
  nop                                    #  56    0x2518d  1      
.L_251a0:                                #        0x2518e  0      
  addl $0x28, %esp                       #  57    0x2518e  3      
  addq %r15, %rsp                        #  58    0x25191  3      
  popq %rbx                              #  59    0x25194  2      
  popq %r12                              #  60    0x25196  3      
  popq %r11                              #  61    0x25199  3      
  andl $0xffffffe0, %r11d                #  62    0x2519c  7      
  addq %r15, %r11                        #  63    0x251a3  3      
  jmpq %r11                              #  64    0x251a6  3      
  nop                                    #  65    0x251a9  1      
.L_251c0:                                #        0x251aa  0      
  leal 0x1f(%rsp), %edx                  #  66    0x251aa  4      
  leal 0x10(%rsp), %edi                  #  67    0x251ae  4      
  movl %r8d, %esi                        #  68    0x251b2  3      
  nop                                    #  69    0x251b5  1      
  nop                                    #  70    0x251b6  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  71    0x251b7  5      
  movl %ebx, %ebx                        #  72    0x251bc  2      
  movl 0x30(%r15,%rbx,1), %edx           #  73    0x251be  5      
  leal 0x2c(%rbx), %r12d                 #  74    0x251c3  4      
  movq %r12, %r9                         #  75    0x251c7  3      
  testq %rdx, %rdx                       #  76    0x251ca  3      
  je .L_253a0                            #  77    0x251cd  6      
  movl 0x10(%rsp), %r8d                  #  78    0x251d3  5      
  leal -0xc(%r8), %r10d                  #  79    0x251d8  4      
  movl %r10d, %r10d                      #  80    0x251dc  3      
  movl (%r15,%r10,1), %ebx               #  81    0x251df  4      
  jmpq .L_25260                          #  82    0x251e3  5      
  nop                                    #  83    0x251e8  1      
  nop                                    #  84    0x251e9  1      
.L_25220:                                #        0x251ea  0      
  movl %edx, %edx                        #  85    0x251ea  2      
  movl 0x8(%r15,%rdx,1), %eax            #  86    0x251ec  5      
  movq %rdx, %r9                         #  87    0x251f1  3      
  testq %rax, %rax                       #  88    0x251f4  3      
  je .L_252c0                            #  89    0x251f7  6      
  nop                                    #  90    0x251fd  1      
.L_25240:                                #        0x251fe  0      
  movq %rax, %rdx                        #  91    0x251fe  3      
  nop                                    #  92    0x25201  1      
  nop                                    #  93    0x25202  1      
.L_25260:                                #        0x25203  0      
  movl %edx, %edx                        #  94    0x25203  2      
  movl 0x10(%r15,%rdx,1), %esi           #  95    0x25205  5      
  movq %r8, %rdi                         #  96    0x2520a  3      
  leal -0xc(%rsi), %eax                  #  97    0x2520d  3      
  movl %eax, %eax                        #  98    0x25210  2      
  movl (%r15,%rax,1), %eax               #  99    0x25212  4      
  cmpl %eax, %ebx                        #  100   0x25216  2      
  movl %eax, %ecx                        #  101   0x25218  2      
  cmovbel %ebx, %ecx                     #  102   0x2521a  3      
  movl %ecx, %ecx                        #  103   0x2521d  2      
  cmpq %rcx, %rcx                        #  104   0x2521f  3      
  nop                                    #  105   0x25222  1      
  movl %esi, %esi                        #  106   0x25223  2      
  leaq (%r15,%rsi,1), %rsi               #  107   0x25225  4      
  movl %edi, %edi                        #  108   0x25229  2      
  leaq (%r15,%rdi,1), %rdi               #  109   0x2522b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  110   0x2522f  3      
  movl %esi, %esi                        #  111   0x25232  2      
  movl %edi, %edi                        #  112   0x25234  2      
  seta %cl                               #  113   0x25236  3      
  setb %sil                              #  114   0x25239  4      
  subl %ebx, %eax                        #  115   0x2523d  2      
  subb %sil, %cl                         #  116   0x2523f  3      
  xchgw %ax, %ax                         #  117   0x25242  3      
  movsbl %cl, %ecx                       #  118   0x25245  3      
  testl %ecx, %ecx                       #  119   0x25248  2      
  cmovel %eax, %ecx                      #  120   0x2524a  3      
  testl %ecx, %ecx                       #  121   0x2524d  2      
  jns .L_25220                           #  122   0x2524f  6      
  movl %edx, %edx                        #  123   0x25255  2      
  movl 0xc(%r15,%rdx,1), %eax            #  124   0x25257  5      
  testq %rax, %rax                       #  125   0x2525c  3      
  jne .L_25240                           #  126   0x2525f  6      
  nop                                    #  127   0x25265  1      
.L_252c0:                                #        0x25266  0      
  cmpl %r9d, %r12d                       #  128   0x25266  3      
  je .L_25380                            #  129   0x25269  6      
  movl %r9d, %r9d                        #  130   0x2526f  3      
  movl 0x10(%r15,%r9,1), %edi            #  131   0x25272  5      
  movl %r10d, %r10d                      #  132   0x25277  3      
  movl (%r15,%r10,1), %edx               #  133   0x2527a  4      
  movq %r8, %rsi                         #  134   0x2527e  3      
  movl %edx, %ecx                        #  135   0x25281  2      
  leal -0xc(%rdi), %eax                  #  136   0x25283  3      
  movl %eax, %eax                        #  137   0x25286  2      
  movl (%r15,%rax,1), %eax               #  138   0x25288  4      
  cmpl %edx, %eax                        #  139   0x2528c  2      
  cmovbel %eax, %ecx                     #  140   0x2528e  3      
  movl %ecx, %ecx                        #  141   0x25291  2      
  cmpq %rcx, %rcx                        #  142   0x25293  3      
  movl %esi, %esi                        #  143   0x25296  2      
  leaq (%r15,%rsi,1), %rsi               #  144   0x25298  4      
  movl %edi, %edi                        #  145   0x2529c  2      
  leaq (%r15,%rdi,1), %rdi               #  146   0x2529e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)      #  147   0x252a2  3      
  movl %esi, %esi                        #  148   0x252a5  2      
  movl %edi, %edi                        #  149   0x252a7  2      
  seta %cl                               #  150   0x252a9  3      
  setb %bl                               #  151   0x252ac  3      
  subl %eax, %edx                        #  152   0x252af  2      
  subb %bl, %cl                          #  153   0x252b1  2      
  movsbl %cl, %ecx                       #  154   0x252b3  3      
  testl %ecx, %ecx                       #  155   0x252b6  2      
  cmovel %edx, %ecx                      #  156   0x252b8  3      
  testl %ecx, %ecx                       #  157   0x252bb  2      
  js .L_25380                            #  158   0x252bd  6      
  nop                                    #  159   0x252c3  1      
.L_25320:                                #        0x252c4  0      
  cmpl $0x10031da0, %r10d                #  160   0x252c4  7      
  jne .L_253e0                           #  161   0x252cb  6      
  nop                                    #  162   0x252d1  1      
  nop                                    #  163   0x252d2  1      
.L_25340:                                #        0x252d3  0      
  xorl %eax, %eax                        #  164   0x252d3  2      
  cmpl %r9d, %r12d                       #  165   0x252d5  3      
  je .L_251a0                            #  166   0x252d8  6      
  movl %r9d, %r9d                        #  167   0x252de  3      
  movl 0x14(%r15,%r9,1), %eax            #  168   0x252e1  5      
  addl $0x28, %esp                       #  169   0x252e6  3      
  addq %r15, %rsp                        #  170   0x252e9  3      
  popq %rbx                              #  171   0x252ec  2      
  popq %r12                              #  172   0x252ee  3      
  popq %r11                              #  173   0x252f1  3      
  xchgw %ax, %ax                         #  174   0x252f4  3      
  andl $0xffffffe0, %r11d                #  175   0x252f7  7      
  addq %r15, %r11                        #  176   0x252fe  3      
  jmpq %r11                              #  177   0x25301  3      
  nop                                    #  178   0x25304  1      
  nop                                    #  179   0x25305  1      
.L_25380:                                #        0x25306  0      
  movq %r12, %r9                         #  180   0x25306  3      
  jmpq .L_25320                          #  181   0x25309  5      
  nop                                    #  182   0x2530e  1      
  nop                                    #  183   0x2530f  1      
.L_253a0:                                #        0x25310  0      
  movl 0x10(%rsp), %r8d                  #  184   0x25310  5      
  leal -0xc(%r8), %r10d                  #  185   0x25315  4      
  jmpq .L_252c0                          #  186   0x25319  5      
  nop                                    #  187   0x2531e  1      
  nop                                    #  188   0x2531f  1      
  movl %eax, %edi                        #  189   0x25320  2      
  nop                                    #  190   0x25322  1      
  nop                                    #  191   0x25323  1      
  callq ._Unwind_Resume                  #  192   0x25324  5      
.L_253e0:                                #        0x25329  0      
  movl %r10d, %r10d                      #  193   0x25329  3      
  movl 0x8(%r15,%r10,1), %eax            #  194   0x2532c  5      
  leal -0x1(%rax), %edx                  #  195   0x25331  3      
  testl %eax, %eax                       #  196   0x25334  2      
  movl %r10d, %r10d                      #  197   0x25336  3      
  movl %edx, 0x8(%r15,%r10,1)            #  198   0x25339  5      
  jg .L_25340                            #  199   0x2533e  6      
  leal 0x1e(%rsp), %esi                  #  200   0x25344  4      
  nop                                    #  201   0x25348  1      
  movl %r10d, %edi                       #  202   0x25349  3      
  movq %r9, 0x8(%rsp)                    #  203   0x2534c  5      
  nop                                    #  204   0x25351  1      
  nop                                    #  205   0x25352  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  206   0x25353  5      
  movq 0x8(%rsp), %r9                    #  207   0x25358  5      
  jmpq .L_25340                          #  208   0x2535d  5      
  nop                                    #  209   0x25362  1      
  nop                                    #  210   0x25363  1      
                                                                  
.size _ZN2pp6Module18GetPluginInterfaceEPKc, .-_ZN2pp6Module18GetPluginInterfaceEPKc

