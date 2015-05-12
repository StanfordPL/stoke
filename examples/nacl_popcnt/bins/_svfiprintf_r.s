  .text
  .globl _svfiprintf_r
  .type _svfiprintf_r, @function

#! file-offset 0x81140
#! rip-offset  0x81140
#! capacity    12000 bytes

# Text                                #  Line  RIP      Bytes  
._svfiprintf_r:                       #        0x81140  0      
  pushq %r14                          #  1     0x81140  3      
  movl %esi, %esi                     #  2     0x81143  2      
  movl %ecx, %ecx                     #  3     0x81145  2      
  movl %edi, %r14d                    #  4     0x81147  3      
  pushq %r13                          #  5     0x8114a  3      
  pushq %r12                          #  6     0x8114d  3      
  pushq %rbx                          #  7     0x81150  2      
  movl %edx, %ebx                     #  8     0x81152  2      
  movl $0x8, %edx                     #  9     0x81154  5      
  subl $0x1e8, %esp                   #  10    0x81159  6      
  addq %r15, %rsp                     #  11    0x8115f  3      
  xchgw %ax, %ax                      #  12    0x81162  3      
  leal 0x1c0(%rsp), %eax              #  13    0x81165  7      
  movq %rsi, 0x78(%rsp)               #  14    0x8116c  5      
  xorl %esi, %esi                     #  15    0x81171  2      
  movq %rcx, 0x80(%rsp)               #  16    0x81173  8      
  movl %eax, %edi                     #  17    0x8117b  2      
  movq %rax, 0x38(%rsp)               #  18    0x8117d  5      
  nop                                 #  19    0x81182  1      
  nop                                 #  20    0x81183  1      
  nop                                 #  21    0x81184  1      
  callq .memset                       #  22    0x81185  5      
  movq 0x78(%rsp), %rdx               #  23    0x8118a  5      
  movl %edx, %edx                     #  24    0x8118f  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  25    0x81191  6      
  jns .L_811c0                        #  26    0x81197  6      
  movl %edx, %edx                     #  27    0x8119d  2      
  movl 0x10(%r15,%rdx,1), %r10d       #  28    0x8119f  5      
  testl %r10d, %r10d                  #  29    0x811a4  3      
  je .L_83840                         #  30    0x811a7  6      
  nop                                 #  31    0x811ad  1      
.L_811c0:                             #        0x811ae  0      
  leal 0x150(%rsp), %eax              #  32    0x811ae  7      
  leal 0xe0(%rsp), %ecx               #  33    0x811b5  7      
  movq %rbx, 0x60(%rsp)               #  34    0x811bc  5      
  leal 0x1cc(%rsp), %edx              #  35    0x811c1  7      
  nop                                 #  36    0x811c8  1      
  movl $0x0, 0x198(%rsp)              #  37    0x811c9  11     
  movl $0x0, 0x194(%rsp)              #  38    0x811d4  11     
  movq %rax, 0x30(%rsp)               #  39    0x811df  5      
  nop                                 #  40    0x811e4  1      
  movl %eax, 0x190(%rsp)              #  41    0x811e5  7      
  movq %rax, %rbx                     #  42    0x811ec  3      
  movq %rcx, 0x28(%rsp)               #  43    0x811ef  5      
  movl 0x28(%rsp), %eax               #  44    0x811f4  4      
  movq $0x0, 0xc0(%rsp)               #  45    0x811f8  12     
  nop                                 #  46    0x81204  1      
  movq $0x0, 0xb0(%rsp)               #  47    0x81205  12     
  movl $0x0, 0xd4(%rsp)               #  48    0x81211  11     
  nop                                 #  49    0x8121c  1      
  movq $0x0, 0xd8(%rsp)               #  50    0x8121d  12     
  addl $0x64, %eax                    #  51    0x81229  3      
  movl $0x0, 0x74(%rsp)               #  52    0x8122c  8      
  movq %rdx, 0x20(%rsp)               #  53    0x81234  5      
  movl %eax, %eax                     #  54    0x81239  2      
  movl %eax, %esi                     #  55    0x8123b  2      
  movq %rax, 0xb8(%rsp)               #  56    0x8123d  8      
  subl $0x1, %esi                     #  57    0x81245  3      
  movq %rsi, 0xc8(%rsp)               #  58    0x81248  8      
  nop                                 #  59    0x81250  1      
.L_81280:                             #        0x81251  0      
  movq 0x60(%rsp), %r12               #  60    0x81251  5      
  movq %rbx, %r13                     #  61    0x81256  3      
  jmpq .L_812e0                       #  62    0x81259  5      
  nop                                 #  63    0x8125e  1      
  nop                                 #  64    0x8125f  1      
.L_812a0:                             #        0x81260  0      
  cmpl $0x25, 0x1cc(%rsp)             #  65    0x81260  8      
  je .L_81380                         #  66    0x81268  6      
  nop                                 #  67    0x8126e  1      
  nop                                 #  68    0x8126f  1      
.L_812c0:                             #        0x81270  0      
  leal (%rax,%r12,1), %r12d           #  69    0x81270  4      
  nop                                 #  70    0x81274  1      
  nop                                 #  71    0x81275  1      
.L_812e0:                             #        0x81276  0      
  movl 0xffaf944(%rip), %ebx          #  72    0x81276  6      
  nop                                 #  73    0x8127c  1      
  nop                                 #  74    0x8127d  1      
  callq .__locale_charset             #  75    0x8127e  5      
  movl %eax, %r8d                     #  76    0x81283  3      
  movq %r8, 0x40(%rsp)                #  77    0x81286  5      
  nop                                 #  78    0x8128b  1      
  nop                                 #  79    0x8128c  1      
  callq .__locale_mb_cur_max          #  80    0x8128d  5      
  movl 0x38(%rsp), %r9d               #  81    0x81292  5      
  movl %eax, %ecx                     #  82    0x81297  2      
  movq 0x40(%rsp), %r8                #  83    0x81299  5      
  movl %r12d, %edx                    #  84    0x8129e  3      
  movl 0x20(%rsp), %esi               #  85    0x812a1  4      
  movl %r14d, %edi                    #  86    0x812a5  3      
  xchgw %ax, %ax                      #  87    0x812a8  3      
  andl $0xffffffe0, %ebx              #  88    0x812ab  6      
  addq %r15, %rbx                     #  89    0x812b1  3      
  callq %rbx                          #  90    0x812b4  2      
  cmpl $0x0, %eax                     #  91    0x812b6  3      
  je .L_81380                         #  92    0x812b9  6      
  jge .L_812a0                        #  93    0x812bf  6      
  movl 0x38(%rsp), %edi               #  94    0x812c5  4      
  movl $0x8, %edx                     #  95    0x812c9  5      
  xorl %esi, %esi                     #  96    0x812ce  2      
  nop                                 #  97    0x812d0  1      
  callq .memset                       #  98    0x812d1  5      
  movl $0x1, %eax                     #  99    0x812d6  5      
  jmpq .L_812c0                       #  100   0x812db  5      
  nop                                 #  101   0x812e0  1      
  nop                                 #  102   0x812e1  1      
.L_81380:                             #        0x812e2  0      
  movl %r12d, %ecx                    #  103   0x812e2  3      
  subl 0x60(%rsp), %ecx               #  104   0x812e5  4      
  movq %r13, %rbx                     #  105   0x812e9  3      
  movl %eax, %r13d                    #  106   0x812ec  3      
  je .L_81400                         #  107   0x812ef  6      
  movl 0x60(%rsp), %eax               #  108   0x812f5  4      
  movl %ebx, %ebx                     #  109   0x812f9  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  110   0x812fb  5      
  nop                                 #  111   0x81300  1      
  addl %ecx, 0x198(%rsp)              #  112   0x81301  7      
  movl %ebx, %ebx                     #  113   0x81308  2      
  movl %eax, (%r15,%rbx,1)            #  114   0x8130a  4      
  movl 0x194(%rsp), %eax              #  115   0x8130e  7      
  addl $0x1, %eax                     #  116   0x81315  3      
  cmpl $0x7, %eax                     #  117   0x81318  3      
  nop                                 #  118   0x8131b  1      
  movl %eax, 0x194(%rsp)              #  119   0x8131c  7      
  jg .L_82780                         #  120   0x81323  6      
  addl $0x8, %ebx                     #  121   0x81329  3      
  nop                                 #  122   0x8132c  1      
  nop                                 #  123   0x8132d  1      
.L_813e0:                             #        0x8132e  0      
  addl %ecx, 0x74(%rsp)               #  124   0x8132e  4      
  nop                                 #  125   0x81332  1      
  nop                                 #  126   0x81333  1      
.L_81400:                             #        0x81334  0      
  testl %r13d, %r13d                  #  127   0x81334  3      
  je .L_82f00                         #  128   0x81337  6      
  addl $0x1, %r12d                    #  129   0x8133d  4      
  movb $0x0, 0x1df(%rsp)              #  130   0x81341  8      
  movl $0xffffffff, %r8d              #  131   0x81349  6      
  movq %r12, %rdx                     #  132   0x8134f  3      
  xchgw %ax, %ax                      #  133   0x81352  3      
  movq %r12, 0x60(%rsp)               #  134   0x81355  5      
  movl %r12d, %r12d                   #  135   0x8135a  3      
  movzbl (%r15,%r12,1), %eax          #  136   0x8135d  5      
  movq %rdx, %r13                     #  137   0x81362  3      
  movl $0x0, 0x8c(%rsp)               #  138   0x81365  11     
  xorl %r12d, %r12d                   #  139   0x81370  3      
  xchgw %ax, %ax                      #  140   0x81373  3      
.L_81440:                             #        0x81376  0      
  movsbl %al, %eax                    #  141   0x81376  3      
  addl $0x1, %r13d                    #  142   0x81379  4      
  nop                                 #  143   0x8137d  1      
  nop                                 #  144   0x8137e  1      
.L_81460:                             #        0x8137f  0      
  leal -0x20(%rax), %edx              #  145   0x8137f  3      
  cmpl $0x5a, %edx                    #  146   0x81382  3      
  jbe .L_81ae0                        #  147   0x81385  6      
  nop                                 #  148   0x8138b  1      
  nop                                 #  149   0x8138c  1      
  testl %eax, %eax                    #  150   0x8138d  2      
  movq %r13, 0x60(%rsp)               #  151   0x8138f  5      
  je .L_82f00                         #  152   0x81394  6      
  leal 0xe0(%rsp), %edx               #  153   0x8139a  7      
  movb %al, 0xe0(%rsp)                #  154   0x813a1  7      
  nop                                 #  155   0x813a8  1      
  movb $0x0, 0x1df(%rsp)              #  156   0x813a9  8      
  movl $0x1, 0x68(%rsp)               #  157   0x813b1  8      
  movl $0x1, 0x70(%rsp)               #  158   0x813b9  8      
  movq %rdx, 0x98(%rsp)               #  159   0x813c1  8      
.L_814c0:                             #        0x813c9  0      
  movq $0x0, 0x90(%rsp)               #  160   0x813c9  12     
  movl $0x0, 0xac(%rsp)               #  161   0x813d5  11     
  nop                                 #  162   0x813e0  1      
.L_814e0:                             #        0x813e1  0      
  movl 0x68(%rsp), %eax               #  163   0x813e1  4      
  movl %r12d, %ecx                    #  164   0x813e5  3      
  movl %r12d, %esi                    #  165   0x813e8  3      
  addl $0x2, %eax                     #  166   0x813eb  3      
  andl $0x2, %ecx                     #  167   0x813ee  3      
  cmovel 0x68(%rsp), %eax             #  168   0x813f1  5      
  andl $0x84, %esi                    #  169   0x813f6  3      
  nop                                 #  170   0x813f9  1      
  movl %ecx, 0xa8(%rsp)               #  171   0x813fa  7      
  movl %esi, 0xa4(%rsp)               #  172   0x81401  7      
  movl %eax, 0x68(%rsp)               #  173   0x81408  4      
  jne .L_81660                        #  174   0x8140c  6      
  movl 0x8c(%rsp), %r13d              #  175   0x81412  8      
  subl %eax, %r13d                    #  176   0x8141a  3      
  testl %r13d, %r13d                  #  177   0x8141d  3      
  jle .L_81660                        #  178   0x81420  6      
  cmpl $0x10, %r13d                   #  179   0x81426  4      
  jle .L_81620                        #  180   0x8142a  6      
  leal 0x190(%rsp), %eax              #  181   0x81430  7      
  nop                                 #  182   0x81437  1      
  movq %rax, 0x10(%rsp)               #  183   0x81438  5      
  movq %rbx, %rax                     #  184   0x8143d  3      
  movq 0x78(%rsp), %rbx               #  185   0x81440  5      
  jmpq .L_81580                       #  186   0x81445  5      
  xchgw %ax, %ax                      #  187   0x8144a  3      
  nop                                 #  188   0x8144d  1      
.L_81560:                             #        0x8144e  0      
  subl $0x10, %r13d                   #  189   0x8144e  4      
  addl $0x8, %eax                     #  190   0x81452  3      
  cmpl $0x10, %r13d                   #  191   0x81455  4      
  jle .L_81600                        #  192   0x81459  6      
  nop                                 #  193   0x8145f  1      
.L_81580:                             #        0x81460  0      
  movl %eax, %eax                     #  194   0x81460  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  195   0x81462  9      
  movl 0x194(%rsp), %edx              #  196   0x8146b  7      
  addl $0x10, 0x198(%rsp)             #  197   0x81472  8      
  nop                                 #  198   0x8147a  1      
  movl %eax, %eax                     #  199   0x8147b  2      
  movl $0x10024c30, (%r15,%rax,1)     #  200   0x8147d  8      
  addl $0x1, %edx                     #  201   0x81485  3      
  cmpl $0x7, %edx                     #  202   0x81488  3      
  movl %edx, 0x194(%rsp)              #  203   0x8148b  7      
  jle .L_81560                        #  204   0x81492  6      
  movl 0x10(%rsp), %edx               #  205   0x81498  4      
  movl %ebx, %esi                     #  206   0x8149c  2      
  nop                                 #  207   0x8149e  1      
  movl %r14d, %edi                    #  208   0x8149f  3      
  nop                                 #  209   0x814a2  1      
  nop                                 #  210   0x814a3  1      
  callq .__ssprint_r                  #  211   0x814a4  5      
  testl %eax, %eax                    #  212   0x814a9  2      
  jne .L_82540                        #  213   0x814ab  6      
  subl $0x10, %r13d                   #  214   0x814b1  4      
  leal 0x150(%rsp), %eax              #  215   0x814b5  7      
  cmpl $0x10, %r13d                   #  216   0x814bc  4      
  jg .L_81580                         #  217   0x814c0  6      
  nop                                 #  218   0x814c6  1      
.L_81600:                             #        0x814c7  0      
  movq %rax, %rbx                     #  219   0x814c7  3      
  nop                                 #  220   0x814ca  1      
  nop                                 #  221   0x814cb  1      
.L_81620:                             #        0x814cc  0      
  movl %ebx, %ebx                     #  222   0x814cc  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  223   0x814ce  5      
  movl 0x194(%rsp), %eax              #  224   0x814d3  7      
  addl %r13d, 0x198(%rsp)             #  225   0x814da  8      
  movl %ebx, %ebx                     #  226   0x814e2  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  227   0x814e4  8      
  addl $0x1, %eax                     #  228   0x814ec  3      
  cmpl $0x7, %eax                     #  229   0x814ef  3      
  movl %eax, 0x194(%rsp)              #  230   0x814f2  7      
  jg .L_829e0                         #  231   0x814f9  6      
  addl $0x8, %ebx                     #  232   0x814ff  3      
  nop                                 #  233   0x81502  1      
.L_81660:                             #        0x81503  0      
  cmpb $0x0, 0x1df(%rsp)              #  234   0x81503  8      
  je .L_816c0                         #  235   0x8150b  6      
  leal 0x1df(%rsp), %eax              #  236   0x81511  7      
  movl %ebx, %ebx                     #  237   0x81518  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  238   0x8151a  9      
  nop                                 #  239   0x81523  1      
  addl $0x1, 0x198(%rsp)              #  240   0x81524  8      
  movl %ebx, %ebx                     #  241   0x8152c  2      
  movl %eax, (%r15,%rbx,1)            #  242   0x8152e  4      
  movl 0x194(%rsp), %eax              #  243   0x81532  7      
  addl $0x1, %eax                     #  244   0x81539  3      
  cmpl $0x7, %eax                     #  245   0x8153c  3      
  nop                                 #  246   0x8153f  1      
  movl %eax, 0x194(%rsp)              #  247   0x81540  7      
  jg .L_82800                         #  248   0x81547  6      
  addl $0x8, %ebx                     #  249   0x8154d  3      
  nop                                 #  250   0x81550  1      
  nop                                 #  251   0x81551  1      
.L_816c0:                             #        0x81552  0      
  movl 0xa8(%rsp), %ecx               #  252   0x81552  7      
  testl %ecx, %ecx                    #  253   0x81559  2      
  je .L_81720                         #  254   0x8155b  6      
  leal 0x1d0(%rsp), %eax              #  255   0x81561  7      
  movl %ebx, %ebx                     #  256   0x81568  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  257   0x8156a  9      
  nop                                 #  258   0x81573  1      
  addl $0x2, 0x198(%rsp)              #  259   0x81574  8      
  movl %ebx, %ebx                     #  260   0x8157c  2      
  movl %eax, (%r15,%rbx,1)            #  261   0x8157e  4      
  movl 0x194(%rsp), %eax              #  262   0x81582  7      
  addl $0x1, %eax                     #  263   0x81589  3      
  cmpl $0x7, %eax                     #  264   0x8158c  3      
  nop                                 #  265   0x8158f  1      
  movl %eax, 0x194(%rsp)              #  266   0x81590  7      
  jg .L_82840                         #  267   0x81597  6      
  addl $0x8, %ebx                     #  268   0x8159d  3      
  nop                                 #  269   0x815a0  1      
  nop                                 #  270   0x815a1  1      
.L_81720:                             #        0x815a2  0      
  cmpl $0x80, 0xa4(%rsp)              #  271   0x815a2  8      
  je .L_825c0                         #  272   0x815aa  6      
  nop                                 #  273   0x815b0  1      
.L_81740:                             #        0x815b1  0      
  movl 0xac(%rsp), %r13d              #  274   0x815b1  8      
  subl 0x70(%rsp), %r13d              #  275   0x815b9  5      
  testl %r13d, %r13d                  #  276   0x815be  3      
  jle .L_81880                        #  277   0x815c1  6      
  cmpl $0x10, %r13d                   #  278   0x815c7  4      
  jle .L_81840                        #  279   0x815cb  6      
  leal 0x190(%rsp), %ecx              #  280   0x815d1  7      
  movq %rbx, %rax                     #  281   0x815d8  3      
  movq 0x78(%rsp), %rbx               #  282   0x815db  5      
  movq %rcx, (%rsp)                   #  283   0x815e0  4      
  jmpq .L_817a0                       #  284   0x815e4  5      
  nop                                 #  285   0x815e9  1      
.L_81780:                             #        0x815ea  0      
  subl $0x10, %r13d                   #  286   0x815ea  4      
  addl $0x8, %eax                     #  287   0x815ee  3      
  cmpl $0x10, %r13d                   #  288   0x815f1  4      
  jle .L_81820                        #  289   0x815f5  6      
  nop                                 #  290   0x815fb  1      
