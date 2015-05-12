  .text
  .globl d_type
  .type d_type, @function

#! file-offset 0x511a0
#! rip-offset  0x511a0
#! capacity    4160 bytes

# Text                                #  Line  RIP      Bytes  
.d_type:                              #        0x511a0  0      
  movq %rbx, -0x20(%rsp)              #  1     0x511a0  5      
  movl %edi, %ebx                     #  2     0x511a5  2      
  movq %r12, -0x18(%rsp)              #  3     0x511a7  5      
  movq %r13, -0x10(%rsp)              #  4     0x511ac  5      
  movq %r14, -0x8(%rsp)               #  5     0x511b1  5      
  subl $0x38, %esp                    #  6     0x511b6  3      
  addq %r15, %rsp                     #  7     0x511b9  3      
  nop                                 #  8     0x511bc  1      
  movl %ebx, %ebx                     #  9     0x511bd  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x511bf  5      
  movl %edx, %edx                     #  11    0x511c4  2      
  movzbl (%r15,%rdx,1), %eax          #  12    0x511c6  5      
  cmpb $0x56, %al                     #  13    0x511cb  2      
  je .L_51280                         #  14    0x511cd  6      
  cmpb $0x72, %al                     #  15    0x511d3  2      
  je .L_51280                         #  16    0x511d5  6      
  cmpb $0x4b, %al                     #  17    0x511db  2      
  je .L_51280                         #  18    0x511dd  6      
  leal -0x30(%rax), %ecx              #  19    0x511e3  3      
  cmpb $0x4a, %cl                     #  20    0x511e6  3      
  jbe .L_51260                        #  21    0x511e9  6      
  nop                                 #  22    0x511ef  1      
  nop                                 #  23    0x511f0  1      
.L_51200:                             #        0x511f1  0      
  xorl %eax, %eax                     #  24    0x511f1  2      
  nop                                 #  25    0x511f3  1      
  nop                                 #  26    0x511f4  1      
.L_51220:                             #        0x511f5  0      
  movq 0x18(%rsp), %rbx               #  27    0x511f5  5      
  movq 0x20(%rsp), %r12               #  28    0x511fa  5      
  movq 0x28(%rsp), %r13               #  29    0x511ff  5      
  movq 0x30(%rsp), %r14               #  30    0x51204  5      
  addl $0x38, %esp                    #  31    0x51209  3      
  addq %r15, %rsp                     #  32    0x5120c  3      
  popq %r11                           #  33    0x5120f  3      
  nop                                 #  34    0x51212  1      
  andl $0xffffffe0, %r11d             #  35    0x51213  7      
  addq %r15, %r11                     #  36    0x5121a  3      
  jmpq %r11                           #  37    0x5121d  3      
  nop                                 #  38    0x51220  1      
  nop                                 #  39    0x51221  1      
.L_51260:                             #        0x51222  0      
  movzbl %cl, %ecx                    #  40    0x51222  3      
  movl %ecx, %ecx                     #  41    0x51225  2      
  movq 0x100218d0(%r15,%rcx,8), %rcx  #  42    0x51227  8      
  andl $0xffffffe0, %ecx              #  43    0x5122f  6      
  addq %r15, %rcx                     #  44    0x51235  3      
  jmpq %rcx                           #  45    0x51238  2      
  nop                                 #  46    0x5123a  1      
.L_51280:                             #        0x5123b  0      
  leal 0xc(%rsp), %esi                #  47    0x5123b  4      
  xorl %edx, %edx                     #  48    0x5123f  2      
  movl %ebx, %edi                     #  49    0x51241  2      
  nop                                 #  50    0x51243  1      
  nop                                 #  51    0x51244  1      
  callq .d_cv_qualifiers              #  52    0x51245  5      
  movl %eax, %r12d                    #  53    0x5124a  3      
  testq %r12, %r12                    #  54    0x5124d  3      
  je .L_51200                         #  55    0x51250  6      
  movl %ebx, %edi                     #  56    0x51256  2      
  nop                                 #  57    0x51258  1      
  callq .d_type                       #  58    0x51259  5      
  movl %eax, %eax                     #  59    0x5125e  2      
  testq %rax, %rax                    #  60    0x51260  3      
  movl %r12d, %r12d                   #  61    0x51263  3      
  movl %eax, (%r15,%r12,1)            #  62    0x51266  4      
  je .L_51200                         #  63    0x5126a  6      
  movl 0xc(%rsp), %eax                #  64    0x51270  4      
  testq %rax, %rax                    #  65    0x51274  3      
  je .L_51200                         #  66    0x51277  6      
  nop                                 #  67    0x5127d  1      
.L_512e0:                             #        0x5127e  0      
  movl %ebx, %ebx                     #  68    0x5127e  2      
  movl 0x20(%r15,%rbx,1), %edx        #  69    0x51280  5      
  movl %ebx, %ebx                     #  70    0x51285  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  71    0x51287  5      
  jge .L_51200                        #  72    0x5128c  6      
  shll $0x2, %edx                     #  73    0x51292  3      
  movl %ebx, %ebx                     #  74    0x51295  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  75    0x51297  5      
  xchgw %ax, %ax                      #  76    0x5129c  3      
  movl %ebx, %ebx                     #  77    0x5129f  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  78    0x512a1  6      
  movl %edx, %edx                     #  79    0x512a7  2      
  movl %eax, (%r15,%rdx,1)            #  80    0x512a9  4      
  movl 0xc(%rsp), %eax                #  81    0x512ad  4      
  jmpq .L_51220                       #  82    0x512b1  5      
  nop                                 #  83    0x512b6  1      
  movl %ebx, %edi                     #  84    0x512b7  2      
  nop                                 #  85    0x512b9  1      
  nop                                 #  86    0x512ba  1      
  callq .d_name                       #  87    0x512bb  5      
  movl %eax, %eax                     #  88    0x512c0  2      
  movl %eax, 0xc(%rsp)                #  89    0x512c2  4      
  nop                                 #  90    0x512c6  1      
  nop                                 #  91    0x512c7  1      
