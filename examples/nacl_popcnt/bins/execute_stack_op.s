  .text
  .globl execute_stack_op
  .type execute_stack_op, @function

#! file-offset 0x5a800
#! rip-offset  0x5a800
#! capacity    4256 bytes

# Text                            #  Line  RIP      Bytes  
.execute_stack_op:                #        0x5a800  0      
  pushq %r14                      #  1     0x5a800  3      
  movl %edi, %edi                 #  2     0x5a803  2      
  movl %edx, %r8d                 #  3     0x5a805  3      
  pushq %r13                      #  4     0x5a808  3      
  pushq %r12                      #  5     0x5a80b  3      
  movl %esi, %r12d                #  6     0x5a80e  3      
  pushq %rbx                      #  7     0x5a811  2      
  subl $0x258, %esp               #  8     0x5a813  6      
  addq %r15, %rsp                 #  9     0x5a819  3      
  cmpl %r12d, %edi                #  10    0x5a81c  3      
  movq %rcx, 0x40(%rsp)           #  11    0x5a81f  5      
  jae .L_5a940                    #  12    0x5a824  6      
  leal 0x24c(%rsp), %eax          #  13    0x5a82a  7      
  leal 0x248(%rsp), %edx          #  14    0x5a831  7      
  leal 0x244(%rsp), %ecx          #  15    0x5a838  7      
  nop                             #  16    0x5a83f  1      
  leal 0xffc8601(%rip), %r13d     #  17    0x5a840  7      
  movl $0x1, %ebx                 #  18    0x5a847  5      
  movq %rax, 0x28(%rsp)           #  19    0x5a84c  5      
  movq %rdx, 0x30(%rsp)           #  20    0x5a851  5      
  movq %rcx, 0x38(%rsp)           #  21    0x5a856  5      
  nop                             #  22    0x5a85b  1      
.L_5a860:                         #        0x5a85c  0      
  movl %edi, %edi                 #  23    0x5a85c  2      
  movzbl (%r15,%rdi,1), %eax      #  24    0x5a85e  5      
  addl $0x1, %edi                 #  25    0x5a863  3      
  leal -0x3(%rax), %ecx           #  26    0x5a866  3      
  movzbl %al, %edx                #  27    0x5a869  3      
  cmpb $0xee, %cl                 #  28    0x5a86c  3      
  jbe .L_5a8a0                    #  29    0x5a86f  6      
  nop                             #  30    0x5a875  1      
.L_5a880:                         #        0x5a876  0      
  nop                             #  31    0x5a876  1      
  nop                             #  32    0x5a877  1      
  callq .abort                    #  33    0x5a878  5      
.L_5a8a0:                         #        0x5a87d  0      
  movzbl %cl, %ecx                #  34    0x5a87d  3      
  leaq (%r13,%rcx,4), %rcx        #  35    0x5a880  5      
  movl %ecx, %ecx                 #  36    0x5a885  2      
  movslq (%r15,%rcx,1), %rcx      #  37    0x5a887  4      
  addq %r13, %rcx                 #  38    0x5a88b  3      
  andl $0xffffffe0, %ecx          #  39    0x5a88e  6      
  addq %r15, %rcx                 #  40    0x5a894  3      
  jmpq %rcx                       #  41    0x5a897  2      
  nop                             #  42    0x5a899  1      
  movl %edi, %edi                 #  43    0x5a89a  2      
  movl (%r15,%rdi,1), %esi        #  44    0x5a89c  4      
  leal 0x8(%rdi), %r14d           #  45    0x5a8a0  4      
  nop                             #  46    0x5a8a4  1      
  nop                             #  47    0x5a8a5  1      
.L_5a8e0:                         #        0x5a8a6  0      
  cmpl $0x3f, %ebx                #  48    0x5a8a6  3      
  ja .L_5a880                     #  49    0x5a8a9  6      
  leal (,%rbx,8), %eax            #  50    0x5a8af  7      
  movq %r14, %rdi                 #  51    0x5a8b6  3      
  addl $0x1, %ebx                 #  52    0x5a8b9  3      
  cltq                            #  53    0x5a8bc  2      
  movl %eax, %eax                 #  54    0x5a8be  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  55    0x5a8c0  5      
  nop                             #  56    0x5a8c5  1      
.L_5a900:                         #        0x5a8c6  0      
  cmpl %edi, %r12d                #  57    0x5a8c6  3      
  ja .L_5a860                     #  58    0x5a8c9  6      
  testl %ebx, %ebx                #  59    0x5a8cf  2      
  je .L_5a880                     #  60    0x5a8d1  6      
  leal -0x8(,%rbx,8), %ebx        #  61    0x5a8d7  7      
  movslq %ebx, %rbx               #  62    0x5a8de  3      
  nop                             #  63    0x5a8e1  1      
  movl %ebx, %ebx                 #  64    0x5a8e2  2      
  movq 0x40(%rsp,%rbx,1), %rcx    #  65    0x5a8e4  5      
  nop                             #  66    0x5a8e9  1      
  nop                             #  67    0x5a8ea  1      
.L_5a940:                         #        0x5a8eb  0      
  addl $0x258, %esp               #  68    0x5a8eb  6      
  addq %r15, %rsp                 #  69    0x5a8f1  3      
  movq %rcx, %rax                 #  70    0x5a8f4  3      
  popq %rbx                       #  71    0x5a8f7  2      
  popq %r12                       #  72    0x5a8f9  3      
  popq %r13                       #  73    0x5a8fc  3      
  popq %r14                       #  74    0x5a8ff  3      
  popq %r11                       #  75    0x5a902  3      
  andl $0xffffffe0, %r11d         #  76    0x5a905  7      
  addq %r15, %r11                 #  77    0x5a90c  3      
  jmpq %r11                       #  78    0x5a90f  3      
  nop                             #  79    0x5a912  1      
  movl %edi, %edi                 #  80    0x5a913  2      
  movl (%r15,%rdi,1), %esi        #  81    0x5a915  4      
  leal 0x4(%rdi), %r14d           #  82    0x5a919  4      
  jmpq .L_5a8e0                   #  83    0x5a91d  5      
  xchgw %ax, %ax                  #  84    0x5a922  3      
  nop                             #  85    0x5a925  1      
  xorl %edx, %edx                 #  86    0x5a926  2      
  xorl %ecx, %ecx                 #  87    0x5a928  2      
  nop                             #  88    0x5a92a  1      
  nop                             #  89    0x5a92b  1      
