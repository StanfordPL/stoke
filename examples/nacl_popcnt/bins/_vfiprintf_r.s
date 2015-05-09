  .text
  .globl _vfiprintf_r
  .type _vfiprintf_r, @function

#! file-offset 0x84200
#! rip-offset  0x84200
#! capacity    12800 bytes

# Text                                   #  Line  RIP      Bytes  
._vfiprintf_r:                           #        0x84200  0      
  pushq %r14                             #  1     0x84200  3      
  movl %esi, %esi                        #  2     0x84203  2      
  movl %edi, %r14d                       #  3     0x84205  3      
  movl %ecx, %ecx                        #  4     0x84208  2      
  pushq %r13                             #  5     0x8420a  3      
  pushq %r12                             #  6     0x8420d  3      
  pushq %rbx                             #  7     0x84210  2      
  movl %edx, %ebx                        #  8     0x84212  2      
  movl $0x8, %edx                        #  9     0x84214  5      
  subl $0x1e8, %esp                      #  10    0x84219  6      
  addq %r15, %rsp                        #  11    0x8421f  3      
  xchgw %ax, %ax                         #  12    0x84222  3      
  leal 0x1c0(%rsp), %eax                 #  13    0x84225  7      
  movq %rsi, 0x70(%rsp)                  #  14    0x8422c  5      
  xorl %esi, %esi                        #  15    0x84231  2      
  movq %rcx, 0x80(%rsp)                  #  16    0x84233  8      
  movl %eax, %edi                        #  17    0x8423b  2      
  movq %rax, 0x38(%rsp)                  #  18    0x8423d  5      
  nop                                    #  19    0x84242  1      
  nop                                    #  20    0x84243  1      
  nop                                    #  21    0x84244  1      
  callq .memset                          #  22    0x84245  5      
  testq %r14, %r14                       #  23    0x8424a  3      
  je .L_84280                            #  24    0x8424d  6      
  movl %r14d, %r14d                      #  25    0x84253  3      
  movl 0x38(%r15,%r14,1), %r11d          #  26    0x84256  5      
  testl %r11d, %r11d                     #  27    0x8425b  3      
  je .L_84f80                            #  28    0x8425e  6      
  nop                                    #  29    0x84264  1      
.L_84280:                                #        0x84265  0      
  movq 0x70(%rsp), %rcx                  #  30    0x84265  5      
  movl %ecx, %ecx                        #  31    0x8426a  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  32    0x8426c  6      
  movswl %dx, %eax                       #  33    0x84272  3      
  testb $0x2, %ah                        #  34    0x84275  3      
  je .L_84f40                            #  35    0x84278  6      
  nop                                    #  36    0x8427e  1      
.L_842a0:                                #        0x8427f  0      
  testb $0x20, %ah                       #  37    0x8427f  3      
  jne .L_842e0                           #  38    0x84282  6      
  movq 0x70(%rsp), %rax                  #  39    0x84288  5      
  orb $0x20, %dh                         #  40    0x8428d  3      
  movl %eax, %eax                        #  41    0x84290  2      
  movw %dx, 0xc(%r15,%rax,1)             #  42    0x84292  6      
  movl %eax, %eax                        #  43    0x84298  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  44    0x8429a  9      
  movswl %dx, %eax                       #  45    0x842a3  3      
  nop                                    #  46    0x842a6  1      
  nop                                    #  47    0x842a7  1      
.L_842e0:                                #        0x842a8  0      
  testb $0x8, %al                        #  48    0x842a8  2      
  je .L_84e00                            #  49    0x842aa  6      
  movq 0x70(%rsp), %rdx                  #  50    0x842b0  5      
  movl %edx, %edx                        #  51    0x842b5  2      
  movl 0x10(%r15,%rdx,1), %r10d          #  52    0x842b7  5      
  testl %r10d, %r10d                     #  53    0x842bc  3      
  je .L_84e00                            #  54    0x842bf  6      
  movl %eax, %edx                        #  55    0x842c5  2      
  nop                                    #  56    0x842c7  1      
  andl $0x1a, %edx                       #  57    0x842c8  3      
  cmpl $0xa, %edx                        #  58    0x842cb  3      
  je .L_84e60                            #  59    0x842ce  6      
  nop                                    #  60    0x842d4  1      
  nop                                    #  61    0x842d5  1      
.L_84320:                                #        0x842d6  0      
  leal 0xe0(%rsp), %eax                  #  62    0x842d6  7      
  leal 0x150(%rsp), %ecx                 #  63    0x842dd  7      
  leal 0x1cc(%rsp), %esi                 #  64    0x842e4  7      
  movq %rbx, 0x60(%rsp)                  #  65    0x842eb  5      
  nop                                    #  66    0x842f0  1      
  movl $0x0, 0x198(%rsp)                 #  67    0x842f1  11     
  movq %rax, 0x28(%rsp)                  #  68    0x842fc  5      
  movl 0x28(%rsp), %eax                  #  69    0x84301  4      
  movq %rcx, %rbx                        #  70    0x84305  3      
  movq %rcx, 0x30(%rsp)                  #  71    0x84308  5      
  nop                                    #  72    0x8430d  1      
  movl %ecx, 0x190(%rsp)                 #  73    0x8430e  7      
  movl $0x0, 0x194(%rsp)                 #  74    0x84315  11     
  movq $0x0, 0xc0(%rsp)                  #  75    0x84320  12     
  xchgw %ax, %ax                         #  76    0x8432c  3      
  addl $0x64, %eax                       #  77    0x8432f  3      
  movq $0x0, 0xb0(%rsp)                  #  78    0x84332  12     
  movl $0x0, 0xd4(%rsp)                  #  79    0x8433e  11     
  movl %eax, %eax                        #  80    0x84349  2      
  nop                                    #  81    0x8434b  1      
  movq $0x0, 0xd8(%rsp)                  #  82    0x8434c  12     
  movl $0x0, 0x8c(%rsp)                  #  83    0x84358  11     
  movl %eax, %edx                        #  84    0x84363  2      
  movq %rsi, 0x20(%rsp)                  #  85    0x84365  5      
  xchgw %ax, %ax                         #  86    0x8436a  3      
  movq %rax, 0xb8(%rsp)                  #  87    0x8436d  8      
  subl $0x1, %edx                        #  88    0x84375  3      
  movq %rdx, 0xc8(%rsp)                  #  89    0x84378  8      
  nop                                    #  90    0x84380  1      
.L_843e0:                                #        0x84381  0      
  movq 0x60(%rsp), %r12                  #  91    0x84381  5      
  movq %rbx, %r13                        #  92    0x84386  3      
  jmpq .L_84440                          #  93    0x84389  5      
  nop                                    #  94    0x8438e  1      
  nop                                    #  95    0x8438f  1      
.L_84400:                                #        0x84390  0      
  cmpl $0x25, 0x1cc(%rsp)                #  96    0x84390  8      
  je .L_844e0                            #  97    0x84398  6      
  nop                                    #  98    0x8439e  1      
  nop                                    #  99    0x8439f  1      
.L_84420:                                #        0x843a0  0      
  leal (%rax,%r12,1), %r12d              #  100   0x843a0  4      
  nop                                    #  101   0x843a4  1      
  nop                                    #  102   0x843a5  1      
.L_84440:                                #        0x843a6  0      
  movl 0xffac814(%rip), %ebx             #  103   0x843a6  6      
  nop                                    #  104   0x843ac  1      
  nop                                    #  105   0x843ad  1      
  callq .__locale_charset                #  106   0x843ae  5      
  movl %eax, %r8d                        #  107   0x843b3  3      
  movq %r8, 0x40(%rsp)                   #  108   0x843b6  5      
  nop                                    #  109   0x843bb  1      
  nop                                    #  110   0x843bc  1      
  callq .__locale_mb_cur_max             #  111   0x843bd  5      
  movl 0x38(%rsp), %r9d                  #  112   0x843c2  5      
  movl %eax, %ecx                        #  113   0x843c7  2      
  movq 0x40(%rsp), %r8                   #  114   0x843c9  5      
  movl %r12d, %edx                       #  115   0x843ce  3      
  movl 0x20(%rsp), %esi                  #  116   0x843d1  4      
  movl %r14d, %edi                       #  117   0x843d5  3      
  xchgw %ax, %ax                         #  118   0x843d8  3      
  andl $0xffffffe0, %ebx                 #  119   0x843db  6      
  addq %r15, %rbx                        #  120   0x843e1  3      
  callq %rbx                             #  121   0x843e4  2      
  cmpl $0x0, %eax                        #  122   0x843e6  3      
  je .L_844e0                            #  123   0x843e9  6      
  jge .L_84400                           #  124   0x843ef  6      
  movl 0x38(%rsp), %edi                  #  125   0x843f5  4      
  movl $0x8, %edx                        #  126   0x843f9  5      
  xorl %esi, %esi                        #  127   0x843fe  2      
  nop                                    #  128   0x84400  1      
  callq .memset                          #  129   0x84401  5      
  movl $0x1, %eax                        #  130   0x84406  5      
  jmpq .L_84420                          #  131   0x8440b  5      
  nop                                    #  132   0x84410  1      
  nop                                    #  133   0x84411  1      
.L_844e0:                                #        0x84412  0      
  movl %r12d, %ecx                       #  134   0x84412  3      
  subl 0x60(%rsp), %ecx                  #  135   0x84415  4      
  movq %r13, %rbx                        #  136   0x84419  3      
  movl %eax, %r13d                       #  137   0x8441c  3      
  je .L_84560                            #  138   0x8441f  6      
  movl %ebx, %ebx                        #  139   0x84425  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  140   0x84427  5      
  movl 0x194(%rsp), %eax                 #  141   0x8442c  7      
  nop                                    #  142   0x84433  1      
  movl 0x60(%rsp), %esi                  #  143   0x84434  4      
  addl %ecx, 0x198(%rsp)                 #  144   0x84438  7      
  addl $0x1, %eax                        #  145   0x8443f  3      
  cmpl $0x7, %eax                        #  146   0x84442  3      
  movl %ebx, %ebx                        #  147   0x84445  2      
  movl %esi, (%r15,%rbx,1)               #  148   0x84447  4      
  movl %eax, 0x194(%rsp)                 #  149   0x8444b  7      
  xchgw %ax, %ax                         #  150   0x84452  3      
  jg .L_84f00                            #  151   0x84455  6      
  addl $0x8, %ebx                        #  152   0x8445b  3      
  nop                                    #  153   0x8445e  1      
  nop                                    #  154   0x8445f  1      
.L_84540:                                #        0x84460  0      
  addl %ecx, 0x8c(%rsp)                  #  155   0x84460  7      
  nop                                    #  156   0x84467  1      
  nop                                    #  157   0x84468  1      
.L_84560:                                #        0x84469  0      
  testl %r13d, %r13d                     #  158   0x84469  3      
  je .L_858c0                            #  159   0x8446c  6      
  addl $0x1, %r12d                       #  160   0x84472  4      
  movb $0x0, 0x1df(%rsp)                 #  161   0x84476  8      
  movl $0xffffffff, %r8d                 #  162   0x8447e  6      
  movq %r12, %rdx                        #  163   0x84484  3      
  xchgw %ax, %ax                         #  164   0x84487  3      
  movq %r12, 0x60(%rsp)                  #  165   0x8448a  5      
  movl %r12d, %r12d                      #  166   0x8448f  3      
  movzbl (%r15,%r12,1), %eax             #  167   0x84492  5      
  movq %rdx, %r13                        #  168   0x84497  3      
  movl $0x0, 0x88(%rsp)                  #  169   0x8449a  11     
  xorl %r12d, %r12d                      #  170   0x844a5  3      
  xchgw %ax, %ax                         #  171   0x844a8  3      
.L_845a0:                                #        0x844ab  0      
  movsbl %al, %eax                       #  172   0x844ab  3      
  addl $0x1, %r13d                       #  173   0x844ae  4      
  nop                                    #  174   0x844b2  1      
  nop                                    #  175   0x844b3  1      
.L_845c0:                                #        0x844b4  0      
  leal -0x20(%rax), %edx                 #  176   0x844b4  3      
  cmpl $0x5a, %edx                       #  177   0x844b7  3      
  jbe .L_84c60                           #  178   0x844ba  6      
  nop                                    #  179   0x844c0  1      
  nop                                    #  180   0x844c1  1      
  testl %eax, %eax                       #  181   0x844c2  2      
  movq %r13, 0x60(%rsp)                  #  182   0x844c4  5      
  je .L_858c0                            #  183   0x844c9  6      
  leal 0xe0(%rsp), %edx                  #  184   0x844cf  7      
  movb %al, 0xe0(%rsp)                   #  185   0x844d6  7      
  nop                                    #  186   0x844dd  1      
  movb $0x0, 0x1df(%rsp)                 #  187   0x844de  8      
  movl $0x1, 0x68(%rsp)                  #  188   0x844e6  8      
  movl $0x1, 0x7c(%rsp)                  #  189   0x844ee  8      
  movq %rdx, 0x98(%rsp)                  #  190   0x844f6  8      
.L_84620:                                #        0x844fe  0      
  movq $0x0, 0x90(%rsp)                  #  191   0x844fe  12     
  movl $0x0, 0xac(%rsp)                  #  192   0x8450a  11     
  nop                                    #  193   0x84515  1      
.L_84640:                                #        0x84516  0      
  movl 0x68(%rsp), %eax                  #  194   0x84516  4      
  movl %r12d, %ecx                       #  195   0x8451a  3      
  movl %r12d, %esi                       #  196   0x8451d  3      
  addl $0x2, %eax                        #  197   0x84520  3      
  andl $0x2, %ecx                        #  198   0x84523  3      
  cmovel 0x68(%rsp), %eax                #  199   0x84526  5      
  andl $0x84, %esi                       #  200   0x8452b  3      
  nop                                    #  201   0x8452e  1      
  movl %ecx, 0xa8(%rsp)                  #  202   0x8452f  7      
  movl %esi, 0xa4(%rsp)                  #  203   0x84536  7      
  movl %eax, 0x68(%rsp)                  #  204   0x8453d  4      
  jne .L_847c0                           #  205   0x84541  6      
  movl 0x88(%rsp), %r13d                 #  206   0x84547  8      
  subl %eax, %r13d                       #  207   0x8454f  3      
  testl %r13d, %r13d                     #  208   0x84552  3      
  jle .L_847c0                           #  209   0x84555  6      
  cmpl $0x10, %r13d                      #  210   0x8455b  4      
  jle .L_84780                           #  211   0x8455f  6      
  leal 0x190(%rsp), %eax                 #  212   0x84565  7      
  nop                                    #  213   0x8456c  1      
  movq %rax, 0x10(%rsp)                  #  214   0x8456d  5      
  movq %rbx, %rax                        #  215   0x84572  3      
  movq 0x70(%rsp), %rbx                  #  216   0x84575  5      
  jmpq .L_846e0                          #  217   0x8457a  5      
  xchgw %ax, %ax                         #  218   0x8457f  3      
  nop                                    #  219   0x84582  1      
.L_846c0:                                #        0x84583  0      
  subl $0x10, %r13d                      #  220   0x84583  4      
  addl $0x8, %eax                        #  221   0x84587  3      
  cmpl $0x10, %r13d                      #  222   0x8458a  4      
  jle .L_84760                           #  223   0x8458e  6      
  nop                                    #  224   0x84594  1      
.L_846e0:                                #        0x84595  0      
  movl %eax, %eax                        #  225   0x84595  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  226   0x84597  9      
  movl 0x194(%rsp), %edx                 #  227   0x845a0  7      
  addl $0x10, 0x198(%rsp)                #  228   0x845a7  8      
  nop                                    #  229   0x845af  1      
  movl %eax, %eax                        #  230   0x845b0  2      
  movl $0x10024f30, (%r15,%rax,1)        #  231   0x845b2  8      
  addl $0x1, %edx                        #  232   0x845ba  3      
  cmpl $0x7, %edx                        #  233   0x845bd  3      
  movl %edx, 0x194(%rsp)                 #  234   0x845c0  7      
  jle .L_846c0                           #  235   0x845c7  6      
  movl 0x10(%rsp), %edx                  #  236   0x845cd  4      
  movl %ebx, %esi                        #  237   0x845d1  2      
  nop                                    #  238   0x845d3  1      
  movl %r14d, %edi                       #  239   0x845d4  3      
  nop                                    #  240   0x845d7  1      
  nop                                    #  241   0x845d8  1      
  callq .__sprint_r                      #  242   0x845d9  5      
  testl %eax, %eax                       #  243   0x845de  2      
  jne .L_85980                           #  244   0x845e0  6      
  subl $0x10, %r13d                      #  245   0x845e6  4      
  leal 0x150(%rsp), %eax                 #  246   0x845ea  7      
  cmpl $0x10, %r13d                      #  247   0x845f1  4      
  jg .L_846e0                            #  248   0x845f5  6      
  nop                                    #  249   0x845fb  1      
.L_84760:                                #        0x845fc  0      
  movq %rax, %rbx                        #  250   0x845fc  3      
  nop                                    #  251   0x845ff  1      
  nop                                    #  252   0x84600  1      
.L_84780:                                #        0x84601  0      
  movl %ebx, %ebx                        #  253   0x84601  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  254   0x84603  5      
  movl 0x194(%rsp), %eax                 #  255   0x84608  7      
  addl %r13d, 0x198(%rsp)                #  256   0x8460f  8      
  movl %ebx, %ebx                        #  257   0x84617  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  258   0x84619  8      
  addl $0x1, %eax                        #  259   0x84621  3      
  cmpl $0x7, %eax                        #  260   0x84624  3      
  movl %eax, 0x194(%rsp)                 #  261   0x84627  7      
  jg .L_85f00                            #  262   0x8462e  6      
  addl $0x8, %ebx                        #  263   0x84634  3      
  nop                                    #  264   0x84637  1      
.L_847c0:                                #        0x84638  0      
  cmpb $0x0, 0x1df(%rsp)                 #  265   0x84638  8      
  je .L_84820                            #  266   0x84640  6      
  leal 0x1df(%rsp), %eax                 #  267   0x84646  7      
  movl %ebx, %ebx                        #  268   0x8464d  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  269   0x8464f  9      
  nop                                    #  270   0x84658  1      
  addl $0x1, 0x198(%rsp)                 #  271   0x84659  8      
  movl %ebx, %ebx                        #  272   0x84661  2      
  movl %eax, (%r15,%rbx,1)               #  273   0x84663  4      
  movl 0x194(%rsp), %eax                 #  274   0x84667  7      
  addl $0x1, %eax                        #  275   0x8466e  3      
  cmpl $0x7, %eax                        #  276   0x84671  3      
  nop                                    #  277   0x84674  1      
  movl %eax, 0x194(%rsp)                 #  278   0x84675  7      
  jg .L_85c60                            #  279   0x8467c  6      
  addl $0x8, %ebx                        #  280   0x84682  3      
  nop                                    #  281   0x84685  1      
  nop                                    #  282   0x84686  1      
.L_84820:                                #        0x84687  0      
  movl 0xa8(%rsp), %ecx                  #  283   0x84687  7      
  testl %ecx, %ecx                       #  284   0x8468e  2      
  je .L_84880                            #  285   0x84690  6      
  leal 0x1d0(%rsp), %eax                 #  286   0x84696  7      
  movl %ebx, %ebx                        #  287   0x8469d  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  288   0x8469f  9      
  nop                                    #  289   0x846a8  1      
  addl $0x2, 0x198(%rsp)                 #  290   0x846a9  8      
  movl %ebx, %ebx                        #  291   0x846b1  2      
  movl %eax, (%r15,%rbx,1)               #  292   0x846b3  4      
  movl 0x194(%rsp), %eax                 #  293   0x846b7  7      
  addl $0x1, %eax                        #  294   0x846be  3      
  cmpl $0x7, %eax                        #  295   0x846c1  3      
  nop                                    #  296   0x846c4  1      
  movl %eax, 0x194(%rsp)                 #  297   0x846c5  7      
  jg .L_85ca0                            #  298   0x846cc  6      
  addl $0x8, %ebx                        #  299   0x846d2  3      
  nop                                    #  300   0x846d5  1      
  nop                                    #  301   0x846d6  1      
