  .text
  .globl search_object
  .type search_object, @function

#! file-offset 0x5f1c0
#! rip-offset  0x5f1c0
#! capacity    3392 bytes

# Text                                 #  Line  RIP      Bytes  
.search_object:                        #        0x5f1c0  0      
  pushq %r14                           #  1     0x5f1c0  3      
  movl %esi, %esi                      #  2     0x5f1c3  2      
  pushq %r13                           #  3     0x5f1c5  3      
  pushq %r12                           #  4     0x5f1c8  3      
  pushq %rbx                           #  5     0x5f1cb  2      
  movl %edi, %ebx                      #  6     0x5f1cd  2      
  subl $0x78, %esp                     #  7     0x5f1cf  3      
  addq %r15, %rsp                      #  8     0x5f1d2  3      
  movq %rsi, 0x40(%rsp)                #  9     0x5f1d5  5      
  movl %ebx, %ebx                      #  10    0x5f1da  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  11    0x5f1dc  6      
  testb $0x1, %al                      #  12    0x5f1e2  2      
  je .L_5f360                          #  13    0x5f1e4  6      
  nop                                  #  14    0x5f1ea  1      
  nop                                  #  15    0x5f1eb  1      
.L_5f200:                              #        0x5f1ec  0      
  testb $0x4, %al                      #  16    0x5f1ec  2      
  je .L_5f7a0                          #  17    0x5f1ee  6      
  movl %ebx, %ebx                      #  18    0x5f1f4  2      
  movl 0xc(%r15,%rbx,1), %eax          #  19    0x5f1f6  5      
  leal 0x68(%rsp), %ecx                #  20    0x5f1fb  4      
  leal 0x6c(%rsp), %r8d                #  21    0x5f1ff  5      
  movl $0x0, 0x10(%rsp)                #  22    0x5f204  8      
  movq %rbx, 0x30(%rsp)                #  23    0x5f20c  5      
  movq %rcx, 0x20(%rsp)                #  24    0x5f211  5      
  movq %r8, 0x28(%rsp)                 #  25    0x5f216  5      
  movl %eax, %eax                      #  26    0x5f21b  2      
  movl 0x4(%r15,%rax,1), %r14d         #  27    0x5f21d  5      
  movq %rax, 0x18(%rsp)                #  28    0x5f222  5      
  nop                                  #  29    0x5f227  1      
.L_5f240:                              #        0x5f228  0      
  cmpl %r14d, 0x10(%rsp)               #  30    0x5f228  5      
  jb .L_5f280                          #  31    0x5f22d  6      
  jmpq .L_5f880                        #  32    0x5f233  5      
  nop                                  #  33    0x5f238  1      
  nop                                  #  34    0x5f239  1      
.L_5f260:                              #        0x5f23a  0      
  cmpl 0x10(%rsp), %ebx                #  35    0x5f23a  4      
  jbe .L_5f880                         #  36    0x5f23e  6      
  movl %ebx, %r14d                     #  37    0x5f244  3      
  nop                                  #  38    0x5f247  1      
  nop                                  #  39    0x5f248  1      
.L_5f280:                              #        0x5f249  0      
  movl 0x10(%rsp), %eax                #  40    0x5f249  4      
  leal (%r14,%rax,1), %ebx             #  41    0x5f24d  4      
  shrl $0x1, %ebx                      #  42    0x5f251  2      
  leal (,%rbx,4), %eax                 #  43    0x5f253  7      
  cltq                                 #  44    0x5f25a  2      
  addq 0x18(%rsp), %rax                #  45    0x5f25c  5      
  movl %eax, %eax                      #  46    0x5f261  2      
  movl 0x8(%r15,%rax,1), %r12d         #  47    0x5f263  5      
  nop                                  #  48    0x5f268  1      
  movl %r12d, %edi                     #  49    0x5f269  3      
  movl %r12d, %r12d                    #  50    0x5f26c  3      
  subl 0x4(%r15,%r12,1), %edi          #  51    0x5f26f  5      
  addl $0x4, %edi                      #  52    0x5f274  3      
  nop                                  #  53    0x5f277  1      
  callq .get_cie_encoding              #  54    0x5f278  5      
  movl 0x30(%rsp), %esi                #  55    0x5f27d  4      
  movzbl %al, %r13d                    #  56    0x5f281  4      
  movl %r13d, %edi                     #  57    0x5f285  3      
  nop                                  #  58    0x5f288  1      
  nop                                  #  59    0x5f289  1      
  callq .base_from_object              #  60    0x5f28a  5      
  movl 0x20(%rsp), %ecx                #  61    0x5f28f  4      
  leal 0x8(%r12), %edx                 #  62    0x5f293  5      
  movl %eax, %esi                      #  63    0x5f298  2      
  movl %r13d, %edi                     #  64    0x5f29a  3      
  nop                                  #  65    0x5f29d  1      
  callq .read_encoded_value_with_base  #  66    0x5f29e  5      
  movl 0x28(%rsp), %ecx                #  67    0x5f2a3  4      
  movl %r13d, %edi                     #  68    0x5f2a7  3      
  xorl %esi, %esi                      #  69    0x5f2aa  2      
  andl $0xf, %edi                      #  70    0x5f2ac  3      
  movl %eax, %edx                      #  71    0x5f2af  2      
  nop                                  #  72    0x5f2b1  1      
  callq .read_encoded_value_with_base  #  73    0x5f2b2  5      
  movl 0x68(%rsp), %eax                #  74    0x5f2b7  4      
  cmpl 0x40(%rsp), %eax                #  75    0x5f2bb  4      
  ja .L_5f260                          #  76    0x5f2bf  6      
  addl 0x6c(%rsp), %eax                #  77    0x5f2c5  4      
  cmpl 0x40(%rsp), %eax                #  78    0x5f2c9  4      
  ja .L_5f780                          #  79    0x5f2cd  6      
  addl $0x1, %ebx                      #  80    0x5f2d3  3      
  nop                                  #  81    0x5f2d6  1      
  movl %ebx, 0x10(%rsp)                #  82    0x5f2d7  4      
  jmpq .L_5f240                        #  83    0x5f2db  5      
  nop                                  #  84    0x5f2e0  1      
  nop                                  #  85    0x5f2e1  1      
