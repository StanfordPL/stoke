  .text
  .globl d_type
  .type d_type, @function

#! file-offset 0x51180
#! rip-offset  0x51180
#! capacity    4160 bytes

# Text                                #  Line  RIP      Bytes  
.d_type:                              #        0x51180  0      
  movq %rbx, -0x20(%rsp)              #  1     0x51180  5      
  movl %edi, %ebx                     #  2     0x51185  2      
  movq %r12, -0x18(%rsp)              #  3     0x51187  5      
  movq %r13, -0x10(%rsp)              #  4     0x5118c  5      
  movq %r14, -0x8(%rsp)               #  5     0x51191  5      
  subl $0x38, %esp                    #  6     0x51196  3      
  addq %r15, %rsp                     #  7     0x51199  3      
  nop                                 #  8     0x5119c  1      
  movl %ebx, %ebx                     #  9     0x5119d  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x5119f  5      
  movl %edx, %edx                     #  11    0x511a4  2      
  movzbl (%r15,%rdx,1), %eax          #  12    0x511a6  5      
  cmpb $0x56, %al                     #  13    0x511ab  2      
  je .L_51260                         #  14    0x511ad  6      
  cmpb $0x72, %al                     #  15    0x511b3  2      
  je .L_51260                         #  16    0x511b5  6      
  cmpb $0x4b, %al                     #  17    0x511bb  2      
  je .L_51260                         #  18    0x511bd  6      
  leal -0x30(%rax), %ecx              #  19    0x511c3  3      
  cmpb $0x4a, %cl                     #  20    0x511c6  3      
  jbe .L_51240                        #  21    0x511c9  6      
  nop                                 #  22    0x511cf  1      
  nop                                 #  23    0x511d0  1      
.L_511e0:                             #        0x511d1  0      
  xorl %eax, %eax                     #  24    0x511d1  2      
  nop                                 #  25    0x511d3  1      
  nop                                 #  26    0x511d4  1      
.L_51200:                             #        0x511d5  0      
  movq 0x18(%rsp), %rbx               #  27    0x511d5  5      
  movq 0x20(%rsp), %r12               #  28    0x511da  5      
  movq 0x28(%rsp), %r13               #  29    0x511df  5      
  movq 0x30(%rsp), %r14               #  30    0x511e4  5      
  addl $0x38, %esp                    #  31    0x511e9  3      
  addq %r15, %rsp                     #  32    0x511ec  3      
  popq %r11                           #  33    0x511ef  3      
  nop                                 #  34    0x511f2  1      
  andl $0xffffffe0, %r11d             #  35    0x511f3  7      
  addq %r15, %r11                     #  36    0x511fa  3      
  jmpq %r11                           #  37    0x511fd  3      
  nop                                 #  38    0x51200  1      
  nop                                 #  39    0x51201  1      
.L_51240:                             #        0x51202  0      
  movzbl %cl, %ecx                    #  40    0x51202  3      
  movl %ecx, %ecx                     #  41    0x51205  2      
  movq 0x100218d0(%r15,%rcx,8), %rcx  #  42    0x51207  8      
  andl $0xffffffe0, %ecx              #  43    0x5120f  6      
  addq %r15, %rcx                     #  44    0x51215  3      
  jmpq %rcx                           #  45    0x51218  2      
  nop                                 #  46    0x5121a  1      
.L_51260:                             #        0x5121b  0      
  leal 0xc(%rsp), %esi                #  47    0x5121b  4      
  xorl %edx, %edx                     #  48    0x5121f  2      
  movl %ebx, %edi                     #  49    0x51221  2      
  nop                                 #  50    0x51223  1      
  nop                                 #  51    0x51224  1      
  callq .d_cv_qualifiers              #  52    0x51225  5      
  movl %eax, %r12d                    #  53    0x5122a  3      
  testq %r12, %r12                    #  54    0x5122d  3      
  je .L_511e0                         #  55    0x51230  6      
  movl %ebx, %edi                     #  56    0x51236  2      
  nop                                 #  57    0x51238  1      
  callq .d_type                       #  58    0x51239  5      
  movl %eax, %eax                     #  59    0x5123e  2      
  testq %rax, %rax                    #  60    0x51240  3      
  movl %r12d, %r12d                   #  61    0x51243  3      
  movl %eax, (%r15,%r12,1)            #  62    0x51246  4      
  je .L_511e0                         #  63    0x5124a  6      
  movl 0xc(%rsp), %eax                #  64    0x51250  4      
  testq %rax, %rax                    #  65    0x51254  3      
  je .L_511e0                         #  66    0x51257  6      
  nop                                 #  67    0x5125d  1      
.L_512c0:                             #        0x5125e  0      
  movl %ebx, %ebx                     #  68    0x5125e  2      
  movl 0x20(%r15,%rbx,1), %edx        #  69    0x51260  5      
  movl %ebx, %ebx                     #  70    0x51265  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  71    0x51267  5      
  jge .L_511e0                        #  72    0x5126c  6      
  shll $0x2, %edx                     #  73    0x51272  3      
  movl %ebx, %ebx                     #  74    0x51275  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  75    0x51277  5      
  xchgw %ax, %ax                      #  76    0x5127c  3      
  movl %ebx, %ebx                     #  77    0x5127f  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  78    0x51281  6      
  movl %edx, %edx                     #  79    0x51287  2      
  movl %eax, (%r15,%rdx,1)            #  80    0x51289  4      
  movl 0xc(%rsp), %eax                #  81    0x5128d  4      
  jmpq .L_51200                       #  82    0x51291  5      
  nop                                 #  83    0x51296  1      
  movl %ebx, %edi                     #  84    0x51297  2      
  nop                                 #  85    0x51299  1      
  nop                                 #  86    0x5129a  1      
  callq .d_name                       #  87    0x5129b  5      
  movl %eax, %eax                     #  88    0x512a0  2      
  movl %eax, 0xc(%rsp)                #  89    0x512a2  4      
  nop                                 #  90    0x512a6  1      
  nop                                 #  91    0x512a7  1      
