  .text
  .globl d_name
  .type d_name, @function

#! file-offset 0x53120
#! rip-offset  0x53120
#! capacity    1984 bytes

# Text                          #  Line  RIP      Bytes  
.d_name:                        #        0x53120  0      
  pushq %r14                    #  1     0x53120  3      
  pushq %r13                    #  2     0x53123  3      
  pushq %r12                    #  3     0x53126  3      
  pushq %rbx                    #  4     0x53129  2      
  movl %edi, %ebx               #  5     0x5312b  2      
  subl $0x18, %esp              #  6     0x5312d  3      
  addq %r15, %rsp               #  7     0x53130  3      
  movl %ebx, %ebx               #  8     0x53133  2      
  movl 0xc(%r15,%rbx,1), %edx   #  9     0x53135  5      
  movl %edx, %edx               #  10    0x5313a  2      
  movzbl (%r15,%rdx,1), %eax    #  11    0x5313c  5      
  cmpb $0x4e, %al               #  12    0x53141  2      
  nop                           #  13    0x53143  1      
  je .L_53400                   #  14    0x53144  6      
  jle .L_531e0                  #  15    0x5314a  6      
  cmpb $0x53, %al               #  16    0x53150  2      
  je .L_532c0                   #  17    0x53152  6      
  cmpb $0x5a, %al               #  18    0x53158  2      
  jne .L_53200                  #  19    0x5315a  6      
  addl $0x1, %edx               #  20    0x53160  3      
  nop                           #  21    0x53163  1      
  xorl %esi, %esi               #  22    0x53164  2      
  movl %ebx, %edi               #  23    0x53166  2      
  movl %ebx, %ebx               #  24    0x53168  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  25    0x5316a  5      
  nop                           #  26    0x5316f  1      
  nop                           #  27    0x53170  1      
  callq .d_encoding             #  28    0x53171  5      
  movl %eax, %r12d              #  29    0x53176  3      
  movl %ebx, %ebx               #  30    0x53179  2      
  movl 0xc(%r15,%rbx,1), %eax   #  31    0x5317b  5      
  movl %eax, %eax               #  32    0x53180  2      
  cmpb $0x45, (%r15,%rax,1)     #  33    0x53182  5      
  je .L_535a0                   #  34    0x53187  6      
  nop                           #  35    0x5318d  1      
.L_531a0:                       #        0x5318e  0      
  xorl %r12d, %r12d             #  36    0x5318e  3      
  nop                           #  37    0x53191  1      
  nop                           #  38    0x53192  1      
.L_531c0:                       #        0x53193  0      
  addl $0x18, %esp              #  39    0x53193  3      
  addq %r15, %rsp               #  40    0x53196  3      
  movl %r12d, %eax              #  41    0x53199  3      
  popq %rbx                     #  42    0x5319c  2      
  popq %r12                     #  43    0x5319e  3      
  popq %r13                     #  44    0x531a1  3      
  popq %r14                     #  45    0x531a4  3      
  popq %r11                     #  46    0x531a7  3      
  andl $0xffffffe0, %r11d       #  47    0x531aa  7      
  addq %r15, %r11               #  48    0x531b1  3      
  jmpq %r11                     #  49    0x531b4  3      
  nop                           #  50    0x531b7  1      
.L_531e0:                       #        0x531b8  0      
  cmpb $0x4c, %al               #  51    0x531b8  2      
  je .L_53280                   #  52    0x531ba  6      
  nop                           #  53    0x531c0  1      
  nop                           #  54    0x531c1  1      
