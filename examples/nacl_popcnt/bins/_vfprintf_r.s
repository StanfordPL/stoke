  .text
  .globl _vfprintf_r
  .type _vfprintf_r, @function

#! file-offset 0x711a0
#! rip-offset  0x711a0
#! capacity    23136 bytes

# Text                                   #  Line  RIP      Bytes  
._vfprintf_r:                            #        0x711a0  0      
  pushq %r14                             #  1     0x711a0  3      
  movl %edi, %r14d                       #  2     0x711a3  3      
  movl %esi, %esi                        #  3     0x711a6  2      
  movl %ecx, %ecx                        #  4     0x711a8  2      
  movl %r14d, %edi                       #  5     0x711aa  3      
  pushq %r13                             #  6     0x711ad  3      
  pushq %r12                             #  7     0x711b0  3      
  pushq %rbx                             #  8     0x711b3  2      
  movl %edx, %ebx                        #  9     0x711b5  2      
  subl $0x298, %esp                      #  10    0x711b7  6      
  addq %r15, %rsp                        #  11    0x711bd  3      
  nop                                    #  12    0x711c0  1      
  movq %rsi, 0xb8(%rsp)                  #  13    0x711c1  8      
  movq %rcx, 0xc8(%rsp)                  #  14    0x711c9  8      
  nop                                    #  15    0x711d1  1      
  callq ._localeconv_r                   #  16    0x711d2  5      
  movl %eax, %eax                        #  17    0x711d7  2      
  movl %eax, %eax                        #  18    0x711d9  2      
  movl (%r15,%rax,1), %eax               #  19    0x711db  4      
  movl %eax, %edi                        #  20    0x711df  2      
  movq %rax, 0x110(%rsp)                 #  21    0x711e1  8      
  nop                                    #  22    0x711e9  1      
  callq .strlen                          #  23    0x711ea  5      
  movl %eax, 0x124(%rsp)                 #  24    0x711ef  7      
  leal 0x250(%rsp), %eax                 #  25    0x711f6  7      
  xorl %esi, %esi                        #  26    0x711fd  2      
  movl $0x8, %edx                        #  27    0x711ff  5      
  movl %eax, %edi                        #  28    0x71204  2      
  movq %rax, 0x78(%rsp)                  #  29    0x71206  5      
  nop                                    #  30    0x7120b  1      
  nop                                    #  31    0x7120c  1      
  nop                                    #  32    0x7120d  1      
  callq .memset                          #  33    0x7120e  5      
  testq %r14, %r14                       #  34    0x71213  3      
  je .L_71260                            #  35    0x71216  6      
  movl %r14d, %r14d                      #  36    0x7121c  3      
  movl 0x38(%r15,%r14,1), %edi           #  37    0x7121f  5      
  testl %edi, %edi                       #  38    0x71224  2      
  je .L_71fa0                            #  39    0x71226  6      
  nop                                    #  40    0x7122c  1      
.L_71260:                                #        0x7122d  0      
  movq 0xb8(%rsp), %rcx                  #  41    0x7122d  8      
  movl %ecx, %ecx                        #  42    0x71235  2      
  movzwl 0xc(%r15,%rcx,1), %edx          #  43    0x71237  6      
  movswl %dx, %eax                       #  44    0x7123d  3      
  testb $0x2, %ah                        #  45    0x71240  3      
  je .L_71f20                            #  46    0x71243  6      
  nop                                    #  47    0x71249  1      
.L_71280:                                #        0x7124a  0      
  testb $0x20, %ah                       #  48    0x7124a  3      
  jne .L_712c0                           #  49    0x7124d  6      
  movq 0xb8(%rsp), %rax                  #  50    0x71253  8      
  orb $0x20, %dh                         #  51    0x7125b  3      
  movl %eax, %eax                        #  52    0x7125e  2      
  movw %dx, 0xc(%r15,%rax,1)             #  53    0x71260  6      
  nop                                    #  54    0x71266  1      
  movl %eax, %eax                        #  55    0x71267  2      
  andl $0xffffdfff, 0x78(%r15,%rax,1)    #  56    0x71269  9      
  movswl %dx, %eax                       #  57    0x71272  3      
  nop                                    #  58    0x71275  1      
  nop                                    #  59    0x71276  1      
.L_712c0:                                #        0x71277  0      
  testb $0x8, %al                        #  60    0x71277  2      
  je .L_71e20                            #  61    0x71279  6      
  movq 0xb8(%rsp), %rdx                  #  62    0x7127f  8      
  movl %edx, %edx                        #  63    0x71287  2      
  movl 0x10(%r15,%rdx,1), %esi           #  64    0x71289  5      
  testl %esi, %esi                       #  65    0x7128e  2      
  je .L_71e20                            #  66    0x71290  6      
  nop                                    #  67    0x71296  1      
  movl %eax, %edx                        #  68    0x71297  2      
  andl $0x1a, %edx                       #  69    0x71299  3      
  cmpl $0xa, %edx                        #  70    0x7129c  3      
  je .L_71e80                            #  71    0x7129f  6      
  nop                                    #  72    0x712a5  1      
  nop                                    #  73    0x712a6  1      
.L_71300:                                #        0x712a7  0      
  leal 0x1d0(%rsp), %eax                 #  74    0x712a7  7      
  leal 0x160(%rsp), %ecx                 #  75    0x712ae  7      
  leal 0x278(%rsp), %edx                 #  76    0x712b5  7      
  movq %rbx, 0xa8(%rsp)                  #  77    0x712bc  8      
  nop                                    #  78    0x712c4  1      
  leal 0x1d0(%rsp), %ebx                 #  79    0x712c5  7      
  movl $0x0, 0x218(%rsp)                 #  80    0x712cc  11     
  movq %rax, 0x70(%rsp)                  #  81    0x712d7  5      
  movl %eax, 0x210(%rsp)                 #  82    0x712dc  7      
  xorl %eax, %eax                        #  83    0x712e3  2      
  movq %rax, 0x128(%rsp)                 #  84    0x712e5  8      
  movq %rcx, 0x68(%rsp)                  #  85    0x712ed  5      
  movl 0x68(%rsp), %eax                  #  86    0x712f2  4      
  movl $0x0, 0x214(%rsp)                 #  87    0x712f6  11     
  nop                                    #  88    0x71301  1      
  movl $0x0, 0x10c(%rsp)                 #  89    0x71302  11     
  movq $0x0, 0x138(%rsp)                 #  90    0x7130d  12     
  nop                                    #  91    0x71319  1      
  movl $0x0, 0x134(%rsp)                 #  92    0x7131a  11     
  movq $0x0, 0xe8(%rsp)                  #  93    0x71325  12     
  addl $0x64, %eax                       #  94    0x71331  3      
  nop                                    #  95    0x71334  1      
  movl $0x0, 0x130(%rsp)                 #  96    0x71335  11     
  movq $0x0, 0x140(%rsp)                 #  97    0x71340  12     
  movl %eax, %eax                        #  98    0x7134c  2      
  nop                                    #  99    0x7134e  1      
  movl $0x0, 0xd0(%rsp)                  #  100   0x7134f  11     
  movq %rdx, 0x60(%rsp)                  #  101   0x7135a  5      
  movl %eax, %esi                        #  102   0x7135f  2      
  movq %rax, 0x100(%rsp)                 #  103   0x71361  8      
  nop                                    #  104   0x71369  1      
  leal 0x290(%rsp), %eax                 #  105   0x7136a  7      
  subl $0x1, %esi                        #  106   0x71371  3      
  subl $0x69, %eax                       #  107   0x71374  3      
  movq %rsi, 0x148(%rsp)                 #  108   0x71377  8      
  movq %rax, 0x158(%rsp)                 #  109   0x7137f  8      
  nop                                    #  110   0x71387  1      
.L_71400:                                #        0x71388  0      
  movq 0xa8(%rsp), %r12                  #  111   0x71388  8      
  movq %rbx, %r13                        #  112   0x71390  3      
  jmpq .L_71460                          #  113   0x71393  5      
  nop                                    #  114   0x71398  1      
  nop                                    #  115   0x71399  1      
.L_71420:                                #        0x7139a  0      
  cmpl $0x25, 0x278(%rsp)                #  116   0x7139a  8      
  je .L_71520                            #  117   0x713a2  6      
  nop                                    #  118   0x713a8  1      
  nop                                    #  119   0x713a9  1      
.L_71440:                                #        0x713aa  0      
  leal (%rax,%r12,1), %r12d              #  120   0x713aa  4      
  nop                                    #  121   0x713ae  1      
  nop                                    #  122   0x713af  1      
.L_71460:                                #        0x713b0  0      
  movl 0xffbf80a(%rip), %ebx             #  123   0x713b0  6      
  nop                                    #  124   0x713b6  1      
  nop                                    #  125   0x713b7  1      
  callq .__locale_charset                #  126   0x713b8  5      
  movl %eax, %r8d                        #  127   0x713bd  3      
  movq %r8, 0x80(%rsp)                   #  128   0x713c0  8      
  nop                                    #  129   0x713c8  1      
  nop                                    #  130   0x713c9  1      
  callq .__locale_mb_cur_max             #  131   0x713ca  5      
  movl 0x78(%rsp), %r9d                  #  132   0x713cf  5      
  movl %eax, %ecx                        #  133   0x713d4  2      
  movq 0x80(%rsp), %r8                   #  134   0x713d6  8      
  movl %r12d, %edx                       #  135   0x713de  3      
  movl 0x60(%rsp), %esi                  #  136   0x713e1  4      
  movl %r14d, %edi                       #  137   0x713e5  3      
  nop                                    #  138   0x713e8  1      
  nop                                    #  139   0x713e9  1      
  nop                                    #  140   0x713ea  1      
  andl $0xffffffe0, %ebx                 #  141   0x713eb  6      
  addq %r15, %rbx                        #  142   0x713f1  3      
  callq %rbx                             #  143   0x713f4  2      
  cmpl $0x0, %eax                        #  144   0x713f6  3      
  je .L_71520                            #  145   0x713f9  6      
  jge .L_71420                           #  146   0x713ff  6      
  movl 0x78(%rsp), %edi                  #  147   0x71405  4      
  movl $0x8, %edx                        #  148   0x71409  5      
  xorl %esi, %esi                        #  149   0x7140e  2      
  nop                                    #  150   0x71410  1      
  callq .memset                          #  151   0x71411  5      
  movl $0x1, %eax                        #  152   0x71416  5      
  jmpq .L_71440                          #  153   0x7141b  5      
  nop                                    #  154   0x71420  1      
  nop                                    #  155   0x71421  1      
.L_71520:                                #        0x71422  0      
  movl %r12d, %ecx                       #  156   0x71422  3      
  subl 0xa8(%rsp), %ecx                  #  157   0x71425  7      
  movq %r13, %rbx                        #  158   0x7142c  3      
  movl %eax, %r13d                       #  159   0x7142f  3      
  je .L_715a0                            #  160   0x71432  6      
  movl %ebx, %ebx                        #  161   0x71438  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  162   0x7143a  5      
  movl 0x214(%rsp), %eax                 #  163   0x7143f  7      
  movl 0xa8(%rsp), %edx                  #  164   0x71446  7      
  addl %ecx, 0x218(%rsp)                 #  165   0x7144d  7      
  addl $0x1, %eax                        #  166   0x71454  3      
  cmpl $0x7, %eax                        #  167   0x71457  3      
  movl %ebx, %ebx                        #  168   0x7145a  2      
  movl %edx, (%r15,%rbx,1)               #  169   0x7145c  4      
  nop                                    #  170   0x71460  1      
  movl %eax, 0x214(%rsp)                 #  171   0x71461  7      
  jg .L_71f60                            #  172   0x71468  6      
  addl $0x8, %ebx                        #  173   0x7146e  3      
  nop                                    #  174   0x71471  1      
  nop                                    #  175   0x71472  1      
.L_71580:                                #        0x71473  0      
  addl %ecx, 0xd0(%rsp)                  #  176   0x71473  7      
  nop                                    #  177   0x7147a  1      
  nop                                    #  178   0x7147b  1      
.L_715a0:                                #        0x7147c  0      
  testl %r13d, %r13d                     #  179   0x7147c  3      
  je .L_753c0                            #  180   0x7147f  6      
  addl $0x1, %r12d                       #  181   0x71485  4      
  movl $0xffffffff, %r10d                #  182   0x71489  6      
  movb $0x0, 0x28f(%rsp)                 #  183   0x7148f  8      
  xorl %r13d, %r13d                      #  184   0x71497  3      
  xchgw %ax, %ax                         #  185   0x7149a  3      
  movl %r12d, %r12d                      #  186   0x7149d  3      
  movzbl (%r15,%r12,1), %eax             #  187   0x714a0  5      
  movl %r10d, %edx                       #  188   0x714a5  3      
  movl $0x0, 0xd4(%rsp)                  #  189   0x714a8  11     
  nop                                    #  190   0x714b3  1      
.L_715e0:                                #        0x714b4  0      
  movsbl %al, %eax                       #  191   0x714b4  3      
  addl $0x1, %r12d                       #  192   0x714b7  4      
  nop                                    #  193   0x714bb  1      
  nop                                    #  194   0x714bc  1      
.L_71600:                                #        0x714bd  0      
  leal -0x20(%rax), %ecx                 #  195   0x714bd  3      
  cmpl $0x5a, %ecx                       #  196   0x714c0  3      
  jbe .L_71d60                           #  197   0x714c3  6      
  nop                                    #  198   0x714c9  1      
  nop                                    #  199   0x714ca  1      
  testl %eax, %eax                       #  200   0x714cb  2      
  movl %eax, 0xf8(%rsp)                  #  201   0x714cd  7      
  je .L_753c0                            #  202   0x714d4  6      
  leal 0x160(%rsp), %edx                 #  203   0x714da  7      
  movb %al, 0x160(%rsp)                  #  204   0x714e1  7      
  nop                                    #  205   0x714e8  1      
  movb $0x0, 0x28f(%rsp)                 #  206   0x714e9  8      
  xorl %eax, %eax                        #  207   0x714f1  2      
  movl $0x1, 0xb0(%rsp)                  #  208   0x714f3  11     
  nop                                    #  209   0x714fe  1      
  movq $0x0, 0xe0(%rsp)                  #  210   0x714ff  12     
  movq %rdx, 0xa8(%rsp)                  #  211   0x7150b  8      
  movl $0x1, 0xc4(%rsp)                  #  212   0x71513  11     
  nop                                    #  213   0x7151e  1      
  movl $0x0, 0xfc(%rsp)                  #  214   0x7151f  11     
  movl $0x0, 0x108(%rsp)                 #  215   0x7152a  11     
  nop                                    #  216   0x71535  1      
  movl $0x0, 0x120(%rsp)                 #  217   0x71536  11     
  movl $0x0, 0x11c(%rsp)                 #  218   0x71541  11     
  nop                                    #  219   0x7154c  1      
.L_716c0:                                #        0x7154d  0      
  movl 0xb0(%rsp), %edx                  #  220   0x7154d  7      
  movl %r13d, %ecx                       #  221   0x71554  3      
  movl %r13d, %esi                       #  222   0x71557  3      
  addl $0x2, %edx                        #  223   0x7155a  3      
  andl $0x2, %ecx                        #  224   0x7155d  3      
  cmovel 0xb0(%rsp), %edx                #  225   0x71560  8      
  nop                                    #  226   0x71568  1      
  andl $0x84, %esi                       #  227   0x71569  3      
  movl %ecx, 0xd8(%rsp)                  #  228   0x7156c  7      
  movl %esi, 0xf4(%rsp)                  #  229   0x71573  7      
  movl %edx, 0xb0(%rsp)                  #  230   0x7157a  7      
  nop                                    #  231   0x71581  1      
  jne .L_71860                           #  232   0x71582  6      
  movl 0xd4(%rsp), %ecx                  #  233   0x71588  7      
  subl %edx, %ecx                        #  234   0x7158f  2      
  testl %ecx, %ecx                       #  235   0x71591  2      
  jle .L_71860                           #  236   0x71593  6      
  cmpl $0x10, %ecx                       #  237   0x71599  3      
  jle .L_71820                           #  238   0x7159c  6      
  leal 0x210(%rsp), %eax                 #  239   0x715a2  7      
  movl %r13d, 0x154(%rsp)                #  240   0x715a9  8      
  movq %r12, %r13                        #  241   0x715b1  3      
  movq 0xb8(%rsp), %r12                  #  242   0x715b4  8      
  movq %rax, 0x50(%rsp)                  #  243   0x715bc  5      
  nop                                    #  244   0x715c1  1      
  movq %rbx, %rax                        #  245   0x715c2  3      
  movl %ecx, %ebx                        #  246   0x715c5  2      
  jmpq .L_71780                          #  247   0x715c7  5      
  nop                                    #  248   0x715cc  1      
  nop                                    #  249   0x715cd  1      
.L_71760:                                #        0x715ce  0      
  subl $0x10, %ebx                       #  250   0x715ce  3      
  addl $0x8, %eax                        #  251   0x715d1  3      
  cmpl $0x10, %ebx                       #  252   0x715d4  3      
  jle .L_71800                           #  253   0x715d7  6      
  xchgw %ax, %ax                         #  254   0x715dd  3      
  nop                                    #  255   0x715e0  1      
.L_71780:                                #        0x715e1  0      
  movl %eax, %eax                        #  256   0x715e1  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  257   0x715e3  9      
  movl 0x214(%rsp), %edx                 #  258   0x715ec  7      
  addl $0x10, 0x218(%rsp)                #  259   0x715f3  8      
  nop                                    #  260   0x715fb  1      
  movl %eax, %eax                        #  261   0x715fc  2      
  movl $0x10024240, (%r15,%rax,1)        #  262   0x715fe  8      
  addl $0x1, %edx                        #  263   0x71606  3      
  cmpl $0x7, %edx                        #  264   0x71609  3      
  movl %edx, 0x214(%rsp)                 #  265   0x7160c  7      
  jle .L_71760                           #  266   0x71613  6      
  movl 0x50(%rsp), %edx                  #  267   0x71619  4      
  movl %r12d, %esi                       #  268   0x7161d  3      
  movl %r14d, %edi                       #  269   0x71620  3      
  nop                                    #  270   0x71623  1      
  nop                                    #  271   0x71624  1      
  callq .__sprint_r                      #  272   0x71625  5      
  testl %eax, %eax                       #  273   0x7162a  2      
  jne .L_72c80                           #  274   0x7162c  6      
  subl $0x10, %ebx                       #  275   0x71632  3      
  leal 0x1d0(%rsp), %eax                 #  276   0x71635  7      
  cmpl $0x10, %ebx                       #  277   0x7163c  3      
  jg .L_71780                            #  278   0x7163f  6      
  nop                                    #  279   0x71645  1      
.L_71800:                                #        0x71646  0      
  movq %r13, %r12                        #  280   0x71646  3      
  movl 0x154(%rsp), %r13d                #  281   0x71649  8      
  movl %ebx, %ecx                        #  282   0x71651  2      
  movq %rax, %rbx                        #  283   0x71653  3      
  nop                                    #  284   0x71656  1      
  nop                                    #  285   0x71657  1      
.L_71820:                                #        0x71658  0      
  movl %ebx, %ebx                        #  286   0x71658  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  287   0x7165a  5      
  movl 0x214(%rsp), %eax                 #  288   0x7165f  7      
  addl %ecx, 0x218(%rsp)                 #  289   0x71666  7      
  movl %ebx, %ebx                        #  290   0x7166d  2      
  movl $0x10024240, (%r15,%rbx,1)        #  291   0x7166f  8      
  nop                                    #  292   0x71677  1      
  addl $0x1, %eax                        #  293   0x71678  3      
  cmpl $0x7, %eax                        #  294   0x7167b  3      
  movl %eax, 0x214(%rsp)                 #  295   0x7167e  7      
  jg .L_73700                            #  296   0x71685  6      
  movzbl 0x28f(%rsp), %eax               #  297   0x7168b  8      
  addl $0x8, %ebx                        #  298   0x71693  3      
  xchgw %ax, %ax                         #  299   0x71696  3      
.L_71860:                                #        0x71699  0      
  testb %al, %al                         #  300   0x71699  2      
  je .L_718c0                            #  301   0x7169b  6      
  leal 0x28f(%rsp), %eax                 #  302   0x716a1  7      
  movl %ebx, %ebx                        #  303   0x716a8  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  304   0x716aa  9      
  addl $0x1, 0x218(%rsp)                 #  305   0x716b3  8      
  xchgw %ax, %ax                         #  306   0x716bb  3      
  movl %ebx, %ebx                        #  307   0x716be  2      
  movl %eax, (%r15,%rbx,1)               #  308   0x716c0  4      
  movl 0x214(%rsp), %eax                 #  309   0x716c4  7      
  addl $0x1, %eax                        #  310   0x716cb  3      
  cmpl $0x7, %eax                        #  311   0x716ce  3      
  movl %eax, 0x214(%rsp)                 #  312   0x716d1  7      
  jg .L_733a0                            #  313   0x716d8  6      
  addl $0x8, %ebx                        #  314   0x716de  3      
  nop                                    #  315   0x716e1  1      
  nop                                    #  316   0x716e2  1      
.L_718c0:                                #        0x716e3  0      
  movl 0xd8(%rsp), %r9d                  #  317   0x716e3  8      
  testl %r9d, %r9d                       #  318   0x716eb  3      
  je .L_71920                            #  319   0x716ee  6      
  leal 0x280(%rsp), %eax                 #  320   0x716f4  7      
  movl %ebx, %ebx                        #  321   0x716fb  2      
  movl $0x2, 0x4(%r15,%rbx,1)            #  322   0x716fd  9      
  nop                                    #  323   0x71706  1      
  addl $0x2, 0x218(%rsp)                 #  324   0x71707  8      
  movl %ebx, %ebx                        #  325   0x7170f  2      
  movl %eax, (%r15,%rbx,1)               #  326   0x71711  4      
  movl 0x214(%rsp), %eax                 #  327   0x71715  7      
  addl $0x1, %eax                        #  328   0x7171c  3      
  cmpl $0x7, %eax                        #  329   0x7171f  3      
  nop                                    #  330   0x71722  1      
  movl %eax, 0x214(%rsp)                 #  331   0x71723  7      
  jg .L_733e0                            #  332   0x7172a  6      
  addl $0x8, %ebx                        #  333   0x71730  3      
  nop                                    #  334   0x71733  1      
  nop                                    #  335   0x71734  1      
.L_71920:                                #        0x71735  0      
  cmpl $0x80, 0xf4(%rsp)                 #  336   0x71735  8      
  je .L_72fc0                            #  337   0x7173d  6      
  nop                                    #  338   0x71743  1      
.L_71940:                                #        0x71744  0      
  movl 0xfc(%rsp), %ecx                  #  339   0x71744  7      
  subl 0xc4(%rsp), %ecx                  #  340   0x7174b  7      
  testl %ecx, %ecx                       #  341   0x71752  2      
  jle .L_71aa0                           #  342   0x71754  6      
  cmpl $0x10, %ecx                       #  343   0x7175a  3      
  jle .L_71a60                           #  344   0x7175d  6      
  nop                                    #  345   0x71763  1      
  leal 0x210(%rsp), %esi                 #  346   0x71764  7      
  movq %rbx, %rax                        #  347   0x7176b  3      
  movl %r13d, 0xd8(%rsp)                 #  348   0x7176e  8      
  movl %ecx, %ebx                        #  349   0x71776  2      
  movq %r12, %r13                        #  350   0x71778  3      
  movq 0xb8(%rsp), %r12                  #  351   0x7177b  8      
  nop                                    #  352   0x71783  1      
  movq %rsi, 0x40(%rsp)                  #  353   0x71784  5      
  jmpq .L_719c0                          #  354   0x71789  5      
  nop                                    #  355   0x7178e  1      
  nop                                    #  356   0x7178f  1      
.L_719a0:                                #        0x71790  0      
  subl $0x10, %ebx                       #  357   0x71790  3      
  addl $0x8, %eax                        #  358   0x71793  3      
  cmpl $0x10, %ebx                       #  359   0x71796  3      
  jle .L_71a40                           #  360   0x71799  6      
  xchgw %ax, %ax                         #  361   0x7179f  3      
  nop                                    #  362   0x717a2  1      
.L_719c0:                                #        0x717a3  0      
  movl %eax, %eax                        #  363   0x717a3  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  364   0x717a5  9      
  movl 0x214(%rsp), %edx                 #  365   0x717ae  7      
  addl $0x10, 0x218(%rsp)                #  366   0x717b5  8      
  nop                                    #  367   0x717bd  1      
  movl %eax, %eax                        #  368   0x717be  2      
  movl $0x10024230, (%r15,%rax,1)        #  369   0x717c0  8      
  addl $0x1, %edx                        #  370   0x717c8  3      
  cmpl $0x7, %edx                        #  371   0x717cb  3      
  movl %edx, 0x214(%rsp)                 #  372   0x717ce  7      
  jle .L_719a0                           #  373   0x717d5  6      
  movl 0x40(%rsp), %edx                  #  374   0x717db  4      
  movl %r12d, %esi                       #  375   0x717df  3      
  movl %r14d, %edi                       #  376   0x717e2  3      
  nop                                    #  377   0x717e5  1      
  nop                                    #  378   0x717e6  1      
  callq .__sprint_r                      #  379   0x717e7  5      
  testl %eax, %eax                       #  380   0x717ec  2      
  jne .L_72c80                           #  381   0x717ee  6      
  subl $0x10, %ebx                       #  382   0x717f4  3      
  leal 0x1d0(%rsp), %eax                 #  383   0x717f7  7      
  cmpl $0x10, %ebx                       #  384   0x717fe  3      
  jg .L_719c0                            #  385   0x71801  6      
  nop                                    #  386   0x71807  1      
.L_71a40:                                #        0x71808  0      
  movq %r13, %r12                        #  387   0x71808  3      
  movl 0xd8(%rsp), %r13d                 #  388   0x7180b  8      
  movl %ebx, %ecx                        #  389   0x71813  2      
  movq %rax, %rbx                        #  390   0x71815  3      
  nop                                    #  391   0x71818  1      
  nop                                    #  392   0x71819  1      
.L_71a60:                                #        0x7181a  0      
  movl %ebx, %ebx                        #  393   0x7181a  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  394   0x7181c  5      
  movl 0x214(%rsp), %eax                 #  395   0x71821  7      
  addl %ecx, 0x218(%rsp)                 #  396   0x71828  7      
  movl %ebx, %ebx                        #  397   0x7182f  2      
  movl $0x10024230, (%r15,%rbx,1)        #  398   0x71831  8      
  nop                                    #  399   0x71839  1      
  addl $0x1, %eax                        #  400   0x7183a  3      
  cmpl $0x7, %eax                        #  401   0x7183d  3      
  movl %eax, 0x214(%rsp)                 #  402   0x71840  7      
  jg .L_73360                            #  403   0x71847  6      
  addl $0x8, %ebx                        #  404   0x7184d  3      
  nop                                    #  405   0x71850  1      
.L_71aa0:                                #        0x71851  0      
  testl $0x100, %r13d                    #  406   0x71851  7      
  jne .L_72d20                           #  407   0x71858  6      
  movl 0xc4(%rsp), %edx                  #  408   0x7185e  7      
  movl 0xa8(%rsp), %eax                  #  409   0x71865  7      
  nop                                    #  410   0x7186c  1      
  movl %ebx, %ebx                        #  411   0x7186d  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  412   0x7186f  5      
  addl %edx, 0x218(%rsp)                 #  413   0x71874  7      
  movl %ebx, %ebx                        #  414   0x7187b  2      
  movl %eax, (%r15,%rbx,1)               #  415   0x7187d  4      
  nop                                    #  416   0x71881  1      
.L_71ae0:                                #        0x71882  0      
  movl 0x214(%rsp), %eax                 #  417   0x71882  7      
  addl $0x1, %eax                        #  418   0x71889  3      
  cmpl $0x7, %eax                        #  419   0x7188c  3      
  movl %eax, 0x214(%rsp)                 #  420   0x7188f  7      
  jg .L_732e0                            #  421   0x71896  6      
  addl $0x8, %ebx                        #  422   0x7189c  3      
  nop                                    #  423   0x7189f  1      
.L_71b00:                                #        0x718a0  0      
  andl $0x4, %r13d                       #  424   0x718a0  4      
  je .L_71ca0                            #  425   0x718a4  6      
  movl 0xd4(%rsp), %r13d                 #  426   0x718aa  8      
  subl 0xb0(%rsp), %r13d                 #  427   0x718b2  8      
  testl %r13d, %r13d                     #  428   0x718ba  3      
  nop                                    #  429   0x718bd  1      
  jle .L_71ca0                           #  430   0x718be  6      
  cmpl $0x10, %r13d                      #  431   0x718c4  4      
  jle .L_71c20                           #  432   0x718c8  6      
  leal 0x210(%rsp), %ecx                 #  433   0x718ce  7      
  movq %rbx, %rax                        #  434   0x718d5  3      
  nop                                    #  435   0x718d8  1      
  movq 0xb8(%rsp), %rbx                  #  436   0x718d9  8      
  movq %rcx, 0x8(%rsp)                   #  437   0x718e1  5      
  jmpq .L_71b80                          #  438   0x718e6  5      
  xchgw %ax, %ax                         #  439   0x718eb  3      
  nop                                    #  440   0x718ee  1      
.L_71b60:                                #        0x718ef  0      
  subl $0x10, %r13d                      #  441   0x718ef  4      
  addl $0x8, %eax                        #  442   0x718f3  3      
  cmpl $0x10, %r13d                      #  443   0x718f6  4      
  jle .L_71c00                           #  444   0x718fa  6      
  nop                                    #  445   0x71900  1      
.L_71b80:                                #        0x71901  0      
  movl %eax, %eax                        #  446   0x71901  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  447   0x71903  9      
  movl 0x214(%rsp), %edx                 #  448   0x7190c  7      
  addl $0x10, 0x218(%rsp)                #  449   0x71913  8      
  nop                                    #  450   0x7191b  1      
  movl %eax, %eax                        #  451   0x7191c  2      
  movl $0x10024240, (%r15,%rax,1)        #  452   0x7191e  8      
  addl $0x1, %edx                        #  453   0x71926  3      
  cmpl $0x7, %edx                        #  454   0x71929  3      
  movl %edx, 0x214(%rsp)                 #  455   0x7192c  7      
  jle .L_71b60                           #  456   0x71933  6      
  movl 0x8(%rsp), %edx                   #  457   0x71939  4      
  movl %ebx, %esi                        #  458   0x7193d  2      
  nop                                    #  459   0x7193f  1      
  movl %r14d, %edi                       #  460   0x71940  3      
  nop                                    #  461   0x71943  1      
  nop                                    #  462   0x71944  1      
  callq .__sprint_r                      #  463   0x71945  5      
  testl %eax, %eax                       #  464   0x7194a  2      
  jne .L_72c80                           #  465   0x7194c  6      
  subl $0x10, %r13d                      #  466   0x71952  4      
  leal 0x1d0(%rsp), %eax                 #  467   0x71956  7      
  cmpl $0x10, %r13d                      #  468   0x7195d  4      
  jg .L_71b80                            #  469   0x71961  6      
  nop                                    #  470   0x71967  1      
.L_71c00:                                #        0x71968  0      
  movq %rax, %rbx                        #  471   0x71968  3      
  nop                                    #  472   0x7196b  1      
  nop                                    #  473   0x7196c  1      
.L_71c20:                                #        0x7196d  0      
  movl %ebx, %ebx                        #  474   0x7196d  2      
  movl %r13d, 0x4(%r15,%rbx,1)           #  475   0x7196f  5      
  movl 0x214(%rsp), %eax                 #  476   0x71974  7      
  addl 0x218(%rsp), %r13d                #  477   0x7197b  8      
  movl %ebx, %ebx                        #  478   0x71983  2      
  movl $0x10024240, (%r15,%rbx,1)        #  479   0x71985  8      
  addl $0x1, %eax                        #  480   0x7198d  3      
  cmpl $0x7, %eax                        #  481   0x71990  3      
  movl %eax, 0x214(%rsp)                 #  482   0x71993  7      
  movl %r13d, 0x218(%rsp)                #  483   0x7199a  8      
  jle .L_71cc0                           #  484   0x719a2  6      
  movl 0xb8(%rsp), %esi                  #  485   0x719a8  7      
  xchgw %ax, %ax                         #  486   0x719af  3      
  leal 0x210(%rsp), %edx                 #  487   0x719b2  7      
  movl %r14d, %edi                       #  488   0x719b9  3      
  xchgw %ax, %ax                         #  489   0x719bc  3      
  nop                                    #  490   0x719bf  1      
  callq .__sprint_r                      #  491   0x719c0  5      
  testl %eax, %eax                       #  492   0x719c5  2      
  jne .L_72c80                           #  493   0x719c7  6      
  nop                                    #  494   0x719cd  1      
  nop                                    #  495   0x719ce  1      
.L_71ca0:                                #        0x719cf  0      
  movl 0x218(%rsp), %r13d                #  496   0x719cf  8      
  nop                                    #  497   0x719d7  1      
  nop                                    #  498   0x719d8  1      
.L_71cc0:                                #        0x719d9  0      
  movl 0xd4(%rsp), %ebx                  #  499   0x719d9  7      
  cmpl %ebx, 0xb0(%rsp)                  #  500   0x719e0  7      
  movl %ebx, %eax                        #  501   0x719e7  2      
  cmovgel 0xb0(%rsp), %eax               #  502   0x719e9  8      
  addl %eax, 0xd0(%rsp)                  #  503   0x719f1  7      
  nop                                    #  504   0x719f8  1      
  testl %r13d, %r13d                     #  505   0x719f9  3      
  jne .L_73320                           #  506   0x719fc  6      
  nop                                    #  507   0x71a02  1      
  nop                                    #  508   0x71a03  1      
.L_71d00:                                #        0x71a04  0      
  cmpq $0x0, 0xe0(%rsp)                  #  509   0x71a04  9      
  movl $0x0, 0x214(%rsp)                 #  510   0x71a0d  11     
  leal 0x1d0(%rsp), %ebx                 #  511   0x71a18  7      
  nop                                    #  512   0x71a1f  1      
  je .L_71d40                            #  513   0x71a20  6      
  movl 0xe0(%rsp), %esi                  #  514   0x71a26  7      
  leal 0x1d0(%rsp), %ebx                 #  515   0x71a2d  7      
  movl %r14d, %edi                       #  516   0x71a34  3      
  nop                                    #  517   0x71a37  1      
  callq ._free_r                         #  518   0x71a38  5      
.L_71d40:                                #        0x71a3d  0      
  movq %r12, 0xa8(%rsp)                  #  519   0x71a3d  8      
  jmpq .L_71400                          #  520   0x71a45  5      
  nop                                    #  521   0x71a4a  1      
  nop                                    #  522   0x71a4b  1      
