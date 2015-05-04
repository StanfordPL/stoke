  .text
  .globl _svfiprintf_r
  .type _svfiprintf_r, @function

#! file-offset 0x811c0
#! rip-offset  0x811c0
#! capacity    12000 bytes

# Text                                #  Line  RIP      Bytes  
._svfiprintf_r:                       #        0x811c0  0      
  pushq %r14                          #  1     0x811c0  3      
  movl %esi, %esi                     #  2     0x811c3  2      
  movl %ecx, %ecx                     #  3     0x811c5  2      
  movl %edi, %r14d                    #  4     0x811c7  3      
  pushq %r13                          #  5     0x811ca  3      
  pushq %r12                          #  6     0x811cd  3      
  pushq %rbx                          #  7     0x811d0  2      
  movl %edx, %ebx                     #  8     0x811d2  2      
  movl $0x8, %edx                     #  9     0x811d4  5      
  subl $0x1e8, %esp                   #  10    0x811d9  6      
  addq %r15, %rsp                     #  11    0x811df  3      
  xchgw %ax, %ax                      #  12    0x811e2  3      
  leal 0x1c0(%rsp), %eax              #  13    0x811e5  7      
  movq %rsi, 0x78(%rsp)               #  14    0x811ec  5      
  xorl %esi, %esi                     #  15    0x811f1  2      
  movq %rcx, 0x80(%rsp)               #  16    0x811f3  8      
  movl %eax, %edi                     #  17    0x811fb  2      
  movq %rax, 0x38(%rsp)               #  18    0x811fd  5      
  nop                                 #  19    0x81202  1      
  nop                                 #  20    0x81203  1      
  nop                                 #  21    0x81204  1      
  callq .memset                       #  22    0x81205  5      
  movq 0x78(%rsp), %rdx               #  23    0x8120a  5      
  movl %edx, %edx                     #  24    0x8120f  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  25    0x81211  6      
  jns .L_81240                        #  26    0x81217  6      
  movl %edx, %edx                     #  27    0x8121d  2      
  movl 0x10(%r15,%rdx,1), %r10d       #  28    0x8121f  5      
  testl %r10d, %r10d                  #  29    0x81224  3      
  je .L_838c0                         #  30    0x81227  6      
  nop                                 #  31    0x8122d  1      
.L_81240:                             #        0x8122e  0      
  leal 0x150(%rsp), %eax              #  32    0x8122e  7      
  leal 0xe0(%rsp), %ecx               #  33    0x81235  7      
  movq %rbx, 0x60(%rsp)               #  34    0x8123c  5      
  leal 0x1cc(%rsp), %edx              #  35    0x81241  7      
  nop                                 #  36    0x81248  1      
  movl $0x0, 0x198(%rsp)              #  37    0x81249  11     
  movl $0x0, 0x194(%rsp)              #  38    0x81254  11     
  movq %rax, 0x30(%rsp)               #  39    0x8125f  5      
  nop                                 #  40    0x81264  1      
  movl %eax, 0x190(%rsp)              #  41    0x81265  7      
  movq %rax, %rbx                     #  42    0x8126c  3      
  movq %rcx, 0x28(%rsp)               #  43    0x8126f  5      
  movl 0x28(%rsp), %eax               #  44    0x81274  4      
  movq $0x0, 0xc0(%rsp)               #  45    0x81278  12     
  nop                                 #  46    0x81284  1      
  movq $0x0, 0xb0(%rsp)               #  47    0x81285  12     
  movl $0x0, 0xd4(%rsp)               #  48    0x81291  11     
  nop                                 #  49    0x8129c  1      
  movq $0x0, 0xd8(%rsp)               #  50    0x8129d  12     
  addl $0x64, %eax                    #  51    0x812a9  3      
  movl $0x0, 0x74(%rsp)               #  52    0x812ac  8      
  movq %rdx, 0x20(%rsp)               #  53    0x812b4  5      
  movl %eax, %eax                     #  54    0x812b9  2      
  movl %eax, %esi                     #  55    0x812bb  2      
  movq %rax, 0xb8(%rsp)               #  56    0x812bd  8      
  subl $0x1, %esi                     #  57    0x812c5  3      
  movq %rsi, 0xc8(%rsp)               #  58    0x812c8  8      
  nop                                 #  59    0x812d0  1      
.L_81300:                             #        0x812d1  0      
  movq 0x60(%rsp), %r12               #  60    0x812d1  5      
  movq %rbx, %r13                     #  61    0x812d6  3      
  jmpq .L_81360                       #  62    0x812d9  5      
  nop                                 #  63    0x812de  1      
  nop                                 #  64    0x812df  1      
.L_81320:                             #        0x812e0  0      
  cmpl $0x25, 0x1cc(%rsp)             #  65    0x812e0  8      
  je .L_81400                         #  66    0x812e8  6      
  nop                                 #  67    0x812ee  1      
  nop                                 #  68    0x812ef  1      
.L_81340:                             #        0x812f0  0      
  leal (%rax,%r12,1), %r12d           #  69    0x812f0  4      
  nop                                 #  70    0x812f4  1      
  nop                                 #  71    0x812f5  1      
.L_81360:                             #        0x812f6  0      
  movl 0xffaf8c4(%rip), %ebx          #  72    0x812f6  6      
  nop                                 #  73    0x812fc  1      
  nop                                 #  74    0x812fd  1      
  callq .__locale_charset             #  75    0x812fe  5      
  movl %eax, %r8d                     #  76    0x81303  3      
  movq %r8, 0x40(%rsp)                #  77    0x81306  5      
  nop                                 #  78    0x8130b  1      
  nop                                 #  79    0x8130c  1      
  callq .__locale_mb_cur_max          #  80    0x8130d  5      
  movl 0x38(%rsp), %r9d               #  81    0x81312  5      
  movl %eax, %ecx                     #  82    0x81317  2      
  movq 0x40(%rsp), %r8                #  83    0x81319  5      
  movl %r12d, %edx                    #  84    0x8131e  3      
  movl 0x20(%rsp), %esi               #  85    0x81321  4      
  movl %r14d, %edi                    #  86    0x81325  3      
  xchgw %ax, %ax                      #  87    0x81328  3      
  andl $0xffffffe0, %ebx              #  88    0x8132b  6      
  addq %r15, %rbx                     #  89    0x81331  3      
  callq %rbx                          #  90    0x81334  2      
  cmpl $0x0, %eax                     #  91    0x81336  3      
  je .L_81400                         #  92    0x81339  6      
  jge .L_81320                        #  93    0x8133f  6      
  movl 0x38(%rsp), %edi               #  94    0x81345  4      
  movl $0x8, %edx                     #  95    0x81349  5      
  xorl %esi, %esi                     #  96    0x8134e  2      
  nop                                 #  97    0x81350  1      
  callq .memset                       #  98    0x81351  5      
  movl $0x1, %eax                     #  99    0x81356  5      
  jmpq .L_81340                       #  100   0x8135b  5      
  nop                                 #  101   0x81360  1      
  nop                                 #  102   0x81361  1      
.L_81400:                             #        0x81362  0      
  movl %r12d, %ecx                    #  103   0x81362  3      
  subl 0x60(%rsp), %ecx               #  104   0x81365  4      
  movq %r13, %rbx                     #  105   0x81369  3      
  movl %eax, %r13d                    #  106   0x8136c  3      
  je .L_81480                         #  107   0x8136f  6      
  movl 0x60(%rsp), %eax               #  108   0x81375  4      
  movl %ebx, %ebx                     #  109   0x81379  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  110   0x8137b  5      
  nop                                 #  111   0x81380  1      
  addl %ecx, 0x198(%rsp)              #  112   0x81381  7      
  movl %ebx, %ebx                     #  113   0x81388  2      
  movl %eax, (%r15,%rbx,1)            #  114   0x8138a  4      
  movl 0x194(%rsp), %eax              #  115   0x8138e  7      
  addl $0x1, %eax                     #  116   0x81395  3      
  cmpl $0x7, %eax                     #  117   0x81398  3      
  nop                                 #  118   0x8139b  1      
  movl %eax, 0x194(%rsp)              #  119   0x8139c  7      
  jg .L_82800                         #  120   0x813a3  6      
  addl $0x8, %ebx                     #  121   0x813a9  3      
  nop                                 #  122   0x813ac  1      
  nop                                 #  123   0x813ad  1      
.L_81460:                             #        0x813ae  0      
  addl %ecx, 0x74(%rsp)               #  124   0x813ae  4      
  nop                                 #  125   0x813b2  1      
  nop                                 #  126   0x813b3  1      
.L_81480:                             #        0x813b4  0      
  testl %r13d, %r13d                  #  127   0x813b4  3      
  je .L_82f80                         #  128   0x813b7  6      
  addl $0x1, %r12d                    #  129   0x813bd  4      
  movb $0x0, 0x1df(%rsp)              #  130   0x813c1  8      
  movl $0xffffffff, %r8d              #  131   0x813c9  6      
  movq %r12, %rdx                     #  132   0x813cf  3      
  xchgw %ax, %ax                      #  133   0x813d2  3      
  movq %r12, 0x60(%rsp)               #  134   0x813d5  5      
  movl %r12d, %r12d                   #  135   0x813da  3      
  movzbl (%r15,%r12,1), %eax          #  136   0x813dd  5      
  movq %rdx, %r13                     #  137   0x813e2  3      
  movl $0x0, 0x8c(%rsp)               #  138   0x813e5  11     
  xorl %r12d, %r12d                   #  139   0x813f0  3      
  xchgw %ax, %ax                      #  140   0x813f3  3      
.L_814c0:                             #        0x813f6  0      
  movsbl %al, %eax                    #  141   0x813f6  3      
  addl $0x1, %r13d                    #  142   0x813f9  4      
  nop                                 #  143   0x813fd  1      
  nop                                 #  144   0x813fe  1      
.L_814e0:                             #        0x813ff  0      
  leal -0x20(%rax), %edx              #  145   0x813ff  3      
  cmpl $0x5a, %edx                    #  146   0x81402  3      
  jbe .L_81b60                        #  147   0x81405  6      
  nop                                 #  148   0x8140b  1      
  nop                                 #  149   0x8140c  1      
  testl %eax, %eax                    #  150   0x8140d  2      
  movq %r13, 0x60(%rsp)               #  151   0x8140f  5      
  je .L_82f80                         #  152   0x81414  6      
  leal 0xe0(%rsp), %edx               #  153   0x8141a  7      
  movb %al, 0xe0(%rsp)                #  154   0x81421  7      
  nop                                 #  155   0x81428  1      
  movb $0x0, 0x1df(%rsp)              #  156   0x81429  8      
  movl $0x1, 0x68(%rsp)               #  157   0x81431  8      
  movl $0x1, 0x70(%rsp)               #  158   0x81439  8      
  movq %rdx, 0x98(%rsp)               #  159   0x81441  8      
.L_81540:                             #        0x81449  0      
  movq $0x0, 0x90(%rsp)               #  160   0x81449  12     
  movl $0x0, 0xac(%rsp)               #  161   0x81455  11     
  nop                                 #  162   0x81460  1      
.L_81560:                             #        0x81461  0      
  movl 0x68(%rsp), %eax               #  163   0x81461  4      
  movl %r12d, %ecx                    #  164   0x81465  3      
  movl %r12d, %esi                    #  165   0x81468  3      
  addl $0x2, %eax                     #  166   0x8146b  3      
  andl $0x2, %ecx                     #  167   0x8146e  3      
  cmovel 0x68(%rsp), %eax             #  168   0x81471  5      
  andl $0x84, %esi                    #  169   0x81476  3      
  nop                                 #  170   0x81479  1      
  movl %ecx, 0xa8(%rsp)               #  171   0x8147a  7      
  movl %esi, 0xa4(%rsp)               #  172   0x81481  7      
  movl %eax, 0x68(%rsp)               #  173   0x81488  4      
  jne .L_816e0                        #  174   0x8148c  6      
  movl 0x8c(%rsp), %r13d              #  175   0x81492  8      
  subl %eax, %r13d                    #  176   0x8149a  3      
  testl %r13d, %r13d                  #  177   0x8149d  3      
  jle .L_816e0                        #  178   0x814a0  6      
  cmpl $0x10, %r13d                   #  179   0x814a6  4      
  jle .L_816a0                        #  180   0x814aa  6      
  leal 0x190(%rsp), %eax              #  181   0x814b0  7      
  nop                                 #  182   0x814b7  1      
  movq %rax, 0x10(%rsp)               #  183   0x814b8  5      
  movq %rbx, %rax                     #  184   0x814bd  3      
  movq 0x78(%rsp), %rbx               #  185   0x814c0  5      
  jmpq .L_81600                       #  186   0x814c5  5      
  xchgw %ax, %ax                      #  187   0x814ca  3      
  nop                                 #  188   0x814cd  1      
.L_815e0:                             #        0x814ce  0      
  subl $0x10, %r13d                   #  189   0x814ce  4      
  addl $0x8, %eax                     #  190   0x814d2  3      
  cmpl $0x10, %r13d                   #  191   0x814d5  4      
  jle .L_81680                        #  192   0x814d9  6      
  nop                                 #  193   0x814df  1      
.L_81600:                             #        0x814e0  0      
  movl %eax, %eax                     #  194   0x814e0  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  195   0x814e2  9      
  movl 0x194(%rsp), %edx              #  196   0x814eb  7      
  addl $0x10, 0x198(%rsp)             #  197   0x814f2  8      
  nop                                 #  198   0x814fa  1      
  movl %eax, %eax                     #  199   0x814fb  2      
  movl $0x10024c30, (%r15,%rax,1)     #  200   0x814fd  8      
  addl $0x1, %edx                     #  201   0x81505  3      
  cmpl $0x7, %edx                     #  202   0x81508  3      
  movl %edx, 0x194(%rsp)              #  203   0x8150b  7      
  jle .L_815e0                        #  204   0x81512  6      
  movl 0x10(%rsp), %edx               #  205   0x81518  4      
  movl %ebx, %esi                     #  206   0x8151c  2      
  nop                                 #  207   0x8151e  1      
  movl %r14d, %edi                    #  208   0x8151f  3      
  nop                                 #  209   0x81522  1      
  nop                                 #  210   0x81523  1      
  callq .__ssprint_r                  #  211   0x81524  5      
  testl %eax, %eax                    #  212   0x81529  2      
  jne .L_825c0                        #  213   0x8152b  6      
  subl $0x10, %r13d                   #  214   0x81531  4      
  leal 0x150(%rsp), %eax              #  215   0x81535  7      
  cmpl $0x10, %r13d                   #  216   0x8153c  4      
  jg .L_81600                         #  217   0x81540  6      
  nop                                 #  218   0x81546  1      
.L_81680:                             #        0x81547  0      
  movq %rax, %rbx                     #  219   0x81547  3      
  nop                                 #  220   0x8154a  1      
  nop                                 #  221   0x8154b  1      
.L_816a0:                             #        0x8154c  0      
  movl %ebx, %ebx                     #  222   0x8154c  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  223   0x8154e  5      
  movl 0x194(%rsp), %eax              #  224   0x81553  7      
  addl %r13d, 0x198(%rsp)             #  225   0x8155a  8      
  movl %ebx, %ebx                     #  226   0x81562  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  227   0x81564  8      
  addl $0x1, %eax                     #  228   0x8156c  3      
  cmpl $0x7, %eax                     #  229   0x8156f  3      
  movl %eax, 0x194(%rsp)              #  230   0x81572  7      
  jg .L_82a60                         #  231   0x81579  6      
  addl $0x8, %ebx                     #  232   0x8157f  3      
  nop                                 #  233   0x81582  1      
.L_816e0:                             #        0x81583  0      
  cmpb $0x0, 0x1df(%rsp)              #  234   0x81583  8      
  je .L_81740                         #  235   0x8158b  6      
  leal 0x1df(%rsp), %eax              #  236   0x81591  7      
  movl %ebx, %ebx                     #  237   0x81598  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  238   0x8159a  9      
  nop                                 #  239   0x815a3  1      
  addl $0x1, 0x198(%rsp)              #  240   0x815a4  8      
  movl %ebx, %ebx                     #  241   0x815ac  2      
  movl %eax, (%r15,%rbx,1)            #  242   0x815ae  4      
  movl 0x194(%rsp), %eax              #  243   0x815b2  7      
  addl $0x1, %eax                     #  244   0x815b9  3      
  cmpl $0x7, %eax                     #  245   0x815bc  3      
  nop                                 #  246   0x815bf  1      
  movl %eax, 0x194(%rsp)              #  247   0x815c0  7      
  jg .L_82880                         #  248   0x815c7  6      
  addl $0x8, %ebx                     #  249   0x815cd  3      
  nop                                 #  250   0x815d0  1      
  nop                                 #  251   0x815d1  1      
.L_81740:                             #        0x815d2  0      
  movl 0xa8(%rsp), %ecx               #  252   0x815d2  7      
  testl %ecx, %ecx                    #  253   0x815d9  2      
  je .L_817a0                         #  254   0x815db  6      
  leal 0x1d0(%rsp), %eax              #  255   0x815e1  7      
  movl %ebx, %ebx                     #  256   0x815e8  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  257   0x815ea  9      
  nop                                 #  258   0x815f3  1      
  addl $0x2, 0x198(%rsp)              #  259   0x815f4  8      
  movl %ebx, %ebx                     #  260   0x815fc  2      
  movl %eax, (%r15,%rbx,1)            #  261   0x815fe  4      
  movl 0x194(%rsp), %eax              #  262   0x81602  7      
  addl $0x1, %eax                     #  263   0x81609  3      
  cmpl $0x7, %eax                     #  264   0x8160c  3      
  nop                                 #  265   0x8160f  1      
  movl %eax, 0x194(%rsp)              #  266   0x81610  7      
  jg .L_828c0                         #  267   0x81617  6      
  addl $0x8, %ebx                     #  268   0x8161d  3      
  nop                                 #  269   0x81620  1      
  nop                                 #  270   0x81621  1      
.L_817a0:                             #        0x81622  0      
  cmpl $0x80, 0xa4(%rsp)              #  271   0x81622  8      
  je .L_82640                         #  272   0x8162a  6      
  nop                                 #  273   0x81630  1      
.L_817c0:                             #        0x81631  0      
  movl 0xac(%rsp), %r13d              #  274   0x81631  8      
  subl 0x70(%rsp), %r13d              #  275   0x81639  5      
  testl %r13d, %r13d                  #  276   0x8163e  3      
  jle .L_81900                        #  277   0x81641  6      
  cmpl $0x10, %r13d                   #  278   0x81647  4      
  jle .L_818c0                        #  279   0x8164b  6      
  leal 0x190(%rsp), %ecx              #  280   0x81651  7      
  movq %rbx, %rax                     #  281   0x81658  3      
  movq 0x78(%rsp), %rbx               #  282   0x8165b  5      
  movq %rcx, (%rsp)                   #  283   0x81660  4      
  jmpq .L_81820                       #  284   0x81664  5      
  nop                                 #  285   0x81669  1      
.L_81800:                             #        0x8166a  0      
  subl $0x10, %r13d                   #  286   0x8166a  4      
  addl $0x8, %eax                     #  287   0x8166e  3      
  cmpl $0x10, %r13d                   #  288   0x81671  4      
  jle .L_818a0                        #  289   0x81675  6      
  nop                                 #  290   0x8167b  1      
