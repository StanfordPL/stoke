  .text
  .globl d_print_function_type
  .type d_print_function_type, @function

#! file-offset 0x552c0
#! rip-offset  0x552c0
#! capacity    1472 bytes

# Text                             #  Line  RIP      Bytes  
.d_print_function_type:            #        0x552c0  0      
  pushq %r14                       #  1     0x552c0  3      
  pushq %r13                       #  2     0x552c3  3      
  movl %esi, %r13d                 #  3     0x552c6  3      
  pushq %r12                       #  4     0x552c9  3      
  movl %edx, %r12d                 #  5     0x552cc  3      
  pushq %rbx                       #  6     0x552cf  2      
  movl %edi, %ebx                  #  7     0x552d1  2      
  subl $0x8, %esp                  #  8     0x552d3  3      
  addq %r15, %rsp                  #  9     0x552d6  3      
  testq %r12, %r12                 #  10    0x552d9  3      
  je .L_557a0                      #  11    0x552dc  6      
  xchgw %ax, %ax                   #  12    0x552e2  3      
  movl %r12d, %r12d                #  13    0x552e5  3      
  movl 0x8(%r15,%r12,1), %eax      #  14    0x552e8  5      
  testl %eax, %eax                 #  15    0x552ed  2      
  jne .L_557a0                     #  16    0x552ef  6      
  movq %r12, %rax                  #  17    0x552f5  3      
  movl $0x1, %esi                  #  18    0x552f8  5      
  nop                              #  19    0x552fd  1      
  movq $0x8623800000, %rdx         #  20    0x552fe  10     
  movq $0x1c0000000, %rdi          #  21    0x55308  10     
  nop                              #  22    0x55312  1      
.L_55320:                          #        0x55313  0      
  movl %eax, %eax                  #  23    0x55313  2      
  movl 0x4(%r15,%rax,1), %ecx      #  24    0x55315  5      
  movl %ecx, %ecx                  #  25    0x5531a  2      
  cmpl $0x27, (%r15,%rcx,1)        #  26    0x5531c  5      
  ja .L_55440                      #  27    0x55321  6      
  movl %ecx, %ecx                  #  28    0x55327  2      
  movslq (%r15,%rcx,1), %rcx       #  29    0x55329  4      
  movq %rsi, %r8                   #  30    0x5532d  3      
  shlq %cl, %r8                    #  31    0x55330  3      
  testq %rdx, %r8                  #  32    0x55333  3      
  je .L_555c0                      #  33    0x55336  6      
  movl %ebx, %ebx                  #  34    0x5533c  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  35    0x5533e  9      
  nop                              #  36    0x55347  1      
.L_55360:                          #        0x55348  0      
  cmpb $0x20, %al                  #  37    0x55348  2      
  je .L_55600                      #  38    0x5534a  6      
  movl %ebx, %ebx                  #  39    0x55350  2      
  movl 0x104(%r15,%rbx,1), %edx    #  40    0x55352  8      
  cmpl $0xff, %edx                 #  41    0x5535a  3      
  leal 0x1(%rdx), %eax             #  42    0x5535d  3      
  nop                              #  43    0x55360  1      
  je .L_55820                      #  44    0x55361  6      
  nop                              #  45    0x55367  1      
  nop                              #  46    0x55368  1      
.L_553a0:                          #        0x55369  0      
  movslq %edx, %rdx                #  47    0x55369  3      
  cmpl $0xff, %eax                 #  48    0x5536c  3      
  movl %ebx, %ebx                  #  49    0x5536f  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  50    0x55371  8      
  leaq (%rbx,%rdx,1), %rdx         #  51    0x55379  4      
  nop                              #  52    0x5537d  1      
  movl %ebx, %ebx                  #  53    0x5537e  2      
  movb $0x20, 0x108(%r15,%rbx,1)   #  54    0x55380  9      
  movl %edx, %edx                  #  55    0x55389  2      
  movb $0x20, 0x4(%r15,%rdx,1)     #  56    0x5538b  6      
  leal 0x1(%rax), %edx             #  57    0x55391  3      
  jne .L_55620                     #  58    0x55394  6      
  nop                              #  59    0x5539a  1      
