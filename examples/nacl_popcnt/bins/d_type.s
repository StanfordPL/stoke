  .text
  .globl d_type
  .type d_type, @function

#! file-offset 0x51220
#! rip-offset  0x51220
#! capacity    4160 bytes

# Text                                #  Line  RIP      Bytes  
.d_type:                              #        0x51220  0      
  movq %rbx, -0x20(%rsp)              #  1     0x51220  5      
  movl %edi, %ebx                     #  2     0x51225  2      
  movq %r12, -0x18(%rsp)              #  3     0x51227  5      
  movq %r13, -0x10(%rsp)              #  4     0x5122c  5      
  movq %r14, -0x8(%rsp)               #  5     0x51231  5      
  subl $0x38, %esp                    #  6     0x51236  3      
  addq %r15, %rsp                     #  7     0x51239  3      
  nop                                 #  8     0x5123c  1      
  movl %ebx, %ebx                     #  9     0x5123d  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x5123f  5      
  movl %edx, %edx                     #  11    0x51244  2      
  movzbl (%r15,%rdx,1), %eax          #  12    0x51246  5      
  cmpb $0x56, %al                     #  13    0x5124b  2      
  je .L_51300                         #  14    0x5124d  6      
  cmpb $0x72, %al                     #  15    0x51253  2      
  je .L_51300                         #  16    0x51255  6      
  cmpb $0x4b, %al                     #  17    0x5125b  2      
  je .L_51300                         #  18    0x5125d  6      
  leal -0x30(%rax), %ecx              #  19    0x51263  3      
  cmpb $0x4a, %cl                     #  20    0x51266  3      
  jbe .L_512e0                        #  21    0x51269  6      
  nop                                 #  22    0x5126f  1      
  nop                                 #  23    0x51270  1      
.L_51280:                             #        0x51271  0      
  xorl %eax, %eax                     #  24    0x51271  2      
  nop                                 #  25    0x51273  1      
  nop                                 #  26    0x51274  1      
.L_512a0:                             #        0x51275  0      
  movq 0x18(%rsp), %rbx               #  27    0x51275  5      
  movq 0x20(%rsp), %r12               #  28    0x5127a  5      
  movq 0x28(%rsp), %r13               #  29    0x5127f  5      
  movq 0x30(%rsp), %r14               #  30    0x51284  5      
  addl $0x38, %esp                    #  31    0x51289  3      
  addq %r15, %rsp                     #  32    0x5128c  3      
  popq %r11                           #  33    0x5128f  3      
  nop                                 #  34    0x51292  1      
  andl $0xffffffe0, %r11d             #  35    0x51293  7      
  addq %r15, %r11                     #  36    0x5129a  3      
  jmpq %r11                           #  37    0x5129d  3      
  nop                                 #  38    0x512a0  1      
  nop                                 #  39    0x512a1  1      
.L_512e0:                             #        0x512a2  0      
  movzbl %cl, %ecx                    #  40    0x512a2  3      
  movl %ecx, %ecx                     #  41    0x512a5  2      
  movq 0x100218d0(%r15,%rcx,8), %rcx  #  42    0x512a7  8      
  andl $0xffffffe0, %ecx              #  43    0x512af  6      
  addq %r15, %rcx                     #  44    0x512b5  3      
  jmpq %rcx                           #  45    0x512b8  2      
  nop                                 #  46    0x512ba  1      
.L_51300:                             #        0x512bb  0      
  leal 0xc(%rsp), %esi                #  47    0x512bb  4      
  xorl %edx, %edx                     #  48    0x512bf  2      
  movl %ebx, %edi                     #  49    0x512c1  2      
  nop                                 #  50    0x512c3  1      
  nop                                 #  51    0x512c4  1      
  callq .d_cv_qualifiers              #  52    0x512c5  5      
  movl %eax, %r12d                    #  53    0x512ca  3      
  testq %r12, %r12                    #  54    0x512cd  3      
  je .L_51280                         #  55    0x512d0  6      
  movl %ebx, %edi                     #  56    0x512d6  2      
  nop                                 #  57    0x512d8  1      
  callq .d_type                       #  58    0x512d9  5      
  movl %eax, %eax                     #  59    0x512de  2      
  testq %rax, %rax                    #  60    0x512e0  3      
  movl %r12d, %r12d                   #  61    0x512e3  3      
  movl %eax, (%r15,%r12,1)            #  62    0x512e6  4      
  je .L_51280                         #  63    0x512ea  6      
  movl 0xc(%rsp), %eax                #  64    0x512f0  4      
  testq %rax, %rax                    #  65    0x512f4  3      
  je .L_51280                         #  66    0x512f7  6      
  nop                                 #  67    0x512fd  1      
.L_51360:                             #        0x512fe  0      
  movl %ebx, %ebx                     #  68    0x512fe  2      
  movl 0x20(%r15,%rbx,1), %edx        #  69    0x51300  5      
  movl %ebx, %ebx                     #  70    0x51305  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  71    0x51307  5      
  jge .L_51280                        #  72    0x5130c  6      
  shll $0x2, %edx                     #  73    0x51312  3      
  movl %ebx, %ebx                     #  74    0x51315  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  75    0x51317  5      
  xchgw %ax, %ax                      #  76    0x5131c  3      
  movl %ebx, %ebx                     #  77    0x5131f  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  78    0x51321  6      
  movl %edx, %edx                     #  79    0x51327  2      
  movl %eax, (%r15,%rdx,1)            #  80    0x51329  4      
  movl 0xc(%rsp), %eax                #  81    0x5132d  4      
  jmpq .L_512a0                       #  82    0x51331  5      
  nop                                 #  83    0x51336  1      
  movl %ebx, %edi                     #  84    0x51337  2      
  nop                                 #  85    0x51339  1      
  nop                                 #  86    0x5133a  1      
  callq .d_name                       #  87    0x5133b  5      
  movl %eax, %eax                     #  88    0x51340  2      
  movl %eax, 0xc(%rsp)                #  89    0x51342  4      
  nop                                 #  90    0x51346  1      
  nop                                 #  91    0x51347  1      