.L_81820:                             #        0x8167c  0      
  movl %eax, %eax                     #  291   0x8167c  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  292   0x8167e  9      
  movl 0x194(%rsp), %edx              #  293   0x81687  7      
  addl $0x10, 0x198(%rsp)             #  294   0x8168e  8      
  nop                                 #  295   0x81696  1      
  movl %eax, %eax                     #  296   0x81697  2      
  movl $0x10024c20, (%r15,%rax,1)     #  297   0x81699  8      
  addl $0x1, %edx                     #  298   0x816a1  3      
  cmpl $0x7, %edx                     #  299   0x816a4  3      
  movl %edx, 0x194(%rsp)              #  300   0x816a7  7      
  jle .L_81800                        #  301   0x816ae  6      
  movl (%rsp), %edx                   #  302   0x816b4  3      
  movl %ebx, %esi                     #  303   0x816b7  2      
  xchgw %ax, %ax                      #  304   0x816b9  3      
  movl %r14d, %edi                    #  305   0x816bc  3      
  nop                                 #  306   0x816bf  1      
  nop                                 #  307   0x816c0  1      
  callq .__ssprint_r                  #  308   0x816c1  5      
  testl %eax, %eax                    #  309   0x816c6  2      
  jne .L_825c0                        #  310   0x816c8  6      
  subl $0x10, %r13d                   #  311   0x816ce  4      
  leal 0x150(%rsp), %eax              #  312   0x816d2  7      
  cmpl $0x10, %r13d                   #  313   0x816d9  4      
  jg .L_81820                         #  314   0x816dd  6      
  nop                                 #  315   0x816e3  1      
.L_818a0:                             #        0x816e4  0      
  movq %rax, %rbx                     #  316   0x816e4  3      
  nop                                 #  317   0x816e7  1      
  nop                                 #  318   0x816e8  1      
.L_818c0:                             #        0x816e9  0      
  movl %ebx, %ebx                     #  319   0x816e9  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  320   0x816eb  5      
  movl 0x194(%rsp), %eax              #  321   0x816f0  7      
  addl %r13d, 0x198(%rsp)             #  322   0x816f7  8      
  movl %ebx, %ebx                     #  323   0x816ff  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  324   0x81701  8      
  addl $0x1, %eax                     #  325   0x81709  3      
  cmpl $0x7, %eax                     #  326   0x8170c  3      
  movl %eax, 0x194(%rsp)              #  327   0x8170f  7      
  jg .L_82840                         #  328   0x81716  6      
  addl $0x8, %ebx                     #  329   0x8171c  3      
  nop                                 #  330   0x8171f  1      
.L_81900:                             #        0x81720  0      
  movl 0x70(%rsp), %eax               #  331   0x81720  4      
  movl 0x98(%rsp), %esi               #  332   0x81724  7      
  movl %ebx, %ebx                     #  333   0x8172b  2      
  movl %eax, 0x4(%r15,%rbx,1)         #  334   0x8172d  5      
  addl %eax, 0x198(%rsp)              #  335   0x81732  7      
  movl 0x194(%rsp), %eax              #  336   0x81739  7      
  movl %ebx, %ebx                     #  337   0x81740  2      
  movl %esi, (%r15,%rbx,1)            #  338   0x81742  4      
  addl $0x1, %eax                     #  339   0x81746  3      
  cmpl $0x7, %eax                     #  340   0x81749  3      
  movl %eax, 0x194(%rsp)              #  341   0x8174c  7      
  jg .L_82780                         #  342   0x81753  6      
  addl $0x8, %ebx                     #  343   0x81759  3      
  nop                                 #  344   0x8175c  1      
.L_81940:                             #        0x8175d  0      
  andl $0x4, %r12d                    #  345   0x8175d  4      
  je .L_81ac0                         #  346   0x81761  6      
  movl 0x8c(%rsp), %r12d              #  347   0x81767  8      
  subl 0x68(%rsp), %r12d              #  348   0x8176f  5      
  testl %r12d, %r12d                  #  349   0x81774  3      
  jle .L_81ac0                        #  350   0x81777  6      
  cmpl $0x10, %r12d                   #  351   0x8177d  4      
  jle .L_81a40                        #  352   0x81781  6      
  movq %rbx, %rax                     #  353   0x81787  3      
  leal 0x190(%rsp), %r13d             #  354   0x8178a  8      
  movq 0x78(%rsp), %rbx               #  355   0x81792  5      
  jmpq .L_819a0                       #  356   0x81797  5      
  nop                                 #  357   0x8179c  1      
.L_81980:                             #        0x8179d  0      
  subl $0x10, %r12d                   #  358   0x8179d  4      
  addl $0x8, %eax                     #  359   0x817a1  3      
  cmpl $0x10, %r12d                   #  360   0x817a4  4      
  jle .L_81a20                        #  361   0x817a8  6      
  nop                                 #  362   0x817ae  1      
.L_819a0:                             #        0x817af  0      
  movl %eax, %eax                     #  363   0x817af  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  364   0x817b1  9      
  movl 0x194(%rsp), %edx              #  365   0x817ba  7      
  addl $0x10, 0x198(%rsp)             #  366   0x817c1  8      
  nop                                 #  367   0x817c9  1      
  movl %eax, %eax                     #  368   0x817ca  2      
  movl $0x10024c30, (%r15,%rax,1)     #  369   0x817cc  8      
  addl $0x1, %edx                     #  370   0x817d4  3      
  cmpl $0x7, %edx                     #  371   0x817d7  3      
  movl %edx, 0x194(%rsp)              #  372   0x817da  7      
  jle .L_81980                        #  373   0x817e1  6      
  movl %r13d, %edx                    #  374   0x817e7  3      
  movl %ebx, %esi                     #  375   0x817ea  2      
  xchgw %ax, %ax                      #  376   0x817ec  3      
  movl %r14d, %edi                    #  377   0x817ef  3      
  nop                                 #  378   0x817f2  1      
  nop                                 #  379   0x817f3  1      
  callq .__ssprint_r                  #  380   0x817f4  5      
  testl %eax, %eax                    #  381   0x817f9  2      
  jne .L_825c0                        #  382   0x817fb  6      
  subl $0x10, %r12d                   #  383   0x81801  4      
  leal 0x150(%rsp), %eax              #  384   0x81805  7      
  cmpl $0x10, %r12d                   #  385   0x8180c  4      
  jg .L_819a0                         #  386   0x81810  6      
  nop                                 #  387   0x81816  1      
.L_81a20:                             #        0x81817  0      
  movq %rax, %rbx                     #  388   0x81817  3      
  nop                                 #  389   0x8181a  1      
  nop                                 #  390   0x8181b  1      
.L_81a40:                             #        0x8181c  0      
  movl %ebx, %ebx                     #  391   0x8181c  2      
  movl %r12d, 0x4(%r15,%rbx,1)        #  392   0x8181e  5      
  movl 0x194(%rsp), %eax              #  393   0x81823  7      
  addl 0x198(%rsp), %r12d             #  394   0x8182a  8      
  movl %ebx, %ebx                     #  395   0x81832  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  396   0x81834  8      
  addl $0x1, %eax                     #  397   0x8183c  3      
  cmpl $0x7, %eax                     #  398   0x8183f  3      
  movl %eax, 0x194(%rsp)              #  399   0x81842  7      
  movl %r12d, 0x198(%rsp)             #  400   0x81849  8      
  jle .L_81ae0                        #  401   0x81851  6      
  movl 0x78(%rsp), %esi               #  402   0x81857  4      
  nop                                 #  403   0x8185b  1      
  leal 0x190(%rsp), %edx              #  404   0x8185c  7      
  movl %r14d, %edi                    #  405   0x81863  3      
  xchgw %ax, %ax                      #  406   0x81866  3      
  nop                                 #  407   0x81869  1      
  callq .__ssprint_r                  #  408   0x8186a  5      
  testl %eax, %eax                    #  409   0x8186f  2      
  jne .L_825c0                        #  410   0x81871  6      
  nop                                 #  411   0x81877  1      
  nop                                 #  412   0x81878  1      
.L_81ac0:                             #        0x81879  0      
  movl 0x198(%rsp), %r12d             #  413   0x81879  8      
  nop                                 #  414   0x81881  1      
  nop                                 #  415   0x81882  1      
.L_81ae0:                             #        0x81883  0      
  movl 0x8c(%rsp), %edx               #  416   0x81883  7      
  cmpl %edx, 0x68(%rsp)               #  417   0x8188a  4      
  movl %edx, %eax                     #  418   0x8188e  2      
  cmovgel 0x68(%rsp), %eax            #  419   0x81890  5      
  addl %eax, 0x74(%rsp)               #  420   0x81895  4      
  testl %r12d, %r12d                  #  421   0x81899  3      
  jne .L_827c0                        #  422   0x8189c  6      
  nop                                 #  423   0x818a2  1      
.L_81b00:                             #        0x818a3  0      
  cmpq $0x0, 0x90(%rsp)               #  424   0x818a3  9      
  movl $0x0, 0x194(%rsp)              #  425   0x818ac  11     
  leal 0x150(%rsp), %ebx              #  426   0x818b7  7      
  nop                                 #  427   0x818be  1      
  je .L_81300                         #  428   0x818bf  6      
  movl 0x90(%rsp), %esi               #  429   0x818c5  7      
  movl %r14d, %edi                    #  430   0x818cc  3      
  leal 0x150(%rsp), %ebx              #  431   0x818cf  7      
  nop                                 #  432   0x818d6  1      
  callq ._free_r                      #  433   0x818d7  5      
  jmpq .L_81300                       #  434   0x818dc  5      
  nop                                 #  435   0x818e1  1      
  nop                                 #  436   0x818e2  1      
.L_81b60:                             #        0x818e3  0      
  movl %edx, %edx                     #  437   0x818e3  2      
  movl %edx, %edx                     #  438   0x818e5  2      
  movq 0x10024940(%r15,%rdx,8), %rdx  #  439   0x818e7  8      
  andl $0xffffffe0, %edx              #  440   0x818ef  6      
  addq %r15, %rdx                     #  441   0x818f5  3      
  jmpq %rdx                           #  442   0x818f8  2      
  nop                                 #  443   0x818fa  1      
  cmpb $0x0, 0x1df(%rsp)              #  444   0x818fb  8      
  je .L_82ac0                         #  445   0x81903  6      
  nop                                 #  446   0x81909  1      
  nop                                 #  447   0x8190a  1      
.L_81ba0:                             #        0x8190b  0      
  movl %r13d, %r13d                   #  448   0x8190b  3      
  movzbl (%r15,%r13,1), %eax          #  449   0x8190e  5      
  jmpq .L_814c0                       #  450   0x81913  5      
  nop                                 #  451   0x81918  1      
  nop                                 #  452   0x81919  1      
  orl $0x20, %r12d                    #  453   0x8191a  4      
  movl %r13d, %r13d                   #  454   0x8191e  3      
  movzbl (%r15,%r13,1), %eax          #  455   0x81921  5      
  jmpq .L_814c0                       #  456   0x81926  5      
  nop                                 #  457   0x8192b  1      
  movq 0x80(%rsp), %rsi               #  458   0x8192c  8      
  movl %esi, %esi                     #  459   0x81934  2      
  movl (%r15,%rsi,1), %eax            #  460   0x81936  4      
  cmpl $0x2f, %eax                    #  461   0x8193a  3      
  ja .L_82bc0                         #  462   0x8193d  6      
  movl %esi, %esi                     #  463   0x81943  2      
  movl 0xc(%r15,%rsi,1), %edx         #  464   0x81945  5      
  addl %eax, %edx                     #  465   0x8194a  2      
  addl $0x8, %eax                     #  466   0x8194c  3      
  movl %esi, %esi                     #  467   0x8194f  2      
  movl %eax, (%r15,%rsi,1)            #  468   0x81951  4      
  nop                                 #  469   0x81955  1      
  nop                                 #  470   0x81956  1      
.L_81c20:                             #        0x81957  0      
  movl %edx, %edx                     #  471   0x81957  2      
  movl (%r15,%rdx,1), %edx            #  472   0x81959  4      
  testl %edx, %edx                    #  473   0x8195d  2      
  movl %edx, 0x8c(%rsp)               #  474   0x8195f  7      
  jns .L_81ba0                        #  475   0x81966  6      
  negl 0x8c(%rsp)                     #  476   0x8196c  7      
  nop                                 #  477   0x81973  1      
  orl $0x4, %r12d                     #  478   0x81974  4      
  movl %r13d, %r13d                   #  479   0x81978  3      
  movzbl (%r15,%r13,1), %eax          #  480   0x8197b  5      
  jmpq .L_814c0                       #  481   0x81980  5      
  nop                                 #  482   0x81985  1      
  testb $0x20, %r12b                  #  483   0x81986  4      
  movq %r13, 0x60(%rsp)               #  484   0x8198a  5      
  movq $0x10023be0, 0xc0(%rsp)        #  485   0x8198f  12     
  je .L_82180                         #  486   0x8199b  6      
  nop                                 #  487   0x819a1  1      
.L_81c80:                             #        0x819a2  0      
  movq 0x80(%rsp), %rcx               #  488   0x819a2  8      
  movl %ecx, %ecx                     #  489   0x819aa  2      
  movl (%r15,%rcx,1), %edx            #  490   0x819ac  4      
  cmpl $0x2f, %edx                    #  491   0x819b0  3      
  jbe .L_82d20                        #  492   0x819b3  6      
  movq 0x80(%rsp), %rdx               #  493   0x819b9  8      
  nop                                 #  494   0x819c1  1      
  movq 0x80(%rsp), %rsi               #  495   0x819c2  8      
  movl %edx, %edx                     #  496   0x819ca  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  497   0x819cc  5      
  leal 0x8(%rcx), %edx                #  498   0x819d1  3      
  movl %esi, %esi                     #  499   0x819d4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  500   0x819d6  5      
  nop                                 #  501   0x819db  1      
.L_81cc0:                             #        0x819dc  0      
  movl %ecx, %ecx                     #  502   0x819dc  2      
  movq (%r15,%rcx,1), %r13            #  503   0x819de  4      
  jmpq .L_821e0                       #  504   0x819e2  5      
  nop                                 #  505   0x819e7  1      
  nop                                 #  506   0x819e8  1      
  movq %r13, 0x60(%rsp)               #  507   0x819e9  5      
  orl $0x10, %r12d                    #  508   0x819ee  4      
  nop                                 #  509   0x819f2  1      
  nop                                 #  510   0x819f3  1      
.L_81d00:                             #        0x819f4  0      
  testb $0x20, %r12b                  #  511   0x819f4  4      
  je .L_82980                         #  512   0x819f8  6      
  movq 0x80(%rsp), %rdx               #  513   0x819fe  8      
  movl %edx, %edx                     #  514   0x81a06  2      
  movl (%r15,%rdx,1), %eax            #  515   0x81a08  4      
  cmpl $0x2f, %eax                    #  516   0x81a0c  3      
  nop                                 #  517   0x81a0f  1      
  ja .L_82d00                         #  518   0x81a10  6      
  movq %rdx, %rcx                     #  519   0x81a16  3      
  movl %edx, %edx                     #  520   0x81a19  2      
  movl 0xc(%r15,%rdx,1), %edx         #  521   0x81a1b  5      
  addl %eax, %edx                     #  522   0x81a20  2      
  addl $0x8, %eax                     #  523   0x81a22  3      
  movl %ecx, %ecx                     #  524   0x81a25  2      
  movl %eax, (%r15,%rcx,1)            #  525   0x81a27  4      
  nop                                 #  526   0x81a2b  1      
.L_81d40:                             #        0x81a2c  0      
  movl %edx, %edx                     #  527   0x81a2c  2      
  movq (%r15,%rdx,1), %r13            #  528   0x81a2e  4      
  movl $0x1, %eax                     #  529   0x81a32  5      
  testq %r13, %r13                    #  530   0x81a37  3      
  setne %dl                           #  531   0x81a3a  3      
  jmpq .L_822c0                       #  532   0x81a3d  5      
  nop                                 #  533   0x81a42  1      
  cmpl $0x43, %eax                    #  534   0x81a43  3      
  movq %r13, 0x60(%rsp)               #  535   0x81a46  5      
  je .L_82ec0                         #  536   0x81a4b  6      
  testb $0x10, %r12b                  #  537   0x81a51  4      
  jne .L_82ec0                        #  538   0x81a55  6      
  movq 0x80(%rsp), %rdx               #  539   0x81a5b  8      
  movl %edx, %edx                     #  540   0x81a63  2      
  movl (%r15,%rdx,1), %eax            #  541   0x81a65  4      
  cmpl $0x2f, %eax                    #  542   0x81a69  3      
  ja .L_838a0                         #  543   0x81a6c  6      
  movq %rdx, %rcx                     #  544   0x81a72  3      
  movl %edx, %edx                     #  545   0x81a75  2      
  movl 0xc(%r15,%rdx,1), %edx         #  546   0x81a77  5      
  addl %eax, %edx                     #  547   0x81a7c  2      
  addl $0x8, %eax                     #  548   0x81a7e  3      
  xchgw %ax, %ax                      #  549   0x81a81  3      
  movl %ecx, %ecx                     #  550   0x81a84  2      
  movl %eax, (%r15,%rcx,1)            #  551   0x81a86  4      
  nop                                 #  552   0x81a8a  1      
  nop                                 #  553   0x81a8b  1      
.L_81dc0:                             #        0x81a8c  0      
  movl %edx, %edx                     #  554   0x81a8c  2      
  movl (%r15,%rdx,1), %eax            #  555   0x81a8e  4      
  movl $0x1, 0x70(%rsp)               #  556   0x81a92  8      
  movb %al, 0xe0(%rsp)                #  557   0x81a9a  7      
  nop                                 #  558   0x81aa1  1      
.L_81de0:                             #        0x81aa2  0      
  movl 0x70(%rsp), %r8d               #  559   0x81aa2  5      
  movl $0x0, %eax                     #  560   0x81aa7  5      
  leal 0xe0(%rsp), %edx               #  561   0x81aac  7      
  movb $0x0, 0x1df(%rsp)              #  562   0x81ab3  8      
  nop                                 #  563   0x81abb  1      
  movq %rdx, 0x98(%rsp)               #  564   0x81abc  8      
  testl %r8d, %r8d                    #  565   0x81ac4  3      
  cmovnsl 0x70(%rsp), %eax            #  566   0x81ac7  5      
  movl %eax, 0x68(%rsp)               #  567   0x81acc  4      
  jmpq .L_81540                       #  568   0x81ad0  5      
  nop                                 #  569   0x81ad5  1      
  movq %r13, 0x60(%rsp)               #  570   0x81ad6  5      
  orl $0x10, %r12d                    #  571   0x81adb  4      
  nop                                 #  572   0x81adf  1      
  nop                                 #  573   0x81ae0  1      