.L_51340:                             #        0x512a8  0      
  testq %rax, %rax                    #  92    0x512a8  3      
  jne .L_512c0                        #  93    0x512ab  6      
  jmpq .L_51200                       #  94    0x512b1  5      
  nop                                 #  95    0x512b6  1      
  nop                                 #  96    0x512b7  1      
  addl $0x1, %edx                     #  97    0x512b8  3      
  movl %ebx, %edi                     #  98    0x512bb  2      
  movl %ebx, %ebx                     #  99    0x512bd  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  100   0x512bf  5      
  nop                                 #  101   0x512c4  1      
  callq .d_type                       #  102   0x512c5  5      
  xorl %ecx, %ecx                     #  103   0x512ca  2      
  movl %eax, %edx                     #  104   0x512cc  2      
  movl $0x21, %esi                    #  105   0x512ce  5      
  movl %ebx, %edi                     #  106   0x512d3  2      
  nop                                 #  107   0x512d5  1      
  nop                                 #  108   0x512d6  1      
  callq .d_make_comp                  #  109   0x512d7  5      
  movl %eax, %eax                     #  110   0x512dc  2      
  movl %eax, 0xc(%rsp)                #  111   0x512de  4      
  jmpq .L_51340                       #  112   0x512e2  5      
  nop                                 #  113   0x512e7  1      
  nop                                 #  114   0x512e8  1      
  addl $0x1, %edx                     #  115   0x512e9  3      
  movl %ebx, %ebx                     #  116   0x512ec  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  117   0x512ee  5      
  movl %edx, %edx                     #  118   0x512f3  2      
  movzbl (%r15,%rdx,1), %eax          #  119   0x512f5  5      
  testb %al, %al                      #  120   0x512fa  2      
  je .L_511e0                         #  121   0x512fc  6      
  subl $0x46, %eax                    #  122   0x51302  3      
  addl $0x1, %edx                     #  123   0x51305  3      
  nop                                 #  124   0x51308  1      
  cmpb $0x2e, %al                     #  125   0x51309  2      
  movl %ebx, %ebx                     #  126   0x5130b  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  127   0x5130d  5      
  ja .L_511e0                         #  128   0x51312  6      
  movzbl %al, %eax                    #  129   0x51318  3      
  movl %eax, %eax                     #  130   0x5131b  2      
  movq 0x10021b28(%r15,%rax,8), %rax  #  131   0x5131d  8      
  nop                                 #  132   0x51325  1      
  andl $0xffffffe0, %eax              #  133   0x51326  5      
  addq %r15, %rax                     #  134   0x5132b  3      
  jmpq %rax                           #  135   0x5132e  2      
  nop                                 #  136   0x51330  1      
  nop                                 #  137   0x51331  1      
  addl $0x1, %edx                     #  138   0x51332  3      
  movl %ebx, %edi                     #  139   0x51335  2      
  movl %ebx, %ebx                     #  140   0x51337  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  141   0x51339  5      
  nop                                 #  142   0x5133e  1      
  callq .d_type                       #  143   0x5133f  5      
  xorl %ecx, %ecx                     #  144   0x51344  2      
  movl %eax, %edx                     #  145   0x51346  2      
  movl $0x22, %esi                    #  146   0x51348  5      
  movl %ebx, %edi                     #  147   0x5134d  2      
  nop                                 #  148   0x5134f  1      
  nop                                 #  149   0x51350  1      
  callq .d_make_comp                  #  150   0x51351  5      
  movl %eax, %eax                     #  151   0x51356  2      
  movl %eax, 0xc(%rsp)                #  152   0x51358  4      
  jmpq .L_51340                       #  153   0x5135c  5      
  nop                                 #  154   0x51361  1      
  nop                                 #  155   0x51362  1      
  addl $0x1, %edx                     #  156   0x51363  3      
  movl %ebx, %edi                     #  157   0x51366  2      
  movl %ebx, %ebx                     #  158   0x51368  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  159   0x5136a  5      
  nop                                 #  160   0x5136f  1      
  callq .d_type                       #  161   0x51370  5      
  xorl %ecx, %ecx                     #  162   0x51375  2      
  movl %eax, %edx                     #  163   0x51377  2      
  movl $0x20, %esi                    #  164   0x51379  5      
  movl %ebx, %edi                     #  165   0x5137e  2      
  nop                                 #  166   0x51380  1      
  nop                                 #  167   0x51381  1      
  callq .d_make_comp                  #  168   0x51382  5      
  movl %eax, %eax                     #  169   0x51387  2      
  movl %eax, 0xc(%rsp)                #  170   0x51389  4      
  jmpq .L_51340                       #  171   0x5138d  5      
  nop                                 #  172   0x51392  1      
  nop                                 #  173   0x51393  1      
  addl $0x1, %edx                     #  174   0x51394  3      
  movl %ebx, %edi                     #  175   0x51397  2      
  movl %ebx, %ebx                     #  176   0x51399  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  177   0x5139b  5      
  nop                                 #  178   0x513a0  1      
  callq .d_type                       #  179   0x513a1  5      
  xorl %ecx, %ecx                     #  180   0x513a6  2      
  movl %eax, %edx                     #  181   0x513a8  2      
  movl $0x1e, %esi                    #  182   0x513aa  5      
  movl %ebx, %edi                     #  183   0x513af  2      
  nop                                 #  184   0x513b1  1      
  nop                                 #  185   0x513b2  1      
  callq .d_make_comp                  #  186   0x513b3  5      
  movl %eax, %eax                     #  187   0x513b8  2      
  movl %eax, 0xc(%rsp)                #  188   0x513ba  4      
  jmpq .L_51340                       #  189   0x513be  5      
  nop                                 #  190   0x513c3  1      
  nop                                 #  191   0x513c4  1      
  addl $0x1, %edx                     #  192   0x513c5  3      
  movl %ebx, %edi                     #  193   0x513c8  2      
  movl %ebx, %ebx                     #  194   0x513ca  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  195   0x513cc  5      
  nop                                 #  196   0x513d1  1      
  callq .d_type                       #  197   0x513d2  5      
  xorl %ecx, %ecx                     #  198   0x513d7  2      
  movl %eax, %edx                     #  199   0x513d9  2      
  movl $0x1f, %esi                    #  200   0x513db  5      
  movl %ebx, %edi                     #  201   0x513e0  2      
  nop                                 #  202   0x513e2  1      
  nop                                 #  203   0x513e3  1      
  callq .d_make_comp                  #  204   0x513e4  5      
  movl %eax, %eax                     #  205   0x513e9  2      
  movl %eax, 0xc(%rsp)                #  206   0x513eb  4      
  jmpq .L_51340                       #  207   0x513ef  5      
  nop                                 #  208   0x513f4  1      
  nop                                 #  209   0x513f5  1      
  movl %edx, %edx                     #  210   0x513f6  2      
  movzbl 0x1(%r15,%rdx,1), %eax       #  211   0x513f8  6      
  leal -0x30(%rax), %edx              #  212   0x513fe  3      
  cmpb $0x9, %dl                      #  213   0x51401  3      
  jbe .L_515c0                        #  214   0x51404  6      
  cmpb $0x5f, %al                     #  215   0x5140a  2      
  je .L_515c0                         #  216   0x5140c  6      
  subl $0x41, %eax                    #  217   0x51412  3      
  cmpb $0x19, %al                     #  218   0x51415  2      
  ja .L_52000                         #  219   0x51417  6      
  nop                                 #  220   0x5141d  1      
