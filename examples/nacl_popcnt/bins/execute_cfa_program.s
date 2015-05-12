  .text
  .globl execute_cfa_program
  .type execute_cfa_program, @function

#! file-offset 0x59340
#! rip-offset  0x59340
#! capacity    4352 bytes

# Text                              #  Line  RIP      Bytes  
.execute_cfa_program:               #        0x59340  0      
  pushq %rbp                        #  1     0x59340  2      
  movq %rsp, %rbp                   #  2     0x59342  3      
  pushq %r14                        #  3     0x59345  3      
  movl %esi, %r14d                  #  4     0x59348  3      
  pushq %r13                        #  5     0x5934b  3      
  movl %edx, %r13d                  #  6     0x5934e  3      
  pushq %r12                        #  7     0x59351  3      
  movl %ecx, %r12d                  #  8     0x59354  3      
  pushq %rbx                        #  9     0x59357  2      
  movl %edi, %ebx                   #  10    0x59359  2      
  subl $0x60, %esp                  #  11    0x5935b  3      
  addq %r15, %rsp                   #  12    0x5935e  3      
  cmpl %r14d, %ebx                  #  13    0x59361  3      
  nop                               #  14    0x59364  1      
  movl %r12d, %r12d                 #  15    0x59365  3      
  movl $0x0, 0x120(%r15,%r12,1)     #  16    0x59368  12     
  jae .L_59480                      #  17    0x59374  6      
  movl %r13d, %r13d                 #  18    0x5937a  3      
  movq 0x60(%r15,%r13,1), %rax      #  19    0x5937d  5      
  nop                               #  20    0x59382  1      
  movl %r12d, %r12d                 #  21    0x59383  3      
  movl 0x140(%r15,%r12,1), %esi     #  22    0x59386  8      
  shrq $0x3f, %rax                  #  23    0x5938e  4      
  movl %r13d, %r13d                 #  24    0x59392  3      
  addl 0x4c(%r15,%r13,1), %eax      #  25    0x59395  5      
  cmpl %esi, %eax                   #  26    0x5939a  2      
  jbe .L_59480                      #  27    0x5939c  6      
  nop                               #  28    0x593a2  1      
  leal -0x24(%rbp), %eax            #  29    0x593a3  3      
  leal -0x28(%rbp), %ecx            #  30    0x593a6  3      
  leal 0xffc99a8(%rip), %edx        #  31    0x593a9  6      
  xorl %r9d, %r9d                   #  32    0x593af  3      
  movl %r12d, -0x3c(%rbp)           #  33    0x593b2  4      
  movq %rax, -0x38(%rbp)            #  34    0x593b6  4      
  movq %rcx, -0x48(%rbp)            #  35    0x593ba  4      
  nop                               #  36    0x593be  1      
.L_593c0:                           #        0x593bf  0      
  movl %ebx, %ebx                   #  37    0x593bf  2      
  movzbl (%r15,%rbx,1), %ecx        #  38    0x593c1  5      
  addl $0x1, %ebx                   #  39    0x593c6  3      
  movzbl %cl, %r8d                  #  40    0x593c9  4      
  movl %r8d, %eax                   #  41    0x593cd  3      
  andl $0xc0, %eax                  #  42    0x593d0  3      
  cmpl $0x40, %eax                  #  43    0x593d3  3      
  je .L_59420                       #  44    0x593d6  6      
  cmpl $0x80, %eax                  #  45    0x593dc  3      
  je .L_594c0                       #  46    0x593df  6      
  cmpl $0xc0, %eax                  #  47    0x593e5  3      
  je .L_59560                       #  48    0x593e8  6      
  cmpb $0x2f, %cl                   #  49    0x593ee  3      
  jbe .L_59540                      #  50    0x593f1  6      
  nop                               #  51    0x593f7  1      
.L_59400:                           #        0x593f8  0      
  nop                               #  52    0x593f8  1      
  nop                               #  53    0x593f9  1      
  callq .abort                      #  54    0x593fa  5      
.L_59420:                           #        0x593ff  0      
  andl $0x3f, %r8d                  #  55    0x593ff  4      
  movl %r12d, %r12d                 #  56    0x59403  3      
  imull 0x150(%r15,%r12,1), %r8d    #  57    0x59406  9      
  addl %esi, %r8d                   #  58    0x5940f  3      
  movl %r12d, %r12d                 #  59    0x59412  3      
  movl %r8d, 0x140(%r15,%r12,1)     #  60    0x59415  8      
  xchgw %ax, %ax                    #  61    0x5941d  3      
.L_59440:                           #        0x59420  0      
  cmpl %ebx, %r14d                  #  62    0x59420  3      
  jbe .L_59480                      #  63    0x59423  6      
  movl %r13d, %r13d                 #  64    0x59429  3      
  movq 0x60(%r15,%r13,1), %rax      #  65    0x5942c  5      
  movl %r12d, %r12d                 #  66    0x59431  3      
  movl 0x140(%r15,%r12,1), %esi     #  67    0x59434  8      
  shrq $0x3f, %rax                  #  68    0x5943c  4      
  nop                               #  69    0x59440  1      
  movl %r13d, %r13d                 #  70    0x59441  3      
  addl 0x4c(%r15,%r13,1), %eax      #  71    0x59444  5      
  cmpl %esi, %eax                   #  72    0x59449  2      
  ja .L_593c0                       #  73    0x5944b  6      
  nop                               #  74    0x59451  1      
  nop                               #  75    0x59452  1      
.L_59480:                           #        0x59453  0      
  leal -0x20(%rbp), %esp            #  76    0x59453  3      
  addq %r15, %rsp                   #  77    0x59456  3      
  popq %rbx                         #  78    0x59459  2      
  popq %r12                         #  79    0x5945b  3      
  popq %r13                         #  80    0x5945e  3      
  popq %r14                         #  81    0x59461  3      
  popq %r11                         #  82    0x59464  3      
  movl %r11d, %ebp                  #  83    0x59467  3      
  addq %r15, %rbp                   #  84    0x5946a  3      
  popq %r11                         #  85    0x5946d  3      
  nop                               #  86    0x59470  1      
  andl $0xffffffe0, %r11d           #  87    0x59471  7      
  addq %r15, %r11                   #  88    0x59478  3      
  jmpq %r11                         #  89    0x5947b  3      
  nop                               #  90    0x5947e  1      
  nop                               #  91    0x5947f  1      
.L_594c0:                           #        0x59480  0      
  andl $0x3f, %r8d                  #  92    0x59480  4      
  xorl %edi, %edi                   #  93    0x59484  2      
  xorl %ecx, %ecx                   #  94    0x59486  2      
  nop                               #  95    0x59488  1      
  nop                               #  96    0x59489  1      
.L_594e0:                           #        0x5948a  0      
  movl %ebx, %ebx                   #  97    0x5948a  2      
  movzbl (%r15,%rbx,1), %esi        #  98    0x5948c  5      
  addl $0x1, %ebx                   #  99    0x59491  3      
  movl %esi, %eax                   #  100   0x59494  2      
  andl $0x7f, %eax                  #  101   0x59496  3      
  shll %cl, %eax                    #  102   0x59499  2      
  addl $0x7, %ecx                   #  103   0x5949b  3      
  orl %eax, %edi                    #  104   0x5949e  2      
  testb %sil, %sil                  #  105   0x594a0  3      
  js .L_594e0                       #  106   0x594a3  6      
  nop                               #  107   0x594a9  1      
  movl %r12d, %r12d                 #  108   0x594aa  3      
  imull 0x148(%r15,%r12,1), %edi    #  109   0x594ad  9      
  shll $0x4, %r8d                   #  110   0x594b6  4      
  movslq %r8d, %r8                  #  111   0x594ba  3      
  leaq (%r12,%r8,1), %r8            #  112   0x594bd  4      
  nop                               #  113   0x594c1  1      
  movl %r8d, %r8d                   #  114   0x594c2  3      
  movl $0x1, 0x8(%r15,%r8,1)        #  115   0x594c5  9      
  movslq %edi, %rdi                 #  116   0x594ce  3      
  movl %r8d, %r8d                   #  117   0x594d1  3      
  movq %rdi, (%r15,%r8,1)           #  118   0x594d4  4      
  jmpq .L_59440                     #  119   0x594d8  5      
  nop                               #  120   0x594dd  1      