.L_5f360:                              #        0x5f2e2  0      
  movl %ebx, %ebx                      #  86    0x5f2e2  2      
  movl 0x10(%r15,%rbx,1), %edx         #  87    0x5f2e4  5      
  movl %edx, %ecx                      #  88    0x5f2e9  2      
  shrl $0xb, %ecx                      #  89    0x5f2eb  3      
  testl %ecx, %ecx                     #  90    0x5f2ee  2      
  movl %ecx, 0x54(%rsp)                #  91    0x5f2f0  4      
  je .L_5f640                          #  92    0x5f2f4  6      
  nop                                  #  93    0x5f2fa  1      
.L_5f380:                              #        0x5f2fb  0      
  movl 0x54(%rsp), %r8d                #  94    0x5f2fb  5      
  leal 0x8(,%r8,4), %r12d              #  95    0x5f300  8      
  movl %r12d, %edi                     #  96    0x5f308  3      
  nop                                  #  97    0x5f30b  1      
  callq .malloc                        #  98    0x5f30c  5      
  movl %eax, %eax                      #  99    0x5f311  2      
  testq %rax, %rax                     #  100   0x5f313  3      
  movl %eax, 0x60(%rsp)                #  101   0x5f316  4      
  je .L_5f720                          #  102   0x5f31a  6      
  movl %eax, %eax                      #  103   0x5f320  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  104   0x5f322  9      
  movl %r12d, %edi                     #  105   0x5f32b  3      
  nop                                  #  106   0x5f32e  1      
  nop                                  #  107   0x5f32f  1      
  nop                                  #  108   0x5f330  1      
  callq .malloc                        #  109   0x5f331  5      
  movl %eax, %eax                      #  110   0x5f336  2      
  testq %rax, %rax                     #  111   0x5f338  3      
  movl %eax, 0x64(%rsp)                #  112   0x5f33b  4      
  je .L_5f400                          #  113   0x5f33f  6      
  movl %eax, %eax                      #  114   0x5f345  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  115   0x5f347  9      
  nop                                  #  116   0x5f350  1      
.L_5f400:                              #        0x5f351  0      
  movl %ebx, %ebx                      #  117   0x5f351  2      
  testb $0x2, 0x10(%r15,%rbx,1)        #  118   0x5f353  6      
  je .L_5fd80                          #  119   0x5f359  6      
  movl %ebx, %ebx                      #  120   0x5f35f  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  121   0x5f361  5      
  movl %r12d, %r12d                    #  122   0x5f366  3      
  movl (%r15,%r12,1), %edx             #  123   0x5f369  4      
  testq %rdx, %rdx                     #  124   0x5f36d  3      
  nop                                  #  125   0x5f370  1      
  je .L_5f480                          #  126   0x5f371  6      
  leal 0x60(%rsp), %r13d               #  127   0x5f377  5      
  nop                                  #  128   0x5f37c  1      
  nop                                  #  129   0x5f37d  1      
.L_5f440:                              #        0x5f37e  0      
  addl $0x4, %r12d                     #  130   0x5f37e  4      
  movl %r13d, %esi                     #  131   0x5f382  3      
  movl %ebx, %edi                      #  132   0x5f385  2      
  nop                                  #  133   0x5f387  1      
  nop                                  #  134   0x5f388  1      
  callq .add_fdes                      #  135   0x5f389  5      
  movl %r12d, %r12d                    #  136   0x5f38e  3      
  movl (%r15,%r12,1), %edx             #  137   0x5f391  4      
  testq %rdx, %rdx                     #  138   0x5f395  3      
  jne .L_5f440                         #  139   0x5f398  6      
  nop                                  #  140   0x5f39e  1      
  nop                                  #  141   0x5f39f  1      
.L_5f480:                              #        0x5f3a0  0      
  movl 0x60(%rsp), %eax                #  142   0x5f3a0  4      
  testq %rax, %rax                     #  143   0x5f3a4  3      
  movq %rax, 0x38(%rsp)                #  144   0x5f3a7  5      
  je .L_5f4a0                          #  145   0x5f3ac  6      
  movl 0x54(%rsp), %edx                #  146   0x5f3b2  4      
  movl %eax, %eax                      #  147   0x5f3b6  2      
  cmpl 0x4(%r15,%rax,1), %edx          #  148   0x5f3b8  5      
  jne .L_5fee0                         #  149   0x5f3bd  6      
  nop                                  #  150   0x5f3c3  1      
.L_5f4a0:                              #        0x5f3c4  0      
  movl %ebx, %ebx                      #  151   0x5f3c4  2      
  testb $0x4, 0x10(%r15,%rbx,1)        #  152   0x5f3c6  6      
  leal -0x72f(%rip), %r12d             #  153   0x5f3cc  7      
  jne .L_5f4e0                         #  154   0x5f3d3  6      
  movl %ebx, %ebx                      #  155   0x5f3d9  2      
  testw $0x7f8, 0x10(%r15,%rbx,1)      #  156   0x5f3db  8      
  nop                                  #  157   0x5f3e3  1      
  leal -0x827(%rip), %r12d             #  158   0x5f3e4  7      
  leal -0x15cd(%rip), %eax             #  159   0x5f3eb  6      
  cmoveq %rax, %r12                    #  160   0x5f3f1  4      
  nop                                  #  161   0x5f3f5  1      
