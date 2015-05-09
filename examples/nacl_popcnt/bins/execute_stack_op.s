  .text
  .globl execute_stack_op
  .type execute_stack_op, @function

#! file-offset 0x5a760
#! rip-offset  0x5a760
#! capacity    4256 bytes

# Text                            #  Line  RIP      Bytes  
.execute_stack_op:                #        0x5a760  0      
  pushq %r14                      #  1     0x5a760  3      
  movl %edi, %edi                 #  2     0x5a763  2      
  movl %edx, %r8d                 #  3     0x5a765  3      
  pushq %r13                      #  4     0x5a768  3      
  pushq %r12                      #  5     0x5a76b  3      
  movl %esi, %r12d                #  6     0x5a76e  3      
  pushq %rbx                      #  7     0x5a771  2      
  subl $0x258, %esp               #  8     0x5a773  6      
  addq %r15, %rsp                 #  9     0x5a779  3      
  cmpl %r12d, %edi                #  10    0x5a77c  3      
  movq %rcx, 0x40(%rsp)           #  11    0x5a77f  5      
  jae .L_5a8a0                    #  12    0x5a784  6      
  leal 0x24c(%rsp), %eax          #  13    0x5a78a  7      
  leal 0x248(%rsp), %edx          #  14    0x5a791  7      
  leal 0x244(%rsp), %ecx          #  15    0x5a798  7      
  nop                             #  16    0x5a79f  1      
  leal 0xffc86a1(%rip), %r13d     #  17    0x5a7a0  7      
  movl $0x1, %ebx                 #  18    0x5a7a7  5      
  movq %rax, 0x28(%rsp)           #  19    0x5a7ac  5      
  movq %rdx, 0x30(%rsp)           #  20    0x5a7b1  5      
  movq %rcx, 0x38(%rsp)           #  21    0x5a7b6  5      
  nop                             #  22    0x5a7bb  1      
.L_5a7c0:                         #        0x5a7bc  0      
  movl %edi, %edi                 #  23    0x5a7bc  2      
  movzbl (%r15,%rdi,1), %eax      #  24    0x5a7be  5      
  addl $0x1, %edi                 #  25    0x5a7c3  3      
  leal -0x3(%rax), %ecx           #  26    0x5a7c6  3      
  movzbl %al, %edx                #  27    0x5a7c9  3      
  cmpb $0xee, %cl                 #  28    0x5a7cc  3      
  jbe .L_5a800                    #  29    0x5a7cf  6      
  nop                             #  30    0x5a7d5  1      
.L_5a7e0:                         #        0x5a7d6  0      
  nop                             #  31    0x5a7d6  1      
  nop                             #  32    0x5a7d7  1      
  callq .abort                    #  33    0x5a7d8  5      
.L_5a800:                         #        0x5a7dd  0      
  movzbl %cl, %ecx                #  34    0x5a7dd  3      
  leaq (%r13,%rcx,4), %rcx        #  35    0x5a7e0  5      
  movl %ecx, %ecx                 #  36    0x5a7e5  2      
  movslq (%r15,%rcx,1), %rcx      #  37    0x5a7e7  4      
  addq %r13, %rcx                 #  38    0x5a7eb  3      
  andl $0xffffffe0, %ecx          #  39    0x5a7ee  6      
  addq %r15, %rcx                 #  40    0x5a7f4  3      
  jmpq %rcx                       #  41    0x5a7f7  2      
  nop                             #  42    0x5a7f9  1      
  movl %edi, %edi                 #  43    0x5a7fa  2      
  movl (%r15,%rdi,1), %esi        #  44    0x5a7fc  4      
  leal 0x8(%rdi), %r14d           #  45    0x5a800  4      
  nop                             #  46    0x5a804  1      
  nop                             #  47    0x5a805  1      
.L_5a840:                         #        0x5a806  0      
  cmpl $0x3f, %ebx                #  48    0x5a806  3      
  ja .L_5a7e0                     #  49    0x5a809  6      
  leal (,%rbx,8), %eax            #  50    0x5a80f  7      
  movq %r14, %rdi                 #  51    0x5a816  3      
  addl $0x1, %ebx                 #  52    0x5a819  3      
  cltq                            #  53    0x5a81c  2      
  movl %eax, %eax                 #  54    0x5a81e  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  55    0x5a820  5      
  nop                             #  56    0x5a825  1      
.L_5a860:                         #        0x5a826  0      
  cmpl %edi, %r12d                #  57    0x5a826  3      
  ja .L_5a7c0                     #  58    0x5a829  6      
  testl %ebx, %ebx                #  59    0x5a82f  2      
  je .L_5a7e0                     #  60    0x5a831  6      
  leal -0x8(,%rbx,8), %ebx        #  61    0x5a837  7      
  movslq %ebx, %rbx               #  62    0x5a83e  3      
  nop                             #  63    0x5a841  1      
  movl %ebx, %ebx                 #  64    0x5a842  2      
  movq 0x40(%rsp,%rbx,1), %rcx    #  65    0x5a844  5      
  nop                             #  66    0x5a849  1      
  nop                             #  67    0x5a84a  1      
.L_5a8a0:                         #        0x5a84b  0      
  addl $0x258, %esp               #  68    0x5a84b  6      
  addq %r15, %rsp                 #  69    0x5a851  3      
  movq %rcx, %rax                 #  70    0x5a854  3      
  popq %rbx                       #  71    0x5a857  2      
  popq %r12                       #  72    0x5a859  3      
  popq %r13                       #  73    0x5a85c  3      
  popq %r14                       #  74    0x5a85f  3      
  popq %r11                       #  75    0x5a862  3      
  andl $0xffffffe0, %r11d         #  76    0x5a865  7      
  addq %r15, %r11                 #  77    0x5a86c  3      
  jmpq %r11                       #  78    0x5a86f  3      
  nop                             #  79    0x5a872  1      
  movl %edi, %edi                 #  80    0x5a873  2      
  movl (%r15,%rdi,1), %esi        #  81    0x5a875  4      
  leal 0x4(%rdi), %r14d           #  82    0x5a879  4      
  jmpq .L_5a840                   #  83    0x5a87d  5      
  xchgw %ax, %ax                  #  84    0x5a882  3      
  nop                             #  85    0x5a885  1      
  xorl %edx, %edx                 #  86    0x5a886  2      
  xorl %ecx, %ecx                 #  87    0x5a888  2      
  nop                             #  88    0x5a88a  1      
  nop                             #  89    0x5a88b  1      
