  .text
  .globl search_object
  .type search_object, @function

#! file-offset 0x5f260
#! rip-offset  0x5f260
#! capacity    3392 bytes

# Text                                 #  Line  RIP      Bytes  
.search_object:                        #        0x5f260  0      
  pushq %r14                           #  1     0x5f260  3      
  movl %esi, %esi                      #  2     0x5f263  2      
  pushq %r13                           #  3     0x5f265  3      
  pushq %r12                           #  4     0x5f268  3      
  pushq %rbx                           #  5     0x5f26b  2      
  movl %edi, %ebx                      #  6     0x5f26d  2      
  subl $0x78, %esp                     #  7     0x5f26f  3      
  addq %r15, %rsp                      #  8     0x5f272  3      
  movq %rsi, 0x40(%rsp)                #  9     0x5f275  5      
  movl %ebx, %ebx                      #  10    0x5f27a  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  11    0x5f27c  6      
  testb $0x1, %al                      #  12    0x5f282  2      
  je .L_5f400                          #  13    0x5f284  6      
  nop                                  #  14    0x5f28a  1      
  nop                                  #  15    0x5f28b  1      
.L_5f2a0:                              #        0x5f28c  0      
  testb $0x4, %al                      #  16    0x5f28c  2      
  je .L_5f840                          #  17    0x5f28e  6      
  movl %ebx, %ebx                      #  18    0x5f294  2      
  movl 0xc(%r15,%rbx,1), %eax          #  19    0x5f296  5      
  leal 0x68(%rsp), %ecx                #  20    0x5f29b  4      
  leal 0x6c(%rsp), %r8d                #  21    0x5f29f  5      
  movl $0x0, 0x10(%rsp)                #  22    0x5f2a4  8      
  movq %rbx, 0x30(%rsp)                #  23    0x5f2ac  5      
  movq %rcx, 0x20(%rsp)                #  24    0x5f2b1  5      
  movq %r8, 0x28(%rsp)                 #  25    0x5f2b6  5      
  movl %eax, %eax                      #  26    0x5f2bb  2      
  movl 0x4(%r15,%rax,1), %r14d         #  27    0x5f2bd  5      
  movq %rax, 0x18(%rsp)                #  28    0x5f2c2  5      
  nop                                  #  29    0x5f2c7  1      
.L_5f2e0:                              #        0x5f2c8  0      
  cmpl %r14d, 0x10(%rsp)               #  30    0x5f2c8  5      
  jb .L_5f320                          #  31    0x5f2cd  6      
  jmpq .L_5f920                        #  32    0x5f2d3  5      
  nop                                  #  33    0x5f2d8  1      
  nop                                  #  34    0x5f2d9  1      
.L_5f300:                              #        0x5f2da  0      
  cmpl 0x10(%rsp), %ebx                #  35    0x5f2da  4      
  jbe .L_5f920                         #  36    0x5f2de  6      
  movl %ebx, %r14d                     #  37    0x5f2e4  3      
  nop                                  #  38    0x5f2e7  1      
  nop                                  #  39    0x5f2e8  1      
.L_5f320:                              #        0x5f2e9  0      
  movl 0x10(%rsp), %eax                #  40    0x5f2e9  4      
  leal (%r14,%rax,1), %ebx             #  41    0x5f2ed  4      
  shrl $0x1, %ebx                      #  42    0x5f2f1  2      
  leal (,%rbx,4), %eax                 #  43    0x5f2f3  7      
  cltq                                 #  44    0x5f2fa  2      
  addq 0x18(%rsp), %rax                #  45    0x5f2fc  5      
  movl %eax, %eax                      #  46    0x5f301  2      
  movl 0x8(%r15,%rax,1), %r12d         #  47    0x5f303  5      
  nop                                  #  48    0x5f308  1      
  movl %r12d, %edi                     #  49    0x5f309  3      
  movl %r12d, %r12d                    #  50    0x5f30c  3      
  subl 0x4(%r15,%r12,1), %edi          #  51    0x5f30f  5      
  addl $0x4, %edi                      #  52    0x5f314  3      
  nop                                  #  53    0x5f317  1      
  callq .get_cie_encoding              #  54    0x5f318  5      
  movl 0x30(%rsp), %esi                #  55    0x5f31d  4      
  movzbl %al, %r13d                    #  56    0x5f321  4      
  movl %r13d, %edi                     #  57    0x5f325  3      
  nop                                  #  58    0x5f328  1      
  nop                                  #  59    0x5f329  1      
  callq .base_from_object              #  60    0x5f32a  5      
  movl 0x20(%rsp), %ecx                #  61    0x5f32f  4      
  leal 0x8(%r12), %edx                 #  62    0x5f333  5      
  movl %eax, %esi                      #  63    0x5f338  2      
  movl %r13d, %edi                     #  64    0x5f33a  3      
  nop                                  #  65    0x5f33d  1      
  callq .read_encoded_value_with_base  #  66    0x5f33e  5      
  movl 0x28(%rsp), %ecx                #  67    0x5f343  4      
  movl %r13d, %edi                     #  68    0x5f347  3      
  xorl %esi, %esi                      #  69    0x5f34a  2      
  andl $0xf, %edi                      #  70    0x5f34c  3      
  movl %eax, %edx                      #  71    0x5f34f  2      
  nop                                  #  72    0x5f351  1      
  callq .read_encoded_value_with_base  #  73    0x5f352  5      
  movl 0x68(%rsp), %eax                #  74    0x5f357  4      
  cmpl 0x40(%rsp), %eax                #  75    0x5f35b  4      
  ja .L_5f300                          #  76    0x5f35f  6      
  addl 0x6c(%rsp), %eax                #  77    0x5f365  4      
  cmpl 0x40(%rsp), %eax                #  78    0x5f369  4      
  ja .L_5f820                          #  79    0x5f36d  6      
  addl $0x1, %ebx                      #  80    0x5f373  3      
  nop                                  #  81    0x5f376  1      
  movl %ebx, 0x10(%rsp)                #  82    0x5f377  4      
  jmpq .L_5f2e0                        #  83    0x5f37b  5      
  nop                                  #  84    0x5f380  1      
  nop                                  #  85    0x5f381  1      
