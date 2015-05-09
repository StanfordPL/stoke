  .text
  .globl d_expression
  .type d_expression, @function

#! file-offset 0x509a0
#! rip-offset  0x509a0
#! capacity    2016 bytes

# Text                               #  Line  RIP      Bytes  
.d_expression:                       #        0x509a0  0      
  movq %rbx, -0x20(%rsp)             #  1     0x509a0  5      
  movl %edi, %ebx                    #  2     0x509a5  2      
  movq %r12, -0x18(%rsp)             #  3     0x509a7  5      
  movq %r13, -0x10(%rsp)             #  4     0x509ac  5      
  movq %r14, -0x8(%rsp)              #  5     0x509b1  5      
  subl $0x28, %esp                   #  6     0x509b6  3      
  addq %r15, %rsp                    #  7     0x509b9  3      
  nop                                #  8     0x509bc  1      
  movl %ebx, %ebx                    #  9     0x509bd  2      
  movl 0xc(%r15,%rbx,1), %edx        #  10    0x509bf  5      
  movl %edx, %edx                    #  11    0x509c4  2      
  movzbl (%r15,%rdx,1), %eax         #  12    0x509c6  5      
  cmpb $0x4c, %al                    #  13    0x509cb  2      
  je .L_50cc0                        #  14    0x509cd  6      
  cmpb $0x54, %al                    #  15    0x509d3  2      
  je .L_50dc0                        #  16    0x509d5  6      
  cmpb $0x73, %al                    #  17    0x509db  2      
  je .L_50b40                        #  18    0x509dd  6      
  cmpb $0x66, %al                    #  19    0x509e3  2      
  je .L_50a80                        #  20    0x509e5  6      
  nop                                #  21    0x509eb  1      
  nop                                #  22    0x509ec  1      
.L_50a00:                            #        0x509ed  0      
  subl $0x30, %eax                   #  23    0x509ed  3      
  cmpb $0x9, %al                     #  24    0x509f0  2      
  ja .L_50b60                        #  25    0x509f2  6      
  movl %ebx, %edi                    #  26    0x509f8  2      
  nop                                #  27    0x509fa  1      
  callq .d_unqualified_name          #  28    0x509fb  5      
  movl %eax, %r12d                   #  29    0x50a00  3      
  testq %r12, %r12                   #  30    0x50a03  3      
  je .L_50a40                        #  31    0x50a06  6      
  movl %ebx, %ebx                    #  32    0x50a0c  2      
  movl 0xc(%r15,%rbx,1), %eax        #  33    0x50a0e  5      
  movl %eax, %eax                    #  34    0x50a13  2      
  cmpb $0x49, (%r15,%rax,1)          #  35    0x50a15  5      
  je .L_50ee0                        #  36    0x50a1a  6      
  nop                                #  37    0x50a20  1      
.L_50a40:                            #        0x50a21  0      
  movl %r12d, %eax                   #  38    0x50a21  3      
  movq 0x8(%rsp), %rbx               #  39    0x50a24  5      
  movq 0x10(%rsp), %r12              #  40    0x50a29  5      
  movq 0x18(%rsp), %r13              #  41    0x50a2e  5      
  movq 0x20(%rsp), %r14              #  42    0x50a33  5      
  addl $0x28, %esp                   #  43    0x50a38  3      
  addq %r15, %rsp                    #  44    0x50a3b  3      
  popq %r11                          #  45    0x50a3e  3      
  nop                                #  46    0x50a41  1      
  andl $0xffffffe0, %r11d            #  47    0x50a42  7      
  addq %r15, %r11                    #  48    0x50a49  3      
  jmpq %r11                          #  49    0x50a4c  3      
  nop                                #  50    0x50a4f  1      
  nop                                #  51    0x50a50  1      
