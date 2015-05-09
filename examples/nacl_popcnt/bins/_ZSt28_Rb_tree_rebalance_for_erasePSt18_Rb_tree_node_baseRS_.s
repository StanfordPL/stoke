  .text
  .globl _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
  .type _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, @function

#! file-offset 0x435e0
#! rip-offset  0x435e0
#! capacity    3008 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_:  #        0x435e0  0      
  movl %edi, %edi                                               #  1     0x435e0  2      
  movl %esi, %esi                                               #  2     0x435e2  2      
  movl %edi, %edi                                               #  3     0x435e4  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  4     0x435e6  5      
  testq %r9, %r9                                                #  5     0x435eb  3      
  je .L_43d00                                                   #  6     0x435ee  6      
  movl %edi, %edi                                               #  7     0x435f4  2      
  movl 0xc(%r15,%rdi,1), %edx                                   #  8     0x435f6  5      
  testq %rdx, %rdx                                              #  9     0x435fb  3      
  xchgw %ax, %ax                                                #  10    0x435fe  3      
  movq %rdx, %rax                                               #  11    0x43601  3      
  jne .L_43640                                                  #  12    0x43604  6      
  jmpq .L_43d20                                                 #  13    0x4360a  5      
  nop                                                           #  14    0x4360f  1      
  nop                                                           #  15    0x43610  1      
.L_43620:                                                       #        0x43611  0      
  movq %rcx, %rax                                               #  16    0x43611  3      
  nop                                                           #  17    0x43614  1      
  nop                                                           #  18    0x43615  1      
.L_43640:                                                       #        0x43616  0      
  movl %eax, %eax                                               #  19    0x43616  2      
  movl 0x8(%r15,%rax,1), %ecx                                   #  20    0x43618  5      
  testq %rcx, %rcx                                              #  21    0x4361d  3      
  jne .L_43620                                                  #  22    0x43620  6      
  cmpl %edi, %eax                                               #  23    0x43626  2      
  movl %eax, %eax                                               #  24    0x43628  2      
  movl 0xc(%r15,%rax,1), %r8d                                   #  25    0x4362a  5      
  je .L_43d40                                                   #  26    0x4362f  6      
  nop                                                           #  27    0x43635  1      
  movl %edi, %edi                                               #  28    0x43636  2      
  movl 0x8(%r15,%rdi,1), %ecx                                   #  29    0x43638  5      
  cmpl %edx, %eax                                               #  30    0x4363d  2      
  movl %r9d, %r9d                                               #  31    0x4363f  3      
  movl %eax, 0x4(%r15,%r9,1)                                    #  32    0x43642  5      
  movl %eax, %eax                                               #  33    0x43647  2      
  movl %ecx, 0x8(%r15,%rax,1)                                   #  34    0x43649  5      
  je .L_436e0                                                   #  35    0x4364e  6      
  nop                                                           #  36    0x43654  1      
  movl %eax, %eax                                               #  37    0x43655  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  38    0x43657  5      
  testq %r8, %r8                                                #  39    0x4365c  3      
  movq %rdx, %rcx                                               #  40    0x4365f  3      
  je .L_436a0                                                   #  41    0x43662  6      
  movl %r8d, %r8d                                               #  42    0x43668  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  43    0x4366b  5      
  movl %eax, %eax                                               #  44    0x43670  2      
  movl 0x4(%r15,%rax,1), %ecx                                   #  45    0x43672  5      
  xchgw %ax, %ax                                                #  46    0x43677  3      
.L_436a0:                                                       #        0x4367a  0      
  movl %ecx, %ecx                                               #  47    0x4367a  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  48    0x4367c  5      
  movl %edi, %edi                                               #  49    0x43681  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  50    0x43683  5      
  movl %eax, %eax                                               #  51    0x43688  2      
  movl %ecx, 0xc(%r15,%rax,1)                                   #  52    0x4368a  5      
  movl %edi, %edi                                               #  53    0x4368f  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  54    0x43691  5      
  nop                                                           #  55    0x43696  1      
  movl %ecx, %ecx                                               #  56    0x43697  2      
  movl %eax, 0x4(%r15,%rcx,1)                                   #  57    0x43699  5      
  nop                                                           #  58    0x4369e  1      
  nop                                                           #  59    0x4369f  1      
.L_436e0:                                                       #        0x436a0  0      
  movl %esi, %esi                                               #  60    0x436a0  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  61    0x436a2  5      
  je .L_43e00                                                   #  62    0x436a7  6      
  movl %edi, %edi                                               #  63    0x436ad  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  64    0x436af  5      
  movl %ecx, %ecx                                               #  65    0x436b4  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  66    0x436b6  5      
  nop                                                           #  67    0x436bb  1      
  je .L_43e60                                                   #  68    0x436bc  6      
  movl %ecx, %ecx                                               #  69    0x436c2  2      
  movl %eax, 0xc(%r15,%rcx,1)                                   #  70    0x436c4  5      
  nop                                                           #  71    0x436c9  1      
  nop                                                           #  72    0x436ca  1      