.L_5f400:                              #        0x5f382  0      
  movl %ebx, %ebx                      #  86    0x5f382  2      
  movl 0x10(%r15,%rbx,1), %edx         #  87    0x5f384  5      
  movl %edx, %ecx                      #  88    0x5f389  2      
  shrl $0xb, %ecx                      #  89    0x5f38b  3      
  testl %ecx, %ecx                     #  90    0x5f38e  2      
  movl %ecx, 0x54(%rsp)                #  91    0x5f390  4      
  je .L_5f6e0                          #  92    0x5f394  6      
  nop                                  #  93    0x5f39a  1      
.L_5f420:                              #        0x5f39b  0      
  movl 0x54(%rsp), %r8d                #  94    0x5f39b  5      
  leal 0x8(,%r8,4), %r12d              #  95    0x5f3a0  8      
  movl %r12d, %edi                     #  96    0x5f3a8  3      
  nop                                  #  97    0x5f3ab  1      
  callq .malloc                        #  98    0x5f3ac  5      
  movl %eax, %eax                      #  99    0x5f3b1  2      
  testq %rax, %rax                     #  100   0x5f3b3  3      
  movl %eax, 0x60(%rsp)                #  101   0x5f3b6  4      
  je .L_5f7c0                          #  102   0x5f3ba  6      
  movl %eax, %eax                      #  103   0x5f3c0  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  104   0x5f3c2  9      
  movl %r12d, %edi                     #  105   0x5f3cb  3      
  nop                                  #  106   0x5f3ce  1      
  nop                                  #  107   0x5f3cf  1      
  nop                                  #  108   0x5f3d0  1      
  callq .malloc                        #  109   0x5f3d1  5      
  movl %eax, %eax                      #  110   0x5f3d6  2      
  testq %rax, %rax                     #  111   0x5f3d8  3      
  movl %eax, 0x64(%rsp)                #  112   0x5f3db  4      
  je .L_5f4a0                          #  113   0x5f3df  6      
  movl %eax, %eax                      #  114   0x5f3e5  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  115   0x5f3e7  9      
  nop                                  #  116   0x5f3f0  1      
.L_5f4a0:                              #        0x5f3f1  0      
  movl %ebx, %ebx                      #  117   0x5f3f1  2      
  testb $0x2, 0x10(%r15,%rbx,1)        #  118   0x5f3f3  6      
  je .L_5fe20                          #  119   0x5f3f9  6      
  movl %ebx, %ebx                      #  120   0x5f3ff  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  121   0x5f401  5      
  movl %r12d, %r12d                    #  122   0x5f406  3      
  movl (%r15,%r12,1), %edx             #  123   0x5f409  4      
  testq %rdx, %rdx                     #  124   0x5f40d  3      
  nop                                  #  125   0x5f410  1      
  je .L_5f520                          #  126   0x5f411  6      
  leal 0x60(%rsp), %r13d               #  127   0x5f417  5      
  nop                                  #  128   0x5f41c  1      
  nop                                  #  129   0x5f41d  1      
.L_5f4e0:                              #        0x5f41e  0      
  addl $0x4, %r12d                     #  130   0x5f41e  4      
  movl %r13d, %esi                     #  131   0x5f422  3      
  movl %ebx, %edi                      #  132   0x5f425  2      
  nop                                  #  133   0x5f427  1      
  nop                                  #  134   0x5f428  1      
  callq .add_fdes                      #  135   0x5f429  5      
  movl %r12d, %r12d                    #  136   0x5f42e  3      
  movl (%r15,%r12,1), %edx             #  137   0x5f431  4      
  testq %rdx, %rdx                     #  138   0x5f435  3      
  jne .L_5f4e0                         #  139   0x5f438  6      
  nop                                  #  140   0x5f43e  1      
  nop                                  #  141   0x5f43f  1      
.L_5f520:                              #        0x5f440  0      
  movl 0x60(%rsp), %eax                #  142   0x5f440  4      
  testq %rax, %rax                     #  143   0x5f444  3      
  movq %rax, 0x38(%rsp)                #  144   0x5f447  5      
  je .L_5f540                          #  145   0x5f44c  6      
  movl 0x54(%rsp), %edx                #  146   0x5f452  4      
  movl %eax, %eax                      #  147   0x5f456  2      
  cmpl 0x4(%r15,%rax,1), %edx          #  148   0x5f458  5      
  jne .L_5ff80                         #  149   0x5f45d  6      
  nop                                  #  150   0x5f463  1      
.L_5f540:                              #        0x5f464  0      
  movl %ebx, %ebx                      #  151   0x5f464  2      
  testb $0x4, 0x10(%r15,%rbx,1)        #  152   0x5f466  6      
  leal -0x72f(%rip), %r12d             #  153   0x5f46c  7      
  jne .L_5f580                         #  154   0x5f473  6      
  movl %ebx, %ebx                      #  155   0x5f479  2      
  testw $0x7f8, 0x10(%r15,%rbx,1)      #  156   0x5f47b  8      
  nop                                  #  157   0x5f483  1      
  leal -0x827(%rip), %r12d             #  158   0x5f484  7      
  leal -0x15cd(%rip), %eax             #  159   0x5f48b  6      
  cmoveq %rax, %r12                    #  160   0x5f491  4      
  nop                                  #  161   0x5f495  1      