.L_5a900:                         #        0x5a88c  0      
  movl %edi, %edi                 #  90    0x5a88c  2      
  movzbl (%r15,%rdi,1), %esi      #  91    0x5a88e  5      
  addl $0x1, %edi                 #  92    0x5a893  3      
  movl %esi, %eax                 #  93    0x5a896  2      
  andl $0x7f, %eax                #  94    0x5a898  3      
  shll %cl, %eax                  #  95    0x5a89b  2      
  addl $0x7, %ecx                 #  96    0x5a89d  3      
  orl %eax, %edx                  #  97    0x5a8a0  2      
  testb %sil, %sil                #  98    0x5a8a2  3      
  js .L_5a900                     #  99    0x5a8a5  6      
  movl 0x28(%rsp), %esi           #  100   0x5a8ab  4      
  nop                             #  101   0x5a8af  1      
  movl %edx, 0x8(%rsp)            #  102   0x5a8b0  4      
  movq %r8, (%rsp)                #  103   0x5a8b4  4      
  nop                             #  104   0x5a8b8  1      
  nop                             #  105   0x5a8b9  1      
  callq .read_sleb128             #  106   0x5a8ba  5      
  movl 0x8(%rsp), %edx            #  107   0x5a8bf  4      
  movl %eax, %r14d                #  108   0x5a8c3  3      
  movq (%rsp), %r8                #  109   0x5a8c6  4      
  cmpl $0x11, %edx                #  110   0x5a8ca  3      
  jg .L_5a7e0                     #  111   0x5a8cd  6      
  leal 0xffdbee6(%rip), %ecx      #  112   0x5a8d3  6      
  movslq %edx, %rax               #  113   0x5a8d9  3      
  nop                             #  114   0x5a8dc  1      
  leaq (%rcx,%rax,1), %rax        #  115   0x5a8dd  4      
  leal (,%rdx,4), %ecx            #  116   0x5a8e1  7      
  movl %eax, %eax                 #  117   0x5a8e8  2      
  movzbl (%r15,%rax,1), %esi      #  118   0x5a8ea  5      
  movq $0x4000000000000000, %rax  #  119   0x5a8ef  10     
  nop                             #  120   0x5a8f9  1      
  movl %r8d, %r8d                 #  121   0x5a8fa  3      
  testq %rax, 0x60(%r15,%r8,1)    #  122   0x5a8fd  5      
  movslq %ecx, %rcx               #  123   0x5a902  3      
  leaq (%r8,%rcx,1), %rcx         #  124   0x5a905  4      
  movl %ecx, %ecx                 #  125   0x5a909  2      
  movl (%r15,%rcx,1), %ecx        #  126   0x5a90b  4      
  je .L_5a9c0                     #  127   0x5a90f  6      
  addl $0x70, %edx                #  128   0x5a915  3      
  movq %rcx, %rax                 #  129   0x5a918  3      
  movslq %edx, %rdx               #  130   0x5a91b  3      
  leaq (%r8,%rdx,1), %rdx         #  131   0x5a91e  4      
  movl %edx, %edx                 #  132   0x5a922  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  133   0x5a924  6      
  jne .L_5aa00                    #  134   0x5a92a  6      
  nop                             #  135   0x5a930  1      
  nop                             #  136   0x5a931  1      
.L_5a9c0:                         #        0x5a932  0      
  movzbl %sil, %eax               #  137   0x5a932  4      
  cmpl $0x4, %eax                 #  138   0x5a936  3      
  je .L_5abc0                     #  139   0x5a939  6      
  nop                             #  140   0x5a93f  1      
  nop                             #  141   0x5a940  1      
.L_5a9e0:                         #        0x5a941  0      
  cmpl $0x8, %eax                 #  142   0x5a941  3      
  jne .L_5a7e0                    #  143   0x5a944  6      
  movl %ecx, %ecx                 #  144   0x5a94a  2      
  movq (%r15,%rcx,1), %rax        #  145   0x5a94c  4      
  xchgw %ax, %ax                  #  146   0x5a950  3      
  nop                             #  147   0x5a953  1      
.L_5aa00:                         #        0x5a954  0      
  movslq 0x24c(%rsp), %rsi        #  148   0x5a954  8      
  leaq (%rax,%rsi,1), %rsi        #  149   0x5a95c  4      
  jmpq .L_5a840                   #  150   0x5a960  5      
  nop                             #  151   0x5a965  1      
  xorl %edx, %edx                 #  152   0x5a966  2      
  xorl %ecx, %ecx                 #  153   0x5a968  2      
  movq %rdi, %r14                 #  154   0x5a96a  3      
  nop                             #  155   0x5a96d  1      
  nop                             #  156   0x5a96e  1      
.L_5aa40:                         #        0x5a96f  0      
  movl %r14d, %r14d               #  157   0x5a96f  3      
  movzbl (%r15,%r14,1), %esi      #  158   0x5a972  5      
  addl $0x1, %r14d                #  159   0x5a977  4      
  movl %esi, %eax                 #  160   0x5a97b  2      
  andl $0x7f, %eax                #  161   0x5a97d  3      
  shll %cl, %eax                  #  162   0x5a980  2      
  addl $0x7, %ecx                 #  163   0x5a982  3      
  orl %eax, %edx                  #  164   0x5a985  2      
  testb %sil, %sil                #  165   0x5a987  3      
  nop                             #  166   0x5a98a  1      
  js .L_5aa40                     #  167   0x5a98b  6      
  cmpl $0x11, %edx                #  168   0x5a991  3      
  jg .L_5a7e0                     #  169   0x5a994  6      
  leal 0xffdbdcf(%rip), %ecx      #  170   0x5a99a  6      
  movslq %edx, %rax               #  171   0x5a9a0  3      
  movq $0x4000000000000000, %rsi  #  172   0x5a9a3  10     
  xchgw %ax, %ax                  #  173   0x5a9ad  3      
  movl %r8d, %r8d                 #  174   0x5a9b0  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  175   0x5a9b3  5      
  leaq (%rcx,%rax,1), %rax        #  176   0x5a9b8  4      
  movl %eax, %eax                 #  177   0x5a9bc  2      
  movzbl (%r15,%rax,1), %ecx      #  178   0x5a9be  5      
  leal (,%rdx,4), %eax            #  179   0x5a9c3  7      
  cltq                            #  180   0x5a9ca  2      
  leaq (%r8,%rax,1), %rax         #  181   0x5a9cc  4      
  movl %eax, %eax                 #  182   0x5a9d0  2      
  movl (%r15,%rax,1), %eax        #  183   0x5a9d2  4      
  je .L_5aae0                     #  184   0x5a9d6  6      
  addl $0x70, %edx                #  185   0x5a9dc  3      
  movq %rax, %rsi                 #  186   0x5a9df  3      
  movslq %edx, %rdx               #  187   0x5a9e2  3      
  leaq (%r8,%rdx,1), %rdx         #  188   0x5a9e5  4      
  movl %edx, %edx                 #  189   0x5a9e9  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  190   0x5a9eb  6      
  nop                             #  191   0x5a9f1  1      
  jne .L_5a840                    #  192   0x5a9f2  6      
  nop                             #  193   0x5a9f8  1      
  nop                             #  194   0x5a9f9  1      
