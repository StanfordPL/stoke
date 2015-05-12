  .text
  .globl T_268
  .type T_268, @function

#! file-offset 0x61660
#! rip-offset  0x61660
#! capacity    1760 bytes

# Text                                 #  Line  RIP      Bytes  
.T_268:                                #        0x61660  0      
  pushq %r14                           #  1     0x61660  3      
  movl $0xfff, %eax                    #  2     0x61663  5      
  pushq %r13                           #  3     0x61668  3      
  pushq %r12                           #  4     0x6166b  3      
  pushq %rbx                           #  5     0x6166e  2      
  subl $0x38, %esp                     #  6     0x61670  3      
  addq %r15, %rsp                      #  7     0x61673  3      
  movl 0xffd5410(%rip), %ebx           #  8     0x61676  6      
  movl $0x0, 0x2c(%rsp)                #  9     0x6167c  8      
  testq %rbx, %rbx                     #  10    0x61684  3      
  je .L_61960                          #  11    0x61687  6      
  movl $0x10036a84, %r8d               #  12    0x6168d  6      
  xorl %r13d, %r13d                    #  13    0x61693  3      
  movl $0x8, %r10d                     #  14    0x61696  6      
  movl %r8d, %r8d                      #  15    0x6169c  3      
  jmpq .L_616e0                        #  16    0x6169f  5      
  nop                                  #  17    0x616a4  1      
.L_616a0:                              #        0x616a5  0      
  addl $0x1, %r13d                     #  18    0x616a5  4      
  testq %r12, %r12                     #  19    0x616a9  3      
  je .L_61940                          #  20    0x616ac  6      
  nop                                  #  21    0x616b2  1      
  nop                                  #  22    0x616b3  1      
.L_616c0:                              #        0x616b4  0      
  movq %rbx, %r8                       #  23    0x616b4  3      
  movq %r12, %rbx                      #  24    0x616b7  3      
  nop                                  #  25    0x616ba  1      
  nop                                  #  26    0x616bb  1      
.L_616e0:                              #        0x616bc  0      
  movl %ebx, %ebx                      #  27    0x616bc  2      
  movl 0xc(%r15,%rbx,1), %eax          #  28    0x616be  5      
  movl %ebx, %ebx                      #  29    0x616c3  2      
  movl (%r15,%rbx,1), %edi             #  30    0x616c5  4      
  movl %ebx, %ebx                      #  31    0x616c9  2      
  movl 0x4(%r15,%rbx,1), %edx          #  32    0x616cb  5      
  movl %ebx, %ebx                      #  33    0x616d0  2      
  movl 0x8(%r15,%rbx,1), %r12d         #  34    0x616d2  5      
  andl $0x9, %eax                      #  35    0x616d7  3      
  xchgw %ax, %ax                       #  36    0x616da  3      
  cmpl $0x1, %eax                      #  37    0x616dd  3      
  jne .L_616a0                         #  38    0x616e0  6      
  movl %edi, %eax                      #  39    0x616e6  2      
  xorl %r14d, %r14d                    #  40    0x616e8  3      
  andl $0x7, %eax                      #  41    0x616eb  3      
  je .L_61720                          #  42    0x616ee  6      
  movl %r10d, %r14d                    #  43    0x616f4  3      
  subl %eax, %r14d                     #  44    0x616f7  3      
  andl $0x7, %r14d                     #  45    0x616fa  4      
  nop                                  #  46    0x616fe  1      