.L_81e40:                             #        0x81ae1  0      
  testb $0x20, %r12b                  #  574   0x81ae1  4      
  je .L_82900                         #  575   0x81ae5  6      
  movq 0x80(%rsp), %rcx               #  576   0x81aeb  8      
  movl %ecx, %ecx                     #  577   0x81af3  2      
  movl (%r15,%rcx,1), %eax            #  578   0x81af5  4      
  cmpl $0x2f, %eax                    #  579   0x81af9  3      
  nop                                 #  580   0x81afc  1      
  ja .L_82e60                         #  581   0x81afd  6      
  movl %ecx, %ecx                     #  582   0x81b03  2      
  movl 0xc(%r15,%rcx,1), %edx         #  583   0x81b05  5      
  addl %eax, %edx                     #  584   0x81b0a  2      
  addl $0x8, %eax                     #  585   0x81b0c  3      
  movl %ecx, %ecx                     #  586   0x81b0f  2      
  movl %eax, (%r15,%rcx,1)            #  587   0x81b11  4      
  nop                                 #  588   0x81b15  1      
.L_81e80:                             #        0x81b16  0      
  movl %edx, %edx                     #  589   0x81b16  2      
  movq (%r15,%rdx,1), %r13            #  590   0x81b18  4      
  jmpq .L_82960                       #  591   0x81b1c  5      
  nop                                 #  592   0x81b21  1      
  nop                                 #  593   0x81b22  1      
  movq %r13, 0x60(%rsp)               #  594   0x81b23  5      
  orl $0x10, %r12d                    #  595   0x81b28  4      
  nop                                 #  596   0x81b2c  1      
  nop                                 #  597   0x81b2d  1      
.L_81ec0:                             #        0x81b2e  0      
  testb $0x20, %r12b                  #  598   0x81b2e  4      
  je .L_829e0                         #  599   0x81b32  6      
  movq 0x80(%rsp), %rcx               #  600   0x81b38  8      
  movl %ecx, %ecx                     #  601   0x81b40  2      
  movl (%r15,%rcx,1), %eax            #  602   0x81b42  4      
  cmpl $0x2f, %eax                    #  603   0x81b46  3      
  nop                                 #  604   0x81b49  1      
  ja .L_82ce0                         #  605   0x81b4a  6      
  movl %ecx, %ecx                     #  606   0x81b50  2      
  movl 0xc(%r15,%rcx,1), %edx         #  607   0x81b52  5      
  addl %eax, %edx                     #  608   0x81b57  2      
  addl $0x8, %eax                     #  609   0x81b59  3      
  movl %ecx, %ecx                     #  610   0x81b5c  2      
  movl %eax, (%r15,%rcx,1)            #  611   0x81b5e  4      
  nop                                 #  612   0x81b62  1      
.L_81f00:                             #        0x81b63  0      
  movl %edx, %edx                     #  613   0x81b63  2      
  movq (%r15,%rdx,1), %r13            #  614   0x81b65  4      
  nop                                 #  615   0x81b69  1      
  nop                                 #  616   0x81b6a  1      
.L_81f20:                             #        0x81b6b  0      
  cmpq $0x0, %r13                     #  617   0x81b6b  4      
  jl .L_82a40                         #  618   0x81b6f  6      
  nop                                 #  619   0x81b75  1      
  nop                                 #  620   0x81b76  1      
.L_81f40:                             #        0x81b77  0      
  setne %dl                           #  621   0x81b77  3      
  movl $0x1, %eax                     #  622   0x81b7a  5      
  jmpq .L_822e0                       #  623   0x81b7f  5      
  nop                                 #  624   0x81b84  1      
  nop                                 #  625   0x81b85  1      
  movq 0x80(%rsp), %rcx               #  626   0x81b86  8      
  movq %r13, 0x60(%rsp)               #  627   0x81b8e  5      
  movl %ecx, %ecx                     #  628   0x81b93  2      
  movl (%r15,%rcx,1), %edx            #  629   0x81b95  4      
  cmpl $0x2f, %edx                    #  630   0x81b99  3      
  ja .L_82e20                         #  631   0x81b9c  6      
  movq %rcx, %rsi                     #  632   0x81ba2  3      
  nop                                 #  633   0x81ba5  1      
  movl %ecx, %ecx                     #  634   0x81ba6  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  635   0x81ba8  5      
  addl %edx, %ecx                     #  636   0x81bad  2      
  addl $0x8, %edx                     #  637   0x81baf  3      
  movl %esi, %esi                     #  638   0x81bb2  2      
  movl %edx, (%r15,%rsi,1)            #  639   0x81bb4  4      
  nop                                 #  640   0x81bb8  1      
.L_81fa0:                             #        0x81bb9  0      
  movl %ecx, %ecx                     #  641   0x81bb9  2      
  movl (%r15,%rcx,1), %ecx            #  642   0x81bbb  4      
  movb $0x0, 0x1df(%rsp)              #  643   0x81bbf  8      
  testq %rcx, %rcx                    #  644   0x81bc7  3      
  movq %rcx, 0x98(%rsp)               #  645   0x81bca  8      
  je .L_83c60                         #  646   0x81bd2  6      
  nop                                 #  647   0x81bd8  1      
  cmpl $0x53, %eax                    #  648   0x81bd9  3      
  je .L_83380                         #  649   0x81bdc  6      
  movl %r12d, %r13d                   #  650   0x81be2  3      
  andl $0x10, %r13d                   #  651   0x81be5  4      
  jne .L_83380                        #  652   0x81be9  6      
  testl %r8d, %r8d                    #  653   0x81bef  3      
  js .L_83cc0                         #  654   0x81bf2  6      
  nop                                 #  655   0x81bf8  1      
  movl 0x98(%rsp), %edi               #  656   0x81bf9  7      
  movl %r8d, %edx                     #  657   0x81c00  3      
  xorl %esi, %esi                     #  658   0x81c03  2      
  movl %r8d, 0x40(%rsp)               #  659   0x81c05  5      
  nop                                 #  660   0x81c0a  1      
  callq .memchr                       #  661   0x81c0b  5      
  movl %eax, %eax                     #  662   0x81c10  2      
  movl 0x40(%rsp), %r8d               #  663   0x81c12  5      
  testq %rax, %rax                    #  664   0x81c17  3      
  je .L_83f60                         #  665   0x81c1a  6      
  subl 0x98(%rsp), %eax               #  666   0x81c20  7      
  cmpl %eax, %r8d                     #  667   0x81c27  3      
  movl %eax, 0x70(%rsp)               #  668   0x81c2a  4      
  xchgw %ax, %ax                      #  669   0x81c2e  3      
  jge .L_83c00                        #  670   0x81c31  6      
  testl %r8d, %r8d                    #  671   0x81c37  3      
  movl %r8d, 0x70(%rsp)               #  672   0x81c3a  5      
  movq $0x0, 0x90(%rsp)               #  673   0x81c3f  12     
  cmovnsl %r8d, %r13d                 #  674   0x81c4b  4      
  xchgw %ax, %ax                      #  675   0x81c4f  3      
  movl $0x0, 0xac(%rsp)               #  676   0x81c52  11     
  movl %r13d, 0x68(%rsp)              #  677   0x81c5d  5      
  jmpq .L_823c0                       #  678   0x81c62  5      
  nop                                 #  679   0x81c67  1      
  orb $0x80, %r12b                    #  680   0x81c68  4      
  movl %r13d, %r13d                   #  681   0x81c6c  3      
  movzbl (%r15,%r13,1), %eax          #  682   0x81c6f  5      
  jmpq .L_814c0                       #  683   0x81c74  5      
  nop                                 #  684   0x81c79  1      
  movl %r13d, %r13d                   #  685   0x81c7a  3      
  movsbl (%r15,%r13,1), %eax          #  686   0x81c7d  5      
  addl $0x1, %r13d                    #  687   0x81c82  4      
  cmpl $0x2a, %eax                    #  688   0x81c86  3      
  je .L_83fc0                         #  689   0x81c89  6      
  leal -0x30(%rax), %ecx              #  690   0x81c8f  3      
  xorl %edx, %edx                     #  691   0x81c92  2      
  xorl %r8d, %r8d                     #  692   0x81c94  3      
  cmpl $0x9, %ecx                     #  693   0x81c97  3      
  ja .L_814e0                         #  694   0x81c9a  6      
  nop                                 #  695   0x81ca0  1      
  nop                                 #  696   0x81ca1  1      
.L_820c0:                             #        0x81ca2  0      
  movl %r13d, %r13d                   #  697   0x81ca2  3      
  movsbl (%r15,%r13,1), %eax          #  698   0x81ca5  5      
  leal (%rdx,%rdx,4), %edx            #  699   0x81caa  3      
  addl $0x1, %r13d                    #  700   0x81cad  4      
  leal (%rcx,%rdx,2), %edx            #  701   0x81cb1  3      
  leal -0x30(%rax), %ecx              #  702   0x81cb4  3      
  cmpl $0x9, %ecx                     #  703   0x81cb7  3      
  jbe .L_820c0                        #  704   0x81cba  6      
  testl %edx, %edx                    #  705   0x81cc0  2      
  nop                                 #  706   0x81cc2  1      
  movl $0xffffffff, %r8d              #  707   0x81cc3  6      
  cmovnsl %edx, %r8d                  #  708   0x81cc9  4      
  jmpq .L_814e0                       #  709   0x81ccd  5      
  xchgw %ax, %ax                      #  710   0x81cd2  3      
  nop                                 #  711   0x81cd5  1      
  xorl %edx, %edx                     #  712   0x81cd6  2      
  nop                                 #  713   0x81cd8  1      
  nop                                 #  714   0x81cd9  1      
.L_82120:                             #        0x81cda  0      
  leal (%rdx,%rdx,4), %edx            #  715   0x81cda  3      
  leal -0x30(%rax,%rdx,2), %edx       #  716   0x81cdd  4      
  movl %r13d, %r13d                   #  717   0x81ce1  3      
  movsbl (%r15,%r13,1), %eax          #  718   0x81ce4  5      
  addl $0x1, %r13d                    #  719   0x81ce9  4      
  leal -0x30(%rax), %ecx              #  720   0x81ced  3      
  cmpl $0x9, %ecx                     #  721   0x81cf0  3      
  jbe .L_82120                        #  722   0x81cf3  6      
  nop                                 #  723   0x81cf9  1      
  movl %edx, 0x8c(%rsp)               #  724   0x81cfa  7      
  jmpq .L_814e0                       #  725   0x81d01  5      
  nop                                 #  726   0x81d06  1      
  nop                                 #  727   0x81d07  1      
  testb $0x20, %r12b                  #  728   0x81d08  4      
  movq %r13, 0x60(%rsp)               #  729   0x81d0c  5      
  movq $0x10023c01, 0xc0(%rsp)        #  730   0x81d11  12     
  jne .L_81c80                        #  731   0x81d1d  6      
  nop                                 #  732   0x81d23  1      
.L_82180:                             #        0x81d24  0      
  testb $0x10, %r12b                  #  733   0x81d24  4      
  je .L_82d40                         #  734   0x81d28  6      
  movq 0x80(%rsp), %rcx               #  735   0x81d2e  8      
  movl %ecx, %ecx                     #  736   0x81d36  2      
  movl (%r15,%rcx,1), %edx            #  737   0x81d38  4      
  cmpl $0x2f, %edx                    #  738   0x81d3c  3      
  nop                                 #  739   0x81d3f  1      
  ja .L_836c0                         #  740   0x81d40  6      
  movq %rcx, %rsi                     #  741   0x81d46  3      
  movl %ecx, %ecx                     #  742   0x81d49  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  743   0x81d4b  5      
  addl %edx, %ecx                     #  744   0x81d50  2      
  addl $0x8, %edx                     #  745   0x81d52  3      
  movl %esi, %esi                     #  746   0x81d55  2      
  movl %edx, (%r15,%rsi,1)            #  747   0x81d57  4      
  nop                                 #  748   0x81d5b  1      
.L_821c0:                             #        0x81d5c  0      
  movl %ecx, %ecx                     #  749   0x81d5c  2      
  movl (%r15,%rcx,1), %r13d           #  750   0x81d5e  4      
  nop                                 #  751   0x81d62  1      
  nop                                 #  752   0x81d63  1      
.L_821e0:                             #        0x81d64  0      
  testq %r13, %r13                    #  753   0x81d64  3      
  setne %dl                           #  754   0x81d67  3      
  je .L_82220                         #  755   0x81d6a  6      
  testb $0x1, %r12b                   #  756   0x81d70  4      
  je .L_82220                         #  757   0x81d74  6      
  movb $0x30, 0x1d0(%rsp)             #  758   0x81d7a  8      
  movb %al, 0x1d1(%rsp)               #  759   0x81d82  7      
  nop                                 #  760   0x81d89  1      
  orl $0x2, %r12d                     #  761   0x81d8a  4      
  nop                                 #  762   0x81d8e  1      
  nop                                 #  763   0x81d8f  1      
.L_82220:                             #        0x81d90  0      
  andl $0xfffffbff, %r12d             #  764   0x81d90  7      
  movl $0x2, %eax                     #  765   0x81d97  5      
  jmpq .L_822c0                       #  766   0x81d9c  5      
  nop                                 #  767   0x81da1  1      
  movq 0x80(%rsp), %rdx               #  768   0x81da2  8      
  movq %r13, 0x60(%rsp)               #  769   0x81daa  5      
  movl %edx, %edx                     #  770   0x81daf  2      
  movl (%r15,%rdx,1), %eax            #  771   0x81db1  4      
  cmpl $0x2f, %eax                    #  772   0x81db5  3      
  ja .L_82c60                         #  773   0x81db8  6      
  movq %rdx, %rcx                     #  774   0x81dbe  3      
  nop                                 #  775   0x81dc1  1      
  movl %edx, %edx                     #  776   0x81dc2  2      
  movl 0xc(%r15,%rdx,1), %edx         #  777   0x81dc4  5      
  addl %eax, %edx                     #  778   0x81dc9  2      
  addl $0x8, %eax                     #  779   0x81dcb  3      
  movl %ecx, %ecx                     #  780   0x81dce  2      
  movl %eax, (%r15,%rcx,1)            #  781   0x81dd0  4      
  nop                                 #  782   0x81dd4  1      
.L_82280:                             #        0x81dd5  0      
  movl %edx, %edx                     #  783   0x81dd5  2      
  movl (%r15,%rdx,1), %r13d           #  784   0x81dd7  4      
  orl $0x2, %r12d                     #  785   0x81ddb  4      
  movb $0x30, 0x1d0(%rsp)             #  786   0x81ddf  8      
  movb $0x78, 0x1d1(%rsp)             #  787   0x81de7  8      
  nop                                 #  788   0x81def  1      
  movq $0x10023c01, 0xc0(%rsp)        #  789   0x81df0  12     
  movl $0x2, %eax                     #  790   0x81dfc  5      
  testq %r13, %r13                    #  791   0x81e01  3      
  setne %dl                           #  792   0x81e04  3      
  nop                                 #  793   0x81e07  1      
.L_822c0:                             #        0x81e08  0      
  movb $0x0, 0x1df(%rsp)              #  794   0x81e08  8      
  nop                                 #  795   0x81e10  1      
  nop                                 #  796   0x81e11  1      
.L_822e0:                             #        0x81e12  0      
  movl %r12d, %ecx                    #  797   0x81e12  3      
  andb $0x7f, %cl                     #  798   0x81e15  3      
  testl %r8d, %r8d                    #  799   0x81e18  3      
  cmovnsl %ecx, %r12d                 #  800   0x81e1b  4      
  testl %r8d, %r8d                    #  801   0x81e1f  3      
  jne .L_82300                        #  802   0x81e22  6      
  testb %dl, %dl                      #  803   0x81e28  2      
  je .L_82fc0                         #  804   0x81e2a  6      
  nop                                 #  805   0x81e30  1      
.L_82300:                             #        0x81e31  0      
  cmpl $0x1, %eax                     #  806   0x81e31  3      
  je .L_830c0                         #  807   0x81e34  6      
  cmpl $0x2, %eax                     #  808   0x81e3a  3      
  je .L_83040                         #  809   0x81e3d  6      
  movq 0xb8(%rsp), %rax               #  810   0x81e43  8      
  movq %rax, %rdx                     #  811   0x81e4b  3      
  nop                                 #  812   0x81e4e  1      
.L_82320:                             #        0x81e4f  0      
  movl %r13d, %eax                    #  813   0x81e4f  3      
  shrq $0x3, %r13                     #  814   0x81e52  4      
  subl $0x1, %edx                     #  815   0x81e56  3      
  andl $0x7, %eax                     #  816   0x81e59  3      
  addl $0x30, %eax                    #  817   0x81e5c  3      
  testq %r13, %r13                    #  818   0x81e5f  3      
  movl %edx, %edx                     #  819   0x81e62  2      
  movb %al, (%r15,%rdx,1)             #  820   0x81e64  4      
  jne .L_82320                        #  821   0x81e68  6      
  testb $0x1, %r12b                   #  822   0x81e6e  4      
  nop                                 #  823   0x81e72  1      
  movq %rdx, 0x98(%rsp)               #  824   0x81e73  8      
  jne .L_83100                        #  825   0x81e7b  6      
  movl 0xb8(%rsp), %ecx               #  826   0x81e81  7      
  subl %edx, %ecx                     #  827   0x81e88  2      
  movl %ecx, 0x70(%rsp)               #  828   0x81e8a  4      
  nop                                 #  829   0x81e8e  1      
  movq 0xb0(%rsp), %rcx               #  830   0x81e8f  8      
  nop                                 #  831   0x81e97  1      
  nop                                 #  832   0x81e98  1      
.L_82380:                             #        0x81e99  0      
  cmpl %r8d, 0x70(%rsp)               #  833   0x81e99  5      
  movl 0x70(%rsp), %eax               #  834   0x81e9e  4      
  movl %r8d, 0xac(%rsp)               #  835   0x81ea2  8      
  movq %rcx, 0xb0(%rsp)               #  836   0x81eaa  8      
  nop                                 #  837   0x81eb2  1      
  movq $0x0, 0x90(%rsp)               #  838   0x81eb3  12     
  cmovll %r8d, %eax                   #  839   0x81ebf  4      
  movl %eax, 0x68(%rsp)               #  840   0x81ec3  4      
  nop                                 #  841   0x81ec7  1      
.L_823c0:                             #        0x81ec8  0      
  cmpb $0x1, 0x1df(%rsp)              #  842   0x81ec8  8      
  sbbl $0xffffffff, 0x68(%rsp)        #  843   0x81ed0  8      
  jmpq .L_81560                       #  844   0x81ed8  5      
  nop                                 #  845   0x81edd  1      
  testb $0x20, %r12b                  #  846   0x81ede  4      
  movq %r13, 0x60(%rsp)               #  847   0x81ee2  5      
  je .L_82ae0                         #  848   0x81ee7  6      
  movq 0x80(%rsp), %rdx               #  849   0x81eed  8      
  movl %edx, %edx                     #  850   0x81ef5  2      
  movl (%r15,%rdx,1), %eax            #  851   0x81ef7  4      
  cmpl $0x2f, %eax                    #  852   0x81efb  3      
  ja .L_83840                         #  853   0x81efe  6      
  movq %rdx, %rcx                     #  854   0x81f04  3      
  movl %edx, %edx                     #  855   0x81f07  2      
  movl 0xc(%r15,%rdx,1), %edx         #  856   0x81f09  5      
  addl %eax, %edx                     #  857   0x81f0e  2      
  addl $0x8, %eax                     #  858   0x81f10  3      
  movl %ecx, %ecx                     #  859   0x81f13  2      
  movl %eax, (%r15,%rcx,1)            #  860   0x81f15  4      
  nop                                 #  861   0x81f19  1      
