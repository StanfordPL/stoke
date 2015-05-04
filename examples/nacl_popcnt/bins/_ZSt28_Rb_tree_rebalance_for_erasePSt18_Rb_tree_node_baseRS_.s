  .text
  .globl _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
  .type _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, @function

#! file-offset 0x43680
#! rip-offset  0x43680
#! capacity    3008 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_:  #        0x43680  0      
  movl %edi, %edi                                               #  1     0x43680  2      
  movl %esi, %esi                                               #  2     0x43682  2      
  movl %edi, %edi                                               #  3     0x43684  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  4     0x43686  5      
  testq %r9, %r9                                                #  5     0x4368b  3      
  je .L_43da0                                                   #  6     0x4368e  6      
  movl %edi, %edi                                               #  7     0x43694  2      
  movl 0xc(%r15,%rdi,1), %edx                                   #  8     0x43696  5      
  testq %rdx, %rdx                                              #  9     0x4369b  3      
  xchgw %ax, %ax                                                #  10    0x4369e  3      
  movq %rdx, %rax                                               #  11    0x436a1  3      
  jne .L_436e0                                                  #  12    0x436a4  6      
  jmpq .L_43dc0                                                 #  13    0x436aa  5      
  nop                                                           #  14    0x436af  1      
  nop                                                           #  15    0x436b0  1      
.L_436c0:                                                       #        0x436b1  0      
  movq %rcx, %rax                                               #  16    0x436b1  3      
  nop                                                           #  17    0x436b4  1      
  nop                                                           #  18    0x436b5  1      
.L_436e0:                                                       #        0x436b6  0      
  movl %eax, %eax                                               #  19    0x436b6  2      
  movl 0x8(%r15,%rax,1), %ecx                                   #  20    0x436b8  5      
  testq %rcx, %rcx                                              #  21    0x436bd  3      
  jne .L_436c0                                                  #  22    0x436c0  6      
  cmpl %edi, %eax                                               #  23    0x436c6  2      
  movl %eax, %eax                                               #  24    0x436c8  2      
  movl 0xc(%r15,%rax,1), %r8d                                   #  25    0x436ca  5      
  je .L_43de0                                                   #  26    0x436cf  6      
  nop                                                           #  27    0x436d5  1      
  movl %edi, %edi                                               #  28    0x436d6  2      
  movl 0x8(%r15,%rdi,1), %ecx                                   #  29    0x436d8  5      
  cmpl %edx, %eax                                               #  30    0x436dd  2      
  movl %r9d, %r9d                                               #  31    0x436df  3      
  movl %eax, 0x4(%r15,%r9,1)                                    #  32    0x436e2  5      
  movl %eax, %eax                                               #  33    0x436e7  2      
  movl %ecx, 0x8(%r15,%rax,1)                                   #  34    0x436e9  5      
  je .L_43780                                                   #  35    0x436ee  6      
  nop                                                           #  36    0x436f4  1      
  movl %eax, %eax                                               #  37    0x436f5  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  38    0x436f7  5      
  testq %r8, %r8                                                #  39    0x436fc  3      
  movq %rdx, %rcx                                               #  40    0x436ff  3      
  je .L_43740                                                   #  41    0x43702  6      
  movl %r8d, %r8d                                               #  42    0x43708  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  43    0x4370b  5      
  movl %eax, %eax                                               #  44    0x43710  2      
  movl 0x4(%r15,%rax,1), %ecx                                   #  45    0x43712  5      
  xchgw %ax, %ax                                                #  46    0x43717  3      
.L_43740:                                                       #        0x4371a  0      
  movl %ecx, %ecx                                               #  47    0x4371a  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  48    0x4371c  5      
  movl %edi, %edi                                               #  49    0x43721  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  50    0x43723  5      
  movl %eax, %eax                                               #  51    0x43728  2      
  movl %ecx, 0xc(%r15,%rax,1)                                   #  52    0x4372a  5      
  movl %edi, %edi                                               #  53    0x4372f  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  54    0x43731  5      
  nop                                                           #  55    0x43736  1      
  movl %ecx, %ecx                                               #  56    0x43737  2      
  movl %eax, 0x4(%r15,%rcx,1)                                   #  57    0x43739  5      
  nop                                                           #  58    0x4373e  1      
  nop                                                           #  59    0x4373f  1      
.L_43780:                                                       #        0x43740  0      
  movl %esi, %esi                                               #  60    0x43740  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  61    0x43742  5      
  je .L_43ea0                                                   #  62    0x43747  6      
  movl %edi, %edi                                               #  63    0x4374d  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  64    0x4374f  5      
  movl %ecx, %ecx                                               #  65    0x43754  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  66    0x43756  5      
  nop                                                           #  67    0x4375b  1      
  je .L_43f00                                                   #  68    0x4375c  6      
  movl %ecx, %ecx                                               #  69    0x43762  2      
  movl %eax, 0xc(%r15,%rcx,1)                                   #  70    0x43764  5      
  nop                                                           #  71    0x43769  1      
  nop                                                           #  72    0x4376a  1      
.L_437c0:                                                       #        0x4376b  0      
  movl %edi, %edi                                               #  73    0x4376b  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  74    0x4376d  5      
  movl %edi, %edi                                               #  75    0x43772  2      
  movl (%r15,%rdi,1), %r9d                                      #  76    0x43774  4      
  movl %eax, %eax                                               #  77    0x43778  2      
  movl %ecx, 0x4(%r15,%rax,1)                                   #  78    0x4377a  5      
  movl %eax, %eax                                               #  79    0x4377f  2      
  movl (%r15,%rax,1), %ecx                                      #  80    0x43781  4      
  movl %eax, %eax                                               #  81    0x43785  2      
  movl %r9d, (%r15,%rax,1)                                      #  82    0x43787  4      
  movq %rdi, %rax                                               #  83    0x4378b  3      
  movl %edi, %edi                                               #  84    0x4378e  2      
  movl %ecx, (%r15,%rdi,1)                                      #  85    0x43790  4      
  nop                                                           #  86    0x43794  1      
  nop                                                           #  87    0x43795  1      