.L_59540:                           #        0x594de  0      
  movzbl %cl, %ecx                  #  121   0x594de  3      
  leaq (%rdx,%rcx,4), %rax          #  122   0x594e1  4      
  movl %eax, %eax                   #  123   0x594e5  2      
  movslq (%r15,%rax,1), %rax        #  124   0x594e7  4      
  addq %rdx, %rax                   #  125   0x594eb  3      
  andl $0xffffffe0, %eax            #  126   0x594ee  5      
  addq %r15, %rax                   #  127   0x594f3  3      
  jmpq %rax                         #  128   0x594f6  2      
  nop                               #  129   0x594f8  1      
.L_59560:                           #        0x594f9  0      
  shlq $0x4, %r8                    #  130   0x594f9  4      
  andl $0x3f0, %r8d                 #  131   0x594fd  7      
  leaq (%r12,%r8,1), %r8            #  132   0x59504  4      
  movl %r8d, %r8d                   #  133   0x59508  3      
  movl $0x0, 0x8(%r15,%r8,1)        #  134   0x5950b  9      
  jmpq .L_59440                     #  135   0x59514  5      
  xorl %edi, %edi                   #  136   0x59519  2      
  xorl %ecx, %ecx                   #  137   0x5951b  2      
  nop                               #  138   0x5951d  1      
  nop                               #  139   0x5951e  1      
.L_595a0:                           #        0x5951f  0      
  movl %ebx, %ebx                   #  140   0x5951f  2      
  movzbl (%r15,%rbx,1), %esi        #  141   0x59521  5      
  addl $0x1, %ebx                   #  142   0x59526  3      
  movl %esi, %eax                   #  143   0x59529  2      
  andl $0x7f, %eax                  #  144   0x5952b  3      
  shll %cl, %eax                    #  145   0x5952e  2      
  addl $0x7, %ecx                   #  146   0x59530  3      
  orl %eax, %edi                    #  147   0x59533  2      
  testb %sil, %sil                  #  148   0x59535  3      
  js .L_595a0                       #  149   0x59538  6      
  xorl %r8d, %r8d                   #  150   0x5953e  3      
  xorl %ecx, %ecx                   #  151   0x59541  2      
.L_595c0:                           #        0x59543  0      
  movl %ebx, %ebx                   #  152   0x59543  2      
  movzbl (%r15,%rbx,1), %esi        #  153   0x59545  5      
  addl $0x1, %ebx                   #  154   0x5954a  3      
  movl %esi, %eax                   #  155   0x5954d  2      
  andl $0x7f, %eax                  #  156   0x5954f  3      
  shll %cl, %eax                    #  157   0x59552  2      
  addl $0x7, %ecx                   #  158   0x59554  3      
  orl %eax, %r8d                    #  159   0x59557  3      
  testb %sil, %sil                  #  160   0x5955a  3      
  js .L_595c0                       #  161   0x5955d  6      
  nop                               #  162   0x59563  1      
  movl %r12d, %r12d                 #  163   0x59564  3      
  imull 0x148(%r15,%r12,1), %r8d    #  164   0x59567  9      
  movl %edi, %eax                   #  165   0x59570  2      
  shll $0x4, %eax                   #  166   0x59572  3      
  cltq                              #  167   0x59575  2      
  leaq (%r12,%rax,1), %rax          #  168   0x59577  4      
  negl %r8d                         #  169   0x5957b  3      
  nop                               #  170   0x5957e  1      
  movl %eax, %eax                   #  171   0x5957f  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  172   0x59581  9      
  movslq %r8d, %r8                  #  173   0x5958a  3      
  movl %eax, %eax                   #  174   0x5958d  2      
  movq %r8, (%r15,%rax,1)           #  175   0x5958f  4      
  jmpq .L_59440                     #  176   0x59593  5      
  nop                               #  177   0x59598  1      
  movl %r12d, %r12d                 #  178   0x59599  3      
  movzbl 0x160(%r15,%r12,1), %r8d   #  179   0x5959c  9      
  cmpb $0xff, %r8b                  #  180   0x595a5  4      
  movzbl %r8b, %r10d                #  181   0x595a9  4      
  je .L_5a180                       #  182   0x595ad  6      
  movl %r10d, %eax                  #  183   0x595b3  3      
  andl $0x70, %eax                  #  184   0x595b6  3      
  cmpl $0x20, %eax                  #  185   0x595b9  3      
  je .L_5a3e0                       #  186   0x595bc  6      
  jg .L_5a1e0                       #  187   0x595c2  6      
  testl %eax, %eax                  #  188   0x595c8  2      
  je .L_59660                       #  189   0x595ca  6      
  cmpl $0x10, %eax                  #  190   0x595d0  3      
  jne .L_59400                      #  191   0x595d3  6      
  nop                               #  192   0x595d9  1      
.L_59660:                           #        0x595da  0      
  xorl %r11d, %r11d                 #  193   0x595da  3      
  nop                               #  194   0x595dd  1      
  nop                               #  195   0x595de  1      
.L_59680:                           #        0x595df  0      
  cmpb $0x50, %r8b                  #  196   0x595df  4      
  movq %rbx, -0x50(%rbp)            #  197   0x595e3  4      
  jne .L_5a1a0                      #  198   0x595e7  6      
  leal 0x3(%rbx), %eax              #  199   0x595ed  3      
  andl $0xfffffffc, %eax            #  200   0x595f0  5      
  leal 0x4(%rax), %ebx              #  201   0x595f5  3      
  movl %eax, %eax                   #  202   0x595f8  2      
  movl %eax, %eax                   #  203   0x595fa  2      
  movl (%r15,%rax,1), %ecx          #  204   0x595fc  4      
  nop                               #  205   0x59600  1      
  movl %ebx, %ebx                   #  206   0x59601  2      
  nop                               #  207   0x59603  1      
  nop                               #  208   0x59604  1      
.L_596c0:                           #        0x59605  0      
  movl %r12d, %r12d                 #  209   0x59605  3      
  movl %ecx, 0x140(%r15,%r12,1)     #  210   0x59608  8      
  jmpq .L_59440                     #  211   0x59610  5      
  nop                               #  212   0x59615  1      
  nop                               #  213   0x59616  1      
  movl %ebx, %ebx                   #  214   0x59617  2      
  movzbl (%r15,%rbx,1), %eax        #  215   0x59619  5      
  addl $0x1, %ebx                   #  216   0x5961e  3      
  movl %r12d, %r12d                 #  217   0x59621  3      
  imull 0x150(%r15,%r12,1), %eax    #  218   0x59624  9      
  leal (%rax,%rsi,1), %esi          #  219   0x5962d  3      
  nop                               #  220   0x59630  1      
  movl %r12d, %r12d                 #  221   0x59631  3      
  movl %esi, 0x140(%r15,%r12,1)     #  222   0x59634  8      
  jmpq .L_59440                     #  223   0x5963c  5      
  nop                               #  224   0x59641  1      
  nop                               #  225   0x59642  1      
  movl %ebx, %ebx                   #  226   0x59643  2      
  movzwl (%r15,%rbx,1), %eax        #  227   0x59645  5      
  addl $0x2, %ebx                   #  228   0x5964a  3      
  movl %r12d, %r12d                 #  229   0x5964d  3      
  imull 0x150(%r15,%r12,1), %eax    #  230   0x59650  9      
  leal (%rax,%rsi,1), %esi          #  231   0x59659  3      
  nop                               #  232   0x5965c  1      
  movl %r12d, %r12d                 #  233   0x5965d  3      
  movl %esi, 0x140(%r15,%r12,1)     #  234   0x59660  8      
  jmpq .L_59440                     #  235   0x59668  5      
  nop                               #  236   0x5966d  1      
  nop                               #  237   0x5966e  1      
  movl %ebx, %ebx                   #  238   0x5966f  2      
  movl (%r15,%rbx,1), %eax          #  239   0x59671  4      
  addl $0x4, %ebx                   #  240   0x59675  3      
  movl %r12d, %r12d                 #  241   0x59678  3      
  imull 0x150(%r15,%r12,1), %eax    #  242   0x5967b  9      
  addl %esi, %eax                   #  243   0x59684  2      
  nop                               #  244   0x59686  1      
  movl %r12d, %r12d                 #  245   0x59687  3      
  movl %eax, 0x140(%r15,%r12,1)     #  246   0x5968a  8      
  jmpq .L_59440                     #  247   0x59692  5      
  nop                               #  248   0x59697  1      
  nop                               #  249   0x59698  1      
  xorl %edi, %edi                   #  250   0x59699  2      
  xorl %ecx, %ecx                   #  251   0x5969b  2      
  nop                               #  252   0x5969d  1      
  nop                               #  253   0x5969e  1      
