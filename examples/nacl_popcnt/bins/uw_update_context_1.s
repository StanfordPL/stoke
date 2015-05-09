  .text
  .globl uw_update_context_1
  .type uw_update_context_1, @function

#! file-offset 0x5b800
#! rip-offset  0x5b800
#! capacity    1792 bytes

# Text                              #  Line  RIP      Bytes  
.uw_update_context_1:               #        0x5b800  0      
  pushq %r14                        #  1     0x5b800  3      
  movl %edi, %r8d                   #  2     0x5b803  3      
  movl %esi, %esi                   #  3     0x5b806  2      
  movl $0x12, %ecx                  #  4     0x5b808  5      
  pushq %r13                        #  5     0x5b80d  3      
  pushq %r12                        #  6     0x5b810  3      
  pushq %rbx                        #  7     0x5b813  2      
  subl $0xd8, %esp                  #  8     0x5b815  3      
  addq %r15, %rsp                   #  9     0x5b818  3      
  leal 0x30(%rsp), %eax             #  10    0x5b81b  4      
  xchgw %ax, %ax                    #  11    0x5b81f  3      
  movq %rsi, 0x28(%rsp)             #  12    0x5b822  5      
  movq %r8, %rsi                    #  13    0x5b827  3      
  movq %rax, 0x18(%rsp)             #  14    0x5b82a  5      
  movq %rax, %rdi                   #  15    0x5b82f  3      
  movl %esi, %esi                   #  16    0x5b832  2      
  leaq (%r15,%rsi,1), %rsi          #  17    0x5b834  4      
  movl %edi, %edi                   #  18    0x5b838  2      
  leaq (%r15,%rdi,1), %rdi          #  19    0x5b83a  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  20    0x5b83e  4      
  nop                               #  21    0x5b842  1      
  movl %esi, %esi                   #  22    0x5b843  2      
  movl %edi, %edi                   #  23    0x5b845  2      
  testb $0x40, 0x97(%rsp)           #  24    0x5b847  8      
  je .L_5b860                       #  25    0x5b84f  6      
  cmpb $0x0, 0xaf(%rsp)             #  26    0x5b855  8      
  jne .L_5b920                      #  27    0x5b85d  6      
  nop                               #  28    0x5b863  1      
.L_5b860:                           #        0x5b864  0      
  movl 0x4c(%rsp), %eax             #  29    0x5b864  4      
  nop                               #  30    0x5b868  1      
  nop                               #  31    0x5b869  1      
.L_5b880:                           #        0x5b86a  0      
  testq %rax, %rax                  #  32    0x5b86a  3      
  je .L_5bea0                       #  33    0x5b86d  6      
  nop                               #  34    0x5b873  1      
  nop                               #  35    0x5b874  1      
.L_5b8a0:                           #        0x5b875  0      
  movl %r8d, %r8d                   #  36    0x5b875  3      
  testb $0x40, 0x67(%r15,%r8,1)     #  37    0x5b878  6      
  je .L_5b8c0                       #  38    0x5b87e  6      
  movl %r8d, %r8d                   #  39    0x5b884  3      
  movb $0x0, 0x7f(%r15,%r8,1)       #  40    0x5b887  6      
  nop                               #  41    0x5b88d  1      
.L_5b8c0:                           #        0x5b88e  0      
  movq 0x28(%rsp), %rdx             #  42    0x5b88e  5      
  movl %r8d, %r8d                   #  43    0x5b893  3      
  movl $0x0, 0x1c(%r15,%r8,1)       #  44    0x5b896  9      
  movl %edx, %edx                   #  45    0x5b89f  2      
  movl 0x13c(%r15,%rdx,1), %eax     #  46    0x5b8a1  8      
  cmpl $0x1, %eax                   #  47    0x5b8a9  3      
  xchgw %ax, %ax                    #  48    0x5b8ac  3      
  je .L_5bda0                       #  49    0x5b8af  6      
  cmpl $0x2, %eax                   #  50    0x5b8b5  3      
  je .L_5b940                       #  51    0x5b8b8  6      
  nop                               #  52    0x5b8be  1      
  nop                               #  53    0x5b8bf  1      
