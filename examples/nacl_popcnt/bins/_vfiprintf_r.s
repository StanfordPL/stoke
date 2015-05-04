  .text
  .globl _vfiprintf_r
  .type _vfiprintf_r, @function

#! file-offset 0x842a0
#! rip-offset  0x842a0
#! capacity    12800 bytes

# Text                                   #  Line  RIP      Bytes  
._vfiprintf_r:                           #        0x842a0  0      
  pushq %r14                             #  1     0x842a0  3      
  movl %esi, %esi                        #  2     0x842a3  2      
  movl %edi, %r14d                       #  3     0x842a5  3      
  movl %ecx, %ecx                        #  4     0x842a8  2      
  pushq %r13                             #  5     0x842aa  3      
  pushq %r12                             #  6     0x842ad  3      
  pushq %rbx                             #  7     0x842b0  2      
  movl %edx, %ebx                        #  8     0x842b2  2      
  movl $0x8, %edx                        #  9     0x842b4  5      
  subl $0x1e8, %esp                      #  10    0x842b9  6      
  addq %r15, %rsp                        #  11    0x842bf  3      
  xchgw %ax, %ax                         #  12    0x842c2  3      
  leal 0x1c0(%rsp), %eax                 #  13    0x842c5  7      
  movq %rsi, 0x70(%rsp)                  #  14    0x842cc  5      
  xorl %esi, %esi                        #  15    0x842d1  2      
  movq %rcx, 0x80(%rsp)                  #  16    0x842d3  8      
  movl %eax, %edi                        #  17    0x842db  2      
  movq %rax, 0x38(%rsp)                  #  18    0x842dd  5      
  nop                                    #  19    0x842e2  1      
  nop                                    #  20    0x842e3  1      
  nop                                    #  21    0x842e4  1      
  callq .memset                          #  22    0x842e5  5      
  testq %r14, %r14                       #  23    0x842ea  3      
  je .L_84320                            #  24    0x842ed  6      
  movl %r14d, %r14d                      #  25    0x842f3  3      
  movl 0x38(%r15,%r14,1), %r11d          #  26    0x842f6  5      
  testl %r11d, %r11d                     #  27    0x842fb  3      
  je .L_85020                            #  28    0x842fe  6      
  nop                                    #  29    0x84304  1      
.L_84320:                                #        0x84305  0      
  movq 0x70(%rsp), %rcx                  #  30    0x84305  5      
  movl %ecx, %ecx                        #  31    0x8430a  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  32    0x8430c  6      
  movswl %dx, %eax                       #  33    0x84312  3      
  testb $0x2, %ah                        #  34    0x84315  3      
  je .L_84fe0                            #  35    0x84318  6      
  nop                                    #  36    0x8431e  1      
.L_84340:                                #        0x8431f  0      
  testb $0x20, %ah                       #  37    0x8431f  3      
  jne .L_84380                           #  38    0x84322  6      
  movq 0x70(%rsp), %rax                  #  39    0x84328  5      
  orb $0x20, %dh                         #  40    0x8432d  3      
  movl %eax, %eax                        #  41    0x84330  2      
  movw %dx, 0xc(%r15,%rax,1)             #  42    0x84332  6      
  movl %eax, %eax                        #  43    0x84338  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  44    0x8433a  9      
  movswl %dx, %eax                       #  45    0x84343  3      
  nop                                    #  46    0x84346  1      
  nop                                    #  47    0x84347  1      
.L_84380:                                #        0x84348  0      
  testb $0x8, %al                        #  48    0x84348  2      
  je .L_84ea0                            #  49    0x8434a  6      
  movq 0x70(%rsp), %rdx                  #  50    0x84350  5      
  movl %edx, %edx                        #  51    0x84355  2      
  movl 0x10(%r15,%rdx,1), %r10d          #  52    0x84357  5      
  testl %r10d, %r10d                     #  53    0x8435c  3      
  je .L_84ea0                            #  54    0x8435f  6      
  movl %eax, %edx                        #  55    0x84365  2      
  nop                                    #  56    0x84367  1      
  andl $0x1a, %edx                       #  57    0x84368  3      
  cmpl $0xa, %edx                        #  58    0x8436b  3      
  je .L_84f00                            #  59    0x8436e  6      
  nop                                    #  60    0x84374  1      
  nop                                    #  61    0x84375  1      
.L_843c0:                                #        0x84376  0      
  leal 0xe0(%rsp), %eax                  #  62    0x84376  7      
  leal 0x150(%rsp), %ecx                 #  63    0x8437d  7      
  leal 0x1cc(%rsp), %esi                 #  64    0x84384  7      
  movq %rbx, 0x60(%rsp)                  #  65    0x8438b  5      
  nop                                    #  66    0x84390  1      
  movl $0x0, 0x198(%rsp)                 #  67    0x84391  11     
  movq %rax, 0x28(%rsp)                  #  68    0x8439c  5      
  movl 0x28(%rsp), %eax                  #  69    0x843a1  4      
  movq %rcx, %rbx                        #  70    0x843a5  3      
  movq %rcx, 0x30(%rsp)                  #  71    0x843a8  5      
  nop                                    #  72    0x843ad  1      
  movl %ecx, 0x190(%rsp)                 #  73    0x843ae  7      
  movl $0x0, 0x194(%rsp)                 #  74    0x843b5  11     
  movq $0x0, 0xc0(%rsp)                  #  75    0x843c0  12     
  xchgw %ax, %ax                         #  76    0x843cc  3      
  addl $0x64, %eax                       #  77    0x843cf  3      
  movq $0x0, 0xb0(%rsp)                  #  78    0x843d2  12     
  movl $0x0, 0xd4(%rsp)                  #  79    0x843de  11     
  movl %eax, %eax                        #  80    0x843e9  2      
  nop                                    #  81    0x843eb  1      
  movq $0x0, 0xd8(%rsp)                  #  82    0x843ec  12     
  movl $0x0, 0x8c(%rsp)                  #  83    0x843f8  11     
  movl %eax, %edx                        #  84    0x84403  2      
  movq %rsi, 0x20(%rsp)                  #  85    0x84405  5      
  xchgw %ax, %ax                         #  86    0x8440a  3      
  movq %rax, 0xb8(%rsp)                  #  87    0x8440d  8      
  subl $0x1, %edx                        #  88    0x84415  3      
  movq %rdx, 0xc8(%rsp)                  #  89    0x84418  8      
  nop                                    #  90    0x84420  1      
.L_84480:                                #        0x84421  0      
  movq 0x60(%rsp), %r12                  #  91    0x84421  5      
  movq %rbx, %r13                        #  92    0x84426  3      
  jmpq .L_844e0                          #  93    0x84429  5      
  nop                                    #  94    0x8442e  1      
  nop                                    #  95    0x8442f  1      
.L_844a0:                                #        0x84430  0      
  cmpl $0x25, 0x1cc(%rsp)                #  96    0x84430  8      
  je .L_84580                            #  97    0x84438  6      
  nop                                    #  98    0x8443e  1      
  nop                                    #  99    0x8443f  1      
.L_844c0:                                #        0x84440  0      
  leal (%rax,%r12,1), %r12d              #  100   0x84440  4      
  nop                                    #  101   0x84444  1      
  nop                                    #  102   0x84445  1      
.L_844e0:                                #        0x84446  0      
  movl 0xffac774(%rip), %ebx             #  103   0x84446  6      
  nop                                    #  104   0x8444c  1      
  nop                                    #  105   0x8444d  1      
  callq .__locale_charset                #  106   0x8444e  5      
  movl %eax, %r8d                        #  107   0x84453  3      
  movq %r8, 0x40(%rsp)                   #  108   0x84456  5      
  nop                                    #  109   0x8445b  1      
  nop                                    #  110   0x8445c  1      
  callq .__locale_mb_cur_max             #  111   0x8445d  5      
  movl 0x38(%rsp), %r9d                  #  112   0x84462  5      
  movl %eax, %ecx                        #  113   0x84467  2      
  movq 0x40(%rsp), %r8                   #  114   0x84469  5      
  movl %r12d, %edx                       #  115   0x8446e  3      
  movl 0x20(%rsp), %esi                  #  116   0x84471  4      
  movl %r14d, %edi                       #  117   0x84475  3      
  xchgw %ax, %ax                         #  118   0x84478  3      
  andl $0xffffffe0, %ebx                 #  119   0x8447b  6      
  addq %r15, %rbx                        #  120   0x84481  3      
  callq %rbx                             #  121   0x84484  2      
  cmpl $0x0, %eax                        #  122   0x84486  3      
  je .L_84580                            #  123   0x84489  6      
  jge .L_844a0                           #  124   0x8448f  6      
  movl 0x38(%rsp), %edi                  #  125   0x84495  4      
  movl $0x8, %edx                        #  126   0x84499  5      
  xorl %esi, %esi                        #  127   0x8449e  2      
  nop                                    #  128   0x844a0  1      
  callq .memset                          #  129   0x844a1  5      
  movl $0x1, %eax                        #  130   0x844a6  5      
  jmpq .L_844c0                          #  131   0x844ab  5      
  nop                                    #  132   0x844b0  1      
  nop                                    #  133   0x844b1  1      
.L_84580:                                #        0x844b2  0      
  movl %r12d, %ecx                       #  134   0x844b2  3      
  subl 0x60(%rsp), %ecx                  #  135   0x844b5  4      
  movq %r13, %rbx                        #  136   0x844b9  3      
  movl %eax, %r13d                       #  137   0x844bc  3      
  je .L_84600                            #  138   0x844bf  6      
  movl %ebx, %ebx                        #  139   0x844c5  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  140   0x844c7  5      
  movl 0x194(%rsp), %eax                 #  141   0x844cc  7      
  nop                                    #  142   0x844d3  1      
  movl 0x60(%rsp), %esi                  #  143   0x844d4  4      
  addl %ecx, 0x198(%rsp)                 #  144   0x844d8  7      
  addl $0x1, %eax                        #  145   0x844df  3      
  cmpl $0x7, %eax                        #  146   0x844e2  3      
  movl %ebx, %ebx                        #  147   0x844e5  2      
  movl %esi, (%r15,%rbx,1)               #  148   0x844e7  4      
  movl %eax, 0x194(%rsp)                 #  149   0x844eb  7      
  xchgw %ax, %ax                         #  150   0x844f2  3      
  jg .L_84fa0                            #  151   0x844f5  6      
  addl $0x8, %ebx                        #  152   0x844fb  3      
  nop                                    #  153   0x844fe  1      
  nop                                    #  154   0x844ff  1      
.L_845e0:                                #        0x84500  0      
  addl %ecx, 0x8c(%rsp)                  #  155   0x84500  7      
  nop                                    #  156   0x84507  1      
  nop                                    #  157   0x84508  1      
.L_84600:                                #        0x84509  0      
  testl %r13d, %r13d                     #  158   0x84509  3      
  je .L_85960                            #  159   0x8450c  6      
  addl $0x1, %r12d                       #  160   0x84512  4      
  movb $0x0, 0x1df(%rsp)                 #  161   0x84516  8      
  movl $0xffffffff, %r8d                 #  162   0x8451e  6      
  movq %r12, %rdx                        #  163   0x84524  3      
  xchgw %ax, %ax                         #  164   0x84527  3      
  movq %r12, 0x60(%rsp)                  #  165   0x8452a  5      
  movl %r12d, %r12d                      #  166   0x8452f  3      
  movzbl (%r15,%r12,1), %eax             #  167   0x84532  5      
  movq %rdx, %r13                        #  168   0x84537  3      
  movl $0x0, 0x88(%rsp)                  #  169   0x8453a  11     
  xorl %r12d, %r12d                      #  170   0x84545  3      
  xchgw %ax, %ax                         #  171   0x84548  3      
.L_84640:                                #        0x8454b  0      
  movsbl %al, %eax                       #  172   0x8454b  3      
  addl $0x1, %r13d                       #  173   0x8454e  4      
  nop                                    #  174   0x84552  1      
  nop                                    #  175   0x84553  1      
.L_84660:                                #        0x84554  0      
  leal -0x20(%rax), %edx                 #  176   0x84554  3      
  cmpl $0x5a, %edx                       #  177   0x84557  3      
  jbe .L_84d00                           #  178   0x8455a  6      
  nop                                    #  179   0x84560  1      
  nop                                    #  180   0x84561  1      
  testl %eax, %eax                       #  181   0x84562  2      
  movq %r13, 0x60(%rsp)                  #  182   0x84564  5      
  je .L_85960                            #  183   0x84569  6      
  leal 0xe0(%rsp), %edx                  #  184   0x8456f  7      
  movb %al, 0xe0(%rsp)                   #  185   0x84576  7      
  nop                                    #  186   0x8457d  1      
  movb $0x0, 0x1df(%rsp)                 #  187   0x8457e  8      
  movl $0x1, 0x68(%rsp)                  #  188   0x84586  8      
  movl $0x1, 0x7c(%rsp)                  #  189   0x8458e  8      
  movq %rdx, 0x98(%rsp)                  #  190   0x84596  8      
.L_846c0:                                #        0x8459e  0      
  movq $0x0, 0x90(%rsp)                  #  191   0x8459e  12     
  movl $0x0, 0xac(%rsp)                  #  192   0x845aa  11     
  nop                                    #  193   0x845b5  1      
.L_846e0:                                #        0x845b6  0      
  movl 0x68(%rsp), %eax                  #  194   0x845b6  4      
  movl %r12d, %ecx                       #  195   0x845ba  3      
  movl %r12d, %esi                       #  196   0x845bd  3      
  addl $0x2, %eax                        #  197   0x845c0  3      
  andl $0x2, %ecx                        #  198   0x845c3  3      
  cmovel 0x68(%rsp), %eax                #  199   0x845c6  5      
  andl $0x84, %esi                       #  200   0x845cb  3      
  nop                                    #  201   0x845ce  1      
  movl %ecx, 0xa8(%rsp)                  #  202   0x845cf  7      
  movl %esi, 0xa4(%rsp)                  #  203   0x845d6  7      
  movl %eax, 0x68(%rsp)                  #  204   0x845dd  4      
  jne .L_84860                           #  205   0x845e1  6      
  movl 0x88(%rsp), %r13d                 #  206   0x845e7  8      
  subl %eax, %r13d                       #  207   0x845ef  3      
  testl %r13d, %r13d                     #  208   0x845f2  3      
  jle .L_84860                           #  209   0x845f5  6      
  cmpl $0x10, %r13d                      #  210   0x845fb  4      
  jle .L_84820                           #  211   0x845ff  6      
  leal 0x190(%rsp), %eax                 #  212   0x84605  7      
  nop                                    #  213   0x8460c  1      
  movq %rax, 0x10(%rsp)                  #  214   0x8460d  5      
  movq %rbx, %rax                        #  215   0x84612  3      
  movq 0x70(%rsp), %rbx                  #  216   0x84615  5      
  jmpq .L_84780                          #  217   0x8461a  5      
  xchgw %ax, %ax                         #  218   0x8461f  3      
  nop                                    #  219   0x84622  1      
.L_84760:                                #        0x84623  0      
  subl $0x10, %r13d                      #  220   0x84623  4      
  addl $0x8, %eax                        #  221   0x84627  3      
  cmpl $0x10, %r13d                      #  222   0x8462a  4      
  jle .L_84800                           #  223   0x8462e  6      
  nop                                    #  224   0x84634  1      
.L_84780:                                #        0x84635  0      
  movl %eax, %eax                        #  225   0x84635  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  226   0x84637  9      
  movl 0x194(%rsp), %edx                 #  227   0x84640  7      
  addl $0x10, 0x198(%rsp)                #  228   0x84647  8      
  nop                                    #  229   0x8464f  1      
  movl %eax, %eax                        #  230   0x84650  2      
  movl $0x10024f30, (%r15,%rax,1)        #  231   0x84652  8      
  addl $0x1, %edx                        #  232   0x8465a  3      
  cmpl $0x7, %edx                        #  233   0x8465d  3      
  movl %edx, 0x194(%rsp)                 #  234   0x84660  7      
  jle .L_84760                           #  235   0x84667  6      
  movl 0x10(%rsp), %edx                  #  236   0x8466d  4      
  movl %ebx, %esi                        #  237   0x84671  2      
  nop                                    #  238   0x84673  1      
  movl %r14d, %edi                       #  239   0x84674  3      
  nop                                    #  240   0x84677  1      
  nop                                    #  241   0x84678  1      
  callq .__sprint_r                      #  242   0x84679  5      
  testl %eax, %eax                       #  243   0x8467e  2      
  jne .L_85a20                           #  244   0x84680  6      
  subl $0x10, %r13d                      #  245   0x84686  4      
  leal 0x150(%rsp), %eax                 #  246   0x8468a  7      
  cmpl $0x10, %r13d                      #  247   0x84691  4      
  jg .L_84780                            #  248   0x84695  6      
  nop                                    #  249   0x8469b  1      
.L_84800:                                #        0x8469c  0      
  movq %rax, %rbx                        #  250   0x8469c  3      
  nop                                    #  251   0x8469f  1      
  nop                                    #  252   0x846a0  1      
.L_84820:                                #        0x846a1  0      
  movl %ebx, %ebx                        #  253   0x846a1  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  254   0x846a3  5      
  movl 0x194(%rsp), %eax                 #  255   0x846a8  7      
  addl %r13d, 0x198(%rsp)                #  256   0x846af  8      
  movl %ebx, %ebx                        #  257   0x846b7  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  258   0x846b9  8      
  addl $0x1, %eax                        #  259   0x846c1  3      
  cmpl $0x7, %eax                        #  260   0x846c4  3      
  movl %eax, 0x194(%rsp)                 #  261   0x846c7  7      
  jg .L_85fa0                            #  262   0x846ce  6      
  addl $0x8, %ebx                        #  263   0x846d4  3      
  nop                                    #  264   0x846d7  1      
.L_84860:                                #        0x846d8  0      
  cmpb $0x0, 0x1df(%rsp)                 #  265   0x846d8  8      
  je .L_848c0                            #  266   0x846e0  6      
  leal 0x1df(%rsp), %eax                 #  267   0x846e6  7      
  movl %ebx, %ebx                        #  268   0x846ed  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  269   0x846ef  9      
  nop                                    #  270   0x846f8  1      
  addl $0x1, 0x198(%rsp)                 #  271   0x846f9  8      
  movl %ebx, %ebx                        #  272   0x84701  2      
  movl %eax, (%r15,%rbx,1)               #  273   0x84703  4      
  movl 0x194(%rsp), %eax                 #  274   0x84707  7      
  addl $0x1, %eax                        #  275   0x8470e  3      
  cmpl $0x7, %eax                        #  276   0x84711  3      
  nop                                    #  277   0x84714  1      
  movl %eax, 0x194(%rsp)                 #  278   0x84715  7      
  jg .L_85d00                            #  279   0x8471c  6      
  addl $0x8, %ebx                        #  280   0x84722  3      
  nop                                    #  281   0x84725  1      
  nop                                    #  282   0x84726  1      
.L_848c0:                                #        0x84727  0      
  movl 0xa8(%rsp), %ecx                  #  283   0x84727  7      
  testl %ecx, %ecx                       #  284   0x8472e  2      
  je .L_84920                            #  285   0x84730  6      
  leal 0x1d0(%rsp), %eax                 #  286   0x84736  7      
  movl %ebx, %ebx                        #  287   0x8473d  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  288   0x8473f  9      
  nop                                    #  289   0x84748  1      
  addl $0x2, 0x198(%rsp)                 #  290   0x84749  8      
  movl %ebx, %ebx                        #  291   0x84751  2      
  movl %eax, (%r15,%rbx,1)               #  292   0x84753  4      
  movl 0x194(%rsp), %eax                 #  293   0x84757  7      
  addl $0x1, %eax                        #  294   0x8475e  3      
  cmpl $0x7, %eax                        #  295   0x84761  3      
  nop                                    #  296   0x84764  1      
  movl %eax, 0x194(%rsp)                 #  297   0x84765  7      
  jg .L_85d40                            #  298   0x8476c  6      
  addl $0x8, %ebx                        #  299   0x84772  3      
  nop                                    #  300   0x84775  1      
  nop                                    #  301   0x84776  1      
