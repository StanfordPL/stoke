  .text
  .globl d_name
  .type d_name, @function

#! file-offset 0x53080
#! rip-offset  0x53080
#! capacity    1984 bytes

# Text                          #  Line  RIP      Bytes  
.d_name:                        #        0x53080  0      
  pushq %r14                    #  1     0x53080  3      
  pushq %r13                    #  2     0x53083  3      
  pushq %r12                    #  3     0x53086  3      
  pushq %rbx                    #  4     0x53089  2      
  movl %edi, %ebx               #  5     0x5308b  2      
  subl $0x18, %esp              #  6     0x5308d  3      
  addq %r15, %rsp               #  7     0x53090  3      
  movl %ebx, %ebx               #  8     0x53093  2      
  movl 0xc(%r15,%rbx,1), %edx   #  9     0x53095  5      
  movl %edx, %edx               #  10    0x5309a  2      
  movzbl (%r15,%rdx,1), %eax    #  11    0x5309c  5      
  cmpb $0x4e, %al               #  12    0x530a1  2      
  nop                           #  13    0x530a3  1      
  je .L_53360                   #  14    0x530a4  6      
  jle .L_53140                  #  15    0x530aa  6      
  cmpb $0x53, %al               #  16    0x530b0  2      
  je .L_53220                   #  17    0x530b2  6      
  cmpb $0x5a, %al               #  18    0x530b8  2      
  jne .L_53160                  #  19    0x530ba  6      
  addl $0x1, %edx               #  20    0x530c0  3      
  nop                           #  21    0x530c3  1      
  xorl %esi, %esi               #  22    0x530c4  2      
  movl %ebx, %edi               #  23    0x530c6  2      
  movl %ebx, %ebx               #  24    0x530c8  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  25    0x530ca  5      
  nop                           #  26    0x530cf  1      
  nop                           #  27    0x530d0  1      
  callq .d_encoding             #  28    0x530d1  5      
  movl %eax, %r12d              #  29    0x530d6  3      
  movl %ebx, %ebx               #  30    0x530d9  2      
  movl 0xc(%r15,%rbx,1), %eax   #  31    0x530db  5      
  movl %eax, %eax               #  32    0x530e0  2      
  cmpb $0x45, (%r15,%rax,1)     #  33    0x530e2  5      
  je .L_53500                   #  34    0x530e7  6      
  nop                           #  35    0x530ed  1      
.L_53100:                       #        0x530ee  0      
  xorl %r12d, %r12d             #  36    0x530ee  3      
  nop                           #  37    0x530f1  1      
  nop                           #  38    0x530f2  1      
.L_53120:                       #        0x530f3  0      
  addl $0x18, %esp              #  39    0x530f3  3      
  addq %r15, %rsp               #  40    0x530f6  3      
  movl %r12d, %eax              #  41    0x530f9  3      
  popq %rbx                     #  42    0x530fc  2      
  popq %r12                     #  43    0x530fe  3      
  popq %r13                     #  44    0x53101  3      
  popq %r14                     #  45    0x53104  3      
  popq %r11                     #  46    0x53107  3      
  andl $0xffffffe0, %r11d       #  47    0x5310a  7      
  addq %r15, %r11               #  48    0x53111  3      
  jmpq %r11                     #  49    0x53114  3      
  nop                           #  50    0x53117  1      
.L_53140:                       #        0x53118  0      
  cmpb $0x4c, %al               #  51    0x53118  2      
  je .L_531e0                   #  52    0x5311a  6      
  nop                           #  53    0x53120  1      
  nop                           #  54    0x53121  1      