.L_61720:                              #        0x616ff  0      
  addl %edi, %r14d                     #  47    0x616ff  3      
  movl %r14d, %r14d                    #  48    0x61702  3      
  movl 0x4(%r15,%r14,1), %r9d          #  49    0x61705  5      
  movl %r9d, %eax                      #  50    0x6170a  3      
  andl $0x3, %eax                      #  51    0x6170d  3      
  cmpl $0x1, %eax                      #  52    0x61710  3      
  jne .L_616a0                         #  53    0x61713  6      
  andl $0xfffffff8, %r9d               #  54    0x61719  7      
  xchgw %ax, %ax                       #  55    0x61720  3      
  leal -0x28(%rdx,%rdi,1), %eax        #  56    0x61723  4      
  leal (%r9,%r14,1), %ecx              #  57    0x61727  4      
  cmpl %eax, %ecx                      #  58    0x6172b  2      
  jb .L_616a0                          #  59    0x6172d  6      
  cmpl %r14d, 0xffd519a(%rip)          #  60    0x61733  7      
  je .L_61ba0                          #  61    0x6173a  6      
  nop                                  #  62    0x61740  1      
  movl %r14d, %r14d                    #  63    0x61741  3      
  movl 0xc(%r15,%r14,1), %eax          #  64    0x61744  5      
  movl %r14d, %r14d                    #  65    0x61749  3      
  movl 0x18(%r15,%r14,1), %r11d        #  66    0x6174c  5      
  cmpl %eax, %r14d                     #  67    0x61751  3      
  je .L_61bc0                          #  68    0x61754  6      
  nop                                  #  69    0x6175a  1      
  movl %r14d, %r14d                    #  70    0x6175b  3      
  movl 0x8(%r15,%r14,1), %ecx          #  71    0x6175e  5      
  cmpl %ecx, 0xffd5167(%rip)           #  72    0x61763  6      
  ja .L_61d20                          #  73    0x61769  6      
  movl %ecx, %ecx                      #  74    0x6176f  2      
  cmpl %r14d, 0xc(%r15,%rcx,1)         #  75    0x61771  5      
  nop                                  #  76    0x61776  1      
  jne .L_61d20                         #  77    0x61777  6      
  movl %eax, %eax                      #  78    0x6177d  2      
  cmpl %r14d, 0x8(%r15,%rax,1)         #  79    0x6177f  5      
  jne .L_61d20                         #  80    0x61784  6      
  movl %ecx, %ecx                      #  81    0x6178a  2      
  movl %eax, 0xc(%r15,%rcx,1)          #  82    0x6178c  5      
  nop                                  #  83    0x61791  1      
  movl %eax, %eax                      #  84    0x61792  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  85    0x61794  5      
  nop                                  #  86    0x61799  1      
  nop                                  #  87    0x6179a  1      
.L_617e0:                              #        0x6179b  0      
  testq %r11, %r11                     #  88    0x6179b  3      
  je .L_618e0                          #  89    0x6179e  6      
  movl %r14d, %r14d                    #  90    0x617a4  3      
  movl 0x1c(%r15,%r14,1), %ecx         #  91    0x617a7  5      
  leal 0x130(,%rcx,4), %esi            #  92    0x617ac  7      
  movslq %esi, %rsi                    #  93    0x617b3  3      
  nop                                  #  94    0x617b6  1      
  movl %esi, %esi                      #  95    0x617b7  2      
  cmpl %r14d, 0x100368c0(%r15,%rsi,1)  #  96    0x617b9  8      
  je .L_61ca0                          #  97    0x617c1  6      
  movl 0xffd5103(%rip), %ecx           #  98    0x617c7  6      
  cmpl %r11d, %ecx                     #  99    0x617cd  3      
  ja .L_61d20                          #  100   0x617d0  6      
  nop                                  #  101   0x617d6  1      
  movl %r11d, %r11d                    #  102   0x617d7  3      
  cmpl %r14d, 0x10(%r15,%r11,1)        #  103   0x617da  5      
  je .L_61cc0                          #  104   0x617df  6      
  movl %r11d, %r11d                    #  105   0x617e5  3      
  movl %eax, 0x14(%r15,%r11,1)         #  106   0x617e8  5      
  nop                                  #  107   0x617ed  1      
.L_61840:                              #        0x617ee  0      
  testq %rax, %rax                     #  108   0x617ee  3      
  je .L_618e0                          #  109   0x617f1  6      
  nop                                  #  110   0x617f7  1      
  nop                                  #  111   0x617f8  1      
.L_61860:                              #        0x617f9  0      
  cmpl %ecx, %eax                      #  112   0x617f9  2      
  jb .L_61d20                          #  113   0x617fb  6      
  movl %r14d, %r14d                    #  114   0x61801  3      
  movl 0x10(%r15,%r14,1), %esi         #  115   0x61804  5      
  movl %eax, %eax                      #  116   0x61809  2      
  movl %r11d, 0x18(%r15,%rax,1)        #  117   0x6180b  5      
  testq %rsi, %rsi                     #  118   0x61810  3      
  je .L_618a0                          #  119   0x61813  6      
  cmpl %ecx, %esi                      #  120   0x61819  2      
  xchgw %ax, %ax                       #  121   0x6181b  3      
  jb .L_61d20                          #  122   0x6181e  6      
  movl %eax, %eax                      #  123   0x61824  2      
  movl %esi, 0x10(%r15,%rax,1)         #  124   0x61826  5      
  movl %esi, %esi                      #  125   0x6182b  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  126   0x6182d  5      
  nop                                  #  127   0x61832  1      