.L_513e0:                             #        0x51348  0      
  testq %rax, %rax                    #  92    0x51348  3      
  jne .L_51360                        #  93    0x5134b  6      
  jmpq .L_512a0                       #  94    0x51351  5      
  nop                                 #  95    0x51356  1      
  nop                                 #  96    0x51357  1      
  addl $0x1, %edx                     #  97    0x51358  3      
  movl %ebx, %edi                     #  98    0x5135b  2      
  movl %ebx, %ebx                     #  99    0x5135d  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  100   0x5135f  5      
  nop                                 #  101   0x51364  1      
  callq .d_type                       #  102   0x51365  5      
  xorl %ecx, %ecx                     #  103   0x5136a  2      
  movl %eax, %edx                     #  104   0x5136c  2      
  movl $0x21, %esi                    #  105   0x5136e  5      
  movl %ebx, %edi                     #  106   0x51373  2      
  nop                                 #  107   0x51375  1      
  nop                                 #  108   0x51376  1      
  callq .d_make_comp                  #  109   0x51377  5      
  movl %eax, %eax                     #  110   0x5137c  2      
  movl %eax, 0xc(%rsp)                #  111   0x5137e  4      
  jmpq .L_513e0                       #  112   0x51382  5      
  nop                                 #  113   0x51387  1      
  nop                                 #  114   0x51388  1      
  addl $0x1, %edx                     #  115   0x51389  3      
  movl %ebx, %ebx                     #  116   0x5138c  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  117   0x5138e  5      
  movl %edx, %edx                     #  118   0x51393  2      
  movzbl (%r15,%rdx,1), %eax          #  119   0x51395  5      
  testb %al, %al                      #  120   0x5139a  2      
  je .L_51280                         #  121   0x5139c  6      
  subl $0x46, %eax                    #  122   0x513a2  3      
  addl $0x1, %edx                     #  123   0x513a5  3      
  nop                                 #  124   0x513a8  1      
  cmpb $0x2e, %al                     #  125   0x513a9  2      
  movl %ebx, %ebx                     #  126   0x513ab  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  127   0x513ad  5      
  ja .L_51280                         #  128   0x513b2  6      
  movzbl %al, %eax                    #  129   0x513b8  3      
  movl %eax, %eax                     #  130   0x513bb  2      
  movq 0x10021b28(%r15,%rax,8), %rax  #  131   0x513bd  8      
  nop                                 #  132   0x513c5  1      
  andl $0xffffffe0, %eax              #  133   0x513c6  5      
  addq %r15, %rax                     #  134   0x513cb  3      
  jmpq %rax                           #  135   0x513ce  2      
  nop                                 #  136   0x513d0  1      
  nop                                 #  137   0x513d1  1      
  addl $0x1, %edx                     #  138   0x513d2  3      
  movl %ebx, %edi                     #  139   0x513d5  2      
  movl %ebx, %ebx                     #  140   0x513d7  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  141   0x513d9  5      
  nop                                 #  142   0x513de  1      
  callq .d_type                       #  143   0x513df  5      
  xorl %ecx, %ecx                     #  144   0x513e4  2      
  movl %eax, %edx                     #  145   0x513e6  2      
  movl $0x22, %esi                    #  146   0x513e8  5      
  movl %ebx, %edi                     #  147   0x513ed  2      
  nop                                 #  148   0x513ef  1      
  nop                                 #  149   0x513f0  1      
  callq .d_make_comp                  #  150   0x513f1  5      
  movl %eax, %eax                     #  151   0x513f6  2      
  movl %eax, 0xc(%rsp)                #  152   0x513f8  4      
  jmpq .L_513e0                       #  153   0x513fc  5      
  nop                                 #  154   0x51401  1      
  nop                                 #  155   0x51402  1      
  addl $0x1, %edx                     #  156   0x51403  3      
  movl %ebx, %edi                     #  157   0x51406  2      
  movl %ebx, %ebx                     #  158   0x51408  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  159   0x5140a  5      
  nop                                 #  160   0x5140f  1      
  callq .d_type                       #  161   0x51410  5      
  xorl %ecx, %ecx                     #  162   0x51415  2      
  movl %eax, %edx                     #  163   0x51417  2      
  movl $0x20, %esi                    #  164   0x51419  5      
  movl %ebx, %edi                     #  165   0x5141e  2      
  nop                                 #  166   0x51420  1      
  nop                                 #  167   0x51421  1      
  callq .d_make_comp                  #  168   0x51422  5      
  movl %eax, %eax                     #  169   0x51427  2      
  movl %eax, 0xc(%rsp)                #  170   0x51429  4      
  jmpq .L_513e0                       #  171   0x5142d  5      
  nop                                 #  172   0x51432  1      
  nop                                 #  173   0x51433  1      
  addl $0x1, %edx                     #  174   0x51434  3      
  movl %ebx, %edi                     #  175   0x51437  2      
  movl %ebx, %ebx                     #  176   0x51439  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  177   0x5143b  5      
  nop                                 #  178   0x51440  1      
  callq .d_type                       #  179   0x51441  5      
  xorl %ecx, %ecx                     #  180   0x51446  2      
  movl %eax, %edx                     #  181   0x51448  2      
  movl $0x1e, %esi                    #  182   0x5144a  5      
  movl %ebx, %edi                     #  183   0x5144f  2      
  nop                                 #  184   0x51451  1      
  nop                                 #  185   0x51452  1      
  callq .d_make_comp                  #  186   0x51453  5      
  movl %eax, %eax                     #  187   0x51458  2      
  movl %eax, 0xc(%rsp)                #  188   0x5145a  4      
  jmpq .L_513e0                       #  189   0x5145e  5      
  nop                                 #  190   0x51463  1      
  nop                                 #  191   0x51464  1      
  addl $0x1, %edx                     #  192   0x51465  3      
  movl %ebx, %edi                     #  193   0x51468  2      
  movl %ebx, %ebx                     #  194   0x5146a  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  195   0x5146c  5      
  nop                                 #  196   0x51471  1      
  callq .d_type                       #  197   0x51472  5      
  xorl %ecx, %ecx                     #  198   0x51477  2      
  movl %eax, %edx                     #  199   0x51479  2      
  movl $0x1f, %esi                    #  200   0x5147b  5      
  movl %ebx, %edi                     #  201   0x51480  2      
  nop                                 #  202   0x51482  1      
  nop                                 #  203   0x51483  1      
  callq .d_make_comp                  #  204   0x51484  5      
  movl %eax, %eax                     #  205   0x51489  2      
  movl %eax, 0xc(%rsp)                #  206   0x5148b  4      
  jmpq .L_513e0                       #  207   0x5148f  5      
  nop                                 #  208   0x51494  1      
  nop                                 #  209   0x51495  1      
  movl %edx, %edx                     #  210   0x51496  2      
  movzbl 0x1(%r15,%rdx,1), %eax       #  211   0x51498  6      
  leal -0x30(%rax), %edx              #  212   0x5149e  3      
  cmpb $0x9, %dl                      #  213   0x514a1  3      
  jbe .L_51660                        #  214   0x514a4  6      
  cmpb $0x5f, %al                     #  215   0x514aa  2      
  je .L_51660                         #  216   0x514ac  6      
  subl $0x41, %eax                    #  217   0x514b2  3      
  cmpb $0x19, %al                     #  218   0x514b5  2      
  ja .L_520a0                         #  219   0x514b7  6      
  nop                                 #  220   0x514bd  1      