.L_553e0:                          #        0x5539b  0      
  movl %ebx, %ebx                  #  60    0x5539b  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  61    0x5539d  8      
  movl %ebx, %ebx                  #  62    0x553a5  2      
  movl 0x110(%r15,%rbx,1), %edx    #  63    0x553a7  8      
  leal 0x4(%rbx), %edi             #  64    0x553af  3      
  nop                              #  65    0x553b2  1      
  movl %ebx, %ebx                  #  66    0x553b3  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  67    0x553b5  9      
  movl %ebx, %ebx                  #  68    0x553be  2      
  movl 0x104(%r15,%rbx,1), %esi    #  69    0x553c0  8      
  nop                              #  70    0x553c8  1      
  andl $0xffffffe0, %eax           #  71    0x553c9  5      
  addq %r15, %rax                  #  72    0x553ce  3      
  callq %rax                       #  73    0x553d1  2      
  movl %ebx, %ebx                  #  74    0x553d3  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  75    0x553d5  12     
  movl $0x1, %edx                  #  76    0x553e1  5      
  xorl %eax, %eax                  #  77    0x553e6  2      
  jmpq .L_55620                    #  78    0x553e8  5      
  nop                              #  79    0x553ed  1      
.L_55440:                          #        0x553ee  0      
  movl %eax, %eax                  #  80    0x553ee  2      
  movl (%r15,%rax,1), %eax         #  81    0x553f0  4      
  testq %rax, %rax                 #  82    0x553f4  3      
  je .L_55460                      #  83    0x553f7  6      
  movl %eax, %eax                  #  84    0x553fd  2      
  movl 0x8(%r15,%rax,1), %r14d     #  85    0x553ff  5      
  testl %r14d, %r14d               #  86    0x55404  3      
  je .L_55320                      #  87    0x55407  6      
  nop                              #  88    0x5540d  1      
.L_55460:                          #        0x5540e  0      
  xorl %edx, %edx                  #  89    0x5540e  2      
  movl %ebx, %ebx                  #  90    0x55410  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  91    0x55412  8      
  movl %r12d, %esi                 #  92    0x5541a  3      
  movl %ebx, %ebx                  #  93    0x5541d  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  94    0x5541f  12     
  movl %ebx, %edi                  #  95    0x5542b  2      
  nop                              #  96    0x5542d  1      
  nop                              #  97    0x5542e  1      
  nop                              #  98    0x5542f  1      
  callq .d_print_mod_list          #  99    0x55430  5      
  movl %ebx, %ebx                  #  100   0x55435  2      
  movl 0x104(%r15,%rbx,1), %edx    #  101   0x55437  8      
  cmpl $0xff, %edx                 #  102   0x5543f  3      
  leal 0x1(%rdx), %eax             #  103   0x55442  3      
  je .L_556e0                      #  104   0x55445  6      
  nop                              #  105   0x5544b  1      
.L_554c0:                          #        0x5544c  0      
  movslq %edx, %rdx                #  106   0x5544c  3      
  movl %ebx, %ebx                  #  107   0x5544f  2      
  movl %eax, 0x104(%r15,%rbx,1)    #  108   0x55451  8      
  movl %ebx, %ebx                  #  109   0x55459  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  110   0x5545b  9      
  leaq (%rbx,%rdx,1), %rdx         #  111   0x55464  4      
  nop                              #  112   0x55468  1      
  movl %edx, %edx                  #  113   0x55469  2      
  movb $0x28, 0x4(%r15,%rdx,1)     #  114   0x5546b  6      
  movl %r13d, %r13d                #  115   0x55471  3      
  movl 0x8(%r15,%r13,1), %esi      #  116   0x55474  5      
  testq %rsi, %rsi                 #  117   0x55479  3      
  je .L_55520                      #  118   0x5547c  6      
  movl %ebx, %edi                  #  119   0x55482  2      
  nop                              #  120   0x55484  1      
  callq .d_print_comp              #  121   0x55485  5      
  movl %ebx, %ebx                  #  122   0x5548a  2      
  movl 0x104(%r15,%rbx,1), %eax    #  123   0x5548c  8      
  nop                              #  124   0x55494  1      
  nop                              #  125   0x55495  1      
