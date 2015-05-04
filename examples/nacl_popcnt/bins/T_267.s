  .text
  .globl T_267
  .type T_267, @function

#! file-offset 0x60b00
#! rip-offset  0x60b00
#! capacity    3040 bytes

# Text                                #  Line  RIP      Bytes  
.T_267:                               #        0x60b00  0      
  movl %edi, %edi                     #  1     0x60b00  2      
  pushq %rbx                          #  2     0x60b02  2      
  movl %edi, %edi                     #  3     0x60b04  2      
  movl 0x4(%r15,%rdi,1), %edx         #  4     0x60b06  5      
  leal (%rsi,%rdi,1), %eax            #  5     0x60b0b  3      
  testb $0x1, %dl                     #  6     0x60b0e  3      
  jne .L_60cc0                        #  7     0x60b11  6      
  andl $0x3, %edx                     #  8     0x60b17  3      
  movl %edi, %edi                     #  9     0x60b1a  2      
  movl (%r15,%rdi,1), %ecx            #  10    0x60b1c  4      
  nop                                 #  11    0x60b20  1      
  je .L_611c0                         #  12    0x60b21  6      
  movl 0xffd5da3(%rip), %edx          #  13    0x60b27  6      
  subl %ecx, %edi                     #  14    0x60b2d  2      
  cmpl %edi, %edx                     #  15    0x60b2f  2      
  ja .L_61660                         #  16    0x60b31  6      
  addl %ecx, %esi                     #  17    0x60b37  2      
  cmpl %edi, 0xffd5d95(%rip)          #  18    0x60b39  6      
  xchgw %ax, %ax                      #  19    0x60b3f  3      
  je .L_61300                         #  20    0x60b42  6      
  shrl $0x3, %ecx                     #  21    0x60b48  3      
  cmpl $0x1f, %ecx                    #  22    0x60b4b  3      
  jbe .L_61160                        #  23    0x60b4e  6      
  movl %edi, %edi                     #  24    0x60b54  2      
  movl 0xc(%r15,%rdi,1), %ebx         #  25    0x60b56  5      
  movl %edi, %edi                     #  26    0x60b5b  2      
  movl 0x18(%r15,%rdi,1), %r9d        #  27    0x60b5d  5      
  cmpl %ebx, %edi                     #  28    0x60b62  2      
  je .L_61460                         #  29    0x60b64  6      
  movl %edi, %edi                     #  30    0x60b6a  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  31    0x60b6c  5      
  cmpl %ecx, %edx                     #  32    0x60b71  2      
  ja .L_61660                         #  33    0x60b73  6      
  movl %ecx, %ecx                     #  34    0x60b79  2      
  cmpl %edi, 0xc(%r15,%rcx,1)         #  35    0x60b7b  5      
  xchgw %ax, %ax                      #  36    0x60b80  3      
  jne .L_61660                        #  37    0x60b83  6      
  movl %ebx, %ebx                     #  38    0x60b89  2      
  cmpl %edi, 0x8(%r15,%rbx,1)         #  39    0x60b8b  5      
  jne .L_61660                        #  40    0x60b90  6      
  movl %ecx, %ecx                     #  41    0x60b96  2      
  movl %ebx, 0xc(%r15,%rcx,1)         #  42    0x60b98  5      
  nop                                 #  43    0x60b9d  1      
  movl %ebx, %ebx                     #  44    0x60b9e  2      
  movl %ecx, 0x8(%r15,%rbx,1)         #  45    0x60ba0  5      
  nop                                 #  46    0x60ba5  1      
  nop                                 #  47    0x60ba6  1      
.L_60bc0:                             #        0x60ba7  0      
  testq %r9, %r9                      #  48    0x60ba7  3      
  je .L_60ce0                         #  49    0x60baa  6      
  movl %edi, %edi                     #  50    0x60bb0  2      
  movl 0x1c(%r15,%rdi,1), %ecx        #  51    0x60bb2  5      
  leal 0x130(,%rcx,4), %r8d           #  52    0x60bb7  8      
  movslq %r8d, %r8                    #  53    0x60bbf  3      
  nop                                 #  54    0x60bc2  1      
  movl %r8d, %r8d                     #  55    0x60bc3  3      
  cmpl %edi, 0x100368c0(%r15,%r8,1)   #  56    0x60bc6  8      
  je .L_61580                         #  57    0x60bce  6      
  cmpl %r9d, %edx                     #  58    0x60bd4  3      
  ja .L_61660                         #  59    0x60bd7  6      
  nop                                 #  60    0x60bdd  1      
  movl %r9d, %r9d                     #  61    0x60bde  3      
  cmpl %edi, 0x10(%r15,%r9,1)         #  62    0x60be1  5      
  je .L_615e0                         #  63    0x60be6  6      
  movl %r9d, %r9d                     #  64    0x60bec  3      
  movl %ebx, 0x14(%r15,%r9,1)         #  65    0x60bef  5      
  nop                                 #  66    0x60bf4  1      
.L_60c20:                             #        0x60bf5  0      
  testq %rbx, %rbx                    #  67    0x60bf5  3      
  je .L_60ce0                         #  68    0x60bf8  6      
  nop                                 #  69    0x60bfe  1      
  nop                                 #  70    0x60bff  1      