.L_515c0:                             #        0x5141e  0      
  xorl %esi, %esi                     #  221   0x5141e  2      
  movl %ebx, %edi                     #  222   0x51420  2      
  nop                                 #  223   0x51422  1      
  nop                                 #  224   0x51423  1      
  callq .d_substitution               #  225   0x51424  5      
  movl %ebx, %ebx                     #  226   0x51429  2      
  movl 0xc(%r15,%rbx,1), %edx         #  227   0x5142b  5      
  movl %eax, %eax                     #  228   0x51430  2      
  movl %eax, 0xc(%rsp)                #  229   0x51432  4      
  movl %edx, %edx                     #  230   0x51436  2      
  cmpb $0x49, (%r15,%rdx,1)           #  231   0x51438  5      
  jne .L_51200                        #  232   0x5143d  6      
  movl %ebx, %edi                     #  233   0x51443  2      
  nop                                 #  234   0x51445  1      
  nop                                 #  235   0x51446  1      
  nop                                 #  236   0x51447  1      
  callq .d_template_args              #  237   0x51448  5      
  movl 0xc(%rsp), %edx                #  238   0x5144d  4      
  movl %eax, %ecx                     #  239   0x51451  2      
  movl $0x4, %esi                     #  240   0x51453  5      
  movl %ebx, %edi                     #  241   0x51458  2      
  nop                                 #  242   0x5145a  1      
  callq .d_make_comp                  #  243   0x5145b  5      
  movl %eax, %eax                     #  244   0x51460  2      
  movl %eax, 0xc(%rsp)                #  245   0x51462  4      
  jmpq .L_51340                       #  246   0x51466  5      
  nop                                 #  247   0x5146b  1      
  nop                                 #  248   0x5146c  1      
  movl %ebx, %edi                     #  249   0x5146d  2      
  nop                                 #  250   0x5146f  1      
  nop                                 #  251   0x51470  1      
  callq .d_template_param             #  252   0x51471  5      
  movl %ebx, %ebx                     #  253   0x51476  2      
  movl 0xc(%r15,%rbx,1), %edx         #  254   0x51478  5      
  movl %eax, %eax                     #  255   0x5147d  2      
  movl %eax, 0xc(%rsp)                #  256   0x5147f  4      
  movl %edx, %edx                     #  257   0x51483  2      
  cmpb $0x49, (%r15,%rdx,1)           #  258   0x51485  5      
  jne .L_51340                        #  259   0x5148a  6      
  testq %rax, %rax                    #  260   0x51490  3      
  nop                                 #  261   0x51493  1      
  je .L_51200                         #  262   0x51494  6      
  movl %ebx, %ebx                     #  263   0x5149a  2      
  movl 0x20(%r15,%rbx,1), %edx        #  264   0x5149c  5      
  movl %ebx, %ebx                     #  265   0x514a1  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  266   0x514a3  5      
  jge .L_511e0                        #  267   0x514a8  6      
  shll $0x2, %edx                     #  268   0x514ae  3      
  nop                                 #  269   0x514b1  1      
  movl %ebx, %ebx                     #  270   0x514b2  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  271   0x514b4  5      
  movl %ebx, %ebx                     #  272   0x514b9  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  273   0x514bb  6      
  movl %ebx, %edi                     #  274   0x514c1  2      
  movl %edx, %edx                     #  275   0x514c3  2      
  movl %eax, (%r15,%rdx,1)            #  276   0x514c5  4      
  nop                                 #  277   0x514c9  1      
  callq .d_template_args              #  278   0x514ca  5      
  movl 0xc(%rsp), %edx                #  279   0x514cf  4      
  movl %eax, %ecx                     #  280   0x514d3  2      
  movl $0x4, %esi                     #  281   0x514d5  5      
  movl %ebx, %edi                     #  282   0x514da  2      
  nop                                 #  283   0x514dc  1      
  callq .d_make_comp                  #  284   0x514dd  5      
  movl %eax, %eax                     #  285   0x514e2  2      
  nop                                 #  286   0x514e4  1      
  nop                                 #  287   0x514e5  1      
.L_51720:                             #        0x514e6  0      
  movl %eax, 0xc(%rsp)                #  288   0x514e6  4      
  jmpq .L_51340                       #  289   0x514ea  5      
  nop                                 #  290   0x514ef  1      
  nop                                 #  291   0x514f0  1      
  addl $0x1, %edx                     #  292   0x514f1  3      
  movl %ebx, %edi                     #  293   0x514f4  2      
  movl %ebx, %ebx                     #  294   0x514f6  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  295   0x514f8  5      
  nop                                 #  296   0x514fd  1      
  callq .d_source_name                #  297   0x514fe  5      
  movl %ebx, %edi                     #  298   0x51503  2      
  movl %eax, %r12d                    #  299   0x51505  3      
  movl %r12d, 0xc(%rsp)               #  300   0x51508  5      
  xchgw %ax, %ax                      #  301   0x5150d  3      
  nop                                 #  302   0x51510  1      
  callq .d_type                       #  303   0x51511  5      
  movl %r12d, %ecx                    #  304   0x51516  3      
  movl %eax, %edx                     #  305   0x51519  2      
  movl $0x1d, %esi                    #  306   0x5151b  5      
  movl %ebx, %edi                     #  307   0x51520  2      
  nop                                 #  308   0x51522  1      
  callq .d_make_comp                  #  309   0x51523  5      
  movl %eax, %eax                     #  310   0x51528  2      
  jmpq .L_51720                       #  311   0x5152a  5      
  nop                                 #  312   0x5152f  1      
  nop                                 #  313   0x51530  1      
  movsbl %al, %eax                    #  314   0x51531  3      
  leal (%rax,%rax,4), %eax            #  315   0x51534  3      
  leal 0x100219ec(,%rax,4), %edx      #  316   0x51537  7      
  testq %rdx, %rdx                    #  317   0x5153e  3      
  je .L_520a0                         #  318   0x51541  6      
  movl %ebx, %ebx                     #  319   0x51547  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  320   0x51549  5      
  nop                                 #  321   0x5154e  1      
  movl %ebx, %ebx                     #  322   0x5154f  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  323   0x51551  5      
  jl .L_51fa0                         #  324   0x51556  6      
  movl 0x4(%r15), %edx                #  325   0x5155c  4      
  xorl %eax, %eax                     #  326   0x51560  2      
  nop                                 #  327   0x51562  1      
