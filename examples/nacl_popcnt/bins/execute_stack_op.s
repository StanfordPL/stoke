  .text
  .globl execute_stack_op
  .type execute_stack_op, @function

#! file-offset 0x5a780
#! rip-offset  0x5a780
#! capacity    4256 bytes

# Text                            #  Line  RIP      Bytes  
.execute_stack_op:                #        0x5a780  0      
  pushq %r14                      #  1     0x5a780  3      
  movl %edi, %edi                 #  2     0x5a783  2      
  movl %edx, %r8d                 #  3     0x5a785  3      
  pushq %r13                      #  4     0x5a788  3      
  pushq %r12                      #  5     0x5a78b  3      
  movl %esi, %r12d                #  6     0x5a78e  3      
  pushq %rbx                      #  7     0x5a791  2      
  subl $0x258, %esp               #  8     0x5a793  6      
  addq %r15, %rsp                 #  9     0x5a799  3      
  cmpl %r12d, %edi                #  10    0x5a79c  3      
  movq %rcx, 0x40(%rsp)           #  11    0x5a79f  5      
  jae .L_5a8c0                    #  12    0x5a7a4  6      
  leal 0x24c(%rsp), %eax          #  13    0x5a7aa  7      
  leal 0x248(%rsp), %edx          #  14    0x5a7b1  7      
  leal 0x244(%rsp), %ecx          #  15    0x5a7b8  7      
  nop                             #  16    0x5a7bf  1      
  leal 0xffc8681(%rip), %r13d     #  17    0x5a7c0  7      
  movl $0x1, %ebx                 #  18    0x5a7c7  5      
  movq %rax, 0x28(%rsp)           #  19    0x5a7cc  5      
  movq %rdx, 0x30(%rsp)           #  20    0x5a7d1  5      
  movq %rcx, 0x38(%rsp)           #  21    0x5a7d6  5      
  nop                             #  22    0x5a7db  1      
.L_5a7e0:                         #        0x5a7dc  0      
  movl %edi, %edi                 #  23    0x5a7dc  2      
  movzbl (%r15,%rdi,1), %eax      #  24    0x5a7de  5      
  addl $0x1, %edi                 #  25    0x5a7e3  3      
  leal -0x3(%rax), %ecx           #  26    0x5a7e6  3      
  movzbl %al, %edx                #  27    0x5a7e9  3      
  cmpb $0xee, %cl                 #  28    0x5a7ec  3      
  jbe .L_5a820                    #  29    0x5a7ef  6      
  nop                             #  30    0x5a7f5  1      
.L_5a800:                         #        0x5a7f6  0      
  nop                             #  31    0x5a7f6  1      
  nop                             #  32    0x5a7f7  1      
  callq .abort                    #  33    0x5a7f8  5      
.L_5a820:                         #        0x5a7fd  0      
  movzbl %cl, %ecx                #  34    0x5a7fd  3      
  leaq (%r13,%rcx,4), %rcx        #  35    0x5a800  5      
  movl %ecx, %ecx                 #  36    0x5a805  2      
  movslq (%r15,%rcx,1), %rcx      #  37    0x5a807  4      
  addq %r13, %rcx                 #  38    0x5a80b  3      
  andl $0xffffffe0, %ecx          #  39    0x5a80e  6      
  addq %r15, %rcx                 #  40    0x5a814  3      
  jmpq %rcx                       #  41    0x5a817  2      
  nop                             #  42    0x5a819  1      
  movl %edi, %edi                 #  43    0x5a81a  2      
  movl (%r15,%rdi,1), %esi        #  44    0x5a81c  4      
  leal 0x8(%rdi), %r14d           #  45    0x5a820  4      
  nop                             #  46    0x5a824  1      
  nop                             #  47    0x5a825  1      
.L_5a860:                         #        0x5a826  0      
  cmpl $0x3f, %ebx                #  48    0x5a826  3      
  ja .L_5a800                     #  49    0x5a829  6      
  leal (,%rbx,8), %eax            #  50    0x5a82f  7      
  movq %r14, %rdi                 #  51    0x5a836  3      
  addl $0x1, %ebx                 #  52    0x5a839  3      
  cltq                            #  53    0x5a83c  2      
  movl %eax, %eax                 #  54    0x5a83e  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  55    0x5a840  5      
  nop                             #  56    0x5a845  1      
.L_5a880:                         #        0x5a846  0      
  cmpl %edi, %r12d                #  57    0x5a846  3      
  ja .L_5a7e0                     #  58    0x5a849  6      
  testl %ebx, %ebx                #  59    0x5a84f  2      
  je .L_5a800                     #  60    0x5a851  6      
  leal -0x8(,%rbx,8), %ebx        #  61    0x5a857  7      
  movslq %ebx, %rbx               #  62    0x5a85e  3      
  nop                             #  63    0x5a861  1      
  movl %ebx, %ebx                 #  64    0x5a862  2      
  movq 0x40(%rsp,%rbx,1), %rcx    #  65    0x5a864  5      
  nop                             #  66    0x5a869  1      
  nop                             #  67    0x5a86a  1      
.L_5a8c0:                         #        0x5a86b  0      
  addl $0x258, %esp               #  68    0x5a86b  6      
  addq %r15, %rsp                 #  69    0x5a871  3      
  movq %rcx, %rax                 #  70    0x5a874  3      
  popq %rbx                       #  71    0x5a877  2      
  popq %r12                       #  72    0x5a879  3      
  popq %r13                       #  73    0x5a87c  3      
  popq %r14                       #  74    0x5a87f  3      
  popq %r11                       #  75    0x5a882  3      
  andl $0xffffffe0, %r11d         #  76    0x5a885  7      
  addq %r15, %r11                 #  77    0x5a88c  3      
  jmpq %r11                       #  78    0x5a88f  3      
  nop                             #  79    0x5a892  1      
  movl %edi, %edi                 #  80    0x5a893  2      
  movl (%r15,%rdi,1), %esi        #  81    0x5a895  4      
  leal 0x4(%rdi), %r14d           #  82    0x5a899  4      
  jmpq .L_5a860                   #  83    0x5a89d  5      
  xchgw %ax, %ax                  #  84    0x5a8a2  3      
  nop                             #  85    0x5a8a5  1      
  xorl %edx, %edx                 #  86    0x5a8a6  2      
  xorl %ecx, %ecx                 #  87    0x5a8a8  2      
  nop                             #  88    0x5a8aa  1      
  nop                             #  89    0x5a8ab  1      
