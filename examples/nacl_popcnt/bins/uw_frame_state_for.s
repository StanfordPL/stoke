  .text
  .globl uw_frame_state_for
  .type uw_frame_state_for, @function

#! file-offset 0x5c060
#! rip-offset  0x5c060
#! capacity    3392 bytes

# Text                             #  Line  RIP      Bytes  
.uw_frame_state_for:               #        0x5c060  0      
  pushq %r14                       #  1     0x5c060  3      
  xorl %eax, %eax                  #  2     0x5c063  2      
  movl $0x2d, %ecx                 #  3     0x5c065  5      
  pushq %r13                       #  4     0x5c06a  3      
  pushq %r12                       #  5     0x5c06d  3      
  movl %edi, %r12d                 #  6     0x5c070  3      
  pushq %rbx                       #  7     0x5c073  2      
  movl %esi, %ebx                  #  8     0x5c075  2      
  movq %rbx, %rdi                  #  9     0x5c077  3      
  subl $0x58, %esp                 #  10    0x5c07a  3      
  addq %r15, %rsp                  #  11    0x5c07d  3      
  nop                              #  12    0x5c080  1      
  movl %edi, %edi                  #  13    0x5c081  2      
  leaq (%r15,%rdi,1), %rdi         #  14    0x5c083  4      
  rep stosq %es:(%rdi)             #  15    0x5c087  4      
  movl %edi, %edi                  #  16    0x5c08b  2      
  movl %r12d, %r12d                #  17    0x5c08d  3      
  movq $0x0, 0x70(%r15,%r12,1)     #  18    0x5c090  9      
  nop                              #  19    0x5c099  1      
  movl %r12d, %r12d                #  20    0x5c09a  3      
  movl $0x0, 0x50(%r15,%r12,1)     #  21    0x5c09d  9      
  movl %r12d, %r12d                #  22    0x5c0a6  3      
  movl 0x4c(%r15,%r12,1), %edi     #  23    0x5c0a9  5      
  testq %rdi, %rdi                 #  24    0x5c0ae  3      
  je .L_5c500                      #  25    0x5c0b1  6      
  nop                              #  26    0x5c0b7  1      
  movl %r12d, %r12d                #  27    0x5c0b8  3      
  movq 0x60(%r15,%r12,1), %rax     #  28    0x5c0bb  5      
  leal 0x54(%r12), %esi            #  29    0x5c0c0  5      
  shrq $0x3f, %rax                 #  30    0x5c0c5  4      
  leal -0x1(%rax,%rdi,1), %edi     #  31    0x5c0c9  4      
  nop                              #  32    0x5c0cd  1      
  callq ._Unwind_Find_FDE          #  33    0x5c0ce  5      
  movl %eax, %r8d                  #  34    0x5c0d3  3      
  testq %r8, %r8                   #  35    0x5c0d6  3      
  je .L_5c500                      #  36    0x5c0d9  6      
  movl %r8d, %edx                  #  37    0x5c0df  3      
  movl %r8d, %r8d                  #  38    0x5c0e2  3      
  subl 0x4(%r15,%r8,1), %edx       #  39    0x5c0e5  5      
  movl %r12d, %r12d                #  40    0x5c0ea  3      
  movl 0x5c(%r15,%r12,1), %eax     #  41    0x5c0ed  5      
  nop                              #  42    0x5c0f2  1      
  movq %r8, (%rsp)                 #  43    0x5c0f3  4      
  movl %ebx, %ebx                  #  44    0x5c0f7  2      
  movl %eax, 0x140(%r15,%rbx,1)    #  45    0x5c0f9  8      
  addl $0x4, %edx                  #  46    0x5c101  3      
  leal 0x9(%rdx), %r13d            #  47    0x5c104  4      
  movq %rdx, 0x8(%rsp)             #  48    0x5c108  5      
  movl %r13d, %edi                 #  49    0x5c10d  3      
  nop                              #  50    0x5c110  1      
  nop                              #  51    0x5c111  1      
  nop                              #  52    0x5c112  1      
  callq .strlen                    #  53    0x5c113  5      
  movq 0x8(%rsp), %rdx             #  54    0x5c118  5      
  movq (%rsp), %r8                 #  55    0x5c11d  4      
  movl %edx, %edx                  #  56    0x5c121  2      
  cmpb $0x65, 0x9(%r15,%rdx,1)     #  57    0x5c123  6      
  leal 0xa(%rax,%rdx,1), %edi      #  58    0x5c129  4      
  je .L_5c5a0                      #  59    0x5c12d  6      
  nop                              #  60    0x5c133  1      
.L_5c160:                          #        0x5c134  0      
  xorl %r9d, %r9d                  #  61    0x5c134  3      
  xorl %ecx, %ecx                  #  62    0x5c137  2      
  nop                              #  63    0x5c139  1      
  nop                              #  64    0x5c13a  1      
.L_5c180:                          #        0x5c13b  0      
  movl %edi, %edi                  #  65    0x5c13b  2      
  movzbl (%r15,%rdi,1), %esi       #  66    0x5c13d  5      
  addl $0x1, %edi                  #  67    0x5c142  3      
  movl %esi, %eax                  #  68    0x5c145  2      
  andl $0x7f, %eax                 #  69    0x5c147  3      
  shll %cl, %eax                   #  70    0x5c14a  2      
  addl $0x7, %ecx                  #  71    0x5c14c  3      
  orl %eax, %r9d                   #  72    0x5c14f  3      
  testb %sil, %sil                 #  73    0x5c152  3      
  js .L_5c180                      #  74    0x5c155  6      
  movl %r9d, %r9d                  #  75    0x5c15b  3      
  nop                              #  76    0x5c15e  1      
  leal 0x4c(%rsp), %esi            #  77    0x5c15f  4      
  movq %rdx, 0x8(%rsp)             #  78    0x5c163  5      
  movl %ebx, %ebx                  #  79    0x5c168  2      
  movq %r9, 0x150(%r15,%rbx,1)     #  80    0x5c16a  8      
  movq %r8, (%rsp)                 #  81    0x5c172  4      
  nop                              #  82    0x5c176  1      
  callq .read_sleb128              #  83    0x5c177  5      
  movl %eax, %edi                  #  84    0x5c17c  2      
  movslq 0x4c(%rsp), %rax          #  85    0x5c17e  5      
  movq 0x8(%rsp), %rdx             #  86    0x5c183  5      
  xorl %r9d, %r9d                  #  87    0x5c188  3      
  xorl %ecx, %ecx                  #  88    0x5c18b  2      
  movq (%rsp), %r8                 #  89    0x5c18d  4      
  movl %ebx, %ebx                  #  90    0x5c191  2      
  movq %rax, 0x148(%r15,%rbx,1)    #  91    0x5c193  8      
  nop                              #  92    0x5c19b  1      
  movl %edx, %edx                  #  93    0x5c19c  2      
  cmpb $0x1, 0x8(%r15,%rdx,1)      #  94    0x5c19e  6      
  je .L_5c580                      #  95    0x5c1a4  6      
  nop                              #  96    0x5c1aa  1      
  nop                              #  97    0x5c1ab  1      