.L_817a0:                             #        0x815fc  0      
  movl %eax, %eax                     #  291   0x815fc  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  292   0x815fe  9      
  movl 0x194(%rsp), %edx              #  293   0x81607  7      
  addl $0x10, 0x198(%rsp)             #  294   0x8160e  8      
  nop                                 #  295   0x81616  1      
  movl %eax, %eax                     #  296   0x81617  2      
  movl $0x10024c20, (%r15,%rax,1)     #  297   0x81619  8      
  addl $0x1, %edx                     #  298   0x81621  3      
  cmpl $0x7, %edx                     #  299   0x81624  3      
  movl %edx, 0x194(%rsp)              #  300   0x81627  7      
  jle .L_81780                        #  301   0x8162e  6      
  movl (%rsp), %edx                   #  302   0x81634  3      
  movl %ebx, %esi                     #  303   0x81637  2      
  xchgw %ax, %ax                      #  304   0x81639  3      
  movl %r14d, %edi                    #  305   0x8163c  3      
  nop                                 #  306   0x8163f  1      
  nop                                 #  307   0x81640  1      
  callq .__ssprint_r                  #  308   0x81641  5      
  testl %eax, %eax                    #  309   0x81646  2      
  jne .L_82540                        #  310   0x81648  6      
  subl $0x10, %r13d                   #  311   0x8164e  4      
  leal 0x150(%rsp), %eax              #  312   0x81652  7      
  cmpl $0x10, %r13d                   #  313   0x81659  4      
  jg .L_817a0                         #  314   0x8165d  6      
  nop                                 #  315   0x81663  1      
.L_81820:                             #        0x81664  0      
  movq %rax, %rbx                     #  316   0x81664  3      
  nop                                 #  317   0x81667  1      
  nop                                 #  318   0x81668  1      
.L_81840:                             #        0x81669  0      
  movl %ebx, %ebx                     #  319   0x81669  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  320   0x8166b  5      
  movl 0x194(%rsp), %eax              #  321   0x81670  7      
  addl %r13d, 0x198(%rsp)             #  322   0x81677  8      
  movl %ebx, %ebx                     #  323   0x8167f  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  324   0x81681  8      
  addl $0x1, %eax                     #  325   0x81689  3      
  cmpl $0x7, %eax                     #  326   0x8168c  3      
  movl %eax, 0x194(%rsp)              #  327   0x8168f  7      
  jg .L_827c0                         #  328   0x81696  6      
  addl $0x8, %ebx                     #  329   0x8169c  3      
  nop                                 #  330   0x8169f  1      
.L_81880:                             #        0x816a0  0      
  movl 0x70(%rsp), %eax               #  331   0x816a0  4      
  movl 0x98(%rsp), %esi               #  332   0x816a4  7      
  movl %ebx, %ebx                     #  333   0x816ab  2      
  movl %eax, 0x4(%r15,%rbx,1)         #  334   0x816ad  5      
  addl %eax, 0x198(%rsp)              #  335   0x816b2  7      
  movl 0x194(%rsp), %eax              #  336   0x816b9  7      
  movl %ebx, %ebx                     #  337   0x816c0  2      
  movl %esi, (%r15,%rbx,1)            #  338   0x816c2  4      
  addl $0x1, %eax                     #  339   0x816c6  3      
  cmpl $0x7, %eax                     #  340   0x816c9  3      
  movl %eax, 0x194(%rsp)              #  341   0x816cc  7      
  jg .L_82700                         #  342   0x816d3  6      
  addl $0x8, %ebx                     #  343   0x816d9  3      
  nop                                 #  344   0x816dc  1      
.L_818c0:                             #        0x816dd  0      
  andl $0x4, %r12d                    #  345   0x816dd  4      
  je .L_81a40                         #  346   0x816e1  6      
  movl 0x8c(%rsp), %r12d              #  347   0x816e7  8      
  subl 0x68(%rsp), %r12d              #  348   0x816ef  5      
  testl %r12d, %r12d                  #  349   0x816f4  3      
  jle .L_81a40                        #  350   0x816f7  6      
  cmpl $0x10, %r12d                   #  351   0x816fd  4      
  jle .L_819c0                        #  352   0x81701  6      
  movq %rbx, %rax                     #  353   0x81707  3      
  leal 0x190(%rsp), %r13d             #  354   0x8170a  8      
  movq 0x78(%rsp), %rbx               #  355   0x81712  5      
  jmpq .L_81920                       #  356   0x81717  5      
  nop                                 #  357   0x8171c  1      
.L_81900:                             #        0x8171d  0      
  subl $0x10, %r12d                   #  358   0x8171d  4      
  addl $0x8, %eax                     #  359   0x81721  3      
  cmpl $0x10, %r12d                   #  360   0x81724  4      
  jle .L_819a0                        #  361   0x81728  6      
  nop                                 #  362   0x8172e  1      
.L_81920:                             #        0x8172f  0      
  movl %eax, %eax                     #  363   0x8172f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  364   0x81731  9      
  movl 0x194(%rsp), %edx              #  365   0x8173a  7      
  addl $0x10, 0x198(%rsp)             #  366   0x81741  8      
  nop                                 #  367   0x81749  1      
  movl %eax, %eax                     #  368   0x8174a  2      
  movl $0x10024c30, (%r15,%rax,1)     #  369   0x8174c  8      
  addl $0x1, %edx                     #  370   0x81754  3      
  cmpl $0x7, %edx                     #  371   0x81757  3      
  movl %edx, 0x194(%rsp)              #  372   0x8175a  7      
  jle .L_81900                        #  373   0x81761  6      
  movl %r13d, %edx                    #  374   0x81767  3      
  movl %ebx, %esi                     #  375   0x8176a  2      
  xchgw %ax, %ax                      #  376   0x8176c  3      
  movl %r14d, %edi                    #  377   0x8176f  3      
  nop                                 #  378   0x81772  1      
  nop                                 #  379   0x81773  1      
  callq .__ssprint_r                  #  380   0x81774  5      
  testl %eax, %eax                    #  381   0x81779  2      
  jne .L_82540                        #  382   0x8177b  6      
  subl $0x10, %r12d                   #  383   0x81781  4      
  leal 0x150(%rsp), %eax              #  384   0x81785  7      
  cmpl $0x10, %r12d                   #  385   0x8178c  4      
  jg .L_81920                         #  386   0x81790  6      
  nop                                 #  387   0x81796  1      
.L_819a0:                             #        0x81797  0      
  movq %rax, %rbx                     #  388   0x81797  3      
  nop                                 #  389   0x8179a  1      
  nop                                 #  390   0x8179b  1      
.L_819c0:                             #        0x8179c  0      
  movl %ebx, %ebx                     #  391   0x8179c  2      
  movl %r12d, 0x4(%r15,%rbx,1)        #  392   0x8179e  5      
  movl 0x194(%rsp), %eax              #  393   0x817a3  7      
  addl 0x198(%rsp), %r12d             #  394   0x817aa  8      
  movl %ebx, %ebx                     #  395   0x817b2  2      
  movl $0x10024c30, (%r15,%rbx,1)     #  396   0x817b4  8      
  addl $0x1, %eax                     #  397   0x817bc  3      
  cmpl $0x7, %eax                     #  398   0x817bf  3      
  movl %eax, 0x194(%rsp)              #  399   0x817c2  7      
  movl %r12d, 0x198(%rsp)             #  400   0x817c9  8      
  jle .L_81a60                        #  401   0x817d1  6      
  movl 0x78(%rsp), %esi               #  402   0x817d7  4      
  nop                                 #  403   0x817db  1      
  leal 0x190(%rsp), %edx              #  404   0x817dc  7      
  movl %r14d, %edi                    #  405   0x817e3  3      
  xchgw %ax, %ax                      #  406   0x817e6  3      
  nop                                 #  407   0x817e9  1      
  callq .__ssprint_r                  #  408   0x817ea  5      
  testl %eax, %eax                    #  409   0x817ef  2      
  jne .L_82540                        #  410   0x817f1  6      
  nop                                 #  411   0x817f7  1      
  nop                                 #  412   0x817f8  1      
.L_81a40:                             #        0x817f9  0      
  movl 0x198(%rsp), %r12d             #  413   0x817f9  8      
  nop                                 #  414   0x81801  1      
  nop                                 #  415   0x81802  1      
.L_81a60:                             #        0x81803  0      
  movl 0x8c(%rsp), %edx               #  416   0x81803  7      
  cmpl %edx, 0x68(%rsp)               #  417   0x8180a  4      
  movl %edx, %eax                     #  418   0x8180e  2      
  cmovgel 0x68(%rsp), %eax            #  419   0x81810  5      
  addl %eax, 0x74(%rsp)               #  420   0x81815  4      
  testl %r12d, %r12d                  #  421   0x81819  3      
  jne .L_82740                        #  422   0x8181c  6      
  nop                                 #  423   0x81822  1      
.L_81a80:                             #        0x81823  0      
  cmpq $0x0, 0x90(%rsp)               #  424   0x81823  9      
  movl $0x0, 0x194(%rsp)              #  425   0x8182c  11     
  leal 0x150(%rsp), %ebx              #  426   0x81837  7      
  nop                                 #  427   0x8183e  1      
  je .L_81280                         #  428   0x8183f  6      
  movl 0x90(%rsp), %esi               #  429   0x81845  7      
  movl %r14d, %edi                    #  430   0x8184c  3      
  leal 0x150(%rsp), %ebx              #  431   0x8184f  7      
  nop                                 #  432   0x81856  1      
  callq ._free_r                      #  433   0x81857  5      
  jmpq .L_81280                       #  434   0x8185c  5      
  nop                                 #  435   0x81861  1      
  nop                                 #  436   0x81862  1      
.L_81ae0:                             #        0x81863  0      
  movl %edx, %edx                     #  437   0x81863  2      
  movl %edx, %edx                     #  438   0x81865  2      
  movq 0x10024940(%r15,%rdx,8), %rdx  #  439   0x81867  8      
  andl $0xffffffe0, %edx              #  440   0x8186f  6      
  addq %r15, %rdx                     #  441   0x81875  3      
  jmpq %rdx                           #  442   0x81878  2      
  nop                                 #  443   0x8187a  1      
  cmpb $0x0, 0x1df(%rsp)              #  444   0x8187b  8      
  je .L_82a40                         #  445   0x81883  6      
  nop                                 #  446   0x81889  1      
  nop                                 #  447   0x8188a  1      
.L_81b20:                             #        0x8188b  0      
  movl %r13d, %r13d                   #  448   0x8188b  3      
  movzbl (%r15,%r13,1), %eax          #  449   0x8188e  5      
  jmpq .L_81440                       #  450   0x81893  5      
  nop                                 #  451   0x81898  1      
  nop                                 #  452   0x81899  1      
  orl $0x20, %r12d                    #  453   0x8189a  4      
  movl %r13d, %r13d                   #  454   0x8189e  3      
  movzbl (%r15,%r13,1), %eax          #  455   0x818a1  5      
  jmpq .L_81440                       #  456   0x818a6  5      
  nop                                 #  457   0x818ab  1      
  movq 0x80(%rsp), %rsi               #  458   0x818ac  8      
  movl %esi, %esi                     #  459   0x818b4  2      
  movl (%r15,%rsi,1), %eax            #  460   0x818b6  4      
  cmpl $0x2f, %eax                    #  461   0x818ba  3      
  ja .L_82b40                         #  462   0x818bd  6      
  movl %esi, %esi                     #  463   0x818c3  2      
  movl 0xc(%r15,%rsi,1), %edx         #  464   0x818c5  5      
  addl %eax, %edx                     #  465   0x818ca  2      
  addl $0x8, %eax                     #  466   0x818cc  3      
  movl %esi, %esi                     #  467   0x818cf  2      
  movl %eax, (%r15,%rsi,1)            #  468   0x818d1  4      
  nop                                 #  469   0x818d5  1      
  nop                                 #  470   0x818d6  1      
.L_81ba0:                             #        0x818d7  0      
  movl %edx, %edx                     #  471   0x818d7  2      
  movl (%r15,%rdx,1), %edx            #  472   0x818d9  4      
  testl %edx, %edx                    #  473   0x818dd  2      
  movl %edx, 0x8c(%rsp)               #  474   0x818df  7      
  jns .L_81b20                        #  475   0x818e6  6      
  negl 0x8c(%rsp)                     #  476   0x818ec  7      
  nop                                 #  477   0x818f3  1      
  orl $0x4, %r12d                     #  478   0x818f4  4      
  movl %r13d, %r13d                   #  479   0x818f8  3      
  movzbl (%r15,%r13,1), %eax          #  480   0x818fb  5      
  jmpq .L_81440                       #  481   0x81900  5      
  nop                                 #  482   0x81905  1      
  testb $0x20, %r12b                  #  483   0x81906  4      
  movq %r13, 0x60(%rsp)               #  484   0x8190a  5      
  movq $0x10023be0, 0xc0(%rsp)        #  485   0x8190f  12     
  je .L_82100                         #  486   0x8191b  6      
  nop                                 #  487   0x81921  1      
.L_81c00:                             #        0x81922  0      
  movq 0x80(%rsp), %rcx               #  488   0x81922  8      
  movl %ecx, %ecx                     #  489   0x8192a  2      
  movl (%r15,%rcx,1), %edx            #  490   0x8192c  4      
  cmpl $0x2f, %edx                    #  491   0x81930  3      
  jbe .L_82ca0                        #  492   0x81933  6      
  movq 0x80(%rsp), %rdx               #  493   0x81939  8      
  nop                                 #  494   0x81941  1      
  movq 0x80(%rsp), %rsi               #  495   0x81942  8      
  movl %edx, %edx                     #  496   0x8194a  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  497   0x8194c  5      
  leal 0x8(%rcx), %edx                #  498   0x81951  3      
  movl %esi, %esi                     #  499   0x81954  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  500   0x81956  5      
  nop                                 #  501   0x8195b  1      
.L_81c40:                             #        0x8195c  0      
  movl %ecx, %ecx                     #  502   0x8195c  2      
  movq (%r15,%rcx,1), %r13            #  503   0x8195e  4      
  jmpq .L_82160                       #  504   0x81962  5      
  nop                                 #  505   0x81967  1      
  nop                                 #  506   0x81968  1      
  movq %r13, 0x60(%rsp)               #  507   0x81969  5      
  orl $0x10, %r12d                    #  508   0x8196e  4      
  nop                                 #  509   0x81972  1      
  nop                                 #  510   0x81973  1      
.L_81c80:                             #        0x81974  0      
  testb $0x20, %r12b                  #  511   0x81974  4      
  je .L_82900                         #  512   0x81978  6      
  movq 0x80(%rsp), %rdx               #  513   0x8197e  8      
  movl %edx, %edx                     #  514   0x81986  2      
  movl (%r15,%rdx,1), %eax            #  515   0x81988  4      
  cmpl $0x2f, %eax                    #  516   0x8198c  3      
  nop                                 #  517   0x8198f  1      
  ja .L_82c80                         #  518   0x81990  6      
  movq %rdx, %rcx                     #  519   0x81996  3      
  movl %edx, %edx                     #  520   0x81999  2      
  movl 0xc(%r15,%rdx,1), %edx         #  521   0x8199b  5      
  addl %eax, %edx                     #  522   0x819a0  2      
  addl $0x8, %eax                     #  523   0x819a2  3      
  movl %ecx, %ecx                     #  524   0x819a5  2      
  movl %eax, (%r15,%rcx,1)            #  525   0x819a7  4      
  nop                                 #  526   0x819ab  1      
.L_81cc0:                             #        0x819ac  0      
  movl %edx, %edx                     #  527   0x819ac  2      
  movq (%r15,%rdx,1), %r13            #  528   0x819ae  4      
  movl $0x1, %eax                     #  529   0x819b2  5      
  testq %r13, %r13                    #  530   0x819b7  3      
  setne %dl                           #  531   0x819ba  3      
  jmpq .L_82240                       #  532   0x819bd  5      
  nop                                 #  533   0x819c2  1      
  cmpl $0x43, %eax                    #  534   0x819c3  3      
  movq %r13, 0x60(%rsp)               #  535   0x819c6  5      
  je .L_82e40                         #  536   0x819cb  6      
  testb $0x10, %r12b                  #  537   0x819d1  4      
  jne .L_82e40                        #  538   0x819d5  6      
  movq 0x80(%rsp), %rdx               #  539   0x819db  8      
  movl %edx, %edx                     #  540   0x819e3  2      
  movl (%r15,%rdx,1), %eax            #  541   0x819e5  4      
  cmpl $0x2f, %eax                    #  542   0x819e9  3      
  ja .L_83820                         #  543   0x819ec  6      
  movq %rdx, %rcx                     #  544   0x819f2  3      
  movl %edx, %edx                     #  545   0x819f5  2      
  movl 0xc(%r15,%rdx,1), %edx         #  546   0x819f7  5      
  addl %eax, %edx                     #  547   0x819fc  2      
  addl $0x8, %eax                     #  548   0x819fe  3      
  xchgw %ax, %ax                      #  549   0x81a01  3      
  movl %ecx, %ecx                     #  550   0x81a04  2      
  movl %eax, (%r15,%rcx,1)            #  551   0x81a06  4      
  nop                                 #  552   0x81a0a  1      
  nop                                 #  553   0x81a0b  1      
.L_81d40:                             #        0x81a0c  0      
  movl %edx, %edx                     #  554   0x81a0c  2      
  movl (%r15,%rdx,1), %eax            #  555   0x81a0e  4      
  movl $0x1, 0x70(%rsp)               #  556   0x81a12  8      
  movb %al, 0xe0(%rsp)                #  557   0x81a1a  7      
  nop                                 #  558   0x81a21  1      
.L_81d60:                             #        0x81a22  0      
  movl 0x70(%rsp), %r8d               #  559   0x81a22  5      
  movl $0x0, %eax                     #  560   0x81a27  5      
  leal 0xe0(%rsp), %edx               #  561   0x81a2c  7      
  movb $0x0, 0x1df(%rsp)              #  562   0x81a33  8      
  nop                                 #  563   0x81a3b  1      
  movq %rdx, 0x98(%rsp)               #  564   0x81a3c  8      
  testl %r8d, %r8d                    #  565   0x81a44  3      
  cmovnsl 0x70(%rsp), %eax            #  566   0x81a47  5      
  movl %eax, 0x68(%rsp)               #  567   0x81a4c  4      
  jmpq .L_814c0                       #  568   0x81a50  5      
  nop                                 #  569   0x81a55  1      
  movq %r13, 0x60(%rsp)               #  570   0x81a56  5      
  orl $0x10, %r12d                    #  571   0x81a5b  4      
  nop                                 #  572   0x81a5f  1      
  nop                                 #  573   0x81a60  1      
.L_81dc0:                             #        0x81a61  0      
  testb $0x20, %r12b                  #  574   0x81a61  4      
  je .L_82880                         #  575   0x81a65  6      
  movq 0x80(%rsp), %rcx               #  576   0x81a6b  8      
  movl %ecx, %ecx                     #  577   0x81a73  2      
  movl (%r15,%rcx,1), %eax            #  578   0x81a75  4      
  cmpl $0x2f, %eax                    #  579   0x81a79  3      
  nop                                 #  580   0x81a7c  1      
  ja .L_82de0                         #  581   0x81a7d  6      
  movl %ecx, %ecx                     #  582   0x81a83  2      
  movl 0xc(%r15,%rcx,1), %edx         #  583   0x81a85  5      
  addl %eax, %edx                     #  584   0x81a8a  2      
  addl $0x8, %eax                     #  585   0x81a8c  3      
  movl %ecx, %ecx                     #  586   0x81a8f  2      
  movl %eax, (%r15,%rcx,1)            #  587   0x81a91  4      
  nop                                 #  588   0x81a95  1      