.L_5aae0:                         #        0x5a9fa  0      
  movzbl %cl, %edx                #  195   0x5a9fa  3      
  cmpl $0x4, %edx                 #  196   0x5a9fd  3      
  je .L_5b300                     #  197   0x5aa00  6      
  cmpl $0x8, %edx                 #  198   0x5aa06  3      
  jne .L_5a7e0                    #  199   0x5aa09  6      
  movl %eax, %eax                 #  200   0x5aa0f  2      
  movq (%r15,%rax,1), %rsi        #  201   0x5aa11  4      
  jmpq .L_5a840                   #  202   0x5aa15  5      
  movl 0x28(%rsp), %esi           #  203   0x5aa1a  4      
  movl %edx, 0x8(%rsp)            #  204   0x5aa1e  4      
  movq %r8, (%rsp)                #  205   0x5aa22  4      
  nop                             #  206   0x5aa26  1      
  callq .read_sleb128             #  207   0x5aa27  5      
  movl 0x8(%rsp), %edx            #  208   0x5aa2c  4      
  movl %eax, %r14d                #  209   0x5aa30  3      
  movq (%rsp), %r8                #  210   0x5aa33  4      
  leal -0x70(%rdx), %eax          #  211   0x5aa37  3      
  cmpl $0x11, %eax                #  212   0x5aa3a  3      
  jg .L_5a7e0                     #  213   0x5aa3d  6      
  movslq %eax, %rcx               #  214   0x5aa43  3      
  leal 0xffdbd00(%rip), %esi      #  215   0x5aa46  6      
  shll $0x2, %eax                 #  216   0x5aa4c  3      
  cltq                            #  217   0x5aa4f  2      
  leaq (%rsi,%rcx,1), %rcx        #  218   0x5aa51  4      
  leaq (%r8,%rax,1), %rax         #  219   0x5aa55  4      
  movl %ecx, %ecx                 #  220   0x5aa59  2      
  movzbl (%r15,%rcx,1), %edi      #  221   0x5aa5b  5      
  movl %eax, %eax                 #  222   0x5aa60  2      
  movl (%r15,%rax,1), %ecx        #  223   0x5aa62  4      
  nop                             #  224   0x5aa66  1      
  movq $0x4000000000000000, %rax  #  225   0x5aa67  10     
  movl %r8d, %r8d                 #  226   0x5aa71  3      
  testq %rax, 0x60(%r15,%r8,1)    #  227   0x5aa74  5      
  je .L_5aba0                     #  228   0x5aa79  6      
  movslq %edx, %rdx               #  229   0x5aa7f  3      
  movq %rcx, %rax                 #  230   0x5aa82  3      
  leaq (%r8,%rdx,1), %rdx         #  231   0x5aa85  4      
  xchgw %ax, %ax                  #  232   0x5aa89  3      
  movl %edx, %edx                 #  233   0x5aa8c  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  234   0x5aa8e  6      
  jne .L_5aa00                    #  235   0x5aa94  6      
  nop                             #  236   0x5aa9a  1      
  nop                             #  237   0x5aa9b  1      
.L_5aba0:                         #        0x5aa9c  0      
  movzbl %dil, %eax               #  238   0x5aa9c  4      
  cmpl $0x4, %eax                 #  239   0x5aaa0  3      
  jne .L_5a9e0                    #  240   0x5aaa3  6      
  nop                             #  241   0x5aaa9  1      
  nop                             #  242   0x5aaaa  1      
.L_5abc0:                         #        0x5aaab  0      
  movl %ecx, %ecx                 #  243   0x5aaab  2      
  movl (%r15,%rcx,1), %eax        #  244   0x5aaad  4      
  jmpq .L_5aa00                   #  245   0x5aab1  5      
  nop                             #  246   0x5aab6  1      
  nop                             #  247   0x5aab7  1      
  leal -0x30(%rdx), %esi          #  248   0x5aab8  3      
  movq %rdi, %r14                 #  249   0x5aabb  3      
  jmpq .L_5a840                   #  250   0x5aabe  5      
  nop                             #  251   0x5aac3  1      
  nop                             #  252   0x5aac4  1      
  leal -0x50(%rdx), %eax          #  253   0x5aac5  3      
  cmpl $0x11, %eax                #  254   0x5aac8  3      
  jg .L_5a7e0                     #  255   0x5aacb  6      
  leal 0xffdbc2e(%rip), %esi      #  256   0x5aad1  6      
  movslq %eax, %rcx               #  257   0x5aad7  3      
  shll $0x2, %eax                 #  258   0x5aada  3      
  cltq                            #  259   0x5aadd  2      
  leaq (%rsi,%rcx,1), %rcx        #  260   0x5aadf  4      
  xchgw %ax, %ax                  #  261   0x5aae3  3      
  movq $0x4000000000000000, %rsi  #  262   0x5aae6  10     
  movl %r8d, %r8d                 #  263   0x5aaf0  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  264   0x5aaf3  5      
  leaq (%r8,%rax,1), %rax         #  265   0x5aaf8  4      
  movl %ecx, %ecx                 #  266   0x5aafc  2      
  movzbl (%r15,%rcx,1), %ecx      #  267   0x5aafe  5      
  nop                             #  268   0x5ab03  1      
  movl %eax, %eax                 #  269   0x5ab04  2      
  movl (%r15,%rax,1), %eax        #  270   0x5ab06  4      
  je .L_5ac80                     #  271   0x5ab0a  6      
  addl $0x20, %edx                #  272   0x5ab10  3      
  movq %rax, %rsi                 #  273   0x5ab13  3      
  movslq %edx, %rdx               #  274   0x5ab16  3      
  leaq (%r8,%rdx,1), %rdx         #  275   0x5ab19  4      
  movl %edx, %edx                 #  276   0x5ab1d  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  277   0x5ab1f  6      
  nop                             #  278   0x5ab25  1      
  jne .L_5aca0                    #  279   0x5ab26  6      
  nop                             #  280   0x5ab2c  1      
  nop                             #  281   0x5ab2d  1      
.L_5ac80:                         #        0x5ab2e  0      
  movzbl %cl, %edx                #  282   0x5ab2e  3      
  cmpl $0x4, %edx                 #  283   0x5ab31  3      
  je .L_5b2e0                     #  284   0x5ab34  6      
  cmpl $0x8, %edx                 #  285   0x5ab3a  3      
  jne .L_5a7e0                    #  286   0x5ab3d  6      
  movl %eax, %eax                 #  287   0x5ab43  2      
  movq (%r15,%rax,1), %rsi        #  288   0x5ab45  4      
  nop                             #  289   0x5ab49  1      
