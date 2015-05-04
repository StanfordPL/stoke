  .text
  .globl d_expression
  .type d_expression, @function

#! file-offset 0x50a40
#! rip-offset  0x50a40
#! capacity    2016 bytes

# Text                               #  Line  RIP      Bytes  
.d_expression:                       #        0x50a40  0      
  movq %rbx, -0x20(%rsp)             #  1     0x50a40  5      
  movl %edi, %ebx                    #  2     0x50a45  2      
  movq %r12, -0x18(%rsp)             #  3     0x50a47  5      
  movq %r13, -0x10(%rsp)             #  4     0x50a4c  5      
  movq %r14, -0x8(%rsp)              #  5     0x50a51  5      
  subl $0x28, %esp                   #  6     0x50a56  3      
  addq %r15, %rsp                    #  7     0x50a59  3      
  nop                                #  8     0x50a5c  1      
  movl %ebx, %ebx                    #  9     0x50a5d  2      
  movl 0xc(%r15,%rbx,1), %edx        #  10    0x50a5f  5      
  movl %edx, %edx                    #  11    0x50a64  2      
  movzbl (%r15,%rdx,1), %eax         #  12    0x50a66  5      
  cmpb $0x4c, %al                    #  13    0x50a6b  2      
  je .L_50d60                        #  14    0x50a6d  6      
  cmpb $0x54, %al                    #  15    0x50a73  2      
  je .L_50e60                        #  16    0x50a75  6      
  cmpb $0x73, %al                    #  17    0x50a7b  2      
  je .L_50be0                        #  18    0x50a7d  6      
  cmpb $0x66, %al                    #  19    0x50a83  2      
  je .L_50b20                        #  20    0x50a85  6      
  nop                                #  21    0x50a8b  1      
  nop                                #  22    0x50a8c  1      
.L_50aa0:                            #        0x50a8d  0      
  subl $0x30, %eax                   #  23    0x50a8d  3      
  cmpb $0x9, %al                     #  24    0x50a90  2      
  ja .L_50c00                        #  25    0x50a92  6      
  movl %ebx, %edi                    #  26    0x50a98  2      
  nop                                #  27    0x50a9a  1      
  callq .d_unqualified_name          #  28    0x50a9b  5      
  movl %eax, %r12d                   #  29    0x50aa0  3      
  testq %r12, %r12                   #  30    0x50aa3  3      
  je .L_50ae0                        #  31    0x50aa6  6      
  movl %ebx, %ebx                    #  32    0x50aac  2      
  movl 0xc(%r15,%rbx,1), %eax        #  33    0x50aae  5      
  movl %eax, %eax                    #  34    0x50ab3  2      
  cmpb $0x49, (%r15,%rax,1)          #  35    0x50ab5  5      
  je .L_50f80                        #  36    0x50aba  6      
  nop                                #  37    0x50ac0  1      
.L_50ae0:                            #        0x50ac1  0      
  movl %r12d, %eax                   #  38    0x50ac1  3      
  movq 0x8(%rsp), %rbx               #  39    0x50ac4  5      
  movq 0x10(%rsp), %r12              #  40    0x50ac9  5      
  movq 0x18(%rsp), %r13              #  41    0x50ace  5      
  movq 0x20(%rsp), %r14              #  42    0x50ad3  5      
  addl $0x28, %esp                   #  43    0x50ad8  3      
  addq %r15, %rsp                    #  44    0x50adb  3      
  popq %r11                          #  45    0x50ade  3      
  nop                                #  46    0x50ae1  1      
  andl $0xffffffe0, %r11d            #  47    0x50ae2  7      
  addq %r15, %r11                    #  48    0x50ae9  3      
  jmpq %r11                          #  49    0x50aec  3      
  nop                                #  50    0x50aef  1      
  nop                                #  51    0x50af0  1      
