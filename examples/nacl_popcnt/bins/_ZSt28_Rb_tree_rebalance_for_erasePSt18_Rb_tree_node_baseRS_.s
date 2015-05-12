  .text
  .globl _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
  .type _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, @function

#! file-offset 0x43600
#! rip-offset  0x43600
#! capacity    3008 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_:  #        0x43600  0      
  movl %edi, %edi                                               #  1     0x43600  2      
  movl %esi, %esi                                               #  2     0x43602  2      
  movl %edi, %edi                                               #  3     0x43604  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  4     0x43606  5      
  testq %r9, %r9                                                #  5     0x4360b  3      
  je .L_43d20                                                   #  6     0x4360e  6      
  movl %edi, %edi                                               #  7     0x43614  2      
  movl 0xc(%r15,%rdi,1), %edx                                   #  8     0x43616  5      
  testq %rdx, %rdx                                              #  9     0x4361b  3      
  xchgw %ax, %ax                                                #  10    0x4361e  3      
  movq %rdx, %rax                                               #  11    0x43621  3      
  jne .L_43660                                                  #  12    0x43624  6      
  jmpq .L_43d40                                                 #  13    0x4362a  5      
  nop                                                           #  14    0x4362f  1      
  nop                                                           #  15    0x43630  1      
.L_43640:                                                       #        0x43631  0      
  movq %rcx, %rax                                               #  16    0x43631  3      
  nop                                                           #  17    0x43634  1      
  nop                                                           #  18    0x43635  1      
.L_43660:                                                       #        0x43636  0      
  movl %eax, %eax                                               #  19    0x43636  2      
  movl 0x8(%r15,%rax,1), %ecx                                   #  20    0x43638  5      
  testq %rcx, %rcx                                              #  21    0x4363d  3      
  jne .L_43640                                                  #  22    0x43640  6      
  cmpl %edi, %eax                                               #  23    0x43646  2      
  movl %eax, %eax                                               #  24    0x43648  2      
  movl 0xc(%r15,%rax,1), %r8d                                   #  25    0x4364a  5      
  je .L_43d60                                                   #  26    0x4364f  6      
  nop                                                           #  27    0x43655  1      
  movl %edi, %edi                                               #  28    0x43656  2      
  movl 0x8(%r15,%rdi,1), %ecx                                   #  29    0x43658  5      
  cmpl %edx, %eax                                               #  30    0x4365d  2      
  movl %r9d, %r9d                                               #  31    0x4365f  3      
  movl %eax, 0x4(%r15,%r9,1)                                    #  32    0x43662  5      
  movl %eax, %eax                                               #  33    0x43667  2      
  movl %ecx, 0x8(%r15,%rax,1)                                   #  34    0x43669  5      
  je .L_43700                                                   #  35    0x4366e  6      
  nop                                                           #  36    0x43674  1      
  movl %eax, %eax                                               #  37    0x43675  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  38    0x43677  5      
  testq %r8, %r8                                                #  39    0x4367c  3      
  movq %rdx, %rcx                                               #  40    0x4367f  3      
  je .L_436c0                                                   #  41    0x43682  6      
  movl %r8d, %r8d                                               #  42    0x43688  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  43    0x4368b  5      
  movl %eax, %eax                                               #  44    0x43690  2      
  movl 0x4(%r15,%rax,1), %ecx                                   #  45    0x43692  5      
  xchgw %ax, %ax                                                #  46    0x43697  3      
.L_436c0:                                                       #        0x4369a  0      
  movl %ecx, %ecx                                               #  47    0x4369a  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  48    0x4369c  5      
  movl %edi, %edi                                               #  49    0x436a1  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  50    0x436a3  5      
  movl %eax, %eax                                               #  51    0x436a8  2      
  movl %ecx, 0xc(%r15,%rax,1)                                   #  52    0x436aa  5      
  movl %edi, %edi                                               #  53    0x436af  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  54    0x436b1  5      
  nop                                                           #  55    0x436b6  1      
  movl %ecx, %ecx                                               #  56    0x436b7  2      
  movl %eax, 0x4(%r15,%rcx,1)                                   #  57    0x436b9  5      
  nop                                                           #  58    0x436be  1      
  nop                                                           #  59    0x436bf  1      
.L_43700:                                                       #        0x436c0  0      
  movl %esi, %esi                                               #  60    0x436c0  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  61    0x436c2  5      
  je .L_43e20                                                   #  62    0x436c7  6      
  movl %edi, %edi                                               #  63    0x436cd  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  64    0x436cf  5      
  movl %ecx, %ecx                                               #  65    0x436d4  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  66    0x436d6  5      
  nop                                                           #  67    0x436db  1      
  je .L_43e80                                                   #  68    0x436dc  6      
  movl %ecx, %ecx                                               #  69    0x436e2  2      
  movl %eax, 0xc(%r15,%rcx,1)                                   #  70    0x436e4  5      
  nop                                                           #  71    0x436e9  1      
  nop                                                           #  72    0x436ea  1      
