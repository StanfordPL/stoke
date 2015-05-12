  .text
  .globl uw_update_context_1
  .type uw_update_context_1, @function

#! file-offset 0x5b820
#! rip-offset  0x5b820
#! capacity    1792 bytes

# Text                              #  Line  RIP      Bytes  
.uw_update_context_1:               #        0x5b820  0      
  pushq %r14                        #  1     0x5b820  3      
  movl %edi, %r8d                   #  2     0x5b823  3      
  movl %esi, %esi                   #  3     0x5b826  2      
  movl $0x12, %ecx                  #  4     0x5b828  5      
  pushq %r13                        #  5     0x5b82d  3      
  pushq %r12                        #  6     0x5b830  3      
  pushq %rbx                        #  7     0x5b833  2      
  subl $0xd8, %esp                  #  8     0x5b835  3      
  addq %r15, %rsp                   #  9     0x5b838  3      
  leal 0x30(%rsp), %eax             #  10    0x5b83b  4      
  xchgw %ax, %ax                    #  11    0x5b83f  3      
  movq %rsi, 0x28(%rsp)             #  12    0x5b842  5      
  movq %r8, %rsi                    #  13    0x5b847  3      
  movq %rax, 0x18(%rsp)             #  14    0x5b84a  5      
  movq %rax, %rdi                   #  15    0x5b84f  3      
  movl %esi, %esi                   #  16    0x5b852  2      
  leaq (%r15,%rsi,1), %rsi          #  17    0x5b854  4      
  movl %edi, %edi                   #  18    0x5b858  2      
  leaq (%r15,%rdi,1), %rdi          #  19    0x5b85a  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  20    0x5b85e  4      
  nop                               #  21    0x5b862  1      
  movl %esi, %esi                   #  22    0x5b863  2      
  movl %edi, %edi                   #  23    0x5b865  2      
  testb $0x40, 0x97(%rsp)           #  24    0x5b867  8      
  je .L_5b880                       #  25    0x5b86f  6      
  cmpb $0x0, 0xaf(%rsp)             #  26    0x5b875  8      
  jne .L_5b940                      #  27    0x5b87d  6      
  nop                               #  28    0x5b883  1      
.L_5b880:                           #        0x5b884  0      
  movl 0x4c(%rsp), %eax             #  29    0x5b884  4      
  nop                               #  30    0x5b888  1      
  nop                               #  31    0x5b889  1      
.L_5b8a0:                           #        0x5b88a  0      
  testq %rax, %rax                  #  32    0x5b88a  3      
  je .L_5bec0                       #  33    0x5b88d  6      
  nop                               #  34    0x5b893  1      
  nop                               #  35    0x5b894  1      
.L_5b8c0:                           #        0x5b895  0      
  movl %r8d, %r8d                   #  36    0x5b895  3      
  testb $0x40, 0x67(%r15,%r8,1)     #  37    0x5b898  6      
  je .L_5b8e0                       #  38    0x5b89e  6      
  movl %r8d, %r8d                   #  39    0x5b8a4  3      
  movb $0x0, 0x7f(%r15,%r8,1)       #  40    0x5b8a7  6      
  nop                               #  41    0x5b8ad  1      
.L_5b8e0:                           #        0x5b8ae  0      
  movq 0x28(%rsp), %rdx             #  42    0x5b8ae  5      
  movl %r8d, %r8d                   #  43    0x5b8b3  3      
  movl $0x0, 0x1c(%r15,%r8,1)       #  44    0x5b8b6  9      
  movl %edx, %edx                   #  45    0x5b8bf  2      
  movl 0x13c(%r15,%rdx,1), %eax     #  46    0x5b8c1  8      
  cmpl $0x1, %eax                   #  47    0x5b8c9  3      
  xchgw %ax, %ax                    #  48    0x5b8cc  3      
  je .L_5bdc0                       #  49    0x5b8cf  6      
  cmpl $0x2, %eax                   #  50    0x5b8d5  3      
  je .L_5b960                       #  51    0x5b8d8  6      
  nop                               #  52    0x5b8de  1      
  nop                               #  53    0x5b8df  1      