.L_60c40:                             #        0x60c00  0      
  cmpl %edx, %ebx                     #  71    0x60c00  2      
  jb .L_61660                         #  72    0x60c02  6      
  movl %edi, %edi                     #  73    0x60c08  2      
  movl 0x10(%r15,%rdi,1), %ecx        #  74    0x60c0a  5      
  movl %ebx, %ebx                     #  75    0x60c0f  2      
  movl %r9d, 0x18(%r15,%rbx,1)        #  76    0x60c11  5      
  testq %rcx, %rcx                    #  77    0x60c16  3      
  je .L_60c80                         #  78    0x60c19  6      
  cmpl %edx, %ecx                     #  79    0x60c1f  2      
  nop                                 #  80    0x60c21  1      
  jb .L_61660                         #  81    0x60c22  6      
  movl %ebx, %ebx                     #  82    0x60c28  2      
  movl %ecx, 0x10(%r15,%rbx,1)        #  83    0x60c2a  5      
  movl %ecx, %ecx                     #  84    0x60c2f  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  85    0x60c31  5      
  nop                                 #  86    0x60c36  1      
.L_60c80:                             #        0x60c37  0      
  movl %edi, %edi                     #  87    0x60c37  2      
  movl 0x14(%r15,%rdi,1), %ecx        #  88    0x60c39  5      
  testq %rcx, %rcx                    #  89    0x60c3e  3      
  je .L_60ce0                         #  90    0x60c41  6      
  cmpl %edx, %ecx                     #  91    0x60c47  2      
  jb .L_61660                         #  92    0x60c49  6      
  movl %ebx, %ebx                     #  93    0x60c4f  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  94    0x60c51  5      
  nop                                 #  95    0x60c56  1      
  movl %ecx, %ecx                     #  96    0x60c57  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  97    0x60c59  5      
  jmpq .L_60ce0                       #  98    0x60c5e  5      
  nop                                 #  99    0x60c63  1      
  nop                                 #  100   0x60c64  1      
.L_60cc0:                             #        0x60c65  0      
  movl 0xffd5c65(%rip), %edx          #  101   0x60c65  6      
  nop                                 #  102   0x60c6b  1      
  nop                                 #  103   0x60c6c  1      
.L_60ce0:                             #        0x60c6d  0      
  cmpl %edx, %eax                     #  104   0x60c6d  2      
  jb .L_61660                         #  105   0x60c6f  6      
  movl %eax, %eax                     #  106   0x60c75  2      
  movl 0x4(%r15,%rax,1), %r8d         #  107   0x60c77  5      
  testb $0x2, %r8b                    #  108   0x60c7c  4      
  jne .L_60ec0                        #  109   0x60c80  6      
  cmpl %eax, 0xffd5c4c(%rip)          #  110   0x60c86  6      
  nop                                 #  111   0x60c8c  1      
  je .L_612a0                         #  112   0x60c8d  6      
  movl 0xffd5c3b(%rip), %ebx          #  113   0x60c93  6      
  cmpl %ebx, %eax                     #  114   0x60c99  2      
  je .L_61360                         #  115   0x60c9b  6      
  andl $0xfffffff8, %r8d              #  116   0x60ca1  7      
  movl %r8d, %ecx                     #  117   0x60ca8  3      
  shrl $0x3, %ecx                     #  118   0x60cab  3      
  xchgw %ax, %ax                      #  119   0x60cae  3      
  cmpl $0x1f, %ecx                    #  120   0x60cb1  3      
  jbe .L_61100                        #  121   0x60cb4  6      
  movl %eax, %eax                     #  122   0x60cba  2      
  movl 0xc(%r15,%rax,1), %r9d         #  123   0x60cbc  5      
  movl %eax, %eax                     #  124   0x60cc1  2      
  movl 0x18(%r15,%rax,1), %r11d       #  125   0x60cc3  5      
  cmpl %r9d, %eax                     #  126   0x60cc8  3      
  je .L_61380                         #  127   0x60ccb  6      
  movl %eax, %eax                     #  128   0x60cd1  2      
  movl 0x8(%r15,%rax,1), %ecx         #  129   0x60cd3  5      
  cmpl %edx, %ecx                     #  130   0x60cd8  2      
  jb .L_61660                         #  131   0x60cda  6      
  movl %ecx, %ecx                     #  132   0x60ce0  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  133   0x60ce2  5      
  jne .L_61660                        #  134   0x60ce7  6      
  nop                                 #  135   0x60ced  1      
  movl %r9d, %r9d                     #  136   0x60cee  3      
  cmpl %eax, 0x8(%r15,%r9,1)          #  137   0x60cf1  5      
  jne .L_61660                        #  138   0x60cf6  6      
  movl %ecx, %ecx                     #  139   0x60cfc  2      
  movl %r9d, 0xc(%r15,%rcx,1)         #  140   0x60cfe  5      
  movl %r9d, %r9d                     #  141   0x60d03  3      
  movl %ecx, 0x8(%r15,%r9,1)          #  142   0x60d06  5      
  nop                                 #  143   0x60d0b  1      
.L_60d80:                             #        0x60d0c  0      
  testq %r11, %r11                    #  144   0x60d0c  3      
  je .L_60e80                         #  145   0x60d0f  6      
  movl %eax, %eax                     #  146   0x60d15  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  147   0x60d17  5      
  leal 0x130(,%rcx,4), %r10d          #  148   0x60d1c  8      
  movslq %r10d, %r10                  #  149   0x60d24  3      
  nop                                 #  150   0x60d27  1      
  movl %r10d, %r10d                   #  151   0x60d28  3      
  cmpl %eax, 0x100368c0(%r15,%r10,1)  #  152   0x60d2b  8      
  je .L_61540                         #  153   0x60d33  6      
  cmpl %r11d, %edx                    #  154   0x60d39  3      
  ja .L_61660                         #  155   0x60d3c  6      
  nop                                 #  156   0x60d42  1      
  movl %r11d, %r11d                   #  157   0x60d43  3      
  cmpl %eax, 0x10(%r15,%r11,1)        #  158   0x60d46  5      
  je .L_615c0                         #  159   0x60d4b  6      
  movl %r11d, %r11d                   #  160   0x60d51  3      
  movl %r9d, 0x14(%r15,%r11,1)        #  161   0x60d54  5      
  nop                                 #  162   0x60d59  1      
