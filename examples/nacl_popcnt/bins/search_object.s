  .text
  .globl search_object
  .type search_object, @function

#! file-offset 0x5f1e0
#! rip-offset  0x5f1e0
#! capacity    3392 bytes

# Text                                 #  Line  RIP      Bytes  
.search_object:                        #        0x5f1e0  0      
  pushq %r14                           #  1     0x5f1e0  3      
  movl %esi, %esi                      #  2     0x5f1e3  2      
  pushq %r13                           #  3     0x5f1e5  3      
  pushq %r12                           #  4     0x5f1e8  3      
  pushq %rbx                           #  5     0x5f1eb  2      
  movl %edi, %ebx                      #  6     0x5f1ed  2      
  subl $0x78, %esp                     #  7     0x5f1ef  3      
  addq %r15, %rsp                      #  8     0x5f1f2  3      
  movq %rsi, 0x40(%rsp)                #  9     0x5f1f5  5      
  movl %ebx, %ebx                      #  10    0x5f1fa  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  11    0x5f1fc  6      
  testb $0x1, %al                      #  12    0x5f202  2      
  je .L_5f380                          #  13    0x5f204  6      
  nop                                  #  14    0x5f20a  1      
  nop                                  #  15    0x5f20b  1      
.L_5f220:                              #        0x5f20c  0      
  testb $0x4, %al                      #  16    0x5f20c  2      
  je .L_5f7c0                          #  17    0x5f20e  6      
  movl %ebx, %ebx                      #  18    0x5f214  2      
  movl 0xc(%r15,%rbx,1), %eax          #  19    0x5f216  5      
  leal 0x68(%rsp), %ecx                #  20    0x5f21b  4      
  leal 0x6c(%rsp), %r8d                #  21    0x5f21f  5      
  movl $0x0, 0x10(%rsp)                #  22    0x5f224  8      
  movq %rbx, 0x30(%rsp)                #  23    0x5f22c  5      
  movq %rcx, 0x20(%rsp)                #  24    0x5f231  5      
  movq %r8, 0x28(%rsp)                 #  25    0x5f236  5      
  movl %eax, %eax                      #  26    0x5f23b  2      
  movl 0x4(%r15,%rax,1), %r14d         #  27    0x5f23d  5      
  movq %rax, 0x18(%rsp)                #  28    0x5f242  5      
  nop                                  #  29    0x5f247  1      
.L_5f260:                              #        0x5f248  0      
  cmpl %r14d, 0x10(%rsp)               #  30    0x5f248  5      
  jb .L_5f2a0                          #  31    0x5f24d  6      
  jmpq .L_5f8a0                        #  32    0x5f253  5      
  nop                                  #  33    0x5f258  1      
  nop                                  #  34    0x5f259  1      
.L_5f280:                              #        0x5f25a  0      
  cmpl 0x10(%rsp), %ebx                #  35    0x5f25a  4      
  jbe .L_5f8a0                         #  36    0x5f25e  6      
  movl %ebx, %r14d                     #  37    0x5f264  3      
  nop                                  #  38    0x5f267  1      
  nop                                  #  39    0x5f268  1      
.L_5f2a0:                              #        0x5f269  0      
  movl 0x10(%rsp), %eax                #  40    0x5f269  4      
  leal (%r14,%rax,1), %ebx             #  41    0x5f26d  4      
  shrl $0x1, %ebx                      #  42    0x5f271  2      
  leal (,%rbx,4), %eax                 #  43    0x5f273  7      
  cltq                                 #  44    0x5f27a  2      
  addq 0x18(%rsp), %rax                #  45    0x5f27c  5      
  movl %eax, %eax                      #  46    0x5f281  2      
  movl 0x8(%r15,%rax,1), %r12d         #  47    0x5f283  5      
  nop                                  #  48    0x5f288  1      
  movl %r12d, %edi                     #  49    0x5f289  3      
  movl %r12d, %r12d                    #  50    0x5f28c  3      
  subl 0x4(%r15,%r12,1), %edi          #  51    0x5f28f  5      
  addl $0x4, %edi                      #  52    0x5f294  3      
  nop                                  #  53    0x5f297  1      
  callq .get_cie_encoding              #  54    0x5f298  5      
  movl 0x30(%rsp), %esi                #  55    0x5f29d  4      
  movzbl %al, %r13d                    #  56    0x5f2a1  4      
  movl %r13d, %edi                     #  57    0x5f2a5  3      
  nop                                  #  58    0x5f2a8  1      
  nop                                  #  59    0x5f2a9  1      
  callq .base_from_object              #  60    0x5f2aa  5      
  movl 0x20(%rsp), %ecx                #  61    0x5f2af  4      
  leal 0x8(%r12), %edx                 #  62    0x5f2b3  5      
  movl %eax, %esi                      #  63    0x5f2b8  2      
  movl %r13d, %edi                     #  64    0x5f2ba  3      
  nop                                  #  65    0x5f2bd  1      
  callq .read_encoded_value_with_base  #  66    0x5f2be  5      
  movl 0x28(%rsp), %ecx                #  67    0x5f2c3  4      
  movl %r13d, %edi                     #  68    0x5f2c7  3      
  xorl %esi, %esi                      #  69    0x5f2ca  2      
  andl $0xf, %edi                      #  70    0x5f2cc  3      
  movl %eax, %edx                      #  71    0x5f2cf  2      
  nop                                  #  72    0x5f2d1  1      
  callq .read_encoded_value_with_base  #  73    0x5f2d2  5      
  movl 0x68(%rsp), %eax                #  74    0x5f2d7  4      
  cmpl 0x40(%rsp), %eax                #  75    0x5f2db  4      
  ja .L_5f280                          #  76    0x5f2df  6      
  addl 0x6c(%rsp), %eax                #  77    0x5f2e5  4      
  cmpl 0x40(%rsp), %eax                #  78    0x5f2e9  4      
  ja .L_5f7a0                          #  79    0x5f2ed  6      
  addl $0x1, %ebx                      #  80    0x5f2f3  3      
  nop                                  #  81    0x5f2f6  1      
  movl %ebx, 0x10(%rsp)                #  82    0x5f2f7  4      
  jmpq .L_5f260                        #  83    0x5f2fb  5      
  nop                                  #  84    0x5f300  1      
  nop                                  #  85    0x5f301  1      