.L_43720:                                                       #        0x436cb  0      
  movl %edi, %edi                                               #  73    0x436cb  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  74    0x436cd  5      
  movl %edi, %edi                                               #  75    0x436d2  2      
  movl (%r15,%rdi,1), %r9d                                      #  76    0x436d4  4      
  movl %eax, %eax                                               #  77    0x436d8  2      
  movl %ecx, 0x4(%r15,%rax,1)                                   #  78    0x436da  5      
  movl %eax, %eax                                               #  79    0x436df  2      
  movl (%r15,%rax,1), %ecx                                      #  80    0x436e1  4      
  movl %eax, %eax                                               #  81    0x436e5  2      
  movl %r9d, (%r15,%rax,1)                                      #  82    0x436e7  4      
  movq %rdi, %rax                                               #  83    0x436eb  3      
  movl %edi, %edi                                               #  84    0x436ee  2      
  movl %ecx, (%r15,%rdi,1)                                      #  85    0x436f0  4      
  nop                                                           #  86    0x436f4  1      
  nop                                                           #  87    0x436f5  1      
.L_43760:                                                       #        0x436f6  0      
  testl %ecx, %ecx                                              #  88    0x436f6  2      
  je .L_43b60                                                   #  89    0x436f8  6      
  movl %esi, %esi                                               #  90    0x436fe  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  91    0x43700  5      
  cmpl %r8d, %ecx                                               #  92    0x43705  3      
  je .L_43920                                                   #  93    0x43708  6      
  nop                                                           #  94    0x4370e  1      
.L_43780:                                                       #        0x4370f  0      
  testq %r8, %r8                                                #  95    0x4370f  3      
  je .L_437e0                                                   #  96    0x43712  6      
  movl %r8d, %r8d                                               #  97    0x43718  3      
  cmpl $0x1, (%r15,%r8,1)                                       #  98    0x4371b  5      
  je .L_437e0                                                   #  99    0x43720  6      
  xchgw %ax, %ax                                                #  100   0x43726  3      
  nop                                                           #  101   0x43729  1      
.L_437a0:                                                       #        0x4372a  0      
  movl %r8d, %r8d                                               #  102   0x4372a  3      
  movl $0x1, (%r15,%r8,1)                                       #  103   0x4372d  8      
  nop                                                           #  104   0x43735  1      
  nop                                                           #  105   0x43736  1      
.L_437c0:                                                       #        0x43737  0      
  popq %r11                                                     #  106   0x43737  3      
  andl $0xffffffe0, %r11d                                       #  107   0x4373a  7      
  addq %r15, %r11                                               #  108   0x43741  3      
  jmpq %r11                                                     #  109   0x43744  3      
  nop                                                           #  110   0x43747  1      
  nop                                                           #  111   0x43748  1      
.L_437e0:                                                       #        0x43749  0      
  movl %edx, %edx                                               #  112   0x43749  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  113   0x4374b  5      
  cmpl %r8d, %ecx                                               #  114   0x43750  3      
  je .L_43960                                                   #  115   0x43753  6      
  movl %ecx, %ecx                                               #  116   0x43759  2      
  movl (%r15,%rcx,1), %r11d                                     #  117   0x4375b  4      
  testl %r11d, %r11d                                            #  118   0x4375f  3      
  jne .L_438a0                                                  #  119   0x43762  6      
  nop                                                           #  120   0x43768  1      
  movl %ecx, %ecx                                               #  121   0x43769  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  122   0x4376b  5      
  movl %ecx, %ecx                                               #  123   0x43770  2      
  movl $0x1, (%r15,%rcx,1)                                      #  124   0x43772  8      
  movl %edx, %edx                                               #  125   0x4377a  2      
  movl $0x0, (%r15,%rdx,1)                                      #  126   0x4377c  8      
  nop                                                           #  127   0x43784  1      
  movl %edx, %edx                                               #  128   0x43785  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  129   0x43787  5      
  movl %edi, %edi                                               #  130   0x4378c  2      
  testq %rdi, %rdi                                              #  131   0x4378e  3      
  je .L_43840                                                   #  132   0x43791  6      
  movl %edi, %edi                                               #  133   0x43797  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  134   0x43799  5      
  nop                                                           #  135   0x4379e  1      
.L_43840:                                                       #        0x4379f  0      
  movl %edx, %edx                                               #  136   0x4379f  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  137   0x437a1  5      
  movl %ecx, %ecx                                               #  138   0x437a6  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  139   0x437a8  5      
  movl %esi, %esi                                               #  140   0x437ad  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  141   0x437af  5      
  je .L_43b20                                                   #  142   0x437b4  6      
  nop                                                           #  143   0x437ba  1      
  movl %edx, %edx                                               #  144   0x437bb  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  145   0x437bd  5      
  movl %edi, %edi                                               #  146   0x437c2  2      
  cmpl %edx, 0xc(%r15,%rdi,1)                                   #  147   0x437c4  5      
  je .L_43b40                                                   #  148   0x437c9  6      
  movl %edi, %edi                                               #  149   0x437cf  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  150   0x437d1  5      
  nop                                                           #  151   0x437d6  1      
.L_43880:                                                       #        0x437d7  0      
  movl %ecx, %ecx                                               #  152   0x437d7  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  153   0x437d9  5      
  movl %edx, %edx                                               #  154   0x437de  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  155   0x437e0  5      
  movl %edx, %edx                                               #  156   0x437e5  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  157   0x437e7  5      
  nop                                                           #  158   0x437ec  1      
