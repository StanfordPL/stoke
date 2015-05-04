  .text
  .globl uw_frame_state_for
  .type uw_frame_state_for, @function

#! file-offset 0x5c0e0
#! rip-offset  0x5c0e0
#! capacity    3392 bytes

# Text                             #  Line  RIP      Bytes  
.uw_frame_state_for:               #        0x5c0e0  0      
  pushq %r14                       #  1     0x5c0e0  3      
  xorl %eax, %eax                  #  2     0x5c0e3  2      
  movl $0x2d, %ecx                 #  3     0x5c0e5  5      
  pushq %r13                       #  4     0x5c0ea  3      
  pushq %r12                       #  5     0x5c0ed  3      
  movl %edi, %r12d                 #  6     0x5c0f0  3      
  pushq %rbx                       #  7     0x5c0f3  2      
  movl %esi, %ebx                  #  8     0x5c0f5  2      
  movq %rbx, %rdi                  #  9     0x5c0f7  3      
  subl $0x58, %esp                 #  10    0x5c0fa  3      
  addq %r15, %rsp                  #  11    0x5c0fd  3      
  nop                              #  12    0x5c100  1      
  movl %edi, %edi                  #  13    0x5c101  2      
  leaq (%r15,%rdi,1), %rdi         #  14    0x5c103  4      
  rep stosq %es:(%rdi)             #  15    0x5c107  4      
  movl %edi, %edi                  #  16    0x5c10b  2      
  movl %r12d, %r12d                #  17    0x5c10d  3      
  movq $0x0, 0x70(%r15,%r12,1)     #  18    0x5c110  9      
  nop                              #  19    0x5c119  1      
  movl %r12d, %r12d                #  20    0x5c11a  3      
  movl $0x0, 0x50(%r15,%r12,1)     #  21    0x5c11d  9      
  movl %r12d, %r12d                #  22    0x5c126  3      
  movl 0x4c(%r15,%r12,1), %edi     #  23    0x5c129  5      
  testq %rdi, %rdi                 #  24    0x5c12e  3      
  je .L_5c580                      #  25    0x5c131  6      
  nop                              #  26    0x5c137  1      
  movl %r12d, %r12d                #  27    0x5c138  3      
  movq 0x60(%r15,%r12,1), %rax     #  28    0x5c13b  5      
  leal 0x54(%r12), %esi            #  29    0x5c140  5      
  shrq $0x3f, %rax                 #  30    0x5c145  4      
  leal -0x1(%rax,%rdi,1), %edi     #  31    0x5c149  4      
  nop                              #  32    0x5c14d  1      
  callq ._Unwind_Find_FDE          #  33    0x5c14e  5      
  movl %eax, %r8d                  #  34    0x5c153  3      
  testq %r8, %r8                   #  35    0x5c156  3      
  je .L_5c580                      #  36    0x5c159  6      
  movl %r8d, %edx                  #  37    0x5c15f  3      
  movl %r8d, %r8d                  #  38    0x5c162  3      
  subl 0x4(%r15,%r8,1), %edx       #  39    0x5c165  5      
  movl %r12d, %r12d                #  40    0x5c16a  3      
  movl 0x5c(%r15,%r12,1), %eax     #  41    0x5c16d  5      
  nop                              #  42    0x5c172  1      
  movq %r8, (%rsp)                 #  43    0x5c173  4      
  movl %ebx, %ebx                  #  44    0x5c177  2      
  movl %eax, 0x140(%r15,%rbx,1)    #  45    0x5c179  8      
  addl $0x4, %edx                  #  46    0x5c181  3      
  leal 0x9(%rdx), %r13d            #  47    0x5c184  4      
  movq %rdx, 0x8(%rsp)             #  48    0x5c188  5      
  movl %r13d, %edi                 #  49    0x5c18d  3      
  nop                              #  50    0x5c190  1      
  nop                              #  51    0x5c191  1      
  nop                              #  52    0x5c192  1      
  callq .strlen                    #  53    0x5c193  5      
  movq 0x8(%rsp), %rdx             #  54    0x5c198  5      
  movq (%rsp), %r8                 #  55    0x5c19d  4      
  movl %edx, %edx                  #  56    0x5c1a1  2      
  cmpb $0x65, 0x9(%r15,%rdx,1)     #  57    0x5c1a3  6      
  leal 0xa(%rax,%rdx,1), %edi      #  58    0x5c1a9  4      
  je .L_5c620                      #  59    0x5c1ad  6      
  nop                              #  60    0x5c1b3  1      
.L_5c1e0:                          #        0x5c1b4  0      
  xorl %r9d, %r9d                  #  61    0x5c1b4  3      
  xorl %ecx, %ecx                  #  62    0x5c1b7  2      
  nop                              #  63    0x5c1b9  1      
  nop                              #  64    0x5c1ba  1      
.L_5c200:                          #        0x5c1bb  0      
  movl %edi, %edi                  #  65    0x5c1bb  2      
  movzbl (%r15,%rdi,1), %esi       #  66    0x5c1bd  5      
  addl $0x1, %edi                  #  67    0x5c1c2  3      
  movl %esi, %eax                  #  68    0x5c1c5  2      
  andl $0x7f, %eax                 #  69    0x5c1c7  3      
  shll %cl, %eax                   #  70    0x5c1ca  2      
  addl $0x7, %ecx                  #  71    0x5c1cc  3      
  orl %eax, %r9d                   #  72    0x5c1cf  3      
  testb %sil, %sil                 #  73    0x5c1d2  3      
  js .L_5c200                      #  74    0x5c1d5  6      
  movl %r9d, %r9d                  #  75    0x5c1db  3      
  nop                              #  76    0x5c1de  1      
  leal 0x4c(%rsp), %esi            #  77    0x5c1df  4      
  movq %rdx, 0x8(%rsp)             #  78    0x5c1e3  5      
  movl %ebx, %ebx                  #  79    0x5c1e8  2      
  movq %r9, 0x150(%r15,%rbx,1)     #  80    0x5c1ea  8      
  movq %r8, (%rsp)                 #  81    0x5c1f2  4      
  nop                              #  82    0x5c1f6  1      
  callq .read_sleb128              #  83    0x5c1f7  5      
  movl %eax, %edi                  #  84    0x5c1fc  2      
  movslq 0x4c(%rsp), %rax          #  85    0x5c1fe  5      
  movq 0x8(%rsp), %rdx             #  86    0x5c203  5      
  xorl %r9d, %r9d                  #  87    0x5c208  3      
  xorl %ecx, %ecx                  #  88    0x5c20b  2      
  movq (%rsp), %r8                 #  89    0x5c20d  4      
  movl %ebx, %ebx                  #  90    0x5c211  2      
  movq %rax, 0x148(%r15,%rbx,1)    #  91    0x5c213  8      
  nop                              #  92    0x5c21b  1      
  movl %edx, %edx                  #  93    0x5c21c  2      
  cmpb $0x1, 0x8(%r15,%rdx,1)      #  94    0x5c21e  6      
  je .L_5c600                      #  95    0x5c224  6      
  nop                              #  96    0x5c22a  1      
  nop                              #  97    0x5c22b  1      