.L_71d60:                                #        0x71a4c  0      
  movl %ecx, %ecx                        #  523   0x71a4c  2      
  movl %ecx, %ecx                        #  524   0x71a4e  2      
  movq 0x10023f50(%r15,%rcx,8), %rcx     #  525   0x71a50  8      
  andl $0xffffffe0, %ecx                 #  526   0x71a58  6      
  addq %r15, %rcx                        #  527   0x71a5e  3      
  jmpq %rcx                              #  528   0x71a61  2      
  nop                                    #  529   0x71a63  1      
  orl $0x20, %r13d                       #  530   0x71a64  4      
  movl %r12d, %r12d                      #  531   0x71a68  3      
  movzbl (%r15,%r12,1), %eax             #  532   0x71a6b  5      
  jmpq .L_715e0                          #  533   0x71a70  5      
  nop                                    #  534   0x71a75  1      
  movq 0xc8(%rsp), %rsi                  #  535   0x71a76  8      
  movl %esi, %esi                        #  536   0x71a7e  2      
  movl (%r15,%rsi,1), %eax               #  537   0x71a80  4      
  cmpl $0x2f, %eax                       #  538   0x71a84  3      
  ja .L_74620                            #  539   0x71a87  6      
  movl %esi, %esi                        #  540   0x71a8d  2      
  movl 0xc(%r15,%rsi,1), %ecx            #  541   0x71a8f  5      
  addl %eax, %ecx                        #  542   0x71a94  2      
  addl $0x8, %eax                        #  543   0x71a96  3      
  movl %esi, %esi                        #  544   0x71a99  2      
  movl %eax, (%r15,%rsi,1)               #  545   0x71a9b  4      
  nop                                    #  546   0x71a9f  1      
  nop                                    #  547   0x71aa0  1      
.L_71de0:                                #        0x71aa1  0      
  movl %ecx, %ecx                        #  548   0x71aa1  2      
  movl (%r15,%rcx,1), %ecx               #  549   0x71aa3  4      
  testl %ecx, %ecx                       #  550   0x71aa7  2      
  movl %ecx, 0xd4(%rsp)                  #  551   0x71aa9  7      
  js .L_72020                            #  552   0x71ab0  6      
  nop                                    #  553   0x71ab6  1      
.L_71e00:                                #        0x71ab7  0      
  movl %r12d, %r12d                      #  554   0x71ab7  3      
  movzbl (%r15,%r12,1), %eax             #  555   0x71aba  5      
  jmpq .L_715e0                          #  556   0x71abf  5      
  nop                                    #  557   0x71ac4  1      
  nop                                    #  558   0x71ac5  1      
.L_71e20:                                #        0x71ac6  0      
  movl 0xb8(%rsp), %esi                  #  559   0x71ac6  7      
  movl %r14d, %edi                       #  560   0x71acd  3      
  xchgw %ax, %ax                         #  561   0x71ad0  3      
  nop                                    #  562   0x71ad3  1      
  callq .__swsetup_r                     #  563   0x71ad4  5      
  testl %eax, %eax                       #  564   0x71ad9  2      
  jne .L_75f60                           #  565   0x71adb  6      
  movq 0xb8(%rsp), %rcx                  #  566   0x71ae1  8      
  movl %ecx, %ecx                        #  567   0x71ae9  2      
  movswl 0xc(%r15,%rcx,1), %eax          #  568   0x71aeb  6      
  movl %eax, %edx                        #  569   0x71af1  2      
  andl $0x1a, %edx                       #  570   0x71af3  3      
  cmpl $0xa, %edx                        #  571   0x71af6  3      
  jne .L_71300                           #  572   0x71af9  6      
  nop                                    #  573   0x71aff  1      
  nop                                    #  574   0x71b00  1      
.L_71e80:                                #        0x71b01  0      
  movq 0xb8(%rsp), %rsi                  #  575   0x71b01  8      
  movl %esi, %esi                        #  576   0x71b09  2      
  cmpw $0x0, 0xe(%r15,%rsi,1)            #  577   0x71b0b  7      
  js .L_71300                            #  578   0x71b12  6      
  testb $0x2, %ah                        #  579   0x71b18  3      
  je .L_71fe0                            #  580   0x71b1b  6      
.L_71ea0:                                #        0x71b21  0      
  movl 0xc8(%rsp), %ecx                  #  581   0x71b21  7      
  movl 0xb8(%rsp), %esi                  #  582   0x71b28  7      
  movl %ebx, %edx                        #  583   0x71b2f  2      
  movl %r14d, %edi                       #  584   0x71b31  3      
  nop                                    #  585   0x71b34  1      
  callq .__sbprintf                      #  586   0x71b35  5      
  movl %eax, 0xd0(%rsp)                  #  587   0x71b3a  7      
  nop                                    #  588   0x71b41  1      
  nop                                    #  589   0x71b42  1      
.L_71ee0:                                #        0x71b43  0      
  movl 0xd0(%rsp), %eax                  #  590   0x71b43  7      
  addl $0x298, %esp                      #  591   0x71b4a  6      
  addq %r15, %rsp                        #  592   0x71b50  3      
  popq %rbx                              #  593   0x71b53  2      
  popq %r12                              #  594   0x71b55  3      
  popq %r13                              #  595   0x71b58  3      
  popq %r14                              #  596   0x71b5b  3      
  popq %r11                              #  597   0x71b5e  3      
  nop                                    #  598   0x71b61  1      
  andl $0xffffffe0, %r11d                #  599   0x71b62  7      
  addq %r15, %r11                        #  600   0x71b69  3      
  jmpq %r11                              #  601   0x71b6c  3      
  nop                                    #  602   0x71b6f  1      
  nop                                    #  603   0x71b70  1      
.L_71f20:                                #        0x71b71  0      
  movl 0xb8(%rsp), %edi                  #  604   0x71b71  7      
  addl $0x5c, %edi                       #  605   0x71b78  3      
  xchgw %ax, %ax                         #  606   0x71b7b  3      
  nop                                    #  607   0x71b7e  1      
  callq .__local_lock_acquire_recursive  #  608   0x71b7f  5      
  movq 0xb8(%rsp), %rsi                  #  609   0x71b84  8      
  movl %esi, %esi                        #  610   0x71b8c  2      
  movzwl 0xc(%r15,%rsi,1), %edx          #  611   0x71b8e  6      
  movswl %dx, %eax                       #  612   0x71b94  3      
  jmpq .L_71280                          #  613   0x71b97  5      
  nop                                    #  614   0x71b9c  1      
.L_71f60:                                #        0x71b9d  0      
  movl 0xb8(%rsp), %esi                  #  615   0x71b9d  7      
  leal 0x210(%rsp), %edx                 #  616   0x71ba4  7      
  movl %r14d, %edi                       #  617   0x71bab  3      
  movl %ecx, 0x90(%rsp)                  #  618   0x71bae  7      
  nop                                    #  619   0x71bb5  1      
  callq .__sprint_r                      #  620   0x71bb6  5      
  testl %eax, %eax                       #  621   0x71bbb  2      
  movl 0x90(%rsp), %ecx                  #  622   0x71bbd  7      
  jne .L_76800                           #  623   0x71bc4  6      
  leal 0x1d0(%rsp), %ebx                 #  624   0x71bca  7      
  jmpq .L_71580                          #  625   0x71bd1  5      
  nop                                    #  626   0x71bd6  1      
.L_71fa0:                                #        0x71bd7  0      
  movl %r14d, %edi                       #  627   0x71bd7  3      
  nop                                    #  628   0x71bda  1      
  nop                                    #  629   0x71bdb  1      
  callq .__sinit                         #  630   0x71bdc  5      
  jmpq .L_71260                          #  631   0x71be1  5      
  nop                                    #  632   0x71be6  1      
  nop                                    #  633   0x71be7  1      
.L_71fe0:                                #        0x71be8  0      
  movl 0xb8(%rsp), %edi                  #  634   0x71be8  7      
  addl $0x5c, %edi                       #  635   0x71bef  3      
  xchgw %ax, %ax                         #  636   0x71bf2  3      
  nop                                    #  637   0x71bf5  1      
  callq .__local_lock_release_recursive  #  638   0x71bf6  5      
  jmpq .L_71ea0                          #  639   0x71bfb  5      
  nop                                    #  640   0x71c00  1      
  nop                                    #  641   0x71c01  1      
.L_72020:                                #        0x71c02  0      
  negl 0xd4(%rsp)                        #  642   0x71c02  7      
  nop                                    #  643   0x71c09  1      
  nop                                    #  644   0x71c0a  1      
  orl $0x4, %r13d                        #  645   0x71c0b  4      
  movl %r12d, %r12d                      #  646   0x71c0f  3      
  movzbl (%r15,%r12,1), %eax             #  647   0x71c12  5      
  jmpq .L_715e0                          #  648   0x71c17  5      
  nop                                    #  649   0x71c1c  1      
  movq 0xc8(%rsp), %rdx                  #  650   0x71c1d  8      
  movl %edx, %edx                        #  651   0x71c25  2      
  movl (%r15,%rdx,1), %eax               #  652   0x71c27  4      
  cmpl $0x2f, %eax                       #  653   0x71c2b  3      
  ja .L_74600                            #  654   0x71c2e  6      
  movq %rdx, %rcx                        #  655   0x71c34  3      
  nop                                    #  656   0x71c37  1      
  movl %edx, %edx                        #  657   0x71c38  2      
  movl 0xc(%r15,%rdx,1), %edx            #  658   0x71c3a  5      
  addl %eax, %edx                        #  659   0x71c3f  2      
  addl $0x8, %eax                        #  660   0x71c41  3      
  movl %ecx, %ecx                        #  661   0x71c44  2      
  movl %eax, (%r15,%rcx,1)               #  662   0x71c46  4      
  nop                                    #  663   0x71c4a  1      
.L_720a0:                                #        0x71c4b  0      
  movl %edx, %edx                        #  664   0x71c4b  2      
  movl (%r15,%rdx,1), %ecx               #  665   0x71c4d  4      
  orl $0x2, %r13d                        #  666   0x71c51  4      
  movb $0x30, 0x280(%rsp)                #  667   0x71c55  8      
  movb $0x78, 0x281(%rsp)                #  668   0x71c5d  8      
  nop                                    #  669   0x71c65  1      
  movq $0x10023c01, 0x138(%rsp)          #  670   0x71c66  12     
  movl $0x2, %eax                        #  671   0x71c72  5      
  movl $0x78, 0xf8(%rsp)                 #  672   0x71c77  11     
  testq %rcx, %rcx                       #  673   0x71c82  3      
  nop                                    #  674   0x71c85  1      
  setne %sil                             #  675   0x71c86  4      
  nop                                    #  676   0x71c8a  1      
  nop                                    #  677   0x71c8b  1      
.L_72100:                                #        0x71c8c  0      
  movb $0x0, 0x28f(%rsp)                 #  678   0x71c8c  8      
  nop                                    #  679   0x71c94  1      
  nop                                    #  680   0x71c95  1      
.L_72120:                                #        0x71c96  0      
  movl %r13d, %edx                       #  681   0x71c96  3      
  andb $0x7f, %dl                        #  682   0x71c99  3      
  testl %r10d, %r10d                     #  683   0x71c9c  3      
  cmovnsl %edx, %r13d                    #  684   0x71c9f  4      
  testl %r10d, %r10d                     #  685   0x71ca3  3      
  jne .L_72140                           #  686   0x71ca6  6      
  testb %sil, %sil                       #  687   0x71cac  3      
  je .L_72f40                            #  688   0x71caf  6      
  nop                                    #  689   0x71cb5  1      
.L_72140:                                #        0x71cb6  0      
  cmpl $0x1, %eax                        #  690   0x71cb6  3      
  je .L_736c0                            #  691   0x71cb9  6      
  cmpl $0x2, %eax                        #  692   0x71cbf  3      
  je .L_73640                            #  693   0x71cc2  6      
  movq 0x100(%rsp), %rdx                 #  694   0x71cc8  8      
  nop                                    #  695   0x71cd0  1      
  movq %rdx, 0xa8(%rsp)                  #  696   0x71cd1  8      
  nop                                    #  697   0x71cd9  1      
  nop                                    #  698   0x71cda  1      
.L_72180:                                #        0x71cdb  0      
  movl %ecx, %eax                        #  699   0x71cdb  2      
  shrq $0x3, %rcx                        #  700   0x71cdd  4      
  subl $0x1, %edx                        #  701   0x71ce1  3      
  andl $0x7, %eax                        #  702   0x71ce4  3      
  addl $0x30, %eax                       #  703   0x71ce7  3      
  testq %rcx, %rcx                       #  704   0x71cea  3      
  movl %edx, %edx                        #  705   0x71ced  2      
  movb %al, (%r15,%rdx,1)                #  706   0x71cef  4      
  jne .L_72180                           #  707   0x71cf3  6      
  testb $0x1, %r13b                      #  708   0x71cf9  4      
  xchgw %ax, %ax                         #  709   0x71cfd  3      
  movq %rdx, 0xa8(%rsp)                  #  710   0x71d00  8      
  jne .L_744c0                           #  711   0x71d08  6      
  movl 0x100(%rsp), %ecx                 #  712   0x71d0e  7      
  movq 0xe8(%rsp), %rsi                  #  713   0x71d15  8      
  subl %edx, %ecx                        #  714   0x71d1d  2      
  nop                                    #  715   0x71d1f  1      
  movl %ecx, 0xc4(%rsp)                  #  716   0x71d20  7      
  nop                                    #  717   0x71d27  1      
  nop                                    #  718   0x71d28  1      
.L_721e0:                                #        0x71d29  0      
  cmpl %r10d, 0xc4(%rsp)                 #  719   0x71d29  8      
  movl 0xc4(%rsp), %eax                  #  720   0x71d31  7      
  movl %r10d, 0xfc(%rsp)                 #  721   0x71d38  8      
  movq %rsi, 0xe8(%rsp)                  #  722   0x71d40  8      
  nop                                    #  723   0x71d48  1      
  movq $0x0, 0xe0(%rsp)                  #  724   0x71d49  12     
  movl $0x0, 0x108(%rsp)                 #  725   0x71d55  11     
  nop                                    #  726   0x71d60  1      
  movl $0x0, 0x120(%rsp)                 #  727   0x71d61  11     
  movl $0x0, 0x11c(%rsp)                 #  728   0x71d6c  11     
  cmovll %r10d, %eax                     #  729   0x71d77  4      
  nop                                    #  730   0x71d7b  1      
  movl %eax, 0xb0(%rsp)                  #  731   0x71d7c  7      
  movzbl 0x28f(%rsp), %eax               #  732   0x71d83  8      
  xchgw %ax, %ax                         #  733   0x71d8b  3      
  nop                                    #  734   0x71d8e  1      
.L_72260:                                #        0x71d8f  0      
  testb %al, %al                         #  735   0x71d8f  2      
  je .L_716c0                            #  736   0x71d91  6      
  nop                                    #  737   0x71d97  1      
  nop                                    #  738   0x71d98  1      
.L_72280:                                #        0x71d99  0      
  addl $0x1, 0xb0(%rsp)                  #  739   0x71d99  8      
  jmpq .L_716c0                          #  740   0x71da1  5      
  nop                                    #  741   0x71da6  1      
  nop                                    #  742   0x71da7  1      
  movl %r12d, %r12d                      #  743   0x71da8  3      
  movzbl (%r15,%r12,1), %eax             #  744   0x71dab  5      
  cmpb $0x6c, %al                        #  745   0x71db0  2      
  je .L_755e0                            #  746   0x71db2  6      
  orl $0x10, %r13d                       #  747   0x71db8  4      
  jmpq .L_715e0                          #  748   0x71dbc  5      
  nop                                    #  749   0x71dc1  1      
  cmpl $0x43, %eax                       #  750   0x71dc2  3      
  movl %eax, 0xf8(%rsp)                  #  751   0x71dc5  7      
  je .L_74260                            #  752   0x71dcc  6      
  testb $0x10, %r13b                     #  753   0x71dd2  4      
  jne .L_74260                           #  754   0x71dd6  6      
  nop                                    #  755   0x71ddc  1      
  movq 0xc8(%rsp), %rcx                  #  756   0x71ddd  8      
  movl %ecx, %ecx                        #  757   0x71de5  2      
  movl (%r15,%rcx,1), %eax               #  758   0x71de7  4      
  cmpl $0x2f, %eax                       #  759   0x71deb  3      
  ja .L_75300                            #  760   0x71dee  6      
  movl %ecx, %ecx                        #  761   0x71df4  2      
  movl 0xc(%r15,%rcx,1), %edx            #  762   0x71df6  5      
  addl %eax, %edx                        #  763   0x71dfb  2      
  addl $0x8, %eax                        #  764   0x71dfd  3      
  movl %ecx, %ecx                        #  765   0x71e00  2      
  movl %eax, (%r15,%rcx,1)               #  766   0x71e02  4      
  nop                                    #  767   0x71e06  1      
  nop                                    #  768   0x71e07  1      
.L_72320:                                #        0x71e08  0      
  movl %edx, %edx                        #  769   0x71e08  2      
  movl (%r15,%rdx,1), %eax               #  770   0x71e0a  4      
  movl $0x1, 0xc4(%rsp)                  #  771   0x71e0e  11     
  movb %al, 0x160(%rsp)                  #  772   0x71e19  7      
  jmpq .L_74320                          #  773   0x71e20  5      
  nop                                    #  774   0x71e25  1      
  movl %eax, 0xf8(%rsp)                  #  775   0x71e26  7      
  orl $0x10, %r13d                       #  776   0x71e2d  4      
  nop                                    #  777   0x71e31  1      
  nop                                    #  778   0x71e32  1      
.L_72360:                                #        0x71e33  0      
  testb $0x20, %r13b                     #  779   0x71e33  4      
  je .L_737a0                            #  780   0x71e37  6      
  movq 0xc8(%rsp), %rcx                  #  781   0x71e3d  8      
  movl %ecx, %ecx                        #  782   0x71e45  2      
  movl (%r15,%rcx,1), %eax               #  783   0x71e47  4      
  cmpl $0x2f, %eax                       #  784   0x71e4b  3      
  nop                                    #  785   0x71e4e  1      
  ja .L_74540                            #  786   0x71e4f  6      
  movl %ecx, %ecx                        #  787   0x71e55  2      
  movl 0xc(%r15,%rcx,1), %edx            #  788   0x71e57  5      
  addl %eax, %edx                        #  789   0x71e5c  2      
  addl $0x8, %eax                        #  790   0x71e5e  3      
  movl %ecx, %ecx                        #  791   0x71e61  2      
  movl %eax, (%r15,%rcx,1)               #  792   0x71e63  4      
  nop                                    #  793   0x71e67  1      
.L_723a0:                                #        0x71e68  0      
  movl %edx, %edx                        #  794   0x71e68  2      
  movq (%r15,%rdx,1), %rcx               #  795   0x71e6a  4      
  nop                                    #  796   0x71e6e  1      
  nop                                    #  797   0x71e6f  1      
.L_723c0:                                #        0x71e70  0      
  cmpq $0x0, %rcx                        #  798   0x71e70  4      
  jl .L_74520                            #  799   0x71e74  6      
  setne %sil                             #  800   0x71e7a  4      
  movl $0x1, %eax                        #  801   0x71e7e  5      
  jmpq .L_72120                          #  802   0x71e83  5      
  nop                                    #  803   0x71e88  1      
  orl $0x8, %r13d                        #  804   0x71e89  4      
  movl %r12d, %r12d                      #  805   0x71e8d  3      
  movzbl (%r15,%r12,1), %eax             #  806   0x71e90  5      
  jmpq .L_715e0                          #  807   0x71e95  5      
  nop                                    #  808   0x71e9a  1      
  movq 0xc8(%rsp), %rdx                  #  809   0x71e9b  8      
  movl %eax, 0xf8(%rsp)                  #  810   0x71ea3  7      
  movl %edx, %edx                        #  811   0x71eaa  2      
  movl (%r15,%rdx,1), %eax               #  812   0x71eac  4      
  cmpl $0x2f, %eax                       #  813   0x71eb0  3      
  ja .L_747a0                            #  814   0x71eb3  6      
  xchgw %ax, %ax                         #  815   0x71eb9  3      
  movq %rdx, %rcx                        #  816   0x71ebc  3      
  movl %edx, %edx                        #  817   0x71ebf  2      
  movl 0xc(%r15,%rdx,1), %edx            #  818   0x71ec1  5      
  addl %eax, %edx                        #  819   0x71ec6  2      
  addl $0x8, %eax                        #  820   0x71ec8  3      
  movl %ecx, %ecx                        #  821   0x71ecb  2      
  movl %eax, (%r15,%rcx,1)               #  822   0x71ecd  4      
  nop                                    #  823   0x71ed1  1      
.L_72440:                                #        0x71ed2  0      
  movl %edx, %edx                        #  824   0x71ed2  2      
  movl (%r15,%rdx,1), %edx               #  825   0x71ed4  4      
  movb $0x0, 0x28f(%rsp)                 #  826   0x71ed8  8      
  testq %rdx, %rdx                       #  827   0x71ee0  3      
  movq %rdx, 0xa8(%rsp)                  #  828   0x71ee3  8      
  je .L_758c0                            #  829   0x71eeb  6      
  nop                                    #  830   0x71ef1  1      
  cmpl $0x53, 0xf8(%rsp)                 #  831   0x71ef2  8      
  je .L_74d60                            #  832   0x71efa  6      
  movl %r13d, %ecx                       #  833   0x71f00  3      
  andl $0x10, %ecx                       #  834   0x71f03  3      
  jne .L_74d60                           #  835   0x71f06  6      
  testl %r10d, %r10d                     #  836   0x71f0c  3      
  nop                                    #  837   0x71f0f  1      
  js .L_75340                            #  838   0x71f10  6      
  movl 0xa8(%rsp), %edi                  #  839   0x71f16  7      
  movl %r10d, %edx                       #  840   0x71f1d  3      
  xorl %esi, %esi                        #  841   0x71f20  2      
  movl %ecx, 0x90(%rsp)                  #  842   0x71f22  7      
  nop                                    #  843   0x71f29  1      
  movl %r10d, 0x88(%rsp)                 #  844   0x71f2a  8      
  nop                                    #  845   0x71f32  1      
  nop                                    #  846   0x71f33  1      
  callq .memchr                          #  847   0x71f34  5      
  movl %eax, %eax                        #  848   0x71f39  2      
  movl 0x90(%rsp), %ecx                  #  849   0x71f3b  7      
  movl 0x88(%rsp), %r10d                 #  850   0x71f42  8      
  testq %rax, %rax                       #  851   0x71f4a  3      
  je .L_769a0                            #  852   0x71f4d  6      
  nop                                    #  853   0x71f53  1      
  subl 0xa8(%rsp), %eax                  #  854   0x71f54  7      
  cmpl %eax, %r10d                       #  855   0x71f5b  3      
  movl %eax, 0xc4(%rsp)                  #  856   0x71f5e  7      
  jge .L_75ca0                           #  857   0x71f65  6      
  testl %r10d, %r10d                     #  858   0x71f6b  3      
  nop                                    #  859   0x71f6e  1      
  movzbl 0x28f(%rsp), %eax               #  860   0x71f6f  8      
  movl %r10d, 0xc4(%rsp)                 #  861   0x71f77  8      
  cmovnsl %r10d, %ecx                    #  862   0x71f7f  4      
  movl %ecx, 0xb0(%rsp)                  #  863   0x71f83  7      
  jmpq .L_74f00                          #  864   0x71f8a  5      
  movl %eax, 0xf8(%rsp)                  #  865   0x71f8f  7      
  orl $0x10, %r13d                       #  866   0x71f96  4      
  nop                                    #  867   0x71f9a  1      
  nop                                    #  868   0x71f9b  1      
.L_72540:                                #        0x71f9c  0      
  testb $0x20, %r13b                     #  869   0x71f9c  4      
  je .L_73740                            #  870   0x71fa0  6      
  movq 0xc8(%rsp), %rcx                  #  871   0x71fa6  8      
  movl %ecx, %ecx                        #  872   0x71fae  2      
  movl (%r15,%rcx,1), %eax               #  873   0x71fb0  4      
  cmpl $0x2f, %eax                       #  874   0x71fb4  3      
  nop                                    #  875   0x71fb7  1      
  ja .L_745e0                            #  876   0x71fb8  6      
  movl %ecx, %ecx                        #  877   0x71fbe  2      
  movl 0xc(%r15,%rcx,1), %edx            #  878   0x71fc0  5      
  addl %eax, %edx                        #  879   0x71fc5  2      
  addl $0x8, %eax                        #  880   0x71fc7  3      
  movl %ecx, %ecx                        #  881   0x71fca  2      
  movl %eax, (%r15,%rcx,1)               #  882   0x71fcc  4      
  nop                                    #  883   0x71fd0  1      
.L_72580:                                #        0x71fd1  0      
  movl %edx, %edx                        #  884   0x71fd1  2      
  movq (%r15,%rdx,1), %rcx               #  885   0x71fd3  4      
  movl $0x1, %eax                        #  886   0x71fd7  5      
  testq %rcx, %rcx                       #  887   0x71fdc  3      
  setne %sil                             #  888   0x71fdf  4      
  jmpq .L_72100                          #  889   0x71fe3  5      
  nop                                    #  890   0x71fe8  1      
  testb $0x20, %r13b                     #  891   0x71fe9  4      
  movl %eax, 0xf8(%rsp)                  #  892   0x71fed  7      
  movq $0x10023be0, 0x138(%rsp)          #  893   0x71ff4  12     
  je .L_727c0                            #  894   0x72000  6      
  nop                                    #  895   0x72006  1      
.L_725c0:                                #        0x72007  0      
  movq 0xc8(%rsp), %rdx                  #  896   0x72007  8      
  movl %edx, %edx                        #  897   0x7200f  2      
  movl (%r15,%rdx,1), %eax               #  898   0x72011  4      
  cmpl $0x2f, %eax                       #  899   0x72015  3      
  ja .L_747c0                            #  900   0x72018  6      
  movq %rdx, %rcx                        #  901   0x7201e  3      
  nop                                    #  902   0x72021  1      
  movl %edx, %edx                        #  903   0x72022  2      
  movl 0xc(%r15,%rdx,1), %edx            #  904   0x72024  5      
  addl %eax, %edx                        #  905   0x72029  2      
  addl $0x8, %eax                        #  906   0x7202b  3      
  movl %ecx, %ecx                        #  907   0x7202e  2      
  movl %eax, (%r15,%rcx,1)               #  908   0x72030  4      
  nop                                    #  909   0x72034  1      
.L_72600:                                #        0x72035  0      
  movl %edx, %edx                        #  910   0x72035  2      
  movq (%r15,%rdx,1), %rcx               #  911   0x72037  4      
  nop                                    #  912   0x7203b  1      
  nop                                    #  913   0x7203c  1      
.L_72620:                                #        0x7203d  0      
  testq %rcx, %rcx                       #  914   0x7203d  3      
  setne %sil                             #  915   0x72040  4      
  je .L_72660                            #  916   0x72044  6      
  testb $0x1, %r13b                      #  917   0x7204a  4      
  je .L_72660                            #  918   0x7204e  6      
  movzbl 0xf8(%rsp), %eax                #  919   0x72054  8      
  movb $0x30, 0x280(%rsp)                #  920   0x7205c  8      
  nop                                    #  921   0x72064  1      
  orl $0x2, %r13d                        #  922   0x72065  4      
  movb %al, 0x281(%rsp)                  #  923   0x72069  7      
  nop                                    #  924   0x72070  1      
  nop                                    #  925   0x72071  1      
.L_72660:                                #        0x72072  0      
  andl $0xfffffbff, %r13d                #  926   0x72072  7      
  movl $0x2, %eax                        #  927   0x72079  5      
  jmpq .L_72100                          #  928   0x7207e  5      
  nop                                    #  929   0x72083  1      
  movl %r12d, %r12d                      #  930   0x72084  3      
  movsbl (%r15,%r12,1), %eax             #  931   0x72087  5      
  addl $0x1, %r12d                       #  932   0x7208c  4      
  cmpl $0x2a, %eax                       #  933   0x72090  3      
  je .L_76ac0                            #  934   0x72093  6      
  leal -0x30(%rax), %esi                 #  935   0x72099  3      
  xorl %ecx, %ecx                        #  936   0x7209c  2      
  xorl %r10d, %r10d                      #  937   0x7209e  3      
  cmpl $0x9, %esi                        #  938   0x720a1  3      
  ja .L_71600                            #  939   0x720a4  6      
  nop                                    #  940   0x720aa  1      
  nop                                    #  941   0x720ab  1      
.L_726c0:                                #        0x720ac  0      
  movl %r12d, %r12d                      #  942   0x720ac  3      
  movsbl (%r15,%r12,1), %eax             #  943   0x720af  5      
  leal (%rcx,%rcx,4), %ecx               #  944   0x720b4  3      
  addl $0x1, %r12d                       #  945   0x720b7  4      
  leal (%rsi,%rcx,2), %ecx               #  946   0x720bb  3      
  leal -0x30(%rax), %esi                 #  947   0x720be  3      
  cmpl $0x9, %esi                        #  948   0x720c1  3      
  jbe .L_726c0                           #  949   0x720c4  6      
  testl %ecx, %ecx                       #  950   0x720ca  2      
  movl %edx, %r10d                       #  951   0x720cc  3      
  nop                                    #  952   0x720cf  1      
  cmovnsl %ecx, %r10d                    #  953   0x720d0  4      
  jmpq .L_71600                          #  954   0x720d4  5      
  nop                                    #  955   0x720d9  1      
  nop                                    #  956   0x720da  1      
  movl %eax, 0xf8(%rsp)                  #  957   0x720db  7      
  orl $0x10, %r13d                       #  958   0x720e2  4      
  nop                                    #  959   0x720e6  1      
  nop                                    #  960   0x720e7  1      
.L_72720:                                #        0x720e8  0      
  testb $0x20, %r13b                     #  961   0x720e8  4      
  je .L_73800                            #  962   0x720ec  6      
  movq 0xc8(%rsp), %rcx                  #  963   0x720f2  8      
  movl %ecx, %ecx                        #  964   0x720fa  2      
  movl (%r15,%rcx,1), %eax               #  965   0x720fc  4      
  cmpl $0x2f, %eax                       #  966   0x72100  3      
  nop                                    #  967   0x72103  1      
  ja .L_74700                            #  968   0x72104  6      
  movl %ecx, %ecx                        #  969   0x7210a  2      
  movl 0xc(%r15,%rcx,1), %edx            #  970   0x7210c  5      
  addl %eax, %edx                        #  971   0x72111  2      
  addl $0x8, %eax                        #  972   0x72113  3      
  movl %ecx, %ecx                        #  973   0x72116  2      
  movl %eax, (%r15,%rcx,1)               #  974   0x72118  4      
  nop                                    #  975   0x7211c  1      
.L_72760:                                #        0x7211d  0      
  movl %edx, %edx                        #  976   0x7211d  2      
  movq (%r15,%rdx,1), %rcx               #  977   0x7211f  4      
  nop                                    #  978   0x72123  1      
  nop                                    #  979   0x72124  1      
.L_72780:                                #        0x72125  0      
  andl $0xfffffbff, %r13d                #  980   0x72125  7      
  testq %rcx, %rcx                       #  981   0x7212c  3      
  setne %sil                             #  982   0x7212f  4      
  xorl %eax, %eax                        #  983   0x72133  2      
  jmpq .L_72100                          #  984   0x72135  5      
  nop                                    #  985   0x7213a  1      
  testb $0x20, %r13b                     #  986   0x7213b  4      
  movl %eax, 0xf8(%rsp)                  #  987   0x7213f  7      
  movq $0x10023c01, 0x138(%rsp)          #  988   0x72146  12     
  jne .L_725c0                           #  989   0x72152  6      
  nop                                    #  990   0x72158  1      
.L_727c0:                                #        0x72159  0      
  testb $0x10, %r13b                     #  991   0x72159  4      
  je .L_74860                            #  992   0x7215d  6      
  movq 0xc8(%rsp), %rdx                  #  993   0x72163  8      
  movl %edx, %edx                        #  994   0x7216b  2      
  movl (%r15,%rdx,1), %eax               #  995   0x7216d  4      
  cmpl $0x2f, %eax                       #  996   0x72171  3      
  nop                                    #  997   0x72174  1      
  ja .L_752a0                            #  998   0x72175  6      
  movq %rdx, %rcx                        #  999   0x7217b  3      
  movl %edx, %edx                        #  1000  0x7217e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1001  0x72180  5      
  addl %eax, %edx                        #  1002  0x72185  2      
  addl $0x8, %eax                        #  1003  0x72187  3      
  movl %ecx, %ecx                        #  1004  0x7218a  2      
  movl %eax, (%r15,%rcx,1)               #  1005  0x7218c  4      
  nop                                    #  1006  0x72190  1      
.L_72800:                                #        0x72191  0      
  movl %edx, %edx                        #  1007  0x72191  2      
  movl (%r15,%rdx,1), %ecx               #  1008  0x72193  4      
  jmpq .L_72620                          #  1009  0x72197  5      
  nop                                    #  1010  0x7219c  1      
  nop                                    #  1011  0x7219d  1      
  cmpb $0x0, 0x28f(%rsp)                 #  1012  0x7219e  8      
  jne .L_71e00                           #  1013  0x721a6  6      
  movb $0x20, 0x28f(%rsp)                #  1014  0x721ac  8      
  movl %r12d, %r12d                      #  1015  0x721b4  3      
  movzbl (%r15,%r12,1), %eax             #  1016  0x721b7  5      
  xchgw %ax, %ax                         #  1017  0x721bc  3      
  jmpq .L_715e0                          #  1018  0x721bf  5      
  nop                                    #  1019  0x721c4  1      
  nop                                    #  1020  0x721c5  1      
  movq 0xc8(%rsp), %rdx                  #  1021  0x721c6  8      
  movl %eax, 0xf8(%rsp)                  #  1022  0x721ce  7      
  movl %edx, %edx                        #  1023  0x721d5  2      
  movl 0x4(%r15,%rdx,1), %eax            #  1024  0x721d7  5      
  cmpl $0xaf, %eax                       #  1025  0x721dc  3      
  nop                                    #  1026  0x721df  1      
  ja .L_74ce0                            #  1027  0x721e0  6      
  movq %rdx, %rcx                        #  1028  0x721e6  3      
  movl %edx, %edx                        #  1029  0x721e9  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1030  0x721eb  5      
  addl %eax, %edx                        #  1031  0x721f0  2      
  addl $0x10, %eax                       #  1032  0x721f2  3      
  movl %ecx, %ecx                        #  1033  0x721f5  2      
  movl %eax, 0x4(%r15,%rcx,1)            #  1034  0x721f7  5      
  nop                                    #  1035  0x721fc  1      
.L_728a0:                                #        0x721fd  0      
  movl %edx, %edx                        #  1036  0x721fd  2      
  movsd (%r15,%rdx,1), %xmm0             #  1037  0x721ff  6      
  movl %r10d, 0x88(%rsp)                 #  1038  0x72205  8      
  movsd %xmm0, 0x128(%rsp)               #  1039  0x7220d  9      
  nop                                    #  1040  0x72216  1      
  movsd %xmm0, 0xb0(%rsp)                #  1041  0x72217  9      
  movsd 0x128(%rsp), %xmm0               #  1042  0x72220  9      
  nop                                    #  1043  0x72229  1      
  callq .__fpclassifyd                   #  1044  0x7222a  5      
  cmpl $0x1, %eax                        #  1045  0x7222f  3      
  movl 0x88(%rsp), %r10d                 #  1046  0x72232  8      
  jne .L_748e0                           #  1047  0x7223a  6      
  movsd 0x128(%rsp), %xmm1               #  1048  0x72240  9      
  nop                                    #  1049  0x72249  1      
  ucomisd 0xffb1cce(%rip), %xmm1         #  1050  0x7224a  8      
  jb .L_752e0                            #  1051  0x72252  6      
  nop                                    #  1052  0x72258  1      
  nop                                    #  1053  0x72259  1      