.L_618a0:                              #        0x61833  0      
  movl %r14d, %r14d                    #  128   0x61833  3      
  movl 0x14(%r15,%r14,1), %esi         #  129   0x61836  5      
  testq %rsi, %rsi                     #  130   0x6183b  3      
  je .L_618e0                          #  131   0x6183e  6      
  cmpl %ecx, %esi                      #  132   0x61844  2      
  jb .L_61d20                          #  133   0x61846  6      
  movl %eax, %eax                      #  134   0x6184c  2      
  movl %esi, 0x14(%r15,%rax,1)         #  135   0x6184e  5      
  nop                                  #  136   0x61853  1      
  movl %esi, %esi                      #  137   0x61854  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  138   0x61856  5      
  nop                                  #  139   0x6185b  1      
  nop                                  #  140   0x6185c  1      
.L_618e0:                              #        0x6185d  0      
  movl %edx, %esi                      #  141   0x6185d  2      
  movl %edx, 0x20(%rsp)                #  142   0x6185f  4      
  movq %r8, 0x8(%rsp)                  #  143   0x61863  5      
  movl %r9d, 0x18(%rsp)                #  144   0x61868  5      
  movl %r10d, 0x10(%rsp)               #  145   0x6186d  5      
  nop                                  #  146   0x61872  1      
  callq .munmap                        #  147   0x61873  5      
  testl %eax, %eax                     #  148   0x61878  2      
  movl 0x20(%rsp), %edx                #  149   0x6187a  4      
  movq 0x8(%rsp), %r8                  #  150   0x6187e  5      
  movl 0x18(%rsp), %r9d                #  151   0x61883  5      
  movl 0x10(%rsp), %r10d               #  152   0x61888  5      
  jne .L_619a0                         #  153   0x6188d  6      
  addl %edx, 0x2c(%rsp)                #  154   0x61893  4      
  nop                                  #  155   0x61897  1      
  subl %edx, 0xffd51d2(%rip)           #  156   0x61898  6      
  addl $0x1, %r13d                     #  157   0x6189e  4      
  testq %r12, %r12                     #  158   0x618a2  3      
  movl %r8d, %r8d                      #  159   0x618a5  3      
  movl %r12d, 0x8(%r15,%r8,1)          #  160   0x618a8  5      
  movq %r8, %rbx                       #  161   0x618ad  3      
  jne .L_616c0                         #  162   0x618b0  6      
  xchgw %ax, %ax                       #  163   0x618b6  3      
.L_61940:                              #        0x618b9  0      
  movl $0xfff, %eax                    #  164   0x618b9  5      
  cmpl $0xfff, %r13d                   #  165   0x618be  7      
  cmovael %r13d, %eax                  #  166   0x618c5  4      
  nop                                  #  167   0x618c9  1      
  nop                                  #  168   0x618ca  1      
.L_61960:                              #        0x618cb  0      
  movl %eax, 0xffd500f(%rip)           #  169   0x618cb  6      
  movl 0x2c(%rsp), %eax                #  170   0x618d1  4      
  addl $0x38, %esp                     #  171   0x618d5  3      
  addq %r15, %rsp                      #  172   0x618d8  3      
  popq %rbx                            #  173   0x618db  2      
  popq %r12                            #  174   0x618dd  3      
  popq %r13                            #  175   0x618e0  3      
  popq %r14                            #  176   0x618e3  3      
  popq %r11                            #  177   0x618e6  3      
  nop                                  #  178   0x618e9  1      
  andl $0xffffffe0, %r11d              #  179   0x618ea  7      
  addq %r15, %r11                      #  180   0x618f1  3      
  jmpq %r11                            #  181   0x618f4  3      
  nop                                  #  182   0x618f7  1      
  nop                                  #  183   0x618f8  1      