.L_51660:                             #        0x514be  0      
  xorl %esi, %esi                     #  221   0x514be  2      
  movl %ebx, %edi                     #  222   0x514c0  2      
  nop                                 #  223   0x514c2  1      
  nop                                 #  224   0x514c3  1      
  callq .d_substitution               #  225   0x514c4  5      
  movl %ebx, %ebx                     #  226   0x514c9  2      
  movl 0xc(%r15,%rbx,1), %edx         #  227   0x514cb  5      
  movl %eax, %eax                     #  228   0x514d0  2      
  movl %eax, 0xc(%rsp)                #  229   0x514d2  4      
  movl %edx, %edx                     #  230   0x514d6  2      
  cmpb $0x49, (%r15,%rdx,1)           #  231   0x514d8  5      
  jne .L_512a0                        #  232   0x514dd  6      
  movl %ebx, %edi                     #  233   0x514e3  2      
  nop                                 #  234   0x514e5  1      
  nop                                 #  235   0x514e6  1      
  nop                                 #  236   0x514e7  1      
  callq .d_template_args              #  237   0x514e8  5      
  movl 0xc(%rsp), %edx                #  238   0x514ed  4      
  movl %eax, %ecx                     #  239   0x514f1  2      
  movl $0x4, %esi                     #  240   0x514f3  5      
  movl %ebx, %edi                     #  241   0x514f8  2      
  nop                                 #  242   0x514fa  1      
  callq .d_make_comp                  #  243   0x514fb  5      
  movl %eax, %eax                     #  244   0x51500  2      
  movl %eax, 0xc(%rsp)                #  245   0x51502  4      
  jmpq .L_513e0                       #  246   0x51506  5      
  nop                                 #  247   0x5150b  1      
  nop                                 #  248   0x5150c  1      
  movl %ebx, %edi                     #  249   0x5150d  2      
  nop                                 #  250   0x5150f  1      
  nop                                 #  251   0x51510  1      
  callq .d_template_param             #  252   0x51511  5      
  movl %ebx, %ebx                     #  253   0x51516  2      
  movl 0xc(%r15,%rbx,1), %edx         #  254   0x51518  5      
  movl %eax, %eax                     #  255   0x5151d  2      
  movl %eax, 0xc(%rsp)                #  256   0x5151f  4      
  movl %edx, %edx                     #  257   0x51523  2      
  cmpb $0x49, (%r15,%rdx,1)           #  258   0x51525  5      
  jne .L_513e0                        #  259   0x5152a  6      
  testq %rax, %rax                    #  260   0x51530  3      
  nop                                 #  261   0x51533  1      
  je .L_512a0                         #  262   0x51534  6      
  movl %ebx, %ebx                     #  263   0x5153a  2      
  movl 0x20(%r15,%rbx,1), %edx        #  264   0x5153c  5      
  movl %ebx, %ebx                     #  265   0x51541  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  266   0x51543  5      
  jge .L_51280                        #  267   0x51548  6      
  shll $0x2, %edx                     #  268   0x5154e  3      
  nop                                 #  269   0x51551  1      
  movl %ebx, %ebx                     #  270   0x51552  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  271   0x51554  5      
  movl %ebx, %ebx                     #  272   0x51559  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  273   0x5155b  6      
  movl %ebx, %edi                     #  274   0x51561  2      
  movl %edx, %edx                     #  275   0x51563  2      
  movl %eax, (%r15,%rdx,1)            #  276   0x51565  4      
  nop                                 #  277   0x51569  1      
  callq .d_template_args              #  278   0x5156a  5      
  movl 0xc(%rsp), %edx                #  279   0x5156f  4      
  movl %eax, %ecx                     #  280   0x51573  2      
  movl $0x4, %esi                     #  281   0x51575  5      
  movl %ebx, %edi                     #  282   0x5157a  2      
  nop                                 #  283   0x5157c  1      
  callq .d_make_comp                  #  284   0x5157d  5      
  movl %eax, %eax                     #  285   0x51582  2      
  nop                                 #  286   0x51584  1      
  nop                                 #  287   0x51585  1      
.L_517c0:                             #        0x51586  0      
  movl %eax, 0xc(%rsp)                #  288   0x51586  4      
  jmpq .L_513e0                       #  289   0x5158a  5      
  nop                                 #  290   0x5158f  1      
  nop                                 #  291   0x51590  1      
  addl $0x1, %edx                     #  292   0x51591  3      
  movl %ebx, %edi                     #  293   0x51594  2      
  movl %ebx, %ebx                     #  294   0x51596  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  295   0x51598  5      
  nop                                 #  296   0x5159d  1      
  callq .d_source_name                #  297   0x5159e  5      
  movl %ebx, %edi                     #  298   0x515a3  2      
  movl %eax, %r12d                    #  299   0x515a5  3      
  movl %r12d, 0xc(%rsp)               #  300   0x515a8  5      
  xchgw %ax, %ax                      #  301   0x515ad  3      
  nop                                 #  302   0x515b0  1      
  callq .d_type                       #  303   0x515b1  5      
  movl %r12d, %ecx                    #  304   0x515b6  3      
  movl %eax, %edx                     #  305   0x515b9  2      
  movl $0x1d, %esi                    #  306   0x515bb  5      
  movl %ebx, %edi                     #  307   0x515c0  2      
  nop                                 #  308   0x515c2  1      
  callq .d_make_comp                  #  309   0x515c3  5      
  movl %eax, %eax                     #  310   0x515c8  2      
  jmpq .L_517c0                       #  311   0x515ca  5      
  nop                                 #  312   0x515cf  1      
  nop                                 #  313   0x515d0  1      
  movsbl %al, %eax                    #  314   0x515d1  3      
  leal (%rax,%rax,4), %eax            #  315   0x515d4  3      
  leal 0x100219ec(,%rax,4), %edx      #  316   0x515d7  7      
  testq %rdx, %rdx                    #  317   0x515de  3      
  je .L_52140                         #  318   0x515e1  6      
  movl %ebx, %ebx                     #  319   0x515e7  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  320   0x515e9  5      
  nop                                 #  321   0x515ee  1      
  movl %ebx, %ebx                     #  322   0x515ef  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  323   0x515f1  5      
  jl .L_52040                         #  324   0x515f6  6      
  movl 0x4(%r15), %edx                #  325   0x515fc  4      
  xorl %eax, %eax                     #  326   0x51600  2      
  nop                                 #  327   0x51602  1      