.L_50a80:                            #        0x50a51  0      
  movl %edx, %edx                    #  52    0x50a51  2      
  cmpb $0x70, 0x1(%r15,%rdx,1)       #  53    0x50a53  6      
  jne .L_50a00                       #  54    0x50a59  6      
  addl $0x2, %edx                    #  55    0x50a5f  3      
  movl $0x1, %eax                    #  56    0x50a62  5      
  movl %ebx, %ebx                    #  57    0x50a67  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  58    0x50a69  5      
  nop                                #  59    0x50a6e  1      
  movl %edx, %edx                    #  60    0x50a6f  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  61    0x50a71  5      
  je .L_50ae0                        #  62    0x50a76  6      
  movl %ebx, %edi                    #  63    0x50a7c  2      
  nop                                #  64    0x50a7e  1      
  nop                                #  65    0x50a7f  1      
  callq .d_number                    #  66    0x50a80  5      
  testl %eax, %eax                   #  67    0x50a85  2      
  js .L_50ca0                        #  68    0x50a87  6      
  movl %ebx, %ebx                    #  69    0x50a8d  2      
  movl 0xc(%r15,%rbx,1), %edx        #  70    0x50a8f  5      
  movl %edx, %edx                    #  71    0x50a94  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  72    0x50a96  5      
  jne .L_50ca0                       #  73    0x50a9b  6      
  addl $0x2, %eax                    #  74    0x50aa1  3      
  nop                                #  75    0x50aa4  1      
.L_50ae0:                            #        0x50aa5  0      
  addl $0x1, %edx                    #  76    0x50aa5  3      
  movl %ebx, %ebx                    #  77    0x50aa8  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  78    0x50aaa  5      
  movl %ebx, %ebx                    #  79    0x50aaf  2      
  movl 0x14(%r15,%rbx,1), %edx       #  80    0x50ab1  5      
  movl %ebx, %ebx                    #  81    0x50ab6  2      
  cmpl 0x18(%r15,%rbx,1), %edx       #  82    0x50ab8  5      
  jge .L_50ca0                       #  83    0x50abd  6      
  xchgw %ax, %ax                     #  84    0x50ac3  3      
  leal (%rdx,%rdx,2), %r12d          #  85    0x50ac6  4      
  addl $0x1, %edx                    #  86    0x50aca  3      
  movl %ebx, %ebx                    #  87    0x50acd  2      
  movl %edx, 0x14(%r15,%rbx,1)       #  88    0x50acf  5      
  shll $0x2, %r12d                   #  89    0x50ad4  4      
  movl %ebx, %ebx                    #  90    0x50ad8  2      
  addl 0x10(%r15,%rbx,1), %r12d      #  91    0x50ada  5      
  testq %r12, %r12                   #  92    0x50adf  3      
  nop                                #  93    0x50ae2  1      
  je .L_50a40                        #  94    0x50ae3  6      
  movl %r12d, %r12d                  #  95    0x50ae9  3      
  movl $0x6, (%r15,%r12,1)           #  96    0x50aec  8      
  movl %r12d, %r12d                  #  97    0x50af4  3      
  movl %eax, 0x4(%r15,%r12,1)        #  98    0x50af7  5      
  jmpq .L_50a40                      #  99    0x50afc  5      
  xchgw %ax, %ax                     #  100   0x50b01  3      
.L_50b40:                            #        0x50b04  0      
  movl %edx, %edx                    #  101   0x50b04  2      
  movzbl 0x1(%r15,%rdx,1), %eax      #  102   0x50b06  6      
  cmpb $0x72, %al                    #  103   0x50b0c  2      
  je .L_50e00                        #  104   0x50b0e  6      
  cmpb $0x70, %al                    #  105   0x50b14  2      
  je .L_50ea0                        #  106   0x50b16  6      
  nop                                #  107   0x50b1c  1      
.L_50b60:                            #        0x50b1d  0      
  movl %ebx, %edi                    #  108   0x50b1d  2      
  nop                                #  109   0x50b1f  1      
  nop                                #  110   0x50b20  1      
  callq .d_operator_name             #  111   0x50b21  5      
  movl %eax, %r12d                   #  112   0x50b26  3      
  testq %r12, %r12                   #  113   0x50b29  3      
  je .L_50ca0                        #  114   0x50b2c  6      
  movl %r12d, %r12d                  #  115   0x50b32  3      
  movl (%r15,%r12,1), %eax           #  116   0x50b35  4      
  cmpl $0x2b, %eax                   #  117   0x50b39  3      
  je .L_50d00                        #  118   0x50b3c  6      
  cmpl $0x2c, %eax                   #  119   0x50b42  3      
  nop                                #  120   0x50b45  1      
  je .L_50e80                        #  121   0x50b46  6      
  cmpl $0x2d, %eax                   #  122   0x50b4c  3      
  je .L_50c20                        #  123   0x50b4f  6      
  cmpl $0x2b, %eax                   #  124   0x50b55  3      
  jne .L_50ca0                       #  125   0x50b58  6      
  movl %r12d, %r12d                  #  126   0x50b5e  3      
  movl 0x4(%r15,%r12,1), %eax        #  127   0x50b61  5      
  nop                                #  128   0x50b66  1      
