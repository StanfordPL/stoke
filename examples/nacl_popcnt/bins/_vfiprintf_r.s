  .text
  .globl _vfiprintf_r
  .type _vfiprintf_r, @function

#! file-offset 0x84220
#! rip-offset  0x84220
#! capacity    12800 bytes

# Text                                   #  Line  RIP      Bytes  
._vfiprintf_r:                           #        0x84220  0      
  pushq %r14                             #  1     0x84220  3      
  movl %esi, %esi                        #  2     0x84223  2      
  movl %edi, %r14d                       #  3     0x84225  3      
  movl %ecx, %ecx                        #  4     0x84228  2      
  pushq %r13                             #  5     0x8422a  3      
  pushq %r12                             #  6     0x8422d  3      
  pushq %rbx                             #  7     0x84230  2      
  movl %edx, %ebx                        #  8     0x84232  2      
  movl $0x8, %edx                        #  9     0x84234  5      
  subl $0x1e8, %esp                      #  10    0x84239  6      
  addq %r15, %rsp                        #  11    0x8423f  3      
  xchgw %ax, %ax                         #  12    0x84242  3      
  leal 0x1c0(%rsp), %eax                 #  13    0x84245  7      
  movq %rsi, 0x70(%rsp)                  #  14    0x8424c  5      
  xorl %esi, %esi                        #  15    0x84251  2      
  movq %rcx, 0x80(%rsp)                  #  16    0x84253  8      
  movl %eax, %edi                        #  17    0x8425b  2      
  movq %rax, 0x38(%rsp)                  #  18    0x8425d  5      
  nop                                    #  19    0x84262  1      
  nop                                    #  20    0x84263  1      
  nop                                    #  21    0x84264  1      
  callq .memset                          #  22    0x84265  5      
  testq %r14, %r14                       #  23    0x8426a  3      
  je .L_842a0                            #  24    0x8426d  6      
  movl %r14d, %r14d                      #  25    0x84273  3      
  movl 0x38(%r15,%r14,1), %r11d          #  26    0x84276  5      
  testl %r11d, %r11d                     #  27    0x8427b  3      
  je .L_84fa0                            #  28    0x8427e  6      
  nop                                    #  29    0x84284  1      
.L_842a0:                                #        0x84285  0      
  movq 0x70(%rsp), %rcx                  #  30    0x84285  5      
  movl %ecx, %ecx                        #  31    0x8428a  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  32    0x8428c  6      
  movswl %dx, %eax                       #  33    0x84292  3      
  testb $0x2, %ah                        #  34    0x84295  3      
  je .L_84f60                            #  35    0x84298  6      
  nop                                    #  36    0x8429e  1      
.L_842c0:                                #        0x8429f  0      
  testb $0x20, %ah                       #  37    0x8429f  3      
  jne .L_84300                           #  38    0x842a2  6      
  movq 0x70(%rsp), %rax                  #  39    0x842a8  5      
  orb $0x20, %dh                         #  40    0x842ad  3      
  movl %eax, %eax                        #  41    0x842b0  2      
  movw %dx, 0xc(%r15,%rax,1)             #  42    0x842b2  6      
  movl %eax, %eax                        #  43    0x842b8  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  44    0x842ba  9      
  movswl %dx, %eax                       #  45    0x842c3  3      
  nop                                    #  46    0x842c6  1      
  nop                                    #  47    0x842c7  1      
.L_84300:                                #        0x842c8  0      
  testb $0x8, %al                        #  48    0x842c8  2      
  je .L_84e20                            #  49    0x842ca  6      
  movq 0x70(%rsp), %rdx                  #  50    0x842d0  5      
  movl %edx, %edx                        #  51    0x842d5  2      
  movl 0x10(%r15,%rdx,1), %r10d          #  52    0x842d7  5      
  testl %r10d, %r10d                     #  53    0x842dc  3      
  je .L_84e20                            #  54    0x842df  6      
  movl %eax, %edx                        #  55    0x842e5  2      
  nop                                    #  56    0x842e7  1      
  andl $0x1a, %edx                       #  57    0x842e8  3      
  cmpl $0xa, %edx                        #  58    0x842eb  3      
  je .L_84e80                            #  59    0x842ee  6      
  nop                                    #  60    0x842f4  1      
  nop                                    #  61    0x842f5  1      
.L_84340:                                #        0x842f6  0      
  leal 0xe0(%rsp), %eax                  #  62    0x842f6  7      
  leal 0x150(%rsp), %ecx                 #  63    0x842fd  7      
  leal 0x1cc(%rsp), %esi                 #  64    0x84304  7      
  movq %rbx, 0x60(%rsp)                  #  65    0x8430b  5      
  nop                                    #  66    0x84310  1      
  movl $0x0, 0x198(%rsp)                 #  67    0x84311  11     
  movq %rax, 0x28(%rsp)                  #  68    0x8431c  5      
  movl 0x28(%rsp), %eax                  #  69    0x84321  4      
  movq %rcx, %rbx                        #  70    0x84325  3      
  movq %rcx, 0x30(%rsp)                  #  71    0x84328  5      
  nop                                    #  72    0x8432d  1      
  movl %ecx, 0x190(%rsp)                 #  73    0x8432e  7      
  movl $0x0, 0x194(%rsp)                 #  74    0x84335  11     
  movq $0x0, 0xc0(%rsp)                  #  75    0x84340  12     
  xchgw %ax, %ax                         #  76    0x8434c  3      
  addl $0x64, %eax                       #  77    0x8434f  3      
  movq $0x0, 0xb0(%rsp)                  #  78    0x84352  12     
  movl $0x0, 0xd4(%rsp)                  #  79    0x8435e  11     
  movl %eax, %eax                        #  80    0x84369  2      
  nop                                    #  81    0x8436b  1      
  movq $0x0, 0xd8(%rsp)                  #  82    0x8436c  12     
  movl $0x0, 0x8c(%rsp)                  #  83    0x84378  11     
  movl %eax, %edx                        #  84    0x84383  2      
  movq %rsi, 0x20(%rsp)                  #  85    0x84385  5      
  xchgw %ax, %ax                         #  86    0x8438a  3      
  movq %rax, 0xb8(%rsp)                  #  87    0x8438d  8      
  subl $0x1, %edx                        #  88    0x84395  3      
  movq %rdx, 0xc8(%rsp)                  #  89    0x84398  8      
  nop                                    #  90    0x843a0  1      
.L_84400:                                #        0x843a1  0      
  movq 0x60(%rsp), %r12                  #  91    0x843a1  5      
  movq %rbx, %r13                        #  92    0x843a6  3      
  jmpq .L_84460                          #  93    0x843a9  5      
  nop                                    #  94    0x843ae  1      
  nop                                    #  95    0x843af  1      
.L_84420:                                #        0x843b0  0      
  cmpl $0x25, 0x1cc(%rsp)                #  96    0x843b0  8      
  je .L_84500                            #  97    0x843b8  6      
  nop                                    #  98    0x843be  1      
  nop                                    #  99    0x843bf  1      
.L_84440:                                #        0x843c0  0      
  leal (%rax,%r12,1), %r12d              #  100   0x843c0  4      
  nop                                    #  101   0x843c4  1      
  nop                                    #  102   0x843c5  1      
.L_84460:                                #        0x843c6  0      
  movl 0xffac7f4(%rip), %ebx             #  103   0x843c6  6      
  nop                                    #  104   0x843cc  1      
  nop                                    #  105   0x843cd  1      
  callq .__locale_charset                #  106   0x843ce  5      
  movl %eax, %r8d                        #  107   0x843d3  3      
  movq %r8, 0x40(%rsp)                   #  108   0x843d6  5      
  nop                                    #  109   0x843db  1      
  nop                                    #  110   0x843dc  1      
  callq .__locale_mb_cur_max             #  111   0x843dd  5      
  movl 0x38(%rsp), %r9d                  #  112   0x843e2  5      
  movl %eax, %ecx                        #  113   0x843e7  2      
  movq 0x40(%rsp), %r8                   #  114   0x843e9  5      
  movl %r12d, %edx                       #  115   0x843ee  3      
  movl 0x20(%rsp), %esi                  #  116   0x843f1  4      
  movl %r14d, %edi                       #  117   0x843f5  3      
  xchgw %ax, %ax                         #  118   0x843f8  3      
  andl $0xffffffe0, %ebx                 #  119   0x843fb  6      
  addq %r15, %rbx                        #  120   0x84401  3      
  callq %rbx                             #  121   0x84404  2      
  cmpl $0x0, %eax                        #  122   0x84406  3      
  je .L_84500                            #  123   0x84409  6      
  jge .L_84420                           #  124   0x8440f  6      
  movl 0x38(%rsp), %edi                  #  125   0x84415  4      
  movl $0x8, %edx                        #  126   0x84419  5      
  xorl %esi, %esi                        #  127   0x8441e  2      
  nop                                    #  128   0x84420  1      
  callq .memset                          #  129   0x84421  5      
  movl $0x1, %eax                        #  130   0x84426  5      
  jmpq .L_84440                          #  131   0x8442b  5      
  nop                                    #  132   0x84430  1      
  nop                                    #  133   0x84431  1      
.L_84500:                                #        0x84432  0      
  movl %r12d, %ecx                       #  134   0x84432  3      
  subl 0x60(%rsp), %ecx                  #  135   0x84435  4      
  movq %r13, %rbx                        #  136   0x84439  3      
  movl %eax, %r13d                       #  137   0x8443c  3      
  je .L_84580                            #  138   0x8443f  6      
  movl %ebx, %ebx                        #  139   0x84445  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  140   0x84447  5      
  movl 0x194(%rsp), %eax                 #  141   0x8444c  7      
  nop                                    #  142   0x84453  1      
  movl 0x60(%rsp), %esi                  #  143   0x84454  4      
  addl %ecx, 0x198(%rsp)                 #  144   0x84458  7      
  addl $0x1, %eax                        #  145   0x8445f  3      
  cmpl $0x7, %eax                        #  146   0x84462  3      
  movl %ebx, %ebx                        #  147   0x84465  2      
  movl %esi, (%r15,%rbx,1)               #  148   0x84467  4      
  movl %eax, 0x194(%rsp)                 #  149   0x8446b  7      
  xchgw %ax, %ax                         #  150   0x84472  3      
  jg .L_84f20                            #  151   0x84475  6      
  addl $0x8, %ebx                        #  152   0x8447b  3      
  nop                                    #  153   0x8447e  1      
  nop                                    #  154   0x8447f  1      
.L_84560:                                #        0x84480  0      
  addl %ecx, 0x8c(%rsp)                  #  155   0x84480  7      
  nop                                    #  156   0x84487  1      
  nop                                    #  157   0x84488  1      
.L_84580:                                #        0x84489  0      
  testl %r13d, %r13d                     #  158   0x84489  3      
  je .L_858e0                            #  159   0x8448c  6      
  addl $0x1, %r12d                       #  160   0x84492  4      
  movb $0x0, 0x1df(%rsp)                 #  161   0x84496  8      
  movl $0xffffffff, %r8d                 #  162   0x8449e  6      
  movq %r12, %rdx                        #  163   0x844a4  3      
  xchgw %ax, %ax                         #  164   0x844a7  3      
  movq %r12, 0x60(%rsp)                  #  165   0x844aa  5      
  movl %r12d, %r12d                      #  166   0x844af  3      
  movzbl (%r15,%r12,1), %eax             #  167   0x844b2  5      
  movq %rdx, %r13                        #  168   0x844b7  3      
  movl $0x0, 0x88(%rsp)                  #  169   0x844ba  11     
  xorl %r12d, %r12d                      #  170   0x844c5  3      
  xchgw %ax, %ax                         #  171   0x844c8  3      
.L_845c0:                                #        0x844cb  0      
  movsbl %al, %eax                       #  172   0x844cb  3      
  addl $0x1, %r13d                       #  173   0x844ce  4      
  nop                                    #  174   0x844d2  1      
  nop                                    #  175   0x844d3  1      
.L_845e0:                                #        0x844d4  0      
  leal -0x20(%rax), %edx                 #  176   0x844d4  3      
  cmpl $0x5a, %edx                       #  177   0x844d7  3      
  jbe .L_84c80                           #  178   0x844da  6      
  nop                                    #  179   0x844e0  1      
  nop                                    #  180   0x844e1  1      
  testl %eax, %eax                       #  181   0x844e2  2      
  movq %r13, 0x60(%rsp)                  #  182   0x844e4  5      
  je .L_858e0                            #  183   0x844e9  6      
  leal 0xe0(%rsp), %edx                  #  184   0x844ef  7      
  movb %al, 0xe0(%rsp)                   #  185   0x844f6  7      
  nop                                    #  186   0x844fd  1      
  movb $0x0, 0x1df(%rsp)                 #  187   0x844fe  8      
  movl $0x1, 0x68(%rsp)                  #  188   0x84506  8      
  movl $0x1, 0x7c(%rsp)                  #  189   0x8450e  8      
  movq %rdx, 0x98(%rsp)                  #  190   0x84516  8      
.L_84640:                                #        0x8451e  0      
  movq $0x0, 0x90(%rsp)                  #  191   0x8451e  12     
  movl $0x0, 0xac(%rsp)                  #  192   0x8452a  11     
  nop                                    #  193   0x84535  1      
.L_84660:                                #        0x84536  0      
  movl 0x68(%rsp), %eax                  #  194   0x84536  4      
  movl %r12d, %ecx                       #  195   0x8453a  3      
  movl %r12d, %esi                       #  196   0x8453d  3      
  addl $0x2, %eax                        #  197   0x84540  3      
  andl $0x2, %ecx                        #  198   0x84543  3      
  cmovel 0x68(%rsp), %eax                #  199   0x84546  5      
  andl $0x84, %esi                       #  200   0x8454b  3      
  nop                                    #  201   0x8454e  1      
  movl %ecx, 0xa8(%rsp)                  #  202   0x8454f  7      
  movl %esi, 0xa4(%rsp)                  #  203   0x84556  7      
  movl %eax, 0x68(%rsp)                  #  204   0x8455d  4      
  jne .L_847e0                           #  205   0x84561  6      
  movl 0x88(%rsp), %r13d                 #  206   0x84567  8      
  subl %eax, %r13d                       #  207   0x8456f  3      
  testl %r13d, %r13d                     #  208   0x84572  3      
  jle .L_847e0                           #  209   0x84575  6      
  cmpl $0x10, %r13d                      #  210   0x8457b  4      
  jle .L_847a0                           #  211   0x8457f  6      
  leal 0x190(%rsp), %eax                 #  212   0x84585  7      
  nop                                    #  213   0x8458c  1      
  movq %rax, 0x10(%rsp)                  #  214   0x8458d  5      
  movq %rbx, %rax                        #  215   0x84592  3      
  movq 0x70(%rsp), %rbx                  #  216   0x84595  5      
  jmpq .L_84700                          #  217   0x8459a  5      
  xchgw %ax, %ax                         #  218   0x8459f  3      
  nop                                    #  219   0x845a2  1      
.L_846e0:                                #        0x845a3  0      
  subl $0x10, %r13d                      #  220   0x845a3  4      
  addl $0x8, %eax                        #  221   0x845a7  3      
  cmpl $0x10, %r13d                      #  222   0x845aa  4      
  jle .L_84780                           #  223   0x845ae  6      
  nop                                    #  224   0x845b4  1      
.L_84700:                                #        0x845b5  0      
  movl %eax, %eax                        #  225   0x845b5  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  226   0x845b7  9      
  movl 0x194(%rsp), %edx                 #  227   0x845c0  7      
  addl $0x10, 0x198(%rsp)                #  228   0x845c7  8      
  nop                                    #  229   0x845cf  1      
  movl %eax, %eax                        #  230   0x845d0  2      
  movl $0x10024f30, (%r15,%rax,1)        #  231   0x845d2  8      
  addl $0x1, %edx                        #  232   0x845da  3      
  cmpl $0x7, %edx                        #  233   0x845dd  3      
  movl %edx, 0x194(%rsp)                 #  234   0x845e0  7      
  jle .L_846e0                           #  235   0x845e7  6      
  movl 0x10(%rsp), %edx                  #  236   0x845ed  4      
  movl %ebx, %esi                        #  237   0x845f1  2      
  nop                                    #  238   0x845f3  1      
  movl %r14d, %edi                       #  239   0x845f4  3      
  nop                                    #  240   0x845f7  1      
  nop                                    #  241   0x845f8  1      
  callq .__sprint_r                      #  242   0x845f9  5      
  testl %eax, %eax                       #  243   0x845fe  2      
  jne .L_859a0                           #  244   0x84600  6      
  subl $0x10, %r13d                      #  245   0x84606  4      
  leal 0x150(%rsp), %eax                 #  246   0x8460a  7      
  cmpl $0x10, %r13d                      #  247   0x84611  4      
  jg .L_84700                            #  248   0x84615  6      
  nop                                    #  249   0x8461b  1      
.L_84780:                                #        0x8461c  0      
  movq %rax, %rbx                        #  250   0x8461c  3      
  nop                                    #  251   0x8461f  1      
  nop                                    #  252   0x84620  1      
.L_847a0:                                #        0x84621  0      
  movl %ebx, %ebx                        #  253   0x84621  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  254   0x84623  5      
  movl 0x194(%rsp), %eax                 #  255   0x84628  7      
  addl %r13d, 0x198(%rsp)                #  256   0x8462f  8      
  movl %ebx, %ebx                        #  257   0x84637  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  258   0x84639  8      
  addl $0x1, %eax                        #  259   0x84641  3      
  cmpl $0x7, %eax                        #  260   0x84644  3      
  movl %eax, 0x194(%rsp)                 #  261   0x84647  7      
  jg .L_85f20                            #  262   0x8464e  6      
  addl $0x8, %ebx                        #  263   0x84654  3      
  nop                                    #  264   0x84657  1      
.L_847e0:                                #        0x84658  0      
  cmpb $0x0, 0x1df(%rsp)                 #  265   0x84658  8      
  je .L_84840                            #  266   0x84660  6      
  leal 0x1df(%rsp), %eax                 #  267   0x84666  7      
  movl %ebx, %ebx                        #  268   0x8466d  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  269   0x8466f  9      
  nop                                    #  270   0x84678  1      
  addl $0x1, 0x198(%rsp)                 #  271   0x84679  8      
  movl %ebx, %ebx                        #  272   0x84681  2      
  movl %eax, (%r15,%rbx,1)               #  273   0x84683  4      
  movl 0x194(%rsp), %eax                 #  274   0x84687  7      
  addl $0x1, %eax                        #  275   0x8468e  3      
  cmpl $0x7, %eax                        #  276   0x84691  3      
  nop                                    #  277   0x84694  1      
  movl %eax, 0x194(%rsp)                 #  278   0x84695  7      
  jg .L_85c80                            #  279   0x8469c  6      
  addl $0x8, %ebx                        #  280   0x846a2  3      
  nop                                    #  281   0x846a5  1      
  nop                                    #  282   0x846a6  1      
.L_84840:                                #        0x846a7  0      
  movl 0xa8(%rsp), %ecx                  #  283   0x846a7  7      
  testl %ecx, %ecx                       #  284   0x846ae  2      
  je .L_848a0                            #  285   0x846b0  6      
  leal 0x1d0(%rsp), %eax                 #  286   0x846b6  7      
  movl %ebx, %ebx                        #  287   0x846bd  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  288   0x846bf  9      
  nop                                    #  289   0x846c8  1      
  addl $0x2, 0x198(%rsp)                 #  290   0x846c9  8      
  movl %ebx, %ebx                        #  291   0x846d1  2      
  movl %eax, (%r15,%rbx,1)               #  292   0x846d3  4      
  movl 0x194(%rsp), %eax                 #  293   0x846d7  7      
  addl $0x1, %eax                        #  294   0x846de  3      
  cmpl $0x7, %eax                        #  295   0x846e1  3      
  nop                                    #  296   0x846e4  1      
  movl %eax, 0x194(%rsp)                 #  297   0x846e5  7      
  jg .L_85cc0                            #  298   0x846ec  6      
  addl $0x8, %ebx                        #  299   0x846f2  3      
  nop                                    #  300   0x846f5  1      
  nop                                    #  301   0x846f6  1      
.L_848a0:                                #        0x846f7  0      
  cmpl $0x80, 0xa4(%rsp)                 #  302   0x846f7  8      
  je .L_85a80                            #  303   0x846ff  6      
  nop                                    #  304   0x84705  1      