.L_84920:                                #        0x84777  0      
  cmpl $0x80, 0xa4(%rsp)                 #  302   0x84777  8      
  je .L_85b00                            #  303   0x8477f  6      
  nop                                    #  304   0x84785  1      
.L_84940:                                #        0x84786  0      
  movl 0xac(%rsp), %r13d                 #  305   0x84786  8      
  subl 0x7c(%rsp), %r13d                 #  306   0x8478e  5      
  testl %r13d, %r13d                     #  307   0x84793  3      
  jle .L_84a80                           #  308   0x84796  6      
  cmpl $0x10, %r13d                      #  309   0x8479c  4      
  jle .L_84a40                           #  310   0x847a0  6      
  leal 0x190(%rsp), %ecx                 #  311   0x847a6  7      
  movq %rbx, %rax                        #  312   0x847ad  3      
  movq 0x70(%rsp), %rbx                  #  313   0x847b0  5      
  movq %rcx, (%rsp)                      #  314   0x847b5  4      
  jmpq .L_849a0                          #  315   0x847b9  5      
  nop                                    #  316   0x847be  1      
.L_84980:                                #        0x847bf  0      
  subl $0x10, %r13d                      #  317   0x847bf  4      
  addl $0x8, %eax                        #  318   0x847c3  3      
  cmpl $0x10, %r13d                      #  319   0x847c6  4      
  jle .L_84a20                           #  320   0x847ca  6      
  nop                                    #  321   0x847d0  1      
.L_849a0:                                #        0x847d1  0      
  movl %eax, %eax                        #  322   0x847d1  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  323   0x847d3  9      
  movl 0x194(%rsp), %edx                 #  324   0x847dc  7      
  addl $0x10, 0x198(%rsp)                #  325   0x847e3  8      
  nop                                    #  326   0x847eb  1      
  movl %eax, %eax                        #  327   0x847ec  2      
  movl $0x10024f20, (%r15,%rax,1)        #  328   0x847ee  8      
  addl $0x1, %edx                        #  329   0x847f6  3      
  cmpl $0x7, %edx                        #  330   0x847f9  3      
  movl %edx, 0x194(%rsp)                 #  331   0x847fc  7      
  jle .L_84980                           #  332   0x84803  6      
  movl (%rsp), %edx                      #  333   0x84809  3      
  movl %ebx, %esi                        #  334   0x8480c  2      
  xchgw %ax, %ax                         #  335   0x8480e  3      
  movl %r14d, %edi                       #  336   0x84811  3      
  nop                                    #  337   0x84814  1      
  nop                                    #  338   0x84815  1      
  callq .__sprint_r                      #  339   0x84816  5      
  testl %eax, %eax                       #  340   0x8481b  2      
  jne .L_85a20                           #  341   0x8481d  6      
  subl $0x10, %r13d                      #  342   0x84823  4      
  leal 0x150(%rsp), %eax                 #  343   0x84827  7      
  cmpl $0x10, %r13d                      #  344   0x8482e  4      
  jg .L_849a0                            #  345   0x84832  6      
  nop                                    #  346   0x84838  1      
.L_84a20:                                #        0x84839  0      
  movq %rax, %rbx                        #  347   0x84839  3      
  nop                                    #  348   0x8483c  1      
  nop                                    #  349   0x8483d  1      
.L_84a40:                                #        0x8483e  0      
  movl %ebx, %ebx                        #  350   0x8483e  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  351   0x84840  5      
  movl 0x194(%rsp), %eax                 #  352   0x84845  7      
  addl %r13d, 0x198(%rsp)                #  353   0x8484c  8      
  movl %ebx, %ebx                        #  354   0x84854  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  355   0x84856  8      
  addl $0x1, %eax                        #  356   0x8485e  3      
  cmpl $0x7, %eax                        #  357   0x84861  3      
  movl %eax, 0x194(%rsp)                 #  358   0x84864  7      
  jg .L_85cc0                            #  359   0x8486b  6      
  addl $0x8, %ebx                        #  360   0x84871  3      
  nop                                    #  361   0x84874  1      
.L_84a80:                                #        0x84875  0      
  movl 0x7c(%rsp), %eax                  #  362   0x84875  4      
  movl 0x98(%rsp), %esi                  #  363   0x84879  7      
  movl %ebx, %ebx                        #  364   0x84880  2      
  movl %eax, 0x4(%r15,%rbx,1)            #  365   0x84882  5      
  addl %eax, 0x198(%rsp)                 #  366   0x84887  7      
  movl 0x194(%rsp), %eax                 #  367   0x8488e  7      
  movl %ebx, %ebx                        #  368   0x84895  2      
  movl %esi, (%r15,%rbx,1)               #  369   0x84897  4      
  addl $0x1, %eax                        #  370   0x8489b  3      
  cmpl $0x7, %eax                        #  371   0x8489e  3      
  movl %eax, 0x194(%rsp)                 #  372   0x848a1  7      
  jg .L_85c40                            #  373   0x848a8  6      
  addl $0x8, %ebx                        #  374   0x848ae  3      
  nop                                    #  375   0x848b1  1      
.L_84ac0:                                #        0x848b2  0      
  andl $0x4, %r12d                       #  376   0x848b2  4      
  je .L_84c40                            #  377   0x848b6  6      
  movl 0x88(%rsp), %r12d                 #  378   0x848bc  8      
  subl 0x68(%rsp), %r12d                 #  379   0x848c4  5      
  testl %r12d, %r12d                     #  380   0x848c9  3      
  jle .L_84c40                           #  381   0x848cc  6      
  cmpl $0x10, %r12d                      #  382   0x848d2  4      
  jle .L_84bc0                           #  383   0x848d6  6      
  movq %rbx, %rax                        #  384   0x848dc  3      
  leal 0x190(%rsp), %r13d                #  385   0x848df  8      
  movq 0x70(%rsp), %rbx                  #  386   0x848e7  5      
  jmpq .L_84b20                          #  387   0x848ec  5      
  nop                                    #  388   0x848f1  1      
.L_84b00:                                #        0x848f2  0      
  subl $0x10, %r12d                      #  389   0x848f2  4      
  addl $0x8, %eax                        #  390   0x848f6  3      
  cmpl $0x10, %r12d                      #  391   0x848f9  4      
  jle .L_84ba0                           #  392   0x848fd  6      
  nop                                    #  393   0x84903  1      
.L_84b20:                                #        0x84904  0      
  movl %eax, %eax                        #  394   0x84904  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  395   0x84906  9      
  movl 0x194(%rsp), %edx                 #  396   0x8490f  7      
  addl $0x10, 0x198(%rsp)                #  397   0x84916  8      
  nop                                    #  398   0x8491e  1      
  movl %eax, %eax                        #  399   0x8491f  2      
  movl $0x10024f30, (%r15,%rax,1)        #  400   0x84921  8      
  addl $0x1, %edx                        #  401   0x84929  3      
  cmpl $0x7, %edx                        #  402   0x8492c  3      
  movl %edx, 0x194(%rsp)                 #  403   0x8492f  7      
  jle .L_84b00                           #  404   0x84936  6      
  movl %r13d, %edx                       #  405   0x8493c  3      
  movl %ebx, %esi                        #  406   0x8493f  2      
  xchgw %ax, %ax                         #  407   0x84941  3      
  movl %r14d, %edi                       #  408   0x84944  3      
  nop                                    #  409   0x84947  1      
  nop                                    #  410   0x84948  1      
  callq .__sprint_r                      #  411   0x84949  5      
  testl %eax, %eax                       #  412   0x8494e  2      
  jne .L_85a20                           #  413   0x84950  6      
  subl $0x10, %r12d                      #  414   0x84956  4      
  leal 0x150(%rsp), %eax                 #  415   0x8495a  7      
  cmpl $0x10, %r12d                      #  416   0x84961  4      
  jg .L_84b20                            #  417   0x84965  6      
  nop                                    #  418   0x8496b  1      
.L_84ba0:                                #        0x8496c  0      
  movq %rax, %rbx                        #  419   0x8496c  3      
  nop                                    #  420   0x8496f  1      
  nop                                    #  421   0x84970  1      
.L_84bc0:                                #        0x84971  0      
  movl %ebx, %ebx                        #  422   0x84971  2      
  movl %r12d, 0x4(%r15,%rbx,1)           #  423   0x84973  5      
  movl 0x194(%rsp), %eax                 #  424   0x84978  7      
  addl 0x198(%rsp), %r12d                #  425   0x8497f  8      
  movl %ebx, %ebx                        #  426   0x84987  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  427   0x84989  8      
  addl $0x1, %eax                        #  428   0x84991  3      
  cmpl $0x7, %eax                        #  429   0x84994  3      
  movl %eax, 0x194(%rsp)                 #  430   0x84997  7      
  movl %r12d, 0x198(%rsp)                #  431   0x8499e  8      
  jle .L_84c60                           #  432   0x849a6  6      
  movl 0x70(%rsp), %esi                  #  433   0x849ac  4      
  nop                                    #  434   0x849b0  1      
  leal 0x190(%rsp), %edx                 #  435   0x849b1  7      
  movl %r14d, %edi                       #  436   0x849b8  3      
  xchgw %ax, %ax                         #  437   0x849bb  3      
  nop                                    #  438   0x849be  1      
  callq .__sprint_r                      #  439   0x849bf  5      
  testl %eax, %eax                       #  440   0x849c4  2      
  jne .L_85a20                           #  441   0x849c6  6      
  nop                                    #  442   0x849cc  1      
  nop                                    #  443   0x849cd  1      
.L_84c40:                                #        0x849ce  0      
  movl 0x198(%rsp), %r12d                #  444   0x849ce  8      
  nop                                    #  445   0x849d6  1      
  nop                                    #  446   0x849d7  1      
.L_84c60:                                #        0x849d8  0      
  movl 0x88(%rsp), %edx                  #  447   0x849d8  7      
  cmpl %edx, 0x68(%rsp)                  #  448   0x849df  4      
  movl %edx, %eax                        #  449   0x849e3  2      
  cmovgel 0x68(%rsp), %eax               #  450   0x849e5  5      
  addl %eax, 0x8c(%rsp)                  #  451   0x849ea  7      
  testl %r12d, %r12d                     #  452   0x849f1  3      
  nop                                    #  453   0x849f4  1      
  jne .L_85c80                           #  454   0x849f5  6      
  nop                                    #  455   0x849fb  1      
  nop                                    #  456   0x849fc  1      
.L_84ca0:                                #        0x849fd  0      
  cmpq $0x0, 0x90(%rsp)                  #  457   0x849fd  9      
  movl $0x0, 0x194(%rsp)                 #  458   0x84a06  11     
  leal 0x150(%rsp), %ebx                 #  459   0x84a11  7      
  nop                                    #  460   0x84a18  1      
  je .L_84480                            #  461   0x84a19  6      
  movl 0x90(%rsp), %esi                  #  462   0x84a1f  7      
  movl %r14d, %edi                       #  463   0x84a26  3      
  leal 0x150(%rsp), %ebx                 #  464   0x84a29  7      
  nop                                    #  465   0x84a30  1      
  callq ._free_r                         #  466   0x84a31  5      
  jmpq .L_84480                          #  467   0x84a36  5      
  nop                                    #  468   0x84a3b  1      
  nop                                    #  469   0x84a3c  1      
.L_84d00:                                #        0x84a3d  0      
  movl %edx, %edx                        #  470   0x84a3d  2      
  movl %edx, %edx                        #  471   0x84a3f  2      
  movq 0x10024c40(%r15,%rdx,8), %rdx     #  472   0x84a41  8      
  andl $0xffffffe0, %edx                 #  473   0x84a49  6      
  addq %r15, %rdx                        #  474   0x84a4f  3      
  jmpq %rdx                              #  475   0x84a52  2      
  nop                                    #  476   0x84a54  1      
  movl %r14d, %edi                       #  477   0x84a55  3      
  movl %r8d, 0x40(%rsp)                  #  478   0x84a58  5      
  nop                                    #  479   0x84a5d  1      
  nop                                    #  480   0x84a5e  1      
  callq ._localeconv_r                   #  481   0x84a5f  5      
  movl %eax, %eax                        #  482   0x84a64  2      
  movl %eax, %eax                        #  483   0x84a66  2      
  movl 0x4(%r15,%rax,1), %eax            #  484   0x84a68  5      
  movl %eax, %edi                        #  485   0x84a6d  2      
  movq %rax, 0xd8(%rsp)                  #  486   0x84a6f  8      
  nop                                    #  487   0x84a77  1      
  callq .strlen                          #  488   0x84a78  5      
  movl %r14d, %edi                       #  489   0x84a7d  3      
  movl %eax, 0xd4(%rsp)                  #  490   0x84a80  7      
  xchgw %ax, %ax                         #  491   0x84a87  3      
  nop                                    #  492   0x84a8a  1      
  callq ._localeconv_r                   #  493   0x84a8b  5      
  movl %eax, %eax                        #  494   0x84a90  2      
  movl 0xd4(%rsp), %r9d                  #  495   0x84a92  8      
  movl 0x40(%rsp), %r8d                  #  496   0x84a9a  5      
  movl %eax, %eax                        #  497   0x84a9f  2      
  movl 0x8(%r15,%rax,1), %eax            #  498   0x84aa1  5      
  testl %r9d, %r9d                       #  499   0x84aa6  3      
  nop                                    #  500   0x84aa9  1      
  movq %rax, 0xb0(%rsp)                  #  501   0x84aaa  8      
  je .L_84de0                            #  502   0x84ab2  6      
  testq %rax, %rax                       #  503   0x84ab8  3      
  je .L_84de0                            #  504   0x84abb  6      
  movq 0xb0(%rsp), %rcx                  #  505   0x84ac1  8      
  movl %ecx, %ecx                        #  506   0x84ac9  2      
  cmpb $0x0, (%r15,%rcx,1)               #  507   0x84acb  5      
  xchgw %ax, %ax                         #  508   0x84ad0  3      
  jne .L_86b20                           #  509   0x84ad3  6      
  nop                                    #  510   0x84ad9  1      
  nop                                    #  511   0x84ada  1      
.L_84de0:                                #        0x84adb  0      
  movl %r13d, %r13d                      #  512   0x84adb  3      
  movzbl (%r15,%r13,1), %eax             #  513   0x84ade  5      
  jmpq .L_84640                          #  514   0x84ae3  5      
  nop                                    #  515   0x84ae8  1      
  nop                                    #  516   0x84ae9  1      
  orl $0x20, %r12d                       #  517   0x84aea  4      
  movl %r13d, %r13d                      #  518   0x84aee  3      
  movzbl (%r15,%r13,1), %eax             #  519   0x84af1  5      
  jmpq .L_84640                          #  520   0x84af6  5      
  nop                                    #  521   0x84afb  1      
  movq 0x80(%rsp), %rsi                  #  522   0x84afc  8      
  movl %esi, %esi                        #  523   0x84b04  2      
  movl (%r15,%rsi,1), %eax               #  524   0x84b06  4      
  cmpl $0x2f, %eax                       #  525   0x84b0a  3      
  ja .L_86460                            #  526   0x84b0d  6      
  movl %esi, %esi                        #  527   0x84b13  2      
  movl 0xc(%r15,%rsi,1), %edx            #  528   0x84b15  5      
  addl %eax, %edx                        #  529   0x84b1a  2      
  addl $0x8, %eax                        #  530   0x84b1c  3      
  movl %esi, %esi                        #  531   0x84b1f  2      
  movl %eax, (%r15,%rsi,1)               #  532   0x84b21  4      
  nop                                    #  533   0x84b25  1      
  nop                                    #  534   0x84b26  1      
.L_84e60:                                #        0x84b27  0      
  movl %edx, %edx                        #  535   0x84b27  2      
  movl (%r15,%rdx,1), %edx               #  536   0x84b29  4      
  testl %edx, %edx                       #  537   0x84b2d  2      
  movl %edx, 0x88(%rsp)                  #  538   0x84b2f  7      
  jns .L_84de0                           #  539   0x84b36  6      
  negl 0x88(%rsp)                        #  540   0x84b3c  7      
  nop                                    #  541   0x84b43  1      
  orl $0x4, %r12d                        #  542   0x84b44  4      
  movl %r13d, %r13d                      #  543   0x84b48  3      
  movzbl (%r15,%r13,1), %eax             #  544   0x84b4b  5      
  jmpq .L_84640                          #  545   0x84b50  5      
  nop                                    #  546   0x84b55  1      
.L_84ea0:                                #        0x84b56  0      
  movl 0x70(%rsp), %esi                  #  547   0x84b56  4      
  movl %r14d, %edi                       #  548   0x84b5a  3      
  nop                                    #  549   0x84b5d  1      
  nop                                    #  550   0x84b5e  1      
  callq .__swsetup_r                     #  551   0x84b5f  5      
  testl %eax, %eax                       #  552   0x84b64  2      
  jne .L_87160                           #  553   0x84b66  6      
  movq 0x70(%rsp), %rcx                  #  554   0x84b6c  5      
  movl %ecx, %ecx                        #  555   0x84b71  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  556   0x84b73  6      
  movl %eax, %edx                        #  557   0x84b79  2      
  andl $0x1a, %edx                       #  558   0x84b7b  3      
  cmpl $0xa, %edx                        #  559   0x84b7e  3      
  nop                                    #  560   0x84b81  1      
  jne .L_843c0                           #  561   0x84b82  6      
  nop                                    #  562   0x84b88  1      
  nop                                    #  563   0x84b89  1      
.L_84f00:                                #        0x84b8a  0      
  movq 0x70(%rsp), %rdx                  #  564   0x84b8a  5      
  movl %edx, %edx                        #  565   0x84b8f  2      
  cmpw $0x0, 0xe(%r15,%rdx,1)            #  566   0x84b91  7      
  js .L_843c0                            #  567   0x84b98  6      
  testb $0x2, %ah                        #  568   0x84b9e  3      
  je .L_85920                            #  569   0x84ba1  6      
  nop                                    #  570   0x84ba7  1      
.L_84f20:                                #        0x84ba8  0      
  movl 0x80(%rsp), %ecx                  #  571   0x84ba8  7      
  movl 0x70(%rsp), %esi                  #  572   0x84baf  4      
  movl %ebx, %edx                        #  573   0x84bb3  2      
  movl %r14d, %edi                       #  574   0x84bb5  3      
  nop                                    #  575   0x84bb8  1      
  callq .__sbprintf                      #  576   0x84bb9  5      
  movl %eax, 0x8c(%rsp)                  #  577   0x84bbe  7      
  nop                                    #  578   0x84bc5  1      
  nop                                    #  579   0x84bc6  1      
.L_84f60:                                #        0x84bc7  0      
  movl 0x8c(%rsp), %eax                  #  580   0x84bc7  7      
  addl $0x1e8, %esp                      #  581   0x84bce  6      
  addq %r15, %rsp                        #  582   0x84bd4  3      
  popq %rbx                              #  583   0x84bd7  2      
  popq %r12                              #  584   0x84bd9  3      
  popq %r13                              #  585   0x84bdc  3      
  popq %r14                              #  586   0x84bdf  3      
  popq %r11                              #  587   0x84be2  3      
  nop                                    #  588   0x84be5  1      
  andl $0xffffffe0, %r11d                #  589   0x84be6  7      
  addq %r15, %r11                        #  590   0x84bed  3      
  jmpq %r11                              #  591   0x84bf0  3      
  nop                                    #  592   0x84bf3  1      
  nop                                    #  593   0x84bf4  1      
.L_84fa0:                                #        0x84bf5  0      
  movl 0x70(%rsp), %esi                  #  594   0x84bf5  4      
  leal 0x190(%rsp), %edx                 #  595   0x84bf9  7      
  movl %r14d, %edi                       #  596   0x84c00  3      
  movl %ecx, 0x58(%rsp)                  #  597   0x84c03  4      
  nop                                    #  598   0x84c07  1      
  callq .__sprint_r                      #  599   0x84c08  5      
  testl %eax, %eax                       #  600   0x84c0d  2      
  movl 0x58(%rsp), %ecx                  #  601   0x84c0f  4      
  jne .L_85fe0                           #  602   0x84c13  6      
  leal 0x150(%rsp), %ebx                 #  603   0x84c19  7      
  jmpq .L_845e0                          #  604   0x84c20  5      
  nop                                    #  605   0x84c25  1      