.L_5b900:                           #        0x5b8c0  0      
  nop                               #  54    0x5b8c0  1      
  nop                               #  55    0x5b8c1  1      
  callq .abort                      #  56    0x5b8c2  5      
.L_5b920:                           #        0x5b8c7  0      
  movl 0x18(%rsp), %eax             #  57    0x5b8c7  4      
  addl $0x1c, %eax                  #  58    0x5b8cb  3      
  movl %eax, %eax                   #  59    0x5b8ce  2      
  jmpq .L_5b880                     #  60    0x5b8d0  5      
  nop                               #  61    0x5b8d5  1      
  nop                               #  62    0x5b8d6  1      
.L_5b940:                           #        0x5b8d7  0      
  movq 0x28(%rsp), %rcx             #  63    0x5b8d7  5      
  xorl %esi, %esi                   #  64    0x5b8dc  2      
  movl %ecx, %ecx                   #  65    0x5b8de  2      
  movl 0x138(%r15,%rcx,1), %edi     #  66    0x5b8e0  8      
  xorl %ecx, %ecx                   #  67    0x5b8e8  2      
  nop                               #  68    0x5b8ea  1      
.L_5b960:                           #        0x5b8eb  0      
  movl %edi, %edi                   #  69    0x5b8eb  2      
  movzbl (%r15,%rdi,1), %edx        #  70    0x5b8ed  5      
  addl $0x1, %edi                   #  71    0x5b8f2  3      
  movl %edx, %eax                   #  72    0x5b8f5  2      
  andl $0x7f, %eax                  #  73    0x5b8f7  3      
  shll %cl, %eax                    #  74    0x5b8fa  2      
  addl $0x7, %ecx                   #  75    0x5b8fc  3      
  orl %eax, %esi                    #  76    0x5b8ff  2      
  testb %dl, %dl                    #  77    0x5b901  2      
  js .L_5b960                       #  78    0x5b903  6      
  movl 0x18(%rsp), %edx             #  79    0x5b909  4      
  addl %edi, %esi                   #  80    0x5b90d  2      
  xorl %ecx, %ecx                   #  81    0x5b90f  2      
  movq %r8, 0x8(%rsp)               #  82    0x5b911  5      
  nop                               #  83    0x5b916  1      
  nop                               #  84    0x5b917  1      
  callq .execute_stack_op           #  85    0x5b918  5      
  movq 0x8(%rsp), %r8               #  86    0x5b91d  5      
  movl %eax, %eax                   #  87    0x5b922  2      
  movq %rax, 0x10(%rsp)             #  88    0x5b924  5      
  nop                               #  89    0x5b929  1      
  nop                               #  90    0x5b92a  1      
.L_5b9c0:                           #        0x5b92b  0      
  movl 0x10(%rsp), %esi             #  91    0x5b92b  4      
  movl %r8d, %ebx                   #  92    0x5b92f  3      
  movl 0x28(%rsp), %r12d            #  93    0x5b932  5      
  leal 0xffdae6d(%rip), %r14d       #  94    0x5b937  7      
  leal 0x12(%rbx), %r10d            #  95    0x5b93e  4      
  leal 0xffc78ae(%rip), %r9d        #  96    0x5b942  7      
  xchgw %ax, %ax                    #  97    0x5b949  3      
  movl %r8d, %r13d                  #  98    0x5b94c  3      
  movq %r8, 0x20(%rsp)              #  99    0x5b94f  5      
  movl %r8d, %r8d                   #  100   0x5b954  3      
  movl %esi, 0x48(%r15,%r8,1)       #  101   0x5b957  5      
  nop                               #  102   0x5b95c  1      
  nop                               #  103   0x5b95d  1      