.L_5aca0:                         #        0x5ab4a  0      
  movq %rdi, %r14                 #  290   0x5ab4a  3      
  jmpq .L_5a840                   #  291   0x5ab4d  5      
  nop                             #  292   0x5ab52  1      
  nop                             #  293   0x5ab53  1      
  testl %ebx, %ebx                #  294   0x5ab54  2      
  je .L_5a7e0                     #  295   0x5ab56  6      
  movl %edi, %edi                 #  296   0x5ab5c  2      
  movswl (%r15,%rdi,1), %edx      #  297   0x5ab5e  5      
  subl $0x1, %ebx                 #  298   0x5ab63  3      
  addl $0x2, %edi                 #  299   0x5ab66  3      
  leal (,%rbx,8), %eax            #  300   0x5ab69  7      
  cltq                            #  301   0x5ab70  2      
  xchgw %ax, %ax                  #  302   0x5ab72  3      
  movl %edx, 0x24c(%rsp)          #  303   0x5ab75  7      
  addl %edi, %edx                 #  304   0x5ab7c  2      
  movl %eax, %eax                 #  305   0x5ab7e  2      
  cmpq $0x0, 0x40(%rsp,%rax,1)    #  306   0x5ab80  6      
  cmovneq %rdx, %rdi              #  307   0x5ab86  4      
  jmpq .L_5a860                   #  308   0x5ab8a  5      
  nop                             #  309   0x5ab8f  1      
  cmpl $0x1, %ebx                 #  310   0x5ab90  3      
  jle .L_5a7e0                    #  311   0x5ab93  6      
  subl $0x2, %ebx                 #  312   0x5ab99  3      
  subl $0x1a, %eax                #  313   0x5ab9c  3      
  leal (,%rbx,8), %edx            #  314   0x5ab9f  7      
  cmpb $0x14, %al                 #  315   0x5aba6  2      
  movslq %edx, %rdx               #  316   0x5aba8  3      
  nop                             #  317   0x5abab  1      
  movl %edx, %edx                 #  318   0x5abac  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  319   0x5abae  5      
  leal 0x8(,%rbx,8), %edx         #  320   0x5abb3  7      
  movslq %edx, %rdx               #  321   0x5abba  3      
  movl %edx, %edx                 #  322   0x5abbd  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  323   0x5abbf  5      
  ja .L_5a7e0                     #  324   0x5abc4  6      
  xchgw %ax, %ax                  #  325   0x5abca  3      
  leal 0xffc84be(%rip), %edx      #  326   0x5abcd  6      
  movzbl %al, %eax                #  327   0x5abd3  3      
  leaq (%rdx,%rax,4), %rax        #  328   0x5abd6  4      
  movl %eax, %eax                 #  329   0x5abda  2      
  movslq (%r15,%rax,1), %rax      #  330   0x5abdc  4      
  addq %rdx, %rax                 #  331   0x5abe0  3      
  andl $0xffffffe0, %eax          #  332   0x5abe3  5      
  addq %r15, %rax                 #  333   0x5abe8  3      
  jmpq %rax                       #  334   0x5abeb  2      
  xchgw %ax, %ax                  #  335   0x5abed  3      
  movl %edi, %edi                 #  336   0x5abf0  2      
  movswl (%r15,%rdi,1), %eax      #  337   0x5abf2  5      
  movl %eax, 0x24c(%rsp)          #  338   0x5abf7  7      
  leal 0x2(%rax,%rdi,1), %edi     #  339   0x5abfe  4      
  jmpq .L_5a860                   #  340   0x5ac02  5      
  nop                             #  341   0x5ac07  1      
  cmpl $0x2, %ebx                 #  342   0x5ac08  3      
  jle .L_5a7e0                    #  343   0x5ac0b  6      
  leal -0x8(,%rbx,8), %ecx        #  344   0x5ac11  7      
  leal -0x18(,%rbx,8), %eax       #  345   0x5ac18  7      
  leal -0x10(,%rbx,8), %edx       #  346   0x5ac1f  7      
  xchgw %ax, %ax                  #  347   0x5ac26  3      
  movslq %ecx, %rcx               #  348   0x5ac29  3      
  cltq                            #  349   0x5ac2c  2      
  movslq %edx, %rdx               #  350   0x5ac2e  3      
  movl %ecx, %ecx                 #  351   0x5ac31  2      
  movq 0x40(%rsp,%rcx,1), %rsi    #  352   0x5ac33  5      
  movl %eax, %eax                 #  353   0x5ac38  2      
  movq 0x40(%rsp,%rax,1), %r9     #  354   0x5ac3a  5      
  movl %edx, %edx                 #  355   0x5ac3f  2      
  movq 0x40(%rsp,%rdx,1), %r10    #  356   0x5ac41  5      
  nop                             #  357   0x5ac46  1      
  movl %ecx, %ecx                 #  358   0x5ac47  2      
  movq %r10, 0x40(%rsp,%rcx,1)    #  359   0x5ac49  5      
  movl %edx, %edx                 #  360   0x5ac4e  2      
  movq %r9, 0x40(%rsp,%rdx,1)     #  361   0x5ac50  5      
  movl %eax, %eax                 #  362   0x5ac55  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  363   0x5ac57  5      
  jmpq .L_5a860                   #  364   0x5ac5c  5      
  nop                             #  365   0x5ac61  1      
  cmpl $0x1, %ebx                 #  366   0x5ac62  3      
  jle .L_5a7e0                    #  367   0x5ac65  6      
  leal -0x8(,%rbx,8), %edx        #  368   0x5ac6b  7      
  leal -0x10(,%rbx,8), %eax       #  369   0x5ac72  7      
  movslq %edx, %rdx               #  370   0x5ac79  3      
  cltq                            #  371   0x5ac7c  2      
  nop                             #  372   0x5ac7e  1      
  movl %edx, %edx                 #  373   0x5ac7f  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  374   0x5ac81  5      
  movl %eax, %eax                 #  375   0x5ac86  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  376   0x5ac88  5      
  movl %edx, %edx                 #  377   0x5ac8d  2      
  movq %rsi, 0x40(%rsp,%rdx,1)    #  378   0x5ac8f  5      
  movl %eax, %eax                 #  379   0x5ac94  2      
  movq %rcx, 0x40(%rsp,%rax,1)    #  380   0x5ac96  5      
  nop                             #  381   0x5ac9b  1      
  jmpq .L_5a860                   #  382   0x5ac9c  5      
  nop                             #  383   0x5aca1  1      
  nop                             #  384   0x5aca2  1      
  movl %edi, %edi                 #  385   0x5aca3  2      
  movzbl (%r15,%rdi,1), %eax      #  386   0x5aca5  5      
  leal -0x1(%rbx), %edx           #  387   0x5acaa  3      
  cmpl %edx, %eax                 #  388   0x5acad  2      
  movl %eax, 0x24c(%rsp)          #  389   0x5acaf  7      
  jge .L_5a7e0                    #  390   0x5acb6  6      
  subl %eax, %edx                 #  391   0x5acbc  2      
  leal 0x1(%rdi), %r14d           #  392   0x5acbe  4      
  nop                             #  393   0x5acc2  1      
  leal (,%rdx,8), %eax            #  394   0x5acc3  7      
  cltq                            #  395   0x5acca  2      
  movl %eax, %eax                 #  396   0x5accc  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  397   0x5acce  5      
  jmpq .L_5a840                   #  398   0x5acd3  5      
  nop                             #  399   0x5acd8  1      
  cmpl $0x1, %ebx                 #  400   0x5acd9  3      
  jle .L_5a7e0                    #  401   0x5acdc  6      
  leal -0x10(,%rbx,8), %eax       #  402   0x5ace2  7      
  movq %rdi, %r14                 #  403   0x5ace9  3      
  cltq                            #  404   0x5acec  2      
  movl %eax, %eax                 #  405   0x5acee  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  406   0x5acf0  5      
  nop                             #  407   0x5acf5  1      
  jmpq .L_5a840                   #  408   0x5acf6  5      
  nop                             #  409   0x5acfb  1      
  nop                             #  410   0x5acfc  1      
  testl %ebx, %ebx                #  411   0x5acfd  2      
  je .L_5a7e0                     #  412   0x5acff  6      
  subl $0x1, %ebx                 #  413   0x5ad05  3      
  jmpq .L_5a860                   #  414   0x5ad08  5      
  nop                             #  415   0x5ad0d  1      
  nop                             #  416   0x5ad0e  1      
  testl %ebx, %ebx                #  417   0x5ad0f  2      
  je .L_5a7e0                     #  418   0x5ad11  6      
  leal -0x8(,%rbx,8), %eax        #  419   0x5ad17  7      
  movq %rdi, %r14                 #  420   0x5ad1e  3      
  cltq                            #  421   0x5ad21  2      
  movl %eax, %eax                 #  422   0x5ad23  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  423   0x5ad25  5      
  jmpq .L_5a840                   #  424   0x5ad2a  5      
  movl 0x30(%rsp), %esi           #  425   0x5ad2f  4      
  movq %r8, (%rsp)                #  426   0x5ad33  4      
  nop                             #  427   0x5ad37  1      
  nop                             #  428   0x5ad38  1      
  callq .read_sleb128             #  429   0x5ad39  5      
  movslq 0x248(%rsp), %rsi        #  430   0x5ad3e  8      
  movl %eax, %r14d                #  431   0x5ad46  3      
  movq (%rsp), %r8                #  432   0x5ad49  4      
  jmpq .L_5a840                   #  433   0x5ad4d  5      
  nop                             #  434   0x5ad52  1      
  xorl %esi, %esi                 #  435   0x5ad53  2      
  xorl %ecx, %ecx                 #  436   0x5ad55  2      
  movq %rdi, %r14                 #  437   0x5ad57  3      
  nop                             #  438   0x5ad5a  1      
  nop                             #  439   0x5ad5b  1      