.L_518a0:                             #        0x51603  0      
  movl %edx, %edx                     #  328   0x51603  2      
  movl 0x4(%r15,%rdx,1), %edx         #  329   0x51605  5      
  movl %ebx, %ebx                     #  330   0x5160a  2      
  addl $0x1, 0xc(%r15,%rbx,1)         #  331   0x5160c  6      
  movl %ebx, %ebx                     #  332   0x51612  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  333   0x51614  5      
  jmpq .L_512a0                       #  334   0x51619  5      
  nop                                 #  335   0x5161e  1      
  addl $0x1, %edx                     #  336   0x5161f  3      
  movl %ebx, %edi                     #  337   0x51622  2      
  movl %ebx, %ebx                     #  338   0x51624  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  339   0x51626  5      
  nop                                 #  340   0x5162b  1      
  callq .d_source_name                #  341   0x5162c  5      
  xorl %ecx, %ecx                     #  342   0x51631  2      
  movl %eax, %edx                     #  343   0x51633  2      
  movl $0x24, %esi                    #  344   0x51635  5      
  movl %ebx, %edi                     #  345   0x5163a  2      
  nop                                 #  346   0x5163c  1      
  nop                                 #  347   0x5163d  1      
  callq .d_make_comp                  #  348   0x5163e  5      
  movl %eax, %eax                     #  349   0x51643  2      
  movl %eax, 0xc(%rsp)                #  350   0x51645  4      
  jmpq .L_513e0                       #  351   0x51649  5      
  nop                                 #  352   0x5164e  1      
  nop                                 #  353   0x5164f  1      
  addl $0x1, %edx                     #  354   0x51650  3      
  leal 0x8(%rsp), %r13d               #  355   0x51653  5      
  movl %ebx, %edi                     #  356   0x51658  2      
  movl %ebx, %ebx                     #  357   0x5165a  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  358   0x5165c  5      
  nop                                 #  359   0x51661  1      
  callq .d_type                       #  360   0x51662  5      
  movl $0x1, %edx                     #  361   0x51667  5      
  movl %r13d, %esi                    #  362   0x5166c  3      
  movl %ebx, %edi                     #  363   0x5166f  2      
  movl %eax, %r12d                    #  364   0x51671  3      
  nop                                 #  365   0x51674  1      
  callq .d_cv_qualifiers              #  366   0x51675  5      
  movl %eax, %r14d                    #  367   0x5167a  3      
  testq %r14, %r14                    #  368   0x5167d  3      
  jne .L_51b40                        #  369   0x51680  6      
  nop                                 #  370   0x51686  1      
  nop                                 #  371   0x51687  1      
.L_51980:                             #        0x51688  0      
  xorl %eax, %eax                     #  372   0x51688  2      
  jmpq .L_517c0                       #  373   0x5168a  5      
  nop                                 #  374   0x5168f  1      
  nop                                 #  375   0x51690  1      
  leal 0x1(%rdx), %esi                #  376   0x51691  3      
  xorl %r12d, %r12d                   #  377   0x51694  3      
  movl %ebx, %ebx                     #  378   0x51697  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  379   0x51699  5      
  movl %esi, %esi                     #  380   0x5169e  2      
  movzbl (%r15,%rsi,1), %eax          #  381   0x516a0  5      
  cmpb $0x5f, %al                     #  382   0x516a5  2      
  je .L_51a60                         #  383   0x516a7  6      
  subl $0x30, %eax                    #  384   0x516ad  3      
  nop                                 #  385   0x516b0  1      
  cmpb $0x9, %al                      #  386   0x516b1  2      
  ja .L_52100                         #  387   0x516b3  6      
  addl $0x2, %edx                     #  388   0x516b9  3      
  nop                                 #  389   0x516bc  1      
  nop                                 #  390   0x516bd  1      
.L_519e0:                             #        0x516be  0      
  movl %edx, %eax                     #  391   0x516be  2      
  addl $0x1, %edx                     #  392   0x516c0  3      
  movl %ebx, %ebx                     #  393   0x516c3  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  394   0x516c5  5      
  movl %eax, %eax                     #  395   0x516ca  2      
  movzbl (%r15,%rax,1), %ecx          #  396   0x516cc  5      
  subl $0x30, %ecx                    #  397   0x516d1  3      
  cmpb $0x9, %cl                      #  398   0x516d4  3      
  jbe .L_519e0                        #  399   0x516d7  6      
  movl %eax, %edx                     #  400   0x516dd  2      
  movl %ebx, %edi                     #  401   0x516df  2      
  nop                                 #  402   0x516e1  1      
  subl %esi, %edx                     #  403   0x516e2  2      
  nop                                 #  404   0x516e4  1      
  nop                                 #  405   0x516e5  1      
  callq .d_make_name                  #  406   0x516e6  5      
  movl %eax, %r12d                    #  407   0x516eb  3      
  testq %r12, %r12                    #  408   0x516ee  3      
  je .L_51980                         #  409   0x516f1  6      
  nop                                 #  410   0x516f7  1      
  nop                                 #  411   0x516f8  1      
.L_51a40:                             #        0x516f9  0      
  movl %ebx, %ebx                     #  412   0x516f9  2      
  movl 0xc(%r15,%rbx,1), %esi         #  413   0x516fb  5      
  movl %esi, %esi                     #  414   0x51700  2      
  cmpb $0x5f, (%r15,%rsi,1)           #  415   0x51702  5      
  jne .L_51980                        #  416   0x51707  6      
  nop                                 #  417   0x5170d  1      
.L_51a60:                             #        0x5170e  0      
  addl $0x1, %esi                     #  418   0x5170e  3      
  movl %ebx, %edi                     #  419   0x51711  2      
  movl %ebx, %ebx                     #  420   0x51713  2      
  movl %esi, 0xc(%r15,%rbx,1)         #  421   0x51715  5      
  nop                                 #  422   0x5171a  1      
  callq .d_type                       #  423   0x5171b  5      
  movl %r12d, %edx                    #  424   0x51720  3      
  movl %eax, %ecx                     #  425   0x51723  2      
  movl $0x26, %esi                    #  426   0x51725  5      
  movl %ebx, %edi                     #  427   0x5172a  2      
  nop                                 #  428   0x5172c  1      
  callq .d_make_comp                  #  429   0x5172d  5      
  movl %eax, %eax                     #  430   0x51732  2      
  jmpq .L_517c0                       #  431   0x51734  5      
  nop                                 #  432   0x51739  1      
  nop                                 #  433   0x5173a  1      
  addl $0x1, %edx                     #  434   0x5173b  3      
  movl %ebx, %ebx                     #  435   0x5173e  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  436   0x51740  5      
  movl %edx, %edx                     #  437   0x51745  2      
  cmpb $0x59, (%r15,%rdx,1)           #  438   0x51747  5      
  je .L_521a0                         #  439   0x5174c  6      
  nop                                 #  440   0x51752  1      