.L_81e00:                             #        0x81a96  0      
  movl %edx, %edx                     #  589   0x81a96  2      
  movq (%r15,%rdx,1), %r13            #  590   0x81a98  4      
  jmpq .L_828e0                       #  591   0x81a9c  5      
  nop                                 #  592   0x81aa1  1      
  nop                                 #  593   0x81aa2  1      
  movq %r13, 0x60(%rsp)               #  594   0x81aa3  5      
  orl $0x10, %r12d                    #  595   0x81aa8  4      
  nop                                 #  596   0x81aac  1      
  nop                                 #  597   0x81aad  1      
.L_81e40:                             #        0x81aae  0      
  testb $0x20, %r12b                  #  598   0x81aae  4      
  je .L_82960                         #  599   0x81ab2  6      
  movq 0x80(%rsp), %rcx               #  600   0x81ab8  8      
  movl %ecx, %ecx                     #  601   0x81ac0  2      
  movl (%r15,%rcx,1), %eax            #  602   0x81ac2  4      
  cmpl $0x2f, %eax                    #  603   0x81ac6  3      
  nop                                 #  604   0x81ac9  1      
  ja .L_82c60                         #  605   0x81aca  6      
  movl %ecx, %ecx                     #  606   0x81ad0  2      
  movl 0xc(%r15,%rcx,1), %edx         #  607   0x81ad2  5      
  addl %eax, %edx                     #  608   0x81ad7  2      
  addl $0x8, %eax                     #  609   0x81ad9  3      
  movl %ecx, %ecx                     #  610   0x81adc  2      
  movl %eax, (%r15,%rcx,1)            #  611   0x81ade  4      
  nop                                 #  612   0x81ae2  1      
.L_81e80:                             #        0x81ae3  0      
  movl %edx, %edx                     #  613   0x81ae3  2      
  movq (%r15,%rdx,1), %r13            #  614   0x81ae5  4      
  nop                                 #  615   0x81ae9  1      
  nop                                 #  616   0x81aea  1      
.L_81ea0:                             #        0x81aeb  0      
  cmpq $0x0, %r13                     #  617   0x81aeb  4      
  jl .L_829c0                         #  618   0x81aef  6      
  nop                                 #  619   0x81af5  1      
  nop                                 #  620   0x81af6  1      
.L_81ec0:                             #        0x81af7  0      
  setne %dl                           #  621   0x81af7  3      
  movl $0x1, %eax                     #  622   0x81afa  5      
  jmpq .L_82260                       #  623   0x81aff  5      
  nop                                 #  624   0x81b04  1      
  nop                                 #  625   0x81b05  1      
  movq 0x80(%rsp), %rcx               #  626   0x81b06  8      
  movq %r13, 0x60(%rsp)               #  627   0x81b0e  5      
  movl %ecx, %ecx                     #  628   0x81b13  2      
  movl (%r15,%rcx,1), %edx            #  629   0x81b15  4      
  cmpl $0x2f, %edx                    #  630   0x81b19  3      
  ja .L_82da0                         #  631   0x81b1c  6      
  movq %rcx, %rsi                     #  632   0x81b22  3      
  nop                                 #  633   0x81b25  1      
  movl %ecx, %ecx                     #  634   0x81b26  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  635   0x81b28  5      
  addl %edx, %ecx                     #  636   0x81b2d  2      
  addl $0x8, %edx                     #  637   0x81b2f  3      
  movl %esi, %esi                     #  638   0x81b32  2      
  movl %edx, (%r15,%rsi,1)            #  639   0x81b34  4      
  nop                                 #  640   0x81b38  1      
.L_81f20:                             #        0x81b39  0      
  movl %ecx, %ecx                     #  641   0x81b39  2      
  movl (%r15,%rcx,1), %ecx            #  642   0x81b3b  4      
  movb $0x0, 0x1df(%rsp)              #  643   0x81b3f  8      
  testq %rcx, %rcx                    #  644   0x81b47  3      
  movq %rcx, 0x98(%rsp)               #  645   0x81b4a  8      
  je .L_83be0                         #  646   0x81b52  6      
  nop                                 #  647   0x81b58  1      
  cmpl $0x53, %eax                    #  648   0x81b59  3      
  je .L_83300                         #  649   0x81b5c  6      
  movl %r12d, %r13d                   #  650   0x81b62  3      
  andl $0x10, %r13d                   #  651   0x81b65  4      
  jne .L_83300                        #  652   0x81b69  6      
  testl %r8d, %r8d                    #  653   0x81b6f  3      
  js .L_83c40                         #  654   0x81b72  6      
  nop                                 #  655   0x81b78  1      
  movl 0x98(%rsp), %edi               #  656   0x81b79  7      
  movl %r8d, %edx                     #  657   0x81b80  3      
  xorl %esi, %esi                     #  658   0x81b83  2      
  movl %r8d, 0x40(%rsp)               #  659   0x81b85  5      
  nop                                 #  660   0x81b8a  1      
  callq .memchr                       #  661   0x81b8b  5      
  movl %eax, %eax                     #  662   0x81b90  2      
  movl 0x40(%rsp), %r8d               #  663   0x81b92  5      
  testq %rax, %rax                    #  664   0x81b97  3      
  je .L_83ee0                         #  665   0x81b9a  6      
  subl 0x98(%rsp), %eax               #  666   0x81ba0  7      
  cmpl %eax, %r8d                     #  667   0x81ba7  3      
  movl %eax, 0x70(%rsp)               #  668   0x81baa  4      
  xchgw %ax, %ax                      #  669   0x81bae  3      
  jge .L_83b80                        #  670   0x81bb1  6      
  testl %r8d, %r8d                    #  671   0x81bb7  3      
  movl %r8d, 0x70(%rsp)               #  672   0x81bba  5      
  movq $0x0, 0x90(%rsp)               #  673   0x81bbf  12     
  cmovnsl %r8d, %r13d                 #  674   0x81bcb  4      
  xchgw %ax, %ax                      #  675   0x81bcf  3      
  movl $0x0, 0xac(%rsp)               #  676   0x81bd2  11     
  movl %r13d, 0x68(%rsp)              #  677   0x81bdd  5      
  jmpq .L_82340                       #  678   0x81be2  5      
  nop                                 #  679   0x81be7  1      
  orb $0x80, %r12b                    #  680   0x81be8  4      
  movl %r13d, %r13d                   #  681   0x81bec  3      
  movzbl (%r15,%r13,1), %eax          #  682   0x81bef  5      
  jmpq .L_81440                       #  683   0x81bf4  5      
  nop                                 #  684   0x81bf9  1      
  movl %r13d, %r13d                   #  685   0x81bfa  3      
  movsbl (%r15,%r13,1), %eax          #  686   0x81bfd  5      
  addl $0x1, %r13d                    #  687   0x81c02  4      
  cmpl $0x2a, %eax                    #  688   0x81c06  3      
  je .L_83f40                         #  689   0x81c09  6      
  leal -0x30(%rax), %ecx              #  690   0x81c0f  3      
  xorl %edx, %edx                     #  691   0x81c12  2      
  xorl %r8d, %r8d                     #  692   0x81c14  3      
  cmpl $0x9, %ecx                     #  693   0x81c17  3      
  ja .L_81460                         #  694   0x81c1a  6      
  nop                                 #  695   0x81c20  1      
  nop                                 #  696   0x81c21  1      
.L_82040:                             #        0x81c22  0      
  movl %r13d, %r13d                   #  697   0x81c22  3      
  movsbl (%r15,%r13,1), %eax          #  698   0x81c25  5      
  leal (%rdx,%rdx,4), %edx            #  699   0x81c2a  3      
  addl $0x1, %r13d                    #  700   0x81c2d  4      
  leal (%rcx,%rdx,2), %edx            #  701   0x81c31  3      
  leal -0x30(%rax), %ecx              #  702   0x81c34  3      
  cmpl $0x9, %ecx                     #  703   0x81c37  3      
  jbe .L_82040                        #  704   0x81c3a  6      
  testl %edx, %edx                    #  705   0x81c40  2      
  nop                                 #  706   0x81c42  1      
  movl $0xffffffff, %r8d              #  707   0x81c43  6      
  cmovnsl %edx, %r8d                  #  708   0x81c49  4      
  jmpq .L_81460                       #  709   0x81c4d  5      
  xchgw %ax, %ax                      #  710   0x81c52  3      
  nop                                 #  711   0x81c55  1      
  xorl %edx, %edx                     #  712   0x81c56  2      
  nop                                 #  713   0x81c58  1      
  nop                                 #  714   0x81c59  1      
.L_820a0:                             #        0x81c5a  0      
  leal (%rdx,%rdx,4), %edx            #  715   0x81c5a  3      
  leal -0x30(%rax,%rdx,2), %edx       #  716   0x81c5d  4      
  movl %r13d, %r13d                   #  717   0x81c61  3      
  movsbl (%r15,%r13,1), %eax          #  718   0x81c64  5      
  addl $0x1, %r13d                    #  719   0x81c69  4      
  leal -0x30(%rax), %ecx              #  720   0x81c6d  3      
  cmpl $0x9, %ecx                     #  721   0x81c70  3      
  jbe .L_820a0                        #  722   0x81c73  6      
  nop                                 #  723   0x81c79  1      
  movl %edx, 0x8c(%rsp)               #  724   0x81c7a  7      
  jmpq .L_81460                       #  725   0x81c81  5      
  nop                                 #  726   0x81c86  1      
  nop                                 #  727   0x81c87  1      
  testb $0x20, %r12b                  #  728   0x81c88  4      
  movq %r13, 0x60(%rsp)               #  729   0x81c8c  5      
  movq $0x10023c01, 0xc0(%rsp)        #  730   0x81c91  12     
  jne .L_81c00                        #  731   0x81c9d  6      
  nop                                 #  732   0x81ca3  1      
.L_82100:                             #        0x81ca4  0      
  testb $0x10, %r12b                  #  733   0x81ca4  4      
  je .L_82cc0                         #  734   0x81ca8  6      
  movq 0x80(%rsp), %rcx               #  735   0x81cae  8      
  movl %ecx, %ecx                     #  736   0x81cb6  2      
  movl (%r15,%rcx,1), %edx            #  737   0x81cb8  4      
  cmpl $0x2f, %edx                    #  738   0x81cbc  3      
  nop                                 #  739   0x81cbf  1      
  ja .L_83640                         #  740   0x81cc0  6      
  movq %rcx, %rsi                     #  741   0x81cc6  3      
  movl %ecx, %ecx                     #  742   0x81cc9  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  743   0x81ccb  5      
  addl %edx, %ecx                     #  744   0x81cd0  2      
  addl $0x8, %edx                     #  745   0x81cd2  3      
  movl %esi, %esi                     #  746   0x81cd5  2      
  movl %edx, (%r15,%rsi,1)            #  747   0x81cd7  4      
  nop                                 #  748   0x81cdb  1      
.L_82140:                             #        0x81cdc  0      
  movl %ecx, %ecx                     #  749   0x81cdc  2      
  movl (%r15,%rcx,1), %r13d           #  750   0x81cde  4      
  nop                                 #  751   0x81ce2  1      
  nop                                 #  752   0x81ce3  1      
.L_82160:                             #        0x81ce4  0      
  testq %r13, %r13                    #  753   0x81ce4  3      
  setne %dl                           #  754   0x81ce7  3      
  je .L_821a0                         #  755   0x81cea  6      
  testb $0x1, %r12b                   #  756   0x81cf0  4      
  je .L_821a0                         #  757   0x81cf4  6      
  movb $0x30, 0x1d0(%rsp)             #  758   0x81cfa  8      
  movb %al, 0x1d1(%rsp)               #  759   0x81d02  7      
  nop                                 #  760   0x81d09  1      
  orl $0x2, %r12d                     #  761   0x81d0a  4      
  nop                                 #  762   0x81d0e  1      
  nop                                 #  763   0x81d0f  1      
.L_821a0:                             #        0x81d10  0      
  andl $0xfffffbff, %r12d             #  764   0x81d10  7      
  movl $0x2, %eax                     #  765   0x81d17  5      
  jmpq .L_82240                       #  766   0x81d1c  5      
  nop                                 #  767   0x81d21  1      
  movq 0x80(%rsp), %rdx               #  768   0x81d22  8      
  movq %r13, 0x60(%rsp)               #  769   0x81d2a  5      
  movl %edx, %edx                     #  770   0x81d2f  2      
  movl (%r15,%rdx,1), %eax            #  771   0x81d31  4      
  cmpl $0x2f, %eax                    #  772   0x81d35  3      
  ja .L_82be0                         #  773   0x81d38  6      
  movq %rdx, %rcx                     #  774   0x81d3e  3      
  nop                                 #  775   0x81d41  1      
  movl %edx, %edx                     #  776   0x81d42  2      
  movl 0xc(%r15,%rdx,1), %edx         #  777   0x81d44  5      
  addl %eax, %edx                     #  778   0x81d49  2      
  addl $0x8, %eax                     #  779   0x81d4b  3      
  movl %ecx, %ecx                     #  780   0x81d4e  2      
  movl %eax, (%r15,%rcx,1)            #  781   0x81d50  4      
  nop                                 #  782   0x81d54  1      
.L_82200:                             #        0x81d55  0      
  movl %edx, %edx                     #  783   0x81d55  2      
  movl (%r15,%rdx,1), %r13d           #  784   0x81d57  4      
  orl $0x2, %r12d                     #  785   0x81d5b  4      
  movb $0x30, 0x1d0(%rsp)             #  786   0x81d5f  8      
  movb $0x78, 0x1d1(%rsp)             #  787   0x81d67  8      
  nop                                 #  788   0x81d6f  1      
  movq $0x10023c01, 0xc0(%rsp)        #  789   0x81d70  12     
  movl $0x2, %eax                     #  790   0x81d7c  5      
  testq %r13, %r13                    #  791   0x81d81  3      
  setne %dl                           #  792   0x81d84  3      
  nop                                 #  793   0x81d87  1      
.L_82240:                             #        0x81d88  0      
  movb $0x0, 0x1df(%rsp)              #  794   0x81d88  8      
  nop                                 #  795   0x81d90  1      
  nop                                 #  796   0x81d91  1      
.L_82260:                             #        0x81d92  0      
  movl %r12d, %ecx                    #  797   0x81d92  3      
  andb $0x7f, %cl                     #  798   0x81d95  3      
  testl %r8d, %r8d                    #  799   0x81d98  3      
  cmovnsl %ecx, %r12d                 #  800   0x81d9b  4      
  testl %r8d, %r8d                    #  801   0x81d9f  3      
  jne .L_82280                        #  802   0x81da2  6      
  testb %dl, %dl                      #  803   0x81da8  2      
  je .L_82f40                         #  804   0x81daa  6      
  nop                                 #  805   0x81db0  1      
.L_82280:                             #        0x81db1  0      
  cmpl $0x1, %eax                     #  806   0x81db1  3      
  je .L_83040                         #  807   0x81db4  6      
  cmpl $0x2, %eax                     #  808   0x81dba  3      
  je .L_82fc0                         #  809   0x81dbd  6      
  movq 0xb8(%rsp), %rax               #  810   0x81dc3  8      
  movq %rax, %rdx                     #  811   0x81dcb  3      
  nop                                 #  812   0x81dce  1      
.L_822a0:                             #        0x81dcf  0      
  movl %r13d, %eax                    #  813   0x81dcf  3      
  shrq $0x3, %r13                     #  814   0x81dd2  4      
  subl $0x1, %edx                     #  815   0x81dd6  3      
  andl $0x7, %eax                     #  816   0x81dd9  3      
  addl $0x30, %eax                    #  817   0x81ddc  3      
  testq %r13, %r13                    #  818   0x81ddf  3      
  movl %edx, %edx                     #  819   0x81de2  2      
  movb %al, (%r15,%rdx,1)             #  820   0x81de4  4      
  jne .L_822a0                        #  821   0x81de8  6      
  testb $0x1, %r12b                   #  822   0x81dee  4      
  nop                                 #  823   0x81df2  1      
  movq %rdx, 0x98(%rsp)               #  824   0x81df3  8      
  jne .L_83080                        #  825   0x81dfb  6      
  movl 0xb8(%rsp), %ecx               #  826   0x81e01  7      
  subl %edx, %ecx                     #  827   0x81e08  2      
  movl %ecx, 0x70(%rsp)               #  828   0x81e0a  4      
  nop                                 #  829   0x81e0e  1      
  movq 0xb0(%rsp), %rcx               #  830   0x81e0f  8      
  nop                                 #  831   0x81e17  1      
  nop                                 #  832   0x81e18  1      
.L_82300:                             #        0x81e19  0      
  cmpl %r8d, 0x70(%rsp)               #  833   0x81e19  5      
  movl 0x70(%rsp), %eax               #  834   0x81e1e  4      
  movl %r8d, 0xac(%rsp)               #  835   0x81e22  8      
  movq %rcx, 0xb0(%rsp)               #  836   0x81e2a  8      
  nop                                 #  837   0x81e32  1      
  movq $0x0, 0x90(%rsp)               #  838   0x81e33  12     
  cmovll %r8d, %eax                   #  839   0x81e3f  4      
  movl %eax, 0x68(%rsp)               #  840   0x81e43  4      
  nop                                 #  841   0x81e47  1      
.L_82340:                             #        0x81e48  0      
  cmpb $0x1, 0x1df(%rsp)              #  842   0x81e48  8      
  sbbl $0xffffffff, 0x68(%rsp)        #  843   0x81e50  8      
  jmpq .L_814e0                       #  844   0x81e58  5      
  nop                                 #  845   0x81e5d  1      
  testb $0x20, %r12b                  #  846   0x81e5e  4      
  movq %r13, 0x60(%rsp)               #  847   0x81e62  5      
  je .L_82a60                         #  848   0x81e67  6      
  movq 0x80(%rsp), %rdx               #  849   0x81e6d  8      
  movl %edx, %edx                     #  850   0x81e75  2      
  movl (%r15,%rdx,1), %eax            #  851   0x81e77  4      
  cmpl $0x2f, %eax                    #  852   0x81e7b  3      
  ja .L_837c0                         #  853   0x81e7e  6      
  movq %rdx, %rcx                     #  854   0x81e84  3      
  movl %edx, %edx                     #  855   0x81e87  2      
  movl 0xc(%r15,%rdx,1), %edx         #  856   0x81e89  5      
  addl %eax, %edx                     #  857   0x81e8e  2      
  addl $0x8, %eax                     #  858   0x81e90  3      
  movl %ecx, %ecx                     #  859   0x81e93  2      
  movl %eax, (%r15,%rcx,1)            #  860   0x81e95  4      
  nop                                 #  861   0x81e99  1      