.L_5af60:                         #        0x5ad5c  0      
  movl %r14d, %r14d               #  440   0x5ad5c  3      
  movzbl (%r15,%r14,1), %edx      #  441   0x5ad5f  5      
  addl $0x1, %r14d                #  442   0x5ad64  4      
  movl %edx, %eax                 #  443   0x5ad68  2      
  andl $0x7f, %eax                #  444   0x5ad6a  3      
  shll %cl, %eax                  #  445   0x5ad6d  2      
  addl $0x7, %ecx                 #  446   0x5ad6f  3      
  orl %eax, %esi                  #  447   0x5ad72  2      
  testb %dl, %dl                  #  448   0x5ad74  2      
  js .L_5af60                     #  449   0x5ad76  6      
  movl %esi, %esi                 #  450   0x5ad7c  2      
  xchgw %ax, %ax                  #  451   0x5ad7e  3      
  jmpq .L_5a840                   #  452   0x5ad81  5      
  nop                             #  453   0x5ad86  1      
  nop                             #  454   0x5ad87  1      
  movl %edi, %edi                 #  455   0x5ad88  2      
  movslq (%r15,%rdi,1), %rsi      #  456   0x5ad8a  4      
  leal 0x4(%rdi), %r14d           #  457   0x5ad8e  4      
  jmpq .L_5a840                   #  458   0x5ad92  5      
  xchgw %ax, %ax                  #  459   0x5ad97  3      
  nop                             #  460   0x5ad9a  1      
  movl %edi, %edi                 #  461   0x5ad9b  2      
  movswl (%r15,%rdi,1), %esi      #  462   0x5ad9d  5      
  leal 0x2(%rdi), %r14d           #  463   0x5ada2  4      
  movslq %esi, %rsi               #  464   0x5ada6  3      
  jmpq .L_5a840                   #  465   0x5ada9  5      
  nop                             #  466   0x5adae  1      
  movl %edi, %edi                 #  467   0x5adaf  2      
  movzwl (%r15,%rdi,1), %esi      #  468   0x5adb1  5      
  leal 0x2(%rdi), %r14d           #  469   0x5adb6  4      
  jmpq .L_5a840                   #  470   0x5adba  5      
  nop                             #  471   0x5adbf  1      
  nop                             #  472   0x5adc0  1      
  movl %edi, %edi                 #  473   0x5adc1  2      
  movsbl (%r15,%rdi,1), %esi      #  474   0x5adc3  5      
  leal 0x1(%rdi), %r14d           #  475   0x5adc8  4      
  movslq %esi, %rsi               #  476   0x5adcc  3      
  jmpq .L_5a840                   #  477   0x5adcf  5      
  nop                             #  478   0x5add4  1      
  movl %edi, %edi                 #  479   0x5add5  2      
  movzbl (%r15,%rdi,1), %esi      #  480   0x5add7  5      
  leal 0x1(%rdi), %r14d           #  481   0x5addc  4      
  jmpq .L_5a840                   #  482   0x5ade0  5      
  nop                             #  483   0x5ade5  1      
  nop                             #  484   0x5ade6  1      
  movl %edi, %edi                 #  485   0x5ade7  2      
  movzbl (%r15,%rdi,1), %edx      #  486   0x5ade9  5      
  leal 0x1(%rdi), %r14d           #  487   0x5adee  4      
  cmpb $0xff, %dl                 #  488   0x5adf2  3      
  movzbl %dl, %r9d                #  489   0x5adf5  4      
  je .L_5b2a0                     #  490   0x5adf9  6      
  movl %r9d, %eax                 #  491   0x5adff  3      
  andl $0x70, %eax                #  492   0x5ae02  3      
  xchgw %ax, %ax                  #  493   0x5ae05  3      
  cmpl $0x20, %eax                #  494   0x5ae08  3      
  je .L_5b360                     #  495   0x5ae0b  6      
  jle .L_5b180                    #  496   0x5ae11  6      
  cmpl $0x40, %eax                #  497   0x5ae17  3      
  je .L_5b320                     #  498   0x5ae1a  6      
  cmpl $0x50, %eax                #  499   0x5ae20  3      
  nop                             #  500   0x5ae23  1      
  je .L_5b1a0                     #  501   0x5ae24  6      
  cmpl $0x30, %eax                #  502   0x5ae2a  3      
  jne .L_5a7e0                    #  503   0x5ae2d  6      
  movl %r8d, %edi                 #  504   0x5ae33  3      
  movb %dl, 0x8(%rsp)             #  505   0x5ae36  4      
  movq %r8, (%rsp)                #  506   0x5ae3a  4      
  movl %r9d, 0x10(%rsp)           #  507   0x5ae3e  5      
  nop                             #  508   0x5ae43  1      
  nop                             #  509   0x5ae44  1      
  nop                             #  510   0x5ae45  1      
  callq ._Unwind_GetDataRelBase   #  511   0x5ae46  5      
  movzbl 0x8(%rsp), %edx          #  512   0x5ae4b  5      
  movl %eax, %r10d                #  513   0x5ae50  3      
  movq (%rsp), %r8                #  514   0x5ae53  4      
  movl 0x10(%rsp), %r9d           #  515   0x5ae57  5      
  jmpq .L_5b1c0                   #  516   0x5ae5c  5      
  nop                             #  517   0x5ae61  1      
  testl %ebx, %ebx                #  518   0x5ae62  2      
  je .L_5a7e0                     #  519   0x5ae64  6      
  subl $0x1, %ebx                 #  520   0x5ae6a  3      
  cmpb $0x1f, %al                 #  521   0x5ae6d  2      
  leal (,%rbx,8), %edx            #  522   0x5ae6f  7      
  movslq %edx, %rdx               #  523   0x5ae76  3      
  movl %edx, %edx                 #  524   0x5ae79  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  525   0x5ae7b  5      
  xchgw %ax, %ax                  #  526   0x5ae80  3      
  je .L_5b160                     #  527   0x5ae83  6      
  jbe .L_5b140                    #  528   0x5ae89  6      
  cmpb $0x23, %al                 #  529   0x5ae8f  2      
  je .L_5b420                     #  530   0x5ae91  6      
  cmpb $0x94, %al                 #  531   0x5ae97  2      
  je .L_5b3c0                     #  532   0x5ae99  6      
  cmpb $0x20, %al                 #  533   0x5ae9f  2      
  jne .L_5a7e0                    #  534   0x5aea1  6      
  notq %rsi                       #  535   0x5aea7  3      
  nop                             #  536   0x5aeaa  1      
  movq %rdi, %r14                 #  537   0x5aeab  3      
  jmpq .L_5a840                   #  538   0x5aeae  5      
  nop                             #  539   0x5aeb3  1      
  nop                             #  540   0x5aeb4  1      