.L_60de0:                             #        0x60d5a  0      
  testq %r9, %r9                      #  163   0x60d5a  3      
  je .L_60e80                         #  164   0x60d5d  6      
  nop                                 #  165   0x60d63  1      
  nop                                 #  166   0x60d64  1      
.L_60e00:                             #        0x60d65  0      
  cmpl %edx, %r9d                     #  167   0x60d65  3      
  jb .L_61660                         #  168   0x60d68  6      
  movl %eax, %eax                     #  169   0x60d6e  2      
  movl 0x10(%r15,%rax,1), %ecx        #  170   0x60d70  5      
  movl %r9d, %r9d                     #  171   0x60d75  3      
  movl %r11d, 0x18(%r15,%r9,1)        #  172   0x60d78  5      
  testq %rcx, %rcx                    #  173   0x60d7d  3      
  nop                                 #  174   0x60d80  1      
  je .L_60e40                         #  175   0x60d81  6      
  cmpl %edx, %ecx                     #  176   0x60d87  2      
  jb .L_61660                         #  177   0x60d89  6      
  movl %r9d, %r9d                     #  178   0x60d8f  3      
  movl %ecx, 0x10(%r15,%r9,1)         #  179   0x60d92  5      
  movl %ecx, %ecx                     #  180   0x60d97  2      
  movl %r9d, 0x18(%r15,%rcx,1)        #  181   0x60d99  5      
  nop                                 #  182   0x60d9e  1      
.L_60e40:                             #        0x60d9f  0      
  movl %eax, %eax                     #  183   0x60d9f  2      
  movl 0x14(%r15,%rax,1), %eax        #  184   0x60da1  5      
  testq %rax, %rax                    #  185   0x60da6  3      
  je .L_60e80                         #  186   0x60da9  6      
  cmpl %edx, %eax                     #  187   0x60daf  2      
  jb .L_61660                         #  188   0x60db1  6      
  movl %r9d, %r9d                     #  189   0x60db7  3      
  movl %eax, 0x14(%r15,%r9,1)         #  190   0x60dba  5      
  nop                                 #  191   0x60dbf  1      
  movl %eax, %eax                     #  192   0x60dc0  2      
  movl %r9d, 0x18(%r15,%rax,1)        #  193   0x60dc2  5      
  nop                                 #  194   0x60dc7  1      
  nop                                 #  195   0x60dc8  1      
.L_60e80:                             #        0x60dc9  0      
  addl %r8d, %esi                     #  196   0x60dc9  3      
  movl %esi, %eax                     #  197   0x60dcc  2      
  orl $0x1, %eax                      #  198   0x60dce  3      
  cmpl %ebx, %edi                     #  199   0x60dd1  2      
  movl %edi, %edi                     #  200   0x60dd3  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  201   0x60dd5  5      
  leal (%rsi,%rdi,1), %eax            #  202   0x60dda  3      
  movl %eax, %eax                     #  203   0x60ddd  2      
  movl %esi, (%r15,%rax,1)            #  204   0x60ddf  4      
  jne .L_60ee0                        #  205   0x60de3  6      
  nop                                 #  206   0x60de9  1      
  movl %esi, 0xffd5ad8(%rip)          #  207   0x60dea  6      
  jmpq .L_60f40                       #  208   0x60df0  5      
  nop                                 #  209   0x60df5  1      
  nop                                 #  210   0x60df6  1      
.L_60ec0:                             #        0x60df7  0      
  andl $0xfffffffe, %r8d              #  211   0x60df7  7      
  movl %eax, %eax                     #  212   0x60dfe  2      
  movl %r8d, 0x4(%r15,%rax,1)         #  213   0x60e00  5      
  movl %esi, %eax                     #  214   0x60e05  2      
  orl $0x1, %eax                      #  215   0x60e07  3      
  movl %edi, %edi                     #  216   0x60e0a  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  217   0x60e0c  5      
  leal (%rsi,%rdi,1), %eax            #  218   0x60e11  3      
  movl %eax, %eax                     #  219   0x60e14  2      
  movl %esi, (%r15,%rax,1)            #  220   0x60e16  4      
.L_60ee0:                             #        0x60e1a  0      
  movl %esi, %ecx                     #  221   0x60e1a  2      
  shrl $0x3, %ecx                     #  222   0x60e1c  3      
  cmpl $0x1f, %ecx                    #  223   0x60e1f  3      
  ja .L_60f60                         #  224   0x60e22  6      
  movl 0xffd5a92(%rip), %ebx          #  225   0x60e28  6      
  movl $0x1, %eax                     #  226   0x60e2e  5      
  leal 0x100368e8(,%rcx,8), %edx      #  227   0x60e33  7      
  shll %cl, %eax                      #  228   0x60e3a  2      
  testl %ebx, %eax                    #  229   0x60e3c  2      
  je .L_610e0                         #  230   0x60e3e  6      
  movl %edx, %edx                     #  231   0x60e44  2      
  movl 0x8(%r15,%rdx,1), %eax         #  232   0x60e46  5      
  cmpl %eax, 0xffd5a7f(%rip)          #  233   0x60e4b  6      
  ja .L_61660                         #  234   0x60e51  6      
  nop                                 #  235   0x60e57  1      