.L_53200:                       #        0x531c2  0      
  movl %ebx, %edi               #  55    0x531c2  2      
  nop                           #  56    0x531c4  1      
  nop                           #  57    0x531c5  1      
  callq .d_unqualified_name     #  58    0x531c6  5      
  movl %eax, %r12d              #  59    0x531cb  3      
  movl %ebx, %ebx               #  60    0x531ce  2      
  movl 0xc(%r15,%rbx,1), %eax   #  61    0x531d0  5      
  movl %eax, %eax               #  62    0x531d5  2      
  cmpb $0x49, (%r15,%rax,1)     #  63    0x531d7  5      
  jne .L_531c0                  #  64    0x531dc  6      
  nop                           #  65    0x531e2  1      
.L_53240:                       #        0x531e3  0      
  testq %r12, %r12              #  66    0x531e3  3      
  je .L_531c0                   #  67    0x531e6  6      
  movl %ebx, %ebx               #  68    0x531ec  2      
  movl 0x20(%r15,%rbx,1), %eax  #  69    0x531ee  5      
  movl %ebx, %ebx               #  70    0x531f3  2      
  cmpl 0x24(%r15,%rbx,1), %eax  #  71    0x531f5  5      
  jge .L_531a0                  #  72    0x531fa  6      
  shll $0x2, %eax               #  73    0x53200  3      
  movl %ebx, %ebx               #  74    0x53203  2      
  addl 0x1c(%r15,%rbx,1), %eax  #  75    0x53205  5      
  movl %ebx, %ebx               #  76    0x5320a  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  77    0x5320c  6      
  movl %eax, %eax               #  78    0x53212  2      
  movl %r12d, (%r15,%rax,1)     #  79    0x53214  4      
  jmpq .L_53320                 #  80    0x53218  5      
  nop                           #  81    0x5321d  1      
.L_53280:                       #        0x5321e  0      
  movl %ebx, %edi               #  82    0x5321e  2      
  nop                           #  83    0x53220  1      
  nop                           #  84    0x53221  1      
  callq .d_unqualified_name     #  85    0x53222  5      
  movl %eax, %r12d              #  86    0x53227  3      
  jmpq .L_531c0                 #  87    0x5322a  5      
  nop                           #  88    0x5322f  1      
  nop                           #  89    0x53230  1      
.L_532c0:                       #        0x53231  0      
  movl %edx, %edx               #  90    0x53231  2      
  cmpb $0x74, 0x1(%r15,%rdx,1)  #  91    0x53233  6      
  je .L_53380                   #  92    0x53239  6      
  xorl %esi, %esi               #  93    0x5323f  2      
  movl %ebx, %edi               #  94    0x53241  2      
  nop                           #  95    0x53243  1      
  callq .d_substitution         #  96    0x53244  5      
  movl $0x1, %edx               #  97    0x53249  5      
  movl %eax, %r12d              #  98    0x5324e  3      
  nop                           #  99    0x53251  1      
  nop                           #  100   0x53252  1      
.L_53300:                       #        0x53253  0      
  movl %ebx, %ebx               #  101   0x53253  2      
  movl 0xc(%r15,%rbx,1), %eax   #  102   0x53255  5      
  movl %eax, %eax               #  103   0x5325a  2      
  cmpb $0x49, (%r15,%rax,1)     #  104   0x5325c  5      
  jne .L_531c0                  #  105   0x53261  6      
  testl %edx, %edx              #  106   0x53267  2      
  je .L_53240                   #  107   0x53269  6      
  nop                           #  108   0x5326f  1      
.L_53320:                       #        0x53270  0      
  movl %ebx, %edi               #  109   0x53270  2      
  nop                           #  110   0x53272  1      
  nop                           #  111   0x53273  1      
  callq .d_template_args        #  112   0x53274  5      
  movl %r12d, %edx              #  113   0x53279  3      
  movl %eax, %ecx               #  114   0x5327c  2      
  movl $0x4, %esi               #  115   0x5327e  5      
  movl %ebx, %edi               #  116   0x53283  2      
  nop                           #  117   0x53285  1      
  callq .d_make_comp            #  118   0x53286  5      
  movl %eax, %r12d              #  119   0x5328b  3      
  jmpq .L_531c0                 #  120   0x5328e  5      
  nop                           #  121   0x53293  1      
  nop                           #  122   0x53294  1      
