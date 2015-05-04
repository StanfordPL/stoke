  .text
  .globl _vfprintf_r
  .type _vfprintf_r, @function

#! file-offset 0x71240
#! rip-offset  0x71240
#! capacity    23136 bytes

# Text                                   #  Line  RIP      Bytes  
._vfprintf_r:                            #        0x71240  0      
  pushq %r14                             #  1     0x71240  3      
  movl %edi, %r14d                       #  2     0x71243  3      
  movl %esi, %esi                        #  3     0x71246  2      
  movl %ecx, %ecx                        #  4     0x71248  2      
  movl %r14d, %edi                       #  5     0x7124a  3      
  pushq %r13                             #  6     0x7124d  3      
  pushq %r12                             #  7     0x71250  3      
  pushq %rbx                             #  8     0x71253  2      
  movl %edx, %ebx                        #  9     0x71255  2      
  subl $0x298, %esp                      #  10    0x71257  6      
  addq %r15, %rsp                        #  11    0x7125d  3      
  nop                                    #  12    0x71260  1      
  movq %rsi, 0xb8(%rsp)                  #  13    0x71261  8      
  movq %rcx, 0xc8(%rsp)                  #  14    0x71269  8      
  nop                                    #  15    0x71271  1      
  callq ._localeconv_r                   #  16    0x71272  5      
  movl %eax, %eax                        #  17    0x71277  2      
  movl %eax, %eax                        #  18    0x71279  2      
  movl (%r15,%rax,1), %eax               #  19    0x7127b  4      
  movl %eax, %edi                        #  20    0x7127f  2      
  movq %rax, 0x110(%rsp)                 #  21    0x71281  8      
  nop                                    #  22    0x71289  1      
  callq .strlen                          #  23    0x7128a  5      
  movl %eax, 0x124(%rsp)                 #  24    0x7128f  7      
  leal 0x250(%rsp), %eax                 #  25    0x71296  7      
  xorl %esi, %esi                        #  26    0x7129d  2      
  movl $0x8, %edx                        #  27    0x7129f  5      
  movl %eax, %edi                        #  28    0x712a4  2      
  movq %rax, 0x78(%rsp)                  #  29    0x712a6  5      
  nop                                    #  30    0x712ab  1      
  nop                                    #  31    0x712ac  1      
  nop                                    #  32    0x712ad  1      
  callq .memset                          #  33    0x712ae  5      
  testq %r14, %r14                       #  34    0x712b3  3      
  je .L_71300                            #  35    0x712b6  6      
  movl %r14d, %r14d                      #  36    0x712bc  3      
  movl 0x38(%r15,%r14,1), %edi           #  37    0x712bf  5      
  testl %edi, %edi                       #  38    0x712c4  2      
  je .L_72040                            #  39    0x712c6  6      
  nop                                    #  40    0x712cc  1      
.L_71300:                                #        0x712cd  0      
  movq 0xb8(%rsp), %rcx                  #  41    0x712cd  8      
  movl %ecx, %ecx                        #  42    0x712d5  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  43    0x712d7  6      
  movswl %dx, %eax                       #  44    0x712dd  3      
  testb $0x2, %ah                        #  45    0x712e0  3      
  je .L_71fc0                            #  46    0x712e3  6      
  nop                                    #  47    0x712e9  1      
.L_71320:                                #        0x712ea  0      
  testb $0x20, %ah                       #  48    0x712ea  3      
  jne .L_71360                           #  49    0x712ed  6      
  movq 0xb8(%rsp), %rax                  #  50    0x712f3  8      
  orb $0x20, %dh                         #  51    0x712fb  3      
  movl %eax, %eax                        #  52    0x712fe  2      
  movw %dx, 0xc(%r15,%rax,1)             #  53    0x71300  6      
  nop                                    #  54    0x71306  1      
  movl %eax, %eax                        #  55    0x71307  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  56    0x71309  9      
  movswl %dx, %eax                       #  57    0x71312  3      
  nop                                    #  58    0x71315  1      
  nop                                    #  59    0x71316  1      
.L_71360:                                #        0x71317  0      
  testb $0x8, %al                        #  60    0x71317  2      
  je .L_71ec0                            #  61    0x71319  6      
  movq 0xb8(%rsp), %rdx                  #  62    0x7131f  8      
  movl %edx, %edx                        #  63    0x71327  2      
  movl 0x10(%r15,%rdx,1), %esi           #  64    0x71329  5      
  testl %esi, %esi                       #  65    0x7132e  2      
  je .L_71ec0                            #  66    0x71330  6      
  nop                                    #  67    0x71336  1      
  movl %eax, %edx                        #  68    0x71337  2      
  andl $0x1a, %edx                       #  69    0x71339  3      
  cmpl $0xa, %edx                        #  70    0x7133c  3      
  je .L_71f20                            #  71    0x7133f  6      
  nop                                    #  72    0x71345  1      
  nop                                    #  73    0x71346  1      
.L_713a0:                                #        0x71347  0      
  leal 0x1d0(%rsp), %eax                 #  74    0x71347  7      
  leal 0x160(%rsp), %ecx                 #  75    0x7134e  7      
  leal 0x278(%rsp), %edx                 #  76    0x71355  7      
  movq %rbx, 0xa8(%rsp)                  #  77    0x7135c  8      
  nop                                    #  78    0x71364  1      
  leal 0x1d0(%rsp), %ebx                 #  79    0x71365  7      
  movl $0x0, 0x218(%rsp)                 #  80    0x7136c  11     
  movq %rax, 0x70(%rsp)                  #  81    0x71377  5      
  movl %eax, 0x210(%rsp)                 #  82    0x7137c  7      
  xorl %eax, %eax                        #  83    0x71383  2      
  movq %rax, 0x128(%rsp)                 #  84    0x71385  8      
  movq %rcx, 0x68(%rsp)                  #  85    0x7138d  5      
  movl 0x68(%rsp), %eax                  #  86    0x71392  4      
  movl $0x0, 0x214(%rsp)                 #  87    0x71396  11     
  nop                                    #  88    0x713a1  1      
  movl $0x0, 0x10c(%rsp)                 #  89    0x713a2  11     
  movq $0x0, 0x138(%rsp)                 #  90    0x713ad  12     
  nop                                    #  91    0x713b9  1      
  movl $0x0, 0x134(%rsp)                 #  92    0x713ba  11     
  movq $0x0, 0xe8(%rsp)                  #  93    0x713c5  12     
  addl $0x64, %eax                       #  94    0x713d1  3      
  nop                                    #  95    0x713d4  1      
  movl $0x0, 0x130(%rsp)                 #  96    0x713d5  11     
  movq $0x0, 0x140(%rsp)                 #  97    0x713e0  12     
  movl %eax, %eax                        #  98    0x713ec  2      
  nop                                    #  99    0x713ee  1      
  movl $0x0, 0xd0(%rsp)                  #  100   0x713ef  11     
  movq %rdx, 0x60(%rsp)                  #  101   0x713fa  5      
  movl %eax, %esi                        #  102   0x713ff  2      
  movq %rax, 0x100(%rsp)                 #  103   0x71401  8      
  nop                                    #  104   0x71409  1      
  leal 0x290(%rsp), %eax                 #  105   0x7140a  7      
  subl $0x1, %esi                        #  106   0x71411  3      
  subl $0x69, %eax                       #  107   0x71414  3      
  movq %rsi, 0x148(%rsp)                 #  108   0x71417  8      
  movq %rax, 0x158(%rsp)                 #  109   0x7141f  8      
  nop                                    #  110   0x71427  1      
.L_714a0:                                #        0x71428  0      
  movq 0xa8(%rsp), %r12                  #  111   0x71428  8      
  movq %rbx, %r13                        #  112   0x71430  3      
  jmpq .L_71500                          #  113   0x71433  5      
  nop                                    #  114   0x71438  1      
  nop                                    #  115   0x71439  1      
.L_714c0:                                #        0x7143a  0      
  cmpl $0x25, 0x278(%rsp)                #  116   0x7143a  8      
  je .L_715c0                            #  117   0x71442  6      
  nop                                    #  118   0x71448  1      
  nop                                    #  119   0x71449  1      
.L_714e0:                                #        0x7144a  0      
  leal (%rax,%r12,1), %r12d              #  120   0x7144a  4      
  nop                                    #  121   0x7144e  1      
  nop                                    #  122   0x7144f  1      
.L_71500:                                #        0x71450  0      
  movl 0xffbf76a(%rip), %ebx             #  123   0x71450  6      
  nop                                    #  124   0x71456  1      
  nop                                    #  125   0x71457  1      
  callq .__locale_charset                #  126   0x71458  5      
  movl %eax, %r8d                        #  127   0x7145d  3      
  movq %r8, 0x80(%rsp)                   #  128   0x71460  8      
  nop                                    #  129   0x71468  1      
  nop                                    #  130   0x71469  1      
  callq .__locale_mb_cur_max             #  131   0x7146a  5      
  movl 0x78(%rsp), %r9d                  #  132   0x7146f  5      
  movl %eax, %ecx                        #  133   0x71474  2      
  movq 0x80(%rsp), %r8                   #  134   0x71476  8      
  movl %r12d, %edx                       #  135   0x7147e  3      
  movl 0x60(%rsp), %esi                  #  136   0x71481  4      
  movl %r14d, %edi                       #  137   0x71485  3      
  nop                                    #  138   0x71488  1      
  nop                                    #  139   0x71489  1      
  nop                                    #  140   0x7148a  1      
  andl $0xffffffe0, %ebx                 #  141   0x7148b  6      
  addq %r15, %rbx                        #  142   0x71491  3      
  callq %rbx                             #  143   0x71494  2      
  cmpl $0x0, %eax                        #  144   0x71496  3      
  je .L_715c0                            #  145   0x71499  6      
  jge .L_714c0                           #  146   0x7149f  6      
  movl 0x78(%rsp), %edi                  #  147   0x714a5  4      
  movl $0x8, %edx                        #  148   0x714a9  5      
  xorl %esi, %esi                        #  149   0x714ae  2      
  nop                                    #  150   0x714b0  1      
  callq .memset                          #  151   0x714b1  5      
  movl $0x1, %eax                        #  152   0x714b6  5      
  jmpq .L_714e0                          #  153   0x714bb  5      
  nop                                    #  154   0x714c0  1      
  nop                                    #  155   0x714c1  1      
.L_715c0:                                #        0x714c2  0      
  movl %r12d, %ecx                       #  156   0x714c2  3      
  subl 0xa8(%rsp), %ecx                  #  157   0x714c5  7      
  movq %r13, %rbx                        #  158   0x714cc  3      
  movl %eax, %r13d                       #  159   0x714cf  3      
  je .L_71640                            #  160   0x714d2  6      
  movl %ebx, %ebx                        #  161   0x714d8  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  162   0x714da  5      
  movl 0x214(%rsp), %eax                 #  163   0x714df  7      
  movl 0xa8(%rsp), %edx                  #  164   0x714e6  7      
  addl %ecx, 0x218(%rsp)                 #  165   0x714ed  7      
  addl $0x1, %eax                        #  166   0x714f4  3      
  cmpl $0x7, %eax                        #  167   0x714f7  3      
  movl %ebx, %ebx                        #  168   0x714fa  2      
  movl %edx, (%r15,%rbx,1)               #  169   0x714fc  4      
  nop                                    #  170   0x71500  1      
  movl %eax, 0x214(%rsp)                 #  171   0x71501  7      
  jg .L_72000                            #  172   0x71508  6      
  addl $0x8, %ebx                        #  173   0x7150e  3      
  nop                                    #  174   0x71511  1      
  nop                                    #  175   0x71512  1      
.L_71620:                                #        0x71513  0      
  addl %ecx, 0xd0(%rsp)                  #  176   0x71513  7      
  nop                                    #  177   0x7151a  1      
  nop                                    #  178   0x7151b  1      
.L_71640:                                #        0x7151c  0      
  testl %r13d, %r13d                     #  179   0x7151c  3      
  je .L_75460                            #  180   0x7151f  6      
  addl $0x1, %r12d                       #  181   0x71525  4      
  movl $0xffffffff, %r10d                #  182   0x71529  6      
  movb $0x0, 0x28f(%rsp)                 #  183   0x7152f  8      
  xorl %r13d, %r13d                      #  184   0x71537  3      
  xchgw %ax, %ax                         #  185   0x7153a  3      
  movl %r12d, %r12d                      #  186   0x7153d  3      
  movzbl (%r15,%r12,1), %eax             #  187   0x71540  5      
  movl %r10d, %edx                       #  188   0x71545  3      
  movl $0x0, 0xd4(%rsp)                  #  189   0x71548  11     
  nop                                    #  190   0x71553  1      
.L_71680:                                #        0x71554  0      
  movsbl %al, %eax                       #  191   0x71554  3      
  addl $0x1, %r12d                       #  192   0x71557  4      
  nop                                    #  193   0x7155b  1      
  nop                                    #  194   0x7155c  1      
.L_716a0:                                #        0x7155d  0      
  leal -0x20(%rax), %ecx                 #  195   0x7155d  3      
  cmpl $0x5a, %ecx                       #  196   0x71560  3      
  jbe .L_71e00                           #  197   0x71563  6      
  nop                                    #  198   0x71569  1      
  nop                                    #  199   0x7156a  1      
  testl %eax, %eax                       #  200   0x7156b  2      
  movl %eax, 0xf8(%rsp)                  #  201   0x7156d  7      
  je .L_75460                            #  202   0x71574  6      
  leal 0x160(%rsp), %edx                 #  203   0x7157a  7      
  movb %al, 0x160(%rsp)                  #  204   0x71581  7      
  nop                                    #  205   0x71588  1      
  movb $0x0, 0x28f(%rsp)                 #  206   0x71589  8      
  xorl %eax, %eax                        #  207   0x71591  2      
  movl $0x1, 0xb0(%rsp)                  #  208   0x71593  11     
  nop                                    #  209   0x7159e  1      
  movq $0x0, 0xe0(%rsp)                  #  210   0x7159f  12     
  movq %rdx, 0xa8(%rsp)                  #  211   0x715ab  8      
  movl $0x1, 0xc4(%rsp)                  #  212   0x715b3  11     
  nop                                    #  213   0x715be  1      
  movl $0x0, 0xfc(%rsp)                  #  214   0x715bf  11     
  movl $0x0, 0x108(%rsp)                 #  215   0x715ca  11     
  nop                                    #  216   0x715d5  1      
  movl $0x0, 0x120(%rsp)                 #  217   0x715d6  11     
  movl $0x0, 0x11c(%rsp)                 #  218   0x715e1  11     
  nop                                    #  219   0x715ec  1      
.L_71760:                                #        0x715ed  0      
  movl 0xb0(%rsp), %edx                  #  220   0x715ed  7      
  movl %r13d, %ecx                       #  221   0x715f4  3      
  movl %r13d, %esi                       #  222   0x715f7  3      
  addl $0x2, %edx                        #  223   0x715fa  3      
  andl $0x2, %ecx                        #  224   0x715fd  3      
  cmovel 0xb0(%rsp), %edx                #  225   0x71600  8      
  nop                                    #  226   0x71608  1      
  andl $0x84, %esi                       #  227   0x71609  3      
  movl %ecx, 0xd8(%rsp)                  #  228   0x7160c  7      
  movl %esi, 0xf4(%rsp)                  #  229   0x71613  7      
  movl %edx, 0xb0(%rsp)                  #  230   0x7161a  7      
  nop                                    #  231   0x71621  1      
  jne .L_71900                           #  232   0x71622  6      
  movl 0xd4(%rsp), %ecx                  #  233   0x71628  7      
  subl %edx, %ecx                        #  234   0x7162f  2      
  testl %ecx, %ecx                       #  235   0x71631  2      
  jle .L_71900                           #  236   0x71633  6      
  cmpl $0x10, %ecx                       #  237   0x71639  3      
  jle .L_718c0                           #  238   0x7163c  6      
  leal 0x210(%rsp), %eax                 #  239   0x71642  7      
  movl %r13d, 0x154(%rsp)                #  240   0x71649  8      
  movq %r12, %r13                        #  241   0x71651  3      
  movq 0xb8(%rsp), %r12                  #  242   0x71654  8      
  movq %rax, 0x50(%rsp)                  #  243   0x7165c  5      
  nop                                    #  244   0x71661  1      
  movq %rbx, %rax                        #  245   0x71662  3      
  movl %ecx, %ebx                        #  246   0x71665  2      
  jmpq .L_71820                          #  247   0x71667  5      
  nop                                    #  248   0x7166c  1      
  nop                                    #  249   0x7166d  1      
.L_71800:                                #        0x7166e  0      
  subl $0x10, %ebx                       #  250   0x7166e  3      
  addl $0x8, %eax                        #  251   0x71671  3      
  cmpl $0x10, %ebx                       #  252   0x71674  3      
  jle .L_718a0                           #  253   0x71677  6      
  xchgw %ax, %ax                         #  254   0x7167d  3      
  nop                                    #  255   0x71680  1      
.L_71820:                                #        0x71681  0      
  movl %eax, %eax                        #  256   0x71681  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  257   0x71683  9      
  movl 0x214(%rsp), %edx                 #  258   0x7168c  7      
  addl $0x10, 0x218(%rsp)                #  259   0x71693  8      
  nop                                    #  260   0x7169b  1      
  movl %eax, %eax                        #  261   0x7169c  2      
  movl $0x10024240, (%r15,%rax,1)        #  262   0x7169e  8      
  addl $0x1, %edx                        #  263   0x716a6  3      
  cmpl $0x7, %edx                        #  264   0x716a9  3      
  movl %edx, 0x214(%rsp)                 #  265   0x716ac  7      
  jle .L_71800                           #  266   0x716b3  6      
  movl 0x50(%rsp), %edx                  #  267   0x716b9  4      
  movl %r12d, %esi                       #  268   0x716bd  3      
  movl %r14d, %edi                       #  269   0x716c0  3      
  nop                                    #  270   0x716c3  1      
  nop                                    #  271   0x716c4  1      
  callq .__sprint_r                      #  272   0x716c5  5      
  testl %eax, %eax                       #  273   0x716ca  2      
  jne .L_72d20                           #  274   0x716cc  6      
  subl $0x10, %ebx                       #  275   0x716d2  3      
  leal 0x1d0(%rsp), %eax                 #  276   0x716d5  7      
  cmpl $0x10, %ebx                       #  277   0x716dc  3      
  jg .L_71820                            #  278   0x716df  6      
  nop                                    #  279   0x716e5  1      
.L_718a0:                                #        0x716e6  0      
  movq %r13, %r12                        #  280   0x716e6  3      
  movl 0x154(%rsp), %r13d                #  281   0x716e9  8      
  movl %ebx, %ecx                        #  282   0x716f1  2      
  movq %rax, %rbx                        #  283   0x716f3  3      
  nop                                    #  284   0x716f6  1      
  nop                                    #  285   0x716f7  1      
.L_718c0:                                #        0x716f8  0      
  movl %ebx, %ebx                        #  286   0x716f8  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  287   0x716fa  5      
  movl 0x214(%rsp), %eax                 #  288   0x716ff  7      
  addl %ecx, 0x218(%rsp)                 #  289   0x71706  7      
  movl %ebx, %ebx                        #  290   0x7170d  2      
  movl $0x10024240, (%r15,%rbx,1)        #  291   0x7170f  8      
  nop                                    #  292   0x71717  1      
  addl $0x1, %eax                        #  293   0x71718  3      
  cmpl $0x7, %eax                        #  294   0x7171b  3      
  movl %eax, 0x214(%rsp)                 #  295   0x7171e  7      
  jg .L_737a0                            #  296   0x71725  6      
  movzbl 0x28f(%rsp), %eax               #  297   0x7172b  8      
  addl $0x8, %ebx                        #  298   0x71733  3      
  xchgw %ax, %ax                         #  299   0x71736  3      
.L_71900:                                #        0x71739  0      
  testb %al, %al                         #  300   0x71739  2      
  je .L_71960                            #  301   0x7173b  6      
  leal 0x28f(%rsp), %eax                 #  302   0x71741  7      
  movl %ebx, %ebx                        #  303   0x71748  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  304   0x7174a  9      
  addl $0x1, 0x218(%rsp)                 #  305   0x71753  8      
  xchgw %ax, %ax                         #  306   0x7175b  3      
  movl %ebx, %ebx                        #  307   0x7175e  2      
  movl %eax, (%r15,%rbx,1)               #  308   0x71760  4      
  movl 0x214(%rsp), %eax                 #  309   0x71764  7      
  addl $0x1, %eax                        #  310   0x7176b  3      
  cmpl $0x7, %eax                        #  311   0x7176e  3      
  movl %eax, 0x214(%rsp)                 #  312   0x71771  7      
  jg .L_73440                            #  313   0x71778  6      
  addl $0x8, %ebx                        #  314   0x7177e  3      
  nop                                    #  315   0x71781  1      
  nop                                    #  316   0x71782  1      
.L_71960:                                #        0x71783  0      
  movl 0xd8(%rsp), %r9d                  #  317   0x71783  8      
  testl %r9d, %r9d                       #  318   0x7178b  3      
  je .L_719c0                            #  319   0x7178e  6      
  leal 0x280(%rsp), %eax                 #  320   0x71794  7      
  movl %ebx, %ebx                        #  321   0x7179b  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  322   0x7179d  9      
  nop                                    #  323   0x717a6  1      
  addl $0x2, 0x218(%rsp)                 #  324   0x717a7  8      
  movl %ebx, %ebx                        #  325   0x717af  2      
  movl %eax, (%r15,%rbx,1)               #  326   0x717b1  4      
  movl 0x214(%rsp), %eax                 #  327   0x717b5  7      
  addl $0x1, %eax                        #  328   0x717bc  3      
  cmpl $0x7, %eax                        #  329   0x717bf  3      
  nop                                    #  330   0x717c2  1      
  movl %eax, 0x214(%rsp)                 #  331   0x717c3  7      
  jg .L_73480                            #  332   0x717ca  6      
  addl $0x8, %ebx                        #  333   0x717d0  3      
  nop                                    #  334   0x717d3  1      
  nop                                    #  335   0x717d4  1      
.L_719c0:                                #        0x717d5  0      
  cmpl $0x80, 0xf4(%rsp)                 #  336   0x717d5  8      
  je .L_73060                            #  337   0x717dd  6      
  nop                                    #  338   0x717e3  1      
.L_719e0:                                #        0x717e4  0      
  movl 0xfc(%rsp), %ecx                  #  339   0x717e4  7      
  subl 0xc4(%rsp), %ecx                  #  340   0x717eb  7      
  testl %ecx, %ecx                       #  341   0x717f2  2      
  jle .L_71b40                           #  342   0x717f4  6      
  cmpl $0x10, %ecx                       #  343   0x717fa  3      
  jle .L_71b00                           #  344   0x717fd  6      
  nop                                    #  345   0x71803  1      
  leal 0x210(%rsp), %esi                 #  346   0x71804  7      
  movq %rbx, %rax                        #  347   0x7180b  3      
  movl %r13d, 0xd8(%rsp)                 #  348   0x7180e  8      
  movl %ecx, %ebx                        #  349   0x71816  2      
  movq %r12, %r13                        #  350   0x71818  3      
  movq 0xb8(%rsp), %r12                  #  351   0x7181b  8      
  nop                                    #  352   0x71823  1      
  movq %rsi, 0x40(%rsp)                  #  353   0x71824  5      
  jmpq .L_71a60                          #  354   0x71829  5      
  nop                                    #  355   0x7182e  1      
  nop                                    #  356   0x7182f  1      
.L_71a40:                                #        0x71830  0      
  subl $0x10, %ebx                       #  357   0x71830  3      
  addl $0x8, %eax                        #  358   0x71833  3      
  cmpl $0x10, %ebx                       #  359   0x71836  3      
  jle .L_71ae0                           #  360   0x71839  6      
  xchgw %ax, %ax                         #  361   0x7183f  3      
  nop                                    #  362   0x71842  1      
.L_71a60:                                #        0x71843  0      
  movl %eax, %eax                        #  363   0x71843  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  364   0x71845  9      
  movl 0x214(%rsp), %edx                 #  365   0x7184e  7      
  addl $0x10, 0x218(%rsp)                #  366   0x71855  8      
  nop                                    #  367   0x7185d  1      
  movl %eax, %eax                        #  368   0x7185e  2      
  movl $0x10024230, (%r15,%rax,1)        #  369   0x71860  8      
  addl $0x1, %edx                        #  370   0x71868  3      
  cmpl $0x7, %edx                        #  371   0x7186b  3      
  movl %edx, 0x214(%rsp)                 #  372   0x7186e  7      
  jle .L_71a40                           #  373   0x71875  6      
  movl 0x40(%rsp), %edx                  #  374   0x7187b  4      
  movl %r12d, %esi                       #  375   0x7187f  3      
  movl %r14d, %edi                       #  376   0x71882  3      
  nop                                    #  377   0x71885  1      
  nop                                    #  378   0x71886  1      
  callq .__sprint_r                      #  379   0x71887  5      
  testl %eax, %eax                       #  380   0x7188c  2      
  jne .L_72d20                           #  381   0x7188e  6      
  subl $0x10, %ebx                       #  382   0x71894  3      
  leal 0x1d0(%rsp), %eax                 #  383   0x71897  7      
  cmpl $0x10, %ebx                       #  384   0x7189e  3      
  jg .L_71a60                            #  385   0x718a1  6      
  nop                                    #  386   0x718a7  1      
.L_71ae0:                                #        0x718a8  0      
  movq %r13, %r12                        #  387   0x718a8  3      
  movl 0xd8(%rsp), %r13d                 #  388   0x718ab  8      
  movl %ebx, %ecx                        #  389   0x718b3  2      
  movq %rax, %rbx                        #  390   0x718b5  3      
  nop                                    #  391   0x718b8  1      
  nop                                    #  392   0x718b9  1      
.L_71b00:                                #        0x718ba  0      
  movl %ebx, %ebx                        #  393   0x718ba  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  394   0x718bc  5      
  movl 0x214(%rsp), %eax                 #  395   0x718c1  7      
  addl %ecx, 0x218(%rsp)                 #  396   0x718c8  7      
  movl %ebx, %ebx                        #  397   0x718cf  2      
  movl $0x10024230, (%r15,%rbx,1)        #  398   0x718d1  8      
  nop                                    #  399   0x718d9  1      
  addl $0x1, %eax                        #  400   0x718da  3      
  cmpl $0x7, %eax                        #  401   0x718dd  3      
  movl %eax, 0x214(%rsp)                 #  402   0x718e0  7      
  jg .L_73400                            #  403   0x718e7  6      
  addl $0x8, %ebx                        #  404   0x718ed  3      
  nop                                    #  405   0x718f0  1      
.L_71b40:                                #        0x718f1  0      
  testl $0x100, %r13d                    #  406   0x718f1  7      
  jne .L_72dc0                           #  407   0x718f8  6      
  movl 0xc4(%rsp), %edx                  #  408   0x718fe  7      
  movl 0xa8(%rsp), %eax                  #  409   0x71905  7      
  nop                                    #  410   0x7190c  1      
  movl %ebx, %ebx                        #  411   0x7190d  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  412   0x7190f  5      
  addl %edx, 0x218(%rsp)                 #  413   0x71914  7      
  movl %ebx, %ebx                        #  414   0x7191b  2      
  movl %eax, (%r15,%rbx,1)               #  415   0x7191d  4      
  nop                                    #  416   0x71921  1      
.L_71b80:                                #        0x71922  0      
  movl 0x214(%rsp), %eax                 #  417   0x71922  7      
  addl $0x1, %eax                        #  418   0x71929  3      
  cmpl $0x7, %eax                        #  419   0x7192c  3      
  movl %eax, 0x214(%rsp)                 #  420   0x7192f  7      
  jg .L_73380                            #  421   0x71936  6      
  addl $0x8, %ebx                        #  422   0x7193c  3      
  nop                                    #  423   0x7193f  1      
.L_71ba0:                                #        0x71940  0      
  andl $0x4, %r13d                       #  424   0x71940  4      
  je .L_71d40                            #  425   0x71944  6      
  movl 0xd4(%rsp), %r13d                 #  426   0x7194a  8      
  subl 0xb0(%rsp), %r13d                 #  427   0x71952  8      
  testl %r13d, %r13d                     #  428   0x7195a  3      
  nop                                    #  429   0x7195d  1      
  jle .L_71d40                           #  430   0x7195e  6      
  cmpl $0x10, %r13d                      #  431   0x71964  4      
  jle .L_71cc0                           #  432   0x71968  6      
  leal 0x210(%rsp), %ecx                 #  433   0x7196e  7      
  movq %rbx, %rax                        #  434   0x71975  3      
  nop                                    #  435   0x71978  1      
  movq 0xb8(%rsp), %rbx                  #  436   0x71979  8      
  movq %rcx, 0x8(%rsp)                   #  437   0x71981  5      
  jmpq .L_71c20                          #  438   0x71986  5      
  xchgw %ax, %ax                         #  439   0x7198b  3      
  nop                                    #  440   0x7198e  1      
.L_71c00:                                #        0x7198f  0      
  subl $0x10, %r13d                      #  441   0x7198f  4      
  addl $0x8, %eax                        #  442   0x71993  3      
  cmpl $0x10, %r13d                      #  443   0x71996  4      
  jle .L_71ca0                           #  444   0x7199a  6      
  nop                                    #  445   0x719a0  1      
.L_71c20:                                #        0x719a1  0      
  movl %eax, %eax                        #  446   0x719a1  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  447   0x719a3  9      
  movl 0x214(%rsp), %edx                 #  448   0x719ac  7      
  addl $0x10, 0x218(%rsp)                #  449   0x719b3  8      
  nop                                    #  450   0x719bb  1      
  movl %eax, %eax                        #  451   0x719bc  2      
  movl $0x10024240, (%r15,%rax,1)        #  452   0x719be  8      
  addl $0x1, %edx                        #  453   0x719c6  3      
  cmpl $0x7, %edx                        #  454   0x719c9  3      
  movl %edx, 0x214(%rsp)                 #  455   0x719cc  7      
  jle .L_71c00                           #  456   0x719d3  6      
  movl 0x8(%rsp), %edx                   #  457   0x719d9  4      
  movl %ebx, %esi                        #  458   0x719dd  2      
  nop                                    #  459   0x719df  1      
  movl %r14d, %edi                       #  460   0x719e0  3      
  nop                                    #  461   0x719e3  1      
  nop                                    #  462   0x719e4  1      
  callq .__sprint_r                      #  463   0x719e5  5      
  testl %eax, %eax                       #  464   0x719ea  2      
  jne .L_72d20                           #  465   0x719ec  6      
  subl $0x10, %r13d                      #  466   0x719f2  4      
  leal 0x1d0(%rsp), %eax                 #  467   0x719f6  7      
  cmpl $0x10, %r13d                      #  468   0x719fd  4      
  jg .L_71c20                            #  469   0x71a01  6      
  nop                                    #  470   0x71a07  1      
.L_71ca0:                                #        0x71a08  0      
  movq %rax, %rbx                        #  471   0x71a08  3      
  nop                                    #  472   0x71a0b  1      
  nop                                    #  473   0x71a0c  1      
.L_71cc0:                                #        0x71a0d  0      
  movl %ebx, %ebx                        #  474   0x71a0d  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  475   0x71a0f  5      
  movl 0x214(%rsp), %eax                 #  476   0x71a14  7      
  addl 0x218(%rsp), %r13d                #  477   0x71a1b  8      
  movl %ebx, %ebx                        #  478   0x71a23  2      
  movl $0x10024240, (%r15,%rbx,1)        #  479   0x71a25  8      
  addl $0x1, %eax                        #  480   0x71a2d  3      
  cmpl $0x7, %eax                        #  481   0x71a30  3      
  movl %eax, 0x214(%rsp)                 #  482   0x71a33  7      
  movl %r13d, 0x218(%rsp)                #  483   0x71a3a  8      
  jle .L_71d60                           #  484   0x71a42  6      
  movl 0xb8(%rsp), %esi                  #  485   0x71a48  7      
  xchgw %ax, %ax                         #  486   0x71a4f  3      
  leal 0x210(%rsp), %edx                 #  487   0x71a52  7      
  movl %r14d, %edi                       #  488   0x71a59  3      
  xchgw %ax, %ax                         #  489   0x71a5c  3      
  nop                                    #  490   0x71a5f  1      
  callq .__sprint_r                      #  491   0x71a60  5      
  testl %eax, %eax                       #  492   0x71a65  2      
  jne .L_72d20                           #  493   0x71a67  6      
  nop                                    #  494   0x71a6d  1      
  nop                                    #  495   0x71a6e  1      
.L_71d40:                                #        0x71a6f  0      
  movl 0x218(%rsp), %r13d                #  496   0x71a6f  8      
  nop                                    #  497   0x71a77  1      
  nop                                    #  498   0x71a78  1      
.L_71d60:                                #        0x71a79  0      
  movl 0xd4(%rsp), %ebx                  #  499   0x71a79  7      
  cmpl %ebx, 0xb0(%rsp)                  #  500   0x71a80  7      
  movl %ebx, %eax                        #  501   0x71a87  2      
  cmovgel 0xb0(%rsp), %eax               #  502   0x71a89  8      
  addl %eax, 0xd0(%rsp)                  #  503   0x71a91  7      
  nop                                    #  504   0x71a98  1      
  testl %r13d, %r13d                     #  505   0x71a99  3      
  jne .L_733c0                           #  506   0x71a9c  6      
  nop                                    #  507   0x71aa2  1      
  nop                                    #  508   0x71aa3  1      
.L_71da0:                                #        0x71aa4  0      
  cmpq $0x0, 0xe0(%rsp)                  #  509   0x71aa4  9      
  movl $0x0, 0x214(%rsp)                 #  510   0x71aad  11     
  leal 0x1d0(%rsp), %ebx                 #  511   0x71ab8  7      
  nop                                    #  512   0x71abf  1      
  je .L_71de0                            #  513   0x71ac0  6      
  movl 0xe0(%rsp), %esi                  #  514   0x71ac6  7      
  leal 0x1d0(%rsp), %ebx                 #  515   0x71acd  7      
  movl %r14d, %edi                       #  516   0x71ad4  3      
  nop                                    #  517   0x71ad7  1      
  callq ._free_r                         #  518   0x71ad8  5      
.L_71de0:                                #        0x71add  0      
  movq %r12, 0xa8(%rsp)                  #  519   0x71add  8      
  jmpq .L_714a0                          #  520   0x71ae5  5      
  nop                                    #  521   0x71aea  1      
  nop                                    #  522   0x71aeb  1      