.L_5b920:                           #        0x5b8e0  0      
  nop                               #  54    0x5b8e0  1      
  nop                               #  55    0x5b8e1  1      
  callq .abort                      #  56    0x5b8e2  5      
.L_5b940:                           #        0x5b8e7  0      
  movl 0x18(%rsp), %eax             #  57    0x5b8e7  4      
  addl $0x1c, %eax                  #  58    0x5b8eb  3      
  movl %eax, %eax                   #  59    0x5b8ee  2      
  jmpq .L_5b8a0                     #  60    0x5b8f0  5      
  nop                               #  61    0x5b8f5  1      
  nop                               #  62    0x5b8f6  1      
.L_5b960:                           #        0x5b8f7  0      
  movq 0x28(%rsp), %rcx             #  63    0x5b8f7  5      
  xorl %esi, %esi                   #  64    0x5b8fc  2      
  movl %ecx, %ecx                   #  65    0x5b8fe  2      
  movl 0x138(%r15,%rcx,1), %edi     #  66    0x5b900  8      
  xorl %ecx, %ecx                   #  67    0x5b908  2      
  nop                               #  68    0x5b90a  1      
.L_5b980:                           #        0x5b90b  0      
  movl %edi, %edi                   #  69    0x5b90b  2      
  movzbl (%r15,%rdi,1), %edx        #  70    0x5b90d  5      
  addl $0x1, %edi                   #  71    0x5b912  3      
  movl %edx, %eax                   #  72    0x5b915  2      
  andl $0x7f, %eax                  #  73    0x5b917  3      
  shll %cl, %eax                    #  74    0x5b91a  2      
  addl $0x7, %ecx                   #  75    0x5b91c  3      
  orl %eax, %esi                    #  76    0x5b91f  2      
  testb %dl, %dl                    #  77    0x5b921  2      
  js .L_5b980                       #  78    0x5b923  6      
  movl 0x18(%rsp), %edx             #  79    0x5b929  4      
  addl %edi, %esi                   #  80    0x5b92d  2      
  xorl %ecx, %ecx                   #  81    0x5b92f  2      
  movq %r8, 0x8(%rsp)               #  82    0x5b931  5      
  nop                               #  83    0x5b936  1      
  nop                               #  84    0x5b937  1      
  callq .execute_stack_op           #  85    0x5b938  5      
  movq 0x8(%rsp), %r8               #  86    0x5b93d  5      
  movl %eax, %eax                   #  87    0x5b942  2      
  movq %rax, 0x10(%rsp)             #  88    0x5b944  5      
  nop                               #  89    0x5b949  1      
  nop                               #  90    0x5b94a  1      
.L_5b9e0:                           #        0x5b94b  0      
  movl 0x10(%rsp), %esi             #  91    0x5b94b  4      
  movl %r8d, %ebx                   #  92    0x5b94f  3      
  movl 0x28(%rsp), %r12d            #  93    0x5b952  5      
  leal 0xffdae4d(%rip), %r14d       #  94    0x5b957  7      
  leal 0x12(%rbx), %r10d            #  95    0x5b95e  4      
  leal 0xffc788e(%rip), %r9d        #  96    0x5b962  7      
  xchgw %ax, %ax                    #  97    0x5b969  3      
  movl %r8d, %r13d                  #  98    0x5b96c  3      
  movq %r8, 0x20(%rsp)              #  99    0x5b96f  5      
  movl %r8d, %r8d                   #  100   0x5b974  3      
  movl %esi, 0x48(%r15,%r8,1)       #  101   0x5b977  5      
  nop                               #  102   0x5b97c  1      
  nop                               #  103   0x5b97d  1      