.L_5f580:                              #        0x5f496  0      
  movl 0x64(%rsp), %ecx                #  162   0x5f496  4      
  testq %rcx, %rcx                     #  163   0x5f49a  3      
  movq %rcx, 0x10(%rsp)                #  164   0x5f49d  5      
  je .L_5ff40                          #  165   0x5f4a2  6      
  movq 0x38(%rsp), %r8                 #  166   0x5f4a8  5      
  movl %r8d, %r8d                      #  167   0x5f4ad  3      
  movl 0x4(%r15,%r8,1), %r8d           #  168   0x5f4b0  5      
  nop                                  #  169   0x5f4b5  1      
  testl %r8d, %r8d                     #  170   0x5f4b6  3      
  movl %r8d, 0x48(%rsp)                #  171   0x5f4b9  5      
  je .L_5ff00                          #  172   0x5f4be  6      
  movl 0x38(%rsp), %eax                #  173   0x5f4c4  4      
  movl 0x10(%rsp), %edx                #  174   0x5f4c8  4      
  leal 0xffd7297(%rip), %r13d          #  175   0x5f4cc  7      
  nop                                  #  176   0x5f4d3  1      
  movl 0x38(%rsp), %ecx                #  177   0x5f4d4  4      
  addl $0x8, %eax                      #  178   0x5f4d8  3      
  movl %edx, 0x5c(%rsp)                #  179   0x5f4db  4      
  movl %edx, 0x28(%rsp)                #  180   0x5f4df  4      
  movl %eax, 0x18(%rsp)                #  181   0x5f4e3  4      
  movl %ecx, 0x58(%rsp)                #  182   0x5f4e7  4      
  xorl %eax, %eax                      #  183   0x5f4eb  2      
  movl %ecx, 0x30(%rsp)                #  184   0x5f4ed  4      
  nop                                  #  185   0x5f4f1  1      
.L_5f5e0:                              #        0x5f4f2  0      
  leal 0x1(%rax), %ecx                 #  186   0x5f4f2  3      
  movl 0x28(%rsp), %edx                #  187   0x5f4f5  4      
  cmpl %ecx, 0x48(%rsp)                #  188   0x5f4f9  4      
  movl %ecx, 0x20(%rsp)                #  189   0x5f4fd  4      
  movl %edx, %edx                      #  190   0x5f501  2      
  movl %r13d, 0x8(%r15,%rdx,1)         #  191   0x5f503  5      
  jbe .L_5fae0                         #  192   0x5f508  6      
  nop                                  #  193   0x5f50e  1      
  movl 0x38(%rsp), %r8d                #  194   0x5f50f  5      
  leal 0x8(%r8,%rax,4), %r13d          #  195   0x5f514  5      
  leal 0xffd7244(%rip), %eax           #  196   0x5f519  6      
  cmpl %eax, %r13d                     #  197   0x5f51f  3      
  je .L_5f6c0                          #  198   0x5f522  6      
  movl 0x30(%rsp), %r14d               #  199   0x5f528  5      
  xchgw %ax, %ax                       #  200   0x5f52d  3      
  addq $0xc, %r14                      #  201   0x5f530  4      
  jmpq .L_5f680                        #  202   0x5f534  5      
  nop                                  #  203   0x5f539  1      
  nop                                  #  204   0x5f53a  1      
.L_5f640:                              #        0x5f53b  0      
  subl 0x18(%rsp), %r13d               #  205   0x5f53b  5      
  movq 0x10(%rsp), %rax                #  206   0x5f540  5      
  leal 0xffd7204(%rip), %edx           #  207   0x5f545  6      
  andl $0xfffffffc, %r13d              #  208   0x5f54b  7      
  movslq %r13d, %r13                   #  209   0x5f552  3      
  addq %r13, %rax                      #  210   0x5f555  3      
  nop                                  #  211   0x5f558  1      
  movl %eax, %eax                      #  212   0x5f559  2      
  movl 0x8(%r15,%rax,1), %r13d         #  213   0x5f55b  5      
  movl %eax, %eax                      #  214   0x5f560  2      
  movl $0x0, 0x8(%r15,%rax,1)          #  215   0x5f562  9      
  cmpl %edx, %r13d                     #  216   0x5f56b  3      
  je .L_5f6c0                          #  217   0x5f56e  6      
  nop                                  #  218   0x5f574  1      
.L_5f680:                              #        0x5f575  0      
  movl %r13d, %r13d                    #  219   0x5f575  3      
  movl (%r15,%r13,1), %edx             #  220   0x5f578  4      
  movl %r14d, %r14d                    #  221   0x5f57c  3      
  movl (%r15,%r14,1), %esi             #  222   0x5f57f  4      
  movl %ebx, %edi                      #  223   0x5f583  2      
  nop                                  #  224   0x5f585  1      
  andl $0xffffffe0, %r12d              #  225   0x5f586  7      
  addq %r15, %r12                      #  226   0x5f58d  3      
  callq %r12                           #  227   0x5f590  3      
  testl %eax, %eax                     #  228   0x5f593  2      
  js .L_5f640                          #  229   0x5f595  6      
  nop                                  #  230   0x5f59b  1      
  nop                                  #  231   0x5f59c  1      
.L_5f6c0:                              #        0x5f59d  0      
  addl $0x4, 0x28(%rsp)                #  232   0x5f59d  5      
  addl $0x4, 0x30(%rsp)                #  233   0x5f5a2  5      
  movl 0x20(%rsp), %eax                #  234   0x5f5a7  4      
  jmpq .L_5f5e0                        #  235   0x5f5ab  5      
  nop                                  #  236   0x5f5b0  1      
.L_5f6e0:                              #        0x5f5b1  0      
  testb $0x2, %al                      #  237   0x5f5b1  2      
  je .L_5f940                          #  238   0x5f5b3  6      
  movl %ebx, %ebx                      #  239   0x5f5b9  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  240   0x5f5bb  5      
  movl %r12d, %r12d                    #  241   0x5f5c0  3      
  movl (%r15,%r12,1), %esi             #  242   0x5f5c3  4      
  testq %rsi, %rsi                     #  243   0x5f5c7  3      
  je .L_5ff20                          #  244   0x5f5ca  6      
  nop                                  #  245   0x5f5d0  1      
  movl %ecx, %r13d                     #  246   0x5f5d1  3      
  nop                                  #  247   0x5f5d4  1      
  nop                                  #  248   0x5f5d5  1      
.L_5f720:                              #        0x5f5d6  0      
  addl $0x4, %r12d                     #  249   0x5f5d6  4      
  movl %ebx, %edi                      #  250   0x5f5da  2      
  nop                                  #  251   0x5f5dc  1      
  nop                                  #  252   0x5f5dd  1      
  callq .classify_object_over_fdes     #  253   0x5f5de  5      
  movl %r12d, %r12d                    #  254   0x5f5e3  3      
  movl (%r15,%r12,1), %esi             #  255   0x5f5e6  4      
  addl %eax, %r13d                     #  256   0x5f5ea  3      
  testq %rsi, %rsi                     #  257   0x5f5ed  3      
  jne .L_5f720                         #  258   0x5f5f0  6      
  movl %r13d, 0x54(%rsp)               #  259   0x5f5f6  5      
  nop                                  #  260   0x5f5fb  1      
