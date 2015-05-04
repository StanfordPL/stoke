  .text
  .globl execute_cfa_program
  .type execute_cfa_program, @function

#! file-offset 0x593c0
#! rip-offset  0x593c0
#! capacity    4352 bytes

# Text                              #  Line  RIP      Bytes  
.execute_cfa_program:               #        0x593c0  0      
  pushq %rbp                        #  1     0x593c0  2      
  movq %rsp, %rbp                   #  2     0x593c2  3      
  pushq %r14                        #  3     0x593c5  3      
  movl %esi, %r14d                  #  4     0x593c8  3      
  pushq %r13                        #  5     0x593cb  3      
  movl %edx, %r13d                  #  6     0x593ce  3      
  pushq %r12                        #  7     0x593d1  3      
  movl %ecx, %r12d                  #  8     0x593d4  3      
  pushq %rbx                        #  9     0x593d7  2      
  movl %edi, %ebx                   #  10    0x593d9  2      
  subl $0x60, %esp                  #  11    0x593db  3      
  addq %r15, %rsp                   #  12    0x593de  3      
  cmpl %r14d, %ebx                  #  13    0x593e1  3      
  nop                               #  14    0x593e4  1      
  movl %r12d, %r12d                 #  15    0x593e5  3      
  movl $0x0, 0x120(%r15,%r12,1)     #  16    0x593e8  12     
  jae .L_59500                      #  17    0x593f4  6      
  movl %r13d, %r13d                 #  18    0x593fa  3      
  movq 0x60(%r15,%r13,1), %rax      #  19    0x593fd  5      
  nop                               #  20    0x59402  1      
  movl %r12d, %r12d                 #  21    0x59403  3      
  movl 0x140(%r15,%r12,1), %esi     #  22    0x59406  8      
  shrq $0x3f, %rax                  #  23    0x5940e  4      
  movl %r13d, %r13d                 #  24    0x59412  3      
  addl 0x4c(%r15,%r13,1), %eax      #  25    0x59415  5      
  cmpl %esi, %eax                   #  26    0x5941a  2      
  jbe .L_59500                      #  27    0x5941c  6      
  nop                               #  28    0x59422  1      
  leal -0x24(%rbp), %eax            #  29    0x59423  3      
  leal -0x28(%rbp), %ecx            #  30    0x59426  3      
  leal 0xffc9928(%rip), %edx        #  31    0x59429  6      
  xorl %r9d, %r9d                   #  32    0x5942f  3      
  movl %r12d, -0x3c(%rbp)           #  33    0x59432  4      
  movq %rax, -0x38(%rbp)            #  34    0x59436  4      
  movq %rcx, -0x48(%rbp)            #  35    0x5943a  4      
  nop                               #  36    0x5943e  1      
.L_59440:                           #        0x5943f  0      
  movl %ebx, %ebx                   #  37    0x5943f  2      
  movzbl (%r15,%rbx,1), %ecx        #  38    0x59441  5      
  addl $0x1, %ebx                   #  39    0x59446  3      
  movzbl %cl, %r8d                  #  40    0x59449  4      
  movl %r8d, %eax                   #  41    0x5944d  3      
  andl $0xc0, %eax                  #  42    0x59450  3      
  cmpl $0x40, %eax                  #  43    0x59453  3      
  je .L_594a0                       #  44    0x59456  6      
  cmpl $0x80, %eax                  #  45    0x5945c  3      
  je .L_59540                       #  46    0x5945f  6      
  cmpl $0xc0, %eax                  #  47    0x59465  3      
  je .L_595e0                       #  48    0x59468  6      
  cmpb $0x2f, %cl                   #  49    0x5946e  3      
  jbe .L_595c0                      #  50    0x59471  6      
  nop                               #  51    0x59477  1      
.L_59480:                           #        0x59478  0      
  nop                               #  52    0x59478  1      
  nop                               #  53    0x59479  1      
  callq .abort                      #  54    0x5947a  5      
.L_594a0:                           #        0x5947f  0      
  andl $0x3f, %r8d                  #  55    0x5947f  4      
  movl %r12d, %r12d                 #  56    0x59483  3      
  imull 0x150(%r15,%r12,1), %r8d    #  57    0x59486  9      
  addl %esi, %r8d                   #  58    0x5948f  3      
  movl %r12d, %r12d                 #  59    0x59492  3      
  movl %r8d, 0x140(%r15,%r12,1)     #  60    0x59495  8      
  xchgw %ax, %ax                    #  61    0x5949d  3      
.L_594c0:                           #        0x594a0  0      
  cmpl %ebx, %r14d                  #  62    0x594a0  3      
  jbe .L_59500                      #  63    0x594a3  6      
  movl %r13d, %r13d                 #  64    0x594a9  3      
  movq 0x60(%r15,%r13,1), %rax      #  65    0x594ac  5      
  movl %r12d, %r12d                 #  66    0x594b1  3      
  movl 0x140(%r15,%r12,1), %esi     #  67    0x594b4  8      
  shrq $0x3f, %rax                  #  68    0x594bc  4      
  nop                               #  69    0x594c0  1      
  movl %r13d, %r13d                 #  70    0x594c1  3      
  addl 0x4c(%r15,%r13,1), %eax      #  71    0x594c4  5      
  cmpl %esi, %eax                   #  72    0x594c9  2      
  ja .L_59440                       #  73    0x594cb  6      
  nop                               #  74    0x594d1  1      
  nop                               #  75    0x594d2  1      
.L_59500:                           #        0x594d3  0      
  leal -0x20(%rbp), %esp            #  76    0x594d3  3      
  addq %r15, %rsp                   #  77    0x594d6  3      
  popq %rbx                         #  78    0x594d9  2      
  popq %r12                         #  79    0x594db  3      
  popq %r13                         #  80    0x594de  3      
  popq %r14                         #  81    0x594e1  3      
  popq %r11                         #  82    0x594e4  3      
  movl %r11d, %ebp                  #  83    0x594e7  3      
  addq %r15, %rbp                   #  84    0x594ea  3      
  popq %r11                         #  85    0x594ed  3      
  nop                               #  86    0x594f0  1      
  andl $0xffffffe0, %r11d           #  87    0x594f1  7      
  addq %r15, %r11                   #  88    0x594f8  3      
  jmpq %r11                         #  89    0x594fb  3      
  nop                               #  90    0x594fe  1      
  nop                               #  91    0x594ff  1      
.L_59540:                           #        0x59500  0      
  andl $0x3f, %r8d                  #  92    0x59500  4      
  xorl %edi, %edi                   #  93    0x59504  2      
  xorl %ecx, %ecx                   #  94    0x59506  2      
  nop                               #  95    0x59508  1      
  nop                               #  96    0x59509  1      
.L_59560:                           #        0x5950a  0      
  movl %ebx, %ebx                   #  97    0x5950a  2      
  movzbl (%r15,%rbx,1), %esi        #  98    0x5950c  5      
  addl $0x1, %ebx                   #  99    0x59511  3      
  movl %esi, %eax                   #  100   0x59514  2      
  andl $0x7f, %eax                  #  101   0x59516  3      
  shll %cl, %eax                    #  102   0x59519  2      
  addl $0x7, %ecx                   #  103   0x5951b  3      
  orl %eax, %edi                    #  104   0x5951e  2      
  testb %sil, %sil                  #  105   0x59520  3      
  js .L_59560                       #  106   0x59523  6      
  nop                               #  107   0x59529  1      
  movl %r12d, %r12d                 #  108   0x5952a  3      
  imull 0x148(%r15,%r12,1), %edi    #  109   0x5952d  9      
  shll $0x4, %r8d                   #  110   0x59536  4      
  movslq %r8d, %r8                  #  111   0x5953a  3      
  leaq (%r12,%r8,1), %r8            #  112   0x5953d  4      
  nop                               #  113   0x59541  1      
  movl %r8d, %r8d                   #  114   0x59542  3      
  movl $0x1, 0x8(%r15,%r8,1)        #  115   0x59545  9      
  movslq %edi, %rdi                 #  116   0x5954e  3      
  movl %r8d, %r8d                   #  117   0x59551  3      
  movq %rdi, (%r15,%r8,1)           #  118   0x59554  4      
  jmpq .L_594c0                     #  119   0x59558  5      
  nop                               #  120   0x5955d  1      