.L_823a0:                             #        0x81e9a  0      
  movl %edx, %edx                     #  862   0x81e9a  2      
  movl (%r15,%rdx,1), %eax            #  863   0x81e9c  4      
  movslq 0x74(%rsp), %rdx             #  864   0x81ea0  5      
  movl %eax, %eax                     #  865   0x81ea5  2      
  movq %rdx, (%r15,%rax,1)            #  866   0x81ea7  4      
  jmpq .L_81280                       #  867   0x81eab  5      
  nop                                 #  868   0x81eb0  1      
  movl %r13d, %r13d                   #  869   0x81eb1  3      
  movzbl (%r15,%r13,1), %eax          #  870   0x81eb4  5      
  cmpb $0x6c, %al                     #  871   0x81eb9  2      
  je .L_82e00                         #  872   0x81ebb  6      
  orl $0x10, %r12d                    #  873   0x81ec1  4      
  jmpq .L_81440                       #  874   0x81ec5  5      
  nop                                 #  875   0x81eca  1      
  movl %r13d, %r13d                   #  876   0x81ecb  3      
  movzbl (%r15,%r13,1), %eax          #  877   0x81ece  5      
  cmpb $0x68, %al                     #  878   0x81ed3  2      
  je .L_82e20                         #  879   0x81ed5  6      
  orl $0x40, %r12d                    #  880   0x81edb  4      
  jmpq .L_81440                       #  881   0x81edf  5      
  nop                                 #  882   0x81ee4  1      
  orl $0x1, %r12d                     #  883   0x81ee5  4      
  movl %r13d, %r13d                   #  884   0x81ee9  3      
  movzbl (%r15,%r13,1), %eax          #  885   0x81eec  5      
  jmpq .L_81440                       #  886   0x81ef1  5      
  nop                                 #  887   0x81ef6  1      
  movl %r14d, %edi                    #  888   0x81ef7  3      
  movl %r8d, 0x40(%rsp)               #  889   0x81efa  5      
  nop                                 #  890   0x81eff  1      
  nop                                 #  891   0x81f00  1      
  callq ._localeconv_r                #  892   0x81f01  5      
  movl %eax, %eax                     #  893   0x81f06  2      
  movl %eax, %eax                     #  894   0x81f08  2      
  movl 0x4(%r15,%rax,1), %eax         #  895   0x81f0a  5      
  movl %eax, %edi                     #  896   0x81f0f  2      
  movq %rax, 0xd8(%rsp)               #  897   0x81f11  8      
  nop                                 #  898   0x81f19  1      
  callq .strlen                       #  899   0x81f1a  5      
  movl %r14d, %edi                    #  900   0x81f1f  3      
  movl %eax, 0xd4(%rsp)               #  901   0x81f22  7      
  xchgw %ax, %ax                      #  902   0x81f29  3      
  nop                                 #  903   0x81f2c  1      
  callq ._localeconv_r                #  904   0x81f2d  5      
  movl %eax, %eax                     #  905   0x81f32  2      
  movl 0xd4(%rsp), %r9d               #  906   0x81f34  8      
  movl 0x40(%rsp), %r8d               #  907   0x81f3c  5      
  movl %eax, %eax                     #  908   0x81f41  2      
  movl 0x8(%r15,%rax,1), %eax         #  909   0x81f43  5      
  testl %r9d, %r9d                    #  910   0x81f48  3      
  nop                                 #  911   0x81f4b  1      
  movq %rax, 0xb0(%rsp)               #  912   0x81f4c  8      
  je .L_81b20                         #  913   0x81f54  6      
  testq %rax, %rax                    #  914   0x81f5a  3      
  je .L_81b20                         #  915   0x81f5d  6      
  movq 0xb0(%rsp), %rcx               #  916   0x81f63  8      
  nop                                 #  917   0x81f6b  1      
  movl %ecx, %ecx                     #  918   0x81f6c  2      
  cmpb $0x0, (%r15,%rcx,1)            #  919   0x81f6e  5      
  je .L_81b20                         #  920   0x81f73  6      
  orl $0x400, %r12d                   #  921   0x81f79  7      
  movl %r13d, %r13d                   #  922   0x81f80  3      
  movzbl (%r15,%r13,1), %eax          #  923   0x81f83  5      
  nop                                 #  924   0x81f88  1      
  jmpq .L_81440                       #  925   0x81f89  5      
  nop                                 #  926   0x81f8e  1      
  nop                                 #  927   0x81f8f  1      
  movb $0x2b, 0x1df(%rsp)             #  928   0x81f90  8      
  movl %r13d, %r13d                   #  929   0x81f98  3      
  movzbl (%r15,%r13,1), %eax          #  930   0x81f9b  5      
  jmpq .L_81440                       #  931   0x81fa0  5      
  nop                                 #  932   0x81fa5  1      
.L_82520:                             #        0x81fa6  0      
  movq 0x78(%rsp), %rsi               #  933   0x81fa6  5      
  movl %esi, %esi                     #  934   0x81fab  2      
  orw $0x40, 0xc(%r15,%rsi,1)         #  935   0x81fad  7      
  nop                                 #  936   0x81fb4  1      
  nop                                 #  937   0x81fb5  1      
.L_82540:                             #        0x81fb6  0      
  cmpq $0x0, 0x90(%rsp)               #  938   0x81fb6  9      
  je .L_82a20                         #  939   0x81fbf  6      
  movl 0x90(%rsp), %esi               #  940   0x81fc5  7      
  movl %r14d, %edi                    #  941   0x81fcc  3      
  xchgw %ax, %ax                      #  942   0x81fcf  3      
  callq ._free_r                      #  943   0x81fd2  5      
.L_82560:                             #        0x81fd7  0      
  movq 0x78(%rsp), %rcx               #  944   0x81fd7  5      
  movl %ecx, %ecx                     #  945   0x81fdc  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  946   0x81fde  6      
  nop                                 #  947   0x81fe4  1      
  nop                                 #  948   0x81fe5  1      
.L_82580:                             #        0x81fe6  0      
  testb $0x40, %al                    #  949   0x81fe6  2      
  movl $0xffffffff, %eax              #  950   0x81fe8  5      
  cmovel 0x74(%rsp), %eax             #  951   0x81fed  5      
  movl %eax, 0x74(%rsp)               #  952   0x81ff2  4      
  nop                                 #  953   0x81ff6  1      
  nop                                 #  954   0x81ff7  1      
.L_825a0:                             #        0x81ff8  0      
  movl 0x74(%rsp), %eax               #  955   0x81ff8  4      
  addl $0x1e8, %esp                   #  956   0x81ffc  6      
  addq %r15, %rsp                     #  957   0x82002  3      
  popq %rbx                           #  958   0x82005  2      
  popq %r12                           #  959   0x82007  3      
  popq %r13                           #  960   0x8200a  3      
  popq %r14                           #  961   0x8200d  3      
  popq %r11                           #  962   0x82010  3      
  andl $0xffffffe0, %r11d             #  963   0x82013  7      
  addq %r15, %r11                     #  964   0x8201a  3      
  jmpq %r11                           #  965   0x8201d  3      
.L_825c0:                             #        0x82020  0      
  movl 0x8c(%rsp), %r13d              #  966   0x82020  8      
  subl 0x68(%rsp), %r13d              #  967   0x82028  5      
  testl %r13d, %r13d                  #  968   0x8202d  3      
  jle .L_81740                        #  969   0x82030  6      
  cmpl $0x10, %r13d                   #  970   0x82036  4      
  jle .L_826c0                        #  971   0x8203a  6      
  leal 0x190(%rsp), %edx              #  972   0x82040  7      
  movq %rbx, %rax                     #  973   0x82047  3      
  movq 0x78(%rsp), %rbx               #  974   0x8204a  5      
  movq %rdx, 0x8(%rsp)                #  975   0x8204f  5      
  jmpq .L_82620                       #  976   0x82054  5      
  nop                                 #  977   0x82059  1      
.L_82600:                             #        0x8205a  0      
  subl $0x10, %r13d                   #  978   0x8205a  4      
  addl $0x8, %eax                     #  979   0x8205e  3      
  cmpl $0x10, %r13d                   #  980   0x82061  4      
  jle .L_826a0                        #  981   0x82065  6      
  nop                                 #  982   0x8206b  1      
.L_82620:                             #        0x8206c  0      
  movl %eax, %eax                     #  983   0x8206c  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  984   0x8206e  9      
  movl 0x194(%rsp), %edx              #  985   0x82077  7      
  addl $0x10, 0x198(%rsp)             #  986   0x8207e  8      
  nop                                 #  987   0x82086  1      
  movl %eax, %eax                     #  988   0x82087  2      
  movl $0x10024c20, (%r15,%rax,1)     #  989   0x82089  8      
  addl $0x1, %edx                     #  990   0x82091  3      
  cmpl $0x7, %edx                     #  991   0x82094  3      
  movl %edx, 0x194(%rsp)              #  992   0x82097  7      
  jle .L_82600                        #  993   0x8209e  6      
  movl 0x8(%rsp), %edx                #  994   0x820a4  4      
  movl %ebx, %esi                     #  995   0x820a8  2      
  nop                                 #  996   0x820aa  1      
  movl %r14d, %edi                    #  997   0x820ab  3      
  nop                                 #  998   0x820ae  1      
  nop                                 #  999   0x820af  1      
  callq .__ssprint_r                  #  1000  0x820b0  5      
  testl %eax, %eax                    #  1001  0x820b5  2      
  jne .L_82540                        #  1002  0x820b7  6      
  subl $0x10, %r13d                   #  1003  0x820bd  4      
  leal 0x150(%rsp), %eax              #  1004  0x820c1  7      
  cmpl $0x10, %r13d                   #  1005  0x820c8  4      
  jg .L_82620                         #  1006  0x820cc  6      
  nop                                 #  1007  0x820d2  1      
.L_826a0:                             #        0x820d3  0      
  movq %rax, %rbx                     #  1008  0x820d3  3      
  nop                                 #  1009  0x820d6  1      
  nop                                 #  1010  0x820d7  1      
.L_826c0:                             #        0x820d8  0      
  movl %ebx, %ebx                     #  1011  0x820d8  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  1012  0x820da  5      
  movl 0x194(%rsp), %eax              #  1013  0x820df  7      
  addl %r13d, 0x198(%rsp)             #  1014  0x820e6  8      
  movl %ebx, %ebx                     #  1015  0x820ee  2      
  movl $0x10024c20, (%r15,%rbx,1)     #  1016  0x820f0  8      
  addl $0x1, %eax                     #  1017  0x820f8  3      
  cmpl $0x7, %eax                     #  1018  0x820fb  3      
  movl %eax, 0x194(%rsp)              #  1019  0x820fe  7      
  jg .L_832c0                         #  1020  0x82105  6      
  addl $0x8, %ebx                     #  1021  0x8210b  3      
  jmpq .L_81740                       #  1022  0x8210e  5      
  nop                                 #  1023  0x82113  1      
.L_82700:                             #        0x82114  0      
  movl 0x78(%rsp), %esi               #  1024  0x82114  4      
  leal 0x190(%rsp), %edx              #  1025  0x82118  7      
  movl %r14d, %edi                    #  1026  0x8211f  3      
  nop                                 #  1027  0x82122  1      
  callq .__ssprint_r                  #  1028  0x82123  5      
  testl %eax, %eax                    #  1029  0x82128  2      
  jne .L_82540                        #  1030  0x8212a  6      
  leal 0x150(%rsp), %ebx              #  1031  0x82130  7      
  jmpq .L_818c0                       #  1032  0x82137  5      
  nop                                 #  1033  0x8213c  1      
.L_82740:                             #        0x8213d  0      
  movl 0x78(%rsp), %esi               #  1034  0x8213d  4      
  leal 0x190(%rsp), %edx              #  1035  0x82141  7      
  movl %r14d, %edi                    #  1036  0x82148  3      
  nop                                 #  1037  0x8214b  1      
  callq .__ssprint_r                  #  1038  0x8214c  5      
  testl %eax, %eax                    #  1039  0x82151  2      
  je .L_81a80                         #  1040  0x82153  6      
  jmpq .L_82540                       #  1041  0x82159  5      
  nop                                 #  1042  0x8215e  1      
  nop                                 #  1043  0x8215f  1      
.L_82780:                             #        0x82160  0      
  movl 0x78(%rsp), %esi               #  1044  0x82160  4      
  leal 0x190(%rsp), %edx              #  1045  0x82164  7      
  movl %r14d, %edi                    #  1046  0x8216b  3      
  movl %ecx, 0x58(%rsp)               #  1047  0x8216e  4      
  nop                                 #  1048  0x82172  1      
  callq .__ssprint_r                  #  1049  0x82173  5      
  testl %eax, %eax                    #  1050  0x82178  2      
  movl 0x58(%rsp), %ecx               #  1051  0x8217a  4      
  jne .L_82f20                        #  1052  0x8217e  6      
  leal 0x150(%rsp), %ebx              #  1053  0x82184  7      
  jmpq .L_813e0                       #  1054  0x8218b  5      
  nop                                 #  1055  0x82190  1      
.L_827c0:                             #        0x82191  0      
  movl 0x78(%rsp), %esi               #  1056  0x82191  4      
  leal 0x190(%rsp), %edx              #  1057  0x82195  7      
  movl %r14d, %edi                    #  1058  0x8219c  3      
  nop                                 #  1059  0x8219f  1      
  callq .__ssprint_r                  #  1060  0x821a0  5      
  testl %eax, %eax                    #  1061  0x821a5  2      
  jne .L_82540                        #  1062  0x821a7  6      
  leal 0x150(%rsp), %ebx              #  1063  0x821ad  7      
  jmpq .L_81880                       #  1064  0x821b4  5      
  nop                                 #  1065  0x821b9  1      
.L_82800:                             #        0x821ba  0      
  movl 0x78(%rsp), %esi               #  1066  0x821ba  4      
  leal 0x190(%rsp), %edx              #  1067  0x821be  7      
  movl %r14d, %edi                    #  1068  0x821c5  3      
  nop                                 #  1069  0x821c8  1      
  callq .__ssprint_r                  #  1070  0x821c9  5      
  testl %eax, %eax                    #  1071  0x821ce  2      
  jne .L_82540                        #  1072  0x821d0  6      
  leal 0x150(%rsp), %ebx              #  1073  0x821d6  7      
  jmpq .L_816c0                       #  1074  0x821dd  5      
  nop                                 #  1075  0x821e2  1      
.L_82840:                             #        0x821e3  0      
  movl 0x78(%rsp), %esi               #  1076  0x821e3  4      
  leal 0x190(%rsp), %edx              #  1077  0x821e7  7      
  movl %r14d, %edi                    #  1078  0x821ee  3      
  nop                                 #  1079  0x821f1  1      
  callq .__ssprint_r                  #  1080  0x821f2  5      
  testl %eax, %eax                    #  1081  0x821f7  2      
  jne .L_82540                        #  1082  0x821f9  6      
  leal 0x150(%rsp), %ebx              #  1083  0x821ff  7      
  jmpq .L_81720                       #  1084  0x82206  5      
  nop                                 #  1085  0x8220b  1      
.L_82880:                             #        0x8220c  0      
  testb $0x10, %r12b                  #  1086  0x8220c  4      
  je .L_82c00                         #  1087  0x82210  6      
  movq 0x80(%rsp), %rdx               #  1088  0x82216  8      
  movl %edx, %edx                     #  1089  0x8221e  2      
  movl (%r15,%rdx,1), %eax            #  1090  0x82220  4      
  cmpl $0x2f, %eax                    #  1091  0x82224  3      
  nop                                 #  1092  0x82227  1      
  ja .L_83520                         #  1093  0x82228  6      
  movq %rdx, %rcx                     #  1094  0x8222e  3      
  movl %edx, %edx                     #  1095  0x82231  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1096  0x82233  5      
  addl %eax, %edx                     #  1097  0x82238  2      
  addl $0x8, %eax                     #  1098  0x8223a  3      
  movl %ecx, %ecx                     #  1099  0x8223d  2      
  movl %eax, (%r15,%rcx,1)            #  1100  0x8223f  4      
  nop                                 #  1101  0x82243  1      
.L_828c0:                             #        0x82244  0      
  movl %edx, %edx                     #  1102  0x82244  2      
  movl (%r15,%rdx,1), %r13d           #  1103  0x82246  4      
  nop                                 #  1104  0x8224a  1      
  nop                                 #  1105  0x8224b  1      
.L_828e0:                             #        0x8224c  0      
  andl $0xfffffbff, %r12d             #  1106  0x8224c  7      
  testq %r13, %r13                    #  1107  0x82253  3      
  setne %dl                           #  1108  0x82256  3      
  xorl %eax, %eax                     #  1109  0x82259  2      
  jmpq .L_82240                       #  1110  0x8225b  5      
  nop                                 #  1111  0x82260  1      
.L_82900:                             #        0x82261  0      
  testb $0x10, %r12b                  #  1112  0x82261  4      
  je .L_82b80                         #  1113  0x82265  6      
  movq 0x80(%rsp), %rdx               #  1114  0x8226b  8      
  movl %edx, %edx                     #  1115  0x82273  2      
  movl (%r15,%rdx,1), %eax            #  1116  0x82275  4      
  cmpl $0x2f, %eax                    #  1117  0x82279  3      
  nop                                 #  1118  0x8227c  1      
  ja .L_835c0                         #  1119  0x8227d  6      
  movq %rdx, %rcx                     #  1120  0x82283  3      
  movl %edx, %edx                     #  1121  0x82286  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1122  0x82288  5      
  addl %eax, %edx                     #  1123  0x8228d  2      
  addl $0x8, %eax                     #  1124  0x8228f  3      
  movl %ecx, %ecx                     #  1125  0x82292  2      
  movl %eax, (%r15,%rcx,1)            #  1126  0x82294  4      
  nop                                 #  1127  0x82298  1      
.L_82940:                             #        0x82299  0      
  movl %edx, %edx                     #  1128  0x82299  2      
  movl (%r15,%rdx,1), %r13d           #  1129  0x8229b  4      
  movl $0x1, %eax                     #  1130  0x8229f  5      
  testq %r13, %r13                    #  1131  0x822a4  3      
  setne %dl                           #  1132  0x822a7  3      
  jmpq .L_82240                       #  1133  0x822aa  5      
  nop                                 #  1134  0x822af  1      
.L_82960:                             #        0x822b0  0      
  testb $0x10, %r12b                  #  1135  0x822b0  4      
  je .L_82d40                         #  1136  0x822b4  6      
  movq 0x80(%rsp), %rdx               #  1137  0x822ba  8      
  movl %edx, %edx                     #  1138  0x822c2  2      
  movl (%r15,%rdx,1), %eax            #  1139  0x822c4  4      
  cmpl $0x2f, %eax                    #  1140  0x822c8  3      
  nop                                 #  1141  0x822cb  1      
  ja .L_83540                         #  1142  0x822cc  6      
  movq %rdx, %rcx                     #  1143  0x822d2  3      
  movl %edx, %edx                     #  1144  0x822d5  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1145  0x822d7  5      
  addl %eax, %edx                     #  1146  0x822dc  2      
  addl $0x8, %eax                     #  1147  0x822de  3      
  movl %ecx, %ecx                     #  1148  0x822e1  2      
  movl %eax, (%r15,%rcx,1)            #  1149  0x822e3  4      
  nop                                 #  1150  0x822e7  1      
.L_829a0:                             #        0x822e8  0      
  movl %edx, %edx                     #  1151  0x822e8  2      
  movslq (%r15,%rdx,1), %r13          #  1152  0x822ea  4      
  cmpq $0x0, %r13                     #  1153  0x822ee  4      
  jge .L_81ec0                        #  1154  0x822f2  6      
  nop                                 #  1155  0x822f8  1      
  nop                                 #  1156  0x822f9  1      