.L_50b20:                            #        0x50af1  0      
  movl %edx, %edx                    #  52    0x50af1  2      
  cmpb $0x70, 0x1(%r15,%rdx,1)       #  53    0x50af3  6      
  jne .L_50aa0                       #  54    0x50af9  6      
  addl $0x2, %edx                    #  55    0x50aff  3      
  movl $0x1, %eax                    #  56    0x50b02  5      
  movl %ebx, %ebx                    #  57    0x50b07  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  58    0x50b09  5      
  nop                                #  59    0x50b0e  1      
  movl %edx, %edx                    #  60    0x50b0f  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  61    0x50b11  5      
  je .L_50b80                        #  62    0x50b16  6      
  movl %ebx, %edi                    #  63    0x50b1c  2      
  nop                                #  64    0x50b1e  1      
  nop                                #  65    0x50b1f  1      
  callq .d_number                    #  66    0x50b20  5      
  testl %eax, %eax                   #  67    0x50b25  2      
  js .L_50d40                        #  68    0x50b27  6      
  movl %ebx, %ebx                    #  69    0x50b2d  2      
  movl 0xc(%r15,%rbx,1), %edx        #  70    0x50b2f  5      
  movl %edx, %edx                    #  71    0x50b34  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  72    0x50b36  5      
  jne .L_50d40                       #  73    0x50b3b  6      
  addl $0x2, %eax                    #  74    0x50b41  3      
  nop                                #  75    0x50b44  1      
.L_50b80:                            #        0x50b45  0      
  addl $0x1, %edx                    #  76    0x50b45  3      
  movl %ebx, %ebx                    #  77    0x50b48  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  78    0x50b4a  5      
  movl %ebx, %ebx                    #  79    0x50b4f  2      
  movl 0x14(%r15,%rbx,1), %edx       #  80    0x50b51  5      
  movl %ebx, %ebx                    #  81    0x50b56  2      
  cmpl 0x18(%r15,%rbx,1), %edx       #  82    0x50b58  5      
  jge .L_50d40                       #  83    0x50b5d  6      
  xchgw %ax, %ax                     #  84    0x50b63  3      
  leal (%rdx,%rdx,2), %r12d          #  85    0x50b66  4      
  addl $0x1, %edx                    #  86    0x50b6a  3      
  movl %ebx, %ebx                    #  87    0x50b6d  2      
  movl %edx, 0x14(%r15,%rbx,1)       #  88    0x50b6f  5      
  shll $0x2, %r12d                   #  89    0x50b74  4      
  movl %ebx, %ebx                    #  90    0x50b78  2      
  addl 0x10(%r15,%rbx,1), %r12d      #  91    0x50b7a  5      
  testq %r12, %r12                   #  92    0x50b7f  3      
  nop                                #  93    0x50b82  1      
  je .L_50ae0                        #  94    0x50b83  6      
  movl %r12d, %r12d                  #  95    0x50b89  3      
  movl $0x6, (%r15,%r12,1)           #  96    0x50b8c  8      
  movl %r12d, %r12d                  #  97    0x50b94  3      
  movl %eax, 0x4(%r15,%r12,1)        #  98    0x50b97  5      
  jmpq .L_50ae0                      #  99    0x50b9c  5      
  xchgw %ax, %ax                     #  100   0x50ba1  3      
.L_50be0:                            #        0x50ba4  0      
  movl %edx, %edx                    #  101   0x50ba4  2      
  movzbl 0x1(%r15,%rdx,1), %eax      #  102   0x50ba6  6      
  cmpb $0x72, %al                    #  103   0x50bac  2      
  je .L_50ea0                        #  104   0x50bae  6      
  cmpb $0x70, %al                    #  105   0x50bb4  2      
  je .L_50f40                        #  106   0x50bb6  6      
  nop                                #  107   0x50bbc  1      
.L_50c00:                            #        0x50bbd  0      
  movl %ebx, %edi                    #  108   0x50bbd  2      
  nop                                #  109   0x50bbf  1      
  nop                                #  110   0x50bc0  1      
  callq .d_operator_name             #  111   0x50bc1  5      
  movl %eax, %r12d                   #  112   0x50bc6  3      
  testq %r12, %r12                   #  113   0x50bc9  3      
  je .L_50d40                        #  114   0x50bcc  6      
  movl %r12d, %r12d                  #  115   0x50bd2  3      
  movl (%r15,%r12,1), %eax           #  116   0x50bd5  4      
  cmpl $0x2b, %eax                   #  117   0x50bd9  3      
  je .L_50da0                        #  118   0x50bdc  6      
  cmpl $0x2c, %eax                   #  119   0x50be2  3      
  nop                                #  120   0x50be5  1      
  je .L_50f20                        #  121   0x50be6  6      
  cmpl $0x2d, %eax                   #  122   0x50bec  3      
  je .L_50cc0                        #  123   0x50bef  6      
  cmpl $0x2b, %eax                   #  124   0x50bf5  3      
  jne .L_50d40                       #  125   0x50bf8  6      
  movl %r12d, %r12d                  #  126   0x50bfe  3      
  movl 0x4(%r15,%r12,1), %eax        #  127   0x50c01  5      
  nop                                #  128   0x50c06  1      
