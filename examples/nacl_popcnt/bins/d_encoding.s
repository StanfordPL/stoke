  .text
  .globl d_encoding
  .type d_encoding, @function

#! file-offset 0x538e0
#! rip-offset  0x538e0
#! capacity    2944 bytes

# Text                                #  Line  RIP      Bytes  
.d_encoding:                          #        0x538e0  0      
  movq %rbx, -0x20(%rsp)              #  1     0x538e0  5      
  movl %edi, %ebx                     #  2     0x538e5  2      
  movq %r13, -0x10(%rsp)              #  3     0x538e7  5      
  movq %r12, -0x18(%rsp)              #  4     0x538ec  5      
  movq %r14, -0x8(%rsp)               #  5     0x538f1  5      
  subl $0x38, %esp                    #  6     0x538f6  3      
  addq %r15, %rsp                     #  7     0x538f9  3      
  nop                                 #  8     0x538fc  1      
  movl %ebx, %ebx                     #  9     0x538fd  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x538ff  5      
  movl %esi, %r13d                    #  11    0x53904  3      
  movl %edx, %edx                     #  12    0x53907  2      
  movzbl (%r15,%rdx,1), %eax          #  13    0x53909  5      
  cmpb $0x54, %al                     #  14    0x5390e  2      
  je .L_53b60                         #  15    0x53910  6      
  cmpb $0x47, %al                     #  16    0x53916  2      
  nop                                 #  17    0x53918  1      
  je .L_53b60                         #  18    0x53919  6      
  movl %ebx, %edi                     #  19    0x5391f  2      
  nop                                 #  20    0x53921  1      
  nop                                 #  21    0x53922  1      
  callq .d_name                       #  22    0x53923  5      
  movl %eax, %r12d                    #  23    0x53928  3      
  testq %r12, %r12                    #  24    0x5392b  3      
  je .L_53960                         #  25    0x5392e  6      
  testl %r13d, %r13d                  #  26    0x53934  3      
  jne .L_53a60                        #  27    0x53937  6      
  nop                                 #  28    0x5393d  1      
.L_53960:                             #        0x5393e  0      
  movl %ebx, %ebx                     #  29    0x5393e  2      
  movl 0xc(%r15,%rbx,1), %eax         #  30    0x53940  5      
  testq %r12, %r12                    #  31    0x53945  3      
  movl %eax, %eax                     #  32    0x53948  2      
  movzbl (%r15,%rax,1), %eax          #  33    0x5394a  5      
  je .L_53b20                         #  34    0x5394f  6      
  testb %al, %al                      #  35    0x53955  2      
  je .L_53b20                         #  36    0x53957  6      
  nop                                 #  37    0x5395d  1      
  cmpb $0x45, %al                     #  38    0x5395e  2      
  je .L_53b20                         #  39    0x53960  6      
  movq %r12, %rax                     #  40    0x53966  3      
  nop                                 #  41    0x53969  1      
  nop                                 #  42    0x5396a  1      
.L_539a0:                             #        0x5396b  0      
  movl %eax, %eax                     #  43    0x5396b  2      
  movl (%r15,%rax,1), %edx            #  44    0x5396d  4      
  cmpl $0x4, %edx                     #  45    0x53971  3      
  je .L_53c60                         #  46    0x53974  6      
  jae .L_53bc0                        #  47    0x5397a  6      
  nop                                 #  48    0x53980  1      
.L_539c0:                             #        0x53981  0      
  xorl %esi, %esi                     #  49    0x53981  2      
  nop                                 #  50    0x53983  1      
  nop                                 #  51    0x53984  1      
.L_539e0:                             #        0x53985  0      
  movl %ebx, %edi                     #  52    0x53985  2      
  nop                                 #  53    0x53987  1      
  nop                                 #  54    0x53988  1      
  callq .d_bare_function_type         #  55    0x53989  5      
  movl %r12d, %edx                    #  56    0x5398e  3      
  movl %eax, %ecx                     #  57    0x53991  2      
  movl $0x3, %esi                     #  58    0x53993  5      
  nop                                 #  59    0x53998  1      
  nop                                 #  60    0x53999  1      
.L_53a20:                             #        0x5399a  0      
  movl %ebx, %edi                     #  61    0x5399a  2      
  movq 0x20(%rsp), %r12               #  62    0x5399c  5      
  movq 0x18(%rsp), %rbx               #  63    0x539a1  5      
  movq 0x28(%rsp), %r13               #  64    0x539a6  5      
  movq 0x30(%rsp), %r14               #  65    0x539ab  5      
  addl $0x38, %esp                    #  66    0x539b0  3      
  addq %r15, %rsp                     #  67    0x539b3  3      
  nop                                 #  68    0x539b6  1      
  jmpq .d_make_comp                   #  69    0x539b7  5      
  nop                                 #  70    0x539bc  1      
  nop                                 #  71    0x539bd  1      