.L_51800:                             #        0x51563  0      
  movl %edx, %edx                     #  328   0x51563  2      
  movl 0x4(%r15,%rdx,1), %edx         #  329   0x51565  5      
  movl %ebx, %ebx                     #  330   0x5156a  2      
  addl $0x1, 0xc(%r15,%rbx,1)         #  331   0x5156c  6      
  movl %ebx, %ebx                     #  332   0x51572  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  333   0x51574  5      
  jmpq .L_51200                       #  334   0x51579  5      
  nop                                 #  335   0x5157e  1      
  addl $0x1, %edx                     #  336   0x5157f  3      
  movl %ebx, %edi                     #  337   0x51582  2      
  movl %ebx, %ebx                     #  338   0x51584  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  339   0x51586  5      
  nop                                 #  340   0x5158b  1      
  callq .d_source_name                #  341   0x5158c  5      
  xorl %ecx, %ecx                     #  342   0x51591  2      
  movl %eax, %edx                     #  343   0x51593  2      
  movl $0x24, %esi                    #  344   0x51595  5      
  movl %ebx, %edi                     #  345   0x5159a  2      
  nop                                 #  346   0x5159c  1      
  nop                                 #  347   0x5159d  1      
  callq .d_make_comp                  #  348   0x5159e  5      
  movl %eax, %eax                     #  349   0x515a3  2      
  movl %eax, 0xc(%rsp)                #  350   0x515a5  4      
  jmpq .L_51340                       #  351   0x515a9  5      
  nop                                 #  352   0x515ae  1      
  nop                                 #  353   0x515af  1      
  addl $0x1, %edx                     #  354   0x515b0  3      
  leal 0x8(%rsp), %r13d               #  355   0x515b3  5      
  movl %ebx, %edi                     #  356   0x515b8  2      
  movl %ebx, %ebx                     #  357   0x515ba  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  358   0x515bc  5      
  nop                                 #  359   0x515c1  1      
  callq .d_type                       #  360   0x515c2  5      
  movl $0x1, %edx                     #  361   0x515c7  5      
  movl %r13d, %esi                    #  362   0x515cc  3      
  movl %ebx, %edi                     #  363   0x515cf  2      
  movl %eax, %r12d                    #  364   0x515d1  3      
  nop                                 #  365   0x515d4  1      
  callq .d_cv_qualifiers              #  366   0x515d5  5      
  movl %eax, %r14d                    #  367   0x515da  3      
  testq %r14, %r14                    #  368   0x515dd  3      
  jne .L_51aa0                        #  369   0x515e0  6      
  nop                                 #  370   0x515e6  1      
  nop                                 #  371   0x515e7  1      
.L_518e0:                             #        0x515e8  0      
  xorl %eax, %eax                     #  372   0x515e8  2      
  jmpq .L_51720                       #  373   0x515ea  5      
  nop                                 #  374   0x515ef  1      
  nop                                 #  375   0x515f0  1      
  leal 0x1(%rdx), %esi                #  376   0x515f1  3      
  xorl %r12d, %r12d                   #  377   0x515f4  3      
  movl %ebx, %ebx                     #  378   0x515f7  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  379   0x515f9  5      
  movl %esi, %esi                     #  380   0x515fe  2      
  movzbl (%r15,%rsi,1), %eax          #  381   0x51600  5      
  cmpb $0x5f, %al                     #  382   0x51605  2      
  je .L_519c0                         #  383   0x51607  6      
  subl $0x30, %eax                    #  384   0x5160d  3      
  nop                                 #  385   0x51610  1      
  cmpb $0x9, %al                      #  386   0x51611  2      
  ja .L_52060                         #  387   0x51613  6      
  addl $0x2, %edx                     #  388   0x51619  3      
  nop                                 #  389   0x5161c  1      
  nop                                 #  390   0x5161d  1      
.L_51940:                             #        0x5161e  0      
  movl %edx, %eax                     #  391   0x5161e  2      
  addl $0x1, %edx                     #  392   0x51620  3      
  movl %ebx, %ebx                     #  393   0x51623  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  394   0x51625  5      
  movl %eax, %eax                     #  395   0x5162a  2      
  movzbl (%r15,%rax,1), %ecx          #  396   0x5162c  5      
  subl $0x30, %ecx                    #  397   0x51631  3      
  cmpb $0x9, %cl                      #  398   0x51634  3      
  jbe .L_51940                        #  399   0x51637  6      
  movl %eax, %edx                     #  400   0x5163d  2      
  movl %ebx, %edi                     #  401   0x5163f  2      
  nop                                 #  402   0x51641  1      
  subl %esi, %edx                     #  403   0x51642  2      
  nop                                 #  404   0x51644  1      
  nop                                 #  405   0x51645  1      
  callq .d_make_name                  #  406   0x51646  5      
  movl %eax, %r12d                    #  407   0x5164b  3      
  testq %r12, %r12                    #  408   0x5164e  3      
  je .L_518e0                         #  409   0x51651  6      
  nop                                 #  410   0x51657  1      
  nop                                 #  411   0x51658  1      
.L_519a0:                             #        0x51659  0      
  movl %ebx, %ebx                     #  412   0x51659  2      
  movl 0xc(%r15,%rbx,1), %esi         #  413   0x5165b  5      
  movl %esi, %esi                     #  414   0x51660  2      
  cmpb $0x5f, (%r15,%rsi,1)           #  415   0x51662  5      
  jne .L_518e0                        #  416   0x51667  6      
  nop                                 #  417   0x5166d  1      
