  .text
  .globl execute_cfa_program
  .type execute_cfa_program, @function

#! file-offset 0x59320
#! rip-offset  0x59320
#! capacity    4352 bytes

# Text                              #  Line  RIP      Bytes  
.execute_cfa_program:               #        0x59320  0      
  pushq %rbp                        #  1     0x59320  2      
  movq %rsp, %rbp                   #  2     0x59322  3      
  pushq %r14                        #  3     0x59325  3      
  movl %esi, %r14d                  #  4     0x59328  3      
  pushq %r13                        #  5     0x5932b  3      
  movl %edx, %r13d                  #  6     0x5932e  3      
  pushq %r12                        #  7     0x59331  3      
  movl %ecx, %r12d                  #  8     0x59334  3      
  pushq %rbx                        #  9     0x59337  2      
  movl %edi, %ebx                   #  10    0x59339  2      
  subl $0x60, %esp                  #  11    0x5933b  3      
  addq %r15, %rsp                   #  12    0x5933e  3      
  cmpl %r14d, %ebx                  #  13    0x59341  3      
  nop                               #  14    0x59344  1      
  movl %r12d, %r12d                 #  15    0x59345  3      
  movl $0x0, 0x120(%r15,%r12,1)     #  16    0x59348  12     
  jae .L_59460                      #  17    0x59354  6      
  movl %r13d, %r13d                 #  18    0x5935a  3      
  movq 0x60(%r15,%r13,1), %rax      #  19    0x5935d  5      
  nop                               #  20    0x59362  1      
  movl %r12d, %r12d                 #  21    0x59363  3      
  movl 0x140(%r15,%r12,1), %esi     #  22    0x59366  8      
  shrq $0x3f, %rax                  #  23    0x5936e  4      
  movl %r13d, %r13d                 #  24    0x59372  3      
  addl 0x4c(%r15,%r13,1), %eax      #  25    0x59375  5      
  cmpl %esi, %eax                   #  26    0x5937a  2      
  jbe .L_59460                      #  27    0x5937c  6      
  nop                               #  28    0x59382  1      
  leal -0x24(%rbp), %eax            #  29    0x59383  3      
  leal -0x28(%rbp), %ecx            #  30    0x59386  3      
  leal 0xffc99c8(%rip), %edx        #  31    0x59389  6      
  xorl %r9d, %r9d                   #  32    0x5938f  3      
  movl %r12d, -0x3c(%rbp)           #  33    0x59392  4      
  movq %rax, -0x38(%rbp)            #  34    0x59396  4      
  movq %rcx, -0x48(%rbp)            #  35    0x5939a  4      
  nop                               #  36    0x5939e  1      
.L_593a0:                           #        0x5939f  0      
  movl %ebx, %ebx                   #  37    0x5939f  2      
  movzbl (%r15,%rbx,1), %ecx        #  38    0x593a1  5      
  addl $0x1, %ebx                   #  39    0x593a6  3      
  movzbl %cl, %r8d                  #  40    0x593a9  4      
  movl %r8d, %eax                   #  41    0x593ad  3      
  andl $0xc0, %eax                  #  42    0x593b0  3      
  cmpl $0x40, %eax                  #  43    0x593b3  3      
  je .L_59400                       #  44    0x593b6  6      
  cmpl $0x80, %eax                  #  45    0x593bc  3      
  je .L_594a0                       #  46    0x593bf  6      
  cmpl $0xc0, %eax                  #  47    0x593c5  3      
  je .L_59540                       #  48    0x593c8  6      
  cmpb $0x2f, %cl                   #  49    0x593ce  3      
  jbe .L_59520                      #  50    0x593d1  6      
  nop                               #  51    0x593d7  1      
.L_593e0:                           #        0x593d8  0      
  nop                               #  52    0x593d8  1      
  nop                               #  53    0x593d9  1      
  callq .abort                      #  54    0x593da  5      
.L_59400:                           #        0x593df  0      
  andl $0x3f, %r8d                  #  55    0x593df  4      
  movl %r12d, %r12d                 #  56    0x593e3  3      
  imull 0x150(%r15,%r12,1), %r8d    #  57    0x593e6  9      
  addl %esi, %r8d                   #  58    0x593ef  3      
  movl %r12d, %r12d                 #  59    0x593f2  3      
  movl %r8d, 0x140(%r15,%r12,1)     #  60    0x593f5  8      
  xchgw %ax, %ax                    #  61    0x593fd  3      
.L_59420:                           #        0x59400  0      
  cmpl %ebx, %r14d                  #  62    0x59400  3      
  jbe .L_59460                      #  63    0x59403  6      
  movl %r13d, %r13d                 #  64    0x59409  3      
  movq 0x60(%r15,%r13,1), %rax      #  65    0x5940c  5      
  movl %r12d, %r12d                 #  66    0x59411  3      
  movl 0x140(%r15,%r12,1), %esi     #  67    0x59414  8      
  shrq $0x3f, %rax                  #  68    0x5941c  4      
  nop                               #  69    0x59420  1      
  movl %r13d, %r13d                 #  70    0x59421  3      
  addl 0x4c(%r15,%r13,1), %eax      #  71    0x59424  5      
  cmpl %esi, %eax                   #  72    0x59429  2      
  ja .L_593a0                       #  73    0x5942b  6      
  nop                               #  74    0x59431  1      
  nop                               #  75    0x59432  1      
.L_59460:                           #        0x59433  0      
  leal -0x20(%rbp), %esp            #  76    0x59433  3      
  addq %r15, %rsp                   #  77    0x59436  3      
  popq %rbx                         #  78    0x59439  2      
  popq %r12                         #  79    0x5943b  3      
  popq %r13                         #  80    0x5943e  3      
  popq %r14                         #  81    0x59441  3      
  popq %r11                         #  82    0x59444  3      
  movl %r11d, %ebp                  #  83    0x59447  3      
  addq %r15, %rbp                   #  84    0x5944a  3      
  popq %r11                         #  85    0x5944d  3      
  nop                               #  86    0x59450  1      
  andl $0xffffffe0, %r11d           #  87    0x59451  7      
  addq %r15, %r11                   #  88    0x59458  3      
  jmpq %r11                         #  89    0x5945b  3      
  nop                               #  90    0x5945e  1      
  nop                               #  91    0x5945f  1      
.L_594a0:                           #        0x59460  0      
  andl $0x3f, %r8d                  #  92    0x59460  4      
  xorl %edi, %edi                   #  93    0x59464  2      
  xorl %ecx, %ecx                   #  94    0x59466  2      
  nop                               #  95    0x59468  1      
  nop                               #  96    0x59469  1      
.L_594c0:                           #        0x5946a  0      
  movl %ebx, %ebx                   #  97    0x5946a  2      
  movzbl (%r15,%rbx,1), %esi        #  98    0x5946c  5      
  addl $0x1, %ebx                   #  99    0x59471  3      
  movl %esi, %eax                   #  100   0x59474  2      
  andl $0x7f, %eax                  #  101   0x59476  3      
  shll %cl, %eax                    #  102   0x59479  2      
  addl $0x7, %ecx                   #  103   0x5947b  3      
  orl %eax, %edi                    #  104   0x5947e  2      
  testb %sil, %sil                  #  105   0x59480  3      
  js .L_594c0                       #  106   0x59483  6      
  nop                               #  107   0x59489  1      
  movl %r12d, %r12d                 #  108   0x5948a  3      
  imull 0x148(%r15,%r12,1), %edi    #  109   0x5948d  9      
  shll $0x4, %r8d                   #  110   0x59496  4      
  movslq %r8d, %r8                  #  111   0x5949a  3      
  leaq (%r12,%r8,1), %r8            #  112   0x5949d  4      
  nop                               #  113   0x594a1  1      
  movl %r8d, %r8d                   #  114   0x594a2  3      
  movl $0x1, 0x8(%r15,%r8,1)        #  115   0x594a5  9      
  movslq %edi, %rdi                 #  116   0x594ae  3      
  movl %r8d, %r8d                   #  117   0x594b1  3      
  movq %rdi, (%r15,%r8,1)           #  118   0x594b4  4      
  jmpq .L_59420                     #  119   0x594b8  5      
  nop                               #  120   0x594bd  1      