.L_53380:                       #        0x53295  0      
  addl $0x2, %edx               #  123   0x53295  3      
  movl %ebx, %edi               #  124   0x53298  2      
  movl %ebx, %ebx               #  125   0x5329a  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  126   0x5329c  5      
  nop                           #  127   0x532a1  1      
  callq .d_unqualified_name     #  128   0x532a2  5      
  movl $0x3, %edx               #  129   0x532a7  5      
  movl %eax, %r12d              #  130   0x532ac  3      
  movl $0x10022861, %esi        #  131   0x532af  5      
  movl %ebx, %edi               #  132   0x532b4  2      
  nop                           #  133   0x532b6  1      
  callq .d_make_name            #  134   0x532b7  5      
  movl %r12d, %ecx              #  135   0x532bc  3      
  movl %eax, %edx               #  136   0x532bf  2      
  movl $0x1, %esi               #  137   0x532c1  5      
  movl %ebx, %edi               #  138   0x532c6  2      
  nop                           #  139   0x532c8  1      
  callq .d_make_comp            #  140   0x532c9  5      
  movl %ebx, %ebx               #  141   0x532ce  2      
  addl $0x3, 0x30(%r15,%rbx,1)  #  142   0x532d0  6      
  movl %eax, %r12d              #  143   0x532d6  3      
  xorl %edx, %edx               #  144   0x532d9  2      
  jmpq .L_53300                 #  145   0x532db  5      
  nop                           #  146   0x532e0  1      
.L_53400:                       #        0x532e1  0      
  addl $0x1, %edx               #  147   0x532e1  3      
  leal 0xc(%rsp), %esi          #  148   0x532e4  4      
  movl %ebx, %edi               #  149   0x532e8  2      
  movl %ebx, %ebx               #  150   0x532ea  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  151   0x532ec  5      
  movl $0x1, %edx               #  152   0x532f1  5      
  nop                           #  153   0x532f6  1      
  callq .d_cv_qualifiers        #  154   0x532f7  5      
  movl %eax, %r13d              #  155   0x532fc  3      
  testq %r13, %r13              #  156   0x532ff  3      
  je .L_531a0                   #  157   0x53302  6      
  movl %ebx, %ebx               #  158   0x53308  2      
  movl 0xc(%r15,%rbx,1), %eax   #  159   0x5330a  5      
  xorl %r14d, %r14d             #  160   0x5330f  3      
  movl %eax, %eax               #  161   0x53312  2      
  movzbl (%r15,%rax,1), %r12d   #  162   0x53314  5      
  nop                           #  163   0x53319  1      
.L_53440:                       #        0x5331a  0      
  testb %r12b, %r12b            #  164   0x5331a  3      
  je .L_53580                   #  165   0x5331d  6      
  leal -0x61(%r12), %edx        #  166   0x53323  5      
  cmpb $0x19, %dl               #  167   0x53328  3      
  jbe .L_536a0                  #  168   0x5332b  6      
  leal -0x30(%r12), %edx        #  169   0x53331  5      
  cmpb $0x9, %dl                #  170   0x53336  3      
  nop                           #  171   0x53339  1      
  jbe .L_536a0                  #  172   0x5333a  6      
  cmpb $0x44, %r12b             #  173   0x53340  4      
  je .L_536a0                   #  174   0x53344  6      
  cmpb $0x43, %r12b             #  175   0x5334a  4      
  je .L_536a0                   #  176   0x5334e  6      
  cmpb $0x4c, %r12b             #  177   0x53354  4      
  xchgw %ax, %ax                #  178   0x53358  3      
  je .L_536a0                   #  179   0x5335b  6      
  cmpb $0x53, %r12b             #  180   0x53361  4      
  je .L_53720                   #  181   0x53365  6      
  cmpb $0x49, %r12b             #  182   0x5336b  4      
  je .L_53760                   #  183   0x5336f  6      
  cmpb $0x54, %r12b             #  184   0x53375  4      
  xchgw %ax, %ax                #  185   0x53379  3      
  jne .L_537a0                  #  186   0x5337c  6      
  movl %ebx, %edi               #  187   0x53382  2      
  nop                           #  188   0x53384  1      
  nop                           #  189   0x53385  1      
  callq .d_template_param       #  190   0x53386  5      
  movl %eax, %ecx               #  191   0x5338b  2      
  nop                           #  192   0x5338d  1      
  nop                           #  193   0x5338e  1      