.L_438a0:                                                       #        0x437ed  0      
  movl %ecx, %ecx                                               #  159   0x437ed  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  160   0x437ef  5      
  testq %rdi, %rdi                                              #  161   0x437f4  3      
  je .L_438c0                                                   #  162   0x437f7  6      
  movl %edi, %edi                                               #  163   0x437fd  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  164   0x437ff  5      
  jne .L_43b80                                                  #  165   0x43804  6      
  nop                                                           #  166   0x4380a  1      
.L_438c0:                                                       #        0x4380b  0      
  movl %ecx, %ecx                                               #  167   0x4380b  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  168   0x4380d  5      
  testq %r9, %r9                                                #  169   0x43812  3      
  je .L_438e0                                                   #  170   0x43815  6      
  movl %r9d, %r9d                                               #  171   0x4381b  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  172   0x4381e  5      
  jne .L_43c40                                                  #  173   0x43823  6      
  nop                                                           #  174   0x43829  1      
.L_438e0:                                                       #        0x4382a  0      
  movl %ecx, %ecx                                               #  175   0x4382a  2      
  movl $0x0, (%r15,%rcx,1)                                      #  176   0x4382c  8      
  movl %edx, %edx                                               #  177   0x43834  2      
  movl 0x4(%r15,%rdx,1), %ecx                                   #  178   0x43836  5      
  movq %rdx, %r8                                                #  179   0x4383b  3      
  movq %rcx, %rdx                                               #  180   0x4383e  3      
  movl %esi, %esi                                               #  181   0x43841  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  182   0x43843  5      
  xchgw %ax, %ax                                                #  183   0x43848  3      
  cmpl %r8d, %ecx                                               #  184   0x4384b  3      
  jne .L_43780                                                  #  185   0x4384e  6      
  nop                                                           #  186   0x43854  1      
  nop                                                           #  187   0x43855  1      
.L_43920:                                                       #        0x43856  0      
  movq %rcx, %r8                                                #  188   0x43856  3      
  nop                                                           #  189   0x43859  1      
  nop                                                           #  190   0x4385a  1      
.L_43940:                                                       #        0x4385b  0      
  testq %r8, %r8                                                #  191   0x4385b  3      
  je .L_437c0                                                   #  192   0x4385e  6      
  jmpq .L_437a0                                                 #  193   0x43864  5      
  nop                                                           #  194   0x43869  1      
  nop                                                           #  195   0x4386a  1      
.L_43960:                                                       #        0x4386b  0      
  movl %edx, %edx                                               #  196   0x4386b  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  197   0x4386d  5      
  movl %ecx, %ecx                                               #  198   0x43872  2      
  movl (%r15,%rcx,1), %edi                                      #  199   0x43874  4      
  testl %edi, %edi                                              #  200   0x43878  2      
  jne .L_43a20                                                  #  201   0x4387a  6      
  movl %ecx, %ecx                                               #  202   0x43880  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  203   0x43882  5      
  nop                                                           #  204   0x43887  1      
  movl %ecx, %ecx                                               #  205   0x43888  2      
  movl $0x1, (%r15,%rcx,1)                                      #  206   0x4388a  8      
  movl %edx, %edx                                               #  207   0x43892  2      
  movl $0x0, (%r15,%rdx,1)                                      #  208   0x43894  8      
  movl %edx, %edx                                               #  209   0x4389c  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  210   0x4389e  5      
  movl %edi, %edi                                               #  211   0x438a3  2      
  testq %rdi, %rdi                                              #  212   0x438a5  3      
  je .L_439c0                                                   #  213   0x438a8  6      
  movl %edi, %edi                                               #  214   0x438ae  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  215   0x438b0  5      
  nop                                                           #  216   0x438b5  1      
  nop                                                           #  217   0x438b6  1      
.L_439c0:                                                       #        0x438b7  0      
  movl %edx, %edx                                               #  218   0x438b7  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  219   0x438b9  5      
  movl %ecx, %ecx                                               #  220   0x438be  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  221   0x438c0  5      
  movl %esi, %esi                                               #  222   0x438c5  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  223   0x438c7  5      
  je .L_43e20                                                   #  224   0x438cc  6      
  nop                                                           #  225   0x438d2  1      
  movl %edx, %edx                                               #  226   0x438d3  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  227   0x438d5  5      
  movl %edi, %edi                                               #  228   0x438da  2      
  cmpl %edx, 0x8(%r15,%rdi,1)                                   #  229   0x438dc  5      
  je .L_43e40                                                   #  230   0x438e1  6      
  movl %edi, %edi                                               #  231   0x438e7  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  232   0x438e9  5      
  nop                                                           #  233   0x438ee  1      
.L_43a00:                                                       #        0x438ef  0      
  movl %ecx, %ecx                                               #  234   0x438ef  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  235   0x438f1  5      
  movl %edx, %edx                                               #  236   0x438f6  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  237   0x438f8  5      
  movl %edx, %edx                                               #  238   0x438fd  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  239   0x438ff  5      
  nop                                                           #  240   0x43904  1      