.L_519c0:                             #        0x5166e  0      
  addl $0x1, %esi                     #  418   0x5166e  3      
  movl %ebx, %edi                     #  419   0x51671  2      
  movl %ebx, %ebx                     #  420   0x51673  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  421   0x51675  5      
  nop                                 #  422   0x5167a  1      
  callq .d_type                       #  423   0x5167b  5      
  movl %r12d, %edx                    #  424   0x51680  3      
  movl %eax, %ecx                     #  425   0x51683  2      
  movl $0x26, %esi                    #  426   0x51685  5      
  movl %ebx, %edi                     #  427   0x5168a  2      
  nop                                 #  428   0x5168c  1      
  callq .d_make_comp                  #  429   0x5168d  5      
  movl %eax, %eax                     #  430   0x51692  2      
  jmpq .L_51720                       #  431   0x51694  5      
  nop                                 #  432   0x51699  1      
  nop                                 #  433   0x5169a  1      
  addl $0x1, %edx                     #  434   0x5169b  3      
  movl %ebx, %ebx                     #  435   0x5169e  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  436   0x516a0  5      
  movl %edx, %edx                     #  437   0x516a5  2      
  cmpb $0x59, (%r15,%rdx,1)           #  438   0x516a7  5      
  je .L_52100                         #  439   0x516ac  6      
  nop                                 #  440   0x516b2  1      
.L_51a40:                             #        0x516b3  0      
  movl $0x1, %esi                     #  441   0x516b3  5      
  movl %ebx, %edi                     #  442   0x516b8  2      
  nop                                 #  443   0x516ba  1      
  nop                                 #  444   0x516bb  1      
  callq .d_bare_function_type         #  445   0x516bc  5      
  movl %ebx, %ebx                     #  446   0x516c1  2      
  movl 0xc(%r15,%rbx,1), %edx         #  447   0x516c3  5      
  movl %eax, %eax                     #  448   0x516c8  2      
  movl %edx, %edx                     #  449   0x516ca  2      
  cmpb $0x45, (%r15,%rdx,1)           #  450   0x516cc  5      
  jne .L_518e0                        #  451   0x516d1  6      
  addl $0x1, %edx                     #  452   0x516d7  3      
  movl %ebx, %ebx                     #  453   0x516da  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  454   0x516dc  5      
  jmpq .L_51720                       #  455   0x516e1  5      
  nop                                 #  456   0x516e6  1      
  nop                                 #  457   0x516e7  1      
.L_51aa0:                             #        0x516e8  0      
  movl %ebx, %edi                     #  458   0x516e8  2      
  nop                                 #  459   0x516ea  1      
  nop                                 #  460   0x516eb  1      
  callq .d_type                       #  461   0x516ec  5      
  movl %eax, %eax                     #  462   0x516f1  2      
  testq %rax, %rax                    #  463   0x516f3  3      
  movl %r14d, %r14d                   #  464   0x516f6  3      
  movl %eax, (%r15,%r14,1)            #  465   0x516f9  4      
  je .L_518e0                         #  466   0x516fd  6      
  cmpl %r14d, %r13d                   #  467   0x51703  3      
  je .L_51b00                         #  468   0x51706  6      
  movl %eax, %eax                     #  469   0x5170c  2      
  cmpl $0x25, (%r15,%rax,1)           #  470   0x5170e  5      
  xchgw %ax, %ax                      #  471   0x51713  3      
  jne .L_52120                        #  472   0x51716  6      
  nop                                 #  473   0x5171c  1      
  nop                                 #  474   0x5171d  1      
.L_51b00:                             #        0x5171e  0      
  movl 0x8(%rsp), %ecx                #  475   0x5171e  4      
  movl %r12d, %edx                    #  476   0x51722  3      
  movl $0x27, %esi                    #  477   0x51725  5      
  movl %ebx, %edi                     #  478   0x5172a  2      
  nop                                 #  479   0x5172c  1      
  callq .d_make_comp                  #  480   0x5172d  5      
  movl %eax, %eax                     #  481   0x51732  2      
  jmpq .L_51720                       #  482   0x51734  5      
  nop                                 #  483   0x51739  1      
  nop                                 #  484   0x5173a  1      
  movl %ebx, %ebx                     #  485   0x5173b  2      
  movl 0x14(%r15,%rbx,1), %edx        #  486   0x5173d  5      
  movl %ebx, %ebx                     #  487   0x51742  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  488   0x51744  5      
  jge .L_51fe0                        #  489   0x51749  6      
  leal (%rdx,%rdx,2), %eax            #  490   0x5174f  3      
  addl $0x1, %edx                     #  491   0x51752  3      
  nop                                 #  492   0x51755  1      
  movl %ebx, %ebx                     #  493   0x51756  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  494   0x51758  5      
  shll $0x2, %eax                     #  495   0x5175d  3      
  movl %ebx, %ebx                     #  496   0x51760  2      
  addl 0x10(%r15,%rbx,1), %eax        #  497   0x51762  5      
  testq %rax, %rax                    #  498   0x51767  3      
  je .L_52180                         #  499   0x5176a  6      
  movl $0x100223d8, %edx              #  500   0x51770  5      
  nop                                 #  501   0x51775  1      
  movl %eax, %eax                     #  502   0x51776  2      
  movl $0x23, (%r15,%rax,1)           #  503   0x51778  8      
  movl %eax, %eax                     #  504   0x51780  2      
  movl $0x100223d8, 0x4(%r15,%rax,1)  #  505   0x51782  9      
  movl %edx, %edx                     #  506   0x5178b  2      
  nop                                 #  507   0x5178d  1      