.L_829c0:                             #        0x822fa  0      
  negq %r13                           #  1157  0x822fa  3      
  movb $0x2d, 0x1df(%rsp)             #  1158  0x822fd  8      
  movl $0x1, %eax                     #  1159  0x82305  5      
  setne %dl                           #  1160  0x8230a  3      
  jmpq .L_82260                       #  1161  0x8230d  5      
  nop                                 #  1162  0x82312  1      
.L_829e0:                             #        0x82313  0      
  movl 0x78(%rsp), %esi               #  1163  0x82313  4      
  leal 0x190(%rsp), %edx              #  1164  0x82317  7      
  movl %r14d, %edi                    #  1165  0x8231e  3      
  nop                                 #  1166  0x82321  1      
  callq .__ssprint_r                  #  1167  0x82322  5      
  testl %eax, %eax                    #  1168  0x82327  2      
  jne .L_82540                        #  1169  0x82329  6      
  leal 0x150(%rsp), %ebx              #  1170  0x8232f  7      
  jmpq .L_81660                       #  1171  0x82336  5      
  nop                                 #  1172  0x8233b  1      
.L_82a20:                             #        0x8233c  0      
  movq 0x78(%rsp), %rdx               #  1173  0x8233c  5      
  movl %edx, %edx                     #  1174  0x82341  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1175  0x82343  6      
  jmpq .L_82580                       #  1176  0x82349  5      
  nop                                 #  1177  0x8234e  1      
.L_82a40:                             #        0x8234f  0      
  movb $0x20, 0x1df(%rsp)             #  1178  0x8234f  8      
  movl %r13d, %r13d                   #  1179  0x82357  3      
  movzbl (%r15,%r13,1), %eax          #  1180  0x8235a  5      
  jmpq .L_81440                       #  1181  0x8235f  5      
  nop                                 #  1182  0x82364  1      
.L_82a60:                             #        0x82365  0      
  testb $0x10, %r12b                  #  1183  0x82365  4      
  je .L_83740                         #  1184  0x82369  6      
  movq 0x80(%rsp), %rax               #  1185  0x8236f  8      
  movl %eax, %eax                     #  1186  0x82377  2      
  movl (%r15,%rax,1), %edx            #  1187  0x82379  4      
  cmpl $0x2f, %edx                    #  1188  0x8237d  3      
  nop                                 #  1189  0x82380  1      
  jbe .L_83aa0                        #  1190  0x82381  6      
  nop                                 #  1191  0x82387  1      
  nop                                 #  1192  0x82388  1      
.L_82aa0:                             #        0x82389  0      
  movq 0x80(%rsp), %rsi               #  1193  0x82389  8      
  movl %esi, %esi                     #  1194  0x82391  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1195  0x82393  5      
  leal 0x8(%rax), %edx                #  1196  0x82398  3      
  movl %esi, %esi                     #  1197  0x8239b  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1198  0x8239d  5      
  nop                                 #  1199  0x823a2  1      
.L_82ac0:                             #        0x823a3  0      
  movl %eax, %eax                     #  1200  0x823a3  2      
  movl (%r15,%rax,1), %eax            #  1201  0x823a5  4      
  movl 0x74(%rsp), %edx               #  1202  0x823a9  4      
  movl %eax, %eax                     #  1203  0x823ad  2      
  movl %edx, (%r15,%rax,1)            #  1204  0x823af  4      
  jmpq .L_81280                       #  1205  0x823b3  5      
  nop                                 #  1206  0x823b8  1      
  movq %r13, 0x60(%rsp)               #  1207  0x823b9  5      
  jmpq .L_81e40                       #  1208  0x823be  5      
  nop                                 #  1209  0x823c3  1      
  nop                                 #  1210  0x823c4  1      
  movq %r13, 0x60(%rsp)               #  1211  0x823c5  5      
  jmpq .L_81dc0                       #  1212  0x823ca  5      
  nop                                 #  1213  0x823cf  1      
  nop                                 #  1214  0x823d0  1      
  movq %r13, 0x60(%rsp)               #  1215  0x823d1  5      
  jmpq .L_81c80                       #  1216  0x823d6  5      
  nop                                 #  1217  0x823db  1      
  nop                                 #  1218  0x823dc  1      
.L_82b40:                             #        0x823dd  0      
  movq 0x80(%rsp), %rax               #  1219  0x823dd  8      
  movq 0x80(%rsp), %rcx               #  1220  0x823e5  8      
  movl %eax, %eax                     #  1221  0x823ed  2      
  movl 0x8(%r15,%rax,1), %edx         #  1222  0x823ef  5      
  leal 0x8(%rdx), %eax                #  1223  0x823f4  3      
  nop                                 #  1224  0x823f7  1      
  movl %ecx, %ecx                     #  1225  0x823f8  2      
  movl %eax, 0x8(%r15,%rcx,1)         #  1226  0x823fa  5      
  jmpq .L_81ba0                       #  1227  0x823ff  5      
  nop                                 #  1228  0x82404  1      
  nop                                 #  1229  0x82405  1      
.L_82b80:                             #        0x82406  0      
  testb $0x40, %r12b                  #  1230  0x82406  4      
  je .L_835e0                         #  1231  0x8240a  6      
  movq 0x80(%rsp), %rax               #  1232  0x82410  8      
  movl %eax, %eax                     #  1233  0x82418  2      
  movl (%r15,%rax,1), %edx            #  1234  0x8241a  4      
  cmpl $0x2f, %edx                    #  1235  0x8241e  3      
  nop                                 #  1236  0x82421  1      
  jbe .L_83ac0                        #  1237  0x82422  6      
  movq 0x80(%rsp), %rsi               #  1238  0x82428  8      
  movl %esi, %esi                     #  1239  0x82430  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1240  0x82432  5      
  leal 0x8(%rax), %edx                #  1241  0x82437  3      
  movl %esi, %esi                     #  1242  0x8243a  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1243  0x8243c  5      
  nop                                 #  1244  0x82441  1      
.L_82bc0:                             #        0x82442  0      
  movl %eax, %eax                     #  1245  0x82442  2      
  movzwl (%r15,%rax,1), %r13d         #  1246  0x82444  5      
  movl $0x1, %eax                     #  1247  0x82449  5      
  testq %r13, %r13                    #  1248  0x8244e  3      
  setne %dl                           #  1249  0x82451  3      
  jmpq .L_82240                       #  1250  0x82454  5      
  nop                                 #  1251  0x82459  1      
.L_82be0:                             #        0x8245a  0      
  movq 0x80(%rsp), %rsi               #  1252  0x8245a  8      
  movl %esi, %esi                     #  1253  0x82462  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1254  0x82464  5      
  leal 0x8(%rdx), %eax                #  1255  0x82469  3      
  movl %esi, %esi                     #  1256  0x8246c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1257  0x8246e  5      
  jmpq .L_82200                       #  1258  0x82473  5      
  xchgw %ax, %ax                      #  1259  0x82478  3      
.L_82c00:                             #        0x8247b  0      
  testb $0x40, %r12b                  #  1260  0x8247b  4      
  je .L_83680                         #  1261  0x8247f  6      
  movq 0x80(%rsp), %rax               #  1262  0x82485  8      
  movl %eax, %eax                     #  1263  0x8248d  2      
  movl (%r15,%rax,1), %edx            #  1264  0x8248f  4      
  cmpl $0x2f, %edx                    #  1265  0x82493  3      
  nop                                 #  1266  0x82496  1      
  jbe .L_83ae0                        #  1267  0x82497  6      
  movq 0x80(%rsp), %rsi               #  1268  0x8249d  8      
  movl %esi, %esi                     #  1269  0x824a5  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1270  0x824a7  5      
  leal 0x8(%rax), %edx                #  1271  0x824ac  3      
  movl %esi, %esi                     #  1272  0x824af  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1273  0x824b1  5      
  nop                                 #  1274  0x824b6  1      
.L_82c40:                             #        0x824b7  0      
  movl %eax, %eax                     #  1275  0x824b7  2      
  movzwl (%r15,%rax,1), %r13d         #  1276  0x824b9  5      
  jmpq .L_828e0                       #  1277  0x824be  5      
  nop                                 #  1278  0x824c3  1      
  nop                                 #  1279  0x824c4  1      
.L_82c60:                             #        0x824c5  0      
  movq 0x80(%rsp), %rsi               #  1280  0x824c5  8      
  movl %esi, %esi                     #  1281  0x824cd  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1282  0x824cf  5      
  leal 0x8(%rdx), %eax                #  1283  0x824d4  3      
  movl %esi, %esi                     #  1284  0x824d7  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1285  0x824d9  5      
  jmpq .L_81e80                       #  1286  0x824de  5      
  xchgw %ax, %ax                      #  1287  0x824e3  3      
.L_82c80:                             #        0x824e6  0      
  movq 0x80(%rsp), %rsi               #  1288  0x824e6  8      
  movl %esi, %esi                     #  1289  0x824ee  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1290  0x824f0  5      
  leal 0x8(%rdx), %eax                #  1291  0x824f5  3      
  movl %esi, %esi                     #  1292  0x824f8  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1293  0x824fa  5      
  jmpq .L_81cc0                       #  1294  0x824ff  5      
  xchgw %ax, %ax                      #  1295  0x82504  3      
.L_82ca0:                             #        0x82507  0      
  movq %rcx, %rsi                     #  1296  0x82507  3      
  movl %ecx, %ecx                     #  1297  0x8250a  2      
  movl 0xc(%r15,%rcx,1), %ecx         #  1298  0x8250c  5      
  addl %edx, %ecx                     #  1299  0x82511  2      
  addl $0x8, %edx                     #  1300  0x82513  3      
  movl %esi, %esi                     #  1301  0x82516  2      
  movl %edx, (%r15,%rsi,1)            #  1302  0x82518  4      
  jmpq .L_81c40                       #  1303  0x8251c  5      
  nop                                 #  1304  0x82521  1      
.L_82cc0:                             #        0x82522  0      
  testb $0x40, %r12b                  #  1305  0x82522  4      
  je .L_836e0                         #  1306  0x82526  6      
  movq 0x80(%rsp), %rdx               #  1307  0x8252c  8      
  movl %edx, %edx                     #  1308  0x82534  2      
  movl (%r15,%rdx,1), %ecx            #  1309  0x82536  4      
  cmpl $0x2f, %ecx                    #  1310  0x8253a  3      
  nop                                 #  1311  0x8253d  1      
  jbe .L_83b00                        #  1312  0x8253e  6      
  movq 0x80(%rsp), %rcx               #  1313  0x82544  8      
  movq 0x80(%rsp), %rsi               #  1314  0x8254c  8      
  movl %ecx, %ecx                     #  1315  0x82554  2      
  movl 0x8(%r15,%rcx,1), %edx         #  1316  0x82556  5      
  leal 0x8(%rdx), %ecx                #  1317  0x8255b  3      
  movl %esi, %esi                     #  1318  0x8255e  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  1319  0x82560  5      
  nop                                 #  1320  0x82565  1      
  nop                                 #  1321  0x82566  1      
.L_82d20:                             #        0x82567  0      
  movl %edx, %edx                     #  1322  0x82567  2      
  movzwl (%r15,%rdx,1), %r13d         #  1323  0x82569  5      
  jmpq .L_82160                       #  1324  0x8256e  5      
  nop                                 #  1325  0x82573  1      
  nop                                 #  1326  0x82574  1      
.L_82d40:                             #        0x82575  0      
  testb $0x40, %r12b                  #  1327  0x82575  4      
  je .L_83560                         #  1328  0x82579  6      
  movq 0x80(%rsp), %rax               #  1329  0x8257f  8      
  movl %eax, %eax                     #  1330  0x82587  2      
  movl (%r15,%rax,1), %edx            #  1331  0x82589  4      
  cmpl $0x2f, %edx                    #  1332  0x8258d  3      
  nop                                 #  1333  0x82590  1      
  ja .L_83a80                         #  1334  0x82591  6      
  movq %rax, %rcx                     #  1335  0x82597  3      
  movl %eax, %eax                     #  1336  0x8259a  2      
  movl 0xc(%r15,%rax,1), %eax         #  1337  0x8259c  5      
  addl %edx, %eax                     #  1338  0x825a1  2      
  addl $0x8, %edx                     #  1339  0x825a3  3      
  movl %ecx, %ecx                     #  1340  0x825a6  2      
  movl %edx, (%r15,%rcx,1)            #  1341  0x825a8  4      
  nop                                 #  1342  0x825ac  1      
.L_82d80:                             #        0x825ad  0      
  movl %eax, %eax                     #  1343  0x825ad  2      
  movswq (%r15,%rax,1), %r13          #  1344  0x825af  5      
  jmpq .L_81ea0                       #  1345  0x825b4  5      
  nop                                 #  1346  0x825b9  1      
  nop                                 #  1347  0x825ba  1      
.L_82da0:                             #        0x825bb  0      
  movq 0x80(%rsp), %rdx               #  1348  0x825bb  8      
  movq 0x80(%rsp), %rsi               #  1349  0x825c3  8      
  movl %edx, %edx                     #  1350  0x825cb  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1351  0x825cd  5      
  leal 0x8(%rcx), %edx                #  1352  0x825d2  3      
  nop                                 #  1353  0x825d5  1      
  movl %esi, %esi                     #  1354  0x825d6  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1355  0x825d8  5      
  jmpq .L_81f20                       #  1356  0x825dd  5      
  nop                                 #  1357  0x825e2  1      
  nop                                 #  1358  0x825e3  1      
.L_82de0:                             #        0x825e4  0      
  movq 0x80(%rsp), %rsi               #  1359  0x825e4  8      
  movl %esi, %esi                     #  1360  0x825ec  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1361  0x825ee  5      
  leal 0x8(%rdx), %eax                #  1362  0x825f3  3      
  movl %esi, %esi                     #  1363  0x825f6  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1364  0x825f8  5      
  jmpq .L_81e00                       #  1365  0x825fd  5      
  xchgw %ax, %ax                      #  1366  0x82602  3      
.L_82e00:                             #        0x82605  0      
  addl $0x1, %r13d                    #  1367  0x82605  4      
  orl $0x20, %r12d                    #  1368  0x82609  4      
  movl %r13d, %r13d                   #  1369  0x8260d  3      
  movzbl (%r15,%r13,1), %eax          #  1370  0x82610  5      
  jmpq .L_81440                       #  1371  0x82615  5      
  nop                                 #  1372  0x8261a  1      
.L_82e20:                             #        0x8261b  0      
  addl $0x1, %r13d                    #  1373  0x8261b  4      
  orl $0x200, %r12d                   #  1374  0x8261f  7      
  movl %r13d, %r13d                   #  1375  0x82626  3      
  movzbl (%r15,%r13,1), %eax          #  1376  0x82629  5      
  jmpq .L_81440                       #  1377  0x8262e  5      
  nop                                 #  1378  0x82633  1      
.L_82e40:                             #        0x82634  0      
  leal 0x1b0(%rsp), %r13d             #  1379  0x82634  8      
  xorl %esi, %esi                     #  1380  0x8263c  2      
  movl $0x8, %edx                     #  1381  0x8263e  5      
  movl %r13d, %edi                    #  1382  0x82643  3      
  nop                                 #  1383  0x82646  1      
  callq .memset                       #  1384  0x82647  5      
  movq 0x80(%rsp), %rsi               #  1385  0x8264c  8      
  movl %esi, %esi                     #  1386  0x82654  2      
  movl (%r15,%rsi,1), %edx            #  1387  0x82656  4      
  cmpl $0x2f, %edx                    #  1388  0x8265a  3      
  ja .L_834e0                         #  1389  0x8265d  6      
  movl %esi, %esi                     #  1390  0x82663  2      
  movl 0xc(%r15,%rsi,1), %eax         #  1391  0x82665  5      
  addl %edx, %eax                     #  1392  0x8266a  2      
  addl $0x8, %edx                     #  1393  0x8266c  3      
  movl %esi, %esi                     #  1394  0x8266f  2      
  movl %edx, (%r15,%rsi,1)            #  1395  0x82671  4      
  nop                                 #  1396  0x82675  1      
  nop                                 #  1397  0x82676  1      
.L_82ea0:                             #        0x82677  0      
  movl %eax, %eax                     #  1398  0x82677  2      
  movl (%r15,%rax,1), %edx            #  1399  0x82679  4      
  movl 0x28(%rsp), %esi               #  1400  0x8267d  4      
  movl %r13d, %ecx                    #  1401  0x82681  3      
  movl %r14d, %edi                    #  1402  0x82684  3      
  nop                                 #  1403  0x82687  1      
  callq ._wcrtomb_r                   #  1404  0x82688  5      
  cmpl $0xffffffff, %eax              #  1405  0x8268d  5      
  movl %eax, 0x70(%rsp)               #  1406  0x82692  4      
  jne .L_81d60                        #  1407  0x82696  6      
  nop                                 #  1408  0x8269c  1      
  nop                                 #  1409  0x8269d  1      
.L_82ee0:                             #        0x8269e  0      
  movq 0x78(%rsp), %rsi               #  1410  0x8269e  5      
  movl %esi, %esi                     #  1411  0x826a3  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1412  0x826a5  6      
  orl $0x40, %eax                     #  1413  0x826ab  3      
  movl %esi, %esi                     #  1414  0x826ae  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  1415  0x826b0  6      
  jmpq .L_82580                       #  1416  0x826b6  5      
  nop                                 #  1417  0x826bb  1      
.L_82f00:                             #        0x826bc  0      
  movl 0x198(%rsp), %edx              #  1418  0x826bc  7      
  testl %edx, %edx                    #  1419  0x826c3  2      
  jne .L_83cc0                        #  1420  0x826c5  6      
  xchgw %ax, %ax                      #  1421  0x826cb  3      
  nop                                 #  1422  0x826ce  1      
.L_82f20:                             #        0x826cf  0      
  movq 0x78(%rsp), %rsi               #  1423  0x826cf  5      
  movl %esi, %esi                     #  1424  0x826d4  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  1425  0x826d6  6      
  jmpq .L_82580                       #  1426  0x826dc  5      
  nop                                 #  1427  0x826e1  1      
.L_82f40:                             #        0x826e2  0      
  testl %eax, %eax                    #  1428  0x826e2  2      
  jne .L_82f80                        #  1429  0x826e4  6      
  testb $0x1, %r12b                   #  1430  0x826ea  4      
  je .L_82f80                         #  1431  0x826ee  6      
  movq 0xc8(%rsp), %rcx               #  1432  0x826f4  8      
  movq %rcx, 0x98(%rsp)               #  1433  0x826fc  8      
  nop                                 #  1434  0x82704  1      
  movl %ecx, %ecx                     #  1435  0x82705  2      
  movb $0x30, (%r15,%rcx,1)           #  1436  0x82707  5      
  movl $0x1, 0x70(%rsp)               #  1437  0x8270c  8      
  movq 0xb0(%rsp), %rcx               #  1438  0x82714  8      
  jmpq .L_82300                       #  1439  0x8271c  5      
  nop                                 #  1440  0x82721  1      