.L_84fe0:                                #        0x84c26  0      
  movl 0x70(%rsp), %edi                  #  606   0x84c26  4      
  addl $0x5c, %edi                       #  607   0x84c2a  3      
  nop                                    #  608   0x84c2d  1      
  nop                                    #  609   0x84c2e  1      
  callq .__local_lock_acquire_recursive  #  610   0x84c2f  5      
  movq 0x70(%rsp), %rsi                  #  611   0x84c34  5      
  movl %esi, %esi                        #  612   0x84c39  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  613   0x84c3b  6      
  movswl %dx, %eax                       #  614   0x84c41  3      
  jmpq .L_84340                          #  615   0x84c44  5      
  nop                                    #  616   0x84c49  1      
.L_85020:                                #        0x84c4a  0      
  movl %r14d, %edi                       #  617   0x84c4a  3      
  nop                                    #  618   0x84c4d  1      
  nop                                    #  619   0x84c4e  1      
  callq .__sinit                         #  620   0x84c4f  5      
  jmpq .L_84320                          #  621   0x84c54  5      
  nop                                    #  622   0x84c59  1      
  nop                                    #  623   0x84c5a  1      
  movl %r13d, %r13d                      #  624   0x84c5b  3      
  movzbl (%r15,%r13,1), %eax             #  625   0x84c5e  5      
  cmpb $0x6c, %al                        #  626   0x84c63  2      
  je .L_869e0                            #  627   0x84c65  6      
  orl $0x10, %r12d                       #  628   0x84c6b  4      
  jmpq .L_84640                          #  629   0x84c6f  5      
  nop                                    #  630   0x84c74  1      
  testb $0x20, %r12b                     #  631   0x84c75  4      
  movq %r13, 0x60(%rsp)                  #  632   0x84c79  5      
  je .L_865e0                            #  633   0x84c7e  6      
  movq 0x80(%rsp), %rdx                  #  634   0x84c84  8      
  movl %edx, %edx                        #  635   0x84c8c  2      
  movl (%r15,%rdx,1), %eax               #  636   0x84c8e  4      
  cmpl $0x2f, %eax                       #  637   0x84c92  3      
  ja .L_86ca0                            #  638   0x84c95  6      
  movq %rdx, %rcx                        #  639   0x84c9b  3      
  movl %edx, %edx                        #  640   0x84c9e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  641   0x84ca0  5      
  addl %eax, %edx                        #  642   0x84ca5  2      
  addl $0x8, %eax                        #  643   0x84ca7  3      
  movl %ecx, %ecx                        #  644   0x84caa  2      
  movl %eax, (%r15,%rcx,1)               #  645   0x84cac  4      
  nop                                    #  646   0x84cb0  1      
.L_850c0:                                #        0x84cb1  0      
  movl %edx, %edx                        #  647   0x84cb1  2      
  movl (%r15,%rdx,1), %eax               #  648   0x84cb3  4      
  movslq 0x8c(%rsp), %rdx                #  649   0x84cb7  8      
  movl %eax, %eax                        #  650   0x84cbf  2      
  movq %rdx, (%r15,%rax,1)               #  651   0x84cc1  4      
  jmpq .L_84480                          #  652   0x84cc5  5      
  nop                                    #  653   0x84cca  1      
  movq 0x80(%rsp), %rdx                  #  654   0x84ccb  8      
  movq %r13, 0x60(%rsp)                  #  655   0x84cd3  5      
  movl %edx, %edx                        #  656   0x84cd8  2      
  movl (%r15,%rdx,1), %eax               #  657   0x84cda  4      
  cmpl $0x2f, %eax                       #  658   0x84cde  3      
  ja .L_866a0                            #  659   0x84ce1  6      
  movq %rdx, %rcx                        #  660   0x84ce7  3      
  nop                                    #  661   0x84cea  1      
  movl %edx, %edx                        #  662   0x84ceb  2      
  movl 0xc(%r15,%rdx,1), %edx            #  663   0x84ced  5      
  addl %eax, %edx                        #  664   0x84cf2  2      
  addl $0x8, %eax                        #  665   0x84cf4  3      
  movl %ecx, %ecx                        #  666   0x84cf7  2      
  movl %eax, (%r15,%rcx,1)               #  667   0x84cf9  4      
  nop                                    #  668   0x84cfd  1      
.L_85120:                                #        0x84cfe  0      
  movl %edx, %edx                        #  669   0x84cfe  2      
  movl (%r15,%rdx,1), %r13d              #  670   0x84d00  4      
  orl $0x2, %r12d                        #  671   0x84d04  4      
  movb $0x30, 0x1d0(%rsp)                #  672   0x84d08  8      
  movb $0x78, 0x1d1(%rsp)                #  673   0x84d10  8      
  nop                                    #  674   0x84d18  1      
  movq $0x10023c01, 0xc0(%rsp)           #  675   0x84d19  12     
  movl $0x2, %eax                        #  676   0x84d25  5      
  testq %r13, %r13                       #  677   0x84d2a  3      
  setne %dl                              #  678   0x84d2d  3      
  nop                                    #  679   0x84d30  1      
.L_85160:                                #        0x84d31  0      
  movb $0x0, 0x1df(%rsp)                 #  680   0x84d31  8      
  nop                                    #  681   0x84d39  1      
  nop                                    #  682   0x84d3a  1      
.L_85180:                                #        0x84d3b  0      
  movl %r12d, %ecx                       #  683   0x84d3b  3      
  andb $0x7f, %cl                        #  684   0x84d3e  3      
  testl %r8d, %r8d                       #  685   0x84d41  3      
  cmovnsl %ecx, %r12d                    #  686   0x84d44  4      
  testl %r8d, %r8d                       #  687   0x84d48  3      
  jne .L_851a0                           #  688   0x84d4b  6      
  testb %dl, %dl                         #  689   0x84d51  2      
  je .L_859a0                            #  690   0x84d53  6      
  nop                                    #  691   0x84d59  1      
.L_851a0:                                #        0x84d5a  0      
  cmpl $0x1, %eax                        #  692   0x84d5a  3      
  je .L_85e40                            #  693   0x84d5d  6      
  cmpl $0x2, %eax                        #  694   0x84d63  3      
  je .L_85dc0                            #  695   0x84d66  6      
  movq 0xb8(%rsp), %rax                  #  696   0x84d6c  8      
  movq %rax, %rdx                        #  697   0x84d74  3      
  nop                                    #  698   0x84d77  1      
.L_851c0:                                #        0x84d78  0      
  movl %r13d, %eax                       #  699   0x84d78  3      
  shrq $0x3, %r13                        #  700   0x84d7b  4      
  subl $0x1, %edx                        #  701   0x84d7f  3      
  andl $0x7, %eax                        #  702   0x84d82  3      
  addl $0x30, %eax                       #  703   0x84d85  3      
  testq %r13, %r13                       #  704   0x84d88  3      
  movl %edx, %edx                        #  705   0x84d8b  2      
  movb %al, (%r15,%rdx,1)                #  706   0x84d8d  4      
  jne .L_851c0                           #  707   0x84d91  6      
  testb $0x1, %r12b                      #  708   0x84d97  4      
  nop                                    #  709   0x84d9b  1      
  movq %rdx, 0x98(%rsp)                  #  710   0x84d9c  8      
  jne .L_862c0                           #  711   0x84da4  6      
  movl 0xb8(%rsp), %ecx                  #  712   0x84daa  7      
  subl %edx, %ecx                        #  713   0x84db1  2      
  movl %ecx, 0x7c(%rsp)                  #  714   0x84db3  4      
  nop                                    #  715   0x84db7  1      
  movq 0xb0(%rsp), %rcx                  #  716   0x84db8  8      
  nop                                    #  717   0x84dc0  1      
  nop                                    #  718   0x84dc1  1      
.L_85220:                                #        0x84dc2  0      
  cmpl %r8d, 0x7c(%rsp)                  #  719   0x84dc2  5      
  movl 0x7c(%rsp), %eax                  #  720   0x84dc7  4      
  movl %r8d, 0xac(%rsp)                  #  721   0x84dcb  8      
  movq %rcx, 0xb0(%rsp)                  #  722   0x84dd3  8      
  nop                                    #  723   0x84ddb  1      
  movq $0x0, 0x90(%rsp)                  #  724   0x84ddc  12     
  cmovll %r8d, %eax                      #  725   0x84de8  4      
  movl %eax, 0x68(%rsp)                  #  726   0x84dec  4      
  nop                                    #  727   0x84df0  1      
.L_85260:                                #        0x84df1  0      
  cmpb $0x1, 0x1df(%rsp)                 #  728   0x84df1  8      
  sbbl $0xffffffff, 0x68(%rsp)           #  729   0x84df9  8      
  jmpq .L_846e0                          #  730   0x84e01  5      
  nop                                    #  731   0x84e06  1      
  testb $0x20, %r12b                     #  732   0x84e07  4      
  movq %r13, 0x60(%rsp)                  #  733   0x84e0b  5      
  movq $0x10023c01, 0xc0(%rsp)           #  734   0x84e10  12     
  je .L_85760                            #  735   0x84e1c  6      
  nop                                    #  736   0x84e22  1      
.L_852a0:                                #        0x84e23  0      
  movq 0x80(%rsp), %rcx                  #  737   0x84e23  8      
  movl %ecx, %ecx                        #  738   0x84e2b  2      
  movl (%r15,%rcx,1), %edx               #  739   0x84e2d  4      
  cmpl $0x2f, %edx                       #  740   0x84e31  3      
  ja .L_86420                            #  741   0x84e34  6      
  movq %rcx, %rsi                        #  742   0x84e3a  3      
  nop                                    #  743   0x84e3d  1      
  movl %ecx, %ecx                        #  744   0x84e3e  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  745   0x84e40  5      
  addl %edx, %ecx                        #  746   0x84e45  2      
  addl $0x8, %edx                        #  747   0x84e47  3      
  movl %esi, %esi                        #  748   0x84e4a  2      
  movl %edx, (%r15,%rsi,1)               #  749   0x84e4c  4      
  nop                                    #  750   0x84e50  1      
.L_852e0:                                #        0x84e51  0      
  movl %ecx, %ecx                        #  751   0x84e51  2      
  movq (%r15,%rcx,1), %r13               #  752   0x84e53  4      
  nop                                    #  753   0x84e57  1      
  nop                                    #  754   0x84e58  1      
.L_85300:                                #        0x84e59  0      
  testq %r13, %r13                       #  755   0x84e59  3      
  setne %dl                              #  756   0x84e5c  3      
  je .L_85340                            #  757   0x84e5f  6      
  testb $0x1, %r12b                      #  758   0x84e65  4      
  je .L_85340                            #  759   0x84e69  6      
  movb $0x30, 0x1d0(%rsp)                #  760   0x84e6f  8      
  movb %al, 0x1d1(%rsp)                  #  761   0x84e77  7      
  nop                                    #  762   0x84e7e  1      
  orl $0x2, %r12d                        #  763   0x84e7f  4      
  nop                                    #  764   0x84e83  1      
  nop                                    #  765   0x84e84  1      
.L_85340:                                #        0x84e85  0      
  andl $0xfffffbff, %r12d                #  766   0x84e85  7      
  movl $0x2, %eax                        #  767   0x84e8c  5      
  jmpq .L_85160                          #  768   0x84e91  5      
  nop                                    #  769   0x84e96  1      
  movb $0x2b, 0x1df(%rsp)                #  770   0x84e97  8      
  movl %r13d, %r13d                      #  771   0x84e9f  3      
  movzbl (%r15,%r13,1), %eax             #  772   0x84ea2  5      
  jmpq .L_84640                          #  773   0x84ea7  5      
  nop                                    #  774   0x84eac  1      
  orb $0x80, %r12b                       #  775   0x84ead  4      
  movl %r13d, %r13d                      #  776   0x84eb1  3      
  movzbl (%r15,%r13,1), %eax             #  777   0x84eb4  5      
  jmpq .L_84640                          #  778   0x84eb9  5      
  nop                                    #  779   0x84ebe  1      
  xorl %edx, %edx                        #  780   0x84ebf  2      
  nop                                    #  781   0x84ec1  1      
  nop                                    #  782   0x84ec2  1      
.L_853c0:                                #        0x84ec3  0      
  leal (%rdx,%rdx,4), %edx               #  783   0x84ec3  3      
  leal -0x30(%rax,%rdx,2), %edx          #  784   0x84ec6  4      
  movl %r13d, %r13d                      #  785   0x84eca  3      
  movsbl (%r15,%r13,1), %eax             #  786   0x84ecd  5      
  addl $0x1, %r13d                       #  787   0x84ed2  4      
  leal -0x30(%rax), %ecx                 #  788   0x84ed6  3      
  cmpl $0x9, %ecx                        #  789   0x84ed9  3      
  jbe .L_853c0                           #  790   0x84edc  6      
  nop                                    #  791   0x84ee2  1      
  movl %edx, 0x88(%rsp)                  #  792   0x84ee3  7      
  jmpq .L_84660                          #  793   0x84eea  5      
  nop                                    #  794   0x84eef  1      
  nop                                    #  795   0x84ef0  1      
  cmpl $0x43, %eax                       #  796   0x84ef1  3      
  movq %r13, 0x60(%rsp)                  #  797   0x84ef4  5      
  je .L_861e0                            #  798   0x84ef9  6      
  testb $0x10, %r12b                     #  799   0x84eff  4      
  jne .L_861e0                           #  800   0x84f03  6      
  movq 0x80(%rsp), %rdx                  #  801   0x84f09  8      
  movl %edx, %edx                        #  802   0x84f11  2      
  movl (%r15,%rdx,1), %eax               #  803   0x84f13  4      
  cmpl $0x2f, %eax                       #  804   0x84f17  3      
  jbe .L_86d00                           #  805   0x84f1a  6      
  movq 0x80(%rsp), %rsi                  #  806   0x84f20  8      
  movl %esi, %esi                        #  807   0x84f28  2      
  movl 0x8(%r15,%rsi,1), %edx            #  808   0x84f2a  5      
  xchgw %ax, %ax                         #  809   0x84f2f  3      
  leal 0x8(%rdx), %eax                   #  810   0x84f32  3      
  movl %esi, %esi                        #  811   0x84f35  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  812   0x84f37  5      
  nop                                    #  813   0x84f3c  1      
  nop                                    #  814   0x84f3d  1      
.L_85460:                                #        0x84f3e  0      
  movl %edx, %edx                        #  815   0x84f3e  2      
  movl (%r15,%rdx,1), %eax               #  816   0x84f40  4      
  movl $0x1, 0x7c(%rsp)                  #  817   0x84f44  8      
  movb %al, 0xe0(%rsp)                   #  818   0x84f4c  7      
  jmpq .L_86280                          #  819   0x84f53  5      
  nop                                    #  820   0x84f58  1      
  movq %r13, 0x60(%rsp)                  #  821   0x84f59  5      
  orl $0x10, %r12d                       #  822   0x84f5e  4      
  nop                                    #  823   0x84f62  1      
  nop                                    #  824   0x84f63  1      
.L_854a0:                                #        0x84f64  0      
  testb $0x20, %r12b                     #  825   0x84f64  4      
  je .L_85e80                            #  826   0x84f68  6      
  movq 0x80(%rsp), %rcx                  #  827   0x84f6e  8      
  movl %ecx, %ecx                        #  828   0x84f76  2      
  movl (%r15,%rcx,1), %eax               #  829   0x84f78  4      
  cmpl $0x2f, %eax                       #  830   0x84f7c  3      
  nop                                    #  831   0x84f7f  1      
  ja .L_865c0                            #  832   0x84f80  6      
  movl %ecx, %ecx                        #  833   0x84f86  2      
  movl 0xc(%r15,%rcx,1), %edx            #  834   0x84f88  5      
  addl %eax, %edx                        #  835   0x84f8d  2      
  addl $0x8, %eax                        #  836   0x84f8f  3      
  movl %ecx, %ecx                        #  837   0x84f92  2      
  movl %eax, (%r15,%rcx,1)               #  838   0x84f94  4      
  nop                                    #  839   0x84f98  1      
.L_854e0:                                #        0x84f99  0      
  movl %edx, %edx                        #  840   0x84f99  2      
  movq (%r15,%rdx,1), %r13               #  841   0x84f9b  4      
  nop                                    #  842   0x84f9f  1      
  nop                                    #  843   0x84fa0  1      
.L_85500:                                #        0x84fa1  0      
  cmpq $0x0, %r13                        #  844   0x84fa1  4      
  jl .L_86320                            #  845   0x84fa5  6      
  setne %dl                              #  846   0x84fab  3      
  movl $0x1, %eax                        #  847   0x84fae  5      
  jmpq .L_85180                          #  848   0x84fb3  5      
  nop                                    #  849   0x84fb8  1      
  orl $0x1, %r12d                        #  850   0x84fb9  4      
  movl %r13d, %r13d                      #  851   0x84fbd  3      
  movzbl (%r15,%r13,1), %eax             #  852   0x84fc0  5      
  jmpq .L_84640                          #  853   0x84fc5  5      
  nop                                    #  854   0x84fca  1      
  movl %r13d, %r13d                      #  855   0x84fcb  3      
  movzbl (%r15,%r13,1), %eax             #  856   0x84fce  5      
  cmpb $0x68, %al                        #  857   0x84fd3  2      
  je .L_869c0                            #  858   0x84fd5  6      
  orl $0x40, %r12d                       #  859   0x84fdb  4      
  jmpq .L_84640                          #  860   0x84fdf  5      
  nop                                    #  861   0x84fe4  1      
  movq %r13, 0x60(%rsp)                  #  862   0x84fe5  5      
  orl $0x10, %r12d                       #  863   0x84fea  4      
  nop                                    #  864   0x84fee  1      
  nop                                    #  865   0x84fef  1      
.L_85580:                                #        0x84ff0  0      
  testb $0x20, %r12b                     #  866   0x84ff0  4      
  je .L_85f40                            #  867   0x84ff4  6      
  movq 0x80(%rsp), %rcx                  #  868   0x84ffa  8      
  movl %ecx, %ecx                        #  869   0x85002  2      
  movl (%r15,%rcx,1), %eax               #  870   0x85004  4      
  cmpl $0x2f, %eax                       #  871   0x85008  3      
  nop                                    #  872   0x8500b  1      
  ja .L_864a0                            #  873   0x8500c  6      
  movl %ecx, %ecx                        #  874   0x85012  2      
  movl 0xc(%r15,%rcx,1), %edx            #  875   0x85014  5      
  addl %eax, %edx                        #  876   0x85019  2      
  addl $0x8, %eax                        #  877   0x8501b  3      
  movl %ecx, %ecx                        #  878   0x8501e  2      
  movl %eax, (%r15,%rcx,1)               #  879   0x85020  4      
  nop                                    #  880   0x85024  1      
.L_855c0:                                #        0x85025  0      
  movl %edx, %edx                        #  881   0x85025  2      
  movq (%r15,%rdx,1), %r13               #  882   0x85027  4      
  nop                                    #  883   0x8502b  1      
  nop                                    #  884   0x8502c  1      
.L_855e0:                                #        0x8502d  0      
  andl $0xfffffbff, %r12d                #  885   0x8502d  7      
  testq %r13, %r13                       #  886   0x85034  3      
  setne %dl                              #  887   0x85037  3      
  xorl %eax, %eax                        #  888   0x8503a  2      
  jmpq .L_85160                          #  889   0x8503c  5      
  nop                                    #  890   0x85041  1      
  movl %r13d, %r13d                      #  891   0x85042  3      
  movsbl (%r15,%r13,1), %eax             #  892   0x85045  5      
  addl $0x1, %r13d                       #  893   0x8504a  4      
  cmpl $0x2a, %eax                       #  894   0x8504e  3      
  je .L_873e0                            #  895   0x85051  6      
  leal -0x30(%rax), %ecx                 #  896   0x85057  3      
  xorl %edx, %edx                        #  897   0x8505a  2      
  xorl %r8d, %r8d                        #  898   0x8505c  3      
  cmpl $0x9, %ecx                        #  899   0x8505f  3      
  ja .L_84660                            #  900   0x85062  6      
  nop                                    #  901   0x85068  1      
  nop                                    #  902   0x85069  1      
