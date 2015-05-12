  .text
  .globl T_267
  .type T_267, @function

#! file-offset 0x60a80
#! rip-offset  0x60a80
#! capacity    3040 bytes

# Text                                #  Line  RIP      Bytes  
.T_267:                               #        0x60a80  0      
  movl %edi, %edi                     #  1     0x60a80  2      
  pushq %rbx                          #  2     0x60a82  2      
  movl %edi, %edi                     #  3     0x60a84  2      
  movl 0x4(%r15,%rdi,1), %edx         #  4     0x60a86  5      
  leal (%rsi,%rdi,1), %eax            #  5     0x60a8b  3      
  testb $0x1, %dl                     #  6     0x60a8e  3      
  jne .L_60c40                        #  7     0x60a91  6      
  andl $0x3, %edx                     #  8     0x60a97  3      
  movl %edi, %edi                     #  9     0x60a9a  2      
  movl (%r15,%rdi,1), %ecx            #  10    0x60a9c  4      
  nop                                 #  11    0x60aa0  1      
  je .L_61140                         #  12    0x60aa1  6      
  movl 0xffd5e23(%rip), %edx          #  13    0x60aa7  6      
  subl %ecx, %edi                     #  14    0x60aad  2      
  cmpl %edi, %edx                     #  15    0x60aaf  2      
  ja .L_615e0                         #  16    0x60ab1  6      
  addl %ecx, %esi                     #  17    0x60ab7  2      
  cmpl %edi, 0xffd5e15(%rip)          #  18    0x60ab9  6      
  xchgw %ax, %ax                      #  19    0x60abf  3      
  je .L_61280                         #  20    0x60ac2  6      
  shrl $0x3, %ecx                     #  21    0x60ac8  3      
  cmpl $0x1f, %ecx                    #  22    0x60acb  3      
  jbe .L_610e0                        #  23    0x60ace  6      
  movl %edi, %edi                     #  24    0x60ad4  2      
  movl 0xc(%r15,%rdi,1), %ebx         #  25    0x60ad6  5      
  movl %edi, %edi                     #  26    0x60adb  2      
  movl 0x18(%r15,%rdi,1), %r9d        #  27    0x60add  5      
  cmpl %ebx, %edi                     #  28    0x60ae2  2      
  je .L_613e0                         #  29    0x60ae4  6      
  movl %edi, %edi                     #  30    0x60aea  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  31    0x60aec  5      
  cmpl %ecx, %edx                     #  32    0x60af1  2      
  ja .L_615e0                         #  33    0x60af3  6      
  movl %ecx, %ecx                     #  34    0x60af9  2      
  cmpl %edi, 0xc(%r15,%rcx,1)         #  35    0x60afb  5      
  xchgw %ax, %ax                      #  36    0x60b00  3      
  jne .L_615e0                        #  37    0x60b03  6      
  movl %ebx, %ebx                     #  38    0x60b09  2      
  cmpl %edi, 0x8(%r15,%rbx,1)         #  39    0x60b0b  5      
  jne .L_615e0                        #  40    0x60b10  6      
  movl %ecx, %ecx                     #  41    0x60b16  2      
  movl %ebx, 0xc(%r15,%rcx,1)         #  42    0x60b18  5      
  nop                                 #  43    0x60b1d  1      
  movl %ebx, %ebx                     #  44    0x60b1e  2      
  movl %ecx, 0x8(%r15,%rbx,1)         #  45    0x60b20  5      
  nop                                 #  46    0x60b25  1      
  nop                                 #  47    0x60b26  1      
.L_60b40:                             #        0x60b27  0      
  testq %r9, %r9                      #  48    0x60b27  3      
  je .L_60c60                         #  49    0x60b2a  6      
  movl %edi, %edi                     #  50    0x60b30  2      
  movl 0x1c(%r15,%rdi,1), %ecx        #  51    0x60b32  5      
  leal 0x130(,%rcx,4), %r8d           #  52    0x60b37  8      
  movslq %r8d, %r8                    #  53    0x60b3f  3      
  nop                                 #  54    0x60b42  1      
  movl %r8d, %r8d                     #  55    0x60b43  3      
  cmpl %edi, 0x100368c0(%r15,%r8,1)   #  56    0x60b46  8      
  je .L_61500                         #  57    0x60b4e  6      
  cmpl %r9d, %edx                     #  58    0x60b54  3      
  ja .L_615e0                         #  59    0x60b57  6      
  nop                                 #  60    0x60b5d  1      
  movl %r9d, %r9d                     #  61    0x60b5e  3      
  cmpl %edi, 0x10(%r15,%r9,1)         #  62    0x60b61  5      
  je .L_61560                         #  63    0x60b66  6      
  movl %r9d, %r9d                     #  64    0x60b6c  3      
  movl %ebx, 0x14(%r15,%r9,1)         #  65    0x60b6f  5      
  nop                                 #  66    0x60b74  1      
.L_60ba0:                             #        0x60b75  0      
  testq %rbx, %rbx                    #  67    0x60b75  3      
  je .L_60c60                         #  68    0x60b78  6      
  nop                                 #  69    0x60b7e  1      
  nop                                 #  70    0x60b7f  1      