.L_848c0:                                #        0x84706  0      
  movl 0xac(%rsp), %r13d                 #  305   0x84706  8      
  subl 0x7c(%rsp), %r13d                 #  306   0x8470e  5      
  testl %r13d, %r13d                     #  307   0x84713  3      
  jle .L_84a00                           #  308   0x84716  6      
  cmpl $0x10, %r13d                      #  309   0x8471c  4      
  jle .L_849c0                           #  310   0x84720  6      
  leal 0x190(%rsp), %ecx                 #  311   0x84726  7      
  movq %rbx, %rax                        #  312   0x8472d  3      
  movq 0x70(%rsp), %rbx                  #  313   0x84730  5      
  movq %rcx, (%rsp)                      #  314   0x84735  4      
  jmpq .L_84920                          #  315   0x84739  5      
  nop                                    #  316   0x8473e  1      
.L_84900:                                #        0x8473f  0      
  subl $0x10, %r13d                      #  317   0x8473f  4      
  addl $0x8, %eax                        #  318   0x84743  3      
  cmpl $0x10, %r13d                      #  319   0x84746  4      
  jle .L_849a0                           #  320   0x8474a  6      
  nop                                    #  321   0x84750  1      
.L_84920:                                #        0x84751  0      
  movl %eax, %eax                        #  322   0x84751  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  323   0x84753  9      
  movl 0x194(%rsp), %edx                 #  324   0x8475c  7      
  addl $0x10, 0x198(%rsp)                #  325   0x84763  8      
  nop                                    #  326   0x8476b  1      
  movl %eax, %eax                        #  327   0x8476c  2      
  movl $0x10024f20, (%r15,%rax,1)        #  328   0x8476e  8      
  addl $0x1, %edx                        #  329   0x84776  3      
  cmpl $0x7, %edx                        #  330   0x84779  3      
  movl %edx, 0x194(%rsp)                 #  331   0x8477c  7      
  jle .L_84900                           #  332   0x84783  6      
  movl (%rsp), %edx                      #  333   0x84789  3      
  movl %ebx, %esi                        #  334   0x8478c  2      
  xchgw %ax, %ax                         #  335   0x8478e  3      
  movl %r14d, %edi                       #  336   0x84791  3      
  nop                                    #  337   0x84794  1      
  nop                                    #  338   0x84795  1      
  callq .__sprint_r                      #  339   0x84796  5      
  testl %eax, %eax                       #  340   0x8479b  2      
  jne .L_859a0                           #  341   0x8479d  6      
  subl $0x10, %r13d                      #  342   0x847a3  4      
  leal 0x150(%rsp), %eax                 #  343   0x847a7  7      
  cmpl $0x10, %r13d                      #  344   0x847ae  4      
  jg .L_84920                            #  345   0x847b2  6      
  nop                                    #  346   0x847b8  1      
.L_849a0:                                #        0x847b9  0      
  movq %rax, %rbx                        #  347   0x847b9  3      
  nop                                    #  348   0x847bc  1      
  nop                                    #  349   0x847bd  1      
.L_849c0:                                #        0x847be  0      
  movl %ebx, %ebx                        #  350   0x847be  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  351   0x847c0  5      
  movl 0x194(%rsp), %eax                 #  352   0x847c5  7      
  addl %r13d, 0x198(%rsp)                #  353   0x847cc  8      
  movl %ebx, %ebx                        #  354   0x847d4  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  355   0x847d6  8      
  addl $0x1, %eax                        #  356   0x847de  3      
  cmpl $0x7, %eax                        #  357   0x847e1  3      
  movl %eax, 0x194(%rsp)                 #  358   0x847e4  7      
  jg .L_85c40                            #  359   0x847eb  6      
  addl $0x8, %ebx                        #  360   0x847f1  3      
  nop                                    #  361   0x847f4  1      
.L_84a00:                                #        0x847f5  0      
  movl 0x7c(%rsp), %eax                  #  362   0x847f5  4      
  movl 0x98(%rsp), %esi                  #  363   0x847f9  7      
  movl %ebx, %ebx                        #  364   0x84800  2      
  movl %eax, 0x4(%r15,%rbx,1)            #  365   0x84802  5      
  addl %eax, 0x198(%rsp)                 #  366   0x84807  7      
  movl 0x194(%rsp), %eax                 #  367   0x8480e  7      
  movl %ebx, %ebx                        #  368   0x84815  2      
  movl %esi, (%r15,%rbx,1)               #  369   0x84817  4      
  addl $0x1, %eax                        #  370   0x8481b  3      
  cmpl $0x7, %eax                        #  371   0x8481e  3      
  movl %eax, 0x194(%rsp)                 #  372   0x84821  7      
  jg .L_85bc0                            #  373   0x84828  6      
  addl $0x8, %ebx                        #  374   0x8482e  3      
  nop                                    #  375   0x84831  1      
.L_84a40:                                #        0x84832  0      
  andl $0x4, %r12d                       #  376   0x84832  4      
  je .L_84bc0                            #  377   0x84836  6      
  movl 0x88(%rsp), %r12d                 #  378   0x8483c  8      
  subl 0x68(%rsp), %r12d                 #  379   0x84844  5      
  testl %r12d, %r12d                     #  380   0x84849  3      
  jle .L_84bc0                           #  381   0x8484c  6      
  cmpl $0x10, %r12d                      #  382   0x84852  4      
  jle .L_84b40                           #  383   0x84856  6      
  movq %rbx, %rax                        #  384   0x8485c  3      
  leal 0x190(%rsp), %r13d                #  385   0x8485f  8      
  movq 0x70(%rsp), %rbx                  #  386   0x84867  5      
  jmpq .L_84aa0                          #  387   0x8486c  5      
  nop                                    #  388   0x84871  1      
.L_84a80:                                #        0x84872  0      
  subl $0x10, %r12d                      #  389   0x84872  4      
  addl $0x8, %eax                        #  390   0x84876  3      
  cmpl $0x10, %r12d                      #  391   0x84879  4      
  jle .L_84b20                           #  392   0x8487d  6      
  nop                                    #  393   0x84883  1      
.L_84aa0:                                #        0x84884  0      
  movl %eax, %eax                        #  394   0x84884  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  395   0x84886  9      
  movl 0x194(%rsp), %edx                 #  396   0x8488f  7      
  addl $0x10, 0x198(%rsp)                #  397   0x84896  8      
  nop                                    #  398   0x8489e  1      
  movl %eax, %eax                        #  399   0x8489f  2      
  movl $0x10024f30, (%r15,%rax,1)        #  400   0x848a1  8      
  addl $0x1, %edx                        #  401   0x848a9  3      
  cmpl $0x7, %edx                        #  402   0x848ac  3      
  movl %edx, 0x194(%rsp)                 #  403   0x848af  7      
  jle .L_84a80                           #  404   0x848b6  6      
  movl %r13d, %edx                       #  405   0x848bc  3      
  movl %ebx, %esi                        #  406   0x848bf  2      
  xchgw %ax, %ax                         #  407   0x848c1  3      
  movl %r14d, %edi                       #  408   0x848c4  3      
  nop                                    #  409   0x848c7  1      
  nop                                    #  410   0x848c8  1      
  callq .__sprint_r                      #  411   0x848c9  5      
  testl %eax, %eax                       #  412   0x848ce  2      
  jne .L_859a0                           #  413   0x848d0  6      
  subl $0x10, %r12d                      #  414   0x848d6  4      
  leal 0x150(%rsp), %eax                 #  415   0x848da  7      
  cmpl $0x10, %r12d                      #  416   0x848e1  4      
  jg .L_84aa0                            #  417   0x848e5  6      
  nop                                    #  418   0x848eb  1      
.L_84b20:                                #        0x848ec  0      
  movq %rax, %rbx                        #  419   0x848ec  3      
  nop                                    #  420   0x848ef  1      
  nop                                    #  421   0x848f0  1      
.L_84b40:                                #        0x848f1  0      
  movl %ebx, %ebx                        #  422   0x848f1  2      
  movl %r12d, 0x4(%r15,%rbx,1)           #  423   0x848f3  5      
  movl 0x194(%rsp), %eax                 #  424   0x848f8  7      
  addl 0x198(%rsp), %r12d                #  425   0x848ff  8      
  movl %ebx, %ebx                        #  426   0x84907  2      
  movl $0x10024f30, (%r15,%rbx,1)        #  427   0x84909  8      
  addl $0x1, %eax                        #  428   0x84911  3      
  cmpl $0x7, %eax                        #  429   0x84914  3      
  movl %eax, 0x194(%rsp)                 #  430   0x84917  7      
  movl %r12d, 0x198(%rsp)                #  431   0x8491e  8      
  jle .L_84be0                           #  432   0x84926  6      
  movl 0x70(%rsp), %esi                  #  433   0x8492c  4      
  nop                                    #  434   0x84930  1      
  leal 0x190(%rsp), %edx                 #  435   0x84931  7      
  movl %r14d, %edi                       #  436   0x84938  3      
  xchgw %ax, %ax                         #  437   0x8493b  3      
  nop                                    #  438   0x8493e  1      
  callq .__sprint_r                      #  439   0x8493f  5      
  testl %eax, %eax                       #  440   0x84944  2      
  jne .L_859a0                           #  441   0x84946  6      
  nop                                    #  442   0x8494c  1      
  nop                                    #  443   0x8494d  1      
.L_84bc0:                                #        0x8494e  0      
  movl 0x198(%rsp), %r12d                #  444   0x8494e  8      
  nop                                    #  445   0x84956  1      
  nop                                    #  446   0x84957  1      
.L_84be0:                                #        0x84958  0      
  movl 0x88(%rsp), %edx                  #  447   0x84958  7      
  cmpl %edx, 0x68(%rsp)                  #  448   0x8495f  4      
  movl %edx, %eax                        #  449   0x84963  2      
  cmovgel 0x68(%rsp), %eax               #  450   0x84965  5      
  addl %eax, 0x8c(%rsp)                  #  451   0x8496a  7      
  testl %r12d, %r12d                     #  452   0x84971  3      
  nop                                    #  453   0x84974  1      
  jne .L_85c00                           #  454   0x84975  6      
  nop                                    #  455   0x8497b  1      
  nop                                    #  456   0x8497c  1      
.L_84c20:                                #        0x8497d  0      
  cmpq $0x0, 0x90(%rsp)                  #  457   0x8497d  9      
  movl $0x0, 0x194(%rsp)                 #  458   0x84986  11     
  leal 0x150(%rsp), %ebx                 #  459   0x84991  7      
  nop                                    #  460   0x84998  1      
  je .L_84400                            #  461   0x84999  6      
  movl 0x90(%rsp), %esi                  #  462   0x8499f  7      
  movl %r14d, %edi                       #  463   0x849a6  3      
  leal 0x150(%rsp), %ebx                 #  464   0x849a9  7      
  nop                                    #  465   0x849b0  1      
  callq ._free_r                         #  466   0x849b1  5      
  jmpq .L_84400                          #  467   0x849b6  5      
  nop                                    #  468   0x849bb  1      
  nop                                    #  469   0x849bc  1      
.L_84c80:                                #        0x849bd  0      
  movl %edx, %edx                        #  470   0x849bd  2      
  movl %edx, %edx                        #  471   0x849bf  2      
  movq 0x10024c40(%r15,%rdx,8), %rdx     #  472   0x849c1  8      
  andl $0xffffffe0, %edx                 #  473   0x849c9  6      
  addq %r15, %rdx                        #  474   0x849cf  3      
  jmpq %rdx                              #  475   0x849d2  2      
  nop                                    #  476   0x849d4  1      
  movl %r14d, %edi                       #  477   0x849d5  3      
  movl %r8d, 0x40(%rsp)                  #  478   0x849d8  5      
  nop                                    #  479   0x849dd  1      
  nop                                    #  480   0x849de  1      
  callq ._localeconv_r                   #  481   0x849df  5      
  movl %eax, %eax                        #  482   0x849e4  2      
  movl %eax, %eax                        #  483   0x849e6  2      
  movl 0x4(%r15,%rax,1), %eax            #  484   0x849e8  5      
  movl %eax, %edi                        #  485   0x849ed  2      
  movq %rax, 0xd8(%rsp)                  #  486   0x849ef  8      
  nop                                    #  487   0x849f7  1      
  callq .strlen                          #  488   0x849f8  5      
  movl %r14d, %edi                       #  489   0x849fd  3      
  movl %eax, 0xd4(%rsp)                  #  490   0x84a00  7      
  xchgw %ax, %ax                         #  491   0x84a07  3      
  nop                                    #  492   0x84a0a  1      
  callq ._localeconv_r                   #  493   0x84a0b  5      
  movl %eax, %eax                        #  494   0x84a10  2      
  movl 0xd4(%rsp), %r9d                  #  495   0x84a12  8      
  movl 0x40(%rsp), %r8d                  #  496   0x84a1a  5      
  movl %eax, %eax                        #  497   0x84a1f  2      
  movl 0x8(%r15,%rax,1), %eax            #  498   0x84a21  5      
  testl %r9d, %r9d                       #  499   0x84a26  3      
  nop                                    #  500   0x84a29  1      
  movq %rax, 0xb0(%rsp)                  #  501   0x84a2a  8      
  je .L_84d60                            #  502   0x84a32  6      
  testq %rax, %rax                       #  503   0x84a38  3      
  je .L_84d60                            #  504   0x84a3b  6      
  movq 0xb0(%rsp), %rcx                  #  505   0x84a41  8      
  movl %ecx, %ecx                        #  506   0x84a49  2      
  cmpb $0x0, (%r15,%rcx,1)               #  507   0x84a4b  5      
  xchgw %ax, %ax                         #  508   0x84a50  3      
  jne .L_86aa0                           #  509   0x84a53  6      
  nop                                    #  510   0x84a59  1      
  nop                                    #  511   0x84a5a  1      
.L_84d60:                                #        0x84a5b  0      
  movl %r13d, %r13d                      #  512   0x84a5b  3      
  movzbl (%r15,%r13,1), %eax             #  513   0x84a5e  5      
  jmpq .L_845c0                          #  514   0x84a63  5      
  nop                                    #  515   0x84a68  1      
  nop                                    #  516   0x84a69  1      
  orl $0x20, %r12d                       #  517   0x84a6a  4      
  movl %r13d, %r13d                      #  518   0x84a6e  3      
  movzbl (%r15,%r13,1), %eax             #  519   0x84a71  5      
  jmpq .L_845c0                          #  520   0x84a76  5      
  nop                                    #  521   0x84a7b  1      
  movq 0x80(%rsp), %rsi                  #  522   0x84a7c  8      
  movl %esi, %esi                        #  523   0x84a84  2      
  movl (%r15,%rsi,1), %eax               #  524   0x84a86  4      
  cmpl $0x2f, %eax                       #  525   0x84a8a  3      
  ja .L_863e0                            #  526   0x84a8d  6      
  movl %esi, %esi                        #  527   0x84a93  2      
  movl 0xc(%r15,%rsi,1), %edx            #  528   0x84a95  5      
  addl %eax, %edx                        #  529   0x84a9a  2      
  addl $0x8, %eax                        #  530   0x84a9c  3      
  movl %esi, %esi                        #  531   0x84a9f  2      
  movl %eax, (%r15,%rsi,1)               #  532   0x84aa1  4      
  nop                                    #  533   0x84aa5  1      
  nop                                    #  534   0x84aa6  1      
.L_84de0:                                #        0x84aa7  0      
  movl %edx, %edx                        #  535   0x84aa7  2      
  movl (%r15,%rdx,1), %edx               #  536   0x84aa9  4      
  testl %edx, %edx                       #  537   0x84aad  2      
  movl %edx, 0x88(%rsp)                  #  538   0x84aaf  7      
  jns .L_84d60                           #  539   0x84ab6  6      
  negl 0x88(%rsp)                        #  540   0x84abc  7      
  nop                                    #  541   0x84ac3  1      
  orl $0x4, %r12d                        #  542   0x84ac4  4      
  movl %r13d, %r13d                      #  543   0x84ac8  3      
  movzbl (%r15,%r13,1), %eax             #  544   0x84acb  5      
  jmpq .L_845c0                          #  545   0x84ad0  5      
  nop                                    #  546   0x84ad5  1      
.L_84e20:                                #        0x84ad6  0      
  movl 0x70(%rsp), %esi                  #  547   0x84ad6  4      
  movl %r14d, %edi                       #  548   0x84ada  3      
  nop                                    #  549   0x84add  1      
  nop                                    #  550   0x84ade  1      
  callq .__swsetup_r                     #  551   0x84adf  5      
  testl %eax, %eax                       #  552   0x84ae4  2      
  jne .L_870e0                           #  553   0x84ae6  6      
  movq 0x70(%rsp), %rcx                  #  554   0x84aec  5      
  movl %ecx, %ecx                        #  555   0x84af1  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  556   0x84af3  6      
  movl %eax, %edx                        #  557   0x84af9  2      
  andl $0x1a, %edx                       #  558   0x84afb  3      
  cmpl $0xa, %edx                        #  559   0x84afe  3      
  nop                                    #  560   0x84b01  1      
  jne .L_84340                           #  561   0x84b02  6      
  nop                                    #  562   0x84b08  1      
  nop                                    #  563   0x84b09  1      
.L_84e80:                                #        0x84b0a  0      
  movq 0x70(%rsp), %rdx                  #  564   0x84b0a  5      
  movl %edx, %edx                        #  565   0x84b0f  2      
  cmpw $0x0, 0xe(%r15,%rdx,1)            #  566   0x84b11  7      
  js .L_84340                            #  567   0x84b18  6      
  testb $0x2, %ah                        #  568   0x84b1e  3      
  je .L_858a0                            #  569   0x84b21  6      
  nop                                    #  570   0x84b27  1      
.L_84ea0:                                #        0x84b28  0      
  movl 0x80(%rsp), %ecx                  #  571   0x84b28  7      
  movl 0x70(%rsp), %esi                  #  572   0x84b2f  4      
  movl %ebx, %edx                        #  573   0x84b33  2      
  movl %r14d, %edi                       #  574   0x84b35  3      
  nop                                    #  575   0x84b38  1      
  callq .__sbprintf                      #  576   0x84b39  5      
  movl %eax, 0x8c(%rsp)                  #  577   0x84b3e  7      
  nop                                    #  578   0x84b45  1      
  nop                                    #  579   0x84b46  1      
.L_84ee0:                                #        0x84b47  0      
  movl 0x8c(%rsp), %eax                  #  580   0x84b47  7      
  addl $0x1e8, %esp                      #  581   0x84b4e  6      
  addq %r15, %rsp                        #  582   0x84b54  3      
  popq %rbx                              #  583   0x84b57  2      
  popq %r12                              #  584   0x84b59  3      
  popq %r13                              #  585   0x84b5c  3      
  popq %r14                              #  586   0x84b5f  3      
  popq %r11                              #  587   0x84b62  3      
  nop                                    #  588   0x84b65  1      
  andl $0xffffffe0, %r11d                #  589   0x84b66  7      
  addq %r15, %r11                        #  590   0x84b6d  3      
  jmpq %r11                              #  591   0x84b70  3      
  nop                                    #  592   0x84b73  1      
  nop                                    #  593   0x84b74  1      
.L_84f20:                                #        0x84b75  0      
  movl 0x70(%rsp), %esi                  #  594   0x84b75  4      
  leal 0x190(%rsp), %edx                 #  595   0x84b79  7      
  movl %r14d, %edi                       #  596   0x84b80  3      
  movl %ecx, 0x58(%rsp)                  #  597   0x84b83  4      
  nop                                    #  598   0x84b87  1      
  callq .__sprint_r                      #  599   0x84b88  5      
  testl %eax, %eax                       #  600   0x84b8d  2      
  movl 0x58(%rsp), %ecx                  #  601   0x84b8f  4      
  jne .L_85f60                           #  602   0x84b93  6      
  leal 0x150(%rsp), %ebx                 #  603   0x84b99  7      
  jmpq .L_84560                          #  604   0x84ba0  5      
  nop                                    #  605   0x84ba5  1      