.L_85640:                                #        0x8506a  0      
  movl %r13d, %r13d                      #  903   0x8506a  3      
  movsbl (%r15,%r13,1), %eax             #  904   0x8506d  5      
  leal (%rdx,%rdx,4), %edx               #  905   0x85072  3      
  addl $0x1, %r13d                       #  906   0x85075  4      
  leal (%rcx,%rdx,2), %edx               #  907   0x85079  3      
  leal -0x30(%rax), %ecx                 #  908   0x8507c  3      
  cmpl $0x9, %ecx                        #  909   0x8507f  3      
  jbe .L_85640                           #  910   0x85082  6      
  testl %edx, %edx                       #  911   0x85088  2      
  nop                                    #  912   0x8508a  1      
  movl $0xffffffff, %r8d                 #  913   0x8508b  6      
  cmovnsl %edx, %r8d                     #  914   0x85091  4      
  jmpq .L_84660                          #  915   0x85095  5      
  xchgw %ax, %ax                         #  916   0x8509a  3      
  nop                                    #  917   0x8509d  1      
  cmpb $0x0, 0x1df(%rsp)                 #  918   0x8509e  8      
  jne .L_84de0                           #  919   0x850a6  6      
  movb $0x20, 0x1df(%rsp)                #  920   0x850ac  8      
  movl %r13d, %r13d                      #  921   0x850b4  3      
  movzbl (%r15,%r13,1), %eax             #  922   0x850b7  5      
  xchgw %ax, %ax                         #  923   0x850bc  3      
  jmpq .L_84640                          #  924   0x850bf  5      
  nop                                    #  925   0x850c4  1      
  nop                                    #  926   0x850c5  1      
  movq %r13, 0x60(%rsp)                  #  927   0x850c6  5      
  orl $0x10, %r12d                       #  928   0x850cb  4      
  nop                                    #  929   0x850cf  1      
  nop                                    #  930   0x850d0  1      
.L_856e0:                                #        0x850d1  0      
  testb $0x20, %r12b                     #  931   0x850d1  4      
  je .L_85ee0                            #  932   0x850d5  6      
  movq 0x80(%rsp), %rdx                  #  933   0x850db  8      
  movl %edx, %edx                        #  934   0x850e3  2      
  movl (%r15,%rdx,1), %eax               #  935   0x850e5  4      
  cmpl $0x2f, %eax                       #  936   0x850e9  3      
  nop                                    #  937   0x850ec  1      
  ja .L_86380                            #  938   0x850ed  6      
  movq %rdx, %rcx                        #  939   0x850f3  3      
  movl %edx, %edx                        #  940   0x850f6  2      
  movl 0xc(%r15,%rdx,1), %edx            #  941   0x850f8  5      
  addl %eax, %edx                        #  942   0x850fd  2      
  addl $0x8, %eax                        #  943   0x850ff  3      
  movl %ecx, %ecx                        #  944   0x85102  2      
  movl %eax, (%r15,%rcx,1)               #  945   0x85104  4      
  nop                                    #  946   0x85108  1      
.L_85720:                                #        0x85109  0      
  movl %edx, %edx                        #  947   0x85109  2      
  movq (%r15,%rdx,1), %r13               #  948   0x8510b  4      
  movl $0x1, %eax                        #  949   0x8510f  5      
  testq %r13, %r13                       #  950   0x85114  3      
  setne %dl                              #  951   0x85117  3      
  jmpq .L_85160                          #  952   0x8511a  5      
  nop                                    #  953   0x8511f  1      
  testb $0x20, %r12b                     #  954   0x85120  4      
  movq %r13, 0x60(%rsp)                  #  955   0x85124  5      
  movq $0x10023be0, 0xc0(%rsp)           #  956   0x85129  12     
  jne .L_852a0                           #  957   0x85135  6      
  nop                                    #  958   0x8513b  1      
.L_85760:                                #        0x8513c  0      
  testb $0x10, %r12b                     #  959   0x8513c  4      
  je .L_863a0                            #  960   0x85140  6      
  movq 0x80(%rsp), %rcx                  #  961   0x85146  8      
  movl %ecx, %ecx                        #  962   0x8514e  2      
  movl (%r15,%rcx,1), %edx               #  963   0x85150  4      
  cmpl $0x2f, %edx                       #  964   0x85154  3      
  nop                                    #  965   0x85157  1      
  ja .L_86b60                            #  966   0x85158  6      
  movq %rcx, %rsi                        #  967   0x8515e  3      
  movl %ecx, %ecx                        #  968   0x85161  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  969   0x85163  5      
  addl %edx, %ecx                        #  970   0x85168  2      
  addl $0x8, %edx                        #  971   0x8516a  3      
  movl %esi, %esi                        #  972   0x8516d  2      
  movl %edx, (%r15,%rsi,1)               #  973   0x8516f  4      
  nop                                    #  974   0x85173  1      
.L_857a0:                                #        0x85174  0      
  movl %ecx, %ecx                        #  975   0x85174  2      
  movl (%r15,%rcx,1), %r13d              #  976   0x85176  4      
  jmpq .L_85300                          #  977   0x8517a  5      
  nop                                    #  978   0x8517f  1      
  nop                                    #  979   0x85180  1      
  movq 0x80(%rsp), %rcx                  #  980   0x85181  8      
  movq %r13, 0x60(%rsp)                  #  981   0x85189  5      
  movl %ecx, %ecx                        #  982   0x8518e  2      
  movl (%r15,%rcx,1), %edx               #  983   0x85190  4      
  cmpl $0x2f, %edx                       #  984   0x85194  3      
  ja .L_86660                            #  985   0x85197  6      
  movq %rcx, %rsi                        #  986   0x8519d  3      
  nop                                    #  987   0x851a0  1      
  movl %ecx, %ecx                        #  988   0x851a1  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  989   0x851a3  5      
  addl %edx, %ecx                        #  990   0x851a8  2      
  addl $0x8, %edx                        #  991   0x851aa  3      
  movl %esi, %esi                        #  992   0x851ad  2      
  movl %edx, (%r15,%rsi,1)               #  993   0x851af  4      
  nop                                    #  994   0x851b3  1      
.L_85800:                                #        0x851b4  0      
  movl %ecx, %ecx                        #  995   0x851b4  2      
  movl (%r15,%rcx,1), %ecx               #  996   0x851b6  4      
  movb $0x0, 0x1df(%rsp)                 #  997   0x851ba  8      
  testq %rcx, %rcx                       #  998   0x851c2  3      
  movq %rcx, 0x98(%rsp)                  #  999   0x851c5  8      
  je .L_86de0                            #  1000  0x851cd  6      
  nop                                    #  1001  0x851d3  1      
  cmpl $0x53, %eax                       #  1002  0x851d4  3      
  je .L_86740                            #  1003  0x851d7  6      
  movl %r12d, %r13d                      #  1004  0x851dd  3      
  andl $0x10, %r13d                      #  1005  0x851e0  4      
  jne .L_86740                           #  1006  0x851e4  6      
  testl %r8d, %r8d                       #  1007  0x851ea  3      
  js .L_87100                            #  1008  0x851ed  6      
  nop                                    #  1009  0x851f3  1      
  movl 0x98(%rsp), %edi                  #  1010  0x851f4  7      
  movl %r8d, %edx                        #  1011  0x851fb  3      
  xorl %esi, %esi                        #  1012  0x851fe  2      
  movl %r8d, 0x40(%rsp)                  #  1013  0x85200  5      
  nop                                    #  1014  0x85205  1      
  callq .memchr                          #  1015  0x85206  5      
  movl %eax, %eax                        #  1016  0x8520b  2      
  movl 0x40(%rsp), %r8d                  #  1017  0x8520d  5      
  testq %rax, %rax                       #  1018  0x85212  3      
  je .L_86d60                            #  1019  0x85215  6      
  subl 0x98(%rsp), %eax                  #  1020  0x8521b  7      
  cmpl %eax, %r8d                        #  1021  0x85222  3      
  movl %eax, 0x7c(%rsp)                  #  1022  0x85225  4      
  xchgw %ax, %ax                         #  1023  0x85229  3      
  jge .L_870c0                           #  1024  0x8522c  6      
  testl %r8d, %r8d                       #  1025  0x85232  3      
  movl %r8d, 0x7c(%rsp)                  #  1026  0x85235  5      
  movq $0x0, 0x90(%rsp)                  #  1027  0x8523a  12     
  cmovnsl %r8d, %r13d                    #  1028  0x85246  4      
  xchgw %ax, %ax                         #  1029  0x8524a  3      
  movl $0x0, 0xac(%rsp)                  #  1030  0x8524d  11     
  movl %r13d, 0x68(%rsp)                 #  1031  0x85258  5      
  jmpq .L_85260                          #  1032  0x8525d  5      
  nop                                    #  1033  0x85262  1      
  movq %r13, 0x60(%rsp)                  #  1034  0x85263  5      
  jmpq .L_856e0                          #  1035  0x85268  5      
  nop                                    #  1036  0x8526d  1      
  nop                                    #  1037  0x8526e  1      
  movq %r13, 0x60(%rsp)                  #  1038  0x8526f  5      
  jmpq .L_854a0                          #  1039  0x85274  5      
  nop                                    #  1040  0x85279  1      
  nop                                    #  1041  0x8527a  1      
  movq %r13, 0x60(%rsp)                  #  1042  0x8527b  5      
  jmpq .L_85580                          #  1043  0x85280  5      
  nop                                    #  1044  0x85285  1      
  nop                                    #  1045  0x85286  1      
.L_85920:                                #        0x85287  0      
  movl 0x70(%rsp), %edi                  #  1046  0x85287  4      
  addl $0x5c, %edi                       #  1047  0x8528b  3      
  nop                                    #  1048  0x8528e  1      
  nop                                    #  1049  0x8528f  1      
  callq .__local_lock_release_recursive  #  1050  0x85290  5      
  jmpq .L_84f20                          #  1051  0x85295  5      
  nop                                    #  1052  0x8529a  1      
  nop                                    #  1053  0x8529b  1      
.L_85960:                                #        0x8529c  0      
  movl 0x198(%rsp), %edx                 #  1054  0x8529c  7      
  testl %edx, %edx                       #  1055  0x852a3  2      
  jne .L_86d20                           #  1056  0x852a5  6      
  xchgw %ax, %ax                         #  1057  0x852ab  3      
  nop                                    #  1058  0x852ae  1      
.L_85980:                                #        0x852af  0      
  movq 0x70(%rsp), %rsi                  #  1059  0x852af  5      
  movl $0x0, 0x194(%rsp)                 #  1060  0x852b4  11     
  movl %esi, %esi                        #  1061  0x852bf  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  1062  0x852c1  6      
  jmpq .L_85a60                          #  1063  0x852c7  5      
  nop                                    #  1064  0x852cc  1      
.L_859a0:                                #        0x852cd  0      
  testl %eax, %eax                       #  1065  0x852cd  2      
  jne .L_85ac0                           #  1066  0x852cf  6      
  testb $0x1, %r12b                      #  1067  0x852d5  4      
  je .L_85ac0                            #  1068  0x852d9  6      
  movq 0xc8(%rsp), %rcx                  #  1069  0x852df  8      
  nop                                    #  1070  0x852e7  1      
  movq %rcx, 0x98(%rsp)                  #  1071  0x852e8  8      
  movl %ecx, %ecx                        #  1072  0x852f0  2      
  movb $0x30, (%r15,%rcx,1)              #  1073  0x852f2  5      
  movl $0x1, 0x7c(%rsp)                  #  1074  0x852f7  8      
  movq 0xb0(%rsp), %rcx                  #  1075  0x852ff  8      
  nop                                    #  1076  0x85307  1      
  jmpq .L_85220                          #  1077  0x85308  5      
  nop                                    #  1078  0x8530d  1      
  nop                                    #  1079  0x8530e  1      
.L_85a00:                                #        0x8530f  0      
  movq 0x70(%rsp), %rsi                  #  1080  0x8530f  5      
  movl %esi, %esi                        #  1081  0x85314  2      
  orw $0x40, 0xc(%r15,%rsi,1)            #  1082  0x85316  7      
  nop                                    #  1083  0x8531d  1      
  nop                                    #  1084  0x8531e  1      
.L_85a20:                                #        0x8531f  0      
  cmpq $0x0, 0x90(%rsp)                  #  1085  0x8531f  9      
  je .L_85fe0                            #  1086  0x85328  6      
  movl 0x90(%rsp), %esi                  #  1087  0x8532e  7      
  movl %r14d, %edi                       #  1088  0x85335  3      
  xchgw %ax, %ax                         #  1089  0x85338  3      
  callq ._free_r                         #  1090  0x8533b  5      
.L_85a40:                                #        0x85340  0      
  movq 0x70(%rsp), %rcx                  #  1091  0x85340  5      
  movl %ecx, %ecx                        #  1092  0x85345  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1093  0x85347  6      
  nop                                    #  1094  0x8534d  1      
  nop                                    #  1095  0x8534e  1      
.L_85a60:                                #        0x8534f  0      
  cwtl                                   #  1096  0x8534f  1      
  testb $0x2, %ah                        #  1097  0x85350  3      
  je .L_85d80                            #  1098  0x85353  6      
  nop                                    #  1099  0x85359  1      
  nop                                    #  1100  0x8535a  1      
.L_85a80:                                #        0x8535b  0      
  testb $0x40, %al                       #  1101  0x8535b  2      
  je .L_84f60                            #  1102  0x8535d  6      
  nop                                    #  1103  0x85363  1      
  nop                                    #  1104  0x85364  1      
.L_85aa0:                                #        0x85365  0      
  movl $0xffffffff, 0x8c(%rsp)           #  1105  0x85365  11     
  jmpq .L_84f60                          #  1106  0x85370  5      
  nop                                    #  1107  0x85375  1      
  nop                                    #  1108  0x85376  1      
.L_85ac0:                                #        0x85377  0      
  movq 0xb8(%rsp), %rsi                  #  1109  0x85377  8      
  movq 0xb0(%rsp), %rcx                  #  1110  0x8537f  8      
  movl $0x0, 0x7c(%rsp)                  #  1111  0x85387  8      
  movq %rsi, 0x98(%rsp)                  #  1112  0x8538f  8      
  jmpq .L_85220                          #  1113  0x85397  5      
  nop                                    #  1114  0x8539c  1      
  nop                                    #  1115  0x8539d  1      
.L_85b00:                                #        0x8539e  0      
  movl 0x88(%rsp), %r13d                 #  1116  0x8539e  8      
  subl 0x68(%rsp), %r13d                 #  1117  0x853a6  5      
  testl %r13d, %r13d                     #  1118  0x853ab  3      
  jle .L_84940                           #  1119  0x853ae  6      
  cmpl $0x10, %r13d                      #  1120  0x853b4  4      
  jle .L_85c00                           #  1121  0x853b8  6      
  leal 0x190(%rsp), %edx                 #  1122  0x853be  7      
  movq %rbx, %rax                        #  1123  0x853c5  3      
  movq 0x70(%rsp), %rbx                  #  1124  0x853c8  5      
  movq %rdx, 0x8(%rsp)                   #  1125  0x853cd  5      
  jmpq .L_85b60                          #  1126  0x853d2  5      
  nop                                    #  1127  0x853d7  1      
.L_85b40:                                #        0x853d8  0      
  subl $0x10, %r13d                      #  1128  0x853d8  4      
  addl $0x8, %eax                        #  1129  0x853dc  3      
  cmpl $0x10, %r13d                      #  1130  0x853df  4      
  jle .L_85be0                           #  1131  0x853e3  6      
  nop                                    #  1132  0x853e9  1      
.L_85b60:                                #        0x853ea  0      
  movl %eax, %eax                        #  1133  0x853ea  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1134  0x853ec  9      
  movl 0x194(%rsp), %edx                 #  1135  0x853f5  7      
  addl $0x10, 0x198(%rsp)                #  1136  0x853fc  8      
  nop                                    #  1137  0x85404  1      
  movl %eax, %eax                        #  1138  0x85405  2      
  movl $0x10024f20, (%r15,%rax,1)        #  1139  0x85407  8      
  addl $0x1, %edx                        #  1140  0x8540f  3      
  cmpl $0x7, %edx                        #  1141  0x85412  3      
  movl %edx, 0x194(%rsp)                 #  1142  0x85415  7      
  jle .L_85b40                           #  1143  0x8541c  6      
  movl 0x8(%rsp), %edx                   #  1144  0x85422  4      
  movl %ebx, %esi                        #  1145  0x85426  2      
  nop                                    #  1146  0x85428  1      
  movl %r14d, %edi                       #  1147  0x85429  3      
  nop                                    #  1148  0x8542c  1      
  nop                                    #  1149  0x8542d  1      
  callq .__sprint_r                      #  1150  0x8542e  5      
  testl %eax, %eax                       #  1151  0x85433  2      
  jne .L_85a20                           #  1152  0x85435  6      
  subl $0x10, %r13d                      #  1153  0x8543b  4      
  leal 0x150(%rsp), %eax                 #  1154  0x8543f  7      
  cmpl $0x10, %r13d                      #  1155  0x85446  4      
  jg .L_85b60                            #  1156  0x8544a  6      
  nop                                    #  1157  0x85450  1      
.L_85be0:                                #        0x85451  0      
  movq %rax, %rbx                        #  1158  0x85451  3      
  nop                                    #  1159  0x85454  1      
  nop                                    #  1160  0x85455  1      
.L_85c00:                                #        0x85456  0      
  movl %ebx, %ebx                        #  1161  0x85456  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  1162  0x85458  5      
  movl 0x194(%rsp), %eax                 #  1163  0x8545d  7      
  addl %r13d, 0x198(%rsp)                #  1164  0x85464  8      
  movl %ebx, %ebx                        #  1165  0x8546c  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  1166  0x8546e  8      
  addl $0x1, %eax                        #  1167  0x85476  3      
  cmpl $0x7, %eax                        #  1168  0x85479  3      
  movl %eax, 0x194(%rsp)                 #  1169  0x8547c  7      
  jg .L_86340                            #  1170  0x85483  6      
  addl $0x8, %ebx                        #  1171  0x85489  3      
  jmpq .L_84940                          #  1172  0x8548c  5      
  nop                                    #  1173  0x85491  1      
.L_85c40:                                #        0x85492  0      
  movl 0x70(%rsp), %esi                  #  1174  0x85492  4      
  leal 0x190(%rsp), %edx                 #  1175  0x85496  7      
  movl %r14d, %edi                       #  1176  0x8549d  3      
  nop                                    #  1177  0x854a0  1      
  callq .__sprint_r                      #  1178  0x854a1  5      
  testl %eax, %eax                       #  1179  0x854a6  2      
  jne .L_85a20                           #  1180  0x854a8  6      
  leal 0x150(%rsp), %ebx                 #  1181  0x854ae  7      
  jmpq .L_84ac0                          #  1182  0x854b5  5      
  nop                                    #  1183  0x854ba  1      
.L_85c80:                                #        0x854bb  0      
  movl 0x70(%rsp), %esi                  #  1184  0x854bb  4      
  leal 0x190(%rsp), %edx                 #  1185  0x854bf  7      
  movl %r14d, %edi                       #  1186  0x854c6  3      
  nop                                    #  1187  0x854c9  1      
  callq .__sprint_r                      #  1188  0x854ca  5      
  testl %eax, %eax                       #  1189  0x854cf  2      
  je .L_84ca0                            #  1190  0x854d1  6      
  jmpq .L_85a20                          #  1191  0x854d7  5      
  nop                                    #  1192  0x854dc  1      
  nop                                    #  1193  0x854dd  1      
.L_85cc0:                                #        0x854de  0      
  movl 0x70(%rsp), %esi                  #  1194  0x854de  4      
  leal 0x190(%rsp), %edx                 #  1195  0x854e2  7      
  movl %r14d, %edi                       #  1196  0x854e9  3      
  nop                                    #  1197  0x854ec  1      
  callq .__sprint_r                      #  1198  0x854ed  5      
  testl %eax, %eax                       #  1199  0x854f2  2      
  jne .L_85a20                           #  1200  0x854f4  6      
  leal 0x150(%rsp), %ebx                 #  1201  0x854fa  7      
  jmpq .L_84a80                          #  1202  0x85501  5      
  nop                                    #  1203  0x85506  1      