.L_5ba00:                           #        0x5b95e  0      
  movl %r12d, %eax                  #  104   0x5b95e  3      
  movl %eax, %eax                   #  105   0x5b961  2      
  cmpl $0x5, 0x8(%r15,%rax,1)       #  106   0x5b963  6      
  ja .L_5bac0                       #  107   0x5b969  6      
  movl %eax, %eax                   #  108   0x5b96f  2      
  movl 0x8(%r15,%rax,1), %edx       #  109   0x5b971  5      
  leaq (%r9,%rdx,4), %rdx           #  110   0x5b976  4      
  nop                               #  111   0x5b97a  1      
  movl %edx, %edx                   #  112   0x5b97b  2      
  movslq (%r15,%rdx,1), %rdx        #  113   0x5b97d  4      
  addq %r9, %rdx                    #  114   0x5b981  3      
  andl $0xffffffe0, %edx            #  115   0x5b984  6      
  addq %r15, %rdx                   #  116   0x5b98a  3      
  jmpq %rdx                         #  117   0x5b98d  2      
  nop                               #  118   0x5b98f  1      
  movl %eax, %eax                   #  119   0x5b990  2      
  movl (%r15,%rax,1), %eax          #  120   0x5b992  4      
  leal 0x70(%rax), %edx             #  121   0x5b996  3      
  movslq %edx, %rdx                 #  122   0x5b999  3      
  movl %edx, %edx                   #  123   0x5b99c  2      
  cmpb $0x0, 0x38(%rsp,%rdx,1)      #  124   0x5b99e  5      
  jne .L_5bd20                      #  125   0x5b9a3  6      
  shll $0x2, %eax                   #  126   0x5b9a9  3      
  nop                               #  127   0x5b9ac  1      
  movq $0x4000000000000000, %rcx    #  128   0x5b9ad  10     
  cltq                              #  129   0x5b9b7  2      
  movl %eax, %eax                   #  130   0x5b9b9  2      
  movl 0x30(%rsp,%rax,1), %edx      #  131   0x5b9bb  4      
  movq 0x20(%rsp), %rax             #  132   0x5b9bf  5      
  movl %eax, %eax                   #  133   0x5b9c4  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  134   0x5b9c6  5      
  xchgw %ax, %ax                    #  135   0x5b9cb  3      
  je .L_5baa0                       #  136   0x5b9ce  6      
  movl %ebx, %eax                   #  137   0x5b9d4  2      
  movl %eax, %eax                   #  138   0x5b9d6  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  139   0x5b9d8  6      
  nop                               #  140   0x5b9de  1      
  nop                               #  141   0x5b9df  1      
.L_5baa0:                           #        0x5b9e0  0      
  movl %r13d, %eax                  #  142   0x5b9e0  3      
  movl %eax, %eax                   #  143   0x5b9e3  2      
  movl %edx, (%r15,%rax,1)          #  144   0x5b9e5  4      
  nop                               #  145   0x5b9e9  1      
  nop                               #  146   0x5b9ea  1      
.L_5bac0:                           #        0x5b9eb  0      
  addl $0x1, %ebx                   #  147   0x5b9eb  3      
  addl $0x10, %r12d                 #  148   0x5b9ee  4      
  addl $0x4, %r13d                  #  149   0x5b9f2  4      
  addl $0x1, %r14d                  #  150   0x5b9f6  4      
  cmpl %r10d, %ebx                  #  151   0x5b9fa  3      
  jne .L_5ba00                      #  152   0x5b9fd  6      
  movq 0x28(%rsp), %rcx             #  153   0x5ba03  5      
  nop                               #  154   0x5ba08  1      
  movq 0x20(%rsp), %r8              #  155   0x5ba09  5      
  movl %ecx, %ecx                   #  156   0x5ba0e  2      
  cmpb $0x0, 0x163(%r15,%rcx,1)     #  157   0x5ba10  9      
  jne .L_5be40                      #  158   0x5ba19  6      
  movq $0x7fffffffffffffff, %rax    #  159   0x5ba1f  10     
  movl %r8d, %r8d                   #  160   0x5ba29  3      
  andq %rax, 0x60(%r15,%r8,1)       #  161   0x5ba2c  5      
  nop                               #  162   0x5ba31  1      
  nop                               #  163   0x5ba32  1      
