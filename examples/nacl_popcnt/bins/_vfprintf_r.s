  .text
  .globl _vfprintf_r
  .type _vfprintf_r, @function

#! file-offset 0x711c0
#! rip-offset  0x711c0
#! capacity    23136 bytes

# Text                                   #  Line  RIP      Bytes  
._vfprintf_r:                            #        0x711c0  0      
  pushq %r14                             #  1     0x711c0  3      
  movl %edi, %r14d                       #  2     0x711c3  3      
  movl %esi, %esi                        #  3     0x711c6  2      
  movl %ecx, %ecx                        #  4     0x711c8  2      
  movl %r14d, %edi                       #  5     0x711ca  3      
  pushq %r13                             #  6     0x711cd  3      
  pushq %r12                             #  7     0x711d0  3      
  pushq %rbx                             #  8     0x711d3  2      
  movl %edx, %ebx                        #  9     0x711d5  2      
  subl $0x298, %esp                      #  10    0x711d7  6      
  addq %r15, %rsp                        #  11    0x711dd  3      
  nop                                    #  12    0x711e0  1      
  movq %rsi, 0xb8(%rsp)                  #  13    0x711e1  8      
  movq %rcx, 0xc8(%rsp)                  #  14    0x711e9  8      
  nop                                    #  15    0x711f1  1      
  callq ._localeconv_r                   #  16    0x711f2  5      
  movl %eax, %eax                        #  17    0x711f7  2      
  movl %eax, %eax                        #  18    0x711f9  2      
  movl (%r15,%rax,1), %eax               #  19    0x711fb  4      
  movl %eax, %edi                        #  20    0x711ff  2      
  movq %rax, 0x110(%rsp)                 #  21    0x71201  8      
  nop                                    #  22    0x71209  1      
  callq .strlen                          #  23    0x7120a  5      
  movl %eax, 0x124(%rsp)                 #  24    0x7120f  7      
  leal 0x250(%rsp), %eax                 #  25    0x71216  7      
  xorl %esi, %esi                        #  26    0x7121d  2      
  movl $0x8, %edx                        #  27    0x7121f  5      
  movl %eax, %edi                        #  28    0x71224  2      
  movq %rax, 0x78(%rsp)                  #  29    0x71226  5      
  nop                                    #  30    0x7122b  1      
  nop                                    #  31    0x7122c  1      
  nop                                    #  32    0x7122d  1      
  callq .memset                          #  33    0x7122e  5      
  testq %r14, %r14                       #  34    0x71233  3      
  je .L_71280                            #  35    0x71236  6      
  movl %r14d, %r14d                      #  36    0x7123c  3      
  movl 0x38(%r15,%r14,1), %edi           #  37    0x7123f  5      
  testl %edi, %edi                       #  38    0x71244  2      
  je .L_71fc0                            #  39    0x71246  6      
  nop                                    #  40    0x7124c  1      
.L_71280:                                #        0x7124d  0      
  movq 0xb8(%rsp), %rcx                  #  41    0x7124d  8      
  movl %ecx, %ecx                        #  42    0x71255  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  43    0x71257  6      
  movswl %dx, %eax                       #  44    0x7125d  3      
  testb $0x2, %ah                        #  45    0x71260  3      
  je .L_71f40                            #  46    0x71263  6      
  nop                                    #  47    0x71269  1      
.L_712a0:                                #        0x7126a  0      
  testb $0x20, %ah                       #  48    0x7126a  3      
  jne .L_712e0                           #  49    0x7126d  6      
  movq 0xb8(%rsp), %rax                  #  50    0x71273  8      
  orb $0x20, %dh                         #  51    0x7127b  3      
  movl %eax, %eax                        #  52    0x7127e  2      
  movw %dx, 0xc(%r15,%rax,1)             #  53    0x71280  6      
  nop                                    #  54    0x71286  1      
  movl %eax, %eax                        #  55    0x71287  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  56    0x71289  9      
  movswl %dx, %eax                       #  57    0x71292  3      
  nop                                    #  58    0x71295  1      
  nop                                    #  59    0x71296  1      
.L_712e0:                                #        0x71297  0      
  testb $0x8, %al                        #  60    0x71297  2      
  je .L_71e40                            #  61    0x71299  6      
  movq 0xb8(%rsp), %rdx                  #  62    0x7129f  8      
  movl %edx, %edx                        #  63    0x712a7  2      
  movl 0x10(%r15,%rdx,1), %esi           #  64    0x712a9  5      
  testl %esi, %esi                       #  65    0x712ae  2      
  je .L_71e40                            #  66    0x712b0  6      
  nop                                    #  67    0x712b6  1      
  movl %eax, %edx                        #  68    0x712b7  2      
  andl $0x1a, %edx                       #  69    0x712b9  3      
  cmpl $0xa, %edx                        #  70    0x712bc  3      
  je .L_71ea0                            #  71    0x712bf  6      
  nop                                    #  72    0x712c5  1      
  nop                                    #  73    0x712c6  1      
.L_71320:                                #        0x712c7  0      
  leal 0x1d0(%rsp), %eax                 #  74    0x712c7  7      
  leal 0x160(%rsp), %ecx                 #  75    0x712ce  7      
  leal 0x278(%rsp), %edx                 #  76    0x712d5  7      
  movq %rbx, 0xa8(%rsp)                  #  77    0x712dc  8      
  nop                                    #  78    0x712e4  1      
  leal 0x1d0(%rsp), %ebx                 #  79    0x712e5  7      
  movl $0x0, 0x218(%rsp)                 #  80    0x712ec  11     
  movq %rax, 0x70(%rsp)                  #  81    0x712f7  5      
  movl %eax, 0x210(%rsp)                 #  82    0x712fc  7      
  xorl %eax, %eax                        #  83    0x71303  2      
  movq %rax, 0x128(%rsp)                 #  84    0x71305  8      
  movq %rcx, 0x68(%rsp)                  #  85    0x7130d  5      
  movl 0x68(%rsp), %eax                  #  86    0x71312  4      
  movl $0x0, 0x214(%rsp)                 #  87    0x71316  11     
  nop                                    #  88    0x71321  1      
  movl $0x0, 0x10c(%rsp)                 #  89    0x71322  11     
  movq $0x0, 0x138(%rsp)                 #  90    0x7132d  12     
  nop                                    #  91    0x71339  1      
  movl $0x0, 0x134(%rsp)                 #  92    0x7133a  11     
  movq $0x0, 0xe8(%rsp)                  #  93    0x71345  12     
  addl $0x64, %eax                       #  94    0x71351  3      
  nop                                    #  95    0x71354  1      
  movl $0x0, 0x130(%rsp)                 #  96    0x71355  11     
  movq $0x0, 0x140(%rsp)                 #  97    0x71360  12     
  movl %eax, %eax                        #  98    0x7136c  2      
  nop                                    #  99    0x7136e  1      
  movl $0x0, 0xd0(%rsp)                  #  100   0x7136f  11     
  movq %rdx, 0x60(%rsp)                  #  101   0x7137a  5      
  movl %eax, %esi                        #  102   0x7137f  2      
  movq %rax, 0x100(%rsp)                 #  103   0x71381  8      
  nop                                    #  104   0x71389  1      
  leal 0x290(%rsp), %eax                 #  105   0x7138a  7      
  subl $0x1, %esi                        #  106   0x71391  3      
  subl $0x69, %eax                       #  107   0x71394  3      
  movq %rsi, 0x148(%rsp)                 #  108   0x71397  8      
  movq %rax, 0x158(%rsp)                 #  109   0x7139f  8      
  nop                                    #  110   0x713a7  1      
.L_71420:                                #        0x713a8  0      
  movq 0xa8(%rsp), %r12                  #  111   0x713a8  8      
  movq %rbx, %r13                        #  112   0x713b0  3      
  jmpq .L_71480                          #  113   0x713b3  5      
  nop                                    #  114   0x713b8  1      
  nop                                    #  115   0x713b9  1      
.L_71440:                                #        0x713ba  0      
  cmpl $0x25, 0x278(%rsp)                #  116   0x713ba  8      
  je .L_71540                            #  117   0x713c2  6      
  nop                                    #  118   0x713c8  1      
  nop                                    #  119   0x713c9  1      
.L_71460:                                #        0x713ca  0      
  leal (%rax,%r12,1), %r12d              #  120   0x713ca  4      
  nop                                    #  121   0x713ce  1      
  nop                                    #  122   0x713cf  1      
.L_71480:                                #        0x713d0  0      
  movl 0xffbf7ea(%rip), %ebx             #  123   0x713d0  6      
  nop                                    #  124   0x713d6  1      
  nop                                    #  125   0x713d7  1      
  callq .__locale_charset                #  126   0x713d8  5      
  movl %eax, %r8d                        #  127   0x713dd  3      
  movq %r8, 0x80(%rsp)                   #  128   0x713e0  8      
  nop                                    #  129   0x713e8  1      
  nop                                    #  130   0x713e9  1      
  callq .__locale_mb_cur_max             #  131   0x713ea  5      
  movl 0x78(%rsp), %r9d                  #  132   0x713ef  5      
  movl %eax, %ecx                        #  133   0x713f4  2      
  movq 0x80(%rsp), %r8                   #  134   0x713f6  8      
  movl %r12d, %edx                       #  135   0x713fe  3      
  movl 0x60(%rsp), %esi                  #  136   0x71401  4      
  movl %r14d, %edi                       #  137   0x71405  3      
  nop                                    #  138   0x71408  1      
  nop                                    #  139   0x71409  1      
  nop                                    #  140   0x7140a  1      
  andl $0xffffffe0, %ebx                 #  141   0x7140b  6      
  addq %r15, %rbx                        #  142   0x71411  3      
  callq %rbx                             #  143   0x71414  2      
  cmpl $0x0, %eax                        #  144   0x71416  3      
  je .L_71540                            #  145   0x71419  6      
  jge .L_71440                           #  146   0x7141f  6      
  movl 0x78(%rsp), %edi                  #  147   0x71425  4      
  movl $0x8, %edx                        #  148   0x71429  5      
  xorl %esi, %esi                        #  149   0x7142e  2      
  nop                                    #  150   0x71430  1      
  callq .memset                          #  151   0x71431  5      
  movl $0x1, %eax                        #  152   0x71436  5      
  jmpq .L_71460                          #  153   0x7143b  5      
  nop                                    #  154   0x71440  1      
  nop                                    #  155   0x71441  1      
.L_71540:                                #        0x71442  0      
  movl %r12d, %ecx                       #  156   0x71442  3      
  subl 0xa8(%rsp), %ecx                  #  157   0x71445  7      
  movq %r13, %rbx                        #  158   0x7144c  3      
  movl %eax, %r13d                       #  159   0x7144f  3      
  je .L_715c0                            #  160   0x71452  6      
  movl %ebx, %ebx                        #  161   0x71458  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  162   0x7145a  5      
  movl 0x214(%rsp), %eax                 #  163   0x7145f  7      
  movl 0xa8(%rsp), %edx                  #  164   0x71466  7      
  addl %ecx, 0x218(%rsp)                 #  165   0x7146d  7      
  addl $0x1, %eax                        #  166   0x71474  3      
  cmpl $0x7, %eax                        #  167   0x71477  3      
  movl %ebx, %ebx                        #  168   0x7147a  2      
  movl %edx, (%r15,%rbx,1)               #  169   0x7147c  4      
  nop                                    #  170   0x71480  1      
  movl %eax, 0x214(%rsp)                 #  171   0x71481  7      
  jg .L_71f80                            #  172   0x71488  6      
  addl $0x8, %ebx                        #  173   0x7148e  3      
  nop                                    #  174   0x71491  1      
  nop                                    #  175   0x71492  1      
.L_715a0:                                #        0x71493  0      
  addl %ecx, 0xd0(%rsp)                  #  176   0x71493  7      
  nop                                    #  177   0x7149a  1      
  nop                                    #  178   0x7149b  1      
.L_715c0:                                #        0x7149c  0      
  testl %r13d, %r13d                     #  179   0x7149c  3      
  je .L_753e0                            #  180   0x7149f  6      
  addl $0x1, %r12d                       #  181   0x714a5  4      
  movl $0xffffffff, %r10d                #  182   0x714a9  6      
  movb $0x0, 0x28f(%rsp)                 #  183   0x714af  8      
  xorl %r13d, %r13d                      #  184   0x714b7  3      
  xchgw %ax, %ax                         #  185   0x714ba  3      
  movl %r12d, %r12d                      #  186   0x714bd  3      
  movzbl (%r15,%r12,1), %eax             #  187   0x714c0  5      
  movl %r10d, %edx                       #  188   0x714c5  3      
  movl $0x0, 0xd4(%rsp)                  #  189   0x714c8  11     
  nop                                    #  190   0x714d3  1      
.L_71600:                                #        0x714d4  0      
  movsbl %al, %eax                       #  191   0x714d4  3      
  addl $0x1, %r12d                       #  192   0x714d7  4      
  nop                                    #  193   0x714db  1      
  nop                                    #  194   0x714dc  1      
.L_71620:                                #        0x714dd  0      
  leal -0x20(%rax), %ecx                 #  195   0x714dd  3      
  cmpl $0x5a, %ecx                       #  196   0x714e0  3      
  jbe .L_71d80                           #  197   0x714e3  6      
  nop                                    #  198   0x714e9  1      
  nop                                    #  199   0x714ea  1      
  testl %eax, %eax                       #  200   0x714eb  2      
  movl %eax, 0xf8(%rsp)                  #  201   0x714ed  7      
  je .L_753e0                            #  202   0x714f4  6      
  leal 0x160(%rsp), %edx                 #  203   0x714fa  7      
  movb %al, 0x160(%rsp)                  #  204   0x71501  7      
  nop                                    #  205   0x71508  1      
  movb $0x0, 0x28f(%rsp)                 #  206   0x71509  8      
  xorl %eax, %eax                        #  207   0x71511  2      
  movl $0x1, 0xb0(%rsp)                  #  208   0x71513  11     
  nop                                    #  209   0x7151e  1      
  movq $0x0, 0xe0(%rsp)                  #  210   0x7151f  12     
  movq %rdx, 0xa8(%rsp)                  #  211   0x7152b  8      
  movl $0x1, 0xc4(%rsp)                  #  212   0x71533  11     
  nop                                    #  213   0x7153e  1      
  movl $0x0, 0xfc(%rsp)                  #  214   0x7153f  11     
  movl $0x0, 0x108(%rsp)                 #  215   0x7154a  11     
  nop                                    #  216   0x71555  1      
  movl $0x0, 0x120(%rsp)                 #  217   0x71556  11     
  movl $0x0, 0x11c(%rsp)                 #  218   0x71561  11     
  nop                                    #  219   0x7156c  1      
.L_716e0:                                #        0x7156d  0      
  movl 0xb0(%rsp), %edx                  #  220   0x7156d  7      
  movl %r13d, %ecx                       #  221   0x71574  3      
  movl %r13d, %esi                       #  222   0x71577  3      
  addl $0x2, %edx                        #  223   0x7157a  3      
  andl $0x2, %ecx                        #  224   0x7157d  3      
  cmovel 0xb0(%rsp), %edx                #  225   0x71580  8      
  nop                                    #  226   0x71588  1      
  andl $0x84, %esi                       #  227   0x71589  3      
  movl %ecx, 0xd8(%rsp)                  #  228   0x7158c  7      
  movl %esi, 0xf4(%rsp)                  #  229   0x71593  7      
  movl %edx, 0xb0(%rsp)                  #  230   0x7159a  7      
  nop                                    #  231   0x715a1  1      
  jne .L_71880                           #  232   0x715a2  6      
  movl 0xd4(%rsp), %ecx                  #  233   0x715a8  7      
  subl %edx, %ecx                        #  234   0x715af  2      
  testl %ecx, %ecx                       #  235   0x715b1  2      
  jle .L_71880                           #  236   0x715b3  6      
  cmpl $0x10, %ecx                       #  237   0x715b9  3      
  jle .L_71840                           #  238   0x715bc  6      
  leal 0x210(%rsp), %eax                 #  239   0x715c2  7      
  movl %r13d, 0x154(%rsp)                #  240   0x715c9  8      
  movq %r12, %r13                        #  241   0x715d1  3      
  movq 0xb8(%rsp), %r12                  #  242   0x715d4  8      
  movq %rax, 0x50(%rsp)                  #  243   0x715dc  5      
  nop                                    #  244   0x715e1  1      
  movq %rbx, %rax                        #  245   0x715e2  3      
  movl %ecx, %ebx                        #  246   0x715e5  2      
  jmpq .L_717a0                          #  247   0x715e7  5      
  nop                                    #  248   0x715ec  1      
  nop                                    #  249   0x715ed  1      
.L_71780:                                #        0x715ee  0      
  subl $0x10, %ebx                       #  250   0x715ee  3      
  addl $0x8, %eax                        #  251   0x715f1  3      
  cmpl $0x10, %ebx                       #  252   0x715f4  3      
  jle .L_71820                           #  253   0x715f7  6      
  xchgw %ax, %ax                         #  254   0x715fd  3      
  nop                                    #  255   0x71600  1      
.L_717a0:                                #        0x71601  0      
  movl %eax, %eax                        #  256   0x71601  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  257   0x71603  9      
  movl 0x214(%rsp), %edx                 #  258   0x7160c  7      
  addl $0x10, 0x218(%rsp)                #  259   0x71613  8      
  nop                                    #  260   0x7161b  1      
  movl %eax, %eax                        #  261   0x7161c  2      
  movl $0x10024240, (%r15,%rax,1)        #  262   0x7161e  8      
  addl $0x1, %edx                        #  263   0x71626  3      
  cmpl $0x7, %edx                        #  264   0x71629  3      
  movl %edx, 0x214(%rsp)                 #  265   0x7162c  7      
  jle .L_71780                           #  266   0x71633  6      
  movl 0x50(%rsp), %edx                  #  267   0x71639  4      
  movl %r12d, %esi                       #  268   0x7163d  3      
  movl %r14d, %edi                       #  269   0x71640  3      
  nop                                    #  270   0x71643  1      
  nop                                    #  271   0x71644  1      
  callq .__sprint_r                      #  272   0x71645  5      
  testl %eax, %eax                       #  273   0x7164a  2      
  jne .L_72ca0                           #  274   0x7164c  6      
  subl $0x10, %ebx                       #  275   0x71652  3      
  leal 0x1d0(%rsp), %eax                 #  276   0x71655  7      
  cmpl $0x10, %ebx                       #  277   0x7165c  3      
  jg .L_717a0                            #  278   0x7165f  6      
  nop                                    #  279   0x71665  1      
.L_71820:                                #        0x71666  0      
  movq %r13, %r12                        #  280   0x71666  3      
  movl 0x154(%rsp), %r13d                #  281   0x71669  8      
  movl %ebx, %ecx                        #  282   0x71671  2      
  movq %rax, %rbx                        #  283   0x71673  3      
  nop                                    #  284   0x71676  1      
  nop                                    #  285   0x71677  1      
.L_71840:                                #        0x71678  0      
  movl %ebx, %ebx                        #  286   0x71678  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  287   0x7167a  5      
  movl 0x214(%rsp), %eax                 #  288   0x7167f  7      
  addl %ecx, 0x218(%rsp)                 #  289   0x71686  7      
  movl %ebx, %ebx                        #  290   0x7168d  2      
  movl $0x10024240, (%r15,%rbx,1)        #  291   0x7168f  8      
  nop                                    #  292   0x71697  1      
  addl $0x1, %eax                        #  293   0x71698  3      
  cmpl $0x7, %eax                        #  294   0x7169b  3      
  movl %eax, 0x214(%rsp)                 #  295   0x7169e  7      
  jg .L_73720                            #  296   0x716a5  6      
  movzbl 0x28f(%rsp), %eax               #  297   0x716ab  8      
  addl $0x8, %ebx                        #  298   0x716b3  3      
  xchgw %ax, %ax                         #  299   0x716b6  3      
.L_71880:                                #        0x716b9  0      
  testb %al, %al                         #  300   0x716b9  2      
  je .L_718e0                            #  301   0x716bb  6      
  leal 0x28f(%rsp), %eax                 #  302   0x716c1  7      
  movl %ebx, %ebx                        #  303   0x716c8  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  304   0x716ca  9      
  addl $0x1, 0x218(%rsp)                 #  305   0x716d3  8      
  xchgw %ax, %ax                         #  306   0x716db  3      
  movl %ebx, %ebx                        #  307   0x716de  2      
  movl %eax, (%r15,%rbx,1)               #  308   0x716e0  4      
  movl 0x214(%rsp), %eax                 #  309   0x716e4  7      
  addl $0x1, %eax                        #  310   0x716eb  3      
  cmpl $0x7, %eax                        #  311   0x716ee  3      
  movl %eax, 0x214(%rsp)                 #  312   0x716f1  7      
  jg .L_733c0                            #  313   0x716f8  6      
  addl $0x8, %ebx                        #  314   0x716fe  3      
  nop                                    #  315   0x71701  1      
  nop                                    #  316   0x71702  1      
.L_718e0:                                #        0x71703  0      
  movl 0xd8(%rsp), %r9d                  #  317   0x71703  8      
  testl %r9d, %r9d                       #  318   0x7170b  3      
  je .L_71940                            #  319   0x7170e  6      
  leal 0x280(%rsp), %eax                 #  320   0x71714  7      
  movl %ebx, %ebx                        #  321   0x7171b  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  322   0x7171d  9      
  nop                                    #  323   0x71726  1      
  addl $0x2, 0x218(%rsp)                 #  324   0x71727  8      
  movl %ebx, %ebx                        #  325   0x7172f  2      
  movl %eax, (%r15,%rbx,1)               #  326   0x71731  4      
  movl 0x214(%rsp), %eax                 #  327   0x71735  7      
  addl $0x1, %eax                        #  328   0x7173c  3      
  cmpl $0x7, %eax                        #  329   0x7173f  3      
  nop                                    #  330   0x71742  1      
  movl %eax, 0x214(%rsp)                 #  331   0x71743  7      
  jg .L_73400                            #  332   0x7174a  6      
  addl $0x8, %ebx                        #  333   0x71750  3      
  nop                                    #  334   0x71753  1      
  nop                                    #  335   0x71754  1      
.L_71940:                                #        0x71755  0      
  cmpl $0x80, 0xf4(%rsp)                 #  336   0x71755  8      
  je .L_72fe0                            #  337   0x7175d  6      
  nop                                    #  338   0x71763  1      
.L_71960:                                #        0x71764  0      
  movl 0xfc(%rsp), %ecx                  #  339   0x71764  7      
  subl 0xc4(%rsp), %ecx                  #  340   0x7176b  7      
  testl %ecx, %ecx                       #  341   0x71772  2      
  jle .L_71ac0                           #  342   0x71774  6      
  cmpl $0x10, %ecx                       #  343   0x7177a  3      
  jle .L_71a80                           #  344   0x7177d  6      
  nop                                    #  345   0x71783  1      
  leal 0x210(%rsp), %esi                 #  346   0x71784  7      
  movq %rbx, %rax                        #  347   0x7178b  3      
  movl %r13d, 0xd8(%rsp)                 #  348   0x7178e  8      
  movl %ecx, %ebx                        #  349   0x71796  2      
  movq %r12, %r13                        #  350   0x71798  3      
  movq 0xb8(%rsp), %r12                  #  351   0x7179b  8      
  nop                                    #  352   0x717a3  1      
  movq %rsi, 0x40(%rsp)                  #  353   0x717a4  5      
  jmpq .L_719e0                          #  354   0x717a9  5      
  nop                                    #  355   0x717ae  1      
  nop                                    #  356   0x717af  1      
.L_719c0:                                #        0x717b0  0      
  subl $0x10, %ebx                       #  357   0x717b0  3      
  addl $0x8, %eax                        #  358   0x717b3  3      
  cmpl $0x10, %ebx                       #  359   0x717b6  3      
  jle .L_71a60                           #  360   0x717b9  6      
  xchgw %ax, %ax                         #  361   0x717bf  3      
  nop                                    #  362   0x717c2  1      
.L_719e0:                                #        0x717c3  0      
  movl %eax, %eax                        #  363   0x717c3  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  364   0x717c5  9      
  movl 0x214(%rsp), %edx                 #  365   0x717ce  7      
  addl $0x10, 0x218(%rsp)                #  366   0x717d5  8      
  nop                                    #  367   0x717dd  1      
  movl %eax, %eax                        #  368   0x717de  2      
  movl $0x10024230, (%r15,%rax,1)        #  369   0x717e0  8      
  addl $0x1, %edx                        #  370   0x717e8  3      
  cmpl $0x7, %edx                        #  371   0x717eb  3      
  movl %edx, 0x214(%rsp)                 #  372   0x717ee  7      
  jle .L_719c0                           #  373   0x717f5  6      
  movl 0x40(%rsp), %edx                  #  374   0x717fb  4      
  movl %r12d, %esi                       #  375   0x717ff  3      
  movl %r14d, %edi                       #  376   0x71802  3      
  nop                                    #  377   0x71805  1      
  nop                                    #  378   0x71806  1      
  callq .__sprint_r                      #  379   0x71807  5      
  testl %eax, %eax                       #  380   0x7180c  2      
  jne .L_72ca0                           #  381   0x7180e  6      
  subl $0x10, %ebx                       #  382   0x71814  3      
  leal 0x1d0(%rsp), %eax                 #  383   0x71817  7      
  cmpl $0x10, %ebx                       #  384   0x7181e  3      
  jg .L_719e0                            #  385   0x71821  6      
  nop                                    #  386   0x71827  1      
.L_71a60:                                #        0x71828  0      
  movq %r13, %r12                        #  387   0x71828  3      
  movl 0xd8(%rsp), %r13d                 #  388   0x7182b  8      
  movl %ebx, %ecx                        #  389   0x71833  2      
  movq %rax, %rbx                        #  390   0x71835  3      
  nop                                    #  391   0x71838  1      
  nop                                    #  392   0x71839  1      
.L_71a80:                                #        0x7183a  0      
  movl %ebx, %ebx                        #  393   0x7183a  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  394   0x7183c  5      
  movl 0x214(%rsp), %eax                 #  395   0x71841  7      
  addl %ecx, 0x218(%rsp)                 #  396   0x71848  7      
  movl %ebx, %ebx                        #  397   0x7184f  2      
  movl $0x10024230, (%r15,%rbx,1)        #  398   0x71851  8      
  nop                                    #  399   0x71859  1      
  addl $0x1, %eax                        #  400   0x7185a  3      
  cmpl $0x7, %eax                        #  401   0x7185d  3      
  movl %eax, 0x214(%rsp)                 #  402   0x71860  7      
  jg .L_73380                            #  403   0x71867  6      
  addl $0x8, %ebx                        #  404   0x7186d  3      
  nop                                    #  405   0x71870  1      
.L_71ac0:                                #        0x71871  0      
  testl $0x100, %r13d                    #  406   0x71871  7      
  jne .L_72d40                           #  407   0x71878  6      
  movl 0xc4(%rsp), %edx                  #  408   0x7187e  7      
  movl 0xa8(%rsp), %eax                  #  409   0x71885  7      
  nop                                    #  410   0x7188c  1      
  movl %ebx, %ebx                        #  411   0x7188d  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  412   0x7188f  5      
  addl %edx, 0x218(%rsp)                 #  413   0x71894  7      
  movl %ebx, %ebx                        #  414   0x7189b  2      
  movl %eax, (%r15,%rbx,1)               #  415   0x7189d  4      
  nop                                    #  416   0x718a1  1      
.L_71b00:                                #        0x718a2  0      
  movl 0x214(%rsp), %eax                 #  417   0x718a2  7      
  addl $0x1, %eax                        #  418   0x718a9  3      
  cmpl $0x7, %eax                        #  419   0x718ac  3      
  movl %eax, 0x214(%rsp)                 #  420   0x718af  7      
  jg .L_73300                            #  421   0x718b6  6      
  addl $0x8, %ebx                        #  422   0x718bc  3      
  nop                                    #  423   0x718bf  1      
.L_71b20:                                #        0x718c0  0      
  andl $0x4, %r13d                       #  424   0x718c0  4      
  je .L_71cc0                            #  425   0x718c4  6      
  movl 0xd4(%rsp), %r13d                 #  426   0x718ca  8      
  subl 0xb0(%rsp), %r13d                 #  427   0x718d2  8      
  testl %r13d, %r13d                     #  428   0x718da  3      
  nop                                    #  429   0x718dd  1      
  jle .L_71cc0                           #  430   0x718de  6      
  cmpl $0x10, %r13d                      #  431   0x718e4  4      
  jle .L_71c40                           #  432   0x718e8  6      
  leal 0x210(%rsp), %ecx                 #  433   0x718ee  7      
  movq %rbx, %rax                        #  434   0x718f5  3      
  nop                                    #  435   0x718f8  1      
  movq 0xb8(%rsp), %rbx                  #  436   0x718f9  8      
  movq %rcx, 0x8(%rsp)                   #  437   0x71901  5      
  jmpq .L_71ba0                          #  438   0x71906  5      
  xchgw %ax, %ax                         #  439   0x7190b  3      
  nop                                    #  440   0x7190e  1      
.L_71b80:                                #        0x7190f  0      
  subl $0x10, %r13d                      #  441   0x7190f  4      
  addl $0x8, %eax                        #  442   0x71913  3      
  cmpl $0x10, %r13d                      #  443   0x71916  4      
  jle .L_71c20                           #  444   0x7191a  6      
  nop                                    #  445   0x71920  1      
.L_71ba0:                                #        0x71921  0      
  movl %eax, %eax                        #  446   0x71921  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  447   0x71923  9      
  movl 0x214(%rsp), %edx                 #  448   0x7192c  7      
  addl $0x10, 0x218(%rsp)                #  449   0x71933  8      
  nop                                    #  450   0x7193b  1      
  movl %eax, %eax                        #  451   0x7193c  2      
  movl $0x10024240, (%r15,%rax,1)        #  452   0x7193e  8      
  addl $0x1, %edx                        #  453   0x71946  3      
  cmpl $0x7, %edx                        #  454   0x71949  3      
  movl %edx, 0x214(%rsp)                 #  455   0x7194c  7      
  jle .L_71b80                           #  456   0x71953  6      
  movl 0x8(%rsp), %edx                   #  457   0x71959  4      
  movl %ebx, %esi                        #  458   0x7195d  2      
  nop                                    #  459   0x7195f  1      
  movl %r14d, %edi                       #  460   0x71960  3      
  nop                                    #  461   0x71963  1      
  nop                                    #  462   0x71964  1      
  callq .__sprint_r                      #  463   0x71965  5      
  testl %eax, %eax                       #  464   0x7196a  2      
  jne .L_72ca0                           #  465   0x7196c  6      
  subl $0x10, %r13d                      #  466   0x71972  4      
  leal 0x1d0(%rsp), %eax                 #  467   0x71976  7      
  cmpl $0x10, %r13d                      #  468   0x7197d  4      
  jg .L_71ba0                            #  469   0x71981  6      
  nop                                    #  470   0x71987  1      
.L_71c20:                                #        0x71988  0      
  movq %rax, %rbx                        #  471   0x71988  3      
  nop                                    #  472   0x7198b  1      
  nop                                    #  473   0x7198c  1      
.L_71c40:                                #        0x7198d  0      
  movl %ebx, %ebx                        #  474   0x7198d  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  475   0x7198f  5      
  movl 0x214(%rsp), %eax                 #  476   0x71994  7      
  addl 0x218(%rsp), %r13d                #  477   0x7199b  8      
  movl %ebx, %ebx                        #  478   0x719a3  2      
  movl $0x10024240, (%r15,%rbx,1)        #  479   0x719a5  8      
  addl $0x1, %eax                        #  480   0x719ad  3      
  cmpl $0x7, %eax                        #  481   0x719b0  3      
  movl %eax, 0x214(%rsp)                 #  482   0x719b3  7      
  movl %r13d, 0x218(%rsp)                #  483   0x719ba  8      
  jle .L_71ce0                           #  484   0x719c2  6      
  movl 0xb8(%rsp), %esi                  #  485   0x719c8  7      
  xchgw %ax, %ax                         #  486   0x719cf  3      
  leal 0x210(%rsp), %edx                 #  487   0x719d2  7      
  movl %r14d, %edi                       #  488   0x719d9  3      
  xchgw %ax, %ax                         #  489   0x719dc  3      
  nop                                    #  490   0x719df  1      
  callq .__sprint_r                      #  491   0x719e0  5      
  testl %eax, %eax                       #  492   0x719e5  2      
  jne .L_72ca0                           #  493   0x719e7  6      
  nop                                    #  494   0x719ed  1      
  nop                                    #  495   0x719ee  1      
.L_71cc0:                                #        0x719ef  0      
  movl 0x218(%rsp), %r13d                #  496   0x719ef  8      
  nop                                    #  497   0x719f7  1      
  nop                                    #  498   0x719f8  1      
.L_71ce0:                                #        0x719f9  0      
  movl 0xd4(%rsp), %ebx                  #  499   0x719f9  7      
  cmpl %ebx, 0xb0(%rsp)                  #  500   0x71a00  7      
  movl %ebx, %eax                        #  501   0x71a07  2      
  cmovgel 0xb0(%rsp), %eax               #  502   0x71a09  8      
  addl %eax, 0xd0(%rsp)                  #  503   0x71a11  7      
  nop                                    #  504   0x71a18  1      
  testl %r13d, %r13d                     #  505   0x71a19  3      
  jne .L_73340                           #  506   0x71a1c  6      
  nop                                    #  507   0x71a22  1      
  nop                                    #  508   0x71a23  1      
.L_71d20:                                #        0x71a24  0      
  cmpq $0x0, 0xe0(%rsp)                  #  509   0x71a24  9      
  movl $0x0, 0x214(%rsp)                 #  510   0x71a2d  11     
  leal 0x1d0(%rsp), %ebx                 #  511   0x71a38  7      
  nop                                    #  512   0x71a3f  1      
  je .L_71d60                            #  513   0x71a40  6      
  movl 0xe0(%rsp), %esi                  #  514   0x71a46  7      
  leal 0x1d0(%rsp), %ebx                 #  515   0x71a4d  7      
  movl %r14d, %edi                       #  516   0x71a54  3      
  nop                                    #  517   0x71a57  1      
  callq ._free_r                         #  518   0x71a58  5      
.L_71d60:                                #        0x71a5d  0      
  movq %r12, 0xa8(%rsp)                  #  519   0x71a5d  8      
  jmpq .L_71420                          #  520   0x71a65  5      
  nop                                    #  521   0x71a6a  1      
  nop                                    #  522   0x71a6b  1      