.L_5f380:                              #        0x5f302  0      
  movl %ebx, %ebx                      #  86    0x5f302  2      
  movl 0x10(%r15,%rbx,1), %edx         #  87    0x5f304  5      
  movl %edx, %ecx                      #  88    0x5f309  2      
  shrl $0xb, %ecx                      #  89    0x5f30b  3      
  testl %ecx, %ecx                     #  90    0x5f30e  2      
  movl %ecx, 0x54(%rsp)                #  91    0x5f310  4      
  je .L_5f660                          #  92    0x5f314  6      
  nop                                  #  93    0x5f31a  1      
.L_5f3a0:                              #        0x5f31b  0      
  movl 0x54(%rsp), %r8d                #  94    0x5f31b  5      
  leal 0x8(,%r8,4), %r12d              #  95    0x5f320  8      
  movl %r12d, %edi                     #  96    0x5f328  3      
  nop                                  #  97    0x5f32b  1      
  callq .malloc                        #  98    0x5f32c  5      
  movl %eax, %eax                      #  99    0x5f331  2      
  testq %rax, %rax                     #  100   0x5f333  3      
  movl %eax, 0x60(%rsp)                #  101   0x5f336  4      
  je .L_5f740                          #  102   0x5f33a  6      
  movl %eax, %eax                      #  103   0x5f340  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  104   0x5f342  9      
  movl %r12d, %edi                     #  105   0x5f34b  3      
  nop                                  #  106   0x5f34e  1      
  nop                                  #  107   0x5f34f  1      
  nop                                  #  108   0x5f350  1      
  callq .malloc                        #  109   0x5f351  5      
  movl %eax, %eax                      #  110   0x5f356  2      
  testq %rax, %rax                     #  111   0x5f358  3      
  movl %eax, 0x64(%rsp)                #  112   0x5f35b  4      
  je .L_5f420                          #  113   0x5f35f  6      
  movl %eax, %eax                      #  114   0x5f365  2      
  movl $0x0, 0x4(%r15,%rax,1)          #  115   0x5f367  9      
  nop                                  #  116   0x5f370  1      
.L_5f420:                              #        0x5f371  0      
  movl %ebx, %ebx                      #  117   0x5f371  2      
  testb $0x2, 0x10(%r15,%rbx,1)        #  118   0x5f373  6      
  je .L_5fda0                          #  119   0x5f379  6      
  movl %ebx, %ebx                      #  120   0x5f37f  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  121   0x5f381  5      
  movl %r12d, %r12d                    #  122   0x5f386  3      
  movl (%r15,%r12,1), %edx             #  123   0x5f389  4      
  testq %rdx, %rdx                     #  124   0x5f38d  3      
  nop                                  #  125   0x5f390  1      
  je .L_5f4a0                          #  126   0x5f391  6      
  leal 0x60(%rsp), %r13d               #  127   0x5f397  5      
  nop                                  #  128   0x5f39c  1      
  nop                                  #  129   0x5f39d  1      
.L_5f460:                              #        0x5f39e  0      
  addl $0x4, %r12d                     #  130   0x5f39e  4      
  movl %r13d, %esi                     #  131   0x5f3a2  3      
  movl %ebx, %edi                      #  132   0x5f3a5  2      
  nop                                  #  133   0x5f3a7  1      
  nop                                  #  134   0x5f3a8  1      
  callq .add_fdes                      #  135   0x5f3a9  5      
  movl %r12d, %r12d                    #  136   0x5f3ae  3      
  movl (%r15,%r12,1), %edx             #  137   0x5f3b1  4      
  testq %rdx, %rdx                     #  138   0x5f3b5  3      
  jne .L_5f460                         #  139   0x5f3b8  6      
  nop                                  #  140   0x5f3be  1      
  nop                                  #  141   0x5f3bf  1      
.L_5f4a0:                              #        0x5f3c0  0      
  movl 0x60(%rsp), %eax                #  142   0x5f3c0  4      
  testq %rax, %rax                     #  143   0x5f3c4  3      
  movq %rax, 0x38(%rsp)                #  144   0x5f3c7  5      
  je .L_5f4c0                          #  145   0x5f3cc  6      
  movl 0x54(%rsp), %edx                #  146   0x5f3d2  4      
  movl %eax, %eax                      #  147   0x5f3d6  2      
  cmpl 0x4(%r15,%rax,1), %edx          #  148   0x5f3d8  5      
  jne .L_5ff00                         #  149   0x5f3dd  6      
  nop                                  #  150   0x5f3e3  1      
.L_5f4c0:                              #        0x5f3e4  0      
  movl %ebx, %ebx                      #  151   0x5f3e4  2      
  testb $0x4, 0x10(%r15,%rbx,1)        #  152   0x5f3e6  6      
  leal -0x72f(%rip), %r12d             #  153   0x5f3ec  7      
  jne .L_5f500                         #  154   0x5f3f3  6      
  movl %ebx, %ebx                      #  155   0x5f3f9  2      
  testw $0x7f8, 0x10(%r15,%rbx,1)      #  156   0x5f3fb  8      
  nop                                  #  157   0x5f403  1      
  leal -0x827(%rip), %r12d             #  158   0x5f404  7      
  leal -0x15cd(%rip), %eax             #  159   0x5f40b  6      
  cmoveq %rax, %r12                    #  160   0x5f411  4      
  nop                                  #  161   0x5f415  1      