.L_43a20:                                                       #        0x43905  0      
  movl %ecx, %ecx                                               #  241   0x43905  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  242   0x43907  5      
  testq %rdi, %rdi                                              #  243   0x4390c  3      
  je .L_43a40                                                   #  244   0x4390f  6      
  movl %edi, %edi                                               #  245   0x43915  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  246   0x43917  5      
  jne .L_43ee0                                                  #  247   0x4391c  6      
  nop                                                           #  248   0x43922  1      
.L_43a40:                                                       #        0x43923  0      
  movl %ecx, %ecx                                               #  249   0x43923  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  250   0x43925  5      
  testq %r9, %r9                                                #  251   0x4392a  3      
  je .L_438e0                                                   #  252   0x4392d  6      
  movl %r9d, %r9d                                               #  253   0x43933  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  254   0x43936  5      
  je .L_438e0                                                   #  255   0x4393b  6      
  xchgw %ax, %ax                                                #  256   0x43941  3      
.L_43a60:                                                       #        0x43944  0      
  movl %edx, %edx                                               #  257   0x43944  2      
  movl (%r15,%rdx,1), %edi                                      #  258   0x43946  4      
  testq %r9, %r9                                                #  259   0x4394a  3      
  movl %ecx, %ecx                                               #  260   0x4394d  2      
  movl %edi, (%r15,%rcx,1)                                      #  261   0x4394f  4      
  movl %edx, %edx                                               #  262   0x43953  2      
  movl $0x1, (%r15,%rdx,1)                                      #  263   0x43955  8      
  je .L_43aa0                                                   #  264   0x4395d  6      
  nop                                                           #  265   0x43963  1      
  movl %r9d, %r9d                                               #  266   0x43964  3      
  movl $0x1, (%r15,%r9,1)                                       #  267   0x43967  8      
  nop                                                           #  268   0x4396f  1      
  nop                                                           #  269   0x43970  1      
.L_43aa0:                                                       #        0x43971  0      
  movl %ecx, %ecx                                               #  270   0x43971  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  271   0x43973  5      
  movl %edx, %edx                                               #  272   0x43978  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  273   0x4397a  5      
  movl %edi, %edi                                               #  274   0x4397f  2      
  testq %rdi, %rdi                                              #  275   0x43981  3      
  je .L_43ac0                                                   #  276   0x43984  6      
  movl %edi, %edi                                               #  277   0x4398a  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  278   0x4398c  5      
  nop                                                           #  279   0x43991  1      
.L_43ac0:                                                       #        0x43992  0      
  movl %edx, %edx                                               #  280   0x43992  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  281   0x43994  5      
  movl %ecx, %ecx                                               #  282   0x43999  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  283   0x4399b  5      
  movl %esi, %esi                                               #  284   0x439a0  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  285   0x439a2  5      
  je .L_44100                                                   #  286   0x439a7  6      
  nop                                                           #  287   0x439ad  1      
  movl %edx, %edx                                               #  288   0x439ae  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  289   0x439b0  5      
  movl %esi, %esi                                               #  290   0x439b5  2      
  cmpl %edx, 0x8(%r15,%rsi,1)                                   #  291   0x439b7  5      
  je .L_43e80                                                   #  292   0x439bc  6      
  movl %esi, %esi                                               #  293   0x439c2  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  294   0x439c4  5      
  nop                                                           #  295   0x439c9  1      
.L_43b00:                                                       #        0x439ca  0      
  movl %ecx, %ecx                                               #  296   0x439ca  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  297   0x439cc  5      
  movl %edx, %edx                                               #  298   0x439d1  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  299   0x439d3  5      
  jmpq .L_43940                                                 #  300   0x439d8  5      
  nop                                                           #  301   0x439dd  1      
.L_43b20:                                                       #        0x439de  0      
  movl %esi, %esi                                               #  302   0x439de  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  303   0x439e0  5      
  jmpq .L_43880                                                 #  304   0x439e5  5      
  nop                                                           #  305   0x439ea  1      
  nop                                                           #  306   0x439eb  1      
.L_43b40:                                                       #        0x439ec  0      
  movl %edi, %edi                                               #  307   0x439ec  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  308   0x439ee  5      
  jmpq .L_43880                                                 #  309   0x439f3  5      
  nop                                                           #  310   0x439f8  1      
  nop                                                           #  311   0x439f9  1      
.L_43b60:                                                       #        0x439fa  0      
  popq %r11                                                     #  312   0x439fa  3      
  andl $0xffffffe0, %r11d                                       #  313   0x439fd  7      
  addq %r15, %r11                                               #  314   0x43a04  3      
  jmpq %r11                                                     #  315   0x43a07  3      
  nop                                                           #  316   0x43a0a  1      
  nop                                                           #  317   0x43a0b  1      
.L_43b80:                                                       #        0x43a0c  0      
  movl %ecx, %ecx                                               #  318   0x43a0c  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  319   0x43a0e  5      
  testq %r9, %r9                                                #  320   0x43a13  3      
  je .L_43ba0                                                   #  321   0x43a16  6      
  movl %r9d, %r9d                                               #  322   0x43a1c  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  323   0x43a1f  5      
  jne .L_43c40                                                  #  324   0x43a24  6      
  nop                                                           #  325   0x43a2a  1      