.L_84f60:                                #        0x84ba6  0      
  movl 0x70(%rsp), %edi                  #  606   0x84ba6  4      
  addl $0x5c, %edi                       #  607   0x84baa  3      
  nop                                    #  608   0x84bad  1      
  nop                                    #  609   0x84bae  1      
  callq .__local_lock_acquire_recursive  #  610   0x84baf  5      
  movq 0x70(%rsp), %rsi                  #  611   0x84bb4  5      
  movl %esi, %esi                        #  612   0x84bb9  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  613   0x84bbb  6      
  movswl %dx, %eax                       #  614   0x84bc1  3      
  jmpq .L_842c0                          #  615   0x84bc4  5      
  nop                                    #  616   0x84bc9  1      
.L_84fa0:                                #        0x84bca  0      
  movl %r14d, %edi                       #  617   0x84bca  3      
  nop                                    #  618   0x84bcd  1      
  nop                                    #  619   0x84bce  1      
  callq .__sinit                         #  620   0x84bcf  5      
  jmpq .L_842a0                          #  621   0x84bd4  5      
  nop                                    #  622   0x84bd9  1      
  nop                                    #  623   0x84bda  1      
  movl %r13d, %r13d                      #  624   0x84bdb  3      
  movzbl (%r15,%r13,1), %eax             #  625   0x84bde  5      
  cmpb $0x6c, %al                        #  626   0x84be3  2      
  je .L_86960                            #  627   0x84be5  6      
  orl $0x10, %r12d                       #  628   0x84beb  4      
  jmpq .L_845c0                          #  629   0x84bef  5      
  nop                                    #  630   0x84bf4  1      
  testb $0x20, %r12b                     #  631   0x84bf5  4      
  movq %r13, 0x60(%rsp)                  #  632   0x84bf9  5      
  je .L_86560                            #  633   0x84bfe  6      
  movq 0x80(%rsp), %rdx                  #  634   0x84c04  8      
  movl %edx, %edx                        #  635   0x84c0c  2      
  movl (%r15,%rdx,1), %eax               #  636   0x84c0e  4      
  cmpl $0x2f, %eax                       #  637   0x84c12  3      
  ja .L_86c20                            #  638   0x84c15  6      
  movq %rdx, %rcx                        #  639   0x84c1b  3      
  movl %edx, %edx                        #  640   0x84c1e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  641   0x84c20  5      
  addl %eax, %edx                        #  642   0x84c25  2      
  addl $0x8, %eax                        #  643   0x84c27  3      
  movl %ecx, %ecx                        #  644   0x84c2a  2      
  movl %eax, (%r15,%rcx,1)               #  645   0x84c2c  4      
  nop                                    #  646   0x84c30  1      
.L_85040:                                #        0x84c31  0      
  movl %edx, %edx                        #  647   0x84c31  2      
  movl (%r15,%rdx,1), %eax               #  648   0x84c33  4      
  movslq 0x8c(%rsp), %rdx                #  649   0x84c37  8      
  movl %eax, %eax                        #  650   0x84c3f  2      
  movq %rdx, (%r15,%rax,1)               #  651   0x84c41  4      
  jmpq .L_84400                          #  652   0x84c45  5      
  nop                                    #  653   0x84c4a  1      
  movq 0x80(%rsp), %rdx                  #  654   0x84c4b  8      
  movq %r13, 0x60(%rsp)                  #  655   0x84c53  5      
  movl %edx, %edx                        #  656   0x84c58  2      
  movl (%r15,%rdx,1), %eax               #  657   0x84c5a  4      
  cmpl $0x2f, %eax                       #  658   0x84c5e  3      
  ja .L_86620                            #  659   0x84c61  6      
  movq %rdx, %rcx                        #  660   0x84c67  3      
  nop                                    #  661   0x84c6a  1      
  movl %edx, %edx                        #  662   0x84c6b  2      
  movl 0xc(%r15,%rdx,1), %edx            #  663   0x84c6d  5      
  addl %eax, %edx                        #  664   0x84c72  2      
  addl $0x8, %eax                        #  665   0x84c74  3      
  movl %ecx, %ecx                        #  666   0x84c77  2      
  movl %eax, (%r15,%rcx,1)               #  667   0x84c79  4      
  nop                                    #  668   0x84c7d  1      
.L_850a0:                                #        0x84c7e  0      
  movl %edx, %edx                        #  669   0x84c7e  2      
  movl (%r15,%rdx,1), %r13d              #  670   0x84c80  4      
  orl $0x2, %r12d                        #  671   0x84c84  4      
  movb $0x30, 0x1d0(%rsp)                #  672   0x84c88  8      
  movb $0x78, 0x1d1(%rsp)                #  673   0x84c90  8      
  nop                                    #  674   0x84c98  1      
  movq $0x10023c01, 0xc0(%rsp)           #  675   0x84c99  12     
  movl $0x2, %eax                        #  676   0x84ca5  5      
  testq %r13, %r13                       #  677   0x84caa  3      
  setne %dl                              #  678   0x84cad  3      
  nop                                    #  679   0x84cb0  1      
.L_850e0:                                #        0x84cb1  0      
  movb $0x0, 0x1df(%rsp)                 #  680   0x84cb1  8      
  nop                                    #  681   0x84cb9  1      
  nop                                    #  682   0x84cba  1      
.L_85100:                                #        0x84cbb  0      
  movl %r12d, %ecx                       #  683   0x84cbb  3      
  andb $0x7f, %cl                        #  684   0x84cbe  3      
  testl %r8d, %r8d                       #  685   0x84cc1  3      
  cmovnsl %ecx, %r12d                    #  686   0x84cc4  4      
  testl %r8d, %r8d                       #  687   0x84cc8  3      
  jne .L_85120                           #  688   0x84ccb  6      
  testb %dl, %dl                         #  689   0x84cd1  2      
  je .L_85920                            #  690   0x84cd3  6      
  nop                                    #  691   0x84cd9  1      
.L_85120:                                #        0x84cda  0      
  cmpl $0x1, %eax                        #  692   0x84cda  3      
  je .L_85dc0                            #  693   0x84cdd  6      
  cmpl $0x2, %eax                        #  694   0x84ce3  3      
  je .L_85d40                            #  695   0x84ce6  6      
  movq 0xb8(%rsp), %rax                  #  696   0x84cec  8      
  movq %rax, %rdx                        #  697   0x84cf4  3      
  nop                                    #  698   0x84cf7  1      
.L_85140:                                #        0x84cf8  0      
  movl %r13d, %eax                       #  699   0x84cf8  3      
  shrq $0x3, %r13                        #  700   0x84cfb  4      
  subl $0x1, %edx                        #  701   0x84cff  3      
  andl $0x7, %eax                        #  702   0x84d02  3      
  addl $0x30, %eax                       #  703   0x84d05  3      
  testq %r13, %r13                       #  704   0x84d08  3      
  movl %edx, %edx                        #  705   0x84d0b  2      
  movb %al, (%r15,%rdx,1)                #  706   0x84d0d  4      
  jne .L_85140                           #  707   0x84d11  6      
  testb $0x1, %r12b                      #  708   0x84d17  4      
  nop                                    #  709   0x84d1b  1      
  movq %rdx, 0x98(%rsp)                  #  710   0x84d1c  8      
  jne .L_86240                           #  711   0x84d24  6      
  movl 0xb8(%rsp), %ecx                  #  712   0x84d2a  7      
  subl %edx, %ecx                        #  713   0x84d31  2      
  movl %ecx, 0x7c(%rsp)                  #  714   0x84d33  4      
  nop                                    #  715   0x84d37  1      
  movq 0xb0(%rsp), %rcx                  #  716   0x84d38  8      
  nop                                    #  717   0x84d40  1      
  nop                                    #  718   0x84d41  1      
.L_851a0:                                #        0x84d42  0      
  cmpl %r8d, 0x7c(%rsp)                  #  719   0x84d42  5      
  movl 0x7c(%rsp), %eax                  #  720   0x84d47  4      
  movl %r8d, 0xac(%rsp)                  #  721   0x84d4b  8      
  movq %rcx, 0xb0(%rsp)                  #  722   0x84d53  8      
  nop                                    #  723   0x84d5b  1      
  movq $0x0, 0x90(%rsp)                  #  724   0x84d5c  12     
  cmovll %r8d, %eax                      #  725   0x84d68  4      
  movl %eax, 0x68(%rsp)                  #  726   0x84d6c  4      
  nop                                    #  727   0x84d70  1      
.L_851e0:                                #        0x84d71  0      
  cmpb $0x1, 0x1df(%rsp)                 #  728   0x84d71  8      
  sbbl $0xffffffff, 0x68(%rsp)           #  729   0x84d79  8      
  jmpq .L_84660                          #  730   0x84d81  5      
  nop                                    #  731   0x84d86  1      
  testb $0x20, %r12b                     #  732   0x84d87  4      
  movq %r13, 0x60(%rsp)                  #  733   0x84d8b  5      
  movq $0x10023c01, 0xc0(%rsp)           #  734   0x84d90  12     
  je .L_856e0                            #  735   0x84d9c  6      
  nop                                    #  736   0x84da2  1      
.L_85220:                                #        0x84da3  0      
  movq 0x80(%rsp), %rcx                  #  737   0x84da3  8      
  movl %ecx, %ecx                        #  738   0x84dab  2      
  movl (%r15,%rcx,1), %edx               #  739   0x84dad  4      
  cmpl $0x2f, %edx                       #  740   0x84db1  3      
  ja .L_863a0                            #  741   0x84db4  6      
  movq %rcx, %rsi                        #  742   0x84dba  3      
  nop                                    #  743   0x84dbd  1      
  movl %ecx, %ecx                        #  744   0x84dbe  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  745   0x84dc0  5      
  addl %edx, %ecx                        #  746   0x84dc5  2      
  addl $0x8, %edx                        #  747   0x84dc7  3      
  movl %esi, %esi                        #  748   0x84dca  2      
  movl %edx, (%r15,%rsi,1)               #  749   0x84dcc  4      
  nop                                    #  750   0x84dd0  1      
.L_85260:                                #        0x84dd1  0      
  movl %ecx, %ecx                        #  751   0x84dd1  2      
  movq (%r15,%rcx,1), %r13               #  752   0x84dd3  4      
  nop                                    #  753   0x84dd7  1      
  nop                                    #  754   0x84dd8  1      
.L_85280:                                #        0x84dd9  0      
  testq %r13, %r13                       #  755   0x84dd9  3      
  setne %dl                              #  756   0x84ddc  3      
  je .L_852c0                            #  757   0x84ddf  6      
  testb $0x1, %r12b                      #  758   0x84de5  4      
  je .L_852c0                            #  759   0x84de9  6      
  movb $0x30, 0x1d0(%rsp)                #  760   0x84def  8      
  movb %al, 0x1d1(%rsp)                  #  761   0x84df7  7      
  nop                                    #  762   0x84dfe  1      
  orl $0x2, %r12d                        #  763   0x84dff  4      
  nop                                    #  764   0x84e03  1      
  nop                                    #  765   0x84e04  1      
.L_852c0:                                #        0x84e05  0      
  andl $0xfffffbff, %r12d                #  766   0x84e05  7      
  movl $0x2, %eax                        #  767   0x84e0c  5      
  jmpq .L_850e0                          #  768   0x84e11  5      
  nop                                    #  769   0x84e16  1      
  movb $0x2b, 0x1df(%rsp)                #  770   0x84e17  8      
  movl %r13d, %r13d                      #  771   0x84e1f  3      
  movzbl (%r15,%r13,1), %eax             #  772   0x84e22  5      
  jmpq .L_845c0                          #  773   0x84e27  5      
  nop                                    #  774   0x84e2c  1      
  orb $0x80, %r12b                       #  775   0x84e2d  4      
  movl %r13d, %r13d                      #  776   0x84e31  3      
  movzbl (%r15,%r13,1), %eax             #  777   0x84e34  5      
  jmpq .L_845c0                          #  778   0x84e39  5      
  nop                                    #  779   0x84e3e  1      
  xorl %edx, %edx                        #  780   0x84e3f  2      
  nop                                    #  781   0x84e41  1      
  nop                                    #  782   0x84e42  1      
.L_85340:                                #        0x84e43  0      
  leal (%rdx,%rdx,4), %edx               #  783   0x84e43  3      
  leal -0x30(%rax,%rdx,2), %edx          #  784   0x84e46  4      
  movl %r13d, %r13d                      #  785   0x84e4a  3      
  movsbl (%r15,%r13,1), %eax             #  786   0x84e4d  5      
  addl $0x1, %r13d                       #  787   0x84e52  4      
  leal -0x30(%rax), %ecx                 #  788   0x84e56  3      
  cmpl $0x9, %ecx                        #  789   0x84e59  3      
  jbe .L_85340                           #  790   0x84e5c  6      
  nop                                    #  791   0x84e62  1      
  movl %edx, 0x88(%rsp)                  #  792   0x84e63  7      
  jmpq .L_845e0                          #  793   0x84e6a  5      
  nop                                    #  794   0x84e6f  1      
  nop                                    #  795   0x84e70  1      
  cmpl $0x43, %eax                       #  796   0x84e71  3      
  movq %r13, 0x60(%rsp)                  #  797   0x84e74  5      
  je .L_86160                            #  798   0x84e79  6      
  testb $0x10, %r12b                     #  799   0x84e7f  4      
  jne .L_86160                           #  800   0x84e83  6      
  movq 0x80(%rsp), %rdx                  #  801   0x84e89  8      
  movl %edx, %edx                        #  802   0x84e91  2      
  movl (%r15,%rdx,1), %eax               #  803   0x84e93  4      
  cmpl $0x2f, %eax                       #  804   0x84e97  3      
  jbe .L_86c80                           #  805   0x84e9a  6      
  movq 0x80(%rsp), %rsi                  #  806   0x84ea0  8      
  movl %esi, %esi                        #  807   0x84ea8  2      
  movl 0x8(%r15,%rsi,1), %edx            #  808   0x84eaa  5      
  xchgw %ax, %ax                         #  809   0x84eaf  3      
  leal 0x8(%rdx), %eax                   #  810   0x84eb2  3      
  movl %esi, %esi                        #  811   0x84eb5  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  812   0x84eb7  5      
  nop                                    #  813   0x84ebc  1      
  nop                                    #  814   0x84ebd  1      
.L_853e0:                                #        0x84ebe  0      
  movl %edx, %edx                        #  815   0x84ebe  2      
  movl (%r15,%rdx,1), %eax               #  816   0x84ec0  4      
  movl $0x1, 0x7c(%rsp)                  #  817   0x84ec4  8      
  movb %al, 0xe0(%rsp)                   #  818   0x84ecc  7      
  jmpq .L_86200                          #  819   0x84ed3  5      
  nop                                    #  820   0x84ed8  1      
  movq %r13, 0x60(%rsp)                  #  821   0x84ed9  5      
  orl $0x10, %r12d                       #  822   0x84ede  4      
  nop                                    #  823   0x84ee2  1      
  nop                                    #  824   0x84ee3  1      
.L_85420:                                #        0x84ee4  0      
  testb $0x20, %r12b                     #  825   0x84ee4  4      
  je .L_85e00                            #  826   0x84ee8  6      
  movq 0x80(%rsp), %rcx                  #  827   0x84eee  8      
  movl %ecx, %ecx                        #  828   0x84ef6  2      
  movl (%r15,%rcx,1), %eax               #  829   0x84ef8  4      
  cmpl $0x2f, %eax                       #  830   0x84efc  3      
  nop                                    #  831   0x84eff  1      
  ja .L_86540                            #  832   0x84f00  6      
  movl %ecx, %ecx                        #  833   0x84f06  2      
  movl 0xc(%r15,%rcx,1), %edx            #  834   0x84f08  5      
  addl %eax, %edx                        #  835   0x84f0d  2      
  addl $0x8, %eax                        #  836   0x84f0f  3      
  movl %ecx, %ecx                        #  837   0x84f12  2      
  movl %eax, (%r15,%rcx,1)               #  838   0x84f14  4      
  nop                                    #  839   0x84f18  1      
.L_85460:                                #        0x84f19  0      
  movl %edx, %edx                        #  840   0x84f19  2      
  movq (%r15,%rdx,1), %r13               #  841   0x84f1b  4      
  nop                                    #  842   0x84f1f  1      
  nop                                    #  843   0x84f20  1      
.L_85480:                                #        0x84f21  0      
  cmpq $0x0, %r13                        #  844   0x84f21  4      
  jl .L_862a0                            #  845   0x84f25  6      
  setne %dl                              #  846   0x84f2b  3      
  movl $0x1, %eax                        #  847   0x84f2e  5      
  jmpq .L_85100                          #  848   0x84f33  5      
  nop                                    #  849   0x84f38  1      
  orl $0x1, %r12d                        #  850   0x84f39  4      
  movl %r13d, %r13d                      #  851   0x84f3d  3      
  movzbl (%r15,%r13,1), %eax             #  852   0x84f40  5      
  jmpq .L_845c0                          #  853   0x84f45  5      
  nop                                    #  854   0x84f4a  1      
  movl %r13d, %r13d                      #  855   0x84f4b  3      
  movzbl (%r15,%r13,1), %eax             #  856   0x84f4e  5      
  cmpb $0x68, %al                        #  857   0x84f53  2      
  je .L_86940                            #  858   0x84f55  6      
  orl $0x40, %r12d                       #  859   0x84f5b  4      
  jmpq .L_845c0                          #  860   0x84f5f  5      
  nop                                    #  861   0x84f64  1      
  movq %r13, 0x60(%rsp)                  #  862   0x84f65  5      
  orl $0x10, %r12d                       #  863   0x84f6a  4      
  nop                                    #  864   0x84f6e  1      
  nop                                    #  865   0x84f6f  1      
.L_85500:                                #        0x84f70  0      
  testb $0x20, %r12b                     #  866   0x84f70  4      
  je .L_85ec0                            #  867   0x84f74  6      
  movq 0x80(%rsp), %rcx                  #  868   0x84f7a  8      
  movl %ecx, %ecx                        #  869   0x84f82  2      
  movl (%r15,%rcx,1), %eax               #  870   0x84f84  4      
  cmpl $0x2f, %eax                       #  871   0x84f88  3      
  nop                                    #  872   0x84f8b  1      
  ja .L_86420                            #  873   0x84f8c  6      
  movl %ecx, %ecx                        #  874   0x84f92  2      
  movl 0xc(%r15,%rcx,1), %edx            #  875   0x84f94  5      
  addl %eax, %edx                        #  876   0x84f99  2      
  addl $0x8, %eax                        #  877   0x84f9b  3      
  movl %ecx, %ecx                        #  878   0x84f9e  2      
  movl %eax, (%r15,%rcx,1)               #  879   0x84fa0  4      
  nop                                    #  880   0x84fa4  1      
.L_85540:                                #        0x84fa5  0      
  movl %edx, %edx                        #  881   0x84fa5  2      
  movq (%r15,%rdx,1), %r13               #  882   0x84fa7  4      
  nop                                    #  883   0x84fab  1      
  nop                                    #  884   0x84fac  1      
.L_85560:                                #        0x84fad  0      
  andl $0xfffffbff, %r12d                #  885   0x84fad  7      
  testq %r13, %r13                       #  886   0x84fb4  3      
  setne %dl                              #  887   0x84fb7  3      
  xorl %eax, %eax                        #  888   0x84fba  2      
  jmpq .L_850e0                          #  889   0x84fbc  5      
  nop                                    #  890   0x84fc1  1      
  movl %r13d, %r13d                      #  891   0x84fc2  3      
  movsbl (%r15,%r13,1), %eax             #  892   0x84fc5  5      
  addl $0x1, %r13d                       #  893   0x84fca  4      
  cmpl $0x2a, %eax                       #  894   0x84fce  3      
  je .L_87360                            #  895   0x84fd1  6      
  leal -0x30(%rax), %ecx                 #  896   0x84fd7  3      
  xorl %edx, %edx                        #  897   0x84fda  2      
  xorl %r8d, %r8d                        #  898   0x84fdc  3      
  cmpl $0x9, %ecx                        #  899   0x84fdf  3      
  ja .L_845e0                            #  900   0x84fe2  6      
  nop                                    #  901   0x84fe8  1      
  nop                                    #  902   0x84fe9  1      