.L_82420:                             #        0x81f1a  0      
  movl %edx, %edx                     #  862   0x81f1a  2      
  movl (%r15,%rdx,1), %eax            #  863   0x81f1c  4      
  movslq 0x74(%rsp), %rdx             #  864   0x81f20  5      
  movl %eax, %eax                     #  865   0x81f25  2      
  movq %rdx, (%r15,%rax,1)            #  866   0x81f27  4      
  jmpq .L_81300                       #  867   0x81f2b  5      
  nop                                 #  868   0x81f30  1      
  movl %r13d, %r13d                   #  869   0x81f31  3      
  movzbl (%r15,%r13,1), %eax          #  870   0x81f34  5      
  cmpb $0x6c, %al                     #  871   0x81f39  2      
  je .L_82e80                         #  872   0x81f3b  6      
  orl $0x10, %r12d                    #  873   0x81f41  4      
  jmpq .L_814c0                       #  874   0x81f45  5      
  nop                                 #  875   0x81f4a  1      
  movl %r13d, %r13d                   #  876   0x81f4b  3      
  movzbl (%r15,%r13,1), %eax          #  877   0x81f4e  5      
  cmpb $0x68, %al                     #  878   0x81f53  2      
  je .L_82ea0                         #  879   0x81f55  6      
  orl $0x40, %r12d                    #  880   0x81f5b  4      
  jmpq .L_814c0                       #  881   0x81f5f  5      
  nop                                 #  882   0x81f64  1      
  orl $0x1, %r12d                     #  883   0x81f65  4      
  movl %r13d, %r13d                   #  884   0x81f69  3      
  movzbl (%r15,%r13,1), %eax          #  885   0x81f6c  5      
  jmpq .L_814c0                       #  886   0x81f71  5      
  nop                                 #  887   0x81f76  1      
  movl %r14d, %edi                    #  888   0x81f77  3      
  movl %r8d, 0x40(%rsp)               #  889   0x81f7a  5      
  nop                                 #  890   0x81f7f  1      
  nop                                 #  891   0x81f80  1      
  callq ._localeconv_r                #  892   0x81f81  5      
  movl %eax, %eax                     #  893   0x81f86  2      
  movl %eax, %eax                     #  894   0x81f88  2      
  movl 0x4(%r15,%rax,1), %eax         #  895   0x81f8a  5      
  movl %eax, %edi                     #  896   0x81f8f  2      
  movq %rax, 0xd8(%rsp)               #  897   0x81f91  8      
  nop                                 #  898   0x81f99  1      
  callq .strlen                       #  899   0x81f9a  5      
  movl %r14d, %edi                    #  900   0x81f9f  3      
  movl %eax, 0xd4(%rsp)               #  901   0x81fa2  7      
  xchgw %ax, %ax                      #  902   0x81fa9  3      
  nop                                 #  903   0x81fac  1      
  callq ._localeconv_r                #  904   0x81fad  5      
  movl %eax, %eax                     #  905   0x81fb2  2      
  movl 0xd4(%rsp), %r9d               #  906   0x81fb4  8      
  movl 0x40(%rsp), %r8d               #  907   0x81fbc  5      
  movl %eax, %eax                     #  908   0x81fc1  2      
  movl 0x8(%r15,%rax,1), %eax         #  909   0x81fc3  5      
  testl %r9d, %r9d                    #  910   0x81fc8  3      
  nop                                 #  911   0x81fcb  1      
  movq %rax, 0xb0(%rsp)               #  912   0x81fcc  8      
  je .L_81ba0                         #  913   0x81fd4  6      
  testq %rax, %rax                    #  914   0x81fda  3      
  je .L_81ba0                         #  915   0x81fdd  6      
  movq 0xb0(%rsp), %rcx               #  916   0x81fe3  8      
  nop                                 #  917   0x81feb  1      
  movl %ecx, %ecx                     #  918   0x81fec  2      
  cmpb $0x0, (%r15,%rcx,1)            #  919   0x81fee  5      
  je .L_81ba0                         #  920   0x81ff3  6      
  orl $0x400, %r12d                   #  921   0x81ff9  7      
  movl %r13d, %r13d                   #  922   0x82000  3      
  movzbl (%r15,%r13,1), %eax          #  923   0x82003  5      
  nop                                 #  924   0x82008  1      
  jmpq .L_814c0                       #  925   0x82009  5      
  nop                                 #  926   0x8200e  1      
  nop                                 #  927   0x8200f  1      
  movb $0x2b, 0x1df(%rsp)             #  928   0x82010  8      
  movl %r13d, %r13d                   #  929   0x82018  3      
  movzbl (%r15,%r13,1), %eax          #  930   0x8201b  5      
  jmpq .L_814c0                       #  931   0x82020  5      
  nop                                 #  932   0x82025  1      
.L_825a0:                             #        0x82026  0      
  movq 0x78(%rsp), %rsi               #  933   0x82026  5      
  movl %esi, %esi                     #  934   0x8202b  2      
  orw $0x40, 0xc(%r15,%rsi,1)         #  935   0x8202d  7      
  nop                                 #  936   0x82034  1      
  nop                                 #  937   0x82035  1      
.L_825c0:                             #        0x82036  0      
  cmpq $0x0, 0x90(%rsp)               #  938   0x82036  9      
  je .L_82aa0                         #  939   0x8203f  6      
  movl 0x90(%rsp), %esi               #  940   0x82045  7      
  movl %r14d, %edi                    #  941   0x8204c  3      
  xchgw %ax, %ax                      #  942   0x8204f  3      
  callq ._free_r                      #  943   0x82052  5      
.L_825e0:                             #        0x82057  0      
  movq 0x78(%rsp), %rcx               #  944   0x82057  5      
  movl %ecx, %ecx                     #  945   0x8205c  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  946   0x8205e  6      
  nop                                 #  947   0x82064  1      
  nop                                 #  948   0x82065  1      
.L_82600:                             #        0x82066  0      
  testb $0x40, %al                    #  949   0x82066  2      
  movl $0xffffffff, %eax              #  950   0x82068  5      
  cmovel 0x74(%rsp), %eax             #  951   0x8206d  5      
  movl %eax, 0x74(%rsp)               #  952   0x82072  4      
  nop                                 #  953   0x82076  1      
  nop                                 #  954   0x82077  1      
.L_82620:                             #        0x82078  0      
  movl 0x74(%rsp), %eax               #  955   0x82078  4      
  addl $0x1e8, %esp                   #  956   0x8207c  6      
  addq %r15, %rsp                     #  957   0x82082  3      
  popq %rbx                           #  958   0x82085  2      
  popq %r12                           #  959   0x82087  3      
  popq %r13                           #  960   0x8208a  3      
  popq %r14                           #  961   0x8208d  3      
  popq %r11                           #  962   0x82090  3      
  andl $0xffffffe0, %r11d             #  963   0x82093  7      
  addq %r15, %r11                     #  964   0x8209a  3      
  jmpq %r11                           #  965   0x8209d  3      
.L_82640:                             #        0x820a0  0      
  movl 0x8c(%rsp), %r13d              #  966   0x820a0  8      
  subl 0x68(%rsp), %r13d              #  967   0x820a8  5      
  testl %r13d, %r13d                  #  968   0x820ad  3      
  jle .L_817c0                        #  969   0x820b0  6      
  cmpl $0x10, %r13d                   #  970   0x820b6  4      
  jle .L_82740                        #  971   0x820ba  6      
  leal 0x190(%rsp), %edx              #  972   0x820c0  7      
  movq %rbx, %rax                     #  973   0x820c7  3      
  movq 0x78(%rsp), %rbx               #  974   0x820ca  5      
  movq %rdx, 0x8(%rsp)                #  975   0x820cf  5      
  jmpq .L_826a0                       #  976   0x820d4  5      
  nop                                 #  977   0x820d9  1      
.L_82680:                             #        0x820da  0      
  subl $0x10, %r13d                   #  978   0x820da  4      
  addl $0x8, %eax                     #  979   0x820de  3      
  cmpl $0x10, %r13d                   #  980   0x820e1  4      
  jle .L_82720                        #  981   0x820e5  6      
  nop                                 #  982   0x820eb  1      
.L_826a0:                             #        0x820ec  0      
  movl %eax, %eax                     #  983   0x820ec  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  984   0x820ee  9      
  movl 0x194(%rsp), %edx              #  985   0x820f7  7      
  addl $0x10, 0x198(%rsp)             #  986   0x820fe  8      
  nop                                 #  987   0x82106  1      
  movl %eax, %eax                     #  988   0x82107  2      
  movl $0x10024c20, (%r15,%rax,1)     #  989   0x82109  8      
  addl $0x1, %edx                     #  990   0x82111  3      
  cmpl $0x7, %edx                     #  991   0x82114  3      
  movl %edx, 0x194(%rsp)              #  992   0x82117  7      
  jle .L_82680                        #  993   0x8211e  6      
  movl 0x8(%rsp), %edx                #  994   0x82124  4      
  movl %ebx, %esi                     #  995   0x82128  2      
  nop                                 #  996   0x8212a  1      
  movl %r14d, %edi                    #  997   0x8212b  3      
  nop                                 #  998   0x8212e  1      
  nop                                 #  999   0x8212f  1      
  callq .__ssprint_r                  #  1000  0x82130  5      
  testl %eax, %eax                    #  1001  0x82135  2      
  jne .L_825c0                        #  1002  0x82137  6      
  subl $0x10, %r13d                   #  1003  0x8213d  4      
  leal 0x150(%rsp), %eax              #  1004  0x82141  7      
  cmpl $0x10, %r13d                   #  1005  0x82148  4      
  jg .L_826a0                         #  1006  0x8214c  6      
  nop                                 #  1007  0x82152  1      
.L_82720:                             #        0x82153  0      
  movq %rax, %rbx                     #  1008  0x82153  3      
  nop                                 #  1009  0x82156  1      
  nop                                 #  1010  0x82157  1      
.L_82740:                             #        0x82158  0      
  movl %ebx, %ebx                     #  1011  0x82158  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  1012  0x8215a  5      
  movl 0x194(%rsp), %eax              #  1013  0x8215f  7      
  addl %r13d, 0x198(%rsp)             #  1014  0x82166  8      
  movl %ebx, %ebx                     #  1015  0x8216e  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  1016  0x82170  8      
  addl $0x1, %eax                     #  1017  0x82178  3      
  cmpl $0x7, %eax                     #  1018  0x8217b  3      
  movl %eax, 0x194(%rsp)              #  1019  0x8217e  7      
  jg .L_83340                         #  1020  0x82185  6      
  addl $0x8, %ebx                     #  1021  0x8218b  3      
  jmpq .L_817c0                       #  1022  0x8218e  5      
  nop                                 #  1023  0x82193  1      
.L_82780:                             #        0x82194  0      
  movl 0x78(%rsp), %esi               #  1024  0x82194  4      
  leal 0x190(%rsp), %edx              #  1025  0x82198  7      
  movl %r14d, %edi                    #  1026  0x8219f  3      
  nop                                 #  1027  0x821a2  1      
  callq .__ssprint_r                  #  1028  0x821a3  5      
  testl %eax, %eax                    #  1029  0x821a8  2      
  jne .L_825c0                        #  1030  0x821aa  6      
  leal 0x150(%rsp), %ebx              #  1031  0x821b0  7      
  jmpq .L_81940                       #  1032  0x821b7  5      
  nop                                 #  1033  0x821bc  1      
.L_827c0:                             #        0x821bd  0      
  movl 0x78(%rsp), %esi               #  1034  0x821bd  4      
  leal 0x190(%rsp), %edx              #  1035  0x821c1  7      
  movl %r14d, %edi                    #  1036  0x821c8  3      
  nop                                 #  1037  0x821cb  1      
  callq .__ssprint_r                  #  1038  0x821cc  5      
  testl %eax, %eax                    #  1039  0x821d1  2      
  je .L_81b00                         #  1040  0x821d3  6      
  jmpq .L_825c0                       #  1041  0x821d9  5      
  nop                                 #  1042  0x821de  1      
  nop                                 #  1043  0x821df  1      
.L_82800:                             #        0x821e0  0      
  movl 0x78(%rsp), %esi               #  1044  0x821e0  4      
  leal 0x190(%rsp), %edx              #  1045  0x821e4  7      
  movl %r14d, %edi                    #  1046  0x821eb  3      
  movl %ecx, 0x58(%rsp)               #  1047  0x821ee  4      
  nop                                 #  1048  0x821f2  1      
  callq .__ssprint_r                  #  1049  0x821f3  5      
  testl %eax, %eax                    #  1050  0x821f8  2      
  movl 0x58(%rsp), %ecx               #  1051  0x821fa  4      
  jne .L_82fa0                        #  1052  0x821fe  6      
  leal 0x150(%rsp), %ebx              #  1053  0x82204  7      
  jmpq .L_81460                       #  1054  0x8220b  5      
  nop                                 #  1055  0x82210  1      
.L_82840:                             #        0x82211  0      
  movl 0x78(%rsp), %esi               #  1056  0x82211  4      
  leal 0x190(%rsp), %edx              #  1057  0x82215  7      
  movl %r14d, %edi                    #  1058  0x8221c  3      
  nop                                 #  1059  0x8221f  1      
  callq .__ssprint_r                  #  1060  0x82220  5      
  testl %eax, %eax                    #  1061  0x82225  2      
  jne .L_825c0                        #  1062  0x82227  6      
  leal 0x150(%rsp), %ebx              #  1063  0x8222d  7      
  jmpq .L_81900                       #  1064  0x82234  5      
  nop                                 #  1065  0x82239  1      
.L_82880:                             #        0x8223a  0      
  movl 0x78(%rsp), %esi               #  1066  0x8223a  4      
  leal 0x190(%rsp), %edx              #  1067  0x8223e  7      
  movl %r14d, %edi                    #  1068  0x82245  3      
  nop                                 #  1069  0x82248  1      
  callq .__ssprint_r                  #  1070  0x82249  5      
  testl %eax, %eax                    #  1071  0x8224e  2      
  jne .L_825c0                        #  1072  0x82250  6      
  leal 0x150(%rsp), %ebx              #  1073  0x82256  7      
  jmpq .L_81740                       #  1074  0x8225d  5      
  nop                                 #  1075  0x82262  1      
.L_828c0:                             #        0x82263  0      
  movl 0x78(%rsp), %esi               #  1076  0x82263  4      
  leal 0x190(%rsp), %edx              #  1077  0x82267  7      
  movl %r14d, %edi                    #  1078  0x8226e  3      
  nop                                 #  1079  0x82271  1      
  callq .__ssprint_r                  #  1080  0x82272  5      
  testl %eax, %eax                    #  1081  0x82277  2      
  jne .L_825c0                        #  1082  0x82279  6      
  leal 0x150(%rsp), %ebx              #  1083  0x8227f  7      
  jmpq .L_817a0                       #  1084  0x82286  5      
  nop                                 #  1085  0x8228b  1      
.L_82900:                             #        0x8228c  0      
  testb $0x10, %r12b                  #  1086  0x8228c  4      
  je .L_82c80                         #  1087  0x82290  6      
  movq 0x80(%rsp), %rdx               #  1088  0x82296  8      
  movl %edx, %edx                     #  1089  0x8229e  2      
  movl (%r15,%rdx,1), %eax            #  1090  0x822a0  4      
  cmpl $0x2f, %eax                    #  1091  0x822a4  3      
  nop                                 #  1092  0x822a7  1      
  ja .L_835a0                         #  1093  0x822a8  6      
  movq %rdx, %rcx                     #  1094  0x822ae  3      
  movl %edx, %edx                     #  1095  0x822b1  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1096  0x822b3  5      
  addl %eax, %edx                     #  1097  0x822b8  2      
  addl $0x8, %eax                     #  1098  0x822ba  3      
  movl %ecx, %ecx                     #  1099  0x822bd  2      
  movl %eax, (%r15,%rcx,1)            #  1100  0x822bf  4      
  nop                                 #  1101  0x822c3  1      
.L_82940:                             #        0x822c4  0      
  movl %edx, %edx                     #  1102  0x822c4  2      
  movl (%r15,%rdx,1), %r13d           #  1103  0x822c6  4      
  nop                                 #  1104  0x822ca  1      
  nop                                 #  1105  0x822cb  1      
.L_82960:                             #        0x822cc  0      
  andl $0xfffffbff, %r12d             #  1106  0x822cc  7      
  testq %r13, %r13                    #  1107  0x822d3  3      
  setne %dl                           #  1108  0x822d6  3      
  xorl %eax, %eax                     #  1109  0x822d9  2      
  jmpq .L_822c0                       #  1110  0x822db  5      
  nop                                 #  1111  0x822e0  1      
.L_82980:                             #        0x822e1  0      
  testb $0x10, %r12b                  #  1112  0x822e1  4      
  je .L_82c00                         #  1113  0x822e5  6      
  movq 0x80(%rsp), %rdx               #  1114  0x822eb  8      
  movl %edx, %edx                     #  1115  0x822f3  2      
  movl (%r15,%rdx,1), %eax            #  1116  0x822f5  4      
  cmpl $0x2f, %eax                    #  1117  0x822f9  3      
  nop                                 #  1118  0x822fc  1      
  ja .L_83640                         #  1119  0x822fd  6      
  movq %rdx, %rcx                     #  1120  0x82303  3      
  movl %edx, %edx                     #  1121  0x82306  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1122  0x82308  5      
  addl %eax, %edx                     #  1123  0x8230d  2      
  addl $0x8, %eax                     #  1124  0x8230f  3      
  movl %ecx, %ecx                     #  1125  0x82312  2      
  movl %eax, (%r15,%rcx,1)            #  1126  0x82314  4      
  nop                                 #  1127  0x82318  1      
.L_829c0:                             #        0x82319  0      
  movl %edx, %edx                     #  1128  0x82319  2      
  movl (%r15,%rdx,1), %r13d           #  1129  0x8231b  4      
  movl $0x1, %eax                     #  1130  0x8231f  5      
  testq %r13, %r13                    #  1131  0x82324  3      
  setne %dl                           #  1132  0x82327  3      
  jmpq .L_822c0                       #  1133  0x8232a  5      
  nop                                 #  1134  0x8232f  1      
.L_829e0:                             #        0x82330  0      
  testb $0x10, %r12b                  #  1135  0x82330  4      
  je .L_82dc0                         #  1136  0x82334  6      
  movq 0x80(%rsp), %rdx               #  1137  0x8233a  8      
  movl %edx, %edx                     #  1138  0x82342  2      
  movl (%r15,%rdx,1), %eax            #  1139  0x82344  4      
  cmpl $0x2f, %eax                    #  1140  0x82348  3      
  nop                                 #  1141  0x8234b  1      
  ja .L_835c0                         #  1142  0x8234c  6      
  movq %rdx, %rcx                     #  1143  0x82352  3      
  movl %edx, %edx                     #  1144  0x82355  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1145  0x82357  5      
  addl %eax, %edx                     #  1146  0x8235c  2      
  addl $0x8, %eax                     #  1147  0x8235e  3      
  movl %ecx, %ecx                     #  1148  0x82361  2      
  movl %eax, (%r15,%rcx,1)            #  1149  0x82363  4      
  nop                                 #  1150  0x82367  1      