.L_5c280:                          #        0x5c22c  0      
  movl %edi, %edi                  #  98    0x5c22c  2      
  movzbl (%r15,%rdi,1), %esi       #  99    0x5c22e  5      
  addl $0x1, %edi                  #  100   0x5c233  3      
  movl %esi, %eax                  #  101   0x5c236  2      
  andl $0x7f, %eax                 #  102   0x5c238  3      
  shll %cl, %eax                   #  103   0x5c23b  2      
  addl $0x7, %ecx                  #  104   0x5c23d  3      
  orl %eax, %r9d                   #  105   0x5c240  3      
  testb %sil, %sil                 #  106   0x5c243  3      
  js .L_5c280                      #  107   0x5c246  6      
  movl %r9d, %r9d                  #  108   0x5c24c  3      
  nop                              #  109   0x5c24f  1      
  movl %ebx, %ebx                  #  110   0x5c250  2      
  movq %r9, 0x158(%r15,%rbx,1)     #  111   0x5c252  8      
  nop                              #  112   0x5c25a  1      
  nop                              #  113   0x5c25b  1      
.L_5c2c0:                          #        0x5c25c  0      
  movl %ebx, %ebx                  #  114   0x5c25c  2      
  movb $0xff, 0x161(%r15,%rbx,1)   #  115   0x5c25e  9      
  movl %r13d, %r13d                #  116   0x5c267  3      
  movzbl (%r15,%r13,1), %eax       #  117   0x5c26a  5      
  xorl %r10d, %r10d                #  118   0x5c26f  3      
  cmpb $0x7a, %al                  #  119   0x5c272  2      
  je .L_5c840                      #  120   0x5c274  6      
  xchgw %ax, %ax                   #  121   0x5c27a  3      
.L_5c2e0:                          #        0x5c27d  0      
  leal 0x48(%rsp), %ecx            #  122   0x5c27d  4      
  addl $0x1, %r13d                 #  123   0x5c281  4      
  movq %rcx, 0x38(%rsp)            #  124   0x5c285  5      
  jmpq .L_5c360                    #  125   0x5c28a  5      
  xchgw %ax, %ax                   #  126   0x5c28f  3      
  nop                              #  127   0x5c292  1      
.L_5c300:                          #        0x5c293  0      
  cmpb $0x52, %al                  #  128   0x5c293  2      
  je .L_5c3a0                      #  129   0x5c295  6      
  cmpb $0x50, %al                  #  130   0x5c29b  2      
  je .L_5c3c0                      #  131   0x5c29d  6      
  cmpb $0x53, %al                  #  132   0x5c2a3  2      
  jne .L_5c5a0                     #  133   0x5c2a5  6      
  nop                              #  134   0x5c2ab  1      
  movl %ebx, %ebx                  #  135   0x5c2ac  2      
  movb $0x1, 0x163(%r15,%rbx,1)    #  136   0x5c2ae  9      
  movl %r13d, %eax                 #  137   0x5c2b7  3      
  movq %rdi, %r14                  #  138   0x5c2ba  3      
  nop                              #  139   0x5c2bd  1      
.L_5c340:                          #        0x5c2be  0      
  movl %eax, %eax                  #  140   0x5c2be  2      
  movzbl (%r15,%rax,1), %eax       #  141   0x5c2c0  5      
  addl $0x1, %r13d                 #  142   0x5c2c5  4      
  movq %r14, %rdi                  #  143   0x5c2c9  3      
  nop                              #  144   0x5c2cc  1      
  nop                              #  145   0x5c2cd  1      
.L_5c360:                          #        0x5c2ce  0      
  testb %al, %al                   #  146   0x5c2ce  2      
  je .L_5c440                      #  147   0x5c2d0  6      
  cmpb $0x4c, %al                  #  148   0x5c2d6  2      
  jne .L_5c300                     #  149   0x5c2d8  6      
  movl %edi, %edi                  #  150   0x5c2de  2      
  movzbl (%r15,%rdi,1), %eax       #  151   0x5c2e0  5      
  leal 0x1(%rdi), %r14d            #  152   0x5c2e5  4      
  nop                              #  153   0x5c2e9  1      
  movl %ebx, %ebx                  #  154   0x5c2ea  2      
  movb %al, 0x161(%r15,%rbx,1)     #  155   0x5c2ec  8      
  movl %r13d, %eax                 #  156   0x5c2f4  3      
  jmpq .L_5c340                    #  157   0x5c2f7  5      
  xchgw %ax, %ax                   #  158   0x5c2fc  3      
  nop                              #  159   0x5c2ff  1      
.L_5c3a0:                          #        0x5c300  0      
  movl %edi, %edi                  #  160   0x5c300  2      
  movzbl (%r15,%rdi,1), %eax       #  161   0x5c302  5      
  leal 0x1(%rdi), %r14d            #  162   0x5c307  4      
  movl %ebx, %ebx                  #  163   0x5c30b  2      
  movb %al, 0x160(%r15,%rbx,1)     #  164   0x5c30d  8      
  movl %r13d, %eax                 #  165   0x5c315  3      
  jmpq .L_5c340                    #  166   0x5c318  5      
  nop                              #  167   0x5c31d  1      
