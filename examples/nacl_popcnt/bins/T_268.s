  .text
  .globl T_268
  .type T_268, @function

#! file-offset 0x616e0
#! rip-offset  0x616e0
#! capacity    1760 bytes

# Text                                 #  Line  RIP      Bytes  
.T_268:                                #        0x616e0  0      
  pushq %r14                           #  1     0x616e0  3      
  movl $0xfff, %eax                    #  2     0x616e3  5      
  pushq %r13                           #  3     0x616e8  3      
  pushq %r12                           #  4     0x616eb  3      
  pushq %rbx                           #  5     0x616ee  2      
  subl $0x38, %esp                     #  6     0x616f0  3      
  addq %r15, %rsp                      #  7     0x616f3  3      
  movl 0xffd5390(%rip), %ebx           #  8     0x616f6  6      
  movl $0x0, 0x2c(%rsp)                #  9     0x616fc  8      
  testq %rbx, %rbx                     #  10    0x61704  3      
  je .L_619e0                          #  11    0x61707  6      
  movl $0x10036a84, %r8d               #  12    0x6170d  6      
  xorl %r13d, %r13d                    #  13    0x61713  3      
  movl $0x8, %r10d                     #  14    0x61716  6      
  movl %r8d, %r8d                      #  15    0x6171c  3      
  jmpq .L_61760                        #  16    0x6171f  5      
  nop                                  #  17    0x61724  1      
.L_61720:                              #        0x61725  0      
  addl $0x1, %r13d                     #  18    0x61725  4      
  testq %r12, %r12                     #  19    0x61729  3      
  je .L_619c0                          #  20    0x6172c  6      
  nop                                  #  21    0x61732  1      
  nop                                  #  22    0x61733  1      
.L_61740:                              #        0x61734  0      
  movq %rbx, %r8                       #  23    0x61734  3      
  movq %r12, %rbx                      #  24    0x61737  3      
  nop                                  #  25    0x6173a  1      
  nop                                  #  26    0x6173b  1      
.L_61760:                              #        0x6173c  0      
  movl %ebx, %ebx                      #  27    0x6173c  2      
  movl 0xc(%r15,%rbx,1), %eax          #  28    0x6173e  5      
  movl %ebx, %ebx                      #  29    0x61743  2      
  movl (%r15,%rbx,1), %edi             #  30    0x61745  4      
  movl %ebx, %ebx                      #  31    0x61749  2      
  movl 0x4(%r15,%rbx,1), %edx          #  32    0x6174b  5      
  movl %ebx, %ebx                      #  33    0x61750  2      
  movl 0x8(%r15,%rbx,1), %r12d         #  34    0x61752  5      
  andl $0x9, %eax                      #  35    0x61757  3      
  xchgw %ax, %ax                       #  36    0x6175a  3      
  cmpl $0x1, %eax                      #  37    0x6175d  3      
  jne .L_61720                         #  38    0x61760  6      
  movl %edi, %eax                      #  39    0x61766  2      
  xorl %r14d, %r14d                    #  40    0x61768  3      
  andl $0x7, %eax                      #  41    0x6176b  3      
  je .L_617a0                          #  42    0x6176e  6      
  movl %r10d, %r14d                    #  43    0x61774  3      
  subl %eax, %r14d                     #  44    0x61777  3      
  andl $0x7, %r14d                     #  45    0x6177a  4      
  nop                                  #  46    0x6177e  1      