.L_84880:                                #        0x846d7  0      
  cmpl $0x80, 0xa4(%rsp)                 #  302   0x846d7  8      
  je .L_85a60                            #  303   0x846df  6      
  nop                                    #  304   0x846e5  1      
.L_848a0:                                #        0x846e6  0      
  movl 0xac(%rsp), %r13d                 #  305   0x846e6  8      
  subl 0x7c(%rsp), %r13d                 #  306   0x846ee  5      
  testl %r13d, %r13d                     #  307   0x846f3  3      
  jle .L_849e0                           #  308   0x846f6  6      
  cmpl $0x10, %r13d                      #  309   0x846fc  4      
  jle .L_849a0                           #  310   0x84700  6      
  leal 0x190(%rsp), %ecx                 #  311   0x84706  7      
  movq %rbx, %rax                        #  312   0x8470d  3      
  movq 0x70(%rsp), %rbx                  #  313   0x84710  5      
  movq %rcx, (%rsp)                      #  314   0x84715  4      
  jmpq .L_84900                          #  315   0x84719  5      
  nop                                    #  316   0x8471e  1      
.L_848e0:                                #        0x8471f  0      
  subl $0x10, %r13d                      #  317   0x8471f  4      
  addl $0x8, %eax                        #  318   0x84723  3      
  cmpl $0x10, %r13d                      #  319   0x84726  4      
  jle .L_84980                           #  320   0x8472a  6      
  nop                                    #  321   0x84730  1      
.L_84900:                                #        0x84731  0      
  movl %eax, %eax                        #  322   0x84731  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  323   0x84733  9      
  movl 0x194(%rsp), %edx                 #  324   0x8473c  7      
  addl $0x10, 0x198(%rsp)                #  325   0x84743  8      
  nop                                    #  326   0x8474b  1      
  movl %eax, %eax                        #  327   0x8474c  2      
  movl $0x10024f20, (%r15,%rax,1)        #  328   0x8474e  8      
  addl $0x1, %edx                        #  329   0x84756  3      
  cmpl $0x7, %edx                        #  330   0x84759  3      
  movl %edx, 0x194(%rsp)                 #  331   0x8475c  7      
  jle .L_848e0                           #  332   0x84763  6      
  movl (%rsp), %edx                      #  333   0x84769  3      
  movl %ebx, %esi                        #  334   0x8476c  2      
  xchgw %ax, %ax                         #  335   0x8476e  3      
  movl %r14d, %edi                       #  336   0x84771  3      
  nop                                    #  337   0x84774  1      
  nop                                    #  338   0x84775  1      
  callq .__sprint_r                      #  339   0x84776  5      
  testl %eax, %eax                       #  340   0x8477b  2      
  jne .L_85980                           #  341   0x8477d  6      
  subl $0x10, %r13d                      #  342   0x84783  4      
  leal 0x150(%rsp), %eax                 #  343   0x84787  7      
  cmpl $0x10, %r13d                      #  344   0x8478e  4      
  jg .L_84900                            #  345   0x84792  6      
  nop                                    #  346   0x84798  1      
.L_84980:                                #        0x84799  0      
  movq %rax, %rbx                        #  347   0x84799  3      
  nop                                    #  348   0x8479c  1      
  nop                                    #  349   0x8479d  1      
.L_849a0:                                #        0x8479e  0      
  movl %ebx, %ebx                        #  350   0x8479e  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  351   0x847a0  5      
  movl 0x194(%rsp), %eax                 #  352   0x847a5  7      
  addl %r13d, 0x198(%rsp)                #  353   0x847ac  8      
  movl %ebx, %ebx                        #  354   0x847b4  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  355   0x847b6  8      
  addl $0x1, %eax                        #  356   0x847be  3      
  cmpl $0x7, %eax                        #  357   0x847c1  3      
  movl %eax, 0x194(%rsp)                 #  358   0x847c4  7      
  jg .L_85c20                            #  359   0x847cb  6      
  addl $0x8, %ebx                        #  360   0x847d1  3      
  nop                                    #  361   0x847d4  1      
.L_849e0:                                #        0x847d5  0      
  movl 0x7c(%rsp), %eax                  #  362   0x847d5  4      
  movl 0x98(%rsp), %esi                  #  363   0x847d9  7      
  movl %ebx, %ebx                        #  364   0x847e0  2      
  movl %eax, 0x4(%r15,%rbx,1)            #  365   0x847e2  5      
  addl %eax, 0x198(%rsp)                 #  366   0x847e7  7      
  movl 0x194(%rsp), %eax                 #  367   0x847ee  7      
  movl %ebx, %ebx                        #  368   0x847f5  2      
  movl %esi, (%r15,%rbx,1)               #  369   0x847f7  4      
  addl $0x1, %eax                        #  370   0x847fb  3      
  cmpl $0x7, %eax                        #  371   0x847fe  3      
  movl %eax, 0x194(%rsp)                 #  372   0x84801  7      
  jg .L_85ba0                            #  373   0x84808  6      
  addl $0x8, %ebx                        #  374   0x8480e  3      
  nop                                    #  375   0x84811  1      
.L_84a20:                                #        0x84812  0      
  andl $0x4, %r12d                       #  376   0x84812  4      
  je .L_84ba0                            #  377   0x84816  6      
  movl 0x88(%rsp), %r12d                 #  378   0x8481c  8      
  subl 0x68(%rsp), %r12d                 #  379   0x84824  5      
  testl %r12d, %r12d                     #  380   0x84829  3      
  jle .L_84ba0                           #  381   0x8482c  6      
  cmpl $0x10, %r12d                      #  382   0x84832  4      
  jle .L_84b20                           #  383   0x84836  6      
  movq %rbx, %rax                        #  384   0x8483c  3      
  leal 0x190(%rsp), %r13d                #  385   0x8483f  8      
  movq 0x70(%rsp), %rbx                  #  386   0x84847  5      
  jmpq .L_84a80                          #  387   0x8484c  5      
  nop                                    #  388   0x84851  1      
.L_84a60:                                #        0x84852  0      
  subl $0x10, %r12d                      #  389   0x84852  4      
  addl $0x8, %eax                        #  390   0x84856  3      
  cmpl $0x10, %r12d                      #  391   0x84859  4      
  jle .L_84b00                           #  392   0x8485d  6      
  nop                                    #  393   0x84863  1      
.L_84a80:                                #        0x84864  0      
  movl %eax, %eax                        #  394   0x84864  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  395   0x84866  9      
  movl 0x194(%rsp), %edx                 #  396   0x8486f  7      
  addl $0x10, 0x198(%rsp)                #  397   0x84876  8      
  nop                                    #  398   0x8487e  1      
  movl %eax, %eax                        #  399   0x8487f  2      
  movl $0x10024f30, (%r15,%rax,1)        #  400   0x84881  8      
  addl $0x1, %edx                        #  401   0x84889  3      
  cmpl $0x7, %edx                        #  402   0x8488c  3      
  movl %edx, 0x194(%rsp)                 #  403   0x8488f  7      
  jle .L_84a60                           #  404   0x84896  6      
  movl %r13d, %edx                       #  405   0x8489c  3      
  movl %ebx, %esi                        #  406   0x8489f  2      
  xchgw %ax, %ax                         #  407   0x848a1  3      
  movl %r14d, %edi                       #  408   0x848a4  3      
  nop                                    #  409   0x848a7  1      
  nop                                    #  410   0x848a8  1      
  callq .__sprint_r                      #  411   0x848a9  5      
  testl %eax, %eax                       #  412   0x848ae  2      
  jne .L_85980                           #  413   0x848b0  6      
  subl $0x10, %r12d                      #  414   0x848b6  4      
  leal 0x150(%rsp), %eax                 #  415   0x848ba  7      
  cmpl $0x10, %r12d                      #  416   0x848c1  4      
  jg .L_84a80                            #  417   0x848c5  6      
  nop                                    #  418   0x848cb  1      
.L_84b00:                                #        0x848cc  0      
  movq %rax, %rbx                        #  419   0x848cc  3      
  nop                                    #  420   0x848cf  1      
  nop                                    #  421   0x848d0  1      
.L_84b20:                                #        0x848d1  0      
  movl %ebx, %ebx                        #  422   0x848d1  2      
  movl %r12d, 0x4(%r15,%rbx,1)           #  423   0x848d3  5      
  movl 0x194(%rsp), %eax                 #  424   0x848d8  7      
  addl 0x198(%rsp), %r12d                #  425   0x848df  8      
  movl %ebx, %ebx                        #  426   0x848e7  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  427   0x848e9  8      
  addl $0x1, %eax                        #  428   0x848f1  3      
  cmpl $0x7, %eax                        #  429   0x848f4  3      
  movl %eax, 0x194(%rsp)                 #  430   0x848f7  7      
  movl %r12d, 0x198(%rsp)                #  431   0x848fe  8      
  jle .L_84bc0                           #  432   0x84906  6      
  movl 0x70(%rsp), %esi                  #  433   0x8490c  4      
  nop                                    #  434   0x84910  1      
  leal 0x190(%rsp), %edx                 #  435   0x84911  7      
  movl %r14d, %edi                       #  436   0x84918  3      
  xchgw %ax, %ax                         #  437   0x8491b  3      
  nop                                    #  438   0x8491e  1      
  callq .__sprint_r                      #  439   0x8491f  5      
  testl %eax, %eax                       #  440   0x84924  2      
  jne .L_85980                           #  441   0x84926  6      
  nop                                    #  442   0x8492c  1      
  nop                                    #  443   0x8492d  1      
.L_84ba0:                                #        0x8492e  0      
  movl 0x198(%rsp), %r12d                #  444   0x8492e  8      
  nop                                    #  445   0x84936  1      
  nop                                    #  446   0x84937  1      
.L_84bc0:                                #        0x84938  0      
  movl 0x88(%rsp), %edx                  #  447   0x84938  7      
  cmpl %edx, 0x68(%rsp)                  #  448   0x8493f  4      
  movl %edx, %eax                        #  449   0x84943  2      
  cmovgel 0x68(%rsp), %eax               #  450   0x84945  5      
  addl %eax, 0x8c(%rsp)                  #  451   0x8494a  7      
  testl %r12d, %r12d                     #  452   0x84951  3      
  nop                                    #  453   0x84954  1      
  jne .L_85be0                           #  454   0x84955  6      
  nop                                    #  455   0x8495b  1      
  nop                                    #  456   0x8495c  1      
.L_84c00:                                #        0x8495d  0      
  cmpq $0x0, 0x90(%rsp)                  #  457   0x8495d  9      
  movl $0x0, 0x194(%rsp)                 #  458   0x84966  11     
  leal 0x150(%rsp), %ebx                 #  459   0x84971  7      
  nop                                    #  460   0x84978  1      
  je .L_843e0                            #  461   0x84979  6      
  movl 0x90(%rsp), %esi                  #  462   0x8497f  7      
  movl %r14d, %edi                       #  463   0x84986  3      
  leal 0x150(%rsp), %ebx                 #  464   0x84989  7      
  nop                                    #  465   0x84990  1      
  callq ._free_r                         #  466   0x84991  5      
  jmpq .L_843e0                          #  467   0x84996  5      
  nop                                    #  468   0x8499b  1      
  nop                                    #  469   0x8499c  1      
.L_84c60:                                #        0x8499d  0      
  movl %edx, %edx                        #  470   0x8499d  2      
  movl %edx, %edx                        #  471   0x8499f  2      
  movq 0x10024c40(%r15,%rdx,8), %rdx     #  472   0x849a1  8      
  andl $0xffffffe0, %edx                 #  473   0x849a9  6      
  addq %r15, %rdx                        #  474   0x849af  3      
  jmpq %rdx                              #  475   0x849b2  2      
  nop                                    #  476   0x849b4  1      
  movl %r14d, %edi                       #  477   0x849b5  3      
  movl %r8d, 0x40(%rsp)                  #  478   0x849b8  5      
  nop                                    #  479   0x849bd  1      
  nop                                    #  480   0x849be  1      
  callq ._localeconv_r                   #  481   0x849bf  5      
  movl %eax, %eax                        #  482   0x849c4  2      
  movl %eax, %eax                        #  483   0x849c6  2      
  movl 0x4(%r15,%rax,1), %eax            #  484   0x849c8  5      
  movl %eax, %edi                        #  485   0x849cd  2      
  movq %rax, 0xd8(%rsp)                  #  486   0x849cf  8      
  nop                                    #  487   0x849d7  1      
  callq .strlen                          #  488   0x849d8  5      
  movl %r14d, %edi                       #  489   0x849dd  3      
  movl %eax, 0xd4(%rsp)                  #  490   0x849e0  7      
  xchgw %ax, %ax                         #  491   0x849e7  3      
  nop                                    #  492   0x849ea  1      
  callq ._localeconv_r                   #  493   0x849eb  5      
  movl %eax, %eax                        #  494   0x849f0  2      
  movl 0xd4(%rsp), %r9d                  #  495   0x849f2  8      
  movl 0x40(%rsp), %r8d                  #  496   0x849fa  5      
  movl %eax, %eax                        #  497   0x849ff  2      
  movl 0x8(%r15,%rax,1), %eax            #  498   0x84a01  5      
  testl %r9d, %r9d                       #  499   0x84a06  3      
  nop                                    #  500   0x84a09  1      
  movq %rax, 0xb0(%rsp)                  #  501   0x84a0a  8      
  je .L_84d40                            #  502   0x84a12  6      
  testq %rax, %rax                       #  503   0x84a18  3      
  je .L_84d40                            #  504   0x84a1b  6      
  movq 0xb0(%rsp), %rcx                  #  505   0x84a21  8      
  movl %ecx, %ecx                        #  506   0x84a29  2      
  cmpb $0x0, (%r15,%rcx,1)               #  507   0x84a2b  5      
  xchgw %ax, %ax                         #  508   0x84a30  3      
  jne .L_86a80                           #  509   0x84a33  6      
  nop                                    #  510   0x84a39  1      
  nop                                    #  511   0x84a3a  1      
.L_84d40:                                #        0x84a3b  0      
  movl %r13d, %r13d                      #  512   0x84a3b  3      
  movzbl (%r15,%r13,1), %eax             #  513   0x84a3e  5      
  jmpq .L_845a0                          #  514   0x84a43  5      
  nop                                    #  515   0x84a48  1      
  nop                                    #  516   0x84a49  1      
  orl $0x20, %r12d                       #  517   0x84a4a  4      
  movl %r13d, %r13d                      #  518   0x84a4e  3      
  movzbl (%r15,%r13,1), %eax             #  519   0x84a51  5      
  jmpq .L_845a0                          #  520   0x84a56  5      
  nop                                    #  521   0x84a5b  1      
  movq 0x80(%rsp), %rsi                  #  522   0x84a5c  8      
  movl %esi, %esi                        #  523   0x84a64  2      
  movl (%r15,%rsi,1), %eax               #  524   0x84a66  4      
  cmpl $0x2f, %eax                       #  525   0x84a6a  3      
  ja .L_863c0                            #  526   0x84a6d  6      
  movl %esi, %esi                        #  527   0x84a73  2      
  movl 0xc(%r15,%rsi,1), %edx            #  528   0x84a75  5      
  addl %eax, %edx                        #  529   0x84a7a  2      
  addl $0x8, %eax                        #  530   0x84a7c  3      
  movl %esi, %esi                        #  531   0x84a7f  2      
  movl %eax, (%r15,%rsi,1)               #  532   0x84a81  4      
  nop                                    #  533   0x84a85  1      
  nop                                    #  534   0x84a86  1      
.L_84dc0:                                #        0x84a87  0      
  movl %edx, %edx                        #  535   0x84a87  2      
  movl (%r15,%rdx,1), %edx               #  536   0x84a89  4      
  testl %edx, %edx                       #  537   0x84a8d  2      
  movl %edx, 0x88(%rsp)                  #  538   0x84a8f  7      
  jns .L_84d40                           #  539   0x84a96  6      
  negl 0x88(%rsp)                        #  540   0x84a9c  7      
  nop                                    #  541   0x84aa3  1      
  orl $0x4, %r12d                        #  542   0x84aa4  4      
  movl %r13d, %r13d                      #  543   0x84aa8  3      
  movzbl (%r15,%r13,1), %eax             #  544   0x84aab  5      
  jmpq .L_845a0                          #  545   0x84ab0  5      
  nop                                    #  546   0x84ab5  1      
.L_84e00:                                #        0x84ab6  0      
  movl 0x70(%rsp), %esi                  #  547   0x84ab6  4      
  movl %r14d, %edi                       #  548   0x84aba  3      
  nop                                    #  549   0x84abd  1      
  nop                                    #  550   0x84abe  1      
  callq .__swsetup_r                     #  551   0x84abf  5      
  testl %eax, %eax                       #  552   0x84ac4  2      
  jne .L_870c0                           #  553   0x84ac6  6      
  movq 0x70(%rsp), %rcx                  #  554   0x84acc  5      
  movl %ecx, %ecx                        #  555   0x84ad1  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  556   0x84ad3  6      
  movl %eax, %edx                        #  557   0x84ad9  2      
  andl $0x1a, %edx                       #  558   0x84adb  3      
  cmpl $0xa, %edx                        #  559   0x84ade  3      
  nop                                    #  560   0x84ae1  1      
  jne .L_84320                           #  561   0x84ae2  6      
  nop                                    #  562   0x84ae8  1      
  nop                                    #  563   0x84ae9  1      
.L_84e60:                                #        0x84aea  0      
  movq 0x70(%rsp), %rdx                  #  564   0x84aea  5      
  movl %edx, %edx                        #  565   0x84aef  2      
  cmpw $0x0, 0xe(%r15,%rdx,1)            #  566   0x84af1  7      
  js .L_84320                            #  567   0x84af8  6      
  testb $0x2, %ah                        #  568   0x84afe  3      
  je .L_85880                            #  569   0x84b01  6      
  nop                                    #  570   0x84b07  1      
.L_84e80:                                #        0x84b08  0      
  movl 0x80(%rsp), %ecx                  #  571   0x84b08  7      
  movl 0x70(%rsp), %esi                  #  572   0x84b0f  4      
  movl %ebx, %edx                        #  573   0x84b13  2      
  movl %r14d, %edi                       #  574   0x84b15  3      
  nop                                    #  575   0x84b18  1      
  callq .__sbprintf                      #  576   0x84b19  5      
  movl %eax, 0x8c(%rsp)                  #  577   0x84b1e  7      
  nop                                    #  578   0x84b25  1      
  nop                                    #  579   0x84b26  1      
.L_84ec0:                                #        0x84b27  0      
  movl 0x8c(%rsp), %eax                  #  580   0x84b27  7      
  addl $0x1e8, %esp                      #  581   0x84b2e  6      
  addq %r15, %rsp                        #  582   0x84b34  3      
  popq %rbx                              #  583   0x84b37  2      
  popq %r12                              #  584   0x84b39  3      
  popq %r13                              #  585   0x84b3c  3      
  popq %r14                              #  586   0x84b3f  3      
  popq %r11                              #  587   0x84b42  3      
  nop                                    #  588   0x84b45  1      
  andl $0xffffffe0, %r11d                #  589   0x84b46  7      
  addq %r15, %r11                        #  590   0x84b4d  3      
  jmpq %r11                              #  591   0x84b50  3      
  nop                                    #  592   0x84b53  1      
  nop                                    #  593   0x84b54  1      
.L_84f00:                                #        0x84b55  0      
  movl 0x70(%rsp), %esi                  #  594   0x84b55  4      
  leal 0x190(%rsp), %edx                 #  595   0x84b59  7      
  movl %r14d, %edi                       #  596   0x84b60  3      
  movl %ecx, 0x58(%rsp)                  #  597   0x84b63  4      
  nop                                    #  598   0x84b67  1      
  callq .__sprint_r                      #  599   0x84b68  5      
  testl %eax, %eax                       #  600   0x84b6d  2      
  movl 0x58(%rsp), %ecx                  #  601   0x84b6f  4      
  jne .L_85f40                           #  602   0x84b73  6      
  leal 0x150(%rsp), %ebx                 #  603   0x84b79  7      
  jmpq .L_84540                          #  604   0x84b80  5      
  nop                                    #  605   0x84b85  1      
