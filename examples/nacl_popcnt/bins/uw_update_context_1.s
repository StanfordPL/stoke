  .text
  .globl uw_update_context_1
  .type uw_update_context_1, @function

#! file-offset 0x5b8a0
#! rip-offset  0x5b8a0
#! capacity    1792 bytes

# Text                              #  Line  RIP      Bytes  
.uw_update_context_1:               #        0x5b8a0  0      
  pushq %r14                        #  1     0x5b8a0  3      
  movl %edi, %r8d                   #  2     0x5b8a3  3      
  movl %esi, %esi                   #  3     0x5b8a6  2      
  movl $0x12, %ecx                  #  4     0x5b8a8  5      
  pushq %r13                        #  5     0x5b8ad  3      
  pushq %r12                        #  6     0x5b8b0  3      
  pushq %rbx                        #  7     0x5b8b3  2      
  subl $0xd8, %esp                  #  8     0x5b8b5  3      
  addq %r15, %rsp                   #  9     0x5b8b8  3      
  leal 0x30(%rsp), %eax             #  10    0x5b8bb  4      
  xchgw %ax, %ax                    #  11    0x5b8bf  3      
  movq %rsi, 0x28(%rsp)             #  12    0x5b8c2  5      
  movq %r8, %rsi                    #  13    0x5b8c7  3      
  movq %rax, 0x18(%rsp)             #  14    0x5b8ca  5      
  movq %rax, %rdi                   #  15    0x5b8cf  3      
  movl %esi, %esi                   #  16    0x5b8d2  2      
  leaq (%r15,%rsi,1), %rsi          #  17    0x5b8d4  4      
  movl %edi, %edi                   #  18    0x5b8d8  2      
  leaq (%r15,%rdi,1), %rdi          #  19    0x5b8da  4      
  rep movsq %ds:(%rsi), %es:(%rdi)  #  20    0x5b8de  4      
  nop                               #  21    0x5b8e2  1      
  movl %esi, %esi                   #  22    0x5b8e3  2      
  movl %edi, %edi                   #  23    0x5b8e5  2      
  testb $0x40, 0x97(%rsp)           #  24    0x5b8e7  8      
  je .L_5b900                       #  25    0x5b8ef  6      
  cmpb $0x0, 0xaf(%rsp)             #  26    0x5b8f5  8      
  jne .L_5b9c0                      #  27    0x5b8fd  6      
  nop                               #  28    0x5b903  1      
.L_5b900:                           #        0x5b904  0      
  movl 0x4c(%rsp), %eax             #  29    0x5b904  4      
  nop                               #  30    0x5b908  1      
  nop                               #  31    0x5b909  1      
.L_5b920:                           #        0x5b90a  0      
  testq %rax, %rax                  #  32    0x5b90a  3      
  je .L_5bf40                       #  33    0x5b90d  6      
  nop                               #  34    0x5b913  1      
  nop                               #  35    0x5b914  1      
.L_5b940:                           #        0x5b915  0      
  movl %r8d, %r8d                   #  36    0x5b915  3      
  testb $0x40, 0x67(%r15,%r8,1)     #  37    0x5b918  6      
  je .L_5b960                       #  38    0x5b91e  6      
  movl %r8d, %r8d                   #  39    0x5b924  3      
  movb $0x0, 0x7f(%r15,%r8,1)       #  40    0x5b927  6      
  nop                               #  41    0x5b92d  1      
.L_5b960:                           #        0x5b92e  0      
  movq 0x28(%rsp), %rdx             #  42    0x5b92e  5      
  movl %r8d, %r8d                   #  43    0x5b933  3      
  movl $0x0, 0x1c(%r15,%r8,1)       #  44    0x5b936  9      
  movl %edx, %edx                   #  45    0x5b93f  2      
  movl 0x13c(%r15,%rdx,1), %eax     #  46    0x5b941  8      
  cmpl $0x1, %eax                   #  47    0x5b949  3      
  xchgw %ax, %ax                    #  48    0x5b94c  3      
  je .L_5be40                       #  49    0x5b94f  6      
  cmpl $0x2, %eax                   #  50    0x5b955  3      
  je .L_5b9e0                       #  51    0x5b958  6      
  nop                               #  52    0x5b95e  1      
  nop                               #  53    0x5b95f  1      
