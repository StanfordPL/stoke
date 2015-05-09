  .text
  .globl T_268
  .type T_268, @function

#! file-offset 0x61640
#! rip-offset  0x61640
#! capacity    1760 bytes

# Text                                 #  Line  RIP      Bytes  
.T_268:                                #        0x61640  0      
  pushq %r14                           #  1     0x61640  3      
  movl $0xfff, %eax                    #  2     0x61643  5      
  pushq %r13                           #  3     0x61648  3      
  pushq %r12                           #  4     0x6164b  3      
  pushq %rbx                           #  5     0x6164e  2      
  subl $0x38, %esp                     #  6     0x61650  3      
  addq %r15, %rsp                      #  7     0x61653  3      
  movl 0xffd5430(%rip), %ebx           #  8     0x61656  6      
  movl $0x0, 0x2c(%rsp)                #  9     0x6165c  8      
  testq %rbx, %rbx                     #  10    0x61664  3      
  je .L_61940                          #  11    0x61667  6      
  movl $0x10036a84, %r8d               #  12    0x6166d  6      
  xorl %r13d, %r13d                    #  13    0x61673  3      
  movl $0x8, %r10d                     #  14    0x61676  6      
  movl %r8d, %r8d                      #  15    0x6167c  3      
  jmpq .L_616c0                        #  16    0x6167f  5      
  nop                                  #  17    0x61684  1      
.L_61680:                              #        0x61685  0      
  addl $0x1, %r13d                     #  18    0x61685  4      
  testq %r12, %r12                     #  19    0x61689  3      
  je .L_61920                          #  20    0x6168c  6      
  nop                                  #  21    0x61692  1      
  nop                                  #  22    0x61693  1      
.L_616a0:                              #        0x61694  0      
  movq %rbx, %r8                       #  23    0x61694  3      
  movq %r12, %rbx                      #  24    0x61697  3      
  nop                                  #  25    0x6169a  1      
  nop                                  #  26    0x6169b  1      
.L_616c0:                              #        0x6169c  0      
  movl %ebx, %ebx                      #  27    0x6169c  2      
  movl 0xc(%r15,%rbx,1), %eax          #  28    0x6169e  5      
  movl %ebx, %ebx                      #  29    0x616a3  2      
  movl (%r15,%rbx,1), %edi             #  30    0x616a5  4      
  movl %ebx, %ebx                      #  31    0x616a9  2      
  movl 0x4(%r15,%rbx,1), %edx          #  32    0x616ab  5      
  movl %ebx, %ebx                      #  33    0x616b0  2      
  movl 0x8(%r15,%rbx,1), %r12d         #  34    0x616b2  5      
  andl $0x9, %eax                      #  35    0x616b7  3      
  xchgw %ax, %ax                       #  36    0x616ba  3      
  cmpl $0x1, %eax                      #  37    0x616bd  3      
  jne .L_61680                         #  38    0x616c0  6      
  movl %edi, %eax                      #  39    0x616c6  2      
  xorl %r14d, %r14d                    #  40    0x616c8  3      
  andl $0x7, %eax                      #  41    0x616cb  3      
  je .L_61700                          #  42    0x616ce  6      
  movl %r10d, %r14d                    #  43    0x616d4  3      
  subl %eax, %r14d                     #  44    0x616d7  3      
  andl $0x7, %r14d                     #  45    0x616da  4      
  nop                                  #  46    0x616de  1      
