  .text
  .globl d_name
  .type d_name, @function

#! file-offset 0x530a0
#! rip-offset  0x530a0
#! capacity    1984 bytes

# Text                          #  Line  RIP      Bytes  
.d_name:                        #        0x530a0  0      
  pushq %r14                    #  1     0x530a0  3      
  pushq %r13                    #  2     0x530a3  3      
  pushq %r12                    #  3     0x530a6  3      
  pushq %rbx                    #  4     0x530a9  2      
  movl %edi, %ebx               #  5     0x530ab  2      
  subl $0x18, %esp              #  6     0x530ad  3      
  addq %r15, %rsp               #  7     0x530b0  3      
  movl %ebx, %ebx               #  8     0x530b3  2      
  movl 0xc(%r15,%rbx,1), %edx   #  9     0x530b5  5      
  movl %edx, %edx               #  10    0x530ba  2      
  movzbl (%r15,%rdx,1), %eax    #  11    0x530bc  5      
  cmpb $0x4e, %al               #  12    0x530c1  2      
  nop                           #  13    0x530c3  1      
  je .L_53380                   #  14    0x530c4  6      
  jle .L_53160                  #  15    0x530ca  6      
  cmpb $0x53, %al               #  16    0x530d0  2      
  je .L_53240                   #  17    0x530d2  6      
  cmpb $0x5a, %al               #  18    0x530d8  2      
  jne .L_53180                  #  19    0x530da  6      
  addl $0x1, %edx               #  20    0x530e0  3      
  nop                           #  21    0x530e3  1      
  xorl %esi, %esi               #  22    0x530e4  2      
  movl %ebx, %edi               #  23    0x530e6  2      
  movl %ebx, %ebx               #  24    0x530e8  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  25    0x530ea  5      
  nop                           #  26    0x530ef  1      
  nop                           #  27    0x530f0  1      
  callq .d_encoding             #  28    0x530f1  5      
  movl %eax, %r12d              #  29    0x530f6  3      
  movl %ebx, %ebx               #  30    0x530f9  2      
  movl 0xc(%r15,%rbx,1), %eax   #  31    0x530fb  5      
  movl %eax, %eax               #  32    0x53100  2      
  cmpb $0x45, (%r15,%rax,1)     #  33    0x53102  5      
  je .L_53520                   #  34    0x53107  6      
  nop                           #  35    0x5310d  1      
.L_53120:                       #        0x5310e  0      
  xorl %r12d, %r12d             #  36    0x5310e  3      
  nop                           #  37    0x53111  1      
  nop                           #  38    0x53112  1      
.L_53140:                       #        0x53113  0      
  addl $0x18, %esp              #  39    0x53113  3      
  addq %r15, %rsp               #  40    0x53116  3      
  movl %r12d, %eax              #  41    0x53119  3      
  popq %rbx                     #  42    0x5311c  2      
  popq %r12                     #  43    0x5311e  3      
  popq %r13                     #  44    0x53121  3      
  popq %r14                     #  45    0x53124  3      
  popq %r11                     #  46    0x53127  3      
  andl $0xffffffe0, %r11d       #  47    0x5312a  7      
  addq %r15, %r11               #  48    0x53131  3      
  jmpq %r11                     #  49    0x53134  3      
  nop                           #  50    0x53137  1      
.L_53160:                       #        0x53138  0      
  cmpb $0x4c, %al               #  51    0x53138  2      
  je .L_53200                   #  52    0x5313a  6      
  nop                           #  53    0x53140  1      
  nop                           #  54    0x53141  1      