.L_71d80:                                #        0x71a6c  0      
  movl %ecx, %ecx                        #  523   0x71a6c  2      
  movl %ecx, %ecx                        #  524   0x71a6e  2      
  movq 0x10023f50(%r15,%rcx,8), %rcx     #  525   0x71a70  8      
  andl $0xffffffe0, %ecx                 #  526   0x71a78  6      
  addq %r15, %rcx                        #  527   0x71a7e  3      
  jmpq %rcx                              #  528   0x71a81  2      
  nop                                    #  529   0x71a83  1      
  orl $0x20, %r13d                       #  530   0x71a84  4      
  movl %r12d, %r12d                      #  531   0x71a88  3      
  movzbl (%r15,%r12,1), %eax             #  532   0x71a8b  5      
  jmpq .L_71600                          #  533   0x71a90  5      
  nop                                    #  534   0x71a95  1      
  movq 0xc8(%rsp), %rsi                  #  535   0x71a96  8      
  movl %esi, %esi                        #  536   0x71a9e  2      
  movl (%r15,%rsi,1), %eax               #  537   0x71aa0  4      
  cmpl $0x2f, %eax                       #  538   0x71aa4  3      
  ja .L_74640                            #  539   0x71aa7  6      
  movl %esi, %esi                        #  540   0x71aad  2      
  movl 0xc(%r15,%rsi,1), %ecx            #  541   0x71aaf  5      
  addl %eax, %ecx                        #  542   0x71ab4  2      
  addl $0x8, %eax                        #  543   0x71ab6  3      
  movl %esi, %esi                        #  544   0x71ab9  2      
  movl %eax, (%r15,%rsi,1)               #  545   0x71abb  4      
  nop                                    #  546   0x71abf  1      
  nop                                    #  547   0x71ac0  1      
.L_71e00:                                #        0x71ac1  0      
  movl %ecx, %ecx                        #  548   0x71ac1  2      
  movl (%r15,%rcx,1), %ecx               #  549   0x71ac3  4      
  testl %ecx, %ecx                       #  550   0x71ac7  2      
  movl %ecx, 0xd4(%rsp)                  #  551   0x71ac9  7      
  js .L_72040                            #  552   0x71ad0  6      
  nop                                    #  553   0x71ad6  1      
.L_71e20:                                #        0x71ad7  0      
  movl %r12d, %r12d                      #  554   0x71ad7  3      
  movzbl (%r15,%r12,1), %eax             #  555   0x71ada  5      
  jmpq .L_71600                          #  556   0x71adf  5      
  nop                                    #  557   0x71ae4  1      
  nop                                    #  558   0x71ae5  1      
.L_71e40:                                #        0x71ae6  0      
  movl 0xb8(%rsp), %esi                  #  559   0x71ae6  7      
  movl %r14d, %edi                       #  560   0x71aed  3      
  xchgw %ax, %ax                         #  561   0x71af0  3      
  nop                                    #  562   0x71af3  1      
  callq .__swsetup_r                     #  563   0x71af4  5      
  testl %eax, %eax                       #  564   0x71af9  2      
  jne .L_75f80                           #  565   0x71afb  6      
  movq 0xb8(%rsp), %rcx                  #  566   0x71b01  8      
  movl %ecx, %ecx                        #  567   0x71b09  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  568   0x71b0b  6      
  movl %eax, %edx                        #  569   0x71b11  2      
  andl $0x1a, %edx                       #  570   0x71b13  3      
  cmpl $0xa, %edx                        #  571   0x71b16  3      
  jne .L_71320                           #  572   0x71b19  6      
  nop                                    #  573   0x71b1f  1      
  nop                                    #  574   0x71b20  1      
.L_71ea0:                                #        0x71b21  0      
  movq 0xb8(%rsp), %rsi                  #  575   0x71b21  8      
  movl %esi, %esi                        #  576   0x71b29  2      
  cmpw $0x0, 0xe(%r15,%rsi,1)            #  577   0x71b2b  7      
  js .L_71320                            #  578   0x71b32  6      
  testb $0x2, %ah                        #  579   0x71b38  3      
  je .L_72000                            #  580   0x71b3b  6      
.L_71ec0:                                #        0x71b41  0      
  movl 0xc8(%rsp), %ecx                  #  581   0x71b41  7      
  movl 0xb8(%rsp), %esi                  #  582   0x71b48  7      
  movl %ebx, %edx                        #  583   0x71b4f  2      
  movl %r14d, %edi                       #  584   0x71b51  3      
  nop                                    #  585   0x71b54  1      
  callq .__sbprintf                      #  586   0x71b55  5      
  movl %eax, 0xd0(%rsp)                  #  587   0x71b5a  7      
  nop                                    #  588   0x71b61  1      
  nop                                    #  589   0x71b62  1      
.L_71f00:                                #        0x71b63  0      
  movl 0xd0(%rsp), %eax                  #  590   0x71b63  7      
  addl $0x298, %esp                      #  591   0x71b6a  6      
  addq %r15, %rsp                        #  592   0x71b70  3      
  popq %rbx                              #  593   0x71b73  2      
  popq %r12                              #  594   0x71b75  3      
  popq %r13                              #  595   0x71b78  3      
  popq %r14                              #  596   0x71b7b  3      
  popq %r11                              #  597   0x71b7e  3      
  nop                                    #  598   0x71b81  1      
  andl $0xffffffe0, %r11d                #  599   0x71b82  7      
  addq %r15, %r11                        #  600   0x71b89  3      
  jmpq %r11                              #  601   0x71b8c  3      
  nop                                    #  602   0x71b8f  1      
  nop                                    #  603   0x71b90  1      
.L_71f40:                                #        0x71b91  0      
  movl 0xb8(%rsp), %edi                  #  604   0x71b91  7      
  addl $0x5c, %edi                       #  605   0x71b98  3      
  xchgw %ax, %ax                         #  606   0x71b9b  3      
  nop                                    #  607   0x71b9e  1      
  callq .__local_lock_acquire_recursive  #  608   0x71b9f  5      
  movq 0xb8(%rsp), %rsi                  #  609   0x71ba4  8      
  movl %esi, %esi                        #  610   0x71bac  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  611   0x71bae  6      
  movswl %dx, %eax                       #  612   0x71bb4  3      
  jmpq .L_712a0                          #  613   0x71bb7  5      
  nop                                    #  614   0x71bbc  1      
.L_71f80:                                #        0x71bbd  0      
  movl 0xb8(%rsp), %esi                  #  615   0x71bbd  7      
  leal 0x210(%rsp), %edx                 #  616   0x71bc4  7      
  movl %r14d, %edi                       #  617   0x71bcb  3      
  movl %ecx, 0x90(%rsp)                  #  618   0x71bce  7      
  nop                                    #  619   0x71bd5  1      
  callq .__sprint_r                      #  620   0x71bd6  5      
  testl %eax, %eax                       #  621   0x71bdb  2      
  movl 0x90(%rsp), %ecx                  #  622   0x71bdd  7      
  jne .L_76820                           #  623   0x71be4  6      
  leal 0x1d0(%rsp), %ebx                 #  624   0x71bea  7      
  jmpq .L_715a0                          #  625   0x71bf1  5      
  nop                                    #  626   0x71bf6  1      
.L_71fc0:                                #        0x71bf7  0      
  movl %r14d, %edi                       #  627   0x71bf7  3      
  nop                                    #  628   0x71bfa  1      
  nop                                    #  629   0x71bfb  1      
  callq .__sinit                         #  630   0x71bfc  5      
  jmpq .L_71280                          #  631   0x71c01  5      
  nop                                    #  632   0x71c06  1      
  nop                                    #  633   0x71c07  1      
.L_72000:                                #        0x71c08  0      
  movl 0xb8(%rsp), %edi                  #  634   0x71c08  7      
  addl $0x5c, %edi                       #  635   0x71c0f  3      
  xchgw %ax, %ax                         #  636   0x71c12  3      
  nop                                    #  637   0x71c15  1      
  callq .__local_lock_release_recursive  #  638   0x71c16  5      
  jmpq .L_71ec0                          #  639   0x71c1b  5      
  nop                                    #  640   0x71c20  1      
  nop                                    #  641   0x71c21  1      
.L_72040:                                #        0x71c22  0      
  negl 0xd4(%rsp)                        #  642   0x71c22  7      
  nop                                    #  643   0x71c29  1      
  nop                                    #  644   0x71c2a  1      
  orl $0x4, %r13d                        #  645   0x71c2b  4      
  movl %r12d, %r12d                      #  646   0x71c2f  3      
  movzbl (%r15,%r12,1), %eax             #  647   0x71c32  5      
  jmpq .L_71600                          #  648   0x71c37  5      
  nop                                    #  649   0x71c3c  1      
  movq 0xc8(%rsp), %rdx                  #  650   0x71c3d  8      
  movl %edx, %edx                        #  651   0x71c45  2      
  movl (%r15,%rdx,1), %eax               #  652   0x71c47  4      
  cmpl $0x2f, %eax                       #  653   0x71c4b  3      
  ja .L_74620                            #  654   0x71c4e  6      
  movq %rdx, %rcx                        #  655   0x71c54  3      
  nop                                    #  656   0x71c57  1      
  movl %edx, %edx                        #  657   0x71c58  2      
  movl 0xc(%r15,%rdx,1), %edx            #  658   0x71c5a  5      
  addl %eax, %edx                        #  659   0x71c5f  2      
  addl $0x8, %eax                        #  660   0x71c61  3      
  movl %ecx, %ecx                        #  661   0x71c64  2      
  movl %eax, (%r15,%rcx,1)               #  662   0x71c66  4      
  nop                                    #  663   0x71c6a  1      
.L_720c0:                                #        0x71c6b  0      
  movl %edx, %edx                        #  664   0x71c6b  2      
  movl (%r15,%rdx,1), %ecx               #  665   0x71c6d  4      
  orl $0x2, %r13d                        #  666   0x71c71  4      
  movb $0x30, 0x280(%rsp)                #  667   0x71c75  8      
  movb $0x78, 0x281(%rsp)                #  668   0x71c7d  8      
  nop                                    #  669   0x71c85  1      
  movq $0x10023c01, 0x138(%rsp)          #  670   0x71c86  12     
  movl $0x2, %eax                        #  671   0x71c92  5      
  movl $0x78, 0xf8(%rsp)                 #  672   0x71c97  11     
  testq %rcx, %rcx                       #  673   0x71ca2  3      
  nop                                    #  674   0x71ca5  1      
  setne %sil                             #  675   0x71ca6  4      
  nop                                    #  676   0x71caa  1      
  nop                                    #  677   0x71cab  1      
.L_72120:                                #        0x71cac  0      
  movb $0x0, 0x28f(%rsp)                 #  678   0x71cac  8      
  nop                                    #  679   0x71cb4  1      
  nop                                    #  680   0x71cb5  1      
.L_72140:                                #        0x71cb6  0      
  movl %r13d, %edx                       #  681   0x71cb6  3      
  andb $0x7f, %dl                        #  682   0x71cb9  3      
  testl %r10d, %r10d                     #  683   0x71cbc  3      
  cmovnsl %edx, %r13d                    #  684   0x71cbf  4      
  testl %r10d, %r10d                     #  685   0x71cc3  3      
  jne .L_72160                           #  686   0x71cc6  6      
  testb %sil, %sil                       #  687   0x71ccc  3      
  je .L_72f60                            #  688   0x71ccf  6      
  nop                                    #  689   0x71cd5  1      
.L_72160:                                #        0x71cd6  0      
  cmpl $0x1, %eax                        #  690   0x71cd6  3      
  je .L_736e0                            #  691   0x71cd9  6      
  cmpl $0x2, %eax                        #  692   0x71cdf  3      
  je .L_73660                            #  693   0x71ce2  6      
  movq 0x100(%rsp), %rdx                 #  694   0x71ce8  8      
  nop                                    #  695   0x71cf0  1      
  movq %rdx, 0xa8(%rsp)                  #  696   0x71cf1  8      
  nop                                    #  697   0x71cf9  1      
  nop                                    #  698   0x71cfa  1      
.L_721a0:                                #        0x71cfb  0      
  movl %ecx, %eax                        #  699   0x71cfb  2      
  shrq $0x3, %rcx                        #  700   0x71cfd  4      
  subl $0x1, %edx                        #  701   0x71d01  3      
  andl $0x7, %eax                        #  702   0x71d04  3      
  addl $0x30, %eax                       #  703   0x71d07  3      
  testq %rcx, %rcx                       #  704   0x71d0a  3      
  movl %edx, %edx                        #  705   0x71d0d  2      
  movb %al, (%r15,%rdx,1)                #  706   0x71d0f  4      
  jne .L_721a0                           #  707   0x71d13  6      
  testb $0x1, %r13b                      #  708   0x71d19  4      
  xchgw %ax, %ax                         #  709   0x71d1d  3      
  movq %rdx, 0xa8(%rsp)                  #  710   0x71d20  8      
  jne .L_744e0                           #  711   0x71d28  6      
  movl 0x100(%rsp), %ecx                 #  712   0x71d2e  7      
  movq 0xe8(%rsp), %rsi                  #  713   0x71d35  8      
  subl %edx, %ecx                        #  714   0x71d3d  2      
  nop                                    #  715   0x71d3f  1      
  movl %ecx, 0xc4(%rsp)                  #  716   0x71d40  7      
  nop                                    #  717   0x71d47  1      
  nop                                    #  718   0x71d48  1      
.L_72200:                                #        0x71d49  0      
  cmpl %r10d, 0xc4(%rsp)                 #  719   0x71d49  8      
  movl 0xc4(%rsp), %eax                  #  720   0x71d51  7      
  movl %r10d, 0xfc(%rsp)                 #  721   0x71d58  8      
  movq %rsi, 0xe8(%rsp)                  #  722   0x71d60  8      
  nop                                    #  723   0x71d68  1      
  movq $0x0, 0xe0(%rsp)                  #  724   0x71d69  12     
  movl $0x0, 0x108(%rsp)                 #  725   0x71d75  11     
  nop                                    #  726   0x71d80  1      
  movl $0x0, 0x120(%rsp)                 #  727   0x71d81  11     
  movl $0x0, 0x11c(%rsp)                 #  728   0x71d8c  11     
  cmovll %r10d, %eax                     #  729   0x71d97  4      
  nop                                    #  730   0x71d9b  1      
  movl %eax, 0xb0(%rsp)                  #  731   0x71d9c  7      
  movzbl 0x28f(%rsp), %eax               #  732   0x71da3  8      
  xchgw %ax, %ax                         #  733   0x71dab  3      
  nop                                    #  734   0x71dae  1      
.L_72280:                                #        0x71daf  0      
  testb %al, %al                         #  735   0x71daf  2      
  je .L_716e0                            #  736   0x71db1  6      
  nop                                    #  737   0x71db7  1      
  nop                                    #  738   0x71db8  1      
.L_722a0:                                #        0x71db9  0      
  addl $0x1, 0xb0(%rsp)                  #  739   0x71db9  8      
  jmpq .L_716e0                          #  740   0x71dc1  5      
  nop                                    #  741   0x71dc6  1      
  nop                                    #  742   0x71dc7  1      
  movl %r12d, %r12d                      #  743   0x71dc8  3      
  movzbl (%r15,%r12,1), %eax             #  744   0x71dcb  5      
  cmpb $0x6c, %al                        #  745   0x71dd0  2      
  je .L_75600                            #  746   0x71dd2  6      
  orl $0x10, %r13d                       #  747   0x71dd8  4      
  jmpq .L_71600                          #  748   0x71ddc  5      
  nop                                    #  749   0x71de1  1      
  cmpl $0x43, %eax                       #  750   0x71de2  3      
  movl %eax, 0xf8(%rsp)                  #  751   0x71de5  7      
  je .L_74280                            #  752   0x71dec  6      
  testb $0x10, %r13b                     #  753   0x71df2  4      
  jne .L_74280                           #  754   0x71df6  6      
  nop                                    #  755   0x71dfc  1      
  movq 0xc8(%rsp), %rcx                  #  756   0x71dfd  8      
  movl %ecx, %ecx                        #  757   0x71e05  2      
  movl (%r15,%rcx,1), %eax               #  758   0x71e07  4      
  cmpl $0x2f, %eax                       #  759   0x71e0b  3      
  ja .L_75320                            #  760   0x71e0e  6      
  movl %ecx, %ecx                        #  761   0x71e14  2      
  movl 0xc(%r15,%rcx,1), %edx            #  762   0x71e16  5      
  addl %eax, %edx                        #  763   0x71e1b  2      
  addl $0x8, %eax                        #  764   0x71e1d  3      
  movl %ecx, %ecx                        #  765   0x71e20  2      
  movl %eax, (%r15,%rcx,1)               #  766   0x71e22  4      
  nop                                    #  767   0x71e26  1      
  nop                                    #  768   0x71e27  1      
.L_72340:                                #        0x71e28  0      
  movl %edx, %edx                        #  769   0x71e28  2      
  movl (%r15,%rdx,1), %eax               #  770   0x71e2a  4      
  movl $0x1, 0xc4(%rsp)                  #  771   0x71e2e  11     
  movb %al, 0x160(%rsp)                  #  772   0x71e39  7      
  jmpq .L_74340                          #  773   0x71e40  5      
  nop                                    #  774   0x71e45  1      
  movl %eax, 0xf8(%rsp)                  #  775   0x71e46  7      
  orl $0x10, %r13d                       #  776   0x71e4d  4      
  nop                                    #  777   0x71e51  1      
  nop                                    #  778   0x71e52  1      
.L_72380:                                #        0x71e53  0      
  testb $0x20, %r13b                     #  779   0x71e53  4      
  je .L_737c0                            #  780   0x71e57  6      
  movq 0xc8(%rsp), %rcx                  #  781   0x71e5d  8      
  movl %ecx, %ecx                        #  782   0x71e65  2      
  movl (%r15,%rcx,1), %eax               #  783   0x71e67  4      
  cmpl $0x2f, %eax                       #  784   0x71e6b  3      
  nop                                    #  785   0x71e6e  1      
  ja .L_74560                            #  786   0x71e6f  6      
  movl %ecx, %ecx                        #  787   0x71e75  2      
  movl 0xc(%r15,%rcx,1), %edx            #  788   0x71e77  5      
  addl %eax, %edx                        #  789   0x71e7c  2      
  addl $0x8, %eax                        #  790   0x71e7e  3      
  movl %ecx, %ecx                        #  791   0x71e81  2      
  movl %eax, (%r15,%rcx,1)               #  792   0x71e83  4      
  nop                                    #  793   0x71e87  1      
.L_723c0:                                #        0x71e88  0      
  movl %edx, %edx                        #  794   0x71e88  2      
  movq (%r15,%rdx,1), %rcx               #  795   0x71e8a  4      
  nop                                    #  796   0x71e8e  1      
  nop                                    #  797   0x71e8f  1      
.L_723e0:                                #        0x71e90  0      
  cmpq $0x0, %rcx                        #  798   0x71e90  4      
  jl .L_74540                            #  799   0x71e94  6      
  setne %sil                             #  800   0x71e9a  4      
  movl $0x1, %eax                        #  801   0x71e9e  5      
  jmpq .L_72140                          #  802   0x71ea3  5      
  nop                                    #  803   0x71ea8  1      
  orl $0x8, %r13d                        #  804   0x71ea9  4      
  movl %r12d, %r12d                      #  805   0x71ead  3      
  movzbl (%r15,%r12,1), %eax             #  806   0x71eb0  5      
  jmpq .L_71600                          #  807   0x71eb5  5      
  nop                                    #  808   0x71eba  1      
  movq 0xc8(%rsp), %rdx                  #  809   0x71ebb  8      
  movl %eax, 0xf8(%rsp)                  #  810   0x71ec3  7      
  movl %edx, %edx                        #  811   0x71eca  2      
  movl (%r15,%rdx,1), %eax               #  812   0x71ecc  4      
  cmpl $0x2f, %eax                       #  813   0x71ed0  3      
  ja .L_747c0                            #  814   0x71ed3  6      
  xchgw %ax, %ax                         #  815   0x71ed9  3      
  movq %rdx, %rcx                        #  816   0x71edc  3      
  movl %edx, %edx                        #  817   0x71edf  2      
  movl 0xc(%r15,%rdx,1), %edx            #  818   0x71ee1  5      
  addl %eax, %edx                        #  819   0x71ee6  2      
  addl $0x8, %eax                        #  820   0x71ee8  3      
  movl %ecx, %ecx                        #  821   0x71eeb  2      
  movl %eax, (%r15,%rcx,1)               #  822   0x71eed  4      
  nop                                    #  823   0x71ef1  1      
.L_72460:                                #        0x71ef2  0      
  movl %edx, %edx                        #  824   0x71ef2  2      
  movl (%r15,%rdx,1), %edx               #  825   0x71ef4  4      
  movb $0x0, 0x28f(%rsp)                 #  826   0x71ef8  8      
  testq %rdx, %rdx                       #  827   0x71f00  3      
  movq %rdx, 0xa8(%rsp)                  #  828   0x71f03  8      
  je .L_758e0                            #  829   0x71f0b  6      
  nop                                    #  830   0x71f11  1      
  cmpl $0x53, 0xf8(%rsp)                 #  831   0x71f12  8      
  je .L_74d80                            #  832   0x71f1a  6      
  movl %r13d, %ecx                       #  833   0x71f20  3      
  andl $0x10, %ecx                       #  834   0x71f23  3      
  jne .L_74d80                           #  835   0x71f26  6      
  testl %r10d, %r10d                     #  836   0x71f2c  3      
  nop                                    #  837   0x71f2f  1      
  js .L_75360                            #  838   0x71f30  6      
  movl 0xa8(%rsp), %edi                  #  839   0x71f36  7      
  movl %r10d, %edx                       #  840   0x71f3d  3      
  xorl %esi, %esi                        #  841   0x71f40  2      
  movl %ecx, 0x90(%rsp)                  #  842   0x71f42  7      
  nop                                    #  843   0x71f49  1      
  movl %r10d, 0x88(%rsp)                 #  844   0x71f4a  8      
  nop                                    #  845   0x71f52  1      
  nop                                    #  846   0x71f53  1      
  callq .memchr                          #  847   0x71f54  5      
  movl %eax, %eax                        #  848   0x71f59  2      
  movl 0x90(%rsp), %ecx                  #  849   0x71f5b  7      
  movl 0x88(%rsp), %r10d                 #  850   0x71f62  8      
  testq %rax, %rax                       #  851   0x71f6a  3      
  je .L_769c0                            #  852   0x71f6d  6      
  nop                                    #  853   0x71f73  1      
  subl 0xa8(%rsp), %eax                  #  854   0x71f74  7      
  cmpl %eax, %r10d                       #  855   0x71f7b  3      
  movl %eax, 0xc4(%rsp)                  #  856   0x71f7e  7      
  jge .L_75cc0                           #  857   0x71f85  6      
  testl %r10d, %r10d                     #  858   0x71f8b  3      
  nop                                    #  859   0x71f8e  1      
  movzbl 0x28f(%rsp), %eax               #  860   0x71f8f  8      
  movl %r10d, 0xc4(%rsp)                 #  861   0x71f97  8      
  cmovnsl %r10d, %ecx                    #  862   0x71f9f  4      
  movl %ecx, 0xb0(%rsp)                  #  863   0x71fa3  7      
  jmpq .L_74f20                          #  864   0x71faa  5      
  movl %eax, 0xf8(%rsp)                  #  865   0x71faf  7      
  orl $0x10, %r13d                       #  866   0x71fb6  4      
  nop                                    #  867   0x71fba  1      
  nop                                    #  868   0x71fbb  1      
.L_72560:                                #        0x71fbc  0      
  testb $0x20, %r13b                     #  869   0x71fbc  4      
  je .L_73760                            #  870   0x71fc0  6      
  movq 0xc8(%rsp), %rcx                  #  871   0x71fc6  8      
  movl %ecx, %ecx                        #  872   0x71fce  2      
  movl (%r15,%rcx,1), %eax               #  873   0x71fd0  4      
  cmpl $0x2f, %eax                       #  874   0x71fd4  3      
  nop                                    #  875   0x71fd7  1      
  ja .L_74600                            #  876   0x71fd8  6      
  movl %ecx, %ecx                        #  877   0x71fde  2      
  movl 0xc(%r15,%rcx,1), %edx            #  878   0x71fe0  5      
  addl %eax, %edx                        #  879   0x71fe5  2      
  addl $0x8, %eax                        #  880   0x71fe7  3      
  movl %ecx, %ecx                        #  881   0x71fea  2      
  movl %eax, (%r15,%rcx,1)               #  882   0x71fec  4      
  nop                                    #  883   0x71ff0  1      
.L_725a0:                                #        0x71ff1  0      
  movl %edx, %edx                        #  884   0x71ff1  2      
  movq (%r15,%rdx,1), %rcx               #  885   0x71ff3  4      
  movl $0x1, %eax                        #  886   0x71ff7  5      
  testq %rcx, %rcx                       #  887   0x71ffc  3      
  setne %sil                             #  888   0x71fff  4      
  jmpq .L_72120                          #  889   0x72003  5      
  nop                                    #  890   0x72008  1      
  testb $0x20, %r13b                     #  891   0x72009  4      
  movl %eax, 0xf8(%rsp)                  #  892   0x7200d  7      
  movq $0x10023be0, 0x138(%rsp)          #  893   0x72014  12     
  je .L_727e0                            #  894   0x72020  6      
  nop                                    #  895   0x72026  1      
.L_725e0:                                #        0x72027  0      
  movq 0xc8(%rsp), %rdx                  #  896   0x72027  8      
  movl %edx, %edx                        #  897   0x7202f  2      
  movl (%r15,%rdx,1), %eax               #  898   0x72031  4      
  cmpl $0x2f, %eax                       #  899   0x72035  3      
  ja .L_747e0                            #  900   0x72038  6      
  movq %rdx, %rcx                        #  901   0x7203e  3      
  nop                                    #  902   0x72041  1      
  movl %edx, %edx                        #  903   0x72042  2      
  movl 0xc(%r15,%rdx,1), %edx            #  904   0x72044  5      
  addl %eax, %edx                        #  905   0x72049  2      
  addl $0x8, %eax                        #  906   0x7204b  3      
  movl %ecx, %ecx                        #  907   0x7204e  2      
  movl %eax, (%r15,%rcx,1)               #  908   0x72050  4      
  nop                                    #  909   0x72054  1      
.L_72620:                                #        0x72055  0      
  movl %edx, %edx                        #  910   0x72055  2      
  movq (%r15,%rdx,1), %rcx               #  911   0x72057  4      
  nop                                    #  912   0x7205b  1      
  nop                                    #  913   0x7205c  1      
.L_72640:                                #        0x7205d  0      
  testq %rcx, %rcx                       #  914   0x7205d  3      
  setne %sil                             #  915   0x72060  4      
  je .L_72680                            #  916   0x72064  6      
  testb $0x1, %r13b                      #  917   0x7206a  4      
  je .L_72680                            #  918   0x7206e  6      
  movzbl 0xf8(%rsp), %eax                #  919   0x72074  8      
  movb $0x30, 0x280(%rsp)                #  920   0x7207c  8      
  nop                                    #  921   0x72084  1      
  orl $0x2, %r13d                        #  922   0x72085  4      
  movb %al, 0x281(%rsp)                  #  923   0x72089  7      
  nop                                    #  924   0x72090  1      
  nop                                    #  925   0x72091  1      
.L_72680:                                #        0x72092  0      
  andl $0xfffffbff, %r13d                #  926   0x72092  7      
  movl $0x2, %eax                        #  927   0x72099  5      
  jmpq .L_72120                          #  928   0x7209e  5      
  nop                                    #  929   0x720a3  1      
  movl %r12d, %r12d                      #  930   0x720a4  3      
  movsbl (%r15,%r12,1), %eax             #  931   0x720a7  5      
  addl $0x1, %r12d                       #  932   0x720ac  4      
  cmpl $0x2a, %eax                       #  933   0x720b0  3      
  je .L_76ae0                            #  934   0x720b3  6      
  leal -0x30(%rax), %esi                 #  935   0x720b9  3      
  xorl %ecx, %ecx                        #  936   0x720bc  2      
  xorl %r10d, %r10d                      #  937   0x720be  3      
  cmpl $0x9, %esi                        #  938   0x720c1  3      
  ja .L_71620                            #  939   0x720c4  6      
  nop                                    #  940   0x720ca  1      
  nop                                    #  941   0x720cb  1      
.L_726e0:                                #        0x720cc  0      
  movl %r12d, %r12d                      #  942   0x720cc  3      
  movsbl (%r15,%r12,1), %eax             #  943   0x720cf  5      
  leal (%rcx,%rcx,4), %ecx               #  944   0x720d4  3      
  addl $0x1, %r12d                       #  945   0x720d7  4      
  leal (%rsi,%rcx,2), %ecx               #  946   0x720db  3      
  leal -0x30(%rax), %esi                 #  947   0x720de  3      
  cmpl $0x9, %esi                        #  948   0x720e1  3      
  jbe .L_726e0                           #  949   0x720e4  6      
  testl %ecx, %ecx                       #  950   0x720ea  2      
  movl %edx, %r10d                       #  951   0x720ec  3      
  nop                                    #  952   0x720ef  1      
  cmovnsl %ecx, %r10d                    #  953   0x720f0  4      
  jmpq .L_71620                          #  954   0x720f4  5      
  nop                                    #  955   0x720f9  1      
  nop                                    #  956   0x720fa  1      
  movl %eax, 0xf8(%rsp)                  #  957   0x720fb  7      
  orl $0x10, %r13d                       #  958   0x72102  4      
  nop                                    #  959   0x72106  1      
  nop                                    #  960   0x72107  1      
.L_72740:                                #        0x72108  0      
  testb $0x20, %r13b                     #  961   0x72108  4      
  je .L_73820                            #  962   0x7210c  6      
  movq 0xc8(%rsp), %rcx                  #  963   0x72112  8      
  movl %ecx, %ecx                        #  964   0x7211a  2      
  movl (%r15,%rcx,1), %eax               #  965   0x7211c  4      
  cmpl $0x2f, %eax                       #  966   0x72120  3      
  nop                                    #  967   0x72123  1      
  ja .L_74720                            #  968   0x72124  6      
  movl %ecx, %ecx                        #  969   0x7212a  2      
  movl 0xc(%r15,%rcx,1), %edx            #  970   0x7212c  5      
  addl %eax, %edx                        #  971   0x72131  2      
  addl $0x8, %eax                        #  972   0x72133  3      
  movl %ecx, %ecx                        #  973   0x72136  2      
  movl %eax, (%r15,%rcx,1)               #  974   0x72138  4      
  nop                                    #  975   0x7213c  1      
.L_72780:                                #        0x7213d  0      
  movl %edx, %edx                        #  976   0x7213d  2      
  movq (%r15,%rdx,1), %rcx               #  977   0x7213f  4      
  nop                                    #  978   0x72143  1      
  nop                                    #  979   0x72144  1      
.L_727a0:                                #        0x72145  0      
  andl $0xfffffbff, %r13d                #  980   0x72145  7      
  testq %rcx, %rcx                       #  981   0x7214c  3      
  setne %sil                             #  982   0x7214f  4      
  xorl %eax, %eax                        #  983   0x72153  2      
  jmpq .L_72120                          #  984   0x72155  5      
  nop                                    #  985   0x7215a  1      
  testb $0x20, %r13b                     #  986   0x7215b  4      
  movl %eax, 0xf8(%rsp)                  #  987   0x7215f  7      
  movq $0x10023c01, 0x138(%rsp)          #  988   0x72166  12     
  jne .L_725e0                           #  989   0x72172  6      
  nop                                    #  990   0x72178  1      
.L_727e0:                                #        0x72179  0      
  testb $0x10, %r13b                     #  991   0x72179  4      
  je .L_74880                            #  992   0x7217d  6      
  movq 0xc8(%rsp), %rdx                  #  993   0x72183  8      
  movl %edx, %edx                        #  994   0x7218b  2      
  movl (%r15,%rdx,1), %eax               #  995   0x7218d  4      
  cmpl $0x2f, %eax                       #  996   0x72191  3      
  nop                                    #  997   0x72194  1      
  ja .L_752c0                            #  998   0x72195  6      
  movq %rdx, %rcx                        #  999   0x7219b  3      
  movl %edx, %edx                        #  1000  0x7219e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1001  0x721a0  5      
  addl %eax, %edx                        #  1002  0x721a5  2      
  addl $0x8, %eax                        #  1003  0x721a7  3      
  movl %ecx, %ecx                        #  1004  0x721aa  2      
  movl %eax, (%r15,%rcx,1)               #  1005  0x721ac  4      
  nop                                    #  1006  0x721b0  1      
.L_72820:                                #        0x721b1  0      
  movl %edx, %edx                        #  1007  0x721b1  2      
  movl (%r15,%rdx,1), %ecx               #  1008  0x721b3  4      
  jmpq .L_72640                          #  1009  0x721b7  5      
  nop                                    #  1010  0x721bc  1      
  nop                                    #  1011  0x721bd  1      
  cmpb $0x0, 0x28f(%rsp)                 #  1012  0x721be  8      
  jne .L_71e20                           #  1013  0x721c6  6      
  movb $0x20, 0x28f(%rsp)                #  1014  0x721cc  8      
  movl %r12d, %r12d                      #  1015  0x721d4  3      
  movzbl (%r15,%r12,1), %eax             #  1016  0x721d7  5      
  xchgw %ax, %ax                         #  1017  0x721dc  3      
  jmpq .L_71600                          #  1018  0x721df  5      
  nop                                    #  1019  0x721e4  1      
  nop                                    #  1020  0x721e5  1      
  movq 0xc8(%rsp), %rdx                  #  1021  0x721e6  8      
  movl %eax, 0xf8(%rsp)                  #  1022  0x721ee  7      
  movl %edx, %edx                        #  1023  0x721f5  2      
  movl 0x4(%r15,%rdx,1), %eax            #  1024  0x721f7  5      
  cmpl $0xaf, %eax                       #  1025  0x721fc  3      
  nop                                    #  1026  0x721ff  1      
  ja .L_74d00                            #  1027  0x72200  6      
  movq %rdx, %rcx                        #  1028  0x72206  3      
  movl %edx, %edx                        #  1029  0x72209  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1030  0x7220b  5      
  addl %eax, %edx                        #  1031  0x72210  2      
  addl $0x10, %eax                       #  1032  0x72212  3      
  movl %ecx, %ecx                        #  1033  0x72215  2      
  movl %eax, 0x4(%r15,%rcx,1)            #  1034  0x72217  5      
  nop                                    #  1035  0x7221c  1      
.L_728c0:                                #        0x7221d  0      
  movl %edx, %edx                        #  1036  0x7221d  2      
  movsd (%r15,%rdx,1), %xmm0             #  1037  0x7221f  6      
  movl %r10d, 0x88(%rsp)                 #  1038  0x72225  8      
  movsd %xmm0, 0x128(%rsp)               #  1039  0x7222d  9      
  nop                                    #  1040  0x72236  1      
  movsd %xmm0, 0xb0(%rsp)                #  1041  0x72237  9      
  movsd 0x128(%rsp), %xmm0               #  1042  0x72240  9      
  nop                                    #  1043  0x72249  1      
  callq .__fpclassifyd                   #  1044  0x7224a  5      
  cmpl $0x1, %eax                        #  1045  0x7224f  3      
  movl 0x88(%rsp), %r10d                 #  1046  0x72252  8      
  jne .L_74900                           #  1047  0x7225a  6      
  movsd 0x128(%rsp), %xmm1               #  1048  0x72260  9      
  nop                                    #  1049  0x72269  1      
  ucomisd 0xffb1cae(%rip), %xmm1         #  1050  0x7226a  8      
  jb .L_75300                            #  1051  0x72272  6      
  nop                                    #  1052  0x72278  1      
  nop                                    #  1053  0x72279  1      