.L_50c60:                            #        0x50c07  0      
  movl %eax, %eax                    #  129   0x50c07  2      
  movl 0xc(%r15,%rax,1), %edx        #  130   0x50c09  5      
  movl $0x2b, %eax                   #  131   0x50c0e  5      
  nop                                #  132   0x50c13  1      
  nop                                #  133   0x50c14  1      
.L_50c80:                            #        0x50c15  0      
  cmpl $0x2, %edx                    #  134   0x50c15  3      
  je .L_51080                        #  135   0x50c18  6      
  cmpl $0x3, %edx                    #  136   0x50c1e  3      
  je .L_50fc0                        #  137   0x50c21  6      
  cmpl $0x1, %edx                    #  138   0x50c27  3      
  jne .L_50d40                       #  139   0x50c2a  6      
  cmpl $0x2d, %eax                   #  140   0x50c30  3      
  xchgw %ax, %ax                     #  141   0x50c33  3      
  jne .L_50ce0                       #  142   0x50c36  6      
  nop                                #  143   0x50c3c  1      
  nop                                #  144   0x50c3d  1      
.L_50cc0:                            #        0x50c3e  0      
  movl %ebx, %ebx                    #  145   0x50c3e  2      
  movl 0xc(%r15,%rbx,1), %eax        #  146   0x50c40  5      
  movl %eax, %eax                    #  147   0x50c45  2      
  cmpb $0x5f, (%r15,%rax,1)          #  148   0x50c47  5      
  je .L_511e0                        #  149   0x50c4c  6      
  nop                                #  150   0x50c52  1      
.L_50ce0:                            #        0x50c53  0      
  movl %ebx, %edi                    #  151   0x50c53  2      
  nop                                #  152   0x50c55  1      
  nop                                #  153   0x50c56  1      
  callq .d_expression                #  154   0x50c57  5      
  movl %eax, %ecx                    #  155   0x50c5c  2      
  nop                                #  156   0x50c5e  1      
  nop                                #  157   0x50c5f  1      
.L_50d20:                            #        0x50c60  0      
  movl %r12d, %edx                   #  158   0x50c60  3      
  movl $0x2e, %esi                   #  159   0x50c63  5      
  jmpq .L_50e20                      #  160   0x50c68  5      
  nop                                #  161   0x50c6d  1      
  nop                                #  162   0x50c6e  1      
.L_50d40:                            #        0x50c6f  0      
  xorl %r12d, %r12d                  #  163   0x50c6f  3      
  jmpq .L_50ae0                      #  164   0x50c72  5      
  nop                                #  165   0x50c77  1      
  nop                                #  166   0x50c78  1      
.L_50d60:                            #        0x50c79  0      
  movl %ebx, %edi                    #  167   0x50c79  2      
  movq 0x10(%rsp), %r12              #  168   0x50c7b  5      
  movq 0x8(%rsp), %rbx               #  169   0x50c80  5      
  movq 0x18(%rsp), %r13              #  170   0x50c85  5      
  movq 0x20(%rsp), %r14              #  171   0x50c8a  5      
  addl $0x28, %esp                   #  172   0x50c8f  3      
  addq %r15, %rsp                    #  173   0x50c92  3      
  nop                                #  174   0x50c95  1      
  jmpq .d_expr_primary               #  175   0x50c96  5      
  nop                                #  176   0x50c9b  1      
  nop                                #  177   0x50c9c  1      
