  .text
  .globl d_print_function_type
  .type d_print_function_type, @function

#! file-offset 0x552a0
#! rip-offset  0x552a0
#! capacity    1472 bytes

# Text                             #  Line  RIP      Bytes  
.d_print_function_type:            #        0x552a0  0      
  pushq %r14                       #  1     0x552a0  3      
  pushq %r13                       #  2     0x552a3  3      
  movl %esi, %r13d                 #  3     0x552a6  3      
  pushq %r12                       #  4     0x552a9  3      
  movl %edx, %r12d                 #  5     0x552ac  3      
  pushq %rbx                       #  6     0x552af  2      
  movl %edi, %ebx                  #  7     0x552b1  2      
  subl $0x8, %esp                  #  8     0x552b3  3      
  addq %r15, %rsp                  #  9     0x552b6  3      
  testq %r12, %r12                 #  10    0x552b9  3      
  je .L_55780                      #  11    0x552bc  6      
  xchgw %ax, %ax                   #  12    0x552c2  3      
  movl %r12d, %r12d                #  13    0x552c5  3      
  movl 0x8(%r15,%r12,1), %eax      #  14    0x552c8  5      
  testl %eax, %eax                 #  15    0x552cd  2      
  jne .L_55780                     #  16    0x552cf  6      
  movq %r12, %rax                  #  17    0x552d5  3      
  movl $0x1, %esi                  #  18    0x552d8  5      
  nop                              #  19    0x552dd  1      
  movq $0x8623800000, %rdx         #  20    0x552de  10     
  movq $0x1c0000000, %rdi          #  21    0x552e8  10     
  nop                              #  22    0x552f2  1      
.L_55300:                          #        0x552f3  0      
  movl %eax, %eax                  #  23    0x552f3  2      
  movl 0x4(%r15,%rax,1), %ecx      #  24    0x552f5  5      
  movl %ecx, %ecx                  #  25    0x552fa  2      
  cmpl $0x27, (%r15,%rcx,1)        #  26    0x552fc  5      
  ja .L_55420                      #  27    0x55301  6      
  movl %ecx, %ecx                  #  28    0x55307  2      
  movslq (%r15,%rcx,1), %rcx       #  29    0x55309  4      
  movq %rsi, %r8                   #  30    0x5530d  3      
  shlq %cl, %r8                    #  31    0x55310  3      
  testq %rdx, %r8                  #  32    0x55313  3      
  je .L_555a0                      #  33    0x55316  6      
  movl %ebx, %ebx                  #  34    0x5531c  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  35    0x5531e  9      
  nop                              #  36    0x55327  1      
.L_55340:                          #        0x55328  0      
  cmpb $0x20, %al                  #  37    0x55328  2      
  je .L_555e0                      #  38    0x5532a  6      
  movl %ebx, %ebx                  #  39    0x55330  2      
  movl 0x104(%r15,%rbx,1), %edx    #  40    0x55332  8      
  cmpl $0xff, %edx                 #  41    0x5533a  3      
  leal 0x1(%rdx), %eax             #  42    0x5533d  3      
  nop                              #  43    0x55340  1      
  je .L_55800                      #  44    0x55341  6      
  nop                              #  45    0x55347  1      
  nop                              #  46    0x55348  1      
.L_55380:                          #        0x55349  0      
  movslq %edx, %rdx                #  47    0x55349  3      
  cmpl $0xff, %eax                 #  48    0x5534c  3      
  movl %ebx, %ebx                  #  49    0x5534f  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  50    0x55351  8      
  leaq (%rbx,%rdx,1), %rdx         #  51    0x55359  4      
  nop                              #  52    0x5535d  1      
  movl %ebx, %ebx                  #  53    0x5535e  2      
  movb $0x20, 0x108(%r15,%rbx,1)   #  54    0x55360  9      
  movl %edx, %edx                  #  55    0x55369  2      
  movb $0x20, 0x4(%r15,%rdx,1)     #  56    0x5536b  6      
  leal 0x1(%rax), %edx             #  57    0x55371  3      
  jne .L_55600                     #  58    0x55374  6      
  nop                              #  59    0x5537a  1      