.L_53180:                       #        0x53142  0      
  movl %ebx, %edi               #  55    0x53142  2      
  nop                           #  56    0x53144  1      
  nop                           #  57    0x53145  1      
  callq .d_unqualified_name     #  58    0x53146  5      
  movl %eax, %r12d              #  59    0x5314b  3      
  movl %ebx, %ebx               #  60    0x5314e  2      
  movl 0xc(%r15,%rbx,1), %eax   #  61    0x53150  5      
  movl %eax, %eax               #  62    0x53155  2      
  cmpb $0x49, (%r15,%rax,1)     #  63    0x53157  5      
  jne .L_53140                  #  64    0x5315c  6      
  nop                           #  65    0x53162  1      
.L_531c0:                       #        0x53163  0      
  testq %r12, %r12              #  66    0x53163  3      
  je .L_53140                   #  67    0x53166  6      
  movl %ebx, %ebx               #  68    0x5316c  2      
  movl 0x20(%r15,%rbx,1), %eax  #  69    0x5316e  5      
  movl %ebx, %ebx               #  70    0x53173  2      
  cmpl 0x24(%r15,%rbx,1), %eax  #  71    0x53175  5      
  jge .L_53120                  #  72    0x5317a  6      
  shll $0x2, %eax               #  73    0x53180  3      
  movl %ebx, %ebx               #  74    0x53183  2      
  addl 0x1c(%r15,%rbx,1), %eax  #  75    0x53185  5      
  movl %ebx, %ebx               #  76    0x5318a  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  77    0x5318c  6      
  movl %eax, %eax               #  78    0x53192  2      
  movl %r12d, (%r15,%rax,1)     #  79    0x53194  4      
  jmpq .L_532a0                 #  80    0x53198  5      
  nop                           #  81    0x5319d  1      
.L_53200:                       #        0x5319e  0      
  movl %ebx, %edi               #  82    0x5319e  2      
  nop                           #  83    0x531a0  1      
  nop                           #  84    0x531a1  1      
  callq .d_unqualified_name     #  85    0x531a2  5      
  movl %eax, %r12d              #  86    0x531a7  3      
  jmpq .L_53140                 #  87    0x531aa  5      
  nop                           #  88    0x531af  1      
  nop                           #  89    0x531b0  1      
.L_53240:                       #        0x531b1  0      
  movl %edx, %edx               #  90    0x531b1  2      
  cmpb $0x74, 0x1(%r15,%rdx,1)  #  91    0x531b3  6      
  je .L_53300                   #  92    0x531b9  6      
  xorl %esi, %esi               #  93    0x531bf  2      
  movl %ebx, %edi               #  94    0x531c1  2      
  nop                           #  95    0x531c3  1      
  callq .d_substitution         #  96    0x531c4  5      
  movl $0x1, %edx               #  97    0x531c9  5      
  movl %eax, %r12d              #  98    0x531ce  3      
  nop                           #  99    0x531d1  1      
  nop                           #  100   0x531d2  1      
.L_53280:                       #        0x531d3  0      
  movl %ebx, %ebx               #  101   0x531d3  2      
  movl 0xc(%r15,%rbx,1), %eax   #  102   0x531d5  5      
  movl %eax, %eax               #  103   0x531da  2      
  cmpb $0x49, (%r15,%rax,1)     #  104   0x531dc  5      
  jne .L_53140                  #  105   0x531e1  6      
  testl %edx, %edx              #  106   0x531e7  2      
  je .L_531c0                   #  107   0x531e9  6      
  nop                           #  108   0x531ef  1      
.L_532a0:                       #        0x531f0  0      
  movl %ebx, %edi               #  109   0x531f0  2      
  nop                           #  110   0x531f2  1      
  nop                           #  111   0x531f3  1      
  callq .d_template_args        #  112   0x531f4  5      
  movl %r12d, %edx              #  113   0x531f9  3      
  movl %eax, %ecx               #  114   0x531fc  2      
  movl $0x4, %esi               #  115   0x531fe  5      
  movl %ebx, %edi               #  116   0x53203  2      
  nop                           #  117   0x53205  1      
  callq .d_make_comp            #  118   0x53206  5      
  movl %eax, %r12d              #  119   0x5320b  3      
  jmpq .L_53140                 #  120   0x5320e  5      
  nop                           #  121   0x53213  1      
  nop                           #  122   0x53214  1      