.L_5a9a0:                         #        0x5a92c  0      
  movl %edi, %edi                 #  90    0x5a92c  2      
  movzbl (%r15,%rdi,1), %esi      #  91    0x5a92e  5      
  addl $0x1, %edi                 #  92    0x5a933  3      
  movl %esi, %eax                 #  93    0x5a936  2      
  andl $0x7f, %eax                #  94    0x5a938  3      
  shll %cl, %eax                  #  95    0x5a93b  2      
  addl $0x7, %ecx                 #  96    0x5a93d  3      
  orl %eax, %edx                  #  97    0x5a940  2      
  testb %sil, %sil                #  98    0x5a942  3      
  js .L_5a9a0                     #  99    0x5a945  6      
  movl 0x28(%rsp), %esi           #  100   0x5a94b  4      
  nop                             #  101   0x5a94f  1      
  movl %edx, 0x8(%rsp)            #  102   0x5a950  4      
  movq %r8, (%rsp)                #  103   0x5a954  4      
  nop                             #  104   0x5a958  1      
  nop                             #  105   0x5a959  1      
  callq .read_sleb128             #  106   0x5a95a  5      
  movl 0x8(%rsp), %edx            #  107   0x5a95f  4      
  movl %eax, %r14d                #  108   0x5a963  3      
  movq (%rsp), %r8                #  109   0x5a966  4      
  cmpl $0x11, %edx                #  110   0x5a96a  3      
  jg .L_5a880                     #  111   0x5a96d  6      
  leal 0xffdbe46(%rip), %ecx      #  112   0x5a973  6      
  movslq %edx, %rax               #  113   0x5a979  3      
  nop                             #  114   0x5a97c  1      
  leaq (%rcx,%rax,1), %rax        #  115   0x5a97d  4      
  leal (,%rdx,4), %ecx            #  116   0x5a981  7      
  movl %eax, %eax                 #  117   0x5a988  2      
  movzbl (%r15,%rax,1), %esi      #  118   0x5a98a  5      
  movq $0x4000000000000000, %rax  #  119   0x5a98f  10     
  nop                             #  120   0x5a999  1      
  movl %r8d, %r8d                 #  121   0x5a99a  3      
  testq %rax, 0x60(%r15,%r8,1)    #  122   0x5a99d  5      
  movslq %ecx, %rcx               #  123   0x5a9a2  3      
  leaq (%r8,%rcx,1), %rcx         #  124   0x5a9a5  4      
  movl %ecx, %ecx                 #  125   0x5a9a9  2      
  movl (%r15,%rcx,1), %ecx        #  126   0x5a9ab  4      
  je .L_5aa60                     #  127   0x5a9af  6      
  addl $0x70, %edx                #  128   0x5a9b5  3      
  movq %rcx, %rax                 #  129   0x5a9b8  3      
  movslq %edx, %rdx               #  130   0x5a9bb  3      
  leaq (%r8,%rdx,1), %rdx         #  131   0x5a9be  4      
  movl %edx, %edx                 #  132   0x5a9c2  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  133   0x5a9c4  6      
  jne .L_5aaa0                    #  134   0x5a9ca  6      
  nop                             #  135   0x5a9d0  1      
  nop                             #  136   0x5a9d1  1      
.L_5aa60:                         #        0x5a9d2  0      
  movzbl %sil, %eax               #  137   0x5a9d2  4      
  cmpl $0x4, %eax                 #  138   0x5a9d6  3      
  je .L_5ac60                     #  139   0x5a9d9  6      
  nop                             #  140   0x5a9df  1      
  nop                             #  141   0x5a9e0  1      
.L_5aa80:                         #        0x5a9e1  0      
  cmpl $0x8, %eax                 #  142   0x5a9e1  3      
  jne .L_5a880                    #  143   0x5a9e4  6      
  movl %ecx, %ecx                 #  144   0x5a9ea  2      
  movq (%r15,%rcx,1), %rax        #  145   0x5a9ec  4      
  xchgw %ax, %ax                  #  146   0x5a9f0  3      
  nop                             #  147   0x5a9f3  1      
.L_5aaa0:                         #        0x5a9f4  0      
  movslq 0x24c(%rsp), %rsi        #  148   0x5a9f4  8      
  leaq (%rax,%rsi,1), %rsi        #  149   0x5a9fc  4      
  jmpq .L_5a8e0                   #  150   0x5aa00  5      
  nop                             #  151   0x5aa05  1      
  xorl %edx, %edx                 #  152   0x5aa06  2      
  xorl %ecx, %ecx                 #  153   0x5aa08  2      
  movq %rdi, %r14                 #  154   0x5aa0a  3      
  nop                             #  155   0x5aa0d  1      
  nop                             #  156   0x5aa0e  1      
.L_5aae0:                         #        0x5aa0f  0      
  movl %r14d, %r14d               #  157   0x5aa0f  3      
  movzbl (%r15,%r14,1), %esi      #  158   0x5aa12  5      
  addl $0x1, %r14d                #  159   0x5aa17  4      
  movl %esi, %eax                 #  160   0x5aa1b  2      
  andl $0x7f, %eax                #  161   0x5aa1d  3      
  shll %cl, %eax                  #  162   0x5aa20  2      
  addl $0x7, %ecx                 #  163   0x5aa22  3      
  orl %eax, %edx                  #  164   0x5aa25  2      
  testb %sil, %sil                #  165   0x5aa27  3      
  nop                             #  166   0x5aa2a  1      
  js .L_5aae0                     #  167   0x5aa2b  6      
  cmpl $0x11, %edx                #  168   0x5aa31  3      
  jg .L_5a880                     #  169   0x5aa34  6      
  leal 0xffdbd2f(%rip), %ecx      #  170   0x5aa3a  6      
  movslq %edx, %rax               #  171   0x5aa40  3      
  movq $0x4000000000000000, %rsi  #  172   0x5aa43  10     
  xchgw %ax, %ax                  #  173   0x5aa4d  3      
  movl %r8d, %r8d                 #  174   0x5aa50  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  175   0x5aa53  5      
  leaq (%rcx,%rax,1), %rax        #  176   0x5aa58  4      
  movl %eax, %eax                 #  177   0x5aa5c  2      
  movzbl (%r15,%rax,1), %ecx      #  178   0x5aa5e  5      
  leal (,%rdx,4), %eax            #  179   0x5aa63  7      
  cltq                            #  180   0x5aa6a  2      
  leaq (%r8,%rax,1), %rax         #  181   0x5aa6c  4      
  movl %eax, %eax                 #  182   0x5aa70  2      
  movl (%r15,%rax,1), %eax        #  183   0x5aa72  4      
  je .L_5ab80                     #  184   0x5aa76  6      
  addl $0x70, %edx                #  185   0x5aa7c  3      
  movq %rax, %rsi                 #  186   0x5aa7f  3      
  movslq %edx, %rdx               #  187   0x5aa82  3      
  leaq (%r8,%rdx,1), %rdx         #  188   0x5aa85  4      
  movl %edx, %edx                 #  189   0x5aa89  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  190   0x5aa8b  6      
  nop                             #  191   0x5aa91  1      
  jne .L_5a8e0                    #  192   0x5aa92  6      
  nop                             #  193   0x5aa98  1      
  nop                             #  194   0x5aa99  1      