.L_5f4e0:                              #        0x5f3f6  0      
  movl 0x64(%rsp), %ecx                #  162   0x5f3f6  4      
  testq %rcx, %rcx                     #  163   0x5f3fa  3      
  movq %rcx, 0x10(%rsp)                #  164   0x5f3fd  5      
  je .L_5fea0                          #  165   0x5f402  6      
  movq 0x38(%rsp), %r8                 #  166   0x5f408  5      
  movl %r8d, %r8d                      #  167   0x5f40d  3      
  movl 0x4(%r15,%r8,1), %r8d           #  168   0x5f410  5      
  nop                                  #  169   0x5f415  1      
  testl %r8d, %r8d                     #  170   0x5f416  3      
  movl %r8d, 0x48(%rsp)                #  171   0x5f419  5      
  je .L_5fe60                          #  172   0x5f41e  6      
  movl 0x38(%rsp), %eax                #  173   0x5f424  4      
  movl 0x10(%rsp), %edx                #  174   0x5f428  4      
  leal 0xffd7337(%rip), %r13d          #  175   0x5f42c  7      
  nop                                  #  176   0x5f433  1      
  movl 0x38(%rsp), %ecx                #  177   0x5f434  4      
  addl $0x8, %eax                      #  178   0x5f438  3      
  movl %edx, 0x5c(%rsp)                #  179   0x5f43b  4      
  movl %edx, 0x28(%rsp)                #  180   0x5f43f  4      
  movl %eax, 0x18(%rsp)                #  181   0x5f443  4      
  movl %ecx, 0x58(%rsp)                #  182   0x5f447  4      
  xorl %eax, %eax                      #  183   0x5f44b  2      
  movl %ecx, 0x30(%rsp)                #  184   0x5f44d  4      
  nop                                  #  185   0x5f451  1      
.L_5f540:                              #        0x5f452  0      
  leal 0x1(%rax), %ecx                 #  186   0x5f452  3      
  movl 0x28(%rsp), %edx                #  187   0x5f455  4      
  cmpl %ecx, 0x48(%rsp)                #  188   0x5f459  4      
  movl %ecx, 0x20(%rsp)                #  189   0x5f45d  4      
  movl %edx, %edx                      #  190   0x5f461  2      
  movl %r13d, 0x8(%r15,%rdx,1)         #  191   0x5f463  5      
  jbe .L_5fa40                         #  192   0x5f468  6      
  nop                                  #  193   0x5f46e  1      
  movl 0x38(%rsp), %r8d                #  194   0x5f46f  5      
  leal 0x8(%r8,%rax,4), %r13d          #  195   0x5f474  5      
  leal 0xffd72e4(%rip), %eax           #  196   0x5f479  6      
  cmpl %eax, %r13d                     #  197   0x5f47f  3      
  je .L_5f620                          #  198   0x5f482  6      
  movl 0x30(%rsp), %r14d               #  199   0x5f488  5      
  xchgw %ax, %ax                       #  200   0x5f48d  3      
  addq $0xc, %r14                      #  201   0x5f490  4      
  jmpq .L_5f5e0                        #  202   0x5f494  5      
  nop                                  #  203   0x5f499  1      
  nop                                  #  204   0x5f49a  1      
.L_5f5a0:                              #        0x5f49b  0      
  subl 0x18(%rsp), %r13d               #  205   0x5f49b  5      
  movq 0x10(%rsp), %rax                #  206   0x5f4a0  5      
  leal 0xffd72a4(%rip), %edx           #  207   0x5f4a5  6      
  andl $0xfffffffc, %r13d              #  208   0x5f4ab  7      
  movslq %r13d, %r13                   #  209   0x5f4b2  3      
  addq %r13, %rax                      #  210   0x5f4b5  3      
  nop                                  #  211   0x5f4b8  1      
  movl %eax, %eax                      #  212   0x5f4b9  2      
  movl 0x8(%r15,%rax,1), %r13d         #  213   0x5f4bb  5      
  movl %eax, %eax                      #  214   0x5f4c0  2      
  movl $0x0, 0x8(%r15,%rax,1)          #  215   0x5f4c2  9      
  cmpl %edx, %r13d                     #  216   0x5f4cb  3      
  je .L_5f620                          #  217   0x5f4ce  6      
  nop                                  #  218   0x5f4d4  1      
.L_5f5e0:                              #        0x5f4d5  0      
  movl %r13d, %r13d                    #  219   0x5f4d5  3      
  movl (%r15,%r13,1), %edx             #  220   0x5f4d8  4      
  movl %r14d, %r14d                    #  221   0x5f4dc  3      
  movl (%r15,%r14,1), %esi             #  222   0x5f4df  4      
  movl %ebx, %edi                      #  223   0x5f4e3  2      
  nop                                  #  224   0x5f4e5  1      
  andl $0xffffffe0, %r12d              #  225   0x5f4e6  7      
  addq %r15, %r12                      #  226   0x5f4ed  3      
  callq %r12                           #  227   0x5f4f0  3      
  testl %eax, %eax                     #  228   0x5f4f3  2      
  js .L_5f5a0                          #  229   0x5f4f5  6      
  nop                                  #  230   0x5f4fb  1      
  nop                                  #  231   0x5f4fc  1      
.L_5f620:                              #        0x5f4fd  0      
  addl $0x4, 0x28(%rsp)                #  232   0x5f4fd  5      
  addl $0x4, 0x30(%rsp)                #  233   0x5f502  5      
  movl 0x20(%rsp), %eax                #  234   0x5f507  4      
  jmpq .L_5f540                        #  235   0x5f50b  5      
  nop                                  #  236   0x5f510  1      
.L_5f640:                              #        0x5f511  0      
  testb $0x2, %al                      #  237   0x5f511  2      
  je .L_5f8a0                          #  238   0x5f513  6      
  movl %ebx, %ebx                      #  239   0x5f519  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  240   0x5f51b  5      
  movl %r12d, %r12d                    #  241   0x5f520  3      
  movl (%r15,%r12,1), %esi             #  242   0x5f523  4      
  testq %rsi, %rsi                     #  243   0x5f527  3      
  je .L_5fe80                          #  244   0x5f52a  6      
  nop                                  #  245   0x5f530  1      
  movl %ecx, %r13d                     #  246   0x5f531  3      
  nop                                  #  247   0x5f534  1      
  nop                                  #  248   0x5f535  1      
.L_5f680:                              #        0x5f536  0      
  addl $0x4, %r12d                     #  249   0x5f536  4      
  movl %ebx, %edi                      #  250   0x5f53a  2      
  nop                                  #  251   0x5f53c  1      
  nop                                  #  252   0x5f53d  1      
  callq .classify_object_over_fdes     #  253   0x5f53e  5      
  movl %r12d, %r12d                    #  254   0x5f543  3      
  movl (%r15,%r12,1), %esi             #  255   0x5f546  4      
  addl %eax, %r13d                     #  256   0x5f54a  3      
  testq %rsi, %rsi                     #  257   0x5f54d  3      
  jne .L_5f680                         #  258   0x5f550  6      
  movl %r13d, 0x54(%rsp)               #  259   0x5f556  5      
  nop                                  #  260   0x5f55b  1      