.L_595c0:                           #        0x5955e  0      
  movzbl %cl, %ecx                  #  121   0x5955e  3      
  leaq (%rdx,%rcx,4), %rax          #  122   0x59561  4      
  movl %eax, %eax                   #  123   0x59565  2      
  movslq (%r15,%rax,1), %rax        #  124   0x59567  4      
  addq %rdx, %rax                   #  125   0x5956b  3      
  andl $0xffffffe0, %eax            #  126   0x5956e  5      
  addq %r15, %rax                   #  127   0x59573  3      
  jmpq %rax                         #  128   0x59576  2      
  nop                               #  129   0x59578  1      
.L_595e0:                           #        0x59579  0      
  shlq $0x4, %r8                    #  130   0x59579  4      
  andl $0x3f0, %r8d                 #  131   0x5957d  7      
  leaq (%r12,%r8,1), %r8            #  132   0x59584  4      
  movl %r8d, %r8d                   #  133   0x59588  3      
  movl $0x0, 0x8(%r15,%r8,1)        #  134   0x5958b  9      
  jmpq .L_594c0                     #  135   0x59594  5      
  xorl %edi, %edi                   #  136   0x59599  2      
  xorl %ecx, %ecx                   #  137   0x5959b  2      
  nop                               #  138   0x5959d  1      
  nop                               #  139   0x5959e  1      
.L_59620:                           #        0x5959f  0      
  movl %ebx, %ebx                   #  140   0x5959f  2      
  movzbl (%r15,%rbx,1), %esi        #  141   0x595a1  5      
  addl $0x1, %ebx                   #  142   0x595a6  3      
  movl %esi, %eax                   #  143   0x595a9  2      
  andl $0x7f, %eax                  #  144   0x595ab  3      
  shll %cl, %eax                    #  145   0x595ae  2      
  addl $0x7, %ecx                   #  146   0x595b0  3      
  orl %eax, %edi                    #  147   0x595b3  2      
  testb %sil, %sil                  #  148   0x595b5  3      
  js .L_59620                       #  149   0x595b8  6      
  xorl %r8d, %r8d                   #  150   0x595be  3      
  xorl %ecx, %ecx                   #  151   0x595c1  2      
.L_59640:                           #        0x595c3  0      
  movl %ebx, %ebx                   #  152   0x595c3  2      
  movzbl (%r15,%rbx,1), %esi        #  153   0x595c5  5      
  addl $0x1, %ebx                   #  154   0x595ca  3      
  movl %esi, %eax                   #  155   0x595cd  2      
  andl $0x7f, %eax                  #  156   0x595cf  3      
  shll %cl, %eax                    #  157   0x595d2  2      
  addl $0x7, %ecx                   #  158   0x595d4  3      
  orl %eax, %r8d                    #  159   0x595d7  3      
  testb %sil, %sil                  #  160   0x595da  3      
  js .L_59640                       #  161   0x595dd  6      
  nop                               #  162   0x595e3  1      
  movl %r12d, %r12d                 #  163   0x595e4  3      
  imull 0x148(%r15,%r12,1), %r8d    #  164   0x595e7  9      
  movl %edi, %eax                   #  165   0x595f0  2      
  shll $0x4, %eax                   #  166   0x595f2  3      
  cltq                              #  167   0x595f5  2      
  leaq (%r12,%rax,1), %rax          #  168   0x595f7  4      
  negl %r8d                         #  169   0x595fb  3      
  nop                               #  170   0x595fe  1      
  movl %eax, %eax                   #  171   0x595ff  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  172   0x59601  9      
  movslq %r8d, %r8                  #  173   0x5960a  3      
  movl %eax, %eax                   #  174   0x5960d  2      
  movq %r8, (%r15,%rax,1)           #  175   0x5960f  4      
  jmpq .L_594c0                     #  176   0x59613  5      
  nop                               #  177   0x59618  1      
  movl %r12d, %r12d                 #  178   0x59619  3      
  movzbl 0x160(%r15,%r12,1), %r8d   #  179   0x5961c  9      
  cmpb $0xff, %r8b                  #  180   0x59625  4      
  movzbl %r8b, %r10d                #  181   0x59629  4      
  je .L_5a200                       #  182   0x5962d  6      
  movl %r10d, %eax                  #  183   0x59633  3      
  andl $0x70, %eax                  #  184   0x59636  3      
  cmpl $0x20, %eax                  #  185   0x59639  3      
  je .L_5a460                       #  186   0x5963c  6      
  jg .L_5a260                       #  187   0x59642  6      
  testl %eax, %eax                  #  188   0x59648  2      
  je .L_596e0                       #  189   0x5964a  6      
  cmpl $0x10, %eax                  #  190   0x59650  3      
  jne .L_59480                      #  191   0x59653  6      
  nop                               #  192   0x59659  1      
.L_596e0:                           #        0x5965a  0      
  xorl %r11d, %r11d                 #  193   0x5965a  3      
  nop                               #  194   0x5965d  1      
  nop                               #  195   0x5965e  1      
.L_59700:                           #        0x5965f  0      
  cmpb $0x50, %r8b                  #  196   0x5965f  4      
  movq %rbx, -0x50(%rbp)            #  197   0x59663  4      
  jne .L_5a220                      #  198   0x59667  6      
  leal 0x3(%rbx), %eax              #  199   0x5966d  3      
  andl $0xfffffffc, %eax            #  200   0x59670  5      
  leal 0x4(%rax), %ebx              #  201   0x59675  3      
  movl %eax, %eax                   #  202   0x59678  2      
  movl %eax, %eax                   #  203   0x5967a  2      
  movl (%r15,%rax,1), %ecx          #  204   0x5967c  4      
  nop                               #  205   0x59680  1      
  movl %ebx, %ebx                   #  206   0x59681  2      
  nop                               #  207   0x59683  1      
  nop                               #  208   0x59684  1      
.L_59740:                           #        0x59685  0      
  movl %r12d, %r12d                 #  209   0x59685  3      
  movl %ecx, 0x140(%r15,%r12,1)     #  210   0x59688  8      
  jmpq .L_594c0                     #  211   0x59690  5      
  nop                               #  212   0x59695  1      
  nop                               #  213   0x59696  1      
  movl %ebx, %ebx                   #  214   0x59697  2      
  movzbl (%r15,%rbx,1), %eax        #  215   0x59699  5      
  addl $0x1, %ebx                   #  216   0x5969e  3      
  movl %r12d, %r12d                 #  217   0x596a1  3      
  imull 0x150(%r15,%r12,1), %eax    #  218   0x596a4  9      
  leal (%rax,%rsi,1), %esi          #  219   0x596ad  3      
  nop                               #  220   0x596b0  1      
  movl %r12d, %r12d                 #  221   0x596b1  3      
  movl %esi, 0x140(%r15,%r12,1)     #  222   0x596b4  8      
  jmpq .L_594c0                     #  223   0x596bc  5      
  nop                               #  224   0x596c1  1      
  nop                               #  225   0x596c2  1      
  movl %ebx, %ebx                   #  226   0x596c3  2      
  movzwl (%r15,%rbx,1), %eax        #  227   0x596c5  5      
  addl $0x2, %ebx                   #  228   0x596ca  3      
  movl %r12d, %r12d                 #  229   0x596cd  3      
  imull 0x150(%r15,%r12,1), %eax    #  230   0x596d0  9      
  leal (%rax,%rsi,1), %esi          #  231   0x596d9  3      
  nop                               #  232   0x596dc  1      
  movl %r12d, %r12d                 #  233   0x596dd  3      
  movl %esi, 0x140(%r15,%r12,1)     #  234   0x596e0  8      
  jmpq .L_594c0                     #  235   0x596e8  5      
  nop                               #  236   0x596ed  1      
  nop                               #  237   0x596ee  1      
  movl %ebx, %ebx                   #  238   0x596ef  2      
  movl (%r15,%rbx,1), %eax          #  239   0x596f1  4      
  addl $0x4, %ebx                   #  240   0x596f5  3      
  movl %r12d, %r12d                 #  241   0x596f8  3      
  imull 0x150(%r15,%r12,1), %eax    #  242   0x596fb  9      
  addl %esi, %eax                   #  243   0x59704  2      
  nop                               #  244   0x59706  1      
  movl %r12d, %r12d                 #  245   0x59707  3      
  movl %eax, 0x140(%r15,%r12,1)     #  246   0x5970a  8      
  jmpq .L_594c0                     #  247   0x59712  5      
  nop                               #  248   0x59717  1      
  nop                               #  249   0x59718  1      
  xorl %edi, %edi                   #  250   0x59719  2      
  xorl %ecx, %ecx                   #  251   0x5971b  2      
  nop                               #  252   0x5971d  1      
  nop                               #  253   0x5971e  1      
