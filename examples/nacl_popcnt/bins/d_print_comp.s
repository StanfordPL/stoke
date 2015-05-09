  .text
  .globl d_print_comp
  .type d_print_comp, @function

#! file-offset 0x55860
#! rip-offset  0x55860
#! capacity    8928 bytes

# Text                                #  Line  RIP      Bytes  
.d_print_comp:                        #        0x55860  0      
  movq %r12, -0x18(%rsp)              #  1     0x55860  5      
  movl %esi, %r12d                    #  2     0x55865  3      
  movq %rbx, -0x20(%rsp)              #  3     0x55868  5      
  movq %r13, -0x10(%rsp)              #  4     0x5586d  5      
  movq %r14, -0x8(%rsp)               #  5     0x55872  5      
  subl $0x98, %esp                    #  6     0x55877  3      
  addq %r15, %rsp                     #  7     0x5587a  3      
  testq %r12, %r12                    #  8     0x5587d  3      
  movl %edi, %ebx                     #  9     0x55880  2      
  je .L_558c0                         #  10    0x55882  6      
  movl %ebx, %ebx                     #  11    0x55888  2      
  movl 0x11c(%r15,%rbx,1), %r8d       #  12    0x5588a  8      
  testl %r8d, %r8d                    #  13    0x55892  3      
  jne .L_558e0                        #  14    0x55895  6      
  movl %r12d, %r12d                   #  15    0x5589b  3      
  movl (%r15,%r12,1), %eax            #  16    0x5589e  4      
  cmpl $0x3a, %eax                    #  17    0x558a2  3      
  jbe .L_55920                        #  18    0x558a5  6      
  nop                                 #  19    0x558ab  1      
  nop                                 #  20    0x558ac  1      
.L_558c0:                             #        0x558ad  0      
  movl %ebx, %ebx                     #  21    0x558ad  2      
  movl $0x1, 0x11c(%r15,%rbx,1)       #  22    0x558af  12     
  nop                                 #  23    0x558bb  1      
  nop                                 #  24    0x558bc  1      
.L_558e0:                             #        0x558bd  0      
  movq 0x78(%rsp), %rbx               #  25    0x558bd  5      
  movq 0x80(%rsp), %r12               #  26    0x558c2  8      
  movq 0x88(%rsp), %r13               #  27    0x558ca  8      
  movq 0x90(%rsp), %r14               #  28    0x558d2  8      
  nop                                 #  29    0x558da  1      
  addl $0x98, %esp                    #  30    0x558db  3      
  addq %r15, %rsp                     #  31    0x558de  3      
  popq %r11                           #  32    0x558e1  3      
  andl $0xffffffe0, %r11d             #  33    0x558e4  7      
  addq %r15, %r11                     #  34    0x558eb  3      
  jmpq %r11                           #  35    0x558ee  3      
  nop                                 #  36    0x558f1  1      
.L_55920:                             #        0x558f2  0      
  movl %eax, %edx                     #  37    0x558f2  2      
  movl %edx, %edx                     #  38    0x558f4  2      
  movq 0x10021e40(%r15,%rdx,8), %rdx  #  39    0x558f6  8      
  andl $0xffffffe0, %edx              #  40    0x558fe  6      
  addq %r15, %rdx                     #  41    0x55904  3      
  jmpq %rdx                           #  42    0x55907  2      
  nop                                 #  43    0x55909  1      
  movl $0x10022885, %esi              #  44    0x5590a  5      
  nop                                 #  45    0x5590f  1      
  nop                                 #  46    0x55910  1      
.L_55960:                             #        0x55911  0      
  movl %ebx, %edi                     #  47    0x55911  2      
  nop                                 #  48    0x55913  1      
  nop                                 #  49    0x55914  1      
  callq .d_append_string              #  50    0x55915  5      
.L_55980:                             #        0x5591a  0      
  movl %r12d, %r12d                   #  51    0x5591a  3      
  movl 0x4(%r15,%r12,1), %esi         #  52    0x5591d  5      
  movl %ebx, %edi                     #  53    0x55922  2      
  xchgw %ax, %ax                      #  54    0x55924  3      
  nop                                 #  55    0x55927  1      
  callq .d_print_comp                 #  56    0x55928  5      
  jmpq .L_558e0                       #  57    0x5592d  5      
  nop                                 #  58    0x55932  1      
  nop                                 #  59    0x55933  1      
  movl $0x10022878, %esi              #  60    0x55934  5      
  movl %ebx, %edi                     #  61    0x55939  2      
  nop                                 #  62    0x5593b  1      
  nop                                 #  63    0x5593c  1      
  callq .d_append_string              #  64    0x5593d  5      
  movl %r12d, %r12d                   #  65    0x55942  3      
  movl 0x4(%r15,%r12,1), %esi         #  66    0x55945  5      
  movl %ebx, %edi                     #  67    0x5594a  2      
  xchgw %ax, %ax                      #  68    0x5594c  3      
  nop                                 #  69    0x5594f  1      
  callq .d_print_comp                 #  70    0x55950  5      
  movl $0x10022891, %esi              #  71    0x55955  5      
  nop                                 #  72    0x5595a  1      
  nop                                 #  73    0x5595b  1      
.L_55a20:                             #        0x5595c  0      
  movl %ebx, %edi                     #  74    0x5595c  2      
  nop                                 #  75    0x5595e  1      
  nop                                 #  76    0x5595f  1      
  callq .d_append_string              #  77    0x55960  5      
.L_55a40:                             #        0x55965  0      
  movl %r12d, %r12d                   #  78    0x55965  3      
  movl 0x8(%r15,%r12,1), %esi         #  79    0x55968  5      
  movl %ebx, %edi                     #  80    0x5596d  2      
  xchgw %ax, %ax                      #  81    0x5596f  3      
  nop                                 #  82    0x55972  1      
  callq .d_print_comp                 #  83    0x55973  5      
  jmpq .L_558e0                       #  84    0x55978  5      
  nop                                 #  85    0x5597d  1      
  nop                                 #  86    0x5597e  1      
.L_55a80:                             #        0x5597f  0      
  movl %r12d, %r12d                   #  87    0x5597f  3      
  movl 0x8(%r15,%r12,1), %edx         #  88    0x55982  5      
  movl %r12d, %r12d                   #  89    0x55987  3      
  movl 0x4(%r15,%r12,1), %esi         #  90    0x5598a  5      
  movl %ebx, %edi                     #  91    0x5598f  2      
  nop                                 #  92    0x55991  1      
  callq .d_append_buffer              #  93    0x55992  5      
  jmpq .L_558e0                       #  94    0x55997  5      
  nop                                 #  95    0x5599c  1      
  nop                                 #  96    0x5599d  1      
  movl $0x7e, %esi                    #  97    0x5599e  5      
  movl %ebx, %edi                     #  98    0x559a3  2      
  nop                                 #  99    0x559a5  1      
  nop                                 #  100   0x559a6  1      
  callq .d_append_char                #  101   0x559a7  5      
  jmpq .L_55a40                       #  102   0x559ac  5      
  nop                                 #  103   0x559b1  1      
  nop                                 #  104   0x559b2  1      
  movl $0x1002286f, %esi              #  105   0x559b3  5      
  jmpq .L_55960                       #  106   0x559b8  5      
  nop                                 #  107   0x559bd  1      
  nop                                 #  108   0x559be  1      
  movl $0x10022896, %esi              #  109   0x559bf  5      
  jmpq .L_55960                       #  110   0x559c4  5      
  nop                                 #  111   0x559c9  1      
  nop                                 #  112   0x559ca  1      
  movl $0x100228a4, %esi              #  113   0x559cb  5      
  jmpq .L_55960                       #  114   0x559d0  5      
  nop                                 #  115   0x559d5  1      
  nop                                 #  116   0x559d6  1      
  movl $0x100228b7, %esi              #  117   0x559d7  5      
  jmpq .L_55960                       #  118   0x559dc  5      
  nop                                 #  119   0x559e1  1      
  nop                                 #  120   0x559e2  1      
  movl $0x100228c8, %esi              #  121   0x559e3  5      
  jmpq .L_55960                       #  122   0x559e8  5      
  nop                                 #  123   0x559ed  1      
  nop                                 #  124   0x559ee  1      
  movl %r12d, %r12d                   #  125   0x559ef  3      
  movl 0x4(%r15,%r12,1), %esi         #  126   0x559f2  5      
  movl %ebx, %edi                     #  127   0x559f7  2      
  xchgw %ax, %ax                      #  128   0x559f9  3      
  nop                                 #  129   0x559fc  1      
  callq .d_find_pack                  #  130   0x559fd  5      
  movl %eax, %eax                     #  131   0x55a02  2      
  testq %rax, %rax                    #  132   0x55a04  3      
  je .L_579e0                         #  133   0x55a07  6      
  movl %eax, %eax                     #  134   0x55a0d  2      
  cmpl $0x2a, (%r15,%rax,1)           #  135   0x55a0f  5      
  jne .L_558e0                        #  136   0x55a14  6      
  movl %eax, %eax                     #  137   0x55a1a  2      
  movl 0x4(%r15,%rax,1), %ecx         #  138   0x55a1c  5      
  nop                                 #  139   0x55a21  1      
  xorl %r13d, %r13d                   #  140   0x55a22  3      
  testl %ecx, %ecx                    #  141   0x55a25  2      
  jne .L_55c20                        #  142   0x55a27  6      
  jmpq .L_558e0                       #  143   0x55a2d  5      
  nop                                 #  144   0x55a32  1      
  nop                                 #  145   0x55a33  1      
.L_55c00:                             #        0x55a34  0      
  movl %eax, %eax                     #  146   0x55a34  2      
  cmpl $0x2a, (%r15,%rax,1)           #  147   0x55a36  5      
  jne .L_55c40                        #  148   0x55a3b  6      
  movl %eax, %eax                     #  149   0x55a41  2      
  movl 0x4(%r15,%rax,1), %edx         #  150   0x55a43  5      
  testl %edx, %edx                    #  151   0x55a48  2      
  je .L_55c40                         #  152   0x55a4a  6      
  movl %r14d, %r13d                   #  153   0x55a50  3      
  nop                                 #  154   0x55a53  1      
.L_55c20:                             #        0x55a54  0      
  movl %eax, %eax                     #  155   0x55a54  2      
  movl 0x8(%r15,%rax,1), %eax         #  156   0x55a56  5      
  leal 0x1(%r13), %r14d               #  157   0x55a5b  4      
  testq %rax, %rax                    #  158   0x55a5f  3      
  jne .L_55c00                        #  159   0x55a62  6      
  nop                                 #  160   0x55a68  1      
  nop                                 #  161   0x55a69  1      
.L_55c40:                             #        0x55a6a  0      
  movl %r12d, %r12d                   #  162   0x55a6a  3      
  movl 0x4(%r15,%r12,1), %r12d        #  163   0x55a6d  5      
  movq %r12, 0x18(%rsp)               #  164   0x55a72  5      
  xorl %r12d, %r12d                   #  165   0x55a77  3      
  jmpq .L_55c80                       #  166   0x55a7a  5      
  nop                                 #  167   0x55a7f  1      
.L_55c60:                             #        0x55a80  0      
  addl $0x1, %r12d                    #  168   0x55a80  4      
  cmpl %r12d, %r14d                   #  169   0x55a84  3      
  jle .L_558e0                        #  170   0x55a87  6      
  nop                                 #  171   0x55a8d  1      
  nop                                 #  172   0x55a8e  1      
.L_55c80:                             #        0x55a8f  0      
  movl 0x18(%rsp), %esi               #  173   0x55a8f  4      
  movl %ebx, %ebx                     #  174   0x55a93  2      
  movl %r12d, 0x120(%r15,%rbx,1)      #  175   0x55a95  8      
  movl %ebx, %edi                     #  176   0x55a9d  2      
  nop                                 #  177   0x55a9f  1      
  callq .d_print_comp                 #  178   0x55aa0  5      
  cmpl %r13d, %r12d                   #  179   0x55aa5  3      
  jge .L_55c60                        #  180   0x55aa8  6      
  movl $0x10022960, %esi              #  181   0x55aae  5      
  movl %ebx, %edi                     #  182   0x55ab3  2      
  nop                                 #  183   0x55ab5  1      
  callq .d_append_string              #  184   0x55ab6  5      
  jmpq .L_55c60                       #  185   0x55abb  5      
  nop                                 #  186   0x55ac0  1      
  nop                                 #  187   0x55ac1  1      
  movl %ebx, %ebx                     #  188   0x55ac2  2      
  testb $0x4, (%r15,%rbx,1)           #  189   0x55ac4  5      
  je .L_55a80                         #  190   0x55ac9  6      
  movl %r12d, %r12d                   #  191   0x55acf  3      
  movl 0x4(%r15,%r12,1), %r14d        #  192   0x55ad2  5      
  movl %r12d, %r12d                   #  193   0x55ad7  3      
  movl 0x8(%r15,%r12,1), %r13d        #  194   0x55ada  5      
  addl %r14d, %r13d                   #  195   0x55adf  3      
  cmpl %r13d, %r14d                   #  196   0x55ae2  3      
  jae .L_558e0                        #  197   0x55ae5  6      
  movl %r13d, 0x18(%rsp)              #  198   0x55aeb  5      
  jmpq .L_55d80                       #  199   0x55af0  5      
  nop                                 #  200   0x55af5  1      
  nop                                 #  201   0x55af6  1      