.L_59520:                           #        0x594be  0      
  movzbl %cl, %ecx                  #  121   0x594be  3      
  leaq (%rdx,%rcx,4), %rax          #  122   0x594c1  4      
  movl %eax, %eax                   #  123   0x594c5  2      
  movslq (%r15,%rax,1), %rax        #  124   0x594c7  4      
  addq %rdx, %rax                   #  125   0x594cb  3      
  andl $0xffffffe0, %eax            #  126   0x594ce  5      
  addq %r15, %rax                   #  127   0x594d3  3      
  jmpq %rax                         #  128   0x594d6  2      
  nop                               #  129   0x594d8  1      
.L_59540:                           #        0x594d9  0      
  shlq $0x4, %r8                    #  130   0x594d9  4      
  andl $0x3f0, %r8d                 #  131   0x594dd  7      
  leaq (%r12,%r8,1), %r8            #  132   0x594e4  4      
  movl %r8d, %r8d                   #  133   0x594e8  3      
  movl $0x0, 0x8(%r15,%r8,1)        #  134   0x594eb  9      
  jmpq .L_59420                     #  135   0x594f4  5      
  xorl %edi, %edi                   #  136   0x594f9  2      
  xorl %ecx, %ecx                   #  137   0x594fb  2      
  nop                               #  138   0x594fd  1      
  nop                               #  139   0x594fe  1      
.L_59580:                           #        0x594ff  0      
  movl %ebx, %ebx                   #  140   0x594ff  2      
  movzbl (%r15,%rbx,1), %esi        #  141   0x59501  5      
  addl $0x1, %ebx                   #  142   0x59506  3      
  movl %esi, %eax                   #  143   0x59509  2      
  andl $0x7f, %eax                  #  144   0x5950b  3      
  shll %cl, %eax                    #  145   0x5950e  2      
  addl $0x7, %ecx                   #  146   0x59510  3      
  orl %eax, %edi                    #  147   0x59513  2      
  testb %sil, %sil                  #  148   0x59515  3      
  js .L_59580                       #  149   0x59518  6      
  xorl %r8d, %r8d                   #  150   0x5951e  3      
  xorl %ecx, %ecx                   #  151   0x59521  2      
.L_595a0:                           #        0x59523  0      
  movl %ebx, %ebx                   #  152   0x59523  2      
  movzbl (%r15,%rbx,1), %esi        #  153   0x59525  5      
  addl $0x1, %ebx                   #  154   0x5952a  3      
  movl %esi, %eax                   #  155   0x5952d  2      
  andl $0x7f, %eax                  #  156   0x5952f  3      
  shll %cl, %eax                    #  157   0x59532  2      
  addl $0x7, %ecx                   #  158   0x59534  3      
  orl %eax, %r8d                    #  159   0x59537  3      
  testb %sil, %sil                  #  160   0x5953a  3      
  js .L_595a0                       #  161   0x5953d  6      
  nop                               #  162   0x59543  1      
  movl %r12d, %r12d                 #  163   0x59544  3      
  imull 0x148(%r15,%r12,1), %r8d    #  164   0x59547  9      
  movl %edi, %eax                   #  165   0x59550  2      
  shll $0x4, %eax                   #  166   0x59552  3      
  cltq                              #  167   0x59555  2      
  leaq (%r12,%rax,1), %rax          #  168   0x59557  4      
  negl %r8d                         #  169   0x5955b  3      
  nop                               #  170   0x5955e  1      
  movl %eax, %eax                   #  171   0x5955f  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  172   0x59561  9      
  movslq %r8d, %r8                  #  173   0x5956a  3      
  movl %eax, %eax                   #  174   0x5956d  2      
  movq %r8, (%r15,%rax,1)           #  175   0x5956f  4      
  jmpq .L_59420                     #  176   0x59573  5      
  nop                               #  177   0x59578  1      
  movl %r12d, %r12d                 #  178   0x59579  3      
  movzbl 0x160(%r15,%r12,1), %r8d   #  179   0x5957c  9      
  cmpb $0xff, %r8b                  #  180   0x59585  4      
  movzbl %r8b, %r10d                #  181   0x59589  4      
  je .L_5a160                       #  182   0x5958d  6      
  movl %r10d, %eax                  #  183   0x59593  3      
  andl $0x70, %eax                  #  184   0x59596  3      
  cmpl $0x20, %eax                  #  185   0x59599  3      
  je .L_5a3c0                       #  186   0x5959c  6      
  jg .L_5a1c0                       #  187   0x595a2  6      
  testl %eax, %eax                  #  188   0x595a8  2      
  je .L_59640                       #  189   0x595aa  6      
  cmpl $0x10, %eax                  #  190   0x595b0  3      
  jne .L_593e0                      #  191   0x595b3  6      
  nop                               #  192   0x595b9  1      
.L_59640:                           #        0x595ba  0      
  xorl %r11d, %r11d                 #  193   0x595ba  3      
  nop                               #  194   0x595bd  1      
  nop                               #  195   0x595be  1      
.L_59660:                           #        0x595bf  0      
  cmpb $0x50, %r8b                  #  196   0x595bf  4      
  movq %rbx, -0x50(%rbp)            #  197   0x595c3  4      
  jne .L_5a180                      #  198   0x595c7  6      
  leal 0x3(%rbx), %eax              #  199   0x595cd  3      
  andl $0xfffffffc, %eax            #  200   0x595d0  5      
  leal 0x4(%rax), %ebx              #  201   0x595d5  3      
  movl %eax, %eax                   #  202   0x595d8  2      
  movl %eax, %eax                   #  203   0x595da  2      
  movl (%r15,%rax,1), %ecx          #  204   0x595dc  4      
  nop                               #  205   0x595e0  1      
  movl %ebx, %ebx                   #  206   0x595e1  2      
  nop                               #  207   0x595e3  1      
  nop                               #  208   0x595e4  1      
.L_596a0:                           #        0x595e5  0      
  movl %r12d, %r12d                 #  209   0x595e5  3      
  movl %ecx, 0x140(%r15,%r12,1)     #  210   0x595e8  8      
  jmpq .L_59420                     #  211   0x595f0  5      
  nop                               #  212   0x595f5  1      
  nop                               #  213   0x595f6  1      
  movl %ebx, %ebx                   #  214   0x595f7  2      
  movzbl (%r15,%rbx,1), %eax        #  215   0x595f9  5      
  addl $0x1, %ebx                   #  216   0x595fe  3      
  movl %r12d, %r12d                 #  217   0x59601  3      
  imull 0x150(%r15,%r12,1), %eax    #  218   0x59604  9      
  leal (%rax,%rsi,1), %esi          #  219   0x5960d  3      
  nop                               #  220   0x59610  1      
  movl %r12d, %r12d                 #  221   0x59611  3      
  movl %esi, 0x140(%r15,%r12,1)     #  222   0x59614  8      
  jmpq .L_59420                     #  223   0x5961c  5      
  nop                               #  224   0x59621  1      
  nop                               #  225   0x59622  1      
  movl %ebx, %ebx                   #  226   0x59623  2      
  movzwl (%r15,%rbx,1), %eax        #  227   0x59625  5      
  addl $0x2, %ebx                   #  228   0x5962a  3      
  movl %r12d, %r12d                 #  229   0x5962d  3      
  imull 0x150(%r15,%r12,1), %eax    #  230   0x59630  9      
  leal (%rax,%rsi,1), %esi          #  231   0x59639  3      
  nop                               #  232   0x5963c  1      
  movl %r12d, %r12d                 #  233   0x5963d  3      
  movl %esi, 0x140(%r15,%r12,1)     #  234   0x59640  8      
  jmpq .L_59420                     #  235   0x59648  5      
  nop                               #  236   0x5964d  1      
  nop                               #  237   0x5964e  1      
  movl %ebx, %ebx                   #  238   0x5964f  2      
  movl (%r15,%rbx,1), %eax          #  239   0x59651  4      
  addl $0x4, %ebx                   #  240   0x59655  3      
  movl %r12d, %r12d                 #  241   0x59658  3      
  imull 0x150(%r15,%r12,1), %eax    #  242   0x5965b  9      
  addl %esi, %eax                   #  243   0x59664  2      
  nop                               #  244   0x59666  1      
  movl %r12d, %r12d                 #  245   0x59667  3      
  movl %eax, 0x140(%r15,%r12,1)     #  246   0x5966a  8      
  jmpq .L_59420                     #  247   0x59672  5      
  nop                               #  248   0x59677  1      
  nop                               #  249   0x59678  1      
  xorl %edi, %edi                   #  250   0x59679  2      
  xorl %ecx, %ecx                   #  251   0x5967b  2      
  nop                               #  252   0x5967d  1      
  nop                               #  253   0x5967e  1      