.L_53a60:                             #        0x539be  0      
  movl %ebx, %ebx                     #  72    0x539be  2      
  testb $0x1, 0x8(%r15,%rbx,1)        #  73    0x539c0  6      
  jne .L_53960                        #  74    0x539c6  6      
  movl %r12d, %r12d                   #  75    0x539cc  3      
  movl (%r15,%r12,1), %eax            #  76    0x539cf  4      
  leal -0x1a(%rax), %edx              #  77    0x539d3  3      
  cmpl $0x2, %edx                     #  78    0x539d6  3      
  nop                                 #  79    0x539d9  1      
  ja .L_53ac0                         #  80    0x539da  6      
  nop                                 #  81    0x539e0  1      
  nop                                 #  82    0x539e1  1      
.L_53aa0:                             #        0x539e2  0      
  movl %r12d, %r12d                   #  83    0x539e2  3      
  movl 0x4(%r15,%r12,1), %r12d        #  84    0x539e5  5      
  movl %r12d, %r12d                   #  85    0x539ea  3      
  movl (%r15,%r12,1), %eax            #  86    0x539ed  4      
  leal -0x1a(%rax), %edx              #  87    0x539f1  3      
  cmpl $0x2, %edx                     #  88    0x539f4  3      
  jbe .L_53aa0                        #  89    0x539f7  6      
  nop                                 #  90    0x539fd  1      
.L_53ac0:                             #        0x539fe  0      
  cmpl $0x2, %eax                     #  91    0x539fe  3      
  jne .L_53b20                        #  92    0x53a01  6      
  movl %r12d, %r12d                   #  93    0x53a07  3      
  movl 0x8(%r15,%r12,1), %eax         #  94    0x53a0a  5      
  movl %eax, %eax                     #  95    0x53a0f  2      
  movl (%r15,%rax,1), %edx            #  96    0x53a11  4      
  subl $0x1a, %edx                    #  97    0x53a15  3      
  cmpl $0x2, %edx                     #  98    0x53a18  3      
  ja .L_53b00                         #  99    0x53a1b  6      
  nop                                 #  100   0x53a21  1      
.L_53ae0:                             #        0x53a22  0      
  movl %eax, %eax                     #  101   0x53a22  2      
  movl 0x4(%r15,%rax,1), %eax         #  102   0x53a24  5      
  movl %eax, %eax                     #  103   0x53a29  2      
  movl (%r15,%rax,1), %edx            #  104   0x53a2b  4      
  subl $0x1a, %edx                    #  105   0x53a2f  3      
  cmpl $0x2, %edx                     #  106   0x53a32  3      
  jbe .L_53ae0                        #  107   0x53a35  6      
  nop                                 #  108   0x53a3b  1      
.L_53b00:                             #        0x53a3c  0      
  movl %r12d, %r12d                   #  109   0x53a3c  3      
  movl %eax, 0x8(%r15,%r12,1)         #  110   0x53a3f  5      
  nop                                 #  111   0x53a44  1      
  nop                                 #  112   0x53a45  1      
.L_53b20:                             #        0x53a46  0      
  movl %r12d, %eax                    #  113   0x53a46  3      
  movq 0x18(%rsp), %rbx               #  114   0x53a49  5      
  movq 0x20(%rsp), %r12               #  115   0x53a4e  5      
  movq 0x28(%rsp), %r13               #  116   0x53a53  5      
  movq 0x30(%rsp), %r14               #  117   0x53a58  5      
  addl $0x38, %esp                    #  118   0x53a5d  3      
  addq %r15, %rsp                     #  119   0x53a60  3      
  popq %r11                           #  120   0x53a63  3      
  nop                                 #  121   0x53a66  1      
  andl $0xffffffe0, %r11d             #  122   0x53a67  7      
  addq %r15, %r11                     #  123   0x53a6e  3      
  jmpq %r11                           #  124   0x53a71  3      
  nop                                 #  125   0x53a74  1      
  nop                                 #  126   0x53a75  1      