.L_59840:                           #        0x5971f  0      
  movl %ebx, %ebx                   #  254   0x5971f  2      
  movzbl (%r15,%rbx,1), %esi        #  255   0x59721  5      
  addl $0x1, %ebx                   #  256   0x59726  3      
  movl %esi, %eax                   #  257   0x59729  2      
  andl $0x7f, %eax                  #  258   0x5972b  3      
  shll %cl, %eax                    #  259   0x5972e  2      
  addl $0x7, %ecx                   #  260   0x59730  3      
  orl %eax, %edi                    #  261   0x59733  2      
  testb %sil, %sil                  #  262   0x59735  3      
  js .L_59840                       #  263   0x59738  6      
  xorl %r8d, %r8d                   #  264   0x5973e  3      
  xorl %ecx, %ecx                   #  265   0x59741  2      
.L_59860:                           #        0x59743  0      
  movl %ebx, %ebx                   #  266   0x59743  2      
  movzbl (%r15,%rbx,1), %esi        #  267   0x59745  5      
  addl $0x1, %ebx                   #  268   0x5974a  3      
  movl %esi, %eax                   #  269   0x5974d  2      
  andl $0x7f, %eax                  #  270   0x5974f  3      
  shll %cl, %eax                    #  271   0x59752  2      
  addl $0x7, %ecx                   #  272   0x59754  3      
  orl %eax, %r8d                    #  273   0x59757  3      
  testb %sil, %sil                  #  274   0x5975a  3      
  js .L_59860                       #  275   0x5975d  6      
  nop                               #  276   0x59763  1      
  movl %r12d, %r12d                 #  277   0x59764  3      
  movl 0x148(%r15,%r12,1), %ecx     #  278   0x59767  8      
  movl %edi, %eax                   #  279   0x5976f  2      
  shll $0x4, %eax                   #  280   0x59771  3      
  cltq                              #  281   0x59774  2      
  imull %r8d, %ecx                  #  282   0x59776  4      
  leaq (%r12,%rax,1), %rax          #  283   0x5977a  4      
  nop                               #  284   0x5977e  1      
  movl %eax, %eax                   #  285   0x5977f  2      
  movl $0x1, 0x8(%r15,%rax,1)       #  286   0x59781  9      
  movslq %ecx, %rcx                 #  287   0x5978a  3      
  movl %eax, %eax                   #  288   0x5978d  2      
  movq %rcx, (%r15,%rax,1)          #  289   0x5978f  4      
  jmpq .L_594c0                     #  290   0x59793  5      
  nop                               #  291   0x59798  1      
  xorl %edi, %edi                   #  292   0x59799  2      
  xorl %ecx, %ecx                   #  293   0x5979b  2      
  nop                               #  294   0x5979d  1      
  nop                               #  295   0x5979e  1      
.L_598e0:                           #        0x5979f  0      
  movl %ebx, %ebx                   #  296   0x5979f  2      
  movzbl (%r15,%rbx,1), %esi        #  297   0x597a1  5      
  addl $0x1, %ebx                   #  298   0x597a6  3      
  movl %esi, %eax                   #  299   0x597a9  2      
  andl $0x7f, %eax                  #  300   0x597ab  3      
  shll %cl, %eax                    #  301   0x597ae  2      
  addl $0x7, %ecx                   #  302   0x597b0  3      
  orl %eax, %edi                    #  303   0x597b3  2      
  testb %sil, %sil                  #  304   0x597b5  3      
  js .L_598e0                       #  305   0x597b8  6      
  nop                               #  306   0x597be  1      
.L_59900:                           #        0x597bf  0      
  movl %edi, %eax                   #  307   0x597bf  2      
  shll $0x4, %eax                   #  308   0x597c1  3      
  cltq                              #  309   0x597c4  2      
  leaq (%r12,%rax,1), %rax          #  310   0x597c6  4      
  movl %eax, %eax                   #  311   0x597ca  2      
  movl $0x0, 0x8(%r15,%rax,1)       #  312   0x597cc  9      
  jmpq .L_594c0                     #  313   0x597d5  5      
  nop                               #  314   0x597da  1      
  xorl %edi, %edi                   #  315   0x597db  2      
  xorl %ecx, %ecx                   #  316   0x597dd  2      
  nop                               #  317   0x597df  1      
  nop                               #  318   0x597e0  1      
.L_59940:                           #        0x597e1  0      
  movl %ebx, %ebx                   #  319   0x597e1  2      
  movzbl (%r15,%rbx,1), %esi        #  320   0x597e3  5      
  addl $0x1, %ebx                   #  321   0x597e8  3      
  movl %esi, %eax                   #  322   0x597eb  2      
  andl $0x7f, %eax                  #  323   0x597ed  3      
  shll %cl, %eax                    #  324   0x597f0  2      
  addl $0x7, %ecx                   #  325   0x597f2  3      
  orl %eax, %edi                    #  326   0x597f5  2      
  testb %sil, %sil                  #  327   0x597f7  3      
  js .L_59940                       #  328   0x597fa  6      
  movl %edi, %eax                   #  329   0x59800  2      
  shll $0x4, %eax                   #  330   0x59802  3      
  cltq                              #  331   0x59805  2      
  leaq (%r12,%rax,1), %rax          #  332   0x59807  4      
  movl %eax, %eax                   #  333   0x5980b  2      
  movl $0x6, 0x8(%r15,%rax,1)       #  334   0x5980d  9      
  jmpq .L_594c0                     #  335   0x59816  5      
  nop                               #  336   0x5981b  1      
  xorl %edi, %edi                   #  337   0x5981c  2      
  xorl %ecx, %ecx                   #  338   0x5981e  2      
  nop                               #  339   0x59820  1      
  nop                               #  340   0x59821  1      
.L_599a0:                           #        0x59822  0      
  movl %ebx, %ebx                   #  341   0x59822  2      
  movzbl (%r15,%rbx,1), %esi        #  342   0x59824  5      
  addl $0x1, %ebx                   #  343   0x59829  3      
  movl %esi, %eax                   #  344   0x5982c  2      
  andl $0x7f, %eax                  #  345   0x5982e  3      
  shll %cl, %eax                    #  346   0x59831  2      
  addl $0x7, %ecx                   #  347   0x59833  3      
  orl %eax, %edi                    #  348   0x59836  2      
  testb %sil, %sil                  #  349   0x59838  3      
  js .L_599a0                       #  350   0x5983b  6      
  jmpq .L_59900                     #  351   0x59841  5      
  xorl %r8d, %r8d                   #  352   0x59846  3      
  xorl %ecx, %ecx                   #  353   0x59849  2      
  nop                               #  354   0x5984b  1      
  nop                               #  355   0x5984c  1      
.L_599e0:                           #        0x5984d  0      
  movl %ebx, %ebx                   #  356   0x5984d  2      
  movzbl (%r15,%rbx,1), %esi        #  357   0x5984f  5      
  addl $0x1, %ebx                   #  358   0x59854  3      
  movl %esi, %eax                   #  359   0x59857  2      
  andl $0x7f, %eax                  #  360   0x59859  3      
  shll %cl, %eax                    #  361   0x5985c  2      
  addl $0x7, %ecx                   #  362   0x5985e  3      
  orl %eax, %r8d                    #  363   0x59861  3      
  testb %sil, %sil                  #  364   0x59864  3      
  js .L_599e0                       #  365   0x59867  6      
  xorl %edi, %edi                   #  366   0x5986d  2      
  xorl %ecx, %ecx                   #  367   0x5986f  2      