.L_619a0:                              #        0x618f9  0      
  movl %r9d, %ecx                      #  184   0x618f9  3      
  xorl %edx, %edx                      #  185   0x618fc  2      
  movl $0x1, %eax                      #  186   0x618fe  5      
  shrl $0x8, %ecx                      #  187   0x61903  3      
  testl %ecx, %ecx                     #  188   0x61906  2      
  je .L_61a00                          #  189   0x61908  6      
  cmpl $0xffff, %ecx                   #  190   0x6190e  6      
  movl $0x80000000, %eax               #  191   0x61914  5      
  movb $0x1f, %dl                      #  192   0x61919  2      
  xchgw %ax, %ax                       #  193   0x6191b  3      
  ja .L_61a00                          #  194   0x6191e  6      
  bsrl %ecx, %eax                      #  195   0x61924  3      
  xorl $0x1f, %eax                     #  196   0x61927  3      
  subl %eax, %edx                      #  197   0x6192a  2      
  movl %edx, %eax                      #  198   0x6192c  2      
  movl %r9d, %edx                      #  199   0x6192e  3      
  leal 0x7(%rax), %ecx                 #  200   0x61931  3      
  shrl %cl, %edx                       #  201   0x61934  2      
  andl $0x1, %edx                      #  202   0x61936  3      
  leal (%rdx,%rax,2), %edx             #  203   0x61939  3      
  movl $0x1, %eax                      #  204   0x6193c  5      
  nop                                  #  205   0x61941  1      
  movl %edx, %ecx                      #  206   0x61942  2      
  shll %cl, %eax                       #  207   0x61944  2      
  nop                                  #  208   0x61946  1      
  nop                                  #  209   0x61947  1      
.L_61a00:                              #        0x61948  0      
  movl %r14d, %r14d                    #  210   0x61948  3      
  movl %edx, 0x1c(%r15,%r14,1)         #  211   0x6194b  5      
  movl 0xffd4f6e(%rip), %ecx           #  212   0x61950  6      
  movl %r14d, %r14d                    #  213   0x61956  3      
  movl $0x0, 0x14(%r15,%r14,1)         #  214   0x61959  9      
  nop                                  #  215   0x61962  1      
  movl %r14d, %r14d                    #  216   0x61963  3      
  movl $0x0, 0x10(%r15,%r14,1)         #  217   0x61966  9      
  testl %ecx, %eax                     #  218   0x6196f  2      
  je .L_61b40                          #  219   0x61971  6      
  leal 0x130(,%rdx,4), %eax            #  220   0x61977  7      
  xorl %ecx, %ecx                      #  221   0x6197e  2      
  cmpl $0x1f, %edx                     #  222   0x61980  3      
  cltq                                 #  223   0x61983  2      
  movl %eax, %eax                      #  224   0x61985  2      
  movl 0x100368c0(%r15,%rax,1), %eax   #  225   0x61987  8      
  je .L_61a60                          #  226   0x6198f  6      
  shrl $0x1, %edx                      #  227   0x61995  2      
  movb $0x19, %cl                      #  228   0x61997  2      
  subl %edx, %ecx                      #  229   0x61999  2      
  nop                                  #  230   0x6199b  1      
.L_61a60:                              #        0x6199c  0      
  movl %r9d, %edx                      #  231   0x6199c  3      
  shll %cl, %edx                       #  232   0x6199f  2      
  movl %edx, %ecx                      #  233   0x619a1  2      
  jmpq .L_61ac0                        #  234   0x619a3  5      
  nop                                  #  235   0x619a8  1      
  nop                                  #  236   0x619a9  1      
.L_61a80:                              #        0x619aa  0      
  movl %ecx, %edx                      #  237   0x619aa  2      
  shrl $0x1f, %edx                     #  238   0x619ac  3      
  addl $0x4, %edx                      #  239   0x619af  3      
  shll $0x2, %edx                      #  240   0x619b2  3      
  leal (%rdx,%rax,1), %edi             #  241   0x619b5  3      
  movslq %edx, %rdx                    #  242   0x619b8  3      
  leaq (%rax,%rdx,1), %rdx             #  243   0x619bb  4      
  movl %edx, %edx                      #  244   0x619bf  2      
  movl (%r15,%rdx,1), %esi             #  245   0x619c1  4      
  testq %rsi, %rsi                     #  246   0x619c5  3      
  xchgw %ax, %ax                       #  247   0x619c8  3      
  je .L_61c60                          #  248   0x619cb  6      
  addl %ecx, %ecx                      #  249   0x619d1  2      
  movq %rsi, %rax                      #  250   0x619d3  3      
  nop                                  #  251   0x619d6  1      
  nop                                  #  252   0x619d7  1      