.L_60f20:                             #        0x60e58  0      
  movl %edx, %edx                     #  236   0x60e58  2      
  movl %edi, 0x8(%r15,%rdx,1)         #  237   0x60e5a  5      
  movl %eax, %eax                     #  238   0x60e5f  2      
  movl %edi, 0xc(%r15,%rax,1)         #  239   0x60e61  5      
  movl %edi, %edi                     #  240   0x60e66  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  241   0x60e68  5      
  movl %edi, %edi                     #  242   0x60e6d  2      
  movl %edx, 0xc(%r15,%rdi,1)         #  243   0x60e6f  5      
  nop                                 #  244   0x60e74  1      
.L_60f40:                             #        0x60e75  0      
  popq %rbx                           #  245   0x60e75  2      
  popq %r11                           #  246   0x60e77  3      
  andl $0xffffffe0, %r11d             #  247   0x60e7a  7      
  addq %r15, %r11                     #  248   0x60e81  3      
  jmpq %r11                           #  249   0x60e84  3      
  nop                                 #  250   0x60e87  1      
  nop                                 #  251   0x60e88  1      
.L_60f60:                             #        0x60e89  0      
  movl %esi, %ecx                     #  252   0x60e89  2      
  xorl %ebx, %ebx                     #  253   0x60e8b  2      
  movl $0x1, %eax                     #  254   0x60e8d  5      
  shrl $0x8, %ecx                     #  255   0x60e92  3      
  testl %ecx, %ecx                    #  256   0x60e95  2      
  je .L_60fc0                         #  257   0x60e97  6      
  cmpl $0xffff, %ecx                  #  258   0x60e9d  6      
  movl $0x80000000, %eax              #  259   0x60ea3  5      
  movb $0x1f, %bl                     #  260   0x60ea8  2      
  nop                                 #  261   0x60eaa  1      
  ja .L_60fc0                         #  262   0x60eab  6      
  bsrl %ecx, %ecx                     #  263   0x60eb1  3      
  movl $0x1f, %eax                    #  264   0x60eb4  5      
  movl %esi, %ebx                     #  265   0x60eb9  2      
  xorl $0x1f, %ecx                    #  266   0x60ebb  3      
  subl %ecx, %eax                     #  267   0x60ebe  2      
  leal 0x7(%rax), %ecx                #  268   0x60ec0  3      
  shrl %cl, %ebx                      #  269   0x60ec3  2      
  andl $0x1, %ebx                     #  270   0x60ec5  3      
  leal (%rbx,%rax,2), %ebx            #  271   0x60ec8  3      
  nop                                 #  272   0x60ecb  1      
  movl $0x1, %eax                     #  273   0x60ecc  5      
  movl %ebx, %ecx                     #  274   0x60ed1  2      
  shll %cl, %eax                      #  275   0x60ed3  2      
  nop                                 #  276   0x60ed5  1      
  nop                                 #  277   0x60ed6  1      
.L_60fc0:                             #        0x60ed7  0      
  movl %edi, %edi                     #  278   0x60ed7  2      
  movl %ebx, 0x1c(%r15,%rdi,1)        #  279   0x60ed9  5      
  movl 0xffd59e0(%rip), %ecx          #  280   0x60ede  6      
  movl %edi, %edi                     #  281   0x60ee4  2      
  movl $0x0, 0x14(%r15,%rdi,1)        #  282   0x60ee6  9      
  nop                                 #  283   0x60eef  1      
  movl %edi, %edi                     #  284   0x60ef0  2      
  movl $0x0, 0x10(%r15,%rdi,1)        #  285   0x60ef2  9      
  testl %ecx, %eax                    #  286   0x60efb  2      
  je .L_61200                         #  287   0x60efd  6      
  leal 0x130(,%rbx,4), %eax           #  288   0x60f03  7      
  xorl %ecx, %ecx                     #  289   0x60f0a  2      
  cmpl $0x1f, %ebx                    #  290   0x60f0c  3      
  nop                                 #  291   0x60f0f  1      
  cltq                                #  292   0x60f10  2      
  movl %eax, %eax                     #  293   0x60f12  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  294   0x60f14  8      
  je .L_61020                         #  295   0x60f1c  6      
  shrl $0x1, %ebx                     #  296   0x60f22  2      
  movb $0x19, %cl                     #  297   0x60f24  2      
  subl %ebx, %ecx                     #  298   0x60f26  2      
  nop                                 #  299   0x60f28  1      
.L_61020:                             #        0x60f29  0      
  movl %esi, %ebx                     #  300   0x60f29  2      
  shll %cl, %ebx                      #  301   0x60f2b  2      
  movl %ebx, %ecx                     #  302   0x60f2d  2      
  jmpq .L_61080                       #  303   0x60f2f  5      
  nop                                 #  304   0x60f34  1      
  nop                                 #  305   0x60f35  1      
.L_61040:                             #        0x60f36  0      
  movl %ecx, %ebx                     #  306   0x60f36  2      
  shrl $0x1f, %ebx                    #  307   0x60f38  3      
  addl $0x4, %ebx                     #  308   0x60f3b  3      
  shll $0x2, %ebx                     #  309   0x60f3e  3      
  leal (%rbx,%rax,1), %r9d            #  310   0x60f41  4      
  movslq %ebx, %rbx                   #  311   0x60f45  3      
  leaq (%rax,%rbx,1), %rbx            #  312   0x60f48  4      
  movl %ebx, %ebx                     #  313   0x60f4c  2      
  movl (%r15,%rbx,1), %r8d            #  314   0x60f4e  4      
  testq %r8, %r8                      #  315   0x60f52  3      
  nop                                 #  316   0x60f55  1      
  je .L_61260                         #  317   0x60f56  6      
  addl %ecx, %ecx                     #  318   0x60f5c  2      
  movq %r8, %rax                      #  319   0x60f5e  3      
  nop                                 #  320   0x60f61  1      
  nop                                 #  321   0x60f62  1      