.L_82a20:                             #        0x82368  0      
  movl %edx, %edx                     #  1151  0x82368  2      
  movslq (%r15,%rdx,1), %r13          #  1152  0x8236a  4      
  cmpq $0x0, %r13                     #  1153  0x8236e  4      
  jge .L_81f40                        #  1154  0x82372  6      
  nop                                 #  1155  0x82378  1      
  nop                                 #  1156  0x82379  1      
.L_82a40:                             #        0x8237a  0      
  negq %r13                           #  1157  0x8237a  3      
  movb $0x2d, 0x1df(%rsp)             #  1158  0x8237d  8      
  movl $0x1, %eax                     #  1159  0x82385  5      
  setne %dl                           #  1160  0x8238a  3      
  jmpq .L_822e0                       #  1161  0x8238d  5      
  nop                                 #  1162  0x82392  1      
.L_82a60:                             #        0x82393  0      
  movl 0x78(%rsp), %esi               #  1163  0x82393  4      
  leal 0x190(%rsp), %edx              #  1164  0x82397  7      
  movl %r14d, %edi                    #  1165  0x8239e  3      
  nop                                 #  1166  0x823a1  1      
  callq .__ssprint_r                  #  1167  0x823a2  5      
  testl %eax, %eax                    #  1168  0x823a7  2      
  jne .L_825c0                        #  1169  0x823a9  6      
  leal 0x150(%rsp), %ebx              #  1170  0x823af  7      
  jmpq .L_816e0                       #  1171  0x823b6  5      
  nop                                 #  1172  0x823bb  1      
.L_82aa0:                             #        0x823bc  0      
  movq 0x78(%rsp), %rdx               #  1173  0x823bc  5      
  movl %edx, %edx                     #  1174  0x823c1  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1175  0x823c3  6      
  jmpq .L_82600                       #  1176  0x823c9  5      
  nop                                 #  1177  0x823ce  1      
.L_82ac0:                             #        0x823cf  0      
  movb $0x20, 0x1df(%rsp)             #  1178  0x823cf  8      
  movl %r13d, %r13d                   #  1179  0x823d7  3      
  movzbl (%r15,%r13,1), %eax          #  1180  0x823da  5      
  jmpq .L_814c0                       #  1181  0x823df  5      
  nop                                 #  1182  0x823e4  1      
.L_82ae0:                             #        0x823e5  0      
  testb $0x10, %r12b                  #  1183  0x823e5  4      
  je .L_837c0                         #  1184  0x823e9  6      
  movq 0x80(%rsp), %rax               #  1185  0x823ef  8      
  movl %eax, %eax                     #  1186  0x823f7  2      
  movl (%r15,%rax,1), %edx            #  1187  0x823f9  4      
  cmpl $0x2f, %edx                    #  1188  0x823fd  3      
  nop                                 #  1189  0x82400  1      
  jbe .L_83b20                        #  1190  0x82401  6      
  nop                                 #  1191  0x82407  1      
  nop                                 #  1192  0x82408  1      
.L_82b20:                             #        0x82409  0      
  movq 0x80(%rsp), %rsi               #  1193  0x82409  8      
  movl %esi, %esi                     #  1194  0x82411  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1195  0x82413  5      
  leal 0x8(%rax), %edx                #  1196  0x82418  3      
  movl %esi, %esi                     #  1197  0x8241b  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1198  0x8241d  5      
  nop                                 #  1199  0x82422  1      
.L_82b40:                             #        0x82423  0      
  movl %eax, %eax                     #  1200  0x82423  2      
  movl (%r15,%rax,1), %eax            #  1201  0x82425  4      
  movl 0x74(%rsp), %edx               #  1202  0x82429  4      
  movl %eax, %eax                     #  1203  0x8242d  2      
  movl %edx, (%r15,%rax,1)            #  1204  0x8242f  4      
  jmpq .L_81300                       #  1205  0x82433  5      
  nop                                 #  1206  0x82438  1      
  movq %r13, 0x60(%rsp)               #  1207  0x82439  5      
  jmpq .L_81ec0                       #  1208  0x8243e  5      
  nop                                 #  1209  0x82443  1      
  nop                                 #  1210  0x82444  1      
  movq %r13, 0x60(%rsp)               #  1211  0x82445  5      
  jmpq .L_81e40                       #  1212  0x8244a  5      
  nop                                 #  1213  0x8244f  1      
  nop                                 #  1214  0x82450  1      
  movq %r13, 0x60(%rsp)               #  1215  0x82451  5      
  jmpq .L_81d00                       #  1216  0x82456  5      
  nop                                 #  1217  0x8245b  1      
  nop                                 #  1218  0x8245c  1      
.L_82bc0:                             #        0x8245d  0      
  movq 0x80(%rsp), %rax               #  1219  0x8245d  8      
  movq 0x80(%rsp), %rcx               #  1220  0x82465  8      
  movl %eax, %eax                     #  1221  0x8246d  2      
  movl 0x8(%r15,%rax,1), %edx         #  1222  0x8246f  5      
  leal 0x8(%rdx), %eax                #  1223  0x82474  3      
  nop                                 #  1224  0x82477  1      
  movl %ecx, %ecx                     #  1225  0x82478  2      
  movl %eax, 0x8(%r15,%rcx,1)         #  1226  0x8247a  5      
  jmpq .L_81c20                       #  1227  0x8247f  5      
  nop                                 #  1228  0x82484  1      
  nop                                 #  1229  0x82485  1      
.L_82c00:                             #        0x82486  0      
  testb $0x40, %r12b                  #  1230  0x82486  4      
  je .L_83660                         #  1231  0x8248a  6      
  movq 0x80(%rsp), %rax               #  1232  0x82490  8      
  movl %eax, %eax                     #  1233  0x82498  2      
  movl (%r15,%rax,1), %edx            #  1234  0x8249a  4      
  cmpl $0x2f, %edx                    #  1235  0x8249e  3      
  nop                                 #  1236  0x824a1  1      
  jbe .L_83b40                        #  1237  0x824a2  6      
  movq 0x80(%rsp), %rsi               #  1238  0x824a8  8      
  movl %esi, %esi                     #  1239  0x824b0  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1240  0x824b2  5      
  leal 0x8(%rax), %edx                #  1241  0x824b7  3      
  movl %esi, %esi                     #  1242  0x824ba  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1243  0x824bc  5      
  nop                                 #  1244  0x824c1  1      
.L_82c40:                             #        0x824c2  0      
  movl %eax, %eax                     #  1245  0x824c2  2      
  movzwl (%r15,%rax,1), %r13d         #  1246  0x824c4  5      
  movl $0x1, %eax                     #  1247  0x824c9  5      
  testq %r13, %r13                    #  1248  0x824ce  3      
  setne %dl                           #  1249  0x824d1  3      
  jmpq .L_822c0                       #  1250  0x824d4  5      
  nop                                 #  1251  0x824d9  1      
.L_82c60:                             #        0x824da  0      
  movq 0x80(%rsp), %rsi               #  1252  0x824da  8      
  movl %esi, %esi                     #  1253  0x824e2  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1254  0x824e4  5      
  leal 0x8(%rdx), %eax                #  1255  0x824e9  3      
  movl %esi, %esi                     #  1256  0x824ec  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1257  0x824ee  5      
  jmpq .L_82280                       #  1258  0x824f3  5      
  xchgw %ax, %ax                      #  1259  0x824f8  3      
.L_82c80:                             #        0x824fb  0      
  testb $0x40, %r12b                  #  1260  0x824fb  4      
  je .L_83700                         #  1261  0x824ff  6      
  movq 0x80(%rsp), %rax               #  1262  0x82505  8      
  movl %eax, %eax                     #  1263  0x8250d  2      
  movl (%r15,%rax,1), %edx            #  1264  0x8250f  4      
  cmpl $0x2f, %edx                    #  1265  0x82513  3      
  nop                                 #  1266  0x82516  1      
  jbe .L_83b60                        #  1267  0x82517  6      
  movq 0x80(%rsp), %rsi               #  1268  0x8251d  8      
  movl %esi, %esi                     #  1269  0x82525  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1270  0x82527  5      
  leal 0x8(%rax), %edx                #  1271  0x8252c  3      
  movl %esi, %esi                     #  1272  0x8252f  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1273  0x82531  5      
  nop                                 #  1274  0x82536  1      
.L_82cc0:                             #        0x82537  0      
  movl %eax, %eax                     #  1275  0x82537  2      
  movzwl (%r15,%rax,1), %r13d         #  1276  0x82539  5      
  jmpq .L_82960                       #  1277  0x8253e  5      
  nop                                 #  1278  0x82543  1      
  nop                                 #  1279  0x82544  1      
.L_82ce0:                             #        0x82545  0      
  movq 0x80(%rsp), %rsi               #  1280  0x82545  8      
  movl %esi, %esi                     #  1281  0x8254d  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1282  0x8254f  5      
  leal 0x8(%rdx), %eax                #  1283  0x82554  3      
  movl %esi, %esi                     #  1284  0x82557  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1285  0x82559  5      
  jmpq .L_81f00                       #  1286  0x8255e  5      
  xchgw %ax, %ax                      #  1287  0x82563  3      
.L_82d00:                             #        0x82566  0      
  movq 0x80(%rsp), %rsi               #  1288  0x82566  8      
  movl %esi, %esi                     #  1289  0x8256e  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1290  0x82570  5      
  leal 0x8(%rdx), %eax                #  1291  0x82575  3      
  movl %esi, %esi                     #  1292  0x82578  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1293  0x8257a  5      
  jmpq .L_81d40                       #  1294  0x8257f  5      
  xchgw %ax, %ax                      #  1295  0x82584  3      
.L_82d20:                             #        0x82587  0      
  movq %rcx, %rsi                     #  1296  0x82587  3      
  movl %ecx, %ecx                     #  1297  0x8258a  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  1298  0x8258c  5      
  addl %edx, %ecx                     #  1299  0x82591  2      
  addl $0x8, %edx                     #  1300  0x82593  3      
  movl %esi, %esi                     #  1301  0x82596  2      
  movl %edx, (%r15,%rsi,1)            #  1302  0x82598  4      
  jmpq .L_81cc0                       #  1303  0x8259c  5      
  nop                                 #  1304  0x825a1  1      
.L_82d40:                             #        0x825a2  0      
  testb $0x40, %r12b                  #  1305  0x825a2  4      
  je .L_83760                         #  1306  0x825a6  6      
  movq 0x80(%rsp), %rdx               #  1307  0x825ac  8      
  movl %edx, %edx                     #  1308  0x825b4  2      
  movl (%r15,%rdx,1), %ecx            #  1309  0x825b6  4      
  cmpl $0x2f, %ecx                    #  1310  0x825ba  3      
  nop                                 #  1311  0x825bd  1      
  jbe .L_83b80                        #  1312  0x825be  6      
  movq 0x80(%rsp), %rcx               #  1313  0x825c4  8      
  movq 0x80(%rsp), %rsi               #  1314  0x825cc  8      
  movl %ecx, %ecx                     #  1315  0x825d4  2      
  movl 0x8(%r15,%rcx,1), %edx         #  1316  0x825d6  5      
  leal 0x8(%rdx), %ecx                #  1317  0x825db  3      
  movl %esi, %esi                     #  1318  0x825de  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  1319  0x825e0  5      
  nop                                 #  1320  0x825e5  1      
  nop                                 #  1321  0x825e6  1      
.L_82da0:                             #        0x825e7  0      
  movl %edx, %edx                     #  1322  0x825e7  2      
  movzwl (%r15,%rdx,1), %r13d         #  1323  0x825e9  5      
  jmpq .L_821e0                       #  1324  0x825ee  5      
  nop                                 #  1325  0x825f3  1      
  nop                                 #  1326  0x825f4  1      
.L_82dc0:                             #        0x825f5  0      
  testb $0x40, %r12b                  #  1327  0x825f5  4      
  je .L_835e0                         #  1328  0x825f9  6      
  movq 0x80(%rsp), %rax               #  1329  0x825ff  8      
  movl %eax, %eax                     #  1330  0x82607  2      
  movl (%r15,%rax,1), %edx            #  1331  0x82609  4      
  cmpl $0x2f, %edx                    #  1332  0x8260d  3      
  nop                                 #  1333  0x82610  1      
  ja .L_83b00                         #  1334  0x82611  6      
  movq %rax, %rcx                     #  1335  0x82617  3      
  movl %eax, %eax                     #  1336  0x8261a  2      
  movl 0xc(%r15,%rax,1), %eax         #  1337  0x8261c  5      
  addl %edx, %eax                     #  1338  0x82621  2      
  addl $0x8, %edx                     #  1339  0x82623  3      
  movl %ecx, %ecx                     #  1340  0x82626  2      
  movl %edx, (%r15,%rcx,1)            #  1341  0x82628  4      
  nop                                 #  1342  0x8262c  1      
.L_82e00:                             #        0x8262d  0      
  movl %eax, %eax                     #  1343  0x8262d  2      
  movswq (%r15,%rax,1), %r13          #  1344  0x8262f  5      
  jmpq .L_81f20                       #  1345  0x82634  5      
  nop                                 #  1346  0x82639  1      
  nop                                 #  1347  0x8263a  1      
.L_82e20:                             #        0x8263b  0      
  movq 0x80(%rsp), %rdx               #  1348  0x8263b  8      
  movq 0x80(%rsp), %rsi               #  1349  0x82643  8      
  movl %edx, %edx                     #  1350  0x8264b  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1351  0x8264d  5      
  leal 0x8(%rcx), %edx                #  1352  0x82652  3      
  nop                                 #  1353  0x82655  1      
  movl %esi, %esi                     #  1354  0x82656  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1355  0x82658  5      
  jmpq .L_81fa0                       #  1356  0x8265d  5      
  nop                                 #  1357  0x82662  1      
  nop                                 #  1358  0x82663  1      
.L_82e60:                             #        0x82664  0      
  movq 0x80(%rsp), %rsi               #  1359  0x82664  8      
  movl %esi, %esi                     #  1360  0x8266c  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1361  0x8266e  5      
  leal 0x8(%rdx), %eax                #  1362  0x82673  3      
  movl %esi, %esi                     #  1363  0x82676  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1364  0x82678  5      
  jmpq .L_81e80                       #  1365  0x8267d  5      
  xchgw %ax, %ax                      #  1366  0x82682  3      
.L_82e80:                             #        0x82685  0      
  addl $0x1, %r13d                    #  1367  0x82685  4      
  orl $0x20, %r12d                    #  1368  0x82689  4      
  movl %r13d, %r13d                   #  1369  0x8268d  3      
  movzbl (%r15,%r13,1), %eax          #  1370  0x82690  5      
  jmpq .L_814c0                       #  1371  0x82695  5      
  nop                                 #  1372  0x8269a  1      
.L_82ea0:                             #        0x8269b  0      
  addl $0x1, %r13d                    #  1373  0x8269b  4      
  orl $0x200, %r12d                   #  1374  0x8269f  7      
  movl %r13d, %r13d                   #  1375  0x826a6  3      
  movzbl (%r15,%r13,1), %eax          #  1376  0x826a9  5      
  jmpq .L_814c0                       #  1377  0x826ae  5      
  nop                                 #  1378  0x826b3  1      
.L_82ec0:                             #        0x826b4  0      
  leal 0x1b0(%rsp), %r13d             #  1379  0x826b4  8      
  xorl %esi, %esi                     #  1380  0x826bc  2      
  movl $0x8, %edx                     #  1381  0x826be  5      
  movl %r13d, %edi                    #  1382  0x826c3  3      
  nop                                 #  1383  0x826c6  1      
  callq .memset                       #  1384  0x826c7  5      
  movq 0x80(%rsp), %rsi               #  1385  0x826cc  8      
  movl %esi, %esi                     #  1386  0x826d4  2      
  movl (%r15,%rsi,1), %edx            #  1387  0x826d6  4      
  cmpl $0x2f, %edx                    #  1388  0x826da  3      
  ja .L_83560                         #  1389  0x826dd  6      
  movl %esi, %esi                     #  1390  0x826e3  2      
  movl 0xc(%r15,%rsi,1), %eax         #  1391  0x826e5  5      
  addl %edx, %eax                     #  1392  0x826ea  2      
  addl $0x8, %edx                     #  1393  0x826ec  3      
  movl %esi, %esi                     #  1394  0x826ef  2      
  movl %edx, (%r15,%rsi,1)            #  1395  0x826f1  4      
  nop                                 #  1396  0x826f5  1      
  nop                                 #  1397  0x826f6  1      
.L_82f20:                             #        0x826f7  0      
  movl %eax, %eax                     #  1398  0x826f7  2      
  movl (%r15,%rax,1), %edx            #  1399  0x826f9  4      
  movl 0x28(%rsp), %esi               #  1400  0x826fd  4      
  movl %r13d, %ecx                    #  1401  0x82701  3      
  movl %r14d, %edi                    #  1402  0x82704  3      
  nop                                 #  1403  0x82707  1      
  callq ._wcrtomb_r                   #  1404  0x82708  5      
  cmpl $0xffffffff, %eax              #  1405  0x8270d  5      
  movl %eax, 0x70(%rsp)               #  1406  0x82712  4      
  jne .L_81de0                        #  1407  0x82716  6      
  nop                                 #  1408  0x8271c  1      
  nop                                 #  1409  0x8271d  1      
.L_82f60:                             #        0x8271e  0      
  movq 0x78(%rsp), %rsi               #  1410  0x8271e  5      
  movl %esi, %esi                     #  1411  0x82723  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1412  0x82725  6      
  orl $0x40, %eax                     #  1413  0x8272b  3      
  movl %esi, %esi                     #  1414  0x8272e  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  1415  0x82730  6      
  jmpq .L_82600                       #  1416  0x82736  5      
  nop                                 #  1417  0x8273b  1      
.L_82f80:                             #        0x8273c  0      
  movl 0x198(%rsp), %edx              #  1418  0x8273c  7      
  testl %edx, %edx                    #  1419  0x82743  2      
  jne .L_83d40                        #  1420  0x82745  6      
  xchgw %ax, %ax                      #  1421  0x8274b  3      
  nop                                 #  1422  0x8274e  1      
.L_82fa0:                             #        0x8274f  0      
  movq 0x78(%rsp), %rsi               #  1423  0x8274f  5      
  movl %esi, %esi                     #  1424  0x82754  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1425  0x82756  6      
  jmpq .L_82600                       #  1426  0x8275c  5      
  nop                                 #  1427  0x82761  1      
.L_82fc0:                             #        0x82762  0      
  testl %eax, %eax                    #  1428  0x82762  2      
  jne .L_83000                        #  1429  0x82764  6      
  testb $0x1, %r12b                   #  1430  0x8276a  4      
  je .L_83000                         #  1431  0x8276e  6      
  movq 0xc8(%rsp), %rcx               #  1432  0x82774  8      
  movq %rcx, 0x98(%rsp)               #  1433  0x8277c  8      
  nop                                 #  1434  0x82784  1      
  movl %ecx, %ecx                     #  1435  0x82785  2      
  movb $0x30, (%r15,%rcx,1)           #  1436  0x82787  5      
  movl $0x1, 0x70(%rsp)               #  1437  0x8278c  8      
  movq 0xb0(%rsp), %rcx               #  1438  0x82794  8      
  jmpq .L_82380                       #  1439  0x8279c  5      
  nop                                 #  1440  0x827a1  1      