.L_597c0:                           #        0x5969f  0      
  movl %ebx, %ebx                   #  254   0x5969f  2      
  movzbl (%r15,%rbx,1), %esi        #  255   0x596a1  5      
  addl $0x1, %ebx                   #  256   0x596a6  3      
  movl %esi, %eax                   #  257   0x596a9  2      
  andl $0x7f, %eax                  #  258   0x596ab  3      
  shll %cl, %eax                    #  259   0x596ae  2      
  addl $0x7, %ecx                   #  260   0x596b0  3      
  orl %eax, %edi                    #  261   0x596b3  2      
  testb %sil, %sil                  #  262   0x596b5  3      
  js .L_597c0                       #  263   0x596b8  6      
  xorl %r8d, %r8d                   #  264   0x596be  3      
  xorl %ecx, %ecx                   #  265   0x596c1  2      
.L_597e0:                           #        0x596c3  0      
  movl %ebx, %ebx                   #  266   0x596c3  2      
  movzbl (%r15,%rbx,1), %esi        #  267   0x596c5  5      
  addl $0x1, %ebx                   #  268   0x596ca  3      
  movl %esi, %eax                   #  269   0x596cd  2      
  andl $0x7f, %eax                  #  270   0x596cf  3      
  shll %cl, %eax                    #  271   0x596d2  2      
  addl $0x7, %ecx                   #  272   0x596d4  3      
  orl %eax, %r8d                    #  273   0x596d7  3      
  testb %sil, %sil                  #  274   0x596da  3      
  js .L_597e0                       #  275   0x596dd  6      
  nop                               #  276   0x596e3  1      
  movl %r12d, %r12d                 #  277   0x596e4  3      
  movl 0x148(%r15,%r12,1), %ecx     #  278   0x596e7  8      
  movl %edi, %eax                   #  279   0x596ef  2      
  shll $0x4, %eax                   #  280   0x596f1  3      
  cltq                              #  281   0x596f4  2      
  imull %r8d, %ecx                  #  282   0x596f6  4      
  leaq (%r12,%rax,1), %rax          #  283   0x596fa  4      
  nop                               #  284   0x596fe  1      
  movl %eax, %eax                   #  285   0x596ff  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  286   0x59701  9      
  movslq %ecx, %rcx                 #  287   0x5970a  3      
  movl %eax, %eax                   #  288   0x5970d  2      
  movq %rcx, (%r15,%rax,1)          #  289   0x5970f  4      
  jmpq .L_59440                     #  290   0x59713  5      
  nop                               #  291   0x59718  1      
  xorl %edi, %edi                   #  292   0x59719  2      
  xorl %ecx, %ecx                   #  293   0x5971b  2      
  nop                               #  294   0x5971d  1      
  nop                               #  295   0x5971e  1      
.L_59860:                           #        0x5971f  0      
  movl %ebx, %ebx                   #  296   0x5971f  2      
  movzbl (%r15,%rbx,1), %esi        #  297   0x59721  5      
  addl $0x1, %ebx                   #  298   0x59726  3      
  movl %esi, %eax                   #  299   0x59729  2      
  andl $0x7f, %eax                  #  300   0x5972b  3      
  shll %cl, %eax                    #  301   0x5972e  2      
  addl $0x7, %ecx                   #  302   0x59730  3      
  orl %eax, %edi                    #  303   0x59733  2      
  testb %sil, %sil                  #  304   0x59735  3      
  js .L_59860                       #  305   0x59738  6      
  nop                               #  306   0x5973e  1      
.L_59880:                           #        0x5973f  0      
  movl %edi, %eax                   #  307   0x5973f  2      
  shll $0x4, %eax                   #  308   0x59741  3      
  cltq                              #  309   0x59744  2      
  leaq (%r12,%rax,1), %rax          #  310   0x59746  4      
  movl %eax, %eax                   #  311   0x5974a  2      
  movl $0x0, 0x8(%r15,%rax,1)       #  312   0x5974c  9      
  jmpq .L_59440                     #  313   0x59755  5      
  nop                               #  314   0x5975a  1      
  xorl %edi, %edi                   #  315   0x5975b  2      
  xorl %ecx, %ecx                   #  316   0x5975d  2      
  nop                               #  317   0x5975f  1      
  nop                               #  318   0x59760  1      
.L_598c0:                           #        0x59761  0      
  movl %ebx, %ebx                   #  319   0x59761  2      
  movzbl (%r15,%rbx,1), %esi        #  320   0x59763  5      
  addl $0x1, %ebx                   #  321   0x59768  3      
  movl %esi, %eax                   #  322   0x5976b  2      
  andl $0x7f, %eax                  #  323   0x5976d  3      
  shll %cl, %eax                    #  324   0x59770  2      
  addl $0x7, %ecx                   #  325   0x59772  3      
  orl %eax, %edi                    #  326   0x59775  2      
  testb %sil, %sil                  #  327   0x59777  3      
  js .L_598c0                       #  328   0x5977a  6      
  movl %edi, %eax                   #  329   0x59780  2      
  shll $0x4, %eax                   #  330   0x59782  3      
  cltq                              #  331   0x59785  2      
  leaq (%r12,%rax,1), %rax          #  332   0x59787  4      
  movl %eax, %eax                   #  333   0x5978b  2      
  movl $0x6, 0x8(%r15,%rax,1)       #  334   0x5978d  9      
  jmpq .L_59440                     #  335   0x59796  5      
  nop                               #  336   0x5979b  1      
  xorl %edi, %edi                   #  337   0x5979c  2      
  xorl %ecx, %ecx                   #  338   0x5979e  2      
  nop                               #  339   0x597a0  1      
  nop                               #  340   0x597a1  1      
.L_59920:                           #        0x597a2  0      
  movl %ebx, %ebx                   #  341   0x597a2  2      
  movzbl (%r15,%rbx,1), %esi        #  342   0x597a4  5      
  addl $0x1, %ebx                   #  343   0x597a9  3      
  movl %esi, %eax                   #  344   0x597ac  2      
  andl $0x7f, %eax                  #  345   0x597ae  3      
  shll %cl, %eax                    #  346   0x597b1  2      
  addl $0x7, %ecx                   #  347   0x597b3  3      
  orl %eax, %edi                    #  348   0x597b6  2      
  testb %sil, %sil                  #  349   0x597b8  3      
  js .L_59920                       #  350   0x597bb  6      
  jmpq .L_59880                     #  351   0x597c1  5      
  xorl %r8d, %r8d                   #  352   0x597c6  3      
  xorl %ecx, %ecx                   #  353   0x597c9  2      
  nop                               #  354   0x597cb  1      
  nop                               #  355   0x597cc  1      
.L_59960:                           #        0x597cd  0      
  movl %ebx, %ebx                   #  356   0x597cd  2      
  movzbl (%r15,%rbx,1), %esi        #  357   0x597cf  5      
  addl $0x1, %ebx                   #  358   0x597d4  3      
  movl %esi, %eax                   #  359   0x597d7  2      
  andl $0x7f, %eax                  #  360   0x597d9  3      
  shll %cl, %eax                    #  361   0x597dc  2      
  addl $0x7, %ecx                   #  362   0x597de  3      
  orl %eax, %r8d                    #  363   0x597e1  3      
  testb %sil, %sil                  #  364   0x597e4  3      
  js .L_59960                       #  365   0x597e7  6      
  xorl %edi, %edi                   #  366   0x597ed  2      
  xorl %ecx, %ecx                   #  367   0x597ef  2      