.L_855c0:                                #        0x84fea  0      
  movl %r13d, %r13d                      #  903   0x84fea  3      
  movsbl (%r15,%r13,1), %eax             #  904   0x84fed  5      
  leal (%rdx,%rdx,4), %edx               #  905   0x84ff2  3      
  addl $0x1, %r13d                       #  906   0x84ff5  4      
  leal (%rcx,%rdx,2), %edx               #  907   0x84ff9  3      
  leal -0x30(%rax), %ecx                 #  908   0x84ffc  3      
  cmpl $0x9, %ecx                        #  909   0x84fff  3      
  jbe .L_855c0                           #  910   0x85002  6      
  testl %edx, %edx                       #  911   0x85008  2      
  nop                                    #  912   0x8500a  1      
  movl $0xffffffff, %r8d                 #  913   0x8500b  6      
  cmovnsl %edx, %r8d                     #  914   0x85011  4      
  jmpq .L_845e0                          #  915   0x85015  5      
  xchgw %ax, %ax                         #  916   0x8501a  3      
  nop                                    #  917   0x8501d  1      
  cmpb $0x0, 0x1df(%rsp)                 #  918   0x8501e  8      
  jne .L_84d60                           #  919   0x85026  6      
  movb $0x20, 0x1df(%rsp)                #  920   0x8502c  8      
  movl %r13d, %r13d                      #  921   0x85034  3      
  movzbl (%r15,%r13,1), %eax             #  922   0x85037  5      
  xchgw %ax, %ax                         #  923   0x8503c  3      
  jmpq .L_845c0                          #  924   0x8503f  5      
  nop                                    #  925   0x85044  1      
  nop                                    #  926   0x85045  1      
  movq %r13, 0x60(%rsp)                  #  927   0x85046  5      
  orl $0x10, %r12d                       #  928   0x8504b  4      
  nop                                    #  929   0x8504f  1      
  nop                                    #  930   0x85050  1      
.L_85660:                                #        0x85051  0      
  testb $0x20, %r12b                     #  931   0x85051  4      
  je .L_85e60                            #  932   0x85055  6      
  movq 0x80(%rsp), %rdx                  #  933   0x8505b  8      
  movl %edx, %edx                        #  934   0x85063  2      
  movl (%r15,%rdx,1), %eax               #  935   0x85065  4      
  cmpl $0x2f, %eax                       #  936   0x85069  3      
  nop                                    #  937   0x8506c  1      
  ja .L_86300                            #  938   0x8506d  6      
  movq %rdx, %rcx                        #  939   0x85073  3      
  movl %edx, %edx                        #  940   0x85076  2      
  movl 0xc(%r15,%rdx,1), %edx            #  941   0x85078  5      
  addl %eax, %edx                        #  942   0x8507d  2      
  addl $0x8, %eax                        #  943   0x8507f  3      
  movl %ecx, %ecx                        #  944   0x85082  2      
  movl %eax, (%r15,%rcx,1)               #  945   0x85084  4      
  nop                                    #  946   0x85088  1      
.L_856a0:                                #        0x85089  0      
  movl %edx, %edx                        #  947   0x85089  2      
  movq (%r15,%rdx,1), %r13               #  948   0x8508b  4      
  movl $0x1, %eax                        #  949   0x8508f  5      
  testq %r13, %r13                       #  950   0x85094  3      
  setne %dl                              #  951   0x85097  3      
  jmpq .L_850e0                          #  952   0x8509a  5      
  nop                                    #  953   0x8509f  1      
  testb $0x20, %r12b                     #  954   0x850a0  4      
  movq %r13, 0x60(%rsp)                  #  955   0x850a4  5      
  movq $0x10023be0, 0xc0(%rsp)           #  956   0x850a9  12     
  jne .L_85220                           #  957   0x850b5  6      
  nop                                    #  958   0x850bb  1      
.L_856e0:                                #        0x850bc  0      
  testb $0x10, %r12b                     #  959   0x850bc  4      
  je .L_86320                            #  960   0x850c0  6      
  movq 0x80(%rsp), %rcx                  #  961   0x850c6  8      
  movl %ecx, %ecx                        #  962   0x850ce  2      
  movl (%r15,%rcx,1), %edx               #  963   0x850d0  4      
  cmpl $0x2f, %edx                       #  964   0x850d4  3      
  nop                                    #  965   0x850d7  1      
  ja .L_86ae0                            #  966   0x850d8  6      
  movq %rcx, %rsi                        #  967   0x850de  3      
  movl %ecx, %ecx                        #  968   0x850e1  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  969   0x850e3  5      
  addl %edx, %ecx                        #  970   0x850e8  2      
  addl $0x8, %edx                        #  971   0x850ea  3      
  movl %esi, %esi                        #  972   0x850ed  2      
  movl %edx, (%r15,%rsi,1)               #  973   0x850ef  4      
  nop                                    #  974   0x850f3  1      
.L_85720:                                #        0x850f4  0      
  movl %ecx, %ecx                        #  975   0x850f4  2      
  movl (%r15,%rcx,1), %r13d              #  976   0x850f6  4      
  jmpq .L_85280                          #  977   0x850fa  5      
  nop                                    #  978   0x850ff  1      
  nop                                    #  979   0x85100  1      
  movq 0x80(%rsp), %rcx                  #  980   0x85101  8      
  movq %r13, 0x60(%rsp)                  #  981   0x85109  5      
  movl %ecx, %ecx                        #  982   0x8510e  2      
  movl (%r15,%rcx,1), %edx               #  983   0x85110  4      
  cmpl $0x2f, %edx                       #  984   0x85114  3      
  ja .L_865e0                            #  985   0x85117  6      
  movq %rcx, %rsi                        #  986   0x8511d  3      
  nop                                    #  987   0x85120  1      
  movl %ecx, %ecx                        #  988   0x85121  2      
  movl 0xc(%r15,%rcx,1), %ecx            #  989   0x85123  5      
  addl %edx, %ecx                        #  990   0x85128  2      
  addl $0x8, %edx                        #  991   0x8512a  3      
  movl %esi, %esi                        #  992   0x8512d  2      
  movl %edx, (%r15,%rsi,1)               #  993   0x8512f  4      
  nop                                    #  994   0x85133  1      
.L_85780:                                #        0x85134  0      
  movl %ecx, %ecx                        #  995   0x85134  2      
  movl (%r15,%rcx,1), %ecx               #  996   0x85136  4      
  movb $0x0, 0x1df(%rsp)                 #  997   0x8513a  8      
  testq %rcx, %rcx                       #  998   0x85142  3      
  movq %rcx, 0x98(%rsp)                  #  999   0x85145  8      
  je .L_86d60                            #  1000  0x8514d  6      
  nop                                    #  1001  0x85153  1      
  cmpl $0x53, %eax                       #  1002  0x85154  3      
  je .L_866c0                            #  1003  0x85157  6      
  movl %r12d, %r13d                      #  1004  0x8515d  3      
  andl $0x10, %r13d                      #  1005  0x85160  4      
  jne .L_866c0                           #  1006  0x85164  6      
  testl %r8d, %r8d                       #  1007  0x8516a  3      
  js .L_87080                            #  1008  0x8516d  6      
  nop                                    #  1009  0x85173  1      
  movl 0x98(%rsp), %edi                  #  1010  0x85174  7      
  movl %r8d, %edx                        #  1011  0x8517b  3      
  xorl %esi, %esi                        #  1012  0x8517e  2      
  movl %r8d, 0x40(%rsp)                  #  1013  0x85180  5      
  nop                                    #  1014  0x85185  1      
  callq .memchr                          #  1015  0x85186  5      
  movl %eax, %eax                        #  1016  0x8518b  2      
  movl 0x40(%rsp), %r8d                  #  1017  0x8518d  5      
  testq %rax, %rax                       #  1018  0x85192  3      
  je .L_86ce0                            #  1019  0x85195  6      
  subl 0x98(%rsp), %eax                  #  1020  0x8519b  7      
  cmpl %eax, %r8d                        #  1021  0x851a2  3      
  movl %eax, 0x7c(%rsp)                  #  1022  0x851a5  4      
  xchgw %ax, %ax                         #  1023  0x851a9  3      
  jge .L_87040                           #  1024  0x851ac  6      
  testl %r8d, %r8d                       #  1025  0x851b2  3      
  movl %r8d, 0x7c(%rsp)                  #  1026  0x851b5  5      
  movq $0x0, 0x90(%rsp)                  #  1027  0x851ba  12     
  cmovnsl %r8d, %r13d                    #  1028  0x851c6  4      
  xchgw %ax, %ax                         #  1029  0x851ca  3      
  movl $0x0, 0xac(%rsp)                  #  1030  0x851cd  11     
  movl %r13d, 0x68(%rsp)                 #  1031  0x851d8  5      
  jmpq .L_851e0                          #  1032  0x851dd  5      
  nop                                    #  1033  0x851e2  1      
  movq %r13, 0x60(%rsp)                  #  1034  0x851e3  5      
  jmpq .L_85660                          #  1035  0x851e8  5      
  nop                                    #  1036  0x851ed  1      
  nop                                    #  1037  0x851ee  1      
  movq %r13, 0x60(%rsp)                  #  1038  0x851ef  5      
  jmpq .L_85420                          #  1039  0x851f4  5      
  nop                                    #  1040  0x851f9  1      
  nop                                    #  1041  0x851fa  1      
  movq %r13, 0x60(%rsp)                  #  1042  0x851fb  5      
  jmpq .L_85500                          #  1043  0x85200  5      
  nop                                    #  1044  0x85205  1      
  nop                                    #  1045  0x85206  1      
.L_858a0:                                #        0x85207  0      
  movl 0x70(%rsp), %edi                  #  1046  0x85207  4      
  addl $0x5c, %edi                       #  1047  0x8520b  3      
  nop                                    #  1048  0x8520e  1      
  nop                                    #  1049  0x8520f  1      
  callq .__local_lock_release_recursive  #  1050  0x85210  5      
  jmpq .L_84ea0                          #  1051  0x85215  5      
  nop                                    #  1052  0x8521a  1      
  nop                                    #  1053  0x8521b  1      
.L_858e0:                                #        0x8521c  0      
  movl 0x198(%rsp), %edx                 #  1054  0x8521c  7      
  testl %edx, %edx                       #  1055  0x85223  2      
  jne .L_86ca0                           #  1056  0x85225  6      
  xchgw %ax, %ax                         #  1057  0x8522b  3      
  nop                                    #  1058  0x8522e  1      
.L_85900:                                #        0x8522f  0      
  movq 0x70(%rsp), %rsi                  #  1059  0x8522f  5      
  movl $0x0, 0x194(%rsp)                 #  1060  0x85234  11     
  movl %esi, %esi                        #  1061  0x8523f  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  1062  0x85241  6      
  jmpq .L_859e0                          #  1063  0x85247  5      
  nop                                    #  1064  0x8524c  1      
.L_85920:                                #        0x8524d  0      
  testl %eax, %eax                       #  1065  0x8524d  2      
  jne .L_85a40                           #  1066  0x8524f  6      
  testb $0x1, %r12b                      #  1067  0x85255  4      
  je .L_85a40                            #  1068  0x85259  6      
  movq 0xc8(%rsp), %rcx                  #  1069  0x8525f  8      
  nop                                    #  1070  0x85267  1      
  movq %rcx, 0x98(%rsp)                  #  1071  0x85268  8      
  movl %ecx, %ecx                        #  1072  0x85270  2      
  movb $0x30, (%r15,%rcx,1)              #  1073  0x85272  5      
  movl $0x1, 0x7c(%rsp)                  #  1074  0x85277  8      
  movq 0xb0(%rsp), %rcx                  #  1075  0x8527f  8      
  nop                                    #  1076  0x85287  1      
  jmpq .L_851a0                          #  1077  0x85288  5      
  nop                                    #  1078  0x8528d  1      
  nop                                    #  1079  0x8528e  1      
.L_85980:                                #        0x8528f  0      
  movq 0x70(%rsp), %rsi                  #  1080  0x8528f  5      
  movl %esi, %esi                        #  1081  0x85294  2      
  orw $0x40, 0xc(%r15,%rsi,1)            #  1082  0x85296  7      
  nop                                    #  1083  0x8529d  1      
  nop                                    #  1084  0x8529e  1      
.L_859a0:                                #        0x8529f  0      
  cmpq $0x0, 0x90(%rsp)                  #  1085  0x8529f  9      
  je .L_85f60                            #  1086  0x852a8  6      
  movl 0x90(%rsp), %esi                  #  1087  0x852ae  7      
  movl %r14d, %edi                       #  1088  0x852b5  3      
  xchgw %ax, %ax                         #  1089  0x852b8  3      
  callq ._free_r                         #  1090  0x852bb  5      
.L_859c0:                                #        0x852c0  0      
  movq 0x70(%rsp), %rcx                  #  1091  0x852c0  5      
  movl %ecx, %ecx                        #  1092  0x852c5  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1093  0x852c7  6      
  nop                                    #  1094  0x852cd  1      
  nop                                    #  1095  0x852ce  1      
.L_859e0:                                #        0x852cf  0      
  cwtl                                   #  1096  0x852cf  1      
  testb $0x2, %ah                        #  1097  0x852d0  3      
  je .L_85d00                            #  1098  0x852d3  6      
  nop                                    #  1099  0x852d9  1      
  nop                                    #  1100  0x852da  1      
.L_85a00:                                #        0x852db  0      
  testb $0x40, %al                       #  1101  0x852db  2      
  je .L_84ee0                            #  1102  0x852dd  6      
  nop                                    #  1103  0x852e3  1      
  nop                                    #  1104  0x852e4  1      
.L_85a20:                                #        0x852e5  0      
  movl $0xffffffff, 0x8c(%rsp)           #  1105  0x852e5  11     
  jmpq .L_84ee0                          #  1106  0x852f0  5      
  nop                                    #  1107  0x852f5  1      
  nop                                    #  1108  0x852f6  1      
.L_85a40:                                #        0x852f7  0      
  movq 0xb8(%rsp), %rsi                  #  1109  0x852f7  8      
  movq 0xb0(%rsp), %rcx                  #  1110  0x852ff  8      
  movl $0x0, 0x7c(%rsp)                  #  1111  0x85307  8      
  movq %rsi, 0x98(%rsp)                  #  1112  0x8530f  8      
  jmpq .L_851a0                          #  1113  0x85317  5      
  nop                                    #  1114  0x8531c  1      
  nop                                    #  1115  0x8531d  1      
.L_85a80:                                #        0x8531e  0      
  movl 0x88(%rsp), %r13d                 #  1116  0x8531e  8      
  subl 0x68(%rsp), %r13d                 #  1117  0x85326  5      
  testl %r13d, %r13d                     #  1118  0x8532b  3      
  jle .L_848c0                           #  1119  0x8532e  6      
  cmpl $0x10, %r13d                      #  1120  0x85334  4      
  jle .L_85b80                           #  1121  0x85338  6      
  leal 0x190(%rsp), %edx                 #  1122  0x8533e  7      
  movq %rbx, %rax                        #  1123  0x85345  3      
  movq 0x70(%rsp), %rbx                  #  1124  0x85348  5      
  movq %rdx, 0x8(%rsp)                   #  1125  0x8534d  5      
  jmpq .L_85ae0                          #  1126  0x85352  5      
  nop                                    #  1127  0x85357  1      
.L_85ac0:                                #        0x85358  0      
  subl $0x10, %r13d                      #  1128  0x85358  4      
  addl $0x8, %eax                        #  1129  0x8535c  3      
  cmpl $0x10, %r13d                      #  1130  0x8535f  4      
  jle .L_85b60                           #  1131  0x85363  6      
  nop                                    #  1132  0x85369  1      
.L_85ae0:                                #        0x8536a  0      
  movl %eax, %eax                        #  1133  0x8536a  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1134  0x8536c  9      
  movl 0x194(%rsp), %edx                 #  1135  0x85375  7      
  addl $0x10, 0x198(%rsp)                #  1136  0x8537c  8      
  nop                                    #  1137  0x85384  1      
  movl %eax, %eax                        #  1138  0x85385  2      
  movl $0x10024f20, (%r15,%rax,1)        #  1139  0x85387  8      
  addl $0x1, %edx                        #  1140  0x8538f  3      
  cmpl $0x7, %edx                        #  1141  0x85392  3      
  movl %edx, 0x194(%rsp)                 #  1142  0x85395  7      
  jle .L_85ac0                           #  1143  0x8539c  6      
  movl 0x8(%rsp), %edx                   #  1144  0x853a2  4      
  movl %ebx, %esi                        #  1145  0x853a6  2      
  nop                                    #  1146  0x853a8  1      
  movl %r14d, %edi                       #  1147  0x853a9  3      
  nop                                    #  1148  0x853ac  1      
  nop                                    #  1149  0x853ad  1      
  callq .__sprint_r                      #  1150  0x853ae  5      
  testl %eax, %eax                       #  1151  0x853b3  2      
  jne .L_859a0                           #  1152  0x853b5  6      
  subl $0x10, %r13d                      #  1153  0x853bb  4      
  leal 0x150(%rsp), %eax                 #  1154  0x853bf  7      
  cmpl $0x10, %r13d                      #  1155  0x853c6  4      
  jg .L_85ae0                            #  1156  0x853ca  6      
  nop                                    #  1157  0x853d0  1      
.L_85b60:                                #        0x853d1  0      
  movq %rax, %rbx                        #  1158  0x853d1  3      
  nop                                    #  1159  0x853d4  1      
  nop                                    #  1160  0x853d5  1      
.L_85b80:                                #        0x853d6  0      
  movl %ebx, %ebx                        #  1161  0x853d6  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  1162  0x853d8  5      
  movl 0x194(%rsp), %eax                 #  1163  0x853dd  7      
  addl %r13d, 0x198(%rsp)                #  1164  0x853e4  8      
  movl %ebx, %ebx                        #  1165  0x853ec  2      
  movl $0x10024f20, (%r15,%rbx,1)        #  1166  0x853ee  8      
  addl $0x1, %eax                        #  1167  0x853f6  3      
  cmpl $0x7, %eax                        #  1168  0x853f9  3      
  movl %eax, 0x194(%rsp)                 #  1169  0x853fc  7      
  jg .L_862c0                            #  1170  0x85403  6      
  addl $0x8, %ebx                        #  1171  0x85409  3      
  jmpq .L_848c0                          #  1172  0x8540c  5      
  nop                                    #  1173  0x85411  1      
.L_85bc0:                                #        0x85412  0      
  movl 0x70(%rsp), %esi                  #  1174  0x85412  4      
  leal 0x190(%rsp), %edx                 #  1175  0x85416  7      
  movl %r14d, %edi                       #  1176  0x8541d  3      
  nop                                    #  1177  0x85420  1      
  callq .__sprint_r                      #  1178  0x85421  5      
  testl %eax, %eax                       #  1179  0x85426  2      
  jne .L_859a0                           #  1180  0x85428  6      
  leal 0x150(%rsp), %ebx                 #  1181  0x8542e  7      
  jmpq .L_84a40                          #  1182  0x85435  5      
  nop                                    #  1183  0x8543a  1      
.L_85c00:                                #        0x8543b  0      
  movl 0x70(%rsp), %esi                  #  1184  0x8543b  4      
  leal 0x190(%rsp), %edx                 #  1185  0x8543f  7      
  movl %r14d, %edi                       #  1186  0x85446  3      
  nop                                    #  1187  0x85449  1      
  callq .__sprint_r                      #  1188  0x8544a  5      
  testl %eax, %eax                       #  1189  0x8544f  2      
  je .L_84c20                            #  1190  0x85451  6      
  jmpq .L_859a0                          #  1191  0x85457  5      
  nop                                    #  1192  0x8545c  1      
  nop                                    #  1193  0x8545d  1      
.L_85c40:                                #        0x8545e  0      
  movl 0x70(%rsp), %esi                  #  1194  0x8545e  4      
  leal 0x190(%rsp), %edx                 #  1195  0x85462  7      
  movl %r14d, %edi                       #  1196  0x85469  3      
  nop                                    #  1197  0x8546c  1      
  callq .__sprint_r                      #  1198  0x8546d  5      
  testl %eax, %eax                       #  1199  0x85472  2      
  jne .L_859a0                           #  1200  0x85474  6      
  leal 0x150(%rsp), %ebx                 #  1201  0x8547a  7      
  jmpq .L_84a00                          #  1202  0x85481  5      
  nop                                    #  1203  0x85486  1      