.L_55d20:                             #        0x55af7  0      
  movl %r14d, %r14d                   #  202   0x55af7  3      
  movzbl (%r15,%r14,1), %esi          #  203   0x55afa  5      
  leal 0x1(%r14), %r12d               #  204   0x55aff  4      
  cmpb $0x5f, %sil                    #  205   0x55b03  4      
  je .L_57120                         #  206   0x55b07  6      
  nop                                 #  207   0x55b0d  1      
.L_55d40:                             #        0x55b0e  0      
  movsbl %sil, %esi                   #  208   0x55b0e  4      
  movl %ebx, %edi                     #  209   0x55b12  2      
  nop                                 #  210   0x55b14  1      
  nop                                 #  211   0x55b15  1      
  callq .d_append_char                #  212   0x55b16  5      
.L_55d60:                             #        0x55b1b  0      
  cmpl %r12d, %r13d                   #  213   0x55b1b  3      
  jbe .L_558e0                        #  214   0x55b1e  6      
  movq %r12, %r14                     #  215   0x55b24  3      
  nop                                 #  216   0x55b27  1      
  nop                                 #  217   0x55b28  1      
.L_55d80:                             #        0x55b29  0      
  movl 0x18(%rsp), %eax               #  218   0x55b29  4      
  subl %r14d, %eax                    #  219   0x55b2d  3      
  cmpl $0x3, %eax                     #  220   0x55b30  3      
  jg .L_55d20                         #  221   0x55b33  6      
  leal 0x1(%r14), %r12d               #  222   0x55b39  4      
  movl %r14d, %r14d                   #  223   0x55b3d  3      
  movzbl (%r15,%r14,1), %esi          #  224   0x55b40  5      
  jmpq .L_55d40                       #  225   0x55b45  5      
  nop                                 #  226   0x55b4a  1      
  movl %r12d, %r12d                   #  227   0x55b4b  3      
  movl 0x4(%r15,%r12,1), %esi         #  228   0x55b4e  5      
  movl %ebx, %edi                     #  229   0x55b53  2      
  xchgw %ax, %ax                      #  230   0x55b55  3      
  nop                                 #  231   0x55b58  1      
  callq .d_print_comp                 #  232   0x55b59  5      
  movl %ebx, %ebx                     #  233   0x55b5e  2      
  testb $0x4, (%r15,%rbx,1)           #  234   0x55b60  5      
  jne .L_57240                        #  235   0x55b65  6      
  movl $0x10022865, %esi              #  236   0x55b6b  5      
  movl %ebx, %edi                     #  237   0x55b70  2      
  nop                                 #  238   0x55b72  1      
  callq .d_append_string              #  239   0x55b73  5      
  jmpq .L_55a40                       #  240   0x55b78  5      
  nop                                 #  241   0x55b7d  1      
  nop                                 #  242   0x55b7e  1      
  movl %ebx, %ebx                     #  243   0x55b7f  2      
  movl 0x118(%r15,%rbx,1), %edx       #  244   0x55b81  8      
  movl %ebx, %ebx                     #  245   0x55b89  2      
  movl $0x0, 0x118(%r15,%rbx,1)       #  246   0x55b8b  12     
  movl %r12d, %r12d                   #  247   0x55b97  3      
  movl 0x4(%r15,%r12,1), %r13d        #  248   0x55b9a  5      
  testq %r13, %r13                    #  249   0x55b9f  3      
  je .L_558c0                         #  250   0x55ba2  6      
  movl %ebx, %ebx                     #  251   0x55ba8  2      
  movl 0x114(%r15,%rbx,1), %ecx       #  252   0x55baa  8      
  leal 0x20(%rsp), %eax               #  253   0x55bb2  4      
  movl $0x0, 0x20(%rsp)               #  254   0x55bb6  8      
  nop                                 #  255   0x55bbe  1      
  movl %r13d, 0x24(%rsp)              #  256   0x55bbf  5      
  movl $0x0, 0x28(%rsp)               #  257   0x55bc4  8      
  movl %ebx, %ebx                     #  258   0x55bcc  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  259   0x55bce  8      
  movl %ecx, 0x2c(%rsp)               #  260   0x55bd6  4      
  nop                                 #  261   0x55bda  1      
  movl %r13d, %r13d                   #  262   0x55bdb  3      
  movl (%r15,%r13,1), %ecx            #  263   0x55bde  4      
  leal -0x1a(%rcx), %esi              #  264   0x55be2  3      
  cmpl $0x2, %esi                     #  265   0x55be5  3      
  ja .L_57aa0                         #  266   0x55be8  6      
  leal 0x10(%rax), %esi               #  267   0x55bee  3      
  movl $0x1, %r14d                    #  268   0x55bf1  6      
  nop                                 #  269   0x55bf7  1      
.L_55e80:                             #        0x55bf8  0      
  movl %r13d, %r13d                   #  270   0x55bf8  3      
  movl 0x4(%r15,%r13,1), %r13d        #  271   0x55bfb  5      
  testq %r13, %r13                    #  272   0x55c00  3      
  je .L_558c0                         #  273   0x55c03  6      
  cmpl $0x4, %r14d                    #  274   0x55c09  4      
  je .L_558c0                         #  275   0x55c0d  6      
  nop                                 #  276   0x55c13  1      
  movl %ebx, %ebx                     #  277   0x55c14  2      
  movl 0x118(%r15,%rbx,1), %edi       #  278   0x55c16  8      
  movl %esi, %ecx                     #  279   0x55c1e  2      
  addl $0x1, %r14d                    #  280   0x55c20  4      
  movl %ecx, %ecx                     #  281   0x55c24  2      
  movl %r13d, 0x4(%r15,%rcx,1)        #  282   0x55c26  5      
  nop                                 #  283   0x55c2b  1      
  movl %ecx, %ecx                     #  284   0x55c2c  2      
  movl $0x0, 0x8(%r15,%rcx,1)         #  285   0x55c2e  9      
  movl %ecx, %ecx                     #  286   0x55c37  2      
  movl %edi, (%r15,%rcx,1)            #  287   0x55c39  4      
  movl %ebx, %ebx                     #  288   0x55c3d  2      
  movl 0x114(%r15,%rbx,1), %edi       #  289   0x55c3f  8      
  nop                                 #  290   0x55c47  1      
  movl %ebx, %ebx                     #  291   0x55c48  2      
  movl %esi, 0x118(%r15,%rbx,1)       #  292   0x55c4a  8      
  addl $0x10, %esi                    #  293   0x55c52  3      
  movl %ecx, %ecx                     #  294   0x55c55  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  295   0x55c57  5      
  movl %r13d, %r13d                   #  296   0x55c5c  3      
  movl (%r15,%r13,1), %ecx            #  297   0x55c5f  4      
  leal -0x1a(%rcx), %edi              #  298   0x55c63  3      
  xchgw %ax, %ax                      #  299   0x55c66  3      
  cmpl $0x2, %edi                     #  300   0x55c69  3      
  jbe .L_55e80                        #  301   0x55c6c  6      
  nop                                 #  302   0x55c72  1      
  nop                                 #  303   0x55c73  1      
.L_55f20:                             #        0x55c74  0      
  cmpl $0x4, %ecx                     #  304   0x55c74  3      
  je .L_57980                         #  305   0x55c77  6      
  cmpl $0x2, %ecx                     #  306   0x55c7d  3      
  jne .L_56020                        #  307   0x55c80  6      
  movl %r13d, %r13d                   #  308   0x55c86  3      
  movl 0x8(%r15,%r13,1), %esi         #  309   0x55c89  5      
  movl %esi, %esi                     #  310   0x55c8e  2      
  movl (%r15,%rsi,1), %ecx            #  311   0x55c90  4      
  subl $0x1a, %ecx                    #  312   0x55c94  3      
  cmpl $0x2, %ecx                     #  313   0x55c97  3      
  ja .L_56020                         #  314   0x55c9a  6      
  cmpl $0x3, %r14d                    #  315   0x55ca0  4      
  ja .L_558c0                         #  316   0x55ca4  6      
  movl %r14d, %r9d                    #  317   0x55caa  3      
  movl %r14d, %edi                    #  318   0x55cad  3      
  shll $0x4, %r9d                     #  319   0x55cb0  4      
  shll $0x4, %edi                     #  320   0x55cb4  3      
  leal -0x10(%r9,%rax,1), %r9d        #  321   0x55cb7  5      
  addl %eax, %edi                     #  322   0x55cbc  2      
  movl %r9d, %r8d                     #  323   0x55cbe  3      
  jmpq .L_55fa0                       #  324   0x55cc1  5      
  xchgw %ax, %ax                      #  325   0x55cc6  3      
  nop                                 #  326   0x55cc9  1      
.L_55f80:                             #        0x55cca  0      
  addl $0x10, %r9d                    #  327   0x55cca  4      
  addl $0x10, %r8d                    #  328   0x55cce  4      
  addl $0x10, %edi                    #  329   0x55cd2  3      
  cmpl $0x3, %r14d                    #  330   0x55cd5  4      
  ja .L_558c0                         #  331   0x55cd9  6      
  nop                                 #  332   0x55cdf  1      
.L_55fa0:                             #        0x55ce0  0      
  movl %r9d, %ecx                     #  333   0x55ce0  3      
  addl $0x1, %r14d                    #  334   0x55ce3  4      
  movl %ecx, %ecx                     #  335   0x55ce7  2      
  movq (%r15,%rcx,1), %r10            #  336   0x55ce9  4      
  movl %ecx, %ecx                     #  337   0x55ced  2      
  movl %esi, 0x4(%r15,%rcx,1)         #  338   0x55cef  5      
  movl %ecx, %ecx                     #  339   0x55cf4  2      
  movq %r10, 0x10(%r15,%rcx,1)        #  340   0x55cf6  5      
  nop                                 #  341   0x55cfb  1      
  movl %ecx, %ecx                     #  342   0x55cfc  2      
  movq 0x8(%r15,%rcx,1), %r10         #  343   0x55cfe  5      
  movl %ecx, %ecx                     #  344   0x55d03  2      
  movl %r8d, 0x10(%r15,%rcx,1)        #  345   0x55d05  5      
  movl %ecx, %ecx                     #  346   0x55d0a  2      
  movl $0x0, 0x8(%r15,%rcx,1)         #  347   0x55d0c  9      
  movl %ecx, %ecx                     #  348   0x55d15  2      
  movq %r10, 0x18(%r15,%rcx,1)        #  349   0x55d17  5      
  movl %ebx, %ebx                     #  350   0x55d1c  2      
  movl 0x114(%r15,%rbx,1), %r10d      #  351   0x55d1e  8      
  movl %ebx, %ebx                     #  352   0x55d26  2      
  movl %edi, 0x118(%r15,%rbx,1)       #  353   0x55d28  8      
  movl %ecx, %ecx                     #  354   0x55d30  2      
  movl %r10d, 0xc(%r15,%rcx,1)        #  355   0x55d32  5      
  nop                                 #  356   0x55d37  1      
  movl %esi, %esi                     #  357   0x55d38  2      
  movl 0x4(%r15,%rsi,1), %esi         #  358   0x55d3a  5      
  movl %esi, %esi                     #  359   0x55d3f  2      
  movl (%r15,%rsi,1), %ecx            #  360   0x55d41  4      
  subl $0x1a, %ecx                    #  361   0x55d45  3      
  cmpl $0x2, %ecx                     #  362   0x55d48  3      
  jbe .L_55f80                        #  363   0x55d4b  6      
  nop                                 #  364   0x55d51  1      
.L_56020:                             #        0x55d52  0      
  movl %r12d, %r12d                   #  365   0x55d52  3      
  movl 0x8(%r15,%r12,1), %esi         #  366   0x55d55  5      
  movl %ebx, %edi                     #  367   0x55d5a  2      
  movq %rax, 0x8(%rsp)                #  368   0x55d5c  5      
  movq %rdx, 0x10(%rsp)               #  369   0x55d61  5      
  nop                                 #  370   0x55d66  1      
  callq .d_print_comp                 #  371   0x55d67  5      
  movl %r13d, %r13d                   #  372   0x55d6c  3      
  cmpl $0x4, (%r15,%r13,1)            #  373   0x55d6f  5      
  movq 0x8(%rsp), %rax                #  374   0x55d74  5      
  movq 0x10(%rsp), %rdx               #  375   0x55d79  5      
  je .L_579c0                         #  376   0x55d7e  6      
  nop                                 #  377   0x55d84  1      
.L_56060:                             #        0x55d85  0      
  testl %r14d, %r14d                  #  378   0x55d85  3      
  je .L_560c0                         #  379   0x55d88  6      
  movl %r14d, %r12d                   #  380   0x55d8e  3      
  shll $0x4, %r12d                    #  381   0x55d91  4      
  leal -0x8(%r12,%rax,1), %r12d       #  382   0x55d95  5      
  nop                                 #  383   0x55d9a  1      