.L_617a0:                              #        0x6177f  0      
  addl %edi, %r14d                     #  47    0x6177f  3      
  movl %r14d, %r14d                    #  48    0x61782  3      
  movl 0x4(%r15,%r14,1), %r9d          #  49    0x61785  5      
  movl %r9d, %eax                      #  50    0x6178a  3      
  andl $0x3, %eax                      #  51    0x6178d  3      
  cmpl $0x1, %eax                      #  52    0x61790  3      
  jne .L_61720                         #  53    0x61793  6      
  andl $0xfffffff8, %r9d               #  54    0x61799  7      
  xchgw %ax, %ax                       #  55    0x617a0  3      
  leal -0x28(%rdx,%rdi,1), %eax        #  56    0x617a3  4      
  leal (%r9,%r14,1), %ecx              #  57    0x617a7  4      
  cmpl %eax, %ecx                      #  58    0x617ab  2      
  jb .L_61720                          #  59    0x617ad  6      
  cmpl %r14d, 0xffd511a(%rip)          #  60    0x617b3  7      
  je .L_61c20                          #  61    0x617ba  6      
  nop                                  #  62    0x617c0  1      
  movl %r14d, %r14d                    #  63    0x617c1  3      
  movl 0xc(%r15,%r14,1), %eax          #  64    0x617c4  5      
  movl %r14d, %r14d                    #  65    0x617c9  3      
  movl 0x18(%r15,%r14,1), %r11d        #  66    0x617cc  5      
  cmpl %eax, %r14d                     #  67    0x617d1  3      
  je .L_61c40                          #  68    0x617d4  6      
  nop                                  #  69    0x617da  1      
  movl %r14d, %r14d                    #  70    0x617db  3      
  movl 0x8(%r15,%r14,1), %ecx          #  71    0x617de  5      
  cmpl %ecx, 0xffd50e7(%rip)           #  72    0x617e3  6      
  ja .L_61da0                          #  73    0x617e9  6      
  movl %ecx, %ecx                      #  74    0x617ef  2      
  cmpl %r14d, 0xc(%r15,%rcx,1)         #  75    0x617f1  5      
  nop                                  #  76    0x617f6  1      
  jne .L_61da0                         #  77    0x617f7  6      
  movl %eax, %eax                      #  78    0x617fd  2      
  cmpl %r14d, 0x8(%r15,%rax,1)         #  79    0x617ff  5      
  jne .L_61da0                         #  80    0x61804  6      
  movl %ecx, %ecx                      #  81    0x6180a  2      
  movl %eax, 0xc(%r15,%rcx,1)          #  82    0x6180c  5      
  nop                                  #  83    0x61811  1      
  movl %eax, %eax                      #  84    0x61812  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  85    0x61814  5      
  nop                                  #  86    0x61819  1      
  nop                                  #  87    0x6181a  1      
.L_61860:                              #        0x6181b  0      
  testq %r11, %r11                     #  88    0x6181b  3      
  je .L_61960                          #  89    0x6181e  6      
  movl %r14d, %r14d                    #  90    0x61824  3      
  movl 0x1c(%r15,%r14,1), %ecx         #  91    0x61827  5      
  leal 0x130(,%rcx,4), %esi            #  92    0x6182c  7      
  movslq %esi, %rsi                    #  93    0x61833  3      
  nop                                  #  94    0x61836  1      
  movl %esi, %esi                      #  95    0x61837  2      
  cmpl %r14d, 0x100368c0(%r15,%rsi,1)  #  96    0x61839  8      
  je .L_61d20                          #  97    0x61841  6      
  movl 0xffd5083(%rip), %ecx           #  98    0x61847  6      
  cmpl %r11d, %ecx                     #  99    0x6184d  3      
  ja .L_61da0                          #  100   0x61850  6      
  nop                                  #  101   0x61856  1      
  movl %r11d, %r11d                    #  102   0x61857  3      
  cmpl %r14d, 0x10(%r15,%r11,1)        #  103   0x6185a  5      
  je .L_61d40                          #  104   0x6185f  6      
  movl %r11d, %r11d                    #  105   0x61865  3      
  movl %eax, 0x14(%r15,%r11,1)         #  106   0x61868  5      
  nop                                  #  107   0x6186d  1      
.L_618c0:                              #        0x6186e  0      
  testq %rax, %rax                     #  108   0x6186e  3      
  je .L_61960                          #  109   0x61871  6      
  nop                                  #  110   0x61877  1      
  nop                                  #  111   0x61878  1      
.L_618e0:                              #        0x61879  0      
  cmpl %ecx, %eax                      #  112   0x61879  2      
  jb .L_61da0                          #  113   0x6187b  6      
  movl %r14d, %r14d                    #  114   0x61881  3      
  movl 0x10(%r15,%r14,1), %esi         #  115   0x61884  5      
  movl %eax, %eax                      #  116   0x61889  2      
  movl %r11d, 0x18(%r15,%rax,1)        #  117   0x6188b  5      
  testq %rsi, %rsi                     #  118   0x61890  3      
  je .L_61920                          #  119   0x61893  6      
  cmpl %ecx, %esi                      #  120   0x61899  2      
  xchgw %ax, %ax                       #  121   0x6189b  3      
  jb .L_61da0                          #  122   0x6189e  6      
  movl %eax, %eax                      #  123   0x618a4  2      
  movl %esi, 0x10(%r15,%rax,1)         #  124   0x618a6  5      
  movl %esi, %esi                      #  125   0x618ab  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  126   0x618ad  5      
  nop                                  #  127   0x618b2  1      
