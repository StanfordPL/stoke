  .text
  .globl _svfiprintf_r
  .type _svfiprintf_r, @function

#! file-offset 0x81120
#! rip-offset  0x81120
#! capacity    12000 bytes

# Text                                #  Line  RIP      Bytes  
._svfiprintf_r:                       #        0x81120  0      
  pushq %r14                          #  1     0x81120  3      
  movl %esi, %esi                     #  2     0x81123  2      
  movl %ecx, %ecx                     #  3     0x81125  2      
  movl %edi, %r14d                    #  4     0x81127  3      
  pushq %r13                          #  5     0x8112a  3      
  pushq %r12                          #  6     0x8112d  3      
  pushq %rbx                          #  7     0x81130  2      
  movl %edx, %ebx                     #  8     0x81132  2      
  movl $0x8, %edx                     #  9     0x81134  5      
  subl $0x1e8, %esp                   #  10    0x81139  6      
  addq %r15, %rsp                     #  11    0x8113f  3      
  xchgw %ax, %ax                      #  12    0x81142  3      
  leal 0x1c0(%rsp), %eax              #  13    0x81145  7      
  movq %rsi, 0x78(%rsp)               #  14    0x8114c  5      
  xorl %esi, %esi                     #  15    0x81151  2      
  movq %rcx, 0x80(%rsp)               #  16    0x81153  8      
  movl %eax, %edi                     #  17    0x8115b  2      
  movq %rax, 0x38(%rsp)               #  18    0x8115d  5      
  nop                                 #  19    0x81162  1      
  nop                                 #  20    0x81163  1      
  nop                                 #  21    0x81164  1      
  callq .memset                       #  22    0x81165  5      
  movq 0x78(%rsp), %rdx               #  23    0x8116a  5      
  movl %edx, %edx                     #  24    0x8116f  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  25    0x81171  6      
  jns .L_811a0                        #  26    0x81177  6      
  movl %edx, %edx                     #  27    0x8117d  2      
  movl 0x10(%r15,%rdx,1), %r10d       #  28    0x8117f  5      
  testl %r10d, %r10d                  #  29    0x81184  3      
  je .L_83820                         #  30    0x81187  6      
  nop                                 #  31    0x8118d  1      
.L_811a0:                             #        0x8118e  0      
  leal 0x150(%rsp), %eax              #  32    0x8118e  7      
  leal 0xe0(%rsp), %ecx               #  33    0x81195  7      
  movq %rbx, 0x60(%rsp)               #  34    0x8119c  5      
  leal 0x1cc(%rsp), %edx              #  35    0x811a1  7      
  nop                                 #  36    0x811a8  1      
  movl $0x0, 0x198(%rsp)              #  37    0x811a9  11     
  movl $0x0, 0x194(%rsp)              #  38    0x811b4  11     
  movq %rax, 0x30(%rsp)               #  39    0x811bf  5      
  nop                                 #  40    0x811c4  1      
  movl %eax, 0x190(%rsp)              #  41    0x811c5  7      
  movq %rax, %rbx                     #  42    0x811cc  3      
  movq %rcx, 0x28(%rsp)               #  43    0x811cf  5      
  movl 0x28(%rsp), %eax               #  44    0x811d4  4      
  movq $0x0, 0xc0(%rsp)               #  45    0x811d8  12     
  nop                                 #  46    0x811e4  1      
  movq $0x0, 0xb0(%rsp)               #  47    0x811e5  12     
  movl $0x0, 0xd4(%rsp)               #  48    0x811f1  11     
  nop                                 #  49    0x811fc  1      
  movq $0x0, 0xd8(%rsp)               #  50    0x811fd  12     
  addl $0x64, %eax                    #  51    0x81209  3      
  movl $0x0, 0x74(%rsp)               #  52    0x8120c  8      
  movq %rdx, 0x20(%rsp)               #  53    0x81214  5      
  movl %eax, %eax                     #  54    0x81219  2      
  movl %eax, %esi                     #  55    0x8121b  2      
  movq %rax, 0xb8(%rsp)               #  56    0x8121d  8      
  subl $0x1, %esi                     #  57    0x81225  3      
  movq %rsi, 0xc8(%rsp)               #  58    0x81228  8      
  nop                                 #  59    0x81230  1      
.L_81260:                             #        0x81231  0      
  movq 0x60(%rsp), %r12               #  60    0x81231  5      
  movq %rbx, %r13                     #  61    0x81236  3      
  jmpq .L_812c0                       #  62    0x81239  5      
  nop                                 #  63    0x8123e  1      
  nop                                 #  64    0x8123f  1      
.L_81280:                             #        0x81240  0      
  cmpl $0x25, 0x1cc(%rsp)             #  65    0x81240  8      
  je .L_81360                         #  66    0x81248  6      
  nop                                 #  67    0x8124e  1      
  nop                                 #  68    0x8124f  1      
.L_812a0:                             #        0x81250  0      
  leal (%rax,%r12,1), %r12d           #  69    0x81250  4      
  nop                                 #  70    0x81254  1      
  nop                                 #  71    0x81255  1      
.L_812c0:                             #        0x81256  0      
  movl 0xffaf964(%rip), %ebx          #  72    0x81256  6      
  nop                                 #  73    0x8125c  1      
  nop                                 #  74    0x8125d  1      
  callq .__locale_charset             #  75    0x8125e  5      
  movl %eax, %r8d                     #  76    0x81263  3      
  movq %r8, 0x40(%rsp)                #  77    0x81266  5      
  nop                                 #  78    0x8126b  1      
  nop                                 #  79    0x8126c  1      
  callq .__locale_mb_cur_max          #  80    0x8126d  5      
  movl 0x38(%rsp), %r9d               #  81    0x81272  5      
  movl %eax, %ecx                     #  82    0x81277  2      
  movq 0x40(%rsp), %r8                #  83    0x81279  5      
  movl %r12d, %edx                    #  84    0x8127e  3      
  movl 0x20(%rsp), %esi               #  85    0x81281  4      
  movl %r14d, %edi                    #  86    0x81285  3      
  xchgw %ax, %ax                      #  87    0x81288  3      
  andl $0xffffffe0, %ebx              #  88    0x8128b  6      
  addq %r15, %rbx                     #  89    0x81291  3      
  callq %rbx                          #  90    0x81294  2      
  cmpl $0x0, %eax                     #  91    0x81296  3      
  je .L_81360                         #  92    0x81299  6      
  jge .L_81280                        #  93    0x8129f  6      
  movl 0x38(%rsp), %edi               #  94    0x812a5  4      
  movl $0x8, %edx                     #  95    0x812a9  5      
  xorl %esi, %esi                     #  96    0x812ae  2      
  nop                                 #  97    0x812b0  1      
  callq .memset                       #  98    0x812b1  5      
  movl $0x1, %eax                     #  99    0x812b6  5      
  jmpq .L_812a0                       #  100   0x812bb  5      
  nop                                 #  101   0x812c0  1      
  nop                                 #  102   0x812c1  1      
.L_81360:                             #        0x812c2  0      
  movl %r12d, %ecx                    #  103   0x812c2  3      
  subl 0x60(%rsp), %ecx               #  104   0x812c5  4      
  movq %r13, %rbx                     #  105   0x812c9  3      
  movl %eax, %r13d                    #  106   0x812cc  3      
  je .L_813e0                         #  107   0x812cf  6      
  movl 0x60(%rsp), %eax               #  108   0x812d5  4      
  movl %ebx, %ebx                     #  109   0x812d9  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  110   0x812db  5      
  nop                                 #  111   0x812e0  1      
  addl %ecx, 0x198(%rsp)              #  112   0x812e1  7      
  movl %ebx, %ebx                     #  113   0x812e8  2      
  movl %eax, (%r15,%rbx,1)            #  114   0x812ea  4      
  movl 0x194(%rsp), %eax              #  115   0x812ee  7      
  addl $0x1, %eax                     #  116   0x812f5  3      
  cmpl $0x7, %eax                     #  117   0x812f8  3      
  nop                                 #  118   0x812fb  1      
  movl %eax, 0x194(%rsp)              #  119   0x812fc  7      
  jg .L_82760                         #  120   0x81303  6      
  addl $0x8, %ebx                     #  121   0x81309  3      
  nop                                 #  122   0x8130c  1      
  nop                                 #  123   0x8130d  1      
.L_813c0:                             #        0x8130e  0      
  addl %ecx, 0x74(%rsp)               #  124   0x8130e  4      
  nop                                 #  125   0x81312  1      
  nop                                 #  126   0x81313  1      
.L_813e0:                             #        0x81314  0      
  testl %r13d, %r13d                  #  127   0x81314  3      
  je .L_82ee0                         #  128   0x81317  6      
  addl $0x1, %r12d                    #  129   0x8131d  4      
  movb $0x0, 0x1df(%rsp)              #  130   0x81321  8      
  movl $0xffffffff, %r8d              #  131   0x81329  6      
  movq %r12, %rdx                     #  132   0x8132f  3      
  xchgw %ax, %ax                      #  133   0x81332  3      
  movq %r12, 0x60(%rsp)               #  134   0x81335  5      
  movl %r12d, %r12d                   #  135   0x8133a  3      
  movzbl (%r15,%r12,1), %eax          #  136   0x8133d  5      
  movq %rdx, %r13                     #  137   0x81342  3      
  movl $0x0, 0x8c(%rsp)               #  138   0x81345  11     
  xorl %r12d, %r12d                   #  139   0x81350  3      
  xchgw %ax, %ax                      #  140   0x81353  3      
.L_81420:                             #        0x81356  0      
  movsbl %al, %eax                    #  141   0x81356  3      
  addl $0x1, %r13d                    #  142   0x81359  4      
  nop                                 #  143   0x8135d  1      
  nop                                 #  144   0x8135e  1      
.L_81440:                             #        0x8135f  0      
  leal -0x20(%rax), %edx              #  145   0x8135f  3      
  cmpl $0x5a, %edx                    #  146   0x81362  3      
  jbe .L_81ac0                        #  147   0x81365  6      
  nop                                 #  148   0x8136b  1      
  nop                                 #  149   0x8136c  1      
  testl %eax, %eax                    #  150   0x8136d  2      
  movq %r13, 0x60(%rsp)               #  151   0x8136f  5      
  je .L_82ee0                         #  152   0x81374  6      
  leal 0xe0(%rsp), %edx               #  153   0x8137a  7      
  movb %al, 0xe0(%rsp)                #  154   0x81381  7      
  nop                                 #  155   0x81388  1      
  movb $0x0, 0x1df(%rsp)              #  156   0x81389  8      
  movl $0x1, 0x68(%rsp)               #  157   0x81391  8      
  movl $0x1, 0x70(%rsp)               #  158   0x81399  8      
  movq %rdx, 0x98(%rsp)               #  159   0x813a1  8      
.L_814a0:                             #        0x813a9  0      
  movq $0x0, 0x90(%rsp)               #  160   0x813a9  12     
  movl $0x0, 0xac(%rsp)               #  161   0x813b5  11     
  nop                                 #  162   0x813c0  1      
.L_814c0:                             #        0x813c1  0      
  movl 0x68(%rsp), %eax               #  163   0x813c1  4      
  movl %r12d, %ecx                    #  164   0x813c5  3      
  movl %r12d, %esi                    #  165   0x813c8  3      
  addl $0x2, %eax                     #  166   0x813cb  3      
  andl $0x2, %ecx                     #  167   0x813ce  3      
  cmovel 0x68(%rsp), %eax             #  168   0x813d1  5      
  andl $0x84, %esi                    #  169   0x813d6  3      
  nop                                 #  170   0x813d9  1      
  movl %ecx, 0xa8(%rsp)               #  171   0x813da  7      
  movl %esi, 0xa4(%rsp)               #  172   0x813e1  7      
  movl %eax, 0x68(%rsp)               #  173   0x813e8  4      
  jne .L_81640                        #  174   0x813ec  6      
  movl 0x8c(%rsp), %r13d              #  175   0x813f2  8      
  subl %eax, %r13d                    #  176   0x813fa  3      
  testl %r13d, %r13d                  #  177   0x813fd  3      
  jle .L_81640                        #  178   0x81400  6      
  cmpl $0x10, %r13d                   #  179   0x81406  4      
  jle .L_81600                        #  180   0x8140a  6      
  leal 0x190(%rsp), %eax              #  181   0x81410  7      
  nop                                 #  182   0x81417  1      
  movq %rax, 0x10(%rsp)               #  183   0x81418  5      
  movq %rbx, %rax                     #  184   0x8141d  3      
  movq 0x78(%rsp), %rbx               #  185   0x81420  5      
  jmpq .L_81560                       #  186   0x81425  5      
  xchgw %ax, %ax                      #  187   0x8142a  3      
  nop                                 #  188   0x8142d  1      
.L_81540:                             #        0x8142e  0      
  subl $0x10, %r13d                   #  189   0x8142e  4      
  addl $0x8, %eax                     #  190   0x81432  3      
  cmpl $0x10, %r13d                   #  191   0x81435  4      
  jle .L_815e0                        #  192   0x81439  6      
  nop                                 #  193   0x8143f  1      
.L_81560:                             #        0x81440  0      
  movl %eax, %eax                     #  194   0x81440  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  195   0x81442  9      
  movl 0x194(%rsp), %edx              #  196   0x8144b  7      
  addl $0x10, 0x198(%rsp)             #  197   0x81452  8      
  nop                                 #  198   0x8145a  1      
  movl %eax, %eax                     #  199   0x8145b  2      
  movl $0x10024c30, (%r15,%rax,1)     #  200   0x8145d  8      
  addl $0x1, %edx                     #  201   0x81465  3      
  cmpl $0x7, %edx                     #  202   0x81468  3      
  movl %edx, 0x194(%rsp)              #  203   0x8146b  7      
  jle .L_81540                        #  204   0x81472  6      
  movl 0x10(%rsp), %edx               #  205   0x81478  4      
  movl %ebx, %esi                     #  206   0x8147c  2      
  nop                                 #  207   0x8147e  1      
  movl %r14d, %edi                    #  208   0x8147f  3      
  nop                                 #  209   0x81482  1      
  nop                                 #  210   0x81483  1      
  callq .__ssprint_r                  #  211   0x81484  5      
  testl %eax, %eax                    #  212   0x81489  2      
  jne .L_82520                        #  213   0x8148b  6      
  subl $0x10, %r13d                   #  214   0x81491  4      
  leal 0x150(%rsp), %eax              #  215   0x81495  7      
  cmpl $0x10, %r13d                   #  216   0x8149c  4      
  jg .L_81560                         #  217   0x814a0  6      
  nop                                 #  218   0x814a6  1      
.L_815e0:                             #        0x814a7  0      
  movq %rax, %rbx                     #  219   0x814a7  3      
  nop                                 #  220   0x814aa  1      
  nop                                 #  221   0x814ab  1      
.L_81600:                             #        0x814ac  0      
  movl %ebx, %ebx                     #  222   0x814ac  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  223   0x814ae  5      
  movl 0x194(%rsp), %eax              #  224   0x814b3  7      
  addl %r13d, 0x198(%rsp)             #  225   0x814ba  8      
  movl %ebx, %ebx                     #  226   0x814c2  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  227   0x814c4  8      
  addl $0x1, %eax                     #  228   0x814cc  3      
  cmpl $0x7, %eax                     #  229   0x814cf  3      
  movl %eax, 0x194(%rsp)              #  230   0x814d2  7      
  jg .L_829c0                         #  231   0x814d9  6      
  addl $0x8, %ebx                     #  232   0x814df  3      
  nop                                 #  233   0x814e2  1      
.L_81640:                             #        0x814e3  0      
  cmpb $0x0, 0x1df(%rsp)              #  234   0x814e3  8      
  je .L_816a0                         #  235   0x814eb  6      
  leal 0x1df(%rsp), %eax              #  236   0x814f1  7      
  movl %ebx, %ebx                     #  237   0x814f8  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  238   0x814fa  9      
  nop                                 #  239   0x81503  1      
  addl $0x1, 0x198(%rsp)              #  240   0x81504  8      
  movl %ebx, %ebx                     #  241   0x8150c  2      
  movl %eax, (%r15,%rbx,1)            #  242   0x8150e  4      
  movl 0x194(%rsp), %eax              #  243   0x81512  7      
  addl $0x1, %eax                     #  244   0x81519  3      
  cmpl $0x7, %eax                     #  245   0x8151c  3      
  nop                                 #  246   0x8151f  1      
  movl %eax, 0x194(%rsp)              #  247   0x81520  7      
  jg .L_827e0                         #  248   0x81527  6      
  addl $0x8, %ebx                     #  249   0x8152d  3      
  nop                                 #  250   0x81530  1      
  nop                                 #  251   0x81531  1      
.L_816a0:                             #        0x81532  0      
  movl 0xa8(%rsp), %ecx               #  252   0x81532  7      
  testl %ecx, %ecx                    #  253   0x81539  2      
  je .L_81700                         #  254   0x8153b  6      
  leal 0x1d0(%rsp), %eax              #  255   0x81541  7      
  movl %ebx, %ebx                     #  256   0x81548  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  257   0x8154a  9      
  nop                                 #  258   0x81553  1      
  addl $0x2, 0x198(%rsp)              #  259   0x81554  8      
  movl %ebx, %ebx                     #  260   0x8155c  2      
  movl %eax, (%r15,%rbx,1)            #  261   0x8155e  4      
  movl 0x194(%rsp), %eax              #  262   0x81562  7      
  addl $0x1, %eax                     #  263   0x81569  3      
  cmpl $0x7, %eax                     #  264   0x8156c  3      
  nop                                 #  265   0x8156f  1      
  movl %eax, 0x194(%rsp)              #  266   0x81570  7      
  jg .L_82820                         #  267   0x81577  6      
  addl $0x8, %ebx                     #  268   0x8157d  3      
  nop                                 #  269   0x81580  1      
  nop                                 #  270   0x81581  1      
.L_81700:                             #        0x81582  0      
  cmpl $0x80, 0xa4(%rsp)              #  271   0x81582  8      
  je .L_825a0                         #  272   0x8158a  6      
  nop                                 #  273   0x81590  1      
.L_81720:                             #        0x81591  0      
  movl 0xac(%rsp), %r13d              #  274   0x81591  8      
  subl 0x70(%rsp), %r13d              #  275   0x81599  5      
  testl %r13d, %r13d                  #  276   0x8159e  3      
  jle .L_81860                        #  277   0x815a1  6      
  cmpl $0x10, %r13d                   #  278   0x815a7  4      
  jle .L_81820                        #  279   0x815ab  6      
  leal 0x190(%rsp), %ecx              #  280   0x815b1  7      
  movq %rbx, %rax                     #  281   0x815b8  3      
  movq 0x78(%rsp), %rbx               #  282   0x815bb  5      
  movq %rcx, (%rsp)                   #  283   0x815c0  4      
  jmpq .L_81780                       #  284   0x815c4  5      
  nop                                 #  285   0x815c9  1      
.L_81760:                             #        0x815ca  0      
  subl $0x10, %r13d                   #  286   0x815ca  4      
  addl $0x8, %eax                     #  287   0x815ce  3      
  cmpl $0x10, %r13d                   #  288   0x815d1  4      
  jle .L_81800                        #  289   0x815d5  6      
  nop                                 #  290   0x815db  1      