.L_51360:                             #        0x512c8  0      
  testq %rax, %rax                    #  92    0x512c8  3      
  jne .L_512e0                        #  93    0x512cb  6      
  jmpq .L_51220                       #  94    0x512d1  5      
  nop                                 #  95    0x512d6  1      
  nop                                 #  96    0x512d7  1      
  addl $0x1, %edx                     #  97    0x512d8  3      
  movl %ebx, %edi                     #  98    0x512db  2      
  movl %ebx, %ebx                     #  99    0x512dd  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  100   0x512df  5      
  nop                                 #  101   0x512e4  1      
  callq .d_type                       #  102   0x512e5  5      
  xorl %ecx, %ecx                     #  103   0x512ea  2      
  movl %eax, %edx                     #  104   0x512ec  2      
  movl $0x21, %esi                    #  105   0x512ee  5      
  movl %ebx, %edi                     #  106   0x512f3  2      
  nop                                 #  107   0x512f5  1      
  nop                                 #  108   0x512f6  1      
  callq .d_make_comp                  #  109   0x512f7  5      
  movl %eax, %eax                     #  110   0x512fc  2      
  movl %eax, 0xc(%rsp)                #  111   0x512fe  4      
  jmpq .L_51360                       #  112   0x51302  5      
  nop                                 #  113   0x51307  1      
  nop                                 #  114   0x51308  1      
  addl $0x1, %edx                     #  115   0x51309  3      
  movl %ebx, %ebx                     #  116   0x5130c  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  117   0x5130e  5      
  movl %edx, %edx                     #  118   0x51313  2      
  movzbl (%r15,%rdx,1), %eax          #  119   0x51315  5      
  testb %al, %al                      #  120   0x5131a  2      
  je .L_51200                         #  121   0x5131c  6      
  subl $0x46, %eax                    #  122   0x51322  3      
  addl $0x1, %edx                     #  123   0x51325  3      
  nop                                 #  124   0x51328  1      
  cmpb $0x2e, %al                     #  125   0x51329  2      
  movl %ebx, %ebx                     #  126   0x5132b  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  127   0x5132d  5      
  ja .L_51200                         #  128   0x51332  6      
  movzbl %al, %eax                    #  129   0x51338  3      
  movl %eax, %eax                     #  130   0x5133b  2      
  movq 0x10021b28(%r15,%rax,8), %rax  #  131   0x5133d  8      
  nop                                 #  132   0x51345  1      
  andl $0xffffffe0, %eax              #  133   0x51346  5      
  addq %r15, %rax                     #  134   0x5134b  3      
  jmpq %rax                           #  135   0x5134e  2      
  nop                                 #  136   0x51350  1      
  nop                                 #  137   0x51351  1      
  addl $0x1, %edx                     #  138   0x51352  3      
  movl %ebx, %edi                     #  139   0x51355  2      
  movl %ebx, %ebx                     #  140   0x51357  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  141   0x51359  5      
  nop                                 #  142   0x5135e  1      
  callq .d_type                       #  143   0x5135f  5      
  xorl %ecx, %ecx                     #  144   0x51364  2      
  movl %eax, %edx                     #  145   0x51366  2      
  movl $0x22, %esi                    #  146   0x51368  5      
  movl %ebx, %edi                     #  147   0x5136d  2      
  nop                                 #  148   0x5136f  1      
  nop                                 #  149   0x51370  1      
  callq .d_make_comp                  #  150   0x51371  5      
  movl %eax, %eax                     #  151   0x51376  2      
  movl %eax, 0xc(%rsp)                #  152   0x51378  4      
  jmpq .L_51360                       #  153   0x5137c  5      
  nop                                 #  154   0x51381  1      
  nop                                 #  155   0x51382  1      
  addl $0x1, %edx                     #  156   0x51383  3      
  movl %ebx, %edi                     #  157   0x51386  2      
  movl %ebx, %ebx                     #  158   0x51388  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  159   0x5138a  5      
  nop                                 #  160   0x5138f  1      
  callq .d_type                       #  161   0x51390  5      
  xorl %ecx, %ecx                     #  162   0x51395  2      
  movl %eax, %edx                     #  163   0x51397  2      
  movl $0x20, %esi                    #  164   0x51399  5      
  movl %ebx, %edi                     #  165   0x5139e  2      
  nop                                 #  166   0x513a0  1      
  nop                                 #  167   0x513a1  1      
  callq .d_make_comp                  #  168   0x513a2  5      
  movl %eax, %eax                     #  169   0x513a7  2      
  movl %eax, 0xc(%rsp)                #  170   0x513a9  4      
  jmpq .L_51360                       #  171   0x513ad  5      
  nop                                 #  172   0x513b2  1      
  nop                                 #  173   0x513b3  1      
  addl $0x1, %edx                     #  174   0x513b4  3      
  movl %ebx, %edi                     #  175   0x513b7  2      
  movl %ebx, %ebx                     #  176   0x513b9  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  177   0x513bb  5      
  nop                                 #  178   0x513c0  1      
  callq .d_type                       #  179   0x513c1  5      
  xorl %ecx, %ecx                     #  180   0x513c6  2      
  movl %eax, %edx                     #  181   0x513c8  2      
  movl $0x1e, %esi                    #  182   0x513ca  5      
  movl %ebx, %edi                     #  183   0x513cf  2      
  nop                                 #  184   0x513d1  1      
  nop                                 #  185   0x513d2  1      
  callq .d_make_comp                  #  186   0x513d3  5      
  movl %eax, %eax                     #  187   0x513d8  2      
  movl %eax, 0xc(%rsp)                #  188   0x513da  4      
  jmpq .L_51360                       #  189   0x513de  5      
  nop                                 #  190   0x513e3  1      
  nop                                 #  191   0x513e4  1      
  addl $0x1, %edx                     #  192   0x513e5  3      
  movl %ebx, %edi                     #  193   0x513e8  2      
  movl %ebx, %ebx                     #  194   0x513ea  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  195   0x513ec  5      
  nop                                 #  196   0x513f1  1      
  callq .d_type                       #  197   0x513f2  5      
  xorl %ecx, %ecx                     #  198   0x513f7  2      
  movl %eax, %edx                     #  199   0x513f9  2      
  movl $0x1f, %esi                    #  200   0x513fb  5      
  movl %ebx, %edi                     #  201   0x51400  2      
  nop                                 #  202   0x51402  1      
  nop                                 #  203   0x51403  1      
  callq .d_make_comp                  #  204   0x51404  5      
  movl %eax, %eax                     #  205   0x51409  2      
  movl %eax, 0xc(%rsp)                #  206   0x5140b  4      
  jmpq .L_51360                       #  207   0x5140f  5      
  nop                                 #  208   0x51414  1      
  nop                                 #  209   0x51415  1      
  movl %edx, %edx                     #  210   0x51416  2      
  movzbl 0x1(%r15,%rdx,1), %eax       #  211   0x51418  6      
  leal -0x30(%rax), %edx              #  212   0x5141e  3      
  cmpb $0x9, %dl                      #  213   0x51421  3      
  jbe .L_515e0                        #  214   0x51424  6      
  cmpb $0x5f, %al                     #  215   0x5142a  2      
  je .L_515e0                         #  216   0x5142c  6      
  subl $0x41, %eax                    #  217   0x51432  3      
  cmpb $0x19, %al                     #  218   0x51435  2      
  ja .L_52020                         #  219   0x51437  6      
  nop                                 #  220   0x5143d  1      