.L_5a920:                         #        0x5a8ac  0      
  movl %edi, %edi                 #  90    0x5a8ac  2      
  movzbl (%r15,%rdi,1), %esi      #  91    0x5a8ae  5      
  addl $0x1, %edi                 #  92    0x5a8b3  3      
  movl %esi, %eax                 #  93    0x5a8b6  2      
  andl $0x7f, %eax                #  94    0x5a8b8  3      
  shll %cl, %eax                  #  95    0x5a8bb  2      
  addl $0x7, %ecx                 #  96    0x5a8bd  3      
  orl %eax, %edx                  #  97    0x5a8c0  2      
  testb %sil, %sil                #  98    0x5a8c2  3      
  js .L_5a920                     #  99    0x5a8c5  6      
  movl 0x28(%rsp), %esi           #  100   0x5a8cb  4      
  nop                             #  101   0x5a8cf  1      
  movl %edx, 0x8(%rsp)            #  102   0x5a8d0  4      
  movq %r8, (%rsp)                #  103   0x5a8d4  4      
  nop                             #  104   0x5a8d8  1      
  nop                             #  105   0x5a8d9  1      
  callq .read_sleb128             #  106   0x5a8da  5      
  movl 0x8(%rsp), %edx            #  107   0x5a8df  4      
  movl %eax, %r14d                #  108   0x5a8e3  3      
  movq (%rsp), %r8                #  109   0x5a8e6  4      
  cmpl $0x11, %edx                #  110   0x5a8ea  3      
  jg .L_5a800                     #  111   0x5a8ed  6      
  leal 0xffdbec6(%rip), %ecx      #  112   0x5a8f3  6      
  movslq %edx, %rax               #  113   0x5a8f9  3      
  nop                             #  114   0x5a8fc  1      
  leaq (%rcx,%rax,1), %rax        #  115   0x5a8fd  4      
  leal (,%rdx,4), %ecx            #  116   0x5a901  7      
  movl %eax, %eax                 #  117   0x5a908  2      
  movzbl (%r15,%rax,1), %esi      #  118   0x5a90a  5      
  movq $0x4000000000000000, %rax  #  119   0x5a90f  10     
  nop                             #  120   0x5a919  1      
  movl %r8d, %r8d                 #  121   0x5a91a  3      
  testq %rax, 0x60(%r15,%r8,1)    #  122   0x5a91d  5      
  movslq %ecx, %rcx               #  123   0x5a922  3      
  leaq (%r8,%rcx,1), %rcx         #  124   0x5a925  4      
  movl %ecx, %ecx                 #  125   0x5a929  2      
  movl (%r15,%rcx,1), %ecx        #  126   0x5a92b  4      
  je .L_5a9e0                     #  127   0x5a92f  6      
  addl $0x70, %edx                #  128   0x5a935  3      
  movq %rcx, %rax                 #  129   0x5a938  3      
  movslq %edx, %rdx               #  130   0x5a93b  3      
  leaq (%r8,%rdx,1), %rdx         #  131   0x5a93e  4      
  movl %edx, %edx                 #  132   0x5a942  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  133   0x5a944  6      
  jne .L_5aa20                    #  134   0x5a94a  6      
  nop                             #  135   0x5a950  1      
  nop                             #  136   0x5a951  1      
.L_5a9e0:                         #        0x5a952  0      
  movzbl %sil, %eax               #  137   0x5a952  4      
  cmpl $0x4, %eax                 #  138   0x5a956  3      
  je .L_5abe0                     #  139   0x5a959  6      
  nop                             #  140   0x5a95f  1      
  nop                             #  141   0x5a960  1      
.L_5aa00:                         #        0x5a961  0      
  cmpl $0x8, %eax                 #  142   0x5a961  3      
  jne .L_5a800                    #  143   0x5a964  6      
  movl %ecx, %ecx                 #  144   0x5a96a  2      
  movq (%r15,%rcx,1), %rax        #  145   0x5a96c  4      
  xchgw %ax, %ax                  #  146   0x5a970  3      
  nop                             #  147   0x5a973  1      
.L_5aa20:                         #        0x5a974  0      
  movslq 0x24c(%rsp), %rsi        #  148   0x5a974  8      
  leaq (%rax,%rsi,1), %rsi        #  149   0x5a97c  4      
  jmpq .L_5a860                   #  150   0x5a980  5      
  nop                             #  151   0x5a985  1      
  xorl %edx, %edx                 #  152   0x5a986  2      
  xorl %ecx, %ecx                 #  153   0x5a988  2      
  movq %rdi, %r14                 #  154   0x5a98a  3      
  nop                             #  155   0x5a98d  1      
  nop                             #  156   0x5a98e  1      
.L_5aa60:                         #        0x5a98f  0      
  movl %r14d, %r14d               #  157   0x5a98f  3      
  movzbl (%r15,%r14,1), %esi      #  158   0x5a992  5      
  addl $0x1, %r14d                #  159   0x5a997  4      
  movl %esi, %eax                 #  160   0x5a99b  2      
  andl $0x7f, %eax                #  161   0x5a99d  3      
  shll %cl, %eax                  #  162   0x5a9a0  2      
  addl $0x7, %ecx                 #  163   0x5a9a2  3      
  orl %eax, %edx                  #  164   0x5a9a5  2      
  testb %sil, %sil                #  165   0x5a9a7  3      
  nop                             #  166   0x5a9aa  1      
  js .L_5aa60                     #  167   0x5a9ab  6      
  cmpl $0x11, %edx                #  168   0x5a9b1  3      
  jg .L_5a800                     #  169   0x5a9b4  6      
  leal 0xffdbdaf(%rip), %ecx      #  170   0x5a9ba  6      
  movslq %edx, %rax               #  171   0x5a9c0  3      
  movq $0x4000000000000000, %rsi  #  172   0x5a9c3  10     
  xchgw %ax, %ax                  #  173   0x5a9cd  3      
  movl %r8d, %r8d                 #  174   0x5a9d0  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  175   0x5a9d3  5      
  leaq (%rcx,%rax,1), %rax        #  176   0x5a9d8  4      
  movl %eax, %eax                 #  177   0x5a9dc  2      
  movzbl (%r15,%rax,1), %ecx      #  178   0x5a9de  5      
  leal (,%rdx,4), %eax            #  179   0x5a9e3  7      
  cltq                            #  180   0x5a9ea  2      
  leaq (%r8,%rax,1), %rax         #  181   0x5a9ec  4      
  movl %eax, %eax                 #  182   0x5a9f0  2      
  movl (%r15,%rax,1), %eax        #  183   0x5a9f2  4      
  je .L_5ab00                     #  184   0x5a9f6  6      
  addl $0x70, %edx                #  185   0x5a9fc  3      
  movq %rax, %rsi                 #  186   0x5a9ff  3      
  movslq %edx, %rdx               #  187   0x5aa02  3      
  leaq (%r8,%rdx,1), %rdx         #  188   0x5aa05  4      
  movl %edx, %edx                 #  189   0x5aa09  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  190   0x5aa0b  6      
  nop                             #  191   0x5aa11  1      
  jne .L_5a860                    #  192   0x5aa12  6      
  nop                             #  193   0x5aa18  1      
  nop                             #  194   0x5aa19  1      