.L_61700:                              #        0x616df  0      
  addl %edi, %r14d                     #  47    0x616df  3      
  movl %r14d, %r14d                    #  48    0x616e2  3      
  movl 0x4(%r15,%r14,1), %r9d          #  49    0x616e5  5      
  movl %r9d, %eax                      #  50    0x616ea  3      
  andl $0x3, %eax                      #  51    0x616ed  3      
  cmpl $0x1, %eax                      #  52    0x616f0  3      
  jne .L_61680                         #  53    0x616f3  6      
  andl $0xfffffff8, %r9d               #  54    0x616f9  7      
  xchgw %ax, %ax                       #  55    0x61700  3      
  leal -0x28(%rdx,%rdi,1), %eax        #  56    0x61703  4      
  leal (%r9,%r14,1), %ecx              #  57    0x61707  4      
  cmpl %eax, %ecx                      #  58    0x6170b  2      
  jb .L_61680                          #  59    0x6170d  6      
  cmpl %r14d, 0xffd51ba(%rip)          #  60    0x61713  7      
  je .L_61b80                          #  61    0x6171a  6      
  nop                                  #  62    0x61720  1      
  movl %r14d, %r14d                    #  63    0x61721  3      
  movl 0xc(%r15,%r14,1), %eax          #  64    0x61724  5      
  movl %r14d, %r14d                    #  65    0x61729  3      
  movl 0x18(%r15,%r14,1), %r11d        #  66    0x6172c  5      
  cmpl %eax, %r14d                     #  67    0x61731  3      
  je .L_61ba0                          #  68    0x61734  6      
  nop                                  #  69    0x6173a  1      
  movl %r14d, %r14d                    #  70    0x6173b  3      
  movl 0x8(%r15,%r14,1), %ecx          #  71    0x6173e  5      
  cmpl %ecx, 0xffd5187(%rip)           #  72    0x61743  6      
  ja .L_61d00                          #  73    0x61749  6      
  movl %ecx, %ecx                      #  74    0x6174f  2      
  cmpl %r14d, 0xc(%r15,%rcx,1)         #  75    0x61751  5      
  nop                                  #  76    0x61756  1      
  jne .L_61d00                         #  77    0x61757  6      
  movl %eax, %eax                      #  78    0x6175d  2      
  cmpl %r14d, 0x8(%r15,%rax,1)         #  79    0x6175f  5      
  jne .L_61d00                         #  80    0x61764  6      
  movl %ecx, %ecx                      #  81    0x6176a  2      
  movl %eax, 0xc(%r15,%rcx,1)          #  82    0x6176c  5      
  nop                                  #  83    0x61771  1      
  movl %eax, %eax                      #  84    0x61772  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  85    0x61774  5      
  nop                                  #  86    0x61779  1      
  nop                                  #  87    0x6177a  1      
.L_617c0:                              #        0x6177b  0      
  testq %r11, %r11                     #  88    0x6177b  3      
  je .L_618c0                          #  89    0x6177e  6      
  movl %r14d, %r14d                    #  90    0x61784  3      
  movl 0x1c(%r15,%r14,1), %ecx         #  91    0x61787  5      
  leal 0x130(,%rcx,4), %esi            #  92    0x6178c  7      
  movslq %esi, %rsi                    #  93    0x61793  3      
  nop                                  #  94    0x61796  1      
  movl %esi, %esi                      #  95    0x61797  2      
  cmpl %r14d, 0x100368c0(%r15,%rsi,1)  #  96    0x61799  8      
  je .L_61c80                          #  97    0x617a1  6      
  movl 0xffd5123(%rip), %ecx           #  98    0x617a7  6      
  cmpl %r11d, %ecx                     #  99    0x617ad  3      
  ja .L_61d00                          #  100   0x617b0  6      
  nop                                  #  101   0x617b6  1      
  movl %r11d, %r11d                    #  102   0x617b7  3      
  cmpl %r14d, 0x10(%r15,%r11,1)        #  103   0x617ba  5      
  je .L_61ca0                          #  104   0x617bf  6      
  movl %r11d, %r11d                    #  105   0x617c5  3      
  movl %eax, 0x14(%r15,%r11,1)         #  106   0x617c8  5      
  nop                                  #  107   0x617cd  1      
.L_61820:                              #        0x617ce  0      
  testq %rax, %rax                     #  108   0x617ce  3      
  je .L_618c0                          #  109   0x617d1  6      
  nop                                  #  110   0x617d7  1      
  nop                                  #  111   0x617d8  1      
.L_61840:                              #        0x617d9  0      
  cmpl %ecx, %eax                      #  112   0x617d9  2      
  jb .L_61d00                          #  113   0x617db  6      
  movl %r14d, %r14d                    #  114   0x617e1  3      
  movl 0x10(%r15,%r14,1), %esi         #  115   0x617e4  5      
  movl %eax, %eax                      #  116   0x617e9  2      
  movl %r11d, 0x18(%r15,%rax,1)        #  117   0x617eb  5      
  testq %rsi, %rsi                     #  118   0x617f0  3      
  je .L_61880                          #  119   0x617f3  6      
  cmpl %ecx, %esi                      #  120   0x617f9  2      
  xchgw %ax, %ax                       #  121   0x617fb  3      
  jb .L_61d00                          #  122   0x617fe  6      
  movl %eax, %eax                      #  123   0x61804  2      
  movl %esi, 0x10(%r15,%rax,1)         #  124   0x61806  5      
  movl %esi, %esi                      #  125   0x6180b  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  126   0x6180d  5      
  nop                                  #  127   0x61812  1      