.L_43800:                                                       #        0x43796  0      
  testl %ecx, %ecx                                              #  88    0x43796  2      
  je .L_43c00                                                   #  89    0x43798  6      
  movl %esi, %esi                                               #  90    0x4379e  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  91    0x437a0  5      
  cmpl %r8d, %ecx                                               #  92    0x437a5  3      
  je .L_439c0                                                   #  93    0x437a8  6      
  nop                                                           #  94    0x437ae  1      
.L_43820:                                                       #        0x437af  0      
  testq %r8, %r8                                                #  95    0x437af  3      
  je .L_43880                                                   #  96    0x437b2  6      
  movl %r8d, %r8d                                               #  97    0x437b8  3      
  cmpl $0x1, (%r15,%r8,1)                                       #  98    0x437bb  5      
  je .L_43880                                                   #  99    0x437c0  6      
  xchgw %ax, %ax                                                #  100   0x437c6  3      
  nop                                                           #  101   0x437c9  1      
.L_43840:                                                       #        0x437ca  0      
  movl %r8d, %r8d                                               #  102   0x437ca  3      
  movl $0x1, (%r15,%r8,1)                                       #  103   0x437cd  8      
  nop                                                           #  104   0x437d5  1      
  nop                                                           #  105   0x437d6  1      
.L_43860:                                                       #        0x437d7  0      
  popq %r11                                                     #  106   0x437d7  3      
  andl $0xffffffe0, %r11d                                       #  107   0x437da  7      
  addq %r15, %r11                                               #  108   0x437e1  3      
  jmpq %r11                                                     #  109   0x437e4  3      
  nop                                                           #  110   0x437e7  1      
  nop                                                           #  111   0x437e8  1      
.L_43880:                                                       #        0x437e9  0      
  movl %edx, %edx                                               #  112   0x437e9  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  113   0x437eb  5      
  cmpl %r8d, %ecx                                               #  114   0x437f0  3      
  je .L_43a00                                                   #  115   0x437f3  6      
  movl %ecx, %ecx                                               #  116   0x437f9  2      
  movl (%r15,%rcx,1), %r11d                                     #  117   0x437fb  4      
  testl %r11d, %r11d                                            #  118   0x437ff  3      
  jne .L_43940                                                  #  119   0x43802  6      
  nop                                                           #  120   0x43808  1      
  movl %ecx, %ecx                                               #  121   0x43809  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  122   0x4380b  5      
  movl %ecx, %ecx                                               #  123   0x43810  2      
  movl $0x1, (%r15,%rcx,1)                                      #  124   0x43812  8      
  movl %edx, %edx                                               #  125   0x4381a  2      
  movl $0x0, (%r15,%rdx,1)                                      #  126   0x4381c  8      
  nop                                                           #  127   0x43824  1      
  movl %edx, %edx                                               #  128   0x43825  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  129   0x43827  5      
  movl %edi, %edi                                               #  130   0x4382c  2      
  testq %rdi, %rdi                                              #  131   0x4382e  3      
  je .L_438e0                                                   #  132   0x43831  6      
  movl %edi, %edi                                               #  133   0x43837  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  134   0x43839  5      
  nop                                                           #  135   0x4383e  1      
.L_438e0:                                                       #        0x4383f  0      
  movl %edx, %edx                                               #  136   0x4383f  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  137   0x43841  5      
  movl %ecx, %ecx                                               #  138   0x43846  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  139   0x43848  5      
  movl %esi, %esi                                               #  140   0x4384d  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  141   0x4384f  5      
  je .L_43bc0                                                   #  142   0x43854  6      
  nop                                                           #  143   0x4385a  1      
  movl %edx, %edx                                               #  144   0x4385b  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  145   0x4385d  5      
  movl %edi, %edi                                               #  146   0x43862  2      
  cmpl %edx, 0xc(%r15,%rdi,1)                                   #  147   0x43864  5      
  je .L_43be0                                                   #  148   0x43869  6      
  movl %edi, %edi                                               #  149   0x4386f  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  150   0x43871  5      
  nop                                                           #  151   0x43876  1      
.L_43920:                                                       #        0x43877  0      
  movl %ecx, %ecx                                               #  152   0x43877  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  153   0x43879  5      
  movl %edx, %edx                                               #  154   0x4387e  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  155   0x43880  5      
  movl %edx, %edx                                               #  156   0x43885  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  157   0x43887  5      
  nop                                                           #  158   0x4388c  1      
.L_43940:                                                       #        0x4388d  0      
  movl %ecx, %ecx                                               #  159   0x4388d  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  160   0x4388f  5      
  testq %rdi, %rdi                                              #  161   0x43894  3      
  je .L_43960                                                   #  162   0x43897  6      
  movl %edi, %edi                                               #  163   0x4389d  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  164   0x4389f  5      
  jne .L_43c20                                                  #  165   0x438a4  6      
  nop                                                           #  166   0x438aa  1      