.L_5bb20:                           #        0x5ba33  0      
  addl $0xd8, %esp                  #  164   0x5ba33  3      
  addq %r15, %rsp                   #  165   0x5ba36  3      
  popq %rbx                         #  166   0x5ba39  2      
  popq %r12                         #  167   0x5ba3b  3      
  popq %r13                         #  168   0x5ba3e  3      
  popq %r14                         #  169   0x5ba41  3      
  popq %r11                         #  170   0x5ba44  3      
  andl $0xffffffe0, %r11d           #  171   0x5ba47  7      
  addq %r15, %r11                   #  172   0x5ba4e  3      
  jmpq %r11                         #  173   0x5ba51  3      
  nop                               #  174   0x5ba54  1      
  movl %eax, %eax                   #  175   0x5ba55  2      
  movq (%r15,%rax,1), %rdx          #  176   0x5ba57  4      
  movl %r14d, %eax                  #  177   0x5ba5b  3      
  movl %eax, %eax                   #  178   0x5ba5e  2      
  cmpb $0x4, (%r15,%rax,1)          #  179   0x5ba60  5      
  jne .L_5b900                      #  180   0x5ba65  6      
  movl %ebx, %eax                   #  181   0x5ba6b  2      
  movl %eax, %eax                   #  182   0x5ba6d  2      
  movb $0x1, 0x78(%r15,%rax,1)      #  183   0x5ba6f  6      
.L_5bb60:                           #        0x5ba75  0      
  addl 0x10(%rsp), %edx             #  184   0x5ba75  4      
  movl %r13d, %eax                  #  185   0x5ba79  3      
  movl %eax, %eax                   #  186   0x5ba7c  2      
  movl %edx, (%r15,%rax,1)          #  187   0x5ba7e  4      
  jmpq .L_5bac0                     #  188   0x5ba82  5      
  nop                               #  189   0x5ba87  1      
  movl %eax, %eax                   #  190   0x5ba88  2      
  movl (%r15,%rax,1), %edi          #  191   0x5ba8a  4      
  xorl %esi, %esi                   #  192   0x5ba8e  2      
  xorl %ecx, %ecx                   #  193   0x5ba90  2      
  nop                               #  194   0x5ba92  1      
  nop                               #  195   0x5ba93  1      
.L_5bba0:                           #        0x5ba94  0      
  movl %edi, %edi                   #  196   0x5ba94  2      
  movzbl (%r15,%rdi,1), %edx        #  197   0x5ba96  5      
  addl $0x1, %edi                   #  198   0x5ba9b  3      
  movl %edx, %eax                   #  199   0x5ba9e  2      
  andl $0x7f, %eax                  #  200   0x5baa0  3      
  shll %cl, %eax                    #  201   0x5baa3  2      
  addl $0x7, %ecx                   #  202   0x5baa5  3      
  orl %eax, %esi                    #  203   0x5baa8  2      
  testb %dl, %dl                    #  204   0x5baaa  2      
  js .L_5bba0                       #  205   0x5baac  6      
  movl 0x18(%rsp), %edx             #  206   0x5bab2  4      
  xchgw %ax, %ax                    #  207   0x5bab6  3      
  movq 0x10(%rsp), %rcx             #  208   0x5bab9  5      
  addl %edi, %esi                   #  209   0x5babe  2      
  movq %r9, 0x8(%rsp)               #  210   0x5bac0  5      
  movl %r10d, (%rsp)                #  211   0x5bac5  4      
  nop                               #  212   0x5bac9  1      
  callq .execute_stack_op           #  213   0x5baca  5      
  movq 0x20(%rsp), %rsi             #  214   0x5bacf  5      
  movq $0x4000000000000000, %rdx    #  215   0x5bad4  10     
  movq 0x8(%rsp), %r9               #  216   0x5bade  5      
  movl (%rsp), %r10d                #  217   0x5bae3  4      
  movl %esi, %esi                   #  218   0x5bae7  2      
  testq %rdx, 0x60(%r15,%rsi,1)     #  219   0x5bae9  5      
  nop                               #  220   0x5baee  1      
  je .L_5bc20                       #  221   0x5baef  6      
  movl %ebx, %edx                   #  222   0x5baf5  2      
  movl %edx, %edx                   #  223   0x5baf7  2      
  movb $0x0, 0x78(%r15,%rdx,1)      #  224   0x5baf9  6      
  nop                               #  225   0x5baff  1      
  nop                               #  226   0x5bb00  1      