.L_85c80:                                #        0x85487  0      
  movl 0x70(%rsp), %esi                  #  1204  0x85487  4      
  leal 0x190(%rsp), %edx                 #  1205  0x8548b  7      
  movl %r14d, %edi                       #  1206  0x85492  3      
  nop                                    #  1207  0x85495  1      
  callq .__sprint_r                      #  1208  0x85496  5      
  testl %eax, %eax                       #  1209  0x8549b  2      
  jne .L_859a0                           #  1210  0x8549d  6      
  leal 0x150(%rsp), %ebx                 #  1211  0x854a3  7      
  jmpq .L_84840                          #  1212  0x854aa  5      
  nop                                    #  1213  0x854af  1      
.L_85cc0:                                #        0x854b0  0      
  movl 0x70(%rsp), %esi                  #  1214  0x854b0  4      
  leal 0x190(%rsp), %edx                 #  1215  0x854b4  7      
  movl %r14d, %edi                       #  1216  0x854bb  3      
  nop                                    #  1217  0x854be  1      
  callq .__sprint_r                      #  1218  0x854bf  5      
  testl %eax, %eax                       #  1219  0x854c4  2      
  jne .L_859a0                           #  1220  0x854c6  6      
  leal 0x150(%rsp), %ebx                 #  1221  0x854cc  7      
  jmpq .L_848a0                          #  1222  0x854d3  5      
  nop                                    #  1223  0x854d8  1      
.L_85d00:                                #        0x854d9  0      
  movl 0x70(%rsp), %edi                  #  1224  0x854d9  4      
  addl $0x5c, %edi                       #  1225  0x854dd  3      
  nop                                    #  1226  0x854e0  1      
  nop                                    #  1227  0x854e1  1      
  callq .__local_lock_release_recursive  #  1228  0x854e2  5      
  movq 0x70(%rsp), %rsi                  #  1229  0x854e7  5      
  movl %esi, %esi                        #  1230  0x854ec  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1231  0x854ee  6      
  jmpq .L_85a00                          #  1232  0x854f4  5      
  nop                                    #  1233  0x854f9  1      
.L_85d40:                                #        0x854fa  0      
  movq 0xb8(%rsp), %rax                  #  1234  0x854fa  8      
  movq 0xc0(%rsp), %rcx                  #  1235  0x85502  8      
  movq %rax, 0x98(%rsp)                  #  1236  0x8550a  8      
  nop                                    #  1237  0x85512  1      
.L_85d60:                                #        0x85513  0      
  movl %r13d, %edx                       #  1238  0x85513  3      
  shrq $0x4, %r13                        #  1239  0x85516  4      
  subl $0x1, %eax                        #  1240  0x8551a  3      
  andl $0xf, %edx                        #  1241  0x8551d  3      
  addl %ecx, %edx                        #  1242  0x85520  2      
  testq %r13, %r13                       #  1243  0x85522  3      
  movl %edx, %edx                        #  1244  0x85525  2      
  movzbl (%r15,%rdx,1), %edx             #  1245  0x85527  5      
  movl %eax, %eax                        #  1246  0x8552c  2      
  movb %dl, (%r15,%rax,1)                #  1247  0x8552e  4      
  nop                                    #  1248  0x85532  1      
  jne .L_85d60                           #  1249  0x85533  6      
  movl 0xb8(%rsp), %edx                  #  1250  0x85539  7      
  movq %rax, 0x98(%rsp)                  #  1251  0x85540  8      
  movq 0xb0(%rsp), %rcx                  #  1252  0x85548  8      
  subl %eax, %edx                        #  1253  0x85550  2      
  movl %edx, 0x7c(%rsp)                  #  1254  0x85552  4      
  nop                                    #  1255  0x85556  1      
  jmpq .L_851a0                          #  1256  0x85557  5      
  nop                                    #  1257  0x8555c  1      
  nop                                    #  1258  0x8555d  1      
.L_85dc0:                                #        0x8555e  0      
  cmpq $0x9, %r13                        #  1259  0x8555e  4      
  ja .L_85f80                            #  1260  0x85562  6      
  movq 0xc8(%rsp), %rcx                  #  1261  0x85568  8      
  addl $0x30, %r13d                      #  1262  0x85570  4      
  movq %rcx, 0x98(%rsp)                  #  1263  0x85574  8      
  xchgw %ax, %ax                         #  1264  0x8557c  3      
  movl %ecx, %ecx                        #  1265  0x8557f  2      
  movb %r13b, (%r15,%rcx,1)              #  1266  0x85581  4      
  movl $0x1, 0x7c(%rsp)                  #  1267  0x85585  8      
  movq 0xb0(%rsp), %rcx                  #  1268  0x8558d  8      
  jmpq .L_851a0                          #  1269  0x85595  5      
  nop                                    #  1270  0x8559a  1      
.L_85e00:                                #        0x8559b  0      
  testb $0x10, %r12b                     #  1271  0x8559b  4      
  je .L_86640                            #  1272  0x8559f  6      
  movq 0x80(%rsp), %rdx                  #  1273  0x855a5  8      
  movl %edx, %edx                        #  1274  0x855ad  2      
  movl (%r15,%rdx,1), %eax               #  1275  0x855af  4      
  cmpl $0x2f, %eax                       #  1276  0x855b3  3      
  nop                                    #  1277  0x855b6  1      
  ja .L_86b20                            #  1278  0x855b7  6      
  movq %rdx, %rcx                        #  1279  0x855bd  3      
  movl %edx, %edx                        #  1280  0x855c0  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1281  0x855c2  5      
  addl %eax, %edx                        #  1282  0x855c7  2      
  addl $0x8, %eax                        #  1283  0x855c9  3      
  movl %ecx, %ecx                        #  1284  0x855cc  2      
  movl %eax, (%r15,%rcx,1)               #  1285  0x855ce  4      
  nop                                    #  1286  0x855d2  1      
.L_85e40:                                #        0x855d3  0      
  movl %edx, %edx                        #  1287  0x855d3  2      
  movslq (%r15,%rdx,1), %r13             #  1288  0x855d5  4      
  jmpq .L_85480                          #  1289  0x855d9  5      
  nop                                    #  1290  0x855de  1      
  nop                                    #  1291  0x855df  1      
.L_85e60:                                #        0x855e0  0      
  testb $0x10, %r12b                     #  1292  0x855e0  4      
  je .L_86440                            #  1293  0x855e4  6      
  movq 0x80(%rsp), %rdx                  #  1294  0x855ea  8      
  movl %edx, %edx                        #  1295  0x855f2  2      
  movl (%r15,%rdx,1), %eax               #  1296  0x855f4  4      
  cmpl $0x2f, %eax                       #  1297  0x855f8  3      
  nop                                    #  1298  0x855fb  1      
  ja .L_86ac0                            #  1299  0x855fc  6      
  movq %rdx, %rcx                        #  1300  0x85602  3      
  movl %edx, %edx                        #  1301  0x85605  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1302  0x85607  5      
  addl %eax, %edx                        #  1303  0x8560c  2      
  addl $0x8, %eax                        #  1304  0x8560e  3      
  movl %ecx, %ecx                        #  1305  0x85611  2      
  movl %eax, (%r15,%rcx,1)               #  1306  0x85613  4      
  nop                                    #  1307  0x85617  1      
.L_85ea0:                                #        0x85618  0      
  movl %edx, %edx                        #  1308  0x85618  2      
  movl (%r15,%rdx,1), %r13d              #  1309  0x8561a  4      
  movl $0x1, %eax                        #  1310  0x8561e  5      
  testq %r13, %r13                       #  1311  0x85623  3      
  setne %dl                              #  1312  0x85626  3      
  jmpq .L_850e0                          #  1313  0x85629  5      
  nop                                    #  1314  0x8562e  1      
.L_85ec0:                                #        0x8562f  0      
  testb $0x10, %r12b                     #  1315  0x8562f  4      
  je .L_864c0                            #  1316  0x85633  6      
  movq 0x80(%rsp), %rdx                  #  1317  0x85639  8      
  movl %edx, %edx                        #  1318  0x85641  2      
  movl (%r15,%rdx,1), %eax               #  1319  0x85643  4      
  cmpl $0x2f, %eax                       #  1320  0x85647  3      
  nop                                    #  1321  0x8564a  1      
  jbe .L_86b40                           #  1322  0x8564b  6      
  movq 0x80(%rsp), %rsi                  #  1323  0x85651  8      
  movl %esi, %esi                        #  1324  0x85659  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1325  0x8565b  5      
  leal 0x8(%rdx), %eax                   #  1326  0x85660  3      
  movl %esi, %esi                        #  1327  0x85663  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1328  0x85665  5      
  nop                                    #  1329  0x8566a  1      
.L_85f00:                                #        0x8566b  0      
  movl %edx, %edx                        #  1330  0x8566b  2      
  movl (%r15,%rdx,1), %r13d              #  1331  0x8566d  4      
  jmpq .L_85560                          #  1332  0x85671  5      
  nop                                    #  1333  0x85676  1      
  nop                                    #  1334  0x85677  1      
.L_85f20:                                #        0x85678  0      
  movl 0x70(%rsp), %esi                  #  1335  0x85678  4      
  leal 0x190(%rsp), %edx                 #  1336  0x8567c  7      
  movl %r14d, %edi                       #  1337  0x85683  3      
  nop                                    #  1338  0x85686  1      
  callq .__sprint_r                      #  1339  0x85687  5      
  testl %eax, %eax                       #  1340  0x8568c  2      
  jne .L_859a0                           #  1341  0x8568e  6      
  leal 0x150(%rsp), %ebx                 #  1342  0x85694  7      
  jmpq .L_847e0                          #  1343  0x8569b  5      
  nop                                    #  1344  0x856a0  1      
.L_85f60:                                #        0x856a1  0      
  movq 0x70(%rsp), %rdx                  #  1345  0x856a1  5      
  movl %edx, %edx                        #  1346  0x856a6  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  1347  0x856a8  6      
  jmpq .L_859e0                          #  1348  0x856ae  5      
  nop                                    #  1349  0x856b3  1      
.L_85f80:                                #        0x856b4  0      
  movl 0xd4(%rsp), %r11d                 #  1350  0x856b4  8      
  movq 0xb8(%rsp), %rsi                  #  1351  0x856bc  8      
  movl %r12d, %r10d                      #  1352  0x856c4  3      
  movl %r8d, 0x68(%rsp)                  #  1353  0x856c7  5      
  movl %r12d, %r8d                       #  1354  0x856cc  3      
  nop                                    #  1355  0x856cf  1      
  movq 0xb0(%rsp), %r12                  #  1356  0x856d0  8      
  andl $0x400, %r10d                     #  1357  0x856d8  7      
  movq $0xcccccccccccccccd, %r9          #  1358  0x856df  10     
  negl %r11d                             #  1359  0x856e9  3      
  nop                                    #  1360  0x856ec  1      
  movq %rsi, 0x98(%rsp)                  #  1361  0x856ed  8      
  xorl %esi, %esi                        #  1362  0x856f5  2      
  movl %r11d, 0x7c(%rsp)                 #  1363  0x856f7  5      
  movq %rbx, %r11                        #  1364  0x856fc  3      
  movq 0x98(%rsp), %rbx                  #  1365  0x856ff  8      
  nop                                    #  1366  0x85707  1      
.L_85fe0:                                #        0x85708  0      
  movq %r13, %rax                        #  1367  0x85708  3      
  subl $0x1, %ebx                        #  1368  0x8570b  3      
  mulq %r9                               #  1369  0x8570e  3      
  shrq $0x3, %rdx                        #  1370  0x85711  4      
  leaq (%rdx,%rdx,4), %rax               #  1371  0x85715  4      
  movq %r13, %rdx                        #  1372  0x85719  3      
  addq %rax, %rax                        #  1373  0x8571c  3      
  subq %rax, %rdx                        #  1374  0x8571f  3      
  movq %rdx, %rax                        #  1375  0x85722  3      
  addl $0x30, %eax                       #  1376  0x85725  3      
  testl %r10d, %r10d                     #  1377  0x85728  3      
  movl %ebx, %ebx                        #  1378  0x8572b  2      
  movb %al, (%r15,%rbx,1)                #  1379  0x8572d  4      
  leal 0x1(%rsi), %eax                   #  1380  0x85731  3      
  je .L_86040                            #  1381  0x85734  6      
  movl %r12d, %r12d                      #  1382  0x8573a  3      
  movzbl (%r15,%r12,1), %edx             #  1383  0x8573d  5      
  movsbl %dl, %esi                       #  1384  0x85742  3      
  cmpl %eax, %esi                        #  1385  0x85745  2      
  nop                                    #  1386  0x85747  1      
  je .L_860a0                            #  1387  0x85748  6      
  nop                                    #  1388  0x8574e  1      
  nop                                    #  1389  0x8574f  1      
.L_86040:                                #        0x85750  0      
  movl %eax, %esi                        #  1390  0x85750  2      
  nop                                    #  1391  0x85752  1      
  nop                                    #  1392  0x85753  1      
.L_86060:                                #        0x85754  0      
  movq %r12, %rcx                        #  1393  0x85754  3      
  nop                                    #  1394  0x85757  1      
  nop                                    #  1395  0x85758  1      
.L_86080:                                #        0x85759  0      
  movq %r13, %rax                        #  1396  0x85759  3      
  mulq %r9                               #  1397  0x8575c  3      
  movq %rdx, %r13                        #  1398  0x8575f  3      
  shrq $0x3, %r13                        #  1399  0x85762  4      
  testq %r13, %r13                       #  1400  0x85766  3      
  je .L_86120                            #  1401  0x85769  6      
  movq %rcx, %r12                        #  1402  0x8576f  3      
  jmpq .L_85fe0                          #  1403  0x85772  5      
  xchgw %ax, %ax                         #  1404  0x85777  3      
.L_860a0:                                #        0x8577a  0      
  cmpb $0x7f, %dl                        #  1405  0x8577a  3      
  je .L_86060                            #  1406  0x8577d  6      
  cmpq $0x9, %r13                        #  1407  0x85783  4      
  jbe .L_86060                           #  1408  0x85787  6      
  addl 0x7c(%rsp), %ebx                  #  1409  0x8578d  4      
  movl 0xd8(%rsp), %esi                  #  1410  0x85791  7      
  movl 0xd4(%rsp), %edx                  #  1411  0x85798  7      
  nop                                    #  1412  0x8579f  1      
  movl %r8d, 0x40(%rsp)                  #  1413  0x857a0  5      
  movq %r9, 0x58(%rsp)                   #  1414  0x857a5  5      
  movl %r10d, 0x50(%rsp)                 #  1415  0x857aa  5      
  movq %r11, 0x48(%rsp)                  #  1416  0x857af  5      
  movl %ebx, %edi                        #  1417  0x857b4  2      
  nop                                    #  1418  0x857b6  1      
  callq .strncpy                         #  1419  0x857b7  5      
  leal 0x1(%r12), %ecx                   #  1420  0x857bc  5      
  xorl %esi, %esi                        #  1421  0x857c1  2      
  movl 0x40(%rsp), %r8d                  #  1422  0x857c3  5      
  movq 0x58(%rsp), %r9                   #  1423  0x857c8  5      
  movl 0x50(%rsp), %r10d                 #  1424  0x857cd  5      
  movl %ecx, %ecx                        #  1425  0x857d2  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1426  0x857d4  5      
  nop                                    #  1427  0x857d9  1      
  movq 0x48(%rsp), %r11                  #  1428  0x857da  5      
  jne .L_86080                           #  1429  0x857df  6      
  jmpq .L_86060                          #  1430  0x857e5  5      
  nop                                    #  1431  0x857ea  1      
  nop                                    #  1432  0x857eb  1      
.L_86120:                                #        0x857ec  0      
  movq %rbx, 0x98(%rsp)                  #  1433  0x857ec  8      
  movl 0xb8(%rsp), %esi                  #  1434  0x857f4  7      
  movl %r8d, %r12d                       #  1435  0x857fb  3      
  subl 0x98(%rsp), %esi                  #  1436  0x857fe  7      
  movl 0x68(%rsp), %r8d                  #  1437  0x85805  5      
  xchgw %ax, %ax                         #  1438  0x8580a  3      
  movq %r11, %rbx                        #  1439  0x8580d  3      
  movl %esi, 0x7c(%rsp)                  #  1440  0x85810  4      
  jmpq .L_851a0                          #  1441  0x85814  5      
  nop                                    #  1442  0x85819  1      
  nop                                    #  1443  0x8581a  1      
.L_86160:                                #        0x8581b  0      
  leal 0x1b0(%rsp), %r13d                #  1444  0x8581b  8      
  xorl %esi, %esi                        #  1445  0x85823  2      
  movl $0x8, %edx                        #  1446  0x85825  5      
  movl %r13d, %edi                       #  1447  0x8582a  3      
  nop                                    #  1448  0x8582d  1      
  callq .memset                          #  1449  0x8582e  5      
  movq 0x80(%rsp), %rsi                  #  1450  0x85833  8      
  movl %esi, %esi                        #  1451  0x8583b  2      
  movl (%r15,%rsi,1), %edx               #  1452  0x8583d  4      
  cmpl $0x2f, %edx                       #  1453  0x85841  3      
  ja .L_86900                            #  1454  0x85844  6      
  movl %esi, %esi                        #  1455  0x8584a  2      
  movl 0xc(%r15,%rsi,1), %eax            #  1456  0x8584c  5      
  addl %edx, %eax                        #  1457  0x85851  2      
  addl $0x8, %edx                        #  1458  0x85853  3      
  movl %esi, %esi                        #  1459  0x85856  2      
  movl %edx, (%r15,%rsi,1)               #  1460  0x85858  4      
  nop                                    #  1461  0x8585c  1      
  nop                                    #  1462  0x8585d  1      
.L_861c0:                                #        0x8585e  0      
  movl %eax, %eax                        #  1463  0x8585e  2      
  movl (%r15,%rax,1), %edx               #  1464  0x85860  4      
  movl 0x28(%rsp), %esi                  #  1465  0x85864  4      
  movl %r13d, %ecx                       #  1466  0x85868  3      
  movl %r14d, %edi                       #  1467  0x8586b  3      
  nop                                    #  1468  0x8586e  1      
  callq ._wcrtomb_r                      #  1469  0x8586f  5      
  cmpl $0xffffffff, %eax                 #  1470  0x85874  5      
  movl %eax, 0x7c(%rsp)                  #  1471  0x85879  4      
  je .L_871c0                            #  1472  0x8587d  6      
  nop                                    #  1473  0x85883  1      
  nop                                    #  1474  0x85884  1      
.L_86200:                                #        0x85885  0      
  movl 0x7c(%rsp), %r8d                  #  1475  0x85885  5      
  movl $0x0, %eax                        #  1476  0x8588a  5      
  leal 0xe0(%rsp), %edx                  #  1477  0x8588f  7      
  movb $0x0, 0x1df(%rsp)                 #  1478  0x85896  8      
  nop                                    #  1479  0x8589e  1      
  movq %rdx, 0x98(%rsp)                  #  1480  0x8589f  8      
  testl %r8d, %r8d                       #  1481  0x858a7  3      
  cmovnsl 0x7c(%rsp), %eax               #  1482  0x858aa  5      
  movl %eax, 0x68(%rsp)                  #  1483  0x858af  4      
  jmpq .L_84640                          #  1484  0x858b3  5      
  nop                                    #  1485  0x858b8  1      
.L_86240:                                #        0x858b9  0      
  cmpb $0x30, %al                        #  1486  0x858b9  2      
  je .L_86d40                            #  1487  0x858bb  6      
  movl 0x98(%rsp), %eax                  #  1488  0x858c1  7      
  subl $0x1, %eax                        #  1489  0x858c8  3      
  movq %rax, 0x98(%rsp)                  #  1490  0x858cb  8      
  nop                                    #  1491  0x858d3  1      
  movl %eax, %eax                        #  1492  0x858d4  2      
  movb $0x30, (%r15,%rax,1)              #  1493  0x858d6  5      
  movl 0xb8(%rsp), %edx                  #  1494  0x858db  7      
  movq 0xb0(%rsp), %rcx                  #  1495  0x858e2  8      
  subl %eax, %edx                        #  1496  0x858ea  2      
  movl %edx, 0x7c(%rsp)                  #  1497  0x858ec  4      
  nop                                    #  1498  0x858f0  1      
  jmpq .L_851a0                          #  1499  0x858f1  5      
  nop                                    #  1500  0x858f6  1      
  nop                                    #  1501  0x858f7  1      