.L_5ba20:                           #        0x5b97e  0      
  movl %r12d, %eax                  #  104   0x5b97e  3      
  movl %eax, %eax                   #  105   0x5b981  2      
  cmpl $0x5, 0x8(%r15,%rax,1)       #  106   0x5b983  6      
  ja .L_5bae0                       #  107   0x5b989  6      
  movl %eax, %eax                   #  108   0x5b98f  2      
  movl 0x8(%r15,%rax,1), %edx       #  109   0x5b991  5      
  leaq (%r9,%rdx,4), %rdx           #  110   0x5b996  4      
  nop                               #  111   0x5b99a  1      
  movl %edx, %edx                   #  112   0x5b99b  2      
  movslq (%r15,%rdx,1), %rdx        #  113   0x5b99d  4      
  addq %r9, %rdx                    #  114   0x5b9a1  3      
  andl $0xffffffe0, %edx            #  115   0x5b9a4  6      
  addq %r15, %rdx                   #  116   0x5b9aa  3      
  jmpq %rdx                         #  117   0x5b9ad  2      
  nop                               #  118   0x5b9af  1      
  movl %eax, %eax                   #  119   0x5b9b0  2      
  movl (%r15,%rax,1), %eax          #  120   0x5b9b2  4      
  leal 0x70(%rax), %edx             #  121   0x5b9b6  3      
  movslq %edx, %rdx                 #  122   0x5b9b9  3      
  movl %edx, %edx                   #  123   0x5b9bc  2      
  cmpb $0x0, 0x38(%rsp,%rdx,1)      #  124   0x5b9be  5      
  jne .L_5bd40                      #  125   0x5b9c3  6      
  shll $0x2, %eax                   #  126   0x5b9c9  3      
  nop                               #  127   0x5b9cc  1      
  movq $0x4000000000000000, %rcx    #  128   0x5b9cd  10     
  cltq                              #  129   0x5b9d7  2      
  movl %eax, %eax                   #  130   0x5b9d9  2      
  movl 0x30(%rsp,%rax,1), %edx      #  131   0x5b9db  4      
  movq 0x20(%rsp), %rax             #  132   0x5b9df  5      
  movl %eax, %eax                   #  133   0x5b9e4  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  134   0x5b9e6  5      
  xchgw %ax, %ax                    #  135   0x5b9eb  3      
  je .L_5bac0                       #  136   0x5b9ee  6      
  movl %ebx, %eax                   #  137   0x5b9f4  2      
  movl %eax, %eax                   #  138   0x5b9f6  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  139   0x5b9f8  6      
  nop                               #  140   0x5b9fe  1      
  nop                               #  141   0x5b9ff  1      
.L_5bac0:                           #        0x5ba00  0      
  movl %r13d, %eax                  #  142   0x5ba00  3      
  movl %eax, %eax                   #  143   0x5ba03  2      
  movl %edx, (%r15,%rax,1)          #  144   0x5ba05  4      
  nop                               #  145   0x5ba09  1      
  nop                               #  146   0x5ba0a  1      
.L_5bae0:                           #        0x5ba0b  0      
  addl $0x1, %ebx                   #  147   0x5ba0b  3      
  addl $0x10, %r12d                 #  148   0x5ba0e  4      
  addl $0x4, %r13d                  #  149   0x5ba12  4      
  addl $0x1, %r14d                  #  150   0x5ba16  4      
  cmpl %r10d, %ebx                  #  151   0x5ba1a  3      
  jne .L_5ba20                      #  152   0x5ba1d  6      
  movq 0x28(%rsp), %rcx             #  153   0x5ba23  5      
  nop                               #  154   0x5ba28  1      
  movq 0x20(%rsp), %r8              #  155   0x5ba29  5      
  movl %ecx, %ecx                   #  156   0x5ba2e  2      
  cmpb $0x0, 0x163(%r15,%rcx,1)     #  157   0x5ba30  9      
  jne .L_5be60                      #  158   0x5ba39  6      
  movq $0x7fffffffffffffff, %rax    #  159   0x5ba3f  10     
  movl %r8d, %r8d                   #  160   0x5ba49  3      
  andq %rax, 0x60(%r15,%r8,1)       #  161   0x5ba4c  5      
  nop                               #  162   0x5ba51  1      
  nop                               #  163   0x5ba52  1      