.L_5ab80:                         #        0x5aa9a  0      
  movzbl %cl, %edx                #  195   0x5aa9a  3      
  cmpl $0x4, %edx                 #  196   0x5aa9d  3      
  je .L_5b3a0                     #  197   0x5aaa0  6      
  cmpl $0x8, %edx                 #  198   0x5aaa6  3      
  jne .L_5a880                    #  199   0x5aaa9  6      
  movl %eax, %eax                 #  200   0x5aaaf  2      
  movq (%r15,%rax,1), %rsi        #  201   0x5aab1  4      
  jmpq .L_5a8e0                   #  202   0x5aab5  5      
  movl 0x28(%rsp), %esi           #  203   0x5aaba  4      
  movl %edx, 0x8(%rsp)            #  204   0x5aabe  4      
  movq %r8, (%rsp)                #  205   0x5aac2  4      
  nop                             #  206   0x5aac6  1      
  callq .read_sleb128             #  207   0x5aac7  5      
  movl 0x8(%rsp), %edx            #  208   0x5aacc  4      
  movl %eax, %r14d                #  209   0x5aad0  3      
  movq (%rsp), %r8                #  210   0x5aad3  4      
  leal -0x70(%rdx), %eax          #  211   0x5aad7  3      
  cmpl $0x11, %eax                #  212   0x5aada  3      
  jg .L_5a880                     #  213   0x5aadd  6      
  movslq %eax, %rcx               #  214   0x5aae3  3      
  leal 0xffdbc60(%rip), %esi      #  215   0x5aae6  6      
  shll $0x2, %eax                 #  216   0x5aaec  3      
  cltq                            #  217   0x5aaef  2      
  leaq (%rsi,%rcx,1), %rcx        #  218   0x5aaf1  4      
  leaq (%r8,%rax,1), %rax         #  219   0x5aaf5  4      
  movl %ecx, %ecx                 #  220   0x5aaf9  2      
  movzbl (%r15,%rcx,1), %edi      #  221   0x5aafb  5      
  movl %eax, %eax                 #  222   0x5ab00  2      
  movl (%r15,%rax,1), %ecx        #  223   0x5ab02  4      
  nop                             #  224   0x5ab06  1      
  movq $0x4000000000000000, %rax  #  225   0x5ab07  10     
  movl %r8d, %r8d                 #  226   0x5ab11  3      
  testq %rax, 0x60(%r15,%r8,1)    #  227   0x5ab14  5      
  je .L_5ac40                     #  228   0x5ab19  6      
  movslq %edx, %rdx               #  229   0x5ab1f  3      
  movq %rcx, %rax                 #  230   0x5ab22  3      
  leaq (%r8,%rdx,1), %rdx         #  231   0x5ab25  4      
  xchgw %ax, %ax                  #  232   0x5ab29  3      
  movl %edx, %edx                 #  233   0x5ab2c  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  234   0x5ab2e  6      
  jne .L_5aaa0                    #  235   0x5ab34  6      
  nop                             #  236   0x5ab3a  1      
  nop                             #  237   0x5ab3b  1      
.L_5ac40:                         #        0x5ab3c  0      
  movzbl %dil, %eax               #  238   0x5ab3c  4      
  cmpl $0x4, %eax                 #  239   0x5ab40  3      
  jne .L_5aa80                    #  240   0x5ab43  6      
  nop                             #  241   0x5ab49  1      
  nop                             #  242   0x5ab4a  1      
.L_5ac60:                         #        0x5ab4b  0      
  movl %ecx, %ecx                 #  243   0x5ab4b  2      
  movl (%r15,%rcx,1), %eax        #  244   0x5ab4d  4      
  jmpq .L_5aaa0                   #  245   0x5ab51  5      
  nop                             #  246   0x5ab56  1      
  nop                             #  247   0x5ab57  1      
  leal -0x30(%rdx), %esi          #  248   0x5ab58  3      
  movq %rdi, %r14                 #  249   0x5ab5b  3      
  jmpq .L_5a8e0                   #  250   0x5ab5e  5      
  nop                             #  251   0x5ab63  1      
  nop                             #  252   0x5ab64  1      
  leal -0x50(%rdx), %eax          #  253   0x5ab65  3      
  cmpl $0x11, %eax                #  254   0x5ab68  3      
  jg .L_5a880                     #  255   0x5ab6b  6      
  leal 0xffdbb8e(%rip), %esi      #  256   0x5ab71  6      
  movslq %eax, %rcx               #  257   0x5ab77  3      
  shll $0x2, %eax                 #  258   0x5ab7a  3      
  cltq                            #  259   0x5ab7d  2      
  leaq (%rsi,%rcx,1), %rcx        #  260   0x5ab7f  4      
  xchgw %ax, %ax                  #  261   0x5ab83  3      
  movq $0x4000000000000000, %rsi  #  262   0x5ab86  10     
  movl %r8d, %r8d                 #  263   0x5ab90  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  264   0x5ab93  5      
  leaq (%r8,%rax,1), %rax         #  265   0x5ab98  4      
  movl %ecx, %ecx                 #  266   0x5ab9c  2      
  movzbl (%r15,%rcx,1), %ecx      #  267   0x5ab9e  5      
  nop                             #  268   0x5aba3  1      
  movl %eax, %eax                 #  269   0x5aba4  2      
  movl (%r15,%rax,1), %eax        #  270   0x5aba6  4      
  je .L_5ad20                     #  271   0x5abaa  6      
  addl $0x20, %edx                #  272   0x5abb0  3      
  movq %rax, %rsi                 #  273   0x5abb3  3      
  movslq %edx, %rdx               #  274   0x5abb6  3      
  leaq (%r8,%rdx,1), %rdx         #  275   0x5abb9  4      
  movl %edx, %edx                 #  276   0x5abbd  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  277   0x5abbf  6      
  nop                             #  278   0x5abc5  1      
  jne .L_5ad40                    #  279   0x5abc6  6      
  nop                             #  280   0x5abcc  1      
  nop                             #  281   0x5abcd  1      
.L_5ad20:                         #        0x5abce  0      
  movzbl %cl, %edx                #  282   0x5abce  3      
  cmpl $0x4, %edx                 #  283   0x5abd1  3      
  je .L_5b380                     #  284   0x5abd4  6      
  cmpl $0x8, %edx                 #  285   0x5abda  3      
  jne .L_5a880                    #  286   0x5abdd  6      
  movl %eax, %eax                 #  287   0x5abe3  2      
  movq (%r15,%rax,1), %rsi        #  288   0x5abe5  4      
  nop                             #  289   0x5abe9  1      