.L_43960:                                                       #        0x438ab  0      
  movl %ecx, %ecx                                               #  167   0x438ab  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  168   0x438ad  5      
  testq %r9, %r9                                                #  169   0x438b2  3      
  je .L_43980                                                   #  170   0x438b5  6      
  movl %r9d, %r9d                                               #  171   0x438bb  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  172   0x438be  5      
  jne .L_43ce0                                                  #  173   0x438c3  6      
  nop                                                           #  174   0x438c9  1      
.L_43980:                                                       #        0x438ca  0      
  movl %ecx, %ecx                                               #  175   0x438ca  2      
  movl $0x0, (%r15,%rcx,1)                                      #  176   0x438cc  8      
  movl %edx, %edx                                               #  177   0x438d4  2      
  movl 0x4(%r15,%rdx,1), %ecx                                   #  178   0x438d6  5      
  movq %rdx, %r8                                                #  179   0x438db  3      
  movq %rcx, %rdx                                               #  180   0x438de  3      
  movl %esi, %esi                                               #  181   0x438e1  2      
  movl 0x4(%r15,%rsi,1), %ecx                                   #  182   0x438e3  5      
  xchgw %ax, %ax                                                #  183   0x438e8  3      
  cmpl %r8d, %ecx                                               #  184   0x438eb  3      
  jne .L_43820                                                  #  185   0x438ee  6      
  nop                                                           #  186   0x438f4  1      
  nop                                                           #  187   0x438f5  1      
.L_439c0:                                                       #        0x438f6  0      
  movq %rcx, %r8                                                #  188   0x438f6  3      
  nop                                                           #  189   0x438f9  1      
  nop                                                           #  190   0x438fa  1      
.L_439e0:                                                       #        0x438fb  0      
  testq %r8, %r8                                                #  191   0x438fb  3      
  je .L_43860                                                   #  192   0x438fe  6      
  jmpq .L_43840                                                 #  193   0x43904  5      
  nop                                                           #  194   0x43909  1      
  nop                                                           #  195   0x4390a  1      
.L_43a00:                                                       #        0x4390b  0      
  movl %edx, %edx                                               #  196   0x4390b  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  197   0x4390d  5      
  movl %ecx, %ecx                                               #  198   0x43912  2      
  movl (%r15,%rcx,1), %edi                                      #  199   0x43914  4      
  testl %edi, %edi                                              #  200   0x43918  2      
  jne .L_43ac0                                                  #  201   0x4391a  6      
  movl %ecx, %ecx                                               #  202   0x43920  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  203   0x43922  5      
  nop                                                           #  204   0x43927  1      
  movl %ecx, %ecx                                               #  205   0x43928  2      
  movl $0x1, (%r15,%rcx,1)                                      #  206   0x4392a  8      
  movl %edx, %edx                                               #  207   0x43932  2      
  movl $0x0, (%r15,%rdx,1)                                      #  208   0x43934  8      
  movl %edx, %edx                                               #  209   0x4393c  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  210   0x4393e  5      
  movl %edi, %edi                                               #  211   0x43943  2      
  testq %rdi, %rdi                                              #  212   0x43945  3      
  je .L_43a60                                                   #  213   0x43948  6      
  movl %edi, %edi                                               #  214   0x4394e  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  215   0x43950  5      
  nop                                                           #  216   0x43955  1      
  nop                                                           #  217   0x43956  1      
.L_43a60:                                                       #        0x43957  0      
  movl %edx, %edx                                               #  218   0x43957  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  219   0x43959  5      
  movl %ecx, %ecx                                               #  220   0x4395e  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  221   0x43960  5      
  movl %esi, %esi                                               #  222   0x43965  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  223   0x43967  5      
  je .L_43ec0                                                   #  224   0x4396c  6      
  nop                                                           #  225   0x43972  1      
  movl %edx, %edx                                               #  226   0x43973  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  227   0x43975  5      
  movl %edi, %edi                                               #  228   0x4397a  2      
  cmpl %edx, 0x8(%r15,%rdi,1)                                   #  229   0x4397c  5      
  je .L_43ee0                                                   #  230   0x43981  6      
  movl %edi, %edi                                               #  231   0x43987  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  232   0x43989  5      
  nop                                                           #  233   0x4398e  1      
.L_43aa0:                                                       #        0x4398f  0      
  movl %ecx, %ecx                                               #  234   0x4398f  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  235   0x43991  5      
  movl %edx, %edx                                               #  236   0x43996  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  237   0x43998  5      
  movl %edx, %edx                                               #  238   0x4399d  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  239   0x4399f  5      
  nop                                                           #  240   0x439a4  1      
.L_43ac0:                                                       #        0x439a5  0      
  movl %ecx, %ecx                                               #  241   0x439a5  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  242   0x439a7  5      
  testq %rdi, %rdi                                              #  243   0x439ac  3      
  je .L_43ae0                                                   #  244   0x439af  6      
  movl %edi, %edi                                               #  245   0x439b5  2      
  cmpl $0x1, (%r15,%rdi,1)                                      #  246   0x439b7  5      
  jne .L_43f80                                                  #  247   0x439bc  6      
  nop                                                           #  248   0x439c2  1      
.L_43ae0:                                                       #        0x439c3  0      
  movl %ecx, %ecx                                               #  249   0x439c3  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  250   0x439c5  5      
  testq %r9, %r9                                                #  251   0x439ca  3      
  je .L_43980                                                   #  252   0x439cd  6      
  movl %r9d, %r9d                                               #  253   0x439d3  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  254   0x439d6  5      
  je .L_43980                                                   #  255   0x439db  6      
  xchgw %ax, %ax                                                #  256   0x439e1  3      