.L_53b60:                             #        0x53a76  0      
  movl %ebx, %ebx                     #  127   0x53a76  2      
  movl 0x30(%r15,%rbx,1), %ecx        #  128   0x53a78  5      
  addl $0x14, %ecx                    #  129   0x53a7d  3      
  movl %ebx, %ebx                     #  130   0x53a80  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  131   0x53a82  5      
  movl %edx, %edx                     #  132   0x53a87  2      
  movzbl (%r15,%rdx,1), %eax          #  133   0x53a89  5      
  cmpb $0x54, %al                     #  134   0x53a8e  2      
  je .L_53c00                         #  135   0x53a90  6      
  cmpb $0x47, %al                     #  136   0x53a96  2      
  je .L_53d00                         #  137   0x53a98  6      
  nop                                 #  138   0x53a9e  1      
  nop                                 #  139   0x53a9f  1      
.L_53ba0:                             #        0x53aa0  0      
  xorl %r12d, %r12d                   #  140   0x53aa0  3      
  jmpq .L_53b20                       #  141   0x53aa3  5      
  nop                                 #  142   0x53aa8  1      
  nop                                 #  143   0x53aa9  1      
.L_53bc0:                             #        0x53aaa  0      
  subl $0x1a, %edx                    #  144   0x53aaa  3      
  cmpl $0x2, %edx                     #  145   0x53aad  3      
  ja .L_539c0                         #  146   0x53ab0  6      
  movl %eax, %eax                     #  147   0x53ab6  2      
  movl 0x4(%r15,%rax,1), %eax         #  148   0x53ab8  5      
  testq %rax, %rax                    #  149   0x53abd  3      
  jne .L_539a0                        #  150   0x53ac0  6      
  nop                                 #  151   0x53ac6  1      
  jmpq .L_539c0                       #  152   0x53ac7  5      
  nop                                 #  153   0x53acc  1      
  nop                                 #  154   0x53acd  1      
.L_53c00:                             #        0x53ace  0      
  addl $0x1, %edx                     #  155   0x53ace  3      
  movl %ebx, %ebx                     #  156   0x53ad1  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  157   0x53ad3  5      
  movl %edx, %edx                     #  158   0x53ad8  2      
  movzbl (%r15,%rdx,1), %eax          #  159   0x53ada  5      
  testb %al, %al                      #  160   0x53adf  2      
  je .L_53ba0                         #  161   0x53ae1  6      
  subl $0x43, %eax                    #  162   0x53ae7  3      
  addl $0x1, %edx                     #  163   0x53aea  3      
  cmpb $0x33, %al                     #  164   0x53aed  2      
  nop                                 #  165   0x53aef  1      
  movl %ebx, %ebx                     #  166   0x53af0  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  167   0x53af2  5      
  ja .L_53ba0                         #  168   0x53af7  6      
  movzbl %al, %eax                    #  169   0x53afd  3      
  movl %eax, %eax                     #  170   0x53b00  2      
  movq 0x10021ca0(%r15,%rax,8), %rax  #  171   0x53b02  8      
  nop                                 #  172   0x53b0a  1      
  andl $0xffffffe0, %eax              #  173   0x53b0b  5      
  addq %r15, %rax                     #  174   0x53b10  3      
  jmpq %rax                           #  175   0x53b13  2      
  nop                                 #  176   0x53b15  1      
  nop                                 #  177   0x53b16  1      
.L_53c60:                             #        0x53b17  0      
  movl %eax, %eax                     #  178   0x53b17  2      
  movl 0x4(%r15,%rax,1), %eax         #  179   0x53b19  5      
  testq %rax, %rax                    #  180   0x53b1e  3      
  je .L_53ca0                         #  181   0x53b21  6      
  movl $0x1, %esi                     #  182   0x53b27  5      
  movq $0x200000000180, %rdx          #  183   0x53b2c  10     
  nop                                 #  184   0x53b36  1      
.L_53c80:                             #        0x53b37  0      
  movl %eax, %eax                     #  185   0x53b37  2      
  cmpl $0x2d, (%r15,%rax,1)           #  186   0x53b39  5      
  jbe .L_53cc0                        #  187   0x53b3e  6      
  nop                                 #  188   0x53b44  1      
  nop                                 #  189   0x53b45  1      
.L_53ca0:                             #        0x53b46  0      
  movl $0x1, %esi                     #  190   0x53b46  5      
  jmpq .L_539e0                       #  191   0x53b4b  5      
  nop                                 #  192   0x53b50  1      
  nop                                 #  193   0x53b51  1      