.L_61ac0:                              #        0x619d8  0      
  movl %eax, %eax                      #  253   0x619d8  2      
  movl 0x4(%r15,%rax,1), %edx          #  254   0x619da  5      
  andl $0xfffffff8, %edx               #  255   0x619df  6      
  cmpl %edx, %r9d                      #  256   0x619e5  3      
  jne .L_61a80                         #  257   0x619e8  6      
  movl 0xffd4edc(%rip), %ecx           #  258   0x619ee  6      
  movl %eax, %eax                      #  259   0x619f4  2      
  movl 0x8(%r15,%rax,1), %edx          #  260   0x619f6  5      
  cmpl %eax, %ecx                      #  261   0x619fb  2      
  xchgw %ax, %ax                       #  262   0x619fd  3      
  ja .L_61d20                          #  263   0x61a00  6      
  cmpl %edx, %ecx                      #  264   0x61a06  2      
  ja .L_61d20                          #  265   0x61a08  6      
  movl %edx, %edx                      #  266   0x61a0e  2      
  movl %r14d, 0xc(%r15,%rdx,1)         #  267   0x61a10  5      
  movl %eax, %eax                      #  268   0x61a15  2      
  movl %r14d, 0x8(%r15,%rax,1)         #  269   0x61a17  5      
  nop                                  #  270   0x61a1c  1      
  movl %r14d, %r14d                    #  271   0x61a1d  3      
  movl %eax, 0xc(%r15,%r14,1)          #  272   0x61a20  5      
  movl %r14d, %r14d                    #  273   0x61a25  3      
  movl %edx, 0x8(%r15,%r14,1)          #  274   0x61a28  5      
  movl %r14d, %r14d                    #  275   0x61a2d  3      
  movl $0x0, 0x18(%r15,%r14,1)         #  276   0x61a30  9      
  nop                                  #  277   0x61a39  1      
  jmpq .L_616a0                        #  278   0x61a3a  5      
  nop                                  #  279   0x61a3f  1      
  nop                                  #  280   0x61a40  1      
.L_61b40:                              #        0x61a41  0      
  leal 0x130(,%rdx,4), %edx            #  281   0x61a41  7      
  orl %ecx, %eax                       #  282   0x61a48  2      
  movl %eax, 0xffd4e74(%rip)           #  283   0x61a4a  6      
  movslq %edx, %rax                    #  284   0x61a50  3      
  addl $0x100368c0, %edx               #  285   0x61a53  6      
  nop                                  #  286   0x61a59  1      
  movl %eax, %eax                      #  287   0x61a5a  2      
  movl %r14d, 0x100368c0(%r15,%rax,1)  #  288   0x61a5c  8      
  movl %r14d, %r14d                    #  289   0x61a64  3      
  movl %edx, 0x18(%r15,%r14,1)         #  290   0x61a67  5      
  movl %r14d, %r14d                    #  291   0x61a6c  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  292   0x61a6f  5      
  nop                                  #  293   0x61a74  1      
  movl %r14d, %r14d                    #  294   0x61a75  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  295   0x61a78  5      
  jmpq .L_616a0                        #  296   0x61a7d  5      
  nop                                  #  297   0x61a82  1      
  nop                                  #  298   0x61a83  1      
.L_61ba0:                              #        0x61a84  0      
  movl $0x0, 0xffd4e46(%rip)           #  299   0x61a84  10     
  movl $0x0, 0xffd4e30(%rip)           #  300   0x61a8e  10     
  jmpq .L_618e0                        #  301   0x61a98  5      
  nop                                  #  302   0x61a9d  1      
.L_61bc0:                              #        0x61a9e  0      
  movl %r14d, %r14d                    #  303   0x61a9e  3      
  movl 0x14(%r15,%r14,1), %eax         #  304   0x61aa1  5      
  leal 0x14(%r14), %esi                #  305   0x61aa6  4      
  testq %rax, %rax                     #  306   0x61aaa  3      
  jne .L_61c20                         #  307   0x61aad  6      
  jmpq .L_61d00                        #  308   0x61ab3  5      
  nop                                  #  309   0x61ab8  1      
.L_61be0:                              #        0x61ab9  0      
  leal 0x14(%rax), %esi                #  310   0x61ab9  3      
  nop                                  #  311   0x61abc  1      
  nop                                  #  312   0x61abd  1      
.L_61c00:                              #        0x61abe  0      
  movq %rcx, %rax                      #  313   0x61abe  3      
  nop                                  #  314   0x61ac1  1      
  nop                                  #  315   0x61ac2  1      