.L_59a00:                           #        0x59871  0      
  movl %ebx, %ebx                   #  368   0x59871  2      
  movzbl (%r15,%rbx,1), %esi        #  369   0x59873  5      
  addl $0x1, %ebx                   #  370   0x59878  3      
  movl %esi, %eax                   #  371   0x5987b  2      
  andl $0x7f, %eax                  #  372   0x5987d  3      
  shll %cl, %eax                    #  373   0x59880  2      
  addl $0x7, %ecx                   #  374   0x59882  3      
  orl %eax, %edi                    #  375   0x59885  2      
  testb %sil, %sil                  #  376   0x59887  3      
  js .L_59a00                       #  377   0x5988a  6      
  movl %r8d, %eax                   #  378   0x59890  3      
  movl %edi, %edi                   #  379   0x59893  2      
  shll $0x4, %eax                   #  380   0x59895  3      
  cltq                              #  381   0x59898  2      
  leaq (%r12,%rax,1), %rax          #  382   0x5989a  4      
  movl %eax, %eax                   #  383   0x5989e  2      
  movl $0x2, 0x8(%r15,%rax,1)       #  384   0x598a0  9      
  movl %eax, %eax                   #  385   0x598a9  2      
  movq %rdi, (%r15,%rax,1)          #  386   0x598ab  4      
  jmpq .L_594c0                     #  387   0x598af  5      
  nop                               #  388   0x598b4  1      
  testq %r9, %r9                    #  389   0x598b5  3      
  je .L_5a4a0                       #  390   0x598b8  6      
  movq %r9, %rax                    #  391   0x598be  3      
  movl %r9d, %r9d                   #  392   0x598c1  3      
  movl 0x120(%r15,%r9,1), %r9d      #  393   0x598c4  8      
  nop                               #  394   0x598cc  1      
.L_59a60:                           #        0x598cd  0      
  movq %rax, %rdi                   #  395   0x598cd  3      
  movq %r12, %rsi                   #  396   0x598d0  3      
  movl $0x28, %ecx                  #  397   0x598d3  5      
  movl %esi, %esi                   #  398   0x598d8  2      
  leaq (%r15,%rsi,1), %rsi          #  399   0x598da  4      
  movl %edi, %edi                   #  400   0x598de  2      
  leaq (%r15,%rdi,1), %rdi          #  401   0x598e0  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  402   0x598e4  4      
  movl %esi, %esi                   #  403   0x598e8  2      
  movl %edi, %edi                   #  404   0x598ea  2      
  xchgw %ax, %ax                    #  405   0x598ec  3      
  movl %r12d, %r12d                 #  406   0x598ef  3      
  movl %eax, 0x120(%r15,%r12,1)     #  407   0x598f2  8      
  jmpq .L_594c0                     #  408   0x598fa  5      
  nop                               #  409   0x598ff  1      
  nop                               #  410   0x59900  1      
  movl %r12d, %r12d                 #  411   0x59901  3      
  movl 0x120(%r15,%r12,1), %eax     #  412   0x59904  8      
  movq %r12, %rdi                   #  413   0x5990c  3      
  movl $0x28, %ecx                  #  414   0x5990f  5      
  movq %rax, %rsi                   #  415   0x59914  3      
  nop                               #  416   0x59917  1      
  movl %esi, %esi                   #  417   0x59918  2      
  leaq (%r15,%rsi,1), %rsi          #  418   0x5991a  4      
  movl %edi, %edi                   #  419   0x5991e  2      
  leaq (%r15,%rdi,1), %rdi          #  420   0x59920  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  421   0x59924  4      
  movl %esi, %esi                   #  422   0x59928  2      
  movl %edi, %edi                   #  423   0x5992a  2      
  movl %eax, %eax                   #  424   0x5992c  2      
  movl %r9d, 0x120(%r15,%rax,1)     #  425   0x5992e  8      
  movq %rax, %r9                    #  426   0x59936  3      
  jmpq .L_594c0                     #  427   0x59939  5      
  nop                               #  428   0x5993e  1      
  nop                               #  429   0x5993f  1      
  xorl %edi, %edi                   #  430   0x59940  2      
  xorl %ecx, %ecx                   #  431   0x59942  2      
  nop                               #  432   0x59944  1      
  nop                               #  433   0x59945  1      
.L_59b20:                           #        0x59946  0      
  movl %ebx, %ebx                   #  434   0x59946  2      
  movzbl (%r15,%rbx,1), %esi        #  435   0x59948  5      
  addl $0x1, %ebx                   #  436   0x5994d  3      
  movl %esi, %eax                   #  437   0x59950  2      
  andl $0x7f, %eax                  #  438   0x59952  3      
  shll %cl, %eax                    #  439   0x59955  2      
  addl $0x7, %ecx                   #  440   0x59957  3      
  orl %eax, %edi                    #  441   0x5995a  2      
  testb %sil, %sil                  #  442   0x5995c  3      
  js .L_59b20                       #  443   0x5995f  6      
  movl %edi, %edi                   #  444   0x59965  2      
  xorl %ecx, %ecx                   #  445   0x59967  2      
  nop                               #  446   0x59969  1      
  movl %r12d, %r12d                 #  447   0x5996a  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  448   0x5996d  8      
  xorl %edi, %edi                   #  449   0x59975  2      
  nop                               #  450   0x59977  1      
  nop                               #  451   0x59978  1      
.L_59b60:                           #        0x59979  0      
  movl %ebx, %ebx                   #  452   0x59979  2      
  movzbl (%r15,%rbx,1), %esi        #  453   0x5997b  5      
  addl $0x1, %ebx                   #  454   0x59980  3      
  movl %esi, %eax                   #  455   0x59983  2      
  andl $0x7f, %eax                  #  456   0x59985  3      
  shll %cl, %eax                    #  457   0x59988  2      
  addl $0x7, %ecx                   #  458   0x5998a  3      
  orl %eax, %edi                    #  459   0x5998d  2      
  testb %sil, %sil                  #  460   0x5998f  3      
  js .L_59b60                       #  461   0x59992  6      
  movl %edi, %edi                   #  462   0x59998  2      
  nop                               #  463   0x5999a  1      
  movl %r12d, %r12d                 #  464   0x5999b  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  465   0x5999e  12     
  movl %r12d, %r12d                 #  466   0x599aa  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  467   0x599ad  8      
  jmpq .L_594c0                     #  468   0x599b5  5      
  nop                               #  469   0x599ba  1      
  xorl %edi, %edi                   #  470   0x599bb  2      
  xorl %ecx, %ecx                   #  471   0x599bd  2      
  nop                               #  472   0x599bf  1      
  nop                               #  473   0x599c0  1      
.L_59bc0:                           #        0x599c1  0      
  movl %ebx, %ebx                   #  474   0x599c1  2      
  movzbl (%r15,%rbx,1), %esi        #  475   0x599c3  5      
  addl $0x1, %ebx                   #  476   0x599c8  3      
  movl %esi, %eax                   #  477   0x599cb  2      
  andl $0x7f, %eax                  #  478   0x599cd  3      
  shll %cl, %eax                    #  479   0x599d0  2      
  addl $0x7, %ecx                   #  480   0x599d2  3      
  orl %eax, %edi                    #  481   0x599d5  2      
  testb %sil, %sil                  #  482   0x599d7  3      
  js .L_59bc0                       #  483   0x599da  6      
  movl %edi, %edi                   #  484   0x599e0  2      
  nop                               #  485   0x599e2  1      
  movl %r12d, %r12d                 #  486   0x599e3  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  487   0x599e6  12     
  movl %r12d, %r12d                 #  488   0x599f2  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  489   0x599f5  8      
  jmpq .L_594c0                     #  490   0x599fd  5      
  nop                               #  491   0x59a02  1      
  xorl %edi, %edi                   #  492   0x59a03  2      
  xorl %ecx, %ecx                   #  493   0x59a05  2      
  nop                               #  494   0x59a07  1      
  nop                               #  495   0x59a08  1      