.L_534e0:                       #        0x5338f  0      
  testq %r14, %r14              #  194   0x5338f  3      
  je .L_53540                   #  195   0x53392  6      
  movl $0x1, %esi               #  196   0x53398  5      
  nop                           #  197   0x5339d  1      
  nop                           #  198   0x5339e  1      
.L_53500:                       #        0x5339f  0      
  movl %r14d, %edx              #  199   0x5339f  3      
  movl %ebx, %edi               #  200   0x533a2  2      
  nop                           #  201   0x533a4  1      
  nop                           #  202   0x533a5  1      
  callq .d_make_comp            #  203   0x533a6  5      
  movl %eax, %ecx               #  204   0x533ab  2      
  nop                           #  205   0x533ad  1      
  nop                           #  206   0x533ae  1      
.L_53540:                       #        0x533af  0      
  cmpb $0x53, %r12b             #  207   0x533af  4      
  je .L_53660                   #  208   0x533b3  6      
  movl %ebx, %ebx               #  209   0x533b9  2      
  movl 0xc(%r15,%rbx,1), %eax   #  210   0x533bb  5      
  movl $0x45, %r12d             #  211   0x533c0  6      
  movl %eax, %eax               #  212   0x533c6  2      
  cmpb $0x45, (%r15,%rax,1)     #  213   0x533c8  5      
  xchgw %ax, %ax                #  214   0x533cd  3      
  je .L_53680                   #  215   0x533d0  6      
  testq %rcx, %rcx              #  216   0x533d6  3      
  je .L_53580                   #  217   0x533d9  6      
  movl %ebx, %ebx               #  218   0x533df  2      
  movl 0x20(%r15,%rbx,1), %edx  #  219   0x533e1  5      
  movl %ebx, %ebx               #  220   0x533e6  2      
  cmpl 0x24(%r15,%rbx,1), %edx  #  221   0x533e8  5      
  jl .L_536e0                   #  222   0x533ed  6      
  nop                           #  223   0x533f3  1      
.L_53580:                       #        0x533f4  0      
  movl %r13d, %r13d             #  224   0x533f4  3      
  movl $0x0, (%r15,%r13,1)      #  225   0x533f7  8      
  xorl %r12d, %r12d             #  226   0x533ff  3      
  jmpq .L_531c0                 #  227   0x53402  5      
  nop                           #  228   0x53407  1      
.L_535a0:                       #        0x53408  0      
  addl $0x1, %eax               #  229   0x53408  3      
  movl %ebx, %ebx               #  230   0x5340b  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  231   0x5340d  5      
  movl %eax, %eax               #  232   0x53412  2      
  cmpb $0x73, (%r15,%rax,1)     #  233   0x53414  5      
  jne .L_53800                  #  234   0x53419  6      
  addl $0x1, %eax               #  235   0x5341f  3      
  nop                           #  236   0x53422  1      
  movl %ebx, %ebx               #  237   0x53423  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  238   0x53425  5      
  movl %eax, %eax               #  239   0x5342a  2      
  cmpb $0x5f, (%r15,%rax,1)     #  240   0x5342c  5      
  je .L_538a0                   #  241   0x53431  6      
  nop                           #  242   0x53437  1      