.L_60bc0:                             #        0x60b80  0      
  cmpl %edx, %ebx                     #  71    0x60b80  2      
  jb .L_615e0                         #  72    0x60b82  6      
  movl %edi, %edi                     #  73    0x60b88  2      
  movl 0x10(%r15,%rdi,1), %ecx        #  74    0x60b8a  5      
  movl %ebx, %ebx                     #  75    0x60b8f  2      
  movl %r9d, 0x18(%r15,%rbx,1)        #  76    0x60b91  5      
  testq %rcx, %rcx                    #  77    0x60b96  3      
  je .L_60c00                         #  78    0x60b99  6      
  cmpl %edx, %ecx                     #  79    0x60b9f  2      
  nop                                 #  80    0x60ba1  1      
  jb .L_615e0                         #  81    0x60ba2  6      
  movl %ebx, %ebx                     #  82    0x60ba8  2      
  movl %ecx, 0x10(%r15,%rbx,1)        #  83    0x60baa  5      
  movl %ecx, %ecx                     #  84    0x60baf  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  85    0x60bb1  5      
  nop                                 #  86    0x60bb6  1      
.L_60c00:                             #        0x60bb7  0      
  movl %edi, %edi                     #  87    0x60bb7  2      
  movl 0x14(%r15,%rdi,1), %ecx        #  88    0x60bb9  5      
  testq %rcx, %rcx                    #  89    0x60bbe  3      
  je .L_60c60                         #  90    0x60bc1  6      
  cmpl %edx, %ecx                     #  91    0x60bc7  2      
  jb .L_615e0                         #  92    0x60bc9  6      
  movl %ebx, %ebx                     #  93    0x60bcf  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  94    0x60bd1  5      
  nop                                 #  95    0x60bd6  1      
  movl %ecx, %ecx                     #  96    0x60bd7  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  97    0x60bd9  5      
  jmpq .L_60c60                       #  98    0x60bde  5      
  nop                                 #  99    0x60be3  1      
  nop                                 #  100   0x60be4  1      
.L_60c40:                             #        0x60be5  0      
  movl 0xffd5ce5(%rip), %edx          #  101   0x60be5  6      
  nop                                 #  102   0x60beb  1      
  nop                                 #  103   0x60bec  1      
.L_60c60:                             #        0x60bed  0      
  cmpl %edx, %eax                     #  104   0x60bed  2      
  jb .L_615e0                         #  105   0x60bef  6      
  movl %eax, %eax                     #  106   0x60bf5  2      
  movl 0x4(%r15,%rax,1), %r8d         #  107   0x60bf7  5      
  testb $0x2, %r8b                    #  108   0x60bfc  4      
  jne .L_60e40                        #  109   0x60c00  6      
  cmpl %eax, 0xffd5ccc(%rip)          #  110   0x60c06  6      
  nop                                 #  111   0x60c0c  1      
  je .L_61220                         #  112   0x60c0d  6      
  movl 0xffd5cbb(%rip), %ebx          #  113   0x60c13  6      
  cmpl %ebx, %eax                     #  114   0x60c19  2      
  je .L_612e0                         #  115   0x60c1b  6      
  andl $0xfffffff8, %r8d              #  116   0x60c21  7      
  movl %r8d, %ecx                     #  117   0x60c28  3      
  shrl $0x3, %ecx                     #  118   0x60c2b  3      
  xchgw %ax, %ax                      #  119   0x60c2e  3      
  cmpl $0x1f, %ecx                    #  120   0x60c31  3      
  jbe .L_61080                        #  121   0x60c34  6      
  movl %eax, %eax                     #  122   0x60c3a  2      
  movl 0xc(%r15,%rax,1), %r9d         #  123   0x60c3c  5      
  movl %eax, %eax                     #  124   0x60c41  2      
  movl 0x18(%r15,%rax,1), %r11d       #  125   0x60c43  5      
  cmpl %r9d, %eax                     #  126   0x60c48  3      
  je .L_61300                         #  127   0x60c4b  6      
  movl %eax, %eax                     #  128   0x60c51  2      
  movl 0x8(%r15,%rax,1), %ecx         #  129   0x60c53  5      
  cmpl %edx, %ecx                     #  130   0x60c58  2      
  jb .L_615e0                         #  131   0x60c5a  6      
  movl %ecx, %ecx                     #  132   0x60c60  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  133   0x60c62  5      
  jne .L_615e0                        #  134   0x60c67  6      
  nop                                 #  135   0x60c6d  1      
  movl %r9d, %r9d                     #  136   0x60c6e  3      
  cmpl %eax, 0x8(%r15,%r9,1)          #  137   0x60c71  5      
  jne .L_615e0                        #  138   0x60c76  6      
  movl %ecx, %ecx                     #  139   0x60c7c  2      
  movl %r9d, 0xc(%r15,%rcx,1)         #  140   0x60c7e  5      
  movl %r9d, %r9d                     #  141   0x60c83  3      
  movl %ecx, 0x8(%r15,%r9,1)          #  142   0x60c86  5      
  nop                                 #  143   0x60c8b  1      
.L_60d00:                             #        0x60c8c  0      
  testq %r11, %r11                    #  144   0x60c8c  3      
  je .L_60e00                         #  145   0x60c8f  6      
  movl %eax, %eax                     #  146   0x60c95  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  147   0x60c97  5      
  leal 0x130(,%rcx,4), %r10d          #  148   0x60c9c  8      
  movslq %r10d, %r10                  #  149   0x60ca4  3      
  nop                                 #  150   0x60ca7  1      
  movl %r10d, %r10d                   #  151   0x60ca8  3      
  cmpl %eax, 0x100368c0(%r15,%r10,1)  #  152   0x60cab  8      
  je .L_614c0                         #  153   0x60cb3  6      
  cmpl %r11d, %edx                    #  154   0x60cb9  3      
  ja .L_615e0                         #  155   0x60cbc  6      
  nop                                 #  156   0x60cc2  1      
  movl %r11d, %r11d                   #  157   0x60cc3  3      
  cmpl %eax, 0x10(%r15,%r11,1)        #  158   0x60cc6  5      
  je .L_61540                         #  159   0x60ccb  6      
  movl %r11d, %r11d                   #  160   0x60cd1  3      
  movl %r9d, 0x14(%r15,%r11,1)        #  161   0x60cd4  5      
  nop                                 #  162   0x60cd9  1      