.L_56080:                             #        0x55d9b  0      
  movl %r12d, %eax                    #  384   0x55d9b  3      
  subl $0x1, %r14d                    #  385   0x55d9e  4      
  movl %eax, %eax                     #  386   0x55da2  2      
  movl (%r15,%rax,1), %edi            #  387   0x55da4  4      
  testl %edi, %edi                    #  388   0x55da8  2      
  je .L_574a0                         #  389   0x55daa  6      
  nop                                 #  390   0x55db0  1      
.L_560a0:                             #        0x55db1  0      
  subl $0x10, %r12d                   #  391   0x55db1  4      
  testl %r14d, %r14d                  #  392   0x55db5  3      
  jne .L_56080                        #  393   0x55db8  6      
  nop                                 #  394   0x55dbe  1      
  nop                                 #  395   0x55dbf  1      
.L_560c0:                             #        0x55dc0  0      
  movl %ebx, %ebx                     #  396   0x55dc0  2      
  movl %edx, 0x118(%r15,%rbx,1)       #  397   0x55dc2  8      
  jmpq .L_558e0                       #  398   0x55dca  5      
  xchgw %ax, %ax                      #  399   0x55dcf  3      
  nop                                 #  400   0x55dd2  1      
  movl $0x100228cc, %esi              #  401   0x55dd3  5      
  jmpq .L_55960                       #  402   0x55dd8  5      
  nop                                 #  403   0x55ddd  1      
  nop                                 #  404   0x55dde  1      
  movl $0x100228de, %esi              #  405   0x55ddf  5      
  jmpq .L_55960                       #  406   0x55de4  5      
  nop                                 #  407   0x55de9  1      
  nop                                 #  408   0x55dea  1      
  movl %ebx, %ebx                     #  409   0x55deb  2      
  movl 0x118(%r15,%rbx,1), %r14d      #  410   0x55ded  8      
  movl %ebx, %ebx                     #  411   0x55df5  2      
  movl 0x114(%r15,%rbx,1), %edx       #  412   0x55df7  8      
  leal 0x20(%rsp), %eax               #  413   0x55dff  4      
  movl %r12d, 0x24(%rsp)              #  414   0x55e03  5      
  nop                                 #  415   0x55e08  1      
  movl $0x0, 0x28(%rsp)               #  416   0x55e09  8      
  movl %ebx, %ebx                     #  417   0x55e11  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  418   0x55e13  8      
  movl %edx, 0x2c(%rsp)               #  419   0x55e1b  4      
  testq %r14, %r14                    #  420   0x55e1f  3      
  movl %r14d, 0x20(%rsp)              #  421   0x55e22  5      
  xchgw %ax, %ax                      #  422   0x55e27  3      
  je .L_57960                         #  423   0x55e2a  6      
  movl %r14d, %r14d                   #  424   0x55e30  3      
  movl 0x4(%r15,%r14,1), %edx         #  425   0x55e33  5      
  movl %edx, %edx                     #  426   0x55e38  2      
  movl (%r15,%rdx,1), %edx            #  427   0x55e3a  4      
  subl $0x17, %edx                    #  428   0x55e3e  3      
  cmpl $0x2, %edx                     #  429   0x55e41  3      
  ja .L_57960                         #  430   0x55e44  6      
  movq %r14, %rdx                     #  431   0x55e4a  3      
  movl $0x1, %r13d                    #  432   0x55e4d  6      
  jmpq .L_561c0                       #  433   0x55e53  5      
  nop                                 #  434   0x55e58  1      
  nop                                 #  435   0x55e59  1      
.L_561a0:                             #        0x55e5a  0      
  movl %edx, %edx                     #  436   0x55e5a  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  437   0x55e5c  5      
  movl %ecx, %ecx                     #  438   0x55e61  2      
  movl (%r15,%rcx,1), %ecx            #  439   0x55e63  4      
  subl $0x17, %ecx                    #  440   0x55e67  3      
  cmpl $0x2, %ecx                     #  441   0x55e6a  3      
  ja .L_56260                         #  442   0x55e6d  6      
  nop                                 #  443   0x55e73  1      
.L_561c0:                             #        0x55e74  0      
  movl %edx, %edx                     #  444   0x55e74  2      
  movl 0x8(%r15,%rdx,1), %r11d        #  445   0x55e76  5      
  testl %r11d, %r11d                  #  446   0x55e7b  3      
  jne .L_56240                        #  447   0x55e7e  6      
  cmpl $0x3, %r13d                    #  448   0x55e84  4      
  ja .L_558c0                         #  449   0x55e88  6      
  movl %edx, %edx                     #  450   0x55e8e  2      
  movq (%r15,%rdx,1), %rdi            #  451   0x55e90  4      
  movl %r13d, %esi                    #  452   0x55e94  3      
  nop                                 #  453   0x55e97  1      
  addl $0x1, %r13d                    #  454   0x55e98  4      
  shll $0x4, %esi                     #  455   0x55e9c  3      
  movslq %esi, %rcx                   #  456   0x55e9f  3      
  addl %eax, %esi                     #  457   0x55ea2  2      
  movl %ecx, %ecx                     #  458   0x55ea4  2      
  movq %rdi, 0x20(%rsp,%rcx,1)        #  459   0x55ea6  5      
  movl %edx, %edx                     #  460   0x55eab  2      
  movq 0x8(%r15,%rdx,1), %rdi         #  461   0x55ead  5      
  nop                                 #  462   0x55eb2  1      
  movl %ecx, %ecx                     #  463   0x55eb3  2      
  movq %rdi, 0x28(%rsp,%rcx,1)        #  464   0x55eb5  5      
  movl %ebx, %ebx                     #  465   0x55eba  2      
  movl 0x118(%r15,%rbx,1), %edi       #  466   0x55ebc  8      
  movl %edx, %edx                     #  467   0x55ec4  2      
  movl $0x1, 0x8(%r15,%rdx,1)         #  468   0x55ec6  9      
  nop                                 #  469   0x55ecf  1      
  movl %ebx, %ebx                     #  470   0x55ed0  2      
  movl %esi, 0x118(%r15,%rbx,1)       #  471   0x55ed2  8      
  movl %ecx, %ecx                     #  472   0x55eda  2      
  movl %edi, 0x20(%rsp,%rcx,1)        #  473   0x55edc  4      
  nop                                 #  474   0x55ee0  1      
  nop                                 #  475   0x55ee1  1      
.L_56240:                             #        0x55ee2  0      
  movl %edx, %edx                     #  476   0x55ee2  2      
  movl (%r15,%rdx,1), %edx            #  477   0x55ee4  4      
  testq %rdx, %rdx                    #  478   0x55ee8  3      
  jne .L_561a0                        #  479   0x55eeb  6      
  xchgw %ax, %ax                      #  480   0x55ef1  3      
  nop                                 #  481   0x55ef4  1      
.L_56260:                             #        0x55ef5  0      
  movl %r12d, %r12d                   #  482   0x55ef5  3      
  movl 0x8(%r15,%r12,1), %esi         #  483   0x55ef8  5      
  movl %ebx, %edi                     #  484   0x55efd  2      
  movq %rax, 0x8(%rsp)                #  485   0x55eff  5      
  nop                                 #  486   0x55f04  1      
  callq .d_print_comp                 #  487   0x55f05  5      
  movl 0x28(%rsp), %r10d              #  488   0x55f0a  5      
  movl %ebx, %ebx                     #  489   0x55f0f  2      
  movl %r14d, 0x118(%r15,%rbx,1)      #  490   0x55f11  8      
  movq 0x8(%rsp), %rax                #  491   0x55f19  5      
  testl %r10d, %r10d                  #  492   0x55f1e  3      
  jne .L_558e0                        #  493   0x55f21  6      
  nop                                 #  494   0x55f27  1      
  cmpl $0x1, %r13d                    #  495   0x55f28  4      
  je .L_56300                         #  496   0x55f2c  6      
  movl %r13d, %r14d                   #  497   0x55f32  3      
  shll $0x4, %r14d                    #  498   0x55f35  4      
  leal -0xc(%r14,%rax,1), %r14d       #  499   0x55f39  5      
  nop                                 #  500   0x55f3e  1      
.L_562c0:                             #        0x55f3f  0      
  movl %r14d, %eax                    #  501   0x55f3f  3      
  subl $0x1, %r13d                    #  502   0x55f42  4      
  movl %ebx, %edi                     #  503   0x55f46  2      
  movl %eax, %eax                     #  504   0x55f48  2      
  movl (%r15,%rax,1), %esi            #  505   0x55f4a  4      
  subl $0x10, %r14d                   #  506   0x55f4e  4      
  nop                                 #  507   0x55f52  1      
  callq .d_print_mod                  #  508   0x55f53  5      
  cmpl $0x1, %r13d                    #  509   0x55f58  4      
  ja .L_562c0                         #  510   0x55f5c  6      
  movl %ebx, %ebx                     #  511   0x55f62  2      
  movl 0x118(%r15,%rbx,1), %r14d      #  512   0x55f64  8      
  nop                                 #  513   0x55f6c  1      
  nop                                 #  514   0x55f6d  1      
.L_56300:                             #        0x55f6e  0      
  movl %r14d, %edx                    #  515   0x55f6e  3      
  movl %r12d, %esi                    #  516   0x55f71  3      
  movl %ebx, %edi                     #  517   0x55f74  2      
  nop                                 #  518   0x55f76  1      
  nop                                 #  519   0x55f77  1      
  callq .d_print_array_type           #  520   0x55f78  5      
  jmpq .L_558e0                       #  521   0x55f7d  5      
  nop                                 #  522   0x55f82  1      
  nop                                 #  523   0x55f83  1      
  movl %ebx, %ebx                     #  524   0x55f84  2      
  movl 0x118(%r15,%rbx,1), %eax       #  525   0x55f86  8      
  movl %r12d, 0x24(%rsp)              #  526   0x55f8e  5      
  movl %ebx, %edi                     #  527   0x55f93  2      
  movl $0x0, 0x28(%rsp)               #  528   0x55f95  8      
  movl %eax, 0x20(%rsp)               #  529   0x55f9d  4      
  nop                                 #  530   0x55fa1  1      
  leal 0x20(%rsp), %eax               #  531   0x55fa2  4      
  movl %ebx, %ebx                     #  532   0x55fa6  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  533   0x55fa8  8      
  movl %ebx, %ebx                     #  534   0x55fb0  2      
  movl 0x114(%r15,%rbx,1), %eax       #  535   0x55fb2  8      
  movl %eax, 0x2c(%rsp)               #  536   0x55fba  4      
  nop                                 #  537   0x55fbe  1      
  movl %r12d, %r12d                   #  538   0x55fbf  3      
  movl 0x8(%r15,%r12,1), %esi         #  539   0x55fc2  5      
  nop                                 #  540   0x55fc7  1      
  nop                                 #  541   0x55fc8  1      
  callq .d_print_comp                 #  542   0x55fc9  5      
  movl 0x28(%rsp), %r9d               #  543   0x55fce  5      
  testl %r9d, %r9d                    #  544   0x55fd3  3      
  jne .L_56400                        #  545   0x55fd6  6      
  movl $0x20, %esi                    #  546   0x55fdc  5      
  movl %ebx, %edi                     #  547   0x55fe1  2      
  nop                                 #  548   0x55fe3  1      
  callq .d_append_char                #  549   0x55fe4  5      
  movl %r12d, %r12d                   #  550   0x55fe9  3      
  movl 0x4(%r15,%r12,1), %esi         #  551   0x55fec  5      
  movl %ebx, %edi                     #  552   0x55ff1  2      
  xchgw %ax, %ax                      #  553   0x55ff3  3      
  nop                                 #  554   0x55ff6  1      
  callq .d_print_comp                 #  555   0x55ff7  5      
  movl $0x10022948, %esi              #  556   0x55ffc  5      
  movl %ebx, %edi                     #  557   0x56001  2      
  nop                                 #  558   0x56003  1      
  nop                                 #  559   0x56004  1      
  callq .d_append_string              #  560   0x56005  5      
.L_56400:                             #        0x5600a  0      
  movl 0x20(%rsp), %eax               #  561   0x5600a  4      
  movl %ebx, %ebx                     #  562   0x5600e  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  563   0x56010  8      
  jmpq .L_558e0                       #  564   0x56018  5      
  nop                                 #  565   0x5601d  1      
  movl $0x10022963, %esi              #  566   0x5601e  5      
  movl %ebx, %edi                     #  567   0x56023  2      
  nop                                 #  568   0x56025  1      
  nop                                 #  569   0x56026  1      
  callq .d_append_string              #  570   0x56027  5      
  movl %r12d, %r12d                   #  571   0x5602c  3      
  movl 0x4(%r15,%r12,1), %eax         #  572   0x5602f  5      
  movl %eax, %eax                     #  573   0x56034  2      
  movl 0x4(%r15,%rax,1), %esi         #  574   0x56036  5      
  movl %esi, %esi                     #  575   0x5603b  2      
  movzbl (%r15,%rsi,1), %edx          #  576   0x5603d  5      
  subl $0x61, %edx                    #  577   0x56042  3      
  cmpb $0x19, %dl                     #  578   0x56045  3      
  nop                                 #  579   0x56048  1      
  ja .L_564a0                         #  580   0x56049  6      
  movl $0x20, %esi                    #  581   0x5604f  5      
  movl %ebx, %edi                     #  582   0x56054  2      
  nop                                 #  583   0x56056  1      
  nop                                 #  584   0x56057  1      
  callq .d_append_char                #  585   0x56058  5      
  movl %r12d, %r12d                   #  586   0x5605d  3      
  movl 0x4(%r15,%r12,1), %eax         #  587   0x56060  5      
  movl %eax, %eax                     #  588   0x56065  2      
  movl 0x4(%r15,%rax,1), %esi         #  589   0x56067  5      
  xchgw %ax, %ax                      #  590   0x5606c  3      
  nop                                 #  591   0x5606f  1      