.L_862a0:                                #        0x858f8  0      
  negq %r13                              #  1502  0x858f8  3      
  movb $0x2d, 0x1df(%rsp)                #  1503  0x858fb  8      
  movl $0x1, %eax                        #  1504  0x85903  5      
  setne %dl                              #  1505  0x85908  3      
  jmpq .L_85100                          #  1506  0x8590b  5      
  nop                                    #  1507  0x85910  1      
.L_862c0:                                #        0x85911  0      
  movl 0x70(%rsp), %esi                  #  1508  0x85911  4      
  leal 0x190(%rsp), %edx                 #  1509  0x85915  7      
  movl %r14d, %edi                       #  1510  0x8591c  3      
  nop                                    #  1511  0x8591f  1      
  callq .__sprint_r                      #  1512  0x85920  5      
  testl %eax, %eax                       #  1513  0x85925  2      
  jne .L_859a0                           #  1514  0x85927  6      
  leal 0x150(%rsp), %ebx                 #  1515  0x8592d  7      
  jmpq .L_848c0                          #  1516  0x85934  5      
  nop                                    #  1517  0x85939  1      
.L_86300:                                #        0x8593a  0      
  movq 0x80(%rsp), %rsi                  #  1518  0x8593a  8      
  movl %esi, %esi                        #  1519  0x85942  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1520  0x85944  5      
  leal 0x8(%rdx), %eax                   #  1521  0x85949  3      
  movl %esi, %esi                        #  1522  0x8594c  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1523  0x8594e  5      
  jmpq .L_856a0                          #  1524  0x85953  5      
  xchgw %ax, %ax                         #  1525  0x85958  3      
.L_86320:                                #        0x8595b  0      
  testb $0x40, %r12b                     #  1526  0x8595b  4      
  jne .L_86b60                           #  1527  0x8595f  6      
  testl $0x200, %r12d                    #  1528  0x85965  7      
  je .L_86e80                            #  1529  0x8596c  6      
  movq 0x80(%rsp), %rdx                  #  1530  0x85972  8      
  nop                                    #  1531  0x8597a  1      
  movl %edx, %edx                        #  1532  0x8597b  2      
  movl (%r15,%rdx,1), %ecx               #  1533  0x8597d  4      
  cmpl $0x2f, %ecx                       #  1534  0x85981  3      
  ja .L_87140                            #  1535  0x85984  6      
  movq %rdx, %rsi                        #  1536  0x8598a  3      
  movl %edx, %edx                        #  1537  0x8598d  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1538  0x8598f  5      
  addl %ecx, %edx                        #  1539  0x85994  2      
  addl $0x8, %ecx                        #  1540  0x85996  3      
  xchgw %ax, %ax                         #  1541  0x85999  3      
  movl %esi, %esi                        #  1542  0x8599c  2      
  movl %ecx, (%r15,%rsi,1)               #  1543  0x8599e  4      
  nop                                    #  1544  0x859a2  1      
  nop                                    #  1545  0x859a3  1      
.L_86380:                                #        0x859a4  0      
  movl %edx, %edx                        #  1546  0x859a4  2      
  movzbl (%r15,%rdx,1), %r13d            #  1547  0x859a6  5      
  jmpq .L_85280                          #  1548  0x859ab  5      
  nop                                    #  1549  0x859b0  1      
  nop                                    #  1550  0x859b1  1      
.L_863a0:                                #        0x859b2  0      
  movq 0x80(%rsp), %rdx                  #  1551  0x859b2  8      
  movq 0x80(%rsp), %rsi                  #  1552  0x859ba  8      
  movl %edx, %edx                        #  1553  0x859c2  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1554  0x859c4  5      
  leal 0x8(%rcx), %edx                   #  1555  0x859c9  3      
  nop                                    #  1556  0x859cc  1      
  movl %esi, %esi                        #  1557  0x859cd  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1558  0x859cf  5      
  jmpq .L_85260                          #  1559  0x859d4  5      
  nop                                    #  1560  0x859d9  1      
  nop                                    #  1561  0x859da  1      
.L_863e0:                                #        0x859db  0      
  movq 0x80(%rsp), %rax                  #  1562  0x859db  8      
  movq 0x80(%rsp), %rcx                  #  1563  0x859e3  8      
  movl %eax, %eax                        #  1564  0x859eb  2      
  movl 0x8(%r15,%rax,1), %edx            #  1565  0x859ed  5      
  leal 0x8(%rdx), %eax                   #  1566  0x859f2  3      
  nop                                    #  1567  0x859f5  1      
  movl %ecx, %ecx                        #  1568  0x859f6  2      
  movl %eax, 0x8(%r15,%rcx,1)            #  1569  0x859f8  5      
  jmpq .L_84de0                          #  1570  0x859fd  5      
  nop                                    #  1571  0x85a02  1      
  nop                                    #  1572  0x85a03  1      
.L_86420:                                #        0x85a04  0      
  movq 0x80(%rsp), %rsi                  #  1573  0x85a04  8      
  movl %esi, %esi                        #  1574  0x85a0c  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1575  0x85a0e  5      
  leal 0x8(%rdx), %eax                   #  1576  0x85a13  3      
  movl %esi, %esi                        #  1577  0x85a16  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1578  0x85a18  5      
  jmpq .L_85540                          #  1579  0x85a1d  5      
  xchgw %ax, %ax                         #  1580  0x85a22  3      
.L_86440:                                #        0x85a25  0      
  testb $0x40, %r12b                     #  1581  0x85a25  4      
  jne .L_86bc0                           #  1582  0x85a29  6      
  testl $0x200, %r12d                    #  1583  0x85a2f  7      
  je .L_86dc0                            #  1584  0x85a36  6      
  movq 0x80(%rsp), %rax                  #  1585  0x85a3c  8      
  nop                                    #  1586  0x85a44  1      
  movl %eax, %eax                        #  1587  0x85a45  2      
  movl (%r15,%rax,1), %edx               #  1588  0x85a47  4      
  cmpl $0x2f, %edx                       #  1589  0x85a4b  3      
  ja .L_87200                            #  1590  0x85a4e  6      
  movq %rax, %rcx                        #  1591  0x85a54  3      
  movl %eax, %eax                        #  1592  0x85a57  2      
  movl 0xc(%r15,%rax,1), %eax            #  1593  0x85a59  5      
  addl %edx, %eax                        #  1594  0x85a5e  2      
  addl $0x8, %edx                        #  1595  0x85a60  3      
  xchgw %ax, %ax                         #  1596  0x85a63  3      
  movl %ecx, %ecx                        #  1597  0x85a66  2      
  movl %edx, (%r15,%rcx,1)               #  1598  0x85a68  4      
  nop                                    #  1599  0x85a6c  1      
  nop                                    #  1600  0x85a6d  1      
.L_864a0:                                #        0x85a6e  0      
  movl %eax, %eax                        #  1601  0x85a6e  2      
  movzbl (%r15,%rax,1), %r13d            #  1602  0x85a70  5      
  movl $0x1, %eax                        #  1603  0x85a75  5      
  testq %r13, %r13                       #  1604  0x85a7a  3      
  setne %dl                              #  1605  0x85a7d  3      
  jmpq .L_850e0                          #  1606  0x85a80  5      
  nop                                    #  1607  0x85a85  1      
.L_864c0:                                #        0x85a86  0      
  testb $0x40, %r12b                     #  1608  0x85a86  4      
  jne .L_869e0                           #  1609  0x85a8a  6      
  testl $0x200, %r12d                    #  1610  0x85a90  7      
  je .L_86ee0                            #  1611  0x85a97  6      
  movq 0x80(%rsp), %rax                  #  1612  0x85a9d  8      
  nop                                    #  1613  0x85aa5  1      
  movl %eax, %eax                        #  1614  0x85aa6  2      
  movl (%r15,%rax,1), %edx               #  1615  0x85aa8  4      
  cmpl $0x2f, %edx                       #  1616  0x85aac  3      
  ja .L_872a0                            #  1617  0x85aaf  6      
  movq %rax, %rcx                        #  1618  0x85ab5  3      
  movl %eax, %eax                        #  1619  0x85ab8  2      
  movl 0xc(%r15,%rax,1), %eax            #  1620  0x85aba  5      
  addl %edx, %eax                        #  1621  0x85abf  2      
  addl $0x8, %edx                        #  1622  0x85ac1  3      
  xchgw %ax, %ax                         #  1623  0x85ac4  3      
  movl %ecx, %ecx                        #  1624  0x85ac7  2      
  movl %edx, (%r15,%rcx,1)               #  1625  0x85ac9  4      
  nop                                    #  1626  0x85acd  1      
  nop                                    #  1627  0x85ace  1      
.L_86520:                                #        0x85acf  0      
  movl %eax, %eax                        #  1628  0x85acf  2      
  movzbl (%r15,%rax,1), %r13d            #  1629  0x85ad1  5      
  jmpq .L_85560                          #  1630  0x85ad6  5      
  nop                                    #  1631  0x85adb  1      
  nop                                    #  1632  0x85adc  1      
.L_86540:                                #        0x85add  0      
  movq 0x80(%rsp), %rsi                  #  1633  0x85add  8      
  movl %esi, %esi                        #  1634  0x85ae5  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1635  0x85ae7  5      
  leal 0x8(%rdx), %eax                   #  1636  0x85aec  3      
  movl %esi, %esi                        #  1637  0x85aef  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1638  0x85af1  5      
  jmpq .L_85460                          #  1639  0x85af6  5      
  xchgw %ax, %ax                         #  1640  0x85afb  3      
.L_86560:                                #        0x85afe  0      
  testb $0x10, %r12b                     #  1641  0x85afe  4      
  jne .L_86a40                           #  1642  0x85b02  6      
  testb $0x40, %r12b                     #  1643  0x85b08  4      
  je .L_86f40                            #  1644  0x85b0c  6      
  movq 0x80(%rsp), %rcx                  #  1645  0x85b12  8      
  nop                                    #  1646  0x85b1a  1      
  movl %ecx, %ecx                        #  1647  0x85b1b  2      
  movl (%r15,%rcx,1), %edx               #  1648  0x85b1d  4      
  cmpl $0x2f, %edx                       #  1649  0x85b21  3      
  ja .L_87260                            #  1650  0x85b24  6      
  movl %ecx, %ecx                        #  1651  0x85b2a  2      
  movl 0xc(%r15,%rcx,1), %eax            #  1652  0x85b2c  5      
  addl %edx, %eax                        #  1653  0x85b31  2      
  addl $0x8, %edx                        #  1654  0x85b33  3      
  nop                                    #  1655  0x85b36  1      
  movl %ecx, %ecx                        #  1656  0x85b37  2      
  movl %edx, (%r15,%rcx,1)               #  1657  0x85b39  4      
  nop                                    #  1658  0x85b3d  1      
  nop                                    #  1659  0x85b3e  1      
.L_865c0:                                #        0x85b3f  0      
  movl %eax, %eax                        #  1660  0x85b3f  2      
  movl (%r15,%rax,1), %eax               #  1661  0x85b41  4      
  movzwl 0x8c(%rsp), %edx                #  1662  0x85b45  8      
  movl %eax, %eax                        #  1663  0x85b4d  2      
  movw %dx, (%r15,%rax,1)                #  1664  0x85b4f  5      
  jmpq .L_84400                          #  1665  0x85b54  5      
  nop                                    #  1666  0x85b59  1      
.L_865e0:                                #        0x85b5a  0      
  movq 0x80(%rsp), %rdx                  #  1667  0x85b5a  8      
  movq 0x80(%rsp), %rsi                  #  1668  0x85b62  8      
  movl %edx, %edx                        #  1669  0x85b6a  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1670  0x85b6c  5      
  leal 0x8(%rcx), %edx                   #  1671  0x85b71  3      
  nop                                    #  1672  0x85b74  1      
  movl %esi, %esi                        #  1673  0x85b75  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1674  0x85b77  5      
  jmpq .L_85780                          #  1675  0x85b7c  5      
  nop                                    #  1676  0x85b81  1      
  nop                                    #  1677  0x85b82  1      
.L_86620:                                #        0x85b83  0      
  movq 0x80(%rsp), %rsi                  #  1678  0x85b83  8      
  movl %esi, %esi                        #  1679  0x85b8b  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1680  0x85b8d  5      
  leal 0x8(%rdx), %eax                   #  1681  0x85b92  3      
  movl %esi, %esi                        #  1682  0x85b95  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1683  0x85b97  5      
  jmpq .L_850a0                          #  1684  0x85b9c  5      
  xchgw %ax, %ax                         #  1685  0x85ba1  3      
.L_86640:                                #        0x85ba4  0      
  testb $0x40, %r12b                     #  1686  0x85ba4  4      
  jne .L_86980                           #  1687  0x85ba8  6      
  testl $0x200, %r12d                    #  1688  0x85bae  7      
  je .L_86fa0                            #  1689  0x85bb5  6      
  movq 0x80(%rsp), %rax                  #  1690  0x85bbb  8      
  nop                                    #  1691  0x85bc3  1      
  movl %eax, %eax                        #  1692  0x85bc4  2      
  movl (%r15,%rax,1), %edx               #  1693  0x85bc6  4      
  cmpl $0x2f, %edx                       #  1694  0x85bca  3      
  ja .L_87220                            #  1695  0x85bcd  6      
  movq %rax, %rcx                        #  1696  0x85bd3  3      
  movl %eax, %eax                        #  1697  0x85bd6  2      
  movl 0xc(%r15,%rax,1), %eax            #  1698  0x85bd8  5      
  addl %edx, %eax                        #  1699  0x85bdd  2      
  addl $0x8, %edx                        #  1700  0x85bdf  3      
  xchgw %ax, %ax                         #  1701  0x85be2  3      
  movl %ecx, %ecx                        #  1702  0x85be5  2      
  movl %edx, (%r15,%rcx,1)               #  1703  0x85be7  4      
  nop                                    #  1704  0x85beb  1      
  nop                                    #  1705  0x85bec  1      
.L_866a0:                                #        0x85bed  0      
  movl %eax, %eax                        #  1706  0x85bed  2      
  movsbq (%r15,%rax,1), %r13             #  1707  0x85bef  5      
  jmpq .L_85480                          #  1708  0x85bf4  5      
  nop                                    #  1709  0x85bf9  1      
  nop                                    #  1710  0x85bfa  1      
.L_866c0:                                #        0x85bfb  0      
  movl 0x98(%rsp), %edx                  #  1711  0x85bfb  7      
  leal 0x1a0(%rsp), %ecx                 #  1712  0x85c02  7      
  xorl %esi, %esi                        #  1713  0x85c09  2      
  movl %r8d, 0x40(%rsp)                  #  1714  0x85c0b  5      
  movl %ecx, %edi                        #  1715  0x85c10  2      
  movq %rcx, 0x18(%rsp)                  #  1716  0x85c12  5      
  nop                                    #  1717  0x85c17  1      
  movl %edx, 0x1c8(%rsp)                 #  1718  0x85c18  7      
  movl $0x8, %edx                        #  1719  0x85c1f  5      
  nop                                    #  1720  0x85c24  1      
  callq .memset                          #  1721  0x85c25  5      
  movl 0x40(%rsp), %r8d                  #  1722  0x85c2a  5      
  testl %r8d, %r8d                       #  1723  0x85c2f  3      
  js .L_87180                            #  1724  0x85c32  6      
  movq %rbx, 0x68(%rsp)                  #  1725  0x85c38  5      
  movl %r12d, 0x90(%rsp)                 #  1726  0x85c3d  8      
  xorl %r13d, %r13d                      #  1727  0x85c45  3      
  xchgw %ax, %ax                         #  1728  0x85c48  3      
  movl $0x0, 0x7c(%rsp)                  #  1729  0x85c4b  8      
  movl %r8d, %ebx                        #  1730  0x85c53  3      
  xorl %r12d, %r12d                      #  1731  0x85c56  3      
  jmpq .L_86760                          #  1732  0x85c59  5      
  nop                                    #  1733  0x85c5e  1      
  nop                                    #  1734  0x85c5f  1      
.L_86740:                                #        0x85c60  0      
  movl %eax, %r12d                       #  1735  0x85c60  3      
  nop                                    #  1736  0x85c63  1      
  nop                                    #  1737  0x85c64  1      
.L_86760:                                #        0x85c65  0      
  movl 0x1c8(%rsp), %eax                 #  1738  0x85c65  7      
  addl %r13d, %eax                       #  1739  0x85c6c  3      
  movl %eax, %eax                        #  1740  0x85c6f  2      
  movl (%r15,%rax,1), %edx               #  1741  0x85c71  4      
  testl %edx, %edx                       #  1742  0x85c75  2      
  je .L_87120                            #  1743  0x85c77  6      
  movl 0x18(%rsp), %ecx                  #  1744  0x85c7d  4      
  movl 0x28(%rsp), %esi                  #  1745  0x85c81  4      
  movl %r14d, %edi                       #  1746  0x85c85  3      
  nop                                    #  1747  0x85c88  1      
  nop                                    #  1748  0x85c89  1      
  callq ._wcrtomb_r                      #  1749  0x85c8a  5      
  cmpl $0xffffffff, %eax                 #  1750  0x85c8f  5      
  je .L_871c0                            #  1751  0x85c94  6      
  addl %r12d, %eax                       #  1752  0x85c9a  3      
  cmpl %eax, %ebx                        #  1753  0x85c9d  2      
  jl .L_87120                            #  1754  0x85c9f  6      
  addl $0x4, %r13d                       #  1755  0x85ca5  4      
  cmpl %eax, %ebx                        #  1756  0x85ca9  2      
  jne .L_86740                           #  1757  0x85cab  6      
  movl %ebx, %r8d                        #  1758  0x85cb1  3      
  nop                                    #  1759  0x85cb4  1      
  movl 0x90(%rsp), %r12d                 #  1760  0x85cb5  8      
  movq 0x68(%rsp), %rbx                  #  1761  0x85cbd  5      
  movl %r8d, 0x7c(%rsp)                  #  1762  0x85cc2  5      
  nop                                    #  1763  0x85cc7  1      
.L_867e0:                                #        0x85cc8  0      
  movl 0x7c(%rsp), %edi                  #  1764  0x85cc8  4      
  testl %edi, %edi                       #  1765  0x85ccc  2      
  je .L_86c40                            #  1766  0x85cce  6      
  cmpl $0x63, 0x7c(%rsp)                 #  1767  0x85cd4  5      
  leal 0xe0(%rsp), %esi                  #  1768  0x85cd9  7      
  nop                                    #  1769  0x85ce0  1      
  movq $0x0, 0x90(%rsp)                  #  1770  0x85ce1  12     
  movq %rsi, 0x98(%rsp)                  #  1771  0x85ced  8      
  jle .L_86880                           #  1772  0x85cf5  6      
  movl 0x7c(%rsp), %esi                  #  1773  0x85cfb  4      
  movl %r14d, %edi                       #  1774  0x85cff  3      
  addl $0x1, %esi                        #  1775  0x85d02  3      
  nop                                    #  1776  0x85d05  1      
  nop                                    #  1777  0x85d06  1      
  callq ._malloc_r                       #  1778  0x85d07  5      
  movl %eax, %eax                        #  1779  0x85d0c  2      
  testq %rax, %rax                       #  1780  0x85d0e  3      
  movq %rax, 0x90(%rsp)                  #  1781  0x85d11  8      
  je .L_87400                            #  1782  0x85d19  6      
  movq 0x90(%rsp), %rcx                  #  1783  0x85d1f  8      
  nop                                    #  1784  0x85d27  1      
  movq %rcx, 0x98(%rsp)                  #  1785  0x85d28  8      
  nop                                    #  1786  0x85d30  1      
  nop                                    #  1787  0x85d31  1      