.L_5f6c0:                              #        0x5f55c  0      
  movl 0x54(%rsp), %edx                #  261   0x5f55c  4      
  movl %ebx, %ebx                      #  262   0x5f560  2      
  movl 0x10(%r15,%rbx,1), %eax         #  263   0x5f562  5      
  andl $0x1fffff, %edx                 #  264   0x5f567  6      
  andl $0x7ff, %eax                    #  265   0x5f56d  5      
  movl %edx, %ecx                      #  266   0x5f572  2      
  shll $0xb, %ecx                      #  267   0x5f574  3      
  orl %ecx, %eax                       #  268   0x5f577  2      
  nop                                  #  269   0x5f579  1      
  movl %ebx, %ebx                      #  270   0x5f57a  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  271   0x5f57c  5      
  cmpl %edx, 0x54(%rsp)                #  272   0x5f581  4      
  je .L_5f700                          #  273   0x5f585  6      
  andl $0x7ff, %eax                    #  274   0x5f58b  5      
  movl %ebx, %ebx                      #  275   0x5f590  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  276   0x5f592  5      
  nop                                  #  277   0x5f597  1      
.L_5f700:                              #        0x5f598  0      
  movl 0x54(%rsp), %r9d                #  278   0x5f598  5      
  testl %r9d, %r9d                     #  279   0x5f59d  3      
  jne .L_5f380                         #  280   0x5f5a0  6      
  nop                                  #  281   0x5f5a6  1      
  nop                                  #  282   0x5f5a7  1      
.L_5f720:                              #        0x5f5a8  0      
  movl 0x40(%rsp), %r8d                #  283   0x5f5a8  5      
  movl %ebx, %ebx                      #  284   0x5f5ad  2      
  cmpl %r8d, (%r15,%rbx,1)             #  285   0x5f5af  4      
  ja .L_5f880                          #  286   0x5f5b3  6      
  movl %ebx, %ebx                      #  287   0x5f5b9  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  288   0x5f5bb  6      
  testb $0x1, %al                      #  289   0x5f5c1  2      
  nop                                  #  290   0x5f5c3  1      
  jne .L_5f200                         #  291   0x5f5c4  6      
  testb $0x2, %al                      #  292   0x5f5ca  2      
  jne .L_5fdc0                         #  293   0x5f5cc  6      
  movl %ebx, %ebx                      #  294   0x5f5d2  2      
  movl 0xc(%r15,%rbx,1), %esi          #  295   0x5f5d4  5      
  movl 0x40(%rsp), %edx                #  296   0x5f5d9  4      
  movl %ebx, %edi                      #  297   0x5f5dd  2      
  callq .linear_search_fdes            #  298   0x5f5df  5      
  movl %eax, %r12d                     #  299   0x5f5e4  3      
  nop                                  #  300   0x5f5e7  1      
  nop                                  #  301   0x5f5e8  1      
.L_5f780:                              #        0x5f5e9  0      
  addl $0x78, %esp                     #  302   0x5f5e9  3      
  addq %r15, %rsp                      #  303   0x5f5ec  3      
  movl %r12d, %eax                     #  304   0x5f5ef  3      
  popq %rbx                            #  305   0x5f5f2  2      
  popq %r12                            #  306   0x5f5f4  3      
  popq %r13                            #  307   0x5f5f7  3      
  popq %r14                            #  308   0x5f5fa  3      
  popq %r11                            #  309   0x5f5fd  3      
  andl $0xffffffe0, %r11d              #  310   0x5f600  7      
  addq %r15, %r11                      #  311   0x5f607  3      
  jmpq %r11                            #  312   0x5f60a  3      
  nop                                  #  313   0x5f60d  1      
.L_5f7a0:                              #        0x5f60e  0      
  movl %ebx, %ebx                      #  314   0x5f60e  2      
  movzwl 0x10(%r15,%rbx,1), %eax       #  315   0x5f610  6      
  testw $0x7f8, %ax                    #  316   0x5f616  4      
  jne .L_5f8e0                         #  317   0x5f61a  6      
  movl %ebx, %ebx                      #  318   0x5f620  2      
  movl 0xc(%r15,%rbx,1), %edi          #  319   0x5f622  5      
  movq 0x40(%rsp), %r8                 #  320   0x5f627  5      
  xorl %ecx, %ecx                      #  321   0x5f62c  2      
  movl %edi, %edi                      #  322   0x5f62e  2      
  movl 0x4(%r15,%rdi,1), %esi          #  323   0x5f630  5      
  nop                                  #  324   0x5f635  1      
  nop                                  #  325   0x5f636  1      
.L_5f7e0:                              #        0x5f637  0      
  cmpl %esi, %ecx                      #  326   0x5f637  2      
  jae .L_5f880                         #  327   0x5f639  6      
  leal (%rsi,%rcx,1), %eax             #  328   0x5f63f  3      
  jmpq .L_5f820                        #  329   0x5f642  5      
  nop                                  #  330   0x5f647  1      
  nop                                  #  331   0x5f648  1      
.L_5f800:                              #        0x5f649  0      
  cmpl %eax, %ecx                      #  332   0x5f649  2      
  movl %eax, %esi                      #  333   0x5f64b  2      
  jae .L_5f880                         #  334   0x5f64d  6      
  addl %ecx, %eax                      #  335   0x5f653  2      
  nop                                  #  336   0x5f655  1      
  nop                                  #  337   0x5f656  1      