.L_53cc0:                             #        0x53b52  0      
  movl %eax, %eax                     #  194   0x53b52  2      
  movslq (%r15,%rax,1), %rcx          #  195   0x53b54  4      
  movq %rsi, %rdi                     #  196   0x53b58  3      
  shlq %cl, %rdi                      #  197   0x53b5b  3      
  testq %rdx, %rdi                    #  198   0x53b5e  3      
  movq %rdi, %rcx                     #  199   0x53b61  3      
  jne .L_539c0                        #  200   0x53b64  6      
  andl $0x6, %ecx                     #  201   0x53b6a  3      
  nop                                 #  202   0x53b6d  1      
  je .L_53ca0                         #  203   0x53b6e  6      
  movl %eax, %eax                     #  204   0x53b74  2      
  movl 0x8(%r15,%rax,1), %eax         #  205   0x53b76  5      
  testq %rax, %rax                    #  206   0x53b7b  3      
  jne .L_53c80                        #  207   0x53b7e  6      
  jmpq .L_53ca0                       #  208   0x53b84  5      
  nop                                 #  209   0x53b89  1      
  nop                                 #  210   0x53b8a  1      
.L_53d00:                             #        0x53b8b  0      
  addl $0x1, %edx                     #  211   0x53b8b  3      
  movl %ebx, %ebx                     #  212   0x53b8e  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  213   0x53b90  5      
  movl %edx, %edx                     #  214   0x53b95  2      
  movzbl (%r15,%rdx,1), %eax          #  215   0x53b97  5      
  testb %al, %al                      #  216   0x53b9c  2      
  je .L_53ba0                         #  217   0x53b9e  6      
  addl $0x1, %edx                     #  218   0x53ba4  3      
  cmpb $0x52, %al                     #  219   0x53ba7  2      
  xchgw %ax, %ax                      #  220   0x53ba9  3      
  movl %ebx, %ebx                     #  221   0x53bac  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  222   0x53bae  5      
  je .L_540e0                         #  223   0x53bb3  6      
  jg .L_54120                         #  224   0x53bb9  6      
  cmpb $0x41, %al                     #  225   0x53bbf  2      
  jne .L_53ba0                        #  226   0x53bc1  6      
  xorl %esi, %esi                     #  227   0x53bc7  2      
  movl %ebx, %edi                     #  228   0x53bc9  2      
  nop                                 #  229   0x53bcb  1      
  nop                                 #  230   0x53bcc  1      
  nop                                 #  231   0x53bcd  1      
  callq .d_encoding                   #  232   0x53bce  5      
  xorl %ecx, %ecx                     #  233   0x53bd3  2      
  movl %eax, %edx                     #  234   0x53bd5  2      
  movl $0x15, %esi                    #  235   0x53bd7  5      
  jmpq .L_53a20                       #  236   0x53bdc  5      
  nop                                 #  237   0x53be1  1      
  nop                                 #  238   0x53be2  1      
  movl $0x76, %esi                    #  239   0x53be3  5      
  movl %ebx, %edi                     #  240   0x53be8  2      
  nop                                 #  241   0x53bea  1      
  nop                                 #  242   0x53beb  1      
  callq .d_call_offset                #  243   0x53bec  5      
  testl %eax, %eax                    #  244   0x53bf1  2      
  je .L_53ba0                         #  245   0x53bf3  6      
  xorl %esi, %esi                     #  246   0x53bf9  2      
  movl %ebx, %edi                     #  247   0x53bfb  2      
  nop                                 #  248   0x53bfd  1      
  callq .d_encoding                   #  249   0x53bfe  5      
  xorl %ecx, %ecx                     #  250   0x53c03  2      
  movl %eax, %edx                     #  251   0x53c05  2      
  movl $0x10, %esi                    #  252   0x53c07  5      
  jmpq .L_53a20                       #  253   0x53c0c  5      
  nop                                 #  254   0x53c11  1      
  nop                                 #  255   0x53c12  1      
  movl $0x68, %esi                    #  256   0x53c13  5      
  movl %ebx, %edi                     #  257   0x53c18  2      
  nop                                 #  258   0x53c1a  1      
  nop                                 #  259   0x53c1b  1      
  callq .d_call_offset                #  260   0x53c1c  5      
  testl %eax, %eax                    #  261   0x53c21  2      
  je .L_53ba0                         #  262   0x53c23  6      
  xorl %esi, %esi                     #  263   0x53c29  2      
  movl %ebx, %edi                     #  264   0x53c2b  2      
  nop                                 #  265   0x53c2d  1      
  callq .d_encoding                   #  266   0x53c2e  5      
  xorl %ecx, %ecx                     #  267   0x53c33  2      
  movl %eax, %edx                     #  268   0x53c35  2      
  movl $0xf, %esi                     #  269   0x53c37  5      
  jmpq .L_53a20                       #  270   0x53c3c  5      
  nop                                 #  271   0x53c41  1      
  nop                                 #  272   0x53c42  1      
  xorl %esi, %esi                     #  273   0x53c43  2      
  movl %ebx, %edi                     #  274   0x53c45  2      
  nop                                 #  275   0x53c47  1      
  nop                                 #  276   0x53c48  1      
  callq .d_call_offset                #  277   0x53c49  5      
  testl %eax, %eax                    #  278   0x53c4e  2      
  je .L_53ba0                         #  279   0x53c50  6      
  xorl %esi, %esi                     #  280   0x53c56  2      
  movl %ebx, %edi                     #  281   0x53c58  2      
  nop                                 #  282   0x53c5a  1      
  callq .d_call_offset                #  283   0x53c5b  5      
  testl %eax, %eax                    #  284   0x53c60  2      
  je .L_53ba0                         #  285   0x53c62  6      
  xorl %esi, %esi                     #  286   0x53c68  2      
  movl %ebx, %edi                     #  287   0x53c6a  2      
  nop                                 #  288   0x53c6c  1      
  callq .d_encoding                   #  289   0x53c6d  5      
  xorl %ecx, %ecx                     #  290   0x53c72  2      
  movl %eax, %edx                     #  291   0x53c74  2      
  movl $0x11, %esi                    #  292   0x53c76  5      
  jmpq .L_53a20                       #  293   0x53c7b  5      
  nop                                 #  294   0x53c80  1      
  nop                                 #  295   0x53c81  1      
  subl $0x5, %ecx                     #  296   0x53c82  3      
  movl %ebx, %edi                     #  297   0x53c85  2      
  movl %ebx, %ebx                     #  298   0x53c87  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  299   0x53c89  5      
  nop                                 #  300   0x53c8e  1      
  callq .d_type                       #  301   0x53c8f  5      
  xorl %ecx, %ecx                     #  302   0x53c94  2      
  movl %eax, %edx                     #  303   0x53c96  2      
  movl $0x9, %esi                     #  304   0x53c98  5      
  jmpq .L_53a20                       #  305   0x53c9d  5      
  nop                                 #  306   0x53ca2  1      
  nop                                 #  307   0x53ca3  1      
  subl $0xa, %ecx                     #  308   0x53ca4  3      
  movl %ebx, %edi                     #  309   0x53ca7  2      
  movl %ebx, %ebx                     #  310   0x53ca9  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  311   0x53cab  5      
  nop                                 #  312   0x53cb0  1      
  callq .d_type                       #  313   0x53cb1  5      
  xorl %ecx, %ecx                     #  314   0x53cb6  2      
  movl %eax, %edx                     #  315   0x53cb8  2      
  movl $0xa, %esi                     #  316   0x53cba  5      
  jmpq .L_53a20                       #  317   0x53cbf  5      
  nop                                 #  318   0x53cc4  1      
  nop                                 #  319   0x53cc5  1      
  movl %ebx, %edi                     #  320   0x53cc6  2      
  nop                                 #  321   0x53cc8  1      
  nop                                 #  322   0x53cc9  1      
  callq .d_type                       #  323   0x53cca  5      
  xorl %ecx, %ecx                     #  324   0x53ccf  2      
  movl %eax, %edx                     #  325   0x53cd1  2      
  movl $0xd, %esi                     #  326   0x53cd3  5      
  jmpq .L_53a20                       #  327   0x53cd8  5      
  nop                                 #  328   0x53cdd  1      
  nop                                 #  329   0x53cde  1      
  movl %ebx, %edi                     #  330   0x53cdf  2      
  nop                                 #  331   0x53ce1  1      
  nop                                 #  332   0x53ce2  1      
  callq .d_type                       #  333   0x53ce3  5      
  xorl %ecx, %ecx                     #  334   0x53ce8  2      
  movl %eax, %edx                     #  335   0x53cea  2      
  movl $0x12, %esi                    #  336   0x53cec  5      
  jmpq .L_53a20                       #  337   0x53cf1  5      
  nop                                 #  338   0x53cf6  1      
  nop                                 #  339   0x53cf7  1      
  movl %ebx, %edi                     #  340   0x53cf8  2      
  nop                                 #  341   0x53cfa  1      
  nop                                 #  342   0x53cfb  1      
  callq .d_type                       #  343   0x53cfc  5      
  xorl %ecx, %ecx                     #  344   0x53d01  2      
  movl %eax, %edx                     #  345   0x53d03  2      
  movl $0xc, %esi                     #  346   0x53d05  5      
  jmpq .L_53a20                       #  347   0x53d0a  5      
  nop                                 #  348   0x53d0f  1      
  nop                                 #  349   0x53d10  1      
  movl %ebx, %edi                     #  350   0x53d11  2      
  nop                                 #  351   0x53d13  1      
  nop                                 #  352   0x53d14  1      
  callq .d_type                       #  353   0x53d15  5      
  xorl %ecx, %ecx                     #  354   0x53d1a  2      
  movl %eax, %edx                     #  355   0x53d1c  2      
  movl $0xe, %esi                     #  356   0x53d1e  5      
  jmpq .L_53a20                       #  357   0x53d23  5      
  nop                                 #  358   0x53d28  1      
  nop                                 #  359   0x53d29  1      
  movl %ebx, %edi                     #  360   0x53d2a  2      
  nop                                 #  361   0x53d2c  1      
  nop                                 #  362   0x53d2d  1      
  callq .d_type                       #  363   0x53d2e  5      
  movl %ebx, %edi                     #  364   0x53d33  2      
  movl %eax, %r12d                    #  365   0x53d35  3      
  nop                                 #  366   0x53d38  1      
  nop                                 #  367   0x53d39  1      
  callq .d_number                     #  368   0x53d3a  5      
  testl %eax, %eax                    #  369   0x53d3f  2      
  js .L_53ba0                         #  370   0x53d41  6      
  movl %ebx, %ebx                     #  371   0x53d47  2      
  movl 0xc(%r15,%rbx,1), %eax         #  372   0x53d49  5      
  movl %eax, %eax                     #  373   0x53d4e  2      
  cmpb $0x5f, (%r15,%rax,1)           #  374   0x53d50  5      
  jne .L_53ba0                        #  375   0x53d55  6      
  addl $0x1, %eax                     #  376   0x53d5b  3      
  nop                                 #  377   0x53d5e  1      
  movl %ebx, %edi                     #  378   0x53d5f  2      
  movl %ebx, %ebx                     #  379   0x53d61  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  380   0x53d63  5      
  nop                                 #  381   0x53d68  1      
  nop                                 #  382   0x53d69  1      
  callq .d_type                       #  383   0x53d6a  5      
  movl %ebx, %ebx                     #  384   0x53d6f  2      
  addl $0x5, 0x30(%r15,%rbx,1)        #  385   0x53d71  6      
  movl %eax, %edx                     #  386   0x53d77  2      
  movl %r12d, %ecx                    #  387   0x53d79  3      
  movl $0xb, %esi                     #  388   0x53d7c  5      
  jmpq .L_53a20                       #  389   0x53d81  5      
  nop                                 #  390   0x53d86  1      