.L_5f500:                              #        0x5f416  0      
  movl 0x64(%rsp), %ecx                #  162   0x5f416  4      
  testq %rcx, %rcx                     #  163   0x5f41a  3      
  movq %rcx, 0x10(%rsp)                #  164   0x5f41d  5      
  je .L_5fec0                          #  165   0x5f422  6      
  movq 0x38(%rsp), %r8                 #  166   0x5f428  5      
  movl %r8d, %r8d                      #  167   0x5f42d  3      
  movl 0x4(%r15,%r8,1), %r8d           #  168   0x5f430  5      
  nop                                  #  169   0x5f435  1      
  testl %r8d, %r8d                     #  170   0x5f436  3      
  movl %r8d, 0x48(%rsp)                #  171   0x5f439  5      
  je .L_5fe80                          #  172   0x5f43e  6      
  movl 0x38(%rsp), %eax                #  173   0x5f444  4      
  movl 0x10(%rsp), %edx                #  174   0x5f448  4      
  leal 0xffd7317(%rip), %r13d          #  175   0x5f44c  7      
  nop                                  #  176   0x5f453  1      
  movl 0x38(%rsp), %ecx                #  177   0x5f454  4      
  addl $0x8, %eax                      #  178   0x5f458  3      
  movl %edx, 0x5c(%rsp)                #  179   0x5f45b  4      
  movl %edx, 0x28(%rsp)                #  180   0x5f45f  4      
  movl %eax, 0x18(%rsp)                #  181   0x5f463  4      
  movl %ecx, 0x58(%rsp)                #  182   0x5f467  4      
  xorl %eax, %eax                      #  183   0x5f46b  2      
  movl %ecx, 0x30(%rsp)                #  184   0x5f46d  4      
  nop                                  #  185   0x5f471  1      
.L_5f560:                              #        0x5f472  0      
  leal 0x1(%rax), %ecx                 #  186   0x5f472  3      
  movl 0x28(%rsp), %edx                #  187   0x5f475  4      
  cmpl %ecx, 0x48(%rsp)                #  188   0x5f479  4      
  movl %ecx, 0x20(%rsp)                #  189   0x5f47d  4      
  movl %edx, %edx                      #  190   0x5f481  2      
  movl %r13d, 0x8(%r15,%rdx,1)         #  191   0x5f483  5      
  jbe .L_5fa60                         #  192   0x5f488  6      
  nop                                  #  193   0x5f48e  1      
  movl 0x38(%rsp), %r8d                #  194   0x5f48f  5      
  leal 0x8(%r8,%rax,4), %r13d          #  195   0x5f494  5      
  leal 0xffd72c4(%rip), %eax           #  196   0x5f499  6      
  cmpl %eax, %r13d                     #  197   0x5f49f  3      
  je .L_5f640                          #  198   0x5f4a2  6      
  movl 0x30(%rsp), %r14d               #  199   0x5f4a8  5      
  xchgw %ax, %ax                       #  200   0x5f4ad  3      
  addq $0xc, %r14                      #  201   0x5f4b0  4      
  jmpq .L_5f600                        #  202   0x5f4b4  5      
  nop                                  #  203   0x5f4b9  1      
  nop                                  #  204   0x5f4ba  1      
.L_5f5c0:                              #        0x5f4bb  0      
  subl 0x18(%rsp), %r13d               #  205   0x5f4bb  5      
  movq 0x10(%rsp), %rax                #  206   0x5f4c0  5      
  leal 0xffd7284(%rip), %edx           #  207   0x5f4c5  6      
  andl $0xfffffffc, %r13d              #  208   0x5f4cb  7      
  movslq %r13d, %r13                   #  209   0x5f4d2  3      
  addq %r13, %rax                      #  210   0x5f4d5  3      
  nop                                  #  211   0x5f4d8  1      
  movl %eax, %eax                      #  212   0x5f4d9  2      
  movl 0x8(%r15,%rax,1), %r13d         #  213   0x5f4db  5      
  movl %eax, %eax                      #  214   0x5f4e0  2      
  movl $0x0, 0x8(%r15,%rax,1)          #  215   0x5f4e2  9      
  cmpl %edx, %r13d                     #  216   0x5f4eb  3      
  je .L_5f640                          #  217   0x5f4ee  6      
  nop                                  #  218   0x5f4f4  1      
.L_5f600:                              #        0x5f4f5  0      
  movl %r13d, %r13d                    #  219   0x5f4f5  3      
  movl (%r15,%r13,1), %edx             #  220   0x5f4f8  4      
  movl %r14d, %r14d                    #  221   0x5f4fc  3      
  movl (%r15,%r14,1), %esi             #  222   0x5f4ff  4      
  movl %ebx, %edi                      #  223   0x5f503  2      
  nop                                  #  224   0x5f505  1      
  andl $0xffffffe0, %r12d              #  225   0x5f506  7      
  addq %r15, %r12                      #  226   0x5f50d  3      
  callq %r12                           #  227   0x5f510  3      
  testl %eax, %eax                     #  228   0x5f513  2      
  js .L_5f5c0                          #  229   0x5f515  6      
  nop                                  #  230   0x5f51b  1      
  nop                                  #  231   0x5f51c  1      
.L_5f640:                              #        0x5f51d  0      
  addl $0x4, 0x28(%rsp)                #  232   0x5f51d  5      
  addl $0x4, 0x30(%rsp)                #  233   0x5f522  5      
  movl 0x20(%rsp), %eax                #  234   0x5f527  4      
  jmpq .L_5f560                        #  235   0x5f52b  5      
  nop                                  #  236   0x5f530  1      
.L_5f660:                              #        0x5f531  0      
  testb $0x2, %al                      #  237   0x5f531  2      
  je .L_5f8c0                          #  238   0x5f533  6      
  movl %ebx, %ebx                      #  239   0x5f539  2      
  movl 0xc(%r15,%rbx,1), %r12d         #  240   0x5f53b  5      
  movl %r12d, %r12d                    #  241   0x5f540  3      
  movl (%r15,%r12,1), %esi             #  242   0x5f543  4      
  testq %rsi, %rsi                     #  243   0x5f547  3      
  je .L_5fea0                          #  244   0x5f54a  6      
  nop                                  #  245   0x5f550  1      
  movl %ecx, %r13d                     #  246   0x5f551  3      
  nop                                  #  247   0x5f554  1      
  nop                                  #  248   0x5f555  1      
.L_5f6a0:                              #        0x5f556  0      
  addl $0x4, %r12d                     #  249   0x5f556  4      
  movl %ebx, %edi                      #  250   0x5f55a  2      
  nop                                  #  251   0x5f55c  1      
  nop                                  #  252   0x5f55d  1      
  callq .classify_object_over_fdes     #  253   0x5f55e  5      
  movl %r12d, %r12d                    #  254   0x5f563  3      
  movl (%r15,%r12,1), %esi             #  255   0x5f566  4      
  addl %eax, %r13d                     #  256   0x5f56a  3      
  testq %rsi, %rsi                     #  257   0x5f56d  3      
  jne .L_5f6a0                         #  258   0x5f570  6      
  movl %r13d, 0x54(%rsp)               #  259   0x5f576  5      
  nop                                  #  260   0x5f57b  1      