.L_5b9a0:                           #        0x5b960  0      
  nop                               #  54    0x5b960  1      
  nop                               #  55    0x5b961  1      
  callq .abort                      #  56    0x5b962  5      
.L_5b9c0:                           #        0x5b967  0      
  movl 0x18(%rsp), %eax             #  57    0x5b967  4      
  addl $0x1c, %eax                  #  58    0x5b96b  3      
  movl %eax, %eax                   #  59    0x5b96e  2      
  jmpq .L_5b920                     #  60    0x5b970  5      
  nop                               #  61    0x5b975  1      
  nop                               #  62    0x5b976  1      
.L_5b9e0:                           #        0x5b977  0      
  movq 0x28(%rsp), %rcx             #  63    0x5b977  5      
  xorl %esi, %esi                   #  64    0x5b97c  2      
  movl %ecx, %ecx                   #  65    0x5b97e  2      
  movl 0x138(%r15,%rcx,1), %edi     #  66    0x5b980  8      
  xorl %ecx, %ecx                   #  67    0x5b988  2      
  nop                               #  68    0x5b98a  1      
.L_5ba00:                           #        0x5b98b  0      
  movl %edi, %edi                   #  69    0x5b98b  2      
  movzbl (%r15,%rdi,1), %edx        #  70    0x5b98d  5      
  addl $0x1, %edi                   #  71    0x5b992  3      
  movl %edx, %eax                   #  72    0x5b995  2      
  andl $0x7f, %eax                  #  73    0x5b997  3      
  shll %cl, %eax                    #  74    0x5b99a  2      
  addl $0x7, %ecx                   #  75    0x5b99c  3      
  orl %eax, %esi                    #  76    0x5b99f  2      
  testb %dl, %dl                    #  77    0x5b9a1  2      
  js .L_5ba00                       #  78    0x5b9a3  6      
  movl 0x18(%rsp), %edx             #  79    0x5b9a9  4      
  addl %edi, %esi                   #  80    0x5b9ad  2      
  xorl %ecx, %ecx                   #  81    0x5b9af  2      
  movq %r8, 0x8(%rsp)               #  82    0x5b9b1  5      
  nop                               #  83    0x5b9b6  1      
  nop                               #  84    0x5b9b7  1      
  callq .execute_stack_op           #  85    0x5b9b8  5      
  movq 0x8(%rsp), %r8               #  86    0x5b9bd  5      
  movl %eax, %eax                   #  87    0x5b9c2  2      
  movq %rax, 0x10(%rsp)             #  88    0x5b9c4  5      
  nop                               #  89    0x5b9c9  1      
  nop                               #  90    0x5b9ca  1      
.L_5ba60:                           #        0x5b9cb  0      
  movl 0x10(%rsp), %esi             #  91    0x5b9cb  4      
  movl %r8d, %ebx                   #  92    0x5b9cf  3      
  movl 0x28(%rsp), %r12d            #  93    0x5b9d2  5      
  leal 0xffdadcd(%rip), %r14d       #  94    0x5b9d7  7      
  leal 0x12(%rbx), %r10d            #  95    0x5b9de  4      
  leal 0xffc780e(%rip), %r9d        #  96    0x5b9e2  7      
  xchgw %ax, %ax                    #  97    0x5b9e9  3      
  movl %r8d, %r13d                  #  98    0x5b9ec  3      
  movq %r8, 0x20(%rsp)              #  99    0x5b9ef  5      
  movl %r8d, %r8d                   #  100   0x5b9f4  3      
  movl %esi, 0x48(%r15,%r8,1)       #  101   0x5b9f7  5      
  nop                               #  102   0x5b9fc  1      
  nop                               #  103   0x5b9fd  1      