.L_5c200:                          #        0x5c1ac  0      
  movl %edi, %edi                  #  98    0x5c1ac  2      
  movzbl (%r15,%rdi,1), %esi       #  99    0x5c1ae  5      
  addl $0x1, %edi                  #  100   0x5c1b3  3      
  movl %esi, %eax                  #  101   0x5c1b6  2      
  andl $0x7f, %eax                 #  102   0x5c1b8  3      
  shll %cl, %eax                   #  103   0x5c1bb  2      
  addl $0x7, %ecx                  #  104   0x5c1bd  3      
  orl %eax, %r9d                   #  105   0x5c1c0  3      
  testb %sil, %sil                 #  106   0x5c1c3  3      
  js .L_5c200                      #  107   0x5c1c6  6      
  movl %r9d, %r9d                  #  108   0x5c1cc  3      
  nop                              #  109   0x5c1cf  1      
  movl %ebx, %ebx                  #  110   0x5c1d0  2      
  movq %r9, 0x158(%r15,%rbx,1)     #  111   0x5c1d2  8      
  nop                              #  112   0x5c1da  1      
  nop                              #  113   0x5c1db  1      
.L_5c240:                          #        0x5c1dc  0      
  movl %ebx, %ebx                  #  114   0x5c1dc  2      
  movb $0xff, 0x161(%r15,%rbx,1)   #  115   0x5c1de  9      
  movl %r13d, %r13d                #  116   0x5c1e7  3      
  movzbl (%r15,%r13,1), %eax       #  117   0x5c1ea  5      
  xorl %r10d, %r10d                #  118   0x5c1ef  3      
  cmpb $0x7a, %al                  #  119   0x5c1f2  2      
  je .L_5c7c0                      #  120   0x5c1f4  6      
  xchgw %ax, %ax                   #  121   0x5c1fa  3      
.L_5c260:                          #        0x5c1fd  0      
  leal 0x48(%rsp), %ecx            #  122   0x5c1fd  4      
  addl $0x1, %r13d                 #  123   0x5c201  4      
  movq %rcx, 0x38(%rsp)            #  124   0x5c205  5      
  jmpq .L_5c2e0                    #  125   0x5c20a  5      
  xchgw %ax, %ax                   #  126   0x5c20f  3      
  nop                              #  127   0x5c212  1      
.L_5c280:                          #        0x5c213  0      
  cmpb $0x52, %al                  #  128   0x5c213  2      
  je .L_5c320                      #  129   0x5c215  6      
  cmpb $0x50, %al                  #  130   0x5c21b  2      
  je .L_5c340                      #  131   0x5c21d  6      
  cmpb $0x53, %al                  #  132   0x5c223  2      
  jne .L_5c520                     #  133   0x5c225  6      
  nop                              #  134   0x5c22b  1      
  movl %ebx, %ebx                  #  135   0x5c22c  2      
  movb $0x1, 0x163(%r15,%rbx,1)    #  136   0x5c22e  9      
  movl %r13d, %eax                 #  137   0x5c237  3      
  movq %rdi, %r14                  #  138   0x5c23a  3      
  nop                              #  139   0x5c23d  1      
.L_5c2c0:                          #        0x5c23e  0      
  movl %eax, %eax                  #  140   0x5c23e  2      
  movzbl (%r15,%rax,1), %eax       #  141   0x5c240  5      
  addl $0x1, %r13d                 #  142   0x5c245  4      
  movq %r14, %rdi                  #  143   0x5c249  3      
  nop                              #  144   0x5c24c  1      
  nop                              #  145   0x5c24d  1      
.L_5c2e0:                          #        0x5c24e  0      
  testb %al, %al                   #  146   0x5c24e  2      
  je .L_5c3c0                      #  147   0x5c250  6      
  cmpb $0x4c, %al                  #  148   0x5c256  2      
  jne .L_5c280                     #  149   0x5c258  6      
  movl %edi, %edi                  #  150   0x5c25e  2      
  movzbl (%r15,%rdi,1), %eax       #  151   0x5c260  5      
  leal 0x1(%rdi), %r14d            #  152   0x5c265  4      
  nop                              #  153   0x5c269  1      
  movl %ebx, %ebx                  #  154   0x5c26a  2      
  movb %al, 0x161(%r15,%rbx,1)     #  155   0x5c26c  8      
  movl %r13d, %eax                 #  156   0x5c274  3      
  jmpq .L_5c2c0                    #  157   0x5c277  5      
  xchgw %ax, %ax                   #  158   0x5c27c  3      
  nop                              #  159   0x5c27f  1      
.L_5c320:                          #        0x5c280  0      
  movl %edi, %edi                  #  160   0x5c280  2      
  movzbl (%r15,%rdi,1), %eax       #  161   0x5c282  5      
  leal 0x1(%rdi), %r14d            #  162   0x5c287  4      
  movl %ebx, %ebx                  #  163   0x5c28b  2      
  movb %al, 0x160(%r15,%rbx,1)     #  164   0x5c28d  8      
  movl %r13d, %eax                 #  165   0x5c295  3      
  jmpq .L_5c2c0                    #  166   0x5c298  5      
  nop                              #  167   0x5c29d  1      