.L_515e0:                             #        0x5143e  0      
  xorl %esi, %esi                     #  221   0x5143e  2      
  movl %ebx, %edi                     #  222   0x51440  2      
  nop                                 #  223   0x51442  1      
  nop                                 #  224   0x51443  1      
  callq .d_substitution               #  225   0x51444  5      
  movl %ebx, %ebx                     #  226   0x51449  2      
  movl 0xc(%r15,%rbx,1), %edx         #  227   0x5144b  5      
  movl %eax, %eax                     #  228   0x51450  2      
  movl %eax, 0xc(%rsp)                #  229   0x51452  4      
  movl %edx, %edx                     #  230   0x51456  2      
  cmpb $0x49, (%r15,%rdx,1)           #  231   0x51458  5      
  jne .L_51220                        #  232   0x5145d  6      
  movl %ebx, %edi                     #  233   0x51463  2      
  nop                                 #  234   0x51465  1      
  nop                                 #  235   0x51466  1      
  nop                                 #  236   0x51467  1      
  callq .d_template_args              #  237   0x51468  5      
  movl 0xc(%rsp), %edx                #  238   0x5146d  4      
  movl %eax, %ecx                     #  239   0x51471  2      
  movl $0x4, %esi                     #  240   0x51473  5      
  movl %ebx, %edi                     #  241   0x51478  2      
  nop                                 #  242   0x5147a  1      
  callq .d_make_comp                  #  243   0x5147b  5      
  movl %eax, %eax                     #  244   0x51480  2      
  movl %eax, 0xc(%rsp)                #  245   0x51482  4      
  jmpq .L_51360                       #  246   0x51486  5      
  nop                                 #  247   0x5148b  1      
  nop                                 #  248   0x5148c  1      
  movl %ebx, %edi                     #  249   0x5148d  2      
  nop                                 #  250   0x5148f  1      
  nop                                 #  251   0x51490  1      
  callq .d_template_param             #  252   0x51491  5      
  movl %ebx, %ebx                     #  253   0x51496  2      
  movl 0xc(%r15,%rbx,1), %edx         #  254   0x51498  5      
  movl %eax, %eax                     #  255   0x5149d  2      
  movl %eax, 0xc(%rsp)                #  256   0x5149f  4      
  movl %edx, %edx                     #  257   0x514a3  2      
  cmpb $0x49, (%r15,%rdx,1)           #  258   0x514a5  5      
  jne .L_51360                        #  259   0x514aa  6      
  testq %rax, %rax                    #  260   0x514b0  3      
  nop                                 #  261   0x514b3  1      
  je .L_51220                         #  262   0x514b4  6      
  movl %ebx, %ebx                     #  263   0x514ba  2      
  movl 0x20(%r15,%rbx,1), %edx        #  264   0x514bc  5      
  movl %ebx, %ebx                     #  265   0x514c1  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  266   0x514c3  5      
  jge .L_51200                        #  267   0x514c8  6      
  shll $0x2, %edx                     #  268   0x514ce  3      
  nop                                 #  269   0x514d1  1      
  movl %ebx, %ebx                     #  270   0x514d2  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  271   0x514d4  5      
  movl %ebx, %ebx                     #  272   0x514d9  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  273   0x514db  6      
  movl %ebx, %edi                     #  274   0x514e1  2      
  movl %edx, %edx                     #  275   0x514e3  2      
  movl %eax, (%r15,%rdx,1)            #  276   0x514e5  4      
  nop                                 #  277   0x514e9  1      
  callq .d_template_args              #  278   0x514ea  5      
  movl 0xc(%rsp), %edx                #  279   0x514ef  4      
  movl %eax, %ecx                     #  280   0x514f3  2      
  movl $0x4, %esi                     #  281   0x514f5  5      
  movl %ebx, %edi                     #  282   0x514fa  2      
  nop                                 #  283   0x514fc  1      
  callq .d_make_comp                  #  284   0x514fd  5      
  movl %eax, %eax                     #  285   0x51502  2      
  nop                                 #  286   0x51504  1      
  nop                                 #  287   0x51505  1      
.L_51740:                             #        0x51506  0      
  movl %eax, 0xc(%rsp)                #  288   0x51506  4      
  jmpq .L_51360                       #  289   0x5150a  5      
  nop                                 #  290   0x5150f  1      
  nop                                 #  291   0x51510  1      
  addl $0x1, %edx                     #  292   0x51511  3      
  movl %ebx, %edi                     #  293   0x51514  2      
  movl %ebx, %ebx                     #  294   0x51516  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  295   0x51518  5      
  nop                                 #  296   0x5151d  1      
  callq .d_source_name                #  297   0x5151e  5      
  movl %ebx, %edi                     #  298   0x51523  2      
  movl %eax, %r12d                    #  299   0x51525  3      
  movl %r12d, 0xc(%rsp)               #  300   0x51528  5      
  xchgw %ax, %ax                      #  301   0x5152d  3      
  nop                                 #  302   0x51530  1      
  callq .d_type                       #  303   0x51531  5      
  movl %r12d, %ecx                    #  304   0x51536  3      
  movl %eax, %edx                     #  305   0x51539  2      
  movl $0x1d, %esi                    #  306   0x5153b  5      
  movl %ebx, %edi                     #  307   0x51540  2      
  nop                                 #  308   0x51542  1      
  callq .d_make_comp                  #  309   0x51543  5      
  movl %eax, %eax                     #  310   0x51548  2      
  jmpq .L_51740                       #  311   0x5154a  5      
  nop                                 #  312   0x5154f  1      
  nop                                 #  313   0x51550  1      
  movsbl %al, %eax                    #  314   0x51551  3      
  leal (%rax,%rax,4), %eax            #  315   0x51554  3      
  leal 0x100219ec(,%rax,4), %edx      #  316   0x51557  7      
  testq %rdx, %rdx                    #  317   0x5155e  3      
  je .L_520c0                         #  318   0x51561  6      
  movl %ebx, %ebx                     #  319   0x51567  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  320   0x51569  5      
  nop                                 #  321   0x5156e  1      
  movl %ebx, %ebx                     #  322   0x5156f  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  323   0x51571  5      
  jl .L_51fc0                         #  324   0x51576  6      
  movl 0x4(%r15), %edx                #  325   0x5157c  4      
  xorl %eax, %eax                     #  326   0x51580  2      
  nop                                 #  327   0x51582  1      