.L_5c3c0:                          #        0x5c31e  0      
  movl %edi, %edi                  #  168   0x5c31e  2      
  movzbl (%r15,%rdi,1), %r9d       #  169   0x5c320  5      
  leal 0x1(%rdi), %r14d            #  170   0x5c325  4      
  cmpb $0xff, %r9b                 #  171   0x5c329  4      
  movzbl %r9b, %r11d               #  172   0x5c32d  4      
  je .L_5c8a0                      #  173   0x5c331  6      
  movl %r11d, %eax                 #  174   0x5c337  3      
  andl $0x70, %eax                 #  175   0x5c33a  3      
  nop                              #  176   0x5c33d  1      
  cmpl $0x20, %eax                 #  177   0x5c33e  3      
  je .L_5c9a0                      #  178   0x5c341  6      
  jle .L_5c660                     #  179   0x5c347  6      
  cmpl $0x40, %eax                 #  180   0x5c34d  3      
  je .L_5c960                      #  181   0x5c350  6      
  cmpl $0x50, %eax                 #  182   0x5c356  3      
  nop                              #  183   0x5c359  1      
  je .L_5c680                      #  184   0x5c35a  6      
  cmpl $0x30, %eax                 #  185   0x5c360  3      
  je .L_5c900                      #  186   0x5c363  6      
  xchgw %ax, %ax                   #  187   0x5c369  3      
  nop                              #  188   0x5c36c  1      
.L_5c420:                          #        0x5c36d  0      
  nop                              #  189   0x5c36d  1      
  nop                              #  190   0x5c36e  1      
  callq .abort                     #  191   0x5c36f  5      
.L_5c440:                          #        0x5c374  0      
  testq %r10, %r10                 #  192   0x5c374  3      
  je .L_5c5c0                      #  193   0x5c377  6      
  movq %r10, %rdi                  #  194   0x5c37d  3      
  nop                              #  195   0x5c380  1      
  nop                              #  196   0x5c381  1      
.L_5c460:                          #        0x5c382  0      
  movl %edx, %edx                  #  197   0x5c382  2      
  movl (%r15,%rdx,1), %esi         #  198   0x5c384  4      
  movl %ebx, %ecx                  #  199   0x5c388  2      
  movq %r8, (%rsp)                 #  200   0x5c38a  4      
  leal 0x4(%rsi,%rdx,1), %esi      #  201   0x5c38e  4      
  movl %r12d, %edx                 #  202   0x5c392  3      
  nop                              #  203   0x5c395  1      
  callq .execute_cfa_program       #  204   0x5c396  5      
  movl %ebx, %ebx                  #  205   0x5c39b  2      
  movzbl 0x160(%r15,%rbx,1), %eax  #  206   0x5c39d  9      
  movq (%rsp), %r8                 #  207   0x5c3a6  4      
  cmpb $0xff, %al                  #  208   0x5c3aa  2      
  je .L_5c8c0                      #  209   0x5c3ac  6      
  andl $0x7, %eax                  #  210   0x5c3b2  3      
  cmpl $0x2, %eax                  #  211   0x5c3b5  3      
  nop                              #  212   0x5c3b8  1      
  je .L_5c9e0                      #  213   0x5c3b9  6      
  jg .L_5c700                      #  214   0x5c3bf  6      
  testl %eax, %eax                 #  215   0x5c3c5  2      
  jne .L_5c420                     #  216   0x5c3c7  6      
  nop                              #  217   0x5c3cd  1      
.L_5c4c0:                          #        0x5c3ce  0      
  movl $0x8, %r14d                 #  218   0x5c3ce  6      
  nop                              #  219   0x5c3d4  1      
  nop                              #  220   0x5c3d5  1      
.L_5c4e0:                          #        0x5c3d6  0      
  xorl %esi, %esi                  #  221   0x5c3d6  2      
  xorl %ecx, %ecx                  #  222   0x5c3d8  2      
  xorl %r13d, %r13d                #  223   0x5c3da  3      
  movl %ebx, %ebx                  #  224   0x5c3dd  2      
  cmpb $0x0, 0x162(%r15,%rbx,1)    #  225   0x5c3df  9      
  leal 0x8(%r14,%r8,1), %r14d      #  226   0x5c3e8  5      
  jne .L_5c720                     #  227   0x5c3ed  6      
  nop                              #  228   0x5c3f3  1      
  movl %ebx, %ebx                  #  229   0x5c3f4  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  230   0x5c3f6  9      
  cmpb $0xff, %dl                  #  231   0x5c3ff  3      
  je .L_5c760                      #  232   0x5c402  6      
  nop                              #  233   0x5c408  1      
.L_5c520:                          #        0x5c409  0      
  movzbl %dl, %ecx                 #  234   0x5c409  3      
  movl %ecx, %r9d                  #  235   0x5c40c  3      
  andl $0x70, %r9d                 #  236   0x5c40f  4      
  cmpl $0x20, %r9d                 #  237   0x5c413  4      
  je .L_5cde0                      #  238   0x5c417  6      
  jg .L_5ca00                      #  239   0x5c41d  6      
  testl %r9d, %r9d                 #  240   0x5c423  3      
  nop                              #  241   0x5c426  1      
  jne .L_5caa0                     #  242   0x5c427  6      
  nop                              #  243   0x5c42d  1      
  nop                              #  244   0x5c42e  1      
.L_5c560:                          #        0x5c42f  0      
  xorl %r10d, %r10d                #  245   0x5c42f  3      
  jmpq .L_5ca60                    #  246   0x5c432  5      
  nop                              #  247   0x5c437  1      
  nop                              #  248   0x5c438  1      
.L_5c580:                          #        0x5c439  0      
  addl $0x58, %esp                 #  249   0x5c439  3      
  addq %r15, %rsp                  #  250   0x5c43c  3      
  movl $0x5, %eax                  #  251   0x5c43f  5      
  popq %rbx                        #  252   0x5c444  2      
  popq %r12                        #  253   0x5c446  3      
  popq %r13                        #  254   0x5c449  3      
  popq %r14                        #  255   0x5c44c  3      
  popq %r11                        #  256   0x5c44f  3      
  andl $0xffffffe0, %r11d          #  257   0x5c452  7      
  addq %r15, %r11                  #  258   0x5c459  3      
  jmpq %r11                        #  259   0x5c45c  3      
  xchgw %ax, %ax                   #  260   0x5c45f  3      