.L_5f6e0:                              #        0x5f57c  0      
  movl 0x54(%rsp), %edx                #  261   0x5f57c  4      
  movl %ebx, %ebx                      #  262   0x5f580  2      
  movl 0x10(%r15,%rbx,1), %eax         #  263   0x5f582  5      
  andl $0x1fffff, %edx                 #  264   0x5f587  6      
  andl $0x7ff, %eax                    #  265   0x5f58d  5      
  movl %edx, %ecx                      #  266   0x5f592  2      
  shll $0xb, %ecx                      #  267   0x5f594  3      
  orl %ecx, %eax                       #  268   0x5f597  2      
  nop                                  #  269   0x5f599  1      
  movl %ebx, %ebx                      #  270   0x5f59a  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  271   0x5f59c  5      
  cmpl %edx, 0x54(%rsp)                #  272   0x5f5a1  4      
  je .L_5f720                          #  273   0x5f5a5  6      
  andl $0x7ff, %eax                    #  274   0x5f5ab  5      
  movl %ebx, %ebx                      #  275   0x5f5b0  2      
  movl %eax, 0x10(%r15,%rbx,1)         #  276   0x5f5b2  5      
  nop                                  #  277   0x5f5b7  1      
.L_5f720:                              #        0x5f5b8  0      
  movl 0x54(%rsp), %r9d                #  278   0x5f5b8  5      
  testl %r9d, %r9d                     #  279   0x5f5bd  3      
  jne .L_5f3a0                         #  280   0x5f5c0  6      
  nop                                  #  281   0x5f5c6  1      
  nop                                  #  282   0x5f5c7  1      
.L_5f740:                              #        0x5f5c8  0      
  movl 0x40(%rsp), %r8d                #  283   0x5f5c8  5      
  movl %ebx, %ebx                      #  284   0x5f5cd  2      
  cmpl %r8d, (%r15,%rbx,1)             #  285   0x5f5cf  4      
  ja .L_5f8a0                          #  286   0x5f5d3  6      
  movl %ebx, %ebx                      #  287   0x5f5d9  2      
  movzbl 0x10(%r15,%rbx,1), %eax       #  288   0x5f5db  6      
  testb $0x1, %al                      #  289   0x5f5e1  2      
  nop                                  #  290   0x5f5e3  1      
  jne .L_5f220                         #  291   0x5f5e4  6      
  testb $0x2, %al                      #  292   0x5f5ea  2      
  jne .L_5fde0                         #  293   0x5f5ec  6      
  movl %ebx, %ebx                      #  294   0x5f5f2  2      
  movl 0xc(%r15,%rbx,1), %esi          #  295   0x5f5f4  5      
  movl 0x40(%rsp), %edx                #  296   0x5f5f9  4      
  movl %ebx, %edi                      #  297   0x5f5fd  2      
  callq .linear_search_fdes            #  298   0x5f5ff  5      
  movl %eax, %r12d                     #  299   0x5f604  3      
  nop                                  #  300   0x5f607  1      
  nop                                  #  301   0x5f608  1      
.L_5f7a0:                              #        0x5f609  0      
  addl $0x78, %esp                     #  302   0x5f609  3      
  addq %r15, %rsp                      #  303   0x5f60c  3      
  movl %r12d, %eax                     #  304   0x5f60f  3      
  popq %rbx                            #  305   0x5f612  2      
  popq %r12                            #  306   0x5f614  3      
  popq %r13                            #  307   0x5f617  3      
  popq %r14                            #  308   0x5f61a  3      
  popq %r11                            #  309   0x5f61d  3      
  andl $0xffffffe0, %r11d              #  310   0x5f620  7      
  addq %r15, %r11                      #  311   0x5f627  3      
  jmpq %r11                            #  312   0x5f62a  3      
  nop                                  #  313   0x5f62d  1      
.L_5f7c0:                              #        0x5f62e  0      
  movl %ebx, %ebx                      #  314   0x5f62e  2      
  movzwl 0x10(%r15,%rbx,1), %eax       #  315   0x5f630  6      
  testw $0x7f8, %ax                    #  316   0x5f636  4      
  jne .L_5f900                         #  317   0x5f63a  6      
  movl %ebx, %ebx                      #  318   0x5f640  2      
  movl 0xc(%r15,%rbx,1), %edi          #  319   0x5f642  5      
  movq 0x40(%rsp), %r8                 #  320   0x5f647  5      
  xorl %ecx, %ecx                      #  321   0x5f64c  2      
  movl %edi, %edi                      #  322   0x5f64e  2      
  movl 0x4(%r15,%rdi,1), %esi          #  323   0x5f650  5      
  nop                                  #  324   0x5f655  1      
  nop                                  #  325   0x5f656  1      
.L_5f800:                              #        0x5f657  0      
  cmpl %esi, %ecx                      #  326   0x5f657  2      
  jae .L_5f8a0                         #  327   0x5f659  6      
  leal (%rsi,%rcx,1), %eax             #  328   0x5f65f  3      
  jmpq .L_5f840                        #  329   0x5f662  5      
  nop                                  #  330   0x5f667  1      
  nop                                  #  331   0x5f668  1      
.L_5f820:                              #        0x5f669  0      
  cmpl %eax, %ecx                      #  332   0x5f669  2      
  movl %eax, %esi                      #  333   0x5f66b  2      
  jae .L_5f8a0                         #  334   0x5f66d  6      
  addl %ecx, %eax                      #  335   0x5f673  2      
  nop                                  #  336   0x5f675  1      
  nop                                  #  337   0x5f676  1      