.L_597a0:                           #        0x5967f  0      
  movl %ebx, %ebx                   #  254   0x5967f  2      
  movzbl (%r15,%rbx,1), %esi        #  255   0x59681  5      
  addl $0x1, %ebx                   #  256   0x59686  3      
  movl %esi, %eax                   #  257   0x59689  2      
  andl $0x7f, %eax                  #  258   0x5968b  3      
  shll %cl, %eax                    #  259   0x5968e  2      
  addl $0x7, %ecx                   #  260   0x59690  3      
  orl %eax, %edi                    #  261   0x59693  2      
  testb %sil, %sil                  #  262   0x59695  3      
  js .L_597a0                       #  263   0x59698  6      
  xorl %r8d, %r8d                   #  264   0x5969e  3      
  xorl %ecx, %ecx                   #  265   0x596a1  2      
.L_597c0:                           #        0x596a3  0      
  movl %ebx, %ebx                   #  266   0x596a3  2      
  movzbl (%r15,%rbx,1), %esi        #  267   0x596a5  5      
  addl $0x1, %ebx                   #  268   0x596aa  3      
  movl %esi, %eax                   #  269   0x596ad  2      
  andl $0x7f, %eax                  #  270   0x596af  3      
  shll %cl, %eax                    #  271   0x596b2  2      
  addl $0x7, %ecx                   #  272   0x596b4  3      
  orl %eax, %r8d                    #  273   0x596b7  3      
  testb %sil, %sil                  #  274   0x596ba  3      
  js .L_597c0                       #  275   0x596bd  6      
  nop                               #  276   0x596c3  1      
  movl %r12d, %r12d                 #  277   0x596c4  3      
  movl 0x148(%r15,%r12,1), %ecx     #  278   0x596c7  8      
  movl %edi, %eax                   #  279   0x596cf  2      
  shll $0x4, %eax                   #  280   0x596d1  3      
  cltq                              #  281   0x596d4  2      
  imull %r8d, %ecx                  #  282   0x596d6  4      
  leaq (%r12,%rax,1), %rax          #  283   0x596da  4      
  nop                               #  284   0x596de  1      
  movl %eax, %eax                   #  285   0x596df  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  286   0x596e1  9      
  movslq %ecx, %rcx                 #  287   0x596ea  3      
  movl %eax, %eax                   #  288   0x596ed  2      
  movq %rcx, (%r15,%rax,1)          #  289   0x596ef  4      
  jmpq .L_59420                     #  290   0x596f3  5      
  nop                               #  291   0x596f8  1      
  xorl %edi, %edi                   #  292   0x596f9  2      
  xorl %ecx, %ecx                   #  293   0x596fb  2      
  nop                               #  294   0x596fd  1      
  nop                               #  295   0x596fe  1      
.L_59840:                           #        0x596ff  0      
  movl %ebx, %ebx                   #  296   0x596ff  2      
  movzbl (%r15,%rbx,1), %esi        #  297   0x59701  5      
  addl $0x1, %ebx                   #  298   0x59706  3      
  movl %esi, %eax                   #  299   0x59709  2      
  andl $0x7f, %eax                  #  300   0x5970b  3      
  shll %cl, %eax                    #  301   0x5970e  2      
  addl $0x7, %ecx                   #  302   0x59710  3      
  orl %eax, %edi                    #  303   0x59713  2      
  testb %sil, %sil                  #  304   0x59715  3      
  js .L_59840                       #  305   0x59718  6      
  nop                               #  306   0x5971e  1      
.L_59860:                           #        0x5971f  0      
  movl %edi, %eax                   #  307   0x5971f  2      
  shll $0x4, %eax                   #  308   0x59721  3      
  cltq                              #  309   0x59724  2      
  leaq (%r12,%rax,1), %rax          #  310   0x59726  4      
  movl %eax, %eax                   #  311   0x5972a  2      
  movl $0x0, 0x8(%r15,%rax,1)       #  312   0x5972c  9      
  jmpq .L_59420                     #  313   0x59735  5      
  nop                               #  314   0x5973a  1      
  xorl %edi, %edi                   #  315   0x5973b  2      
  xorl %ecx, %ecx                   #  316   0x5973d  2      
  nop                               #  317   0x5973f  1      
  nop                               #  318   0x59740  1      
.L_598a0:                           #        0x59741  0      
  movl %ebx, %ebx                   #  319   0x59741  2      
  movzbl (%r15,%rbx,1), %esi        #  320   0x59743  5      
  addl $0x1, %ebx                   #  321   0x59748  3      
  movl %esi, %eax                   #  322   0x5974b  2      
  andl $0x7f, %eax                  #  323   0x5974d  3      
  shll %cl, %eax                    #  324   0x59750  2      
  addl $0x7, %ecx                   #  325   0x59752  3      
  orl %eax, %edi                    #  326   0x59755  2      
  testb %sil, %sil                  #  327   0x59757  3      
  js .L_598a0                       #  328   0x5975a  6      
  movl %edi, %eax                   #  329   0x59760  2      
  shll $0x4, %eax                   #  330   0x59762  3      
  cltq                              #  331   0x59765  2      
  leaq (%r12,%rax,1), %rax          #  332   0x59767  4      
  movl %eax, %eax                   #  333   0x5976b  2      
  movl $0x6, 0x8(%r15,%rax,1)       #  334   0x5976d  9      
  jmpq .L_59420                     #  335   0x59776  5      
  nop                               #  336   0x5977b  1      
  xorl %edi, %edi                   #  337   0x5977c  2      
  xorl %ecx, %ecx                   #  338   0x5977e  2      
  nop                               #  339   0x59780  1      
  nop                               #  340   0x59781  1      
.L_59900:                           #        0x59782  0      
  movl %ebx, %ebx                   #  341   0x59782  2      
  movzbl (%r15,%rbx,1), %esi        #  342   0x59784  5      
  addl $0x1, %ebx                   #  343   0x59789  3      
  movl %esi, %eax                   #  344   0x5978c  2      
  andl $0x7f, %eax                  #  345   0x5978e  3      
  shll %cl, %eax                    #  346   0x59791  2      
  addl $0x7, %ecx                   #  347   0x59793  3      
  orl %eax, %edi                    #  348   0x59796  2      
  testb %sil, %sil                  #  349   0x59798  3      
  js .L_59900                       #  350   0x5979b  6      
  jmpq .L_59860                     #  351   0x597a1  5      
  xorl %r8d, %r8d                   #  352   0x597a6  3      
  xorl %ecx, %ecx                   #  353   0x597a9  2      
  nop                               #  354   0x597ab  1      
  nop                               #  355   0x597ac  1      
.L_59940:                           #        0x597ad  0      
  movl %ebx, %ebx                   #  356   0x597ad  2      
  movzbl (%r15,%rbx,1), %esi        #  357   0x597af  5      
  addl $0x1, %ebx                   #  358   0x597b4  3      
  movl %esi, %eax                   #  359   0x597b7  2      
  andl $0x7f, %eax                  #  360   0x597b9  3      
  shll %cl, %eax                    #  361   0x597bc  2      
  addl $0x7, %ecx                   #  362   0x597be  3      
  orl %eax, %r8d                    #  363   0x597c1  3      
  testb %sil, %sil                  #  364   0x597c4  3      
  js .L_59940                       #  365   0x597c7  6      
  xorl %edi, %edi                   #  366   0x597cd  2      
  xorl %ecx, %ecx                   #  367   0x597cf  2      