.L_43740:                                                       #        0x436eb  0      
  movl %edi, %edi                                               #  73    0x436eb  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  74    0x436ed  5      
  movl %edi, %edi                                               #  75    0x436f2  2      
  movl (%r15,%rdi,1), %r9d                                      #  76    0x436f4  4      
  movl %eax, %eax                                               #  77    0x436f8  2      
  movl %ecx, 0x4(%r15,%rax,1)                                   #  78    0x436fa  5      
  movl %eax, %eax                                               #  79    0x436ff  2      
  movl (%r15,%rax,1), %ecx                                      #  80    0x43701  4      
  movl %eax, %eax                                               #  81    0x43705  2      
  movl %r9d, (%r15,%rax,1)                                      #  82    0x43707  4      
  movq %rdi, %rax                                               #  83    0x4370b  3      
  movl %edi, %edi                                               #  84    0x4370e  2      
  movl %ecx, (%r15,%rdi,1)                                      #  85    0x43710  4      
  nop                                                           #  86    0x43714  1      
  nop                                                           #  87    0x43715  1      
.L_43780:                                                       #        0x43716  0      
  testl %ecx, %ecx                                              #  88    0x43716  2      
  je .L_43b80                                                   #  89    0x43718  6      
  movl %esi, %esi                                               #  90    0x4371e  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  91    0x43720  5      
  cmpl %r8d, %ecx                                               #  92    0x43725  3      
  je .L_43940                                                   #  93    0x43728  6      
  nop                                                           #  94    0x4372e  1      
.L_437a0:                                                       #        0x4372f  0      
  testq %r8, %r8                                                #  95    0x4372f  3      
  je .L_43800                                                   #  96    0x43732  6      
  movl %r8d, %r8d                                               #  97    0x43738  3      
  cmpl $0x1, (%r15,%r8,1)                                       #  98    0x4373b  5      
  je .L_43800                                                   #  99    0x43740  6      
  xchgw %ax, %ax                                                #  100   0x43746  3      
  nop                                                           #  101   0x43749  1      
.L_437c0:                                                       #        0x4374a  0      
  movl %r8d, %r8d                                               #  102   0x4374a  3      
  movl $0x1, (%r15,%r8,1)                                       #  103   0x4374d  8      
  nop                                                           #  104   0x43755  1      
  nop                                                           #  105   0x43756  1      
.L_437e0:                                                       #        0x43757  0      
  popq %r11                                                     #  106   0x43757  3      
  andl $0xffffffe0, %r11d                                       #  107   0x4375a  7      
  addq %r15, %r11                                               #  108   0x43761  3      
  jmpq %r11                                                     #  109   0x43764  3      
  nop                                                           #  110   0x43767  1      
  nop                                                           #  111   0x43768  1      
.L_43800:                                                       #        0x43769  0      
  movl %edx, %edx                                               #  112   0x43769  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  113   0x4376b  5      
  cmpl %r8d, %ecx                                               #  114   0x43770  3      
  je .L_43980                                                   #  115   0x43773  6      
  movl %ecx, %ecx                                               #  116   0x43779  2      
  movl (%r15,%rcx,1), %r11d                                     #  117   0x4377b  4      
  testl %r11d, %r11d                                            #  118   0x4377f  3      
  jne .L_438c0                                                  #  119   0x43782  6      
  nop                                                           #  120   0x43788  1      
  movl %ecx, %ecx                                               #  121   0x43789  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  122   0x4378b  5      
  movl %ecx, %ecx                                               #  123   0x43790  2      
  movl $0x1, (%r15,%rcx,1)                                      #  124   0x43792  8      
  movl %edx, %edx                                               #  125   0x4379a  2      
  movl $0x0, (%r15,%rdx,1)                                      #  126   0x4379c  8      
  nop                                                           #  127   0x437a4  1      
  movl %edx, %edx                                               #  128   0x437a5  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  129   0x437a7  5      
  movl %edi, %edi                                               #  130   0x437ac  2      
  testq %rdi, %rdi                                              #  131   0x437ae  3      
  je .L_43860                                                   #  132   0x437b1  6      
  movl %edi, %edi                                               #  133   0x437b7  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  134   0x437b9  5      
  nop                                                           #  135   0x437be  1      
.L_43860:                                                       #        0x437bf  0      
  movl %edx, %edx                                               #  136   0x437bf  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  137   0x437c1  5      
  movl %ecx, %ecx                                               #  138   0x437c6  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  139   0x437c8  5      
  movl %esi, %esi                                               #  140   0x437cd  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  141   0x437cf  5      
  je .L_43b40                                                   #  142   0x437d4  6      
  nop                                                           #  143   0x437da  1      
  movl %edx, %edx                                               #  144   0x437db  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  145   0x437dd  5      
  movl %edi, %edi                                               #  146   0x437e2  2      
  cmpl %edx, 0xc(%r15,%rdi,1)                                   #  147   0x437e4  5      
  je .L_43b60                                                   #  148   0x437e9  6      
  movl %edi, %edi                                               #  149   0x437ef  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  150   0x437f1  5      
  nop                                                           #  151   0x437f6  1      
.L_438a0:                                                       #        0x437f7  0      
  movl %ecx, %ecx                                               #  152   0x437f7  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  153   0x437f9  5      
  movl %edx, %edx                                               #  154   0x437fe  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  155   0x43800  5      
  movl %edx, %edx                                               #  156   0x43805  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  157   0x43807  5      
  nop                                                           #  158   0x4380c  1      