.L_53160:                       #        0x53122  0      
  movl %ebx, %edi               #  55    0x53122  2      
  nop                           #  56    0x53124  1      
  nop                           #  57    0x53125  1      
  callq .d_unqualified_name     #  58    0x53126  5      
  movl %eax, %r12d              #  59    0x5312b  3      
  movl %ebx, %ebx               #  60    0x5312e  2      
  movl 0xc(%r15,%rbx,1), %eax   #  61    0x53130  5      
  movl %eax, %eax               #  62    0x53135  2      
  cmpb $0x49, (%r15,%rax,1)     #  63    0x53137  5      
  jne .L_53120                  #  64    0x5313c  6      
  nop                           #  65    0x53142  1      
.L_531a0:                       #        0x53143  0      
  testq %r12, %r12              #  66    0x53143  3      
  je .L_53120                   #  67    0x53146  6      
  movl %ebx, %ebx               #  68    0x5314c  2      
  movl 0x20(%r15,%rbx,1), %eax  #  69    0x5314e  5      
  movl %ebx, %ebx               #  70    0x53153  2      
  cmpl 0x24(%r15,%rbx,1), %eax  #  71    0x53155  5      
  jge .L_53100                  #  72    0x5315a  6      
  shll $0x2, %eax               #  73    0x53160  3      
  movl %ebx, %ebx               #  74    0x53163  2      
  addl 0x1c(%r15,%rbx,1), %eax  #  75    0x53165  5      
  movl %ebx, %ebx               #  76    0x5316a  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  77    0x5316c  6      
  movl %eax, %eax               #  78    0x53172  2      
  movl %r12d, (%r15,%rax,1)     #  79    0x53174  4      
  jmpq .L_53280                 #  80    0x53178  5      
  nop                           #  81    0x5317d  1      
.L_531e0:                       #        0x5317e  0      
  movl %ebx, %edi               #  82    0x5317e  2      
  nop                           #  83    0x53180  1      
  nop                           #  84    0x53181  1      
  callq .d_unqualified_name     #  85    0x53182  5      
  movl %eax, %r12d              #  86    0x53187  3      
  jmpq .L_53120                 #  87    0x5318a  5      
  nop                           #  88    0x5318f  1      
  nop                           #  89    0x53190  1      
.L_53220:                       #        0x53191  0      
  movl %edx, %edx               #  90    0x53191  2      
  cmpb $0x74, 0x1(%r15,%rdx,1)  #  91    0x53193  6      
  je .L_532e0                   #  92    0x53199  6      
  xorl %esi, %esi               #  93    0x5319f  2      
  movl %ebx, %edi               #  94    0x531a1  2      
  nop                           #  95    0x531a3  1      
  callq .d_substitution         #  96    0x531a4  5      
  movl $0x1, %edx               #  97    0x531a9  5      
  movl %eax, %r12d              #  98    0x531ae  3      
  nop                           #  99    0x531b1  1      
  nop                           #  100   0x531b2  1      
.L_53260:                       #        0x531b3  0      
  movl %ebx, %ebx               #  101   0x531b3  2      
  movl 0xc(%r15,%rbx,1), %eax   #  102   0x531b5  5      
  movl %eax, %eax               #  103   0x531ba  2      
  cmpb $0x49, (%r15,%rax,1)     #  104   0x531bc  5      
  jne .L_53120                  #  105   0x531c1  6      
  testl %edx, %edx              #  106   0x531c7  2      
  je .L_531a0                   #  107   0x531c9  6      
  nop                           #  108   0x531cf  1      
.L_53280:                       #        0x531d0  0      
  movl %ebx, %edi               #  109   0x531d0  2      
  nop                           #  110   0x531d2  1      
  nop                           #  111   0x531d3  1      
  callq .d_template_args        #  112   0x531d4  5      
  movl %r12d, %edx              #  113   0x531d9  3      
  movl %eax, %ecx               #  114   0x531dc  2      
  movl $0x4, %esi               #  115   0x531de  5      
  movl %ebx, %edi               #  116   0x531e3  2      
  nop                           #  117   0x531e5  1      
  callq .d_make_comp            #  118   0x531e6  5      
  movl %eax, %r12d              #  119   0x531eb  3      
  jmpq .L_53120                 #  120   0x531ee  5      
  nop                           #  121   0x531f3  1      
  nop                           #  122   0x531f4  1      