.L_5c340:                          #        0x5c29e  0      
  movl %edi, %edi                  #  168   0x5c29e  2      
  movzbl (%r15,%rdi,1), %r9d       #  169   0x5c2a0  5      
  leal 0x1(%rdi), %r14d            #  170   0x5c2a5  4      
  cmpb $0xff, %r9b                 #  171   0x5c2a9  4      
  movzbl %r9b, %r11d               #  172   0x5c2ad  4      
  je .L_5c820                      #  173   0x5c2b1  6      
  movl %r11d, %eax                 #  174   0x5c2b7  3      
  andl $0x70, %eax                 #  175   0x5c2ba  3      
  nop                              #  176   0x5c2bd  1      
  cmpl $0x20, %eax                 #  177   0x5c2be  3      
  je .L_5c920                      #  178   0x5c2c1  6      
  jle .L_5c5e0                     #  179   0x5c2c7  6      
  cmpl $0x40, %eax                 #  180   0x5c2cd  3      
  je .L_5c8e0                      #  181   0x5c2d0  6      
  cmpl $0x50, %eax                 #  182   0x5c2d6  3      
  nop                              #  183   0x5c2d9  1      
  je .L_5c600                      #  184   0x5c2da  6      
  cmpl $0x30, %eax                 #  185   0x5c2e0  3      
  je .L_5c880                      #  186   0x5c2e3  6      
  xchgw %ax, %ax                   #  187   0x5c2e9  3      
  nop                              #  188   0x5c2ec  1      
.L_5c3a0:                          #        0x5c2ed  0      
  nop                              #  189   0x5c2ed  1      
  nop                              #  190   0x5c2ee  1      
  callq .abort                     #  191   0x5c2ef  5      
.L_5c3c0:                          #        0x5c2f4  0      
  testq %r10, %r10                 #  192   0x5c2f4  3      
  je .L_5c540                      #  193   0x5c2f7  6      
  movq %r10, %rdi                  #  194   0x5c2fd  3      
  nop                              #  195   0x5c300  1      
  nop                              #  196   0x5c301  1      
.L_5c3e0:                          #        0x5c302  0      
  movl %edx, %edx                  #  197   0x5c302  2      
  movl (%r15,%rdx,1), %esi         #  198   0x5c304  4      
  movl %ebx, %ecx                  #  199   0x5c308  2      
  movq %r8, (%rsp)                 #  200   0x5c30a  4      
  leal 0x4(%rsi,%rdx,1), %esi      #  201   0x5c30e  4      
  movl %r12d, %edx                 #  202   0x5c312  3      
  nop                              #  203   0x5c315  1      
  callq .execute_cfa_program       #  204   0x5c316  5      
  movl %ebx, %ebx                  #  205   0x5c31b  2      
  movzbl 0x160(%r15,%rbx,1), %eax  #  206   0x5c31d  9      
  movq (%rsp), %r8                 #  207   0x5c326  4      
  cmpb $0xff, %al                  #  208   0x5c32a  2      
  je .L_5c840                      #  209   0x5c32c  6      
  andl $0x7, %eax                  #  210   0x5c332  3      
  cmpl $0x2, %eax                  #  211   0x5c335  3      
  nop                              #  212   0x5c338  1      
  je .L_5c960                      #  213   0x5c339  6      
  jg .L_5c680                      #  214   0x5c33f  6      
  testl %eax, %eax                 #  215   0x5c345  2      
  jne .L_5c3a0                     #  216   0x5c347  6      
  nop                              #  217   0x5c34d  1      
.L_5c440:                          #        0x5c34e  0      
  movl $0x8, %r14d                 #  218   0x5c34e  6      
  nop                              #  219   0x5c354  1      
  nop                              #  220   0x5c355  1      
.L_5c460:                          #        0x5c356  0      
  xorl %esi, %esi                  #  221   0x5c356  2      
  xorl %ecx, %ecx                  #  222   0x5c358  2      
  xorl %r13d, %r13d                #  223   0x5c35a  3      
  movl %ebx, %ebx                  #  224   0x5c35d  2      
  cmpb $0x0, 0x162(%r15,%rbx,1)    #  225   0x5c35f  9      
  leal 0x8(%r14,%r8,1), %r14d      #  226   0x5c368  5      
  jne .L_5c6a0                     #  227   0x5c36d  6      
  nop                              #  228   0x5c373  1      
  movl %ebx, %ebx                  #  229   0x5c374  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  230   0x5c376  9      
  cmpb $0xff, %dl                  #  231   0x5c37f  3      
  je .L_5c6e0                      #  232   0x5c382  6      
  nop                              #  233   0x5c388  1      
.L_5c4a0:                          #        0x5c389  0      
  movzbl %dl, %ecx                 #  234   0x5c389  3      
  movl %ecx, %r9d                  #  235   0x5c38c  3      
  andl $0x70, %r9d                 #  236   0x5c38f  4      
  cmpl $0x20, %r9d                 #  237   0x5c393  4      
  je .L_5cd60                      #  238   0x5c397  6      
  jg .L_5c980                      #  239   0x5c39d  6      
  testl %r9d, %r9d                 #  240   0x5c3a3  3      
  nop                              #  241   0x5c3a6  1      
  jne .L_5ca20                     #  242   0x5c3a7  6      
  nop                              #  243   0x5c3ad  1      
  nop                              #  244   0x5c3ae  1      
.L_5c4e0:                          #        0x5c3af  0      
  xorl %r10d, %r10d                #  245   0x5c3af  3      
  jmpq .L_5c9e0                    #  246   0x5c3b2  5      
  nop                              #  247   0x5c3b7  1      
  nop                              #  248   0x5c3b8  1      