.L_51ba0:                             #        0x5178e  0      
  movl %edx, %edx                     #  508   0x5178e  2      
  movl 0x4(%r15,%rdx,1), %edx         #  509   0x51790  5      
  movl %ebx, %ebx                     #  510   0x51795  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  511   0x51797  5      
  jmpq .L_51200                       #  512   0x5179c  5      
  nop                                 #  513   0x517a1  1      
  movl %ebx, %edi                     #  514   0x517a2  2      
  nop                                 #  515   0x517a4  1      
  nop                                 #  516   0x517a5  1      
  callq .d_type                       #  517   0x517a6  5      
  xorl %ecx, %ecx                     #  518   0x517ab  2      
  movl %eax, %edx                     #  519   0x517ad  2      
  movl $0x3a, %esi                    #  520   0x517af  5      
  movl %ebx, %edi                     #  521   0x517b4  2      
  nop                                 #  522   0x517b6  1      
  nop                                 #  523   0x517b7  1      
  callq .d_make_comp                  #  524   0x517b8  5      
  movl %eax, %eax                     #  525   0x517bd  2      
  jmpq .L_51200                       #  526   0x517bf  5      
  nop                                 #  527   0x517c4  1      
  nop                                 #  528   0x517c5  1      
  movl %ebx, %ebx                     #  529   0x517c6  2      
  movl 0x14(%r15,%rbx,1), %edx        #  530   0x517c8  5      
  movl %ebx, %ebx                     #  531   0x517cd  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  532   0x517cf  5      
  jge .L_51fe0                        #  533   0x517d4  6      
  leal (%rdx,%rdx,2), %eax            #  534   0x517da  3      
  addl $0x1, %edx                     #  535   0x517dd  3      
  nop                                 #  536   0x517e0  1      
  movl %ebx, %ebx                     #  537   0x517e1  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  538   0x517e3  5      
  shll $0x2, %eax                     #  539   0x517e8  3      
  movl %ebx, %ebx                     #  540   0x517eb  2      
  addl 0x10(%r15,%rbx,1), %eax        #  541   0x517ed  5      
  testq %rax, %rax                    #  542   0x517f2  3      
  je .L_52180                         #  543   0x517f5  6      
  movl $0x100223ec, %edx              #  544   0x517fb  5      
  nop                                 #  545   0x51800  1      
  movl %eax, %eax                     #  546   0x51801  2      
  movl $0x23, (%r15,%rax,1)           #  547   0x51803  8      
  movl %eax, %eax                     #  548   0x5180b  2      
  movl $0x100223ec, 0x4(%r15,%rax,1)  #  549   0x5180d  9      
  movl %edx, %edx                     #  550   0x51816  2      
  jmpq .L_51ba0                       #  551   0x51818  5      
  nop                                 #  552   0x5181d  1      
  movl %ebx, %ebx                     #  553   0x5181e  2      
  movl 0x14(%r15,%rbx,1), %edx        #  554   0x51820  5      
  movl %ebx, %ebx                     #  555   0x51825  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  556   0x51827  5      
  jge .L_51fe0                        #  557   0x5182c  6      
  leal (%rdx,%rdx,2), %eax            #  558   0x51832  3      
  addl $0x1, %edx                     #  559   0x51835  3      
  nop                                 #  560   0x51838  1      
  movl %ebx, %ebx                     #  561   0x51839  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  562   0x5183b  5      
  shll $0x2, %eax                     #  563   0x51840  3      
  movl %ebx, %ebx                     #  564   0x51843  2      
  addl 0x10(%r15,%rbx,1), %eax        #  565   0x51845  5      
  testq %rax, %rax                    #  566   0x5184a  3      
  je .L_52180                         #  567   0x5184d  6      
  movl $0x100223b0, %edx              #  568   0x51853  5      
  nop                                 #  569   0x51858  1      
  movl %eax, %eax                     #  570   0x51859  2      
  movl $0x23, (%r15,%rax,1)           #  571   0x5185b  8      
  movl %eax, %eax                     #  572   0x51863  2      
  movl $0x100223b0, 0x4(%r15,%rax,1)  #  573   0x51865  9      
  movl %edx, %edx                     #  574   0x5186e  2      
  jmpq .L_51ba0                       #  575   0x51870  5      
  nop                                 #  576   0x51875  1      
  movl %ebx, %ebx                     #  577   0x51876  2      
  movl 0x14(%r15,%rbx,1), %edx        #  578   0x51878  5      
  movl %ebx, %ebx                     #  579   0x5187d  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  580   0x5187f  5      
  jge .L_51fe0                        #  581   0x51884  6      
  leal (%rdx,%rdx,2), %eax            #  582   0x5188a  3      
  addl $0x1, %edx                     #  583   0x5188d  3      
  nop                                 #  584   0x51890  1      
  movl %ebx, %ebx                     #  585   0x51891  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  586   0x51893  5      
  shll $0x2, %eax                     #  587   0x51898  3      
  movl %ebx, %ebx                     #  588   0x5189b  2      
  addl 0x10(%r15,%rbx,1), %eax        #  589   0x5189d  5      
  testq %rax, %rax                    #  590   0x518a2  3      
  je .L_52180                         #  591   0x518a5  6      
  movl $0x1002239c, %edx              #  592   0x518ab  5      
  nop                                 #  593   0x518b0  1      
  movl %eax, %eax                     #  594   0x518b1  2      
  movl $0x23, (%r15,%rax,1)           #  595   0x518b3  8      
  movl %eax, %eax                     #  596   0x518bb  2      
  movl $0x1002239c, 0x4(%r15,%rax,1)  #  597   0x518bd  9      
  movl %edx, %edx                     #  598   0x518c6  2      
  jmpq .L_51ba0                       #  599   0x518c8  5      
  nop                                 #  600   0x518cd  1      
  movl %ebx, %edi                     #  601   0x518ce  2      
  nop                                 #  602   0x518d0  1      
  nop                                 #  603   0x518d1  1      
  callq .d_expression                 #  604   0x518d2  5      
  xorl %ecx, %ecx                     #  605   0x518d7  2      
  movl %eax, %edx                     #  606   0x518d9  2      
  movl $0x39, %esi                    #  607   0x518db  5      
  movl %ebx, %edi                     #  608   0x518e0  2      
  nop                                 #  609   0x518e2  1      
  nop                                 #  610   0x518e3  1      
  callq .d_make_comp                  #  611   0x518e4  5      
  movl %eax, %eax                     #  612   0x518e9  2      
  testq %rax, %rax                    #  613   0x518eb  3      
  movl %eax, 0xc(%rsp)                #  614   0x518ee  4      
  je .L_51200                         #  615   0x518f2  6      
  movl %ebx, %ebx                     #  616   0x518f8  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  617   0x518fa  5      
  movl %ecx, %ecx                     #  618   0x518ff  2      
  movzbl (%r15,%rcx,1), %edx          #  619   0x51901  5      
  testb %dl, %dl                      #  620   0x51906  2      
  nop                                 #  621   0x51908  1      
  je .L_511e0                         #  622   0x51909  6      
  addl $0x1, %ecx                     #  623   0x5190f  3      
  cmpb $0x45, %dl                     #  624   0x51912  3      
  movl %ebx, %ebx                     #  625   0x51915  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  626   0x51917  5      
  jne .L_511e0                        #  627   0x5191c  6      
  jmpq .L_51200                       #  628   0x51922  5      
  xchgw %ax, %ax                      #  629   0x51927  3      
  movl %ebx, %ebx                     #  630   0x5192a  2      
  movl 0x14(%r15,%rbx,1), %eax        #  631   0x5192c  5      
  xorl %r12d, %r12d                   #  632   0x51931  3      
  movl %ebx, %ebx                     #  633   0x51934  2      
  cmpl 0x18(%r15,%rbx,1), %eax        #  634   0x51936  5      
  jge .L_51e00                        #  635   0x5193b  6      
  leal (%rax,%rax,2), %r12d           #  636   0x51941  4      
  addl $0x1, %eax                     #  637   0x51945  3      
  nop                                 #  638   0x51948  1      
  movl %ebx, %ebx                     #  639   0x51949  2      
  movl %eax, 0x14(%r15,%rbx,1)        #  640   0x5194b  5      
  shll $0x2, %r12d                    #  641   0x51950  4      
  movl %ebx, %ebx                     #  642   0x51954  2      
  addl 0x10(%r15,%rbx,1), %r12d       #  643   0x51956  5      
  nop                                 #  644   0x5195b  1      