.L_59980:                           #        0x597f1  0      
  movl %ebx, %ebx                   #  368   0x597f1  2      
  movzbl (%r15,%rbx,1), %esi        #  369   0x597f3  5      
  addl $0x1, %ebx                   #  370   0x597f8  3      
  movl %esi, %eax                   #  371   0x597fb  2      
  andl $0x7f, %eax                  #  372   0x597fd  3      
  shll %cl, %eax                    #  373   0x59800  2      
  addl $0x7, %ecx                   #  374   0x59802  3      
  orl %eax, %edi                    #  375   0x59805  2      
  testb %sil, %sil                  #  376   0x59807  3      
  js .L_59980                       #  377   0x5980a  6      
  movl %r8d, %eax                   #  378   0x59810  3      
  movl %edi, %edi                   #  379   0x59813  2      
  shll $0x4, %eax                   #  380   0x59815  3      
  cltq                              #  381   0x59818  2      
  leaq (%r12,%rax,1), %rax          #  382   0x5981a  4      
  movl %eax, %eax                   #  383   0x5981e  2      
  movl $0x2, 0x8(%r15,%rax,1)       #  384   0x59820  9      
  movl %eax, %eax                   #  385   0x59829  2      
  movq %rdi, (%r15,%rax,1)          #  386   0x5982b  4      
  jmpq .L_59440                     #  387   0x5982f  5      
  nop                               #  388   0x59834  1      
  testq %r9, %r9                    #  389   0x59835  3      
  je .L_5a420                       #  390   0x59838  6      
  movq %r9, %rax                    #  391   0x5983e  3      
  movl %r9d, %r9d                   #  392   0x59841  3      
  movl 0x120(%r15,%r9,1), %r9d      #  393   0x59844  8      
  nop                               #  394   0x5984c  1      
.L_599e0:                           #        0x5984d  0      
  movq %rax, %rdi                   #  395   0x5984d  3      
  movq %r12, %rsi                   #  396   0x59850  3      
  movl $0x28, %ecx                  #  397   0x59853  5      
  movl %esi, %esi                   #  398   0x59858  2      
  leaq (%r15,%rsi,1), %rsi          #  399   0x5985a  4      
  movl %edi, %edi                   #  400   0x5985e  2      
  leaq (%r15,%rdi,1), %rdi          #  401   0x59860  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  402   0x59864  4      
  movl %esi, %esi                   #  403   0x59868  2      
  movl %edi, %edi                   #  404   0x5986a  2      
  xchgw %ax, %ax                    #  405   0x5986c  3      
  movl %r12d, %r12d                 #  406   0x5986f  3      
  movl %eax, 0x120(%r15,%r12,1)     #  407   0x59872  8      
  jmpq .L_59440                     #  408   0x5987a  5      
  nop                               #  409   0x5987f  1      
  nop                               #  410   0x59880  1      
  movl %r12d, %r12d                 #  411   0x59881  3      
  movl 0x120(%r15,%r12,1), %eax     #  412   0x59884  8      
  movq %r12, %rdi                   #  413   0x5988c  3      
  movl $0x28, %ecx                  #  414   0x5988f  5      
  movq %rax, %rsi                   #  415   0x59894  3      
  nop                               #  416   0x59897  1      
  movl %esi, %esi                   #  417   0x59898  2      
  leaq (%r15,%rsi,1), %rsi          #  418   0x5989a  4      
  movl %edi, %edi                   #  419   0x5989e  2      
  leaq (%r15,%rdi,1), %rdi          #  420   0x598a0  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  421   0x598a4  4      
  movl %esi, %esi                   #  422   0x598a8  2      
  movl %edi, %edi                   #  423   0x598aa  2      
  movl %eax, %eax                   #  424   0x598ac  2      
  movl %r9d, 0x120(%r15,%rax,1)     #  425   0x598ae  8      
  movq %rax, %r9                    #  426   0x598b6  3      
  jmpq .L_59440                     #  427   0x598b9  5      
  nop                               #  428   0x598be  1      
  nop                               #  429   0x598bf  1      
  xorl %edi, %edi                   #  430   0x598c0  2      
  xorl %ecx, %ecx                   #  431   0x598c2  2      
  nop                               #  432   0x598c4  1      
  nop                               #  433   0x598c5  1      
.L_59aa0:                           #        0x598c6  0      
  movl %ebx, %ebx                   #  434   0x598c6  2      
  movzbl (%r15,%rbx,1), %esi        #  435   0x598c8  5      
  addl $0x1, %ebx                   #  436   0x598cd  3      
  movl %esi, %eax                   #  437   0x598d0  2      
  andl $0x7f, %eax                  #  438   0x598d2  3      
  shll %cl, %eax                    #  439   0x598d5  2      
  addl $0x7, %ecx                   #  440   0x598d7  3      
  orl %eax, %edi                    #  441   0x598da  2      
  testb %sil, %sil                  #  442   0x598dc  3      
  js .L_59aa0                       #  443   0x598df  6      
  movl %edi, %edi                   #  444   0x598e5  2      
  xorl %ecx, %ecx                   #  445   0x598e7  2      
  nop                               #  446   0x598e9  1      
  movl %r12d, %r12d                 #  447   0x598ea  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  448   0x598ed  8      
  xorl %edi, %edi                   #  449   0x598f5  2      
  nop                               #  450   0x598f7  1      
  nop                               #  451   0x598f8  1      
.L_59ae0:                           #        0x598f9  0      
  movl %ebx, %ebx                   #  452   0x598f9  2      
  movzbl (%r15,%rbx,1), %esi        #  453   0x598fb  5      
  addl $0x1, %ebx                   #  454   0x59900  3      
  movl %esi, %eax                   #  455   0x59903  2      
  andl $0x7f, %eax                  #  456   0x59905  3      
  shll %cl, %eax                    #  457   0x59908  2      
  addl $0x7, %ecx                   #  458   0x5990a  3      
  orl %eax, %edi                    #  459   0x5990d  2      
  testb %sil, %sil                  #  460   0x5990f  3      
  js .L_59ae0                       #  461   0x59912  6      
  movl %edi, %edi                   #  462   0x59918  2      
  nop                               #  463   0x5991a  1      
  movl %r12d, %r12d                 #  464   0x5991b  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  465   0x5991e  12     
  movl %r12d, %r12d                 #  466   0x5992a  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  467   0x5992d  8      
  jmpq .L_59440                     #  468   0x59935  5      
  nop                               #  469   0x5993a  1      
  xorl %edi, %edi                   #  470   0x5993b  2      
  xorl %ecx, %ecx                   #  471   0x5993d  2      
  nop                               #  472   0x5993f  1      
  nop                               #  473   0x59940  1      
.L_59b40:                           #        0x59941  0      
  movl %ebx, %ebx                   #  474   0x59941  2      
  movzbl (%r15,%rbx,1), %esi        #  475   0x59943  5      
  addl $0x1, %ebx                   #  476   0x59948  3      
  movl %esi, %eax                   #  477   0x5994b  2      
  andl $0x7f, %eax                  #  478   0x5994d  3      
  shll %cl, %eax                    #  479   0x59950  2      
  addl $0x7, %ecx                   #  480   0x59952  3      
  orl %eax, %edi                    #  481   0x59955  2      
  testb %sil, %sil                  #  482   0x59957  3      
  js .L_59b40                       #  483   0x5995a  6      
  movl %edi, %edi                   #  484   0x59960  2      
  nop                               #  485   0x59962  1      
  movl %r12d, %r12d                 #  486   0x59963  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  487   0x59966  12     
  movl %r12d, %r12d                 #  488   0x59972  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  489   0x59975  8      
  jmpq .L_59440                     #  490   0x5997d  5      
  nop                               #  491   0x59982  1      
  xorl %edi, %edi                   #  492   0x59983  2      
  xorl %ecx, %ecx                   #  493   0x59985  2      
  nop                               #  494   0x59987  1      
  nop                               #  495   0x59988  1      