.L_53300:                       #        0x53215  0      
  addl $0x2, %edx               #  123   0x53215  3      
  movl %ebx, %edi               #  124   0x53218  2      
  movl %ebx, %ebx               #  125   0x5321a  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  126   0x5321c  5      
  nop                           #  127   0x53221  1      
  callq .d_unqualified_name     #  128   0x53222  5      
  movl $0x3, %edx               #  129   0x53227  5      
  movl %eax, %r12d              #  130   0x5322c  3      
  movl $0x10022861, %esi        #  131   0x5322f  5      
  movl %ebx, %edi               #  132   0x53234  2      
  nop                           #  133   0x53236  1      
  callq .d_make_name            #  134   0x53237  5      
  movl %r12d, %ecx              #  135   0x5323c  3      
  movl %eax, %edx               #  136   0x5323f  2      
  movl $0x1, %esi               #  137   0x53241  5      
  movl %ebx, %edi               #  138   0x53246  2      
  nop                           #  139   0x53248  1      
  callq .d_make_comp            #  140   0x53249  5      
  movl %ebx, %ebx               #  141   0x5324e  2      
  addl $0x3, 0x30(%r15,%rbx,1)  #  142   0x53250  6      
  movl %eax, %r12d              #  143   0x53256  3      
  xorl %edx, %edx               #  144   0x53259  2      
  jmpq .L_53280                 #  145   0x5325b  5      
  nop                           #  146   0x53260  1      
.L_53380:                       #        0x53261  0      
  addl $0x1, %edx               #  147   0x53261  3      
  leal 0xc(%rsp), %esi          #  148   0x53264  4      
  movl %ebx, %edi               #  149   0x53268  2      
  movl %ebx, %ebx               #  150   0x5326a  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  151   0x5326c  5      
  movl $0x1, %edx               #  152   0x53271  5      
  nop                           #  153   0x53276  1      
  callq .d_cv_qualifiers        #  154   0x53277  5      
  movl %eax, %r13d              #  155   0x5327c  3      
  testq %r13, %r13              #  156   0x5327f  3      
  je .L_53120                   #  157   0x53282  6      
  movl %ebx, %ebx               #  158   0x53288  2      
  movl 0xc(%r15,%rbx,1), %eax   #  159   0x5328a  5      
  xorl %r14d, %r14d             #  160   0x5328f  3      
  movl %eax, %eax               #  161   0x53292  2      
  movzbl (%r15,%rax,1), %r12d   #  162   0x53294  5      
  nop                           #  163   0x53299  1      
.L_533c0:                       #        0x5329a  0      
  testb %r12b, %r12b            #  164   0x5329a  3      
  je .L_53500                   #  165   0x5329d  6      
  leal -0x61(%r12), %edx        #  166   0x532a3  5      
  cmpb $0x19, %dl               #  167   0x532a8  3      
  jbe .L_53620                  #  168   0x532ab  6      
  leal -0x30(%r12), %edx        #  169   0x532b1  5      
  cmpb $0x9, %dl                #  170   0x532b6  3      
  nop                           #  171   0x532b9  1      
  jbe .L_53620                  #  172   0x532ba  6      
  cmpb $0x44, %r12b             #  173   0x532c0  4      
  je .L_53620                   #  174   0x532c4  6      
  cmpb $0x43, %r12b             #  175   0x532ca  4      
  je .L_53620                   #  176   0x532ce  6      
  cmpb $0x4c, %r12b             #  177   0x532d4  4      
  xchgw %ax, %ax                #  178   0x532d8  3      
  je .L_53620                   #  179   0x532db  6      
  cmpb $0x53, %r12b             #  180   0x532e1  4      
  je .L_536a0                   #  181   0x532e5  6      
  cmpb $0x49, %r12b             #  182   0x532eb  4      
  je .L_536e0                   #  183   0x532ef  6      
  cmpb $0x54, %r12b             #  184   0x532f5  4      
  xchgw %ax, %ax                #  185   0x532f9  3      
  jne .L_53720                  #  186   0x532fc  6      
  movl %ebx, %edi               #  187   0x53302  2      
  nop                           #  188   0x53304  1      
  nop                           #  189   0x53305  1      
  callq .d_template_param       #  190   0x53306  5      
  movl %eax, %ecx               #  191   0x5330b  2      
  nop                           #  192   0x5330d  1      
  nop                           #  193   0x5330e  1      