.L_72940:                                #        0x7227a  0      
  cmpl $0x47, 0xf8(%rsp)                 #  1054  0x7227a  8      
  movq $0x10023bf1, 0xa8(%rsp)           #  1055  0x72282  12     
  movl $0x10023bf5, %eax                 #  1056  0x7228e  5      
  nop                                    #  1057  0x72293  1      
.L_72960:                                #        0x72294  0      
  cmovleq 0xa8(%rsp), %rax               #  1058  0x72294  9      
  movl $0x3, 0xb0(%rsp)                  #  1059  0x7229d  11     
  andb $0x7f, %r13b                      #  1060  0x722a8  4      
  nop                                    #  1061  0x722ac  1      
  movq $0x0, 0xe0(%rsp)                  #  1062  0x722ad  12     
  movl $0x3, 0xc4(%rsp)                  #  1063  0x722b9  11     
  nop                                    #  1064  0x722c4  1      
  movl $0x0, 0xfc(%rsp)                  #  1065  0x722c5  11     
  movl $0x0, 0x108(%rsp)                 #  1066  0x722d0  11     
  nop                                    #  1067  0x722db  1      
  movl $0x0, 0x120(%rsp)                 #  1068  0x722dc  11     
  movl $0x0, 0x11c(%rsp)                 #  1069  0x722e7  11     
  movq %rax, 0xa8(%rsp)                  #  1070  0x722f2  8      
  xchgw %ax, %ax                         #  1071  0x722fa  3      
  movzbl 0x28f(%rsp), %eax               #  1072  0x722fd  8      
  jmpq .L_72280                          #  1073  0x72305  5      
  nop                                    #  1074  0x7230a  1      
  nop                                    #  1075  0x7230b  1      
  movl %r14d, %edi                       #  1076  0x7230c  3      
  movl %edx, 0xa0(%rsp)                  #  1077  0x7230f  7      
  movl %r10d, 0x88(%rsp)                 #  1078  0x72316  8      
  nop                                    #  1079  0x7231e  1      
  callq ._localeconv_r                   #  1080  0x7231f  5      
  movl %eax, %eax                        #  1081  0x72324  2      
  movl %eax, %eax                        #  1082  0x72326  2      
  movl 0x4(%r15,%rax,1), %eax            #  1083  0x72328  5      
  movl %eax, %edi                        #  1084  0x7232d  2      
  movq %rax, 0x140(%rsp)                 #  1085  0x7232f  8      
  nop                                    #  1086  0x72337  1      
  callq .strlen                          #  1087  0x72338  5      
  movl %r14d, %edi                       #  1088  0x7233d  3      
  movl %eax, 0x130(%rsp)                 #  1089  0x72340  7      
  xchgw %ax, %ax                         #  1090  0x72347  3      
  nop                                    #  1091  0x7234a  1      
  callq ._localeconv_r                   #  1092  0x7234b  5      
  movl %eax, %eax                        #  1093  0x72350  2      
  movl 0x130(%rsp), %ecx                 #  1094  0x72352  7      
  movl 0xa0(%rsp), %edx                  #  1095  0x72359  7      
  movl %eax, %eax                        #  1096  0x72360  2      
  movl 0x8(%r15,%rax,1), %eax            #  1097  0x72362  5      
  movl 0x88(%rsp), %r10d                 #  1098  0x72367  8      
  nop                                    #  1099  0x7236f  1      
  testl %ecx, %ecx                       #  1100  0x72370  2      
  movq %rax, 0xe8(%rsp)                  #  1101  0x72372  8      
  je .L_71e20                            #  1102  0x7237a  6      
  testq %rax, %rax                       #  1103  0x72380  3      
  je .L_71e20                            #  1104  0x72383  6      
  nop                                    #  1105  0x72389  1      
  movq 0xe8(%rsp), %rcx                  #  1106  0x7238a  8      
  movl %ecx, %ecx                        #  1107  0x72392  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1108  0x72394  5      
  je .L_71e20                            #  1109  0x72399  6      
  orl $0x400, %r13d                      #  1110  0x7239f  7      
  nop                                    #  1111  0x723a6  1      
  movl %r12d, %r12d                      #  1112  0x723a7  3      
  movzbl (%r15,%r12,1), %eax             #  1113  0x723aa  5      
  jmpq .L_71600                          #  1114  0x723af  5      
  nop                                    #  1115  0x723b4  1      
  nop                                    #  1116  0x723b5  1      
  movb $0x2b, 0x28f(%rsp)                #  1117  0x723b6  8      
  movl %r12d, %r12d                      #  1118  0x723be  3      
  movzbl (%r15,%r12,1), %eax             #  1119  0x723c1  5      
  jmpq .L_71600                          #  1120  0x723c6  5      
  nop                                    #  1121  0x723cb  1      
  orb $0x80, %r13b                       #  1122  0x723cc  4      
  movl %r12d, %r12d                      #  1123  0x723d0  3      
  movzbl (%r15,%r12,1), %eax             #  1124  0x723d3  5      
  jmpq .L_71600                          #  1125  0x723d8  5      
  nop                                    #  1126  0x723dd  1      
  xorl %ecx, %ecx                        #  1127  0x723de  2      
  nop                                    #  1128  0x723e0  1      
  nop                                    #  1129  0x723e1  1      
.L_72b40:                                #        0x723e2  0      
  leal (%rcx,%rcx,4), %ecx               #  1130  0x723e2  3      
  leal -0x30(%rax,%rcx,2), %ecx          #  1131  0x723e5  4      
  movl %r12d, %r12d                      #  1132  0x723e9  3      
  movsbl (%r15,%r12,1), %eax             #  1133  0x723ec  5      
  addl $0x1, %r12d                       #  1134  0x723f1  4      
  leal -0x30(%rax), %esi                 #  1135  0x723f5  3      
  cmpl $0x9, %esi                        #  1136  0x723f8  3      
  jbe .L_72b40                           #  1137  0x723fb  6      
  nop                                    #  1138  0x72401  1      
  movl %ecx, 0xd4(%rsp)                  #  1139  0x72402  7      
  jmpq .L_71620                          #  1140  0x72409  5      
  nop                                    #  1141  0x7240e  1      
  nop                                    #  1142  0x7240f  1      
  testb $0x20, %r13b                     #  1143  0x72410  4      
  je .L_746a0                            #  1144  0x72414  6      
  movq 0xc8(%rsp), %rcx                  #  1145  0x7241a  8      
  movl %ecx, %ecx                        #  1146  0x72422  2      
  movl (%r15,%rcx,1), %eax               #  1147  0x72424  4      
  cmpl $0x2f, %eax                       #  1148  0x72428  3      
  nop                                    #  1149  0x7242b  1      
  jbe .L_75080                           #  1150  0x7242c  6      
  movq 0xc8(%rsp), %rsi                  #  1151  0x72432  8      
  movl %esi, %esi                        #  1152  0x7243a  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1153  0x7243c  5      
  leal 0x8(%rdx), %eax                   #  1154  0x72441  3      
  movl %esi, %esi                        #  1155  0x72444  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1156  0x72446  5      
  nop                                    #  1157  0x7244b  1      
.L_72bc0:                                #        0x7244c  0      
  movl %edx, %edx                        #  1158  0x7244c  2      
  movl (%r15,%rdx,1), %eax               #  1159  0x7244e  4      
  movslq 0xd0(%rsp), %rdx                #  1160  0x72452  8      
  movl %eax, %eax                        #  1161  0x7245a  2      
  movq %rdx, (%r15,%rax,1)               #  1162  0x7245c  4      
  jmpq .L_71d60                          #  1163  0x72460  5      
  nop                                    #  1164  0x72465  1      
  orl $0x1, %r13d                        #  1165  0x72466  4      
  movl %r12d, %r12d                      #  1166  0x7246a  3      
  movzbl (%r15,%r12,1), %eax             #  1167  0x7246d  5      
  jmpq .L_71600                          #  1168  0x72472  5      
  nop                                    #  1169  0x72477  1      
  movl %r12d, %r12d                      #  1170  0x72478  3      
  movzbl (%r15,%r12,1), %eax             #  1171  0x7247b  5      
  cmpb $0x68, %al                        #  1172  0x72480  2      
  je .L_75620                            #  1173  0x72482  6      
  orl $0x40, %r13d                       #  1174  0x72488  4      
  jmpq .L_71600                          #  1175  0x7248c  5      
  nop                                    #  1176  0x72491  1      
  movl %eax, 0xf8(%rsp)                  #  1177  0x72492  7      
  jmpq .L_72560                          #  1178  0x72499  5      
  nop                                    #  1179  0x7249e  1      
  nop                                    #  1180  0x7249f  1      
  movl %eax, 0xf8(%rsp)                  #  1181  0x724a0  7      
  jmpq .L_72380                          #  1182  0x724a7  5      
  nop                                    #  1183  0x724ac  1      
  nop                                    #  1184  0x724ad  1      
  movl %eax, 0xf8(%rsp)                  #  1185  0x724ae  7      
  jmpq .L_72740                          #  1186  0x724b5  5      
  nop                                    #  1187  0x724ba  1      
  nop                                    #  1188  0x724bb  1      
.L_72c80:                                #        0x724bc  0      
  movq 0xb8(%rsp), %rax                  #  1189  0x724bc  8      
  movl %eax, %eax                        #  1190  0x724c4  2      
  orw $0x40, 0xc(%r15,%rax,1)            #  1191  0x724c6  7      
  nop                                    #  1192  0x724cd  1      
.L_72ca0:                                #        0x724ce  0      
  cmpq $0x0, 0xe0(%rsp)                  #  1193  0x724ce  9      
  je .L_73480                            #  1194  0x724d7  6      
  movl 0xe0(%rsp), %esi                  #  1195  0x724dd  7      
  movl %r14d, %edi                       #  1196  0x724e4  3      
  xchgw %ax, %ax                         #  1197  0x724e7  3      
  callq ._free_r                         #  1198  0x724ea  5      
  movq 0xb8(%rsp), %rbx                  #  1199  0x724ef  8      
  movl %ebx, %ebx                        #  1200  0x724f7  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  1201  0x724f9  6      
  nop                                    #  1202  0x724ff  1      
  nop                                    #  1203  0x72500  1      
.L_72ce0:                                #        0x72501  0      
  cwtl                                   #  1204  0x72501  1      
  testb $0x2, %ah                        #  1205  0x72502  3      
  je .L_73440                            #  1206  0x72505  6      
  nop                                    #  1207  0x7250b  1      
  nop                                    #  1208  0x7250c  1      
.L_72d00:                                #        0x7250d  0      
  testb $0x40, %al                       #  1209  0x7250d  2      
  je .L_71f00                            #  1210  0x7250f  6      
  nop                                    #  1211  0x72515  1      
  nop                                    #  1212  0x72516  1      
.L_72d20:                                #        0x72517  0      
  movl $0xffffffff, 0xd0(%rsp)           #  1213  0x72517  11     
  jmpq .L_71f00                          #  1214  0x72522  5      
  nop                                    #  1215  0x72527  1      
  nop                                    #  1216  0x72528  1      
.L_72d40:                                #        0x72529  0      
  cmpl $0x65, 0xf8(%rsp)                 #  1217  0x72529  8      
  jle .L_73140                           #  1218  0x72531  6      
  movsd 0x128(%rsp), %xmm0               #  1219  0x72537  9      
  ucomisd 0xffb19d8(%rip), %xmm0         #  1220  0x72540  8      
  nop                                    #  1221  0x72548  1      
  jne .L_734a0                           #  1222  0x72549  6      
  jp .L_734a0                            #  1223  0x7254f  6      
  movl %ebx, %ebx                        #  1224  0x72555  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1225  0x72557  9      
  movl 0x214(%rsp), %eax                 #  1226  0x72560  7      
  xchgw %ax, %ax                         #  1227  0x72567  3      
  addl $0x1, 0x218(%rsp)                 #  1228  0x7256a  8      
  movl %ebx, %ebx                        #  1229  0x72572  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  1230  0x72574  8      
  addl $0x1, %eax                        #  1231  0x7257c  3      
  cmpl $0x7, %eax                        #  1232  0x7257f  3      
  movl %eax, 0x214(%rsp)                 #  1233  0x72582  7      
  nop                                    #  1234  0x72589  1      
  jg .L_75000                            #  1235  0x7258a  6      
  addl $0x8, %ebx                        #  1236  0x72590  3      
  nop                                    #  1237  0x72593  1      
  nop                                    #  1238  0x72594  1      
.L_72dc0:                                #        0x72595  0      
  movl 0x10c(%rsp), %eax                 #  1239  0x72595  7      
  cmpl %eax, 0x27c(%rsp)                 #  1240  0x7259c  7      
  jl .L_72de0                            #  1241  0x725a3  6      
  testb $0x1, %r13b                      #  1242  0x725a9  4      
  je .L_71b20                            #  1243  0x725ad  6      
  nop                                    #  1244  0x725b3  1      
.L_72de0:                                #        0x725b4  0      
  movl 0x124(%rsp), %ecx                 #  1245  0x725b4  7      
  movl 0x110(%rsp), %edx                 #  1246  0x725bb  7      
  movl %ebx, %ebx                        #  1247  0x725c2  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1248  0x725c4  5      
  movl 0x214(%rsp), %eax                 #  1249  0x725c9  7      
  nop                                    #  1250  0x725d0  1      
  addl %ecx, 0x218(%rsp)                 #  1251  0x725d1  7      
  movl %ebx, %ebx                        #  1252  0x725d8  2      
  movl %edx, (%r15,%rbx,1)               #  1253  0x725da  4      
  addl $0x1, %eax                        #  1254  0x725de  3      
  cmpl $0x7, %eax                        #  1255  0x725e1  3      
  movl %eax, 0x214(%rsp)                 #  1256  0x725e4  7      
  jg .L_75640                            #  1257  0x725eb  6      
  addl $0x8, %ebx                        #  1258  0x725f1  3      
  nop                                    #  1259  0x725f4  1      
  nop                                    #  1260  0x725f5  1      
.L_72e40:                                #        0x725f6  0      
  movl 0x10c(%rsp), %ecx                 #  1261  0x725f6  7      
  subl $0x1, %ecx                        #  1262  0x725fd  3      
  testl %ecx, %ecx                       #  1263  0x72600  2      
  jle .L_71b20                           #  1264  0x72602  6      
  cmpl $0x10, %ecx                       #  1265  0x72608  3      
  jle .L_739c0                           #  1266  0x7260b  6      
  nop                                    #  1267  0x72611  1      
  leal 0x210(%rsp), %esi                 #  1268  0x72612  7      
  movq %rbx, %rax                        #  1269  0x72619  3      
  movl %r13d, 0xa8(%rsp)                 #  1270  0x7261c  8      
  movl %ecx, %ebx                        #  1271  0x72624  2      
  movq %r12, %r13                        #  1272  0x72626  3      
  movq 0xb8(%rsp), %r12                  #  1273  0x72629  8      
  nop                                    #  1274  0x72631  1      
  movq %rsi, 0x38(%rsp)                  #  1275  0x72632  5      
  jmpq .L_72ee0                          #  1276  0x72637  5      
  nop                                    #  1277  0x7263c  1      
  nop                                    #  1278  0x7263d  1      
.L_72ea0:                                #        0x7263e  0      
  addl $0x8, %eax                        #  1279  0x7263e  3      
  nop                                    #  1280  0x72641  1      
  nop                                    #  1281  0x72642  1      
.L_72ec0:                                #        0x72643  0      
  subl $0x10, %ebx                       #  1282  0x72643  3      
  cmpl $0x10, %ebx                       #  1283  0x72646  3      
  jle .L_74f80                           #  1284  0x72649  6      
  nop                                    #  1285  0x7264f  1      
  nop                                    #  1286  0x72650  1      
.L_72ee0:                                #        0x72651  0      
  movl %eax, %eax                        #  1287  0x72651  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1288  0x72653  9      
  movl 0x214(%rsp), %edx                 #  1289  0x7265c  7      
  addl $0x10, 0x218(%rsp)                #  1290  0x72663  8      
  nop                                    #  1291  0x7266b  1      
  movl %eax, %eax                        #  1292  0x7266c  2      
  movl $0x10024230, (%r15,%rax,1)        #  1293  0x7266e  8      
  addl $0x1, %edx                        #  1294  0x72676  3      
  cmpl $0x7, %edx                        #  1295  0x72679  3      
  movl %edx, 0x214(%rsp)                 #  1296  0x7267c  7      
  jle .L_72ea0                           #  1297  0x72683  6      
  movl 0x38(%rsp), %edx                  #  1298  0x72689  4      
  movl %r12d, %esi                       #  1299  0x7268d  3      
  movl %r14d, %edi                       #  1300  0x72690  3      
  nop                                    #  1301  0x72693  1      
  nop                                    #  1302  0x72694  1      
  callq .__sprint_r                      #  1303  0x72695  5      
  testl %eax, %eax                       #  1304  0x7269a  2      
  jne .L_72ca0                           #  1305  0x7269c  6      
  leal 0x1d0(%rsp), %eax                 #  1306  0x726a2  7      
  jmpq .L_72ec0                          #  1307  0x726a9  5      
  nop                                    #  1308  0x726ae  1      
.L_72f60:                                #        0x726af  0      
  testl %eax, %eax                       #  1309  0x726af  2      
  jne .L_72fa0                           #  1310  0x726b1  6      
  testb $0x1, %r13b                      #  1311  0x726b7  4      
  je .L_72fa0                            #  1312  0x726bb  6      
  movq 0x148(%rsp), %rcx                 #  1313  0x726c1  8      
  movq %rcx, 0xa8(%rsp)                  #  1314  0x726c9  8      
  nop                                    #  1315  0x726d1  1      
  movl %ecx, %ecx                        #  1316  0x726d2  2      
  movb $0x30, (%r15,%rcx,1)              #  1317  0x726d4  5      
  movl $0x1, 0xc4(%rsp)                  #  1318  0x726d9  11     
  movq 0xe8(%rsp), %rsi                  #  1319  0x726e4  8      
  jmpq .L_72200                          #  1320  0x726ec  5      
  nop                                    #  1321  0x726f1  1      
.L_72fa0:                                #        0x726f2  0      
  movq 0x100(%rsp), %rsi                 #  1322  0x726f2  8      
  movl $0x0, 0xc4(%rsp)                  #  1323  0x726fa  11     
  movq %rsi, 0xa8(%rsp)                  #  1324  0x72705  8      
  nop                                    #  1325  0x7270d  1      
  movq 0xe8(%rsp), %rsi                  #  1326  0x7270e  8      
  jmpq .L_72200                          #  1327  0x72716  5      
  nop                                    #  1328  0x7271b  1      
  nop                                    #  1329  0x7271c  1      
.L_72fe0:                                #        0x7271d  0      
  movl 0xd4(%rsp), %ecx                  #  1330  0x7271d  7      
  subl 0xb0(%rsp), %ecx                  #  1331  0x72724  7      
  testl %ecx, %ecx                       #  1332  0x7272b  2      
  jle .L_71960                           #  1333  0x7272d  6      
  cmpl $0x10, %ecx                       #  1334  0x72733  3      
  jle .L_73100                           #  1335  0x72736  6      
  nop                                    #  1336  0x7273c  1      
  leal 0x210(%rsp), %edx                 #  1337  0x7273d  7      
  movq %rbx, %rax                        #  1338  0x72744  3      
  movl %r13d, 0xd8(%rsp)                 #  1339  0x72747  8      
  movl %ecx, %ebx                        #  1340  0x7274f  2      
  movq %r12, %r13                        #  1341  0x72751  3      
  movq 0xb8(%rsp), %r12                  #  1342  0x72754  8      
  nop                                    #  1343  0x7275c  1      
  movq %rdx, 0x48(%rsp)                  #  1344  0x7275d  5      
  jmpq .L_73060                          #  1345  0x72762  5      
  nop                                    #  1346  0x72767  1      
  nop                                    #  1347  0x72768  1      
.L_73040:                                #        0x72769  0      
  subl $0x10, %ebx                       #  1348  0x72769  3      
  addl $0x8, %eax                        #  1349  0x7276c  3      
  cmpl $0x10, %ebx                       #  1350  0x7276f  3      
  jle .L_730e0                           #  1351  0x72772  6      
  xchgw %ax, %ax                         #  1352  0x72778  3      
  nop                                    #  1353  0x7277b  1      
.L_73060:                                #        0x7277c  0      
  movl %eax, %eax                        #  1354  0x7277c  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1355  0x7277e  9      
  movl 0x214(%rsp), %edx                 #  1356  0x72787  7      
  addl $0x10, 0x218(%rsp)                #  1357  0x7278e  8      
  nop                                    #  1358  0x72796  1      
  movl %eax, %eax                        #  1359  0x72797  2      
  movl $0x10024230, (%r15,%rax,1)        #  1360  0x72799  8      
  addl $0x1, %edx                        #  1361  0x727a1  3      
  cmpl $0x7, %edx                        #  1362  0x727a4  3      
  movl %edx, 0x214(%rsp)                 #  1363  0x727a7  7      
  jle .L_73040                           #  1364  0x727ae  6      
  movl 0x48(%rsp), %edx                  #  1365  0x727b4  4      
  movl %r12d, %esi                       #  1366  0x727b8  3      
  movl %r14d, %edi                       #  1367  0x727bb  3      
  nop                                    #  1368  0x727be  1      
  nop                                    #  1369  0x727bf  1      
  callq .__sprint_r                      #  1370  0x727c0  5      
  testl %eax, %eax                       #  1371  0x727c5  2      
  jne .L_72ca0                           #  1372  0x727c7  6      
  subl $0x10, %ebx                       #  1373  0x727cd  3      
  leal 0x1d0(%rsp), %eax                 #  1374  0x727d0  7      
  cmpl $0x10, %ebx                       #  1375  0x727d7  3      
  jg .L_73060                            #  1376  0x727da  6      
  nop                                    #  1377  0x727e0  1      
.L_730e0:                                #        0x727e1  0      
  movq %r13, %r12                        #  1378  0x727e1  3      
  movl 0xd8(%rsp), %r13d                 #  1379  0x727e4  8      
  movl %ebx, %ecx                        #  1380  0x727ec  2      
  movq %rax, %rbx                        #  1381  0x727ee  3      
  nop                                    #  1382  0x727f1  1      
  nop                                    #  1383  0x727f2  1      
.L_73100:                                #        0x727f3  0      
  movl %ebx, %ebx                        #  1384  0x727f3  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1385  0x727f5  5      
  movl 0x214(%rsp), %eax                 #  1386  0x727fa  7      
  addl %ecx, 0x218(%rsp)                 #  1387  0x72801  7      
  movl %ebx, %ebx                        #  1388  0x72808  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1389  0x7280a  8      
  nop                                    #  1390  0x72812  1      
  addl $0x1, %eax                        #  1391  0x72813  3      
  cmpl $0x7, %eax                        #  1392  0x72816  3      
  movl %eax, 0x214(%rsp)                 #  1393  0x72819  7      
  jg .L_74420                            #  1394  0x72820  6      
  addl $0x8, %ebx                        #  1395  0x72826  3      
  jmpq .L_71960                          #  1396  0x72829  5      
  nop                                    #  1397  0x7282e  1      
.L_73140:                                #        0x7282f  0      
  cmpl $0x1, 0x10c(%rsp)                 #  1398  0x7282f  8      
  jle .L_73fc0                           #  1399  0x72837  6      
  nop                                    #  1400  0x7283d  1      
  nop                                    #  1401  0x7283e  1      
.L_73160:                                #        0x7283f  0      
  movl %ebx, %ebx                        #  1402  0x7283f  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1403  0x72841  9      
  movl 0x214(%rsp), %eax                 #  1404  0x7284a  7      
  movl 0xa8(%rsp), %ecx                  #  1405  0x72851  7      
  nop                                    #  1406  0x72858  1      
  addl $0x1, 0x218(%rsp)                 #  1407  0x72859  8      
  addl $0x1, %eax                        #  1408  0x72861  3      
  cmpl $0x7, %eax                        #  1409  0x72864  3      
  movl %ebx, %ebx                        #  1410  0x72867  2      
  movl %ecx, (%r15,%rbx,1)               #  1411  0x72869  4      
  movl %eax, 0x214(%rsp)                 #  1412  0x7286d  7      
  nop                                    #  1413  0x72874  1      
  jg .L_74020                            #  1414  0x72875  6      
  leal 0x8(%rbx), %eax                   #  1415  0x7287b  3      
  nop                                    #  1416  0x7287e  1      
  nop                                    #  1417  0x7287f  1      
.L_731c0:                                #        0x72880  0      
  movl 0x124(%rsp), %esi                 #  1418  0x72880  7      
  movl 0x110(%rsp), %ebx                 #  1419  0x72887  7      
  movl %eax, %eax                        #  1420  0x7288e  2      
  movl %esi, 0x4(%r15,%rax,1)            #  1421  0x72890  5      
  movl 0x214(%rsp), %edx                 #  1422  0x72895  7      
  nop                                    #  1423  0x7289c  1      
  addl %esi, 0x218(%rsp)                 #  1424  0x7289d  7      
  movl %eax, %eax                        #  1425  0x728a4  2      
  movl %ebx, (%r15,%rax,1)               #  1426  0x728a6  4      
  addl $0x1, %edx                        #  1427  0x728aa  3      
  cmpl $0x7, %edx                        #  1428  0x728ad  3      
  movl %edx, 0x214(%rsp)                 #  1429  0x728b0  7      
  jg .L_74060                            #  1430  0x728b7  6      
  addl $0x8, %eax                        #  1431  0x728bd  3      
  nop                                    #  1432  0x728c0  1      
  nop                                    #  1433  0x728c1  1      
.L_73220:                                #        0x728c2  0      
  movsd 0x128(%rsp), %xmm0               #  1434  0x728c2  9      
  ucomisd 0xffb164d(%rip), %xmm0         #  1435  0x728cb  8      
  jp .L_73240                            #  1436  0x728d3  6      
  je .L_73880                            #  1437  0x728d9  6      
  nop                                    #  1438  0x728df  1      
.L_73240:                                #        0x728e0  0      
  movl 0xa8(%rsp), %edx                  #  1439  0x728e0  7      
  movl 0x10c(%rsp), %ecx                 #  1440  0x728e7  7      
  addl $0x1, %edx                        #  1441  0x728ee  3      
  movl %eax, %eax                        #  1442  0x728f1  2      
  movl %edx, (%r15,%rax,1)               #  1443  0x728f3  4      
  movl 0x10c(%rsp), %edx                 #  1444  0x728f7  7      
  xchgw %ax, %ax                         #  1445  0x728fe  3      
  subl $0x1, %edx                        #  1446  0x72901  3      
  movl %eax, %eax                        #  1447  0x72904  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1448  0x72906  5      
  movl 0x218(%rsp), %edx                 #  1449  0x7290b  7      
  leal -0x1(%rcx,%rdx,1), %edx           #  1450  0x72912  4      
  movl %edx, 0x218(%rsp)                 #  1451  0x72916  7      
  nop                                    #  1452  0x7291d  1      
.L_73280:                                #        0x7291e  0      
  movl 0x214(%rsp), %edx                 #  1453  0x7291e  7      
  addl $0x1, %edx                        #  1454  0x72925  3      
  cmpl $0x7, %edx                        #  1455  0x72928  3      
  movl %edx, 0x214(%rsp)                 #  1456  0x7292b  7      
  jg .L_74460                            #  1457  0x72932  6      
  addl $0x8, %eax                        #  1458  0x72938  3      
  nop                                    #  1459  0x7293b  1      
.L_732a0:                                #        0x7293c  0      
  leal 0x260(%rsp), %edx                 #  1460  0x7293c  7      
  movl %eax, %eax                        #  1461  0x72943  2      
  movl %edx, (%r15,%rax,1)               #  1462  0x72945  4      
  movl 0x134(%rsp), %edx                 #  1463  0x72949  7      
  movl %eax, %eax                        #  1464  0x72950  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1465  0x72952  5      
  nop                                    #  1466  0x72957  1      
  addl %edx, 0x218(%rsp)                 #  1467  0x72958  7      
  nop                                    #  1468  0x7295f  1      
  nop                                    #  1469  0x72960  1      
.L_732e0:                                #        0x72961  0      
  movl 0x214(%rsp), %edx                 #  1470  0x72961  7      
  leal 0x8(%rax), %ebx                   #  1471  0x72968  3      
  addl $0x1, %edx                        #  1472  0x7296b  3      
  cmpl $0x7, %edx                        #  1473  0x7296e  3      
  movl %edx, 0x214(%rsp)                 #  1474  0x72971  7      
  jle .L_71b20                           #  1475  0x72978  6      
  nop                                    #  1476  0x7297e  1      
.L_73300:                                #        0x7297f  0      
  movl 0xb8(%rsp), %esi                  #  1477  0x7297f  7      
  leal 0x210(%rsp), %edx                 #  1478  0x72986  7      
  movl %r14d, %edi                       #  1479  0x7298d  3      
  nop                                    #  1480  0x72990  1      
  callq .__sprint_r                      #  1481  0x72991  5      
  testl %eax, %eax                       #  1482  0x72996  2      
  jne .L_72ca0                           #  1483  0x72998  6      
  leal 0x1d0(%rsp), %ebx                 #  1484  0x7299e  7      
  jmpq .L_71b20                          #  1485  0x729a5  5      
  nop                                    #  1486  0x729aa  1      
.L_73340:                                #        0x729ab  0      
  movl 0xb8(%rsp), %esi                  #  1487  0x729ab  7      
  leal 0x210(%rsp), %edx                 #  1488  0x729b2  7      
  movl %r14d, %edi                       #  1489  0x729b9  3      
  nop                                    #  1490  0x729bc  1      
  callq .__sprint_r                      #  1491  0x729bd  5      
  testl %eax, %eax                       #  1492  0x729c2  2      
  je .L_71d20                            #  1493  0x729c4  6      
  jmpq .L_72ca0                          #  1494  0x729ca  5      
  nop                                    #  1495  0x729cf  1      
  nop                                    #  1496  0x729d0  1      
.L_73380:                                #        0x729d1  0      
  movl 0xb8(%rsp), %esi                  #  1497  0x729d1  7      
  leal 0x210(%rsp), %edx                 #  1498  0x729d8  7      
  movl %r14d, %edi                       #  1499  0x729df  3      
  nop                                    #  1500  0x729e2  1      
  callq .__sprint_r                      #  1501  0x729e3  5      
  testl %eax, %eax                       #  1502  0x729e8  2      
  jne .L_72ca0                           #  1503  0x729ea  6      
  leal 0x1d0(%rsp), %ebx                 #  1504  0x729f0  7      
  jmpq .L_71ac0                          #  1505  0x729f7  5      
  nop                                    #  1506  0x729fc  1      
.L_733c0:                                #        0x729fd  0      
  movl 0xb8(%rsp), %esi                  #  1507  0x729fd  7      
  leal 0x210(%rsp), %edx                 #  1508  0x72a04  7      
  movl %r14d, %edi                       #  1509  0x72a0b  3      
  nop                                    #  1510  0x72a0e  1      
  callq .__sprint_r                      #  1511  0x72a0f  5      
  testl %eax, %eax                       #  1512  0x72a14  2      
  jne .L_72ca0                           #  1513  0x72a16  6      
  leal 0x1d0(%rsp), %ebx                 #  1514  0x72a1c  7      
  jmpq .L_718e0                          #  1515  0x72a23  5      
  nop                                    #  1516  0x72a28  1      
.L_73400:                                #        0x72a29  0      
  movl 0xb8(%rsp), %esi                  #  1517  0x72a29  7      
  leal 0x210(%rsp), %edx                 #  1518  0x72a30  7      
  movl %r14d, %edi                       #  1519  0x72a37  3      
  nop                                    #  1520  0x72a3a  1      
  callq .__sprint_r                      #  1521  0x72a3b  5      
  testl %eax, %eax                       #  1522  0x72a40  2      
  jne .L_72ca0                           #  1523  0x72a42  6      
  leal 0x1d0(%rsp), %ebx                 #  1524  0x72a48  7      
  jmpq .L_71940                          #  1525  0x72a4f  5      
  nop                                    #  1526  0x72a54  1      
.L_73440:                                #        0x72a55  0      
  movl 0xb8(%rsp), %edi                  #  1527  0x72a55  7      
  addl $0x5c, %edi                       #  1528  0x72a5c  3      
  xchgw %ax, %ax                         #  1529  0x72a5f  3      
  nop                                    #  1530  0x72a62  1      
  callq .__local_lock_release_recursive  #  1531  0x72a63  5      
  movq 0xb8(%rsp), %rsi                  #  1532  0x72a68  8      
  movl %esi, %esi                        #  1533  0x72a70  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1534  0x72a72  6      
  jmpq .L_72d00                          #  1535  0x72a78  5      
  nop                                    #  1536  0x72a7d  1      
.L_73480:                                #        0x72a7e  0      
  movq 0xb8(%rsp), %rcx                  #  1537  0x72a7e  8      
  movl %ecx, %ecx                        #  1538  0x72a86  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1539  0x72a88  6      
  jmpq .L_72ce0                          #  1540  0x72a8e  5      
  nop                                    #  1541  0x72a93  1      
.L_734a0:                                #        0x72a94  0      
  movl 0x27c(%rsp), %r8d                 #  1542  0x72a94  8      
  testl %r8d, %r8d                       #  1543  0x72a9c  3      
  jle .L_75420                           #  1544  0x72a9f  6      
  movl 0x10c(%rsp), %eax                 #  1545  0x72aa5  7      
  addl 0xa8(%rsp), %eax                  #  1546  0x72aac  7      
  nop                                    #  1547  0x72ab3  1      
  movl %eax, %r8d                        #  1548  0x72ab4  3      
  subl 0xa8(%rsp), %r8d                  #  1549  0x72ab7  8      
  movq %rax, 0xd8(%rsp)                  #  1550  0x72abf  8      
  cmpl 0x11c(%rsp), %r8d                 #  1551  0x72ac7  8      
  nop                                    #  1552  0x72acf  1      
  movl %eax, 0xc4(%rsp)                  #  1553  0x72ad0  7      
  cmovgl 0x11c(%rsp), %r8d               #  1554  0x72ad7  9      
  testl %r8d, %r8d                       #  1555  0x72ae0  3      
  jle .L_73540                           #  1556  0x72ae3  6      
  movl %ebx, %ebx                        #  1557  0x72ae9  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1558  0x72aeb  5      
  nop                                    #  1559  0x72af0  1      
  movl 0x214(%rsp), %eax                 #  1560  0x72af1  7      
  movl 0xa8(%rsp), %edx                  #  1561  0x72af8  7      
  addl %r8d, 0x218(%rsp)                 #  1562  0x72aff  8      
  addl $0x1, %eax                        #  1563  0x72b07  3      
  cmpl $0x7, %eax                        #  1564  0x72b0a  3      
  nop                                    #  1565  0x72b0d  1      
  movl %ebx, %ebx                        #  1566  0x72b0e  2      
  movl %edx, (%r15,%rbx,1)               #  1567  0x72b10  4      
  movl %eax, 0x214(%rsp)                 #  1568  0x72b14  7      
  jg .L_758a0                            #  1569  0x72b1b  6      
  addl $0x8, %ebx                        #  1570  0x72b21  3      
  nop                                    #  1571  0x72b24  1      