.L_59ba0:                           #        0x59989  0      
  movl %ebx, %ebx                   #  496   0x59989  2      
  movzbl (%r15,%rbx,1), %esi        #  497   0x5998b  5      
  addl $0x1, %ebx                   #  498   0x59990  3      
  movl %esi, %eax                   #  499   0x59993  2      
  andl $0x7f, %eax                  #  500   0x59995  3      
  shll %cl, %eax                    #  501   0x59998  2      
  addl $0x7, %ecx                   #  502   0x5999a  3      
  orl %eax, %edi                    #  503   0x5999d  2      
  testb %sil, %sil                  #  504   0x5999f  3      
  js .L_59ba0                       #  505   0x599a2  6      
  movl %edi, %edi                   #  506   0x599a8  2      
  nop                               #  507   0x599aa  1      
  movl %r12d, %r12d                 #  508   0x599ab  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  509   0x599ae  8      
  jmpq .L_59440                     #  510   0x599b6  5      
  nop                               #  511   0x599bb  1      
  nop                               #  512   0x599bc  1      
  movl %r12d, %r12d                 #  513   0x599bd  3      
  movl %ebx, 0x138(%r15,%r12,1)     #  514   0x599c0  8      
  movl %r12d, %r12d                 #  515   0x599c8  3      
  movl $0x2, 0x13c(%r15,%r12,1)     #  516   0x599cb  12     
  xorl %edi, %edi                   #  517   0x599d7  2      
  xorl %ecx, %ecx                   #  518   0x599d9  2      
  xchgw %ax, %ax                    #  519   0x599db  3      
.L_59c00:                           #        0x599de  0      
  movl %ebx, %ebx                   #  520   0x599de  2      
  movzbl (%r15,%rbx,1), %esi        #  521   0x599e0  5      
  addl $0x1, %ebx                   #  522   0x599e5  3      
  movl %esi, %eax                   #  523   0x599e8  2      
  andl $0x7f, %eax                  #  524   0x599ea  3      
  shll %cl, %eax                    #  525   0x599ed  2      
  addl $0x7, %ecx                   #  526   0x599ef  3      
  orl %eax, %edi                    #  527   0x599f2  2      
  testb %sil, %sil                  #  528   0x599f4  3      
  js .L_59c00                       #  529   0x599f7  6      
  leal (%rdi,%rbx,1), %ebx          #  530   0x599fd  3      
  xchgw %ax, %ax                    #  531   0x59a00  3      
  jmpq .L_59440                     #  532   0x59a03  5      
  nop                               #  533   0x59a08  1      
  nop                               #  534   0x59a09  1      
  xorl %edi, %edi                   #  535   0x59a0a  2      
  xorl %ecx, %ecx                   #  536   0x59a0c  2      
  nop                               #  537   0x59a0e  1      
  nop                               #  538   0x59a0f  1      
.L_59c60:                           #        0x59a10  0      
  movl %ebx, %ebx                   #  539   0x59a10  2      
  movzbl (%r15,%rbx,1), %esi        #  540   0x59a12  5      
  addl $0x1, %ebx                   #  541   0x59a17  3      
  movl %esi, %eax                   #  542   0x59a1a  2      
  andl $0x7f, %eax                  #  543   0x59a1c  3      
  shll %cl, %eax                    #  544   0x59a1f  2      
  addl $0x7, %ecx                   #  545   0x59a21  3      
  orl %eax, %edi                    #  546   0x59a24  2      
  testb %sil, %sil                  #  547   0x59a26  3      
  js .L_59c60                       #  548   0x59a29  6      
  movl %edi, %eax                   #  549   0x59a2f  2      
  xorl %ecx, %ecx                   #  550   0x59a31  2      
  nop                               #  551   0x59a33  1      
  xorl %edi, %edi                   #  552   0x59a34  2      
  shll $0x4, %eax                   #  553   0x59a36  3      
  cltq                              #  554   0x59a39  2      
  leaq (%r12,%rax,1), %rax          #  555   0x59a3b  4      
  movl %eax, %eax                   #  556   0x59a3f  2      
  movl $0x3, 0x8(%r15,%rax,1)       #  557   0x59a41  9      
  movl %eax, %eax                   #  558   0x59a4a  2      
  movl %ebx, (%r15,%rax,1)          #  559   0x59a4c  4      
  nop                               #  560   0x59a50  1      
.L_59ca0:                           #        0x59a51  0      
  movl %ebx, %ebx                   #  561   0x59a51  2      
  movzbl (%r15,%rbx,1), %esi        #  562   0x59a53  5      
  addl $0x1, %ebx                   #  563   0x59a58  3      
  movl %esi, %eax                   #  564   0x59a5b  2      
  andl $0x7f, %eax                  #  565   0x59a5d  3      
  shll %cl, %eax                    #  566   0x59a60  2      
  addl $0x7, %ecx                   #  567   0x59a62  3      
  orl %eax, %edi                    #  568   0x59a65  2      
  testb %sil, %sil                  #  569   0x59a67  3      
  js .L_59ca0                       #  570   0x59a6a  6      
  leal (%rdi,%rbx,1), %ebx          #  571   0x59a70  3      
  xchgw %ax, %ax                    #  572   0x59a73  3      
  jmpq .L_59440                     #  573   0x59a76  5      
  nop                               #  574   0x59a7b  1      
  nop                               #  575   0x59a7c  1      
  xorl %r8d, %r8d                   #  576   0x59a7d  3      
  xorl %ecx, %ecx                   #  577   0x59a80  2      
  nop                               #  578   0x59a82  1      
  nop                               #  579   0x59a83  1      
.L_59d00:                           #        0x59a84  0      
  movl %ebx, %ebx                   #  580   0x59a84  2      
  movzbl (%r15,%rbx,1), %esi        #  581   0x59a86  5      
  addl $0x1, %ebx                   #  582   0x59a8b  3      
  movl %esi, %eax                   #  583   0x59a8e  2      
  andl $0x7f, %eax                  #  584   0x59a90  3      
  shll %cl, %eax                    #  585   0x59a93  2      
  addl $0x7, %ecx                   #  586   0x59a95  3      
  orl %eax, %r8d                    #  587   0x59a98  3      
  testb %sil, %sil                  #  588   0x59a9b  3      
  js .L_59d00                       #  589   0x59a9e  6      
  movl -0x38(%rbp), %esi            #  590   0x59aa4  3      
  nop                               #  591   0x59aa7  1      
  movl %ebx, %edi                   #  592   0x59aa8  2      
  movq %rdx, -0x70(%rbp)            #  593   0x59aaa  4      
  movl %r8d, -0x68(%rbp)            #  594   0x59aae  4      
  movq %r9, -0x78(%rbp)             #  595   0x59ab2  4      
  nop                               #  596   0x59ab6  1      
  callq .read_sleb128               #  597   0x59ab7  5      
  movl -0x68(%rbp), %r8d            #  598   0x59abc  4      
  movl %eax, %ebx                   #  599   0x59ac0  2      
  movl -0x24(%rbp), %eax            #  600   0x59ac2  3      
  movl %r12d, %r12d                 #  601   0x59ac5  3      
  imull 0x148(%r15,%r12,1), %eax    #  602   0x59ac8  9      
  movl %r8d, %ecx                   #  603   0x59ad1  3      
  shll $0x4, %ecx                   #  604   0x59ad4  3      
  movslq %ecx, %rcx                 #  605   0x59ad7  3      
  xchgw %ax, %ax                    #  606   0x59ada  3      
  leaq (%r12,%rcx,1), %rcx          #  607   0x59add  4      
  cltq                              #  608   0x59ae1  2      
  movl %ecx, %ecx                   #  609   0x59ae3  2      
  movq %rax, (%r15,%rcx,1)          #  610   0x59ae5  4      
  movl %ecx, %ecx                   #  611   0x59ae9  2      
  movl $0x1, 0x8(%r15,%rcx,1)       #  612   0x59aeb  9      
  movq -0x70(%rbp), %rdx            #  613   0x59af4  4      
  movq -0x78(%rbp), %r9             #  614   0x59af8  4      
  nop                               #  615   0x59afc  1      
  jmpq .L_59440                     #  616   0x59afd  5      
  nop                               #  617   0x59b02  1      
  nop                               #  618   0x59b03  1      
  xorl %edi, %edi                   #  619   0x59b04  2      
  xorl %ecx, %ecx                   #  620   0x59b06  2      
  nop                               #  621   0x59b08  1      
  nop                               #  622   0x59b09  1      