.L_564a0:                             #        0x56070  0      
  movl %eax, %eax                     #  592   0x56070  2      
  movl 0x8(%r15,%rax,1), %edx         #  593   0x56072  5      
  movl %ebx, %edi                     #  594   0x56077  2      
  nop                                 #  595   0x56079  1      
  nop                                 #  596   0x5607a  1      
  callq .d_append_buffer              #  597   0x5607b  5      
  jmpq .L_558e0                       #  598   0x56080  5      
  nop                                 #  599   0x56085  1      
  nop                                 #  600   0x56086  1      
  movl $0x1002296c, %esi              #  601   0x56087  5      
  jmpq .L_55a20                       #  602   0x5608c  5      
  nop                                 #  603   0x56091  1      
  nop                                 #  604   0x56092  1      
  movl %ebx, %edi                     #  605   0x56093  2      
  movl $0x1002296c, %esi              #  606   0x56095  5      
  nop                                 #  607   0x5609a  1      
  nop                                 #  608   0x5609b  1      
  callq .d_append_string              #  609   0x5609c  5      
  movl %r12d, %esi                    #  610   0x560a1  3      
  movl %ebx, %edi                     #  611   0x560a4  2      
  nop                                 #  612   0x560a6  1      
  nop                                 #  613   0x560a7  1      
  callq .d_print_cast                 #  614   0x560a8  5      
  jmpq .L_558e0                       #  615   0x560ad  5      
  nop                                 #  616   0x560b2  1      
  nop                                 #  617   0x560b3  1      
  movl %r12d, %r12d                   #  618   0x560b4  3      
  movl 0x4(%r15,%r12,1), %esi         #  619   0x560b7  5      
  movl %esi, %esi                     #  620   0x560bc  2      
  cmpl $0x2d, (%r15,%rsi,1)           #  621   0x560be  5      
  je .L_57340                         #  622   0x560c3  6      
  movl %ebx, %edi                     #  623   0x560c9  2      
  nop                                 #  624   0x560cb  1      
  callq .d_print_expr_op              #  625   0x560cc  5      
.L_56580:                             #        0x560d1  0      
  movl %r12d, %r12d                   #  626   0x560d1  3      
  movl 0x8(%r15,%r12,1), %esi         #  627   0x560d4  5      
  movl %ebx, %edi                     #  628   0x560d9  2      
  xchgw %ax, %ax                      #  629   0x560db  3      
  nop                                 #  630   0x560de  1      
  callq .d_print_subexpr              #  631   0x560df  5      
  jmpq .L_558e0                       #  632   0x560e4  5      
  nop                                 #  633   0x560e9  1      
  nop                                 #  634   0x560ea  1      
  movl %r12d, %r12d                   #  635   0x560eb  3      
  movl 0x8(%r15,%r12,1), %eax         #  636   0x560ee  5      
  movl %eax, %eax                     #  637   0x560f3  2      
  cmpl $0x30, (%r15,%rax,1)           #  638   0x560f5  5      
  jne .L_558c0                        #  639   0x560fa  6      
  movl %r12d, %r12d                   #  640   0x56100  3      
  movl 0x4(%r15,%r12,1), %edx         #  641   0x56103  5      
  nop                                 #  642   0x56108  1      
  movl %edx, %edx                     #  643   0x56109  2      
  cmpl $0x2b, (%r15,%rdx,1)           #  644   0x5610b  5      
  je .L_57840                         #  645   0x56110  6      
  nop                                 #  646   0x56116  1      
  nop                                 #  647   0x56117  1      
.L_56600:                             #        0x56118  0      
  movl %eax, %eax                     #  648   0x56118  2      
  movl 0x4(%r15,%rax,1), %esi         #  649   0x5611a  5      
  movl %ebx, %edi                     #  650   0x5611f  2      
  nop                                 #  651   0x56121  1      
  nop                                 #  652   0x56122  1      
  callq .d_print_subexpr              #  653   0x56123  5      
  movl %r12d, %r12d                   #  654   0x56128  3      
  movl 0x4(%r15,%r12,1), %eax         #  655   0x5612b  5      
  movl $0x1002284f, %edi              #  656   0x56130  5      
  movl $0x3, %ecx                     #  657   0x56135  5      
  movl %eax, %eax                     #  658   0x5613a  2      
  movl 0x4(%r15,%rax,1), %edx         #  659   0x5613c  5      
  movl %edx, %edx                     #  660   0x56141  2      
  movl (%r15,%rdx,1), %esi            #  661   0x56143  4      
  nop                                 #  662   0x56147  1      
  movl %esi, %esi                     #  663   0x56148  2      
  leaq (%r15,%rsi,1), %rsi            #  664   0x5614a  4      
  movl %edi, %edi                     #  665   0x5614e  2      
  leaq (%r15,%rdi,1), %rdi            #  666   0x56150  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)   #  667   0x56154  3      
  movl %esi, %esi                     #  668   0x56157  2      
  movl %edi, %edi                     #  669   0x56159  2      
  jne .L_57800                        #  670   0x5615b  6      
  nop                                 #  671   0x56161  1      
.L_56660:                             #        0x56162  0      
  movl %r12d, %r12d                   #  672   0x56162  3      
  movl 0x8(%r15,%r12,1), %eax         #  673   0x56165  5      
  movl %ebx, %edi                     #  674   0x5616a  2      
  movl %eax, %eax                     #  675   0x5616c  2      
  movl 0x8(%r15,%rax,1), %esi         #  676   0x5616e  5      
  nop                                 #  677   0x56173  1      
  callq .d_print_subexpr              #  678   0x56174  5      
  movl %r12d, %r12d                   #  679   0x56179  3      
  movl 0x4(%r15,%r12,1), %eax         #  680   0x5617c  5      
  movl %eax, %eax                     #  681   0x56181  2      
  cmpl $0x2b, (%r15,%rax,1)           #  682   0x56183  5      
  jne .L_558e0                        #  683   0x56188  6      
  movl %eax, %eax                     #  684   0x5618e  2      
  movl 0x4(%r15,%rax,1), %eax         #  685   0x56190  5      
  nop                                 #  686   0x56195  1      
  movl %eax, %eax                     #  687   0x56196  2      
  cmpl $0x1, 0x8(%r15,%rax,1)         #  688   0x56198  6      
  jne .L_558e0                        #  689   0x5619e  6      
  movl %eax, %eax                     #  690   0x561a4  2      
  movl 0x4(%r15,%rax,1), %eax         #  691   0x561a6  5      
  movl %eax, %eax                     #  692   0x561ab  2      
  cmpb $0x3e, (%r15,%rax,1)           #  693   0x561ad  5      
  nop                                 #  694   0x561b2  1      
  jne .L_558e0                        #  695   0x561b3  6      
  nop                                 #  696   0x561b9  1      
  nop                                 #  697   0x561ba  1      
.L_566e0:                             #        0x561bb  0      
  movl $0x29, %esi                    #  698   0x561bb  5      
  movl %ebx, %edi                     #  699   0x561c0  2      
  nop                                 #  700   0x561c2  1      
  nop                                 #  701   0x561c3  1      
  callq .d_append_char                #  702   0x561c4  5      
  jmpq .L_558e0                       #  703   0x561c9  5      
  nop                                 #  704   0x561ce  1      
  nop                                 #  705   0x561cf  1      
  movl %ebx, %edi                     #  706   0x561d0  2      
  movl $0x1002299b, %esi              #  707   0x561d2  5      
  nop                                 #  708   0x561d7  1      
  nop                                 #  709   0x561d8  1      
  callq .d_append_string              #  710   0x561d9  5      
  movl %r12d, %r12d                   #  711   0x561de  3      
  movl 0x4(%r15,%r12,1), %esi         #  712   0x561e1  5      
  movl %ebx, %edi                     #  713   0x561e6  2      
  xchgw %ax, %ax                      #  714   0x561e8  3      
  nop                                 #  715   0x561eb  1      
  callq .d_print_comp                 #  716   0x561ec  5      
  jmpq .L_566e0                       #  717   0x561f1  5      
  nop                                 #  718   0x561f6  1      
  nop                                 #  719   0x561f7  1      
  movl %r12d, %r12d                   #  720   0x561f8  3      
  movl 0x4(%r15,%r12,1), %edx         #  721   0x561fb  5      
  xorl %r13d, %r13d                   #  722   0x56200  3      
  movl %edx, %edx                     #  723   0x56203  2      
  cmpl $0x23, (%r15,%rdx,1)           #  724   0x56205  5      
  jne .L_567e0                        #  725   0x5620a  6      
  movl %edx, %edx                     #  726   0x56210  2      
  movl 0x4(%r15,%rdx,1), %edx         #  727   0x56212  5      
  nop                                 #  728   0x56217  1      
  movl %edx, %edx                     #  729   0x56218  2      
  movl 0x10(%r15,%rdx,1), %r13d       #  730   0x5621a  5      
  cmpl $0x1, %r13d                    #  731   0x5621f  4      
  jb .L_567e0                         #  732   0x56223  6      
  cmpl $0x6, %r13d                    #  733   0x56229  4      
  jbe .L_57580                        #  734   0x5622d  6      
  cmpl $0x7, %r13d                    #  735   0x56233  4      
  nop                                 #  736   0x56237  1      
  je .L_57500                         #  737   0x56238  6      
  nop                                 #  738   0x5623e  1      
  nop                                 #  739   0x5623f  1      
.L_567e0:                             #        0x56240  0      
  movl $0x28, %esi                    #  740   0x56240  5      
  movl %ebx, %edi                     #  741   0x56245  2      
  nop                                 #  742   0x56247  1      
  nop                                 #  743   0x56248  1      
  callq .d_append_char                #  744   0x56249  5      
  movl %r12d, %r12d                   #  745   0x5624e  3      
  movl 0x4(%r15,%r12,1), %esi         #  746   0x56251  5      
  movl %ebx, %edi                     #  747   0x56256  2      
  xchgw %ax, %ax                      #  748   0x56258  3      
  nop                                 #  749   0x5625b  1      
  callq .d_print_comp                 #  750   0x5625c  5      
  movl $0x29, %esi                    #  751   0x56261  5      
  movl %ebx, %edi                     #  752   0x56266  2      
  nop                                 #  753   0x56268  1      
  nop                                 #  754   0x56269  1      
  callq .d_append_char                #  755   0x5626a  5      
  movl %r12d, %r12d                   #  756   0x5626f  3      
  cmpl $0x35, (%r15,%r12,1)           #  757   0x56272  5      
  je .L_577c0                         #  758   0x56277  6      
  nop                                 #  759   0x5627d  1      
  nop                                 #  760   0x5627e  1      