.L_5c500:                          #        0x5c3b9  0      
  addl $0x58, %esp                 #  249   0x5c3b9  3      
  addq %r15, %rsp                  #  250   0x5c3bc  3      
  movl $0x5, %eax                  #  251   0x5c3bf  5      
  popq %rbx                        #  252   0x5c3c4  2      
  popq %r12                        #  253   0x5c3c6  3      
  popq %r13                        #  254   0x5c3c9  3      
  popq %r14                        #  255   0x5c3cc  3      
  popq %r11                        #  256   0x5c3cf  3      
  andl $0xffffffe0, %r11d          #  257   0x5c3d2  7      
  addq %r15, %r11                  #  258   0x5c3d9  3      
  jmpq %r11                        #  259   0x5c3dc  3      
  xchgw %ax, %ax                   #  260   0x5c3df  3      
.L_5c520:                          #        0x5c3e2  0      
  movq %r10, %rdi                  #  261   0x5c3e2  3      
  nop                              #  262   0x5c3e5  1      
  nop                              #  263   0x5c3e6  1      
.L_5c540:                          #        0x5c3e7  0      
  testq %rdi, %rdi                 #  264   0x5c3e7  3      
  movl $0x3, %eax                  #  265   0x5c3ea  5      
  jne .L_5c3e0                     #  266   0x5c3ef  6      
  addl $0x58, %esp                 #  267   0x5c3f5  3      
  addq %r15, %rsp                  #  268   0x5c3f8  3      
  popq %rbx                        #  269   0x5c3fb  2      
  popq %r12                        #  270   0x5c3fd  3      
  popq %r13                        #  271   0x5c400  3      
  popq %r14                        #  272   0x5c403  3      
  popq %r11                        #  273   0x5c406  3      
  nop                              #  274   0x5c409  1      
  andl $0xffffffe0, %r11d          #  275   0x5c40a  7      
  addq %r15, %r11                  #  276   0x5c411  3      
  jmpq %r11                        #  277   0x5c414  3      
  nop                              #  278   0x5c417  1      
  nop                              #  279   0x5c418  1      
.L_5c580:                          #        0x5c419  0      
  movl %edi, %edi                  #  280   0x5c419  2      
  movzbl (%r15,%rdi,1), %eax       #  281   0x5c41b  5      
  addl $0x1, %edi                  #  282   0x5c420  3      
  movl %ebx, %ebx                  #  283   0x5c423  2      
  movq %rax, 0x158(%r15,%rbx,1)    #  284   0x5c425  8      
  jmpq .L_5c240                    #  285   0x5c42d  5      
  nop                              #  286   0x5c432  1      
.L_5c5a0:                          #        0x5c433  0      
  movl %r13d, %r13d                #  287   0x5c433  3      
  cmpb $0x68, 0x1(%r15,%r13,1)     #  288   0x5c436  6      
  jne .L_5c160                     #  289   0x5c43c  6      
  movl %edi, %edi                  #  290   0x5c442  2      
  movl (%r15,%rdi,1), %eax         #  291   0x5c444  4      
  addl $0x2, %r13d                 #  292   0x5c448  4      
  addl $0x4, %edi                  #  293   0x5c44c  3      
  nop                              #  294   0x5c44f  1      
  movl %ebx, %ebx                  #  295   0x5c450  2      
  movl %eax, 0x164(%r15,%rbx,1)    #  296   0x5c452  8      
  jmpq .L_5c160                    #  297   0x5c45a  5      
  xchgw %ax, %ax                   #  298   0x5c45f  3      
  nop                              #  299   0x5c462  1      
.L_5c5e0:                          #        0x5c463  0      
  testl %eax, %eax                 #  300   0x5c463  2      
  je .L_5c600                      #  301   0x5c465  6      
  cmpl $0x10, %eax                 #  302   0x5c46b  3      
  jne .L_5c3a0                     #  303   0x5c46e  6      
  nop                              #  304   0x5c474  1      
  nop                              #  305   0x5c475  1      
.L_5c600:                          #        0x5c476  0      
  movl $0x0, 0x2c(%rsp)            #  306   0x5c476  8      
  nop                              #  307   0x5c47e  1      
  nop                              #  308   0x5c47f  1      
.L_5c620:                          #        0x5c480  0      
  cmpb $0x50, %r9b                 #  309   0x5c480  4      
  movq %r14, 0x30(%rsp)            #  310   0x5c484  5      
  je .L_5c860                      #  311   0x5c489  6      
  xchgw %ax, %ax                   #  312   0x5c48f  3      
  nop                              #  313   0x5c492  1      
.L_5c640:                          #        0x5c493  0      
  movl %r11d, %eax                 #  314   0x5c493  3      
  andl $0xf, %eax                  #  315   0x5c496  3      
  cmpl $0xc, %eax                  #  316   0x5c499  3      
  ja .L_5c3a0                      #  317   0x5c49c  6      
  leal 0xffc6c4f(%rip), %ecx       #  318   0x5c4a2  6      
  movl %eax, %eax                  #  319   0x5c4a8  2      
  leaq (%rcx,%rax,4), %rax         #  320   0x5c4aa  4      
  nop                              #  321   0x5c4ae  1      
  movl %eax, %eax                  #  322   0x5c4af  2      
  movslq (%r15,%rax,1), %rax       #  323   0x5c4b1  4      
  addq %rcx, %rax                  #  324   0x5c4b5  3      
  andl $0xffffffe0, %eax           #  325   0x5c4b8  5      
  addq %r15, %rax                  #  326   0x5c4bd  3      
  jmpq %rax                        #  327   0x5c4c0  2      
  nop                              #  328   0x5c4c2  1      
.L_5c680:                          #        0x5c4c3  0      
  cmpl $0x3, %eax                  #  329   0x5c4c3  3      
  je .L_5c440                      #  330   0x5c4c6  6      
  cmpl $0x4, %eax                  #  331   0x5c4cc  3      
  jne .L_5c3a0                     #  332   0x5c4cf  6      
  movl $0x10, %r14d                #  333   0x5c4d5  6      
  jmpq .L_5c460                    #  334   0x5c4db  5      
  nop                              #  335   0x5c4e0  1      