.L_51ae0:                             #        0x51753  0      
  movl $0x1, %esi                     #  441   0x51753  5      
  movl %ebx, %edi                     #  442   0x51758  2      
  nop                                 #  443   0x5175a  1      
  nop                                 #  444   0x5175b  1      
  callq .d_bare_function_type         #  445   0x5175c  5      
  movl %ebx, %ebx                     #  446   0x51761  2      
  movl 0xc(%r15,%rbx,1), %edx         #  447   0x51763  5      
  movl %eax, %eax                     #  448   0x51768  2      
  movl %edx, %edx                     #  449   0x5176a  2      
  cmpb $0x45, (%r15,%rdx,1)           #  450   0x5176c  5      
  jne .L_51980                        #  451   0x51771  6      
  addl $0x1, %edx                     #  452   0x51777  3      
  movl %ebx, %ebx                     #  453   0x5177a  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  454   0x5177c  5      
  jmpq .L_517c0                       #  455   0x51781  5      
  nop                                 #  456   0x51786  1      
  nop                                 #  457   0x51787  1      
.L_51b40:                             #        0x51788  0      
  movl %ebx, %edi                     #  458   0x51788  2      
  nop                                 #  459   0x5178a  1      
  nop                                 #  460   0x5178b  1      
  callq .d_type                       #  461   0x5178c  5      
  movl %eax, %eax                     #  462   0x51791  2      
  testq %rax, %rax                    #  463   0x51793  3      
  movl %r14d, %r14d                   #  464   0x51796  3      
  movl %eax, (%r15,%r14,1)            #  465   0x51799  4      
  je .L_51980                         #  466   0x5179d  6      
  cmpl %r14d, %r13d                   #  467   0x517a3  3      
  je .L_51ba0                         #  468   0x517a6  6      
  movl %eax, %eax                     #  469   0x517ac  2      
  cmpl $0x25, (%r15,%rax,1)           #  470   0x517ae  5      
  xchgw %ax, %ax                      #  471   0x517b3  3      
  jne .L_521c0                        #  472   0x517b6  6      
  nop                                 #  473   0x517bc  1      
  nop                                 #  474   0x517bd  1      
.L_51ba0:                             #        0x517be  0      
  movl 0x8(%rsp), %ecx                #  475   0x517be  4      
  movl %r12d, %edx                    #  476   0x517c2  3      
  movl $0x27, %esi                    #  477   0x517c5  5      
  movl %ebx, %edi                     #  478   0x517ca  2      
  nop                                 #  479   0x517cc  1      
  callq .d_make_comp                  #  480   0x517cd  5      
  movl %eax, %eax                     #  481   0x517d2  2      
  jmpq .L_517c0                       #  482   0x517d4  5      
  nop                                 #  483   0x517d9  1      
  nop                                 #  484   0x517da  1      
  movl %ebx, %ebx                     #  485   0x517db  2      
  movl 0x14(%r15,%rbx,1), %edx        #  486   0x517dd  5      
  movl %ebx, %ebx                     #  487   0x517e2  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  488   0x517e4  5      
  jge .L_52080                        #  489   0x517e9  6      
  leal (%rdx,%rdx,2), %eax            #  490   0x517ef  3      
  addl $0x1, %edx                     #  491   0x517f2  3      
  nop                                 #  492   0x517f5  1      
  movl %ebx, %ebx                     #  493   0x517f6  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  494   0x517f8  5      
  shll $0x2, %eax                     #  495   0x517fd  3      
  movl %ebx, %ebx                     #  496   0x51800  2      
  addl 0x10(%r15,%rbx,1), %eax        #  497   0x51802  5      
  testq %rax, %rax                    #  498   0x51807  3      
  je .L_52220                         #  499   0x5180a  6      
  movl $0x100223d8, %edx              #  500   0x51810  5      
  nop                                 #  501   0x51815  1      
  movl %eax, %eax                     #  502   0x51816  2      
  movl $0x23, (%r15,%rax,1)           #  503   0x51818  8      
  movl %eax, %eax                     #  504   0x51820  2      
  movl $0x100223d8, 0x4(%r15,%rax,1)  #  505   0x51822  9      
  movl %edx, %edx                     #  506   0x5182b  2      
  nop                                 #  507   0x5182d  1      