.L_61880:                              #        0x61813  0      
  movl %r14d, %r14d                    #  128   0x61813  3      
  movl 0x14(%r15,%r14,1), %esi         #  129   0x61816  5      
  testq %rsi, %rsi                     #  130   0x6181b  3      
  je .L_618c0                          #  131   0x6181e  6      
  cmpl %ecx, %esi                      #  132   0x61824  2      
  jb .L_61d00                          #  133   0x61826  6      
  movl %eax, %eax                      #  134   0x6182c  2      
  movl %esi, 0x14(%r15,%rax,1)         #  135   0x6182e  5      
  nop                                  #  136   0x61833  1      
  movl %esi, %esi                      #  137   0x61834  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  138   0x61836  5      
  nop                                  #  139   0x6183b  1      
  nop                                  #  140   0x6183c  1      
.L_618c0:                              #        0x6183d  0      
  movl %edx, %esi                      #  141   0x6183d  2      
  movl %edx, 0x20(%rsp)                #  142   0x6183f  4      
  movq %r8, 0x8(%rsp)                  #  143   0x61843  5      
  movl %r9d, 0x18(%rsp)                #  144   0x61848  5      
  movl %r10d, 0x10(%rsp)               #  145   0x6184d  5      
  nop                                  #  146   0x61852  1      
  callq .munmap                        #  147   0x61853  5      
  testl %eax, %eax                     #  148   0x61858  2      
  movl 0x20(%rsp), %edx                #  149   0x6185a  4      
  movq 0x8(%rsp), %r8                  #  150   0x6185e  5      
  movl 0x18(%rsp), %r9d                #  151   0x61863  5      
  movl 0x10(%rsp), %r10d               #  152   0x61868  5      
  jne .L_61980                         #  153   0x6186d  6      
  addl %edx, 0x2c(%rsp)                #  154   0x61873  4      
  nop                                  #  155   0x61877  1      
  subl %edx, 0xffd51f2(%rip)           #  156   0x61878  6      
  addl $0x1, %r13d                     #  157   0x6187e  4      
  testq %r12, %r12                     #  158   0x61882  3      
  movl %r8d, %r8d                      #  159   0x61885  3      
  movl %r12d, 0x8(%r15,%r8,1)          #  160   0x61888  5      
  movq %r8, %rbx                       #  161   0x6188d  3      
  jne .L_616a0                         #  162   0x61890  6      
  xchgw %ax, %ax                       #  163   0x61896  3      
.L_61920:                              #        0x61899  0      
  movl $0xfff, %eax                    #  164   0x61899  5      
  cmpl $0xfff, %r13d                   #  165   0x6189e  7      
  cmovael %r13d, %eax                  #  166   0x618a5  4      
  nop                                  #  167   0x618a9  1      
  nop                                  #  168   0x618aa  1      
.L_61940:                              #        0x618ab  0      
  movl %eax, 0xffd502f(%rip)           #  169   0x618ab  6      
  movl 0x2c(%rsp), %eax                #  170   0x618b1  4      
  addl $0x38, %esp                     #  171   0x618b5  3      
  addq %r15, %rsp                      #  172   0x618b8  3      
  popq %rbx                            #  173   0x618bb  2      
  popq %r12                            #  174   0x618bd  3      
  popq %r13                            #  175   0x618c0  3      
  popq %r14                            #  176   0x618c3  3      
  popq %r11                            #  177   0x618c6  3      
  nop                                  #  178   0x618c9  1      
  andl $0xffffffe0, %r11d              #  179   0x618ca  7      
  addq %r15, %r11                      #  180   0x618d1  3      
  jmpq %r11                            #  181   0x618d4  3      
  nop                                  #  182   0x618d7  1      
  nop                                  #  183   0x618d8  1      