.L_5c6a0:                          #        0x5c4e1  0      
  movl %r14d, %r14d                #  336   0x5c4e1  3      
  movzbl (%r15,%r14,1), %edx       #  337   0x5c4e4  5      
  addl $0x1, %r14d                 #  338   0x5c4e9  4      
  movl %edx, %eax                  #  339   0x5c4ed  2      
  andl $0x7f, %eax                 #  340   0x5c4ef  3      
  shll %cl, %eax                   #  341   0x5c4f2  2      
  addl $0x7, %ecx                  #  342   0x5c4f4  3      
  orl %eax, %esi                   #  343   0x5c4f7  2      
  testb %dl, %dl                   #  344   0x5c4f9  2      
  js .L_5c6a0                      #  345   0x5c4fb  6      
  nop                              #  346   0x5c501  1      
  movl %ebx, %ebx                  #  347   0x5c502  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  348   0x5c504  9      
  leal (%rsi,%r14,1), %r13d        #  349   0x5c50d  4      
  cmpb $0xff, %dl                  #  350   0x5c511  3      
  jne .L_5c4a0                     #  351   0x5c514  6      
  nop                              #  352   0x5c51a  1      
.L_5c6e0:                          #        0x5c51b  0      
  movl %r8d, %r8d                  #  353   0x5c51b  3      
  movl (%r15,%r8,1), %esi          #  354   0x5c51e  4      
  testq %r13, %r13                 #  355   0x5c522  3      
  movl %ebx, %ecx                  #  356   0x5c525  2      
  cmoveq %r14, %r13                #  357   0x5c527  4      
  movl %r12d, %edx                 #  358   0x5c52b  3      
  movl %r13d, %edi                 #  359   0x5c52e  3      
  leal 0x4(%rsi,%r8,1), %esi       #  360   0x5c531  5      
  callq .execute_cfa_program       #  361   0x5c536  5      
  addl $0x58, %esp                 #  362   0x5c53b  3      
  addq %r15, %rsp                  #  363   0x5c53e  3      
  xorl %eax, %eax                  #  364   0x5c541  2      
  popq %rbx                        #  365   0x5c543  2      
  popq %r12                        #  366   0x5c545  3      
  popq %r13                        #  367   0x5c548  3      
  popq %r14                        #  368   0x5c54b  3      
  popq %r11                        #  369   0x5c54e  3      
  andl $0xffffffe0, %r11d          #  370   0x5c551  7      
  addq %r15, %r11                  #  371   0x5c558  3      
  jmpq %r11                        #  372   0x5c55b  3      
  nop                              #  373   0x5c55e  1      
  movl %r14d, %r14d                #  374   0x5c55f  3      
  movl (%r15,%r14,1), %eax         #  375   0x5c562  4      
  addl $0x4, %r14d                 #  376   0x5c566  4      
  nop                              #  377   0x5c56a  1      
  nop                              #  378   0x5c56b  1      
.L_5c740:                          #        0x5c56c  0      
  xorl %ecx, %ecx                  #  379   0x5c56c  2      
  testl %eax, %eax                 #  380   0x5c56e  2      
  je .L_5c780                      #  381   0x5c570  6      
  andl $0x70, %r11d                #  382   0x5c576  4      
  movl 0x30(%rsp), %ecx            #  383   0x5c57a  4      
  cmpl $0x10, %r11d                #  384   0x5c57e  4      
  cmovnel 0x2c(%rsp), %ecx         #  385   0x5c582  5      
  addl %ecx, %eax                  #  386   0x5c587  2      
  testb %r9b, %r9b                 #  387   0x5c589  3      
  movl %eax, %ecx                  #  388   0x5c58c  2      
  xchgw %ax, %ax                   #  389   0x5c58e  3      
  jns .L_5c780                     #  390   0x5c591  6      
  movl %eax, %eax                  #  391   0x5c597  2      
  movl %eax, %eax                  #  392   0x5c599  2      
  movl (%r15,%rax,1), %ecx         #  393   0x5c59b  4      
  nop                              #  394   0x5c59f  1      
  nop                              #  395   0x5c5a0  1      
.L_5c780:                          #        0x5c5a1  0      
  movl %ebx, %ebx                  #  396   0x5c5a1  2      
  movl %ecx, 0x144(%r15,%rbx,1)    #  397   0x5c5a3  8      
  movl %r13d, %eax                 #  398   0x5c5ab  3      
  jmpq .L_5c2c0                    #  399   0x5c5ae  5      
  nop                              #  400   0x5c5b3  1      
  movl %r14d, %r14d                #  401   0x5c5b4  3      
  movl (%r15,%r14,1), %eax         #  402   0x5c5b7  4      
  addl $0x8, %r14d                 #  403   0x5c5bb  4      
  jmpq .L_5c740                    #  404   0x5c5bf  5      
  nop                              #  405   0x5c5c4  1      
  nop                              #  406   0x5c5c5  1      
.L_5c7c0:                          #        0x5c5c6  0      
  xorl %ecx, %ecx                  #  407   0x5c5c6  2      
  nop                              #  408   0x5c5c8  1      
  nop                              #  409   0x5c5c9  1      
.L_5c7e0:                          #        0x5c5ca  0      
  movl %edi, %edi                  #  410   0x5c5ca  2      
  movzbl (%r15,%rdi,1), %esi       #  411   0x5c5cc  5      
  addl $0x1, %edi                  #  412   0x5c5d1  3      
  movl %esi, %eax                  #  413   0x5c5d4  2      
  andl $0x7f, %eax                 #  414   0x5c5d6  3      
  shll %cl, %eax                   #  415   0x5c5d9  2      
  addl $0x7, %ecx                  #  416   0x5c5db  3      
  orl %eax, %r10d                  #  417   0x5c5de  3      
  testb %sil, %sil                 #  418   0x5c5e1  3      
  js .L_5c7e0                      #  419   0x5c5e4  6      
  addl $0x1, %r13d                 #  420   0x5c5ea  4      
  movl %ebx, %ebx                  #  421   0x5c5ee  2      
  movb $0x1, 0x162(%r15,%rbx,1)    #  422   0x5c5f0  9      
  addl %edi, %r10d                 #  423   0x5c5f9  3      
  movl %r13d, %r13d                #  424   0x5c5fc  3      
  movzbl (%r15,%r13,1), %eax       #  425   0x5c5ff  5      
  jmpq .L_5c260                    #  426   0x5c604  5      
  nop                              #  427   0x5c609  1      