.L_59960:                           #        0x597d1  0      
  movl %ebx, %ebx                   #  368   0x597d1  2      
  movzbl (%r15,%rbx,1), %esi        #  369   0x597d3  5      
  addl $0x1, %ebx                   #  370   0x597d8  3      
  movl %esi, %eax                   #  371   0x597db  2      
  andl $0x7f, %eax                  #  372   0x597dd  3      
  shll %cl, %eax                    #  373   0x597e0  2      
  addl $0x7, %ecx                   #  374   0x597e2  3      
  orl %eax, %edi                    #  375   0x597e5  2      
  testb %sil, %sil                  #  376   0x597e7  3      
  js .L_59960                       #  377   0x597ea  6      
  movl %r8d, %eax                   #  378   0x597f0  3      
  movl %edi, %edi                   #  379   0x597f3  2      
  shll $0x4, %eax                   #  380   0x597f5  3      
  cltq                              #  381   0x597f8  2      
  leaq (%r12,%rax,1), %rax          #  382   0x597fa  4      
  movl %eax, %eax                   #  383   0x597fe  2      
  movl $0x2, 0x8(%r15,%rax,1)       #  384   0x59800  9      
  movl %eax, %eax                   #  385   0x59809  2      
  movq %rdi, (%r15,%rax,1)          #  386   0x5980b  4      
  jmpq .L_59420                     #  387   0x5980f  5      
  nop                               #  388   0x59814  1      
  testq %r9, %r9                    #  389   0x59815  3      
  je .L_5a400                       #  390   0x59818  6      
  movq %r9, %rax                    #  391   0x5981e  3      
  movl %r9d, %r9d                   #  392   0x59821  3      
  movl 0x120(%r15,%r9,1), %r9d      #  393   0x59824  8      
  nop                               #  394   0x5982c  1      
.L_599c0:                           #        0x5982d  0      
  movq %rax, %rdi                   #  395   0x5982d  3      
  movq %r12, %rsi                   #  396   0x59830  3      
  movl $0x28, %ecx                  #  397   0x59833  5      
  movl %esi, %esi                   #  398   0x59838  2      
  leaq (%r15,%rsi,1), %rsi          #  399   0x5983a  4      
  movl %edi, %edi                   #  400   0x5983e  2      
  leaq (%r15,%rdi,1), %rdi          #  401   0x59840  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  402   0x59844  4      
  movl %esi, %esi                   #  403   0x59848  2      
  movl %edi, %edi                   #  404   0x5984a  2      
  xchgw %ax, %ax                    #  405   0x5984c  3      
  movl %r12d, %r12d                 #  406   0x5984f  3      
  movl %eax, 0x120(%r15,%r12,1)     #  407   0x59852  8      
  jmpq .L_59420                     #  408   0x5985a  5      
  nop                               #  409   0x5985f  1      
  nop                               #  410   0x59860  1      
  movl %r12d, %r12d                 #  411   0x59861  3      
  movl 0x120(%r15,%r12,1), %eax     #  412   0x59864  8      
  movq %r12, %rdi                   #  413   0x5986c  3      
  movl $0x28, %ecx                  #  414   0x5986f  5      
  movq %rax, %rsi                   #  415   0x59874  3      
  nop                               #  416   0x59877  1      
  movl %esi, %esi                   #  417   0x59878  2      
  leaq (%r15,%rsi,1), %rsi          #  418   0x5987a  4      
  movl %edi, %edi                   #  419   0x5987e  2      
  leaq (%r15,%rdi,1), %rdi          #  420   0x59880  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  421   0x59884  4      
  movl %esi, %esi                   #  422   0x59888  2      
  movl %edi, %edi                   #  423   0x5988a  2      
  movl %eax, %eax                   #  424   0x5988c  2      
  movl %r9d, 0x120(%r15,%rax,1)     #  425   0x5988e  8      
  movq %rax, %r9                    #  426   0x59896  3      
  jmpq .L_59420                     #  427   0x59899  5      
  nop                               #  428   0x5989e  1      
  nop                               #  429   0x5989f  1      
  xorl %edi, %edi                   #  430   0x598a0  2      
  xorl %ecx, %ecx                   #  431   0x598a2  2      
  nop                               #  432   0x598a4  1      
  nop                               #  433   0x598a5  1      
.L_59a80:                           #        0x598a6  0      
  movl %ebx, %ebx                   #  434   0x598a6  2      
  movzbl (%r15,%rbx,1), %esi        #  435   0x598a8  5      
  addl $0x1, %ebx                   #  436   0x598ad  3      
  movl %esi, %eax                   #  437   0x598b0  2      
  andl $0x7f, %eax                  #  438   0x598b2  3      
  shll %cl, %eax                    #  439   0x598b5  2      
  addl $0x7, %ecx                   #  440   0x598b7  3      
  orl %eax, %edi                    #  441   0x598ba  2      
  testb %sil, %sil                  #  442   0x598bc  3      
  js .L_59a80                       #  443   0x598bf  6      
  movl %edi, %edi                   #  444   0x598c5  2      
  xorl %ecx, %ecx                   #  445   0x598c7  2      
  nop                               #  446   0x598c9  1      
  movl %r12d, %r12d                 #  447   0x598ca  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  448   0x598cd  8      
  xorl %edi, %edi                   #  449   0x598d5  2      
  nop                               #  450   0x598d7  1      
  nop                               #  451   0x598d8  1      
.L_59ac0:                           #        0x598d9  0      
  movl %ebx, %ebx                   #  452   0x598d9  2      
  movzbl (%r15,%rbx,1), %esi        #  453   0x598db  5      
  addl $0x1, %ebx                   #  454   0x598e0  3      
  movl %esi, %eax                   #  455   0x598e3  2      
  andl $0x7f, %eax                  #  456   0x598e5  3      
  shll %cl, %eax                    #  457   0x598e8  2      
  addl $0x7, %ecx                   #  458   0x598ea  3      
  orl %eax, %edi                    #  459   0x598ed  2      
  testb %sil, %sil                  #  460   0x598ef  3      
  js .L_59ac0                       #  461   0x598f2  6      
  movl %edi, %edi                   #  462   0x598f8  2      
  nop                               #  463   0x598fa  1      
  movl %r12d, %r12d                 #  464   0x598fb  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  465   0x598fe  12     
  movl %r12d, %r12d                 #  466   0x5990a  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  467   0x5990d  8      
  jmpq .L_59420                     #  468   0x59915  5      
  nop                               #  469   0x5991a  1      
  xorl %edi, %edi                   #  470   0x5991b  2      
  xorl %ecx, %ecx                   #  471   0x5991d  2      
  nop                               #  472   0x5991f  1      
  nop                               #  473   0x59920  1      
.L_59b20:                           #        0x59921  0      
  movl %ebx, %ebx                   #  474   0x59921  2      
  movzbl (%r15,%rbx,1), %esi        #  475   0x59923  5      
  addl $0x1, %ebx                   #  476   0x59928  3      
  movl %esi, %eax                   #  477   0x5992b  2      
  andl $0x7f, %eax                  #  478   0x5992d  3      
  shll %cl, %eax                    #  479   0x59930  2      
  addl $0x7, %ecx                   #  480   0x59932  3      
  orl %eax, %edi                    #  481   0x59935  2      
  testb %sil, %sil                  #  482   0x59937  3      
  js .L_59b20                       #  483   0x5993a  6      
  movl %edi, %edi                   #  484   0x59940  2      
  nop                               #  485   0x59942  1      
  movl %r12d, %r12d                 #  486   0x59943  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  487   0x59946  12     
  movl %r12d, %r12d                 #  488   0x59952  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  489   0x59955  8      
  jmpq .L_59420                     #  490   0x5995d  5      
  nop                               #  491   0x59962  1      
  xorl %edi, %edi                   #  492   0x59963  2      
  xorl %ecx, %ecx                   #  493   0x59965  2      
  nop                               #  494   0x59967  1      
  nop                               #  495   0x59968  1      