.L_85d00:                                #        0x85507  0      
  movl 0x70(%rsp), %esi                  #  1204  0x85507  4      
  leal 0x190(%rsp), %edx                 #  1205  0x8550b  7      
  movl %r14d, %edi                       #  1206  0x85512  3      
  nop                                    #  1207  0x85515  1      
  callq .__sprint_r                      #  1208  0x85516  5      
  testl %eax, %eax                       #  1209  0x8551b  2      
  jne .L_85a20                           #  1210  0x8551d  6      
  leal 0x150(%rsp), %ebx                 #  1211  0x85523  7      
  jmpq .L_848c0                          #  1212  0x8552a  5      
  nop                                    #  1213  0x8552f  1      
.L_85d40:                                #        0x85530  0      
  movl 0x70(%rsp), %esi                  #  1214  0x85530  4      
  leal 0x190(%rsp), %edx                 #  1215  0x85534  7      
  movl %r14d, %edi                       #  1216  0x8553b  3      
  nop                                    #  1217  0x8553e  1      
  callq .__sprint_r                      #  1218  0x8553f  5      
  testl %eax, %eax                       #  1219  0x85544  2      
  jne .L_85a20                           #  1220  0x85546  6      
  leal 0x150(%rsp), %ebx                 #  1221  0x8554c  7      
  jmpq .L_84920                          #  1222  0x85553  5      
  nop                                    #  1223  0x85558  1      
.L_85d80:                                #        0x85559  0      
  movl 0x70(%rsp), %edi                  #  1224  0x85559  4      
  addl $0x5c, %edi                       #  1225  0x8555d  3      
  nop                                    #  1226  0x85560  1      
  nop                                    #  1227  0x85561  1      
  callq .__local_lock_release_recursive  #  1228  0x85562  5      
  movq 0x70(%rsp), %rsi                  #  1229  0x85567  5      
  movl %esi, %esi                        #  1230  0x8556c  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1231  0x8556e  6      
  jmpq .L_85a80                          #  1232  0x85574  5      
  nop                                    #  1233  0x85579  1      
.L_85dc0:                                #        0x8557a  0      
  movq 0xb8(%rsp), %rax                  #  1234  0x8557a  8      
  movq 0xc0(%rsp), %rcx                  #  1235  0x85582  8      
  movq %rax, 0x98(%rsp)                  #  1236  0x8558a  8      
  nop                                    #  1237  0x85592  1      
.L_85de0:                                #        0x85593  0      
  movl %r13d, %edx                       #  1238  0x85593  3      
  shrq $0x4, %r13                        #  1239  0x85596  4      
  subl $0x1, %eax                        #  1240  0x8559a  3      
  andl $0xf, %edx                        #  1241  0x8559d  3      
  addl %ecx, %edx                        #  1242  0x855a0  2      
  testq %r13, %r13                       #  1243  0x855a2  3      
  movl %edx, %edx                        #  1244  0x855a5  2      
  movzbl (%r15,%rdx,1), %edx             #  1245  0x855a7  5      
  movl %eax, %eax                        #  1246  0x855ac  2      
  movb %dl, (%r15,%rax,1)                #  1247  0x855ae  4      
  nop                                    #  1248  0x855b2  1      
  jne .L_85de0                           #  1249  0x855b3  6      
  movl 0xb8(%rsp), %edx                  #  1250  0x855b9  7      
  movq %rax, 0x98(%rsp)                  #  1251  0x855c0  8      
  movq 0xb0(%rsp), %rcx                  #  1252  0x855c8  8      
  subl %eax, %edx                        #  1253  0x855d0  2      
  movl %edx, 0x7c(%rsp)                  #  1254  0x855d2  4      
  nop                                    #  1255  0x855d6  1      
  jmpq .L_85220                          #  1256  0x855d7  5      
  nop                                    #  1257  0x855dc  1      
  nop                                    #  1258  0x855dd  1      
.L_85e40:                                #        0x855de  0      
  cmpq $0x9, %r13                        #  1259  0x855de  4      
  ja .L_86000                            #  1260  0x855e2  6      
  movq 0xc8(%rsp), %rcx                  #  1261  0x855e8  8      
  addl $0x30, %r13d                      #  1262  0x855f0  4      
  movq %rcx, 0x98(%rsp)                  #  1263  0x855f4  8      
  xchgw %ax, %ax                         #  1264  0x855fc  3      
  movl %ecx, %ecx                        #  1265  0x855ff  2      
  movb %r13b, (%r15,%rcx,1)              #  1266  0x85601  4      
  movl $0x1, 0x7c(%rsp)                  #  1267  0x85605  8      
  movq 0xb0(%rsp), %rcx                  #  1268  0x8560d  8      
  jmpq .L_85220                          #  1269  0x85615  5      
  nop                                    #  1270  0x8561a  1      
.L_85e80:                                #        0x8561b  0      
  testb $0x10, %r12b                     #  1271  0x8561b  4      
  je .L_866c0                            #  1272  0x8561f  6      
  movq 0x80(%rsp), %rdx                  #  1273  0x85625  8      
  movl %edx, %edx                        #  1274  0x8562d  2      
  movl (%r15,%rdx,1), %eax               #  1275  0x8562f  4      
  cmpl $0x2f, %eax                       #  1276  0x85633  3      
  nop                                    #  1277  0x85636  1      
  ja .L_86ba0                            #  1278  0x85637  6      
  movq %rdx, %rcx                        #  1279  0x8563d  3      
  movl %edx, %edx                        #  1280  0x85640  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1281  0x85642  5      
  addl %eax, %edx                        #  1282  0x85647  2      
  addl $0x8, %eax                        #  1283  0x85649  3      
  movl %ecx, %ecx                        #  1284  0x8564c  2      
  movl %eax, (%r15,%rcx,1)               #  1285  0x8564e  4      
  nop                                    #  1286  0x85652  1      
.L_85ec0:                                #        0x85653  0      
  movl %edx, %edx                        #  1287  0x85653  2      
  movslq (%r15,%rdx,1), %r13             #  1288  0x85655  4      
  jmpq .L_85500                          #  1289  0x85659  5      
  nop                                    #  1290  0x8565e  1      
  nop                                    #  1291  0x8565f  1      
.L_85ee0:                                #        0x85660  0      
  testb $0x10, %r12b                     #  1292  0x85660  4      
  je .L_864c0                            #  1293  0x85664  6      
  movq 0x80(%rsp), %rdx                  #  1294  0x8566a  8      
  movl %edx, %edx                        #  1295  0x85672  2      
  movl (%r15,%rdx,1), %eax               #  1296  0x85674  4      
  cmpl $0x2f, %eax                       #  1297  0x85678  3      
  nop                                    #  1298  0x8567b  1      
  ja .L_86b40                            #  1299  0x8567c  6      
  movq %rdx, %rcx                        #  1300  0x85682  3      
  movl %edx, %edx                        #  1301  0x85685  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1302  0x85687  5      
  addl %eax, %edx                        #  1303  0x8568c  2      
  addl $0x8, %eax                        #  1304  0x8568e  3      
  movl %ecx, %ecx                        #  1305  0x85691  2      
  movl %eax, (%r15,%rcx,1)               #  1306  0x85693  4      
  nop                                    #  1307  0x85697  1      
.L_85f20:                                #        0x85698  0      
  movl %edx, %edx                        #  1308  0x85698  2      
  movl (%r15,%rdx,1), %r13d              #  1309  0x8569a  4      
  movl $0x1, %eax                        #  1310  0x8569e  5      
  testq %r13, %r13                       #  1311  0x856a3  3      
  setne %dl                              #  1312  0x856a6  3      
  jmpq .L_85160                          #  1313  0x856a9  5      
  nop                                    #  1314  0x856ae  1      
.L_85f40:                                #        0x856af  0      
  testb $0x10, %r12b                     #  1315  0x856af  4      
  je .L_86540                            #  1316  0x856b3  6      
  movq 0x80(%rsp), %rdx                  #  1317  0x856b9  8      
  movl %edx, %edx                        #  1318  0x856c1  2      
  movl (%r15,%rdx,1), %eax               #  1319  0x856c3  4      
  cmpl $0x2f, %eax                       #  1320  0x856c7  3      
  nop                                    #  1321  0x856ca  1      
  jbe .L_86bc0                           #  1322  0x856cb  6      
  movq 0x80(%rsp), %rsi                  #  1323  0x856d1  8      
  movl %esi, %esi                        #  1324  0x856d9  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1325  0x856db  5      
  leal 0x8(%rdx), %eax                   #  1326  0x856e0  3      
  movl %esi, %esi                        #  1327  0x856e3  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1328  0x856e5  5      
  nop                                    #  1329  0x856ea  1      
.L_85f80:                                #        0x856eb  0      
  movl %edx, %edx                        #  1330  0x856eb  2      
  movl (%r15,%rdx,1), %r13d              #  1331  0x856ed  4      
  jmpq .L_855e0                          #  1332  0x856f1  5      
  nop                                    #  1333  0x856f6  1      
  nop                                    #  1334  0x856f7  1      
.L_85fa0:                                #        0x856f8  0      
  movl 0x70(%rsp), %esi                  #  1335  0x856f8  4      
  leal 0x190(%rsp), %edx                 #  1336  0x856fc  7      
  movl %r14d, %edi                       #  1337  0x85703  3      
  nop                                    #  1338  0x85706  1      
  callq .__sprint_r                      #  1339  0x85707  5      
  testl %eax, %eax                       #  1340  0x8570c  2      
  jne .L_85a20                           #  1341  0x8570e  6      
  leal 0x150(%rsp), %ebx                 #  1342  0x85714  7      
  jmpq .L_84860                          #  1343  0x8571b  5      
  nop                                    #  1344  0x85720  1      
.L_85fe0:                                #        0x85721  0      
  movq 0x70(%rsp), %rdx                  #  1345  0x85721  5      
  movl %edx, %edx                        #  1346  0x85726  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  1347  0x85728  6      
  jmpq .L_85a60                          #  1348  0x8572e  5      
  nop                                    #  1349  0x85733  1      
.L_86000:                                #        0x85734  0      
  movl 0xd4(%rsp), %r11d                 #  1350  0x85734  8      
  movq 0xb8(%rsp), %rsi                  #  1351  0x8573c  8      
  movl %r12d, %r10d                      #  1352  0x85744  3      
  movl %r8d, 0x68(%rsp)                  #  1353  0x85747  5      
  movl %r12d, %r8d                       #  1354  0x8574c  3      
  nop                                    #  1355  0x8574f  1      
  movq 0xb0(%rsp), %r12                  #  1356  0x85750  8      
  andl $0x400, %r10d                     #  1357  0x85758  7      
  movq $0xcccccccccccccccd, %r9          #  1358  0x8575f  10     
  negl %r11d                             #  1359  0x85769  3      
  nop                                    #  1360  0x8576c  1      
  movq %rsi, 0x98(%rsp)                  #  1361  0x8576d  8      
  xorl %esi, %esi                        #  1362  0x85775  2      
  movl %r11d, 0x7c(%rsp)                 #  1363  0x85777  5      
  movq %rbx, %r11                        #  1364  0x8577c  3      
  movq 0x98(%rsp), %rbx                  #  1365  0x8577f  8      
  nop                                    #  1366  0x85787  1      
.L_86060:                                #        0x85788  0      
  movq %r13, %rax                        #  1367  0x85788  3      
  subl $0x1, %ebx                        #  1368  0x8578b  3      
  mulq %r9                               #  1369  0x8578e  3      
  shrq $0x3, %rdx                        #  1370  0x85791  4      
  leaq (%rdx,%rdx,4), %rax               #  1371  0x85795  4      
  movq %r13, %rdx                        #  1372  0x85799  3      
  addq %rax, %rax                        #  1373  0x8579c  3      
  subq %rax, %rdx                        #  1374  0x8579f  3      
  movq %rdx, %rax                        #  1375  0x857a2  3      
  addl $0x30, %eax                       #  1376  0x857a5  3      
  testl %r10d, %r10d                     #  1377  0x857a8  3      
  movl %ebx, %ebx                        #  1378  0x857ab  2      
  movb %al, (%r15,%rbx,1)                #  1379  0x857ad  4      
  leal 0x1(%rsi), %eax                   #  1380  0x857b1  3      
  je .L_860c0                            #  1381  0x857b4  6      
  movl %r12d, %r12d                      #  1382  0x857ba  3      
  movzbl (%r15,%r12,1), %edx             #  1383  0x857bd  5      
  movsbl %dl, %esi                       #  1384  0x857c2  3      
  cmpl %eax, %esi                        #  1385  0x857c5  2      
  nop                                    #  1386  0x857c7  1      
  je .L_86120                            #  1387  0x857c8  6      
  nop                                    #  1388  0x857ce  1      
  nop                                    #  1389  0x857cf  1      
.L_860c0:                                #        0x857d0  0      
  movl %eax, %esi                        #  1390  0x857d0  2      
  nop                                    #  1391  0x857d2  1      
  nop                                    #  1392  0x857d3  1      
.L_860e0:                                #        0x857d4  0      
  movq %r12, %rcx                        #  1393  0x857d4  3      
  nop                                    #  1394  0x857d7  1      
  nop                                    #  1395  0x857d8  1      
.L_86100:                                #        0x857d9  0      
  movq %r13, %rax                        #  1396  0x857d9  3      
  mulq %r9                               #  1397  0x857dc  3      
  movq %rdx, %r13                        #  1398  0x857df  3      
  shrq $0x3, %r13                        #  1399  0x857e2  4      
  testq %r13, %r13                       #  1400  0x857e6  3      
  je .L_861a0                            #  1401  0x857e9  6      
  movq %rcx, %r12                        #  1402  0x857ef  3      
  jmpq .L_86060                          #  1403  0x857f2  5      
  xchgw %ax, %ax                         #  1404  0x857f7  3      
.L_86120:                                #        0x857fa  0      
  cmpb $0x7f, %dl                        #  1405  0x857fa  3      
  je .L_860e0                            #  1406  0x857fd  6      
  cmpq $0x9, %r13                        #  1407  0x85803  4      
  jbe .L_860e0                           #  1408  0x85807  6      
  addl 0x7c(%rsp), %ebx                  #  1409  0x8580d  4      
  movl 0xd8(%rsp), %esi                  #  1410  0x85811  7      
  movl 0xd4(%rsp), %edx                  #  1411  0x85818  7      
  nop                                    #  1412  0x8581f  1      
  movl %r8d, 0x40(%rsp)                  #  1413  0x85820  5      
  movq %r9, 0x58(%rsp)                   #  1414  0x85825  5      
  movl %r10d, 0x50(%rsp)                 #  1415  0x8582a  5      
  movq %r11, 0x48(%rsp)                  #  1416  0x8582f  5      
  movl %ebx, %edi                        #  1417  0x85834  2      
  nop                                    #  1418  0x85836  1      
  callq .strncpy                         #  1419  0x85837  5      
  leal 0x1(%r12), %ecx                   #  1420  0x8583c  5      
  xorl %esi, %esi                        #  1421  0x85841  2      
  movl 0x40(%rsp), %r8d                  #  1422  0x85843  5      
  movq 0x58(%rsp), %r9                   #  1423  0x85848  5      
  movl 0x50(%rsp), %r10d                 #  1424  0x8584d  5      
  movl %ecx, %ecx                        #  1425  0x85852  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1426  0x85854  5      
  nop                                    #  1427  0x85859  1      
  movq 0x48(%rsp), %r11                  #  1428  0x8585a  5      
  jne .L_86100                           #  1429  0x8585f  6      
  jmpq .L_860e0                          #  1430  0x85865  5      
  nop                                    #  1431  0x8586a  1      
  nop                                    #  1432  0x8586b  1      
.L_861a0:                                #        0x8586c  0      
  movq %rbx, 0x98(%rsp)                  #  1433  0x8586c  8      
  movl 0xb8(%rsp), %esi                  #  1434  0x85874  7      
  movl %r8d, %r12d                       #  1435  0x8587b  3      
  subl 0x98(%rsp), %esi                  #  1436  0x8587e  7      
  movl 0x68(%rsp), %r8d                  #  1437  0x85885  5      
  xchgw %ax, %ax                         #  1438  0x8588a  3      
  movq %r11, %rbx                        #  1439  0x8588d  3      
  movl %esi, 0x7c(%rsp)                  #  1440  0x85890  4      
  jmpq .L_85220                          #  1441  0x85894  5      
  nop                                    #  1442  0x85899  1      
  nop                                    #  1443  0x8589a  1      
.L_861e0:                                #        0x8589b  0      
  leal 0x1b0(%rsp), %r13d                #  1444  0x8589b  8      
  xorl %esi, %esi                        #  1445  0x858a3  2      
  movl $0x8, %edx                        #  1446  0x858a5  5      
  movl %r13d, %edi                       #  1447  0x858aa  3      
  nop                                    #  1448  0x858ad  1      
  callq .memset                          #  1449  0x858ae  5      
  movq 0x80(%rsp), %rsi                  #  1450  0x858b3  8      
  movl %esi, %esi                        #  1451  0x858bb  2      
  movl (%r15,%rsi,1), %edx               #  1452  0x858bd  4      
  cmpl $0x2f, %edx                       #  1453  0x858c1  3      
  ja .L_86980                            #  1454  0x858c4  6      
  movl %esi, %esi                        #  1455  0x858ca  2      
  movl 0xc(%r15,%rsi,1), %eax            #  1456  0x858cc  5      
  addl %edx, %eax                        #  1457  0x858d1  2      
  addl $0x8, %edx                        #  1458  0x858d3  3      
  movl %esi, %esi                        #  1459  0x858d6  2      
  movl %edx, (%r15,%rsi,1)               #  1460  0x858d8  4      
  nop                                    #  1461  0x858dc  1      
  nop                                    #  1462  0x858dd  1      
.L_86240:                                #        0x858de  0      
  movl %eax, %eax                        #  1463  0x858de  2      
  movl (%r15,%rax,1), %edx               #  1464  0x858e0  4      
  movl 0x28(%rsp), %esi                  #  1465  0x858e4  4      
  movl %r13d, %ecx                       #  1466  0x858e8  3      
  movl %r14d, %edi                       #  1467  0x858eb  3      
  nop                                    #  1468  0x858ee  1      
  callq ._wcrtomb_r                      #  1469  0x858ef  5      
  cmpl $0xffffffff, %eax                 #  1470  0x858f4  5      
  movl %eax, 0x7c(%rsp)                  #  1471  0x858f9  4      
  je .L_87240                            #  1472  0x858fd  6      
  nop                                    #  1473  0x85903  1      
  nop                                    #  1474  0x85904  1      
.L_86280:                                #        0x85905  0      
  movl 0x7c(%rsp), %r8d                  #  1475  0x85905  5      
  movl $0x0, %eax                        #  1476  0x8590a  5      
  leal 0xe0(%rsp), %edx                  #  1477  0x8590f  7      
  movb $0x0, 0x1df(%rsp)                 #  1478  0x85916  8      
  nop                                    #  1479  0x8591e  1      
  movq %rdx, 0x98(%rsp)                  #  1480  0x8591f  8      
  testl %r8d, %r8d                       #  1481  0x85927  3      
  cmovnsl 0x7c(%rsp), %eax               #  1482  0x8592a  5      
  movl %eax, 0x68(%rsp)                  #  1483  0x8592f  4      
  jmpq .L_846c0                          #  1484  0x85933  5      
  nop                                    #  1485  0x85938  1      
.L_862c0:                                #        0x85939  0      
  cmpb $0x30, %al                        #  1486  0x85939  2      
  je .L_86dc0                            #  1487  0x8593b  6      
  movl 0x98(%rsp), %eax                  #  1488  0x85941  7      
  subl $0x1, %eax                        #  1489  0x85948  3      
  movq %rax, 0x98(%rsp)                  #  1490  0x8594b  8      
  nop                                    #  1491  0x85953  1      
  movl %eax, %eax                        #  1492  0x85954  2      
  movb $0x30, (%r15,%rax,1)              #  1493  0x85956  5      
  movl 0xb8(%rsp), %edx                  #  1494  0x8595b  7      
  movq 0xb0(%rsp), %rcx                  #  1495  0x85962  8      
  subl %eax, %edx                        #  1496  0x8596a  2      
  movl %edx, 0x7c(%rsp)                  #  1497  0x8596c  4      
  nop                                    #  1498  0x85970  1      
  jmpq .L_85220                          #  1499  0x85971  5      
  nop                                    #  1500  0x85976  1      
  nop                                    #  1501  0x85977  1      