.L_72920:                                #        0x7225a  0      
  cmpl $0x47, 0xf8(%rsp)                 #  1054  0x7225a  8      
  movq $0x10023bf1, 0xa8(%rsp)           #  1055  0x72262  12     
  movl $0x10023bf5, %eax                 #  1056  0x7226e  5      
  nop                                    #  1057  0x72273  1      
.L_72940:                                #        0x72274  0      
  cmovleq 0xa8(%rsp), %rax               #  1058  0x72274  9      
  movl $0x3, 0xb0(%rsp)                  #  1059  0x7227d  11     
  andb $0x7f, %r13b                      #  1060  0x72288  4      
  nop                                    #  1061  0x7228c  1      
  movq $0x0, 0xe0(%rsp)                  #  1062  0x7228d  12     
  movl $0x3, 0xc4(%rsp)                  #  1063  0x72299  11     
  nop                                    #  1064  0x722a4  1      
  movl $0x0, 0xfc(%rsp)                  #  1065  0x722a5  11     
  movl $0x0, 0x108(%rsp)                 #  1066  0x722b0  11     
  nop                                    #  1067  0x722bb  1      
  movl $0x0, 0x120(%rsp)                 #  1068  0x722bc  11     
  movl $0x0, 0x11c(%rsp)                 #  1069  0x722c7  11     
  movq %rax, 0xa8(%rsp)                  #  1070  0x722d2  8      
  xchgw %ax, %ax                         #  1071  0x722da  3      
  movzbl 0x28f(%rsp), %eax               #  1072  0x722dd  8      
  jmpq .L_72260                          #  1073  0x722e5  5      
  nop                                    #  1074  0x722ea  1      
  nop                                    #  1075  0x722eb  1      
  movl %r14d, %edi                       #  1076  0x722ec  3      
  movl %edx, 0xa0(%rsp)                  #  1077  0x722ef  7      
  movl %r10d, 0x88(%rsp)                 #  1078  0x722f6  8      
  nop                                    #  1079  0x722fe  1      
  callq ._localeconv_r                   #  1080  0x722ff  5      
  movl %eax, %eax                        #  1081  0x72304  2      
  movl %eax, %eax                        #  1082  0x72306  2      
  movl 0x4(%r15,%rax,1), %eax            #  1083  0x72308  5      
  movl %eax, %edi                        #  1084  0x7230d  2      
  movq %rax, 0x140(%rsp)                 #  1085  0x7230f  8      
  nop                                    #  1086  0x72317  1      
  callq .strlen                          #  1087  0x72318  5      
  movl %r14d, %edi                       #  1088  0x7231d  3      
  movl %eax, 0x130(%rsp)                 #  1089  0x72320  7      
  xchgw %ax, %ax                         #  1090  0x72327  3      
  nop                                    #  1091  0x7232a  1      
  callq ._localeconv_r                   #  1092  0x7232b  5      
  movl %eax, %eax                        #  1093  0x72330  2      
  movl 0x130(%rsp), %ecx                 #  1094  0x72332  7      
  movl 0xa0(%rsp), %edx                  #  1095  0x72339  7      
  movl %eax, %eax                        #  1096  0x72340  2      
  movl 0x8(%r15,%rax,1), %eax            #  1097  0x72342  5      
  movl 0x88(%rsp), %r10d                 #  1098  0x72347  8      
  nop                                    #  1099  0x7234f  1      
  testl %ecx, %ecx                       #  1100  0x72350  2      
  movq %rax, 0xe8(%rsp)                  #  1101  0x72352  8      
  je .L_71e00                            #  1102  0x7235a  6      
  testq %rax, %rax                       #  1103  0x72360  3      
  je .L_71e00                            #  1104  0x72363  6      
  nop                                    #  1105  0x72369  1      
  movq 0xe8(%rsp), %rcx                  #  1106  0x7236a  8      
  movl %ecx, %ecx                        #  1107  0x72372  2      
  cmpb $0x0, (%r15,%rcx,1)               #  1108  0x72374  5      
  je .L_71e00                            #  1109  0x72379  6      
  orl $0x400, %r13d                      #  1110  0x7237f  7      
  nop                                    #  1111  0x72386  1      
  movl %r12d, %r12d                      #  1112  0x72387  3      
  movzbl (%r15,%r12,1), %eax             #  1113  0x7238a  5      
  jmpq .L_715e0                          #  1114  0x7238f  5      
  nop                                    #  1115  0x72394  1      
  nop                                    #  1116  0x72395  1      
  movb $0x2b, 0x28f(%rsp)                #  1117  0x72396  8      
  movl %r12d, %r12d                      #  1118  0x7239e  3      
  movzbl (%r15,%r12,1), %eax             #  1119  0x723a1  5      
  jmpq .L_715e0                          #  1120  0x723a6  5      
  nop                                    #  1121  0x723ab  1      
  orb $0x80, %r13b                       #  1122  0x723ac  4      
  movl %r12d, %r12d                      #  1123  0x723b0  3      
  movzbl (%r15,%r12,1), %eax             #  1124  0x723b3  5      
  jmpq .L_715e0                          #  1125  0x723b8  5      
  nop                                    #  1126  0x723bd  1      
  xorl %ecx, %ecx                        #  1127  0x723be  2      
  nop                                    #  1128  0x723c0  1      
  nop                                    #  1129  0x723c1  1      
.L_72b20:                                #        0x723c2  0      
  leal (%rcx,%rcx,4), %ecx               #  1130  0x723c2  3      
  leal -0x30(%rax,%rcx,2), %ecx          #  1131  0x723c5  4      
  movl %r12d, %r12d                      #  1132  0x723c9  3      
  movsbl (%r15,%r12,1), %eax             #  1133  0x723cc  5      
  addl $0x1, %r12d                       #  1134  0x723d1  4      
  leal -0x30(%rax), %esi                 #  1135  0x723d5  3      
  cmpl $0x9, %esi                        #  1136  0x723d8  3      
  jbe .L_72b20                           #  1137  0x723db  6      
  nop                                    #  1138  0x723e1  1      
  movl %ecx, 0xd4(%rsp)                  #  1139  0x723e2  7      
  jmpq .L_71600                          #  1140  0x723e9  5      
  nop                                    #  1141  0x723ee  1      
  nop                                    #  1142  0x723ef  1      
  testb $0x20, %r13b                     #  1143  0x723f0  4      
  je .L_74680                            #  1144  0x723f4  6      
  movq 0xc8(%rsp), %rcx                  #  1145  0x723fa  8      
  movl %ecx, %ecx                        #  1146  0x72402  2      
  movl (%r15,%rcx,1), %eax               #  1147  0x72404  4      
  cmpl $0x2f, %eax                       #  1148  0x72408  3      
  nop                                    #  1149  0x7240b  1      
  jbe .L_75060                           #  1150  0x7240c  6      
  movq 0xc8(%rsp), %rsi                  #  1151  0x72412  8      
  movl %esi, %esi                        #  1152  0x7241a  2      
  movl 0x8(%r15,%rsi,1), %edx            #  1153  0x7241c  5      
  leal 0x8(%rdx), %eax                   #  1154  0x72421  3      
  movl %esi, %esi                        #  1155  0x72424  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  1156  0x72426  5      
  nop                                    #  1157  0x7242b  1      
.L_72ba0:                                #        0x7242c  0      
  movl %edx, %edx                        #  1158  0x7242c  2      
  movl (%r15,%rdx,1), %eax               #  1159  0x7242e  4      
  movslq 0xd0(%rsp), %rdx                #  1160  0x72432  8      
  movl %eax, %eax                        #  1161  0x7243a  2      
  movq %rdx, (%r15,%rax,1)               #  1162  0x7243c  4      
  jmpq .L_71d40                          #  1163  0x72440  5      
  nop                                    #  1164  0x72445  1      
  orl $0x1, %r13d                        #  1165  0x72446  4      
  movl %r12d, %r12d                      #  1166  0x7244a  3      
  movzbl (%r15,%r12,1), %eax             #  1167  0x7244d  5      
  jmpq .L_715e0                          #  1168  0x72452  5      
  nop                                    #  1169  0x72457  1      
  movl %r12d, %r12d                      #  1170  0x72458  3      
  movzbl (%r15,%r12,1), %eax             #  1171  0x7245b  5      
  cmpb $0x68, %al                        #  1172  0x72460  2      
  je .L_75600                            #  1173  0x72462  6      
  orl $0x40, %r13d                       #  1174  0x72468  4      
  jmpq .L_715e0                          #  1175  0x7246c  5      
  nop                                    #  1176  0x72471  1      
  movl %eax, 0xf8(%rsp)                  #  1177  0x72472  7      
  jmpq .L_72540                          #  1178  0x72479  5      
  nop                                    #  1179  0x7247e  1      
  nop                                    #  1180  0x7247f  1      
  movl %eax, 0xf8(%rsp)                  #  1181  0x72480  7      
  jmpq .L_72360                          #  1182  0x72487  5      
  nop                                    #  1183  0x7248c  1      
  nop                                    #  1184  0x7248d  1      
  movl %eax, 0xf8(%rsp)                  #  1185  0x7248e  7      
  jmpq .L_72720                          #  1186  0x72495  5      
  nop                                    #  1187  0x7249a  1      
  nop                                    #  1188  0x7249b  1      
.L_72c60:                                #        0x7249c  0      
  movq 0xb8(%rsp), %rax                  #  1189  0x7249c  8      
  movl %eax, %eax                        #  1190  0x724a4  2      
  orw $0x40, 0xc(%r15,%rax,1)            #  1191  0x724a6  7      
  nop                                    #  1192  0x724ad  1      
.L_72c80:                                #        0x724ae  0      
  cmpq $0x0, 0xe0(%rsp)                  #  1193  0x724ae  9      
  je .L_73460                            #  1194  0x724b7  6      
  movl 0xe0(%rsp), %esi                  #  1195  0x724bd  7      
  movl %r14d, %edi                       #  1196  0x724c4  3      
  xchgw %ax, %ax                         #  1197  0x724c7  3      
  callq ._free_r                         #  1198  0x724ca  5      
  movq 0xb8(%rsp), %rbx                  #  1199  0x724cf  8      
  movl %ebx, %ebx                        #  1200  0x724d7  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  1201  0x724d9  6      
  nop                                    #  1202  0x724df  1      
  nop                                    #  1203  0x724e0  1      
.L_72cc0:                                #        0x724e1  0      
  cwtl                                   #  1204  0x724e1  1      
  testb $0x2, %ah                        #  1205  0x724e2  3      
  je .L_73420                            #  1206  0x724e5  6      
  nop                                    #  1207  0x724eb  1      
  nop                                    #  1208  0x724ec  1      
.L_72ce0:                                #        0x724ed  0      
  testb $0x40, %al                       #  1209  0x724ed  2      
  je .L_71ee0                            #  1210  0x724ef  6      
  nop                                    #  1211  0x724f5  1      
  nop                                    #  1212  0x724f6  1      
.L_72d00:                                #        0x724f7  0      
  movl $0xffffffff, 0xd0(%rsp)           #  1213  0x724f7  11     
  jmpq .L_71ee0                          #  1214  0x72502  5      
  nop                                    #  1215  0x72507  1      
  nop                                    #  1216  0x72508  1      
.L_72d20:                                #        0x72509  0      
  cmpl $0x65, 0xf8(%rsp)                 #  1217  0x72509  8      
  jle .L_73120                           #  1218  0x72511  6      
  movsd 0x128(%rsp), %xmm0               #  1219  0x72517  9      
  ucomisd 0xffb19f8(%rip), %xmm0         #  1220  0x72520  8      
  nop                                    #  1221  0x72528  1      
  jne .L_73480                           #  1222  0x72529  6      
  jp .L_73480                            #  1223  0x7252f  6      
  movl %ebx, %ebx                        #  1224  0x72535  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1225  0x72537  9      
  movl 0x214(%rsp), %eax                 #  1226  0x72540  7      
  xchgw %ax, %ax                         #  1227  0x72547  3      
  addl $0x1, 0x218(%rsp)                 #  1228  0x7254a  8      
  movl %ebx, %ebx                        #  1229  0x72552  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  1230  0x72554  8      
  addl $0x1, %eax                        #  1231  0x7255c  3      
  cmpl $0x7, %eax                        #  1232  0x7255f  3      
  movl %eax, 0x214(%rsp)                 #  1233  0x72562  7      
  nop                                    #  1234  0x72569  1      
  jg .L_74fe0                            #  1235  0x7256a  6      
  addl $0x8, %ebx                        #  1236  0x72570  3      
  nop                                    #  1237  0x72573  1      
  nop                                    #  1238  0x72574  1      
.L_72da0:                                #        0x72575  0      
  movl 0x10c(%rsp), %eax                 #  1239  0x72575  7      
  cmpl %eax, 0x27c(%rsp)                 #  1240  0x7257c  7      
  jl .L_72dc0                            #  1241  0x72583  6      
  testb $0x1, %r13b                      #  1242  0x72589  4      
  je .L_71b00                            #  1243  0x7258d  6      
  nop                                    #  1244  0x72593  1      
.L_72dc0:                                #        0x72594  0      
  movl 0x124(%rsp), %ecx                 #  1245  0x72594  7      
  movl 0x110(%rsp), %edx                 #  1246  0x7259b  7      
  movl %ebx, %ebx                        #  1247  0x725a2  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1248  0x725a4  5      
  movl 0x214(%rsp), %eax                 #  1249  0x725a9  7      
  nop                                    #  1250  0x725b0  1      
  addl %ecx, 0x218(%rsp)                 #  1251  0x725b1  7      
  movl %ebx, %ebx                        #  1252  0x725b8  2      
  movl %edx, (%r15,%rbx,1)               #  1253  0x725ba  4      
  addl $0x1, %eax                        #  1254  0x725be  3      
  cmpl $0x7, %eax                        #  1255  0x725c1  3      
  movl %eax, 0x214(%rsp)                 #  1256  0x725c4  7      
  jg .L_75620                            #  1257  0x725cb  6      
  addl $0x8, %ebx                        #  1258  0x725d1  3      
  nop                                    #  1259  0x725d4  1      
  nop                                    #  1260  0x725d5  1      
.L_72e20:                                #        0x725d6  0      
  movl 0x10c(%rsp), %ecx                 #  1261  0x725d6  7      
  subl $0x1, %ecx                        #  1262  0x725dd  3      
  testl %ecx, %ecx                       #  1263  0x725e0  2      
  jle .L_71b00                           #  1264  0x725e2  6      
  cmpl $0x10, %ecx                       #  1265  0x725e8  3      
  jle .L_739a0                           #  1266  0x725eb  6      
  nop                                    #  1267  0x725f1  1      
  leal 0x210(%rsp), %esi                 #  1268  0x725f2  7      
  movq %rbx, %rax                        #  1269  0x725f9  3      
  movl %r13d, 0xa8(%rsp)                 #  1270  0x725fc  8      
  movl %ecx, %ebx                        #  1271  0x72604  2      
  movq %r12, %r13                        #  1272  0x72606  3      
  movq 0xb8(%rsp), %r12                  #  1273  0x72609  8      
  nop                                    #  1274  0x72611  1      
  movq %rsi, 0x38(%rsp)                  #  1275  0x72612  5      
  jmpq .L_72ec0                          #  1276  0x72617  5      
  nop                                    #  1277  0x7261c  1      
  nop                                    #  1278  0x7261d  1      
.L_72e80:                                #        0x7261e  0      
  addl $0x8, %eax                        #  1279  0x7261e  3      
  nop                                    #  1280  0x72621  1      
  nop                                    #  1281  0x72622  1      
.L_72ea0:                                #        0x72623  0      
  subl $0x10, %ebx                       #  1282  0x72623  3      
  cmpl $0x10, %ebx                       #  1283  0x72626  3      
  jle .L_74f60                           #  1284  0x72629  6      
  nop                                    #  1285  0x7262f  1      
  nop                                    #  1286  0x72630  1      
.L_72ec0:                                #        0x72631  0      
  movl %eax, %eax                        #  1287  0x72631  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1288  0x72633  9      
  movl 0x214(%rsp), %edx                 #  1289  0x7263c  7      
  addl $0x10, 0x218(%rsp)                #  1290  0x72643  8      
  nop                                    #  1291  0x7264b  1      
  movl %eax, %eax                        #  1292  0x7264c  2      
  movl $0x10024230, (%r15,%rax,1)        #  1293  0x7264e  8      
  addl $0x1, %edx                        #  1294  0x72656  3      
  cmpl $0x7, %edx                        #  1295  0x72659  3      
  movl %edx, 0x214(%rsp)                 #  1296  0x7265c  7      
  jle .L_72e80                           #  1297  0x72663  6      
  movl 0x38(%rsp), %edx                  #  1298  0x72669  4      
  movl %r12d, %esi                       #  1299  0x7266d  3      
  movl %r14d, %edi                       #  1300  0x72670  3      
  nop                                    #  1301  0x72673  1      
  nop                                    #  1302  0x72674  1      
  callq .__sprint_r                      #  1303  0x72675  5      
  testl %eax, %eax                       #  1304  0x7267a  2      
  jne .L_72c80                           #  1305  0x7267c  6      
  leal 0x1d0(%rsp), %eax                 #  1306  0x72682  7      
  jmpq .L_72ea0                          #  1307  0x72689  5      
  nop                                    #  1308  0x7268e  1      
.L_72f40:                                #        0x7268f  0      
  testl %eax, %eax                       #  1309  0x7268f  2      
  jne .L_72f80                           #  1310  0x72691  6      
  testb $0x1, %r13b                      #  1311  0x72697  4      
  je .L_72f80                            #  1312  0x7269b  6      
  movq 0x148(%rsp), %rcx                 #  1313  0x726a1  8      
  movq %rcx, 0xa8(%rsp)                  #  1314  0x726a9  8      
  nop                                    #  1315  0x726b1  1      
  movl %ecx, %ecx                        #  1316  0x726b2  2      
  movb $0x30, (%r15,%rcx,1)              #  1317  0x726b4  5      
  movl $0x1, 0xc4(%rsp)                  #  1318  0x726b9  11     
  movq 0xe8(%rsp), %rsi                  #  1319  0x726c4  8      
  jmpq .L_721e0                          #  1320  0x726cc  5      
  nop                                    #  1321  0x726d1  1      
.L_72f80:                                #        0x726d2  0      
  movq 0x100(%rsp), %rsi                 #  1322  0x726d2  8      
  movl $0x0, 0xc4(%rsp)                  #  1323  0x726da  11     
  movq %rsi, 0xa8(%rsp)                  #  1324  0x726e5  8      
  nop                                    #  1325  0x726ed  1      
  movq 0xe8(%rsp), %rsi                  #  1326  0x726ee  8      
  jmpq .L_721e0                          #  1327  0x726f6  5      
  nop                                    #  1328  0x726fb  1      
  nop                                    #  1329  0x726fc  1      
.L_72fc0:                                #        0x726fd  0      
  movl 0xd4(%rsp), %ecx                  #  1330  0x726fd  7      
  subl 0xb0(%rsp), %ecx                  #  1331  0x72704  7      
  testl %ecx, %ecx                       #  1332  0x7270b  2      
  jle .L_71940                           #  1333  0x7270d  6      
  cmpl $0x10, %ecx                       #  1334  0x72713  3      
  jle .L_730e0                           #  1335  0x72716  6      
  nop                                    #  1336  0x7271c  1      
  leal 0x210(%rsp), %edx                 #  1337  0x7271d  7      
  movq %rbx, %rax                        #  1338  0x72724  3      
  movl %r13d, 0xd8(%rsp)                 #  1339  0x72727  8      
  movl %ecx, %ebx                        #  1340  0x7272f  2      
  movq %r12, %r13                        #  1341  0x72731  3      
  movq 0xb8(%rsp), %r12                  #  1342  0x72734  8      
  nop                                    #  1343  0x7273c  1      
  movq %rdx, 0x48(%rsp)                  #  1344  0x7273d  5      
  jmpq .L_73040                          #  1345  0x72742  5      
  nop                                    #  1346  0x72747  1      
  nop                                    #  1347  0x72748  1      
.L_73020:                                #        0x72749  0      
  subl $0x10, %ebx                       #  1348  0x72749  3      
  addl $0x8, %eax                        #  1349  0x7274c  3      
  cmpl $0x10, %ebx                       #  1350  0x7274f  3      
  jle .L_730c0                           #  1351  0x72752  6      
  xchgw %ax, %ax                         #  1352  0x72758  3      
  nop                                    #  1353  0x7275b  1      
.L_73040:                                #        0x7275c  0      
  movl %eax, %eax                        #  1354  0x7275c  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1355  0x7275e  9      
  movl 0x214(%rsp), %edx                 #  1356  0x72767  7      
  addl $0x10, 0x218(%rsp)                #  1357  0x7276e  8      
  nop                                    #  1358  0x72776  1      
  movl %eax, %eax                        #  1359  0x72777  2      
  movl $0x10024230, (%r15,%rax,1)        #  1360  0x72779  8      
  addl $0x1, %edx                        #  1361  0x72781  3      
  cmpl $0x7, %edx                        #  1362  0x72784  3      
  movl %edx, 0x214(%rsp)                 #  1363  0x72787  7      
  jle .L_73020                           #  1364  0x7278e  6      
  movl 0x48(%rsp), %edx                  #  1365  0x72794  4      
  movl %r12d, %esi                       #  1366  0x72798  3      
  movl %r14d, %edi                       #  1367  0x7279b  3      
  nop                                    #  1368  0x7279e  1      
  nop                                    #  1369  0x7279f  1      
  callq .__sprint_r                      #  1370  0x727a0  5      
  testl %eax, %eax                       #  1371  0x727a5  2      
  jne .L_72c80                           #  1372  0x727a7  6      
  subl $0x10, %ebx                       #  1373  0x727ad  3      
  leal 0x1d0(%rsp), %eax                 #  1374  0x727b0  7      
  cmpl $0x10, %ebx                       #  1375  0x727b7  3      
  jg .L_73040                            #  1376  0x727ba  6      
  nop                                    #  1377  0x727c0  1      
.L_730c0:                                #        0x727c1  0      
  movq %r13, %r12                        #  1378  0x727c1  3      
  movl 0xd8(%rsp), %r13d                 #  1379  0x727c4  8      
  movl %ebx, %ecx                        #  1380  0x727cc  2      
  movq %rax, %rbx                        #  1381  0x727ce  3      
  nop                                    #  1382  0x727d1  1      
  nop                                    #  1383  0x727d2  1      
.L_730e0:                                #        0x727d3  0      
  movl %ebx, %ebx                        #  1384  0x727d3  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1385  0x727d5  5      
  movl 0x214(%rsp), %eax                 #  1386  0x727da  7      
  addl %ecx, 0x218(%rsp)                 #  1387  0x727e1  7      
  movl %ebx, %ebx                        #  1388  0x727e8  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1389  0x727ea  8      
  nop                                    #  1390  0x727f2  1      
  addl $0x1, %eax                        #  1391  0x727f3  3      
  cmpl $0x7, %eax                        #  1392  0x727f6  3      
  movl %eax, 0x214(%rsp)                 #  1393  0x727f9  7      
  jg .L_74400                            #  1394  0x72800  6      
  addl $0x8, %ebx                        #  1395  0x72806  3      
  jmpq .L_71940                          #  1396  0x72809  5      
  nop                                    #  1397  0x7280e  1      
.L_73120:                                #        0x7280f  0      
  cmpl $0x1, 0x10c(%rsp)                 #  1398  0x7280f  8      
  jle .L_73fa0                           #  1399  0x72817  6      
  nop                                    #  1400  0x7281d  1      
  nop                                    #  1401  0x7281e  1      
.L_73140:                                #        0x7281f  0      
  movl %ebx, %ebx                        #  1402  0x7281f  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  1403  0x72821  9      
  movl 0x214(%rsp), %eax                 #  1404  0x7282a  7      
  movl 0xa8(%rsp), %ecx                  #  1405  0x72831  7      
  nop                                    #  1406  0x72838  1      
  addl $0x1, 0x218(%rsp)                 #  1407  0x72839  8      
  addl $0x1, %eax                        #  1408  0x72841  3      
  cmpl $0x7, %eax                        #  1409  0x72844  3      
  movl %ebx, %ebx                        #  1410  0x72847  2      
  movl %ecx, (%r15,%rbx,1)               #  1411  0x72849  4      
  movl %eax, 0x214(%rsp)                 #  1412  0x7284d  7      
  nop                                    #  1413  0x72854  1      
  jg .L_74000                            #  1414  0x72855  6      
  leal 0x8(%rbx), %eax                   #  1415  0x7285b  3      
  nop                                    #  1416  0x7285e  1      
  nop                                    #  1417  0x7285f  1      
.L_731a0:                                #        0x72860  0      
  movl 0x124(%rsp), %esi                 #  1418  0x72860  7      
  movl 0x110(%rsp), %ebx                 #  1419  0x72867  7      
  movl %eax, %eax                        #  1420  0x7286e  2      
  movl %esi, 0x4(%r15,%rax,1)            #  1421  0x72870  5      
  movl 0x214(%rsp), %edx                 #  1422  0x72875  7      
  nop                                    #  1423  0x7287c  1      
  addl %esi, 0x218(%rsp)                 #  1424  0x7287d  7      
  movl %eax, %eax                        #  1425  0x72884  2      
  movl %ebx, (%r15,%rax,1)               #  1426  0x72886  4      
  addl $0x1, %edx                        #  1427  0x7288a  3      
  cmpl $0x7, %edx                        #  1428  0x7288d  3      
  movl %edx, 0x214(%rsp)                 #  1429  0x72890  7      
  jg .L_74040                            #  1430  0x72897  6      
  addl $0x8, %eax                        #  1431  0x7289d  3      
  nop                                    #  1432  0x728a0  1      
  nop                                    #  1433  0x728a1  1      
.L_73200:                                #        0x728a2  0      
  movsd 0x128(%rsp), %xmm0               #  1434  0x728a2  9      
  ucomisd 0xffb166d(%rip), %xmm0         #  1435  0x728ab  8      
  jp .L_73220                            #  1436  0x728b3  6      
  je .L_73860                            #  1437  0x728b9  6      
  nop                                    #  1438  0x728bf  1      
.L_73220:                                #        0x728c0  0      
  movl 0xa8(%rsp), %edx                  #  1439  0x728c0  7      
  movl 0x10c(%rsp), %ecx                 #  1440  0x728c7  7      
  addl $0x1, %edx                        #  1441  0x728ce  3      
  movl %eax, %eax                        #  1442  0x728d1  2      
  movl %edx, (%r15,%rax,1)               #  1443  0x728d3  4      
  movl 0x10c(%rsp), %edx                 #  1444  0x728d7  7      
  xchgw %ax, %ax                         #  1445  0x728de  3      
  subl $0x1, %edx                        #  1446  0x728e1  3      
  movl %eax, %eax                        #  1447  0x728e4  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1448  0x728e6  5      
  movl 0x218(%rsp), %edx                 #  1449  0x728eb  7      
  leal -0x1(%rcx,%rdx,1), %edx           #  1450  0x728f2  4      
  movl %edx, 0x218(%rsp)                 #  1451  0x728f6  7      
  nop                                    #  1452  0x728fd  1      
.L_73260:                                #        0x728fe  0      
  movl 0x214(%rsp), %edx                 #  1453  0x728fe  7      
  addl $0x1, %edx                        #  1454  0x72905  3      
  cmpl $0x7, %edx                        #  1455  0x72908  3      
  movl %edx, 0x214(%rsp)                 #  1456  0x7290b  7      
  jg .L_74440                            #  1457  0x72912  6      
  addl $0x8, %eax                        #  1458  0x72918  3      
  nop                                    #  1459  0x7291b  1      
.L_73280:                                #        0x7291c  0      
  leal 0x260(%rsp), %edx                 #  1460  0x7291c  7      
  movl %eax, %eax                        #  1461  0x72923  2      
  movl %edx, (%r15,%rax,1)               #  1462  0x72925  4      
  movl 0x134(%rsp), %edx                 #  1463  0x72929  7      
  movl %eax, %eax                        #  1464  0x72930  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1465  0x72932  5      
  nop                                    #  1466  0x72937  1      
  addl %edx, 0x218(%rsp)                 #  1467  0x72938  7      
  nop                                    #  1468  0x7293f  1      
  nop                                    #  1469  0x72940  1      
.L_732c0:                                #        0x72941  0      
  movl 0x214(%rsp), %edx                 #  1470  0x72941  7      
  leal 0x8(%rax), %ebx                   #  1471  0x72948  3      
  addl $0x1, %edx                        #  1472  0x7294b  3      
  cmpl $0x7, %edx                        #  1473  0x7294e  3      
  movl %edx, 0x214(%rsp)                 #  1474  0x72951  7      
  jle .L_71b00                           #  1475  0x72958  6      
  nop                                    #  1476  0x7295e  1      
.L_732e0:                                #        0x7295f  0      
  movl 0xb8(%rsp), %esi                  #  1477  0x7295f  7      
  leal 0x210(%rsp), %edx                 #  1478  0x72966  7      
  movl %r14d, %edi                       #  1479  0x7296d  3      
  nop                                    #  1480  0x72970  1      
  callq .__sprint_r                      #  1481  0x72971  5      
  testl %eax, %eax                       #  1482  0x72976  2      
  jne .L_72c80                           #  1483  0x72978  6      
  leal 0x1d0(%rsp), %ebx                 #  1484  0x7297e  7      
  jmpq .L_71b00                          #  1485  0x72985  5      
  nop                                    #  1486  0x7298a  1      
.L_73320:                                #        0x7298b  0      
  movl 0xb8(%rsp), %esi                  #  1487  0x7298b  7      
  leal 0x210(%rsp), %edx                 #  1488  0x72992  7      
  movl %r14d, %edi                       #  1489  0x72999  3      
  nop                                    #  1490  0x7299c  1      
  callq .__sprint_r                      #  1491  0x7299d  5      
  testl %eax, %eax                       #  1492  0x729a2  2      
  je .L_71d00                            #  1493  0x729a4  6      
  jmpq .L_72c80                          #  1494  0x729aa  5      
  nop                                    #  1495  0x729af  1      
  nop                                    #  1496  0x729b0  1      
.L_73360:                                #        0x729b1  0      
  movl 0xb8(%rsp), %esi                  #  1497  0x729b1  7      
  leal 0x210(%rsp), %edx                 #  1498  0x729b8  7      
  movl %r14d, %edi                       #  1499  0x729bf  3      
  nop                                    #  1500  0x729c2  1      
  callq .__sprint_r                      #  1501  0x729c3  5      
  testl %eax, %eax                       #  1502  0x729c8  2      
  jne .L_72c80                           #  1503  0x729ca  6      
  leal 0x1d0(%rsp), %ebx                 #  1504  0x729d0  7      
  jmpq .L_71aa0                          #  1505  0x729d7  5      
  nop                                    #  1506  0x729dc  1      
.L_733a0:                                #        0x729dd  0      
  movl 0xb8(%rsp), %esi                  #  1507  0x729dd  7      
  leal 0x210(%rsp), %edx                 #  1508  0x729e4  7      
  movl %r14d, %edi                       #  1509  0x729eb  3      
  nop                                    #  1510  0x729ee  1      
  callq .__sprint_r                      #  1511  0x729ef  5      
  testl %eax, %eax                       #  1512  0x729f4  2      
  jne .L_72c80                           #  1513  0x729f6  6      
  leal 0x1d0(%rsp), %ebx                 #  1514  0x729fc  7      
  jmpq .L_718c0                          #  1515  0x72a03  5      
  nop                                    #  1516  0x72a08  1      
.L_733e0:                                #        0x72a09  0      
  movl 0xb8(%rsp), %esi                  #  1517  0x72a09  7      
  leal 0x210(%rsp), %edx                 #  1518  0x72a10  7      
  movl %r14d, %edi                       #  1519  0x72a17  3      
  nop                                    #  1520  0x72a1a  1      
  callq .__sprint_r                      #  1521  0x72a1b  5      
  testl %eax, %eax                       #  1522  0x72a20  2      
  jne .L_72c80                           #  1523  0x72a22  6      
  leal 0x1d0(%rsp), %ebx                 #  1524  0x72a28  7      
  jmpq .L_71920                          #  1525  0x72a2f  5      
  nop                                    #  1526  0x72a34  1      
.L_73420:                                #        0x72a35  0      
  movl 0xb8(%rsp), %edi                  #  1527  0x72a35  7      
  addl $0x5c, %edi                       #  1528  0x72a3c  3      
  xchgw %ax, %ax                         #  1529  0x72a3f  3      
  nop                                    #  1530  0x72a42  1      
  callq .__local_lock_release_recursive  #  1531  0x72a43  5      
  movq 0xb8(%rsp), %rsi                  #  1532  0x72a48  8      
  movl %esi, %esi                        #  1533  0x72a50  2      
  movswl 0xc(%r15,%rsi,1), %eax          #  1534  0x72a52  6      
  jmpq .L_72ce0                          #  1535  0x72a58  5      
  nop                                    #  1536  0x72a5d  1      
.L_73460:                                #        0x72a5e  0      
  movq 0xb8(%rsp), %rcx                  #  1537  0x72a5e  8      
  movl %ecx, %ecx                        #  1538  0x72a66  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  1539  0x72a68  6      
  jmpq .L_72cc0                          #  1540  0x72a6e  5      
  nop                                    #  1541  0x72a73  1      
.L_73480:                                #        0x72a74  0      
  movl 0x27c(%rsp), %r8d                 #  1542  0x72a74  8      
  testl %r8d, %r8d                       #  1543  0x72a7c  3      
  jle .L_75400                           #  1544  0x72a7f  6      
  movl 0x10c(%rsp), %eax                 #  1545  0x72a85  7      
  addl 0xa8(%rsp), %eax                  #  1546  0x72a8c  7      
  nop                                    #  1547  0x72a93  1      
  movl %eax, %r8d                        #  1548  0x72a94  3      
  subl 0xa8(%rsp), %r8d                  #  1549  0x72a97  8      
  movq %rax, 0xd8(%rsp)                  #  1550  0x72a9f  8      
  cmpl 0x11c(%rsp), %r8d                 #  1551  0x72aa7  8      
  nop                                    #  1552  0x72aaf  1      
  movl %eax, 0xc4(%rsp)                  #  1553  0x72ab0  7      
  cmovgl 0x11c(%rsp), %r8d               #  1554  0x72ab7  9      
  testl %r8d, %r8d                       #  1555  0x72ac0  3      
  jle .L_73520                           #  1556  0x72ac3  6      
  movl %ebx, %ebx                        #  1557  0x72ac9  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1558  0x72acb  5      
  nop                                    #  1559  0x72ad0  1      
  movl 0x214(%rsp), %eax                 #  1560  0x72ad1  7      
  movl 0xa8(%rsp), %edx                  #  1561  0x72ad8  7      
  addl %r8d, 0x218(%rsp)                 #  1562  0x72adf  8      
  addl $0x1, %eax                        #  1563  0x72ae7  3      
  cmpl $0x7, %eax                        #  1564  0x72aea  3      
  nop                                    #  1565  0x72aed  1      
  movl %ebx, %ebx                        #  1566  0x72aee  2      
  movl %edx, (%r15,%rbx,1)               #  1567  0x72af0  4      
  movl %eax, 0x214(%rsp)                 #  1568  0x72af4  7      
  jg .L_75880                            #  1569  0x72afb  6      
  addl $0x8, %ebx                        #  1570  0x72b01  3      
  nop                                    #  1571  0x72b04  1      