.L_5ab00:                         #        0x5aa1a  0      
  movzbl %cl, %edx                #  195   0x5aa1a  3      
  cmpl $0x4, %edx                 #  196   0x5aa1d  3      
  je .L_5b320                     #  197   0x5aa20  6      
  cmpl $0x8, %edx                 #  198   0x5aa26  3      
  jne .L_5a800                    #  199   0x5aa29  6      
  movl %eax, %eax                 #  200   0x5aa2f  2      
  movq (%r15,%rax,1), %rsi        #  201   0x5aa31  4      
  jmpq .L_5a860                   #  202   0x5aa35  5      
  movl 0x28(%rsp), %esi           #  203   0x5aa3a  4      
  movl %edx, 0x8(%rsp)            #  204   0x5aa3e  4      
  movq %r8, (%rsp)                #  205   0x5aa42  4      
  nop                             #  206   0x5aa46  1      
  callq .read_sleb128             #  207   0x5aa47  5      
  movl 0x8(%rsp), %edx            #  208   0x5aa4c  4      
  movl %eax, %r14d                #  209   0x5aa50  3      
  movq (%rsp), %r8                #  210   0x5aa53  4      
  leal -0x70(%rdx), %eax          #  211   0x5aa57  3      
  cmpl $0x11, %eax                #  212   0x5aa5a  3      
  jg .L_5a800                     #  213   0x5aa5d  6      
  movslq %eax, %rcx               #  214   0x5aa63  3      
  leal 0xffdbce0(%rip), %esi      #  215   0x5aa66  6      
  shll $0x2, %eax                 #  216   0x5aa6c  3      
  cltq                            #  217   0x5aa6f  2      
  leaq (%rsi,%rcx,1), %rcx        #  218   0x5aa71  4      
  leaq (%r8,%rax,1), %rax         #  219   0x5aa75  4      
  movl %ecx, %ecx                 #  220   0x5aa79  2      
  movzbl (%r15,%rcx,1), %edi      #  221   0x5aa7b  5      
  movl %eax, %eax                 #  222   0x5aa80  2      
  movl (%r15,%rax,1), %ecx        #  223   0x5aa82  4      
  nop                             #  224   0x5aa86  1      
  movq $0x4000000000000000, %rax  #  225   0x5aa87  10     
  movl %r8d, %r8d                 #  226   0x5aa91  3      
  testq %rax, 0x60(%r15,%r8,1)    #  227   0x5aa94  5      
  je .L_5abc0                     #  228   0x5aa99  6      
  movslq %edx, %rdx               #  229   0x5aa9f  3      
  movq %rcx, %rax                 #  230   0x5aaa2  3      
  leaq (%r8,%rdx,1), %rdx         #  231   0x5aaa5  4      
  xchgw %ax, %ax                  #  232   0x5aaa9  3      
  movl %edx, %edx                 #  233   0x5aaac  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  234   0x5aaae  6      
  jne .L_5aa20                    #  235   0x5aab4  6      
  nop                             #  236   0x5aaba  1      
  nop                             #  237   0x5aabb  1      
.L_5abc0:                         #        0x5aabc  0      
  movzbl %dil, %eax               #  238   0x5aabc  4      
  cmpl $0x4, %eax                 #  239   0x5aac0  3      
  jne .L_5aa00                    #  240   0x5aac3  6      
  nop                             #  241   0x5aac9  1      
  nop                             #  242   0x5aaca  1      
.L_5abe0:                         #        0x5aacb  0      
  movl %ecx, %ecx                 #  243   0x5aacb  2      
  movl (%r15,%rcx,1), %eax        #  244   0x5aacd  4      
  jmpq .L_5aa20                   #  245   0x5aad1  5      
  nop                             #  246   0x5aad6  1      
  nop                             #  247   0x5aad7  1      
  leal -0x30(%rdx), %esi          #  248   0x5aad8  3      
  movq %rdi, %r14                 #  249   0x5aadb  3      
  jmpq .L_5a860                   #  250   0x5aade  5      
  nop                             #  251   0x5aae3  1      
  nop                             #  252   0x5aae4  1      
  leal -0x50(%rdx), %eax          #  253   0x5aae5  3      
  cmpl $0x11, %eax                #  254   0x5aae8  3      
  jg .L_5a800                     #  255   0x5aaeb  6      
  leal 0xffdbc0e(%rip), %esi      #  256   0x5aaf1  6      
  movslq %eax, %rcx               #  257   0x5aaf7  3      
  shll $0x2, %eax                 #  258   0x5aafa  3      
  cltq                            #  259   0x5aafd  2      
  leaq (%rsi,%rcx,1), %rcx        #  260   0x5aaff  4      
  xchgw %ax, %ax                  #  261   0x5ab03  3      
  movq $0x4000000000000000, %rsi  #  262   0x5ab06  10     
  movl %r8d, %r8d                 #  263   0x5ab10  3      
  testq %rsi, 0x60(%r15,%r8,1)    #  264   0x5ab13  5      
  leaq (%r8,%rax,1), %rax         #  265   0x5ab18  4      
  movl %ecx, %ecx                 #  266   0x5ab1c  2      
  movzbl (%r15,%rcx,1), %ecx      #  267   0x5ab1e  5      
  nop                             #  268   0x5ab23  1      
  movl %eax, %eax                 #  269   0x5ab24  2      
  movl (%r15,%rax,1), %eax        #  270   0x5ab26  4      
  je .L_5aca0                     #  271   0x5ab2a  6      
  addl $0x20, %edx                #  272   0x5ab30  3      
  movq %rax, %rsi                 #  273   0x5ab33  3      
  movslq %edx, %rdx               #  274   0x5ab36  3      
  leaq (%r8,%rdx,1), %rdx         #  275   0x5ab39  4      
  movl %edx, %edx                 #  276   0x5ab3d  2      
  cmpb $0x0, 0x8(%r15,%rdx,1)     #  277   0x5ab3f  6      
  nop                             #  278   0x5ab45  1      
  jne .L_5acc0                    #  279   0x5ab46  6      
  nop                             #  280   0x5ab4c  1      
  nop                             #  281   0x5ab4d  1      
.L_5aca0:                         #        0x5ab4e  0      
  movzbl %cl, %edx                #  282   0x5ab4e  3      
  cmpl $0x4, %edx                 #  283   0x5ab51  3      
  je .L_5b300                     #  284   0x5ab54  6      
  cmpl $0x8, %edx                 #  285   0x5ab5a  3      
  jne .L_5a800                    #  286   0x5ab5d  6      
  movl %eax, %eax                 #  287   0x5ab63  2      
  movq (%r15,%rax,1), %rsi        #  288   0x5ab65  4      
  nop                             #  289   0x5ab69  1      