.L_5bb40:                           #        0x5ba53  0      
  addl $0xd8, %esp                  #  164   0x5ba53  3      
  addq %r15, %rsp                   #  165   0x5ba56  3      
  popq %rbx                         #  166   0x5ba59  2      
  popq %r12                         #  167   0x5ba5b  3      
  popq %r13                         #  168   0x5ba5e  3      
  popq %r14                         #  169   0x5ba61  3      
  popq %r11                         #  170   0x5ba64  3      
  andl $0xffffffe0, %r11d           #  171   0x5ba67  7      
  addq %r15, %r11                   #  172   0x5ba6e  3      
  jmpq %r11                         #  173   0x5ba71  3      
  nop                               #  174   0x5ba74  1      
  movl %eax, %eax                   #  175   0x5ba75  2      
  movq (%r15,%rax,1), %rdx          #  176   0x5ba77  4      
  movl %r14d, %eax                  #  177   0x5ba7b  3      
  movl %eax, %eax                   #  178   0x5ba7e  2      
  cmpb $0x4, (%r15,%rax,1)          #  179   0x5ba80  5      
  jne .L_5b920                      #  180   0x5ba85  6      
  movl %ebx, %eax                   #  181   0x5ba8b  2      
  movl %eax, %eax                   #  182   0x5ba8d  2      
  movb $0x1, 0x78(%r15,%rax,1)      #  183   0x5ba8f  6      
.L_5bb80:                           #        0x5ba95  0      
  addl 0x10(%rsp), %edx             #  184   0x5ba95  4      
  movl %r13d, %eax                  #  185   0x5ba99  3      
  movl %eax, %eax                   #  186   0x5ba9c  2      
  movl %edx, (%r15,%rax,1)          #  187   0x5ba9e  4      
  jmpq .L_5bae0                     #  188   0x5baa2  5      
  nop                               #  189   0x5baa7  1      
  movl %eax, %eax                   #  190   0x5baa8  2      
  movl (%r15,%rax,1), %edi          #  191   0x5baaa  4      
  xorl %esi, %esi                   #  192   0x5baae  2      
  xorl %ecx, %ecx                   #  193   0x5bab0  2      
  nop                               #  194   0x5bab2  1      
  nop                               #  195   0x5bab3  1      
.L_5bbc0:                           #        0x5bab4  0      
  movl %edi, %edi                   #  196   0x5bab4  2      
  movzbl (%r15,%rdi,1), %edx        #  197   0x5bab6  5      
  addl $0x1, %edi                   #  198   0x5babb  3      
  movl %edx, %eax                   #  199   0x5babe  2      
  andl $0x7f, %eax                  #  200   0x5bac0  3      
  shll %cl, %eax                    #  201   0x5bac3  2      
  addl $0x7, %ecx                   #  202   0x5bac5  3      
  orl %eax, %esi                    #  203   0x5bac8  2      
  testb %dl, %dl                    #  204   0x5baca  2      
  js .L_5bbc0                       #  205   0x5bacc  6      
  movl 0x18(%rsp), %edx             #  206   0x5bad2  4      
  xchgw %ax, %ax                    #  207   0x5bad6  3      
  movq 0x10(%rsp), %rcx             #  208   0x5bad9  5      
  addl %edi, %esi                   #  209   0x5bade  2      
  movq %r9, 0x8(%rsp)               #  210   0x5bae0  5      
  movl %r10d, (%rsp)                #  211   0x5bae5  4      
  nop                               #  212   0x5bae9  1      
  callq .execute_stack_op           #  213   0x5baea  5      
  movq 0x20(%rsp), %rsi             #  214   0x5baef  5      
  movq $0x4000000000000000, %rdx    #  215   0x5baf4  10     
  movq 0x8(%rsp), %r9               #  216   0x5bafe  5      
  movl (%rsp), %r10d                #  217   0x5bb03  4      
  movl %esi, %esi                   #  218   0x5bb07  2      
  testq %rdx, 0x60(%r15,%rsi,1)     #  219   0x5bb09  5      
  nop                               #  220   0x5bb0e  1      
  je .L_5bc40                       #  221   0x5bb0f  6      
  movl %ebx, %edx                   #  222   0x5bb15  2      
  movl %edx, %edx                   #  223   0x5bb17  2      
  movb $0x0, 0x78(%r15,%rdx,1)      #  224   0x5bb19  6      
  nop                               #  225   0x5bb1f  1      
  nop                               #  226   0x5bb20  1      