.L_71e00:                                #        0x71aec  0      
  movl %ecx, %ecx                        #  523   0x71aec  2      
  movl %ecx, %ecx                        #  524   0x71aee  2      
  movq 0x10023f50(%r15,%rcx,8), %rcx     #  525   0x71af0  8      
  andl $0xffffffe0, %ecx                 #  526   0x71af8  6      
  addq %r15, %rcx                        #  527   0x71afe  3      
  jmpq %rcx                              #  528   0x71b01  2      
  nop                                    #  529   0x71b03  1      
  orl $0x20, %r13d                       #  530   0x71b04  4      
  movl %r12d, %r12d                      #  531   0x71b08  3      
  movzbl (%r15,%r12,1), %eax             #  532   0x71b0b  5      
  jmpq .L_71680                          #  533   0x71b10  5      
  nop                                    #  534   0x71b15  1      
  movq 0xc8(%rsp), %rsi                  #  535   0x71b16  8      
  movl %esi, %esi                        #  536   0x71b1e  2      
  movl (%r15,%rsi,1), %eax               #  537   0x71b20  4      
  cmpl $0x2f, %eax                       #  538   0x71b24  3      
  ja .L_746c0                            #  539   0x71b27  6      
  movl %esi, %esi                        #  540   0x71b2d  2      
  movl 0xc(%r15,%rsi,1), %ecx            #  541   0x71b2f  5      
  addl %eax, %ecx                        #  542   0x71b34  2      
  addl $0x8, %eax                        #  543   0x71b36  3      
  movl %esi, %esi                        #  544   0x71b39  2      
  movl %eax, (%r15,%rsi,1)               #  545   0x71b3b  4      
  nop                                    #  546   0x71b3f  1      
  nop                                    #  547   0x71b40  1      
.L_71e80:                                #        0x71b41  0      
  movl %ecx, %ecx                        #  548   0x71b41  2      
  movl (%r15,%rcx,1), %ecx               #  549   0x71b43  4      
  testl %ecx, %ecx                       #  550   0x71b47  2      
  movl %ecx, 0xd4(%rsp)                  #  551   0x71b49  7      
  js .L_720c0                            #  552   0x71b50  6      
  nop                                    #  553   0x71b56  1      
.L_71ea0:                                #        0x71b57  0      
  movl %r12d, %r12d                      #  554   0x71b57  3      
  movzbl (%r15,%r12,1), %eax             #  555   0x71b5a  5      
  jmpq .L_71680                          #  556   0x71b5f  5      
  nop                                    #  557   0x71b64  1      
  nop                                    #  558   0x71b65  1      
.L_71ec0:                                #        0x71b66  0      
  movl 0xb8(%rsp), %esi                  #  559   0x71b66  7      
  movl %r14d, %edi                       #  560   0x71b6d  3      
  xchgw %ax, %ax                         #  561   0x71b70  3      
  nop                                    #  562   0x71b73  1      
  callq .__swsetup_r                     #  563   0x71b74  5      
  testl %eax, %eax                       #  564   0x71b79  2      
  jne .L_76000                           #  565   0x71b7b  6      
  movq 0xb8(%rsp), %rcx                  #  566   0x71b81  8      
  movl %ecx, %ecx                        #  567   0x71b89  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  568   0x71b8b  6      
  movl %eax, %edx                        #  569   0x71b91  2      
  andl $0x1a, %edx                       #  570   0x71b93  3      
  cmpl $0xa, %edx                        #  571   0x71b96  3      
  jne .L_713a0                           #  572   0x71b99  6      
  nop                                    #  573   0x71b9f  1      
  nop                                    #  574   0x71ba0  1      
.L_71f20:                                #        0x71ba1  0      
  movq 0xb8(%rsp), %rsi                  #  575   0x71ba1  8      
  movl %esi, %esi                        #  576   0x71ba9  2      
  cmpw $0x0, 0xe(%r15,%rsi,1)            #  577   0x71bab  7      
  js .L_713a0                            #  578   0x71bb2  6      
  testb $0x2, %ah                        #  579   0x71bb8  3      
  je .L_72080                            #  580   0x71bbb  6      
.L_71f40:                                #        0x71bc1  0      
  movl 0xc8(%rsp), %ecx                  #  581   0x71bc1  7      
  movl 0xb8(%rsp), %esi                  #  582   0x71bc8  7      
  movl %ebx, %edx                        #  583   0x71bcf  2      
  movl %r14d, %edi                       #  584   0x71bd1  3      
  nop                                    #  585   0x71bd4  1      
  callq .__sbprintf                      #  586   0x71bd5  5      
  movl %eax, 0xd0(%rsp)                  #  587   0x71bda  7      
  nop                                    #  588   0x71be1  1      
  nop                                    #  589   0x71be2  1      
.L_71f80:                                #        0x71be3  0      
  movl 0xd0(%rsp), %eax                  #  590   0x71be3  7      
  addl $0x298, %esp                      #  591   0x71bea  6      
  addq %r15, %rsp                        #  592   0x71bf0  3      
  popq %rbx                              #  593   0x71bf3  2      
  popq %r12                              #  594   0x71bf5  3      
  popq %r13                              #  595   0x71bf8  3      
  popq %r14                              #  596   0x71bfb  3      
  popq %r11                              #  597   0x71bfe  3      
  nop                                    #  598   0x71c01  1      
  andl $0xffffffe0, %r11d                #  599   0x71c02  7      
  addq %r15, %r11                        #  600   0x71c09  3      
  jmpq %r11                              #  601   0x71c0c  3      
  nop                                    #  602   0x71c0f  1      
  nop                                    #  603   0x71c10  1      
.L_71fc0:                                #        0x71c11  0      
  movl 0xb8(%rsp), %edi                  #  604   0x71c11  7      
  addl $0x5c, %edi                       #  605   0x71c18  3      
  xchgw %ax, %ax                         #  606   0x71c1b  3      
  nop                                    #  607   0x71c1e  1      
  callq .__local_lock_acquire_recursive  #  608   0x71c1f  5      
  movq 0xb8(%rsp), %rsi                  #  609   0x71c24  8      
  movl %esi, %esi                        #  610   0x71c2c  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  611   0x71c2e  6      
  movswl %dx, %eax                       #  612   0x71c34  3      
  jmpq .L_71320                          #  613   0x71c37  5      
  nop                                    #  614   0x71c3c  1      
.L_72000:                                #        0x71c3d  0      
  movl 0xb8(%rsp), %esi                  #  615   0x71c3d  7      
  leal 0x210(%rsp), %edx                 #  616   0x71c44  7      
  movl %r14d, %edi                       #  617   0x71c4b  3      
  movl %ecx, 0x90(%rsp)                  #  618   0x71c4e  7      
  nop                                    #  619   0x71c55  1      
  callq .__sprint_r                      #  620   0x71c56  5      
  testl %eax, %eax                       #  621   0x71c5b  2      
  movl 0x90(%rsp), %ecx                  #  622   0x71c5d  7      
  jne .L_768a0                           #  623   0x71c64  6      
  leal 0x1d0(%rsp), %ebx                 #  624   0x71c6a  7      
  jmpq .L_71620                          #  625   0x71c71  5      
  nop                                    #  626   0x71c76  1      
.L_72040:                                #        0x71c77  0      
  movl %r14d, %edi                       #  627   0x71c77  3      
  nop                                    #  628   0x71c7a  1      
  nop                                    #  629   0x71c7b  1      
  callq .__sinit                         #  630   0x71c7c  5      
  jmpq .L_71300                          #  631   0x71c81  5      
  nop                                    #  632   0x71c86  1      
  nop                                    #  633   0x71c87  1      
.L_72080:                                #        0x71c88  0      
  movl 0xb8(%rsp), %edi                  #  634   0x71c88  7      
  addl $0x5c, %edi                       #  635   0x71c8f  3      
  xchgw %ax, %ax                         #  636   0x71c92  3      
  nop                                    #  637   0x71c95  1      
  callq .__local_lock_release_recursive  #  638   0x71c96  5      
  jmpq .L_71f40                          #  639   0x71c9b  5      
  nop                                    #  640   0x71ca0  1      
  nop                                    #  641   0x71ca1  1      
.L_720c0:                                #        0x71ca2  0      
  negl 0xd4(%rsp)                        #  642   0x71ca2  7      
  nop                                    #  643   0x71ca9  1      
  nop                                    #  644   0x71caa  1      
  orl $0x4, %r13d                        #  645   0x71cab  4      
  movl %r12d, %r12d                      #  646   0x71caf  3      
  movzbl (%r15,%r12,1), %eax             #  647   0x71cb2  5      
  jmpq .L_71680                          #  648   0x71cb7  5      
  nop                                    #  649   0x71cbc  1      
  movq 0xc8(%rsp), %rdx                  #  650   0x71cbd  8      
  movl %edx, %edx                        #  651   0x71cc5  2      
  movl (%r15,%rdx,1), %eax               #  652   0x71cc7  4      
  cmpl $0x2f, %eax                       #  653   0x71ccb  3      
  ja .L_746a0                            #  654   0x71cce  6      
  movq %rdx, %rcx                        #  655   0x71cd4  3      
  nop                                    #  656   0x71cd7  1      
  movl %edx, %edx                        #  657   0x71cd8  2      
  movl 0xc(%r15,%rdx,1), %edx            #  658   0x71cda  5      
  addl %eax, %edx                        #  659   0x71cdf  2      
  addl $0x8, %eax                        #  660   0x71ce1  3      
  movl %ecx, %ecx                        #  661   0x71ce4  2      
  movl %eax, (%r15,%rcx,1)               #  662   0x71ce6  4      
  nop                                    #  663   0x71cea  1      
.L_72140:                                #        0x71ceb  0      
  movl %edx, %edx                        #  664   0x71ceb  2      
  movl (%r15,%rdx,1), %ecx               #  665   0x71ced  4      
  orl $0x2, %r13d                        #  666   0x71cf1  4      
  movb $0x30, 0x280(%rsp)                #  667   0x71cf5  8      
  movb $0x78, 0x281(%rsp)                #  668   0x71cfd  8      
  nop                                    #  669   0x71d05  1      
  movq $0x10023c01, 0x138(%rsp)          #  670   0x71d06  12     
  movl $0x2, %eax                        #  671   0x71d12  5      
  movl $0x78, 0xf8(%rsp)                 #  672   0x71d17  11     
  testq %rcx, %rcx                       #  673   0x71d22  3      
  nop                                    #  674   0x71d25  1      
  setne %sil                             #  675   0x71d26  4      
  nop                                    #  676   0x71d2a  1      
  nop                                    #  677   0x71d2b  1      
.L_721a0:                                #        0x71d2c  0      
  movb $0x0, 0x28f(%rsp)                 #  678   0x71d2c  8      
  nop                                    #  679   0x71d34  1      
  nop                                    #  680   0x71d35  1      
.L_721c0:                                #        0x71d36  0      
  movl %r13d, %edx                       #  681   0x71d36  3      
  andb $0x7f, %dl                        #  682   0x71d39  3      
  testl %r10d, %r10d                     #  683   0x71d3c  3      
  cmovnsl %edx, %r13d                    #  684   0x71d3f  4      
  testl %r10d, %r10d                     #  685   0x71d43  3      
  jne .L_721e0                           #  686   0x71d46  6      
  testb %sil, %sil                       #  687   0x71d4c  3      
  je .L_72fe0                            #  688   0x71d4f  6      
  nop                                    #  689   0x71d55  1      
.L_721e0:                                #        0x71d56  0      
  cmpl $0x1, %eax                        #  690   0x71d56  3      
  je .L_73760                            #  691   0x71d59  6      
  cmpl $0x2, %eax                        #  692   0x71d5f  3      
  je .L_736e0                            #  693   0x71d62  6      
  movq 0x100(%rsp), %rdx                 #  694   0x71d68  8      
  nop                                    #  695   0x71d70  1      
  movq %rdx, 0xa8(%rsp)                  #  696   0x71d71  8      
  nop                                    #  697   0x71d79  1      
  nop                                    #  698   0x71d7a  1      
.L_72220:                                #        0x71d7b  0      
  movl %ecx, %eax                        #  699   0x71d7b  2      
  shrq $0x3, %rcx                        #  700   0x71d7d  4      
  subl $0x1, %edx                        #  701   0x71d81  3      
  andl $0x7, %eax                        #  702   0x71d84  3      
  addl $0x30, %eax                       #  703   0x71d87  3      
  testq %rcx, %rcx                       #  704   0x71d8a  3      
  movl %edx, %edx                        #  705   0x71d8d  2      
  movb %al, (%r15,%rdx,1)                #  706   0x71d8f  4      
  jne .L_72220                           #  707   0x71d93  6      
  testb $0x1, %r13b                      #  708   0x71d99  4      
  xchgw %ax, %ax                         #  709   0x71d9d  3      
  movq %rdx, 0xa8(%rsp)                  #  710   0x71da0  8      
  jne .L_74560                           #  711   0x71da8  6      
  movl 0x100(%rsp), %ecx                 #  712   0x71dae  7      
  movq 0xe8(%rsp), %rsi                  #  713   0x71db5  8      
  subl %edx, %ecx                        #  714   0x71dbd  2      
  nop                                    #  715   0x71dbf  1      
  movl %ecx, 0xc4(%rsp)                  #  716   0x71dc0  7      
  nop                                    #  717   0x71dc7  1      
  nop                                    #  718   0x71dc8  1      
.L_72280:                                #        0x71dc9  0      
  cmpl %r10d, 0xc4(%rsp)                 #  719   0x71dc9  8      
  movl 0xc4(%rsp), %eax                  #  720   0x71dd1  7      
  movl %r10d, 0xfc(%rsp)                 #  721   0x71dd8  8      
  movq %rsi, 0xe8(%rsp)                  #  722   0x71de0  8      
  nop                                    #  723   0x71de8  1      
  movq $0x0, 0xe0(%rsp)                  #  724   0x71de9  12     
  movl $0x0, 0x108(%rsp)                 #  725   0x71df5  11     
  nop                                    #  726   0x71e00  1      
  movl $0x0, 0x120(%rsp)                 #  727   0x71e01  11     
  movl $0x0, 0x11c(%rsp)                 #  728   0x71e0c  11     
  cmovll %r10d, %eax                     #  729   0x71e17  4      
  nop                                    #  730   0x71e1b  1      
  movl %eax, 0xb0(%rsp)                  #  731   0x71e1c  7      
  movzbl 0x28f(%rsp), %eax               #  732   0x71e23  8      
  xchgw %ax, %ax                         #  733   0x71e2b  3      
  nop                                    #  734   0x71e2e  1      
.L_72300:                                #        0x71e2f  0      
  testb %al, %al                         #  735   0x71e2f  2      
  je .L_71760                            #  736   0x71e31  6      
  nop                                    #  737   0x71e37  1      
  nop                                    #  738   0x71e38  1      
.L_72320:                                #        0x71e39  0      
  addl $0x1, 0xb0(%rsp)                  #  739   0x71e39  8      
  jmpq .L_71760                          #  740   0x71e41  5      
  nop                                    #  741   0x71e46  1      
  nop                                    #  742   0x71e47  1      
  movl %r12d, %r12d                      #  743   0x71e48  3      
  movzbl (%r15,%r12,1), %eax             #  744   0x71e4b  5      
  cmpb $0x6c, %al                        #  745   0x71e50  2      
  je .L_75680                            #  746   0x71e52  6      
  orl $0x10, %r13d                       #  747   0x71e58  4      
  jmpq .L_71680                          #  748   0x71e5c  5      
  nop                                    #  749   0x71e61  1      
  cmpl $0x43, %eax                       #  750   0x71e62  3      
  movl %eax, 0xf8(%rsp)                  #  751   0x71e65  7      
  je .L_74300                            #  752   0x71e6c  6      
  testb $0x10, %r13b                     #  753   0x71e72  4      
  jne .L_74300                           #  754   0x71e76  6      
  nop                                    #  755   0x71e7c  1      
  movq 0xc8(%rsp), %rcx                  #  756   0x71e7d  8      
  movl %ecx, %ecx                        #  757   0x71e85  2      
  movl (%r15,%rcx,1), %eax               #  758   0x71e87  4      
  cmpl $0x2f, %eax                       #  759   0x71e8b  3      
  ja .L_753a0                            #  760   0x71e8e  6      
  movl %ecx, %ecx                        #  761   0x71e94  2      
  movl 0xc(%r15,%rcx,1), %edx            #  762   0x71e96  5      
  addl %eax, %edx                        #  763   0x71e9b  2      
  addl $0x8, %eax                        #  764   0x71e9d  3      
  movl %ecx, %ecx                        #  765   0x71ea0  2      
  movl %eax, (%r15,%rcx,1)               #  766   0x71ea2  4      
  nop                                    #  767   0x71ea6  1      
  nop                                    #  768   0x71ea7  1      
.L_723c0:                                #        0x71ea8  0      
  movl %edx, %edx                        #  769   0x71ea8  2      
  movl (%r15,%rdx,1), %eax               #  770   0x71eaa  4      
  movl $0x1, 0xc4(%rsp)                  #  771   0x71eae  11     
  movb %al, 0x160(%rsp)                  #  772   0x71eb9  7      
  jmpq .L_743c0                          #  773   0x71ec0  5      
  nop                                    #  774   0x71ec5  1      
  movl %eax, 0xf8(%rsp)                  #  775   0x71ec6  7      
  orl $0x10, %r13d                       #  776   0x71ecd  4      
  nop                                    #  777   0x71ed1  1      
  nop                                    #  778   0x71ed2  1      
.L_72400:                                #        0x71ed3  0      
  testb $0x20, %r13b                     #  779   0x71ed3  4      
  je .L_73840                            #  780   0x71ed7  6      
  movq 0xc8(%rsp), %rcx                  #  781   0x71edd  8      
  movl %ecx, %ecx                        #  782   0x71ee5  2      
  movl (%r15,%rcx,1), %eax               #  783   0x71ee7  4      
  cmpl $0x2f, %eax                       #  784   0x71eeb  3      
  nop                                    #  785   0x71eee  1      
  ja .L_745e0                            #  786   0x71eef  6      
  movl %ecx, %ecx                        #  787   0x71ef5  2      
  movl 0xc(%r15,%rcx,1), %edx            #  788   0x71ef7  5      
  addl %eax, %edx                        #  789   0x71efc  2      
  addl $0x8, %eax                        #  790   0x71efe  3      
  movl %ecx, %ecx                        #  791   0x71f01  2      
  movl %eax, (%r15,%rcx,1)               #  792   0x71f03  4      
  nop                                    #  793   0x71f07  1      
.L_72440:                                #        0x71f08  0      
  movl %edx, %edx                        #  794   0x71f08  2      
  movq (%r15,%rdx,1), %rcx               #  795   0x71f0a  4      
  nop                                    #  796   0x71f0e  1      
  nop                                    #  797   0x71f0f  1      
.L_72460:                                #        0x71f10  0      
  cmpq $0x0, %rcx                        #  798   0x71f10  4      
  jl .L_745c0                            #  799   0x71f14  6      
  setne %sil                             #  800   0x71f1a  4      
  movl $0x1, %eax                        #  801   0x71f1e  5      
  jmpq .L_721c0                          #  802   0x71f23  5      
  nop                                    #  803   0x71f28  1      
  orl $0x8, %r13d                        #  804   0x71f29  4      
  movl %r12d, %r12d                      #  805   0x71f2d  3      
  movzbl (%r15,%r12,1), %eax             #  806   0x71f30  5      
  jmpq .L_71680                          #  807   0x71f35  5      
  nop                                    #  808   0x71f3a  1      
  movq 0xc8(%rsp), %rdx                  #  809   0x71f3b  8      
  movl %eax, 0xf8(%rsp)                  #  810   0x71f43  7      
  movl %edx, %edx                        #  811   0x71f4a  2      
  movl (%r15,%rdx,1), %eax               #  812   0x71f4c  4      
  cmpl $0x2f, %eax                       #  813   0x71f50  3      
  ja .L_74840                            #  814   0x71f53  6      
  xchgw %ax, %ax                         #  815   0x71f59  3      
  movq %rdx, %rcx                        #  816   0x71f5c  3      
  movl %edx, %edx                        #  817   0x71f5f  2      
  movl 0xc(%r15,%rdx,1), %edx            #  818   0x71f61  5      
  addl %eax, %edx                        #  819   0x71f66  2      
  addl $0x8, %eax                        #  820   0x71f68  3      
  movl %ecx, %ecx                        #  821   0x71f6b  2      
  movl %eax, (%r15,%rcx,1)               #  822   0x71f6d  4      
  nop                                    #  823   0x71f71  1      
.L_724e0:                                #        0x71f72  0      
  movl %edx, %edx                        #  824   0x71f72  2      
  movl (%r15,%rdx,1), %edx               #  825   0x71f74  4      
  movb $0x0, 0x28f(%rsp)                 #  826   0x71f78  8      
  testq %rdx, %rdx                       #  827   0x71f80  3      
  movq %rdx, 0xa8(%rsp)                  #  828   0x71f83  8      
  je .L_75960                            #  829   0x71f8b  6      
  nop                                    #  830   0x71f91  1      
  cmpl $0x53, 0xf8(%rsp)                 #  831   0x71f92  8      
  je .L_74e00                            #  832   0x71f9a  6      
  movl %r13d, %ecx                       #  833   0x71fa0  3      
  andl $0x10, %ecx                       #  834   0x71fa3  3      
  jne .L_74e00                           #  835   0x71fa6  6      
  testl %r10d, %r10d                     #  836   0x71fac  3      
  nop                                    #  837   0x71faf  1      
  js .L_753e0                            #  838   0x71fb0  6      
  movl 0xa8(%rsp), %edi                  #  839   0x71fb6  7      
  movl %r10d, %edx                       #  840   0x71fbd  3      
  xorl %esi, %esi                        #  841   0x71fc0  2      
  movl %ecx, 0x90(%rsp)                  #  842   0x71fc2  7      
  nop                                    #  843   0x71fc9  1      
  movl %r10d, 0x88(%rsp)                 #  844   0x71fca  8      
  nop                                    #  845   0x71fd2  1      
  nop                                    #  846   0x71fd3  1      
  callq .memchr                          #  847   0x71fd4  5      
  movl %eax, %eax                        #  848   0x71fd9  2      
  movl 0x90(%rsp), %ecx                  #  849   0x71fdb  7      
  movl 0x88(%rsp), %r10d                 #  850   0x71fe2  8      
  testq %rax, %rax                       #  851   0x71fea  3      
  je .L_76a40                            #  852   0x71fed  6      
  nop                                    #  853   0x71ff3  1      
  subl 0xa8(%rsp), %eax                  #  854   0x71ff4  7      
  cmpl %eax, %r10d                       #  855   0x71ffb  3      
  movl %eax, 0xc4(%rsp)                  #  856   0x71ffe  7      
  jge .L_75d40                           #  857   0x72005  6      
  testl %r10d, %r10d                     #  858   0x7200b  3      
  nop                                    #  859   0x7200e  1      
  movzbl 0x28f(%rsp), %eax               #  860   0x7200f  8      
  movl %r10d, 0xc4(%rsp)                 #  861   0x72017  8      
  cmovnsl %r10d, %ecx                    #  862   0x7201f  4      
  movl %ecx, 0xb0(%rsp)                  #  863   0x72023  7      
  jmpq .L_74fa0                          #  864   0x7202a  5      
  movl %eax, 0xf8(%rsp)                  #  865   0x7202f  7      
  orl $0x10, %r13d                       #  866   0x72036  4      
  nop                                    #  867   0x7203a  1      
  nop                                    #  868   0x7203b  1      
.L_725e0:                                #        0x7203c  0      
  testb $0x20, %r13b                     #  869   0x7203c  4      
  je .L_737e0                            #  870   0x72040  6      
  movq 0xc8(%rsp), %rcx                  #  871   0x72046  8      
  movl %ecx, %ecx                        #  872   0x7204e  2      
  movl (%r15,%rcx,1), %eax               #  873   0x72050  4      
  cmpl $0x2f, %eax                       #  874   0x72054  3      
  nop                                    #  875   0x72057  1      
  ja .L_74680                            #  876   0x72058  6      
  movl %ecx, %ecx                        #  877   0x7205e  2      
  movl 0xc(%r15,%rcx,1), %edx            #  878   0x72060  5      
  addl %eax, %edx                        #  879   0x72065  2      
  addl $0x8, %eax                        #  880   0x72067  3      
  movl %ecx, %ecx                        #  881   0x7206a  2      
  movl %eax, (%r15,%rcx,1)               #  882   0x7206c  4      
  nop                                    #  883   0x72070  1      
.L_72620:                                #        0x72071  0      
  movl %edx, %edx                        #  884   0x72071  2      
  movq (%r15,%rdx,1), %rcx               #  885   0x72073  4      
  movl $0x1, %eax                        #  886   0x72077  5      
  testq %rcx, %rcx                       #  887   0x7207c  3      
  setne %sil                             #  888   0x7207f  4      
  jmpq .L_721a0                          #  889   0x72083  5      
  nop                                    #  890   0x72088  1      
  testb $0x20, %r13b                     #  891   0x72089  4      
  movl %eax, 0xf8(%rsp)                  #  892   0x7208d  7      
  movq $0x10023be0, 0x138(%rsp)          #  893   0x72094  12     
  je .L_72860                            #  894   0x720a0  6      
  nop                                    #  895   0x720a6  1      
.L_72660:                                #        0x720a7  0      
  movq 0xc8(%rsp), %rdx                  #  896   0x720a7  8      
  movl %edx, %edx                        #  897   0x720af  2      
  movl (%r15,%rdx,1), %eax               #  898   0x720b1  4      
  cmpl $0x2f, %eax                       #  899   0x720b5  3      
  ja .L_74860                            #  900   0x720b8  6      
  movq %rdx, %rcx                        #  901   0x720be  3      
  nop                                    #  902   0x720c1  1      
  movl %edx, %edx                        #  903   0x720c2  2      
  movl 0xc(%r15,%rdx,1), %edx            #  904   0x720c4  5      
  addl %eax, %edx                        #  905   0x720c9  2      
  addl $0x8, %eax                        #  906   0x720cb  3      
  movl %ecx, %ecx                        #  907   0x720ce  2      
  movl %eax, (%r15,%rcx,1)               #  908   0x720d0  4      
  nop                                    #  909   0x720d4  1      
.L_726a0:                                #        0x720d5  0      
  movl %edx, %edx                        #  910   0x720d5  2      
  movq (%r15,%rdx,1), %rcx               #  911   0x720d7  4      
  nop                                    #  912   0x720db  1      
  nop                                    #  913   0x720dc  1      
.L_726c0:                                #        0x720dd  0      
  testq %rcx, %rcx                       #  914   0x720dd  3      
  setne %sil                             #  915   0x720e0  4      
  je .L_72700                            #  916   0x720e4  6      
  testb $0x1, %r13b                      #  917   0x720ea  4      
  je .L_72700                            #  918   0x720ee  6      
  movzbl 0xf8(%rsp), %eax                #  919   0x720f4  8      
  movb $0x30, 0x280(%rsp)                #  920   0x720fc  8      
  nop                                    #  921   0x72104  1      
  orl $0x2, %r13d                        #  922   0x72105  4      
  movb %al, 0x281(%rsp)                  #  923   0x72109  7      
  nop                                    #  924   0x72110  1      
  nop                                    #  925   0x72111  1      
.L_72700:                                #        0x72112  0      
  andl $0xfffffbff, %r13d                #  926   0x72112  7      
  movl $0x2, %eax                        #  927   0x72119  5      
  jmpq .L_721a0                          #  928   0x7211e  5      
  nop                                    #  929   0x72123  1      
  movl %r12d, %r12d                      #  930   0x72124  3      
  movsbl (%r15,%r12,1), %eax             #  931   0x72127  5      
  addl $0x1, %r12d                       #  932   0x7212c  4      
  cmpl $0x2a, %eax                       #  933   0x72130  3      
  je .L_76b60                            #  934   0x72133  6      
  leal -0x30(%rax), %esi                 #  935   0x72139  3      
  xorl %ecx, %ecx                        #  936   0x7213c  2      
  xorl %r10d, %r10d                      #  937   0x7213e  3      
  cmpl $0x9, %esi                        #  938   0x72141  3      
  ja .L_716a0                            #  939   0x72144  6      
  nop                                    #  940   0x7214a  1      
  nop                                    #  941   0x7214b  1      
.L_72760:                                #        0x7214c  0      
  movl %r12d, %r12d                      #  942   0x7214c  3      
  movsbl (%r15,%r12,1), %eax             #  943   0x7214f  5      
  leal (%rcx,%rcx,4), %ecx               #  944   0x72154  3      
  addl $0x1, %r12d                       #  945   0x72157  4      
  leal (%rsi,%rcx,2), %ecx               #  946   0x7215b  3      
  leal -0x30(%rax), %esi                 #  947   0x7215e  3      
  cmpl $0x9, %esi                        #  948   0x72161  3      
  jbe .L_72760                           #  949   0x72164  6      
  testl %ecx, %ecx                       #  950   0x7216a  2      
  movl %edx, %r10d                       #  951   0x7216c  3      
  nop                                    #  952   0x7216f  1      
  cmovnsl %ecx, %r10d                    #  953   0x72170  4      
  jmpq .L_716a0                          #  954   0x72174  5      
  nop                                    #  955   0x72179  1      
  nop                                    #  956   0x7217a  1      
  movl %eax, 0xf8(%rsp)                  #  957   0x7217b  7      
  orl $0x10, %r13d                       #  958   0x72182  4      
  nop                                    #  959   0x72186  1      
  nop                                    #  960   0x72187  1      
.L_727c0:                                #        0x72188  0      
  testb $0x20, %r13b                     #  961   0x72188  4      
  je .L_738a0                            #  962   0x7218c  6      
  movq 0xc8(%rsp), %rcx                  #  963   0x72192  8      
  movl %ecx, %ecx                        #  964   0x7219a  2      
  movl (%r15,%rcx,1), %eax               #  965   0x7219c  4      
  cmpl $0x2f, %eax                       #  966   0x721a0  3      
  nop                                    #  967   0x721a3  1      
  ja .L_747a0                            #  968   0x721a4  6      
  movl %ecx, %ecx                        #  969   0x721aa  2      
  movl 0xc(%r15,%rcx,1), %edx            #  970   0x721ac  5      
  addl %eax, %edx                        #  971   0x721b1  2      
  addl $0x8, %eax                        #  972   0x721b3  3      
  movl %ecx, %ecx                        #  973   0x721b6  2      
  movl %eax, (%r15,%rcx,1)               #  974   0x721b8  4      
  nop                                    #  975   0x721bc  1      
.L_72800:                                #        0x721bd  0      
  movl %edx, %edx                        #  976   0x721bd  2      
  movq (%r15,%rdx,1), %rcx               #  977   0x721bf  4      
  nop                                    #  978   0x721c3  1      
  nop                                    #  979   0x721c4  1      
.L_72820:                                #        0x721c5  0      
  andl $0xfffffbff, %r13d                #  980   0x721c5  7      
  testq %rcx, %rcx                       #  981   0x721cc  3      
  setne %sil                             #  982   0x721cf  4      
  xorl %eax, %eax                        #  983   0x721d3  2      
  jmpq .L_721a0                          #  984   0x721d5  5      
  nop                                    #  985   0x721da  1      
  testb $0x20, %r13b                     #  986   0x721db  4      
  movl %eax, 0xf8(%rsp)                  #  987   0x721df  7      
  movq $0x10023c01, 0x138(%rsp)          #  988   0x721e6  12     
  jne .L_72660                           #  989   0x721f2  6      
  nop                                    #  990   0x721f8  1      
.L_72860:                                #        0x721f9  0      
  testb $0x10, %r13b                     #  991   0x721f9  4      
  je .L_74900                            #  992   0x721fd  6      
  movq 0xc8(%rsp), %rdx                  #  993   0x72203  8      
  movl %edx, %edx                        #  994   0x7220b  2      
  movl (%r15,%rdx,1), %eax               #  995   0x7220d  4      
  cmpl $0x2f, %eax                       #  996   0x72211  3      
  nop                                    #  997   0x72214  1      
  ja .L_75340                            #  998   0x72215  6      
  movq %rdx, %rcx                        #  999   0x7221b  3      
  movl %edx, %edx                        #  1000  0x7221e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1001  0x72220  5      
  addl %eax, %edx                        #  1002  0x72225  2      
  addl $0x8, %eax                        #  1003  0x72227  3      
  movl %ecx, %ecx                        #  1004  0x7222a  2      
  movl %eax, (%r15,%rcx,1)               #  1005  0x7222c  4      
  nop                                    #  1006  0x72230  1      
.L_728a0:                                #        0x72231  0      
  movl %edx, %edx                        #  1007  0x72231  2      
  movl (%r15,%rdx,1), %ecx               #  1008  0x72233  4      
  jmpq .L_726c0                          #  1009  0x72237  5      
  nop                                    #  1010  0x7223c  1      
  nop                                    #  1011  0x7223d  1      
  cmpb $0x0, 0x28f(%rsp)                 #  1012  0x7223e  8      
  jne .L_71ea0                           #  1013  0x72246  6      
  movb $0x20, 0x28f(%rsp)                #  1014  0x7224c  8      
  movl %r12d, %r12d                      #  1015  0x72254  3      
  movzbl (%r15,%r12,1), %eax             #  1016  0x72257  5      
  xchgw %ax, %ax                         #  1017  0x7225c  3      
  jmpq .L_71680                          #  1018  0x7225f  5      
  nop                                    #  1019  0x72264  1      
  nop                                    #  1020  0x72265  1      
  movq 0xc8(%rsp), %rdx                  #  1021  0x72266  8      
  movl %eax, 0xf8(%rsp)                  #  1022  0x7226e  7      
  movl %edx, %edx                        #  1023  0x72275  2      
  movl 0x4(%r15,%rdx,1), %eax            #  1024  0x72277  5      
  cmpl $0xaf, %eax                       #  1025  0x7227c  3      
  nop                                    #  1026  0x7227f  1      
  ja .L_74d80                            #  1027  0x72280  6      
  movq %rdx, %rcx                        #  1028  0x72286  3      
  movl %edx, %edx                        #  1029  0x72289  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1030  0x7228b  5      
  addl %eax, %edx                        #  1031  0x72290  2      
  addl $0x10, %eax                       #  1032  0x72292  3      
  movl %ecx, %ecx                        #  1033  0x72295  2      
  movl %eax, 0x4(%r15,%rcx,1)            #  1034  0x72297  5      
  nop                                    #  1035  0x7229c  1      
.L_72940:                                #        0x7229d  0      
  movl %edx, %edx                        #  1036  0x7229d  2      
  movsd (%r15,%rdx,1), %xmm0             #  1037  0x7229f  6      
  movl %r10d, 0x88(%rsp)                 #  1038  0x722a5  8      
  movsd %xmm0, 0x128(%rsp)               #  1039  0x722ad  9      
  nop                                    #  1040  0x722b6  1      
  movsd %xmm0, 0xb0(%rsp)                #  1041  0x722b7  9      
  movsd 0x128(%rsp), %xmm0               #  1042  0x722c0  9      
  nop                                    #  1043  0x722c9  1      
  callq .__fpclassifyd                   #  1044  0x722ca  5      
  cmpl $0x1, %eax                        #  1045  0x722cf  3      
  movl 0x88(%rsp), %r10d                 #  1046  0x722d2  8      
  jne .L_74980                           #  1047  0x722da  6      
  movsd 0x128(%rsp), %xmm1               #  1048  0x722e0  9      
  nop                                    #  1049  0x722e9  1      
  ucomisd 0xffb1c2e(%rip), %xmm1         #  1050  0x722ea  8      
  jb .L_75380                            #  1051  0x722f2  6      
  nop                                    #  1052  0x722f8  1      
  nop                                    #  1053  0x722f9  1      