.L_5f760:                              #        0x5f5fc  0      
  movl 0x54(%rsp), %edx                #  261   0x5f5fc  4      
  movl %ebx, %ebx                      #  262   0x5f600  2      
  movl 0x10(%r15,%rbx,1), %eax         #  263   0x5f602  5      
  andl $0x1fffff, %edx                 #  264   0x5f607  6      
  andl $0x7ff, %eax                    #  265   0x5f60d  5      
  movl %edx, %ecx                      #  266   0x5f612  2      
  shll $0xb, %ecx                      #  267   0x5f614  3      
  orl %ecx, %eax                       #  268   0x5f617  2      
  nop                                  #  269   0x5f619  1      
  movl %ebx, %ebx                      #  270   0x5f61a  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  271   0x5f61c  5      
  cmpl %edx, 0x54(%rsp)                #  272   0x5f621  4      
  je .L_5f7a0                          #  273   0x5f625  6      
  andl $0x7ff, %eax                    #  274   0x5f62b  5      
  movl %ebx, %ebx                      #  275   0x5f630  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  276   0x5f632  5      
  nop                                  #  277   0x5f637  1      
.L_5f7a0:                              #        0x5f638  0      
  movl 0x54(%rsp), %r9d                #  278   0x5f638  5      
  testl %r9d, %r9d                     #  279   0x5f63d  3      
  jne .L_5f420                         #  280   0x5f640  6      
  nop                                  #  281   0x5f646  1      
  nop                                  #  282   0x5f647  1      
.L_5f7c0:                              #        0x5f648  0      
  movl 0x40(%rsp), %r8d                #  283   0x5f648  5      
  movl %ebx, %ebx                      #  284   0x5f64d  2      
  cmpl %r8d, (%r15,%rbx,1)             #  285   0x5f64f  4      
  ja .L_5f920                          #  286   0x5f653  6      
  movl %ebx, %ebx                      #  287   0x5f659  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  288   0x5f65b  6      
  testb $0x1, %al                      #  289   0x5f661  2      
  nop                                  #  290   0x5f663  1      
  jne .L_5f2a0                         #  291   0x5f664  6      
  testb $0x2, %al                      #  292   0x5f66a  2      
  jne .L_5fe60                         #  293   0x5f66c  6      
  movl %ebx, %ebx                      #  294   0x5f672  2      
  movl 0xc(%r15,%rbx,1), %esi          #  295   0x5f674  5      
  movl 0x40(%rsp), %edx                #  296   0x5f679  4      
  movl %ebx, %edi                      #  297   0x5f67d  2      
  callq .linear_search_fdes            #  298   0x5f67f  5      
  movl %eax, %r12d                     #  299   0x5f684  3      
  nop                                  #  300   0x5f687  1      
  nop                                  #  301   0x5f688  1      
.L_5f820:                              #        0x5f689  0      
  addl $0x78, %esp                     #  302   0x5f689  3      
  addq %r15, %rsp                      #  303   0x5f68c  3      
  movl %r12d, %eax                     #  304   0x5f68f  3      
  popq %rbx                            #  305   0x5f692  2      
  popq %r12                            #  306   0x5f694  3      
  popq %r13                            #  307   0x5f697  3      
  popq %r14                            #  308   0x5f69a  3      
  popq %r11                            #  309   0x5f69d  3      
  andl $0xffffffe0, %r11d              #  310   0x5f6a0  7      
  addq %r15, %r11                      #  311   0x5f6a7  3      
  jmpq %r11                            #  312   0x5f6aa  3      
  nop                                  #  313   0x5f6ad  1      
.L_5f840:                              #        0x5f6ae  0      
  movl %ebx, %ebx                      #  314   0x5f6ae  2      
  movzwl 0x10(%r15,%rbx,1), %eax       #  315   0x5f6b0  6      
  testw $0x7f8, %ax                    #  316   0x5f6b6  4      
  jne .L_5f980                         #  317   0x5f6ba  6      
  movl %ebx, %ebx                      #  318   0x5f6c0  2      
  movl 0xc(%r15,%rbx,1), %edi          #  319   0x5f6c2  5      
  movq 0x40(%rsp), %r8                 #  320   0x5f6c7  5      
  xorl %ecx, %ecx                      #  321   0x5f6cc  2      
  movl %edi, %edi                      #  322   0x5f6ce  2      
  movl 0x4(%r15,%rdi,1), %esi          #  323   0x5f6d0  5      
  nop                                  #  324   0x5f6d5  1      
  nop                                  #  325   0x5f6d6  1      
.L_5f880:                              #        0x5f6d7  0      
  cmpl %esi, %ecx                      #  326   0x5f6d7  2      
  jae .L_5f920                         #  327   0x5f6d9  6      
  leal (%rsi,%rcx,1), %eax             #  328   0x5f6df  3      
  jmpq .L_5f8c0                        #  329   0x5f6e2  5      
  nop                                  #  330   0x5f6e7  1      
  nop                                  #  331   0x5f6e8  1      
.L_5f8a0:                              #        0x5f6e9  0      
  cmpl %eax, %ecx                      #  332   0x5f6e9  2      
  movl %eax, %esi                      #  333   0x5f6eb  2      
  jae .L_5f920                         #  334   0x5f6ed  6      
  addl %ecx, %eax                      #  335   0x5f6f3  2      
  nop                                  #  336   0x5f6f5  1      
  nop                                  #  337   0x5f6f6  1      