.L_5f840:                              #        0x5f677  0      
  shrl $0x1, %eax                      #  338   0x5f677  2      
  leal (,%rax,4), %edx                 #  339   0x5f679  7      
  movslq %edx, %rdx                    #  340   0x5f680  3      
  leaq (%rdi,%rdx,1), %rdx             #  341   0x5f683  4      
  movl %edx, %edx                      #  342   0x5f687  2      
  movl 0x8(%r15,%rdx,1), %r12d         #  343   0x5f689  5      
  leal 0x8(%r12), %edx                 #  344   0x5f68e  5      
  nop                                  #  345   0x5f693  1      
  movl %edx, %edx                      #  346   0x5f694  2      
  movl (%r15,%rdx,1), %ebx             #  347   0x5f696  4      
  movl %edx, %edx                      #  348   0x5f69a  2      
  movl 0x4(%r15,%rdx,1), %edx          #  349   0x5f69c  5      
  cmpl %ebx, %r8d                      #  350   0x5f6a1  3      
  jb .L_5f820                          #  351   0x5f6a4  6      
  addl %ebx, %edx                      #  352   0x5f6aa  2      
  cmpl %r8d, %edx                      #  353   0x5f6ac  3      
  ja .L_5f7a0                          #  354   0x5f6af  6      
  leal 0x1(%rax), %ecx                 #  355   0x5f6b5  3      
  jmpq .L_5f800                        #  356   0x5f6b8  5      
  nop                                  #  357   0x5f6bd  1      
  nop                                  #  358   0x5f6be  1      
.L_5f8a0:                              #        0x5f6bf  0      
  xorl %r12d, %r12d                    #  359   0x5f6bf  3      
  jmpq .L_5f7a0                        #  360   0x5f6c2  5      
  nop                                  #  361   0x5f6c7  1      
  nop                                  #  362   0x5f6c8  1      
.L_5f8c0:                              #        0x5f6c9  0      
  movl %ebx, %ebx                      #  363   0x5f6c9  2      
  movl 0xc(%r15,%rbx,1), %esi          #  364   0x5f6cb  5      
  movl %ebx, %edi                      #  365   0x5f6d0  2      
  nop                                  #  366   0x5f6d2  1      
  nop                                  #  367   0x5f6d3  1      
  callq .classify_object_over_fdes     #  368   0x5f6d4  5      
  movl %eax, 0x54(%rsp)                #  369   0x5f6d9  4      
  jmpq .L_5f6e0                        #  370   0x5f6dd  5      
  nop                                  #  371   0x5f6e2  1      
  nop                                  #  372   0x5f6e3  1      
.L_5f900:                              #        0x5f6e4  0      
  movl %ebx, %ebx                      #  373   0x5f6e4  2      
  movl 0xc(%r15,%rbx,1), %edx          #  374   0x5f6e6  5      
  shrw $0x3, %ax                       #  375   0x5f6eb  4      
  movl %ebx, %esi                      #  376   0x5f6ef  2      
  movzbl %al, %eax                     #  377   0x5f6f1  3      
  xorl %r14d, %r14d                    #  378   0x5f6f4  3      
  movl %eax, %edi                      #  379   0x5f6f7  2      
  movl %eax, 0x10(%rsp)                #  380   0x5f6f9  4      
  movq %rdx, 0x18(%rsp)                #  381   0x5f6fd  5      
  xchgw %ax, %ax                       #  382   0x5f702  3      
  nop                                  #  383   0x5f705  1      
  nop                                  #  384   0x5f706  1      
  callq .base_from_object              #  385   0x5f707  5      
  movq 0x18(%rsp), %rcx                #  386   0x5f70c  5      
  movl 0x10(%rsp), %r8d                #  387   0x5f711  5      
  leal 0x68(%rsp), %edx                #  388   0x5f716  4      
  movl %eax, 0x20(%rsp)                #  389   0x5f71a  4      
  movq %rdx, 0x30(%rsp)                #  390   0x5f71e  5      
  movl %ecx, %ecx                      #  391   0x5f723  2      
  movl 0x4(%r15,%rcx,1), %r13d         #  392   0x5f725  5      
  xchgw %ax, %ax                       #  393   0x5f72a  3      
  leal 0x6c(%rsp), %ecx                #  394   0x5f72d  4      
  andl $0xf, %r8d                      #  395   0x5f731  4      
  movl %r8d, 0x28(%rsp)                #  396   0x5f735  5      
  movq %rcx, 0x38(%rsp)                #  397   0x5f73a  5      
  nop                                  #  398   0x5f73f  1      
.L_5f980:                              #        0x5f740  0      
  cmpl %r13d, %r14d                    #  399   0x5f740  3      
  jb .L_5f9c0                          #  400   0x5f743  6      
  jmpq .L_5f8a0                        #  401   0x5f749  5      
  nop                                  #  402   0x5f74e  1      
  nop                                  #  403   0x5f74f  1      
.L_5f9a0:                              #        0x5f750  0      
  cmpl %r14d, %ebx                     #  404   0x5f750  3      
  jbe .L_5f8a0                         #  405   0x5f753  6      
  movl %ebx, %r13d                     #  406   0x5f759  3      
  nop                                  #  407   0x5f75c  1      
  nop                                  #  408   0x5f75d  1      
.L_5f9c0:                              #        0x5f75e  0      
  leal (%r13,%r14,1), %ebx             #  409   0x5f75e  5      
  movl 0x38(%rsp), %ecx                #  410   0x5f763  4      
  movl 0x20(%rsp), %esi                #  411   0x5f767  4      
  movl 0x10(%rsp), %edi                #  412   0x5f76b  4      
  shrl $0x1, %ebx                      #  413   0x5f76f  2      
  leal (,%rbx,4), %eax                 #  414   0x5f771  7      
  cltq                                 #  415   0x5f778  2      
  nop                                  #  416   0x5f77a  1      
  addq 0x18(%rsp), %rax                #  417   0x5f77b  5      
  movl %eax, %eax                      #  418   0x5f780  2      
  movl 0x8(%r15,%rax,1), %r12d         #  419   0x5f782  5      
  leal 0x8(%r12), %edx                 #  420   0x5f787  5      
  nop                                  #  421   0x5f78c  1      
  callq .read_encoded_value_with_base  #  422   0x5f78d  5      
  movl 0x30(%rsp), %ecx                #  423   0x5f792  4      
  movl 0x28(%rsp), %edi                #  424   0x5f796  4      
  xorl %esi, %esi                      #  425   0x5f79a  2      
  movl %eax, %edx                      #  426   0x5f79c  2      
  nop                                  #  427   0x5f79e  1      
  callq .read_encoded_value_with_base  #  428   0x5f79f  5      
  movl 0x6c(%rsp), %eax                #  429   0x5f7a4  4      
  cmpl 0x40(%rsp), %eax                #  430   0x5f7a8  4      
  ja .L_5f9a0                          #  431   0x5f7ac  6      
  addl 0x68(%rsp), %eax                #  432   0x5f7b2  4      
  cmpl 0x40(%rsp), %eax                #  433   0x5f7b6  4      
  ja .L_5f7a0                          #  434   0x5f7ba  6      
  leal 0x1(%rbx), %r14d                #  435   0x5f7c0  4      
  jmpq .L_5f980                        #  436   0x5f7c4  5      
  nop                                  #  437   0x5f7c9  1      
  nop                                  #  438   0x5f7ca  1      