.L_43ba0:                                                       #        0x43a2b  0      
  movl %edi, %edi                                               #  326   0x43a2b  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  327   0x43a2d  5      
  movl %edi, %edi                                               #  328   0x43a32  2      
  movl $0x1, (%r15,%rdi,1)                                      #  329   0x43a34  8      
  movl %ecx, %ecx                                               #  330   0x43a3c  2      
  movl $0x0, (%r15,%rcx,1)                                      #  331   0x43a3e  8      
  nop                                                           #  332   0x43a46  1      
  movl %ecx, %ecx                                               #  333   0x43a47  2      
  movl %r9d, 0xc(%r15,%rcx,1)                                   #  334   0x43a49  5      
  movl %r9d, %r9d                                               #  335   0x43a4e  3      
  testq %r9, %r9                                                #  336   0x43a51  3      
  je .L_43be0                                                   #  337   0x43a54  6      
  movl %r9d, %r9d                                               #  338   0x43a5a  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  339   0x43a5d  5      
  nop                                                           #  340   0x43a62  1      
.L_43be0:                                                       #        0x43a63  0      
  movl %ecx, %ecx                                               #  341   0x43a63  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  342   0x43a65  5      
  movl %edi, %edi                                               #  343   0x43a6a  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  344   0x43a6c  5      
  movl %esi, %esi                                               #  345   0x43a71  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  346   0x43a73  5      
  je .L_440c0                                                   #  347   0x43a78  6      
  nop                                                           #  348   0x43a7e  1      
  movl %ecx, %ecx                                               #  349   0x43a7f  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  350   0x43a81  5      
  movl %r9d, %r9d                                               #  351   0x43a86  3      
  cmpl %ecx, 0x8(%r15,%r9,1)                                    #  352   0x43a89  5      
  je .L_440e0                                                   #  353   0x43a8e  6      
  movl %r9d, %r9d                                               #  354   0x43a94  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  355   0x43a97  5      
  nop                                                           #  356   0x43a9c  1      
.L_43c20:                                                       #        0x43a9d  0      
  movl %edi, %edi                                               #  357   0x43a9d  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  358   0x43a9f  5      
  movl %ecx, %ecx                                               #  359   0x43aa4  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  360   0x43aa6  5      
  movl %edx, %edx                                               #  361   0x43aab  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  362   0x43aad  5      
  movl %ecx, %ecx                                               #  363   0x43ab2  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  364   0x43ab4  5      
  nop                                                           #  365   0x43ab9  1      
.L_43c40:                                                       #        0x43aba  0      
  movl %edx, %edx                                               #  366   0x43aba  2      
  movl (%r15,%rdx,1), %edi                                      #  367   0x43abc  4      
  testq %r9, %r9                                                #  368   0x43ac0  3      
  movl %ecx, %ecx                                               #  369   0x43ac3  2      
  movl %edi, (%r15,%rcx,1)                                      #  370   0x43ac5  4      
  movl %edx, %edx                                               #  371   0x43ac9  2      
  movl $0x1, (%r15,%rdx,1)                                      #  372   0x43acb  8      
  je .L_43c80                                                   #  373   0x43ad3  6      
  nop                                                           #  374   0x43ad9  1      
  movl %r9d, %r9d                                               #  375   0x43ada  3      
  movl $0x1, (%r15,%r9,1)                                       #  376   0x43add  8      
  nop                                                           #  377   0x43ae5  1      
  nop                                                           #  378   0x43ae6  1      
.L_43c80:                                                       #        0x43ae7  0      
  movl %ecx, %ecx                                               #  379   0x43ae7  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  380   0x43ae9  5      
  movl %edx, %edx                                               #  381   0x43aee  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  382   0x43af0  5      
  movl %edi, %edi                                               #  383   0x43af5  2      
  testq %rdi, %rdi                                              #  384   0x43af7  3      
  je .L_43ca0                                                   #  385   0x43afa  6      
  movl %edi, %edi                                               #  386   0x43b00  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  387   0x43b02  5      
  nop                                                           #  388   0x43b07  1      
.L_43ca0:                                                       #        0x43b08  0      
  movl %edx, %edx                                               #  389   0x43b08  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  390   0x43b0a  5      
  movl %ecx, %ecx                                               #  391   0x43b0f  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  392   0x43b11  5      
  movl %esi, %esi                                               #  393   0x43b16  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  394   0x43b18  5      
  je .L_43ea0                                                   #  395   0x43b1d  6      
  nop                                                           #  396   0x43b23  1      
  movl %edx, %edx                                               #  397   0x43b24  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  398   0x43b26  5      
  movl %esi, %esi                                               #  399   0x43b2b  2      
  cmpl %edx, 0xc(%r15,%rsi,1)                                   #  400   0x43b2d  5      
  je .L_43ec0                                                   #  401   0x43b32  6      
  movl %esi, %esi                                               #  402   0x43b38  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  403   0x43b3a  5      
  nop                                                           #  404   0x43b3f  1      
.L_43ce0:                                                       #        0x43b40  0      
  movl %ecx, %ecx                                               #  405   0x43b40  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  406   0x43b42  5      
  movl %edx, %edx                                               #  407   0x43b47  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  408   0x43b49  5      
  jmpq .L_43940                                                 #  409   0x43b4e  5      
  nop                                                           #  410   0x43b53  1      