.L_73520:                                #        0x72b05  0      
  movl 0x11c(%rsp), %esi                 #  1572  0x72b05  7      
  xorl %ecx, %ecx                        #  1573  0x72b0c  2      
  testl %r8d, %r8d                       #  1574  0x72b0e  3      
  cmovnsl %r8d, %ecx                     #  1575  0x72b11  4      
  subl %ecx, %esi                        #  1576  0x72b15  2      
  testl %esi, %esi                       #  1577  0x72b17  2      
  movl %esi, %ecx                        #  1578  0x72b19  2      
  jle .L_73a00                           #  1579  0x72b1b  6      
  cmpl $0x10, %esi                       #  1580  0x72b21  3      
  nop                                    #  1581  0x72b24  1      
  jle .L_74d20                           #  1582  0x72b25  6      
  leal 0x210(%rsp), %eax                 #  1583  0x72b2b  7      
  movl %r13d, 0xf4(%rsp)                 #  1584  0x72b32  8      
  movq %r12, %r13                        #  1585  0x72b3a  3      
  movq 0xb8(%rsp), %r12                  #  1586  0x72b3d  8      
  movq %rax, 0x28(%rsp)                  #  1587  0x72b45  5      
  movq %rbx, %rax                        #  1588  0x72b4a  3      
  movl %esi, %ebx                        #  1589  0x72b4d  2      
  jmpq .L_735c0                          #  1590  0x72b4f  5      
  nop                                    #  1591  0x72b54  1      
  nop                                    #  1592  0x72b55  1      
.L_73580:                                #        0x72b56  0      
  addl $0x8, %eax                        #  1593  0x72b56  3      
  nop                                    #  1594  0x72b59  1      
  nop                                    #  1595  0x72b5a  1      
.L_735a0:                                #        0x72b5b  0      
  subl $0x10, %ebx                       #  1596  0x72b5b  3      
  cmpl $0x10, %ebx                       #  1597  0x72b5e  3      
  jle .L_74d00                           #  1598  0x72b61  6      
  nop                                    #  1599  0x72b67  1      
  nop                                    #  1600  0x72b68  1      
.L_735c0:                                #        0x72b69  0      
  movl %eax, %eax                        #  1601  0x72b69  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1602  0x72b6b  9      
  movl 0x214(%rsp), %edx                 #  1603  0x72b74  7      
  addl $0x10, 0x218(%rsp)                #  1604  0x72b7b  8      
  nop                                    #  1605  0x72b83  1      
  movl %eax, %eax                        #  1606  0x72b84  2      
  movl $0x10024230, (%r15,%rax,1)        #  1607  0x72b86  8      
  addl $0x1, %edx                        #  1608  0x72b8e  3      
  cmpl $0x7, %edx                        #  1609  0x72b91  3      
  movl %edx, 0x214(%rsp)                 #  1610  0x72b94  7      
  jle .L_73580                           #  1611  0x72b9b  6      
  movl 0x28(%rsp), %edx                  #  1612  0x72ba1  4      
  movl %r12d, %esi                       #  1613  0x72ba5  3      
  movl %r14d, %edi                       #  1614  0x72ba8  3      
  nop                                    #  1615  0x72bab  1      
  nop                                    #  1616  0x72bac  1      
  callq .__sprint_r                      #  1617  0x72bad  5      
  testl %eax, %eax                       #  1618  0x72bb2  2      
  jne .L_72c80                           #  1619  0x72bb4  6      
  leal 0x1d0(%rsp), %eax                 #  1620  0x72bba  7      
  jmpq .L_735a0                          #  1621  0x72bc1  5      
  nop                                    #  1622  0x72bc6  1      
.L_73640:                                #        0x72bc7  0      
  movq 0x100(%rsp), %rsi                 #  1623  0x72bc7  8      
  movq %rsi, 0xa8(%rsp)                  #  1624  0x72bcf  8      
  movq 0x138(%rsp), %rsi                 #  1625  0x72bd7  8      
  movq 0xa8(%rsp), %rax                  #  1626  0x72bdf  8      
.L_73660:                                #        0x72be7  0      
  movl %ecx, %edx                        #  1627  0x72be7  2      
  shrq $0x4, %rcx                        #  1628  0x72be9  4      
  subl $0x1, %eax                        #  1629  0x72bed  3      
  andl $0xf, %edx                        #  1630  0x72bf0  3      
  addl %esi, %edx                        #  1631  0x72bf3  2      
  testq %rcx, %rcx                       #  1632  0x72bf5  3      
  movl %edx, %edx                        #  1633  0x72bf8  2      
  movzbl (%r15,%rdx,1), %edx             #  1634  0x72bfa  5      
  movl %eax, %eax                        #  1635  0x72bff  2      
  movb %dl, (%r15,%rax,1)                #  1636  0x72c01  4      
  xchgw %ax, %ax                         #  1637  0x72c05  3      
  jne .L_73660                           #  1638  0x72c08  6      
  movl 0x100(%rsp), %edx                 #  1639  0x72c0e  7      
  movq %rax, 0xa8(%rsp)                  #  1640  0x72c15  8      
  movq 0xe8(%rsp), %rsi                  #  1641  0x72c1d  8      
  subl %eax, %edx                        #  1642  0x72c25  2      
  nop                                    #  1643  0x72c27  1      
  movl %edx, 0xc4(%rsp)                  #  1644  0x72c28  7      
  jmpq .L_721e0                          #  1645  0x72c2f  5      
  nop                                    #  1646  0x72c34  1      
  nop                                    #  1647  0x72c35  1      
.L_736c0:                                #        0x72c36  0      
  cmpq $0x9, %rcx                        #  1648  0x72c36  4      
  ja .L_74080                            #  1649  0x72c3a  6      
  movq 0x148(%rsp), %rsi                 #  1650  0x72c40  8      
  addl $0x30, %ecx                       #  1651  0x72c48  3      
  movq %rsi, 0xa8(%rsp)                  #  1652  0x72c4b  8      
  nop                                    #  1653  0x72c53  1      
  movl %esi, %esi                        #  1654  0x72c54  2      
  movb %cl, (%r15,%rsi,1)                #  1655  0x72c56  4      
  movl $0x1, 0xc4(%rsp)                  #  1656  0x72c5a  11     
  movq 0xe8(%rsp), %rsi                  #  1657  0x72c65  8      
  jmpq .L_721e0                          #  1658  0x72c6d  5      
  xchgw %ax, %ax                         #  1659  0x72c72  3      
.L_73700:                                #        0x72c75  0      
  movl 0xb8(%rsp), %esi                  #  1660  0x72c75  7      
  leal 0x210(%rsp), %edx                 #  1661  0x72c7c  7      
  movl %r14d, %edi                       #  1662  0x72c83  3      
  nop                                    #  1663  0x72c86  1      
  callq .__sprint_r                      #  1664  0x72c87  5      
  testl %eax, %eax                       #  1665  0x72c8c  2      
  jne .L_72c80                           #  1666  0x72c8e  6      
  movzbl 0x28f(%rsp), %eax               #  1667  0x72c94  8      
  leal 0x1d0(%rsp), %ebx                 #  1668  0x72c9c  7      
  jmpq .L_71860                          #  1669  0x72ca3  5      
  nop                                    #  1670  0x72ca8  1      
.L_73740:                                #        0x72ca9  0      
  testb $0x10, %r13b                     #  1671  0x72ca9  4      
  je .L_74560                            #  1672  0x72cad  6      
  movq 0xc8(%rsp), %rdx                  #  1673  0x72cb3  8      
  movl %edx, %edx                        #  1674  0x72cbb  2      
  movl (%r15,%rdx,1), %eax               #  1675  0x72cbd  4      
  cmpl $0x2f, %eax                       #  1676  0x72cc1  3      
  nop                                    #  1677  0x72cc4  1      
  ja .L_750a0                            #  1678  0x72cc5  6      
  movq %rdx, %rcx                        #  1679  0x72ccb  3      
  movl %edx, %edx                        #  1680  0x72cce  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1681  0x72cd0  5      
  addl %eax, %edx                        #  1682  0x72cd5  2      
  addl $0x8, %eax                        #  1683  0x72cd7  3      
  movl %ecx, %ecx                        #  1684  0x72cda  2      
  movl %eax, (%r15,%rcx,1)               #  1685  0x72cdc  4      
  nop                                    #  1686  0x72ce0  1      
.L_73780:                                #        0x72ce1  0      
  movl %edx, %edx                        #  1687  0x72ce1  2      
  movl (%r15,%rdx,1), %ecx               #  1688  0x72ce3  4      
  movl $0x1, %eax                        #  1689  0x72ce7  5      
  testq %rcx, %rcx                       #  1690  0x72cec  3      
  setne %sil                             #  1691  0x72cef  4      
  jmpq .L_72100                          #  1692  0x72cf3  5      
  nop                                    #  1693  0x72cf8  1      
.L_737a0:                                #        0x72cf9  0      
  testb $0x10, %r13b                     #  1694  0x72cf9  4      
  je .L_74720                            #  1695  0x72cfd  6      
  movq 0xc8(%rsp), %rdx                  #  1696  0x72d03  8      
  movl %edx, %edx                        #  1697  0x72d0b  2      
  movl (%r15,%rdx,1), %eax               #  1698  0x72d0d  4      
  cmpl $0x2f, %eax                       #  1699  0x72d11  3      
  nop                                    #  1700  0x72d14  1      
  ja .L_75080                            #  1701  0x72d15  6      
  movq %rdx, %rcx                        #  1702  0x72d1b  3      
  movl %edx, %edx                        #  1703  0x72d1e  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1704  0x72d20  5      
  addl %eax, %edx                        #  1705  0x72d25  2      
  addl $0x8, %eax                        #  1706  0x72d27  3      
  movl %ecx, %ecx                        #  1707  0x72d2a  2      
  movl %eax, (%r15,%rcx,1)               #  1708  0x72d2c  4      
  nop                                    #  1709  0x72d30  1      
.L_737e0:                                #        0x72d31  0      
  movl %edx, %edx                        #  1710  0x72d31  2      
  movslq (%r15,%rdx,1), %rcx             #  1711  0x72d33  4      
  jmpq .L_723c0                          #  1712  0x72d37  5      
  nop                                    #  1713  0x72d3c  1      
  nop                                    #  1714  0x72d3d  1      
.L_73800:                                #        0x72d3e  0      
  testb $0x10, %r13b                     #  1715  0x72d3e  4      
  je .L_747e0                            #  1716  0x72d42  6      
  movq 0xc8(%rsp), %rdx                  #  1717  0x72d48  8      
  movl %edx, %edx                        #  1718  0x72d50  2      
  movl (%r15,%rdx,1), %eax               #  1719  0x72d52  4      
  cmpl $0x2f, %eax                       #  1720  0x72d56  3      
  nop                                    #  1721  0x72d59  1      
  ja .L_752c0                            #  1722  0x72d5a  6      
  movq %rdx, %rcx                        #  1723  0x72d60  3      
  movl %edx, %edx                        #  1724  0x72d63  2      
  movl 0xc(%r15,%rdx,1), %edx            #  1725  0x72d65  5      
  addl %eax, %edx                        #  1726  0x72d6a  2      
  addl $0x8, %eax                        #  1727  0x72d6c  3      
  movl %ecx, %ecx                        #  1728  0x72d6f  2      
  movl %eax, (%r15,%rcx,1)               #  1729  0x72d71  4      
  nop                                    #  1730  0x72d75  1      
.L_73840:                                #        0x72d76  0      
  movl %edx, %edx                        #  1731  0x72d76  2      
  movl (%r15,%rdx,1), %ecx               #  1732  0x72d78  4      
  jmpq .L_72780                          #  1733  0x72d7c  5      
  nop                                    #  1734  0x72d81  1      
  nop                                    #  1735  0x72d82  1      
.L_73860:                                #        0x72d83  0      
  movl 0x10c(%rsp), %ebx                 #  1736  0x72d83  7      
  subl $0x1, %ebx                        #  1737  0x72d8a  3      
  testl %ebx, %ebx                       #  1738  0x72d8d  2      
  jle .L_73280                           #  1739  0x72d8f  6      
  cmpl $0x10, %ebx                       #  1740  0x72d95  3      
  jle .L_74240                           #  1741  0x72d98  6      
  nop                                    #  1742  0x72d9e  1      
  leal 0x210(%rsp), %esi                 #  1743  0x72d9f  7      
  movl %r13d, 0xa8(%rsp)                 #  1744  0x72da6  8      
  movq %r12, %r13                        #  1745  0x72dae  3      
  movq 0xb8(%rsp), %r12                  #  1746  0x72db1  8      
  movq %rsi, 0x10(%rsp)                  #  1747  0x72db9  5      
  nop                                    #  1748  0x72dbe  1      
  jmpq .L_73900                          #  1749  0x72dbf  5      
  nop                                    #  1750  0x72dc4  1      
  nop                                    #  1751  0x72dc5  1      
.L_738c0:                                #        0x72dc6  0      
  addl $0x8, %eax                        #  1752  0x72dc6  3      
  nop                                    #  1753  0x72dc9  1      
  nop                                    #  1754  0x72dca  1      
.L_738e0:                                #        0x72dcb  0      
  subl $0x10, %ebx                       #  1755  0x72dcb  3      
  cmpl $0x10, %ebx                       #  1756  0x72dce  3      
  jle .L_74220                           #  1757  0x72dd1  6      
  nop                                    #  1758  0x72dd7  1      
  nop                                    #  1759  0x72dd8  1      
.L_73900:                                #        0x72dd9  0      
  movl %eax, %eax                        #  1760  0x72dd9  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1761  0x72ddb  9      
  movl 0x214(%rsp), %edx                 #  1762  0x72de4  7      
  addl $0x10, 0x218(%rsp)                #  1763  0x72deb  8      
  nop                                    #  1764  0x72df3  1      
  movl %eax, %eax                        #  1765  0x72df4  2      
  movl $0x10024230, (%r15,%rax,1)        #  1766  0x72df6  8      
  addl $0x1, %edx                        #  1767  0x72dfe  3      
  cmpl $0x7, %edx                        #  1768  0x72e01  3      
  movl %edx, 0x214(%rsp)                 #  1769  0x72e04  7      
  jle .L_738c0                           #  1770  0x72e0b  6      
  movl 0x10(%rsp), %edx                  #  1771  0x72e11  4      
  movl %r12d, %esi                       #  1772  0x72e15  3      
  movl %r14d, %edi                       #  1773  0x72e18  3      
  nop                                    #  1774  0x72e1b  1      
  nop                                    #  1775  0x72e1c  1      
  callq .__sprint_r                      #  1776  0x72e1d  5      
  testl %eax, %eax                       #  1777  0x72e22  2      
  jne .L_72c80                           #  1778  0x72e24  6      
  leal 0x1d0(%rsp), %eax                 #  1779  0x72e2a  7      
  jmpq .L_738e0                          #  1780  0x72e31  5      
  nop                                    #  1781  0x72e36  1      
.L_73980:                                #        0x72e37  0      
  movq %r13, %r12                        #  1782  0x72e37  3      
  movl 0xa8(%rsp), %r13d                 #  1783  0x72e3a  8      
  movl %ebx, %ecx                        #  1784  0x72e42  2      
  movq %rax, %rbx                        #  1785  0x72e44  3      
  nop                                    #  1786  0x72e47  1      
  nop                                    #  1787  0x72e48  1      
.L_739a0:                                #        0x72e49  0      
  movl %ebx, %ebx                        #  1788  0x72e49  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1789  0x72e4b  5      
  movl %ebx, %ebx                        #  1790  0x72e50  2      
  movl $0x10024230, (%r15,%rbx,1)        #  1791  0x72e52  8      
  addl %ecx, 0x218(%rsp)                 #  1792  0x72e5a  7      
  jmpq .L_71ae0                          #  1793  0x72e61  5      
  nop                                    #  1794  0x72e66  1      
.L_739c0:                                #        0x72e67  0      
  movl 0xb8(%rsp), %esi                  #  1795  0x72e67  7      
  leal 0x210(%rsp), %edx                 #  1796  0x72e6e  7      
  movl %r14d, %edi                       #  1797  0x72e75  3      
  nop                                    #  1798  0x72e78  1      
  callq .__sprint_r                      #  1799  0x72e79  5      
  testl %eax, %eax                       #  1800  0x72e7e  2      
  jne .L_72c80                           #  1801  0x72e80  6      
  leal 0x1d0(%rsp), %ebx                 #  1802  0x72e86  7      
  xchgw %ax, %ax                         #  1803  0x72e8d  3      
  nop                                    #  1804  0x72e90  1      
.L_73a00:                                #        0x72e91  0      
  movl 0x11c(%rsp), %edx                 #  1805  0x72e91  7      
  addl 0xa8(%rsp), %edx                  #  1806  0x72e98  7      
  testl $0x400, %r13d                    #  1807  0x72e9f  7      
  movq %rdx, 0xa8(%rsp)                  #  1808  0x72ea6  8      
  nop                                    #  1809  0x72eae  1      
  je .L_73d20                            #  1810  0x72eaf  6      
  movl 0x120(%rsp), %esi                 #  1811  0x72eb5  7      
  testl %esi, %esi                       #  1812  0x72ebc  2      
  jle .L_753a0                           #  1813  0x72ebe  6      
  nop                                    #  1814  0x72ec4  1      
.L_73a40:                                #        0x72ec5  0      
  leal 0x210(%rsp), %ecx                 #  1815  0x72ec5  7      
  movl %r13d, 0xf4(%rsp)                 #  1816  0x72ecc  8      
  movq %r12, %r13                        #  1817  0x72ed4  3      
  movq 0xb8(%rsp), %r12                  #  1818  0x72ed7  8      
  movq %rbx, %rax                        #  1819  0x72edf  3      
  nop                                    #  1820  0x72ee2  1      
  movq %rcx, 0x20(%rsp)                  #  1821  0x72ee3  5      
  nop                                    #  1822  0x72ee8  1      
  nop                                    #  1823  0x72ee9  1      
.L_73a80:                                #        0x72eea  0      
  movl 0x108(%rsp), %ebx                 #  1824  0x72eea  7      
  testl %ebx, %ebx                       #  1825  0x72ef1  2      
  je .L_74660                            #  1826  0x72ef3  6      
  subl $0x1, 0x108(%rsp)                 #  1827  0x72ef9  8      
  nop                                    #  1828  0x72f01  1      
.L_73aa0:                                #        0x72f02  0      
  movl 0x130(%rsp), %edx                 #  1829  0x72f02  7      
  movl 0x140(%rsp), %esi                 #  1830  0x72f09  7      
  movl %eax, %eax                        #  1831  0x72f10  2      
  movl %edx, 0x4(%r15,%rax,1)            #  1832  0x72f12  5      
  addl %edx, 0x218(%rsp)                 #  1833  0x72f17  7      
  nop                                    #  1834  0x72f1e  1      
  movl 0x214(%rsp), %edx                 #  1835  0x72f1f  7      
  movl %eax, %eax                        #  1836  0x72f26  2      
  movl %esi, (%r15,%rax,1)               #  1837  0x72f28  4      
  addl $0x1, %edx                        #  1838  0x72f2c  3      
  cmpl $0x7, %edx                        #  1839  0x72f2f  3      
  movl %edx, 0x214(%rsp)                 #  1840  0x72f32  7      
  jg .L_74480                            #  1841  0x72f39  6      
  addl $0x8, %eax                        #  1842  0x72f3f  3      
  nop                                    #  1843  0x72f42  1      
  nop                                    #  1844  0x72f43  1      
.L_73b00:                                #        0x72f44  0      
  movq 0xe8(%rsp), %rbx                  #  1845  0x72f44  8      
  movl 0xc4(%rsp), %ecx                  #  1846  0x72f4c  7      
  subl 0xa8(%rsp), %ecx                  #  1847  0x72f53  7      
  movl %ebx, %ebx                        #  1848  0x72f5a  2      
  movsbl (%r15,%rbx,1), %edx             #  1849  0x72f5c  5      
  cmpl %ecx, %edx                        #  1850  0x72f61  2      
  nop                                    #  1851  0x72f63  1      
  cmovlel %edx, %ecx                     #  1852  0x72f64  3      
  testl %ecx, %ecx                       #  1853  0x72f67  2      
  jle .L_73b80                           #  1854  0x72f69  6      
  movl %eax, %eax                        #  1855  0x72f6f  2      
  movl %ecx, 0x4(%r15,%rax,1)            #  1856  0x72f71  5      
  movl 0x214(%rsp), %edx                 #  1857  0x72f76  7      
  movl 0xa8(%rsp), %esi                  #  1858  0x72f7d  7      
  nop                                    #  1859  0x72f84  1      
  addl %ecx, 0x218(%rsp)                 #  1860  0x72f85  7      
  addl $0x1, %edx                        #  1861  0x72f8c  3      
  cmpl $0x7, %edx                        #  1862  0x72f8f  3      
  movl %eax, %eax                        #  1863  0x72f92  2      
  movl %esi, (%r15,%rax,1)               #  1864  0x72f94  4      
  movl %edx, 0x214(%rsp)                 #  1865  0x72f98  7      
  jg .L_74f80                            #  1866  0x72f9f  6      
  movl %ebx, %ebx                        #  1867  0x72fa5  2      
  movsbl (%r15,%rbx,1), %edx             #  1868  0x72fa7  5      
  addl $0x8, %eax                        #  1869  0x72fac  3      
  nop                                    #  1870  0x72faf  1      
  nop                                    #  1871  0x72fb0  1      
.L_73b80:                                #        0x72fb1  0      
  testl %ecx, %ecx                       #  1872  0x72fb1  2      
  movl $0x0, %ebx                        #  1873  0x72fb3  5      
  cmovsl %ebx, %ecx                      #  1874  0x72fb8  3      
  movl %edx, %ebx                        #  1875  0x72fbb  2      
  subl %ecx, %ebx                        #  1876  0x72fbd  2      
  testl %ebx, %ebx                       #  1877  0x72fbf  2      
  jg .L_73be0                            #  1878  0x72fc1  6      
  jmpq .L_73ca0                          #  1879  0x72fc7  5      
  nop                                    #  1880  0x72fcc  1      
.L_73ba0:                                #        0x72fcd  0      
  addl $0x8, %eax                        #  1881  0x72fcd  3      
  nop                                    #  1882  0x72fd0  1      
  nop                                    #  1883  0x72fd1  1      
.L_73bc0:                                #        0x72fd2  0      
  subl $0x10, %ebx                       #  1884  0x72fd2  3      
  nop                                    #  1885  0x72fd5  1      
  nop                                    #  1886  0x72fd6  1      
.L_73be0:                                #        0x72fd7  0      
  cmpl $0x10, %ebx                       #  1887  0x72fd7  3      
  jle .L_73f40                           #  1888  0x72fda  6      
  movl %eax, %eax                        #  1889  0x72fe0  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  1890  0x72fe2  9      
  movl 0x214(%rsp), %edx                 #  1891  0x72feb  7      
  nop                                    #  1892  0x72ff2  1      
  addl $0x10, 0x218(%rsp)                #  1893  0x72ff3  8      
  movl %eax, %eax                        #  1894  0x72ffb  2      
  movl $0x10024230, (%r15,%rax,1)        #  1895  0x72ffd  8      
  addl $0x1, %edx                        #  1896  0x73005  3      
  cmpl $0x7, %edx                        #  1897  0x73008  3      
  movl %edx, 0x214(%rsp)                 #  1898  0x7300b  7      
  nop                                    #  1899  0x73012  1      
  jle .L_73ba0                           #  1900  0x73013  6      
  movl 0x20(%rsp), %edx                  #  1901  0x73019  4      
  movl %r12d, %esi                       #  1902  0x7301d  3      
  movl %r14d, %edi                       #  1903  0x73020  3      
  nop                                    #  1904  0x73023  1      
  callq .__sprint_r                      #  1905  0x73024  5      
  testl %eax, %eax                       #  1906  0x73029  2      
  jne .L_72c80                           #  1907  0x7302b  6      
  leal 0x1d0(%rsp), %eax                 #  1908  0x73031  7      
  jmpq .L_73bc0                          #  1909  0x73038  5      
  nop                                    #  1910  0x7303d  1      
.L_73c60:                                #        0x7303e  0      
  movl 0x20(%rsp), %edx                  #  1911  0x7303e  4      
  movl %r12d, %esi                       #  1912  0x73042  3      
  movl %r14d, %edi                       #  1913  0x73045  3      
  xchgw %ax, %ax                         #  1914  0x73048  3      
  nop                                    #  1915  0x7304b  1      
  callq .__sprint_r                      #  1916  0x7304c  5      
  testl %eax, %eax                       #  1917  0x73051  2      
  jne .L_72c80                           #  1918  0x73053  6      
  movq 0xe8(%rsp), %rcx                  #  1919  0x73059  8      
  leal 0x1d0(%rsp), %eax                 #  1920  0x73061  7      
  movl %ecx, %ecx                        #  1921  0x73068  2      
  movsbl (%r15,%rcx,1), %edx             #  1922  0x7306a  5      
  xchgw %ax, %ax                         #  1923  0x7306f  3      
.L_73ca0:                                #        0x73072  0      
  addl 0xa8(%rsp), %edx                  #  1924  0x73072  7      
  movl 0x108(%rsp), %ecx                 #  1925  0x73079  7      
  testl %ecx, %ecx                       #  1926  0x73080  2      
  movq %rdx, 0xa8(%rsp)                  #  1927  0x73082  8      
  jg .L_73a80                            #  1928  0x7308a  6      
  xchgw %ax, %ax                         #  1929  0x73090  3      
  movl 0x120(%rsp), %edx                 #  1930  0x73093  7      
  testl %edx, %edx                       #  1931  0x7309a  2      
  jg .L_73a80                            #  1932  0x7309c  6      
  movq %r13, %r12                        #  1933  0x730a2  3      
  movl 0xf4(%rsp), %r13d                 #  1934  0x730a5  8      
  movq %rax, %rbx                        #  1935  0x730ad  3      
  nop                                    #  1936  0x730b0  1      
.L_73ce0:                                #        0x730b1  0      
  movl 0xd8(%rsp), %esi                  #  1937  0x730b1  7      
  cmpl %esi, 0xa8(%rsp)                  #  1938  0x730b8  7      
  movq 0xd8(%rsp), %rax                  #  1939  0x730bf  8      
  cmovbeq 0xa8(%rsp), %rax               #  1940  0x730c7  9      
  nop                                    #  1941  0x730d0  1      
  movq %rax, 0xa8(%rsp)                  #  1942  0x730d1  8      
  nop                                    #  1943  0x730d9  1      
  nop                                    #  1944  0x730da  1      
.L_73d20:                                #        0x730db  0      
  movl 0x27c(%rsp), %ecx                 #  1945  0x730db  7      
  cmpl 0x10c(%rsp), %ecx                 #  1946  0x730e2  7      
  jge .L_75320                           #  1947  0x730e9  6      
  nop                                    #  1948  0x730ef  1      
.L_73d40:                                #        0x730f0  0      
  movl 0x124(%rsp), %ecx                 #  1949  0x730f0  7      
  movl 0x110(%rsp), %edx                 #  1950  0x730f7  7      
  movl %ebx, %ebx                        #  1951  0x730fe  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  1952  0x73100  5      
  movl 0x214(%rsp), %eax                 #  1953  0x73105  7      
  nop                                    #  1954  0x7310c  1      
  addl %ecx, 0x218(%rsp)                 #  1955  0x7310d  7      
  movl %ebx, %ebx                        #  1956  0x73114  2      
  movl %edx, (%r15,%rbx,1)               #  1957  0x73116  4      
  addl $0x1, %eax                        #  1958  0x7311a  3      
  cmpl $0x7, %eax                        #  1959  0x7311d  3      
  movl %eax, 0x214(%rsp)                 #  1960  0x73120  7      
  jg .L_76160                            #  1961  0x73127  6      
  movl 0x27c(%rsp), %ecx                 #  1962  0x7312d  7      
  addl $0x8, %ebx                        #  1963  0x73134  3      
  nop                                    #  1964  0x73137  1      
  nop                                    #  1965  0x73138  1      
.L_73da0:                                #        0x73139  0      
  movl 0xc4(%rsp), %r8d                  #  1966  0x73139  8      
  movl 0x10c(%rsp), %esi                 #  1967  0x73141  7      
  subl 0xa8(%rsp), %r8d                  #  1968  0x73148  8      
  subl %ecx, %esi                        #  1969  0x73150  2      
  movl %esi, %ecx                        #  1970  0x73152  2      
  cmpl %r8d, %esi                        #  1971  0x73154  3      
  xchgw %ax, %ax                         #  1972  0x73157  3      
  cmovlel %esi, %r8d                     #  1973  0x7315a  4      
  testl %r8d, %r8d                       #  1974  0x7315e  3      
  jle .L_73e20                           #  1975  0x73161  6      
  movl 0xa8(%rsp), %eax                  #  1976  0x73167  7      
  movl %ebx, %ebx                        #  1977  0x7316e  2      
  movl %r8d, 0x4(%r15,%rbx,1)            #  1978  0x73170  5      
  addl %r8d, 0x218(%rsp)                 #  1979  0x73175  8      
  nop                                    #  1980  0x7317d  1      
  movl %ebx, %ebx                        #  1981  0x7317e  2      
  movl %eax, (%r15,%rbx,1)               #  1982  0x73180  4      
  movl 0x214(%rsp), %eax                 #  1983  0x73184  7      
  addl $0x1, %eax                        #  1984  0x7318b  3      
  cmpl $0x7, %eax                        #  1985  0x7318e  3      
  movl %eax, 0x214(%rsp)                 #  1986  0x73191  7      
  jg .L_761a0                            #  1987  0x73198  6      
  movl 0x10c(%rsp), %ecx                 #  1988  0x7319e  7      
  subl 0x27c(%rsp), %ecx                 #  1989  0x731a5  7      
  addl $0x8, %ebx                        #  1990  0x731ac  3      
  nop                                    #  1991  0x731af  1      
.L_73e20:                                #        0x731b0  0      
  xorl %eax, %eax                        #  1992  0x731b0  2      
  testl %r8d, %r8d                       #  1993  0x731b2  3      
  cmovnsl %r8d, %eax                     #  1994  0x731b5  4      
  subl %eax, %ecx                        #  1995  0x731b9  2      
  testl %ecx, %ecx                       #  1996  0x731bb  2      
  jle .L_71b00                           #  1997  0x731bd  6      
  cmpl $0x10, %ecx                       #  1998  0x731c3  3      
  jle .L_739a0                           #  1999  0x731c6  6      
  nop                                    #  2000  0x731cc  1      
  leal 0x210(%rsp), %edx                 #  2001  0x731cd  7      
  movq %rbx, %rax                        #  2002  0x731d4  3      
  movl %r13d, 0xa8(%rsp)                 #  2003  0x731d7  8      
  movl %ecx, %ebx                        #  2004  0x731df  2      
  movq %r12, %r13                        #  2005  0x731e1  3      
  movq 0xb8(%rsp), %r12                  #  2006  0x731e4  8      
  nop                                    #  2007  0x731ec  1      
  movq %rdx, 0x18(%rsp)                  #  2008  0x731ed  5      
  jmpq .L_73ec0                          #  2009  0x731f2  5      
  nop                                    #  2010  0x731f7  1      
  nop                                    #  2011  0x731f8  1      
.L_73e80:                                #        0x731f9  0      
  addl $0x8, %eax                        #  2012  0x731f9  3      
  nop                                    #  2013  0x731fc  1      
  nop                                    #  2014  0x731fd  1      
.L_73ea0:                                #        0x731fe  0      
  subl $0x10, %ebx                       #  2015  0x731fe  3      
  cmpl $0x10, %ebx                       #  2016  0x73201  3      
  jle .L_73980                           #  2017  0x73204  6      
  nop                                    #  2018  0x7320a  1      
  nop                                    #  2019  0x7320b  1      
.L_73ec0:                                #        0x7320c  0      
  movl %eax, %eax                        #  2020  0x7320c  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  2021  0x7320e  9      
  movl 0x214(%rsp), %edx                 #  2022  0x73217  7      
  addl $0x10, 0x218(%rsp)                #  2023  0x7321e  8      
  nop                                    #  2024  0x73226  1      
  movl %eax, %eax                        #  2025  0x73227  2      
  movl $0x10024230, (%r15,%rax,1)        #  2026  0x73229  8      
  addl $0x1, %edx                        #  2027  0x73231  3      
  cmpl $0x7, %edx                        #  2028  0x73234  3      
  movl %edx, 0x214(%rsp)                 #  2029  0x73237  7      
  jle .L_73e80                           #  2030  0x7323e  6      
  movl 0x18(%rsp), %edx                  #  2031  0x73244  4      
  movl %r12d, %esi                       #  2032  0x73248  3      
  movl %r14d, %edi                       #  2033  0x7324b  3      
  nop                                    #  2034  0x7324e  1      
  nop                                    #  2035  0x7324f  1      
  callq .__sprint_r                      #  2036  0x73250  5      
  testl %eax, %eax                       #  2037  0x73255  2      
  jne .L_72c80                           #  2038  0x73257  6      
  leal 0x1d0(%rsp), %eax                 #  2039  0x7325d  7      
  jmpq .L_73ea0                          #  2040  0x73264  5      
  nop                                    #  2041  0x73269  1      
.L_73f40:                                #        0x7326a  0      
  movl %eax, %eax                        #  2042  0x7326a  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2043  0x7326c  5      
  movl 0x214(%rsp), %edx                 #  2044  0x73271  7      
  addl %ebx, 0x218(%rsp)                 #  2045  0x73278  7      
  movl %eax, %eax                        #  2046  0x7327f  2      
  movl $0x10024230, (%r15,%rax,1)        #  2047  0x73281  8      
  nop                                    #  2048  0x73289  1      
  addl $0x1, %edx                        #  2049  0x7328a  3      
  cmpl $0x7, %edx                        #  2050  0x7328d  3      
  movl %edx, 0x214(%rsp)                 #  2051  0x73290  7      
  jg .L_73c60                            #  2052  0x73297  6      
  movq 0xe8(%rsp), %rsi                  #  2053  0x7329d  8      
  addl $0x8, %eax                        #  2054  0x732a5  3      
  xchgw %ax, %ax                         #  2055  0x732a8  3      
  movl %esi, %esi                        #  2056  0x732ab  2      
  movsbl (%r15,%rsi,1), %edx             #  2057  0x732ad  5      
  jmpq .L_73ca0                          #  2058  0x732b2  5      
  nop                                    #  2059  0x732b7  1      
  nop                                    #  2060  0x732b8  1      
.L_73fa0:                                #        0x732b9  0      
  testb $0x1, %r13b                      #  2061  0x732b9  4      
  jne .L_73140                           #  2062  0x732bd  6      
  movl 0xa8(%rsp), %eax                  #  2063  0x732c3  7      
  movl %ebx, %ebx                        #  2064  0x732ca  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  2065  0x732cc  9      
  nop                                    #  2066  0x732d5  1      
  addl $0x1, 0x218(%rsp)                 #  2067  0x732d6  8      
  movl %ebx, %ebx                        #  2068  0x732de  2      
  movl %eax, (%r15,%rbx,1)               #  2069  0x732e0  4      
  movl 0x214(%rsp), %eax                 #  2070  0x732e4  7      
  addl $0x1, %eax                        #  2071  0x732eb  3      
  cmpl $0x7, %eax                        #  2072  0x732ee  3      
  nop                                    #  2073  0x732f1  1      
  movl %eax, 0x214(%rsp)                 #  2074  0x732f2  7      
  jg .L_74440                            #  2075  0x732f9  6      
  leal 0x8(%rbx), %eax                   #  2076  0x732ff  3      
  jmpq .L_73280                          #  2077  0x73302  5      
  nop                                    #  2078  0x73307  1      