.L_81780:                             #        0x815dc  0      
  movl %eax, %eax                     #  291   0x815dc  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  292   0x815de  9      
  movl 0x194(%rsp), %edx              #  293   0x815e7  7      
  addl $0x10, 0x198(%rsp)             #  294   0x815ee  8      
  nop                                 #  295   0x815f6  1      
  movl %eax, %eax                     #  296   0x815f7  2      
  movl $0x10024c20, (%r15,%rax,1)     #  297   0x815f9  8      
  addl $0x1, %edx                     #  298   0x81601  3      
  cmpl $0x7, %edx                     #  299   0x81604  3      
  movl %edx, 0x194(%rsp)              #  300   0x81607  7      
  jle .L_81760                        #  301   0x8160e  6      
  movl (%rsp), %edx                   #  302   0x81614  3      
  movl %ebx, %esi                     #  303   0x81617  2      
  xchgw %ax, %ax                      #  304   0x81619  3      
  movl %r14d, %edi                    #  305   0x8161c  3      
  nop                                 #  306   0x8161f  1      
  nop                                 #  307   0x81620  1      
  callq .__ssprint_r                  #  308   0x81621  5      
  testl %eax, %eax                    #  309   0x81626  2      
  jne .L_82520                        #  310   0x81628  6      
  subl $0x10, %r13d                   #  311   0x8162e  4      
  leal 0x150(%rsp), %eax              #  312   0x81632  7      
  cmpl $0x10, %r13d                   #  313   0x81639  4      
  jg .L_81780                         #  314   0x8163d  6      
  nop                                 #  315   0x81643  1      
.L_81800:                             #        0x81644  0      
  movq %rax, %rbx                     #  316   0x81644  3      
  nop                                 #  317   0x81647  1      
  nop                                 #  318   0x81648  1      
.L_81820:                             #        0x81649  0      
  movl %ebx, %ebx                     #  319   0x81649  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  320   0x8164b  5      
  movl 0x194(%rsp), %eax              #  321   0x81650  7      
  addl %r13d, 0x198(%rsp)             #  322   0x81657  8      
  movl %ebx, %ebx                     #  323   0x8165f  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  324   0x81661  8      
  addl $0x1, %eax                     #  325   0x81669  3      
  cmpl $0x7, %eax                     #  326   0x8166c  3      
  movl %eax, 0x194(%rsp)              #  327   0x8166f  7      
  jg .L_827a0                         #  328   0x81676  6      
  addl $0x8, %ebx                     #  329   0x8167c  3      
  nop                                 #  330   0x8167f  1      
.L_81860:                             #        0x81680  0      
  movl 0x70(%rsp), %eax               #  331   0x81680  4      
  movl 0x98(%rsp), %esi               #  332   0x81684  7      
  movl %ebx, %ebx                     #  333   0x8168b  2      
  movl %eax, 0x4(%r15,%rbx,1)         #  334   0x8168d  5      
  addl %eax, 0x198(%rsp)              #  335   0x81692  7      
  movl 0x194(%rsp), %eax              #  336   0x81699  7      
  movl %ebx, %ebx                     #  337   0x816a0  2      
  movl %esi, (%r15,%rbx,1)            #  338   0x816a2  4      
  addl $0x1, %eax                     #  339   0x816a6  3      
  cmpl $0x7, %eax                     #  340   0x816a9  3      
  movl %eax, 0x194(%rsp)              #  341   0x816ac  7      
  jg .L_826e0                         #  342   0x816b3  6      
  addl $0x8, %ebx                     #  343   0x816b9  3      
  nop                                 #  344   0x816bc  1      
.L_818a0:                             #        0x816bd  0      
  andl $0x4, %r12d                    #  345   0x816bd  4      
  je .L_81a20                         #  346   0x816c1  6      
  movl 0x8c(%rsp), %r12d              #  347   0x816c7  8      
  subl 0x68(%rsp), %r12d              #  348   0x816cf  5      
  testl %r12d, %r12d                  #  349   0x816d4  3      
  jle .L_81a20                        #  350   0x816d7  6      
  cmpl $0x10, %r12d                   #  351   0x816dd  4      
  jle .L_819a0                        #  352   0x816e1  6      
  movq %rbx, %rax                     #  353   0x816e7  3      
  leal 0x190(%rsp), %r13d             #  354   0x816ea  8      
  movq 0x78(%rsp), %rbx               #  355   0x816f2  5      
  jmpq .L_81900                       #  356   0x816f7  5      
  nop                                 #  357   0x816fc  1      
.L_818e0:                             #        0x816fd  0      
  subl $0x10, %r12d                   #  358   0x816fd  4      
  addl $0x8, %eax                     #  359   0x81701  3      
  cmpl $0x10, %r12d                   #  360   0x81704  4      
  jle .L_81980                        #  361   0x81708  6      
  nop                                 #  362   0x8170e  1      
.L_81900:                             #        0x8170f  0      
  movl %eax, %eax                     #  363   0x8170f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  364   0x81711  9      
  movl 0x194(%rsp), %edx              #  365   0x8171a  7      
  addl $0x10, 0x198(%rsp)             #  366   0x81721  8      
  nop                                 #  367   0x81729  1      
  movl %eax, %eax                     #  368   0x8172a  2      
  movl $0x10024c30, (%r15,%rax,1)     #  369   0x8172c  8      
  addl $0x1, %edx                     #  370   0x81734  3      
  cmpl $0x7, %edx                     #  371   0x81737  3      
  movl %edx, 0x194(%rsp)              #  372   0x8173a  7      
  jle .L_818e0                        #  373   0x81741  6      
  movl %r13d, %edx                    #  374   0x81747  3      
  movl %ebx, %esi                     #  375   0x8174a  2      
  xchgw %ax, %ax                      #  376   0x8174c  3      
  movl %r14d, %edi                    #  377   0x8174f  3      
  nop                                 #  378   0x81752  1      
  nop                                 #  379   0x81753  1      
  callq .__ssprint_r                  #  380   0x81754  5      
  testl %eax, %eax                    #  381   0x81759  2      
  jne .L_82520                        #  382   0x8175b  6      
  subl $0x10, %r12d                   #  383   0x81761  4      
  leal 0x150(%rsp), %eax              #  384   0x81765  7      
  cmpl $0x10, %r12d                   #  385   0x8176c  4      
  jg .L_81900                         #  386   0x81770  6      
  nop                                 #  387   0x81776  1      
.L_81980:                             #        0x81777  0      
  movq %rax, %rbx                     #  388   0x81777  3      
  nop                                 #  389   0x8177a  1      
  nop                                 #  390   0x8177b  1      
.L_819a0:                             #        0x8177c  0      
  movl %ebx, %ebx                     #  391   0x8177c  2      
  movl %r12d, 0x4(%r15,%rbx,1)        #  392   0x8177e  5      
  movl 0x194(%rsp), %eax              #  393   0x81783  7      
  addl 0x198(%rsp), %r12d             #  394   0x8178a  8      
  movl %ebx, %ebx                     #  395   0x81792  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  396   0x81794  8      
  addl $0x1, %eax                     #  397   0x8179c  3      
  cmpl $0x7, %eax                     #  398   0x8179f  3      
  movl %eax, 0x194(%rsp)              #  399   0x817a2  7      
  movl %r12d, 0x198(%rsp)             #  400   0x817a9  8      
  jle .L_81a40                        #  401   0x817b1  6      
  movl 0x78(%rsp), %esi               #  402   0x817b7  4      
  nop                                 #  403   0x817bb  1      
  leal 0x190(%rsp), %edx              #  404   0x817bc  7      
  movl %r14d, %edi                    #  405   0x817c3  3      
  xchgw %ax, %ax                      #  406   0x817c6  3      
  nop                                 #  407   0x817c9  1      
  callq .__ssprint_r                  #  408   0x817ca  5      
  testl %eax, %eax                    #  409   0x817cf  2      
  jne .L_82520                        #  410   0x817d1  6      
  nop                                 #  411   0x817d7  1      
  nop                                 #  412   0x817d8  1      
.L_81a20:                             #        0x817d9  0      
  movl 0x198(%rsp), %r12d             #  413   0x817d9  8      
  nop                                 #  414   0x817e1  1      
  nop                                 #  415   0x817e2  1      
.L_81a40:                             #        0x817e3  0      
  movl 0x8c(%rsp), %edx               #  416   0x817e3  7      
  cmpl %edx, 0x68(%rsp)               #  417   0x817ea  4      
  movl %edx, %eax                     #  418   0x817ee  2      
  cmovgel 0x68(%rsp), %eax            #  419   0x817f0  5      
  addl %eax, 0x74(%rsp)               #  420   0x817f5  4      
  testl %r12d, %r12d                  #  421   0x817f9  3      
  jne .L_82720                        #  422   0x817fc  6      
  nop                                 #  423   0x81802  1      
.L_81a60:                             #        0x81803  0      
  cmpq $0x0, 0x90(%rsp)               #  424   0x81803  9      
  movl $0x0, 0x194(%rsp)              #  425   0x8180c  11     
  leal 0x150(%rsp), %ebx              #  426   0x81817  7      
  nop                                 #  427   0x8181e  1      
  je .L_81260                         #  428   0x8181f  6      
  movl 0x90(%rsp), %esi               #  429   0x81825  7      
  movl %r14d, %edi                    #  430   0x8182c  3      
  leal 0x150(%rsp), %ebx              #  431   0x8182f  7      
  nop                                 #  432   0x81836  1      
  callq ._free_r                      #  433   0x81837  5      
  jmpq .L_81260                       #  434   0x8183c  5      
  nop                                 #  435   0x81841  1      
  nop                                 #  436   0x81842  1      
.L_81ac0:                             #        0x81843  0      
  movl %edx, %edx                     #  437   0x81843  2      
  movl %edx, %edx                     #  438   0x81845  2      
  movq 0x10024940(%r15,%rdx,8), %rdx  #  439   0x81847  8      
  andl $0xffffffe0, %edx              #  440   0x8184f  6      
  addq %r15, %rdx                     #  441   0x81855  3      
  jmpq %rdx                           #  442   0x81858  2      
  nop                                 #  443   0x8185a  1      
  cmpb $0x0, 0x1df(%rsp)              #  444   0x8185b  8      
  je .L_82a20                         #  445   0x81863  6      
  nop                                 #  446   0x81869  1      
  nop                                 #  447   0x8186a  1      
.L_81b00:                             #        0x8186b  0      
  movl %r13d, %r13d                   #  448   0x8186b  3      
  movzbl (%r15,%r13,1), %eax          #  449   0x8186e  5      
  jmpq .L_81420                       #  450   0x81873  5      
  nop                                 #  451   0x81878  1      
  nop                                 #  452   0x81879  1      
  orl $0x20, %r12d                    #  453   0x8187a  4      
  movl %r13d, %r13d                   #  454   0x8187e  3      
  movzbl (%r15,%r13,1), %eax          #  455   0x81881  5      
  jmpq .L_81420                       #  456   0x81886  5      
  nop                                 #  457   0x8188b  1      
  movq 0x80(%rsp), %rsi               #  458   0x8188c  8      
  movl %esi, %esi                     #  459   0x81894  2      
  movl (%r15,%rsi,1), %eax            #  460   0x81896  4      
  cmpl $0x2f, %eax                    #  461   0x8189a  3      
  ja .L_82b20                         #  462   0x8189d  6      
  movl %esi, %esi                     #  463   0x818a3  2      
  movl 0xc(%r15,%rsi,1), %edx         #  464   0x818a5  5      
  addl %eax, %edx                     #  465   0x818aa  2      
  addl $0x8, %eax                     #  466   0x818ac  3      
  movl %esi, %esi                     #  467   0x818af  2      
  movl %eax, (%r15,%rsi,1)            #  468   0x818b1  4      
  nop                                 #  469   0x818b5  1      
  nop                                 #  470   0x818b6  1      
.L_81b80:                             #        0x818b7  0      
  movl %edx, %edx                     #  471   0x818b7  2      
  movl (%r15,%rdx,1), %edx            #  472   0x818b9  4      
  testl %edx, %edx                    #  473   0x818bd  2      
  movl %edx, 0x8c(%rsp)               #  474   0x818bf  7      
  jns .L_81b00                        #  475   0x818c6  6      
  negl 0x8c(%rsp)                     #  476   0x818cc  7      
  nop                                 #  477   0x818d3  1      
  orl $0x4, %r12d                     #  478   0x818d4  4      
  movl %r13d, %r13d                   #  479   0x818d8  3      
  movzbl (%r15,%r13,1), %eax          #  480   0x818db  5      
  jmpq .L_81420                       #  481   0x818e0  5      
  nop                                 #  482   0x818e5  1      
  testb $0x20, %r12b                  #  483   0x818e6  4      
  movq %r13, 0x60(%rsp)               #  484   0x818ea  5      
  movq $0x10023be0, 0xc0(%rsp)        #  485   0x818ef  12     
  je .L_820e0                         #  486   0x818fb  6      
  nop                                 #  487   0x81901  1      
.L_81be0:                             #        0x81902  0      
  movq 0x80(%rsp), %rcx               #  488   0x81902  8      
  movl %ecx, %ecx                     #  489   0x8190a  2      
  movl (%r15,%rcx,1), %edx            #  490   0x8190c  4      
  cmpl $0x2f, %edx                    #  491   0x81910  3      
  jbe .L_82c80                        #  492   0x81913  6      
  movq 0x80(%rsp), %rdx               #  493   0x81919  8      
  nop                                 #  494   0x81921  1      
  movq 0x80(%rsp), %rsi               #  495   0x81922  8      
  movl %edx, %edx                     #  496   0x8192a  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  497   0x8192c  5      
  leal 0x8(%rcx), %edx                #  498   0x81931  3      
  movl %esi, %esi                     #  499   0x81934  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  500   0x81936  5      
  nop                                 #  501   0x8193b  1      
.L_81c20:                             #        0x8193c  0      
  movl %ecx, %ecx                     #  502   0x8193c  2      
  movq (%r15,%rcx,1), %r13            #  503   0x8193e  4      
  jmpq .L_82140                       #  504   0x81942  5      
  nop                                 #  505   0x81947  1      
  nop                                 #  506   0x81948  1      
  movq %r13, 0x60(%rsp)               #  507   0x81949  5      
  orl $0x10, %r12d                    #  508   0x8194e  4      
  nop                                 #  509   0x81952  1      
  nop                                 #  510   0x81953  1      
.L_81c60:                             #        0x81954  0      
  testb $0x20, %r12b                  #  511   0x81954  4      
  je .L_828e0                         #  512   0x81958  6      
  movq 0x80(%rsp), %rdx               #  513   0x8195e  8      
  movl %edx, %edx                     #  514   0x81966  2      
  movl (%r15,%rdx,1), %eax            #  515   0x81968  4      
  cmpl $0x2f, %eax                    #  516   0x8196c  3      
  nop                                 #  517   0x8196f  1      
  ja .L_82c60                         #  518   0x81970  6      
  movq %rdx, %rcx                     #  519   0x81976  3      
  movl %edx, %edx                     #  520   0x81979  2      
  movl 0xc(%r15,%rdx,1), %edx         #  521   0x8197b  5      
  addl %eax, %edx                     #  522   0x81980  2      
  addl $0x8, %eax                     #  523   0x81982  3      
  movl %ecx, %ecx                     #  524   0x81985  2      
  movl %eax, (%r15,%rcx,1)            #  525   0x81987  4      
  nop                                 #  526   0x8198b  1      
.L_81ca0:                             #        0x8198c  0      
  movl %edx, %edx                     #  527   0x8198c  2      
  movq (%r15,%rdx,1), %r13            #  528   0x8198e  4      
  movl $0x1, %eax                     #  529   0x81992  5      
  testq %r13, %r13                    #  530   0x81997  3      
  setne %dl                           #  531   0x8199a  3      
  jmpq .L_82220                       #  532   0x8199d  5      
  nop                                 #  533   0x819a2  1      
  cmpl $0x43, %eax                    #  534   0x819a3  3      
  movq %r13, 0x60(%rsp)               #  535   0x819a6  5      
  je .L_82e20                         #  536   0x819ab  6      
  testb $0x10, %r12b                  #  537   0x819b1  4      
  jne .L_82e20                        #  538   0x819b5  6      
  movq 0x80(%rsp), %rdx               #  539   0x819bb  8      
  movl %edx, %edx                     #  540   0x819c3  2      
  movl (%r15,%rdx,1), %eax            #  541   0x819c5  4      
  cmpl $0x2f, %eax                    #  542   0x819c9  3      
  ja .L_83800                         #  543   0x819cc  6      
  movq %rdx, %rcx                     #  544   0x819d2  3      
  movl %edx, %edx                     #  545   0x819d5  2      
  movl 0xc(%r15,%rdx,1), %edx         #  546   0x819d7  5      
  addl %eax, %edx                     #  547   0x819dc  2      
  addl $0x8, %eax                     #  548   0x819de  3      
  xchgw %ax, %ax                      #  549   0x819e1  3      
  movl %ecx, %ecx                     #  550   0x819e4  2      
  movl %eax, (%r15,%rcx,1)            #  551   0x819e6  4      
  nop                                 #  552   0x819ea  1      
  nop                                 #  553   0x819eb  1      
.L_81d20:                             #        0x819ec  0      
  movl %edx, %edx                     #  554   0x819ec  2      
  movl (%r15,%rdx,1), %eax            #  555   0x819ee  4      
  movl $0x1, 0x70(%rsp)               #  556   0x819f2  8      
  movb %al, 0xe0(%rsp)                #  557   0x819fa  7      
  nop                                 #  558   0x81a01  1      
.L_81d40:                             #        0x81a02  0      
  movl 0x70(%rsp), %r8d               #  559   0x81a02  5      
  movl $0x0, %eax                     #  560   0x81a07  5      
  leal 0xe0(%rsp), %edx               #  561   0x81a0c  7      
  movb $0x0, 0x1df(%rsp)              #  562   0x81a13  8      
  nop                                 #  563   0x81a1b  1      
  movq %rdx, 0x98(%rsp)               #  564   0x81a1c  8      
  testl %r8d, %r8d                    #  565   0x81a24  3      
  cmovnsl 0x70(%rsp), %eax            #  566   0x81a27  5      
  movl %eax, 0x68(%rsp)               #  567   0x81a2c  4      
  jmpq .L_814a0                       #  568   0x81a30  5      
  nop                                 #  569   0x81a35  1      
  movq %r13, 0x60(%rsp)               #  570   0x81a36  5      
  orl $0x10, %r12d                    #  571   0x81a3b  4      
  nop                                 #  572   0x81a3f  1      
  nop                                 #  573   0x81a40  1      
.L_81da0:                             #        0x81a41  0      
  testb $0x20, %r12b                  #  574   0x81a41  4      
  je .L_82860                         #  575   0x81a45  6      
  movq 0x80(%rsp), %rcx               #  576   0x81a4b  8      
  movl %ecx, %ecx                     #  577   0x81a53  2      
  movl (%r15,%rcx,1), %eax            #  578   0x81a55  4      
  cmpl $0x2f, %eax                    #  579   0x81a59  3      
  nop                                 #  580   0x81a5c  1      
  ja .L_82dc0                         #  581   0x81a5d  6      
  movl %ecx, %ecx                     #  582   0x81a63  2      
  movl 0xc(%r15,%rcx,1), %edx         #  583   0x81a65  5      
  addl %eax, %edx                     #  584   0x81a6a  2      
  addl $0x8, %eax                     #  585   0x81a6c  3      
  movl %ecx, %ecx                     #  586   0x81a6f  2      
  movl %eax, (%r15,%rcx,1)            #  587   0x81a71  4      
  nop                                 #  588   0x81a75  1      