.L_5baa0:                           #        0x5b9fe  0      
  movl %r12d, %eax                  #  104   0x5b9fe  3      
  movl %eax, %eax                   #  105   0x5ba01  2      
  cmpl $0x5, 0x8(%r15,%rax,1)       #  106   0x5ba03  6      
  ja .L_5bb60                       #  107   0x5ba09  6      
  movl %eax, %eax                   #  108   0x5ba0f  2      
  movl 0x8(%r15,%rax,1), %edx       #  109   0x5ba11  5      
  leaq (%r9,%rdx,4), %rdx           #  110   0x5ba16  4      
  nop                               #  111   0x5ba1a  1      
  movl %edx, %edx                   #  112   0x5ba1b  2      
  movslq (%r15,%rdx,1), %rdx        #  113   0x5ba1d  4      
  addq %r9, %rdx                    #  114   0x5ba21  3      
  andl $0xffffffe0, %edx            #  115   0x5ba24  6      
  addq %r15, %rdx                   #  116   0x5ba2a  3      
  jmpq %rdx                         #  117   0x5ba2d  2      
  nop                               #  118   0x5ba2f  1      
  movl %eax, %eax                   #  119   0x5ba30  2      
  movl (%r15,%rax,1), %eax          #  120   0x5ba32  4      
  leal 0x70(%rax), %edx             #  121   0x5ba36  3      
  movslq %edx, %rdx                 #  122   0x5ba39  3      
  movl %edx, %edx                   #  123   0x5ba3c  2      
  cmpb $0x0, 0x38(%rsp,%rdx,1)      #  124   0x5ba3e  5      
  jne .L_5bdc0                      #  125   0x5ba43  6      
  shll $0x2, %eax                   #  126   0x5ba49  3      
  nop                               #  127   0x5ba4c  1      
  movq $0x4000000000000000, %rcx    #  128   0x5ba4d  10     
  cltq                              #  129   0x5ba57  2      
  movl %eax, %eax                   #  130   0x5ba59  2      
  movl 0x30(%rsp,%rax,1), %edx      #  131   0x5ba5b  4      
  movq 0x20(%rsp), %rax             #  132   0x5ba5f  5      
  movl %eax, %eax                   #  133   0x5ba64  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  134   0x5ba66  5      
  xchgw %ax, %ax                    #  135   0x5ba6b  3      
  je .L_5bb40                       #  136   0x5ba6e  6      
  movl %ebx, %eax                   #  137   0x5ba74  2      
  movl %eax, %eax                   #  138   0x5ba76  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  139   0x5ba78  6      
  nop                               #  140   0x5ba7e  1      
  nop                               #  141   0x5ba7f  1      
.L_5bb40:                           #        0x5ba80  0      
  movl %r13d, %eax                  #  142   0x5ba80  3      
  movl %eax, %eax                   #  143   0x5ba83  2      
  movl %edx, (%r15,%rax,1)          #  144   0x5ba85  4      
  nop                               #  145   0x5ba89  1      
  nop                               #  146   0x5ba8a  1      
.L_5bb60:                           #        0x5ba8b  0      
  addl $0x1, %ebx                   #  147   0x5ba8b  3      
  addl $0x10, %r12d                 #  148   0x5ba8e  4      
  addl $0x4, %r13d                  #  149   0x5ba92  4      
  addl $0x1, %r14d                  #  150   0x5ba96  4      
  cmpl %r10d, %ebx                  #  151   0x5ba9a  3      
  jne .L_5baa0                      #  152   0x5ba9d  6      
  movq 0x28(%rsp), %rcx             #  153   0x5baa3  5      
  nop                               #  154   0x5baa8  1      
  movq 0x20(%rsp), %r8              #  155   0x5baa9  5      
  movl %ecx, %ecx                   #  156   0x5baae  2      
  cmpb $0x0, 0x163(%r15,%rcx,1)     #  157   0x5bab0  9      
  jne .L_5bee0                      #  158   0x5bab9  6      
  movq $0x7fffffffffffffff, %rax    #  159   0x5babf  10     
  movl %r8d, %r8d                   #  160   0x5bac9  3      
  andq %rax, 0x60(%r15,%r8,1)       #  161   0x5bacc  5      
  nop                               #  162   0x5bad1  1      
  nop                               #  163   0x5bad2  1      