.L_61080:                             #        0x60f63  0      
  movl %eax, %eax                     #  322   0x60f63  2      
  movl 0x4(%r15,%rax,1), %ebx         #  323   0x60f65  5      
  andl $0xfffffff8, %ebx              #  324   0x60f6a  6      
  cmpl %ebx, %esi                     #  325   0x60f70  2      
  jne .L_61040                        #  326   0x60f72  6      
  cmpl %eax, %edx                     #  327   0x60f78  2      
  movl %eax, %eax                     #  328   0x60f7a  2      
  movl 0x8(%r15,%rax,1), %ecx         #  329   0x60f7c  5      
  ja .L_61660                         #  330   0x60f81  6      
  cmpl %ecx, %edx                     #  331   0x60f87  2      
  nop                                 #  332   0x60f89  1      
  ja .L_61660                         #  333   0x60f8a  6      
  movl %ecx, %ecx                     #  334   0x60f90  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  335   0x60f92  5      
  movl %eax, %eax                     #  336   0x60f97  2      
  movl %edi, 0x8(%r15,%rax,1)         #  337   0x60f99  5      
  movl %edi, %edi                     #  338   0x60f9e  2      
  movl %eax, 0xc(%r15,%rdi,1)         #  339   0x60fa0  5      
  nop                                 #  340   0x60fa5  1      
  movl %edi, %edi                     #  341   0x60fa6  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  342   0x60fa8  5      
  movl %edi, %edi                     #  343   0x60fad  2      
  movl $0x0, 0x18(%r15,%rdi,1)        #  344   0x60faf  9      
  popq %rbx                           #  345   0x60fb8  2      
  popq %r11                           #  346   0x60fba  3      
  andl $0xffffffe0, %r11d             #  347   0x60fbd  7      
  addq %r15, %r11                     #  348   0x60fc4  3      
  jmpq %r11                           #  349   0x60fc7  3      
  nop                                 #  350   0x60fca  1      
.L_610e0:                             #        0x60fcb  0      
  orl %ebx, %eax                      #  351   0x60fcb  2      
  movl %eax, 0xffd58ed(%rip)          #  352   0x60fcd  6      
  movq %rdx, %rax                     #  353   0x60fd3  3      
  jmpq .L_60f20                       #  354   0x60fd6  5      
  nop                                 #  355   0x60fdb  1      
  nop                                 #  356   0x60fdc  1      
.L_61100:                             #        0x60fdd  0      
  movl %eax, %eax                     #  357   0x60fdd  2      
  movl 0x8(%r15,%rax,1), %r9d         #  358   0x60fdf  5      
  leal 0x100368e8(,%rcx,8), %r11d     #  359   0x60fe4  8      
  movl %eax, %eax                     #  360   0x60fec  2      
  movl 0xc(%r15,%rax,1), %r10d        #  361   0x60fee  5      
  cmpl %r11d, %r9d                    #  362   0x60ff3  3      
  jne .L_616c0                        #  363   0x60ff6  6      
  nop                                 #  364   0x60ffc  1      
.L_61120:                             #        0x60ffd  0      
  cmpl %r10d, %r9d                    #  365   0x60ffd  3      
  je .L_61420                         #  366   0x61000  6      
  cmpl %r11d, %r10d                   #  367   0x61006  3      
  jne .L_61640                        #  368   0x61009  6      
  nop                                 #  369   0x6100f  1      
.L_61140:                             #        0x61010  0      
  movl %r9d, %r9d                     #  370   0x61010  3      
  movl %r10d, 0xc(%r15,%r9,1)         #  371   0x61013  5      
  movl %r10d, %r10d                   #  372   0x61018  3      
  movl %r9d, 0x8(%r15,%r10,1)         #  373   0x6101b  5      
  jmpq .L_60e80                       #  374   0x61020  5      
  nop                                 #  375   0x61025  1      
.L_61160:                             #        0x61026  0      
  movl %edi, %edi                     #  376   0x61026  2      
  movl 0x8(%r15,%rdi,1), %ebx         #  377   0x61028  5      
  leal 0x100368e8(,%rcx,8), %r9d      #  378   0x6102d  8      
  movl %edi, %edi                     #  379   0x61035  2      
  movl 0xc(%r15,%rdi,1), %r8d         #  380   0x61037  5      
  cmpl %r9d, %ebx                     #  381   0x6103c  3      
  jne .L_616a0                        #  382   0x6103f  6      
  nop                                 #  383   0x61045  1      
.L_61180:                             #        0x61046  0      
  cmpl %r8d, %ebx                     #  384   0x61046  3      
  je .L_61500                         #  385   0x61049  6      
  cmpl %r9d, %r8d                     #  386   0x6104f  3      
  jne .L_61680                        #  387   0x61052  6      
  nop                                 #  388   0x61058  1      
.L_611a0:                             #        0x61059  0      
  movl %ebx, %ebx                     #  389   0x61059  2      
  movl %r8d, 0xc(%r15,%rbx,1)         #  390   0x6105b  5      
  movl %r8d, %r8d                     #  391   0x61060  3      
  movl %ebx, 0x8(%r15,%r8,1)          #  392   0x61063  5      
  jmpq .L_60ce0                       #  393   0x61068  5      
  nop                                 #  394   0x6106d  1      