.L_59c20:                           #        0x59a09  0      
  movl %ebx, %ebx                   #  496   0x59a09  2      
  movzbl (%r15,%rbx,1), %esi        #  497   0x59a0b  5      
  addl $0x1, %ebx                   #  498   0x59a10  3      
  movl %esi, %eax                   #  499   0x59a13  2      
  andl $0x7f, %eax                  #  500   0x59a15  3      
  shll %cl, %eax                    #  501   0x59a18  2      
  addl $0x7, %ecx                   #  502   0x59a1a  3      
  orl %eax, %edi                    #  503   0x59a1d  2      
  testb %sil, %sil                  #  504   0x59a1f  3      
  js .L_59c20                       #  505   0x59a22  6      
  movl %edi, %edi                   #  506   0x59a28  2      
  nop                               #  507   0x59a2a  1      
  movl %r12d, %r12d                 #  508   0x59a2b  3      
  movq %rdi, 0x128(%r15,%r12,1)     #  509   0x59a2e  8      
  jmpq .L_594c0                     #  510   0x59a36  5      
  nop                               #  511   0x59a3b  1      
  nop                               #  512   0x59a3c  1      
  movl %r12d, %r12d                 #  513   0x59a3d  3      
  movl %ebx, 0x138(%r15,%r12,1)     #  514   0x59a40  8      
  movl %r12d, %r12d                 #  515   0x59a48  3      
  movl $0x2, 0x13c(%r15,%r12,1)     #  516   0x59a4b  12     
  xorl %edi, %edi                   #  517   0x59a57  2      
  xorl %ecx, %ecx                   #  518   0x59a59  2      
  xchgw %ax, %ax                    #  519   0x59a5b  3      
.L_59c80:                           #        0x59a5e  0      
  movl %ebx, %ebx                   #  520   0x59a5e  2      
  movzbl (%r15,%rbx,1), %esi        #  521   0x59a60  5      
  addl $0x1, %ebx                   #  522   0x59a65  3      
  movl %esi, %eax                   #  523   0x59a68  2      
  andl $0x7f, %eax                  #  524   0x59a6a  3      
  shll %cl, %eax                    #  525   0x59a6d  2      
  addl $0x7, %ecx                   #  526   0x59a6f  3      
  orl %eax, %edi                    #  527   0x59a72  2      
  testb %sil, %sil                  #  528   0x59a74  3      
  js .L_59c80                       #  529   0x59a77  6      
  leal (%rdi,%rbx,1), %ebx          #  530   0x59a7d  3      
  xchgw %ax, %ax                    #  531   0x59a80  3      
  jmpq .L_594c0                     #  532   0x59a83  5      
  nop                               #  533   0x59a88  1      
  nop                               #  534   0x59a89  1      
  xorl %edi, %edi                   #  535   0x59a8a  2      
  xorl %ecx, %ecx                   #  536   0x59a8c  2      
  nop                               #  537   0x59a8e  1      
  nop                               #  538   0x59a8f  1      
.L_59ce0:                           #        0x59a90  0      
  movl %ebx, %ebx                   #  539   0x59a90  2      
  movzbl (%r15,%rbx,1), %esi        #  540   0x59a92  5      
  addl $0x1, %ebx                   #  541   0x59a97  3      
  movl %esi, %eax                   #  542   0x59a9a  2      
  andl $0x7f, %eax                  #  543   0x59a9c  3      
  shll %cl, %eax                    #  544   0x59a9f  2      
  addl $0x7, %ecx                   #  545   0x59aa1  3      
  orl %eax, %edi                    #  546   0x59aa4  2      
  testb %sil, %sil                  #  547   0x59aa6  3      
  js .L_59ce0                       #  548   0x59aa9  6      
  movl %edi, %eax                   #  549   0x59aaf  2      
  xorl %ecx, %ecx                   #  550   0x59ab1  2      
  nop                               #  551   0x59ab3  1      
  xorl %edi, %edi                   #  552   0x59ab4  2      
  shll $0x4, %eax                   #  553   0x59ab6  3      
  cltq                              #  554   0x59ab9  2      
  leaq (%r12,%rax,1), %rax          #  555   0x59abb  4      
  movl %eax, %eax                   #  556   0x59abf  2      
  movl $0x3, 0x8(%r15,%rax,1)       #  557   0x59ac1  9      
  movl %eax, %eax                   #  558   0x59aca  2      
  movl %ebx, (%r15,%rax,1)          #  559   0x59acc  4      
  nop                               #  560   0x59ad0  1      
.L_59d20:                           #        0x59ad1  0      
  movl %ebx, %ebx                   #  561   0x59ad1  2      
  movzbl (%r15,%rbx,1), %esi        #  562   0x59ad3  5      
  addl $0x1, %ebx                   #  563   0x59ad8  3      
  movl %esi, %eax                   #  564   0x59adb  2      
  andl $0x7f, %eax                  #  565   0x59add  3      
  shll %cl, %eax                    #  566   0x59ae0  2      
  addl $0x7, %ecx                   #  567   0x59ae2  3      
  orl %eax, %edi                    #  568   0x59ae5  2      
  testb %sil, %sil                  #  569   0x59ae7  3      
  js .L_59d20                       #  570   0x59aea  6      
  leal (%rdi,%rbx,1), %ebx          #  571   0x59af0  3      
  xchgw %ax, %ax                    #  572   0x59af3  3      
  jmpq .L_594c0                     #  573   0x59af6  5      
  nop                               #  574   0x59afb  1      
  nop                               #  575   0x59afc  1      
  xorl %r8d, %r8d                   #  576   0x59afd  3      
  xorl %ecx, %ecx                   #  577   0x59b00  2      
  nop                               #  578   0x59b02  1      
  nop                               #  579   0x59b03  1      
.L_59d80:                           #        0x59b04  0      
  movl %ebx, %ebx                   #  580   0x59b04  2      
  movzbl (%r15,%rbx,1), %esi        #  581   0x59b06  5      
  addl $0x1, %ebx                   #  582   0x59b0b  3      
  movl %esi, %eax                   #  583   0x59b0e  2      
  andl $0x7f, %eax                  #  584   0x59b10  3      
  shll %cl, %eax                    #  585   0x59b13  2      
  addl $0x7, %ecx                   #  586   0x59b15  3      
  orl %eax, %r8d                    #  587   0x59b18  3      
  testb %sil, %sil                  #  588   0x59b1b  3      
  js .L_59d80                       #  589   0x59b1e  6      
  movl -0x38(%rbp), %esi            #  590   0x59b24  3      
  nop                               #  591   0x59b27  1      
  movl %ebx, %edi                   #  592   0x59b28  2      
  movq %rdx, -0x70(%rbp)            #  593   0x59b2a  4      
  movl %r8d, -0x68(%rbp)            #  594   0x59b2e  4      
  movq %r9, -0x78(%rbp)             #  595   0x59b32  4      
  nop                               #  596   0x59b36  1      
  callq .read_sleb128               #  597   0x59b37  5      
  movl -0x68(%rbp), %r8d            #  598   0x59b3c  4      
  movl %eax, %ebx                   #  599   0x59b40  2      
  movl -0x24(%rbp), %eax            #  600   0x59b42  3      
  movl %r12d, %r12d                 #  601   0x59b45  3      
  imull 0x148(%r15,%r12,1), %eax    #  602   0x59b48  9      
  movl %r8d, %ecx                   #  603   0x59b51  3      
  shll $0x4, %ecx                   #  604   0x59b54  3      
  movslq %ecx, %rcx                 #  605   0x59b57  3      
  xchgw %ax, %ax                    #  606   0x59b5a  3      
  leaq (%r12,%rcx,1), %rcx          #  607   0x59b5d  4      
  cltq                              #  608   0x59b61  2      
  movl %ecx, %ecx                   #  609   0x59b63  2      
  movq %rax, (%r15,%rcx,1)          #  610   0x59b65  4      
  movl %ecx, %ecx                   #  611   0x59b69  2      
  movl $0x1, 0x8(%r15,%rcx,1)       #  612   0x59b6b  9      
  movq -0x70(%rbp), %rdx            #  613   0x59b74  4      
  movq -0x78(%rbp), %r9             #  614   0x59b78  4      
  nop                               #  615   0x59b7c  1      
  jmpq .L_594c0                     #  616   0x59b7d  5      
  nop                               #  617   0x59b82  1      
  nop                               #  618   0x59b83  1      
  xorl %edi, %edi                   #  619   0x59b84  2      
  xorl %ecx, %ecx                   #  620   0x59b86  2      
  nop                               #  621   0x59b88  1      
  nop                               #  622   0x59b89  1      