.L_60d60:                             #        0x60cda  0      
  testq %r9, %r9                      #  163   0x60cda  3      
  je .L_60e00                         #  164   0x60cdd  6      
  nop                                 #  165   0x60ce3  1      
  nop                                 #  166   0x60ce4  1      
.L_60d80:                             #        0x60ce5  0      
  cmpl %edx, %r9d                     #  167   0x60ce5  3      
  jb .L_615e0                         #  168   0x60ce8  6      
  movl %eax, %eax                     #  169   0x60cee  2      
  movl 0x10(%r15,%rax,1), %ecx        #  170   0x60cf0  5      
  movl %r9d, %r9d                     #  171   0x60cf5  3      
  movl %r11d, 0x18(%r15,%r9,1)        #  172   0x60cf8  5      
  testq %rcx, %rcx                    #  173   0x60cfd  3      
  nop                                 #  174   0x60d00  1      
  je .L_60dc0                         #  175   0x60d01  6      
  cmpl %edx, %ecx                     #  176   0x60d07  2      
  jb .L_615e0                         #  177   0x60d09  6      
  movl %r9d, %r9d                     #  178   0x60d0f  3      
  movl %ecx, 0x10(%r15,%r9,1)         #  179   0x60d12  5      
  movl %ecx, %ecx                     #  180   0x60d17  2      
  movl %r9d, 0x18(%r15,%rcx,1)        #  181   0x60d19  5      
  nop                                 #  182   0x60d1e  1      
.L_60dc0:                             #        0x60d1f  0      
  movl %eax, %eax                     #  183   0x60d1f  2      
  movl 0x14(%r15,%rax,1), %eax        #  184   0x60d21  5      
  testq %rax, %rax                    #  185   0x60d26  3      
  je .L_60e00                         #  186   0x60d29  6      
  cmpl %edx, %eax                     #  187   0x60d2f  2      
  jb .L_615e0                         #  188   0x60d31  6      
  movl %r9d, %r9d                     #  189   0x60d37  3      
  movl %eax, 0x14(%r15,%r9,1)         #  190   0x60d3a  5      
  nop                                 #  191   0x60d3f  1      
  movl %eax, %eax                     #  192   0x60d40  2      
  movl %r9d, 0x18(%r15,%rax,1)        #  193   0x60d42  5      
  nop                                 #  194   0x60d47  1      
  nop                                 #  195   0x60d48  1      
.L_60e00:                             #        0x60d49  0      
  addl %r8d, %esi                     #  196   0x60d49  3      
  movl %esi, %eax                     #  197   0x60d4c  2      
  orl $0x1, %eax                      #  198   0x60d4e  3      
  cmpl %ebx, %edi                     #  199   0x60d51  2      
  movl %edi, %edi                     #  200   0x60d53  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  201   0x60d55  5      
  leal (%rsi,%rdi,1), %eax            #  202   0x60d5a  3      
  movl %eax, %eax                     #  203   0x60d5d  2      
  movl %esi, (%r15,%rax,1)            #  204   0x60d5f  4      
  jne .L_60e60                        #  205   0x60d63  6      
  nop                                 #  206   0x60d69  1      
  movl %esi, 0xffd5b58(%rip)          #  207   0x60d6a  6      
  jmpq .L_60ec0                       #  208   0x60d70  5      
  nop                                 #  209   0x60d75  1      
  nop                                 #  210   0x60d76  1      
.L_60e40:                             #        0x60d77  0      
  andl $0xfffffffe, %r8d              #  211   0x60d77  7      
  movl %eax, %eax                     #  212   0x60d7e  2      
  movl %r8d, 0x4(%r15,%rax,1)         #  213   0x60d80  5      
  movl %esi, %eax                     #  214   0x60d85  2      
  orl $0x1, %eax                      #  215   0x60d87  3      
  movl %edi, %edi                     #  216   0x60d8a  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  217   0x60d8c  5      
  leal (%rsi,%rdi,1), %eax            #  218   0x60d91  3      
  movl %eax, %eax                     #  219   0x60d94  2      
  movl %esi, (%r15,%rax,1)            #  220   0x60d96  4      
.L_60e60:                             #        0x60d9a  0      
  movl %esi, %ecx                     #  221   0x60d9a  2      
  shrl $0x3, %ecx                     #  222   0x60d9c  3      
  cmpl $0x1f, %ecx                    #  223   0x60d9f  3      
  ja .L_60ee0                         #  224   0x60da2  6      
  movl 0xffd5b12(%rip), %ebx          #  225   0x60da8  6      
  movl $0x1, %eax                     #  226   0x60dae  5      
  leal 0x100368e8(,%rcx,8), %edx      #  227   0x60db3  7      
  shll %cl, %eax                      #  228   0x60dba  2      
  testl %ebx, %eax                    #  229   0x60dbc  2      
  je .L_61060                         #  230   0x60dbe  6      
  movl %edx, %edx                     #  231   0x60dc4  2      
  movl 0x8(%r15,%rdx,1), %eax         #  232   0x60dc6  5      
  cmpl %eax, 0xffd5aff(%rip)          #  233   0x60dcb  6      
  ja .L_615e0                         #  234   0x60dd1  6      
  nop                                 #  235   0x60dd7  1      