.L_55520:                          #        0x55496  0      
  cmpl $0xff, %eax                 #  126   0x55496  3      
  leal 0x1(%rax), %edx             #  127   0x55499  3      
  je .L_55740                      #  128   0x5549c  6      
  nop                              #  129   0x554a2  1      
  nop                              #  130   0x554a3  1      
.L_55540:                          #        0x554a4  0      
  cltq                             #  131   0x554a4  2      
  movl %ebx, %ebx                  #  132   0x554a6  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  133   0x554a8  8      
  movl %ebx, %ebx                  #  134   0x554b0  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  135   0x554b2  9      
  leaq (%rbx,%rax,1), %rax         #  136   0x554bb  4      
  movl %r12d, %esi                 #  137   0x554bf  3      
  movl %ebx, %edi                  #  138   0x554c2  2      
  movl $0x1, %edx                  #  139   0x554c4  5      
  movl %eax, %eax                  #  140   0x554c9  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  141   0x554cb  6      
  nop                              #  142   0x554d1  1      
  callq .d_print_mod_list          #  143   0x554d2  5      
  movl %ebx, %ebx                  #  144   0x554d7  2      
  movl %r14d, 0x118(%r15,%rbx,1)   #  145   0x554d9  8      
  addl $0x8, %esp                  #  146   0x554e1  3      
  addq %r15, %rsp                  #  147   0x554e4  3      
  popq %rbx                        #  148   0x554e7  2      
  popq %r12                        #  149   0x554e9  3      
  popq %r13                        #  150   0x554ec  3      
  popq %r14                        #  151   0x554ef  3      
  popq %r11                        #  152   0x554f2  3      
  nop                              #  153   0x554f5  1      
  andl $0xffffffe0, %r11d          #  154   0x554f6  7      
  addq %r15, %r11                  #  155   0x554fd  3      
  jmpq %r11                        #  156   0x55500  3      
  nop                              #  157   0x55503  1      
  nop                              #  158   0x55504  1      
.L_555c0:                          #        0x55505  0      
  testq %rdi, %r8                  #  159   0x55505  3      
  je .L_55440                      #  160   0x55508  6      
  nop                              #  161   0x5550e  1      
  nop                              #  162   0x5550f  1      
.L_555e0:                          #        0x55510  0      
  movl %ebx, %ebx                  #  163   0x55510  2      
  movzbl 0x108(%r15,%rbx,1), %eax  #  164   0x55512  9      
  cmpb $0x28, %al                  #  165   0x5551b  2      
  je .L_55600                      #  166   0x5551d  6      
  cmpb $0x2a, %al                  #  167   0x55523  2      
  jne .L_55360                     #  168   0x55525  6      
  nop                              #  169   0x5552b  1      
.L_55600:                          #        0x5552c  0      
  movl %ebx, %ebx                  #  170   0x5552c  2      
  movl 0x104(%r15,%rbx,1), %eax    #  171   0x5552e  8      
  cmpl $0xff, %eax                 #  172   0x55536  3      
  leal 0x1(%rax), %edx             #  173   0x55539  3      
  je .L_553e0                      #  174   0x5553c  6      
  nop                              #  175   0x55542  1      