.L_5c820:                          #        0x5c60a  0      
  movq %r14, 0x30(%rsp)            #  428   0x5c60a  5      
  movl $0x0, 0x2c(%rsp)            #  429   0x5c60f  8      
  jmpq .L_5c640                    #  430   0x5c617  5      
  nop                              #  431   0x5c61c  1      
.L_5c840:                          #        0x5c61d  0      
  xorl %r14d, %r14d                #  432   0x5c61d  3      
  jmpq .L_5c460                    #  433   0x5c620  5      
  nop                              #  434   0x5c625  1      
  nop                              #  435   0x5c626  1      
.L_5c860:                          #        0x5c627  0      
  leal 0x3(%r14), %eax             #  436   0x5c627  4      
  andl $0xfffffffc, %eax           #  437   0x5c62b  5      
  leal 0x4(%rax), %r14d            #  438   0x5c630  4      
  movl %eax, %eax                  #  439   0x5c634  2      
  movl %eax, %eax                  #  440   0x5c636  2      
  movl (%r15,%rax,1), %ecx         #  441   0x5c638  4      
  movl %r14d, %r14d                #  442   0x5c63c  3      
  jmpq .L_5c780                    #  443   0x5c63f  5      
  nop                              #  444   0x5c644  1      
.L_5c880:                          #        0x5c645  0      
  movl %r12d, %edi                 #  445   0x5c645  3      
  movq %rdx, 0x8(%rsp)             #  446   0x5c648  5      
  movq %r8, (%rsp)                 #  447   0x5c64d  4      
  movb %r9b, 0x10(%rsp)            #  448   0x5c651  5      
  movq %r10, 0x18(%rsp)            #  449   0x5c656  5      
  movl %r11d, 0x20(%rsp)           #  450   0x5c65b  5      
  callq ._Unwind_GetDataRelBase    #  451   0x5c660  5      
.L_5c8a0:                          #        0x5c665  0      
  movl %eax, 0x2c(%rsp)            #  452   0x5c665  4      
  movq 0x8(%rsp), %rdx             #  453   0x5c669  5      
  movq (%rsp), %r8                 #  454   0x5c66e  4      
  movzbl 0x10(%rsp), %r9d          #  455   0x5c672  6      
  movq 0x18(%rsp), %r10            #  456   0x5c678  5      
  movl 0x20(%rsp), %r11d           #  457   0x5c67d  5      
  nop                              #  458   0x5c682  1      
  jmpq .L_5c620                    #  459   0x5c683  5      
  nop                              #  460   0x5c688  1      
  nop                              #  461   0x5c689  1      
.L_5c8e0:                          #        0x5c68a  0      
  movl %r12d, %edi                 #  462   0x5c68a  3      
  movq %rdx, 0x8(%rsp)             #  463   0x5c68d  5      
  movq %r8, (%rsp)                 #  464   0x5c692  4      
  movb %r9b, 0x10(%rsp)            #  465   0x5c696  5      
  movq %r10, 0x18(%rsp)            #  466   0x5c69b  5      
  movl %r11d, 0x20(%rsp)           #  467   0x5c6a0  5      
  callq ._Unwind_GetRegionStart    #  468   0x5c6a5  5      
  jmpq .L_5c8a0                    #  469   0x5c6aa  5      
  nop                              #  470   0x5c6af  1      
  nop                              #  471   0x5c6b0  1      
.L_5c920:                          #        0x5c6b1  0      
  movl %r12d, %edi                 #  472   0x5c6b1  3      
  movq %rdx, 0x8(%rsp)             #  473   0x5c6b4  5      
  movq %r8, (%rsp)                 #  474   0x5c6b9  4      
  movb %r9b, 0x10(%rsp)            #  475   0x5c6bd  5      
  movq %r10, 0x18(%rsp)            #  476   0x5c6c2  5      
  movl %r11d, 0x20(%rsp)           #  477   0x5c6c7  5      
  callq ._Unwind_GetTextRelBase    #  478   0x5c6cc  5      
  jmpq .L_5c8a0                    #  479   0x5c6d1  5      
  nop                              #  480   0x5c6d6  1      
  nop                              #  481   0x5c6d7  1      
.L_5c960:                          #        0x5c6d8  0      
  movl $0x4, %r14d                 #  482   0x5c6d8  6      
  jmpq .L_5c460                    #  483   0x5c6de  5      
  nop                              #  484   0x5c6e3  1      
  nop                              #  485   0x5c6e4  1      
.L_5c980:                          #        0x5c6e5  0      
  cmpl $0x40, %r9d                 #  486   0x5c6e5  4      
  je .L_5cbc0                      #  487   0x5c6e9  6      
  cmpl $0x50, %r9d                 #  488   0x5c6ef  4      
  je .L_5c4e0                      #  489   0x5c6f3  6      
  cmpl $0x30, %r9d                 #  490   0x5c6f9  4      
  jne .L_5c3a0                     #  491   0x5c6fd  6      
  xchgw %ax, %ax                   #  492   0x5c703  3      
  movl %r12d, %edi                 #  493   0x5c706  3      
  movb %dl, 0x8(%rsp)              #  494   0x5c709  4      
  movl %ecx, 0x20(%rsp)            #  495   0x5c70d  4      
  movq %r8, (%rsp)                 #  496   0x5c711  4      
  movl %r9d, 0x10(%rsp)            #  497   0x5c715  5      
  nop                              #  498   0x5c71a  1      
  callq ._Unwind_GetDataRelBase    #  499   0x5c71b  5      
.L_5c9c0:                          #        0x5c720  0      
  movzbl 0x8(%rsp), %edx           #  500   0x5c720  5      
  movl 0x20(%rsp), %ecx            #  501   0x5c725  4      
  movl %eax, %r10d                 #  502   0x5c729  3      
  movq (%rsp), %r8                 #  503   0x5c72c  4      
  movl 0x10(%rsp), %r9d            #  504   0x5c730  5      
  nop                              #  505   0x5c735  1      