.L_60ea0:                             #        0x60dd8  0      
  movl %edx, %edx                     #  236   0x60dd8  2      
  movl %edi, 0x8(%r15,%rdx,1)         #  237   0x60dda  5      
  movl %eax, %eax                     #  238   0x60ddf  2      
  movl %edi, 0xc(%r15,%rax,1)         #  239   0x60de1  5      
  movl %edi, %edi                     #  240   0x60de6  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  241   0x60de8  5      
  movl %edi, %edi                     #  242   0x60ded  2      
  movl %edx, 0xc(%r15,%rdi,1)         #  243   0x60def  5      
  nop                                 #  244   0x60df4  1      
.L_60ec0:                             #        0x60df5  0      
  popq %rbx                           #  245   0x60df5  2      
  popq %r11                           #  246   0x60df7  3      
  andl $0xffffffe0, %r11d             #  247   0x60dfa  7      
  addq %r15, %r11                     #  248   0x60e01  3      
  jmpq %r11                           #  249   0x60e04  3      
  nop                                 #  250   0x60e07  1      
  nop                                 #  251   0x60e08  1      
.L_60ee0:                             #        0x60e09  0      
  movl %esi, %ecx                     #  252   0x60e09  2      
  xorl %ebx, %ebx                     #  253   0x60e0b  2      
  movl $0x1, %eax                     #  254   0x60e0d  5      
  shrl $0x8, %ecx                     #  255   0x60e12  3      
  testl %ecx, %ecx                    #  256   0x60e15  2      
  je .L_60f40                         #  257   0x60e17  6      
  cmpl $0xffff, %ecx                  #  258   0x60e1d  6      
  movl $0x80000000, %eax              #  259   0x60e23  5      
  movb $0x1f, %bl                     #  260   0x60e28  2      
  nop                                 #  261   0x60e2a  1      
  ja .L_60f40                         #  262   0x60e2b  6      
  bsrl %ecx, %ecx                     #  263   0x60e31  3      
  movl $0x1f, %eax                    #  264   0x60e34  5      
  movl %esi, %ebx                     #  265   0x60e39  2      
  xorl $0x1f, %ecx                    #  266   0x60e3b  3      
  subl %ecx, %eax                     #  267   0x60e3e  2      
  leal 0x7(%rax), %ecx                #  268   0x60e40  3      
  shrl %cl, %ebx                      #  269   0x60e43  2      
  andl $0x1, %ebx                     #  270   0x60e45  3      
  leal (%rbx,%rax,2), %ebx            #  271   0x60e48  3      
  nop                                 #  272   0x60e4b  1      
  movl $0x1, %eax                     #  273   0x60e4c  5      
  movl %ebx, %ecx                     #  274   0x60e51  2      
  shll %cl, %eax                      #  275   0x60e53  2      
  nop                                 #  276   0x60e55  1      
  nop                                 #  277   0x60e56  1      
.L_60f40:                             #        0x60e57  0      
  movl %edi, %edi                     #  278   0x60e57  2      
  movl %ebx, 0x1c(%r15,%rdi,1)        #  279   0x60e59  5      
  movl 0xffd5a60(%rip), %ecx          #  280   0x60e5e  6      
  movl %edi, %edi                     #  281   0x60e64  2      
  movl $0x0, 0x14(%r15,%rdi,1)        #  282   0x60e66  9      
  nop                                 #  283   0x60e6f  1      
  movl %edi, %edi                     #  284   0x60e70  2      
  movl $0x0, 0x10(%r15,%rdi,1)        #  285   0x60e72  9      
  testl %ecx, %eax                    #  286   0x60e7b  2      
  je .L_61180                         #  287   0x60e7d  6      
  leal 0x130(,%rbx,4), %eax           #  288   0x60e83  7      
  xorl %ecx, %ecx                     #  289   0x60e8a  2      
  cmpl $0x1f, %ebx                    #  290   0x60e8c  3      
  nop                                 #  291   0x60e8f  1      
  cltq                                #  292   0x60e90  2      
  movl %eax, %eax                     #  293   0x60e92  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  294   0x60e94  8      
  je .L_60fa0                         #  295   0x60e9c  6      
  shrl $0x1, %ebx                     #  296   0x60ea2  2      
  movb $0x19, %cl                     #  297   0x60ea4  2      
  subl %ebx, %ecx                     #  298   0x60ea6  2      
  nop                                 #  299   0x60ea8  1      
.L_60fa0:                             #        0x60ea9  0      
  movl %esi, %ebx                     #  300   0x60ea9  2      
  shll %cl, %ebx                      #  301   0x60eab  2      
  movl %ebx, %ecx                     #  302   0x60ead  2      
  jmpq .L_61000                       #  303   0x60eaf  5      
  nop                                 #  304   0x60eb4  1      
  nop                                 #  305   0x60eb5  1      
.L_60fc0:                             #        0x60eb6  0      
  movl %ecx, %ebx                     #  306   0x60eb6  2      
  shrl $0x1f, %ebx                    #  307   0x60eb8  3      
  addl $0x4, %ebx                     #  308   0x60ebb  3      
  shll $0x2, %ebx                     #  309   0x60ebe  3      
  leal (%rbx,%rax,1), %r9d            #  310   0x60ec1  4      
  movslq %ebx, %rbx                   #  311   0x60ec5  3      
  leaq (%rax,%rbx,1), %rbx            #  312   0x60ec8  4      
  movl %ebx, %ebx                     #  313   0x60ecc  2      
  movl (%r15,%rbx,1), %r8d            #  314   0x60ece  4      
  testq %r8, %r8                      #  315   0x60ed2  3      
  nop                                 #  316   0x60ed5  1      
  je .L_611e0                         #  317   0x60ed6  6      
  addl %ecx, %ecx                     #  318   0x60edc  2      
  movq %r8, %rax                      #  319   0x60ede  3      
  nop                                 #  320   0x60ee1  1      
  nop                                 #  321   0x60ee2  1      