.L_61980:                              #        0x618d9  0      
  movl %r9d, %ecx                      #  184   0x618d9  3      
  xorl %edx, %edx                      #  185   0x618dc  2      
  movl $0x1, %eax                      #  186   0x618de  5      
  shrl $0x8, %ecx                      #  187   0x618e3  3      
  testl %ecx, %ecx                     #  188   0x618e6  2      
  je .L_619e0                          #  189   0x618e8  6      
  cmpl $0xffff, %ecx                   #  190   0x618ee  6      
  movl $0x80000000, %eax               #  191   0x618f4  5      
  movb $0x1f, %dl                      #  192   0x618f9  2      
  xchgw %ax, %ax                       #  193   0x618fb  3      
  ja .L_619e0                          #  194   0x618fe  6      
  bsrl %ecx, %eax                      #  195   0x61904  3      
  xorl $0x1f, %eax                     #  196   0x61907  3      
  subl %eax, %edx                      #  197   0x6190a  2      
  movl %edx, %eax                      #  198   0x6190c  2      
  movl %r9d, %edx                      #  199   0x6190e  3      
  leal 0x7(%rax), %ecx                 #  200   0x61911  3      
  shrl %cl, %edx                       #  201   0x61914  2      
  andl $0x1, %edx                      #  202   0x61916  3      
  leal (%rdx,%rax,2), %edx             #  203   0x61919  3      
  movl $0x1, %eax                      #  204   0x6191c  5      
  nop                                  #  205   0x61921  1      
  movl %edx, %ecx                      #  206   0x61922  2      
  shll %cl, %eax                       #  207   0x61924  2      
  nop                                  #  208   0x61926  1      
  nop                                  #  209   0x61927  1      
.L_619e0:                              #        0x61928  0      
  movl %r14d, %r14d                    #  210   0x61928  3      
  movl %edx, 0x1c(%r15,%r14,1)         #  211   0x6192b  5      
  movl 0xffd4f8e(%rip), %ecx           #  212   0x61930  6      
  movl %r14d, %r14d                    #  213   0x61936  3      
  movl $0x0, 0x14(%r15,%r14,1)         #  214   0x61939  9      
  nop                                  #  215   0x61942  1      
  movl %r14d, %r14d                    #  216   0x61943  3      
  movl $0x0, 0x10(%r15,%r14,1)         #  217   0x61946  9      
  testl %ecx, %eax                     #  218   0x6194f  2      
  je .L_61b20                          #  219   0x61951  6      
  leal 0x130(,%rdx,4), %eax            #  220   0x61957  7      
  xorl %ecx, %ecx                      #  221   0x6195e  2      
  cmpl $0x1f, %edx                     #  222   0x61960  3      
  cltq                                 #  223   0x61963  2      
  movl %eax, %eax                      #  224   0x61965  2      
  movl 0x100368c0(%r15,%rax,1), %eax   #  225   0x61967  8      
  je .L_61a40                          #  226   0x6196f  6      
  shrl $0x1, %edx                      #  227   0x61975  2      
  movb $0x19, %cl                      #  228   0x61977  2      
  subl %edx, %ecx                      #  229   0x61979  2      
  nop                                  #  230   0x6197b  1      
.L_61a40:                              #        0x6197c  0      
  movl %r9d, %edx                      #  231   0x6197c  3      
  shll %cl, %edx                       #  232   0x6197f  2      
  movl %edx, %ecx                      #  233   0x61981  2      
  jmpq .L_61aa0                        #  234   0x61983  5      
  nop                                  #  235   0x61988  1      
  nop                                  #  236   0x61989  1      
.L_61a60:                              #        0x6198a  0      
  movl %ecx, %edx                      #  237   0x6198a  2      
  shrl $0x1f, %edx                     #  238   0x6198c  3      
  addl $0x4, %edx                      #  239   0x6198f  3      
  shll $0x2, %edx                      #  240   0x61992  3      
  leal (%rdx,%rax,1), %edi             #  241   0x61995  3      
  movslq %edx, %rdx                    #  242   0x61998  3      
  leaq (%rax,%rdx,1), %rdx             #  243   0x6199b  4      
  movl %edx, %edx                      #  244   0x6199f  2      
  movl (%r15,%rdx,1), %esi             #  245   0x619a1  4      
  testq %rsi, %rsi                     #  246   0x619a5  3      
  xchgw %ax, %ax                       #  247   0x619a8  3      
  je .L_61c40                          #  248   0x619ab  6      
  addl %ecx, %ecx                      #  249   0x619b1  2      
  movq %rsi, %rax                      #  250   0x619b3  3      
  nop                                  #  251   0x619b6  1      
  nop                                  #  252   0x619b7  1      