.L_73540:                                #        0x72b25  0      
  movl 0x11c(%rsp), %esi                 #  1572  0x72b25  7      
  xorl %ecx, %ecx                        #  1573  0x72b2c  2      
  testl %r8d, %r8d                       #  1574  0x72b2e  3      
  cmovnsl %r8d, %ecx                     #  1575  0x72b31  4      
  subl %ecx, %esi                        #  1576  0x72b35  2      
  testl %esi, %esi                       #  1577  0x72b37  2      
  movl %esi, %ecx                        #  1578  0x72b39  2      
  jle .L_73a20                           #  1579  0x72b3b  6      
  cmpl $0x10, %esi                       #  1580  0x72b41  3      
  nop                                    #  1581  0x72b44  1      
  jle .L_74d40                           #  1582  0x72b45  6      
  leal 0x210(%rsp), %eax                 #  1583  0x72b4b  7      
  movl %r13d, 0xf4(%rsp)                 #  1584  0x72b52  8      
  movq %r12, %r13                        #  1585  0x72b5a  3      
  movq 0xb8(%rsp), %r12                  #  1586  0x72b5d  8      
  movq %rax, 0x28(%rsp)                  #  1587  0x72b65  5      
  movq %rbx, %rax                        #  1588  0x72b6a  3      
  movl %esi, %ebx                        #  1589  0x72b6d  2      
  jmpq .L_735e0                          #  1590  0x72b6f  5      
  nop                                    #  1591  0x72b74  1      
  nop                                    #  1592  0x72b75  1      
.L_735a0:                                #        0x72b76  0      
  addl $0x8, %eax                        #  1593  0x72b76  3      
  nop                                    #  1594  0x72b79  1      
  nop                                    #  1595  0x72b7a  1      
.L_735c0:                                #        0x72b7b  0      
  subl $0x10, %ebx                       #  1596  0x72b7b  3      
  cmpl $0x10, %ebx                       #  1597  0x72b7e  3      
  jle .L_74d20                           #  1598  0x72b81  6      
  nop                                    #  1599  0x72b87  1      
  nop                                    #  1600  0x72b88  1      
.L_735e0:                                #        0x72b89  0      
  movl %eax, %eax                        #  1601  0x72b89  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1602  0x72b8b  9      
  movl 0x214(%rsp), %edx                 #  1603  0x72b94  7      
  addl $0x10, 0x218(%rsp)                #  1604  0x72b9b  8      
  nop                                    #  1605  0x72ba3  1      
  movl %eax, %eax                        #  1606  0x72ba4  2      
  movl $0x10024230, (%r15,%rax,1)        #  1607  0x72ba6  8      
  addl $0x1, %edx                        #  1608  0x72bae  3      
  cmpl $0x7, %edx                        #  1609  0x72bb1  3      
  movl %edx, 0x214(%rsp)                 #  1610  0x72bb4  7      
  jle .L_735a0                           #  1611  0x72bbb  6      
  movl 0x28(%rsp), %edx                  #  1612  0x72bc1  4      
  movl %r12d, %esi                       #  1613  0x72bc5  3      
  movl %r14d, %edi                       #  1614  0x72bc8  3      
  nop                                    #  1615  0x72bcb  1      
  nop                                    #  1616  0x72bcc  1      
  callq .__sprint_r                      #  1617  0x72bcd  5      
  testl %eax, %eax                       #  1618  0x72bd2  2      
  jne .L_72ca0                           #  1619  0x72bd4  6      
  leal 0x1d0(%rsp), %eax                 #  1620  0x72bda  7      
  jmpq .L_735c0                          #  1621  0x72be1  5      
  nop                                    #  1622  0x72be6  1      
.L_73660:                                #        0x72be7  0      
  movq 0x100(%rsp), %rsi                 #  1623  0x72be7  8      
  movq %rsi, 0xa8(%rsp)                  #  1624  0x72bef  8      
  movq 0x138(%rsp), %rsi                 #  1625  0x72bf7  8      
  movq 0xa8(%rsp), %rax                  #  1626  0x72bff  8      
.L_73680:                                #        0x72c07  0      
  movl %ecx, %edx                        #  1627  0x72c07  2      
  shrq $0x4, %rcx                        #  1628  0x72c09  4      
  subl $0x1, %eax                        #  1629  0x72c0d  3      
  andl $0xf, %edx                        #  1630  0x72c10  3      
  addl %esi, %edx                        #  1631  0x72c13  2      
  testq %rcx, %rcx                       #  1632  0x72c15  3      
  movl %edx, %edx                        #  1633  0x72c18  2      
  movzbl (%r15,%rdx,1), %edx             #  1634  0x72c1a  5      
  movl %eax, %eax                        #  1635  0x72c1f  2      
  movb %dl, (%r15,%rax,1)                #  1636  0x72c21  4      
  xchgw %ax, %ax                         #  1637  0x72c25  3      
  jne .L_73680                           #  1638  0x72c28  6      
  movl 0x100(%rsp), %edx                 #  1639  0x72c2e  7      
  movq %rax, 0xa8(%rsp)                  #  1640  0x72c35  8      
  movq 0xe8(%rsp), %rsi                  #  1641  0x72c3d  8      
  subl %eax, %edx                        #  1642  0x72c45  2      
  nop                                    #  1643  0x72c47  1      
  movl %edx, 0xc4(%rsp)                  #  1644  0x72c48  7      
  jmpq .L_72200                          #  1645  0x72c4f  5      
  nop                                    #  1646  0x72c54  1      
  nop                                    #  1647  0x72c55  1      
.L_736e0:                                #        0x72c56  0      
  cmpq $0x9, %rcx                        #  1648  0x72c56  4      
  ja .L_740a0                            #  1649  0x72c5a  6      
  movq 0x148(%rsp), %rsi                 #  1650  0x72c60  8      
  addl $0x30, %ecx                       #  1651  0x72c68  3      
  movq %rsi, 0xa8(%rsp)                  #  1652  0x72c6b  8      
  nop                                    #  1653  0x72c73  1      
  movl %esi, %esi                        #  1654  0x72c74  2      
  movb %cl, (%r15,%rsi,1)                #  1655  0x72c76  4      
  movl $0x1, 0xc4(%rsp)                  #  1656  0x72c7a  11     
  movq 0xe8(%rsp), %rsi                  #  1657  0x72c85  8      
  jmpq .L_72200                          #  1658  0x72c8d  5      
  xchgw %ax, %ax                         #  1659  0x72c92  3      
.L_73720:                                #        0x72c95  0      
  movl 0xb8(%rsp), %esi                  #  1660  0x72c95  7      
  leal 0x210(%rsp), %edx                 #  1661  0x72c9c  7      
  movl %r14d, %edi                       #  1662  0x72ca3  3      
  nop                                    #  1663  0x72ca6  1      
  callq .__sprint_r                      #  1664  0x72ca7  5      
  testl %eax, %eax                       #  1665  0x72cac  2      
  jne .L_72ca0                           #  1666  0x72cae  6      
  movzbl 0x28f(%rsp), %eax               #  1667  0x72cb4  8      
  leal 0x1d0(%rsp), %ebx                 #  1668  0x72cbc  7      
  jmpq .L_71880                          #  1669  0x72cc3  5      
  nop                                    #  1670  0x72cc8  1      
.L_73760:                                #        0x72cc9  0      
  testb $0x10, %r13b                     #  1671  0x72cc9  4      
  je .L_74580                            #  1672  0x72ccd  6      
  movq 0xc8(%rsp), %rdx                  #  1673  0x72cd3  8      
  movl %edx, %edx                        #  1674  0x72cdb  2      
  movl (%r15,%rdx,1), %eax               #  1675  0x72cdd  4      
  cmpl $0x2f, %eax                       #  1676  0x72ce1  3      
  nop                                    #  1677  0x72ce4  1      
  ja .L_750c0                            #  1678  0x72ce5  6      
  movq %rdx, %rcx                        #  1679  0x72ceb  3      
  movl %edx, %edx                        #  1680  0x72cee  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1681  0x72cf0  5      
  addl %eax, %edx                        #  1682  0x72cf5  2      
  addl $0x8, %eax                        #  1683  0x72cf7  3      
  movl %ecx, %ecx                        #  1684  0x72cfa  2      
  movl %eax, (%r15,%rcx,1)               #  1685  0x72cfc  4      
  nop                                    #  1686  0x72d00  1      
.L_737a0:                                #        0x72d01  0      
  movl %edx, %edx                        #  1687  0x72d01  2      
  movl (%r15,%rdx,1), %ecx               #  1688  0x72d03  4      
  movl $0x1, %eax                        #  1689  0x72d07  5      
  testq %rcx, %rcx                       #  1690  0x72d0c  3      
  setne %sil                             #  1691  0x72d0f  4      
  jmpq .L_72120                          #  1692  0x72d13  5      
  nop                                    #  1693  0x72d18  1      
.L_737c0:                                #        0x72d19  0      
  testb $0x10, %r13b                     #  1694  0x72d19  4      
  je .L_74740                            #  1695  0x72d1d  6      
  movq 0xc8(%rsp), %rdx                  #  1696  0x72d23  8      
  movl %edx, %edx                        #  1697  0x72d2b  2      
  movl (%r15,%rdx,1), %eax               #  1698  0x72d2d  4      
  cmpl $0x2f, %eax                       #  1699  0x72d31  3      
  nop                                    #  1700  0x72d34  1      
  ja .L_750a0                            #  1701  0x72d35  6      
  movq %rdx, %rcx                        #  1702  0x72d3b  3      
  movl %edx, %edx                        #  1703  0x72d3e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1704  0x72d40  5      
  addl %eax, %edx                        #  1705  0x72d45  2      
  addl $0x8, %eax                        #  1706  0x72d47  3      
  movl %ecx, %ecx                        #  1707  0x72d4a  2      
  movl %eax, (%r15,%rcx,1)               #  1708  0x72d4c  4      
  nop                                    #  1709  0x72d50  1      
.L_73800:                                #        0x72d51  0      
  movl %edx, %edx                        #  1710  0x72d51  2      
  movslq (%r15,%rdx,1), %rcx             #  1711  0x72d53  4      
  jmpq .L_723e0                          #  1712  0x72d57  5      
  nop                                    #  1713  0x72d5c  1      
  nop                                    #  1714  0x72d5d  1      
.L_73820:                                #        0x72d5e  0      
  testb $0x10, %r13b                     #  1715  0x72d5e  4      
  je .L_74800                            #  1716  0x72d62  6      
  movq 0xc8(%rsp), %rdx                  #  1717  0x72d68  8      
  movl %edx, %edx                        #  1718  0x72d70  2      
  movl (%r15,%rdx,1), %eax               #  1719  0x72d72  4      
  cmpl $0x2f, %eax                       #  1720  0x72d76  3      
  nop                                    #  1721  0x72d79  1      
  ja .L_752e0                            #  1722  0x72d7a  6      
  movq %rdx, %rcx                        #  1723  0x72d80  3      
  movl %edx, %edx                        #  1724  0x72d83  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1725  0x72d85  5      
  addl %eax, %edx                        #  1726  0x72d8a  2      
  addl $0x8, %eax                        #  1727  0x72d8c  3      
  movl %ecx, %ecx                        #  1728  0x72d8f  2      
  movl %eax, (%r15,%rcx,1)               #  1729  0x72d91  4      
  nop                                    #  1730  0x72d95  1      
.L_73860:                                #        0x72d96  0      
  movl %edx, %edx                        #  1731  0x72d96  2      
  movl (%r15,%rdx,1), %ecx               #  1732  0x72d98  4      
  jmpq .L_727a0                          #  1733  0x72d9c  5      
  nop                                    #  1734  0x72da1  1      
  nop                                    #  1735  0x72da2  1      
.L_73880:                                #        0x72da3  0      
  movl 0x10c(%rsp), %ebx                 #  1736  0x72da3  7      
  subl $0x1, %ebx                        #  1737  0x72daa  3      
  testl %ebx, %ebx                       #  1738  0x72dad  2      
  jle .L_732a0                           #  1739  0x72daf  6      
  cmpl $0x10, %ebx                       #  1740  0x72db5  3      
  jle .L_74260                           #  1741  0x72db8  6      
  nop                                    #  1742  0x72dbe  1      
  leal 0x210(%rsp), %esi                 #  1743  0x72dbf  7      
  movl %r13d, 0xa8(%rsp)                 #  1744  0x72dc6  8      
  movq %r12, %r13                        #  1745  0x72dce  3      
  movq 0xb8(%rsp), %r12                  #  1746  0x72dd1  8      
  movq %rsi, 0x10(%rsp)                  #  1747  0x72dd9  5      
  nop                                    #  1748  0x72dde  1      
  jmpq .L_73920                          #  1749  0x72ddf  5      
  nop                                    #  1750  0x72de4  1      
  nop                                    #  1751  0x72de5  1      
.L_738e0:                                #        0x72de6  0      
  addl $0x8, %eax                        #  1752  0x72de6  3      
  nop                                    #  1753  0x72de9  1      
  nop                                    #  1754  0x72dea  1      
.L_73900:                                #        0x72deb  0      
  subl $0x10, %ebx                       #  1755  0x72deb  3      
  cmpl $0x10, %ebx                       #  1756  0x72dee  3      
  jle .L_74240                           #  1757  0x72df1  6      
  nop                                    #  1758  0x72df7  1      
  nop                                    #  1759  0x72df8  1      
.L_73920:                                #        0x72df9  0      
  movl %eax, %eax                        #  1760  0x72df9  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1761  0x72dfb  9      
  movl 0x214(%rsp), %edx                 #  1762  0x72e04  7      
  addl $0x10, 0x218(%rsp)                #  1763  0x72e0b  8      
  nop                                    #  1764  0x72e13  1      
  movl %eax, %eax                        #  1765  0x72e14  2      
  movl $0x10024230, (%r15,%rax,1)        #  1766  0x72e16  8      
  addl $0x1, %edx                        #  1767  0x72e1e  3      
  cmpl $0x7, %edx                        #  1768  0x72e21  3      
  movl %edx, 0x214(%rsp)                 #  1769  0x72e24  7      
  jle .L_738e0                           #  1770  0x72e2b  6      
  movl 0x10(%rsp), %edx                  #  1771  0x72e31  4      
  movl %r12d, %esi                       #  1772  0x72e35  3      
  movl %r14d, %edi                       #  1773  0x72e38  3      
  nop                                    #  1774  0x72e3b  1      
  nop                                    #  1775  0x72e3c  1      
  callq .__sprint_r                      #  1776  0x72e3d  5      
  testl %eax, %eax                       #  1777  0x72e42  2      
  jne .L_72ca0                           #  1778  0x72e44  6      
  leal 0x1d0(%rsp), %eax                 #  1779  0x72e4a  7      
  jmpq .L_73900                          #  1780  0x72e51  5      
  nop                                    #  1781  0x72e56  1      
.L_739a0:                                #        0x72e57  0      
  movq %r13, %r12                        #  1782  0x72e57  3      
  movl 0xa8(%rsp), %r13d                 #  1783  0x72e5a  8      
  movl %ebx, %ecx                        #  1784  0x72e62  2      
  movq %rax, %rbx                        #  1785  0x72e64  3      
  nop                                    #  1786  0x72e67  1      
  nop                                    #  1787  0x72e68  1      
.L_739c0:                                #        0x72e69  0      
  movl %ebx, %ebx                        #  1788  0x72e69  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1789  0x72e6b  5      
  movl %ebx, %ebx                        #  1790  0x72e70  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1791  0x72e72  8      
  addl %ecx, 0x218(%rsp)                 #  1792  0x72e7a  7      
  jmpq .L_71b00                          #  1793  0x72e81  5      
  nop                                    #  1794  0x72e86  1      
.L_739e0:                                #        0x72e87  0      
  movl 0xb8(%rsp), %esi                  #  1795  0x72e87  7      
  leal 0x210(%rsp), %edx                 #  1796  0x72e8e  7      
  movl %r14d, %edi                       #  1797  0x72e95  3      
  nop                                    #  1798  0x72e98  1      
  callq .__sprint_r                      #  1799  0x72e99  5      
  testl %eax, %eax                       #  1800  0x72e9e  2      
  jne .L_72ca0                           #  1801  0x72ea0  6      
  leal 0x1d0(%rsp), %ebx                 #  1802  0x72ea6  7      
  xchgw %ax, %ax                         #  1803  0x72ead  3      
  nop                                    #  1804  0x72eb0  1      
.L_73a20:                                #        0x72eb1  0      
  movl 0x11c(%rsp), %edx                 #  1805  0x72eb1  7      
  addl 0xa8(%rsp), %edx                  #  1806  0x72eb8  7      
  testl $0x400, %r13d                    #  1807  0x72ebf  7      
  movq %rdx, 0xa8(%rsp)                  #  1808  0x72ec6  8      
  nop                                    #  1809  0x72ece  1      
  je .L_73d40                            #  1810  0x72ecf  6      
  movl 0x120(%rsp), %esi                 #  1811  0x72ed5  7      
  testl %esi, %esi                       #  1812  0x72edc  2      
  jle .L_753c0                           #  1813  0x72ede  6      
  nop                                    #  1814  0x72ee4  1      
.L_73a60:                                #        0x72ee5  0      
  leal 0x210(%rsp), %ecx                 #  1815  0x72ee5  7      
  movl %r13d, 0xf4(%rsp)                 #  1816  0x72eec  8      
  movq %r12, %r13                        #  1817  0x72ef4  3      
  movq 0xb8(%rsp), %r12                  #  1818  0x72ef7  8      
  movq %rbx, %rax                        #  1819  0x72eff  3      
  nop                                    #  1820  0x72f02  1      
  movq %rcx, 0x20(%rsp)                  #  1821  0x72f03  5      
  nop                                    #  1822  0x72f08  1      
  nop                                    #  1823  0x72f09  1      
.L_73aa0:                                #        0x72f0a  0      
  movl 0x108(%rsp), %ebx                 #  1824  0x72f0a  7      
  testl %ebx, %ebx                       #  1825  0x72f11  2      
  je .L_74680                            #  1826  0x72f13  6      
  subl $0x1, 0x108(%rsp)                 #  1827  0x72f19  8      
  nop                                    #  1828  0x72f21  1      
.L_73ac0:                                #        0x72f22  0      
  movl 0x130(%rsp), %edx                 #  1829  0x72f22  7      
  movl 0x140(%rsp), %esi                 #  1830  0x72f29  7      
  movl %eax, %eax                        #  1831  0x72f30  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1832  0x72f32  5      
  addl %edx, 0x218(%rsp)                 #  1833  0x72f37  7      
  nop                                    #  1834  0x72f3e  1      
  movl 0x214(%rsp), %edx                 #  1835  0x72f3f  7      
  movl %eax, %eax                        #  1836  0x72f46  2      
  movl %esi, (%r15,%rax,1)               #  1837  0x72f48  4      
  addl $0x1, %edx                        #  1838  0x72f4c  3      
  cmpl $0x7, %edx                        #  1839  0x72f4f  3      
  movl %edx, 0x214(%rsp)                 #  1840  0x72f52  7      
  jg .L_744a0                            #  1841  0x72f59  6      
  addl $0x8, %eax                        #  1842  0x72f5f  3      
  nop                                    #  1843  0x72f62  1      
  nop                                    #  1844  0x72f63  1      
.L_73b20:                                #        0x72f64  0      
  movq 0xe8(%rsp), %rbx                  #  1845  0x72f64  8      
  movl 0xc4(%rsp), %ecx                  #  1846  0x72f6c  7      
  subl 0xa8(%rsp), %ecx                  #  1847  0x72f73  7      
  movl %ebx, %ebx                        #  1848  0x72f7a  2      
  movsbl (%r15,%rbx,1), %edx             #  1849  0x72f7c  5      
  cmpl %ecx, %edx                        #  1850  0x72f81  2      
  nop                                    #  1851  0x72f83  1      
  cmovlel %edx, %ecx                     #  1852  0x72f84  3      
  testl %ecx, %ecx                       #  1853  0x72f87  2      
  jle .L_73ba0                           #  1854  0x72f89  6      
  movl %eax, %eax                        #  1855  0x72f8f  2      
  movl %ecx, 0x4(%r15,%rax,1)            #  1856  0x72f91  5      
  movl 0x214(%rsp), %edx                 #  1857  0x72f96  7      
  movl 0xa8(%rsp), %esi                  #  1858  0x72f9d  7      
  nop                                    #  1859  0x72fa4  1      
  addl %ecx, 0x218(%rsp)                 #  1860  0x72fa5  7      
  addl $0x1, %edx                        #  1861  0x72fac  3      
  cmpl $0x7, %edx                        #  1862  0x72faf  3      
  movl %eax, %eax                        #  1863  0x72fb2  2      
  movl %esi, (%r15,%rax,1)               #  1864  0x72fb4  4      
  movl %edx, 0x214(%rsp)                 #  1865  0x72fb8  7      
  jg .L_74fa0                            #  1866  0x72fbf  6      
  movl %ebx, %ebx                        #  1867  0x72fc5  2      
  movsbl (%r15,%rbx,1), %edx             #  1868  0x72fc7  5      
  addl $0x8, %eax                        #  1869  0x72fcc  3      
  nop                                    #  1870  0x72fcf  1      
  nop                                    #  1871  0x72fd0  1      
.L_73ba0:                                #        0x72fd1  0      
  testl %ecx, %ecx                       #  1872  0x72fd1  2      
  movl $0x0, %ebx                        #  1873  0x72fd3  5      
  cmovsl %ebx, %ecx                      #  1874  0x72fd8  3      
  movl %edx, %ebx                        #  1875  0x72fdb  2      
  subl %ecx, %ebx                        #  1876  0x72fdd  2      
  testl %ebx, %ebx                       #  1877  0x72fdf  2      
  jg .L_73c00                            #  1878  0x72fe1  6      
  jmpq .L_73cc0                          #  1879  0x72fe7  5      
  nop                                    #  1880  0x72fec  1      
.L_73bc0:                                #        0x72fed  0      
  addl $0x8, %eax                        #  1881  0x72fed  3      
  nop                                    #  1882  0x72ff0  1      
  nop                                    #  1883  0x72ff1  1      
.L_73be0:                                #        0x72ff2  0      
  subl $0x10, %ebx                       #  1884  0x72ff2  3      
  nop                                    #  1885  0x72ff5  1      
  nop                                    #  1886  0x72ff6  1      
.L_73c00:                                #        0x72ff7  0      
  cmpl $0x10, %ebx                       #  1887  0x72ff7  3      
  jle .L_73f60                           #  1888  0x72ffa  6      
  movl %eax, %eax                        #  1889  0x73000  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1890  0x73002  9      
  movl 0x214(%rsp), %edx                 #  1891  0x7300b  7      
  nop                                    #  1892  0x73012  1      
  addl $0x10, 0x218(%rsp)                #  1893  0x73013  8      
  movl %eax, %eax                        #  1894  0x7301b  2      
  movl $0x10024230, (%r15,%rax,1)        #  1895  0x7301d  8      
  addl $0x1, %edx                        #  1896  0x73025  3      
  cmpl $0x7, %edx                        #  1897  0x73028  3      
  movl %edx, 0x214(%rsp)                 #  1898  0x7302b  7      
  nop                                    #  1899  0x73032  1      
  jle .L_73bc0                           #  1900  0x73033  6      
  movl 0x20(%rsp), %edx                  #  1901  0x73039  4      
  movl %r12d, %esi                       #  1902  0x7303d  3      
  movl %r14d, %edi                       #  1903  0x73040  3      
  nop                                    #  1904  0x73043  1      
  callq .__sprint_r                      #  1905  0x73044  5      
  testl %eax, %eax                       #  1906  0x73049  2      
  jne .L_72ca0                           #  1907  0x7304b  6      
  leal 0x1d0(%rsp), %eax                 #  1908  0x73051  7      
  jmpq .L_73be0                          #  1909  0x73058  5      
  nop                                    #  1910  0x7305d  1      
.L_73c80:                                #        0x7305e  0      
  movl 0x20(%rsp), %edx                  #  1911  0x7305e  4      
  movl %r12d, %esi                       #  1912  0x73062  3      
  movl %r14d, %edi                       #  1913  0x73065  3      
  xchgw %ax, %ax                         #  1914  0x73068  3      
  nop                                    #  1915  0x7306b  1      
  callq .__sprint_r                      #  1916  0x7306c  5      
  testl %eax, %eax                       #  1917  0x73071  2      
  jne .L_72ca0                           #  1918  0x73073  6      
  movq 0xe8(%rsp), %rcx                  #  1919  0x73079  8      
  leal 0x1d0(%rsp), %eax                 #  1920  0x73081  7      
  movl %ecx, %ecx                        #  1921  0x73088  2      
  movsbl (%r15,%rcx,1), %edx             #  1922  0x7308a  5      
  xchgw %ax, %ax                         #  1923  0x7308f  3      
.L_73cc0:                                #        0x73092  0      
  addl 0xa8(%rsp), %edx                  #  1924  0x73092  7      
  movl 0x108(%rsp), %ecx                 #  1925  0x73099  7      
  testl %ecx, %ecx                       #  1926  0x730a0  2      
  movq %rdx, 0xa8(%rsp)                  #  1927  0x730a2  8      
  jg .L_73aa0                            #  1928  0x730aa  6      
  xchgw %ax, %ax                         #  1929  0x730b0  3      
  movl 0x120(%rsp), %edx                 #  1930  0x730b3  7      
  testl %edx, %edx                       #  1931  0x730ba  2      
  jg .L_73aa0                            #  1932  0x730bc  6      
  movq %r13, %r12                        #  1933  0x730c2  3      
  movl 0xf4(%rsp), %r13d                 #  1934  0x730c5  8      
  movq %rax, %rbx                        #  1935  0x730cd  3      
  nop                                    #  1936  0x730d0  1      
.L_73d00:                                #        0x730d1  0      
  movl 0xd8(%rsp), %esi                  #  1937  0x730d1  7      
  cmpl %esi, 0xa8(%rsp)                  #  1938  0x730d8  7      
  movq 0xd8(%rsp), %rax                  #  1939  0x730df  8      
  cmovbeq 0xa8(%rsp), %rax               #  1940  0x730e7  9      
  nop                                    #  1941  0x730f0  1      
  movq %rax, 0xa8(%rsp)                  #  1942  0x730f1  8      
  nop                                    #  1943  0x730f9  1      
  nop                                    #  1944  0x730fa  1      
.L_73d40:                                #        0x730fb  0      
  movl 0x27c(%rsp), %ecx                 #  1945  0x730fb  7      
  cmpl 0x10c(%rsp), %ecx                 #  1946  0x73102  7      
  jge .L_75340                           #  1947  0x73109  6      
  nop                                    #  1948  0x7310f  1      
.L_73d60:                                #        0x73110  0      
  movl 0x124(%rsp), %ecx                 #  1949  0x73110  7      
  movl 0x110(%rsp), %edx                 #  1950  0x73117  7      
  movl %ebx, %ebx                        #  1951  0x7311e  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1952  0x73120  5      
  movl 0x214(%rsp), %eax                 #  1953  0x73125  7      
  nop                                    #  1954  0x7312c  1      
  addl %ecx, 0x218(%rsp)                 #  1955  0x7312d  7      
  movl %ebx, %ebx                        #  1956  0x73134  2      
  movl %edx, (%r15,%rbx,1)               #  1957  0x73136  4      
  addl $0x1, %eax                        #  1958  0x7313a  3      
  cmpl $0x7, %eax                        #  1959  0x7313d  3      
  movl %eax, 0x214(%rsp)                 #  1960  0x73140  7      
  jg .L_76180                            #  1961  0x73147  6      
  movl 0x27c(%rsp), %ecx                 #  1962  0x7314d  7      
  addl $0x8, %ebx                        #  1963  0x73154  3      
  nop                                    #  1964  0x73157  1      
  nop                                    #  1965  0x73158  1      
.L_73dc0:                                #        0x73159  0      
  movl 0xc4(%rsp), %r8d                  #  1966  0x73159  8      
  movl 0x10c(%rsp), %esi                 #  1967  0x73161  7      
  subl 0xa8(%rsp), %r8d                  #  1968  0x73168  8      
  subl %ecx, %esi                        #  1969  0x73170  2      
  movl %esi, %ecx                        #  1970  0x73172  2      
  cmpl %r8d, %esi                        #  1971  0x73174  3      
  xchgw %ax, %ax                         #  1972  0x73177  3      
  cmovlel %esi, %r8d                     #  1973  0x7317a  4      
  testl %r8d, %r8d                       #  1974  0x7317e  3      
  jle .L_73e40                           #  1975  0x73181  6      
  movl 0xa8(%rsp), %eax                  #  1976  0x73187  7      
  movl %ebx, %ebx                        #  1977  0x7318e  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1978  0x73190  5      
  addl %r8d, 0x218(%rsp)                 #  1979  0x73195  8      
  nop                                    #  1980  0x7319d  1      
  movl %ebx, %ebx                        #  1981  0x7319e  2      
  movl %eax, (%r15,%rbx,1)               #  1982  0x731a0  4      
  movl 0x214(%rsp), %eax                 #  1983  0x731a4  7      
  addl $0x1, %eax                        #  1984  0x731ab  3      
  cmpl $0x7, %eax                        #  1985  0x731ae  3      
  movl %eax, 0x214(%rsp)                 #  1986  0x731b1  7      
  jg .L_761c0                            #  1987  0x731b8  6      
  movl 0x10c(%rsp), %ecx                 #  1988  0x731be  7      
  subl 0x27c(%rsp), %ecx                 #  1989  0x731c5  7      
  addl $0x8, %ebx                        #  1990  0x731cc  3      
  nop                                    #  1991  0x731cf  1      
.L_73e40:                                #        0x731d0  0      
  xorl %eax, %eax                        #  1992  0x731d0  2      
  testl %r8d, %r8d                       #  1993  0x731d2  3      
  cmovnsl %r8d, %eax                     #  1994  0x731d5  4      
  subl %eax, %ecx                        #  1995  0x731d9  2      
  testl %ecx, %ecx                       #  1996  0x731db  2      
  jle .L_71b20                           #  1997  0x731dd  6      
  cmpl $0x10, %ecx                       #  1998  0x731e3  3      
  jle .L_739c0                           #  1999  0x731e6  6      
  nop                                    #  2000  0x731ec  1      
  leal 0x210(%rsp), %edx                 #  2001  0x731ed  7      
  movq %rbx, %rax                        #  2002  0x731f4  3      
  movl %r13d, 0xa8(%rsp)                 #  2003  0x731f7  8      
  movl %ecx, %ebx                        #  2004  0x731ff  2      
  movq %r12, %r13                        #  2005  0x73201  3      
  movq 0xb8(%rsp), %r12                  #  2006  0x73204  8      
  nop                                    #  2007  0x7320c  1      
  movq %rdx, 0x18(%rsp)                  #  2008  0x7320d  5      
  jmpq .L_73ee0                          #  2009  0x73212  5      
  nop                                    #  2010  0x73217  1      
  nop                                    #  2011  0x73218  1      
.L_73ea0:                                #        0x73219  0      
  addl $0x8, %eax                        #  2012  0x73219  3      
  nop                                    #  2013  0x7321c  1      
  nop                                    #  2014  0x7321d  1      
.L_73ec0:                                #        0x7321e  0      
  subl $0x10, %ebx                       #  2015  0x7321e  3      
  cmpl $0x10, %ebx                       #  2016  0x73221  3      
  jle .L_739a0                           #  2017  0x73224  6      
  nop                                    #  2018  0x7322a  1      
  nop                                    #  2019  0x7322b  1      
.L_73ee0:                                #        0x7322c  0      
  movl %eax, %eax                        #  2020  0x7322c  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  2021  0x7322e  9      
  movl 0x214(%rsp), %edx                 #  2022  0x73237  7      
  addl $0x10, 0x218(%rsp)                #  2023  0x7323e  8      
  nop                                    #  2024  0x73246  1      
  movl %eax, %eax                        #  2025  0x73247  2      
  movl $0x10024230, (%r15,%rax,1)        #  2026  0x73249  8      
  addl $0x1, %edx                        #  2027  0x73251  3      
  cmpl $0x7, %edx                        #  2028  0x73254  3      
  movl %edx, 0x214(%rsp)                 #  2029  0x73257  7      
  jle .L_73ea0                           #  2030  0x7325e  6      
  movl 0x18(%rsp), %edx                  #  2031  0x73264  4      
  movl %r12d, %esi                       #  2032  0x73268  3      
  movl %r14d, %edi                       #  2033  0x7326b  3      
  nop                                    #  2034  0x7326e  1      
  nop                                    #  2035  0x7326f  1      
  callq .__sprint_r                      #  2036  0x73270  5      
  testl %eax, %eax                       #  2037  0x73275  2      
  jne .L_72ca0                           #  2038  0x73277  6      
  leal 0x1d0(%rsp), %eax                 #  2039  0x7327d  7      
  jmpq .L_73ec0                          #  2040  0x73284  5      
  nop                                    #  2041  0x73289  1      
.L_73f60:                                #        0x7328a  0      
  movl %eax, %eax                        #  2042  0x7328a  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2043  0x7328c  5      
  movl 0x214(%rsp), %edx                 #  2044  0x73291  7      
  addl %ebx, 0x218(%rsp)                 #  2045  0x73298  7      
  movl %eax, %eax                        #  2046  0x7329f  2      
  movl $0x10024230, (%r15,%rax,1)        #  2047  0x732a1  8      
  nop                                    #  2048  0x732a9  1      
  addl $0x1, %edx                        #  2049  0x732aa  3      
  cmpl $0x7, %edx                        #  2050  0x732ad  3      
  movl %edx, 0x214(%rsp)                 #  2051  0x732b0  7      
  jg .L_73c80                            #  2052  0x732b7  6      
  movq 0xe8(%rsp), %rsi                  #  2053  0x732bd  8      
  addl $0x8, %eax                        #  2054  0x732c5  3      
  xchgw %ax, %ax                         #  2055  0x732c8  3      
  movl %esi, %esi                        #  2056  0x732cb  2      
  movsbl (%r15,%rsi,1), %edx             #  2057  0x732cd  5      
  jmpq .L_73cc0                          #  2058  0x732d2  5      
  nop                                    #  2059  0x732d7  1      
  nop                                    #  2060  0x732d8  1      
.L_73fc0:                                #        0x732d9  0      
  testb $0x1, %r13b                      #  2061  0x732d9  4      
  jne .L_73160                           #  2062  0x732dd  6      
  movl 0xa8(%rsp), %eax                  #  2063  0x732e3  7      
  movl %ebx, %ebx                        #  2064  0x732ea  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  2065  0x732ec  9      
  nop                                    #  2066  0x732f5  1      
  addl $0x1, 0x218(%rsp)                 #  2067  0x732f6  8      
  movl %ebx, %ebx                        #  2068  0x732fe  2      
  movl %eax, (%r15,%rbx,1)               #  2069  0x73300  4      
  movl 0x214(%rsp), %eax                 #  2070  0x73304  7      
  addl $0x1, %eax                        #  2071  0x7330b  3      
  cmpl $0x7, %eax                        #  2072  0x7330e  3      
  nop                                    #  2073  0x73311  1      
  movl %eax, 0x214(%rsp)                 #  2074  0x73312  7      
  jg .L_74460                            #  2075  0x73319  6      
  leal 0x8(%rbx), %eax                   #  2076  0x7331f  3      
  jmpq .L_732a0                          #  2077  0x73322  5      
  nop                                    #  2078  0x73327  1      