.L_5bbc0:                           #        0x5bad3  0      
  addl $0xd8, %esp                  #  164   0x5bad3  3      
  addq %r15, %rsp                   #  165   0x5bad6  3      
  popq %rbx                         #  166   0x5bad9  2      
  popq %r12                         #  167   0x5badb  3      
  popq %r13                         #  168   0x5bade  3      
  popq %r14                         #  169   0x5bae1  3      
  popq %r11                         #  170   0x5bae4  3      
  andl $0xffffffe0, %r11d           #  171   0x5bae7  7      
  addq %r15, %r11                   #  172   0x5baee  3      
  jmpq %r11                         #  173   0x5baf1  3      
  nop                               #  174   0x5baf4  1      
  movl %eax, %eax                   #  175   0x5baf5  2      
  movq (%r15,%rax,1), %rdx          #  176   0x5baf7  4      
  movl %r14d, %eax                  #  177   0x5bafb  3      
  movl %eax, %eax                   #  178   0x5bafe  2      
  cmpb $0x4, (%r15,%rax,1)          #  179   0x5bb00  5      
  jne .L_5b9a0                      #  180   0x5bb05  6      
  movl %ebx, %eax                   #  181   0x5bb0b  2      
  movl %eax, %eax                   #  182   0x5bb0d  2      
  movb $0x1, 0x78(%r15,%rax,1)      #  183   0x5bb0f  6      
.L_5bc00:                           #        0x5bb15  0      
  addl 0x10(%rsp), %edx             #  184   0x5bb15  4      
  movl %r13d, %eax                  #  185   0x5bb19  3      
  movl %eax, %eax                   #  186   0x5bb1c  2      
  movl %edx, (%r15,%rax,1)          #  187   0x5bb1e  4      
  jmpq .L_5bb60                     #  188   0x5bb22  5      
  nop                               #  189   0x5bb27  1      
  movl %eax, %eax                   #  190   0x5bb28  2      
  movl (%r15,%rax,1), %edi          #  191   0x5bb2a  4      
  xorl %esi, %esi                   #  192   0x5bb2e  2      
  xorl %ecx, %ecx                   #  193   0x5bb30  2      
  nop                               #  194   0x5bb32  1      
  nop                               #  195   0x5bb33  1      
.L_5bc40:                           #        0x5bb34  0      
  movl %edi, %edi                   #  196   0x5bb34  2      
  movzbl (%r15,%rdi,1), %edx        #  197   0x5bb36  5      
  addl $0x1, %edi                   #  198   0x5bb3b  3      
  movl %edx, %eax                   #  199   0x5bb3e  2      
  andl $0x7f, %eax                  #  200   0x5bb40  3      
  shll %cl, %eax                    #  201   0x5bb43  2      
  addl $0x7, %ecx                   #  202   0x5bb45  3      
  orl %eax, %esi                    #  203   0x5bb48  2      
  testb %dl, %dl                    #  204   0x5bb4a  2      
  js .L_5bc40                       #  205   0x5bb4c  6      
  movl 0x18(%rsp), %edx             #  206   0x5bb52  4      
  xchgw %ax, %ax                    #  207   0x5bb56  3      
  movq 0x10(%rsp), %rcx             #  208   0x5bb59  5      
  addl %edi, %esi                   #  209   0x5bb5e  2      
  movq %r9, 0x8(%rsp)               #  210   0x5bb60  5      
  movl %r10d, (%rsp)                #  211   0x5bb65  4      
  nop                               #  212   0x5bb69  1      
  callq .execute_stack_op           #  213   0x5bb6a  5      
  movq 0x20(%rsp), %rsi             #  214   0x5bb6f  5      
  movq $0x4000000000000000, %rdx    #  215   0x5bb74  10     
  movq 0x8(%rsp), %r9               #  216   0x5bb7e  5      
  movl (%rsp), %r10d                #  217   0x5bb83  4      
  movl %esi, %esi                   #  218   0x5bb87  2      
  testq %rdx, 0x60(%r15,%rsi,1)     #  219   0x5bb89  5      
  nop                               #  220   0x5bb8e  1      
  je .L_5bcc0                       #  221   0x5bb8f  6      
  movl %ebx, %edx                   #  222   0x5bb95  2      
  movl %edx, %edx                   #  223   0x5bb97  2      
  movb $0x0, 0x78(%r15,%rdx,1)      #  224   0x5bb99  6      
  nop                               #  225   0x5bb9f  1      
  nop                               #  226   0x5bba0  1      