.L_86880:                                #        0x85d32  0      
  movl 0x18(%rsp), %edi                  #  1788  0x85d32  4      
  xorl %esi, %esi                        #  1789  0x85d36  2      
  movl $0x8, %edx                        #  1790  0x85d38  5      
  nop                                    #  1791  0x85d3d  1      
  nop                                    #  1792  0x85d3e  1      
  callq .memset                          #  1793  0x85d3f  5      
  movl 0x18(%rsp), %r8d                  #  1794  0x85d44  5      
  movl 0x7c(%rsp), %ecx                  #  1795  0x85d49  4      
  leal 0x1c8(%rsp), %edx                 #  1796  0x85d4d  7      
  movl 0x98(%rsp), %esi                  #  1797  0x85d54  7      
  movl %r14d, %edi                       #  1798  0x85d5b  3      
  nop                                    #  1799  0x85d5e  1      
  callq ._wcsrtombs_r                    #  1800  0x85d5f  5      
  cmpl %eax, 0x7c(%rsp)                  #  1801  0x85d64  4      
  jne .L_85980                           #  1802  0x85d68  6      
  movl 0x7c(%rsp), %eax                  #  1803  0x85d6e  4      
  addl 0x98(%rsp), %eax                  #  1804  0x85d72  7      
  movl %eax, %eax                        #  1805  0x85d79  2      
  movb $0x0, (%r15,%rax,1)               #  1806  0x85d7b  5      
  movl 0x7c(%rsp), %esi                  #  1807  0x85d80  4      
  movl $0x0, %eax                        #  1808  0x85d84  5      
  movl $0x0, 0xac(%rsp)                  #  1809  0x85d89  11     
  testl %esi, %esi                       #  1810  0x85d94  2      
  cmovnsl 0x7c(%rsp), %eax               #  1811  0x85d96  5      
  movl %eax, 0x68(%rsp)                  #  1812  0x85d9b  4      
  jmpq .L_851e0                          #  1813  0x85d9f  5      
.L_86900:                                #        0x85da4  0      
  movq 0x80(%rsp), %rdx                  #  1814  0x85da4  8      
  movq 0x80(%rsp), %rcx                  #  1815  0x85dac  8      
  movl %edx, %edx                        #  1816  0x85db4  2      
  movl 0x8(%r15,%rdx,1), %eax            #  1817  0x85db6  5      
  leal 0x8(%rax), %edx                   #  1818  0x85dbb  3      
  nop                                    #  1819  0x85dbe  1      
  movl %ecx, %ecx                        #  1820  0x85dbf  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  1821  0x85dc1  5      
  jmpq .L_861c0                          #  1822  0x85dc6  5      
  nop                                    #  1823  0x85dcb  1      
  nop                                    #  1824  0x85dcc  1      
.L_86940:                                #        0x85dcd  0      
  addl $0x1, %r13d                       #  1825  0x85dcd  4      
  orl $0x200, %r12d                      #  1826  0x85dd1  7      
  movl %r13d, %r13d                      #  1827  0x85dd8  3      
  movzbl (%r15,%r13,1), %eax             #  1828  0x85ddb  5      
  jmpq .L_845c0                          #  1829  0x85de0  5      
  nop                                    #  1830  0x85de5  1      
.L_86960:                                #        0x85de6  0      
  addl $0x1, %r13d                       #  1831  0x85de6  4      
  orl $0x20, %r12d                       #  1832  0x85dea  4      
  movl %r13d, %r13d                      #  1833  0x85dee  3      
  movzbl (%r15,%r13,1), %eax             #  1834  0x85df1  5      
  jmpq .L_845c0                          #  1835  0x85df6  5      
  nop                                    #  1836  0x85dfb  1      
.L_86980:                                #        0x85dfc  0      
  movq 0x80(%rsp), %rax                  #  1837  0x85dfc  8      
  movl %eax, %eax                        #  1838  0x85e04  2      
  movl (%r15,%rax,1), %edx               #  1839  0x85e06  4      
  cmpl $0x2f, %edx                       #  1840  0x85e0a  3      
  ja .L_87000                            #  1841  0x85e0d  6      
  movq %rax, %rcx                        #  1842  0x85e13  3      
  nop                                    #  1843  0x85e16  1      
  movl %eax, %eax                        #  1844  0x85e17  2      
  movl 0xc(%r15,%rax,1), %eax            #  1845  0x85e19  5      
  addl %edx, %eax                        #  1846  0x85e1e  2      
  addl $0x8, %edx                        #  1847  0x85e20  3      
  movl %ecx, %ecx                        #  1848  0x85e23  2      
  movl %edx, (%r15,%rcx,1)               #  1849  0x85e25  4      
  nop                                    #  1850  0x85e29  1      
.L_869c0:                                #        0x85e2a  0      
  movl %eax, %eax                        #  1851  0x85e2a  2      
  movswq (%r15,%rax,1), %r13             #  1852  0x85e2c  5      
  jmpq .L_85480                          #  1853  0x85e31  5      
  nop                                    #  1854  0x85e36  1      
  nop                                    #  1855  0x85e37  1      
.L_869e0:                                #        0x85e38  0      
  movq 0x80(%rsp), %rax                  #  1856  0x85e38  8      
  movl %eax, %eax                        #  1857  0x85e40  2      
  movl (%r15,%rax,1), %edx               #  1858  0x85e42  4      
  cmpl $0x2f, %edx                       #  1859  0x85e46  3      
  ja .L_87020                            #  1860  0x85e49  6      
  movq %rax, %rcx                        #  1861  0x85e4f  3      
  nop                                    #  1862  0x85e52  1      
  movl %eax, %eax                        #  1863  0x85e53  2      
  movl 0xc(%r15,%rax,1), %eax            #  1864  0x85e55  5      
  addl %edx, %eax                        #  1865  0x85e5a  2      
  addl $0x8, %edx                        #  1866  0x85e5c  3      
  movl %ecx, %ecx                        #  1867  0x85e5f  2      
  movl %edx, (%r15,%rcx,1)               #  1868  0x85e61  4      
  nop                                    #  1869  0x85e65  1      
.L_86a20:                                #        0x85e66  0      
  movl %eax, %eax                        #  1870  0x85e66  2      
  movzwl (%r15,%rax,1), %r13d            #  1871  0x85e68  5      
  jmpq .L_85560                          #  1872  0x85e6d  5      
  nop                                    #  1873  0x85e72  1      
  nop                                    #  1874  0x85e73  1      
.L_86a40:                                #        0x85e74  0      
  movq 0x80(%rsp), %rax                  #  1875  0x85e74  8      
  movl %eax, %eax                        #  1876  0x85e7c  2      
  movl (%r15,%rax,1), %edx               #  1877  0x85e7e  4      
  cmpl $0x2f, %edx                       #  1878  0x85e82  3      
  ja .L_86d20                            #  1879  0x85e85  6      
  movq %rax, %rcx                        #  1880  0x85e8b  3      
  nop                                    #  1881  0x85e8e  1      
  movl %eax, %eax                        #  1882  0x85e8f  2      
  movl 0xc(%r15,%rax,1), %eax            #  1883  0x85e91  5      
  addl %edx, %eax                        #  1884  0x85e96  2      
  addl $0x8, %edx                        #  1885  0x85e98  3      
  movl %ecx, %ecx                        #  1886  0x85e9b  2      
  movl %edx, (%r15,%rcx,1)               #  1887  0x85e9d  4      
  nop                                    #  1888  0x85ea1  1      
.L_86a80:                                #        0x85ea2  0      
  movl %eax, %eax                        #  1889  0x85ea2  2      
  movl (%r15,%rax,1), %eax               #  1890  0x85ea4  4      
  movl 0x8c(%rsp), %edx                  #  1891  0x85ea8  7      
  movl %eax, %eax                        #  1892  0x85eaf  2      
  movl %edx, (%r15,%rax,1)               #  1893  0x85eb1  4      
  jmpq .L_84400                          #  1894  0x85eb5  5      
  nop                                    #  1895  0x85eba  1      
.L_86aa0:                                #        0x85ebb  0      
  orl $0x400, %r12d                      #  1896  0x85ebb  7      
  movl %r13d, %r13d                      #  1897  0x85ec2  3      
  movzbl (%r15,%r13,1), %eax             #  1898  0x85ec5  5      
  jmpq .L_845c0                          #  1899  0x85eca  5      
  nop                                    #  1900  0x85ecf  1      
.L_86ac0:                                #        0x85ed0  0      
  movq 0x80(%rsp), %rsi                  #  1901  0x85ed0  8      
  movl %esi, %esi                        #  1902  0x85ed8  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1903  0x85eda  5      
  leal 0x8(%rdx), %eax                   #  1904  0x85edf  3      
  movl %esi, %esi                        #  1905  0x85ee2  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1906  0x85ee4  5      
  jmpq .L_85ea0                          #  1907  0x85ee9  5      
  xchgw %ax, %ax                         #  1908  0x85eee  3      
.L_86ae0:                                #        0x85ef1  0      
  movq 0x80(%rsp), %rdx                  #  1909  0x85ef1  8      
  movq 0x80(%rsp), %rsi                  #  1910  0x85ef9  8      
  movl %edx, %edx                        #  1911  0x85f01  2      
  movl 0x8(%r15,%rdx,1), %ecx            #  1912  0x85f03  5      
  leal 0x8(%rcx), %edx                   #  1913  0x85f08  3      
  nop                                    #  1914  0x85f0b  1      
  movl %esi, %esi                        #  1915  0x85f0c  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  1916  0x85f0e  5      
  jmpq .L_85720                          #  1917  0x85f13  5      
  nop                                    #  1918  0x85f18  1      
  nop                                    #  1919  0x85f19  1      
.L_86b20:                                #        0x85f1a  0      
  movq 0x80(%rsp), %rsi                  #  1920  0x85f1a  8      
  movl %esi, %esi                        #  1921  0x85f22  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1922  0x85f24  5      
  leal 0x8(%rdx), %eax                   #  1923  0x85f29  3      
  movl %esi, %esi                        #  1924  0x85f2c  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1925  0x85f2e  5      
  jmpq .L_85e40                          #  1926  0x85f33  5      
  xchgw %ax, %ax                         #  1927  0x85f38  3      
.L_86b40:                                #        0x85f3b  0      
  movq %rdx, %rcx                        #  1928  0x85f3b  3      
  movl %edx, %edx                        #  1929  0x85f3e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1930  0x85f40  5      
  addl %eax, %edx                        #  1931  0x85f45  2      
  addl $0x8, %eax                        #  1932  0x85f47  3      
  movl %ecx, %ecx                        #  1933  0x85f4a  2      
  movl %eax, (%r15,%rcx,1)               #  1934  0x85f4c  4      
  jmpq .L_85f00                          #  1935  0x85f50  5      
  nop                                    #  1936  0x85f55  1      
.L_86b60:                                #        0x85f56  0      
  movq 0x80(%rsp), %rdx                  #  1937  0x85f56  8      
  movl %edx, %edx                        #  1938  0x85f5e  2      
  movl (%r15,%rdx,1), %ecx               #  1939  0x85f60  4      
  cmpl $0x2f, %ecx                       #  1940  0x85f64  3      
  ja .L_86e20                            #  1941  0x85f67  6      
  movq %rdx, %rsi                        #  1942  0x85f6d  3      
  nop                                    #  1943  0x85f70  1      
  movl %edx, %edx                        #  1944  0x85f71  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1945  0x85f73  5      
  addl %ecx, %edx                        #  1946  0x85f78  2      
  addl $0x8, %ecx                        #  1947  0x85f7a  3      
  movl %esi, %esi                        #  1948  0x85f7d  2      
  movl %ecx, (%r15,%rsi,1)               #  1949  0x85f7f  4      
  nop                                    #  1950  0x85f83  1      
.L_86ba0:                                #        0x85f84  0      
  movl %edx, %edx                        #  1951  0x85f84  2      
  movzwl (%r15,%rdx,1), %r13d            #  1952  0x85f86  5      
  jmpq .L_85280                          #  1953  0x85f8b  5      
  nop                                    #  1954  0x85f90  1      
  nop                                    #  1955  0x85f91  1      
.L_86bc0:                                #        0x85f92  0      
  movq 0x80(%rsp), %rax                  #  1956  0x85f92  8      
  movl %eax, %eax                        #  1957  0x85f9a  2      
  movl (%r15,%rax,1), %edx               #  1958  0x85f9c  4      
  cmpl $0x2f, %edx                       #  1959  0x85fa0  3      
  ja .L_86e60                            #  1960  0x85fa3  6      
  movq %rax, %rcx                        #  1961  0x85fa9  3      
  nop                                    #  1962  0x85fac  1      
  movl %eax, %eax                        #  1963  0x85fad  2      
  movl 0xc(%r15,%rax,1), %eax            #  1964  0x85faf  5      
  addl %edx, %eax                        #  1965  0x85fb4  2      
  addl $0x8, %edx                        #  1966  0x85fb6  3      
  movl %ecx, %ecx                        #  1967  0x85fb9  2      
  movl %edx, (%r15,%rcx,1)               #  1968  0x85fbb  4      
  nop                                    #  1969  0x85fbf  1      
.L_86c00:                                #        0x85fc0  0      
  movl %eax, %eax                        #  1970  0x85fc0  2      
  movzwl (%r15,%rax,1), %r13d            #  1971  0x85fc2  5      
  movl $0x1, %eax                        #  1972  0x85fc7  5      
  testq %r13, %r13                       #  1973  0x85fcc  3      
  setne %dl                              #  1974  0x85fcf  3      
  jmpq .L_850e0                          #  1975  0x85fd2  5      
  nop                                    #  1976  0x85fd7  1      
.L_86c20:                                #        0x85fd8  0      
  movq 0x80(%rsp), %rsi                  #  1977  0x85fd8  8      
  movl %esi, %esi                        #  1978  0x85fe0  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1979  0x85fe2  5      
  leal 0x8(%rdx), %eax                   #  1980  0x85fe7  3      
  movl %esi, %esi                        #  1981  0x85fea  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1982  0x85fec  5      
  jmpq .L_85040                          #  1983  0x85ff1  5      
  xchgw %ax, %ax                         #  1984  0x85ff6  3      
.L_86c40:                                #        0x85ff9  0      
  movl $0x0, 0x68(%rsp)                  #  1985  0x85ff9  8      
  movq $0x0, 0x90(%rsp)                  #  1986  0x86001  12     
  movl $0x0, 0xac(%rsp)                  #  1987  0x8600d  11     
  nop                                    #  1988  0x86018  1      
  jmpq .L_851e0                          #  1989  0x86019  5      
  nop                                    #  1990  0x8601e  1      
  nop                                    #  1991  0x8601f  1      
.L_86c80:                                #        0x86020  0      
  movq %rdx, %rcx                        #  1992  0x86020  3      
  movl %edx, %edx                        #  1993  0x86023  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1994  0x86025  5      
  addl %eax, %edx                        #  1995  0x8602a  2      
  addl $0x8, %eax                        #  1996  0x8602c  3      
  movl %ecx, %ecx                        #  1997  0x8602f  2      
  movl %eax, (%r15,%rcx,1)               #  1998  0x86031  4      
  jmpq .L_853e0                          #  1999  0x86035  5      
  nop                                    #  2000  0x8603a  1      
.L_86ca0:                                #        0x8603b  0      
  movl 0x70(%rsp), %esi                  #  2001  0x8603b  4      
  leal 0x190(%rsp), %edx                 #  2002  0x8603f  7      
  movl %r14d, %edi                       #  2003  0x86046  3      
  nop                                    #  2004  0x86049  1      
  callq .__sprint_r                      #  2005  0x8604a  5      
  testl %eax, %eax                       #  2006  0x8604f  2      
  je .L_85900                            #  2007  0x86051  6      
  jmpq .L_859c0                          #  2008  0x86057  5      
  nop                                    #  2009  0x8605c  1      
  nop                                    #  2010  0x8605d  1      
.L_86ce0:                                #        0x8605e  0      
  movl %r8d, 0x68(%rsp)                  #  2011  0x8605e  5      
  movl %r8d, 0x7c(%rsp)                  #  2012  0x86063  5      
  movq $0x0, 0x90(%rsp)                  #  2013  0x86068  12     
  nop                                    #  2014  0x86074  1      
  movl $0x0, 0xac(%rsp)                  #  2015  0x86075  11     
  jmpq .L_851e0                          #  2016  0x86080  5      
  nop                                    #  2017  0x86085  1      
  nop                                    #  2018  0x86086  1      
.L_86d20:                                #        0x86087  0      
  movq 0x80(%rsp), %rsi                  #  2019  0x86087  8      
  movl %esi, %esi                        #  2020  0x8608f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2021  0x86091  5      
  leal 0x8(%rax), %edx                   #  2022  0x86096  3      
  movl %esi, %esi                        #  2023  0x86099  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2024  0x8609b  5      
  jmpq .L_86a80                          #  2025  0x860a0  5      
  xchgw %ax, %ax                         #  2026  0x860a5  3      
.L_86d40:                                #        0x860a8  0      
  movl 0xb8(%rsp), %esi                  #  2027  0x860a8  7      
  subl 0x98(%rsp), %esi                  #  2028  0x860af  7      
  movq 0xb0(%rsp), %rcx                  #  2029  0x860b6  8      
  movl %esi, 0x7c(%rsp)                  #  2030  0x860be  4      
  jmpq .L_851a0                          #  2031  0x860c2  5      
  nop                                    #  2032  0x860c7  1      
.L_86d60:                                #        0x860c8  0      
  movl $0x6, 0x7c(%rsp)                  #  2033  0x860c8  8      
  cmpl $0x6, %r8d                        #  2034  0x860d0  4      
  cmoval 0x7c(%rsp), %r8d                #  2035  0x860d4  6      
  movl $0x0, %eax                        #  2036  0x860da  5      
  nop                                    #  2037  0x860df  1      
  movq $0x10023c12, 0x98(%rsp)           #  2038  0x860e0  12     
  testl %r8d, %r8d                       #  2039  0x860ec  3      
  movl %r8d, 0x7c(%rsp)                  #  2040  0x860ef  5      
  cmovnsl %r8d, %eax                     #  2041  0x860f4  4      
  movl %eax, 0x68(%rsp)                  #  2042  0x860f8  4      
  nop                                    #  2043  0x860fc  1      
  jmpq .L_84640                          #  2044  0x860fd  5      
  nop                                    #  2045  0x86102  1      
  nop                                    #  2046  0x86103  1      
.L_86dc0:                                #        0x86104  0      
  movq 0x80(%rsp), %rax                  #  2047  0x86104  8      
  movl %eax, %eax                        #  2048  0x8610c  2      
  movl (%r15,%rax,1), %edx               #  2049  0x8610e  4      
  cmpl $0x2f, %edx                       #  2050  0x86112  3      
  ja .L_871e0                            #  2051  0x86115  6      
  movq %rax, %rcx                        #  2052  0x8611b  3      
  nop                                    #  2053  0x8611e  1      
  movl %eax, %eax                        #  2054  0x8611f  2      
  movl 0xc(%r15,%rax,1), %eax            #  2055  0x86121  5      
  addl %edx, %eax                        #  2056  0x86126  2      
  addl $0x8, %edx                        #  2057  0x86128  3      
  movl %ecx, %ecx                        #  2058  0x8612b  2      
  movl %edx, (%r15,%rcx,1)               #  2059  0x8612d  4      
  nop                                    #  2060  0x86131  1      
.L_86e00:                                #        0x86132  0      
  movl %eax, %eax                        #  2061  0x86132  2      
  movl (%r15,%rax,1), %r13d              #  2062  0x86134  4      
  movl $0x1, %eax                        #  2063  0x86138  5      
  testq %r13, %r13                       #  2064  0x8613d  3      
  setne %dl                              #  2065  0x86140  3      
  jmpq .L_850e0                          #  2066  0x86143  5      
  nop                                    #  2067  0x86148  1      
.L_86e20:                                #        0x86149  0      
  movq 0x80(%rsp), %rcx                  #  2068  0x86149  8      
  movq 0x80(%rsp), %rsi                  #  2069  0x86151  8      
  movl %ecx, %ecx                        #  2070  0x86159  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2071  0x8615b  5      
  leal 0x8(%rdx), %ecx                   #  2072  0x86160  3      
  nop                                    #  2073  0x86163  1      
  movl %esi, %esi                        #  2074  0x86164  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2075  0x86166  5      
  jmpq .L_86ba0                          #  2076  0x8616b  5      
  nop                                    #  2077  0x86170  1      
  nop                                    #  2078  0x86171  1      
.L_86e60:                                #        0x86172  0      
  movq 0x80(%rsp), %rsi                  #  2079  0x86172  8      
  movl %esi, %esi                        #  2080  0x8617a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2081  0x8617c  5      
  leal 0x8(%rax), %edx                   #  2082  0x86181  3      
  movl %esi, %esi                        #  2083  0x86184  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2084  0x86186  5      
  jmpq .L_86c00                          #  2085  0x8618b  5      
  xchgw %ax, %ax                         #  2086  0x86190  3      