.L_61000:                             #        0x60ee3  0      
  movl %eax, %eax                     #  322   0x60ee3  2      
  movl 0x4(%r15,%rax,1), %ebx         #  323   0x60ee5  5      
  andl $0xfffffff8, %ebx              #  324   0x60eea  6      
  cmpl %ebx, %esi                     #  325   0x60ef0  2      
  jne .L_60fc0                        #  326   0x60ef2  6      
  cmpl %eax, %edx                     #  327   0x60ef8  2      
  movl %eax, %eax                     #  328   0x60efa  2      
  movl 0x8(%r15,%rax,1), %ecx         #  329   0x60efc  5      
  ja .L_615e0                         #  330   0x60f01  6      
  cmpl %ecx, %edx                     #  331   0x60f07  2      
  nop                                 #  332   0x60f09  1      
  ja .L_615e0                         #  333   0x60f0a  6      
  movl %ecx, %ecx                     #  334   0x60f10  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  335   0x60f12  5      
  movl %eax, %eax                     #  336   0x60f17  2      
  movl %edi, 0x8(%r15,%rax,1)         #  337   0x60f19  5      
  movl %edi, %edi                     #  338   0x60f1e  2      
  movl %eax, 0xc(%r15,%rdi,1)         #  339   0x60f20  5      
  nop                                 #  340   0x60f25  1      
  movl %edi, %edi                     #  341   0x60f26  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  342   0x60f28  5      
  movl %edi, %edi                     #  343   0x60f2d  2      
  movl $0x0, 0x18(%r15,%rdi,1)        #  344   0x60f2f  9      
  popq %rbx                           #  345   0x60f38  2      
  popq %r11                           #  346   0x60f3a  3      
  andl $0xffffffe0, %r11d             #  347   0x60f3d  7      
  addq %r15, %r11                     #  348   0x60f44  3      
  jmpq %r11                           #  349   0x60f47  3      
  nop                                 #  350   0x60f4a  1      
.L_61060:                             #        0x60f4b  0      
  orl %ebx, %eax                      #  351   0x60f4b  2      
  movl %eax, 0xffd596d(%rip)          #  352   0x60f4d  6      
  movq %rdx, %rax                     #  353   0x60f53  3      
  jmpq .L_60ea0                       #  354   0x60f56  5      
  nop                                 #  355   0x60f5b  1      
  nop                                 #  356   0x60f5c  1      
.L_61080:                             #        0x60f5d  0      
  movl %eax, %eax                     #  357   0x60f5d  2      
  movl 0x8(%r15,%rax,1), %r9d         #  358   0x60f5f  5      
  leal 0x100368e8(,%rcx,8), %r11d     #  359   0x60f64  8      
  movl %eax, %eax                     #  360   0x60f6c  2      
  movl 0xc(%r15,%rax,1), %r10d        #  361   0x60f6e  5      
  cmpl %r11d, %r9d                    #  362   0x60f73  3      
  jne .L_61640                        #  363   0x60f76  6      
  nop                                 #  364   0x60f7c  1      
.L_610a0:                             #        0x60f7d  0      
  cmpl %r10d, %r9d                    #  365   0x60f7d  3      
  je .L_613a0                         #  366   0x60f80  6      
  cmpl %r11d, %r10d                   #  367   0x60f86  3      
  jne .L_615c0                        #  368   0x60f89  6      
  nop                                 #  369   0x60f8f  1      
.L_610c0:                             #        0x60f90  0      
  movl %r9d, %r9d                     #  370   0x60f90  3      
  movl %r10d, 0xc(%r15,%r9,1)         #  371   0x60f93  5      
  movl %r10d, %r10d                   #  372   0x60f98  3      
  movl %r9d, 0x8(%r15,%r10,1)         #  373   0x60f9b  5      
  jmpq .L_60e00                       #  374   0x60fa0  5      
  nop                                 #  375   0x60fa5  1      
.L_610e0:                             #        0x60fa6  0      
  movl %edi, %edi                     #  376   0x60fa6  2      
  movl 0x8(%r15,%rdi,1), %ebx         #  377   0x60fa8  5      
  leal 0x100368e8(,%rcx,8), %r9d      #  378   0x60fad  8      
  movl %edi, %edi                     #  379   0x60fb5  2      
  movl 0xc(%r15,%rdi,1), %r8d         #  380   0x60fb7  5      
  cmpl %r9d, %ebx                     #  381   0x60fbc  3      
  jne .L_61620                        #  382   0x60fbf  6      
  nop                                 #  383   0x60fc5  1      
.L_61100:                             #        0x60fc6  0      
  cmpl %r8d, %ebx                     #  384   0x60fc6  3      
  je .L_61480                         #  385   0x60fc9  6      
  cmpl %r9d, %r8d                     #  386   0x60fcf  3      
  jne .L_61600                        #  387   0x60fd2  6      
  nop                                 #  388   0x60fd8  1      
.L_61120:                             #        0x60fd9  0      
  movl %ebx, %ebx                     #  389   0x60fd9  2      
  movl %r8d, 0xc(%r15,%rbx,1)         #  390   0x60fdb  5      
  movl %r8d, %r8d                     #  391   0x60fe0  3      
  movl %ebx, 0x8(%r15,%r8,1)          #  392   0x60fe3  5      
  jmpq .L_60c60                       #  393   0x60fe8  5      
  nop                                 #  394   0x60fed  1      
