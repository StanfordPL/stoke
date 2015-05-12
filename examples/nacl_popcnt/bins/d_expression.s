  .text
  .globl d_expression
  .type d_expression, @function

#! file-offset 0x509c0
#! rip-offset  0x509c0
#! capacity    2016 bytes

# Text                               #  Line  RIP      Bytes  
.d_expression:                       #        0x509c0  0      
  movq %rbx, -0x20(%rsp)             #  1     0x509c0  5      
  movl %edi, %ebx                    #  2     0x509c5  2      
  movq %r12, -0x18(%rsp)             #  3     0x509c7  5      
  movq %r13, -0x10(%rsp)             #  4     0x509cc  5      
  movq %r14, -0x8(%rsp)              #  5     0x509d1  5      
  subl $0x28, %esp                   #  6     0x509d6  3      
  addq %r15, %rsp                    #  7     0x509d9  3      
  nop                                #  8     0x509dc  1      
  movl %ebx, %ebx                    #  9     0x509dd  2      
  movl 0xc(%r15,%rbx,1), %edx        #  10    0x509df  5      
  movl %edx, %edx                    #  11    0x509e4  2      
  movzbl (%r15,%rdx,1), %eax         #  12    0x509e6  5      
  cmpb $0x4c, %al                    #  13    0x509eb  2      
  je .L_50ce0                        #  14    0x509ed  6      
  cmpb $0x54, %al                    #  15    0x509f3  2      
  je .L_50de0                        #  16    0x509f5  6      
  cmpb $0x73, %al                    #  17    0x509fb  2      
  je .L_50b60                        #  18    0x509fd  6      
  cmpb $0x66, %al                    #  19    0x50a03  2      
  je .L_50aa0                        #  20    0x50a05  6      
  nop                                #  21    0x50a0b  1      
  nop                                #  22    0x50a0c  1      
.L_50a20:                            #        0x50a0d  0      
  subl $0x30, %eax                   #  23    0x50a0d  3      
  cmpb $0x9, %al                     #  24    0x50a10  2      
  ja .L_50b80                        #  25    0x50a12  6      
  movl %ebx, %edi                    #  26    0x50a18  2      
  nop                                #  27    0x50a1a  1      
  callq .d_unqualified_name          #  28    0x50a1b  5      
  movl %eax, %r12d                   #  29    0x50a20  3      
  testq %r12, %r12                   #  30    0x50a23  3      
  je .L_50a60                        #  31    0x50a26  6      
  movl %ebx, %ebx                    #  32    0x50a2c  2      
  movl 0xc(%r15,%rbx,1), %eax        #  33    0x50a2e  5      
  movl %eax, %eax                    #  34    0x50a33  2      
  cmpb $0x49, (%r15,%rax,1)          #  35    0x50a35  5      
  je .L_50f00                        #  36    0x50a3a  6      
  nop                                #  37    0x50a40  1      
.L_50a60:                            #        0x50a41  0      
  movl %r12d, %eax                   #  38    0x50a41  3      
  movq 0x8(%rsp), %rbx               #  39    0x50a44  5      
  movq 0x10(%rsp), %r12              #  40    0x50a49  5      
  movq 0x18(%rsp), %r13              #  41    0x50a4e  5      
  movq 0x20(%rsp), %r14              #  42    0x50a53  5      
  addl $0x28, %esp                   #  43    0x50a58  3      
  addq %r15, %rsp                    #  44    0x50a5b  3      
  popq %r11                          #  45    0x50a5e  3      
  nop                                #  46    0x50a61  1      
  andl $0xffffffe0, %r11d            #  47    0x50a62  7      
  addq %r15, %r11                    #  48    0x50a69  3      
  jmpq %r11                          #  49    0x50a6c  3      
  nop                                #  50    0x50a6f  1      
  nop                                #  51    0x50a70  1      