.L_82f80:                             #        0x82722  0      
  movq 0xb8(%rsp), %rsi               #  1441  0x82722  8      
  movq 0xb0(%rsp), %rcx               #  1442  0x8272a  8      
  movl $0x0, 0x70(%rsp)               #  1443  0x82732  8      
  movq %rsi, 0x98(%rsp)               #  1444  0x8273a  8      
  jmpq .L_82300                       #  1445  0x82742  5      
  nop                                 #  1446  0x82747  1      
  nop                                 #  1447  0x82748  1      
.L_82fc0:                             #        0x82749  0      
  movq 0xb8(%rsp), %rax               #  1448  0x82749  8      
  movq 0xc0(%rsp), %rcx               #  1449  0x82751  8      
  movq %rax, 0x98(%rsp)               #  1450  0x82759  8      
  nop                                 #  1451  0x82761  1      
.L_82fe0:                             #        0x82762  0      
  movl %r13d, %edx                    #  1452  0x82762  3      
  shrq $0x4, %r13                     #  1453  0x82765  4      
  subl $0x1, %eax                     #  1454  0x82769  3      
  andl $0xf, %edx                     #  1455  0x8276c  3      
  addl %ecx, %edx                     #  1456  0x8276f  2      
  testq %r13, %r13                    #  1457  0x82771  3      
  movl %edx, %edx                     #  1458  0x82774  2      
  movzbl (%r15,%rdx,1), %edx          #  1459  0x82776  5      
  movl %eax, %eax                     #  1460  0x8277b  2      
  movb %dl, (%r15,%rax,1)             #  1461  0x8277d  4      
  nop                                 #  1462  0x82781  1      
  jne .L_82fe0                        #  1463  0x82782  6      
  movl 0xb8(%rsp), %edx               #  1464  0x82788  7      
  movq %rax, 0x98(%rsp)               #  1465  0x8278f  8      
  movq 0xb0(%rsp), %rcx               #  1466  0x82797  8      
  subl %eax, %edx                     #  1467  0x8279f  2      
  movl %edx, 0x70(%rsp)               #  1468  0x827a1  4      
  nop                                 #  1469  0x827a5  1      
  jmpq .L_82300                       #  1470  0x827a6  5      
  nop                                 #  1471  0x827ab  1      
  nop                                 #  1472  0x827ac  1      
.L_83040:                             #        0x827ad  0      
  cmpq $0x9, %r13                     #  1473  0x827ad  4      
  ja .L_830e0                         #  1474  0x827b1  6      
  movq 0xc8(%rsp), %rcx               #  1475  0x827b7  8      
  addl $0x30, %r13d                   #  1476  0x827bf  4      
  movq %rcx, 0x98(%rsp)               #  1477  0x827c3  8      
  xchgw %ax, %ax                      #  1478  0x827cb  3      
  movl %ecx, %ecx                     #  1479  0x827ce  2      
  movb %r13b, (%r15,%rcx,1)           #  1480  0x827d0  4      
  movl $0x1, 0x70(%rsp)               #  1481  0x827d4  8      
  movq 0xb0(%rsp), %rcx               #  1482  0x827dc  8      
  jmpq .L_82300                       #  1483  0x827e4  5      
  nop                                 #  1484  0x827e9  1      
.L_83080:                             #        0x827ea  0      
  cmpb $0x30, %al                     #  1485  0x827ea  2      
  je .L_83bc0                         #  1486  0x827ec  6      
  movl 0x98(%rsp), %eax               #  1487  0x827f2  7      
  subl $0x1, %eax                     #  1488  0x827f9  3      
  movq %rax, 0x98(%rsp)               #  1489  0x827fc  8      
  nop                                 #  1490  0x82804  1      
  movl %eax, %eax                     #  1491  0x82805  2      
  movb $0x30, (%r15,%rax,1)           #  1492  0x82807  5      
  movl 0xb8(%rsp), %edx               #  1493  0x8280c  7      
  movq 0xb0(%rsp), %rcx               #  1494  0x82813  8      
  subl %eax, %edx                     #  1495  0x8281b  2      
  movl %edx, 0x70(%rsp)               #  1496  0x8281d  4      
  nop                                 #  1497  0x82821  1      
  jmpq .L_82300                       #  1498  0x82822  5      
  nop                                 #  1499  0x82827  1      
  nop                                 #  1500  0x82828  1      
.L_830e0:                             #        0x82829  0      
  movl 0xd4(%rsp), %r11d              #  1501  0x82829  8      
  movq 0xb8(%rsp), %rsi               #  1502  0x82831  8      
  movl %r12d, %r10d                   #  1503  0x82839  3      
  movl %r8d, 0x68(%rsp)               #  1504  0x8283c  5      
  movl %r12d, %r8d                    #  1505  0x82841  3      
  nop                                 #  1506  0x82844  1      
  movq 0xb0(%rsp), %r12               #  1507  0x82845  8      
  andl $0x400, %r10d                  #  1508  0x8284d  7      
  movq $0xcccccccccccccccd, %r9       #  1509  0x82854  10     
  negl %r11d                          #  1510  0x8285e  3      
  nop                                 #  1511  0x82861  1      
  movq %rsi, 0x98(%rsp)               #  1512  0x82862  8      
  xorl %esi, %esi                     #  1513  0x8286a  2      
  movl %r11d, 0x70(%rsp)              #  1514  0x8286c  5      
  movq %rbx, %r11                     #  1515  0x82871  3      
  movq 0x98(%rsp), %rbx               #  1516  0x82874  8      
  nop                                 #  1517  0x8287c  1      
.L_83140:                             #        0x8287d  0      
  movq %r13, %rax                     #  1518  0x8287d  3      
  subl $0x1, %ebx                     #  1519  0x82880  3      
  mulq %r9                            #  1520  0x82883  3      
  shrq $0x3, %rdx                     #  1521  0x82886  4      
  leaq (%rdx,%rdx,4), %rax            #  1522  0x8288a  4      
  movq %r13, %rdx                     #  1523  0x8288e  3      
  addq %rax, %rax                     #  1524  0x82891  3      
  subq %rax, %rdx                     #  1525  0x82894  3      
  movq %rdx, %rax                     #  1526  0x82897  3      
  addl $0x30, %eax                    #  1527  0x8289a  3      
  testl %r10d, %r10d                  #  1528  0x8289d  3      
  movl %ebx, %ebx                     #  1529  0x828a0  2      
  movb %al, (%r15,%rbx,1)             #  1530  0x828a2  4      
  leal 0x1(%rsi), %eax                #  1531  0x828a6  3      
  je .L_831a0                         #  1532  0x828a9  6      
  movl %r12d, %r12d                   #  1533  0x828af  3      
  movzbl (%r15,%r12,1), %edx          #  1534  0x828b2  5      
  movsbl %dl, %esi                    #  1535  0x828b7  3      
  cmpl %eax, %esi                     #  1536  0x828ba  2      
  nop                                 #  1537  0x828bc  1      
  je .L_83200                         #  1538  0x828bd  6      
  nop                                 #  1539  0x828c3  1      
  nop                                 #  1540  0x828c4  1      
.L_831a0:                             #        0x828c5  0      
  movl %eax, %esi                     #  1541  0x828c5  2      
  nop                                 #  1542  0x828c7  1      
  nop                                 #  1543  0x828c8  1      
.L_831c0:                             #        0x828c9  0      
  movq %r12, %rcx                     #  1544  0x828c9  3      
  nop                                 #  1545  0x828cc  1      
  nop                                 #  1546  0x828cd  1      
.L_831e0:                             #        0x828ce  0      
  movq %r13, %rax                     #  1547  0x828ce  3      
  mulq %r9                            #  1548  0x828d1  3      
  movq %rdx, %r13                     #  1549  0x828d4  3      
  shrq $0x3, %r13                     #  1550  0x828d7  4      
  testq %r13, %r13                    #  1551  0x828db  3      
  je .L_83280                         #  1552  0x828de  6      
  movq %rcx, %r12                     #  1553  0x828e4  3      
  jmpq .L_83140                       #  1554  0x828e7  5      
  xchgw %ax, %ax                      #  1555  0x828ec  3      
.L_83200:                             #        0x828ef  0      
  cmpb $0x7f, %dl                     #  1556  0x828ef  3      
  je .L_831c0                         #  1557  0x828f2  6      
  cmpq $0x9, %r13                     #  1558  0x828f8  4      
  jbe .L_831c0                        #  1559  0x828fc  6      
  addl 0x70(%rsp), %ebx               #  1560  0x82902  4      
  movl 0xd8(%rsp), %esi               #  1561  0x82906  7      
  movl 0xd4(%rsp), %edx               #  1562  0x8290d  7      
  nop                                 #  1563  0x82914  1      
  movl %r8d, 0x40(%rsp)               #  1564  0x82915  5      
  movq %r9, 0x58(%rsp)                #  1565  0x8291a  5      
  movl %r10d, 0x50(%rsp)              #  1566  0x8291f  5      
  movq %r11, 0x48(%rsp)               #  1567  0x82924  5      
  movl %ebx, %edi                     #  1568  0x82929  2      
  nop                                 #  1569  0x8292b  1      
  callq .strncpy                      #  1570  0x8292c  5      
  leal 0x1(%r12), %ecx                #  1571  0x82931  5      
  xorl %esi, %esi                     #  1572  0x82936  2      
  movl 0x40(%rsp), %r8d               #  1573  0x82938  5      
  movq 0x58(%rsp), %r9                #  1574  0x8293d  5      
  movl 0x50(%rsp), %r10d              #  1575  0x82942  5      
  movl %ecx, %ecx                     #  1576  0x82947  2      
  cmpb $0x0, (%r15,%rcx,1)            #  1577  0x82949  5      
  nop                                 #  1578  0x8294e  1      
  movq 0x48(%rsp), %r11               #  1579  0x8294f  5      
  jne .L_831e0                        #  1580  0x82954  6      
  jmpq .L_831c0                       #  1581  0x8295a  5      
  nop                                 #  1582  0x8295f  1      
  nop                                 #  1583  0x82960  1      
.L_83280:                             #        0x82961  0      
  movq %rbx, 0x98(%rsp)               #  1584  0x82961  8      
  movl 0xb8(%rsp), %esi               #  1585  0x82969  7      
  movl %r8d, %r12d                    #  1586  0x82970  3      
  subl 0x98(%rsp), %esi               #  1587  0x82973  7      
  movl 0x68(%rsp), %r8d               #  1588  0x8297a  5      
  xchgw %ax, %ax                      #  1589  0x8297f  3      
  movq %r11, %rbx                     #  1590  0x82982  3      
  movl %esi, 0x70(%rsp)               #  1591  0x82985  4      
  jmpq .L_82300                       #  1592  0x82989  5      
  nop                                 #  1593  0x8298e  1      
  nop                                 #  1594  0x8298f  1      
.L_832c0:                             #        0x82990  0      
  movl 0x78(%rsp), %esi               #  1595  0x82990  4      
  leal 0x190(%rsp), %edx              #  1596  0x82994  7      
  movl %r14d, %edi                    #  1597  0x8299b  3      
  nop                                 #  1598  0x8299e  1      
  callq .__ssprint_r                  #  1599  0x8299f  5      
  testl %eax, %eax                    #  1600  0x829a4  2      
  jne .L_82540                        #  1601  0x829a6  6      
  leal 0x150(%rsp), %ebx              #  1602  0x829ac  7      
  jmpq .L_81740                       #  1603  0x829b3  5      
  nop                                 #  1604  0x829b8  1      
.L_83300:                             #        0x829b9  0      
  movl 0x98(%rsp), %edx               #  1605  0x829b9  7      
  leal 0x1a0(%rsp), %ecx              #  1606  0x829c0  7      
  xorl %esi, %esi                     #  1607  0x829c7  2      
  movl %r8d, 0x40(%rsp)               #  1608  0x829c9  5      
  movl %ecx, %edi                     #  1609  0x829ce  2      
  movq %rcx, 0x18(%rsp)               #  1610  0x829d0  5      
  nop                                 #  1611  0x829d5  1      
  movl %edx, 0x1c8(%rsp)              #  1612  0x829d6  7      
  movl $0x8, %edx                     #  1613  0x829dd  5      
  nop                                 #  1614  0x829e2  1      
  callq .memset                       #  1615  0x829e3  5      
  movl 0x40(%rsp), %r8d               #  1616  0x829e8  5      
  testl %r8d, %r8d                    #  1617  0x829ed  3      
  js .L_83d20                         #  1618  0x829f0  6      
  movq %rbx, 0x68(%rsp)               #  1619  0x829f6  5      
  movl %r12d, 0x90(%rsp)              #  1620  0x829fb  8      
  xorl %r13d, %r13d                   #  1621  0x82a03  3      
  xchgw %ax, %ax                      #  1622  0x82a06  3      
  movl $0x0, 0x70(%rsp)               #  1623  0x82a09  8      
  movl %r8d, %ebx                     #  1624  0x82a11  3      
  xorl %r12d, %r12d                   #  1625  0x82a14  3      
  jmpq .L_833a0                       #  1626  0x82a17  5      
  nop                                 #  1627  0x82a1c  1      
  nop                                 #  1628  0x82a1d  1      
.L_83380:                             #        0x82a1e  0      
  movl %eax, %r12d                    #  1629  0x82a1e  3      
  nop                                 #  1630  0x82a21  1      
  nop                                 #  1631  0x82a22  1      
.L_833a0:                             #        0x82a23  0      
  movl 0x1c8(%rsp), %eax              #  1632  0x82a23  7      
  addl %r13d, %eax                    #  1633  0x82a2a  3      
  movl %eax, %eax                     #  1634  0x82a2d  2      
  movl (%r15,%rax,1), %edx            #  1635  0x82a2f  4      
  testl %edx, %edx                    #  1636  0x82a33  2      
  je .L_83ca0                         #  1637  0x82a35  6      
  movl 0x18(%rsp), %ecx               #  1638  0x82a3b  4      
  movl 0x28(%rsp), %esi               #  1639  0x82a3f  4      
  movl %r14d, %edi                    #  1640  0x82a43  3      
  nop                                 #  1641  0x82a46  1      
  nop                                 #  1642  0x82a47  1      
  callq ._wcrtomb_r                   #  1643  0x82a48  5      
  cmpl $0xffffffff, %eax              #  1644  0x82a4d  5      
  je .L_82ee0                         #  1645  0x82a52  6      
  addl %r12d, %eax                    #  1646  0x82a58  3      
  cmpl %eax, %ebx                     #  1647  0x82a5b  2      
  jl .L_83ca0                         #  1648  0x82a5d  6      
  addl $0x4, %r13d                    #  1649  0x82a63  4      
  cmpl %eax, %ebx                     #  1650  0x82a67  2      
  jne .L_83380                        #  1651  0x82a69  6      
  movl %ebx, %r8d                     #  1652  0x82a6f  3      
  nop                                 #  1653  0x82a72  1      
  movl 0x90(%rsp), %r12d              #  1654  0x82a73  8      
  movq 0x68(%rsp), %rbx               #  1655  0x82a7b  5      
  movl %r8d, 0x70(%rsp)               #  1656  0x82a80  5      
  nop                                 #  1657  0x82a85  1      
.L_83420:                             #        0x82a86  0      
  movl 0x70(%rsp), %edi               #  1658  0x82a86  4      
  testl %edi, %edi                    #  1659  0x82a8a  2      
  je .L_837e0                         #  1660  0x82a8c  6      
  cmpl $0x63, 0x70(%rsp)              #  1661  0x82a92  5      
  leal 0xe0(%rsp), %esi               #  1662  0x82a97  7      
  nop                                 #  1663  0x82a9e  1      
  movq $0x0, 0x90(%rsp)               #  1664  0x82a9f  12     
  movq %rsi, 0x98(%rsp)               #  1665  0x82aab  8      
  jg .L_83b20                         #  1666  0x82ab3  6      
  nop                                 #  1667  0x82ab9  1      
.L_83460:                             #        0x82aba  0      
  movl 0x18(%rsp), %edi               #  1668  0x82aba  4      
  xorl %esi, %esi                     #  1669  0x82abe  2      
  movl $0x8, %edx                     #  1670  0x82ac0  5      
  nop                                 #  1671  0x82ac5  1      
  nop                                 #  1672  0x82ac6  1      
  callq .memset                       #  1673  0x82ac7  5      
  movl 0x18(%rsp), %r8d               #  1674  0x82acc  5      
  movl 0x70(%rsp), %ecx               #  1675  0x82ad1  4      
  leal 0x1c8(%rsp), %edx              #  1676  0x82ad5  7      
  movl 0x98(%rsp), %esi               #  1677  0x82adc  7      
  movl %r14d, %edi                    #  1678  0x82ae3  3      
  nop                                 #  1679  0x82ae6  1      
  callq ._wcsrtombs_r                 #  1680  0x82ae7  5      
  cmpl %eax, 0x70(%rsp)               #  1681  0x82aec  4      
  jne .L_82520                        #  1682  0x82af0  6      
  movl 0x70(%rsp), %eax               #  1683  0x82af6  4      
  addl 0x98(%rsp), %eax               #  1684  0x82afa  7      
  movl %eax, %eax                     #  1685  0x82b01  2      
  movb $0x0, (%r15,%rax,1)            #  1686  0x82b03  5      
  movl 0x70(%rsp), %esi               #  1687  0x82b08  4      
  movl $0x0, %eax                     #  1688  0x82b0c  5      
  movl $0x0, 0xac(%rsp)               #  1689  0x82b11  11     
  testl %esi, %esi                    #  1690  0x82b1c  2      
  cmovnsl 0x70(%rsp), %eax            #  1691  0x82b1e  5      
  movl %eax, 0x68(%rsp)               #  1692  0x82b23  4      
  jmpq .L_82340                       #  1693  0x82b27  5      
.L_834e0:                             #        0x82b2c  0      
  movq 0x80(%rsp), %rdx               #  1694  0x82b2c  8      
  movq 0x80(%rsp), %rcx               #  1695  0x82b34  8      
  movl %edx, %edx                     #  1696  0x82b3c  2      
  movl 0x8(%r15,%rdx,1), %eax         #  1697  0x82b3e  5      
  leal 0x8(%rax), %edx                #  1698  0x82b43  3      
  nop                                 #  1699  0x82b46  1      
  movl %ecx, %ecx                     #  1700  0x82b47  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  1701  0x82b49  5      
  jmpq .L_82ea0                       #  1702  0x82b4e  5      
  nop                                 #  1703  0x82b53  1      
  nop                                 #  1704  0x82b54  1      
.L_83520:                             #        0x82b55  0      
  movq 0x80(%rsp), %rsi               #  1705  0x82b55  8      
  movl %esi, %esi                     #  1706  0x82b5d  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1707  0x82b5f  5      
  leal 0x8(%rdx), %eax                #  1708  0x82b64  3      
  movl %esi, %esi                     #  1709  0x82b67  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1710  0x82b69  5      
  jmpq .L_828c0                       #  1711  0x82b6e  5      
  xchgw %ax, %ax                      #  1712  0x82b73  3      
.L_83540:                             #        0x82b76  0      
  movq 0x80(%rsp), %rsi               #  1713  0x82b76  8      
  movl %esi, %esi                     #  1714  0x82b7e  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1715  0x82b80  5      
  leal 0x8(%rdx), %eax                #  1716  0x82b85  3      
  movl %esi, %esi                     #  1717  0x82b88  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1718  0x82b8a  5      
  jmpq .L_829a0                       #  1719  0x82b8f  5      
  xchgw %ax, %ax                      #  1720  0x82b94  3      