.L_74000:                                #        0x73308  0      
  movl 0xb8(%rsp), %esi                  #  2079  0x73308  7      
  leal 0x210(%rsp), %edx                 #  2080  0x7330f  7      
  movl %r14d, %edi                       #  2081  0x73316  3      
  nop                                    #  2082  0x73319  1      
  callq .__sprint_r                      #  2083  0x7331a  5      
  testl %eax, %eax                       #  2084  0x7331f  2      
  jne .L_72c80                           #  2085  0x73321  6      
  leal 0x1d0(%rsp), %eax                 #  2086  0x73327  7      
  jmpq .L_731a0                          #  2087  0x7332e  5      
  nop                                    #  2088  0x73333  1      
.L_74040:                                #        0x73334  0      
  movl 0xb8(%rsp), %esi                  #  2089  0x73334  7      
  leal 0x210(%rsp), %edx                 #  2090  0x7333b  7      
  movl %r14d, %edi                       #  2091  0x73342  3      
  nop                                    #  2092  0x73345  1      
  callq .__sprint_r                      #  2093  0x73346  5      
  testl %eax, %eax                       #  2094  0x7334b  2      
  jne .L_72c80                           #  2095  0x7334d  6      
  leal 0x1d0(%rsp), %eax                 #  2096  0x73353  7      
  jmpq .L_73200                          #  2097  0x7335a  5      
  nop                                    #  2098  0x7335f  1      
.L_74080:                                #        0x73360  0      
  movl 0x130(%rsp), %r11d                #  2099  0x73360  8      
  movq 0x100(%rsp), %rax                 #  2100  0x73368  8      
  movl %r13d, %r9d                       #  2101  0x73370  3      
  movl %r10d, 0xb0(%rsp)                 #  2102  0x73373  8      
  nop                                    #  2103  0x7337b  1      
  andl $0x400, %r9d                      #  2104  0x7337c  7      
  movq %rbx, %r10                        #  2105  0x73383  3      
  movl $0x0, 0x10c(%rsp)                 #  2106  0x73386  11     
  movq $0xcccccccccccccccd, %r8          #  2107  0x73391  10     
  nop                                    #  2108  0x7339b  1      
  xorl %edi, %edi                        #  2109  0x7339c  2      
  negl %r11d                             #  2110  0x7339e  3      
  movq %rax, %rbx                        #  2111  0x733a1  3      
  movl %r11d, 0xa8(%rsp)                 #  2112  0x733a4  8      
  movq %r12, %r11                        #  2113  0x733ac  3      
  movq 0xe8(%rsp), %r12                  #  2114  0x733af  8      
  jmpq .L_74120                          #  2115  0x733b7  5      
  nop                                    #  2116  0x733bc  1      
.L_740e0:                                #        0x733bd  0      
  movq %r12, %rsi                        #  2117  0x733bd  3      
  nop                                    #  2118  0x733c0  1      
  nop                                    #  2119  0x733c1  1      
.L_74100:                                #        0x733c2  0      
  movq %rcx, %rax                        #  2120  0x733c2  3      
  mulq %r8                               #  2121  0x733c5  3      
  movq %rdx, %rcx                        #  2122  0x733c8  3      
  shrq $0x3, %rcx                        #  2123  0x733cb  4      
  testq %rcx, %rcx                       #  2124  0x733cf  3      
  je .L_743c0                            #  2125  0x733d2  6      
  movq %rsi, %r12                        #  2126  0x733d8  3      
  nop                                    #  2127  0x733db  1      
.L_74120:                                #        0x733dc  0      
  movq %rcx, %rax                        #  2128  0x733dc  3      
  subl $0x1, %ebx                        #  2129  0x733df  3      
  addl $0x1, %edi                        #  2130  0x733e2  3      
  mulq %r8                               #  2131  0x733e5  3      
  shrq $0x3, %rdx                        #  2132  0x733e8  4      
  leaq (%rdx,%rdx,4), %rax               #  2133  0x733ec  4      
  movq %rcx, %rdx                        #  2134  0x733f0  3      
  addq %rax, %rax                        #  2135  0x733f3  3      
  subq %rax, %rdx                        #  2136  0x733f6  3      
  movq %rdx, %rax                        #  2137  0x733f9  3      
  addl $0x30, %eax                       #  2138  0x733fc  3      
  testl %r9d, %r9d                       #  2139  0x733ff  3      
  movl %ebx, %ebx                        #  2140  0x73402  2      
  movb %al, (%r15,%rbx,1)                #  2141  0x73404  4      
  je .L_740e0                            #  2142  0x73408  6      
  movl %r12d, %r12d                      #  2143  0x7340e  3      
  movzbl (%r15,%r12,1), %eax             #  2144  0x73411  5      
  movsbl %al, %edx                       #  2145  0x73416  3      
  cmpl %edx, %edi                        #  2146  0x73419  2      
  nop                                    #  2147  0x7341b  1      
  jne .L_740e0                           #  2148  0x7341c  6      
  cmpb $0x7f, %al                        #  2149  0x73422  2      
  je .L_740e0                            #  2150  0x73424  6      
  cmpq $0x9, %rcx                        #  2151  0x7342a  4      
  jbe .L_740e0                           #  2152  0x7342e  6      
  addl 0xa8(%rsp), %ebx                  #  2153  0x73434  7      
  nop                                    #  2154  0x7343b  1      
  movl 0x140(%rsp), %esi                 #  2155  0x7343c  7      
  movl 0x130(%rsp), %edx                 #  2156  0x73443  7      
  movq %rcx, 0x90(%rsp)                  #  2157  0x7344a  8      
  movq %r8, 0x80(%rsp)                   #  2158  0x73452  8      
  xchgw %ax, %ax                         #  2159  0x7345a  3      
  movl %r9d, 0xa0(%rsp)                  #  2160  0x7345d  8      
  movq %r10, 0x88(%rsp)                  #  2161  0x73465  8      
  movq %r11, 0x98(%rsp)                  #  2162  0x7346d  8      
  movl %ebx, %edi                        #  2163  0x73475  2      
  nop                                    #  2164  0x73477  1      
  callq .strncpy                         #  2165  0x73478  5      
  leal 0x1(%r12), %esi                   #  2166  0x7347d  5      
  xorl %edi, %edi                        #  2167  0x73482  2      
  movq 0x90(%rsp), %rcx                  #  2168  0x73484  8      
  movq 0x80(%rsp), %r8                   #  2169  0x7348c  8      
  movl 0xa0(%rsp), %r9d                  #  2170  0x73494  8      
  nop                                    #  2171  0x7349c  1      
  movl %esi, %esi                        #  2172  0x7349d  2      
  cmpb $0x0, (%r15,%rsi,1)               #  2173  0x7349f  5      
  movq 0x88(%rsp), %r10                  #  2174  0x734a4  8      
  movq 0x98(%rsp), %r11                  #  2175  0x734ac  8      
  jne .L_74100                           #  2176  0x734b4  6      
  nop                                    #  2177  0x734ba  1      
  jmpq .L_740e0                          #  2178  0x734bb  5      
  nop                                    #  2179  0x734c0  1      
  nop                                    #  2180  0x734c1  1      
.L_74220:                                #        0x734c2  0      
  movq %r13, %r12                        #  2181  0x734c2  3      
  movl 0xa8(%rsp), %r13d                 #  2182  0x734c5  8      
  nop                                    #  2183  0x734cd  1      
  nop                                    #  2184  0x734ce  1      
.L_74240:                                #        0x734cf  0      
  movl %eax, %eax                        #  2185  0x734cf  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  2186  0x734d1  5      
  movl %eax, %eax                        #  2187  0x734d6  2      
  movl $0x10024230, (%r15,%rax,1)        #  2188  0x734d8  8      
  addl %ebx, 0x218(%rsp)                 #  2189  0x734e0  7      
  jmpq .L_73260                          #  2190  0x734e7  5      
  nop                                    #  2191  0x734ec  1      
.L_74260:                                #        0x734ed  0      
  leal 0x240(%rsp), %ecx                 #  2192  0x734ed  7      
  movl $0x8, %edx                        #  2193  0x734f4  5      
  xorl %esi, %esi                        #  2194  0x734f9  2      
  movl %ecx, %edi                        #  2195  0x734fb  2      
  movq %rcx, 0x90(%rsp)                  #  2196  0x734fd  8      
  nop                                    #  2197  0x73505  1      
  callq .memset                          #  2198  0x73506  5      
  movq 0xc8(%rsp), %rax                  #  2199  0x7350b  8      
  movq 0x90(%rsp), %rcx                  #  2200  0x73513  8      
  movl %eax, %eax                        #  2201  0x7351b  2      
  movl (%r15,%rax,1), %edx               #  2202  0x7351d  4      
  cmpl $0x2f, %edx                       #  2203  0x73521  3      
  jbe .L_75020                           #  2204  0x73524  6      
  nop                                    #  2205  0x7352a  1      
  movq 0xc8(%rsp), %rdx                  #  2206  0x7352b  8      
  movq 0xc8(%rsp), %rsi                  #  2207  0x73533  8      
  movl %edx, %edx                        #  2208  0x7353b  2      
  movl 0x8(%r15,%rdx,1), %eax            #  2209  0x7353d  5      
  leal 0x8(%rax), %edx                   #  2210  0x73542  3      
  nop                                    #  2211  0x73545  1      
  movl %esi, %esi                        #  2212  0x73546  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  2213  0x73548  5      
  nop                                    #  2214  0x7354d  1      
  nop                                    #  2215  0x7354e  1      
.L_742e0:                                #        0x7354f  0      
  movl %eax, %eax                        #  2216  0x7354f  2      
  movl (%r15,%rax,1), %edx               #  2217  0x73551  4      
  movl 0x68(%rsp), %esi                  #  2218  0x73555  4      
  movl %r14d, %edi                       #  2219  0x73559  3      
  nop                                    #  2220  0x7355c  1      
  callq ._wcrtomb_r                      #  2221  0x7355d  5      
  cmpl $0xffffffff, %eax                 #  2222  0x73562  5      
  movl %eax, 0xc4(%rsp)                  #  2223  0x73567  7      
  je .L_76a40                            #  2224  0x7356e  6      
  nop                                    #  2225  0x73574  1      
  nop                                    #  2226  0x73575  1      
.L_74320:                                #        0x73576  0      
  movl 0xc4(%rsp), %edx                  #  2227  0x73576  7      
  movl $0x0, %eax                        #  2228  0x7357d  5      
  movb $0x0, 0x28f(%rsp)                 #  2229  0x73582  8      
  testl %edx, %edx                       #  2230  0x7358a  2      
  cmovnsl 0xc4(%rsp), %eax               #  2231  0x7358c  8      
  xchgw %ax, %ax                         #  2232  0x73594  3      
  leal 0x160(%rsp), %edx                 #  2233  0x73597  7      
  movq %rdx, 0xa8(%rsp)                  #  2234  0x7359e  8      
  movl %eax, 0xb0(%rsp)                  #  2235  0x735a6  7      
  xorl %eax, %eax                        #  2236  0x735ad  2      
  nop                                    #  2237  0x735af  1      
.L_74360:                                #        0x735b0  0      
  movq $0x0, 0xe0(%rsp)                  #  2238  0x735b0  12     
  movl $0x0, 0xfc(%rsp)                  #  2239  0x735bc  11     
  nop                                    #  2240  0x735c7  1      
  movl $0x0, 0x108(%rsp)                 #  2241  0x735c8  11     
  movl $0x0, 0x120(%rsp)                 #  2242  0x735d3  11     
  nop                                    #  2243  0x735de  1      
  movl $0x0, 0x11c(%rsp)                 #  2244  0x735df  11     
  jmpq .L_716c0                          #  2245  0x735ea  5      
  nop                                    #  2246  0x735ef  1      
  nop                                    #  2247  0x735f0  1      
.L_743c0:                                #        0x735f1  0      
  movq %rbx, 0xa8(%rsp)                  #  2248  0x735f1  8      
  movl 0x100(%rsp), %ecx                 #  2249  0x735f9  7      
  movq %r10, %rbx                        #  2250  0x73600  3      
  subl 0xa8(%rsp), %ecx                  #  2251  0x73603  7      
  movq %r11, %r12                        #  2252  0x7360a  3      
  nop                                    #  2253  0x7360d  1      
  movl %edi, 0x10c(%rsp)                 #  2254  0x7360e  7      
  movl 0xb0(%rsp), %r10d                 #  2255  0x73615  8      
  movl %ecx, 0xc4(%rsp)                  #  2256  0x7361d  7      
  jmpq .L_721e0                          #  2257  0x73624  5      
  nop                                    #  2258  0x73629  1      
.L_74400:                                #        0x7362a  0      
  movl 0xb8(%rsp), %esi                  #  2259  0x7362a  7      
  leal 0x210(%rsp), %edx                 #  2260  0x73631  7      
  movl %r14d, %edi                       #  2261  0x73638  3      
  nop                                    #  2262  0x7363b  1      
  callq .__sprint_r                      #  2263  0x7363c  5      
  testl %eax, %eax                       #  2264  0x73641  2      
  jne .L_72c80                           #  2265  0x73643  6      
  leal 0x1d0(%rsp), %ebx                 #  2266  0x73649  7      
  jmpq .L_71940                          #  2267  0x73650  5      
  nop                                    #  2268  0x73655  1      
.L_74440:                                #        0x73656  0      
  movl 0xb8(%rsp), %esi                  #  2269  0x73656  7      
  leal 0x210(%rsp), %edx                 #  2270  0x7365d  7      
  movl %r14d, %edi                       #  2271  0x73664  3      
  nop                                    #  2272  0x73667  1      
  callq .__sprint_r                      #  2273  0x73668  5      
  testl %eax, %eax                       #  2274  0x7366d  2      
  jne .L_72c80                           #  2275  0x7366f  6      
  leal 0x1d0(%rsp), %eax                 #  2276  0x73675  7      
  jmpq .L_73280                          #  2277  0x7367c  5      
  nop                                    #  2278  0x73681  1      
.L_74480:                                #        0x73682  0      
  movl 0x20(%rsp), %edx                  #  2279  0x73682  4      
  movl %r12d, %esi                       #  2280  0x73686  3      
  movl %r14d, %edi                       #  2281  0x73689  3      
  xchgw %ax, %ax                         #  2282  0x7368c  3      
  nop                                    #  2283  0x7368f  1      
  callq .__sprint_r                      #  2284  0x73690  5      
  testl %eax, %eax                       #  2285  0x73695  2      
  jne .L_72c80                           #  2286  0x73697  6      
  leal 0x1d0(%rsp), %eax                 #  2287  0x7369d  7      
  jmpq .L_73b00                          #  2288  0x736a4  5      
  nop                                    #  2289  0x736a9  1      
.L_744c0:                                #        0x736aa  0      
  cmpb $0x30, %al                        #  2290  0x736aa  2      
  je .L_75920                            #  2291  0x736ac  6      
  movl 0xa8(%rsp), %eax                  #  2292  0x736b2  7      
  subl $0x1, %eax                        #  2293  0x736b9  3      
  movq %rax, 0xa8(%rsp)                  #  2294  0x736bc  8      
  nop                                    #  2295  0x736c4  1      
  movl %eax, %eax                        #  2296  0x736c5  2      
  movb $0x30, (%r15,%rax,1)              #  2297  0x736c7  5      
  movl 0x100(%rsp), %edx                 #  2298  0x736cc  7      
  movq 0xe8(%rsp), %rsi                  #  2299  0x736d3  8      
  subl %eax, %edx                        #  2300  0x736db  2      
  movl %edx, 0xc4(%rsp)                  #  2301  0x736dd  7      
  nop                                    #  2302  0x736e4  1      
  jmpq .L_721e0                          #  2303  0x736e5  5      
  nop                                    #  2304  0x736ea  1      
  nop                                    #  2305  0x736eb  1      
.L_74520:                                #        0x736ec  0      
  negq %rcx                              #  2306  0x736ec  3      
  movb $0x2d, 0x28f(%rsp)                #  2307  0x736ef  8      
  movl $0x1, %eax                        #  2308  0x736f7  5      
  setne %sil                             #  2309  0x736fc  4      
  jmpq .L_72120                          #  2310  0x73700  5      
  nop                                    #  2311  0x73705  1      
.L_74540:                                #        0x73706  0      
  movq 0xc8(%rsp), %rsi                  #  2312  0x73706  8      
  movl %esi, %esi                        #  2313  0x7370e  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2314  0x73710  5      
  leal 0x8(%rdx), %eax                   #  2315  0x73715  3      
  movl %esi, %esi                        #  2316  0x73718  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2317  0x7371a  5      
  jmpq .L_723a0                          #  2318  0x7371f  5      
  xchgw %ax, %ax                         #  2319  0x73724  3      
.L_74560:                                #        0x73727  0      
  testb $0x40, %r13b                     #  2320  0x73727  4      
  jne .L_75240                           #  2321  0x7372b  6      
  testl $0x200, %r13d                    #  2322  0x73731  7      
  je .L_75ae0                            #  2323  0x73738  6      
  movq 0xc8(%rsp), %rax                  #  2324  0x7373e  8      
  nop                                    #  2325  0x73746  1      
  movl %eax, %eax                        #  2326  0x73747  2      
  movl (%r15,%rax,1), %edx               #  2327  0x73749  4      
  cmpl $0x2f, %edx                       #  2328  0x7374d  3      
  ja .L_76240                            #  2329  0x73750  6      
  movq %rax, %rcx                        #  2330  0x73756  3      
  movl %eax, %eax                        #  2331  0x73759  2      
  movl 0xc(%r15,%rax,1), %eax            #  2332  0x7375b  5      
  addl %edx, %eax                        #  2333  0x73760  2      
  addl $0x8, %edx                        #  2334  0x73762  3      
  xchgw %ax, %ax                         #  2335  0x73765  3      
  movl %ecx, %ecx                        #  2336  0x73768  2      
  movl %edx, (%r15,%rcx,1)               #  2337  0x7376a  4      
  nop                                    #  2338  0x7376e  1      
  nop                                    #  2339  0x7376f  1      
.L_745c0:                                #        0x73770  0      
  movl %eax, %eax                        #  2340  0x73770  2      
  movzbl (%r15,%rax,1), %ecx             #  2341  0x73772  5      
  movl $0x1, %eax                        #  2342  0x73777  5      
  testq %rcx, %rcx                       #  2343  0x7377c  3      
  setne %sil                             #  2344  0x7377f  4      
  jmpq .L_72100                          #  2345  0x73783  5      
  nop                                    #  2346  0x73788  1      
.L_745e0:                                #        0x73789  0      
  movq 0xc8(%rsp), %rsi                  #  2347  0x73789  8      
  movl %esi, %esi                        #  2348  0x73791  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2349  0x73793  5      
  leal 0x8(%rdx), %eax                   #  2350  0x73798  3      
  movl %esi, %esi                        #  2351  0x7379b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2352  0x7379d  5      
  jmpq .L_72580                          #  2353  0x737a2  5      
  xchgw %ax, %ax                         #  2354  0x737a7  3      
.L_74600:                                #        0x737aa  0      
  movq 0xc8(%rsp), %rsi                  #  2355  0x737aa  8      
  movl %esi, %esi                        #  2356  0x737b2  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2357  0x737b4  5      
  leal 0x8(%rdx), %eax                   #  2358  0x737b9  3      
  movl %esi, %esi                        #  2359  0x737bc  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2360  0x737be  5      
  jmpq .L_720a0                          #  2361  0x737c3  5      
  xchgw %ax, %ax                         #  2362  0x737c8  3      
.L_74620:                                #        0x737cb  0      
  movq 0xc8(%rsp), %rax                  #  2363  0x737cb  8      
  movq 0xc8(%rsp), %rsi                  #  2364  0x737d3  8      
  movl %eax, %eax                        #  2365  0x737db  2      
  movl 0x8(%r15,%rax,1), %ecx            #  2366  0x737dd  5      
  leal 0x8(%rcx), %eax                   #  2367  0x737e2  3      
  nop                                    #  2368  0x737e5  1      
  movl %esi, %esi                        #  2369  0x737e6  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2370  0x737e8  5      
  jmpq .L_71de0                          #  2371  0x737ed  5      
  nop                                    #  2372  0x737f2  1      
  nop                                    #  2373  0x737f3  1      
.L_74660:                                #        0x737f4  0      
  movl 0xe8(%rsp), %ebx                  #  2374  0x737f4  7      
  subl $0x1, 0x120(%rsp)                 #  2375  0x737fb  8      
  subl $0x1, %ebx                        #  2376  0x73803  3      
  movq %rbx, 0xe8(%rsp)                  #  2377  0x73806  8      
  jmpq .L_73aa0                          #  2378  0x7380e  5      
  nop                                    #  2379  0x73813  1      
.L_74680:                                #        0x73814  0      
  testb $0x10, %r13b                     #  2380  0x73814  4      
  jne .L_751e0                           #  2381  0x73818  6      
  testb $0x40, %r13b                     #  2382  0x7381e  4      
  je .L_75b40                            #  2383  0x73822  6      
  movq 0xc8(%rsp), %rcx                  #  2384  0x73828  8      
  nop                                    #  2385  0x73830  1      
  movl %ecx, %ecx                        #  2386  0x73831  2      
  movl (%r15,%rcx,1), %edx               #  2387  0x73833  4      
  cmpl $0x2f, %edx                       #  2388  0x73837  3      
  ja .L_762c0                            #  2389  0x7383a  6      
  movl %ecx, %ecx                        #  2390  0x73840  2      
  movl 0xc(%r15,%rcx,1), %eax            #  2391  0x73842  5      
  addl %edx, %eax                        #  2392  0x73847  2      
  addl $0x8, %edx                        #  2393  0x73849  3      
  nop                                    #  2394  0x7384c  1      
  movl %ecx, %ecx                        #  2395  0x7384d  2      
  movl %edx, (%r15,%rcx,1)               #  2396  0x7384f  4      
  nop                                    #  2397  0x73853  1      
  nop                                    #  2398  0x73854  1      
.L_746e0:                                #        0x73855  0      
  movl %eax, %eax                        #  2399  0x73855  2      
  movl (%r15,%rax,1), %eax               #  2400  0x73857  4      
  movzwl 0xd0(%rsp), %edx                #  2401  0x7385b  8      
  movl %eax, %eax                        #  2402  0x73863  2      
  movw %dx, (%r15,%rax,1)                #  2403  0x73865  5      
  jmpq .L_71d40                          #  2404  0x7386a  5      
  nop                                    #  2405  0x7386f  1      
.L_74700:                                #        0x73870  0      
  movq 0xc8(%rsp), %rsi                  #  2406  0x73870  8      
  movl %esi, %esi                        #  2407  0x73878  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2408  0x7387a  5      
  leal 0x8(%rdx), %eax                   #  2409  0x7387f  3      
  movl %esi, %esi                        #  2410  0x73882  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2411  0x73884  5      
  jmpq .L_72760                          #  2412  0x73889  5      
  xchgw %ax, %ax                         #  2413  0x7388e  3      
.L_74720:                                #        0x73891  0      
  testb $0x40, %r13b                     #  2414  0x73891  4      
  jne .L_75120                           #  2415  0x73895  6      
  testl $0x200, %r13d                    #  2416  0x7389b  7      
  je .L_75a80                            #  2417  0x738a2  6      
  movq 0xc8(%rsp), %rax                  #  2418  0x738a8  8      
  nop                                    #  2419  0x738b0  1      
  movl %eax, %eax                        #  2420  0x738b1  2      
  movl (%r15,%rax,1), %edx               #  2421  0x738b3  4      
  cmpl $0x2f, %edx                       #  2422  0x738b7  3      
  ja .L_76280                            #  2423  0x738ba  6      
  movq %rax, %rcx                        #  2424  0x738c0  3      
  movl %eax, %eax                        #  2425  0x738c3  2      
  movl 0xc(%r15,%rax,1), %eax            #  2426  0x738c5  5      
  addl %edx, %eax                        #  2427  0x738ca  2      
  addl $0x8, %edx                        #  2428  0x738cc  3      
  xchgw %ax, %ax                         #  2429  0x738cf  3      
  movl %ecx, %ecx                        #  2430  0x738d2  2      
  movl %edx, (%r15,%rcx,1)               #  2431  0x738d4  4      
  nop                                    #  2432  0x738d8  1      
  nop                                    #  2433  0x738d9  1      
.L_74780:                                #        0x738da  0      
  movl %eax, %eax                        #  2434  0x738da  2      
  movsbq (%r15,%rax,1), %rcx             #  2435  0x738dc  5      
  jmpq .L_723c0                          #  2436  0x738e1  5      
  nop                                    #  2437  0x738e6  1      
  nop                                    #  2438  0x738e7  1      
.L_747a0:                                #        0x738e8  0      
  movq 0xc8(%rsp), %rsi                  #  2439  0x738e8  8      
  movl %esi, %esi                        #  2440  0x738f0  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2441  0x738f2  5      
  leal 0x8(%rdx), %eax                   #  2442  0x738f7  3      
  movl %esi, %esi                        #  2443  0x738fa  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2444  0x738fc  5      
  jmpq .L_72440                          #  2445  0x73901  5      
  xchgw %ax, %ax                         #  2446  0x73906  3      
.L_747c0:                                #        0x73909  0      
  movq 0xc8(%rsp), %rsi                  #  2447  0x73909  8      
  movl %esi, %esi                        #  2448  0x73911  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2449  0x73913  5      
  leal 0x8(%rdx), %eax                   #  2450  0x73918  3      
  movl %esi, %esi                        #  2451  0x7391b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2452  0x7391d  5      
  jmpq .L_72600                          #  2453  0x73922  5      
  xchgw %ax, %ax                         #  2454  0x73927  3      
.L_747e0:                                #        0x7392a  0      
  testb $0x40, %r13b                     #  2455  0x7392a  4      
  jne .L_75180                           #  2456  0x7392e  6      
  testl $0x200, %r13d                    #  2457  0x73934  7      
  je .L_759c0                            #  2458  0x7393b  6      
  movq 0xc8(%rsp), %rax                  #  2459  0x73941  8      
  nop                                    #  2460  0x73949  1      
  movl %eax, %eax                        #  2461  0x7394a  2      
  movl (%r15,%rax,1), %edx               #  2462  0x7394c  4      
  cmpl $0x2f, %edx                       #  2463  0x73950  3      
  ja .L_76360                            #  2464  0x73953  6      
  movq %rax, %rcx                        #  2465  0x73959  3      
  movl %eax, %eax                        #  2466  0x7395c  2      
  movl 0xc(%r15,%rax,1), %eax            #  2467  0x7395e  5      
  addl %edx, %eax                        #  2468  0x73963  2      
  addl $0x8, %edx                        #  2469  0x73965  3      
  xchgw %ax, %ax                         #  2470  0x73968  3      
  movl %ecx, %ecx                        #  2471  0x7396b  2      
  movl %edx, (%r15,%rcx,1)               #  2472  0x7396d  4      
  nop                                    #  2473  0x73971  1      
  nop                                    #  2474  0x73972  1      
.L_74840:                                #        0x73973  0      
  movl %eax, %eax                        #  2475  0x73973  2      
  movzbl (%r15,%rax,1), %ecx             #  2476  0x73975  5      
  jmpq .L_72780                          #  2477  0x7397a  5      
  nop                                    #  2478  0x7397f  1      
  nop                                    #  2479  0x73980  1      
.L_74860:                                #        0x73981  0      
  testb $0x40, %r13b                     #  2480  0x73981  4      
  jne .L_750c0                           #  2481  0x73985  6      
  testl $0x200, %r13d                    #  2482  0x7398b  7      
  je .L_75a20                            #  2483  0x73992  6      
  movq 0xc8(%rsp), %rax                  #  2484  0x73998  8      
  nop                                    #  2485  0x739a0  1      
  movl %eax, %eax                        #  2486  0x739a1  2      
  movl (%r15,%rax,1), %edx               #  2487  0x739a3  4      
  cmpl $0x2f, %edx                       #  2488  0x739a7  3      
  ja .L_76200                            #  2489  0x739aa  6      
  movq %rax, %rcx                        #  2490  0x739b0  3      
  movl %eax, %eax                        #  2491  0x739b3  2      
  movl 0xc(%r15,%rax,1), %eax            #  2492  0x739b5  5      
  addl %edx, %eax                        #  2493  0x739ba  2      
  addl $0x8, %edx                        #  2494  0x739bc  3      
  xchgw %ax, %ax                         #  2495  0x739bf  3      
  movl %ecx, %ecx                        #  2496  0x739c2  2      
  movl %edx, (%r15,%rcx,1)               #  2497  0x739c4  4      
  nop                                    #  2498  0x739c8  1      
  nop                                    #  2499  0x739c9  1      
.L_748c0:                                #        0x739ca  0      
  movl %eax, %eax                        #  2500  0x739ca  2      
  movzbl (%r15,%rax,1), %ecx             #  2501  0x739cc  5      
  jmpq .L_72620                          #  2502  0x739d1  5      
  nop                                    #  2503  0x739d6  1      
  nop                                    #  2504  0x739d7  1      
.L_748e0:                                #        0x739d8  0      
  movsd 0x128(%rsp), %xmm0               #  2505  0x739d8  9      
  movl %r10d, 0x88(%rsp)                 #  2506  0x739e1  8      
  nop                                    #  2507  0x739e9  1      
  callq .__fpclassifyd                   #  2508  0x739ea  5      
  testl %eax, %eax                       #  2509  0x739ef  2      
  movl 0x88(%rsp), %r10d                 #  2510  0x739f1  8      
  je .L_75040                            #  2511  0x739f9  6      
  cmpl $0x61, 0xf8(%rsp)                 #  2512  0x739ff  8      
  sete 0xc4(%rsp)                        #  2513  0x73a07  8      
  cmpl $0x41, 0xf8(%rsp)                 #  2514  0x73a0f  8      
  sete %al                               #  2515  0x73a17  3      
  orb 0xc4(%rsp), %al                    #  2516  0x73a1a  7      
  movb %al, 0xf4(%rsp)                   #  2517  0x73a21  7      
  je .L_75be0                            #  2518  0x73a28  6      
  nop                                    #  2519  0x73a2e  1      
  cmpb $0x1, 0xc4(%rsp)                  #  2520  0x73a2f  8      
  movb $0x30, 0x280(%rsp)                #  2521  0x73a37  8      
  sbbl %eax, %eax                        #  2522  0x73a3f  2      
  orl $0x2, %r13d                        #  2523  0x73a41  4      
  andl $0xffffffe0, %eax                 #  2524  0x73a45  5      
  addl $0x78, %eax                       #  2525  0x73a4a  3      
  cmpl $0x63, %r10d                      #  2526  0x73a4d  4      
  movb %al, 0x281(%rsp)                  #  2527  0x73a51  7      
  jg .L_76880                            #  2528  0x73a58  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2529  0x73a5e  8      
  nop                                    #  2530  0x73a66  1      
  movq $0x0, 0xe0(%rsp)                  #  2531  0x73a67  12     
  sete %r11b                             #  2532  0x73a73  4      
  cmpl $0x47, 0xf8(%rsp)                 #  2533  0x73a77  8      
  sete %al                               #  2534  0x73a7f  3      
  orl %eax, %r11d                        #  2535  0x73a82  3      
  xchgw %ax, %ax                         #  2536  0x73a85  3      
  leal 0x160(%rsp), %eax                 #  2537  0x73a88  7      
  movq %rax, 0xa8(%rsp)                  #  2538  0x73a8f  8      
  xchgw %ax, %ax                         #  2539  0x73a97  3      
  nop                                    #  2540  0x73a9a  1      
.L_749c0:                                #        0x73a9b  0      
  movsd 0x128(%rsp), %xmm0               #  2541  0x73a9b  9      
  orl $0x100, %r13d                      #  2542  0x73aa4  7      
  movb $0x0, 0xd8(%rsp)                  #  2543  0x73aab  8      
  nop                                    #  2544  0x73ab3  1      
  movsd %xmm0, 0x220(%rsp)               #  2545  0x73ab4  9      
  movl 0x224(%rsp), %eax                 #  2546  0x73abd  7      
  testl %eax, %eax                       #  2547  0x73ac4  2      
  js .L_76520                            #  2548  0x73ac6  6      
  nop                                    #  2549  0x73acc  1      
.L_74a00:                                #        0x73acd  0      
  cmpb $0x0, 0xf4(%rsp)                  #  2550  0x73acd  8      
  jne .L_76380                           #  2551  0x73ad5  6      
  cmpl $0x46, 0xf8(%rsp)                 #  2552  0x73adb  8      
  sete %al                               #  2553  0x73ae3  3      
  nop                                    #  2554  0x73ae6  1      
  cmpl $0x66, 0xf8(%rsp)                 #  2555  0x73ae7  8      
  sete %dl                               #  2556  0x73aef  3      
  orb %dl, %al                           #  2557  0x73af2  2      
  movb %al, 0xf4(%rsp)                   #  2558  0x73af4  7      
  je .L_76020                            #  2559  0x73afb  6      
  nop                                    #  2560  0x73b01  1      
  movl %r10d, 0xc4(%rsp)                 #  2561  0x73b02  8      
  movl $0x3, %esi                        #  2562  0x73b0a  5      
  nop                                    #  2563  0x73b0f  1      
  nop                                    #  2564  0x73b10  1      
.L_74a60:                                #        0x73b11  0      
  movl 0xc4(%rsp), %edx                  #  2565  0x73b11  7      
  leal 0x27c(%rsp), %ecx                 #  2566  0x73b18  7      
  movl %esp, %r9d                        #  2567  0x73b1f  3      
  movl %esp, %r8d                        #  2568  0x73b22  3      
  movsd 0xb0(%rsp), %xmm0                #  2569  0x73b25  9      
  nop                                    #  2570  0x73b2e  1      
  addl $0x26c, %r9d                      #  2571  0x73b2f  7      
  addl $0x270, %r8d                      #  2572  0x73b36  7      
  movl %r14d, %edi                       #  2573  0x73b3d  3      
  movl %r10d, 0x88(%rsp)                 #  2574  0x73b40  8      
  nop                                    #  2575  0x73b48  1      
  movb %r11b, 0x98(%rsp)                 #  2576  0x73b49  8      
  nop                                    #  2577  0x73b51  1      
  nop                                    #  2578  0x73b52  1      
  callq ._dtoa_r                         #  2579  0x73b53  5      
  cmpl $0x47, 0xf8(%rsp)                 #  2580  0x73b58  8      
  movl %eax, %eax                        #  2581  0x73b60  2      
  movl 0x88(%rsp), %r10d                 #  2582  0x73b62  8      
  movq %rax, 0xa8(%rsp)                  #  2583  0x73b6a  8      
  nop                                    #  2584  0x73b72  1      
  movzbl 0x98(%rsp), %r11d               #  2585  0x73b73  9      
  je .L_76000                            #  2586  0x73b7c  6      
  cmpl $0x67, 0xf8(%rsp)                 #  2587  0x73b82  8      
  je .L_76000                            #  2588  0x73b8a  6      
  nop                                    #  2589  0x73b90  1      