.L_438c0:                                                       #        0x4380d  0      
  movl %ecx, %ecx                                               #  159   0x4380d  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  160   0x4380f  5      
  testq %rdi, %rdi                                              #  161   0x43814  3      
  je .L_438e0                                                   #  162   0x43817  6      
  movl %edi, %edi                                               #  163   0x4381d  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  164   0x4381f  5      
  jne .L_43ba0                                                  #  165   0x43824  6      
  nop                                                           #  166   0x4382a  1      
.L_438e0:                                                       #        0x4382b  0      
  movl %ecx, %ecx                                               #  167   0x4382b  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  168   0x4382d  5      
  testq %r9, %r9                                                #  169   0x43832  3      
  je .L_43900                                                   #  170   0x43835  6      
  movl %r9d, %r9d                                               #  171   0x4383b  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  172   0x4383e  5      
  jne .L_43c60                                                  #  173   0x43843  6      
  nop                                                           #  174   0x43849  1      
.L_43900:                                                       #        0x4384a  0      
  movl %ecx, %ecx                                               #  175   0x4384a  2      
  movl $0x0, (%r15,%rcx,1)                                      #  176   0x4384c  8      
  movl %edx, %edx                                               #  177   0x43854  2      
  movl 0x4(%r15,%rdx,1), %ecx                                   #  178   0x43856  5      
  movq %rdx, %r8                                                #  179   0x4385b  3      
  movq %rcx, %rdx                                               #  180   0x4385e  3      
  movl %esi, %esi                                               #  181   0x43861  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  182   0x43863  5      
  xchgw %ax, %ax                                                #  183   0x43868  3      
  cmpl %r8d, %ecx                                               #  184   0x4386b  3      
  jne .L_437a0                                                  #  185   0x4386e  6      
  nop                                                           #  186   0x43874  1      
  nop                                                           #  187   0x43875  1      
.L_43940:                                                       #        0x43876  0      
  movq %rcx, %r8                                                #  188   0x43876  3      
  nop                                                           #  189   0x43879  1      
  nop                                                           #  190   0x4387a  1      
.L_43960:                                                       #        0x4387b  0      
  testq %r8, %r8                                                #  191   0x4387b  3      
  je .L_437e0                                                   #  192   0x4387e  6      
  jmpq .L_437c0                                                 #  193   0x43884  5      
  nop                                                           #  194   0x43889  1      
  nop                                                           #  195   0x4388a  1      
.L_43980:                                                       #        0x4388b  0      
  movl %edx, %edx                                               #  196   0x4388b  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  197   0x4388d  5      
  movl %ecx, %ecx                                               #  198   0x43892  2      
  movl (%r15,%rcx,1), %edi                                      #  199   0x43894  4      
  testl %edi, %edi                                              #  200   0x43898  2      
  jne .L_43a40                                                  #  201   0x4389a  6      
  movl %ecx, %ecx                                               #  202   0x438a0  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  203   0x438a2  5      
  nop                                                           #  204   0x438a7  1      
  movl %ecx, %ecx                                               #  205   0x438a8  2      
  movl $0x1, (%r15,%rcx,1)                                      #  206   0x438aa  8      
  movl %edx, %edx                                               #  207   0x438b2  2      
  movl $0x0, (%r15,%rdx,1)                                      #  208   0x438b4  8      
  movl %edx, %edx                                               #  209   0x438bc  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  210   0x438be  5      
  movl %edi, %edi                                               #  211   0x438c3  2      
  testq %rdi, %rdi                                              #  212   0x438c5  3      
  je .L_439e0                                                   #  213   0x438c8  6      
  movl %edi, %edi                                               #  214   0x438ce  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  215   0x438d0  5      
  nop                                                           #  216   0x438d5  1      
  nop                                                           #  217   0x438d6  1      
.L_439e0:                                                       #        0x438d7  0      
  movl %edx, %edx                                               #  218   0x438d7  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  219   0x438d9  5      
  movl %ecx, %ecx                                               #  220   0x438de  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  221   0x438e0  5      
  movl %esi, %esi                                               #  222   0x438e5  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  223   0x438e7  5      
  je .L_43e40                                                   #  224   0x438ec  6      
  nop                                                           #  225   0x438f2  1      
  movl %edx, %edx                                               #  226   0x438f3  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  227   0x438f5  5      
  movl %edi, %edi                                               #  228   0x438fa  2      
  cmpl %edx, 0x8(%r15,%rdi,1)                                   #  229   0x438fc  5      
  je .L_43e60                                                   #  230   0x43901  6      
  movl %edi, %edi                                               #  231   0x43907  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  232   0x43909  5      
  nop                                                           #  233   0x4390e  1      
.L_43a20:                                                       #        0x4390f  0      
  movl %ecx, %ecx                                               #  234   0x4390f  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  235   0x43911  5      
  movl %edx, %edx                                               #  236   0x43916  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  237   0x43918  5      
  movl %edx, %edx                                               #  238   0x4391d  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  239   0x4391f  5      
  nop                                                           #  240   0x43924  1      