.L_84f40:                                #        0x84b86  0      
  movl 0x70(%rsp), %edi                  #  606   0x84b86  4      
  addl $0x5c, %edi                       #  607   0x84b8a  3      
  nop                                    #  608   0x84b8d  1      
  nop                                    #  609   0x84b8e  1      
  callq .__local_lock_acquire_recursive  #  610   0x84b8f  5      
  movq 0x70(%rsp), %rsi                  #  611   0x84b94  5      
  movl %esi, %esi                        #  612   0x84b99  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  613   0x84b9b  6      
  movswl %dx, %eax                       #  614   0x84ba1  3      
  jmpq .L_842a0                          #  615   0x84ba4  5      
  nop                                    #  616   0x84ba9  1      
.L_84f80:                                #        0x84baa  0      
  movl %r14d, %edi                       #  617   0x84baa  3      
  nop                                    #  618   0x84bad  1      
  nop                                    #  619   0x84bae  1      
  callq .__sinit                         #  620   0x84baf  5      
  jmpq .L_84280                          #  621   0x84bb4  5      
  nop                                    #  622   0x84bb9  1      
  nop                                    #  623   0x84bba  1      
  movl %r13d, %r13d                      #  624   0x84bbb  3      
  movzbl (%r15,%r13,1), %eax             #  625   0x84bbe  5      
  cmpb $0x6c, %al                        #  626   0x84bc3  2      
  je .L_86940                            #  627   0x84bc5  6      
  orl $0x10, %r12d                       #  628   0x84bcb  4      
  jmpq .L_845a0                          #  629   0x84bcf  5      
  nop                                    #  630   0x84bd4  1      
  testb $0x20, %r12b                     #  631   0x84bd5  4      
  movq %r13, 0x60(%rsp)                  #  632   0x84bd9  5      
  je .L_86540                            #  633   0x84bde  6      
  movq 0x80(%rsp), %rdx                  #  634   0x84be4  8      
  movl %edx, %edx                        #  635   0x84bec  2      
  movl (%r15,%rdx,1), %eax               #  636   0x84bee  4      
  cmpl $0x2f, %eax                       #  637   0x84bf2  3      
  ja .L_86c00                            #  638   0x84bf5  6      
  movq %rdx, %rcx                        #  639   0x84bfb  3      
  movl %edx, %edx                        #  640   0x84bfe  2      
  movl 0xc(%r15,%rdx,1), %edx            #  641   0x84c00  5      
  addl %eax, %edx                        #  642   0x84c05  2      
  addl $0x8, %eax                        #  643   0x84c07  3      
  movl %ecx, %ecx                        #  644   0x84c0a  2      
  movl %eax, (%r15,%rcx,1)               #  645   0x84c0c  4      
  nop                                    #  646   0x84c10  1      
.L_85020:                                #        0x84c11  0      
  movl %edx, %edx                        #  647   0x84c11  2      
  movl (%r15,%rdx,1), %eax               #  648   0x84c13  4      
  movslq 0x8c(%rsp), %rdx                #  649   0x84c17  8      
  movl %eax, %eax                        #  650   0x84c1f  2      
  movq %rdx, (%r15,%rax,1)               #  651   0x84c21  4      
  jmpq .L_843e0                          #  652   0x84c25  5      
  nop                                    #  653   0x84c2a  1      
  movq 0x80(%rsp), %rdx                  #  654   0x84c2b  8      
  movq %r13, 0x60(%rsp)                  #  655   0x84c33  5      
  movl %edx, %edx                        #  656   0x84c38  2      
  movl (%r15,%rdx,1), %eax               #  657   0x84c3a  4      
  cmpl $0x2f, %eax                       #  658   0x84c3e  3      
  ja .L_86600                            #  659   0x84c41  6      
  movq %rdx, %rcx                        #  660   0x84c47  3      
  nop                                    #  661   0x84c4a  1      
  movl %edx, %edx                        #  662   0x84c4b  2      
  movl 0xc(%r15,%rdx,1), %edx            #  663   0x84c4d  5      
  addl %eax, %edx                        #  664   0x84c52  2      
  addl $0x8, %eax                        #  665   0x84c54  3      
  movl %ecx, %ecx                        #  666   0x84c57  2      
  movl %eax, (%r15,%rcx,1)               #  667   0x84c59  4      
  nop                                    #  668   0x84c5d  1      
.L_85080:                                #        0x84c5e  0      
  movl %edx, %edx                        #  669   0x84c5e  2      
  movl (%r15,%rdx,1), %r13d              #  670   0x84c60  4      
  orl $0x2, %r12d                        #  671   0x84c64  4      
  movb $0x30, 0x1d0(%rsp)                #  672   0x84c68  8      
  movb $0x78, 0x1d1(%rsp)                #  673   0x84c70  8      
  nop                                    #  674   0x84c78  1      
  movq $0x10023c01, 0xc0(%rsp)           #  675   0x84c79  12     
  movl $0x2, %eax                        #  676   0x84c85  5      
  testq %r13, %r13                       #  677   0x84c8a  3      
  setne %dl                              #  678   0x84c8d  3      
  nop                                    #  679   0x84c90  1      
.L_850c0:                                #        0x84c91  0      
  movb $0x0, 0x1df(%rsp)                 #  680   0x84c91  8      
  nop                                    #  681   0x84c99  1      
  nop                                    #  682   0x84c9a  1      
.L_850e0:                                #        0x84c9b  0      
  movl %r12d, %ecx                       #  683   0x84c9b  3      
  andb $0x7f, %cl                        #  684   0x84c9e  3      
  testl %r8d, %r8d                       #  685   0x84ca1  3      
  cmovnsl %ecx, %r12d                    #  686   0x84ca4  4      
  testl %r8d, %r8d                       #  687   0x84ca8  3      
  jne .L_85100                           #  688   0x84cab  6      
  testb %dl, %dl                         #  689   0x84cb1  2      
  je .L_85900                            #  690   0x84cb3  6      
  nop                                    #  691   0x84cb9  1      
.L_85100:                                #        0x84cba  0      
  cmpl $0x1, %eax                        #  692   0x84cba  3      
  je .L_85da0                            #  693   0x84cbd  6      
  cmpl $0x2, %eax                        #  694   0x84cc3  3      
  je .L_85d20                            #  695   0x84cc6  6      
  movq 0xb8(%rsp), %rax                  #  696   0x84ccc  8      
  movq %rax, %rdx                        #  697   0x84cd4  3      
  nop                                    #  698   0x84cd7  1      
.L_85120:                                #        0x84cd8  0      
  movl %r13d, %eax                       #  699   0x84cd8  3      
  shrq $0x3, %r13                        #  700   0x84cdb  4      
  subl $0x1, %edx                        #  701   0x84cdf  3      
  andl $0x7, %eax                        #  702   0x84ce2  3      
  addl $0x30, %eax                       #  703   0x84ce5  3      
  testq %r13, %r13                       #  704   0x84ce8  3      
  movl %edx, %edx                        #  705   0x84ceb  2      
  movb %al, (%r15,%rdx,1)                #  706   0x84ced  4      
  jne .L_85120                           #  707   0x84cf1  6      
  testb $0x1, %r12b                      #  708   0x84cf7  4      
  nop                                    #  709   0x84cfb  1      
  movq %rdx, 0x98(%rsp)                  #  710   0x84cfc  8      
  jne .L_86220                           #  711   0x84d04  6      
  movl 0xb8(%rsp), %ecx                  #  712   0x84d0a  7      
  subl %edx, %ecx                        #  713   0x84d11  2      
  movl %ecx, 0x7c(%rsp)                  #  714   0x84d13  4      
  nop                                    #  715   0x84d17  1      
  movq 0xb0(%rsp), %rcx                  #  716   0x84d18  8      
  nop                                    #  717   0x84d20  1      
  nop                                    #  718   0x84d21  1      
.L_85180:                                #        0x84d22  0      
  cmpl %r8d, 0x7c(%rsp)                  #  719   0x84d22  5      
  movl 0x7c(%rsp), %eax                  #  720   0x84d27  4      
  movl %r8d, 0xac(%rsp)                  #  721   0x84d2b  8      
  movq %rcx, 0xb0(%rsp)                  #  722   0x84d33  8      
  nop                                    #  723   0x84d3b  1      
  movq $0x0, 0x90(%rsp)                  #  724   0x84d3c  12     
  cmovll %r8d, %eax                      #  725   0x84d48  4      
  movl %eax, 0x68(%rsp)                  #  726   0x84d4c  4      
  nop                                    #  727   0x84d50  1      
.L_851c0:                                #        0x84d51  0      
  cmpb $0x1, 0x1df(%rsp)                 #  728   0x84d51  8      
  sbbl $0xffffffff, 0x68(%rsp)           #  729   0x84d59  8      
  jmpq .L_84640                          #  730   0x84d61  5      
  nop                                    #  731   0x84d66  1      
  testb $0x20, %r12b                     #  732   0x84d67  4      
  movq %r13, 0x60(%rsp)                  #  733   0x84d6b  5      
  movq $0x10023c01, 0xc0(%rsp)           #  734   0x84d70  12     
  je .L_856c0                            #  735   0x84d7c  6      
  nop                                    #  736   0x84d82  1      
.L_85200:                                #        0x84d83  0      
  movq 0x80(%rsp), %rcx                  #  737   0x84d83  8      
  movl %ecx, %ecx                        #  738   0x84d8b  2      
  movl (%r15,%rcx,1), %edx               #  739   0x84d8d  4      
  cmpl $0x2f, %edx                       #  740   0x84d91  3      
  ja .L_86380                            #  741   0x84d94  6      
  movq %rcx, %rsi                        #  742   0x84d9a  3      
  nop                                    #  743   0x84d9d  1      
  movl %ecx, %ecx                        #  744   0x84d9e  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  745   0x84da0  5      
  addl %edx, %ecx                        #  746   0x84da5  2      
  addl $0x8, %edx                        #  747   0x84da7  3      
  movl %esi, %esi                        #  748   0x84daa  2      
  movl %edx, (%r15,%rsi,1)               #  749   0x84dac  4      
  nop                                    #  750   0x84db0  1      
.L_85240:                                #        0x84db1  0      
  movl %ecx, %ecx                        #  751   0x84db1  2      
  movq (%r15,%rcx,1), %r13               #  752   0x84db3  4      
  nop                                    #  753   0x84db7  1      
  nop                                    #  754   0x84db8  1      
.L_85260:                                #        0x84db9  0      
  testq %r13, %r13                       #  755   0x84db9  3      
  setne %dl                              #  756   0x84dbc  3      
  je .L_852a0                            #  757   0x84dbf  6      
  testb $0x1, %r12b                      #  758   0x84dc5  4      
  je .L_852a0                            #  759   0x84dc9  6      
  movb $0x30, 0x1d0(%rsp)                #  760   0x84dcf  8      
  movb %al, 0x1d1(%rsp)                  #  761   0x84dd7  7      
  nop                                    #  762   0x84dde  1      
  orl $0x2, %r12d                        #  763   0x84ddf  4      
  nop                                    #  764   0x84de3  1      
  nop                                    #  765   0x84de4  1      
.L_852a0:                                #        0x84de5  0      
  andl $0xfffffbff, %r12d                #  766   0x84de5  7      
  movl $0x2, %eax                        #  767   0x84dec  5      
  jmpq .L_850c0                          #  768   0x84df1  5      
  nop                                    #  769   0x84df6  1      
  movb $0x2b, 0x1df(%rsp)                #  770   0x84df7  8      
  movl %r13d, %r13d                      #  771   0x84dff  3      
  movzbl (%r15,%r13,1), %eax             #  772   0x84e02  5      
  jmpq .L_845a0                          #  773   0x84e07  5      
  nop                                    #  774   0x84e0c  1      
  orb $0x80, %r12b                       #  775   0x84e0d  4      
  movl %r13d, %r13d                      #  776   0x84e11  3      
  movzbl (%r15,%r13,1), %eax             #  777   0x84e14  5      
  jmpq .L_845a0                          #  778   0x84e19  5      
  nop                                    #  779   0x84e1e  1      
  xorl %edx, %edx                        #  780   0x84e1f  2      
  nop                                    #  781   0x84e21  1      
  nop                                    #  782   0x84e22  1      
.L_85320:                                #        0x84e23  0      
  leal (%rdx,%rdx,4), %edx               #  783   0x84e23  3      
  leal -0x30(%rax,%rdx,2), %edx          #  784   0x84e26  4      
  movl %r13d, %r13d                      #  785   0x84e2a  3      
  movsbl (%r15,%r13,1), %eax             #  786   0x84e2d  5      
  addl $0x1, %r13d                       #  787   0x84e32  4      
  leal -0x30(%rax), %ecx                 #  788   0x84e36  3      
  cmpl $0x9, %ecx                        #  789   0x84e39  3      
  jbe .L_85320                           #  790   0x84e3c  6      
  nop                                    #  791   0x84e42  1      
  movl %edx, 0x88(%rsp)                  #  792   0x84e43  7      
  jmpq .L_845c0                          #  793   0x84e4a  5      
  nop                                    #  794   0x84e4f  1      
  nop                                    #  795   0x84e50  1      
  cmpl $0x43, %eax                       #  796   0x84e51  3      
  movq %r13, 0x60(%rsp)                  #  797   0x84e54  5      
  je .L_86140                            #  798   0x84e59  6      
  testb $0x10, %r12b                     #  799   0x84e5f  4      
  jne .L_86140                           #  800   0x84e63  6      
  movq 0x80(%rsp), %rdx                  #  801   0x84e69  8      
  movl %edx, %edx                        #  802   0x84e71  2      
  movl (%r15,%rdx,1), %eax               #  803   0x84e73  4      
  cmpl $0x2f, %eax                       #  804   0x84e77  3      
  jbe .L_86c60                           #  805   0x84e7a  6      
  movq 0x80(%rsp), %rsi                  #  806   0x84e80  8      
  movl %esi, %esi                        #  807   0x84e88  2      
  movl 0x8(%r15,%rsi,1), %edx            #  808   0x84e8a  5      
  xchgw %ax, %ax                         #  809   0x84e8f  3      
  leal 0x8(%rdx), %eax                   #  810   0x84e92  3      
  movl %esi, %esi                        #  811   0x84e95  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  812   0x84e97  5      
  nop                                    #  813   0x84e9c  1      
  nop                                    #  814   0x84e9d  1      
.L_853c0:                                #        0x84e9e  0      
  movl %edx, %edx                        #  815   0x84e9e  2      
  movl (%r15,%rdx,1), %eax               #  816   0x84ea0  4      
  movl $0x1, 0x7c(%rsp)                  #  817   0x84ea4  8      
  movb %al, 0xe0(%rsp)                   #  818   0x84eac  7      
  jmpq .L_861e0                          #  819   0x84eb3  5      
  nop                                    #  820   0x84eb8  1      
  movq %r13, 0x60(%rsp)                  #  821   0x84eb9  5      
  orl $0x10, %r12d                       #  822   0x84ebe  4      
  nop                                    #  823   0x84ec2  1      
  nop                                    #  824   0x84ec3  1      
.L_85400:                                #        0x84ec4  0      
  testb $0x20, %r12b                     #  825   0x84ec4  4      
  je .L_85de0                            #  826   0x84ec8  6      
  movq 0x80(%rsp), %rcx                  #  827   0x84ece  8      
  movl %ecx, %ecx                        #  828   0x84ed6  2      
  movl (%r15,%rcx,1), %eax               #  829   0x84ed8  4      
  cmpl $0x2f, %eax                       #  830   0x84edc  3      
  nop                                    #  831   0x84edf  1      
  ja .L_86520                            #  832   0x84ee0  6      
  movl %ecx, %ecx                        #  833   0x84ee6  2      
  movl 0xc(%r15,%rcx,1), %edx            #  834   0x84ee8  5      
  addl %eax, %edx                        #  835   0x84eed  2      
  addl $0x8, %eax                        #  836   0x84eef  3      
  movl %ecx, %ecx                        #  837   0x84ef2  2      
  movl %eax, (%r15,%rcx,1)               #  838   0x84ef4  4      
  nop                                    #  839   0x84ef8  1      
.L_85440:                                #        0x84ef9  0      
  movl %edx, %edx                        #  840   0x84ef9  2      
  movq (%r15,%rdx,1), %r13               #  841   0x84efb  4      
  nop                                    #  842   0x84eff  1      
  nop                                    #  843   0x84f00  1      
.L_85460:                                #        0x84f01  0      
  cmpq $0x0, %r13                        #  844   0x84f01  4      
  jl .L_86280                            #  845   0x84f05  6      
  setne %dl                              #  846   0x84f0b  3      
  movl $0x1, %eax                        #  847   0x84f0e  5      
  jmpq .L_850e0                          #  848   0x84f13  5      
  nop                                    #  849   0x84f18  1      
  orl $0x1, %r12d                        #  850   0x84f19  4      
  movl %r13d, %r13d                      #  851   0x84f1d  3      
  movzbl (%r15,%r13,1), %eax             #  852   0x84f20  5      
  jmpq .L_845a0                          #  853   0x84f25  5      
  nop                                    #  854   0x84f2a  1      
  movl %r13d, %r13d                      #  855   0x84f2b  3      
  movzbl (%r15,%r13,1), %eax             #  856   0x84f2e  5      
  cmpb $0x68, %al                        #  857   0x84f33  2      
  je .L_86920                            #  858   0x84f35  6      
  orl $0x40, %r12d                       #  859   0x84f3b  4      
  jmpq .L_845a0                          #  860   0x84f3f  5      
  nop                                    #  861   0x84f44  1      
  movq %r13, 0x60(%rsp)                  #  862   0x84f45  5      
  orl $0x10, %r12d                       #  863   0x84f4a  4      
  nop                                    #  864   0x84f4e  1      
  nop                                    #  865   0x84f4f  1      
.L_854e0:                                #        0x84f50  0      
  testb $0x20, %r12b                     #  866   0x84f50  4      
  je .L_85ea0                            #  867   0x84f54  6      
  movq 0x80(%rsp), %rcx                  #  868   0x84f5a  8      
  movl %ecx, %ecx                        #  869   0x84f62  2      
  movl (%r15,%rcx,1), %eax               #  870   0x84f64  4      
  cmpl $0x2f, %eax                       #  871   0x84f68  3      
  nop                                    #  872   0x84f6b  1      
  ja .L_86400                            #  873   0x84f6c  6      
  movl %ecx, %ecx                        #  874   0x84f72  2      
  movl 0xc(%r15,%rcx,1), %edx            #  875   0x84f74  5      
  addl %eax, %edx                        #  876   0x84f79  2      
  addl $0x8, %eax                        #  877   0x84f7b  3      
  movl %ecx, %ecx                        #  878   0x84f7e  2      
  movl %eax, (%r15,%rcx,1)               #  879   0x84f80  4      
  nop                                    #  880   0x84f84  1      
.L_85520:                                #        0x84f85  0      
  movl %edx, %edx                        #  881   0x84f85  2      
  movq (%r15,%rdx,1), %r13               #  882   0x84f87  4      
  nop                                    #  883   0x84f8b  1      
  nop                                    #  884   0x84f8c  1      
.L_85540:                                #        0x84f8d  0      
  andl $0xfffffbff, %r12d                #  885   0x84f8d  7      
  testq %r13, %r13                       #  886   0x84f94  3      
  setne %dl                              #  887   0x84f97  3      
  xorl %eax, %eax                        #  888   0x84f9a  2      
  jmpq .L_850c0                          #  889   0x84f9c  5      
  nop                                    #  890   0x84fa1  1      
  movl %r13d, %r13d                      #  891   0x84fa2  3      
  movsbl (%r15,%r13,1), %eax             #  892   0x84fa5  5      
  addl $0x1, %r13d                       #  893   0x84faa  4      
  cmpl $0x2a, %eax                       #  894   0x84fae  3      
  je .L_87340                            #  895   0x84fb1  6      
  leal -0x30(%rax), %ecx                 #  896   0x84fb7  3      
  xorl %edx, %edx                        #  897   0x84fba  2      
  xorl %r8d, %r8d                        #  898   0x84fbc  3      
  cmpl $0x9, %ecx                        #  899   0x84fbf  3      
  ja .L_845c0                            #  900   0x84fc2  6      
  nop                                    #  901   0x84fc8  1      
  nop                                    #  902   0x84fc9  1      