.L_50bc0:                            #        0x50b67  0      
  movl %eax, %eax                    #  129   0x50b67  2      
  movl 0xc(%r15,%rax,1), %edx        #  130   0x50b69  5      
  movl $0x2b, %eax                   #  131   0x50b6e  5      
  nop                                #  132   0x50b73  1      
  nop                                #  133   0x50b74  1      
.L_50be0:                            #        0x50b75  0      
  cmpl $0x2, %edx                    #  134   0x50b75  3      
  je .L_50fe0                        #  135   0x50b78  6      
  cmpl $0x3, %edx                    #  136   0x50b7e  3      
  je .L_50f20                        #  137   0x50b81  6      
  cmpl $0x1, %edx                    #  138   0x50b87  3      
  jne .L_50ca0                       #  139   0x50b8a  6      
  cmpl $0x2d, %eax                   #  140   0x50b90  3      
  xchgw %ax, %ax                     #  141   0x50b93  3      
  jne .L_50c40                       #  142   0x50b96  6      
  nop                                #  143   0x50b9c  1      
  nop                                #  144   0x50b9d  1      
.L_50c20:                            #        0x50b9e  0      
  movl %ebx, %ebx                    #  145   0x50b9e  2      
  movl 0xc(%r15,%rbx,1), %eax        #  146   0x50ba0  5      
  movl %eax, %eax                    #  147   0x50ba5  2      
  cmpb $0x5f, (%r15,%rax,1)          #  148   0x50ba7  5      
  je .L_51140                        #  149   0x50bac  6      
  nop                                #  150   0x50bb2  1      
.L_50c40:                            #        0x50bb3  0      
  movl %ebx, %edi                    #  151   0x50bb3  2      
  nop                                #  152   0x50bb5  1      
  nop                                #  153   0x50bb6  1      
  callq .d_expression                #  154   0x50bb7  5      
  movl %eax, %ecx                    #  155   0x50bbc  2      
  nop                                #  156   0x50bbe  1      
  nop                                #  157   0x50bbf  1      
.L_50c80:                            #        0x50bc0  0      
  movl %r12d, %edx                   #  158   0x50bc0  3      
  movl $0x2e, %esi                   #  159   0x50bc3  5      
  jmpq .L_50d80                      #  160   0x50bc8  5      
  nop                                #  161   0x50bcd  1      
  nop                                #  162   0x50bce  1      
.L_50ca0:                            #        0x50bcf  0      
  xorl %r12d, %r12d                  #  163   0x50bcf  3      
  jmpq .L_50a40                      #  164   0x50bd2  5      
  nop                                #  165   0x50bd7  1      
  nop                                #  166   0x50bd8  1      
.L_50cc0:                            #        0x50bd9  0      
  movl %ebx, %edi                    #  167   0x50bd9  2      
  movq 0x10(%rsp), %r12              #  168   0x50bdb  5      
  movq 0x8(%rsp), %rbx               #  169   0x50be0  5      
  movq 0x18(%rsp), %r13              #  170   0x50be5  5      
  movq 0x20(%rsp), %r14              #  171   0x50bea  5      
  addl $0x28, %esp                   #  172   0x50bef  3      
  addq %r15, %rsp                    #  173   0x50bf2  3      
  nop                                #  174   0x50bf5  1      
  jmpq .d_expr_primary               #  175   0x50bf6  5      
  nop                                #  176   0x50bfb  1      
  nop                                #  177   0x50bfc  1      