.L_50da0:                            #        0x50c9d  0      
  movl %r12d, %r12d                  #  178   0x50c9d  3      
  movl 0x4(%r15,%r12,1), %edx        #  179   0x50ca0  5      
  movl %ebx, %ebx                    #  180   0x50ca5  2      
  movl 0x30(%r15,%rbx,1), %eax       #  181   0x50ca7  5      
  movl $0x1002144b, %edi             #  182   0x50cac  5      
  movl $0x3, %ecx                    #  183   0x50cb1  5      
  movl %edx, %edx                    #  184   0x50cb6  2      
  addl 0x8(%r15,%rdx,1), %eax        #  185   0x50cb8  5      
  subl $0x2, %eax                    #  186   0x50cbd  3      
  movl %ebx, %ebx                    #  187   0x50cc0  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  188   0x50cc2  5      
  movl %r12d, %r12d                  #  189   0x50cc7  3      
  movl 0x4(%r15,%r12,1), %eax        #  190   0x50cca  5      
  movl %eax, %eax                    #  191   0x50ccf  2      
  movl (%r15,%rax,1), %esi           #  192   0x50cd1  4      
  nop                                #  193   0x50cd5  1      
  movl %esi, %esi                    #  194   0x50cd6  2      
  leaq (%r15,%rsi,1), %rsi           #  195   0x50cd8  4      
  movl %edi, %edi                    #  196   0x50cdc  2      
  leaq (%r15,%rdi,1), %rdi           #  197   0x50cde  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  198   0x50ce2  3      
  movl %esi, %esi                    #  199   0x50ce5  2      
  movl %edi, %edi                    #  200   0x50ce7  2      
  jne .L_50c60                       #  201   0x50ce9  6      
  movl %ebx, %edi                    #  202   0x50cef  2      
  nop                                #  203   0x50cf1  1      
  callq .d_type                      #  204   0x50cf2  5      
  movl %r12d, %edx                   #  205   0x50cf7  3      
  movl %eax, %ecx                    #  206   0x50cfa  2      
  movl $0x2e, %esi                   #  207   0x50cfc  5      
  nop                                #  208   0x50d01  1      
  nop                                #  209   0x50d02  1      
.L_50e20:                            #        0x50d03  0      
  movl %ebx, %edi                    #  210   0x50d03  2      
  movq 0x10(%rsp), %r12              #  211   0x50d05  5      
  movq 0x8(%rsp), %rbx               #  212   0x50d0a  5      
  movq 0x18(%rsp), %r13              #  213   0x50d0f  5      
  movq 0x20(%rsp), %r14              #  214   0x50d14  5      
  addl $0x28, %esp                   #  215   0x50d19  3      
  addq %r15, %rsp                    #  216   0x50d1c  3      
  nop                                #  217   0x50d1f  1      
  jmpq .d_make_comp                  #  218   0x50d20  5      
  nop                                #  219   0x50d25  1      
  nop                                #  220   0x50d26  1      
.L_50e60:                            #        0x50d27  0      
  movl %ebx, %edi                    #  221   0x50d27  2      
  movq 0x10(%rsp), %r12              #  222   0x50d29  5      
  movq 0x8(%rsp), %rbx               #  223   0x50d2e  5      
  movq 0x18(%rsp), %r13              #  224   0x50d33  5      
  movq 0x20(%rsp), %r14              #  225   0x50d38  5      
  addl $0x28, %esp                   #  226   0x50d3d  3      
  addq %r15, %rsp                    #  227   0x50d40  3      
  nop                                #  228   0x50d43  1      
  jmpq .d_template_param             #  229   0x50d44  5      
  nop                                #  230   0x50d49  1      
  nop                                #  231   0x50d4a  1      
.L_50ea0:                            #        0x50d4b  0      
  addl $0x2, %edx                    #  232   0x50d4b  3      
  movl %ebx, %edi                    #  233   0x50d4e  2      
  movl %ebx, %ebx                    #  234   0x50d50  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  235   0x50d52  5      
  nop                                #  236   0x50d57  1      
  callq .d_type                      #  237   0x50d58  5      
  movl %ebx, %edi                    #  238   0x50d5d  2      
  movl %eax, %r12d                   #  239   0x50d5f  3      
  nop                                #  240   0x50d62  1      
  nop                                #  241   0x50d63  1      
  callq .d_unqualified_name          #  242   0x50d64  5      
  movl %eax, %r13d                   #  243   0x50d69  3      
  movl %ebx, %ebx                    #  244   0x50d6c  2      
  movl 0xc(%r15,%rbx,1), %eax        #  245   0x50d6e  5      
  movl %eax, %eax                    #  246   0x50d73  2      
  cmpb $0x49, (%r15,%rax,1)          #  247   0x50d75  5      
  je .L_51180                        #  248   0x50d7a  6      
  movl %r13d, %ecx                   #  249   0x50d80  3      
  movl %r12d, %edx                   #  250   0x50d83  3      
  nop                                #  251   0x50d86  1      
  movl $0x1, %esi                    #  252   0x50d87  5      
  jmpq .L_50e20                      #  253   0x50d8c  5      
  nop                                #  254   0x50d91  1      
  nop                                #  255   0x50d92  1      