.L_53460:                       #        0x5330f  0      
  testq %r14, %r14              #  194   0x5330f  3      
  je .L_534c0                   #  195   0x53312  6      
  movl $0x1, %esi               #  196   0x53318  5      
  nop                           #  197   0x5331d  1      
  nop                           #  198   0x5331e  1      
.L_53480:                       #        0x5331f  0      
  movl %r14d, %edx              #  199   0x5331f  3      
  movl %ebx, %edi               #  200   0x53322  2      
  nop                           #  201   0x53324  1      
  nop                           #  202   0x53325  1      
  callq .d_make_comp            #  203   0x53326  5      
  movl %eax, %ecx               #  204   0x5332b  2      
  nop                           #  205   0x5332d  1      
  nop                           #  206   0x5332e  1      
.L_534c0:                       #        0x5332f  0      
  cmpb $0x53, %r12b             #  207   0x5332f  4      
  je .L_535e0                   #  208   0x53333  6      
  movl %ebx, %ebx               #  209   0x53339  2      
  movl 0xc(%r15,%rbx,1), %eax   #  210   0x5333b  5      
  movl $0x45, %r12d             #  211   0x53340  6      
  movl %eax, %eax               #  212   0x53346  2      
  cmpb $0x45, (%r15,%rax,1)     #  213   0x53348  5      
  xchgw %ax, %ax                #  214   0x5334d  3      
  je .L_53600                   #  215   0x53350  6      
  testq %rcx, %rcx              #  216   0x53356  3      
  je .L_53500                   #  217   0x53359  6      
  movl %ebx, %ebx               #  218   0x5335f  2      
  movl 0x20(%r15,%rbx,1), %edx  #  219   0x53361  5      
  movl %ebx, %ebx               #  220   0x53366  2      
  cmpl 0x24(%r15,%rbx,1), %edx  #  221   0x53368  5      
  jl .L_53660                   #  222   0x5336d  6      
  nop                           #  223   0x53373  1      
.L_53500:                       #        0x53374  0      
  movl %r13d, %r13d             #  224   0x53374  3      
  movl $0x0, (%r15,%r13,1)      #  225   0x53377  8      
  xorl %r12d, %r12d             #  226   0x5337f  3      
  jmpq .L_53140                 #  227   0x53382  5      
  nop                           #  228   0x53387  1      
.L_53520:                       #        0x53388  0      
  addl $0x1, %eax               #  229   0x53388  3      
  movl %ebx, %ebx               #  230   0x5338b  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  231   0x5338d  5      
  movl %eax, %eax               #  232   0x53392  2      
  cmpb $0x73, (%r15,%rax,1)     #  233   0x53394  5      
  jne .L_53780                  #  234   0x53399  6      
  addl $0x1, %eax               #  235   0x5339f  3      
  nop                           #  236   0x533a2  1      
  movl %ebx, %ebx               #  237   0x533a3  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  238   0x533a5  5      
  movl %eax, %eax               #  239   0x533aa  2      
  cmpb $0x5f, (%r15,%rax,1)     #  240   0x533ac  5      
  je .L_53820                   #  241   0x533b1  6      
  nop                           #  242   0x533b7  1      