.L_611c0:                             #        0x6106e  0      
  leal 0x10(%rcx,%rsi,1), %ebx        #  395   0x6106e  4      
  subl %ecx, %edi                     #  396   0x61072  2      
  movl %ebx, %esi                     #  397   0x61074  2      
  nop                                 #  398   0x61076  1      
  nop                                 #  399   0x61077  1      
  callq .munmap                       #  400   0x61078  5      
  testl %eax, %eax                    #  401   0x6107d  2      
  jne .L_60f40                        #  402   0x6107f  6      
  subl %ebx, 0xffd59e5(%rip)          #  403   0x61085  6      
  jmpq .L_60f40                       #  404   0x6108b  5      
  nop                                 #  405   0x61090  1      
.L_61200:                             #        0x61091  0      
  leal 0x130(,%rbx,4), %ebx           #  406   0x61091  7      
  orl %ecx, %eax                      #  407   0x61098  2      
  movl %eax, 0xffd5824(%rip)          #  408   0x6109a  6      
  movslq %ebx, %rax                   #  409   0x610a0  3      
  addl $0x100368c0, %ebx              #  410   0x610a3  6      
  nop                                 #  411   0x610a9  1      
  movl %eax, %eax                     #  412   0x610aa  2      
  movl %edi, 0x100368c0(%r15,%rax,1)  #  413   0x610ac  8      
  movl %edi, %edi                     #  414   0x610b4  2      
  movl %ebx, 0x18(%r15,%rdi,1)        #  415   0x610b6  5      
  movl %edi, %edi                     #  416   0x610bb  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  417   0x610bd  5      
  movl %edi, %edi                     #  418   0x610c2  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  419   0x610c4  5      
  popq %rbx                           #  420   0x610c9  2      
  popq %r11                           #  421   0x610cb  3      
  andl $0xffffffe0, %r11d             #  422   0x610ce  7      
  addq %r15, %r11                     #  423   0x610d5  3      
  jmpq %r11                           #  424   0x610d8  3      
  nop                                 #  425   0x610db  1      
  nop                                 #  426   0x610dc  1      
.L_61260:                             #        0x610dd  0      
  cmpl %r9d, 0xffd57ec(%rip)          #  427   0x610dd  7      
  ja .L_61660                         #  428   0x610e4  6      
  movl %ebx, %ebx                     #  429   0x610ea  2      
  movl %edi, (%r15,%rbx,1)            #  430   0x610ec  4      
  movl %edi, %edi                     #  431   0x610f0  2      
  movl %eax, 0x18(%r15,%rdi,1)        #  432   0x610f2  5      
  nop                                 #  433   0x610f7  1      
  movl %edi, %edi                     #  434   0x610f8  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  435   0x610fa  5      
  movl %edi, %edi                     #  436   0x610ff  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  437   0x61101  5      
  popq %rbx                           #  438   0x61106  2      
  popq %r11                           #  439   0x61108  3      
  andl $0xffffffe0, %r11d             #  440   0x6110b  7      
  addq %r15, %r11                     #  441   0x61112  3      
  jmpq %r11                           #  442   0x61115  3      
  nop                                 #  443   0x61118  1      
.L_612a0:                             #        0x61119  0      
  addl 0xffd57ad(%rip), %esi          #  444   0x61119  6      
  movl %edi, 0xffd57b3(%rip)          #  445   0x6111f  6      
  movl %esi, 0xffd57a1(%rip)          #  446   0x61125  6      
  orl $0x1, %esi                      #  447   0x6112b  3      
  cmpl %edi, 0xffd57a0(%rip)          #  448   0x6112e  6      
  nop                                 #  449   0x61134  1      
  movl %edi, %edi                     #  450   0x61135  2      
  movl %esi, 0x4(%r15,%rdi,1)         #  451   0x61137  5      
  jne .L_60f40                        #  452   0x6113c  6      
  movl $0x0, 0xffd5788(%rip)          #  453   0x61142  10     
  nop                                 #  454   0x6114c  1      
  movl $0x0, 0xffd5771(%rip)          #  455   0x6114d  10     
  jmpq .L_60f40                       #  456   0x61157  5      
  xchgw %ax, %ax                      #  457   0x6115c  3      
  nop                                 #  458   0x6115f  1      
.L_61300:                             #        0x61160  0      
  movl %eax, %eax                     #  459   0x61160  2      
  movl 0x4(%r15,%rax,1), %ecx         #  460   0x61162  5      
  movl %ecx, %ebx                     #  461   0x61167  2      
  andl $0x3, %ebx                     #  462   0x61169  3      
  cmpl $0x3, %ebx                     #  463   0x6116c  3      
  jne .L_60ce0                        #  464   0x6116f  6      
  andl $0xfffffffe, %ecx              #  465   0x61175  6      
  movl %esi, 0xffd5747(%rip)          #  466   0x6117b  6      
  xchgw %ax, %ax                      #  467   0x61181  3      
  movl %eax, %eax                     #  468   0x61184  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  469   0x61186  5      
  nop                                 #  470   0x6118b  1      
  nop                                 #  471   0x6118c  1      
.L_61340:                             #        0x6118d  0      
  movl %esi, %eax                     #  472   0x6118d  2      
  orl $0x1, %eax                      #  473   0x6118f  3      
  movl %edi, %edi                     #  474   0x61192  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  475   0x61194  5      
  leal (%rsi,%rdi,1), %edi            #  476   0x61199  3      
  movl %edi, %edi                     #  477   0x6119c  2      
  movl %esi, (%r15,%rdi,1)            #  478   0x6119e  4      
  jmpq .L_60f40                       #  479   0x611a2  5      
  nop                                 #  480   0x611a7  1      
