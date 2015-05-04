  .text
  .globl d_print_function_type
  .type d_print_function_type, @function

#! file-offset 0x55340
#! rip-offset  0x55340
#! capacity    1472 bytes

# Text                             #  Line  RIP      Bytes  
.d_print_function_type:            #        0x55340  0      
  pushq %r14                       #  1     0x55340  3      
  pushq %r13                       #  2     0x55343  3      
  movl %esi, %r13d                 #  3     0x55346  3      
  pushq %r12                       #  4     0x55349  3      
  movl %edx, %r12d                 #  5     0x5534c  3      
  pushq %rbx                       #  6     0x5534f  2      
  movl %edi, %ebx                  #  7     0x55351  2      
  subl $0x8, %esp                  #  8     0x55353  3      
  addq %r15, %rsp                  #  9     0x55356  3      
  testq %r12, %r12                 #  10    0x55359  3      
  je .L_55820                      #  11    0x5535c  6      
  xchgw %ax, %ax                   #  12    0x55362  3      
  movl %r12d, %r12d                #  13    0x55365  3      
  movl 0x8(%r15,%r12,1), %eax      #  14    0x55368  5      
  testl %eax, %eax                 #  15    0x5536d  2      
  jne .L_55820                     #  16    0x5536f  6      
  movq %r12, %rax                  #  17    0x55375  3      
  movl $0x1, %esi                  #  18    0x55378  5      
  nop                              #  19    0x5537d  1      
  movq $0x8623800000, %rdx         #  20    0x5537e  10     
  movq $0x1c0000000, %rdi          #  21    0x55388  10     
  nop                              #  22    0x55392  1      
.L_553a0:                          #        0x55393  0      
  movl %eax, %eax                  #  23    0x55393  2      
  movl 0x4(%r15,%rax,1), %ecx      #  24    0x55395  5      
  movl %ecx, %ecx                  #  25    0x5539a  2      
  cmpl $0x27, (%r15,%rcx,1)        #  26    0x5539c  5      
  ja .L_554c0                      #  27    0x553a1  6      
  movl %ecx, %ecx                  #  28    0x553a7  2      
  movslq (%r15,%rcx,1), %rcx       #  29    0x553a9  4      
  movq %rsi, %r8                   #  30    0x553ad  3      
  shlq %cl, %r8                    #  31    0x553b0  3      
  testq %rdx, %r8                  #  32    0x553b3  3      
  je .L_55640                      #  33    0x553b6  6      
  movl %ebx, %ebx                  #  34    0x553bc  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  35    0x553be  9      
  nop                              #  36    0x553c7  1      
.L_553e0:                          #        0x553c8  0      
  cmpb $0x20, %al                  #  37    0x553c8  2      
  je .L_55680                      #  38    0x553ca  6      
  movl %ebx, %ebx                  #  39    0x553d0  2      
  movl 0x104(%r15,%rbx,1), %edx    #  40    0x553d2  8      
  cmpl $0xff, %edx                 #  41    0x553da  3      
  leal 0x1(%rdx), %eax             #  42    0x553dd  3      
  nop                              #  43    0x553e0  1      
  je .L_558a0                      #  44    0x553e1  6      
  nop                              #  45    0x553e7  1      
  nop                              #  46    0x553e8  1      
.L_55420:                          #        0x553e9  0      
  movslq %edx, %rdx                #  47    0x553e9  3      
  cmpl $0xff, %eax                 #  48    0x553ec  3      
  movl %ebx, %ebx                  #  49    0x553ef  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  50    0x553f1  8      
  leaq (%rbx,%rdx,1), %rdx         #  51    0x553f9  4      
  nop                              #  52    0x553fd  1      
  movl %ebx, %ebx                  #  53    0x553fe  2      
  movb $0x20, 0x108(%r15,%rbx,1)   #  54    0x55400  9      
  movl %edx, %edx                  #  55    0x55409  2      
  movb $0x20, 0x4(%r15,%rdx,1)     #  56    0x5540b  6      
  leal 0x1(%rax), %edx             #  57    0x55411  3      
  jne .L_556a0                     #  58    0x55414  6      
  nop                              #  59    0x5541a  1      