.L_81de0:                             #        0x81a76  0      
  movl %edx, %edx                     #  589   0x81a76  2      
  movq (%r15,%rdx,1), %r13            #  590   0x81a78  4      
  jmpq .L_828c0                       #  591   0x81a7c  5      
  nop                                 #  592   0x81a81  1      
  nop                                 #  593   0x81a82  1      
  movq %r13, 0x60(%rsp)               #  594   0x81a83  5      
  orl $0x10, %r12d                    #  595   0x81a88  4      
  nop                                 #  596   0x81a8c  1      
  nop                                 #  597   0x81a8d  1      
.L_81e20:                             #        0x81a8e  0      
  testb $0x20, %r12b                  #  598   0x81a8e  4      
  je .L_82940                         #  599   0x81a92  6      
  movq 0x80(%rsp), %rcx               #  600   0x81a98  8      
  movl %ecx, %ecx                     #  601   0x81aa0  2      
  movl (%r15,%rcx,1), %eax            #  602   0x81aa2  4      
  cmpl $0x2f, %eax                    #  603   0x81aa6  3      
  nop                                 #  604   0x81aa9  1      
  ja .L_82c40                         #  605   0x81aaa  6      
  movl %ecx, %ecx                     #  606   0x81ab0  2      
  movl 0xc(%r15,%rcx,1), %edx         #  607   0x81ab2  5      
  addl %eax, %edx                     #  608   0x81ab7  2      
  addl $0x8, %eax                     #  609   0x81ab9  3      
  movl %ecx, %ecx                     #  610   0x81abc  2      
  movl %eax, (%r15,%rcx,1)            #  611   0x81abe  4      
  nop                                 #  612   0x81ac2  1      
.L_81e60:                             #        0x81ac3  0      
  movl %edx, %edx                     #  613   0x81ac3  2      
  movq (%r15,%rdx,1), %r13            #  614   0x81ac5  4      
  nop                                 #  615   0x81ac9  1      
  nop                                 #  616   0x81aca  1      
.L_81e80:                             #        0x81acb  0      
  cmpq $0x0, %r13                     #  617   0x81acb  4      
  jl .L_829a0                         #  618   0x81acf  6      
  nop                                 #  619   0x81ad5  1      
  nop                                 #  620   0x81ad6  1      
.L_81ea0:                             #        0x81ad7  0      
  setne %dl                           #  621   0x81ad7  3      
  movl $0x1, %eax                     #  622   0x81ada  5      
  jmpq .L_82240                       #  623   0x81adf  5      
  nop                                 #  624   0x81ae4  1      
  nop                                 #  625   0x81ae5  1      
  movq 0x80(%rsp), %rcx               #  626   0x81ae6  8      
  movq %r13, 0x60(%rsp)               #  627   0x81aee  5      
  movl %ecx, %ecx                     #  628   0x81af3  2      
  movl (%r15,%rcx,1), %edx            #  629   0x81af5  4      
  cmpl $0x2f, %edx                    #  630   0x81af9  3      
  ja .L_82d80                         #  631   0x81afc  6      
  movq %rcx, %rsi                     #  632   0x81b02  3      
  nop                                 #  633   0x81b05  1      
  movl %ecx, %ecx                     #  634   0x81b06  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  635   0x81b08  5      
  addl %edx, %ecx                     #  636   0x81b0d  2      
  addl $0x8, %edx                     #  637   0x81b0f  3      
  movl %esi, %esi                     #  638   0x81b12  2      
  movl %edx, (%r15,%rsi,1)            #  639   0x81b14  4      
  nop                                 #  640   0x81b18  1      
.L_81f00:                             #        0x81b19  0      
  movl %ecx, %ecx                     #  641   0x81b19  2      
  movl (%r15,%rcx,1), %ecx            #  642   0x81b1b  4      
  movb $0x0, 0x1df(%rsp)              #  643   0x81b1f  8      
  testq %rcx, %rcx                    #  644   0x81b27  3      
  movq %rcx, 0x98(%rsp)               #  645   0x81b2a  8      
  je .L_83bc0                         #  646   0x81b32  6      
  nop                                 #  647   0x81b38  1      
  cmpl $0x53, %eax                    #  648   0x81b39  3      
  je .L_832e0                         #  649   0x81b3c  6      
  movl %r12d, %r13d                   #  650   0x81b42  3      
  andl $0x10, %r13d                   #  651   0x81b45  4      
  jne .L_832e0                        #  652   0x81b49  6      
  testl %r8d, %r8d                    #  653   0x81b4f  3      
  js .L_83c20                         #  654   0x81b52  6      
  nop                                 #  655   0x81b58  1      
  movl 0x98(%rsp), %edi               #  656   0x81b59  7      
  movl %r8d, %edx                     #  657   0x81b60  3      
  xorl %esi, %esi                     #  658   0x81b63  2      
  movl %r8d, 0x40(%rsp)               #  659   0x81b65  5      
  nop                                 #  660   0x81b6a  1      
  callq .memchr                       #  661   0x81b6b  5      
  movl %eax, %eax                     #  662   0x81b70  2      
  movl 0x40(%rsp), %r8d               #  663   0x81b72  5      
  testq %rax, %rax                    #  664   0x81b77  3      
  je .L_83ec0                         #  665   0x81b7a  6      
  subl 0x98(%rsp), %eax               #  666   0x81b80  7      
  cmpl %eax, %r8d                     #  667   0x81b87  3      
  movl %eax, 0x70(%rsp)               #  668   0x81b8a  4      
  xchgw %ax, %ax                      #  669   0x81b8e  3      
  jge .L_83b60                        #  670   0x81b91  6      
  testl %r8d, %r8d                    #  671   0x81b97  3      
  movl %r8d, 0x70(%rsp)               #  672   0x81b9a  5      
  movq $0x0, 0x90(%rsp)               #  673   0x81b9f  12     
  cmovnsl %r8d, %r13d                 #  674   0x81bab  4      
  xchgw %ax, %ax                      #  675   0x81baf  3      
  movl $0x0, 0xac(%rsp)               #  676   0x81bb2  11     
  movl %r13d, 0x68(%rsp)              #  677   0x81bbd  5      
  jmpq .L_82320                       #  678   0x81bc2  5      
  nop                                 #  679   0x81bc7  1      
  orb $0x80, %r12b                    #  680   0x81bc8  4      
  movl %r13d, %r13d                   #  681   0x81bcc  3      
  movzbl (%r15,%r13,1), %eax          #  682   0x81bcf  5      
  jmpq .L_81420                       #  683   0x81bd4  5      
  nop                                 #  684   0x81bd9  1      
  movl %r13d, %r13d                   #  685   0x81bda  3      
  movsbl (%r15,%r13,1), %eax          #  686   0x81bdd  5      
  addl $0x1, %r13d                    #  687   0x81be2  4      
  cmpl $0x2a, %eax                    #  688   0x81be6  3      
  je .L_83f20                         #  689   0x81be9  6      
  leal -0x30(%rax), %ecx              #  690   0x81bef  3      
  xorl %edx, %edx                     #  691   0x81bf2  2      
  xorl %r8d, %r8d                     #  692   0x81bf4  3      
  cmpl $0x9, %ecx                     #  693   0x81bf7  3      
  ja .L_81440                         #  694   0x81bfa  6      
  nop                                 #  695   0x81c00  1      
  nop                                 #  696   0x81c01  1      
.L_82020:                             #        0x81c02  0      
  movl %r13d, %r13d                   #  697   0x81c02  3      
  movsbl (%r15,%r13,1), %eax          #  698   0x81c05  5      
  leal (%rdx,%rdx,4), %edx            #  699   0x81c0a  3      
  addl $0x1, %r13d                    #  700   0x81c0d  4      
  leal (%rcx,%rdx,2), %edx            #  701   0x81c11  3      
  leal -0x30(%rax), %ecx              #  702   0x81c14  3      
  cmpl $0x9, %ecx                     #  703   0x81c17  3      
  jbe .L_82020                        #  704   0x81c1a  6      
  testl %edx, %edx                    #  705   0x81c20  2      
  nop                                 #  706   0x81c22  1      
  movl $0xffffffff, %r8d              #  707   0x81c23  6      
  cmovnsl %edx, %r8d                  #  708   0x81c29  4      
  jmpq .L_81440                       #  709   0x81c2d  5      
  xchgw %ax, %ax                      #  710   0x81c32  3      
  nop                                 #  711   0x81c35  1      
  xorl %edx, %edx                     #  712   0x81c36  2      
  nop                                 #  713   0x81c38  1      
  nop                                 #  714   0x81c39  1      
.L_82080:                             #        0x81c3a  0      
  leal (%rdx,%rdx,4), %edx            #  715   0x81c3a  3      
  leal -0x30(%rax,%rdx,2), %edx       #  716   0x81c3d  4      
  movl %r13d, %r13d                   #  717   0x81c41  3      
  movsbl (%r15,%r13,1), %eax          #  718   0x81c44  5      
  addl $0x1, %r13d                    #  719   0x81c49  4      
  leal -0x30(%rax), %ecx              #  720   0x81c4d  3      
  cmpl $0x9, %ecx                     #  721   0x81c50  3      
  jbe .L_82080                        #  722   0x81c53  6      
  nop                                 #  723   0x81c59  1      
  movl %edx, 0x8c(%rsp)               #  724   0x81c5a  7      
  jmpq .L_81440                       #  725   0x81c61  5      
  nop                                 #  726   0x81c66  1      
  nop                                 #  727   0x81c67  1      
  testb $0x20, %r12b                  #  728   0x81c68  4      
  movq %r13, 0x60(%rsp)               #  729   0x81c6c  5      
  movq $0x10023c01, 0xc0(%rsp)        #  730   0x81c71  12     
  jne .L_81be0                        #  731   0x81c7d  6      
  nop                                 #  732   0x81c83  1      
.L_820e0:                             #        0x81c84  0      
  testb $0x10, %r12b                  #  733   0x81c84  4      
  je .L_82ca0                         #  734   0x81c88  6      
  movq 0x80(%rsp), %rcx               #  735   0x81c8e  8      
  movl %ecx, %ecx                     #  736   0x81c96  2      
  movl (%r15,%rcx,1), %edx            #  737   0x81c98  4      
  cmpl $0x2f, %edx                    #  738   0x81c9c  3      
  nop                                 #  739   0x81c9f  1      
  ja .L_83620                         #  740   0x81ca0  6      
  movq %rcx, %rsi                     #  741   0x81ca6  3      
  movl %ecx, %ecx                     #  742   0x81ca9  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  743   0x81cab  5      
  addl %edx, %ecx                     #  744   0x81cb0  2      
  addl $0x8, %edx                     #  745   0x81cb2  3      
  movl %esi, %esi                     #  746   0x81cb5  2      
  movl %edx, (%r15,%rsi,1)            #  747   0x81cb7  4      
  nop                                 #  748   0x81cbb  1      
.L_82120:                             #        0x81cbc  0      
  movl %ecx, %ecx                     #  749   0x81cbc  2      
  movl (%r15,%rcx,1), %r13d           #  750   0x81cbe  4      
  nop                                 #  751   0x81cc2  1      
  nop                                 #  752   0x81cc3  1      
.L_82140:                             #        0x81cc4  0      
  testq %r13, %r13                    #  753   0x81cc4  3      
  setne %dl                           #  754   0x81cc7  3      
  je .L_82180                         #  755   0x81cca  6      
  testb $0x1, %r12b                   #  756   0x81cd0  4      
  je .L_82180                         #  757   0x81cd4  6      
  movb $0x30, 0x1d0(%rsp)             #  758   0x81cda  8      
  movb %al, 0x1d1(%rsp)               #  759   0x81ce2  7      
  nop                                 #  760   0x81ce9  1      
  orl $0x2, %r12d                     #  761   0x81cea  4      
  nop                                 #  762   0x81cee  1      
  nop                                 #  763   0x81cef  1      
.L_82180:                             #        0x81cf0  0      
  andl $0xfffffbff, %r12d             #  764   0x81cf0  7      
  movl $0x2, %eax                     #  765   0x81cf7  5      
  jmpq .L_82220                       #  766   0x81cfc  5      
  nop                                 #  767   0x81d01  1      
  movq 0x80(%rsp), %rdx               #  768   0x81d02  8      
  movq %r13, 0x60(%rsp)               #  769   0x81d0a  5      
  movl %edx, %edx                     #  770   0x81d0f  2      
  movl (%r15,%rdx,1), %eax            #  771   0x81d11  4      
  cmpl $0x2f, %eax                    #  772   0x81d15  3      
  ja .L_82bc0                         #  773   0x81d18  6      
  movq %rdx, %rcx                     #  774   0x81d1e  3      
  nop                                 #  775   0x81d21  1      
  movl %edx, %edx                     #  776   0x81d22  2      
  movl 0xc(%r15,%rdx,1), %edx         #  777   0x81d24  5      
  addl %eax, %edx                     #  778   0x81d29  2      
  addl $0x8, %eax                     #  779   0x81d2b  3      
  movl %ecx, %ecx                     #  780   0x81d2e  2      
  movl %eax, (%r15,%rcx,1)            #  781   0x81d30  4      
  nop                                 #  782   0x81d34  1      
.L_821e0:                             #        0x81d35  0      
  movl %edx, %edx                     #  783   0x81d35  2      
  movl (%r15,%rdx,1), %r13d           #  784   0x81d37  4      
  orl $0x2, %r12d                     #  785   0x81d3b  4      
  movb $0x30, 0x1d0(%rsp)             #  786   0x81d3f  8      
  movb $0x78, 0x1d1(%rsp)             #  787   0x81d47  8      
  nop                                 #  788   0x81d4f  1      
  movq $0x10023c01, 0xc0(%rsp)        #  789   0x81d50  12     
  movl $0x2, %eax                     #  790   0x81d5c  5      
  testq %r13, %r13                    #  791   0x81d61  3      
  setne %dl                           #  792   0x81d64  3      
  nop                                 #  793   0x81d67  1      
.L_82220:                             #        0x81d68  0      
  movb $0x0, 0x1df(%rsp)              #  794   0x81d68  8      
  nop                                 #  795   0x81d70  1      
  nop                                 #  796   0x81d71  1      
.L_82240:                             #        0x81d72  0      
  movl %r12d, %ecx                    #  797   0x81d72  3      
  andb $0x7f, %cl                     #  798   0x81d75  3      
  testl %r8d, %r8d                    #  799   0x81d78  3      
  cmovnsl %ecx, %r12d                 #  800   0x81d7b  4      
  testl %r8d, %r8d                    #  801   0x81d7f  3      
  jne .L_82260                        #  802   0x81d82  6      
  testb %dl, %dl                      #  803   0x81d88  2      
  je .L_82f20                         #  804   0x81d8a  6      
  nop                                 #  805   0x81d90  1      
.L_82260:                             #        0x81d91  0      
  cmpl $0x1, %eax                     #  806   0x81d91  3      
  je .L_83020                         #  807   0x81d94  6      
  cmpl $0x2, %eax                     #  808   0x81d9a  3      
  je .L_82fa0                         #  809   0x81d9d  6      
  movq 0xb8(%rsp), %rax               #  810   0x81da3  8      
  movq %rax, %rdx                     #  811   0x81dab  3      
  nop                                 #  812   0x81dae  1      
.L_82280:                             #        0x81daf  0      
  movl %r13d, %eax                    #  813   0x81daf  3      
  shrq $0x3, %r13                     #  814   0x81db2  4      
  subl $0x1, %edx                     #  815   0x81db6  3      
  andl $0x7, %eax                     #  816   0x81db9  3      
  addl $0x30, %eax                    #  817   0x81dbc  3      
  testq %r13, %r13                    #  818   0x81dbf  3      
  movl %edx, %edx                     #  819   0x81dc2  2      
  movb %al, (%r15,%rdx,1)             #  820   0x81dc4  4      
  jne .L_82280                        #  821   0x81dc8  6      
  testb $0x1, %r12b                   #  822   0x81dce  4      
  nop                                 #  823   0x81dd2  1      
  movq %rdx, 0x98(%rsp)               #  824   0x81dd3  8      
  jne .L_83060                        #  825   0x81ddb  6      
  movl 0xb8(%rsp), %ecx               #  826   0x81de1  7      
  subl %edx, %ecx                     #  827   0x81de8  2      
  movl %ecx, 0x70(%rsp)               #  828   0x81dea  4      
  nop                                 #  829   0x81dee  1      
  movq 0xb0(%rsp), %rcx               #  830   0x81def  8      
  nop                                 #  831   0x81df7  1      
  nop                                 #  832   0x81df8  1      
.L_822e0:                             #        0x81df9  0      
  cmpl %r8d, 0x70(%rsp)               #  833   0x81df9  5      
  movl 0x70(%rsp), %eax               #  834   0x81dfe  4      
  movl %r8d, 0xac(%rsp)               #  835   0x81e02  8      
  movq %rcx, 0xb0(%rsp)               #  836   0x81e0a  8      
  nop                                 #  837   0x81e12  1      
  movq $0x0, 0x90(%rsp)               #  838   0x81e13  12     
  cmovll %r8d, %eax                   #  839   0x81e1f  4      
  movl %eax, 0x68(%rsp)               #  840   0x81e23  4      
  nop                                 #  841   0x81e27  1      
.L_82320:                             #        0x81e28  0      
  cmpb $0x1, 0x1df(%rsp)              #  842   0x81e28  8      
  sbbl $0xffffffff, 0x68(%rsp)        #  843   0x81e30  8      
  jmpq .L_814c0                       #  844   0x81e38  5      
  nop                                 #  845   0x81e3d  1      
  testb $0x20, %r12b                  #  846   0x81e3e  4      
  movq %r13, 0x60(%rsp)               #  847   0x81e42  5      
  je .L_82a40                         #  848   0x81e47  6      
  movq 0x80(%rsp), %rdx               #  849   0x81e4d  8      
  movl %edx, %edx                     #  850   0x81e55  2      
  movl (%r15,%rdx,1), %eax            #  851   0x81e57  4      
  cmpl $0x2f, %eax                    #  852   0x81e5b  3      
  ja .L_837a0                         #  853   0x81e5e  6      
  movq %rdx, %rcx                     #  854   0x81e64  3      
  movl %edx, %edx                     #  855   0x81e67  2      
  movl 0xc(%r15,%rdx,1), %edx         #  856   0x81e69  5      
  addl %eax, %edx                     #  857   0x81e6e  2      
  addl $0x8, %eax                     #  858   0x81e70  3      
  movl %ecx, %ecx                     #  859   0x81e73  2      
  movl %eax, (%r15,%rcx,1)            #  860   0x81e75  4      
  nop                                 #  861   0x81e79  1      