.L_50d00:                            #        0x50bfd  0      
  movl %r12d, %r12d                  #  178   0x50bfd  3      
  movl 0x4(%r15,%r12,1), %edx        #  179   0x50c00  5      
  movl %ebx, %ebx                    #  180   0x50c05  2      
  movl 0x30(%r15,%rbx,1), %eax       #  181   0x50c07  5      
  movl $0x1002144b, %edi             #  182   0x50c0c  5      
  movl $0x3, %ecx                    #  183   0x50c11  5      
  movl %edx, %edx                    #  184   0x50c16  2      
  addl 0x8(%r15,%rdx,1), %eax        #  185   0x50c18  5      
  subl $0x2, %eax                    #  186   0x50c1d  3      
  movl %ebx, %ebx                    #  187   0x50c20  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  188   0x50c22  5      
  movl %r12d, %r12d                  #  189   0x50c27  3      
  movl 0x4(%r15,%r12,1), %eax        #  190   0x50c2a  5      
  movl %eax, %eax                    #  191   0x50c2f  2      
  movl (%r15,%rax,1), %esi           #  192   0x50c31  4      
  nop                                #  193   0x50c35  1      
  movl %esi, %esi                    #  194   0x50c36  2      
  leaq (%r15,%rsi,1), %rsi           #  195   0x50c38  4      
  movl %edi, %edi                    #  196   0x50c3c  2      
  leaq (%r15,%rdi,1), %rdi           #  197   0x50c3e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  198   0x50c42  3      
  movl %esi, %esi                    #  199   0x50c45  2      
  movl %edi, %edi                    #  200   0x50c47  2      
  jne .L_50bc0                       #  201   0x50c49  6      
  movl %ebx, %edi                    #  202   0x50c4f  2      
  nop                                #  203   0x50c51  1      
  callq .d_type                      #  204   0x50c52  5      
  movl %r12d, %edx                   #  205   0x50c57  3      
  movl %eax, %ecx                    #  206   0x50c5a  2      
  movl $0x2e, %esi                   #  207   0x50c5c  5      
  nop                                #  208   0x50c61  1      
  nop                                #  209   0x50c62  1      
.L_50d80:                            #        0x50c63  0      
  movl %ebx, %edi                    #  210   0x50c63  2      
  movq 0x10(%rsp), %r12              #  211   0x50c65  5      
  movq 0x8(%rsp), %rbx               #  212   0x50c6a  5      
  movq 0x18(%rsp), %r13              #  213   0x50c6f  5      
  movq 0x20(%rsp), %r14              #  214   0x50c74  5      
  addl $0x28, %esp                   #  215   0x50c79  3      
  addq %r15, %rsp                    #  216   0x50c7c  3      
  nop                                #  217   0x50c7f  1      
  jmpq .d_make_comp                  #  218   0x50c80  5      
  nop                                #  219   0x50c85  1      
  nop                                #  220   0x50c86  1      
.L_50dc0:                            #        0x50c87  0      
  movl %ebx, %edi                    #  221   0x50c87  2      
  movq 0x10(%rsp), %r12              #  222   0x50c89  5      
  movq 0x8(%rsp), %rbx               #  223   0x50c8e  5      
  movq 0x18(%rsp), %r13              #  224   0x50c93  5      
  movq 0x20(%rsp), %r14              #  225   0x50c98  5      
  addl $0x28, %esp                   #  226   0x50c9d  3      
  addq %r15, %rsp                    #  227   0x50ca0  3      
  nop                                #  228   0x50ca3  1      
  jmpq .d_template_param             #  229   0x50ca4  5      
  nop                                #  230   0x50ca9  1      
  nop                                #  231   0x50caa  1      
.L_50e00:                            #        0x50cab  0      
  addl $0x2, %edx                    #  232   0x50cab  3      
  movl %ebx, %edi                    #  233   0x50cae  2      
  movl %ebx, %ebx                    #  234   0x50cb0  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  235   0x50cb2  5      
  nop                                #  236   0x50cb7  1      
  callq .d_type                      #  237   0x50cb8  5      
  movl %ebx, %edi                    #  238   0x50cbd  2      
  movl %eax, %r12d                   #  239   0x50cbf  3      
  nop                                #  240   0x50cc2  1      
  nop                                #  241   0x50cc3  1      
  callq .d_unqualified_name          #  242   0x50cc4  5      
  movl %eax, %r13d                   #  243   0x50cc9  3      
  movl %ebx, %ebx                    #  244   0x50ccc  2      
  movl 0xc(%r15,%rbx,1), %eax        #  245   0x50cce  5      
  movl %eax, %eax                    #  246   0x50cd3  2      
  cmpb $0x49, (%r15,%rax,1)          #  247   0x50cd5  5      
  je .L_510e0                        #  248   0x50cda  6      
  movl %r13d, %ecx                   #  249   0x50ce0  3      
  movl %r12d, %edx                   #  250   0x50ce3  3      
  nop                                #  251   0x50ce6  1      
  movl $0x1, %esi                    #  252   0x50ce7  5      
  jmpq .L_50d80                      #  253   0x50cec  5      
  nop                                #  254   0x50cf1  1      
  nop                                #  255   0x50cf2  1      