.L_5f8c0:                              #        0x5f6f7  0      
  shrl $0x1, %eax                      #  338   0x5f6f7  2      
  leal (,%rax,4), %edx                 #  339   0x5f6f9  7      
  movslq %edx, %rdx                    #  340   0x5f700  3      
  leaq (%rdi,%rdx,1), %rdx             #  341   0x5f703  4      
  movl %edx, %edx                      #  342   0x5f707  2      
  movl 0x8(%r15,%rdx,1), %r12d         #  343   0x5f709  5      
  leal 0x8(%r12), %edx                 #  344   0x5f70e  5      
  nop                                  #  345   0x5f713  1      
  movl %edx, %edx                      #  346   0x5f714  2      
  movl (%r15,%rdx,1), %ebx             #  347   0x5f716  4      
  movl %edx, %edx                      #  348   0x5f71a  2      
  movl 0x4(%r15,%rdx,1), %edx          #  349   0x5f71c  5      
  cmpl %ebx, %r8d                      #  350   0x5f721  3      
  jb .L_5f8a0                          #  351   0x5f724  6      
  addl %ebx, %edx                      #  352   0x5f72a  2      
  cmpl %r8d, %edx                      #  353   0x5f72c  3      
  ja .L_5f820                          #  354   0x5f72f  6      
  leal 0x1(%rax), %ecx                 #  355   0x5f735  3      
  jmpq .L_5f880                        #  356   0x5f738  5      
  nop                                  #  357   0x5f73d  1      
  nop                                  #  358   0x5f73e  1      
.L_5f920:                              #        0x5f73f  0      
  xorl %r12d, %r12d                    #  359   0x5f73f  3      
  jmpq .L_5f820                        #  360   0x5f742  5      
  nop                                  #  361   0x5f747  1      
  nop                                  #  362   0x5f748  1      
.L_5f940:                              #        0x5f749  0      
  movl %ebx, %ebx                      #  363   0x5f749  2      
  movl 0xc(%r15,%rbx,1), %esi          #  364   0x5f74b  5      
  movl %ebx, %edi                      #  365   0x5f750  2      
  nop                                  #  366   0x5f752  1      
  nop                                  #  367   0x5f753  1      
  callq .classify_object_over_fdes     #  368   0x5f754  5      
  movl %eax, 0x54(%rsp)                #  369   0x5f759  4      
  jmpq .L_5f760                        #  370   0x5f75d  5      
  nop                                  #  371   0x5f762  1      
  nop                                  #  372   0x5f763  1      
.L_5f980:                              #        0x5f764  0      
  movl %ebx, %ebx                      #  373   0x5f764  2      
  movl 0xc(%r15,%rbx,1), %edx          #  374   0x5f766  5      
  shrw $0x3, %ax                       #  375   0x5f76b  4      
  movl %ebx, %esi                      #  376   0x5f76f  2      
  movzbl %al, %eax                     #  377   0x5f771  3      
  xorl %r14d, %r14d                    #  378   0x5f774  3      
  movl %eax, %edi                      #  379   0x5f777  2      
  movl %eax, 0x10(%rsp)                #  380   0x5f779  4      
  movq %rdx, 0x18(%rsp)                #  381   0x5f77d  5      
  xchgw %ax, %ax                       #  382   0x5f782  3      
  nop                                  #  383   0x5f785  1      
  nop                                  #  384   0x5f786  1      
  callq .base_from_object              #  385   0x5f787  5      
  movq 0x18(%rsp), %rcx                #  386   0x5f78c  5      
  movl 0x10(%rsp), %r8d                #  387   0x5f791  5      
  leal 0x68(%rsp), %edx                #  388   0x5f796  4      
  movl %eax, 0x20(%rsp)                #  389   0x5f79a  4      
  movq %rdx, 0x30(%rsp)                #  390   0x5f79e  5      
  movl %ecx, %ecx                      #  391   0x5f7a3  2      
  movl 0x4(%r15,%rcx,1), %r13d         #  392   0x5f7a5  5      
  xchgw %ax, %ax                       #  393   0x5f7aa  3      
  leal 0x6c(%rsp), %ecx                #  394   0x5f7ad  4      
  andl $0xf, %r8d                      #  395   0x5f7b1  4      
  movl %r8d, 0x28(%rsp)                #  396   0x5f7b5  5      
  movq %rcx, 0x38(%rsp)                #  397   0x5f7ba  5      
  nop                                  #  398   0x5f7bf  1      
.L_5fa00:                              #        0x5f7c0  0      
  cmpl %r13d, %r14d                    #  399   0x5f7c0  3      
  jb .L_5fa40                          #  400   0x5f7c3  6      
  jmpq .L_5f920                        #  401   0x5f7c9  5      
  nop                                  #  402   0x5f7ce  1      
  nop                                  #  403   0x5f7cf  1      
.L_5fa20:                              #        0x5f7d0  0      
  cmpl %r14d, %ebx                     #  404   0x5f7d0  3      
  jbe .L_5f920                         #  405   0x5f7d3  6      
  movl %ebx, %r13d                     #  406   0x5f7d9  3      
  nop                                  #  407   0x5f7dc  1      
  nop                                  #  408   0x5f7dd  1      
.L_5fa40:                              #        0x5f7de  0      
  leal (%r13,%r14,1), %ebx             #  409   0x5f7de  5      
  movl 0x38(%rsp), %ecx                #  410   0x5f7e3  4      
  movl 0x20(%rsp), %esi                #  411   0x5f7e7  4      
  movl 0x10(%rsp), %edi                #  412   0x5f7eb  4      
  shrl $0x1, %ebx                      #  413   0x5f7ef  2      
  leal (,%rbx,4), %eax                 #  414   0x5f7f1  7      
  cltq                                 #  415   0x5f7f8  2      
  nop                                  #  416   0x5f7fa  1      
  addq 0x18(%rsp), %rax                #  417   0x5f7fb  5      
  movl %eax, %eax                      #  418   0x5f800  2      
  movl 0x8(%r15,%rax,1), %r12d         #  419   0x5f802  5      
  leal 0x8(%r12), %edx                 #  420   0x5f807  5      
  nop                                  #  421   0x5f80c  1      
  callq .read_encoded_value_with_base  #  422   0x5f80d  5      
  movl 0x30(%rsp), %ecx                #  423   0x5f812  4      
  movl 0x28(%rsp), %edi                #  424   0x5f816  4      
  xorl %esi, %esi                      #  425   0x5f81a  2      
  movl %eax, %edx                      #  426   0x5f81c  2      
  nop                                  #  427   0x5f81e  1      
  callq .read_encoded_value_with_base  #  428   0x5f81f  5      
  movl 0x6c(%rsp), %eax                #  429   0x5f824  4      
  cmpl 0x40(%rsp), %eax                #  430   0x5f828  4      
  ja .L_5fa20                          #  431   0x5f82c  6      
  addl 0x68(%rsp), %eax                #  432   0x5f832  4      
  cmpl 0x40(%rsp), %eax                #  433   0x5f836  4      
  ja .L_5f820                          #  434   0x5f83a  6      
  leal 0x1(%rbx), %r14d                #  435   0x5f840  4      
  jmpq .L_5fa00                        #  436   0x5f844  5      
  nop                                  #  437   0x5f849  1      
  nop                                  #  438   0x5f84a  1      