.L_82380:                             #        0x81e7a  0      
  movl %edx, %edx                     #  862   0x81e7a  2      
  movl (%r15,%rdx,1), %eax            #  863   0x81e7c  4      
  movslq 0x74(%rsp), %rdx             #  864   0x81e80  5      
  movl %eax, %eax                     #  865   0x81e85  2      
  movq %rdx, (%r15,%rax,1)            #  866   0x81e87  4      
  jmpq .L_81260                       #  867   0x81e8b  5      
  nop                                 #  868   0x81e90  1      
  movl %r13d, %r13d                   #  869   0x81e91  3      
  movzbl (%r15,%r13,1), %eax          #  870   0x81e94  5      
  cmpb $0x6c, %al                     #  871   0x81e99  2      
  je .L_82de0                         #  872   0x81e9b  6      
  orl $0x10, %r12d                    #  873   0x81ea1  4      
  jmpq .L_81420                       #  874   0x81ea5  5      
  nop                                 #  875   0x81eaa  1      
  movl %r13d, %r13d                   #  876   0x81eab  3      
  movzbl (%r15,%r13,1), %eax          #  877   0x81eae  5      
  cmpb $0x68, %al                     #  878   0x81eb3  2      
  je .L_82e00                         #  879   0x81eb5  6      
  orl $0x40, %r12d                    #  880   0x81ebb  4      
  jmpq .L_81420                       #  881   0x81ebf  5      
  nop                                 #  882   0x81ec4  1      
  orl $0x1, %r12d                     #  883   0x81ec5  4      
  movl %r13d, %r13d                   #  884   0x81ec9  3      
  movzbl (%r15,%r13,1), %eax          #  885   0x81ecc  5      
  jmpq .L_81420                       #  886   0x81ed1  5      
  nop                                 #  887   0x81ed6  1      
  movl %r14d, %edi                    #  888   0x81ed7  3      
  movl %r8d, 0x40(%rsp)               #  889   0x81eda  5      
  nop                                 #  890   0x81edf  1      
  nop                                 #  891   0x81ee0  1      
  callq ._localeconv_r                #  892   0x81ee1  5      
  movl %eax, %eax                     #  893   0x81ee6  2      
  movl %eax, %eax                     #  894   0x81ee8  2      
  movl 0x4(%r15,%rax,1), %eax         #  895   0x81eea  5      
  movl %eax, %edi                     #  896   0x81eef  2      
  movq %rax, 0xd8(%rsp)               #  897   0x81ef1  8      
  nop                                 #  898   0x81ef9  1      
  callq .strlen                       #  899   0x81efa  5      
  movl %r14d, %edi                    #  900   0x81eff  3      
  movl %eax, 0xd4(%rsp)               #  901   0x81f02  7      
  xchgw %ax, %ax                      #  902   0x81f09  3      
  nop                                 #  903   0x81f0c  1      
  callq ._localeconv_r                #  904   0x81f0d  5      
  movl %eax, %eax                     #  905   0x81f12  2      
  movl 0xd4(%rsp), %r9d               #  906   0x81f14  8      
  movl 0x40(%rsp), %r8d               #  907   0x81f1c  5      
  movl %eax, %eax                     #  908   0x81f21  2      
  movl 0x8(%r15,%rax,1), %eax         #  909   0x81f23  5      
  testl %r9d, %r9d                    #  910   0x81f28  3      
  nop                                 #  911   0x81f2b  1      
  movq %rax, 0xb0(%rsp)               #  912   0x81f2c  8      
  je .L_81b00                         #  913   0x81f34  6      
  testq %rax, %rax                    #  914   0x81f3a  3      
  je .L_81b00                         #  915   0x81f3d  6      
  movq 0xb0(%rsp), %rcx               #  916   0x81f43  8      
  nop                                 #  917   0x81f4b  1      
  movl %ecx, %ecx                     #  918   0x81f4c  2      
  cmpb $0x0, (%r15,%rcx,1)            #  919   0x81f4e  5      
  je .L_81b00                         #  920   0x81f53  6      
  orl $0x400, %r12d                   #  921   0x81f59  7      
  movl %r13d, %r13d                   #  922   0x81f60  3      
  movzbl (%r15,%r13,1), %eax          #  923   0x81f63  5      
  nop                                 #  924   0x81f68  1      
  jmpq .L_81420                       #  925   0x81f69  5      
  nop                                 #  926   0x81f6e  1      
  nop                                 #  927   0x81f6f  1      
  movb $0x2b, 0x1df(%rsp)             #  928   0x81f70  8      
  movl %r13d, %r13d                   #  929   0x81f78  3      
  movzbl (%r15,%r13,1), %eax          #  930   0x81f7b  5      
  jmpq .L_81420                       #  931   0x81f80  5      
  nop                                 #  932   0x81f85  1      
.L_82500:                             #        0x81f86  0      
  movq 0x78(%rsp), %rsi               #  933   0x81f86  5      
  movl %esi, %esi                     #  934   0x81f8b  2      
  orw $0x40, 0xc(%r15,%rsi,1)         #  935   0x81f8d  7      
  nop                                 #  936   0x81f94  1      
  nop                                 #  937   0x81f95  1      
.L_82520:                             #        0x81f96  0      
  cmpq $0x0, 0x90(%rsp)               #  938   0x81f96  9      
  je .L_82a00                         #  939   0x81f9f  6      
  movl 0x90(%rsp), %esi               #  940   0x81fa5  7      
  movl %r14d, %edi                    #  941   0x81fac  3      
  xchgw %ax, %ax                      #  942   0x81faf  3      
  callq ._free_r                      #  943   0x81fb2  5      
.L_82540:                             #        0x81fb7  0      
  movq 0x78(%rsp), %rcx               #  944   0x81fb7  5      
  movl %ecx, %ecx                     #  945   0x81fbc  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  946   0x81fbe  6      
  nop                                 #  947   0x81fc4  1      
  nop                                 #  948   0x81fc5  1      
.L_82560:                             #        0x81fc6  0      
  testb $0x40, %al                    #  949   0x81fc6  2      
  movl $0xffffffff, %eax              #  950   0x81fc8  5      
  cmovel 0x74(%rsp), %eax             #  951   0x81fcd  5      
  movl %eax, 0x74(%rsp)               #  952   0x81fd2  4      
  nop                                 #  953   0x81fd6  1      
  nop                                 #  954   0x81fd7  1      
.L_82580:                             #        0x81fd8  0      
  movl 0x74(%rsp), %eax               #  955   0x81fd8  4      
  addl $0x1e8, %esp                   #  956   0x81fdc  6      
  addq %r15, %rsp                     #  957   0x81fe2  3      
  popq %rbx                           #  958   0x81fe5  2      
  popq %r12                           #  959   0x81fe7  3      
  popq %r13                           #  960   0x81fea  3      
  popq %r14                           #  961   0x81fed  3      
  popq %r11                           #  962   0x81ff0  3      
  andl $0xffffffe0, %r11d             #  963   0x81ff3  7      
  addq %r15, %r11                     #  964   0x81ffa  3      
  jmpq %r11                           #  965   0x81ffd  3      
.L_825a0:                             #        0x82000  0      
  movl 0x8c(%rsp), %r13d              #  966   0x82000  8      
  subl 0x68(%rsp), %r13d              #  967   0x82008  5      
  testl %r13d, %r13d                  #  968   0x8200d  3      
  jle .L_81720                        #  969   0x82010  6      
  cmpl $0x10, %r13d                   #  970   0x82016  4      
  jle .L_826a0                        #  971   0x8201a  6      
  leal 0x190(%rsp), %edx              #  972   0x82020  7      
  movq %rbx, %rax                     #  973   0x82027  3      
  movq 0x78(%rsp), %rbx               #  974   0x8202a  5      
  movq %rdx, 0x8(%rsp)                #  975   0x8202f  5      
  jmpq .L_82600                       #  976   0x82034  5      
  nop                                 #  977   0x82039  1      
.L_825e0:                             #        0x8203a  0      
  subl $0x10, %r13d                   #  978   0x8203a  4      
  addl $0x8, %eax                     #  979   0x8203e  3      
  cmpl $0x10, %r13d                   #  980   0x82041  4      
  jle .L_82680                        #  981   0x82045  6      
  nop                                 #  982   0x8204b  1      
.L_82600:                             #        0x8204c  0      
  movl %eax, %eax                     #  983   0x8204c  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  984   0x8204e  9      
  movl 0x194(%rsp), %edx              #  985   0x82057  7      
  addl $0x10, 0x198(%rsp)             #  986   0x8205e  8      
  nop                                 #  987   0x82066  1      
  movl %eax, %eax                     #  988   0x82067  2      
  movl $0x10024c20, (%r15,%rax,1)     #  989   0x82069  8      
  addl $0x1, %edx                     #  990   0x82071  3      
  cmpl $0x7, %edx                     #  991   0x82074  3      
  movl %edx, 0x194(%rsp)              #  992   0x82077  7      
  jle .L_825e0                        #  993   0x8207e  6      
  movl 0x8(%rsp), %edx                #  994   0x82084  4      
  movl %ebx, %esi                     #  995   0x82088  2      
  nop                                 #  996   0x8208a  1      
  movl %r14d, %edi                    #  997   0x8208b  3      
  nop                                 #  998   0x8208e  1      
  nop                                 #  999   0x8208f  1      
  callq .__ssprint_r                  #  1000  0x82090  5      
  testl %eax, %eax                    #  1001  0x82095  2      
  jne .L_82520                        #  1002  0x82097  6      
  subl $0x10, %r13d                   #  1003  0x8209d  4      
  leal 0x150(%rsp), %eax              #  1004  0x820a1  7      
  cmpl $0x10, %r13d                   #  1005  0x820a8  4      
  jg .L_82600                         #  1006  0x820ac  6      
  nop                                 #  1007  0x820b2  1      
.L_82680:                             #        0x820b3  0      
  movq %rax, %rbx                     #  1008  0x820b3  3      
  nop                                 #  1009  0x820b6  1      
  nop                                 #  1010  0x820b7  1      
.L_826a0:                             #        0x820b8  0      
  movl %ebx, %ebx                     #  1011  0x820b8  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  1012  0x820ba  5      
  movl 0x194(%rsp), %eax              #  1013  0x820bf  7      
  addl %r13d, 0x198(%rsp)             #  1014  0x820c6  8      
  movl %ebx, %ebx                     #  1015  0x820ce  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  1016  0x820d0  8      
  addl $0x1, %eax                     #  1017  0x820d8  3      
  cmpl $0x7, %eax                     #  1018  0x820db  3      
  movl %eax, 0x194(%rsp)              #  1019  0x820de  7      
  jg .L_832a0                         #  1020  0x820e5  6      
  addl $0x8, %ebx                     #  1021  0x820eb  3      
  jmpq .L_81720                       #  1022  0x820ee  5      
  nop                                 #  1023  0x820f3  1      
.L_826e0:                             #        0x820f4  0      
  movl 0x78(%rsp), %esi               #  1024  0x820f4  4      
  leal 0x190(%rsp), %edx              #  1025  0x820f8  7      
  movl %r14d, %edi                    #  1026  0x820ff  3      
  nop                                 #  1027  0x82102  1      
  callq .__ssprint_r                  #  1028  0x82103  5      
  testl %eax, %eax                    #  1029  0x82108  2      
  jne .L_82520                        #  1030  0x8210a  6      
  leal 0x150(%rsp), %ebx              #  1031  0x82110  7      
  jmpq .L_818a0                       #  1032  0x82117  5      
  nop                                 #  1033  0x8211c  1      
.L_82720:                             #        0x8211d  0      
  movl 0x78(%rsp), %esi               #  1034  0x8211d  4      
  leal 0x190(%rsp), %edx              #  1035  0x82121  7      
  movl %r14d, %edi                    #  1036  0x82128  3      
  nop                                 #  1037  0x8212b  1      
  callq .__ssprint_r                  #  1038  0x8212c  5      
  testl %eax, %eax                    #  1039  0x82131  2      
  je .L_81a60                         #  1040  0x82133  6      
  jmpq .L_82520                       #  1041  0x82139  5      
  nop                                 #  1042  0x8213e  1      
  nop                                 #  1043  0x8213f  1      
.L_82760:                             #        0x82140  0      
  movl 0x78(%rsp), %esi               #  1044  0x82140  4      
  leal 0x190(%rsp), %edx              #  1045  0x82144  7      
  movl %r14d, %edi                    #  1046  0x8214b  3      
  movl %ecx, 0x58(%rsp)               #  1047  0x8214e  4      
  nop                                 #  1048  0x82152  1      
  callq .__ssprint_r                  #  1049  0x82153  5      
  testl %eax, %eax                    #  1050  0x82158  2      
  movl 0x58(%rsp), %ecx               #  1051  0x8215a  4      
  jne .L_82f00                        #  1052  0x8215e  6      
  leal 0x150(%rsp), %ebx              #  1053  0x82164  7      
  jmpq .L_813c0                       #  1054  0x8216b  5      
  nop                                 #  1055  0x82170  1      
.L_827a0:                             #        0x82171  0      
  movl 0x78(%rsp), %esi               #  1056  0x82171  4      
  leal 0x190(%rsp), %edx              #  1057  0x82175  7      
  movl %r14d, %edi                    #  1058  0x8217c  3      
  nop                                 #  1059  0x8217f  1      
  callq .__ssprint_r                  #  1060  0x82180  5      
  testl %eax, %eax                    #  1061  0x82185  2      
  jne .L_82520                        #  1062  0x82187  6      
  leal 0x150(%rsp), %ebx              #  1063  0x8218d  7      
  jmpq .L_81860                       #  1064  0x82194  5      
  nop                                 #  1065  0x82199  1      
.L_827e0:                             #        0x8219a  0      
  movl 0x78(%rsp), %esi               #  1066  0x8219a  4      
  leal 0x190(%rsp), %edx              #  1067  0x8219e  7      
  movl %r14d, %edi                    #  1068  0x821a5  3      
  nop                                 #  1069  0x821a8  1      
  callq .__ssprint_r                  #  1070  0x821a9  5      
  testl %eax, %eax                    #  1071  0x821ae  2      
  jne .L_82520                        #  1072  0x821b0  6      
  leal 0x150(%rsp), %ebx              #  1073  0x821b6  7      
  jmpq .L_816a0                       #  1074  0x821bd  5      
  nop                                 #  1075  0x821c2  1      
.L_82820:                             #        0x821c3  0      
  movl 0x78(%rsp), %esi               #  1076  0x821c3  4      
  leal 0x190(%rsp), %edx              #  1077  0x821c7  7      
  movl %r14d, %edi                    #  1078  0x821ce  3      
  nop                                 #  1079  0x821d1  1      
  callq .__ssprint_r                  #  1080  0x821d2  5      
  testl %eax, %eax                    #  1081  0x821d7  2      
  jne .L_82520                        #  1082  0x821d9  6      
  leal 0x150(%rsp), %ebx              #  1083  0x821df  7      
  jmpq .L_81700                       #  1084  0x821e6  5      
  nop                                 #  1085  0x821eb  1      
.L_82860:                             #        0x821ec  0      
  testb $0x10, %r12b                  #  1086  0x821ec  4      
  je .L_82be0                         #  1087  0x821f0  6      
  movq 0x80(%rsp), %rdx               #  1088  0x821f6  8      
  movl %edx, %edx                     #  1089  0x821fe  2      
  movl (%r15,%rdx,1), %eax            #  1090  0x82200  4      
  cmpl $0x2f, %eax                    #  1091  0x82204  3      
  nop                                 #  1092  0x82207  1      
  ja .L_83500                         #  1093  0x82208  6      
  movq %rdx, %rcx                     #  1094  0x8220e  3      
  movl %edx, %edx                     #  1095  0x82211  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1096  0x82213  5      
  addl %eax, %edx                     #  1097  0x82218  2      
  addl $0x8, %eax                     #  1098  0x8221a  3      
  movl %ecx, %ecx                     #  1099  0x8221d  2      
  movl %eax, (%r15,%rcx,1)            #  1100  0x8221f  4      
  nop                                 #  1101  0x82223  1      
.L_828a0:                             #        0x82224  0      
  movl %edx, %edx                     #  1102  0x82224  2      
  movl (%r15,%rdx,1), %r13d           #  1103  0x82226  4      
  nop                                 #  1104  0x8222a  1      
  nop                                 #  1105  0x8222b  1      
.L_828c0:                             #        0x8222c  0      
  andl $0xfffffbff, %r12d             #  1106  0x8222c  7      
  testq %r13, %r13                    #  1107  0x82233  3      
  setne %dl                           #  1108  0x82236  3      
  xorl %eax, %eax                     #  1109  0x82239  2      
  jmpq .L_82220                       #  1110  0x8223b  5      
  nop                                 #  1111  0x82240  1      
.L_828e0:                             #        0x82241  0      
  testb $0x10, %r12b                  #  1112  0x82241  4      
  je .L_82b60                         #  1113  0x82245  6      
  movq 0x80(%rsp), %rdx               #  1114  0x8224b  8      
  movl %edx, %edx                     #  1115  0x82253  2      
  movl (%r15,%rdx,1), %eax            #  1116  0x82255  4      
  cmpl $0x2f, %eax                    #  1117  0x82259  3      
  nop                                 #  1118  0x8225c  1      
  ja .L_835a0                         #  1119  0x8225d  6      
  movq %rdx, %rcx                     #  1120  0x82263  3      
  movl %edx, %edx                     #  1121  0x82266  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1122  0x82268  5      
  addl %eax, %edx                     #  1123  0x8226d  2      
  addl $0x8, %eax                     #  1124  0x8226f  3      
  movl %ecx, %ecx                     #  1125  0x82272  2      
  movl %eax, (%r15,%rcx,1)            #  1126  0x82274  4      
  nop                                 #  1127  0x82278  1      
.L_82920:                             #        0x82279  0      
  movl %edx, %edx                     #  1128  0x82279  2      
  movl (%r15,%rdx,1), %r13d           #  1129  0x8227b  4      
  movl $0x1, %eax                     #  1130  0x8227f  5      
  testq %r13, %r13                    #  1131  0x82284  3      
  setne %dl                           #  1132  0x82287  3      
  jmpq .L_82220                       #  1133  0x8228a  5      
  nop                                 #  1134  0x8228f  1      
.L_82940:                             #        0x82290  0      
  testb $0x10, %r12b                  #  1135  0x82290  4      
  je .L_82d20                         #  1136  0x82294  6      
  movq 0x80(%rsp), %rdx               #  1137  0x8229a  8      
  movl %edx, %edx                     #  1138  0x822a2  2      
  movl (%r15,%rdx,1), %eax            #  1139  0x822a4  4      
  cmpl $0x2f, %eax                    #  1140  0x822a8  3      
  nop                                 #  1141  0x822ab  1      
  ja .L_83520                         #  1142  0x822ac  6      
  movq %rdx, %rcx                     #  1143  0x822b2  3      
  movl %edx, %edx                     #  1144  0x822b5  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1145  0x822b7  5      
  addl %eax, %edx                     #  1146  0x822bc  2      
  addl $0x8, %eax                     #  1147  0x822be  3      
  movl %ecx, %ecx                     #  1148  0x822c1  2      
  movl %eax, (%r15,%rcx,1)            #  1149  0x822c3  4      
  nop                                 #  1150  0x822c7  1      