.L_74b00:                                #        0x73b91  0      
  movl 0xc4(%rsp), %edx                  #  2590  0x73b91  7      
  addl 0xa8(%rsp), %edx                  #  2591  0x73b98  7      
  cmpb $0x0, 0xf4(%rsp)                  #  2592  0x73b9f  8      
  xorpd %xmm1, %xmm1                     #  2593  0x73ba7  4      
  je .L_74b60                            #  2594  0x73bab  6      
  nop                                    #  2595  0x73bb1  1      
  movq 0xa8(%rsp), %rcx                  #  2596  0x73bb2  8      
  movl %ecx, %ecx                        #  2597  0x73bba  2      
  cmpb $0x30, (%r15,%rcx,1)              #  2598  0x73bbc  5      
  je .L_76a80                            #  2599  0x73bc1  6      
  movl 0x27c(%rsp), %eax                 #  2600  0x73bc7  7      
  xorpd %xmm1, %xmm1                     #  2601  0x73bce  4      
.L_74b40:                                #        0x73bd2  0      
  leal (%rax,%rdx,1), %edx               #  2602  0x73bd2  3      
  nop                                    #  2603  0x73bd5  1      
  nop                                    #  2604  0x73bd6  1      
.L_74b60:                                #        0x73bd7  0      
  movsd 0xb0(%rsp), %xmm0                #  2605  0x73bd7  9      
  ucomisd %xmm1, %xmm0                   #  2606  0x73be0  4      
  jne .L_765e0                           #  2607  0x73be4  6      
  jp .L_765e0                            #  2608  0x73bea  6      
  movl %edx, 0x26c(%rsp)                 #  2609  0x73bf0  7      
.L_74b80:                                #        0x73bf7  0      
  subl 0xa8(%rsp), %edx                  #  2610  0x73bf7  7      
  testb %r11b, %r11b                     #  2611  0x73bfe  3      
  movl %edx, 0x10c(%rsp)                 #  2612  0x73c01  7      
  je .L_75c20                            #  2613  0x73c08  6      
  movl 0x27c(%rsp), %ecx                 #  2614  0x73c0e  7      
  xchgw %ax, %ax                         #  2615  0x73c15  3      
  cmpl $0xfffffffd, %ecx                 #  2616  0x73c18  6      
  jl .L_75ce0                            #  2617  0x73c1e  6      
  cmpl %ecx, %r10d                       #  2618  0x73c24  3      
  jl .L_75ce0                            #  2619  0x73c27  6      
  movl $0x67, 0xf8(%rsp)                 #  2620  0x73c2d  11     
  nop                                    #  2621  0x73c38  1      
.L_74bc0:                                #        0x73c39  0      
  cmpl %ecx, 0x10c(%rsp)                 #  2622  0x73c39  7      
  jg .L_76760                            #  2623  0x73c40  6      
  testb $0x1, %r13b                      #  2624  0x73c46  4      
  je .L_76840                            #  2625  0x73c4a  6      
  leal 0x1(%rcx), %edx                   #  2626  0x73c50  3      
  nop                                    #  2627  0x73c53  1      
  movl %edx, 0xc4(%rsp)                  #  2628  0x73c54  7      
  nop                                    #  2629  0x73c5b  1      
  nop                                    #  2630  0x73c5c  1      
.L_74c00:                                #        0x73c5d  0      
  testl $0x400, %r13d                    #  2631  0x73c5d  7      
  je .L_76120                            #  2632  0x73c64  6      
  testl %ecx, %ecx                       #  2633  0x73c6a  2      
  jle .L_76120                           #  2634  0x73c6c  6      
  movq 0xe8(%rsp), %rsi                  #  2635  0x73c72  8      
  nop                                    #  2636  0x73c7a  1      
  movq 0xe8(%rsp), %r8                   #  2637  0x73c7b  8      
  movl %esi, %esi                        #  2638  0x73c83  2      
  movzbl (%r15,%rsi,1), %eax             #  2639  0x73c85  5      
  movl $0x0, 0x108(%rsp)                 #  2640  0x73c8a  11     
  movl %ecx, %esi                        #  2641  0x73c95  2      
  nop                                    #  2642  0x73c97  1      
  movl $0x0, 0x120(%rsp)                 #  2643  0x73c98  11     
  jmpq .L_74ca0                          #  2644  0x73ca3  5      
  nop                                    #  2645  0x73ca8  1      
  nop                                    #  2646  0x73ca9  1      
.L_74c60:                                #        0x73caa  0      
  addl $0x1, 0x120(%rsp)                 #  2647  0x73caa  8      
  nop                                    #  2648  0x73cb2  1      
  nop                                    #  2649  0x73cb3  1      
.L_74c80:                                #        0x73cb4  0      
  subl %edi, %esi                        #  2650  0x73cb4  2      
  movl %ecx, %eax                        #  2651  0x73cb6  2      
  movq %rdx, %r8                         #  2652  0x73cb8  3      
  nop                                    #  2653  0x73cbb  1      
  nop                                    #  2654  0x73cbc  1      
.L_74ca0:                                #        0x73cbd  0      
  cmpb $0x7f, %al                        #  2655  0x73cbd  2      
  je .L_76720                            #  2656  0x73cbf  6      
  movsbl %al, %edi                       #  2657  0x73cc5  3      
  cmpl %edi, %esi                        #  2658  0x73cc8  2      
  jle .L_76720                           #  2659  0x73cca  6      
  leal 0x1(%r8), %edx                    #  2660  0x73cd0  4      
  movl %edx, %edx                        #  2661  0x73cd4  2      
  movzbl (%r15,%rdx,1), %ecx             #  2662  0x73cd6  5      
  testb %cl, %cl                         #  2663  0x73cdb  2      
  jne .L_74c60                           #  2664  0x73cdd  6      
  addl $0x1, 0x108(%rsp)                 #  2665  0x73ce3  8      
  movl %eax, %ecx                        #  2666  0x73ceb  2      
  movq %r8, %rdx                         #  2667  0x73ced  3      
  jmpq .L_74c80                          #  2668  0x73cf0  5      
  nop                                    #  2669  0x73cf5  1      
.L_74ce0:                                #        0x73cf6  0      
  movq 0xc8(%rsp), %rsi                  #  2670  0x73cf6  8      
  movl %esi, %esi                        #  2671  0x73cfe  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2672  0x73d00  5      
  leal 0x8(%rdx), %eax                   #  2673  0x73d05  3      
  movl %esi, %esi                        #  2674  0x73d08  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2675  0x73d0a  5      
  jmpq .L_728a0                          #  2676  0x73d0f  5      
  xchgw %ax, %ax                         #  2677  0x73d14  3      
.L_74d00:                                #        0x73d17  0      
  movq %r13, %r12                        #  2678  0x73d17  3      
  movl 0xf4(%rsp), %r13d                 #  2679  0x73d1a  8      
  movl %ebx, %ecx                        #  2680  0x73d22  2      
  movq %rax, %rbx                        #  2681  0x73d24  3      
  nop                                    #  2682  0x73d27  1      
  nop                                    #  2683  0x73d28  1      
.L_74d20:                                #        0x73d29  0      
  movl %ebx, %ebx                        #  2684  0x73d29  2      
  movl %ecx, 0x4(%r15,%rbx,1)            #  2685  0x73d2b  5      
  movl 0x214(%rsp), %eax                 #  2686  0x73d30  7      
  addl %ecx, 0x218(%rsp)                 #  2687  0x73d37  7      
  movl %ebx, %ebx                        #  2688  0x73d3e  2      
  movl $0x10024230, (%r15,%rbx,1)        #  2689  0x73d40  8      
  nop                                    #  2690  0x73d48  1      
  addl $0x1, %eax                        #  2691  0x73d49  3      
  cmpl $0x7, %eax                        #  2692  0x73d4c  3      
  movl %eax, 0x214(%rsp)                 #  2693  0x73d4f  7      
  jg .L_739c0                            #  2694  0x73d56  6      
  addl $0x8, %ebx                        #  2695  0x73d5c  3      
  jmpq .L_73a00                          #  2696  0x73d5f  5      
  nop                                    #  2697  0x73d64  1      
.L_74d60:                                #        0x73d65  0      
  movl 0xa8(%rsp), %edx                  #  2698  0x73d65  7      
  leal 0x230(%rsp), %ecx                 #  2699  0x73d6c  7      
  xorl %esi, %esi                        #  2700  0x73d73  2      
  movl %r10d, 0x88(%rsp)                 #  2701  0x73d75  8      
  movl %ecx, %edi                        #  2702  0x73d7d  2      
  movq %rcx, 0x58(%rsp)                  #  2703  0x73d7f  5      
  nop                                    #  2704  0x73d84  1      
  movl %edx, 0x274(%rsp)                 #  2705  0x73d85  7      
  movl $0x8, %edx                        #  2706  0x73d8c  5      
  nop                                    #  2707  0x73d91  1      
  callq .memset                          #  2708  0x73d92  5      
  movl 0x88(%rsp), %r10d                 #  2709  0x73d97  8      
  testl %r10d, %r10d                     #  2710  0x73d9f  3      
  js .L_76300                            #  2711  0x73da2  6      
  xorl %r8d, %r8d                        #  2712  0x73da8  3      
  movq %r12, 0xb0(%rsp)                  #  2713  0x73dab  8      
  nop                                    #  2714  0x73db3  1      
  movq %rbx, 0xe0(%rsp)                  #  2715  0x73db4  8      
  movl %r13d, 0xd8(%rsp)                 #  2716  0x73dbc  8      
  movl $0x0, 0xc4(%rsp)                  #  2717  0x73dc4  11     
  movl %r8d, %ebx                        #  2718  0x73dcf  3      
  xchgw %ax, %ax                         #  2719  0x73dd2  3      
  movl %r10d, %r12d                      #  2720  0x73dd5  3      
  xorl %r13d, %r13d                      #  2721  0x73dd8  3      
  jmpq .L_74e20                          #  2722  0x73ddb  5      
  nop                                    #  2723  0x73de0  1      
  nop                                    #  2724  0x73de1  1      
.L_74e00:                                #        0x73de2  0      
  movl %eax, %r13d                       #  2725  0x73de2  3      
  nop                                    #  2726  0x73de5  1      
  nop                                    #  2727  0x73de6  1      
.L_74e20:                                #        0x73de7  0      
  movl 0x274(%rsp), %eax                 #  2728  0x73de7  7      
  addl %ebx, %eax                        #  2729  0x73dee  2      
  movl %eax, %eax                        #  2730  0x73df0  2      
  movl (%r15,%rax,1), %edx               #  2731  0x73df2  4      
  testl %edx, %edx                       #  2732  0x73df6  2      
  je .L_75fc0                            #  2733  0x73df8  6      
  movl 0x58(%rsp), %ecx                  #  2734  0x73dfe  4      
  movl 0x68(%rsp), %esi                  #  2735  0x73e02  4      
  nop                                    #  2736  0x73e06  1      
  movl %r14d, %edi                       #  2737  0x73e07  3      
  nop                                    #  2738  0x73e0a  1      
  nop                                    #  2739  0x73e0b  1      
  callq ._wcrtomb_r                      #  2740  0x73e0c  5      
  cmpl $0xffffffff, %eax                 #  2741  0x73e11  5      
  je .L_767a0                            #  2742  0x73e16  6      
  addl %r13d, %eax                       #  2743  0x73e1c  3      
  cmpl %eax, %r12d                       #  2744  0x73e1f  3      
  jl .L_75fc0                            #  2745  0x73e22  6      
  addl $0x4, %ebx                        #  2746  0x73e28  3      
  cmpl %eax, %r12d                       #  2747  0x73e2b  3      
  nop                                    #  2748  0x73e2e  1      
  jne .L_74e00                           #  2749  0x73e2f  6      
  movl %r12d, %r10d                      #  2750  0x73e35  3      
  movq 0xe0(%rsp), %rbx                  #  2751  0x73e38  8      
  movq 0xb0(%rsp), %r12                  #  2752  0x73e40  8      
  nop                                    #  2753  0x73e48  1      
  movl 0xd8(%rsp), %r13d                 #  2754  0x73e49  8      
  movl %r10d, 0xc4(%rsp)                 #  2755  0x73e51  8      
  nop                                    #  2756  0x73e59  1      
  nop                                    #  2757  0x73e5a  1      
.L_74ec0:                                #        0x73e5b  0      
  movl 0xc4(%rsp), %r11d                 #  2758  0x73e5b  8      
  testl %r11d, %r11d                     #  2759  0x73e63  3      
  jne .L_75700                           #  2760  0x73e66  6      
  movzbl 0x28f(%rsp), %eax               #  2761  0x73e6c  8      
  nop                                    #  2762  0x73e74  1      
  movl $0x0, 0xb0(%rsp)                  #  2763  0x73e75  11     
  nop                                    #  2764  0x73e80  1      
  nop                                    #  2765  0x73e81  1      
.L_74f00:                                #        0x73e82  0      
  movq $0x0, 0xe0(%rsp)                  #  2766  0x73e82  12     
  movl $0x0, 0xfc(%rsp)                  #  2767  0x73e8e  11     
  nop                                    #  2768  0x73e99  1      
  movl $0x0, 0x108(%rsp)                 #  2769  0x73e9a  11     
  movl $0x0, 0x120(%rsp)                 #  2770  0x73ea5  11     
  nop                                    #  2771  0x73eb0  1      
  movl $0x0, 0x11c(%rsp)                 #  2772  0x73eb1  11     
  jmpq .L_72260                          #  2773  0x73ebc  5      
  nop                                    #  2774  0x73ec1  1      
  nop                                    #  2775  0x73ec2  1      
.L_74f60:                                #        0x73ec3  0      
  movl %ebx, %ecx                        #  2776  0x73ec3  2      
  movq %r13, %r12                        #  2777  0x73ec5  3      
  movq %rax, %rbx                        #  2778  0x73ec8  3      
  movl 0xa8(%rsp), %r13d                 #  2779  0x73ecb  8      
  jmpq .L_739a0                          #  2780  0x73ed3  5      
  nop                                    #  2781  0x73ed8  1      
.L_74f80:                                #        0x73ed9  0      
  movl 0x20(%rsp), %edx                  #  2782  0x73ed9  4      
  movl %r12d, %esi                       #  2783  0x73edd  3      
  movl %r14d, %edi                       #  2784  0x73ee0  3      
  movl %ecx, 0x90(%rsp)                  #  2785  0x73ee3  7      
  nop                                    #  2786  0x73eea  1      
  callq .__sprint_r                      #  2787  0x73eeb  5      
  testl %eax, %eax                       #  2788  0x73ef0  2      
  movl 0x90(%rsp), %ecx                  #  2789  0x73ef2  7      
  jne .L_72c80                           #  2790  0x73ef9  6      
  movq 0xe8(%rsp), %rax                  #  2791  0x73eff  8      
  movl %eax, %eax                        #  2792  0x73f07  2      
  movsbl (%r15,%rax,1), %edx             #  2793  0x73f09  5      
  xchgw %ax, %ax                         #  2794  0x73f0e  3      
  leal 0x1d0(%rsp), %eax                 #  2795  0x73f11  7      
  jmpq .L_73b80                          #  2796  0x73f18  5      
  nop                                    #  2797  0x73f1d  1      
  nop                                    #  2798  0x73f1e  1      
.L_74fe0:                                #        0x73f1f  0      
  movl 0xb8(%rsp), %esi                  #  2799  0x73f1f  7      
  leal 0x210(%rsp), %edx                 #  2800  0x73f26  7      
  movl %r14d, %edi                       #  2801  0x73f2d  3      
  nop                                    #  2802  0x73f30  1      
  callq .__sprint_r                      #  2803  0x73f31  5      
  testl %eax, %eax                       #  2804  0x73f36  2      
  jne .L_72c80                           #  2805  0x73f38  6      
  leal 0x1d0(%rsp), %ebx                 #  2806  0x73f3e  7      
  jmpq .L_72da0                          #  2807  0x73f45  5      
  nop                                    #  2808  0x73f4a  1      
.L_75020:                                #        0x73f4b  0      
  movq %rax, %rsi                        #  2809  0x73f4b  3      
  movl %eax, %eax                        #  2810  0x73f4e  2      
  movl 0xc(%r15,%rax,1), %eax            #  2811  0x73f50  5      
  addl %edx, %eax                        #  2812  0x73f55  2      
  addl $0x8, %edx                        #  2813  0x73f57  3      
  movl %esi, %esi                        #  2814  0x73f5a  2      
  movl %edx, (%r15,%rsi,1)               #  2815  0x73f5c  4      
  jmpq .L_742e0                          #  2816  0x73f60  5      
  nop                                    #  2817  0x73f65  1      
.L_75040:                                #        0x73f66  0      
  movq $0x10023bf9, 0xa8(%rsp)           #  2818  0x73f66  12     
  cmpl $0x47, 0xf8(%rsp)                 #  2819  0x73f72  8      
  movl $0x10023bfd, %eax                 #  2820  0x73f7a  5      
  jmpq .L_72940                          #  2821  0x73f7f  5      
  xchgw %ax, %ax                         #  2822  0x73f84  3      
.L_75060:                                #        0x73f87  0      
  movl %ecx, %ecx                        #  2823  0x73f87  2      
  movl 0xc(%r15,%rcx,1), %edx            #  2824  0x73f89  5      
  addl %eax, %edx                        #  2825  0x73f8e  2      
  addl $0x8, %eax                        #  2826  0x73f90  3      
  movl %ecx, %ecx                        #  2827  0x73f93  2      
  movl %eax, (%r15,%rcx,1)               #  2828  0x73f95  4      
  jmpq .L_72ba0                          #  2829  0x73f99  5      
  nop                                    #  2830  0x73f9e  1      
.L_75080:                                #        0x73f9f  0      
  movq 0xc8(%rsp), %rsi                  #  2831  0x73f9f  8      
  movl %esi, %esi                        #  2832  0x73fa7  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2833  0x73fa9  5      
  leal 0x8(%rdx), %eax                   #  2834  0x73fae  3      
  movl %esi, %esi                        #  2835  0x73fb1  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2836  0x73fb3  5      
  jmpq .L_737e0                          #  2837  0x73fb8  5      
  xchgw %ax, %ax                         #  2838  0x73fbd  3      
.L_750a0:                                #        0x73fc0  0      
  movq 0xc8(%rsp), %rsi                  #  2839  0x73fc0  8      
  movl %esi, %esi                        #  2840  0x73fc8  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2841  0x73fca  5      
  leal 0x8(%rdx), %eax                   #  2842  0x73fcf  3      
  movl %esi, %esi                        #  2843  0x73fd2  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2844  0x73fd4  5      
  jmpq .L_73780                          #  2845  0x73fd9  5      
  xchgw %ax, %ax                         #  2846  0x73fde  3      
.L_750c0:                                #        0x73fe1  0      
  movq 0xc8(%rsp), %rax                  #  2847  0x73fe1  8      
  movl %eax, %eax                        #  2848  0x73fe9  2      
  movl (%r15,%rax,1), %edx               #  2849  0x73feb  4      
  cmpl $0x2f, %edx                       #  2850  0x73fef  3      
  ja .L_75980                            #  2851  0x73ff2  6      
  movq %rax, %rcx                        #  2852  0x73ff8  3      
  nop                                    #  2853  0x73ffb  1      
  movl %eax, %eax                        #  2854  0x73ffc  2      
  movl 0xc(%r15,%rax,1), %eax            #  2855  0x73ffe  5      
  addl %edx, %eax                        #  2856  0x74003  2      
  addl $0x8, %edx                        #  2857  0x74005  3      
  movl %ecx, %ecx                        #  2858  0x74008  2      
  movl %edx, (%r15,%rcx,1)               #  2859  0x7400a  4      
  nop                                    #  2860  0x7400e  1      
.L_75100:                                #        0x7400f  0      
  movl %eax, %eax                        #  2861  0x7400f  2      
  movzwl (%r15,%rax,1), %ecx             #  2862  0x74011  5      
  jmpq .L_72620                          #  2863  0x74016  5      
  nop                                    #  2864  0x7401b  1      
  nop                                    #  2865  0x7401c  1      
.L_75120:                                #        0x7401d  0      
  movq 0xc8(%rsp), %rax                  #  2866  0x7401d  8      
  movl %eax, %eax                        #  2867  0x74025  2      
  movl (%r15,%rax,1), %edx               #  2868  0x74027  4      
  cmpl $0x2f, %edx                       #  2869  0x7402b  3      
  ja .L_75ba0                            #  2870  0x7402e  6      
  movq %rax, %rcx                        #  2871  0x74034  3      
  nop                                    #  2872  0x74037  1      
  movl %eax, %eax                        #  2873  0x74038  2      
  movl 0xc(%r15,%rax,1), %eax            #  2874  0x7403a  5      
  addl %edx, %eax                        #  2875  0x7403f  2      
  addl $0x8, %edx                        #  2876  0x74041  3      
  movl %ecx, %ecx                        #  2877  0x74044  2      
  movl %edx, (%r15,%rcx,1)               #  2878  0x74046  4      
  nop                                    #  2879  0x7404a  1      
.L_75160:                                #        0x7404b  0      
  movl %eax, %eax                        #  2880  0x7404b  2      
  movswq (%r15,%rax,1), %rcx             #  2881  0x7404d  5      
  jmpq .L_723c0                          #  2882  0x74052  5      
  nop                                    #  2883  0x74057  1      
  nop                                    #  2884  0x74058  1      
.L_75180:                                #        0x74059  0      
  movq 0xc8(%rsp), %rax                  #  2885  0x74059  8      
  movl %eax, %eax                        #  2886  0x74061  2      
  movl (%r15,%rax,1), %edx               #  2887  0x74063  4      
  cmpl $0x2f, %edx                       #  2888  0x74067  3      
  ja .L_75bc0                            #  2889  0x7406a  6      
  movq %rax, %rcx                        #  2890  0x74070  3      
  nop                                    #  2891  0x74073  1      
  movl %eax, %eax                        #  2892  0x74074  2      
  movl 0xc(%r15,%rax,1), %eax            #  2893  0x74076  5      
  addl %edx, %eax                        #  2894  0x7407b  2      
  addl $0x8, %edx                        #  2895  0x7407d  3      
  movl %ecx, %ecx                        #  2896  0x74080  2      
  movl %edx, (%r15,%rcx,1)               #  2897  0x74082  4      
  nop                                    #  2898  0x74086  1      
.L_751c0:                                #        0x74087  0      
  movl %eax, %eax                        #  2899  0x74087  2      
  movzwl (%r15,%rax,1), %ecx             #  2900  0x74089  5      
  jmpq .L_72780                          #  2901  0x7408e  5      
  nop                                    #  2902  0x74093  1      
  nop                                    #  2903  0x74094  1      
.L_751e0:                                #        0x74095  0      
  movq 0xc8(%rsp), %rax                  #  2904  0x74095  8      
  movl %eax, %eax                        #  2905  0x7409d  2      
  movl (%r15,%rax,1), %edx               #  2906  0x7409f  4      
  cmpl $0x2f, %edx                       #  2907  0x740a3  3      
  ja .L_75960                            #  2908  0x740a6  6      
  movq %rax, %rcx                        #  2909  0x740ac  3      
  nop                                    #  2910  0x740af  1      
  movl %eax, %eax                        #  2911  0x740b0  2      
  movl 0xc(%r15,%rax,1), %eax            #  2912  0x740b2  5      
  addl %edx, %eax                        #  2913  0x740b7  2      
  addl $0x8, %edx                        #  2914  0x740b9  3      
  movl %ecx, %ecx                        #  2915  0x740bc  2      
  movl %edx, (%r15,%rcx,1)               #  2916  0x740be  4      
  nop                                    #  2917  0x740c2  1      
.L_75220:                                #        0x740c3  0      
  movl %eax, %eax                        #  2918  0x740c3  2      
  movl (%r15,%rax,1), %eax               #  2919  0x740c5  4      
  movl 0xd0(%rsp), %edx                  #  2920  0x740c9  7      
  movl %eax, %eax                        #  2921  0x740d0  2      
  movl %edx, (%r15,%rax,1)               #  2922  0x740d2  4      
  jmpq .L_71d40                          #  2923  0x740d6  5      
  nop                                    #  2924  0x740db  1      
.L_75240:                                #        0x740dc  0      
  movq 0xc8(%rsp), %rax                  #  2925  0x740dc  8      
  movl %eax, %eax                        #  2926  0x740e4  2      
  movl (%r15,%rax,1), %edx               #  2927  0x740e6  4      
  cmpl $0x2f, %edx                       #  2928  0x740ea  3      
  ja .L_759a0                            #  2929  0x740ed  6      
  movq %rax, %rcx                        #  2930  0x740f3  3      
  nop                                    #  2931  0x740f6  1      
  movl %eax, %eax                        #  2932  0x740f7  2      
  movl 0xc(%r15,%rax,1), %eax            #  2933  0x740f9  5      
  addl %edx, %eax                        #  2934  0x740fe  2      
  addl $0x8, %edx                        #  2935  0x74100  3      
  movl %ecx, %ecx                        #  2936  0x74103  2      
  movl %edx, (%r15,%rcx,1)               #  2937  0x74105  4      
  nop                                    #  2938  0x74109  1      
.L_75280:                                #        0x7410a  0      
  movl %eax, %eax                        #  2939  0x7410a  2      
  movzwl (%r15,%rax,1), %ecx             #  2940  0x7410c  5      
  movl $0x1, %eax                        #  2941  0x74111  5      
  testq %rcx, %rcx                       #  2942  0x74116  3      
  setne %sil                             #  2943  0x74119  4      
  jmpq .L_72100                          #  2944  0x7411d  5      
  nop                                    #  2945  0x74122  1      
.L_752a0:                                #        0x74123  0      
  movq 0xc8(%rsp), %rsi                  #  2946  0x74123  8      
  movl %esi, %esi                        #  2947  0x7412b  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2948  0x7412d  5      
  leal 0x8(%rdx), %eax                   #  2949  0x74132  3      
  movl %esi, %esi                        #  2950  0x74135  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2951  0x74137  5      
  jmpq .L_72800                          #  2952  0x7413c  5      
  xchgw %ax, %ax                         #  2953  0x74141  3      
.L_752c0:                                #        0x74144  0      
  movq 0xc8(%rsp), %rsi                  #  2954  0x74144  8      
  movl %esi, %esi                        #  2955  0x7414c  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2956  0x7414e  5      
  leal 0x8(%rdx), %eax                   #  2957  0x74153  3      
  movl %esi, %esi                        #  2958  0x74156  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2959  0x74158  5      
  jmpq .L_73840                          #  2960  0x7415d  5      
  xchgw %ax, %ax                         #  2961  0x74162  3      
.L_752e0:                                #        0x74165  0      
  jp .L_72920                            #  2962  0x74165  6      
  movb $0x2d, 0x28f(%rsp)                #  2963  0x7416b  8      
  jmpq .L_72920                          #  2964  0x74173  5      
  nop                                    #  2965  0x74178  1      
.L_75300:                                #        0x74179  0      
  movq 0xc8(%rsp), %rsi                  #  2966  0x74179  8      
  movl %esi, %esi                        #  2967  0x74181  2      
  movl 0x8(%r15,%rsi,1), %edx            #  2968  0x74183  5      
  leal 0x8(%rdx), %eax                   #  2969  0x74188  3      
  movl %esi, %esi                        #  2970  0x7418b  2      
  movl %eax, 0x8(%r15,%rsi,1)            #  2971  0x7418d  5      
  jmpq .L_72320                          #  2972  0x74192  5      
  xchgw %ax, %ax                         #  2973  0x74197  3      
.L_75320:                                #        0x7419a  0      
  testb $0x1, %r13b                      #  2974  0x7419a  4      
  je .L_73da0                            #  2975  0x7419e  6      
  jmpq .L_73d40                          #  2976  0x741a4  5      
  xchgw %ax, %ax                         #  2977  0x741a9  3      
  nop                                    #  2978  0x741ac  1      
.L_75340:                                #        0x741ad  0      
  movl 0xa8(%rsp), %edi                  #  2979  0x741ad  7      
  movl %ecx, 0x90(%rsp)                  #  2980  0x741b4  7      
  nop                                    #  2981  0x741bb  1      
  callq .strlen                          #  2982  0x741bc  5      
  movl 0x90(%rsp), %ecx                  #  2983  0x741c1  7      
  testl %eax, %eax                       #  2984  0x741c8  2      
  movl %eax, 0xc4(%rsp)                  #  2985  0x741ca  7      
  cmovnsl %eax, %ecx                     #  2986  0x741d1  3      
  movzbl 0x28f(%rsp), %eax               #  2987  0x741d4  8      
  nop                                    #  2988  0x741dc  1      
  movl %ecx, 0xb0(%rsp)                  #  2989  0x741dd  7      
  jmpq .L_74f00                          #  2990  0x741e4  5      
  nop                                    #  2991  0x741e9  1      
  nop                                    #  2992  0x741ea  1      
.L_753a0:                                #        0x741eb  0      
  cmpl $0x0, 0x108(%rsp)                 #  2993  0x741eb  8      
  jg .L_73a40                            #  2994  0x741f3  6      
  jmpq .L_73ce0                          #  2995  0x741f9  5      
  nop                                    #  2996  0x741fe  1      
.L_753c0:                                #        0x741ff  0      
  movl 0x218(%rsp), %eax                 #  2997  0x741ff  7      
  testl %eax, %eax                       #  2998  0x74206  2      
  jne .L_760a0                           #  2999  0x74208  6      
  xchgw %ax, %ax                         #  3000  0x7420e  3      
  nop                                    #  3001  0x74211  1      
.L_753e0:                                #        0x74212  0      
  movq 0xb8(%rsp), %rdx                  #  3002  0x74212  8      
  movl $0x0, 0x214(%rsp)                 #  3003  0x7421a  11     
  movl %edx, %edx                        #  3004  0x74225  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3005  0x74227  6      
  jmpq .L_72cc0                          #  3006  0x7422d  5      
.L_75400:                                #        0x74232  0      
  movl %ebx, %ebx                        #  3007  0x74232  2      
  movl $0x1, 0x4(%r15,%rbx,1)            #  3008  0x74234  9      
  movl 0x214(%rsp), %eax                 #  3009  0x7423d  7      
  addl $0x1, 0x218(%rsp)                 #  3010  0x74244  8      
  nop                                    #  3011  0x7424c  1      
  movl %ebx, %ebx                        #  3012  0x7424d  2      
  movl $0x100202fc, (%r15,%rbx,1)        #  3013  0x7424f  8      
  addl $0x1, %eax                        #  3014  0x74257  3      
  cmpl $0x7, %eax                        #  3015  0x7425a  3      
  movl %eax, 0x214(%rsp)                 #  3016  0x7425d  7      
  jg .L_760e0                            #  3017  0x74264  6      
  addl $0x8, %ebx                        #  3018  0x7426a  3      
.L_75440:                                #        0x7426d  0      
  movl 0x27c(%rsp), %edi                 #  3019  0x7426d  7      
  testl %edi, %edi                       #  3020  0x74274  2      
  jne .L_75460                           #  3021  0x74276  6      
  cmpl $0x0, 0x10c(%rsp)                 #  3022  0x7427c  8      
  jne .L_75460                           #  3023  0x74284  6      
  testb $0x1, %r13b                      #  3024  0x7428a  4      
  je .L_71b00                            #  3025  0x7428e  6      
  nop                                    #  3026  0x74294  1      
.L_75460:                                #        0x74295  0      
  movl 0x110(%rsp), %eax                 #  3027  0x74295  7      
  movl 0x124(%rsp), %edx                 #  3028  0x7429c  7      
  movl %ebx, %ebx                        #  3029  0x742a3  2      
  movl %eax, (%r15,%rbx,1)               #  3030  0x742a5  4      
  movl %ebx, %ebx                        #  3031  0x742a9  2      
  movl %edx, 0x4(%r15,%rbx,1)            #  3032  0x742ab  5      
  nop                                    #  3033  0x742b0  1      
  movl 0x214(%rsp), %eax                 #  3034  0x742b1  7      
  addl %edx, 0x218(%rsp)                 #  3035  0x742b8  7      
  addl $0x1, %eax                        #  3036  0x742bf  3      
  cmpl $0x7, %eax                        #  3037  0x742c2  3      
  movl %eax, 0x214(%rsp)                 #  3038  0x742c5  7      
  nop                                    #  3039  0x742cc  1      
  jg .L_76060                            #  3040  0x742cd  6      
  leal 0x8(%rbx), %eax                   #  3041  0x742d3  3      
  nop                                    #  3042  0x742d6  1      
  nop                                    #  3043  0x742d7  1      
.L_754c0:                                #        0x742d8  0      
  movl 0x27c(%rsp), %ebx                 #  3044  0x742d8  7      
  negl %ebx                              #  3045  0x742df  2      
  testl %ebx, %ebx                       #  3046  0x742e1  2      
  jle .L_756c0                           #  3047  0x742e3  6      
  cmpl $0x10, %ebx                       #  3048  0x742e9  3      
  jle .L_75680                           #  3049  0x742ec  6      
  nop                                    #  3050  0x742f2  1      
  leal 0x210(%rsp), %ecx                 #  3051  0x742f3  7      
  movl %r13d, 0xc4(%rsp)                 #  3052  0x742fa  8      
  movq %r12, %r13                        #  3053  0x74302  3      
  movq 0xb8(%rsp), %r12                  #  3054  0x74305  8      
  movq %rcx, 0x30(%rsp)                  #  3055  0x7430d  5      
  nop                                    #  3056  0x74312  1      
  jmpq .L_75560                          #  3057  0x74313  5      
  nop                                    #  3058  0x74318  1      
  nop                                    #  3059  0x74319  1      
.L_75520:                                #        0x7431a  0      
  addl $0x8, %eax                        #  3060  0x7431a  3      
  nop                                    #  3061  0x7431d  1      
  nop                                    #  3062  0x7431e  1      
.L_75540:                                #        0x7431f  0      
  subl $0x10, %ebx                       #  3063  0x7431f  3      
  cmpl $0x10, %ebx                       #  3064  0x74322  3      
  jle .L_75660                           #  3065  0x74325  6      
  nop                                    #  3066  0x7432b  1      
  nop                                    #  3067  0x7432c  1      
.L_75560:                                #        0x7432d  0      
  movl %eax, %eax                        #  3068  0x7432d  2      
  movl $0x10, 0x4(%r15,%rax,1)           #  3069  0x7432f  9      
  movl 0x214(%rsp), %edx                 #  3070  0x74338  7      
  addl $0x10, 0x218(%rsp)                #  3071  0x7433f  8      
  nop                                    #  3072  0x74347  1      
  movl %eax, %eax                        #  3073  0x74348  2      
  movl $0x10024230, (%r15,%rax,1)        #  3074  0x7434a  8      
  addl $0x1, %edx                        #  3075  0x74352  3      
  cmpl $0x7, %edx                        #  3076  0x74355  3      
  movl %edx, 0x214(%rsp)                 #  3077  0x74358  7      
  jle .L_75520                           #  3078  0x7435f  6      
  movl 0x30(%rsp), %edx                  #  3079  0x74365  4      
  movl %r12d, %esi                       #  3080  0x74369  3      
  movl %r14d, %edi                       #  3081  0x7436c  3      
  nop                                    #  3082  0x7436f  1      
  nop                                    #  3083  0x74370  1      
  callq .__sprint_r                      #  3084  0x74371  5      
  testl %eax, %eax                       #  3085  0x74376  2      
  jne .L_72c80                           #  3086  0x74378  6      
  leal 0x1d0(%rsp), %eax                 #  3087  0x7437e  7      
  jmpq .L_75540                          #  3088  0x74385  5      
  nop                                    #  3089  0x7438a  1      