.L_43b00:                                                       #        0x439e4  0      
  movl %edx, %edx                                               #  257   0x439e4  2      
  movl (%r15,%rdx,1), %edi                                      #  258   0x439e6  4      
  testq %r9, %r9                                                #  259   0x439ea  3      
  movl %ecx, %ecx                                               #  260   0x439ed  2      
  movl %edi, (%r15,%rcx,1)                                      #  261   0x439ef  4      
  movl %edx, %edx                                               #  262   0x439f3  2      
  movl $0x1, (%r15,%rdx,1)                                      #  263   0x439f5  8      
  je .L_43b40                                                   #  264   0x439fd  6      
  nop                                                           #  265   0x43a03  1      
  movl %r9d, %r9d                                               #  266   0x43a04  3      
  movl $0x1, (%r15,%r9,1)                                       #  267   0x43a07  8      
  nop                                                           #  268   0x43a0f  1      
  nop                                                           #  269   0x43a10  1      
.L_43b40:                                                       #        0x43a11  0      
  movl %ecx, %ecx                                               #  270   0x43a11  2      
  movl 0x8(%r15,%rcx,1), %edi                                   #  271   0x43a13  5      
  movl %edx, %edx                                               #  272   0x43a18  2      
  movl %edi, 0xc(%r15,%rdx,1)                                   #  273   0x43a1a  5      
  movl %edi, %edi                                               #  274   0x43a1f  2      
  testq %rdi, %rdi                                              #  275   0x43a21  3      
  je .L_43b60                                                   #  276   0x43a24  6      
  movl %edi, %edi                                               #  277   0x43a2a  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  278   0x43a2c  5      
  nop                                                           #  279   0x43a31  1      
.L_43b60:                                                       #        0x43a32  0      
  movl %edx, %edx                                               #  280   0x43a32  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  281   0x43a34  5      
  movl %ecx, %ecx                                               #  282   0x43a39  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  283   0x43a3b  5      
  movl %esi, %esi                                               #  284   0x43a40  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  285   0x43a42  5      
  je .L_441a0                                                   #  286   0x43a47  6      
  nop                                                           #  287   0x43a4d  1      
  movl %edx, %edx                                               #  288   0x43a4e  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  289   0x43a50  5      
  movl %esi, %esi                                               #  290   0x43a55  2      
  cmpl %edx, 0x8(%r15,%rsi,1)                                   #  291   0x43a57  5      
  je .L_43f20                                                   #  292   0x43a5c  6      
  movl %esi, %esi                                               #  293   0x43a62  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  294   0x43a64  5      
  nop                                                           #  295   0x43a69  1      
.L_43ba0:                                                       #        0x43a6a  0      
  movl %ecx, %ecx                                               #  296   0x43a6a  2      
  movl %edx, 0x8(%r15,%rcx,1)                                   #  297   0x43a6c  5      
  movl %edx, %edx                                               #  298   0x43a71  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  299   0x43a73  5      
  jmpq .L_439e0                                                 #  300   0x43a78  5      
  nop                                                           #  301   0x43a7d  1      
.L_43bc0:                                                       #        0x43a7e  0      
  movl %esi, %esi                                               #  302   0x43a7e  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  303   0x43a80  5      
  jmpq .L_43920                                                 #  304   0x43a85  5      
  nop                                                           #  305   0x43a8a  1      
  nop                                                           #  306   0x43a8b  1      
.L_43be0:                                                       #        0x43a8c  0      
  movl %edi, %edi                                               #  307   0x43a8c  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  308   0x43a8e  5      
  jmpq .L_43920                                                 #  309   0x43a93  5      
  nop                                                           #  310   0x43a98  1      
  nop                                                           #  311   0x43a99  1      
.L_43c00:                                                       #        0x43a9a  0      
  popq %r11                                                     #  312   0x43a9a  3      
  andl $0xffffffe0, %r11d                                       #  313   0x43a9d  7      
  addq %r15, %r11                                               #  314   0x43aa4  3      
  jmpq %r11                                                     #  315   0x43aa7  3      
  nop                                                           #  316   0x43aaa  1      
  nop                                                           #  317   0x43aab  1      
.L_43c20:                                                       #        0x43aac  0      
  movl %ecx, %ecx                                               #  318   0x43aac  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  319   0x43aae  5      
  testq %r9, %r9                                                #  320   0x43ab3  3      
  je .L_43c40                                                   #  321   0x43ab6  6      
  movl %r9d, %r9d                                               #  322   0x43abc  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  323   0x43abf  5      
  jne .L_43ce0                                                  #  324   0x43ac4  6      
  nop                                                           #  325   0x43aca  1      
.L_43c40:                                                       #        0x43acb  0      
  movl %edi, %edi                                               #  326   0x43acb  2      
  movl 0x8(%r15,%rdi,1), %r9d                                   #  327   0x43acd  5      
  movl %edi, %edi                                               #  328   0x43ad2  2      
  movl $0x1, (%r15,%rdi,1)                                      #  329   0x43ad4  8      
  movl %ecx, %ecx                                               #  330   0x43adc  2      
  movl $0x0, (%r15,%rcx,1)                                      #  331   0x43ade  8      
  nop                                                           #  332   0x43ae6  1      
  movl %ecx, %ecx                                               #  333   0x43ae7  2      
  movl %r9d, 0xc(%r15,%rcx,1)                                   #  334   0x43ae9  5      
  movl %r9d, %r9d                                               #  335   0x43aee  3      
  testq %r9, %r9                                                #  336   0x43af1  3      
  je .L_43c80                                                   #  337   0x43af4  6      
  movl %r9d, %r9d                                               #  338   0x43afa  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  339   0x43afd  5      
  nop                                                           #  340   0x43b02  1      