.L_540e0:                             #        0x53d87  0      
  movl %ebx, %edi                     #  391   0x53d87  2      
  nop                                 #  392   0x53d89  1      
  nop                                 #  393   0x53d8a  1      
  callq .d_name                       #  394   0x53d8b  5      
  xorl %ecx, %ecx                     #  395   0x53d90  2      
  movl %eax, %edx                     #  396   0x53d92  2      
  movl $0x14, %esi                    #  397   0x53d94  5      
  jmpq .L_53a20                       #  398   0x53d99  5      
  nop                                 #  399   0x53d9e  1      
  nop                                 #  400   0x53d9f  1      
.L_54120:                             #        0x53da0  0      
  cmpb $0x56, %al                     #  401   0x53da0  2      
  je .L_542a0                         #  402   0x53da2  6      
  cmpb $0x72, %al                     #  403   0x53da8  2      
  jne .L_53ba0                        #  404   0x53daa  6      
  movl %ebx, %edi                     #  405   0x53db0  2      
  nop                                 #  406   0x53db2  1      
  callq .d_number                     #  407   0x53db3  5      
  cmpl $0x1, %eax                     #  408   0x53db8  3      
  jle .L_53ba0                        #  409   0x53dbb  6      
  movl %ebx, %ebx                     #  410   0x53dc1  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  411   0x53dc3  5      
  movl %r12d, %r12d                   #  412   0x53dc8  3      
  movzbl (%r15,%r12,1), %edx          #  413   0x53dcb  5      
  testb %dl, %dl                      #  414   0x53dd0  2      
  je .L_53ba0                         #  415   0x53dd2  6      
  addl $0x1, %r12d                    #  416   0x53dd8  4      
  cmpb $0x5f, %dl                     #  417   0x53ddc  3      
  movl %ebx, %ebx                     #  418   0x53ddf  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  419   0x53de1  5      
  jne .L_53ba0                        #  420   0x53de6  6      
  leal -0x1(%rax), %r13d              #  421   0x53dec  4      
  xorl %r14d, %r14d                   #  422   0x53df0  3      
  nop                                 #  423   0x53df3  1      
