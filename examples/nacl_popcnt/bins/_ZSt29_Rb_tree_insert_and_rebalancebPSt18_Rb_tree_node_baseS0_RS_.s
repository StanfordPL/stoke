  .text
  .globl _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
  .type _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, @function

#! file-offset 0x43080
#! rip-offset  0x43080
#! capacity    1408 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_:  #        0x43080  0      
  movl %esi, %esi                                                    #  1     0x43080  2      
  movl %edx, %edx                                                    #  2     0x43082  2      
  testb %dil, %dil                                                   #  3     0x43084  3      
  movl %ecx, %ecx                                                    #  4     0x43087  2      
  movl %esi, %esi                                                    #  5     0x43089  2      
  movl %edx, 0x4(%r15,%rsi,1)                                        #  6     0x4308b  5      
  movl %esi, %esi                                                    #  7     0x43090  2      
  movl $0x0, 0x8(%r15,%rsi,1)                                        #  8     0x43092  9      
  nop                                                                #  9     0x4309b  1      
  movl %esi, %esi                                                    #  10    0x4309c  2      
  movl $0x0, 0xc(%r15,%rsi,1)                                        #  11    0x4309e  9      
  movl %esi, %esi                                                    #  12    0x430a7  2      
  movl $0x0, (%r15,%rsi,1)                                           #  13    0x430a9  8      
  je .L_43140                                                        #  14    0x430b1  6      
  cmpl %ecx, %edx                                                    #  15    0x430b7  2      
  nop                                                                #  16    0x430b9  1      
  movl %edx, %edx                                                    #  17    0x430ba  2      
  movl %esi, 0x8(%r15,%rdx,1)                                        #  18    0x430bc  5      
  je .L_43480                                                        #  19    0x430c1  6      
  movl %ecx, %ecx                                                    #  20    0x430c7  2      
  cmpl %edx, 0x8(%r15,%rcx,1)                                        #  21    0x430c9  5      
  je .L_434a0                                                        #  22    0x430ce  6      
  nop                                                                #  23    0x430d4  1      
.L_430e0:                                                            #        0x430d5  0      
  movl %ecx, %ecx                                                    #  24    0x430d5  2      
  movl 0x4(%r15,%rcx,1), %r8d                                        #  25    0x430d7  5      
  nop                                                                #  26    0x430dc  1      
  nop                                                                #  27    0x430dd  1      
.L_43100:                                                            #        0x430de  0      
  cmpl %esi, %r8d                                                    #  28    0x430de  3      
  je .L_43120                                                        #  29    0x430e1  6      
  movl %esi, %esi                                                    #  30    0x430e7  2      
  movl 0x4(%r15,%rsi,1), %edx                                        #  31    0x430e9  5      
  movl %edx, %edx                                                    #  32    0x430ee  2      
  movl (%r15,%rdx,1), %edi                                           #  33    0x430f0  4      
  testl %edi, %edi                                                   #  34    0x430f4  2      
  je .L_43160                                                        #  35    0x430f6  6      
  nop                                                                #  36    0x430fc  1      
.L_43120:                                                            #        0x430fd  0      
  movl %r8d, %r8d                                                    #  37    0x430fd  3      
  movl $0x1, (%r15,%r8,1)                                            #  38    0x43100  8      
  popq %r11                                                          #  39    0x43108  3      
  andl $0xffffffe0, %r11d                                            #  40    0x4310b  7      
  addq %r15, %r11                                                    #  41    0x43112  3      
  jmpq %r11                                                          #  42    0x43115  3      
  nop                                                                #  43    0x43118  1      
.L_43140:                                                            #        0x43119  0      
  movl %edx, %edx                                                    #  44    0x43119  2      
  movl %esi, 0xc(%r15,%rdx,1)                                        #  45    0x4311b  5      
  movl %ecx, %ecx                                                    #  46    0x43120  2      
  cmpl %edx, 0xc(%r15,%rcx,1)                                        #  47    0x43122  5      
  jne .L_430e0                                                       #  48    0x43127  6      
  movl %ecx, %ecx                                                    #  49    0x4312d  2      
  movl %esi, 0xc(%r15,%rcx,1)                                        #  50    0x4312f  5      
  jmpq .L_430e0                                                      #  51    0x43134  5      
  nop                                                                #  52    0x43139  1      