.L_5fa60:                              #        0x5f7cb  0      
  xorl %edi, %edi                      #  439   0x5f7cb  2      
  xorl %ecx, %ecx                      #  440   0x5f7cd  2      
  xorl %eax, %eax                      #  441   0x5f7cf  2      
  movq 0x38(%rsp), %r11                #  442   0x5f7d1  5      
  movl 0x58(%rsp), %esi                #  443   0x5f7d6  4      
  movl 0x5c(%rsp), %edx                #  444   0x5f7da  4      
  movl 0x48(%rsp), %r10d               #  445   0x5f7de  5      
  jmpq .L_5fac0                        #  446   0x5f7e3  5      
  nop                                  #  447   0x5f7e8  1      
.L_5fa80:                              #        0x5f7e9  0      
  leal (,%rcx,4), %r8d                 #  448   0x5f7e9  8      
  movl %esi, %r9d                      #  449   0x5f7f1  3      
  addl $0x1, %eax                      #  450   0x5f7f4  3      
  movl %r9d, %r9d                      #  451   0x5f7f7  3      
  movl 0x8(%r15,%r9,1), %r9d           #  452   0x5f7fa  5      
  addl $0x1, %ecx                      #  453   0x5f7ff  3      
  addl $0x4, %edx                      #  454   0x5f802  3      
  movslq %r8d, %r8                     #  455   0x5f805  3      
  nop                                  #  456   0x5f808  1      
  addl $0x4, %esi                      #  457   0x5f809  3      
  cmpl %eax, %r10d                     #  458   0x5f80c  3      
  leaq (%r11,%r8,1), %r8               #  459   0x5f80f  4      
  movl %r8d, %r8d                      #  460   0x5f813  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  461   0x5f816  5      
  jbe .L_5fb20                         #  462   0x5f81b  6      
  nop                                  #  463   0x5f821  1      
.L_5fac0:                              #        0x5f822  0      
  movl %edx, %r8d                      #  464   0x5f822  3      
  movl %r8d, %r8d                      #  465   0x5f825  3      
  movl 0x8(%r15,%r8,1), %r8d           #  466   0x5f828  5      
  testl %r8d, %r8d                     #  467   0x5f82d  3      
  jne .L_5fa80                         #  468   0x5f830  6      
  leal (,%rdi,4), %r8d                 #  469   0x5f836  8      
  movl %esi, %r9d                      #  470   0x5f83e  3      
  addl $0x1, %eax                      #  471   0x5f841  3      
  xchgw %ax, %ax                       #  472   0x5f844  3      
  movl %r9d, %r9d                      #  473   0x5f847  3      
  movl 0x8(%r15,%r9,1), %r9d           #  474   0x5f84a  5      
  addl $0x1, %edi                      #  475   0x5f84f  3      
  addl $0x4, %edx                      #  476   0x5f852  3      
  movslq %r8d, %r8                     #  477   0x5f855  3      
  addq 0x10(%rsp), %r8                 #  478   0x5f858  5      
  addl $0x4, %esi                      #  479   0x5f85d  3      
  cmpl %eax, %r10d                     #  480   0x5f860  3      
  nop                                  #  481   0x5f863  1      
  movl %r8d, %r8d                      #  482   0x5f864  3      
  movl %r9d, 0x8(%r15,%r8,1)           #  483   0x5f867  5      
  ja .L_5fac0                          #  484   0x5f86c  6      
  nop                                  #  485   0x5f872  1      
  nop                                  #  486   0x5f873  1      
.L_5fb20:                              #        0x5f874  0      
  movl 0x60(%rsp), %esi                #  487   0x5f874  4      
  movl 0x64(%rsp), %edx                #  488   0x5f878  4      
  nop                                  #  489   0x5f87c  1      
  nop                                  #  490   0x5f87d  1      
.L_5fb40:                              #        0x5f87e  0      
  movq 0x10(%rsp), %rax                #  491   0x5f87e  5      
  movq 0x38(%rsp), %r8                 #  492   0x5f883  5      
  movl %r8d, %r8d                      #  493   0x5f888  3      
  movl %ecx, 0x4(%r15,%r8,1)           #  494   0x5f88b  5      
  movl %eax, %eax                      #  495   0x5f890  2      
  movl %edi, 0x4(%r15,%rax,1)          #  496   0x5f892  5      
  movl %edx, %edx                      #  497   0x5f897  2      
  movl 0x4(%r15,%rdx,1), %eax          #  498   0x5f899  5      
  movl %esi, %esi                      #  499   0x5f89e  2      
  addl 0x4(%r15,%rsi,1), %eax          #  500   0x5f8a0  5      
  cmpl %eax, 0x54(%rsp)                #  501   0x5f8a5  4      
  jne .L_5ff00                         #  502   0x5f8a9  6      
  movl %r12d, %esi                     #  503   0x5f8af  3      
  movl %ebx, %edi                      #  504   0x5f8b2  2      
  nop                                  #  505   0x5f8b4  1      
  callq .frame_heapsort                #  506   0x5f8b5  5      
  movl 0x64(%rsp), %edx                #  507   0x5f8ba  4      
  movl 0x60(%rsp), %ecx                #  508   0x5f8be  4      
  movl %edx, %edx                      #  509   0x5f8c2  2      
  movl 0x4(%r15,%rdx,1), %r9d          #  510   0x5f8c4  5      
  movq %rdx, 0x48(%rsp)                #  511   0x5f8c9  5      
  movq %rcx, 0x30(%rsp)                #  512   0x5f8ce  5      
  testl %r9d, %r9d                     #  513   0x5f8d3  3      
  nop                                  #  514   0x5f8d6  1      
  je .L_5fd40                          #  515   0x5f8d7  6      
  leal 0x4(%rdx,%r9,4), %eax           #  516   0x5f8dd  5      
  movl %ecx, %ecx                      #  517   0x5f8e2  2      
  movl 0x4(%r15,%rcx,1), %ecx          #  518   0x5f8e4  5      
  movq %r12, 0x20(%rsp)                #  519   0x5f8e9  5      
  movq %rbx, 0x18(%rsp)                #  520   0x5f8ee  5      
  movl %eax, 0x38(%rsp)                #  521   0x5f8f3  4      