.L_51820:                             #        0x51583  0      
  movl %edx, %edx                     #  328   0x51583  2      
  movl 0x4(%r15,%rdx,1), %edx         #  329   0x51585  5      
  movl %ebx, %ebx                     #  330   0x5158a  2      
  addl $0x1, 0xc(%r15,%rbx,1)         #  331   0x5158c  6      
  movl %ebx, %ebx                     #  332   0x51592  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  333   0x51594  5      
  jmpq .L_51220                       #  334   0x51599  5      
  nop                                 #  335   0x5159e  1      
  addl $0x1, %edx                     #  336   0x5159f  3      
  movl %ebx, %edi                     #  337   0x515a2  2      
  movl %ebx, %ebx                     #  338   0x515a4  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  339   0x515a6  5      
  nop                                 #  340   0x515ab  1      
  callq .d_source_name                #  341   0x515ac  5      
  xorl %ecx, %ecx                     #  342   0x515b1  2      
  movl %eax, %edx                     #  343   0x515b3  2      
  movl $0x24, %esi                    #  344   0x515b5  5      
  movl %ebx, %edi                     #  345   0x515ba  2      
  nop                                 #  346   0x515bc  1      
  nop                                 #  347   0x515bd  1      
  callq .d_make_comp                  #  348   0x515be  5      
  movl %eax, %eax                     #  349   0x515c3  2      
  movl %eax, 0xc(%rsp)                #  350   0x515c5  4      
  jmpq .L_51360                       #  351   0x515c9  5      
  nop                                 #  352   0x515ce  1      
  nop                                 #  353   0x515cf  1      
  addl $0x1, %edx                     #  354   0x515d0  3      
  leal 0x8(%rsp), %r13d               #  355   0x515d3  5      
  movl %ebx, %edi                     #  356   0x515d8  2      
  movl %ebx, %ebx                     #  357   0x515da  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  358   0x515dc  5      
  nop                                 #  359   0x515e1  1      
  callq .d_type                       #  360   0x515e2  5      
  movl $0x1, %edx                     #  361   0x515e7  5      
  movl %r13d, %esi                    #  362   0x515ec  3      
  movl %ebx, %edi                     #  363   0x515ef  2      
  movl %eax, %r12d                    #  364   0x515f1  3      
  nop                                 #  365   0x515f4  1      
  callq .d_cv_qualifiers              #  366   0x515f5  5      
  movl %eax, %r14d                    #  367   0x515fa  3      
  testq %r14, %r14                    #  368   0x515fd  3      
  jne .L_51ac0                        #  369   0x51600  6      
  nop                                 #  370   0x51606  1      
  nop                                 #  371   0x51607  1      
.L_51900:                             #        0x51608  0      
  xorl %eax, %eax                     #  372   0x51608  2      
  jmpq .L_51740                       #  373   0x5160a  5      
  nop                                 #  374   0x5160f  1      
  nop                                 #  375   0x51610  1      
  leal 0x1(%rdx), %esi                #  376   0x51611  3      
  xorl %r12d, %r12d                   #  377   0x51614  3      
  movl %ebx, %ebx                     #  378   0x51617  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  379   0x51619  5      
  movl %esi, %esi                     #  380   0x5161e  2      
  movzbl (%r15,%rsi,1), %eax          #  381   0x51620  5      
  cmpb $0x5f, %al                     #  382   0x51625  2      
  je .L_519e0                         #  383   0x51627  6      
  subl $0x30, %eax                    #  384   0x5162d  3      
  nop                                 #  385   0x51630  1      
  cmpb $0x9, %al                      #  386   0x51631  2      
  ja .L_52080                         #  387   0x51633  6      
  addl $0x2, %edx                     #  388   0x51639  3      
  nop                                 #  389   0x5163c  1      
  nop                                 #  390   0x5163d  1      
.L_51960:                             #        0x5163e  0      
  movl %edx, %eax                     #  391   0x5163e  2      
  addl $0x1, %edx                     #  392   0x51640  3      
  movl %ebx, %ebx                     #  393   0x51643  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  394   0x51645  5      
  movl %eax, %eax                     #  395   0x5164a  2      
  movzbl (%r15,%rax,1), %ecx          #  396   0x5164c  5      
  subl $0x30, %ecx                    #  397   0x51651  3      
  cmpb $0x9, %cl                      #  398   0x51654  3      
  jbe .L_51960                        #  399   0x51657  6      
  movl %eax, %edx                     #  400   0x5165d  2      
  movl %ebx, %edi                     #  401   0x5165f  2      
  nop                                 #  402   0x51661  1      
  subl %esi, %edx                     #  403   0x51662  2      
  nop                                 #  404   0x51664  1      
  nop                                 #  405   0x51665  1      
  callq .d_make_name                  #  406   0x51666  5      
  movl %eax, %r12d                    #  407   0x5166b  3      
  testq %r12, %r12                    #  408   0x5166e  3      
  je .L_51900                         #  409   0x51671  6      
  nop                                 #  410   0x51677  1      
  nop                                 #  411   0x51678  1      
.L_519c0:                             #        0x51679  0      
  movl %ebx, %ebx                     #  412   0x51679  2      
  movl 0xc(%r15,%rbx,1), %esi         #  413   0x5167b  5      
  movl %esi, %esi                     #  414   0x51680  2      
  cmpb $0x5f, (%r15,%rsi,1)           #  415   0x51682  5      
  jne .L_51900                        #  416   0x51687  6      
  nop                                 #  417   0x5168d  1      