.L_61360:                             #        0x611a8  0      
  addl 0xffd571a(%rip), %esi          #  481   0x611a8  6      
  movl %edi, 0xffd5720(%rip)          #  482   0x611ae  6      
  movl %esi, 0xffd570e(%rip)          #  483   0x611b4  6      
  jmpq .L_61340                       #  484   0x611ba  5      
  nop                                 #  485   0x611bf  1      
.L_61380:                             #        0x611c0  0      
  movl %eax, %eax                     #  486   0x611c0  2      
  movl 0x14(%r15,%rax,1), %r9d        #  487   0x611c2  5      
  leal 0x14(%rax), %r10d              #  488   0x611c7  4      
  testq %r9, %r9                      #  489   0x611cb  3      
  jne .L_613e0                        #  490   0x611ce  6      
  jmpq .L_61600                       #  491   0x611d4  5      
  nop                                 #  492   0x611d9  1      
.L_613a0:                             #        0x611da  0      
  leal 0x14(%r9), %r10d               #  493   0x611da  4      
  nop                                 #  494   0x611de  1      
  nop                                 #  495   0x611df  1      
.L_613c0:                             #        0x611e0  0      
  movq %rcx, %r9                      #  496   0x611e0  3      
  nop                                 #  497   0x611e3  1      
  nop                                 #  498   0x611e4  1      
.L_613e0:                             #        0x611e5  0      
  movl %r9d, %r9d                     #  499   0x611e5  3      
  movl 0x14(%r15,%r9,1), %ecx         #  500   0x611e8  5      
  testq %rcx, %rcx                    #  501   0x611ed  3      
  jne .L_613a0                        #  502   0x611f0  6      
  movl %r9d, %r9d                     #  503   0x611f6  3      
  movl 0x10(%r15,%r9,1), %ecx         #  504   0x611f9  5      
  testq %rcx, %rcx                    #  505   0x611fe  3      
  je .L_61440                         #  506   0x61201  6      
  leal 0x10(%r9), %r10d               #  507   0x61207  4      
  xchgw %ax, %ax                      #  508   0x6120b  3      
  jmpq .L_613c0                       #  509   0x6120e  5      
  nop                                 #  510   0x61213  1      
  nop                                 #  511   0x61214  1      
.L_61420:                             #        0x61215  0      
  movl $0xfffffffe, %eax              #  512   0x61215  5      
  roll %cl, %eax                      #  513   0x6121a  2      
  andl %eax, 0xffd569e(%rip)          #  514   0x6121c  6      
  jmpq .L_60e80                       #  515   0x61222  5      
  nop                                 #  516   0x61227  1      
.L_61440:                             #        0x61228  0      
  cmpl %edx, %r10d                    #  517   0x61228  3      
  jb .L_61660                         #  518   0x6122b  6      
  movl %r10d, %r10d                   #  519   0x61231  3      
  movl $0x0, (%r15,%r10,1)            #  520   0x61234  8      
  jmpq .L_60d80                       #  521   0x6123c  5      
  nop                                 #  522   0x61241  1      
.L_61460:                             #        0x61242  0      
  movl %edi, %edi                     #  523   0x61242  2      
  movl 0x14(%r15,%rdi,1), %ebx        #  524   0x61244  5      
  leal 0x14(%rdi), %r8d               #  525   0x61249  4      
  testq %rbx, %rbx                    #  526   0x6124d  3      
  jne .L_614c0                        #  527   0x61250  6      
  jmpq .L_61620                       #  528   0x61256  5      
  nop                                 #  529   0x6125b  1      
.L_61480:                             #        0x6125c  0      
  leal 0x14(%rbx), %r8d               #  530   0x6125c  4      
  nop                                 #  531   0x61260  1      
  nop                                 #  532   0x61261  1      
.L_614a0:                             #        0x61262  0      
  movq %rcx, %rbx                     #  533   0x61262  3      
  nop                                 #  534   0x61265  1      
  nop                                 #  535   0x61266  1      
.L_614c0:                             #        0x61267  0      
  movl %ebx, %ebx                     #  536   0x61267  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  537   0x61269  5      
  testq %rcx, %rcx                    #  538   0x6126e  3      
  jne .L_61480                        #  539   0x61271  6      
  movl %ebx, %ebx                     #  540   0x61277  2      
  movl 0x10(%r15,%rbx,1), %ecx        #  541   0x61279  5      
  testq %rcx, %rcx                    #  542   0x6127e  3      
  je .L_61520                         #  543   0x61281  6      
  leal 0x10(%rbx), %r8d               #  544   0x61287  4      
  nop                                 #  545   0x6128b  1      
  jmpq .L_614a0                       #  546   0x6128c  5      
  nop                                 #  547   0x61291  1      
  nop                                 #  548   0x61292  1      
.L_61500:                             #        0x61293  0      
  movl $0xfffffffe, %ebx              #  549   0x61293  5      
  roll %cl, %ebx                      #  550   0x61298  2      
  andl %ebx, 0xffd5620(%rip)          #  551   0x6129a  6      
  jmpq .L_60ce0                       #  552   0x612a0  5      
  nop                                 #  553   0x612a5  1      
.L_61520:                             #        0x612a6  0      
  cmpl %r8d, %edx                     #  554   0x612a6  3      
  ja .L_61660                         #  555   0x612a9  6      
  movl %r8d, %r8d                     #  556   0x612af  3      
  movl $0x0, (%r15,%r8,1)             #  557   0x612b2  8      
  jmpq .L_60bc0                       #  558   0x612ba  5      
  nop                                 #  559   0x612bf  1      