.L_5f820:                              #        0x5f657  0      
  shrl $0x1, %eax                      #  338   0x5f657  2      
  leal (,%rax,4), %edx                 #  339   0x5f659  7      
  movslq %edx, %rdx                    #  340   0x5f660  3      
  leaq (%rdi,%rdx,1), %rdx             #  341   0x5f663  4      
  movl %edx, %edx                      #  342   0x5f667  2      
  movl 0x8(%r15,%rdx,1), %r12d         #  343   0x5f669  5      
  leal 0x8(%r12), %edx                 #  344   0x5f66e  5      
  nop                                  #  345   0x5f673  1      
  movl %edx, %edx                      #  346   0x5f674  2      
  movl (%r15,%rdx,1), %ebx             #  347   0x5f676  4      
  movl %edx, %edx                      #  348   0x5f67a  2      
  movl 0x4(%r15,%rdx,1), %edx          #  349   0x5f67c  5      
  cmpl %ebx, %r8d                      #  350   0x5f681  3      
  jb .L_5f800                          #  351   0x5f684  6      
  addl %ebx, %edx                      #  352   0x5f68a  2      
  cmpl %r8d, %edx                      #  353   0x5f68c  3      
  ja .L_5f780                          #  354   0x5f68f  6      
  leal 0x1(%rax), %ecx                 #  355   0x5f695  3      
  jmpq .L_5f7e0                        #  356   0x5f698  5      
  nop                                  #  357   0x5f69d  1      
  nop                                  #  358   0x5f69e  1      
.L_5f880:                              #        0x5f69f  0      
  xorl %r12d, %r12d                    #  359   0x5f69f  3      
  jmpq .L_5f780                        #  360   0x5f6a2  5      
  nop                                  #  361   0x5f6a7  1      
  nop                                  #  362   0x5f6a8  1      
.L_5f8a0:                              #        0x5f6a9  0      
  movl %ebx, %ebx                      #  363   0x5f6a9  2      
  movl 0xc(%r15,%rbx,1), %esi          #  364   0x5f6ab  5      
  movl %ebx, %edi                      #  365   0x5f6b0  2      
  nop                                  #  366   0x5f6b2  1      
  nop                                  #  367   0x5f6b3  1      
  callq .classify_object_over_fdes     #  368   0x5f6b4  5      
  movl %eax, 0x54(%rsp)                #  369   0x5f6b9  4      
  jmpq .L_5f6c0                        #  370   0x5f6bd  5      
  nop                                  #  371   0x5f6c2  1      
  nop                                  #  372   0x5f6c3  1      
.L_5f8e0:                              #        0x5f6c4  0      
  movl %ebx, %ebx                      #  373   0x5f6c4  2      
  movl 0xc(%r15,%rbx,1), %edx          #  374   0x5f6c6  5      
  shrw $0x3, %ax                       #  375   0x5f6cb  4      
  movl %ebx, %esi                      #  376   0x5f6cf  2      
  movzbl %al, %eax                     #  377   0x5f6d1  3      
  xorl %r14d, %r14d                    #  378   0x5f6d4  3      
  movl %eax, %edi                      #  379   0x5f6d7  2      
  movl %eax, 0x10(%rsp)                #  380   0x5f6d9  4      
  movq %rdx, 0x18(%rsp)                #  381   0x5f6dd  5      
  xchgw %ax, %ax                       #  382   0x5f6e2  3      
  nop                                  #  383   0x5f6e5  1      
  nop                                  #  384   0x5f6e6  1      
  callq .base_from_object              #  385   0x5f6e7  5      
  movq 0x18(%rsp), %rcx                #  386   0x5f6ec  5      
  movl 0x10(%rsp), %r8d                #  387   0x5f6f1  5      
  leal 0x68(%rsp), %edx                #  388   0x5f6f6  4      
  movl %eax, 0x20(%rsp)                #  389   0x5f6fa  4      
  movq %rdx, 0x30(%rsp)                #  390   0x5f6fe  5      
  movl %ecx, %ecx                      #  391   0x5f703  2      
  movl 0x4(%r15,%rcx,1), %r13d         #  392   0x5f705  5      
  xchgw %ax, %ax                       #  393   0x5f70a  3      
  leal 0x6c(%rsp), %ecx                #  394   0x5f70d  4      
  andl $0xf, %r8d                      #  395   0x5f711  4      
  movl %r8d, 0x28(%rsp)                #  396   0x5f715  5      
  movq %rcx, 0x38(%rsp)                #  397   0x5f71a  5      
  nop                                  #  398   0x5f71f  1      
.L_5f960:                              #        0x5f720  0      
  cmpl %r13d, %r14d                    #  399   0x5f720  3      
  jb .L_5f9a0                          #  400   0x5f723  6      
  jmpq .L_5f880                        #  401   0x5f729  5      
  nop                                  #  402   0x5f72e  1      
  nop                                  #  403   0x5f72f  1      
.L_5f980:                              #        0x5f730  0      
  cmpl %r14d, %ebx                     #  404   0x5f730  3      
  jbe .L_5f880                         #  405   0x5f733  6      
  movl %ebx, %r13d                     #  406   0x5f739  3      
  nop                                  #  407   0x5f73c  1      
  nop                                  #  408   0x5f73d  1      
.L_5f9a0:                              #        0x5f73e  0      
  leal (%r13,%r14,1), %ebx             #  409   0x5f73e  5      
  movl 0x38(%rsp), %ecx                #  410   0x5f743  4      
  movl 0x20(%rsp), %esi                #  411   0x5f747  4      
  movl 0x10(%rsp), %edi                #  412   0x5f74b  4      
  shrl $0x1, %ebx                      #  413   0x5f74f  2      
  leal (,%rbx,4), %eax                 #  414   0x5f751  7      
  cltq                                 #  415   0x5f758  2      
  nop                                  #  416   0x5f75a  1      
  addq 0x18(%rsp), %rax                #  417   0x5f75b  5      
  movl %eax, %eax                      #  418   0x5f760  2      
  movl 0x8(%r15,%rax,1), %r12d         #  419   0x5f762  5      
  leal 0x8(%r12), %edx                 #  420   0x5f767  5      
  nop                                  #  421   0x5f76c  1      
  callq .read_encoded_value_with_base  #  422   0x5f76d  5      
  movl 0x30(%rsp), %ecx                #  423   0x5f772  4      
  movl 0x28(%rsp), %edi                #  424   0x5f776  4      
  xorl %esi, %esi                      #  425   0x5f77a  2      
  movl %eax, %edx                      #  426   0x5f77c  2      
  nop                                  #  427   0x5f77e  1      
  callq .read_encoded_value_with_base  #  428   0x5f77f  5      
  movl 0x6c(%rsp), %eax                #  429   0x5f784  4      
  cmpl 0x40(%rsp), %eax                #  430   0x5f788  4      
  ja .L_5f980                          #  431   0x5f78c  6      
  addl 0x68(%rsp), %eax                #  432   0x5f792  4      
  cmpl 0x40(%rsp), %eax                #  433   0x5f796  4      
  ja .L_5f780                          #  434   0x5f79a  6      
  leal 0x1(%rbx), %r14d                #  435   0x5f7a0  4      
  jmpq .L_5f960                        #  436   0x5f7a4  5      
  nop                                  #  437   0x5f7a9  1      
  nop                                  #  438   0x5f7aa  1      