.L_729c0:                                #        0x722fa  0      
  cmpl $0x47, 0xf8(%rsp)                 #  1054  0x722fa  8      
  movq $0x10023bf1, 0xa8(%rsp)           #  1055  0x72302  12     
  movl $0x10023bf5, %eax                 #  1056  0x7230e  5      
  nop                                    #  1057  0x72313  1      
.L_729e0:                                #        0x72314  0      
  cmovleq 0xa8(%rsp), %rax               #  1058  0x72314  9      
  movl $0x3, 0xb0(%rsp)                  #  1059  0x7231d  11     
  andb $0x7f, %r13b                      #  1060  0x72328  4      
  nop                                    #  1061  0x7232c  1      
  movq $0x0, 0xe0(%rsp)                  #  1062  0x7232d  12     
  movl $0x3, 0xc4(%rsp)                  #  1063  0x72339  11     
  nop                                    #  1064  0x72344  1      
  movl $0x0, 0xfc(%rsp)                  #  1065  0x72345  11     
  movl $0x0, 0x108(%rsp)                 #  1066  0x72350  11     
  nop                                    #  1067  0x7235b  1      
  movl $0x0, 0x120(%rsp)                 #  1068  0x7235c  11     
  movl $0x0, 0x11c(%rsp)                 #  1069  0x72367  11     
  movq %rax, 0xa8(%rsp)                  #  1070  0x72372  8      
  xchgw %ax, %ax                         #  1071  0x7237a  3      
  movzbl 0x28f(%rsp), %eax               #  1072  0x7237d  8      
  jmpq .L_72300                          #  1073  0x72385  5      
  nop                                    #  1074  0x7238a  1      
  nop                                    #  1075  0x7238b  1      
  movl %r14d, %edi                       #  1076  0x7238c  3      
  movl %edx, 0xa0(%rsp)                  #  1077  0x7238f  7      
  movl %r10d, 0x88(%rsp)                 #  1078  0x72396  8      
  nop                                    #  1079  0x7239e  1      
  callq ._localeconv_r                   #  1080  0x7239f  5      
  movl %eax, %eax                        #  1081  0x723a4  2      
  movl %eax, %eax                        #  1082  0x723a6  2      
  movl 0x4(%r15,%rax,1), %eax            #  1083  0x723a8  5      
  movl %eax, %edi                        #  1084  0x723ad  2      
  movq %rax, 0x140(%rsp)                 #  1085  0x723af  8      
  nop                                    #  1086  0x723b7  1      
  callq .strlen                          #  1087  0x723b8  5      
  movl %r14d, %edi                       #  1088  0x723bd  3      
  movl %eax, 0x130(%rsp)                 #  1089  0x723c0  7      
  xchgw %ax, %ax                         #  1090  0x723c7  3      
  nop                                    #  1091  0x723ca  1      
  callq ._localeconv_r                   #  1092  0x723cb  5      
  movl %eax, %eax                        #  1093  0x723d0  2      
  movl 0x130(%rsp), %ecx                 #  1094  0x723d2  7      
  movl 0xa0(%rsp), %edx                  #  1095  0x723d9  7      
  movl %eax, %eax                        #  1096  0x723e0  2      
  movl 0x8(%r15,%rax,1), %eax            #  1097  0x723e2  5      
  movl 0x88(%rsp), %r10d                 #  1098  0x723e7  8      
  nop                                    #  1099  0x723ef  1      
  testl %ecx, %ecx                       #  1100  0x723f0  2      
  movq %rax, 0xe8(%rsp)                  #  1101  0x723f2  8      
  je .L_71ea0                            #  1102  0x723fa  6      
  testq %rax, %rax                       #  1103  0x72400  3      
  je .L_71ea0                            #  1104  0x72403  6      
  nop                                    #  1105  0x72409  1      
  movq 0xe8(%rsp), %rcx                  #  1106  0x7240a  8      
  movl %ecx, %ecx                        #  1107  0x72412  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1108  0x72414  5      
  je .L_71ea0                            #  1109  0x72419  6      
  orl $0x400, %r13d                      #  1110  0x7241f  7      
  nop                                    #  1111  0x72426  1      
  movl %r12d, %r12d                      #  1112  0x72427  3      
  movzbl (%r15,%r12,1), %eax             #  1113  0x7242a  5      
  jmpq .L_71680                          #  1114  0x7242f  5      
  nop                                    #  1115  0x72434  1      
  nop                                    #  1116  0x72435  1      
  movb $0x2b, 0x28f(%rsp)                #  1117  0x72436  8      
  movl %r12d, %r12d                      #  1118  0x7243e  3      
  movzbl (%r15,%r12,1), %eax             #  1119  0x72441  5      
  jmpq .L_71680                          #  1120  0x72446  5      
  nop                                    #  1121  0x7244b  1      
  orb $0x80, %r13b                       #  1122  0x7244c  4      
  movl %r12d, %r12d                      #  1123  0x72450  3      
  movzbl (%r15,%r12,1), %eax             #  1124  0x72453  5      
  jmpq .L_71680                          #  1125  0x72458  5      
  nop                                    #  1126  0x7245d  1      
  xorl %ecx, %ecx                        #  1127  0x7245e  2      
  nop                                    #  1128  0x72460  1      
  nop                                    #  1129  0x72461  1      
.L_72bc0:                                #        0x72462  0      
  leal (%rcx,%rcx,4), %ecx               #  1130  0x72462  3      
  leal -0x30(%rax,%rcx,2), %ecx          #  1131  0x72465  4      
  movl %r12d, %r12d                      #  1132  0x72469  3      
  movsbl (%r15,%r12,1), %eax             #  1133  0x7246c  5      
  addl $0x1, %r12d                       #  1134  0x72471  4      
  leal -0x30(%rax), %esi                 #  1135  0x72475  3      
  cmpl $0x9, %esi                        #  1136  0x72478  3      
  jbe .L_72bc0                           #  1137  0x7247b  6      
  nop                                    #  1138  0x72481  1      
  movl %ecx, 0xd4(%rsp)                  #  1139  0x72482  7      
  jmpq .L_716a0                          #  1140  0x72489  5      
  nop                                    #  1141  0x7248e  1      
  nop                                    #  1142  0x7248f  1      
  testb $0x20, %r13b                     #  1143  0x72490  4      
  je .L_74720                            #  1144  0x72494  6      
  movq 0xc8(%rsp), %rcx                  #  1145  0x7249a  8      
  movl %ecx, %ecx                        #  1146  0x724a2  2      
  movl (%r15,%rcx,1), %eax               #  1147  0x724a4  4      
  cmpl $0x2f, %eax                       #  1148  0x724a8  3      
  nop                                    #  1149  0x724ab  1      
  jbe .L_75100                           #  1150  0x724ac  6      
  movq 0xc8(%rsp), %rsi                  #  1151  0x724b2  8      
  movl %esi, %esi                        #  1152  0x724ba  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1153  0x724bc  5      
  leal 0x8(%rdx), %eax                   #  1154  0x724c1  3      
  movl %esi, %esi                        #  1155  0x724c4  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1156  0x724c6  5      
  nop                                    #  1157  0x724cb  1      
.L_72c40:                                #        0x724cc  0      
  movl %edx, %edx                        #  1158  0x724cc  2      
  movl (%r15,%rdx,1), %eax               #  1159  0x724ce  4      
  movslq 0xd0(%rsp), %rdx                #  1160  0x724d2  8      
  movl %eax, %eax                        #  1161  0x724da  2      
  movq %rdx, (%r15,%rax,1)               #  1162  0x724dc  4      
  jmpq .L_71de0                          #  1163  0x724e0  5      
  nop                                    #  1164  0x724e5  1      
  orl $0x1, %r13d                        #  1165  0x724e6  4      
  movl %r12d, %r12d                      #  1166  0x724ea  3      
  movzbl (%r15,%r12,1), %eax             #  1167  0x724ed  5      
  jmpq .L_71680                          #  1168  0x724f2  5      
  nop                                    #  1169  0x724f7  1      
  movl %r12d, %r12d                      #  1170  0x724f8  3      
  movzbl (%r15,%r12,1), %eax             #  1171  0x724fb  5      
  cmpb $0x68, %al                        #  1172  0x72500  2      
  je .L_756a0                            #  1173  0x72502  6      
  orl $0x40, %r13d                       #  1174  0x72508  4      
  jmpq .L_71680                          #  1175  0x7250c  5      
  nop                                    #  1176  0x72511  1      
  movl %eax, 0xf8(%rsp)                  #  1177  0x72512  7      
  jmpq .L_725e0                          #  1178  0x72519  5      
  nop                                    #  1179  0x7251e  1      
  nop                                    #  1180  0x7251f  1      
  movl %eax, 0xf8(%rsp)                  #  1181  0x72520  7      
  jmpq .L_72400                          #  1182  0x72527  5      
  nop                                    #  1183  0x7252c  1      
  nop                                    #  1184  0x7252d  1      
  movl %eax, 0xf8(%rsp)                  #  1185  0x7252e  7      
  jmpq .L_727c0                          #  1186  0x72535  5      
  nop                                    #  1187  0x7253a  1      
  nop                                    #  1188  0x7253b  1      
.L_72d00:                                #        0x7253c  0      
  movq 0xb8(%rsp), %rax                  #  1189  0x7253c  8      
  movl %eax, %eax                        #  1190  0x72544  2      
  orw $0x40, 0xc(%r15,%rax,1)            #  1191  0x72546  7      
  nop                                    #  1192  0x7254d  1      
.L_72d20:                                #        0x7254e  0      
  cmpq $0x0, 0xe0(%rsp)                  #  1193  0x7254e  9      
  je .L_73500                            #  1194  0x72557  6      
  movl 0xe0(%rsp), %esi                  #  1195  0x7255d  7      
  movl %r14d, %edi                       #  1196  0x72564  3      
  xchgw %ax, %ax                         #  1197  0x72567  3      
  callq ._free_r                         #  1198  0x7256a  5      
  movq 0xb8(%rsp), %rbx                  #  1199  0x7256f  8      
  movl %ebx, %ebx                        #  1200  0x72577  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  1201  0x72579  6      
  nop                                    #  1202  0x7257f  1      
  nop                                    #  1203  0x72580  1      
.L_72d60:                                #        0x72581  0      
  cwtl                                   #  1204  0x72581  1      
  testb $0x2, %ah                        #  1205  0x72582  3      
  je .L_734c0                            #  1206  0x72585  6      
  nop                                    #  1207  0x7258b  1      
  nop                                    #  1208  0x7258c  1      
.L_72d80:                                #        0x7258d  0      
  testb $0x40, %al                       #  1209  0x7258d  2      
  je .L_71f80                            #  1210  0x7258f  6      
  nop                                    #  1211  0x72595  1      
  nop                                    #  1212  0x72596  1      
.L_72da0:                                #        0x72597  0      
  movl $0xffffffff, 0xd0(%rsp)           #  1213  0x72597  11     
  jmpq .L_71f80                          #  1214  0x725a2  5      
  nop                                    #  1215  0x725a7  1      
  nop                                    #  1216  0x725a8  1      
.L_72dc0:                                #        0x725a9  0      
  cmpl $0x65, 0xf8(%rsp)                 #  1217  0x725a9  8      
  jle .L_731c0                           #  1218  0x725b1  6      
  movsd 0x128(%rsp), %xmm0               #  1219  0x725b7  9      
  ucomisd 0xffb1958(%rip), %xmm0         #  1220  0x725c0  8      
  nop                                    #  1221  0x725c8  1      
  jne .L_73520                           #  1222  0x725c9  6      
  jp .L_73520                            #  1223  0x725cf  6      
  movl %ebx, %ebx                        #  1224  0x725d5  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1225  0x725d7  9      
  movl 0x214(%rsp), %eax                 #  1226  0x725e0  7      
  xchgw %ax, %ax                         #  1227  0x725e7  3      
  addl $0x1, 0x218(%rsp)                 #  1228  0x725ea  8      
  movl %ebx, %ebx                        #  1229  0x725f2  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  1230  0x725f4  8      
  addl $0x1, %eax                        #  1231  0x725fc  3      
  cmpl $0x7, %eax                        #  1232  0x725ff  3      
  movl %eax, 0x214(%rsp)                 #  1233  0x72602  7      
  nop                                    #  1234  0x72609  1      
  jg .L_75080                            #  1235  0x7260a  6      
  addl $0x8, %ebx                        #  1236  0x72610  3      
  nop                                    #  1237  0x72613  1      
  nop                                    #  1238  0x72614  1      
.L_72e40:                                #        0x72615  0      
  movl 0x10c(%rsp), %eax                 #  1239  0x72615  7      
  cmpl %eax, 0x27c(%rsp)                 #  1240  0x7261c  7      
  jl .L_72e60                            #  1241  0x72623  6      
  testb $0x1, %r13b                      #  1242  0x72629  4      
  je .L_71ba0                            #  1243  0x7262d  6      
  nop                                    #  1244  0x72633  1      
.L_72e60:                                #        0x72634  0      
  movl 0x124(%rsp), %ecx                 #  1245  0x72634  7      
  movl 0x110(%rsp), %edx                 #  1246  0x7263b  7      
  movl %ebx, %ebx                        #  1247  0x72642  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1248  0x72644  5      
  movl 0x214(%rsp), %eax                 #  1249  0x72649  7      
  nop                                    #  1250  0x72650  1      
  addl %ecx, 0x218(%rsp)                 #  1251  0x72651  7      
  movl %ebx, %ebx                        #  1252  0x72658  2      
  movl %edx, (%r15,%rbx,1)               #  1253  0x7265a  4      
  addl $0x1, %eax                        #  1254  0x7265e  3      
  cmpl $0x7, %eax                        #  1255  0x72661  3      
  movl %eax, 0x214(%rsp)                 #  1256  0x72664  7      
  jg .L_756c0                            #  1257  0x7266b  6      
  addl $0x8, %ebx                        #  1258  0x72671  3      
  nop                                    #  1259  0x72674  1      
  nop                                    #  1260  0x72675  1      
.L_72ec0:                                #        0x72676  0      
  movl 0x10c(%rsp), %ecx                 #  1261  0x72676  7      
  subl $0x1, %ecx                        #  1262  0x7267d  3      
  testl %ecx, %ecx                       #  1263  0x72680  2      
  jle .L_71ba0                           #  1264  0x72682  6      
  cmpl $0x10, %ecx                       #  1265  0x72688  3      
  jle .L_73a40                           #  1266  0x7268b  6      
  nop                                    #  1267  0x72691  1      
  leal 0x210(%rsp), %esi                 #  1268  0x72692  7      
  movq %rbx, %rax                        #  1269  0x72699  3      
  movl %r13d, 0xa8(%rsp)                 #  1270  0x7269c  8      
  movl %ecx, %ebx                        #  1271  0x726a4  2      
  movq %r12, %r13                        #  1272  0x726a6  3      
  movq 0xb8(%rsp), %r12                  #  1273  0x726a9  8      
  nop                                    #  1274  0x726b1  1      
  movq %rsi, 0x38(%rsp)                  #  1275  0x726b2  5      
  jmpq .L_72f60                          #  1276  0x726b7  5      
  nop                                    #  1277  0x726bc  1      
  nop                                    #  1278  0x726bd  1      
.L_72f20:                                #        0x726be  0      
  addl $0x8, %eax                        #  1279  0x726be  3      
  nop                                    #  1280  0x726c1  1      
  nop                                    #  1281  0x726c2  1      
.L_72f40:                                #        0x726c3  0      
  subl $0x10, %ebx                       #  1282  0x726c3  3      
  cmpl $0x10, %ebx                       #  1283  0x726c6  3      
  jle .L_75000                           #  1284  0x726c9  6      
  nop                                    #  1285  0x726cf  1      
  nop                                    #  1286  0x726d0  1      
.L_72f60:                                #        0x726d1  0      
  movl %eax, %eax                        #  1287  0x726d1  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1288  0x726d3  9      
  movl 0x214(%rsp), %edx                 #  1289  0x726dc  7      
  addl $0x10, 0x218(%rsp)                #  1290  0x726e3  8      
  nop                                    #  1291  0x726eb  1      
  movl %eax, %eax                        #  1292  0x726ec  2      
  movl $0x10024230, (%r15,%rax,1)        #  1293  0x726ee  8      
  addl $0x1, %edx                        #  1294  0x726f6  3      
  cmpl $0x7, %edx                        #  1295  0x726f9  3      
  movl %edx, 0x214(%rsp)                 #  1296  0x726fc  7      
  jle .L_72f20                           #  1297  0x72703  6      
  movl 0x38(%rsp), %edx                  #  1298  0x72709  4      
  movl %r12d, %esi                       #  1299  0x7270d  3      
  movl %r14d, %edi                       #  1300  0x72710  3      
  nop                                    #  1301  0x72713  1      
  nop                                    #  1302  0x72714  1      
  callq .__sprint_r                      #  1303  0x72715  5      
  testl %eax, %eax                       #  1304  0x7271a  2      
  jne .L_72d20                           #  1305  0x7271c  6      
  leal 0x1d0(%rsp), %eax                 #  1306  0x72722  7      
  jmpq .L_72f40                          #  1307  0x72729  5      
  nop                                    #  1308  0x7272e  1      
.L_72fe0:                                #        0x7272f  0      
  testl %eax, %eax                       #  1309  0x7272f  2      
  jne .L_73020                           #  1310  0x72731  6      
  testb $0x1, %r13b                      #  1311  0x72737  4      
  je .L_73020                            #  1312  0x7273b  6      
  movq 0x148(%rsp), %rcx                 #  1313  0x72741  8      
  movq %rcx, 0xa8(%rsp)                  #  1314  0x72749  8      
  nop                                    #  1315  0x72751  1      
  movl %ecx, %ecx                        #  1316  0x72752  2      
  movb $0x30, (%r15,%rcx,1)              #  1317  0x72754  5      
  movl $0x1, 0xc4(%rsp)                  #  1318  0x72759  11     
  movq 0xe8(%rsp), %rsi                  #  1319  0x72764  8      
  jmpq .L_72280                          #  1320  0x7276c  5      
  nop                                    #  1321  0x72771  1      
.L_73020:                                #        0x72772  0      
  movq 0x100(%rsp), %rsi                 #  1322  0x72772  8      
  movl $0x0, 0xc4(%rsp)                  #  1323  0x7277a  11     
  movq %rsi, 0xa8(%rsp)                  #  1324  0x72785  8      
  nop                                    #  1325  0x7278d  1      
  movq 0xe8(%rsp), %rsi                  #  1326  0x7278e  8      
  jmpq .L_72280                          #  1327  0x72796  5      
  nop                                    #  1328  0x7279b  1      
  nop                                    #  1329  0x7279c  1      
.L_73060:                                #        0x7279d  0      
  movl 0xd4(%rsp), %ecx                  #  1330  0x7279d  7      
  subl 0xb0(%rsp), %ecx                  #  1331  0x727a4  7      
  testl %ecx, %ecx                       #  1332  0x727ab  2      
  jle .L_719e0                           #  1333  0x727ad  6      
  cmpl $0x10, %ecx                       #  1334  0x727b3  3      
  jle .L_73180                           #  1335  0x727b6  6      
  nop                                    #  1336  0x727bc  1      
  leal 0x210(%rsp), %edx                 #  1337  0x727bd  7      
  movq %rbx, %rax                        #  1338  0x727c4  3      
  movl %r13d, 0xd8(%rsp)                 #  1339  0x727c7  8      
  movl %ecx, %ebx                        #  1340  0x727cf  2      
  movq %r12, %r13                        #  1341  0x727d1  3      
  movq 0xb8(%rsp), %r12                  #  1342  0x727d4  8      
  nop                                    #  1343  0x727dc  1      
  movq %rdx, 0x48(%rsp)                  #  1344  0x727dd  5      
  jmpq .L_730e0                          #  1345  0x727e2  5      
  nop                                    #  1346  0x727e7  1      
  nop                                    #  1347  0x727e8  1      
.L_730c0:                                #        0x727e9  0      
  subl $0x10, %ebx                       #  1348  0x727e9  3      
  addl $0x8, %eax                        #  1349  0x727ec  3      
  cmpl $0x10, %ebx                       #  1350  0x727ef  3      
  jle .L_73160                           #  1351  0x727f2  6      
  xchgw %ax, %ax                         #  1352  0x727f8  3      
  nop                                    #  1353  0x727fb  1      
.L_730e0:                                #        0x727fc  0      
  movl %eax, %eax                        #  1354  0x727fc  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1355  0x727fe  9      
  movl 0x214(%rsp), %edx                 #  1356  0x72807  7      
  addl $0x10, 0x218(%rsp)                #  1357  0x7280e  8      
  nop                                    #  1358  0x72816  1      
  movl %eax, %eax                        #  1359  0x72817  2      
  movl $0x10024230, (%r15,%rax,1)        #  1360  0x72819  8      
  addl $0x1, %edx                        #  1361  0x72821  3      
  cmpl $0x7, %edx                        #  1362  0x72824  3      
  movl %edx, 0x214(%rsp)                 #  1363  0x72827  7      
  jle .L_730c0                           #  1364  0x7282e  6      
  movl 0x48(%rsp), %edx                  #  1365  0x72834  4      
  movl %r12d, %esi                       #  1366  0x72838  3      
  movl %r14d, %edi                       #  1367  0x7283b  3      
  nop                                    #  1368  0x7283e  1      
  nop                                    #  1369  0x7283f  1      
  callq .__sprint_r                      #  1370  0x72840  5      
  testl %eax, %eax                       #  1371  0x72845  2      
  jne .L_72d20                           #  1372  0x72847  6      
  subl $0x10, %ebx                       #  1373  0x7284d  3      
  leal 0x1d0(%rsp), %eax                 #  1374  0x72850  7      
  cmpl $0x10, %ebx                       #  1375  0x72857  3      
  jg .L_730e0                            #  1376  0x7285a  6      
  nop                                    #  1377  0x72860  1      
.L_73160:                                #        0x72861  0      
  movq %r13, %r12                        #  1378  0x72861  3      
  movl 0xd8(%rsp), %r13d                 #  1379  0x72864  8      
  movl %ebx, %ecx                        #  1380  0x7286c  2      
  movq %rax, %rbx                        #  1381  0x7286e  3      
  nop                                    #  1382  0x72871  1      
  nop                                    #  1383  0x72872  1      
.L_73180:                                #        0x72873  0      
  movl %ebx, %ebx                        #  1384  0x72873  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1385  0x72875  5      
  movl 0x214(%rsp), %eax                 #  1386  0x7287a  7      
  addl %ecx, 0x218(%rsp)                 #  1387  0x72881  7      
  movl %ebx, %ebx                        #  1388  0x72888  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1389  0x7288a  8      
  nop                                    #  1390  0x72892  1      
  addl $0x1, %eax                        #  1391  0x72893  3      
  cmpl $0x7, %eax                        #  1392  0x72896  3      
  movl %eax, 0x214(%rsp)                 #  1393  0x72899  7      
  jg .L_744a0                            #  1394  0x728a0  6      
  addl $0x8, %ebx                        #  1395  0x728a6  3      
  jmpq .L_719e0                          #  1396  0x728a9  5      
  nop                                    #  1397  0x728ae  1      
.L_731c0:                                #        0x728af  0      
  cmpl $0x1, 0x10c(%rsp)                 #  1398  0x728af  8      
  jle .L_74040                           #  1399  0x728b7  6      
  nop                                    #  1400  0x728bd  1      
  nop                                    #  1401  0x728be  1      
.L_731e0:                                #        0x728bf  0      
  movl %ebx, %ebx                        #  1402  0x728bf  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1403  0x728c1  9      
  movl 0x214(%rsp), %eax                 #  1404  0x728ca  7      
  movl 0xa8(%rsp), %ecx                  #  1405  0x728d1  7      
  nop                                    #  1406  0x728d8  1      
  addl $0x1, 0x218(%rsp)                 #  1407  0x728d9  8      
  addl $0x1, %eax                        #  1408  0x728e1  3      
  cmpl $0x7, %eax                        #  1409  0x728e4  3      
  movl %ebx, %ebx                        #  1410  0x728e7  2      
  movl %ecx, (%r15,%rbx,1)               #  1411  0x728e9  4      
  movl %eax, 0x214(%rsp)                 #  1412  0x728ed  7      
  nop                                    #  1413  0x728f4  1      
  jg .L_740a0                            #  1414  0x728f5  6      
  leal 0x8(%rbx), %eax                   #  1415  0x728fb  3      
  nop                                    #  1416  0x728fe  1      
  nop                                    #  1417  0x728ff  1      
.L_73240:                                #        0x72900  0      
  movl 0x124(%rsp), %esi                 #  1418  0x72900  7      
  movl 0x110(%rsp), %ebx                 #  1419  0x72907  7      
  movl %eax, %eax                        #  1420  0x7290e  2      
  movl %esi, 0x4(%r15,%rax,1)            #  1421  0x72910  5      
  movl 0x214(%rsp), %edx                 #  1422  0x72915  7      
  nop                                    #  1423  0x7291c  1      
  addl %esi, 0x218(%rsp)                 #  1424  0x7291d  7      
  movl %eax, %eax                        #  1425  0x72924  2      
  movl %ebx, (%r15,%rax,1)               #  1426  0x72926  4      
  addl $0x1, %edx                        #  1427  0x7292a  3      
  cmpl $0x7, %edx                        #  1428  0x7292d  3      
  movl %edx, 0x214(%rsp)                 #  1429  0x72930  7      
  jg .L_740e0                            #  1430  0x72937  6      
  addl $0x8, %eax                        #  1431  0x7293d  3      
  nop                                    #  1432  0x72940  1      
  nop                                    #  1433  0x72941  1      
.L_732a0:                                #        0x72942  0      
  movsd 0x128(%rsp), %xmm0               #  1434  0x72942  9      
  ucomisd 0xffb15cd(%rip), %xmm0         #  1435  0x7294b  8      
  jp .L_732c0                            #  1436  0x72953  6      
  je .L_73900                            #  1437  0x72959  6      
  nop                                    #  1438  0x7295f  1      
.L_732c0:                                #        0x72960  0      
  movl 0xa8(%rsp), %edx                  #  1439  0x72960  7      
  movl 0x10c(%rsp), %ecx                 #  1440  0x72967  7      
  addl $0x1, %edx                        #  1441  0x7296e  3      
  movl %eax, %eax                        #  1442  0x72971  2      
  movl %edx, (%r15,%rax,1)               #  1443  0x72973  4      
  movl 0x10c(%rsp), %edx                 #  1444  0x72977  7      
  xchgw %ax, %ax                         #  1445  0x7297e  3      
  subl $0x1, %edx                        #  1446  0x72981  3      
  movl %eax, %eax                        #  1447  0x72984  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1448  0x72986  5      
  movl 0x218(%rsp), %edx                 #  1449  0x7298b  7      
  leal -0x1(%rcx,%rdx,1), %edx           #  1450  0x72992  4      
  movl %edx, 0x218(%rsp)                 #  1451  0x72996  7      
  nop                                    #  1452  0x7299d  1      
.L_73300:                                #        0x7299e  0      
  movl 0x214(%rsp), %edx                 #  1453  0x7299e  7      
  addl $0x1, %edx                        #  1454  0x729a5  3      
  cmpl $0x7, %edx                        #  1455  0x729a8  3      
  movl %edx, 0x214(%rsp)                 #  1456  0x729ab  7      
  jg .L_744e0                            #  1457  0x729b2  6      
  addl $0x8, %eax                        #  1458  0x729b8  3      
  nop                                    #  1459  0x729bb  1      
.L_73320:                                #        0x729bc  0      
  leal 0x260(%rsp), %edx                 #  1460  0x729bc  7      
  movl %eax, %eax                        #  1461  0x729c3  2      
  movl %edx, (%r15,%rax,1)               #  1462  0x729c5  4      
  movl 0x134(%rsp), %edx                 #  1463  0x729c9  7      
  movl %eax, %eax                        #  1464  0x729d0  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1465  0x729d2  5      
  nop                                    #  1466  0x729d7  1      
  addl %edx, 0x218(%rsp)                 #  1467  0x729d8  7      
  nop                                    #  1468  0x729df  1      
  nop                                    #  1469  0x729e0  1      
.L_73360:                                #        0x729e1  0      
  movl 0x214(%rsp), %edx                 #  1470  0x729e1  7      
  leal 0x8(%rax), %ebx                   #  1471  0x729e8  3      
  addl $0x1, %edx                        #  1472  0x729eb  3      
  cmpl $0x7, %edx                        #  1473  0x729ee  3      
  movl %edx, 0x214(%rsp)                 #  1474  0x729f1  7      
  jle .L_71ba0                           #  1475  0x729f8  6      
  nop                                    #  1476  0x729fe  1      
.L_73380:                                #        0x729ff  0      
  movl 0xb8(%rsp), %esi                  #  1477  0x729ff  7      
  leal 0x210(%rsp), %edx                 #  1478  0x72a06  7      
  movl %r14d, %edi                       #  1479  0x72a0d  3      
  nop                                    #  1480  0x72a10  1      
  callq .__sprint_r                      #  1481  0x72a11  5      
  testl %eax, %eax                       #  1482  0x72a16  2      
  jne .L_72d20                           #  1483  0x72a18  6      
  leal 0x1d0(%rsp), %ebx                 #  1484  0x72a1e  7      
  jmpq .L_71ba0                          #  1485  0x72a25  5      
  nop                                    #  1486  0x72a2a  1      
.L_733c0:                                #        0x72a2b  0      
  movl 0xb8(%rsp), %esi                  #  1487  0x72a2b  7      
  leal 0x210(%rsp), %edx                 #  1488  0x72a32  7      
  movl %r14d, %edi                       #  1489  0x72a39  3      
  nop                                    #  1490  0x72a3c  1      
  callq .__sprint_r                      #  1491  0x72a3d  5      
  testl %eax, %eax                       #  1492  0x72a42  2      
  je .L_71da0                            #  1493  0x72a44  6      
  jmpq .L_72d20                          #  1494  0x72a4a  5      
  nop                                    #  1495  0x72a4f  1      
  nop                                    #  1496  0x72a50  1      
.L_73400:                                #        0x72a51  0      
  movl 0xb8(%rsp), %esi                  #  1497  0x72a51  7      
  leal 0x210(%rsp), %edx                 #  1498  0x72a58  7      
  movl %r14d, %edi                       #  1499  0x72a5f  3      
  nop                                    #  1500  0x72a62  1      
  callq .__sprint_r                      #  1501  0x72a63  5      
  testl %eax, %eax                       #  1502  0x72a68  2      
  jne .L_72d20                           #  1503  0x72a6a  6      
  leal 0x1d0(%rsp), %ebx                 #  1504  0x72a70  7      
  jmpq .L_71b40                          #  1505  0x72a77  5      
  nop                                    #  1506  0x72a7c  1      
.L_73440:                                #        0x72a7d  0      
  movl 0xb8(%rsp), %esi                  #  1507  0x72a7d  7      
  leal 0x210(%rsp), %edx                 #  1508  0x72a84  7      
  movl %r14d, %edi                       #  1509  0x72a8b  3      
  nop                                    #  1510  0x72a8e  1      
  callq .__sprint_r                      #  1511  0x72a8f  5      
  testl %eax, %eax                       #  1512  0x72a94  2      
  jne .L_72d20                           #  1513  0x72a96  6      
  leal 0x1d0(%rsp), %ebx                 #  1514  0x72a9c  7      
  jmpq .L_71960                          #  1515  0x72aa3  5      
  nop                                    #  1516  0x72aa8  1      
.L_73480:                                #        0x72aa9  0      
  movl 0xb8(%rsp), %esi                  #  1517  0x72aa9  7      
  leal 0x210(%rsp), %edx                 #  1518  0x72ab0  7      
  movl %r14d, %edi                       #  1519  0x72ab7  3      
  nop                                    #  1520  0x72aba  1      
  callq .__sprint_r                      #  1521  0x72abb  5      
  testl %eax, %eax                       #  1522  0x72ac0  2      
  jne .L_72d20                           #  1523  0x72ac2  6      
  leal 0x1d0(%rsp), %ebx                 #  1524  0x72ac8  7      
  jmpq .L_719c0                          #  1525  0x72acf  5      
  nop                                    #  1526  0x72ad4  1      
.L_734c0:                                #        0x72ad5  0      
  movl 0xb8(%rsp), %edi                  #  1527  0x72ad5  7      
  addl $0x5c, %edi                       #  1528  0x72adc  3      
  xchgw %ax, %ax                         #  1529  0x72adf  3      
  nop                                    #  1530  0x72ae2  1      
  callq .__local_lock_release_recursive  #  1531  0x72ae3  5      
  movq 0xb8(%rsp), %rsi                  #  1532  0x72ae8  8      
  movl %esi, %esi                        #  1533  0x72af0  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1534  0x72af2  6      
  jmpq .L_72d80                          #  1535  0x72af8  5      
  nop                                    #  1536  0x72afd  1      
.L_73500:                                #        0x72afe  0      
  movq 0xb8(%rsp), %rcx                  #  1537  0x72afe  8      
  movl %ecx, %ecx                        #  1538  0x72b06  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1539  0x72b08  6      
  jmpq .L_72d60                          #  1540  0x72b0e  5      
  nop                                    #  1541  0x72b13  1      
.L_73520:                                #        0x72b14  0      
  movl 0x27c(%rsp), %r8d                 #  1542  0x72b14  8      
  testl %r8d, %r8d                       #  1543  0x72b1c  3      
  jle .L_754a0                           #  1544  0x72b1f  6      
  movl 0x10c(%rsp), %eax                 #  1545  0x72b25  7      
  addl 0xa8(%rsp), %eax                  #  1546  0x72b2c  7      
  nop                                    #  1547  0x72b33  1      
  movl %eax, %r8d                        #  1548  0x72b34  3      
  subl 0xa8(%rsp), %r8d                  #  1549  0x72b37  8      
  movq %rax, 0xd8(%rsp)                  #  1550  0x72b3f  8      
  cmpl 0x11c(%rsp), %r8d                 #  1551  0x72b47  8      
  nop                                    #  1552  0x72b4f  1      
  movl %eax, 0xc4(%rsp)                  #  1553  0x72b50  7      
  cmovgl 0x11c(%rsp), %r8d               #  1554  0x72b57  9      
  testl %r8d, %r8d                       #  1555  0x72b60  3      
  jle .L_735c0                           #  1556  0x72b63  6      
  movl %ebx, %ebx                        #  1557  0x72b69  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1558  0x72b6b  5      
  nop                                    #  1559  0x72b70  1      
  movl 0x214(%rsp), %eax                 #  1560  0x72b71  7      
  movl 0xa8(%rsp), %edx                  #  1561  0x72b78  7      
  addl %r8d, 0x218(%rsp)                 #  1562  0x72b7f  8      
  addl $0x1, %eax                        #  1563  0x72b87  3      
  cmpl $0x7, %eax                        #  1564  0x72b8a  3      
  nop                                    #  1565  0x72b8d  1      
  movl %ebx, %ebx                        #  1566  0x72b8e  2      
  movl %edx, (%r15,%rbx,1)               #  1567  0x72b90  4      
  movl %eax, 0x214(%rsp)                 #  1568  0x72b94  7      
  jg .L_75920                            #  1569  0x72b9b  6      
  addl $0x8, %ebx                        #  1570  0x72ba1  3      
  nop                                    #  1571  0x72ba4  1      