.L_74020:                                #        0x73328  0      
  movl 0xb8(%rsp), %esi                  #  2079  0x73328  7      
  leal 0x210(%rsp), %edx                 #  2080  0x7332f  7      
  movl %r14d, %edi                       #  2081  0x73336  3      
  nop                                    #  2082  0x73339  1      
  callq .__sprint_r                      #  2083  0x7333a  5      
  testl %eax, %eax                       #  2084  0x7333f  2      
  jne .L_72ca0                           #  2085  0x73341  6      
  leal 0x1d0(%rsp), %eax                 #  2086  0x73347  7      
  jmpq .L_731c0                          #  2087  0x7334e  5      
  nop                                    #  2088  0x73353  1      
.L_74060:                                #        0x73354  0      
  movl 0xb8(%rsp), %esi                  #  2089  0x73354  7      
  leal 0x210(%rsp), %edx                 #  2090  0x7335b  7      
  movl %r14d, %edi                       #  2091  0x73362  3      
  nop                                    #  2092  0x73365  1      
  callq .__sprint_r                      #  2093  0x73366  5      
  testl %eax, %eax                       #  2094  0x7336b  2      
  jne .L_72ca0                           #  2095  0x7336d  6      
  leal 0x1d0(%rsp), %eax                 #  2096  0x73373  7      
  jmpq .L_73220                          #  2097  0x7337a  5      
  nop                                    #  2098  0x7337f  1      
.L_740a0:                                #        0x73380  0      
  movl 0x130(%rsp), %r11d                #  2099  0x73380  8      
  movq 0x100(%rsp), %rax                 #  2100  0x73388  8      
  movl %r13d, %r9d                       #  2101  0x73390  3      
  movl %r10d, 0xb0(%rsp)                 #  2102  0x73393  8      
  nop                                    #  2103  0x7339b  1      
  andl $0x400, %r9d                      #  2104  0x7339c  7      
  movq %rbx, %r10                        #  2105  0x733a3  3      
  movl $0x0, 0x10c(%rsp)                 #  2106  0x733a6  11     
  movq $0xcccccccccccccccd, %r8          #  2107  0x733b1  10     
  nop                                    #  2108  0x733bb  1      
  xorl %edi, %edi                        #  2109  0x733bc  2      
  negl %r11d                             #  2110  0x733be  3      
  movq %rax, %rbx                        #  2111  0x733c1  3      
  movl %r11d, 0xa8(%rsp)                 #  2112  0x733c4  8      
  movq %r12, %r11                        #  2113  0x733cc  3      
  movq 0xe8(%rsp), %r12                  #  2114  0x733cf  8      
  jmpq .L_74140                          #  2115  0x733d7  5      
  nop                                    #  2116  0x733dc  1      
.L_74100:                                #        0x733dd  0      
  movq %r12, %rsi                        #  2117  0x733dd  3      
  nop                                    #  2118  0x733e0  1      
  nop                                    #  2119  0x733e1  1      
.L_74120:                                #        0x733e2  0      
  movq %rcx, %rax                        #  2120  0x733e2  3      
  mulq %r8                               #  2121  0x733e5  3      
  movq %rdx, %rcx                        #  2122  0x733e8  3      
  shrq $0x3, %rcx                        #  2123  0x733eb  4      
  testq %rcx, %rcx                       #  2124  0x733ef  3      
  je .L_743e0                            #  2125  0x733f2  6      
  movq %rsi, %r12                        #  2126  0x733f8  3      
  nop                                    #  2127  0x733fb  1      
.L_74140:                                #        0x733fc  0      
  movq %rcx, %rax                        #  2128  0x733fc  3      
  subl $0x1, %ebx                        #  2129  0x733ff  3      
  addl $0x1, %edi                        #  2130  0x73402  3      
  mulq %r8                               #  2131  0x73405  3      
  shrq $0x3, %rdx                        #  2132  0x73408  4      
  leaq (%rdx,%rdx,4), %rax               #  2133  0x7340c  4      
  movq %rcx, %rdx                        #  2134  0x73410  3      
  addq %rax, %rax                        #  2135  0x73413  3      
  subq %rax, %rdx                        #  2136  0x73416  3      
  movq %rdx, %rax                        #  2137  0x73419  3      
  addl $0x30, %eax                       #  2138  0x7341c  3      
  testl %r9d, %r9d                       #  2139  0x7341f  3      
  movl %ebx, %ebx                        #  2140  0x73422  2      
  movb %al, (%r15,%rbx,1)                #  2141  0x73424  4      
  je .L_74100                            #  2142  0x73428  6      
  movl %r12d, %r12d                      #  2143  0x7342e  3      
  movzbl (%r15,%r12,1), %eax             #  2144  0x73431  5      
  movsbl %al, %edx                       #  2145  0x73436  3      
  cmpl %edx, %edi                        #  2146  0x73439  2      
  nop                                    #  2147  0x7343b  1      
  jne .L_74100                           #  2148  0x7343c  6      
  cmpb $0x7f, %al                        #  2149  0x73442  2      
  je .L_74100                            #  2150  0x73444  6      
  cmpq $0x9, %rcx                        #  2151  0x7344a  4      
  jbe .L_74100                           #  2152  0x7344e  6      
  addl 0xa8(%rsp), %ebx                  #  2153  0x73454  7      
  nop                                    #  2154  0x7345b  1      
  movl 0x140(%rsp), %esi                 #  2155  0x7345c  7      
  movl 0x130(%rsp), %edx                 #  2156  0x73463  7      
  movq %rcx, 0x90(%rsp)                  #  2157  0x7346a  8      
  movq %r8, 0x80(%rsp)                   #  2158  0x73472  8      
  xchgw %ax, %ax                         #  2159  0x7347a  3      
  movl %r9d, 0xa0(%rsp)                  #  2160  0x7347d  8      
  movq %r10, 0x88(%rsp)                  #  2161  0x73485  8      
  movq %r11, 0x98(%rsp)                  #  2162  0x7348d  8      
  movl %ebx, %edi                        #  2163  0x73495  2      
  nop                                    #  2164  0x73497  1      
  callq .strncpy                         #  2165  0x73498  5      
  leal 0x1(%r12), %esi                   #  2166  0x7349d  5      
  xorl %edi, %edi                        #  2167  0x734a2  2      
  movq 0x90(%rsp), %rcx                  #  2168  0x734a4  8      
  movq 0x80(%rsp), %r8                   #  2169  0x734ac  8      
  movl 0xa0(%rsp), %r9d                  #  2170  0x734b4  8      
  nop                                    #  2171  0x734bc  1      
  movl %esi, %esi                        #  2172  0x734bd  2      
  cmpb $0x0, (%r15,%rsi,1)               #  2173  0x734bf  5      
  movq 0x88(%rsp), %r10                  #  2174  0x734c4  8      
  movq 0x98(%rsp), %r11                  #  2175  0x734cc  8      
  jne .L_74120                           #  2176  0x734d4  6      
  nop                                    #  2177  0x734da  1      
  jmpq .L_74100                          #  2178  0x734db  5      
  nop                                    #  2179  0x734e0  1      
  nop                                    #  2180  0x734e1  1      
.L_74240:                                #        0x734e2  0      
  movq %r13, %r12                        #  2181  0x734e2  3      
  movl 0xa8(%rsp), %r13d                 #  2182  0x734e5  8      
  nop                                    #  2183  0x734ed  1      
  nop                                    #  2184  0x734ee  1      
.L_74260:                                #        0x734ef  0      
  movl %eax, %eax                        #  2185  0x734ef  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2186  0x734f1  5      
  movl %eax, %eax                        #  2187  0x734f6  2      
  movl $0x10024230, (%r15,%rax,1)        #  2188  0x734f8  8      
  addl %ebx, 0x218(%rsp)                 #  2189  0x73500  7      
  jmpq .L_73280                          #  2190  0x73507  5      
  nop                                    #  2191  0x7350c  1      
.L_74280:                                #        0x7350d  0      
  leal 0x240(%rsp), %ecx                 #  2192  0x7350d  7      
  movl $0x8, %edx                        #  2193  0x73514  5      
  xorl %esi, %esi                        #  2194  0x73519  2      
  movl %ecx, %edi                        #  2195  0x7351b  2      
  movq %rcx, 0x90(%rsp)                  #  2196  0x7351d  8      
  nop                                    #  2197  0x73525  1      
  callq .memset                          #  2198  0x73526  5      
  movq 0xc8(%rsp), %rax                  #  2199  0x7352b  8      
  movq 0x90(%rsp), %rcx                  #  2200  0x73533  8      
  movl %eax, %eax                        #  2201  0x7353b  2      
  movl (%r15,%rax,1), %edx               #  2202  0x7353d  4      
  cmpl $0x2f, %edx                       #  2203  0x73541  3      
  jbe .L_75040                           #  2204  0x73544  6      
  nop                                    #  2205  0x7354a  1      
  movq 0xc8(%rsp), %rdx                  #  2206  0x7354b  8      
  movq 0xc8(%rsp), %rsi                  #  2207  0x73553  8      
  movl %edx, %edx                        #  2208  0x7355b  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2209  0x7355d  5      
  leal 0x8(%rax), %edx                   #  2210  0x73562  3      
  nop                                    #  2211  0x73565  1      
  movl %esi, %esi                        #  2212  0x73566  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2213  0x73568  5      
  nop                                    #  2214  0x7356d  1      
  nop                                    #  2215  0x7356e  1      
.L_74300:                                #        0x7356f  0      
  movl %eax, %eax                        #  2216  0x7356f  2      
  movl (%r15,%rax,1), %edx               #  2217  0x73571  4      
  movl 0x68(%rsp), %esi                  #  2218  0x73575  4      
  movl %r14d, %edi                       #  2219  0x73579  3      
  nop                                    #  2220  0x7357c  1      
  callq ._wcrtomb_r                      #  2221  0x7357d  5      
  cmpl $0xffffffff, %eax                 #  2222  0x73582  5      
  movl %eax, 0xc4(%rsp)                  #  2223  0x73587  7      
  je .L_76a60                            #  2224  0x7358e  6      
  nop                                    #  2225  0x73594  1      
  nop                                    #  2226  0x73595  1      
.L_74340:                                #        0x73596  0      
  movl 0xc4(%rsp), %edx                  #  2227  0x73596  7      
  movl $0x0, %eax                        #  2228  0x7359d  5      
  movb $0x0, 0x28f(%rsp)                 #  2229  0x735a2  8      
  testl %edx, %edx                       #  2230  0x735aa  2      
  cmovnsl 0xc4(%rsp), %eax               #  2231  0x735ac  8      
  xchgw %ax, %ax                         #  2232  0x735b4  3      
  leal 0x160(%rsp), %edx                 #  2233  0x735b7  7      
  movq %rdx, 0xa8(%rsp)                  #  2234  0x735be  8      
  movl %eax, 0xb0(%rsp)                  #  2235  0x735c6  7      
  xorl %eax, %eax                        #  2236  0x735cd  2      
  nop                                    #  2237  0x735cf  1      
.L_74380:                                #        0x735d0  0      
  movq $0x0, 0xe0(%rsp)                  #  2238  0x735d0  12     
  movl $0x0, 0xfc(%rsp)                  #  2239  0x735dc  11     
  nop                                    #  2240  0x735e7  1      
  movl $0x0, 0x108(%rsp)                 #  2241  0x735e8  11     
  movl $0x0, 0x120(%rsp)                 #  2242  0x735f3  11     
  nop                                    #  2243  0x735fe  1      
  movl $0x0, 0x11c(%rsp)                 #  2244  0x735ff  11     
  jmpq .L_716e0                          #  2245  0x7360a  5      
  nop                                    #  2246  0x7360f  1      
  nop                                    #  2247  0x73610  1      
.L_743e0:                                #        0x73611  0      
  movq %rbx, 0xa8(%rsp)                  #  2248  0x73611  8      
  movl 0x100(%rsp), %ecx                 #  2249  0x73619  7      
  movq %r10, %rbx                        #  2250  0x73620  3      
  subl 0xa8(%rsp), %ecx                  #  2251  0x73623  7      
  movq %r11, %r12                        #  2252  0x7362a  3      
  nop                                    #  2253  0x7362d  1      
  movl %edi, 0x10c(%rsp)                 #  2254  0x7362e  7      
  movl 0xb0(%rsp), %r10d                 #  2255  0x73635  8      
  movl %ecx, 0xc4(%rsp)                  #  2256  0x7363d  7      
  jmpq .L_72200                          #  2257  0x73644  5      
  nop                                    #  2258  0x73649  1      
.L_74420:                                #        0x7364a  0      
  movl 0xb8(%rsp), %esi                  #  2259  0x7364a  7      
  leal 0x210(%rsp), %edx                 #  2260  0x73651  7      
  movl %r14d, %edi                       #  2261  0x73658  3      
  nop                                    #  2262  0x7365b  1      
  callq .__sprint_r                      #  2263  0x7365c  5      
  testl %eax, %eax                       #  2264  0x73661  2      
  jne .L_72ca0                           #  2265  0x73663  6      
  leal 0x1d0(%rsp), %ebx                 #  2266  0x73669  7      
  jmpq .L_71960                          #  2267  0x73670  5      
  nop                                    #  2268  0x73675  1      
.L_74460:                                #        0x73676  0      
  movl 0xb8(%rsp), %esi                  #  2269  0x73676  7      
  leal 0x210(%rsp), %edx                 #  2270  0x7367d  7      
  movl %r14d, %edi                       #  2271  0x73684  3      
  nop                                    #  2272  0x73687  1      
  callq .__sprint_r                      #  2273  0x73688  5      
  testl %eax, %eax                       #  2274  0x7368d  2      
  jne .L_72ca0                           #  2275  0x7368f  6      
  leal 0x1d0(%rsp), %eax                 #  2276  0x73695  7      
  jmpq .L_732a0                          #  2277  0x7369c  5      
  nop                                    #  2278  0x736a1  1      
.L_744a0:                                #        0x736a2  0      
  movl 0x20(%rsp), %edx                  #  2279  0x736a2  4      
  movl %r12d, %esi                       #  2280  0x736a6  3      
  movl %r14d, %edi                       #  2281  0x736a9  3      
  xchgw %ax, %ax                         #  2282  0x736ac  3      
  nop                                    #  2283  0x736af  1      
  callq .__sprint_r                      #  2284  0x736b0  5      
  testl %eax, %eax                       #  2285  0x736b5  2      
  jne .L_72ca0                           #  2286  0x736b7  6      
  leal 0x1d0(%rsp), %eax                 #  2287  0x736bd  7      
  jmpq .L_73b20                          #  2288  0x736c4  5      
  nop                                    #  2289  0x736c9  1      
.L_744e0:                                #        0x736ca  0      
  cmpb $0x30, %al                        #  2290  0x736ca  2      
  je .L_75940                            #  2291  0x736cc  6      
  movl 0xa8(%rsp), %eax                  #  2292  0x736d2  7      
  subl $0x1, %eax                        #  2293  0x736d9  3      
  movq %rax, 0xa8(%rsp)                  #  2294  0x736dc  8      
  nop                                    #  2295  0x736e4  1      
  movl %eax, %eax                        #  2296  0x736e5  2      
  movb $0x30, (%r15,%rax,1)              #  2297  0x736e7  5      
  movl 0x100(%rsp), %edx                 #  2298  0x736ec  7      
  movq 0xe8(%rsp), %rsi                  #  2299  0x736f3  8      
  subl %eax, %edx                        #  2300  0x736fb  2      
  movl %edx, 0xc4(%rsp)                  #  2301  0x736fd  7      
  nop                                    #  2302  0x73704  1      
  jmpq .L_72200                          #  2303  0x73705  5      
  nop                                    #  2304  0x7370a  1      
  nop                                    #  2305  0x7370b  1      
.L_74540:                                #        0x7370c  0      
  negq %rcx                              #  2306  0x7370c  3      
  movb $0x2d, 0x28f(%rsp)                #  2307  0x7370f  8      
  movl $0x1, %eax                        #  2308  0x73717  5      
  setne %sil                             #  2309  0x7371c  4      
  jmpq .L_72140                          #  2310  0x73720  5      
  nop                                    #  2311  0x73725  1      
.L_74560:                                #        0x73726  0      
  movq 0xc8(%rsp), %rsi                  #  2312  0x73726  8      
  movl %esi, %esi                        #  2313  0x7372e  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2314  0x73730  5      
  leal 0x8(%rdx), %eax                   #  2315  0x73735  3      
  movl %esi, %esi                        #  2316  0x73738  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2317  0x7373a  5      
  jmpq .L_723c0                          #  2318  0x7373f  5      
  xchgw %ax, %ax                         #  2319  0x73744  3      
.L_74580:                                #        0x73747  0      
  testb $0x40, %r13b                     #  2320  0x73747  4      
  jne .L_75260                           #  2321  0x7374b  6      
  testl $0x200, %r13d                    #  2322  0x73751  7      
  je .L_75b00                            #  2323  0x73758  6      
  movq 0xc8(%rsp), %rax                  #  2324  0x7375e  8      
  nop                                    #  2325  0x73766  1      
  movl %eax, %eax                        #  2326  0x73767  2      
  movl (%r15,%rax,1), %edx               #  2327  0x73769  4      
  cmpl $0x2f, %edx                       #  2328  0x7376d  3      
  ja .L_76260                            #  2329  0x73770  6      
  movq %rax, %rcx                        #  2330  0x73776  3      
  movl %eax, %eax                        #  2331  0x73779  2      
  movl 0xc(%r15,%rax,1), %eax            #  2332  0x7377b  5      
  addl %edx, %eax                        #  2333  0x73780  2      
  addl $0x8, %edx                        #  2334  0x73782  3      
  xchgw %ax, %ax                         #  2335  0x73785  3      
  movl %ecx, %ecx                        #  2336  0x73788  2      
  movl %edx, (%r15,%rcx,1)               #  2337  0x7378a  4      
  nop                                    #  2338  0x7378e  1      
  nop                                    #  2339  0x7378f  1      
.L_745e0:                                #        0x73790  0      
  movl %eax, %eax                        #  2340  0x73790  2      
  movzbl (%r15,%rax,1), %ecx             #  2341  0x73792  5      
  movl $0x1, %eax                        #  2342  0x73797  5      
  testq %rcx, %rcx                       #  2343  0x7379c  3      
  setne %sil                             #  2344  0x7379f  4      
  jmpq .L_72120                          #  2345  0x737a3  5      
  nop                                    #  2346  0x737a8  1      
.L_74600:                                #        0x737a9  0      
  movq 0xc8(%rsp), %rsi                  #  2347  0x737a9  8      
  movl %esi, %esi                        #  2348  0x737b1  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2349  0x737b3  5      
  leal 0x8(%rdx), %eax                   #  2350  0x737b8  3      
  movl %esi, %esi                        #  2351  0x737bb  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2352  0x737bd  5      
  jmpq .L_725a0                          #  2353  0x737c2  5      
  xchgw %ax, %ax                         #  2354  0x737c7  3      
.L_74620:                                #        0x737ca  0      
  movq 0xc8(%rsp), %rsi                  #  2355  0x737ca  8      
  movl %esi, %esi                        #  2356  0x737d2  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2357  0x737d4  5      
  leal 0x8(%rdx), %eax                   #  2358  0x737d9  3      
  movl %esi, %esi                        #  2359  0x737dc  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2360  0x737de  5      
  jmpq .L_720c0                          #  2361  0x737e3  5      
  xchgw %ax, %ax                         #  2362  0x737e8  3      
.L_74640:                                #        0x737eb  0      
  movq 0xc8(%rsp), %rax                  #  2363  0x737eb  8      
  movq 0xc8(%rsp), %rsi                  #  2364  0x737f3  8      
  movl %eax, %eax                        #  2365  0x737fb  2      
  movl 0x8(%r15,%rax,1), %ecx            #  2366  0x737fd  5      
  leal 0x8(%rcx), %eax                   #  2367  0x73802  3      
  nop                                    #  2368  0x73805  1      
  movl %esi, %esi                        #  2369  0x73806  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2370  0x73808  5      
  jmpq .L_71e00                          #  2371  0x7380d  5      
  nop                                    #  2372  0x73812  1      
  nop                                    #  2373  0x73813  1      
.L_74680:                                #        0x73814  0      
  movl 0xe8(%rsp), %ebx                  #  2374  0x73814  7      
  subl $0x1, 0x120(%rsp)                 #  2375  0x7381b  8      
  subl $0x1, %ebx                        #  2376  0x73823  3      
  movq %rbx, 0xe8(%rsp)                  #  2377  0x73826  8      
  jmpq .L_73ac0                          #  2378  0x7382e  5      
  nop                                    #  2379  0x73833  1      
.L_746a0:                                #        0x73834  0      
  testb $0x10, %r13b                     #  2380  0x73834  4      
  jne .L_75200                           #  2381  0x73838  6      
  testb $0x40, %r13b                     #  2382  0x7383e  4      
  je .L_75b60                            #  2383  0x73842  6      
  movq 0xc8(%rsp), %rcx                  #  2384  0x73848  8      
  nop                                    #  2385  0x73850  1      
  movl %ecx, %ecx                        #  2386  0x73851  2      
  movl (%r15,%rcx,1), %edx               #  2387  0x73853  4      
  cmpl $0x2f, %edx                       #  2388  0x73857  3      
  ja .L_762e0                            #  2389  0x7385a  6      
  movl %ecx, %ecx                        #  2390  0x73860  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2391  0x73862  5      
  addl %edx, %eax                        #  2392  0x73867  2      
  addl $0x8, %edx                        #  2393  0x73869  3      
  nop                                    #  2394  0x7386c  1      
  movl %ecx, %ecx                        #  2395  0x7386d  2      
  movl %edx, (%r15,%rcx,1)               #  2396  0x7386f  4      
  nop                                    #  2397  0x73873  1      
  nop                                    #  2398  0x73874  1      
.L_74700:                                #        0x73875  0      
  movl %eax, %eax                        #  2399  0x73875  2      
  movl (%r15,%rax,1), %eax               #  2400  0x73877  4      
  movzwl 0xd0(%rsp), %edx                #  2401  0x7387b  8      
  movl %eax, %eax                        #  2402  0x73883  2      
  movw %dx, (%r15,%rax,1)                #  2403  0x73885  5      
  jmpq .L_71d60                          #  2404  0x7388a  5      
  nop                                    #  2405  0x7388f  1      
.L_74720:                                #        0x73890  0      
  movq 0xc8(%rsp), %rsi                  #  2406  0x73890  8      
  movl %esi, %esi                        #  2407  0x73898  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2408  0x7389a  5      
  leal 0x8(%rdx), %eax                   #  2409  0x7389f  3      
  movl %esi, %esi                        #  2410  0x738a2  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2411  0x738a4  5      
  jmpq .L_72780                          #  2412  0x738a9  5      
  xchgw %ax, %ax                         #  2413  0x738ae  3      
.L_74740:                                #        0x738b1  0      
  testb $0x40, %r13b                     #  2414  0x738b1  4      
  jne .L_75140                           #  2415  0x738b5  6      
  testl $0x200, %r13d                    #  2416  0x738bb  7      
  je .L_75aa0                            #  2417  0x738c2  6      
  movq 0xc8(%rsp), %rax                  #  2418  0x738c8  8      
  nop                                    #  2419  0x738d0  1      
  movl %eax, %eax                        #  2420  0x738d1  2      
  movl (%r15,%rax,1), %edx               #  2421  0x738d3  4      
  cmpl $0x2f, %edx                       #  2422  0x738d7  3      
  ja .L_762a0                            #  2423  0x738da  6      
  movq %rax, %rcx                        #  2424  0x738e0  3      
  movl %eax, %eax                        #  2425  0x738e3  2      
  movl 0xc(%r15,%rax,1), %eax            #  2426  0x738e5  5      
  addl %edx, %eax                        #  2427  0x738ea  2      
  addl $0x8, %edx                        #  2428  0x738ec  3      
  xchgw %ax, %ax                         #  2429  0x738ef  3      
  movl %ecx, %ecx                        #  2430  0x738f2  2      
  movl %edx, (%r15,%rcx,1)               #  2431  0x738f4  4      
  nop                                    #  2432  0x738f8  1      
  nop                                    #  2433  0x738f9  1      
.L_747a0:                                #        0x738fa  0      
  movl %eax, %eax                        #  2434  0x738fa  2      
  movsbq (%r15,%rax,1), %rcx             #  2435  0x738fc  5      
  jmpq .L_723e0                          #  2436  0x73901  5      
  nop                                    #  2437  0x73906  1      
  nop                                    #  2438  0x73907  1      
.L_747c0:                                #        0x73908  0      
  movq 0xc8(%rsp), %rsi                  #  2439  0x73908  8      
  movl %esi, %esi                        #  2440  0x73910  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2441  0x73912  5      
  leal 0x8(%rdx), %eax                   #  2442  0x73917  3      
  movl %esi, %esi                        #  2443  0x7391a  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2444  0x7391c  5      
  jmpq .L_72460                          #  2445  0x73921  5      
  xchgw %ax, %ax                         #  2446  0x73926  3      
.L_747e0:                                #        0x73929  0      
  movq 0xc8(%rsp), %rsi                  #  2447  0x73929  8      
  movl %esi, %esi                        #  2448  0x73931  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2449  0x73933  5      
  leal 0x8(%rdx), %eax                   #  2450  0x73938  3      
  movl %esi, %esi                        #  2451  0x7393b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2452  0x7393d  5      
  jmpq .L_72620                          #  2453  0x73942  5      
  xchgw %ax, %ax                         #  2454  0x73947  3      
.L_74800:                                #        0x7394a  0      
  testb $0x40, %r13b                     #  2455  0x7394a  4      
  jne .L_751a0                           #  2456  0x7394e  6      
  testl $0x200, %r13d                    #  2457  0x73954  7      
  je .L_759e0                            #  2458  0x7395b  6      
  movq 0xc8(%rsp), %rax                  #  2459  0x73961  8      
  nop                                    #  2460  0x73969  1      
  movl %eax, %eax                        #  2461  0x7396a  2      
  movl (%r15,%rax,1), %edx               #  2462  0x7396c  4      
  cmpl $0x2f, %edx                       #  2463  0x73970  3      
  ja .L_76380                            #  2464  0x73973  6      
  movq %rax, %rcx                        #  2465  0x73979  3      
  movl %eax, %eax                        #  2466  0x7397c  2      
  movl 0xc(%r15,%rax,1), %eax            #  2467  0x7397e  5      
  addl %edx, %eax                        #  2468  0x73983  2      
  addl $0x8, %edx                        #  2469  0x73985  3      
  xchgw %ax, %ax                         #  2470  0x73988  3      
  movl %ecx, %ecx                        #  2471  0x7398b  2      
  movl %edx, (%r15,%rcx,1)               #  2472  0x7398d  4      
  nop                                    #  2473  0x73991  1      
  nop                                    #  2474  0x73992  1      
.L_74860:                                #        0x73993  0      
  movl %eax, %eax                        #  2475  0x73993  2      
  movzbl (%r15,%rax,1), %ecx             #  2476  0x73995  5      
  jmpq .L_727a0                          #  2477  0x7399a  5      
  nop                                    #  2478  0x7399f  1      
  nop                                    #  2479  0x739a0  1      
.L_74880:                                #        0x739a1  0      
  testb $0x40, %r13b                     #  2480  0x739a1  4      
  jne .L_750e0                           #  2481  0x739a5  6      
  testl $0x200, %r13d                    #  2482  0x739ab  7      
  je .L_75a40                            #  2483  0x739b2  6      
  movq 0xc8(%rsp), %rax                  #  2484  0x739b8  8      
  nop                                    #  2485  0x739c0  1      
  movl %eax, %eax                        #  2486  0x739c1  2      
  movl (%r15,%rax,1), %edx               #  2487  0x739c3  4      
  cmpl $0x2f, %edx                       #  2488  0x739c7  3      
  ja .L_76220                            #  2489  0x739ca  6      
  movq %rax, %rcx                        #  2490  0x739d0  3      
  movl %eax, %eax                        #  2491  0x739d3  2      
  movl 0xc(%r15,%rax,1), %eax            #  2492  0x739d5  5      
  addl %edx, %eax                        #  2493  0x739da  2      
  addl $0x8, %edx                        #  2494  0x739dc  3      
  xchgw %ax, %ax                         #  2495  0x739df  3      
  movl %ecx, %ecx                        #  2496  0x739e2  2      
  movl %edx, (%r15,%rcx,1)               #  2497  0x739e4  4      
  nop                                    #  2498  0x739e8  1      
  nop                                    #  2499  0x739e9  1      
.L_748e0:                                #        0x739ea  0      
  movl %eax, %eax                        #  2500  0x739ea  2      
  movzbl (%r15,%rax,1), %ecx             #  2501  0x739ec  5      
  jmpq .L_72640                          #  2502  0x739f1  5      
  nop                                    #  2503  0x739f6  1      
  nop                                    #  2504  0x739f7  1      
.L_74900:                                #        0x739f8  0      
  movsd 0x128(%rsp), %xmm0               #  2505  0x739f8  9      
  movl %r10d, 0x88(%rsp)                 #  2506  0x73a01  8      
  nop                                    #  2507  0x73a09  1      
  callq .__fpclassifyd                   #  2508  0x73a0a  5      
  testl %eax, %eax                       #  2509  0x73a0f  2      
  movl 0x88(%rsp), %r10d                 #  2510  0x73a11  8      
  je .L_75060                            #  2511  0x73a19  6      
  cmpl $0x61, 0xf8(%rsp)                 #  2512  0x73a1f  8      
  sete 0xc4(%rsp)                        #  2513  0x73a27  8      
  cmpl $0x41, 0xf8(%rsp)                 #  2514  0x73a2f  8      
  sete %al                               #  2515  0x73a37  3      
  orb 0xc4(%rsp), %al                    #  2516  0x73a3a  7      
  movb %al, 0xf4(%rsp)                   #  2517  0x73a41  7      
  je .L_75c00                            #  2518  0x73a48  6      
  nop                                    #  2519  0x73a4e  1      
  cmpb $0x1, 0xc4(%rsp)                  #  2520  0x73a4f  8      
  movb $0x30, 0x280(%rsp)                #  2521  0x73a57  8      
  sbbl %eax, %eax                        #  2522  0x73a5f  2      
  orl $0x2, %r13d                        #  2523  0x73a61  4      
  andl $0xffffffe0, %eax                 #  2524  0x73a65  5      
  addl $0x78, %eax                       #  2525  0x73a6a  3      
  cmpl $0x63, %r10d                      #  2526  0x73a6d  4      
  movb %al, 0x281(%rsp)                  #  2527  0x73a71  7      
  jg .L_768a0                            #  2528  0x73a78  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2529  0x73a7e  8      
  nop                                    #  2530  0x73a86  1      
  movq $0x0, 0xe0(%rsp)                  #  2531  0x73a87  12     
  sete %r11b                             #  2532  0x73a93  4      
  cmpl $0x47, 0xf8(%rsp)                 #  2533  0x73a97  8      
  sete %al                               #  2534  0x73a9f  3      
  orl %eax, %r11d                        #  2535  0x73aa2  3      
  xchgw %ax, %ax                         #  2536  0x73aa5  3      
  leal 0x160(%rsp), %eax                 #  2537  0x73aa8  7      
  movq %rax, 0xa8(%rsp)                  #  2538  0x73aaf  8      
  xchgw %ax, %ax                         #  2539  0x73ab7  3      
  nop                                    #  2540  0x73aba  1      
.L_749e0:                                #        0x73abb  0      
  movsd 0x128(%rsp), %xmm0               #  2541  0x73abb  9      
  orl $0x100, %r13d                      #  2542  0x73ac4  7      
  movb $0x0, 0xd8(%rsp)                  #  2543  0x73acb  8      
  nop                                    #  2544  0x73ad3  1      
  movsd %xmm0, 0x220(%rsp)               #  2545  0x73ad4  9      
  movl 0x224(%rsp), %eax                 #  2546  0x73add  7      
  testl %eax, %eax                       #  2547  0x73ae4  2      
  js .L_76540                            #  2548  0x73ae6  6      
  nop                                    #  2549  0x73aec  1      
.L_74a20:                                #        0x73aed  0      
  cmpb $0x0, 0xf4(%rsp)                  #  2550  0x73aed  8      
  jne .L_763a0                           #  2551  0x73af5  6      
  cmpl $0x46, 0xf8(%rsp)                 #  2552  0x73afb  8      
  sete %al                               #  2553  0x73b03  3      
  nop                                    #  2554  0x73b06  1      
  cmpl $0x66, 0xf8(%rsp)                 #  2555  0x73b07  8      
  sete %dl                               #  2556  0x73b0f  3      
  orb %dl, %al                           #  2557  0x73b12  2      
  movb %al, 0xf4(%rsp)                   #  2558  0x73b14  7      
  je .L_76040                            #  2559  0x73b1b  6      
  nop                                    #  2560  0x73b21  1      
  movl %r10d, 0xc4(%rsp)                 #  2561  0x73b22  8      
  movl $0x3, %esi                        #  2562  0x73b2a  5      
  nop                                    #  2563  0x73b2f  1      
  nop                                    #  2564  0x73b30  1      
.L_74a80:                                #        0x73b31  0      
  movl 0xc4(%rsp), %edx                  #  2565  0x73b31  7      
  leal 0x27c(%rsp), %ecx                 #  2566  0x73b38  7      
  movl %esp, %r9d                        #  2567  0x73b3f  3      
  movl %esp, %r8d                        #  2568  0x73b42  3      
  movsd 0xb0(%rsp), %xmm0                #  2569  0x73b45  9      
  nop                                    #  2570  0x73b4e  1      
  addl $0x26c, %r9d                      #  2571  0x73b4f  7      
  addl $0x270, %r8d                      #  2572  0x73b56  7      
  movl %r14d, %edi                       #  2573  0x73b5d  3      
  movl %r10d, 0x88(%rsp)                 #  2574  0x73b60  8      
  nop                                    #  2575  0x73b68  1      
  movb %r11b, 0x98(%rsp)                 #  2576  0x73b69  8      
  nop                                    #  2577  0x73b71  1      
  nop                                    #  2578  0x73b72  1      
  callq ._dtoa_r                         #  2579  0x73b73  5      
  cmpl $0x47, 0xf8(%rsp)                 #  2580  0x73b78  8      
  movl %eax, %eax                        #  2581  0x73b80  2      
  movl 0x88(%rsp), %r10d                 #  2582  0x73b82  8      
  movq %rax, 0xa8(%rsp)                  #  2583  0x73b8a  8      
  nop                                    #  2584  0x73b92  1      
  movzbl 0x98(%rsp), %r11d               #  2585  0x73b93  9      
  je .L_76020                            #  2586  0x73b9c  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2587  0x73ba2  8      
  je .L_76020                            #  2588  0x73baa  6      
  nop                                    #  2589  0x73bb0  1      