.L_5fae0:                              #        0x5f84b  0      
  xorl %edi, %edi                      #  439   0x5f84b  2      
  xorl %ecx, %ecx                      #  440   0x5f84d  2      
  xorl %eax, %eax                      #  441   0x5f84f  2      
  movq 0x38(%rsp), %r11                #  442   0x5f851  5      
  movl 0x58(%rsp), %esi                #  443   0x5f856  4      
  movl 0x5c(%rsp), %edx                #  444   0x5f85a  4      
  movl 0x48(%rsp), %r10d               #  445   0x5f85e  5      
  jmpq .L_5fb40                        #  446   0x5f863  5      
  nop                                  #  447   0x5f868  1      
.L_5fb00:                              #        0x5f869  0      
  leal (,%rcx,4), %r8d                 #  448   0x5f869  8      
  movl %esi, %r9d                      #  449   0x5f871  3      
  addl $0x1, %eax                      #  450   0x5f874  3      
  movl %r9d, %r9d                      #  451   0x5f877  3      
  movl 0x8(%r15,%r9,1), %r9d           #  452   0x5f87a  5      
  addl $0x1, %ecx                      #  453   0x5f87f  3      
  addl $0x4, %edx                      #  454   0x5f882  3      
  movslq %r8d, %r8                     #  455   0x5f885  3      
  nop                                  #  456   0x5f888  1      
  addl $0x4, %esi                      #  457   0x5f889  3      
  cmpl %eax, %r10d                     #  458   0x5f88c  3      
  leaq (%r11,%r8,1), %r8               #  459   0x5f88f  4      
  movl %r8d, %r8d                      #  460   0x5f893  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  461   0x5f896  5      
  jbe .L_5fba0                         #  462   0x5f89b  6      
  nop                                  #  463   0x5f8a1  1      
.L_5fb40:                              #        0x5f8a2  0      
  movl %edx, %r8d                      #  464   0x5f8a2  3      
  movl %r8d, %r8d                      #  465   0x5f8a5  3      
  movl 0x8(%r15,%r8,1), %r8d           #  466   0x5f8a8  5      
  testl %r8d, %r8d                     #  467   0x5f8ad  3      
  jne .L_5fb00                         #  468   0x5f8b0  6      
  leal (,%rdi,4), %r8d                 #  469   0x5f8b6  8      
  movl %esi, %r9d                      #  470   0x5f8be  3      
  addl $0x1, %eax                      #  471   0x5f8c1  3      
  xchgw %ax, %ax                       #  472   0x5f8c4  3      
  movl %r9d, %r9d                      #  473   0x5f8c7  3      
  movl 0x8(%r15,%r9,1), %r9d           #  474   0x5f8ca  5      
  addl $0x1, %edi                      #  475   0x5f8cf  3      
  addl $0x4, %edx                      #  476   0x5f8d2  3      
  movslq %r8d, %r8                     #  477   0x5f8d5  3      
  addq 0x10(%rsp), %r8                 #  478   0x5f8d8  5      
  addl $0x4, %esi                      #  479   0x5f8dd  3      
  cmpl %eax, %r10d                     #  480   0x5f8e0  3      
  nop                                  #  481   0x5f8e3  1      
  movl %r8d, %r8d                      #  482   0x5f8e4  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  483   0x5f8e7  5      
  ja .L_5fb40                          #  484   0x5f8ec  6      
  nop                                  #  485   0x5f8f2  1      
  nop                                  #  486   0x5f8f3  1      
.L_5fba0:                              #        0x5f8f4  0      
  movl 0x60(%rsp), %esi                #  487   0x5f8f4  4      
  movl 0x64(%rsp), %edx                #  488   0x5f8f8  4      
  nop                                  #  489   0x5f8fc  1      
  nop                                  #  490   0x5f8fd  1      
.L_5fbc0:                              #        0x5f8fe  0      
  movq 0x10(%rsp), %rax                #  491   0x5f8fe  5      
  movq 0x38(%rsp), %r8                 #  492   0x5f903  5      
  movl %r8d, %r8d                      #  493   0x5f908  3      
  movl %ecx, 0x4(%r15,%r8,1)           #  494   0x5f90b  5      
  movl %eax, %eax                      #  495   0x5f910  2      
  movl %edi, 0x4(%r15,%rax,1)          #  496   0x5f912  5      
  movl %edx, %edx                      #  497   0x5f917  2      
  movl 0x4(%r15,%rdx,1), %eax          #  498   0x5f919  5      
  movl %esi, %esi                      #  499   0x5f91e  2      
  addl 0x4(%r15,%rsi,1), %eax          #  500   0x5f920  5      
  cmpl %eax, 0x54(%rsp)                #  501   0x5f925  4      
  jne .L_5ff80                         #  502   0x5f929  6      
  movl %r12d, %esi                     #  503   0x5f92f  3      
  movl %ebx, %edi                      #  504   0x5f932  2      
  nop                                  #  505   0x5f934  1      
  callq .frame_heapsort                #  506   0x5f935  5      
  movl 0x64(%rsp), %edx                #  507   0x5f93a  4      
  movl 0x60(%rsp), %ecx                #  508   0x5f93e  4      
  movl %edx, %edx                      #  509   0x5f942  2      
  movl 0x4(%r15,%rdx,1), %r9d          #  510   0x5f944  5      
  movq %rdx, 0x48(%rsp)                #  511   0x5f949  5      
  movq %rcx, 0x30(%rsp)                #  512   0x5f94e  5      
  testl %r9d, %r9d                     #  513   0x5f953  3      
  nop                                  #  514   0x5f956  1      
  je .L_5fdc0                          #  515   0x5f957  6      
  leal 0x4(%rdx,%r9,4), %eax           #  516   0x5f95d  5      
  movl %ecx, %ecx                      #  517   0x5f962  2      
  movl 0x4(%r15,%rcx,1), %ecx          #  518   0x5f964  5      
  movq %r12, 0x20(%rsp)                #  519   0x5f969  5      
  movq %rbx, 0x18(%rsp)                #  520   0x5f96e  5      
  movl %eax, 0x38(%rsp)                #  521   0x5f973  4      