.L_59e40:                           #        0x59b8a  0      
  movl %ebx, %ebx                   #  623   0x59b8a  2      
  movzbl (%r15,%rbx,1), %esi        #  624   0x59b8c  5      
  addl $0x1, %ebx                   #  625   0x59b91  3      
  movl %esi, %eax                   #  626   0x59b94  2      
  andl $0x7f, %eax                  #  627   0x59b96  3      
  shll %cl, %eax                    #  628   0x59b99  2      
  addl $0x7, %ecx                   #  629   0x59b9b  3      
  orl %eax, %edi                    #  630   0x59b9e  2      
  testb %sil, %sil                  #  631   0x59ba0  3      
  js .L_59e40                       #  632   0x59ba3  6      
  movl -0x38(%rbp), %esi            #  633   0x59ba9  3      
  movl %edi, %edi                   #  634   0x59bac  2      
  movq %rdx, -0x70(%rbp)            #  635   0x59bae  4      
  movl %r12d, %r12d                 #  636   0x59bb2  3      
  movq %rdi, 0x130(%r15,%r12,1)     #  637   0x59bb5  8      
  movl %ebx, %edi                   #  638   0x59bbd  2      
  movq %r9, -0x78(%rbp)             #  639   0x59bbf  4      
  nop                               #  640   0x59bc3  1      
  callq .read_sleb128               #  641   0x59bc4  5      
  movl %eax, %ebx                   #  642   0x59bc9  2      
  movslq -0x24(%rbp), %rax          #  643   0x59bcb  4      
  movl %r12d, %r12d                 #  644   0x59bcf  3      
  movl $0x1, 0x13c(%r15,%r12,1)     #  645   0x59bd2  12     
  nop                               #  646   0x59bde  1      
  movl %r12d, %r12d                 #  647   0x59bdf  3      
  imulq 0x148(%r15,%r12,1), %rax    #  648   0x59be2  9      
  movq -0x70(%rbp), %rdx            #  649   0x59beb  4      
  movq -0x78(%rbp), %r9             #  650   0x59bef  4      
  movl %r12d, %r12d                 #  651   0x59bf3  3      
  movq %rax, 0x128(%r15,%r12,1)     #  652   0x59bf6  8      
  nop                               #  653   0x59bfe  1      
  jmpq .L_594c0                     #  654   0x59bff  5      
  nop                               #  655   0x59c04  1      
  nop                               #  656   0x59c05  1      
  movl -0x38(%rbp), %esi            #  657   0x59c06  3      
  movl %ebx, %edi                   #  658   0x59c09  2      
  movq %rdx, -0x70(%rbp)            #  659   0x59c0b  4      
  movq %r9, -0x78(%rbp)             #  660   0x59c0f  4      
  nop                               #  661   0x59c13  1      
  callq .read_sleb128               #  662   0x59c14  5      
  movl %eax, %ebx                   #  663   0x59c19  2      
  movslq -0x24(%rbp), %rax          #  664   0x59c1b  4      
  movq -0x70(%rbp), %rdx            #  665   0x59c1f  4      
  movl %r12d, %r12d                 #  666   0x59c23  3      
  imulq 0x148(%r15,%r12,1), %rax    #  667   0x59c26  9      
  movq -0x78(%rbp), %r9             #  668   0x59c2f  4      
  nop                               #  669   0x59c33  1      
  movl %r12d, %r12d                 #  670   0x59c34  3      
  movq %rax, 0x128(%r15,%r12,1)     #  671   0x59c37  8      
  jmpq .L_594c0                     #  672   0x59c3f  5      
  nop                               #  673   0x59c44  1      
  nop                               #  674   0x59c45  1      
  xorl %edi, %edi                   #  675   0x59c46  2      
  xorl %ecx, %ecx                   #  676   0x59c48  2      
  nop                               #  677   0x59c4a  1      
  nop                               #  678   0x59c4b  1      
.L_59f60:                           #        0x59c4c  0      
  movl %ebx, %ebx                   #  679   0x59c4c  2      
  movzbl (%r15,%rbx,1), %esi        #  680   0x59c4e  5      
  addl $0x1, %ebx                   #  681   0x59c53  3      
  movl %esi, %eax                   #  682   0x59c56  2      
  andl $0x7f, %eax                  #  683   0x59c58  3      
  shll %cl, %eax                    #  684   0x59c5b  2      
  addl $0x7, %ecx                   #  685   0x59c5d  3      
  orl %eax, %edi                    #  686   0x59c60  2      
  testb %sil, %sil                  #  687   0x59c62  3      
  js .L_59f60                       #  688   0x59c65  6      
  xorl %r8d, %r8d                   #  689   0x59c6b  3      
  xorl %ecx, %ecx                   #  690   0x59c6e  2      
.L_59f80:                           #        0x59c70  0      
  movl %ebx, %ebx                   #  691   0x59c70  2      
  movzbl (%r15,%rbx,1), %esi        #  692   0x59c72  5      
  addl $0x1, %ebx                   #  693   0x59c77  3      
  movl %esi, %eax                   #  694   0x59c7a  2      
  andl $0x7f, %eax                  #  695   0x59c7c  3      
  shll %cl, %eax                    #  696   0x59c7f  2      
  addl $0x7, %ecx                   #  697   0x59c81  3      
  orl %eax, %r8d                    #  698   0x59c84  3      
  testb %sil, %sil                  #  699   0x59c87  3      
  js .L_59f80                       #  700   0x59c8a  6      
  nop                               #  701   0x59c90  1      
  movl %r12d, %r12d                 #  702   0x59c91  3      
  movl 0x148(%r15,%r12,1), %ecx     #  703   0x59c94  8      
  movl %edi, %eax                   #  704   0x59c9c  2      
  shll $0x4, %eax                   #  705   0x59c9e  3      
  cltq                              #  706   0x59ca1  2      
  imull %r8d, %ecx                  #  707   0x59ca3  4      
  leaq (%r12,%rax,1), %rax          #  708   0x59ca7  4      
  nop                               #  709   0x59cab  1      
  movl %eax, %eax                   #  710   0x59cac  2      
  movl $0x4, 0x8(%r15,%rax,1)       #  711   0x59cae  9      
  movslq %ecx, %rcx                 #  712   0x59cb7  3      
  movl %eax, %eax                   #  713   0x59cba  2      
  movq %rcx, (%r15,%rax,1)          #  714   0x59cbc  4      
  jmpq .L_594c0                     #  715   0x59cc0  5      
  nop                               #  716   0x59cc5  1      
  xorl %r8d, %r8d                   #  717   0x59cc6  3      
  xorl %ecx, %ecx                   #  718   0x59cc9  2      
  nop                               #  719   0x59ccb  1      
  nop                               #  720   0x59ccc  1      