.L_43160:                                                            #        0x4313a  0      
  movl %edx, %edx                                                    #  53    0x4313a  2      
  movl 0x4(%r15,%rdx,1), %eax                                        #  54    0x4313c  5      
  movl %eax, %eax                                                    #  55    0x43141  2      
  movl 0x8(%r15,%rax,1), %edi                                        #  56    0x43143  5      
  cmpl %edi, %edx                                                    #  57    0x43148  2      
  je .L_432a0                                                        #  58    0x4314a  6      
  testq %rdi, %rdi                                                   #  59    0x43150  3      
  je .L_431e0                                                        #  60    0x43153  6      
  nop                                                                #  61    0x43159  1      
  movl %edi, %edi                                                    #  62    0x4315a  2      
  movl (%r15,%rdi,1), %r9d                                           #  63    0x4315c  4      
  testl %r9d, %r9d                                                   #  64    0x43160  3      
  jne .L_431e0                                                       #  65    0x43163  6      
  movl %edx, %edx                                                    #  66    0x43169  2      
  movl $0x1, (%r15,%rdx,1)                                           #  67    0x4316b  8      
  movl %edi, %edi                                                    #  68    0x43173  2      
  movl $0x1, (%r15,%rdi,1)                                           #  69    0x43175  8      
  nop                                                                #  70    0x4317d  1      
  movq %rax, %rdx                                                    #  71    0x4317e  3      
  movl %eax, %eax                                                    #  72    0x43181  2      
  movl $0x0, (%r15,%rax,1)                                           #  73    0x43183  8      
  nop                                                                #  74    0x4318b  1      
  nop                                                                #  75    0x4318c  1      
.L_431c0:                                                            #        0x4318d  0      
  movq %rdx, %rsi                                                    #  76    0x4318d  3      
  jmpq .L_43100                                                      #  77    0x43190  5      
  nop                                                                #  78    0x43195  1      
  nop                                                                #  79    0x43196  1      
.L_431e0:                                                            #        0x43197  0      
  movl %edx, %edx                                                    #  80    0x43197  2      
  movl 0x8(%r15,%rdx,1), %edi                                        #  81    0x43199  5      
  cmpl %esi, %edi                                                    #  82    0x4319e  2      
  je .L_433c0                                                        #  83    0x431a0  6      
  movq %rdx, %rdi                                                    #  84    0x431a6  3      
  movq %rsi, %rdx                                                    #  85    0x431a9  3      
  nop                                                                #  86    0x431ac  1      
.L_43200:                                                            #        0x431ad  0      
  movl %eax, %eax                                                    #  87    0x431ad  2      
  movl 0xc(%r15,%rax,1), %esi                                        #  88    0x431af  5      
  movl %edi, %edi                                                    #  89    0x431b4  2      
  movl $0x1, (%r15,%rdi,1)                                           #  90    0x431b6  8      
  movl %eax, %eax                                                    #  91    0x431be  2      
  movl $0x0, (%r15,%rax,1)                                           #  92    0x431c0  8      
  nop                                                                #  93    0x431c8  1      
  movl %esi, %esi                                                    #  94    0x431c9  2      
  movl 0x8(%r15,%rsi,1), %edi                                        #  95    0x431cb  5      
  movl %eax, %eax                                                    #  96    0x431d0  2      
  movl %edi, 0xc(%r15,%rax,1)                                        #  97    0x431d2  5      
  movl %edi, %edi                                                    #  98    0x431d7  2      
  testq %rdi, %rdi                                                   #  99    0x431d9  3      
  je .L_43240                                                        #  100   0x431dc  6      
  movl %edi, %edi                                                    #  101   0x431e2  2      
  movl %eax, 0x4(%r15,%rdi,1)                                        #  102   0x431e4  5      
  nop                                                                #  103   0x431e9  1      