.L_5bc20:                           #        0x5bb01  0      
  movl %r13d, %edx                  #  227   0x5bb01  3      
  movl %edx, %edx                   #  228   0x5bb04  2      
  movl %eax, (%r15,%rdx,1)          #  229   0x5bb06  4      
  jmpq .L_5bac0                     #  230   0x5bb0a  5      
  nop                               #  231   0x5bb0f  1      
  nop                               #  232   0x5bb10  1      
  movl %eax, %eax                   #  233   0x5bb11  2      
  movq (%r15,%rax,1), %rdx          #  234   0x5bb13  4      
  movq 0x20(%rsp), %rax             #  235   0x5bb17  5      
  movq $0x4000000000000000, %rcx    #  236   0x5bb1c  10     
  movl %eax, %eax                   #  237   0x5bb26  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  238   0x5bb28  5      
  nop                               #  239   0x5bb2d  1      
  je .L_5bb60                       #  240   0x5bb2e  6      
  movl %ebx, %eax                   #  241   0x5bb34  2      
  movl %eax, %eax                   #  242   0x5bb36  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  243   0x5bb38  6      
  jmpq .L_5bb60                     #  244   0x5bb3e  5      
  nop                               #  245   0x5bb43  1      
  movl %eax, %eax                   #  246   0x5bb44  2      
  movl (%r15,%rax,1), %edi          #  247   0x5bb46  4      
  xorl %esi, %esi                   #  248   0x5bb4a  2      
  xorl %ecx, %ecx                   #  249   0x5bb4c  2      
  nop                               #  250   0x5bb4e  1      
  nop                               #  251   0x5bb4f  1      
.L_5bca0:                           #        0x5bb50  0      
  movl %edi, %edi                   #  252   0x5bb50  2      
  movzbl (%r15,%rdi,1), %edx        #  253   0x5bb52  5      
  addl $0x1, %edi                   #  254   0x5bb57  3      
  movl %edx, %eax                   #  255   0x5bb5a  2      
  andl $0x7f, %eax                  #  256   0x5bb5c  3      
  shll %cl, %eax                    #  257   0x5bb5f  2      
  addl $0x7, %ecx                   #  258   0x5bb61  3      
  orl %eax, %esi                    #  259   0x5bb64  2      
  testb %dl, %dl                    #  260   0x5bb66  2      
  js .L_5bca0                       #  261   0x5bb68  6      
  movl 0x18(%rsp), %edx             #  262   0x5bb6e  4      
  xchgw %ax, %ax                    #  263   0x5bb72  3      
  movq 0x10(%rsp), %rcx             #  264   0x5bb75  5      
  addl %edi, %esi                   #  265   0x5bb7a  2      
  movq %r9, 0x8(%rsp)               #  266   0x5bb7c  5      
  movl %r10d, (%rsp)                #  267   0x5bb81  4      
  nop                               #  268   0x5bb85  1      
  callq .execute_stack_op           #  269   0x5bb86  5      
  movl %r14d, %edx                  #  270   0x5bb8b  3      
  movq 0x8(%rsp), %r9               #  271   0x5bb8e  5      
  movl (%rsp), %r10d                #  272   0x5bb93  4      
  movl %edx, %edx                   #  273   0x5bb97  2      
  cmpb $0x4, (%r15,%rdx,1)          #  274   0x5bb99  5      
  jne .L_5b900                      #  275   0x5bb9e  6      
  nop                               #  276   0x5bba4  1      