.L_61140:                             #        0x60fee  0      
  leal 0x10(%rcx,%rsi,1), %ebx        #  395   0x60fee  4      
  subl %ecx, %edi                     #  396   0x60ff2  2      
  movl %ebx, %esi                     #  397   0x60ff4  2      
  nop                                 #  398   0x60ff6  1      
  nop                                 #  399   0x60ff7  1      
  callq .munmap                       #  400   0x60ff8  5      
  testl %eax, %eax                    #  401   0x60ffd  2      
  jne .L_60ec0                        #  402   0x60fff  6      
  subl %ebx, 0xffd5a65(%rip)          #  403   0x61005  6      
  jmpq .L_60ec0                       #  404   0x6100b  5      
  nop                                 #  405   0x61010  1      
.L_61180:                             #        0x61011  0      
  leal 0x130(,%rbx,4), %ebx           #  406   0x61011  7      
  orl %ecx, %eax                      #  407   0x61018  2      
  movl %eax, 0xffd58a4(%rip)          #  408   0x6101a  6      
  movslq %ebx, %rax                   #  409   0x61020  3      
  addl $0x100368c0, %ebx              #  410   0x61023  6      
  nop                                 #  411   0x61029  1      
  movl %eax, %eax                     #  412   0x6102a  2      
  movl %edi, 0x100368c0(%r15,%rax,1)  #  413   0x6102c  8      
  movl %edi, %edi                     #  414   0x61034  2      
  movl %ebx, 0x18(%r15,%rdi,1)        #  415   0x61036  5      
  movl %edi, %edi                     #  416   0x6103b  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  417   0x6103d  5      
  movl %edi, %edi                     #  418   0x61042  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  419   0x61044  5      
  popq %rbx                           #  420   0x61049  2      
  popq %r11                           #  421   0x6104b  3      
  andl $0xffffffe0, %r11d             #  422   0x6104e  7      
  addq %r15, %r11                     #  423   0x61055  3      
  jmpq %r11                           #  424   0x61058  3      
  nop                                 #  425   0x6105b  1      
  nop                                 #  426   0x6105c  1      
.L_611e0:                             #        0x6105d  0      
  cmpl %r9d, 0xffd586c(%rip)          #  427   0x6105d  7      
  ja .L_615e0                         #  428   0x61064  6      
  movl %ebx, %ebx                     #  429   0x6106a  2      
  movl %edi, (%r15,%rbx,1)            #  430   0x6106c  4      
  movl %edi, %edi                     #  431   0x61070  2      
  movl %eax, 0x18(%r15,%rdi,1)        #  432   0x61072  5      
  nop                                 #  433   0x61077  1      
  movl %edi, %edi                     #  434   0x61078  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  435   0x6107a  5      
  movl %edi, %edi                     #  436   0x6107f  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  437   0x61081  5      
  popq %rbx                           #  438   0x61086  2      
  popq %r11                           #  439   0x61088  3      
  andl $0xffffffe0, %r11d             #  440   0x6108b  7      
  addq %r15, %r11                     #  441   0x61092  3      
  jmpq %r11                           #  442   0x61095  3      
  nop                                 #  443   0x61098  1      
.L_61220:                             #        0x61099  0      
  addl 0xffd582d(%rip), %esi          #  444   0x61099  6      
  movl %edi, 0xffd5833(%rip)          #  445   0x6109f  6      
  movl %esi, 0xffd5821(%rip)          #  446   0x610a5  6      
  orl $0x1, %esi                      #  447   0x610ab  3      
  cmpl %edi, 0xffd5820(%rip)          #  448   0x610ae  6      
  nop                                 #  449   0x610b4  1      
  movl %edi, %edi                     #  450   0x610b5  2      
  movl %esi, 0x4(%r15,%rdi,1)         #  451   0x610b7  5      
  jne .L_60ec0                        #  452   0x610bc  6      
  movl $0x0, 0xffd5808(%rip)          #  453   0x610c2  10     
  nop                                 #  454   0x610cc  1      
  movl $0x0, 0xffd57f1(%rip)          #  455   0x610cd  10     
  jmpq .L_60ec0                       #  456   0x610d7  5      
  xchgw %ax, %ax                      #  457   0x610dc  3      
  nop                                 #  458   0x610df  1      
.L_61280:                             #        0x610e0  0      
  movl %eax, %eax                     #  459   0x610e0  2      
  movl 0x4(%r15,%rax,1), %ecx         #  460   0x610e2  5      
  movl %ecx, %ebx                     #  461   0x610e7  2      
  andl $0x3, %ebx                     #  462   0x610e9  3      
  cmpl $0x3, %ebx                     #  463   0x610ec  3      
  jne .L_60c60                        #  464   0x610ef  6      
  andl $0xfffffffe, %ecx              #  465   0x610f5  6      
  movl %esi, 0xffd57c7(%rip)          #  466   0x610fb  6      
  xchgw %ax, %ax                      #  467   0x61101  3      
  movl %eax, %eax                     #  468   0x61104  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  469   0x61106  5      
  nop                                 #  470   0x6110b  1      
  nop                                 #  471   0x6110c  1      
.L_612c0:                             #        0x6110d  0      
  movl %esi, %eax                     #  472   0x6110d  2      
  orl $0x1, %eax                      #  473   0x6110f  3      
  movl %edi, %edi                     #  474   0x61112  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  475   0x61114  5      
  leal (%rsi,%rdi,1), %edi            #  476   0x61119  3      
  movl %edi, %edi                     #  477   0x6111c  2      
  movl %esi, (%r15,%rdi,1)            #  478   0x6111e  4      
  jmpq .L_60ec0                       #  479   0x61122  5      
  nop                                 #  480   0x61127  1      