.L_43c80:                                                       #        0x43b03  0      
  movl %ecx, %ecx                                               #  341   0x43b03  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  342   0x43b05  5      
  movl %edi, %edi                                               #  343   0x43b0a  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  344   0x43b0c  5      
  movl %esi, %esi                                               #  345   0x43b11  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  346   0x43b13  5      
  je .L_44160                                                   #  347   0x43b18  6      
  nop                                                           #  348   0x43b1e  1      
  movl %ecx, %ecx                                               #  349   0x43b1f  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  350   0x43b21  5      
  movl %r9d, %r9d                                               #  351   0x43b26  3      
  cmpl %ecx, 0x8(%r15,%r9,1)                                    #  352   0x43b29  5      
  je .L_44180                                                   #  353   0x43b2e  6      
  movl %r9d, %r9d                                               #  354   0x43b34  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  355   0x43b37  5      
  nop                                                           #  356   0x43b3c  1      
.L_43cc0:                                                       #        0x43b3d  0      
  movl %edi, %edi                                               #  357   0x43b3d  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  358   0x43b3f  5      
  movl %ecx, %ecx                                               #  359   0x43b44  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  360   0x43b46  5      
  movl %edx, %edx                                               #  361   0x43b4b  2      
  movl 0x8(%r15,%rdx,1), %ecx                                   #  362   0x43b4d  5      
  movl %ecx, %ecx                                               #  363   0x43b52  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  364   0x43b54  5      
  nop                                                           #  365   0x43b59  1      
.L_43ce0:                                                       #        0x43b5a  0      
  movl %edx, %edx                                               #  366   0x43b5a  2      
  movl (%r15,%rdx,1), %edi                                      #  367   0x43b5c  4      
  testq %r9, %r9                                                #  368   0x43b60  3      
  movl %ecx, %ecx                                               #  369   0x43b63  2      
  movl %edi, (%r15,%rcx,1)                                      #  370   0x43b65  4      
  movl %edx, %edx                                               #  371   0x43b69  2      
  movl $0x1, (%r15,%rdx,1)                                      #  372   0x43b6b  8      
  je .L_43d20                                                   #  373   0x43b73  6      
  nop                                                           #  374   0x43b79  1      
  movl %r9d, %r9d                                               #  375   0x43b7a  3      
  movl $0x1, (%r15,%r9,1)                                       #  376   0x43b7d  8      
  nop                                                           #  377   0x43b85  1      
  nop                                                           #  378   0x43b86  1      
.L_43d20:                                                       #        0x43b87  0      
  movl %ecx, %ecx                                               #  379   0x43b87  2      
  movl 0xc(%r15,%rcx,1), %edi                                   #  380   0x43b89  5      
  movl %edx, %edx                                               #  381   0x43b8e  2      
  movl %edi, 0x8(%r15,%rdx,1)                                   #  382   0x43b90  5      
  movl %edi, %edi                                               #  383   0x43b95  2      
  testq %rdi, %rdi                                              #  384   0x43b97  3      
  je .L_43d40                                                   #  385   0x43b9a  6      
  movl %edi, %edi                                               #  386   0x43ba0  2      
  movl %edx, 0x4(%r15,%rdi,1)                                   #  387   0x43ba2  5      
  nop                                                           #  388   0x43ba7  1      
.L_43d40:                                                       #        0x43ba8  0      
  movl %edx, %edx                                               #  389   0x43ba8  2      
  movl 0x4(%r15,%rdx,1), %edi                                   #  390   0x43baa  5      
  movl %ecx, %ecx                                               #  391   0x43baf  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  392   0x43bb1  5      
  movl %esi, %esi                                               #  393   0x43bb6  2      
  cmpl %edx, 0x4(%r15,%rsi,1)                                   #  394   0x43bb8  5      
  je .L_43f40                                                   #  395   0x43bbd  6      
  nop                                                           #  396   0x43bc3  1      
  movl %edx, %edx                                               #  397   0x43bc4  2      
  movl 0x4(%r15,%rdx,1), %esi                                   #  398   0x43bc6  5      
  movl %esi, %esi                                               #  399   0x43bcb  2      
  cmpl %edx, 0xc(%r15,%rsi,1)                                   #  400   0x43bcd  5      
  je .L_43f60                                                   #  401   0x43bd2  6      
  movl %esi, %esi                                               #  402   0x43bd8  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  403   0x43bda  5      
  nop                                                           #  404   0x43bdf  1      
.L_43d80:                                                       #        0x43be0  0      
  movl %ecx, %ecx                                               #  405   0x43be0  2      
  movl %edx, 0xc(%r15,%rcx,1)                                   #  406   0x43be2  5      
  movl %edx, %edx                                               #  407   0x43be7  2      
  movl %ecx, 0x4(%r15,%rdx,1)                                   #  408   0x43be9  5      
  jmpq .L_439e0                                                 #  409   0x43bee  5      
  nop                                                           #  410   0x43bf3  1      
.L_43da0:                                                       #        0x43bf4  0      
  movl %edi, %edi                                               #  411   0x43bf4  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  412   0x43bf6  5      
  nop                                                           #  413   0x43bfb  1      
  nop                                                           #  414   0x43bfc  1      
.L_43dc0:                                                       #        0x43bfd  0      
  movq %r9, %r8                                                 #  415   0x43bfd  3      
  movq %rdi, %rax                                               #  416   0x43c00  3      
  nop                                                           #  417   0x43c03  1      
  nop                                                           #  418   0x43c04  1      