.L_53560:                       #        0x533b8  0      
  movl $0xe, %edx               #  243   0x533b8  5      
  movl $0x10022852, %esi        #  244   0x533bd  5      
  movl %ebx, %edi               #  245   0x533c2  2      
  nop                           #  246   0x533c4  1      
  callq .d_make_name            #  247   0x533c5  5      
  movl %eax, %ecx               #  248   0x533ca  2      
  nop                           #  249   0x533cc  1      
  nop                           #  250   0x533cd  1      
.L_535a0:                       #        0x533ce  0      
  movl %r12d, %edx              #  251   0x533ce  3      
  movl $0x2, %esi               #  252   0x533d1  5      
  movl %ebx, %edi               #  253   0x533d6  2      
  xchgw %ax, %ax                #  254   0x533d8  3      
  nop                           #  255   0x533db  1      
  callq .d_make_comp            #  256   0x533dc  5      
  movl %eax, %r12d              #  257   0x533e1  3      
  jmpq .L_53140                 #  258   0x533e4  5      
  nop                           #  259   0x533e9  1      
  nop                           #  260   0x533ea  1      
.L_535e0:                       #        0x533eb  0      
  movl %ebx, %ebx               #  261   0x533eb  2      
  movl 0xc(%r15,%rbx,1), %eax   #  262   0x533ed  5      
  movl %eax, %eax               #  263   0x533f2  2      
  movzbl (%r15,%rax,1), %r12d   #  264   0x533f4  5      
  nop                           #  265   0x533f9  1      
  nop                           #  266   0x533fa  1      
.L_53600:                       #        0x533fb  0      
  movq %rcx, %r14               #  267   0x533fb  3      
  jmpq .L_533c0                 #  268   0x533fe  5      
  nop                           #  269   0x53403  1      
  nop                           #  270   0x53404  1      
.L_53620:                       #        0x53405  0      
  movl %ebx, %edi               #  271   0x53405  2      
  nop                           #  272   0x53407  1      
  nop                           #  273   0x53408  1      
  callq .d_unqualified_name     #  274   0x53409  5      
  movl %eax, %ecx               #  275   0x5340e  2      
  jmpq .L_53460                 #  276   0x53410  5      
  nop                           #  277   0x53415  1      
  nop                           #  278   0x53416  1      
.L_53660:                       #        0x53417  0      
  shll $0x2, %edx               #  279   0x53417  3      
  movl %ebx, %ebx               #  280   0x5341a  2      
  addl 0x1c(%r15,%rbx,1), %edx  #  281   0x5341c  5      
  movl %ebx, %ebx               #  282   0x53421  2      
  addl $0x1, 0x20(%r15,%rbx,1)  #  283   0x53423  6      
  movq %rcx, %r14               #  284   0x53429  3      
  movl %edx, %edx               #  285   0x5342c  2      
  movl %ecx, (%r15,%rdx,1)      #  286   0x5342e  4      
  nop                           #  287   0x53432  1      
  movl %eax, %eax               #  288   0x53433  2      
  movzbl (%r15,%rax,1), %r12d   #  289   0x53435  5      
  jmpq .L_533c0                 #  290   0x5343a  5      
  nop                           #  291   0x5343f  1      
  nop                           #  292   0x53440  1      
.L_536a0:                       #        0x53441  0      
  movl $0x1, %esi               #  293   0x53441  5      
  movl %ebx, %edi               #  294   0x53446  2      
  nop                           #  295   0x53448  1      
  nop                           #  296   0x53449  1      
  callq .d_substitution         #  297   0x5344a  5      
  movl %eax, %ecx               #  298   0x5344f  2      
  jmpq .L_53460                 #  299   0x53451  5      
  nop                           #  300   0x53456  1      
  nop                           #  301   0x53457  1      