.L_86320:                                #        0x85978  0      
  negq %r13                              #  1502  0x85978  3      
  movb $0x2d, 0x1df(%rsp)                #  1503  0x8597b  8      
  movl $0x1, %eax                        #  1504  0x85983  5      
  setne %dl                              #  1505  0x85988  3      
  jmpq .L_85180                          #  1506  0x8598b  5      
  nop                                    #  1507  0x85990  1      
.L_86340:                                #        0x85991  0      
  movl 0x70(%rsp), %esi                  #  1508  0x85991  4      
  leal 0x190(%rsp), %edx                 #  1509  0x85995  7      
  movl %r14d, %edi                       #  1510  0x8599c  3      
  nop                                    #  1511  0x8599f  1      
  callq .__sprint_r                      #  1512  0x859a0  5      
  testl %eax, %eax                       #  1513  0x859a5  2      
  jne .L_85a20                           #  1514  0x859a7  6      
  leal 0x150(%rsp), %ebx                 #  1515  0x859ad  7      
  jmpq .L_84940                          #  1516  0x859b4  5      
  nop                                    #  1517  0x859b9  1      
.L_86380:                                #        0x859ba  0      
  movq 0x80(%rsp), %rsi                  #  1518  0x859ba  8      
  movl %esi, %esi                        #  1519  0x859c2  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1520  0x859c4  5      
  leal 0x8(%rdx), %eax                   #  1521  0x859c9  3      
  movl %esi, %esi                        #  1522  0x859cc  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1523  0x859ce  5      
  jmpq .L_85720                          #  1524  0x859d3  5      
  xchgw %ax, %ax                         #  1525  0x859d8  3      
.L_863a0:                                #        0x859db  0      
  testb $0x40, %r12b                     #  1526  0x859db  4      
  jne .L_86be0                           #  1527  0x859df  6      
  testl $0x200, %r12d                    #  1528  0x859e5  7      
  je .L_86f00                            #  1529  0x859ec  6      
  movq 0x80(%rsp), %rdx                  #  1530  0x859f2  8      
  nop                                    #  1531  0x859fa  1      
  movl %edx, %edx                        #  1532  0x859fb  2      
  movl (%r15,%rdx,1), %ecx               #  1533  0x859fd  4      
  cmpl $0x2f, %ecx                       #  1534  0x85a01  3      
  ja .L_871c0                            #  1535  0x85a04  6      
  movq %rdx, %rsi                        #  1536  0x85a0a  3      
  movl %edx, %edx                        #  1537  0x85a0d  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1538  0x85a0f  5      
  addl %ecx, %edx                        #  1539  0x85a14  2      
  addl $0x8, %ecx                        #  1540  0x85a16  3      
  xchgw %ax, %ax                         #  1541  0x85a19  3      
  movl %esi, %esi                        #  1542  0x85a1c  2      
  movl %ecx, (%r15,%rsi,1)               #  1543  0x85a1e  4      
  nop                                    #  1544  0x85a22  1      
  nop                                    #  1545  0x85a23  1      
.L_86400:                                #        0x85a24  0      
  movl %edx, %edx                        #  1546  0x85a24  2      
  movzbl (%r15,%rdx,1), %r13d            #  1547  0x85a26  5      
  jmpq .L_85300                          #  1548  0x85a2b  5      
  nop                                    #  1549  0x85a30  1      
  nop                                    #  1550  0x85a31  1      
.L_86420:                                #        0x85a32  0      
  movq 0x80(%rsp), %rdx                  #  1551  0x85a32  8      
  movq 0x80(%rsp), %rsi                  #  1552  0x85a3a  8      
  movl %edx, %edx                        #  1553  0x85a42  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1554  0x85a44  5      
  leal 0x8(%rcx), %edx                   #  1555  0x85a49  3      
  nop                                    #  1556  0x85a4c  1      
  movl %esi, %esi                        #  1557  0x85a4d  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1558  0x85a4f  5      
  jmpq .L_852e0                          #  1559  0x85a54  5      
  nop                                    #  1560  0x85a59  1      
  nop                                    #  1561  0x85a5a  1      
.L_86460:                                #        0x85a5b  0      
  movq 0x80(%rsp), %rax                  #  1562  0x85a5b  8      
  movq 0x80(%rsp), %rcx                  #  1563  0x85a63  8      
  movl %eax, %eax                        #  1564  0x85a6b  2      
  movl 0x8(%r15,%rax,1), %edx            #  1565  0x85a6d  5      
  leal 0x8(%rdx), %eax                   #  1566  0x85a72  3      
  nop                                    #  1567  0x85a75  1      
  movl %ecx, %ecx                        #  1568  0x85a76  2      
  movl %eax, 0x8(%r15,%rcx,1)            #  1569  0x85a78  5      
  jmpq .L_84e60                          #  1570  0x85a7d  5      
  nop                                    #  1571  0x85a82  1      
  nop                                    #  1572  0x85a83  1      
.L_864a0:                                #        0x85a84  0      
  movq 0x80(%rsp), %rsi                  #  1573  0x85a84  8      
  movl %esi, %esi                        #  1574  0x85a8c  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1575  0x85a8e  5      
  leal 0x8(%rdx), %eax                   #  1576  0x85a93  3      
  movl %esi, %esi                        #  1577  0x85a96  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1578  0x85a98  5      
  jmpq .L_855c0                          #  1579  0x85a9d  5      
  xchgw %ax, %ax                         #  1580  0x85aa2  3      
.L_864c0:                                #        0x85aa5  0      
  testb $0x40, %r12b                     #  1581  0x85aa5  4      
  jne .L_86c40                           #  1582  0x85aa9  6      
  testl $0x200, %r12d                    #  1583  0x85aaf  7      
  je .L_86e40                            #  1584  0x85ab6  6      
  movq 0x80(%rsp), %rax                  #  1585  0x85abc  8      
  nop                                    #  1586  0x85ac4  1      
  movl %eax, %eax                        #  1587  0x85ac5  2      
  movl (%r15,%rax,1), %edx               #  1588  0x85ac7  4      
  cmpl $0x2f, %edx                       #  1589  0x85acb  3      
  ja .L_87280                            #  1590  0x85ace  6      
  movq %rax, %rcx                        #  1591  0x85ad4  3      
  movl %eax, %eax                        #  1592  0x85ad7  2      
  movl 0xc(%r15,%rax,1), %eax            #  1593  0x85ad9  5      
  addl %edx, %eax                        #  1594  0x85ade  2      
  addl $0x8, %edx                        #  1595  0x85ae0  3      
  xchgw %ax, %ax                         #  1596  0x85ae3  3      
  movl %ecx, %ecx                        #  1597  0x85ae6  2      
  movl %edx, (%r15,%rcx,1)               #  1598  0x85ae8  4      
  nop                                    #  1599  0x85aec  1      
  nop                                    #  1600  0x85aed  1      
.L_86520:                                #        0x85aee  0      
  movl %eax, %eax                        #  1601  0x85aee  2      
  movzbl (%r15,%rax,1), %r13d            #  1602  0x85af0  5      
  movl $0x1, %eax                        #  1603  0x85af5  5      
  testq %r13, %r13                       #  1604  0x85afa  3      
  setne %dl                              #  1605  0x85afd  3      
  jmpq .L_85160                          #  1606  0x85b00  5      
  nop                                    #  1607  0x85b05  1      
.L_86540:                                #        0x85b06  0      
  testb $0x40, %r12b                     #  1608  0x85b06  4      
  jne .L_86a60                           #  1609  0x85b0a  6      
  testl $0x200, %r12d                    #  1610  0x85b10  7      
  je .L_86f60                            #  1611  0x85b17  6      
  movq 0x80(%rsp), %rax                  #  1612  0x85b1d  8      
  nop                                    #  1613  0x85b25  1      
  movl %eax, %eax                        #  1614  0x85b26  2      
  movl (%r15,%rax,1), %edx               #  1615  0x85b28  4      
  cmpl $0x2f, %edx                       #  1616  0x85b2c  3      
  ja .L_87320                            #  1617  0x85b2f  6      
  movq %rax, %rcx                        #  1618  0x85b35  3      
  movl %eax, %eax                        #  1619  0x85b38  2      
  movl 0xc(%r15,%rax,1), %eax            #  1620  0x85b3a  5      
  addl %edx, %eax                        #  1621  0x85b3f  2      
  addl $0x8, %edx                        #  1622  0x85b41  3      
  xchgw %ax, %ax                         #  1623  0x85b44  3      
  movl %ecx, %ecx                        #  1624  0x85b47  2      
  movl %edx, (%r15,%rcx,1)               #  1625  0x85b49  4      
  nop                                    #  1626  0x85b4d  1      
  nop                                    #  1627  0x85b4e  1      
.L_865a0:                                #        0x85b4f  0      
  movl %eax, %eax                        #  1628  0x85b4f  2      
  movzbl (%r15,%rax,1), %r13d            #  1629  0x85b51  5      
  jmpq .L_855e0                          #  1630  0x85b56  5      
  nop                                    #  1631  0x85b5b  1      
  nop                                    #  1632  0x85b5c  1      
.L_865c0:                                #        0x85b5d  0      
  movq 0x80(%rsp), %rsi                  #  1633  0x85b5d  8      
  movl %esi, %esi                        #  1634  0x85b65  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1635  0x85b67  5      
  leal 0x8(%rdx), %eax                   #  1636  0x85b6c  3      
  movl %esi, %esi                        #  1637  0x85b6f  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1638  0x85b71  5      
  jmpq .L_854e0                          #  1639  0x85b76  5      
  xchgw %ax, %ax                         #  1640  0x85b7b  3      
.L_865e0:                                #        0x85b7e  0      
  testb $0x10, %r12b                     #  1641  0x85b7e  4      
  jne .L_86ac0                           #  1642  0x85b82  6      
  testb $0x40, %r12b                     #  1643  0x85b88  4      
  je .L_86fc0                            #  1644  0x85b8c  6      
  movq 0x80(%rsp), %rcx                  #  1645  0x85b92  8      
  nop                                    #  1646  0x85b9a  1      
  movl %ecx, %ecx                        #  1647  0x85b9b  2      
  movl (%r15,%rcx,1), %edx               #  1648  0x85b9d  4      
  cmpl $0x2f, %edx                       #  1649  0x85ba1  3      
  ja .L_872e0                            #  1650  0x85ba4  6      
  movl %ecx, %ecx                        #  1651  0x85baa  2      
  movl 0xc(%r15,%rcx,1), %eax            #  1652  0x85bac  5      
  addl %edx, %eax                        #  1653  0x85bb1  2      
  addl $0x8, %edx                        #  1654  0x85bb3  3      
  nop                                    #  1655  0x85bb6  1      
  movl %ecx, %ecx                        #  1656  0x85bb7  2      
  movl %edx, (%r15,%rcx,1)               #  1657  0x85bb9  4      
  nop                                    #  1658  0x85bbd  1      
  nop                                    #  1659  0x85bbe  1      
.L_86640:                                #        0x85bbf  0      
  movl %eax, %eax                        #  1660  0x85bbf  2      
  movl (%r15,%rax,1), %eax               #  1661  0x85bc1  4      
  movzwl 0x8c(%rsp), %edx                #  1662  0x85bc5  8      
  movl %eax, %eax                        #  1663  0x85bcd  2      
  movw %dx, (%r15,%rax,1)                #  1664  0x85bcf  5      
  jmpq .L_84480                          #  1665  0x85bd4  5      
  nop                                    #  1666  0x85bd9  1      
.L_86660:                                #        0x85bda  0      
  movq 0x80(%rsp), %rdx                  #  1667  0x85bda  8      
  movq 0x80(%rsp), %rsi                  #  1668  0x85be2  8      
  movl %edx, %edx                        #  1669  0x85bea  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1670  0x85bec  5      
  leal 0x8(%rcx), %edx                   #  1671  0x85bf1  3      
  nop                                    #  1672  0x85bf4  1      
  movl %esi, %esi                        #  1673  0x85bf5  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1674  0x85bf7  5      
  jmpq .L_85800                          #  1675  0x85bfc  5      
  nop                                    #  1676  0x85c01  1      
  nop                                    #  1677  0x85c02  1      
.L_866a0:                                #        0x85c03  0      
  movq 0x80(%rsp), %rsi                  #  1678  0x85c03  8      
  movl %esi, %esi                        #  1679  0x85c0b  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1680  0x85c0d  5      
  leal 0x8(%rdx), %eax                   #  1681  0x85c12  3      
  movl %esi, %esi                        #  1682  0x85c15  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1683  0x85c17  5      
  jmpq .L_85120                          #  1684  0x85c1c  5      
  xchgw %ax, %ax                         #  1685  0x85c21  3      
.L_866c0:                                #        0x85c24  0      
  testb $0x40, %r12b                     #  1686  0x85c24  4      
  jne .L_86a00                           #  1687  0x85c28  6      
  testl $0x200, %r12d                    #  1688  0x85c2e  7      
  je .L_87020                            #  1689  0x85c35  6      
  movq 0x80(%rsp), %rax                  #  1690  0x85c3b  8      
  nop                                    #  1691  0x85c43  1      
  movl %eax, %eax                        #  1692  0x85c44  2      
  movl (%r15,%rax,1), %edx               #  1693  0x85c46  4      
  cmpl $0x2f, %edx                       #  1694  0x85c4a  3      
  ja .L_872a0                            #  1695  0x85c4d  6      
  movq %rax, %rcx                        #  1696  0x85c53  3      
  movl %eax, %eax                        #  1697  0x85c56  2      
  movl 0xc(%r15,%rax,1), %eax            #  1698  0x85c58  5      
  addl %edx, %eax                        #  1699  0x85c5d  2      
  addl $0x8, %edx                        #  1700  0x85c5f  3      
  xchgw %ax, %ax                         #  1701  0x85c62  3      
  movl %ecx, %ecx                        #  1702  0x85c65  2      
  movl %edx, (%r15,%rcx,1)               #  1703  0x85c67  4      
  nop                                    #  1704  0x85c6b  1      
  nop                                    #  1705  0x85c6c  1      
.L_86720:                                #        0x85c6d  0      
  movl %eax, %eax                        #  1706  0x85c6d  2      
  movsbq (%r15,%rax,1), %r13             #  1707  0x85c6f  5      
  jmpq .L_85500                          #  1708  0x85c74  5      
  nop                                    #  1709  0x85c79  1      
  nop                                    #  1710  0x85c7a  1      
.L_86740:                                #        0x85c7b  0      
  movl 0x98(%rsp), %edx                  #  1711  0x85c7b  7      
  leal 0x1a0(%rsp), %ecx                 #  1712  0x85c82  7      
  xorl %esi, %esi                        #  1713  0x85c89  2      
  movl %r8d, 0x40(%rsp)                  #  1714  0x85c8b  5      
  movl %ecx, %edi                        #  1715  0x85c90  2      
  movq %rcx, 0x18(%rsp)                  #  1716  0x85c92  5      
  nop                                    #  1717  0x85c97  1      
  movl %edx, 0x1c8(%rsp)                 #  1718  0x85c98  7      
  movl $0x8, %edx                        #  1719  0x85c9f  5      
  nop                                    #  1720  0x85ca4  1      
  callq .memset                          #  1721  0x85ca5  5      
  movl 0x40(%rsp), %r8d                  #  1722  0x85caa  5      
  testl %r8d, %r8d                       #  1723  0x85caf  3      
  js .L_87200                            #  1724  0x85cb2  6      
  movq %rbx, 0x68(%rsp)                  #  1725  0x85cb8  5      
  movl %r12d, 0x90(%rsp)                 #  1726  0x85cbd  8      
  xorl %r13d, %r13d                      #  1727  0x85cc5  3      
  xchgw %ax, %ax                         #  1728  0x85cc8  3      
  movl $0x0, 0x7c(%rsp)                  #  1729  0x85ccb  8      
  movl %r8d, %ebx                        #  1730  0x85cd3  3      
  xorl %r12d, %r12d                      #  1731  0x85cd6  3      
  jmpq .L_867e0                          #  1732  0x85cd9  5      
  nop                                    #  1733  0x85cde  1      
  nop                                    #  1734  0x85cdf  1      
.L_867c0:                                #        0x85ce0  0      
  movl %eax, %r12d                       #  1735  0x85ce0  3      
  nop                                    #  1736  0x85ce3  1      
  nop                                    #  1737  0x85ce4  1      
.L_867e0:                                #        0x85ce5  0      
  movl 0x1c8(%rsp), %eax                 #  1738  0x85ce5  7      
  addl %r13d, %eax                       #  1739  0x85cec  3      
  movl %eax, %eax                        #  1740  0x85cef  2      
  movl (%r15,%rax,1), %edx               #  1741  0x85cf1  4      
  testl %edx, %edx                       #  1742  0x85cf5  2      
  je .L_871a0                            #  1743  0x85cf7  6      
  movl 0x18(%rsp), %ecx                  #  1744  0x85cfd  4      
  movl 0x28(%rsp), %esi                  #  1745  0x85d01  4      
  movl %r14d, %edi                       #  1746  0x85d05  3      
  nop                                    #  1747  0x85d08  1      
  nop                                    #  1748  0x85d09  1      
  callq ._wcrtomb_r                      #  1749  0x85d0a  5      
  cmpl $0xffffffff, %eax                 #  1750  0x85d0f  5      
  je .L_87240                            #  1751  0x85d14  6      
  addl %r12d, %eax                       #  1752  0x85d1a  3      
  cmpl %eax, %ebx                        #  1753  0x85d1d  2      
  jl .L_871a0                            #  1754  0x85d1f  6      
  addl $0x4, %r13d                       #  1755  0x85d25  4      
  cmpl %eax, %ebx                        #  1756  0x85d29  2      
  jne .L_867c0                           #  1757  0x85d2b  6      
  movl %ebx, %r8d                        #  1758  0x85d31  3      
  nop                                    #  1759  0x85d34  1      
  movl 0x90(%rsp), %r12d                 #  1760  0x85d35  8      
  movq 0x68(%rsp), %rbx                  #  1761  0x85d3d  5      
  movl %r8d, 0x7c(%rsp)                  #  1762  0x85d42  5      
  nop                                    #  1763  0x85d47  1      
.L_86860:                                #        0x85d48  0      
  movl 0x7c(%rsp), %edi                  #  1764  0x85d48  4      
  testl %edi, %edi                       #  1765  0x85d4c  2      
  je .L_86cc0                            #  1766  0x85d4e  6      
  cmpl $0x63, 0x7c(%rsp)                 #  1767  0x85d54  5      
  leal 0xe0(%rsp), %esi                  #  1768  0x85d59  7      
  nop                                    #  1769  0x85d60  1      
  movq $0x0, 0x90(%rsp)                  #  1770  0x85d61  12     
  movq %rsi, 0x98(%rsp)                  #  1771  0x85d6d  8      
  jle .L_86900                           #  1772  0x85d75  6      
  movl 0x7c(%rsp), %esi                  #  1773  0x85d7b  4      
  movl %r14d, %edi                       #  1774  0x85d7f  3      
  addl $0x1, %esi                        #  1775  0x85d82  3      
  nop                                    #  1776  0x85d85  1      
  nop                                    #  1777  0x85d86  1      
  callq ._malloc_r                       #  1778  0x85d87  5      
  movl %eax, %eax                        #  1779  0x85d8c  2      
  testq %rax, %rax                       #  1780  0x85d8e  3      
  movq %rax, 0x90(%rsp)                  #  1781  0x85d91  8      
  je .L_87480                            #  1782  0x85d99  6      
  movq 0x90(%rsp), %rcx                  #  1783  0x85d9f  8      
  nop                                    #  1784  0x85da7  1      
  movq %rcx, 0x98(%rsp)                  #  1785  0x85da8  8      
  nop                                    #  1786  0x85db0  1      
  nop                                    #  1787  0x85db1  1      