.L_59b80:                           #        0x59969  0      
  movl %ebx, %ebx                   #  496   0x59969  2      
  movzbl (%r15,%rbx,1), %esi        #  497   0x5996b  5      
  addl $0x1, %ebx                   #  498   0x59970  3      
  movl %esi, %eax                   #  499   0x59973  2      
  andl $0x7f, %eax                  #  500   0x59975  3      
  shll %cl, %eax                    #  501   0x59978  2      
  addl $0x7, %ecx                   #  502   0x5997a  3      
  orl %eax, %edi                    #  503   0x5997d  2      
  testb %sil, %sil                  #  504   0x5997f  3      
  js .L_59b80                       #  505   0x59982  6      
  movl %edi, %edi                   #  506   0x59988  2      
  nop                               #  507   0x5998a  1      
  movl %r12d, %r12d                 #  508   0x5998b  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  509   0x5998e  8      
  jmpq .L_59420                     #  510   0x59996  5      
  nop                               #  511   0x5999b  1      
  nop                               #  512   0x5999c  1      
  movl %r12d, %r12d                 #  513   0x5999d  3      
  movl %ebx, 0x138(%r15,%r12,1)     #  514   0x599a0  8      
  movl %r12d, %r12d                 #  515   0x599a8  3      
  movl $0x2, 0x13c(%r15,%r12,1)     #  516   0x599ab  12     
  xorl %edi, %edi                   #  517   0x599b7  2      
  xorl %ecx, %ecx                   #  518   0x599b9  2      
  xchgw %ax, %ax                    #  519   0x599bb  3      
.L_59be0:                           #        0x599be  0      
  movl %ebx, %ebx                   #  520   0x599be  2      
  movzbl (%r15,%rbx,1), %esi        #  521   0x599c0  5      
  addl $0x1, %ebx                   #  522   0x599c5  3      
  movl %esi, %eax                   #  523   0x599c8  2      
  andl $0x7f, %eax                  #  524   0x599ca  3      
  shll %cl, %eax                    #  525   0x599cd  2      
  addl $0x7, %ecx                   #  526   0x599cf  3      
  orl %eax, %edi                    #  527   0x599d2  2      
  testb %sil, %sil                  #  528   0x599d4  3      
  js .L_59be0                       #  529   0x599d7  6      
  leal (%rdi,%rbx,1), %ebx          #  530   0x599dd  3      
  xchgw %ax, %ax                    #  531   0x599e0  3      
  jmpq .L_59420                     #  532   0x599e3  5      
  nop                               #  533   0x599e8  1      
  nop                               #  534   0x599e9  1      
  xorl %edi, %edi                   #  535   0x599ea  2      
  xorl %ecx, %ecx                   #  536   0x599ec  2      
  nop                               #  537   0x599ee  1      
  nop                               #  538   0x599ef  1      
.L_59c40:                           #        0x599f0  0      
  movl %ebx, %ebx                   #  539   0x599f0  2      
  movzbl (%r15,%rbx,1), %esi        #  540   0x599f2  5      
  addl $0x1, %ebx                   #  541   0x599f7  3      
  movl %esi, %eax                   #  542   0x599fa  2      
  andl $0x7f, %eax                  #  543   0x599fc  3      
  shll %cl, %eax                    #  544   0x599ff  2      
  addl $0x7, %ecx                   #  545   0x59a01  3      
  orl %eax, %edi                    #  546   0x59a04  2      
  testb %sil, %sil                  #  547   0x59a06  3      
  js .L_59c40                       #  548   0x59a09  6      
  movl %edi, %eax                   #  549   0x59a0f  2      
  xorl %ecx, %ecx                   #  550   0x59a11  2      
  nop                               #  551   0x59a13  1      
  xorl %edi, %edi                   #  552   0x59a14  2      
  shll $0x4, %eax                   #  553   0x59a16  3      
  cltq                              #  554   0x59a19  2      
  leaq (%r12,%rax,1), %rax          #  555   0x59a1b  4      
  movl %eax, %eax                   #  556   0x59a1f  2      
  movl $0x3, 0x8(%r15,%rax,1)       #  557   0x59a21  9      
  movl %eax, %eax                   #  558   0x59a2a  2      
  movl %ebx, (%r15,%rax,1)          #  559   0x59a2c  4      
  nop                               #  560   0x59a30  1      
.L_59c80:                           #        0x59a31  0      
  movl %ebx, %ebx                   #  561   0x59a31  2      
  movzbl (%r15,%rbx,1), %esi        #  562   0x59a33  5      
  addl $0x1, %ebx                   #  563   0x59a38  3      
  movl %esi, %eax                   #  564   0x59a3b  2      
  andl $0x7f, %eax                  #  565   0x59a3d  3      
  shll %cl, %eax                    #  566   0x59a40  2      
  addl $0x7, %ecx                   #  567   0x59a42  3      
  orl %eax, %edi                    #  568   0x59a45  2      
  testb %sil, %sil                  #  569   0x59a47  3      
  js .L_59c80                       #  570   0x59a4a  6      
  leal (%rdi,%rbx,1), %ebx          #  571   0x59a50  3      
  xchgw %ax, %ax                    #  572   0x59a53  3      
  jmpq .L_59420                     #  573   0x59a56  5      
  nop                               #  574   0x59a5b  1      
  nop                               #  575   0x59a5c  1      
  xorl %r8d, %r8d                   #  576   0x59a5d  3      
  xorl %ecx, %ecx                   #  577   0x59a60  2      
  nop                               #  578   0x59a62  1      
  nop                               #  579   0x59a63  1      
.L_59ce0:                           #        0x59a64  0      
  movl %ebx, %ebx                   #  580   0x59a64  2      
  movzbl (%r15,%rbx,1), %esi        #  581   0x59a66  5      
  addl $0x1, %ebx                   #  582   0x59a6b  3      
  movl %esi, %eax                   #  583   0x59a6e  2      
  andl $0x7f, %eax                  #  584   0x59a70  3      
  shll %cl, %eax                    #  585   0x59a73  2      
  addl $0x7, %ecx                   #  586   0x59a75  3      
  orl %eax, %r8d                    #  587   0x59a78  3      
  testb %sil, %sil                  #  588   0x59a7b  3      
  js .L_59ce0                       #  589   0x59a7e  6      
  movl -0x38(%rbp), %esi            #  590   0x59a84  3      
  nop                               #  591   0x59a87  1      
  movl %ebx, %edi                   #  592   0x59a88  2      
  movq %rdx, -0x70(%rbp)            #  593   0x59a8a  4      
  movl %r8d, -0x68(%rbp)            #  594   0x59a8e  4      
  movq %r9, -0x78(%rbp)             #  595   0x59a92  4      
  nop                               #  596   0x59a96  1      
  callq .read_sleb128               #  597   0x59a97  5      
  movl -0x68(%rbp), %r8d            #  598   0x59a9c  4      
  movl %eax, %ebx                   #  599   0x59aa0  2      
  movl -0x24(%rbp), %eax            #  600   0x59aa2  3      
  movl %r12d, %r12d                 #  601   0x59aa5  3      
  imull 0x148(%r15,%r12,1), %eax    #  602   0x59aa8  9      
  movl %r8d, %ecx                   #  603   0x59ab1  3      
  shll $0x4, %ecx                   #  604   0x59ab4  3      
  movslq %ecx, %rcx                 #  605   0x59ab7  3      
  xchgw %ax, %ax                    #  606   0x59aba  3      
  leaq (%r12,%rcx,1), %rcx          #  607   0x59abd  4      
  cltq                              #  608   0x59ac1  2      
  movl %ecx, %ecx                   #  609   0x59ac3  2      
  movq %rax, (%r15,%rcx,1)          #  610   0x59ac5  4      
  movl %ecx, %ecx                   #  611   0x59ac9  2      
  movl $0x1, 0x8(%r15,%rcx,1)       #  612   0x59acb  9      
  movq -0x70(%rbp), %rdx            #  613   0x59ad4  4      
  movq -0x78(%rbp), %r9             #  614   0x59ad8  4      
  nop                               #  615   0x59adc  1      
  jmpq .L_59420                     #  616   0x59add  5      
  nop                               #  617   0x59ae2  1      
  nop                               #  618   0x59ae3  1      
  xorl %edi, %edi                   #  619   0x59ae4  2      
  xorl %ecx, %ecx                   #  620   0x59ae6  2      
  nop                               #  621   0x59ae8  1      
  nop                               #  622   0x59ae9  1      