.L_61920:                              #        0x618b3  0      
  movl %r14d, %r14d                    #  128   0x618b3  3      
  movl 0x14(%r15,%r14,1), %esi         #  129   0x618b6  5      
  testq %rsi, %rsi                     #  130   0x618bb  3      
  je .L_61960                          #  131   0x618be  6      
  cmpl %ecx, %esi                      #  132   0x618c4  2      
  jb .L_61da0                          #  133   0x618c6  6      
  movl %eax, %eax                      #  134   0x618cc  2      
  movl %esi, 0x14(%r15,%rax,1)         #  135   0x618ce  5      
  nop                                  #  136   0x618d3  1      
  movl %esi, %esi                      #  137   0x618d4  2      
  movl %eax, 0x18(%r15,%rsi,1)         #  138   0x618d6  5      
  nop                                  #  139   0x618db  1      
  nop                                  #  140   0x618dc  1      
.L_61960:                              #        0x618dd  0      
  movl %edx, %esi                      #  141   0x618dd  2      
  movl %edx, 0x20(%rsp)                #  142   0x618df  4      
  movq %r8, 0x8(%rsp)                  #  143   0x618e3  5      
  movl %r9d, 0x18(%rsp)                #  144   0x618e8  5      
  movl %r10d, 0x10(%rsp)               #  145   0x618ed  5      
  nop                                  #  146   0x618f2  1      
  callq .munmap                        #  147   0x618f3  5      
  testl %eax, %eax                     #  148   0x618f8  2      
  movl 0x20(%rsp), %edx                #  149   0x618fa  4      
  movq 0x8(%rsp), %r8                  #  150   0x618fe  5      
  movl 0x18(%rsp), %r9d                #  151   0x61903  5      
  movl 0x10(%rsp), %r10d               #  152   0x61908  5      
  jne .L_61a20                         #  153   0x6190d  6      
  addl %edx, 0x2c(%rsp)                #  154   0x61913  4      
  nop                                  #  155   0x61917  1      
  subl %edx, 0xffd5152(%rip)           #  156   0x61918  6      
  addl $0x1, %r13d                     #  157   0x6191e  4      
  testq %r12, %r12                     #  158   0x61922  3      
  movl %r8d, %r8d                      #  159   0x61925  3      
  movl %r12d, 0x8(%r15,%r8,1)          #  160   0x61928  5      
  movq %r8, %rbx                       #  161   0x6192d  3      
  jne .L_61740                         #  162   0x61930  6      
  xchgw %ax, %ax                       #  163   0x61936  3      
.L_619c0:                              #        0x61939  0      
  movl $0xfff, %eax                    #  164   0x61939  5      
  cmpl $0xfff, %r13d                   #  165   0x6193e  7      
  cmovael %r13d, %eax                  #  166   0x61945  4      
  nop                                  #  167   0x61949  1      
  nop                                  #  168   0x6194a  1      
.L_619e0:                              #        0x6194b  0      
  movl %eax, 0xffd4f8f(%rip)           #  169   0x6194b  6      
  movl 0x2c(%rsp), %eax                #  170   0x61951  4      
  addl $0x38, %esp                     #  171   0x61955  3      
  addq %r15, %rsp                      #  172   0x61958  3      
  popq %rbx                            #  173   0x6195b  2      
  popq %r12                            #  174   0x6195d  3      
  popq %r13                            #  175   0x61960  3      
  popq %r14                            #  176   0x61963  3      
  popq %r11                            #  177   0x61966  3      
  nop                                  #  178   0x61969  1      
  andl $0xffffffe0, %r11d              #  179   0x6196a  7      
  addq %r15, %r11                      #  180   0x61971  3      
  jmpq %r11                            #  181   0x61974  3      
  nop                                  #  182   0x61977  1      
  nop                                  #  183   0x61978  1      