.L_61aa0:                              #        0x619b8  0      
  movl %eax, %eax                      #  253   0x619b8  2      
  movl 0x4(%r15,%rax,1), %edx          #  254   0x619ba  5      
  andl $0xfffffff8, %edx               #  255   0x619bf  6      
  cmpl %edx, %r9d                      #  256   0x619c5  3      
  jne .L_61a60                         #  257   0x619c8  6      
  movl 0xffd4efc(%rip), %ecx           #  258   0x619ce  6      
  movl %eax, %eax                      #  259   0x619d4  2      
  movl 0x8(%r15,%rax,1), %edx          #  260   0x619d6  5      
  cmpl %eax, %ecx                      #  261   0x619db  2      
  xchgw %ax, %ax                       #  262   0x619dd  3      
  ja .L_61d00                          #  263   0x619e0  6      
  cmpl %edx, %ecx                      #  264   0x619e6  2      
  ja .L_61d00                          #  265   0x619e8  6      
  movl %edx, %edx                      #  266   0x619ee  2      
  movl %r14d, 0xc(%r15,%rdx,1)         #  267   0x619f0  5      
  movl %eax, %eax                      #  268   0x619f5  2      
  movl %r14d, 0x8(%r15,%rax,1)         #  269   0x619f7  5      
  nop                                  #  270   0x619fc  1      
  movl %r14d, %r14d                    #  271   0x619fd  3      
  movl %eax, 0xc(%r15,%r14,1)          #  272   0x61a00  5      
  movl %r14d, %r14d                    #  273   0x61a05  3      
  movl %edx, 0x8(%r15,%r14,1)          #  274   0x61a08  5      
  movl %r14d, %r14d                    #  275   0x61a0d  3      
  movl $0x0, 0x18(%r15,%r14,1)         #  276   0x61a10  9      
  nop                                  #  277   0x61a19  1      
  jmpq .L_61680                        #  278   0x61a1a  5      
  nop                                  #  279   0x61a1f  1      
  nop                                  #  280   0x61a20  1      
.L_61b20:                              #        0x61a21  0      
  leal 0x130(,%rdx,4), %edx            #  281   0x61a21  7      
  orl %ecx, %eax                       #  282   0x61a28  2      
  movl %eax, 0xffd4e94(%rip)           #  283   0x61a2a  6      
  movslq %edx, %rax                    #  284   0x61a30  3      
  addl $0x100368c0, %edx               #  285   0x61a33  6      
  nop                                  #  286   0x61a39  1      
  movl %eax, %eax                      #  287   0x61a3a  2      
  movl %r14d, 0x100368c0(%r15,%rax,1)  #  288   0x61a3c  8      
  movl %r14d, %r14d                    #  289   0x61a44  3      
  movl %edx, 0x18(%r15,%r14,1)         #  290   0x61a47  5      
  movl %r14d, %r14d                    #  291   0x61a4c  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  292   0x61a4f  5      
  nop                                  #  293   0x61a54  1      
  movl %r14d, %r14d                    #  294   0x61a55  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  295   0x61a58  5      
  jmpq .L_61680                        #  296   0x61a5d  5      
  nop                                  #  297   0x61a62  1      
  nop                                  #  298   0x61a63  1      
.L_61b80:                              #        0x61a64  0      
  movl $0x0, 0xffd4e66(%rip)           #  299   0x61a64  10     
  movl $0x0, 0xffd4e50(%rip)           #  300   0x61a6e  10     
  jmpq .L_618c0                        #  301   0x61a78  5      
  nop                                  #  302   0x61a7d  1      
.L_61ba0:                              #        0x61a7e  0      
  movl %r14d, %r14d                    #  303   0x61a7e  3      
  movl 0x14(%r15,%r14,1), %eax         #  304   0x61a81  5      
  leal 0x14(%r14), %esi                #  305   0x61a86  4      
  testq %rax, %rax                     #  306   0x61a8a  3      
  jne .L_61c00                         #  307   0x61a8d  6      
  jmpq .L_61ce0                        #  308   0x61a93  5      
  nop                                  #  309   0x61a98  1      
.L_61bc0:                              #        0x61a99  0      
  leal 0x14(%rax), %esi                #  310   0x61a99  3      
  nop                                  #  311   0x61a9c  1      
  nop                                  #  312   0x61a9d  1      
.L_61be0:                              #        0x61a9e  0      
  movq %rcx, %rax                      #  313   0x61a9e  3      
  nop                                  #  314   0x61aa1  1      
  nop                                  #  315   0x61aa2  1      