.L_50aa0:                            #        0x50a71  0      
  movl %edx, %edx                    #  52    0x50a71  2      
  cmpb $0x70, 0x1(%r15,%rdx,1)       #  53    0x50a73  6      
  jne .L_50a20                       #  54    0x50a79  6      
  addl $0x2, %edx                    #  55    0x50a7f  3      
  movl $0x1, %eax                    #  56    0x50a82  5      
  movl %ebx, %ebx                    #  57    0x50a87  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  58    0x50a89  5      
  nop                                #  59    0x50a8e  1      
  movl %edx, %edx                    #  60    0x50a8f  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  61    0x50a91  5      
  je .L_50b00                        #  62    0x50a96  6      
  movl %ebx, %edi                    #  63    0x50a9c  2      
  nop                                #  64    0x50a9e  1      
  nop                                #  65    0x50a9f  1      
  callq .d_number                    #  66    0x50aa0  5      
  testl %eax, %eax                   #  67    0x50aa5  2      
  js .L_50cc0                        #  68    0x50aa7  6      
  movl %ebx, %ebx                    #  69    0x50aad  2      
  movl 0xc(%r15,%rbx,1), %edx        #  70    0x50aaf  5      
  movl %edx, %edx                    #  71    0x50ab4  2      
  cmpb $0x5f, (%r15,%rdx,1)          #  72    0x50ab6  5      
  jne .L_50cc0                       #  73    0x50abb  6      
  addl $0x2, %eax                    #  74    0x50ac1  3      
  nop                                #  75    0x50ac4  1      
.L_50b00:                            #        0x50ac5  0      
  addl $0x1, %edx                    #  76    0x50ac5  3      
  movl %ebx, %ebx                    #  77    0x50ac8  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  78    0x50aca  5      
  movl %ebx, %ebx                    #  79    0x50acf  2      
  movl 0x14(%r15,%rbx,1), %edx       #  80    0x50ad1  5      
  movl %ebx, %ebx                    #  81    0x50ad6  2      
  cmpl 0x18(%r15,%rbx,1), %edx       #  82    0x50ad8  5      
  jge .L_50cc0                       #  83    0x50add  6      
  xchgw %ax, %ax                     #  84    0x50ae3  3      
  leal (%rdx,%rdx,2), %r12d          #  85    0x50ae6  4      
  addl $0x1, %edx                    #  86    0x50aea  3      
  movl %ebx, %ebx                    #  87    0x50aed  2      
  movl %edx, 0x14(%r15,%rbx,1)       #  88    0x50aef  5      
  shll $0x2, %r12d                   #  89    0x50af4  4      
  movl %ebx, %ebx                    #  90    0x50af8  2      
  addl 0x10(%r15,%rbx,1), %r12d      #  91    0x50afa  5      
  testq %r12, %r12                   #  92    0x50aff  3      
  nop                                #  93    0x50b02  1      
  je .L_50a60                        #  94    0x50b03  6      
  movl %r12d, %r12d                  #  95    0x50b09  3      
  movl $0x6, (%r15,%r12,1)           #  96    0x50b0c  8      
  movl %r12d, %r12d                  #  97    0x50b14  3      
  movl %eax, 0x4(%r15,%r12,1)        #  98    0x50b17  5      
  jmpq .L_50a60                      #  99    0x50b1c  5      
  xchgw %ax, %ax                     #  100   0x50b21  3      
.L_50b60:                            #        0x50b24  0      
  movl %edx, %edx                    #  101   0x50b24  2      
  movzbl 0x1(%r15,%rdx,1), %eax      #  102   0x50b26  6      
  cmpb $0x72, %al                    #  103   0x50b2c  2      
  je .L_50e20                        #  104   0x50b2e  6      
  cmpb $0x70, %al                    #  105   0x50b34  2      
  je .L_50ec0                        #  106   0x50b36  6      
  nop                                #  107   0x50b3c  1      
.L_50b80:                            #        0x50b3d  0      
  movl %ebx, %edi                    #  108   0x50b3d  2      
  nop                                #  109   0x50b3f  1      
  nop                                #  110   0x50b40  1      
  callq .d_operator_name             #  111   0x50b41  5      
  movl %eax, %r12d                   #  112   0x50b46  3      
  testq %r12, %r12                   #  113   0x50b49  3      
  je .L_50cc0                        #  114   0x50b4c  6      
  movl %r12d, %r12d                  #  115   0x50b52  3      
  movl (%r15,%r12,1), %eax           #  116   0x50b55  4      
  cmpl $0x2b, %eax                   #  117   0x50b59  3      
  je .L_50d20                        #  118   0x50b5c  6      
  cmpl $0x2c, %eax                   #  119   0x50b62  3      
  nop                                #  120   0x50b65  1      
  je .L_50ea0                        #  121   0x50b66  6      
  cmpl $0x2d, %eax                   #  122   0x50b6c  3      
  je .L_50c40                        #  123   0x50b6f  6      
  cmpl $0x2b, %eax                   #  124   0x50b75  3      
  jne .L_50cc0                       #  125   0x50b78  6      
  movl %r12d, %r12d                  #  126   0x50b7e  3      
  movl 0x4(%r15,%r12,1), %eax        #  127   0x50b81  5      
  nop                                #  128   0x50b86  1      