.L_5bc40:                           #        0x5bb21  0      
  movl %r13d, %edx                  #  227   0x5bb21  3      
  movl %edx, %edx                   #  228   0x5bb24  2      
  movl %eax, (%r15,%rdx,1)          #  229   0x5bb26  4      
  jmpq .L_5bae0                     #  230   0x5bb2a  5      
  nop                               #  231   0x5bb2f  1      
  nop                               #  232   0x5bb30  1      
  movl %eax, %eax                   #  233   0x5bb31  2      
  movq (%r15,%rax,1), %rdx          #  234   0x5bb33  4      
  movq 0x20(%rsp), %rax             #  235   0x5bb37  5      
  movq $0x4000000000000000, %rcx    #  236   0x5bb3c  10     
  movl %eax, %eax                   #  237   0x5bb46  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  238   0x5bb48  5      
  nop                               #  239   0x5bb4d  1      
  je .L_5bb80                       #  240   0x5bb4e  6      
  movl %ebx, %eax                   #  241   0x5bb54  2      
  movl %eax, %eax                   #  242   0x5bb56  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  243   0x5bb58  6      
  jmpq .L_5bb80                     #  244   0x5bb5e  5      
  nop                               #  245   0x5bb63  1      
  movl %eax, %eax                   #  246   0x5bb64  2      
  movl (%r15,%rax,1), %edi          #  247   0x5bb66  4      
  xorl %esi, %esi                   #  248   0x5bb6a  2      
  xorl %ecx, %ecx                   #  249   0x5bb6c  2      
  nop                               #  250   0x5bb6e  1      
  nop                               #  251   0x5bb6f  1      
.L_5bcc0:                           #        0x5bb70  0      
  movl %edi, %edi                   #  252   0x5bb70  2      
  movzbl (%r15,%rdi,1), %edx        #  253   0x5bb72  5      
  addl $0x1, %edi                   #  254   0x5bb77  3      
  movl %edx, %eax                   #  255   0x5bb7a  2      
  andl $0x7f, %eax                  #  256   0x5bb7c  3      
  shll %cl, %eax                    #  257   0x5bb7f  2      
  addl $0x7, %ecx                   #  258   0x5bb81  3      
  orl %eax, %esi                    #  259   0x5bb84  2      
  testb %dl, %dl                    #  260   0x5bb86  2      
  js .L_5bcc0                       #  261   0x5bb88  6      
  movl 0x18(%rsp), %edx             #  262   0x5bb8e  4      
  xchgw %ax, %ax                    #  263   0x5bb92  3      
  movq 0x10(%rsp), %rcx             #  264   0x5bb95  5      
  addl %edi, %esi                   #  265   0x5bb9a  2      
  movq %r9, 0x8(%rsp)               #  266   0x5bb9c  5      
  movl %r10d, (%rsp)                #  267   0x5bba1  4      
  nop                               #  268   0x5bba5  1      
  callq .execute_stack_op           #  269   0x5bba6  5      
  movl %r14d, %edx                  #  270   0x5bbab  3      
  movq 0x8(%rsp), %r9               #  271   0x5bbae  5      
  movl (%rsp), %r10d                #  272   0x5bbb3  4      
  movl %edx, %edx                   #  273   0x5bbb7  2      
  cmpb $0x4, (%r15,%rdx,1)          #  274   0x5bbb9  5      
  jne .L_5b920                      #  275   0x5bbbe  6      
  nop                               #  276   0x5bbc4  1      