.L_735c0:                                #        0x72ba5  0      
  movl 0x11c(%rsp), %esi                 #  1572  0x72ba5  7      
  xorl %ecx, %ecx                        #  1573  0x72bac  2      
  testl %r8d, %r8d                       #  1574  0x72bae  3      
  cmovnsl %r8d, %ecx                     #  1575  0x72bb1  4      
  subl %ecx, %esi                        #  1576  0x72bb5  2      
  testl %esi, %esi                       #  1577  0x72bb7  2      
  movl %esi, %ecx                        #  1578  0x72bb9  2      
  jle .L_73aa0                           #  1579  0x72bbb  6      
  cmpl $0x10, %esi                       #  1580  0x72bc1  3      
  nop                                    #  1581  0x72bc4  1      
  jle .L_74dc0                           #  1582  0x72bc5  6      
  leal 0x210(%rsp), %eax                 #  1583  0x72bcb  7      
  movl %r13d, 0xf4(%rsp)                 #  1584  0x72bd2  8      
  movq %r12, %r13                        #  1585  0x72bda  3      
  movq 0xb8(%rsp), %r12                  #  1586  0x72bdd  8      
  movq %rax, 0x28(%rsp)                  #  1587  0x72be5  5      
  movq %rbx, %rax                        #  1588  0x72bea  3      
  movl %esi, %ebx                        #  1589  0x72bed  2      
  jmpq .L_73660                          #  1590  0x72bef  5      
  nop                                    #  1591  0x72bf4  1      
  nop                                    #  1592  0x72bf5  1      
.L_73620:                                #        0x72bf6  0      
  addl $0x8, %eax                        #  1593  0x72bf6  3      
  nop                                    #  1594  0x72bf9  1      
  nop                                    #  1595  0x72bfa  1      
.L_73640:                                #        0x72bfb  0      
  subl $0x10, %ebx                       #  1596  0x72bfb  3      
  cmpl $0x10, %ebx                       #  1597  0x72bfe  3      
  jle .L_74da0                           #  1598  0x72c01  6      
  nop                                    #  1599  0x72c07  1      
  nop                                    #  1600  0x72c08  1      
.L_73660:                                #        0x72c09  0      
  movl %eax, %eax                        #  1601  0x72c09  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1602  0x72c0b  9      
  movl 0x214(%rsp), %edx                 #  1603  0x72c14  7      
  addl $0x10, 0x218(%rsp)                #  1604  0x72c1b  8      
  nop                                    #  1605  0x72c23  1      
  movl %eax, %eax                        #  1606  0x72c24  2      
  movl $0x10024230, (%r15,%rax,1)        #  1607  0x72c26  8      
  addl $0x1, %edx                        #  1608  0x72c2e  3      
  cmpl $0x7, %edx                        #  1609  0x72c31  3      
  movl %edx, 0x214(%rsp)                 #  1610  0x72c34  7      
  jle .L_73620                           #  1611  0x72c3b  6      
  movl 0x28(%rsp), %edx                  #  1612  0x72c41  4      
  movl %r12d, %esi                       #  1613  0x72c45  3      
  movl %r14d, %edi                       #  1614  0x72c48  3      
  nop                                    #  1615  0x72c4b  1      
  nop                                    #  1616  0x72c4c  1      
  callq .__sprint_r                      #  1617  0x72c4d  5      
  testl %eax, %eax                       #  1618  0x72c52  2      
  jne .L_72d20                           #  1619  0x72c54  6      
  leal 0x1d0(%rsp), %eax                 #  1620  0x72c5a  7      
  jmpq .L_73640                          #  1621  0x72c61  5      
  nop                                    #  1622  0x72c66  1      
.L_736e0:                                #        0x72c67  0      
  movq 0x100(%rsp), %rsi                 #  1623  0x72c67  8      
  movq %rsi, 0xa8(%rsp)                  #  1624  0x72c6f  8      
  movq 0x138(%rsp), %rsi                 #  1625  0x72c77  8      
  movq 0xa8(%rsp), %rax                  #  1626  0x72c7f  8      
.L_73700:                                #        0x72c87  0      
  movl %ecx, %edx                        #  1627  0x72c87  2      
  shrq $0x4, %rcx                        #  1628  0x72c89  4      
  subl $0x1, %eax                        #  1629  0x72c8d  3      
  andl $0xf, %edx                        #  1630  0x72c90  3      
  addl %esi, %edx                        #  1631  0x72c93  2      
  testq %rcx, %rcx                       #  1632  0x72c95  3      
  movl %edx, %edx                        #  1633  0x72c98  2      
  movzbl (%r15,%rdx,1), %edx             #  1634  0x72c9a  5      
  movl %eax, %eax                        #  1635  0x72c9f  2      
  movb %dl, (%r15,%rax,1)                #  1636  0x72ca1  4      
  xchgw %ax, %ax                         #  1637  0x72ca5  3      
  jne .L_73700                           #  1638  0x72ca8  6      
  movl 0x100(%rsp), %edx                 #  1639  0x72cae  7      
  movq %rax, 0xa8(%rsp)                  #  1640  0x72cb5  8      
  movq 0xe8(%rsp), %rsi                  #  1641  0x72cbd  8      
  subl %eax, %edx                        #  1642  0x72cc5  2      
  nop                                    #  1643  0x72cc7  1      
  movl %edx, 0xc4(%rsp)                  #  1644  0x72cc8  7      
  jmpq .L_72280                          #  1645  0x72ccf  5      
  nop                                    #  1646  0x72cd4  1      
  nop                                    #  1647  0x72cd5  1      
.L_73760:                                #        0x72cd6  0      
  cmpq $0x9, %rcx                        #  1648  0x72cd6  4      
  ja .L_74120                            #  1649  0x72cda  6      
  movq 0x148(%rsp), %rsi                 #  1650  0x72ce0  8      
  addl $0x30, %ecx                       #  1651  0x72ce8  3      
  movq %rsi, 0xa8(%rsp)                  #  1652  0x72ceb  8      
  nop                                    #  1653  0x72cf3  1      
  movl %esi, %esi                        #  1654  0x72cf4  2      
  movb %cl, (%r15,%rsi,1)                #  1655  0x72cf6  4      
  movl $0x1, 0xc4(%rsp)                  #  1656  0x72cfa  11     
  movq 0xe8(%rsp), %rsi                  #  1657  0x72d05  8      
  jmpq .L_72280                          #  1658  0x72d0d  5      
  xchgw %ax, %ax                         #  1659  0x72d12  3      
.L_737a0:                                #        0x72d15  0      
  movl 0xb8(%rsp), %esi                  #  1660  0x72d15  7      
  leal 0x210(%rsp), %edx                 #  1661  0x72d1c  7      
  movl %r14d, %edi                       #  1662  0x72d23  3      
  nop                                    #  1663  0x72d26  1      
  callq .__sprint_r                      #  1664  0x72d27  5      
  testl %eax, %eax                       #  1665  0x72d2c  2      
  jne .L_72d20                           #  1666  0x72d2e  6      
  movzbl 0x28f(%rsp), %eax               #  1667  0x72d34  8      
  leal 0x1d0(%rsp), %ebx                 #  1668  0x72d3c  7      
  jmpq .L_71900                          #  1669  0x72d43  5      
  nop                                    #  1670  0x72d48  1      
.L_737e0:                                #        0x72d49  0      
  testb $0x10, %r13b                     #  1671  0x72d49  4      
  je .L_74600                            #  1672  0x72d4d  6      
  movq 0xc8(%rsp), %rdx                  #  1673  0x72d53  8      
  movl %edx, %edx                        #  1674  0x72d5b  2      
  movl (%r15,%rdx,1), %eax               #  1675  0x72d5d  4      
  cmpl $0x2f, %eax                       #  1676  0x72d61  3      
  nop                                    #  1677  0x72d64  1      
  ja .L_75140                            #  1678  0x72d65  6      
  movq %rdx, %rcx                        #  1679  0x72d6b  3      
  movl %edx, %edx                        #  1680  0x72d6e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1681  0x72d70  5      
  addl %eax, %edx                        #  1682  0x72d75  2      
  addl $0x8, %eax                        #  1683  0x72d77  3      
  movl %ecx, %ecx                        #  1684  0x72d7a  2      
  movl %eax, (%r15,%rcx,1)               #  1685  0x72d7c  4      
  nop                                    #  1686  0x72d80  1      
.L_73820:                                #        0x72d81  0      
  movl %edx, %edx                        #  1687  0x72d81  2      
  movl (%r15,%rdx,1), %ecx               #  1688  0x72d83  4      
  movl $0x1, %eax                        #  1689  0x72d87  5      
  testq %rcx, %rcx                       #  1690  0x72d8c  3      
  setne %sil                             #  1691  0x72d8f  4      
  jmpq .L_721a0                          #  1692  0x72d93  5      
  nop                                    #  1693  0x72d98  1      
.L_73840:                                #        0x72d99  0      
  testb $0x10, %r13b                     #  1694  0x72d99  4      
  je .L_747c0                            #  1695  0x72d9d  6      
  movq 0xc8(%rsp), %rdx                  #  1696  0x72da3  8      
  movl %edx, %edx                        #  1697  0x72dab  2      
  movl (%r15,%rdx,1), %eax               #  1698  0x72dad  4      
  cmpl $0x2f, %eax                       #  1699  0x72db1  3      
  nop                                    #  1700  0x72db4  1      
  ja .L_75120                            #  1701  0x72db5  6      
  movq %rdx, %rcx                        #  1702  0x72dbb  3      
  movl %edx, %edx                        #  1703  0x72dbe  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1704  0x72dc0  5      
  addl %eax, %edx                        #  1705  0x72dc5  2      
  addl $0x8, %eax                        #  1706  0x72dc7  3      
  movl %ecx, %ecx                        #  1707  0x72dca  2      
  movl %eax, (%r15,%rcx,1)               #  1708  0x72dcc  4      
  nop                                    #  1709  0x72dd0  1      
.L_73880:                                #        0x72dd1  0      
  movl %edx, %edx                        #  1710  0x72dd1  2      
  movslq (%r15,%rdx,1), %rcx             #  1711  0x72dd3  4      
  jmpq .L_72460                          #  1712  0x72dd7  5      
  nop                                    #  1713  0x72ddc  1      
  nop                                    #  1714  0x72ddd  1      
.L_738a0:                                #        0x72dde  0      
  testb $0x10, %r13b                     #  1715  0x72dde  4      
  je .L_74880                            #  1716  0x72de2  6      
  movq 0xc8(%rsp), %rdx                  #  1717  0x72de8  8      
  movl %edx, %edx                        #  1718  0x72df0  2      
  movl (%r15,%rdx,1), %eax               #  1719  0x72df2  4      
  cmpl $0x2f, %eax                       #  1720  0x72df6  3      
  nop                                    #  1721  0x72df9  1      
  ja .L_75360                            #  1722  0x72dfa  6      
  movq %rdx, %rcx                        #  1723  0x72e00  3      
  movl %edx, %edx                        #  1724  0x72e03  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1725  0x72e05  5      
  addl %eax, %edx                        #  1726  0x72e0a  2      
  addl $0x8, %eax                        #  1727  0x72e0c  3      
  movl %ecx, %ecx                        #  1728  0x72e0f  2      
  movl %eax, (%r15,%rcx,1)               #  1729  0x72e11  4      
  nop                                    #  1730  0x72e15  1      
.L_738e0:                                #        0x72e16  0      
  movl %edx, %edx                        #  1731  0x72e16  2      
  movl (%r15,%rdx,1), %ecx               #  1732  0x72e18  4      
  jmpq .L_72820                          #  1733  0x72e1c  5      
  nop                                    #  1734  0x72e21  1      
  nop                                    #  1735  0x72e22  1      
.L_73900:                                #        0x72e23  0      
  movl 0x10c(%rsp), %ebx                 #  1736  0x72e23  7      
  subl $0x1, %ebx                        #  1737  0x72e2a  3      
  testl %ebx, %ebx                       #  1738  0x72e2d  2      
  jle .L_73320                           #  1739  0x72e2f  6      
  cmpl $0x10, %ebx                       #  1740  0x72e35  3      
  jle .L_742e0                           #  1741  0x72e38  6      
  nop                                    #  1742  0x72e3e  1      
  leal 0x210(%rsp), %esi                 #  1743  0x72e3f  7      
  movl %r13d, 0xa8(%rsp)                 #  1744  0x72e46  8      
  movq %r12, %r13                        #  1745  0x72e4e  3      
  movq 0xb8(%rsp), %r12                  #  1746  0x72e51  8      
  movq %rsi, 0x10(%rsp)                  #  1747  0x72e59  5      
  nop                                    #  1748  0x72e5e  1      
  jmpq .L_739a0                          #  1749  0x72e5f  5      
  nop                                    #  1750  0x72e64  1      
  nop                                    #  1751  0x72e65  1      
.L_73960:                                #        0x72e66  0      
  addl $0x8, %eax                        #  1752  0x72e66  3      
  nop                                    #  1753  0x72e69  1      
  nop                                    #  1754  0x72e6a  1      
.L_73980:                                #        0x72e6b  0      
  subl $0x10, %ebx                       #  1755  0x72e6b  3      
  cmpl $0x10, %ebx                       #  1756  0x72e6e  3      
  jle .L_742c0                           #  1757  0x72e71  6      
  nop                                    #  1758  0x72e77  1      
  nop                                    #  1759  0x72e78  1      
.L_739a0:                                #        0x72e79  0      
  movl %eax, %eax                        #  1760  0x72e79  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1761  0x72e7b  9      
  movl 0x214(%rsp), %edx                 #  1762  0x72e84  7      
  addl $0x10, 0x218(%rsp)                #  1763  0x72e8b  8      
  nop                                    #  1764  0x72e93  1      
  movl %eax, %eax                        #  1765  0x72e94  2      
  movl $0x10024230, (%r15,%rax,1)        #  1766  0x72e96  8      
  addl $0x1, %edx                        #  1767  0x72e9e  3      
  cmpl $0x7, %edx                        #  1768  0x72ea1  3      
  movl %edx, 0x214(%rsp)                 #  1769  0x72ea4  7      
  jle .L_73960                           #  1770  0x72eab  6      
  movl 0x10(%rsp), %edx                  #  1771  0x72eb1  4      
  movl %r12d, %esi                       #  1772  0x72eb5  3      
  movl %r14d, %edi                       #  1773  0x72eb8  3      
  nop                                    #  1774  0x72ebb  1      
  nop                                    #  1775  0x72ebc  1      
  callq .__sprint_r                      #  1776  0x72ebd  5      
  testl %eax, %eax                       #  1777  0x72ec2  2      
  jne .L_72d20                           #  1778  0x72ec4  6      
  leal 0x1d0(%rsp), %eax                 #  1779  0x72eca  7      
  jmpq .L_73980                          #  1780  0x72ed1  5      
  nop                                    #  1781  0x72ed6  1      
.L_73a20:                                #        0x72ed7  0      
  movq %r13, %r12                        #  1782  0x72ed7  3      
  movl 0xa8(%rsp), %r13d                 #  1783  0x72eda  8      
  movl %ebx, %ecx                        #  1784  0x72ee2  2      
  movq %rax, %rbx                        #  1785  0x72ee4  3      
  nop                                    #  1786  0x72ee7  1      
  nop                                    #  1787  0x72ee8  1      
.L_73a40:                                #        0x72ee9  0      
  movl %ebx, %ebx                        #  1788  0x72ee9  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1789  0x72eeb  5      
  movl %ebx, %ebx                        #  1790  0x72ef0  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1791  0x72ef2  8      
  addl %ecx, 0x218(%rsp)                 #  1792  0x72efa  7      
  jmpq .L_71b80                          #  1793  0x72f01  5      
  nop                                    #  1794  0x72f06  1      
.L_73a60:                                #        0x72f07  0      
  movl 0xb8(%rsp), %esi                  #  1795  0x72f07  7      
  leal 0x210(%rsp), %edx                 #  1796  0x72f0e  7      
  movl %r14d, %edi                       #  1797  0x72f15  3      
  nop                                    #  1798  0x72f18  1      
  callq .__sprint_r                      #  1799  0x72f19  5      
  testl %eax, %eax                       #  1800  0x72f1e  2      
  jne .L_72d20                           #  1801  0x72f20  6      
  leal 0x1d0(%rsp), %ebx                 #  1802  0x72f26  7      
  xchgw %ax, %ax                         #  1803  0x72f2d  3      
  nop                                    #  1804  0x72f30  1      
.L_73aa0:                                #        0x72f31  0      
  movl 0x11c(%rsp), %edx                 #  1805  0x72f31  7      
  addl 0xa8(%rsp), %edx                  #  1806  0x72f38  7      
  testl $0x400, %r13d                    #  1807  0x72f3f  7      
  movq %rdx, 0xa8(%rsp)                  #  1808  0x72f46  8      
  nop                                    #  1809  0x72f4e  1      
  je .L_73dc0                            #  1810  0x72f4f  6      
  movl 0x120(%rsp), %esi                 #  1811  0x72f55  7      
  testl %esi, %esi                       #  1812  0x72f5c  2      
  jle .L_75440                           #  1813  0x72f5e  6      
  nop                                    #  1814  0x72f64  1      
.L_73ae0:                                #        0x72f65  0      
  leal 0x210(%rsp), %ecx                 #  1815  0x72f65  7      
  movl %r13d, 0xf4(%rsp)                 #  1816  0x72f6c  8      
  movq %r12, %r13                        #  1817  0x72f74  3      
  movq 0xb8(%rsp), %r12                  #  1818  0x72f77  8      
  movq %rbx, %rax                        #  1819  0x72f7f  3      
  nop                                    #  1820  0x72f82  1      
  movq %rcx, 0x20(%rsp)                  #  1821  0x72f83  5      
  nop                                    #  1822  0x72f88  1      
  nop                                    #  1823  0x72f89  1      
.L_73b20:                                #        0x72f8a  0      
  movl 0x108(%rsp), %ebx                 #  1824  0x72f8a  7      
  testl %ebx, %ebx                       #  1825  0x72f91  2      
  je .L_74700                            #  1826  0x72f93  6      
  subl $0x1, 0x108(%rsp)                 #  1827  0x72f99  8      
  nop                                    #  1828  0x72fa1  1      
.L_73b40:                                #        0x72fa2  0      
  movl 0x130(%rsp), %edx                 #  1829  0x72fa2  7      
  movl 0x140(%rsp), %esi                 #  1830  0x72fa9  7      
  movl %eax, %eax                        #  1831  0x72fb0  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1832  0x72fb2  5      
  addl %edx, 0x218(%rsp)                 #  1833  0x72fb7  7      
  nop                                    #  1834  0x72fbe  1      
  movl 0x214(%rsp), %edx                 #  1835  0x72fbf  7      
  movl %eax, %eax                        #  1836  0x72fc6  2      
  movl %esi, (%r15,%rax,1)               #  1837  0x72fc8  4      
  addl $0x1, %edx                        #  1838  0x72fcc  3      
  cmpl $0x7, %edx                        #  1839  0x72fcf  3      
  movl %edx, 0x214(%rsp)                 #  1840  0x72fd2  7      
  jg .L_74520                            #  1841  0x72fd9  6      
  addl $0x8, %eax                        #  1842  0x72fdf  3      
  nop                                    #  1843  0x72fe2  1      
  nop                                    #  1844  0x72fe3  1      
.L_73ba0:                                #        0x72fe4  0      
  movq 0xe8(%rsp), %rbx                  #  1845  0x72fe4  8      
  movl 0xc4(%rsp), %ecx                  #  1846  0x72fec  7      
  subl 0xa8(%rsp), %ecx                  #  1847  0x72ff3  7      
  movl %ebx, %ebx                        #  1848  0x72ffa  2      
  movsbl (%r15,%rbx,1), %edx             #  1849  0x72ffc  5      
  cmpl %ecx, %edx                        #  1850  0x73001  2      
  nop                                    #  1851  0x73003  1      
  cmovlel %edx, %ecx                     #  1852  0x73004  3      
  testl %ecx, %ecx                       #  1853  0x73007  2      
  jle .L_73c20                           #  1854  0x73009  6      
  movl %eax, %eax                        #  1855  0x7300f  2      
  movl %ecx, 0x4(%r15,%rax,1)            #  1856  0x73011  5      
  movl 0x214(%rsp), %edx                 #  1857  0x73016  7      
  movl 0xa8(%rsp), %esi                  #  1858  0x7301d  7      
  nop                                    #  1859  0x73024  1      
  addl %ecx, 0x218(%rsp)                 #  1860  0x73025  7      
  addl $0x1, %edx                        #  1861  0x7302c  3      
  cmpl $0x7, %edx                        #  1862  0x7302f  3      
  movl %eax, %eax                        #  1863  0x73032  2      
  movl %esi, (%r15,%rax,1)               #  1864  0x73034  4      
  movl %edx, 0x214(%rsp)                 #  1865  0x73038  7      
  jg .L_75020                            #  1866  0x7303f  6      
  movl %ebx, %ebx                        #  1867  0x73045  2      
  movsbl (%r15,%rbx,1), %edx             #  1868  0x73047  5      
  addl $0x8, %eax                        #  1869  0x7304c  3      
  nop                                    #  1870  0x7304f  1      
  nop                                    #  1871  0x73050  1      
.L_73c20:                                #        0x73051  0      
  testl %ecx, %ecx                       #  1872  0x73051  2      
  movl $0x0, %ebx                        #  1873  0x73053  5      
  cmovsl %ebx, %ecx                      #  1874  0x73058  3      
  movl %edx, %ebx                        #  1875  0x7305b  2      
  subl %ecx, %ebx                        #  1876  0x7305d  2      
  testl %ebx, %ebx                       #  1877  0x7305f  2      
  jg .L_73c80                            #  1878  0x73061  6      
  jmpq .L_73d40                          #  1879  0x73067  5      
  nop                                    #  1880  0x7306c  1      
.L_73c40:                                #        0x7306d  0      
  addl $0x8, %eax                        #  1881  0x7306d  3      
  nop                                    #  1882  0x73070  1      
  nop                                    #  1883  0x73071  1      
.L_73c60:                                #        0x73072  0      
  subl $0x10, %ebx                       #  1884  0x73072  3      
  nop                                    #  1885  0x73075  1      
  nop                                    #  1886  0x73076  1      
.L_73c80:                                #        0x73077  0      
  cmpl $0x10, %ebx                       #  1887  0x73077  3      
  jle .L_73fe0                           #  1888  0x7307a  6      
  movl %eax, %eax                        #  1889  0x73080  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1890  0x73082  9      
  movl 0x214(%rsp), %edx                 #  1891  0x7308b  7      
  nop                                    #  1892  0x73092  1      
  addl $0x10, 0x218(%rsp)                #  1893  0x73093  8      
  movl %eax, %eax                        #  1894  0x7309b  2      
  movl $0x10024230, (%r15,%rax,1)        #  1895  0x7309d  8      
  addl $0x1, %edx                        #  1896  0x730a5  3      
  cmpl $0x7, %edx                        #  1897  0x730a8  3      
  movl %edx, 0x214(%rsp)                 #  1898  0x730ab  7      
  nop                                    #  1899  0x730b2  1      
  jle .L_73c40                           #  1900  0x730b3  6      
  movl 0x20(%rsp), %edx                  #  1901  0x730b9  4      
  movl %r12d, %esi                       #  1902  0x730bd  3      
  movl %r14d, %edi                       #  1903  0x730c0  3      
  nop                                    #  1904  0x730c3  1      
  callq .__sprint_r                      #  1905  0x730c4  5      
  testl %eax, %eax                       #  1906  0x730c9  2      
  jne .L_72d20                           #  1907  0x730cb  6      
  leal 0x1d0(%rsp), %eax                 #  1908  0x730d1  7      
  jmpq .L_73c60                          #  1909  0x730d8  5      
  nop                                    #  1910  0x730dd  1      
.L_73d00:                                #        0x730de  0      
  movl 0x20(%rsp), %edx                  #  1911  0x730de  4      
  movl %r12d, %esi                       #  1912  0x730e2  3      
  movl %r14d, %edi                       #  1913  0x730e5  3      
  xchgw %ax, %ax                         #  1914  0x730e8  3      
  nop                                    #  1915  0x730eb  1      
  callq .__sprint_r                      #  1916  0x730ec  5      
  testl %eax, %eax                       #  1917  0x730f1  2      
  jne .L_72d20                           #  1918  0x730f3  6      
  movq 0xe8(%rsp), %rcx                  #  1919  0x730f9  8      
  leal 0x1d0(%rsp), %eax                 #  1920  0x73101  7      
  movl %ecx, %ecx                        #  1921  0x73108  2      
  movsbl (%r15,%rcx,1), %edx             #  1922  0x7310a  5      
  xchgw %ax, %ax                         #  1923  0x7310f  3      
.L_73d40:                                #        0x73112  0      
  addl 0xa8(%rsp), %edx                  #  1924  0x73112  7      
  movl 0x108(%rsp), %ecx                 #  1925  0x73119  7      
  testl %ecx, %ecx                       #  1926  0x73120  2      
  movq %rdx, 0xa8(%rsp)                  #  1927  0x73122  8      
  jg .L_73b20                            #  1928  0x7312a  6      
  xchgw %ax, %ax                         #  1929  0x73130  3      
  movl 0x120(%rsp), %edx                 #  1930  0x73133  7      
  testl %edx, %edx                       #  1931  0x7313a  2      
  jg .L_73b20                            #  1932  0x7313c  6      
  movq %r13, %r12                        #  1933  0x73142  3      
  movl 0xf4(%rsp), %r13d                 #  1934  0x73145  8      
  movq %rax, %rbx                        #  1935  0x7314d  3      
  nop                                    #  1936  0x73150  1      
.L_73d80:                                #        0x73151  0      
  movl 0xd8(%rsp), %esi                  #  1937  0x73151  7      
  cmpl %esi, 0xa8(%rsp)                  #  1938  0x73158  7      
  movq 0xd8(%rsp), %rax                  #  1939  0x7315f  8      
  cmovbeq 0xa8(%rsp), %rax               #  1940  0x73167  9      
  nop                                    #  1941  0x73170  1      
  movq %rax, 0xa8(%rsp)                  #  1942  0x73171  8      
  nop                                    #  1943  0x73179  1      
  nop                                    #  1944  0x7317a  1      
.L_73dc0:                                #        0x7317b  0      
  movl 0x27c(%rsp), %ecx                 #  1945  0x7317b  7      
  cmpl 0x10c(%rsp), %ecx                 #  1946  0x73182  7      
  jge .L_753c0                           #  1947  0x73189  6      
  nop                                    #  1948  0x7318f  1      
.L_73de0:                                #        0x73190  0      
  movl 0x124(%rsp), %ecx                 #  1949  0x73190  7      
  movl 0x110(%rsp), %edx                 #  1950  0x73197  7      
  movl %ebx, %ebx                        #  1951  0x7319e  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1952  0x731a0  5      
  movl 0x214(%rsp), %eax                 #  1953  0x731a5  7      
  nop                                    #  1954  0x731ac  1      
  addl %ecx, 0x218(%rsp)                 #  1955  0x731ad  7      
  movl %ebx, %ebx                        #  1956  0x731b4  2      
  movl %edx, (%r15,%rbx,1)               #  1957  0x731b6  4      
  addl $0x1, %eax                        #  1958  0x731ba  3      
  cmpl $0x7, %eax                        #  1959  0x731bd  3      
  movl %eax, 0x214(%rsp)                 #  1960  0x731c0  7      
  jg .L_76200                            #  1961  0x731c7  6      
  movl 0x27c(%rsp), %ecx                 #  1962  0x731cd  7      
  addl $0x8, %ebx                        #  1963  0x731d4  3      
  nop                                    #  1964  0x731d7  1      
  nop                                    #  1965  0x731d8  1      
.L_73e40:                                #        0x731d9  0      
  movl 0xc4(%rsp), %r8d                  #  1966  0x731d9  8      
  movl 0x10c(%rsp), %esi                 #  1967  0x731e1  7      
  subl 0xa8(%rsp), %r8d                  #  1968  0x731e8  8      
  subl %ecx, %esi                        #  1969  0x731f0  2      
  movl %esi, %ecx                        #  1970  0x731f2  2      
  cmpl %r8d, %esi                        #  1971  0x731f4  3      
  xchgw %ax, %ax                         #  1972  0x731f7  3      
  cmovlel %esi, %r8d                     #  1973  0x731fa  4      
  testl %r8d, %r8d                       #  1974  0x731fe  3      
  jle .L_73ec0                           #  1975  0x73201  6      
  movl 0xa8(%rsp), %eax                  #  1976  0x73207  7      
  movl %ebx, %ebx                        #  1977  0x7320e  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1978  0x73210  5      
  addl %r8d, 0x218(%rsp)                 #  1979  0x73215  8      
  nop                                    #  1980  0x7321d  1      
  movl %ebx, %ebx                        #  1981  0x7321e  2      
  movl %eax, (%r15,%rbx,1)               #  1982  0x73220  4      
  movl 0x214(%rsp), %eax                 #  1983  0x73224  7      
  addl $0x1, %eax                        #  1984  0x7322b  3      
  cmpl $0x7, %eax                        #  1985  0x7322e  3      
  movl %eax, 0x214(%rsp)                 #  1986  0x73231  7      
  jg .L_76240                            #  1987  0x73238  6      
  movl 0x10c(%rsp), %ecx                 #  1988  0x7323e  7      
  subl 0x27c(%rsp), %ecx                 #  1989  0x73245  7      
  addl $0x8, %ebx                        #  1990  0x7324c  3      
  nop                                    #  1991  0x7324f  1      
.L_73ec0:                                #        0x73250  0      
  xorl %eax, %eax                        #  1992  0x73250  2      
  testl %r8d, %r8d                       #  1993  0x73252  3      
  cmovnsl %r8d, %eax                     #  1994  0x73255  4      
  subl %eax, %ecx                        #  1995  0x73259  2      
  testl %ecx, %ecx                       #  1996  0x7325b  2      
  jle .L_71ba0                           #  1997  0x7325d  6      
  cmpl $0x10, %ecx                       #  1998  0x73263  3      
  jle .L_73a40                           #  1999  0x73266  6      
  nop                                    #  2000  0x7326c  1      
  leal 0x210(%rsp), %edx                 #  2001  0x7326d  7      
  movq %rbx, %rax                        #  2002  0x73274  3      
  movl %r13d, 0xa8(%rsp)                 #  2003  0x73277  8      
  movl %ecx, %ebx                        #  2004  0x7327f  2      
  movq %r12, %r13                        #  2005  0x73281  3      
  movq 0xb8(%rsp), %r12                  #  2006  0x73284  8      
  nop                                    #  2007  0x7328c  1      
  movq %rdx, 0x18(%rsp)                  #  2008  0x7328d  5      
  jmpq .L_73f60                          #  2009  0x73292  5      
  nop                                    #  2010  0x73297  1      
  nop                                    #  2011  0x73298  1      
.L_73f20:                                #        0x73299  0      
  addl $0x8, %eax                        #  2012  0x73299  3      
  nop                                    #  2013  0x7329c  1      
  nop                                    #  2014  0x7329d  1      
.L_73f40:                                #        0x7329e  0      
  subl $0x10, %ebx                       #  2015  0x7329e  3      
  cmpl $0x10, %ebx                       #  2016  0x732a1  3      
  jle .L_73a20                           #  2017  0x732a4  6      
  nop                                    #  2018  0x732aa  1      
  nop                                    #  2019  0x732ab  1      
.L_73f60:                                #        0x732ac  0      
  movl %eax, %eax                        #  2020  0x732ac  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  2021  0x732ae  9      
  movl 0x214(%rsp), %edx                 #  2022  0x732b7  7      
  addl $0x10, 0x218(%rsp)                #  2023  0x732be  8      
  nop                                    #  2024  0x732c6  1      
  movl %eax, %eax                        #  2025  0x732c7  2      
  movl $0x10024230, (%r15,%rax,1)        #  2026  0x732c9  8      
  addl $0x1, %edx                        #  2027  0x732d1  3      
  cmpl $0x7, %edx                        #  2028  0x732d4  3      
  movl %edx, 0x214(%rsp)                 #  2029  0x732d7  7      
  jle .L_73f20                           #  2030  0x732de  6      
  movl 0x18(%rsp), %edx                  #  2031  0x732e4  4      
  movl %r12d, %esi                       #  2032  0x732e8  3      
  movl %r14d, %edi                       #  2033  0x732eb  3      
  nop                                    #  2034  0x732ee  1      
  nop                                    #  2035  0x732ef  1      
  callq .__sprint_r                      #  2036  0x732f0  5      
  testl %eax, %eax                       #  2037  0x732f5  2      
  jne .L_72d20                           #  2038  0x732f7  6      
  leal 0x1d0(%rsp), %eax                 #  2039  0x732fd  7      
  jmpq .L_73f40                          #  2040  0x73304  5      
  nop                                    #  2041  0x73309  1      
.L_73fe0:                                #        0x7330a  0      
  movl %eax, %eax                        #  2042  0x7330a  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2043  0x7330c  5      
  movl 0x214(%rsp), %edx                 #  2044  0x73311  7      
  addl %ebx, 0x218(%rsp)                 #  2045  0x73318  7      
  movl %eax, %eax                        #  2046  0x7331f  2      
  movl $0x10024230, (%r15,%rax,1)        #  2047  0x73321  8      
  nop                                    #  2048  0x73329  1      
  addl $0x1, %edx                        #  2049  0x7332a  3      
  cmpl $0x7, %edx                        #  2050  0x7332d  3      
  movl %edx, 0x214(%rsp)                 #  2051  0x73330  7      
  jg .L_73d00                            #  2052  0x73337  6      
  movq 0xe8(%rsp), %rsi                  #  2053  0x7333d  8      
  addl $0x8, %eax                        #  2054  0x73345  3      
  xchgw %ax, %ax                         #  2055  0x73348  3      
  movl %esi, %esi                        #  2056  0x7334b  2      
  movsbl (%r15,%rsi,1), %edx             #  2057  0x7334d  5      
  jmpq .L_73d40                          #  2058  0x73352  5      
  nop                                    #  2059  0x73357  1      
  nop                                    #  2060  0x73358  1      
.L_74040:                                #        0x73359  0      
  testb $0x1, %r13b                      #  2061  0x73359  4      
  jne .L_731e0                           #  2062  0x7335d  6      
  movl 0xa8(%rsp), %eax                  #  2063  0x73363  7      
  movl %ebx, %ebx                        #  2064  0x7336a  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  2065  0x7336c  9      
  nop                                    #  2066  0x73375  1      
  addl $0x1, 0x218(%rsp)                 #  2067  0x73376  8      
  movl %ebx, %ebx                        #  2068  0x7337e  2      
  movl %eax, (%r15,%rbx,1)               #  2069  0x73380  4      
  movl 0x214(%rsp), %eax                 #  2070  0x73384  7      
  addl $0x1, %eax                        #  2071  0x7338b  3      
  cmpl $0x7, %eax                        #  2072  0x7338e  3      
  nop                                    #  2073  0x73391  1      
  movl %eax, 0x214(%rsp)                 #  2074  0x73392  7      
  jg .L_744e0                            #  2075  0x73399  6      
  leal 0x8(%rbx), %eax                   #  2076  0x7339f  3      
  jmpq .L_73320                          #  2077  0x733a2  5      
  nop                                    #  2078  0x733a7  1      