.L_43240:                                                            #        0x431ea  0      
  movl %eax, %eax                                                    #  104   0x431ea  2      
  movl 0x4(%r15,%rax,1), %edi                                        #  105   0x431ec  5      
  movl %esi, %esi                                                    #  106   0x431f1  2      
  movl %edi, 0x4(%r15,%rsi,1)                                        #  107   0x431f3  5      
  movl %ecx, %ecx                                                    #  108   0x431f8  2      
  cmpl %eax, 0x4(%r15,%rcx,1)                                        #  109   0x431fa  5      
  je .L_43440                                                        #  110   0x431ff  6      
  nop                                                                #  111   0x43205  1      
  movl %eax, %eax                                                    #  112   0x43206  2      
  movl 0x4(%r15,%rax,1), %edi                                        #  113   0x43208  5      
  movl %edi, %edi                                                    #  114   0x4320d  2      
  cmpl %eax, 0x8(%r15,%rdi,1)                                        #  115   0x4320f  5      
  je .L_43460                                                        #  116   0x43214  6      
  movl %edi, %edi                                                    #  117   0x4321a  2      
  movl %esi, 0xc(%r15,%rdi,1)                                        #  118   0x4321c  5      
  nop                                                                #  119   0x43221  1      
.L_43280:                                                            #        0x43222  0      
  movl %eax, %eax                                                    #  120   0x43222  2      
  movl %esi, 0x4(%r15,%rax,1)                                        #  121   0x43224  5      
  movl %esi, %esi                                                    #  122   0x43229  2      
  movl %eax, 0x8(%r15,%rsi,1)                                        #  123   0x4322b  5      
  movl %ecx, %ecx                                                    #  124   0x43230  2      
  movl 0x4(%r15,%rcx,1), %r8d                                        #  125   0x43232  5      
  jmpq .L_431c0                                                      #  126   0x43237  5      
  nop                                                                #  127   0x4323c  1      
.L_432a0:                                                            #        0x4323d  0      
  movl %eax, %eax                                                    #  128   0x4323d  2      
  movl 0xc(%r15,%rax,1), %r9d                                        #  129   0x4323f  5      
  testq %r9, %r9                                                     #  130   0x43244  3      
  je .L_43300                                                        #  131   0x43247  6      
  movl %r9d, %r9d                                                    #  132   0x4324d  3      
  movl (%r15,%r9,1), %r10d                                           #  133   0x43250  4      
  testl %r10d, %r10d                                                 #  134   0x43254  3      
  jne .L_43300                                                       #  135   0x43257  6      
  nop                                                                #  136   0x4325d  1      
  movl %edx, %edx                                                    #  137   0x4325e  2      
  movl $0x1, (%r15,%rdx,1)                                           #  138   0x43260  8      
  movl %r9d, %r9d                                                    #  139   0x43268  3      
  movl $0x1, (%r15,%r9,1)                                            #  140   0x4326b  8      
  movq %rax, %rdx                                                    #  141   0x43273  3      
  nop                                                                #  142   0x43276  1      
  movl %eax, %eax                                                    #  143   0x43277  2      
  movl $0x0, (%r15,%rax,1)                                           #  144   0x43279  8      
  jmpq .L_431c0                                                      #  145   0x43281  5      
  xchgw %ax, %ax                                                     #  146   0x43286  3      
  nop                                                                #  147   0x43289  1      
.L_43300:                                                            #        0x4328a  0      
  movl %edx, %edx                                                    #  148   0x4328a  2      
  movl 0xc(%r15,%rdx,1), %r8d                                        #  149   0x4328c  5      
  cmpl %esi, %r8d                                                    #  150   0x43291  3      
  je .L_434c0                                                        #  151   0x43294  6      
  movq %rdx, %r8                                                     #  152   0x4329a  3      
  movq %rsi, %rdx                                                    #  153   0x4329d  3      
  nop                                                                #  154   0x432a0  1      
.L_43320:                                                            #        0x432a1  0      
  movl %edi, %edi                                                    #  155   0x432a1  2      
  movl 0xc(%r15,%rdi,1), %esi                                        #  156   0x432a3  5      
  movl %r8d, %r8d                                                    #  157   0x432a8  3      
  movl $0x1, (%r15,%r8,1)                                            #  158   0x432ab  8      
  movl %eax, %eax                                                    #  159   0x432b3  2      
  movl $0x0, (%r15,%rax,1)                                           #  160   0x432b5  8      
  nop                                                                #  161   0x432bd  1      
  movl %eax, %eax                                                    #  162   0x432be  2      
  movl %esi, 0x8(%r15,%rax,1)                                        #  163   0x432c0  5      
  movl %esi, %esi                                                    #  164   0x432c5  2      
  testq %rsi, %rsi                                                   #  165   0x432c7  3      
  je .L_43360                                                        #  166   0x432ca  6      
  movl %esi, %esi                                                    #  167   0x432d0  2      
  movl %eax, 0x4(%r15,%rsi,1)                                        #  168   0x432d2  5      
  nop                                                                #  169   0x432d7  1      