.L_55620:                          #        0x55543  0      
  cltq                             #  176   0x55543  2      
  movl %ebx, %ebx                  #  177   0x55545  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  178   0x55547  8      
  movl %ebx, %ebx                  #  179   0x5554f  2      
  movl 0x118(%r15,%rbx,1), %r14d   #  180   0x55551  8      
  leaq (%rbx,%rax,1), %rax         #  181   0x55559  4      
  xorl %edx, %edx                  #  182   0x5555d  2      
  nop                              #  183   0x5555f  1      
  movl %ebx, %ebx                  #  184   0x55560  2      
  movb $0x28, 0x108(%r15,%rbx,1)   #  185   0x55562  9      
  movl %ebx, %ebx                  #  186   0x5556b  2      
  movl $0x0, 0x118(%r15,%rbx,1)    #  187   0x5556d  12     
  movl %r12d, %esi                 #  188   0x55579  3      
  movl %ebx, %edi                  #  189   0x5557c  2      
  xchgw %ax, %ax                   #  190   0x5557e  3      
  movl %eax, %eax                  #  191   0x55581  2      
  movb $0x28, 0x4(%r15,%rax,1)     #  192   0x55583  6      
  nop                              #  193   0x55589  1      
  nop                              #  194   0x5558a  1      
  callq .d_print_mod_list          #  195   0x5558b  5      
  movl %ebx, %ebx                  #  196   0x55590  2      
  movl 0x104(%r15,%rbx,1), %eax    #  197   0x55592  8      
  cmpl $0xff, %eax                 #  198   0x5559a  3      
  leal 0x1(%rax), %edx             #  199   0x5559d  3      
  je .L_557c0                      #  200   0x555a0  6      
  nop                              #  201   0x555a6  1      
.L_556a0:                          #        0x555a7  0      
  cltq                             #  202   0x555a7  2      
  cmpl $0xff, %edx                 #  203   0x555a9  3      
  movl %ebx, %ebx                  #  204   0x555ac  2      
  movl %edx, 0x104(%r15,%rbx,1)    #  205   0x555ae  8      
  leaq (%rbx,%rax,1), %rax         #  206   0x555b6  4      
  nop                              #  207   0x555ba  1      
  movl %ebx, %ebx                  #  208   0x555bb  2      
  movb $0x29, 0x108(%r15,%rbx,1)   #  209   0x555bd  9      
  movl %eax, %eax                  #  210   0x555c6  2      
  movb $0x29, 0x4(%r15,%rax,1)     #  211   0x555c8  6      
  leal 0x1(%rdx), %eax             #  212   0x555ce  3      
  jne .L_554c0                     #  213   0x555d1  6      
  nop                              #  214   0x555d7  1      
.L_556e0:                          #        0x555d8  0      
  movl %ebx, %ebx                  #  215   0x555d8  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  216   0x555da  8      
  movl %ebx, %ebx                  #  217   0x555e2  2      
  movl 0x110(%r15,%rbx,1), %edx    #  218   0x555e4  8      
  leal 0x4(%rbx), %edi             #  219   0x555ec  3      
  nop                              #  220   0x555ef  1      
  movl %ebx, %ebx                  #  221   0x555f0  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  222   0x555f2  9      
  movl %ebx, %ebx                  #  223   0x555fb  2      
  movl 0x104(%r15,%rbx,1), %esi    #  224   0x555fd  8      
  nop                              #  225   0x55605  1      
  andl $0xffffffe0, %eax           #  226   0x55606  5      
  addq %r15, %rax                  #  227   0x5560b  3      
  callq %rax                       #  228   0x5560e  2      
  movl %ebx, %ebx                  #  229   0x55610  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  230   0x55612  12     
  movl $0x1, %eax                  #  231   0x5561e  5      
  xorl %edx, %edx                  #  232   0x55623  2      
  jmpq .L_554c0                    #  233   0x55625  5      
  nop                              #  234   0x5562a  1      