.L_51c40:                             #        0x5182e  0      
  movl %edx, %edx                     #  508   0x5182e  2      
  movl 0x4(%r15,%rdx,1), %edx         #  509   0x51830  5      
  movl %ebx, %ebx                     #  510   0x51835  2      
  addl %edx, 0x30(%r15,%rbx,1)        #  511   0x51837  5      
  jmpq .L_512a0                       #  512   0x5183c  5      
  nop                                 #  513   0x51841  1      
  movl %ebx, %edi                     #  514   0x51842  2      
  nop                                 #  515   0x51844  1      
  nop                                 #  516   0x51845  1      
  callq .d_type                       #  517   0x51846  5      
  xorl %ecx, %ecx                     #  518   0x5184b  2      
  movl %eax, %edx                     #  519   0x5184d  2      
  movl $0x3a, %esi                    #  520   0x5184f  5      
  movl %ebx, %edi                     #  521   0x51854  2      
  nop                                 #  522   0x51856  1      
  nop                                 #  523   0x51857  1      
  callq .d_make_comp                  #  524   0x51858  5      
  movl %eax, %eax                     #  525   0x5185d  2      
  jmpq .L_512a0                       #  526   0x5185f  5      
  nop                                 #  527   0x51864  1      
  nop                                 #  528   0x51865  1      
  movl %ebx, %ebx                     #  529   0x51866  2      
  movl 0x14(%r15,%rbx,1), %edx        #  530   0x51868  5      
  movl %ebx, %ebx                     #  531   0x5186d  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  532   0x5186f  5      
  jge .L_52080                        #  533   0x51874  6      
  leal (%rdx,%rdx,2), %eax            #  534   0x5187a  3      
  addl $0x1, %edx                     #  535   0x5187d  3      
  nop                                 #  536   0x51880  1      
  movl %ebx, %ebx                     #  537   0x51881  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  538   0x51883  5      
  shll $0x2, %eax                     #  539   0x51888  3      
  movl %ebx, %ebx                     #  540   0x5188b  2      
  addl 0x10(%r15,%rbx,1), %eax        #  541   0x5188d  5      
  testq %rax, %rax                    #  542   0x51892  3      
  je .L_52220                         #  543   0x51895  6      
  movl $0x100223ec, %edx              #  544   0x5189b  5      
  nop                                 #  545   0x518a0  1      
  movl %eax, %eax                     #  546   0x518a1  2      
  movl $0x23, (%r15,%rax,1)           #  547   0x518a3  8      
  movl %eax, %eax                     #  548   0x518ab  2      
  movl $0x100223ec, 0x4(%r15,%rax,1)  #  549   0x518ad  9      
  movl %edx, %edx                     #  550   0x518b6  2      
  jmpq .L_51c40                       #  551   0x518b8  5      
  nop                                 #  552   0x518bd  1      
  movl %ebx, %ebx                     #  553   0x518be  2      
  movl 0x14(%r15,%rbx,1), %edx        #  554   0x518c0  5      
  movl %ebx, %ebx                     #  555   0x518c5  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  556   0x518c7  5      
  jge .L_52080                        #  557   0x518cc  6      
  leal (%rdx,%rdx,2), %eax            #  558   0x518d2  3      
  addl $0x1, %edx                     #  559   0x518d5  3      
  nop                                 #  560   0x518d8  1      
  movl %ebx, %ebx                     #  561   0x518d9  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  562   0x518db  5      
  shll $0x2, %eax                     #  563   0x518e0  3      
  movl %ebx, %ebx                     #  564   0x518e3  2      
  addl 0x10(%r15,%rbx,1), %eax        #  565   0x518e5  5      
  testq %rax, %rax                    #  566   0x518ea  3      
  je .L_52220                         #  567   0x518ed  6      
  movl $0x100223b0, %edx              #  568   0x518f3  5      
  nop                                 #  569   0x518f8  1      
  movl %eax, %eax                     #  570   0x518f9  2      
  movl $0x23, (%r15,%rax,1)           #  571   0x518fb  8      
  movl %eax, %eax                     #  572   0x51903  2      
  movl $0x100223b0, 0x4(%r15,%rax,1)  #  573   0x51905  9      
  movl %edx, %edx                     #  574   0x5190e  2      
  jmpq .L_51c40                       #  575   0x51910  5      
  nop                                 #  576   0x51915  1      
  movl %ebx, %ebx                     #  577   0x51916  2      
  movl 0x14(%r15,%rbx,1), %edx        #  578   0x51918  5      
  movl %ebx, %ebx                     #  579   0x5191d  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  580   0x5191f  5      
  jge .L_52080                        #  581   0x51924  6      
  leal (%rdx,%rdx,2), %eax            #  582   0x5192a  3      
  addl $0x1, %edx                     #  583   0x5192d  3      
  nop                                 #  584   0x51930  1      
  movl %ebx, %ebx                     #  585   0x51931  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  586   0x51933  5      
  shll $0x2, %eax                     #  587   0x51938  3      
  movl %ebx, %ebx                     #  588   0x5193b  2      
  addl 0x10(%r15,%rbx,1), %eax        #  589   0x5193d  5      
  testq %rax, %rax                    #  590   0x51942  3      
  je .L_52220                         #  591   0x51945  6      
  movl $0x1002239c, %edx              #  592   0x5194b  5      
  nop                                 #  593   0x51950  1      
  movl %eax, %eax                     #  594   0x51951  2      
  movl $0x23, (%r15,%rax,1)           #  595   0x51953  8      
  movl %eax, %eax                     #  596   0x5195b  2      
  movl $0x1002239c, 0x4(%r15,%rax,1)  #  597   0x5195d  9      
  movl %edx, %edx                     #  598   0x51966  2      
  jmpq .L_51c40                       #  599   0x51968  5      
  nop                                 #  600   0x5196d  1      
  movl %ebx, %edi                     #  601   0x5196e  2      
  nop                                 #  602   0x51970  1      
  nop                                 #  603   0x51971  1      
  callq .d_expression                 #  604   0x51972  5      
  xorl %ecx, %ecx                     #  605   0x51977  2      
  movl %eax, %edx                     #  606   0x51979  2      
  movl $0x39, %esi                    #  607   0x5197b  5      
  movl %ebx, %edi                     #  608   0x51980  2      
  nop                                 #  609   0x51982  1      
  nop                                 #  610   0x51983  1      
  callq .d_make_comp                  #  611   0x51984  5      
  movl %eax, %eax                     #  612   0x51989  2      
  testq %rax, %rax                    #  613   0x5198b  3      
  movl %eax, 0xc(%rsp)                #  614   0x5198e  4      
  je .L_512a0                         #  615   0x51992  6      
  movl %ebx, %ebx                     #  616   0x51998  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  617   0x5199a  5      
  movl %ecx, %ecx                     #  618   0x5199f  2      
  movzbl (%r15,%rcx,1), %edx          #  619   0x519a1  5      
  testb %dl, %dl                      #  620   0x519a6  2      
  nop                                 #  621   0x519a8  1      
  je .L_51280                         #  622   0x519a9  6      
  addl $0x1, %ecx                     #  623   0x519af  3      
  cmpb $0x45, %dl                     #  624   0x519b2  3      
  movl %ebx, %ebx                     #  625   0x519b5  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  626   0x519b7  5      
  jne .L_51280                        #  627   0x519bc  6      
  jmpq .L_512a0                       #  628   0x519c2  5      
  xchgw %ax, %ax                      #  629   0x519c7  3      
  movl %ebx, %ebx                     #  630   0x519ca  2      
  movl 0x14(%r15,%rbx,1), %eax        #  631   0x519cc  5      
  xorl %r12d, %r12d                   #  632   0x519d1  3      
  movl %ebx, %ebx                     #  633   0x519d4  2      
  cmpl 0x18(%r15,%rbx,1), %eax        #  634   0x519d6  5      
  jge .L_51ea0                        #  635   0x519db  6      
  leal (%rax,%rax,2), %r12d           #  636   0x519e1  4      
  addl $0x1, %eax                     #  637   0x519e5  3      
  nop                                 #  638   0x519e8  1      
  movl %ebx, %ebx                     #  639   0x519e9  2      
  movl %eax, 0x14(%r15,%rbx,1)        #  640   0x519eb  5      
  shll $0x2, %r12d                    #  641   0x519f0  4      
  movl %ebx, %ebx                     #  642   0x519f4  2      
  addl 0x10(%r15,%rbx,1), %r12d       #  643   0x519f6  5      
  nop                                 #  644   0x519fb  1      