.L_5fc40:                              #        0x5f977  0      
  movl 0x38(%rsp), %eax                #  522   0x5f977  4      
  leal -0x1(%r9), %edx                 #  523   0x5f97b  4      
  testl %ecx, %ecx                     #  524   0x5f97f  2      
  movl %edx, 0x28(%rsp)                #  525   0x5f981  4      
  movl %eax, %eax                      #  526   0x5f985  2      
  movl (%r15,%rax,1), %eax             #  527   0x5f987  4      
  movq %rax, 0x10(%rsp)                #  528   0x5f98b  5      
  je .L_5fd20                          #  529   0x5f990  6      
  nop                                  #  530   0x5f996  1      
  movl 0x30(%rsp), %r8d                #  531   0x5f997  5      
  leal 0x3fffffff(%rcx,%r9,1), %r9d    #  532   0x5f99c  8      
  movl %r8d, %eax                      #  533   0x5f9a4  3      
  leal 0x4(%r8,%rcx,4), %r12d          #  534   0x5f9a7  5      
  leal 0x8(%rax,%r9,4), %r14d          #  535   0x5f9ac  5      
  jmpq .L_5fcc0                        #  536   0x5f9b1  5      
  nop                                  #  537   0x5f9b6  1      
.L_5fc80:                              #        0x5f9b7  0      
  movl %r13d, %r13d                    #  538   0x5f9b7  3      
  movl (%r15,%r13,1), %edx             #  539   0x5f9ba  4      
  movl %r14d, %eax                     #  540   0x5f9be  3      
  subl $0x4, %r12d                     #  541   0x5f9c1  4      
  subl $0x4, %r14d                     #  542   0x5f9c5  4      
  testl %ebx, %ebx                     #  543   0x5f9c9  2      
  movl %eax, %eax                      #  544   0x5f9cb  2      
  movl %edx, (%r15,%rax,1)             #  545   0x5f9cd  4      
  je .L_5fd40                          #  546   0x5f9d1  6      
  movl %ebx, %ecx                      #  547   0x5f9d7  2      
  nop                                  #  548   0x5f9d9  1      
  nop                                  #  549   0x5f9da  1      
.L_5fcc0:                              #        0x5f9db  0      
  movl %r12d, %r13d                    #  550   0x5f9db  3      
  leal -0x1(%rcx), %ebx                #  551   0x5f9de  3      
  movl %ecx, 0x8(%rsp)                 #  552   0x5f9e1  4      
  movl 0x10(%rsp), %edx                #  553   0x5f9e5  4      
  movl %r13d, %r13d                    #  554   0x5f9e9  3      
  movl (%r15,%r13,1), %esi             #  555   0x5f9ec  4      
  movl 0x18(%rsp), %edi                #  556   0x5f9f0  4      
  movq 0x20(%rsp), %r8                 #  557   0x5f9f4  5      
  xchgw %ax, %ax                       #  558   0x5f9f9  3      
  nop                                  #  559   0x5f9fc  1      
  nop                                  #  560   0x5f9fd  1      
  andl $0xffffffe0, %r8d               #  561   0x5f9fe  7      
  addq %r15, %r8                       #  562   0x5fa05  3      
  callq %r8                            #  563   0x5fa08  3      
  testl %eax, %eax                     #  564   0x5fa0b  2      
  movl 0x8(%rsp), %ecx                 #  565   0x5fa0d  4      
  jg .L_5fc80                          #  566   0x5fa11  6      
  nop                                  #  567   0x5fa17  1      
  nop                                  #  568   0x5fa18  1      
.L_5fd20:                              #        0x5fa19  0      
  movl %ecx, %ebx                      #  569   0x5fa19  2      
  nop                                  #  570   0x5fa1b  1      
  nop                                  #  571   0x5fa1c  1      
.L_5fd40:                              #        0x5fa1d  0      
  movl 0x28(%rsp), %edx                #  572   0x5fa1d  4      
  movl 0x10(%rsp), %ecx                #  573   0x5fa21  4      
  subl $0x4, 0x38(%rsp)                #  574   0x5fa25  5      
  leal (%rbx,%rdx,1), %eax             #  575   0x5fa2a  3      
  shll $0x2, %eax                      #  576   0x5fa2d  3      
  cltq                                 #  577   0x5fa30  2      
  addq 0x30(%rsp), %rax                #  578   0x5fa32  5      
  testl %edx, %edx                     #  579   0x5fa37  2      
  nop                                  #  580   0x5fa39  1      
  movl %eax, %eax                      #  581   0x5fa3a  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  582   0x5fa3c  5      
  je .L_5fd80                          #  583   0x5fa41  6      
  movl %edx, %r9d                      #  584   0x5fa47  3      
  movl %ebx, %ecx                      #  585   0x5fa4a  2      
  jmpq .L_5fc40                        #  586   0x5fa4c  5      
  nop                                  #  587   0x5fa51  1      