.L_54180:                             #        0x53df4  0      
  movl %r12d, %r12d                   #  424   0x53df4  3      
  movzbl (%r15,%r12,1), %eax          #  425   0x53df7  5      
  testb %al, %al                      #  426   0x53dfc  2      
  je .L_53ba0                         #  427   0x53dfe  6      
  cmpb $0x24, %al                     #  428   0x53e04  2      
  je .L_542e0                         #  429   0x53e06  6      
  movl %r12d, %eax                    #  430   0x53e0c  3      
  xorl %r8d, %r8d                     #  431   0x53e0f  3      
  xchgw %ax, %ax                      #  432   0x53e12  3      
  jmpq .L_541e0                       #  433   0x53e15  5      
  nop                                 #  434   0x53e1a  1      
  nop                                 #  435   0x53e1b  1      
.L_541c0:                             #        0x53e1c  0      
  movl %eax, %edx                     #  436   0x53e1c  2      
  addl $0x1, %eax                     #  437   0x53e1e  3      
  movl %edx, %edx                     #  438   0x53e21  2      
  movzbl 0x1(%r15,%rdx,1), %edx       #  439   0x53e23  6      
  testb %dl, %dl                      #  440   0x53e29  2      
  je .L_54200                         #  441   0x53e2b  6      
  cmpb $0x24, %dl                     #  442   0x53e31  3      
  je .L_54200                         #  443   0x53e34  6      
  nop                                 #  444   0x53e3a  1      