.L_5a000:                           #        0x59ccd  0      
  movl %ebx, %ebx                   #  721   0x59ccd  2      
  movzbl (%r15,%rbx,1), %esi        #  722   0x59ccf  5      
  addl $0x1, %ebx                   #  723   0x59cd4  3      
  movl %esi, %eax                   #  724   0x59cd7  2      
  andl $0x7f, %eax                  #  725   0x59cd9  3      
  shll %cl, %eax                    #  726   0x59cdc  2      
  addl $0x7, %ecx                   #  727   0x59cde  3      
  orl %eax, %r8d                    #  728   0x59ce1  3      
  testb %sil, %sil                  #  729   0x59ce4  3      
  js .L_5a000                       #  730   0x59ce7  6      
  movl -0x38(%rbp), %esi            #  731   0x59ced  3      
  nop                               #  732   0x59cf0  1      
  movl %ebx, %edi                   #  733   0x59cf1  2      
  movq %rdx, -0x70(%rbp)            #  734   0x59cf3  4      
  movl %r8d, -0x68(%rbp)            #  735   0x59cf7  4      
  movq %r9, -0x78(%rbp)             #  736   0x59cfb  4      
  nop                               #  737   0x59cff  1      
  callq .read_sleb128               #  738   0x59d00  5      
  movl -0x68(%rbp), %r8d            #  739   0x59d05  4      
  movl %eax, %ebx                   #  740   0x59d09  2      
  movl -0x24(%rbp), %eax            #  741   0x59d0b  3      
  movl %r12d, %r12d                 #  742   0x59d0e  3      
  imull 0x148(%r15,%r12,1), %eax    #  743   0x59d11  9      
  movl %r8d, %ecx                   #  744   0x59d1a  3      
  shll $0x4, %ecx                   #  745   0x59d1d  3      
  movslq %ecx, %rcx                 #  746   0x59d20  3      
  xchgw %ax, %ax                    #  747   0x59d23  3      
  leaq (%r12,%rcx,1), %rcx          #  748   0x59d26  4      
  cltq                              #  749   0x59d2a  2      
  movl %ecx, %ecx                   #  750   0x59d2c  2      
  movq %rax, (%r15,%rcx,1)          #  751   0x59d2e  4      
  movl %ecx, %ecx                   #  752   0x59d32  2      
  movl $0x4, 0x8(%r15,%rcx,1)       #  753   0x59d34  9      
  movq -0x70(%rbp), %rdx            #  754   0x59d3d  4      
  movq -0x78(%rbp), %r9             #  755   0x59d41  4      
  nop                               #  756   0x59d45  1      
  jmpq .L_594c0                     #  757   0x59d46  5      
  nop                               #  758   0x59d4b  1      
  nop                               #  759   0x59d4c  1      
  xorl %edi, %edi                   #  760   0x59d4d  2      
  xorl %ecx, %ecx                   #  761   0x59d4f  2      
  nop                               #  762   0x59d51  1      
  nop                               #  763   0x59d52  1      
.L_5a0c0:                           #        0x59d53  0      
  movl %ebx, %ebx                   #  764   0x59d53  2      
  movzbl (%r15,%rbx,1), %esi        #  765   0x59d55  5      
  addl $0x1, %ebx                   #  766   0x59d5a  3      
  movl %esi, %eax                   #  767   0x59d5d  2      
  andl $0x7f, %eax                  #  768   0x59d5f  3      
  shll %cl, %eax                    #  769   0x59d62  2      
  addl $0x7, %ecx                   #  770   0x59d64  3      
  orl %eax, %edi                    #  771   0x59d67  2      
  testb %sil, %sil                  #  772   0x59d69  3      
  js .L_5a0c0                       #  773   0x59d6c  6      
  movl %edi, %eax                   #  774   0x59d72  2      
  xorl %ecx, %ecx                   #  775   0x59d74  2      
  nop                               #  776   0x59d76  1      
  xorl %edi, %edi                   #  777   0x59d77  2      
  shll $0x4, %eax                   #  778   0x59d79  3      
  cltq                              #  779   0x59d7c  2      
  leaq (%r12,%rax,1), %rax          #  780   0x59d7e  4      
  movl %eax, %eax                   #  781   0x59d82  2      
  movl $0x5, 0x8(%r15,%rax,1)       #  782   0x59d84  9      
  movl %eax, %eax                   #  783   0x59d8d  2      
  movl %ebx, (%r15,%rax,1)          #  784   0x59d8f  4      
  nop                               #  785   0x59d93  1      
.L_5a100:                           #        0x59d94  0      
  movl %ebx, %ebx                   #  786   0x59d94  2      
  movzbl (%r15,%rbx,1), %esi        #  787   0x59d96  5      
  addl $0x1, %ebx                   #  788   0x59d9b  3      
  movl %esi, %eax                   #  789   0x59d9e  2      
  andl $0x7f, %eax                  #  790   0x59da0  3      
  shll %cl, %eax                    #  791   0x59da3  2      
  addl $0x7, %ecx                   #  792   0x59da5  3      
  orl %eax, %edi                    #  793   0x59da8  2      
  testb %sil, %sil                  #  794   0x59daa  3      
  js .L_5a100                       #  795   0x59dad  6      
  leal (%rdi,%rbx,1), %ebx          #  796   0x59db3  3      
  xchgw %ax, %ax                    #  797   0x59db6  3      
  jmpq .L_594c0                     #  798   0x59db9  5      
  nop                               #  799   0x59dbe  1      
  nop                               #  800   0x59dbf  1      
  movl -0x3c(%rbp), %ecx            #  801   0x59dc0  3      
  xorl %eax, %eax                   #  802   0x59dc3  2      
  nop                               #  803   0x59dc5  1      
  nop                               #  804   0x59dc6  1      
.L_5a160:                           #        0x59dc7  0      
  movl %ecx, %esi                   #  805   0x59dc7  2      
  addl $0x10, %ecx                  #  806   0x59dc9  3      
  movl %esi, %esi                   #  807   0x59dcc  2      
  movq %rax, 0x100(%r15,%rsi,1)     #  808   0x59dce  8      
  addq $0x4, %rax                   #  809   0x59dd6  4      
  nop                               #  810   0x59dda  1      
  movl %esi, %esi                   #  811   0x59ddb  2      
  movl $0x1, 0x108(%r15,%rsi,1)     #  812   0x59ddd  12     
  cmpq $0x40, %rax                  #  813   0x59de9  4      
  jne .L_5a160                      #  814   0x59ded  6      
  jmpq .L_594c0                     #  815   0x59df3  5      
  nop                               #  816   0x59df8  1      
  xorl %edi, %edi                   #  817   0x59df9  2      
  xorl %ecx, %ecx                   #  818   0x59dfb  2      
  nop                               #  819   0x59dfd  1      
  nop                               #  820   0x59dfe  1      
.L_5a1c0:                           #        0x59dff  0      
  movl %ebx, %ebx                   #  821   0x59dff  2      
  movzbl (%r15,%rbx,1), %esi        #  822   0x59e01  5      
  addl $0x1, %ebx                   #  823   0x59e06  3      
  movl %esi, %eax                   #  824   0x59e09  2      
  andl $0x7f, %eax                  #  825   0x59e0b  3      
  shll %cl, %eax                    #  826   0x59e0e  2      
  addl $0x7, %ecx                   #  827   0x59e10  3      
  orl %eax, %edi                    #  828   0x59e13  2      
  testb %sil, %sil                  #  829   0x59e15  3      
  js .L_5a1c0                       #  830   0x59e18  6      
  movl %edi, %edi                   #  831   0x59e1e  2      
  nop                               #  832   0x59e20  1      
  movl %r13d, %r13d                 #  833   0x59e21  3      
  movq %rdi, 0x70(%r15,%r13,1)      #  834   0x59e24  5      
  jmpq .L_594c0                     #  835   0x59e29  5      
  nop                               #  836   0x59e2e  1      
  nop                               #  837   0x59e2f  1      
.L_5a200:                           #        0x59e30  0      
  movq %rbx, -0x50(%rbp)            #  838   0x59e30  4      
  xorl %r11d, %r11d                 #  839   0x59e34  3      
  nop                               #  840   0x59e37  1      
  nop                               #  841   0x59e38  1      
.L_5a220:                           #        0x59e39  0      
  movl %r10d, %eax                  #  842   0x59e39  3      
  andl $0xf, %eax                   #  843   0x59e3c  3      
  cmpl $0xc, %eax                   #  844   0x59e3f  3      
  ja .L_59480                       #  845   0x59e42  6      
  leal 0xffc8bdf(%rip), %ecx        #  846   0x59e48  6      
  movl %eax, %eax                   #  847   0x59e4e  2      
  leaq (%rcx,%rax,4), %rax          #  848   0x59e50  4      
  nop                               #  849   0x59e54  1      
  movl %eax, %eax                   #  850   0x59e55  2      
  movslq (%r15,%rax,1), %rax        #  851   0x59e57  4      
  addq %rcx, %rax                   #  852   0x59e5b  3      
  andl $0xffffffe0, %eax            #  853   0x59e5e  5      
  addq %r15, %rax                   #  854   0x59e63  3      
  jmpq %rax                         #  855   0x59e66  2      
  nop                               #  856   0x59e68  1      