.L_535e0:                       #        0x53438  0      
  movl $0xe, %edx               #  243   0x53438  5      
  movl $0x10022852, %esi        #  244   0x5343d  5      
  movl %ebx, %edi               #  245   0x53442  2      
  nop                           #  246   0x53444  1      
  callq .d_make_name            #  247   0x53445  5      
  movl %eax, %ecx               #  248   0x5344a  2      
  nop                           #  249   0x5344c  1      
  nop                           #  250   0x5344d  1      
.L_53620:                       #        0x5344e  0      
  movl %r12d, %edx              #  251   0x5344e  3      
  movl $0x2, %esi               #  252   0x53451  5      
  movl %ebx, %edi               #  253   0x53456  2      
  xchgw %ax, %ax                #  254   0x53458  3      
  nop                           #  255   0x5345b  1      
  callq .d_make_comp            #  256   0x5345c  5      
  movl %eax, %r12d              #  257   0x53461  3      
  jmpq .L_531c0                 #  258   0x53464  5      
  nop                           #  259   0x53469  1      
  nop                           #  260   0x5346a  1      
.L_53660:                       #        0x5346b  0      
  movl %ebx, %ebx               #  261   0x5346b  2      
  movl 0xc(%r15,%rbx,1), %eax   #  262   0x5346d  5      
  movl %eax, %eax               #  263   0x53472  2      
  movzbl (%r15,%rax,1), %r12d   #  264   0x53474  5      
  nop                           #  265   0x53479  1      
  nop                           #  266   0x5347a  1      
.L_53680:                       #        0x5347b  0      
  movq %rcx, %r14               #  267   0x5347b  3      
  jmpq .L_53440                 #  268   0x5347e  5      
  nop                           #  269   0x53483  1      
  nop                           #  270   0x53484  1      
.L_536a0:                       #        0x53485  0      
  movl %ebx, %edi               #  271   0x53485  2      
  nop                           #  272   0x53487  1      
  nop                           #  273   0x53488  1      
  callq .d_unqualified_name     #  274   0x53489  5      
  movl %eax, %ecx               #  275   0x5348e  2      
  jmpq .L_534e0                 #  276   0x53490  5      
  nop                           #  277   0x53495  1      
  nop                           #  278   0x53496  1      
.L_536e0:                       #        0x53497  0      
  shll $0x2, %edx               #  279   0x53497  3      
  movl %ebx, %ebx               #  280   0x5349a  2      
  addl 0x1c(%r15,%rbx,1), %edx  #  281   0x5349c  5      
  movl %ebx, %ebx               #  282   0x534a1  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  283   0x534a3  6      
  movq %rcx, %r14               #  284   0x534a9  3      
  movl %edx, %edx               #  285   0x534ac  2      
  movl %ecx, (%r15,%rdx,1)      #  286   0x534ae  4      
  nop                           #  287   0x534b2  1      
  movl %eax, %eax               #  288   0x534b3  2      
  movzbl (%r15,%rax,1), %r12d   #  289   0x534b5  5      
  jmpq .L_53440                 #  290   0x534ba  5      
  nop                           #  291   0x534bf  1      
  nop                           #  292   0x534c0  1      
.L_53720:                       #        0x534c1  0      
  movl $0x1, %esi               #  293   0x534c1  5      
  movl %ebx, %edi               #  294   0x534c6  2      
  nop                           #  295   0x534c8  1      
  nop                           #  296   0x534c9  1      
  callq .d_substitution         #  297   0x534ca  5      
  movl %eax, %ecx               #  298   0x534cf  2      
  jmpq .L_534e0                 #  299   0x534d1  5      
  nop                           #  300   0x534d6  1      
  nop                           #  301   0x534d7  1      