.L_56860:                             #        0x5627f  0      
  cmpl $0x8, %r13d                    #  761   0x5627f  4      
  jne .L_55a40                        #  762   0x56283  6      
  movl %ebx, %edi                     #  763   0x56289  2      
  movl $0x5b, %esi                    #  764   0x5628b  5      
  nop                                 #  765   0x56290  1      
  callq .d_append_char                #  766   0x56291  5      
  movl %r12d, %r12d                   #  767   0x56296  3      
  movl 0x8(%r15,%r12,1), %esi         #  768   0x56299  5      
  movl %ebx, %edi                     #  769   0x5629e  2      
  xchgw %ax, %ax                      #  770   0x562a0  3      
  nop                                 #  771   0x562a3  1      
  callq .d_print_comp                 #  772   0x562a4  5      
  movl $0x5d, %esi                    #  773   0x562a9  5      
  movl %ebx, %edi                     #  774   0x562ae  2      
  nop                                 #  775   0x562b0  1      
  nop                                 #  776   0x562b1  1      
  callq .d_append_char                #  777   0x562b2  5      
  jmpq .L_558e0                       #  778   0x562b7  5      
  nop                                 #  779   0x562bc  1      
  nop                                 #  780   0x562bd  1      
  movl %r12d, %r12d                   #  781   0x562be  3      
  movl 0x8(%r15,%r12,1), %eax         #  782   0x562c1  5      
  movl %eax, %eax                     #  783   0x562c6  2      
  cmpl $0x32, (%r15,%rax,1)           #  784   0x562c8  5      
  jne .L_558c0                        #  785   0x562cd  6      
  movl %eax, %eax                     #  786   0x562d3  2      
  movl 0x8(%r15,%rax,1), %edx         #  787   0x562d5  5      
  nop                                 #  788   0x562da  1      
  movl %edx, %edx                     #  789   0x562db  2      
  cmpl $0x33, (%r15,%rdx,1)           #  790   0x562dd  5      
  jne .L_558c0                        #  791   0x562e2  6      
  movl %eax, %eax                     #  792   0x562e8  2      
  movl 0x4(%r15,%rax,1), %esi         #  793   0x562ea  5      
  movl %ebx, %edi                     #  794   0x562ef  2      
  nop                                 #  795   0x562f1  1      
  callq .d_print_subexpr              #  796   0x562f2  5      
  movl %r12d, %r12d                   #  797   0x562f7  3      
  movl 0x4(%r15,%r12,1), %esi         #  798   0x562fa  5      
  movl %ebx, %edi                     #  799   0x562ff  2      
  xchgw %ax, %ax                      #  800   0x56301  3      
  nop                                 #  801   0x56304  1      
  callq .d_print_expr_op              #  802   0x56305  5      
  movl %r12d, %r12d                   #  803   0x5630a  3      
  movl 0x8(%r15,%r12,1), %eax         #  804   0x5630d  5      
  movl %ebx, %edi                     #  805   0x56312  2      
  movl %eax, %eax                     #  806   0x56314  2      
  movl 0x8(%r15,%rax,1), %eax         #  807   0x56316  5      
  movl %eax, %eax                     #  808   0x5631b  2      
  movl 0x4(%r15,%rax,1), %esi         #  809   0x5631d  5      
  nop                                 #  810   0x56322  1      
  callq .d_print_subexpr              #  811   0x56323  5      
  movl %ebx, %edi                     #  812   0x56328  2      
  movl $0x10022976, %esi              #  813   0x5632a  5      
  nop                                 #  814   0x5632f  1      
  nop                                 #  815   0x56330  1      
  callq .d_append_string              #  816   0x56331  5      
  movl %r12d, %r12d                   #  817   0x56336  3      
  movl 0x8(%r15,%r12,1), %eax         #  818   0x56339  5      
  movl %ebx, %edi                     #  819   0x5633e  2      
  movl %eax, %eax                     #  820   0x56340  2      
  movl 0x8(%r15,%rax,1), %eax         #  821   0x56342  5      
  movl %eax, %eax                     #  822   0x56347  2      
  movl 0x8(%r15,%rax,1), %esi         #  823   0x56349  5      
  nop                                 #  824   0x5634e  1      
  callq .d_print_subexpr              #  825   0x5634f  5      
  jmpq .L_558e0                       #  826   0x56354  5      
  nop                                 #  827   0x56359  1      
  nop                                 #  828   0x5635a  1      
  movl $0x1002291d, %esi              #  829   0x5635b  5      
  jmpq .L_55960                       #  830   0x56360  5      
  nop                                 #  831   0x56365  1      
  nop                                 #  832   0x56366  1      
  movl $0x10022936, %esi              #  833   0x56367  5      
  jmpq .L_55960                       #  834   0x5636c  5      
  nop                                 #  835   0x56371  1      
  nop                                 #  836   0x56372  1      
  movl %ebx, %ebx                     #  837   0x56373  2      
  movl 0x118(%r15,%rbx,1), %edi       #  838   0x56375  8      
  testq %rdi, %rdi                    #  839   0x5637d  3      
  je .L_56d20                         #  840   0x56380  6      
  movq %rdi, %rdx                     #  841   0x56386  3      
  nop                                 #  842   0x56389  1      
.L_56a20:                             #        0x5638a  0      
  movl %edx, %edx                     #  843   0x5638a  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  844   0x5638c  5      
  testl %ecx, %ecx                    #  845   0x56391  2      
  jne .L_56a60                        #  846   0x56393  6      
  movl %edx, %edx                     #  847   0x56399  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  848   0x5639b  5      
  movl %ecx, %ecx                     #  849   0x563a0  2      
  movl (%r15,%rcx,1), %ecx            #  850   0x563a2  4      
  leal -0x17(%rcx), %esi              #  851   0x563a6  3      
  cmpl $0x2, %esi                     #  852   0x563a9  3      
  xchgw %ax, %ax                      #  853   0x563ac  3      
  ja .L_56d20                         #  854   0x563af  6      
  cmpl %ecx, %eax                     #  855   0x563b5  2      
  je .L_55980                         #  856   0x563b7  6      
  nop                                 #  857   0x563bd  1      
  nop                                 #  858   0x563be  1      
.L_56a60:                             #        0x563bf  0      
  movl %edx, %edx                     #  859   0x563bf  2      
  movl (%r15,%rdx,1), %edx            #  860   0x563c1  4      
  testq %rdx, %rdx                    #  861   0x563c5  3      
  jne .L_56a20                        #  862   0x563c8  6      
  jmpq .L_56d20                       #  863   0x563ce  5      
  nop                                 #  864   0x563d3  1      
  nop                                 #  865   0x563d4  1      
  movl %ebx, %edi                     #  866   0x563d5  2      
  movl $0x100229a6, %esi              #  867   0x563d7  5      
  nop                                 #  868   0x563dc  1      
  nop                                 #  869   0x563dd  1      
  callq .d_append_string              #  870   0x563de  5      
  movl %r12d, %r12d                   #  871   0x563e3  3      
  movl 0x4(%r15,%r12,1), %edx         #  872   0x563e6  5      
  leal 0x20(%rsp), %r12d              #  873   0x563eb  5      
  movl $0x100229ac, %esi              #  874   0x563f0  5      
  xorl %eax, %eax                     #  875   0x563f5  2      
  movl %r12d, %edi                    #  876   0x563f7  3      
  nop                                 #  877   0x563fa  1      
  callq .sprintf                      #  878   0x563fb  5      
  movl %r12d, %esi                    #  879   0x56400  3      
  movl %ebx, %edi                     #  880   0x56403  2      
  nop                                 #  881   0x56405  1      
  nop                                 #  882   0x56406  1      
  callq .d_append_string              #  883   0x56407  5      
  jmpq .L_558e0                       #  884   0x5640c  5      
  nop                                 #  885   0x56411  1      
  nop                                 #  886   0x56412  1      
  movl $0x100228f9, %esi              #  887   0x56413  5      
  jmpq .L_55960                       #  888   0x56418  5      
  nop                                 #  889   0x5641d  1      
  nop                                 #  890   0x5641e  1      
  movl $0x10022909, %esi              #  891   0x5641f  5      
  jmpq .L_55960                       #  892   0x56424  5      
  nop                                 #  893   0x56429  1      
  nop                                 #  894   0x5642a  1      
  movl %ebx, %ebx                     #  895   0x5642b  2      
  testb $0x4, (%r15,%rbx,1)           #  896   0x5642d  5      
  movl %ebx, %ebx                     #  897   0x56432  2      
  movl 0x118(%r15,%rbx,1), %r13d      #  898   0x56434  8      
  movl %ebx, %ebx                     #  899   0x5643c  2      
  movl $0x0, 0x118(%r15,%rbx,1)       #  900   0x5643e  12     
  nop                                 #  901   0x5644a  1      
  movl %r12d, %r12d                   #  902   0x5644b  3      
  movl 0x4(%r15,%r12,1), %eax         #  903   0x5644e  5      
  je .L_56ba0                         #  904   0x56453  6      
  movl %eax, %eax                     #  905   0x56459  2      
  movl (%r15,%rax,1), %esi            #  906   0x5645b  4      
  testl %esi, %esi                    #  907   0x5645f  2      
  jne .L_56ba0                        #  908   0x56461  6      
  movl %eax, %eax                     #  909   0x56467  2      
  cmpl $0x6, 0x8(%r15,%rax,1)         #  910   0x56469  6      
  nop                                 #  911   0x5646f  1      
  je .L_578a0                         #  912   0x56470  6      
  nop                                 #  913   0x56476  1      
  nop                                 #  914   0x56477  1      
.L_56ba0:                             #        0x56478  0      
  movl %eax, %esi                     #  915   0x56478  2      
  movl %ebx, %edi                     #  916   0x5647a  2      
  nop                                 #  917   0x5647c  1      
  nop                                 #  918   0x5647d  1      
  callq .d_print_comp                 #  919   0x5647e  5      
  movl %ebx, %ebx                     #  920   0x56483  2      
  cmpb $0x3c, 0x108(%r15,%rbx,1)      #  921   0x56485  9      
  je .L_57780                         #  922   0x5648e  6      
  nop                                 #  923   0x56494  1      
.L_56be0:                             #        0x56495  0      
  movl $0x3c, %esi                    #  924   0x56495  5      
  movl %ebx, %edi                     #  925   0x5649a  2      
  nop                                 #  926   0x5649c  1      
  nop                                 #  927   0x5649d  1      
  callq .d_append_char                #  928   0x5649e  5      
  movl %r12d, %r12d                   #  929   0x564a3  3      
  movl 0x8(%r15,%r12,1), %esi         #  930   0x564a6  5      
  movl %ebx, %edi                     #  931   0x564ab  2      
  xchgw %ax, %ax                      #  932   0x564ad  3      
  nop                                 #  933   0x564b0  1      
  callq .d_print_comp                 #  934   0x564b1  5      
  movl %ebx, %ebx                     #  935   0x564b6  2      
  cmpb $0x3e, 0x108(%r15,%rbx,1)      #  936   0x564b8  9      
  je .L_57740                         #  937   0x564c1  6      
  nop                                 #  938   0x564c7  1      
.L_56c40:                             #        0x564c8  0      
  movl $0x3e, %esi                    #  939   0x564c8  5      
  movl %ebx, %edi                     #  940   0x564cd  2      
  nop                                 #  941   0x564cf  1      
  nop                                 #  942   0x564d0  1      
  callq .d_append_char                #  943   0x564d1  5      
.L_56c60:                             #        0x564d6  0      
  movl %ebx, %ebx                     #  944   0x564d6  2      
  movl %r13d, 0x118(%r15,%rbx,1)      #  945   0x564d8  8      
  jmpq .L_558e0                       #  946   0x564e0  5      
  xchgw %ax, %ax                      #  947   0x564e5  3      
  nop                                 #  948   0x564e8  1      
  movl %ebx, %ebx                     #  949   0x564e9  2      
  movl 0x114(%r15,%rbx,1), %r13d      #  950   0x564eb  8      
  testq %r13, %r13                    #  951   0x564f3  3      
  je .L_57720                         #  952   0x564f6  6      
  movl %r13d, %r13d                   #  953   0x564fc  3      
  movl 0x4(%r15,%r13,1), %eax         #  954   0x564ff  5      
  nop                                 #  955   0x56504  1      
  movl %r12d, %r12d                   #  956   0x56505  3      
  movl 0x4(%r15,%r12,1), %edx         #  957   0x56508  5      
  movl %eax, %eax                     #  958   0x5650d  2      
  movl 0x8(%r15,%rax,1), %eax         #  959   0x5650f  5      
  testq %rax, %rax                    #  960   0x56514  3      
  jne .L_56ce0                        #  961   0x56517  6      
  jmpq .L_558c0                       #  962   0x5651d  5      
  nop                                 #  963   0x56522  1      
.L_56cc0:                             #        0x56523  0      
  testl %edx, %edx                    #  964   0x56523  2      
  jle .L_573c0                        #  965   0x56525  6      
  movl %eax, %eax                     #  966   0x5652b  2      
  movl 0x8(%r15,%rax,1), %eax         #  967   0x5652d  5      
  subl $0x1, %edx                     #  968   0x56532  3      
  testq %rax, %rax                    #  969   0x56535  3      
  je .L_558c0                         #  970   0x56538  6      
  nop                                 #  971   0x5653e  1      
.L_56ce0:                             #        0x5653f  0      
  movl %eax, %eax                     #  972   0x5653f  2      
  cmpl $0x2a, (%r15,%rax,1)           #  973   0x56541  5      
  je .L_56cc0                         #  974   0x56546  6      
  jmpq .L_558c0                       #  975   0x5654c  5      
  nop                                 #  976   0x56551  1      
  nop                                 #  977   0x56552  1      
  movl %ebx, %ebx                     #  978   0x56553  2      
  movl 0x118(%r15,%rbx,1), %edi       #  979   0x56555  8      
  nop                                 #  980   0x5655d  1      
  nop                                 #  981   0x5655e  1      