.L_612e0:                             #        0x61128  0      
  addl 0xffd579a(%rip), %esi          #  481   0x61128  6      
  movl %edi, 0xffd57a0(%rip)          #  482   0x6112e  6      
  movl %esi, 0xffd578e(%rip)          #  483   0x61134  6      
  jmpq .L_612c0                       #  484   0x6113a  5      
  nop                                 #  485   0x6113f  1      
.L_61300:                             #        0x61140  0      
  movl %eax, %eax                     #  486   0x61140  2      
  movl 0x14(%r15,%rax,1), %r9d        #  487   0x61142  5      
  leal 0x14(%rax), %r10d              #  488   0x61147  4      
  testq %r9, %r9                      #  489   0x6114b  3      
  jne .L_61360                        #  490   0x6114e  6      
  jmpq .L_61580                       #  491   0x61154  5      
  nop                                 #  492   0x61159  1      
.L_61320:                             #        0x6115a  0      
  leal 0x14(%r9), %r10d               #  493   0x6115a  4      
  nop                                 #  494   0x6115e  1      
  nop                                 #  495   0x6115f  1      
.L_61340:                             #        0x61160  0      
  movq %rcx, %r9                      #  496   0x61160  3      
  nop                                 #  497   0x61163  1      
  nop                                 #  498   0x61164  1      
.L_61360:                             #        0x61165  0      
  movl %r9d, %r9d                     #  499   0x61165  3      
  movl 0x14(%r15,%r9,1), %ecx         #  500   0x61168  5      
  testq %rcx, %rcx                    #  501   0x6116d  3      
  jne .L_61320                        #  502   0x61170  6      
  movl %r9d, %r9d                     #  503   0x61176  3      
  movl 0x10(%r15,%r9,1), %ecx         #  504   0x61179  5      
  testq %rcx, %rcx                    #  505   0x6117e  3      
  je .L_613c0                         #  506   0x61181  6      
  leal 0x10(%r9), %r10d               #  507   0x61187  4      
  xchgw %ax, %ax                      #  508   0x6118b  3      
  jmpq .L_61340                       #  509   0x6118e  5      
  nop                                 #  510   0x61193  1      
  nop                                 #  511   0x61194  1      
.L_613a0:                             #        0x61195  0      
  movl $0xfffffffe, %eax              #  512   0x61195  5      
  roll %cl, %eax                      #  513   0x6119a  2      
  andl %eax, 0xffd571e(%rip)          #  514   0x6119c  6      
  jmpq .L_60e00                       #  515   0x611a2  5      
  nop                                 #  516   0x611a7  1      
.L_613c0:                             #        0x611a8  0      
  cmpl %edx, %r10d                    #  517   0x611a8  3      
  jb .L_615e0                         #  518   0x611ab  6      
  movl %r10d, %r10d                   #  519   0x611b1  3      
  movl $0x0, (%r15,%r10,1)            #  520   0x611b4  8      
  jmpq .L_60d00                       #  521   0x611bc  5      
  nop                                 #  522   0x611c1  1      
.L_613e0:                             #        0x611c2  0      
  movl %edi, %edi                     #  523   0x611c2  2      
  movl 0x14(%r15,%rdi,1), %ebx        #  524   0x611c4  5      
  leal 0x14(%rdi), %r8d               #  525   0x611c9  4      
  testq %rbx, %rbx                    #  526   0x611cd  3      
  jne .L_61440                        #  527   0x611d0  6      
  jmpq .L_615a0                       #  528   0x611d6  5      
  nop                                 #  529   0x611db  1      
.L_61400:                             #        0x611dc  0      
  leal 0x14(%rbx), %r8d               #  530   0x611dc  4      
  nop                                 #  531   0x611e0  1      
  nop                                 #  532   0x611e1  1      
.L_61420:                             #        0x611e2  0      
  movq %rcx, %rbx                     #  533   0x611e2  3      
  nop                                 #  534   0x611e5  1      
  nop                                 #  535   0x611e6  1      
.L_61440:                             #        0x611e7  0      
  movl %ebx, %ebx                     #  536   0x611e7  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  537   0x611e9  5      
  testq %rcx, %rcx                    #  538   0x611ee  3      
  jne .L_61400                        #  539   0x611f1  6      
  movl %ebx, %ebx                     #  540   0x611f7  2      
  movl 0x10(%r15,%rbx,1), %ecx        #  541   0x611f9  5      
  testq %rcx, %rcx                    #  542   0x611fe  3      
  je .L_614a0                         #  543   0x61201  6      
  leal 0x10(%rbx), %r8d               #  544   0x61207  4      
  nop                                 #  545   0x6120b  1      
  jmpq .L_61420                       #  546   0x6120c  5      
  nop                                 #  547   0x61211  1      
  nop                                 #  548   0x61212  1      
.L_61480:                             #        0x61213  0      
  movl $0xfffffffe, %ebx              #  549   0x61213  5      
  roll %cl, %ebx                      #  550   0x61218  2      
  andl %ebx, 0xffd56a0(%rip)          #  551   0x6121a  6      
  jmpq .L_60c60                       #  552   0x61220  5      
  nop                                 #  553   0x61225  1      
.L_614a0:                             #        0x61226  0      
  cmpl %r8d, %edx                     #  554   0x61226  3      
  ja .L_615e0                         #  555   0x61229  6      
  movl %r8d, %r8d                     #  556   0x6122f  3      
  movl $0x0, (%r15,%r8,1)             #  557   0x61232  8      
  jmpq .L_60b40                       #  558   0x6123a  5      
  nop                                 #  559   0x6123f  1      