.L_43a40:                                                       #        0x43925  0      
  movl %ecx, %ecx                                               #  241   0x43925  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  242   0x43927  5      
  testq %rdi, %rdi                                              #  243   0x4392c  3      
  je .L_43a60                                                   #  244   0x4392f  6      
  movl %edi, %edi                                               #  245   0x43935  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  246   0x43937  5      
  jne .L_43f00                                                  #  247   0x4393c  6      
  nop                                                           #  248   0x43942  1      
.L_43a60:                                                       #        0x43943  0      
  movl %ecx, %ecx                                               #  249   0x43943  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  250   0x43945  5      
  testq %r9, %r9                                                #  251   0x4394a  3      
  je .L_43900                                                   #  252   0x4394d  6      
  movl %r9d, %r9d                                               #  253   0x43953  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  254   0x43956  5      
  je .L_43900                                                   #  255   0x4395b  6      
  xchgw %ax, %ax                                                #  256   0x43961  3      
.L_43a80:                                                       #        0x43964  0      
  movl %edx, %edx                                               #  257   0x43964  2      
  movl (%r15,%rdx,1), %edi                                      #  258   0x43966  4      
  testq %r9, %r9                                                #  259   0x4396a  3      
  movl %ecx, %ecx                                               #  260   0x4396d  2      
  movl %edi, (%r15,%rcx,1)                                      #  261   0x4396f  4      
  movl %edx, %edx                                               #  262   0x43973  2      
  movl $0x1, (%r15,%rdx,1)                                      #  263   0x43975  8      
  je .L_43ac0                                                   #  264   0x4397d  6      
  nop                                                           #  265   0x43983  1      
  movl %r9d, %r9d                                               #  266   0x43984  3      
  movl $0x1, (%r15,%r9,1)                                       #  267   0x43987  8      
  nop                                                           #  268   0x4398f  1      
  nop                                                           #  269   0x43990  1      
.L_43ac0:                                                       #        0x43991  0      
  movl %ecx, %ecx                                               #  270   0x43991  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  271   0x43993  5      
  movl %edx, %edx                                               #  272   0x43998  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  273   0x4399a  5      
  movl %edi, %edi                                               #  274   0x4399f  2      
  testq %rdi, %rdi                                              #  275   0x439a1  3      
  je .L_43ae0                                                   #  276   0x439a4  6      
  movl %edi, %edi                                               #  277   0x439aa  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  278   0x439ac  5      
  nop                                                           #  279   0x439b1  1      
.L_43ae0:                                                       #        0x439b2  0      
  movl %edx, %edx                                               #  280   0x439b2  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  281   0x439b4  5      
  movl %ecx, %ecx                                               #  282   0x439b9  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  283   0x439bb  5      
  movl %esi, %esi                                               #  284   0x439c0  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  285   0x439c2  5      
  je .L_44120                                                   #  286   0x439c7  6      
  nop                                                           #  287   0x439cd  1      
  movl %edx, %edx                                               #  288   0x439ce  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  289   0x439d0  5      
  movl %esi, %esi                                               #  290   0x439d5  2      
  cmpl %edx, 0x8(%r15,%rsi,1)                                   #  291   0x439d7  5      
  je .L_43ea0                                                   #  292   0x439dc  6      
  movl %esi, %esi                                               #  293   0x439e2  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  294   0x439e4  5      
  nop                                                           #  295   0x439e9  1      
.L_43b20:                                                       #        0x439ea  0      
  movl %ecx, %ecx                                               #  296   0x439ea  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  297   0x439ec  5      
  movl %edx, %edx                                               #  298   0x439f1  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  299   0x439f3  5      
  jmpq .L_43960                                                 #  300   0x439f8  5      
  nop                                                           #  301   0x439fd  1      
.L_43b40:                                                       #        0x439fe  0      
  movl %esi, %esi                                               #  302   0x439fe  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  303   0x43a00  5      
  jmpq .L_438a0                                                 #  304   0x43a05  5      
  nop                                                           #  305   0x43a0a  1      
  nop                                                           #  306   0x43a0b  1      
.L_43b60:                                                       #        0x43a0c  0      
  movl %edi, %edi                                               #  307   0x43a0c  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  308   0x43a0e  5      
  jmpq .L_438a0                                                 #  309   0x43a13  5      
  nop                                                           #  310   0x43a18  1      
  nop                                                           #  311   0x43a19  1      
.L_43b80:                                                       #        0x43a1a  0      
  popq %r11                                                     #  312   0x43a1a  3      
  andl $0xffffffe0, %r11d                                       #  313   0x43a1d  7      
  addq %r15, %r11                                               #  314   0x43a24  3      
  jmpq %r11                                                     #  315   0x43a27  3      
  nop                                                           #  316   0x43a2a  1      
  nop                                                           #  317   0x43a2b  1      
.L_43ba0:                                                       #        0x43a2c  0      
  movl %ecx, %ecx                                               #  318   0x43a2c  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  319   0x43a2e  5      
  testq %r9, %r9                                                #  320   0x43a33  3      
  je .L_43bc0                                                   #  321   0x43a36  6      
  movl %r9d, %r9d                                               #  322   0x43a3c  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  323   0x43a3f  5      
  jne .L_43c60                                                  #  324   0x43a44  6      
  nop                                                           #  325   0x43a4a  1      