.L_5fa40:                              #        0x5f7ab  0      
  xorl %edi, %edi                      #  439   0x5f7ab  2      
  xorl %ecx, %ecx                      #  440   0x5f7ad  2      
  xorl %eax, %eax                      #  441   0x5f7af  2      
  movq 0x38(%rsp), %r11                #  442   0x5f7b1  5      
  movl 0x58(%rsp), %esi                #  443   0x5f7b6  4      
  movl 0x5c(%rsp), %edx                #  444   0x5f7ba  4      
  movl 0x48(%rsp), %r10d               #  445   0x5f7be  5      
  jmpq .L_5faa0                        #  446   0x5f7c3  5      
  nop                                  #  447   0x5f7c8  1      
.L_5fa60:                              #        0x5f7c9  0      
  leal (,%rcx,4), %r8d                 #  448   0x5f7c9  8      
  movl %esi, %r9d                      #  449   0x5f7d1  3      
  addl $0x1, %eax                      #  450   0x5f7d4  3      
  movl %r9d, %r9d                      #  451   0x5f7d7  3      
  movl 0x8(%r15,%r9,1), %r9d           #  452   0x5f7da  5      
  addl $0x1, %ecx                      #  453   0x5f7df  3      
  addl $0x4, %edx                      #  454   0x5f7e2  3      
  movslq %r8d, %r8                     #  455   0x5f7e5  3      
  nop                                  #  456   0x5f7e8  1      
  addl $0x4, %esi                      #  457   0x5f7e9  3      
  cmpl %eax, %r10d                     #  458   0x5f7ec  3      
  leaq (%r11,%r8,1), %r8               #  459   0x5f7ef  4      
  movl %r8d, %r8d                      #  460   0x5f7f3  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  461   0x5f7f6  5      
  jbe .L_5fb00                         #  462   0x5f7fb  6      
  nop                                  #  463   0x5f801  1      
.L_5faa0:                              #        0x5f802  0      
  movl %edx, %r8d                      #  464   0x5f802  3      
  movl %r8d, %r8d                      #  465   0x5f805  3      
  movl 0x8(%r15,%r8,1), %r8d           #  466   0x5f808  5      
  testl %r8d, %r8d                     #  467   0x5f80d  3      
  jne .L_5fa60                         #  468   0x5f810  6      
  leal (,%rdi,4), %r8d                 #  469   0x5f816  8      
  movl %esi, %r9d                      #  470   0x5f81e  3      
  addl $0x1, %eax                      #  471   0x5f821  3      
  xchgw %ax, %ax                       #  472   0x5f824  3      
  movl %r9d, %r9d                      #  473   0x5f827  3      
  movl 0x8(%r15,%r9,1), %r9d           #  474   0x5f82a  5      
  addl $0x1, %edi                      #  475   0x5f82f  3      
  addl $0x4, %edx                      #  476   0x5f832  3      
  movslq %r8d, %r8                     #  477   0x5f835  3      
  addq 0x10(%rsp), %r8                 #  478   0x5f838  5      
  addl $0x4, %esi                      #  479   0x5f83d  3      
  cmpl %eax, %r10d                     #  480   0x5f840  3      
  nop                                  #  481   0x5f843  1      
  movl %r8d, %r8d                      #  482   0x5f844  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  483   0x5f847  5      
  ja .L_5faa0                          #  484   0x5f84c  6      
  nop                                  #  485   0x5f852  1      
  nop                                  #  486   0x5f853  1      
.L_5fb00:                              #        0x5f854  0      
  movl 0x60(%rsp), %esi                #  487   0x5f854  4      
  movl 0x64(%rsp), %edx                #  488   0x5f858  4      
  nop                                  #  489   0x5f85c  1      
  nop                                  #  490   0x5f85d  1      
.L_5fb20:                              #        0x5f85e  0      
  movq 0x10(%rsp), %rax                #  491   0x5f85e  5      
  movq 0x38(%rsp), %r8                 #  492   0x5f863  5      
  movl %r8d, %r8d                      #  493   0x5f868  3      
  movl %ecx, 0x4(%r15,%r8,1)           #  494   0x5f86b  5      
  movl %eax, %eax                      #  495   0x5f870  2      
  movl %edi, 0x4(%r15,%rax,1)          #  496   0x5f872  5      
  movl %edx, %edx                      #  497   0x5f877  2      
  movl 0x4(%r15,%rdx,1), %eax          #  498   0x5f879  5      
  movl %esi, %esi                      #  499   0x5f87e  2      
  addl 0x4(%r15,%rsi,1), %eax          #  500   0x5f880  5      
  cmpl %eax, 0x54(%rsp)                #  501   0x5f885  4      
  jne .L_5fee0                         #  502   0x5f889  6      
  movl %r12d, %esi                     #  503   0x5f88f  3      
  movl %ebx, %edi                      #  504   0x5f892  2      
  nop                                  #  505   0x5f894  1      
  callq .frame_heapsort                #  506   0x5f895  5      
  movl 0x64(%rsp), %edx                #  507   0x5f89a  4      
  movl 0x60(%rsp), %ecx                #  508   0x5f89e  4      
  movl %edx, %edx                      #  509   0x5f8a2  2      
  movl 0x4(%r15,%rdx,1), %r9d          #  510   0x5f8a4  5      
  movq %rdx, 0x48(%rsp)                #  511   0x5f8a9  5      
  movq %rcx, 0x30(%rsp)                #  512   0x5f8ae  5      
  testl %r9d, %r9d                     #  513   0x5f8b3  3      
  nop                                  #  514   0x5f8b6  1      
  je .L_5fd20                          #  515   0x5f8b7  6      
  leal 0x4(%rdx,%r9,4), %eax           #  516   0x5f8bd  5      
  movl %ecx, %ecx                      #  517   0x5f8c2  2      
  movl 0x4(%r15,%rcx,1), %ecx          #  518   0x5f8c4  5      
  movq %r12, 0x20(%rsp)                #  519   0x5f8c9  5      
  movq %rbx, 0x18(%rsp)                #  520   0x5f8ce  5      
  movl %eax, 0x38(%rsp)                #  521   0x5f8d3  4      