.L_5acc0:                         #        0x5ab6a  0      
  movq %rdi, %r14                 #  290   0x5ab6a  3      
  jmpq .L_5a860                   #  291   0x5ab6d  5      
  nop                             #  292   0x5ab72  1      
  nop                             #  293   0x5ab73  1      
  testl %ebx, %ebx                #  294   0x5ab74  2      
  je .L_5a800                     #  295   0x5ab76  6      
  movl %edi, %edi                 #  296   0x5ab7c  2      
  movswl (%r15,%rdi,1), %edx      #  297   0x5ab7e  5      
  subl $0x1, %ebx                 #  298   0x5ab83  3      
  addl $0x2, %edi                 #  299   0x5ab86  3      
  leal (,%rbx,8), %eax            #  300   0x5ab89  7      
  cltq                            #  301   0x5ab90  2      
  xchgw %ax, %ax                  #  302   0x5ab92  3      
  movl %edx, 0x24c(%rsp)          #  303   0x5ab95  7      
  addl %edi, %edx                 #  304   0x5ab9c  2      
  movl %eax, %eax                 #  305   0x5ab9e  2      
  cmpq $0x0, 0x40(%rsp,%rax,1)    #  306   0x5aba0  6      
  cmovneq %rdx, %rdi              #  307   0x5aba6  4      
  jmpq .L_5a880                   #  308   0x5abaa  5      
  nop                             #  309   0x5abaf  1      
  cmpl $0x1, %ebx                 #  310   0x5abb0  3      
  jle .L_5a800                    #  311   0x5abb3  6      
  subl $0x2, %ebx                 #  312   0x5abb9  3      
  subl $0x1a, %eax                #  313   0x5abbc  3      
  leal (,%rbx,8), %edx            #  314   0x5abbf  7      
  cmpb $0x14, %al                 #  315   0x5abc6  2      
  movslq %edx, %rdx               #  316   0x5abc8  3      
  nop                             #  317   0x5abcb  1      
  movl %edx, %edx                 #  318   0x5abcc  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  319   0x5abce  5      
  leal 0x8(,%rbx,8), %edx         #  320   0x5abd3  7      
  movslq %edx, %rdx               #  321   0x5abda  3      
  movl %edx, %edx                 #  322   0x5abdd  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  323   0x5abdf  5      
  ja .L_5a800                     #  324   0x5abe4  6      
  xchgw %ax, %ax                  #  325   0x5abea  3      
  leal 0xffc849e(%rip), %edx      #  326   0x5abed  6      
  movzbl %al, %eax                #  327   0x5abf3  3      
  leaq (%rdx,%rax,4), %rax        #  328   0x5abf6  4      
  movl %eax, %eax                 #  329   0x5abfa  2      
  movslq (%r15,%rax,1), %rax      #  330   0x5abfc  4      
  addq %rdx, %rax                 #  331   0x5ac00  3      
  andl $0xffffffe0, %eax          #  332   0x5ac03  5      
  addq %r15, %rax                 #  333   0x5ac08  3      
  jmpq %rax                       #  334   0x5ac0b  2      
  xchgw %ax, %ax                  #  335   0x5ac0d  3      
  movl %edi, %edi                 #  336   0x5ac10  2      
  movswl (%r15,%rdi,1), %eax      #  337   0x5ac12  5      
  movl %eax, 0x24c(%rsp)          #  338   0x5ac17  7      
  leal 0x2(%rax,%rdi,1), %edi     #  339   0x5ac1e  4      
  jmpq .L_5a880                   #  340   0x5ac22  5      
  nop                             #  341   0x5ac27  1      
  cmpl $0x2, %ebx                 #  342   0x5ac28  3      
  jle .L_5a800                    #  343   0x5ac2b  6      
  leal -0x8(,%rbx,8), %ecx        #  344   0x5ac31  7      
  leal -0x18(,%rbx,8), %eax       #  345   0x5ac38  7      
  leal -0x10(,%rbx,8), %edx       #  346   0x5ac3f  7      
  xchgw %ax, %ax                  #  347   0x5ac46  3      
  movslq %ecx, %rcx               #  348   0x5ac49  3      
  cltq                            #  349   0x5ac4c  2      
  movslq %edx, %rdx               #  350   0x5ac4e  3      
  movl %ecx, %ecx                 #  351   0x5ac51  2      
  movq 0x40(%rsp,%rcx,1), %rsi    #  352   0x5ac53  5      
  movl %eax, %eax                 #  353   0x5ac58  2      
  movq 0x40(%rsp,%rax,1), %r9     #  354   0x5ac5a  5      
  movl %edx, %edx                 #  355   0x5ac5f  2      
  movq 0x40(%rsp,%rdx,1), %r10    #  356   0x5ac61  5      
  nop                             #  357   0x5ac66  1      
  movl %ecx, %ecx                 #  358   0x5ac67  2      
  movq %r10, 0x40(%rsp,%rcx,1)    #  359   0x5ac69  5      
  movl %edx, %edx                 #  360   0x5ac6e  2      
  movq %r9, 0x40(%rsp,%rdx,1)     #  361   0x5ac70  5      
  movl %eax, %eax                 #  362   0x5ac75  2      
  movq %rsi, 0x40(%rsp,%rax,1)    #  363   0x5ac77  5      
  jmpq .L_5a880                   #  364   0x5ac7c  5      
  nop                             #  365   0x5ac81  1      
  cmpl $0x1, %ebx                 #  366   0x5ac82  3      
  jle .L_5a800                    #  367   0x5ac85  6      
  leal -0x8(,%rbx,8), %edx        #  368   0x5ac8b  7      
  leal -0x10(,%rbx,8), %eax       #  369   0x5ac92  7      
  movslq %edx, %rdx               #  370   0x5ac99  3      
  cltq                            #  371   0x5ac9c  2      
  nop                             #  372   0x5ac9e  1      
  movl %edx, %edx                 #  373   0x5ac9f  2      
  movq 0x40(%rsp,%rdx,1), %rcx    #  374   0x5aca1  5      
  movl %eax, %eax                 #  375   0x5aca6  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  376   0x5aca8  5      
  movl %edx, %edx                 #  377   0x5acad  2      
  movq %rsi, 0x40(%rsp,%rdx,1)    #  378   0x5acaf  5      
  movl %eax, %eax                 #  379   0x5acb4  2      
  movq %rcx, 0x40(%rsp,%rax,1)    #  380   0x5acb6  5      
  nop                             #  381   0x5acbb  1      
  jmpq .L_5a880                   #  382   0x5acbc  5      
  nop                             #  383   0x5acc1  1      
  nop                             #  384   0x5acc2  1      
  movl %edi, %edi                 #  385   0x5acc3  2      
  movzbl (%r15,%rdi,1), %eax      #  386   0x5acc5  5      
  leal -0x1(%rbx), %edx           #  387   0x5acca  3      
  cmpl %edx, %eax                 #  388   0x5accd  2      
  movl %eax, 0x24c(%rsp)          #  389   0x5accf  7      
  jge .L_5a800                    #  390   0x5acd6  6      
  subl %eax, %edx                 #  391   0x5acdc  2      
  leal 0x1(%rdi), %r14d           #  392   0x5acde  4      
  nop                             #  393   0x5ace2  1      
  leal (,%rdx,8), %eax            #  394   0x5ace3  7      
  cltq                            #  395   0x5acea  2      
  movl %eax, %eax                 #  396   0x5acec  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  397   0x5acee  5      
  jmpq .L_5a860                   #  398   0x5acf3  5      
  nop                             #  399   0x5acf8  1      
  cmpl $0x1, %ebx                 #  400   0x5acf9  3      
  jle .L_5a800                    #  401   0x5acfc  6      
  leal -0x10(,%rbx,8), %eax       #  402   0x5ad02  7      
  movq %rdi, %r14                 #  403   0x5ad09  3      
  cltq                            #  404   0x5ad0c  2      
  movl %eax, %eax                 #  405   0x5ad0e  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  406   0x5ad10  5      
  nop                             #  407   0x5ad15  1      
  jmpq .L_5a860                   #  408   0x5ad16  5      
  nop                             #  409   0x5ad1b  1      
  nop                             #  410   0x5ad1c  1      
  testl %ebx, %ebx                #  411   0x5ad1d  2      
  je .L_5a800                     #  412   0x5ad1f  6      
  subl $0x1, %ebx                 #  413   0x5ad25  3      
  jmpq .L_5a880                   #  414   0x5ad28  5      
  nop                             #  415   0x5ad2d  1      
  nop                             #  416   0x5ad2e  1      
  testl %ebx, %ebx                #  417   0x5ad2f  2      
  je .L_5a800                     #  418   0x5ad31  6      
  leal -0x8(,%rbx,8), %eax        #  419   0x5ad37  7      
  movq %rdi, %r14                 #  420   0x5ad3e  3      
  cltq                            #  421   0x5ad41  2      
  movl %eax, %eax                 #  422   0x5ad43  2      
  movq 0x40(%rsp,%rax,1), %rsi    #  423   0x5ad45  5      
  jmpq .L_5a860                   #  424   0x5ad4a  5      
  movl 0x30(%rsp), %esi           #  425   0x5ad4f  4      
  movq %r8, (%rsp)                #  426   0x5ad53  4      
  nop                             #  427   0x5ad57  1      
  nop                             #  428   0x5ad58  1      
  callq .read_sleb128             #  429   0x5ad59  5      
  movslq 0x248(%rsp), %rsi        #  430   0x5ad5e  8      
  movl %eax, %r14d                #  431   0x5ad66  3      
  movq (%rsp), %r8                #  432   0x5ad69  4      
  jmpq .L_5a860                   #  433   0x5ad6d  5      
  nop                             #  434   0x5ad72  1      
  xorl %esi, %esi                 #  435   0x5ad73  2      
  xorl %ecx, %ecx                 #  436   0x5ad75  2      
  movq %rdi, %r14                 #  437   0x5ad77  3      
  nop                             #  438   0x5ad7a  1      
  nop                             #  439   0x5ad7b  1      