.L_553c0:                          #        0x5537b  0      
  movl %ebx, %ebx                  #  60    0x5537b  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  61    0x5537d  8      
  movl %ebx, %ebx                  #  62    0x55385  2      
  movl 0x110(%r15,%rbx,1), %edx    #  63    0x55387  8      
  leal 0x4(%rbx), %edi             #  64    0x5538f  3      
  nop                              #  65    0x55392  1      
  movl %ebx, %ebx                  #  66    0x55393  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  67    0x55395  9      
  movl %ebx, %ebx                  #  68    0x5539e  2      
  movl 0x104(%r15,%rbx,1), %esi    #  69    0x553a0  8      
  nop                              #  70    0x553a8  1      
  andl $0xffffffe0, %eax           #  71    0x553a9  5      
  addq %r15, %rax                  #  72    0x553ae  3      
  callq %rax                       #  73    0x553b1  2      
  movl %ebx, %ebx                  #  74    0x553b3  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  75    0x553b5  12     
  movl $0x1, %edx                  #  76    0x553c1  5      
  xorl %eax, %eax                  #  77    0x553c6  2      
  jmpq .L_55600                    #  78    0x553c8  5      
  nop                              #  79    0x553cd  1      
.L_55420:                          #        0x553ce  0      
  movl %eax, %eax                  #  80    0x553ce  2      
  movl (%r15,%rax,1), %eax         #  81    0x553d0  4      
  testq %rax, %rax                 #  82    0x553d4  3      
  je .L_55440                      #  83    0x553d7  6      
  movl %eax, %eax                  #  84    0x553dd  2      
  movl 0x8(%r15,%rax,1), %r14d     #  85    0x553df  5      
  testl %r14d, %r14d               #  86    0x553e4  3      
  je .L_55300                      #  87    0x553e7  6      
  nop                              #  88    0x553ed  1      
.L_55440:                          #        0x553ee  0      
  xorl %edx, %edx                  #  89    0x553ee  2      
  movl %ebx, %ebx                  #  90    0x553f0  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  91    0x553f2  8      
  movl %r12d, %esi                 #  92    0x553fa  3      
  movl %ebx, %ebx                  #  93    0x553fd  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  94    0x553ff  12     
  movl %ebx, %edi                  #  95    0x5540b  2      
  nop                              #  96    0x5540d  1      
  nop                              #  97    0x5540e  1      
  nop                              #  98    0x5540f  1      
  callq .d_print_mod_list          #  99    0x55410  5      
  movl %ebx, %ebx                  #  100   0x55415  2      
  movl 0x104(%r15,%rbx,1), %edx    #  101   0x55417  8      
  cmpl $0xff, %edx                 #  102   0x5541f  3      
  leal 0x1(%rdx), %eax             #  103   0x55422  3      
  je .L_556c0                      #  104   0x55425  6      
  nop                              #  105   0x5542b  1      
.L_554a0:                          #        0x5542c  0      
  movslq %edx, %rdx                #  106   0x5542c  3      
  movl %ebx, %ebx                  #  107   0x5542f  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  108   0x55431  8      
  movl %ebx, %ebx                  #  109   0x55439  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  110   0x5543b  9      
  leaq (%rbx,%rdx,1), %rdx         #  111   0x55444  4      
  nop                              #  112   0x55448  1      
  movl %edx, %edx                  #  113   0x55449  2      
  movb $0x28, 0x4(%r15,%rdx,1)     #  114   0x5544b  6      
  movl %r13d, %r13d                #  115   0x55451  3      
  movl 0x8(%r15,%r13,1), %esi      #  116   0x55454  5      
  testq %rsi, %rsi                 #  117   0x55459  3      
  je .L_55500                      #  118   0x5545c  6      
  movl %ebx, %edi                  #  119   0x55462  2      
  nop                              #  120   0x55464  1      
  callq .d_print_comp              #  121   0x55465  5      
  movl %ebx, %ebx                  #  122   0x5546a  2      
  movl 0x104(%r15,%rbx,1), %eax    #  123   0x5546c  8      
  nop                              #  124   0x55474  1      
  nop                              #  125   0x55475  1      
.L_55500:                          #        0x55476  0      
  cmpl $0xff, %eax                 #  126   0x55476  3      
  leal 0x1(%rax), %edx             #  127   0x55479  3      
  je .L_55720                      #  128   0x5547c  6      
  nop                              #  129   0x55482  1      
  nop                              #  130   0x55483  1      
.L_55520:                          #        0x55484  0      
  cltq                             #  131   0x55484  2      
  movl %ebx, %ebx                  #  132   0x55486  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  133   0x55488  8      
  movl %ebx, %ebx                  #  134   0x55490  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  135   0x55492  9      
  leaq (%rbx,%rax,1), %rax         #  136   0x5549b  4      
  movl %r12d, %esi                 #  137   0x5549f  3      
  movl %ebx, %edi                  #  138   0x554a2  2      
  movl $0x1, %edx                  #  139   0x554a4  5      
  movl %eax, %eax                  #  140   0x554a9  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  141   0x554ab  6      
  nop                              #  142   0x554b1  1      
  callq .d_print_mod_list          #  143   0x554b2  5      
  movl %ebx, %ebx                  #  144   0x554b7  2      
  movl %r14d, 0x118(%r15,%rbx,1)   #  145   0x554b9  8      
  addl $0x8, %esp                  #  146   0x554c1  3      
  addq %r15, %rsp                  #  147   0x554c4  3      
  popq %rbx                        #  148   0x554c7  2      
  popq %r12                        #  149   0x554c9  3      
  popq %r13                        #  150   0x554cc  3      
  popq %r14                        #  151   0x554cf  3      
  popq %r11                        #  152   0x554d2  3      
  nop                              #  153   0x554d5  1      
  andl $0xffffffe0, %r11d          #  154   0x554d6  7      
  addq %r15, %r11                  #  155   0x554dd  3      
  jmpq %r11                        #  156   0x554e0  3      
  nop                              #  157   0x554e3  1      
  nop                              #  158   0x554e4  1      