.L_5c5a0:                          #        0x5c462  0      
  movq %r10, %rdi                  #  261   0x5c462  3      
  nop                              #  262   0x5c465  1      
  nop                              #  263   0x5c466  1      
.L_5c5c0:                          #        0x5c467  0      
  testq %rdi, %rdi                 #  264   0x5c467  3      
  movl $0x3, %eax                  #  265   0x5c46a  5      
  jne .L_5c460                     #  266   0x5c46f  6      
  addl $0x58, %esp                 #  267   0x5c475  3      
  addq %r15, %rsp                  #  268   0x5c478  3      
  popq %rbx                        #  269   0x5c47b  2      
  popq %r12                        #  270   0x5c47d  3      
  popq %r13                        #  271   0x5c480  3      
  popq %r14                        #  272   0x5c483  3      
  popq %r11                        #  273   0x5c486  3      
  nop                              #  274   0x5c489  1      
  andl $0xffffffe0, %r11d          #  275   0x5c48a  7      
  addq %r15, %r11                  #  276   0x5c491  3      
  jmpq %r11                        #  277   0x5c494  3      
  nop                              #  278   0x5c497  1      
  nop                              #  279   0x5c498  1      
.L_5c600:                          #        0x5c499  0      
  movl %edi, %edi                  #  280   0x5c499  2      
  movzbl (%r15,%rdi,1), %eax       #  281   0x5c49b  5      
  addl $0x1, %edi                  #  282   0x5c4a0  3      
  movl %ebx, %ebx                  #  283   0x5c4a3  2      
  movq %rax, 0x158(%r15,%rbx,1)    #  284   0x5c4a5  8      
  jmpq .L_5c2c0                    #  285   0x5c4ad  5      
  nop                              #  286   0x5c4b2  1      
.L_5c620:                          #        0x5c4b3  0      
  movl %r13d, %r13d                #  287   0x5c4b3  3      
  cmpb $0x68, 0x1(%r15,%r13,1)     #  288   0x5c4b6  6      
  jne .L_5c1e0                     #  289   0x5c4bc  6      
  movl %edi, %edi                  #  290   0x5c4c2  2      
  movl (%r15,%rdi,1), %eax         #  291   0x5c4c4  4      
  addl $0x2, %r13d                 #  292   0x5c4c8  4      
  addl $0x4, %edi                  #  293   0x5c4cc  3      
  nop                              #  294   0x5c4cf  1      
  movl %ebx, %ebx                  #  295   0x5c4d0  2      
  movl %eax, 0x164(%r15,%rbx,1)    #  296   0x5c4d2  8      
  jmpq .L_5c1e0                    #  297   0x5c4da  5      
  xchgw %ax, %ax                   #  298   0x5c4df  3      
  nop                              #  299   0x5c4e2  1      
.L_5c660:                          #        0x5c4e3  0      
  testl %eax, %eax                 #  300   0x5c4e3  2      
  je .L_5c680                      #  301   0x5c4e5  6      
  cmpl $0x10, %eax                 #  302   0x5c4eb  3      
  jne .L_5c420                     #  303   0x5c4ee  6      
  nop                              #  304   0x5c4f4  1      
  nop                              #  305   0x5c4f5  1      
.L_5c680:                          #        0x5c4f6  0      
  movl $0x0, 0x2c(%rsp)            #  306   0x5c4f6  8      
  nop                              #  307   0x5c4fe  1      
  nop                              #  308   0x5c4ff  1      
.L_5c6a0:                          #        0x5c500  0      
  cmpb $0x50, %r9b                 #  309   0x5c500  4      
  movq %r14, 0x30(%rsp)            #  310   0x5c504  5      
  je .L_5c8e0                      #  311   0x5c509  6      
  xchgw %ax, %ax                   #  312   0x5c50f  3      
  nop                              #  313   0x5c512  1      
.L_5c6c0:                          #        0x5c513  0      
  movl %r11d, %eax                 #  314   0x5c513  3      
  andl $0xf, %eax                  #  315   0x5c516  3      
  cmpl $0xc, %eax                  #  316   0x5c519  3      
  ja .L_5c420                      #  317   0x5c51c  6      
  leal 0xffc6bcf(%rip), %ecx       #  318   0x5c522  6      
  movl %eax, %eax                  #  319   0x5c528  2      
  leaq (%rcx,%rax,4), %rax         #  320   0x5c52a  4      
  nop                              #  321   0x5c52e  1      
  movl %eax, %eax                  #  322   0x5c52f  2      
  movslq (%r15,%rax,1), %rax       #  323   0x5c531  4      
  addq %rcx, %rax                  #  324   0x5c535  3      
  andl $0xffffffe0, %eax           #  325   0x5c538  5      
  addq %r15, %rax                  #  326   0x5c53d  3      
  jmpq %rax                        #  327   0x5c540  2      
  nop                              #  328   0x5c542  1      
.L_5c700:                          #        0x5c543  0      
  cmpl $0x3, %eax                  #  329   0x5c543  3      
  je .L_5c4c0                      #  330   0x5c546  6      
  cmpl $0x4, %eax                  #  331   0x5c54c  3      
  jne .L_5c420                     #  332   0x5c54f  6      
  movl $0x10, %r14d                #  333   0x5c555  6      
  jmpq .L_5c4e0                    #  334   0x5c55b  5      
  nop                              #  335   0x5c560  1      