.L_51e00:                             #        0x5195c  0      
  movl %ebx, %ebx                     #  645   0x5195c  2      
  movl 0xc(%r15,%rbx,1), %eax         #  646   0x5195e  5      
  movl %r12d, 0xc(%rsp)               #  647   0x51963  5      
  movl %r12d, %r12d                   #  648   0x51968  3      
  movl $0x28, (%r15,%r12,1)           #  649   0x5196b  8      
  movl %eax, %eax                     #  650   0x51973  2      
  movzbl (%r15,%rax,1), %eax          #  651   0x51975  5      
  xchgw %ax, %ax                      #  652   0x5197a  3      
  subl $0x30, %eax                    #  653   0x5197d  3      
  cmpb $0x9, %al                      #  654   0x51980  2      
  setbe %al                           #  655   0x51982  3      
  movzbl %al, %eax                    #  656   0x51985  3      
  testw %ax, %ax                      #  657   0x51988  3      
  movl %r12d, %r12d                   #  658   0x5198b  3      
  movw %ax, 0x8(%r15,%r12,1)          #  659   0x5198e  6      
  jne .L_520c0                        #  660   0x51994  6      
  nop                                 #  661   0x5199a  1      
.L_51e40:                             #        0x5199b  0      
  movl %ebx, %edi                     #  662   0x5199b  2      
  nop                                 #  663   0x5199d  1      
  nop                                 #  664   0x5199e  1      
  callq .d_type                       #  665   0x5199f  5      
  movl %ebx, %edi                     #  666   0x519a4  2      
  movl %r12d, %r12d                   #  667   0x519a6  3      
  movl %eax, 0x4(%r15,%r12,1)         #  668   0x519a9  5      
  xchgw %ax, %ax                      #  669   0x519ae  3      
  nop                                 #  670   0x519b1  1      
  callq .d_number                     #  671   0x519b2  5      
  movl %ebx, %ebx                     #  672   0x519b7  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  673   0x519b9  5      
  xorl %edx, %edx                     #  674   0x519be  2      
  movl %ecx, %ecx                     #  675   0x519c0  2      
  movzbl (%r15,%rcx,1), %eax          #  676   0x519c2  5      
  testb %al, %al                      #  677   0x519c7  2      
  je .L_51ec0                         #  678   0x519c9  6      
  addl $0x1, %ecx                     #  679   0x519cf  3      
  xorl %edx, %edx                     #  680   0x519d2  2      
  cmpb $0x73, %al                     #  681   0x519d4  2      
  nop                                 #  682   0x519d6  1      
  movl %ebx, %ebx                     #  683   0x519d7  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  684   0x519d9  5      
  sete %dl                            #  685   0x519de  3      
  nop                                 #  686   0x519e1  1      
  nop                                 #  687   0x519e2  1      
.L_51ec0:                             #        0x519e3  0      
  movl 0xc(%rsp), %eax                #  688   0x519e3  4      
  movl %eax, %eax                     #  689   0x519e7  2      
  movw %dx, 0xa(%r15,%rax,1)          #  690   0x519e9  6      
  jmpq .L_51200                       #  691   0x519ef  5      
  nop                                 #  692   0x519f4  1      
  movl %ebx, %ebx                     #  693   0x519f5  2      
  movl 0x14(%r15,%rbx,1), %edx        #  694   0x519f7  5      
  movl %ebx, %ebx                     #  695   0x519fc  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  696   0x519fe  5      
  jge .L_51fe0                        #  697   0x51a03  6      
  leal (%rdx,%rdx,2), %eax            #  698   0x51a09  3      
  addl $0x1, %edx                     #  699   0x51a0c  3      
  nop                                 #  700   0x51a0f  1      
  movl %ebx, %ebx                     #  701   0x51a10  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  702   0x51a12  5      
  shll $0x2, %eax                     #  703   0x51a17  3      
  movl %ebx, %ebx                     #  704   0x51a1a  2      
  addl 0x10(%r15,%rbx,1), %eax        #  705   0x51a1c  5      
  testq %rax, %rax                    #  706   0x51a21  3      
  je .L_52180                         #  707   0x51a24  6      
  movl $0x100223c4, %edx              #  708   0x51a2a  5      
  nop                                 #  709   0x51a2f  1      
  movl %eax, %eax                     #  710   0x51a30  2      
  movl $0x23, (%r15,%rax,1)           #  711   0x51a32  8      
  movl %eax, %eax                     #  712   0x51a3a  2      
  movl $0x100223c4, 0x4(%r15,%rax,1)  #  713   0x51a3c  9      
  movl %edx, %edx                     #  714   0x51a45  2      
  jmpq .L_51ba0                       #  715   0x51a47  5      
  nop                                 #  716   0x51a4c  1      
  movl %ebx, %ebx                     #  717   0x51a4d  2      
  movl 0x14(%r15,%rbx,1), %edx        #  718   0x51a4f  5      
  movl %ebx, %ebx                     #  719   0x51a54  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  720   0x51a56  5      
  jge .L_51fe0                        #  721   0x51a5b  6      
  leal (%rdx,%rdx,2), %eax            #  722   0x51a61  3      
  addl $0x1, %edx                     #  723   0x51a64  3      
  nop                                 #  724   0x51a67  1      
  movl %ebx, %ebx                     #  725   0x51a68  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  726   0x51a6a  5      
  shll $0x2, %eax                     #  727   0x51a6f  3      
  movl %ebx, %ebx                     #  728   0x51a72  2      
  addl 0x10(%r15,%rbx,1), %eax        #  729   0x51a74  5      
  testq %rax, %rax                    #  730   0x51a79  3      
  je .L_52180                         #  731   0x51a7c  6      
  movl $0x10022388, %edx              #  732   0x51a82  5      
  nop                                 #  733   0x51a87  1      
  movl %eax, %eax                     #  734   0x51a88  2      
  movl $0x23, (%r15,%rax,1)           #  735   0x51a8a  8      
  movl %eax, %eax                     #  736   0x51a92  2      
  movl $0x10022388, 0x4(%r15,%rax,1)  #  737   0x51a94  9      
  movl %edx, %edx                     #  738   0x51a9d  2      
  jmpq .L_51ba0                       #  739   0x51a9f  5      
  nop                                 #  740   0x51aa4  1      