.L_43360:                                                            #        0x432d8  0      
  movl %eax, %eax                                                    #  170   0x432d8  2      
  movl 0x4(%r15,%rax,1), %esi                                        #  171   0x432da  5      
  movl %edi, %edi                                                    #  172   0x432df  2      
  movl %esi, 0x4(%r15,%rdi,1)                                        #  173   0x432e1  5      
  movl %ecx, %ecx                                                    #  174   0x432e6  2      
  cmpl %eax, 0x4(%r15,%rcx,1)                                        #  175   0x432e8  5      
  je .L_43540                                                        #  176   0x432ed  6      
  nop                                                                #  177   0x432f3  1      
  movl %eax, %eax                                                    #  178   0x432f4  2      
  movl 0x4(%r15,%rax,1), %esi                                        #  179   0x432f6  5      
  movl %esi, %esi                                                    #  180   0x432fb  2      
  cmpl %eax, 0xc(%r15,%rsi,1)                                        #  181   0x432fd  5      
  je .L_43560                                                        #  182   0x43302  6      
  movl %esi, %esi                                                    #  183   0x43308  2      
  movl %edi, 0x8(%r15,%rsi,1)                                        #  184   0x4330a  5      
  nop                                                                #  185   0x4330f  1      
.L_433a0:                                                            #        0x43310  0      
  movl %eax, %eax                                                    #  186   0x43310  2      
  movl %edi, 0x4(%r15,%rax,1)                                        #  187   0x43312  5      
  movl %edi, %edi                                                    #  188   0x43317  2      
  movl %eax, 0xc(%r15,%rdi,1)                                        #  189   0x43319  5      
  movl %ecx, %ecx                                                    #  190   0x4331e  2      
  movl 0x4(%r15,%rcx,1), %r8d                                        #  191   0x43320  5      
  jmpq .L_431c0                                                      #  192   0x43325  5      
  nop                                                                #  193   0x4332a  1      
.L_433c0:                                                            #        0x4332b  0      
  movl %edi, %edi                                                    #  194   0x4332b  2      
  movl 0xc(%r15,%rdi,1), %esi                                        #  195   0x4332d  5      
  movl %edx, %edx                                                    #  196   0x43332  2      
  movl %esi, 0x8(%r15,%rdx,1)                                        #  197   0x43334  5      
  movl %esi, %esi                                                    #  198   0x43339  2      
  testq %rsi, %rsi                                                   #  199   0x4333b  3      
  je .L_433e0                                                        #  200   0x4333e  6      
  movl %esi, %esi                                                    #  201   0x43344  2      
  movl %edx, 0x4(%r15,%rsi,1)                                        #  202   0x43346  5      
  nop                                                                #  203   0x4334b  1      
.L_433e0:                                                            #        0x4334c  0      
  movl %edx, %edx                                                    #  204   0x4334c  2      
  movl 0x4(%r15,%rdx,1), %esi                                        #  205   0x4334e  5      
  movl %edi, %edi                                                    #  206   0x43353  2      
  movl %esi, 0x4(%r15,%rdi,1)                                        #  207   0x43355  5      
  movl %ecx, %ecx                                                    #  208   0x4335a  2      
  cmpl %edx, 0x4(%r15,%rcx,1)                                        #  209   0x4335c  5      
  je .L_43580                                                        #  210   0x43361  6      
  nop                                                                #  211   0x43367  1      
  movl %edx, %edx                                                    #  212   0x43368  2      
  movl 0x4(%r15,%rdx,1), %esi                                        #  213   0x4336a  5      
  movl %esi, %esi                                                    #  214   0x4336f  2      
  cmpl %edx, 0xc(%r15,%rsi,1)                                        #  215   0x43371  5      
  je .L_435a0                                                        #  216   0x43376  6      
  movl %esi, %esi                                                    #  217   0x4337c  2      
  movl %edi, 0x8(%r15,%rsi,1)                                        #  218   0x4337e  5      
  nop                                                                #  219   0x43383  1      