.L_5bd00:                           #        0x5bba5  0      
  movl %ebx, %edx                   #  277   0x5bba5  2      
  movl %edx, %edx                   #  278   0x5bba7  2      
  movb $0x1, 0x78(%r15,%rdx,1)      #  279   0x5bba9  6      
  jmpq .L_5bc20                     #  280   0x5bbaf  5      
  xchgw %ax, %ax                    #  281   0x5bbb4  3      
  nop                               #  282   0x5bbb7  1      
.L_5bd20:                           #        0x5bbb8  0      
  cmpl $0x11, %eax                  #  283   0x5bbb8  3      
  jg .L_5b900                       #  284   0x5bbbb  6      
  movslq %eax, %rdx                 #  285   0x5bbc1  3      
  leal 0xffdab0e(%rip), %esi        #  286   0x5bbc4  6      
  shll $0x2, %eax                   #  287   0x5bbca  3      
  cltq                              #  288   0x5bbcd  2      
  leaq (%rsi,%rdx,1), %rdx          #  289   0x5bbcf  4      
  nop                               #  290   0x5bbd3  1      
  movl %eax, %eax                   #  291   0x5bbd4  2      
  movl 0x30(%rsp,%rax,1), %ecx      #  292   0x5bbd6  4      
  movq $0x4000000000000000, %rsi    #  293   0x5bbda  10     
  testq %rsi, 0x90(%rsp)            #  294   0x5bbe4  8      
  movl %edx, %edx                   #  295   0x5bbec  2      
  movzbl (%r15,%rdx,1), %edx        #  296   0x5bbee  5      
  nop                               #  297   0x5bbf3  1      
  movq %rcx, %rax                   #  298   0x5bbf4  3      
  jne .L_5bd80                      #  299   0x5bbf7  6      
  movzbl %dl, %edx                  #  300   0x5bbfd  3      
  cmpl $0x4, %edx                   #  301   0x5bc00  3      
  je .L_5be80                       #  302   0x5bc03  6      
  cmpl $0x8, %edx                   #  303   0x5bc09  3      
  jne .L_5b900                      #  304   0x5bc0c  6      
  movl %ecx, %ecx                   #  305   0x5bc12  2      
  movq (%r15,%rcx,1), %rax          #  306   0x5bc14  4      
.L_5bd80:                           #        0x5bc18  0      
  movl %r14d, %edx                  #  307   0x5bc18  3      
  movl %edx, %edx                   #  308   0x5bc1b  2      
  cmpb $0x4, (%r15,%rdx,1)          #  309   0x5bc1d  5      
  je .L_5bd00                       #  310   0x5bc22  6      
  jmpq .L_5b900                     #  311   0x5bc28  5      
  nop                               #  312   0x5bc2d  1      
.L_5bda0:                           #        0x5bc2e  0      
  movq 0x28(%rsp), %rcx             #  313   0x5bc2e  5      
  movl %ecx, %ecx                   #  314   0x5bc33  2      
  movl 0x130(%r15,%rcx,1), %eax     #  315   0x5bc35  8      
  cmpl $0x11, %eax                  #  316   0x5bc3d  3      
  jg .L_5b900                       #  317   0x5bc40  6      
  leal 0xffdaa82(%rip), %ecx        #  318   0x5bc46  6      
  xchgw %ax, %ax                    #  319   0x5bc4c  3      
  movslq %eax, %rdx                 #  320   0x5bc4f  3      
  testb $0x40, 0x97(%rsp)           #  321   0x5bc52  8      
  leaq (%rcx,%rdx,1), %rdx          #  322   0x5bc5a  4      
  movl %edx, %edx                   #  323   0x5bc5e  2      
  movzbl (%r15,%rdx,1), %ecx        #  324   0x5bc60  5      
  leal (,%rax,4), %edx              #  325   0x5bc65  7      
  movslq %edx, %rdx                 #  326   0x5bc6c  3      
  movl %edx, %edx                   #  327   0x5bc6f  2      
  movl 0x30(%rsp,%rdx,1), %edx      #  328   0x5bc71  4      
  jne .L_5be60                      #  329   0x5bc75  6      
  nop                               #  330   0x5bc7b  1      
  nop                               #  331   0x5bc7c  1      