.L_755e0:                                #        0x7438b  0      
  addl $0x1, %r12d                       #  3090  0x7438b  4      
  orl $0x20, %r13d                       #  3091  0x7438f  4      
  movl %r12d, %r12d                      #  3092  0x74393  3      
  movzbl (%r15,%r12,1), %eax             #  3093  0x74396  5      
  jmpq .L_715e0                          #  3094  0x7439b  5      
  nop                                    #  3095  0x743a0  1      
.L_75600:                                #        0x743a1  0      
  addl $0x1, %r12d                       #  3096  0x743a1  4      
  orl $0x200, %r13d                      #  3097  0x743a5  7      
  movl %r12d, %r12d                      #  3098  0x743ac  3      
  movzbl (%r15,%r12,1), %eax             #  3099  0x743af  5      
  jmpq .L_715e0                          #  3100  0x743b4  5      
  nop                                    #  3101  0x743b9  1      
.L_75620:                                #        0x743ba  0      
  movl 0xb8(%rsp), %esi                  #  3102  0x743ba  7      
  leal 0x210(%rsp), %edx                 #  3103  0x743c1  7      
  movl %r14d, %edi                       #  3104  0x743c8  3      
  nop                                    #  3105  0x743cb  1      
  callq .__sprint_r                      #  3106  0x743cc  5      
  testl %eax, %eax                       #  3107  0x743d1  2      
  jne .L_72c80                           #  3108  0x743d3  6      
  leal 0x1d0(%rsp), %ebx                 #  3109  0x743d9  7      
  jmpq .L_72e20                          #  3110  0x743e0  5      
  nop                                    #  3111  0x743e5  1      
.L_75660:                                #        0x743e6  0      
  movq %r13, %r12                        #  3112  0x743e6  3      
  movl 0xc4(%rsp), %r13d                 #  3113  0x743e9  8      
  nop                                    #  3114  0x743f1  1      
  nop                                    #  3115  0x743f2  1      
.L_75680:                                #        0x743f3  0      
  movl %eax, %eax                        #  3116  0x743f3  2      
  movl %ebx, 0x4(%r15,%rax,1)            #  3117  0x743f5  5      
  movl 0x214(%rsp), %edx                 #  3118  0x743fa  7      
  addl %ebx, 0x218(%rsp)                 #  3119  0x74401  7      
  movl %eax, %eax                        #  3120  0x74408  2      
  movl $0x10024230, (%r15,%rax,1)        #  3121  0x7440a  8      
  nop                                    #  3122  0x74412  1      
  addl $0x1, %edx                        #  3123  0x74413  3      
  cmpl $0x7, %edx                        #  3124  0x74416  3      
  movl %edx, 0x214(%rsp)                 #  3125  0x74419  7      
  jg .L_767c0                            #  3126  0x74420  6      
  addl $0x8, %eax                        #  3127  0x74426  3      
  nop                                    #  3128  0x74429  1      
.L_756c0:                                #        0x7442a  0      
  movl 0x10c(%rsp), %esi                 #  3129  0x7442a  7      
  movl 0xa8(%rsp), %ebx                  #  3130  0x74431  7      
  movl %eax, %eax                        #  3131  0x74438  2      
  movl %esi, 0x4(%r15,%rax,1)            #  3132  0x7443a  5      
  movl %eax, %eax                        #  3133  0x7443f  2      
  movl %ebx, (%r15,%rax,1)               #  3134  0x74441  4      
  nop                                    #  3135  0x74445  1      
  addl %esi, 0x218(%rsp)                 #  3136  0x74446  7      
  jmpq .L_732c0                          #  3137  0x7444d  5      
  nop                                    #  3138  0x74452  1      
  nop                                    #  3139  0x74453  1      
.L_75700:                                #        0x74454  0      
  cmpl $0x63, 0xc4(%rsp)                 #  3140  0x74454  8      
  leal 0x160(%rsp), %edx                 #  3141  0x7445c  7      
  movq $0x0, 0xe0(%rsp)                  #  3142  0x74463  12     
  nop                                    #  3143  0x7446f  1      
  movq %rdx, 0xa8(%rsp)                  #  3144  0x74470  8      
  jle .L_75780                           #  3145  0x74478  6      
  movl 0xc4(%rsp), %esi                  #  3146  0x7447e  7      
  movl %r14d, %edi                       #  3147  0x74485  3      
  addl $0x1, %esi                        #  3148  0x74488  3      
  nop                                    #  3149  0x7448b  1      
  callq ._malloc_r                       #  3150  0x7448c  5      
  movl %eax, %eax                        #  3151  0x74491  2      
  testq %rax, %rax                       #  3152  0x74493  3      
  movq %rax, 0xe0(%rsp)                  #  3153  0x74496  8      
  je .L_76ba0                            #  3154  0x7449e  6      
  movq 0xe0(%rsp), %rsi                  #  3155  0x744a4  8      
  nop                                    #  3156  0x744ac  1      
  movq %rsi, 0xa8(%rsp)                  #  3157  0x744ad  8      
  nop                                    #  3158  0x744b5  1      
  nop                                    #  3159  0x744b6  1      
.L_75780:                                #        0x744b7  0      
  movl 0x58(%rsp), %edi                  #  3160  0x744b7  4      
  xorl %esi, %esi                        #  3161  0x744bb  2      
  movl $0x8, %edx                        #  3162  0x744bd  5      
  nop                                    #  3163  0x744c2  1      
  nop                                    #  3164  0x744c3  1      
  callq .memset                          #  3165  0x744c4  5      
  movl 0x58(%rsp), %r8d                  #  3166  0x744c9  5      
  movl 0xc4(%rsp), %ecx                  #  3167  0x744ce  7      
  leal 0x274(%rsp), %edx                 #  3168  0x744d5  7      
  movl 0xa8(%rsp), %esi                  #  3169  0x744dc  7      
  movl %r14d, %edi                       #  3170  0x744e3  3      
  nop                                    #  3171  0x744e6  1      
  nop                                    #  3172  0x744e7  1      
  nop                                    #  3173  0x744e8  1      
  callq ._wcsrtombs_r                    #  3174  0x744e9  5      
  cmpl %eax, 0xc4(%rsp)                  #  3175  0x744ee  7      
  jne .L_72c60                           #  3176  0x744f5  6      
  movl 0xc4(%rsp), %eax                  #  3177  0x744fb  7      
  addl 0xa8(%rsp), %eax                  #  3178  0x74502  7      
  movl $0x0, %edx                        #  3179  0x74509  5      
  movl %eax, %eax                        #  3180  0x7450e  2      
  movb $0x0, (%r15,%rax,1)               #  3181  0x74510  5      
  movl 0xc4(%rsp), %r10d                 #  3182  0x74515  8      
  movzbl 0x28f(%rsp), %eax               #  3183  0x7451d  8      
  nop                                    #  3184  0x74525  1      
  movl $0x0, 0xfc(%rsp)                  #  3185  0x74526  11     
  movl $0x0, 0x108(%rsp)                 #  3186  0x74531  11     
  nop                                    #  3187  0x7453c  1      
  movl $0x0, 0x120(%rsp)                 #  3188  0x7453d  11     
  testl %r10d, %r10d                     #  3189  0x74548  3      
  cmovnsl 0xc4(%rsp), %edx               #  3190  0x7454b  8      
  nop                                    #  3191  0x74553  1      
  movl $0x0, 0x11c(%rsp)                 #  3192  0x74554  11     
  movl %edx, 0xb0(%rsp)                  #  3193  0x7455f  7      
  jmpq .L_72260                          #  3194  0x74566  5      
  nop                                    #  3195  0x7456b  1      
.L_75880:                                #        0x7456c  0      
  movl 0xb8(%rsp), %esi                  #  3196  0x7456c  7      
  leal 0x210(%rsp), %edx                 #  3197  0x74573  7      
  movl %r14d, %edi                       #  3198  0x7457a  3      
  movl %r8d, 0x80(%rsp)                  #  3199  0x7457d  8      
  xchgw %ax, %ax                         #  3200  0x74585  3      
  callq .__sprint_r                      #  3201  0x74588  5      
  testl %eax, %eax                       #  3202  0x7458d  2      
  movl 0x80(%rsp), %r8d                  #  3203  0x7458f  8      
  jne .L_72c80                           #  3204  0x74597  6      
  leal 0x1d0(%rsp), %ebx                 #  3205  0x7459d  7      
  jmpq .L_73520                          #  3206  0x745a4  5      
  nop                                    #  3207  0x745a9  1      
.L_758c0:                                #        0x745aa  0      
  movl $0x6, 0xc4(%rsp)                  #  3208  0x745aa  11     
  cmpl $0x6, %r10d                       #  3209  0x745b5  4      
  cmoval 0xc4(%rsp), %r10d               #  3210  0x745b9  9      
  movl $0x0, %eax                        #  3211  0x745c2  5      
  nop                                    #  3212  0x745c7  1      
  movq $0x10023c12, 0xa8(%rsp)           #  3213  0x745c8  12     
  testl %r10d, %r10d                     #  3214  0x745d4  3      
  movl %r10d, 0xc4(%rsp)                 #  3215  0x745d7  8      
  cmovnsl %r10d, %eax                    #  3216  0x745df  4      
  nop                                    #  3217  0x745e3  1      
  movl %eax, 0xb0(%rsp)                  #  3218  0x745e4  7      
  xorl %eax, %eax                        #  3219  0x745eb  2      
  jmpq .L_74360                          #  3220  0x745ed  5      
  nop                                    #  3221  0x745f2  1      
  nop                                    #  3222  0x745f3  1      
.L_75920:                                #        0x745f4  0      
  movl 0x100(%rsp), %esi                 #  3223  0x745f4  7      
  subl 0xa8(%rsp), %esi                  #  3224  0x745fb  7      
  movl %esi, 0xc4(%rsp)                  #  3225  0x74602  7      
  movq 0xe8(%rsp), %rsi                  #  3226  0x74609  8      
  nop                                    #  3227  0x74611  1      
  jmpq .L_721e0                          #  3228  0x74612  5      
  nop                                    #  3229  0x74617  1      
  nop                                    #  3230  0x74618  1      
.L_75960:                                #        0x74619  0      
  movq 0xc8(%rsp), %rsi                  #  3231  0x74619  8      
  movl %esi, %esi                        #  3232  0x74621  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3233  0x74623  5      
  leal 0x8(%rax), %edx                   #  3234  0x74628  3      
  movl %esi, %esi                        #  3235  0x7462b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3236  0x7462d  5      
  jmpq .L_75220                          #  3237  0x74632  5      
  xchgw %ax, %ax                         #  3238  0x74637  3      
.L_75980:                                #        0x7463a  0      
  movq 0xc8(%rsp), %rsi                  #  3239  0x7463a  8      
  movl %esi, %esi                        #  3240  0x74642  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3241  0x74644  5      
  leal 0x8(%rax), %edx                   #  3242  0x74649  3      
  movl %esi, %esi                        #  3243  0x7464c  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3244  0x7464e  5      
  jmpq .L_75100                          #  3245  0x74653  5      
  xchgw %ax, %ax                         #  3246  0x74658  3      
.L_759a0:                                #        0x7465b  0      
  movq 0xc8(%rsp), %rsi                  #  3247  0x7465b  8      
  movl %esi, %esi                        #  3248  0x74663  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3249  0x74665  5      
  leal 0x8(%rax), %edx                   #  3250  0x7466a  3      
  movl %esi, %esi                        #  3251  0x7466d  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3252  0x7466f  5      
  jmpq .L_75280                          #  3253  0x74674  5      
  xchgw %ax, %ax                         #  3254  0x74679  3      
.L_759c0:                                #        0x7467c  0      
  movq 0xc8(%rsp), %rax                  #  3255  0x7467c  8      
  movl %eax, %eax                        #  3256  0x74684  2      
  movl (%r15,%rax,1), %edx               #  3257  0x74686  4      
  cmpl $0x2f, %edx                       #  3258  0x7468a  3      
  ja .L_76220                            #  3259  0x7468d  6      
  movq %rax, %rcx                        #  3260  0x74693  3      
  nop                                    #  3261  0x74696  1      
  movl %eax, %eax                        #  3262  0x74697  2      
  movl 0xc(%r15,%rax,1), %eax            #  3263  0x74699  5      
  addl %edx, %eax                        #  3264  0x7469e  2      
  addl $0x8, %edx                        #  3265  0x746a0  3      
  movl %ecx, %ecx                        #  3266  0x746a3  2      
  movl %edx, (%r15,%rcx,1)               #  3267  0x746a5  4      
  nop                                    #  3268  0x746a9  1      
.L_75a00:                                #        0x746aa  0      
  movl %eax, %eax                        #  3269  0x746aa  2      
  movl (%r15,%rax,1), %ecx               #  3270  0x746ac  4      
  jmpq .L_72780                          #  3271  0x746b0  5      
  nop                                    #  3272  0x746b5  1      
  nop                                    #  3273  0x746b6  1      
.L_75a20:                                #        0x746b7  0      
  movq 0xc8(%rsp), %rax                  #  3274  0x746b7  8      
  movl %eax, %eax                        #  3275  0x746bf  2      
  movl (%r15,%rax,1), %edx               #  3276  0x746c1  4      
  cmpl $0x2f, %edx                       #  3277  0x746c5  3      
  ja .L_762a0                            #  3278  0x746c8  6      
  movq %rax, %rcx                        #  3279  0x746ce  3      
  nop                                    #  3280  0x746d1  1      
  movl %eax, %eax                        #  3281  0x746d2  2      
  movl 0xc(%r15,%rax,1), %eax            #  3282  0x746d4  5      
  addl %edx, %eax                        #  3283  0x746d9  2      
  addl $0x8, %edx                        #  3284  0x746db  3      
  movl %ecx, %ecx                        #  3285  0x746de  2      
  movl %edx, (%r15,%rcx,1)               #  3286  0x746e0  4      
  nop                                    #  3287  0x746e4  1      
.L_75a60:                                #        0x746e5  0      
  movl %eax, %eax                        #  3288  0x746e5  2      
  movl (%r15,%rax,1), %ecx               #  3289  0x746e7  4      
  jmpq .L_72620                          #  3290  0x746eb  5      
  nop                                    #  3291  0x746f0  1      
  nop                                    #  3292  0x746f1  1      
.L_75a80:                                #        0x746f2  0      
  movq 0xc8(%rsp), %rax                  #  3293  0x746f2  8      
  movl %eax, %eax                        #  3294  0x746fa  2      
  movl (%r15,%rax,1), %edx               #  3295  0x746fc  4      
  cmpl $0x2f, %edx                       #  3296  0x74700  3      
  ja .L_76260                            #  3297  0x74703  6      
  movq %rax, %rcx                        #  3298  0x74709  3      
  nop                                    #  3299  0x7470c  1      
  movl %eax, %eax                        #  3300  0x7470d  2      
  movl 0xc(%r15,%rax,1), %eax            #  3301  0x7470f  5      
  addl %edx, %eax                        #  3302  0x74714  2      
  addl $0x8, %edx                        #  3303  0x74716  3      
  movl %ecx, %ecx                        #  3304  0x74719  2      
  movl %edx, (%r15,%rcx,1)               #  3305  0x7471b  4      
  nop                                    #  3306  0x7471f  1      
.L_75ac0:                                #        0x74720  0      
  movl %eax, %eax                        #  3307  0x74720  2      
  movslq (%r15,%rax,1), %rcx             #  3308  0x74722  4      
  jmpq .L_723c0                          #  3309  0x74726  5      
  nop                                    #  3310  0x7472b  1      
  nop                                    #  3311  0x7472c  1      
.L_75ae0:                                #        0x7472d  0      
  movq 0xc8(%rsp), %rax                  #  3312  0x7472d  8      
  movl %eax, %eax                        #  3313  0x74735  2      
  movl (%r15,%rax,1), %edx               #  3314  0x74737  4      
  cmpl $0x2f, %edx                       #  3315  0x7473b  3      
  ja .L_762e0                            #  3316  0x7473e  6      
  movq %rax, %rcx                        #  3317  0x74744  3      
  nop                                    #  3318  0x74747  1      
  movl %eax, %eax                        #  3319  0x74748  2      
  movl 0xc(%r15,%rax,1), %eax            #  3320  0x7474a  5      
  addl %edx, %eax                        #  3321  0x7474f  2      
  addl $0x8, %edx                        #  3322  0x74751  3      
  movl %ecx, %ecx                        #  3323  0x74754  2      
  movl %edx, (%r15,%rcx,1)               #  3324  0x74756  4      
  nop                                    #  3325  0x7475a  1      
.L_75b20:                                #        0x7475b  0      
  movl %eax, %eax                        #  3326  0x7475b  2      
  movl (%r15,%rax,1), %ecx               #  3327  0x7475d  4      
  movl $0x1, %eax                        #  3328  0x74761  5      
  testq %rcx, %rcx                       #  3329  0x74766  3      
  setne %sil                             #  3330  0x74769  4      
  jmpq .L_72100                          #  3331  0x7476d  5      
  nop                                    #  3332  0x74772  1      
.L_75b40:                                #        0x74773  0      
  andl $0x200, %r13d                     #  3333  0x74773  7      
  je .L_765a0                            #  3334  0x7477a  6      
  movq 0xc8(%rsp), %rcx                  #  3335  0x74780  8      
  movl %ecx, %ecx                        #  3336  0x74788  2      
  movl (%r15,%rcx,1), %edx               #  3337  0x7478a  4      
  cmpl $0x2f, %edx                       #  3338  0x7478e  3      
  xchgw %ax, %ax                         #  3339  0x74791  3      
  ja .L_769c0                            #  3340  0x74794  6      
  movl %ecx, %ecx                        #  3341  0x7479a  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3342  0x7479c  5      
  addl %edx, %eax                        #  3343  0x747a1  2      
  addl $0x8, %edx                        #  3344  0x747a3  3      
  movl %ecx, %ecx                        #  3345  0x747a6  2      
  movl %edx, (%r15,%rcx,1)               #  3346  0x747a8  4      
  nop                                    #  3347  0x747ac  1      
.L_75b80:                                #        0x747ad  0      
  movl %eax, %eax                        #  3348  0x747ad  2      
  movl (%r15,%rax,1), %eax               #  3349  0x747af  4      
  movzbl 0xd0(%rsp), %edx                #  3350  0x747b3  8      
  movl %eax, %eax                        #  3351  0x747bb  2      
  movb %dl, (%r15,%rax,1)                #  3352  0x747bd  4      
  jmpq .L_71d40                          #  3353  0x747c1  5      
  nop                                    #  3354  0x747c6  1      
.L_75ba0:                                #        0x747c7  0      
  movq 0xc8(%rsp), %rsi                  #  3355  0x747c7  8      
  movl %esi, %esi                        #  3356  0x747cf  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3357  0x747d1  5      
  leal 0x8(%rax), %edx                   #  3358  0x747d6  3      
  movl %esi, %esi                        #  3359  0x747d9  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3360  0x747db  5      
  jmpq .L_75160                          #  3361  0x747e0  5      
  xchgw %ax, %ax                         #  3362  0x747e5  3      
.L_75bc0:                                #        0x747e8  0      
  movq 0xc8(%rsp), %rsi                  #  3363  0x747e8  8      
  movl %esi, %esi                        #  3364  0x747f0  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3365  0x747f2  5      
  leal 0x8(%rax), %edx                   #  3366  0x747f7  3      
  movl %esi, %esi                        #  3367  0x747fa  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3368  0x747fc  5      
  jmpq .L_751c0                          #  3369  0x74801  5      
  xchgw %ax, %ax                         #  3370  0x74806  3      
.L_75be0:                                #        0x74809  0      
  cmpl $0xffffffff, %r10d                #  3371  0x74809  7      
  je .L_76960                            #  3372  0x74810  6      
  cmpl $0x47, 0xf8(%rsp)                 #  3373  0x74816  8      
  je .L_76620                            #  3374  0x7481e  6      
  cmpl $0x67, 0xf8(%rsp)                 #  3375  0x74824  8      
  je .L_76620                            #  3376  0x7482c  6      
  xorl %r11d, %r11d                      #  3377  0x74832  3      
  movq $0x0, 0xe0(%rsp)                  #  3378  0x74835  12     
  jmpq .L_749c0                          #  3379  0x74841  5      
  nop                                    #  3380  0x74846  1      
.L_75c20:                                #        0x74847  0      
  cmpl $0x46, 0xf8(%rsp)                 #  3381  0x74847  8      
  je .L_76920                            #  3382  0x7484f  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3383  0x74855  8      
  jle .L_76900                           #  3384  0x7485d  6      
  nop                                    #  3385  0x74863  1      
  cmpl $0x66, 0xf8(%rsp)                 #  3386  0x74864  8      
  movl 0x27c(%rsp), %ecx                 #  3387  0x7486c  7      
  jne .L_74bc0                           #  3388  0x74873  6      
  nop                                    #  3389  0x74879  1      
.L_75c60:                                #        0x7487a  0      
  testl %ecx, %ecx                       #  3390  0x7487a  2      
  jle .L_76a00                           #  3391  0x7487c  6      
  testl %r10d, %r10d                     #  3392  0x74882  3      
  jne .L_75c80                           #  3393  0x74885  6      
  testb $0x1, %r13b                      #  3394  0x7488b  4      
  je .L_76840                            #  3395  0x7488f  6      
  nop                                    #  3396  0x74895  1      
.L_75c80:                                #        0x74896  0      
  leal 0x1(%rcx,%r10,1), %r10d           #  3397  0x74896  5      
  movl %r10d, 0xc4(%rsp)                 #  3398  0x7489b  8      
  jmpq .L_74c00                          #  3399  0x748a3  5      
  nop                                    #  3400  0x748a8  1      
.L_75ca0:                                #        0x748a9  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3401  0x748a9  8      
  movzbl 0x28f(%rsp), %eax               #  3402  0x748b1  8      
  cmovnsl 0xc4(%rsp), %ecx               #  3403  0x748b9  8      
  movl %ecx, 0xb0(%rsp)                  #  3404  0x748c1  7      
  nop                                    #  3405  0x748c8  1      
  jmpq .L_74f00                          #  3406  0x748c9  5      
  nop                                    #  3407  0x748ce  1      
  nop                                    #  3408  0x748cf  1      
.L_75ce0:                                #        0x748d0  0      
  subl $0x2, 0xf8(%rsp)                  #  3409  0x748d0  8      
  nop                                    #  3410  0x748d8  1      
  nop                                    #  3411  0x748d9  1      
.L_75d00:                                #        0x748da  0      
  subl $0x1, %ecx                        #  3412  0x748da  3      
  cmpl $0x41, 0xf8(%rsp)                 #  3413  0x748dd  8      
  movl %ecx, 0x27c(%rsp)                 #  3414  0x748e5  7      
  sete %dl                               #  3415  0x748ec  3      
  cmpl $0x61, 0xf8(%rsp)                 #  3416  0x748ef  8      
  sete %al                               #  3417  0x748f7  3      
  orl %eax, %edx                         #  3418  0x748fa  2      
  movzbl 0xf8(%rsp), %eax                #  3419  0x748fc  8      
  addl $0xf, %eax                        #  3420  0x74904  3      
  andl $0x1, %edx                        #  3421  0x74907  3      
  cmovel 0xf8(%rsp), %eax                #  3422  0x7490a  8      
  testl %ecx, %ecx                       #  3423  0x74912  2      
  nop                                    #  3424  0x74914  1      
  movb %al, 0x260(%rsp)                  #  3425  0x74915  7      
  js .L_76860                            #  3426  0x7491c  6      
  movb $0x2b, 0x261(%rsp)                #  3427  0x74922  8      
  nop                                    #  3428  0x7492a  1      
.L_75d60:                                #        0x7492b  0      
  cmpl $0x9, %ecx                        #  3429  0x7492b  3      
  jle .L_76560                           #  3430  0x7492e  6      
  movq 0x158(%rsp), %rsi                 #  3431  0x74934  8      
  movl $0x66666667, %edi                 #  3432  0x7493c  5      
  nop                                    #  3433  0x74941  1      
.L_75d80:                                #        0x74942  0      
  movl %ecx, %eax                        #  3434  0x74942  2      
  subl $0x1, %esi                        #  3435  0x74944  3      
  imull %edi                             #  3436  0x74947  2      
  movl %ecx, %eax                        #  3437  0x74949  2      
  sarl $0x1f, %eax                       #  3438  0x7494b  3      
  sarl $0x2, %edx                        #  3439  0x7494e  3      
  subl %eax, %edx                        #  3440  0x74951  2      
  leal (%rdx,%rdx,4), %eax               #  3441  0x74953  3      
  addl %eax, %eax                        #  3442  0x74956  2      
  subl %eax, %ecx                        #  3443  0x74958  2      
  movl %ecx, %eax                        #  3444  0x7495a  2      
  movl %edx, %ecx                        #  3445  0x7495c  2      
  addl $0x30, %eax                       #  3446  0x7495e  3      
  nop                                    #  3447  0x74961  1      
  cmpl $0x9, %edx                        #  3448  0x74962  3      
  movl %esi, %esi                        #  3449  0x74965  2      
  movb %al, (%r15,%rsi,1)                #  3450  0x74967  4      
  jg .L_75d80                            #  3451  0x7496b  6      
  leal -0x1(%rsi), %eax                  #  3452  0x74971  3      
  leal 0x30(%rcx), %edx                  #  3453  0x74974  3      
  movl %eax, %eax                        #  3454  0x74977  2      
  movb %dl, (%r15,%rax,1)                #  3455  0x74979  4      
  cmpl %eax, 0x158(%rsp)                 #  3456  0x7497d  7      
  xchgw %ax, %ax                         #  3457  0x74984  3      
  jbe .L_76be0                           #  3458  0x74987  6      
  movl %esi, %ecx                        #  3459  0x7498d  2      
  leal 0x260(%rsp), %esi                 #  3460  0x7498f  7      
  movq 0x158(%rsp), %rdi                 #  3461  0x74996  8      
  leaq 0x2(%rsi), %rax                   #  3462  0x7499e  4      
  jmpq .L_75e00                          #  3463  0x749a2  5      
  nop                                    #  3464  0x749a7  1      
.L_75de0:                                #        0x749a8  0      
  movl %ecx, %edx                        #  3465  0x749a8  2      
  addl $0x1, %ecx                        #  3466  0x749aa  3      
  movl %edx, %edx                        #  3467  0x749ad  2      
  movzbl (%r15,%rdx,1), %edx             #  3468  0x749af  5      
  nop                                    #  3469  0x749b4  1      
  nop                                    #  3470  0x749b5  1      
.L_75e00:                                #        0x749b6  0      
  movl %eax, %eax                        #  3471  0x749b6  2      
  movb %dl, (%r15,%rax,1)                #  3472  0x749b8  4      
  addl $0x1, %eax                        #  3473  0x749bc  3      
  cmpl %edi, %ecx                        #  3474  0x749bf  2      
  jb .L_75de0                            #  3475  0x749c1  6      
  nop                                    #  3476  0x749c7  1      
  nop                                    #  3477  0x749c8  1      
.L_75e20:                                #        0x749c9  0      
  subl %esi, %eax                        #  3478  0x749c9  2      
  movl %eax, 0x134(%rsp)                 #  3479  0x749cb  7      
  addl 0x10c(%rsp), %eax                 #  3480  0x749d2  7      
  cmpl $0x1, 0x10c(%rsp)                 #  3481  0x749d9  8      
  movl %eax, 0xc4(%rsp)                  #  3482  0x749e1  7      
  nop                                    #  3483  0x749e8  1      
  jle .L_76820                           #  3484  0x749e9  6      
  nop                                    #  3485  0x749ef  1      
  nop                                    #  3486  0x749f0  1      
.L_75e60:                                #        0x749f1  0      
  addl $0x1, 0xc4(%rsp)                  #  3487  0x749f1  8      
  nop                                    #  3488  0x749f9  1      
  nop                                    #  3489  0x749fa  1      
.L_75e80:                                #        0x749fb  0      
  andl $0xfffffbff, %r13d                #  3490  0x749fb  7      
  movl $0x0, 0x108(%rsp)                 #  3491  0x74a02  11     
  movl $0x0, 0x120(%rsp)                 #  3492  0x74a0d  11     
  nop                                    #  3493  0x74a18  1      
  movl $0x0, 0x11c(%rsp)                 #  3494  0x74a19  11     
  nop                                    #  3495  0x74a24  1      
  nop                                    #  3496  0x74a25  1      
.L_75ec0:                                #        0x74a26  0      
  cmpb $0x0, 0xd8(%rsp)                  #  3497  0x74a26  8      
  je .L_75f20                            #  3498  0x74a2e  6      
  cmpl $0x0, 0xc4(%rsp)                  #  3499  0x74a34  8      
  movl $0x0, %edx                        #  3500  0x74a3c  5      
  movb $0x2d, 0x28f(%rsp)                #  3501  0x74a41  8      
  nop                                    #  3502  0x74a49  1      
  cmovnsl 0xc4(%rsp), %edx               #  3503  0x74a4a  8      
  movl $0x2d, %eax                       #  3504  0x74a52  5      
  movl $0x0, 0xfc(%rsp)                  #  3505  0x74a57  11     
  movl %edx, 0xb0(%rsp)                  #  3506  0x74a62  7      
  nop                                    #  3507  0x74a69  1      
  jmpq .L_72280                          #  3508  0x74a6a  5      
  nop                                    #  3509  0x74a6f  1      
  nop                                    #  3510  0x74a70  1      
.L_75f20:                                #        0x74a71  0      
  cmpl $0x0, 0xc4(%rsp)                  #  3511  0x74a71  8      
  movl $0x0, %eax                        #  3512  0x74a79  5      
  movl $0x0, 0xfc(%rsp)                  #  3513  0x74a7e  11     
  cmovnsl 0xc4(%rsp), %eax               #  3514  0x74a89  8      
  movl %eax, 0xb0(%rsp)                  #  3515  0x74a91  7      
  movzbl 0x28f(%rsp), %eax               #  3516  0x74a98  8      
  jmpq .L_72260                          #  3517  0x74aa0  5      
  nop                                    #  3518  0x74aa5  1      
.L_75f60:                                #        0x74aa6  0      
  movq 0xb8(%rsp), %rbx                  #  3519  0x74aa6  8      
  movl %ebx, %ebx                        #  3520  0x74aae  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  3521  0x74ab0  6      
  jne .L_72d00                           #  3522  0x74ab6  6      
  movl 0xb8(%rsp), %edi                  #  3523  0x74abc  7      
  addl $0x5c, %edi                       #  3524  0x74ac3  3      
  nop                                    #  3525  0x74ac6  1      
  nop                                    #  3526  0x74ac7  1      
  callq .__local_lock_release_recursive  #  3527  0x74ac8  5      
  movl $0xffffffff, 0xd0(%rsp)           #  3528  0x74acd  11     
  jmpq .L_71ee0                          #  3529  0x74ad8  5      
  nop                                    #  3530  0x74add  1      
  nop                                    #  3531  0x74ade  1      
.L_75fc0:                                #        0x74adf  0      
  movl %r13d, 0xc4(%rsp)                 #  3532  0x74adf  8      
  movq 0xb0(%rsp), %r12                  #  3533  0x74ae7  8      
  movq 0xe0(%rsp), %rbx                  #  3534  0x74aef  8      
  movl 0xd8(%rsp), %r13d                 #  3535  0x74af7  8      
  jmpq .L_74ec0                          #  3536  0x74aff  5      
  nop                                    #  3537  0x74b04  1      
  nop                                    #  3538  0x74b05  1      
.L_76000:                                #        0x74b06  0      
  testb $0x1, %r13b                      #  3539  0x74b06  4      
  jne .L_74b00                           #  3540  0x74b0a  6      
  movl 0x26c(%rsp), %edx                 #  3541  0x74b10  7      
  jmpq .L_74b80                          #  3542  0x74b17  5      
  nop                                    #  3543  0x74b1c  1      
.L_76020:                                #        0x74b1d  0      
  cmpl $0x45, 0xf8(%rsp)                 #  3544  0x74b1d  8      
  je .L_76700                            #  3545  0x74b25  6      
  cmpl $0x65, 0xf8(%rsp)                 #  3546  0x74b2b  8      
  je .L_76700                            #  3547  0x74b33  6      
  nop                                    #  3548  0x74b39  1      
  movl %r10d, 0xc4(%rsp)                 #  3549  0x74b3a  8      
  movl $0x2, %esi                        #  3550  0x74b42  5      
  jmpq .L_74a60                          #  3551  0x74b47  5      
  nop                                    #  3552  0x74b4c  1      
.L_76060:                                #        0x74b4d  0      
  movl 0xb8(%rsp), %esi                  #  3553  0x74b4d  7      
  leal 0x210(%rsp), %edx                 #  3554  0x74b54  7      
  movl %r14d, %edi                       #  3555  0x74b5b  3      
  nop                                    #  3556  0x74b5e  1      
  callq .__sprint_r                      #  3557  0x74b5f  5      
  testl %eax, %eax                       #  3558  0x74b64  2      
  jne .L_72c80                           #  3559  0x74b66  6      
  leal 0x1d0(%rsp), %eax                 #  3560  0x74b6c  7      
  jmpq .L_754c0                          #  3561  0x74b73  5      
  nop                                    #  3562  0x74b78  1      
.L_760a0:                                #        0x74b79  0      
  movl 0xb8(%rsp), %esi                  #  3563  0x74b79  7      
  leal 0x210(%rsp), %edx                 #  3564  0x74b80  7      
  movl %r14d, %edi                       #  3565  0x74b87  3      
  nop                                    #  3566  0x74b8a  1      
  callq .__sprint_r                      #  3567  0x74b8b  5      
  testl %eax, %eax                       #  3568  0x74b90  2      
  je .L_753e0                            #  3569  0x74b92  6      
  movq 0xb8(%rsp), %rsi                  #  3570  0x74b98  8      
  movl %esi, %esi                        #  3571  0x74ba0  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  3572  0x74ba2  6      
  jmpq .L_72cc0                          #  3573  0x74ba8  5      
  nop                                    #  3574  0x74bad  1      
.L_760e0:                                #        0x74bae  0      
  movl 0xb8(%rsp), %esi                  #  3575  0x74bae  7      
  leal 0x210(%rsp), %edx                 #  3576  0x74bb5  7      
  movl %r14d, %edi                       #  3577  0x74bbc  3      
  nop                                    #  3578  0x74bbf  1      
  callq .__sprint_r                      #  3579  0x74bc0  5      
  testl %eax, %eax                       #  3580  0x74bc5  2      
  jne .L_72c80                           #  3581  0x74bc7  6      
  leal 0x1d0(%rsp), %ebx                 #  3582  0x74bcd  7      
  jmpq .L_75440                          #  3583  0x74bd4  5      
  nop                                    #  3584  0x74bd9  1      
.L_76120:                                #        0x74bda  0      
  movl %ecx, 0x11c(%rsp)                 #  3585  0x74bda  7      
  movl $0x0, 0x108(%rsp)                 #  3586  0x74be1  11     
  movl $0x0, 0x120(%rsp)                 #  3587  0x74bec  11     
  nop                                    #  3588  0x74bf7  1      
  jmpq .L_75ec0                          #  3589  0x74bf8  5      
  nop                                    #  3590  0x74bfd  1      
  nop                                    #  3591  0x74bfe  1      