.L_83560:                             #        0x82b97  0      
  testl $0x200, %r12d                 #  1721  0x82b97  7      
  je .L_83900                         #  1722  0x82b9e  6      
  movq 0x80(%rsp), %rax               #  1723  0x82ba4  8      
  movl %eax, %eax                     #  1724  0x82bac  2      
  movl (%r15,%rax,1), %edx            #  1725  0x82bae  4      
  cmpl $0x2f, %edx                    #  1726  0x82bb2  3      
  xchgw %ax, %ax                      #  1727  0x82bb5  3      
  ja .L_83d80                         #  1728  0x82bb8  6      
  movq %rax, %rcx                     #  1729  0x82bbe  3      
  movl %eax, %eax                     #  1730  0x82bc1  2      
  movl 0xc(%r15,%rax,1), %eax         #  1731  0x82bc3  5      
  addl %edx, %eax                     #  1732  0x82bc8  2      
  addl $0x8, %edx                     #  1733  0x82bca  3      
  movl %ecx, %ecx                     #  1734  0x82bcd  2      
  movl %edx, (%r15,%rcx,1)            #  1735  0x82bcf  4      
  nop                                 #  1736  0x82bd3  1      
.L_835a0:                             #        0x82bd4  0      
  movl %eax, %eax                     #  1737  0x82bd4  2      
  movsbq (%r15,%rax,1), %r13          #  1738  0x82bd6  5      
  jmpq .L_81ea0                       #  1739  0x82bdb  5      
  nop                                 #  1740  0x82be0  1      
  nop                                 #  1741  0x82be1  1      
.L_835c0:                             #        0x82be2  0      
  movq 0x80(%rsp), %rsi               #  1742  0x82be2  8      
  movl %esi, %esi                     #  1743  0x82bea  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1744  0x82bec  5      
  leal 0x8(%rdx), %eax                #  1745  0x82bf1  3      
  movl %esi, %esi                     #  1746  0x82bf4  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1747  0x82bf6  5      
  jmpq .L_82940                       #  1748  0x82bfb  5      
  xchgw %ax, %ax                      #  1749  0x82c00  3      
.L_835e0:                             #        0x82c03  0      
  testl $0x200, %r12d                 #  1750  0x82c03  7      
  je .L_839c0                         #  1751  0x82c0a  6      
  movq 0x80(%rsp), %rax               #  1752  0x82c10  8      
  movl %eax, %eax                     #  1753  0x82c18  2      
  movl (%r15,%rax,1), %edx            #  1754  0x82c1a  4      
  cmpl $0x2f, %edx                    #  1755  0x82c1e  3      
  xchgw %ax, %ax                      #  1756  0x82c21  3      
  ja .L_83e40                         #  1757  0x82c24  6      
  movq %rax, %rcx                     #  1758  0x82c2a  3      
  movl %eax, %eax                     #  1759  0x82c2d  2      
  movl 0xc(%r15,%rax,1), %eax         #  1760  0x82c2f  5      
  addl %edx, %eax                     #  1761  0x82c34  2      
  addl $0x8, %edx                     #  1762  0x82c36  3      
  movl %ecx, %ecx                     #  1763  0x82c39  2      
  movl %edx, (%r15,%rcx,1)            #  1764  0x82c3b  4      
  nop                                 #  1765  0x82c3f  1      
.L_83620:                             #        0x82c40  0      
  movl %eax, %eax                     #  1766  0x82c40  2      
  movzbl (%r15,%rax,1), %r13d         #  1767  0x82c42  5      
  movl $0x1, %eax                     #  1768  0x82c47  5      
  testq %r13, %r13                    #  1769  0x82c4c  3      
  setne %dl                           #  1770  0x82c4f  3      
  jmpq .L_82240                       #  1771  0x82c52  5      
  nop                                 #  1772  0x82c57  1      
.L_83640:                             #        0x82c58  0      
  movq 0x80(%rsp), %rdx               #  1773  0x82c58  8      
  movq 0x80(%rsp), %rsi               #  1774  0x82c60  8      
  movl %edx, %edx                     #  1775  0x82c68  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1776  0x82c6a  5      
  leal 0x8(%rcx), %edx                #  1777  0x82c6f  3      
  nop                                 #  1778  0x82c72  1      
  movl %esi, %esi                     #  1779  0x82c73  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1780  0x82c75  5      
  jmpq .L_82140                       #  1781  0x82c7a  5      
  nop                                 #  1782  0x82c7f  1      
  nop                                 #  1783  0x82c80  1      
.L_83680:                             #        0x82c81  0      
  testl $0x200, %r12d                 #  1784  0x82c81  7      
  je .L_83960                         #  1785  0x82c88  6      
  movq 0x80(%rsp), %rax               #  1786  0x82c8e  8      
  movl %eax, %eax                     #  1787  0x82c96  2      
  movl (%r15,%rax,1), %edx            #  1788  0x82c98  4      
  cmpl $0x2f, %edx                    #  1789  0x82c9c  3      
  xchgw %ax, %ax                      #  1790  0x82c9f  3      
  ja .L_83ea0                         #  1791  0x82ca2  6      
  movq %rax, %rcx                     #  1792  0x82ca8  3      
  movl %eax, %eax                     #  1793  0x82cab  2      
  movl 0xc(%r15,%rax,1), %eax         #  1794  0x82cad  5      
  addl %edx, %eax                     #  1795  0x82cb2  2      
  addl $0x8, %edx                     #  1796  0x82cb4  3      
  movl %ecx, %ecx                     #  1797  0x82cb7  2      
  movl %edx, (%r15,%rcx,1)            #  1798  0x82cb9  4      
  nop                                 #  1799  0x82cbd  1      
.L_836c0:                             #        0x82cbe  0      
  movl %eax, %eax                     #  1800  0x82cbe  2      
  movzbl (%r15,%rax,1), %r13d         #  1801  0x82cc0  5      
  jmpq .L_828e0                       #  1802  0x82cc5  5      
  nop                                 #  1803  0x82cca  1      
  nop                                 #  1804  0x82ccb  1      
.L_836e0:                             #        0x82ccc  0      
  testl $0x200, %r12d                 #  1805  0x82ccc  7      
  je .L_83a20                         #  1806  0x82cd3  6      
  movq 0x80(%rsp), %rdx               #  1807  0x82cd9  8      
  movl %edx, %edx                     #  1808  0x82ce1  2      
  movl (%r15,%rdx,1), %ecx            #  1809  0x82ce3  4      
  cmpl $0x2f, %ecx                    #  1810  0x82ce7  3      
  xchgw %ax, %ax                      #  1811  0x82cea  3      
  ja .L_83dc0                         #  1812  0x82ced  6      
  movq %rdx, %rsi                     #  1813  0x82cf3  3      
  movl %edx, %edx                     #  1814  0x82cf6  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1815  0x82cf8  5      
  addl %ecx, %edx                     #  1816  0x82cfd  2      
  addl $0x8, %ecx                     #  1817  0x82cff  3      
  movl %esi, %esi                     #  1818  0x82d02  2      
  movl %ecx, (%r15,%rsi,1)            #  1819  0x82d04  4      
  nop                                 #  1820  0x82d08  1      
.L_83720:                             #        0x82d09  0      
  movl %edx, %edx                     #  1821  0x82d09  2      
  movzbl (%r15,%rdx,1), %r13d         #  1822  0x82d0b  5      
  jmpq .L_82160                       #  1823  0x82d10  5      
  nop                                 #  1824  0x82d15  1      
  nop                                 #  1825  0x82d16  1      
.L_83740:                             #        0x82d17  0      
  testb $0x40, %r12b                  #  1826  0x82d17  4      
  jne .L_838a0                        #  1827  0x82d1b  6      
  andl $0x200, %r12d                  #  1828  0x82d21  7      
  je .L_83e00                         #  1829  0x82d28  6      
  movq 0x80(%rsp), %rcx               #  1830  0x82d2e  8      
  nop                                 #  1831  0x82d36  1      
  movl %ecx, %ecx                     #  1832  0x82d37  2      
  movl (%r15,%rcx,1), %edx            #  1833  0x82d39  4      
  cmpl $0x2f, %edx                    #  1834  0x82d3d  3      
  ja .L_83f20                         #  1835  0x82d40  6      
  movl %ecx, %ecx                     #  1836  0x82d46  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1837  0x82d48  5      
  addl %edx, %eax                     #  1838  0x82d4d  2      
  addl $0x8, %edx                     #  1839  0x82d4f  3      
  nop                                 #  1840  0x82d52  1      
  movl %ecx, %ecx                     #  1841  0x82d53  2      
  movl %edx, (%r15,%rcx,1)            #  1842  0x82d55  4      
  nop                                 #  1843  0x82d59  1      
  nop                                 #  1844  0x82d5a  1      
.L_837a0:                             #        0x82d5b  0      
  movl %eax, %eax                     #  1845  0x82d5b  2      
  movl (%r15,%rax,1), %eax            #  1846  0x82d5d  4      
  movzbl 0x74(%rsp), %edx             #  1847  0x82d61  5      
  movl %eax, %eax                     #  1848  0x82d66  2      
  movb %dl, (%r15,%rax,1)             #  1849  0x82d68  4      
  jmpq .L_81280                       #  1850  0x82d6c  5      
  nop                                 #  1851  0x82d71  1      
.L_837c0:                             #        0x82d72  0      
  movq 0x80(%rsp), %rsi               #  1852  0x82d72  8      
  movl %esi, %esi                     #  1853  0x82d7a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1854  0x82d7c  5      
  leal 0x8(%rdx), %eax                #  1855  0x82d81  3      
  movl %esi, %esi                     #  1856  0x82d84  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1857  0x82d86  5      
  jmpq .L_823a0                       #  1858  0x82d8b  5      
  xchgw %ax, %ax                      #  1859  0x82d90  3      
.L_837e0:                             #        0x82d93  0      
  movl $0x0, 0x68(%rsp)               #  1860  0x82d93  8      
  movq $0x0, 0x90(%rsp)               #  1861  0x82d9b  12     
  movl $0x0, 0xac(%rsp)               #  1862  0x82da7  11     
  nop                                 #  1863  0x82db2  1      
  jmpq .L_82340                       #  1864  0x82db3  5      
  nop                                 #  1865  0x82db8  1      
  nop                                 #  1866  0x82db9  1      
.L_83820:                             #        0x82dba  0      
  movq 0x80(%rsp), %rsi               #  1867  0x82dba  8      
  movl %esi, %esi                     #  1868  0x82dc2  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1869  0x82dc4  5      
  leal 0x8(%rdx), %eax                #  1870  0x82dc9  3      
  movl %esi, %esi                     #  1871  0x82dcc  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  1872  0x82dce  5      
  jmpq .L_81d40                       #  1873  0x82dd3  5      
  xchgw %ax, %ax                      #  1874  0x82dd8  3      
.L_83840:                             #        0x82ddb  0      
  movl $0x40, %esi                    #  1875  0x82ddb  5      
  movl %r14d, %edi                    #  1876  0x82de0  3      
  nop                                 #  1877  0x82de3  1      
  nop                                 #  1878  0x82de4  1      
  callq ._malloc_r                    #  1879  0x82de5  5      
  movq 0x78(%rsp), %rcx               #  1880  0x82dea  5      
  movl %eax, %eax                     #  1881  0x82def  2      
  testq %rax, %rax                    #  1882  0x82df1  3      
  movl %ecx, %ecx                     #  1883  0x82df4  2      
  movl %eax, (%r15,%rcx,1)            #  1884  0x82df6  4      
  movl %ecx, %ecx                     #  1885  0x82dfa  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  1886  0x82dfc  5      
  je .L_83fe0                         #  1887  0x82e01  6      
  nop                                 #  1888  0x82e07  1      
  movq 0x78(%rsp), %rsi               #  1889  0x82e08  5      
  movl %esi, %esi                     #  1890  0x82e0d  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  1891  0x82e0f  9      
  jmpq .L_811c0                       #  1892  0x82e18  5      
  nop                                 #  1893  0x82e1d  1      
.L_838a0:                             #        0x82e1e  0      
  movq 0x80(%rsp), %rcx               #  1894  0x82e1e  8      
  movl %ecx, %ecx                     #  1895  0x82e26  2      
  movl (%r15,%rcx,1), %edx            #  1896  0x82e28  4      
  cmpl $0x2f, %edx                    #  1897  0x82e2c  3      
  ja .L_83d00                         #  1898  0x82e2f  6      
  movl %ecx, %ecx                     #  1899  0x82e35  2      
  movl 0xc(%r15,%rcx,1), %eax         #  1900  0x82e37  5      
  addl %edx, %eax                     #  1901  0x82e3c  2      
  addl $0x8, %edx                     #  1902  0x82e3e  3      
  movl %ecx, %ecx                     #  1903  0x82e41  2      
  movl %edx, (%r15,%rcx,1)            #  1904  0x82e43  4      
  nop                                 #  1905  0x82e47  1      
  nop                                 #  1906  0x82e48  1      
.L_838e0:                             #        0x82e49  0      
  movl %eax, %eax                     #  1907  0x82e49  2      
  movl (%r15,%rax,1), %eax            #  1908  0x82e4b  4      
  movzwl 0x74(%rsp), %edx             #  1909  0x82e4f  5      
  movl %eax, %eax                     #  1910  0x82e54  2      
  movw %dx, (%r15,%rax,1)             #  1911  0x82e56  5      
  jmpq .L_81280                       #  1912  0x82e5b  5      
  nop                                 #  1913  0x82e60  1      
.L_83900:                             #        0x82e61  0      
  movq 0x80(%rsp), %rax               #  1914  0x82e61  8      
  movl %eax, %eax                     #  1915  0x82e69  2      
  movl (%r15,%rax,1), %edx            #  1916  0x82e6b  4      
  cmpl $0x2f, %edx                    #  1917  0x82e6f  3      
  ja .L_83da0                         #  1918  0x82e72  6      
  movq %rax, %rcx                     #  1919  0x82e78  3      
  nop                                 #  1920  0x82e7b  1      
  movl %eax, %eax                     #  1921  0x82e7c  2      
  movl 0xc(%r15,%rax,1), %eax         #  1922  0x82e7e  5      
  addl %edx, %eax                     #  1923  0x82e83  2      
  addl $0x8, %edx                     #  1924  0x82e85  3      
  movl %ecx, %ecx                     #  1925  0x82e88  2      
  movl %edx, (%r15,%rcx,1)            #  1926  0x82e8a  4      
  nop                                 #  1927  0x82e8e  1      
.L_83940:                             #        0x82e8f  0      
  movl %eax, %eax                     #  1928  0x82e8f  2      
  movslq (%r15,%rax,1), %r13          #  1929  0x82e91  4      
  jmpq .L_81ea0                       #  1930  0x82e95  5      
  nop                                 #  1931  0x82e9a  1      
  nop                                 #  1932  0x82e9b  1      
.L_83960:                             #        0x82e9c  0      
  movq 0x80(%rsp), %rax               #  1933  0x82e9c  8      
  movl %eax, %eax                     #  1934  0x82ea4  2      
  movl (%r15,%rax,1), %edx            #  1935  0x82ea6  4      
  cmpl $0x2f, %edx                    #  1936  0x82eaa  3      
  ja .L_83d60                         #  1937  0x82ead  6      
  movq %rax, %rcx                     #  1938  0x82eb3  3      
  nop                                 #  1939  0x82eb6  1      
  movl %eax, %eax                     #  1940  0x82eb7  2      
  movl 0xc(%r15,%rax,1), %eax         #  1941  0x82eb9  5      
  addl %edx, %eax                     #  1942  0x82ebe  2      
  addl $0x8, %edx                     #  1943  0x82ec0  3      
  movl %ecx, %ecx                     #  1944  0x82ec3  2      
  movl %edx, (%r15,%rcx,1)            #  1945  0x82ec5  4      
  nop                                 #  1946  0x82ec9  1      
.L_839a0:                             #        0x82eca  0      
  movl %eax, %eax                     #  1947  0x82eca  2      
  movl (%r15,%rax,1), %r13d           #  1948  0x82ecc  4      
  jmpq .L_828e0                       #  1949  0x82ed0  5      
  nop                                 #  1950  0x82ed5  1      
  nop                                 #  1951  0x82ed6  1      
.L_839c0:                             #        0x82ed7  0      
  movq 0x80(%rsp), %rax               #  1952  0x82ed7  8      
  movl %eax, %eax                     #  1953  0x82edf  2      
  movl (%r15,%rax,1), %edx            #  1954  0x82ee1  4      
  cmpl $0x2f, %edx                    #  1955  0x82ee5  3      
  ja .L_83ec0                         #  1956  0x82ee8  6      
  movq %rax, %rcx                     #  1957  0x82eee  3      
  nop                                 #  1958  0x82ef1  1      
  movl %eax, %eax                     #  1959  0x82ef2  2      
  movl 0xc(%r15,%rax,1), %eax         #  1960  0x82ef4  5      
  addl %edx, %eax                     #  1961  0x82ef9  2      
  addl $0x8, %edx                     #  1962  0x82efb  3      
  movl %ecx, %ecx                     #  1963  0x82efe  2      
  movl %edx, (%r15,%rcx,1)            #  1964  0x82f00  4      
  nop                                 #  1965  0x82f04  1      
.L_83a00:                             #        0x82f05  0      
  movl %eax, %eax                     #  1966  0x82f05  2      
  movl (%r15,%rax,1), %r13d           #  1967  0x82f07  4      
  movl $0x1, %eax                     #  1968  0x82f0b  5      
  testq %r13, %r13                    #  1969  0x82f10  3      
  setne %dl                           #  1970  0x82f13  3      
  jmpq .L_82240                       #  1971  0x82f16  5      
  nop                                 #  1972  0x82f1b  1      
.L_83a20:                             #        0x82f1c  0      
  movq 0x80(%rsp), %rdx               #  1973  0x82f1c  8      
  movl %edx, %edx                     #  1974  0x82f24  2      
  movl (%r15,%rdx,1), %ecx            #  1975  0x82f26  4      
  cmpl $0x2f, %ecx                    #  1976  0x82f2a  3      
  ja .L_83e60                         #  1977  0x82f2d  6      
  movq %rdx, %rsi                     #  1978  0x82f33  3      
  nop                                 #  1979  0x82f36  1      
  movl %edx, %edx                     #  1980  0x82f37  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1981  0x82f39  5      
  addl %ecx, %edx                     #  1982  0x82f3e  2      
  addl $0x8, %ecx                     #  1983  0x82f40  3      
  movl %esi, %esi                     #  1984  0x82f43  2      
  movl %ecx, (%r15,%rsi,1)            #  1985  0x82f45  4      
  nop                                 #  1986  0x82f49  1      
.L_83a60:                             #        0x82f4a  0      
  movl %edx, %edx                     #  1987  0x82f4a  2      
  movl (%r15,%rdx,1), %r13d           #  1988  0x82f4c  4      
  jmpq .L_82160                       #  1989  0x82f50  5      
  nop                                 #  1990  0x82f55  1      
  nop                                 #  1991  0x82f56  1      