.L_53760:                       #        0x534d8  0      
  testq %r14, %r14              #  302   0x534d8  3      
  je .L_53580                   #  303   0x534db  6      
  movl %ebx, %edi               #  304   0x534e1  2      
  nop                           #  305   0x534e3  1      
  nop                           #  306   0x534e4  1      
  callq .d_template_args        #  307   0x534e5  5      
  movl $0x4, %esi               #  308   0x534ea  5      
  movl %eax, %ecx               #  309   0x534ef  2      
  jmpq .L_53500                 #  310   0x534f1  5      
  nop                           #  311   0x534f6  1      
  nop                           #  312   0x534f7  1      
.L_537a0:                       #        0x534f8  0      
  cmpb $0x45, %r12b             #  313   0x534f8  4      
  jne .L_53580                  #  314   0x534fc  6      
  testq %r14, %r14              #  315   0x53502  3      
  movl %r13d, %r13d             #  316   0x53505  3      
  movl %r14d, (%r15,%r13,1)     #  317   0x53508  4      
  je .L_531a0                   #  318   0x5350c  6      
  nop                           #  319   0x53512  1      
  movl %eax, %eax               #  320   0x53513  2      
  cmpb $0x45, (%r15,%rax,1)     #  321   0x53515  5      
  jne .L_531a0                  #  322   0x5351a  6      
  addl $0x1, %eax               #  323   0x53520  3      
  movl 0xc(%rsp), %r12d         #  324   0x53523  5      
  movl %ebx, %ebx               #  325   0x53528  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  326   0x5352a  5      
  nop                           #  327   0x5352f  1      
  jmpq .L_531c0                 #  328   0x53530  5      
  nop                           #  329   0x53535  1      
  nop                           #  330   0x53536  1      
.L_53800:                       #        0x53537  0      
  movl %ebx, %edi               #  331   0x53537  2      
  nop                           #  332   0x53539  1      
  nop                           #  333   0x5353a  1      
  callq .d_name                 #  334   0x5353b  5      
  movl %eax, %r13d              #  335   0x53540  3      
  movl %ebx, %ebx               #  336   0x53543  2      
  movl 0xc(%r15,%rbx,1), %eax   #  337   0x53545  5      
  movl %eax, %eax               #  338   0x5354a  2      
  cmpb $0x5f, (%r15,%rax,1)     #  339   0x5354c  5      
  je .L_53860                   #  340   0x53551  6      
  nop                           #  341   0x53557  1      
.L_53840:                       #        0x53558  0      
  movl %r13d, %ecx              #  342   0x53558  3      
  jmpq .L_53620                 #  343   0x5355b  5      
  nop                           #  344   0x53560  1      
  nop                           #  345   0x53561  1      
.L_53860:                       #        0x53562  0      
  addl $0x1, %eax               #  346   0x53562  3      
  movl %ebx, %edi               #  347   0x53565  2      
  movl %ebx, %ebx               #  348   0x53567  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  349   0x53569  5      
  nop                           #  350   0x5356e  1      
  callq .d_number               #  351   0x5356f  5      
  testl %eax, %eax              #  352   0x53574  2      
  jns .L_53840                  #  353   0x53576  6      
  jmpq .L_531a0                 #  354   0x5357c  5      
  nop                           #  355   0x53581  1      
  nop                           #  356   0x53582  1      
.L_538a0:                       #        0x53583  0      
  addl $0x1, %eax               #  357   0x53583  3      
  movl %ebx, %edi               #  358   0x53586  2      
  movl %ebx, %ebx               #  359   0x53588  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  360   0x5358a  5      
  nop                           #  361   0x5358f  1      
  callq .d_number               #  362   0x53590  5      
  testl %eax, %eax              #  363   0x53595  2      
  jns .L_535e0                  #  364   0x53597  6      
  jmpq .L_531a0                 #  365   0x5359d  5      
  nop                           #  366   0x535a2  1      
  nop                           #  367   0x535a3  1      
                                                         
.size d_name, .-d_name