.L_43de0:                                                       #        0x43c05  0      
  testq %r8, %r8                                                #  419   0x43c05  3      
  movl %eax, %eax                                               #  420   0x43c08  2      
  movl 0x4(%r15,%rax,1), %edx                                   #  421   0x43c0a  5      
  je .L_43e00                                                   #  422   0x43c0f  6      
  movl %r8d, %r8d                                               #  423   0x43c15  3      
  movl %edx, 0x4(%r15,%r8,1)                                    #  424   0x43c18  5      
  nop                                                           #  425   0x43c1d  1      
.L_43e00:                                                       #        0x43c1e  0      
  movl %esi, %esi                                               #  426   0x43c1e  2      
  cmpl %edi, 0x4(%r15,%rsi,1)                                   #  427   0x43c20  5      
  je .L_44060                                                   #  428   0x43c25  6      
  movl %edi, %edi                                               #  429   0x43c2b  2      
  movl 0x4(%r15,%rdi,1), %ecx                                   #  430   0x43c2d  5      
  movl %ecx, %ecx                                               #  431   0x43c32  2      
  cmpl %edi, 0x8(%r15,%rcx,1)                                   #  432   0x43c34  5      
  nop                                                           #  433   0x43c39  1      
  je .L_44140                                                   #  434   0x43c3a  6      
  movl %ecx, %ecx                                               #  435   0x43c40  2      
  movl %r8d, 0xc(%r15,%rcx,1)                                   #  436   0x43c42  5      
  nop                                                           #  437   0x43c47  1      
  nop                                                           #  438   0x43c48  1      
.L_43e40:                                                       #        0x43c49  0      
  movl %esi, %esi                                               #  439   0x43c49  2      
  movl 0x8(%r15,%rsi,1), %ecx                                   #  440   0x43c4b  5      
  cmpl %edi, %ecx                                               #  441   0x43c50  2      
  je .L_44080                                                   #  442   0x43c52  6      
  xchgw %ax, %ax                                                #  443   0x43c58  3      
  nop                                                           #  444   0x43c5b  1      
.L_43e60:                                                       #        0x43c5c  0      
  movl %esi, %esi                                               #  445   0x43c5c  2      
  movl 0xc(%r15,%rsi,1), %ecx                                   #  446   0x43c5e  5      
  cmpl %edi, %ecx                                               #  447   0x43c63  2      
  je .L_440e0                                                   #  448   0x43c65  6      
  xchgw %ax, %ax                                                #  449   0x43c6b  3      
  nop                                                           #  450   0x43c6e  1      
.L_43e80:                                                       #        0x43c6f  0      
  movl %eax, %eax                                               #  451   0x43c6f  2      
  movl (%r15,%rax,1), %ecx                                      #  452   0x43c71  4      
  jmpq .L_43800                                                 #  453   0x43c75  5      
  nop                                                           #  454   0x43c7a  1      
  nop                                                           #  455   0x43c7b  1      
.L_43ea0:                                                       #        0x43c7c  0      
  movl %esi, %esi                                               #  456   0x43c7c  2      
  movl %eax, 0x4(%r15,%rsi,1)                                   #  457   0x43c7e  5      
  jmpq .L_437c0                                                 #  458   0x43c83  5      
  nop                                                           #  459   0x43c88  1      
  nop                                                           #  460   0x43c89  1      
.L_43ec0:                                                       #        0x43c8a  0      
  movl %esi, %esi                                               #  461   0x43c8a  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  462   0x43c8c  5      
  jmpq .L_43aa0                                                 #  463   0x43c91  5      
  nop                                                           #  464   0x43c96  1      
  nop                                                           #  465   0x43c97  1      
.L_43ee0:                                                       #        0x43c98  0      
  movl %edi, %edi                                               #  466   0x43c98  2      
  movl %ecx, 0x8(%r15,%rdi,1)                                   #  467   0x43c9a  5      
  jmpq .L_43aa0                                                 #  468   0x43c9f  5      
  nop                                                           #  469   0x43ca4  1      
  nop                                                           #  470   0x43ca5  1      
.L_43f00:                                                       #        0x43ca6  0      
  movl %ecx, %ecx                                               #  471   0x43ca6  2      
  movl %eax, 0x8(%r15,%rcx,1)                                   #  472   0x43ca8  5      
  jmpq .L_437c0                                                 #  473   0x43cad  5      
  nop                                                           #  474   0x43cb2  1      
  nop                                                           #  475   0x43cb3  1      
.L_43f20:                                                       #        0x43cb4  0      
  movl %esi, %esi                                               #  476   0x43cb4  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  477   0x43cb6  5      
  jmpq .L_43ba0                                                 #  478   0x43cbb  5      
  nop                                                           #  479   0x43cc0  1      
  nop                                                           #  480   0x43cc1  1      
.L_43f40:                                                       #        0x43cc2  0      
  movl %esi, %esi                                               #  481   0x43cc2  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  482   0x43cc4  5      
  jmpq .L_43d80                                                 #  483   0x43cc9  5      
  nop                                                           #  484   0x43cce  1      
  nop                                                           #  485   0x43ccf  1      
.L_43f60:                                                       #        0x43cd0  0      
  movl %esi, %esi                                               #  486   0x43cd0  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  487   0x43cd2  5      
  jmpq .L_43d80                                                 #  488   0x43cd7  5      
  nop                                                           #  489   0x43cdc  1      
  nop                                                           #  490   0x43cdd  1      