.L_740a0:                                #        0x733a8  0      
  movl 0xb8(%rsp), %esi                  #  2079  0x733a8  7      
  leal 0x210(%rsp), %edx                 #  2080  0x733af  7      
  movl %r14d, %edi                       #  2081  0x733b6  3      
  nop                                    #  2082  0x733b9  1      
  callq .__sprint_r                      #  2083  0x733ba  5      
  testl %eax, %eax                       #  2084  0x733bf  2      
  jne .L_72d20                           #  2085  0x733c1  6      
  leal 0x1d0(%rsp), %eax                 #  2086  0x733c7  7      
  jmpq .L_73240                          #  2087  0x733ce  5      
  nop                                    #  2088  0x733d3  1      
.L_740e0:                                #        0x733d4  0      
  movl 0xb8(%rsp), %esi                  #  2089  0x733d4  7      
  leal 0x210(%rsp), %edx                 #  2090  0x733db  7      
  movl %r14d, %edi                       #  2091  0x733e2  3      
  nop                                    #  2092  0x733e5  1      
  callq .__sprint_r                      #  2093  0x733e6  5      
  testl %eax, %eax                       #  2094  0x733eb  2      
  jne .L_72d20                           #  2095  0x733ed  6      
  leal 0x1d0(%rsp), %eax                 #  2096  0x733f3  7      
  jmpq .L_732a0                          #  2097  0x733fa  5      
  nop                                    #  2098  0x733ff  1      
.L_74120:                                #        0x73400  0      
  movl 0x130(%rsp), %r11d                #  2099  0x73400  8      
  movq 0x100(%rsp), %rax                 #  2100  0x73408  8      
  movl %r13d, %r9d                       #  2101  0x73410  3      
  movl %r10d, 0xb0(%rsp)                 #  2102  0x73413  8      
  nop                                    #  2103  0x7341b  1      
  andl $0x400, %r9d                      #  2104  0x7341c  7      
  movq %rbx, %r10                        #  2105  0x73423  3      
  movl $0x0, 0x10c(%rsp)                 #  2106  0x73426  11     
  movq $0xcccccccccccccccd, %r8          #  2107  0x73431  10     
  nop                                    #  2108  0x7343b  1      
  xorl %edi, %edi                        #  2109  0x7343c  2      
  negl %r11d                             #  2110  0x7343e  3      
  movq %rax, %rbx                        #  2111  0x73441  3      
  movl %r11d, 0xa8(%rsp)                 #  2112  0x73444  8      
  movq %r12, %r11                        #  2113  0x7344c  3      
  movq 0xe8(%rsp), %r12                  #  2114  0x7344f  8      
  jmpq .L_741c0                          #  2115  0x73457  5      
  nop                                    #  2116  0x7345c  1      
.L_74180:                                #        0x7345d  0      
  movq %r12, %rsi                        #  2117  0x7345d  3      
  nop                                    #  2118  0x73460  1      
  nop                                    #  2119  0x73461  1      
.L_741a0:                                #        0x73462  0      
  movq %rcx, %rax                        #  2120  0x73462  3      
  mulq %r8                               #  2121  0x73465  3      
  movq %rdx, %rcx                        #  2122  0x73468  3      
  shrq $0x3, %rcx                        #  2123  0x7346b  4      
  testq %rcx, %rcx                       #  2124  0x7346f  3      
  je .L_74460                            #  2125  0x73472  6      
  movq %rsi, %r12                        #  2126  0x73478  3      
  nop                                    #  2127  0x7347b  1      
.L_741c0:                                #        0x7347c  0      
  movq %rcx, %rax                        #  2128  0x7347c  3      
  subl $0x1, %ebx                        #  2129  0x7347f  3      
  addl $0x1, %edi                        #  2130  0x73482  3      
  mulq %r8                               #  2131  0x73485  3      
  shrq $0x3, %rdx                        #  2132  0x73488  4      
  leaq (%rdx,%rdx,4), %rax               #  2133  0x7348c  4      
  movq %rcx, %rdx                        #  2134  0x73490  3      
  addq %rax, %rax                        #  2135  0x73493  3      
  subq %rax, %rdx                        #  2136  0x73496  3      
  movq %rdx, %rax                        #  2137  0x73499  3      
  addl $0x30, %eax                       #  2138  0x7349c  3      
  testl %r9d, %r9d                       #  2139  0x7349f  3      
  movl %ebx, %ebx                        #  2140  0x734a2  2      
  movb %al, (%r15,%rbx,1)                #  2141  0x734a4  4      
  je .L_74180                            #  2142  0x734a8  6      
  movl %r12d, %r12d                      #  2143  0x734ae  3      
  movzbl (%r15,%r12,1), %eax             #  2144  0x734b1  5      
  movsbl %al, %edx                       #  2145  0x734b6  3      
  cmpl %edx, %edi                        #  2146  0x734b9  2      
  nop                                    #  2147  0x734bb  1      
  jne .L_74180                           #  2148  0x734bc  6      
  cmpb $0x7f, %al                        #  2149  0x734c2  2      
  je .L_74180                            #  2150  0x734c4  6      
  cmpq $0x9, %rcx                        #  2151  0x734ca  4      
  jbe .L_74180                           #  2152  0x734ce  6      
  addl 0xa8(%rsp), %ebx                  #  2153  0x734d4  7      
  nop                                    #  2154  0x734db  1      
  movl 0x140(%rsp), %esi                 #  2155  0x734dc  7      
  movl 0x130(%rsp), %edx                 #  2156  0x734e3  7      
  movq %rcx, 0x90(%rsp)                  #  2157  0x734ea  8      
  movq %r8, 0x80(%rsp)                   #  2158  0x734f2  8      
  xchgw %ax, %ax                         #  2159  0x734fa  3      
  movl %r9d, 0xa0(%rsp)                  #  2160  0x734fd  8      
  movq %r10, 0x88(%rsp)                  #  2161  0x73505  8      
  movq %r11, 0x98(%rsp)                  #  2162  0x7350d  8      
  movl %ebx, %edi                        #  2163  0x73515  2      
  nop                                    #  2164  0x73517  1      
  callq .strncpy                         #  2165  0x73518  5      
  leal 0x1(%r12), %esi                   #  2166  0x7351d  5      
  xorl %edi, %edi                        #  2167  0x73522  2      
  movq 0x90(%rsp), %rcx                  #  2168  0x73524  8      
  movq 0x80(%rsp), %r8                   #  2169  0x7352c  8      
  movl 0xa0(%rsp), %r9d                  #  2170  0x73534  8      
  nop                                    #  2171  0x7353c  1      
  movl %esi, %esi                        #  2172  0x7353d  2      
  cmpb $0x0, (%r15,%rsi,1)               #  2173  0x7353f  5      
  movq 0x88(%rsp), %r10                  #  2174  0x73544  8      
  movq 0x98(%rsp), %r11                  #  2175  0x7354c  8      
  jne .L_741a0                           #  2176  0x73554  6      
  nop                                    #  2177  0x7355a  1      
  jmpq .L_74180                          #  2178  0x7355b  5      
  nop                                    #  2179  0x73560  1      
  nop                                    #  2180  0x73561  1      
.L_742c0:                                #        0x73562  0      
  movq %r13, %r12                        #  2181  0x73562  3      
  movl 0xa8(%rsp), %r13d                 #  2182  0x73565  8      
  nop                                    #  2183  0x7356d  1      
  nop                                    #  2184  0x7356e  1      
.L_742e0:                                #        0x7356f  0      
  movl %eax, %eax                        #  2185  0x7356f  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2186  0x73571  5      
  movl %eax, %eax                        #  2187  0x73576  2      
  movl $0x10024230, (%r15,%rax,1)        #  2188  0x73578  8      
  addl %ebx, 0x218(%rsp)                 #  2189  0x73580  7      
  jmpq .L_73300                          #  2190  0x73587  5      
  nop                                    #  2191  0x7358c  1      
.L_74300:                                #        0x7358d  0      
  leal 0x240(%rsp), %ecx                 #  2192  0x7358d  7      
  movl $0x8, %edx                        #  2193  0x73594  5      
  xorl %esi, %esi                        #  2194  0x73599  2      
  movl %ecx, %edi                        #  2195  0x7359b  2      
  movq %rcx, 0x90(%rsp)                  #  2196  0x7359d  8      
  nop                                    #  2197  0x735a5  1      
  callq .memset                          #  2198  0x735a6  5      
  movq 0xc8(%rsp), %rax                  #  2199  0x735ab  8      
  movq 0x90(%rsp), %rcx                  #  2200  0x735b3  8      
  movl %eax, %eax                        #  2201  0x735bb  2      
  movl (%r15,%rax,1), %edx               #  2202  0x735bd  4      
  cmpl $0x2f, %edx                       #  2203  0x735c1  3      
  jbe .L_750c0                           #  2204  0x735c4  6      
  nop                                    #  2205  0x735ca  1      
  movq 0xc8(%rsp), %rdx                  #  2206  0x735cb  8      
  movq 0xc8(%rsp), %rsi                  #  2207  0x735d3  8      
  movl %edx, %edx                        #  2208  0x735db  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2209  0x735dd  5      
  leal 0x8(%rax), %edx                   #  2210  0x735e2  3      
  nop                                    #  2211  0x735e5  1      
  movl %esi, %esi                        #  2212  0x735e6  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2213  0x735e8  5      
  nop                                    #  2214  0x735ed  1      
  nop                                    #  2215  0x735ee  1      
.L_74380:                                #        0x735ef  0      
  movl %eax, %eax                        #  2216  0x735ef  2      
  movl (%r15,%rax,1), %edx               #  2217  0x735f1  4      
  movl 0x68(%rsp), %esi                  #  2218  0x735f5  4      
  movl %r14d, %edi                       #  2219  0x735f9  3      
  nop                                    #  2220  0x735fc  1      
  callq ._wcrtomb_r                      #  2221  0x735fd  5      
  cmpl $0xffffffff, %eax                 #  2222  0x73602  5      
  movl %eax, 0xc4(%rsp)                  #  2223  0x73607  7      
  je .L_76ae0                            #  2224  0x7360e  6      
  nop                                    #  2225  0x73614  1      
  nop                                    #  2226  0x73615  1      
.L_743c0:                                #        0x73616  0      
  movl 0xc4(%rsp), %edx                  #  2227  0x73616  7      
  movl $0x0, %eax                        #  2228  0x7361d  5      
  movb $0x0, 0x28f(%rsp)                 #  2229  0x73622  8      
  testl %edx, %edx                       #  2230  0x7362a  2      
  cmovnsl 0xc4(%rsp), %eax               #  2231  0x7362c  8      
  xchgw %ax, %ax                         #  2232  0x73634  3      
  leal 0x160(%rsp), %edx                 #  2233  0x73637  7      
  movq %rdx, 0xa8(%rsp)                  #  2234  0x7363e  8      
  movl %eax, 0xb0(%rsp)                  #  2235  0x73646  7      
  xorl %eax, %eax                        #  2236  0x7364d  2      
  nop                                    #  2237  0x7364f  1      
.L_74400:                                #        0x73650  0      
  movq $0x0, 0xe0(%rsp)                  #  2238  0x73650  12     
  movl $0x0, 0xfc(%rsp)                  #  2239  0x7365c  11     
  nop                                    #  2240  0x73667  1      
  movl $0x0, 0x108(%rsp)                 #  2241  0x73668  11     
  movl $0x0, 0x120(%rsp)                 #  2242  0x73673  11     
  nop                                    #  2243  0x7367e  1      
  movl $0x0, 0x11c(%rsp)                 #  2244  0x7367f  11     
  jmpq .L_71760                          #  2245  0x7368a  5      
  nop                                    #  2246  0x7368f  1      
  nop                                    #  2247  0x73690  1      
.L_74460:                                #        0x73691  0      
  movq %rbx, 0xa8(%rsp)                  #  2248  0x73691  8      
  movl 0x100(%rsp), %ecx                 #  2249  0x73699  7      
  movq %r10, %rbx                        #  2250  0x736a0  3      
  subl 0xa8(%rsp), %ecx                  #  2251  0x736a3  7      
  movq %r11, %r12                        #  2252  0x736aa  3      
  nop                                    #  2253  0x736ad  1      
  movl %edi, 0x10c(%rsp)                 #  2254  0x736ae  7      
  movl 0xb0(%rsp), %r10d                 #  2255  0x736b5  8      
  movl %ecx, 0xc4(%rsp)                  #  2256  0x736bd  7      
  jmpq .L_72280                          #  2257  0x736c4  5      
  nop                                    #  2258  0x736c9  1      
.L_744a0:                                #        0x736ca  0      
  movl 0xb8(%rsp), %esi                  #  2259  0x736ca  7      
  leal 0x210(%rsp), %edx                 #  2260  0x736d1  7      
  movl %r14d, %edi                       #  2261  0x736d8  3      
  nop                                    #  2262  0x736db  1      
  callq .__sprint_r                      #  2263  0x736dc  5      
  testl %eax, %eax                       #  2264  0x736e1  2      
  jne .L_72d20                           #  2265  0x736e3  6      
  leal 0x1d0(%rsp), %ebx                 #  2266  0x736e9  7      
  jmpq .L_719e0                          #  2267  0x736f0  5      
  nop                                    #  2268  0x736f5  1      
.L_744e0:                                #        0x736f6  0      
  movl 0xb8(%rsp), %esi                  #  2269  0x736f6  7      
  leal 0x210(%rsp), %edx                 #  2270  0x736fd  7      
  movl %r14d, %edi                       #  2271  0x73704  3      
  nop                                    #  2272  0x73707  1      
  callq .__sprint_r                      #  2273  0x73708  5      
  testl %eax, %eax                       #  2274  0x7370d  2      
  jne .L_72d20                           #  2275  0x7370f  6      
  leal 0x1d0(%rsp), %eax                 #  2276  0x73715  7      
  jmpq .L_73320                          #  2277  0x7371c  5      
  nop                                    #  2278  0x73721  1      
.L_74520:                                #        0x73722  0      
  movl 0x20(%rsp), %edx                  #  2279  0x73722  4      
  movl %r12d, %esi                       #  2280  0x73726  3      
  movl %r14d, %edi                       #  2281  0x73729  3      
  xchgw %ax, %ax                         #  2282  0x7372c  3      
  nop                                    #  2283  0x7372f  1      
  callq .__sprint_r                      #  2284  0x73730  5      
  testl %eax, %eax                       #  2285  0x73735  2      
  jne .L_72d20                           #  2286  0x73737  6      
  leal 0x1d0(%rsp), %eax                 #  2287  0x7373d  7      
  jmpq .L_73ba0                          #  2288  0x73744  5      
  nop                                    #  2289  0x73749  1      
.L_74560:                                #        0x7374a  0      
  cmpb $0x30, %al                        #  2290  0x7374a  2      
  je .L_759c0                            #  2291  0x7374c  6      
  movl 0xa8(%rsp), %eax                  #  2292  0x73752  7      
  subl $0x1, %eax                        #  2293  0x73759  3      
  movq %rax, 0xa8(%rsp)                  #  2294  0x7375c  8      
  nop                                    #  2295  0x73764  1      
  movl %eax, %eax                        #  2296  0x73765  2      
  movb $0x30, (%r15,%rax,1)              #  2297  0x73767  5      
  movl 0x100(%rsp), %edx                 #  2298  0x7376c  7      
  movq 0xe8(%rsp), %rsi                  #  2299  0x73773  8      
  subl %eax, %edx                        #  2300  0x7377b  2      
  movl %edx, 0xc4(%rsp)                  #  2301  0x7377d  7      
  nop                                    #  2302  0x73784  1      
  jmpq .L_72280                          #  2303  0x73785  5      
  nop                                    #  2304  0x7378a  1      
  nop                                    #  2305  0x7378b  1      
.L_745c0:                                #        0x7378c  0      
  negq %rcx                              #  2306  0x7378c  3      
  movb $0x2d, 0x28f(%rsp)                #  2307  0x7378f  8      
  movl $0x1, %eax                        #  2308  0x73797  5      
  setne %sil                             #  2309  0x7379c  4      
  jmpq .L_721c0                          #  2310  0x737a0  5      
  nop                                    #  2311  0x737a5  1      
.L_745e0:                                #        0x737a6  0      
  movq 0xc8(%rsp), %rsi                  #  2312  0x737a6  8      
  movl %esi, %esi                        #  2313  0x737ae  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2314  0x737b0  5      
  leal 0x8(%rdx), %eax                   #  2315  0x737b5  3      
  movl %esi, %esi                        #  2316  0x737b8  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2317  0x737ba  5      
  jmpq .L_72440                          #  2318  0x737bf  5      
  xchgw %ax, %ax                         #  2319  0x737c4  3      
.L_74600:                                #        0x737c7  0      
  testb $0x40, %r13b                     #  2320  0x737c7  4      
  jne .L_752e0                           #  2321  0x737cb  6      
  testl $0x200, %r13d                    #  2322  0x737d1  7      
  je .L_75b80                            #  2323  0x737d8  6      
  movq 0xc8(%rsp), %rax                  #  2324  0x737de  8      
  nop                                    #  2325  0x737e6  1      
  movl %eax, %eax                        #  2326  0x737e7  2      
  movl (%r15,%rax,1), %edx               #  2327  0x737e9  4      
  cmpl $0x2f, %edx                       #  2328  0x737ed  3      
  ja .L_762e0                            #  2329  0x737f0  6      
  movq %rax, %rcx                        #  2330  0x737f6  3      
  movl %eax, %eax                        #  2331  0x737f9  2      
  movl 0xc(%r15,%rax,1), %eax            #  2332  0x737fb  5      
  addl %edx, %eax                        #  2333  0x73800  2      
  addl $0x8, %edx                        #  2334  0x73802  3      
  xchgw %ax, %ax                         #  2335  0x73805  3      
  movl %ecx, %ecx                        #  2336  0x73808  2      
  movl %edx, (%r15,%rcx,1)               #  2337  0x7380a  4      
  nop                                    #  2338  0x7380e  1      
  nop                                    #  2339  0x7380f  1      
.L_74660:                                #        0x73810  0      
  movl %eax, %eax                        #  2340  0x73810  2      
  movzbl (%r15,%rax,1), %ecx             #  2341  0x73812  5      
  movl $0x1, %eax                        #  2342  0x73817  5      
  testq %rcx, %rcx                       #  2343  0x7381c  3      
  setne %sil                             #  2344  0x7381f  4      
  jmpq .L_721a0                          #  2345  0x73823  5      
  nop                                    #  2346  0x73828  1      
.L_74680:                                #        0x73829  0      
  movq 0xc8(%rsp), %rsi                  #  2347  0x73829  8      
  movl %esi, %esi                        #  2348  0x73831  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2349  0x73833  5      
  leal 0x8(%rdx), %eax                   #  2350  0x73838  3      
  movl %esi, %esi                        #  2351  0x7383b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2352  0x7383d  5      
  jmpq .L_72620                          #  2353  0x73842  5      
  xchgw %ax, %ax                         #  2354  0x73847  3      
.L_746a0:                                #        0x7384a  0      
  movq 0xc8(%rsp), %rsi                  #  2355  0x7384a  8      
  movl %esi, %esi                        #  2356  0x73852  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2357  0x73854  5      
  leal 0x8(%rdx), %eax                   #  2358  0x73859  3      
  movl %esi, %esi                        #  2359  0x7385c  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2360  0x7385e  5      
  jmpq .L_72140                          #  2361  0x73863  5      
  xchgw %ax, %ax                         #  2362  0x73868  3      
.L_746c0:                                #        0x7386b  0      
  movq 0xc8(%rsp), %rax                  #  2363  0x7386b  8      
  movq 0xc8(%rsp), %rsi                  #  2364  0x73873  8      
  movl %eax, %eax                        #  2365  0x7387b  2      
  movl 0x8(%r15,%rax,1), %ecx            #  2366  0x7387d  5      
  leal 0x8(%rcx), %eax                   #  2367  0x73882  3      
  nop                                    #  2368  0x73885  1      
  movl %esi, %esi                        #  2369  0x73886  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2370  0x73888  5      
  jmpq .L_71e80                          #  2371  0x7388d  5      
  nop                                    #  2372  0x73892  1      
  nop                                    #  2373  0x73893  1      
.L_74700:                                #        0x73894  0      
  movl 0xe8(%rsp), %ebx                  #  2374  0x73894  7      
  subl $0x1, 0x120(%rsp)                 #  2375  0x7389b  8      
  subl $0x1, %ebx                        #  2376  0x738a3  3      
  movq %rbx, 0xe8(%rsp)                  #  2377  0x738a6  8      
  jmpq .L_73b40                          #  2378  0x738ae  5      
  nop                                    #  2379  0x738b3  1      
.L_74720:                                #        0x738b4  0      
  testb $0x10, %r13b                     #  2380  0x738b4  4      
  jne .L_75280                           #  2381  0x738b8  6      
  testb $0x40, %r13b                     #  2382  0x738be  4      
  je .L_75be0                            #  2383  0x738c2  6      
  movq 0xc8(%rsp), %rcx                  #  2384  0x738c8  8      
  nop                                    #  2385  0x738d0  1      
  movl %ecx, %ecx                        #  2386  0x738d1  2      
  movl (%r15,%rcx,1), %edx               #  2387  0x738d3  4      
  cmpl $0x2f, %edx                       #  2388  0x738d7  3      
  ja .L_76360                            #  2389  0x738da  6      
  movl %ecx, %ecx                        #  2390  0x738e0  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2391  0x738e2  5      
  addl %edx, %eax                        #  2392  0x738e7  2      
  addl $0x8, %edx                        #  2393  0x738e9  3      
  nop                                    #  2394  0x738ec  1      
  movl %ecx, %ecx                        #  2395  0x738ed  2      
  movl %edx, (%r15,%rcx,1)               #  2396  0x738ef  4      
  nop                                    #  2397  0x738f3  1      
  nop                                    #  2398  0x738f4  1      
.L_74780:                                #        0x738f5  0      
  movl %eax, %eax                        #  2399  0x738f5  2      
  movl (%r15,%rax,1), %eax               #  2400  0x738f7  4      
  movzwl 0xd0(%rsp), %edx                #  2401  0x738fb  8      
  movl %eax, %eax                        #  2402  0x73903  2      
  movw %dx, (%r15,%rax,1)                #  2403  0x73905  5      
  jmpq .L_71de0                          #  2404  0x7390a  5      
  nop                                    #  2405  0x7390f  1      
.L_747a0:                                #        0x73910  0      
  movq 0xc8(%rsp), %rsi                  #  2406  0x73910  8      
  movl %esi, %esi                        #  2407  0x73918  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2408  0x7391a  5      
  leal 0x8(%rdx), %eax                   #  2409  0x7391f  3      
  movl %esi, %esi                        #  2410  0x73922  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2411  0x73924  5      
  jmpq .L_72800                          #  2412  0x73929  5      
  xchgw %ax, %ax                         #  2413  0x7392e  3      
.L_747c0:                                #        0x73931  0      
  testb $0x40, %r13b                     #  2414  0x73931  4      
  jne .L_751c0                           #  2415  0x73935  6      
  testl $0x200, %r13d                    #  2416  0x7393b  7      
  je .L_75b20                            #  2417  0x73942  6      
  movq 0xc8(%rsp), %rax                  #  2418  0x73948  8      
  nop                                    #  2419  0x73950  1      
  movl %eax, %eax                        #  2420  0x73951  2      
  movl (%r15,%rax,1), %edx               #  2421  0x73953  4      
  cmpl $0x2f, %edx                       #  2422  0x73957  3      
  ja .L_76320                            #  2423  0x7395a  6      
  movq %rax, %rcx                        #  2424  0x73960  3      
  movl %eax, %eax                        #  2425  0x73963  2      
  movl 0xc(%r15,%rax,1), %eax            #  2426  0x73965  5      
  addl %edx, %eax                        #  2427  0x7396a  2      
  addl $0x8, %edx                        #  2428  0x7396c  3      
  xchgw %ax, %ax                         #  2429  0x7396f  3      
  movl %ecx, %ecx                        #  2430  0x73972  2      
  movl %edx, (%r15,%rcx,1)               #  2431  0x73974  4      
  nop                                    #  2432  0x73978  1      
  nop                                    #  2433  0x73979  1      
.L_74820:                                #        0x7397a  0      
  movl %eax, %eax                        #  2434  0x7397a  2      
  movsbq (%r15,%rax,1), %rcx             #  2435  0x7397c  5      
  jmpq .L_72460                          #  2436  0x73981  5      
  nop                                    #  2437  0x73986  1      
  nop                                    #  2438  0x73987  1      
.L_74840:                                #        0x73988  0      
  movq 0xc8(%rsp), %rsi                  #  2439  0x73988  8      
  movl %esi, %esi                        #  2440  0x73990  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2441  0x73992  5      
  leal 0x8(%rdx), %eax                   #  2442  0x73997  3      
  movl %esi, %esi                        #  2443  0x7399a  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2444  0x7399c  5      
  jmpq .L_724e0                          #  2445  0x739a1  5      
  xchgw %ax, %ax                         #  2446  0x739a6  3      
.L_74860:                                #        0x739a9  0      
  movq 0xc8(%rsp), %rsi                  #  2447  0x739a9  8      
  movl %esi, %esi                        #  2448  0x739b1  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2449  0x739b3  5      
  leal 0x8(%rdx), %eax                   #  2450  0x739b8  3      
  movl %esi, %esi                        #  2451  0x739bb  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2452  0x739bd  5      
  jmpq .L_726a0                          #  2453  0x739c2  5      
  xchgw %ax, %ax                         #  2454  0x739c7  3      
.L_74880:                                #        0x739ca  0      
  testb $0x40, %r13b                     #  2455  0x739ca  4      
  jne .L_75220                           #  2456  0x739ce  6      
  testl $0x200, %r13d                    #  2457  0x739d4  7      
  je .L_75a60                            #  2458  0x739db  6      
  movq 0xc8(%rsp), %rax                  #  2459  0x739e1  8      
  nop                                    #  2460  0x739e9  1      
  movl %eax, %eax                        #  2461  0x739ea  2      
  movl (%r15,%rax,1), %edx               #  2462  0x739ec  4      
  cmpl $0x2f, %edx                       #  2463  0x739f0  3      
  ja .L_76400                            #  2464  0x739f3  6      
  movq %rax, %rcx                        #  2465  0x739f9  3      
  movl %eax, %eax                        #  2466  0x739fc  2      
  movl 0xc(%r15,%rax,1), %eax            #  2467  0x739fe  5      
  addl %edx, %eax                        #  2468  0x73a03  2      
  addl $0x8, %edx                        #  2469  0x73a05  3      
  xchgw %ax, %ax                         #  2470  0x73a08  3      
  movl %ecx, %ecx                        #  2471  0x73a0b  2      
  movl %edx, (%r15,%rcx,1)               #  2472  0x73a0d  4      
  nop                                    #  2473  0x73a11  1      
  nop                                    #  2474  0x73a12  1      
.L_748e0:                                #        0x73a13  0      
  movl %eax, %eax                        #  2475  0x73a13  2      
  movzbl (%r15,%rax,1), %ecx             #  2476  0x73a15  5      
  jmpq .L_72820                          #  2477  0x73a1a  5      
  nop                                    #  2478  0x73a1f  1      
  nop                                    #  2479  0x73a20  1      
.L_74900:                                #        0x73a21  0      
  testb $0x40, %r13b                     #  2480  0x73a21  4      
  jne .L_75160                           #  2481  0x73a25  6      
  testl $0x200, %r13d                    #  2482  0x73a2b  7      
  je .L_75ac0                            #  2483  0x73a32  6      
  movq 0xc8(%rsp), %rax                  #  2484  0x73a38  8      
  nop                                    #  2485  0x73a40  1      
  movl %eax, %eax                        #  2486  0x73a41  2      
  movl (%r15,%rax,1), %edx               #  2487  0x73a43  4      
  cmpl $0x2f, %edx                       #  2488  0x73a47  3      
  ja .L_762a0                            #  2489  0x73a4a  6      
  movq %rax, %rcx                        #  2490  0x73a50  3      
  movl %eax, %eax                        #  2491  0x73a53  2      
  movl 0xc(%r15,%rax,1), %eax            #  2492  0x73a55  5      
  addl %edx, %eax                        #  2493  0x73a5a  2      
  addl $0x8, %edx                        #  2494  0x73a5c  3      
  xchgw %ax, %ax                         #  2495  0x73a5f  3      
  movl %ecx, %ecx                        #  2496  0x73a62  2      
  movl %edx, (%r15,%rcx,1)               #  2497  0x73a64  4      
  nop                                    #  2498  0x73a68  1      
  nop                                    #  2499  0x73a69  1      
.L_74960:                                #        0x73a6a  0      
  movl %eax, %eax                        #  2500  0x73a6a  2      
  movzbl (%r15,%rax,1), %ecx             #  2501  0x73a6c  5      
  jmpq .L_726c0                          #  2502  0x73a71  5      
  nop                                    #  2503  0x73a76  1      
  nop                                    #  2504  0x73a77  1      
.L_74980:                                #        0x73a78  0      
  movsd 0x128(%rsp), %xmm0               #  2505  0x73a78  9      
  movl %r10d, 0x88(%rsp)                 #  2506  0x73a81  8      
  nop                                    #  2507  0x73a89  1      
  callq .__fpclassifyd                   #  2508  0x73a8a  5      
  testl %eax, %eax                       #  2509  0x73a8f  2      
  movl 0x88(%rsp), %r10d                 #  2510  0x73a91  8      
  je .L_750e0                            #  2511  0x73a99  6      
  cmpl $0x61, 0xf8(%rsp)                 #  2512  0x73a9f  8      
  sete 0xc4(%rsp)                        #  2513  0x73aa7  8      
  cmpl $0x41, 0xf8(%rsp)                 #  2514  0x73aaf  8      
  sete %al                               #  2515  0x73ab7  3      
  orb 0xc4(%rsp), %al                    #  2516  0x73aba  7      
  movb %al, 0xf4(%rsp)                   #  2517  0x73ac1  7      
  je .L_75c80                            #  2518  0x73ac8  6      
  nop                                    #  2519  0x73ace  1      
  cmpb $0x1, 0xc4(%rsp)                  #  2520  0x73acf  8      
  movb $0x30, 0x280(%rsp)                #  2521  0x73ad7  8      
  sbbl %eax, %eax                        #  2522  0x73adf  2      
  orl $0x2, %r13d                        #  2523  0x73ae1  4      
  andl $0xffffffe0, %eax                 #  2524  0x73ae5  5      
  addl $0x78, %eax                       #  2525  0x73aea  3      
  cmpl $0x63, %r10d                      #  2526  0x73aed  4      
  movb %al, 0x281(%rsp)                  #  2527  0x73af1  7      
  jg .L_76920                            #  2528  0x73af8  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2529  0x73afe  8      
  nop                                    #  2530  0x73b06  1      
  movq $0x0, 0xe0(%rsp)                  #  2531  0x73b07  12     
  sete %r11b                             #  2532  0x73b13  4      
  cmpl $0x47, 0xf8(%rsp)                 #  2533  0x73b17  8      
  sete %al                               #  2534  0x73b1f  3      
  orl %eax, %r11d                        #  2535  0x73b22  3      
  xchgw %ax, %ax                         #  2536  0x73b25  3      
  leal 0x160(%rsp), %eax                 #  2537  0x73b28  7      
  movq %rax, 0xa8(%rsp)                  #  2538  0x73b2f  8      
  xchgw %ax, %ax                         #  2539  0x73b37  3      
  nop                                    #  2540  0x73b3a  1      
.L_74a60:                                #        0x73b3b  0      
  movsd 0x128(%rsp), %xmm0               #  2541  0x73b3b  9      
  orl $0x100, %r13d                      #  2542  0x73b44  7      
  movb $0x0, 0xd8(%rsp)                  #  2543  0x73b4b  8      
  nop                                    #  2544  0x73b53  1      
  movsd %xmm0, 0x220(%rsp)               #  2545  0x73b54  9      
  movl 0x224(%rsp), %eax                 #  2546  0x73b5d  7      
  testl %eax, %eax                       #  2547  0x73b64  2      
  js .L_765c0                            #  2548  0x73b66  6      
  nop                                    #  2549  0x73b6c  1      
.L_74aa0:                                #        0x73b6d  0      
  cmpb $0x0, 0xf4(%rsp)                  #  2550  0x73b6d  8      
  jne .L_76420                           #  2551  0x73b75  6      
  cmpl $0x46, 0xf8(%rsp)                 #  2552  0x73b7b  8      
  sete %al                               #  2553  0x73b83  3      
  nop                                    #  2554  0x73b86  1      
  cmpl $0x66, 0xf8(%rsp)                 #  2555  0x73b87  8      
  sete %dl                               #  2556  0x73b8f  3      
  orb %dl, %al                           #  2557  0x73b92  2      
  movb %al, 0xf4(%rsp)                   #  2558  0x73b94  7      
  je .L_760c0                            #  2559  0x73b9b  6      
  nop                                    #  2560  0x73ba1  1      
  movl %r10d, 0xc4(%rsp)                 #  2561  0x73ba2  8      
  movl $0x3, %esi                        #  2562  0x73baa  5      
  nop                                    #  2563  0x73baf  1      
  nop                                    #  2564  0x73bb0  1      
.L_74b00:                                #        0x73bb1  0      
  movl 0xc4(%rsp), %edx                  #  2565  0x73bb1  7      
  leal 0x27c(%rsp), %ecx                 #  2566  0x73bb8  7      
  movl %esp, %r9d                        #  2567  0x73bbf  3      
  movl %esp, %r8d                        #  2568  0x73bc2  3      
  movsd 0xb0(%rsp), %xmm0                #  2569  0x73bc5  9      
  nop                                    #  2570  0x73bce  1      
  addl $0x26c, %r9d                      #  2571  0x73bcf  7      
  addl $0x270, %r8d                      #  2572  0x73bd6  7      
  movl %r14d, %edi                       #  2573  0x73bdd  3      
  movl %r10d, 0x88(%rsp)                 #  2574  0x73be0  8      
  nop                                    #  2575  0x73be8  1      
  movb %r11b, 0x98(%rsp)                 #  2576  0x73be9  8      
  nop                                    #  2577  0x73bf1  1      
  nop                                    #  2578  0x73bf2  1      
  callq ._dtoa_r                         #  2579  0x73bf3  5      
  cmpl $0x47, 0xf8(%rsp)                 #  2580  0x73bf8  8      
  movl %eax, %eax                        #  2581  0x73c00  2      
  movl 0x88(%rsp), %r10d                 #  2582  0x73c02  8      
  movq %rax, 0xa8(%rsp)                  #  2583  0x73c0a  8      
  nop                                    #  2584  0x73c12  1      
  movzbl 0x98(%rsp), %r11d               #  2585  0x73c13  9      
  je .L_760a0                            #  2586  0x73c1c  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2587  0x73c22  8      
  je .L_760a0                            #  2588  0x73c2a  6      
  nop                                    #  2589  0x73c30  1      