.L_5a260:                           #        0x59e69  0      
  cmpl $0x40, %eax                  #  857   0x59e69  3      
  je .L_5a420                       #  858   0x59e6c  6      
  cmpl $0x50, %eax                  #  859   0x59e72  3      
  je .L_596e0                       #  860   0x59e75  6      
  cmpl $0x30, %eax                  #  861   0x59e7b  3      
  jne .L_59480                      #  862   0x59e7e  6      
  movl %r13d, %edi                  #  863   0x59e84  3      
  xchgw %ax, %ax                    #  864   0x59e87  3      
  movq %rdx, -0x70(%rbp)            #  865   0x59e8a  4      
  movb %r8b, -0x68(%rbp)            #  866   0x59e8e  4      
  movq %r9, -0x78(%rbp)             #  867   0x59e92  4      
  movl %r10d, -0x60(%rbp)           #  868   0x59e96  4      
  nop                               #  869   0x59e9a  1      
  callq ._Unwind_GetDataRelBase     #  870   0x59e9b  5      
.L_5a2a0:                           #        0x59ea0  0      
  movl %eax, %r11d                  #  871   0x59ea0  3      
  movq -0x70(%rbp), %rdx            #  872   0x59ea3  4      
  movzbl -0x68(%rbp), %r8d          #  873   0x59ea7  5      
  movq -0x78(%rbp), %r9             #  874   0x59eac  4      
  movl -0x60(%rbp), %r10d           #  875   0x59eb0  4      
  jmpq .L_59700                     #  876   0x59eb4  5      
  nop                               #  877   0x59eb9  1      
  movl %ebx, %ebx                   #  878   0x59eba  2      
  movl (%r15,%rbx,1), %eax          #  879   0x59ebc  4      
  addl $0x4, %ebx                   #  880   0x59ec0  3      
  nop                               #  881   0x59ec3  1      
  nop                               #  882   0x59ec4  1      
.L_5a2e0:                           #        0x59ec5  0      
  xorl %ecx, %ecx                   #  883   0x59ec5  2      
  testl %eax, %eax                  #  884   0x59ec7  2      
  je .L_59740                       #  885   0x59ec9  6      
  andl $0x70, %r10d                 #  886   0x59ecf  4      
  cmpl $0x10, %r10d                 #  887   0x59ed3  4      
  cmovel -0x50(%rbp), %r11d         #  888   0x59ed7  5      
  testb %r8b, %r8b                  #  889   0x59edc  3      
  leal (%r11,%rax,1), %eax          #  890   0x59edf  4      
  movl %eax, %ecx                   #  891   0x59ee3  2      
  jns .L_59740                      #  892   0x59ee5  6      
  movl %eax, %eax                   #  893   0x59eeb  2      
  movl %eax, %eax                   #  894   0x59eed  2      
  movl (%r15,%rax,1), %ecx          #  895   0x59eef  4      
  jmpq .L_59740                     #  896   0x59ef3  5      
  nop                               #  897   0x59ef8  1      
  movl %ebx, %ebx                   #  898   0x59ef9  2      
  movl (%r15,%rbx,1), %eax          #  899   0x59efb  4      
  addl $0x8, %ebx                   #  900   0x59eff  3      
  jmpq .L_5a2e0                     #  901   0x59f02  5      
  nop                               #  902   0x59f07  1      
  nop                               #  903   0x59f08  1      
  movl %ebx, %ebx                   #  904   0x59f09  2      
  movzwl (%r15,%rbx,1), %eax        #  905   0x59f0b  5      
  addl $0x2, %ebx                   #  906   0x59f10  3      
  jmpq .L_5a2e0                     #  907   0x59f13  5      
  nop                               #  908   0x59f18  1      
  nop                               #  909   0x59f19  1      
  xorl %eax, %eax                   #  910   0x59f1a  2      
  xorl %ecx, %ecx                   #  911   0x59f1c  2      
  nop                               #  912   0x59f1e  1      
  nop                               #  913   0x59f1f  1      
.L_5a380:                           #        0x59f20  0      
  movl %ebx, %ebx                   #  914   0x59f20  2      
  movzbl (%r15,%rbx,1), %edi        #  915   0x59f22  5      
  movl $0x7f, %esi                  #  916   0x59f27  5      
  addl $0x1, %ebx                   #  917   0x59f2c  3      
  andl %edi, %esi                   #  918   0x59f2f  2      
  shll %cl, %esi                    #  919   0x59f31  2      
  addl $0x7, %ecx                   #  920   0x59f33  3      
  orl %esi, %eax                    #  921   0x59f36  2      
  testb %dil, %dil                  #  922   0x59f38  3      
  nop                               #  923   0x59f3b  1      
  js .L_5a380                       #  924   0x59f3c  6      
  jmpq .L_5a2e0                     #  925   0x59f42  5      
  nop                               #  926   0x59f47  1      
  nop                               #  927   0x59f48  1      
  movl -0x48(%rbp), %esi            #  928   0x59f49  3      
  movl %ebx, %edi                   #  929   0x59f4c  2      
  movq %rdx, -0x70(%rbp)            #  930   0x59f4e  4      
  movb %r8b, -0x68(%rbp)            #  931   0x59f52  4      
  movq %r9, -0x78(%rbp)             #  932   0x59f56  4      
  movl %r10d, -0x60(%rbp)           #  933   0x59f5a  4      
  movl %r11d, -0x58(%rbp)           #  934   0x59f5e  4      
  xchgw %ax, %ax                    #  935   0x59f62  3      
  callq .read_sleb128               #  936   0x59f65  5      
  movq -0x70(%rbp), %rdx            #  937   0x59f6a  4      
  movl %eax, %ebx                   #  938   0x59f6e  2      
  movzbl -0x68(%rbp), %r8d          #  939   0x59f70  5      
  movl -0x28(%rbp), %eax            #  940   0x59f75  3      
  movq -0x78(%rbp), %r9             #  941   0x59f78  4      
  movl -0x60(%rbp), %r10d           #  942   0x59f7c  4      
  movl -0x58(%rbp), %r11d           #  943   0x59f80  4      
  jmpq .L_5a2e0                     #  944   0x59f84  5      
  nop                               #  945   0x59f89  1      
  movl %ebx, %ebx                   #  946   0x59f8a  2      
  movswl (%r15,%rbx,1), %eax        #  947   0x59f8c  5      
  addl $0x2, %ebx                   #  948   0x59f91  3      
  jmpq .L_5a2e0                     #  949   0x59f94  5      
  xchgw %ax, %ax                    #  950   0x59f99  3      
  nop                               #  951   0x59f9c  1      
.L_5a420:                           #        0x59f9d  0      
  movl %r13d, %edi                  #  952   0x59f9d  3      
  movq %rdx, -0x70(%rbp)            #  953   0x59fa0  4      
  movb %r8b, -0x68(%rbp)            #  954   0x59fa4  4      
  movq %r9, -0x78(%rbp)             #  955   0x59fa8  4      
  movl %r10d, -0x60(%rbp)           #  956   0x59fac  4      
  nop                               #  957   0x59fb0  1      
  callq ._Unwind_GetRegionStart     #  958   0x59fb1  5      
  jmpq .L_5a2a0                     #  959   0x59fb6  5      
  nop                               #  960   0x59fbb  1      
  nop                               #  961   0x59fbc  1      
.L_5a460:                           #        0x59fbd  0      
  movl %r13d, %edi                  #  962   0x59fbd  3      
  movq %rdx, -0x70(%rbp)            #  963   0x59fc0  4      
  movb %r8b, -0x68(%rbp)            #  964   0x59fc4  4      
  movq %r9, -0x78(%rbp)             #  965   0x59fc8  4      
  movl %r10d, -0x60(%rbp)           #  966   0x59fcc  4      
  nop                               #  967   0x59fd0  1      
  callq ._Unwind_GetTextRelBase     #  968   0x59fd1  5      
  jmpq .L_5a2a0                     #  969   0x59fd6  5      
  nop                               #  970   0x59fdb  1      
  nop                               #  971   0x59fdc  1      
.L_5a4a0:                           #        0x59fdd  0      
  subl $0x150, %esp                 #  972   0x59fdd  6      
  addq %r15, %rsp                   #  973   0x59fe3  3      
  leal 0xf(%rsp), %eax              #  974   0x59fe6  4      
  andl $0xfffffff0, %eax            #  975   0x59fea  5      
  jmpq .L_59a60                     #  976   0x59fef  5      
  nop                               #  977   0x59ff4  1      
                                                             
.size execute_cfa_program, .-execute_cfa_program