.L_5b140:                         #        0x5aeb5  0      
  cmpb $0x6, %al                  #  541   0x5aeb5  2      
  je .L_5b3a0                     #  542   0x5aeb7  6      
  cmpb $0x19, %al                 #  543   0x5aebd  2      
  jne .L_5a7e0                    #  544   0x5aebf  6      
  testq %rsi, %rsi                #  545   0x5aec5  3      
  jns .L_5aca0                    #  546   0x5aec8  6      
  nop                             #  547   0x5aece  1      
.L_5b160:                         #        0x5aecf  0      
  negq %rsi                       #  548   0x5aecf  3      
  movq %rdi, %r14                 #  549   0x5aed2  3      
  jmpq .L_5a840                   #  550   0x5aed5  5      
  nop                             #  551   0x5aeda  1      
  nop                             #  552   0x5aedb  1      
.L_5b180:                         #        0x5aedc  0      
  testl %eax, %eax                #  553   0x5aedc  2      
  je .L_5b1a0                     #  554   0x5aede  6      
  cmpl $0x10, %eax                #  555   0x5aee4  3      
  jne .L_5a7e0                    #  556   0x5aee7  6      
  nop                             #  557   0x5aeed  1      
  nop                             #  558   0x5aeee  1      
.L_5b1a0:                         #        0x5aeef  0      
  xorl %r10d, %r10d               #  559   0x5aeef  3      
  nop                             #  560   0x5aef2  1      
  nop                             #  561   0x5aef3  1      
.L_5b1c0:                         #        0x5aef4  0      
  cmpb $0x50, %dl                 #  562   0x5aef4  3      
  movq %r14, %r11                 #  563   0x5aef7  3      
  je .L_5b2c0                     #  564   0x5aefa  6      
  nop                             #  565   0x5af00  1      
  nop                             #  566   0x5af01  1      
.L_5b1e0:                         #        0x5af02  0      
  movl %r9d, %eax                 #  567   0x5af02  3      
  andl $0xf, %eax                 #  568   0x5af05  3      
  cmpl $0xc, %eax                 #  569   0x5af08  3      
  ja .L_5a7e0                     #  570   0x5af0b  6      
  leal 0xffc8063(%rip), %esi      #  571   0x5af11  6      
  movl %eax, %eax                 #  572   0x5af17  2      
  leaq (%rsi,%rax,4), %rax        #  573   0x5af19  4      
  nop                             #  574   0x5af1d  1      
  movl %eax, %eax                 #  575   0x5af1e  2      
  movslq (%r15,%rax,1), %rax      #  576   0x5af20  4      
  addq %rsi, %rax                 #  577   0x5af24  3      
  andl $0xffffffe0, %eax          #  578   0x5af27  5      
  addq %r15, %rax                 #  579   0x5af2c  3      
  jmpq %rax                       #  580   0x5af2f  2      
  nop                             #  581   0x5af31  1      
  movl %r14d, %r14d               #  582   0x5af32  3      
  movl (%r15,%r14,1), %eax        #  583   0x5af35  4      
  addl $0x4, %r14d                #  584   0x5af39  4      
  nop                             #  585   0x5af3d  1      
  nop                             #  586   0x5af3e  1      
.L_5b240:                         #        0x5af3f  0      
  xorl %esi, %esi                 #  587   0x5af3f  2      
  testl %eax, %eax                #  588   0x5af41  2      
  je .L_5a840                     #  589   0x5af43  6      
  andl $0x70, %r9d                #  590   0x5af49  4      
  cmpl $0x10, %r9d                #  591   0x5af4d  4      
  cmovel %r11d, %r10d             #  592   0x5af51  4      
  testb %dl, %dl                  #  593   0x5af55  2      
  leal (%r10,%rax,1), %eax        #  594   0x5af57  4      
  movl %eax, %esi                 #  595   0x5af5b  2      
  xchgw %ax, %ax                  #  596   0x5af5d  3      
  jns .L_5a840                    #  597   0x5af60  6      
  movl %eax, %eax                 #  598   0x5af66  2      
  movl %eax, %eax                 #  599   0x5af68  2      
  movl (%r15,%rax,1), %esi        #  600   0x5af6a  4      
  jmpq .L_5a840                   #  601   0x5af6e  5      
  nop                             #  602   0x5af73  1      
  movl %r14d, %r14d               #  603   0x5af74  3      
  movl (%r15,%r14,1), %eax        #  604   0x5af77  4      
  addl $0x8, %r14d                #  605   0x5af7b  4      
  jmpq .L_5b240                   #  606   0x5af7f  5      
  nop                             #  607   0x5af84  1      
  nop                             #  608   0x5af85  1      
.L_5b2a0:                         #        0x5af86  0      
  movq %r14, %r11                 #  609   0x5af86  3      
  xorl %r10d, %r10d               #  610   0x5af89  3      
  jmpq .L_5b1e0                   #  611   0x5af8c  5      
  nop                             #  612   0x5af91  1      
  nop                             #  613   0x5af92  1      
.L_5b2c0:                         #        0x5af93  0      
  leal 0x3(%r14), %eax            #  614   0x5af93  4      
  andl $0xfffffffc, %eax          #  615   0x5af97  5      
  leal 0x4(%rax), %r14d           #  616   0x5af9c  4      
  movl %eax, %eax                 #  617   0x5afa0  2      
  movl %eax, %eax                 #  618   0x5afa2  2      
  movl (%r15,%rax,1), %esi        #  619   0x5afa4  4      
  movl %r14d, %r14d               #  620   0x5afa8  3      
  jmpq .L_5a840                   #  621   0x5afab  5      
  nop                             #  622   0x5afb0  1      
.L_5b2e0:                         #        0x5afb1  0      
  movl %eax, %eax                 #  623   0x5afb1  2      
  movl (%r15,%rax,1), %esi        #  624   0x5afb3  4      
  jmpq .L_5aca0                   #  625   0x5afb7  5      
  nop                             #  626   0x5afbc  1      
  nop                             #  627   0x5afbd  1      
.L_5b300:                         #        0x5afbe  0      
  movl %eax, %eax                 #  628   0x5afbe  2      
  movl (%r15,%rax,1), %esi        #  629   0x5afc0  4      
  jmpq .L_5a840                   #  630   0x5afc4  5      
  nop                             #  631   0x5afc9  1      
  nop                             #  632   0x5afca  1      
.L_5b320:                         #        0x5afcb  0      
  movl %r8d, %edi                 #  633   0x5afcb  3      
  movb %dl, 0x8(%rsp)             #  634   0x5afce  4      
  movq %r8, (%rsp)                #  635   0x5afd2  4      
  movl %r9d, 0x10(%rsp)           #  636   0x5afd6  5      
  nop                             #  637   0x5afdb  1      
  callq ._Unwind_GetRegionStart   #  638   0x5afdc  5      
  movzbl 0x8(%rsp), %edx          #  639   0x5afe1  5      
  movl %eax, %r10d                #  640   0x5afe6  3      
  movq (%rsp), %r8                #  641   0x5afe9  4      
  movl 0x10(%rsp), %r9d           #  642   0x5afed  5      
  jmpq .L_5b1c0                   #  643   0x5aff2  5      
  nop                             #  644   0x5aff7  1      