.L_5bd20:                           #        0x5bbc5  0      
  movl %ebx, %edx                   #  277   0x5bbc5  2      
  movl %edx, %edx                   #  278   0x5bbc7  2      
  movb $0x1, 0x78(%r15,%rdx,1)      #  279   0x5bbc9  6      
  jmpq .L_5bc40                     #  280   0x5bbcf  5      
  xchgw %ax, %ax                    #  281   0x5bbd4  3      
  nop                               #  282   0x5bbd7  1      
.L_5bd40:                           #        0x5bbd8  0      
  cmpl $0x11, %eax                  #  283   0x5bbd8  3      
  jg .L_5b920                       #  284   0x5bbdb  6      
  movslq %eax, %rdx                 #  285   0x5bbe1  3      
  leal 0xffdaaee(%rip), %esi        #  286   0x5bbe4  6      
  shll $0x2, %eax                   #  287   0x5bbea  3      
  cltq                              #  288   0x5bbed  2      
  leaq (%rsi,%rdx,1), %rdx          #  289   0x5bbef  4      
  nop                               #  290   0x5bbf3  1      
  movl %eax, %eax                   #  291   0x5bbf4  2      
  movl 0x30(%rsp,%rax,1), %ecx      #  292   0x5bbf6  4      
  movq $0x4000000000000000, %rsi    #  293   0x5bbfa  10     
  testq %rsi, 0x90(%rsp)            #  294   0x5bc04  8      
  movl %edx, %edx                   #  295   0x5bc0c  2      
  movzbl (%r15,%rdx,1), %edx        #  296   0x5bc0e  5      
  nop                               #  297   0x5bc13  1      
  movq %rcx, %rax                   #  298   0x5bc14  3      
  jne .L_5bda0                      #  299   0x5bc17  6      
  movzbl %dl, %edx                  #  300   0x5bc1d  3      
  cmpl $0x4, %edx                   #  301   0x5bc20  3      
  je .L_5bea0                       #  302   0x5bc23  6      
  cmpl $0x8, %edx                   #  303   0x5bc29  3      
  jne .L_5b920                      #  304   0x5bc2c  6      
  movl %ecx, %ecx                   #  305   0x5bc32  2      
  movq (%r15,%rcx,1), %rax          #  306   0x5bc34  4      
.L_5bda0:                           #        0x5bc38  0      
  movl %r14d, %edx                  #  307   0x5bc38  3      
  movl %edx, %edx                   #  308   0x5bc3b  2      
  cmpb $0x4, (%r15,%rdx,1)          #  309   0x5bc3d  5      
  je .L_5bd20                       #  310   0x5bc42  6      
  jmpq .L_5b920                     #  311   0x5bc48  5      
  nop                               #  312   0x5bc4d  1      
.L_5bdc0:                           #        0x5bc4e  0      
  movq 0x28(%rsp), %rcx             #  313   0x5bc4e  5      
  movl %ecx, %ecx                   #  314   0x5bc53  2      
  movl 0x130(%r15,%rcx,1), %eax     #  315   0x5bc55  8      
  cmpl $0x11, %eax                  #  316   0x5bc5d  3      
  jg .L_5b920                       #  317   0x5bc60  6      
  leal 0xffdaa62(%rip), %ecx        #  318   0x5bc66  6      
  xchgw %ax, %ax                    #  319   0x5bc6c  3      
  movslq %eax, %rdx                 #  320   0x5bc6f  3      
  testb $0x40, 0x97(%rsp)           #  321   0x5bc72  8      
  leaq (%rcx,%rdx,1), %rdx          #  322   0x5bc7a  4      
  movl %edx, %edx                   #  323   0x5bc7e  2      
  movzbl (%r15,%rdx,1), %ecx        #  324   0x5bc80  5      
  leal (,%rax,4), %edx              #  325   0x5bc85  7      
  movslq %edx, %rdx                 #  326   0x5bc8c  3      
  movl %edx, %edx                   #  327   0x5bc8f  2      
  movl 0x30(%rsp,%rdx,1), %edx      #  328   0x5bc91  4      
  jne .L_5be80                      #  329   0x5bc95  6      
  nop                               #  330   0x5bc9b  1      
  nop                               #  331   0x5bc9c  1      