.L_5bcc0:                           #        0x5bba1  0      
  movl %r13d, %edx                  #  227   0x5bba1  3      
  movl %edx, %edx                   #  228   0x5bba4  2      
  movl %eax, (%r15,%rdx,1)          #  229   0x5bba6  4      
  jmpq .L_5bb60                     #  230   0x5bbaa  5      
  nop                               #  231   0x5bbaf  1      
  nop                               #  232   0x5bbb0  1      
  movl %eax, %eax                   #  233   0x5bbb1  2      
  movq (%r15,%rax,1), %rdx          #  234   0x5bbb3  4      
  movq 0x20(%rsp), %rax             #  235   0x5bbb7  5      
  movq $0x4000000000000000, %rcx    #  236   0x5bbbc  10     
  movl %eax, %eax                   #  237   0x5bbc6  2      
  testq %rcx, 0x60(%r15,%rax,1)     #  238   0x5bbc8  5      
  nop                               #  239   0x5bbcd  1      
  je .L_5bc00                       #  240   0x5bbce  6      
  movl %ebx, %eax                   #  241   0x5bbd4  2      
  movl %eax, %eax                   #  242   0x5bbd6  2      
  movb $0x0, 0x78(%r15,%rax,1)      #  243   0x5bbd8  6      
  jmpq .L_5bc00                     #  244   0x5bbde  5      
  nop                               #  245   0x5bbe3  1      
  movl %eax, %eax                   #  246   0x5bbe4  2      
  movl (%r15,%rax,1), %edi          #  247   0x5bbe6  4      
  xorl %esi, %esi                   #  248   0x5bbea  2      
  xorl %ecx, %ecx                   #  249   0x5bbec  2      
  nop                               #  250   0x5bbee  1      
  nop                               #  251   0x5bbef  1      
.L_5bd40:                           #        0x5bbf0  0      
  movl %edi, %edi                   #  252   0x5bbf0  2      
  movzbl (%r15,%rdi,1), %edx        #  253   0x5bbf2  5      
  addl $0x1, %edi                   #  254   0x5bbf7  3      
  movl %edx, %eax                   #  255   0x5bbfa  2      
  andl $0x7f, %eax                  #  256   0x5bbfc  3      
  shll %cl, %eax                    #  257   0x5bbff  2      
  addl $0x7, %ecx                   #  258   0x5bc01  3      
  orl %eax, %esi                    #  259   0x5bc04  2      
  testb %dl, %dl                    #  260   0x5bc06  2      
  js .L_5bd40                       #  261   0x5bc08  6      
  movl 0x18(%rsp), %edx             #  262   0x5bc0e  4      
  xchgw %ax, %ax                    #  263   0x5bc12  3      
  movq 0x10(%rsp), %rcx             #  264   0x5bc15  5      
  addl %edi, %esi                   #  265   0x5bc1a  2      
  movq %r9, 0x8(%rsp)               #  266   0x5bc1c  5      
  movl %r10d, (%rsp)                #  267   0x5bc21  4      
  nop                               #  268   0x5bc25  1      
  callq .execute_stack_op           #  269   0x5bc26  5      
  movl %r14d, %edx                  #  270   0x5bc2b  3      
  movq 0x8(%rsp), %r9               #  271   0x5bc2e  5      
  movl (%rsp), %r10d                #  272   0x5bc33  4      
  movl %edx, %edx                   #  273   0x5bc37  2      
  cmpb $0x4, (%r15,%rdx,1)          #  274   0x5bc39  5      
  jne .L_5b9a0                      #  275   0x5bc3e  6      
  nop                               #  276   0x5bc44  1      