.L_5b360:                         #        0x5aff8  0      
  movl %r8d, %edi                 #  645   0x5aff8  3      
  movb %dl, 0x8(%rsp)             #  646   0x5affb  4      
  movq %r8, (%rsp)                #  647   0x5afff  4      
  movl %r9d, 0x10(%rsp)           #  648   0x5b003  5      
  nop                             #  649   0x5b008  1      
  callq ._Unwind_GetTextRelBase   #  650   0x5b009  5      
  movzbl 0x8(%rsp), %edx          #  651   0x5b00e  5      
  movl %eax, %r10d                #  652   0x5b013  3      
  movq (%rsp), %r8                #  653   0x5b016  4      
  movl 0x10(%rsp), %r9d           #  654   0x5b01a  5      
  jmpq .L_5b1c0                   #  655   0x5b01f  5      
  nop                             #  656   0x5b024  1      
.L_5b3a0:                         #        0x5b025  0      
  movl %esi, %esi                 #  657   0x5b025  2      
  movq %rdi, %r14                 #  658   0x5b027  3      
  movl %esi, %esi                 #  659   0x5b02a  2      
  movl (%r15,%rsi,1), %esi        #  660   0x5b02c  4      
  jmpq .L_5a840                   #  661   0x5b030  5      
  nop                             #  662   0x5b035  1      
  nop                             #  663   0x5b036  1      
.L_5b3c0:                         #        0x5b037  0      
  movl %edi, %edi                 #  664   0x5b037  2      
  movzbl (%r15,%rdi,1), %eax      #  665   0x5b039  5      
  movl %esi, %esi                 #  666   0x5b03e  2      
  leal 0x1(%rdi), %r14d           #  667   0x5b040  4      
  cmpb $0x2, %al                  #  668   0x5b044  2      
  je .L_5b7e0                     #  669   0x5b046  6      
  jbe .L_5b480                    #  670   0x5b04c  6      
  cmpb $0x4, %al                  #  671   0x5b052  2      
  nop                             #  672   0x5b054  1      
  je .L_5b400                     #  673   0x5b055  6      
  cmpb $0x8, %al                  #  674   0x5b05b  2      
  jne .L_5a7e0                    #  675   0x5b05d  6      
  nop                             #  676   0x5b063  1      
  nop                             #  677   0x5b064  1      
.L_5b400:                         #        0x5b065  0      
  movl %esi, %esi                 #  678   0x5b065  2      
  movl (%r15,%rsi,1), %esi        #  679   0x5b067  4      
  jmpq .L_5a840                   #  680   0x5b06b  5      
  nop                             #  681   0x5b070  1      
  nop                             #  682   0x5b071  1      
.L_5b420:                         #        0x5b072  0      
  xorl %edx, %edx                 #  683   0x5b072  2      
  xorl %ecx, %ecx                 #  684   0x5b074  2      
  movq %rdi, %r14                 #  685   0x5b076  3      
  nop                             #  686   0x5b079  1      
  nop                             #  687   0x5b07a  1      
.L_5b440:                         #        0x5b07b  0      
  movl %r14d, %r14d               #  688   0x5b07b  3      
  movzbl (%r15,%r14,1), %r9d      #  689   0x5b07e  5      
  addl $0x1, %r14d                #  690   0x5b083  4      
  movl %r9d, %eax                 #  691   0x5b087  3      
  andl $0x7f, %eax                #  692   0x5b08a  3      
  shll %cl, %eax                  #  693   0x5b08d  2      
  addl $0x7, %ecx                 #  694   0x5b08f  3      
  orl %eax, %edx                  #  695   0x5b092  2      
  testb %r9b, %r9b                #  696   0x5b094  3      
  nop                             #  697   0x5b097  1      
  js .L_5b440                     #  698   0x5b098  6      
  movl %edx, %edx                 #  699   0x5b09e  2      
  addq %rdx, %rsi                 #  700   0x5b0a0  3      
  jmpq .L_5a840                   #  701   0x5b0a3  5      
  nop                             #  702   0x5b0a8  1      
  nop                             #  703   0x5b0a9  1      
.L_5b480:                         #        0x5b0aa  0      
  cmpb $0x1, %al                  #  704   0x5b0aa  2      
  jne .L_5a7e0                    #  705   0x5b0ac  6      
  movl %esi, %esi                 #  706   0x5b0b2  2      
  movzbl (%r15,%rsi,1), %esi      #  707   0x5b0b4  5      
  jmpq .L_5a840                   #  708   0x5b0b9  5      
  nop                             #  709   0x5b0be  1      
  movl 0x38(%rsp), %esi           #  710   0x5b0bf  4      
  movl %r14d, %edi                #  711   0x5b0c3  3      
  movb %dl, 0x8(%rsp)             #  712   0x5b0c6  4      
  movq %r8, (%rsp)                #  713   0x5b0ca  4      
  movl %r9d, 0x10(%rsp)           #  714   0x5b0ce  5      
  movl %r10d, 0x20(%rsp)          #  715   0x5b0d3  5      
  movq %r11, 0x18(%rsp)           #  716   0x5b0d8  5      
  xchgw %ax, %ax                  #  717   0x5b0dd  3      
  nop                             #  718   0x5b0e0  1      
  nop                             #  719   0x5b0e1  1      
  callq .read_sleb128             #  720   0x5b0e2  5      
  movzbl 0x8(%rsp), %edx          #  721   0x5b0e7  5      
  movl %eax, %r14d                #  722   0x5b0ec  3      
  movq (%rsp), %r8                #  723   0x5b0ef  4      
  movl 0x244(%rsp), %eax          #  724   0x5b0f3  7      
  movl 0x10(%rsp), %r9d           #  725   0x5b0fa  5      
  movl 0x20(%rsp), %r10d          #  726   0x5b0ff  5      
  nop                             #  727   0x5b104  1      
  movq 0x18(%rsp), %r11           #  728   0x5b105  5      
  jmpq .L_5b240                   #  729   0x5b10a  5      
  nop                             #  730   0x5b10f  1      
  nop                             #  731   0x5b110  1      
  movl %r14d, %r14d               #  732   0x5b111  3      
  movswl (%r15,%r14,1), %eax      #  733   0x5b114  5      
  addl $0x2, %r14d                #  734   0x5b119  4      
  jmpq .L_5b240                   #  735   0x5b11d  5      
  nop                             #  736   0x5b122  1      
  movl %r14d, %r14d               #  737   0x5b123  3      
  movzwl (%r15,%r14,1), %eax      #  738   0x5b126  5      
  addl $0x2, %r14d                #  739   0x5b12b  4      
  jmpq .L_5b240                   #  740   0x5b12f  5      
  nop                             #  741   0x5b134  1      
  xorl %eax, %eax                 #  742   0x5b135  2      
  xorl %ecx, %ecx                 #  743   0x5b137  2      
  movl %edx, %edi                 #  744   0x5b139  2      
  nop                             #  745   0x5b13b  1      
  nop                             #  746   0x5b13c  1      