.L_74ba0:                                #        0x73c31  0      
  movl 0xc4(%rsp), %edx                  #  2590  0x73c31  7      
  addl 0xa8(%rsp), %edx                  #  2591  0x73c38  7      
  cmpb $0x0, 0xf4(%rsp)                  #  2592  0x73c3f  8      
  xorpd %xmm1, %xmm1                     #  2593  0x73c47  4      
  je .L_74c00                            #  2594  0x73c4b  6      
  nop                                    #  2595  0x73c51  1      
  movq 0xa8(%rsp), %rcx                  #  2596  0x73c52  8      
  movl %ecx, %ecx                        #  2597  0x73c5a  2      
  cmpb $0x30, (%r15,%rcx,1)              #  2598  0x73c5c  5      
  je .L_76b20                            #  2599  0x73c61  6      
  movl 0x27c(%rsp), %eax                 #  2600  0x73c67  7      
  xorpd %xmm1, %xmm1                     #  2601  0x73c6e  4      
.L_74be0:                                #        0x73c72  0      
  leal (%rax,%rdx,1), %edx               #  2602  0x73c72  3      
  nop                                    #  2603  0x73c75  1      
  nop                                    #  2604  0x73c76  1      
.L_74c00:                                #        0x73c77  0      
  movsd 0xb0(%rsp), %xmm0                #  2605  0x73c77  9      
  ucomisd %xmm1, %xmm0                   #  2606  0x73c80  4      
  jne .L_76680                           #  2607  0x73c84  6      
  jp .L_76680                            #  2608  0x73c8a  6      
  movl %edx, 0x26c(%rsp)                 #  2609  0x73c90  7      
.L_74c20:                                #        0x73c97  0      
  subl 0xa8(%rsp), %edx                  #  2610  0x73c97  7      
  testb %r11b, %r11b                     #  2611  0x73c9e  3      
  movl %edx, 0x10c(%rsp)                 #  2612  0x73ca1  7      
  je .L_75cc0                            #  2613  0x73ca8  6      
  movl 0x27c(%rsp), %ecx                 #  2614  0x73cae  7      
  xchgw %ax, %ax                         #  2615  0x73cb5  3      
  cmpl $0xfffffffd, %ecx                 #  2616  0x73cb8  6      
  jl .L_75d80                            #  2617  0x73cbe  6      
  cmpl %ecx, %r10d                       #  2618  0x73cc4  3      
  jl .L_75d80                            #  2619  0x73cc7  6      
  movl $0x67, 0xf8(%rsp)                 #  2620  0x73ccd  11     
  nop                                    #  2621  0x73cd8  1      
.L_74c60:                                #        0x73cd9  0      
  cmpl %ecx, 0x10c(%rsp)                 #  2622  0x73cd9  7      
  jg .L_76800                            #  2623  0x73ce0  6      
  testb $0x1, %r13b                      #  2624  0x73ce6  4      
  je .L_768e0                            #  2625  0x73cea  6      
  leal 0x1(%rcx), %edx                   #  2626  0x73cf0  3      
  nop                                    #  2627  0x73cf3  1      
  movl %edx, 0xc4(%rsp)                  #  2628  0x73cf4  7      
  nop                                    #  2629  0x73cfb  1      
  nop                                    #  2630  0x73cfc  1      
.L_74ca0:                                #        0x73cfd  0      
  testl $0x400, %r13d                    #  2631  0x73cfd  7      
  je .L_761c0                            #  2632  0x73d04  6      
  testl %ecx, %ecx                       #  2633  0x73d0a  2      
  jle .L_761c0                           #  2634  0x73d0c  6      
  movq 0xe8(%rsp), %rsi                  #  2635  0x73d12  8      
  nop                                    #  2636  0x73d1a  1      
  movq 0xe8(%rsp), %r8                   #  2637  0x73d1b  8      
  movl %esi, %esi                        #  2638  0x73d23  2      
  movzbl (%r15,%rsi,1), %eax             #  2639  0x73d25  5      
  movl $0x0, 0x108(%rsp)                 #  2640  0x73d2a  11     
  movl %ecx, %esi                        #  2641  0x73d35  2      
  nop                                    #  2642  0x73d37  1      
  movl $0x0, 0x120(%rsp)                 #  2643  0x73d38  11     
  jmpq .L_74d40                          #  2644  0x73d43  5      
  nop                                    #  2645  0x73d48  1      
  nop                                    #  2646  0x73d49  1      
.L_74d00:                                #        0x73d4a  0      
  addl $0x1, 0x120(%rsp)                 #  2647  0x73d4a  8      
  nop                                    #  2648  0x73d52  1      
  nop                                    #  2649  0x73d53  1      
.L_74d20:                                #        0x73d54  0      
  subl %edi, %esi                        #  2650  0x73d54  2      
  movl %ecx, %eax                        #  2651  0x73d56  2      
  movq %rdx, %r8                         #  2652  0x73d58  3      
  nop                                    #  2653  0x73d5b  1      
  nop                                    #  2654  0x73d5c  1      
.L_74d40:                                #        0x73d5d  0      
  cmpb $0x7f, %al                        #  2655  0x73d5d  2      
  je .L_767c0                            #  2656  0x73d5f  6      
  movsbl %al, %edi                       #  2657  0x73d65  3      
  cmpl %edi, %esi                        #  2658  0x73d68  2      
  jle .L_767c0                           #  2659  0x73d6a  6      
  leal 0x1(%r8), %edx                    #  2660  0x73d70  4      
  movl %edx, %edx                        #  2661  0x73d74  2      
  movzbl (%r15,%rdx,1), %ecx             #  2662  0x73d76  5      
  testb %cl, %cl                         #  2663  0x73d7b  2      
  jne .L_74d00                           #  2664  0x73d7d  6      
  addl $0x1, 0x108(%rsp)                 #  2665  0x73d83  8      
  movl %eax, %ecx                        #  2666  0x73d8b  2      
  movq %r8, %rdx                         #  2667  0x73d8d  3      
  jmpq .L_74d20                          #  2668  0x73d90  5      
  nop                                    #  2669  0x73d95  1      
.L_74d80:                                #        0x73d96  0      
  movq 0xc8(%rsp), %rsi                  #  2670  0x73d96  8      
  movl %esi, %esi                        #  2671  0x73d9e  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2672  0x73da0  5      
  leal 0x8(%rdx), %eax                   #  2673  0x73da5  3      
  movl %esi, %esi                        #  2674  0x73da8  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2675  0x73daa  5      
  jmpq .L_72940                          #  2676  0x73daf  5      
  xchgw %ax, %ax                         #  2677  0x73db4  3      
.L_74da0:                                #        0x73db7  0      
  movq %r13, %r12                        #  2678  0x73db7  3      
  movl 0xf4(%rsp), %r13d                 #  2679  0x73dba  8      
  movl %ebx, %ecx                        #  2680  0x73dc2  2      
  movq %rax, %rbx                        #  2681  0x73dc4  3      
  nop                                    #  2682  0x73dc7  1      
  nop                                    #  2683  0x73dc8  1      
.L_74dc0:                                #        0x73dc9  0      
  movl %ebx, %ebx                        #  2684  0x73dc9  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  2685  0x73dcb  5      
  movl 0x214(%rsp), %eax                 #  2686  0x73dd0  7      
  addl %ecx, 0x218(%rsp)                 #  2687  0x73dd7  7      
  movl %ebx, %ebx                        #  2688  0x73dde  2      
  movl $0x10024230, (%r15,%rbx,1)        #  2689  0x73de0  8      
  nop                                    #  2690  0x73de8  1      
  addl $0x1, %eax                        #  2691  0x73de9  3      
  cmpl $0x7, %eax                        #  2692  0x73dec  3      
  movl %eax, 0x214(%rsp)                 #  2693  0x73def  7      
  jg .L_73a60                            #  2694  0x73df6  6      
  addl $0x8, %ebx                        #  2695  0x73dfc  3      
  jmpq .L_73aa0                          #  2696  0x73dff  5      
  nop                                    #  2697  0x73e04  1      
.L_74e00:                                #        0x73e05  0      
  movl 0xa8(%rsp), %edx                  #  2698  0x73e05  7      
  leal 0x230(%rsp), %ecx                 #  2699  0x73e0c  7      
  xorl %esi, %esi                        #  2700  0x73e13  2      
  movl %r10d, 0x88(%rsp)                 #  2701  0x73e15  8      
  movl %ecx, %edi                        #  2702  0x73e1d  2      
  movq %rcx, 0x58(%rsp)                  #  2703  0x73e1f  5      
  nop                                    #  2704  0x73e24  1      
  movl %edx, 0x274(%rsp)                 #  2705  0x73e25  7      
  movl $0x8, %edx                        #  2706  0x73e2c  5      
  nop                                    #  2707  0x73e31  1      
  callq .memset                          #  2708  0x73e32  5      
  movl 0x88(%rsp), %r10d                 #  2709  0x73e37  8      
  testl %r10d, %r10d                     #  2710  0x73e3f  3      
  js .L_763a0                            #  2711  0x73e42  6      
  xorl %r8d, %r8d                        #  2712  0x73e48  3      
  movq %r12, 0xb0(%rsp)                  #  2713  0x73e4b  8      
  nop                                    #  2714  0x73e53  1      
  movq %rbx, 0xe0(%rsp)                  #  2715  0x73e54  8      
  movl %r13d, 0xd8(%rsp)                 #  2716  0x73e5c  8      
  movl $0x0, 0xc4(%rsp)                  #  2717  0x73e64  11     
  movl %r8d, %ebx                        #  2718  0x73e6f  3      
  xchgw %ax, %ax                         #  2719  0x73e72  3      
  movl %r10d, %r12d                      #  2720  0x73e75  3      
  xorl %r13d, %r13d                      #  2721  0x73e78  3      
  jmpq .L_74ec0                          #  2722  0x73e7b  5      
  nop                                    #  2723  0x73e80  1      
  nop                                    #  2724  0x73e81  1      
.L_74ea0:                                #        0x73e82  0      
  movl %eax, %r13d                       #  2725  0x73e82  3      
  nop                                    #  2726  0x73e85  1      
  nop                                    #  2727  0x73e86  1      
.L_74ec0:                                #        0x73e87  0      
  movl 0x274(%rsp), %eax                 #  2728  0x73e87  7      
  addl %ebx, %eax                        #  2729  0x73e8e  2      
  movl %eax, %eax                        #  2730  0x73e90  2      
  movl (%r15,%rax,1), %edx               #  2731  0x73e92  4      
  testl %edx, %edx                       #  2732  0x73e96  2      
  je .L_76060                            #  2733  0x73e98  6      
  movl 0x58(%rsp), %ecx                  #  2734  0x73e9e  4      
  movl 0x68(%rsp), %esi                  #  2735  0x73ea2  4      
  nop                                    #  2736  0x73ea6  1      
  movl %r14d, %edi                       #  2737  0x73ea7  3      
  nop                                    #  2738  0x73eaa  1      
  nop                                    #  2739  0x73eab  1      
  callq ._wcrtomb_r                      #  2740  0x73eac  5      
  cmpl $0xffffffff, %eax                 #  2741  0x73eb1  5      
  je .L_76840                            #  2742  0x73eb6  6      
  addl %r13d, %eax                       #  2743  0x73ebc  3      
  cmpl %eax, %r12d                       #  2744  0x73ebf  3      
  jl .L_76060                            #  2745  0x73ec2  6      
  addl $0x4, %ebx                        #  2746  0x73ec8  3      
  cmpl %eax, %r12d                       #  2747  0x73ecb  3      
  nop                                    #  2748  0x73ece  1      
  jne .L_74ea0                           #  2749  0x73ecf  6      
  movl %r12d, %r10d                      #  2750  0x73ed5  3      
  movq 0xe0(%rsp), %rbx                  #  2751  0x73ed8  8      
  movq 0xb0(%rsp), %r12                  #  2752  0x73ee0  8      
  nop                                    #  2753  0x73ee8  1      
  movl 0xd8(%rsp), %r13d                 #  2754  0x73ee9  8      
  movl %r10d, 0xc4(%rsp)                 #  2755  0x73ef1  8      
  nop                                    #  2756  0x73ef9  1      
  nop                                    #  2757  0x73efa  1      
.L_74f60:                                #        0x73efb  0      
  movl 0xc4(%rsp), %r11d                 #  2758  0x73efb  8      
  testl %r11d, %r11d                     #  2759  0x73f03  3      
  jne .L_757a0                           #  2760  0x73f06  6      
  movzbl 0x28f(%rsp), %eax               #  2761  0x73f0c  8      
  nop                                    #  2762  0x73f14  1      
  movl $0x0, 0xb0(%rsp)                  #  2763  0x73f15  11     
  nop                                    #  2764  0x73f20  1      
  nop                                    #  2765  0x73f21  1      
.L_74fa0:                                #        0x73f22  0      
  movq $0x0, 0xe0(%rsp)                  #  2766  0x73f22  12     
  movl $0x0, 0xfc(%rsp)                  #  2767  0x73f2e  11     
  nop                                    #  2768  0x73f39  1      
  movl $0x0, 0x108(%rsp)                 #  2769  0x73f3a  11     
  movl $0x0, 0x120(%rsp)                 #  2770  0x73f45  11     
  nop                                    #  2771  0x73f50  1      
  movl $0x0, 0x11c(%rsp)                 #  2772  0x73f51  11     
  jmpq .L_72300                          #  2773  0x73f5c  5      
  nop                                    #  2774  0x73f61  1      
  nop                                    #  2775  0x73f62  1      
.L_75000:                                #        0x73f63  0      
  movl %ebx, %ecx                        #  2776  0x73f63  2      
  movq %r13, %r12                        #  2777  0x73f65  3      
  movq %rax, %rbx                        #  2778  0x73f68  3      
  movl 0xa8(%rsp), %r13d                 #  2779  0x73f6b  8      
  jmpq .L_73a40                          #  2780  0x73f73  5      
  nop                                    #  2781  0x73f78  1      
.L_75020:                                #        0x73f79  0      
  movl 0x20(%rsp), %edx                  #  2782  0x73f79  4      
  movl %r12d, %esi                       #  2783  0x73f7d  3      
  movl %r14d, %edi                       #  2784  0x73f80  3      
  movl %ecx, 0x90(%rsp)                  #  2785  0x73f83  7      
  nop                                    #  2786  0x73f8a  1      
  callq .__sprint_r                      #  2787  0x73f8b  5      
  testl %eax, %eax                       #  2788  0x73f90  2      
  movl 0x90(%rsp), %ecx                  #  2789  0x73f92  7      
  jne .L_72d20                           #  2790  0x73f99  6      
  movq 0xe8(%rsp), %rax                  #  2791  0x73f9f  8      
  movl %eax, %eax                        #  2792  0x73fa7  2      
  movsbl (%r15,%rax,1), %edx             #  2793  0x73fa9  5      
  xchgw %ax, %ax                         #  2794  0x73fae  3      
  leal 0x1d0(%rsp), %eax                 #  2795  0x73fb1  7      
  jmpq .L_73c20                          #  2796  0x73fb8  5      
  nop                                    #  2797  0x73fbd  1      
  nop                                    #  2798  0x73fbe  1      
.L_75080:                                #        0x73fbf  0      
  movl 0xb8(%rsp), %esi                  #  2799  0x73fbf  7      
  leal 0x210(%rsp), %edx                 #  2800  0x73fc6  7      
  movl %r14d, %edi                       #  2801  0x73fcd  3      
  nop                                    #  2802  0x73fd0  1      
  callq .__sprint_r                      #  2803  0x73fd1  5      
  testl %eax, %eax                       #  2804  0x73fd6  2      
  jne .L_72d20                           #  2805  0x73fd8  6      
  leal 0x1d0(%rsp), %ebx                 #  2806  0x73fde  7      
  jmpq .L_72e40                          #  2807  0x73fe5  5      
  nop                                    #  2808  0x73fea  1      
.L_750c0:                                #        0x73feb  0      
  movq %rax, %rsi                        #  2809  0x73feb  3      
  movl %eax, %eax                        #  2810  0x73fee  2      
  movl 0xc(%r15,%rax,1), %eax            #  2811  0x73ff0  5      
  addl %edx, %eax                        #  2812  0x73ff5  2      
  addl $0x8, %edx                        #  2813  0x73ff7  3      
  movl %esi, %esi                        #  2814  0x73ffa  2      
  movl %edx, (%r15,%rsi,1)               #  2815  0x73ffc  4      
  jmpq .L_74380                          #  2816  0x74000  5      
  nop                                    #  2817  0x74005  1      
.L_750e0:                                #        0x74006  0      
  movq $0x10023bf9, 0xa8(%rsp)           #  2818  0x74006  12     
  cmpl $0x47, 0xf8(%rsp)                 #  2819  0x74012  8      
  movl $0x10023bfd, %eax                 #  2820  0x7401a  5      
  jmpq .L_729e0                          #  2821  0x7401f  5      
  xchgw %ax, %ax                         #  2822  0x74024  3      
.L_75100:                                #        0x74027  0      
  movl %ecx, %ecx                        #  2823  0x74027  2      
  movl 0xc(%r15,%rcx,1), %edx            #  2824  0x74029  5      
  addl %eax, %edx                        #  2825  0x7402e  2      
  addl $0x8, %eax                        #  2826  0x74030  3      
  movl %ecx, %ecx                        #  2827  0x74033  2      
  movl %eax, (%r15,%rcx,1)               #  2828  0x74035  4      
  jmpq .L_72c40                          #  2829  0x74039  5      
  nop                                    #  2830  0x7403e  1      
.L_75120:                                #        0x7403f  0      
  movq 0xc8(%rsp), %rsi                  #  2831  0x7403f  8      
  movl %esi, %esi                        #  2832  0x74047  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2833  0x74049  5      
  leal 0x8(%rdx), %eax                   #  2834  0x7404e  3      
  movl %esi, %esi                        #  2835  0x74051  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2836  0x74053  5      
  jmpq .L_73880                          #  2837  0x74058  5      
  xchgw %ax, %ax                         #  2838  0x7405d  3      
.L_75140:                                #        0x74060  0      
  movq 0xc8(%rsp), %rsi                  #  2839  0x74060  8      
  movl %esi, %esi                        #  2840  0x74068  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2841  0x7406a  5      
  leal 0x8(%rdx), %eax                   #  2842  0x7406f  3      
  movl %esi, %esi                        #  2843  0x74072  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2844  0x74074  5      
  jmpq .L_73820                          #  2845  0x74079  5      
  xchgw %ax, %ax                         #  2846  0x7407e  3      
.L_75160:                                #        0x74081  0      
  movq 0xc8(%rsp), %rax                  #  2847  0x74081  8      
  movl %eax, %eax                        #  2848  0x74089  2      
  movl (%r15,%rax,1), %edx               #  2849  0x7408b  4      
  cmpl $0x2f, %edx                       #  2850  0x7408f  3      
  ja .L_75a20                            #  2851  0x74092  6      
  movq %rax, %rcx                        #  2852  0x74098  3      
  nop                                    #  2853  0x7409b  1      
  movl %eax, %eax                        #  2854  0x7409c  2      
  movl 0xc(%r15,%rax,1), %eax            #  2855  0x7409e  5      
  addl %edx, %eax                        #  2856  0x740a3  2      
  addl $0x8, %edx                        #  2857  0x740a5  3      
  movl %ecx, %ecx                        #  2858  0x740a8  2      
  movl %edx, (%r15,%rcx,1)               #  2859  0x740aa  4      
  nop                                    #  2860  0x740ae  1      
.L_751a0:                                #        0x740af  0      
  movl %eax, %eax                        #  2861  0x740af  2      
  movzwl (%r15,%rax,1), %ecx             #  2862  0x740b1  5      
  jmpq .L_726c0                          #  2863  0x740b6  5      
  nop                                    #  2864  0x740bb  1      
  nop                                    #  2865  0x740bc  1      
.L_751c0:                                #        0x740bd  0      
  movq 0xc8(%rsp), %rax                  #  2866  0x740bd  8      
  movl %eax, %eax                        #  2867  0x740c5  2      
  movl (%r15,%rax,1), %edx               #  2868  0x740c7  4      
  cmpl $0x2f, %edx                       #  2869  0x740cb  3      
  ja .L_75c40                            #  2870  0x740ce  6      
  movq %rax, %rcx                        #  2871  0x740d4  3      
  nop                                    #  2872  0x740d7  1      
  movl %eax, %eax                        #  2873  0x740d8  2      
  movl 0xc(%r15,%rax,1), %eax            #  2874  0x740da  5      
  addl %edx, %eax                        #  2875  0x740df  2      
  addl $0x8, %edx                        #  2876  0x740e1  3      
  movl %ecx, %ecx                        #  2877  0x740e4  2      
  movl %edx, (%r15,%rcx,1)               #  2878  0x740e6  4      
  nop                                    #  2879  0x740ea  1      
.L_75200:                                #        0x740eb  0      
  movl %eax, %eax                        #  2880  0x740eb  2      
  movswq (%r15,%rax,1), %rcx             #  2881  0x740ed  5      
  jmpq .L_72460                          #  2882  0x740f2  5      
  nop                                    #  2883  0x740f7  1      
  nop                                    #  2884  0x740f8  1      
.L_75220:                                #        0x740f9  0      
  movq 0xc8(%rsp), %rax                  #  2885  0x740f9  8      
  movl %eax, %eax                        #  2886  0x74101  2      
  movl (%r15,%rax,1), %edx               #  2887  0x74103  4      
  cmpl $0x2f, %edx                       #  2888  0x74107  3      
  ja .L_75c60                            #  2889  0x7410a  6      
  movq %rax, %rcx                        #  2890  0x74110  3      
  nop                                    #  2891  0x74113  1      
  movl %eax, %eax                        #  2892  0x74114  2      
  movl 0xc(%r15,%rax,1), %eax            #  2893  0x74116  5      
  addl %edx, %eax                        #  2894  0x7411b  2      
  addl $0x8, %edx                        #  2895  0x7411d  3      
  movl %ecx, %ecx                        #  2896  0x74120  2      
  movl %edx, (%r15,%rcx,1)               #  2897  0x74122  4      
  nop                                    #  2898  0x74126  1      
.L_75260:                                #        0x74127  0      
  movl %eax, %eax                        #  2899  0x74127  2      
  movzwl (%r15,%rax,1), %ecx             #  2900  0x74129  5      
  jmpq .L_72820                          #  2901  0x7412e  5      
  nop                                    #  2902  0x74133  1      
  nop                                    #  2903  0x74134  1      
.L_75280:                                #        0x74135  0      
  movq 0xc8(%rsp), %rax                  #  2904  0x74135  8      
  movl %eax, %eax                        #  2905  0x7413d  2      
  movl (%r15,%rax,1), %edx               #  2906  0x7413f  4      
  cmpl $0x2f, %edx                       #  2907  0x74143  3      
  ja .L_75a00                            #  2908  0x74146  6      
  movq %rax, %rcx                        #  2909  0x7414c  3      
  nop                                    #  2910  0x7414f  1      
  movl %eax, %eax                        #  2911  0x74150  2      
  movl 0xc(%r15,%rax,1), %eax            #  2912  0x74152  5      
  addl %edx, %eax                        #  2913  0x74157  2      
  addl $0x8, %edx                        #  2914  0x74159  3      
  movl %ecx, %ecx                        #  2915  0x7415c  2      
  movl %edx, (%r15,%rcx,1)               #  2916  0x7415e  4      
  nop                                    #  2917  0x74162  1      
.L_752c0:                                #        0x74163  0      
  movl %eax, %eax                        #  2918  0x74163  2      
  movl (%r15,%rax,1), %eax               #  2919  0x74165  4      
  movl 0xd0(%rsp), %edx                  #  2920  0x74169  7      
  movl %eax, %eax                        #  2921  0x74170  2      
  movl %edx, (%r15,%rax,1)               #  2922  0x74172  4      
  jmpq .L_71de0                          #  2923  0x74176  5      
  nop                                    #  2924  0x7417b  1      
.L_752e0:                                #        0x7417c  0      
  movq 0xc8(%rsp), %rax                  #  2925  0x7417c  8      
  movl %eax, %eax                        #  2926  0x74184  2      
  movl (%r15,%rax,1), %edx               #  2927  0x74186  4      
  cmpl $0x2f, %edx                       #  2928  0x7418a  3      
  ja .L_75a40                            #  2929  0x7418d  6      
  movq %rax, %rcx                        #  2930  0x74193  3      
  nop                                    #  2931  0x74196  1      
  movl %eax, %eax                        #  2932  0x74197  2      
  movl 0xc(%r15,%rax,1), %eax            #  2933  0x74199  5      
  addl %edx, %eax                        #  2934  0x7419e  2      
  addl $0x8, %edx                        #  2935  0x741a0  3      
  movl %ecx, %ecx                        #  2936  0x741a3  2      
  movl %edx, (%r15,%rcx,1)               #  2937  0x741a5  4      
  nop                                    #  2938  0x741a9  1      
.L_75320:                                #        0x741aa  0      
  movl %eax, %eax                        #  2939  0x741aa  2      
  movzwl (%r15,%rax,1), %ecx             #  2940  0x741ac  5      
  movl $0x1, %eax                        #  2941  0x741b1  5      
  testq %rcx, %rcx                       #  2942  0x741b6  3      
  setne %sil                             #  2943  0x741b9  4      
  jmpq .L_721a0                          #  2944  0x741bd  5      
  nop                                    #  2945  0x741c2  1      
.L_75340:                                #        0x741c3  0      
  movq 0xc8(%rsp), %rsi                  #  2946  0x741c3  8      
  movl %esi, %esi                        #  2947  0x741cb  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2948  0x741cd  5      
  leal 0x8(%rdx), %eax                   #  2949  0x741d2  3      
  movl %esi, %esi                        #  2950  0x741d5  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2951  0x741d7  5      
  jmpq .L_728a0                          #  2952  0x741dc  5      
  xchgw %ax, %ax                         #  2953  0x741e1  3      
.L_75360:                                #        0x741e4  0      
  movq 0xc8(%rsp), %rsi                  #  2954  0x741e4  8      
  movl %esi, %esi                        #  2955  0x741ec  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2956  0x741ee  5      
  leal 0x8(%rdx), %eax                   #  2957  0x741f3  3      
  movl %esi, %esi                        #  2958  0x741f6  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2959  0x741f8  5      
  jmpq .L_738e0                          #  2960  0x741fd  5      
  xchgw %ax, %ax                         #  2961  0x74202  3      
.L_75380:                                #        0x74205  0      
  jp .L_729c0                            #  2962  0x74205  6      
  movb $0x2d, 0x28f(%rsp)                #  2963  0x7420b  8      
  jmpq .L_729c0                          #  2964  0x74213  5      
  nop                                    #  2965  0x74218  1      
.L_753a0:                                #        0x74219  0      
  movq 0xc8(%rsp), %rsi                  #  2966  0x74219  8      
  movl %esi, %esi                        #  2967  0x74221  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2968  0x74223  5      
  leal 0x8(%rdx), %eax                   #  2969  0x74228  3      
  movl %esi, %esi                        #  2970  0x7422b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2971  0x7422d  5      
  jmpq .L_723c0                          #  2972  0x74232  5      
  xchgw %ax, %ax                         #  2973  0x74237  3      
.L_753c0:                                #        0x7423a  0      
  testb $0x1, %r13b                      #  2974  0x7423a  4      
  je .L_73e40                            #  2975  0x7423e  6      
  jmpq .L_73de0                          #  2976  0x74244  5      
  xchgw %ax, %ax                         #  2977  0x74249  3      
  nop                                    #  2978  0x7424c  1      
.L_753e0:                                #        0x7424d  0      
  movl 0xa8(%rsp), %edi                  #  2979  0x7424d  7      
  movl %ecx, 0x90(%rsp)                  #  2980  0x74254  7      
  nop                                    #  2981  0x7425b  1      
  callq .strlen                          #  2982  0x7425c  5      
  movl 0x90(%rsp), %ecx                  #  2983  0x74261  7      
  testl %eax, %eax                       #  2984  0x74268  2      
  movl %eax, 0xc4(%rsp)                  #  2985  0x7426a  7      
  cmovnsl %eax, %ecx                     #  2986  0x74271  3      
  movzbl 0x28f(%rsp), %eax               #  2987  0x74274  8      
  nop                                    #  2988  0x7427c  1      
  movl %ecx, 0xb0(%rsp)                  #  2989  0x7427d  7      
  jmpq .L_74fa0                          #  2990  0x74284  5      
  nop                                    #  2991  0x74289  1      
  nop                                    #  2992  0x7428a  1      
.L_75440:                                #        0x7428b  0      
  cmpl $0x0, 0x108(%rsp)                 #  2993  0x7428b  8      
  jg .L_73ae0                            #  2994  0x74293  6      
  jmpq .L_73d80                          #  2995  0x74299  5      
  nop                                    #  2996  0x7429e  1      
.L_75460:                                #        0x7429f  0      
  movl 0x218(%rsp), %eax                 #  2997  0x7429f  7      
  testl %eax, %eax                       #  2998  0x742a6  2      
  jne .L_76140                           #  2999  0x742a8  6      
  xchgw %ax, %ax                         #  3000  0x742ae  3      
  nop                                    #  3001  0x742b1  1      
.L_75480:                                #        0x742b2  0      
  movq 0xb8(%rsp), %rdx                  #  3002  0x742b2  8      
  movl $0x0, 0x214(%rsp)                 #  3003  0x742ba  11     
  movl %edx, %edx                        #  3004  0x742c5  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3005  0x742c7  6      
  jmpq .L_72d60                          #  3006  0x742cd  5      
.L_754a0:                                #        0x742d2  0      
  movl %ebx, %ebx                        #  3007  0x742d2  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  3008  0x742d4  9      
  movl 0x214(%rsp), %eax                 #  3009  0x742dd  7      
  addl $0x1, 0x218(%rsp)                 #  3010  0x742e4  8      
  nop                                    #  3011  0x742ec  1      
  movl %ebx, %ebx                        #  3012  0x742ed  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  3013  0x742ef  8      
  addl $0x1, %eax                        #  3014  0x742f7  3      
  cmpl $0x7, %eax                        #  3015  0x742fa  3      
  movl %eax, 0x214(%rsp)                 #  3016  0x742fd  7      
  jg .L_76180                            #  3017  0x74304  6      
  addl $0x8, %ebx                        #  3018  0x7430a  3      
.L_754e0:                                #        0x7430d  0      
  movl 0x27c(%rsp), %edi                 #  3019  0x7430d  7      
  testl %edi, %edi                       #  3020  0x74314  2      
  jne .L_75500                           #  3021  0x74316  6      
  cmpl $0x0, 0x10c(%rsp)                 #  3022  0x7431c  8      
  jne .L_75500                           #  3023  0x74324  6      
  testb $0x1, %r13b                      #  3024  0x7432a  4      
  je .L_71ba0                            #  3025  0x7432e  6      
  nop                                    #  3026  0x74334  1      
.L_75500:                                #        0x74335  0      
  movl 0x110(%rsp), %eax                 #  3027  0x74335  7      
  movl 0x124(%rsp), %edx                 #  3028  0x7433c  7      
  movl %ebx, %ebx                        #  3029  0x74343  2      
  movl %eax, (%r15,%rbx,1)               #  3030  0x74345  4      
  movl %ebx, %ebx                        #  3031  0x74349  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  3032  0x7434b  5      
  nop                                    #  3033  0x74350  1      
  movl 0x214(%rsp), %eax                 #  3034  0x74351  7      
  addl %edx, 0x218(%rsp)                 #  3035  0x74358  7      
  addl $0x1, %eax                        #  3036  0x7435f  3      
  cmpl $0x7, %eax                        #  3037  0x74362  3      
  movl %eax, 0x214(%rsp)                 #  3038  0x74365  7      
  nop                                    #  3039  0x7436c  1      
  jg .L_76100                            #  3040  0x7436d  6      
  leal 0x8(%rbx), %eax                   #  3041  0x74373  3      
  nop                                    #  3042  0x74376  1      
  nop                                    #  3043  0x74377  1      
.L_75560:                                #        0x74378  0      
  movl 0x27c(%rsp), %ebx                 #  3044  0x74378  7      
  negl %ebx                              #  3045  0x7437f  2      
  testl %ebx, %ebx                       #  3046  0x74381  2      
  jle .L_75760                           #  3047  0x74383  6      
  cmpl $0x10, %ebx                       #  3048  0x74389  3      
  jle .L_75720                           #  3049  0x7438c  6      
  nop                                    #  3050  0x74392  1      
  leal 0x210(%rsp), %ecx                 #  3051  0x74393  7      
  movl %r13d, 0xc4(%rsp)                 #  3052  0x7439a  8      
  movq %r12, %r13                        #  3053  0x743a2  3      
  movq 0xb8(%rsp), %r12                  #  3054  0x743a5  8      
  movq %rcx, 0x30(%rsp)                  #  3055  0x743ad  5      
  nop                                    #  3056  0x743b2  1      
  jmpq .L_75600                          #  3057  0x743b3  5      
  nop                                    #  3058  0x743b8  1      
  nop                                    #  3059  0x743b9  1      
.L_755c0:                                #        0x743ba  0      
  addl $0x8, %eax                        #  3060  0x743ba  3      
  nop                                    #  3061  0x743bd  1      
  nop                                    #  3062  0x743be  1      
.L_755e0:                                #        0x743bf  0      
  subl $0x10, %ebx                       #  3063  0x743bf  3      
  cmpl $0x10, %ebx                       #  3064  0x743c2  3      
  jle .L_75700                           #  3065  0x743c5  6      
  nop                                    #  3066  0x743cb  1      
  nop                                    #  3067  0x743cc  1      
.L_75600:                                #        0x743cd  0      
  movl %eax, %eax                        #  3068  0x743cd  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  3069  0x743cf  9      
  movl 0x214(%rsp), %edx                 #  3070  0x743d8  7      
  addl $0x10, 0x218(%rsp)                #  3071  0x743df  8      
  nop                                    #  3072  0x743e7  1      
  movl %eax, %eax                        #  3073  0x743e8  2      
  movl $0x10024230, (%r15,%rax,1)        #  3074  0x743ea  8      
  addl $0x1, %edx                        #  3075  0x743f2  3      
  cmpl $0x7, %edx                        #  3076  0x743f5  3      
  movl %edx, 0x214(%rsp)                 #  3077  0x743f8  7      
  jle .L_755c0                           #  3078  0x743ff  6      
  movl 0x30(%rsp), %edx                  #  3079  0x74405  4      
  movl %r12d, %esi                       #  3080  0x74409  3      
  movl %r14d, %edi                       #  3081  0x7440c  3      
  nop                                    #  3082  0x7440f  1      
  nop                                    #  3083  0x74410  1      
  callq .__sprint_r                      #  3084  0x74411  5      
  testl %eax, %eax                       #  3085  0x74416  2      
  jne .L_72d20                           #  3086  0x74418  6      
  leal 0x1d0(%rsp), %eax                 #  3087  0x7441e  7      
  jmpq .L_755e0                          #  3088  0x74425  5      
  nop                                    #  3089  0x7442a  1      