.L_532e0:                       #        0x531f5  0      
  addl $0x2, %edx               #  123   0x531f5  3      
  movl %ebx, %edi               #  124   0x531f8  2      
  movl %ebx, %ebx               #  125   0x531fa  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  126   0x531fc  5      
  nop                           #  127   0x53201  1      
  callq .d_unqualified_name     #  128   0x53202  5      
  movl $0x3, %edx               #  129   0x53207  5      
  movl %eax, %r12d              #  130   0x5320c  3      
  movl $0x10022861, %esi        #  131   0x5320f  5      
  movl %ebx, %edi               #  132   0x53214  2      
  nop                           #  133   0x53216  1      
  callq .d_make_name            #  134   0x53217  5      
  movl %r12d, %ecx              #  135   0x5321c  3      
  movl %eax, %edx               #  136   0x5321f  2      
  movl $0x1, %esi               #  137   0x53221  5      
  movl %ebx, %edi               #  138   0x53226  2      
  nop                           #  139   0x53228  1      
  callq .d_make_comp            #  140   0x53229  5      
  movl %ebx, %ebx               #  141   0x5322e  2      
  addl $0x3, 0x30(%r15,%rbx,1)  #  142   0x53230  6      
  movl %eax, %r12d              #  143   0x53236  3      
  xorl %edx, %edx               #  144   0x53239  2      
  jmpq .L_53260                 #  145   0x5323b  5      
  nop                           #  146   0x53240  1      
.L_53360:                       #        0x53241  0      
  addl $0x1, %edx               #  147   0x53241  3      
  leal 0xc(%rsp), %esi          #  148   0x53244  4      
  movl %ebx, %edi               #  149   0x53248  2      
  movl %ebx, %ebx               #  150   0x5324a  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  151   0x5324c  5      
  movl $0x1, %edx               #  152   0x53251  5      
  nop                           #  153   0x53256  1      
  callq .d_cv_qualifiers        #  154   0x53257  5      
  movl %eax, %r13d              #  155   0x5325c  3      
  testq %r13, %r13              #  156   0x5325f  3      
  je .L_53100                   #  157   0x53262  6      
  movl %ebx, %ebx               #  158   0x53268  2      
  movl 0xc(%r15,%rbx,1), %eax   #  159   0x5326a  5      
  xorl %r14d, %r14d             #  160   0x5326f  3      
  movl %eax, %eax               #  161   0x53272  2      
  movzbl (%r15,%rax,1), %r12d   #  162   0x53274  5      
  nop                           #  163   0x53279  1      
.L_533a0:                       #        0x5327a  0      
  testb %r12b, %r12b            #  164   0x5327a  3      
  je .L_534e0                   #  165   0x5327d  6      
  leal -0x61(%r12), %edx        #  166   0x53283  5      
  cmpb $0x19, %dl               #  167   0x53288  3      
  jbe .L_53600                  #  168   0x5328b  6      
  leal -0x30(%r12), %edx        #  169   0x53291  5      
  cmpb $0x9, %dl                #  170   0x53296  3      
  nop                           #  171   0x53299  1      
  jbe .L_53600                  #  172   0x5329a  6      
  cmpb $0x44, %r12b             #  173   0x532a0  4      
  je .L_53600                   #  174   0x532a4  6      
  cmpb $0x43, %r12b             #  175   0x532aa  4      
  je .L_53600                   #  176   0x532ae  6      
  cmpb $0x4c, %r12b             #  177   0x532b4  4      
  xchgw %ax, %ax                #  178   0x532b8  3      
  je .L_53600                   #  179   0x532bb  6      
  cmpb $0x53, %r12b             #  180   0x532c1  4      
  je .L_53680                   #  181   0x532c5  6      
  cmpb $0x49, %r12b             #  182   0x532cb  4      
  je .L_536c0                   #  183   0x532cf  6      
  cmpb $0x54, %r12b             #  184   0x532d5  4      
  xchgw %ax, %ax                #  185   0x532d9  3      
  jne .L_53700                  #  186   0x532dc  6      
  movl %ebx, %edi               #  187   0x532e2  2      
  nop                           #  188   0x532e4  1      
  nop                           #  189   0x532e5  1      
  callq .d_template_param       #  190   0x532e6  5      
  movl %eax, %ecx               #  191   0x532eb  2      
  nop                           #  192   0x532ed  1      
  nop                           #  193   0x532ee  1      