.L_43d00:                                                       #        0x43b54  0      
  movl %edi, %edi                                               #  411   0x43b54  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  412   0x43b56  5      
  nop                                                           #  413   0x43b5b  1      
  nop                                                           #  414   0x43b5c  1      
.L_43d20:                                                       #        0x43b5d  0      
  movq %r9, %r8                                                 #  415   0x43b5d  3      
  movq %rdi, %rax                                               #  416   0x43b60  3      
  nop                                                           #  417   0x43b63  1      
  nop                                                           #  418   0x43b64  1      
.L_43d40:                                                       #        0x43b65  0      
  testq %r8, %r8                                                #  419   0x43b65  3      
  movl %eax, %eax                                               #  420   0x43b68  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  421   0x43b6a  5      
  je .L_43d60                                                   #  422   0x43b6f  6      
  movl %r8d, %r8d                                               #  423   0x43b75  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  424   0x43b78  5      
  nop                                                           #  425   0x43b7d  1      
.L_43d60:                                                       #        0x43b7e  0      
  movl %esi, %esi                                               #  426   0x43b7e  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  427   0x43b80  5      
  je .L_43fc0                                                   #  428   0x43b85  6      
  movl %edi, %edi                                               #  429   0x43b8b  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  430   0x43b8d  5      
  movl %ecx, %ecx                                               #  431   0x43b92  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  432   0x43b94  5      
  nop                                                           #  433   0x43b99  1      
  je .L_440a0                                                   #  434   0x43b9a  6      
  movl %ecx, %ecx                                               #  435   0x43ba0  2      
  movl %r8d, 0xc(%r15,%rcx,1)                                   #  436   0x43ba2  5      
  nop                                                           #  437   0x43ba7  1      
  nop                                                           #  438   0x43ba8  1      
.L_43da0:                                                       #        0x43ba9  0      
  movl %esi, %esi                                               #  439   0x43ba9  2      
  movl 0x8(%r15,%rsi,1), %ecx                                   #  440   0x43bab  5      
  cmpl %edi, %ecx                                               #  441   0x43bb0  2      
  je .L_43fe0                                                   #  442   0x43bb2  6      
  xchgw %ax, %ax                                                #  443   0x43bb8  3      
  nop                                                           #  444   0x43bbb  1      
.L_43dc0:                                                       #        0x43bbc  0      
  movl %esi, %esi                                               #  445   0x43bbc  2      
  movl 0xc(%r15,%rsi,1), %ecx                                   #  446   0x43bbe  5      
  cmpl %edi, %ecx                                               #  447   0x43bc3  2      
  je .L_44040                                                   #  448   0x43bc5  6      
  xchgw %ax, %ax                                                #  449   0x43bcb  3      
  nop                                                           #  450   0x43bce  1      
.L_43de0:                                                       #        0x43bcf  0      
  movl %eax, %eax                                               #  451   0x43bcf  2      
  movl (%r15,%rax,1), %ecx                                      #  452   0x43bd1  4      
  jmpq .L_43760                                                 #  453   0x43bd5  5      
  nop                                                           #  454   0x43bda  1      
  nop                                                           #  455   0x43bdb  1      
.L_43e00:                                                       #        0x43bdc  0      
  movl %esi, %esi                                               #  456   0x43bdc  2      
  movl %eax, 0x4(%r15,%rsi,1)                                   #  457   0x43bde  5      
  jmpq .L_43720                                                 #  458   0x43be3  5      
  nop                                                           #  459   0x43be8  1      
  nop                                                           #  460   0x43be9  1      
.L_43e20:                                                       #        0x43bea  0      
  movl %esi, %esi                                               #  461   0x43bea  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  462   0x43bec  5      
  jmpq .L_43a00                                                 #  463   0x43bf1  5      
  nop                                                           #  464   0x43bf6  1      
  nop                                                           #  465   0x43bf7  1      
.L_43e40:                                                       #        0x43bf8  0      
  movl %edi, %edi                                               #  466   0x43bf8  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  467   0x43bfa  5      
  jmpq .L_43a00                                                 #  468   0x43bff  5      
  nop                                                           #  469   0x43c04  1      
  nop                                                           #  470   0x43c05  1      
.L_43e60:                                                       #        0x43c06  0      
  movl %ecx, %ecx                                               #  471   0x43c06  2      
  movl %eax, 0x8(%r15,%rcx,1)                                   #  472   0x43c08  5      
  jmpq .L_43720                                                 #  473   0x43c0d  5      
  nop                                                           #  474   0x43c12  1      
  nop                                                           #  475   0x43c13  1      
.L_43e80:                                                       #        0x43c14  0      
  movl %esi, %esi                                               #  476   0x43c14  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  477   0x43c16  5      
  jmpq .L_43b00                                                 #  478   0x43c1b  5      
  nop                                                           #  479   0x43c20  1      
  nop                                                           #  480   0x43c21  1      
.L_43ea0:                                                       #        0x43c22  0      
  movl %esi, %esi                                               #  481   0x43c22  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  482   0x43c24  5      
  jmpq .L_43ce0                                                 #  483   0x43c29  5      
  nop                                                           #  484   0x43c2e  1      
  nop                                                           #  485   0x43c2f  1      