.L_43bc0:                                                       #        0x43a4b  0      
  movl %edi, %edi                                               #  326   0x43a4b  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  327   0x43a4d  5      
  movl %edi, %edi                                               #  328   0x43a52  2      
  movl $0x1, (%r15,%rdi,1)                                      #  329   0x43a54  8      
  movl %ecx, %ecx                                               #  330   0x43a5c  2      
  movl $0x0, (%r15,%rcx,1)                                      #  331   0x43a5e  8      
  nop                                                           #  332   0x43a66  1      
  movl %ecx, %ecx                                               #  333   0x43a67  2      
  movl %r9d, 0xc(%r15,%rcx,1)                                   #  334   0x43a69  5      
  movl %r9d, %r9d                                               #  335   0x43a6e  3      
  testq %r9, %r9                                                #  336   0x43a71  3      
  je .L_43c00                                                   #  337   0x43a74  6      
  movl %r9d, %r9d                                               #  338   0x43a7a  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  339   0x43a7d  5      
  nop                                                           #  340   0x43a82  1      
.L_43c00:                                                       #        0x43a83  0      
  movl %ecx, %ecx                                               #  341   0x43a83  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  342   0x43a85  5      
  movl %edi, %edi                                               #  343   0x43a8a  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  344   0x43a8c  5      
  movl %esi, %esi                                               #  345   0x43a91  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  346   0x43a93  5      
  je .L_440e0                                                   #  347   0x43a98  6      
  nop                                                           #  348   0x43a9e  1      
  movl %ecx, %ecx                                               #  349   0x43a9f  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  350   0x43aa1  5      
  movl %r9d, %r9d                                               #  351   0x43aa6  3      
  cmpl %ecx, 0x8(%r15,%r9,1)                                    #  352   0x43aa9  5      
  je .L_44100                                                   #  353   0x43aae  6      
  movl %r9d, %r9d                                               #  354   0x43ab4  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  355   0x43ab7  5      
  nop                                                           #  356   0x43abc  1      
.L_43c40:                                                       #        0x43abd  0      
  movl %edi, %edi                                               #  357   0x43abd  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  358   0x43abf  5      
  movl %ecx, %ecx                                               #  359   0x43ac4  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  360   0x43ac6  5      
  movl %edx, %edx                                               #  361   0x43acb  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  362   0x43acd  5      
  movl %ecx, %ecx                                               #  363   0x43ad2  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  364   0x43ad4  5      
  nop                                                           #  365   0x43ad9  1      
.L_43c60:                                                       #        0x43ada  0      
  movl %edx, %edx                                               #  366   0x43ada  2      
  movl (%r15,%rdx,1), %edi                                      #  367   0x43adc  4      
  testq %r9, %r9                                                #  368   0x43ae0  3      
  movl %ecx, %ecx                                               #  369   0x43ae3  2      
  movl %edi, (%r15,%rcx,1)                                      #  370   0x43ae5  4      
  movl %edx, %edx                                               #  371   0x43ae9  2      
  movl $0x1, (%r15,%rdx,1)                                      #  372   0x43aeb  8      
  je .L_43ca0                                                   #  373   0x43af3  6      
  nop                                                           #  374   0x43af9  1      
  movl %r9d, %r9d                                               #  375   0x43afa  3      
  movl $0x1, (%r15,%r9,1)                                       #  376   0x43afd  8      
  nop                                                           #  377   0x43b05  1      
  nop                                                           #  378   0x43b06  1      
.L_43ca0:                                                       #        0x43b07  0      
  movl %ecx, %ecx                                               #  379   0x43b07  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  380   0x43b09  5      
  movl %edx, %edx                                               #  381   0x43b0e  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  382   0x43b10  5      
  movl %edi, %edi                                               #  383   0x43b15  2      
  testq %rdi, %rdi                                              #  384   0x43b17  3      
  je .L_43cc0                                                   #  385   0x43b1a  6      
  movl %edi, %edi                                               #  386   0x43b20  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  387   0x43b22  5      
  nop                                                           #  388   0x43b27  1      
.L_43cc0:                                                       #        0x43b28  0      
  movl %edx, %edx                                               #  389   0x43b28  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  390   0x43b2a  5      
  movl %ecx, %ecx                                               #  391   0x43b2f  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  392   0x43b31  5      
  movl %esi, %esi                                               #  393   0x43b36  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  394   0x43b38  5      
  je .L_43ec0                                                   #  395   0x43b3d  6      
  nop                                                           #  396   0x43b43  1      
  movl %edx, %edx                                               #  397   0x43b44  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  398   0x43b46  5      
  movl %esi, %esi                                               #  399   0x43b4b  2      
  cmpl %edx, 0xc(%r15,%rsi,1)                                   #  400   0x43b4d  5      
  je .L_43ee0                                                   #  401   0x43b52  6      
  movl %esi, %esi                                               #  402   0x43b58  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  403   0x43b5a  5      
  nop                                                           #  404   0x43b5f  1      
.L_43d00:                                                       #        0x43b60  0      
  movl %ecx, %ecx                                               #  405   0x43b60  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  406   0x43b62  5      
  movl %edx, %edx                                               #  407   0x43b67  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  408   0x43b69  5      
  jmpq .L_43960                                                 #  409   0x43b6e  5      
  nop                                                           #  410   0x43b73  1      