.L_519e0:                             #        0x5168e  0      
  addl $0x1, %esi                     #  418   0x5168e  3      
  movl %ebx, %edi                     #  419   0x51691  2      
  movl %ebx, %ebx                     #  420   0x51693  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  421   0x51695  5      
  nop                                 #  422   0x5169a  1      
  callq .d_type                       #  423   0x5169b  5      
  movl %r12d, %edx                    #  424   0x516a0  3      
  movl %eax, %ecx                     #  425   0x516a3  2      
  movl $0x26, %esi                    #  426   0x516a5  5      
  movl %ebx, %edi                     #  427   0x516aa  2      
  nop                                 #  428   0x516ac  1      
  callq .d_make_comp                  #  429   0x516ad  5      
  movl %eax, %eax                     #  430   0x516b2  2      
  jmpq .L_51740                       #  431   0x516b4  5      
  nop                                 #  432   0x516b9  1      
  nop                                 #  433   0x516ba  1      
  addl $0x1, %edx                     #  434   0x516bb  3      
  movl %ebx, %ebx                     #  435   0x516be  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  436   0x516c0  5      
  movl %edx, %edx                     #  437   0x516c5  2      
  cmpb $0x59, (%r15,%rdx,1)           #  438   0x516c7  5      
  je .L_52120                         #  439   0x516cc  6      
  nop                                 #  440   0x516d2  1      
.L_51a60:                             #        0x516d3  0      
  movl $0x1, %esi                     #  441   0x516d3  5      
  movl %ebx, %edi                     #  442   0x516d8  2      
  nop                                 #  443   0x516da  1      
  nop                                 #  444   0x516db  1      
  callq .d_bare_function_type         #  445   0x516dc  5      
  movl %ebx, %ebx                     #  446   0x516e1  2      
  movl 0xc(%r15,%rbx,1), %edx         #  447   0x516e3  5      
  movl %eax, %eax                     #  448   0x516e8  2      
  movl %edx, %edx                     #  449   0x516ea  2      
  cmpb $0x45, (%r15,%rdx,1)           #  450   0x516ec  5      
  jne .L_51900                        #  451   0x516f1  6      
  addl $0x1, %edx                     #  452   0x516f7  3      
  movl %ebx, %ebx                     #  453   0x516fa  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  454   0x516fc  5      
  jmpq .L_51740                       #  455   0x51701  5      
  nop                                 #  456   0x51706  1      
  nop                                 #  457   0x51707  1      
.L_51ac0:                             #        0x51708  0      
  movl %ebx, %edi                     #  458   0x51708  2      
  nop                                 #  459   0x5170a  1      
  nop                                 #  460   0x5170b  1      
  callq .d_type                       #  461   0x5170c  5      
  movl %eax, %eax                     #  462   0x51711  2      
  testq %rax, %rax                    #  463   0x51713  3      
  movl %r14d, %r14d                   #  464   0x51716  3      
  movl %eax, (%r15,%r14,1)            #  465   0x51719  4      
  je .L_51900                         #  466   0x5171d  6      
  cmpl %r14d, %r13d                   #  467   0x51723  3      
  je .L_51b20                         #  468   0x51726  6      
  movl %eax, %eax                     #  469   0x5172c  2      
  cmpl $0x25, (%r15,%rax,1)           #  470   0x5172e  5      
  xchgw %ax, %ax                      #  471   0x51733  3      
  jne .L_52140                        #  472   0x51736  6      
  nop                                 #  473   0x5173c  1      
  nop                                 #  474   0x5173d  1      
.L_51b20:                             #        0x5173e  0      
  movl 0x8(%rsp), %ecx                #  475   0x5173e  4      
  movl %r12d, %edx                    #  476   0x51742  3      
  movl $0x27, %esi                    #  477   0x51745  5      
  movl %ebx, %edi                     #  478   0x5174a  2      
  nop                                 #  479   0x5174c  1      
  callq .d_make_comp                  #  480   0x5174d  5      
  movl %eax, %eax                     #  481   0x51752  2      
  jmpq .L_51740                       #  482   0x51754  5      
  nop                                 #  483   0x51759  1      
  nop                                 #  484   0x5175a  1      
  movl %ebx, %ebx                     #  485   0x5175b  2      
  movl 0x14(%r15,%rbx,1), %edx        #  486   0x5175d  5      
  movl %ebx, %ebx                     #  487   0x51762  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  488   0x51764  5      
  jge .L_52000                        #  489   0x51769  6      
  leal (%rdx,%rdx,2), %eax            #  490   0x5176f  3      
  addl $0x1, %edx                     #  491   0x51772  3      
  nop                                 #  492   0x51775  1      
  movl %ebx, %ebx                     #  493   0x51776  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  494   0x51778  5      
  shll $0x2, %eax                     #  495   0x5177d  3      
  movl %ebx, %ebx                     #  496   0x51780  2      
  addl 0x10(%r15,%rbx,1), %eax        #  497   0x51782  5      
  testq %rax, %rax                    #  498   0x51787  3      
  je .L_521a0                         #  499   0x5178a  6      
  movl $0x100223d8, %edx              #  500   0x51790  5      
  nop                                 #  501   0x51795  1      
  movl %eax, %eax                     #  502   0x51796  2      
  movl $0x23, (%r15,%rax,1)           #  503   0x51798  8      
  movl %eax, %eax                     #  504   0x517a0  2      
  movl $0x100223d8, 0x4(%r15,%rax,1)  #  505   0x517a2  9      
  movl %edx, %edx                     #  506   0x517ab  2      
  nop                                 #  507   0x517ad  1      