.L_83000:                             #        0x827a2  0      
  movq 0xb8(%rsp), %rsi               #  1441  0x827a2  8      
  movq 0xb0(%rsp), %rcx               #  1442  0x827aa  8      
  movl $0x0, 0x70(%rsp)               #  1443  0x827b2  8      
  movq %rsi, 0x98(%rsp)               #  1444  0x827ba  8      
  jmpq .L_82380                       #  1445  0x827c2  5      
  nop                                 #  1446  0x827c7  1      
  nop                                 #  1447  0x827c8  1      
.L_83040:                             #        0x827c9  0      
  movq 0xb8(%rsp), %rax               #  1448  0x827c9  8      
  movq 0xc0(%rsp), %rcx               #  1449  0x827d1  8      
  movq %rax, 0x98(%rsp)               #  1450  0x827d9  8      
  nop                                 #  1451  0x827e1  1      
.L_83060:                             #        0x827e2  0      
  movl %r13d, %edx                    #  1452  0x827e2  3      
  shrq $0x4, %r13                     #  1453  0x827e5  4      
  subl $0x1, %eax                     #  1454  0x827e9  3      
  andl $0xf, %edx                     #  1455  0x827ec  3      
  addl %ecx, %edx                     #  1456  0x827ef  2      
  testq %r13, %r13                    #  1457  0x827f1  3      
  movl %edx, %edx                     #  1458  0x827f4  2      
  movzbl (%r15,%rdx,1), %edx          #  1459  0x827f6  5      
  movl %eax, %eax                     #  1460  0x827fb  2      
  movb %dl, (%r15,%rax,1)             #  1461  0x827fd  4      
  nop                                 #  1462  0x82801  1      
  jne .L_83060                        #  1463  0x82802  6      
  movl 0xb8(%rsp), %edx               #  1464  0x82808  7      
  movq %rax, 0x98(%rsp)               #  1465  0x8280f  8      
  movq 0xb0(%rsp), %rcx               #  1466  0x82817  8      
  subl %eax, %edx                     #  1467  0x8281f  2      
  movl %edx, 0x70(%rsp)               #  1468  0x82821  4      
  nop                                 #  1469  0x82825  1      
  jmpq .L_82380                       #  1470  0x82826  5      
  nop                                 #  1471  0x8282b  1      
  nop                                 #  1472  0x8282c  1      
.L_830c0:                             #        0x8282d  0      
  cmpq $0x9, %r13                     #  1473  0x8282d  4      
  ja .L_83160                         #  1474  0x82831  6      
  movq 0xc8(%rsp), %rcx               #  1475  0x82837  8      
  addl $0x30, %r13d                   #  1476  0x8283f  4      
  movq %rcx, 0x98(%rsp)               #  1477  0x82843  8      
  xchgw %ax, %ax                      #  1478  0x8284b  3      
  movl %ecx, %ecx                     #  1479  0x8284e  2      
  movb %r13b, (%r15,%rcx,1)           #  1480  0x82850  4      
  movl $0x1, 0x70(%rsp)               #  1481  0x82854  8      
  movq 0xb0(%rsp), %rcx               #  1482  0x8285c  8      
  jmpq .L_82380                       #  1483  0x82864  5      
  nop                                 #  1484  0x82869  1      
.L_83100:                             #        0x8286a  0      
  cmpb $0x30, %al                     #  1485  0x8286a  2      
  je .L_83c40                         #  1486  0x8286c  6      
  movl 0x98(%rsp), %eax               #  1487  0x82872  7      
  subl $0x1, %eax                     #  1488  0x82879  3      
  movq %rax, 0x98(%rsp)               #  1489  0x8287c  8      
  nop                                 #  1490  0x82884  1      
  movl %eax, %eax                     #  1491  0x82885  2      
  movb $0x30, (%r15,%rax,1)           #  1492  0x82887  5      
  movl 0xb8(%rsp), %edx               #  1493  0x8288c  7      
  movq 0xb0(%rsp), %rcx               #  1494  0x82893  8      
  subl %eax, %edx                     #  1495  0x8289b  2      
  movl %edx, 0x70(%rsp)               #  1496  0x8289d  4      
  nop                                 #  1497  0x828a1  1      
  jmpq .L_82380                       #  1498  0x828a2  5      
  nop                                 #  1499  0x828a7  1      
  nop                                 #  1500  0x828a8  1      
.L_83160:                             #        0x828a9  0      
  movl 0xd4(%rsp), %r11d              #  1501  0x828a9  8      
  movq 0xb8(%rsp), %rsi               #  1502  0x828b1  8      
  movl %r12d, %r10d                   #  1503  0x828b9  3      
  movl %r8d, 0x68(%rsp)               #  1504  0x828bc  5      
  movl %r12d, %r8d                    #  1505  0x828c1  3      
  nop                                 #  1506  0x828c4  1      
  movq 0xb0(%rsp), %r12               #  1507  0x828c5  8      
  andl $0x400, %r10d                  #  1508  0x828cd  7      
  movq $0xcccccccccccccccd, %r9       #  1509  0x828d4  10     
  negl %r11d                          #  1510  0x828de  3      
  nop                                 #  1511  0x828e1  1      
  movq %rsi, 0x98(%rsp)               #  1512  0x828e2  8      
  xorl %esi, %esi                     #  1513  0x828ea  2      
  movl %r11d, 0x70(%rsp)              #  1514  0x828ec  5      
  movq %rbx, %r11                     #  1515  0x828f1  3      
  movq 0x98(%rsp), %rbx               #  1516  0x828f4  8      
  nop                                 #  1517  0x828fc  1      
.L_831c0:                             #        0x828fd  0      
  movq %r13, %rax                     #  1518  0x828fd  3      
  subl $0x1, %ebx                     #  1519  0x82900  3      
  mulq %r9                            #  1520  0x82903  3      
  shrq $0x3, %rdx                     #  1521  0x82906  4      
  leaq (%rdx,%rdx,4), %rax            #  1522  0x8290a  4      
  movq %r13, %rdx                     #  1523  0x8290e  3      
  addq %rax, %rax                     #  1524  0x82911  3      
  subq %rax, %rdx                     #  1525  0x82914  3      
  movq %rdx, %rax                     #  1526  0x82917  3      
  addl $0x30, %eax                    #  1527  0x8291a  3      
  testl %r10d, %r10d                  #  1528  0x8291d  3      
  movl %ebx, %ebx                     #  1529  0x82920  2      
  movb %al, (%r15,%rbx,1)             #  1530  0x82922  4      
  leal 0x1(%rsi), %eax                #  1531  0x82926  3      
  je .L_83220                         #  1532  0x82929  6      
  movl %r12d, %r12d                   #  1533  0x8292f  3      
  movzbl (%r15,%r12,1), %edx          #  1534  0x82932  5      
  movsbl %dl, %esi                    #  1535  0x82937  3      
  cmpl %eax, %esi                     #  1536  0x8293a  2      
  nop                                 #  1537  0x8293c  1      
  je .L_83280                         #  1538  0x8293d  6      
  nop                                 #  1539  0x82943  1      
  nop                                 #  1540  0x82944  1      
.L_83220:                             #        0x82945  0      
  movl %eax, %esi                     #  1541  0x82945  2      
  nop                                 #  1542  0x82947  1      
  nop                                 #  1543  0x82948  1      
.L_83240:                             #        0x82949  0      
  movq %r12, %rcx                     #  1544  0x82949  3      
  nop                                 #  1545  0x8294c  1      
  nop                                 #  1546  0x8294d  1      
.L_83260:                             #        0x8294e  0      
  movq %r13, %rax                     #  1547  0x8294e  3      
  mulq %r9                            #  1548  0x82951  3      
  movq %rdx, %r13                     #  1549  0x82954  3      
  shrq $0x3, %r13                     #  1550  0x82957  4      
  testq %r13, %r13                    #  1551  0x8295b  3      
  je .L_83300                         #  1552  0x8295e  6      
  movq %rcx, %r12                     #  1553  0x82964  3      
  jmpq .L_831c0                       #  1554  0x82967  5      
  xchgw %ax, %ax                      #  1555  0x8296c  3      
.L_83280:                             #        0x8296f  0      
  cmpb $0x7f, %dl                     #  1556  0x8296f  3      
  je .L_83240                         #  1557  0x82972  6      
  cmpq $0x9, %r13                     #  1558  0x82978  4      
  jbe .L_83240                        #  1559  0x8297c  6      
  addl 0x70(%rsp), %ebx               #  1560  0x82982  4      
  movl 0xd8(%rsp), %esi               #  1561  0x82986  7      
  movl 0xd4(%rsp), %edx               #  1562  0x8298d  7      
  nop                                 #  1563  0x82994  1      
  movl %r8d, 0x40(%rsp)               #  1564  0x82995  5      
  movq %r9, 0x58(%rsp)                #  1565  0x8299a  5      
  movl %r10d, 0x50(%rsp)              #  1566  0x8299f  5      
  movq %r11, 0x48(%rsp)               #  1567  0x829a4  5      
  movl %ebx, %edi                     #  1568  0x829a9  2      
  nop                                 #  1569  0x829ab  1      
  callq .strncpy                      #  1570  0x829ac  5      
  leal 0x1(%r12), %ecx                #  1571  0x829b1  5      
  xorl %esi, %esi                     #  1572  0x829b6  2      
  movl 0x40(%rsp), %r8d               #  1573  0x829b8  5      
  movq 0x58(%rsp), %r9                #  1574  0x829bd  5      
  movl 0x50(%rsp), %r10d              #  1575  0x829c2  5      
  movl %ecx, %ecx                     #  1576  0x829c7  2      
  cmpb $0x0, (%r15,%rcx,1)            #  1577  0x829c9  5      
  nop                                 #  1578  0x829ce  1      
  movq 0x48(%rsp), %r11               #  1579  0x829cf  5      
  jne .L_83260                        #  1580  0x829d4  6      
  jmpq .L_83240                       #  1581  0x829da  5      
  nop                                 #  1582  0x829df  1      
  nop                                 #  1583  0x829e0  1      
.L_83300:                             #        0x829e1  0      
  movq %rbx, 0x98(%rsp)               #  1584  0x829e1  8      
  movl 0xb8(%rsp), %esi               #  1585  0x829e9  7      
  movl %r8d, %r12d                    #  1586  0x829f0  3      
  subl 0x98(%rsp), %esi               #  1587  0x829f3  7      
  movl 0x68(%rsp), %r8d               #  1588  0x829fa  5      
  xchgw %ax, %ax                      #  1589  0x829ff  3      
  movq %r11, %rbx                     #  1590  0x82a02  3      
  movl %esi, 0x70(%rsp)               #  1591  0x82a05  4      
  jmpq .L_82380                       #  1592  0x82a09  5      
  nop                                 #  1593  0x82a0e  1      
  nop                                 #  1594  0x82a0f  1      
.L_83340:                             #        0x82a10  0      
  movl 0x78(%rsp), %esi               #  1595  0x82a10  4      
  leal 0x190(%rsp), %edx              #  1596  0x82a14  7      
  movl %r14d, %edi                    #  1597  0x82a1b  3      
  nop                                 #  1598  0x82a1e  1      
  callq .__ssprint_r                  #  1599  0x82a1f  5      
  testl %eax, %eax                    #  1600  0x82a24  2      
  jne .L_825c0                        #  1601  0x82a26  6      
  leal 0x150(%rsp), %ebx              #  1602  0x82a2c  7      
  jmpq .L_817c0                       #  1603  0x82a33  5      
  nop                                 #  1604  0x82a38  1      
.L_83380:                             #        0x82a39  0      
  movl 0x98(%rsp), %edx               #  1605  0x82a39  7      
  leal 0x1a0(%rsp), %ecx              #  1606  0x82a40  7      
  xorl %esi, %esi                     #  1607  0x82a47  2      
  movl %r8d, 0x40(%rsp)               #  1608  0x82a49  5      
  movl %ecx, %edi                     #  1609  0x82a4e  2      
  movq %rcx, 0x18(%rsp)               #  1610  0x82a50  5      
  nop                                 #  1611  0x82a55  1      
  movl %edx, 0x1c8(%rsp)              #  1612  0x82a56  7      
  movl $0x8, %edx                     #  1613  0x82a5d  5      
  nop                                 #  1614  0x82a62  1      
  callq .memset                       #  1615  0x82a63  5      
  movl 0x40(%rsp), %r8d               #  1616  0x82a68  5      
  testl %r8d, %r8d                    #  1617  0x82a6d  3      
  js .L_83da0                         #  1618  0x82a70  6      
  movq %rbx, 0x68(%rsp)               #  1619  0x82a76  5      
  movl %r12d, 0x90(%rsp)              #  1620  0x82a7b  8      
  xorl %r13d, %r13d                   #  1621  0x82a83  3      
  xchgw %ax, %ax                      #  1622  0x82a86  3      
  movl $0x0, 0x70(%rsp)               #  1623  0x82a89  8      
  movl %r8d, %ebx                     #  1624  0x82a91  3      
  xorl %r12d, %r12d                   #  1625  0x82a94  3      
  jmpq .L_83420                       #  1626  0x82a97  5      
  nop                                 #  1627  0x82a9c  1      
  nop                                 #  1628  0x82a9d  1      
.L_83400:                             #        0x82a9e  0      
  movl %eax, %r12d                    #  1629  0x82a9e  3      
  nop                                 #  1630  0x82aa1  1      
  nop                                 #  1631  0x82aa2  1      
.L_83420:                             #        0x82aa3  0      
  movl 0x1c8(%rsp), %eax              #  1632  0x82aa3  7      
  addl %r13d, %eax                    #  1633  0x82aaa  3      
  movl %eax, %eax                     #  1634  0x82aad  2      
  movl (%r15,%rax,1), %edx            #  1635  0x82aaf  4      
  testl %edx, %edx                    #  1636  0x82ab3  2      
  je .L_83d20                         #  1637  0x82ab5  6      
  movl 0x18(%rsp), %ecx               #  1638  0x82abb  4      
  movl 0x28(%rsp), %esi               #  1639  0x82abf  4      
  movl %r14d, %edi                    #  1640  0x82ac3  3      
  nop                                 #  1641  0x82ac6  1      
  nop                                 #  1642  0x82ac7  1      
  callq ._wcrtomb_r                   #  1643  0x82ac8  5      
  cmpl $0xffffffff, %eax              #  1644  0x82acd  5      
  je .L_82f60                         #  1645  0x82ad2  6      
  addl %r12d, %eax                    #  1646  0x82ad8  3      
  cmpl %eax, %ebx                     #  1647  0x82adb  2      
  jl .L_83d20                         #  1648  0x82add  6      
  addl $0x4, %r13d                    #  1649  0x82ae3  4      
  cmpl %eax, %ebx                     #  1650  0x82ae7  2      
  jne .L_83400                        #  1651  0x82ae9  6      
  movl %ebx, %r8d                     #  1652  0x82aef  3      
  nop                                 #  1653  0x82af2  1      
  movl 0x90(%rsp), %r12d              #  1654  0x82af3  8      
  movq 0x68(%rsp), %rbx               #  1655  0x82afb  5      
  movl %r8d, 0x70(%rsp)               #  1656  0x82b00  5      
  nop                                 #  1657  0x82b05  1      
.L_834a0:                             #        0x82b06  0      
  movl 0x70(%rsp), %edi               #  1658  0x82b06  4      
  testl %edi, %edi                    #  1659  0x82b0a  2      
  je .L_83860                         #  1660  0x82b0c  6      
  cmpl $0x63, 0x70(%rsp)              #  1661  0x82b12  5      
  leal 0xe0(%rsp), %esi               #  1662  0x82b17  7      
  nop                                 #  1663  0x82b1e  1      
  movq $0x0, 0x90(%rsp)               #  1664  0x82b1f  12     
  movq %rsi, 0x98(%rsp)               #  1665  0x82b2b  8      
  jg .L_83ba0                         #  1666  0x82b33  6      
  nop                                 #  1667  0x82b39  1      
.L_834e0:                             #        0x82b3a  0      
  movl 0x18(%rsp), %edi               #  1668  0x82b3a  4      
  xorl %esi, %esi                     #  1669  0x82b3e  2      
  movl $0x8, %edx                     #  1670  0x82b40  5      
  nop                                 #  1671  0x82b45  1      
  nop                                 #  1672  0x82b46  1      
  callq .memset                       #  1673  0x82b47  5      
  movl 0x18(%rsp), %r8d               #  1674  0x82b4c  5      
  movl 0x70(%rsp), %ecx               #  1675  0x82b51  4      
  leal 0x1c8(%rsp), %edx              #  1676  0x82b55  7      
  movl 0x98(%rsp), %esi               #  1677  0x82b5c  7      
  movl %r14d, %edi                    #  1678  0x82b63  3      
  nop                                 #  1679  0x82b66  1      
  callq ._wcsrtombs_r                 #  1680  0x82b67  5      
  cmpl %eax, 0x70(%rsp)               #  1681  0x82b6c  4      
  jne .L_825a0                        #  1682  0x82b70  6      
  movl 0x70(%rsp), %eax               #  1683  0x82b76  4      
  addl 0x98(%rsp), %eax               #  1684  0x82b7a  7      
  movl %eax, %eax                     #  1685  0x82b81  2      
  movb $0x0, (%r15,%rax,1)            #  1686  0x82b83  5      
  movl 0x70(%rsp), %esi               #  1687  0x82b88  4      
  movl $0x0, %eax                     #  1688  0x82b8c  5      
  movl $0x0, 0xac(%rsp)               #  1689  0x82b91  11     
  testl %esi, %esi                    #  1690  0x82b9c  2      
  cmovnsl 0x70(%rsp), %eax            #  1691  0x82b9e  5      
  movl %eax, 0x68(%rsp)               #  1692  0x82ba3  4      
  jmpq .L_823c0                       #  1693  0x82ba7  5      
.L_83560:                             #        0x82bac  0      
  movq 0x80(%rsp), %rdx               #  1694  0x82bac  8      
  movq 0x80(%rsp), %rcx               #  1695  0x82bb4  8      
  movl %edx, %edx                     #  1696  0x82bbc  2      
  movl 0x8(%r15,%rdx,1), %eax         #  1697  0x82bbe  5      
  leal 0x8(%rax), %edx                #  1698  0x82bc3  3      
  nop                                 #  1699  0x82bc6  1      
  movl %ecx, %ecx                     #  1700  0x82bc7  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  1701  0x82bc9  5      
  jmpq .L_82f20                       #  1702  0x82bce  5      
  nop                                 #  1703  0x82bd3  1      
  nop                                 #  1704  0x82bd4  1      
.L_835a0:                             #        0x82bd5  0      
  movq 0x80(%rsp), %rsi               #  1705  0x82bd5  8      
  movl %esi, %esi                     #  1706  0x82bdd  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1707  0x82bdf  5      
  leal 0x8(%rdx), %eax                #  1708  0x82be4  3      
  movl %esi, %esi                     #  1709  0x82be7  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1710  0x82be9  5      
  jmpq .L_82940                       #  1711  0x82bee  5      
  xchgw %ax, %ax                      #  1712  0x82bf3  3      