.L_855a0:                                #        0x84fca  0      
  movl %r13d, %r13d                      #  903   0x84fca  3      
  movsbl (%r15,%r13,1), %eax             #  904   0x84fcd  5      
  leal (%rdx,%rdx,4), %edx               #  905   0x84fd2  3      
  addl $0x1, %r13d                       #  906   0x84fd5  4      
  leal (%rcx,%rdx,2), %edx               #  907   0x84fd9  3      
  leal -0x30(%rax), %ecx                 #  908   0x84fdc  3      
  cmpl $0x9, %ecx                        #  909   0x84fdf  3      
  jbe .L_855a0                           #  910   0x84fe2  6      
  testl %edx, %edx                       #  911   0x84fe8  2      
  nop                                    #  912   0x84fea  1      
  movl $0xffffffff, %r8d                 #  913   0x84feb  6      
  cmovnsl %edx, %r8d                     #  914   0x84ff1  4      
  jmpq .L_845c0                          #  915   0x84ff5  5      
  xchgw %ax, %ax                         #  916   0x84ffa  3      
  nop                                    #  917   0x84ffd  1      
  cmpb $0x0, 0x1df(%rsp)                 #  918   0x84ffe  8      
  jne .L_84d40                           #  919   0x85006  6      
  movb $0x20, 0x1df(%rsp)                #  920   0x8500c  8      
  movl %r13d, %r13d                      #  921   0x85014  3      
  movzbl (%r15,%r13,1), %eax             #  922   0x85017  5      
  xchgw %ax, %ax                         #  923   0x8501c  3      
  jmpq .L_845a0                          #  924   0x8501f  5      
  nop                                    #  925   0x85024  1      
  nop                                    #  926   0x85025  1      
  movq %r13, 0x60(%rsp)                  #  927   0x85026  5      
  orl $0x10, %r12d                       #  928   0x8502b  4      
  nop                                    #  929   0x8502f  1      
  nop                                    #  930   0x85030  1      
.L_85640:                                #        0x85031  0      
  testb $0x20, %r12b                     #  931   0x85031  4      
  je .L_85e40                            #  932   0x85035  6      
  movq 0x80(%rsp), %rdx                  #  933   0x8503b  8      
  movl %edx, %edx                        #  934   0x85043  2      
  movl (%r15,%rdx,1), %eax               #  935   0x85045  4      
  cmpl $0x2f, %eax                       #  936   0x85049  3      
  nop                                    #  937   0x8504c  1      
  ja .L_862e0                            #  938   0x8504d  6      
  movq %rdx, %rcx                        #  939   0x85053  3      
  movl %edx, %edx                        #  940   0x85056  2      
  movl 0xc(%r15,%rdx,1), %edx            #  941   0x85058  5      
  addl %eax, %edx                        #  942   0x8505d  2      
  addl $0x8, %eax                        #  943   0x8505f  3      
  movl %ecx, %ecx                        #  944   0x85062  2      
  movl %eax, (%r15,%rcx,1)               #  945   0x85064  4      
  nop                                    #  946   0x85068  1      
.L_85680:                                #        0x85069  0      
  movl %edx, %edx                        #  947   0x85069  2      
  movq (%r15,%rdx,1), %r13               #  948   0x8506b  4      
  movl $0x1, %eax                        #  949   0x8506f  5      
  testq %r13, %r13                       #  950   0x85074  3      
  setne %dl                              #  951   0x85077  3      
  jmpq .L_850c0                          #  952   0x8507a  5      
  nop                                    #  953   0x8507f  1      
  testb $0x20, %r12b                     #  954   0x85080  4      
  movq %r13, 0x60(%rsp)                  #  955   0x85084  5      
  movq $0x10023be0, 0xc0(%rsp)           #  956   0x85089  12     
  jne .L_85200                           #  957   0x85095  6      
  nop                                    #  958   0x8509b  1      
.L_856c0:                                #        0x8509c  0      
  testb $0x10, %r12b                     #  959   0x8509c  4      
  je .L_86300                            #  960   0x850a0  6      
  movq 0x80(%rsp), %rcx                  #  961   0x850a6  8      
  movl %ecx, %ecx                        #  962   0x850ae  2      
  movl (%r15,%rcx,1), %edx               #  963   0x850b0  4      
  cmpl $0x2f, %edx                       #  964   0x850b4  3      
  nop                                    #  965   0x850b7  1      
  ja .L_86ac0                            #  966   0x850b8  6      
  movq %rcx, %rsi                        #  967   0x850be  3      
  movl %ecx, %ecx                        #  968   0x850c1  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  969   0x850c3  5      
  addl %edx, %ecx                        #  970   0x850c8  2      
  addl $0x8, %edx                        #  971   0x850ca  3      
  movl %esi, %esi                        #  972   0x850cd  2      
  movl %edx, (%r15,%rsi,1)               #  973   0x850cf  4      
  nop                                    #  974   0x850d3  1      
.L_85700:                                #        0x850d4  0      
  movl %ecx, %ecx                        #  975   0x850d4  2      
  movl (%r15,%rcx,1), %r13d              #  976   0x850d6  4      
  jmpq .L_85260                          #  977   0x850da  5      
  nop                                    #  978   0x850df  1      
  nop                                    #  979   0x850e0  1      
  movq 0x80(%rsp), %rcx                  #  980   0x850e1  8      
  movq %r13, 0x60(%rsp)                  #  981   0x850e9  5      
  movl %ecx, %ecx                        #  982   0x850ee  2      
  movl (%r15,%rcx,1), %edx               #  983   0x850f0  4      
  cmpl $0x2f, %edx                       #  984   0x850f4  3      
  ja .L_865c0                            #  985   0x850f7  6      
  movq %rcx, %rsi                        #  986   0x850fd  3      
  nop                                    #  987   0x85100  1      
  movl %ecx, %ecx                        #  988   0x85101  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  989   0x85103  5      
  addl %edx, %ecx                        #  990   0x85108  2      
  addl $0x8, %edx                        #  991   0x8510a  3      
  movl %esi, %esi                        #  992   0x8510d  2      
  movl %edx, (%r15,%rsi,1)               #  993   0x8510f  4      
  nop                                    #  994   0x85113  1      
.L_85760:                                #        0x85114  0      
  movl %ecx, %ecx                        #  995   0x85114  2      
  movl (%r15,%rcx,1), %ecx               #  996   0x85116  4      
  movb $0x0, 0x1df(%rsp)                 #  997   0x8511a  8      
  testq %rcx, %rcx                       #  998   0x85122  3      
  movq %rcx, 0x98(%rsp)                  #  999   0x85125  8      
  je .L_86d40                            #  1000  0x8512d  6      
  nop                                    #  1001  0x85133  1      
  cmpl $0x53, %eax                       #  1002  0x85134  3      
  je .L_866a0                            #  1003  0x85137  6      
  movl %r12d, %r13d                      #  1004  0x8513d  3      
  andl $0x10, %r13d                      #  1005  0x85140  4      
  jne .L_866a0                           #  1006  0x85144  6      
  testl %r8d, %r8d                       #  1007  0x8514a  3      
  js .L_87060                            #  1008  0x8514d  6      
  nop                                    #  1009  0x85153  1      
  movl 0x98(%rsp), %edi                  #  1010  0x85154  7      
  movl %r8d, %edx                        #  1011  0x8515b  3      
  xorl %esi, %esi                        #  1012  0x8515e  2      
  movl %r8d, 0x40(%rsp)                  #  1013  0x85160  5      
  nop                                    #  1014  0x85165  1      
  callq .memchr                          #  1015  0x85166  5      
  movl %eax, %eax                        #  1016  0x8516b  2      
  movl 0x40(%rsp), %r8d                  #  1017  0x8516d  5      
  testq %rax, %rax                       #  1018  0x85172  3      
  je .L_86cc0                            #  1019  0x85175  6      
  subl 0x98(%rsp), %eax                  #  1020  0x8517b  7      
  cmpl %eax, %r8d                        #  1021  0x85182  3      
  movl %eax, 0x7c(%rsp)                  #  1022  0x85185  4      
  xchgw %ax, %ax                         #  1023  0x85189  3      
  jge .L_87020                           #  1024  0x8518c  6      
  testl %r8d, %r8d                       #  1025  0x85192  3      
  movl %r8d, 0x7c(%rsp)                  #  1026  0x85195  5      
  movq $0x0, 0x90(%rsp)                  #  1027  0x8519a  12     
  cmovnsl %r8d, %r13d                    #  1028  0x851a6  4      
  xchgw %ax, %ax                         #  1029  0x851aa  3      
  movl $0x0, 0xac(%rsp)                  #  1030  0x851ad  11     
  movl %r13d, 0x68(%rsp)                 #  1031  0x851b8  5      
  jmpq .L_851c0                          #  1032  0x851bd  5      
  nop                                    #  1033  0x851c2  1      
  movq %r13, 0x60(%rsp)                  #  1034  0x851c3  5      
  jmpq .L_85640                          #  1035  0x851c8  5      
  nop                                    #  1036  0x851cd  1      
  nop                                    #  1037  0x851ce  1      
  movq %r13, 0x60(%rsp)                  #  1038  0x851cf  5      
  jmpq .L_85400                          #  1039  0x851d4  5      
  nop                                    #  1040  0x851d9  1      
  nop                                    #  1041  0x851da  1      
  movq %r13, 0x60(%rsp)                  #  1042  0x851db  5      
  jmpq .L_854e0                          #  1043  0x851e0  5      
  nop                                    #  1044  0x851e5  1      
  nop                                    #  1045  0x851e6  1      
.L_85880:                                #        0x851e7  0      
  movl 0x70(%rsp), %edi                  #  1046  0x851e7  4      
  addl $0x5c, %edi                       #  1047  0x851eb  3      
  nop                                    #  1048  0x851ee  1      
  nop                                    #  1049  0x851ef  1      
  callq .__local_lock_release_recursive  #  1050  0x851f0  5      
  jmpq .L_84e80                          #  1051  0x851f5  5      
  nop                                    #  1052  0x851fa  1      
  nop                                    #  1053  0x851fb  1      
.L_858c0:                                #        0x851fc  0      
  movl 0x198(%rsp), %edx                 #  1054  0x851fc  7      
  testl %edx, %edx                       #  1055  0x85203  2      
  jne .L_86c80                           #  1056  0x85205  6      
  xchgw %ax, %ax                         #  1057  0x8520b  3      
  nop                                    #  1058  0x8520e  1      
.L_858e0:                                #        0x8520f  0      
  movq 0x70(%rsp), %rsi                  #  1059  0x8520f  5      
  movl $0x0, 0x194(%rsp)                 #  1060  0x85214  11     
  movl %esi, %esi                        #  1061  0x8521f  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  1062  0x85221  6      
  jmpq .L_859c0                          #  1063  0x85227  5      
  nop                                    #  1064  0x8522c  1      
.L_85900:                                #        0x8522d  0      
  testl %eax, %eax                       #  1065  0x8522d  2      
  jne .L_85a20                           #  1066  0x8522f  6      
  testb $0x1, %r12b                      #  1067  0x85235  4      
  je .L_85a20                            #  1068  0x85239  6      
  movq 0xc8(%rsp), %rcx                  #  1069  0x8523f  8      
  nop                                    #  1070  0x85247  1      
  movq %rcx, 0x98(%rsp)                  #  1071  0x85248  8      
  movl %ecx, %ecx                        #  1072  0x85250  2      
  movb $0x30, (%r15,%rcx,1)              #  1073  0x85252  5      
  movl $0x1, 0x7c(%rsp)                  #  1074  0x85257  8      
  movq 0xb0(%rsp), %rcx                  #  1075  0x8525f  8      
  nop                                    #  1076  0x85267  1      
  jmpq .L_85180                          #  1077  0x85268  5      
  nop                                    #  1078  0x8526d  1      
  nop                                    #  1079  0x8526e  1      
.L_85960:                                #        0x8526f  0      
  movq 0x70(%rsp), %rsi                  #  1080  0x8526f  5      
  movl %esi, %esi                        #  1081  0x85274  2      
  orw $0x40, 0xc(%r15,%rsi,1)            #  1082  0x85276  7      
  nop                                    #  1083  0x8527d  1      
  nop                                    #  1084  0x8527e  1      
.L_85980:                                #        0x8527f  0      
  cmpq $0x0, 0x90(%rsp)                  #  1085  0x8527f  9      
  je .L_85f40                            #  1086  0x85288  6      
  movl 0x90(%rsp), %esi                  #  1087  0x8528e  7      
  movl %r14d, %edi                       #  1088  0x85295  3      
  xchgw %ax, %ax                         #  1089  0x85298  3      
  callq ._free_r                         #  1090  0x8529b  5      
.L_859a0:                                #        0x852a0  0      
  movq 0x70(%rsp), %rcx                  #  1091  0x852a0  5      
  movl %ecx, %ecx                        #  1092  0x852a5  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1093  0x852a7  6      
  nop                                    #  1094  0x852ad  1      
  nop                                    #  1095  0x852ae  1      
.L_859c0:                                #        0x852af  0      
  cwtl                                   #  1096  0x852af  1      
  testb $0x2, %ah                        #  1097  0x852b0  3      
  je .L_85ce0                            #  1098  0x852b3  6      
  nop                                    #  1099  0x852b9  1      
  nop                                    #  1100  0x852ba  1      
.L_859e0:                                #        0x852bb  0      
  testb $0x40, %al                       #  1101  0x852bb  2      
  je .L_84ec0                            #  1102  0x852bd  6      
  nop                                    #  1103  0x852c3  1      
  nop                                    #  1104  0x852c4  1      
.L_85a00:                                #        0x852c5  0      
  movl $0xffffffff, 0x8c(%rsp)           #  1105  0x852c5  11     
  jmpq .L_84ec0                          #  1106  0x852d0  5      
  nop                                    #  1107  0x852d5  1      
  nop                                    #  1108  0x852d6  1      
.L_85a20:                                #        0x852d7  0      
  movq 0xb8(%rsp), %rsi                  #  1109  0x852d7  8      
  movq 0xb0(%rsp), %rcx                  #  1110  0x852df  8      
  movl $0x0, 0x7c(%rsp)                  #  1111  0x852e7  8      
  movq %rsi, 0x98(%rsp)                  #  1112  0x852ef  8      
  jmpq .L_85180                          #  1113  0x852f7  5      
  nop                                    #  1114  0x852fc  1      
  nop                                    #  1115  0x852fd  1      
.L_85a60:                                #        0x852fe  0      
  movl 0x88(%rsp), %r13d                 #  1116  0x852fe  8      
  subl 0x68(%rsp), %r13d                 #  1117  0x85306  5      
  testl %r13d, %r13d                     #  1118  0x8530b  3      
  jle .L_848a0                           #  1119  0x8530e  6      
  cmpl $0x10, %r13d                      #  1120  0x85314  4      
  jle .L_85b60                           #  1121  0x85318  6      
  leal 0x190(%rsp), %edx                 #  1122  0x8531e  7      
  movq %rbx, %rax                        #  1123  0x85325  3      
  movq 0x70(%rsp), %rbx                  #  1124  0x85328  5      
  movq %rdx, 0x8(%rsp)                   #  1125  0x8532d  5      
  jmpq .L_85ac0                          #  1126  0x85332  5      
  nop                                    #  1127  0x85337  1      
.L_85aa0:                                #        0x85338  0      
  subl $0x10, %r13d                      #  1128  0x85338  4      
  addl $0x8, %eax                        #  1129  0x8533c  3      
  cmpl $0x10, %r13d                      #  1130  0x8533f  4      
  jle .L_85b40                           #  1131  0x85343  6      
  nop                                    #  1132  0x85349  1      
.L_85ac0:                                #        0x8534a  0      
  movl %eax, %eax                        #  1133  0x8534a  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1134  0x8534c  9      
  movl 0x194(%rsp), %edx                 #  1135  0x85355  7      
  addl $0x10, 0x198(%rsp)                #  1136  0x8535c  8      
  nop                                    #  1137  0x85364  1      
  movl %eax, %eax                        #  1138  0x85365  2      
  movl $0x10024f20, (%r15,%rax,1)        #  1139  0x85367  8      
  addl $0x1, %edx                        #  1140  0x8536f  3      
  cmpl $0x7, %edx                        #  1141  0x85372  3      
  movl %edx, 0x194(%rsp)                 #  1142  0x85375  7      
  jle .L_85aa0                           #  1143  0x8537c  6      
  movl 0x8(%rsp), %edx                   #  1144  0x85382  4      
  movl %ebx, %esi                        #  1145  0x85386  2      
  nop                                    #  1146  0x85388  1      
  movl %r14d, %edi                       #  1147  0x85389  3      
  nop                                    #  1148  0x8538c  1      
  nop                                    #  1149  0x8538d  1      
  callq .__sprint_r                      #  1150  0x8538e  5      
  testl %eax, %eax                       #  1151  0x85393  2      
  jne .L_85980                           #  1152  0x85395  6      
  subl $0x10, %r13d                      #  1153  0x8539b  4      
  leal 0x150(%rsp), %eax                 #  1154  0x8539f  7      
  cmpl $0x10, %r13d                      #  1155  0x853a6  4      
  jg .L_85ac0                            #  1156  0x853aa  6      
  nop                                    #  1157  0x853b0  1      
.L_85b40:                                #        0x853b1  0      
  movq %rax, %rbx                        #  1158  0x853b1  3      
  nop                                    #  1159  0x853b4  1      
  nop                                    #  1160  0x853b5  1      
.L_85b60:                                #        0x853b6  0      
  movl %ebx, %ebx                        #  1161  0x853b6  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  1162  0x853b8  5      
  movl 0x194(%rsp), %eax                 #  1163  0x853bd  7      
  addl %r13d, 0x198(%rsp)                #  1164  0x853c4  8      
  movl %ebx, %ebx                        #  1165  0x853cc  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  1166  0x853ce  8      
  addl $0x1, %eax                        #  1167  0x853d6  3      
  cmpl $0x7, %eax                        #  1168  0x853d9  3      
  movl %eax, 0x194(%rsp)                 #  1169  0x853dc  7      
  jg .L_862a0                            #  1170  0x853e3  6      
  addl $0x8, %ebx                        #  1171  0x853e9  3      
  jmpq .L_848a0                          #  1172  0x853ec  5      
  nop                                    #  1173  0x853f1  1      
.L_85ba0:                                #        0x853f2  0      
  movl 0x70(%rsp), %esi                  #  1174  0x853f2  4      
  leal 0x190(%rsp), %edx                 #  1175  0x853f6  7      
  movl %r14d, %edi                       #  1176  0x853fd  3      
  nop                                    #  1177  0x85400  1      
  callq .__sprint_r                      #  1178  0x85401  5      
  testl %eax, %eax                       #  1179  0x85406  2      
  jne .L_85980                           #  1180  0x85408  6      
  leal 0x150(%rsp), %ebx                 #  1181  0x8540e  7      
  jmpq .L_84a20                          #  1182  0x85415  5      
  nop                                    #  1183  0x8541a  1      
.L_85be0:                                #        0x8541b  0      
  movl 0x70(%rsp), %esi                  #  1184  0x8541b  4      
  leal 0x190(%rsp), %edx                 #  1185  0x8541f  7      
  movl %r14d, %edi                       #  1186  0x85426  3      
  nop                                    #  1187  0x85429  1      
  callq .__sprint_r                      #  1188  0x8542a  5      
  testl %eax, %eax                       #  1189  0x8542f  2      
  je .L_84c00                            #  1190  0x85431  6      
  jmpq .L_85980                          #  1191  0x85437  5      
  nop                                    #  1192  0x8543c  1      
  nop                                    #  1193  0x8543d  1      
.L_85c20:                                #        0x8543e  0      
  movl 0x70(%rsp), %esi                  #  1194  0x8543e  4      
  leal 0x190(%rsp), %edx                 #  1195  0x85442  7      
  movl %r14d, %edi                       #  1196  0x85449  3      
  nop                                    #  1197  0x8544c  1      
  callq .__sprint_r                      #  1198  0x8544d  5      
  testl %eax, %eax                       #  1199  0x85452  2      
  jne .L_85980                           #  1200  0x85454  6      
  leal 0x150(%rsp), %ebx                 #  1201  0x8545a  7      
  jmpq .L_849e0                          #  1202  0x85461  5      
  nop                                    #  1203  0x85466  1      