.L_59dc0:                           #        0x59b0a  0      
  movl %ebx, %ebx                   #  623   0x59b0a  2      
  movzbl (%r15,%rbx,1), %esi        #  624   0x59b0c  5      
  addl $0x1, %ebx                   #  625   0x59b11  3      
  movl %esi, %eax                   #  626   0x59b14  2      
  andl $0x7f, %eax                  #  627   0x59b16  3      
  shll %cl, %eax                    #  628   0x59b19  2      
  addl $0x7, %ecx                   #  629   0x59b1b  3      
  orl %eax, %edi                    #  630   0x59b1e  2      
  testb %sil, %sil                  #  631   0x59b20  3      
  js .L_59dc0                       #  632   0x59b23  6      
  movl -0x38(%rbp), %esi            #  633   0x59b29  3      
  movl %edi, %edi                   #  634   0x59b2c  2      
  movq %rdx, -0x70(%rbp)            #  635   0x59b2e  4      
  movl %r12d, %r12d                 #  636   0x59b32  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  637   0x59b35  8      
  movl %ebx, %edi                   #  638   0x59b3d  2      
  movq %r9, -0x78(%rbp)             #  639   0x59b3f  4      
  nop                               #  640   0x59b43  1      
  callq .read_sleb128               #  641   0x59b44  5      
  movl %eax, %ebx                   #  642   0x59b49  2      
  movslq -0x24(%rbp), %rax          #  643   0x59b4b  4      
  movl %r12d, %r12d                 #  644   0x59b4f  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  645   0x59b52  12     
  nop                               #  646   0x59b5e  1      
  movl %r12d, %r12d                 #  647   0x59b5f  3      
  imulq 0x148(%r15,%r12,1), %rax    #  648   0x59b62  9      
  movq -0x70(%rbp), %rdx            #  649   0x59b6b  4      
  movq -0x78(%rbp), %r9             #  650   0x59b6f  4      
  movl %r12d, %r12d                 #  651   0x59b73  3      
  movq %rax, 0x128(%r15,%r12,1)     #  652   0x59b76  8      
  nop                               #  653   0x59b7e  1      
  jmpq .L_59440                     #  654   0x59b7f  5      
  nop                               #  655   0x59b84  1      
  nop                               #  656   0x59b85  1      
  movl -0x38(%rbp), %esi            #  657   0x59b86  3      
  movl %ebx, %edi                   #  658   0x59b89  2      
  movq %rdx, -0x70(%rbp)            #  659   0x59b8b  4      
  movq %r9, -0x78(%rbp)             #  660   0x59b8f  4      
  nop                               #  661   0x59b93  1      
  callq .read_sleb128               #  662   0x59b94  5      
  movl %eax, %ebx                   #  663   0x59b99  2      
  movslq -0x24(%rbp), %rax          #  664   0x59b9b  4      
  movq -0x70(%rbp), %rdx            #  665   0x59b9f  4      
  movl %r12d, %r12d                 #  666   0x59ba3  3      
  imulq 0x148(%r15,%r12,1), %rax    #  667   0x59ba6  9      
  movq -0x78(%rbp), %r9             #  668   0x59baf  4      
  nop                               #  669   0x59bb3  1      
  movl %r12d, %r12d                 #  670   0x59bb4  3      
  movq %rax, 0x128(%r15,%r12,1)     #  671   0x59bb7  8      
  jmpq .L_59440                     #  672   0x59bbf  5      
  nop                               #  673   0x59bc4  1      
  nop                               #  674   0x59bc5  1      
  xorl %edi, %edi                   #  675   0x59bc6  2      
  xorl %ecx, %ecx                   #  676   0x59bc8  2      
  nop                               #  677   0x59bca  1      
  nop                               #  678   0x59bcb  1      
.L_59ee0:                           #        0x59bcc  0      
  movl %ebx, %ebx                   #  679   0x59bcc  2      
  movzbl (%r15,%rbx,1), %esi        #  680   0x59bce  5      
  addl $0x1, %ebx                   #  681   0x59bd3  3      
  movl %esi, %eax                   #  682   0x59bd6  2      
  andl $0x7f, %eax                  #  683   0x59bd8  3      
  shll %cl, %eax                    #  684   0x59bdb  2      
  addl $0x7, %ecx                   #  685   0x59bdd  3      
  orl %eax, %edi                    #  686   0x59be0  2      
  testb %sil, %sil                  #  687   0x59be2  3      
  js .L_59ee0                       #  688   0x59be5  6      
  xorl %r8d, %r8d                   #  689   0x59beb  3      
  xorl %ecx, %ecx                   #  690   0x59bee  2      
.L_59f00:                           #        0x59bf0  0      
  movl %ebx, %ebx                   #  691   0x59bf0  2      
  movzbl (%r15,%rbx,1), %esi        #  692   0x59bf2  5      
  addl $0x1, %ebx                   #  693   0x59bf7  3      
  movl %esi, %eax                   #  694   0x59bfa  2      
  andl $0x7f, %eax                  #  695   0x59bfc  3      
  shll %cl, %eax                    #  696   0x59bff  2      
  addl $0x7, %ecx                   #  697   0x59c01  3      
  orl %eax, %r8d                    #  698   0x59c04  3      
  testb %sil, %sil                  #  699   0x59c07  3      
  js .L_59f00                       #  700   0x59c0a  6      
  nop                               #  701   0x59c10  1      
  movl %r12d, %r12d                 #  702   0x59c11  3      
  movl 0x148(%r15,%r12,1), %ecx     #  703   0x59c14  8      
  movl %edi, %eax                   #  704   0x59c1c  2      
  shll $0x4, %eax                   #  705   0x59c1e  3      
  cltq                              #  706   0x59c21  2      
  imull %r8d, %ecx                  #  707   0x59c23  4      
  leaq (%r12,%rax,1), %rax          #  708   0x59c27  4      
  nop                               #  709   0x59c2b  1      
  movl %eax, %eax                   #  710   0x59c2c  2      
  movl $0x4, 0x8(%r15,%rax,1)       #  711   0x59c2e  9      
  movslq %ecx, %rcx                 #  712   0x59c37  3      
  movl %eax, %eax                   #  713   0x59c3a  2      
  movq %rcx, (%r15,%rax,1)          #  714   0x59c3c  4      
  jmpq .L_59440                     #  715   0x59c40  5      
  nop                               #  716   0x59c45  1      
  xorl %r8d, %r8d                   #  717   0x59c46  3      
  xorl %ecx, %ecx                   #  718   0x59c49  2      
  nop                               #  719   0x59c4b  1      
  nop                               #  720   0x59c4c  1      