.L_56d20:                             #        0x5655f  0      
  leal 0x20(%rsp), %eax               #  982   0x5655f  4      
  movl %edi, 0x20(%rsp)               #  983   0x56563  4      
  movl %r12d, 0x24(%rsp)              #  984   0x56567  5      
  movl $0x0, 0x28(%rsp)               #  985   0x5656c  8      
  movl %ebx, %edi                     #  986   0x56574  2      
  nop                                 #  987   0x56576  1      
  movl %ebx, %ebx                     #  988   0x56577  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  989   0x56579  8      
  movl %ebx, %ebx                     #  990   0x56581  2      
  movl 0x114(%r15,%rbx,1), %eax       #  991   0x56583  8      
  movl %eax, 0x2c(%rsp)               #  992   0x5658b  4      
  movl %r12d, %r12d                   #  993   0x5658f  3      
  movl 0x4(%r15,%r12,1), %esi         #  994   0x56592  5      
  nop                                 #  995   0x56597  1      
  nop                                 #  996   0x56598  1      
  callq .d_print_comp                 #  997   0x56599  5      
  movl 0x28(%rsp), %eax               #  998   0x5659e  4      
  testl %eax, %eax                    #  999   0x565a2  2      
  jne .L_56400                        #  1000  0x565a4  6      
  movl %r12d, %esi                    #  1001  0x565aa  3      
  movl %ebx, %edi                     #  1002  0x565ad  2      
  nop                                 #  1003  0x565af  1      
  callq .d_print_mod                  #  1004  0x565b0  5      
  jmpq .L_56400                       #  1005  0x565b5  5      
  nop                                 #  1006  0x565ba  1      
  nop                                 #  1007  0x565bb  1      
  movl %ebx, %ebx                     #  1008  0x565bc  2      
  testb $0x4, (%r15,%rbx,1)           #  1009  0x565be  5      
  jne .L_57280                        #  1010  0x565c3  6      
  movl %r12d, %r12d                   #  1011  0x565c9  3      
  movl 0x4(%r15,%r12,1), %eax         #  1012  0x565cc  5      
  movl %ebx, %edi                     #  1013  0x565d1  2      
  movl %eax, %eax                     #  1014  0x565d3  2      
  movl 0x4(%r15,%rax,1), %edx         #  1015  0x565d5  5      
  xchgw %ax, %ax                      #  1016  0x565da  3      
  movl %eax, %eax                     #  1017  0x565dd  2      
  movl (%r15,%rax,1), %esi            #  1018  0x565df  4      
  nop                                 #  1019  0x565e3  1      
  nop                                 #  1020  0x565e4  1      
  callq .d_append_buffer              #  1021  0x565e5  5      
  jmpq .L_558e0                       #  1022  0x565ea  5      
  nop                                 #  1023  0x565ef  1      
  nop                                 #  1024  0x565f0  1      
  movl $0x1002298c, %esi              #  1025  0x565f1  5      
  jmpq .L_55960                       #  1026  0x565f6  5      
  nop                                 #  1027  0x565fb  1      
  nop                                 #  1028  0x565fc  1      
  movl %r12d, %r12d                   #  1029  0x565fd  3      
  cmpw $0x0, 0xa(%r15,%r12,1)         #  1030  0x56600  7      
  jne .L_57300                        #  1031  0x56607  6      
  nop                                 #  1032  0x5660d  1      
  nop                                 #  1033  0x5660e  1      
.L_56e60:                             #        0x5660f  0      
  movl %r12d, %r12d                   #  1034  0x5660f  3      
  movl 0x4(%r15,%r12,1), %esi         #  1035  0x56612  5      
  movl %esi, %esi                     #  1036  0x56617  2      
  cmpl $0x10022220, 0x4(%r15,%rsi,1)  #  1037  0x56619  9      
  je .L_56ea0                         #  1038  0x56622  6      
  movl %ebx, %edi                     #  1039  0x56628  2      
  nop                                 #  1040  0x5662a  1      
  callq .d_print_comp                 #  1041  0x5662b  5      
  movl $0x20, %esi                    #  1042  0x56630  5      
  movl %ebx, %edi                     #  1043  0x56635  2      
  nop                                 #  1044  0x56637  1      
  nop                                 #  1045  0x56638  1      
  callq .d_append_char                #  1046  0x56639  5      
.L_56ea0:                             #        0x5663e  0      
  movl %r12d, %r12d                   #  1047  0x5663e  3      
  cmpw $0x0, 0x8(%r15,%r12,1)         #  1048  0x56641  7      
  je .L_57200                         #  1049  0x56648  6      
  movl $0x10022952, %esi              #  1050  0x5664e  5      
  movl %ebx, %edi                     #  1051  0x56653  2      
  nop                                 #  1052  0x56655  1      
  callq .d_append_string              #  1053  0x56656  5      
  jmpq .L_558e0                       #  1054  0x5665b  5      
  nop                                 #  1055  0x56660  1      
  nop                                 #  1056  0x56661  1      
  movl %r12d, %r12d                   #  1057  0x56662  3      
  movl 0x4(%r15,%r12,1), %esi         #  1058  0x56665  5      
  testq %rsi, %rsi                    #  1059  0x5666a  3      
  je .L_56f00                         #  1060  0x5666d  6      
  movl %ebx, %edi                     #  1061  0x56673  2      
  nop                                 #  1062  0x56675  1      
  callq .d_print_comp                 #  1063  0x56676  5      
.L_56f00:                             #        0x5667b  0      
  movl %r12d, %r12d                   #  1064  0x5667b  3      
  movl 0x8(%r15,%r12,1), %r8d         #  1065  0x5667e  5      
  testl %r8d, %r8d                    #  1066  0x56683  3      
  je .L_558e0                         #  1067  0x56686  6      
  movl $0x10022960, %esi              #  1068  0x5668c  5      
  movl %ebx, %edi                     #  1069  0x56691  2      
  nop                                 #  1070  0x56693  1      
  callq .d_append_string              #  1071  0x56694  5      
  movl %r12d, %r12d                   #  1072  0x56699  3      
  movl 0x8(%r15,%r12,1), %esi         #  1073  0x5669c  5      
  movl %ebx, %edi                     #  1074  0x566a1  2      
  movl %ebx, %ebx                     #  1075  0x566a3  2      
  movl 0x104(%r15,%rbx,1), %r13d      #  1076  0x566a5  8      
  nop                                 #  1077  0x566ad  1      
  callq .d_print_comp                 #  1078  0x566ae  5      
  movl %ebx, %ebx                     #  1079  0x566b3  2      
  movl 0x104(%r15,%rbx,1), %eax       #  1080  0x566b5  8      
  cmpl %r13d, %eax                    #  1081  0x566bd  3      
  jne .L_558e0                        #  1082  0x566c0  6      
  subl $0x2, %eax                     #  1083  0x566c6  3      
  movl %ebx, %ebx                     #  1084  0x566c9  2      
  movl %eax, 0x104(%r15,%rbx,1)       #  1085  0x566cb  8      
  jmpq .L_558e0                       #  1086  0x566d3  5      
  nop                                 #  1087  0x566d8  1      
  nop                                 #  1088  0x566d9  1      
  movl %r12d, %r12d                   #  1089  0x566da  3      
  movl 0x4(%r15,%r12,1), %esi         #  1090  0x566dd  5      
  movl %ebx, %edi                     #  1091  0x566e2  2      
  xchgw %ax, %ax                      #  1092  0x566e4  3      
  nop                                 #  1093  0x566e7  1      
  callq .d_print_comp                 #  1094  0x566e8  5      
  jmpq .L_55a40                       #  1095  0x566ed  5      
  nop                                 #  1096  0x566f2  1      
  nop                                 #  1097  0x566f3  1      
  movl %ebx, %ebx                     #  1098  0x566f4  2      
  testb $0x20, (%r15,%rbx,1)          #  1099  0x566f6  5      
  jne .L_572c0                        #  1100  0x566fb  6      
  nop                                 #  1101  0x56701  1      
  nop                                 #  1102  0x56702  1      
.L_56fe0:                             #        0x56703  0      
  movl %r12d, %r12d                   #  1103  0x56703  3      
  movl 0x4(%r15,%r12,1), %r14d        #  1104  0x56706  5      
  testl %r14d, %r14d                  #  1105  0x5670b  3      
  je .L_57080                         #  1106  0x5670e  6      
  movl %ebx, %ebx                     #  1107  0x56714  2      
  movl 0x118(%r15,%rbx,1), %eax       #  1108  0x56716  8      
  movl %r12d, 0x24(%rsp)              #  1109  0x5671e  5      
  movl %ebx, %edi                     #  1110  0x56723  2      
  movl $0x0, 0x28(%rsp)               #  1111  0x56725  8      
  movl %eax, 0x20(%rsp)               #  1112  0x5672d  4      
  leal 0x20(%rsp), %eax               #  1113  0x56731  4      
  movl %ebx, %ebx                     #  1114  0x56735  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  1115  0x56737  8      
  nop                                 #  1116  0x5673f  1      
  movl %ebx, %ebx                     #  1117  0x56740  2      
  movl 0x114(%r15,%rbx,1), %eax       #  1118  0x56742  8      
  movl %eax, 0x2c(%rsp)               #  1119  0x5674a  4      
  movl %r12d, %r12d                   #  1120  0x5674e  3      
  movl 0x4(%r15,%r12,1), %esi         #  1121  0x56751  5      
  nop                                 #  1122  0x56756  1      
  callq .d_print_comp                 #  1123  0x56757  5      
  movl 0x28(%rsp), %r13d              #  1124  0x5675c  5      
  movl 0x20(%rsp), %eax               #  1125  0x56761  4      
  testl %r13d, %r13d                  #  1126  0x56765  3      
  movl %ebx, %ebx                     #  1127  0x56768  2      
  movl %eax, 0x118(%r15,%rbx,1)       #  1128  0x5676a  8      
  jne .L_558e0                        #  1129  0x56772  6      
  nop                                 #  1130  0x56778  1      
  movl %ebx, %ebx                     #  1131  0x56779  2      
  testb $0x20, (%r15,%rbx,1)          #  1132  0x5677b  5      
  jne .L_558e0                        #  1133  0x56780  6      
  movl $0x20, %esi                    #  1134  0x56786  5      
  movl %ebx, %edi                     #  1135  0x5678b  2      
  nop                                 #  1136  0x5678d  1      
  callq .d_append_char                #  1137  0x5678e  5      
.L_57080:                             #        0x56793  0      
  movl %ebx, %ebx                     #  1138  0x56793  2      
  testb $0x20, (%r15,%rbx,1)          #  1139  0x56795  5      
  jne .L_558e0                        #  1140  0x5679a  6      
  movl %ebx, %ebx                     #  1141  0x567a0  2      
  movl 0x118(%r15,%rbx,1), %edx       #  1142  0x567a2  8      
  movl %r12d, %esi                    #  1143  0x567aa  3      
  movl %ebx, %edi                     #  1144  0x567ad  2      
  nop                                 #  1145  0x567af  1      
  nop                                 #  1146  0x567b0  1      
  nop                                 #  1147  0x567b1  1      
  callq .d_print_function_type        #  1148  0x567b2  5      
  jmpq .L_558e0                       #  1149  0x567b7  5      
  nop                                 #  1150  0x567bc  1      
  nop                                 #  1151  0x567bd  1      
  movl %r12d, %r12d                   #  1152  0x567be  3      
  movsbl 0x4(%r15,%r12,1), %esi       #  1153  0x567c1  6      
  movl %ebx, %edi                     #  1154  0x567c7  2      
  nop                                 #  1155  0x567c9  1      
  nop                                 #  1156  0x567ca  1      
  callq .d_append_char                #  1157  0x567cb  5      
  jmpq .L_558e0                       #  1158  0x567d0  5      
  nop                                 #  1159  0x567d5  1      
  nop                                 #  1160  0x567d6  1      
.L_57120:                             #        0x567d7  0      
  leal 0x1(%r14), %r12d               #  1161  0x567d7  4      
  movl %r12d, %r12d                   #  1162  0x567db  3      
  cmpb $0x5f, (%r15,%r12,1)           #  1163  0x567de  5      
  jne .L_55d40                        #  1164  0x567e3  6      
  movl %r14d, %r14d                   #  1165  0x567e9  3      
  cmpb $0x55, 0x2(%r15,%r14,1)        #  1166  0x567ec  6      
  nop                                 #  1167  0x567f2  1      
  jne .L_55d40                        #  1168  0x567f3  6      
  addl $0x3, %r14d                    #  1169  0x567f9  4      
  cmpl %r14d, %r13d                   #  1170  0x567fd  3      
  jbe .L_55d40                        #  1171  0x56800  6      
  xorl %edx, %edx                     #  1172  0x56806  2      
  jmpq .L_571a0                       #  1173  0x56808  5      
  nop                                 #  1174  0x5680d  1      
.L_57160:                             #        0x5680e  0      
  movsbl %al, %eax                    #  1175  0x5680e  3      
  subl $0x30, %eax                    #  1176  0x56811  3      
  nop                                 #  1177  0x56814  1      
  nop                                 #  1178  0x56815  1      
.L_57180:                             #        0x56816  0      
  addl $0x1, %r14d                    #  1179  0x56816  4      
  cmpl %r14d, %r13d                   #  1180  0x5681a  3      
  jbe .L_55d40                        #  1181  0x5681d  6      
  shll $0x4, %edx                     #  1182  0x56823  3      
  leal (%rax,%rdx,1), %edx            #  1183  0x56826  3      
  nop                                 #  1184  0x56829  1      
.L_571a0:                             #        0x5682a  0      
  movl %r14d, %r14d                   #  1185  0x5682a  3      
  movzbl (%r15,%r14,1), %eax          #  1186  0x5682d  5      
  leal -0x30(%rax), %ecx              #  1187  0x56832  3      
  cmpb $0x9, %cl                      #  1188  0x56835  3      
  jbe .L_57160                        #  1189  0x56838  6      
  leal -0x41(%rax), %ecx              #  1190  0x5683e  3      
  cmpb $0x5, %cl                      #  1191  0x56841  3      
  ja .L_571e0                         #  1192  0x56844  6      
  movsbl %al, %eax                    #  1193  0x5684a  3      
  subl $0x37, %eax                    #  1194  0x5684d  3      
  xchgw %ax, %ax                      #  1195  0x56850  3      
  jmpq .L_57180                       #  1196  0x56853  5      
  nop                                 #  1197  0x56858  1      
  nop                                 #  1198  0x56859  1      