.L_536e0:                       #        0x53458  0      
  testq %r14, %r14              #  302   0x53458  3      
  je .L_53500                   #  303   0x5345b  6      
  movl %ebx, %edi               #  304   0x53461  2      
  nop                           #  305   0x53463  1      
  nop                           #  306   0x53464  1      
  callq .d_template_args        #  307   0x53465  5      
  movl $0x4, %esi               #  308   0x5346a  5      
  movl %eax, %ecx               #  309   0x5346f  2      
  jmpq .L_53480                 #  310   0x53471  5      
  nop                           #  311   0x53476  1      
  nop                           #  312   0x53477  1      
.L_53720:                       #        0x53478  0      
  cmpb $0x45, %r12b             #  313   0x53478  4      
  jne .L_53500                  #  314   0x5347c  6      
  testq %r14, %r14              #  315   0x53482  3      
  movl %r13d, %r13d             #  316   0x53485  3      
  movl %r14d, (%r15,%r13,1)     #  317   0x53488  4      
  je .L_53120                   #  318   0x5348c  6      
  nop                           #  319   0x53492  1      
  movl %eax, %eax               #  320   0x53493  2      
  cmpb $0x45, (%r15,%rax,1)     #  321   0x53495  5      
  jne .L_53120                  #  322   0x5349a  6      
  addl $0x1, %eax               #  323   0x534a0  3      
  movl 0xc(%rsp), %r12d         #  324   0x534a3  5      
  movl %ebx, %ebx               #  325   0x534a8  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  326   0x534aa  5      
  nop                           #  327   0x534af  1      
  jmpq .L_53140                 #  328   0x534b0  5      
  nop                           #  329   0x534b5  1      
  nop                           #  330   0x534b6  1      
.L_53780:                       #        0x534b7  0      
  movl %ebx, %edi               #  331   0x534b7  2      
  nop                           #  332   0x534b9  1      
  nop                           #  333   0x534ba  1      
  callq .d_name                 #  334   0x534bb  5      
  movl %eax, %r13d              #  335   0x534c0  3      
  movl %ebx, %ebx               #  336   0x534c3  2      
  movl 0xc(%r15,%rbx,1), %eax   #  337   0x534c5  5      
  movl %eax, %eax               #  338   0x534ca  2      
  cmpb $0x5f, (%r15,%rax,1)     #  339   0x534cc  5      
  je .L_537e0                   #  340   0x534d1  6      
  nop                           #  341   0x534d7  1      
.L_537c0:                       #        0x534d8  0      
  movl %r13d, %ecx              #  342   0x534d8  3      
  jmpq .L_535a0                 #  343   0x534db  5      
  nop                           #  344   0x534e0  1      
  nop                           #  345   0x534e1  1      
.L_537e0:                       #        0x534e2  0      
  addl $0x1, %eax               #  346   0x534e2  3      
  movl %ebx, %edi               #  347   0x534e5  2      
  movl %ebx, %ebx               #  348   0x534e7  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  349   0x534e9  5      
  nop                           #  350   0x534ee  1      
  callq .d_number               #  351   0x534ef  5      
  testl %eax, %eax              #  352   0x534f4  2      
  jns .L_537c0                  #  353   0x534f6  6      
  jmpq .L_53120                 #  354   0x534fc  5      
  nop                           #  355   0x53501  1      
  nop                           #  356   0x53502  1      
.L_53820:                       #        0x53503  0      
  addl $0x1, %eax               #  357   0x53503  3      
  movl %ebx, %edi               #  358   0x53506  2      
  movl %ebx, %ebx               #  359   0x53508  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  360   0x5350a  5      
  nop                           #  361   0x5350f  1      
  callq .d_number               #  362   0x53510  5      
  testl %eax, %eax              #  363   0x53515  2      
  jns .L_53560                  #  364   0x53517  6      
  jmpq .L_53120                 #  365   0x5351d  5      
  nop                           #  366   0x53522  1      
  nop                           #  367   0x53523  1      
                                                         
.size d_name, .-d_name