.L_43d20:                                                       #        0x43b74  0      
  movl %edi, %edi                                               #  411   0x43b74  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  412   0x43b76  5      
  nop                                                           #  413   0x43b7b  1      
  nop                                                           #  414   0x43b7c  1      
.L_43d40:                                                       #        0x43b7d  0      
  movq %r9, %r8                                                 #  415   0x43b7d  3      
  movq %rdi, %rax                                               #  416   0x43b80  3      
  nop                                                           #  417   0x43b83  1      
  nop                                                           #  418   0x43b84  1      
.L_43d60:                                                       #        0x43b85  0      
  testq %r8, %r8                                                #  419   0x43b85  3      
  movl %eax, %eax                                               #  420   0x43b88  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  421   0x43b8a  5      
  je .L_43d80                                                   #  422   0x43b8f  6      
  movl %r8d, %r8d                                               #  423   0x43b95  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  424   0x43b98  5      
  nop                                                           #  425   0x43b9d  1      
.L_43d80:                                                       #        0x43b9e  0      
  movl %esi, %esi                                               #  426   0x43b9e  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  427   0x43ba0  5      
  je .L_43fe0                                                   #  428   0x43ba5  6      
  movl %edi, %edi                                               #  429   0x43bab  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  430   0x43bad  5      
  movl %ecx, %ecx                                               #  431   0x43bb2  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  432   0x43bb4  5      
  nop                                                           #  433   0x43bb9  1      
  je .L_440c0                                                   #  434   0x43bba  6      
  movl %ecx, %ecx                                               #  435   0x43bc0  2      
  movl %r8d, 0xc(%r15,%rcx,1)                                   #  436   0x43bc2  5      
  nop                                                           #  437   0x43bc7  1      
  nop                                                           #  438   0x43bc8  1      
.L_43dc0:                                                       #        0x43bc9  0      
  movl %esi, %esi                                               #  439   0x43bc9  2      
  movl 0x8(%r15,%rsi,1), %ecx                                   #  440   0x43bcb  5      
  cmpl %edi, %ecx                                               #  441   0x43bd0  2      
  je .L_44000                                                   #  442   0x43bd2  6      
  xchgw %ax, %ax                                                #  443   0x43bd8  3      
  nop                                                           #  444   0x43bdb  1      
.L_43de0:                                                       #        0x43bdc  0      
  movl %esi, %esi                                               #  445   0x43bdc  2      
  movl 0xc(%r15,%rsi,1), %ecx                                   #  446   0x43bde  5      
  cmpl %edi, %ecx                                               #  447   0x43be3  2      
  je .L_44060                                                   #  448   0x43be5  6      
  xchgw %ax, %ax                                                #  449   0x43beb  3      
  nop                                                           #  450   0x43bee  1      
.L_43e00:                                                       #        0x43bef  0      
  movl %eax, %eax                                               #  451   0x43bef  2      
  movl (%r15,%rax,1), %ecx                                      #  452   0x43bf1  4      
  jmpq .L_43780                                                 #  453   0x43bf5  5      
  nop                                                           #  454   0x43bfa  1      
  nop                                                           #  455   0x43bfb  1      
.L_43e20:                                                       #        0x43bfc  0      
  movl %esi, %esi                                               #  456   0x43bfc  2      
  movl %eax, 0x4(%r15,%rsi,1)                                   #  457   0x43bfe  5      
  jmpq .L_43740                                                 #  458   0x43c03  5      
  nop                                                           #  459   0x43c08  1      
  nop                                                           #  460   0x43c09  1      
.L_43e40:                                                       #        0x43c0a  0      
  movl %esi, %esi                                               #  461   0x43c0a  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  462   0x43c0c  5      
  jmpq .L_43a20                                                 #  463   0x43c11  5      
  nop                                                           #  464   0x43c16  1      
  nop                                                           #  465   0x43c17  1      
.L_43e60:                                                       #        0x43c18  0      
  movl %edi, %edi                                               #  466   0x43c18  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  467   0x43c1a  5      
  jmpq .L_43a20                                                 #  468   0x43c1f  5      
  nop                                                           #  469   0x43c24  1      
  nop                                                           #  470   0x43c25  1      
.L_43e80:                                                       #        0x43c26  0      
  movl %ecx, %ecx                                               #  471   0x43c26  2      
  movl %eax, 0x8(%r15,%rcx,1)                                   #  472   0x43c28  5      
  jmpq .L_43740                                                 #  473   0x43c2d  5      
  nop                                                           #  474   0x43c32  1      
  nop                                                           #  475   0x43c33  1      
.L_43ea0:                                                       #        0x43c34  0      
  movl %esi, %esi                                               #  476   0x43c34  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  477   0x43c36  5      
  jmpq .L_43b20                                                 #  478   0x43c3b  5      
  nop                                                           #  479   0x43c40  1      
  nop                                                           #  480   0x43c41  1      
.L_43ec0:                                                       #        0x43c42  0      
  movl %esi, %esi                                               #  481   0x43c42  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  482   0x43c44  5      
  jmpq .L_43d00                                                 #  483   0x43c49  5      
  nop                                                           #  484   0x43c4e  1      
  nop                                                           #  485   0x43c4f  1      