.L_76160:                                #        0x74bff  0      
  movl 0xb8(%rsp), %esi                  #  3592  0x74bff  7      
  leal 0x210(%rsp), %edx                 #  3593  0x74c06  7      
  movl %r14d, %edi                       #  3594  0x74c0d  3      
  nop                                    #  3595  0x74c10  1      
  callq .__sprint_r                      #  3596  0x74c11  5      
  testl %eax, %eax                       #  3597  0x74c16  2      
  jne .L_72c80                           #  3598  0x74c18  6      
  movl 0x27c(%rsp), %ecx                 #  3599  0x74c1e  7      
  leal 0x1d0(%rsp), %ebx                 #  3600  0x74c25  7      
  jmpq .L_73da0                          #  3601  0x74c2c  5      
  nop                                    #  3602  0x74c31  1      
.L_761a0:                                #        0x74c32  0      
  movl 0xb8(%rsp), %esi                  #  3603  0x74c32  7      
  leal 0x210(%rsp), %edx                 #  3604  0x74c39  7      
  movl %r14d, %edi                       #  3605  0x74c40  3      
  movl %r8d, 0x80(%rsp)                  #  3606  0x74c43  8      
  xchgw %ax, %ax                         #  3607  0x74c4b  3      
  callq .__sprint_r                      #  3608  0x74c4e  5      
  testl %eax, %eax                       #  3609  0x74c53  2      
  movl 0x80(%rsp), %r8d                  #  3610  0x74c55  8      
  jne .L_72c80                           #  3611  0x74c5d  6      
  movl 0x10c(%rsp), %ecx                 #  3612  0x74c63  7      
  leal 0x1d0(%rsp), %ebx                 #  3613  0x74c6a  7      
  xchgw %ax, %ax                         #  3614  0x74c71  3      
  subl 0x27c(%rsp), %ecx                 #  3615  0x74c74  7      
  jmpq .L_73e20                          #  3616  0x74c7b  5      
  nop                                    #  3617  0x74c80  1      
  nop                                    #  3618  0x74c81  1      
.L_76200:                                #        0x74c82  0      
  movq 0xc8(%rsp), %rsi                  #  3619  0x74c82  8      
  movl %esi, %esi                        #  3620  0x74c8a  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3621  0x74c8c  5      
  leal 0x8(%rax), %edx                   #  3622  0x74c91  3      
  movl %esi, %esi                        #  3623  0x74c94  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3624  0x74c96  5      
  jmpq .L_748c0                          #  3625  0x74c9b  5      
  xchgw %ax, %ax                         #  3626  0x74ca0  3      
.L_76220:                                #        0x74ca3  0      
  movq 0xc8(%rsp), %rsi                  #  3627  0x74ca3  8      
  movl %esi, %esi                        #  3628  0x74cab  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3629  0x74cad  5      
  leal 0x8(%rax), %edx                   #  3630  0x74cb2  3      
  movl %esi, %esi                        #  3631  0x74cb5  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3632  0x74cb7  5      
  jmpq .L_75a00                          #  3633  0x74cbc  5      
  xchgw %ax, %ax                         #  3634  0x74cc1  3      
.L_76240:                                #        0x74cc4  0      
  movq 0xc8(%rsp), %rsi                  #  3635  0x74cc4  8      
  movl %esi, %esi                        #  3636  0x74ccc  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3637  0x74cce  5      
  leal 0x8(%rax), %edx                   #  3638  0x74cd3  3      
  movl %esi, %esi                        #  3639  0x74cd6  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3640  0x74cd8  5      
  jmpq .L_745c0                          #  3641  0x74cdd  5      
  xchgw %ax, %ax                         #  3642  0x74ce2  3      
.L_76260:                                #        0x74ce5  0      
  movq 0xc8(%rsp), %rsi                  #  3643  0x74ce5  8      
  movl %esi, %esi                        #  3644  0x74ced  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3645  0x74cef  5      
  leal 0x8(%rax), %edx                   #  3646  0x74cf4  3      
  movl %esi, %esi                        #  3647  0x74cf7  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3648  0x74cf9  5      
  jmpq .L_75ac0                          #  3649  0x74cfe  5      
  xchgw %ax, %ax                         #  3650  0x74d03  3      
.L_76280:                                #        0x74d06  0      
  movq 0xc8(%rsp), %rsi                  #  3651  0x74d06  8      
  movl %esi, %esi                        #  3652  0x74d0e  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3653  0x74d10  5      
  leal 0x8(%rax), %edx                   #  3654  0x74d15  3      
  movl %esi, %esi                        #  3655  0x74d18  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3656  0x74d1a  5      
  jmpq .L_74780                          #  3657  0x74d1f  5      
  xchgw %ax, %ax                         #  3658  0x74d24  3      
.L_762a0:                                #        0x74d27  0      
  movq 0xc8(%rsp), %rsi                  #  3659  0x74d27  8      
  movl %esi, %esi                        #  3660  0x74d2f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3661  0x74d31  5      
  leal 0x8(%rax), %edx                   #  3662  0x74d36  3      
  movl %esi, %esi                        #  3663  0x74d39  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3664  0x74d3b  5      
  jmpq .L_75a60                          #  3665  0x74d40  5      
  xchgw %ax, %ax                         #  3666  0x74d45  3      
.L_762c0:                                #        0x74d48  0      
  movq 0xc8(%rsp), %rsi                  #  3667  0x74d48  8      
  movl %esi, %esi                        #  3668  0x74d50  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3669  0x74d52  5      
  leal 0x8(%rax), %edx                   #  3670  0x74d57  3      
  movl %esi, %esi                        #  3671  0x74d5a  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3672  0x74d5c  5      
  jmpq .L_746e0                          #  3673  0x74d61  5      
  xchgw %ax, %ax                         #  3674  0x74d66  3      
.L_762e0:                                #        0x74d69  0      
  movq 0xc8(%rsp), %rsi                  #  3675  0x74d69  8      
  movl %esi, %esi                        #  3676  0x74d71  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3677  0x74d73  5      
  leal 0x8(%rax), %edx                   #  3678  0x74d78  3      
  movl %esi, %esi                        #  3679  0x74d7b  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3680  0x74d7d  5      
  jmpq .L_75b20                          #  3681  0x74d82  5      
  xchgw %ax, %ax                         #  3682  0x74d87  3      
.L_76300:                                #        0x74d8a  0      
  movl 0x58(%rsp), %r8d                  #  3683  0x74d8a  5      
  leal 0x274(%rsp), %edx                 #  3684  0x74d8f  7      
  xorl %ecx, %ecx                        #  3685  0x74d96  2      
  xorl %esi, %esi                        #  3686  0x74d98  2      
  movl %r14d, %edi                       #  3687  0x74d9a  3      
  nop                                    #  3688  0x74d9d  1      
  callq ._wcsrtombs_r                    #  3689  0x74d9e  5      
  cmpl $0xffffffff, %eax                 #  3690  0x74da3  5      
  movl %eax, 0xc4(%rsp)                  #  3691  0x74da8  7      
  je .L_76bc0                            #  3692  0x74daf  6      
  movl 0xa8(%rsp), %eax                  #  3693  0x74db5  7      
  movl %eax, 0x274(%rsp)                 #  3694  0x74dbc  7      
  xchgw %ax, %ax                         #  3695  0x74dc3  3      
  jmpq .L_74ec0                          #  3696  0x74dc6  5      
  nop                                    #  3697  0x74dcb  1      
  nop                                    #  3698  0x74dcc  1      
.L_76360:                                #        0x74dcd  0      
  movq 0xc8(%rsp), %rsi                  #  3699  0x74dcd  8      
  movl %esi, %esi                        #  3700  0x74dd5  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3701  0x74dd7  5      
  leal 0x8(%rax), %edx                   #  3702  0x74ddc  3      
  movl %esi, %esi                        #  3703  0x74ddf  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3704  0x74de1  5      
  jmpq .L_74840                          #  3705  0x74de6  5      
  xchgw %ax, %ax                         #  3706  0x74deb  3      
.L_76380:                                #        0x74dee  0      
  leal 0x27c(%rsp), %edi                 #  3707  0x74dee  7      
  movsd 0xb0(%rsp), %xmm0                #  3708  0x74df5  9      
  movl %r10d, 0x88(%rsp)                 #  3709  0x74dfe  8      
  movb %r11b, 0x98(%rsp)                 #  3710  0x74e06  8      
  nop                                    #  3711  0x74e0e  1      
  nop                                    #  3712  0x74e0f  1      
  callq .frexp                           #  3713  0x74e10  5      
  mulsd 0xffaf10b(%rip), %xmm0           #  3714  0x74e15  8      
  movl $0x1, %eax                        #  3715  0x74e1d  5      
  movl 0x88(%rsp), %r10d                 #  3716  0x74e22  8      
  xorpd %xmm1, %xmm1                     #  3717  0x74e2a  4      
  movl $0x10023c01, %edi                 #  3718  0x74e2e  5      
  xchgw %ax, %ax                         #  3719  0x74e33  3      
  movsd 0xffaf0f2(%rip), %xmm3           #  3720  0x74e36  8      
  movzbl 0x98(%rsp), %r11d               #  3721  0x74e3e  9      
  movl %r10d, %ecx                       #  3722  0x74e47  3      
  ucomisd %xmm1, %xmm0                   #  3723  0x74e4a  4      
  cmovnel 0x27c(%rsp), %eax              #  3724  0x74e4e  8      
  cmovpl 0x27c(%rsp), %eax               #  3725  0x74e56  8      
  cmpb $0x0, 0xc4(%rsp)                  #  3726  0x74e5e  8      
  movl %eax, 0x27c(%rsp)                 #  3727  0x74e66  7      
  movl $0x10023be0, %eax                 #  3728  0x74e6d  5      
  cmoveq %rax, %rdi                      #  3729  0x74e72  4      
  movq 0xa8(%rsp), %rax                  #  3730  0x74e76  8      
  jmpq .L_76460                          #  3731  0x74e7e  5      
  nop                                    #  3732  0x74e83  1      
  nop                                    #  3733  0x74e84  1      
.L_76440:                                #        0x74e85  0      
  movq %rdx, %rax                        #  3734  0x74e85  3      
  nop                                    #  3735  0x74e88  1      
  nop                                    #  3736  0x74e89  1      
.L_76460:                                #        0x74e8a  0      
  mulsd %xmm3, %xmm0                     #  3737  0x74e8a  4      
  subl $0x1, %ecx                        #  3738  0x74e8e  3      
  cmpl $0xffffffff, %ecx                 #  3739  0x74e91  6      
  cvttsd2si %xmm0, %esi                  #  3740  0x74e97  4      
  cvtsi2sdl %esi, %xmm2                  #  3741  0x74e9b  4      
  leal (%rsi,%rdi,1), %edx               #  3742  0x74e9f  3      
  movl %edx, %edx                        #  3743  0x74ea2  2      
  movzbl (%r15,%rdx,1), %edx             #  3744  0x74ea4  5      
  nop                                    #  3745  0x74ea9  1      
  movl %eax, %eax                        #  3746  0x74eaa  2      
  movb %dl, (%r15,%rax,1)                #  3747  0x74eac  4      
  leal 0x1(%rax), %edx                   #  3748  0x74eb0  3      
  subsd %xmm2, %xmm0                     #  3749  0x74eb3  4      
  je .L_76640                            #  3750  0x74eb7  6      
  ucomisd %xmm1, %xmm0                   #  3751  0x74ebd  4      
  jne .L_76440                           #  3752  0x74ec1  6      
  jp .L_76440                            #  3753  0x74ec7  6      
  nop                                    #  3754  0x74ecd  1      
  movsd 0xffaf062(%rip), %xmm1           #  3755  0x74ece  8      
  nop                                    #  3756  0x74ed6  1      
  nop                                    #  3757  0x74ed7  1      
.L_764c0:                                #        0x74ed8  0      
  movq %rdx, %r8                         #  3758  0x74ed8  3      
  ucomisd %xmm1, %xmm0                   #  3759  0x74edb  4      
  jne .L_764e0                           #  3760  0x74edf  6      
  jp .L_764e0                            #  3761  0x74ee5  6      
  andb $0x1, %sil                        #  3762  0x74eeb  4      
  jne .L_76660                           #  3763  0x74eef  6      
  nop                                    #  3764  0x74ef5  1      
.L_764e0:                                #        0x74ef6  0      
  testl %ecx, %ecx                       #  3765  0x74ef6  2      
  leal -0x1(%rcx), %eax                  #  3766  0x74ef8  3      
  js .L_74b80                            #  3767  0x74efb  6      
  nop                                    #  3768  0x74f01  1      
  nop                                    #  3769  0x74f02  1      
.L_76500:                                #        0x74f03  0      
  subl $0x1, %eax                        #  3770  0x74f03  3      
  movl %edx, %edx                        #  3771  0x74f06  2      
  movb $0x30, (%r15,%rdx,1)              #  3772  0x74f08  5      
  addl $0x1, %edx                        #  3773  0x74f0d  3      
  cmpl $0xfffffffe, %eax                 #  3774  0x74f10  5      
  jne .L_76500                           #  3775  0x74f15  6      
  leal 0x1(%rcx,%r8,1), %edx             #  3776  0x74f1b  5      
  jmpq .L_74b80                          #  3777  0x74f20  5      
  nop                                    #  3778  0x74f25  1      
.L_76520:                                #        0x74f26  0      
  movsd 0xffaf012(%rip), %xmm0           #  3779  0x74f26  8      
  movb $0x2d, 0xd8(%rsp)                 #  3780  0x74f2e  8      
  movsd 0x128(%rsp), %xmm1               #  3781  0x74f36  9      
  xorpd %xmm0, %xmm1                     #  3782  0x74f3f  4      
  nop                                    #  3783  0x74f43  1      
  movsd %xmm1, 0xb0(%rsp)                #  3784  0x74f44  9      
  jmpq .L_74a00                          #  3785  0x74f4d  5      
  nop                                    #  3786  0x74f52  1      
  nop                                    #  3787  0x74f53  1      
.L_76560:                                #        0x74f54  0      
  testl %edx, %edx                       #  3788  0x74f54  2      
  je .L_769e0                            #  3789  0x74f56  6      
  leal 0x260(%rsp), %esi                 #  3790  0x74f5c  7      
  leaq 0x3(%rsi), %rax                   #  3791  0x74f63  4      
  leaq 0x2(%rsi), %rdx                   #  3792  0x74f67  4      
  nop                                    #  3793  0x74f6b  1      
.L_76580:                                #        0x74f6c  0      
  addl $0x30, %ecx                       #  3794  0x74f6c  3      
  movl %edx, %edx                        #  3795  0x74f6f  2      
  movb %cl, (%r15,%rdx,1)                #  3796  0x74f71  4      
  jmpq .L_75e20                          #  3797  0x74f75  5      
  nop                                    #  3798  0x74f7a  1      
  nop                                    #  3799  0x74f7b  1      
.L_765a0:                                #        0x74f7c  0      
  movq 0xc8(%rsp), %rcx                  #  3800  0x74f7c  8      
  movl %ecx, %ecx                        #  3801  0x74f84  2      
  movl (%r15,%rcx,1), %edx               #  3802  0x74f86  4      
  cmpl $0x2f, %edx                       #  3803  0x74f8a  3      
  ja .L_75960                            #  3804  0x74f8d  6      
  movl %ecx, %ecx                        #  3805  0x74f93  2      
  movl 0xc(%r15,%rcx,1), %eax            #  3806  0x74f95  5      
  addl %edx, %eax                        #  3807  0x74f9a  2      
  addl $0x8, %edx                        #  3808  0x74f9c  3      
  movl %ecx, %ecx                        #  3809  0x74f9f  2      
  movl %edx, (%r15,%rcx,1)               #  3810  0x74fa1  4      
  jmpq .L_75220                          #  3811  0x74fa5  5      
  nop                                    #  3812  0x74faa  1      
  nop                                    #  3813  0x74fab  1      
.L_765e0:                                #        0x74fac  0      
  movl 0x26c(%rsp), %ecx                 #  3814  0x74fac  7      
  cmpl %ecx, %edx                        #  3815  0x74fb3  2      
  movq %rcx, %rax                        #  3816  0x74fb5  3      
  jbe .L_76b80                           #  3817  0x74fb8  6      
  nop                                    #  3818  0x74fbe  1      
.L_76600:                                #        0x74fbf  0      
  movl %eax, %eax                        #  3819  0x74fbf  2      
  movb $0x30, (%r15,%rax,1)              #  3820  0x74fc1  5      
  addl $0x1, %eax                        #  3821  0x74fc6  3      
  cmpl %eax, %edx                        #  3822  0x74fc9  2      
  movl %eax, 0x26c(%rsp)                 #  3823  0x74fcb  7      
  ja .L_76600                            #  3824  0x74fd2  6      
  jmpq .L_74b80                          #  3825  0x74fd8  5      
  nop                                    #  3826  0x74fdd  1      
.L_76620:                                #        0x74fde  0      
  testl %r10d, %r10d                     #  3827  0x74fde  3      
  je .L_76940                            #  3828  0x74fe1  6      
  movl $0x1, %r11d                       #  3829  0x74fe7  6      
  movq $0x0, 0xe0(%rsp)                  #  3830  0x74fed  12     
  jmpq .L_749c0                          #  3831  0x74ff9  5      
.L_76640:                                #        0x74ffe  0      
  movsd 0xffaef32(%rip), %xmm1           #  3832  0x74ffe  8      
  ucomisd %xmm1, %xmm0                   #  3833  0x75006  4      
  jbe .L_764c0                           #  3834  0x7500a  6      
  nop                                    #  3835  0x75010  1      
.L_76660:                                #        0x75011  0      
  leal 0xf(%rdi), %esi                   #  3836  0x75011  3      
  movl %eax, 0x26c(%rsp)                 #  3837  0x75014  7      
  movl %eax, %eax                        #  3838  0x7501b  2      
  movzbl (%r15,%rax,1), %ecx             #  3839  0x7501d  5      
  movl %esi, %esi                        #  3840  0x75022  2      
  cmpb (%r15,%rsi,1), %cl                #  3841  0x75024  4      
  jne .L_766c0                           #  3842  0x75028  6      
  nop                                    #  3843  0x7502e  1      
.L_76680:                                #        0x7502f  0      
  movl %eax, %eax                        #  3844  0x7502f  2      
  movb $0x30, (%r15,%rax,1)              #  3845  0x75031  5      
  movl 0x26c(%rsp), %eax                 #  3846  0x75036  7      
  subl $0x1, %eax                        #  3847  0x7503d  3      
  movl %eax, 0x26c(%rsp)                 #  3848  0x75040  7      
  movl %eax, %eax                        #  3849  0x75047  2      
  movzbl (%r15,%rax,1), %ecx             #  3850  0x75049  5      
  nop                                    #  3851  0x7504e  1      
  movl %esi, %esi                        #  3852  0x7504f  2      
  cmpb (%r15,%rsi,1), %cl                #  3853  0x75051  4      
  je .L_76680                            #  3854  0x75055  6      
  nop                                    #  3855  0x7505b  1      
  nop                                    #  3856  0x7505c  1      
.L_766c0:                                #        0x7505d  0      
  cmpb $0x39, %cl                        #  3857  0x7505d  3      
  je .L_76a60                            #  3858  0x75060  6      
  addl $0x1, %ecx                        #  3859  0x75066  3      
  nop                                    #  3860  0x75069  1      
  nop                                    #  3861  0x7506a  1      
.L_766e0:                                #        0x7506b  0      
  movl %eax, %eax                        #  3862  0x7506b  2      
  movb %cl, (%r15,%rax,1)                #  3863  0x7506d  4      
  jmpq .L_74b80                          #  3864  0x75071  5      
  nop                                    #  3865  0x75076  1      
  nop                                    #  3866  0x75077  1      
.L_76700:                                #        0x75078  0      
  leal 0x1(%r10), %eax                   #  3867  0x75078  4      
  movl $0x2, %esi                        #  3868  0x7507c  5      
  movl %eax, 0xc4(%rsp)                  #  3869  0x75081  7      
  jmpq .L_74a60                          #  3870  0x75088  5      
  nop                                    #  3871  0x7508d  1      
.L_76720:                                #        0x7508e  0      
  movl 0x108(%rsp), %eax                 #  3872  0x7508e  7      
  addl 0x120(%rsp), %eax                 #  3873  0x75095  7      
  imull 0x130(%rsp), %eax                #  3874  0x7509c  8      
  movl %esi, 0x11c(%rsp)                 #  3875  0x750a4  7      
  nop                                    #  3876  0x750ab  1      
  movq %r8, 0xe8(%rsp)                   #  3877  0x750ac  8      
  addl %eax, 0xc4(%rsp)                  #  3878  0x750b4  7      
  jmpq .L_75ec0                          #  3879  0x750bb  5      
  nop                                    #  3880  0x750c0  1      
.L_76760:                                #        0x750c1  0      
  testl %ecx, %ecx                       #  3881  0x750c1  2      
  movl $0x1, %eax                        #  3882  0x750c3  5      
  jg .L_76780                            #  3883  0x750c8  6      
  movb $0x2, %al                         #  3884  0x750ce  2      
  subl %ecx, %eax                        #  3885  0x750d0  2      
  nop                                    #  3886  0x750d2  1      
  nop                                    #  3887  0x750d3  1      
.L_76780:                                #        0x750d4  0      
  addl 0x10c(%rsp), %eax                 #  3888  0x750d4  7      
  movl %eax, 0xc4(%rsp)                  #  3889  0x750db  7      
  jmpq .L_74c00                          #  3890  0x750e2  5      
  nop                                    #  3891  0x750e7  1      
.L_767a0:                                #        0x750e8  0      
  movq 0xb8(%rsp), %rbx                  #  3892  0x750e8  8      
  movl %ebx, %ebx                        #  3893  0x750f0  2      
  movzwl 0xc(%r15,%rbx,1), %eax          #  3894  0x750f2  6      
  orl $0x40, %eax                        #  3895  0x750f8  3      
  movl %ebx, %ebx                        #  3896  0x750fb  2      
  movw %ax, 0xc(%r15,%rbx,1)             #  3897  0x750fd  6      
  jmpq .L_72cc0                          #  3898  0x75103  5      
.L_767c0:                                #        0x75108  0      
  movl 0xb8(%rsp), %esi                  #  3899  0x75108  7      
  leal 0x210(%rsp), %edx                 #  3900  0x7510f  7      
  movl %r14d, %edi                       #  3901  0x75116  3      
  nop                                    #  3902  0x75119  1      
  callq .__sprint_r                      #  3903  0x7511a  5      
  testl %eax, %eax                       #  3904  0x7511f  2      
  jne .L_72c80                           #  3905  0x75121  6      
  leal 0x1d0(%rsp), %eax                 #  3906  0x75127  7      
  jmpq .L_756c0                          #  3907  0x7512e  5      
  nop                                    #  3908  0x75133  1      
.L_76800:                                #        0x75134  0      
  movq 0xb8(%rsp), %rdx                  #  3909  0x75134  8      
  movl %edx, %edx                        #  3910  0x7513c  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  3911  0x7513e  6      
  jmpq .L_72cc0                          #  3912  0x75144  5      
  nop                                    #  3913  0x75149  1      
.L_76820:                                #        0x7514a  0      
  testb $0x1, %r13b                      #  3914  0x7514a  4      
  je .L_75e80                            #  3915  0x7514e  6      
  jmpq .L_75e60                          #  3916  0x75154  5      
  xchgw %ax, %ax                         #  3917  0x75159  3      
  nop                                    #  3918  0x7515c  1      
.L_76840:                                #        0x7515d  0      
  movl %ecx, 0xc4(%rsp)                  #  3919  0x7515d  7      
  jmpq .L_74c00                          #  3920  0x75164  5      
  nop                                    #  3921  0x75169  1      
  nop                                    #  3922  0x7516a  1      
.L_76860:                                #        0x7516b  0      
  negl %ecx                              #  3923  0x7516b  2      
  movb $0x2d, 0x261(%rsp)                #  3924  0x7516d  8      
  jmpq .L_75d60                          #  3925  0x75175  5      
  xchgw %ax, %ax                         #  3926  0x7517a  3      
  nop                                    #  3927  0x7517d  1      
.L_76880:                                #        0x7517e  0      
  leal 0x1(%r10), %esi                   #  3928  0x7517e  4      
  movl %r14d, %edi                       #  3929  0x75182  3      
  movl %r10d, 0x88(%rsp)                 #  3930  0x75185  8      
  nop                                    #  3931  0x7518d  1      
  callq ._malloc_r                       #  3932  0x7518e  5      
  movl %eax, %eax                        #  3933  0x75193  2      
  movl 0x88(%rsp), %r10d                 #  3934  0x75195  8      
  testq %rax, %rax                       #  3935  0x7519d  3      
  movq %rax, 0xe0(%rsp)                  #  3936  0x751a0  8      
  je .L_76ba0                            #  3937  0x751a8  6      
  nop                                    #  3938  0x751ae  1      
  cmpl $0x67, 0xf8(%rsp)                 #  3939  0x751af  8      
  movq 0xe0(%rsp), %rdx                  #  3940  0x751b7  8      
  movq %rdx, 0xa8(%rsp)                  #  3941  0x751bf  8      
  sete %r11b                             #  3942  0x751c7  4      
  nop                                    #  3943  0x751cb  1      
  cmpl $0x47, 0xf8(%rsp)                 #  3944  0x751cc  8      
  sete %al                               #  3945  0x751d4  3      
  orl %eax, %r11d                        #  3946  0x751d7  3      
  jmpq .L_749c0                          #  3947  0x751da  5      
  nop                                    #  3948  0x751df  1      
.L_76900:                                #        0x751e0  0      
  movl 0x27c(%rsp), %ecx                 #  3949  0x751e0  7      
  jmpq .L_75d00                          #  3950  0x751e7  5      
  nop                                    #  3951  0x751ec  1      
  nop                                    #  3952  0x751ed  1      
.L_76920:                                #        0x751ee  0      
  movl 0x27c(%rsp), %ecx                 #  3953  0x751ee  7      
  movl $0x66, 0xf8(%rsp)                 #  3954  0x751f5  11     
  jmpq .L_75c60                          #  3955  0x75200  5      
  nop                                    #  3956  0x75205  1      
.L_76940:                                #        0x75206  0      
  movl $0x1, %r11d                       #  3957  0x75206  6      
  movl $0x1, %r10d                       #  3958  0x7520c  6      
  movq $0x0, 0xe0(%rsp)                  #  3959  0x75212  12     
  jmpq .L_749c0                          #  3960  0x7521e  5      
  nop                                    #  3961  0x75223  1      
.L_76960:                                #        0x75224  0      
  cmpl $0x67, 0xf8(%rsp)                 #  3962  0x75224  8      
  movl $0x6, %r10d                       #  3963  0x7522c  6      
  movq $0x0, 0xe0(%rsp)                  #  3964  0x75232  12     
  sete %r11b                             #  3965  0x7523e  4      
  xchgw %ax, %ax                         #  3966  0x75242  3      
  cmpl $0x47, 0xf8(%rsp)                 #  3967  0x75245  8      
  sete %al                               #  3968  0x7524d  3      
  orl %eax, %r11d                        #  3969  0x75250  3      
  jmpq .L_749c0                          #  3970  0x75253  5      
  nop                                    #  3971  0x75258  1      
.L_769a0:                                #        0x75259  0      
  movl %r10d, 0xb0(%rsp)                 #  3972  0x75259  8      
  movzbl 0x28f(%rsp), %eax               #  3973  0x75261  8      
  movl %r10d, 0xc4(%rsp)                 #  3974  0x75269  8      
  jmpq .L_74f00                          #  3975  0x75271  5      
  nop                                    #  3976  0x75276  1      
.L_769c0:                                #        0x75277  0      
  movq 0xc8(%rsp), %rsi                  #  3977  0x75277  8      
  movl %esi, %esi                        #  3978  0x7527f  2      
  movl 0x8(%r15,%rsi,1), %eax            #  3979  0x75281  5      
  leal 0x8(%rax), %edx                   #  3980  0x75286  3      
  movl %esi, %esi                        #  3981  0x75289  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  3982  0x7528b  5      
  jmpq .L_75b80                          #  3983  0x75290  5      
  xchgw %ax, %ax                         #  3984  0x75295  3      
.L_769e0:                                #        0x75298  0      
  leal 0x260(%rsp), %esi                 #  3985  0x75298  7      
  movb $0x30, 0x262(%rsp)                #  3986  0x7529f  8      
  leaq 0x4(%rsi), %rax                   #  3987  0x752a7  4      
  leaq 0x3(%rsi), %rdx                   #  3988  0x752ab  4      
  jmpq .L_76580                          #  3989  0x752af  5      
  nop                                    #  3990  0x752b4  1      
.L_76a00:                                #        0x752b5  0      
  testl %r10d, %r10d                     #  3991  0x752b5  3      
  jne .L_76a20                           #  3992  0x752b8  6      
  testb $0x1, %r13b                      #  3993  0x752be  4      
  movl $0x1, 0xc4(%rsp)                  #  3994  0x752c2  11     
  je .L_74c00                            #  3995  0x752cd  6      
  nop                                    #  3996  0x752d3  1      
.L_76a20:                                #        0x752d4  0      
  addl $0x2, %r10d                       #  3997  0x752d4  4      
  movl %r10d, 0xc4(%rsp)                 #  3998  0x752d8  8      
  jmpq .L_74c00                          #  3999  0x752e0  5      
  nop                                    #  4000  0x752e5  1      
.L_76a40:                                #        0x752e6  0      
  movq 0xb8(%rsp), %rdx                  #  4001  0x752e6  8      
  movl %edx, %edx                        #  4002  0x752ee  2      
  movzwl 0xc(%r15,%rdx,1), %eax          #  4003  0x752f0  6      
  orl $0x40, %eax                        #  4004  0x752f6  3      
  movl %edx, %edx                        #  4005  0x752f9  2      
  movw %ax, 0xc(%r15,%rdx,1)             #  4006  0x752fb  6      
  jmpq .L_72cc0                          #  4007  0x75301  5      
.L_76a60:                                #        0x75306  0      
  movl %edi, %edi                        #  4008  0x75306  2      
  movzbl 0xa(%r15,%rdi,1), %ecx          #  4009  0x75308  6      
  jmpq .L_766e0                          #  4010  0x7530e  5      
  nop                                    #  4011  0x75313  1      
  nop                                    #  4012  0x75314  1      
.L_76a80:                                #        0x75315  0      
  xorpd %xmm1, %xmm1                     #  4013  0x75315  4      
  movsd 0xb0(%rsp), %xmm0                #  4014  0x75319  9      
  ucomisd %xmm1, %xmm0                   #  4015  0x75322  4      
  jne .L_76b20                           #  4016  0x75326  6      
  jp .L_76b20                            #  4017  0x7532c  6      
  nop                                    #  4018  0x75332  1      
  movl 0x27c(%rsp), %eax                 #  4019  0x75333  7      
  jmpq .L_74b40                          #  4020  0x7533a  5      
  nop                                    #  4021  0x7533f  1      
  nop                                    #  4022  0x75340  1      
.L_76ac0:                                #        0x75341  0      
  movq 0xc8(%rsp), %rax                  #  4023  0x75341  8      
  movl %eax, %eax                        #  4024  0x75349  2      
  movl (%r15,%rax,1), %ecx               #  4025  0x7534b  4      
  cmpl $0x2f, %ecx                       #  4026  0x7534f  3      
  ja .L_76b40                            #  4027  0x75352  6      
  movq %rax, %rsi                        #  4028  0x75358  3      
  movl %eax, %eax                        #  4029  0x7535b  2      
  movl 0xc(%r15,%rax,1), %eax            #  4030  0x7535d  5      
  addl %ecx, %eax                        #  4031  0x75362  2      
  nop                                    #  4032  0x75364  1      
  addl $0x8, %ecx                        #  4033  0x75365  3      
  movl %esi, %esi                        #  4034  0x75368  2      
  movl %ecx, (%r15,%rsi,1)               #  4035  0x7536a  4      
  nop                                    #  4036  0x7536e  1      
  nop                                    #  4037  0x7536f  1      
.L_76b00:                                #        0x75370  0      
  movl %eax, %eax                        #  4038  0x75370  2      
  movl (%r15,%rax,1), %r10d              #  4039  0x75372  4      
  testl %r10d, %r10d                     #  4040  0x75376  3      
  jns .L_71e00                           #  4041  0x75379  6      
  movl %r12d, %r12d                      #  4042  0x7537f  3      
  movzbl (%r15,%r12,1), %eax             #  4043  0x75382  5      
  orl $0xffffffff, %r10d                 #  4044  0x75387  7      
  jmpq .L_715e0                          #  4045  0x7538e  5      
.L_76b20:                                #        0x75393  0      
  movl $0x1, %eax                        #  4046  0x75393  5      
  subl 0xc4(%rsp), %eax                  #  4047  0x75398  7      
  movl %eax, 0x27c(%rsp)                 #  4048  0x7539f  7      
  jmpq .L_74b40                          #  4049  0x753a6  5      
  nop                                    #  4050  0x753ab  1      
.L_76b40:                                #        0x753ac  0      
  movq 0xc8(%rsp), %rcx                  #  4051  0x753ac  8      
  movq 0xc8(%rsp), %rsi                  #  4052  0x753b4  8      
  movl %ecx, %ecx                        #  4053  0x753bc  2      
  movl 0x8(%r15,%rcx,1), %eax            #  4054  0x753be  5      
  leal 0x8(%rax), %ecx                   #  4055  0x753c3  3      
  nop                                    #  4056  0x753c6  1      
  movl %esi, %esi                        #  4057  0x753c7  2      
  movl %ecx, 0x8(%r15,%rsi,1)            #  4058  0x753c9  5      
  jmpq .L_76b00                          #  4059  0x753ce  5      
  nop                                    #  4060  0x753d3  1      
  nop                                    #  4061  0x753d4  1      
.L_76b80:                                #        0x753d5  0      
  movq %rcx, %rdx                        #  4062  0x753d5  3      
  jmpq .L_74b80                          #  4063  0x753d8  5      
  nop                                    #  4064  0x753dd  1      
  nop                                    #  4065  0x753de  1      
.L_76ba0:                                #        0x753df  0      
  movq 0xb8(%rsp), %rcx                  #  4066  0x753df  8      
  movl %ecx, %ecx                        #  4067  0x753e7  2      
  movzwl 0xc(%r15,%rcx,1), %eax          #  4068  0x753e9  6      
  orl $0x40, %eax                        #  4069  0x753ef  3      
  movl %ecx, %ecx                        #  4070  0x753f2  2      
  movw %ax, 0xc(%r15,%rcx,1)             #  4071  0x753f4  6      
  jmpq .L_72cc0                          #  4072  0x753fa  5      
.L_76bc0:                                #        0x753ff  0      
  movq 0xb8(%rsp), %rsi                  #  4073  0x753ff  8      
  movl %esi, %esi                        #  4074  0x75407  2      
  movzwl 0xc(%r15,%rsi,1), %eax          #  4075  0x75409  6      
  orl $0x40, %eax                        #  4076  0x7540f  3      
  movl %esi, %esi                        #  4077  0x75412  2      
  movw %ax, 0xc(%r15,%rsi,1)             #  4078  0x75414  6      
  jmpq .L_72cc0                          #  4079  0x7541a  5      
.L_76be0:                                #        0x7541f  0      
  leal 0x260(%rsp), %esi                 #  4080  0x7541f  7      
  leaq 0x2(%rsi), %rax                   #  4081  0x75426  4      
  jmpq .L_75e20                          #  4082  0x7542a  5      
  nop                                    #  4083  0x7542f  1      
  nop                                    #  4084  0x75430  1      
                                                                  
.size _vfprintf_r, .-_vfprintf_r