.L_571e0:                             #        0x5685a  0      
  leal -0x61(%rax), %ecx              #  1199  0x5685a  3      
  cmpb $0x5, %cl                      #  1200  0x5685d  3      
  ja .L_57a40                         #  1201  0x56860  6      
  movsbl %al, %eax                    #  1202  0x56866  3      
  subl $0x57, %eax                    #  1203  0x56869  3      
  jmpq .L_57180                       #  1204  0x5686c  5      
  nop                                 #  1205  0x56871  1      
.L_57200:                             #        0x56872  0      
  movl $0x10022959, %esi              #  1206  0x56872  5      
  movl %ebx, %edi                     #  1207  0x56877  2      
  nop                                 #  1208  0x56879  1      
  nop                                 #  1209  0x5687a  1      
  callq .d_append_string              #  1210  0x5687b  5      
  jmpq .L_558e0                       #  1211  0x56880  5      
  nop                                 #  1212  0x56885  1      
  nop                                 #  1213  0x56886  1      
.L_57240:                             #        0x56887  0      
  movl $0x2e, %esi                    #  1214  0x56887  5      
  movl %ebx, %edi                     #  1215  0x5688c  2      
  nop                                 #  1216  0x5688e  1      
  nop                                 #  1217  0x5688f  1      
  callq .d_append_char                #  1218  0x56890  5      
  jmpq .L_55a40                       #  1219  0x56895  5      
  nop                                 #  1220  0x5689a  1      
  nop                                 #  1221  0x5689b  1      
.L_57280:                             #        0x5689c  0      
  movl %r12d, %r12d                   #  1222  0x5689c  3      
  movl 0x4(%r15,%r12,1), %eax         #  1223  0x5689f  5      
  movl %ebx, %edi                     #  1224  0x568a4  2      
  movl %eax, %eax                     #  1225  0x568a6  2      
  movl 0xc(%r15,%rax,1), %edx         #  1226  0x568a8  5      
  movl %eax, %eax                     #  1227  0x568ad  2      
  movl 0x8(%r15,%rax,1), %esi         #  1228  0x568af  5      
  nop                                 #  1229  0x568b4  1      
  callq .d_append_buffer              #  1230  0x568b5  5      
  jmpq .L_558e0                       #  1231  0x568ba  5      
  nop                                 #  1232  0x568bf  1      
  nop                                 #  1233  0x568c0  1      
.L_572c0:                             #        0x568c1  0      
  movl %ebx, %ebx                     #  1234  0x568c1  2      
  movl 0x118(%r15,%rbx,1), %edx       #  1235  0x568c3  8      
  movl %r12d, %esi                    #  1236  0x568cb  3      
  movl %ebx, %edi                     #  1237  0x568ce  2      
  nop                                 #  1238  0x568d0  1      
  callq .d_print_function_type        #  1239  0x568d1  5      
  jmpq .L_56fe0                       #  1240  0x568d6  5      
  nop                                 #  1241  0x568db  1      
  nop                                 #  1242  0x568dc  1      
.L_57300:                             #        0x568dd  0      
  movl $0x1002294c, %esi              #  1243  0x568dd  5      
  movl %ebx, %edi                     #  1244  0x568e2  2      
  nop                                 #  1245  0x568e4  1      
  nop                                 #  1246  0x568e5  1      
  callq .d_append_string              #  1247  0x568e6  5      
  jmpq .L_56e60                       #  1248  0x568eb  5      
  nop                                 #  1249  0x568f0  1      
  nop                                 #  1250  0x568f1  1      
.L_57340:                             #        0x568f2  0      
  movl %ebx, %edi                     #  1251  0x568f2  2      
  movl $0x28, %esi                    #  1252  0x568f4  5      
  nop                                 #  1253  0x568f9  1      
  nop                                 #  1254  0x568fa  1      
  callq .d_append_char                #  1255  0x568fb  5      
  movl %r12d, %r12d                   #  1256  0x56900  3      
  movl 0x4(%r15,%r12,1), %esi         #  1257  0x56903  5      
  movl %ebx, %edi                     #  1258  0x56908  2      
  xchgw %ax, %ax                      #  1259  0x5690a  3      
  nop                                 #  1260  0x5690d  1      
  callq .d_print_cast                 #  1261  0x5690e  5      
  movl $0x29, %esi                    #  1262  0x56913  5      
  movl %ebx, %edi                     #  1263  0x56918  2      
  nop                                 #  1264  0x5691a  1      
  nop                                 #  1265  0x5691b  1      
  callq .d_append_char                #  1266  0x5691c  5      
  jmpq .L_56580                       #  1267  0x56921  5      
  nop                                 #  1268  0x56926  1      
  nop                                 #  1269  0x56927  1      
.L_573c0:                             #        0x56928  0      
  testq %rax, %rax                    #  1270  0x56928  3      
  je .L_558c0                         #  1271  0x5692b  6      
  testl %edx, %edx                    #  1272  0x56931  2      
  jne .L_558c0                        #  1273  0x56933  6      
  movl %eax, %eax                     #  1274  0x56939  2      
  movl 0x4(%r15,%rax,1), %esi         #  1275  0x5693b  5      
  testq %rsi, %rsi                    #  1276  0x56940  3      
  nop                                 #  1277  0x56943  1      
  je .L_558c0                         #  1278  0x56944  6      
  movl %esi, %esi                     #  1279  0x5694a  2      
  cmpl $0x2a, (%r15,%rsi,1)           #  1280  0x5694c  5      
  je .L_57440                         #  1281  0x56951  6      
  xchgw %ax, %ax                      #  1282  0x56957  3      
  nop                                 #  1283  0x5695a  1      
.L_57400:                             #        0x5695b  0      
  movl %r13d, %r13d                   #  1284  0x5695b  3      
  movl (%r15,%r13,1), %eax            #  1285  0x5695e  4      
  movl %ebx, %edi                     #  1286  0x56962  2      
  movl %ebx, %ebx                     #  1287  0x56964  2      
  movl %eax, 0x114(%r15,%rbx,1)       #  1288  0x56966  8      
  nop                                 #  1289  0x5696e  1      
  callq .d_print_comp                 #  1290  0x5696f  5      
  movl %ebx, %ebx                     #  1291  0x56974  2      
  movl %r13d, 0x114(%r15,%rbx,1)      #  1292  0x56976  8      
  jmpq .L_558e0                       #  1293  0x5697e  5      
  xchgw %ax, %ax                      #  1294  0x56983  3      
  nop                                 #  1295  0x56986  1      
.L_57440:                             #        0x56987  0      
  movl %ebx, %ebx                     #  1296  0x56987  2      
  movl 0x120(%r15,%rbx,1), %eax       #  1297  0x56989  8      
  testl %eax, %eax                    #  1298  0x56991  2      
  jg .L_57480                         #  1299  0x56993  6      
  jmpq .L_57920                       #  1300  0x56999  5      
  nop                                 #  1301  0x5699e  1      
.L_57460:                             #        0x5699f  0      
  movl %esi, %esi                     #  1302  0x5699f  2      
  cmpl $0x2a, (%r15,%rsi,1)           #  1303  0x569a1  5      
  jne .L_558c0                        #  1304  0x569a6  6      
  testl %eax, %eax                    #  1305  0x569ac  2      
  jle .L_57920                        #  1306  0x569ae  6      
  nop                                 #  1307  0x569b4  1      
.L_57480:                             #        0x569b5  0      
  movl %esi, %esi                     #  1308  0x569b5  2      
  movl 0x8(%r15,%rsi,1), %esi         #  1309  0x569b7  5      
  subl $0x1, %eax                     #  1310  0x569bc  3      
  testq %rsi, %rsi                    #  1311  0x569bf  3      
  jne .L_57460                        #  1312  0x569c2  6      
  jmpq .L_558c0                       #  1313  0x569c8  5      
  nop                                 #  1314  0x569cd  1      
.L_574a0:                             #        0x569ce  0      
  movl $0x20, %esi                    #  1315  0x569ce  5      
  movl %ebx, %edi                     #  1316  0x569d3  2      
  movq %rdx, 0x10(%rsp)               #  1317  0x569d5  5      
  nop                                 #  1318  0x569da  1      
  callq .d_append_char                #  1319  0x569db  5      
  leal -0x4(%r12), %eax               #  1320  0x569e0  5      
  movl %ebx, %edi                     #  1321  0x569e5  2      
  movl %eax, %eax                     #  1322  0x569e7  2      
  movl (%r15,%rax,1), %esi            #  1323  0x569e9  4      
  nop                                 #  1324  0x569ed  1      
  callq .d_print_mod                  #  1325  0x569ee  5      
  movq 0x10(%rsp), %rdx               #  1326  0x569f3  5      
  jmpq .L_560a0                       #  1327  0x569f8  5      
  nop                                 #  1328  0x569fd  1      
  nop                                 #  1329  0x569fe  1      
.L_57500:                             #        0x569ff  0      
  movl %r12d, %r12d                   #  1330  0x569ff  3      
  movl 0x8(%r15,%r12,1), %edx         #  1331  0x56a02  5      
  movl %edx, %edx                     #  1332  0x56a07  2      
  movl (%r15,%rdx,1), %esi            #  1333  0x56a09  4      
  testl %esi, %esi                    #  1334  0x56a0d  2      
  jne .L_567e0                        #  1335  0x56a0f  6      
  movl %edx, %edx                     #  1336  0x56a15  2      
  cmpl $0x1, 0x8(%r15,%rdx,1)         #  1337  0x56a17  6      
  xchgw %ax, %ax                      #  1338  0x56a1d  3      
  jne .L_567e0                        #  1339  0x56a20  6      
  cmpl $0x34, %eax                    #  1340  0x56a26  3      
  jne .L_567e0                        #  1341  0x56a29  6      
  movl %edx, %edx                     #  1342  0x56a2f  2      
  movl 0x4(%r15,%rdx,1), %eax         #  1343  0x56a31  5      
  movl %eax, %eax                     #  1344  0x56a36  2      
  movzbl (%r15,%rax,1), %eax          #  1345  0x56a38  5      
  cmpb $0x30, %al                     #  1346  0x56a3d  2      
  nop                                 #  1347  0x56a3f  1      
  je .L_57b00                         #  1348  0x56a40  6      
  cmpb $0x31, %al                     #  1349  0x56a46  2      
  jne .L_567e0                        #  1350  0x56a48  6      
  movl $0x10022987, %esi              #  1351  0x56a4e  5      
  movl %ebx, %edi                     #  1352  0x56a53  2      
  nop                                 #  1353  0x56a55  1      
  callq .d_append_string              #  1354  0x56a56  5      
  jmpq .L_558e0                       #  1355  0x56a5b  5      
  nop                                 #  1356  0x56a60  1      
  nop                                 #  1357  0x56a61  1      
.L_57580:                             #        0x56a62  0      
  movl %r12d, %r12d                   #  1358  0x56a62  3      
  movl 0x8(%r15,%r12,1), %esi         #  1359  0x56a65  5      
  movl %esi, %esi                     #  1360  0x56a6a  2      
  movl (%r15,%rsi,1), %edi            #  1361  0x56a6c  4      
  testl %edi, %edi                    #  1362  0x56a70  2      
  jne .L_567e0                        #  1363  0x56a72  6      
  cmpl $0x35, %eax                    #  1364  0x56a78  3      
  je .L_57ac0                         #  1365  0x56a7b  6      
  nop                                 #  1366  0x56a81  1      