.L_59f80:                           #        0x59c4d  0      
  movl %ebx, %ebx                   #  721   0x59c4d  2      
  movzbl (%r15,%rbx,1), %esi        #  722   0x59c4f  5      
  addl $0x1, %ebx                   #  723   0x59c54  3      
  movl %esi, %eax                   #  724   0x59c57  2      
  andl $0x7f, %eax                  #  725   0x59c59  3      
  shll %cl, %eax                    #  726   0x59c5c  2      
  addl $0x7, %ecx                   #  727   0x59c5e  3      
  orl %eax, %r8d                    #  728   0x59c61  3      
  testb %sil, %sil                  #  729   0x59c64  3      
  js .L_59f80                       #  730   0x59c67  6      
  movl -0x38(%rbp), %esi            #  731   0x59c6d  3      
  nop                               #  732   0x59c70  1      
  movl %ebx, %edi                   #  733   0x59c71  2      
  movq %rdx, -0x70(%rbp)            #  734   0x59c73  4      
  movl %r8d, -0x68(%rbp)            #  735   0x59c77  4      
  movq %r9, -0x78(%rbp)             #  736   0x59c7b  4      
  nop                               #  737   0x59c7f  1      
  callq .read_sleb128               #  738   0x59c80  5      
  movl -0x68(%rbp), %r8d            #  739   0x59c85  4      
  movl %eax, %ebx                   #  740   0x59c89  2      
  movl -0x24(%rbp), %eax            #  741   0x59c8b  3      
  movl %r12d, %r12d                 #  742   0x59c8e  3      
  imull 0x148(%r15,%r12,1), %eax    #  743   0x59c91  9      
  movl %r8d, %ecx                   #  744   0x59c9a  3      
  shll $0x4, %ecx                   #  745   0x59c9d  3      
  movslq %ecx, %rcx                 #  746   0x59ca0  3      
  xchgw %ax, %ax                    #  747   0x59ca3  3      
  leaq (%r12,%rcx,1), %rcx          #  748   0x59ca6  4      
  cltq                              #  749   0x59caa  2      
  movl %ecx, %ecx                   #  750   0x59cac  2      
  movq %rax, (%r15,%rcx,1)          #  751   0x59cae  4      
  movl %ecx, %ecx                   #  752   0x59cb2  2      
  movl $0x4, 0x8(%r15,%rcx,1)       #  753   0x59cb4  9      
  movq -0x70(%rbp), %rdx            #  754   0x59cbd  4      
  movq -0x78(%rbp), %r9             #  755   0x59cc1  4      
  nop                               #  756   0x59cc5  1      
  jmpq .L_59440                     #  757   0x59cc6  5      
  nop                               #  758   0x59ccb  1      
  nop                               #  759   0x59ccc  1      
  xorl %edi, %edi                   #  760   0x59ccd  2      
  xorl %ecx, %ecx                   #  761   0x59ccf  2      
  nop                               #  762   0x59cd1  1      
  nop                               #  763   0x59cd2  1      
.L_5a040:                           #        0x59cd3  0      
  movl %ebx, %ebx                   #  764   0x59cd3  2      
  movzbl (%r15,%rbx,1), %esi        #  765   0x59cd5  5      
  addl $0x1, %ebx                   #  766   0x59cda  3      
  movl %esi, %eax                   #  767   0x59cdd  2      
  andl $0x7f, %eax                  #  768   0x59cdf  3      
  shll %cl, %eax                    #  769   0x59ce2  2      
  addl $0x7, %ecx                   #  770   0x59ce4  3      
  orl %eax, %edi                    #  771   0x59ce7  2      
  testb %sil, %sil                  #  772   0x59ce9  3      
  js .L_5a040                       #  773   0x59cec  6      
  movl %edi, %eax                   #  774   0x59cf2  2      
  xorl %ecx, %ecx                   #  775   0x59cf4  2      
  nop                               #  776   0x59cf6  1      
  xorl %edi, %edi                   #  777   0x59cf7  2      
  shll $0x4, %eax                   #  778   0x59cf9  3      
  cltq                              #  779   0x59cfc  2      
  leaq (%r12,%rax,1), %rax          #  780   0x59cfe  4      
  movl %eax, %eax                   #  781   0x59d02  2      
  movl $0x5, 0x8(%r15,%rax,1)       #  782   0x59d04  9      
  movl %eax, %eax                   #  783   0x59d0d  2      
  movl %ebx, (%r15,%rax,1)          #  784   0x59d0f  4      
  nop                               #  785   0x59d13  1      
.L_5a080:                           #        0x59d14  0      
  movl %ebx, %ebx                   #  786   0x59d14  2      
  movzbl (%r15,%rbx,1), %esi        #  787   0x59d16  5      
  addl $0x1, %ebx                   #  788   0x59d1b  3      
  movl %esi, %eax                   #  789   0x59d1e  2      
  andl $0x7f, %eax                  #  790   0x59d20  3      
  shll %cl, %eax                    #  791   0x59d23  2      
  addl $0x7, %ecx                   #  792   0x59d25  3      
  orl %eax, %edi                    #  793   0x59d28  2      
  testb %sil, %sil                  #  794   0x59d2a  3      
  js .L_5a080                       #  795   0x59d2d  6      
  leal (%rdi,%rbx,1), %ebx          #  796   0x59d33  3      
  xchgw %ax, %ax                    #  797   0x59d36  3      
  jmpq .L_59440                     #  798   0x59d39  5      
  nop                               #  799   0x59d3e  1      
  nop                               #  800   0x59d3f  1      
  movl -0x3c(%rbp), %ecx            #  801   0x59d40  3      
  xorl %eax, %eax                   #  802   0x59d43  2      
  nop                               #  803   0x59d45  1      
  nop                               #  804   0x59d46  1      
.L_5a0e0:                           #        0x59d47  0      
  movl %ecx, %esi                   #  805   0x59d47  2      
  addl $0x10, %ecx                  #  806   0x59d49  3      
  movl %esi, %esi                   #  807   0x59d4c  2      
  movq %rax, 0x100(%r15,%rsi,1)     #  808   0x59d4e  8      
  addq $0x4, %rax                   #  809   0x59d56  4      
  nop                               #  810   0x59d5a  1      
  movl %esi, %esi                   #  811   0x59d5b  2      
  movl $0x1, 0x108(%r15,%rsi,1)     #  812   0x59d5d  12     
  cmpq $0x40, %rax                  #  813   0x59d69  4      
  jne .L_5a0e0                      #  814   0x59d6d  6      
  jmpq .L_59440                     #  815   0x59d73  5      
  nop                               #  816   0x59d78  1      
  xorl %edi, %edi                   #  817   0x59d79  2      
  xorl %ecx, %ecx                   #  818   0x59d7b  2      
  nop                               #  819   0x59d7d  1      
  nop                               #  820   0x59d7e  1      
.L_5a140:                           #        0x59d7f  0      
  movl %ebx, %ebx                   #  821   0x59d7f  2      
  movzbl (%r15,%rbx,1), %esi        #  822   0x59d81  5      
  addl $0x1, %ebx                   #  823   0x59d86  3      
  movl %esi, %eax                   #  824   0x59d89  2      
  andl $0x7f, %eax                  #  825   0x59d8b  3      
  shll %cl, %eax                    #  826   0x59d8e  2      
  addl $0x7, %ecx                   #  827   0x59d90  3      
  orl %eax, %edi                    #  828   0x59d93  2      
  testb %sil, %sil                  #  829   0x59d95  3      
  js .L_5a140                       #  830   0x59d98  6      
  movl %edi, %edi                   #  831   0x59d9e  2      
  nop                               #  832   0x59da0  1      
  movl %r13d, %r13d                 #  833   0x59da1  3      
  movq %rdi, 0x70(%r15,%r13,1)      #  834   0x59da4  5      
  jmpq .L_59440                     #  835   0x59da9  5      
  nop                               #  836   0x59dae  1      
  nop                               #  837   0x59daf  1      
.L_5a180:                           #        0x59db0  0      
  movq %rbx, -0x50(%rbp)            #  838   0x59db0  4      
  xorl %r11d, %r11d                 #  839   0x59db4  3      
  nop                               #  840   0x59db7  1      
  nop                               #  841   0x59db8  1      
.L_5a1a0:                           #        0x59db9  0      
  movl %r10d, %eax                  #  842   0x59db9  3      
  andl $0xf, %eax                   #  843   0x59dbc  3      
  cmpl $0xc, %eax                   #  844   0x59dbf  3      
  ja .L_59400                       #  845   0x59dc2  6      
  leal 0xffc8c5f(%rip), %ecx        #  846   0x59dc8  6      
  movl %eax, %eax                   #  847   0x59dce  2      
  leaq (%rcx,%rax,4), %rax          #  848   0x59dd0  4      
  nop                               #  849   0x59dd4  1      
  movl %eax, %eax                   #  850   0x59dd5  2      
  movslq (%r15,%rax,1), %rax        #  851   0x59dd7  4      
  addq %rcx, %rax                   #  852   0x59ddb  3      
  andl $0xffffffe0, %eax            #  853   0x59dde  5      
  addq %r15, %rax                   #  854   0x59de3  3      
  jmpq %rax                         #  855   0x59de6  2      
  nop                               #  856   0x59de8  1      