.L_51bc0:                             #        0x517ae  0      
  movl %edx, %edx                     #  508   0x517ae  2      
  movl 0x4(%r15,%rdx,1), %edx         #  509   0x517b0  5      
  movl %ebx, %ebx                     #  510   0x517b5  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  511   0x517b7  5      
  jmpq .L_51220                       #  512   0x517bc  5      
  nop                                 #  513   0x517c1  1      
  movl %ebx, %edi                     #  514   0x517c2  2      
  nop                                 #  515   0x517c4  1      
  nop                                 #  516   0x517c5  1      
  callq .d_type                       #  517   0x517c6  5      
  xorl %ecx, %ecx                     #  518   0x517cb  2      
  movl %eax, %edx                     #  519   0x517cd  2      
  movl $0x3a, %esi                    #  520   0x517cf  5      
  movl %ebx, %edi                     #  521   0x517d4  2      
  nop                                 #  522   0x517d6  1      
  nop                                 #  523   0x517d7  1      
  callq .d_make_comp                  #  524   0x517d8  5      
  movl %eax, %eax                     #  525   0x517dd  2      
  jmpq .L_51220                       #  526   0x517df  5      
  nop                                 #  527   0x517e4  1      
  nop                                 #  528   0x517e5  1      
  movl %ebx, %ebx                     #  529   0x517e6  2      
  movl 0x14(%r15,%rbx,1), %edx        #  530   0x517e8  5      
  movl %ebx, %ebx                     #  531   0x517ed  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  532   0x517ef  5      
  jge .L_52000                        #  533   0x517f4  6      
  leal (%rdx,%rdx,2), %eax            #  534   0x517fa  3      
  addl $0x1, %edx                     #  535   0x517fd  3      
  nop                                 #  536   0x51800  1      
  movl %ebx, %ebx                     #  537   0x51801  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  538   0x51803  5      
  shll $0x2, %eax                     #  539   0x51808  3      
  movl %ebx, %ebx                     #  540   0x5180b  2      
  addl 0x10(%r15,%rbx,1), %eax        #  541   0x5180d  5      
  testq %rax, %rax                    #  542   0x51812  3      
  je .L_521a0                         #  543   0x51815  6      
  movl $0x100223ec, %edx              #  544   0x5181b  5      
  nop                                 #  545   0x51820  1      
  movl %eax, %eax                     #  546   0x51821  2      
  movl $0x23, (%r15,%rax,1)           #  547   0x51823  8      
  movl %eax, %eax                     #  548   0x5182b  2      
  movl $0x100223ec, 0x4(%r15,%rax,1)  #  549   0x5182d  9      
  movl %edx, %edx                     #  550   0x51836  2      
  jmpq .L_51bc0                       #  551   0x51838  5      
  nop                                 #  552   0x5183d  1      
  movl %ebx, %ebx                     #  553   0x5183e  2      
  movl 0x14(%r15,%rbx,1), %edx        #  554   0x51840  5      
  movl %ebx, %ebx                     #  555   0x51845  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  556   0x51847  5      
  jge .L_52000                        #  557   0x5184c  6      
  leal (%rdx,%rdx,2), %eax            #  558   0x51852  3      
  addl $0x1, %edx                     #  559   0x51855  3      
  nop                                 #  560   0x51858  1      
  movl %ebx, %ebx                     #  561   0x51859  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  562   0x5185b  5      
  shll $0x2, %eax                     #  563   0x51860  3      
  movl %ebx, %ebx                     #  564   0x51863  2      
  addl 0x10(%r15,%rbx,1), %eax        #  565   0x51865  5      
  testq %rax, %rax                    #  566   0x5186a  3      
  je .L_521a0                         #  567   0x5186d  6      
  movl $0x100223b0, %edx              #  568   0x51873  5      
  nop                                 #  569   0x51878  1      
  movl %eax, %eax                     #  570   0x51879  2      
  movl $0x23, (%r15,%rax,1)           #  571   0x5187b  8      
  movl %eax, %eax                     #  572   0x51883  2      
  movl $0x100223b0, 0x4(%r15,%rax,1)  #  573   0x51885  9      
  movl %edx, %edx                     #  574   0x5188e  2      
  jmpq .L_51bc0                       #  575   0x51890  5      
  nop                                 #  576   0x51895  1      
  movl %ebx, %ebx                     #  577   0x51896  2      
  movl 0x14(%r15,%rbx,1), %edx        #  578   0x51898  5      
  movl %ebx, %ebx                     #  579   0x5189d  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  580   0x5189f  5      
  jge .L_52000                        #  581   0x518a4  6      
  leal (%rdx,%rdx,2), %eax            #  582   0x518aa  3      
  addl $0x1, %edx                     #  583   0x518ad  3      
  nop                                 #  584   0x518b0  1      
  movl %ebx, %ebx                     #  585   0x518b1  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  586   0x518b3  5      
  shll $0x2, %eax                     #  587   0x518b8  3      
  movl %ebx, %ebx                     #  588   0x518bb  2      
  addl 0x10(%r15,%rbx,1), %eax        #  589   0x518bd  5      
  testq %rax, %rax                    #  590   0x518c2  3      
  je .L_521a0                         #  591   0x518c5  6      
  movl $0x1002239c, %edx              #  592   0x518cb  5      
  nop                                 #  593   0x518d0  1      
  movl %eax, %eax                     #  594   0x518d1  2      
  movl $0x23, (%r15,%rax,1)           #  595   0x518d3  8      
  movl %eax, %eax                     #  596   0x518db  2      
  movl $0x1002239c, 0x4(%r15,%rax,1)  #  597   0x518dd  9      
  movl %edx, %edx                     #  598   0x518e6  2      
  jmpq .L_51bc0                       #  599   0x518e8  5      
  nop                                 #  600   0x518ed  1      
  movl %ebx, %edi                     #  601   0x518ee  2      
  nop                                 #  602   0x518f0  1      
  nop                                 #  603   0x518f1  1      
  callq .d_expression                 #  604   0x518f2  5      
  xorl %ecx, %ecx                     #  605   0x518f7  2      
  movl %eax, %edx                     #  606   0x518f9  2      
  movl $0x39, %esi                    #  607   0x518fb  5      
  movl %ebx, %edi                     #  608   0x51900  2      
  nop                                 #  609   0x51902  1      
  nop                                 #  610   0x51903  1      
  callq .d_make_comp                  #  611   0x51904  5      
  movl %eax, %eax                     #  612   0x51909  2      
  testq %rax, %rax                    #  613   0x5190b  3      
  movl %eax, 0xc(%rsp)                #  614   0x5190e  4      
  je .L_51220                         #  615   0x51912  6      
  movl %ebx, %ebx                     #  616   0x51918  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  617   0x5191a  5      
  movl %ecx, %ecx                     #  618   0x5191f  2      
  movzbl (%r15,%rcx,1), %edx          #  619   0x51921  5      
  testb %dl, %dl                      #  620   0x51926  2      
  nop                                 #  621   0x51928  1      
  je .L_51200                         #  622   0x51929  6      
  addl $0x1, %ecx                     #  623   0x5192f  3      
  cmpb $0x45, %dl                     #  624   0x51932  3      
  movl %ebx, %ebx                     #  625   0x51935  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  626   0x51937  5      
  jne .L_51200                        #  627   0x5193c  6      
  jmpq .L_51220                       #  628   0x51942  5      
  xchgw %ax, %ax                      #  629   0x51947  3      
  movl %ebx, %ebx                     #  630   0x5194a  2      
  movl 0x14(%r15,%rbx,1), %eax        #  631   0x5194c  5      
  xorl %r12d, %r12d                   #  632   0x51951  3      
  movl %ebx, %ebx                     #  633   0x51954  2      
  cmpl 0x18(%r15,%rbx,1), %eax        #  634   0x51956  5      
  jge .L_51e20                        #  635   0x5195b  6      
  leal (%rax,%rax,2), %r12d           #  636   0x51961  4      
  addl $0x1, %eax                     #  637   0x51965  3      
  nop                                 #  638   0x51968  1      
  movl %ebx, %ebx                     #  639   0x51969  2      
  movl %eax, 0x14(%r15,%rbx,1)        #  640   0x5196b  5      
  shll $0x2, %r12d                    #  641   0x51970  4      
  movl %ebx, %ebx                     #  642   0x51974  2      
  addl 0x10(%r15,%rbx,1), %r12d       #  643   0x51976  5      
  nop                                 #  644   0x5197b  1      