.L_555a0:                          #        0x554e5  0      
  testq %rdi, %r8                  #  159   0x554e5  3      
  je .L_55420                      #  160   0x554e8  6      
  nop                              #  161   0x554ee  1      
  nop                              #  162   0x554ef  1      
.L_555c0:                          #        0x554f0  0      
  movl %ebx, %ebx                  #  163   0x554f0  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  164   0x554f2  9      
  cmpb $0x28, %al                  #  165   0x554fb  2      
  je .L_555e0                      #  166   0x554fd  6      
  cmpb $0x2a, %al                  #  167   0x55503  2      
  jne .L_55340                     #  168   0x55505  6      
  nop                              #  169   0x5550b  1      
.L_555e0:                          #        0x5550c  0      
  movl %ebx, %ebx                  #  170   0x5550c  2      
  movl 0x104(%r15,%rbx,1), %eax    #  171   0x5550e  8      
  cmpl $0xff, %eax                 #  172   0x55516  3      
  leal 0x1(%rax), %edx             #  173   0x55519  3      
  je .L_553c0                      #  174   0x5551c  6      
  nop                              #  175   0x55522  1      
.L_55600:                          #        0x55523  0      
  cltq                             #  176   0x55523  2      
  movl %ebx, %ebx                  #  177   0x55525  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  178   0x55527  8      
  movl %ebx, %ebx                  #  179   0x5552f  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  180   0x55531  8      
  leaq (%rbx,%rax,1), %rax         #  181   0x55539  4      
  xorl %edx, %edx                  #  182   0x5553d  2      
  nop                              #  183   0x5553f  1      
  movl %ebx, %ebx                  #  184   0x55540  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  185   0x55542  9      
  movl %ebx, %ebx                  #  186   0x5554b  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  187   0x5554d  12     
  movl %r12d, %esi                 #  188   0x55559  3      
  movl %ebx, %edi                  #  189   0x5555c  2      
  xchgw %ax, %ax                   #  190   0x5555e  3      
  movl %eax, %eax                  #  191   0x55561  2      
  movb $0x28, 0x4(%r15,%rax,1)     #  192   0x55563  6      
  nop                              #  193   0x55569  1      
  nop                              #  194   0x5556a  1      
  callq .d_print_mod_list          #  195   0x5556b  5      
  movl %ebx, %ebx                  #  196   0x55570  2      
  movl 0x104(%r15,%rbx,1), %eax    #  197   0x55572  8      
  cmpl $0xff, %eax                 #  198   0x5557a  3      
  leal 0x1(%rax), %edx             #  199   0x5557d  3      
  je .L_557a0                      #  200   0x55580  6      
  nop                              #  201   0x55586  1      
.L_55680:                          #        0x55587  0      
  cltq                             #  202   0x55587  2      
  cmpl $0xff, %edx                 #  203   0x55589  3      
  movl %ebx, %ebx                  #  204   0x5558c  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  205   0x5558e  8      
  leaq (%rbx,%rax,1), %rax         #  206   0x55596  4      
  nop                              #  207   0x5559a  1      
  movl %ebx, %ebx                  #  208   0x5559b  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  209   0x5559d  9      
  movl %eax, %eax                  #  210   0x555a6  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  211   0x555a8  6      
  leal 0x1(%rdx), %eax             #  212   0x555ae  3      
  jne .L_554a0                     #  213   0x555b1  6      
  nop                              #  214   0x555b7  1      