.L_50be0:                            #        0x50b87  0      
  movl %eax, %eax                    #  129   0x50b87  2      
  movl 0xc(%r15,%rax,1), %edx        #  130   0x50b89  5      
  movl $0x2b, %eax                   #  131   0x50b8e  5      
  nop                                #  132   0x50b93  1      
  nop                                #  133   0x50b94  1      
.L_50c00:                            #        0x50b95  0      
  cmpl $0x2, %edx                    #  134   0x50b95  3      
  je .L_51000                        #  135   0x50b98  6      
  cmpl $0x3, %edx                    #  136   0x50b9e  3      
  je .L_50f40                        #  137   0x50ba1  6      
  cmpl $0x1, %edx                    #  138   0x50ba7  3      
  jne .L_50cc0                       #  139   0x50baa  6      
  cmpl $0x2d, %eax                   #  140   0x50bb0  3      
  xchgw %ax, %ax                     #  141   0x50bb3  3      
  jne .L_50c60                       #  142   0x50bb6  6      
  nop                                #  143   0x50bbc  1      
  nop                                #  144   0x50bbd  1      
.L_50c40:                            #        0x50bbe  0      
  movl %ebx, %ebx                    #  145   0x50bbe  2      
  movl 0xc(%r15,%rbx,1), %eax        #  146   0x50bc0  5      
  movl %eax, %eax                    #  147   0x50bc5  2      
  cmpb $0x5f, (%r15,%rax,1)          #  148   0x50bc7  5      
  je .L_51160                        #  149   0x50bcc  6      
  nop                                #  150   0x50bd2  1      
.L_50c60:                            #        0x50bd3  0      
  movl %ebx, %edi                    #  151   0x50bd3  2      
  nop                                #  152   0x50bd5  1      
  nop                                #  153   0x50bd6  1      
  callq .d_expression                #  154   0x50bd7  5      
  movl %eax, %ecx                    #  155   0x50bdc  2      
  nop                                #  156   0x50bde  1      
  nop                                #  157   0x50bdf  1      
.L_50ca0:                            #        0x50be0  0      
  movl %r12d, %edx                   #  158   0x50be0  3      
  movl $0x2e, %esi                   #  159   0x50be3  5      
  jmpq .L_50da0                      #  160   0x50be8  5      
  nop                                #  161   0x50bed  1      
  nop                                #  162   0x50bee  1      
.L_50cc0:                            #        0x50bef  0      
  xorl %r12d, %r12d                  #  163   0x50bef  3      
  jmpq .L_50a60                      #  164   0x50bf2  5      
  nop                                #  165   0x50bf7  1      
  nop                                #  166   0x50bf8  1      
.L_50ce0:                            #        0x50bf9  0      
  movl %ebx, %edi                    #  167   0x50bf9  2      
  movq 0x10(%rsp), %r12              #  168   0x50bfb  5      
  movq 0x8(%rsp), %rbx               #  169   0x50c00  5      
  movq 0x18(%rsp), %r13              #  170   0x50c05  5      
  movq 0x20(%rsp), %r14              #  171   0x50c0a  5      
  addl $0x28, %esp                   #  172   0x50c0f  3      
  addq %r15, %rsp                    #  173   0x50c12  3      
  nop                                #  174   0x50c15  1      
  jmpq .d_expr_primary               #  175   0x50c16  5      
  nop                                #  176   0x50c1b  1      
  nop                                #  177   0x50c1c  1      