.L_75680:                                #        0x7442b  0      
  addl $0x1, %r12d                       #  3090  0x7442b  4      
  orl $0x20, %r13d                       #  3091  0x7442f  4      
  movl %r12d, %r12d                      #  3092  0x74433  3      
  movzbl (%r15,%r12,1), %eax             #  3093  0x74436  5      
  jmpq .L_71680                          #  3094  0x7443b  5      
  nop                                    #  3095  0x74440  1      
.L_756a0:                                #        0x74441  0      
  addl $0x1, %r12d                       #  3096  0x74441  4      
  orl $0x200, %r13d                      #  3097  0x74445  7      
  movl %r12d, %r12d                      #  3098  0x7444c  3      
  movzbl (%r15,%r12,1), %eax             #  3099  0x7444f  5      
  jmpq .L_71680                          #  3100  0x74454  5      
  nop                                    #  3101  0x74459  1      
.L_756c0:                                #        0x7445a  0      
  movl 0xb8(%rsp), %esi                  #  3102  0x7445a  7      
  leal 0x210(%rsp), %edx                 #  3103  0x74461  7      
  movl %r14d, %edi                       #  3104  0x74468  3      
  nop                                    #  3105  0x7446b  1      
  callq .__sprint_r                      #  3106  0x7446c  5      
  testl %eax, %eax                       #  3107  0x74471  2      
  jne .L_72d20                           #  3108  0x74473  6      
  leal 0x1d0(%rsp), %ebx                 #  3109  0x74479  7      
  jmpq .L_72ec0                          #  3110  0x74480  5      
  nop                                    #  3111  0x74485  1      
.L_75700:                                #        0x74486  0      
  movq %r13, %r12                        #  3112  0x74486  3      
  movl 0xc4(%rsp), %r13d                 #  3113  0x74489  8      
  nop                                    #  3114  0x74491  1      
  nop                                    #  3115  0x74492  1      
.L_75720:                                #        0x74493  0      
  movl %eax, %eax                        #  3116  0x74493  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  3117  0x74495  5      
  movl 0x214(%rsp), %edx                 #  3118  0x7449a  7      
  addl %ebx, 0x218(%rsp)                 #  3119  0x744a1  7      
  movl %eax, %eax                        #  3120  0x744a8  2      
  movl $0x10024230, (%r15,%rax,1)        #  3121  0x744aa  8      
  nop                                    #  3122  0x744b2  1      
  addl $0x1, %edx                        #  3123  0x744b3  3      
  cmpl $0x7, %edx                        #  3124  0x744b6  3      
  movl %edx, 0x214(%rsp)                 #  3125  0x744b9  7      
  jg .L_76860                            #  3126  0x744c0  6      
  addl $0x8, %eax                        #  3127  0x744c6  3      
  nop                                    #  3128  0x744c9  1      
.L_75760:                                #        0x744ca  0      
  movl 0x10c(%rsp), %esi                 #  3129  0x744ca  7      
  movl 0xa8(%rsp), %ebx                  #  3130  0x744d1  7      
  movl %eax, %eax                        #  3131  0x744d8  2      
  movl %esi, 0x4(%r15,%rax,1)            #  3132  0x744da  5      
  movl %eax, %eax                        #  3133  0x744df  2      
  movl %ebx, (%r15,%rax,1)               #  3134  0x744e1  4      
  nop                                    #  3135  0x744e5  1      
  addl %esi, 0x218(%rsp)                 #  3136  0x744e6  7      
  jmpq .L_73360                          #  3137  0x744ed  5      
  nop                                    #  3138  0x744f2  1      
  nop                                    #  3139  0x744f3  1      
.L_757a0:                                #        0x744f4  0      
  cmpl $0x63, 0xc4(%rsp)                 #  3140  0x744f4  8      
  leal 0x160(%rsp), %edx                 #  3141  0x744fc  7      
  movq $0x0, 0xe0(%rsp)                  #  3142  0x74503  12     
  nop                                    #  3143  0x7450f  1      
  movq %rdx, 0xa8(%rsp)                  #  3144  0x74510  8      
  jle .L_75820                           #  3145  0x74518  6      
  movl 0xc4(%rsp), %esi                  #  3146  0x7451e  7      
  movl %r14d, %edi                       #  3147  0x74525  3      
  addl $0x1, %esi                        #  3148  0x74528  3      
  nop                                    #  3149  0x7452b  1      
  callq ._malloc_r                       #  3150  0x7452c  5      
  movl %eax, %eax                        #  3151  0x74531  2      
  testq %rax, %rax                       #  3152  0x74533  3      
  movq %rax, 0xe0(%rsp)                  #  3153  0x74536  8      
  je .L_76c40                            #  3154  0x7453e  6      
  movq 0xe0(%rsp), %rsi                  #  3155  0x74544  8      
  nop                                    #  3156  0x7454c  1      
  movq %rsi, 0xa8(%rsp)                  #  3157  0x7454d  8      
  nop                                    #  3158  0x74555  1      
  nop                                    #  3159  0x74556  1      
.L_75820:                                #        0x74557  0      
  movl 0x58(%rsp), %edi                  #  3160  0x74557  4      
  xorl %esi, %esi                        #  3161  0x7455b  2      
  movl $0x8, %edx                        #  3162  0x7455d  5      
  nop                                    #  3163  0x74562  1      
  nop                                    #  3164  0x74563  1      
  callq .memset                          #  3165  0x74564  5      
  movl 0x58(%rsp), %r8d                  #  3166  0x74569  5      
  movl 0xc4(%rsp), %ecx                  #  3167  0x7456e  7      
  leal 0x274(%rsp), %edx                 #  3168  0x74575  7      
  movl 0xa8(%rsp), %esi                  #  3169  0x7457c  7      
  movl %r14d, %edi                       #  3170  0x74583  3      
  nop                                    #  3171  0x74586  1      
  nop                                    #  3172  0x74587  1      
  nop                                    #  3173  0x74588  1      
  callq ._wcsrtombs_r                    #  3174  0x74589  5      
  cmpl %eax, 0xc4(%rsp)                  #  3175  0x7458e  7      
  jne .L_72d00                           #  3176  0x74595  6      
  movl 0xc4(%rsp), %eax                  #  3177  0x7459b  7      
  addl 0xa8(%rsp), %eax                  #  3178  0x745a2  7      
  movl $0x0, %edx                        #  3179  0x745a9  5      
  movl %eax, %eax                        #  3180  0x745ae  2      
  movb $0x0, (%r15,%rax,1)               #  3181  0x745b0  5      
  movl 0xc4(%rsp), %r10d                 #  3182  0x745b5  8      
  movzbl 0x28f(%rsp), %eax               #  3183  0x745bd  8      
  nop                                    #  3184  0x745c5  1      
  movl $0x0, 0xfc(%rsp)                  #  3185  0x745c6  11     
  movl $0x0, 0x108(%rsp)                 #  3186  0x745d1  11     
  nop                                    #  3187  0x745dc  1      
  movl $0x0, 0x120(%rsp)                 #  3188  0x745dd  11     
  testl %r10d, %r10d                     #  3189  0x745e8  3      
  cmovnsl 0xc4(%rsp), %edx               #  3190  0x745eb  8      
  nop                                    #  3191  0x745f3  1      
  movl $0x0, 0x11c(%rsp)                 #  3192  0x745f4  11     
  movl %edx, 0xb0(%rsp)                  #  3193  0x745ff  7      
  jmpq .L_72300                          #  3194  0x74606  5      
  nop                                    #  3195  0x7460b  1      
.L_75920:                                #        0x7460c  0      
  movl 0xb8(%rsp), %esi                  #  3196  0x7460c  7      
  leal 0x210(%rsp), %edx                 #  3197  0x74613  7      
  movl %r14d, %edi                       #  3198  0x7461a  3      
  movl %r8d, 0x80(%rsp)                  #  3199  0x7461d  8      
  xchgw %ax, %ax                         #  3200  0x74625  3      
  callq .__sprint_r                      #  3201  0x74628  5      
  testl %eax, %eax                       #  3202  0x7462d  2      
  movl 0x80(%rsp), %r8d                  #  3203  0x7462f  8      
  jne .L_72d20                           #  3204  0x74637  6      
  leal 0x1d0(%rsp), %ebx                 #  3205  0x7463d  7      
  jmpq .L_735c0                          #  3206  0x74644  5      
  nop                                    #  3207  0x74649  1      
.L_75960:                                #        0x7464a  0      
  movl $0x6, 0xc4(%rsp)                  #  3208  0x7464a  11     
  cmpl $0x6, %r10d                       #  3209  0x74655  4      
  cmoval 0xc4(%rsp), %r10d               #  3210  0x74659  9      
  movl $0x0, %eax                        #  3211  0x74662  5      
  nop                                    #  3212  0x74667  1      
  movq $0x10023c12, 0xa8(%rsp)           #  3213  0x74668  12     
  testl %r10d, %r10d                     #  3214  0x74674  3      
  movl %r10d, 0xc4(%rsp)                 #  3215  0x74677  8      
  cmovnsl %r10d, %eax                    #  3216  0x7467f  4      
  nop                                    #  3217  0x74683  1      
  movl %eax, 0xb0(%rsp)                  #  3218  0x74684  7      
  xorl %eax, %eax                        #  3219  0x7468b  2      
  jmpq .L_74400                          #  3220  0x7468d  5      
  nop                                    #  3221  0x74692  1      
  nop                                    #  3222  0x74693  1      
.L_759c0:                                #        0x74694  0      
  movl 0x100(%rsp), %esi                 #  3223  0x74694  7      
  subl 0xa8(%rsp), %esi                  #  3224  0x7469b  7      
  movl %esi, 0xc4(%rsp)                  #  3225  0x746a2  7      
  movq 0xe8(%rsp), %rsi                  #  3226  0x746a9  8      
  nop                                    #  3227  0x746b1  1      
  jmpq .L_72280                          #  3228  0x746b2  5      
  nop                                    #  3229  0x746b7  1      
  nop                                    #  3230  0x746b8  1      
.L_75a00:                                #        0x746b9  0      
  movq 0xc8(%rsp), %rsi                  #  3231  0x746b9  8      
  movl %esi, %esi                        #  3232  0x746c1  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3233  0x746c3  5      
  leal 0x8(%rax), %edx                   #  3234  0x746c8  3      
  movl %esi, %esi                        #  3235  0x746cb  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3236  0x746cd  5      
  jmpq .L_752c0                          #  3237  0x746d2  5      
  xchgw %ax, %ax                         #  3238  0x746d7  3      
.L_75a20:                                #        0x746da  0      
  movq 0xc8(%rsp), %rsi                  #  3239  0x746da  8      
  movl %esi, %esi                        #  3240  0x746e2  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3241  0x746e4  5      
  leal 0x8(%rax), %edx                   #  3242  0x746e9  3      
  movl %esi, %esi                        #  3243  0x746ec  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3244  0x746ee  5      
  jmpq .L_751a0                          #  3245  0x746f3  5      
  xchgw %ax, %ax                         #  3246  0x746f8  3      
.L_75a40:                                #        0x746fb  0      
  movq 0xc8(%rsp), %rsi                  #  3247  0x746fb  8      
  movl %esi, %esi                        #  3248  0x74703  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3249  0x74705  5      
  leal 0x8(%rax), %edx                   #  3250  0x7470a  3      
  movl %esi, %esi                        #  3251  0x7470d  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3252  0x7470f  5      
  jmpq .L_75320                          #  3253  0x74714  5      
  xchgw %ax, %ax                         #  3254  0x74719  3      
.L_75a60:                                #        0x7471c  0      
  movq 0xc8(%rsp), %rax                  #  3255  0x7471c  8      
  movl %eax, %eax                        #  3256  0x74724  2      
  movl (%r15,%rax,1), %edx               #  3257  0x74726  4      
  cmpl $0x2f, %edx                       #  3258  0x7472a  3      
  ja .L_762c0                            #  3259  0x7472d  6      
  movq %rax, %rcx                        #  3260  0x74733  3      
  nop                                    #  3261  0x74736  1      
  movl %eax, %eax                        #  3262  0x74737  2      
  movl 0xc(%r15,%rax,1), %eax            #  3263  0x74739  5      
  addl %edx, %eax                        #  3264  0x7473e  2      
  addl $0x8, %edx                        #  3265  0x74740  3      
  movl %ecx, %ecx                        #  3266  0x74743  2      
  movl %edx, (%r15,%rcx,1)               #  3267  0x74745  4      
  nop                                    #  3268  0x74749  1      
.L_75aa0:                                #        0x7474a  0      
  movl %eax, %eax                        #  3269  0x7474a  2      
  movl (%r15,%rax,1), %ecx               #  3270  0x7474c  4      
  jmpq .L_72820                          #  3271  0x74750  5      
  nop                                    #  3272  0x74755  1      
  nop                                    #  3273  0x74756  1      
.L_75ac0:                                #        0x74757  0      
  movq 0xc8(%rsp), %rax                  #  3274  0x74757  8      
  movl %eax, %eax                        #  3275  0x7475f  2      
  movl (%r15,%rax,1), %edx               #  3276  0x74761  4      
  cmpl $0x2f, %edx                       #  3277  0x74765  3      
  ja .L_76340                            #  3278  0x74768  6      
  movq %rax, %rcx                        #  3279  0x7476e  3      
  nop                                    #  3280  0x74771  1      
  movl %eax, %eax                        #  3281  0x74772  2      
  movl 0xc(%r15,%rax,1), %eax            #  3282  0x74774  5      
  addl %edx, %eax                        #  3283  0x74779  2      
  addl $0x8, %edx                        #  3284  0x7477b  3      
  movl %ecx, %ecx                        #  3285  0x7477e  2      
  movl %edx, (%r15,%rcx,1)               #  3286  0x74780  4      
  nop                                    #  3287  0x74784  1      
.L_75b00:                                #        0x74785  0      
  movl %eax, %eax                        #  3288  0x74785  2      
  movl (%r15,%rax,1), %ecx               #  3289  0x74787  4      
  jmpq .L_726c0                          #  3290  0x7478b  5      
  nop                                    #  3291  0x74790  1      
  nop                                    #  3292  0x74791  1      
.L_75b20:                                #        0x74792  0      
  movq 0xc8(%rsp), %rax                  #  3293  0x74792  8      
  movl %eax, %eax                        #  3294  0x7479a  2      
  movl (%r15,%rax,1), %edx               #  3295  0x7479c  4      
  cmpl $0x2f, %edx                       #  3296  0x747a0  3      
  ja .L_76300                            #  3297  0x747a3  6      
  movq %rax, %rcx                        #  3298  0x747a9  3      
  nop                                    #  3299  0x747ac  1      
  movl %eax, %eax                        #  3300  0x747ad  2      
  movl 0xc(%r15,%rax,1), %eax            #  3301  0x747af  5      
  addl %edx, %eax                        #  3302  0x747b4  2      
  addl $0x8, %edx                        #  3303  0x747b6  3      
  movl %ecx, %ecx                        #  3304  0x747b9  2      
  movl %edx, (%r15,%rcx,1)               #  3305  0x747bb  4      
  nop                                    #  3306  0x747bf  1      
.L_75b60:                                #        0x747c0  0      
  movl %eax, %eax                        #  3307  0x747c0  2      
  movslq (%r15,%rax,1), %rcx             #  3308  0x747c2  4      
  jmpq .L_72460                          #  3309  0x747c6  5      
  nop                                    #  3310  0x747cb  1      
  nop                                    #  3311  0x747cc  1      
.L_75b80:                                #        0x747cd  0      
  movq 0xc8(%rsp), %rax                  #  3312  0x747cd  8      
  movl %eax, %eax                        #  3313  0x747d5  2      
  movl (%r15,%rax,1), %edx               #  3314  0x747d7  4      
  cmpl $0x2f, %edx                       #  3315  0x747db  3      
  ja .L_76380                            #  3316  0x747de  6      
  movq %rax, %rcx                        #  3317  0x747e4  3      
  nop                                    #  3318  0x747e7  1      
  movl %eax, %eax                        #  3319  0x747e8  2      
  movl 0xc(%r15,%rax,1), %eax            #  3320  0x747ea  5      
  addl %edx, %eax                        #  3321  0x747ef  2      
  addl $0x8, %edx                        #  3322  0x747f1  3      
  movl %ecx, %ecx                        #  3323  0x747f4  2      
  movl %edx, (%r15,%rcx,1)               #  3324  0x747f6  4      
  nop                                    #  3325  0x747fa  1      
.L_75bc0:                                #        0x747fb  0      
  movl %eax, %eax                        #  3326  0x747fb  2      
  movl (%r15,%rax,1), %ecx               #  3327  0x747fd  4      
  movl $0x1, %eax                        #  3328  0x74801  5      
  testq %rcx, %rcx                       #  3329  0x74806  3      
  setne %sil                             #  3330  0x74809  4      
  jmpq .L_721a0                          #  3331  0x7480d  5      
  nop                                    #  3332  0x74812  1      
.L_75be0:                                #        0x74813  0      
  andl $0x200, %r13d                     #  3333  0x74813  7      
  je .L_76640                            #  3334  0x7481a  6      
  movq 0xc8(%rsp), %rcx                  #  3335  0x74820  8      
  movl %ecx, %ecx                        #  3336  0x74828  2      
  movl (%r15,%rcx,1), %edx               #  3337  0x7482a  4      
  cmpl $0x2f, %edx                       #  3338  0x7482e  3      
  xchgw %ax, %ax                         #  3339  0x74831  3      
  ja .L_76a60                            #  3340  0x74834  6      
  movl %ecx, %ecx                        #  3341  0x7483a  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3342  0x7483c  5      
  addl %edx, %eax                        #  3343  0x74841  2      
  addl $0x8, %edx                        #  3344  0x74843  3      
  movl %ecx, %ecx                        #  3345  0x74846  2      
  movl %edx, (%r15,%rcx,1)               #  3346  0x74848  4      
  nop                                    #  3347  0x7484c  1      
.L_75c20:                                #        0x7484d  0      
  movl %eax, %eax                        #  3348  0x7484d  2      
  movl (%r15,%rax,1), %eax               #  3349  0x7484f  4      
  movzbl 0xd0(%rsp), %edx                #  3350  0x74853  8      
  movl %eax, %eax                        #  3351  0x7485b  2      
  movb %dl, (%r15,%rax,1)                #  3352  0x7485d  4      
  jmpq .L_71de0                          #  3353  0x74861  5      
  nop                                    #  3354  0x74866  1      
.L_75c40:                                #        0x74867  0      
  movq 0xc8(%rsp), %rsi                  #  3355  0x74867  8      
  movl %esi, %esi                        #  3356  0x7486f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3357  0x74871  5      
  leal 0x8(%rax), %edx                   #  3358  0x74876  3      
  movl %esi, %esi                        #  3359  0x74879  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3360  0x7487b  5      
  jmpq .L_75200                          #  3361  0x74880  5      
  xchgw %ax, %ax                         #  3362  0x74885  3      
.L_75c60:                                #        0x74888  0      
  movq 0xc8(%rsp), %rsi                  #  3363  0x74888  8      
  movl %esi, %esi                        #  3364  0x74890  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3365  0x74892  5      
  leal 0x8(%rax), %edx                   #  3366  0x74897  3      
  movl %esi, %esi                        #  3367  0x7489a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3368  0x7489c  5      
  jmpq .L_75260                          #  3369  0x748a1  5      
  xchgw %ax, %ax                         #  3370  0x748a6  3      
.L_75c80:                                #        0x748a9  0      
  cmpl $0xffffffff, %r10d                #  3371  0x748a9  7      
  je .L_76a00                            #  3372  0x748b0  6      
  cmpl $0x47, 0xf8(%rsp)                 #  3373  0x748b6  8      
  je .L_766c0                            #  3374  0x748be  6      
  cmpl $0x67, 0xf8(%rsp)                 #  3375  0x748c4  8      
  je .L_766c0                            #  3376  0x748cc  6      
  xorl %r11d, %r11d                      #  3377  0x748d2  3      
  movq $0x0, 0xe0(%rsp)                  #  3378  0x748d5  12     
  jmpq .L_74a60                          #  3379  0x748e1  5      
  nop                                    #  3380  0x748e6  1      
.L_75cc0:                                #        0x748e7  0      
  cmpl $0x46, 0xf8(%rsp)                 #  3381  0x748e7  8      
  je .L_769c0                            #  3382  0x748ef  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3383  0x748f5  8      
  jle .L_769a0                           #  3384  0x748fd  6      
  nop                                    #  3385  0x74903  1      
  cmpl $0x66, 0xf8(%rsp)                 #  3386  0x74904  8      
  movl 0x27c(%rsp), %ecx                 #  3387  0x7490c  7      
  jne .L_74c60                           #  3388  0x74913  6      
  nop                                    #  3389  0x74919  1      
.L_75d00:                                #        0x7491a  0      
  testl %ecx, %ecx                       #  3390  0x7491a  2      
  jle .L_76aa0                           #  3391  0x7491c  6      
  testl %r10d, %r10d                     #  3392  0x74922  3      
  jne .L_75d20                           #  3393  0x74925  6      
  testb $0x1, %r13b                      #  3394  0x7492b  4      
  je .L_768e0                            #  3395  0x7492f  6      
  nop                                    #  3396  0x74935  1      
.L_75d20:                                #        0x74936  0      
  leal 0x1(%rcx,%r10,1), %r10d           #  3397  0x74936  5      
  movl %r10d, 0xc4(%rsp)                 #  3398  0x7493b  8      
  jmpq .L_74ca0                          #  3399  0x74943  5      
  nop                                    #  3400  0x74948  1      
.L_75d40:                                #        0x74949  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3401  0x74949  8      
  movzbl 0x28f(%rsp), %eax               #  3402  0x74951  8      
  cmovnsl 0xc4(%rsp), %ecx               #  3403  0x74959  8      
  movl %ecx, 0xb0(%rsp)                  #  3404  0x74961  7      
  nop                                    #  3405  0x74968  1      
  jmpq .L_74fa0                          #  3406  0x74969  5      
  nop                                    #  3407  0x7496e  1      
  nop                                    #  3408  0x7496f  1      
.L_75d80:                                #        0x74970  0      
  subl $0x2, 0xf8(%rsp)                  #  3409  0x74970  8      
  nop                                    #  3410  0x74978  1      
  nop                                    #  3411  0x74979  1      
.L_75da0:                                #        0x7497a  0      
  subl $0x1, %ecx                        #  3412  0x7497a  3      
  cmpl $0x41, 0xf8(%rsp)                 #  3413  0x7497d  8      
  movl %ecx, 0x27c(%rsp)                 #  3414  0x74985  7      
  sete %dl                               #  3415  0x7498c  3      
  cmpl $0x61, 0xf8(%rsp)                 #  3416  0x7498f  8      
  sete %al                               #  3417  0x74997  3      
  orl %eax, %edx                         #  3418  0x7499a  2      
  movzbl 0xf8(%rsp), %eax                #  3419  0x7499c  8      
  addl $0xf, %eax                        #  3420  0x749a4  3      
  andl $0x1, %edx                        #  3421  0x749a7  3      
  cmovel 0xf8(%rsp), %eax                #  3422  0x749aa  8      
  testl %ecx, %ecx                       #  3423  0x749b2  2      
  nop                                    #  3424  0x749b4  1      
  movb %al, 0x260(%rsp)                  #  3425  0x749b5  7      
  js .L_76900                            #  3426  0x749bc  6      
  movb $0x2b, 0x261(%rsp)                #  3427  0x749c2  8      
  nop                                    #  3428  0x749ca  1      
.L_75e00:                                #        0x749cb  0      
  cmpl $0x9, %ecx                        #  3429  0x749cb  3      
  jle .L_76600                           #  3430  0x749ce  6      
  movq 0x158(%rsp), %rsi                 #  3431  0x749d4  8      
  movl $0x66666667, %edi                 #  3432  0x749dc  5      
  nop                                    #  3433  0x749e1  1      
.L_75e20:                                #        0x749e2  0      
  movl %ecx, %eax                        #  3434  0x749e2  2      
  subl $0x1, %esi                        #  3435  0x749e4  3      
  imull %edi                             #  3436  0x749e7  2      
  movl %ecx, %eax                        #  3437  0x749e9  2      
  sarl $0x1f, %eax                       #  3438  0x749eb  3      
  sarl $0x2, %edx                        #  3439  0x749ee  3      
  subl %eax, %edx                        #  3440  0x749f1  2      
  leal (%rdx,%rdx,4), %eax               #  3441  0x749f3  3      
  addl %eax, %eax                        #  3442  0x749f6  2      
  subl %eax, %ecx                        #  3443  0x749f8  2      
  movl %ecx, %eax                        #  3444  0x749fa  2      
  movl %edx, %ecx                        #  3445  0x749fc  2      
  addl $0x30, %eax                       #  3446  0x749fe  3      
  nop                                    #  3447  0x74a01  1      
  cmpl $0x9, %edx                        #  3448  0x74a02  3      
  movl %esi, %esi                        #  3449  0x74a05  2      
  movb %al, (%r15,%rsi,1)                #  3450  0x74a07  4      
  jg .L_75e20                            #  3451  0x74a0b  6      
  leal -0x1(%rsi), %eax                  #  3452  0x74a11  3      
  leal 0x30(%rcx), %edx                  #  3453  0x74a14  3      
  movl %eax, %eax                        #  3454  0x74a17  2      
  movb %dl, (%r15,%rax,1)                #  3455  0x74a19  4      
  cmpl %eax, 0x158(%rsp)                 #  3456  0x74a1d  7      
  xchgw %ax, %ax                         #  3457  0x74a24  3      
  jbe .L_76c80                           #  3458  0x74a27  6      
  movl %esi, %ecx                        #  3459  0x74a2d  2      
  leal 0x260(%rsp), %esi                 #  3460  0x74a2f  7      
  movq 0x158(%rsp), %rdi                 #  3461  0x74a36  8      
  leaq 0x2(%rsi), %rax                   #  3462  0x74a3e  4      
  jmpq .L_75ea0                          #  3463  0x74a42  5      
  nop                                    #  3464  0x74a47  1      
.L_75e80:                                #        0x74a48  0      
  movl %ecx, %edx                        #  3465  0x74a48  2      
  addl $0x1, %ecx                        #  3466  0x74a4a  3      
  movl %edx, %edx                        #  3467  0x74a4d  2      
  movzbl (%r15,%rdx,1), %edx             #  3468  0x74a4f  5      
  nop                                    #  3469  0x74a54  1      
  nop                                    #  3470  0x74a55  1      
.L_75ea0:                                #        0x74a56  0      
  movl %eax, %eax                        #  3471  0x74a56  2      
  movb %dl, (%r15,%rax,1)                #  3472  0x74a58  4      
  addl $0x1, %eax                        #  3473  0x74a5c  3      
  cmpl %edi, %ecx                        #  3474  0x74a5f  2      
  jb .L_75e80                            #  3475  0x74a61  6      
  nop                                    #  3476  0x74a67  1      
  nop                                    #  3477  0x74a68  1      
.L_75ec0:                                #        0x74a69  0      
  subl %esi, %eax                        #  3478  0x74a69  2      
  movl %eax, 0x134(%rsp)                 #  3479  0x74a6b  7      
  addl 0x10c(%rsp), %eax                 #  3480  0x74a72  7      
  cmpl $0x1, 0x10c(%rsp)                 #  3481  0x74a79  8      
  movl %eax, 0xc4(%rsp)                  #  3482  0x74a81  7      
  nop                                    #  3483  0x74a88  1      
  jle .L_768c0                           #  3484  0x74a89  6      
  nop                                    #  3485  0x74a8f  1      
  nop                                    #  3486  0x74a90  1      
.L_75f00:                                #        0x74a91  0      
  addl $0x1, 0xc4(%rsp)                  #  3487  0x74a91  8      
  nop                                    #  3488  0x74a99  1      
  nop                                    #  3489  0x74a9a  1      
.L_75f20:                                #        0x74a9b  0      
  andl $0xfffffbff, %r13d                #  3490  0x74a9b  7      
  movl $0x0, 0x108(%rsp)                 #  3491  0x74aa2  11     
  movl $0x0, 0x120(%rsp)                 #  3492  0x74aad  11     
  nop                                    #  3493  0x74ab8  1      
  movl $0x0, 0x11c(%rsp)                 #  3494  0x74ab9  11     
  nop                                    #  3495  0x74ac4  1      
  nop                                    #  3496  0x74ac5  1      
.L_75f60:                                #        0x74ac6  0      
  cmpb $0x0, 0xd8(%rsp)                  #  3497  0x74ac6  8      
  je .L_75fc0                            #  3498  0x74ace  6      
  cmpl $0x0, 0xc4(%rsp)                  #  3499  0x74ad4  8      
  movl $0x0, %edx                        #  3500  0x74adc  5      
  movb $0x2d, 0x28f(%rsp)                #  3501  0x74ae1  8      
  nop                                    #  3502  0x74ae9  1      
  cmovnsl 0xc4(%rsp), %edx               #  3503  0x74aea  8      
  movl $0x2d, %eax                       #  3504  0x74af2  5      
  movl $0x0, 0xfc(%rsp)                  #  3505  0x74af7  11     
  movl %edx, 0xb0(%rsp)                  #  3506  0x74b02  7      
  nop                                    #  3507  0x74b09  1      
  jmpq .L_72320                          #  3508  0x74b0a  5      
  nop                                    #  3509  0x74b0f  1      
  nop                                    #  3510  0x74b10  1      
.L_75fc0:                                #        0x74b11  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3511  0x74b11  8      
  movl $0x0, %eax                        #  3512  0x74b19  5      
  movl $0x0, 0xfc(%rsp)                  #  3513  0x74b1e  11     
  cmovnsl 0xc4(%rsp), %eax               #  3514  0x74b29  8      
  movl %eax, 0xb0(%rsp)                  #  3515  0x74b31  7      
  movzbl 0x28f(%rsp), %eax               #  3516  0x74b38  8      
  jmpq .L_72300                          #  3517  0x74b40  5      
  nop                                    #  3518  0x74b45  1      
.L_76000:                                #        0x74b46  0      
  movq 0xb8(%rsp), %rbx                  #  3519  0x74b46  8      
  movl %ebx, %ebx                        #  3520  0x74b4e  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  3521  0x74b50  6      
  jne .L_72da0                           #  3522  0x74b56  6      
  movl 0xb8(%rsp), %edi                  #  3523  0x74b5c  7      
  addl $0x5c, %edi                       #  3524  0x74b63  3      
  nop                                    #  3525  0x74b66  1      
  nop                                    #  3526  0x74b67  1      
  callq .__local_lock_release_recursive  #  3527  0x74b68  5      
  movl $0xffffffff, 0xd0(%rsp)           #  3528  0x74b6d  11     
  jmpq .L_71f80                          #  3529  0x74b78  5      
  nop                                    #  3530  0x74b7d  1      
  nop                                    #  3531  0x74b7e  1      
.L_76060:                                #        0x74b7f  0      
  movl %r13d, 0xc4(%rsp)                 #  3532  0x74b7f  8      
  movq 0xb0(%rsp), %r12                  #  3533  0x74b87  8      
  movq 0xe0(%rsp), %rbx                  #  3534  0x74b8f  8      
  movl 0xd8(%rsp), %r13d                 #  3535  0x74b97  8      
  jmpq .L_74f60                          #  3536  0x74b9f  5      
  nop                                    #  3537  0x74ba4  1      
  nop                                    #  3538  0x74ba5  1      
.L_760a0:                                #        0x74ba6  0      
  testb $0x1, %r13b                      #  3539  0x74ba6  4      
  jne .L_74ba0                           #  3540  0x74baa  6      
  movl 0x26c(%rsp), %edx                 #  3541  0x74bb0  7      
  jmpq .L_74c20                          #  3542  0x74bb7  5      
  nop                                    #  3543  0x74bbc  1      
.L_760c0:                                #        0x74bbd  0      
  cmpl $0x45, 0xf8(%rsp)                 #  3544  0x74bbd  8      
  je .L_767a0                            #  3545  0x74bc5  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3546  0x74bcb  8      
  je .L_767a0                            #  3547  0x74bd3  6      
  nop                                    #  3548  0x74bd9  1      
  movl %r10d, 0xc4(%rsp)                 #  3549  0x74bda  8      
  movl $0x2, %esi                        #  3550  0x74be2  5      
  jmpq .L_74b00                          #  3551  0x74be7  5      
  nop                                    #  3552  0x74bec  1      
.L_76100:                                #        0x74bed  0      
  movl 0xb8(%rsp), %esi                  #  3553  0x74bed  7      
  leal 0x210(%rsp), %edx                 #  3554  0x74bf4  7      
  movl %r14d, %edi                       #  3555  0x74bfb  3      
  nop                                    #  3556  0x74bfe  1      
  callq .__sprint_r                      #  3557  0x74bff  5      
  testl %eax, %eax                       #  3558  0x74c04  2      
  jne .L_72d20                           #  3559  0x74c06  6      
  leal 0x1d0(%rsp), %eax                 #  3560  0x74c0c  7      
  jmpq .L_75560                          #  3561  0x74c13  5      
  nop                                    #  3562  0x74c18  1      
.L_76140:                                #        0x74c19  0      
  movl 0xb8(%rsp), %esi                  #  3563  0x74c19  7      
  leal 0x210(%rsp), %edx                 #  3564  0x74c20  7      
  movl %r14d, %edi                       #  3565  0x74c27  3      
  nop                                    #  3566  0x74c2a  1      
  callq .__sprint_r                      #  3567  0x74c2b  5      
  testl %eax, %eax                       #  3568  0x74c30  2      
  je .L_75480                            #  3569  0x74c32  6      
  movq 0xb8(%rsp), %rsi                  #  3570  0x74c38  8      
  movl %esi, %esi                        #  3571  0x74c40  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  3572  0x74c42  6      
  jmpq .L_72d60                          #  3573  0x74c48  5      
  nop                                    #  3574  0x74c4d  1      
.L_76180:                                #        0x74c4e  0      
  movl 0xb8(%rsp), %esi                  #  3575  0x74c4e  7      
  leal 0x210(%rsp), %edx                 #  3576  0x74c55  7      
  movl %r14d, %edi                       #  3577  0x74c5c  3      
  nop                                    #  3578  0x74c5f  1      
  callq .__sprint_r                      #  3579  0x74c60  5      
  testl %eax, %eax                       #  3580  0x74c65  2      
  jne .L_72d20                           #  3581  0x74c67  6      
  leal 0x1d0(%rsp), %ebx                 #  3582  0x74c6d  7      
  jmpq .L_754e0                          #  3583  0x74c74  5      
  nop                                    #  3584  0x74c79  1      
.L_761c0:                                #        0x74c7a  0      
  movl %ecx, 0x11c(%rsp)                 #  3585  0x74c7a  7      
  movl $0x0, 0x108(%rsp)                 #  3586  0x74c81  11     
  movl $0x0, 0x120(%rsp)                 #  3587  0x74c8c  11     
  nop                                    #  3588  0x74c97  1      
  jmpq .L_75f60                          #  3589  0x74c98  5      
  nop                                    #  3590  0x74c9d  1      
  nop                                    #  3591  0x74c9e  1      