.L_5a1e0:                           #        0x59de9  0      
  cmpl $0x40, %eax                  #  857   0x59de9  3      
  je .L_5a3a0                       #  858   0x59dec  6      
  cmpl $0x50, %eax                  #  859   0x59df2  3      
  je .L_59660                       #  860   0x59df5  6      
  cmpl $0x30, %eax                  #  861   0x59dfb  3      
  jne .L_59400                      #  862   0x59dfe  6      
  movl %r13d, %edi                  #  863   0x59e04  3      
  xchgw %ax, %ax                    #  864   0x59e07  3      
  movq %rdx, -0x70(%rbp)            #  865   0x59e0a  4      
  movb %r8b, -0x68(%rbp)            #  866   0x59e0e  4      
  movq %r9, -0x78(%rbp)             #  867   0x59e12  4      
  movl %r10d, -0x60(%rbp)           #  868   0x59e16  4      
  nop                               #  869   0x59e1a  1      
  callq ._Unwind_GetDataRelBase     #  870   0x59e1b  5      
.L_5a220:                           #        0x59e20  0      
  movl %eax, %r11d                  #  871   0x59e20  3      
  movq -0x70(%rbp), %rdx            #  872   0x59e23  4      
  movzbl -0x68(%rbp), %r8d          #  873   0x59e27  5      
  movq -0x78(%rbp), %r9             #  874   0x59e2c  4      
  movl -0x60(%rbp), %r10d           #  875   0x59e30  4      
  jmpq .L_59680                     #  876   0x59e34  5      
  nop                               #  877   0x59e39  1      
  movl %ebx, %ebx                   #  878   0x59e3a  2      
  movl (%r15,%rbx,1), %eax          #  879   0x59e3c  4      
  addl $0x4, %ebx                   #  880   0x59e40  3      
  nop                               #  881   0x59e43  1      
  nop                               #  882   0x59e44  1      
.L_5a260:                           #        0x59e45  0      
  xorl %ecx, %ecx                   #  883   0x59e45  2      
  testl %eax, %eax                  #  884   0x59e47  2      
  je .L_596c0                       #  885   0x59e49  6      
  andl $0x70, %r10d                 #  886   0x59e4f  4      
  cmpl $0x10, %r10d                 #  887   0x59e53  4      
  cmovel -0x50(%rbp), %r11d         #  888   0x59e57  5      
  testb %r8b, %r8b                  #  889   0x59e5c  3      
  leal (%r11,%rax,1), %eax          #  890   0x59e5f  4      
  movl %eax, %ecx                   #  891   0x59e63  2      
  jns .L_596c0                      #  892   0x59e65  6      
  movl %eax, %eax                   #  893   0x59e6b  2      
  movl %eax, %eax                   #  894   0x59e6d  2      
  movl (%r15,%rax,1), %ecx          #  895   0x59e6f  4      
  jmpq .L_596c0                     #  896   0x59e73  5      
  nop                               #  897   0x59e78  1      
  movl %ebx, %ebx                   #  898   0x59e79  2      
  movl (%r15,%rbx,1), %eax          #  899   0x59e7b  4      
  addl $0x8, %ebx                   #  900   0x59e7f  3      
  jmpq .L_5a260                     #  901   0x59e82  5      
  nop                               #  902   0x59e87  1      
  nop                               #  903   0x59e88  1      
  movl %ebx, %ebx                   #  904   0x59e89  2      
  movzwl (%r15,%rbx,1), %eax        #  905   0x59e8b  5      
  addl $0x2, %ebx                   #  906   0x59e90  3      
  jmpq .L_5a260                     #  907   0x59e93  5      
  nop                               #  908   0x59e98  1      
  nop                               #  909   0x59e99  1      
  xorl %eax, %eax                   #  910   0x59e9a  2      
  xorl %ecx, %ecx                   #  911   0x59e9c  2      
  nop                               #  912   0x59e9e  1      
  nop                               #  913   0x59e9f  1      
.L_5a300:                           #        0x59ea0  0      
  movl %ebx, %ebx                   #  914   0x59ea0  2      
  movzbl (%r15,%rbx,1), %edi        #  915   0x59ea2  5      
  movl $0x7f, %esi                  #  916   0x59ea7  5      
  addl $0x1, %ebx                   #  917   0x59eac  3      
  andl %edi, %esi                   #  918   0x59eaf  2      
  shll %cl, %esi                    #  919   0x59eb1  2      
  addl $0x7, %ecx                   #  920   0x59eb3  3      
  orl %esi, %eax                    #  921   0x59eb6  2      
  testb %dil, %dil                  #  922   0x59eb8  3      
  nop                               #  923   0x59ebb  1      
  js .L_5a300                       #  924   0x59ebc  6      
  jmpq .L_5a260                     #  925   0x59ec2  5      
  nop                               #  926   0x59ec7  1      
  nop                               #  927   0x59ec8  1      
  movl -0x48(%rbp), %esi            #  928   0x59ec9  3      
  movl %ebx, %edi                   #  929   0x59ecc  2      
  movq %rdx, -0x70(%rbp)            #  930   0x59ece  4      
  movb %r8b, -0x68(%rbp)            #  931   0x59ed2  4      
  movq %r9, -0x78(%rbp)             #  932   0x59ed6  4      
  movl %r10d, -0x60(%rbp)           #  933   0x59eda  4      
  movl %r11d, -0x58(%rbp)           #  934   0x59ede  4      
  xchgw %ax, %ax                    #  935   0x59ee2  3      
  callq .read_sleb128               #  936   0x59ee5  5      
  movq -0x70(%rbp), %rdx            #  937   0x59eea  4      
  movl %eax, %ebx                   #  938   0x59eee  2      
  movzbl -0x68(%rbp), %r8d          #  939   0x59ef0  5      
  movl -0x28(%rbp), %eax            #  940   0x59ef5  3      
  movq -0x78(%rbp), %r9             #  941   0x59ef8  4      
  movl -0x60(%rbp), %r10d           #  942   0x59efc  4      
  movl -0x58(%rbp), %r11d           #  943   0x59f00  4      
  jmpq .L_5a260                     #  944   0x59f04  5      
  nop                               #  945   0x59f09  1      
  movl %ebx, %ebx                   #  946   0x59f0a  2      
  movswl (%r15,%rbx,1), %eax        #  947   0x59f0c  5      
  addl $0x2, %ebx                   #  948   0x59f11  3      
  jmpq .L_5a260                     #  949   0x59f14  5      
  xchgw %ax, %ax                    #  950   0x59f19  3      
  nop                               #  951   0x59f1c  1      
.L_5a3a0:                           #        0x59f1d  0      
  movl %r13d, %edi                  #  952   0x59f1d  3      
  movq %rdx, -0x70(%rbp)            #  953   0x59f20  4      
  movb %r8b, -0x68(%rbp)            #  954   0x59f24  4      
  movq %r9, -0x78(%rbp)             #  955   0x59f28  4      
  movl %r10d, -0x60(%rbp)           #  956   0x59f2c  4      
  nop                               #  957   0x59f30  1      
  callq ._Unwind_GetRegionStart     #  958   0x59f31  5      
  jmpq .L_5a220                     #  959   0x59f36  5      
  nop                               #  960   0x59f3b  1      
  nop                               #  961   0x59f3c  1      
.L_5a3e0:                           #        0x59f3d  0      
  movl %r13d, %edi                  #  962   0x59f3d  3      
  movq %rdx, -0x70(%rbp)            #  963   0x59f40  4      
  movb %r8b, -0x68(%rbp)            #  964   0x59f44  4      
  movq %r9, -0x78(%rbp)             #  965   0x59f48  4      
  movl %r10d, -0x60(%rbp)           #  966   0x59f4c  4      
  nop                               #  967   0x59f50  1      
  callq ._Unwind_GetTextRelBase     #  968   0x59f51  5      
  jmpq .L_5a220                     #  969   0x59f56  5      
  nop                               #  970   0x59f5b  1      
  nop                               #  971   0x59f5c  1      
.L_5a420:                           #        0x59f5d  0      
  subl $0x150, %esp                 #  972   0x59f5d  6      
  addq %r15, %rsp                   #  973   0x59f63  3      
  leal 0xf(%rsp), %eax              #  974   0x59f66  4      
  andl $0xfffffff0, %eax            #  975   0x59f6a  5      
  jmpq .L_599e0                     #  976   0x59f6f  5      
  nop                               #  977   0x59f74  1      
                                                             
.size execute_cfa_program, .-execute_cfa_program