.L_5c720:                          #        0x5c561  0      
  movl %r14d, %r14d                #  336   0x5c561  3      
  movzbl (%r15,%r14,1), %edx       #  337   0x5c564  5      
  addl $0x1, %r14d                 #  338   0x5c569  4      
  movl %edx, %eax                  #  339   0x5c56d  2      
  andl $0x7f, %eax                 #  340   0x5c56f  3      
  shll %cl, %eax                   #  341   0x5c572  2      
  addl $0x7, %ecx                  #  342   0x5c574  3      
  orl %eax, %esi                   #  343   0x5c577  2      
  testb %dl, %dl                   #  344   0x5c579  2      
  js .L_5c720                      #  345   0x5c57b  6      
  nop                              #  346   0x5c581  1      
  movl %ebx, %ebx                  #  347   0x5c582  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  348   0x5c584  9      
  leal (%rsi,%r14,1), %r13d        #  349   0x5c58d  4      
  cmpb $0xff, %dl                  #  350   0x5c591  3      
  jne .L_5c520                     #  351   0x5c594  6      
  nop                              #  352   0x5c59a  1      
.L_5c760:                          #        0x5c59b  0      
  movl %r8d, %r8d                  #  353   0x5c59b  3      
  movl (%r15,%r8,1), %esi          #  354   0x5c59e  4      
  testq %r13, %r13                 #  355   0x5c5a2  3      
  movl %ebx, %ecx                  #  356   0x5c5a5  2      
  cmoveq %r14, %r13                #  357   0x5c5a7  4      
  movl %r12d, %edx                 #  358   0x5c5ab  3      
  movl %r13d, %edi                 #  359   0x5c5ae  3      
  leal 0x4(%rsi,%r8,1), %esi       #  360   0x5c5b1  5      
  callq .execute_cfa_program       #  361   0x5c5b6  5      
  addl $0x58, %esp                 #  362   0x5c5bb  3      
  addq %r15, %rsp                  #  363   0x5c5be  3      
  xorl %eax, %eax                  #  364   0x5c5c1  2      
  popq %rbx                        #  365   0x5c5c3  2      
  popq %r12                        #  366   0x5c5c5  3      
  popq %r13                        #  367   0x5c5c8  3      
  popq %r14                        #  368   0x5c5cb  3      
  popq %r11                        #  369   0x5c5ce  3      
  andl $0xffffffe0, %r11d          #  370   0x5c5d1  7      
  addq %r15, %r11                  #  371   0x5c5d8  3      
  jmpq %r11                        #  372   0x5c5db  3      
  nop                              #  373   0x5c5de  1      
  movl %r14d, %r14d                #  374   0x5c5df  3      
  movl (%r15,%r14,1), %eax         #  375   0x5c5e2  4      
  addl $0x4, %r14d                 #  376   0x5c5e6  4      
  nop                              #  377   0x5c5ea  1      
  nop                              #  378   0x5c5eb  1      
.L_5c7c0:                          #        0x5c5ec  0      
  xorl %ecx, %ecx                  #  379   0x5c5ec  2      
  testl %eax, %eax                 #  380   0x5c5ee  2      
  je .L_5c800                      #  381   0x5c5f0  6      
  andl $0x70, %r11d                #  382   0x5c5f6  4      
  movl 0x30(%rsp), %ecx            #  383   0x5c5fa  4      
  cmpl $0x10, %r11d                #  384   0x5c5fe  4      
  cmovnel 0x2c(%rsp), %ecx         #  385   0x5c602  5      
  addl %ecx, %eax                  #  386   0x5c607  2      
  testb %r9b, %r9b                 #  387   0x5c609  3      
  movl %eax, %ecx                  #  388   0x5c60c  2      
  xchgw %ax, %ax                   #  389   0x5c60e  3      
  jns .L_5c800                     #  390   0x5c611  6      
  movl %eax, %eax                  #  391   0x5c617  2      
  movl %eax, %eax                  #  392   0x5c619  2      
  movl (%r15,%rax,1), %ecx         #  393   0x5c61b  4      
  nop                              #  394   0x5c61f  1      
  nop                              #  395   0x5c620  1      
.L_5c800:                          #        0x5c621  0      
  movl %ebx, %ebx                  #  396   0x5c621  2      
  movl %ecx, 0x144(%r15,%rbx,1)    #  397   0x5c623  8      
  movl %r13d, %eax                 #  398   0x5c62b  3      
  jmpq .L_5c340                    #  399   0x5c62e  5      
  nop                              #  400   0x5c633  1      
  movl %r14d, %r14d                #  401   0x5c634  3      
  movl (%r15,%r14,1), %eax         #  402   0x5c637  4      
  addl $0x8, %r14d                 #  403   0x5c63b  4      
  jmpq .L_5c7c0                    #  404   0x5c63f  5      
  nop                              #  405   0x5c644  1      
  nop                              #  406   0x5c645  1      
.L_5c840:                          #        0x5c646  0      
  xorl %ecx, %ecx                  #  407   0x5c646  2      
  nop                              #  408   0x5c648  1      
  nop                              #  409   0x5c649  1      
.L_5c860:                          #        0x5c64a  0      
  movl %edi, %edi                  #  410   0x5c64a  2      
  movzbl (%r15,%rdi,1), %esi       #  411   0x5c64c  5      
  addl $0x1, %edi                  #  412   0x5c651  3      
  movl %esi, %eax                  #  413   0x5c654  2      
  andl $0x7f, %eax                 #  414   0x5c656  3      
  shll %cl, %eax                   #  415   0x5c659  2      
  addl $0x7, %ecx                  #  416   0x5c65b  3      
  orl %eax, %r10d                  #  417   0x5c65e  3      
  testb %sil, %sil                 #  418   0x5c661  3      
  js .L_5c860                      #  419   0x5c664  6      
  addl $0x1, %r13d                 #  420   0x5c66a  4      
  movl %ebx, %ebx                  #  421   0x5c66e  2      
  movb $0x1, 0x162(%r15,%rbx,1)    #  422   0x5c670  9      
  addl %edi, %r10d                 #  423   0x5c679  3      
  movl %r13d, %r13d                #  424   0x5c67c  3      
  movzbl (%r15,%r13,1), %eax       #  425   0x5c67f  5      
  jmpq .L_5c2e0                    #  426   0x5c684  5      
  nop                              #  427   0x5c689  1      