.L_5fba0:                              #        0x5f8d7  0      
  movl 0x38(%rsp), %eax                #  522   0x5f8d7  4      
  leal -0x1(%r9), %edx                 #  523   0x5f8db  4      
  testl %ecx, %ecx                     #  524   0x5f8df  2      
  movl %edx, 0x28(%rsp)                #  525   0x5f8e1  4      
  movl %eax, %eax                      #  526   0x5f8e5  2      
  movl (%r15,%rax,1), %eax             #  527   0x5f8e7  4      
  movq %rax, 0x10(%rsp)                #  528   0x5f8eb  5      
  je .L_5fc80                          #  529   0x5f8f0  6      
  nop                                  #  530   0x5f8f6  1      
  movl 0x30(%rsp), %r8d                #  531   0x5f8f7  5      
  leal 0x3fffffff(%rcx,%r9,1), %r9d    #  532   0x5f8fc  8      
  movl %r8d, %eax                      #  533   0x5f904  3      
  leal 0x4(%r8,%rcx,4), %r12d          #  534   0x5f907  5      
  leal 0x8(%rax,%r9,4), %r14d          #  535   0x5f90c  5      
  jmpq .L_5fc20                        #  536   0x5f911  5      
  nop                                  #  537   0x5f916  1      
.L_5fbe0:                              #        0x5f917  0      
  movl %r13d, %r13d                    #  538   0x5f917  3      
  movl (%r15,%r13,1), %edx             #  539   0x5f91a  4      
  movl %r14d, %eax                     #  540   0x5f91e  3      
  subl $0x4, %r12d                     #  541   0x5f921  4      
  subl $0x4, %r14d                     #  542   0x5f925  4      
  testl %ebx, %ebx                     #  543   0x5f929  2      
  movl %eax, %eax                      #  544   0x5f92b  2      
  movl %edx, (%r15,%rax,1)             #  545   0x5f92d  4      
  je .L_5fca0                          #  546   0x5f931  6      
  movl %ebx, %ecx                      #  547   0x5f937  2      
  nop                                  #  548   0x5f939  1      
  nop                                  #  549   0x5f93a  1      
.L_5fc20:                              #        0x5f93b  0      
  movl %r12d, %r13d                    #  550   0x5f93b  3      
  leal -0x1(%rcx), %ebx                #  551   0x5f93e  3      
  movl %ecx, 0x8(%rsp)                 #  552   0x5f941  4      
  movl 0x10(%rsp), %edx                #  553   0x5f945  4      
  movl %r13d, %r13d                    #  554   0x5f949  3      
  movl (%r15,%r13,1), %esi             #  555   0x5f94c  4      
  movl 0x18(%rsp), %edi                #  556   0x5f950  4      
  movq 0x20(%rsp), %r8                 #  557   0x5f954  5      
  xchgw %ax, %ax                       #  558   0x5f959  3      
  nop                                  #  559   0x5f95c  1      
  nop                                  #  560   0x5f95d  1      
  andl $0xffffffe0, %r8d               #  561   0x5f95e  7      
  addq %r15, %r8                       #  562   0x5f965  3      
  callq %r8                            #  563   0x5f968  3      
  testl %eax, %eax                     #  564   0x5f96b  2      
  movl 0x8(%rsp), %ecx                 #  565   0x5f96d  4      
  jg .L_5fbe0                          #  566   0x5f971  6      
  nop                                  #  567   0x5f977  1      
  nop                                  #  568   0x5f978  1      
.L_5fc80:                              #        0x5f979  0      
  movl %ecx, %ebx                      #  569   0x5f979  2      
  nop                                  #  570   0x5f97b  1      
  nop                                  #  571   0x5f97c  1      
.L_5fca0:                              #        0x5f97d  0      
  movl 0x28(%rsp), %edx                #  572   0x5f97d  4      
  movl 0x10(%rsp), %ecx                #  573   0x5f981  4      
  subl $0x4, 0x38(%rsp)                #  574   0x5f985  5      
  leal (%rbx,%rdx,1), %eax             #  575   0x5f98a  3      
  shll $0x2, %eax                      #  576   0x5f98d  3      
  cltq                                 #  577   0x5f990  2      
  addq 0x30(%rsp), %rax                #  578   0x5f992  5      
  testl %edx, %edx                     #  579   0x5f997  2      
  nop                                  #  580   0x5f999  1      
  movl %eax, %eax                      #  581   0x5f99a  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  582   0x5f99c  5      
  je .L_5fce0                          #  583   0x5f9a1  6      
  movl %edx, %r9d                      #  584   0x5f9a7  3      
  movl %ebx, %ecx                      #  585   0x5f9aa  2      
  jmpq .L_5fba0                        #  586   0x5f9ac  5      
  nop                                  #  587   0x5f9b1  1      