.L_5af80:                         #        0x5ad7c  0      
  movl %r14d, %r14d               #  440   0x5ad7c  3      
  movzbl (%r15,%r14,1), %edx      #  441   0x5ad7f  5      
  addl $0x1, %r14d                #  442   0x5ad84  4      
  movl %edx, %eax                 #  443   0x5ad88  2      
  andl $0x7f, %eax                #  444   0x5ad8a  3      
  shll %cl, %eax                  #  445   0x5ad8d  2      
  addl $0x7, %ecx                 #  446   0x5ad8f  3      
  orl %eax, %esi                  #  447   0x5ad92  2      
  testb %dl, %dl                  #  448   0x5ad94  2      
  js .L_5af80                     #  449   0x5ad96  6      
  movl %esi, %esi                 #  450   0x5ad9c  2      
  xchgw %ax, %ax                  #  451   0x5ad9e  3      
  jmpq .L_5a860                   #  452   0x5ada1  5      
  nop                             #  453   0x5ada6  1      
  nop                             #  454   0x5ada7  1      
  movl %edi, %edi                 #  455   0x5ada8  2      
  movslq (%r15,%rdi,1), %rsi      #  456   0x5adaa  4      
  leal 0x4(%rdi), %r14d           #  457   0x5adae  4      
  jmpq .L_5a860                   #  458   0x5adb2  5      
  xchgw %ax, %ax                  #  459   0x5adb7  3      
  nop                             #  460   0x5adba  1      
  movl %edi, %edi                 #  461   0x5adbb  2      
  movswl (%r15,%rdi,1), %esi      #  462   0x5adbd  5      
  leal 0x2(%rdi), %r14d           #  463   0x5adc2  4      
  movslq %esi, %rsi               #  464   0x5adc6  3      
  jmpq .L_5a860                   #  465   0x5adc9  5      
  nop                             #  466   0x5adce  1      
  movl %edi, %edi                 #  467   0x5adcf  2      
  movzwl (%r15,%rdi,1), %esi      #  468   0x5add1  5      
  leal 0x2(%rdi), %r14d           #  469   0x5add6  4      
  jmpq .L_5a860                   #  470   0x5adda  5      
  nop                             #  471   0x5addf  1      
  nop                             #  472   0x5ade0  1      
  movl %edi, %edi                 #  473   0x5ade1  2      
  movsbl (%r15,%rdi,1), %esi      #  474   0x5ade3  5      
  leal 0x1(%rdi), %r14d           #  475   0x5ade8  4      
  movslq %esi, %rsi               #  476   0x5adec  3      
  jmpq .L_5a860                   #  477   0x5adef  5      
  nop                             #  478   0x5adf4  1      
  movl %edi, %edi                 #  479   0x5adf5  2      
  movzbl (%r15,%rdi,1), %esi      #  480   0x5adf7  5      
  leal 0x1(%rdi), %r14d           #  481   0x5adfc  4      
  jmpq .L_5a860                   #  482   0x5ae00  5      
  nop                             #  483   0x5ae05  1      
  nop                             #  484   0x5ae06  1      
  movl %edi, %edi                 #  485   0x5ae07  2      
  movzbl (%r15,%rdi,1), %edx      #  486   0x5ae09  5      
  leal 0x1(%rdi), %r14d           #  487   0x5ae0e  4      
  cmpb $0xff, %dl                 #  488   0x5ae12  3      
  movzbl %dl, %r9d                #  489   0x5ae15  4      
  je .L_5b2c0                     #  490   0x5ae19  6      
  movl %r9d, %eax                 #  491   0x5ae1f  3      
  andl $0x70, %eax                #  492   0x5ae22  3      
  xchgw %ax, %ax                  #  493   0x5ae25  3      
  cmpl $0x20, %eax                #  494   0x5ae28  3      
  je .L_5b380                     #  495   0x5ae2b  6      
  jle .L_5b1a0                    #  496   0x5ae31  6      
  cmpl $0x40, %eax                #  497   0x5ae37  3      
  je .L_5b340                     #  498   0x5ae3a  6      
  cmpl $0x50, %eax                #  499   0x5ae40  3      
  nop                             #  500   0x5ae43  1      
  je .L_5b1c0                     #  501   0x5ae44  6      
  cmpl $0x30, %eax                #  502   0x5ae4a  3      
  jne .L_5a800                    #  503   0x5ae4d  6      
  movl %r8d, %edi                 #  504   0x5ae53  3      
  movb %dl, 0x8(%rsp)             #  505   0x5ae56  4      
  movq %r8, (%rsp)                #  506   0x5ae5a  4      
  movl %r9d, 0x10(%rsp)           #  507   0x5ae5e  5      
  nop                             #  508   0x5ae63  1      
  nop                             #  509   0x5ae64  1      
  nop                             #  510   0x5ae65  1      
  callq ._Unwind_GetDataRelBase   #  511   0x5ae66  5      
  movzbl 0x8(%rsp), %edx          #  512   0x5ae6b  5      
  movl %eax, %r10d                #  513   0x5ae70  3      
  movq (%rsp), %r8                #  514   0x5ae73  4      
  movl 0x10(%rsp), %r9d           #  515   0x5ae77  5      
  jmpq .L_5b1e0                   #  516   0x5ae7c  5      
  nop                             #  517   0x5ae81  1      
  testl %ebx, %ebx                #  518   0x5ae82  2      
  je .L_5a800                     #  519   0x5ae84  6      
  subl $0x1, %ebx                 #  520   0x5ae8a  3      
  cmpb $0x1f, %al                 #  521   0x5ae8d  2      
  leal (,%rbx,8), %edx            #  522   0x5ae8f  7      
  movslq %edx, %rdx               #  523   0x5ae96  3      
  movl %edx, %edx                 #  524   0x5ae99  2      
  movq 0x40(%rsp,%rdx,1), %rsi    #  525   0x5ae9b  5      
  xchgw %ax, %ax                  #  526   0x5aea0  3      
  je .L_5b180                     #  527   0x5aea3  6      
  jbe .L_5b160                    #  528   0x5aea9  6      
  cmpb $0x23, %al                 #  529   0x5aeaf  2      
  je .L_5b440                     #  530   0x5aeb1  6      
  cmpb $0x94, %al                 #  531   0x5aeb7  2      
  je .L_5b3e0                     #  532   0x5aeb9  6      
  cmpb $0x20, %al                 #  533   0x5aebf  2      
  jne .L_5a800                    #  534   0x5aec1  6      
  notq %rsi                       #  535   0x5aec7  3      
  nop                             #  536   0x5aeca  1      
  movq %rdi, %r14                 #  537   0x5aecb  3      
  jmpq .L_5a860                   #  538   0x5aece  5      
  nop                             #  539   0x5aed3  1      
  nop                             #  540   0x5aed4  1      