.L_82980:                             #        0x822c8  0      
  movl %edx, %edx                     #  1151  0x822c8  2      
  movslq (%r15,%rdx,1), %r13          #  1152  0x822ca  4      
  cmpq $0x0, %r13                     #  1153  0x822ce  4      
  jge .L_81ea0                        #  1154  0x822d2  6      
  nop                                 #  1155  0x822d8  1      
  nop                                 #  1156  0x822d9  1      
.L_829a0:                             #        0x822da  0      
  negq %r13                           #  1157  0x822da  3      
  movb $0x2d, 0x1df(%rsp)             #  1158  0x822dd  8      
  movl $0x1, %eax                     #  1159  0x822e5  5      
  setne %dl                           #  1160  0x822ea  3      
  jmpq .L_82240                       #  1161  0x822ed  5      
  nop                                 #  1162  0x822f2  1      
.L_829c0:                             #        0x822f3  0      
  movl 0x78(%rsp), %esi               #  1163  0x822f3  4      
  leal 0x190(%rsp), %edx              #  1164  0x822f7  7      
  movl %r14d, %edi                    #  1165  0x822fe  3      
  nop                                 #  1166  0x82301  1      
  callq .__ssprint_r                  #  1167  0x82302  5      
  testl %eax, %eax                    #  1168  0x82307  2      
  jne .L_82520                        #  1169  0x82309  6      
  leal 0x150(%rsp), %ebx              #  1170  0x8230f  7      
  jmpq .L_81640                       #  1171  0x82316  5      
  nop                                 #  1172  0x8231b  1      
.L_82a00:                             #        0x8231c  0      
  movq 0x78(%rsp), %rdx               #  1173  0x8231c  5      
  movl %edx, %edx                     #  1174  0x82321  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1175  0x82323  6      
  jmpq .L_82560                       #  1176  0x82329  5      
  nop                                 #  1177  0x8232e  1      
.L_82a20:                             #        0x8232f  0      
  movb $0x20, 0x1df(%rsp)             #  1178  0x8232f  8      
  movl %r13d, %r13d                   #  1179  0x82337  3      
  movzbl (%r15,%r13,1), %eax          #  1180  0x8233a  5      
  jmpq .L_81420                       #  1181  0x8233f  5      
  nop                                 #  1182  0x82344  1      
.L_82a40:                             #        0x82345  0      
  testb $0x10, %r12b                  #  1183  0x82345  4      
  je .L_83720                         #  1184  0x82349  6      
  movq 0x80(%rsp), %rax               #  1185  0x8234f  8      
  movl %eax, %eax                     #  1186  0x82357  2      
  movl (%r15,%rax,1), %edx            #  1187  0x82359  4      
  cmpl $0x2f, %edx                    #  1188  0x8235d  3      
  nop                                 #  1189  0x82360  1      
  jbe .L_83a80                        #  1190  0x82361  6      
  nop                                 #  1191  0x82367  1      
  nop                                 #  1192  0x82368  1      
.L_82a80:                             #        0x82369  0      
  movq 0x80(%rsp), %rsi               #  1193  0x82369  8      
  movl %esi, %esi                     #  1194  0x82371  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1195  0x82373  5      
  leal 0x8(%rax), %edx                #  1196  0x82378  3      
  movl %esi, %esi                     #  1197  0x8237b  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1198  0x8237d  5      
  nop                                 #  1199  0x82382  1      
.L_82aa0:                             #        0x82383  0      
  movl %eax, %eax                     #  1200  0x82383  2      
  movl (%r15,%rax,1), %eax            #  1201  0x82385  4      
  movl 0x74(%rsp), %edx               #  1202  0x82389  4      
  movl %eax, %eax                     #  1203  0x8238d  2      
  movl %edx, (%r15,%rax,1)            #  1204  0x8238f  4      
  jmpq .L_81260                       #  1205  0x82393  5      
  nop                                 #  1206  0x82398  1      
  movq %r13, 0x60(%rsp)               #  1207  0x82399  5      
  jmpq .L_81e20                       #  1208  0x8239e  5      
  nop                                 #  1209  0x823a3  1      
  nop                                 #  1210  0x823a4  1      
  movq %r13, 0x60(%rsp)               #  1211  0x823a5  5      
  jmpq .L_81da0                       #  1212  0x823aa  5      
  nop                                 #  1213  0x823af  1      
  nop                                 #  1214  0x823b0  1      
  movq %r13, 0x60(%rsp)               #  1215  0x823b1  5      
  jmpq .L_81c60                       #  1216  0x823b6  5      
  nop                                 #  1217  0x823bb  1      
  nop                                 #  1218  0x823bc  1      
.L_82b20:                             #        0x823bd  0      
  movq 0x80(%rsp), %rax               #  1219  0x823bd  8      
  movq 0x80(%rsp), %rcx               #  1220  0x823c5  8      
  movl %eax, %eax                     #  1221  0x823cd  2      
  movl 0x8(%r15,%rax,1), %edx         #  1222  0x823cf  5      
  leal 0x8(%rdx), %eax                #  1223  0x823d4  3      
  nop                                 #  1224  0x823d7  1      
  movl %ecx, %ecx                     #  1225  0x823d8  2      
  movl %eax, 0x8(%r15,%rcx,1)         #  1226  0x823da  5      
  jmpq .L_81b80                       #  1227  0x823df  5      
  nop                                 #  1228  0x823e4  1      
  nop                                 #  1229  0x823e5  1      
.L_82b60:                             #        0x823e6  0      
  testb $0x40, %r12b                  #  1230  0x823e6  4      
  je .L_835c0                         #  1231  0x823ea  6      
  movq 0x80(%rsp), %rax               #  1232  0x823f0  8      
  movl %eax, %eax                     #  1233  0x823f8  2      
  movl (%r15,%rax,1), %edx            #  1234  0x823fa  4      
  cmpl $0x2f, %edx                    #  1235  0x823fe  3      
  nop                                 #  1236  0x82401  1      
  jbe .L_83aa0                        #  1237  0x82402  6      
  movq 0x80(%rsp), %rsi               #  1238  0x82408  8      
  movl %esi, %esi                     #  1239  0x82410  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1240  0x82412  5      
  leal 0x8(%rax), %edx                #  1241  0x82417  3      
  movl %esi, %esi                     #  1242  0x8241a  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1243  0x8241c  5      
  nop                                 #  1244  0x82421  1      
.L_82ba0:                             #        0x82422  0      
  movl %eax, %eax                     #  1245  0x82422  2      
  movzwl (%r15,%rax,1), %r13d         #  1246  0x82424  5      
  movl $0x1, %eax                     #  1247  0x82429  5      
  testq %r13, %r13                    #  1248  0x8242e  3      
  setne %dl                           #  1249  0x82431  3      
  jmpq .L_82220                       #  1250  0x82434  5      
  nop                                 #  1251  0x82439  1      
.L_82bc0:                             #        0x8243a  0      
  movq 0x80(%rsp), %rsi               #  1252  0x8243a  8      
  movl %esi, %esi                     #  1253  0x82442  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1254  0x82444  5      
  leal 0x8(%rdx), %eax                #  1255  0x82449  3      
  movl %esi, %esi                     #  1256  0x8244c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1257  0x8244e  5      
  jmpq .L_821e0                       #  1258  0x82453  5      
  xchgw %ax, %ax                      #  1259  0x82458  3      
.L_82be0:                             #        0x8245b  0      
  testb $0x40, %r12b                  #  1260  0x8245b  4      
  je .L_83660                         #  1261  0x8245f  6      
  movq 0x80(%rsp), %rax               #  1262  0x82465  8      
  movl %eax, %eax                     #  1263  0x8246d  2      
  movl (%r15,%rax,1), %edx            #  1264  0x8246f  4      
  cmpl $0x2f, %edx                    #  1265  0x82473  3      
  nop                                 #  1266  0x82476  1      
  jbe .L_83ac0                        #  1267  0x82477  6      
  movq 0x80(%rsp), %rsi               #  1268  0x8247d  8      
  movl %esi, %esi                     #  1269  0x82485  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1270  0x82487  5      
  leal 0x8(%rax), %edx                #  1271  0x8248c  3      
  movl %esi, %esi                     #  1272  0x8248f  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1273  0x82491  5      
  nop                                 #  1274  0x82496  1      
.L_82c20:                             #        0x82497  0      
  movl %eax, %eax                     #  1275  0x82497  2      
  movzwl (%r15,%rax,1), %r13d         #  1276  0x82499  5      
  jmpq .L_828c0                       #  1277  0x8249e  5      
  nop                                 #  1278  0x824a3  1      
  nop                                 #  1279  0x824a4  1      
.L_82c40:                             #        0x824a5  0      
  movq 0x80(%rsp), %rsi               #  1280  0x824a5  8      
  movl %esi, %esi                     #  1281  0x824ad  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1282  0x824af  5      
  leal 0x8(%rdx), %eax                #  1283  0x824b4  3      
  movl %esi, %esi                     #  1284  0x824b7  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1285  0x824b9  5      
  jmpq .L_81e60                       #  1286  0x824be  5      
  xchgw %ax, %ax                      #  1287  0x824c3  3      
.L_82c60:                             #        0x824c6  0      
  movq 0x80(%rsp), %rsi               #  1288  0x824c6  8      
  movl %esi, %esi                     #  1289  0x824ce  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1290  0x824d0  5      
  leal 0x8(%rdx), %eax                #  1291  0x824d5  3      
  movl %esi, %esi                     #  1292  0x824d8  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1293  0x824da  5      
  jmpq .L_81ca0                       #  1294  0x824df  5      
  xchgw %ax, %ax                      #  1295  0x824e4  3      
.L_82c80:                             #        0x824e7  0      
  movq %rcx, %rsi                     #  1296  0x824e7  3      
  movl %ecx, %ecx                     #  1297  0x824ea  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  1298  0x824ec  5      
  addl %edx, %ecx                     #  1299  0x824f1  2      
  addl $0x8, %edx                     #  1300  0x824f3  3      
  movl %esi, %esi                     #  1301  0x824f6  2      
  movl %edx, (%r15,%rsi,1)            #  1302  0x824f8  4      
  jmpq .L_81c20                       #  1303  0x824fc  5      
  nop                                 #  1304  0x82501  1      
.L_82ca0:                             #        0x82502  0      
  testb $0x40, %r12b                  #  1305  0x82502  4      
  je .L_836c0                         #  1306  0x82506  6      
  movq 0x80(%rsp), %rdx               #  1307  0x8250c  8      
  movl %edx, %edx                     #  1308  0x82514  2      
  movl (%r15,%rdx,1), %ecx            #  1309  0x82516  4      
  cmpl $0x2f, %ecx                    #  1310  0x8251a  3      
  nop                                 #  1311  0x8251d  1      
  jbe .L_83ae0                        #  1312  0x8251e  6      
  movq 0x80(%rsp), %rcx               #  1313  0x82524  8      
  movq 0x80(%rsp), %rsi               #  1314  0x8252c  8      
  movl %ecx, %ecx                     #  1315  0x82534  2      
  movl 0x8(%r15,%rcx,1), %edx         #  1316  0x82536  5      
  leal 0x8(%rdx), %ecx                #  1317  0x8253b  3      
  movl %esi, %esi                     #  1318  0x8253e  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  1319  0x82540  5      
  nop                                 #  1320  0x82545  1      
  nop                                 #  1321  0x82546  1      
.L_82d00:                             #        0x82547  0      
  movl %edx, %edx                     #  1322  0x82547  2      
  movzwl (%r15,%rdx,1), %r13d         #  1323  0x82549  5      
  jmpq .L_82140                       #  1324  0x8254e  5      
  nop                                 #  1325  0x82553  1      
  nop                                 #  1326  0x82554  1      
.L_82d20:                             #        0x82555  0      
  testb $0x40, %r12b                  #  1327  0x82555  4      
  je .L_83540                         #  1328  0x82559  6      
  movq 0x80(%rsp), %rax               #  1329  0x8255f  8      
  movl %eax, %eax                     #  1330  0x82567  2      
  movl (%r15,%rax,1), %edx            #  1331  0x82569  4      
  cmpl $0x2f, %edx                    #  1332  0x8256d  3      
  nop                                 #  1333  0x82570  1      
  ja .L_83a60                         #  1334  0x82571  6      
  movq %rax, %rcx                     #  1335  0x82577  3      
  movl %eax, %eax                     #  1336  0x8257a  2      
  movl 0xc(%r15,%rax,1), %eax         #  1337  0x8257c  5      
  addl %edx, %eax                     #  1338  0x82581  2      
  addl $0x8, %edx                     #  1339  0x82583  3      
  movl %ecx, %ecx                     #  1340  0x82586  2      
  movl %edx, (%r15,%rcx,1)            #  1341  0x82588  4      
  nop                                 #  1342  0x8258c  1      
.L_82d60:                             #        0x8258d  0      
  movl %eax, %eax                     #  1343  0x8258d  2      
  movswq (%r15,%rax,1), %r13          #  1344  0x8258f  5      
  jmpq .L_81e80                       #  1345  0x82594  5      
  nop                                 #  1346  0x82599  1      
  nop                                 #  1347  0x8259a  1      
.L_82d80:                             #        0x8259b  0      
  movq 0x80(%rsp), %rdx               #  1348  0x8259b  8      
  movq 0x80(%rsp), %rsi               #  1349  0x825a3  8      
  movl %edx, %edx                     #  1350  0x825ab  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1351  0x825ad  5      
  leal 0x8(%rcx), %edx                #  1352  0x825b2  3      
  nop                                 #  1353  0x825b5  1      
  movl %esi, %esi                     #  1354  0x825b6  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1355  0x825b8  5      
  jmpq .L_81f00                       #  1356  0x825bd  5      
  nop                                 #  1357  0x825c2  1      
  nop                                 #  1358  0x825c3  1      
.L_82dc0:                             #        0x825c4  0      
  movq 0x80(%rsp), %rsi               #  1359  0x825c4  8      
  movl %esi, %esi                     #  1360  0x825cc  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1361  0x825ce  5      
  leal 0x8(%rdx), %eax                #  1362  0x825d3  3      
  movl %esi, %esi                     #  1363  0x825d6  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1364  0x825d8  5      
  jmpq .L_81de0                       #  1365  0x825dd  5      
  xchgw %ax, %ax                      #  1366  0x825e2  3      
.L_82de0:                             #        0x825e5  0      
  addl $0x1, %r13d                    #  1367  0x825e5  4      
  orl $0x20, %r12d                    #  1368  0x825e9  4      
  movl %r13d, %r13d                   #  1369  0x825ed  3      
  movzbl (%r15,%r13,1), %eax          #  1370  0x825f0  5      
  jmpq .L_81420                       #  1371  0x825f5  5      
  nop                                 #  1372  0x825fa  1      
.L_82e00:                             #        0x825fb  0      
  addl $0x1, %r13d                    #  1373  0x825fb  4      
  orl $0x200, %r12d                   #  1374  0x825ff  7      
  movl %r13d, %r13d                   #  1375  0x82606  3      
  movzbl (%r15,%r13,1), %eax          #  1376  0x82609  5      
  jmpq .L_81420                       #  1377  0x8260e  5      
  nop                                 #  1378  0x82613  1      
.L_82e20:                             #        0x82614  0      
  leal 0x1b0(%rsp), %r13d             #  1379  0x82614  8      
  xorl %esi, %esi                     #  1380  0x8261c  2      
  movl $0x8, %edx                     #  1381  0x8261e  5      
  movl %r13d, %edi                    #  1382  0x82623  3      
  nop                                 #  1383  0x82626  1      
  callq .memset                       #  1384  0x82627  5      
  movq 0x80(%rsp), %rsi               #  1385  0x8262c  8      
  movl %esi, %esi                     #  1386  0x82634  2      
  movl (%r15,%rsi,1), %edx            #  1387  0x82636  4      
  cmpl $0x2f, %edx                    #  1388  0x8263a  3      
  ja .L_834c0                         #  1389  0x8263d  6      
  movl %esi, %esi                     #  1390  0x82643  2      
  movl 0xc(%r15,%rsi,1), %eax         #  1391  0x82645  5      
  addl %edx, %eax                     #  1392  0x8264a  2      
  addl $0x8, %edx                     #  1393  0x8264c  3      
  movl %esi, %esi                     #  1394  0x8264f  2      
  movl %edx, (%r15,%rsi,1)            #  1395  0x82651  4      
  nop                                 #  1396  0x82655  1      
  nop                                 #  1397  0x82656  1      
.L_82e80:                             #        0x82657  0      
  movl %eax, %eax                     #  1398  0x82657  2      
  movl (%r15,%rax,1), %edx            #  1399  0x82659  4      
  movl 0x28(%rsp), %esi               #  1400  0x8265d  4      
  movl %r13d, %ecx                    #  1401  0x82661  3      
  movl %r14d, %edi                    #  1402  0x82664  3      
  nop                                 #  1403  0x82667  1      
  callq ._wcrtomb_r                   #  1404  0x82668  5      
  cmpl $0xffffffff, %eax              #  1405  0x8266d  5      
  movl %eax, 0x70(%rsp)               #  1406  0x82672  4      
  jne .L_81d40                        #  1407  0x82676  6      
  nop                                 #  1408  0x8267c  1      
  nop                                 #  1409  0x8267d  1      
.L_82ec0:                             #        0x8267e  0      
  movq 0x78(%rsp), %rsi               #  1410  0x8267e  5      
  movl %esi, %esi                     #  1411  0x82683  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1412  0x82685  6      
  orl $0x40, %eax                     #  1413  0x8268b  3      
  movl %esi, %esi                     #  1414  0x8268e  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  1415  0x82690  6      
  jmpq .L_82560                       #  1416  0x82696  5      
  nop                                 #  1417  0x8269b  1      
.L_82ee0:                             #        0x8269c  0      
  movl 0x198(%rsp), %edx              #  1418  0x8269c  7      
  testl %edx, %edx                    #  1419  0x826a3  2      
  jne .L_83ca0                        #  1420  0x826a5  6      
  xchgw %ax, %ax                      #  1421  0x826ab  3      
  nop                                 #  1422  0x826ae  1      
.L_82f00:                             #        0x826af  0      
  movq 0x78(%rsp), %rsi               #  1423  0x826af  5      
  movl %esi, %esi                     #  1424  0x826b4  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1425  0x826b6  6      
  jmpq .L_82560                       #  1426  0x826bc  5      
  nop                                 #  1427  0x826c1  1      
.L_82f20:                             #        0x826c2  0      
  testl %eax, %eax                    #  1428  0x826c2  2      
  jne .L_82f60                        #  1429  0x826c4  6      
  testb $0x1, %r12b                   #  1430  0x826ca  4      
  je .L_82f60                         #  1431  0x826ce  6      
  movq 0xc8(%rsp), %rcx               #  1432  0x826d4  8      
  movq %rcx, 0x98(%rsp)               #  1433  0x826dc  8      
  nop                                 #  1434  0x826e4  1      
  movl %ecx, %ecx                     #  1435  0x826e5  2      
  movb $0x30, (%r15,%rcx,1)           #  1436  0x826e7  5      
  movl $0x1, 0x70(%rsp)               #  1437  0x826ec  8      
  movq 0xb0(%rsp), %rcx               #  1438  0x826f4  8      
  jmpq .L_822e0                       #  1439  0x826fc  5      
  nop                                 #  1440  0x82701  1      