.L_5be00:                           #        0x5bc7d  0      
  movzbl %cl, %eax                  #  332   0x5bc7d  3      
  cmpl $0x4, %eax                   #  333   0x5bc80  3      
  je .L_5bee0                       #  334   0x5bc83  6      
  cmpl $0x8, %eax                   #  335   0x5bc89  3      
  jne .L_5b900                      #  336   0x5bc8c  6      
  movl %edx, %edx                   #  337   0x5bc92  2      
  movq (%r15,%rdx,1), %rax          #  338   0x5bc94  4      
  nop                               #  339   0x5bc98  1      
.L_5be20:                           #        0x5bc99  0      
  movq 0x28(%rsp), %rsi             #  340   0x5bc99  5      
  movl %esi, %esi                   #  341   0x5bc9e  2      
  movl 0x128(%r15,%rsi,1), %edx     #  342   0x5bca0  8      
  addl %eax, %edx                   #  343   0x5bca8  2      
  movq %rdx, 0x10(%rsp)             #  344   0x5bcaa  5      
  jmpq .L_5b9c0                     #  345   0x5bcaf  5      
  nop                               #  346   0x5bcb4  1      
.L_5be40:                           #        0x5bcb5  0      
  movq $0x8000000000000000, %rax    #  347   0x5bcb5  10     
  movl %r8d, %r8d                   #  348   0x5bcbf  3      
  orq %rax, 0x60(%r15,%r8,1)        #  349   0x5bcc2  5      
  jmpq .L_5bb20                     #  350   0x5bcc7  5      
  nop                               #  351   0x5bccc  1      
.L_5be60:                           #        0x5bccd  0      
  addl $0x70, %eax                  #  352   0x5bccd  3      
  movslq %eax, %rbx                 #  353   0x5bcd0  3      
  movq %rdx, %rax                   #  354   0x5bcd3  3      
  movl %ebx, %ebx                   #  355   0x5bcd6  2      
  cmpb $0x0, 0x38(%rsp,%rbx,1)      #  356   0x5bcd8  5      
  je .L_5be00                       #  357   0x5bcdd  6      
  jmpq .L_5be20                     #  358   0x5bce3  5      
  nop                               #  359   0x5bce8  1      
.L_5be80:                           #        0x5bce9  0      
  movl %ecx, %ecx                   #  360   0x5bce9  2      
  movl (%r15,%rcx,1), %eax          #  361   0x5bceb  4      
  jmpq .L_5bd80                     #  362   0x5bcef  5      
  nop                               #  363   0x5bcf4  1      
  nop                               #  364   0x5bcf5  1      
.L_5bea0:                           #        0x5bcf6  0      
  movl %r8d, %r8d                   #  365   0x5bcf6  3      
  movl 0x48(%r15,%r8,1), %esi       #  366   0x5bcf9  5      
  movl 0x18(%rsp), %edi             #  367   0x5bcfe  4      
  leal 0xc0(%rsp), %edx             #  368   0x5bd02  7      
  movq %r8, 0x8(%rsp)               #  369   0x5bd09  5      
  nop                               #  370   0x5bd0e  1      
  callq ._Unwind_SetSpColumn        #  371   0x5bd0f  5      
  movq 0x8(%rsp), %r8               #  372   0x5bd14  5      
  jmpq .L_5b8a0                     #  373   0x5bd19  5      
  nop                               #  374   0x5bd1e  1      
  nop                               #  375   0x5bd1f  1      
.L_5bee0:                           #        0x5bd20  0      
  movl %edx, %edx                   #  376   0x5bd20  2      
  movl (%r15,%rdx,1), %eax          #  377   0x5bd22  4      
  jmpq .L_5be20                     #  378   0x5bd26  5      
  nop                               #  379   0x5bd2b  1      
  nop                               #  380   0x5bd2c  1      
                                                             
.size uw_update_context_1, .-uw_update_context_1