.L_50f20:                            #        0x50d93  0      
  movl %r12d, %r12d                  #  256   0x50d93  3      
  movl 0x4(%r15,%r12,1), %edx        #  257   0x50d96  5      
  jmpq .L_50c80                      #  258   0x50d9b  5      
  nop                                #  259   0x50da0  1      
  nop                                #  260   0x50da1  1      
.L_50f40:                            #        0x50da2  0      
  addl $0x2, %edx                    #  261   0x50da2  3      
  movl %ebx, %edi                    #  262   0x50da5  2      
  movl %ebx, %ebx                    #  263   0x50da7  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  264   0x50da9  5      
  nop                                #  265   0x50dae  1      
  callq .d_expression                #  266   0x50daf  5      
  xorl %ecx, %ecx                    #  267   0x50db4  2      
  movl %eax, %edx                    #  268   0x50db6  2      
  movl $0x3a, %esi                   #  269   0x50db8  5      
  jmpq .L_50e20                      #  270   0x50dbd  5      
  nop                                #  271   0x50dc2  1      
  nop                                #  272   0x50dc3  1      
.L_50f80:                            #        0x50dc4  0      
  movl %ebx, %edi                    #  273   0x50dc4  2      
  nop                                #  274   0x50dc6  1      
  nop                                #  275   0x50dc7  1      
  callq .d_template_args             #  276   0x50dc8  5      
  movl %r12d, %edx                   #  277   0x50dcd  3      
  movl %eax, %ecx                    #  278   0x50dd0  2      
  movl $0x4, %esi                    #  279   0x50dd2  5      
  jmpq .L_50e20                      #  280   0x50dd7  5      
  xchgw %ax, %ax                     #  281   0x50ddc  3      
  nop                                #  282   0x50ddf  1      
.L_50fc0:                            #        0x50de0  0      
  movl %ebx, %edi                    #  283   0x50de0  2      
  nop                                #  284   0x50de2  1      
  nop                                #  285   0x50de3  1      
  callq .d_expression                #  286   0x50de4  5      
  movl %ebx, %edi                    #  287   0x50de9  2      
  movl %eax, %r13d                   #  288   0x50deb  3      
  nop                                #  289   0x50dee  1      
  nop                                #  290   0x50def  1      
  callq .d_expression                #  291   0x50df0  5      
  movl %ebx, %edi                    #  292   0x50df5  2      
  movl %eax, %r14d                   #  293   0x50df7  3      
  nop                                #  294   0x50dfa  1      
  nop                                #  295   0x50dfb  1      
  callq .d_expression                #  296   0x50dfc  5      
  movl %r14d, %edx                   #  297   0x50e01  3      
  movl %eax, %ecx                    #  298   0x50e04  2      
  movl $0x33, %esi                   #  299   0x50e06  5      
  movl %ebx, %edi                    #  300   0x50e0b  2      
  nop                                #  301   0x50e0d  1      
  callq .d_make_comp                 #  302   0x50e0e  5      
  movl %r13d, %edx                   #  303   0x50e13  3      
  movl %eax, %ecx                    #  304   0x50e16  2      
  movl $0x32, %esi                   #  305   0x50e18  5      
  movl %ebx, %edi                    #  306   0x50e1d  2      
  nop                                #  307   0x50e1f  1      
  callq .d_make_comp                 #  308   0x50e20  5      
  movl %r12d, %edx                   #  309   0x50e25  3      
  movl %eax, %ecx                    #  310   0x50e28  2      
  movl $0x31, %esi                   #  311   0x50e2a  5      
  jmpq .L_50e20                      #  312   0x50e2f  5      
  xchgw %ax, %ax                     #  313   0x50e34  3      
  nop                                #  314   0x50e37  1      