.L_51e20:                             #        0x5197c  0      
  movl %ebx, %ebx                     #  645   0x5197c  2      
  movl 0xc(%r15,%rbx,1), %eax         #  646   0x5197e  5      
  movl %r12d, 0xc(%rsp)               #  647   0x51983  5      
  movl %r12d, %r12d                   #  648   0x51988  3      
  movl $0x28, (%r15,%r12,1)           #  649   0x5198b  8      
  movl %eax, %eax                     #  650   0x51993  2      
  movzbl (%r15,%rax,1), %eax          #  651   0x51995  5      
  xchgw %ax, %ax                      #  652   0x5199a  3      
  subl $0x30, %eax                    #  653   0x5199d  3      
  cmpb $0x9, %al                      #  654   0x519a0  2      
  setbe %al                           #  655   0x519a2  3      
  movzbl %al, %eax                    #  656   0x519a5  3      
  testw %ax, %ax                      #  657   0x519a8  3      
  movl %r12d, %r12d                   #  658   0x519ab  3      
  movw %ax, 0x8(%r15,%r12,1)          #  659   0x519ae  6      
  jne .L_520e0                        #  660   0x519b4  6      
  nop                                 #  661   0x519ba  1      
.L_51e60:                             #        0x519bb  0      
  movl %ebx, %edi                     #  662   0x519bb  2      
  nop                                 #  663   0x519bd  1      
  nop                                 #  664   0x519be  1      
  callq .d_type                       #  665   0x519bf  5      
  movl %ebx, %edi                     #  666   0x519c4  2      
  movl %r12d, %r12d                   #  667   0x519c6  3      
  movl %eax, 0x4(%r15,%r12,1)         #  668   0x519c9  5      
  xchgw %ax, %ax                      #  669   0x519ce  3      
  nop                                 #  670   0x519d1  1      
  callq .d_number                     #  671   0x519d2  5      
  movl %ebx, %ebx                     #  672   0x519d7  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  673   0x519d9  5      
  xorl %edx, %edx                     #  674   0x519de  2      
  movl %ecx, %ecx                     #  675   0x519e0  2      
  movzbl (%r15,%rcx,1), %eax          #  676   0x519e2  5      
  testb %al, %al                      #  677   0x519e7  2      
  je .L_51ee0                         #  678   0x519e9  6      
  addl $0x1, %ecx                     #  679   0x519ef  3      
  xorl %edx, %edx                     #  680   0x519f2  2      
  cmpb $0x73, %al                     #  681   0x519f4  2      
  nop                                 #  682   0x519f6  1      
  movl %ebx, %ebx                     #  683   0x519f7  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  684   0x519f9  5      
  sete %dl                            #  685   0x519fe  3      
  nop                                 #  686   0x51a01  1      
  nop                                 #  687   0x51a02  1      
.L_51ee0:                             #        0x51a03  0      
  movl 0xc(%rsp), %eax                #  688   0x51a03  4      
  movl %eax, %eax                     #  689   0x51a07  2      
  movw %dx, 0xa(%r15,%rax,1)          #  690   0x51a09  6      
  jmpq .L_51220                       #  691   0x51a0f  5      
  nop                                 #  692   0x51a14  1      
  movl %ebx, %ebx                     #  693   0x51a15  2      
  movl 0x14(%r15,%rbx,1), %edx        #  694   0x51a17  5      
  movl %ebx, %ebx                     #  695   0x51a1c  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  696   0x51a1e  5      
  jge .L_52000                        #  697   0x51a23  6      
  leal (%rdx,%rdx,2), %eax            #  698   0x51a29  3      
  addl $0x1, %edx                     #  699   0x51a2c  3      
  nop                                 #  700   0x51a2f  1      
  movl %ebx, %ebx                     #  701   0x51a30  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  702   0x51a32  5      
  shll $0x2, %eax                     #  703   0x51a37  3      
  movl %ebx, %ebx                     #  704   0x51a3a  2      
  addl 0x10(%r15,%rbx,1), %eax        #  705   0x51a3c  5      
  testq %rax, %rax                    #  706   0x51a41  3      
  je .L_521a0                         #  707   0x51a44  6      
  movl $0x100223c4, %edx              #  708   0x51a4a  5      
  nop                                 #  709   0x51a4f  1      
  movl %eax, %eax                     #  710   0x51a50  2      
  movl $0x23, (%r15,%rax,1)           #  711   0x51a52  8      
  movl %eax, %eax                     #  712   0x51a5a  2      
  movl $0x100223c4, 0x4(%r15,%rax,1)  #  713   0x51a5c  9      
  movl %edx, %edx                     #  714   0x51a65  2      
  jmpq .L_51bc0                       #  715   0x51a67  5      
  nop                                 #  716   0x51a6c  1      
  movl %ebx, %ebx                     #  717   0x51a6d  2      
  movl 0x14(%r15,%rbx,1), %edx        #  718   0x51a6f  5      
  movl %ebx, %ebx                     #  719   0x51a74  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  720   0x51a76  5      
  jge .L_52000                        #  721   0x51a7b  6      
  leal (%rdx,%rdx,2), %eax            #  722   0x51a81  3      
  addl $0x1, %edx                     #  723   0x51a84  3      
  nop                                 #  724   0x51a87  1      
  movl %ebx, %ebx                     #  725   0x51a88  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  726   0x51a8a  5      
  shll $0x2, %eax                     #  727   0x51a8f  3      
  movl %ebx, %ebx                     #  728   0x51a92  2      
  addl 0x10(%r15,%rbx,1), %eax        #  729   0x51a94  5      
  testq %rax, %rax                    #  730   0x51a99  3      
  je .L_521a0                         #  731   0x51a9c  6      
  movl $0x10022388, %edx              #  732   0x51aa2  5      
  nop                                 #  733   0x51aa7  1      
  movl %eax, %eax                     #  734   0x51aa8  2      
  movl $0x23, (%r15,%rax,1)           #  735   0x51aaa  8      
  movl %eax, %eax                     #  736   0x51ab2  2      
  movl $0x10022388, 0x4(%r15,%rax,1)  #  737   0x51ab4  9      
  movl %edx, %edx                     #  738   0x51abd  2      
  jmpq .L_51bc0                       #  739   0x51abf  5      
  nop                                 #  740   0x51ac4  1      