.L_43f80:                                                       #        0x43cde  0      
  movl %ecx, %ecx                                               #  491   0x43cde  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  492   0x43ce0  5      
  testq %r9, %r9                                                #  493   0x43ce5  3      
  je .L_43fa0                                                   #  494   0x43ce8  6      
  movl %r9d, %r9d                                               #  495   0x43cee  3      
  cmpl $0x1, (%r15,%r9,1)                                       #  496   0x43cf1  5      
  jne .L_43b00                                                  #  497   0x43cf6  6      
  nop                                                           #  498   0x43cfc  1      
.L_43fa0:                                                       #        0x43cfd  0      
  movl %edi, %edi                                               #  499   0x43cfd  2      
  movl 0xc(%r15,%rdi,1), %r9d                                   #  500   0x43cff  5      
  movl %edi, %edi                                               #  501   0x43d04  2      
  movl $0x1, (%r15,%rdi,1)                                      #  502   0x43d06  8      
  movl %ecx, %ecx                                               #  503   0x43d0e  2      
  movl $0x0, (%r15,%rcx,1)                                      #  504   0x43d10  8      
  nop                                                           #  505   0x43d18  1      
  movl %ecx, %ecx                                               #  506   0x43d19  2      
  movl %r9d, 0x8(%r15,%rcx,1)                                   #  507   0x43d1b  5      
  movl %r9d, %r9d                                               #  508   0x43d20  3      
  testq %r9, %r9                                                #  509   0x43d23  3      
  je .L_43fe0                                                   #  510   0x43d26  6      
  movl %r9d, %r9d                                               #  511   0x43d2c  3      
  movl %ecx, 0x4(%r15,%r9,1)                                    #  512   0x43d2f  5      
  nop                                                           #  513   0x43d34  1      
.L_43fe0:                                                       #        0x43d35  0      
  movl %ecx, %ecx                                               #  514   0x43d35  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  515   0x43d37  5      
  movl %edi, %edi                                               #  516   0x43d3c  2      
  movl %r9d, 0x4(%r15,%rdi,1)                                   #  517   0x43d3e  5      
  movl %esi, %esi                                               #  518   0x43d43  2      
  cmpl %ecx, 0x4(%r15,%rsi,1)                                   #  519   0x43d45  5      
  je .L_44200                                                   #  520   0x43d4a  6      
  nop                                                           #  521   0x43d50  1      
  movl %ecx, %ecx                                               #  522   0x43d51  2      
  movl 0x4(%r15,%rcx,1), %r9d                                   #  523   0x43d53  5      
  movl %r9d, %r9d                                               #  524   0x43d58  3      
  cmpl %ecx, 0xc(%r15,%r9,1)                                    #  525   0x43d5b  5      
  je .L_44220                                                   #  526   0x43d60  6      
  movl %r9d, %r9d                                               #  527   0x43d66  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  528   0x43d69  5      
  nop                                                           #  529   0x43d6e  1      
.L_44020:                                                       #        0x43d6f  0      
  movl %edi, %edi                                               #  530   0x43d6f  2      
  movl %ecx, 0xc(%r15,%rdi,1)                                   #  531   0x43d71  5      
  movl %ecx, %ecx                                               #  532   0x43d76  2      
  movl %edi, 0x4(%r15,%rcx,1)                                   #  533   0x43d78  5      
  movl %edx, %edx                                               #  534   0x43d7d  2      
  movl 0xc(%r15,%rdx,1), %ecx                                   #  535   0x43d7f  5      
  movl %ecx, %ecx                                               #  536   0x43d84  2      
  movl 0xc(%r15,%rcx,1), %r9d                                   #  537   0x43d86  5      
  nop                                                           #  538   0x43d8b  1      
  jmpq .L_43b00                                                 #  539   0x43d8c  5      
  nop                                                           #  540   0x43d91  1      
  nop                                                           #  541   0x43d92  1      
.L_44060:                                                       #        0x43d93  0      
  movl %esi, %esi                                               #  542   0x43d93  2      
  movl %r8d, 0x4(%r15,%rsi,1)                                   #  543   0x43d95  5      
  jmpq .L_43e40                                                 #  544   0x43d9a  5      
  nop                                                           #  545   0x43d9f  1      
  nop                                                           #  546   0x43da0  1      
.L_44080:                                                       #        0x43da1  0      
  movl %ecx, %ecx                                               #  547   0x43da1  2      
  movl 0xc(%r15,%rcx,1), %r10d                                  #  548   0x43da3  5      
  movq %r8, %r9                                                 #  549   0x43da8  3      
  testl %r10d, %r10d                                            #  550   0x43dab  3      
  jne .L_440c0                                                  #  551   0x43dae  6      
  jmpq .L_441c0                                                 #  552   0x43db4  5      
  nop                                                           #  553   0x43db9  1      
.L_440a0:                                                       #        0x43dba  0      
  movq %rcx, %r9                                                #  554   0x43dba  3      
  nop                                                           #  555   0x43dbd  1      
  nop                                                           #  556   0x43dbe  1      
.L_440c0:                                                       #        0x43dbf  0      
  movl %r9d, %r9d                                               #  557   0x43dbf  3      
  movl 0x8(%r15,%r9,1), %ecx                                    #  558   0x43dc2  5      
  testq %rcx, %rcx                                              #  559   0x43dc7  3      
  jne .L_440a0                                                  #  560   0x43dca  6      
  movl %esi, %esi                                               #  561   0x43dd0  2      
  movl %r9d, 0x8(%r15,%rsi,1)                                   #  562   0x43dd2  5      
  jmpq .L_43e60                                                 #  563   0x43dd7  5      
  nop                                                           #  564   0x43ddc  1      