.L_83a80:                             #        0x82f57  0      
  movq 0x80(%rsp), %rsi               #  1992  0x82f57  8      
  movl %esi, %esi                     #  1993  0x82f5f  2      
  movl 0x8(%r15,%rsi,1), %eax         #  1994  0x82f61  5      
  leal 0x8(%rax), %edx                #  1995  0x82f66  3      
  movl %esi, %esi                     #  1996  0x82f69  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  1997  0x82f6b  5      
  jmpq .L_82d80                       #  1998  0x82f70  5      
  xchgw %ax, %ax                      #  1999  0x82f75  3      
.L_83aa0:                             #        0x82f78  0      
  movq %rax, %rcx                     #  2000  0x82f78  3      
  movl %eax, %eax                     #  2001  0x82f7b  2      
  movl 0xc(%r15,%rax,1), %eax         #  2002  0x82f7d  5      
  addl %edx, %eax                     #  2003  0x82f82  2      
  addl $0x8, %edx                     #  2004  0x82f84  3      
  movl %ecx, %ecx                     #  2005  0x82f87  2      
  movl %edx, (%r15,%rcx,1)            #  2006  0x82f89  4      
  jmpq .L_82ac0                       #  2007  0x82f8d  5      
  nop                                 #  2008  0x82f92  1      
.L_83ac0:                             #        0x82f93  0      
  movq %rax, %rcx                     #  2009  0x82f93  3      
  movl %eax, %eax                     #  2010  0x82f96  2      
  movl 0xc(%r15,%rax,1), %eax         #  2011  0x82f98  5      
  addl %edx, %eax                     #  2012  0x82f9d  2      
  addl $0x8, %edx                     #  2013  0x82f9f  3      
  movl %ecx, %ecx                     #  2014  0x82fa2  2      
  movl %edx, (%r15,%rcx,1)            #  2015  0x82fa4  4      
  jmpq .L_82bc0                       #  2016  0x82fa8  5      
  nop                                 #  2017  0x82fad  1      
.L_83ae0:                             #        0x82fae  0      
  movq %rax, %rcx                     #  2018  0x82fae  3      
  movl %eax, %eax                     #  2019  0x82fb1  2      
  movl 0xc(%r15,%rax,1), %eax         #  2020  0x82fb3  5      
  addl %edx, %eax                     #  2021  0x82fb8  2      
  addl $0x8, %edx                     #  2022  0x82fba  3      
  movl %ecx, %ecx                     #  2023  0x82fbd  2      
  movl %edx, (%r15,%rcx,1)            #  2024  0x82fbf  4      
  jmpq .L_82c40                       #  2025  0x82fc3  5      
  nop                                 #  2026  0x82fc8  1      
.L_83b00:                             #        0x82fc9  0      
  movq %rdx, %rsi                     #  2027  0x82fc9  3      
  movl %edx, %edx                     #  2028  0x82fcc  2      
  movl 0xc(%r15,%rdx,1), %edx         #  2029  0x82fce  5      
  addl %ecx, %edx                     #  2030  0x82fd3  2      
  addl $0x8, %ecx                     #  2031  0x82fd5  3      
  movl %esi, %esi                     #  2032  0x82fd8  2      
  movl %ecx, (%r15,%rsi,1)            #  2033  0x82fda  4      
  jmpq .L_82d20                       #  2034  0x82fde  5      
  nop                                 #  2035  0x82fe3  1      
.L_83b20:                             #        0x82fe4  0      
  movl 0x70(%rsp), %esi               #  2036  0x82fe4  4      
  movl %r14d, %edi                    #  2037  0x82fe8  3      
  addl $0x1, %esi                     #  2038  0x82feb  3      
  xchgw %ax, %ax                      #  2039  0x82fee  3      
  nop                                 #  2040  0x82ff1  1      
  callq ._malloc_r                    #  2041  0x82ff2  5      
  movl %eax, %eax                     #  2042  0x82ff7  2      
  testq %rax, %rax                    #  2043  0x82ff9  3      
  movq %rax, 0x90(%rsp)               #  2044  0x82ffc  8      
  je .L_84000                         #  2045  0x83004  6      
  movq 0x90(%rsp), %rcx               #  2046  0x8300a  8      
  nop                                 #  2047  0x83012  1      
  movq %rcx, 0x98(%rsp)               #  2048  0x83013  8      
  jmpq .L_83460                       #  2049  0x8301b  5      
  nop                                 #  2050  0x83020  1      
  nop                                 #  2051  0x83021  1      
.L_83b80:                             #        0x83022  0      
  cmpl $0x0, 0x70(%rsp)               #  2052  0x83022  5      
  movq $0x0, 0x90(%rsp)               #  2053  0x83027  12     
  cmovnsl 0x70(%rsp), %r13d           #  2054  0x83033  6      
  nop                                 #  2055  0x83039  1      
  movl $0x0, 0xac(%rsp)               #  2056  0x8303a  11     
  movl %r13d, 0x68(%rsp)              #  2057  0x83045  5      
  jmpq .L_82340                       #  2058  0x8304a  5      
  nop                                 #  2059  0x8304f  1      
.L_83bc0:                             #        0x83050  0      
  movl 0xb8(%rsp), %esi               #  2060  0x83050  7      
  subl 0x98(%rsp), %esi               #  2061  0x83057  7      
  movq 0xb0(%rsp), %rcx               #  2062  0x8305e  8      
  movl %esi, 0x70(%rsp)               #  2063  0x83066  4      
  jmpq .L_82300                       #  2064  0x8306a  5      
  nop                                 #  2065  0x8306f  1      
.L_83be0:                             #        0x83070  0      
  movl $0x6, 0x70(%rsp)               #  2066  0x83070  8      
  cmpl $0x6, %r8d                     #  2067  0x83078  4      
  cmoval 0x70(%rsp), %r8d             #  2068  0x8307c  6      
  movl $0x0, %eax                     #  2069  0x83082  5      
  nop                                 #  2070  0x83087  1      
  movq $0x10023c12, 0x98(%rsp)        #  2071  0x83088  12     
  testl %r8d, %r8d                    #  2072  0x83094  3      
  movl %r8d, 0x70(%rsp)               #  2073  0x83097  5      
  cmovnsl %r8d, %eax                  #  2074  0x8309c  4      
  movl %eax, 0x68(%rsp)               #  2075  0x830a0  4      
  nop                                 #  2076  0x830a4  1      
  jmpq .L_814c0                       #  2077  0x830a5  5      
  nop                                 #  2078  0x830aa  1      
  nop                                 #  2079  0x830ab  1      
.L_83c40:                             #        0x830ac  0      
  movl 0x98(%rsp), %edi               #  2080  0x830ac  7      
  nop                                 #  2081  0x830b3  1      
  nop                                 #  2082  0x830b4  1      
  callq .strlen                       #  2083  0x830b5  5      
  testl %eax, %eax                    #  2084  0x830ba  2      
  movl %eax, 0x70(%rsp)               #  2085  0x830bc  4      
  movq $0x0, 0x90(%rsp)               #  2086  0x830c0  12     
  cmovnsl %eax, %r13d                 #  2087  0x830cc  4      
  nop                                 #  2088  0x830d0  1      
  movl $0x0, 0xac(%rsp)               #  2089  0x830d1  11     
  movl %r13d, 0x68(%rsp)              #  2090  0x830dc  5      
  jmpq .L_82340                       #  2091  0x830e1  5      
  nop                                 #  2092  0x830e6  1      
.L_83ca0:                             #        0x830e7  0      
  movl %r12d, 0x70(%rsp)              #  2093  0x830e7  5      
  movq 0x68(%rsp), %rbx               #  2094  0x830ec  5      
  movl 0x90(%rsp), %r12d              #  2095  0x830f1  8      
  jmpq .L_83420                       #  2096  0x830f9  5      
  nop                                 #  2097  0x830fe  1      
.L_83cc0:                             #        0x830ff  0      
  movl 0x78(%rsp), %esi               #  2098  0x830ff  4      
  leal 0x190(%rsp), %edx              #  2099  0x83103  7      
  movl %r14d, %edi                    #  2100  0x8310a  3      
  nop                                 #  2101  0x8310d  1      
  callq .__ssprint_r                  #  2102  0x8310e  5      
  testl %eax, %eax                    #  2103  0x83113  2      
  je .L_82f20                         #  2104  0x83115  6      
  jmpq .L_82560                       #  2105  0x8311b  5      
  nop                                 #  2106  0x83120  1      
  nop                                 #  2107  0x83121  1      
.L_83d00:                             #        0x83122  0      
  movq 0x80(%rsp), %rsi               #  2108  0x83122  8      
  movl %esi, %esi                     #  2109  0x8312a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2110  0x8312c  5      
  leal 0x8(%rax), %edx                #  2111  0x83131  3      
  movl %esi, %esi                     #  2112  0x83134  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2113  0x83136  5      
  jmpq .L_838e0                       #  2114  0x8313b  5      
  xchgw %ax, %ax                      #  2115  0x83140  3      
.L_83d20:                             #        0x83143  0      
  movl 0x18(%rsp), %r8d               #  2116  0x83143  5      
  leal 0x1c8(%rsp), %edx              #  2117  0x83148  7      
  xorl %ecx, %ecx                     #  2118  0x8314f  2      
  xorl %esi, %esi                     #  2119  0x83151  2      
  movl %r14d, %edi                    #  2120  0x83153  3      
  nop                                 #  2121  0x83156  1      
  callq ._wcsrtombs_r                 #  2122  0x83157  5      
  cmpl $0xffffffff, %eax              #  2123  0x8315c  5      
  movl %eax, 0x70(%rsp)               #  2124  0x83161  4      
  je .L_84000                         #  2125  0x83165  6      
  movl 0x98(%rsp), %ecx               #  2126  0x8316b  7      
  movl %ecx, 0x1c8(%rsp)              #  2127  0x83172  7      
  jmpq .L_83420                       #  2128  0x83179  5      
.L_83d60:                             #        0x8317e  0      
  movq 0x80(%rsp), %rsi               #  2129  0x8317e  8      
  movl %esi, %esi                     #  2130  0x83186  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2131  0x83188  5      
  leal 0x8(%rax), %edx                #  2132  0x8318d  3      
  movl %esi, %esi                     #  2133  0x83190  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2134  0x83192  5      
  jmpq .L_839a0                       #  2135  0x83197  5      
  xchgw %ax, %ax                      #  2136  0x8319c  3      
.L_83d80:                             #        0x8319f  0      
  movq 0x80(%rsp), %rsi               #  2137  0x8319f  8      
  movl %esi, %esi                     #  2138  0x831a7  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2139  0x831a9  5      
  leal 0x8(%rax), %edx                #  2140  0x831ae  3      
  movl %esi, %esi                     #  2141  0x831b1  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2142  0x831b3  5      
  jmpq .L_835a0                       #  2143  0x831b8  5      
  xchgw %ax, %ax                      #  2144  0x831bd  3      
.L_83da0:                             #        0x831c0  0      
  movq 0x80(%rsp), %rsi               #  2145  0x831c0  8      
  movl %esi, %esi                     #  2146  0x831c8  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2147  0x831ca  5      
  leal 0x8(%rax), %edx                #  2148  0x831cf  3      
  movl %esi, %esi                     #  2149  0x831d2  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2150  0x831d4  5      
  jmpq .L_83940                       #  2151  0x831d9  5      
  xchgw %ax, %ax                      #  2152  0x831de  3      
.L_83dc0:                             #        0x831e1  0      
  movq 0x80(%rsp), %rcx               #  2153  0x831e1  8      
  movq 0x80(%rsp), %rsi               #  2154  0x831e9  8      
  movl %ecx, %ecx                     #  2155  0x831f1  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2156  0x831f3  5      
  leal 0x8(%rdx), %ecx                #  2157  0x831f8  3      
  nop                                 #  2158  0x831fb  1      
  movl %esi, %esi                     #  2159  0x831fc  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2160  0x831fe  5      
  jmpq .L_83720                       #  2161  0x83203  5      
  nop                                 #  2162  0x83208  1      
  nop                                 #  2163  0x83209  1      
.L_83e00:                             #        0x8320a  0      
  movq 0x80(%rsp), %rcx               #  2164  0x8320a  8      
  movl %ecx, %ecx                     #  2165  0x83212  2      
  movl (%r15,%rcx,1), %edx            #  2166  0x83214  4      
  cmpl $0x2f, %edx                    #  2167  0x83218  3      
  ja .L_82aa0                         #  2168  0x8321b  6      
  movl %ecx, %ecx                     #  2169  0x83221  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2170  0x83223  5      
  addl %edx, %eax                     #  2171  0x83228  2      
  addl $0x8, %edx                     #  2172  0x8322a  3      
  movl %ecx, %ecx                     #  2173  0x8322d  2      
  movl %edx, (%r15,%rcx,1)            #  2174  0x8322f  4      
  jmpq .L_82ac0                       #  2175  0x83233  5      
  nop                                 #  2176  0x83238  1      
  nop                                 #  2177  0x83239  1      
.L_83e40:                             #        0x8323a  0      
  movq 0x80(%rsp), %rsi               #  2178  0x8323a  8      
  movl %esi, %esi                     #  2179  0x83242  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2180  0x83244  5      
  leal 0x8(%rax), %edx                #  2181  0x83249  3      
  movl %esi, %esi                     #  2182  0x8324c  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2183  0x8324e  5      
  jmpq .L_83620                       #  2184  0x83253  5      
  xchgw %ax, %ax                      #  2185  0x83258  3      
.L_83e60:                             #        0x8325b  0      
  movq 0x80(%rsp), %rcx               #  2186  0x8325b  8      
  movq 0x80(%rsp), %rsi               #  2187  0x83263  8      
  movl %ecx, %ecx                     #  2188  0x8326b  2      
  movl 0x8(%r15,%rcx,1), %edx         #  2189  0x8326d  5      
  leal 0x8(%rdx), %ecx                #  2190  0x83272  3      
  nop                                 #  2191  0x83275  1      
  movl %esi, %esi                     #  2192  0x83276  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  2193  0x83278  5      
  jmpq .L_83a60                       #  2194  0x8327d  5      
  nop                                 #  2195  0x83282  1      
  nop                                 #  2196  0x83283  1      
.L_83ea0:                             #        0x83284  0      
  movq 0x80(%rsp), %rsi               #  2197  0x83284  8      
  movl %esi, %esi                     #  2198  0x8328c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2199  0x8328e  5      
  leal 0x8(%rax), %edx                #  2200  0x83293  3      
  movl %esi, %esi                     #  2201  0x83296  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2202  0x83298  5      
  jmpq .L_836c0                       #  2203  0x8329d  5      
  xchgw %ax, %ax                      #  2204  0x832a2  3      
.L_83ec0:                             #        0x832a5  0      
  movq 0x80(%rsp), %rsi               #  2205  0x832a5  8      
  movl %esi, %esi                     #  2206  0x832ad  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2207  0x832af  5      
  leal 0x8(%rax), %edx                #  2208  0x832b4  3      
  movl %esi, %esi                     #  2209  0x832b7  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2210  0x832b9  5      
  jmpq .L_83a00                       #  2211  0x832be  5      
  xchgw %ax, %ax                      #  2212  0x832c3  3      
.L_83ee0:                             #        0x832c6  0      
  movl %r8d, 0x68(%rsp)               #  2213  0x832c6  5      
  movl %r8d, 0x70(%rsp)               #  2214  0x832cb  5      
  movq $0x0, 0x90(%rsp)               #  2215  0x832d0  12     
  nop                                 #  2216  0x832dc  1      
  movl $0x0, 0xac(%rsp)               #  2217  0x832dd  11     
  jmpq .L_82340                       #  2218  0x832e8  5      
  nop                                 #  2219  0x832ed  1      
  nop                                 #  2220  0x832ee  1      
.L_83f20:                             #        0x832ef  0      
  movq 0x80(%rsp), %rsi               #  2221  0x832ef  8      
  movl %esi, %esi                     #  2222  0x832f7  2      
  movl 0x8(%r15,%rsi,1), %eax         #  2223  0x832f9  5      
  leal 0x8(%rax), %edx                #  2224  0x832fe  3      
  movl %esi, %esi                     #  2225  0x83301  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2226  0x83303  5      
  jmpq .L_837a0                       #  2227  0x83308  5      
  xchgw %ax, %ax                      #  2228  0x8330d  3      
.L_83f40:                             #        0x83310  0      
  movq 0x80(%rsp), %rsi               #  2229  0x83310  8      
  movl %esi, %esi                     #  2230  0x83318  2      
  movl (%r15,%rsi,1), %edx            #  2231  0x8331a  4      
  cmpl $0x2f, %edx                    #  2232  0x8331e  3      
  ja .L_83fa0                         #  2233  0x83321  6      
  movl %esi, %esi                     #  2234  0x83327  2      
  movl 0xc(%r15,%rsi,1), %eax         #  2235  0x83329  5      
  addl %edx, %eax                     #  2236  0x8332e  2      
  addl $0x8, %edx                     #  2237  0x83330  3      
  nop                                 #  2238  0x83333  1      
  movl %esi, %esi                     #  2239  0x83334  2      
  movl %edx, (%r15,%rsi,1)            #  2240  0x83336  4      
  nop                                 #  2241  0x8333a  1      
  nop                                 #  2242  0x8333b  1      
.L_83f80:                             #        0x8333c  0      
  movl %eax, %eax                     #  2243  0x8333c  2      
  movl (%r15,%rax,1), %r8d            #  2244  0x8333e  4      
  testl %r8d, %r8d                    #  2245  0x83342  3      
  jns .L_81b20                        #  2246  0x83345  6      
  movl %r13d, %r13d                   #  2247  0x8334b  3      
  movzbl (%r15,%r13,1), %eax          #  2248  0x8334e  5      
  orl $0xffffffff, %r8d               #  2249  0x83353  7      
  jmpq .L_81440                       #  2250  0x8335a  5      
.L_83fa0:                             #        0x8335f  0      
  movq 0x80(%rsp), %rdx               #  2251  0x8335f  8      
  movq 0x80(%rsp), %rcx               #  2252  0x83367  8      
  movl %edx, %edx                     #  2253  0x8336f  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2254  0x83371  5      
  leal 0x8(%rax), %edx                #  2255  0x83376  3      
  nop                                 #  2256  0x83379  1      
  movl %ecx, %ecx                     #  2257  0x8337a  2      
  movl %edx, 0x8(%r15,%rcx,1)         #  2258  0x8337c  5      
  jmpq .L_83f80                       #  2259  0x83381  5      
  nop                                 #  2260  0x83386  1      
  nop                                 #  2261  0x83387  1      
.L_83fe0:                             #        0x83388  0      
  movl %r14d, %r14d                   #  2262  0x83388  3      
  movl $0xc, (%r15,%r14,1)            #  2263  0x8338b  8      
  movl $0xffffffff, 0x74(%rsp)        #  2264  0x83393  8      
  jmpq .L_825a0                       #  2265  0x8339b  5      
  nop                                 #  2266  0x833a0  1      
.L_84000:                             #        0x833a1  0      
  movq 0x78(%rsp), %rdx               #  2267  0x833a1  5      
  movl %edx, %edx                     #  2268  0x833a6  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  2269  0x833a8  6      
  orl $0x40, %eax                     #  2270  0x833ae  3      
  movl %edx, %edx                     #  2271  0x833b1  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  2272  0x833b3  6      
  jmpq .L_82580                       #  2273  0x833b9  5      
  nop                                 #  2274  0x833be  1      
  nop                                 #  2275  0x833bf  1      
  nop                                 #  2276  0x833c0  1      
                                                               
.size _svfiprintf_r, .-_svfiprintf_r