.L_55740:                          #        0x5562b  0      
  movl %ebx, %ebx                  #  235   0x5562b  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  236   0x5562d  8      
  movl %ebx, %ebx                  #  237   0x55635  2      
  movl 0x110(%r15,%rbx,1), %edx    #  238   0x55637  8      
  leal 0x4(%rbx), %edi             #  239   0x5563f  3      
  nop                              #  240   0x55642  1      
  movl %ebx, %ebx                  #  241   0x55643  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  242   0x55645  9      
  movl %ebx, %ebx                  #  243   0x5564e  2      
  movl 0x104(%r15,%rbx,1), %esi    #  244   0x55650  8      
  nop                              #  245   0x55658  1      
  andl $0xffffffe0, %eax           #  246   0x55659  5      
  addq %r15, %rax                  #  247   0x5565e  3      
  callq %rax                       #  248   0x55661  2      
  movl %ebx, %ebx                  #  249   0x55663  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  250   0x55665  12     
  movl $0x1, %edx                  #  251   0x55671  5      
  xorl %eax, %eax                  #  252   0x55676  2      
  jmpq .L_55540                    #  253   0x55678  5      
  nop                              #  254   0x5567d  1      
.L_557a0:                          #        0x5567e  0      
  movl %r13d, %r13d                #  255   0x5567e  3      
  movl 0x4(%r15,%r13,1), %r11d     #  256   0x55681  5      
  testl %r11d, %r11d               #  257   0x55686  3      
  jne .L_555e0                     #  258   0x55689  6      
  jmpq .L_55460                    #  259   0x5568f  5      
  nop                              #  260   0x55694  1      
.L_557c0:                          #        0x55695  0      
  movl %ebx, %ebx                  #  261   0x55695  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  262   0x55697  8      
  movl %ebx, %ebx                  #  263   0x5569f  2      
  movl 0x110(%r15,%rbx,1), %edx    #  264   0x556a1  8      
  leal 0x4(%rbx), %edi             #  265   0x556a9  3      
  nop                              #  266   0x556ac  1      
  movl %ebx, %ebx                  #  267   0x556ad  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  268   0x556af  9      
  movl $0xff, %esi                 #  269   0x556b8  5      
  nop                              #  270   0x556bd  1      
  andl $0xffffffe0, %eax           #  271   0x556be  5      
  addq %r15, %rax                  #  272   0x556c3  3      
  callq %rax                       #  273   0x556c6  2      
  movl %ebx, %ebx                  #  274   0x556c8  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  275   0x556ca  12     
  movl $0x1, %edx                  #  276   0x556d6  5      
  xorl %eax, %eax                  #  277   0x556db  2      
  jmpq .L_556a0                    #  278   0x556dd  5      
  nop                              #  279   0x556e2  1      
.L_55820:                          #        0x556e3  0      
  movl %ebx, %ebx                  #  280   0x556e3  2      
  movl 0x10c(%r15,%rbx,1), %eax    #  281   0x556e5  8      
  movl %ebx, %ebx                  #  282   0x556ed  2      
  movl 0x110(%r15,%rbx,1), %edx    #  283   0x556ef  8      
  leal 0x4(%rbx), %edi             #  284   0x556f7  3      
  nop                              #  285   0x556fa  1      
  movl %ebx, %ebx                  #  286   0x556fb  2      
  movb $0x0, 0x103(%r15,%rbx,1)    #  287   0x556fd  9      
  movl $0xff, %esi                 #  288   0x55706  5      
  nop                              #  289   0x5570b  1      
  andl $0xffffffe0, %eax           #  290   0x5570c  5      
  addq %r15, %rax                  #  291   0x55711  3      
  callq %rax                       #  292   0x55714  2      
  movl %ebx, %ebx                  #  293   0x55716  2      
  movl $0x0, 0x104(%r15,%rbx,1)    #  294   0x55718  12     
  movl $0x1, %eax                  #  295   0x55724  5      
  xorl %edx, %edx                  #  296   0x55729  2      
  jmpq .L_553a0                    #  297   0x5572b  5      
  nop                              #  298   0x55730  1      
                                                            
.size d_print_function_type, .-d_print_function_type