.L_50d20:                            #        0x50c1d  0      
  movl %r12d, %r12d                  #  178   0x50c1d  3      
  movl 0x4(%r15,%r12,1), %edx        #  179   0x50c20  5      
  movl %ebx, %ebx                    #  180   0x50c25  2      
  movl 0x30(%r15,%rbx,1), %eax       #  181   0x50c27  5      
  movl $0x1002144b, %edi             #  182   0x50c2c  5      
  movl $0x3, %ecx                    #  183   0x50c31  5      
  movl %edx, %edx                    #  184   0x50c36  2      
  addl 0x8(%r15,%rdx,1), %eax        #  185   0x50c38  5      
  subl $0x2, %eax                    #  186   0x50c3d  3      
  movl %ebx, %ebx                    #  187   0x50c40  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  188   0x50c42  5      
  movl %r12d, %r12d                  #  189   0x50c47  3      
  movl 0x4(%r15,%r12,1), %eax        #  190   0x50c4a  5      
  movl %eax, %eax                    #  191   0x50c4f  2      
  movl (%r15,%rax,1), %esi           #  192   0x50c51  4      
  nop                                #  193   0x50c55  1      
  movl %esi, %esi                    #  194   0x50c56  2      
  leaq (%r15,%rsi,1), %rsi           #  195   0x50c58  4      
  movl %edi, %edi                    #  196   0x50c5c  2      
  leaq (%r15,%rdi,1), %rdi           #  197   0x50c5e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  198   0x50c62  3      
  movl %esi, %esi                    #  199   0x50c65  2      
  movl %edi, %edi                    #  200   0x50c67  2      
  jne .L_50be0                       #  201   0x50c69  6      
  movl %ebx, %edi                    #  202   0x50c6f  2      
  nop                                #  203   0x50c71  1      
  callq .d_type                      #  204   0x50c72  5      
  movl %r12d, %edx                   #  205   0x50c77  3      
  movl %eax, %ecx                    #  206   0x50c7a  2      
  movl $0x2e, %esi                   #  207   0x50c7c  5      
  nop                                #  208   0x50c81  1      
  nop                                #  209   0x50c82  1      
.L_50da0:                            #        0x50c83  0      
  movl %ebx, %edi                    #  210   0x50c83  2      
  movq 0x10(%rsp), %r12              #  211   0x50c85  5      
  movq 0x8(%rsp), %rbx               #  212   0x50c8a  5      
  movq 0x18(%rsp), %r13              #  213   0x50c8f  5      
  movq 0x20(%rsp), %r14              #  214   0x50c94  5      
  addl $0x28, %esp                   #  215   0x50c99  3      
  addq %r15, %rsp                    #  216   0x50c9c  3      
  nop                                #  217   0x50c9f  1      
  jmpq .d_make_comp                  #  218   0x50ca0  5      
  nop                                #  219   0x50ca5  1      
  nop                                #  220   0x50ca6  1      
.L_50de0:                            #        0x50ca7  0      
  movl %ebx, %edi                    #  221   0x50ca7  2      
  movq 0x10(%rsp), %r12              #  222   0x50ca9  5      
  movq 0x8(%rsp), %rbx               #  223   0x50cae  5      
  movq 0x18(%rsp), %r13              #  224   0x50cb3  5      
  movq 0x20(%rsp), %r14              #  225   0x50cb8  5      
  addl $0x28, %esp                   #  226   0x50cbd  3      
  addq %r15, %rsp                    #  227   0x50cc0  3      
  nop                                #  228   0x50cc3  1      
  jmpq .d_template_param             #  229   0x50cc4  5      
  nop                                #  230   0x50cc9  1      
  nop                                #  231   0x50cca  1      
.L_50e20:                            #        0x50ccb  0      
  addl $0x2, %edx                    #  232   0x50ccb  3      
  movl %ebx, %edi                    #  233   0x50cce  2      
  movl %ebx, %ebx                    #  234   0x50cd0  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  235   0x50cd2  5      
  nop                                #  236   0x50cd7  1      
  callq .d_type                      #  237   0x50cd8  5      
  movl %ebx, %edi                    #  238   0x50cdd  2      
  movl %eax, %r12d                   #  239   0x50cdf  3      
  nop                                #  240   0x50ce2  1      
  nop                                #  241   0x50ce3  1      
  callq .d_unqualified_name          #  242   0x50ce4  5      
  movl %eax, %r13d                   #  243   0x50ce9  3      
  movl %ebx, %ebx                    #  244   0x50cec  2      
  movl 0xc(%r15,%rbx,1), %eax        #  245   0x50cee  5      
  movl %eax, %eax                    #  246   0x50cf3  2      
  cmpb $0x49, (%r15,%rax,1)          #  247   0x50cf5  5      
  je .L_51100                        #  248   0x50cfa  6      
  movl %r13d, %ecx                   #  249   0x50d00  3      
  movl %r12d, %edx                   #  250   0x50d03  3      
  nop                                #  251   0x50d06  1      
  movl $0x1, %esi                    #  252   0x50d07  5      
  jmpq .L_50da0                      #  253   0x50d0c  5      
  nop                                #  254   0x50d11  1      
  nop                                #  255   0x50d12  1      