.L_85c60:                                #        0x85467  0      
  movl 0x70(%rsp), %esi                  #  1204  0x85467  4      
  leal 0x190(%rsp), %edx                 #  1205  0x8546b  7      
  movl %r14d, %edi                       #  1206  0x85472  3      
  nop                                    #  1207  0x85475  1      
  callq .__sprint_r                      #  1208  0x85476  5      
  testl %eax, %eax                       #  1209  0x8547b  2      
  jne .L_85980                           #  1210  0x8547d  6      
  leal 0x150(%rsp), %ebx                 #  1211  0x85483  7      
  jmpq .L_84820                          #  1212  0x8548a  5      
  nop                                    #  1213  0x8548f  1      
.L_85ca0:                                #        0x85490  0      
  movl 0x70(%rsp), %esi                  #  1214  0x85490  4      
  leal 0x190(%rsp), %edx                 #  1215  0x85494  7      
  movl %r14d, %edi                       #  1216  0x8549b  3      
  nop                                    #  1217  0x8549e  1      
  callq .__sprint_r                      #  1218  0x8549f  5      
  testl %eax, %eax                       #  1219  0x854a4  2      
  jne .L_85980                           #  1220  0x854a6  6      
  leal 0x150(%rsp), %ebx                 #  1221  0x854ac  7      
  jmpq .L_84880                          #  1222  0x854b3  5      
  nop                                    #  1223  0x854b8  1      
.L_85ce0:                                #        0x854b9  0      
  movl 0x70(%rsp), %edi                  #  1224  0x854b9  4      
  addl $0x5c, %edi                       #  1225  0x854bd  3      
  nop                                    #  1226  0x854c0  1      
  nop                                    #  1227  0x854c1  1      
  callq .__local_lock_release_recursive  #  1228  0x854c2  5      
  movq 0x70(%rsp), %rsi                  #  1229  0x854c7  5      
  movl %esi, %esi                        #  1230  0x854cc  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1231  0x854ce  6      
  jmpq .L_859e0                          #  1232  0x854d4  5      
  nop                                    #  1233  0x854d9  1      
.L_85d20:                                #        0x854da  0      
  movq 0xb8(%rsp), %rax                  #  1234  0x854da  8      
  movq 0xc0(%rsp), %rcx                  #  1235  0x854e2  8      
  movq %rax, 0x98(%rsp)                  #  1236  0x854ea  8      
  nop                                    #  1237  0x854f2  1      
.L_85d40:                                #        0x854f3  0      
  movl %r13d, %edx                       #  1238  0x854f3  3      
  shrq $0x4, %r13                        #  1239  0x854f6  4      
  subl $0x1, %eax                        #  1240  0x854fa  3      
  andl $0xf, %edx                        #  1241  0x854fd  3      
  addl %ecx, %edx                        #  1242  0x85500  2      
  testq %r13, %r13                       #  1243  0x85502  3      
  movl %edx, %edx                        #  1244  0x85505  2      
  movzbl (%r15,%rdx,1), %edx             #  1245  0x85507  5      
  movl %eax, %eax                        #  1246  0x8550c  2      
  movb %dl, (%r15,%rax,1)                #  1247  0x8550e  4      
  nop                                    #  1248  0x85512  1      
  jne .L_85d40                           #  1249  0x85513  6      
  movl 0xb8(%rsp), %edx                  #  1250  0x85519  7      
  movq %rax, 0x98(%rsp)                  #  1251  0x85520  8      
  movq 0xb0(%rsp), %rcx                  #  1252  0x85528  8      
  subl %eax, %edx                        #  1253  0x85530  2      
  movl %edx, 0x7c(%rsp)                  #  1254  0x85532  4      
  nop                                    #  1255  0x85536  1      
  jmpq .L_85180                          #  1256  0x85537  5      
  nop                                    #  1257  0x8553c  1      
  nop                                    #  1258  0x8553d  1      
.L_85da0:                                #        0x8553e  0      
  cmpq $0x9, %r13                        #  1259  0x8553e  4      
  ja .L_85f60                            #  1260  0x85542  6      
  movq 0xc8(%rsp), %rcx                  #  1261  0x85548  8      
  addl $0x30, %r13d                      #  1262  0x85550  4      
  movq %rcx, 0x98(%rsp)                  #  1263  0x85554  8      
  xchgw %ax, %ax                         #  1264  0x8555c  3      
  movl %ecx, %ecx                        #  1265  0x8555f  2      
  movb %r13b, (%r15,%rcx,1)              #  1266  0x85561  4      
  movl $0x1, 0x7c(%rsp)                  #  1267  0x85565  8      
  movq 0xb0(%rsp), %rcx                  #  1268  0x8556d  8      
  jmpq .L_85180                          #  1269  0x85575  5      
  nop                                    #  1270  0x8557a  1      
.L_85de0:                                #        0x8557b  0      
  testb $0x10, %r12b                     #  1271  0x8557b  4      
  je .L_86620                            #  1272  0x8557f  6      
  movq 0x80(%rsp), %rdx                  #  1273  0x85585  8      
  movl %edx, %edx                        #  1274  0x8558d  2      
  movl (%r15,%rdx,1), %eax               #  1275  0x8558f  4      
  cmpl $0x2f, %eax                       #  1276  0x85593  3      
  nop                                    #  1277  0x85596  1      
  ja .L_86b00                            #  1278  0x85597  6      
  movq %rdx, %rcx                        #  1279  0x8559d  3      
  movl %edx, %edx                        #  1280  0x855a0  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1281  0x855a2  5      
  addl %eax, %edx                        #  1282  0x855a7  2      
  addl $0x8, %eax                        #  1283  0x855a9  3      
  movl %ecx, %ecx                        #  1284  0x855ac  2      
  movl %eax, (%r15,%rcx,1)               #  1285  0x855ae  4      
  nop                                    #  1286  0x855b2  1      
.L_85e20:                                #        0x855b3  0      
  movl %edx, %edx                        #  1287  0x855b3  2      
  movslq (%r15,%rdx,1), %r13             #  1288  0x855b5  4      
  jmpq .L_85460                          #  1289  0x855b9  5      
  nop                                    #  1290  0x855be  1      
  nop                                    #  1291  0x855bf  1      
.L_85e40:                                #        0x855c0  0      
  testb $0x10, %r12b                     #  1292  0x855c0  4      
  je .L_86420                            #  1293  0x855c4  6      
  movq 0x80(%rsp), %rdx                  #  1294  0x855ca  8      
  movl %edx, %edx                        #  1295  0x855d2  2      
  movl (%r15,%rdx,1), %eax               #  1296  0x855d4  4      
  cmpl $0x2f, %eax                       #  1297  0x855d8  3      
  nop                                    #  1298  0x855db  1      
  ja .L_86aa0                            #  1299  0x855dc  6      
  movq %rdx, %rcx                        #  1300  0x855e2  3      
  movl %edx, %edx                        #  1301  0x855e5  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1302  0x855e7  5      
  addl %eax, %edx                        #  1303  0x855ec  2      
  addl $0x8, %eax                        #  1304  0x855ee  3      
  movl %ecx, %ecx                        #  1305  0x855f1  2      
  movl %eax, (%r15,%rcx,1)               #  1306  0x855f3  4      
  nop                                    #  1307  0x855f7  1      
.L_85e80:                                #        0x855f8  0      
  movl %edx, %edx                        #  1308  0x855f8  2      
  movl (%r15,%rdx,1), %r13d              #  1309  0x855fa  4      
  movl $0x1, %eax                        #  1310  0x855fe  5      
  testq %r13, %r13                       #  1311  0x85603  3      
  setne %dl                              #  1312  0x85606  3      
  jmpq .L_850c0                          #  1313  0x85609  5      
  nop                                    #  1314  0x8560e  1      
.L_85ea0:                                #        0x8560f  0      
  testb $0x10, %r12b                     #  1315  0x8560f  4      
  je .L_864a0                            #  1316  0x85613  6      
  movq 0x80(%rsp), %rdx                  #  1317  0x85619  8      
  movl %edx, %edx                        #  1318  0x85621  2      
  movl (%r15,%rdx,1), %eax               #  1319  0x85623  4      
  cmpl $0x2f, %eax                       #  1320  0x85627  3      
  nop                                    #  1321  0x8562a  1      
  jbe .L_86b20                           #  1322  0x8562b  6      
  movq 0x80(%rsp), %rsi                  #  1323  0x85631  8      
  movl %esi, %esi                        #  1324  0x85639  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1325  0x8563b  5      
  leal 0x8(%rdx), %eax                   #  1326  0x85640  3      
  movl %esi, %esi                        #  1327  0x85643  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1328  0x85645  5      
  nop                                    #  1329  0x8564a  1      
.L_85ee0:                                #        0x8564b  0      
  movl %edx, %edx                        #  1330  0x8564b  2      
  movl (%r15,%rdx,1), %r13d              #  1331  0x8564d  4      
  jmpq .L_85540                          #  1332  0x85651  5      
  nop                                    #  1333  0x85656  1      
  nop                                    #  1334  0x85657  1      
.L_85f00:                                #        0x85658  0      
  movl 0x70(%rsp), %esi                  #  1335  0x85658  4      
  leal 0x190(%rsp), %edx                 #  1336  0x8565c  7      
  movl %r14d, %edi                       #  1337  0x85663  3      
  nop                                    #  1338  0x85666  1      
  callq .__sprint_r                      #  1339  0x85667  5      
  testl %eax, %eax                       #  1340  0x8566c  2      
  jne .L_85980                           #  1341  0x8566e  6      
  leal 0x150(%rsp), %ebx                 #  1342  0x85674  7      
  jmpq .L_847c0                          #  1343  0x8567b  5      
  nop                                    #  1344  0x85680  1      
.L_85f40:                                #        0x85681  0      
  movq 0x70(%rsp), %rdx                  #  1345  0x85681  5      
  movl %edx, %edx                        #  1346  0x85686  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  1347  0x85688  6      
  jmpq .L_859c0                          #  1348  0x8568e  5      
  nop                                    #  1349  0x85693  1      
.L_85f60:                                #        0x85694  0      
  movl 0xd4(%rsp), %r11d                 #  1350  0x85694  8      
  movq 0xb8(%rsp), %rsi                  #  1351  0x8569c  8      
  movl %r12d, %r10d                      #  1352  0x856a4  3      
  movl %r8d, 0x68(%rsp)                  #  1353  0x856a7  5      
  movl %r12d, %r8d                       #  1354  0x856ac  3      
  nop                                    #  1355  0x856af  1      
  movq 0xb0(%rsp), %r12                  #  1356  0x856b0  8      
  andl $0x400, %r10d                     #  1357  0x856b8  7      
  movq $0xcccccccccccccccd, %r9          #  1358  0x856bf  10     
  negl %r11d                             #  1359  0x856c9  3      
  nop                                    #  1360  0x856cc  1      
  movq %rsi, 0x98(%rsp)                  #  1361  0x856cd  8      
  xorl %esi, %esi                        #  1362  0x856d5  2      
  movl %r11d, 0x7c(%rsp)                 #  1363  0x856d7  5      
  movq %rbx, %r11                        #  1364  0x856dc  3      
  movq 0x98(%rsp), %rbx                  #  1365  0x856df  8      
  nop                                    #  1366  0x856e7  1      
.L_85fc0:                                #        0x856e8  0      
  movq %r13, %rax                        #  1367  0x856e8  3      
  subl $0x1, %ebx                        #  1368  0x856eb  3      
  mulq %r9                               #  1369  0x856ee  3      
  shrq $0x3, %rdx                        #  1370  0x856f1  4      
  leaq (%rdx,%rdx,4), %rax               #  1371  0x856f5  4      
  movq %r13, %rdx                        #  1372  0x856f9  3      
  addq %rax, %rax                        #  1373  0x856fc  3      
  subq %rax, %rdx                        #  1374  0x856ff  3      
  movq %rdx, %rax                        #  1375  0x85702  3      
  addl $0x30, %eax                       #  1376  0x85705  3      
  testl %r10d, %r10d                     #  1377  0x85708  3      
  movl %ebx, %ebx                        #  1378  0x8570b  2      
  movb %al, (%r15,%rbx,1)                #  1379  0x8570d  4      
  leal 0x1(%rsi), %eax                   #  1380  0x85711  3      
  je .L_86020                            #  1381  0x85714  6      
  movl %r12d, %r12d                      #  1382  0x8571a  3      
  movzbl (%r15,%r12,1), %edx             #  1383  0x8571d  5      
  movsbl %dl, %esi                       #  1384  0x85722  3      
  cmpl %eax, %esi                        #  1385  0x85725  2      
  nop                                    #  1386  0x85727  1      
  je .L_86080                            #  1387  0x85728  6      
  nop                                    #  1388  0x8572e  1      
  nop                                    #  1389  0x8572f  1      
.L_86020:                                #        0x85730  0      
  movl %eax, %esi                        #  1390  0x85730  2      
  nop                                    #  1391  0x85732  1      
  nop                                    #  1392  0x85733  1      
.L_86040:                                #        0x85734  0      
  movq %r12, %rcx                        #  1393  0x85734  3      
  nop                                    #  1394  0x85737  1      
  nop                                    #  1395  0x85738  1      
.L_86060:                                #        0x85739  0      
  movq %r13, %rax                        #  1396  0x85739  3      
  mulq %r9                               #  1397  0x8573c  3      
  movq %rdx, %r13                        #  1398  0x8573f  3      
  shrq $0x3, %r13                        #  1399  0x85742  4      
  testq %r13, %r13                       #  1400  0x85746  3      
  je .L_86100                            #  1401  0x85749  6      
  movq %rcx, %r12                        #  1402  0x8574f  3      
  jmpq .L_85fc0                          #  1403  0x85752  5      
  xchgw %ax, %ax                         #  1404  0x85757  3      
.L_86080:                                #        0x8575a  0      
  cmpb $0x7f, %dl                        #  1405  0x8575a  3      
  je .L_86040                            #  1406  0x8575d  6      
  cmpq $0x9, %r13                        #  1407  0x85763  4      
  jbe .L_86040                           #  1408  0x85767  6      
  addl 0x7c(%rsp), %ebx                  #  1409  0x8576d  4      
  movl 0xd8(%rsp), %esi                  #  1410  0x85771  7      
  movl 0xd4(%rsp), %edx                  #  1411  0x85778  7      
  nop                                    #  1412  0x8577f  1      
  movl %r8d, 0x40(%rsp)                  #  1413  0x85780  5      
  movq %r9, 0x58(%rsp)                   #  1414  0x85785  5      
  movl %r10d, 0x50(%rsp)                 #  1415  0x8578a  5      
  movq %r11, 0x48(%rsp)                  #  1416  0x8578f  5      
  movl %ebx, %edi                        #  1417  0x85794  2      
  nop                                    #  1418  0x85796  1      
  callq .strncpy                         #  1419  0x85797  5      
  leal 0x1(%r12), %ecx                   #  1420  0x8579c  5      
  xorl %esi, %esi                        #  1421  0x857a1  2      
  movl 0x40(%rsp), %r8d                  #  1422  0x857a3  5      
  movq 0x58(%rsp), %r9                   #  1423  0x857a8  5      
  movl 0x50(%rsp), %r10d                 #  1424  0x857ad  5      
  movl %ecx, %ecx                        #  1425  0x857b2  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1426  0x857b4  5      
  nop                                    #  1427  0x857b9  1      
  movq 0x48(%rsp), %r11                  #  1428  0x857ba  5      
  jne .L_86060                           #  1429  0x857bf  6      
  jmpq .L_86040                          #  1430  0x857c5  5      
  nop                                    #  1431  0x857ca  1      
  nop                                    #  1432  0x857cb  1      
.L_86100:                                #        0x857cc  0      
  movq %rbx, 0x98(%rsp)                  #  1433  0x857cc  8      
  movl 0xb8(%rsp), %esi                  #  1434  0x857d4  7      
  movl %r8d, %r12d                       #  1435  0x857db  3      
  subl 0x98(%rsp), %esi                  #  1436  0x857de  7      
  movl 0x68(%rsp), %r8d                  #  1437  0x857e5  5      
  xchgw %ax, %ax                         #  1438  0x857ea  3      
  movq %r11, %rbx                        #  1439  0x857ed  3      
  movl %esi, 0x7c(%rsp)                  #  1440  0x857f0  4      
  jmpq .L_85180                          #  1441  0x857f4  5      
  nop                                    #  1442  0x857f9  1      
  nop                                    #  1443  0x857fa  1      
.L_86140:                                #        0x857fb  0      
  leal 0x1b0(%rsp), %r13d                #  1444  0x857fb  8      
  xorl %esi, %esi                        #  1445  0x85803  2      
  movl $0x8, %edx                        #  1446  0x85805  5      
  movl %r13d, %edi                       #  1447  0x8580a  3      
  nop                                    #  1448  0x8580d  1      
  callq .memset                          #  1449  0x8580e  5      
  movq 0x80(%rsp), %rsi                  #  1450  0x85813  8      
  movl %esi, %esi                        #  1451  0x8581b  2      
  movl (%r15,%rsi,1), %edx               #  1452  0x8581d  4      
  cmpl $0x2f, %edx                       #  1453  0x85821  3      
  ja .L_868e0                            #  1454  0x85824  6      
  movl %esi, %esi                        #  1455  0x8582a  2      
  movl 0xc(%r15,%rsi,1), %eax            #  1456  0x8582c  5      
  addl %edx, %eax                        #  1457  0x85831  2      
  addl $0x8, %edx                        #  1458  0x85833  3      
  movl %esi, %esi                        #  1459  0x85836  2      
  movl %edx, (%r15,%rsi,1)               #  1460  0x85838  4      
  nop                                    #  1461  0x8583c  1      
  nop                                    #  1462  0x8583d  1      
.L_861a0:                                #        0x8583e  0      
  movl %eax, %eax                        #  1463  0x8583e  2      
  movl (%r15,%rax,1), %edx               #  1464  0x85840  4      
  movl 0x28(%rsp), %esi                  #  1465  0x85844  4      
  movl %r13d, %ecx                       #  1466  0x85848  3      
  movl %r14d, %edi                       #  1467  0x8584b  3      
  nop                                    #  1468  0x8584e  1      
  callq ._wcrtomb_r                      #  1469  0x8584f  5      
  cmpl $0xffffffff, %eax                 #  1470  0x85854  5      
  movl %eax, 0x7c(%rsp)                  #  1471  0x85859  4      
  je .L_871a0                            #  1472  0x8585d  6      
  nop                                    #  1473  0x85863  1      
  nop                                    #  1474  0x85864  1      
.L_861e0:                                #        0x85865  0      
  movl 0x7c(%rsp), %r8d                  #  1475  0x85865  5      
  movl $0x0, %eax                        #  1476  0x8586a  5      
  leal 0xe0(%rsp), %edx                  #  1477  0x8586f  7      
  movb $0x0, 0x1df(%rsp)                 #  1478  0x85876  8      
  nop                                    #  1479  0x8587e  1      
  movq %rdx, 0x98(%rsp)                  #  1480  0x8587f  8      
  testl %r8d, %r8d                       #  1481  0x85887  3      
  cmovnsl 0x7c(%rsp), %eax               #  1482  0x8588a  5      
  movl %eax, 0x68(%rsp)                  #  1483  0x8588f  4      
  jmpq .L_84620                          #  1484  0x85893  5      
  nop                                    #  1485  0x85898  1      
.L_86220:                                #        0x85899  0      
  cmpb $0x30, %al                        #  1486  0x85899  2      
  je .L_86d20                            #  1487  0x8589b  6      
  movl 0x98(%rsp), %eax                  #  1488  0x858a1  7      
  subl $0x1, %eax                        #  1489  0x858a8  3      
  movq %rax, 0x98(%rsp)                  #  1490  0x858ab  8      
  nop                                    #  1491  0x858b3  1      
  movl %eax, %eax                        #  1492  0x858b4  2      
  movb $0x30, (%r15,%rax,1)              #  1493  0x858b6  5      
  movl 0xb8(%rsp), %edx                  #  1494  0x858bb  7      
  movq 0xb0(%rsp), %rcx                  #  1495  0x858c2  8      
  subl %eax, %edx                        #  1496  0x858ca  2      
  movl %edx, 0x7c(%rsp)                  #  1497  0x858cc  4      
  nop                                    #  1498  0x858d0  1      
  jmpq .L_85180                          #  1499  0x858d1  5      
  nop                                    #  1500  0x858d6  1      
  nop                                    #  1501  0x858d7  1      