.L_5be20:                           #        0x5bc9d  0      
  movzbl %cl, %eax                  #  332   0x5bc9d  3      
  cmpl $0x4, %eax                   #  333   0x5bca0  3      
  je .L_5bf00                       #  334   0x5bca3  6      
  cmpl $0x8, %eax                   #  335   0x5bca9  3      
  jne .L_5b920                      #  336   0x5bcac  6      
  movl %edx, %edx                   #  337   0x5bcb2  2      
  movq (%r15,%rdx,1), %rax          #  338   0x5bcb4  4      
  nop                               #  339   0x5bcb8  1      
.L_5be40:                           #        0x5bcb9  0      
  movq 0x28(%rsp), %rsi             #  340   0x5bcb9  5      
  movl %esi, %esi                   #  341   0x5bcbe  2      
  movl 0x128(%r15,%rsi,1), %edx     #  342   0x5bcc0  8      
  addl %eax, %edx                   #  343   0x5bcc8  2      
  movq %rdx, 0x10(%rsp)             #  344   0x5bcca  5      
  jmpq .L_5b9e0                     #  345   0x5bccf  5      
  nop                               #  346   0x5bcd4  1      
.L_5be60:                           #        0x5bcd5  0      
  movq $0x8000000000000000, %rax    #  347   0x5bcd5  10     
  movl %r8d, %r8d                   #  348   0x5bcdf  3      
  orq %rax, 0x60(%r15,%r8,1)        #  349   0x5bce2  5      
  jmpq .L_5bb40                     #  350   0x5bce7  5      
  nop                               #  351   0x5bcec  1      
.L_5be80:                           #        0x5bced  0      
  addl $0x70, %eax                  #  352   0x5bced  3      
  movslq %eax, %rbx                 #  353   0x5bcf0  3      
  movq %rdx, %rax                   #  354   0x5bcf3  3      
  movl %ebx, %ebx                   #  355   0x5bcf6  2      
  cmpb $0x0, 0x38(%rsp,%rbx,1)      #  356   0x5bcf8  5      
  je .L_5be20                       #  357   0x5bcfd  6      
  jmpq .L_5be40                     #  358   0x5bd03  5      
  nop                               #  359   0x5bd08  1      
.L_5bea0:                           #        0x5bd09  0      
  movl %ecx, %ecx                   #  360   0x5bd09  2      
  movl (%r15,%rcx,1), %eax          #  361   0x5bd0b  4      
  jmpq .L_5bda0                     #  362   0x5bd0f  5      
  nop                               #  363   0x5bd14  1      
  nop                               #  364   0x5bd15  1      
.L_5bec0:                           #        0x5bd16  0      
  movl %r8d, %r8d                   #  365   0x5bd16  3      
  movl 0x48(%r15,%r8,1), %esi       #  366   0x5bd19  5      
  movl 0x18(%rsp), %edi             #  367   0x5bd1e  4      
  leal 0xc0(%rsp), %edx             #  368   0x5bd22  7      
  movq %r8, 0x8(%rsp)               #  369   0x5bd29  5      
  nop                               #  370   0x5bd2e  1      
  callq ._Unwind_SetSpColumn        #  371   0x5bd2f  5      
  movq 0x8(%rsp), %r8               #  372   0x5bd34  5      
  jmpq .L_5b8c0                     #  373   0x5bd39  5      
  nop                               #  374   0x5bd3e  1      
  nop                               #  375   0x5bd3f  1      
.L_5bf00:                           #        0x5bd40  0      
  movl %edx, %edx                   #  376   0x5bd40  2      
  movl (%r15,%rdx,1), %eax          #  377   0x5bd42  4      
  jmpq .L_5be40                     #  378   0x5bd46  5      
  nop                               #  379   0x5bd4b  1      
  nop                               #  380   0x5bd4c  1      
                                                             
.size uw_update_context_1, .-uw_update_context_1