.L_82f60:                             #        0x82702  0      
  movq 0xb8(%rsp), %rsi               #  1441  0x82702  8      
  movq 0xb0(%rsp), %rcx               #  1442  0x8270a  8      
  movl $0x0, 0x70(%rsp)               #  1443  0x82712  8      
  movq %rsi, 0x98(%rsp)               #  1444  0x8271a  8      
  jmpq .L_822e0                       #  1445  0x82722  5      
  nop                                 #  1446  0x82727  1      
  nop                                 #  1447  0x82728  1      
.L_82fa0:                             #        0x82729  0      
  movq 0xb8(%rsp), %rax               #  1448  0x82729  8      
  movq 0xc0(%rsp), %rcx               #  1449  0x82731  8      
  movq %rax, 0x98(%rsp)               #  1450  0x82739  8      
  nop                                 #  1451  0x82741  1      
.L_82fc0:                             #        0x82742  0      
  movl %r13d, %edx                    #  1452  0x82742  3      
  shrq $0x4, %r13                     #  1453  0x82745  4      
  subl $0x1, %eax                     #  1454  0x82749  3      
  andl $0xf, %edx                     #  1455  0x8274c  3      
  addl %ecx, %edx                     #  1456  0x8274f  2      
  testq %r13, %r13                    #  1457  0x82751  3      
  movl %edx, %edx                     #  1458  0x82754  2      
  movzbl (%r15,%rdx,1), %edx          #  1459  0x82756  5      
  movl %eax, %eax                     #  1460  0x8275b  2      
  movb %dl, (%r15,%rax,1)             #  1461  0x8275d  4      
  nop                                 #  1462  0x82761  1      
  jne .L_82fc0                        #  1463  0x82762  6      
  movl 0xb8(%rsp), %edx               #  1464  0x82768  7      
  movq %rax, 0x98(%rsp)               #  1465  0x8276f  8      
  movq 0xb0(%rsp), %rcx               #  1466  0x82777  8      
  subl %eax, %edx                     #  1467  0x8277f  2      
  movl %edx, 0x70(%rsp)               #  1468  0x82781  4      
  nop                                 #  1469  0x82785  1      
  jmpq .L_822e0                       #  1470  0x82786  5      
  nop                                 #  1471  0x8278b  1      
  nop                                 #  1472  0x8278c  1      
.L_83020:                             #        0x8278d  0      
  cmpq $0x9, %r13                     #  1473  0x8278d  4      
  ja .L_830c0                         #  1474  0x82791  6      
  movq 0xc8(%rsp), %rcx               #  1475  0x82797  8      
  addl $0x30, %r13d                   #  1476  0x8279f  4      
  movq %rcx, 0x98(%rsp)               #  1477  0x827a3  8      
  xchgw %ax, %ax                      #  1478  0x827ab  3      
  movl %ecx, %ecx                     #  1479  0x827ae  2      
  movb %r13b, (%r15,%rcx,1)           #  1480  0x827b0  4      
  movl $0x1, 0x70(%rsp)               #  1481  0x827b4  8      
  movq 0xb0(%rsp), %rcx               #  1482  0x827bc  8      
  jmpq .L_822e0                       #  1483  0x827c4  5      
  nop                                 #  1484  0x827c9  1      
.L_83060:                             #        0x827ca  0      
  cmpb $0x30, %al                     #  1485  0x827ca  2      
  je .L_83ba0                         #  1486  0x827cc  6      
  movl 0x98(%rsp), %eax               #  1487  0x827d2  7      
  subl $0x1, %eax                     #  1488  0x827d9  3      
  movq %rax, 0x98(%rsp)               #  1489  0x827dc  8      
  nop                                 #  1490  0x827e4  1      
  movl %eax, %eax                     #  1491  0x827e5  2      
  movb $0x30, (%r15,%rax,1)           #  1492  0x827e7  5      
  movl 0xb8(%rsp), %edx               #  1493  0x827ec  7      
  movq 0xb0(%rsp), %rcx               #  1494  0x827f3  8      
  subl %eax, %edx                     #  1495  0x827fb  2      
  movl %edx, 0x70(%rsp)               #  1496  0x827fd  4      
  nop                                 #  1497  0x82801  1      
  jmpq .L_822e0                       #  1498  0x82802  5      
  nop                                 #  1499  0x82807  1      
  nop                                 #  1500  0x82808  1      
.L_830c0:                             #        0x82809  0      
  movl 0xd4(%rsp), %r11d              #  1501  0x82809  8      
  movq 0xb8(%rsp), %rsi               #  1502  0x82811  8      
  movl %r12d, %r10d                   #  1503  0x82819  3      
  movl %r8d, 0x68(%rsp)               #  1504  0x8281c  5      
  movl %r12d, %r8d                    #  1505  0x82821  3      
  nop                                 #  1506  0x82824  1      
  movq 0xb0(%rsp), %r12               #  1507  0x82825  8      
  andl $0x400, %r10d                  #  1508  0x8282d  7      
  movq $0xcccccccccccccccd, %r9       #  1509  0x82834  10     
  negl %r11d                          #  1510  0x8283e  3      
  nop                                 #  1511  0x82841  1      
  movq %rsi, 0x98(%rsp)               #  1512  0x82842  8      
  xorl %esi, %esi                     #  1513  0x8284a  2      
  movl %r11d, 0x70(%rsp)              #  1514  0x8284c  5      
  movq %rbx, %r11                     #  1515  0x82851  3      
  movq 0x98(%rsp), %rbx               #  1516  0x82854  8      
  nop                                 #  1517  0x8285c  1      
.L_83120:                             #        0x8285d  0      
  movq %r13, %rax                     #  1518  0x8285d  3      
  subl $0x1, %ebx                     #  1519  0x82860  3      
  mulq %r9                            #  1520  0x82863  3      
  shrq $0x3, %rdx                     #  1521  0x82866  4      
  leaq (%rdx,%rdx,4), %rax            #  1522  0x8286a  4      
  movq %r13, %rdx                     #  1523  0x8286e  3      
  addq %rax, %rax                     #  1524  0x82871  3      
  subq %rax, %rdx                     #  1525  0x82874  3      
  movq %rdx, %rax                     #  1526  0x82877  3      
  addl $0x30, %eax                    #  1527  0x8287a  3      
  testl %r10d, %r10d                  #  1528  0x8287d  3      
  movl %ebx, %ebx                     #  1529  0x82880  2      
  movb %al, (%r15,%rbx,1)             #  1530  0x82882  4      
  leal 0x1(%rsi), %eax                #  1531  0x82886  3      
  je .L_83180                         #  1532  0x82889  6      
  movl %r12d, %r12d                   #  1533  0x8288f  3      
  movzbl (%r15,%r12,1), %edx          #  1534  0x82892  5      
  movsbl %dl, %esi                    #  1535  0x82897  3      
  cmpl %eax, %esi                     #  1536  0x8289a  2      
  nop                                 #  1537  0x8289c  1      
  je .L_831e0                         #  1538  0x8289d  6      
  nop                                 #  1539  0x828a3  1      
  nop                                 #  1540  0x828a4  1      
.L_83180:                             #        0x828a5  0      
  movl %eax, %esi                     #  1541  0x828a5  2      
  nop                                 #  1542  0x828a7  1      
  nop                                 #  1543  0x828a8  1      
.L_831a0:                             #        0x828a9  0      
  movq %r12, %rcx                     #  1544  0x828a9  3      
  nop                                 #  1545  0x828ac  1      
  nop                                 #  1546  0x828ad  1      
.L_831c0:                             #        0x828ae  0      
  movq %r13, %rax                     #  1547  0x828ae  3      
  mulq %r9                            #  1548  0x828b1  3      
  movq %rdx, %r13                     #  1549  0x828b4  3      
  shrq $0x3, %r13                     #  1550  0x828b7  4      
  testq %r13, %r13                    #  1551  0x828bb  3      
  je .L_83260                         #  1552  0x828be  6      
  movq %rcx, %r12                     #  1553  0x828c4  3      
  jmpq .L_83120                       #  1554  0x828c7  5      
  xchgw %ax, %ax                      #  1555  0x828cc  3      
.L_831e0:                             #        0x828cf  0      
  cmpb $0x7f, %dl                     #  1556  0x828cf  3      
  je .L_831a0                         #  1557  0x828d2  6      
  cmpq $0x9, %r13                     #  1558  0x828d8  4      
  jbe .L_831a0                        #  1559  0x828dc  6      
  addl 0x70(%rsp), %ebx               #  1560  0x828e2  4      
  movl 0xd8(%rsp), %esi               #  1561  0x828e6  7      
  movl 0xd4(%rsp), %edx               #  1562  0x828ed  7      
  nop                                 #  1563  0x828f4  1      
  movl %r8d, 0x40(%rsp)               #  1564  0x828f5  5      
  movq %r9, 0x58(%rsp)                #  1565  0x828fa  5      
  movl %r10d, 0x50(%rsp)              #  1566  0x828ff  5      
  movq %r11, 0x48(%rsp)               #  1567  0x82904  5      
  movl %ebx, %edi                     #  1568  0x82909  2      
  nop                                 #  1569  0x8290b  1      
  callq .strncpy                      #  1570  0x8290c  5      
  leal 0x1(%r12), %ecx                #  1571  0x82911  5      
  xorl %esi, %esi                     #  1572  0x82916  2      
  movl 0x40(%rsp), %r8d               #  1573  0x82918  5      
  movq 0x58(%rsp), %r9                #  1574  0x8291d  5      
  movl 0x50(%rsp), %r10d              #  1575  0x82922  5      
  movl %ecx, %ecx                     #  1576  0x82927  2      
  cmpb $0x0, (%r15,%rcx,1)            #  1577  0x82929  5      
  nop                                 #  1578  0x8292e  1      
  movq 0x48(%rsp), %r11               #  1579  0x8292f  5      
  jne .L_831c0                        #  1580  0x82934  6      
  jmpq .L_831a0                       #  1581  0x8293a  5      
  nop                                 #  1582  0x8293f  1      
  nop                                 #  1583  0x82940  1      
.L_83260:                             #        0x82941  0      
  movq %rbx, 0x98(%rsp)               #  1584  0x82941  8      
  movl 0xb8(%rsp), %esi               #  1585  0x82949  7      
  movl %r8d, %r12d                    #  1586  0x82950  3      
  subl 0x98(%rsp), %esi               #  1587  0x82953  7      
  movl 0x68(%rsp), %r8d               #  1588  0x8295a  5      
  xchgw %ax, %ax                      #  1589  0x8295f  3      
  movq %r11, %rbx                     #  1590  0x82962  3      
  movl %esi, 0x70(%rsp)               #  1591  0x82965  4      
  jmpq .L_822e0                       #  1592  0x82969  5      
  nop                                 #  1593  0x8296e  1      
  nop                                 #  1594  0x8296f  1      
.L_832a0:                             #        0x82970  0      
  movl 0x78(%rsp), %esi               #  1595  0x82970  4      
  leal 0x190(%rsp), %edx              #  1596  0x82974  7      
  movl %r14d, %edi                    #  1597  0x8297b  3      
  nop                                 #  1598  0x8297e  1      
  callq .__ssprint_r                  #  1599  0x8297f  5      
  testl %eax, %eax                    #  1600  0x82984  2      
  jne .L_82520                        #  1601  0x82986  6      
  leal 0x150(%rsp), %ebx              #  1602  0x8298c  7      
  jmpq .L_81720                       #  1603  0x82993  5      
  nop                                 #  1604  0x82998  1      
.L_832e0:                             #        0x82999  0      
  movl 0x98(%rsp), %edx               #  1605  0x82999  7      
  leal 0x1a0(%rsp), %ecx              #  1606  0x829a0  7      
  xorl %esi, %esi                     #  1607  0x829a7  2      
  movl %r8d, 0x40(%rsp)               #  1608  0x829a9  5      
  movl %ecx, %edi                     #  1609  0x829ae  2      
  movq %rcx, 0x18(%rsp)               #  1610  0x829b0  5      
  nop                                 #  1611  0x829b5  1      
  movl %edx, 0x1c8(%rsp)              #  1612  0x829b6  7      
  movl $0x8, %edx                     #  1613  0x829bd  5      
  nop                                 #  1614  0x829c2  1      
  callq .memset                       #  1615  0x829c3  5      
  movl 0x40(%rsp), %r8d               #  1616  0x829c8  5      
  testl %r8d, %r8d                    #  1617  0x829cd  3      
  js .L_83d00                         #  1618  0x829d0  6      
  movq %rbx, 0x68(%rsp)               #  1619  0x829d6  5      
  movl %r12d, 0x90(%rsp)              #  1620  0x829db  8      
  xorl %r13d, %r13d                   #  1621  0x829e3  3      
  xchgw %ax, %ax                      #  1622  0x829e6  3      
  movl $0x0, 0x70(%rsp)               #  1623  0x829e9  8      
  movl %r8d, %ebx                     #  1624  0x829f1  3      
  xorl %r12d, %r12d                   #  1625  0x829f4  3      
  jmpq .L_83380                       #  1626  0x829f7  5      
  nop                                 #  1627  0x829fc  1      
  nop                                 #  1628  0x829fd  1      
.L_83360:                             #        0x829fe  0      
  movl %eax, %r12d                    #  1629  0x829fe  3      
  nop                                 #  1630  0x82a01  1      
  nop                                 #  1631  0x82a02  1      
.L_83380:                             #        0x82a03  0      
  movl 0x1c8(%rsp), %eax              #  1632  0x82a03  7      
  addl %r13d, %eax                    #  1633  0x82a0a  3      
  movl %eax, %eax                     #  1634  0x82a0d  2      
  movl (%r15,%rax,1), %edx            #  1635  0x82a0f  4      
  testl %edx, %edx                    #  1636  0x82a13  2      
  je .L_83c80                         #  1637  0x82a15  6      
  movl 0x18(%rsp), %ecx               #  1638  0x82a1b  4      
  movl 0x28(%rsp), %esi               #  1639  0x82a1f  4      
  movl %r14d, %edi                    #  1640  0x82a23  3      
  nop                                 #  1641  0x82a26  1      
  nop                                 #  1642  0x82a27  1      
  callq ._wcrtomb_r                   #  1643  0x82a28  5      
  cmpl $0xffffffff, %eax              #  1644  0x82a2d  5      
  je .L_82ec0                         #  1645  0x82a32  6      
  addl %r12d, %eax                    #  1646  0x82a38  3      
  cmpl %eax, %ebx                     #  1647  0x82a3b  2      
  jl .L_83c80                         #  1648  0x82a3d  6      
  addl $0x4, %r13d                    #  1649  0x82a43  4      
  cmpl %eax, %ebx                     #  1650  0x82a47  2      
  jne .L_83360                        #  1651  0x82a49  6      
  movl %ebx, %r8d                     #  1652  0x82a4f  3      
  nop                                 #  1653  0x82a52  1      
  movl 0x90(%rsp), %r12d              #  1654  0x82a53  8      
  movq 0x68(%rsp), %rbx               #  1655  0x82a5b  5      
  movl %r8d, 0x70(%rsp)               #  1656  0x82a60  5      
  nop                                 #  1657  0x82a65  1      
.L_83400:                             #        0x82a66  0      
  movl 0x70(%rsp), %edi               #  1658  0x82a66  4      
  testl %edi, %edi                    #  1659  0x82a6a  2      
  je .L_837c0                         #  1660  0x82a6c  6      
  cmpl $0x63, 0x70(%rsp)              #  1661  0x82a72  5      
  leal 0xe0(%rsp), %esi               #  1662  0x82a77  7      
  nop                                 #  1663  0x82a7e  1      
  movq $0x0, 0x90(%rsp)               #  1664  0x82a7f  12     
  movq %rsi, 0x98(%rsp)               #  1665  0x82a8b  8      
  jg .L_83b00                         #  1666  0x82a93  6      
  nop                                 #  1667  0x82a99  1      
.L_83440:                             #        0x82a9a  0      
  movl 0x18(%rsp), %edi               #  1668  0x82a9a  4      
  xorl %esi, %esi                     #  1669  0x82a9e  2      
  movl $0x8, %edx                     #  1670  0x82aa0  5      
  nop                                 #  1671  0x82aa5  1      
  nop                                 #  1672  0x82aa6  1      
  callq .memset                       #  1673  0x82aa7  5      
  movl 0x18(%rsp), %r8d               #  1674  0x82aac  5      
  movl 0x70(%rsp), %ecx               #  1675  0x82ab1  4      
  leal 0x1c8(%rsp), %edx              #  1676  0x82ab5  7      
  movl 0x98(%rsp), %esi               #  1677  0x82abc  7      
  movl %r14d, %edi                    #  1678  0x82ac3  3      
  nop                                 #  1679  0x82ac6  1      
  callq ._wcsrtombs_r                 #  1680  0x82ac7  5      
  cmpl %eax, 0x70(%rsp)               #  1681  0x82acc  4      
  jne .L_82500                        #  1682  0x82ad0  6      
  movl 0x70(%rsp), %eax               #  1683  0x82ad6  4      
  addl 0x98(%rsp), %eax               #  1684  0x82ada  7      
  movl %eax, %eax                     #  1685  0x82ae1  2      
  movb $0x0, (%r15,%rax,1)            #  1686  0x82ae3  5      
  movl 0x70(%rsp), %esi               #  1687  0x82ae8  4      
  movl $0x0, %eax                     #  1688  0x82aec  5      
  movl $0x0, 0xac(%rsp)               #  1689  0x82af1  11     
  testl %esi, %esi                    #  1690  0x82afc  2      
  cmovnsl 0x70(%rsp), %eax            #  1691  0x82afe  5      
  movl %eax, 0x68(%rsp)               #  1692  0x82b03  4      
  jmpq .L_82320                       #  1693  0x82b07  5      
.L_834c0:                             #        0x82b0c  0      
  movq 0x80(%rsp), %rdx               #  1694  0x82b0c  8      
  movq 0x80(%rsp), %rcx               #  1695  0x82b14  8      
  movl %edx, %edx                     #  1696  0x82b1c  2      
  movl 0x8(%r15,%rdx,1), %eax         #  1697  0x82b1e  5      
  leal 0x8(%rax), %edx                #  1698  0x82b23  3      
  nop                                 #  1699  0x82b26  1      
  movl %ecx, %ecx                     #  1700  0x82b27  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  1701  0x82b29  5      
  jmpq .L_82e80                       #  1702  0x82b2e  5      
  nop                                 #  1703  0x82b33  1      
  nop                                 #  1704  0x82b34  1      
.L_83500:                             #        0x82b35  0      
  movq 0x80(%rsp), %rsi               #  1705  0x82b35  8      
  movl %esi, %esi                     #  1706  0x82b3d  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1707  0x82b3f  5      
  leal 0x8(%rdx), %eax                #  1708  0x82b44  3      
  movl %esi, %esi                     #  1709  0x82b47  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1710  0x82b49  5      
  jmpq .L_828a0                       #  1711  0x82b4e  5      
  xchgw %ax, %ax                      #  1712  0x82b53  3      
.L_83520:                             #        0x82b56  0      
  movq 0x80(%rsp), %rsi               #  1713  0x82b56  8      
  movl %esi, %esi                     #  1714  0x82b5e  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1715  0x82b60  5      
  leal 0x8(%rdx), %eax                #  1716  0x82b65  3      
  movl %esi, %esi                     #  1717  0x82b68  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1718  0x82b6a  5      
  jmpq .L_82980                       #  1719  0x82b6f  5      
  xchgw %ax, %ax                      #  1720  0x82b74  3      