.L_5b160:                         #        0x5aed5  0      
  cmpb $0x6, %al                  #  541   0x5aed5  2      
  je .L_5b3c0                     #  542   0x5aed7  6      
  cmpb $0x19, %al                 #  543   0x5aedd  2      
  jne .L_5a800                    #  544   0x5aedf  6      
  testq %rsi, %rsi                #  545   0x5aee5  3      
  jns .L_5acc0                    #  546   0x5aee8  6      
  nop                             #  547   0x5aeee  1      
.L_5b180:                         #        0x5aeef  0      
  negq %rsi                       #  548   0x5aeef  3      
  movq %rdi, %r14                 #  549   0x5aef2  3      
  jmpq .L_5a860                   #  550   0x5aef5  5      
  nop                             #  551   0x5aefa  1      
  nop                             #  552   0x5aefb  1      
.L_5b1a0:                         #        0x5aefc  0      
  testl %eax, %eax                #  553   0x5aefc  2      
  je .L_5b1c0                     #  554   0x5aefe  6      
  cmpl $0x10, %eax                #  555   0x5af04  3      
  jne .L_5a800                    #  556   0x5af07  6      
  nop                             #  557   0x5af0d  1      
  nop                             #  558   0x5af0e  1      
.L_5b1c0:                         #        0x5af0f  0      
  xorl %r10d, %r10d               #  559   0x5af0f  3      
  nop                             #  560   0x5af12  1      
  nop                             #  561   0x5af13  1      
.L_5b1e0:                         #        0x5af14  0      
  cmpb $0x50, %dl                 #  562   0x5af14  3      
  movq %r14, %r11                 #  563   0x5af17  3      
  je .L_5b2e0                     #  564   0x5af1a  6      
  nop                             #  565   0x5af20  1      
  nop                             #  566   0x5af21  1      
.L_5b200:                         #        0x5af22  0      
  movl %r9d, %eax                 #  567   0x5af22  3      
  andl $0xf, %eax                 #  568   0x5af25  3      
  cmpl $0xc, %eax                 #  569   0x5af28  3      
  ja .L_5a800                     #  570   0x5af2b  6      
  leal 0xffc8043(%rip), %esi      #  571   0x5af31  6      
  movl %eax, %eax                 #  572   0x5af37  2      
  leaq (%rsi,%rax,4), %rax        #  573   0x5af39  4      
  nop                             #  574   0x5af3d  1      
  movl %eax, %eax                 #  575   0x5af3e  2      
  movslq (%r15,%rax,1), %rax      #  576   0x5af40  4      
  addq %rsi, %rax                 #  577   0x5af44  3      
  andl $0xffffffe0, %eax          #  578   0x5af47  5      
  addq %r15, %rax                 #  579   0x5af4c  3      
  jmpq %rax                       #  580   0x5af4f  2      
  nop                             #  581   0x5af51  1      
  movl %r14d, %r14d               #  582   0x5af52  3      
  movl (%r15,%r14,1), %eax        #  583   0x5af55  4      
  addl $0x4, %r14d                #  584   0x5af59  4      
  nop                             #  585   0x5af5d  1      
  nop                             #  586   0x5af5e  1      
.L_5b260:                         #        0x5af5f  0      
  xorl %esi, %esi                 #  587   0x5af5f  2      
  testl %eax, %eax                #  588   0x5af61  2      
  je .L_5a860                     #  589   0x5af63  6      
  andl $0x70, %r9d                #  590   0x5af69  4      
  cmpl $0x10, %r9d                #  591   0x5af6d  4      
  cmovel %r11d, %r10d             #  592   0x5af71  4      
  testb %dl, %dl                  #  593   0x5af75  2      
  leal (%r10,%rax,1), %eax        #  594   0x5af77  4      
  movl %eax, %esi                 #  595   0x5af7b  2      
  xchgw %ax, %ax                  #  596   0x5af7d  3      
  jns .L_5a860                    #  597   0x5af80  6      
  movl %eax, %eax                 #  598   0x5af86  2      
  movl %eax, %eax                 #  599   0x5af88  2      
  movl (%r15,%rax,1), %esi        #  600   0x5af8a  4      
  jmpq .L_5a860                   #  601   0x5af8e  5      
  nop                             #  602   0x5af93  1      
  movl %r14d, %r14d               #  603   0x5af94  3      
  movl (%r15,%r14,1), %eax        #  604   0x5af97  4      
  addl $0x8, %r14d                #  605   0x5af9b  4      
  jmpq .L_5b260                   #  606   0x5af9f  5      
  nop                             #  607   0x5afa4  1      
  nop                             #  608   0x5afa5  1      
.L_5b2c0:                         #        0x5afa6  0      
  movq %r14, %r11                 #  609   0x5afa6  3      
  xorl %r10d, %r10d               #  610   0x5afa9  3      
  jmpq .L_5b200                   #  611   0x5afac  5      
  nop                             #  612   0x5afb1  1      
  nop                             #  613   0x5afb2  1      
.L_5b2e0:                         #        0x5afb3  0      
  leal 0x3(%r14), %eax            #  614   0x5afb3  4      
  andl $0xfffffffc, %eax          #  615   0x5afb7  5      
  leal 0x4(%rax), %r14d           #  616   0x5afbc  4      
  movl %eax, %eax                 #  617   0x5afc0  2      
  movl %eax, %eax                 #  618   0x5afc2  2      
  movl (%r15,%rax,1), %esi        #  619   0x5afc4  4      
  movl %r14d, %r14d               #  620   0x5afc8  3      
  jmpq .L_5a860                   #  621   0x5afcb  5      
  nop                             #  622   0x5afd0  1      
.L_5b300:                         #        0x5afd1  0      
  movl %eax, %eax                 #  623   0x5afd1  2      
  movl (%r15,%rax,1), %esi        #  624   0x5afd3  4      
  jmpq .L_5acc0                   #  625   0x5afd7  5      
  nop                             #  626   0x5afdc  1      
  nop                             #  627   0x5afdd  1      
.L_5b320:                         #        0x5afde  0      
  movl %eax, %eax                 #  628   0x5afde  2      
  movl (%r15,%rax,1), %esi        #  629   0x5afe0  4      
  jmpq .L_5a860                   #  630   0x5afe4  5      
  nop                             #  631   0x5afe9  1      
  nop                             #  632   0x5afea  1      
.L_5b340:                         #        0x5afeb  0      
  movl %r8d, %edi                 #  633   0x5afeb  3      
  movb %dl, 0x8(%rsp)             #  634   0x5afee  4      
  movq %r8, (%rsp)                #  635   0x5aff2  4      
  movl %r9d, 0x10(%rsp)           #  636   0x5aff6  5      
  nop                             #  637   0x5affb  1      
  callq ._Unwind_GetRegionStart   #  638   0x5affc  5      
  movzbl 0x8(%rsp), %edx          #  639   0x5b001  5      
  movl %eax, %r10d                #  640   0x5b006  3      
  movq (%rsp), %r8                #  641   0x5b009  4      
  movl 0x10(%rsp), %r9d           #  642   0x5b00d  5      
  jmpq .L_5b1e0                   #  643   0x5b012  5      
  nop                             #  644   0x5b017  1      