.L_74b20:                                #        0x73bb1  0      
  movl 0xc4(%rsp), %edx                  #  2590  0x73bb1  7      
  addl 0xa8(%rsp), %edx                  #  2591  0x73bb8  7      
  cmpb $0x0, 0xf4(%rsp)                  #  2592  0x73bbf  8      
  xorpd %xmm1, %xmm1                     #  2593  0x73bc7  4      
  je .L_74b80                            #  2594  0x73bcb  6      
  nop                                    #  2595  0x73bd1  1      
  movq 0xa8(%rsp), %rcx                  #  2596  0x73bd2  8      
  movl %ecx, %ecx                        #  2597  0x73bda  2      
  cmpb $0x30, (%r15,%rcx,1)              #  2598  0x73bdc  5      
  je .L_76aa0                            #  2599  0x73be1  6      
  movl 0x27c(%rsp), %eax                 #  2600  0x73be7  7      
  xorpd %xmm1, %xmm1                     #  2601  0x73bee  4      
.L_74b60:                                #        0x73bf2  0      
  leal (%rax,%rdx,1), %edx               #  2602  0x73bf2  3      
  nop                                    #  2603  0x73bf5  1      
  nop                                    #  2604  0x73bf6  1      
.L_74b80:                                #        0x73bf7  0      
  movsd 0xb0(%rsp), %xmm0                #  2605  0x73bf7  9      
  ucomisd %xmm1, %xmm0                   #  2606  0x73c00  4      
  jne .L_76600                           #  2607  0x73c04  6      
  jp .L_76600                            #  2608  0x73c0a  6      
  movl %edx, 0x26c(%rsp)                 #  2609  0x73c10  7      
.L_74ba0:                                #        0x73c17  0      
  subl 0xa8(%rsp), %edx                  #  2610  0x73c17  7      
  testb %r11b, %r11b                     #  2611  0x73c1e  3      
  movl %edx, 0x10c(%rsp)                 #  2612  0x73c21  7      
  je .L_75c40                            #  2613  0x73c28  6      
  movl 0x27c(%rsp), %ecx                 #  2614  0x73c2e  7      
  xchgw %ax, %ax                         #  2615  0x73c35  3      
  cmpl $0xfffffffd, %ecx                 #  2616  0x73c38  6      
  jl .L_75d00                            #  2617  0x73c3e  6      
  cmpl %ecx, %r10d                       #  2618  0x73c44  3      
  jl .L_75d00                            #  2619  0x73c47  6      
  movl $0x67, 0xf8(%rsp)                 #  2620  0x73c4d  11     
  nop                                    #  2621  0x73c58  1      
.L_74be0:                                #        0x73c59  0      
  cmpl %ecx, 0x10c(%rsp)                 #  2622  0x73c59  7      
  jg .L_76780                            #  2623  0x73c60  6      
  testb $0x1, %r13b                      #  2624  0x73c66  4      
  je .L_76860                            #  2625  0x73c6a  6      
  leal 0x1(%rcx), %edx                   #  2626  0x73c70  3      
  nop                                    #  2627  0x73c73  1      
  movl %edx, 0xc4(%rsp)                  #  2628  0x73c74  7      
  nop                                    #  2629  0x73c7b  1      
  nop                                    #  2630  0x73c7c  1      
.L_74c20:                                #        0x73c7d  0      
  testl $0x400, %r13d                    #  2631  0x73c7d  7      
  je .L_76140                            #  2632  0x73c84  6      
  testl %ecx, %ecx                       #  2633  0x73c8a  2      
  jle .L_76140                           #  2634  0x73c8c  6      
  movq 0xe8(%rsp), %rsi                  #  2635  0x73c92  8      
  nop                                    #  2636  0x73c9a  1      
  movq 0xe8(%rsp), %r8                   #  2637  0x73c9b  8      
  movl %esi, %esi                        #  2638  0x73ca3  2      
  movzbl (%r15,%rsi,1), %eax             #  2639  0x73ca5  5      
  movl $0x0, 0x108(%rsp)                 #  2640  0x73caa  11     
  movl %ecx, %esi                        #  2641  0x73cb5  2      
  nop                                    #  2642  0x73cb7  1      
  movl $0x0, 0x120(%rsp)                 #  2643  0x73cb8  11     
  jmpq .L_74cc0                          #  2644  0x73cc3  5      
  nop                                    #  2645  0x73cc8  1      
  nop                                    #  2646  0x73cc9  1      
.L_74c80:                                #        0x73cca  0      
  addl $0x1, 0x120(%rsp)                 #  2647  0x73cca  8      
  nop                                    #  2648  0x73cd2  1      
  nop                                    #  2649  0x73cd3  1      
.L_74ca0:                                #        0x73cd4  0      
  subl %edi, %esi                        #  2650  0x73cd4  2      
  movl %ecx, %eax                        #  2651  0x73cd6  2      
  movq %rdx, %r8                         #  2652  0x73cd8  3      
  nop                                    #  2653  0x73cdb  1      
  nop                                    #  2654  0x73cdc  1      
.L_74cc0:                                #        0x73cdd  0      
  cmpb $0x7f, %al                        #  2655  0x73cdd  2      
  je .L_76740                            #  2656  0x73cdf  6      
  movsbl %al, %edi                       #  2657  0x73ce5  3      
  cmpl %edi, %esi                        #  2658  0x73ce8  2      
  jle .L_76740                           #  2659  0x73cea  6      
  leal 0x1(%r8), %edx                    #  2660  0x73cf0  4      
  movl %edx, %edx                        #  2661  0x73cf4  2      
  movzbl (%r15,%rdx,1), %ecx             #  2662  0x73cf6  5      
  testb %cl, %cl                         #  2663  0x73cfb  2      
  jne .L_74c80                           #  2664  0x73cfd  6      
  addl $0x1, 0x108(%rsp)                 #  2665  0x73d03  8      
  movl %eax, %ecx                        #  2666  0x73d0b  2      
  movq %r8, %rdx                         #  2667  0x73d0d  3      
  jmpq .L_74ca0                          #  2668  0x73d10  5      
  nop                                    #  2669  0x73d15  1      
.L_74d00:                                #        0x73d16  0      
  movq 0xc8(%rsp), %rsi                  #  2670  0x73d16  8      
  movl %esi, %esi                        #  2671  0x73d1e  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2672  0x73d20  5      
  leal 0x8(%rdx), %eax                   #  2673  0x73d25  3      
  movl %esi, %esi                        #  2674  0x73d28  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2675  0x73d2a  5      
  jmpq .L_728c0                          #  2676  0x73d2f  5      
  xchgw %ax, %ax                         #  2677  0x73d34  3      
.L_74d20:                                #        0x73d37  0      
  movq %r13, %r12                        #  2678  0x73d37  3      
  movl 0xf4(%rsp), %r13d                 #  2679  0x73d3a  8      
  movl %ebx, %ecx                        #  2680  0x73d42  2      
  movq %rax, %rbx                        #  2681  0x73d44  3      
  nop                                    #  2682  0x73d47  1      
  nop                                    #  2683  0x73d48  1      
.L_74d40:                                #        0x73d49  0      
  movl %ebx, %ebx                        #  2684  0x73d49  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  2685  0x73d4b  5      
  movl 0x214(%rsp), %eax                 #  2686  0x73d50  7      
  addl %ecx, 0x218(%rsp)                 #  2687  0x73d57  7      
  movl %ebx, %ebx                        #  2688  0x73d5e  2      
  movl $0x10024230, (%r15,%rbx,1)        #  2689  0x73d60  8      
  nop                                    #  2690  0x73d68  1      
  addl $0x1, %eax                        #  2691  0x73d69  3      
  cmpl $0x7, %eax                        #  2692  0x73d6c  3      
  movl %eax, 0x214(%rsp)                 #  2693  0x73d6f  7      
  jg .L_739e0                            #  2694  0x73d76  6      
  addl $0x8, %ebx                        #  2695  0x73d7c  3      
  jmpq .L_73a20                          #  2696  0x73d7f  5      
  nop                                    #  2697  0x73d84  1      
.L_74d80:                                #        0x73d85  0      
  movl 0xa8(%rsp), %edx                  #  2698  0x73d85  7      
  leal 0x230(%rsp), %ecx                 #  2699  0x73d8c  7      
  xorl %esi, %esi                        #  2700  0x73d93  2      
  movl %r10d, 0x88(%rsp)                 #  2701  0x73d95  8      
  movl %ecx, %edi                        #  2702  0x73d9d  2      
  movq %rcx, 0x58(%rsp)                  #  2703  0x73d9f  5      
  nop                                    #  2704  0x73da4  1      
  movl %edx, 0x274(%rsp)                 #  2705  0x73da5  7      
  movl $0x8, %edx                        #  2706  0x73dac  5      
  nop                                    #  2707  0x73db1  1      
  callq .memset                          #  2708  0x73db2  5      
  movl 0x88(%rsp), %r10d                 #  2709  0x73db7  8      
  testl %r10d, %r10d                     #  2710  0x73dbf  3      
  js .L_76320                            #  2711  0x73dc2  6      
  xorl %r8d, %r8d                        #  2712  0x73dc8  3      
  movq %r12, 0xb0(%rsp)                  #  2713  0x73dcb  8      
  nop                                    #  2714  0x73dd3  1      
  movq %rbx, 0xe0(%rsp)                  #  2715  0x73dd4  8      
  movl %r13d, 0xd8(%rsp)                 #  2716  0x73ddc  8      
  movl $0x0, 0xc4(%rsp)                  #  2717  0x73de4  11     
  movl %r8d, %ebx                        #  2718  0x73def  3      
  xchgw %ax, %ax                         #  2719  0x73df2  3      
  movl %r10d, %r12d                      #  2720  0x73df5  3      
  xorl %r13d, %r13d                      #  2721  0x73df8  3      
  jmpq .L_74e40                          #  2722  0x73dfb  5      
  nop                                    #  2723  0x73e00  1      
  nop                                    #  2724  0x73e01  1      
.L_74e20:                                #        0x73e02  0      
  movl %eax, %r13d                       #  2725  0x73e02  3      
  nop                                    #  2726  0x73e05  1      
  nop                                    #  2727  0x73e06  1      
.L_74e40:                                #        0x73e07  0      
  movl 0x274(%rsp), %eax                 #  2728  0x73e07  7      
  addl %ebx, %eax                        #  2729  0x73e0e  2      
  movl %eax, %eax                        #  2730  0x73e10  2      
  movl (%r15,%rax,1), %edx               #  2731  0x73e12  4      
  testl %edx, %edx                       #  2732  0x73e16  2      
  je .L_75fe0                            #  2733  0x73e18  6      
  movl 0x58(%rsp), %ecx                  #  2734  0x73e1e  4      
  movl 0x68(%rsp), %esi                  #  2735  0x73e22  4      
  nop                                    #  2736  0x73e26  1      
  movl %r14d, %edi                       #  2737  0x73e27  3      
  nop                                    #  2738  0x73e2a  1      
  nop                                    #  2739  0x73e2b  1      
  callq ._wcrtomb_r                      #  2740  0x73e2c  5      
  cmpl $0xffffffff, %eax                 #  2741  0x73e31  5      
  je .L_767c0                            #  2742  0x73e36  6      
  addl %r13d, %eax                       #  2743  0x73e3c  3      
  cmpl %eax, %r12d                       #  2744  0x73e3f  3      
  jl .L_75fe0                            #  2745  0x73e42  6      
  addl $0x4, %ebx                        #  2746  0x73e48  3      
  cmpl %eax, %r12d                       #  2747  0x73e4b  3      
  nop                                    #  2748  0x73e4e  1      
  jne .L_74e20                           #  2749  0x73e4f  6      
  movl %r12d, %r10d                      #  2750  0x73e55  3      
  movq 0xe0(%rsp), %rbx                  #  2751  0x73e58  8      
  movq 0xb0(%rsp), %r12                  #  2752  0x73e60  8      
  nop                                    #  2753  0x73e68  1      
  movl 0xd8(%rsp), %r13d                 #  2754  0x73e69  8      
  movl %r10d, 0xc4(%rsp)                 #  2755  0x73e71  8      
  nop                                    #  2756  0x73e79  1      
  nop                                    #  2757  0x73e7a  1      
.L_74ee0:                                #        0x73e7b  0      
  movl 0xc4(%rsp), %r11d                 #  2758  0x73e7b  8      
  testl %r11d, %r11d                     #  2759  0x73e83  3      
  jne .L_75720                           #  2760  0x73e86  6      
  movzbl 0x28f(%rsp), %eax               #  2761  0x73e8c  8      
  nop                                    #  2762  0x73e94  1      
  movl $0x0, 0xb0(%rsp)                  #  2763  0x73e95  11     
  nop                                    #  2764  0x73ea0  1      
  nop                                    #  2765  0x73ea1  1      
.L_74f20:                                #        0x73ea2  0      
  movq $0x0, 0xe0(%rsp)                  #  2766  0x73ea2  12     
  movl $0x0, 0xfc(%rsp)                  #  2767  0x73eae  11     
  nop                                    #  2768  0x73eb9  1      
  movl $0x0, 0x108(%rsp)                 #  2769  0x73eba  11     
  movl $0x0, 0x120(%rsp)                 #  2770  0x73ec5  11     
  nop                                    #  2771  0x73ed0  1      
  movl $0x0, 0x11c(%rsp)                 #  2772  0x73ed1  11     
  jmpq .L_72280                          #  2773  0x73edc  5      
  nop                                    #  2774  0x73ee1  1      
  nop                                    #  2775  0x73ee2  1      
.L_74f80:                                #        0x73ee3  0      
  movl %ebx, %ecx                        #  2776  0x73ee3  2      
  movq %r13, %r12                        #  2777  0x73ee5  3      
  movq %rax, %rbx                        #  2778  0x73ee8  3      
  movl 0xa8(%rsp), %r13d                 #  2779  0x73eeb  8      
  jmpq .L_739c0                          #  2780  0x73ef3  5      
  nop                                    #  2781  0x73ef8  1      
.L_74fa0:                                #        0x73ef9  0      
  movl 0x20(%rsp), %edx                  #  2782  0x73ef9  4      
  movl %r12d, %esi                       #  2783  0x73efd  3      
  movl %r14d, %edi                       #  2784  0x73f00  3      
  movl %ecx, 0x90(%rsp)                  #  2785  0x73f03  7      
  nop                                    #  2786  0x73f0a  1      
  callq .__sprint_r                      #  2787  0x73f0b  5      
  testl %eax, %eax                       #  2788  0x73f10  2      
  movl 0x90(%rsp), %ecx                  #  2789  0x73f12  7      
  jne .L_72ca0                           #  2790  0x73f19  6      
  movq 0xe8(%rsp), %rax                  #  2791  0x73f1f  8      
  movl %eax, %eax                        #  2792  0x73f27  2      
  movsbl (%r15,%rax,1), %edx             #  2793  0x73f29  5      
  xchgw %ax, %ax                         #  2794  0x73f2e  3      
  leal 0x1d0(%rsp), %eax                 #  2795  0x73f31  7      
  jmpq .L_73ba0                          #  2796  0x73f38  5      
  nop                                    #  2797  0x73f3d  1      
  nop                                    #  2798  0x73f3e  1      
.L_75000:                                #        0x73f3f  0      
  movl 0xb8(%rsp), %esi                  #  2799  0x73f3f  7      
  leal 0x210(%rsp), %edx                 #  2800  0x73f46  7      
  movl %r14d, %edi                       #  2801  0x73f4d  3      
  nop                                    #  2802  0x73f50  1      
  callq .__sprint_r                      #  2803  0x73f51  5      
  testl %eax, %eax                       #  2804  0x73f56  2      
  jne .L_72ca0                           #  2805  0x73f58  6      
  leal 0x1d0(%rsp), %ebx                 #  2806  0x73f5e  7      
  jmpq .L_72dc0                          #  2807  0x73f65  5      
  nop                                    #  2808  0x73f6a  1      
.L_75040:                                #        0x73f6b  0      
  movq %rax, %rsi                        #  2809  0x73f6b  3      
  movl %eax, %eax                        #  2810  0x73f6e  2      
  movl 0xc(%r15,%rax,1), %eax            #  2811  0x73f70  5      
  addl %edx, %eax                        #  2812  0x73f75  2      
  addl $0x8, %edx                        #  2813  0x73f77  3      
  movl %esi, %esi                        #  2814  0x73f7a  2      
  movl %edx, (%r15,%rsi,1)               #  2815  0x73f7c  4      
  jmpq .L_74300                          #  2816  0x73f80  5      
  nop                                    #  2817  0x73f85  1      
.L_75060:                                #        0x73f86  0      
  movq $0x10023bf9, 0xa8(%rsp)           #  2818  0x73f86  12     
  cmpl $0x47, 0xf8(%rsp)                 #  2819  0x73f92  8      
  movl $0x10023bfd, %eax                 #  2820  0x73f9a  5      
  jmpq .L_72960                          #  2821  0x73f9f  5      
  xchgw %ax, %ax                         #  2822  0x73fa4  3      
.L_75080:                                #        0x73fa7  0      
  movl %ecx, %ecx                        #  2823  0x73fa7  2      
  movl 0xc(%r15,%rcx,1), %edx            #  2824  0x73fa9  5      
  addl %eax, %edx                        #  2825  0x73fae  2      
  addl $0x8, %eax                        #  2826  0x73fb0  3      
  movl %ecx, %ecx                        #  2827  0x73fb3  2      
  movl %eax, (%r15,%rcx,1)               #  2828  0x73fb5  4      
  jmpq .L_72bc0                          #  2829  0x73fb9  5      
  nop                                    #  2830  0x73fbe  1      
.L_750a0:                                #        0x73fbf  0      
  movq 0xc8(%rsp), %rsi                  #  2831  0x73fbf  8      
  movl %esi, %esi                        #  2832  0x73fc7  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2833  0x73fc9  5      
  leal 0x8(%rdx), %eax                   #  2834  0x73fce  3      
  movl %esi, %esi                        #  2835  0x73fd1  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2836  0x73fd3  5      
  jmpq .L_73800                          #  2837  0x73fd8  5      
  xchgw %ax, %ax                         #  2838  0x73fdd  3      
.L_750c0:                                #        0x73fe0  0      
  movq 0xc8(%rsp), %rsi                  #  2839  0x73fe0  8      
  movl %esi, %esi                        #  2840  0x73fe8  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2841  0x73fea  5      
  leal 0x8(%rdx), %eax                   #  2842  0x73fef  3      
  movl %esi, %esi                        #  2843  0x73ff2  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2844  0x73ff4  5      
  jmpq .L_737a0                          #  2845  0x73ff9  5      
  xchgw %ax, %ax                         #  2846  0x73ffe  3      
.L_750e0:                                #        0x74001  0      
  movq 0xc8(%rsp), %rax                  #  2847  0x74001  8      
  movl %eax, %eax                        #  2848  0x74009  2      
  movl (%r15,%rax,1), %edx               #  2849  0x7400b  4      
  cmpl $0x2f, %edx                       #  2850  0x7400f  3      
  ja .L_759a0                            #  2851  0x74012  6      
  movq %rax, %rcx                        #  2852  0x74018  3      
  nop                                    #  2853  0x7401b  1      
  movl %eax, %eax                        #  2854  0x7401c  2      
  movl 0xc(%r15,%rax,1), %eax            #  2855  0x7401e  5      
  addl %edx, %eax                        #  2856  0x74023  2      
  addl $0x8, %edx                        #  2857  0x74025  3      
  movl %ecx, %ecx                        #  2858  0x74028  2      
  movl %edx, (%r15,%rcx,1)               #  2859  0x7402a  4      
  nop                                    #  2860  0x7402e  1      
.L_75120:                                #        0x7402f  0      
  movl %eax, %eax                        #  2861  0x7402f  2      
  movzwl (%r15,%rax,1), %ecx             #  2862  0x74031  5      
  jmpq .L_72640                          #  2863  0x74036  5      
  nop                                    #  2864  0x7403b  1      
  nop                                    #  2865  0x7403c  1      
.L_75140:                                #        0x7403d  0      
  movq 0xc8(%rsp), %rax                  #  2866  0x7403d  8      
  movl %eax, %eax                        #  2867  0x74045  2      
  movl (%r15,%rax,1), %edx               #  2868  0x74047  4      
  cmpl $0x2f, %edx                       #  2869  0x7404b  3      
  ja .L_75bc0                            #  2870  0x7404e  6      
  movq %rax, %rcx                        #  2871  0x74054  3      
  nop                                    #  2872  0x74057  1      
  movl %eax, %eax                        #  2873  0x74058  2      
  movl 0xc(%r15,%rax,1), %eax            #  2874  0x7405a  5      
  addl %edx, %eax                        #  2875  0x7405f  2      
  addl $0x8, %edx                        #  2876  0x74061  3      
  movl %ecx, %ecx                        #  2877  0x74064  2      
  movl %edx, (%r15,%rcx,1)               #  2878  0x74066  4      
  nop                                    #  2879  0x7406a  1      
.L_75180:                                #        0x7406b  0      
  movl %eax, %eax                        #  2880  0x7406b  2      
  movswq (%r15,%rax,1), %rcx             #  2881  0x7406d  5      
  jmpq .L_723e0                          #  2882  0x74072  5      
  nop                                    #  2883  0x74077  1      
  nop                                    #  2884  0x74078  1      
.L_751a0:                                #        0x74079  0      
  movq 0xc8(%rsp), %rax                  #  2885  0x74079  8      
  movl %eax, %eax                        #  2886  0x74081  2      
  movl (%r15,%rax,1), %edx               #  2887  0x74083  4      
  cmpl $0x2f, %edx                       #  2888  0x74087  3      
  ja .L_75be0                            #  2889  0x7408a  6      
  movq %rax, %rcx                        #  2890  0x74090  3      
  nop                                    #  2891  0x74093  1      
  movl %eax, %eax                        #  2892  0x74094  2      
  movl 0xc(%r15,%rax,1), %eax            #  2893  0x74096  5      
  addl %edx, %eax                        #  2894  0x7409b  2      
  addl $0x8, %edx                        #  2895  0x7409d  3      
  movl %ecx, %ecx                        #  2896  0x740a0  2      
  movl %edx, (%r15,%rcx,1)               #  2897  0x740a2  4      
  nop                                    #  2898  0x740a6  1      
.L_751e0:                                #        0x740a7  0      
  movl %eax, %eax                        #  2899  0x740a7  2      
  movzwl (%r15,%rax,1), %ecx             #  2900  0x740a9  5      
  jmpq .L_727a0                          #  2901  0x740ae  5      
  nop                                    #  2902  0x740b3  1      
  nop                                    #  2903  0x740b4  1      
.L_75200:                                #        0x740b5  0      
  movq 0xc8(%rsp), %rax                  #  2904  0x740b5  8      
  movl %eax, %eax                        #  2905  0x740bd  2      
  movl (%r15,%rax,1), %edx               #  2906  0x740bf  4      
  cmpl $0x2f, %edx                       #  2907  0x740c3  3      
  ja .L_75980                            #  2908  0x740c6  6      
  movq %rax, %rcx                        #  2909  0x740cc  3      
  nop                                    #  2910  0x740cf  1      
  movl %eax, %eax                        #  2911  0x740d0  2      
  movl 0xc(%r15,%rax,1), %eax            #  2912  0x740d2  5      
  addl %edx, %eax                        #  2913  0x740d7  2      
  addl $0x8, %edx                        #  2914  0x740d9  3      
  movl %ecx, %ecx                        #  2915  0x740dc  2      
  movl %edx, (%r15,%rcx,1)               #  2916  0x740de  4      
  nop                                    #  2917  0x740e2  1      
.L_75240:                                #        0x740e3  0      
  movl %eax, %eax                        #  2918  0x740e3  2      
  movl (%r15,%rax,1), %eax               #  2919  0x740e5  4      
  movl 0xd0(%rsp), %edx                  #  2920  0x740e9  7      
  movl %eax, %eax                        #  2921  0x740f0  2      
  movl %edx, (%r15,%rax,1)               #  2922  0x740f2  4      
  jmpq .L_71d60                          #  2923  0x740f6  5      
  nop                                    #  2924  0x740fb  1      
.L_75260:                                #        0x740fc  0      
  movq 0xc8(%rsp), %rax                  #  2925  0x740fc  8      
  movl %eax, %eax                        #  2926  0x74104  2      
  movl (%r15,%rax,1), %edx               #  2927  0x74106  4      
  cmpl $0x2f, %edx                       #  2928  0x7410a  3      
  ja .L_759c0                            #  2929  0x7410d  6      
  movq %rax, %rcx                        #  2930  0x74113  3      
  nop                                    #  2931  0x74116  1      
  movl %eax, %eax                        #  2932  0x74117  2      
  movl 0xc(%r15,%rax,1), %eax            #  2933  0x74119  5      
  addl %edx, %eax                        #  2934  0x7411e  2      
  addl $0x8, %edx                        #  2935  0x74120  3      
  movl %ecx, %ecx                        #  2936  0x74123  2      
  movl %edx, (%r15,%rcx,1)               #  2937  0x74125  4      
  nop                                    #  2938  0x74129  1      
.L_752a0:                                #        0x7412a  0      
  movl %eax, %eax                        #  2939  0x7412a  2      
  movzwl (%r15,%rax,1), %ecx             #  2940  0x7412c  5      
  movl $0x1, %eax                        #  2941  0x74131  5      
  testq %rcx, %rcx                       #  2942  0x74136  3      
  setne %sil                             #  2943  0x74139  4      
  jmpq .L_72120                          #  2944  0x7413d  5      
  nop                                    #  2945  0x74142  1      
.L_752c0:                                #        0x74143  0      
  movq 0xc8(%rsp), %rsi                  #  2946  0x74143  8      
  movl %esi, %esi                        #  2947  0x7414b  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2948  0x7414d  5      
  leal 0x8(%rdx), %eax                   #  2949  0x74152  3      
  movl %esi, %esi                        #  2950  0x74155  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2951  0x74157  5      
  jmpq .L_72820                          #  2952  0x7415c  5      
  xchgw %ax, %ax                         #  2953  0x74161  3      
.L_752e0:                                #        0x74164  0      
  movq 0xc8(%rsp), %rsi                  #  2954  0x74164  8      
  movl %esi, %esi                        #  2955  0x7416c  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2956  0x7416e  5      
  leal 0x8(%rdx), %eax                   #  2957  0x74173  3      
  movl %esi, %esi                        #  2958  0x74176  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2959  0x74178  5      
  jmpq .L_73860                          #  2960  0x7417d  5      
  xchgw %ax, %ax                         #  2961  0x74182  3      
.L_75300:                                #        0x74185  0      
  jp .L_72940                            #  2962  0x74185  6      
  movb $0x2d, 0x28f(%rsp)                #  2963  0x7418b  8      
  jmpq .L_72940                          #  2964  0x74193  5      
  nop                                    #  2965  0x74198  1      
.L_75320:                                #        0x74199  0      
  movq 0xc8(%rsp), %rsi                  #  2966  0x74199  8      
  movl %esi, %esi                        #  2967  0x741a1  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2968  0x741a3  5      
  leal 0x8(%rdx), %eax                   #  2969  0x741a8  3      
  movl %esi, %esi                        #  2970  0x741ab  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2971  0x741ad  5      
  jmpq .L_72340                          #  2972  0x741b2  5      
  xchgw %ax, %ax                         #  2973  0x741b7  3      
.L_75340:                                #        0x741ba  0      
  testb $0x1, %r13b                      #  2974  0x741ba  4      
  je .L_73dc0                            #  2975  0x741be  6      
  jmpq .L_73d60                          #  2976  0x741c4  5      
  xchgw %ax, %ax                         #  2977  0x741c9  3      
  nop                                    #  2978  0x741cc  1      
.L_75360:                                #        0x741cd  0      
  movl 0xa8(%rsp), %edi                  #  2979  0x741cd  7      
  movl %ecx, 0x90(%rsp)                  #  2980  0x741d4  7      
  nop                                    #  2981  0x741db  1      
  callq .strlen                          #  2982  0x741dc  5      
  movl 0x90(%rsp), %ecx                  #  2983  0x741e1  7      
  testl %eax, %eax                       #  2984  0x741e8  2      
  movl %eax, 0xc4(%rsp)                  #  2985  0x741ea  7      
  cmovnsl %eax, %ecx                     #  2986  0x741f1  3      
  movzbl 0x28f(%rsp), %eax               #  2987  0x741f4  8      
  nop                                    #  2988  0x741fc  1      
  movl %ecx, 0xb0(%rsp)                  #  2989  0x741fd  7      
  jmpq .L_74f20                          #  2990  0x74204  5      
  nop                                    #  2991  0x74209  1      
  nop                                    #  2992  0x7420a  1      
.L_753c0:                                #        0x7420b  0      
  cmpl $0x0, 0x108(%rsp)                 #  2993  0x7420b  8      
  jg .L_73a60                            #  2994  0x74213  6      
  jmpq .L_73d00                          #  2995  0x74219  5      
  nop                                    #  2996  0x7421e  1      
.L_753e0:                                #        0x7421f  0      
  movl 0x218(%rsp), %eax                 #  2997  0x7421f  7      
  testl %eax, %eax                       #  2998  0x74226  2      
  jne .L_760c0                           #  2999  0x74228  6      
  xchgw %ax, %ax                         #  3000  0x7422e  3      
  nop                                    #  3001  0x74231  1      
.L_75400:                                #        0x74232  0      
  movq 0xb8(%rsp), %rdx                  #  3002  0x74232  8      
  movl $0x0, 0x214(%rsp)                 #  3003  0x7423a  11     
  movl %edx, %edx                        #  3004  0x74245  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3005  0x74247  6      
  jmpq .L_72ce0                          #  3006  0x7424d  5      
.L_75420:                                #        0x74252  0      
  movl %ebx, %ebx                        #  3007  0x74252  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  3008  0x74254  9      
  movl 0x214(%rsp), %eax                 #  3009  0x7425d  7      
  addl $0x1, 0x218(%rsp)                 #  3010  0x74264  8      
  nop                                    #  3011  0x7426c  1      
  movl %ebx, %ebx                        #  3012  0x7426d  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  3013  0x7426f  8      
  addl $0x1, %eax                        #  3014  0x74277  3      
  cmpl $0x7, %eax                        #  3015  0x7427a  3      
  movl %eax, 0x214(%rsp)                 #  3016  0x7427d  7      
  jg .L_76100                            #  3017  0x74284  6      
  addl $0x8, %ebx                        #  3018  0x7428a  3      
.L_75460:                                #        0x7428d  0      
  movl 0x27c(%rsp), %edi                 #  3019  0x7428d  7      
  testl %edi, %edi                       #  3020  0x74294  2      
  jne .L_75480                           #  3021  0x74296  6      
  cmpl $0x0, 0x10c(%rsp)                 #  3022  0x7429c  8      
  jne .L_75480                           #  3023  0x742a4  6      
  testb $0x1, %r13b                      #  3024  0x742aa  4      
  je .L_71b20                            #  3025  0x742ae  6      
  nop                                    #  3026  0x742b4  1      
.L_75480:                                #        0x742b5  0      
  movl 0x110(%rsp), %eax                 #  3027  0x742b5  7      
  movl 0x124(%rsp), %edx                 #  3028  0x742bc  7      
  movl %ebx, %ebx                        #  3029  0x742c3  2      
  movl %eax, (%r15,%rbx,1)               #  3030  0x742c5  4      
  movl %ebx, %ebx                        #  3031  0x742c9  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  3032  0x742cb  5      
  nop                                    #  3033  0x742d0  1      
  movl 0x214(%rsp), %eax                 #  3034  0x742d1  7      
  addl %edx, 0x218(%rsp)                 #  3035  0x742d8  7      
  addl $0x1, %eax                        #  3036  0x742df  3      
  cmpl $0x7, %eax                        #  3037  0x742e2  3      
  movl %eax, 0x214(%rsp)                 #  3038  0x742e5  7      
  nop                                    #  3039  0x742ec  1      
  jg .L_76080                            #  3040  0x742ed  6      
  leal 0x8(%rbx), %eax                   #  3041  0x742f3  3      
  nop                                    #  3042  0x742f6  1      
  nop                                    #  3043  0x742f7  1      
.L_754e0:                                #        0x742f8  0      
  movl 0x27c(%rsp), %ebx                 #  3044  0x742f8  7      
  negl %ebx                              #  3045  0x742ff  2      
  testl %ebx, %ebx                       #  3046  0x74301  2      
  jle .L_756e0                           #  3047  0x74303  6      
  cmpl $0x10, %ebx                       #  3048  0x74309  3      
  jle .L_756a0                           #  3049  0x7430c  6      
  nop                                    #  3050  0x74312  1      
  leal 0x210(%rsp), %ecx                 #  3051  0x74313  7      
  movl %r13d, 0xc4(%rsp)                 #  3052  0x7431a  8      
  movq %r12, %r13                        #  3053  0x74322  3      
  movq 0xb8(%rsp), %r12                  #  3054  0x74325  8      
  movq %rcx, 0x30(%rsp)                  #  3055  0x7432d  5      
  nop                                    #  3056  0x74332  1      
  jmpq .L_75580                          #  3057  0x74333  5      
  nop                                    #  3058  0x74338  1      
  nop                                    #  3059  0x74339  1      
.L_75540:                                #        0x7433a  0      
  addl $0x8, %eax                        #  3060  0x7433a  3      
  nop                                    #  3061  0x7433d  1      
  nop                                    #  3062  0x7433e  1      
.L_75560:                                #        0x7433f  0      
  subl $0x10, %ebx                       #  3063  0x7433f  3      
  cmpl $0x10, %ebx                       #  3064  0x74342  3      
  jle .L_75680                           #  3065  0x74345  6      
  nop                                    #  3066  0x7434b  1      
  nop                                    #  3067  0x7434c  1      
.L_75580:                                #        0x7434d  0      
  movl %eax, %eax                        #  3068  0x7434d  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  3069  0x7434f  9      
  movl 0x214(%rsp), %edx                 #  3070  0x74358  7      
  addl $0x10, 0x218(%rsp)                #  3071  0x7435f  8      
  nop                                    #  3072  0x74367  1      
  movl %eax, %eax                        #  3073  0x74368  2      
  movl $0x10024230, (%r15,%rax,1)        #  3074  0x7436a  8      
  addl $0x1, %edx                        #  3075  0x74372  3      
  cmpl $0x7, %edx                        #  3076  0x74375  3      
  movl %edx, 0x214(%rsp)                 #  3077  0x74378  7      
  jle .L_75540                           #  3078  0x7437f  6      
  movl 0x30(%rsp), %edx                  #  3079  0x74385  4      
  movl %r12d, %esi                       #  3080  0x74389  3      
  movl %r14d, %edi                       #  3081  0x7438c  3      
  nop                                    #  3082  0x7438f  1      
  nop                                    #  3083  0x74390  1      
  callq .__sprint_r                      #  3084  0x74391  5      
  testl %eax, %eax                       #  3085  0x74396  2      
  jne .L_72ca0                           #  3086  0x74398  6      
  leal 0x1d0(%rsp), %eax                 #  3087  0x7439e  7      
  jmpq .L_75560                          #  3088  0x743a5  5      
  nop                                    #  3089  0x743aa  1      