.L_5c9e0:                          #        0x5c736  0      
  cmpb $0x50, %dl                  #  506   0x5c736  3      
  je .L_5cd40                      #  507   0x5c739  6      
  andl $0xf, %ecx                  #  508   0x5c73f  3      
  movq %r14, %r11                  #  509   0x5c742  3      
  cmpl $0xc, %ecx                  #  510   0x5c745  3      
  ja .L_5c3a0                      #  511   0x5c748  6      
  leal 0xffc68da(%rip), %eax       #  512   0x5c74e  6      
  movl %ecx, %ecx                  #  513   0x5c754  2      
  leaq (%rax,%rcx,4), %rcx         #  514   0x5c756  4      
  movl %ecx, %ecx                  #  515   0x5c75a  2      
  movslq (%r15,%rcx,1), %rcx       #  516   0x5c75c  4      
  leaq (%rcx,%rax,1), %rax         #  517   0x5c760  4      
  andl $0xffffffe0, %eax           #  518   0x5c764  5      
  addq %r15, %rax                  #  519   0x5c769  3      
  jmpq %rax                        #  520   0x5c76c  2      
  nop                              #  521   0x5c76e  1      
.L_5ca20:                          #        0x5c76f  0      
  cmpl $0x10, %r9d                 #  522   0x5c76f  4      
  jne .L_5c3a0                     #  523   0x5c773  6      
  jmpq .L_5c4e0                    #  524   0x5c779  5      
  xchgw %ax, %ax                   #  525   0x5c77e  3      
  nop                              #  526   0x5c781  1      
  xorl %eax, %eax                  #  527   0x5c782  2      
  xorl %ecx, %ecx                  #  528   0x5c784  2      
  nop                              #  529   0x5c786  1      
  nop                              #  530   0x5c787  1      
.L_5ca60:                          #        0x5c788  0      
  movl %r14d, %r14d                #  531   0x5c788  3      
  movzbl (%r15,%r14,1), %edi       #  532   0x5c78b  5      
  movl $0x7f, %esi                 #  533   0x5c790  5      
  addl $0x1, %r14d                 #  534   0x5c795  4      
  andl %edi, %esi                  #  535   0x5c799  2      
  shll %cl, %esi                   #  536   0x5c79b  2      
  addl $0x7, %ecx                  #  537   0x5c79d  3      
  orl %esi, %eax                   #  538   0x5c7a0  2      
  testb %dil, %dil                 #  539   0x5c7a2  3      
  nop                              #  540   0x5c7a5  1      
  js .L_5ca60                      #  541   0x5c7a6  6      
  jmpq .L_5c740                    #  542   0x5c7ac  5      
  nop                              #  543   0x5c7b1  1      
  nop                              #  544   0x5c7b2  1      
  movl 0x38(%rsp), %esi            #  545   0x5c7b3  4      
  movl %r14d, %edi                 #  546   0x5c7b7  3      
  movq %rdx, 0x8(%rsp)             #  547   0x5c7ba  5      
  movq %r8, (%rsp)                 #  548   0x5c7bf  4      
  movb %r9b, 0x10(%rsp)            #  549   0x5c7c3  5      
  movq %r10, 0x18(%rsp)            #  550   0x5c7c8  5      
  movl %r11d, 0x20(%rsp)           #  551   0x5c7cd  5      
  nop                              #  552   0x5c7d2  1      
  nop                              #  553   0x5c7d3  1      
  nop                              #  554   0x5c7d4  1      
  callq .read_sleb128              #  555   0x5c7d5  5      
  movq 0x8(%rsp), %rdx             #  556   0x5c7da  5      
  movl %eax, %r14d                 #  557   0x5c7df  3      
  movq (%rsp), %r8                 #  558   0x5c7e2  4      
  movl 0x48(%rsp), %eax            #  559   0x5c7e6  4      
  movzbl 0x10(%rsp), %r9d          #  560   0x5c7ea  6      
  movq 0x18(%rsp), %r10            #  561   0x5c7f0  5      
  movl 0x20(%rsp), %r11d           #  562   0x5c7f5  5      
  jmpq .L_5c740                    #  563   0x5c7fa  5      
  nop                              #  564   0x5c7ff  1      
  nop                              #  565   0x5c800  1      
  movl %r14d, %r14d                #  566   0x5c801  3      
  movswl (%r15,%r14,1), %eax       #  567   0x5c804  5      
  addl $0x2, %r14d                 #  568   0x5c809  4      
  jmpq .L_5c740                    #  569   0x5c80d  5      
  nop                              #  570   0x5c812  1      
  movl %r14d, %r14d                #  571   0x5c813  3      
  movzwl (%r15,%r14,1), %eax       #  572   0x5c816  5      
  addl $0x2, %r14d                 #  573   0x5c81b  4      
  jmpq .L_5c740                    #  574   0x5c81f  5      
  nop                              #  575   0x5c824  1      
  movl %r14d, %r14d                #  576   0x5c825  3      
  movl (%r15,%r14,1), %eax         #  577   0x5c828  4      
  addl $0x4, %r14d                 #  578   0x5c82c  4      
  nop                              #  579   0x5c830  1      
  nop                              #  580   0x5c831  1      
.L_5cb80:                          #        0x5c832  0      
  xorl %ecx, %ecx                  #  581   0x5c832  2      
  testl %eax, %eax                 #  582   0x5c834  2      
  je .L_5cba0                      #  583   0x5c836  6      
  cmpl $0x10, %r9d                 #  584   0x5c83c  4      
  cmovel %r11d, %r10d              #  585   0x5c840  4      
  testb %dl, %dl                   #  586   0x5c844  2      
  leal (%r10,%rax,1), %eax         #  587   0x5c846  4      
  movl %eax, %ecx                  #  588   0x5c84a  2      
  jns .L_5cba0                     #  589   0x5c84c  6      
  movl %eax, %eax                  #  590   0x5c852  2      
  movl %eax, %eax                  #  591   0x5c854  2      
  movl (%r15,%rax,1), %ecx         #  592   0x5c856  4      
.L_5cba0:                          #        0x5c85a  0      
  movl %r12d, %r12d                #  593   0x5c85a  3      
  movl %ecx, 0x50(%r15,%r12,1)     #  594   0x5c85d  5      
  jmpq .L_5c6e0                    #  595   0x5c862  5      
  nop                              #  596   0x5c867  1      
  nop                              #  597   0x5c868  1      