.L_541e0:                             #        0x53e3b  0      
  addl $0x1, %r8d                     #  445   0x53e3b  4      
  cmpl %r13d, %r8d                    #  446   0x53e3f  3      
  jl .L_541c0                         #  447   0x53e42  6      
  nop                                 #  448   0x53e48  1      
  nop                                 #  449   0x53e49  1      
.L_54200:                             #        0x53e4a  0      
  movl %r8d, %edx                     #  450   0x53e4a  3      
  movl %r12d, %esi                    #  451   0x53e4d  3      
  movl %ebx, %edi                     #  452   0x53e50  2      
  movl %r8d, 0x8(%rsp)                #  453   0x53e52  5      
  nop                                 #  454   0x53e57  1      
  callq .d_make_name                  #  455   0x53e58  5      
  movl %ebx, %ebx                     #  456   0x53e5d  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  457   0x53e5f  5      
  movl 0x8(%rsp), %r8d                #  458   0x53e64  5      
  movl %eax, %edx                     #  459   0x53e69  2      
  addl %r8d, %r12d                    #  460   0x53e6b  3      
  testq %rdx, %rdx                    #  461   0x53e6e  3      
  movl %ebx, %ebx                     #  462   0x53e71  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  463   0x53e73  5      
  nop                                 #  464   0x53e78  1      
  je .L_53ba0                         #  465   0x53e79  6      
  subl %r8d, %r13d                    #  466   0x53e7f  3      
  nop                                 #  467   0x53e82  1      
  nop                                 #  468   0x53e83  1      
.L_54260:                             #        0x53e84  0      
  testq %r14, %r14                    #  469   0x53e84  3      
  jne .L_543c0                        #  470   0x53e87  6      
  nop                                 #  471   0x53e8d  1      
  nop                                 #  472   0x53e8e  1      
.L_54280:                             #        0x53e8f  0      
  testl %r13d, %r13d                  #  473   0x53e8f  3      
  jle .L_543a0                        #  474   0x53e92  6      
  movq %rdx, %r14                     #  475   0x53e98  3      
  jmpq .L_54180                       #  476   0x53e9b  5      
  nop                                 #  477   0x53ea0  1      
.L_542a0:                             #        0x53ea1  0      
  movl %ebx, %edi                     #  478   0x53ea1  2      
  nop                                 #  479   0x53ea3  1      
  nop                                 #  480   0x53ea4  1      
  callq .d_name                       #  481   0x53ea5  5      
  xorl %ecx, %ecx                     #  482   0x53eaa  2      
  movl %eax, %edx                     #  483   0x53eac  2      
  movl $0x13, %esi                    #  484   0x53eae  5      
  jmpq .L_53a20                       #  485   0x53eb3  5      
  nop                                 #  486   0x53eb8  1      
  nop                                 #  487   0x53eb9  1      