.L_55460:                          #        0x5541b  0      
  movl %ebx, %ebx                  #  60    0x5541b  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  61    0x5541d  8      
  movl %ebx, %ebx                  #  62    0x55425  2      
  movl 0x110(%r15,%rbx,1), %edx    #  63    0x55427  8      
  leal 0x4(%rbx), %edi             #  64    0x5542f  3      
  nop                              #  65    0x55432  1      
  movl %ebx, %ebx                  #  66    0x55433  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  67    0x55435  9      
  movl %ebx, %ebx                  #  68    0x5543e  2      
  movl 0x104(%r15,%rbx,1), %esi    #  69    0x55440  8      
  nop                              #  70    0x55448  1      
  andl $0xffffffe0, %eax           #  71    0x55449  5      
  addq %r15, %rax                  #  72    0x5544e  3      
  callq %rax                       #  73    0x55451  2      
  movl %ebx, %ebx                  #  74    0x55453  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  75    0x55455  12     
  movl $0x1, %edx                  #  76    0x55461  5      
  xorl %eax, %eax                  #  77    0x55466  2      
  jmpq .L_556a0                    #  78    0x55468  5      
  nop                              #  79    0x5546d  1      
.L_554c0:                          #        0x5546e  0      
  movl %eax, %eax                  #  80    0x5546e  2      
  movl (%r15,%rax,1), %eax         #  81    0x55470  4      
  testq %rax, %rax                 #  82    0x55474  3      
  je .L_554e0                      #  83    0x55477  6      
  movl %eax, %eax                  #  84    0x5547d  2      
  movl 0x8(%r15,%rax,1), %r14d     #  85    0x5547f  5      
  testl %r14d, %r14d               #  86    0x55484  3      
  je .L_553a0                      #  87    0x55487  6      
  nop                              #  88    0x5548d  1      
.L_554e0:                          #        0x5548e  0      
  xorl %edx, %edx                  #  89    0x5548e  2      
  movl %ebx, %ebx                  #  90    0x55490  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  91    0x55492  8      
  movl %r12d, %esi                 #  92    0x5549a  3      
  movl %ebx, %ebx                  #  93    0x5549d  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  94    0x5549f  12     
  movl %ebx, %edi                  #  95    0x554ab  2      
  nop                              #  96    0x554ad  1      
  nop                              #  97    0x554ae  1      
  nop                              #  98    0x554af  1      
  callq .d_print_mod_list          #  99    0x554b0  5      
  movl %ebx, %ebx                  #  100   0x554b5  2      
  movl 0x104(%r15,%rbx,1), %edx    #  101   0x554b7  8      
  cmpl $0xff, %edx                 #  102   0x554bf  3      
  leal 0x1(%rdx), %eax             #  103   0x554c2  3      
  je .L_55760                      #  104   0x554c5  6      
  nop                              #  105   0x554cb  1      
.L_55540:                          #        0x554cc  0      
  movslq %edx, %rdx                #  106   0x554cc  3      
  movl %ebx, %ebx                  #  107   0x554cf  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  108   0x554d1  8      
  movl %ebx, %ebx                  #  109   0x554d9  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  110   0x554db  9      
  leaq (%rbx,%rdx,1), %rdx         #  111   0x554e4  4      
  nop                              #  112   0x554e8  1      
  movl %edx, %edx                  #  113   0x554e9  2      
  movb $0x28, 0x4(%r15,%rdx,1)     #  114   0x554eb  6      
  movl %r13d, %r13d                #  115   0x554f1  3      
  movl 0x8(%r15,%r13,1), %esi      #  116   0x554f4  5      
  testq %rsi, %rsi                 #  117   0x554f9  3      
  je .L_555a0                      #  118   0x554fc  6      
  movl %ebx, %edi                  #  119   0x55502  2      
  nop                              #  120   0x55504  1      
  callq .d_print_comp              #  121   0x55505  5      
  movl %ebx, %ebx                  #  122   0x5550a  2      
  movl 0x104(%r15,%rbx,1), %eax    #  123   0x5550c  8      
  nop                              #  124   0x55514  1      
  nop                              #  125   0x55515  1      
.L_555a0:                          #        0x55516  0      
  cmpl $0xff, %eax                 #  126   0x55516  3      
  leal 0x1(%rax), %edx             #  127   0x55519  3      
  je .L_557c0                      #  128   0x5551c  6      
  nop                              #  129   0x55522  1      
  nop                              #  130   0x55523  1      