.L_556c0:                          #        0x555b8  0      
  movl %ebx, %ebx                  #  215   0x555b8  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  216   0x555ba  8      
  movl %ebx, %ebx                  #  217   0x555c2  2      
  movl 0x110(%r15,%rbx,1), %edx    #  218   0x555c4  8      
  leal 0x4(%rbx), %edi             #  219   0x555cc  3      
  nop                              #  220   0x555cf  1      
  movl %ebx, %ebx                  #  221   0x555d0  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  222   0x555d2  9      
  movl %ebx, %ebx                  #  223   0x555db  2      
  movl 0x104(%r15,%rbx,1), %esi    #  224   0x555dd  8      
  nop                              #  225   0x555e5  1      
  andl $0xffffffe0, %eax           #  226   0x555e6  5      
  addq %r15, %rax                  #  227   0x555eb  3      
  callq %rax                       #  228   0x555ee  2      
  movl %ebx, %ebx                  #  229   0x555f0  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  230   0x555f2  12     
  movl $0x1, %eax                  #  231   0x555fe  5      
  xorl %edx, %edx                  #  232   0x55603  2      
  jmpq .L_554a0                    #  233   0x55605  5      
  nop                              #  234   0x5560a  1      
.L_55720:                          #        0x5560b  0      
  movl %ebx, %ebx                  #  235   0x5560b  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  236   0x5560d  8      
  movl %ebx, %ebx                  #  237   0x55615  2      
  movl 0x110(%r15,%rbx,1), %edx    #  238   0x55617  8      
  leal 0x4(%rbx), %edi             #  239   0x5561f  3      
  nop                              #  240   0x55622  1      
  movl %ebx, %ebx                  #  241   0x55623  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  242   0x55625  9      
  movl %ebx, %ebx                  #  243   0x5562e  2      
  movl 0x104(%r15,%rbx,1), %esi    #  244   0x55630  8      
  nop                              #  245   0x55638  1      
  andl $0xffffffe0, %eax           #  246   0x55639  5      
  addq %r15, %rax                  #  247   0x5563e  3      
  callq %rax                       #  248   0x55641  2      
  movl %ebx, %ebx                  #  249   0x55643  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  250   0x55645  12     
  movl $0x1, %edx                  #  251   0x55651  5      
  xorl %eax, %eax                  #  252   0x55656  2      
  jmpq .L_55520                    #  253   0x55658  5      
  nop                              #  254   0x5565d  1      
.L_55780:                          #        0x5565e  0      
  movl %r13d, %r13d                #  255   0x5565e  3      
  movl 0x4(%r15,%r13,1), %r11d     #  256   0x55661  5      
  testl %r11d, %r11d               #  257   0x55666  3      
  jne .L_555c0                     #  258   0x55669  6      
  jmpq .L_55440                    #  259   0x5566f  5      
  nop                              #  260   0x55674  1      
.L_557a0:                          #        0x55675  0      
  movl %ebx, %ebx                  #  261   0x55675  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  262   0x55677  8      
  movl %ebx, %ebx                  #  263   0x5567f  2      
  movl 0x110(%r15,%rbx,1), %edx    #  264   0x55681  8      
  leal 0x4(%rbx), %edi             #  265   0x55689  3      
  nop                              #  266   0x5568c  1      
  movl %ebx, %ebx                  #  267   0x5568d  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  268   0x5568f  9      
  movl $0xff, %esi                 #  269   0x55698  5      
  nop                              #  270   0x5569d  1      
  andl $0xffffffe0, %eax           #  271   0x5569e  5      
  addq %r15, %rax                  #  272   0x556a3  3      
  callq %rax                       #  273   0x556a6  2      
  movl %ebx, %ebx                  #  274   0x556a8  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  275   0x556aa  12     
  movl $0x1, %edx                  #  276   0x556b6  5      
  xorl %eax, %eax                  #  277   0x556bb  2      
  jmpq .L_55680                    #  278   0x556bd  5      
  nop                              #  279   0x556c2  1      
.L_55800:                          #        0x556c3  0      
  movl %ebx, %ebx                  #  280   0x556c3  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  281   0x556c5  8      
  movl %ebx, %ebx                  #  282   0x556cd  2      
  movl 0x110(%r15,%rbx,1), %edx    #  283   0x556cf  8      
  leal 0x4(%rbx), %edi             #  284   0x556d7  3      
  nop                              #  285   0x556da  1      
  movl %ebx, %ebx                  #  286   0x556db  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  287   0x556dd  9      
  movl $0xff, %esi                 #  288   0x556e6  5      
  nop                              #  289   0x556eb  1      
  andl $0xffffffe0, %eax           #  290   0x556ec  5      
  addq %r15, %rax                  #  291   0x556f1  3      
  callq %rax                       #  292   0x556f4  2      
  movl %ebx, %ebx                  #  293   0x556f6  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  294   0x556f8  12     
  movl $0x1, %eax                  #  295   0x55704  5      
  xorl %edx, %edx                  #  296   0x55709  2      
  jmpq .L_55380                    #  297   0x5570b  5      
  nop                              #  298   0x55710  1      
                                                            
.size d_print_function_type, .-d_print_function_type