.L_86280:                                #        0x858d8  0      
  negq %r13                              #  1502  0x858d8  3      
  movb $0x2d, 0x1df(%rsp)                #  1503  0x858db  8      
  movl $0x1, %eax                        #  1504  0x858e3  5      
  setne %dl                              #  1505  0x858e8  3      
  jmpq .L_850e0                          #  1506  0x858eb  5      
  nop                                    #  1507  0x858f0  1      
.L_862a0:                                #        0x858f1  0      
  movl 0x70(%rsp), %esi                  #  1508  0x858f1  4      
  leal 0x190(%rsp), %edx                 #  1509  0x858f5  7      
  movl %r14d, %edi                       #  1510  0x858fc  3      
  nop                                    #  1511  0x858ff  1      
  callq .__sprint_r                      #  1512  0x85900  5      
  testl %eax, %eax                       #  1513  0x85905  2      
  jne .L_85980                           #  1514  0x85907  6      
  leal 0x150(%rsp), %ebx                 #  1515  0x8590d  7      
  jmpq .L_848a0                          #  1516  0x85914  5      
  nop                                    #  1517  0x85919  1      
.L_862e0:                                #        0x8591a  0      
  movq 0x80(%rsp), %rsi                  #  1518  0x8591a  8      
  movl %esi, %esi                        #  1519  0x85922  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1520  0x85924  5      
  leal 0x8(%rdx), %eax                   #  1521  0x85929  3      
  movl %esi, %esi                        #  1522  0x8592c  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1523  0x8592e  5      
  jmpq .L_85680                          #  1524  0x85933  5      
  xchgw %ax, %ax                         #  1525  0x85938  3      
.L_86300:                                #        0x8593b  0      
  testb $0x40, %r12b                     #  1526  0x8593b  4      
  jne .L_86b40                           #  1527  0x8593f  6      
  testl $0x200, %r12d                    #  1528  0x85945  7      
  je .L_86e60                            #  1529  0x8594c  6      
  movq 0x80(%rsp), %rdx                  #  1530  0x85952  8      
  nop                                    #  1531  0x8595a  1      
  movl %edx, %edx                        #  1532  0x8595b  2      
  movl (%r15,%rdx,1), %ecx               #  1533  0x8595d  4      
  cmpl $0x2f, %ecx                       #  1534  0x85961  3      
  ja .L_87120                            #  1535  0x85964  6      
  movq %rdx, %rsi                        #  1536  0x8596a  3      
  movl %edx, %edx                        #  1537  0x8596d  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1538  0x8596f  5      
  addl %ecx, %edx                        #  1539  0x85974  2      
  addl $0x8, %ecx                        #  1540  0x85976  3      
  xchgw %ax, %ax                         #  1541  0x85979  3      
  movl %esi, %esi                        #  1542  0x8597c  2      
  movl %ecx, (%r15,%rsi,1)               #  1543  0x8597e  4      
  nop                                    #  1544  0x85982  1      
  nop                                    #  1545  0x85983  1      
.L_86360:                                #        0x85984  0      
  movl %edx, %edx                        #  1546  0x85984  2      
  movzbl (%r15,%rdx,1), %r13d            #  1547  0x85986  5      
  jmpq .L_85260                          #  1548  0x8598b  5      
  nop                                    #  1549  0x85990  1      
  nop                                    #  1550  0x85991  1      
.L_86380:                                #        0x85992  0      
  movq 0x80(%rsp), %rdx                  #  1551  0x85992  8      
  movq 0x80(%rsp), %rsi                  #  1552  0x8599a  8      
  movl %edx, %edx                        #  1553  0x859a2  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1554  0x859a4  5      
  leal 0x8(%rcx), %edx                   #  1555  0x859a9  3      
  nop                                    #  1556  0x859ac  1      
  movl %esi, %esi                        #  1557  0x859ad  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1558  0x859af  5      
  jmpq .L_85240                          #  1559  0x859b4  5      
  nop                                    #  1560  0x859b9  1      
  nop                                    #  1561  0x859ba  1      
.L_863c0:                                #        0x859bb  0      
  movq 0x80(%rsp), %rax                  #  1562  0x859bb  8      
  movq 0x80(%rsp), %rcx                  #  1563  0x859c3  8      
  movl %eax, %eax                        #  1564  0x859cb  2      
  movl 0x8(%r15,%rax,1), %edx            #  1565  0x859cd  5      
  leal 0x8(%rdx), %eax                   #  1566  0x859d2  3      
  nop                                    #  1567  0x859d5  1      
  movl %ecx, %ecx                        #  1568  0x859d6  2      
  movl %eax, 0x8(%r15,%rcx,1)            #  1569  0x859d8  5      
  jmpq .L_84dc0                          #  1570  0x859dd  5      
  nop                                    #  1571  0x859e2  1      
  nop                                    #  1572  0x859e3  1      
.L_86400:                                #        0x859e4  0      
  movq 0x80(%rsp), %rsi                  #  1573  0x859e4  8      
  movl %esi, %esi                        #  1574  0x859ec  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1575  0x859ee  5      
  leal 0x8(%rdx), %eax                   #  1576  0x859f3  3      
  movl %esi, %esi                        #  1577  0x859f6  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1578  0x859f8  5      
  jmpq .L_85520                          #  1579  0x859fd  5      
  xchgw %ax, %ax                         #  1580  0x85a02  3      
.L_86420:                                #        0x85a05  0      
  testb $0x40, %r12b                     #  1581  0x85a05  4      
  jne .L_86ba0                           #  1582  0x85a09  6      
  testl $0x200, %r12d                    #  1583  0x85a0f  7      
  je .L_86da0                            #  1584  0x85a16  6      
  movq 0x80(%rsp), %rax                  #  1585  0x85a1c  8      
  nop                                    #  1586  0x85a24  1      
  movl %eax, %eax                        #  1587  0x85a25  2      
  movl (%r15,%rax,1), %edx               #  1588  0x85a27  4      
  cmpl $0x2f, %edx                       #  1589  0x85a2b  3      
  ja .L_871e0                            #  1590  0x85a2e  6      
  movq %rax, %rcx                        #  1591  0x85a34  3      
  movl %eax, %eax                        #  1592  0x85a37  2      
  movl 0xc(%r15,%rax,1), %eax            #  1593  0x85a39  5      
  addl %edx, %eax                        #  1594  0x85a3e  2      
  addl $0x8, %edx                        #  1595  0x85a40  3      
  xchgw %ax, %ax                         #  1596  0x85a43  3      
  movl %ecx, %ecx                        #  1597  0x85a46  2      
  movl %edx, (%r15,%rcx,1)               #  1598  0x85a48  4      
  nop                                    #  1599  0x85a4c  1      
  nop                                    #  1600  0x85a4d  1      
.L_86480:                                #        0x85a4e  0      
  movl %eax, %eax                        #  1601  0x85a4e  2      
  movzbl (%r15,%rax,1), %r13d            #  1602  0x85a50  5      
  movl $0x1, %eax                        #  1603  0x85a55  5      
  testq %r13, %r13                       #  1604  0x85a5a  3      
  setne %dl                              #  1605  0x85a5d  3      
  jmpq .L_850c0                          #  1606  0x85a60  5      
  nop                                    #  1607  0x85a65  1      
.L_864a0:                                #        0x85a66  0      
  testb $0x40, %r12b                     #  1608  0x85a66  4      
  jne .L_869c0                           #  1609  0x85a6a  6      
  testl $0x200, %r12d                    #  1610  0x85a70  7      
  je .L_86ec0                            #  1611  0x85a77  6      
  movq 0x80(%rsp), %rax                  #  1612  0x85a7d  8      
  nop                                    #  1613  0x85a85  1      
  movl %eax, %eax                        #  1614  0x85a86  2      
  movl (%r15,%rax,1), %edx               #  1615  0x85a88  4      
  cmpl $0x2f, %edx                       #  1616  0x85a8c  3      
  ja .L_87280                            #  1617  0x85a8f  6      
  movq %rax, %rcx                        #  1618  0x85a95  3      
  movl %eax, %eax                        #  1619  0x85a98  2      
  movl 0xc(%r15,%rax,1), %eax            #  1620  0x85a9a  5      
  addl %edx, %eax                        #  1621  0x85a9f  2      
  addl $0x8, %edx                        #  1622  0x85aa1  3      
  xchgw %ax, %ax                         #  1623  0x85aa4  3      
  movl %ecx, %ecx                        #  1624  0x85aa7  2      
  movl %edx, (%r15,%rcx,1)               #  1625  0x85aa9  4      
  nop                                    #  1626  0x85aad  1      
  nop                                    #  1627  0x85aae  1      
.L_86500:                                #        0x85aaf  0      
  movl %eax, %eax                        #  1628  0x85aaf  2      
  movzbl (%r15,%rax,1), %r13d            #  1629  0x85ab1  5      
  jmpq .L_85540                          #  1630  0x85ab6  5      
  nop                                    #  1631  0x85abb  1      
  nop                                    #  1632  0x85abc  1      
.L_86520:                                #        0x85abd  0      
  movq 0x80(%rsp), %rsi                  #  1633  0x85abd  8      
  movl %esi, %esi                        #  1634  0x85ac5  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1635  0x85ac7  5      
  leal 0x8(%rdx), %eax                   #  1636  0x85acc  3      
  movl %esi, %esi                        #  1637  0x85acf  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1638  0x85ad1  5      
  jmpq .L_85440                          #  1639  0x85ad6  5      
  xchgw %ax, %ax                         #  1640  0x85adb  3      
.L_86540:                                #        0x85ade  0      
  testb $0x10, %r12b                     #  1641  0x85ade  4      
  jne .L_86a20                           #  1642  0x85ae2  6      
  testb $0x40, %r12b                     #  1643  0x85ae8  4      
  je .L_86f20                            #  1644  0x85aec  6      
  movq 0x80(%rsp), %rcx                  #  1645  0x85af2  8      
  nop                                    #  1646  0x85afa  1      
  movl %ecx, %ecx                        #  1647  0x85afb  2      
  movl (%r15,%rcx,1), %edx               #  1648  0x85afd  4      
  cmpl $0x2f, %edx                       #  1649  0x85b01  3      
  ja .L_87240                            #  1650  0x85b04  6      
  movl %ecx, %ecx                        #  1651  0x85b0a  2      
  movl 0xc(%r15,%rcx,1), %eax            #  1652  0x85b0c  5      
  addl %edx, %eax                        #  1653  0x85b11  2      
  addl $0x8, %edx                        #  1654  0x85b13  3      
  nop                                    #  1655  0x85b16  1      
  movl %ecx, %ecx                        #  1656  0x85b17  2      
  movl %edx, (%r15,%rcx,1)               #  1657  0x85b19  4      
  nop                                    #  1658  0x85b1d  1      
  nop                                    #  1659  0x85b1e  1      
.L_865a0:                                #        0x85b1f  0      
  movl %eax, %eax                        #  1660  0x85b1f  2      
  movl (%r15,%rax,1), %eax               #  1661  0x85b21  4      
  movzwl 0x8c(%rsp), %edx                #  1662  0x85b25  8      
  movl %eax, %eax                        #  1663  0x85b2d  2      
  movw %dx, (%r15,%rax,1)                #  1664  0x85b2f  5      
  jmpq .L_843e0                          #  1665  0x85b34  5      
  nop                                    #  1666  0x85b39  1      
.L_865c0:                                #        0x85b3a  0      
  movq 0x80(%rsp), %rdx                  #  1667  0x85b3a  8      
  movq 0x80(%rsp), %rsi                  #  1668  0x85b42  8      
  movl %edx, %edx                        #  1669  0x85b4a  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1670  0x85b4c  5      
  leal 0x8(%rcx), %edx                   #  1671  0x85b51  3      
  nop                                    #  1672  0x85b54  1      
  movl %esi, %esi                        #  1673  0x85b55  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1674  0x85b57  5      
  jmpq .L_85760                          #  1675  0x85b5c  5      
  nop                                    #  1676  0x85b61  1      
  nop                                    #  1677  0x85b62  1      
.L_86600:                                #        0x85b63  0      
  movq 0x80(%rsp), %rsi                  #  1678  0x85b63  8      
  movl %esi, %esi                        #  1679  0x85b6b  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1680  0x85b6d  5      
  leal 0x8(%rdx), %eax                   #  1681  0x85b72  3      
  movl %esi, %esi                        #  1682  0x85b75  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1683  0x85b77  5      
  jmpq .L_85080                          #  1684  0x85b7c  5      
  xchgw %ax, %ax                         #  1685  0x85b81  3      
.L_86620:                                #        0x85b84  0      
  testb $0x40, %r12b                     #  1686  0x85b84  4      
  jne .L_86960                           #  1687  0x85b88  6      
  testl $0x200, %r12d                    #  1688  0x85b8e  7      
  je .L_86f80                            #  1689  0x85b95  6      
  movq 0x80(%rsp), %rax                  #  1690  0x85b9b  8      
  nop                                    #  1691  0x85ba3  1      
  movl %eax, %eax                        #  1692  0x85ba4  2      
  movl (%r15,%rax,1), %edx               #  1693  0x85ba6  4      
  cmpl $0x2f, %edx                       #  1694  0x85baa  3      
  ja .L_87200                            #  1695  0x85bad  6      
  movq %rax, %rcx                        #  1696  0x85bb3  3      
  movl %eax, %eax                        #  1697  0x85bb6  2      
  movl 0xc(%r15,%rax,1), %eax            #  1698  0x85bb8  5      
  addl %edx, %eax                        #  1699  0x85bbd  2      
  addl $0x8, %edx                        #  1700  0x85bbf  3      
  xchgw %ax, %ax                         #  1701  0x85bc2  3      
  movl %ecx, %ecx                        #  1702  0x85bc5  2      
  movl %edx, (%r15,%rcx,1)               #  1703  0x85bc7  4      
  nop                                    #  1704  0x85bcb  1      
  nop                                    #  1705  0x85bcc  1      
.L_86680:                                #        0x85bcd  0      
  movl %eax, %eax                        #  1706  0x85bcd  2      
  movsbq (%r15,%rax,1), %r13             #  1707  0x85bcf  5      
  jmpq .L_85460                          #  1708  0x85bd4  5      
  nop                                    #  1709  0x85bd9  1      
  nop                                    #  1710  0x85bda  1      
.L_866a0:                                #        0x85bdb  0      
  movl 0x98(%rsp), %edx                  #  1711  0x85bdb  7      
  leal 0x1a0(%rsp), %ecx                 #  1712  0x85be2  7      
  xorl %esi, %esi                        #  1713  0x85be9  2      
  movl %r8d, 0x40(%rsp)                  #  1714  0x85beb  5      
  movl %ecx, %edi                        #  1715  0x85bf0  2      
  movq %rcx, 0x18(%rsp)                  #  1716  0x85bf2  5      
  nop                                    #  1717  0x85bf7  1      
  movl %edx, 0x1c8(%rsp)                 #  1718  0x85bf8  7      
  movl $0x8, %edx                        #  1719  0x85bff  5      
  nop                                    #  1720  0x85c04  1      
  callq .memset                          #  1721  0x85c05  5      
  movl 0x40(%rsp), %r8d                  #  1722  0x85c0a  5      
  testl %r8d, %r8d                       #  1723  0x85c0f  3      
  js .L_87160                            #  1724  0x85c12  6      
  movq %rbx, 0x68(%rsp)                  #  1725  0x85c18  5      
  movl %r12d, 0x90(%rsp)                 #  1726  0x85c1d  8      
  xorl %r13d, %r13d                      #  1727  0x85c25  3      
  xchgw %ax, %ax                         #  1728  0x85c28  3      
  movl $0x0, 0x7c(%rsp)                  #  1729  0x85c2b  8      
  movl %r8d, %ebx                        #  1730  0x85c33  3      
  xorl %r12d, %r12d                      #  1731  0x85c36  3      
  jmpq .L_86740                          #  1732  0x85c39  5      
  nop                                    #  1733  0x85c3e  1      
  nop                                    #  1734  0x85c3f  1      
.L_86720:                                #        0x85c40  0      
  movl %eax, %r12d                       #  1735  0x85c40  3      
  nop                                    #  1736  0x85c43  1      
  nop                                    #  1737  0x85c44  1      
.L_86740:                                #        0x85c45  0      
  movl 0x1c8(%rsp), %eax                 #  1738  0x85c45  7      
  addl %r13d, %eax                       #  1739  0x85c4c  3      
  movl %eax, %eax                        #  1740  0x85c4f  2      
  movl (%r15,%rax,1), %edx               #  1741  0x85c51  4      
  testl %edx, %edx                       #  1742  0x85c55  2      
  je .L_87100                            #  1743  0x85c57  6      
  movl 0x18(%rsp), %ecx                  #  1744  0x85c5d  4      
  movl 0x28(%rsp), %esi                  #  1745  0x85c61  4      
  movl %r14d, %edi                       #  1746  0x85c65  3      
  nop                                    #  1747  0x85c68  1      
  nop                                    #  1748  0x85c69  1      
  callq ._wcrtomb_r                      #  1749  0x85c6a  5      
  cmpl $0xffffffff, %eax                 #  1750  0x85c6f  5      
  je .L_871a0                            #  1751  0x85c74  6      
  addl %r12d, %eax                       #  1752  0x85c7a  3      
  cmpl %eax, %ebx                        #  1753  0x85c7d  2      
  jl .L_87100                            #  1754  0x85c7f  6      
  addl $0x4, %r13d                       #  1755  0x85c85  4      
  cmpl %eax, %ebx                        #  1756  0x85c89  2      
  jne .L_86720                           #  1757  0x85c8b  6      
  movl %ebx, %r8d                        #  1758  0x85c91  3      
  nop                                    #  1759  0x85c94  1      
  movl 0x90(%rsp), %r12d                 #  1760  0x85c95  8      
  movq 0x68(%rsp), %rbx                  #  1761  0x85c9d  5      
  movl %r8d, 0x7c(%rsp)                  #  1762  0x85ca2  5      
  nop                                    #  1763  0x85ca7  1      
.L_867c0:                                #        0x85ca8  0      
  movl 0x7c(%rsp), %edi                  #  1764  0x85ca8  4      
  testl %edi, %edi                       #  1765  0x85cac  2      
  je .L_86c20                            #  1766  0x85cae  6      
  cmpl $0x63, 0x7c(%rsp)                 #  1767  0x85cb4  5      
  leal 0xe0(%rsp), %esi                  #  1768  0x85cb9  7      
  nop                                    #  1769  0x85cc0  1      
  movq $0x0, 0x90(%rsp)                  #  1770  0x85cc1  12     
  movq %rsi, 0x98(%rsp)                  #  1771  0x85ccd  8      
  jle .L_86860                           #  1772  0x85cd5  6      
  movl 0x7c(%rsp), %esi                  #  1773  0x85cdb  4      
  movl %r14d, %edi                       #  1774  0x85cdf  3      
  addl $0x1, %esi                        #  1775  0x85ce2  3      
  nop                                    #  1776  0x85ce5  1      
  nop                                    #  1777  0x85ce6  1      
  callq ._malloc_r                       #  1778  0x85ce7  5      
  movl %eax, %eax                        #  1779  0x85cec  2      
  testq %rax, %rax                       #  1780  0x85cee  3      
  movq %rax, 0x90(%rsp)                  #  1781  0x85cf1  8      
  je .L_873e0                            #  1782  0x85cf9  6      
  movq 0x90(%rsp), %rcx                  #  1783  0x85cff  8      
  nop                                    #  1784  0x85d07  1      
  movq %rcx, 0x98(%rsp)                  #  1785  0x85d08  8      
  nop                                    #  1786  0x85d10  1      
  nop                                    #  1787  0x85d11  1      