.L_50ea0:                            #        0x50d13  0      
  movl %r12d, %r12d                  #  256   0x50d13  3      
  movl 0x4(%r15,%r12,1), %edx        #  257   0x50d16  5      
  jmpq .L_50c00                      #  258   0x50d1b  5      
  nop                                #  259   0x50d20  1      
  nop                                #  260   0x50d21  1      
.L_50ec0:                            #        0x50d22  0      
  addl $0x2, %edx                    #  261   0x50d22  3      
  movl %ebx, %edi                    #  262   0x50d25  2      
  movl %ebx, %ebx                    #  263   0x50d27  2      
  movl %edx, 0xc(%r15,%rbx,1)        #  264   0x50d29  5      
  nop                                #  265   0x50d2e  1      
  callq .d_expression                #  266   0x50d2f  5      
  xorl %ecx, %ecx                    #  267   0x50d34  2      
  movl %eax, %edx                    #  268   0x50d36  2      
  movl $0x3a, %esi                   #  269   0x50d38  5      
  jmpq .L_50da0                      #  270   0x50d3d  5      
  nop                                #  271   0x50d42  1      
  nop                                #  272   0x50d43  1      
.L_50f00:                            #        0x50d44  0      
  movl %ebx, %edi                    #  273   0x50d44  2      
  nop                                #  274   0x50d46  1      
  nop                                #  275   0x50d47  1      
  callq .d_template_args             #  276   0x50d48  5      
  movl %r12d, %edx                   #  277   0x50d4d  3      
  movl %eax, %ecx                    #  278   0x50d50  2      
  movl $0x4, %esi                    #  279   0x50d52  5      
  jmpq .L_50da0                      #  280   0x50d57  5      
  xchgw %ax, %ax                     #  281   0x50d5c  3      
  nop                                #  282   0x50d5f  1      
.L_50f40:                            #        0x50d60  0      
  movl %ebx, %edi                    #  283   0x50d60  2      
  nop                                #  284   0x50d62  1      
  nop                                #  285   0x50d63  1      
  callq .d_expression                #  286   0x50d64  5      
  movl %ebx, %edi                    #  287   0x50d69  2      
  movl %eax, %r13d                   #  288   0x50d6b  3      
  nop                                #  289   0x50d6e  1      
  nop                                #  290   0x50d6f  1      
  callq .d_expression                #  291   0x50d70  5      
  movl %ebx, %edi                    #  292   0x50d75  2      
  movl %eax, %r14d                   #  293   0x50d77  3      
  nop                                #  294   0x50d7a  1      
  nop                                #  295   0x50d7b  1      
  callq .d_expression                #  296   0x50d7c  5      
  movl %r14d, %edx                   #  297   0x50d81  3      
  movl %eax, %ecx                    #  298   0x50d84  2      
  movl $0x33, %esi                   #  299   0x50d86  5      
  movl %ebx, %edi                    #  300   0x50d8b  2      
  nop                                #  301   0x50d8d  1      
  callq .d_make_comp                 #  302   0x50d8e  5      
  movl %r13d, %edx                   #  303   0x50d93  3      
  movl %eax, %ecx                    #  304   0x50d96  2      
  movl $0x32, %esi                   #  305   0x50d98  5      
  movl %ebx, %edi                    #  306   0x50d9d  2      
  nop                                #  307   0x50d9f  1      
  callq .d_make_comp                 #  308   0x50da0  5      
  movl %r12d, %edx                   #  309   0x50da5  3      
  movl %eax, %ecx                    #  310   0x50da8  2      
  movl $0x31, %esi                   #  311   0x50daa  5      
  jmpq .L_50da0                      #  312   0x50daf  5      
  xchgw %ax, %ax                     #  313   0x50db4  3      
  nop                                #  314   0x50db7  1      