.L_51ea0:                             #        0x519fc  0      
  movl %ebx, %ebx                     #  645   0x519fc  2      
  movl 0xc(%r15,%rbx,1), %eax         #  646   0x519fe  5      
  movl %r12d, 0xc(%rsp)               #  647   0x51a03  5      
  movl %r12d, %r12d                   #  648   0x51a08  3      
  movl $0x28, (%r15,%r12,1)           #  649   0x51a0b  8      
  movl %eax, %eax                     #  650   0x51a13  2      
  movzbl (%r15,%rax,1), %eax          #  651   0x51a15  5      
  xchgw %ax, %ax                      #  652   0x51a1a  3      
  subl $0x30, %eax                    #  653   0x51a1d  3      
  cmpb $0x9, %al                      #  654   0x51a20  2      
  setbe %al                           #  655   0x51a22  3      
  movzbl %al, %eax                    #  656   0x51a25  3      
  testw %ax, %ax                      #  657   0x51a28  3      
  movl %r12d, %r12d                   #  658   0x51a2b  3      
  movw %ax, 0x8(%r15,%r12,1)          #  659   0x51a2e  6      
  jne .L_52160                        #  660   0x51a34  6      
  nop                                 #  661   0x51a3a  1      
.L_51ee0:                             #        0x51a3b  0      
  movl %ebx, %edi                     #  662   0x51a3b  2      
  nop                                 #  663   0x51a3d  1      
  nop                                 #  664   0x51a3e  1      
  callq .d_type                       #  665   0x51a3f  5      
  movl %ebx, %edi                     #  666   0x51a44  2      
  movl %r12d, %r12d                   #  667   0x51a46  3      
  movl %eax, 0x4(%r15,%r12,1)         #  668   0x51a49  5      
  xchgw %ax, %ax                      #  669   0x51a4e  3      
  nop                                 #  670   0x51a51  1      
  callq .d_number                     #  671   0x51a52  5      
  movl %ebx, %ebx                     #  672   0x51a57  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  673   0x51a59  5      
  xorl %edx, %edx                     #  674   0x51a5e  2      
  movl %ecx, %ecx                     #  675   0x51a60  2      
  movzbl (%r15,%rcx,1), %eax          #  676   0x51a62  5      
  testb %al, %al                      #  677   0x51a67  2      
  je .L_51f60                         #  678   0x51a69  6      
  addl $0x1, %ecx                     #  679   0x51a6f  3      
  xorl %edx, %edx                     #  680   0x51a72  2      
  cmpb $0x73, %al                     #  681   0x51a74  2      
  nop                                 #  682   0x51a76  1      
  movl %ebx, %ebx                     #  683   0x51a77  2      
  movl %ecx, 0xc(%r15,%rbx,1)         #  684   0x51a79  5      
  sete %dl                            #  685   0x51a7e  3      
  nop                                 #  686   0x51a81  1      
  nop                                 #  687   0x51a82  1      
.L_51f60:                             #        0x51a83  0      
  movl 0xc(%rsp), %eax                #  688   0x51a83  4      
  movl %eax, %eax                     #  689   0x51a87  2      
  movw %dx, 0xa(%r15,%rax,1)          #  690   0x51a89  6      
  jmpq .L_512a0                       #  691   0x51a8f  5      
  nop                                 #  692   0x51a94  1      
  movl %ebx, %ebx                     #  693   0x51a95  2      
  movl 0x14(%r15,%rbx,1), %edx        #  694   0x51a97  5      
  movl %ebx, %ebx                     #  695   0x51a9c  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  696   0x51a9e  5      
  jge .L_52080                        #  697   0x51aa3  6      
  leal (%rdx,%rdx,2), %eax            #  698   0x51aa9  3      
  addl $0x1, %edx                     #  699   0x51aac  3      
  nop                                 #  700   0x51aaf  1      
  movl %ebx, %ebx                     #  701   0x51ab0  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  702   0x51ab2  5      
  shll $0x2, %eax                     #  703   0x51ab7  3      
  movl %ebx, %ebx                     #  704   0x51aba  2      
  addl 0x10(%r15,%rbx,1), %eax        #  705   0x51abc  5      
  testq %rax, %rax                    #  706   0x51ac1  3      
  je .L_52220                         #  707   0x51ac4  6      
  movl $0x100223c4, %edx              #  708   0x51aca  5      
  nop                                 #  709   0x51acf  1      
  movl %eax, %eax                     #  710   0x51ad0  2      
  movl $0x23, (%r15,%rax,1)           #  711   0x51ad2  8      
  movl %eax, %eax                     #  712   0x51ada  2      
  movl $0x100223c4, 0x4(%r15,%rax,1)  #  713   0x51adc  9      
  movl %edx, %edx                     #  714   0x51ae5  2      
  jmpq .L_51c40                       #  715   0x51ae7  5      
  nop                                 #  716   0x51aec  1      
  movl %ebx, %ebx                     #  717   0x51aed  2      
  movl 0x14(%r15,%rbx,1), %edx        #  718   0x51aef  5      
  movl %ebx, %ebx                     #  719   0x51af4  2      
  cmpl 0x18(%r15,%rbx,1), %edx        #  720   0x51af6  5      
  jge .L_52080                        #  721   0x51afb  6      
  leal (%rdx,%rdx,2), %eax            #  722   0x51b01  3      
  addl $0x1, %edx                     #  723   0x51b04  3      
  nop                                 #  724   0x51b07  1      
  movl %ebx, %ebx                     #  725   0x51b08  2      
  movl %edx, 0x14(%r15,%rbx,1)        #  726   0x51b0a  5      
  shll $0x2, %eax                     #  727   0x51b0f  3      
  movl %ebx, %ebx                     #  728   0x51b12  2      
  addl 0x10(%r15,%rbx,1), %eax        #  729   0x51b14  5      
  testq %rax, %rax                    #  730   0x51b19  3      
  je .L_52220                         #  731   0x51b1c  6      
  movl $0x10022388, %edx              #  732   0x51b22  5      
  nop                                 #  733   0x51b27  1      
  movl %eax, %eax                     #  734   0x51b28  2      
  movl $0x23, (%r15,%rax,1)           #  735   0x51b2a  8      
  movl %eax, %eax                     #  736   0x51b32  2      
  movl $0x10022388, 0x4(%r15,%rax,1)  #  737   0x51b34  9      
  movl %edx, %edx                     #  738   0x51b3d  2      
  jmpq .L_51c40                       #  739   0x51b3f  5      
  nop                                 #  740   0x51b44  1      