.L_5ad40:                         #        0x5abea  0      
  movq %rdi, %r14                 #  290   0x5abea  3      
  jmpq .L_5a8e0                   #  291   0x5abed  5      
  nop                             #  292   0x5abf2  1      
  nop                             #  293   0x5abf3  1      
  testl %ebx, %ebx                #  294   0x5abf4  2      
  je .L_5a880                     #  295   0x5abf6  6      
  movl %edi, %edi                 #  296   0x5abfc  2      
  movswl (%r15,%rdi,1), %edx      #  297   0x5abfe  5      
  subl $0x1, %ebx                 #  298   0x5ac03  3      
  addl $0x2, %edi                 #  299   0x5ac06  3      
  leal (,%rbx,8), %eax            #  300   0x5ac09  7      
  cltq                            #  301   0x5ac10  2      
  xchgw %ax, %ax                  #  302   0x5ac12  3      
  movl %edx, 0x24c(%rsp)          #  303   0x5ac15  7      
  addl %edi, %edx                 #  304   0x5ac1c  2      
  movl %eax, %eax                 #  305   0x5ac1e  2      
  cmpq $0x0, 0x40(%rsp,%rax,1)    #  306   0x5ac20  6      
  cmovneq %rdx, %rdi              #  307   0x5ac26  4      
  jmpq .L_5a900                   #  308   0x5ac2a  5      
  nop                             #  309   0x5ac2f  1      
  cmpl $0x1, %ebx                 #  310   0x5ac30  3      
  jle .L_5a880                    #  311   0x5ac33  6      
  subl $0x2, %ebx                 #  312   0x5ac39  3      
  subl $0x1a, %eax                #  313   0x5ac3c  3      
  leal (,%rbx,8), %edx            #  314   0x5ac3f  7      
  cmpb $0x14, %al                 #  315   0x5ac46  2      
  movslq %edx, %rdx               #  316   0x5ac48  3      
  nop                             #  317   0x5ac4b  1      
  movl %edx, %edx                 #  318   0x5ac4c  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  319   0x5ac4e  5      
  leal 0x8(,%rbx,8), %edx         #  320   0x5ac53  7      
  movslq %edx, %rdx               #  321   0x5ac5a  3      
  movl %edx, %edx                 #  322   0x5ac5d  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  323   0x5ac5f  5      
  ja .L_5a880                     #  324   0x5ac64  6      
  xchgw %ax, %ax                  #  325   0x5ac6a  3      
  leal 0xffc841e(%rip), %edx      #  326   0x5ac6d  6      
  movzbl %al, %eax                #  327   0x5ac73  3      
  leaq (%rdx,%rax,4), %rax        #  328   0x5ac76  4      
  movl %eax, %eax                 #  329   0x5ac7a  2      
  movslq (%r15,%rax,1), %rax      #  330   0x5ac7c  4      
  addq %rdx, %rax                 #  331   0x5ac80  3      
  andl $0xffffffe0, %eax          #  332   0x5ac83  5      
  addq %r15, %rax                 #  333   0x5ac88  3      
  jmpq %rax                       #  334   0x5ac8b  2      
  xchgw %ax, %ax                  #  335   0x5ac8d  3      
  movl %edi, %edi                 #  336   0x5ac90  2      
  movswl (%r15,%rdi,1), %eax      #  337   0x5ac92  5      
  movl %eax, 0x24c(%rsp)          #  338   0x5ac97  7      
  leal 0x2(%rax,%rdi,1), %edi     #  339   0x5ac9e  4      
  jmpq .L_5a900                   #  340   0x5aca2  5      
  nop                             #  341   0x5aca7  1      
  cmpl $0x2, %ebx                 #  342   0x5aca8  3      
  jle .L_5a880                    #  343   0x5acab  6      
  leal -0x8(,%rbx,8), %ecx        #  344   0x5acb1  7      
  leal -0x18(,%rbx,8), %eax       #  345   0x5acb8  7      
  leal -0x10(,%rbx,8), %edx       #  346   0x5acbf  7      
  xchgw %ax, %ax                  #  347   0x5acc6  3      
  movslq %ecx, %rcx               #  348   0x5acc9  3      
  cltq                            #  349   0x5accc  2      
  movslq %edx, %rdx               #  350   0x5acce  3      
  movl %ecx, %ecx                 #  351   0x5acd1  2      
  movq 0x40(%rsp,%rcx,1), %rsi    #  352   0x5acd3  5      
  movl %eax, %eax                 #  353   0x5acd8  2      
  movq 0x40(%rsp,%rax,1), %r9     #  354   0x5acda  5      
  movl %edx, %edx                 #  355   0x5acdf  2      
  movq 0x40(%rsp,%rdx,1), %r10    #  356   0x5ace1  5      
  nop                             #  357   0x5ace6  1      
  movl %ecx, %ecx                 #  358   0x5ace7  2      
  movq %r10, 0x40(%rsp,%rcx,1)    #  359   0x5ace9  5      
  movl %edx, %edx                 #  360   0x5acee  2      
  movq %r9, 0x40(%rsp,%rdx,1)     #  361   0x5acf0  5      
  movl %eax, %eax                 #  362   0x5acf5  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  363   0x5acf7  5      
  jmpq .L_5a900                   #  364   0x5acfc  5      
  nop                             #  365   0x5ad01  1      
  cmpl $0x1, %ebx                 #  366   0x5ad02  3      
  jle .L_5a880                    #  367   0x5ad05  6      
  leal -0x8(,%rbx,8), %edx        #  368   0x5ad0b  7      
  leal -0x10(,%rbx,8), %eax       #  369   0x5ad12  7      
  movslq %edx, %rdx               #  370   0x5ad19  3      
  cltq                            #  371   0x5ad1c  2      
  nop                             #  372   0x5ad1e  1      
  movl %edx, %edx                 #  373   0x5ad1f  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  374   0x5ad21  5      
  movl %eax, %eax                 #  375   0x5ad26  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  376   0x5ad28  5      
  movl %edx, %edx                 #  377   0x5ad2d  2      
  movq %rsi, 0x40(%rsp,%rdx,1)    #  378   0x5ad2f  5      
  movl %eax, %eax                 #  379   0x5ad34  2      
  movq %rcx, 0x40(%rsp,%rax,1)    #  380   0x5ad36  5      
  nop                             #  381   0x5ad3b  1      
  jmpq .L_5a900                   #  382   0x5ad3c  5      
  nop                             #  383   0x5ad41  1      
  nop                             #  384   0x5ad42  1      
  movl %edi, %edi                 #  385   0x5ad43  2      
  movzbl (%r15,%rdi,1), %eax      #  386   0x5ad45  5      
  leal -0x1(%rbx), %edx           #  387   0x5ad4a  3      
  cmpl %edx, %eax                 #  388   0x5ad4d  2      
  movl %eax, 0x24c(%rsp)          #  389   0x5ad4f  7      
  jge .L_5a880                    #  390   0x5ad56  6      
  subl %eax, %edx                 #  391   0x5ad5c  2      
  leal 0x1(%rdi), %r14d           #  392   0x5ad5e  4      
  nop                             #  393   0x5ad62  1      
  leal (,%rdx,8), %eax            #  394   0x5ad63  7      
  cltq                            #  395   0x5ad6a  2      
  movl %eax, %eax                 #  396   0x5ad6c  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  397   0x5ad6e  5      
  jmpq .L_5a8e0                   #  398   0x5ad73  5      
  nop                             #  399   0x5ad78  1      
  cmpl $0x1, %ebx                 #  400   0x5ad79  3      
  jle .L_5a880                    #  401   0x5ad7c  6      
  leal -0x10(,%rbx,8), %eax       #  402   0x5ad82  7      
  movq %rdi, %r14                 #  403   0x5ad89  3      
  cltq                            #  404   0x5ad8c  2      
  movl %eax, %eax                 #  405   0x5ad8e  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  406   0x5ad90  5      
  nop                             #  407   0x5ad95  1      
  jmpq .L_5a8e0                   #  408   0x5ad96  5      
  nop                             #  409   0x5ad9b  1      
  nop                             #  410   0x5ad9c  1      
  testl %ebx, %ebx                #  411   0x5ad9d  2      
  je .L_5a880                     #  412   0x5ad9f  6      
  subl $0x1, %ebx                 #  413   0x5ada5  3      
  jmpq .L_5a900                   #  414   0x5ada8  5      
  nop                             #  415   0x5adad  1      
  nop                             #  416   0x5adae  1      
  testl %ebx, %ebx                #  417   0x5adaf  2      
  je .L_5a880                     #  418   0x5adb1  6      
  leal -0x8(,%rbx,8), %eax        #  419   0x5adb7  7      
  movq %rdi, %r14                 #  420   0x5adbe  3      
  cltq                            #  421   0x5adc1  2      
  movl %eax, %eax                 #  422   0x5adc3  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  423   0x5adc5  5      
  jmpq .L_5a8e0                   #  424   0x5adca  5      
  movl 0x30(%rsp), %esi           #  425   0x5adcf  4      
  movq %r8, (%rsp)                #  426   0x5add3  4      
  nop                             #  427   0x5add7  1      
  nop                             #  428   0x5add8  1      
  callq .read_sleb128             #  429   0x5add9  5      
  movslq 0x248(%rsp), %rsi        #  430   0x5adde  8      
  movl %eax, %r14d                #  431   0x5ade6  3      
  movq (%rsp), %r8                #  432   0x5ade9  4      
  jmpq .L_5a8e0                   #  433   0x5aded  5      
  nop                             #  434   0x5adf2  1      
  xorl %esi, %esi                 #  435   0x5adf3  2      
  xorl %ecx, %ecx                 #  436   0x5adf5  2      
  movq %rdi, %r14                 #  437   0x5adf7  3      
  nop                             #  438   0x5adfa  1      
  nop                             #  439   0x5adfb  1      