.L_86860:                                #        0x85d12  0      
  movl 0x18(%rsp), %edi                  #  1788  0x85d12  4      
  xorl %esi, %esi                        #  1789  0x85d16  2      
  movl $0x8, %edx                        #  1790  0x85d18  5      
  nop                                    #  1791  0x85d1d  1      
  nop                                    #  1792  0x85d1e  1      
  callq .memset                          #  1793  0x85d1f  5      
  movl 0x18(%rsp), %r8d                  #  1794  0x85d24  5      
  movl 0x7c(%rsp), %ecx                  #  1795  0x85d29  4      
  leal 0x1c8(%rsp), %edx                 #  1796  0x85d2d  7      
  movl 0x98(%rsp), %esi                  #  1797  0x85d34  7      
  movl %r14d, %edi                       #  1798  0x85d3b  3      
  nop                                    #  1799  0x85d3e  1      
  callq ._wcsrtombs_r                    #  1800  0x85d3f  5      
  cmpl %eax, 0x7c(%rsp)                  #  1801  0x85d44  4      
  jne .L_85960                           #  1802  0x85d48  6      
  movl 0x7c(%rsp), %eax                  #  1803  0x85d4e  4      
  addl 0x98(%rsp), %eax                  #  1804  0x85d52  7      
  movl %eax, %eax                        #  1805  0x85d59  2      
  movb $0x0, (%r15,%rax,1)               #  1806  0x85d5b  5      
  movl 0x7c(%rsp), %esi                  #  1807  0x85d60  4      
  movl $0x0, %eax                        #  1808  0x85d64  5      
  movl $0x0, 0xac(%rsp)                  #  1809  0x85d69  11     
  testl %esi, %esi                       #  1810  0x85d74  2      
  cmovnsl 0x7c(%rsp), %eax               #  1811  0x85d76  5      
  movl %eax, 0x68(%rsp)                  #  1812  0x85d7b  4      
  jmpq .L_851c0                          #  1813  0x85d7f  5      
.L_868e0:                                #        0x85d84  0      
  movq 0x80(%rsp), %rdx                  #  1814  0x85d84  8      
  movq 0x80(%rsp), %rcx                  #  1815  0x85d8c  8      
  movl %edx, %edx                        #  1816  0x85d94  2      
  movl 0x8(%r15,%rdx,1), %eax            #  1817  0x85d96  5      
  leal 0x8(%rax), %edx                   #  1818  0x85d9b  3      
  nop                                    #  1819  0x85d9e  1      
  movl %ecx, %ecx                        #  1820  0x85d9f  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  1821  0x85da1  5      
  jmpq .L_861a0                          #  1822  0x85da6  5      
  nop                                    #  1823  0x85dab  1      
  nop                                    #  1824  0x85dac  1      
.L_86920:                                #        0x85dad  0      
  addl $0x1, %r13d                       #  1825  0x85dad  4      
  orl $0x200, %r12d                      #  1826  0x85db1  7      
  movl %r13d, %r13d                      #  1827  0x85db8  3      
  movzbl (%r15,%r13,1), %eax             #  1828  0x85dbb  5      
  jmpq .L_845a0                          #  1829  0x85dc0  5      
  nop                                    #  1830  0x85dc5  1      
.L_86940:                                #        0x85dc6  0      
  addl $0x1, %r13d                       #  1831  0x85dc6  4      
  orl $0x20, %r12d                       #  1832  0x85dca  4      
  movl %r13d, %r13d                      #  1833  0x85dce  3      
  movzbl (%r15,%r13,1), %eax             #  1834  0x85dd1  5      
  jmpq .L_845a0                          #  1835  0x85dd6  5      
  nop                                    #  1836  0x85ddb  1      
.L_86960:                                #        0x85ddc  0      
  movq 0x80(%rsp), %rax                  #  1837  0x85ddc  8      
  movl %eax, %eax                        #  1838  0x85de4  2      
  movl (%r15,%rax,1), %edx               #  1839  0x85de6  4      
  cmpl $0x2f, %edx                       #  1840  0x85dea  3      
  ja .L_86fe0                            #  1841  0x85ded  6      
  movq %rax, %rcx                        #  1842  0x85df3  3      
  nop                                    #  1843  0x85df6  1      
  movl %eax, %eax                        #  1844  0x85df7  2      
  movl 0xc(%r15,%rax,1), %eax            #  1845  0x85df9  5      
  addl %edx, %eax                        #  1846  0x85dfe  2      
  addl $0x8, %edx                        #  1847  0x85e00  3      
  movl %ecx, %ecx                        #  1848  0x85e03  2      
  movl %edx, (%r15,%rcx,1)               #  1849  0x85e05  4      
  nop                                    #  1850  0x85e09  1      
.L_869a0:                                #        0x85e0a  0      
  movl %eax, %eax                        #  1851  0x85e0a  2      
  movswq (%r15,%rax,1), %r13             #  1852  0x85e0c  5      
  jmpq .L_85460                          #  1853  0x85e11  5      
  nop                                    #  1854  0x85e16  1      
  nop                                    #  1855  0x85e17  1      
.L_869c0:                                #        0x85e18  0      
  movq 0x80(%rsp), %rax                  #  1856  0x85e18  8      
  movl %eax, %eax                        #  1857  0x85e20  2      
  movl (%r15,%rax,1), %edx               #  1858  0x85e22  4      
  cmpl $0x2f, %edx                       #  1859  0x85e26  3      
  ja .L_87000                            #  1860  0x85e29  6      
  movq %rax, %rcx                        #  1861  0x85e2f  3      
  nop                                    #  1862  0x85e32  1      
  movl %eax, %eax                        #  1863  0x85e33  2      
  movl 0xc(%r15,%rax,1), %eax            #  1864  0x85e35  5      
  addl %edx, %eax                        #  1865  0x85e3a  2      
  addl $0x8, %edx                        #  1866  0x85e3c  3      
  movl %ecx, %ecx                        #  1867  0x85e3f  2      
  movl %edx, (%r15,%rcx,1)               #  1868  0x85e41  4      
  nop                                    #  1869  0x85e45  1      
.L_86a00:                                #        0x85e46  0      
  movl %eax, %eax                        #  1870  0x85e46  2      
  movzwl (%r15,%rax,1), %r13d            #  1871  0x85e48  5      
  jmpq .L_85540                          #  1872  0x85e4d  5      
  nop                                    #  1873  0x85e52  1      
  nop                                    #  1874  0x85e53  1      
.L_86a20:                                #        0x85e54  0      
  movq 0x80(%rsp), %rax                  #  1875  0x85e54  8      
  movl %eax, %eax                        #  1876  0x85e5c  2      
  movl (%r15,%rax,1), %edx               #  1877  0x85e5e  4      
  cmpl $0x2f, %edx                       #  1878  0x85e62  3      
  ja .L_86d00                            #  1879  0x85e65  6      
  movq %rax, %rcx                        #  1880  0x85e6b  3      
  nop                                    #  1881  0x85e6e  1      
  movl %eax, %eax                        #  1882  0x85e6f  2      
  movl 0xc(%r15,%rax,1), %eax            #  1883  0x85e71  5      
  addl %edx, %eax                        #  1884  0x85e76  2      
  addl $0x8, %edx                        #  1885  0x85e78  3      
  movl %ecx, %ecx                        #  1886  0x85e7b  2      
  movl %edx, (%r15,%rcx,1)               #  1887  0x85e7d  4      
  nop                                    #  1888  0x85e81  1      
.L_86a60:                                #        0x85e82  0      
  movl %eax, %eax                        #  1889  0x85e82  2      
  movl (%r15,%rax,1), %eax               #  1890  0x85e84  4      
  movl 0x8c(%rsp), %edx                  #  1891  0x85e88  7      
  movl %eax, %eax                        #  1892  0x85e8f  2      
  movl %edx, (%r15,%rax,1)               #  1893  0x85e91  4      
  jmpq .L_843e0                          #  1894  0x85e95  5      
  nop                                    #  1895  0x85e9a  1      
.L_86a80:                                #        0x85e9b  0      
  orl $0x400, %r12d                      #  1896  0x85e9b  7      
  movl %r13d, %r13d                      #  1897  0x85ea2  3      
  movzbl (%r15,%r13,1), %eax             #  1898  0x85ea5  5      
  jmpq .L_845a0                          #  1899  0x85eaa  5      
  nop                                    #  1900  0x85eaf  1      
.L_86aa0:                                #        0x85eb0  0      
  movq 0x80(%rsp), %rsi                  #  1901  0x85eb0  8      
  movl %esi, %esi                        #  1902  0x85eb8  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1903  0x85eba  5      
  leal 0x8(%rdx), %eax                   #  1904  0x85ebf  3      
  movl %esi, %esi                        #  1905  0x85ec2  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1906  0x85ec4  5      
  jmpq .L_85e80                          #  1907  0x85ec9  5      
  xchgw %ax, %ax                         #  1908  0x85ece  3      
.L_86ac0:                                #        0x85ed1  0      
  movq 0x80(%rsp), %rdx                  #  1909  0x85ed1  8      
  movq 0x80(%rsp), %rsi                  #  1910  0x85ed9  8      
  movl %edx, %edx                        #  1911  0x85ee1  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1912  0x85ee3  5      
  leal 0x8(%rcx), %edx                   #  1913  0x85ee8  3      
  nop                                    #  1914  0x85eeb  1      
  movl %esi, %esi                        #  1915  0x85eec  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1916  0x85eee  5      
  jmpq .L_85700                          #  1917  0x85ef3  5      
  nop                                    #  1918  0x85ef8  1      
  nop                                    #  1919  0x85ef9  1      
.L_86b00:                                #        0x85efa  0      
  movq 0x80(%rsp), %rsi                  #  1920  0x85efa  8      
  movl %esi, %esi                        #  1921  0x85f02  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1922  0x85f04  5      
  leal 0x8(%rdx), %eax                   #  1923  0x85f09  3      
  movl %esi, %esi                        #  1924  0x85f0c  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1925  0x85f0e  5      
  jmpq .L_85e20                          #  1926  0x85f13  5      
  xchgw %ax, %ax                         #  1927  0x85f18  3      
.L_86b20:                                #        0x85f1b  0      
  movq %rdx, %rcx                        #  1928  0x85f1b  3      
  movl %edx, %edx                        #  1929  0x85f1e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1930  0x85f20  5      
  addl %eax, %edx                        #  1931  0x85f25  2      
  addl $0x8, %eax                        #  1932  0x85f27  3      
  movl %ecx, %ecx                        #  1933  0x85f2a  2      
  movl %eax, (%r15,%rcx,1)               #  1934  0x85f2c  4      
  jmpq .L_85ee0                          #  1935  0x85f30  5      
  nop                                    #  1936  0x85f35  1      
.L_86b40:                                #        0x85f36  0      
  movq 0x80(%rsp), %rdx                  #  1937  0x85f36  8      
  movl %edx, %edx                        #  1938  0x85f3e  2      
  movl (%r15,%rdx,1), %ecx               #  1939  0x85f40  4      
  cmpl $0x2f, %ecx                       #  1940  0x85f44  3      
  ja .L_86e00                            #  1941  0x85f47  6      
  movq %rdx, %rsi                        #  1942  0x85f4d  3      
  nop                                    #  1943  0x85f50  1      
  movl %edx, %edx                        #  1944  0x85f51  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1945  0x85f53  5      
  addl %ecx, %edx                        #  1946  0x85f58  2      
  addl $0x8, %ecx                        #  1947  0x85f5a  3      
  movl %esi, %esi                        #  1948  0x85f5d  2      
  movl %ecx, (%r15,%rsi,1)               #  1949  0x85f5f  4      
  nop                                    #  1950  0x85f63  1      
.L_86b80:                                #        0x85f64  0      
  movl %edx, %edx                        #  1951  0x85f64  2      
  movzwl (%r15,%rdx,1), %r13d            #  1952  0x85f66  5      
  jmpq .L_85260                          #  1953  0x85f6b  5      
  nop                                    #  1954  0x85f70  1      
  nop                                    #  1955  0x85f71  1      
.L_86ba0:                                #        0x85f72  0      
  movq 0x80(%rsp), %rax                  #  1956  0x85f72  8      
  movl %eax, %eax                        #  1957  0x85f7a  2      
  movl (%r15,%rax,1), %edx               #  1958  0x85f7c  4      
  cmpl $0x2f, %edx                       #  1959  0x85f80  3      
  ja .L_86e40                            #  1960  0x85f83  6      
  movq %rax, %rcx                        #  1961  0x85f89  3      
  nop                                    #  1962  0x85f8c  1      
  movl %eax, %eax                        #  1963  0x85f8d  2      
  movl 0xc(%r15,%rax,1), %eax            #  1964  0x85f8f  5      
  addl %edx, %eax                        #  1965  0x85f94  2      
  addl $0x8, %edx                        #  1966  0x85f96  3      
  movl %ecx, %ecx                        #  1967  0x85f99  2      
  movl %edx, (%r15,%rcx,1)               #  1968  0x85f9b  4      
  nop                                    #  1969  0x85f9f  1      
.L_86be0:                                #        0x85fa0  0      
  movl %eax, %eax                        #  1970  0x85fa0  2      
  movzwl (%r15,%rax,1), %r13d            #  1971  0x85fa2  5      
  movl $0x1, %eax                        #  1972  0x85fa7  5      
  testq %r13, %r13                       #  1973  0x85fac  3      
  setne %dl                              #  1974  0x85faf  3      
  jmpq .L_850c0                          #  1975  0x85fb2  5      
  nop                                    #  1976  0x85fb7  1      
.L_86c00:                                #        0x85fb8  0      
  movq 0x80(%rsp), %rsi                  #  1977  0x85fb8  8      
  movl %esi, %esi                        #  1978  0x85fc0  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1979  0x85fc2  5      
  leal 0x8(%rdx), %eax                   #  1980  0x85fc7  3      
  movl %esi, %esi                        #  1981  0x85fca  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1982  0x85fcc  5      
  jmpq .L_85020                          #  1983  0x85fd1  5      
  xchgw %ax, %ax                         #  1984  0x85fd6  3      
.L_86c20:                                #        0x85fd9  0      
  movl $0x0, 0x68(%rsp)                  #  1985  0x85fd9  8      
  movq $0x0, 0x90(%rsp)                  #  1986  0x85fe1  12     
  movl $0x0, 0xac(%rsp)                  #  1987  0x85fed  11     
  nop                                    #  1988  0x85ff8  1      
  jmpq .L_851c0                          #  1989  0x85ff9  5      
  nop                                    #  1990  0x85ffe  1      
  nop                                    #  1991  0x85fff  1      
.L_86c60:                                #        0x86000  0      
  movq %rdx, %rcx                        #  1992  0x86000  3      
  movl %edx, %edx                        #  1993  0x86003  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1994  0x86005  5      
  addl %eax, %edx                        #  1995  0x8600a  2      
  addl $0x8, %eax                        #  1996  0x8600c  3      
  movl %ecx, %ecx                        #  1997  0x8600f  2      
  movl %eax, (%r15,%rcx,1)               #  1998  0x86011  4      
  jmpq .L_853c0                          #  1999  0x86015  5      
  nop                                    #  2000  0x8601a  1      
.L_86c80:                                #        0x8601b  0      
  movl 0x70(%rsp), %esi                  #  2001  0x8601b  4      
  leal 0x190(%rsp), %edx                 #  2002  0x8601f  7      
  movl %r14d, %edi                       #  2003  0x86026  3      
  nop                                    #  2004  0x86029  1      
  callq .__sprint_r                      #  2005  0x8602a  5      
  testl %eax, %eax                       #  2006  0x8602f  2      
  je .L_858e0                            #  2007  0x86031  6      
  jmpq .L_859a0                          #  2008  0x86037  5      
  nop                                    #  2009  0x8603c  1      
  nop                                    #  2010  0x8603d  1      
.L_86cc0:                                #        0x8603e  0      
  movl %r8d, 0x68(%rsp)                  #  2011  0x8603e  5      
  movl %r8d, 0x7c(%rsp)                  #  2012  0x86043  5      
  movq $0x0, 0x90(%rsp)                  #  2013  0x86048  12     
  nop                                    #  2014  0x86054  1      
  movl $0x0, 0xac(%rsp)                  #  2015  0x86055  11     
  jmpq .L_851c0                          #  2016  0x86060  5      
  nop                                    #  2017  0x86065  1      
  nop                                    #  2018  0x86066  1      
.L_86d00:                                #        0x86067  0      
  movq 0x80(%rsp), %rsi                  #  2019  0x86067  8      
  movl %esi, %esi                        #  2020  0x8606f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2021  0x86071  5      
  leal 0x8(%rax), %edx                   #  2022  0x86076  3      
  movl %esi, %esi                        #  2023  0x86079  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2024  0x8607b  5      
  jmpq .L_86a60                          #  2025  0x86080  5      
  xchgw %ax, %ax                         #  2026  0x86085  3      
.L_86d20:                                #        0x86088  0      
  movl 0xb8(%rsp), %esi                  #  2027  0x86088  7      
  subl 0x98(%rsp), %esi                  #  2028  0x8608f  7      
  movq 0xb0(%rsp), %rcx                  #  2029  0x86096  8      
  movl %esi, 0x7c(%rsp)                  #  2030  0x8609e  4      
  jmpq .L_85180                          #  2031  0x860a2  5      
  nop                                    #  2032  0x860a7  1      
.L_86d40:                                #        0x860a8  0      
  movl $0x6, 0x7c(%rsp)                  #  2033  0x860a8  8      
  cmpl $0x6, %r8d                        #  2034  0x860b0  4      
  cmoval 0x7c(%rsp), %r8d                #  2035  0x860b4  6      
  movl $0x0, %eax                        #  2036  0x860ba  5      
  nop                                    #  2037  0x860bf  1      
  movq $0x10023c12, 0x98(%rsp)           #  2038  0x860c0  12     
  testl %r8d, %r8d                       #  2039  0x860cc  3      
  movl %r8d, 0x7c(%rsp)                  #  2040  0x860cf  5      
  cmovnsl %r8d, %eax                     #  2041  0x860d4  4      
  movl %eax, 0x68(%rsp)                  #  2042  0x860d8  4      
  nop                                    #  2043  0x860dc  1      
  jmpq .L_84620                          #  2044  0x860dd  5      
  nop                                    #  2045  0x860e2  1      
  nop                                    #  2046  0x860e3  1      
.L_86da0:                                #        0x860e4  0      
  movq 0x80(%rsp), %rax                  #  2047  0x860e4  8      
  movl %eax, %eax                        #  2048  0x860ec  2      
  movl (%r15,%rax,1), %edx               #  2049  0x860ee  4      
  cmpl $0x2f, %edx                       #  2050  0x860f2  3      
  ja .L_871c0                            #  2051  0x860f5  6      
  movq %rax, %rcx                        #  2052  0x860fb  3      
  nop                                    #  2053  0x860fe  1      
  movl %eax, %eax                        #  2054  0x860ff  2      
  movl 0xc(%r15,%rax,1), %eax            #  2055  0x86101  5      
  addl %edx, %eax                        #  2056  0x86106  2      
  addl $0x8, %edx                        #  2057  0x86108  3      
  movl %ecx, %ecx                        #  2058  0x8610b  2      
  movl %edx, (%r15,%rcx,1)               #  2059  0x8610d  4      
  nop                                    #  2060  0x86111  1      
.L_86de0:                                #        0x86112  0      
  movl %eax, %eax                        #  2061  0x86112  2      
  movl (%r15,%rax,1), %r13d              #  2062  0x86114  4      
  movl $0x1, %eax                        #  2063  0x86118  5      
  testq %r13, %r13                       #  2064  0x8611d  3      
  setne %dl                              #  2065  0x86120  3      
  jmpq .L_850c0                          #  2066  0x86123  5      
  nop                                    #  2067  0x86128  1      
.L_86e00:                                #        0x86129  0      
  movq 0x80(%rsp), %rcx                  #  2068  0x86129  8      
  movq 0x80(%rsp), %rsi                  #  2069  0x86131  8      
  movl %ecx, %ecx                        #  2070  0x86139  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2071  0x8613b  5      
  leal 0x8(%rdx), %ecx                   #  2072  0x86140  3      
  nop                                    #  2073  0x86143  1      
  movl %esi, %esi                        #  2074  0x86144  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2075  0x86146  5      
  jmpq .L_86b80                          #  2076  0x8614b  5      
  nop                                    #  2077  0x86150  1      
  nop                                    #  2078  0x86151  1      