.L_43ee0:                                                       #        0x43c50  0      
  movl %esi, %esi                                               #  486   0x43c50  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  487   0x43c52  5      
  jmpq .L_43d00                                                 #  488   0x43c57  5      
  nop                                                           #  489   0x43c5c  1      
  nop                                                           #  490   0x43c5d  1      
.L_43f00:                                                       #        0x43c5e  0      
  movl %ecx, %ecx                                               #  491   0x43c5e  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  492   0x43c60  5      
  testq %r9, %r9                                                #  493   0x43c65  3      
  je .L_43f20                                                   #  494   0x43c68  6      
  movl %r9d, %r9d                                               #  495   0x43c6e  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  496   0x43c71  5      
  jne .L_43a80                                                  #  497   0x43c76  6      
  nop                                                           #  498   0x43c7c  1      
.L_43f20:                                                       #        0x43c7d  0      
  movl %edi, %edi                                               #  499   0x43c7d  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  500   0x43c7f  5      
  movl %edi, %edi                                               #  501   0x43c84  2      
  movl $0x1, (%r15,%rdi,1)                                      #  502   0x43c86  8      
  movl %ecx, %ecx                                               #  503   0x43c8e  2      
  movl $0x0, (%r15,%rcx,1)                                      #  504   0x43c90  8      
  nop                                                           #  505   0x43c98  1      
  movl %ecx, %ecx                                               #  506   0x43c99  2      
  movl %r9d, 0x8(%r15,%rcx,1)                                   #  507   0x43c9b  5      
  movl %r9d, %r9d                                               #  508   0x43ca0  3      
  testq %r9, %r9                                                #  509   0x43ca3  3      
  je .L_43f60                                                   #  510   0x43ca6  6      
  movl %r9d, %r9d                                               #  511   0x43cac  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  512   0x43caf  5      
  nop                                                           #  513   0x43cb4  1      
.L_43f60:                                                       #        0x43cb5  0      
  movl %ecx, %ecx                                               #  514   0x43cb5  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  515   0x43cb7  5      
  movl %edi, %edi                                               #  516   0x43cbc  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  517   0x43cbe  5      
  movl %esi, %esi                                               #  518   0x43cc3  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  519   0x43cc5  5      
  je .L_44180                                                   #  520   0x43cca  6      
  nop                                                           #  521   0x43cd0  1      
  movl %ecx, %ecx                                               #  522   0x43cd1  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  523   0x43cd3  5      
  movl %r9d, %r9d                                               #  524   0x43cd8  3      
  cmpl %ecx, 0xc(%r15,%r9,1)                                    #  525   0x43cdb  5      
  je .L_441a0                                                   #  526   0x43ce0  6      
  movl %r9d, %r9d                                               #  527   0x43ce6  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  528   0x43ce9  5      
  nop                                                           #  529   0x43cee  1      
.L_43fa0:                                                       #        0x43cef  0      
  movl %edi, %edi                                               #  530   0x43cef  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  531   0x43cf1  5      
  movl %ecx, %ecx                                               #  532   0x43cf6  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  533   0x43cf8  5      
  movl %edx, %edx                                               #  534   0x43cfd  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  535   0x43cff  5      
  movl %ecx, %ecx                                               #  536   0x43d04  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  537   0x43d06  5      
  nop                                                           #  538   0x43d0b  1      
  jmpq .L_43a80                                                 #  539   0x43d0c  5      
  nop                                                           #  540   0x43d11  1      
  nop                                                           #  541   0x43d12  1      
.L_43fe0:                                                       #        0x43d13  0      
  movl %esi, %esi                                               #  542   0x43d13  2      
  movl %r8d, 0x4(%r15,%rsi,1)                                   #  543   0x43d15  5      
  jmpq .L_43dc0                                                 #  544   0x43d1a  5      
  nop                                                           #  545   0x43d1f  1      
  nop                                                           #  546   0x43d20  1      
.L_44000:                                                       #        0x43d21  0      
  movl %ecx, %ecx                                               #  547   0x43d21  2      
  movl 0xc(%r15,%rcx,1), %r10d                                  #  548   0x43d23  5      
  movq %r8, %r9                                                 #  549   0x43d28  3      
  testl %r10d, %r10d                                            #  550   0x43d2b  3      
  jne .L_44040                                                  #  551   0x43d2e  6      
  jmpq .L_44140                                                 #  552   0x43d34  5      
  nop                                                           #  553   0x43d39  1      
.L_44020:                                                       #        0x43d3a  0      
  movq %rcx, %r9                                                #  554   0x43d3a  3      
  nop                                                           #  555   0x43d3d  1      
  nop                                                           #  556   0x43d3e  1      
.L_44040:                                                       #        0x43d3f  0      
  movl %r9d, %r9d                                               #  557   0x43d3f  3      
  movl 0x8(%r15,%r9,1), %ecx                                    #  558   0x43d42  5      
  testq %rcx, %rcx                                              #  559   0x43d47  3      
  jne .L_44020                                                  #  560   0x43d4a  6      
  movl %esi, %esi                                               #  561   0x43d50  2      
  movl %r9d, 0x8(%r15,%rsi,1)                                   #  562   0x43d52  5      
  jmpq .L_43de0                                                 #  563   0x43d57  5      
  nop                                                           #  564   0x43d5c  1      