.L_50e80:                            #        0x50cf3  0      
  movl %r12d, %r12d                  #  256   0x50cf3  3      
  movl 0x4(%r15,%r12,1), %edx        #  257   0x50cf6  5      
  jmpq .L_50be0                      #  258   0x50cfb  5      
  nop                                #  259   0x50d00  1      
  nop                                #  260   0x50d01  1      
.L_50ea0:                            #        0x50d02  0      
  addl $0x2, %edx                    #  261   0x50d02  3      
  movl %ebx, %edi                    #  262   0x50d05  2      
  movl %ebx, %ebx                    #  263   0x50d07  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  264   0x50d09  5      
  nop                                #  265   0x50d0e  1      
  callq .d_expression                #  266   0x50d0f  5      
  xorl %ecx, %ecx                    #  267   0x50d14  2      
  movl %eax, %edx                    #  268   0x50d16  2      
  movl $0x3a, %esi                   #  269   0x50d18  5      
  jmpq .L_50d80                      #  270   0x50d1d  5      
  nop                                #  271   0x50d22  1      
  nop                                #  272   0x50d23  1      
.L_50ee0:                            #        0x50d24  0      
  movl %ebx, %edi                    #  273   0x50d24  2      
  nop                                #  274   0x50d26  1      
  nop                                #  275   0x50d27  1      
  callq .d_template_args             #  276   0x50d28  5      
  movl %r12d, %edx                   #  277   0x50d2d  3      
  movl %eax, %ecx                    #  278   0x50d30  2      
  movl $0x4, %esi                    #  279   0x50d32  5      
  jmpq .L_50d80                      #  280   0x50d37  5      
  xchgw %ax, %ax                     #  281   0x50d3c  3      
  nop                                #  282   0x50d3f  1      
.L_50f20:                            #        0x50d40  0      
  movl %ebx, %edi                    #  283   0x50d40  2      
  nop                                #  284   0x50d42  1      
  nop                                #  285   0x50d43  1      
  callq .d_expression                #  286   0x50d44  5      
  movl %ebx, %edi                    #  287   0x50d49  2      
  movl %eax, %r13d                   #  288   0x50d4b  3      
  nop                                #  289   0x50d4e  1      
  nop                                #  290   0x50d4f  1      
  callq .d_expression                #  291   0x50d50  5      
  movl %ebx, %edi                    #  292   0x50d55  2      
  movl %eax, %r14d                   #  293   0x50d57  3      
  nop                                #  294   0x50d5a  1      
  nop                                #  295   0x50d5b  1      
  callq .d_expression                #  296   0x50d5c  5      
  movl %r14d, %edx                   #  297   0x50d61  3      
  movl %eax, %ecx                    #  298   0x50d64  2      
  movl $0x33, %esi                   #  299   0x50d66  5      
  movl %ebx, %edi                    #  300   0x50d6b  2      
  nop                                #  301   0x50d6d  1      
  callq .d_make_comp                 #  302   0x50d6e  5      
  movl %r13d, %edx                   #  303   0x50d73  3      
  movl %eax, %ecx                    #  304   0x50d76  2      
  movl $0x32, %esi                   #  305   0x50d78  5      
  movl %ebx, %edi                    #  306   0x50d7d  2      
  nop                                #  307   0x50d7f  1      
  callq .d_make_comp                 #  308   0x50d80  5      
  movl %r12d, %edx                   #  309   0x50d85  3      
  movl %eax, %ecx                    #  310   0x50d88  2      
  movl $0x31, %esi                   #  311   0x50d8a  5      
  jmpq .L_50d80                      #  312   0x50d8f  5      
  xchgw %ax, %ax                     #  313   0x50d94  3      
  nop                                #  314   0x50d97  1      