.L_5c8a0:                          #        0x5c68a  0      
  movq %r14, 0x30(%rsp)            #  428   0x5c68a  5      
  movl $0x0, 0x2c(%rsp)            #  429   0x5c68f  8      
  jmpq .L_5c6c0                    #  430   0x5c697  5      
  nop                              #  431   0x5c69c  1      
.L_5c8c0:                          #        0x5c69d  0      
  xorl %r14d, %r14d                #  432   0x5c69d  3      
  jmpq .L_5c4e0                    #  433   0x5c6a0  5      
  nop                              #  434   0x5c6a5  1      
  nop                              #  435   0x5c6a6  1      
.L_5c8e0:                          #        0x5c6a7  0      
  leal 0x3(%r14), %eax             #  436   0x5c6a7  4      
  andl $0xfffffffc, %eax           #  437   0x5c6ab  5      
  leal 0x4(%rax), %r14d            #  438   0x5c6b0  4      
  movl %eax, %eax                  #  439   0x5c6b4  2      
  movl %eax, %eax                  #  440   0x5c6b6  2      
  movl (%r15,%rax,1), %ecx         #  441   0x5c6b8  4      
  movl %r14d, %r14d                #  442   0x5c6bc  3      
  jmpq .L_5c800                    #  443   0x5c6bf  5      
  nop                              #  444   0x5c6c4  1      
.L_5c900:                          #        0x5c6c5  0      
  movl %r12d, %edi                 #  445   0x5c6c5  3      
  movq %rdx, 0x8(%rsp)             #  446   0x5c6c8  5      
  movq %r8, (%rsp)                 #  447   0x5c6cd  4      
  movb %r9b, 0x10(%rsp)            #  448   0x5c6d1  5      
  movq %r10, 0x18(%rsp)            #  449   0x5c6d6  5      
  movl %r11d, 0x20(%rsp)           #  450   0x5c6db  5      
  callq ._Unwind_GetDataRelBase    #  451   0x5c6e0  5      
.L_5c920:                          #        0x5c6e5  0      
  movl %eax, 0x2c(%rsp)            #  452   0x5c6e5  4      
  movq 0x8(%rsp), %rdx             #  453   0x5c6e9  5      
  movq (%rsp), %r8                 #  454   0x5c6ee  4      
  movzbl 0x10(%rsp), %r9d          #  455   0x5c6f2  6      
  movq 0x18(%rsp), %r10            #  456   0x5c6f8  5      
  movl 0x20(%rsp), %r11d           #  457   0x5c6fd  5      
  nop                              #  458   0x5c702  1      
  jmpq .L_5c6a0                    #  459   0x5c703  5      
  nop                              #  460   0x5c708  1      
  nop                              #  461   0x5c709  1      
.L_5c960:                          #        0x5c70a  0      
  movl %r12d, %edi                 #  462   0x5c70a  3      
  movq %rdx, 0x8(%rsp)             #  463   0x5c70d  5      
  movq %r8, (%rsp)                 #  464   0x5c712  4      
  movb %r9b, 0x10(%rsp)            #  465   0x5c716  5      
  movq %r10, 0x18(%rsp)            #  466   0x5c71b  5      
  movl %r11d, 0x20(%rsp)           #  467   0x5c720  5      
  callq ._Unwind_GetRegionStart    #  468   0x5c725  5      
  jmpq .L_5c920                    #  469   0x5c72a  5      
  nop                              #  470   0x5c72f  1      
  nop                              #  471   0x5c730  1      
.L_5c9a0:                          #        0x5c731  0      
  movl %r12d, %edi                 #  472   0x5c731  3      
  movq %rdx, 0x8(%rsp)             #  473   0x5c734  5      
  movq %r8, (%rsp)                 #  474   0x5c739  4      
  movb %r9b, 0x10(%rsp)            #  475   0x5c73d  5      
  movq %r10, 0x18(%rsp)            #  476   0x5c742  5      
  movl %r11d, 0x20(%rsp)           #  477   0x5c747  5      
  callq ._Unwind_GetTextRelBase    #  478   0x5c74c  5      
  jmpq .L_5c920                    #  479   0x5c751  5      
  nop                              #  480   0x5c756  1      
  nop                              #  481   0x5c757  1      
.L_5c9e0:                          #        0x5c758  0      
  movl $0x4, %r14d                 #  482   0x5c758  6      
  jmpq .L_5c4e0                    #  483   0x5c75e  5      
  nop                              #  484   0x5c763  1      
  nop                              #  485   0x5c764  1      
.L_5ca00:                          #        0x5c765  0      
  cmpl $0x40, %r9d                 #  486   0x5c765  4      
  je .L_5cc40                      #  487   0x5c769  6      
  cmpl $0x50, %r9d                 #  488   0x5c76f  4      
  je .L_5c560                      #  489   0x5c773  6      
  cmpl $0x30, %r9d                 #  490   0x5c779  4      
  jne .L_5c420                     #  491   0x5c77d  6      
  xchgw %ax, %ax                   #  492   0x5c783  3      
  movl %r12d, %edi                 #  493   0x5c786  3      
  movb %dl, 0x8(%rsp)              #  494   0x5c789  4      
  movl %ecx, 0x20(%rsp)            #  495   0x5c78d  4      
  movq %r8, (%rsp)                 #  496   0x5c791  4      
  movl %r9d, 0x10(%rsp)            #  497   0x5c795  5      
  nop                              #  498   0x5c79a  1      
  callq ._Unwind_GetDataRelBase    #  499   0x5c79b  5      
.L_5ca40:                          #        0x5c7a0  0      
  movzbl 0x8(%rsp), %edx           #  500   0x5c7a0  5      
  movl 0x20(%rsp), %ecx            #  501   0x5c7a5  4      
  movl %eax, %r10d                 #  502   0x5c7a9  3      
  movq (%rsp), %r8                 #  503   0x5c7ac  4      
  movl 0x10(%rsp), %r9d            #  504   0x5c7b0  5      
  nop                              #  505   0x5c7b5  1      