.L_53440:                       #        0x532ef  0      
  testq %r14, %r14              #  194   0x532ef  3      
  je .L_534a0                   #  195   0x532f2  6      
  movl $0x1, %esi               #  196   0x532f8  5      
  nop                           #  197   0x532fd  1      
  nop                           #  198   0x532fe  1      
.L_53460:                       #        0x532ff  0      
  movl %r14d, %edx              #  199   0x532ff  3      
  movl %ebx, %edi               #  200   0x53302  2      
  nop                           #  201   0x53304  1      
  nop                           #  202   0x53305  1      
  callq .d_make_comp            #  203   0x53306  5      
  movl %eax, %ecx               #  204   0x5330b  2      
  nop                           #  205   0x5330d  1      
  nop                           #  206   0x5330e  1      
.L_534a0:                       #        0x5330f  0      
  cmpb $0x53, %r12b             #  207   0x5330f  4      
  je .L_535c0                   #  208   0x53313  6      
  movl %ebx, %ebx               #  209   0x53319  2      
  movl 0xc(%r15,%rbx,1), %eax   #  210   0x5331b  5      
  movl $0x45, %r12d             #  211   0x53320  6      
  movl %eax, %eax               #  212   0x53326  2      
  cmpb $0x45, (%r15,%rax,1)     #  213   0x53328  5      
  xchgw %ax, %ax                #  214   0x5332d  3      
  je .L_535e0                   #  215   0x53330  6      
  testq %rcx, %rcx              #  216   0x53336  3      
  je .L_534e0                   #  217   0x53339  6      
  movl %ebx, %ebx               #  218   0x5333f  2      
  movl 0x20(%r15,%rbx,1), %edx  #  219   0x53341  5      
  movl %ebx, %ebx               #  220   0x53346  2      
  cmpl 0x24(%r15,%rbx,1), %edx  #  221   0x53348  5      
  jl .L_53640                   #  222   0x5334d  6      
  nop                           #  223   0x53353  1      
.L_534e0:                       #        0x53354  0      
  movl %r13d, %r13d             #  224   0x53354  3      
  movl $0x0, (%r15,%r13,1)      #  225   0x53357  8      
  xorl %r12d, %r12d             #  226   0x5335f  3      
  jmpq .L_53120                 #  227   0x53362  5      
  nop                           #  228   0x53367  1      
.L_53500:                       #        0x53368  0      
  addl $0x1, %eax               #  229   0x53368  3      
  movl %ebx, %ebx               #  230   0x5336b  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  231   0x5336d  5      
  movl %eax, %eax               #  232   0x53372  2      
  cmpb $0x73, (%r15,%rax,1)     #  233   0x53374  5      
  jne .L_53760                  #  234   0x53379  6      
  addl $0x1, %eax               #  235   0x5337f  3      
  nop                           #  236   0x53382  1      
  movl %ebx, %ebx               #  237   0x53383  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  238   0x53385  5      
  movl %eax, %eax               #  239   0x5338a  2      
  cmpb $0x5f, (%r15,%rax,1)     #  240   0x5338c  5      
  je .L_53800                   #  241   0x53391  6      
  nop                           #  242   0x53397  1      