.L_614c0:                             #        0x61240  0      
  testq %r9, %r9                      #  560   0x61240  3      
  movl %r10d, %r10d                   #  561   0x61243  3      
  movl %r9d, 0x100368c0(%r15,%r10,1)  #  562   0x61246  8      
  jne .L_60d80                        #  563   0x6124e  6      
  movl $0xfffffffe, %eax              #  564   0x61254  5      
  roll %cl, %eax                      #  565   0x61259  2      
  nop                                 #  566   0x6125b  1      
  andl %eax, 0xffd5662(%rip)          #  567   0x6125c  6      
  jmpq .L_60e00                       #  568   0x61262  5      
  nop                                 #  569   0x61267  1      
  nop                                 #  570   0x61268  1      
.L_61500:                             #        0x61269  0      
  testq %rbx, %rbx                    #  571   0x61269  3      
  movl %r8d, %r8d                     #  572   0x6126c  3      
  movl %ebx, 0x100368c0(%r15,%r8,1)   #  573   0x6126f  8      
  jne .L_60bc0                        #  574   0x61277  6      
  movl $0xfffffffe, %ebx              #  575   0x6127d  5      
  roll %cl, %ebx                      #  576   0x61282  2      
  nop                                 #  577   0x61284  1      
  andl %ebx, 0xffd5639(%rip)          #  578   0x61285  6      
  jmpq .L_60c60                       #  579   0x6128b  5      
  nop                                 #  580   0x61290  1      
  nop                                 #  581   0x61291  1      
.L_61540:                             #        0x61292  0      
  movl %r11d, %r11d                   #  582   0x61292  3      
  movl %r9d, 0x10(%r15,%r11,1)        #  583   0x61295  5      
  jmpq .L_60d60                       #  584   0x6129a  5      
  nop                                 #  585   0x6129f  1      
  nop                                 #  586   0x612a0  1      
.L_61560:                             #        0x612a1  0      
  movl %r9d, %r9d                     #  587   0x612a1  3      
  movl %ebx, 0x10(%r15,%r9,1)         #  588   0x612a4  5      
  jmpq .L_60ba0                       #  589   0x612a9  5      
  nop                                 #  590   0x612ae  1      
  nop                                 #  591   0x612af  1      
.L_61580:                             #        0x612b0  0      
  movl %eax, %eax                     #  592   0x612b0  2      
  movl 0x10(%r15,%rax,1), %r9d        #  593   0x612b2  5      
  leal 0x10(%rax), %r10d              #  594   0x612b7  4      
  testq %r9, %r9                      #  595   0x612bb  3      
  jne .L_61360                        #  596   0x612be  6      
  jmpq .L_60d00                       #  597   0x612c4  5      
  nop                                 #  598   0x612c9  1      
.L_615a0:                             #        0x612ca  0      
  movl %edi, %edi                     #  599   0x612ca  2      
  movl 0x10(%r15,%rdi,1), %ebx        #  600   0x612cc  5      
  leal 0x10(%rdi), %r8d               #  601   0x612d1  4      
  testq %rbx, %rbx                    #  602   0x612d5  3      
  jne .L_61440                        #  603   0x612d8  6      
  jmpq .L_60b40                       #  604   0x612de  5      
  nop                                 #  605   0x612e3  1      
.L_615c0:                             #        0x612e4  0      
  cmpl %edx, %r10d                    #  606   0x612e4  3      
  jb .L_615e0                         #  607   0x612e7  6      
  movl %r10d, %r10d                   #  608   0x612ed  3      
  cmpl %eax, 0x8(%r15,%r10,1)         #  609   0x612f0  5      
  je .L_610c0                         #  610   0x612f5  6      
  nop                                 #  611   0x612fb  1      
.L_615e0:                             #        0x612fc  0      
  nop                                 #  612   0x612fc  1      
  nop                                 #  613   0x612fd  1      
  callq .abort                        #  614   0x612fe  5      
.L_61600:                             #        0x61303  0      
  cmpl %r8d, %edx                     #  615   0x61303  3      
  ja .L_615e0                         #  616   0x61306  6      
  movl %r8d, %r8d                     #  617   0x6130c  3      
  cmpl %edi, 0x8(%r15,%r8,1)          #  618   0x6130f  5      
  jne .L_615e0                        #  619   0x61314  6      
  jmpq .L_61120                       #  620   0x6131a  5      
  nop                                 #  621   0x6131f  1      
.L_61620:                             #        0x61320  0      
  cmpl %ebx, %edx                     #  622   0x61320  2      
  ja .L_615e0                         #  623   0x61322  6      
  movl %ebx, %ebx                     #  624   0x61328  2      
  cmpl %edi, 0xc(%r15,%rbx,1)         #  625   0x6132a  5      
  jne .L_615e0                        #  626   0x6132f  6      
  jmpq .L_61100                       #  627   0x61335  5      
  nop                                 #  628   0x6133a  1      
.L_61640:                             #        0x6133b  0      
  cmpl %edx, %r9d                     #  629   0x6133b  3      
  jb .L_615e0                         #  630   0x6133e  6      
  movl %r9d, %r9d                     #  631   0x61344  3      
  cmpl %eax, 0xc(%r15,%r9,1)          #  632   0x61347  5      
  jne .L_615e0                        #  633   0x6134c  6      
  jmpq .L_610a0                       #  634   0x61352  5      
  nop                                 #  635   0x61357  1      
                                                               
.size T_267, .-T_267