.L_86900:                                #        0x85db2  0      
  movl 0x18(%rsp), %edi                  #  1788  0x85db2  4      
  xorl %esi, %esi                        #  1789  0x85db6  2      
  movl $0x8, %edx                        #  1790  0x85db8  5      
  nop                                    #  1791  0x85dbd  1      
  nop                                    #  1792  0x85dbe  1      
  callq .memset                          #  1793  0x85dbf  5      
  movl 0x18(%rsp), %r8d                  #  1794  0x85dc4  5      
  movl 0x7c(%rsp), %ecx                  #  1795  0x85dc9  4      
  leal 0x1c8(%rsp), %edx                 #  1796  0x85dcd  7      
  movl 0x98(%rsp), %esi                  #  1797  0x85dd4  7      
  movl %r14d, %edi                       #  1798  0x85ddb  3      
  nop                                    #  1799  0x85dde  1      
  callq ._wcsrtombs_r                    #  1800  0x85ddf  5      
  cmpl %eax, 0x7c(%rsp)                  #  1801  0x85de4  4      
  jne .L_85a00                           #  1802  0x85de8  6      
  movl 0x7c(%rsp), %eax                  #  1803  0x85dee  4      
  addl 0x98(%rsp), %eax                  #  1804  0x85df2  7      
  movl %eax, %eax                        #  1805  0x85df9  2      
  movb $0x0, (%r15,%rax,1)               #  1806  0x85dfb  5      
  movl 0x7c(%rsp), %esi                  #  1807  0x85e00  4      
  movl $0x0, %eax                        #  1808  0x85e04  5      
  movl $0x0, 0xac(%rsp)                  #  1809  0x85e09  11     
  testl %esi, %esi                       #  1810  0x85e14  2      
  cmovnsl 0x7c(%rsp), %eax               #  1811  0x85e16  5      
  movl %eax, 0x68(%rsp)                  #  1812  0x85e1b  4      
  jmpq .L_85260                          #  1813  0x85e1f  5      
.L_86980:                                #        0x85e24  0      
  movq 0x80(%rsp), %rdx                  #  1814  0x85e24  8      
  movq 0x80(%rsp), %rcx                  #  1815  0x85e2c  8      
  movl %edx, %edx                        #  1816  0x85e34  2      
  movl 0x8(%r15,%rdx,1), %eax            #  1817  0x85e36  5      
  leal 0x8(%rax), %edx                   #  1818  0x85e3b  3      
  nop                                    #  1819  0x85e3e  1      
  movl %ecx, %ecx                        #  1820  0x85e3f  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  1821  0x85e41  5      
  jmpq .L_86240                          #  1822  0x85e46  5      
  nop                                    #  1823  0x85e4b  1      
  nop                                    #  1824  0x85e4c  1      
.L_869c0:                                #        0x85e4d  0      
  addl $0x1, %r13d                       #  1825  0x85e4d  4      
  orl $0x200, %r12d                      #  1826  0x85e51  7      
  movl %r13d, %r13d                      #  1827  0x85e58  3      
  movzbl (%r15,%r13,1), %eax             #  1828  0x85e5b  5      
  jmpq .L_84640                          #  1829  0x85e60  5      
  nop                                    #  1830  0x85e65  1      
.L_869e0:                                #        0x85e66  0      
  addl $0x1, %r13d                       #  1831  0x85e66  4      
  orl $0x20, %r12d                       #  1832  0x85e6a  4      
  movl %r13d, %r13d                      #  1833  0x85e6e  3      
  movzbl (%r15,%r13,1), %eax             #  1834  0x85e71  5      
  jmpq .L_84640                          #  1835  0x85e76  5      
  nop                                    #  1836  0x85e7b  1      
.L_86a00:                                #        0x85e7c  0      
  movq 0x80(%rsp), %rax                  #  1837  0x85e7c  8      
  movl %eax, %eax                        #  1838  0x85e84  2      
  movl (%r15,%rax,1), %edx               #  1839  0x85e86  4      
  cmpl $0x2f, %edx                       #  1840  0x85e8a  3      
  ja .L_87080                            #  1841  0x85e8d  6      
  movq %rax, %rcx                        #  1842  0x85e93  3      
  nop                                    #  1843  0x85e96  1      
  movl %eax, %eax                        #  1844  0x85e97  2      
  movl 0xc(%r15,%rax,1), %eax            #  1845  0x85e99  5      
  addl %edx, %eax                        #  1846  0x85e9e  2      
  addl $0x8, %edx                        #  1847  0x85ea0  3      
  movl %ecx, %ecx                        #  1848  0x85ea3  2      
  movl %edx, (%r15,%rcx,1)               #  1849  0x85ea5  4      
  nop                                    #  1850  0x85ea9  1      
.L_86a40:                                #        0x85eaa  0      
  movl %eax, %eax                        #  1851  0x85eaa  2      
  movswq (%r15,%rax,1), %r13             #  1852  0x85eac  5      
  jmpq .L_85500                          #  1853  0x85eb1  5      
  nop                                    #  1854  0x85eb6  1      
  nop                                    #  1855  0x85eb7  1      
.L_86a60:                                #        0x85eb8  0      
  movq 0x80(%rsp), %rax                  #  1856  0x85eb8  8      
  movl %eax, %eax                        #  1857  0x85ec0  2      
  movl (%r15,%rax,1), %edx               #  1858  0x85ec2  4      
  cmpl $0x2f, %edx                       #  1859  0x85ec6  3      
  ja .L_870a0                            #  1860  0x85ec9  6      
  movq %rax, %rcx                        #  1861  0x85ecf  3      
  nop                                    #  1862  0x85ed2  1      
  movl %eax, %eax                        #  1863  0x85ed3  2      
  movl 0xc(%r15,%rax,1), %eax            #  1864  0x85ed5  5      
  addl %edx, %eax                        #  1865  0x85eda  2      
  addl $0x8, %edx                        #  1866  0x85edc  3      
  movl %ecx, %ecx                        #  1867  0x85edf  2      
  movl %edx, (%r15,%rcx,1)               #  1868  0x85ee1  4      
  nop                                    #  1869  0x85ee5  1      
.L_86aa0:                                #        0x85ee6  0      
  movl %eax, %eax                        #  1870  0x85ee6  2      
  movzwl (%r15,%rax,1), %r13d            #  1871  0x85ee8  5      
  jmpq .L_855e0                          #  1872  0x85eed  5      
  nop                                    #  1873  0x85ef2  1      
  nop                                    #  1874  0x85ef3  1      
.L_86ac0:                                #        0x85ef4  0      
  movq 0x80(%rsp), %rax                  #  1875  0x85ef4  8      
  movl %eax, %eax                        #  1876  0x85efc  2      
  movl (%r15,%rax,1), %edx               #  1877  0x85efe  4      
  cmpl $0x2f, %edx                       #  1878  0x85f02  3      
  ja .L_86da0                            #  1879  0x85f05  6      
  movq %rax, %rcx                        #  1880  0x85f0b  3      
  nop                                    #  1881  0x85f0e  1      
  movl %eax, %eax                        #  1882  0x85f0f  2      
  movl 0xc(%r15,%rax,1), %eax            #  1883  0x85f11  5      
  addl %edx, %eax                        #  1884  0x85f16  2      
  addl $0x8, %edx                        #  1885  0x85f18  3      
  movl %ecx, %ecx                        #  1886  0x85f1b  2      
  movl %edx, (%r15,%rcx,1)               #  1887  0x85f1d  4      
  nop                                    #  1888  0x85f21  1      
.L_86b00:                                #        0x85f22  0      
  movl %eax, %eax                        #  1889  0x85f22  2      
  movl (%r15,%rax,1), %eax               #  1890  0x85f24  4      
  movl 0x8c(%rsp), %edx                  #  1891  0x85f28  7      
  movl %eax, %eax                        #  1892  0x85f2f  2      
  movl %edx, (%r15,%rax,1)               #  1893  0x85f31  4      
  jmpq .L_84480                          #  1894  0x85f35  5      
  nop                                    #  1895  0x85f3a  1      
.L_86b20:                                #        0x85f3b  0      
  orl $0x400, %r12d                      #  1896  0x85f3b  7      
  movl %r13d, %r13d                      #  1897  0x85f42  3      
  movzbl (%r15,%r13,1), %eax             #  1898  0x85f45  5      
  jmpq .L_84640                          #  1899  0x85f4a  5      
  nop                                    #  1900  0x85f4f  1      
.L_86b40:                                #        0x85f50  0      
  movq 0x80(%rsp), %rsi                  #  1901  0x85f50  8      
  movl %esi, %esi                        #  1902  0x85f58  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1903  0x85f5a  5      
  leal 0x8(%rdx), %eax                   #  1904  0x85f5f  3      
  movl %esi, %esi                        #  1905  0x85f62  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1906  0x85f64  5      
  jmpq .L_85f20                          #  1907  0x85f69  5      
  xchgw %ax, %ax                         #  1908  0x85f6e  3      
.L_86b60:                                #        0x85f71  0      
  movq 0x80(%rsp), %rdx                  #  1909  0x85f71  8      
  movq 0x80(%rsp), %rsi                  #  1910  0x85f79  8      
  movl %edx, %edx                        #  1911  0x85f81  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1912  0x85f83  5      
  leal 0x8(%rcx), %edx                   #  1913  0x85f88  3      
  nop                                    #  1914  0x85f8b  1      
  movl %esi, %esi                        #  1915  0x85f8c  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1916  0x85f8e  5      
  jmpq .L_857a0                          #  1917  0x85f93  5      
  nop                                    #  1918  0x85f98  1      
  nop                                    #  1919  0x85f99  1      
.L_86ba0:                                #        0x85f9a  0      
  movq 0x80(%rsp), %rsi                  #  1920  0x85f9a  8      
  movl %esi, %esi                        #  1921  0x85fa2  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1922  0x85fa4  5      
  leal 0x8(%rdx), %eax                   #  1923  0x85fa9  3      
  movl %esi, %esi                        #  1924  0x85fac  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1925  0x85fae  5      
  jmpq .L_85ec0                          #  1926  0x85fb3  5      
  xchgw %ax, %ax                         #  1927  0x85fb8  3      
.L_86bc0:                                #        0x85fbb  0      
  movq %rdx, %rcx                        #  1928  0x85fbb  3      
  movl %edx, %edx                        #  1929  0x85fbe  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1930  0x85fc0  5      
  addl %eax, %edx                        #  1931  0x85fc5  2      
  addl $0x8, %eax                        #  1932  0x85fc7  3      
  movl %ecx, %ecx                        #  1933  0x85fca  2      
  movl %eax, (%r15,%rcx,1)               #  1934  0x85fcc  4      
  jmpq .L_85f80                          #  1935  0x85fd0  5      
  nop                                    #  1936  0x85fd5  1      
.L_86be0:                                #        0x85fd6  0      
  movq 0x80(%rsp), %rdx                  #  1937  0x85fd6  8      
  movl %edx, %edx                        #  1938  0x85fde  2      
  movl (%r15,%rdx,1), %ecx               #  1939  0x85fe0  4      
  cmpl $0x2f, %ecx                       #  1940  0x85fe4  3      
  ja .L_86ea0                            #  1941  0x85fe7  6      
  movq %rdx, %rsi                        #  1942  0x85fed  3      
  nop                                    #  1943  0x85ff0  1      
  movl %edx, %edx                        #  1944  0x85ff1  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1945  0x85ff3  5      
  addl %ecx, %edx                        #  1946  0x85ff8  2      
  addl $0x8, %ecx                        #  1947  0x85ffa  3      
  movl %esi, %esi                        #  1948  0x85ffd  2      
  movl %ecx, (%r15,%rsi,1)               #  1949  0x85fff  4      
  nop                                    #  1950  0x86003  1      
.L_86c20:                                #        0x86004  0      
  movl %edx, %edx                        #  1951  0x86004  2      
  movzwl (%r15,%rdx,1), %r13d            #  1952  0x86006  5      
  jmpq .L_85300                          #  1953  0x8600b  5      
  nop                                    #  1954  0x86010  1      
  nop                                    #  1955  0x86011  1      
.L_86c40:                                #        0x86012  0      
  movq 0x80(%rsp), %rax                  #  1956  0x86012  8      
  movl %eax, %eax                        #  1957  0x8601a  2      
  movl (%r15,%rax,1), %edx               #  1958  0x8601c  4      
  cmpl $0x2f, %edx                       #  1959  0x86020  3      
  ja .L_86ee0                            #  1960  0x86023  6      
  movq %rax, %rcx                        #  1961  0x86029  3      
  nop                                    #  1962  0x8602c  1      
  movl %eax, %eax                        #  1963  0x8602d  2      
  movl 0xc(%r15,%rax,1), %eax            #  1964  0x8602f  5      
  addl %edx, %eax                        #  1965  0x86034  2      
  addl $0x8, %edx                        #  1966  0x86036  3      
  movl %ecx, %ecx                        #  1967  0x86039  2      
  movl %edx, (%r15,%rcx,1)               #  1968  0x8603b  4      
  nop                                    #  1969  0x8603f  1      
.L_86c80:                                #        0x86040  0      
  movl %eax, %eax                        #  1970  0x86040  2      
  movzwl (%r15,%rax,1), %r13d            #  1971  0x86042  5      
  movl $0x1, %eax                        #  1972  0x86047  5      
  testq %r13, %r13                       #  1973  0x8604c  3      
  setne %dl                              #  1974  0x8604f  3      
  jmpq .L_85160                          #  1975  0x86052  5      
  nop                                    #  1976  0x86057  1      
.L_86ca0:                                #        0x86058  0      
  movq 0x80(%rsp), %rsi                  #  1977  0x86058  8      
  movl %esi, %esi                        #  1978  0x86060  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1979  0x86062  5      
  leal 0x8(%rdx), %eax                   #  1980  0x86067  3      
  movl %esi, %esi                        #  1981  0x8606a  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1982  0x8606c  5      
  jmpq .L_850c0                          #  1983  0x86071  5      
  xchgw %ax, %ax                         #  1984  0x86076  3      
.L_86cc0:                                #        0x86079  0      
  movl $0x0, 0x68(%rsp)                  #  1985  0x86079  8      
  movq $0x0, 0x90(%rsp)                  #  1986  0x86081  12     
  movl $0x0, 0xac(%rsp)                  #  1987  0x8608d  11     
  nop                                    #  1988  0x86098  1      
  jmpq .L_85260                          #  1989  0x86099  5      
  nop                                    #  1990  0x8609e  1      
  nop                                    #  1991  0x8609f  1      
.L_86d00:                                #        0x860a0  0      
  movq %rdx, %rcx                        #  1992  0x860a0  3      
  movl %edx, %edx                        #  1993  0x860a3  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1994  0x860a5  5      
  addl %eax, %edx                        #  1995  0x860aa  2      
  addl $0x8, %eax                        #  1996  0x860ac  3      
  movl %ecx, %ecx                        #  1997  0x860af  2      
  movl %eax, (%r15,%rcx,1)               #  1998  0x860b1  4      
  jmpq .L_85460                          #  1999  0x860b5  5      
  nop                                    #  2000  0x860ba  1      
.L_86d20:                                #        0x860bb  0      
  movl 0x70(%rsp), %esi                  #  2001  0x860bb  4      
  leal 0x190(%rsp), %edx                 #  2002  0x860bf  7      
  movl %r14d, %edi                       #  2003  0x860c6  3      
  nop                                    #  2004  0x860c9  1      
  callq .__sprint_r                      #  2005  0x860ca  5      
  testl %eax, %eax                       #  2006  0x860cf  2      
  je .L_85980                            #  2007  0x860d1  6      
  jmpq .L_85a40                          #  2008  0x860d7  5      
  nop                                    #  2009  0x860dc  1      
  nop                                    #  2010  0x860dd  1      
.L_86d60:                                #        0x860de  0      
  movl %r8d, 0x68(%rsp)                  #  2011  0x860de  5      
  movl %r8d, 0x7c(%rsp)                  #  2012  0x860e3  5      
  movq $0x0, 0x90(%rsp)                  #  2013  0x860e8  12     
  nop                                    #  2014  0x860f4  1      
  movl $0x0, 0xac(%rsp)                  #  2015  0x860f5  11     
  jmpq .L_85260                          #  2016  0x86100  5      
  nop                                    #  2017  0x86105  1      
  nop                                    #  2018  0x86106  1      
.L_86da0:                                #        0x86107  0      
  movq 0x80(%rsp), %rsi                  #  2019  0x86107  8      
  movl %esi, %esi                        #  2020  0x8610f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2021  0x86111  5      
  leal 0x8(%rax), %edx                   #  2022  0x86116  3      
  movl %esi, %esi                        #  2023  0x86119  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2024  0x8611b  5      
  jmpq .L_86b00                          #  2025  0x86120  5      
  xchgw %ax, %ax                         #  2026  0x86125  3      
.L_86dc0:                                #        0x86128  0      
  movl 0xb8(%rsp), %esi                  #  2027  0x86128  7      
  subl 0x98(%rsp), %esi                  #  2028  0x8612f  7      
  movq 0xb0(%rsp), %rcx                  #  2029  0x86136  8      
  movl %esi, 0x7c(%rsp)                  #  2030  0x8613e  4      
  jmpq .L_85220                          #  2031  0x86142  5      
  nop                                    #  2032  0x86147  1      
.L_86de0:                                #        0x86148  0      
  movl $0x6, 0x7c(%rsp)                  #  2033  0x86148  8      
  cmpl $0x6, %r8d                        #  2034  0x86150  4      
  cmoval 0x7c(%rsp), %r8d                #  2035  0x86154  6      
  movl $0x0, %eax                        #  2036  0x8615a  5      
  nop                                    #  2037  0x8615f  1      
  movq $0x10023c12, 0x98(%rsp)           #  2038  0x86160  12     
  testl %r8d, %r8d                       #  2039  0x8616c  3      
  movl %r8d, 0x7c(%rsp)                  #  2040  0x8616f  5      
  cmovnsl %r8d, %eax                     #  2041  0x86174  4      
  movl %eax, 0x68(%rsp)                  #  2042  0x86178  4      
  nop                                    #  2043  0x8617c  1      
  jmpq .L_846c0                          #  2044  0x8617d  5      
  nop                                    #  2045  0x86182  1      
  nop                                    #  2046  0x86183  1      
.L_86e40:                                #        0x86184  0      
  movq 0x80(%rsp), %rax                  #  2047  0x86184  8      
  movl %eax, %eax                        #  2048  0x8618c  2      
  movl (%r15,%rax,1), %edx               #  2049  0x8618e  4      
  cmpl $0x2f, %edx                       #  2050  0x86192  3      
  ja .L_87260                            #  2051  0x86195  6      
  movq %rax, %rcx                        #  2052  0x8619b  3      
  nop                                    #  2053  0x8619e  1      
  movl %eax, %eax                        #  2054  0x8619f  2      
  movl 0xc(%r15,%rax,1), %eax            #  2055  0x861a1  5      
  addl %edx, %eax                        #  2056  0x861a6  2      
  addl $0x8, %edx                        #  2057  0x861a8  3      
  movl %ecx, %ecx                        #  2058  0x861ab  2      
  movl %edx, (%r15,%rcx,1)               #  2059  0x861ad  4      
  nop                                    #  2060  0x861b1  1      
.L_86e80:                                #        0x861b2  0      
  movl %eax, %eax                        #  2061  0x861b2  2      
  movl (%r15,%rax,1), %r13d              #  2062  0x861b4  4      
  movl $0x1, %eax                        #  2063  0x861b8  5      
  testq %r13, %r13                       #  2064  0x861bd  3      
  setne %dl                              #  2065  0x861c0  3      
  jmpq .L_85160                          #  2066  0x861c3  5      
  nop                                    #  2067  0x861c8  1      
.L_86ea0:                                #        0x861c9  0      
  movq 0x80(%rsp), %rcx                  #  2068  0x861c9  8      
  movq 0x80(%rsp), %rsi                  #  2069  0x861d1  8      
  movl %ecx, %ecx                        #  2070  0x861d9  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2071  0x861db  5      
  leal 0x8(%rdx), %ecx                   #  2072  0x861e0  3      
  nop                                    #  2073  0x861e3  1      
  movl %esi, %esi                        #  2074  0x861e4  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2075  0x861e6  5      
  jmpq .L_86c20                          #  2076  0x861eb  5      
  nop                                    #  2077  0x861f0  1      
  nop                                    #  2078  0x861f1  1      