.L_440e0:                                                       #        0x43ddd  0      
  movl %ecx, %ecx                                               #  565   0x43ddd  2      
  movl 0x8(%r15,%rcx,1), %r9d                                   #  566   0x43ddf  5      
  movq %r8, %rdi                                                #  567   0x43de4  3      
  testl %r9d, %r9d                                              #  568   0x43de7  3      
  jne .L_44120                                                  #  569   0x43dea  6      
  jmpq .L_441e0                                                 #  570   0x43df0  5      
  nop                                                           #  571   0x43df5  1      
.L_44100:                                                       #        0x43df6  0      
  movq %rcx, %rdi                                               #  572   0x43df6  3      
  nop                                                           #  573   0x43df9  1      
  nop                                                           #  574   0x43dfa  1      
.L_44120:                                                       #        0x43dfb  0      
  movl %edi, %edi                                               #  575   0x43dfb  2      
  movl 0xc(%r15,%rdi,1), %ecx                                   #  576   0x43dfd  5      
  testq %rcx, %rcx                                              #  577   0x43e02  3      
  jne .L_44100                                                  #  578   0x43e05  6      
  movl %esi, %esi                                               #  579   0x43e0b  2      
  movl %edi, 0xc(%r15,%rsi,1)                                   #  580   0x43e0d  5      
  jmpq .L_43e80                                                 #  581   0x43e12  5      
  nop                                                           #  582   0x43e17  1      
.L_44140:                                                       #        0x43e18  0      
  movl %ecx, %ecx                                               #  583   0x43e18  2      
  movl %r8d, 0x8(%r15,%rcx,1)                                   #  584   0x43e1a  5      
  jmpq .L_43e40                                                 #  585   0x43e1f  5      
  nop                                                           #  586   0x43e24  1      
  nop                                                           #  587   0x43e25  1      
.L_44160:                                                       #        0x43e26  0      
  movl %esi, %esi                                               #  588   0x43e26  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  589   0x43e28  5      
  jmpq .L_43cc0                                                 #  590   0x43e2d  5      
  nop                                                           #  591   0x43e32  1      
  nop                                                           #  592   0x43e33  1      
.L_44180:                                                       #        0x43e34  0      
  movl %r9d, %r9d                                               #  593   0x43e34  3      
  movl %edi, 0x8(%r15,%r9,1)                                    #  594   0x43e37  5      
  jmpq .L_43cc0                                                 #  595   0x43e3c  5      
  nop                                                           #  596   0x43e41  1      
  nop                                                           #  597   0x43e42  1      
.L_441a0:                                                       #        0x43e43  0      
  movl %esi, %esi                                               #  598   0x43e43  2      
  movl %ecx, 0x4(%r15,%rsi,1)                                   #  599   0x43e45  5      
  jmpq .L_43ba0                                                 #  600   0x43e4a  5      
  nop                                                           #  601   0x43e4f  1      
  nop                                                           #  602   0x43e50  1      
.L_441c0:                                                       #        0x43e51  0      
  movl %ecx, %ecx                                               #  603   0x43e51  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  604   0x43e53  5      
  movl %esi, %esi                                               #  605   0x43e58  2      
  movl %ecx, 0x8(%r15,%rsi,1)                                   #  606   0x43e5a  5      
  jmpq .L_43e60                                                 #  607   0x43e5f  5      
  nop                                                           #  608   0x43e64  1      
.L_441e0:                                                       #        0x43e65  0      
  movl %ecx, %ecx                                               #  609   0x43e65  2      
  movl 0x4(%r15,%rcx,1), %ecx                                   #  610   0x43e67  5      
  movl %esi, %esi                                               #  611   0x43e6c  2      
  movl %ecx, 0xc(%r15,%rsi,1)                                   #  612   0x43e6e  5      
  movl %eax, %eax                                               #  613   0x43e73  2      
  movl (%r15,%rax,1), %ecx                                      #  614   0x43e75  4      
  jmpq .L_43800                                                 #  615   0x43e79  5      
  nop                                                           #  616   0x43e7e  1      
.L_44200:                                                       #        0x43e7f  0      
  movl %esi, %esi                                               #  617   0x43e7f  2      
  movl %edi, 0x4(%r15,%rsi,1)                                   #  618   0x43e81  5      
  jmpq .L_44020                                                 #  619   0x43e86  5      
  nop                                                           #  620   0x43e8b  1      
  nop                                                           #  621   0x43e8c  1      
.L_44220:                                                       #        0x43e8d  0      
  movl %r9d, %r9d                                               #  622   0x43e8d  3      
  movl %edi, 0xc(%r15,%r9,1)                                    #  623   0x43e90  5      
  jmpq .L_44020                                                 #  624   0x43e95  5      
  nop                                                           #  625   0x43e9a  1      
  nop                                                           #  626   0x43e9b  1      
  nop                                                           #  627   0x43e9c  1      
  nop                                                           #  628   0x43e9d  1      
  nop                                                           #  629   0x43e9e  1      
  nop                                                           #  630   0x43e9f  1      
  nop                                                           #  631   0x43ea0  1      
  nop                                                           #  632   0x43ea1  1      
  nop                                                           #  633   0x43ea2  1      
  nop                                                           #  634   0x43ea3  1      
  nop                                                           #  635   0x43ea4  1      
  nop                                                           #  636   0x43ea5  1      
  nop                                                           #  637   0x43ea6  1      
  nop                                                           #  638   0x43ea7  1      
  nop                                                           #  639   0x43ea8  1      
  nop                                                           #  640   0x43ea9  1      
  nop                                                           #  641   0x43eaa  1      
  nop                                                           #  642   0x43eab  1      
  nop                                                           #  643   0x43eac  1      
                                                                                         
.size _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, .-_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_