.L_61c20:                              #        0x61ac3  0      
  movl %eax, %eax                      #  316   0x61ac3  2      
  movl 0x14(%r15,%rax,1), %ecx         #  317   0x61ac5  5      
  testq %rcx, %rcx                     #  318   0x61aca  3      
  jne .L_61be0                         #  319   0x61acd  6      
  movl %eax, %eax                      #  320   0x61ad3  2      
  movl 0x10(%r15,%rax,1), %ecx         #  321   0x61ad5  5      
  testq %rcx, %rcx                     #  322   0x61ada  3      
  je .L_61c40                          #  323   0x61add  6      
  leal 0x10(%rax), %esi                #  324   0x61ae3  3      
  jmpq .L_61c00                        #  325   0x61ae6  5      
  nop                                  #  326   0x61aeb  1      
.L_61c40:                              #        0x61aec  0      
  cmpl %esi, 0xffd4dde(%rip)           #  327   0x61aec  6      
  ja .L_61d20                          #  328   0x61af2  6      
  movl %esi, %esi                      #  329   0x61af8  2      
  movl $0x0, (%r15,%rsi,1)             #  330   0x61afa  8      
  jmpq .L_617e0                        #  331   0x61b02  5      
  nop                                  #  332   0x61b07  1      
.L_61c60:                              #        0x61b08  0      
  cmpl %edi, 0xffd4dc2(%rip)           #  333   0x61b08  6      
  ja .L_61d20                          #  334   0x61b0e  6      
  movl %edx, %edx                      #  335   0x61b14  2      
  movl %r14d, (%r15,%rdx,1)            #  336   0x61b16  4      
  movl %r14d, %r14d                    #  337   0x61b1a  3      
  movl %eax, 0x18(%r15,%r14,1)         #  338   0x61b1d  5      
  nop                                  #  339   0x61b22  1      
  movl %r14d, %r14d                    #  340   0x61b23  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  341   0x61b26  5      
  movl %r14d, %r14d                    #  342   0x61b2b  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  343   0x61b2e  5      
  jmpq .L_616a0                        #  344   0x61b33  5      
  nop                                  #  345   0x61b38  1      
.L_61ca0:                              #        0x61b39  0      
  testq %rax, %rax                     #  346   0x61b39  3      
  movl %esi, %esi                      #  347   0x61b3c  2      
  movl %eax, 0x100368c0(%r15,%rsi,1)   #  348   0x61b3e  8      
  je .L_61ce0                          #  349   0x61b46  6      
  movl 0xffd4d7e(%rip), %ecx           #  350   0x61b4c  6      
  jmpq .L_61860                        #  351   0x61b52  5      
  nop                                  #  352   0x61b57  1      
.L_61cc0:                              #        0x61b58  0      
  movl %r11d, %r11d                    #  353   0x61b58  3      
  movl %eax, 0x10(%r15,%r11,1)         #  354   0x61b5b  5      
  jmpq .L_61840                        #  355   0x61b60  5      
  nop                                  #  356   0x61b65  1      
  nop                                  #  357   0x61b66  1      
.L_61ce0:                              #        0x61b67  0      
  movl $0x1, %eax                      #  358   0x61b67  5      
  shll %cl, %eax                       #  359   0x61b6c  2      
  movl %eax, %ecx                      #  360   0x61b6e  2      
  notl %ecx                            #  361   0x61b70  2      
  andl %ecx, 0xffd4d4c(%rip)           #  362   0x61b72  6      
  jmpq .L_618e0                        #  363   0x61b78  5      
  nop                                  #  364   0x61b7d  1      
.L_61d00:                              #        0x61b7e  0      
  movl %r14d, %r14d                    #  365   0x61b7e  3      
  movl 0x10(%r15,%r14,1), %eax         #  366   0x61b81  5      
  leal 0x10(%r14), %esi                #  367   0x61b86  4      
  testq %rax, %rax                     #  368   0x61b8a  3      
  jne .L_61c20                         #  369   0x61b8d  6      
  jmpq .L_617e0                        #  370   0x61b93  5      
  nop                                  #  371   0x61b98  1      
.L_61d20:                              #        0x61b99  0      
  nop                                  #  372   0x61b99  1      
  nop                                  #  373   0x61b9a  1      
  callq .abort                         #  374   0x61b9b  5      
                                                                
.size T_268, .-T_268