.L_61a20:                              #        0x61979  0      
  movl %r9d, %ecx                      #  184   0x61979  3      
  xorl %edx, %edx                      #  185   0x6197c  2      
  movl $0x1, %eax                      #  186   0x6197e  5      
  shrl $0x8, %ecx                      #  187   0x61983  3      
  testl %ecx, %ecx                     #  188   0x61986  2      
  je .L_61a80                          #  189   0x61988  6      
  cmpl $0xffff, %ecx                   #  190   0x6198e  6      
  movl $0x80000000, %eax               #  191   0x61994  5      
  movb $0x1f, %dl                      #  192   0x61999  2      
  xchgw %ax, %ax                       #  193   0x6199b  3      
  ja .L_61a80                          #  194   0x6199e  6      
  bsrl %ecx, %eax                      #  195   0x619a4  3      
  xorl $0x1f, %eax                     #  196   0x619a7  3      
  subl %eax, %edx                      #  197   0x619aa  2      
  movl %edx, %eax                      #  198   0x619ac  2      
  movl %r9d, %edx                      #  199   0x619ae  3      
  leal 0x7(%rax), %ecx                 #  200   0x619b1  3      
  shrl %cl, %edx                       #  201   0x619b4  2      
  andl $0x1, %edx                      #  202   0x619b6  3      
  leal (%rdx,%rax,2), %edx             #  203   0x619b9  3      
  movl $0x1, %eax                      #  204   0x619bc  5      
  nop                                  #  205   0x619c1  1      
  movl %edx, %ecx                      #  206   0x619c2  2      
  shll %cl, %eax                       #  207   0x619c4  2      
  nop                                  #  208   0x619c6  1      
  nop                                  #  209   0x619c7  1      
.L_61a80:                              #        0x619c8  0      
  movl %r14d, %r14d                    #  210   0x619c8  3      
  movl %edx, 0x1c(%r15,%r14,1)         #  211   0x619cb  5      
  movl 0xffd4eee(%rip), %ecx           #  212   0x619d0  6      
  movl %r14d, %r14d                    #  213   0x619d6  3      
  movl $0x0, 0x14(%r15,%r14,1)         #  214   0x619d9  9      
  nop                                  #  215   0x619e2  1      
  movl %r14d, %r14d                    #  216   0x619e3  3      
  movl $0x0, 0x10(%r15,%r14,1)         #  217   0x619e6  9      
  testl %ecx, %eax                     #  218   0x619ef  2      
  je .L_61bc0                          #  219   0x619f1  6      
  leal 0x130(,%rdx,4), %eax            #  220   0x619f7  7      
  xorl %ecx, %ecx                      #  221   0x619fe  2      
  cmpl $0x1f, %edx                     #  222   0x61a00  3      
  cltq                                 #  223   0x61a03  2      
  movl %eax, %eax                      #  224   0x61a05  2      
  movl 0x100368c0(%r15,%rax,1), %eax   #  225   0x61a07  8      
  je .L_61ae0                          #  226   0x61a0f  6      
  shrl $0x1, %edx                      #  227   0x61a15  2      
  movb $0x19, %cl                      #  228   0x61a17  2      
  subl %edx, %ecx                      #  229   0x61a19  2      
  nop                                  #  230   0x61a1b  1      
.L_61ae0:                              #        0x61a1c  0      
  movl %r9d, %edx                      #  231   0x61a1c  3      
  shll %cl, %edx                       #  232   0x61a1f  2      
  movl %edx, %ecx                      #  233   0x61a21  2      
  jmpq .L_61b40                        #  234   0x61a23  5      
  nop                                  #  235   0x61a28  1      
  nop                                  #  236   0x61a29  1      
.L_61b00:                              #        0x61a2a  0      
  movl %ecx, %edx                      #  237   0x61a2a  2      
  shrl $0x1f, %edx                     #  238   0x61a2c  3      
  addl $0x4, %edx                      #  239   0x61a2f  3      
  shll $0x2, %edx                      #  240   0x61a32  3      
  leal (%rdx,%rax,1), %edi             #  241   0x61a35  3      
  movslq %edx, %rdx                    #  242   0x61a38  3      
  leaq (%rax,%rdx,1), %rdx             #  243   0x61a3b  4      
  movl %edx, %edx                      #  244   0x61a3f  2      
  movl (%r15,%rdx,1), %esi             #  245   0x61a41  4      
  testq %rsi, %rsi                     #  246   0x61a45  3      
  xchgw %ax, %ax                       #  247   0x61a48  3      
  je .L_61ce0                          #  248   0x61a4b  6      
  addl %ecx, %ecx                      #  249   0x61a51  2      
  movq %rsi, %rax                      #  250   0x61a53  3      
  nop                                  #  251   0x61a56  1      
  nop                                  #  252   0x61a57  1      