.L_5ca60:                          #        0x5c7b6  0      
  cmpb $0x50, %dl                  #  506   0x5c7b6  3      
  je .L_5cdc0                      #  507   0x5c7b9  6      
  andl $0xf, %ecx                  #  508   0x5c7bf  3      
  movq %r14, %r11                  #  509   0x5c7c2  3      
  cmpl $0xc, %ecx                  #  510   0x5c7c5  3      
  ja .L_5c420                      #  511   0x5c7c8  6      
  leal 0xffc685a(%rip), %eax       #  512   0x5c7ce  6      
  movl %ecx, %ecx                  #  513   0x5c7d4  2      
  leaq (%rax,%rcx,4), %rcx         #  514   0x5c7d6  4      
  movl %ecx, %ecx                  #  515   0x5c7da  2      
  movslq (%r15,%rcx,1), %rcx       #  516   0x5c7dc  4      
  leaq (%rcx,%rax,1), %rax         #  517   0x5c7e0  4      
  andl $0xffffffe0, %eax           #  518   0x5c7e4  5      
  addq %r15, %rax                  #  519   0x5c7e9  3      
  jmpq %rax                        #  520   0x5c7ec  2      
  nop                              #  521   0x5c7ee  1      
.L_5caa0:                          #        0x5c7ef  0      
  cmpl $0x10, %r9d                 #  522   0x5c7ef  4      
  jne .L_5c420                     #  523   0x5c7f3  6      
  jmpq .L_5c560                    #  524   0x5c7f9  5      
  xchgw %ax, %ax                   #  525   0x5c7fe  3      
  nop                              #  526   0x5c801  1      
  xorl %eax, %eax                  #  527   0x5c802  2      
  xorl %ecx, %ecx                  #  528   0x5c804  2      
  nop                              #  529   0x5c806  1      
  nop                              #  530   0x5c807  1      
.L_5cae0:                          #        0x5c808  0      
  movl %r14d, %r14d                #  531   0x5c808  3      
  movzbl (%r15,%r14,1), %edi       #  532   0x5c80b  5      
  movl $0x7f, %esi                 #  533   0x5c810  5      
  addl $0x1, %r14d                 #  534   0x5c815  4      
  andl %edi, %esi                  #  535   0x5c819  2      
  shll %cl, %esi                   #  536   0x5c81b  2      
  addl $0x7, %ecx                  #  537   0x5c81d  3      
  orl %esi, %eax                   #  538   0x5c820  2      
  testb %dil, %dil                 #  539   0x5c822  3      
  nop                              #  540   0x5c825  1      
  js .L_5cae0                      #  541   0x5c826  6      
  jmpq .L_5c7c0                    #  542   0x5c82c  5      
  nop                              #  543   0x5c831  1      
  nop                              #  544   0x5c832  1      
  movl 0x38(%rsp), %esi            #  545   0x5c833  4      
  movl %r14d, %edi                 #  546   0x5c837  3      
  movq %rdx, 0x8(%rsp)             #  547   0x5c83a  5      
  movq %r8, (%rsp)                 #  548   0x5c83f  4      
  movb %r9b, 0x10(%rsp)            #  549   0x5c843  5      
  movq %r10, 0x18(%rsp)            #  550   0x5c848  5      
  movl %r11d, 0x20(%rsp)           #  551   0x5c84d  5      
  nop                              #  552   0x5c852  1      
  nop                              #  553   0x5c853  1      
  nop                              #  554   0x5c854  1      
  callq .read_sleb128              #  555   0x5c855  5      
  movq 0x8(%rsp), %rdx             #  556   0x5c85a  5      
  movl %eax, %r14d                 #  557   0x5c85f  3      
  movq (%rsp), %r8                 #  558   0x5c862  4      
  movl 0x48(%rsp), %eax            #  559   0x5c866  4      
  movzbl 0x10(%rsp), %r9d          #  560   0x5c86a  6      
  movq 0x18(%rsp), %r10            #  561   0x5c870  5      
  movl 0x20(%rsp), %r11d           #  562   0x5c875  5      
  jmpq .L_5c7c0                    #  563   0x5c87a  5      
  nop                              #  564   0x5c87f  1      
  nop                              #  565   0x5c880  1      
  movl %r14d, %r14d                #  566   0x5c881  3      
  movswl (%r15,%r14,1), %eax       #  567   0x5c884  5      
  addl $0x2, %r14d                 #  568   0x5c889  4      
  jmpq .L_5c7c0                    #  569   0x5c88d  5      
  nop                              #  570   0x5c892  1      
  movl %r14d, %r14d                #  571   0x5c893  3      
  movzwl (%r15,%r14,1), %eax       #  572   0x5c896  5      
  addl $0x2, %r14d                 #  573   0x5c89b  4      
  jmpq .L_5c7c0                    #  574   0x5c89f  5      
  nop                              #  575   0x5c8a4  1      
  movl %r14d, %r14d                #  576   0x5c8a5  3      
  movl (%r15,%r14,1), %eax         #  577   0x5c8a8  4      
  addl $0x4, %r14d                 #  578   0x5c8ac  4      
  nop                              #  579   0x5c8b0  1      
  nop                              #  580   0x5c8b1  1      
.L_5cc00:                          #        0x5c8b2  0      
  xorl %ecx, %ecx                  #  581   0x5c8b2  2      
  testl %eax, %eax                 #  582   0x5c8b4  2      
  je .L_5cc20                      #  583   0x5c8b6  6      
  cmpl $0x10, %r9d                 #  584   0x5c8bc  4      
  cmovel %r11d, %r10d              #  585   0x5c8c0  4      
  testb %dl, %dl                   #  586   0x5c8c4  2      
  leal (%r10,%rax,1), %eax         #  587   0x5c8c6  4      
  movl %eax, %ecx                  #  588   0x5c8ca  2      
  jns .L_5cc20                     #  589   0x5c8cc  6      
  movl %eax, %eax                  #  590   0x5c8d2  2      
  movl %eax, %eax                  #  591   0x5c8d4  2      
  movl (%r15,%rax,1), %ecx         #  592   0x5c8d6  4      
.L_5cc20:                          #        0x5c8da  0      
  movl %r12d, %r12d                #  593   0x5c8da  3      
  movl %ecx, 0x50(%r15,%r12,1)     #  594   0x5c8dd  5      
  jmpq .L_5c760                    #  595   0x5c8e2  5      
  nop                              #  596   0x5c8e7  1      
  nop                              #  597   0x5c8e8  1      