.L_76200:                                #        0x74c9f  0      
  movl 0xb8(%rsp), %esi                  #  3592  0x74c9f  7      
  leal 0x210(%rsp), %edx                 #  3593  0x74ca6  7      
  movl %r14d, %edi                       #  3594  0x74cad  3      
  nop                                    #  3595  0x74cb0  1      
  callq .__sprint_r                      #  3596  0x74cb1  5      
  testl %eax, %eax                       #  3597  0x74cb6  2      
  jne .L_72d20                           #  3598  0x74cb8  6      
  movl 0x27c(%rsp), %ecx                 #  3599  0x74cbe  7      
  leal 0x1d0(%rsp), %ebx                 #  3600  0x74cc5  7      
  jmpq .L_73e40                          #  3601  0x74ccc  5      
  nop                                    #  3602  0x74cd1  1      
.L_76240:                                #        0x74cd2  0      
  movl 0xb8(%rsp), %esi                  #  3603  0x74cd2  7      
  leal 0x210(%rsp), %edx                 #  3604  0x74cd9  7      
  movl %r14d, %edi                       #  3605  0x74ce0  3      
  movl %r8d, 0x80(%rsp)                  #  3606  0x74ce3  8      
  xchgw %ax, %ax                         #  3607  0x74ceb  3      
  callq .__sprint_r                      #  3608  0x74cee  5      
  testl %eax, %eax                       #  3609  0x74cf3  2      
  movl 0x80(%rsp), %r8d                  #  3610  0x74cf5  8      
  jne .L_72d20                           #  3611  0x74cfd  6      
  movl 0x10c(%rsp), %ecx                 #  3612  0x74d03  7      
  leal 0x1d0(%rsp), %ebx                 #  3613  0x74d0a  7      
  xchgw %ax, %ax                         #  3614  0x74d11  3      
  subl 0x27c(%rsp), %ecx                 #  3615  0x74d14  7      
  jmpq .L_73ec0                          #  3616  0x74d1b  5      
  nop                                    #  3617  0x74d20  1      
  nop                                    #  3618  0x74d21  1      
.L_762a0:                                #        0x74d22  0      
  movq 0xc8(%rsp), %rsi                  #  3619  0x74d22  8      
  movl %esi, %esi                        #  3620  0x74d2a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3621  0x74d2c  5      
  leal 0x8(%rax), %edx                   #  3622  0x74d31  3      
  movl %esi, %esi                        #  3623  0x74d34  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3624  0x74d36  5      
  jmpq .L_74960                          #  3625  0x74d3b  5      
  xchgw %ax, %ax                         #  3626  0x74d40  3      
.L_762c0:                                #        0x74d43  0      
  movq 0xc8(%rsp), %rsi                  #  3627  0x74d43  8      
  movl %esi, %esi                        #  3628  0x74d4b  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3629  0x74d4d  5      
  leal 0x8(%rax), %edx                   #  3630  0x74d52  3      
  movl %esi, %esi                        #  3631  0x74d55  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3632  0x74d57  5      
  jmpq .L_75aa0                          #  3633  0x74d5c  5      
  xchgw %ax, %ax                         #  3634  0x74d61  3      
.L_762e0:                                #        0x74d64  0      
  movq 0xc8(%rsp), %rsi                  #  3635  0x74d64  8      
  movl %esi, %esi                        #  3636  0x74d6c  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3637  0x74d6e  5      
  leal 0x8(%rax), %edx                   #  3638  0x74d73  3      
  movl %esi, %esi                        #  3639  0x74d76  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3640  0x74d78  5      
  jmpq .L_74660                          #  3641  0x74d7d  5      
  xchgw %ax, %ax                         #  3642  0x74d82  3      
.L_76300:                                #        0x74d85  0      
  movq 0xc8(%rsp), %rsi                  #  3643  0x74d85  8      
  movl %esi, %esi                        #  3644  0x74d8d  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3645  0x74d8f  5      
  leal 0x8(%rax), %edx                   #  3646  0x74d94  3      
  movl %esi, %esi                        #  3647  0x74d97  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3648  0x74d99  5      
  jmpq .L_75b60                          #  3649  0x74d9e  5      
  xchgw %ax, %ax                         #  3650  0x74da3  3      
.L_76320:                                #        0x74da6  0      
  movq 0xc8(%rsp), %rsi                  #  3651  0x74da6  8      
  movl %esi, %esi                        #  3652  0x74dae  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3653  0x74db0  5      
  leal 0x8(%rax), %edx                   #  3654  0x74db5  3      
  movl %esi, %esi                        #  3655  0x74db8  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3656  0x74dba  5      
  jmpq .L_74820                          #  3657  0x74dbf  5      
  xchgw %ax, %ax                         #  3658  0x74dc4  3      
.L_76340:                                #        0x74dc7  0      
  movq 0xc8(%rsp), %rsi                  #  3659  0x74dc7  8      
  movl %esi, %esi                        #  3660  0x74dcf  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3661  0x74dd1  5      
  leal 0x8(%rax), %edx                   #  3662  0x74dd6  3      
  movl %esi, %esi                        #  3663  0x74dd9  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3664  0x74ddb  5      
  jmpq .L_75b00                          #  3665  0x74de0  5      
  xchgw %ax, %ax                         #  3666  0x74de5  3      
.L_76360:                                #        0x74de8  0      
  movq 0xc8(%rsp), %rsi                  #  3667  0x74de8  8      
  movl %esi, %esi                        #  3668  0x74df0  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3669  0x74df2  5      
  leal 0x8(%rax), %edx                   #  3670  0x74df7  3      
  movl %esi, %esi                        #  3671  0x74dfa  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3672  0x74dfc  5      
  jmpq .L_74780                          #  3673  0x74e01  5      
  xchgw %ax, %ax                         #  3674  0x74e06  3      
.L_76380:                                #        0x74e09  0      
  movq 0xc8(%rsp), %rsi                  #  3675  0x74e09  8      
  movl %esi, %esi                        #  3676  0x74e11  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3677  0x74e13  5      
  leal 0x8(%rax), %edx                   #  3678  0x74e18  3      
  movl %esi, %esi                        #  3679  0x74e1b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3680  0x74e1d  5      
  jmpq .L_75bc0                          #  3681  0x74e22  5      
  xchgw %ax, %ax                         #  3682  0x74e27  3      
.L_763a0:                                #        0x74e2a  0      
  movl 0x58(%rsp), %r8d                  #  3683  0x74e2a  5      
  leal 0x274(%rsp), %edx                 #  3684  0x74e2f  7      
  xorl %ecx, %ecx                        #  3685  0x74e36  2      
  xorl %esi, %esi                        #  3686  0x74e38  2      
  movl %r14d, %edi                       #  3687  0x74e3a  3      
  nop                                    #  3688  0x74e3d  1      
  callq ._wcsrtombs_r                    #  3689  0x74e3e  5      
  cmpl $0xffffffff, %eax                 #  3690  0x74e43  5      
  movl %eax, 0xc4(%rsp)                  #  3691  0x74e48  7      
  je .L_76c60                            #  3692  0x74e4f  6      
  movl 0xa8(%rsp), %eax                  #  3693  0x74e55  7      
  movl %eax, 0x274(%rsp)                 #  3694  0x74e5c  7      
  xchgw %ax, %ax                         #  3695  0x74e63  3      
  jmpq .L_74f60                          #  3696  0x74e66  5      
  nop                                    #  3697  0x74e6b  1      
  nop                                    #  3698  0x74e6c  1      
.L_76400:                                #        0x74e6d  0      
  movq 0xc8(%rsp), %rsi                  #  3699  0x74e6d  8      
  movl %esi, %esi                        #  3700  0x74e75  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3701  0x74e77  5      
  leal 0x8(%rax), %edx                   #  3702  0x74e7c  3      
  movl %esi, %esi                        #  3703  0x74e7f  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3704  0x74e81  5      
  jmpq .L_748e0                          #  3705  0x74e86  5      
  xchgw %ax, %ax                         #  3706  0x74e8b  3      
.L_76420:                                #        0x74e8e  0      
  leal 0x27c(%rsp), %edi                 #  3707  0x74e8e  7      
  movsd 0xb0(%rsp), %xmm0                #  3708  0x74e95  9      
  movl %r10d, 0x88(%rsp)                 #  3709  0x74e9e  8      
  movb %r11b, 0x98(%rsp)                 #  3710  0x74ea6  8      
  nop                                    #  3711  0x74eae  1      
  nop                                    #  3712  0x74eaf  1      
  callq .frexp                           #  3713  0x74eb0  5      
  mulsd 0xffaf06b(%rip), %xmm0           #  3714  0x74eb5  8      
  movl $0x1, %eax                        #  3715  0x74ebd  5      
  movl 0x88(%rsp), %r10d                 #  3716  0x74ec2  8      
  xorpd %xmm1, %xmm1                     #  3717  0x74eca  4      
  movl $0x10023c01, %edi                 #  3718  0x74ece  5      
  xchgw %ax, %ax                         #  3719  0x74ed3  3      
  movsd 0xffaf052(%rip), %xmm3           #  3720  0x74ed6  8      
  movzbl 0x98(%rsp), %r11d               #  3721  0x74ede  9      
  movl %r10d, %ecx                       #  3722  0x74ee7  3      
  ucomisd %xmm1, %xmm0                   #  3723  0x74eea  4      
  cmovnel 0x27c(%rsp), %eax              #  3724  0x74eee  8      
  cmovpl 0x27c(%rsp), %eax               #  3725  0x74ef6  8      
  cmpb $0x0, 0xc4(%rsp)                  #  3726  0x74efe  8      
  movl %eax, 0x27c(%rsp)                 #  3727  0x74f06  7      
  movl $0x10023be0, %eax                 #  3728  0x74f0d  5      
  cmoveq %rax, %rdi                      #  3729  0x74f12  4      
  movq 0xa8(%rsp), %rax                  #  3730  0x74f16  8      
  jmpq .L_76500                          #  3731  0x74f1e  5      
  nop                                    #  3732  0x74f23  1      
  nop                                    #  3733  0x74f24  1      
.L_764e0:                                #        0x74f25  0      
  movq %rdx, %rax                        #  3734  0x74f25  3      
  nop                                    #  3735  0x74f28  1      
  nop                                    #  3736  0x74f29  1      
.L_76500:                                #        0x74f2a  0      
  mulsd %xmm3, %xmm0                     #  3737  0x74f2a  4      
  subl $0x1, %ecx                        #  3738  0x74f2e  3      
  cmpl $0xffffffff, %ecx                 #  3739  0x74f31  6      
  cvttsd2si %xmm0, %esi                  #  3740  0x74f37  4      
  cvtsi2sdl %esi, %xmm2                  #  3741  0x74f3b  4      
  leal (%rsi,%rdi,1), %edx               #  3742  0x74f3f  3      
  movl %edx, %edx                        #  3743  0x74f42  2      
  movzbl (%r15,%rdx,1), %edx             #  3744  0x74f44  5      
  nop                                    #  3745  0x74f49  1      
  movl %eax, %eax                        #  3746  0x74f4a  2      
  movb %dl, (%r15,%rax,1)                #  3747  0x74f4c  4      
  leal 0x1(%rax), %edx                   #  3748  0x74f50  3      
  subsd %xmm2, %xmm0                     #  3749  0x74f53  4      
  je .L_766e0                            #  3750  0x74f57  6      
  ucomisd %xmm1, %xmm0                   #  3751  0x74f5d  4      
  jne .L_764e0                           #  3752  0x74f61  6      
  jp .L_764e0                            #  3753  0x74f67  6      
  nop                                    #  3754  0x74f6d  1      
  movsd 0xffaefc2(%rip), %xmm1           #  3755  0x74f6e  8      
  nop                                    #  3756  0x74f76  1      
  nop                                    #  3757  0x74f77  1      
.L_76560:                                #        0x74f78  0      
  movq %rdx, %r8                         #  3758  0x74f78  3      
  ucomisd %xmm1, %xmm0                   #  3759  0x74f7b  4      
  jne .L_76580                           #  3760  0x74f7f  6      
  jp .L_76580                            #  3761  0x74f85  6      
  andb $0x1, %sil                        #  3762  0x74f8b  4      
  jne .L_76700                           #  3763  0x74f8f  6      
  nop                                    #  3764  0x74f95  1      
.L_76580:                                #        0x74f96  0      
  testl %ecx, %ecx                       #  3765  0x74f96  2      
  leal -0x1(%rcx), %eax                  #  3766  0x74f98  3      
  js .L_74c20                            #  3767  0x74f9b  6      
  nop                                    #  3768  0x74fa1  1      
  nop                                    #  3769  0x74fa2  1      
.L_765a0:                                #        0x74fa3  0      
  subl $0x1, %eax                        #  3770  0x74fa3  3      
  movl %edx, %edx                        #  3771  0x74fa6  2      
  movb $0x30, (%r15,%rdx,1)              #  3772  0x74fa8  5      
  addl $0x1, %edx                        #  3773  0x74fad  3      
  cmpl $0xfffffffe, %eax                 #  3774  0x74fb0  5      
  jne .L_765a0                           #  3775  0x74fb5  6      
  leal 0x1(%rcx,%r8,1), %edx             #  3776  0x74fbb  5      
  jmpq .L_74c20                          #  3777  0x74fc0  5      
  nop                                    #  3778  0x74fc5  1      
.L_765c0:                                #        0x74fc6  0      
  movsd 0xffaef72(%rip), %xmm0           #  3779  0x74fc6  8      
  movb $0x2d, 0xd8(%rsp)                 #  3780  0x74fce  8      
  movsd 0x128(%rsp), %xmm1               #  3781  0x74fd6  9      
  xorpd %xmm0, %xmm1                     #  3782  0x74fdf  4      
  nop                                    #  3783  0x74fe3  1      
  movsd %xmm1, 0xb0(%rsp)                #  3784  0x74fe4  9      
  jmpq .L_74aa0                          #  3785  0x74fed  5      
  nop                                    #  3786  0x74ff2  1      
  nop                                    #  3787  0x74ff3  1      
.L_76600:                                #        0x74ff4  0      
  testl %edx, %edx                       #  3788  0x74ff4  2      
  je .L_76a80                            #  3789  0x74ff6  6      
  leal 0x260(%rsp), %esi                 #  3790  0x74ffc  7      
  leaq 0x3(%rsi), %rax                   #  3791  0x75003  4      
  leaq 0x2(%rsi), %rdx                   #  3792  0x75007  4      
  nop                                    #  3793  0x7500b  1      
.L_76620:                                #        0x7500c  0      
  addl $0x30, %ecx                       #  3794  0x7500c  3      
  movl %edx, %edx                        #  3795  0x7500f  2      
  movb %cl, (%r15,%rdx,1)                #  3796  0x75011  4      
  jmpq .L_75ec0                          #  3797  0x75015  5      
  nop                                    #  3798  0x7501a  1      
  nop                                    #  3799  0x7501b  1      
.L_76640:                                #        0x7501c  0      
  movq 0xc8(%rsp), %rcx                  #  3800  0x7501c  8      
  movl %ecx, %ecx                        #  3801  0x75024  2      
  movl (%r15,%rcx,1), %edx               #  3802  0x75026  4      
  cmpl $0x2f, %edx                       #  3803  0x7502a  3      
  ja .L_75a00                            #  3804  0x7502d  6      
  movl %ecx, %ecx                        #  3805  0x75033  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3806  0x75035  5      
  addl %edx, %eax                        #  3807  0x7503a  2      
  addl $0x8, %edx                        #  3808  0x7503c  3      
  movl %ecx, %ecx                        #  3809  0x7503f  2      
  movl %edx, (%r15,%rcx,1)               #  3810  0x75041  4      
  jmpq .L_752c0                          #  3811  0x75045  5      
  nop                                    #  3812  0x7504a  1      
  nop                                    #  3813  0x7504b  1      
.L_76680:                                #        0x7504c  0      
  movl 0x26c(%rsp), %ecx                 #  3814  0x7504c  7      
  cmpl %ecx, %edx                        #  3815  0x75053  2      
  movq %rcx, %rax                        #  3816  0x75055  3      
  jbe .L_76c20                           #  3817  0x75058  6      
  nop                                    #  3818  0x7505e  1      
.L_766a0:                                #        0x7505f  0      
  movl %eax, %eax                        #  3819  0x7505f  2      
  movb $0x30, (%r15,%rax,1)              #  3820  0x75061  5      
  addl $0x1, %eax                        #  3821  0x75066  3      
  cmpl %eax, %edx                        #  3822  0x75069  2      
  movl %eax, 0x26c(%rsp)                 #  3823  0x7506b  7      
  ja .L_766a0                            #  3824  0x75072  6      
  jmpq .L_74c20                          #  3825  0x75078  5      
  nop                                    #  3826  0x7507d  1      
.L_766c0:                                #        0x7507e  0      
  testl %r10d, %r10d                     #  3827  0x7507e  3      
  je .L_769e0                            #  3828  0x75081  6      
  movl $0x1, %r11d                       #  3829  0x75087  6      
  movq $0x0, 0xe0(%rsp)                  #  3830  0x7508d  12     
  jmpq .L_74a60                          #  3831  0x75099  5      
.L_766e0:                                #        0x7509e  0      
  movsd 0xffaee92(%rip), %xmm1           #  3832  0x7509e  8      
  ucomisd %xmm1, %xmm0                   #  3833  0x750a6  4      
  jbe .L_76560                           #  3834  0x750aa  6      
  nop                                    #  3835  0x750b0  1      
.L_76700:                                #        0x750b1  0      
  leal 0xf(%rdi), %esi                   #  3836  0x750b1  3      
  movl %eax, 0x26c(%rsp)                 #  3837  0x750b4  7      
  movl %eax, %eax                        #  3838  0x750bb  2      
  movzbl (%r15,%rax,1), %ecx             #  3839  0x750bd  5      
  movl %esi, %esi                        #  3840  0x750c2  2      
  cmpb (%r15,%rsi,1), %cl                #  3841  0x750c4  4      
  jne .L_76760                           #  3842  0x750c8  6      
  nop                                    #  3843  0x750ce  1      
.L_76720:                                #        0x750cf  0      
  movl %eax, %eax                        #  3844  0x750cf  2      
  movb $0x30, (%r15,%rax,1)              #  3845  0x750d1  5      
  movl 0x26c(%rsp), %eax                 #  3846  0x750d6  7      
  subl $0x1, %eax                        #  3847  0x750dd  3      
  movl %eax, 0x26c(%rsp)                 #  3848  0x750e0  7      
  movl %eax, %eax                        #  3849  0x750e7  2      
  movzbl (%r15,%rax,1), %ecx             #  3850  0x750e9  5      
  nop                                    #  3851  0x750ee  1      
  movl %esi, %esi                        #  3852  0x750ef  2      
  cmpb (%r15,%rsi,1), %cl                #  3853  0x750f1  4      
  je .L_76720                            #  3854  0x750f5  6      
  nop                                    #  3855  0x750fb  1      
  nop                                    #  3856  0x750fc  1      
.L_76760:                                #        0x750fd  0      
  cmpb $0x39, %cl                        #  3857  0x750fd  3      
  je .L_76b00                            #  3858  0x75100  6      
  addl $0x1, %ecx                        #  3859  0x75106  3      
  nop                                    #  3860  0x75109  1      
  nop                                    #  3861  0x7510a  1      
.L_76780:                                #        0x7510b  0      
  movl %eax, %eax                        #  3862  0x7510b  2      
  movb %cl, (%r15,%rax,1)                #  3863  0x7510d  4      
  jmpq .L_74c20                          #  3864  0x75111  5      
  nop                                    #  3865  0x75116  1      
  nop                                    #  3866  0x75117  1      
.L_767a0:                                #        0x75118  0      
  leal 0x1(%r10), %eax                   #  3867  0x75118  4      
  movl $0x2, %esi                        #  3868  0x7511c  5      
  movl %eax, 0xc4(%rsp)                  #  3869  0x75121  7      
  jmpq .L_74b00                          #  3870  0x75128  5      
  nop                                    #  3871  0x7512d  1      
.L_767c0:                                #        0x7512e  0      
  movl 0x108(%rsp), %eax                 #  3872  0x7512e  7      
  addl 0x120(%rsp), %eax                 #  3873  0x75135  7      
  imull 0x130(%rsp), %eax                #  3874  0x7513c  8      
  movl %esi, 0x11c(%rsp)                 #  3875  0x75144  7      
  nop                                    #  3876  0x7514b  1      
  movq %r8, 0xe8(%rsp)                   #  3877  0x7514c  8      
  addl %eax, 0xc4(%rsp)                  #  3878  0x75154  7      
  jmpq .L_75f60                          #  3879  0x7515b  5      
  nop                                    #  3880  0x75160  1      
.L_76800:                                #        0x75161  0      
  testl %ecx, %ecx                       #  3881  0x75161  2      
  movl $0x1, %eax                        #  3882  0x75163  5      
  jg .L_76820                            #  3883  0x75168  6      
  movb $0x2, %al                         #  3884  0x7516e  2      
  subl %ecx, %eax                        #  3885  0x75170  2      
  nop                                    #  3886  0x75172  1      
  nop                                    #  3887  0x75173  1      
.L_76820:                                #        0x75174  0      
  addl 0x10c(%rsp), %eax                 #  3888  0x75174  7      
  movl %eax, 0xc4(%rsp)                  #  3889  0x7517b  7      
  jmpq .L_74ca0                          #  3890  0x75182  5      
  nop                                    #  3891  0x75187  1      
.L_76840:                                #        0x75188  0      
  movq 0xb8(%rsp), %rbx                  #  3892  0x75188  8      
  movl %ebx, %ebx                        #  3893  0x75190  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  3894  0x75192  6      
  orl $0x40, %eax                        #  3895  0x75198  3      
  movl %ebx, %ebx                        #  3896  0x7519b  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  3897  0x7519d  6      
  jmpq .L_72d60                          #  3898  0x751a3  5      
.L_76860:                                #        0x751a8  0      
  movl 0xb8(%rsp), %esi                  #  3899  0x751a8  7      
  leal 0x210(%rsp), %edx                 #  3900  0x751af  7      
  movl %r14d, %edi                       #  3901  0x751b6  3      
  nop                                    #  3902  0x751b9  1      
  callq .__sprint_r                      #  3903  0x751ba  5      
  testl %eax, %eax                       #  3904  0x751bf  2      
  jne .L_72d20                           #  3905  0x751c1  6      
  leal 0x1d0(%rsp), %eax                 #  3906  0x751c7  7      
  jmpq .L_75760                          #  3907  0x751ce  5      
  nop                                    #  3908  0x751d3  1      
.L_768a0:                                #        0x751d4  0      
  movq 0xb8(%rsp), %rdx                  #  3909  0x751d4  8      
  movl %edx, %edx                        #  3910  0x751dc  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3911  0x751de  6      
  jmpq .L_72d60                          #  3912  0x751e4  5      
  nop                                    #  3913  0x751e9  1      
.L_768c0:                                #        0x751ea  0      
  testb $0x1, %r13b                      #  3914  0x751ea  4      
  je .L_75f20                            #  3915  0x751ee  6      
  jmpq .L_75f00                          #  3916  0x751f4  5      
  xchgw %ax, %ax                         #  3917  0x751f9  3      
  nop                                    #  3918  0x751fc  1      
.L_768e0:                                #        0x751fd  0      
  movl %ecx, 0xc4(%rsp)                  #  3919  0x751fd  7      
  jmpq .L_74ca0                          #  3920  0x75204  5      
  nop                                    #  3921  0x75209  1      
  nop                                    #  3922  0x7520a  1      
.L_76900:                                #        0x7520b  0      
  negl %ecx                              #  3923  0x7520b  2      
  movb $0x2d, 0x261(%rsp)                #  3924  0x7520d  8      
  jmpq .L_75e00                          #  3925  0x75215  5      
  xchgw %ax, %ax                         #  3926  0x7521a  3      
  nop                                    #  3927  0x7521d  1      
.L_76920:                                #        0x7521e  0      
  leal 0x1(%r10), %esi                   #  3928  0x7521e  4      
  movl %r14d, %edi                       #  3929  0x75222  3      
  movl %r10d, 0x88(%rsp)                 #  3930  0x75225  8      
  nop                                    #  3931  0x7522d  1      
  callq ._malloc_r                       #  3932  0x7522e  5      
  movl %eax, %eax                        #  3933  0x75233  2      
  movl 0x88(%rsp), %r10d                 #  3934  0x75235  8      
  testq %rax, %rax                       #  3935  0x7523d  3      
  movq %rax, 0xe0(%rsp)                  #  3936  0x75240  8      
  je .L_76c40                            #  3937  0x75248  6      
  nop                                    #  3938  0x7524e  1      
  cmpl $0x67, 0xf8(%rsp)                 #  3939  0x7524f  8      
  movq 0xe0(%rsp), %rdx                  #  3940  0x75257  8      
  movq %rdx, 0xa8(%rsp)                  #  3941  0x7525f  8      
  sete %r11b                             #  3942  0x75267  4      
  nop                                    #  3943  0x7526b  1      
  cmpl $0x47, 0xf8(%rsp)                 #  3944  0x7526c  8      
  sete %al                               #  3945  0x75274  3      
  orl %eax, %r11d                        #  3946  0x75277  3      
  jmpq .L_74a60                          #  3947  0x7527a  5      
  nop                                    #  3948  0x7527f  1      
.L_769a0:                                #        0x75280  0      
  movl 0x27c(%rsp), %ecx                 #  3949  0x75280  7      
  jmpq .L_75da0                          #  3950  0x75287  5      
  nop                                    #  3951  0x7528c  1      
  nop                                    #  3952  0x7528d  1      
.L_769c0:                                #        0x7528e  0      
  movl 0x27c(%rsp), %ecx                 #  3953  0x7528e  7      
  movl $0x66, 0xf8(%rsp)                 #  3954  0x75295  11     
  jmpq .L_75d00                          #  3955  0x752a0  5      
  nop                                    #  3956  0x752a5  1      
.L_769e0:                                #        0x752a6  0      
  movl $0x1, %r11d                       #  3957  0x752a6  6      
  movl $0x1, %r10d                       #  3958  0x752ac  6      
  movq $0x0, 0xe0(%rsp)                  #  3959  0x752b2  12     
  jmpq .L_74a60                          #  3960  0x752be  5      
  nop                                    #  3961  0x752c3  1      
.L_76a00:                                #        0x752c4  0      
  cmpl $0x67, 0xf8(%rsp)                 #  3962  0x752c4  8      
  movl $0x6, %r10d                       #  3963  0x752cc  6      
  movq $0x0, 0xe0(%rsp)                  #  3964  0x752d2  12     
  sete %r11b                             #  3965  0x752de  4      
  xchgw %ax, %ax                         #  3966  0x752e2  3      
  cmpl $0x47, 0xf8(%rsp)                 #  3967  0x752e5  8      
  sete %al                               #  3968  0x752ed  3      
  orl %eax, %r11d                        #  3969  0x752f0  3      
  jmpq .L_74a60                          #  3970  0x752f3  5      
  nop                                    #  3971  0x752f8  1      
.L_76a40:                                #        0x752f9  0      
  movl %r10d, 0xb0(%rsp)                 #  3972  0x752f9  8      
  movzbl 0x28f(%rsp), %eax               #  3973  0x75301  8      
  movl %r10d, 0xc4(%rsp)                 #  3974  0x75309  8      
  jmpq .L_74fa0                          #  3975  0x75311  5      
  nop                                    #  3976  0x75316  1      
.L_76a60:                                #        0x75317  0      
  movq 0xc8(%rsp), %rsi                  #  3977  0x75317  8      
  movl %esi, %esi                        #  3978  0x7531f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3979  0x75321  5      
  leal 0x8(%rax), %edx                   #  3980  0x75326  3      
  movl %esi, %esi                        #  3981  0x75329  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3982  0x7532b  5      
  jmpq .L_75c20                          #  3983  0x75330  5      
  xchgw %ax, %ax                         #  3984  0x75335  3      
.L_76a80:                                #        0x75338  0      
  leal 0x260(%rsp), %esi                 #  3985  0x75338  7      
  movb $0x30, 0x262(%rsp)                #  3986  0x7533f  8      
  leaq 0x4(%rsi), %rax                   #  3987  0x75347  4      
  leaq 0x3(%rsi), %rdx                   #  3988  0x7534b  4      
  jmpq .L_76620                          #  3989  0x7534f  5      
  nop                                    #  3990  0x75354  1      
.L_76aa0:                                #        0x75355  0      
  testl %r10d, %r10d                     #  3991  0x75355  3      
  jne .L_76ac0                           #  3992  0x75358  6      
  testb $0x1, %r13b                      #  3993  0x7535e  4      
  movl $0x1, 0xc4(%rsp)                  #  3994  0x75362  11     
  je .L_74ca0                            #  3995  0x7536d  6      
  nop                                    #  3996  0x75373  1      
.L_76ac0:                                #        0x75374  0      
  addl $0x2, %r10d                       #  3997  0x75374  4      
  movl %r10d, 0xc4(%rsp)                 #  3998  0x75378  8      
  jmpq .L_74ca0                          #  3999  0x75380  5      
  nop                                    #  4000  0x75385  1      
.L_76ae0:                                #        0x75386  0      
  movq 0xb8(%rsp), %rdx                  #  4001  0x75386  8      
  movl %edx, %edx                        #  4002  0x7538e  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  4003  0x75390  6      
  orl $0x40, %eax                        #  4004  0x75396  3      
  movl %edx, %edx                        #  4005  0x75399  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  4006  0x7539b  6      
  jmpq .L_72d60                          #  4007  0x753a1  5      
.L_76b00:                                #        0x753a6  0      
  movl %edi, %edi                        #  4008  0x753a6  2      
  movzbl 0xa(%r15,%rdi,1), %ecx          #  4009  0x753a8  6      
  jmpq .L_76780                          #  4010  0x753ae  5      
  nop                                    #  4011  0x753b3  1      
  nop                                    #  4012  0x753b4  1      
.L_76b20:                                #        0x753b5  0      
  xorpd %xmm1, %xmm1                     #  4013  0x753b5  4      
  movsd 0xb0(%rsp), %xmm0                #  4014  0x753b9  9      
  ucomisd %xmm1, %xmm0                   #  4015  0x753c2  4      
  jne .L_76bc0                           #  4016  0x753c6  6      
  jp .L_76bc0                            #  4017  0x753cc  6      
  nop                                    #  4018  0x753d2  1      
  movl 0x27c(%rsp), %eax                 #  4019  0x753d3  7      
  jmpq .L_74be0                          #  4020  0x753da  5      
  nop                                    #  4021  0x753df  1      
  nop                                    #  4022  0x753e0  1      
.L_76b60:                                #        0x753e1  0      
  movq 0xc8(%rsp), %rax                  #  4023  0x753e1  8      
  movl %eax, %eax                        #  4024  0x753e9  2      
  movl (%r15,%rax,1), %ecx               #  4025  0x753eb  4      
  cmpl $0x2f, %ecx                       #  4026  0x753ef  3      
  ja .L_76be0                            #  4027  0x753f2  6      
  movq %rax, %rsi                        #  4028  0x753f8  3      
  movl %eax, %eax                        #  4029  0x753fb  2      
  movl 0xc(%r15,%rax,1), %eax            #  4030  0x753fd  5      
  addl %ecx, %eax                        #  4031  0x75402  2      
  nop                                    #  4032  0x75404  1      
  addl $0x8, %ecx                        #  4033  0x75405  3      
  movl %esi, %esi                        #  4034  0x75408  2      
  movl %ecx, (%r15,%rsi,1)               #  4035  0x7540a  4      
  nop                                    #  4036  0x7540e  1      
  nop                                    #  4037  0x7540f  1      
.L_76ba0:                                #        0x75410  0      
  movl %eax, %eax                        #  4038  0x75410  2      
  movl (%r15,%rax,1), %r10d              #  4039  0x75412  4      
  testl %r10d, %r10d                     #  4040  0x75416  3      
  jns .L_71ea0                           #  4041  0x75419  6      
  movl %r12d, %r12d                      #  4042  0x7541f  3      
  movzbl (%r15,%r12,1), %eax             #  4043  0x75422  5      
  orl $0xffffffff, %r10d                 #  4044  0x75427  7      
  jmpq .L_71680                          #  4045  0x7542e  5      
.L_76bc0:                                #        0x75433  0      
  movl $0x1, %eax                        #  4046  0x75433  5      
  subl 0xc4(%rsp), %eax                  #  4047  0x75438  7      
  movl %eax, 0x27c(%rsp)                 #  4048  0x7543f  7      
  jmpq .L_74be0                          #  4049  0x75446  5      
  nop                                    #  4050  0x7544b  1      
.L_76be0:                                #        0x7544c  0      
  movq 0xc8(%rsp), %rcx                  #  4051  0x7544c  8      
  movq 0xc8(%rsp), %rsi                  #  4052  0x75454  8      
  movl %ecx, %ecx                        #  4053  0x7545c  2      
  movl 0x8(%r15,%rcx,1), %eax            #  4054  0x7545e  5      
  leal 0x8(%rax), %ecx                   #  4055  0x75463  3      
  nop                                    #  4056  0x75466  1      
  movl %esi, %esi                        #  4057  0x75467  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  4058  0x75469  5      
  jmpq .L_76ba0                          #  4059  0x7546e  5      
  nop                                    #  4060  0x75473  1      
  nop                                    #  4061  0x75474  1      
.L_76c20:                                #        0x75475  0      
  movq %rcx, %rdx                        #  4062  0x75475  3      
  jmpq .L_74c20                          #  4063  0x75478  5      
  nop                                    #  4064  0x7547d  1      
  nop                                    #  4065  0x7547e  1      
.L_76c40:                                #        0x7547f  0      
  movq 0xb8(%rsp), %rcx                  #  4066  0x7547f  8      
  movl %ecx, %ecx                        #  4067  0x75487  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  4068  0x75489  6      
  orl $0x40, %eax                        #  4069  0x7548f  3      
  movl %ecx, %ecx                        #  4070  0x75492  2      
  movw %ax, 0xc(%r15,%rcx,1)             #  4071  0x75494  6      
  jmpq .L_72d60                          #  4072  0x7549a  5      
.L_76c60:                                #        0x7549f  0      
  movq 0xb8(%rsp), %rsi                  #  4073  0x7549f  8      
  movl %esi, %esi                        #  4074  0x754a7  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  4075  0x754a9  6      
  orl $0x40, %eax                        #  4076  0x754af  3      
  movl %esi, %esi                        #  4077  0x754b2  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  4078  0x754b4  6      
  jmpq .L_72d60                          #  4079  0x754ba  5      
.L_76c80:                                #        0x754bf  0      
  leal 0x260(%rsp), %esi                 #  4080  0x754bf  7      
  leaq 0x2(%rsi), %rax                   #  4081  0x754c6  4      
  jmpq .L_75ec0                          #  4082  0x754ca  5      
  nop                                    #  4083  0x754cf  1      
  nop                                    #  4084  0x754d0  1      
                                                                  
.size _vfprintf_r, .-_vfprintf_r