.L_5fbc0:                              #        0x5f8f7  0      
  movl 0x38(%rsp), %eax                #  522   0x5f8f7  4      
  leal -0x1(%r9), %edx                 #  523   0x5f8fb  4      
  testl %ecx, %ecx                     #  524   0x5f8ff  2      
  movl %edx, 0x28(%rsp)                #  525   0x5f901  4      
  movl %eax, %eax                      #  526   0x5f905  2      
  movl (%r15,%rax,1), %eax             #  527   0x5f907  4      
  movq %rax, 0x10(%rsp)                #  528   0x5f90b  5      
  je .L_5fca0                          #  529   0x5f910  6      
  nop                                  #  530   0x5f916  1      
  movl 0x30(%rsp), %r8d                #  531   0x5f917  5      
  leal 0x3fffffff(%rcx,%r9,1), %r9d    #  532   0x5f91c  8      
  movl %r8d, %eax                      #  533   0x5f924  3      
  leal 0x4(%r8,%rcx,4), %r12d          #  534   0x5f927  5      
  leal 0x8(%rax,%r9,4), %r14d          #  535   0x5f92c  5      
  jmpq .L_5fc40                        #  536   0x5f931  5      
  nop                                  #  537   0x5f936  1      
.L_5fc00:                              #        0x5f937  0      
  movl %r13d, %r13d                    #  538   0x5f937  3      
  movl (%r15,%r13,1), %edx             #  539   0x5f93a  4      
  movl %r14d, %eax                     #  540   0x5f93e  3      
  subl $0x4, %r12d                     #  541   0x5f941  4      
  subl $0x4, %r14d                     #  542   0x5f945  4      
  testl %ebx, %ebx                     #  543   0x5f949  2      
  movl %eax, %eax                      #  544   0x5f94b  2      
  movl %edx, (%r15,%rax,1)             #  545   0x5f94d  4      
  je .L_5fcc0                          #  546   0x5f951  6      
  movl %ebx, %ecx                      #  547   0x5f957  2      
  nop                                  #  548   0x5f959  1      
  nop                                  #  549   0x5f95a  1      
.L_5fc40:                              #        0x5f95b  0      
  movl %r12d, %r13d                    #  550   0x5f95b  3      
  leal -0x1(%rcx), %ebx                #  551   0x5f95e  3      
  movl %ecx, 0x8(%rsp)                 #  552   0x5f961  4      
  movl 0x10(%rsp), %edx                #  553   0x5f965  4      
  movl %r13d, %r13d                    #  554   0x5f969  3      
  movl (%r15,%r13,1), %esi             #  555   0x5f96c  4      
  movl 0x18(%rsp), %edi                #  556   0x5f970  4      
  movq 0x20(%rsp), %r8                 #  557   0x5f974  5      
  xchgw %ax, %ax                       #  558   0x5f979  3      
  nop                                  #  559   0x5f97c  1      
  nop                                  #  560   0x5f97d  1      
  andl $0xffffffe0, %r8d               #  561   0x5f97e  7      
  addq %r15, %r8                       #  562   0x5f985  3      
  callq %r8                            #  563   0x5f988  3      
  testl %eax, %eax                     #  564   0x5f98b  2      
  movl 0x8(%rsp), %ecx                 #  565   0x5f98d  4      
  jg .L_5fc00                          #  566   0x5f991  6      
  nop                                  #  567   0x5f997  1      
  nop                                  #  568   0x5f998  1      
.L_5fca0:                              #        0x5f999  0      
  movl %ecx, %ebx                      #  569   0x5f999  2      
  nop                                  #  570   0x5f99b  1      
  nop                                  #  571   0x5f99c  1      
.L_5fcc0:                              #        0x5f99d  0      
  movl 0x28(%rsp), %edx                #  572   0x5f99d  4      
  movl 0x10(%rsp), %ecx                #  573   0x5f9a1  4      
  subl $0x4, 0x38(%rsp)                #  574   0x5f9a5  5      
  leal (%rbx,%rdx,1), %eax             #  575   0x5f9aa  3      
  shll $0x2, %eax                      #  576   0x5f9ad  3      
  cltq                                 #  577   0x5f9b0  2      
  addq 0x30(%rsp), %rax                #  578   0x5f9b2  5      
  testl %edx, %edx                     #  579   0x5f9b7  2      
  nop                                  #  580   0x5f9b9  1      
  movl %eax, %eax                      #  581   0x5f9ba  2      
  movl %ecx, 0x8(%r15,%rax,1)          #  582   0x5f9bc  5      
  je .L_5fd00                          #  583   0x5f9c1  6      
  movl %edx, %r9d                      #  584   0x5f9c7  3      
  movl %ebx, %ecx                      #  585   0x5f9ca  2      
  jmpq .L_5fbc0                        #  586   0x5f9cc  5      
  nop                                  #  587   0x5f9d1  1      