.L_59da0:                           #        0x59aea  0      
  movl %ebx, %ebx                   #  623   0x59aea  2      
  movzbl (%r15,%rbx,1), %esi        #  624   0x59aec  5      
  addl $0x1, %ebx                   #  625   0x59af1  3      
  movl %esi, %eax                   #  626   0x59af4  2      
  andl $0x7f, %eax                  #  627   0x59af6  3      
  shll %cl, %eax                    #  628   0x59af9  2      
  addl $0x7, %ecx                   #  629   0x59afb  3      
  orl %eax, %edi                    #  630   0x59afe  2      
  testb %sil, %sil                  #  631   0x59b00  3      
  js .L_59da0                       #  632   0x59b03  6      
  movl -0x38(%rbp), %esi            #  633   0x59b09  3      
  movl %edi, %edi                   #  634   0x59b0c  2      
  movq %rdx, -0x70(%rbp)            #  635   0x59b0e  4      
  movl %r12d, %r12d                 #  636   0x59b12  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  637   0x59b15  8      
  movl %ebx, %edi                   #  638   0x59b1d  2      
  movq %r9, -0x78(%rbp)             #  639   0x59b1f  4      
  nop                               #  640   0x59b23  1      
  callq .read_sleb128               #  641   0x59b24  5      
  movl %eax, %ebx                   #  642   0x59b29  2      
  movslq -0x24(%rbp), %rax          #  643   0x59b2b  4      
  movl %r12d, %r12d                 #  644   0x59b2f  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  645   0x59b32  12     
  nop                               #  646   0x59b3e  1      
  movl %r12d, %r12d                 #  647   0x59b3f  3      
  imulq 0x148(%r15,%r12,1), %rax    #  648   0x59b42  9      
  movq -0x70(%rbp), %rdx            #  649   0x59b4b  4      
  movq -0x78(%rbp), %r9             #  650   0x59b4f  4      
  movl %r12d, %r12d                 #  651   0x59b53  3      
  movq %rax, 0x128(%r15,%r12,1)     #  652   0x59b56  8      
  nop                               #  653   0x59b5e  1      
  jmpq .L_59420                     #  654   0x59b5f  5      
  nop                               #  655   0x59b64  1      
  nop                               #  656   0x59b65  1      
  movl -0x38(%rbp), %esi            #  657   0x59b66  3      
  movl %ebx, %edi                   #  658   0x59b69  2      
  movq %rdx, -0x70(%rbp)            #  659   0x59b6b  4      
  movq %r9, -0x78(%rbp)             #  660   0x59b6f  4      
  nop                               #  661   0x59b73  1      
  callq .read_sleb128               #  662   0x59b74  5      
  movl %eax, %ebx                   #  663   0x59b79  2      
  movslq -0x24(%rbp), %rax          #  664   0x59b7b  4      
  movq -0x70(%rbp), %rdx            #  665   0x59b7f  4      
  movl %r12d, %r12d                 #  666   0x59b83  3      
  imulq 0x148(%r15,%r12,1), %rax    #  667   0x59b86  9      
  movq -0x78(%rbp), %r9             #  668   0x59b8f  4      
  nop                               #  669   0x59b93  1      
  movl %r12d, %r12d                 #  670   0x59b94  3      
  movq %rax, 0x128(%r15,%r12,1)     #  671   0x59b97  8      
  jmpq .L_59420                     #  672   0x59b9f  5      
  nop                               #  673   0x59ba4  1      
  nop                               #  674   0x59ba5  1      
  xorl %edi, %edi                   #  675   0x59ba6  2      
  xorl %ecx, %ecx                   #  676   0x59ba8  2      
  nop                               #  677   0x59baa  1      
  nop                               #  678   0x59bab  1      
.L_59ec0:                           #        0x59bac  0      
  movl %ebx, %ebx                   #  679   0x59bac  2      
  movzbl (%r15,%rbx,1), %esi        #  680   0x59bae  5      
  addl $0x1, %ebx                   #  681   0x59bb3  3      
  movl %esi, %eax                   #  682   0x59bb6  2      
  andl $0x7f, %eax                  #  683   0x59bb8  3      
  shll %cl, %eax                    #  684   0x59bbb  2      
  addl $0x7, %ecx                   #  685   0x59bbd  3      
  orl %eax, %edi                    #  686   0x59bc0  2      
  testb %sil, %sil                  #  687   0x59bc2  3      
  js .L_59ec0                       #  688   0x59bc5  6      
  xorl %r8d, %r8d                   #  689   0x59bcb  3      
  xorl %ecx, %ecx                   #  690   0x59bce  2      
.L_59ee0:                           #        0x59bd0  0      
  movl %ebx, %ebx                   #  691   0x59bd0  2      
  movzbl (%r15,%rbx,1), %esi        #  692   0x59bd2  5      
  addl $0x1, %ebx                   #  693   0x59bd7  3      
  movl %esi, %eax                   #  694   0x59bda  2      
  andl $0x7f, %eax                  #  695   0x59bdc  3      
  shll %cl, %eax                    #  696   0x59bdf  2      
  addl $0x7, %ecx                   #  697   0x59be1  3      
  orl %eax, %r8d                    #  698   0x59be4  3      
  testb %sil, %sil                  #  699   0x59be7  3      
  js .L_59ee0                       #  700   0x59bea  6      
  nop                               #  701   0x59bf0  1      
  movl %r12d, %r12d                 #  702   0x59bf1  3      
  movl 0x148(%r15,%r12,1), %ecx     #  703   0x59bf4  8      
  movl %edi, %eax                   #  704   0x59bfc  2      
  shll $0x4, %eax                   #  705   0x59bfe  3      
  cltq                              #  706   0x59c01  2      
  imull %r8d, %ecx                  #  707   0x59c03  4      
  leaq (%r12,%rax,1), %rax          #  708   0x59c07  4      
  nop                               #  709   0x59c0b  1      
  movl %eax, %eax                   #  710   0x59c0c  2      
  movl $0x4, 0x8(%r15,%rax,1)       #  711   0x59c0e  9      
  movslq %ecx, %rcx                 #  712   0x59c17  3      
  movl %eax, %eax                   #  713   0x59c1a  2      
  movq %rcx, (%r15,%rax,1)          #  714   0x59c1c  4      
  jmpq .L_59420                     #  715   0x59c20  5      
  nop                               #  716   0x59c25  1      
  xorl %r8d, %r8d                   #  717   0x59c26  3      
  xorl %ecx, %ecx                   #  718   0x59c29  2      
  nop                               #  719   0x59c2b  1      
  nop                               #  720   0x59c2c  1      
.L_59f60:                           #        0x59c2d  0      
  movl %ebx, %ebx                   #  721   0x59c2d  2      
  movzbl (%r15,%rbx,1), %esi        #  722   0x59c2f  5      
  addl $0x1, %ebx                   #  723   0x59c34  3      
  movl %esi, %eax                   #  724   0x59c37  2      
  andl $0x7f, %eax                  #  725   0x59c39  3      
  shll %cl, %eax                    #  726   0x59c3c  2      
  addl $0x7, %ecx                   #  727   0x59c3e  3      
  orl %eax, %r8d                    #  728   0x59c41  3      
  testb %sil, %sil                  #  729   0x59c44  3      
  js .L_59f60                       #  730   0x59c47  6      
  movl -0x38(%rbp), %esi            #  731   0x59c4d  3      
  nop                               #  732   0x59c50  1      
  movl %ebx, %edi                   #  733   0x59c51  2      
  movq %rdx, -0x70(%rbp)            #  734   0x59c53  4      
  movl %r8d, -0x68(%rbp)            #  735   0x59c57  4      
  movq %r9, -0x78(%rbp)             #  736   0x59c5b  4      
  nop                               #  737   0x59c5f  1      
  callq .read_sleb128               #  738   0x59c60  5      
  movl -0x68(%rbp), %r8d            #  739   0x59c65  4      
  movl %eax, %ebx                   #  740   0x59c69  2      
  movl -0x24(%rbp), %eax            #  741   0x59c6b  3      
  movl %r12d, %r12d                 #  742   0x59c6e  3      
  imull 0x148(%r15,%r12,1), %eax    #  743   0x59c71  9      
  movl %r8d, %ecx                   #  744   0x59c7a  3      
  shll $0x4, %ecx                   #  745   0x59c7d  3      
  movslq %ecx, %rcx                 #  746   0x59c80  3      
  xchgw %ax, %ax                    #  747   0x59c83  3      
  leaq (%r12,%rcx,1), %rcx          #  748   0x59c86  4      
  cltq                              #  749   0x59c8a  2      
  movl %ecx, %ecx                   #  750   0x59c8c  2      
  movq %rax, (%r15,%rcx,1)          #  751   0x59c8e  4      
  movl %ecx, %ecx                   #  752   0x59c92  2      
  movl $0x4, 0x8(%r15,%rcx,1)       #  753   0x59c94  9      
  movq -0x70(%rbp), %rdx            #  754   0x59c9d  4      
  movq -0x78(%rbp), %r9             #  755   0x59ca1  4      
  nop                               #  756   0x59ca5  1      
  jmpq .L_59420                     #  757   0x59ca6  5      
  nop                               #  758   0x59cab  1      
  nop                               #  759   0x59cac  1      
  xorl %edi, %edi                   #  760   0x59cad  2      
  xorl %ecx, %ecx                   #  761   0x59caf  2      
  nop                               #  762   0x59cb1  1      
  nop                               #  763   0x59cb2  1      