.L_5b380:                         #        0x5b018  0      
  movl %r8d, %edi                 #  645   0x5b018  3      
  movb %dl, 0x8(%rsp)             #  646   0x5b01b  4      
  movq %r8, (%rsp)                #  647   0x5b01f  4      
  movl %r9d, 0x10(%rsp)           #  648   0x5b023  5      
  nop                             #  649   0x5b028  1      
  callq ._Unwind_GetTextRelBase   #  650   0x5b029  5      
  movzbl 0x8(%rsp), %edx          #  651   0x5b02e  5      
  movl %eax, %r10d                #  652   0x5b033  3      
  movq (%rsp), %r8                #  653   0x5b036  4      
  movl 0x10(%rsp), %r9d           #  654   0x5b03a  5      
  jmpq .L_5b1e0                   #  655   0x5b03f  5      
  nop                             #  656   0x5b044  1      
.L_5b3c0:                         #        0x5b045  0      
  movl %esi, %esi                 #  657   0x5b045  2      
  movq %rdi, %r14                 #  658   0x5b047  3      
  movl %esi, %esi                 #  659   0x5b04a  2      
  movl (%r15,%rsi,1), %esi        #  660   0x5b04c  4      
  jmpq .L_5a860                   #  661   0x5b050  5      
  nop                             #  662   0x5b055  1      
  nop                             #  663   0x5b056  1      
.L_5b3e0:                         #        0x5b057  0      
  movl %edi, %edi                 #  664   0x5b057  2      
  movzbl (%r15,%rdi,1), %eax      #  665   0x5b059  5      
  movl %esi, %esi                 #  666   0x5b05e  2      
  leal 0x1(%rdi), %r14d           #  667   0x5b060  4      
  cmpb $0x2, %al                  #  668   0x5b064  2      
  je .L_5b800                     #  669   0x5b066  6      
  jbe .L_5b4a0                    #  670   0x5b06c  6      
  cmpb $0x4, %al                  #  671   0x5b072  2      
  nop                             #  672   0x5b074  1      
  je .L_5b420                     #  673   0x5b075  6      
  cmpb $0x8, %al                  #  674   0x5b07b  2      
  jne .L_5a800                    #  675   0x5b07d  6      
  nop                             #  676   0x5b083  1      
  nop                             #  677   0x5b084  1      
.L_5b420:                         #        0x5b085  0      
  movl %esi, %esi                 #  678   0x5b085  2      
  movl (%r15,%rsi,1), %esi        #  679   0x5b087  4      
  jmpq .L_5a860                   #  680   0x5b08b  5      
  nop                             #  681   0x5b090  1      
  nop                             #  682   0x5b091  1      
.L_5b440:                         #        0x5b092  0      
  xorl %edx, %edx                 #  683   0x5b092  2      
  xorl %ecx, %ecx                 #  684   0x5b094  2      
  movq %rdi, %r14                 #  685   0x5b096  3      
  nop                             #  686   0x5b099  1      
  nop                             #  687   0x5b09a  1      
.L_5b460:                         #        0x5b09b  0      
  movl %r14d, %r14d               #  688   0x5b09b  3      
  movzbl (%r15,%r14,1), %r9d      #  689   0x5b09e  5      
  addl $0x1, %r14d                #  690   0x5b0a3  4      
  movl %r9d, %eax                 #  691   0x5b0a7  3      
  andl $0x7f, %eax                #  692   0x5b0aa  3      
  shll %cl, %eax                  #  693   0x5b0ad  2      
  addl $0x7, %ecx                 #  694   0x5b0af  3      
  orl %eax, %edx                  #  695   0x5b0b2  2      
  testb %r9b, %r9b                #  696   0x5b0b4  3      
  nop                             #  697   0x5b0b7  1      
  js .L_5b460                     #  698   0x5b0b8  6      
  movl %edx, %edx                 #  699   0x5b0be  2      
  addq %rdx, %rsi                 #  700   0x5b0c0  3      
  jmpq .L_5a860                   #  701   0x5b0c3  5      
  nop                             #  702   0x5b0c8  1      
  nop                             #  703   0x5b0c9  1      
.L_5b4a0:                         #        0x5b0ca  0      
  cmpb $0x1, %al                  #  704   0x5b0ca  2      
  jne .L_5a800                    #  705   0x5b0cc  6      
  movl %esi, %esi                 #  706   0x5b0d2  2      
  movzbl (%r15,%rsi,1), %esi      #  707   0x5b0d4  5      
  jmpq .L_5a860                   #  708   0x5b0d9  5      
  nop                             #  709   0x5b0de  1      
  movl 0x38(%rsp), %esi           #  710   0x5b0df  4      
  movl %r14d, %edi                #  711   0x5b0e3  3      
  movb %dl, 0x8(%rsp)             #  712   0x5b0e6  4      
  movq %r8, (%rsp)                #  713   0x5b0ea  4      
  movl %r9d, 0x10(%rsp)           #  714   0x5b0ee  5      
  movl %r10d, 0x20(%rsp)          #  715   0x5b0f3  5      
  movq %r11, 0x18(%rsp)           #  716   0x5b0f8  5      
  xchgw %ax, %ax                  #  717   0x5b0fd  3      
  nop                             #  718   0x5b100  1      
  nop                             #  719   0x5b101  1      
  callq .read_sleb128             #  720   0x5b102  5      
  movzbl 0x8(%rsp), %edx          #  721   0x5b107  5      
  movl %eax, %r14d                #  722   0x5b10c  3      
  movq (%rsp), %r8                #  723   0x5b10f  4      
  movl 0x244(%rsp), %eax          #  724   0x5b113  7      
  movl 0x10(%rsp), %r9d           #  725   0x5b11a  5      
  movl 0x20(%rsp), %r10d          #  726   0x5b11f  5      
  nop                             #  727   0x5b124  1      
  movq 0x18(%rsp), %r11           #  728   0x5b125  5      
  jmpq .L_5b260                   #  729   0x5b12a  5      
  nop                             #  730   0x5b12f  1      
  nop                             #  731   0x5b130  1      
  movl %r14d, %r14d               #  732   0x5b131  3      
  movswl (%r15,%r14,1), %eax      #  733   0x5b134  5      
  addl $0x2, %r14d                #  734   0x5b139  4      
  jmpq .L_5b260                   #  735   0x5b13d  5      
  nop                             #  736   0x5b142  1      
  movl %r14d, %r14d               #  737   0x5b143  3      
  movzwl (%r15,%r14,1), %eax      #  738   0x5b146  5      
  addl $0x2, %r14d                #  739   0x5b14b  4      
  jmpq .L_5b260                   #  740   0x5b14f  5      
  nop                             #  741   0x5b154  1      
  xorl %eax, %eax                 #  742   0x5b155  2      
  xorl %ecx, %ecx                 #  743   0x5b157  2      
  movl %edx, %edi                 #  744   0x5b159  2      
  nop                             #  745   0x5b15b  1      
  nop                             #  746   0x5b15c  1      