.L_5b000:                         #        0x5adfc  0      
  movl %r14d, %r14d               #  440   0x5adfc  3      
  movzbl (%r15,%r14,1), %edx      #  441   0x5adff  5      
  addl $0x1, %r14d                #  442   0x5ae04  4      
  movl %edx, %eax                 #  443   0x5ae08  2      
  andl $0x7f, %eax                #  444   0x5ae0a  3      
  shll %cl, %eax                  #  445   0x5ae0d  2      
  addl $0x7, %ecx                 #  446   0x5ae0f  3      
  orl %eax, %esi                  #  447   0x5ae12  2      
  testb %dl, %dl                  #  448   0x5ae14  2      
  js .L_5b000                     #  449   0x5ae16  6      
  movl %esi, %esi                 #  450   0x5ae1c  2      
  xchgw %ax, %ax                  #  451   0x5ae1e  3      
  jmpq .L_5a8e0                   #  452   0x5ae21  5      
  nop                             #  453   0x5ae26  1      
  nop                             #  454   0x5ae27  1      
  movl %edi, %edi                 #  455   0x5ae28  2      
  movslq (%r15,%rdi,1), %rsi      #  456   0x5ae2a  4      
  leal 0x4(%rdi), %r14d           #  457   0x5ae2e  4      
  jmpq .L_5a8e0                   #  458   0x5ae32  5      
  xchgw %ax, %ax                  #  459   0x5ae37  3      
  nop                             #  460   0x5ae3a  1      
  movl %edi, %edi                 #  461   0x5ae3b  2      
  movswl (%r15,%rdi,1), %esi      #  462   0x5ae3d  5      
  leal 0x2(%rdi), %r14d           #  463   0x5ae42  4      
  movslq %esi, %rsi               #  464   0x5ae46  3      
  jmpq .L_5a8e0                   #  465   0x5ae49  5      
  nop                             #  466   0x5ae4e  1      
  movl %edi, %edi                 #  467   0x5ae4f  2      
  movzwl (%r15,%rdi,1), %esi      #  468   0x5ae51  5      
  leal 0x2(%rdi), %r14d           #  469   0x5ae56  4      
  jmpq .L_5a8e0                   #  470   0x5ae5a  5      
  nop                             #  471   0x5ae5f  1      
  nop                             #  472   0x5ae60  1      
  movl %edi, %edi                 #  473   0x5ae61  2      
  movsbl (%r15,%rdi,1), %esi      #  474   0x5ae63  5      
  leal 0x1(%rdi), %r14d           #  475   0x5ae68  4      
  movslq %esi, %rsi               #  476   0x5ae6c  3      
  jmpq .L_5a8e0                   #  477   0x5ae6f  5      
  nop                             #  478   0x5ae74  1      
  movl %edi, %edi                 #  479   0x5ae75  2      
  movzbl (%r15,%rdi,1), %esi      #  480   0x5ae77  5      
  leal 0x1(%rdi), %r14d           #  481   0x5ae7c  4      
  jmpq .L_5a8e0                   #  482   0x5ae80  5      
  nop                             #  483   0x5ae85  1      
  nop                             #  484   0x5ae86  1      
  movl %edi, %edi                 #  485   0x5ae87  2      
  movzbl (%r15,%rdi,1), %edx      #  486   0x5ae89  5      
  leal 0x1(%rdi), %r14d           #  487   0x5ae8e  4      
  cmpb $0xff, %dl                 #  488   0x5ae92  3      
  movzbl %dl, %r9d                #  489   0x5ae95  4      
  je .L_5b340                     #  490   0x5ae99  6      
  movl %r9d, %eax                 #  491   0x5ae9f  3      
  andl $0x70, %eax                #  492   0x5aea2  3      
  xchgw %ax, %ax                  #  493   0x5aea5  3      
  cmpl $0x20, %eax                #  494   0x5aea8  3      
  je .L_5b400                     #  495   0x5aeab  6      
  jle .L_5b220                    #  496   0x5aeb1  6      
  cmpl $0x40, %eax                #  497   0x5aeb7  3      
  je .L_5b3c0                     #  498   0x5aeba  6      
  cmpl $0x50, %eax                #  499   0x5aec0  3      
  nop                             #  500   0x5aec3  1      
  je .L_5b240                     #  501   0x5aec4  6      
  cmpl $0x30, %eax                #  502   0x5aeca  3      
  jne .L_5a880                    #  503   0x5aecd  6      
  movl %r8d, %edi                 #  504   0x5aed3  3      
  movb %dl, 0x8(%rsp)             #  505   0x5aed6  4      
  movq %r8, (%rsp)                #  506   0x5aeda  4      
  movl %r9d, 0x10(%rsp)           #  507   0x5aede  5      
  nop                             #  508   0x5aee3  1      
  nop                             #  509   0x5aee4  1      
  nop                             #  510   0x5aee5  1      
  callq ._Unwind_GetDataRelBase   #  511   0x5aee6  5      
  movzbl 0x8(%rsp), %edx          #  512   0x5aeeb  5      
  movl %eax, %r10d                #  513   0x5aef0  3      
  movq (%rsp), %r8                #  514   0x5aef3  4      
  movl 0x10(%rsp), %r9d           #  515   0x5aef7  5      
  jmpq .L_5b260                   #  516   0x5aefc  5      
  nop                             #  517   0x5af01  1      
  testl %ebx, %ebx                #  518   0x5af02  2      
  je .L_5a880                     #  519   0x5af04  6      
  subl $0x1, %ebx                 #  520   0x5af0a  3      
  cmpb $0x1f, %al                 #  521   0x5af0d  2      
  leal (,%rbx,8), %edx            #  522   0x5af0f  7      
  movslq %edx, %rdx               #  523   0x5af16  3      
  movl %edx, %edx                 #  524   0x5af19  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  525   0x5af1b  5      
  xchgw %ax, %ax                  #  526   0x5af20  3      
  je .L_5b200                     #  527   0x5af23  6      
  jbe .L_5b1e0                    #  528   0x5af29  6      
  cmpb $0x23, %al                 #  529   0x5af2f  2      
  je .L_5b4c0                     #  530   0x5af31  6      
  cmpb $0x94, %al                 #  531   0x5af37  2      
  je .L_5b460                     #  532   0x5af39  6      
  cmpb $0x20, %al                 #  533   0x5af3f  2      
  jne .L_5a880                    #  534   0x5af41  6      
  notq %rsi                       #  535   0x5af47  3      
  nop                             #  536   0x5af4a  1      
  movq %rdi, %r14                 #  537   0x5af4b  3      
  jmpq .L_5a8e0                   #  538   0x5af4e  5      
  nop                             #  539   0x5af53  1      
  nop                             #  540   0x5af54  1      