.L_53540:                       #        0x53398  0      
  movl $0xe, %edx               #  243   0x53398  5      
  movl $0x10022852, %esi        #  244   0x5339d  5      
  movl %ebx, %edi               #  245   0x533a2  2      
  nop                           #  246   0x533a4  1      
  callq .d_make_name            #  247   0x533a5  5      
  movl %eax, %ecx               #  248   0x533aa  2      
  nop                           #  249   0x533ac  1      
  nop                           #  250   0x533ad  1      
.L_53580:                       #        0x533ae  0      
  movl %r12d, %edx              #  251   0x533ae  3      
  movl $0x2, %esi               #  252   0x533b1  5      
  movl %ebx, %edi               #  253   0x533b6  2      
  xchgw %ax, %ax                #  254   0x533b8  3      
  nop                           #  255   0x533bb  1      
  callq .d_make_comp            #  256   0x533bc  5      
  movl %eax, %r12d              #  257   0x533c1  3      
  jmpq .L_53120                 #  258   0x533c4  5      
  nop                           #  259   0x533c9  1      
  nop                           #  260   0x533ca  1      
.L_535c0:                       #        0x533cb  0      
  movl %ebx, %ebx               #  261   0x533cb  2      
  movl 0xc(%r15,%rbx,1), %eax   #  262   0x533cd  5      
  movl %eax, %eax               #  263   0x533d2  2      
  movzbl (%r15,%rax,1), %r12d   #  264   0x533d4  5      
  nop                           #  265   0x533d9  1      
  nop                           #  266   0x533da  1      
.L_535e0:                       #        0x533db  0      
  movq %rcx, %r14               #  267   0x533db  3      
  jmpq .L_533a0                 #  268   0x533de  5      
  nop                           #  269   0x533e3  1      
  nop                           #  270   0x533e4  1      
.L_53600:                       #        0x533e5  0      
  movl %ebx, %edi               #  271   0x533e5  2      
  nop                           #  272   0x533e7  1      
  nop                           #  273   0x533e8  1      
  callq .d_unqualified_name     #  274   0x533e9  5      
  movl %eax, %ecx               #  275   0x533ee  2      
  jmpq .L_53440                 #  276   0x533f0  5      
  nop                           #  277   0x533f5  1      
  nop                           #  278   0x533f6  1      
.L_53640:                       #        0x533f7  0      
  shll $0x2, %edx               #  279   0x533f7  3      
  movl %ebx, %ebx               #  280   0x533fa  2      
  addl 0x1c(%r15,%rbx,1), %edx  #  281   0x533fc  5      
  movl %ebx, %ebx               #  282   0x53401  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  283   0x53403  6      
  movq %rcx, %r14               #  284   0x53409  3      
  movl %edx, %edx               #  285   0x5340c  2      
  movl %ecx, (%r15,%rdx,1)      #  286   0x5340e  4      
  nop                           #  287   0x53412  1      
  movl %eax, %eax               #  288   0x53413  2      
  movzbl (%r15,%rax,1), %r12d   #  289   0x53415  5      
  jmpq .L_533a0                 #  290   0x5341a  5      
  nop                           #  291   0x5341f  1      
  nop                           #  292   0x53420  1      
.L_53680:                       #        0x53421  0      
  movl $0x1, %esi               #  293   0x53421  5      
  movl %ebx, %edi               #  294   0x53426  2      
  nop                           #  295   0x53428  1      
  nop                           #  296   0x53429  1      
  callq .d_substitution         #  297   0x5342a  5      
  movl %eax, %ecx               #  298   0x5342f  2      
  jmpq .L_53440                 #  299   0x53431  5      
  nop                           #  300   0x53436  1      
  nop                           #  301   0x53437  1      