.L_835c0:                             #        0x82bf6  0      
  movq 0x80(%rsp), %rsi               #  1713  0x82bf6  8      
  movl %esi, %esi                     #  1714  0x82bfe  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1715  0x82c00  5      
  leal 0x8(%rdx), %eax                #  1716  0x82c05  3      
  movl %esi, %esi                     #  1717  0x82c08  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1718  0x82c0a  5      
  jmpq .L_82a20                       #  1719  0x82c0f  5      
  xchgw %ax, %ax                      #  1720  0x82c14  3      
.L_835e0:                             #        0x82c17  0      
  testl $0x200, %r12d                 #  1721  0x82c17  7      
  je .L_83980                         #  1722  0x82c1e  6      
  movq 0x80(%rsp), %rax               #  1723  0x82c24  8      
  movl %eax, %eax                     #  1724  0x82c2c  2      
  movl (%r15,%rax,1), %edx            #  1725  0x82c2e  4      
  cmpl $0x2f, %edx                    #  1726  0x82c32  3      
  xchgw %ax, %ax                      #  1727  0x82c35  3      
  ja .L_83e00                         #  1728  0x82c38  6      
  movq %rax, %rcx                     #  1729  0x82c3e  3      
  movl %eax, %eax                     #  1730  0x82c41  2      
  movl 0xc(%r15,%rax,1), %eax         #  1731  0x82c43  5      
  addl %edx, %eax                     #  1732  0x82c48  2      
  addl $0x8, %edx                     #  1733  0x82c4a  3      
  movl %ecx, %ecx                     #  1734  0x82c4d  2      
  movl %edx, (%r15,%rcx,1)            #  1735  0x82c4f  4      
  nop                                 #  1736  0x82c53  1      
.L_83620:                             #        0x82c54  0      
  movl %eax, %eax                     #  1737  0x82c54  2      
  movsbq (%r15,%rax,1), %r13          #  1738  0x82c56  5      
  jmpq .L_81f20                       #  1739  0x82c5b  5      
  nop                                 #  1740  0x82c60  1      
  nop                                 #  1741  0x82c61  1      
.L_83640:                             #        0x82c62  0      
  movq 0x80(%rsp), %rsi               #  1742  0x82c62  8      
  movl %esi, %esi                     #  1743  0x82c6a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1744  0x82c6c  5      
  leal 0x8(%rdx), %eax                #  1745  0x82c71  3      
  movl %esi, %esi                     #  1746  0x82c74  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1747  0x82c76  5      
  jmpq .L_829c0                       #  1748  0x82c7b  5      
  xchgw %ax, %ax                      #  1749  0x82c80  3      
.L_83660:                             #        0x82c83  0      
  testl $0x200, %r12d                 #  1750  0x82c83  7      
  je .L_83a40                         #  1751  0x82c8a  6      
  movq 0x80(%rsp), %rax               #  1752  0x82c90  8      
  movl %eax, %eax                     #  1753  0x82c98  2      
  movl (%r15,%rax,1), %edx            #  1754  0x82c9a  4      
  cmpl $0x2f, %edx                    #  1755  0x82c9e  3      
  xchgw %ax, %ax                      #  1756  0x82ca1  3      
  ja .L_83ec0                         #  1757  0x82ca4  6      
  movq %rax, %rcx                     #  1758  0x82caa  3      
  movl %eax, %eax                     #  1759  0x82cad  2      
  movl 0xc(%r15,%rax,1), %eax         #  1760  0x82caf  5      
  addl %edx, %eax                     #  1761  0x82cb4  2      
  addl $0x8, %edx                     #  1762  0x82cb6  3      
  movl %ecx, %ecx                     #  1763  0x82cb9  2      
  movl %edx, (%r15,%rcx,1)            #  1764  0x82cbb  4      
  nop                                 #  1765  0x82cbf  1      
.L_836a0:                             #        0x82cc0  0      
  movl %eax, %eax                     #  1766  0x82cc0  2      
  movzbl (%r15,%rax,1), %r13d         #  1767  0x82cc2  5      
  movl $0x1, %eax                     #  1768  0x82cc7  5      
  testq %r13, %r13                    #  1769  0x82ccc  3      
  setne %dl                           #  1770  0x82ccf  3      
  jmpq .L_822c0                       #  1771  0x82cd2  5      
  nop                                 #  1772  0x82cd7  1      
.L_836c0:                             #        0x82cd8  0      
  movq 0x80(%rsp), %rdx               #  1773  0x82cd8  8      
  movq 0x80(%rsp), %rsi               #  1774  0x82ce0  8      
  movl %edx, %edx                     #  1775  0x82ce8  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1776  0x82cea  5      
  leal 0x8(%rcx), %edx                #  1777  0x82cef  3      
  nop                                 #  1778  0x82cf2  1      
  movl %esi, %esi                     #  1779  0x82cf3  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1780  0x82cf5  5      
  jmpq .L_821c0                       #  1781  0x82cfa  5      
  nop                                 #  1782  0x82cff  1      
  nop                                 #  1783  0x82d00  1      
.L_83700:                             #        0x82d01  0      
  testl $0x200, %r12d                 #  1784  0x82d01  7      
  je .L_839e0                         #  1785  0x82d08  6      
  movq 0x80(%rsp), %rax               #  1786  0x82d0e  8      
  movl %eax, %eax                     #  1787  0x82d16  2      
  movl (%r15,%rax,1), %edx            #  1788  0x82d18  4      
  cmpl $0x2f, %edx                    #  1789  0x82d1c  3      
  xchgw %ax, %ax                      #  1790  0x82d1f  3      
  ja .L_83f20                         #  1791  0x82d22  6      
  movq %rax, %rcx                     #  1792  0x82d28  3      
  movl %eax, %eax                     #  1793  0x82d2b  2      
  movl 0xc(%r15,%rax,1), %eax         #  1794  0x82d2d  5      
  addl %edx, %eax                     #  1795  0x82d32  2      
  addl $0x8, %edx                     #  1796  0x82d34  3      
  movl %ecx, %ecx                     #  1797  0x82d37  2      
  movl %edx, (%r15,%rcx,1)            #  1798  0x82d39  4      
  nop                                 #  1799  0x82d3d  1      
.L_83740:                             #        0x82d3e  0      
  movl %eax, %eax                     #  1800  0x82d3e  2      
  movzbl (%r15,%rax,1), %r13d         #  1801  0x82d40  5      
  jmpq .L_82960                       #  1802  0x82d45  5      
  nop                                 #  1803  0x82d4a  1      
  nop                                 #  1804  0x82d4b  1      
.L_83760:                             #        0x82d4c  0      
  testl $0x200, %r12d                 #  1805  0x82d4c  7      
  je .L_83aa0                         #  1806  0x82d53  6      
  movq 0x80(%rsp), %rdx               #  1807  0x82d59  8      
  movl %edx, %edx                     #  1808  0x82d61  2      
  movl (%r15,%rdx,1), %ecx            #  1809  0x82d63  4      
  cmpl $0x2f, %ecx                    #  1810  0x82d67  3      
  xchgw %ax, %ax                      #  1811  0x82d6a  3      
  ja .L_83e40                         #  1812  0x82d6d  6      
  movq %rdx, %rsi                     #  1813  0x82d73  3      
  movl %edx, %edx                     #  1814  0x82d76  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1815  0x82d78  5      
  addl %ecx, %edx                     #  1816  0x82d7d  2      
  addl $0x8, %ecx                     #  1817  0x82d7f  3      
  movl %esi, %esi                     #  1818  0x82d82  2      
  movl %ecx, (%r15,%rsi,1)            #  1819  0x82d84  4      
  nop                                 #  1820  0x82d88  1      
.L_837a0:                             #        0x82d89  0      
  movl %edx, %edx                     #  1821  0x82d89  2      
  movzbl (%r15,%rdx,1), %r13d         #  1822  0x82d8b  5      
  jmpq .L_821e0                       #  1823  0x82d90  5      
  nop                                 #  1824  0x82d95  1      
  nop                                 #  1825  0x82d96  1      
.L_837c0:                             #        0x82d97  0      
  testb $0x40, %r12b                  #  1826  0x82d97  4      
  jne .L_83920                        #  1827  0x82d9b  6      
  andl $0x200, %r12d                  #  1828  0x82da1  7      
  je .L_83e80                         #  1829  0x82da8  6      
  movq 0x80(%rsp), %rcx               #  1830  0x82dae  8      
  nop                                 #  1831  0x82db6  1      
  movl %ecx, %ecx                     #  1832  0x82db7  2      
  movl (%r15,%rcx,1), %edx            #  1833  0x82db9  4      
  cmpl $0x2f, %edx                    #  1834  0x82dbd  3      
  ja .L_83fa0                         #  1835  0x82dc0  6      
  movl %ecx, %ecx                     #  1836  0x82dc6  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1837  0x82dc8  5      
  addl %edx, %eax                     #  1838  0x82dcd  2      
  addl $0x8, %edx                     #  1839  0x82dcf  3      
  nop                                 #  1840  0x82dd2  1      
  movl %ecx, %ecx                     #  1841  0x82dd3  2      
  movl %edx, (%r15,%rcx,1)            #  1842  0x82dd5  4      
  nop                                 #  1843  0x82dd9  1      
  nop                                 #  1844  0x82dda  1      
.L_83820:                             #        0x82ddb  0      
  movl %eax, %eax                     #  1845  0x82ddb  2      
  movl (%r15,%rax,1), %eax            #  1846  0x82ddd  4      
  movzbl 0x74(%rsp), %edx             #  1847  0x82de1  5      
  movl %eax, %eax                     #  1848  0x82de6  2      
  movb %dl, (%r15,%rax,1)             #  1849  0x82de8  4      
  jmpq .L_81300                       #  1850  0x82dec  5      
  nop                                 #  1851  0x82df1  1      
.L_83840:                             #        0x82df2  0      
  movq 0x80(%rsp), %rsi               #  1852  0x82df2  8      
  movl %esi, %esi                     #  1853  0x82dfa  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1854  0x82dfc  5      
  leal 0x8(%rdx), %eax                #  1855  0x82e01  3      
  movl %esi, %esi                     #  1856  0x82e04  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1857  0x82e06  5      
  jmpq .L_82420                       #  1858  0x82e0b  5      
  xchgw %ax, %ax                      #  1859  0x82e10  3      
.L_83860:                             #        0x82e13  0      
  movl $0x0, 0x68(%rsp)               #  1860  0x82e13  8      
  movq $0x0, 0x90(%rsp)               #  1861  0x82e1b  12     
  movl $0x0, 0xac(%rsp)               #  1862  0x82e27  11     
  nop                                 #  1863  0x82e32  1      
  jmpq .L_823c0                       #  1864  0x82e33  5      
  nop                                 #  1865  0x82e38  1      
  nop                                 #  1866  0x82e39  1      
.L_838a0:                             #        0x82e3a  0      
  movq 0x80(%rsp), %rsi               #  1867  0x82e3a  8      
  movl %esi, %esi                     #  1868  0x82e42  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1869  0x82e44  5      
  leal 0x8(%rdx), %eax                #  1870  0x82e49  3      
  movl %esi, %esi                     #  1871  0x82e4c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1872  0x82e4e  5      
  jmpq .L_81dc0                       #  1873  0x82e53  5      
  xchgw %ax, %ax                      #  1874  0x82e58  3      
.L_838c0:                             #        0x82e5b  0      
  movl $0x40, %esi                    #  1875  0x82e5b  5      
  movl %r14d, %edi                    #  1876  0x82e60  3      
  nop                                 #  1877  0x82e63  1      
  nop                                 #  1878  0x82e64  1      
  callq ._malloc_r                    #  1879  0x82e65  5      
  movq 0x78(%rsp), %rcx               #  1880  0x82e6a  5      
  movl %eax, %eax                     #  1881  0x82e6f  2      
  testq %rax, %rax                    #  1882  0x82e71  3      
  movl %ecx, %ecx                     #  1883  0x82e74  2      
  movl %eax, (%r15,%rcx,1)            #  1884  0x82e76  4      
  movl %ecx, %ecx                     #  1885  0x82e7a  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  1886  0x82e7c  5      
  je .L_84060                         #  1887  0x82e81  6      
  nop                                 #  1888  0x82e87  1      
  movq 0x78(%rsp), %rsi               #  1889  0x82e88  5      
  movl %esi, %esi                     #  1890  0x82e8d  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  1891  0x82e8f  9      
  jmpq .L_81240                       #  1892  0x82e98  5      
  nop                                 #  1893  0x82e9d  1      
.L_83920:                             #        0x82e9e  0      
  movq 0x80(%rsp), %rcx               #  1894  0x82e9e  8      
  movl %ecx, %ecx                     #  1895  0x82ea6  2      
  movl (%r15,%rcx,1), %edx            #  1896  0x82ea8  4      
  cmpl $0x2f, %edx                    #  1897  0x82eac  3      
  ja .L_83d80                         #  1898  0x82eaf  6      
  movl %ecx, %ecx                     #  1899  0x82eb5  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1900  0x82eb7  5      
  addl %edx, %eax                     #  1901  0x82ebc  2      
  addl $0x8, %edx                     #  1902  0x82ebe  3      
  movl %ecx, %ecx                     #  1903  0x82ec1  2      
  movl %edx, (%r15,%rcx,1)            #  1904  0x82ec3  4      
  nop                                 #  1905  0x82ec7  1      
  nop                                 #  1906  0x82ec8  1      
.L_83960:                             #        0x82ec9  0      
  movl %eax, %eax                     #  1907  0x82ec9  2      
  movl (%r15,%rax,1), %eax            #  1908  0x82ecb  4      
  movzwl 0x74(%rsp), %edx             #  1909  0x82ecf  5      
  movl %eax, %eax                     #  1910  0x82ed4  2      
  movw %dx, (%r15,%rax,1)             #  1911  0x82ed6  5      
  jmpq .L_81300                       #  1912  0x82edb  5      
  nop                                 #  1913  0x82ee0  1      
.L_83980:                             #        0x82ee1  0      
  movq 0x80(%rsp), %rax               #  1914  0x82ee1  8      
  movl %eax, %eax                     #  1915  0x82ee9  2      
  movl (%r15,%rax,1), %edx            #  1916  0x82eeb  4      
  cmpl $0x2f, %edx                    #  1917  0x82eef  3      
  ja .L_83e20                         #  1918  0x82ef2  6      
  movq %rax, %rcx                     #  1919  0x82ef8  3      
  nop                                 #  1920  0x82efb  1      
  movl %eax, %eax                     #  1921  0x82efc  2      
  movl 0xc(%r15,%rax,1), %eax         #  1922  0x82efe  5      
  addl %edx, %eax                     #  1923  0x82f03  2      
  addl $0x8, %edx                     #  1924  0x82f05  3      
  movl %ecx, %ecx                     #  1925  0x82f08  2      
  movl %edx, (%r15,%rcx,1)            #  1926  0x82f0a  4      
  nop                                 #  1927  0x82f0e  1      
.L_839c0:                             #        0x82f0f  0      
  movl %eax, %eax                     #  1928  0x82f0f  2      
  movslq (%r15,%rax,1), %r13          #  1929  0x82f11  4      
  jmpq .L_81f20                       #  1930  0x82f15  5      
  nop                                 #  1931  0x82f1a  1      
  nop                                 #  1932  0x82f1b  1      
.L_839e0:                             #        0x82f1c  0      
  movq 0x80(%rsp), %rax               #  1933  0x82f1c  8      
  movl %eax, %eax                     #  1934  0x82f24  2      
  movl (%r15,%rax,1), %edx            #  1935  0x82f26  4      
  cmpl $0x2f, %edx                    #  1936  0x82f2a  3      
  ja .L_83de0                         #  1937  0x82f2d  6      
  movq %rax, %rcx                     #  1938  0x82f33  3      
  nop                                 #  1939  0x82f36  1      
  movl %eax, %eax                     #  1940  0x82f37  2      
  movl 0xc(%r15,%rax,1), %eax         #  1941  0x82f39  5      
  addl %edx, %eax                     #  1942  0x82f3e  2      
  addl $0x8, %edx                     #  1943  0x82f40  3      
  movl %ecx, %ecx                     #  1944  0x82f43  2      
  movl %edx, (%r15,%rcx,1)            #  1945  0x82f45  4      
  nop                                 #  1946  0x82f49  1      
.L_83a20:                             #        0x82f4a  0      
  movl %eax, %eax                     #  1947  0x82f4a  2      
  movl (%r15,%rax,1), %r13d           #  1948  0x82f4c  4      
  jmpq .L_82960                       #  1949  0x82f50  5      
  nop                                 #  1950  0x82f55  1      
  nop                                 #  1951  0x82f56  1      
.L_83a40:                             #        0x82f57  0      
  movq 0x80(%rsp), %rax               #  1952  0x82f57  8      
  movl %eax, %eax                     #  1953  0x82f5f  2      
  movl (%r15,%rax,1), %edx            #  1954  0x82f61  4      
  cmpl $0x2f, %edx                    #  1955  0x82f65  3      
  ja .L_83f40                         #  1956  0x82f68  6      
  movq %rax, %rcx                     #  1957  0x82f6e  3      
  nop                                 #  1958  0x82f71  1      
  movl %eax, %eax                     #  1959  0x82f72  2      
  movl 0xc(%r15,%rax,1), %eax         #  1960  0x82f74  5      
  addl %edx, %eax                     #  1961  0x82f79  2      
  addl $0x8, %edx                     #  1962  0x82f7b  3      
  movl %ecx, %ecx                     #  1963  0x82f7e  2      
  movl %edx, (%r15,%rcx,1)            #  1964  0x82f80  4      
  nop                                 #  1965  0x82f84  1      
.L_83a80:                             #        0x82f85  0      
  movl %eax, %eax                     #  1966  0x82f85  2      
  movl (%r15,%rax,1), %r13d           #  1967  0x82f87  4      
  movl $0x1, %eax                     #  1968  0x82f8b  5      
  testq %r13, %r13                    #  1969  0x82f90  3      
  setne %dl                           #  1970  0x82f93  3      
  jmpq .L_822c0                       #  1971  0x82f96  5      
  nop                                 #  1972  0x82f9b  1      
.L_83aa0:                             #        0x82f9c  0      
  movq 0x80(%rsp), %rdx               #  1973  0x82f9c  8      
  movl %edx, %edx                     #  1974  0x82fa4  2      
  movl (%r15,%rdx,1), %ecx            #  1975  0x82fa6  4      
  cmpl $0x2f, %ecx                    #  1976  0x82faa  3      
  ja .L_83ee0                         #  1977  0x82fad  6      
  movq %rdx, %rsi                     #  1978  0x82fb3  3      
  nop                                 #  1979  0x82fb6  1      
  movl %edx, %edx                     #  1980  0x82fb7  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1981  0x82fb9  5      
  addl %ecx, %edx                     #  1982  0x82fbe  2      
  addl $0x8, %ecx                     #  1983  0x82fc0  3      
  movl %esi, %esi                     #  1984  0x82fc3  2      
  movl %ecx, (%r15,%rsi,1)            #  1985  0x82fc5  4      
  nop                                 #  1986  0x82fc9  1      
.L_83ae0:                             #        0x82fca  0      
  movl %edx, %edx                     #  1987  0x82fca  2      
  movl (%r15,%rdx,1), %r13d           #  1988  0x82fcc  4      
  jmpq .L_821e0                       #  1989  0x82fd0  5      
  nop                                 #  1990  0x82fd5  1      
  nop                                 #  1991  0x82fd6  1      