.L_43420:                                                            #        0x43384  0      
  movl %edi, %edi                                                    #  220   0x43384  2      
  movl %edx, 0xc(%r15,%rdi,1)                                        #  221   0x43386  5      
  movl %edx, %edx                                                    #  222   0x4338b  2      
  movl %edi, 0x4(%r15,%rdx,1)                                        #  223   0x4338d  5      
  jmpq .L_43200                                                      #  224   0x43392  5      
  nop                                                                #  225   0x43397  1      
.L_43440:                                                            #        0x43398  0      
  movl %ecx, %ecx                                                    #  226   0x43398  2      
  movl %esi, 0x4(%r15,%rcx,1)                                        #  227   0x4339a  5      
  jmpq .L_43280                                                      #  228   0x4339f  5      
  nop                                                                #  229   0x433a4  1      
  nop                                                                #  230   0x433a5  1      
.L_43460:                                                            #        0x433a6  0      
  movl %edi, %edi                                                    #  231   0x433a6  2      
  movl %esi, 0x8(%r15,%rdi,1)                                        #  232   0x433a8  5      
  jmpq .L_43280                                                      #  233   0x433ad  5      
  nop                                                                #  234   0x433b2  1      
  nop                                                                #  235   0x433b3  1      
.L_43480:                                                            #        0x433b4  0      
  movl %edx, %edx                                                    #  236   0x433b4  2      
  movl %esi, 0x4(%r15,%rdx,1)                                        #  237   0x433b6  5      
  movl %edx, %edx                                                    #  238   0x433bb  2      
  movl %esi, 0xc(%r15,%rdx,1)                                        #  239   0x433bd  5      
  movl %ecx, %ecx                                                    #  240   0x433c2  2      
  movl 0x4(%r15,%rcx,1), %r8d                                        #  241   0x433c4  5      
  jmpq .L_43100                                                      #  242   0x433c9  5      
  nop                                                                #  243   0x433ce  1      
.L_434a0:                                                            #        0x433cf  0      
  movl %ecx, %ecx                                                    #  244   0x433cf  2      
  movl %esi, 0x8(%r15,%rcx,1)                                        #  245   0x433d1  5      
  movl %ecx, %ecx                                                    #  246   0x433d6  2      
  movl 0x4(%r15,%rcx,1), %r8d                                        #  247   0x433d8  5      
  jmpq .L_43100                                                      #  248   0x433dd  5      
  nop                                                                #  249   0x433e2  1      
.L_434c0:                                                            #        0x433e3  0      
  movl %r8d, %r8d                                                    #  250   0x433e3  3      
  movl 0x8(%r15,%r8,1), %esi                                         #  251   0x433e6  5      
  movl %edx, %edx                                                    #  252   0x433eb  2      
  movl %esi, 0xc(%r15,%rdx,1)                                        #  253   0x433ed  5      
  movl %esi, %esi                                                    #  254   0x433f2  2      
  testq %rsi, %rsi                                                   #  255   0x433f4  3      
  je .L_434e0                                                        #  256   0x433f7  6      
  movl %esi, %esi                                                    #  257   0x433fd  2      
  movl %edx, 0x4(%r15,%rsi,1)                                        #  258   0x433ff  5      
  nop                                                                #  259   0x43404  1      
.L_434e0:                                                            #        0x43405  0      
  movl %edx, %edx                                                    #  260   0x43405  2      
  movl 0x4(%r15,%rdx,1), %esi                                        #  261   0x43407  5      
  movl %r8d, %r8d                                                    #  262   0x4340c  3      
  movl %esi, 0x4(%r15,%r8,1)                                         #  263   0x4340f  5      
  movl %ecx, %ecx                                                    #  264   0x43414  2      
  cmpl %edx, 0x4(%r15,%rcx,1)                                        #  265   0x43416  5      
  je .L_435c0                                                        #  266   0x4341b  6      
  nop                                                                #  267   0x43421  1      
  movl %edx, %edx                                                    #  268   0x43422  2      
  movl 0x4(%r15,%rdx,1), %esi                                        #  269   0x43424  5      
  movl %esi, %esi                                                    #  270   0x43429  2      
  cmpl %edx, 0x8(%r15,%rsi,1)                                        #  271   0x4342b  5      
  je .L_435e0                                                        #  272   0x43430  6      
  movl %esi, %esi                                                    #  273   0x43436  2      
  movl %r8d, 0xc(%r15,%rsi,1)                                        #  274   0x43438  5      
  nop                                                                #  275   0x4343d  1      