.L_83540:                             #        0x82b77  0      
  testl $0x200, %r12d                 #  1721  0x82b77  7      
  je .L_838e0                         #  1722  0x82b7e  6      
  movq 0x80(%rsp), %rax               #  1723  0x82b84  8      
  movl %eax, %eax                     #  1724  0x82b8c  2      
  movl (%r15,%rax,1), %edx            #  1725  0x82b8e  4      
  cmpl $0x2f, %edx                    #  1726  0x82b92  3      
  xchgw %ax, %ax                      #  1727  0x82b95  3      
  ja .L_83d60                         #  1728  0x82b98  6      
  movq %rax, %rcx                     #  1729  0x82b9e  3      
  movl %eax, %eax                     #  1730  0x82ba1  2      
  movl 0xc(%r15,%rax,1), %eax         #  1731  0x82ba3  5      
  addl %edx, %eax                     #  1732  0x82ba8  2      
  addl $0x8, %edx                     #  1733  0x82baa  3      
  movl %ecx, %ecx                     #  1734  0x82bad  2      
  movl %edx, (%r15,%rcx,1)            #  1735  0x82baf  4      
  nop                                 #  1736  0x82bb3  1      
.L_83580:                             #        0x82bb4  0      
  movl %eax, %eax                     #  1737  0x82bb4  2      
  movsbq (%r15,%rax,1), %r13          #  1738  0x82bb6  5      
  jmpq .L_81e80                       #  1739  0x82bbb  5      
  nop                                 #  1740  0x82bc0  1      
  nop                                 #  1741  0x82bc1  1      
.L_835a0:                             #        0x82bc2  0      
  movq 0x80(%rsp), %rsi               #  1742  0x82bc2  8      
  movl %esi, %esi                     #  1743  0x82bca  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1744  0x82bcc  5      
  leal 0x8(%rdx), %eax                #  1745  0x82bd1  3      
  movl %esi, %esi                     #  1746  0x82bd4  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1747  0x82bd6  5      
  jmpq .L_82920                       #  1748  0x82bdb  5      
  xchgw %ax, %ax                      #  1749  0x82be0  3      
.L_835c0:                             #        0x82be3  0      
  testl $0x200, %r12d                 #  1750  0x82be3  7      
  je .L_839a0                         #  1751  0x82bea  6      
  movq 0x80(%rsp), %rax               #  1752  0x82bf0  8      
  movl %eax, %eax                     #  1753  0x82bf8  2      
  movl (%r15,%rax,1), %edx            #  1754  0x82bfa  4      
  cmpl $0x2f, %edx                    #  1755  0x82bfe  3      
  xchgw %ax, %ax                      #  1756  0x82c01  3      
  ja .L_83e20                         #  1757  0x82c04  6      
  movq %rax, %rcx                     #  1758  0x82c0a  3      
  movl %eax, %eax                     #  1759  0x82c0d  2      
  movl 0xc(%r15,%rax,1), %eax         #  1760  0x82c0f  5      
  addl %edx, %eax                     #  1761  0x82c14  2      
  addl $0x8, %edx                     #  1762  0x82c16  3      
  movl %ecx, %ecx                     #  1763  0x82c19  2      
  movl %edx, (%r15,%rcx,1)            #  1764  0x82c1b  4      
  nop                                 #  1765  0x82c1f  1      
.L_83600:                             #        0x82c20  0      
  movl %eax, %eax                     #  1766  0x82c20  2      
  movzbl (%r15,%rax,1), %r13d         #  1767  0x82c22  5      
  movl $0x1, %eax                     #  1768  0x82c27  5      
  testq %r13, %r13                    #  1769  0x82c2c  3      
  setne %dl                           #  1770  0x82c2f  3      
  jmpq .L_82220                       #  1771  0x82c32  5      
  nop                                 #  1772  0x82c37  1      
.L_83620:                             #        0x82c38  0      
  movq 0x80(%rsp), %rdx               #  1773  0x82c38  8      
  movq 0x80(%rsp), %rsi               #  1774  0x82c40  8      
  movl %edx, %edx                     #  1775  0x82c48  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1776  0x82c4a  5      
  leal 0x8(%rcx), %edx                #  1777  0x82c4f  3      
  nop                                 #  1778  0x82c52  1      
  movl %esi, %esi                     #  1779  0x82c53  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1780  0x82c55  5      
  jmpq .L_82120                       #  1781  0x82c5a  5      
  nop                                 #  1782  0x82c5f  1      
  nop                                 #  1783  0x82c60  1      
.L_83660:                             #        0x82c61  0      
  testl $0x200, %r12d                 #  1784  0x82c61  7      
  je .L_83940                         #  1785  0x82c68  6      
  movq 0x80(%rsp), %rax               #  1786  0x82c6e  8      
  movl %eax, %eax                     #  1787  0x82c76  2      
  movl (%r15,%rax,1), %edx            #  1788  0x82c78  4      
  cmpl $0x2f, %edx                    #  1789  0x82c7c  3      
  xchgw %ax, %ax                      #  1790  0x82c7f  3      
  ja .L_83e80                         #  1791  0x82c82  6      
  movq %rax, %rcx                     #  1792  0x82c88  3      
  movl %eax, %eax                     #  1793  0x82c8b  2      
  movl 0xc(%r15,%rax,1), %eax         #  1794  0x82c8d  5      
  addl %edx, %eax                     #  1795  0x82c92  2      
  addl $0x8, %edx                     #  1796  0x82c94  3      
  movl %ecx, %ecx                     #  1797  0x82c97  2      
  movl %edx, (%r15,%rcx,1)            #  1798  0x82c99  4      
  nop                                 #  1799  0x82c9d  1      
.L_836a0:                             #        0x82c9e  0      
  movl %eax, %eax                     #  1800  0x82c9e  2      
  movzbl (%r15,%rax,1), %r13d         #  1801  0x82ca0  5      
  jmpq .L_828c0                       #  1802  0x82ca5  5      
  nop                                 #  1803  0x82caa  1      
  nop                                 #  1804  0x82cab  1      
.L_836c0:                             #        0x82cac  0      
  testl $0x200, %r12d                 #  1805  0x82cac  7      
  je .L_83a00                         #  1806  0x82cb3  6      
  movq 0x80(%rsp), %rdx               #  1807  0x82cb9  8      
  movl %edx, %edx                     #  1808  0x82cc1  2      
  movl (%r15,%rdx,1), %ecx            #  1809  0x82cc3  4      
  cmpl $0x2f, %ecx                    #  1810  0x82cc7  3      
  xchgw %ax, %ax                      #  1811  0x82cca  3      
  ja .L_83da0                         #  1812  0x82ccd  6      
  movq %rdx, %rsi                     #  1813  0x82cd3  3      
  movl %edx, %edx                     #  1814  0x82cd6  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1815  0x82cd8  5      
  addl %ecx, %edx                     #  1816  0x82cdd  2      
  addl $0x8, %ecx                     #  1817  0x82cdf  3      
  movl %esi, %esi                     #  1818  0x82ce2  2      
  movl %ecx, (%r15,%rsi,1)            #  1819  0x82ce4  4      
  nop                                 #  1820  0x82ce8  1      
.L_83700:                             #        0x82ce9  0      
  movl %edx, %edx                     #  1821  0x82ce9  2      
  movzbl (%r15,%rdx,1), %r13d         #  1822  0x82ceb  5      
  jmpq .L_82140                       #  1823  0x82cf0  5      
  nop                                 #  1824  0x82cf5  1      
  nop                                 #  1825  0x82cf6  1      
.L_83720:                             #        0x82cf7  0      
  testb $0x40, %r12b                  #  1826  0x82cf7  4      
  jne .L_83880                        #  1827  0x82cfb  6      
  andl $0x200, %r12d                  #  1828  0x82d01  7      
  je .L_83de0                         #  1829  0x82d08  6      
  movq 0x80(%rsp), %rcx               #  1830  0x82d0e  8      
  nop                                 #  1831  0x82d16  1      
  movl %ecx, %ecx                     #  1832  0x82d17  2      
  movl (%r15,%rcx,1), %edx            #  1833  0x82d19  4      
  cmpl $0x2f, %edx                    #  1834  0x82d1d  3      
  ja .L_83f00                         #  1835  0x82d20  6      
  movl %ecx, %ecx                     #  1836  0x82d26  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1837  0x82d28  5      
  addl %edx, %eax                     #  1838  0x82d2d  2      
  addl $0x8, %edx                     #  1839  0x82d2f  3      
  nop                                 #  1840  0x82d32  1      
  movl %ecx, %ecx                     #  1841  0x82d33  2      
  movl %edx, (%r15,%rcx,1)            #  1842  0x82d35  4      
  nop                                 #  1843  0x82d39  1      
  nop                                 #  1844  0x82d3a  1      
.L_83780:                             #        0x82d3b  0      
  movl %eax, %eax                     #  1845  0x82d3b  2      
  movl (%r15,%rax,1), %eax            #  1846  0x82d3d  4      
  movzbl 0x74(%rsp), %edx             #  1847  0x82d41  5      
  movl %eax, %eax                     #  1848  0x82d46  2      
  movb %dl, (%r15,%rax,1)             #  1849  0x82d48  4      
  jmpq .L_81260                       #  1850  0x82d4c  5      
  nop                                 #  1851  0x82d51  1      
.L_837a0:                             #        0x82d52  0      
  movq 0x80(%rsp), %rsi               #  1852  0x82d52  8      
  movl %esi, %esi                     #  1853  0x82d5a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1854  0x82d5c  5      
  leal 0x8(%rdx), %eax                #  1855  0x82d61  3      
  movl %esi, %esi                     #  1856  0x82d64  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1857  0x82d66  5      
  jmpq .L_82380                       #  1858  0x82d6b  5      
  xchgw %ax, %ax                      #  1859  0x82d70  3      
.L_837c0:                             #        0x82d73  0      
  movl $0x0, 0x68(%rsp)               #  1860  0x82d73  8      
  movq $0x0, 0x90(%rsp)               #  1861  0x82d7b  12     
  movl $0x0, 0xac(%rsp)               #  1862  0x82d87  11     
  nop                                 #  1863  0x82d92  1      
  jmpq .L_82320                       #  1864  0x82d93  5      
  nop                                 #  1865  0x82d98  1      
  nop                                 #  1866  0x82d99  1      
.L_83800:                             #        0x82d9a  0      
  movq 0x80(%rsp), %rsi               #  1867  0x82d9a  8      
  movl %esi, %esi                     #  1868  0x82da2  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1869  0x82da4  5      
  leal 0x8(%rdx), %eax                #  1870  0x82da9  3      
  movl %esi, %esi                     #  1871  0x82dac  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1872  0x82dae  5      
  jmpq .L_81d20                       #  1873  0x82db3  5      
  xchgw %ax, %ax                      #  1874  0x82db8  3      
.L_83820:                             #        0x82dbb  0      
  movl $0x40, %esi                    #  1875  0x82dbb  5      
  movl %r14d, %edi                    #  1876  0x82dc0  3      
  nop                                 #  1877  0x82dc3  1      
  nop                                 #  1878  0x82dc4  1      
  callq ._malloc_r                    #  1879  0x82dc5  5      
  movq 0x78(%rsp), %rcx               #  1880  0x82dca  5      
  movl %eax, %eax                     #  1881  0x82dcf  2      
  testq %rax, %rax                    #  1882  0x82dd1  3      
  movl %ecx, %ecx                     #  1883  0x82dd4  2      
  movl %eax, (%r15,%rcx,1)            #  1884  0x82dd6  4      
  movl %ecx, %ecx                     #  1885  0x82dda  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  1886  0x82ddc  5      
  je .L_83fc0                         #  1887  0x82de1  6      
  nop                                 #  1888  0x82de7  1      
  movq 0x78(%rsp), %rsi               #  1889  0x82de8  5      
  movl %esi, %esi                     #  1890  0x82ded  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  1891  0x82def  9      
  jmpq .L_811a0                       #  1892  0x82df8  5      
  nop                                 #  1893  0x82dfd  1      
.L_83880:                             #        0x82dfe  0      
  movq 0x80(%rsp), %rcx               #  1894  0x82dfe  8      
  movl %ecx, %ecx                     #  1895  0x82e06  2      
  movl (%r15,%rcx,1), %edx            #  1896  0x82e08  4      
  cmpl $0x2f, %edx                    #  1897  0x82e0c  3      
  ja .L_83ce0                         #  1898  0x82e0f  6      
  movl %ecx, %ecx                     #  1899  0x82e15  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1900  0x82e17  5      
  addl %edx, %eax                     #  1901  0x82e1c  2      
  addl $0x8, %edx                     #  1902  0x82e1e  3      
  movl %ecx, %ecx                     #  1903  0x82e21  2      
  movl %edx, (%r15,%rcx,1)            #  1904  0x82e23  4      
  nop                                 #  1905  0x82e27  1      
  nop                                 #  1906  0x82e28  1      
.L_838c0:                             #        0x82e29  0      
  movl %eax, %eax                     #  1907  0x82e29  2      
  movl (%r15,%rax,1), %eax            #  1908  0x82e2b  4      
  movzwl 0x74(%rsp), %edx             #  1909  0x82e2f  5      
  movl %eax, %eax                     #  1910  0x82e34  2      
  movw %dx, (%r15,%rax,1)             #  1911  0x82e36  5      
  jmpq .L_81260                       #  1912  0x82e3b  5      
  nop                                 #  1913  0x82e40  1      
.L_838e0:                             #        0x82e41  0      
  movq 0x80(%rsp), %rax               #  1914  0x82e41  8      
  movl %eax, %eax                     #  1915  0x82e49  2      
  movl (%r15,%rax,1), %edx            #  1916  0x82e4b  4      
  cmpl $0x2f, %edx                    #  1917  0x82e4f  3      
  ja .L_83d80                         #  1918  0x82e52  6      
  movq %rax, %rcx                     #  1919  0x82e58  3      
  nop                                 #  1920  0x82e5b  1      
  movl %eax, %eax                     #  1921  0x82e5c  2      
  movl 0xc(%r15,%rax,1), %eax         #  1922  0x82e5e  5      
  addl %edx, %eax                     #  1923  0x82e63  2      
  addl $0x8, %edx                     #  1924  0x82e65  3      
  movl %ecx, %ecx                     #  1925  0x82e68  2      
  movl %edx, (%r15,%rcx,1)            #  1926  0x82e6a  4      
  nop                                 #  1927  0x82e6e  1      
.L_83920:                             #        0x82e6f  0      
  movl %eax, %eax                     #  1928  0x82e6f  2      
  movslq (%r15,%rax,1), %r13          #  1929  0x82e71  4      
  jmpq .L_81e80                       #  1930  0x82e75  5      
  nop                                 #  1931  0x82e7a  1      
  nop                                 #  1932  0x82e7b  1      
.L_83940:                             #        0x82e7c  0      
  movq 0x80(%rsp), %rax               #  1933  0x82e7c  8      
  movl %eax, %eax                     #  1934  0x82e84  2      
  movl (%r15,%rax,1), %edx            #  1935  0x82e86  4      
  cmpl $0x2f, %edx                    #  1936  0x82e8a  3      
  ja .L_83d40                         #  1937  0x82e8d  6      
  movq %rax, %rcx                     #  1938  0x82e93  3      
  nop                                 #  1939  0x82e96  1      
  movl %eax, %eax                     #  1940  0x82e97  2      
  movl 0xc(%r15,%rax,1), %eax         #  1941  0x82e99  5      
  addl %edx, %eax                     #  1942  0x82e9e  2      
  addl $0x8, %edx                     #  1943  0x82ea0  3      
  movl %ecx, %ecx                     #  1944  0x82ea3  2      
  movl %edx, (%r15,%rcx,1)            #  1945  0x82ea5  4      
  nop                                 #  1946  0x82ea9  1      
.L_83980:                             #        0x82eaa  0      
  movl %eax, %eax                     #  1947  0x82eaa  2      
  movl (%r15,%rax,1), %r13d           #  1948  0x82eac  4      
  jmpq .L_828c0                       #  1949  0x82eb0  5      
  nop                                 #  1950  0x82eb5  1      
  nop                                 #  1951  0x82eb6  1      
.L_839a0:                             #        0x82eb7  0      
  movq 0x80(%rsp), %rax               #  1952  0x82eb7  8      
  movl %eax, %eax                     #  1953  0x82ebf  2      
  movl (%r15,%rax,1), %edx            #  1954  0x82ec1  4      
  cmpl $0x2f, %edx                    #  1955  0x82ec5  3      
  ja .L_83ea0                         #  1956  0x82ec8  6      
  movq %rax, %rcx                     #  1957  0x82ece  3      
  nop                                 #  1958  0x82ed1  1      
  movl %eax, %eax                     #  1959  0x82ed2  2      
  movl 0xc(%r15,%rax,1), %eax         #  1960  0x82ed4  5      
  addl %edx, %eax                     #  1961  0x82ed9  2      
  addl $0x8, %edx                     #  1962  0x82edb  3      
  movl %ecx, %ecx                     #  1963  0x82ede  2      
  movl %edx, (%r15,%rcx,1)            #  1964  0x82ee0  4      
  nop                                 #  1965  0x82ee4  1      
.L_839e0:                             #        0x82ee5  0      
  movl %eax, %eax                     #  1966  0x82ee5  2      
  movl (%r15,%rax,1), %r13d           #  1967  0x82ee7  4      
  movl $0x1, %eax                     #  1968  0x82eeb  5      
  testq %r13, %r13                    #  1969  0x82ef0  3      
  setne %dl                           #  1970  0x82ef3  3      
  jmpq .L_82220                       #  1971  0x82ef6  5      
  nop                                 #  1972  0x82efb  1      
.L_83a00:                             #        0x82efc  0      
  movq 0x80(%rsp), %rdx               #  1973  0x82efc  8      
  movl %edx, %edx                     #  1974  0x82f04  2      
  movl (%r15,%rdx,1), %ecx            #  1975  0x82f06  4      
  cmpl $0x2f, %ecx                    #  1976  0x82f0a  3      
  ja .L_83e40                         #  1977  0x82f0d  6      
  movq %rdx, %rsi                     #  1978  0x82f13  3      
  nop                                 #  1979  0x82f16  1      
  movl %edx, %edx                     #  1980  0x82f17  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1981  0x82f19  5      
  addl %ecx, %edx                     #  1982  0x82f1e  2      
  addl $0x8, %ecx                     #  1983  0x82f20  3      
  movl %esi, %esi                     #  1984  0x82f23  2      
  movl %ecx, (%r15,%rsi,1)            #  1985  0x82f25  4      
  nop                                 #  1986  0x82f29  1      
.L_83a40:                             #        0x82f2a  0      
  movl %edx, %edx                     #  1987  0x82f2a  2      
  movl (%r15,%rdx,1), %r13d           #  1988  0x82f2c  4      
  jmpq .L_82140                       #  1989  0x82f30  5      
  nop                                 #  1990  0x82f35  1      
  nop                                 #  1991  0x82f36  1      