.L_5a020:                           #        0x59cb3  0      
  movl %ebx, %ebx                   #  764   0x59cb3  2      
  movzbl (%r15,%rbx,1), %esi        #  765   0x59cb5  5      
  addl $0x1, %ebx                   #  766   0x59cba  3      
  movl %esi, %eax                   #  767   0x59cbd  2      
  andl $0x7f, %eax                  #  768   0x59cbf  3      
  shll %cl, %eax                    #  769   0x59cc2  2      
  addl $0x7, %ecx                   #  770   0x59cc4  3      
  orl %eax, %edi                    #  771   0x59cc7  2      
  testb %sil, %sil                  #  772   0x59cc9  3      
  js .L_5a020                       #  773   0x59ccc  6      
  movl %edi, %eax                   #  774   0x59cd2  2      
  xorl %ecx, %ecx                   #  775   0x59cd4  2      
  nop                               #  776   0x59cd6  1      
  xorl %edi, %edi                   #  777   0x59cd7  2      
  shll $0x4, %eax                   #  778   0x59cd9  3      
  cltq                              #  779   0x59cdc  2      
  leaq (%r12,%rax,1), %rax          #  780   0x59cde  4      
  movl %eax, %eax                   #  781   0x59ce2  2      
  movl $0x5, 0x8(%r15,%rax,1)       #  782   0x59ce4  9      
  movl %eax, %eax                   #  783   0x59ced  2      
  movl %ebx, (%r15,%rax,1)          #  784   0x59cef  4      
  nop                               #  785   0x59cf3  1      
.L_5a060:                           #        0x59cf4  0      
  movl %ebx, %ebx                   #  786   0x59cf4  2      
  movzbl (%r15,%rbx,1), %esi        #  787   0x59cf6  5      
  addl $0x1, %ebx                   #  788   0x59cfb  3      
  movl %esi, %eax                   #  789   0x59cfe  2      
  andl $0x7f, %eax                  #  790   0x59d00  3      
  shll %cl, %eax                    #  791   0x59d03  2      
  addl $0x7, %ecx                   #  792   0x59d05  3      
  orl %eax, %edi                    #  793   0x59d08  2      
  testb %sil, %sil                  #  794   0x59d0a  3      
  js .L_5a060                       #  795   0x59d0d  6      
  leal (%rdi,%rbx,1), %ebx          #  796   0x59d13  3      
  xchgw %ax, %ax                    #  797   0x59d16  3      
  jmpq .L_59420                     #  798   0x59d19  5      
  nop                               #  799   0x59d1e  1      
  nop                               #  800   0x59d1f  1      
  movl -0x3c(%rbp), %ecx            #  801   0x59d20  3      
  xorl %eax, %eax                   #  802   0x59d23  2      
  nop                               #  803   0x59d25  1      
  nop                               #  804   0x59d26  1      
.L_5a0c0:                           #        0x59d27  0      
  movl %ecx, %esi                   #  805   0x59d27  2      
  addl $0x10, %ecx                  #  806   0x59d29  3      
  movl %esi, %esi                   #  807   0x59d2c  2      
  movq %rax, 0x100(%r15,%rsi,1)     #  808   0x59d2e  8      
  addq $0x4, %rax                   #  809   0x59d36  4      
  nop                               #  810   0x59d3a  1      
  movl %esi, %esi                   #  811   0x59d3b  2      
  movl $0x1, 0x108(%r15,%rsi,1)     #  812   0x59d3d  12     
  cmpq $0x40, %rax                  #  813   0x59d49  4      
  jne .L_5a0c0                      #  814   0x59d4d  6      
  jmpq .L_59420                     #  815   0x59d53  5      
  nop                               #  816   0x59d58  1      
  xorl %edi, %edi                   #  817   0x59d59  2      
  xorl %ecx, %ecx                   #  818   0x59d5b  2      
  nop                               #  819   0x59d5d  1      
  nop                               #  820   0x59d5e  1      
.L_5a120:                           #        0x59d5f  0      
  movl %ebx, %ebx                   #  821   0x59d5f  2      
  movzbl (%r15,%rbx,1), %esi        #  822   0x59d61  5      
  addl $0x1, %ebx                   #  823   0x59d66  3      
  movl %esi, %eax                   #  824   0x59d69  2      
  andl $0x7f, %eax                  #  825   0x59d6b  3      
  shll %cl, %eax                    #  826   0x59d6e  2      
  addl $0x7, %ecx                   #  827   0x59d70  3      
  orl %eax, %edi                    #  828   0x59d73  2      
  testb %sil, %sil                  #  829   0x59d75  3      
  js .L_5a120                       #  830   0x59d78  6      
  movl %edi, %edi                   #  831   0x59d7e  2      
  nop                               #  832   0x59d80  1      
  movl %r13d, %r13d                 #  833   0x59d81  3      
  movq %rdi, 0x70(%r15,%r13,1)      #  834   0x59d84  5      
  jmpq .L_59420                     #  835   0x59d89  5      
  nop                               #  836   0x59d8e  1      
  nop                               #  837   0x59d8f  1      
.L_5a160:                           #        0x59d90  0      
  movq %rbx, -0x50(%rbp)            #  838   0x59d90  4      
  xorl %r11d, %r11d                 #  839   0x59d94  3      
  nop                               #  840   0x59d97  1      
  nop                               #  841   0x59d98  1      
.L_5a180:                           #        0x59d99  0      
  movl %r10d, %eax                  #  842   0x59d99  3      
  andl $0xf, %eax                   #  843   0x59d9c  3      
  cmpl $0xc, %eax                   #  844   0x59d9f  3      
  ja .L_593e0                       #  845   0x59da2  6      
  leal 0xffc8c7f(%rip), %ecx        #  846   0x59da8  6      
  movl %eax, %eax                   #  847   0x59dae  2      
  leaq (%rcx,%rax,4), %rax          #  848   0x59db0  4      
  nop                               #  849   0x59db4  1      
  movl %eax, %eax                   #  850   0x59db5  2      
  movslq (%r15,%rax,1), %rax        #  851   0x59db7  4      
  addq %rcx, %rax                   #  852   0x59dbb  3      
  andl $0xffffffe0, %eax            #  853   0x59dbe  5      
  addq %r15, %rax                   #  854   0x59dc3  3      
  jmpq %rax                         #  855   0x59dc6  2      
  nop                               #  856   0x59dc8  1      