.L_43520:                                                            #        0x4343e  0      
  movl %r8d, %r8d                                                    #  276   0x4343e  3      
  movl %edx, 0x8(%r15,%r8,1)                                         #  277   0x43441  5      
  movl %edx, %edx                                                    #  278   0x43446  2      
  movl %r8d, 0x4(%r15,%rdx,1)                                        #  279   0x43448  5      
  movl %eax, %eax                                                    #  280   0x4344d  2      
  movl 0x8(%r15,%rax,1), %edi                                        #  281   0x4344f  5      
  jmpq .L_43320                                                      #  282   0x43454  5      
  nop                                                                #  283   0x43459  1      
.L_43540:                                                            #        0x4345a  0      
  movl %ecx, %ecx                                                    #  284   0x4345a  2      
  movl %edi, 0x4(%r15,%rcx,1)                                        #  285   0x4345c  5      
  jmpq .L_433a0                                                      #  286   0x43461  5      
  nop                                                                #  287   0x43466  1      
  nop                                                                #  288   0x43467  1      
.L_43560:                                                            #        0x43468  0      
  movl %esi, %esi                                                    #  289   0x43468  2      
  movl %edi, 0xc(%r15,%rsi,1)                                        #  290   0x4346a  5      
  jmpq .L_433a0                                                      #  291   0x4346f  5      
  nop                                                                #  292   0x43474  1      
  nop                                                                #  293   0x43475  1      
.L_43580:                                                            #        0x43476  0      
  movl %ecx, %ecx                                                    #  294   0x43476  2      
  movl %edi, 0x4(%r15,%rcx,1)                                        #  295   0x43478  5      
  jmpq .L_43420                                                      #  296   0x4347d  5      
  nop                                                                #  297   0x43482  1      
  nop                                                                #  298   0x43483  1      
.L_435a0:                                                            #        0x43484  0      
  movl %esi, %esi                                                    #  299   0x43484  2      
  movl %edi, 0xc(%r15,%rsi,1)                                        #  300   0x43486  5      
  jmpq .L_43420                                                      #  301   0x4348b  5      
  nop                                                                #  302   0x43490  1      
  nop                                                                #  303   0x43491  1      
.L_435c0:                                                            #        0x43492  0      
  movl %ecx, %ecx                                                    #  304   0x43492  2      
  movl %r8d, 0x4(%r15,%rcx,1)                                        #  305   0x43494  5      
  jmpq .L_43520                                                      #  306   0x43499  5      
  nop                                                                #  307   0x4349e  1      
  nop                                                                #  308   0x4349f  1      
.L_435e0:                                                            #        0x434a0  0      
  movl %esi, %esi                                                    #  309   0x434a0  2      
  movl %r8d, 0x8(%r15,%rsi,1)                                        #  310   0x434a2  5      
  jmpq .L_43520                                                      #  311   0x434a7  5      
  nop                                                                #  312   0x434ac  1      
  nop                                                                #  313   0x434ad  1      
  nop                                                                #  314   0x434ae  1      
  nop                                                                #  315   0x434af  1      
  nop                                                                #  316   0x434b0  1      
  nop                                                                #  317   0x434b1  1      
  nop                                                                #  318   0x434b2  1      
  nop                                                                #  319   0x434b3  1      
  nop                                                                #  320   0x434b4  1      
  nop                                                                #  321   0x434b5  1      
  nop                                                                #  322   0x434b6  1      
  nop                                                                #  323   0x434b7  1      
  nop                                                                #  324   0x434b8  1      
  nop                                                                #  325   0x434b9  1      
  nop                                                                #  326   0x434ba  1      
  nop                                                                #  327   0x434bb  1      
  nop                                                                #  328   0x434bc  1      
  nop                                                                #  329   0x434bd  1      
  nop                                                                #  330   0x434be  1      
  nop                                                                #  331   0x434bf  1      
                                                                                              
.size _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, .-_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_