.L_61c00:                              #        0x61aa3  0      
  movl %eax, %eax                      #  316   0x61aa3  2      
  movl 0x14(%r15,%rax,1), %ecx         #  317   0x61aa5  5      
  testq %rcx, %rcx                     #  318   0x61aaa  3      
  jne .L_61bc0                         #  319   0x61aad  6      
  movl %eax, %eax                      #  320   0x61ab3  2      
  movl 0x10(%r15,%rax,1), %ecx         #  321   0x61ab5  5      
  testq %rcx, %rcx                     #  322   0x61aba  3      
  je .L_61c20                          #  323   0x61abd  6      
  leal 0x10(%rax), %esi                #  324   0x61ac3  3      
  jmpq .L_61be0                        #  325   0x61ac6  5      
  nop                                  #  326   0x61acb  1      
.L_61c20:                              #        0x61acc  0      
  cmpl %esi, 0xffd4dfe(%rip)           #  327   0x61acc  6      
  ja .L_61d00                          #  328   0x61ad2  6      
  movl %esi, %esi                      #  329   0x61ad8  2      
  movl $0x0, (%r15,%rsi,1)             #  330   0x61ada  8      
  jmpq .L_617c0                        #  331   0x61ae2  5      
  nop                                  #  332   0x61ae7  1      
.L_61c40:                              #        0x61ae8  0      
  cmpl %edi, 0xffd4de2(%rip)           #  333   0x61ae8  6      
  ja .L_61d00                          #  334   0x61aee  6      
  movl %edx, %edx                      #  335   0x61af4  2      
  movl %r14d, (%r15,%rdx,1)            #  336   0x61af6  4      
  movl %r14d, %r14d                    #  337   0x61afa  3      
  movl %eax, 0x18(%r15,%r14,1)         #  338   0x61afd  5      
  nop                                  #  339   0x61b02  1      
  movl %r14d, %r14d                    #  340   0x61b03  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  341   0x61b06  5      
  movl %r14d, %r14d                    #  342   0x61b0b  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  343   0x61b0e  5      
  jmpq .L_61680                        #  344   0x61b13  5      
  nop                                  #  345   0x61b18  1      
.L_61c80:                              #        0x61b19  0      
  testq %rax, %rax                     #  346   0x61b19  3      
  movl %esi, %esi                      #  347   0x61b1c  2      
  movl %eax, 0x100368c0(%r15,%rsi,1)   #  348   0x61b1e  8      
  je .L_61cc0                          #  349   0x61b26  6      
  movl 0xffd4d9e(%rip), %ecx           #  350   0x61b2c  6      
  jmpq .L_61840                        #  351   0x61b32  5      
  nop                                  #  352   0x61b37  1      
.L_61ca0:                              #        0x61b38  0      
  movl %r11d, %r11d                    #  353   0x61b38  3      
  movl %eax, 0x10(%r15,%r11,1)         #  354   0x61b3b  5      
  jmpq .L_61820                        #  355   0x61b40  5      
  nop                                  #  356   0x61b45  1      
  nop                                  #  357   0x61b46  1      
.L_61cc0:                              #        0x61b47  0      
  movl $0x1, %eax                      #  358   0x61b47  5      
  shll %cl, %eax                       #  359   0x61b4c  2      
  movl %eax, %ecx                      #  360   0x61b4e  2      
  notl %ecx                            #  361   0x61b50  2      
  andl %ecx, 0xffd4d6c(%rip)           #  362   0x61b52  6      
  jmpq .L_618c0                        #  363   0x61b58  5      
  nop                                  #  364   0x61b5d  1      
.L_61ce0:                              #        0x61b5e  0      
  movl %r14d, %r14d                    #  365   0x61b5e  3      
  movl 0x10(%r15,%r14,1), %eax         #  366   0x61b61  5      
  leal 0x10(%r14), %esi                #  367   0x61b66  4      
  testq %rax, %rax                     #  368   0x61b6a  3      
  jne .L_61c00                         #  369   0x61b6d  6      
  jmpq .L_617c0                        #  370   0x61b73  5      
  nop                                  #  371   0x61b78  1      
.L_61d00:                              #        0x61b79  0      
  nop                                  #  372   0x61b79  1      
  nop                                  #  373   0x61b7a  1      
  callq .abort                         #  374   0x61b7b  5      
                                                                
.size T_268, .-T_268