.L_5b1e0:                         #        0x5af55  0      
  cmpb $0x6, %al                  #  541   0x5af55  2      
  je .L_5b440                     #  542   0x5af57  6      
  cmpb $0x19, %al                 #  543   0x5af5d  2      
  jne .L_5a880                    #  544   0x5af5f  6      
  testq %rsi, %rsi                #  545   0x5af65  3      
  jns .L_5ad40                    #  546   0x5af68  6      
  nop                             #  547   0x5af6e  1      
.L_5b200:                         #        0x5af6f  0      
  negq %rsi                       #  548   0x5af6f  3      
  movq %rdi, %r14                 #  549   0x5af72  3      
  jmpq .L_5a8e0                   #  550   0x5af75  5      
  nop                             #  551   0x5af7a  1      
  nop                             #  552   0x5af7b  1      
.L_5b220:                         #        0x5af7c  0      
  testl %eax, %eax                #  553   0x5af7c  2      
  je .L_5b240                     #  554   0x5af7e  6      
  cmpl $0x10, %eax                #  555   0x5af84  3      
  jne .L_5a880                    #  556   0x5af87  6      
  nop                             #  557   0x5af8d  1      
  nop                             #  558   0x5af8e  1      
.L_5b240:                         #        0x5af8f  0      
  xorl %r10d, %r10d               #  559   0x5af8f  3      
  nop                             #  560   0x5af92  1      
  nop                             #  561   0x5af93  1      
.L_5b260:                         #        0x5af94  0      
  cmpb $0x50, %dl                 #  562   0x5af94  3      
  movq %r14, %r11                 #  563   0x5af97  3      
  je .L_5b360                     #  564   0x5af9a  6      
  nop                             #  565   0x5afa0  1      
  nop                             #  566   0x5afa1  1      
.L_5b280:                         #        0x5afa2  0      
  movl %r9d, %eax                 #  567   0x5afa2  3      
  andl $0xf, %eax                 #  568   0x5afa5  3      
  cmpl $0xc, %eax                 #  569   0x5afa8  3      
  ja .L_5a880                     #  570   0x5afab  6      
  leal 0xffc7fc3(%rip), %esi      #  571   0x5afb1  6      
  movl %eax, %eax                 #  572   0x5afb7  2      
  leaq (%rsi,%rax,4), %rax        #  573   0x5afb9  4      
  nop                             #  574   0x5afbd  1      
  movl %eax, %eax                 #  575   0x5afbe  2      
  movslq (%r15,%rax,1), %rax      #  576   0x5afc0  4      
  addq %rsi, %rax                 #  577   0x5afc4  3      
  andl $0xffffffe0, %eax          #  578   0x5afc7  5      
  addq %r15, %rax                 #  579   0x5afcc  3      
  jmpq %rax                       #  580   0x5afcf  2      
  nop                             #  581   0x5afd1  1      
  movl %r14d, %r14d               #  582   0x5afd2  3      
  movl (%r15,%r14,1), %eax        #  583   0x5afd5  4      
  addl $0x4, %r14d                #  584   0x5afd9  4      
  nop                             #  585   0x5afdd  1      
  nop                             #  586   0x5afde  1      
.L_5b2e0:                         #        0x5afdf  0      
  xorl %esi, %esi                 #  587   0x5afdf  2      
  testl %eax, %eax                #  588   0x5afe1  2      
  je .L_5a8e0                     #  589   0x5afe3  6      
  andl $0x70, %r9d                #  590   0x5afe9  4      
  cmpl $0x10, %r9d                #  591   0x5afed  4      
  cmovel %r11d, %r10d             #  592   0x5aff1  4      
  testb %dl, %dl                  #  593   0x5aff5  2      
  leal (%r10,%rax,1), %eax        #  594   0x5aff7  4      
  movl %eax, %esi                 #  595   0x5affb  2      
  xchgw %ax, %ax                  #  596   0x5affd  3      
  jns .L_5a8e0                    #  597   0x5b000  6      
  movl %eax, %eax                 #  598   0x5b006  2      
  movl %eax, %eax                 #  599   0x5b008  2      
  movl (%r15,%rax,1), %esi        #  600   0x5b00a  4      
  jmpq .L_5a8e0                   #  601   0x5b00e  5      
  nop                             #  602   0x5b013  1      
  movl %r14d, %r14d               #  603   0x5b014  3      
  movl (%r15,%r14,1), %eax        #  604   0x5b017  4      
  addl $0x8, %r14d                #  605   0x5b01b  4      
  jmpq .L_5b2e0                   #  606   0x5b01f  5      
  nop                             #  607   0x5b024  1      
  nop                             #  608   0x5b025  1      
.L_5b340:                         #        0x5b026  0      
  movq %r14, %r11                 #  609   0x5b026  3      
  xorl %r10d, %r10d               #  610   0x5b029  3      
  jmpq .L_5b280                   #  611   0x5b02c  5      
  nop                             #  612   0x5b031  1      
  nop                             #  613   0x5b032  1      
.L_5b360:                         #        0x5b033  0      
  leal 0x3(%r14), %eax            #  614   0x5b033  4      
  andl $0xfffffffc, %eax          #  615   0x5b037  5      
  leal 0x4(%rax), %r14d           #  616   0x5b03c  4      
  movl %eax, %eax                 #  617   0x5b040  2      
  movl %eax, %eax                 #  618   0x5b042  2      
  movl (%r15,%rax,1), %esi        #  619   0x5b044  4      
  movl %r14d, %r14d               #  620   0x5b048  3      
  jmpq .L_5a8e0                   #  621   0x5b04b  5      
  nop                             #  622   0x5b050  1      
.L_5b380:                         #        0x5b051  0      
  movl %eax, %eax                 #  623   0x5b051  2      
  movl (%r15,%rax,1), %esi        #  624   0x5b053  4      
  jmpq .L_5ad40                   #  625   0x5b057  5      
  nop                             #  626   0x5b05c  1      
  nop                             #  627   0x5b05d  1      
.L_5b3a0:                         #        0x5b05e  0      
  movl %eax, %eax                 #  628   0x5b05e  2      
  movl (%r15,%rax,1), %esi        #  629   0x5b060  4      
  jmpq .L_5a8e0                   #  630   0x5b064  5      
  nop                             #  631   0x5b069  1      
  nop                             #  632   0x5b06a  1      
.L_5b3c0:                         #        0x5b06b  0      
  movl %r8d, %edi                 #  633   0x5b06b  3      
  movb %dl, 0x8(%rsp)             #  634   0x5b06e  4      
  movq %r8, (%rsp)                #  635   0x5b072  4      
  movl %r9d, 0x10(%rsp)           #  636   0x5b076  5      
  nop                             #  637   0x5b07b  1      
  callq ._Unwind_GetRegionStart   #  638   0x5b07c  5      
  movzbl 0x8(%rsp), %edx          #  639   0x5b081  5      
  movl %eax, %r10d                #  640   0x5b086  3      
  movq (%rsp), %r8                #  641   0x5b089  4      
  movl 0x10(%rsp), %r9d           #  642   0x5b08d  5      
  jmpq .L_5b260                   #  643   0x5b092  5      
  nop                             #  644   0x5b097  1      