.L_86e40:                                #        0x86152  0      
  movq 0x80(%rsp), %rsi                  #  2079  0x86152  8      
  movl %esi, %esi                        #  2080  0x8615a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2081  0x8615c  5      
  leal 0x8(%rax), %edx                   #  2082  0x86161  3      
  movl %esi, %esi                        #  2083  0x86164  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2084  0x86166  5      
  jmpq .L_86be0                          #  2085  0x8616b  5      
  xchgw %ax, %ax                         #  2086  0x86170  3      
.L_86e60:                                #        0x86173  0      
  movq 0x80(%rsp), %rdx                  #  2087  0x86173  8      
  movl %edx, %edx                        #  2088  0x8617b  2      
  movl (%r15,%rdx,1), %ecx               #  2089  0x8617d  4      
  cmpl $0x2f, %ecx                       #  2090  0x86181  3      
  ja .L_872a0                            #  2091  0x86184  6      
  movq %rdx, %rsi                        #  2092  0x8618a  3      
  nop                                    #  2093  0x8618d  1      
  movl %edx, %edx                        #  2094  0x8618e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  2095  0x86190  5      
  addl %ecx, %edx                        #  2096  0x86195  2      
  addl $0x8, %ecx                        #  2097  0x86197  3      
  movl %esi, %esi                        #  2098  0x8619a  2      
  movl %ecx, (%r15,%rsi,1)               #  2099  0x8619c  4      
  nop                                    #  2100  0x861a0  1      
.L_86ea0:                                #        0x861a1  0      
  movl %edx, %edx                        #  2101  0x861a1  2      
  movl (%r15,%rdx,1), %r13d              #  2102  0x861a3  4      
  jmpq .L_85260                          #  2103  0x861a7  5      
  nop                                    #  2104  0x861ac  1      
  nop                                    #  2105  0x861ad  1      
.L_86ec0:                                #        0x861ae  0      
  movq 0x80(%rsp), %rax                  #  2106  0x861ae  8      
  movl %eax, %eax                        #  2107  0x861b6  2      
  movl (%r15,%rax,1), %edx               #  2108  0x861b8  4      
  cmpl $0x2f, %edx                       #  2109  0x861bc  3      
  ja .L_87260                            #  2110  0x861bf  6      
  movq %rax, %rcx                        #  2111  0x861c5  3      
  nop                                    #  2112  0x861c8  1      
  movl %eax, %eax                        #  2113  0x861c9  2      
  movl 0xc(%r15,%rax,1), %eax            #  2114  0x861cb  5      
  addl %edx, %eax                        #  2115  0x861d0  2      
  addl $0x8, %edx                        #  2116  0x861d2  3      
  movl %ecx, %ecx                        #  2117  0x861d5  2      
  movl %edx, (%r15,%rcx,1)               #  2118  0x861d7  4      
  nop                                    #  2119  0x861db  1      
.L_86f00:                                #        0x861dc  0      
  movl %eax, %eax                        #  2120  0x861dc  2      
  movl (%r15,%rax,1), %r13d              #  2121  0x861de  4      
  jmpq .L_85540                          #  2122  0x861e2  5      
  nop                                    #  2123  0x861e7  1      
  nop                                    #  2124  0x861e8  1      
.L_86f20:                                #        0x861e9  0      
  andl $0x200, %r12d                     #  2125  0x861e9  7      
  je .L_872e0                            #  2126  0x861f0  6      
  movq 0x80(%rsp), %rcx                  #  2127  0x861f6  8      
  movl %ecx, %ecx                        #  2128  0x861fe  2      
  movl (%r15,%rcx,1), %edx               #  2129  0x86200  4      
  cmpl $0x2f, %edx                       #  2130  0x86204  3      
  xchgw %ax, %ax                         #  2131  0x86207  3      
  ja .L_87320                            #  2132  0x8620a  6      
  movl %ecx, %ecx                        #  2133  0x86210  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2134  0x86212  5      
  addl %edx, %eax                        #  2135  0x86217  2      
  addl $0x8, %edx                        #  2136  0x86219  3      
  movl %ecx, %ecx                        #  2137  0x8621c  2      
  movl %edx, (%r15,%rcx,1)               #  2138  0x8621e  4      
  nop                                    #  2139  0x86222  1      
.L_86f60:                                #        0x86223  0      
  movl %eax, %eax                        #  2140  0x86223  2      
  movl (%r15,%rax,1), %eax               #  2141  0x86225  4      
  movzbl 0x8c(%rsp), %edx                #  2142  0x86229  8      
  movl %eax, %eax                        #  2143  0x86231  2      
  movb %dl, (%r15,%rax,1)                #  2144  0x86233  4      
  jmpq .L_843e0                          #  2145  0x86237  5      
  nop                                    #  2146  0x8623c  1      
.L_86f80:                                #        0x8623d  0      
  movq 0x80(%rsp), %rax                  #  2147  0x8623d  8      
  movl %eax, %eax                        #  2148  0x86245  2      
  movl (%r15,%rax,1), %edx               #  2149  0x86247  4      
  cmpl $0x2f, %edx                       #  2150  0x8624b  3      
  ja .L_87220                            #  2151  0x8624e  6      
  movq %rax, %rcx                        #  2152  0x86254  3      
  nop                                    #  2153  0x86257  1      
  movl %eax, %eax                        #  2154  0x86258  2      
  movl 0xc(%r15,%rax,1), %eax            #  2155  0x8625a  5      
  addl %edx, %eax                        #  2156  0x8625f  2      
  addl $0x8, %edx                        #  2157  0x86261  3      
  movl %ecx, %ecx                        #  2158  0x86264  2      
  movl %edx, (%r15,%rcx,1)               #  2159  0x86266  4      
  nop                                    #  2160  0x8626a  1      
.L_86fc0:                                #        0x8626b  0      
  movl %eax, %eax                        #  2161  0x8626b  2      
  movslq (%r15,%rax,1), %r13             #  2162  0x8626d  4      
  jmpq .L_85460                          #  2163  0x86271  5      
  nop                                    #  2164  0x86276  1      
  nop                                    #  2165  0x86277  1      
.L_86fe0:                                #        0x86278  0      
  movq 0x80(%rsp), %rsi                  #  2166  0x86278  8      
  movl %esi, %esi                        #  2167  0x86280  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2168  0x86282  5      
  leal 0x8(%rax), %edx                   #  2169  0x86287  3      
  movl %esi, %esi                        #  2170  0x8628a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2171  0x8628c  5      
  jmpq .L_869a0                          #  2172  0x86291  5      
  xchgw %ax, %ax                         #  2173  0x86296  3      
.L_87000:                                #        0x86299  0      
  movq 0x80(%rsp), %rsi                  #  2174  0x86299  8      
  movl %esi, %esi                        #  2175  0x862a1  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2176  0x862a3  5      
  leal 0x8(%rax), %edx                   #  2177  0x862a8  3      
  movl %esi, %esi                        #  2178  0x862ab  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2179  0x862ad  5      
  jmpq .L_86a00                          #  2180  0x862b2  5      
  xchgw %ax, %ax                         #  2181  0x862b7  3      
.L_87020:                                #        0x862ba  0      
  cmpl $0x0, 0x7c(%rsp)                  #  2182  0x862ba  5      
  movq $0x0, 0x90(%rsp)                  #  2183  0x862bf  12     
  cmovnsl 0x7c(%rsp), %r13d              #  2184  0x862cb  6      
  nop                                    #  2185  0x862d1  1      
  movl $0x0, 0xac(%rsp)                  #  2186  0x862d2  11     
  movl %r13d, 0x68(%rsp)                 #  2187  0x862dd  5      
  jmpq .L_851c0                          #  2188  0x862e2  5      
  nop                                    #  2189  0x862e7  1      
.L_87060:                                #        0x862e8  0      
  movl 0x98(%rsp), %edi                  #  2190  0x862e8  7      
  nop                                    #  2191  0x862ef  1      
  nop                                    #  2192  0x862f0  1      
  callq .strlen                          #  2193  0x862f1  5      
  testl %eax, %eax                       #  2194  0x862f6  2      
  movl %eax, 0x7c(%rsp)                  #  2195  0x862f8  4      
  movq $0x0, 0x90(%rsp)                  #  2196  0x862fc  12     
  cmovnsl %eax, %r13d                    #  2197  0x86308  4      
  nop                                    #  2198  0x8630c  1      
  movl $0x0, 0xac(%rsp)                  #  2199  0x8630d  11     
  movl %r13d, 0x68(%rsp)                 #  2200  0x86318  5      
  jmpq .L_851c0                          #  2201  0x8631d  5      
  nop                                    #  2202  0x86322  1      
.L_870c0:                                #        0x86323  0      
  movq 0x70(%rsp), %rsi                  #  2203  0x86323  5      
  movl %esi, %esi                        #  2204  0x86328  2      
  testb $0x2, 0xd(%r15,%rsi,1)           #  2205  0x8632a  6      
  jne .L_85a00                           #  2206  0x86330  6      
  movl 0x70(%rsp), %edi                  #  2207  0x86336  4      
  addl $0x5c, %edi                       #  2208  0x8633a  3      
  nop                                    #  2209  0x8633d  1      
  callq .__local_lock_release_recursive  #  2210  0x8633e  5      
  movl $0xffffffff, 0x8c(%rsp)           #  2211  0x86343  11     
  jmpq .L_84ec0                          #  2212  0x8634e  5      
  nop                                    #  2213  0x86353  1      
  nop                                    #  2214  0x86354  1      
.L_87100:                                #        0x86355  0      
  movl %r12d, 0x7c(%rsp)                 #  2215  0x86355  5      
  movq 0x68(%rsp), %rbx                  #  2216  0x8635a  5      
  movl 0x90(%rsp), %r12d                 #  2217  0x8635f  8      
  jmpq .L_867c0                          #  2218  0x86367  5      
  nop                                    #  2219  0x8636c  1      
.L_87120:                                #        0x8636d  0      
  movq 0x80(%rsp), %rcx                  #  2220  0x8636d  8      
  movq 0x80(%rsp), %rsi                  #  2221  0x86375  8      
  movl %ecx, %ecx                        #  2222  0x8637d  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2223  0x8637f  5      
  leal 0x8(%rdx), %ecx                   #  2224  0x86384  3      
  nop                                    #  2225  0x86387  1      
  movl %esi, %esi                        #  2226  0x86388  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2227  0x8638a  5      
  jmpq .L_86360                          #  2228  0x8638f  5      
  nop                                    #  2229  0x86394  1      
  nop                                    #  2230  0x86395  1      
.L_87160:                                #        0x86396  0      
  movl 0x18(%rsp), %r8d                  #  2231  0x86396  5      
  leal 0x1c8(%rsp), %edx                 #  2232  0x8639b  7      
  xorl %ecx, %ecx                        #  2233  0x863a2  2      
  xorl %esi, %esi                        #  2234  0x863a4  2      
  movl %r14d, %edi                       #  2235  0x863a6  3      
  nop                                    #  2236  0x863a9  1      
  callq ._wcsrtombs_r                    #  2237  0x863aa  5      
  cmpl $0xffffffff, %eax                 #  2238  0x863af  5      
  movl %eax, 0x7c(%rsp)                  #  2239  0x863b4  4      
  je .L_873e0                            #  2240  0x863b8  6      
  movl 0x98(%rsp), %ecx                  #  2241  0x863be  7      
  movl %ecx, 0x1c8(%rsp)                 #  2242  0x863c5  7      
  jmpq .L_867c0                          #  2243  0x863cc  5      
.L_871a0:                                #        0x863d1  0      
  movq 0x70(%rsp), %rsi                  #  2244  0x863d1  5      
  movl %esi, %esi                        #  2245  0x863d6  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  2246  0x863d8  6      
  orl $0x40, %eax                        #  2247  0x863de  3      
  movl %esi, %esi                        #  2248  0x863e1  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  2249  0x863e3  6      
  jmpq .L_859c0                          #  2250  0x863e9  5      
  nop                                    #  2251  0x863ee  1      
.L_871c0:                                #        0x863ef  0      
  movq 0x80(%rsp), %rsi                  #  2252  0x863ef  8      
  movl %esi, %esi                        #  2253  0x863f7  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2254  0x863f9  5      
  leal 0x8(%rax), %edx                   #  2255  0x863fe  3      
  movl %esi, %esi                        #  2256  0x86401  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2257  0x86403  5      
  jmpq .L_86de0                          #  2258  0x86408  5      
  xchgw %ax, %ax                         #  2259  0x8640d  3      
.L_871e0:                                #        0x86410  0      
  movq 0x80(%rsp), %rsi                  #  2260  0x86410  8      
  movl %esi, %esi                        #  2261  0x86418  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2262  0x8641a  5      
  leal 0x8(%rax), %edx                   #  2263  0x8641f  3      
  movl %esi, %esi                        #  2264  0x86422  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2265  0x86424  5      
  jmpq .L_86480                          #  2266  0x86429  5      
  xchgw %ax, %ax                         #  2267  0x8642e  3      
.L_87200:                                #        0x86431  0      
  movq 0x80(%rsp), %rsi                  #  2268  0x86431  8      
  movl %esi, %esi                        #  2269  0x86439  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2270  0x8643b  5      
  leal 0x8(%rax), %edx                   #  2271  0x86440  3      
  movl %esi, %esi                        #  2272  0x86443  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2273  0x86445  5      
  jmpq .L_86680                          #  2274  0x8644a  5      
  xchgw %ax, %ax                         #  2275  0x8644f  3      
.L_87220:                                #        0x86452  0      
  movq 0x80(%rsp), %rsi                  #  2276  0x86452  8      
  movl %esi, %esi                        #  2277  0x8645a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2278  0x8645c  5      
  leal 0x8(%rax), %edx                   #  2279  0x86461  3      
  movl %esi, %esi                        #  2280  0x86464  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2281  0x86466  5      
  jmpq .L_86fc0                          #  2282  0x8646b  5      
  xchgw %ax, %ax                         #  2283  0x86470  3      
.L_87240:                                #        0x86473  0      
  movq 0x80(%rsp), %rsi                  #  2284  0x86473  8      
  movl %esi, %esi                        #  2285  0x8647b  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2286  0x8647d  5      
  leal 0x8(%rax), %edx                   #  2287  0x86482  3      
  movl %esi, %esi                        #  2288  0x86485  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2289  0x86487  5      
  jmpq .L_865a0                          #  2290  0x8648c  5      
  xchgw %ax, %ax                         #  2291  0x86491  3      
.L_87260:                                #        0x86494  0      
  movq 0x80(%rsp), %rsi                  #  2292  0x86494  8      
  movl %esi, %esi                        #  2293  0x8649c  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2294  0x8649e  5      
  leal 0x8(%rax), %edx                   #  2295  0x864a3  3      
  movl %esi, %esi                        #  2296  0x864a6  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2297  0x864a8  5      
  jmpq .L_86f00                          #  2298  0x864ad  5      
  xchgw %ax, %ax                         #  2299  0x864b2  3      
.L_87280:                                #        0x864b5  0      
  movq 0x80(%rsp), %rsi                  #  2300  0x864b5  8      
  movl %esi, %esi                        #  2301  0x864bd  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2302  0x864bf  5      
  leal 0x8(%rax), %edx                   #  2303  0x864c4  3      
  movl %esi, %esi                        #  2304  0x864c7  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2305  0x864c9  5      
  jmpq .L_86500                          #  2306  0x864ce  5      
  xchgw %ax, %ax                         #  2307  0x864d3  3      
.L_872a0:                                #        0x864d6  0      
  movq 0x80(%rsp), %rcx                  #  2308  0x864d6  8      
  movq 0x80(%rsp), %rsi                  #  2309  0x864de  8      
  movl %ecx, %ecx                        #  2310  0x864e6  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2311  0x864e8  5      
  leal 0x8(%rdx), %ecx                   #  2312  0x864ed  3      
  nop                                    #  2313  0x864f0  1      
  movl %esi, %esi                        #  2314  0x864f1  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2315  0x864f3  5      
  jmpq .L_86ea0                          #  2316  0x864f8  5      
  nop                                    #  2317  0x864fd  1      
  nop                                    #  2318  0x864fe  1      
.L_872e0:                                #        0x864ff  0      
  movq 0x80(%rsp), %rcx                  #  2319  0x864ff  8      
  movl %ecx, %ecx                        #  2320  0x86507  2      
  movl (%r15,%rcx,1), %edx               #  2321  0x86509  4      
  cmpl $0x2f, %edx                       #  2322  0x8650d  3      
  ja .L_86d00                            #  2323  0x86510  6      
  movl %ecx, %ecx                        #  2324  0x86516  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2325  0x86518  5      
  addl %edx, %eax                        #  2326  0x8651d  2      
  addl $0x8, %edx                        #  2327  0x8651f  3      
  movl %ecx, %ecx                        #  2328  0x86522  2      
  movl %edx, (%r15,%rcx,1)               #  2329  0x86524  4      
  jmpq .L_86a60                          #  2330  0x86528  5      
  nop                                    #  2331  0x8652d  1      
  nop                                    #  2332  0x8652e  1      
.L_87320:                                #        0x8652f  0      
  movq 0x80(%rsp), %rsi                  #  2333  0x8652f  8      
  movl %esi, %esi                        #  2334  0x86537  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2335  0x86539  5      
  leal 0x8(%rax), %edx                   #  2336  0x8653e  3      
  movl %esi, %esi                        #  2337  0x86541  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2338  0x86543  5      
  jmpq .L_86f60                          #  2339  0x86548  5      
  xchgw %ax, %ax                         #  2340  0x8654d  3      
.L_87340:                                #        0x86550  0      
  movq 0x80(%rsp), %rsi                  #  2341  0x86550  8      
  movl %esi, %esi                        #  2342  0x86558  2      
  movl (%r15,%rsi,1), %edx               #  2343  0x8655a  4      
  cmpl $0x2f, %edx                       #  2344  0x8655e  3      
  ja .L_873a0                            #  2345  0x86561  6      
  movl %esi, %esi                        #  2346  0x86567  2      
  movl 0xc(%r15,%rsi,1), %eax            #  2347  0x86569  5      
  addl %edx, %eax                        #  2348  0x8656e  2      
  addl $0x8, %edx                        #  2349  0x86570  3      
  nop                                    #  2350  0x86573  1      
  movl %esi, %esi                        #  2351  0x86574  2      
  movl %edx, (%r15,%rsi,1)               #  2352  0x86576  4      
  nop                                    #  2353  0x8657a  1      
  nop                                    #  2354  0x8657b  1      
.L_87380:                                #        0x8657c  0      
  movl %eax, %eax                        #  2355  0x8657c  2      
  movl (%r15,%rax,1), %r8d               #  2356  0x8657e  4      
  testl %r8d, %r8d                       #  2357  0x86582  3      
  jns .L_84d40                           #  2358  0x86585  6      
  movl %r13d, %r13d                      #  2359  0x8658b  3      
  movzbl (%r15,%r13,1), %eax             #  2360  0x8658e  5      
  orl $0xffffffff, %r8d                  #  2361  0x86593  7      
  jmpq .L_845a0                          #  2362  0x8659a  5      
.L_873a0:                                #        0x8659f  0      
  movq 0x80(%rsp), %rdx                  #  2363  0x8659f  8      
  movq 0x80(%rsp), %rcx                  #  2364  0x865a7  8      
  movl %edx, %edx                        #  2365  0x865af  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2366  0x865b1  5      
  leal 0x8(%rax), %edx                   #  2367  0x865b6  3      
  nop                                    #  2368  0x865b9  1      
  movl %ecx, %ecx                        #  2369  0x865ba  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  2370  0x865bc  5      
  jmpq .L_87380                          #  2371  0x865c1  5      
  nop                                    #  2372  0x865c6  1      
  nop                                    #  2373  0x865c7  1      
.L_873e0:                                #        0x865c8  0      
  movq 0x70(%rsp), %rdx                  #  2374  0x865c8  5      
  movl %edx, %edx                        #  2375  0x865cd  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  2376  0x865cf  6      
  orl $0x40, %eax                        #  2377  0x865d5  3      
  movl %edx, %edx                        #  2378  0x865d8  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  2379  0x865da  6      
  jmpq .L_859c0                          #  2380  0x865e0  5      
  nop                                    #  2381  0x865e5  1      
                                                                  
.size _vfiprintf_r, .-_vfiprintf_r