.L_51000:                            #        0x50db8  0      
  movl %ebx, %edi                    #  315   0x50db8  2      
  nop                                #  316   0x50dba  1      
  nop                                #  317   0x50dbb  1      
  callq .d_expression                #  318   0x50dbc  5      
  movl %eax, %r13d                   #  319   0x50dc1  3      
  movl %r12d, %r12d                  #  320   0x50dc4  3      
  movl 0x4(%r15,%r12,1), %eax        #  321   0x50dc7  5      
  movl $0x1002284f, %edi             #  322   0x50dcc  5      
  movl $0x3, %ecx                    #  323   0x50dd1  5      
  movl %eax, %eax                    #  324   0x50dd6  2      
  movl (%r15,%rax,1), %esi           #  325   0x50dd8  4      
  nop                                #  326   0x50ddc  1      
  movl %esi, %esi                    #  327   0x50ddd  2      
  leaq (%r15,%rsi,1), %rsi           #  328   0x50ddf  4      
  movl %edi, %edi                    #  329   0x50de3  2      
  leaq (%r15,%rdi,1), %rdi           #  330   0x50de5  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  331   0x50de9  3      
  movl %esi, %esi                    #  332   0x50dec  2      
  movl %edi, %edi                    #  333   0x50dee  2      
  jne .L_510c0                       #  334   0x50df0  6      
  movl %ebx, %edi                    #  335   0x50df6  2      
  nop                                #  336   0x50df8  1      
  callq .d_exprlist                  #  337   0x50df9  5      
  movl %eax, %ecx                    #  338   0x50dfe  2      
  nop                                #  339   0x50e00  1      
  nop                                #  340   0x50e01  1      
.L_51080:                            #        0x50e02  0      
  movl %r13d, %edx                   #  341   0x50e02  3      
  movl $0x30, %esi                   #  342   0x50e05  5      
  movl %ebx, %edi                    #  343   0x50e0a  2      
  xchgw %ax, %ax                     #  344   0x50e0c  3      
  nop                                #  345   0x50e0f  1      
  callq .d_make_comp                 #  346   0x50e10  5      
  movl %r12d, %edx                   #  347   0x50e15  3      
  movl %eax, %ecx                    #  348   0x50e18  2      
  movl $0x2f, %esi                   #  349   0x50e1a  5      
  jmpq .L_50da0                      #  350   0x50e1f  5      
  xchgw %ax, %ax                     #  351   0x50e24  3      
  nop                                #  352   0x50e27  1      
.L_510c0:                            #        0x50e28  0      
  movl %ebx, %edi                    #  353   0x50e28  2      
  nop                                #  354   0x50e2a  1      
  nop                                #  355   0x50e2b  1      
  callq .d_expression                #  356   0x50e2c  5      
  movl %eax, %ecx                    #  357   0x50e31  2      
  jmpq .L_51080                      #  358   0x50e33  5      
  nop                                #  359   0x50e38  1      
  nop                                #  360   0x50e39  1      
.L_51100:                            #        0x50e3a  0      
  movl %ebx, %edi                    #  361   0x50e3a  2      
  nop                                #  362   0x50e3c  1      
  nop                                #  363   0x50e3d  1      
  callq .d_template_args             #  364   0x50e3e  5      
  movl %r13d, %edx                   #  365   0x50e43  3      
  movl %eax, %ecx                    #  366   0x50e46  2      
  movl $0x4, %esi                    #  367   0x50e48  5      
  movl %ebx, %edi                    #  368   0x50e4d  2      
  nop                                #  369   0x50e4f  1      
  callq .d_make_comp                 #  370   0x50e50  5      
  movl %r12d, %edx                   #  371   0x50e55  3      
  movl %eax, %ecx                    #  372   0x50e58  2      
  movl $0x1, %esi                    #  373   0x50e5a  5      
  jmpq .L_50da0                      #  374   0x50e5f  5      
  xchgw %ax, %ax                     #  375   0x50e64  3      
  nop                                #  376   0x50e67  1      
.L_51160:                            #        0x50e68  0      
  addl $0x1, %eax                    #  377   0x50e68  3      
  movl %ebx, %edi                    #  378   0x50e6b  2      
  movl %ebx, %ebx                    #  379   0x50e6d  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  380   0x50e6f  5      
  nop                                #  381   0x50e74  1      
  callq .d_exprlist                  #  382   0x50e75  5      
  movl %eax, %ecx                    #  383   0x50e7a  2      
  jmpq .L_50ca0                      #  384   0x50e7c  5      
  nop                                #  385   0x50e81  1      
  nop                                #  386   0x50e82  1      
                                                              
.size d_expression, .-d_expression