.L_555c0:                          #        0x55524  0      
  cltq                             #  131   0x55524  2      
  movl %ebx, %ebx                  #  132   0x55526  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  133   0x55528  8      
  movl %ebx, %ebx                  #  134   0x55530  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  135   0x55532  9      
  leaq (%rbx,%rax,1), %rax         #  136   0x5553b  4      
  movl %r12d, %esi                 #  137   0x5553f  3      
  movl %ebx, %edi                  #  138   0x55542  2      
  movl $0x1, %edx                  #  139   0x55544  5      
  movl %eax, %eax                  #  140   0x55549  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  141   0x5554b  6      
  nop                              #  142   0x55551  1      
  callq .d_print_mod_list          #  143   0x55552  5      
  movl %ebx, %ebx                  #  144   0x55557  2      
  movl %r14d, 0x118(%r15,%rbx,1)   #  145   0x55559  8      
  addl $0x8, %esp                  #  146   0x55561  3      
  addq %r15, %rsp                  #  147   0x55564  3      
  popq %rbx                        #  148   0x55567  2      
  popq %r12                        #  149   0x55569  3      
  popq %r13                        #  150   0x5556c  3      
  popq %r14                        #  151   0x5556f  3      
  popq %r11                        #  152   0x55572  3      
  nop                              #  153   0x55575  1      
  andl $0xffffffe0, %r11d          #  154   0x55576  7      
  addq %r15, %r11                  #  155   0x5557d  3      
  jmpq %r11                        #  156   0x55580  3      
  nop                              #  157   0x55583  1      
  nop                              #  158   0x55584  1      
.L_55640:                          #        0x55585  0      
  testq %rdi, %r8                  #  159   0x55585  3      
  je .L_554c0                      #  160   0x55588  6      
  nop                              #  161   0x5558e  1      
  nop                              #  162   0x5558f  1      
.L_55660:                          #        0x55590  0      
  movl %ebx, %ebx                  #  163   0x55590  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  164   0x55592  9      
  cmpb $0x28, %al                  #  165   0x5559b  2      
  je .L_55680                      #  166   0x5559d  6      
  cmpb $0x2a, %al                  #  167   0x555a3  2      
  jne .L_553e0                     #  168   0x555a5  6      
  nop                              #  169   0x555ab  1      
.L_55680:                          #        0x555ac  0      
  movl %ebx, %ebx                  #  170   0x555ac  2      
  movl 0x104(%r15,%rbx,1), %eax    #  171   0x555ae  8      
  cmpl $0xff, %eax                 #  172   0x555b6  3      
  leal 0x1(%rax), %edx             #  173   0x555b9  3      
  je .L_55460                      #  174   0x555bc  6      
  nop                              #  175   0x555c2  1      
.L_556a0:                          #        0x555c3  0      
  cltq                             #  176   0x555c3  2      
  movl %ebx, %ebx                  #  177   0x555c5  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  178   0x555c7  8      
  movl %ebx, %ebx                  #  179   0x555cf  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  180   0x555d1  8      
  leaq (%rbx,%rax,1), %rax         #  181   0x555d9  4      
  xorl %edx, %edx                  #  182   0x555dd  2      
  nop                              #  183   0x555df  1      
  movl %ebx, %ebx                  #  184   0x555e0  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  185   0x555e2  9      
  movl %ebx, %ebx                  #  186   0x555eb  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  187   0x555ed  12     
  movl %r12d, %esi                 #  188   0x555f9  3      
  movl %ebx, %edi                  #  189   0x555fc  2      
  xchgw %ax, %ax                   #  190   0x555fe  3      
  movl %eax, %eax                  #  191   0x55601  2      
  movb $0x28, 0x4(%r15,%rax,1)     #  192   0x55603  6      
  nop                              #  193   0x55609  1      
  nop                              #  194   0x5560a  1      
  callq .d_print_mod_list          #  195   0x5560b  5      
  movl %ebx, %ebx                  #  196   0x55610  2      
  movl 0x104(%r15,%rbx,1), %eax    #  197   0x55612  8      
  cmpl $0xff, %eax                 #  198   0x5561a  3      
  leal 0x1(%rax), %edx             #  199   0x5561d  3      
  je .L_55840                      #  200   0x55620  6      
  nop                              #  201   0x55626  1      
.L_55720:                          #        0x55627  0      
  cltq                             #  202   0x55627  2      
  cmpl $0xff, %edx                 #  203   0x55629  3      
  movl %ebx, %ebx                  #  204   0x5562c  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  205   0x5562e  8      
  leaq (%rbx,%rax,1), %rax         #  206   0x55636  4      
  nop                              #  207   0x5563a  1      
  movl %ebx, %ebx                  #  208   0x5563b  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  209   0x5563d  9      
  movl %eax, %eax                  #  210   0x55646  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  211   0x55648  6      
  leal 0x1(%rdx), %eax             #  212   0x5564e  3      
  jne .L_55540                     #  213   0x55651  6      
  nop                              #  214   0x55657  1      