.L_5b5a0:                         #        0x5b15d  0      
  movl %r14d, %r14d               #  747   0x5b15d  3      
  movzbl (%r15,%r14,1), %esi      #  748   0x5b160  5      
  addl $0x1, %r14d                #  749   0x5b165  4      
  movl %esi, %edx                 #  750   0x5b169  2      
  andl $0x7f, %edx                #  751   0x5b16b  3      
  shll %cl, %edx                  #  752   0x5b16e  2      
  addl $0x7, %ecx                 #  753   0x5b170  3      
  orl %edx, %eax                  #  754   0x5b173  2      
  testb %sil, %sil                #  755   0x5b175  3      
  nop                             #  756   0x5b178  1      
  js .L_5b5a0                     #  757   0x5b179  6      
  movl %edi, %edx                 #  758   0x5b17f  2      
  jmpq .L_5b260                   #  759   0x5b181  5      
  nop                             #  760   0x5b186  1      
  nop                             #  761   0x5b187  1      
  orq %rcx, %rsi                  #  762   0x5b188  3      
  movq %rdi, %r14                 #  763   0x5b18b  3      
  jmpq .L_5a860                   #  764   0x5b18e  5      
  nop                             #  765   0x5b193  1      
  nop                             #  766   0x5b194  1      
  leaq (%rcx,%rsi,1), %rsi        #  767   0x5b195  4      
  movq %rdi, %r14                 #  768   0x5b199  3      
  jmpq .L_5a860                   #  769   0x5b19c  5      
  nop                             #  770   0x5b1a1  1      
  nop                             #  771   0x5b1a2  1      
  shlq %cl, %rsi                  #  772   0x5b1a3  3      
  movq %rdi, %r14                 #  773   0x5b1a6  3      
  jmpq .L_5a860                   #  774   0x5b1a9  5      
  nop                             #  775   0x5b1ae  1      
  nop                             #  776   0x5b1af  1      
  shrq %cl, %rsi                  #  777   0x5b1b0  3      
  movq %rdi, %r14                 #  778   0x5b1b3  3      
  jmpq .L_5a860                   #  779   0x5b1b6  5      
  nop                             #  780   0x5b1bb  1      
  nop                             #  781   0x5b1bc  1      
  sarq %cl, %rsi                  #  782   0x5b1bd  3      
  movq %rdi, %r14                 #  783   0x5b1c0  3      
  jmpq .L_5a860                   #  784   0x5b1c3  5      
  nop                             #  785   0x5b1c8  1      
  nop                             #  786   0x5b1c9  1      
  cmpq %rcx, %rsi                 #  787   0x5b1ca  3      
  movq %rdi, %r14                 #  788   0x5b1cd  3      
  setg %sil                       #  789   0x5b1d0  4      
  movzbl %sil, %esi               #  790   0x5b1d4  4      
  jmpq .L_5a860                   #  791   0x5b1d8  5      
  nop                             #  792   0x5b1dd  1      
  cmpq %rcx, %rsi                 #  793   0x5b1de  3      
  movq %rdi, %r14                 #  794   0x5b1e1  3      
  setle %sil                      #  795   0x5b1e4  4      
  movzbl %sil, %esi               #  796   0x5b1e8  4      
  jmpq .L_5a860                   #  797   0x5b1ec  5      
  nop                             #  798   0x5b1f1  1      
  cmpq %rcx, %rsi                 #  799   0x5b1f2  3      
  movq %rdi, %r14                 #  800   0x5b1f5  3      
  setl %sil                       #  801   0x5b1f8  4      
  movzbl %sil, %esi               #  802   0x5b1fc  4      
  jmpq .L_5a860                   #  803   0x5b200  5      
  nop                             #  804   0x5b205  1      
  cmpq %rcx, %rsi                 #  805   0x5b206  3      
  movq %rdi, %r14                 #  806   0x5b209  3      
  setne %sil                      #  807   0x5b20c  4      
  movzbl %sil, %esi               #  808   0x5b210  4      
  jmpq .L_5a860                   #  809   0x5b214  5      
  nop                             #  810   0x5b219  1      
  xorq %rcx, %rsi                 #  811   0x5b21a  3      
  movq %rdi, %r14                 #  812   0x5b21d  3      
  jmpq .L_5a860                   #  813   0x5b220  5      
  nop                             #  814   0x5b225  1      
  nop                             #  815   0x5b226  1      
  cmpq %rcx, %rsi                 #  816   0x5b227  3      
  movq %rdi, %r14                 #  817   0x5b22a  3      
  sete %sil                       #  818   0x5b22d  4      
  movzbl %sil, %esi               #  819   0x5b231  4      
  jmpq .L_5a860                   #  820   0x5b235  5      
  nop                             #  821   0x5b23a  1      
  cmpq %rcx, %rsi                 #  822   0x5b23b  3      
  movq %rdi, %r14                 #  823   0x5b23e  3      
  setge %sil                      #  824   0x5b241  4      
  movzbl %sil, %esi               #  825   0x5b245  4      
  jmpq .L_5a860                   #  826   0x5b249  5      
  nop                             #  827   0x5b24e  1      
  movq %rsi, %rdx                 #  828   0x5b24f  3      
  movq %rsi, %rax                 #  829   0x5b252  3      
  movq %rdi, %r14                 #  830   0x5b255  3      
  sarq $0x3f, %rdx                #  831   0x5b258  4      
  idivq %rcx                      #  832   0x5b25c  3      
  movq %rax, %rsi                 #  833   0x5b25f  3      
  jmpq .L_5a860                   #  834   0x5b262  5      
  nop                             #  835   0x5b267  1      
  subq %rcx, %rsi                 #  836   0x5b268  3      
  movq %rdi, %r14                 #  837   0x5b26b  3      
  jmpq .L_5a860                   #  838   0x5b26e  5      
  nop                             #  839   0x5b273  1      
  nop                             #  840   0x5b274  1      
  movq %rsi, %rax                 #  841   0x5b275  3      
  xorl %edx, %edx                 #  842   0x5b278  2      
  movq %rdi, %r14                 #  843   0x5b27a  3      
  divq %rcx                       #  844   0x5b27d  3      
  movq %rdx, %rsi                 #  845   0x5b280  3      
  jmpq .L_5a860                   #  846   0x5b283  5      
  nop                             #  847   0x5b288  1      
  imulq %rcx, %rsi                #  848   0x5b289  4      
  movq %rdi, %r14                 #  849   0x5b28d  3      
  jmpq .L_5a860                   #  850   0x5b290  5      
  nop                             #  851   0x5b295  1      
  nop                             #  852   0x5b296  1      
  andq %rcx, %rsi                 #  853   0x5b297  3      
  movq %rdi, %r14                 #  854   0x5b29a  3      
  jmpq .L_5a860                   #  855   0x5b29d  5      
  nop                             #  856   0x5b2a2  1      
  nop                             #  857   0x5b2a3  1      
.L_5b800:                         #        0x5b2a4  0      
  movl %esi, %esi                 #  858   0x5b2a4  2      
  movzwl (%r15,%rsi,1), %esi      #  859   0x5b2a6  5      
  jmpq .L_5a860                   #  860   0x5b2ab  5      
  nop                             #  861   0x5b2b0  1      
  nop                             #  862   0x5b2b1  1      
                                                           
.size execute_stack_op, .-execute_stack_op