.L_575a0:                             #        0x56a82  0      
  movl %ebx, %edi                     #  1367  0x56a82  2      
  nop                                 #  1368  0x56a84  1      
  nop                                 #  1369  0x56a85  1      
  callq .d_print_comp                 #  1370  0x56a86  5      
  cmpl $0x6, %r13d                    #  1371  0x56a8b  4      
  ja .L_558e0                         #  1372  0x56a8f  6      
  movl %r13d, %r13d                   #  1373  0x56a95  3      
  movl %r13d, %r13d                   #  1374  0x56a98  3      
  movq 0x10022018(%r15,%r13,8), %rax  #  1375  0x56a9b  8      
  andl $0xffffffe0, %eax              #  1376  0x56aa3  5      
  addq %r15, %rax                     #  1377  0x56aa8  3      
  jmpq %rax                           #  1378  0x56aab  2      
  movl $0x1002297d, %esi              #  1379  0x56aad  5      
  movl %ebx, %edi                     #  1380  0x56ab2  2      
  nop                                 #  1381  0x56ab4  1      
  nop                                 #  1382  0x56ab5  1      
  callq .d_append_string              #  1383  0x56ab6  5      
  jmpq .L_558e0                       #  1384  0x56abb  5      
  nop                                 #  1385  0x56ac0  1      
  nop                                 #  1386  0x56ac1  1      
  movl $0x100234e1, %esi              #  1387  0x56ac2  5      
  movl %ebx, %edi                     #  1388  0x56ac7  2      
  nop                                 #  1389  0x56ac9  1      
  nop                                 #  1390  0x56aca  1      
  callq .d_append_string              #  1391  0x56acb  5      
  jmpq .L_558e0                       #  1392  0x56ad0  5      
  nop                                 #  1393  0x56ad5  1      
  nop                                 #  1394  0x56ad6  1      
  movl $0x1002297a, %esi              #  1395  0x56ad7  5      
  movl %ebx, %edi                     #  1396  0x56adc  2      
  nop                                 #  1397  0x56ade  1      
  nop                                 #  1398  0x56adf  1      
  callq .d_append_string              #  1399  0x56ae0  5      
  jmpq .L_558e0                       #  1400  0x56ae5  5      
  nop                                 #  1401  0x56aea  1      
  nop                                 #  1402  0x56aeb  1      
  movl $0x6c, %esi                    #  1403  0x56aec  5      
  movl %ebx, %edi                     #  1404  0x56af1  2      
  nop                                 #  1405  0x56af3  1      
  nop                                 #  1406  0x56af4  1      
  callq .d_append_char                #  1407  0x56af5  5      
  jmpq .L_558e0                       #  1408  0x56afa  5      
  nop                                 #  1409  0x56aff  1      
  nop                                 #  1410  0x56b00  1      
  movl $0x75, %esi                    #  1411  0x56b01  5      
  movl %ebx, %edi                     #  1412  0x56b06  2      
  nop                                 #  1413  0x56b08  1      
  nop                                 #  1414  0x56b09  1      
  callq .d_append_char                #  1415  0x56b0a  5      
  jmpq .L_558e0                       #  1416  0x56b0f  5      
  nop                                 #  1417  0x56b14  1      
  nop                                 #  1418  0x56b15  1      
.L_57720:                             #        0x56b16  0      
  movl %ebx, %ebx                     #  1419  0x56b16  2      
  movl $0x1, 0x11c(%r15,%rbx,1)       #  1420  0x56b18  12     
  jmpq .L_558c0                       #  1421  0x56b24  5      
  nop                                 #  1422  0x56b29  1      
.L_57740:                             #        0x56b2a  0      
  movl $0x20, %esi                    #  1423  0x56b2a  5      
  movl %ebx, %edi                     #  1424  0x56b2f  2      
  nop                                 #  1425  0x56b31  1      
  nop                                 #  1426  0x56b32  1      
  callq .d_append_char                #  1427  0x56b33  5      
  jmpq .L_56c40                       #  1428  0x56b38  5      
  nop                                 #  1429  0x56b3d  1      
  nop                                 #  1430  0x56b3e  1      
.L_57780:                             #        0x56b3f  0      
  movl $0x20, %esi                    #  1431  0x56b3f  5      
  movl %ebx, %edi                     #  1432  0x56b44  2      
  nop                                 #  1433  0x56b46  1      
  nop                                 #  1434  0x56b47  1      
  callq .d_append_char                #  1435  0x56b48  5      
  jmpq .L_56be0                       #  1436  0x56b4d  5      
  nop                                 #  1437  0x56b52  1      
  nop                                 #  1438  0x56b53  1      
.L_577c0:                             #        0x56b54  0      
  movl $0x2d, %esi                    #  1439  0x56b54  5      
  movl %ebx, %edi                     #  1440  0x56b59  2      
  nop                                 #  1441  0x56b5b  1      
  nop                                 #  1442  0x56b5c  1      
  callq .d_append_char                #  1443  0x56b5d  5      
  jmpq .L_56860                       #  1444  0x56b62  5      
  nop                                 #  1445  0x56b67  1      
  nop                                 #  1446  0x56b68  1      
.L_57800:                             #        0x56b69  0      
  movl %eax, %esi                     #  1447  0x56b69  2      
  movl %ebx, %edi                     #  1448  0x56b6b  2      
  nop                                 #  1449  0x56b6d  1      
  nop                                 #  1450  0x56b6e  1      
  callq .d_print_expr_op              #  1451  0x56b6f  5      
  jmpq .L_56660                       #  1452  0x56b74  5      
  nop                                 #  1453  0x56b79  1      
  nop                                 #  1454  0x56b7a  1      
.L_57840:                             #        0x56b7b  0      
  movl %edx, %edx                     #  1455  0x56b7b  2      
  movl 0x4(%r15,%rdx,1), %edx         #  1456  0x56b7d  5      
  movl %edx, %edx                     #  1457  0x56b82  2      
  cmpl $0x1, 0x8(%r15,%rdx,1)         #  1458  0x56b84  6      
  jne .L_56600                        #  1459  0x56b8a  6      
  movl %edx, %edx                     #  1460  0x56b90  2      
  movl 0x4(%r15,%rdx,1), %edx         #  1461  0x56b92  5      
  nop                                 #  1462  0x56b97  1      
  movl %edx, %edx                     #  1463  0x56b98  2      
  cmpb $0x3e, (%r15,%rdx,1)           #  1464  0x56b9a  5      
  jne .L_56600                        #  1465  0x56b9f  6      
  movl $0x28, %esi                    #  1466  0x56ba5  5      
  movl %ebx, %edi                     #  1467  0x56baa  2      
  nop                                 #  1468  0x56bac  1      
  callq .d_append_char                #  1469  0x56bad  5      
  movl %r12d, %r12d                   #  1470  0x56bb2  3      
  movl 0x8(%r15,%r12,1), %eax         #  1471  0x56bb5  5      
  jmpq .L_56600                       #  1472  0x56bba  5      
  nop                                 #  1473  0x56bbf  1      
  nop                                 #  1474  0x56bc0  1      
.L_578a0:                             #        0x56bc1  0      
  movl %eax, %eax                     #  1475  0x56bc1  2      
  movl 0x4(%r15,%rax,1), %esi         #  1476  0x56bc3  5      
  movl $0x10022868, %edi              #  1477  0x56bc8  5      
  movl $0x6, %ecx                     #  1478  0x56bcd  5      
  movl %esi, %esi                     #  1479  0x56bd2  2      
  leaq (%r15,%rsi,1), %rsi            #  1480  0x56bd4  4      
  movl %edi, %edi                     #  1481  0x56bd8  2      
  leaq (%r15,%rdi,1), %rdi            #  1482  0x56bda  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)   #  1483  0x56bde  3      
  nop                                 #  1484  0x56be1  1      
  movl %esi, %esi                     #  1485  0x56be2  2      
  movl %edi, %edi                     #  1486  0x56be4  2      
  jne .L_56ba0                        #  1487  0x56be6  6      
  movl %r12d, %r12d                   #  1488  0x56bec  3      
  movl 0x8(%r15,%r12,1), %esi         #  1489  0x56bef  5      
  movl %ebx, %edi                     #  1490  0x56bf4  2      
  nop                                 #  1491  0x56bf6  1      
  callq .d_print_comp                 #  1492  0x56bf7  5      
  movl $0x10022b9d, %esi              #  1493  0x56bfc  5      
  movl %ebx, %edi                     #  1494  0x56c01  2      
  nop                                 #  1495  0x56c03  1      
  nop                                 #  1496  0x56c04  1      
  callq .d_append_string              #  1497  0x56c05  5      
  jmpq .L_56c60                       #  1498  0x56c0a  5      
  nop                                 #  1499  0x56c0f  1      
  nop                                 #  1500  0x56c10  1      
.L_57920:                             #        0x56c11  0      
  testq %rsi, %rsi                    #  1501  0x56c11  3      
  je .L_558c0                         #  1502  0x56c14  6      
  testl %eax, %eax                    #  1503  0x56c1a  2      
  jne .L_558c0                        #  1504  0x56c1c  6      
  movl %esi, %esi                     #  1505  0x56c22  2      
  movl 0x4(%r15,%rsi,1), %esi         #  1506  0x56c24  5      
  testq %rsi, %rsi                    #  1507  0x56c29  3      
  nop                                 #  1508  0x56c2c  1      
  jne .L_57400                        #  1509  0x56c2d  6      
  jmpq .L_558c0                       #  1510  0x56c33  5      
  nop                                 #  1511  0x56c38  1      
  nop                                 #  1512  0x56c39  1      
.L_57960:                             #        0x56c3a  0      
  movl $0x1, %r13d                    #  1513  0x56c3a  6      
  jmpq .L_56260                       #  1514  0x56c40  5      
  nop                                 #  1515  0x56c45  1      
  nop                                 #  1516  0x56c46  1      
.L_57980:                             #        0x56c47  0      
  movl %ebx, %ebx                     #  1517  0x56c47  2      
  movl 0x114(%r15,%rbx,1), %ecx       #  1518  0x56c49  8      
  movl %r13d, 0x64(%rsp)              #  1519  0x56c51  5      
  movl %ecx, 0x60(%rsp)               #  1520  0x56c56  4      
  leal 0x60(%rsp), %ecx               #  1521  0x56c5a  4      
  nop                                 #  1522  0x56c5e  1      
  movl %ebx, %ebx                     #  1523  0x56c5f  2      
  movl %ecx, 0x114(%r15,%rbx,1)       #  1524  0x56c61  8      
  jmpq .L_56020                       #  1525  0x56c69  5      
  xchgw %ax, %ax                      #  1526  0x56c6e  3      
  nop                                 #  1527  0x56c71  1      
.L_579c0:                             #        0x56c72  0      
  movl 0x60(%rsp), %ecx               #  1528  0x56c72  4      
  movl %ebx, %ebx                     #  1529  0x56c76  2      
  movl %ecx, 0x114(%r15,%rbx,1)       #  1530  0x56c78  8      
  jmpq .L_56060                       #  1531  0x56c80  5      
  nop                                 #  1532  0x56c85  1      
.L_579e0:                             #        0x56c86  0      
  movl %r12d, %r12d                   #  1533  0x56c86  3      
  movl 0x4(%r15,%r12,1), %esi         #  1534  0x56c89  5      
  movl %ebx, %edi                     #  1535  0x56c8e  2      
  xchgw %ax, %ax                      #  1536  0x56c90  3      
  nop                                 #  1537  0x56c93  1      
  callq .d_print_subexpr              #  1538  0x56c94  5      
  movl $0x1002056c, %esi              #  1539  0x56c99  5      
  movl %ebx, %edi                     #  1540  0x56c9e  2      
  nop                                 #  1541  0x56ca0  1      
  nop                                 #  1542  0x56ca1  1      
  callq .d_append_string              #  1543  0x56ca2  5      
  jmpq .L_558e0                       #  1544  0x56ca7  5      
  nop                                 #  1545  0x56cac  1      
  nop                                 #  1546  0x56cad  1      
.L_57a40:                             #        0x56cae  0      
  cmpl %r13d, %r14d                   #  1547  0x56cae  3      
  jae .L_55d40                        #  1548  0x56cb1  6      
  cmpl $0xff, %edx                    #  1549  0x56cb7  3      
  ja .L_55d40                         #  1550  0x56cba  6      
  cmpb $0x5f, %al                     #  1551  0x56cc0  2      
  jne .L_55d40                        #  1552  0x56cc2  6      
  movsbl %dl, %esi                    #  1553  0x56cc8  3      
  movl %ebx, %edi                     #  1554  0x56ccb  2      
  leal 0x1(%r14), %r12d               #  1555  0x56ccd  4      
  nop                                 #  1556  0x56cd1  1      
  nop                                 #  1557  0x56cd2  1      
  callq .d_append_char                #  1558  0x56cd3  5      
  jmpq .L_55d60                       #  1559  0x56cd8  5      
  nop                                 #  1560  0x56cdd  1      
  nop                                 #  1561  0x56cde  1      
.L_57aa0:                             #        0x56cdf  0      
  movl $0x1, %r14d                    #  1562  0x56cdf  6      
  jmpq .L_55f20                       #  1563  0x56ce5  5      
  nop                                 #  1564  0x56cea  1      
  nop                                 #  1565  0x56ceb  1      
.L_57ac0:                             #        0x56cec  0      
  movl $0x2d, %esi                    #  1566  0x56cec  5      
  movl %ebx, %edi                     #  1567  0x56cf1  2      
  nop                                 #  1568  0x56cf3  1      
  nop                                 #  1569  0x56cf4  1      
  callq .d_append_char                #  1570  0x56cf5  5      
  movl %r12d, %r12d                   #  1571  0x56cfa  3      
  movl 0x8(%r15,%r12,1), %esi         #  1572  0x56cfd  5      
  jmpq .L_575a0                       #  1573  0x56d02  5      
  nop                                 #  1574  0x56d07  1      
  nop                                 #  1575  0x56d08  1      
.L_57b00:                             #        0x56d09  0      
  movl $0x10022981, %esi              #  1576  0x56d09  5      
  movl %ebx, %edi                     #  1577  0x56d0e  2      
  nop                                 #  1578  0x56d10  1      
  nop                                 #  1579  0x56d11  1      
  callq .d_append_string              #  1580  0x56d12  5      
  jmpq .L_558e0                       #  1581  0x56d17  5      
  nop                                 #  1582  0x56d1c  1      
  nop                                 #  1583  0x56d1d  1      
                                                               
.size d_print_comp, .-d_print_comp