.L_83a60:                             #        0x82f37  0      
  movq 0x80(%rsp), %rsi               #  1992  0x82f37  8      
  movl %esi, %esi                     #  1993  0x82f3f  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1994  0x82f41  5      
  leal 0x8(%rax), %edx                #  1995  0x82f46  3      
  movl %esi, %esi                     #  1996  0x82f49  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1997  0x82f4b  5      
  jmpq .L_82d60                       #  1998  0x82f50  5      
  xchgw %ax, %ax                      #  1999  0x82f55  3      
.L_83a80:                             #        0x82f58  0      
  movq %rax, %rcx                     #  2000  0x82f58  3      
  movl %eax, %eax                     #  2001  0x82f5b  2      
  movl 0xc(%r15,%rax,1), %eax         #  2002  0x82f5d  5      
  addl %edx, %eax                     #  2003  0x82f62  2      
  addl $0x8, %edx                     #  2004  0x82f64  3      
  movl %ecx, %ecx                     #  2005  0x82f67  2      
  movl %edx, (%r15,%rcx,1)            #  2006  0x82f69  4      
  jmpq .L_82aa0                       #  2007  0x82f6d  5      
  nop                                 #  2008  0x82f72  1      
.L_83aa0:                             #        0x82f73  0      
  movq %rax, %rcx                     #  2009  0x82f73  3      
  movl %eax, %eax                     #  2010  0x82f76  2      
  movl 0xc(%r15,%rax,1), %eax         #  2011  0x82f78  5      
  addl %edx, %eax                     #  2012  0x82f7d  2      
  addl $0x8, %edx                     #  2013  0x82f7f  3      
  movl %ecx, %ecx                     #  2014  0x82f82  2      
  movl %edx, (%r15,%rcx,1)            #  2015  0x82f84  4      
  jmpq .L_82ba0                       #  2016  0x82f88  5      
  nop                                 #  2017  0x82f8d  1      
.L_83ac0:                             #        0x82f8e  0      
  movq %rax, %rcx                     #  2018  0x82f8e  3      
  movl %eax, %eax                     #  2019  0x82f91  2      
  movl 0xc(%r15,%rax,1), %eax         #  2020  0x82f93  5      
  addl %edx, %eax                     #  2021  0x82f98  2      
  addl $0x8, %edx                     #  2022  0x82f9a  3      
  movl %ecx, %ecx                     #  2023  0x82f9d  2      
  movl %edx, (%r15,%rcx,1)            #  2024  0x82f9f  4      
  jmpq .L_82c20                       #  2025  0x82fa3  5      
  nop                                 #  2026  0x82fa8  1      
.L_83ae0:                             #        0x82fa9  0      
  movq %rdx, %rsi                     #  2027  0x82fa9  3      
  movl %edx, %edx                     #  2028  0x82fac  2      
  movl 0xc(%r15,%rdx,1), %edx         #  2029  0x82fae  5      
  addl %ecx, %edx                     #  2030  0x82fb3  2      
  addl $0x8, %ecx                     #  2031  0x82fb5  3      
  movl %esi, %esi                     #  2032  0x82fb8  2      
  movl %ecx, (%r15,%rsi,1)            #  2033  0x82fba  4      
  jmpq .L_82d00                       #  2034  0x82fbe  5      
  nop                                 #  2035  0x82fc3  1      
.L_83b00:                             #        0x82fc4  0      
  movl 0x70(%rsp), %esi               #  2036  0x82fc4  4      
  movl %r14d, %edi                    #  2037  0x82fc8  3      
  addl $0x1, %esi                     #  2038  0x82fcb  3      
  xchgw %ax, %ax                      #  2039  0x82fce  3      
  nop                                 #  2040  0x82fd1  1      
  callq ._malloc_r                    #  2041  0x82fd2  5      
  movl %eax, %eax                     #  2042  0x82fd7  2      
  testq %rax, %rax                    #  2043  0x82fd9  3      
  movq %rax, 0x90(%rsp)               #  2044  0x82fdc  8      
  je .L_83fe0                         #  2045  0x82fe4  6      
  movq 0x90(%rsp), %rcx               #  2046  0x82fea  8      
  nop                                 #  2047  0x82ff2  1      
  movq %rcx, 0x98(%rsp)               #  2048  0x82ff3  8      
  jmpq .L_83440                       #  2049  0x82ffb  5      
  nop                                 #  2050  0x83000  1      
  nop                                 #  2051  0x83001  1      
.L_83b60:                             #        0x83002  0      
  cmpl $0x0, 0x70(%rsp)               #  2052  0x83002  5      
  movq $0x0, 0x90(%rsp)               #  2053  0x83007  12     
  cmovnsl 0x70(%rsp), %r13d           #  2054  0x83013  6      
  nop                                 #  2055  0x83019  1      
  movl $0x0, 0xac(%rsp)               #  2056  0x8301a  11     
  movl %r13d, 0x68(%rsp)              #  2057  0x83025  5      
  jmpq .L_82320                       #  2058  0x8302a  5      
  nop                                 #  2059  0x8302f  1      
.L_83ba0:                             #        0x83030  0      
  movl 0xb8(%rsp), %esi               #  2060  0x83030  7      
  subl 0x98(%rsp), %esi               #  2061  0x83037  7      
  movq 0xb0(%rsp), %rcx               #  2062  0x8303e  8      
  movl %esi, 0x70(%rsp)               #  2063  0x83046  4      
  jmpq .L_822e0                       #  2064  0x8304a  5      
  nop                                 #  2065  0x8304f  1      
.L_83bc0:                             #        0x83050  0      
  movl $0x6, 0x70(%rsp)               #  2066  0x83050  8      
  cmpl $0x6, %r8d                     #  2067  0x83058  4      
  cmoval 0x70(%rsp), %r8d             #  2068  0x8305c  6      
  movl $0x0, %eax                     #  2069  0x83062  5      
  nop                                 #  2070  0x83067  1      
  movq $0x10023c12, 0x98(%rsp)        #  2071  0x83068  12     
  testl %r8d, %r8d                    #  2072  0x83074  3      
  movl %r8d, 0x70(%rsp)               #  2073  0x83077  5      
  cmovnsl %r8d, %eax                  #  2074  0x8307c  4      
  movl %eax, 0x68(%rsp)               #  2075  0x83080  4      
  nop                                 #  2076  0x83084  1      
  jmpq .L_814a0                       #  2077  0x83085  5      
  nop                                 #  2078  0x8308a  1      
  nop                                 #  2079  0x8308b  1      
.L_83c20:                             #        0x8308c  0      
  movl 0x98(%rsp), %edi               #  2080  0x8308c  7      
  nop                                 #  2081  0x83093  1      
  nop                                 #  2082  0x83094  1      
  callq .strlen                       #  2083  0x83095  5      
  testl %eax, %eax                    #  2084  0x8309a  2      
  movl %eax, 0x70(%rsp)               #  2085  0x8309c  4      
  movq $0x0, 0x90(%rsp)               #  2086  0x830a0  12     
  cmovnsl %eax, %r13d                 #  2087  0x830ac  4      
  nop                                 #  2088  0x830b0  1      
  movl $0x0, 0xac(%rsp)               #  2089  0x830b1  11     
  movl %r13d, 0x68(%rsp)              #  2090  0x830bc  5      
  jmpq .L_82320                       #  2091  0x830c1  5      
  nop                                 #  2092  0x830c6  1      
.L_83c80:                             #        0x830c7  0      
  movl %r12d, 0x70(%rsp)              #  2093  0x830c7  5      
  movq 0x68(%rsp), %rbx               #  2094  0x830cc  5      
  movl 0x90(%rsp), %r12d              #  2095  0x830d1  8      
  jmpq .L_83400                       #  2096  0x830d9  5      
  nop                                 #  2097  0x830de  1      
.L_83ca0:                             #        0x830df  0      
  movl 0x78(%rsp), %esi               #  2098  0x830df  4      
  leal 0x190(%rsp), %edx              #  2099  0x830e3  7      
  movl %r14d, %edi                    #  2100  0x830ea  3      
  nop                                 #  2101  0x830ed  1      
  callq .__ssprint_r                  #  2102  0x830ee  5      
  testl %eax, %eax                    #  2103  0x830f3  2      
  je .L_82f00                         #  2104  0x830f5  6      
  jmpq .L_82540                       #  2105  0x830fb  5      
  nop                                 #  2106  0x83100  1      
  nop                                 #  2107  0x83101  1      
.L_83ce0:                             #        0x83102  0      
  movq 0x80(%rsp), %rsi               #  2108  0x83102  8      
  movl %esi, %esi                     #  2109  0x8310a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2110  0x8310c  5      
  leal 0x8(%rax), %edx                #  2111  0x83111  3      
  movl %esi, %esi                     #  2112  0x83114  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2113  0x83116  5      
  jmpq .L_838c0                       #  2114  0x8311b  5      
  xchgw %ax, %ax                      #  2115  0x83120  3      
.L_83d00:                             #        0x83123  0      
  movl 0x18(%rsp), %r8d               #  2116  0x83123  5      
  leal 0x1c8(%rsp), %edx              #  2117  0x83128  7      
  xorl %ecx, %ecx                     #  2118  0x8312f  2      
  xorl %esi, %esi                     #  2119  0x83131  2      
  movl %r14d, %edi                    #  2120  0x83133  3      
  nop                                 #  2121  0x83136  1      
  callq ._wcsrtombs_r                 #  2122  0x83137  5      
  cmpl $0xffffffff, %eax              #  2123  0x8313c  5      
  movl %eax, 0x70(%rsp)               #  2124  0x83141  4      
  je .L_83fe0                         #  2125  0x83145  6      
  movl 0x98(%rsp), %ecx               #  2126  0x8314b  7      
  movl %ecx, 0x1c8(%rsp)              #  2127  0x83152  7      
  jmpq .L_83400                       #  2128  0x83159  5      
.L_83d40:                             #        0x8315e  0      
  movq 0x80(%rsp), %rsi               #  2129  0x8315e  8      
  movl %esi, %esi                     #  2130  0x83166  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2131  0x83168  5      
  leal 0x8(%rax), %edx                #  2132  0x8316d  3      
  movl %esi, %esi                     #  2133  0x83170  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2134  0x83172  5      
  jmpq .L_83980                       #  2135  0x83177  5      
  xchgw %ax, %ax                      #  2136  0x8317c  3      
.L_83d60:                             #        0x8317f  0      
  movq 0x80(%rsp), %rsi               #  2137  0x8317f  8      
  movl %esi, %esi                     #  2138  0x83187  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2139  0x83189  5      
  leal 0x8(%rax), %edx                #  2140  0x8318e  3      
  movl %esi, %esi                     #  2141  0x83191  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2142  0x83193  5      
  jmpq .L_83580                       #  2143  0x83198  5      
  xchgw %ax, %ax                      #  2144  0x8319d  3      
.L_83d80:                             #        0x831a0  0      
  movq 0x80(%rsp), %rsi               #  2145  0x831a0  8      
  movl %esi, %esi                     #  2146  0x831a8  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2147  0x831aa  5      
  leal 0x8(%rax), %edx                #  2148  0x831af  3      
  movl %esi, %esi                     #  2149  0x831b2  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2150  0x831b4  5      
  jmpq .L_83920                       #  2151  0x831b9  5      
  xchgw %ax, %ax                      #  2152  0x831be  3      
.L_83da0:                             #        0x831c1  0      
  movq 0x80(%rsp), %rcx               #  2153  0x831c1  8      
  movq 0x80(%rsp), %rsi               #  2154  0x831c9  8      
  movl %ecx, %ecx                     #  2155  0x831d1  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2156  0x831d3  5      
  leal 0x8(%rdx), %ecx                #  2157  0x831d8  3      
  nop                                 #  2158  0x831db  1      
  movl %esi, %esi                     #  2159  0x831dc  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2160  0x831de  5      
  jmpq .L_83700                       #  2161  0x831e3  5      
  nop                                 #  2162  0x831e8  1      
  nop                                 #  2163  0x831e9  1      
.L_83de0:                             #        0x831ea  0      
  movq 0x80(%rsp), %rcx               #  2164  0x831ea  8      
  movl %ecx, %ecx                     #  2165  0x831f2  2      
  movl (%r15,%rcx,1), %edx            #  2166  0x831f4  4      
  cmpl $0x2f, %edx                    #  2167  0x831f8  3      
  ja .L_82a80                         #  2168  0x831fb  6      
  movl %ecx, %ecx                     #  2169  0x83201  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2170  0x83203  5      
  addl %edx, %eax                     #  2171  0x83208  2      
  addl $0x8, %edx                     #  2172  0x8320a  3      
  movl %ecx, %ecx                     #  2173  0x8320d  2      
  movl %edx, (%r15,%rcx,1)            #  2174  0x8320f  4      
  jmpq .L_82aa0                       #  2175  0x83213  5      
  nop                                 #  2176  0x83218  1      
  nop                                 #  2177  0x83219  1      
.L_83e20:                             #        0x8321a  0      
  movq 0x80(%rsp), %rsi               #  2178  0x8321a  8      
  movl %esi, %esi                     #  2179  0x83222  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2180  0x83224  5      
  leal 0x8(%rax), %edx                #  2181  0x83229  3      
  movl %esi, %esi                     #  2182  0x8322c  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2183  0x8322e  5      
  jmpq .L_83600                       #  2184  0x83233  5      
  xchgw %ax, %ax                      #  2185  0x83238  3      
.L_83e40:                             #        0x8323b  0      
  movq 0x80(%rsp), %rcx               #  2186  0x8323b  8      
  movq 0x80(%rsp), %rsi               #  2187  0x83243  8      
  movl %ecx, %ecx                     #  2188  0x8324b  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2189  0x8324d  5      
  leal 0x8(%rdx), %ecx                #  2190  0x83252  3      
  nop                                 #  2191  0x83255  1      
  movl %esi, %esi                     #  2192  0x83256  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2193  0x83258  5      
  jmpq .L_83a40                       #  2194  0x8325d  5      
  nop                                 #  2195  0x83262  1      
  nop                                 #  2196  0x83263  1      
.L_83e80:                             #        0x83264  0      
  movq 0x80(%rsp), %rsi               #  2197  0x83264  8      
  movl %esi, %esi                     #  2198  0x8326c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2199  0x8326e  5      
  leal 0x8(%rax), %edx                #  2200  0x83273  3      
  movl %esi, %esi                     #  2201  0x83276  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2202  0x83278  5      
  jmpq .L_836a0                       #  2203  0x8327d  5      
  xchgw %ax, %ax                      #  2204  0x83282  3      
.L_83ea0:                             #        0x83285  0      
  movq 0x80(%rsp), %rsi               #  2205  0x83285  8      
  movl %esi, %esi                     #  2206  0x8328d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2207  0x8328f  5      
  leal 0x8(%rax), %edx                #  2208  0x83294  3      
  movl %esi, %esi                     #  2209  0x83297  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2210  0x83299  5      
  jmpq .L_839e0                       #  2211  0x8329e  5      
  xchgw %ax, %ax                      #  2212  0x832a3  3      
.L_83ec0:                             #        0x832a6  0      
  movl %r8d, 0x68(%rsp)               #  2213  0x832a6  5      
  movl %r8d, 0x70(%rsp)               #  2214  0x832ab  5      
  movq $0x0, 0x90(%rsp)               #  2215  0x832b0  12     
  nop                                 #  2216  0x832bc  1      
  movl $0x0, 0xac(%rsp)               #  2217  0x832bd  11     
  jmpq .L_82320                       #  2218  0x832c8  5      
  nop                                 #  2219  0x832cd  1      
  nop                                 #  2220  0x832ce  1      
.L_83f00:                             #        0x832cf  0      
  movq 0x80(%rsp), %rsi               #  2221  0x832cf  8      
  movl %esi, %esi                     #  2222  0x832d7  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2223  0x832d9  5      
  leal 0x8(%rax), %edx                #  2224  0x832de  3      
  movl %esi, %esi                     #  2225  0x832e1  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2226  0x832e3  5      
  jmpq .L_83780                       #  2227  0x832e8  5      
  xchgw %ax, %ax                      #  2228  0x832ed  3      
.L_83f20:                             #        0x832f0  0      
  movq 0x80(%rsp), %rsi               #  2229  0x832f0  8      
  movl %esi, %esi                     #  2230  0x832f8  2      
  movl (%r15,%rsi,1), %edx            #  2231  0x832fa  4      
  cmpl $0x2f, %edx                    #  2232  0x832fe  3      
  ja .L_83f80                         #  2233  0x83301  6      
  movl %esi, %esi                     #  2234  0x83307  2      
  movl 0xc(%r15,%rsi,1), %eax         #  2235  0x83309  5      
  addl %edx, %eax                     #  2236  0x8330e  2      
  addl $0x8, %edx                     #  2237  0x83310  3      
  nop                                 #  2238  0x83313  1      
  movl %esi, %esi                     #  2239  0x83314  2      
  movl %edx, (%r15,%rsi,1)            #  2240  0x83316  4      
  nop                                 #  2241  0x8331a  1      
  nop                                 #  2242  0x8331b  1      
.L_83f60:                             #        0x8331c  0      
  movl %eax, %eax                     #  2243  0x8331c  2      
  movl (%r15,%rax,1), %r8d            #  2244  0x8331e  4      
  testl %r8d, %r8d                    #  2245  0x83322  3      
  jns .L_81b00                        #  2246  0x83325  6      
  movl %r13d, %r13d                   #  2247  0x8332b  3      
  movzbl (%r15,%r13,1), %eax          #  2248  0x8332e  5      
  orl $0xffffffff, %r8d               #  2249  0x83333  7      
  jmpq .L_81420                       #  2250  0x8333a  5      
.L_83f80:                             #        0x8333f  0      
  movq 0x80(%rsp), %rdx               #  2251  0x8333f  8      
  movq 0x80(%rsp), %rcx               #  2252  0x83347  8      
  movl %edx, %edx                     #  2253  0x8334f  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2254  0x83351  5      
  leal 0x8(%rax), %edx                #  2255  0x83356  3      
  nop                                 #  2256  0x83359  1      
  movl %ecx, %ecx                     #  2257  0x8335a  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  2258  0x8335c  5      
  jmpq .L_83f60                       #  2259  0x83361  5      
  nop                                 #  2260  0x83366  1      
  nop                                 #  2261  0x83367  1      
.L_83fc0:                             #        0x83368  0      
  movl %r14d, %r14d                   #  2262  0x83368  3      
  movl $0xc, (%r15,%r14,1)            #  2263  0x8336b  8      
  movl $0xffffffff, 0x74(%rsp)        #  2264  0x83373  8      
  jmpq .L_82580                       #  2265  0x8337b  5      
  nop                                 #  2266  0x83380  1      
.L_83fe0:                             #        0x83381  0      
  movq 0x78(%rsp), %rdx               #  2267  0x83381  5      
  movl %edx, %edx                     #  2268  0x83386  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  2269  0x83388  6      
  orl $0x40, %eax                     #  2270  0x8338e  3      
  movl %edx, %edx                     #  2271  0x83391  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  2272  0x83393  6      
  jmpq .L_82560                       #  2273  0x83399  5      
  nop                                 #  2274  0x8339e  1      
  nop                                 #  2275  0x8339f  1      
  nop                                 #  2276  0x833a0  1      
                                                               
.size _svfiprintf_r, .-_svfiprintf_r