.L_51fc0:                             #        0x51ac5  0      
  leal (%rcx,%rcx,2), %eax            #  741   0x51ac5  3      
  addl $0x1, %ecx                     #  742   0x51ac8  3      
  movl %ebx, %ebx                     #  743   0x51acb  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  744   0x51acd  5      
  shll $0x2, %eax                     #  745   0x51ad2  3      
  movl %ebx, %ebx                     #  746   0x51ad5  2      
  addl 0x10(%r15,%rbx,1), %eax        #  747   0x51ad7  5      
  testq %rax, %rax                    #  748   0x51adc  3      
  je .L_521c0                         #  749   0x51adf  6      
  movl %eax, %eax                     #  750   0x51ae5  2      
  movl $0x23, (%r15,%rax,1)           #  751   0x51ae7  8      
  movl %eax, %eax                     #  752   0x51aef  2      
  movl %edx, 0x4(%r15,%rax,1)         #  753   0x51af1  5      
  jmpq .L_51820                       #  754   0x51af6  5      
  nop                                 #  755   0x51afb  1      
.L_52000:                             #        0x51afc  0      
  movl 0x4(%r15), %edx                #  756   0x51afc  4      
  xorl %eax, %eax                     #  757   0x51b00  2      
  jmpq .L_51bc0                       #  758   0x51b02  5      
  nop                                 #  759   0x51b07  1      
  nop                                 #  760   0x51b08  1      
.L_52020:                             #        0x51b09  0      
  movl %ebx, %edi                     #  761   0x51b09  2      
  nop                                 #  762   0x51b0b  1      
  nop                                 #  763   0x51b0c  1      
  callq .d_name                       #  764   0x51b0d  5      
  movl %eax, %eax                     #  765   0x51b12  2      
  testq %rax, %rax                    #  766   0x51b14  3      
  je .L_51220                         #  767   0x51b17  6      
  movl %eax, %eax                     #  768   0x51b1d  2      
  cmpl $0x16, (%r15,%rax,1)           #  769   0x51b1f  5      
  movl %eax, 0xc(%rsp)                #  770   0x51b24  4      
  jne .L_512e0                        #  771   0x51b28  6      
  nop                                 #  772   0x51b2e  1      
  jmpq .L_51220                       #  773   0x51b2f  5      
  nop                                 #  774   0x51b34  1      
  nop                                 #  775   0x51b35  1      
.L_52080:                             #        0x51b36  0      
  movl %ebx, %edi                     #  776   0x51b36  2      
  nop                                 #  777   0x51b38  1      
  nop                                 #  778   0x51b39  1      
  callq .d_expression                 #  779   0x51b3a  5      
  movl %eax, %r12d                    #  780   0x51b3f  3      
  testq %r12, %r12                    #  781   0x51b42  3      
  jne .L_519c0                        #  782   0x51b45  6      
  xorl %eax, %eax                     #  783   0x51b4b  2      
  jmpq .L_51740                       #  784   0x51b4d  5      
  nop                                 #  785   0x51b52  1      
.L_520c0:                             #        0x51b53  0      
  movl %edx, %edx                     #  786   0x51b53  2      
  movl 0x4(%r15,%rdx,1), %edx         #  787   0x51b55  5      
  xorl %eax, %eax                     #  788   0x51b5a  2      
  jmpq .L_51820                       #  789   0x51b5c  5      
  nop                                 #  790   0x51b61  1      
  nop                                 #  791   0x51b62  1      
.L_520e0:                             #        0x51b63  0      
  movl %ebx, %edi                     #  792   0x51b63  2      
  nop                                 #  793   0x51b65  1      
  nop                                 #  794   0x51b66  1      
  callq .d_number                     #  795   0x51b67  5      
  movl 0xc(%rsp), %r12d               #  796   0x51b6c  5      
  jmpq .L_51e60                       #  797   0x51b71  5      
  nop                                 #  798   0x51b76  1      
  nop                                 #  799   0x51b77  1      
.L_52120:                             #        0x51b78  0      
  addl $0x1, %edx                     #  800   0x51b78  3      
  movl %ebx, %ebx                     #  801   0x51b7b  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  802   0x51b7d  5      
  jmpq .L_51a60                       #  803   0x51b82  5      
  xchgw %ax, %ax                      #  804   0x51b87  3      
  nop                                 #  805   0x51b8a  1      
.L_52140:                             #        0x51b8b  0      
  movl 0x8(%rsp), %eax                #  806   0x51b8b  4      
  testq %rax, %rax                    #  807   0x51b8f  3      
  je .L_51900                         #  808   0x51b92  6      
  movl %ebx, %ebx                     #  809   0x51b98  2      
  movl 0x20(%r15,%rbx,1), %edx        #  810   0x51b9a  5      
  movl %ebx, %ebx                     #  811   0x51b9f  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  812   0x51ba1  5      
  nop                                 #  813   0x51ba6  1      
  jge .L_51900                        #  814   0x51ba7  6      
  shll $0x2, %edx                     #  815   0x51bad  3      
  movl %ebx, %ebx                     #  816   0x51bb0  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  817   0x51bb2  5      
  movl %ebx, %ebx                     #  818   0x51bb7  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  819   0x51bb9  6      
  movl %edx, %edx                     #  820   0x51bbf  2      
  movl %eax, (%r15,%rdx,1)            #  821   0x51bc1  4      
  xchgw %ax, %ax                      #  822   0x51bc5  3      
  jmpq .L_51b20                       #  823   0x51bc8  5      
  nop                                 #  824   0x51bcd  1      
  nop                                 #  825   0x51bce  1      
.L_521a0:                             #        0x51bcf  0      
  movl %eax, %eax                     #  826   0x51bcf  2      
  movl 0x4(%r15,%rax,1), %edx         #  827   0x51bd1  5      
  jmpq .L_51bc0                       #  828   0x51bd6  5      
  nop                                 #  829   0x51bdb  1      
  nop                                 #  830   0x51bdc  1      
.L_521c0:                             #        0x51bdd  0      
  movl %eax, %eax                     #  831   0x51bdd  2      
  movl 0x4(%r15,%rax,1), %edx         #  832   0x51bdf  5      
  jmpq .L_51820                       #  833   0x51be4  5      
  nop                                 #  834   0x51be9  1      
  nop                                 #  835   0x51bea  1      
                                                               
.size d_type, .-d_type