.L_86ee0:                                #        0x861f2  0      
  movq 0x80(%rsp), %rsi                  #  2079  0x861f2  8      
  movl %esi, %esi                        #  2080  0x861fa  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2081  0x861fc  5      
  leal 0x8(%rax), %edx                   #  2082  0x86201  3      
  movl %esi, %esi                        #  2083  0x86204  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2084  0x86206  5      
  jmpq .L_86c80                          #  2085  0x8620b  5      
  xchgw %ax, %ax                         #  2086  0x86210  3      
.L_86f00:                                #        0x86213  0      
  movq 0x80(%rsp), %rdx                  #  2087  0x86213  8      
  movl %edx, %edx                        #  2088  0x8621b  2      
  movl (%r15,%rdx,1), %ecx               #  2089  0x8621d  4      
  cmpl $0x2f, %ecx                       #  2090  0x86221  3      
  ja .L_87340                            #  2091  0x86224  6      
  movq %rdx, %rsi                        #  2092  0x8622a  3      
  nop                                    #  2093  0x8622d  1      
  movl %edx, %edx                        #  2094  0x8622e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  2095  0x86230  5      
  addl %ecx, %edx                        #  2096  0x86235  2      
  addl $0x8, %ecx                        #  2097  0x86237  3      
  movl %esi, %esi                        #  2098  0x8623a  2      
  movl %ecx, (%r15,%rsi,1)               #  2099  0x8623c  4      
  nop                                    #  2100  0x86240  1      
.L_86f40:                                #        0x86241  0      
  movl %edx, %edx                        #  2101  0x86241  2      
  movl (%r15,%rdx,1), %r13d              #  2102  0x86243  4      
  jmpq .L_85300                          #  2103  0x86247  5      
  nop                                    #  2104  0x8624c  1      
  nop                                    #  2105  0x8624d  1      
.L_86f60:                                #        0x8624e  0      
  movq 0x80(%rsp), %rax                  #  2106  0x8624e  8      
  movl %eax, %eax                        #  2107  0x86256  2      
  movl (%r15,%rax,1), %edx               #  2108  0x86258  4      
  cmpl $0x2f, %edx                       #  2109  0x8625c  3      
  ja .L_87300                            #  2110  0x8625f  6      
  movq %rax, %rcx                        #  2111  0x86265  3      
  nop                                    #  2112  0x86268  1      
  movl %eax, %eax                        #  2113  0x86269  2      
  movl 0xc(%r15,%rax,1), %eax            #  2114  0x8626b  5      
  addl %edx, %eax                        #  2115  0x86270  2      
  addl $0x8, %edx                        #  2116  0x86272  3      
  movl %ecx, %ecx                        #  2117  0x86275  2      
  movl %edx, (%r15,%rcx,1)               #  2118  0x86277  4      
  nop                                    #  2119  0x8627b  1      
.L_86fa0:                                #        0x8627c  0      
  movl %eax, %eax                        #  2120  0x8627c  2      
  movl (%r15,%rax,1), %r13d              #  2121  0x8627e  4      
  jmpq .L_855e0                          #  2122  0x86282  5      
  nop                                    #  2123  0x86287  1      
  nop                                    #  2124  0x86288  1      
.L_86fc0:                                #        0x86289  0      
  andl $0x200, %r12d                     #  2125  0x86289  7      
  je .L_87380                            #  2126  0x86290  6      
  movq 0x80(%rsp), %rcx                  #  2127  0x86296  8      
  movl %ecx, %ecx                        #  2128  0x8629e  2      
  movl (%r15,%rcx,1), %edx               #  2129  0x862a0  4      
  cmpl $0x2f, %edx                       #  2130  0x862a4  3      
  xchgw %ax, %ax                         #  2131  0x862a7  3      
  ja .L_873c0                            #  2132  0x862aa  6      
  movl %ecx, %ecx                        #  2133  0x862b0  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2134  0x862b2  5      
  addl %edx, %eax                        #  2135  0x862b7  2      
  addl $0x8, %edx                        #  2136  0x862b9  3      
  movl %ecx, %ecx                        #  2137  0x862bc  2      
  movl %edx, (%r15,%rcx,1)               #  2138  0x862be  4      
  nop                                    #  2139  0x862c2  1      
.L_87000:                                #        0x862c3  0      
  movl %eax, %eax                        #  2140  0x862c3  2      
  movl (%r15,%rax,1), %eax               #  2141  0x862c5  4      
  movzbl 0x8c(%rsp), %edx                #  2142  0x862c9  8      
  movl %eax, %eax                        #  2143  0x862d1  2      
  movb %dl, (%r15,%rax,1)                #  2144  0x862d3  4      
  jmpq .L_84480                          #  2145  0x862d7  5      
  nop                                    #  2146  0x862dc  1      
.L_87020:                                #        0x862dd  0      
  movq 0x80(%rsp), %rax                  #  2147  0x862dd  8      
  movl %eax, %eax                        #  2148  0x862e5  2      
  movl (%r15,%rax,1), %edx               #  2149  0x862e7  4      
  cmpl $0x2f, %edx                       #  2150  0x862eb  3      
  ja .L_872c0                            #  2151  0x862ee  6      
  movq %rax, %rcx                        #  2152  0x862f4  3      
  nop                                    #  2153  0x862f7  1      
  movl %eax, %eax                        #  2154  0x862f8  2      
  movl 0xc(%r15,%rax,1), %eax            #  2155  0x862fa  5      
  addl %edx, %eax                        #  2156  0x862ff  2      
  addl $0x8, %edx                        #  2157  0x86301  3      
  movl %ecx, %ecx                        #  2158  0x86304  2      
  movl %edx, (%r15,%rcx,1)               #  2159  0x86306  4      
  nop                                    #  2160  0x8630a  1      
.L_87060:                                #        0x8630b  0      
  movl %eax, %eax                        #  2161  0x8630b  2      
  movslq (%r15,%rax,1), %r13             #  2162  0x8630d  4      
  jmpq .L_85500                          #  2163  0x86311  5      
  nop                                    #  2164  0x86316  1      
  nop                                    #  2165  0x86317  1      
.L_87080:                                #        0x86318  0      
  movq 0x80(%rsp), %rsi                  #  2166  0x86318  8      
  movl %esi, %esi                        #  2167  0x86320  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2168  0x86322  5      
  leal 0x8(%rax), %edx                   #  2169  0x86327  3      
  movl %esi, %esi                        #  2170  0x8632a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2171  0x8632c  5      
  jmpq .L_86a40                          #  2172  0x86331  5      
  xchgw %ax, %ax                         #  2173  0x86336  3      
.L_870a0:                                #        0x86339  0      
  movq 0x80(%rsp), %rsi                  #  2174  0x86339  8      
  movl %esi, %esi                        #  2175  0x86341  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2176  0x86343  5      
  leal 0x8(%rax), %edx                   #  2177  0x86348  3      
  movl %esi, %esi                        #  2178  0x8634b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2179  0x8634d  5      
  jmpq .L_86aa0                          #  2180  0x86352  5      
  xchgw %ax, %ax                         #  2181  0x86357  3      
.L_870c0:                                #        0x8635a  0      
  cmpl $0x0, 0x7c(%rsp)                  #  2182  0x8635a  5      
  movq $0x0, 0x90(%rsp)                  #  2183  0x8635f  12     
  cmovnsl 0x7c(%rsp), %r13d              #  2184  0x8636b  6      
  nop                                    #  2185  0x86371  1      
  movl $0x0, 0xac(%rsp)                  #  2186  0x86372  11     
  movl %r13d, 0x68(%rsp)                 #  2187  0x8637d  5      
  jmpq .L_85260                          #  2188  0x86382  5      
  nop                                    #  2189  0x86387  1      
.L_87100:                                #        0x86388  0      
  movl 0x98(%rsp), %edi                  #  2190  0x86388  7      
  nop                                    #  2191  0x8638f  1      
  nop                                    #  2192  0x86390  1      
  callq .strlen                          #  2193  0x86391  5      
  testl %eax, %eax                       #  2194  0x86396  2      
  movl %eax, 0x7c(%rsp)                  #  2195  0x86398  4      
  movq $0x0, 0x90(%rsp)                  #  2196  0x8639c  12     
  cmovnsl %eax, %r13d                    #  2197  0x863a8  4      
  nop                                    #  2198  0x863ac  1      
  movl $0x0, 0xac(%rsp)                  #  2199  0x863ad  11     
  movl %r13d, 0x68(%rsp)                 #  2200  0x863b8  5      
  jmpq .L_85260                          #  2201  0x863bd  5      
  nop                                    #  2202  0x863c2  1      
.L_87160:                                #        0x863c3  0      
  movq 0x70(%rsp), %rsi                  #  2203  0x863c3  5      
  movl %esi, %esi                        #  2204  0x863c8  2      
  testb $0x2, 0xd(%r15,%rsi,1)           #  2205  0x863ca  6      
  jne .L_85aa0                           #  2206  0x863d0  6      
  movl 0x70(%rsp), %edi                  #  2207  0x863d6  4      
  addl $0x5c, %edi                       #  2208  0x863da  3      
  nop                                    #  2209  0x863dd  1      
  callq .__local_lock_release_recursive  #  2210  0x863de  5      
  movl $0xffffffff, 0x8c(%rsp)           #  2211  0x863e3  11     
  jmpq .L_84f60                          #  2212  0x863ee  5      
  nop                                    #  2213  0x863f3  1      
  nop                                    #  2214  0x863f4  1      
.L_871a0:                                #        0x863f5  0      
  movl %r12d, 0x7c(%rsp)                 #  2215  0x863f5  5      
  movq 0x68(%rsp), %rbx                  #  2216  0x863fa  5      
  movl 0x90(%rsp), %r12d                 #  2217  0x863ff  8      
  jmpq .L_86860                          #  2218  0x86407  5      
  nop                                    #  2219  0x8640c  1      
.L_871c0:                                #        0x8640d  0      
  movq 0x80(%rsp), %rcx                  #  2220  0x8640d  8      
  movq 0x80(%rsp), %rsi                  #  2221  0x86415  8      
  movl %ecx, %ecx                        #  2222  0x8641d  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2223  0x8641f  5      
  leal 0x8(%rdx), %ecx                   #  2224  0x86424  3      
  nop                                    #  2225  0x86427  1      
  movl %esi, %esi                        #  2226  0x86428  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2227  0x8642a  5      
  jmpq .L_86400                          #  2228  0x8642f  5      
  nop                                    #  2229  0x86434  1      
  nop                                    #  2230  0x86435  1      
.L_87200:                                #        0x86436  0      
  movl 0x18(%rsp), %r8d                  #  2231  0x86436  5      
  leal 0x1c8(%rsp), %edx                 #  2232  0x8643b  7      
  xorl %ecx, %ecx                        #  2233  0x86442  2      
  xorl %esi, %esi                        #  2234  0x86444  2      
  movl %r14d, %edi                       #  2235  0x86446  3      
  nop                                    #  2236  0x86449  1      
  callq ._wcsrtombs_r                    #  2237  0x8644a  5      
  cmpl $0xffffffff, %eax                 #  2238  0x8644f  5      
  movl %eax, 0x7c(%rsp)                  #  2239  0x86454  4      
  je .L_87480                            #  2240  0x86458  6      
  movl 0x98(%rsp), %ecx                  #  2241  0x8645e  7      
  movl %ecx, 0x1c8(%rsp)                 #  2242  0x86465  7      
  jmpq .L_86860                          #  2243  0x8646c  5      
.L_87240:                                #        0x86471  0      
  movq 0x70(%rsp), %rsi                  #  2244  0x86471  5      
  movl %esi, %esi                        #  2245  0x86476  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  2246  0x86478  6      
  orl $0x40, %eax                        #  2247  0x8647e  3      
  movl %esi, %esi                        #  2248  0x86481  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  2249  0x86483  6      
  jmpq .L_85a60                          #  2250  0x86489  5      
  nop                                    #  2251  0x8648e  1      
.L_87260:                                #        0x8648f  0      
  movq 0x80(%rsp), %rsi                  #  2252  0x8648f  8      
  movl %esi, %esi                        #  2253  0x86497  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2254  0x86499  5      
  leal 0x8(%rax), %edx                   #  2255  0x8649e  3      
  movl %esi, %esi                        #  2256  0x864a1  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2257  0x864a3  5      
  jmpq .L_86e80                          #  2258  0x864a8  5      
  xchgw %ax, %ax                         #  2259  0x864ad  3      
.L_87280:                                #        0x864b0  0      
  movq 0x80(%rsp), %rsi                  #  2260  0x864b0  8      
  movl %esi, %esi                        #  2261  0x864b8  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2262  0x864ba  5      
  leal 0x8(%rax), %edx                   #  2263  0x864bf  3      
  movl %esi, %esi                        #  2264  0x864c2  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2265  0x864c4  5      
  jmpq .L_86520                          #  2266  0x864c9  5      
  xchgw %ax, %ax                         #  2267  0x864ce  3      
.L_872a0:                                #        0x864d1  0      
  movq 0x80(%rsp), %rsi                  #  2268  0x864d1  8      
  movl %esi, %esi                        #  2269  0x864d9  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2270  0x864db  5      
  leal 0x8(%rax), %edx                   #  2271  0x864e0  3      
  movl %esi, %esi                        #  2272  0x864e3  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2273  0x864e5  5      
  jmpq .L_86720                          #  2274  0x864ea  5      
  xchgw %ax, %ax                         #  2275  0x864ef  3      
.L_872c0:                                #        0x864f2  0      
  movq 0x80(%rsp), %rsi                  #  2276  0x864f2  8      
  movl %esi, %esi                        #  2277  0x864fa  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2278  0x864fc  5      
  leal 0x8(%rax), %edx                   #  2279  0x86501  3      
  movl %esi, %esi                        #  2280  0x86504  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2281  0x86506  5      
  jmpq .L_87060                          #  2282  0x8650b  5      
  xchgw %ax, %ax                         #  2283  0x86510  3      
.L_872e0:                                #        0x86513  0      
  movq 0x80(%rsp), %rsi                  #  2284  0x86513  8      
  movl %esi, %esi                        #  2285  0x8651b  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2286  0x8651d  5      
  leal 0x8(%rax), %edx                   #  2287  0x86522  3      
  movl %esi, %esi                        #  2288  0x86525  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2289  0x86527  5      
  jmpq .L_86640                          #  2290  0x8652c  5      
  xchgw %ax, %ax                         #  2291  0x86531  3      
.L_87300:                                #        0x86534  0      
  movq 0x80(%rsp), %rsi                  #  2292  0x86534  8      
  movl %esi, %esi                        #  2293  0x8653c  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2294  0x8653e  5      
  leal 0x8(%rax), %edx                   #  2295  0x86543  3      
  movl %esi, %esi                        #  2296  0x86546  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2297  0x86548  5      
  jmpq .L_86fa0                          #  2298  0x8654d  5      
  xchgw %ax, %ax                         #  2299  0x86552  3      
.L_87320:                                #        0x86555  0      
  movq 0x80(%rsp), %rsi                  #  2300  0x86555  8      
  movl %esi, %esi                        #  2301  0x8655d  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2302  0x8655f  5      
  leal 0x8(%rax), %edx                   #  2303  0x86564  3      
  movl %esi, %esi                        #  2304  0x86567  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2305  0x86569  5      
  jmpq .L_865a0                          #  2306  0x8656e  5      
  xchgw %ax, %ax                         #  2307  0x86573  3      
.L_87340:                                #        0x86576  0      
  movq 0x80(%rsp), %rcx                  #  2308  0x86576  8      
  movq 0x80(%rsp), %rsi                  #  2309  0x8657e  8      
  movl %ecx, %ecx                        #  2310  0x86586  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2311  0x86588  5      
  leal 0x8(%rdx), %ecx                   #  2312  0x8658d  3      
  nop                                    #  2313  0x86590  1      
  movl %esi, %esi                        #  2314  0x86591  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2315  0x86593  5      
  jmpq .L_86f40                          #  2316  0x86598  5      
  nop                                    #  2317  0x8659d  1      
  nop                                    #  2318  0x8659e  1      
.L_87380:                                #        0x8659f  0      
  movq 0x80(%rsp), %rcx                  #  2319  0x8659f  8      
  movl %ecx, %ecx                        #  2320  0x865a7  2      
  movl (%r15,%rcx,1), %edx               #  2321  0x865a9  4      
  cmpl $0x2f, %edx                       #  2322  0x865ad  3      
  ja .L_86da0                            #  2323  0x865b0  6      
  movl %ecx, %ecx                        #  2324  0x865b6  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2325  0x865b8  5      
  addl %edx, %eax                        #  2326  0x865bd  2      
  addl $0x8, %edx                        #  2327  0x865bf  3      
  movl %ecx, %ecx                        #  2328  0x865c2  2      
  movl %edx, (%r15,%rcx,1)               #  2329  0x865c4  4      
  jmpq .L_86b00                          #  2330  0x865c8  5      
  nop                                    #  2331  0x865cd  1      
  nop                                    #  2332  0x865ce  1      
.L_873c0:                                #        0x865cf  0      
  movq 0x80(%rsp), %rsi                  #  2333  0x865cf  8      
  movl %esi, %esi                        #  2334  0x865d7  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2335  0x865d9  5      
  leal 0x8(%rax), %edx                   #  2336  0x865de  3      
  movl %esi, %esi                        #  2337  0x865e1  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2338  0x865e3  5      
  jmpq .L_87000                          #  2339  0x865e8  5      
  xchgw %ax, %ax                         #  2340  0x865ed  3      
.L_873e0:                                #        0x865f0  0      
  movq 0x80(%rsp), %rsi                  #  2341  0x865f0  8      
  movl %esi, %esi                        #  2342  0x865f8  2      
  movl (%r15,%rsi,1), %edx               #  2343  0x865fa  4      
  cmpl $0x2f, %edx                       #  2344  0x865fe  3      
  ja .L_87440                            #  2345  0x86601  6      
  movl %esi, %esi                        #  2346  0x86607  2      
  movl 0xc(%r15,%rsi,1), %eax            #  2347  0x86609  5      
  addl %edx, %eax                        #  2348  0x8660e  2      
  addl $0x8, %edx                        #  2349  0x86610  3      
  nop                                    #  2350  0x86613  1      
  movl %esi, %esi                        #  2351  0x86614  2      
  movl %edx, (%r15,%rsi,1)               #  2352  0x86616  4      
  nop                                    #  2353  0x8661a  1      
  nop                                    #  2354  0x8661b  1      
.L_87420:                                #        0x8661c  0      
  movl %eax, %eax                        #  2355  0x8661c  2      
  movl (%r15,%rax,1), %r8d               #  2356  0x8661e  4      
  testl %r8d, %r8d                       #  2357  0x86622  3      
  jns .L_84de0                           #  2358  0x86625  6      
  movl %r13d, %r13d                      #  2359  0x8662b  3      
  movzbl (%r15,%r13,1), %eax             #  2360  0x8662e  5      
  orl $0xffffffff, %r8d                  #  2361  0x86633  7      
  jmpq .L_84640                          #  2362  0x8663a  5      
.L_87440:                                #        0x8663f  0      
  movq 0x80(%rsp), %rdx                  #  2363  0x8663f  8      
  movq 0x80(%rsp), %rcx                  #  2364  0x86647  8      
  movl %edx, %edx                        #  2365  0x8664f  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2366  0x86651  5      
  leal 0x8(%rax), %edx                   #  2367  0x86656  3      
  nop                                    #  2368  0x86659  1      
  movl %ecx, %ecx                        #  2369  0x8665a  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  2370  0x8665c  5      
  jmpq .L_87420                          #  2371  0x86661  5      
  nop                                    #  2372  0x86666  1      
  nop                                    #  2373  0x86667  1      
.L_87480:                                #        0x86668  0      
  movq 0x70(%rsp), %rdx                  #  2374  0x86668  5      
  movl %edx, %edx                        #  2375  0x8666d  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  2376  0x8666f  6      
  orl $0x40, %eax                        #  2377  0x86675  3      
  movl %edx, %edx                        #  2378  0x86678  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  2379  0x8667a  6      
  jmpq .L_85a60                          #  2380  0x86680  5      
  nop                                    #  2381  0x86685  1      
                                                                  
.size _vfiprintf_r, .-_vfiprintf_r