.L_75600:                                #        0x743ab  0      
  addl $0x1, %r12d                       #  3090  0x743ab  4      
  orl $0x20, %r13d                       #  3091  0x743af  4      
  movl %r12d, %r12d                      #  3092  0x743b3  3      
  movzbl (%r15,%r12,1), %eax             #  3093  0x743b6  5      
  jmpq .L_71600                          #  3094  0x743bb  5      
  nop                                    #  3095  0x743c0  1      
.L_75620:                                #        0x743c1  0      
  addl $0x1, %r12d                       #  3096  0x743c1  4      
  orl $0x200, %r13d                      #  3097  0x743c5  7      
  movl %r12d, %r12d                      #  3098  0x743cc  3      
  movzbl (%r15,%r12,1), %eax             #  3099  0x743cf  5      
  jmpq .L_71600                          #  3100  0x743d4  5      
  nop                                    #  3101  0x743d9  1      
.L_75640:                                #        0x743da  0      
  movl 0xb8(%rsp), %esi                  #  3102  0x743da  7      
  leal 0x210(%rsp), %edx                 #  3103  0x743e1  7      
  movl %r14d, %edi                       #  3104  0x743e8  3      
  nop                                    #  3105  0x743eb  1      
  callq .__sprint_r                      #  3106  0x743ec  5      
  testl %eax, %eax                       #  3107  0x743f1  2      
  jne .L_72ca0                           #  3108  0x743f3  6      
  leal 0x1d0(%rsp), %ebx                 #  3109  0x743f9  7      
  jmpq .L_72e40                          #  3110  0x74400  5      
  nop                                    #  3111  0x74405  1      
.L_75680:                                #        0x74406  0      
  movq %r13, %r12                        #  3112  0x74406  3      
  movl 0xc4(%rsp), %r13d                 #  3113  0x74409  8      
  nop                                    #  3114  0x74411  1      
  nop                                    #  3115  0x74412  1      
.L_756a0:                                #        0x74413  0      
  movl %eax, %eax                        #  3116  0x74413  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  3117  0x74415  5      
  movl 0x214(%rsp), %edx                 #  3118  0x7441a  7      
  addl %ebx, 0x218(%rsp)                 #  3119  0x74421  7      
  movl %eax, %eax                        #  3120  0x74428  2      
  movl $0x10024230, (%r15,%rax,1)        #  3121  0x7442a  8      
  nop                                    #  3122  0x74432  1      
  addl $0x1, %edx                        #  3123  0x74433  3      
  cmpl $0x7, %edx                        #  3124  0x74436  3      
  movl %edx, 0x214(%rsp)                 #  3125  0x74439  7      
  jg .L_767e0                            #  3126  0x74440  6      
  addl $0x8, %eax                        #  3127  0x74446  3      
  nop                                    #  3128  0x74449  1      
.L_756e0:                                #        0x7444a  0      
  movl 0x10c(%rsp), %esi                 #  3129  0x7444a  7      
  movl 0xa8(%rsp), %ebx                  #  3130  0x74451  7      
  movl %eax, %eax                        #  3131  0x74458  2      
  movl %esi, 0x4(%r15,%rax,1)            #  3132  0x7445a  5      
  movl %eax, %eax                        #  3133  0x7445f  2      
  movl %ebx, (%r15,%rax,1)               #  3134  0x74461  4      
  nop                                    #  3135  0x74465  1      
  addl %esi, 0x218(%rsp)                 #  3136  0x74466  7      
  jmpq .L_732e0                          #  3137  0x7446d  5      
  nop                                    #  3138  0x74472  1      
  nop                                    #  3139  0x74473  1      
.L_75720:                                #        0x74474  0      
  cmpl $0x63, 0xc4(%rsp)                 #  3140  0x74474  8      
  leal 0x160(%rsp), %edx                 #  3141  0x7447c  7      
  movq $0x0, 0xe0(%rsp)                  #  3142  0x74483  12     
  nop                                    #  3143  0x7448f  1      
  movq %rdx, 0xa8(%rsp)                  #  3144  0x74490  8      
  jle .L_757a0                           #  3145  0x74498  6      
  movl 0xc4(%rsp), %esi                  #  3146  0x7449e  7      
  movl %r14d, %edi                       #  3147  0x744a5  3      
  addl $0x1, %esi                        #  3148  0x744a8  3      
  nop                                    #  3149  0x744ab  1      
  callq ._malloc_r                       #  3150  0x744ac  5      
  movl %eax, %eax                        #  3151  0x744b1  2      
  testq %rax, %rax                       #  3152  0x744b3  3      
  movq %rax, 0xe0(%rsp)                  #  3153  0x744b6  8      
  je .L_76bc0                            #  3154  0x744be  6      
  movq 0xe0(%rsp), %rsi                  #  3155  0x744c4  8      
  nop                                    #  3156  0x744cc  1      
  movq %rsi, 0xa8(%rsp)                  #  3157  0x744cd  8      
  nop                                    #  3158  0x744d5  1      
  nop                                    #  3159  0x744d6  1      
.L_757a0:                                #        0x744d7  0      
  movl 0x58(%rsp), %edi                  #  3160  0x744d7  4      
  xorl %esi, %esi                        #  3161  0x744db  2      
  movl $0x8, %edx                        #  3162  0x744dd  5      
  nop                                    #  3163  0x744e2  1      
  nop                                    #  3164  0x744e3  1      
  callq .memset                          #  3165  0x744e4  5      
  movl 0x58(%rsp), %r8d                  #  3166  0x744e9  5      
  movl 0xc4(%rsp), %ecx                  #  3167  0x744ee  7      
  leal 0x274(%rsp), %edx                 #  3168  0x744f5  7      
  movl 0xa8(%rsp), %esi                  #  3169  0x744fc  7      
  movl %r14d, %edi                       #  3170  0x74503  3      
  nop                                    #  3171  0x74506  1      
  nop                                    #  3172  0x74507  1      
  nop                                    #  3173  0x74508  1      
  callq ._wcsrtombs_r                    #  3174  0x74509  5      
  cmpl %eax, 0xc4(%rsp)                  #  3175  0x7450e  7      
  jne .L_72c80                           #  3176  0x74515  6      
  movl 0xc4(%rsp), %eax                  #  3177  0x7451b  7      
  addl 0xa8(%rsp), %eax                  #  3178  0x74522  7      
  movl $0x0, %edx                        #  3179  0x74529  5      
  movl %eax, %eax                        #  3180  0x7452e  2      
  movb $0x0, (%r15,%rax,1)               #  3181  0x74530  5      
  movl 0xc4(%rsp), %r10d                 #  3182  0x74535  8      
  movzbl 0x28f(%rsp), %eax               #  3183  0x7453d  8      
  nop                                    #  3184  0x74545  1      
  movl $0x0, 0xfc(%rsp)                  #  3185  0x74546  11     
  movl $0x0, 0x108(%rsp)                 #  3186  0x74551  11     
  nop                                    #  3187  0x7455c  1      
  movl $0x0, 0x120(%rsp)                 #  3188  0x7455d  11     
  testl %r10d, %r10d                     #  3189  0x74568  3      
  cmovnsl 0xc4(%rsp), %edx               #  3190  0x7456b  8      
  nop                                    #  3191  0x74573  1      
  movl $0x0, 0x11c(%rsp)                 #  3192  0x74574  11     
  movl %edx, 0xb0(%rsp)                  #  3193  0x7457f  7      
  jmpq .L_72280                          #  3194  0x74586  5      
  nop                                    #  3195  0x7458b  1      
.L_758a0:                                #        0x7458c  0      
  movl 0xb8(%rsp), %esi                  #  3196  0x7458c  7      
  leal 0x210(%rsp), %edx                 #  3197  0x74593  7      
  movl %r14d, %edi                       #  3198  0x7459a  3      
  movl %r8d, 0x80(%rsp)                  #  3199  0x7459d  8      
  xchgw %ax, %ax                         #  3200  0x745a5  3      
  callq .__sprint_r                      #  3201  0x745a8  5      
  testl %eax, %eax                       #  3202  0x745ad  2      
  movl 0x80(%rsp), %r8d                  #  3203  0x745af  8      
  jne .L_72ca0                           #  3204  0x745b7  6      
  leal 0x1d0(%rsp), %ebx                 #  3205  0x745bd  7      
  jmpq .L_73540                          #  3206  0x745c4  5      
  nop                                    #  3207  0x745c9  1      
.L_758e0:                                #        0x745ca  0      
  movl $0x6, 0xc4(%rsp)                  #  3208  0x745ca  11     
  cmpl $0x6, %r10d                       #  3209  0x745d5  4      
  cmoval 0xc4(%rsp), %r10d               #  3210  0x745d9  9      
  movl $0x0, %eax                        #  3211  0x745e2  5      
  nop                                    #  3212  0x745e7  1      
  movq $0x10023c12, 0xa8(%rsp)           #  3213  0x745e8  12     
  testl %r10d, %r10d                     #  3214  0x745f4  3      
  movl %r10d, 0xc4(%rsp)                 #  3215  0x745f7  8      
  cmovnsl %r10d, %eax                    #  3216  0x745ff  4      
  nop                                    #  3217  0x74603  1      
  movl %eax, 0xb0(%rsp)                  #  3218  0x74604  7      
  xorl %eax, %eax                        #  3219  0x7460b  2      
  jmpq .L_74380                          #  3220  0x7460d  5      
  nop                                    #  3221  0x74612  1      
  nop                                    #  3222  0x74613  1      
.L_75940:                                #        0x74614  0      
  movl 0x100(%rsp), %esi                 #  3223  0x74614  7      
  subl 0xa8(%rsp), %esi                  #  3224  0x7461b  7      
  movl %esi, 0xc4(%rsp)                  #  3225  0x74622  7      
  movq 0xe8(%rsp), %rsi                  #  3226  0x74629  8      
  nop                                    #  3227  0x74631  1      
  jmpq .L_72200                          #  3228  0x74632  5      
  nop                                    #  3229  0x74637  1      
  nop                                    #  3230  0x74638  1      
.L_75980:                                #        0x74639  0      
  movq 0xc8(%rsp), %rsi                  #  3231  0x74639  8      
  movl %esi, %esi                        #  3232  0x74641  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3233  0x74643  5      
  leal 0x8(%rax), %edx                   #  3234  0x74648  3      
  movl %esi, %esi                        #  3235  0x7464b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3236  0x7464d  5      
  jmpq .L_75240                          #  3237  0x74652  5      
  xchgw %ax, %ax                         #  3238  0x74657  3      
.L_759a0:                                #        0x7465a  0      
  movq 0xc8(%rsp), %rsi                  #  3239  0x7465a  8      
  movl %esi, %esi                        #  3240  0x74662  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3241  0x74664  5      
  leal 0x8(%rax), %edx                   #  3242  0x74669  3      
  movl %esi, %esi                        #  3243  0x7466c  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3244  0x7466e  5      
  jmpq .L_75120                          #  3245  0x74673  5      
  xchgw %ax, %ax                         #  3246  0x74678  3      
.L_759c0:                                #        0x7467b  0      
  movq 0xc8(%rsp), %rsi                  #  3247  0x7467b  8      
  movl %esi, %esi                        #  3248  0x74683  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3249  0x74685  5      
  leal 0x8(%rax), %edx                   #  3250  0x7468a  3      
  movl %esi, %esi                        #  3251  0x7468d  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3252  0x7468f  5      
  jmpq .L_752a0                          #  3253  0x74694  5      
  xchgw %ax, %ax                         #  3254  0x74699  3      
.L_759e0:                                #        0x7469c  0      
  movq 0xc8(%rsp), %rax                  #  3255  0x7469c  8      
  movl %eax, %eax                        #  3256  0x746a4  2      
  movl (%r15,%rax,1), %edx               #  3257  0x746a6  4      
  cmpl $0x2f, %edx                       #  3258  0x746aa  3      
  ja .L_76240                            #  3259  0x746ad  6      
  movq %rax, %rcx                        #  3260  0x746b3  3      
  nop                                    #  3261  0x746b6  1      
  movl %eax, %eax                        #  3262  0x746b7  2      
  movl 0xc(%r15,%rax,1), %eax            #  3263  0x746b9  5      
  addl %edx, %eax                        #  3264  0x746be  2      
  addl $0x8, %edx                        #  3265  0x746c0  3      
  movl %ecx, %ecx                        #  3266  0x746c3  2      
  movl %edx, (%r15,%rcx,1)               #  3267  0x746c5  4      
  nop                                    #  3268  0x746c9  1      
.L_75a20:                                #        0x746ca  0      
  movl %eax, %eax                        #  3269  0x746ca  2      
  movl (%r15,%rax,1), %ecx               #  3270  0x746cc  4      
  jmpq .L_727a0                          #  3271  0x746d0  5      
  nop                                    #  3272  0x746d5  1      
  nop                                    #  3273  0x746d6  1      
.L_75a40:                                #        0x746d7  0      
  movq 0xc8(%rsp), %rax                  #  3274  0x746d7  8      
  movl %eax, %eax                        #  3275  0x746df  2      
  movl (%r15,%rax,1), %edx               #  3276  0x746e1  4      
  cmpl $0x2f, %edx                       #  3277  0x746e5  3      
  ja .L_762c0                            #  3278  0x746e8  6      
  movq %rax, %rcx                        #  3279  0x746ee  3      
  nop                                    #  3280  0x746f1  1      
  movl %eax, %eax                        #  3281  0x746f2  2      
  movl 0xc(%r15,%rax,1), %eax            #  3282  0x746f4  5      
  addl %edx, %eax                        #  3283  0x746f9  2      
  addl $0x8, %edx                        #  3284  0x746fb  3      
  movl %ecx, %ecx                        #  3285  0x746fe  2      
  movl %edx, (%r15,%rcx,1)               #  3286  0x74700  4      
  nop                                    #  3287  0x74704  1      
.L_75a80:                                #        0x74705  0      
  movl %eax, %eax                        #  3288  0x74705  2      
  movl (%r15,%rax,1), %ecx               #  3289  0x74707  4      
  jmpq .L_72640                          #  3290  0x7470b  5      
  nop                                    #  3291  0x74710  1      
  nop                                    #  3292  0x74711  1      
.L_75aa0:                                #        0x74712  0      
  movq 0xc8(%rsp), %rax                  #  3293  0x74712  8      
  movl %eax, %eax                        #  3294  0x7471a  2      
  movl (%r15,%rax,1), %edx               #  3295  0x7471c  4      
  cmpl $0x2f, %edx                       #  3296  0x74720  3      
  ja .L_76280                            #  3297  0x74723  6      
  movq %rax, %rcx                        #  3298  0x74729  3      
  nop                                    #  3299  0x7472c  1      
  movl %eax, %eax                        #  3300  0x7472d  2      
  movl 0xc(%r15,%rax,1), %eax            #  3301  0x7472f  5      
  addl %edx, %eax                        #  3302  0x74734  2      
  addl $0x8, %edx                        #  3303  0x74736  3      
  movl %ecx, %ecx                        #  3304  0x74739  2      
  movl %edx, (%r15,%rcx,1)               #  3305  0x7473b  4      
  nop                                    #  3306  0x7473f  1      
.L_75ae0:                                #        0x74740  0      
  movl %eax, %eax                        #  3307  0x74740  2      
  movslq (%r15,%rax,1), %rcx             #  3308  0x74742  4      
  jmpq .L_723e0                          #  3309  0x74746  5      
  nop                                    #  3310  0x7474b  1      
  nop                                    #  3311  0x7474c  1      
.L_75b00:                                #        0x7474d  0      
  movq 0xc8(%rsp), %rax                  #  3312  0x7474d  8      
  movl %eax, %eax                        #  3313  0x74755  2      
  movl (%r15,%rax,1), %edx               #  3314  0x74757  4      
  cmpl $0x2f, %edx                       #  3315  0x7475b  3      
  ja .L_76300                            #  3316  0x7475e  6      
  movq %rax, %rcx                        #  3317  0x74764  3      
  nop                                    #  3318  0x74767  1      
  movl %eax, %eax                        #  3319  0x74768  2      
  movl 0xc(%r15,%rax,1), %eax            #  3320  0x7476a  5      
  addl %edx, %eax                        #  3321  0x7476f  2      
  addl $0x8, %edx                        #  3322  0x74771  3      
  movl %ecx, %ecx                        #  3323  0x74774  2      
  movl %edx, (%r15,%rcx,1)               #  3324  0x74776  4      
  nop                                    #  3325  0x7477a  1      
.L_75b40:                                #        0x7477b  0      
  movl %eax, %eax                        #  3326  0x7477b  2      
  movl (%r15,%rax,1), %ecx               #  3327  0x7477d  4      
  movl $0x1, %eax                        #  3328  0x74781  5      
  testq %rcx, %rcx                       #  3329  0x74786  3      
  setne %sil                             #  3330  0x74789  4      
  jmpq .L_72120                          #  3331  0x7478d  5      
  nop                                    #  3332  0x74792  1      
.L_75b60:                                #        0x74793  0      
  andl $0x200, %r13d                     #  3333  0x74793  7      
  je .L_765c0                            #  3334  0x7479a  6      
  movq 0xc8(%rsp), %rcx                  #  3335  0x747a0  8      
  movl %ecx, %ecx                        #  3336  0x747a8  2      
  movl (%r15,%rcx,1), %edx               #  3337  0x747aa  4      
  cmpl $0x2f, %edx                       #  3338  0x747ae  3      
  xchgw %ax, %ax                         #  3339  0x747b1  3      
  ja .L_769e0                            #  3340  0x747b4  6      
  movl %ecx, %ecx                        #  3341  0x747ba  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3342  0x747bc  5      
  addl %edx, %eax                        #  3343  0x747c1  2      
  addl $0x8, %edx                        #  3344  0x747c3  3      
  movl %ecx, %ecx                        #  3345  0x747c6  2      
  movl %edx, (%r15,%rcx,1)               #  3346  0x747c8  4      
  nop                                    #  3347  0x747cc  1      
.L_75ba0:                                #        0x747cd  0      
  movl %eax, %eax                        #  3348  0x747cd  2      
  movl (%r15,%rax,1), %eax               #  3349  0x747cf  4      
  movzbl 0xd0(%rsp), %edx                #  3350  0x747d3  8      
  movl %eax, %eax                        #  3351  0x747db  2      
  movb %dl, (%r15,%rax,1)                #  3352  0x747dd  4      
  jmpq .L_71d60                          #  3353  0x747e1  5      
  nop                                    #  3354  0x747e6  1      
.L_75bc0:                                #        0x747e7  0      
  movq 0xc8(%rsp), %rsi                  #  3355  0x747e7  8      
  movl %esi, %esi                        #  3356  0x747ef  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3357  0x747f1  5      
  leal 0x8(%rax), %edx                   #  3358  0x747f6  3      
  movl %esi, %esi                        #  3359  0x747f9  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3360  0x747fb  5      
  jmpq .L_75180                          #  3361  0x74800  5      
  xchgw %ax, %ax                         #  3362  0x74805  3      
.L_75be0:                                #        0x74808  0      
  movq 0xc8(%rsp), %rsi                  #  3363  0x74808  8      
  movl %esi, %esi                        #  3364  0x74810  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3365  0x74812  5      
  leal 0x8(%rax), %edx                   #  3366  0x74817  3      
  movl %esi, %esi                        #  3367  0x7481a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3368  0x7481c  5      
  jmpq .L_751e0                          #  3369  0x74821  5      
  xchgw %ax, %ax                         #  3370  0x74826  3      
.L_75c00:                                #        0x74829  0      
  cmpl $0xffffffff, %r10d                #  3371  0x74829  7      
  je .L_76980                            #  3372  0x74830  6      
  cmpl $0x47, 0xf8(%rsp)                 #  3373  0x74836  8      
  je .L_76640                            #  3374  0x7483e  6      
  cmpl $0x67, 0xf8(%rsp)                 #  3375  0x74844  8      
  je .L_76640                            #  3376  0x7484c  6      
  xorl %r11d, %r11d                      #  3377  0x74852  3      
  movq $0x0, 0xe0(%rsp)                  #  3378  0x74855  12     
  jmpq .L_749e0                          #  3379  0x74861  5      
  nop                                    #  3380  0x74866  1      
.L_75c40:                                #        0x74867  0      
  cmpl $0x46, 0xf8(%rsp)                 #  3381  0x74867  8      
  je .L_76940                            #  3382  0x7486f  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3383  0x74875  8      
  jle .L_76920                           #  3384  0x7487d  6      
  nop                                    #  3385  0x74883  1      
  cmpl $0x66, 0xf8(%rsp)                 #  3386  0x74884  8      
  movl 0x27c(%rsp), %ecx                 #  3387  0x7488c  7      
  jne .L_74be0                           #  3388  0x74893  6      
  nop                                    #  3389  0x74899  1      
.L_75c80:                                #        0x7489a  0      
  testl %ecx, %ecx                       #  3390  0x7489a  2      
  jle .L_76a20                           #  3391  0x7489c  6      
  testl %r10d, %r10d                     #  3392  0x748a2  3      
  jne .L_75ca0                           #  3393  0x748a5  6      
  testb $0x1, %r13b                      #  3394  0x748ab  4      
  je .L_76860                            #  3395  0x748af  6      
  nop                                    #  3396  0x748b5  1      
.L_75ca0:                                #        0x748b6  0      
  leal 0x1(%rcx,%r10,1), %r10d           #  3397  0x748b6  5      
  movl %r10d, 0xc4(%rsp)                 #  3398  0x748bb  8      
  jmpq .L_74c20                          #  3399  0x748c3  5      
  nop                                    #  3400  0x748c8  1      
.L_75cc0:                                #        0x748c9  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3401  0x748c9  8      
  movzbl 0x28f(%rsp), %eax               #  3402  0x748d1  8      
  cmovnsl 0xc4(%rsp), %ecx               #  3403  0x748d9  8      
  movl %ecx, 0xb0(%rsp)                  #  3404  0x748e1  7      
  nop                                    #  3405  0x748e8  1      
  jmpq .L_74f20                          #  3406  0x748e9  5      
  nop                                    #  3407  0x748ee  1      
  nop                                    #  3408  0x748ef  1      
.L_75d00:                                #        0x748f0  0      
  subl $0x2, 0xf8(%rsp)                  #  3409  0x748f0  8      
  nop                                    #  3410  0x748f8  1      
  nop                                    #  3411  0x748f9  1      
.L_75d20:                                #        0x748fa  0      
  subl $0x1, %ecx                        #  3412  0x748fa  3      
  cmpl $0x41, 0xf8(%rsp)                 #  3413  0x748fd  8      
  movl %ecx, 0x27c(%rsp)                 #  3414  0x74905  7      
  sete %dl                               #  3415  0x7490c  3      
  cmpl $0x61, 0xf8(%rsp)                 #  3416  0x7490f  8      
  sete %al                               #  3417  0x74917  3      
  orl %eax, %edx                         #  3418  0x7491a  2      
  movzbl 0xf8(%rsp), %eax                #  3419  0x7491c  8      
  addl $0xf, %eax                        #  3420  0x74924  3      
  andl $0x1, %edx                        #  3421  0x74927  3      
  cmovel 0xf8(%rsp), %eax                #  3422  0x7492a  8      
  testl %ecx, %ecx                       #  3423  0x74932  2      
  nop                                    #  3424  0x74934  1      
  movb %al, 0x260(%rsp)                  #  3425  0x74935  7      
  js .L_76880                            #  3426  0x7493c  6      
  movb $0x2b, 0x261(%rsp)                #  3427  0x74942  8      
  nop                                    #  3428  0x7494a  1      
.L_75d80:                                #        0x7494b  0      
  cmpl $0x9, %ecx                        #  3429  0x7494b  3      
  jle .L_76580                           #  3430  0x7494e  6      
  movq 0x158(%rsp), %rsi                 #  3431  0x74954  8      
  movl $0x66666667, %edi                 #  3432  0x7495c  5      
  nop                                    #  3433  0x74961  1      
.L_75da0:                                #        0x74962  0      
  movl %ecx, %eax                        #  3434  0x74962  2      
  subl $0x1, %esi                        #  3435  0x74964  3      
  imull %edi                             #  3436  0x74967  2      
  movl %ecx, %eax                        #  3437  0x74969  2      
  sarl $0x1f, %eax                       #  3438  0x7496b  3      
  sarl $0x2, %edx                        #  3439  0x7496e  3      
  subl %eax, %edx                        #  3440  0x74971  2      
  leal (%rdx,%rdx,4), %eax               #  3441  0x74973  3      
  addl %eax, %eax                        #  3442  0x74976  2      
  subl %eax, %ecx                        #  3443  0x74978  2      
  movl %ecx, %eax                        #  3444  0x7497a  2      
  movl %edx, %ecx                        #  3445  0x7497c  2      
  addl $0x30, %eax                       #  3446  0x7497e  3      
  nop                                    #  3447  0x74981  1      
  cmpl $0x9, %edx                        #  3448  0x74982  3      
  movl %esi, %esi                        #  3449  0x74985  2      
  movb %al, (%r15,%rsi,1)                #  3450  0x74987  4      
  jg .L_75da0                            #  3451  0x7498b  6      
  leal -0x1(%rsi), %eax                  #  3452  0x74991  3      
  leal 0x30(%rcx), %edx                  #  3453  0x74994  3      
  movl %eax, %eax                        #  3454  0x74997  2      
  movb %dl, (%r15,%rax,1)                #  3455  0x74999  4      
  cmpl %eax, 0x158(%rsp)                 #  3456  0x7499d  7      
  xchgw %ax, %ax                         #  3457  0x749a4  3      
  jbe .L_76c00                           #  3458  0x749a7  6      
  movl %esi, %ecx                        #  3459  0x749ad  2      
  leal 0x260(%rsp), %esi                 #  3460  0x749af  7      
  movq 0x158(%rsp), %rdi                 #  3461  0x749b6  8      
  leaq 0x2(%rsi), %rax                   #  3462  0x749be  4      
  jmpq .L_75e20                          #  3463  0x749c2  5      
  nop                                    #  3464  0x749c7  1      
.L_75e00:                                #        0x749c8  0      
  movl %ecx, %edx                        #  3465  0x749c8  2      
  addl $0x1, %ecx                        #  3466  0x749ca  3      
  movl %edx, %edx                        #  3467  0x749cd  2      
  movzbl (%r15,%rdx,1), %edx             #  3468  0x749cf  5      
  nop                                    #  3469  0x749d4  1      
  nop                                    #  3470  0x749d5  1      
.L_75e20:                                #        0x749d6  0      
  movl %eax, %eax                        #  3471  0x749d6  2      
  movb %dl, (%r15,%rax,1)                #  3472  0x749d8  4      
  addl $0x1, %eax                        #  3473  0x749dc  3      
  cmpl %edi, %ecx                        #  3474  0x749df  2      
  jb .L_75e00                            #  3475  0x749e1  6      
  nop                                    #  3476  0x749e7  1      
  nop                                    #  3477  0x749e8  1      
.L_75e40:                                #        0x749e9  0      
  subl %esi, %eax                        #  3478  0x749e9  2      
  movl %eax, 0x134(%rsp)                 #  3479  0x749eb  7      
  addl 0x10c(%rsp), %eax                 #  3480  0x749f2  7      
  cmpl $0x1, 0x10c(%rsp)                 #  3481  0x749f9  8      
  movl %eax, 0xc4(%rsp)                  #  3482  0x74a01  7      
  nop                                    #  3483  0x74a08  1      
  jle .L_76840                           #  3484  0x74a09  6      
  nop                                    #  3485  0x74a0f  1      
  nop                                    #  3486  0x74a10  1      
.L_75e80:                                #        0x74a11  0      
  addl $0x1, 0xc4(%rsp)                  #  3487  0x74a11  8      
  nop                                    #  3488  0x74a19  1      
  nop                                    #  3489  0x74a1a  1      
.L_75ea0:                                #        0x74a1b  0      
  andl $0xfffffbff, %r13d                #  3490  0x74a1b  7      
  movl $0x0, 0x108(%rsp)                 #  3491  0x74a22  11     
  movl $0x0, 0x120(%rsp)                 #  3492  0x74a2d  11     
  nop                                    #  3493  0x74a38  1      
  movl $0x0, 0x11c(%rsp)                 #  3494  0x74a39  11     
  nop                                    #  3495  0x74a44  1      
  nop                                    #  3496  0x74a45  1      
.L_75ee0:                                #        0x74a46  0      
  cmpb $0x0, 0xd8(%rsp)                  #  3497  0x74a46  8      
  je .L_75f40                            #  3498  0x74a4e  6      
  cmpl $0x0, 0xc4(%rsp)                  #  3499  0x74a54  8      
  movl $0x0, %edx                        #  3500  0x74a5c  5      
  movb $0x2d, 0x28f(%rsp)                #  3501  0x74a61  8      
  nop                                    #  3502  0x74a69  1      
  cmovnsl 0xc4(%rsp), %edx               #  3503  0x74a6a  8      
  movl $0x2d, %eax                       #  3504  0x74a72  5      
  movl $0x0, 0xfc(%rsp)                  #  3505  0x74a77  11     
  movl %edx, 0xb0(%rsp)                  #  3506  0x74a82  7      
  nop                                    #  3507  0x74a89  1      
  jmpq .L_722a0                          #  3508  0x74a8a  5      
  nop                                    #  3509  0x74a8f  1      
  nop                                    #  3510  0x74a90  1      
.L_75f40:                                #        0x74a91  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3511  0x74a91  8      
  movl $0x0, %eax                        #  3512  0x74a99  5      
  movl $0x0, 0xfc(%rsp)                  #  3513  0x74a9e  11     
  cmovnsl 0xc4(%rsp), %eax               #  3514  0x74aa9  8      
  movl %eax, 0xb0(%rsp)                  #  3515  0x74ab1  7      
  movzbl 0x28f(%rsp), %eax               #  3516  0x74ab8  8      
  jmpq .L_72280                          #  3517  0x74ac0  5      
  nop                                    #  3518  0x74ac5  1      
.L_75f80:                                #        0x74ac6  0      
  movq 0xb8(%rsp), %rbx                  #  3519  0x74ac6  8      
  movl %ebx, %ebx                        #  3520  0x74ace  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  3521  0x74ad0  6      
  jne .L_72d20                           #  3522  0x74ad6  6      
  movl 0xb8(%rsp), %edi                  #  3523  0x74adc  7      
  addl $0x5c, %edi                       #  3524  0x74ae3  3      
  nop                                    #  3525  0x74ae6  1      
  nop                                    #  3526  0x74ae7  1      
  callq .__local_lock_release_recursive  #  3527  0x74ae8  5      
  movl $0xffffffff, 0xd0(%rsp)           #  3528  0x74aed  11     
  jmpq .L_71f00                          #  3529  0x74af8  5      
  nop                                    #  3530  0x74afd  1      
  nop                                    #  3531  0x74afe  1      
.L_75fe0:                                #        0x74aff  0      
  movl %r13d, 0xc4(%rsp)                 #  3532  0x74aff  8      
  movq 0xb0(%rsp), %r12                  #  3533  0x74b07  8      
  movq 0xe0(%rsp), %rbx                  #  3534  0x74b0f  8      
  movl 0xd8(%rsp), %r13d                 #  3535  0x74b17  8      
  jmpq .L_74ee0                          #  3536  0x74b1f  5      
  nop                                    #  3537  0x74b24  1      
  nop                                    #  3538  0x74b25  1      
.L_76020:                                #        0x74b26  0      
  testb $0x1, %r13b                      #  3539  0x74b26  4      
  jne .L_74b20                           #  3540  0x74b2a  6      
  movl 0x26c(%rsp), %edx                 #  3541  0x74b30  7      
  jmpq .L_74ba0                          #  3542  0x74b37  5      
  nop                                    #  3543  0x74b3c  1      
.L_76040:                                #        0x74b3d  0      
  cmpl $0x45, 0xf8(%rsp)                 #  3544  0x74b3d  8      
  je .L_76720                            #  3545  0x74b45  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3546  0x74b4b  8      
  je .L_76720                            #  3547  0x74b53  6      
  nop                                    #  3548  0x74b59  1      
  movl %r10d, 0xc4(%rsp)                 #  3549  0x74b5a  8      
  movl $0x2, %esi                        #  3550  0x74b62  5      
  jmpq .L_74a80                          #  3551  0x74b67  5      
  nop                                    #  3552  0x74b6c  1      
.L_76080:                                #        0x74b6d  0      
  movl 0xb8(%rsp), %esi                  #  3553  0x74b6d  7      
  leal 0x210(%rsp), %edx                 #  3554  0x74b74  7      
  movl %r14d, %edi                       #  3555  0x74b7b  3      
  nop                                    #  3556  0x74b7e  1      
  callq .__sprint_r                      #  3557  0x74b7f  5      
  testl %eax, %eax                       #  3558  0x74b84  2      
  jne .L_72ca0                           #  3559  0x74b86  6      
  leal 0x1d0(%rsp), %eax                 #  3560  0x74b8c  7      
  jmpq .L_754e0                          #  3561  0x74b93  5      
  nop                                    #  3562  0x74b98  1      
.L_760c0:                                #        0x74b99  0      
  movl 0xb8(%rsp), %esi                  #  3563  0x74b99  7      
  leal 0x210(%rsp), %edx                 #  3564  0x74ba0  7      
  movl %r14d, %edi                       #  3565  0x74ba7  3      
  nop                                    #  3566  0x74baa  1      
  callq .__sprint_r                      #  3567  0x74bab  5      
  testl %eax, %eax                       #  3568  0x74bb0  2      
  je .L_75400                            #  3569  0x74bb2  6      
  movq 0xb8(%rsp), %rsi                  #  3570  0x74bb8  8      
  movl %esi, %esi                        #  3571  0x74bc0  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  3572  0x74bc2  6      
  jmpq .L_72ce0                          #  3573  0x74bc8  5      
  nop                                    #  3574  0x74bcd  1      
.L_76100:                                #        0x74bce  0      
  movl 0xb8(%rsp), %esi                  #  3575  0x74bce  7      
  leal 0x210(%rsp), %edx                 #  3576  0x74bd5  7      
  movl %r14d, %edi                       #  3577  0x74bdc  3      
  nop                                    #  3578  0x74bdf  1      
  callq .__sprint_r                      #  3579  0x74be0  5      
  testl %eax, %eax                       #  3580  0x74be5  2      
  jne .L_72ca0                           #  3581  0x74be7  6      
  leal 0x1d0(%rsp), %ebx                 #  3582  0x74bed  7      
  jmpq .L_75460                          #  3583  0x74bf4  5      
  nop                                    #  3584  0x74bf9  1      
.L_76140:                                #        0x74bfa  0      
  movl %ecx, 0x11c(%rsp)                 #  3585  0x74bfa  7      
  movl $0x0, 0x108(%rsp)                 #  3586  0x74c01  11     
  movl $0x0, 0x120(%rsp)                 #  3587  0x74c0c  11     
  nop                                    #  3588  0x74c17  1      
  jmpq .L_75ee0                          #  3589  0x74c18  5      
  nop                                    #  3590  0x74c1d  1      
  nop                                    #  3591  0x74c1e  1      