.L_83b00:                             #        0x82fd7  0      
  movq 0x80(%rsp), %rsi               #  1992  0x82fd7  8      
  movl %esi, %esi                     #  1993  0x82fdf  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1994  0x82fe1  5      
  leal 0x8(%rax), %edx                #  1995  0x82fe6  3      
  movl %esi, %esi                     #  1996  0x82fe9  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1997  0x82feb  5      
  jmpq .L_82e00                       #  1998  0x82ff0  5      
  xchgw %ax, %ax                      #  1999  0x82ff5  3      
.L_83b20:                             #        0x82ff8  0      
  movq %rax, %rcx                     #  2000  0x82ff8  3      
  movl %eax, %eax                     #  2001  0x82ffb  2      
  movl 0xc(%r15,%rax,1), %eax         #  2002  0x82ffd  5      
  addl %edx, %eax                     #  2003  0x83002  2      
  addl $0x8, %edx                     #  2004  0x83004  3      
  movl %ecx, %ecx                     #  2005  0x83007  2      
  movl %edx, (%r15,%rcx,1)            #  2006  0x83009  4      
  jmpq .L_82b40                       #  2007  0x8300d  5      
  nop                                 #  2008  0x83012  1      
.L_83b40:                             #        0x83013  0      
  movq %rax, %rcx                     #  2009  0x83013  3      
  movl %eax, %eax                     #  2010  0x83016  2      
  movl 0xc(%r15,%rax,1), %eax         #  2011  0x83018  5      
  addl %edx, %eax                     #  2012  0x8301d  2      
  addl $0x8, %edx                     #  2013  0x8301f  3      
  movl %ecx, %ecx                     #  2014  0x83022  2      
  movl %edx, (%r15,%rcx,1)            #  2015  0x83024  4      
  jmpq .L_82c40                       #  2016  0x83028  5      
  nop                                 #  2017  0x8302d  1      
.L_83b60:                             #        0x8302e  0      
  movq %rax, %rcx                     #  2018  0x8302e  3      
  movl %eax, %eax                     #  2019  0x83031  2      
  movl 0xc(%r15,%rax,1), %eax         #  2020  0x83033  5      
  addl %edx, %eax                     #  2021  0x83038  2      
  addl $0x8, %edx                     #  2022  0x8303a  3      
  movl %ecx, %ecx                     #  2023  0x8303d  2      
  movl %edx, (%r15,%rcx,1)            #  2024  0x8303f  4      
  jmpq .L_82cc0                       #  2025  0x83043  5      
  nop                                 #  2026  0x83048  1      
.L_83b80:                             #        0x83049  0      
  movq %rdx, %rsi                     #  2027  0x83049  3      
  movl %edx, %edx                     #  2028  0x8304c  2      
  movl 0xc(%r15,%rdx,1), %edx         #  2029  0x8304e  5      
  addl %ecx, %edx                     #  2030  0x83053  2      
  addl $0x8, %ecx                     #  2031  0x83055  3      
  movl %esi, %esi                     #  2032  0x83058  2      
  movl %ecx, (%r15,%rsi,1)            #  2033  0x8305a  4      
  jmpq .L_82da0                       #  2034  0x8305e  5      
  nop                                 #  2035  0x83063  1      
.L_83ba0:                             #        0x83064  0      
  movl 0x70(%rsp), %esi               #  2036  0x83064  4      
  movl %r14d, %edi                    #  2037  0x83068  3      
  addl $0x1, %esi                     #  2038  0x8306b  3      
  xchgw %ax, %ax                      #  2039  0x8306e  3      
  nop                                 #  2040  0x83071  1      
  callq ._malloc_r                    #  2041  0x83072  5      
  movl %eax, %eax                     #  2042  0x83077  2      
  testq %rax, %rax                    #  2043  0x83079  3      
  movq %rax, 0x90(%rsp)               #  2044  0x8307c  8      
  je .L_84080                         #  2045  0x83084  6      
  movq 0x90(%rsp), %rcx               #  2046  0x8308a  8      
  nop                                 #  2047  0x83092  1      
  movq %rcx, 0x98(%rsp)               #  2048  0x83093  8      
  jmpq .L_834e0                       #  2049  0x8309b  5      
  nop                                 #  2050  0x830a0  1      
  nop                                 #  2051  0x830a1  1      
.L_83c00:                             #        0x830a2  0      
  cmpl $0x0, 0x70(%rsp)               #  2052  0x830a2  5      
  movq $0x0, 0x90(%rsp)               #  2053  0x830a7  12     
  cmovnsl 0x70(%rsp), %r13d           #  2054  0x830b3  6      
  nop                                 #  2055  0x830b9  1      
  movl $0x0, 0xac(%rsp)               #  2056  0x830ba  11     
  movl %r13d, 0x68(%rsp)              #  2057  0x830c5  5      
  jmpq .L_823c0                       #  2058  0x830ca  5      
  nop                                 #  2059  0x830cf  1      
.L_83c40:                             #        0x830d0  0      
  movl 0xb8(%rsp), %esi               #  2060  0x830d0  7      
  subl 0x98(%rsp), %esi               #  2061  0x830d7  7      
  movq 0xb0(%rsp), %rcx               #  2062  0x830de  8      
  movl %esi, 0x70(%rsp)               #  2063  0x830e6  4      
  jmpq .L_82380                       #  2064  0x830ea  5      
  nop                                 #  2065  0x830ef  1      
.L_83c60:                             #        0x830f0  0      
  movl $0x6, 0x70(%rsp)               #  2066  0x830f0  8      
  cmpl $0x6, %r8d                     #  2067  0x830f8  4      
  cmoval 0x70(%rsp), %r8d             #  2068  0x830fc  6      
  movl $0x0, %eax                     #  2069  0x83102  5      
  nop                                 #  2070  0x83107  1      
  movq $0x10023c12, 0x98(%rsp)        #  2071  0x83108  12     
  testl %r8d, %r8d                    #  2072  0x83114  3      
  movl %r8d, 0x70(%rsp)               #  2073  0x83117  5      
  cmovnsl %r8d, %eax                  #  2074  0x8311c  4      
  movl %eax, 0x68(%rsp)               #  2075  0x83120  4      
  nop                                 #  2076  0x83124  1      
  jmpq .L_81540                       #  2077  0x83125  5      
  nop                                 #  2078  0x8312a  1      
  nop                                 #  2079  0x8312b  1      
.L_83cc0:                             #        0x8312c  0      
  movl 0x98(%rsp), %edi               #  2080  0x8312c  7      
  nop                                 #  2081  0x83133  1      
  nop                                 #  2082  0x83134  1      
  callq .strlen                       #  2083  0x83135  5      
  testl %eax, %eax                    #  2084  0x8313a  2      
  movl %eax, 0x70(%rsp)               #  2085  0x8313c  4      
  movq $0x0, 0x90(%rsp)               #  2086  0x83140  12     
  cmovnsl %eax, %r13d                 #  2087  0x8314c  4      
  nop                                 #  2088  0x83150  1      
  movl $0x0, 0xac(%rsp)               #  2089  0x83151  11     
  movl %r13d, 0x68(%rsp)              #  2090  0x8315c  5      
  jmpq .L_823c0                       #  2091  0x83161  5      
  nop                                 #  2092  0x83166  1      
.L_83d20:                             #        0x83167  0      
  movl %r12d, 0x70(%rsp)              #  2093  0x83167  5      
  movq 0x68(%rsp), %rbx               #  2094  0x8316c  5      
  movl 0x90(%rsp), %r12d              #  2095  0x83171  8      
  jmpq .L_834a0                       #  2096  0x83179  5      
  nop                                 #  2097  0x8317e  1      
.L_83d40:                             #        0x8317f  0      
  movl 0x78(%rsp), %esi               #  2098  0x8317f  4      
  leal 0x190(%rsp), %edx              #  2099  0x83183  7      
  movl %r14d, %edi                    #  2100  0x8318a  3      
  nop                                 #  2101  0x8318d  1      
  callq .__ssprint_r                  #  2102  0x8318e  5      
  testl %eax, %eax                    #  2103  0x83193  2      
  je .L_82fa0                         #  2104  0x83195  6      
  jmpq .L_825e0                       #  2105  0x8319b  5      
  nop                                 #  2106  0x831a0  1      
  nop                                 #  2107  0x831a1  1      
.L_83d80:                             #        0x831a2  0      
  movq 0x80(%rsp), %rsi               #  2108  0x831a2  8      
  movl %esi, %esi                     #  2109  0x831aa  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2110  0x831ac  5      
  leal 0x8(%rax), %edx                #  2111  0x831b1  3      
  movl %esi, %esi                     #  2112  0x831b4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2113  0x831b6  5      
  jmpq .L_83960                       #  2114  0x831bb  5      
  xchgw %ax, %ax                      #  2115  0x831c0  3      
.L_83da0:                             #        0x831c3  0      
  movl 0x18(%rsp), %r8d               #  2116  0x831c3  5      
  leal 0x1c8(%rsp), %edx              #  2117  0x831c8  7      
  xorl %ecx, %ecx                     #  2118  0x831cf  2      
  xorl %esi, %esi                     #  2119  0x831d1  2      
  movl %r14d, %edi                    #  2120  0x831d3  3      
  nop                                 #  2121  0x831d6  1      
  callq ._wcsrtombs_r                 #  2122  0x831d7  5      
  cmpl $0xffffffff, %eax              #  2123  0x831dc  5      
  movl %eax, 0x70(%rsp)               #  2124  0x831e1  4      
  je .L_84080                         #  2125  0x831e5  6      
  movl 0x98(%rsp), %ecx               #  2126  0x831eb  7      
  movl %ecx, 0x1c8(%rsp)              #  2127  0x831f2  7      
  jmpq .L_834a0                       #  2128  0x831f9  5      
.L_83de0:                             #        0x831fe  0      
  movq 0x80(%rsp), %rsi               #  2129  0x831fe  8      
  movl %esi, %esi                     #  2130  0x83206  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2131  0x83208  5      
  leal 0x8(%rax), %edx                #  2132  0x8320d  3      
  movl %esi, %esi                     #  2133  0x83210  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2134  0x83212  5      
  jmpq .L_83a20                       #  2135  0x83217  5      
  xchgw %ax, %ax                      #  2136  0x8321c  3      
.L_83e00:                             #        0x8321f  0      
  movq 0x80(%rsp), %rsi               #  2137  0x8321f  8      
  movl %esi, %esi                     #  2138  0x83227  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2139  0x83229  5      
  leal 0x8(%rax), %edx                #  2140  0x8322e  3      
  movl %esi, %esi                     #  2141  0x83231  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2142  0x83233  5      
  jmpq .L_83620                       #  2143  0x83238  5      
  xchgw %ax, %ax                      #  2144  0x8323d  3      
.L_83e20:                             #        0x83240  0      
  movq 0x80(%rsp), %rsi               #  2145  0x83240  8      
  movl %esi, %esi                     #  2146  0x83248  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2147  0x8324a  5      
  leal 0x8(%rax), %edx                #  2148  0x8324f  3      
  movl %esi, %esi                     #  2149  0x83252  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2150  0x83254  5      
  jmpq .L_839c0                       #  2151  0x83259  5      
  xchgw %ax, %ax                      #  2152  0x8325e  3      
.L_83e40:                             #        0x83261  0      
  movq 0x80(%rsp), %rcx               #  2153  0x83261  8      
  movq 0x80(%rsp), %rsi               #  2154  0x83269  8      
  movl %ecx, %ecx                     #  2155  0x83271  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2156  0x83273  5      
  leal 0x8(%rdx), %ecx                #  2157  0x83278  3      
  nop                                 #  2158  0x8327b  1      
  movl %esi, %esi                     #  2159  0x8327c  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2160  0x8327e  5      
  jmpq .L_837a0                       #  2161  0x83283  5      
  nop                                 #  2162  0x83288  1      
  nop                                 #  2163  0x83289  1      
.L_83e80:                             #        0x8328a  0      
  movq 0x80(%rsp), %rcx               #  2164  0x8328a  8      
  movl %ecx, %ecx                     #  2165  0x83292  2      
  movl (%r15,%rcx,1), %edx            #  2166  0x83294  4      
  cmpl $0x2f, %edx                    #  2167  0x83298  3      
  ja .L_82b20                         #  2168  0x8329b  6      
  movl %ecx, %ecx                     #  2169  0x832a1  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2170  0x832a3  5      
  addl %edx, %eax                     #  2171  0x832a8  2      
  addl $0x8, %edx                     #  2172  0x832aa  3      
  movl %ecx, %ecx                     #  2173  0x832ad  2      
  movl %edx, (%r15,%rcx,1)            #  2174  0x832af  4      
  jmpq .L_82b40                       #  2175  0x832b3  5      
  nop                                 #  2176  0x832b8  1      
  nop                                 #  2177  0x832b9  1      
.L_83ec0:                             #        0x832ba  0      
  movq 0x80(%rsp), %rsi               #  2178  0x832ba  8      
  movl %esi, %esi                     #  2179  0x832c2  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2180  0x832c4  5      
  leal 0x8(%rax), %edx                #  2181  0x832c9  3      
  movl %esi, %esi                     #  2182  0x832cc  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2183  0x832ce  5      
  jmpq .L_836a0                       #  2184  0x832d3  5      
  xchgw %ax, %ax                      #  2185  0x832d8  3      
.L_83ee0:                             #        0x832db  0      
  movq 0x80(%rsp), %rcx               #  2186  0x832db  8      
  movq 0x80(%rsp), %rsi               #  2187  0x832e3  8      
  movl %ecx, %ecx                     #  2188  0x832eb  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2189  0x832ed  5      
  leal 0x8(%rdx), %ecx                #  2190  0x832f2  3      
  nop                                 #  2191  0x832f5  1      
  movl %esi, %esi                     #  2192  0x832f6  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2193  0x832f8  5      
  jmpq .L_83ae0                       #  2194  0x832fd  5      
  nop                                 #  2195  0x83302  1      
  nop                                 #  2196  0x83303  1      
.L_83f20:                             #        0x83304  0      
  movq 0x80(%rsp), %rsi               #  2197  0x83304  8      
  movl %esi, %esi                     #  2198  0x8330c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2199  0x8330e  5      
  leal 0x8(%rax), %edx                #  2200  0x83313  3      
  movl %esi, %esi                     #  2201  0x83316  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2202  0x83318  5      
  jmpq .L_83740                       #  2203  0x8331d  5      
  xchgw %ax, %ax                      #  2204  0x83322  3      
.L_83f40:                             #        0x83325  0      
  movq 0x80(%rsp), %rsi               #  2205  0x83325  8      
  movl %esi, %esi                     #  2206  0x8332d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2207  0x8332f  5      
  leal 0x8(%rax), %edx                #  2208  0x83334  3      
  movl %esi, %esi                     #  2209  0x83337  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2210  0x83339  5      
  jmpq .L_83a80                       #  2211  0x8333e  5      
  xchgw %ax, %ax                      #  2212  0x83343  3      
.L_83f60:                             #        0x83346  0      
  movl %r8d, 0x68(%rsp)               #  2213  0x83346  5      
  movl %r8d, 0x70(%rsp)               #  2214  0x8334b  5      
  movq $0x0, 0x90(%rsp)               #  2215  0x83350  12     
  nop                                 #  2216  0x8335c  1      
  movl $0x0, 0xac(%rsp)               #  2217  0x8335d  11     
  jmpq .L_823c0                       #  2218  0x83368  5      
  nop                                 #  2219  0x8336d  1      
  nop                                 #  2220  0x8336e  1      
.L_83fa0:                             #        0x8336f  0      
  movq 0x80(%rsp), %rsi               #  2221  0x8336f  8      
  movl %esi, %esi                     #  2222  0x83377  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2223  0x83379  5      
  leal 0x8(%rax), %edx                #  2224  0x8337e  3      
  movl %esi, %esi                     #  2225  0x83381  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2226  0x83383  5      
  jmpq .L_83820                       #  2227  0x83388  5      
  xchgw %ax, %ax                      #  2228  0x8338d  3      
.L_83fc0:                             #        0x83390  0      
  movq 0x80(%rsp), %rsi               #  2229  0x83390  8      
  movl %esi, %esi                     #  2230  0x83398  2      
  movl (%r15,%rsi,1), %edx            #  2231  0x8339a  4      
  cmpl $0x2f, %edx                    #  2232  0x8339e  3      
  ja .L_84020                         #  2233  0x833a1  6      
  movl %esi, %esi                     #  2234  0x833a7  2      
  movl 0xc(%r15,%rsi,1), %eax         #  2235  0x833a9  5      
  addl %edx, %eax                     #  2236  0x833ae  2      
  addl $0x8, %edx                     #  2237  0x833b0  3      
  nop                                 #  2238  0x833b3  1      
  movl %esi, %esi                     #  2239  0x833b4  2      
  movl %edx, (%r15,%rsi,1)            #  2240  0x833b6  4      
  nop                                 #  2241  0x833ba  1      
  nop                                 #  2242  0x833bb  1      
.L_84000:                             #        0x833bc  0      
  movl %eax, %eax                     #  2243  0x833bc  2      
  movl (%r15,%rax,1), %r8d            #  2244  0x833be  4      
  testl %r8d, %r8d                    #  2245  0x833c2  3      
  jns .L_81ba0                        #  2246  0x833c5  6      
  movl %r13d, %r13d                   #  2247  0x833cb  3      
  movzbl (%r15,%r13,1), %eax          #  2248  0x833ce  5      
  orl $0xffffffff, %r8d               #  2249  0x833d3  7      
  jmpq .L_814c0                       #  2250  0x833da  5      
.L_84020:                             #        0x833df  0      
  movq 0x80(%rsp), %rdx               #  2251  0x833df  8      
  movq 0x80(%rsp), %rcx               #  2252  0x833e7  8      
  movl %edx, %edx                     #  2253  0x833ef  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2254  0x833f1  5      
  leal 0x8(%rax), %edx                #  2255  0x833f6  3      
  nop                                 #  2256  0x833f9  1      
  movl %ecx, %ecx                     #  2257  0x833fa  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  2258  0x833fc  5      
  jmpq .L_84000                       #  2259  0x83401  5      
  nop                                 #  2260  0x83406  1      
  nop                                 #  2261  0x83407  1      
.L_84060:                             #        0x83408  0      
  movl %r14d, %r14d                   #  2262  0x83408  3      
  movl $0xc, (%r15,%r14,1)            #  2263  0x8340b  8      
  movl $0xffffffff, 0x74(%rsp)        #  2264  0x83413  8      
  jmpq .L_82620                       #  2265  0x8341b  5      
  nop                                 #  2266  0x83420  1      
.L_84080:                             #        0x83421  0      
  movq 0x78(%rsp), %rdx               #  2267  0x83421  5      
  movl %edx, %edx                     #  2268  0x83426  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  2269  0x83428  6      
  orl $0x40, %eax                     #  2270  0x8342e  3      
  movl %edx, %edx                     #  2271  0x83431  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  2272  0x83433  6      
  jmpq .L_82600                       #  2273  0x83439  5      
  nop                                 #  2274  0x8343e  1      
  nop                                 #  2275  0x8343f  1      
  nop                                 #  2276  0x83440  1      
                                                               
.size _svfiprintf_r, .-_svfiprintf_r