.L_51080:                            #        0x50e38  0      
  movl %ebx, %edi                    #  315   0x50e38  2      
  nop                                #  316   0x50e3a  1      
  nop                                #  317   0x50e3b  1      
  callq .d_expression                #  318   0x50e3c  5      
  movl %eax, %r13d                   #  319   0x50e41  3      
  movl %r12d, %r12d                  #  320   0x50e44  3      
  movl 0x4(%r15,%r12,1), %eax        #  321   0x50e47  5      
  movl $0x1002284f, %edi             #  322   0x50e4c  5      
  movl $0x3, %ecx                    #  323   0x50e51  5      
  movl %eax, %eax                    #  324   0x50e56  2      
  movl (%r15,%rax,1), %esi           #  325   0x50e58  4      
  nop                                #  326   0x50e5c  1      
  movl %esi, %esi                    #  327   0x50e5d  2      
  leaq (%r15,%rsi,1), %rsi           #  328   0x50e5f  4      
  movl %edi, %edi                    #  329   0x50e63  2      
  leaq (%r15,%rdi,1), %rdi           #  330   0x50e65  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  331   0x50e69  3      
  movl %esi, %esi                    #  332   0x50e6c  2      
  movl %edi, %edi                    #  333   0x50e6e  2      
  jne .L_51140                       #  334   0x50e70  6      
  movl %ebx, %edi                    #  335   0x50e76  2      
  nop                                #  336   0x50e78  1      
  callq .d_exprlist                  #  337   0x50e79  5      
  movl %eax, %ecx                    #  338   0x50e7e  2      
  nop                                #  339   0x50e80  1      
  nop                                #  340   0x50e81  1      
.L_51100:                            #        0x50e82  0      
  movl %r13d, %edx                   #  341   0x50e82  3      
  movl $0x30, %esi                   #  342   0x50e85  5      
  movl %ebx, %edi                    #  343   0x50e8a  2      
  xchgw %ax, %ax                     #  344   0x50e8c  3      
  nop                                #  345   0x50e8f  1      
  callq .d_make_comp                 #  346   0x50e90  5      
  movl %r12d, %edx                   #  347   0x50e95  3      
  movl %eax, %ecx                    #  348   0x50e98  2      
  movl $0x2f, %esi                   #  349   0x50e9a  5      
  jmpq .L_50e20                      #  350   0x50e9f  5      
  xchgw %ax, %ax                     #  351   0x50ea4  3      
  nop                                #  352   0x50ea7  1      
.L_51140:                            #        0x50ea8  0      
  movl %ebx, %edi                    #  353   0x50ea8  2      
  nop                                #  354   0x50eaa  1      
  nop                                #  355   0x50eab  1      
  callq .d_expression                #  356   0x50eac  5      
  movl %eax, %ecx                    #  357   0x50eb1  2      
  jmpq .L_51100                      #  358   0x50eb3  5      
  nop                                #  359   0x50eb8  1      
  nop                                #  360   0x50eb9  1      
.L_51180:                            #        0x50eba  0      
  movl %ebx, %edi                    #  361   0x50eba  2      
  nop                                #  362   0x50ebc  1      
  nop                                #  363   0x50ebd  1      
  callq .d_template_args             #  364   0x50ebe  5      
  movl %r13d, %edx                   #  365   0x50ec3  3      
  movl %eax, %ecx                    #  366   0x50ec6  2      
  movl $0x4, %esi                    #  367   0x50ec8  5      
  movl %ebx, %edi                    #  368   0x50ecd  2      
  nop                                #  369   0x50ecf  1      
  callq .d_make_comp                 #  370   0x50ed0  5      
  movl %r12d, %edx                   #  371   0x50ed5  3      
  movl %eax, %ecx                    #  372   0x50ed8  2      
  movl $0x1, %esi                    #  373   0x50eda  5      
  jmpq .L_50e20                      #  374   0x50edf  5      
  xchgw %ax, %ax                     #  375   0x50ee4  3      
  nop                                #  376   0x50ee7  1      
.L_511e0:                            #        0x50ee8  0      
  addl $0x1, %eax                    #  377   0x50ee8  3      
  movl %ebx, %edi                    #  378   0x50eeb  2      
  movl %ebx, %ebx                    #  379   0x50eed  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  380   0x50eef  5      
  nop                                #  381   0x50ef4  1      
  callq .d_exprlist                  #  382   0x50ef5  5      
  movl %eax, %ecx                    #  383   0x50efa  2      
  jmpq .L_50d20                      #  384   0x50efc  5      
  nop                                #  385   0x50f01  1      
  nop                                #  386   0x50f02  1      
                                                              
.size d_expression, .-d_expression