.L_5fce0:                              #        0x5f9b2  0      
  movq 0x48(%rsp), %r8                 #  588   0x5f9b2  5      
  movq 0x30(%rsp), %rdx                #  589   0x5f9b7  5      
  movl 0x64(%rsp), %ecx                #  590   0x5f9bc  4      
  movq 0x18(%rsp), %rbx                #  591   0x5f9c0  5      
  movl %r8d, %r8d                      #  592   0x5f9c5  3      
  movl 0x4(%r15,%r8,1), %eax           #  593   0x5f9c8  5      
  nop                                  #  594   0x5f9cd  1      
  movl %edx, %edx                      #  595   0x5f9ce  2      
  addl %eax, 0x4(%r15,%rdx,1)          #  596   0x5f9d0  5      
  movq %rcx, 0x48(%rsp)                #  597   0x5f9d5  5      
  nop                                  #  598   0x5f9da  1      
  nop                                  #  599   0x5f9db  1      
.L_5fd20:                              #        0x5f9dc  0      
  movl 0x48(%rsp), %edi                #  600   0x5f9dc  4      
  nop                                  #  601   0x5f9e0  1      
  nop                                  #  602   0x5f9e1  1      
  callq .free                          #  603   0x5f9e2  5      
.L_5fd40:                              #        0x5f9e7  0      
  movl 0x60(%rsp), %eax                #  604   0x5f9e7  4      
  movl %ebx, %ebx                      #  605   0x5f9eb  2      
  movl 0xc(%r15,%rbx,1), %edx          #  606   0x5f9ed  5      
  movl %eax, %eax                      #  607   0x5f9f2  2      
  movl %edx, (%r15,%rax,1)             #  608   0x5f9f4  4      
  movl %ebx, %ebx                      #  609   0x5f9f8  2      
  movl %eax, 0xc(%r15,%rbx,1)          #  610   0x5f9fa  5      
  movl %ebx, %ebx                      #  611   0x5f9ff  2      
  orb $0x1, 0x10(%r15,%rbx,1)          #  612   0x5fa01  6      
  jmpq .L_5f720                        #  613   0x5fa07  5      
  nop                                  #  614   0x5fa0c  1      
  nop                                  #  615   0x5fa0d  1      
.L_5fd80:                              #        0x5fa0e  0      
  movl %ebx, %ebx                      #  616   0x5fa0e  2      
  movl 0xc(%r15,%rbx,1), %edx          #  617   0x5fa10  5      
  leal 0x60(%rsp), %esi                #  618   0x5fa15  4      
  movl %ebx, %edi                      #  619   0x5fa19  2      
  nop                                  #  620   0x5fa1b  1      
  callq .add_fdes                      #  621   0x5fa1c  5      
  jmpq .L_5f480                        #  622   0x5fa21  5      
  nop                                  #  623   0x5fa26  1      
  nop                                  #  624   0x5fa27  1      
.L_5fdc0:                              #        0x5fa28  0      
  movl %ebx, %ebx                      #  625   0x5fa28  2      
  movl 0xc(%r15,%rbx,1), %r13d         #  626   0x5fa2a  5      
  movl %r13d, %r13d                    #  627   0x5fa2f  3      
  movl (%r15,%r13,1), %esi             #  628   0x5fa32  4      
  testq %rsi, %rsi                     #  629   0x5fa36  3      
  je .L_5f880                          #  630   0x5fa39  6      
  movq 0x40(%rsp), %r14                #  631   0x5fa3f  5      
  nop                                  #  632   0x5fa44  1      
  jmpq .L_5fe20                        #  633   0x5fa45  5      
  nop                                  #  634   0x5fa4a  1      
  nop                                  #  635   0x5fa4b  1      
.L_5fe00:                              #        0x5fa4c  0      
  addl $0x4, %r13d                     #  636   0x5fa4c  4      
  movl %r13d, %r13d                    #  637   0x5fa50  3      
  movl (%r15,%r13,1), %esi             #  638   0x5fa53  4      
  testq %rsi, %rsi                     #  639   0x5fa57  3      
  je .L_5f780                          #  640   0x5fa5a  6      
  nop                                  #  641   0x5fa60  1      
.L_5fe20:                              #        0x5fa61  0      
  movl %r14d, %edx                     #  642   0x5fa61  3      
  movl %ebx, %edi                      #  643   0x5fa64  2      
  nop                                  #  644   0x5fa66  1      
  nop                                  #  645   0x5fa67  1      
  callq .linear_search_fdes            #  646   0x5fa68  5      
  movl %eax, %r12d                     #  647   0x5fa6d  3      
  testq %r12, %r12                     #  648   0x5fa70  3      
  je .L_5fe00                          #  649   0x5fa73  6      
  jmpq .L_5f780                        #  650   0x5fa79  5      
  nop                                  #  651   0x5fa7e  1      
  nop                                  #  652   0x5fa7f  1      
.L_5fe60:                              #        0x5fa80  0      
  movq %rcx, %rdx                      #  653   0x5fa80  3      
  movq 0x38(%rsp), %rsi                #  654   0x5fa83  5      
  xorl %edi, %edi                      #  655   0x5fa88  2      
  xorl %ecx, %ecx                      #  656   0x5fa8a  2      
  jmpq .L_5fb20                        #  657   0x5fa8c  5      
  nop                                  #  658   0x5fa91  1      
.L_5fe80:                              #        0x5fa92  0      
  andl $0x7ff, %edx                    #  659   0x5fa92  6      
  movl %ebx, %ebx                      #  660   0x5fa98  2      
  movl %edx, 0x10(%r15,%rbx,1)         #  661   0x5fa9a  5      
  jmpq .L_5f720                        #  662   0x5fa9f  5      
  nop                                  #  663   0x5faa4  1      
.L_5fea0:                              #        0x5faa5  0      
  movl 0x38(%rsp), %edx                #  664   0x5faa5  4      
  movl %r12d, %esi                     #  665   0x5faa9  3      
  movl %ebx, %edi                      #  666   0x5faac  2      
  nop                                  #  667   0x5faae  1      
  nop                                  #  668   0x5faaf  1      
  callq .frame_heapsort                #  669   0x5fab0  5      
  jmpq .L_5fd40                        #  670   0x5fab5  5      
  nop                                  #  671   0x5faba  1      
  nop                                  #  672   0x5fabb  1      
.L_5fee0:                              #        0x5fabc  0      
  nop                                  #  673   0x5fabc  1      
  nop                                  #  674   0x5fabd  1      
  callq .abort                         #  675   0x5fabe  5      
                                                                
.size search_object, .-search_object