.L_52040:                             #        0x51b45  0      
  leal (%rcx,%rcx,2), %eax            #  741   0x51b45  3      
  addl $0x1, %ecx                     #  742   0x51b48  3      
  movl %ebx, %ebx                     #  743   0x51b4b  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  744   0x51b4d  5      
  shll $0x2, %eax                     #  745   0x51b52  3      
  movl %ebx, %ebx                     #  746   0x51b55  2      
  addl 0x10(%r15,%rbx,1), %eax        #  747   0x51b57  5      
  testq %rax, %rax                    #  748   0x51b5c  3      
  je .L_52240                         #  749   0x51b5f  6      
  movl %eax, %eax                     #  750   0x51b65  2      
  movl $0x23, (%r15,%rax,1)           #  751   0x51b67  8      
  movl %eax, %eax                     #  752   0x51b6f  2      
  movl %edx, 0x4(%r15,%rax,1)         #  753   0x51b71  5      
  jmpq .L_518a0                       #  754   0x51b76  5      
  nop                                 #  755   0x51b7b  1      
.L_52080:                             #        0x51b7c  0      
  movl 0x4(%r15), %edx                #  756   0x51b7c  4      
  xorl %eax, %eax                     #  757   0x51b80  2      
  jmpq .L_51c40                       #  758   0x51b82  5      
  nop                                 #  759   0x51b87  1      
  nop                                 #  760   0x51b88  1      
.L_520a0:                             #        0x51b89  0      
  movl %ebx, %edi                     #  761   0x51b89  2      
  nop                                 #  762   0x51b8b  1      
  nop                                 #  763   0x51b8c  1      
  callq .d_name                       #  764   0x51b8d  5      
  movl %eax, %eax                     #  765   0x51b92  2      
  testq %rax, %rax                    #  766   0x51b94  3      
  je .L_512a0                         #  767   0x51b97  6      
  movl %eax, %eax                     #  768   0x51b9d  2      
  cmpl $0x16, (%r15,%rax,1)           #  769   0x51b9f  5      
  movl %eax, 0xc(%rsp)                #  770   0x51ba4  4      
  jne .L_51360                        #  771   0x51ba8  6      
  nop                                 #  772   0x51bae  1      
  jmpq .L_512a0                       #  773   0x51baf  5      
  nop                                 #  774   0x51bb4  1      
  nop                                 #  775   0x51bb5  1      
.L_52100:                             #        0x51bb6  0      
  movl %ebx, %edi                     #  776   0x51bb6  2      
  nop                                 #  777   0x51bb8  1      
  nop                                 #  778   0x51bb9  1      
  callq .d_expression                 #  779   0x51bba  5      
  movl %eax, %r12d                    #  780   0x51bbf  3      
  testq %r12, %r12                    #  781   0x51bc2  3      
  jne .L_51a40                        #  782   0x51bc5  6      
  xorl %eax, %eax                     #  783   0x51bcb  2      
  jmpq .L_517c0                       #  784   0x51bcd  5      
  nop                                 #  785   0x51bd2  1      
.L_52140:                             #        0x51bd3  0      
  movl %edx, %edx                     #  786   0x51bd3  2      
  movl 0x4(%r15,%rdx,1), %edx         #  787   0x51bd5  5      
  xorl %eax, %eax                     #  788   0x51bda  2      
  jmpq .L_518a0                       #  789   0x51bdc  5      
  nop                                 #  790   0x51be1  1      
  nop                                 #  791   0x51be2  1      
.L_52160:                             #        0x51be3  0      
  movl %ebx, %edi                     #  792   0x51be3  2      
  nop                                 #  793   0x51be5  1      
  nop                                 #  794   0x51be6  1      
  callq .d_number                     #  795   0x51be7  5      
  movl 0xc(%rsp), %r12d               #  796   0x51bec  5      
  jmpq .L_51ee0                       #  797   0x51bf1  5      
  nop                                 #  798   0x51bf6  1      
  nop                                 #  799   0x51bf7  1      
.L_521a0:                             #        0x51bf8  0      
  addl $0x1, %edx                     #  800   0x51bf8  3      
  movl %ebx, %ebx                     #  801   0x51bfb  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  802   0x51bfd  5      
  jmpq .L_51ae0                       #  803   0x51c02  5      
  xchgw %ax, %ax                      #  804   0x51c07  3      
  nop                                 #  805   0x51c0a  1      
.L_521c0:                             #        0x51c0b  0      
  movl 0x8(%rsp), %eax                #  806   0x51c0b  4      
  testq %rax, %rax                    #  807   0x51c0f  3      
  je .L_51980                         #  808   0x51c12  6      
  movl %ebx, %ebx                     #  809   0x51c18  2      
  movl 0x20(%r15,%rbx,1), %edx        #  810   0x51c1a  5      
  movl %ebx, %ebx                     #  811   0x51c1f  2      
  cmpl 0x24(%r15,%rbx,1), %edx        #  812   0x51c21  5      
  nop                                 #  813   0x51c26  1      
  jge .L_51980                        #  814   0x51c27  6      
  shll $0x2, %edx                     #  815   0x51c2d  3      
  movl %ebx, %ebx                     #  816   0x51c30  2      
  addl 0x1c(%r15,%rbx,1), %edx        #  817   0x51c32  5      
  movl %ebx, %ebx                     #  818   0x51c37  2      
  addl $0x1, 0x20(%r15,%rbx,1)        #  819   0x51c39  6      
  movl %edx, %edx                     #  820   0x51c3f  2      
  movl %eax, (%r15,%rdx,1)            #  821   0x51c41  4      
  xchgw %ax, %ax                      #  822   0x51c45  3      
  jmpq .L_51ba0                       #  823   0x51c48  5      
  nop                                 #  824   0x51c4d  1      
  nop                                 #  825   0x51c4e  1      
.L_52220:                             #        0x51c4f  0      
  movl %eax, %eax                     #  826   0x51c4f  2      
  movl 0x4(%r15,%rax,1), %edx         #  827   0x51c51  5      
  jmpq .L_51c40                       #  828   0x51c56  5      
  nop                                 #  829   0x51c5b  1      
  nop                                 #  830   0x51c5c  1      
.L_52240:                             #        0x51c5d  0      
  movl %eax, %eax                     #  831   0x51c5d  2      
  movl 0x4(%r15,%rax,1), %edx         #  832   0x51c5f  5      
  jmpq .L_518a0                       #  833   0x51c64  5      
  nop                                 #  834   0x51c69  1      
  nop                                 #  835   0x51c6a  1      
                                                               
.size d_type, .-d_type