.L_50fe0:                            #        0x50d98  0      
  movl %ebx, %edi                    #  315   0x50d98  2      
  nop                                #  316   0x50d9a  1      
  nop                                #  317   0x50d9b  1      
  callq .d_expression                #  318   0x50d9c  5      
  movl %eax, %r13d                   #  319   0x50da1  3      
  movl %r12d, %r12d                  #  320   0x50da4  3      
  movl 0x4(%r15,%r12,1), %eax        #  321   0x50da7  5      
  movl $0x1002284f, %edi             #  322   0x50dac  5      
  movl $0x3, %ecx                    #  323   0x50db1  5      
  movl %eax, %eax                    #  324   0x50db6  2      
  movl (%r15,%rax,1), %esi           #  325   0x50db8  4      
  nop                                #  326   0x50dbc  1      
  movl %esi, %esi                    #  327   0x50dbd  2      
  leaq (%r15,%rsi,1), %rsi           #  328   0x50dbf  4      
  movl %edi, %edi                    #  329   0x50dc3  2      
  leaq (%r15,%rdi,1), %rdi           #  330   0x50dc5  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  331   0x50dc9  3      
  movl %esi, %esi                    #  332   0x50dcc  2      
  movl %edi, %edi                    #  333   0x50dce  2      
  jne .L_510a0                       #  334   0x50dd0  6      
  movl %ebx, %edi                    #  335   0x50dd6  2      
  nop                                #  336   0x50dd8  1      
  callq .d_exprlist                  #  337   0x50dd9  5      
  movl %eax, %ecx                    #  338   0x50dde  2      
  nop                                #  339   0x50de0  1      
  nop                                #  340   0x50de1  1      
.L_51060:                            #        0x50de2  0      
  movl %r13d, %edx                   #  341   0x50de2  3      
  movl $0x30, %esi                   #  342   0x50de5  5      
  movl %ebx, %edi                    #  343   0x50dea  2      
  xchgw %ax, %ax                     #  344   0x50dec  3      
  nop                                #  345   0x50def  1      
  callq .d_make_comp                 #  346   0x50df0  5      
  movl %r12d, %edx                   #  347   0x50df5  3      
  movl %eax, %ecx                    #  348   0x50df8  2      
  movl $0x2f, %esi                   #  349   0x50dfa  5      
  jmpq .L_50d80                      #  350   0x50dff  5      
  xchgw %ax, %ax                     #  351   0x50e04  3      
  nop                                #  352   0x50e07  1      
.L_510a0:                            #        0x50e08  0      
  movl %ebx, %edi                    #  353   0x50e08  2      
  nop                                #  354   0x50e0a  1      
  nop                                #  355   0x50e0b  1      
  callq .d_expression                #  356   0x50e0c  5      
  movl %eax, %ecx                    #  357   0x50e11  2      
  jmpq .L_51060                      #  358   0x50e13  5      
  nop                                #  359   0x50e18  1      
  nop                                #  360   0x50e19  1      
.L_510e0:                            #        0x50e1a  0      
  movl %ebx, %edi                    #  361   0x50e1a  2      
  nop                                #  362   0x50e1c  1      
  nop                                #  363   0x50e1d  1      
  callq .d_template_args             #  364   0x50e1e  5      
  movl %r13d, %edx                   #  365   0x50e23  3      
  movl %eax, %ecx                    #  366   0x50e26  2      
  movl $0x4, %esi                    #  367   0x50e28  5      
  movl %ebx, %edi                    #  368   0x50e2d  2      
  nop                                #  369   0x50e2f  1      
  callq .d_make_comp                 #  370   0x50e30  5      
  movl %r12d, %edx                   #  371   0x50e35  3      
  movl %eax, %ecx                    #  372   0x50e38  2      
  movl $0x1, %esi                    #  373   0x50e3a  5      
  jmpq .L_50d80                      #  374   0x50e3f  5      
  xchgw %ax, %ax                     #  375   0x50e44  3      
  nop                                #  376   0x50e47  1      
.L_51140:                            #        0x50e48  0      
  addl $0x1, %eax                    #  377   0x50e48  3      
  movl %ebx, %edi                    #  378   0x50e4b  2      
  movl %ebx, %ebx                    #  379   0x50e4d  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  380   0x50e4f  5      
  nop                                #  381   0x50e54  1      
  callq .d_exprlist                  #  382   0x50e55  5      
  movl %eax, %ecx                    #  383   0x50e5a  2      
  jmpq .L_50c80                      #  384   0x50e5c  5      
  nop                                #  385   0x50e61  1      
  nop                                #  386   0x50e62  1      
                                                              
.size d_expression, .-d_expression