.L_5a1c0:                           #        0x59dc9  0      
  cmpl $0x40, %eax                  #  857   0x59dc9  3      
  je .L_5a380                       #  858   0x59dcc  6      
  cmpl $0x50, %eax                  #  859   0x59dd2  3      
  je .L_59640                       #  860   0x59dd5  6      
  cmpl $0x30, %eax                  #  861   0x59ddb  3      
  jne .L_593e0                      #  862   0x59dde  6      
  movl %r13d, %edi                  #  863   0x59de4  3      
  xchgw %ax, %ax                    #  864   0x59de7  3      
  movq %rdx, -0x70(%rbp)            #  865   0x59dea  4      
  movb %r8b, -0x68(%rbp)            #  866   0x59dee  4      
  movq %r9, -0x78(%rbp)             #  867   0x59df2  4      
  movl %r10d, -0x60(%rbp)           #  868   0x59df6  4      
  nop                               #  869   0x59dfa  1      
  callq ._Unwind_GetDataRelBase     #  870   0x59dfb  5      
.L_5a200:                           #        0x59e00  0      
  movl %eax, %r11d                  #  871   0x59e00  3      
  movq -0x70(%rbp), %rdx            #  872   0x59e03  4      
  movzbl -0x68(%rbp), %r8d          #  873   0x59e07  5      
  movq -0x78(%rbp), %r9             #  874   0x59e0c  4      
  movl -0x60(%rbp), %r10d           #  875   0x59e10  4      
  jmpq .L_59660                     #  876   0x59e14  5      
  nop                               #  877   0x59e19  1      
  movl %ebx, %ebx                   #  878   0x59e1a  2      
  movl (%r15,%rbx,1), %eax          #  879   0x59e1c  4      
  addl $0x4, %ebx                   #  880   0x59e20  3      
  nop                               #  881   0x59e23  1      
  nop                               #  882   0x59e24  1      
.L_5a240:                           #        0x59e25  0      
  xorl %ecx, %ecx                   #  883   0x59e25  2      
  testl %eax, %eax                  #  884   0x59e27  2      
  je .L_596a0                       #  885   0x59e29  6      
  andl $0x70, %r10d                 #  886   0x59e2f  4      
  cmpl $0x10, %r10d                 #  887   0x59e33  4      
  cmovel -0x50(%rbp), %r11d         #  888   0x59e37  5      
  testb %r8b, %r8b                  #  889   0x59e3c  3      
  leal (%r11,%rax,1), %eax          #  890   0x59e3f  4      
  movl %eax, %ecx                   #  891   0x59e43  2      
  jns .L_596a0                      #  892   0x59e45  6      
  movl %eax, %eax                   #  893   0x59e4b  2      
  movl %eax, %eax                   #  894   0x59e4d  2      
  movl (%r15,%rax,1), %ecx          #  895   0x59e4f  4      
  jmpq .L_596a0                     #  896   0x59e53  5      
  nop                               #  897   0x59e58  1      
  movl %ebx, %ebx                   #  898   0x59e59  2      
  movl (%r15,%rbx,1), %eax          #  899   0x59e5b  4      
  addl $0x8, %ebx                   #  900   0x59e5f  3      
  jmpq .L_5a240                     #  901   0x59e62  5      
  nop                               #  902   0x59e67  1      
  nop                               #  903   0x59e68  1      
  movl %ebx, %ebx                   #  904   0x59e69  2      
  movzwl (%r15,%rbx,1), %eax        #  905   0x59e6b  5      
  addl $0x2, %ebx                   #  906   0x59e70  3      
  jmpq .L_5a240                     #  907   0x59e73  5      
  nop                               #  908   0x59e78  1      
  nop                               #  909   0x59e79  1      
  xorl %eax, %eax                   #  910   0x59e7a  2      
  xorl %ecx, %ecx                   #  911   0x59e7c  2      
  nop                               #  912   0x59e7e  1      
  nop                               #  913   0x59e7f  1      
.L_5a2e0:                           #        0x59e80  0      
  movl %ebx, %ebx                   #  914   0x59e80  2      
  movzbl (%r15,%rbx,1), %edi        #  915   0x59e82  5      
  movl $0x7f, %esi                  #  916   0x59e87  5      
  addl $0x1, %ebx                   #  917   0x59e8c  3      
  andl %edi, %esi                   #  918   0x59e8f  2      
  shll %cl, %esi                    #  919   0x59e91  2      
  addl $0x7, %ecx                   #  920   0x59e93  3      
  orl %esi, %eax                    #  921   0x59e96  2      
  testb %dil, %dil                  #  922   0x59e98  3      
  nop                               #  923   0x59e9b  1      
  js .L_5a2e0                       #  924   0x59e9c  6      
  jmpq .L_5a240                     #  925   0x59ea2  5      
  nop                               #  926   0x59ea7  1      
  nop                               #  927   0x59ea8  1      
  movl -0x48(%rbp), %esi            #  928   0x59ea9  3      
  movl %ebx, %edi                   #  929   0x59eac  2      
  movq %rdx, -0x70(%rbp)            #  930   0x59eae  4      
  movb %r8b, -0x68(%rbp)            #  931   0x59eb2  4      
  movq %r9, -0x78(%rbp)             #  932   0x59eb6  4      
  movl %r10d, -0x60(%rbp)           #  933   0x59eba  4      
  movl %r11d, -0x58(%rbp)           #  934   0x59ebe  4      
  xchgw %ax, %ax                    #  935   0x59ec2  3      
  callq .read_sleb128               #  936   0x59ec5  5      
  movq -0x70(%rbp), %rdx            #  937   0x59eca  4      
  movl %eax, %ebx                   #  938   0x59ece  2      
  movzbl -0x68(%rbp), %r8d          #  939   0x59ed0  5      
  movl -0x28(%rbp), %eax            #  940   0x59ed5  3      
  movq -0x78(%rbp), %r9             #  941   0x59ed8  4      
  movl -0x60(%rbp), %r10d           #  942   0x59edc  4      
  movl -0x58(%rbp), %r11d           #  943   0x59ee0  4      
  jmpq .L_5a240                     #  944   0x59ee4  5      
  nop                               #  945   0x59ee9  1      
  movl %ebx, %ebx                   #  946   0x59eea  2      
  movswl (%r15,%rbx,1), %eax        #  947   0x59eec  5      
  addl $0x2, %ebx                   #  948   0x59ef1  3      
  jmpq .L_5a240                     #  949   0x59ef4  5      
  xchgw %ax, %ax                    #  950   0x59ef9  3      
  nop                               #  951   0x59efc  1      
.L_5a380:                           #        0x59efd  0      
  movl %r13d, %edi                  #  952   0x59efd  3      
  movq %rdx, -0x70(%rbp)            #  953   0x59f00  4      
  movb %r8b, -0x68(%rbp)            #  954   0x59f04  4      
  movq %r9, -0x78(%rbp)             #  955   0x59f08  4      
  movl %r10d, -0x60(%rbp)           #  956   0x59f0c  4      
  nop                               #  957   0x59f10  1      
  callq ._Unwind_GetRegionStart     #  958   0x59f11  5      
  jmpq .L_5a200                     #  959   0x59f16  5      
  nop                               #  960   0x59f1b  1      
  nop                               #  961   0x59f1c  1      
.L_5a3c0:                           #        0x59f1d  0      
  movl %r13d, %edi                  #  962   0x59f1d  3      
  movq %rdx, -0x70(%rbp)            #  963   0x59f20  4      
  movb %r8b, -0x68(%rbp)            #  964   0x59f24  4      
  movq %r9, -0x78(%rbp)             #  965   0x59f28  4      
  movl %r10d, -0x60(%rbp)           #  966   0x59f2c  4      
  nop                               #  967   0x59f30  1      
  callq ._Unwind_GetTextRelBase     #  968   0x59f31  5      
  jmpq .L_5a200                     #  969   0x59f36  5      
  nop                               #  970   0x59f3b  1      
  nop                               #  971   0x59f3c  1      
.L_5a400:                           #        0x59f3d  0      
  subl $0x150, %esp                 #  972   0x59f3d  6      
  addq %r15, %rsp                   #  973   0x59f43  3      
  leal 0xf(%rsp), %eax              #  974   0x59f46  4      
  andl $0xfffffff0, %eax            #  975   0x59f4a  5      
  jmpq .L_599c0                     #  976   0x59f4f  5      
  nop                               #  977   0x59f54  1      
                                                             
.size execute_cfa_program, .-execute_cfa_program