.L_43ec0:                                                       #        0x43c30  0      
  movl %esi, %esi                                               #  486   0x43c30  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  487   0x43c32  5      
  jmpq .L_43ce0                                                 #  488   0x43c37  5      
  nop                                                           #  489   0x43c3c  1      
  nop                                                           #  490   0x43c3d  1      
.L_43ee0:                                                       #        0x43c3e  0      
  movl %ecx, %ecx                                               #  491   0x43c3e  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  492   0x43c40  5      
  testq %r9, %r9                                                #  493   0x43c45  3      
  je .L_43f00                                                   #  494   0x43c48  6      
  movl %r9d, %r9d                                               #  495   0x43c4e  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  496   0x43c51  5      
  jne .L_43a60                                                  #  497   0x43c56  6      
  nop                                                           #  498   0x43c5c  1      
.L_43f00:                                                       #        0x43c5d  0      
  movl %edi, %edi                                               #  499   0x43c5d  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  500   0x43c5f  5      
  movl %edi, %edi                                               #  501   0x43c64  2      
  movl $0x1, (%r15,%rdi,1)                                      #  502   0x43c66  8      
  movl %ecx, %ecx                                               #  503   0x43c6e  2      
  movl $0x0, (%r15,%rcx,1)                                      #  504   0x43c70  8      
  nop                                                           #  505   0x43c78  1      
  movl %ecx, %ecx                                               #  506   0x43c79  2      
  movl %r9d, 0x8(%r15,%rcx,1)                                   #  507   0x43c7b  5      
  movl %r9d, %r9d                                               #  508   0x43c80  3      
  testq %r9, %r9                                                #  509   0x43c83  3      
  je .L_43f40                                                   #  510   0x43c86  6      
  movl %r9d, %r9d                                               #  511   0x43c8c  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  512   0x43c8f  5      
  nop                                                           #  513   0x43c94  1      
.L_43f40:                                                       #        0x43c95  0      
  movl %ecx, %ecx                                               #  514   0x43c95  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  515   0x43c97  5      
  movl %edi, %edi                                               #  516   0x43c9c  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  517   0x43c9e  5      
  movl %esi, %esi                                               #  518   0x43ca3  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  519   0x43ca5  5      
  je .L_44160                                                   #  520   0x43caa  6      
  nop                                                           #  521   0x43cb0  1      
  movl %ecx, %ecx                                               #  522   0x43cb1  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  523   0x43cb3  5      
  movl %r9d, %r9d                                               #  524   0x43cb8  3      
  cmpl %ecx, 0xc(%r15,%r9,1)                                    #  525   0x43cbb  5      
  je .L_44180                                                   #  526   0x43cc0  6      
  movl %r9d, %r9d                                               #  527   0x43cc6  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  528   0x43cc9  5      
  nop                                                           #  529   0x43cce  1      
.L_43f80:                                                       #        0x43ccf  0      
  movl %edi, %edi                                               #  530   0x43ccf  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  531   0x43cd1  5      
  movl %ecx, %ecx                                               #  532   0x43cd6  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  533   0x43cd8  5      
  movl %edx, %edx                                               #  534   0x43cdd  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  535   0x43cdf  5      
  movl %ecx, %ecx                                               #  536   0x43ce4  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  537   0x43ce6  5      
  nop                                                           #  538   0x43ceb  1      
  jmpq .L_43a60                                                 #  539   0x43cec  5      
  nop                                                           #  540   0x43cf1  1      
  nop                                                           #  541   0x43cf2  1      
.L_43fc0:                                                       #        0x43cf3  0      
  movl %esi, %esi                                               #  542   0x43cf3  2      
  movl %r8d, 0x4(%r15,%rsi,1)                                   #  543   0x43cf5  5      
  jmpq .L_43da0                                                 #  544   0x43cfa  5      
  nop                                                           #  545   0x43cff  1      
  nop                                                           #  546   0x43d00  1      
.L_43fe0:                                                       #        0x43d01  0      
  movl %ecx, %ecx                                               #  547   0x43d01  2      
  movl 0xc(%r15,%rcx,1), %r10d                                  #  548   0x43d03  5      
  movq %r8, %r9                                                 #  549   0x43d08  3      
  testl %r10d, %r10d                                            #  550   0x43d0b  3      
  jne .L_44020                                                  #  551   0x43d0e  6      
  jmpq .L_44120                                                 #  552   0x43d14  5      
  nop                                                           #  553   0x43d19  1      
.L_44000:                                                       #        0x43d1a  0      
  movq %rcx, %r9                                                #  554   0x43d1a  3      
  nop                                                           #  555   0x43d1d  1      
  nop                                                           #  556   0x43d1e  1      
.L_44020:                                                       #        0x43d1f  0      
  movl %r9d, %r9d                                               #  557   0x43d1f  3      
  movl 0x8(%r15,%r9,1), %ecx                                    #  558   0x43d22  5      
  testq %rcx, %rcx                                              #  559   0x43d27  3      
  jne .L_44000                                                  #  560   0x43d2a  6      
  movl %esi, %esi                                               #  561   0x43d30  2      
  movl %r9d, 0x8(%r15,%rsi,1)                                   #  562   0x43d32  5      
  jmpq .L_43dc0                                                 #  563   0x43d37  5      
  nop                                                           #  564   0x43d3c  1      