.L_44060:                                                       #        0x43d5d  0      
  movl %ecx, %ecx                                               #  565   0x43d5d  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  566   0x43d5f  5      
  movq %r8, %rdi                                                #  567   0x43d64  3      
  testl %r9d, %r9d                                              #  568   0x43d67  3      
  jne .L_440a0                                                  #  569   0x43d6a  6      
  jmpq .L_44160                                                 #  570   0x43d70  5      
  nop                                                           #  571   0x43d75  1      
.L_44080:                                                       #        0x43d76  0      
  movq %rcx, %rdi                                               #  572   0x43d76  3      
  nop                                                           #  573   0x43d79  1      
  nop                                                           #  574   0x43d7a  1      
.L_440a0:                                                       #        0x43d7b  0      
  movl %edi, %edi                                               #  575   0x43d7b  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  576   0x43d7d  5      
  testq %rcx, %rcx                                              #  577   0x43d82  3      
  jne .L_44080                                                  #  578   0x43d85  6      
  movl %esi, %esi                                               #  579   0x43d8b  2      
  movl %edi, 0xc(%r15,%rsi,1)                                   #  580   0x43d8d  5      
  jmpq .L_43e00                                                 #  581   0x43d92  5      
  nop                                                           #  582   0x43d97  1      
.L_440c0:                                                       #        0x43d98  0      
  movl %ecx, %ecx                                               #  583   0x43d98  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  584   0x43d9a  5      
  jmpq .L_43dc0                                                 #  585   0x43d9f  5      
  nop                                                           #  586   0x43da4  1      
  nop                                                           #  587   0x43da5  1      
.L_440e0:                                                       #        0x43da6  0      
  movl %esi, %esi                                               #  588   0x43da6  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  589   0x43da8  5      
  jmpq .L_43c40                                                 #  590   0x43dad  5      
  nop                                                           #  591   0x43db2  1      
  nop                                                           #  592   0x43db3  1      
.L_44100:                                                       #        0x43db4  0      
  movl %r9d, %r9d                                               #  593   0x43db4  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  594   0x43db7  5      
  jmpq .L_43c40                                                 #  595   0x43dbc  5      
  nop                                                           #  596   0x43dc1  1      
  nop                                                           #  597   0x43dc2  1      
.L_44120:                                                       #        0x43dc3  0      
  movl %esi, %esi                                               #  598   0x43dc3  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  599   0x43dc5  5      
  jmpq .L_43b20                                                 #  600   0x43dca  5      
  nop                                                           #  601   0x43dcf  1      
  nop                                                           #  602   0x43dd0  1      
.L_44140:                                                       #        0x43dd1  0      
  movl %ecx, %ecx                                               #  603   0x43dd1  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  604   0x43dd3  5      
  movl %esi, %esi                                               #  605   0x43dd8  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  606   0x43dda  5      
  jmpq .L_43de0                                                 #  607   0x43ddf  5      
  nop                                                           #  608   0x43de4  1      
.L_44160:                                                       #        0x43de5  0      
  movl %ecx, %ecx                                               #  609   0x43de5  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  610   0x43de7  5      
  movl %esi, %esi                                               #  611   0x43dec  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  612   0x43dee  5      
  movl %eax, %eax                                               #  613   0x43df3  2      
  movl (%r15,%rax,1), %ecx                                      #  614   0x43df5  4      
  jmpq .L_43780                                                 #  615   0x43df9  5      
  nop                                                           #  616   0x43dfe  1      
.L_44180:                                                       #        0x43dff  0      
  movl %esi, %esi                                               #  617   0x43dff  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  618   0x43e01  5      
  jmpq .L_43fa0                                                 #  619   0x43e06  5      
  nop                                                           #  620   0x43e0b  1      
  nop                                                           #  621   0x43e0c  1      
.L_441a0:                                                       #        0x43e0d  0      
  movl %r9d, %r9d                                               #  622   0x43e0d  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  623   0x43e10  5      
  jmpq .L_43fa0                                                 #  624   0x43e15  5      
  nop                                                           #  625   0x43e1a  1      
  nop                                                           #  626   0x43e1b  1      
  nop                                                           #  627   0x43e1c  1      
  nop                                                           #  628   0x43e1d  1      
  nop                                                           #  629   0x43e1e  1      
  nop                                                           #  630   0x43e1f  1      
  nop                                                           #  631   0x43e20  1      
  nop                                                           #  632   0x43e21  1      
  nop                                                           #  633   0x43e22  1      
  nop                                                           #  634   0x43e23  1      
  nop                                                           #  635   0x43e24  1      
  nop                                                           #  636   0x43e25  1      
  nop                                                           #  637   0x43e26  1      
  nop                                                           #  638   0x43e27  1      
  nop                                                           #  639   0x43e28  1      
  nop                                                           #  640   0x43e29  1      
  nop                                                           #  641   0x43e2a  1      
  nop                                                           #  642   0x43e2b  1      
  nop                                                           #  643   0x43e2c  1      
                                                                                         
.size _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, .-_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_