.L_51fa0:                             #        0x51aa5  0      
  leal (%rcx,%rcx,2), %eax            #  741   0x51aa5  3      
  addl $0x1, %ecx                     #  742   0x51aa8  3      
  movl %ebx, %ebx                     #  743   0x51aab  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  744   0x51aad  5      
  shll $0x2, %eax                     #  745   0x51ab2  3      
  movl %ebx, %ebx                     #  746   0x51ab5  2      
  addl 0x10(%r15,%rbx,1), %eax        #  747   0x51ab7  5      
  testq %rax, %rax                    #  748   0x51abc  3      
  je .L_521a0                         #  749   0x51abf  6      
  movl %eax, %eax                     #  750   0x51ac5  2      
  movl $0x23, (%r15,%rax,1)           #  751   0x51ac7  8      
  movl %eax, %eax                     #  752   0x51acf  2      
  movl %edx, 0x4(%r15,%rax,1)         #  753   0x51ad1  5      
  jmpq .L_51800                       #  754   0x51ad6  5      
  nop                                 #  755   0x51adb  1      
.L_51fe0:                             #        0x51adc  0      
  movl 0x4(%r15), %edx                #  756   0x51adc  4      
  xorl %eax, %eax                     #  757   0x51ae0  2      
  jmpq .L_51ba0                       #  758   0x51ae2  5      
  nop                                 #  759   0x51ae7  1      
  nop                                 #  760   0x51ae8  1      
.L_52000:                             #        0x51ae9  0      
  movl %ebx, %edi                     #  761   0x51ae9  2      
  nop                                 #  762   0x51aeb  1      
  nop                                 #  763   0x51aec  1      
  callq .d_name                       #  764   0x51aed  5      
  movl %eax, %eax                     #  765   0x51af2  2      
  testq %rax, %rax                    #  766   0x51af4  3      
  je .L_51200                         #  767   0x51af7  6      
  movl %eax, %eax                     #  768   0x51afd  2      
  cmpl $0x16, (%r15,%rax,1)           #  769   0x51aff  5      
  movl %eax, 0xc(%rsp)                #  770   0x51b04  4      
  jne .L_512c0                        #  771   0x51b08  6      
  nop                                 #  772   0x51b0e  1      
  jmpq .L_51200                       #  773   0x51b0f  5      
  nop                                 #  774   0x51b14  1      
  nop                                 #  775   0x51b15  1      
.L_52060:                             #        0x51b16  0      
  movl %ebx, %edi                     #  776   0x51b16  2      
  nop                                 #  777   0x51b18  1      
  nop                                 #  778   0x51b19  1      
  callq .d_expression                 #  779   0x51b1a  5      
  movl %eax, %r12d                    #  780   0x51b1f  3      
  testq %r12, %r12                    #  781   0x51b22  3      
  jne .L_519a0                        #  782   0x51b25  6      
  xorl %eax, %eax                     #  783   0x51b2b  2      
  jmpq .L_51720                       #  784   0x51b2d  5      
  nop                                 #  785   0x51b32  1      
.L_520a0:                             #        0x51b33  0      
  movl %edx, %edx                     #  786   0x51b33  2      
  movl 0x4(%r15,%rdx,1), %edx         #  787   0x51b35  5      
  xorl %eax, %eax                     #  788   0x51b3a  2      
  jmpq .L_51800                       #  789   0x51b3c  5      
  nop                                 #  790   0x51b41  1      
  nop                                 #  791   0x51b42  1      
.L_520c0:                             #        0x51b43  0      
  movl %ebx, %edi                     #  792   0x51b43  2      
  nop                                 #  793   0x51b45  1      
  nop                                 #  794   0x51b46  1      
  callq .d_number                     #  795   0x51b47  5      
  movl 0xc(%rsp), %r12d               #  796   0x51b4c  5      
  jmpq .L_51e40                       #  797   0x51b51  5      
  nop                                 #  798   0x51b56  1      
  nop                                 #  799   0x51b57  1      
.L_52100:                             #        0x51b58  0      
  addl $0x1, %edx                     #  800   0x51b58  3      
  movl %ebx, %ebx                     #  801   0x51b5b  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  802   0x51b5d  5      
  jmpq .L_51a40                       #  803   0x51b62  5      
  xchgw %ax, %ax                      #  804   0x51b67  3      
  nop                                 #  805   0x51b6a  1      
.L_52120:                             #        0x51b6b  0      
  movl 0x8(%rsp), %eax                #  806   0x51b6b  4      
  testq %rax, %rax                    #  807   0x51b6f  3      
  je .L_518e0                         #  808   0x51b72  6      
  movl %ebx, %ebx                     #  809   0x51b78  2      
  movl 0x20(%r15,%rbx,1), %edx        #  810   0x51b7a  5      
  movl %ebx, %ebx                     #  811   0x51b7f  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  812   0x51b81  5      
  nop                                 #  813   0x51b86  1      
  jge .L_518e0                        #  814   0x51b87  6      
  shll $0x2, %edx                     #  815   0x51b8d  3      
  movl %ebx, %ebx                     #  816   0x51b90  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  817   0x51b92  5      
  movl %ebx, %ebx                     #  818   0x51b97  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  819   0x51b99  6      
  movl %edx, %edx                     #  820   0x51b9f  2      
  movl %eax, (%r15,%rdx,1)            #  821   0x51ba1  4      
  xchgw %ax, %ax                      #  822   0x51ba5  3      
  jmpq .L_51b00                       #  823   0x51ba8  5      
  nop                                 #  824   0x51bad  1      
  nop                                 #  825   0x51bae  1      
.L_52180:                             #        0x51baf  0      
  movl %eax, %eax                     #  826   0x51baf  2      
  movl 0x4(%r15,%rax,1), %edx         #  827   0x51bb1  5      
  jmpq .L_51ba0                       #  828   0x51bb6  5      
  nop                                 #  829   0x51bbb  1      
  nop                                 #  830   0x51bbc  1      
.L_521a0:                             #        0x51bbd  0      
  movl %eax, %eax                     #  831   0x51bbd  2      
  movl 0x4(%r15,%rax,1), %edx         #  832   0x51bbf  5      
  jmpq .L_51800                       #  833   0x51bc4  5      
  nop                                 #  834   0x51bc9  1      
  nop                                 #  835   0x51bca  1      
                                                               
.size d_type, .-d_type