.L_55760:                          #        0x55658  0      
  movl %ebx, %ebx                  #  215   0x55658  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  216   0x5565a  8      
  movl %ebx, %ebx                  #  217   0x55662  2      
  movl 0x110(%r15,%rbx,1), %edx    #  218   0x55664  8      
  leal 0x4(%rbx), %edi             #  219   0x5566c  3      
  nop                              #  220   0x5566f  1      
  movl %ebx, %ebx                  #  221   0x55670  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  222   0x55672  9      
  movl %ebx, %ebx                  #  223   0x5567b  2      
  movl 0x104(%r15,%rbx,1), %esi    #  224   0x5567d  8      
  nop                              #  225   0x55685  1      
  andl $0xffffffe0, %eax           #  226   0x55686  5      
  addq %r15, %rax                  #  227   0x5568b  3      
  callq %rax                       #  228   0x5568e  2      
  movl %ebx, %ebx                  #  229   0x55690  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  230   0x55692  12     
  movl $0x1, %eax                  #  231   0x5569e  5      
  xorl %edx, %edx                  #  232   0x556a3  2      
  jmpq .L_55540                    #  233   0x556a5  5      
  nop                              #  234   0x556aa  1      
.L_557c0:                          #        0x556ab  0      
  movl %ebx, %ebx                  #  235   0x556ab  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  236   0x556ad  8      
  movl %ebx, %ebx                  #  237   0x556b5  2      
  movl 0x110(%r15,%rbx,1), %edx    #  238   0x556b7  8      
  leal 0x4(%rbx), %edi             #  239   0x556bf  3      
  nop                              #  240   0x556c2  1      
  movl %ebx, %ebx                  #  241   0x556c3  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  242   0x556c5  9      
  movl %ebx, %ebx                  #  243   0x556ce  2      
  movl 0x104(%r15,%rbx,1), %esi    #  244   0x556d0  8      
  nop                              #  245   0x556d8  1      
  andl $0xffffffe0, %eax           #  246   0x556d9  5      
  addq %r15, %rax                  #  247   0x556de  3      
  callq %rax                       #  248   0x556e1  2      
  movl %ebx, %ebx                  #  249   0x556e3  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  250   0x556e5  12     
  movl $0x1, %edx                  #  251   0x556f1  5      
  xorl %eax, %eax                  #  252   0x556f6  2      
  jmpq .L_555c0                    #  253   0x556f8  5      
  nop                              #  254   0x556fd  1      
.L_55820:                          #        0x556fe  0      
  movl %r13d, %r13d                #  255   0x556fe  3      
  movl 0x4(%r15,%r13,1), %r11d     #  256   0x55701  5      
  testl %r11d, %r11d               #  257   0x55706  3      
  jne .L_55660                     #  258   0x55709  6      
  jmpq .L_554e0                    #  259   0x5570f  5      
  nop                              #  260   0x55714  1      
.L_55840:                          #        0x55715  0      
  movl %ebx, %ebx                  #  261   0x55715  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  262   0x55717  8      
  movl %ebx, %ebx                  #  263   0x5571f  2      
  movl 0x110(%r15,%rbx,1), %edx    #  264   0x55721  8      
  leal 0x4(%rbx), %edi             #  265   0x55729  3      
  nop                              #  266   0x5572c  1      
  movl %ebx, %ebx                  #  267   0x5572d  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  268   0x5572f  9      
  movl $0xff, %esi                 #  269   0x55738  5      
  nop                              #  270   0x5573d  1      
  andl $0xffffffe0, %eax           #  271   0x5573e  5      
  addq %r15, %rax                  #  272   0x55743  3      
  callq %rax                       #  273   0x55746  2      
  movl %ebx, %ebx                  #  274   0x55748  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  275   0x5574a  12     
  movl $0x1, %edx                  #  276   0x55756  5      
  xorl %eax, %eax                  #  277   0x5575b  2      
  jmpq .L_55720                    #  278   0x5575d  5      
  nop                              #  279   0x55762  1      
.L_558a0:                          #        0x55763  0      
  movl %ebx, %ebx                  #  280   0x55763  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  281   0x55765  8      
  movl %ebx, %ebx                  #  282   0x5576d  2      
  movl 0x110(%r15,%rbx,1), %edx    #  283   0x5576f  8      
  leal 0x4(%rbx), %edi             #  284   0x55777  3      
  nop                              #  285   0x5577a  1      
  movl %ebx, %ebx                  #  286   0x5577b  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  287   0x5577d  9      
  movl $0xff, %esi                 #  288   0x55786  5      
  nop                              #  289   0x5578b  1      
  andl $0xffffffe0, %eax           #  290   0x5578c  5      
  addq %r15, %rax                  #  291   0x55791  3      
  callq %rax                       #  292   0x55794  2      
  movl %ebx, %ebx                  #  293   0x55796  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  294   0x55798  12     
  movl $0x1, %eax                  #  295   0x557a4  5      
  xorl %edx, %edx                  #  296   0x557a9  2      
  jmpq .L_55420                    #  297   0x557ab  5      
  nop                              #  298   0x557b0  1      
                                                            
.size d_print_function_type, .-d_print_function_type