.L_5bda0:                           #        0x5bc45  0      
  movl %ebx, %edx                   #  277   0x5bc45  2      
  movl %edx, %edx                   #  278   0x5bc47  2      
  movb $0x1, 0x78(%r15,%rdx,1)      #  279   0x5bc49  6      
  jmpq .L_5bcc0                     #  280   0x5bc4f  5      
  xchgw %ax, %ax                    #  281   0x5bc54  3      
  nop                               #  282   0x5bc57  1      
.L_5bdc0:                           #        0x5bc58  0      
  cmpl $0x11, %eax                  #  283   0x5bc58  3      
  jg .L_5b9a0                       #  284   0x5bc5b  6      
  movslq %eax, %rdx                 #  285   0x5bc61  3      
  leal 0xffdaa6e(%rip), %esi        #  286   0x5bc64  6      
  shll $0x2, %eax                   #  287   0x5bc6a  3      
  cltq                              #  288   0x5bc6d  2      
  leaq (%rsi,%rdx,1), %rdx          #  289   0x5bc6f  4      
  nop                               #  290   0x5bc73  1      
  movl %eax, %eax                   #  291   0x5bc74  2      
  movl 0x30(%rsp,%rax,1), %ecx      #  292   0x5bc76  4      
  movq $0x4000000000000000, %rsi    #  293   0x5bc7a  10     
  testq %rsi, 0x90(%rsp)            #  294   0x5bc84  8      
  movl %edx, %edx                   #  295   0x5bc8c  2      
  movzbl (%r15,%rdx,1), %edx        #  296   0x5bc8e  5      
  nop                               #  297   0x5bc93  1      
  movq %rcx, %rax                   #  298   0x5bc94  3      
  jne .L_5be20                      #  299   0x5bc97  6      
  movzbl %dl, %edx                  #  300   0x5bc9d  3      
  cmpl $0x4, %edx                   #  301   0x5bca0  3      
  je .L_5bf20                       #  302   0x5bca3  6      
  cmpl $0x8, %edx                   #  303   0x5bca9  3      
  jne .L_5b9a0                      #  304   0x5bcac  6      
  movl %ecx, %ecx                   #  305   0x5bcb2  2      
  movq (%r15,%rcx,1), %rax          #  306   0x5bcb4  4      
.L_5be20:                           #        0x5bcb8  0      
  movl %r14d, %edx                  #  307   0x5bcb8  3      
  movl %edx, %edx                   #  308   0x5bcbb  2      
  cmpb $0x4, (%r15,%rdx,1)          #  309   0x5bcbd  5      
  je .L_5bda0                       #  310   0x5bcc2  6      
  jmpq .L_5b9a0                     #  311   0x5bcc8  5      
  nop                               #  312   0x5bccd  1      
.L_5be40:                           #        0x5bcce  0      
  movq 0x28(%rsp), %rcx             #  313   0x5bcce  5      
  movl %ecx, %ecx                   #  314   0x5bcd3  2      
  movl 0x130(%r15,%rcx,1), %eax     #  315   0x5bcd5  8      
  cmpl $0x11, %eax                  #  316   0x5bcdd  3      
  jg .L_5b9a0                       #  317   0x5bce0  6      
  leal 0xffda9e2(%rip), %ecx        #  318   0x5bce6  6      
  xchgw %ax, %ax                    #  319   0x5bcec  3      
  movslq %eax, %rdx                 #  320   0x5bcef  3      
  testb $0x40, 0x97(%rsp)           #  321   0x5bcf2  8      
  leaq (%rcx,%rdx,1), %rdx          #  322   0x5bcfa  4      
  movl %edx, %edx                   #  323   0x5bcfe  2      
  movzbl (%r15,%rdx,1), %ecx        #  324   0x5bd00  5      
  leal (,%rax,4), %edx              #  325   0x5bd05  7      
  movslq %edx, %rdx                 #  326   0x5bd0c  3      
  movl %edx, %edx                   #  327   0x5bd0f  2      
  movl 0x30(%rsp,%rdx,1), %edx      #  328   0x5bd11  4      
  jne .L_5bf00                      #  329   0x5bd15  6      
  nop                               #  330   0x5bd1b  1      
  nop                               #  331   0x5bd1c  1      