.L_44040:                                                       #        0x43d3d  0      
  movl %ecx, %ecx                                               #  565   0x43d3d  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  566   0x43d3f  5      
  movq %r8, %rdi                                                #  567   0x43d44  3      
  testl %r9d, %r9d                                              #  568   0x43d47  3      
  jne .L_44080                                                  #  569   0x43d4a  6      
  jmpq .L_44140                                                 #  570   0x43d50  5      
  nop                                                           #  571   0x43d55  1      
.L_44060:                                                       #        0x43d56  0      
  movq %rcx, %rdi                                               #  572   0x43d56  3      
  nop                                                           #  573   0x43d59  1      
  nop                                                           #  574   0x43d5a  1      
.L_44080:                                                       #        0x43d5b  0      
  movl %edi, %edi                                               #  575   0x43d5b  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  576   0x43d5d  5      
  testq %rcx, %rcx                                              #  577   0x43d62  3      
  jne .L_44060                                                  #  578   0x43d65  6      
  movl %esi, %esi                                               #  579   0x43d6b  2      
  movl %edi, 0xc(%r15,%rsi,1)                                   #  580   0x43d6d  5      
  jmpq .L_43de0                                                 #  581   0x43d72  5      
  nop                                                           #  582   0x43d77  1      
.L_440a0:                                                       #        0x43d78  0      
  movl %ecx, %ecx                                               #  583   0x43d78  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  584   0x43d7a  5      
  jmpq .L_43da0                                                 #  585   0x43d7f  5      
  nop                                                           #  586   0x43d84  1      
  nop                                                           #  587   0x43d85  1      
.L_440c0:                                                       #        0x43d86  0      
  movl %esi, %esi                                               #  588   0x43d86  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  589   0x43d88  5      
  jmpq .L_43c20                                                 #  590   0x43d8d  5      
  nop                                                           #  591   0x43d92  1      
  nop                                                           #  592   0x43d93  1      
.L_440e0:                                                       #        0x43d94  0      
  movl %r9d, %r9d                                               #  593   0x43d94  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  594   0x43d97  5      
  jmpq .L_43c20                                                 #  595   0x43d9c  5      
  nop                                                           #  596   0x43da1  1      
  nop                                                           #  597   0x43da2  1      
.L_44100:                                                       #        0x43da3  0      
  movl %esi, %esi                                               #  598   0x43da3  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  599   0x43da5  5      
  jmpq .L_43b00                                                 #  600   0x43daa  5      
  nop                                                           #  601   0x43daf  1      
  nop                                                           #  602   0x43db0  1      
.L_44120:                                                       #        0x43db1  0      
  movl %ecx, %ecx                                               #  603   0x43db1  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  604   0x43db3  5      
  movl %esi, %esi                                               #  605   0x43db8  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  606   0x43dba  5      
  jmpq .L_43dc0                                                 #  607   0x43dbf  5      
  nop                                                           #  608   0x43dc4  1      
.L_44140:                                                       #        0x43dc5  0      
  movl %ecx, %ecx                                               #  609   0x43dc5  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  610   0x43dc7  5      
  movl %esi, %esi                                               #  611   0x43dcc  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  612   0x43dce  5      
  movl %eax, %eax                                               #  613   0x43dd3  2      
  movl (%r15,%rax,1), %ecx                                      #  614   0x43dd5  4      
  jmpq .L_43760                                                 #  615   0x43dd9  5      
  nop                                                           #  616   0x43dde  1      
.L_44160:                                                       #        0x43ddf  0      
  movl %esi, %esi                                               #  617   0x43ddf  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  618   0x43de1  5      
  jmpq .L_43f80                                                 #  619   0x43de6  5      
  nop                                                           #  620   0x43deb  1      
  nop                                                           #  621   0x43dec  1      
.L_44180:                                                       #        0x43ded  0      
  movl %r9d, %r9d                                               #  622   0x43ded  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  623   0x43df0  5      
  jmpq .L_43f80                                                 #  624   0x43df5  5      
  nop                                                           #  625   0x43dfa  1      
  nop                                                           #  626   0x43dfb  1      
  nop                                                           #  627   0x43dfc  1      
  nop                                                           #  628   0x43dfd  1      
  nop                                                           #  629   0x43dfe  1      
  nop                                                           #  630   0x43dff  1      
  nop                                                           #  631   0x43e00  1      
  nop                                                           #  632   0x43e01  1      
  nop                                                           #  633   0x43e02  1      
  nop                                                           #  634   0x43e03  1      
  nop                                                           #  635   0x43e04  1      
  nop                                                           #  636   0x43e05  1      
  nop                                                           #  637   0x43e06  1      
  nop                                                           #  638   0x43e07  1      
  nop                                                           #  639   0x43e08  1      
  nop                                                           #  640   0x43e09  1      
  nop                                                           #  641   0x43e0a  1      
  nop                                                           #  642   0x43e0b  1      
  nop                                                           #  643   0x43e0c  1      
                                                                                         
.size _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, .-_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_