.L_61540:                             #        0x612c0  0      
  testq %r9, %r9                      #  560   0x612c0  3      
  movl %r10d, %r10d                   #  561   0x612c3  3      
  movl %r9d, 0x100368c0(%r15,%r10,1)  #  562   0x612c6  8      
  jne .L_60e00                        #  563   0x612ce  6      
  movl $0xfffffffe, %eax              #  564   0x612d4  5      
  roll %cl, %eax                      #  565   0x612d9  2      
  nop                                 #  566   0x612db  1      
  andl %eax, 0xffd55e2(%rip)          #  567   0x612dc  6      
  jmpq .L_60e80                       #  568   0x612e2  5      
  nop                                 #  569   0x612e7  1      
  nop                                 #  570   0x612e8  1      
.L_61580:                             #        0x612e9  0      
  testq %rbx, %rbx                    #  571   0x612e9  3      
  movl %r8d, %r8d                     #  572   0x612ec  3      
  movl %ebx, 0x100368c0(%r15,%r8,1)   #  573   0x612ef  8      
  jne .L_60c40                        #  574   0x612f7  6      
  movl $0xfffffffe, %ebx              #  575   0x612fd  5      
  roll %cl, %ebx                      #  576   0x61302  2      
  nop                                 #  577   0x61304  1      
  andl %ebx, 0xffd55b9(%rip)          #  578   0x61305  6      
  jmpq .L_60ce0                       #  579   0x6130b  5      
  nop                                 #  580   0x61310  1      
  nop                                 #  581   0x61311  1      
.L_615c0:                             #        0x61312  0      
  movl %r11d, %r11d                   #  582   0x61312  3      
  movl %r9d, 0x10(%r15,%r11,1)        #  583   0x61315  5      
  jmpq .L_60de0                       #  584   0x6131a  5      
  nop                                 #  585   0x6131f  1      
  nop                                 #  586   0x61320  1      
.L_615e0:                             #        0x61321  0      
  movl %r9d, %r9d                     #  587   0x61321  3      
  movl %ebx, 0x10(%r15,%r9,1)         #  588   0x61324  5      
  jmpq .L_60c20                       #  589   0x61329  5      
  nop                                 #  590   0x6132e  1      
  nop                                 #  591   0x6132f  1      
.L_61600:                             #        0x61330  0      
  movl %eax, %eax                     #  592   0x61330  2      
  movl 0x10(%r15,%rax,1), %r9d        #  593   0x61332  5      
  leal 0x10(%rax), %r10d              #  594   0x61337  4      
  testq %r9, %r9                      #  595   0x6133b  3      
  jne .L_613e0                        #  596   0x6133e  6      
  jmpq .L_60d80                       #  597   0x61344  5      
  nop                                 #  598   0x61349  1      
.L_61620:                             #        0x6134a  0      
  movl %edi, %edi                     #  599   0x6134a  2      
  movl 0x10(%r15,%rdi,1), %ebx        #  600   0x6134c  5      
  leal 0x10(%rdi), %r8d               #  601   0x61351  4      
  testq %rbx, %rbx                    #  602   0x61355  3      
  jne .L_614c0                        #  603   0x61358  6      
  jmpq .L_60bc0                       #  604   0x6135e  5      
  nop                                 #  605   0x61363  1      
.L_61640:                             #        0x61364  0      
  cmpl %edx, %r10d                    #  606   0x61364  3      
  jb .L_61660                         #  607   0x61367  6      
  movl %r10d, %r10d                   #  608   0x6136d  3      
  cmpl %eax, 0x8(%r15,%r10,1)         #  609   0x61370  5      
  je .L_61140                         #  610   0x61375  6      
  nop                                 #  611   0x6137b  1      
.L_61660:                             #        0x6137c  0      
  nop                                 #  612   0x6137c  1      
  nop                                 #  613   0x6137d  1      
  callq .abort                        #  614   0x6137e  5      
.L_61680:                             #        0x61383  0      
  cmpl %r8d, %edx                     #  615   0x61383  3      
  ja .L_61660                         #  616   0x61386  6      
  movl %r8d, %r8d                     #  617   0x6138c  3      
  cmpl %edi, 0x8(%r15,%r8,1)          #  618   0x6138f  5      
  jne .L_61660                        #  619   0x61394  6      
  jmpq .L_611a0                       #  620   0x6139a  5      
  nop                                 #  621   0x6139f  1      
.L_616a0:                             #        0x613a0  0      
  cmpl %ebx, %edx                     #  622   0x613a0  2      
  ja .L_61660                         #  623   0x613a2  6      
  movl %ebx, %ebx                     #  624   0x613a8  2      
  cmpl %edi, 0xc(%r15,%rbx,1)         #  625   0x613aa  5      
  jne .L_61660                        #  626   0x613af  6      
  jmpq .L_61180                       #  627   0x613b5  5      
  nop                                 #  628   0x613ba  1      
.L_616c0:                             #        0x613bb  0      
  cmpl %edx, %r9d                     #  629   0x613bb  3      
  jb .L_61660                         #  630   0x613be  6      
  movl %r9d, %r9d                     #  631   0x613c4  3      
  cmpl %eax, 0xc(%r15,%r9,1)          #  632   0x613c7  5      
  jne .L_61660                        #  633   0x613cc  6      
  jmpq .L_61120                       #  634   0x613d2  5      
  nop                                 #  635   0x613d7  1      
                                                               
.size T_267, .-T_267