.L_536c0:                       #        0x53438  0      
  testq %r14, %r14              #  302   0x53438  3      
  je .L_534e0                   #  303   0x5343b  6      
  movl %ebx, %edi               #  304   0x53441  2      
  nop                           #  305   0x53443  1      
  nop                           #  306   0x53444  1      
  callq .d_template_args        #  307   0x53445  5      
  movl $0x4, %esi               #  308   0x5344a  5      
  movl %eax, %ecx               #  309   0x5344f  2      
  jmpq .L_53460                 #  310   0x53451  5      
  nop                           #  311   0x53456  1      
  nop                           #  312   0x53457  1      
.L_53700:                       #        0x53458  0      
  cmpb $0x45, %r12b             #  313   0x53458  4      
  jne .L_534e0                  #  314   0x5345c  6      
  testq %r14, %r14              #  315   0x53462  3      
  movl %r13d, %r13d             #  316   0x53465  3      
  movl %r14d, (%r15,%r13,1)     #  317   0x53468  4      
  je .L_53100                   #  318   0x5346c  6      
  nop                           #  319   0x53472  1      
  movl %eax, %eax               #  320   0x53473  2      
  cmpb $0x45, (%r15,%rax,1)     #  321   0x53475  5      
  jne .L_53100                  #  322   0x5347a  6      
  addl $0x1, %eax               #  323   0x53480  3      
  movl 0xc(%rsp), %r12d         #  324   0x53483  5      
  movl %ebx, %ebx               #  325   0x53488  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  326   0x5348a  5      
  nop                           #  327   0x5348f  1      
  jmpq .L_53120                 #  328   0x53490  5      
  nop                           #  329   0x53495  1      
  nop                           #  330   0x53496  1      
.L_53760:                       #        0x53497  0      
  movl %ebx, %edi               #  331   0x53497  2      
  nop                           #  332   0x53499  1      
  nop                           #  333   0x5349a  1      
  callq .d_name                 #  334   0x5349b  5      
  movl %eax, %r13d              #  335   0x534a0  3      
  movl %ebx, %ebx               #  336   0x534a3  2      
  movl 0xc(%r15,%rbx,1), %eax   #  337   0x534a5  5      
  movl %eax, %eax               #  338   0x534aa  2      
  cmpb $0x5f, (%r15,%rax,1)     #  339   0x534ac  5      
  je .L_537c0                   #  340   0x534b1  6      
  nop                           #  341   0x534b7  1      
.L_537a0:                       #        0x534b8  0      
  movl %r13d, %ecx              #  342   0x534b8  3      
  jmpq .L_53580                 #  343   0x534bb  5      
  nop                           #  344   0x534c0  1      
  nop                           #  345   0x534c1  1      
.L_537c0:                       #        0x534c2  0      
  addl $0x1, %eax               #  346   0x534c2  3      
  movl %ebx, %edi               #  347   0x534c5  2      
  movl %ebx, %ebx               #  348   0x534c7  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  349   0x534c9  5      
  nop                           #  350   0x534ce  1      
  callq .d_number               #  351   0x534cf  5      
  testl %eax, %eax              #  352   0x534d4  2      
  jns .L_537a0                  #  353   0x534d6  6      
  jmpq .L_53100                 #  354   0x534dc  5      
  nop                           #  355   0x534e1  1      
  nop                           #  356   0x534e2  1      
.L_53800:                       #        0x534e3  0      
  addl $0x1, %eax               #  357   0x534e3  3      
  movl %ebx, %edi               #  358   0x534e6  2      
  movl %ebx, %ebx               #  359   0x534e8  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  360   0x534ea  5      
  nop                           #  361   0x534ef  1      
  callq .d_number               #  362   0x534f0  5      
  testl %eax, %eax              #  363   0x534f5  2      
  jns .L_53540                  #  364   0x534f7  6      
  jmpq .L_53100                 #  365   0x534fd  5      
  nop                           #  366   0x53502  1      
  nop                           #  367   0x53503  1      
                                                         
.size d_name, .-d_name