.L_5cc40:                          #        0x5c8e9  0      
  movl %r12d, %edi                 #  598   0x5c8e9  3      
  movb %dl, 0x8(%rsp)              #  599   0x5c8ec  4      
  movl %ecx, 0x20(%rsp)            #  600   0x5c8f0  4      
  movq %r8, (%rsp)                 #  601   0x5c8f4  4      
  movl %r9d, 0x10(%rsp)            #  602   0x5c8f8  5      
  nop                              #  603   0x5c8fd  1      
  callq ._Unwind_GetRegionStart    #  604   0x5c8fe  5      
  jmpq .L_5ca40                    #  605   0x5c903  5      
  nop                              #  606   0x5c908  1      
  nop                              #  607   0x5c909  1      
  movl %r14d, %r14d                #  608   0x5c90a  3      
  movl (%r15,%r14,1), %eax         #  609   0x5c90d  4      
  addl $0x8, %r14d                 #  610   0x5c911  4      
  jmpq .L_5cc00                    #  611   0x5c915  5      
  nop                              #  612   0x5c91a  1      
  nop                              #  613   0x5c91b  1      
  xorl %eax, %eax                  #  614   0x5c91c  2      
  xorl %ecx, %ecx                  #  615   0x5c91e  2      
  nop                              #  616   0x5c920  1      
  nop                              #  617   0x5c921  1      
.L_5ccc0:                          #        0x5c922  0      
  movl %r14d, %r14d                #  618   0x5c922  3      
  movzbl (%r15,%r14,1), %edi       #  619   0x5c925  5      
  movl $0x7f, %esi                 #  620   0x5c92a  5      
  addl $0x1, %r14d                 #  621   0x5c92f  4      
  andl %edi, %esi                  #  622   0x5c933  2      
  shll %cl, %esi                   #  623   0x5c935  2      
  addl $0x7, %ecx                  #  624   0x5c937  3      
  orl %esi, %eax                   #  625   0x5c93a  2      
  testb %dil, %dil                 #  626   0x5c93c  3      
  nop                              #  627   0x5c93f  1      
  js .L_5ccc0                      #  628   0x5c940  6      
  jmpq .L_5cc00                    #  629   0x5c946  5      
  nop                              #  630   0x5c94b  1      
  nop                              #  631   0x5c94c  1      
  movl %r14d, %r14d                #  632   0x5c94d  3      
  movzwl (%r15,%r14,1), %eax       #  633   0x5c950  5      
  addl $0x2, %r14d                 #  634   0x5c955  4      
  jmpq .L_5cc00                    #  635   0x5c959  5      
  nop                              #  636   0x5c95e  1      
  leal 0x48(%rsp), %esi            #  637   0x5c95f  4      
  movl %r14d, %edi                 #  638   0x5c963  3      
  movb %dl, 0x8(%rsp)              #  639   0x5c966  4      
  movq %r8, (%rsp)                 #  640   0x5c96a  4      
  movl %r9d, 0x10(%rsp)            #  641   0x5c96e  5      
  movl %r10d, 0x18(%rsp)           #  642   0x5c973  5      
  movq %r14, 0x20(%rsp)            #  643   0x5c978  5      
  xchgw %ax, %ax                   #  644   0x5c97d  3      
  nop                              #  645   0x5c980  1      
  nop                              #  646   0x5c981  1      
  callq .read_sleb128              #  647   0x5c982  5      
  movzbl 0x8(%rsp), %edx           #  648   0x5c987  5      
  movl %eax, %r14d                 #  649   0x5c98c  3      
  movq (%rsp), %r8                 #  650   0x5c98f  4      
  movl 0x48(%rsp), %eax            #  651   0x5c993  4      
  movl 0x10(%rsp), %r9d            #  652   0x5c997  5      
  movl 0x18(%rsp), %r10d           #  653   0x5c99c  5      
  movq 0x20(%rsp), %r11            #  654   0x5c9a1  5      
  nop                              #  655   0x5c9a6  1      
  jmpq .L_5cc00                    #  656   0x5c9a7  5      
  nop                              #  657   0x5c9ac  1      
  nop                              #  658   0x5c9ad  1      
  movl %r14d, %r14d                #  659   0x5c9ae  3      
  movswl (%r15,%r14,1), %eax       #  660   0x5c9b1  5      
  addl $0x2, %r14d                 #  661   0x5c9b6  4      
  jmpq .L_5cc00                    #  662   0x5c9ba  5      
  nop                              #  663   0x5c9bf  1      
.L_5cdc0:                          #        0x5c9c0  0      
  leal 0x3(%r14), %eax             #  664   0x5c9c0  4      
  andl $0xfffffffc, %eax           #  665   0x5c9c4  5      
  leal 0x4(%rax), %r14d            #  666   0x5c9c9  4      
  movl %eax, %eax                  #  667   0x5c9cd  2      
  movl %eax, %eax                  #  668   0x5c9cf  2      
  movl (%r15,%rax,1), %ecx         #  669   0x5c9d1  4      
  movl %r14d, %r14d                #  670   0x5c9d5  3      
  jmpq .L_5cc20                    #  671   0x5c9d8  5      
  nop                              #  672   0x5c9dd  1      
.L_5cde0:                          #        0x5c9de  0      
  movl %r12d, %edi                 #  673   0x5c9de  3      
  movb %dl, 0x8(%rsp)              #  674   0x5c9e1  4      
  movl %ecx, 0x20(%rsp)            #  675   0x5c9e5  4      
  movq %r8, (%rsp)                 #  676   0x5c9e9  4      
  movl %r9d, 0x10(%rsp)            #  677   0x5c9ed  5      
  nop                              #  678   0x5c9f2  1      
  callq ._Unwind_GetTextRelBase    #  679   0x5c9f3  5      
  jmpq .L_5ca40                    #  680   0x5c9f8  5      
  nop                              #  681   0x5c9fd  1      
  nop                              #  682   0x5c9fe  1      
                                                            
.size uw_frame_state_for, .-uw_frame_state_for