.L_5b580:                         #        0x5b13d  0      
  movl %r14d, %r14d               #  747   0x5b13d  3      
  movzbl (%r15,%r14,1), %esi      #  748   0x5b140  5      
  addl $0x1, %r14d                #  749   0x5b145  4      
  movl %esi, %edx                 #  750   0x5b149  2      
  andl $0x7f, %edx                #  751   0x5b14b  3      
  shll %cl, %edx                  #  752   0x5b14e  2      
  addl $0x7, %ecx                 #  753   0x5b150  3      
  orl %edx, %eax                  #  754   0x5b153  2      
  testb %sil, %sil                #  755   0x5b155  3      
  nop                             #  756   0x5b158  1      
  js .L_5b580                     #  757   0x5b159  6      
  movl %edi, %edx                 #  758   0x5b15f  2      
  jmpq .L_5b240                   #  759   0x5b161  5      
  nop                             #  760   0x5b166  1      
  nop                             #  761   0x5b167  1      
  orq %rcx, %rsi                  #  762   0x5b168  3      
  movq %rdi, %r14                 #  763   0x5b16b  3      
  jmpq .L_5a840                   #  764   0x5b16e  5      
  nop                             #  765   0x5b173  1      
  nop                             #  766   0x5b174  1      
  leaq (%rcx,%rsi,1), %rsi        #  767   0x5b175  4      
  movq %rdi, %r14                 #  768   0x5b179  3      
  jmpq .L_5a840                   #  769   0x5b17c  5      
  nop                             #  770   0x5b181  1      
  nop                             #  771   0x5b182  1      
  shlq %cl, %rsi                  #  772   0x5b183  3      
  movq %rdi, %r14                 #  773   0x5b186  3      
  jmpq .L_5a840                   #  774   0x5b189  5      
  nop                             #  775   0x5b18e  1      
  nop                             #  776   0x5b18f  1      
  shrq %cl, %rsi                  #  777   0x5b190  3      
  movq %rdi, %r14                 #  778   0x5b193  3      
  jmpq .L_5a840                   #  779   0x5b196  5      
  nop                             #  780   0x5b19b  1      
  nop                             #  781   0x5b19c  1      
  sarq %cl, %rsi                  #  782   0x5b19d  3      
  movq %rdi, %r14                 #  783   0x5b1a0  3      
  jmpq .L_5a840                   #  784   0x5b1a3  5      
  nop                             #  785   0x5b1a8  1      
  nop                             #  786   0x5b1a9  1      
  cmpq %rcx, %rsi                 #  787   0x5b1aa  3      
  movq %rdi, %r14                 #  788   0x5b1ad  3      
  setg %sil                       #  789   0x5b1b0  4      
  movzbl %sil, %esi               #  790   0x5b1b4  4      
  jmpq .L_5a840                   #  791   0x5b1b8  5      
  nop                             #  792   0x5b1bd  1      
  cmpq %rcx, %rsi                 #  793   0x5b1be  3      
  movq %rdi, %r14                 #  794   0x5b1c1  3      
  setle %sil                      #  795   0x5b1c4  4      
  movzbl %sil, %esi               #  796   0x5b1c8  4      
  jmpq .L_5a840                   #  797   0x5b1cc  5      
  nop                             #  798   0x5b1d1  1      
  cmpq %rcx, %rsi                 #  799   0x5b1d2  3      
  movq %rdi, %r14                 #  800   0x5b1d5  3      
  setl %sil                       #  801   0x5b1d8  4      
  movzbl %sil, %esi               #  802   0x5b1dc  4      
  jmpq .L_5a840                   #  803   0x5b1e0  5      
  nop                             #  804   0x5b1e5  1      
  cmpq %rcx, %rsi                 #  805   0x5b1e6  3      
  movq %rdi, %r14                 #  806   0x5b1e9  3      
  setne %sil                      #  807   0x5b1ec  4      
  movzbl %sil, %esi               #  808   0x5b1f0  4      
  jmpq .L_5a840                   #  809   0x5b1f4  5      
  nop                             #  810   0x5b1f9  1      
  xorq %rcx, %rsi                 #  811   0x5b1fa  3      
  movq %rdi, %r14                 #  812   0x5b1fd  3      
  jmpq .L_5a840                   #  813   0x5b200  5      
  nop                             #  814   0x5b205  1      
  nop                             #  815   0x5b206  1      
  cmpq %rcx, %rsi                 #  816   0x5b207  3      
  movq %rdi, %r14                 #  817   0x5b20a  3      
  sete %sil                       #  818   0x5b20d  4      
  movzbl %sil, %esi               #  819   0x5b211  4      
  jmpq .L_5a840                   #  820   0x5b215  5      
  nop                             #  821   0x5b21a  1      
  cmpq %rcx, %rsi                 #  822   0x5b21b  3      
  movq %rdi, %r14                 #  823   0x5b21e  3      
  setge %sil                      #  824   0x5b221  4      
  movzbl %sil, %esi               #  825   0x5b225  4      
  jmpq .L_5a840                   #  826   0x5b229  5      
  nop                             #  827   0x5b22e  1      
  movq %rsi, %rdx                 #  828   0x5b22f  3      
  movq %rsi, %rax                 #  829   0x5b232  3      
  movq %rdi, %r14                 #  830   0x5b235  3      
  sarq $0x3f, %rdx                #  831   0x5b238  4      
  idivq %rcx                      #  832   0x5b23c  3      
  movq %rax, %rsi                 #  833   0x5b23f  3      
  jmpq .L_5a840                   #  834   0x5b242  5      
  nop                             #  835   0x5b247  1      
  subq %rcx, %rsi                 #  836   0x5b248  3      
  movq %rdi, %r14                 #  837   0x5b24b  3      
  jmpq .L_5a840                   #  838   0x5b24e  5      
  nop                             #  839   0x5b253  1      
  nop                             #  840   0x5b254  1      
  movq %rsi, %rax                 #  841   0x5b255  3      
  xorl %edx, %edx                 #  842   0x5b258  2      
  movq %rdi, %r14                 #  843   0x5b25a  3      
  divq %rcx                       #  844   0x5b25d  3      
  movq %rdx, %rsi                 #  845   0x5b260  3      
  jmpq .L_5a840                   #  846   0x5b263  5      
  nop                             #  847   0x5b268  1      
  imulq %rcx, %rsi                #  848   0x5b269  4      
  movq %rdi, %r14                 #  849   0x5b26d  3      
  jmpq .L_5a840                   #  850   0x5b270  5      
  nop                             #  851   0x5b275  1      
  nop                             #  852   0x5b276  1      
  andq %rcx, %rsi                 #  853   0x5b277  3      
  movq %rdi, %r14                 #  854   0x5b27a  3      
  jmpq .L_5a840                   #  855   0x5b27d  5      
  nop                             #  856   0x5b282  1      
  nop                             #  857   0x5b283  1      
.L_5b7e0:                         #        0x5b284  0      
  movl %esi, %esi                 #  858   0x5b284  2      
  movzwl (%r15,%rsi,1), %esi      #  859   0x5b286  5      
  jmpq .L_5a840                   #  860   0x5b28b  5      
  nop                             #  861   0x5b290  1      
  nop                             #  862   0x5b291  1      
                                                           
.size execute_stack_op, .-execute_stack_op