.L_5bea0:                           #        0x5bd1d  0      
  movzbl %cl, %eax                  #  332   0x5bd1d  3      
  cmpl $0x4, %eax                   #  333   0x5bd20  3      
  je .L_5bf80                       #  334   0x5bd23  6      
  cmpl $0x8, %eax                   #  335   0x5bd29  3      
  jne .L_5b9a0                      #  336   0x5bd2c  6      
  movl %edx, %edx                   #  337   0x5bd32  2      
  movq (%r15,%rdx,1), %rax          #  338   0x5bd34  4      
  nop                               #  339   0x5bd38  1      
.L_5bec0:                           #        0x5bd39  0      
  movq 0x28(%rsp), %rsi             #  340   0x5bd39  5      
  movl %esi, %esi                   #  341   0x5bd3e  2      
  movl 0x128(%r15,%rsi,1), %edx     #  342   0x5bd40  8      
  addl %eax, %edx                   #  343   0x5bd48  2      
  movq %rdx, 0x10(%rsp)             #  344   0x5bd4a  5      
  jmpq .L_5ba60                     #  345   0x5bd4f  5      
  nop                               #  346   0x5bd54  1      
.L_5bee0:                           #        0x5bd55  0      
  movq $0x8000000000000000, %rax    #  347   0x5bd55  10     
  movl %r8d, %r8d                   #  348   0x5bd5f  3      
  orq %rax, 0x60(%r15,%r8,1)        #  349   0x5bd62  5      
  jmpq .L_5bbc0                     #  350   0x5bd67  5      
  nop                               #  351   0x5bd6c  1      
.L_5bf00:                           #        0x5bd6d  0      
  addl $0x70, %eax                  #  352   0x5bd6d  3      
  movslq %eax, %rbx                 #  353   0x5bd70  3      
  movq %rdx, %rax                   #  354   0x5bd73  3      
  movl %ebx, %ebx                   #  355   0x5bd76  2      
  cmpb $0x0, 0x38(%rsp,%rbx,1)      #  356   0x5bd78  5      
  je .L_5bea0                       #  357   0x5bd7d  6      
  jmpq .L_5bec0                     #  358   0x5bd83  5      
  nop                               #  359   0x5bd88  1      
.L_5bf20:                           #        0x5bd89  0      
  movl %ecx, %ecx                   #  360   0x5bd89  2      
  movl (%r15,%rcx,1), %eax          #  361   0x5bd8b  4      
  jmpq .L_5be20                     #  362   0x5bd8f  5      
  nop                               #  363   0x5bd94  1      
  nop                               #  364   0x5bd95  1      
.L_5bf40:                           #        0x5bd96  0      
  movl %r8d, %r8d                   #  365   0x5bd96  3      
  movl 0x48(%r15,%r8,1), %esi       #  366   0x5bd99  5      
  movl 0x18(%rsp), %edi             #  367   0x5bd9e  4      
  leal 0xc0(%rsp), %edx             #  368   0x5bda2  7      
  movq %r8, 0x8(%rsp)               #  369   0x5bda9  5      
  nop                               #  370   0x5bdae  1      
  callq ._Unwind_SetSpColumn        #  371   0x5bdaf  5      
  movq 0x8(%rsp), %r8               #  372   0x5bdb4  5      
  jmpq .L_5b940                     #  373   0x5bdb9  5      
  nop                               #  374   0x5bdbe  1      
  nop                               #  375   0x5bdbf  1      
.L_5bf80:                           #        0x5bdc0  0      
  movl %edx, %edx                   #  376   0x5bdc0  2      
  movl (%r15,%rdx,1), %eax          #  377   0x5bdc2  4      
  jmpq .L_5bec0                     #  378   0x5bdc6  5      
  nop                               #  379   0x5bdcb  1      
  nop                               #  380   0x5bdcc  1      
                                                             
.size uw_update_context_1, .-uw_update_context_1