.L_61b40:                              #        0x61a58  0      
  movl %eax, %eax                      #  253   0x61a58  2      
  movl 0x4(%r15,%rax,1), %edx          #  254   0x61a5a  5      
  andl $0xfffffff8, %edx               #  255   0x61a5f  6      
  cmpl %edx, %r9d                      #  256   0x61a65  3      
  jne .L_61b00                         #  257   0x61a68  6      
  movl 0xffd4e5c(%rip), %ecx           #  258   0x61a6e  6      
  movl %eax, %eax                      #  259   0x61a74  2      
  movl 0x8(%r15,%rax,1), %edx          #  260   0x61a76  5      
  cmpl %eax, %ecx                      #  261   0x61a7b  2      
  xchgw %ax, %ax                       #  262   0x61a7d  3      
  ja .L_61da0                          #  263   0x61a80  6      
  cmpl %edx, %ecx                      #  264   0x61a86  2      
  ja .L_61da0                          #  265   0x61a88  6      
  movl %edx, %edx                      #  266   0x61a8e  2      
  movl %r14d, 0xc(%r15,%rdx,1)         #  267   0x61a90  5      
  movl %eax, %eax                      #  268   0x61a95  2      
  movl %r14d, 0x8(%r15,%rax,1)         #  269   0x61a97  5      
  nop                                  #  270   0x61a9c  1      
  movl %r14d, %r14d                    #  271   0x61a9d  3      
  movl %eax, 0xc(%r15,%r14,1)          #  272   0x61aa0  5      
  movl %r14d, %r14d                    #  273   0x61aa5  3      
  movl %edx, 0x8(%r15,%r14,1)          #  274   0x61aa8  5      
  movl %r14d, %r14d                    #  275   0x61aad  3      
  movl $0x0, 0x18(%r15,%r14,1)         #  276   0x61ab0  9      
  nop                                  #  277   0x61ab9  1      
  jmpq .L_61720                        #  278   0x61aba  5      
  nop                                  #  279   0x61abf  1      
  nop                                  #  280   0x61ac0  1      
.L_61bc0:                              #        0x61ac1  0      
  leal 0x130(,%rdx,4), %edx            #  281   0x61ac1  7      
  orl %ecx, %eax                       #  282   0x61ac8  2      
  movl %eax, 0xffd4df4(%rip)           #  283   0x61aca  6      
  movslq %edx, %rax                    #  284   0x61ad0  3      
  addl $0x100368c0, %edx               #  285   0x61ad3  6      
  nop                                  #  286   0x61ad9  1      
  movl %eax, %eax                      #  287   0x61ada  2      
  movl %r14d, 0x100368c0(%r15,%rax,1)  #  288   0x61adc  8      
  movl %r14d, %r14d                    #  289   0x61ae4  3      
  movl %edx, 0x18(%r15,%r14,1)         #  290   0x61ae7  5      
  movl %r14d, %r14d                    #  291   0x61aec  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  292   0x61aef  5      
  nop                                  #  293   0x61af4  1      
  movl %r14d, %r14d                    #  294   0x61af5  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  295   0x61af8  5      
  jmpq .L_61720                        #  296   0x61afd  5      
  nop                                  #  297   0x61b02  1      
  nop                                  #  298   0x61b03  1      
.L_61c20:                              #        0x61b04  0      
  movl $0x0, 0xffd4dc6(%rip)           #  299   0x61b04  10     
  movl $0x0, 0xffd4db0(%rip)           #  300   0x61b0e  10     
  jmpq .L_61960                        #  301   0x61b18  5      
  nop                                  #  302   0x61b1d  1      
.L_61c40:                              #        0x61b1e  0      
  movl %r14d, %r14d                    #  303   0x61b1e  3      
  movl 0x14(%r15,%r14,1), %eax         #  304   0x61b21  5      
  leal 0x14(%r14), %esi                #  305   0x61b26  4      
  testq %rax, %rax                     #  306   0x61b2a  3      
  jne .L_61ca0                         #  307   0x61b2d  6      
  jmpq .L_61d80                        #  308   0x61b33  5      
  nop                                  #  309   0x61b38  1      
.L_61c60:                              #        0x61b39  0      
  leal 0x14(%rax), %esi                #  310   0x61b39  3      
  nop                                  #  311   0x61b3c  1      
  nop                                  #  312   0x61b3d  1      
.L_61c80:                              #        0x61b3e  0      
  movq %rcx, %rax                      #  313   0x61b3e  3      
  nop                                  #  314   0x61b41  1      
  nop                                  #  315   0x61b42  1      