.L_5b400:                         #        0x5b098  0      
  movl %r8d, %edi                 #  645   0x5b098  3      
  movb %dl, 0x8(%rsp)             #  646   0x5b09b  4      
  movq %r8, (%rsp)                #  647   0x5b09f  4      
  movl %r9d, 0x10(%rsp)           #  648   0x5b0a3  5      
  nop                             #  649   0x5b0a8  1      
  callq ._Unwind_GetTextRelBase   #  650   0x5b0a9  5      
  movzbl 0x8(%rsp), %edx          #  651   0x5b0ae  5      
  movl %eax, %r10d                #  652   0x5b0b3  3      
  movq (%rsp), %r8                #  653   0x5b0b6  4      
  movl 0x10(%rsp), %r9d           #  654   0x5b0ba  5      
  jmpq .L_5b260                   #  655   0x5b0bf  5      
  nop                             #  656   0x5b0c4  1      
.L_5b440:                         #        0x5b0c5  0      
  movl %esi, %esi                 #  657   0x5b0c5  2      
  movq %rdi, %r14                 #  658   0x5b0c7  3      
  movl %esi, %esi                 #  659   0x5b0ca  2      
  movl (%r15,%rsi,1), %esi        #  660   0x5b0cc  4      
  jmpq .L_5a8e0                   #  661   0x5b0d0  5      
  nop                             #  662   0x5b0d5  1      
  nop                             #  663   0x5b0d6  1      
.L_5b460:                         #        0x5b0d7  0      
  movl %edi, %edi                 #  664   0x5b0d7  2      
  movzbl (%r15,%rdi,1), %eax      #  665   0x5b0d9  5      
  movl %esi, %esi                 #  666   0x5b0de  2      
  leal 0x1(%rdi), %r14d           #  667   0x5b0e0  4      
  cmpb $0x2, %al                  #  668   0x5b0e4  2      
  je .L_5b880                     #  669   0x5b0e6  6      
  jbe .L_5b520                    #  670   0x5b0ec  6      
  cmpb $0x4, %al                  #  671   0x5b0f2  2      
  nop                             #  672   0x5b0f4  1      
  je .L_5b4a0                     #  673   0x5b0f5  6      
  cmpb $0x8, %al                  #  674   0x5b0fb  2      
  jne .L_5a880                    #  675   0x5b0fd  6      
  nop                             #  676   0x5b103  1      
  nop                             #  677   0x5b104  1      
.L_5b4a0:                         #        0x5b105  0      
  movl %esi, %esi                 #  678   0x5b105  2      
  movl (%r15,%rsi,1), %esi        #  679   0x5b107  4      
  jmpq .L_5a8e0                   #  680   0x5b10b  5      
  nop                             #  681   0x5b110  1      
  nop                             #  682   0x5b111  1      
.L_5b4c0:                         #        0x5b112  0      
  xorl %edx, %edx                 #  683   0x5b112  2      
  xorl %ecx, %ecx                 #  684   0x5b114  2      
  movq %rdi, %r14                 #  685   0x5b116  3      
  nop                             #  686   0x5b119  1      
  nop                             #  687   0x5b11a  1      
.L_5b4e0:                         #        0x5b11b  0      
  movl %r14d, %r14d               #  688   0x5b11b  3      
  movzbl (%r15,%r14,1), %r9d      #  689   0x5b11e  5      
  addl $0x1, %r14d                #  690   0x5b123  4      
  movl %r9d, %eax                 #  691   0x5b127  3      
  andl $0x7f, %eax                #  692   0x5b12a  3      
  shll %cl, %eax                  #  693   0x5b12d  2      
  addl $0x7, %ecx                 #  694   0x5b12f  3      
  orl %eax, %edx                  #  695   0x5b132  2      
  testb %r9b, %r9b                #  696   0x5b134  3      
  nop                             #  697   0x5b137  1      
  js .L_5b4e0                     #  698   0x5b138  6      
  movl %edx, %edx                 #  699   0x5b13e  2      
  addq %rdx, %rsi                 #  700   0x5b140  3      
  jmpq .L_5a8e0                   #  701   0x5b143  5      
  nop                             #  702   0x5b148  1      
  nop                             #  703   0x5b149  1      
.L_5b520:                         #        0x5b14a  0      
  cmpb $0x1, %al                  #  704   0x5b14a  2      
  jne .L_5a880                    #  705   0x5b14c  6      
  movl %esi, %esi                 #  706   0x5b152  2      
  movzbl (%r15,%rsi,1), %esi      #  707   0x5b154  5      
  jmpq .L_5a8e0                   #  708   0x5b159  5      
  nop                             #  709   0x5b15e  1      
  movl 0x38(%rsp), %esi           #  710   0x5b15f  4      
  movl %r14d, %edi                #  711   0x5b163  3      
  movb %dl, 0x8(%rsp)             #  712   0x5b166  4      
  movq %r8, (%rsp)                #  713   0x5b16a  4      
  movl %r9d, 0x10(%rsp)           #  714   0x5b16e  5      
  movl %r10d, 0x20(%rsp)          #  715   0x5b173  5      
  movq %r11, 0x18(%rsp)           #  716   0x5b178  5      
  xchgw %ax, %ax                  #  717   0x5b17d  3      
  nop                             #  718   0x5b180  1      
  nop                             #  719   0x5b181  1      
  callq .read_sleb128             #  720   0x5b182  5      
  movzbl 0x8(%rsp), %edx          #  721   0x5b187  5      
  movl %eax, %r14d                #  722   0x5b18c  3      
  movq (%rsp), %r8                #  723   0x5b18f  4      
  movl 0x244(%rsp), %eax          #  724   0x5b193  7      
  movl 0x10(%rsp), %r9d           #  725   0x5b19a  5      
  movl 0x20(%rsp), %r10d          #  726   0x5b19f  5      
  nop                             #  727   0x5b1a4  1      
  movq 0x18(%rsp), %r11           #  728   0x5b1a5  5      
  jmpq .L_5b2e0                   #  729   0x5b1aa  5      
  nop                             #  730   0x5b1af  1      
  nop                             #  731   0x5b1b0  1      
  movl %r14d, %r14d               #  732   0x5b1b1  3      
  movswl (%r15,%r14,1), %eax      #  733   0x5b1b4  5      
  addl $0x2, %r14d                #  734   0x5b1b9  4      
  jmpq .L_5b2e0                   #  735   0x5b1bd  5      
  nop                             #  736   0x5b1c2  1      
  movl %r14d, %r14d               #  737   0x5b1c3  3      
  movzwl (%r15,%r14,1), %eax      #  738   0x5b1c6  5      
  addl $0x2, %r14d                #  739   0x5b1cb  4      
  jmpq .L_5b2e0                   #  740   0x5b1cf  5      
  nop                             #  741   0x5b1d4  1      
  xorl %eax, %eax                 #  742   0x5b1d5  2      
  xorl %ecx, %ecx                 #  743   0x5b1d7  2      
  movl %edx, %edi                 #  744   0x5b1d9  2      
  nop                             #  745   0x5b1db  1      
  nop                             #  746   0x5b1dc  1      