.L_5cbc0:                          #        0x5c869  0      
  movl %r12d, %edi                 #  598   0x5c869  3      
  movb %dl, 0x8(%rsp)              #  599   0x5c86c  4      
  movl %ecx, 0x20(%rsp)            #  600   0x5c870  4      
  movq %r8, (%rsp)                 #  601   0x5c874  4      
  movl %r9d, 0x10(%rsp)            #  602   0x5c878  5      
  nop                              #  603   0x5c87d  1      
  callq ._Unwind_GetRegionStart    #  604   0x5c87e  5      
  jmpq .L_5c9c0                    #  605   0x5c883  5      
  nop                              #  606   0x5c888  1      
  nop                              #  607   0x5c889  1      
  movl %r14d, %r14d                #  608   0x5c88a  3      
  movl (%r15,%r14,1), %eax         #  609   0x5c88d  4      
  addl $0x8, %r14d                 #  610   0x5c891  4      
  jmpq .L_5cb80                    #  611   0x5c895  5      
  nop                              #  612   0x5c89a  1      
  nop                              #  613   0x5c89b  1      
  xorl %eax, %eax                  #  614   0x5c89c  2      
  xorl %ecx, %ecx                  #  615   0x5c89e  2      
  nop                              #  616   0x5c8a0  1      
  nop                              #  617   0x5c8a1  1      
.L_5cc40:                          #        0x5c8a2  0      
  movl %r14d, %r14d                #  618   0x5c8a2  3      
  movzbl (%r15,%r14,1), %edi       #  619   0x5c8a5  5      
  movl $0x7f, %esi                 #  620   0x5c8aa  5      
  addl $0x1, %r14d                 #  621   0x5c8af  4      
  andl %edi, %esi                  #  622   0x5c8b3  2      
  shll %cl, %esi                   #  623   0x5c8b5  2      
  addl $0x7, %ecx                  #  624   0x5c8b7  3      
  orl %esi, %eax                   #  625   0x5c8ba  2      
  testb %dil, %dil                 #  626   0x5c8bc  3      
  nop                              #  627   0x5c8bf  1      
  js .L_5cc40                      #  628   0x5c8c0  6      
  jmpq .L_5cb80                    #  629   0x5c8c6  5      
  nop                              #  630   0x5c8cb  1      
  nop                              #  631   0x5c8cc  1      
  movl %r14d, %r14d                #  632   0x5c8cd  3      
  movzwl (%r15,%r14,1), %eax       #  633   0x5c8d0  5      
  addl $0x2, %r14d                 #  634   0x5c8d5  4      
  jmpq .L_5cb80                    #  635   0x5c8d9  5      
  nop                              #  636   0x5c8de  1      
  leal 0x48(%rsp), %esi            #  637   0x5c8df  4      
  movl %r14d, %edi                 #  638   0x5c8e3  3      
  movb %dl, 0x8(%rsp)              #  639   0x5c8e6  4      
  movq %r8, (%rsp)                 #  640   0x5c8ea  4      
  movl %r9d, 0x10(%rsp)            #  641   0x5c8ee  5      
  movl %r10d, 0x18(%rsp)           #  642   0x5c8f3  5      
  movq %r14, 0x20(%rsp)            #  643   0x5c8f8  5      
  xchgw %ax, %ax                   #  644   0x5c8fd  3      
  nop                              #  645   0x5c900  1      
  nop                              #  646   0x5c901  1      
  callq .read_sleb128              #  647   0x5c902  5      
  movzbl 0x8(%rsp), %edx           #  648   0x5c907  5      
  movl %eax, %r14d                 #  649   0x5c90c  3      
  movq (%rsp), %r8                 #  650   0x5c90f  4      
  movl 0x48(%rsp), %eax            #  651   0x5c913  4      
  movl 0x10(%rsp), %r9d            #  652   0x5c917  5      
  movl 0x18(%rsp), %r10d           #  653   0x5c91c  5      
  movq 0x20(%rsp), %r11            #  654   0x5c921  5      
  nop                              #  655   0x5c926  1      
  jmpq .L_5cb80                    #  656   0x5c927  5      
  nop                              #  657   0x5c92c  1      
  nop                              #  658   0x5c92d  1      
  movl %r14d, %r14d                #  659   0x5c92e  3      
  movswl (%r15,%r14,1), %eax       #  660   0x5c931  5      
  addl $0x2, %r14d                 #  661   0x5c936  4      
  jmpq .L_5cb80                    #  662   0x5c93a  5      
  nop                              #  663   0x5c93f  1      
.L_5cd40:                          #        0x5c940  0      
  leal 0x3(%r14), %eax             #  664   0x5c940  4      
  andl $0xfffffffc, %eax           #  665   0x5c944  5      
  leal 0x4(%rax), %r14d            #  666   0x5c949  4      
  movl %eax, %eax                  #  667   0x5c94d  2      
  movl %eax, %eax                  #  668   0x5c94f  2      
  movl (%r15,%rax,1), %ecx         #  669   0x5c951  4      
  movl %r14d, %r14d                #  670   0x5c955  3      
  jmpq .L_5cba0                    #  671   0x5c958  5      
  nop                              #  672   0x5c95d  1      
.L_5cd60:                          #        0x5c95e  0      
  movl %r12d, %edi                 #  673   0x5c95e  3      
  movb %dl, 0x8(%rsp)              #  674   0x5c961  4      
  movl %ecx, 0x20(%rsp)            #  675   0x5c965  4      
  movq %r8, (%rsp)                 #  676   0x5c969  4      
  movl %r9d, 0x10(%rsp)            #  677   0x5c96d  5      
  nop                              #  678   0x5c972  1      
  callq ._Unwind_GetTextRelBase    #  679   0x5c973  5      
  jmpq .L_5c9c0                    #  680   0x5c978  5      
  nop                              #  681   0x5c97d  1      
  nop                              #  682   0x5c97e  1      
                                                            
.size uw_frame_state_for, .-uw_frame_state_for