.L_86e80:                                #        0x86193  0      
  movq 0x80(%rsp), %rdx                  #  2087  0x86193  8      
  movl %edx, %edx                        #  2088  0x8619b  2      
  movl (%r15,%rdx,1), %ecx               #  2089  0x8619d  4      
  cmpl $0x2f, %ecx                       #  2090  0x861a1  3      
  ja .L_872c0                            #  2091  0x861a4  6      
  movq %rdx, %rsi                        #  2092  0x861aa  3      
  nop                                    #  2093  0x861ad  1      
  movl %edx, %edx                        #  2094  0x861ae  2      
  movl 0xc(%r15,%rdx,1), %edx            #  2095  0x861b0  5      
  addl %ecx, %edx                        #  2096  0x861b5  2      
  addl $0x8, %ecx                        #  2097  0x861b7  3      
  movl %esi, %esi                        #  2098  0x861ba  2      
  movl %ecx, (%r15,%rsi,1)               #  2099  0x861bc  4      
  nop                                    #  2100  0x861c0  1      
.L_86ec0:                                #        0x861c1  0      
  movl %edx, %edx                        #  2101  0x861c1  2      
  movl (%r15,%rdx,1), %r13d              #  2102  0x861c3  4      
  jmpq .L_85280                          #  2103  0x861c7  5      
  nop                                    #  2104  0x861cc  1      
  nop                                    #  2105  0x861cd  1      
.L_86ee0:                                #        0x861ce  0      
  movq 0x80(%rsp), %rax                  #  2106  0x861ce  8      
  movl %eax, %eax                        #  2107  0x861d6  2      
  movl (%r15,%rax,1), %edx               #  2108  0x861d8  4      
  cmpl $0x2f, %edx                       #  2109  0x861dc  3      
  ja .L_87280                            #  2110  0x861df  6      
  movq %rax, %rcx                        #  2111  0x861e5  3      
  nop                                    #  2112  0x861e8  1      
  movl %eax, %eax                        #  2113  0x861e9  2      
  movl 0xc(%r15,%rax,1), %eax            #  2114  0x861eb  5      
  addl %edx, %eax                        #  2115  0x861f0  2      
  addl $0x8, %edx                        #  2116  0x861f2  3      
  movl %ecx, %ecx                        #  2117  0x861f5  2      
  movl %edx, (%r15,%rcx,1)               #  2118  0x861f7  4      
  nop                                    #  2119  0x861fb  1      
.L_86f20:                                #        0x861fc  0      
  movl %eax, %eax                        #  2120  0x861fc  2      
  movl (%r15,%rax,1), %r13d              #  2121  0x861fe  4      
  jmpq .L_85560                          #  2122  0x86202  5      
  nop                                    #  2123  0x86207  1      
  nop                                    #  2124  0x86208  1      
.L_86f40:                                #        0x86209  0      
  andl $0x200, %r12d                     #  2125  0x86209  7      
  je .L_87300                            #  2126  0x86210  6      
  movq 0x80(%rsp), %rcx                  #  2127  0x86216  8      
  movl %ecx, %ecx                        #  2128  0x8621e  2      
  movl (%r15,%rcx,1), %edx               #  2129  0x86220  4      
  cmpl $0x2f, %edx                       #  2130  0x86224  3      
  xchgw %ax, %ax                         #  2131  0x86227  3      
  ja .L_87340                            #  2132  0x8622a  6      
  movl %ecx, %ecx                        #  2133  0x86230  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2134  0x86232  5      
  addl %edx, %eax                        #  2135  0x86237  2      
  addl $0x8, %edx                        #  2136  0x86239  3      
  movl %ecx, %ecx                        #  2137  0x8623c  2      
  movl %edx, (%r15,%rcx,1)               #  2138  0x8623e  4      
  nop                                    #  2139  0x86242  1      
.L_86f80:                                #        0x86243  0      
  movl %eax, %eax                        #  2140  0x86243  2      
  movl (%r15,%rax,1), %eax               #  2141  0x86245  4      
  movzbl 0x8c(%rsp), %edx                #  2142  0x86249  8      
  movl %eax, %eax                        #  2143  0x86251  2      
  movb %dl, (%r15,%rax,1)                #  2144  0x86253  4      
  jmpq .L_84400                          #  2145  0x86257  5      
  nop                                    #  2146  0x8625c  1      
.L_86fa0:                                #        0x8625d  0      
  movq 0x80(%rsp), %rax                  #  2147  0x8625d  8      
  movl %eax, %eax                        #  2148  0x86265  2      
  movl (%r15,%rax,1), %edx               #  2149  0x86267  4      
  cmpl $0x2f, %edx                       #  2150  0x8626b  3      
  ja .L_87240                            #  2151  0x8626e  6      
  movq %rax, %rcx                        #  2152  0x86274  3      
  nop                                    #  2153  0x86277  1      
  movl %eax, %eax                        #  2154  0x86278  2      
  movl 0xc(%r15,%rax,1), %eax            #  2155  0x8627a  5      
  addl %edx, %eax                        #  2156  0x8627f  2      
  addl $0x8, %edx                        #  2157  0x86281  3      
  movl %ecx, %ecx                        #  2158  0x86284  2      
  movl %edx, (%r15,%rcx,1)               #  2159  0x86286  4      
  nop                                    #  2160  0x8628a  1      
.L_86fe0:                                #        0x8628b  0      
  movl %eax, %eax                        #  2161  0x8628b  2      
  movslq (%r15,%rax,1), %r13             #  2162  0x8628d  4      
  jmpq .L_85480                          #  2163  0x86291  5      
  nop                                    #  2164  0x86296  1      
  nop                                    #  2165  0x86297  1      
.L_87000:                                #        0x86298  0      
  movq 0x80(%rsp), %rsi                  #  2166  0x86298  8      
  movl %esi, %esi                        #  2167  0x862a0  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2168  0x862a2  5      
  leal 0x8(%rax), %edx                   #  2169  0x862a7  3      
  movl %esi, %esi                        #  2170  0x862aa  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2171  0x862ac  5      
  jmpq .L_869c0                          #  2172  0x862b1  5      
  xchgw %ax, %ax                         #  2173  0x862b6  3      
.L_87020:                                #        0x862b9  0      
  movq 0x80(%rsp), %rsi                  #  2174  0x862b9  8      
  movl %esi, %esi                        #  2175  0x862c1  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2176  0x862c3  5      
  leal 0x8(%rax), %edx                   #  2177  0x862c8  3      
  movl %esi, %esi                        #  2178  0x862cb  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2179  0x862cd  5      
  jmpq .L_86a20                          #  2180  0x862d2  5      
  xchgw %ax, %ax                         #  2181  0x862d7  3      
.L_87040:                                #        0x862da  0      
  cmpl $0x0, 0x7c(%rsp)                  #  2182  0x862da  5      
  movq $0x0, 0x90(%rsp)                  #  2183  0x862df  12     
  cmovnsl 0x7c(%rsp), %r13d              #  2184  0x862eb  6      
  nop                                    #  2185  0x862f1  1      
  movl $0x0, 0xac(%rsp)                  #  2186  0x862f2  11     
  movl %r13d, 0x68(%rsp)                 #  2187  0x862fd  5      
  jmpq .L_851e0                          #  2188  0x86302  5      
  nop                                    #  2189  0x86307  1      
.L_87080:                                #        0x86308  0      
  movl 0x98(%rsp), %edi                  #  2190  0x86308  7      
  nop                                    #  2191  0x8630f  1      
  nop                                    #  2192  0x86310  1      
  callq .strlen                          #  2193  0x86311  5      
  testl %eax, %eax                       #  2194  0x86316  2      
  movl %eax, 0x7c(%rsp)                  #  2195  0x86318  4      
  movq $0x0, 0x90(%rsp)                  #  2196  0x8631c  12     
  cmovnsl %eax, %r13d                    #  2197  0x86328  4      
  nop                                    #  2198  0x8632c  1      
  movl $0x0, 0xac(%rsp)                  #  2199  0x8632d  11     
  movl %r13d, 0x68(%rsp)                 #  2200  0x86338  5      
  jmpq .L_851e0                          #  2201  0x8633d  5      
  nop                                    #  2202  0x86342  1      
.L_870e0:                                #        0x86343  0      
  movq 0x70(%rsp), %rsi                  #  2203  0x86343  5      
  movl %esi, %esi                        #  2204  0x86348  2      
  testb $0x2, 0xd(%r15,%rsi,1)           #  2205  0x8634a  6      
  jne .L_85a20                           #  2206  0x86350  6      
  movl 0x70(%rsp), %edi                  #  2207  0x86356  4      
  addl $0x5c, %edi                       #  2208  0x8635a  3      
  nop                                    #  2209  0x8635d  1      
  callq .__local_lock_release_recursive  #  2210  0x8635e  5      
  movl $0xffffffff, 0x8c(%rsp)           #  2211  0x86363  11     
  jmpq .L_84ee0                          #  2212  0x8636e  5      
  nop                                    #  2213  0x86373  1      
  nop                                    #  2214  0x86374  1      
.L_87120:                                #        0x86375  0      
  movl %r12d, 0x7c(%rsp)                 #  2215  0x86375  5      
  movq 0x68(%rsp), %rbx                  #  2216  0x8637a  5      
  movl 0x90(%rsp), %r12d                 #  2217  0x8637f  8      
  jmpq .L_867e0                          #  2218  0x86387  5      
  nop                                    #  2219  0x8638c  1      
.L_87140:                                #        0x8638d  0      
  movq 0x80(%rsp), %rcx                  #  2220  0x8638d  8      
  movq 0x80(%rsp), %rsi                  #  2221  0x86395  8      
  movl %ecx, %ecx                        #  2222  0x8639d  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2223  0x8639f  5      
  leal 0x8(%rdx), %ecx                   #  2224  0x863a4  3      
  nop                                    #  2225  0x863a7  1      
  movl %esi, %esi                        #  2226  0x863a8  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2227  0x863aa  5      
  jmpq .L_86380                          #  2228  0x863af  5      
  nop                                    #  2229  0x863b4  1      
  nop                                    #  2230  0x863b5  1      
.L_87180:                                #        0x863b6  0      
  movl 0x18(%rsp), %r8d                  #  2231  0x863b6  5      
  leal 0x1c8(%rsp), %edx                 #  2232  0x863bb  7      
  xorl %ecx, %ecx                        #  2233  0x863c2  2      
  xorl %esi, %esi                        #  2234  0x863c4  2      
  movl %r14d, %edi                       #  2235  0x863c6  3      
  nop                                    #  2236  0x863c9  1      
  callq ._wcsrtombs_r                    #  2237  0x863ca  5      
  cmpl $0xffffffff, %eax                 #  2238  0x863cf  5      
  movl %eax, 0x7c(%rsp)                  #  2239  0x863d4  4      
  je .L_87400                            #  2240  0x863d8  6      
  movl 0x98(%rsp), %ecx                  #  2241  0x863de  7      
  movl %ecx, 0x1c8(%rsp)                 #  2242  0x863e5  7      
  jmpq .L_867e0                          #  2243  0x863ec  5      
.L_871c0:                                #        0x863f1  0      
  movq 0x70(%rsp), %rsi                  #  2244  0x863f1  5      
  movl %esi, %esi                        #  2245  0x863f6  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  2246  0x863f8  6      
  orl $0x40, %eax                        #  2247  0x863fe  3      
  movl %esi, %esi                        #  2248  0x86401  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  2249  0x86403  6      
  jmpq .L_859e0                          #  2250  0x86409  5      
  nop                                    #  2251  0x8640e  1      
.L_871e0:                                #        0x8640f  0      
  movq 0x80(%rsp), %rsi                  #  2252  0x8640f  8      
  movl %esi, %esi                        #  2253  0x86417  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2254  0x86419  5      
  leal 0x8(%rax), %edx                   #  2255  0x8641e  3      
  movl %esi, %esi                        #  2256  0x86421  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2257  0x86423  5      
  jmpq .L_86e00                          #  2258  0x86428  5      
  xchgw %ax, %ax                         #  2259  0x8642d  3      
.L_87200:                                #        0x86430  0      
  movq 0x80(%rsp), %rsi                  #  2260  0x86430  8      
  movl %esi, %esi                        #  2261  0x86438  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2262  0x8643a  5      
  leal 0x8(%rax), %edx                   #  2263  0x8643f  3      
  movl %esi, %esi                        #  2264  0x86442  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2265  0x86444  5      
  jmpq .L_864a0                          #  2266  0x86449  5      
  xchgw %ax, %ax                         #  2267  0x8644e  3      
.L_87220:                                #        0x86451  0      
  movq 0x80(%rsp), %rsi                  #  2268  0x86451  8      
  movl %esi, %esi                        #  2269  0x86459  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2270  0x8645b  5      
  leal 0x8(%rax), %edx                   #  2271  0x86460  3      
  movl %esi, %esi                        #  2272  0x86463  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2273  0x86465  5      
  jmpq .L_866a0                          #  2274  0x8646a  5      
  xchgw %ax, %ax                         #  2275  0x8646f  3      
.L_87240:                                #        0x86472  0      
  movq 0x80(%rsp), %rsi                  #  2276  0x86472  8      
  movl %esi, %esi                        #  2277  0x8647a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2278  0x8647c  5      
  leal 0x8(%rax), %edx                   #  2279  0x86481  3      
  movl %esi, %esi                        #  2280  0x86484  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2281  0x86486  5      
  jmpq .L_86fe0                          #  2282  0x8648b  5      
  xchgw %ax, %ax                         #  2283  0x86490  3      
.L_87260:                                #        0x86493  0      
  movq 0x80(%rsp), %rsi                  #  2284  0x86493  8      
  movl %esi, %esi                        #  2285  0x8649b  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2286  0x8649d  5      
  leal 0x8(%rax), %edx                   #  2287  0x864a2  3      
  movl %esi, %esi                        #  2288  0x864a5  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2289  0x864a7  5      
  jmpq .L_865c0                          #  2290  0x864ac  5      
  xchgw %ax, %ax                         #  2291  0x864b1  3      
.L_87280:                                #        0x864b4  0      
  movq 0x80(%rsp), %rsi                  #  2292  0x864b4  8      
  movl %esi, %esi                        #  2293  0x864bc  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2294  0x864be  5      
  leal 0x8(%rax), %edx                   #  2295  0x864c3  3      
  movl %esi, %esi                        #  2296  0x864c6  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2297  0x864c8  5      
  jmpq .L_86f20                          #  2298  0x864cd  5      
  xchgw %ax, %ax                         #  2299  0x864d2  3      
.L_872a0:                                #        0x864d5  0      
  movq 0x80(%rsp), %rsi                  #  2300  0x864d5  8      
  movl %esi, %esi                        #  2301  0x864dd  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2302  0x864df  5      
  leal 0x8(%rax), %edx                   #  2303  0x864e4  3      
  movl %esi, %esi                        #  2304  0x864e7  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2305  0x864e9  5      
  jmpq .L_86520                          #  2306  0x864ee  5      
  xchgw %ax, %ax                         #  2307  0x864f3  3      
.L_872c0:                                #        0x864f6  0      
  movq 0x80(%rsp), %rcx                  #  2308  0x864f6  8      
  movq 0x80(%rsp), %rsi                  #  2309  0x864fe  8      
  movl %ecx, %ecx                        #  2310  0x86506  2      
  movl 0x8(%r15,%rcx,1), %edx            #  2311  0x86508  5      
  leal 0x8(%rdx), %ecx                   #  2312  0x8650d  3      
  nop                                    #  2313  0x86510  1      
  movl %esi, %esi                        #  2314  0x86511  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  2315  0x86513  5      
  jmpq .L_86ec0                          #  2316  0x86518  5      
  nop                                    #  2317  0x8651d  1      
  nop                                    #  2318  0x8651e  1      
.L_87300:                                #        0x8651f  0      
  movq 0x80(%rsp), %rcx                  #  2319  0x8651f  8      
  movl %ecx, %ecx                        #  2320  0x86527  2      
  movl (%r15,%rcx,1), %edx               #  2321  0x86529  4      
  cmpl $0x2f, %edx                       #  2322  0x8652d  3      
  ja .L_86d20                            #  2323  0x86530  6      
  movl %ecx, %ecx                        #  2324  0x86536  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2325  0x86538  5      
  addl %edx, %eax                        #  2326  0x8653d  2      
  addl $0x8, %edx                        #  2327  0x8653f  3      
  movl %ecx, %ecx                        #  2328  0x86542  2      
  movl %edx, (%r15,%rcx,1)               #  2329  0x86544  4      
  jmpq .L_86a80                          #  2330  0x86548  5      
  nop                                    #  2331  0x8654d  1      
  nop                                    #  2332  0x8654e  1      
.L_87340:                                #        0x8654f  0      
  movq 0x80(%rsp), %rsi                  #  2333  0x8654f  8      
  movl %esi, %esi                        #  2334  0x86557  2      
  movl 0x8(%r15,%rsi,1), %eax            #  2335  0x86559  5      
  leal 0x8(%rax), %edx                   #  2336  0x8655e  3      
  movl %esi, %esi                        #  2337  0x86561  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2338  0x86563  5      
  jmpq .L_86f80                          #  2339  0x86568  5      
  xchgw %ax, %ax                         #  2340  0x8656d  3      
.L_87360:                                #        0x86570  0      
  movq 0x80(%rsp), %rsi                  #  2341  0x86570  8      
  movl %esi, %esi                        #  2342  0x86578  2      
  movl (%r15,%rsi,1), %edx               #  2343  0x8657a  4      
  cmpl $0x2f, %edx                       #  2344  0x8657e  3      
  ja .L_873c0                            #  2345  0x86581  6      
  movl %esi, %esi                        #  2346  0x86587  2      
  movl 0xc(%r15,%rsi,1), %eax            #  2347  0x86589  5      
  addl %edx, %eax                        #  2348  0x8658e  2      
  addl $0x8, %edx                        #  2349  0x86590  3      
  nop                                    #  2350  0x86593  1      
  movl %esi, %esi                        #  2351  0x86594  2      
  movl %edx, (%r15,%rsi,1)               #  2352  0x86596  4      
  nop                                    #  2353  0x8659a  1      
  nop                                    #  2354  0x8659b  1      
.L_873a0:                                #        0x8659c  0      
  movl %eax, %eax                        #  2355  0x8659c  2      
  movl (%r15,%rax,1), %r8d               #  2356  0x8659e  4      
  testl %r8d, %r8d                       #  2357  0x865a2  3      
  jns .L_84d60                           #  2358  0x865a5  6      
  movl %r13d, %r13d                      #  2359  0x865ab  3      
  movzbl (%r15,%r13,1), %eax             #  2360  0x865ae  5      
  orl $0xffffffff, %r8d                  #  2361  0x865b3  7      
  jmpq .L_845c0                          #  2362  0x865ba  5      
.L_873c0:                                #        0x865bf  0      
  movq 0x80(%rsp), %rdx                  #  2363  0x865bf  8      
  movq 0x80(%rsp), %rcx                  #  2364  0x865c7  8      
  movl %edx, %edx                        #  2365  0x865cf  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2366  0x865d1  5      
  leal 0x8(%rax), %edx                   #  2367  0x865d6  3      
  nop                                    #  2368  0x865d9  1      
  movl %ecx, %ecx                        #  2369  0x865da  2      
  movl %edx, 0x8(%r15,%rcx,1)            #  2370  0x865dc  5      
  jmpq .L_873a0                          #  2371  0x865e1  5      
  nop                                    #  2372  0x865e6  1      
  nop                                    #  2373  0x865e7  1      
.L_87400:                                #        0x865e8  0      
  movq 0x70(%rsp), %rdx                  #  2374  0x865e8  5      
  movl %edx, %edx                        #  2375  0x865ed  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  2376  0x865ef  6      
  orl $0x40, %eax                        #  2377  0x865f5  3      
  movl %edx, %edx                        #  2378  0x865f8  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  2379  0x865fa  6      
  jmpq .L_859e0                          #  2380  0x86600  5      
  nop                                    #  2381  0x86605  1      
                                                                  
.size _vfiprintf_r, .-_vfiprintf_r