.L_61ca0:                              #        0x61b43  0      
  movl %eax, %eax                      #  316   0x61b43  2      
  movl 0x14(%r15,%rax,1), %ecx         #  317   0x61b45  5      
  testq %rcx, %rcx                     #  318   0x61b4a  3      
  jne .L_61c60                         #  319   0x61b4d  6      
  movl %eax, %eax                      #  320   0x61b53  2      
  movl 0x10(%r15,%rax,1), %ecx         #  321   0x61b55  5      
  testq %rcx, %rcx                     #  322   0x61b5a  3      
  je .L_61cc0                          #  323   0x61b5d  6      
  leal 0x10(%rax), %esi                #  324   0x61b63  3      
  jmpq .L_61c80                        #  325   0x61b66  5      
  nop                                  #  326   0x61b6b  1      
.L_61cc0:                              #        0x61b6c  0      
  cmpl %esi, 0xffd4d5e(%rip)           #  327   0x61b6c  6      
  ja .L_61da0                          #  328   0x61b72  6      
  movl %esi, %esi                      #  329   0x61b78  2      
  movl $0x0, (%r15,%rsi,1)             #  330   0x61b7a  8      
  jmpq .L_61860                        #  331   0x61b82  5      
  nop                                  #  332   0x61b87  1      
.L_61ce0:                              #        0x61b88  0      
  cmpl %edi, 0xffd4d42(%rip)           #  333   0x61b88  6      
  ja .L_61da0                          #  334   0x61b8e  6      
  movl %edx, %edx                      #  335   0x61b94  2      
  movl %r14d, (%r15,%rdx,1)            #  336   0x61b96  4      
  movl %r14d, %r14d                    #  337   0x61b9a  3      
  movl %eax, 0x18(%r15,%r14,1)         #  338   0x61b9d  5      
  nop                                  #  339   0x61ba2  1      
  movl %r14d, %r14d                    #  340   0x61ba3  3      
  movl %r14d, 0xc(%r15,%r14,1)         #  341   0x61ba6  5      
  movl %r14d, %r14d                    #  342   0x61bab  3      
  movl %r14d, 0x8(%r15,%r14,1)         #  343   0x61bae  5      
  jmpq .L_61720                        #  344   0x61bb3  5      
  nop                                  #  345   0x61bb8  1      
.L_61d20:                              #        0x61bb9  0      
  testq %rax, %rax                     #  346   0x61bb9  3      
  movl %esi, %esi                      #  347   0x61bbc  2      
  movl %eax, 0x100368c0(%r15,%rsi,1)   #  348   0x61bbe  8      
  je .L_61d60                          #  349   0x61bc6  6      
  movl 0xffd4cfe(%rip), %ecx           #  350   0x61bcc  6      
  jmpq .L_618e0                        #  351   0x61bd2  5      
  nop                                  #  352   0x61bd7  1      
.L_61d40:                              #        0x61bd8  0      
  movl %r11d, %r11d                    #  353   0x61bd8  3      
  movl %eax, 0x10(%r15,%r11,1)         #  354   0x61bdb  5      
  jmpq .L_618c0                        #  355   0x61be0  5      
  nop                                  #  356   0x61be5  1      
  nop                                  #  357   0x61be6  1      
.L_61d60:                              #        0x61be7  0      
  movl $0x1, %eax                      #  358   0x61be7  5      
  shll %cl, %eax                       #  359   0x61bec  2      
  movl %eax, %ecx                      #  360   0x61bee  2      
  notl %ecx                            #  361   0x61bf0  2      
  andl %ecx, 0xffd4ccc(%rip)           #  362   0x61bf2  6      
  jmpq .L_61960                        #  363   0x61bf8  5      
  nop                                  #  364   0x61bfd  1      
.L_61d80:                              #        0x61bfe  0      
  movl %r14d, %r14d                    #  365   0x61bfe  3      
  movl 0x10(%r15,%r14,1), %eax         #  366   0x61c01  5      
  leal 0x10(%r14), %esi                #  367   0x61c06  4      
  testq %rax, %rax                     #  368   0x61c0a  3      
  jne .L_61ca0                         #  369   0x61c0d  6      
  jmpq .L_61860                        #  370   0x61c13  5      
  nop                                  #  371   0x61c18  1      
.L_61da0:                              #        0x61c19  0      
  nop                                  #  372   0x61c19  1      
  nop                                  #  373   0x61c1a  1      
  callq .abort                         #  374   0x61c1b  5      
                                                                
.size T_268, .-T_268