.L_5fd80:                              #        0x5fa52  0      
  movq 0x48(%rsp), %r8                 #  588   0x5fa52  5      
  movq 0x30(%rsp), %rdx                #  589   0x5fa57  5      
  movl 0x64(%rsp), %ecx                #  590   0x5fa5c  4      
  movq 0x18(%rsp), %rbx                #  591   0x5fa60  5      
  movl %r8d, %r8d                      #  592   0x5fa65  3      
  movl 0x4(%r15,%r8,1), %eax           #  593   0x5fa68  5      
  nop                                  #  594   0x5fa6d  1      
  movl %edx, %edx                      #  595   0x5fa6e  2      
  addl %eax, 0x4(%r15,%rdx,1)          #  596   0x5fa70  5      
  movq %rcx, 0x48(%rsp)                #  597   0x5fa75  5      
  nop                                  #  598   0x5fa7a  1      
  nop                                  #  599   0x5fa7b  1      
.L_5fdc0:                              #        0x5fa7c  0      
  movl 0x48(%rsp), %edi                #  600   0x5fa7c  4      
  nop                                  #  601   0x5fa80  1      
  nop                                  #  602   0x5fa81  1      
  callq .free                          #  603   0x5fa82  5      
.L_5fde0:                              #        0x5fa87  0      
  movl 0x60(%rsp), %eax                #  604   0x5fa87  4      
  movl %ebx, %ebx                      #  605   0x5fa8b  2      
  movl 0xc(%r15,%rbx,1), %edx          #  606   0x5fa8d  5      
  movl %eax, %eax                      #  607   0x5fa92  2      
  movl %edx, (%r15,%rax,1)             #  608   0x5fa94  4      
  movl %ebx, %ebx                      #  609   0x5fa98  2      
  movl %eax, 0xc(%r15,%rbx,1)          #  610   0x5fa9a  5      
  movl %ebx, %ebx                      #  611   0x5fa9f  2      
  orb $0x1, 0x10(%r15,%rbx,1)          #  612   0x5faa1  6      
  jmpq .L_5f7c0                        #  613   0x5faa7  5      
  nop                                  #  614   0x5faac  1      
  nop                                  #  615   0x5faad  1      
.L_5fe20:                              #        0x5faae  0      
  movl %ebx, %ebx                      #  616   0x5faae  2      
  movl 0xc(%r15,%rbx,1), %edx          #  617   0x5fab0  5      
  leal 0x60(%rsp), %esi                #  618   0x5fab5  4      
  movl %ebx, %edi                      #  619   0x5fab9  2      
  nop                                  #  620   0x5fabb  1      
  callq .add_fdes                      #  621   0x5fabc  5      
  jmpq .L_5f520                        #  622   0x5fac1  5      
  nop                                  #  623   0x5fac6  1      
  nop                                  #  624   0x5fac7  1      
.L_5fe60:                              #        0x5fac8  0      
  movl %ebx, %ebx                      #  625   0x5fac8  2      
  movl 0xc(%r15,%rbx,1), %r13d         #  626   0x5faca  5      
  movl %r13d, %r13d                    #  627   0x5facf  3      
  movl (%r15,%r13,1), %esi             #  628   0x5fad2  4      
  testq %rsi, %rsi                     #  629   0x5fad6  3      
  je .L_5f920                          #  630   0x5fad9  6      
  movq 0x40(%rsp), %r14                #  631   0x5fadf  5      
  nop                                  #  632   0x5fae4  1      
  jmpq .L_5fec0                        #  633   0x5fae5  5      
  nop                                  #  634   0x5faea  1      
  nop                                  #  635   0x5faeb  1      
.L_5fea0:                              #        0x5faec  0      
  addl $0x4, %r13d                     #  636   0x5faec  4      
  movl %r13d, %r13d                    #  637   0x5faf0  3      
  movl (%r15,%r13,1), %esi             #  638   0x5faf3  4      
  testq %rsi, %rsi                     #  639   0x5faf7  3      
  je .L_5f820                          #  640   0x5fafa  6      
  nop                                  #  641   0x5fb00  1      
.L_5fec0:                              #        0x5fb01  0      
  movl %r14d, %edx                     #  642   0x5fb01  3      
  movl %ebx, %edi                      #  643   0x5fb04  2      
  nop                                  #  644   0x5fb06  1      
  nop                                  #  645   0x5fb07  1      
  callq .linear_search_fdes            #  646   0x5fb08  5      
  movl %eax, %r12d                     #  647   0x5fb0d  3      
  testq %r12, %r12                     #  648   0x5fb10  3      
  je .L_5fea0                          #  649   0x5fb13  6      
  jmpq .L_5f820                        #  650   0x5fb19  5      
  nop                                  #  651   0x5fb1e  1      
  nop                                  #  652   0x5fb1f  1      
.L_5ff00:                              #        0x5fb20  0      
  movq %rcx, %rdx                      #  653   0x5fb20  3      
  movq 0x38(%rsp), %rsi                #  654   0x5fb23  5      
  xorl %edi, %edi                      #  655   0x5fb28  2      
  xorl %ecx, %ecx                      #  656   0x5fb2a  2      
  jmpq .L_5fbc0                        #  657   0x5fb2c  5      
  nop                                  #  658   0x5fb31  1      
.L_5ff20:                              #        0x5fb32  0      
  andl $0x7ff, %edx                    #  659   0x5fb32  6      
  movl %ebx, %ebx                      #  660   0x5fb38  2      
  movl %edx, 0x10(%r15,%rbx,1)         #  661   0x5fb3a  5      
  jmpq .L_5f7c0                        #  662   0x5fb3f  5      
  nop                                  #  663   0x5fb44  1      
.L_5ff40:                              #        0x5fb45  0      
  movl 0x38(%rsp), %edx                #  664   0x5fb45  4      
  movl %r12d, %esi                     #  665   0x5fb49  3      
  movl %ebx, %edi                      #  666   0x5fb4c  2      
  nop                                  #  667   0x5fb4e  1      
  nop                                  #  668   0x5fb4f  1      
  callq .frame_heapsort                #  669   0x5fb50  5      
  jmpq .L_5fde0                        #  670   0x5fb55  5      
  nop                                  #  671   0x5fb5a  1      
  nop                                  #  672   0x5fb5b  1      
.L_5ff80:                              #        0x5fb5c  0      
  nop                                  #  673   0x5fb5c  1      
  nop                                  #  674   0x5fb5d  1      
  callq .abort                         #  675   0x5fb5e  5      
                                                                
.size search_object, .-search_object