.L_5fd00:                              #        0x5f9d2  0      
  movq 0x48(%rsp), %r8                 #  588   0x5f9d2  5      
  movq 0x30(%rsp), %rdx                #  589   0x5f9d7  5      
  movl 0x64(%rsp), %ecx                #  590   0x5f9dc  4      
  movq 0x18(%rsp), %rbx                #  591   0x5f9e0  5      
  movl %r8d, %r8d                      #  592   0x5f9e5  3      
  movl 0x4(%r15,%r8,1), %eax           #  593   0x5f9e8  5      
  nop                                  #  594   0x5f9ed  1      
  movl %edx, %edx                      #  595   0x5f9ee  2      
  addl %eax, 0x4(%r15,%rdx,1)          #  596   0x5f9f0  5      
  movq %rcx, 0x48(%rsp)                #  597   0x5f9f5  5      
  nop                                  #  598   0x5f9fa  1      
  nop                                  #  599   0x5f9fb  1      
.L_5fd40:                              #        0x5f9fc  0      
  movl 0x48(%rsp), %edi                #  600   0x5f9fc  4      
  nop                                  #  601   0x5fa00  1      
  nop                                  #  602   0x5fa01  1      
  callq .free                          #  603   0x5fa02  5      
.L_5fd60:                              #        0x5fa07  0      
  movl 0x60(%rsp), %eax                #  604   0x5fa07  4      
  movl %ebx, %ebx                      #  605   0x5fa0b  2      
  movl 0xc(%r15,%rbx,1), %edx          #  606   0x5fa0d  5      
  movl %eax, %eax                      #  607   0x5fa12  2      
  movl %edx, (%r15,%rax,1)             #  608   0x5fa14  4      
  movl %ebx, %ebx                      #  609   0x5fa18  2      
  movl %eax, 0xc(%r15,%rbx,1)          #  610   0x5fa1a  5      
  movl %ebx, %ebx                      #  611   0x5fa1f  2      
  orb $0x1, 0x10(%r15,%rbx,1)          #  612   0x5fa21  6      
  jmpq .L_5f740                        #  613   0x5fa27  5      
  nop                                  #  614   0x5fa2c  1      
  nop                                  #  615   0x5fa2d  1      
.L_5fda0:                              #        0x5fa2e  0      
  movl %ebx, %ebx                      #  616   0x5fa2e  2      
  movl 0xc(%r15,%rbx,1), %edx          #  617   0x5fa30  5      
  leal 0x60(%rsp), %esi                #  618   0x5fa35  4      
  movl %ebx, %edi                      #  619   0x5fa39  2      
  nop                                  #  620   0x5fa3b  1      
  callq .add_fdes                      #  621   0x5fa3c  5      
  jmpq .L_5f4a0                        #  622   0x5fa41  5      
  nop                                  #  623   0x5fa46  1      
  nop                                  #  624   0x5fa47  1      
.L_5fde0:                              #        0x5fa48  0      
  movl %ebx, %ebx                      #  625   0x5fa48  2      
  movl 0xc(%r15,%rbx,1), %r13d         #  626   0x5fa4a  5      
  movl %r13d, %r13d                    #  627   0x5fa4f  3      
  movl (%r15,%r13,1), %esi             #  628   0x5fa52  4      
  testq %rsi, %rsi                     #  629   0x5fa56  3      
  je .L_5f8a0                          #  630   0x5fa59  6      
  movq 0x40(%rsp), %r14                #  631   0x5fa5f  5      
  nop                                  #  632   0x5fa64  1      
  jmpq .L_5fe40                        #  633   0x5fa65  5      
  nop                                  #  634   0x5fa6a  1      
  nop                                  #  635   0x5fa6b  1      
.L_5fe20:                              #        0x5fa6c  0      
  addl $0x4, %r13d                     #  636   0x5fa6c  4      
  movl %r13d, %r13d                    #  637   0x5fa70  3      
  movl (%r15,%r13,1), %esi             #  638   0x5fa73  4      
  testq %rsi, %rsi                     #  639   0x5fa77  3      
  je .L_5f7a0                          #  640   0x5fa7a  6      
  nop                                  #  641   0x5fa80  1      
.L_5fe40:                              #        0x5fa81  0      
  movl %r14d, %edx                     #  642   0x5fa81  3      
  movl %ebx, %edi                      #  643   0x5fa84  2      
  nop                                  #  644   0x5fa86  1      
  nop                                  #  645   0x5fa87  1      
  callq .linear_search_fdes            #  646   0x5fa88  5      
  movl %eax, %r12d                     #  647   0x5fa8d  3      
  testq %r12, %r12                     #  648   0x5fa90  3      
  je .L_5fe20                          #  649   0x5fa93  6      
  jmpq .L_5f7a0                        #  650   0x5fa99  5      
  nop                                  #  651   0x5fa9e  1      
  nop                                  #  652   0x5fa9f  1      
.L_5fe80:                              #        0x5faa0  0      
  movq %rcx, %rdx                      #  653   0x5faa0  3      
  movq 0x38(%rsp), %rsi                #  654   0x5faa3  5      
  xorl %edi, %edi                      #  655   0x5faa8  2      
  xorl %ecx, %ecx                      #  656   0x5faaa  2      
  jmpq .L_5fb40                        #  657   0x5faac  5      
  nop                                  #  658   0x5fab1  1      
.L_5fea0:                              #        0x5fab2  0      
  andl $0x7ff, %edx                    #  659   0x5fab2  6      
  movl %ebx, %ebx                      #  660   0x5fab8  2      
  movl %edx, 0x10(%r15,%rbx,1)         #  661   0x5faba  5      
  jmpq .L_5f740                        #  662   0x5fabf  5      
  nop                                  #  663   0x5fac4  1      
.L_5fec0:                              #        0x5fac5  0      
  movl 0x38(%rsp), %edx                #  664   0x5fac5  4      
  movl %r12d, %esi                     #  665   0x5fac9  3      
  movl %ebx, %edi                      #  666   0x5facc  2      
  nop                                  #  667   0x5face  1      
  nop                                  #  668   0x5facf  1      
  callq .frame_heapsort                #  669   0x5fad0  5      
  jmpq .L_5fd60                        #  670   0x5fad5  5      
  nop                                  #  671   0x5fada  1      
  nop                                  #  672   0x5fadb  1      
.L_5ff00:                              #        0x5fadc  0      
  nop                                  #  673   0x5fadc  1      
  nop                                  #  674   0x5fadd  1      
  callq .abort                         #  675   0x5fade  5      
                                                                
.size search_object, .-search_object