.L_542e0:                             #        0x53eba  0      
  movl %r12d, %r12d                   #  488   0x53eba  3      
  movzbl 0x1(%r15,%r12,1), %eax       #  489   0x53ebd  6      
  cmpb $0x53, %al                     #  490   0x53ec3  2      
  je .L_54440                         #  491   0x53ec5  6      
  cmpb $0x5f, %al                     #  492   0x53ecb  2      
  je .L_54420                         #  493   0x53ecd  6      
  cmpb $0x24, %al                     #  494   0x53ed3  2      
  nop                                 #  495   0x53ed5  1      
  jne .L_53ba0                        #  496   0x53ed6  6      
  movl $0x24, %eax                    #  497   0x53edc  5      
  nop                                 #  498   0x53ee1  1      
  nop                                 #  499   0x53ee2  1      
.L_54320:                             #        0x53ee3  0      
  movl %ebx, %ebx                     #  500   0x53ee3  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  501   0x53ee5  5      
  movl %ebx, %ebx                     #  502   0x53eea  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  503   0x53eec  5      
  jge .L_54400                        #  504   0x53ef1  6      
  imull $0xc, %ecx, %edx              #  505   0x53ef7  3      
  movl %ebx, %ebx                     #  506   0x53efa  2      
  addl 0x10(%r15,%rbx,1), %edx        #  507   0x53efc  5      
  xchgw %ax, %ax                      #  508   0x53f01  3      
  addl $0x1, %ecx                     #  509   0x53f04  3      
  movl %ebx, %ebx                     #  510   0x53f07  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  511   0x53f09  5      
  testq %rdx, %rdx                    #  512   0x53f0e  3      
  je .L_54400                         #  513   0x53f11  6      
  movl %edx, %edx                     #  514   0x53f17  2      
  movl %eax, 0x4(%r15,%rdx,1)         #  515   0x53f19  5      
  nop                                 #  516   0x53f1e  1      
  movl %ebx, %ebx                     #  517   0x53f1f  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  518   0x53f21  5      
  subl $0x2, %r13d                    #  519   0x53f26  4      
  movl %edx, %edx                     #  520   0x53f2a  2      
  movl $0x38, (%r15,%rdx,1)           #  521   0x53f2c  8      
  addl $0x2, %r12d                    #  522   0x53f34  4      
  movl %ebx, %ebx                     #  523   0x53f38  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  524   0x53f3a  5      
  jmpq .L_54260                       #  525   0x53f3f  5      
  nop                                 #  526   0x53f44  1      
  nop                                 #  527   0x53f45  1      
.L_543a0:                             #        0x53f46  0      
  xorl %ecx, %ecx                     #  528   0x53f46  2      
  movl $0x36, %esi                    #  529   0x53f48  5      
  jmpq .L_53a20                       #  530   0x53f4d  5      
  nop                                 #  531   0x53f52  1      
  nop                                 #  532   0x53f53  1      
.L_543c0:                             #        0x53f54  0      
  movl %edx, %ecx                     #  533   0x53f54  2      
  movl $0x37, %esi                    #  534   0x53f56  5      
  movl %r14d, %edx                    #  535   0x53f5b  3      
  movl %ebx, %edi                     #  536   0x53f5e  2      
  nop                                 #  537   0x53f60  1      
  callq .d_make_comp                  #  538   0x53f61  5      
  movl %eax, %edx                     #  539   0x53f66  2      
  testq %rdx, %rdx                    #  540   0x53f68  3      
  jne .L_54280                        #  541   0x53f6b  6      
  jmpq .L_53ba0                       #  542   0x53f71  5      
  nop                                 #  543   0x53f76  1      
  nop                                 #  544   0x53f77  1      
.L_54400:                             #        0x53f78  0      
  movl %ebx, %ebx                     #  545   0x53f78  2      
  addl $0x2, 0xc(%r15,%rbx,1)         #  546   0x53f7a  6      
  xorl %r12d, %r12d                   #  547   0x53f80  3      
  jmpq .L_53b20                       #  548   0x53f83  5      
  nop                                 #  549   0x53f88  1      
  nop                                 #  550   0x53f89  1      
.L_54420:                             #        0x53f8a  0      
  movl $0x2e, %eax                    #  551   0x53f8a  5      
  jmpq .L_54320                       #  552   0x53f8f  5      
  nop                                 #  553   0x53f94  1      
  nop                                 #  554   0x53f95  1      
.L_54440:                             #        0x53f96  0      
  movl $0x2f, %eax                    #  555   0x53f96  5      
  jmpq .L_54320                       #  556   0x53f9b  5      
  nop                                 #  557   0x53fa0  1      
  nop                                 #  558   0x53fa1  1      
                                                               
.size d_encoding, .-d_encoding