.L_76180:                                #        0x74c1f  0      
  movl 0xb8(%rsp), %esi                  #  3592  0x74c1f  7      
  leal 0x210(%rsp), %edx                 #  3593  0x74c26  7      
  movl %r14d, %edi                       #  3594  0x74c2d  3      
  nop                                    #  3595  0x74c30  1      
  callq .__sprint_r                      #  3596  0x74c31  5      
  testl %eax, %eax                       #  3597  0x74c36  2      
  jne .L_72ca0                           #  3598  0x74c38  6      
  movl 0x27c(%rsp), %ecx                 #  3599  0x74c3e  7      
  leal 0x1d0(%rsp), %ebx                 #  3600  0x74c45  7      
  jmpq .L_73dc0                          #  3601  0x74c4c  5      
  nop                                    #  3602  0x74c51  1      
.L_761c0:                                #        0x74c52  0      
  movl 0xb8(%rsp), %esi                  #  3603  0x74c52  7      
  leal 0x210(%rsp), %edx                 #  3604  0x74c59  7      
  movl %r14d, %edi                       #  3605  0x74c60  3      
  movl %r8d, 0x80(%rsp)                  #  3606  0x74c63  8      
  xchgw %ax, %ax                         #  3607  0x74c6b  3      
  callq .__sprint_r                      #  3608  0x74c6e  5      
  testl %eax, %eax                       #  3609  0x74c73  2      
  movl 0x80(%rsp), %r8d                  #  3610  0x74c75  8      
  jne .L_72ca0                           #  3611  0x74c7d  6      
  movl 0x10c(%rsp), %ecx                 #  3612  0x74c83  7      
  leal 0x1d0(%rsp), %ebx                 #  3613  0x74c8a  7      
  xchgw %ax, %ax                         #  3614  0x74c91  3      
  subl 0x27c(%rsp), %ecx                 #  3615  0x74c94  7      
  jmpq .L_73e40                          #  3616  0x74c9b  5      
  nop                                    #  3617  0x74ca0  1      
  nop                                    #  3618  0x74ca1  1      
.L_76220:                                #        0x74ca2  0      
  movq 0xc8(%rsp), %rsi                  #  3619  0x74ca2  8      
  movl %esi, %esi                        #  3620  0x74caa  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3621  0x74cac  5      
  leal 0x8(%rax), %edx                   #  3622  0x74cb1  3      
  movl %esi, %esi                        #  3623  0x74cb4  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3624  0x74cb6  5      
  jmpq .L_748e0                          #  3625  0x74cbb  5      
  xchgw %ax, %ax                         #  3626  0x74cc0  3      
.L_76240:                                #        0x74cc3  0      
  movq 0xc8(%rsp), %rsi                  #  3627  0x74cc3  8      
  movl %esi, %esi                        #  3628  0x74ccb  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3629  0x74ccd  5      
  leal 0x8(%rax), %edx                   #  3630  0x74cd2  3      
  movl %esi, %esi                        #  3631  0x74cd5  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3632  0x74cd7  5      
  jmpq .L_75a20                          #  3633  0x74cdc  5      
  xchgw %ax, %ax                         #  3634  0x74ce1  3      
.L_76260:                                #        0x74ce4  0      
  movq 0xc8(%rsp), %rsi                  #  3635  0x74ce4  8      
  movl %esi, %esi                        #  3636  0x74cec  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3637  0x74cee  5      
  leal 0x8(%rax), %edx                   #  3638  0x74cf3  3      
  movl %esi, %esi                        #  3639  0x74cf6  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3640  0x74cf8  5      
  jmpq .L_745e0                          #  3641  0x74cfd  5      
  xchgw %ax, %ax                         #  3642  0x74d02  3      
.L_76280:                                #        0x74d05  0      
  movq 0xc8(%rsp), %rsi                  #  3643  0x74d05  8      
  movl %esi, %esi                        #  3644  0x74d0d  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3645  0x74d0f  5      
  leal 0x8(%rax), %edx                   #  3646  0x74d14  3      
  movl %esi, %esi                        #  3647  0x74d17  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3648  0x74d19  5      
  jmpq .L_75ae0                          #  3649  0x74d1e  5      
  xchgw %ax, %ax                         #  3650  0x74d23  3      
.L_762a0:                                #        0x74d26  0      
  movq 0xc8(%rsp), %rsi                  #  3651  0x74d26  8      
  movl %esi, %esi                        #  3652  0x74d2e  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3653  0x74d30  5      
  leal 0x8(%rax), %edx                   #  3654  0x74d35  3      
  movl %esi, %esi                        #  3655  0x74d38  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3656  0x74d3a  5      
  jmpq .L_747a0                          #  3657  0x74d3f  5      
  xchgw %ax, %ax                         #  3658  0x74d44  3      
.L_762c0:                                #        0x74d47  0      
  movq 0xc8(%rsp), %rsi                  #  3659  0x74d47  8      
  movl %esi, %esi                        #  3660  0x74d4f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3661  0x74d51  5      
  leal 0x8(%rax), %edx                   #  3662  0x74d56  3      
  movl %esi, %esi                        #  3663  0x74d59  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3664  0x74d5b  5      
  jmpq .L_75a80                          #  3665  0x74d60  5      
  xchgw %ax, %ax                         #  3666  0x74d65  3      
.L_762e0:                                #        0x74d68  0      
  movq 0xc8(%rsp), %rsi                  #  3667  0x74d68  8      
  movl %esi, %esi                        #  3668  0x74d70  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3669  0x74d72  5      
  leal 0x8(%rax), %edx                   #  3670  0x74d77  3      
  movl %esi, %esi                        #  3671  0x74d7a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3672  0x74d7c  5      
  jmpq .L_74700                          #  3673  0x74d81  5      
  xchgw %ax, %ax                         #  3674  0x74d86  3      
.L_76300:                                #        0x74d89  0      
  movq 0xc8(%rsp), %rsi                  #  3675  0x74d89  8      
  movl %esi, %esi                        #  3676  0x74d91  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3677  0x74d93  5      
  leal 0x8(%rax), %edx                   #  3678  0x74d98  3      
  movl %esi, %esi                        #  3679  0x74d9b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3680  0x74d9d  5      
  jmpq .L_75b40                          #  3681  0x74da2  5      
  xchgw %ax, %ax                         #  3682  0x74da7  3      
.L_76320:                                #        0x74daa  0      
  movl 0x58(%rsp), %r8d                  #  3683  0x74daa  5      
  leal 0x274(%rsp), %edx                 #  3684  0x74daf  7      
  xorl %ecx, %ecx                        #  3685  0x74db6  2      
  xorl %esi, %esi                        #  3686  0x74db8  2      
  movl %r14d, %edi                       #  3687  0x74dba  3      
  nop                                    #  3688  0x74dbd  1      
  callq ._wcsrtombs_r                    #  3689  0x74dbe  5      
  cmpl $0xffffffff, %eax                 #  3690  0x74dc3  5      
  movl %eax, 0xc4(%rsp)                  #  3691  0x74dc8  7      
  je .L_76be0                            #  3692  0x74dcf  6      
  movl 0xa8(%rsp), %eax                  #  3693  0x74dd5  7      
  movl %eax, 0x274(%rsp)                 #  3694  0x74ddc  7      
  xchgw %ax, %ax                         #  3695  0x74de3  3      
  jmpq .L_74ee0                          #  3696  0x74de6  5      
  nop                                    #  3697  0x74deb  1      
  nop                                    #  3698  0x74dec  1      
.L_76380:                                #        0x74ded  0      
  movq 0xc8(%rsp), %rsi                  #  3699  0x74ded  8      
  movl %esi, %esi                        #  3700  0x74df5  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3701  0x74df7  5      
  leal 0x8(%rax), %edx                   #  3702  0x74dfc  3      
  movl %esi, %esi                        #  3703  0x74dff  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3704  0x74e01  5      
  jmpq .L_74860                          #  3705  0x74e06  5      
  xchgw %ax, %ax                         #  3706  0x74e0b  3      
.L_763a0:                                #        0x74e0e  0      
  leal 0x27c(%rsp), %edi                 #  3707  0x74e0e  7      
  movsd 0xb0(%rsp), %xmm0                #  3708  0x74e15  9      
  movl %r10d, 0x88(%rsp)                 #  3709  0x74e1e  8      
  movb %r11b, 0x98(%rsp)                 #  3710  0x74e26  8      
  nop                                    #  3711  0x74e2e  1      
  nop                                    #  3712  0x74e2f  1      
  callq .frexp                           #  3713  0x74e30  5      
  mulsd 0xffaf0eb(%rip), %xmm0           #  3714  0x74e35  8      
  movl $0x1, %eax                        #  3715  0x74e3d  5      
  movl 0x88(%rsp), %r10d                 #  3716  0x74e42  8      
  xorpd %xmm1, %xmm1                     #  3717  0x74e4a  4      
  movl $0x10023c01, %edi                 #  3718  0x74e4e  5      
  xchgw %ax, %ax                         #  3719  0x74e53  3      
  movsd 0xffaf0d2(%rip), %xmm3           #  3720  0x74e56  8      
  movzbl 0x98(%rsp), %r11d               #  3721  0x74e5e  9      
  movl %r10d, %ecx                       #  3722  0x74e67  3      
  ucomisd %xmm1, %xmm0                   #  3723  0x74e6a  4      
  cmovnel 0x27c(%rsp), %eax              #  3724  0x74e6e  8      
  cmovpl 0x27c(%rsp), %eax               #  3725  0x74e76  8      
  cmpb $0x0, 0xc4(%rsp)                  #  3726  0x74e7e  8      
  movl %eax, 0x27c(%rsp)                 #  3727  0x74e86  7      
  movl $0x10023be0, %eax                 #  3728  0x74e8d  5      
  cmoveq %rax, %rdi                      #  3729  0x74e92  4      
  movq 0xa8(%rsp), %rax                  #  3730  0x74e96  8      
  jmpq .L_76480                          #  3731  0x74e9e  5      
  nop                                    #  3732  0x74ea3  1      
  nop                                    #  3733  0x74ea4  1      
.L_76460:                                #        0x74ea5  0      
  movq %rdx, %rax                        #  3734  0x74ea5  3      
  nop                                    #  3735  0x74ea8  1      
  nop                                    #  3736  0x74ea9  1      
.L_76480:                                #        0x74eaa  0      
  mulsd %xmm3, %xmm0                     #  3737  0x74eaa  4      
  subl $0x1, %ecx                        #  3738  0x74eae  3      
  cmpl $0xffffffff, %ecx                 #  3739  0x74eb1  6      
  cvttsd2si %xmm0, %esi                  #  3740  0x74eb7  4      
  cvtsi2sdl %esi, %xmm2                  #  3741  0x74ebb  4      
  leal (%rsi,%rdi,1), %edx               #  3742  0x74ebf  3      
  movl %edx, %edx                        #  3743  0x74ec2  2      
  movzbl (%r15,%rdx,1), %edx             #  3744  0x74ec4  5      
  nop                                    #  3745  0x74ec9  1      
  movl %eax, %eax                        #  3746  0x74eca  2      
  movb %dl, (%r15,%rax,1)                #  3747  0x74ecc  4      
  leal 0x1(%rax), %edx                   #  3748  0x74ed0  3      
  subsd %xmm2, %xmm0                     #  3749  0x74ed3  4      
  je .L_76660                            #  3750  0x74ed7  6      
  ucomisd %xmm1, %xmm0                   #  3751  0x74edd  4      
  jne .L_76460                           #  3752  0x74ee1  6      
  jp .L_76460                            #  3753  0x74ee7  6      
  nop                                    #  3754  0x74eed  1      
  movsd 0xffaf042(%rip), %xmm1           #  3755  0x74eee  8      
  nop                                    #  3756  0x74ef6  1      
  nop                                    #  3757  0x74ef7  1      
.L_764e0:                                #        0x74ef8  0      
  movq %rdx, %r8                         #  3758  0x74ef8  3      
  ucomisd %xmm1, %xmm0                   #  3759  0x74efb  4      
  jne .L_76500                           #  3760  0x74eff  6      
  jp .L_76500                            #  3761  0x74f05  6      
  andb $0x1, %sil                        #  3762  0x74f0b  4      
  jne .L_76680                           #  3763  0x74f0f  6      
  nop                                    #  3764  0x74f15  1      
.L_76500:                                #        0x74f16  0      
  testl %ecx, %ecx                       #  3765  0x74f16  2      
  leal -0x1(%rcx), %eax                  #  3766  0x74f18  3      
  js .L_74ba0                            #  3767  0x74f1b  6      
  nop                                    #  3768  0x74f21  1      
  nop                                    #  3769  0x74f22  1      
.L_76520:                                #        0x74f23  0      
  subl $0x1, %eax                        #  3770  0x74f23  3      
  movl %edx, %edx                        #  3771  0x74f26  2      
  movb $0x30, (%r15,%rdx,1)              #  3772  0x74f28  5      
  addl $0x1, %edx                        #  3773  0x74f2d  3      
  cmpl $0xfffffffe, %eax                 #  3774  0x74f30  5      
  jne .L_76520                           #  3775  0x74f35  6      
  leal 0x1(%rcx,%r8,1), %edx             #  3776  0x74f3b  5      
  jmpq .L_74ba0                          #  3777  0x74f40  5      
  nop                                    #  3778  0x74f45  1      
.L_76540:                                #        0x74f46  0      
  movsd 0xffaeff2(%rip), %xmm0           #  3779  0x74f46  8      
  movb $0x2d, 0xd8(%rsp)                 #  3780  0x74f4e  8      
  movsd 0x128(%rsp), %xmm1               #  3781  0x74f56  9      
  xorpd %xmm0, %xmm1                     #  3782  0x74f5f  4      
  nop                                    #  3783  0x74f63  1      
  movsd %xmm1, 0xb0(%rsp)                #  3784  0x74f64  9      
  jmpq .L_74a20                          #  3785  0x74f6d  5      
  nop                                    #  3786  0x74f72  1      
  nop                                    #  3787  0x74f73  1      
.L_76580:                                #        0x74f74  0      
  testl %edx, %edx                       #  3788  0x74f74  2      
  je .L_76a00                            #  3789  0x74f76  6      
  leal 0x260(%rsp), %esi                 #  3790  0x74f7c  7      
  leaq 0x3(%rsi), %rax                   #  3791  0x74f83  4      
  leaq 0x2(%rsi), %rdx                   #  3792  0x74f87  4      
  nop                                    #  3793  0x74f8b  1      
.L_765a0:                                #        0x74f8c  0      
  addl $0x30, %ecx                       #  3794  0x74f8c  3      
  movl %edx, %edx                        #  3795  0x74f8f  2      
  movb %cl, (%r15,%rdx,1)                #  3796  0x74f91  4      
  jmpq .L_75e40                          #  3797  0x74f95  5      
  nop                                    #  3798  0x74f9a  1      
  nop                                    #  3799  0x74f9b  1      
.L_765c0:                                #        0x74f9c  0      
  movq 0xc8(%rsp), %rcx                  #  3800  0x74f9c  8      
  movl %ecx, %ecx                        #  3801  0x74fa4  2      
  movl (%r15,%rcx,1), %edx               #  3802  0x74fa6  4      
  cmpl $0x2f, %edx                       #  3803  0x74faa  3      
  ja .L_75980                            #  3804  0x74fad  6      
  movl %ecx, %ecx                        #  3805  0x74fb3  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3806  0x74fb5  5      
  addl %edx, %eax                        #  3807  0x74fba  2      
  addl $0x8, %edx                        #  3808  0x74fbc  3      
  movl %ecx, %ecx                        #  3809  0x74fbf  2      
  movl %edx, (%r15,%rcx,1)               #  3810  0x74fc1  4      
  jmpq .L_75240                          #  3811  0x74fc5  5      
  nop                                    #  3812  0x74fca  1      
  nop                                    #  3813  0x74fcb  1      
.L_76600:                                #        0x74fcc  0      
  movl 0x26c(%rsp), %ecx                 #  3814  0x74fcc  7      
  cmpl %ecx, %edx                        #  3815  0x74fd3  2      
  movq %rcx, %rax                        #  3816  0x74fd5  3      
  jbe .L_76ba0                           #  3817  0x74fd8  6      
  nop                                    #  3818  0x74fde  1      
.L_76620:                                #        0x74fdf  0      
  movl %eax, %eax                        #  3819  0x74fdf  2      
  movb $0x30, (%r15,%rax,1)              #  3820  0x74fe1  5      
  addl $0x1, %eax                        #  3821  0x74fe6  3      
  cmpl %eax, %edx                        #  3822  0x74fe9  2      
  movl %eax, 0x26c(%rsp)                 #  3823  0x74feb  7      
  ja .L_76620                            #  3824  0x74ff2  6      
  jmpq .L_74ba0                          #  3825  0x74ff8  5      
  nop                                    #  3826  0x74ffd  1      
.L_76640:                                #        0x74ffe  0      
  testl %r10d, %r10d                     #  3827  0x74ffe  3      
  je .L_76960                            #  3828  0x75001  6      
  movl $0x1, %r11d                       #  3829  0x75007  6      
  movq $0x0, 0xe0(%rsp)                  #  3830  0x7500d  12     
  jmpq .L_749e0                          #  3831  0x75019  5      
.L_76660:                                #        0x7501e  0      
  movsd 0xffaef12(%rip), %xmm1           #  3832  0x7501e  8      
  ucomisd %xmm1, %xmm0                   #  3833  0x75026  4      
  jbe .L_764e0                           #  3834  0x7502a  6      
  nop                                    #  3835  0x75030  1      
.L_76680:                                #        0x75031  0      
  leal 0xf(%rdi), %esi                   #  3836  0x75031  3      
  movl %eax, 0x26c(%rsp)                 #  3837  0x75034  7      
  movl %eax, %eax                        #  3838  0x7503b  2      
  movzbl (%r15,%rax,1), %ecx             #  3839  0x7503d  5      
  movl %esi, %esi                        #  3840  0x75042  2      
  cmpb (%r15,%rsi,1), %cl                #  3841  0x75044  4      
  jne .L_766e0                           #  3842  0x75048  6      
  nop                                    #  3843  0x7504e  1      
.L_766a0:                                #        0x7504f  0      
  movl %eax, %eax                        #  3844  0x7504f  2      
  movb $0x30, (%r15,%rax,1)              #  3845  0x75051  5      
  movl 0x26c(%rsp), %eax                 #  3846  0x75056  7      
  subl $0x1, %eax                        #  3847  0x7505d  3      
  movl %eax, 0x26c(%rsp)                 #  3848  0x75060  7      
  movl %eax, %eax                        #  3849  0x75067  2      
  movzbl (%r15,%rax,1), %ecx             #  3850  0x75069  5      
  nop                                    #  3851  0x7506e  1      
  movl %esi, %esi                        #  3852  0x7506f  2      
  cmpb (%r15,%rsi,1), %cl                #  3853  0x75071  4      
  je .L_766a0                            #  3854  0x75075  6      
  nop                                    #  3855  0x7507b  1      
  nop                                    #  3856  0x7507c  1      
.L_766e0:                                #        0x7507d  0      
  cmpb $0x39, %cl                        #  3857  0x7507d  3      
  je .L_76a80                            #  3858  0x75080  6      
  addl $0x1, %ecx                        #  3859  0x75086  3      
  nop                                    #  3860  0x75089  1      
  nop                                    #  3861  0x7508a  1      
.L_76700:                                #        0x7508b  0      
  movl %eax, %eax                        #  3862  0x7508b  2      
  movb %cl, (%r15,%rax,1)                #  3863  0x7508d  4      
  jmpq .L_74ba0                          #  3864  0x75091  5      
  nop                                    #  3865  0x75096  1      
  nop                                    #  3866  0x75097  1      
.L_76720:                                #        0x75098  0      
  leal 0x1(%r10), %eax                   #  3867  0x75098  4      
  movl $0x2, %esi                        #  3868  0x7509c  5      
  movl %eax, 0xc4(%rsp)                  #  3869  0x750a1  7      
  jmpq .L_74a80                          #  3870  0x750a8  5      
  nop                                    #  3871  0x750ad  1      
.L_76740:                                #        0x750ae  0      
  movl 0x108(%rsp), %eax                 #  3872  0x750ae  7      
  addl 0x120(%rsp), %eax                 #  3873  0x750b5  7      
  imull 0x130(%rsp), %eax                #  3874  0x750bc  8      
  movl %esi, 0x11c(%rsp)                 #  3875  0x750c4  7      
  nop                                    #  3876  0x750cb  1      
  movq %r8, 0xe8(%rsp)                   #  3877  0x750cc  8      
  addl %eax, 0xc4(%rsp)                  #  3878  0x750d4  7      
  jmpq .L_75ee0                          #  3879  0x750db  5      
  nop                                    #  3880  0x750e0  1      
.L_76780:                                #        0x750e1  0      
  testl %ecx, %ecx                       #  3881  0x750e1  2      
  movl $0x1, %eax                        #  3882  0x750e3  5      
  jg .L_767a0                            #  3883  0x750e8  6      
  movb $0x2, %al                         #  3884  0x750ee  2      
  subl %ecx, %eax                        #  3885  0x750f0  2      
  nop                                    #  3886  0x750f2  1      
  nop                                    #  3887  0x750f3  1      
.L_767a0:                                #        0x750f4  0      
  addl 0x10c(%rsp), %eax                 #  3888  0x750f4  7      
  movl %eax, 0xc4(%rsp)                  #  3889  0x750fb  7      
  jmpq .L_74c20                          #  3890  0x75102  5      
  nop                                    #  3891  0x75107  1      
.L_767c0:                                #        0x75108  0      
  movq 0xb8(%rsp), %rbx                  #  3892  0x75108  8      
  movl %ebx, %ebx                        #  3893  0x75110  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  3894  0x75112  6      
  orl $0x40, %eax                        #  3895  0x75118  3      
  movl %ebx, %ebx                        #  3896  0x7511b  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  3897  0x7511d  6      
  jmpq .L_72ce0                          #  3898  0x75123  5      
.L_767e0:                                #        0x75128  0      
  movl 0xb8(%rsp), %esi                  #  3899  0x75128  7      
  leal 0x210(%rsp), %edx                 #  3900  0x7512f  7      
  movl %r14d, %edi                       #  3901  0x75136  3      
  nop                                    #  3902  0x75139  1      
  callq .__sprint_r                      #  3903  0x7513a  5      
  testl %eax, %eax                       #  3904  0x7513f  2      
  jne .L_72ca0                           #  3905  0x75141  6      
  leal 0x1d0(%rsp), %eax                 #  3906  0x75147  7      
  jmpq .L_756e0                          #  3907  0x7514e  5      
  nop                                    #  3908  0x75153  1      
.L_76820:                                #        0x75154  0      
  movq 0xb8(%rsp), %rdx                  #  3909  0x75154  8      
  movl %edx, %edx                        #  3910  0x7515c  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3911  0x7515e  6      
  jmpq .L_72ce0                          #  3912  0x75164  5      
  nop                                    #  3913  0x75169  1      
.L_76840:                                #        0x7516a  0      
  testb $0x1, %r13b                      #  3914  0x7516a  4      
  je .L_75ea0                            #  3915  0x7516e  6      
  jmpq .L_75e80                          #  3916  0x75174  5      
  xchgw %ax, %ax                         #  3917  0x75179  3      
  nop                                    #  3918  0x7517c  1      
.L_76860:                                #        0x7517d  0      
  movl %ecx, 0xc4(%rsp)                  #  3919  0x7517d  7      
  jmpq .L_74c20                          #  3920  0x75184  5      
  nop                                    #  3921  0x75189  1      
  nop                                    #  3922  0x7518a  1      
.L_76880:                                #        0x7518b  0      
  negl %ecx                              #  3923  0x7518b  2      
  movb $0x2d, 0x261(%rsp)                #  3924  0x7518d  8      
  jmpq .L_75d80                          #  3925  0x75195  5      
  xchgw %ax, %ax                         #  3926  0x7519a  3      
  nop                                    #  3927  0x7519d  1      
.L_768a0:                                #        0x7519e  0      
  leal 0x1(%r10), %esi                   #  3928  0x7519e  4      
  movl %r14d, %edi                       #  3929  0x751a2  3      
  movl %r10d, 0x88(%rsp)                 #  3930  0x751a5  8      
  nop                                    #  3931  0x751ad  1      
  callq ._malloc_r                       #  3932  0x751ae  5      
  movl %eax, %eax                        #  3933  0x751b3  2      
  movl 0x88(%rsp), %r10d                 #  3934  0x751b5  8      
  testq %rax, %rax                       #  3935  0x751bd  3      
  movq %rax, 0xe0(%rsp)                  #  3936  0x751c0  8      
  je .L_76bc0                            #  3937  0x751c8  6      
  nop                                    #  3938  0x751ce  1      
  cmpl $0x67, 0xf8(%rsp)                 #  3939  0x751cf  8      
  movq 0xe0(%rsp), %rdx                  #  3940  0x751d7  8      
  movq %rdx, 0xa8(%rsp)                  #  3941  0x751df  8      
  sete %r11b                             #  3942  0x751e7  4      
  nop                                    #  3943  0x751eb  1      
  cmpl $0x47, 0xf8(%rsp)                 #  3944  0x751ec  8      
  sete %al                               #  3945  0x751f4  3      
  orl %eax, %r11d                        #  3946  0x751f7  3      
  jmpq .L_749e0                          #  3947  0x751fa  5      
  nop                                    #  3948  0x751ff  1      
.L_76920:                                #        0x75200  0      
  movl 0x27c(%rsp), %ecx                 #  3949  0x75200  7      
  jmpq .L_75d20                          #  3950  0x75207  5      
  nop                                    #  3951  0x7520c  1      
  nop                                    #  3952  0x7520d  1      
.L_76940:                                #        0x7520e  0      
  movl 0x27c(%rsp), %ecx                 #  3953  0x7520e  7      
  movl $0x66, 0xf8(%rsp)                 #  3954  0x75215  11     
  jmpq .L_75c80                          #  3955  0x75220  5      
  nop                                    #  3956  0x75225  1      
.L_76960:                                #        0x75226  0      
  movl $0x1, %r11d                       #  3957  0x75226  6      
  movl $0x1, %r10d                       #  3958  0x7522c  6      
  movq $0x0, 0xe0(%rsp)                  #  3959  0x75232  12     
  jmpq .L_749e0                          #  3960  0x7523e  5      
  nop                                    #  3961  0x75243  1      
.L_76980:                                #        0x75244  0      
  cmpl $0x67, 0xf8(%rsp)                 #  3962  0x75244  8      
  movl $0x6, %r10d                       #  3963  0x7524c  6      
  movq $0x0, 0xe0(%rsp)                  #  3964  0x75252  12     
  sete %r11b                             #  3965  0x7525e  4      
  xchgw %ax, %ax                         #  3966  0x75262  3      
  cmpl $0x47, 0xf8(%rsp)                 #  3967  0x75265  8      
  sete %al                               #  3968  0x7526d  3      
  orl %eax, %r11d                        #  3969  0x75270  3      
  jmpq .L_749e0                          #  3970  0x75273  5      
  nop                                    #  3971  0x75278  1      
.L_769c0:                                #        0x75279  0      
  movl %r10d, 0xb0(%rsp)                 #  3972  0x75279  8      
  movzbl 0x28f(%rsp), %eax               #  3973  0x75281  8      
  movl %r10d, 0xc4(%rsp)                 #  3974  0x75289  8      
  jmpq .L_74f20                          #  3975  0x75291  5      
  nop                                    #  3976  0x75296  1      
.L_769e0:                                #        0x75297  0      
  movq 0xc8(%rsp), %rsi                  #  3977  0x75297  8      
  movl %esi, %esi                        #  3978  0x7529f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3979  0x752a1  5      
  leal 0x8(%rax), %edx                   #  3980  0x752a6  3      
  movl %esi, %esi                        #  3981  0x752a9  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3982  0x752ab  5      
  jmpq .L_75ba0                          #  3983  0x752b0  5      
  xchgw %ax, %ax                         #  3984  0x752b5  3      
.L_76a00:                                #        0x752b8  0      
  leal 0x260(%rsp), %esi                 #  3985  0x752b8  7      
  movb $0x30, 0x262(%rsp)                #  3986  0x752bf  8      
  leaq 0x4(%rsi), %rax                   #  3987  0x752c7  4      
  leaq 0x3(%rsi), %rdx                   #  3988  0x752cb  4      
  jmpq .L_765a0                          #  3989  0x752cf  5      
  nop                                    #  3990  0x752d4  1      
.L_76a20:                                #        0x752d5  0      
  testl %r10d, %r10d                     #  3991  0x752d5  3      
  jne .L_76a40                           #  3992  0x752d8  6      
  testb $0x1, %r13b                      #  3993  0x752de  4      
  movl $0x1, 0xc4(%rsp)                  #  3994  0x752e2  11     
  je .L_74c20                            #  3995  0x752ed  6      
  nop                                    #  3996  0x752f3  1      
.L_76a40:                                #        0x752f4  0      
  addl $0x2, %r10d                       #  3997  0x752f4  4      
  movl %r10d, 0xc4(%rsp)                 #  3998  0x752f8  8      
  jmpq .L_74c20                          #  3999  0x75300  5      
  nop                                    #  4000  0x75305  1      
.L_76a60:                                #        0x75306  0      
  movq 0xb8(%rsp), %rdx                  #  4001  0x75306  8      
  movl %edx, %edx                        #  4002  0x7530e  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  4003  0x75310  6      
  orl $0x40, %eax                        #  4004  0x75316  3      
  movl %edx, %edx                        #  4005  0x75319  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  4006  0x7531b  6      
  jmpq .L_72ce0                          #  4007  0x75321  5      
.L_76a80:                                #        0x75326  0      
  movl %edi, %edi                        #  4008  0x75326  2      
  movzbl 0xa(%r15,%rdi,1), %ecx          #  4009  0x75328  6      
  jmpq .L_76700                          #  4010  0x7532e  5      
  nop                                    #  4011  0x75333  1      
  nop                                    #  4012  0x75334  1      
.L_76aa0:                                #        0x75335  0      
  xorpd %xmm1, %xmm1                     #  4013  0x75335  4      
  movsd 0xb0(%rsp), %xmm0                #  4014  0x75339  9      
  ucomisd %xmm1, %xmm0                   #  4015  0x75342  4      
  jne .L_76b40                           #  4016  0x75346  6      
  jp .L_76b40                            #  4017  0x7534c  6      
  nop                                    #  4018  0x75352  1      
  movl 0x27c(%rsp), %eax                 #  4019  0x75353  7      
  jmpq .L_74b60                          #  4020  0x7535a  5      
  nop                                    #  4021  0x7535f  1      
  nop                                    #  4022  0x75360  1      
.L_76ae0:                                #        0x75361  0      
  movq 0xc8(%rsp), %rax                  #  4023  0x75361  8      
  movl %eax, %eax                        #  4024  0x75369  2      
  movl (%r15,%rax,1), %ecx               #  4025  0x7536b  4      
  cmpl $0x2f, %ecx                       #  4026  0x7536f  3      
  ja .L_76b60                            #  4027  0x75372  6      
  movq %rax, %rsi                        #  4028  0x75378  3      
  movl %eax, %eax                        #  4029  0x7537b  2      
  movl 0xc(%r15,%rax,1), %eax            #  4030  0x7537d  5      
  addl %ecx, %eax                        #  4031  0x75382  2      
  nop                                    #  4032  0x75384  1      
  addl $0x8, %ecx                        #  4033  0x75385  3      
  movl %esi, %esi                        #  4034  0x75388  2      
  movl %ecx, (%r15,%rsi,1)               #  4035  0x7538a  4      
  nop                                    #  4036  0x7538e  1      
  nop                                    #  4037  0x7538f  1      
.L_76b20:                                #        0x75390  0      
  movl %eax, %eax                        #  4038  0x75390  2      
  movl (%r15,%rax,1), %r10d              #  4039  0x75392  4      
  testl %r10d, %r10d                     #  4040  0x75396  3      
  jns .L_71e20                           #  4041  0x75399  6      
  movl %r12d, %r12d                      #  4042  0x7539f  3      
  movzbl (%r15,%r12,1), %eax             #  4043  0x753a2  5      
  orl $0xffffffff, %r10d                 #  4044  0x753a7  7      
  jmpq .L_71600                          #  4045  0x753ae  5      
.L_76b40:                                #        0x753b3  0      
  movl $0x1, %eax                        #  4046  0x753b3  5      
  subl 0xc4(%rsp), %eax                  #  4047  0x753b8  7      
  movl %eax, 0x27c(%rsp)                 #  4048  0x753bf  7      
  jmpq .L_74b60                          #  4049  0x753c6  5      
  nop                                    #  4050  0x753cb  1      
.L_76b60:                                #        0x753cc  0      
  movq 0xc8(%rsp), %rcx                  #  4051  0x753cc  8      
  movq 0xc8(%rsp), %rsi                  #  4052  0x753d4  8      
  movl %ecx, %ecx                        #  4053  0x753dc  2      
  movl 0x8(%r15,%rcx,1), %eax            #  4054  0x753de  5      
  leal 0x8(%rax), %ecx                   #  4055  0x753e3  3      
  nop                                    #  4056  0x753e6  1      
  movl %esi, %esi                        #  4057  0x753e7  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  4058  0x753e9  5      
  jmpq .L_76b20                          #  4059  0x753ee  5      
  nop                                    #  4060  0x753f3  1      
  nop                                    #  4061  0x753f4  1      
.L_76ba0:                                #        0x753f5  0      
  movq %rcx, %rdx                        #  4062  0x753f5  3      
  jmpq .L_74ba0                          #  4063  0x753f8  5      
  nop                                    #  4064  0x753fd  1      
  nop                                    #  4065  0x753fe  1      
.L_76bc0:                                #        0x753ff  0      
  movq 0xb8(%rsp), %rcx                  #  4066  0x753ff  8      
  movl %ecx, %ecx                        #  4067  0x75407  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  4068  0x75409  6      
  orl $0x40, %eax                        #  4069  0x7540f  3      
  movl %ecx, %ecx                        #  4070  0x75412  2      
  movw %ax, 0xc(%r15,%rcx,1)             #  4071  0x75414  6      
  jmpq .L_72ce0                          #  4072  0x7541a  5      
.L_76be0:                                #        0x7541f  0      
  movq 0xb8(%rsp), %rsi                  #  4073  0x7541f  8      
  movl %esi, %esi                        #  4074  0x75427  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  4075  0x75429  6      
  orl $0x40, %eax                        #  4076  0x7542f  3      
  movl %esi, %esi                        #  4077  0x75432  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  4078  0x75434  6      
  jmpq .L_72ce0                          #  4079  0x7543a  5      
.L_76c00:                                #        0x7543f  0      
  leal 0x260(%rsp), %esi                 #  4080  0x7543f  7      
  leaq 0x2(%rsi), %rax                   #  4081  0x75446  4      
  jmpq .L_75e40                          #  4082  0x7544a  5      
  nop                                    #  4083  0x7544f  1      
  nop                                    #  4084  0x75450  1      
                                                                  
.size _vfprintf_r, .-_vfprintf_r