.L_5b620:                         #        0x5b1dd  0      
  movl %r14d, %r14d               #  747   0x5b1dd  3      
  movzbl (%r15,%r14,1), %esi      #  748   0x5b1e0  5      
  addl $0x1, %r14d                #  749   0x5b1e5  4      
  movl %esi, %edx                 #  750   0x5b1e9  2      
  andl $0x7f, %edx                #  751   0x5b1eb  3      
  shll %cl, %edx                  #  752   0x5b1ee  2      
  addl $0x7, %ecx                 #  753   0x5b1f0  3      
  orl %edx, %eax                  #  754   0x5b1f3  2      
  testb %sil, %sil                #  755   0x5b1f5  3      
  nop                             #  756   0x5b1f8  1      
  js .L_5b620                     #  757   0x5b1f9  6      
  movl %edi, %edx                 #  758   0x5b1ff  2      
  jmpq .L_5b2e0                   #  759   0x5b201  5      
  nop                             #  760   0x5b206  1      
  nop                             #  761   0x5b207  1      
  orq %rcx, %rsi                  #  762   0x5b208  3      
  movq %rdi, %r14                 #  763   0x5b20b  3      
  jmpq .L_5a8e0                   #  764   0x5b20e  5      
  nop                             #  765   0x5b213  1      
  nop                             #  766   0x5b214  1      
  leaq (%rcx,%rsi,1), %rsi        #  767   0x5b215  4      
  movq %rdi, %r14                 #  768   0x5b219  3      
  jmpq .L_5a8e0                   #  769   0x5b21c  5      
  nop                             #  770   0x5b221  1      
  nop                             #  771   0x5b222  1      
  shlq %cl, %rsi                  #  772   0x5b223  3      
  movq %rdi, %r14                 #  773   0x5b226  3      
  jmpq .L_5a8e0                   #  774   0x5b229  5      
  nop                             #  775   0x5b22e  1      
  nop                             #  776   0x5b22f  1      
  shrq %cl, %rsi                  #  777   0x5b230  3      
  movq %rdi, %r14                 #  778   0x5b233  3      
  jmpq .L_5a8e0                   #  779   0x5b236  5      
  nop                             #  780   0x5b23b  1      
  nop                             #  781   0x5b23c  1      
  sarq %cl, %rsi                  #  782   0x5b23d  3      
  movq %rdi, %r14                 #  783   0x5b240  3      
  jmpq .L_5a8e0                   #  784   0x5b243  5      
  nop                             #  785   0x5b248  1      
  nop                             #  786   0x5b249  1      
  cmpq %rcx, %rsi                 #  787   0x5b24a  3      
  movq %rdi, %r14                 #  788   0x5b24d  3      
  setg %sil                       #  789   0x5b250  4      
  movzbl %sil, %esi               #  790   0x5b254  4      
  jmpq .L_5a8e0                   #  791   0x5b258  5      
  nop                             #  792   0x5b25d  1      
  cmpq %rcx, %rsi                 #  793   0x5b25e  3      
  movq %rdi, %r14                 #  794   0x5b261  3      
  setle %sil                      #  795   0x5b264  4      
  movzbl %sil, %esi               #  796   0x5b268  4      
  jmpq .L_5a8e0                   #  797   0x5b26c  5      
  nop                             #  798   0x5b271  1      
  cmpq %rcx, %rsi                 #  799   0x5b272  3      
  movq %rdi, %r14                 #  800   0x5b275  3      
  setl %sil                       #  801   0x5b278  4      
  movzbl %sil, %esi               #  802   0x5b27c  4      
  jmpq .L_5a8e0                   #  803   0x5b280  5      
  nop                             #  804   0x5b285  1      
  cmpq %rcx, %rsi                 #  805   0x5b286  3      
  movq %rdi, %r14                 #  806   0x5b289  3      
  setne %sil                      #  807   0x5b28c  4      
  movzbl %sil, %esi               #  808   0x5b290  4      
  jmpq .L_5a8e0                   #  809   0x5b294  5      
  nop                             #  810   0x5b299  1      
  xorq %rcx, %rsi                 #  811   0x5b29a  3      
  movq %rdi, %r14                 #  812   0x5b29d  3      
  jmpq .L_5a8e0                   #  813   0x5b2a0  5      
  nop                             #  814   0x5b2a5  1      
  nop                             #  815   0x5b2a6  1      
  cmpq %rcx, %rsi                 #  816   0x5b2a7  3      
  movq %rdi, %r14                 #  817   0x5b2aa  3      
  sete %sil                       #  818   0x5b2ad  4      
  movzbl %sil, %esi               #  819   0x5b2b1  4      
  jmpq .L_5a8e0                   #  820   0x5b2b5  5      
  nop                             #  821   0x5b2ba  1      
  cmpq %rcx, %rsi                 #  822   0x5b2bb  3      
  movq %rdi, %r14                 #  823   0x5b2be  3      
  setge %sil                      #  824   0x5b2c1  4      
  movzbl %sil, %esi               #  825   0x5b2c5  4      
  jmpq .L_5a8e0                   #  826   0x5b2c9  5      
  nop                             #  827   0x5b2ce  1      
  movq %rsi, %rdx                 #  828   0x5b2cf  3      
  movq %rsi, %rax                 #  829   0x5b2d2  3      
  movq %rdi, %r14                 #  830   0x5b2d5  3      
  sarq $0x3f, %rdx                #  831   0x5b2d8  4      
  idivq %rcx                      #  832   0x5b2dc  3      
  movq %rax, %rsi                 #  833   0x5b2df  3      
  jmpq .L_5a8e0                   #  834   0x5b2e2  5      
  nop                             #  835   0x5b2e7  1      
  subq %rcx, %rsi                 #  836   0x5b2e8  3      
  movq %rdi, %r14                 #  837   0x5b2eb  3      
  jmpq .L_5a8e0                   #  838   0x5b2ee  5      
  nop                             #  839   0x5b2f3  1      
  nop                             #  840   0x5b2f4  1      
  movq %rsi, %rax                 #  841   0x5b2f5  3      
  xorl %edx, %edx                 #  842   0x5b2f8  2      
  movq %rdi, %r14                 #  843   0x5b2fa  3      
  divq %rcx                       #  844   0x5b2fd  3      
  movq %rdx, %rsi                 #  845   0x5b300  3      
  jmpq .L_5a8e0                   #  846   0x5b303  5      
  nop                             #  847   0x5b308  1      
  imulq %rcx, %rsi                #  848   0x5b309  4      
  movq %rdi, %r14                 #  849   0x5b30d  3      
  jmpq .L_5a8e0                   #  850   0x5b310  5      
  nop                             #  851   0x5b315  1      
  nop                             #  852   0x5b316  1      
  andq %rcx, %rsi                 #  853   0x5b317  3      
  movq %rdi, %r14                 #  854   0x5b31a  3      
  jmpq .L_5a8e0                   #  855   0x5b31d  5      
  nop                             #  856   0x5b322  1      
  nop                             #  857   0x5b323  1      
.L_5b880:                         #        0x5b324  0      
  movl %esi, %esi                 #  858   0x5b324  2      
  movzwl (%r15,%rsi,1), %esi      #  859   0x5b326  5      
  jmpq .L_5a8e0                   #  860   0x5b32b  5      
  nop                             #  861   0x5b330  1      
  nop                             #  862   0x5b331  1      
                                                           
.size execute_stack_op, .-execute_stack_op

