  .text
  .globl malloc
  .type malloc, @function

#! file-offset 0x638c0
#! rip-offset  0x638c0
#! capacity    9568 bytes

# Text                                #  Line  RIP      Bytes  
.malloc:                              #        0x638c0  0      
  pushq %r12                          #  1     0x638c0  3      
  pushq %rbx                          #  2     0x638c3  2      
  movl %edi, %ebx                     #  3     0x638c5  2      
  subl $0x8, %esp                     #  4     0x638c7  3      
  addq %r15, %rsp                     #  5     0x638ca  3      
  movl 0xffd2fbd(%rip), %eax          #  6     0x638cd  6      
  testl %eax, %eax                    #  7     0x638d3  2      
  je .L_63ba0                         #  8     0x638d5  6      
  nop                                 #  9     0x638db  1      
.L_638e0:                             #        0x638dc  0      
  testb $0x2, 0xffd3199(%rip)         #  10    0x638dc  7      
  jne .L_63b60                        #  11    0x638e3  6      
  nop                                 #  12    0x638e9  1      
  nop                                 #  13    0x638ea  1      
.L_63900:                             #        0x638eb  0      
  cmpl $0xf4, %ebx                    #  14    0x638eb  3      
  ja .L_63a00                         #  15    0x638ee  6      
  cmpl $0xa, %ebx                     #  16    0x638f4  3      
  ja .L_63c20                         #  17    0x638f7  6      
  movl $0x2, %ecx                     #  18    0x638fd  5      
  movl $0x2, %esi                     #  19    0x63902  5      
  nop                                 #  20    0x63907  1      
  movl $0x10, %ebx                    #  21    0x63908  5      
  nop                                 #  22    0x6390d  1      
  nop                                 #  23    0x6390e  1      
.L_63940:                             #        0x6390f  0      
  movl 0xffd2fab(%rip), %edx          #  24    0x6390f  6      
  movl %edx, %eax                     #  25    0x63915  2      
  shrl %cl, %eax                      #  26    0x63917  2      
  testb $0x3, %al                     #  27    0x63919  2      
  je .L_63ac0                         #  28    0x6391b  6      
  andl $0x1, %eax                     #  29    0x63921  3      
  xorl $0x1, %eax                     #  30    0x63924  3      
  leal (%rax,%rsi,1), %ecx            #  31    0x63927  3      
  nop                                 #  32    0x6392a  1      
  leal 0x100368e8(,%rcx,8), %edi      #  33    0x6392b  7      
  movl %edi, %edi                     #  34    0x63932  2      
  movl 0x8(%r15,%rdi,1), %eax         #  35    0x63934  5      
  movl %eax, %eax                     #  36    0x63939  2      
  movl 0x8(%r15,%rax,1), %ebx         #  37    0x6393b  5      
  cmpl %ebx, %edi                     #  38    0x63940  2      
  je .L_64780                         #  39    0x63942  6      
  nop                                 #  40    0x63948  1      
  cmpl %ebx, 0xffd2f81(%rip)          #  41    0x63949  6      
  ja .L_64ae0                         #  42    0x6394f  6      
  movl %ebx, %ebx                     #  43    0x63955  2      
  cmpl %eax, 0xc(%r15,%rbx,1)         #  44    0x63957  5      
  jne .L_64ae0                        #  45    0x6395c  6      
  movl %ebx, %ebx                     #  46    0x63962  2      
  movl %edi, 0xc(%r15,%rbx,1)         #  47    0x63964  5      
  movl %edi, %edi                     #  48    0x63969  2      
  movl %ebx, 0x8(%r15,%rdi,1)         #  49    0x6396b  5      
  nop                                 #  50    0x63970  1      
  nop                                 #  51    0x63971  1      
.L_639c0:                             #        0x63972  0      
  shll $0x3, %ecx                     #  52    0x63972  3      
  movl %ecx, %edx                     #  53    0x63975  2      
  addl %eax, %ecx                     #  54    0x63977  2      
  orl $0x3, %edx                      #  55    0x63979  3      
  movl %eax, %eax                     #  56    0x6397c  2      
  movl %edx, 0x4(%r15,%rax,1)         #  57    0x6397e  5      
  addl $0x8, %eax                     #  58    0x63983  3      
  movl %ecx, %ecx                     #  59    0x63986  2      
  orl $0x1, 0x4(%r15,%rcx,1)          #  60    0x63988  6      
  nop                                 #  61    0x6398e  1      
  jmpq .L_63a80                       #  62    0x6398f  5      
  nop                                 #  63    0x63994  1      
  nop                                 #  64    0x63995  1      
.L_63a00:                             #        0x63996  0      
  cmpl $0xffffffbf, %ebx              #  65    0x63996  6      
  jbe .L_63be0                        #  66    0x6399c  6      
  movl 0xffd2f1f(%rip), %r8d          #  67    0x639a2  7      
  movl $0xffffffff, %ebx              #  68    0x639a9  5      
  nop                                 #  69    0x639ae  1      
.L_63a20:                             #        0x639af  0      
  cmpl %r8d, %ebx                     #  70    0x639af  3      
  jbe .L_63ae0                        #  71    0x639b2  6      
  nop                                 #  72    0x639b8  1      
  nop                                 #  73    0x639b9  1      
.L_63a40:                             #        0x639ba  0      
  movl 0xffd2f0c(%rip), %eax          #  74    0x639ba  6      
  cmpl %ebx, %eax                     #  75    0x639c0  2      
  jbe .L_63f40                        #  76    0x639c2  6      
  movl %eax, %ecx                     #  77    0x639c8  2      
  movl 0xffd2f08(%rip), %eax          #  78    0x639ca  6      
  subl %ebx, %ecx                     #  79    0x639d0  2      
  movl %ecx, 0xffd2ef4(%rip)          #  80    0x639d2  6      
  xchgw %ax, %ax                      #  81    0x639d8  3      
  orl $0x1, %ecx                      #  82    0x639db  3      
  leal (%rbx,%rax,1), %edx            #  83    0x639de  3      
  orl $0x3, %ebx                      #  84    0x639e1  3      
  movl %edx, %edx                     #  85    0x639e4  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  86    0x639e6  5      
  movl %edx, 0xffd2ee7(%rip)          #  87    0x639eb  6      
  movl %eax, %eax                     #  88    0x639f1  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  89    0x639f3  5      
  addl $0x8, %eax                     #  90    0x639f8  3      
.L_63a80:                             #        0x639fb  0      
  testb $0x2, 0xffd307a(%rip)         #  91    0x639fb  7      
  je .L_63aa0                         #  92    0x63a02  6      
  mfence                              #  93    0x63a08  3      
  movl $0x0, 0xffd306b(%rip)          #  94    0x63a0b  10     
  nop                                 #  95    0x63a15  1      
.L_63aa0:                             #        0x63a16  0      
  addl $0x8, %esp                     #  96    0x63a16  3      
  addq %r15, %rsp                     #  97    0x63a19  3      
  popq %rbx                           #  98    0x63a1c  2      
  popq %r12                           #  99    0x63a1e  3      
  popq %r11                           #  100   0x63a21  3      
  andl $0xffffffe0, %r11d             #  101   0x63a24  7      
  addq %r15, %r11                     #  102   0x63a2b  3      
  jmpq %r11                           #  103   0x63a2e  3      
  nop                                 #  104   0x63a31  1      
.L_63ac0:                             #        0x63a32  0      
  movl 0xffd2e8f(%rip), %r8d          #  105   0x63a32  7      
  cmpl %r8d, %ebx                     #  106   0x63a39  3      
  ja .L_63c80                         #  107   0x63a3c  6      
  nop                                 #  108   0x63a42  1      
  nop                                 #  109   0x63a43  1      
.L_63ae0:                             #        0x63a44  0      
  movl %r8d, %edx                     #  110   0x63a44  3      
  movl 0xffd2e87(%rip), %eax          #  111   0x63a47  6      
  subl %ebx, %edx                     #  112   0x63a4d  2      
  cmpl $0xf, %edx                     #  113   0x63a4f  3      
  ja .L_63c40                         #  114   0x63a52  6      
  movl %r8d, %edx                     #  115   0x63a58  3      
  addl %eax, %r8d                     #  116   0x63a5b  3      
  nop                                 #  117   0x63a5e  1      
  movl $0x0, 0xffd2e5f(%rip)          #  118   0x63a5f  10     
  orl $0x3, %edx                      #  119   0x63a69  3      
  movl $0x0, 0xffd2e5e(%rip)          #  120   0x63a6c  10     
  movl %eax, %eax                     #  121   0x63a76  2      
  movl %edx, 0x4(%r15,%rax,1)         #  122   0x63a78  5      
  xchgw %ax, %ax                      #  123   0x63a7d  3      
  movl %r8d, %r8d                     #  124   0x63a80  3      
  orl $0x1, 0x4(%r15,%r8,1)           #  125   0x63a83  6      
  nop                                 #  126   0x63a89  1      
  nop                                 #  127   0x63a8a  1      
.L_63b40:                             #        0x63a8b  0      
  addl $0x8, %eax                     #  128   0x63a8b  3      
  jmpq .L_63a80                       #  129   0x63a8e  5      
  nop                                 #  130   0x63a93  1      
  nop                                 #  131   0x63a94  1      
.L_63b60:                             #        0x63a95  0      
  movl $0x1, %eax                     #  132   0x63a95  5      
  xchgl %eax, 0xffd2fe0(%rip)         #  133   0x63a9a  6      
  testl %eax, %eax                    #  134   0x63aa0  2      
  je .L_63900                         #  135   0x63aa2  6      
  movl $0x10036a80, %edi              #  136   0x63aa8  5      
  nop                                 #  137   0x63aad  1      
  callq .spin_acquire_lock            #  138   0x63aae  5      
  movl %eax, %edx                     #  139   0x63ab3  2      
  xorl %eax, %eax                     #  140   0x63ab5  2      
  testl %edx, %edx                    #  141   0x63ab7  2      
  je .L_63900                         #  142   0x63ab9  6      
  jmpq .L_63aa0                       #  143   0x63abf  5      
  nop                                 #  144   0x63ac4  1      
.L_63ba0:                             #        0x63ac5  0      
  nop                                 #  145   0x63ac5  1      
  nop                                 #  146   0x63ac6  1      
  callq .init_mparams                 #  147   0x63ac7  5      
  jmpq .L_638e0                       #  148   0x63acc  5      
  nop                                 #  149   0x63ad1  1      
  nop                                 #  150   0x63ad2  1      
.L_63be0:                             #        0x63ad3  0      
  movl 0xffd2deb(%rip), %edi          #  151   0x63ad3  6      
  addl $0xb, %ebx                     #  152   0x63ad9  3      
  andl $0xfffffff8, %ebx              #  153   0x63adc  6      
  testl %edi, %edi                    #  154   0x63ae2  2      
  jne .L_63dc0                        #  155   0x63ae4  6      
  nop                                 #  156   0x63aea  1      
.L_63c00:                             #        0x63aeb  0      
  movl 0xffd2dd6(%rip), %r8d          #  157   0x63aeb  7      
  jmpq .L_63a20                       #  158   0x63af2  5      
  nop                                 #  159   0x63af7  1      
  nop                                 #  160   0x63af8  1      
.L_63c20:                             #        0x63af9  0      
  addl $0xb, %ebx                     #  161   0x63af9  3      
  andl $0xfffffff8, %ebx              #  162   0x63afc  6      
  movl %ebx, %esi                     #  163   0x63b02  2      
  shrl $0x3, %esi                     #  164   0x63b04  3      
  movl %esi, %ecx                     #  165   0x63b07  2      
  jmpq .L_63940                       #  166   0x63b09  5      
  nop                                 #  167   0x63b0e  1      
.L_63c40:                             #        0x63b0f  0      
  leal (%rbx,%rax,1), %ecx            #  168   0x63b0f  3      
  movl %edx, %esi                     #  169   0x63b12  2      
  movl %edx, 0xffd2dae(%rip)          #  170   0x63b14  6      
  orl $0x1, %esi                      #  171   0x63b1a  3      
  orl $0x3, %ebx                      #  172   0x63b1d  3      
  movl %ecx, %ecx                     #  173   0x63b20  2      
  movl %esi, 0x4(%r15,%rcx,1)         #  174   0x63b22  5      
  movl %ecx, 0xffd2da7(%rip)          #  175   0x63b27  6      
  xchgw %ax, %ax                      #  176   0x63b2d  3      
  leal (%rdx,%rcx,1), %ecx            #  177   0x63b30  3      
  movl %eax, %eax                     #  178   0x63b33  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  179   0x63b35  5      
  movl %ecx, %ecx                     #  180   0x63b3a  2      
  movl %edx, (%r15,%rcx,1)            #  181   0x63b3c  4      
  jmpq .L_63b40                       #  182   0x63b40  5      
  nop                                 #  183   0x63b45  1      
.L_63c80:                             #        0x63b46  0      
  testl %eax, %eax                    #  184   0x63b46  2      
  je .L_643c0                         #  185   0x63b48  6      
  movl $0x1, %r8d                     #  186   0x63b4e  6      
  shll %cl, %eax                      #  187   0x63b54  2      
  movl %r8d, %edi                     #  188   0x63b56  3      
  shll %cl, %edi                      #  189   0x63b59  2      
  addl %edi, %edi                     #  190   0x63b5b  2      
  movl %edi, %esi                     #  191   0x63b5d  2      
  negl %esi                           #  192   0x63b5f  2      
  orl %edi, %esi                      #  193   0x63b61  2      
  nop                                 #  194   0x63b63  1      
  movl $0x100368e8, %edi              #  195   0x63b64  5      
  andl %eax, %esi                     #  196   0x63b69  2      
  movl %edi, %edi                     #  197   0x63b6b  2      
  movl %esi, %eax                     #  198   0x63b6d  2      
  negl %eax                           #  199   0x63b6f  2      
  andl %esi, %eax                     #  200   0x63b71  2      
  bsfl %eax, %ecx                     #  201   0x63b73  3      
  leal (%rdi,%rcx,8), %r9d            #  202   0x63b76  4      
  movl %r9d, %r9d                     #  203   0x63b7a  3      
  movl 0x8(%r15,%r9,1), %eax          #  204   0x63b7d  5      
  xchgw %ax, %ax                      #  205   0x63b82  3      
  movl %eax, %eax                     #  206   0x63b85  2      
  movl 0x8(%r15,%rax,1), %esi         #  207   0x63b87  5      
  cmpl %esi, %r9d                     #  208   0x63b8c  3      
  je .L_64c00                         #  209   0x63b8f  6      
  cmpl %esi, 0xffd2d35(%rip)          #  210   0x63b95  6      
  ja .L_64ae0                         #  211   0x63b9b  6      
  nop                                 #  212   0x63ba1  1      
  movl %esi, %esi                     #  213   0x63ba2  2      
  cmpl %eax, 0xc(%r15,%rsi,1)         #  214   0x63ba4  5      
  jne .L_64ae0                        #  215   0x63ba9  6      
  movl %esi, %esi                     #  216   0x63baf  2      
  movl %r9d, 0xc(%r15,%rsi,1)         #  217   0x63bb1  5      
  movl %r9d, %r9d                     #  218   0x63bb6  3      
  movl %esi, 0x8(%r15,%r9,1)          #  219   0x63bb9  5      
  nop                                 #  220   0x63bbe  1      
.L_63d00:                             #        0x63bbf  0      
  leal (,%rcx,8), %edx                #  221   0x63bbf  7      
  movl %ebx, %ecx                     #  222   0x63bc6  2      
  orl $0x3, %ecx                      #  223   0x63bc8  3      
  subl %ebx, %edx                     #  224   0x63bcb  2      
  movl %eax, %eax                     #  225   0x63bcd  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  226   0x63bcf  5      
  addl %eax, %ebx                     #  227   0x63bd4  2      
  movl %edx, %ecx                     #  228   0x63bd6  2      
  orl $0x1, %ecx                      #  229   0x63bd8  3      
  nop                                 #  230   0x63bdb  1      
  movl %ebx, %ebx                     #  231   0x63bdc  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  232   0x63bde  5      
  leal (%rdx,%rbx,1), %ecx            #  233   0x63be3  3      
  movl %ecx, %ecx                     #  234   0x63be6  2      
  movl %edx, (%r15,%rcx,1)            #  235   0x63be8  4      
  movl 0xffd2cd6(%rip), %ecx          #  236   0x63bec  6      
  testl %ecx, %ecx                    #  237   0x63bf2  2      
  je .L_63da0                         #  238   0x63bf4  6      
  nop                                 #  239   0x63bfa  1      
  movl 0xffd2cbe(%rip), %r9d          #  240   0x63bfb  7      
  shrl $0x3, %ecx                     #  241   0x63c02  3      
  movl $0x1, %r8d                     #  242   0x63c05  6      
  shll %cl, %r8d                      #  243   0x63c0b  3      
  movl 0xffd2cc0(%rip), %esi          #  244   0x63c0e  6      
  leal (%rdi,%rcx,8), %edi            #  245   0x63c14  3      
  testl %r9d, %r8d                    #  246   0x63c17  3      
  nop                                 #  247   0x63c1a  1      
  jne .L_64ac0                        #  248   0x63c1b  6      
  orl %r9d, %r8d                      #  249   0x63c21  3      
  movq %rdi, %rcx                     #  250   0x63c24  3      
  movl %r8d, 0xffd2c92(%rip)          #  251   0x63c27  7      
  nop                                 #  252   0x63c2e  1      
.L_63d80:                             #        0x63c2f  0      
  movl %edi, %edi                     #  253   0x63c2f  2      
  movl %esi, 0x8(%r15,%rdi,1)         #  254   0x63c31  5      
  movl %ecx, %ecx                     #  255   0x63c36  2      
  movl %esi, 0xc(%r15,%rcx,1)         #  256   0x63c38  5      
  movl %esi, %esi                     #  257   0x63c3d  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  258   0x63c3f  5      
  movl %esi, %esi                     #  259   0x63c44  2      
  movl %edi, 0xc(%r15,%rsi,1)         #  260   0x63c46  5      
  nop                                 #  261   0x63c4b  1      
.L_63da0:                             #        0x63c4c  0      
  movl %edx, 0xffd2c76(%rip)          #  262   0x63c4c  6      
  movl %ebx, 0xffd2c7c(%rip)          #  263   0x63c52  6      
  addl $0x8, %eax                     #  264   0x63c58  3      
  jmpq .L_63a80                       #  265   0x63c5b  5      
  nop                                 #  266   0x63c60  1      
.L_63dc0:                             #        0x63c61  0      
  movl %ebx, %eax                     #  267   0x63c61  2      
  movl %ebx, %edx                     #  268   0x63c63  2      
  xorl %r8d, %r8d                     #  269   0x63c65  3      
  shrl $0x8, %eax                     #  270   0x63c68  3      
  negl %edx                           #  271   0x63c6b  2      
  testl %eax, %eax                    #  272   0x63c6d  2      
  je .L_63e00                         #  273   0x63c6f  6      
  cmpl $0xffff, %eax                  #  274   0x63c75  5      
  movb $0x1f, %r8b                    #  275   0x63c7a  3      
  ja .L_63e00                         #  276   0x63c7d  6      
  bsrl %eax, %ecx                     #  277   0x63c83  3      
  nop                                 #  278   0x63c86  1      
  movl $0x1f, %eax                    #  279   0x63c87  5      
  movl %ebx, %r8d                     #  280   0x63c8c  3      
  xorl $0x1f, %ecx                    #  281   0x63c8f  3      
  subl %ecx, %eax                     #  282   0x63c92  2      
  leal 0x7(%rax), %ecx                #  283   0x63c94  3      
  shrl %cl, %r8d                      #  284   0x63c97  3      
  andl $0x1, %r8d                     #  285   0x63c9a  4      
  leal (%r8,%rax,2), %r8d             #  286   0x63c9e  4      
  nop                                 #  287   0x63ca2  1      
.L_63e00:                             #        0x63ca3  0      
  leal 0x130(,%r8,4), %eax            #  288   0x63ca3  8      
  cltq                                #  289   0x63cab  2      
  movl %eax, %eax                     #  290   0x63cad  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  291   0x63caf  8      
  testq %rax, %rax                    #  292   0x63cb7  3      
  je .L_647c0                         #  293   0x63cba  6      
  xorl %ecx, %ecx                     #  294   0x63cc0  2      
  nop                                 #  295   0x63cc2  1      
  cmpl $0x1f, %r8d                    #  296   0x63cc3  4      
  je .L_63e40                         #  297   0x63cc7  6      
  movl %r8d, %esi                     #  298   0x63ccd  3      
  movb $0x19, %cl                     #  299   0x63cd0  2      
  shrl $0x1, %esi                     #  300   0x63cd2  2      
  subl %esi, %ecx                     #  301   0x63cd4  2      
  xchgw %ax, %ax                      #  302   0x63cd6  3      
  nop                                 #  303   0x63cd9  1      
.L_63e40:                             #        0x63cda  0      
  movl %ebx, %r9d                     #  304   0x63cda  3      
  xorl %r11d, %r11d                   #  305   0x63cdd  3      
  xorl %esi, %esi                     #  306   0x63ce0  2      
  shll %cl, %r9d                      #  307   0x63ce2  3      
  movl %edx, %ecx                     #  308   0x63ce5  2      
  jmpq .L_63ee0                       #  309   0x63ce7  5      
  nop                                 #  310   0x63cec  1      
.L_63e60:                             #        0x63ced  0      
  movl %ecx, %edx                     #  311   0x63ced  2      
  nop                                 #  312   0x63cef  1      
  nop                                 #  313   0x63cf0  1      
.L_63e80:                             #        0x63cf1  0      
  movl %r9d, %ecx                     #  314   0x63cf1  3      
  movl %eax, %eax                     #  315   0x63cf4  2      
  movl 0x14(%r15,%rax,1), %r10d       #  316   0x63cf6  5      
  shrl $0x1f, %ecx                    #  317   0x63cfb  3      
  addl $0x4, %ecx                     #  318   0x63cfe  3      
  shll $0x2, %ecx                     #  319   0x63d01  3      
  movslq %ecx, %rcx                   #  320   0x63d04  3      
  addq %rcx, %rax                     #  321   0x63d07  3      
  movl %eax, %eax                     #  322   0x63d0a  2      
  movl (%r15,%rax,1), %ecx            #  323   0x63d0c  4      
  nop                                 #  324   0x63d10  1      
  cmpl %ecx, %r10d                    #  325   0x63d11  3      
  je .L_63f20                         #  326   0x63d14  6      
  testq %r10, %r10                    #  327   0x63d1a  3      
  movq %r10, %rax                     #  328   0x63d1d  3      
  je .L_63f20                         #  329   0x63d20  6      
  nop                                 #  330   0x63d26  1      
  nop                                 #  331   0x63d27  1      
.L_63ec0:                             #        0x63d28  0      
  testq %rcx, %rcx                    #  332   0x63d28  3      
  je .L_64460                         #  333   0x63d2b  6      
  movq %rax, %r11                     #  334   0x63d31  3      
  addl %r9d, %r9d                     #  335   0x63d34  3      
  movq %rcx, %rax                     #  336   0x63d37  3      
  movl %edx, %ecx                     #  337   0x63d3a  2      
  nop                                 #  338   0x63d3c  1      
.L_63ee0:                             #        0x63d3d  0      
  movl %eax, %eax                     #  339   0x63d3d  2      
  movl 0x4(%r15,%rax,1), %edx         #  340   0x63d3f  5      
  andl $0xfffffff8, %edx              #  341   0x63d44  6      
  subl %ebx, %edx                     #  342   0x63d4a  2      
  cmpl %ecx, %edx                     #  343   0x63d4c  2      
  jae .L_63e60                        #  344   0x63d4e  6      
  testl %edx, %edx                    #  345   0x63d54  2      
  je .L_64440                         #  346   0x63d56  6      
  movq %rax, %rsi                     #  347   0x63d5c  3      
  nop                                 #  348   0x63d5f  1      
  jmpq .L_63e80                       #  349   0x63d60  5      
  nop                                 #  350   0x63d65  1      
  nop                                 #  351   0x63d66  1      
.L_63f20:                             #        0x63d67  0      
  movq %r11, %rax                     #  352   0x63d67  3      
  jmpq .L_63ec0                       #  353   0x63d6a  5      
  nop                                 #  354   0x63d6f  1      
  nop                                 #  355   0x63d70  1      
.L_63f40:                             #        0x63d71  0      
  movl 0xffd2b18(%rip), %r12d         #  356   0x63d71  7      
  testl %r12d, %r12d                  #  357   0x63d78  3      
  je .L_64a80                         #  358   0x63d7b  6      
  nop                                 #  359   0x63d81  1      
  nop                                 #  360   0x63d82  1      
.L_63f60:                             #        0x63d83  0      
  testb $0x1, 0xffd2cf2(%rip)         #  361   0x63d83  7      
  je .L_63fc0                         #  362   0x63d8a  6      
  cmpl %ebx, 0xffd2b06(%rip)          #  363   0x63d90  6      
  ja .L_63fc0                         #  364   0x63d96  6      
  movl 0xffd2b29(%rip), %r11d         #  365   0x63d9c  7      
  testl %r11d, %r11d                  #  366   0x63da3  3      
  nop                                 #  367   0x63da6  1      
  je .L_63fc0                         #  368   0x63da7  6      
  movl 0xffd2ae1(%rip), %eax          #  369   0x63dad  6      
  leal 0x1e(%rax,%rbx,1), %r12d       #  370   0x63db3  5      
  negl %eax                           #  371   0x63db8  2      
  andl %eax, %r12d                    #  372   0x63dba  3      
  movl 0xffd2cb5(%rip), %eax          #  373   0x63dbd  6      
  testl %eax, %eax                    #  374   0x63dc3  2      
  jne .L_64700                        #  375   0x63dc5  6      
.L_63fa0:                             #        0x63dcb  0      
  cmpl %ebx, %r12d                    #  376   0x63dcb  3      
  ja .L_64b00                         #  377   0x63dce  6      
  nop                                 #  378   0x63dd4  1      
  nop                                 #  379   0x63dd5  1      
.L_63fc0:                             #        0x63dd6  0      
  movl 0xffd2abc(%rip), %eax          #  380   0x63dd6  6      
  leal 0x2f(%rax,%rbx,1), %r12d       #  381   0x63ddc  5      
  negl %eax                           #  382   0x63de1  2      
  andl %eax, %r12d                    #  383   0x63de3  3      
  cmpl %ebx, %r12d                    #  384   0x63de6  3      
  jbe .L_64760                        #  385   0x63de9  6      
  movl 0xffd2c83(%rip), %eax          #  386   0x63def  6      
  nop                                 #  387   0x63df5  1      
  testl %eax, %eax                    #  388   0x63df6  2      
  jne .L_64740                        #  389   0x63df8  6      
  nop                                 #  390   0x63dfe  1      
  nop                                 #  391   0x63dff  1      
.L_64000:                             #        0x63e00  0      
  xorl %edi, %edi                     #  392   0x63e00  2      
  xorl %r9d, %r9d                     #  393   0x63e02  3      
  movl $0xffffffff, %r8d              #  394   0x63e05  6      
  movl $0x22, %ecx                    #  395   0x63e0b  5      
  movl $0x3, %edx                     #  396   0x63e10  5      
  movl %r12d, %esi                    #  397   0x63e15  3      
  nop                                 #  398   0x63e18  1      
  callq .mmap                         #  399   0x63e19  5      
  movl %eax, %edi                     #  400   0x63e1e  2      
  cmpl $0xffffffff, %edi              #  401   0x63e20  6      
  je .L_656e0                         #  402   0x63e26  6      
  movl 0xffd2c3e(%rip), %eax          #  403   0x63e2c  6      
  addl %r12d, %eax                    #  404   0x63e32  3      
  cmpl 0xffd2c39(%rip), %eax          #  405   0x63e35  6      
  movl %eax, 0xffd2c2f(%rip)          #  406   0x63e3b  6      
  jbe .L_64060                        #  407   0x63e41  6      
  movl %eax, 0xffd2c27(%rip)          #  408   0x63e47  6      
  nop                                 #  409   0x63e4d  1      
  nop                                 #  410   0x63e4e  1      
.L_64060:                             #        0x63e4f  0      
  movl 0xffd2a83(%rip), %eax          #  411   0x63e4f  6      
  testq %rax, %rax                    #  412   0x63e55  3      
  je .L_65500                         #  413   0x63e58  6      
  movl 0xffd2c1f(%rip), %r9d          #  414   0x63e5e  7      
  movl 0xffd2c1d(%rip), %ecx          #  415   0x63e65  6      
  nop                                 #  416   0x63e6b  1      
  movl $0x10036a84, %r8d              #  417   0x63e6c  6      
  movl %r8d, %edx                     #  418   0x63e72  3      
  addl %r9d, %ecx                     #  419   0x63e75  3      
  cmpl %edi, %ecx                     #  420   0x63e78  2      
  jne .L_640c0                        #  421   0x63e7a  6      
  jmpq .L_64ce0                       #  422   0x63e80  5      
  nop                                 #  423   0x63e85  1      
.L_640a0:                             #        0x63e86  0      
  movl %edx, %edx                     #  424   0x63e86  2      
  movl (%r15,%rdx,1), %ecx            #  425   0x63e88  4      
  movl %edx, %edx                     #  426   0x63e8c  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  427   0x63e8e  5      
  cmpl %edi, %ecx                     #  428   0x63e93  2      
  je .L_64ce0                         #  429   0x63e95  6      
  nop                                 #  430   0x63e9b  1      
.L_640c0:                             #        0x63e9c  0      
  movl %edx, %edx                     #  431   0x63e9c  2      
  movl 0x8(%r15,%rdx,1), %edx         #  432   0x63e9e  5      
  testq %rdx, %rdx                    #  433   0x63ea3  3      
  jne .L_640a0                        #  434   0x63ea6  6      
  nop                                 #  435   0x63eac  1      
  nop                                 #  436   0x63ead  1      
.L_640e0:                             #        0x63eae  0      
  cmpl %edi, 0xffd2a1c(%rip)          #  437   0x63eae  6      
  jbe .L_64100                        #  438   0x63eb4  6      
  movl %edi, 0xffd2a10(%rip)          #  439   0x63eba  6      
  nop                                 #  440   0x63ec0  1      
  nop                                 #  441   0x63ec1  1      
.L_64100:                             #        0x63ec2  0      
  leal (%r12,%rdi,1), %esi            #  442   0x63ec2  4      
  cmpl %esi, %r9d                     #  443   0x63ec6  3      
  je .L_64da0                         #  444   0x63ec9  6      
  movl %r8d, %ecx                     #  445   0x63ecf  3      
  jmpq .L_64140                       #  446   0x63ed2  5      
  nop                                 #  447   0x63ed7  1      
.L_64120:                             #        0x63ed8  0      
  movl %ecx, %ecx                     #  448   0x63ed8  2      
  cmpl %esi, (%r15,%rcx,1)            #  449   0x63eda  4      
  je .L_64dc0                         #  450   0x63ede  6      
  nop                                 #  451   0x63ee4  1      
  nop                                 #  452   0x63ee5  1      
.L_64140:                             #        0x63ee6  0      
  movl %ecx, %ecx                     #  453   0x63ee6  2      
  movl 0x8(%r15,%rcx,1), %ecx         #  454   0x63ee8  5      
  testq %rcx, %rcx                    #  455   0x63eed  3      
  jne .L_64120                        #  456   0x63ef0  6      
  nop                                 #  457   0x63ef6  1      
  nop                                 #  458   0x63ef7  1      
.L_64160:                             #        0x63ef8  0      
  movl %r8d, %edx                     #  459   0x63ef8  3      
  nop                                 #  460   0x63efb  1      
  nop                                 #  461   0x63efc  1      
.L_64180:                             #        0x63efd  0      
  movl %edx, %edx                     #  462   0x63efd  2      
  movl (%r15,%rdx,1), %ecx            #  463   0x63eff  4      
  cmpl %ecx, %eax                     #  464   0x63f03  2      
  jb .L_641a0                         #  465   0x63f05  6      
  movl %edx, %edx                     #  466   0x63f0b  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  467   0x63f0d  5      
  cmpl %ecx, %eax                     #  468   0x63f12  2      
  jb .L_641c0                         #  469   0x63f14  6      
  nop                                 #  470   0x63f1a  1      
.L_641a0:                             #        0x63f1b  0      
  movl %edx, %edx                     #  471   0x63f1b  2      
  movl 0x8(%r15,%rdx,1), %edx         #  472   0x63f1d  5      
  testq %rdx, %rdx                    #  473   0x63f22  3      
  jne .L_64180                        #  474   0x63f25  6      
  movl %edx, %edx                     #  475   0x63f2b  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  476   0x63f2d  5      
  movl %edx, %edx                     #  477   0x63f32  2      
  addl (%r15,%rdx,1), %ecx            #  478   0x63f34  4      
  nop                                 #  479   0x63f38  1      
.L_641c0:                             #        0x63f39  0      
  leal -0x2f(%rcx), %edx              #  480   0x63f39  3      
  xorl %esi, %esi                     #  481   0x63f3c  2      
  movl %edx, %r8d                     #  482   0x63f3e  3      
  andl $0x7, %r8d                     #  483   0x63f41  4      
  je .L_641e0                         #  484   0x63f45  6      
  movl %r8d, %esi                     #  485   0x63f4b  3      
  negl %esi                           #  486   0x63f4e  2      
  andl $0x7, %esi                     #  487   0x63f50  3      
  nop                                 #  488   0x63f53  1      
.L_641e0:                             #        0x63f54  0      
  addl %edx, %esi                     #  489   0x63f54  2      
  leal 0x10(%rax), %edx               #  490   0x63f56  3      
  cmpl %esi, %edx                     #  491   0x63f59  2      
  movl %edi, %edx                     #  492   0x63f5b  2      
  cmovaq %rax, %rsi                   #  493   0x63f5d  4      
  xorl %r9d, %r9d                     #  494   0x63f61  3      
  andl $0x7, %edx                     #  495   0x63f64  3      
  leal 0x8(%rsi), %r10d               #  496   0x63f67  4      
  je .L_64220                         #  497   0x63f6b  6      
  movl %edx, %r9d                     #  498   0x63f71  3      
  negl %r9d                           #  499   0x63f74  3      
  nop                                 #  500   0x63f77  1      
  andl $0x7, %r9d                     #  501   0x63f78  4      
  nop                                 #  502   0x63f7c  1      
  nop                                 #  503   0x63f7d  1      
.L_64220:                             #        0x63f7e  0      
  leal -0x28(%r12), %r8d              #  504   0x63f7e  5      
  leal (%r9,%rdi,1), %r11d            #  505   0x63f83  4      
  leal 0x18(%rsi), %edx               #  506   0x63f87  3      
  subl %r9d, %r8d                     #  507   0x63f8a  3      
  movl %r11d, 0xffd2944(%rip)         #  508   0x63f8d  7      
  movl %r8d, %r9d                     #  509   0x63f94  3      
  movl %r8d, 0xffd292e(%rip)          #  510   0x63f97  7      
  addl %r11d, %r8d                    #  511   0x63f9e  3      
  orl $0x1, %r9d                      #  512   0x63fa1  4      
  movl %r11d, %r11d                   #  513   0x63fa5  3      
  movl %r9d, 0x4(%r15,%r11,1)         #  514   0x63fa8  5      
  movl %r8d, %r8d                     #  515   0x63fad  3      
  movl $0x28, 0x4(%r15,%r8,1)         #  516   0x63fb0  9      
  nop                                 #  517   0x63fb9  1      
  movl 0xffd28df(%rip), %r8d          #  518   0x63fba  7      
  movl %r8d, 0xffd2914(%rip)          #  519   0x63fc1  7      
  movl %esi, %esi                     #  520   0x63fc8  2      
  movl $0x1b, 0x4(%r15,%rsi,1)        #  521   0x63fca  9      
  movq 0xffd2aaa(%rip), %r8           #  522   0x63fd3  7      
  movl %r10d, %r10d                   #  523   0x63fda  3      
  movq %r8, (%r15,%r10,1)             #  524   0x63fdd  4      
  movq 0xffd2aa4(%rip), %r8           #  525   0x63fe1  7      
  movl %r10d, %r10d                   #  526   0x63fe8  3      
  movq %r8, 0x8(%r15,%r10,1)          #  527   0x63feb  5      
  movl %edi, 0xffd2a8e(%rip)          #  528   0x63ff0  6      
  nop                                 #  529   0x63ff6  1      
  movl %r12d, 0xffd2a8a(%rip)         #  530   0x63ff7  7      
  movl $0x1, 0xffd2a88(%rip)          #  531   0x63ffe  10     
  movl %r10d, 0xffd2a7d(%rip)         #  532   0x64008  7      
  nop                                 #  533   0x6400f  1      
.L_642c0:                             #        0x64010  0      
  addl $0x4, %edx                     #  534   0x64010  3      
  leal 0x4(%rdx), %edi                #  535   0x64013  3      
  movl %edx, %edx                     #  536   0x64016  2      
  movl $0x7, (%r15,%rdx,1)            #  537   0x64018  8      
  cmpl %ecx, %edi                     #  538   0x64020  2      
  jb .L_642c0                         #  539   0x64022  6      
  cmpl %esi, %eax                     #  540   0x64028  2      
  je .L_64360                         #  541   0x6402a  6      
  subl %eax, %esi                     #  542   0x64030  2      
  xchgw %ax, %ax                      #  543   0x64032  3      
  leal (%rsi,%rax,1), %edx            #  544   0x64035  3      
  movl %esi, %ecx                     #  545   0x64038  2      
  orl $0x1, %ecx                      #  546   0x6403a  3      
  movl %edx, %edx                     #  547   0x6403d  2      
  andl $0xfffffffe, 0x4(%r15,%rdx,1)  #  548   0x6403f  9      
  movl %eax, %eax                     #  549   0x64048  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  550   0x6404a  5      
  movl %esi, %ecx                     #  551   0x6404f  2      
  shrl $0x3, %ecx                     #  552   0x64051  3      
  nop                                 #  553   0x64054  1      
  movl %edx, %edx                     #  554   0x64055  2      
  movl %esi, (%r15,%rdx,1)            #  555   0x64057  4      
  cmpl $0x1f, %ecx                    #  556   0x6405b  3      
  ja .L_64f20                         #  557   0x6405e  6      
  movl 0xffd2856(%rip), %edi          #  558   0x64064  6      
  movl $0x1, %edx                     #  559   0x6406a  5      
  nop                                 #  560   0x6406f  1      
  leal 0x100368e8(,%rcx,8), %esi      #  561   0x64070  7      
  shll %cl, %edx                      #  562   0x64077  2      
  testl %edi, %edx                    #  563   0x64079  2      
  jne .L_653a0                        #  564   0x6407b  6      
  orl %edi, %edx                      #  565   0x64081  2      
  movl %edx, 0xffd2837(%rip)          #  566   0x64083  6      
  movq %rsi, %rdx                     #  567   0x64089  3      
  nop                                 #  568   0x6408c  1      
.L_64340:                             #        0x6408d  0      
  movl %esi, %esi                     #  569   0x6408d  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  570   0x6408f  5      
  movl %edx, %edx                     #  571   0x64094  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  572   0x64096  5      
  movl %eax, %eax                     #  573   0x6409b  2      
  movl %edx, 0x8(%r15,%rax,1)         #  574   0x6409d  5      
  movl %eax, %eax                     #  575   0x640a2  2      
  movl %esi, 0xc(%r15,%rax,1)         #  576   0x640a4  5      
  nop                                 #  577   0x640a9  1      
.L_64360:                             #        0x640aa  0      
  movl 0xffd281c(%rip), %eax          #  578   0x640aa  6      
  cmpl %ebx, %eax                     #  579   0x640b0  2      
  jbe .L_656e0                        #  580   0x640b2  6      
  movl %eax, %ecx                     #  581   0x640b8  2      
  movl 0xffd2818(%rip), %eax          #  582   0x640ba  6      
  subl %ebx, %ecx                     #  583   0x640c0  2      
  movl %ecx, 0xffd2804(%rip)          #  584   0x640c2  6      
  xchgw %ax, %ax                      #  585   0x640c8  3      
  orl $0x1, %ecx                      #  586   0x640cb  3      
  leal (%rbx,%rax,1), %edx            #  587   0x640ce  3      
  orl $0x3, %ebx                      #  588   0x640d1  3      
  movl %edx, %edx                     #  589   0x640d4  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  590   0x640d6  5      
  movl %edx, 0xffd27f7(%rip)          #  591   0x640db  6      
  movl %eax, %eax                     #  592   0x640e1  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  593   0x640e3  5      
  nop                                 #  594   0x640e8  1      
  jmpq .L_63b40                       #  595   0x640e9  5      
  nop                                 #  596   0x640ee  1      
  nop                                 #  597   0x640ef  1      
.L_643c0:                             #        0x640f0  0      
  movl 0xffd27ce(%rip), %eax          #  598   0x640f0  6      
  testl %eax, %eax                    #  599   0x640f6  2      
  je .L_63a40                         #  600   0x640f8  6      
  movl %eax, %edx                     #  601   0x640fe  2      
  negl %edx                           #  602   0x64100  2      
  andl %eax, %edx                     #  603   0x64102  2      
  bsfl %edx, %eax                     #  604   0x64104  3      
  leal 0x130(,%rax,4), %eax           #  605   0x64107  7      
  cltq                                #  606   0x6410e  2      
  movl %eax, %eax                     #  607   0x64110  2      
  movl 0x100368c0(%r15,%rax,1), %esi  #  608   0x64112  8      
  movl %esi, %esi                     #  609   0x6411a  2      
  movl 0x4(%r15,%rsi,1), %edx         #  610   0x6411c  5      
  movq %rsi, %rax                     #  611   0x64121  3      
  andl $0xfffffff8, %edx              #  612   0x64124  6      
  subl %ebx, %edx                     #  613   0x6412a  2      
  nop                                 #  614   0x6412c  1      
.L_64400:                             #        0x6412d  0      
  movl %esi, %esi                     #  615   0x6412d  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  616   0x6412f  5      
  testq %rcx, %rcx                    #  617   0x64134  3      
  je .L_64800                         #  618   0x64137  6      
  movq %rcx, %rsi                     #  619   0x6413d  3      
  nop                                 #  620   0x64140  1      
.L_64420:                             #        0x64141  0      
  movl %esi, %esi                     #  621   0x64141  2      
  movl 0x4(%r15,%rsi,1), %ecx         #  622   0x64143  5      
  andl $0xfffffff8, %ecx              #  623   0x64148  6      
  subl %ebx, %ecx                     #  624   0x6414e  2      
  cmpl %edx, %ecx                     #  625   0x64150  2      
  jae .L_64720                        #  626   0x64152  6      
  movq %rsi, %rax                     #  627   0x64158  3      
  movl %ecx, %edx                     #  628   0x6415b  2      
  jmpq .L_64400                       #  629   0x6415d  5      
  nop                                 #  630   0x64162  1      
.L_64440:                             #        0x64163  0      
  movq %rax, %rsi                     #  631   0x64163  3      
  nop                                 #  632   0x64166  1      
  nop                                 #  633   0x64167  1      
.L_64460:                             #        0x64168  0      
  testq %rsi, %rsi                    #  634   0x64168  3      
  je .L_647a0                         #  635   0x6416b  6      
  nop                                 #  636   0x64171  1      
  nop                                 #  637   0x64172  1      
.L_64480:                             #        0x64173  0      
  testq %rax, %rax                    #  638   0x64173  3      
  jne .L_644c0                        #  639   0x64176  6      
  jmpq .L_64500                       #  640   0x6417c  5      
  nop                                 #  641   0x64181  1      
  nop                                 #  642   0x64182  1      
.L_644a0:                             #        0x64183  0      
  movq %rcx, %rax                     #  643   0x64183  3      
  nop                                 #  644   0x64186  1      
  nop                                 #  645   0x64187  1      
.L_644c0:                             #        0x64188  0      
  movl %eax, %eax                     #  646   0x64188  2      
  movl 0x4(%r15,%rax,1), %ecx         #  647   0x6418a  5      
  andl $0xfffffff8, %ecx              #  648   0x6418f  6      
  subl %ebx, %ecx                     #  649   0x64195  2      
  cmpl %edx, %ecx                     #  650   0x64197  2      
  jae .L_644e0                        #  651   0x64199  6      
  movl %ecx, %edx                     #  652   0x6419f  2      
  movq %rax, %rsi                     #  653   0x641a1  3      
  nop                                 #  654   0x641a4  1      
.L_644e0:                             #        0x641a5  0      
  movl %eax, %eax                     #  655   0x641a5  2      
  movl 0x10(%r15,%rax,1), %ecx        #  656   0x641a7  5      
  testq %rcx, %rcx                    #  657   0x641ac  3      
  jne .L_644a0                        #  658   0x641af  6      
  movl %eax, %eax                     #  659   0x641b5  2      
  movl 0x14(%r15,%rax,1), %eax        #  660   0x641b7  5      
  testq %rax, %rax                    #  661   0x641bc  3      
  jne .L_644c0                        #  662   0x641bf  6      
  nop                                 #  663   0x641c5  1      
.L_64500:                             #        0x641c6  0      
  testq %rsi, %rsi                    #  664   0x641c6  3      
  je .L_63c00                         #  665   0x641c9  6      
  movl 0xffd26f2(%rip), %r8d          #  666   0x641cf  7      
  movl %r8d, %eax                     #  667   0x641d6  3      
  subl %ebx, %eax                     #  668   0x641d9  2      
  cmpl %edx, %eax                     #  669   0x641db  2      
  jbe .L_63a20                        #  670   0x641dd  6      
  nop                                 #  671   0x641e3  1      
  movl 0xffd26e6(%rip), %edi          #  672   0x641e4  6      
  cmpl %esi, %edi                     #  673   0x641ea  2      
  ja .L_64ae0                         #  674   0x641ec  6      
  leal (%rbx,%rsi,1), %eax            #  675   0x641f2  3      
  cmpl %eax, %esi                     #  676   0x641f5  2      
  jae .L_64ae0                        #  677   0x641f7  6      
  movl %esi, %esi                     #  678   0x641fd  2      
  movl 0xc(%r15,%rsi,1), %r8d         #  679   0x641ff  5      
  movl %esi, %esi                     #  680   0x64204  2      
  movl 0x18(%r15,%rsi,1), %r10d       #  681   0x64206  5      
  cmpl %r8d, %esi                     #  682   0x6420b  3      
  je .L_65260                         #  683   0x6420e  6      
  movl %esi, %esi                     #  684   0x64214  2      
  movl 0x8(%r15,%rsi,1), %ecx         #  685   0x64216  5      
  cmpl %ecx, %edi                     #  686   0x6421b  2      
  ja .L_64ae0                         #  687   0x6421d  6      
  nop                                 #  688   0x64223  1      
  movl %ecx, %ecx                     #  689   0x64224  2      
  cmpl %esi, 0xc(%r15,%rcx,1)         #  690   0x64226  5      
  jne .L_64ae0                        #  691   0x6422b  6      
  movl %r8d, %r8d                     #  692   0x64231  3      
  cmpl %esi, 0x8(%r15,%r8,1)          #  693   0x64234  5      
  jne .L_64ae0                        #  694   0x64239  6      
  nop                                 #  695   0x6423f  1      
  movl %ecx, %ecx                     #  696   0x64240  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  697   0x64242  5      
  movl %r8d, %r8d                     #  698   0x64247  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  699   0x6424a  5      
  xchgw %ax, %ax                      #  700   0x6424f  3      
  nop                                 #  701   0x64252  1      
.L_645a0:                             #        0x64253  0      
  testq %r10, %r10                    #  702   0x64253  3      
  je .L_646a0                         #  703   0x64256  6      
  movl %esi, %esi                     #  704   0x6425c  2      
  movl 0x1c(%r15,%rsi,1), %ecx        #  705   0x6425e  5      
  leal 0x130(,%rcx,4), %r9d           #  706   0x64263  8      
  movslq %r9d, %r9                    #  707   0x6426b  3      
  nop                                 #  708   0x6426e  1      
  movl %r9d, %r9d                     #  709   0x6426f  3      
  cmpl %esi, 0x100368c0(%r15,%r9,1)   #  710   0x64272  8      
  je .L_65360                         #  711   0x6427a  6      
  cmpl %r10d, 0xffd2649(%rip)         #  712   0x64280  7      
  ja .L_64ae0                         #  713   0x64287  6      
  xchgw %ax, %ax                      #  714   0x6428d  3      
  movl %r10d, %r10d                   #  715   0x64290  3      
  cmpl %esi, 0x10(%r15,%r10,1)        #  716   0x64293  5      
  je .L_65620                         #  717   0x64298  6      
  movl %r10d, %r10d                   #  718   0x6429e  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  719   0x642a1  5      
  nop                                 #  720   0x642a6  1      
.L_64600:                             #        0x642a7  0      
  testq %r8, %r8                      #  721   0x642a7  3      
  je .L_646a0                         #  722   0x642aa  6      
  nop                                 #  723   0x642b0  1      
  nop                                 #  724   0x642b1  1      
.L_64620:                             #        0x642b2  0      
  cmpl %r8d, %edi                     #  725   0x642b2  3      
  ja .L_64ae0                         #  726   0x642b5  6      
  movl %esi, %esi                     #  727   0x642bb  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  728   0x642bd  5      
  movl %r8d, %r8d                     #  729   0x642c2  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  730   0x642c5  5      
  testq %rcx, %rcx                    #  731   0x642ca  3      
  nop                                 #  732   0x642cd  1      
  je .L_64660                         #  733   0x642ce  6      
  cmpl %ecx, %edi                     #  734   0x642d4  2      
  ja .L_64ae0                         #  735   0x642d6  6      
  movl %r8d, %r8d                     #  736   0x642dc  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  737   0x642df  5      
  movl %ecx, %ecx                     #  738   0x642e4  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  739   0x642e6  5      
  nop                                 #  740   0x642eb  1      
.L_64660:                             #        0x642ec  0      
  movl %esi, %esi                     #  741   0x642ec  2      
  movl 0x14(%r15,%rsi,1), %ecx        #  742   0x642ee  5      
  testq %rcx, %rcx                    #  743   0x642f3  3      
  je .L_646a0                         #  744   0x642f6  6      
  cmpl %ecx, %edi                     #  745   0x642fc  2      
  ja .L_64ae0                         #  746   0x642fe  6      
  movl %r8d, %r8d                     #  747   0x64304  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  748   0x64307  5      
  nop                                 #  749   0x6430c  1      
  movl %ecx, %ecx                     #  750   0x6430d  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  751   0x6430f  5      
  nop                                 #  752   0x64314  1      
  nop                                 #  753   0x64315  1      
.L_646a0:                             #        0x64316  0      
  cmpl $0xf, %edx                     #  754   0x64316  3      
  ja .L_64c20                         #  755   0x64319  6      
  leal (%rdx,%rbx,1), %eax            #  756   0x6431f  3      
  movl %eax, %edx                     #  757   0x64322  2      
  addl %esi, %eax                     #  758   0x64324  2      
  orl $0x3, %edx                      #  759   0x64326  3      
  movl %esi, %esi                     #  760   0x64329  2      
  movl %edx, 0x4(%r15,%rsi,1)         #  761   0x6432b  5      
  nop                                 #  762   0x64330  1      
  movl %eax, %eax                     #  763   0x64331  2      
  orl $0x1, 0x4(%r15,%rax,1)          #  764   0x64333  6      
  nop                                 #  765   0x64339  1      
  nop                                 #  766   0x6433a  1      
.L_646e0:                             #        0x6433b  0      
  leal 0x8(%rsi), %eax                #  767   0x6433b  3      
  testq %rax, %rax                    #  768   0x6433e  3      
  jne .L_63a80                        #  769   0x64341  6      
  jmpq .L_63c00                       #  770   0x64347  5      
  nop                                 #  771   0x6434c  1      
.L_64700:                             #        0x6434d  0      
  movl 0xffd271d(%rip), %edx          #  772   0x6434d  6      
  leal (%r12,%rdx,1), %ecx            #  773   0x64353  4      
  cmpl %ecx, %edx                     #  774   0x64357  2      
  jae .L_63fc0                        #  775   0x64359  6      
  cmpl %ecx, %eax                     #  776   0x6435f  2      
  jb .L_63fc0                         #  777   0x64361  6      
  jmpq .L_63fa0                       #  778   0x64367  5      
  nop                                 #  779   0x6436c  1      
.L_64720:                             #        0x6436d  0      
  movl %edx, %ecx                     #  780   0x6436d  2      
  movl %ecx, %edx                     #  781   0x6436f  2      
  jmpq .L_64400                       #  782   0x64371  5      
  nop                                 #  783   0x64376  1      
  nop                                 #  784   0x64377  1      
.L_64740:                             #        0x64378  0      
  movl 0xffd26f2(%rip), %edx          #  785   0x64378  6      
  leal (%r12,%rdx,1), %ecx            #  786   0x6437e  4      
  cmpl %ecx, %edx                     #  787   0x64382  2      
  jae .L_64760                        #  788   0x64384  6      
  cmpl %ecx, %eax                     #  789   0x6438a  2      
  jae .L_64000                        #  790   0x6438c  6      
  nop                                 #  791   0x64392  1      
.L_64760:                             #        0x64393  0      
  xorl %eax, %eax                     #  792   0x64393  2      
  jmpq .L_63a80                       #  793   0x64395  5      
  nop                                 #  794   0x6439a  1      
  nop                                 #  795   0x6439b  1      
.L_64780:                             #        0x6439c  0      
  movl $0xfffffffe, %ebx              #  796   0x6439c  5      
  roll %cl, %ebx                      #  797   0x643a1  2      
  andl %edx, %ebx                     #  798   0x643a3  2      
  movl %ebx, 0xffd2515(%rip)          #  799   0x643a5  6      
  jmpq .L_639c0                       #  800   0x643ab  5      
  nop                                 #  801   0x643b0  1      
.L_647a0:                             #        0x643b1  0      
  testq %rax, %rax                    #  802   0x643b1  3      
  jne .L_644c0                        #  803   0x643b4  6      
  nop                                 #  804   0x643ba  1      
  nop                                 #  805   0x643bb  1      
.L_647c0:                             #        0x643bc  0      
  movl %r8d, %ecx                     #  806   0x643bc  3      
  movl $0x2, %eax                     #  807   0x643bf  5      
  shll %cl, %eax                      #  808   0x643c4  2      
  movl %eax, %ecx                     #  809   0x643c6  2      
  negl %ecx                           #  810   0x643c8  2      
  orl %eax, %ecx                      #  811   0x643ca  2      
  andl %ecx, %edi                     #  812   0x643cc  2      
  je .L_63c00                         #  813   0x643ce  6      
  movl %edi, %eax                     #  814   0x643d4  2      
  xorl %esi, %esi                     #  815   0x643d6  2      
  negl %eax                           #  816   0x643d8  2      
  andl %edi, %eax                     #  817   0x643da  2      
  bsfl %eax, %eax                     #  818   0x643dc  3      
  leal 0x130(,%rax,4), %eax           #  819   0x643df  7      
  cltq                                #  820   0x643e6  2      
  movl %eax, %eax                     #  821   0x643e8  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  822   0x643ea  8      
  jmpq .L_64480                       #  823   0x643f2  5      
  nop                                 #  824   0x643f7  1      
.L_64800:                             #        0x643f8  0      
  movl %esi, %esi                     #  825   0x643f8  2      
  movl 0x14(%r15,%rsi,1), %esi        #  826   0x643fa  5      
  testq %rsi, %rsi                    #  827   0x643ff  3      
  jne .L_64420                        #  828   0x64402  6      
  movl 0xffd24c2(%rip), %edi          #  829   0x64408  6      
  cmpl %eax, %edi                     #  830   0x6440e  2      
  ja .L_64ae0                         #  831   0x64410  6      
  xchgw %ax, %ax                      #  832   0x64416  3      
  leal (%rbx,%rax,1), %esi            #  833   0x64419  3      
  cmpl %esi, %eax                     #  834   0x6441c  2      
  jae .L_64ae0                        #  835   0x6441e  6      
  movl %eax, %eax                     #  836   0x64424  2      
  movl 0xc(%r15,%rax,1), %r8d         #  837   0x64426  5      
  movl %eax, %eax                     #  838   0x6442b  2      
  movl 0x18(%r15,%rax,1), %r10d       #  839   0x6442d  5      
  cmpl %r8d, %eax                     #  840   0x64432  3      
  nop                                 #  841   0x64435  1      
  je .L_651a0                         #  842   0x64436  6      
  movl %eax, %eax                     #  843   0x6443c  2      
  movl 0x8(%r15,%rax,1), %ecx         #  844   0x6443e  5      
  cmpl %ecx, %edi                     #  845   0x64443  2      
  ja .L_64ae0                         #  846   0x64445  6      
  movl %ecx, %ecx                     #  847   0x6444b  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  848   0x6444d  5      
  nop                                 #  849   0x64452  1      
  jne .L_64ae0                        #  850   0x64453  6      
  movl %r8d, %r8d                     #  851   0x64459  3      
  cmpl %eax, 0x8(%r15,%r8,1)          #  852   0x6445c  5      
  jne .L_64ae0                        #  853   0x64461  6      
  movl %ecx, %ecx                     #  854   0x64467  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  855   0x64469  5      
  nop                                 #  856   0x6446e  1      
  movl %r8d, %r8d                     #  857   0x6446f  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  858   0x64472  5      
  nop                                 #  859   0x64477  1      
  nop                                 #  860   0x64478  1      
.L_648a0:                             #        0x64479  0      
  testq %r10, %r10                    #  861   0x64479  3      
  je .L_649a0                         #  862   0x6447c  6      
  movl %eax, %eax                     #  863   0x64482  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  864   0x64484  5      
  leal 0x130(,%rcx,4), %r9d           #  865   0x64489  8      
  movslq %r9d, %r9                    #  866   0x64491  3      
  nop                                 #  867   0x64494  1      
  movl %r9d, %r9d                     #  868   0x64495  3      
  cmpl %eax, 0x100368c0(%r15,%r9,1)   #  869   0x64498  8      
  je .L_65320                         #  870   0x644a0  6      
  cmpl %r10d, 0xffd2423(%rip)         #  871   0x644a6  7      
  ja .L_64ae0                         #  872   0x644ad  6      
  xchgw %ax, %ax                      #  873   0x644b3  3      
  movl %r10d, %r10d                   #  874   0x644b6  3      
  cmpl %eax, 0x10(%r15,%r10,1)        #  875   0x644b9  5      
  je .L_654e0                         #  876   0x644be  6      
  movl %r10d, %r10d                   #  877   0x644c4  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  878   0x644c7  5      
  nop                                 #  879   0x644cc  1      
.L_64900:                             #        0x644cd  0      
  testq %r8, %r8                      #  880   0x644cd  3      
  je .L_649a0                         #  881   0x644d0  6      
  nop                                 #  882   0x644d6  1      
  nop                                 #  883   0x644d7  1      
.L_64920:                             #        0x644d8  0      
  cmpl %r8d, %edi                     #  884   0x644d8  3      
  ja .L_64ae0                         #  885   0x644db  6      
  movl %eax, %eax                     #  886   0x644e1  2      
  movl 0x10(%r15,%rax,1), %ecx        #  887   0x644e3  5      
  movl %r8d, %r8d                     #  888   0x644e8  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  889   0x644eb  5      
  testq %rcx, %rcx                    #  890   0x644f0  3      
  nop                                 #  891   0x644f3  1      
  je .L_64960                         #  892   0x644f4  6      
  cmpl %ecx, %edi                     #  893   0x644fa  2      
  ja .L_64ae0                         #  894   0x644fc  6      
  movl %r8d, %r8d                     #  895   0x64502  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  896   0x64505  5      
  movl %ecx, %ecx                     #  897   0x6450a  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  898   0x6450c  5      
  nop                                 #  899   0x64511  1      
.L_64960:                             #        0x64512  0      
  movl %eax, %eax                     #  900   0x64512  2      
  movl 0x14(%r15,%rax,1), %ecx        #  901   0x64514  5      
  testq %rcx, %rcx                    #  902   0x64519  3      
  je .L_649a0                         #  903   0x6451c  6      
  cmpl %ecx, %edi                     #  904   0x64522  2      
  ja .L_64ae0                         #  905   0x64524  6      
  movl %r8d, %r8d                     #  906   0x6452a  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  907   0x6452d  5      
  nop                                 #  908   0x64532  1      
  movl %ecx, %ecx                     #  909   0x64533  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  910   0x64535  5      
  nop                                 #  911   0x6453a  1      
  nop                                 #  912   0x6453b  1      
.L_649a0:                             #        0x6453c  0      
  cmpl $0xf, %edx                     #  913   0x6453c  3      
  jbe .L_64cc0                        #  914   0x6453f  6      
  movl %ebx, %ecx                     #  915   0x64545  2      
  orl $0x3, %ecx                      #  916   0x64547  3      
  movl %eax, %eax                     #  917   0x6454a  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  918   0x6454c  5      
  movl %edx, %ecx                     #  919   0x64551  2      
  orl $0x1, %ecx                      #  920   0x64553  3      
  nop                                 #  921   0x64556  1      
  movl %esi, %esi                     #  922   0x64557  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  923   0x64559  5      
  leal (%rdx,%rsi,1), %ecx            #  924   0x6455e  3      
  movl %ecx, %ecx                     #  925   0x64561  2      
  movl %edx, (%r15,%rcx,1)            #  926   0x64563  4      
  movl 0xffd235b(%rip), %ecx          #  927   0x64567  6      
  testl %ecx, %ecx                    #  928   0x6456d  2      
  je .L_64a40                         #  929   0x6456f  6      
  nop                                 #  930   0x64575  1      
  movl 0xffd2343(%rip), %r10d         #  931   0x64576  7      
  shrl $0x3, %ecx                     #  932   0x6457d  3      
  movl $0x1, %r8d                     #  933   0x64580  6      
  shll %cl, %r8d                      #  934   0x64586  3      
  movl 0xffd2345(%rip), %edi          #  935   0x64589  6      
  nop                                 #  936   0x6458f  1      
  leal 0x100368e8(,%rcx,8), %r9d      #  937   0x64590  8      
  testl %r10d, %r8d                   #  938   0x64598  3      
  jne .L_65180                        #  939   0x6459b  6      
  orl %r10d, %r8d                     #  940   0x645a1  3      
  movq %r9, %rcx                      #  941   0x645a4  3      
  movl %r8d, 0xffd2312(%rip)          #  942   0x645a7  7      
  xchgw %ax, %ax                      #  943   0x645ae  3      
.L_64a20:                             #        0x645b1  0      
  movl %r9d, %r9d                     #  944   0x645b1  3      
  movl %edi, 0x8(%r15,%r9,1)          #  945   0x645b4  5      
  movl %ecx, %ecx                     #  946   0x645b9  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  947   0x645bb  5      
  movl %edi, %edi                     #  948   0x645c0  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  949   0x645c2  5      
  movl %edi, %edi                     #  950   0x645c7  2      
  movl %r9d, 0xc(%r15,%rdi,1)         #  951   0x645c9  5      
  nop                                 #  952   0x645ce  1      
.L_64a40:                             #        0x645cf  0      
  movl %edx, 0xffd22f3(%rip)          #  953   0x645cf  6      
  movl %esi, 0xffd22f9(%rip)          #  954   0x645d5  6      
  nop                                 #  955   0x645db  1      
  nop                                 #  956   0x645dc  1      
.L_64a60:                             #        0x645dd  0      
  addl $0x8, %eax                     #  957   0x645dd  3      
  testq %rax, %rax                    #  958   0x645e0  3      
  jne .L_63a80                        #  959   0x645e3  6      
  jmpq .L_63c00                       #  960   0x645e9  5      
  nop                                 #  961   0x645ee  1      
.L_64a80:                             #        0x645ef  0      
  nop                                 #  962   0x645ef  1      
  nop                                 #  963   0x645f0  1      
  callq .init_mparams                 #  964   0x645f1  5      
  jmpq .L_63f60                       #  965   0x645f6  5      
  nop                                 #  966   0x645fb  1      
  nop                                 #  967   0x645fc  1      
.L_64ac0:                             #        0x645fd  0      
  movl %edi, %edi                     #  968   0x645fd  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  969   0x645ff  5      
  cmpl %ecx, 0xffd22c6(%rip)          #  970   0x64604  6      
  jbe .L_63d80                        #  971   0x6460a  6      
  nop                                 #  972   0x64610  1      
.L_64ae0:                             #        0x64611  0      
  nop                                 #  973   0x64611  1      
  nop                                 #  974   0x64612  1      
  callq .abort                        #  975   0x64613  5      
.L_64b00:                             #        0x64618  0      
  xorl %r9d, %r9d                     #  976   0x64618  3      
  movl $0x3, %edx                     #  977   0x6461b  5      
  xorl %edi, %edi                     #  978   0x64620  2      
  movl $0xffffffff, %r8d              #  979   0x64622  6      
  movl $0x22, %ecx                    #  980   0x64628  5      
  movl %r12d, %esi                    #  981   0x6462d  3      
  nop                                 #  982   0x64630  1      
  callq .mmap                         #  983   0x64631  5      
  movl %eax, %edx                     #  984   0x64636  2      
  cmpl $0xffffffff, %edx              #  985   0x64638  6      
  je .L_63fc0                         #  986   0x6463e  6      
  movl %edx, %eax                     #  987   0x64644  2      
  xorl %ecx, %ecx                     #  988   0x64646  2      
  andl $0x7, %eax                     #  989   0x64648  3      
  je .L_64b40                         #  990   0x6464b  6      
  movl %eax, %ecx                     #  991   0x64651  2      
  negl %ecx                           #  992   0x64653  2      
  andl $0x7, %ecx                     #  993   0x64655  3      
  nop                                 #  994   0x64658  1      
.L_64b40:                             #        0x64659  0      
  leal (%rcx,%rdx,1), %eax            #  995   0x64659  3      
  leal -0x10(%r12), %esi              #  996   0x6465c  5      
  movl %eax, %eax                     #  997   0x64661  2      
  movl %ecx, (%r15,%rax,1)            #  998   0x64663  4      
  subl %ecx, %esi                     #  999   0x64667  2      
  movl 0xffd2261(%rip), %ecx          #  1000  0x64669  6      
  movl %eax, %eax                     #  1001  0x6466f  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1002  0x64671  5      
  addl %eax, %esi                     #  1003  0x64676  2      
  nop                                 #  1004  0x64678  1      
  movl %esi, %esi                     #  1005  0x64679  2      
  movl $0x7, 0x4(%r15,%rsi,1)         #  1006  0x6467b  9      
  movl %esi, %esi                     #  1007  0x64684  2      
  movl $0x0, 0x8(%r15,%rsi,1)         #  1008  0x64686  9      
  testq %rcx, %rcx                    #  1009  0x6468f  3      
  je .L_64ba0                         #  1010  0x64692  6      
  cmpl %ecx, %edx                     #  1011  0x64698  2      
  nop                                 #  1012  0x6469a  1      
  jae .L_64bc0                        #  1013  0x6469b  6      
  nop                                 #  1014  0x646a1  1      
  nop                                 #  1015  0x646a2  1      
.L_64ba0:                             #        0x646a3  0      
  movl %edx, 0xffd2227(%rip)          #  1016  0x646a3  6      
  nop                                 #  1017  0x646a9  1      
  nop                                 #  1018  0x646aa  1      
.L_64bc0:                             #        0x646ab  0      
  addl 0xffd23be(%rip), %r12d         #  1019  0x646ab  7      
  cmpl 0xffd23bb(%rip), %r12d         #  1020  0x646b2  7      
  movl %r12d, 0xffd23b0(%rip)         #  1021  0x646b9  7      
  jbe .L_64be0                        #  1022  0x646c0  6      
  movl %r12d, 0xffd23a7(%rip)         #  1023  0x646c6  7      
  xchgw %ax, %ax                      #  1024  0x646cd  3      
.L_64be0:                             #        0x646d0  0      
  addl $0x8, %eax                     #  1025  0x646d0  3      
  testq %rax, %rax                    #  1026  0x646d3  3      
  jne .L_63a80                        #  1027  0x646d6  6      
  jmpq .L_63fc0                       #  1028  0x646dc  5      
  nop                                 #  1029  0x646e1  1      
.L_64c00:                             #        0x646e2  0      
  shll %cl, %r8d                      #  1030  0x646e2  3      
  notl %r8d                           #  1031  0x646e5  3      
  andl %edx, %r8d                     #  1032  0x646e8  3      
  movl %r8d, 0xffd21ce(%rip)          #  1033  0x646eb  7      
  jmpq .L_63d00                       #  1034  0x646f2  5      
  nop                                 #  1035  0x646f7  1      
.L_64c20:                             #        0x646f8  0      
  movl %ebx, %ecx                     #  1036  0x646f8  2      
  orl $0x3, %ecx                      #  1037  0x646fa  3      
  movl %esi, %esi                     #  1038  0x646fd  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  1039  0x646ff  5      
  movl %edx, %ecx                     #  1040  0x64704  2      
  orl $0x1, %ecx                      #  1041  0x64706  3      
  movl %eax, %eax                     #  1042  0x64709  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1043  0x6470b  5      
  leal (%rdx,%rax,1), %ecx            #  1044  0x64710  3      
  nop                                 #  1045  0x64713  1      
  movl %ecx, %ecx                     #  1046  0x64714  2      
  movl %edx, (%r15,%rcx,1)            #  1047  0x64716  4      
  movl %edx, %ecx                     #  1048  0x6471a  2      
  shrl $0x3, %ecx                     #  1049  0x6471c  3      
  cmpl $0x1f, %ecx                    #  1050  0x6471f  3      
  ja .L_650a0                         #  1051  0x64722  6      
  movl 0xffd2191(%rip), %r8d          #  1052  0x64728  7      
  movl $0x1, %edx                     #  1053  0x6472f  5      
  leal 0x100368e8(,%rcx,8), %edi      #  1054  0x64734  7      
  shll %cl, %edx                      #  1055  0x6473b  2      
  testl %r8d, %edx                    #  1056  0x6473d  3      
  jne .L_654c0                        #  1057  0x64740  6      
  orl %r8d, %edx                      #  1058  0x64746  3      
  movl %edx, 0xffd2171(%rip)          #  1059  0x64749  6      
  movq %rdi, %rdx                     #  1060  0x6474f  3      
  xchgw %ax, %ax                      #  1061  0x64752  3      
.L_64c80:                             #        0x64755  0      
  movl %edi, %edi                     #  1062  0x64755  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  1063  0x64757  5      
  movl %edx, %edx                     #  1064  0x6475c  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1065  0x6475e  5      
  movl %eax, %eax                     #  1066  0x64763  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1067  0x64765  5      
  movl %eax, %eax                     #  1068  0x6476a  2      
  movl %edi, 0xc(%r15,%rax,1)         #  1069  0x6476c  5      
  nop                                 #  1070  0x64771  1      
  jmpq .L_646e0                       #  1071  0x64772  5      
  nop                                 #  1072  0x64777  1      
  nop                                 #  1073  0x64778  1      
.L_64cc0:                             #        0x64779  0      
  addl %ebx, %edx                     #  1074  0x64779  2      
  movl %edx, %ecx                     #  1075  0x6477b  2      
  addl %eax, %edx                     #  1076  0x6477d  2      
  orl $0x3, %ecx                      #  1077  0x6477f  3      
  movl %eax, %eax                     #  1078  0x64782  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1079  0x64784  5      
  movl %edx, %edx                     #  1080  0x64789  2      
  orl $0x1, 0x4(%r15,%rdx,1)          #  1081  0x6478b  6      
  jmpq .L_64a60                       #  1082  0x64791  5      
  nop                                 #  1083  0x64796  1      
.L_64ce0:                             #        0x64797  0      
  movl %edx, %edx                     #  1084  0x64797  2      
  movl 0xc(%r15,%rdx,1), %ecx         #  1085  0x64799  5      
  testb $0x8, %cl                     #  1086  0x6479e  3      
  jne .L_640e0                        #  1087  0x647a1  6      
  andl $0x1, %ecx                     #  1088  0x647a7  3      
  je .L_640e0                         #  1089  0x647aa  6      
  movl %edx, %edx                     #  1090  0x647b0  2      
  movl (%r15,%rdx,1), %esi            #  1091  0x647b2  4      
  nop                                 #  1092  0x647b6  1      
  cmpl %esi, %eax                     #  1093  0x647b7  2      
  jb .L_640e0                         #  1094  0x647b9  6      
  movl %edx, %edx                     #  1095  0x647bf  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1096  0x647c1  5      
  leal (%rcx,%rsi,1), %esi            #  1097  0x647c6  3      
  cmpl %eax, %esi                     #  1098  0x647c9  2      
  jbe .L_640e0                        #  1099  0x647cb  6      
  leal (%r12,%rcx,1), %ecx            #  1100  0x647d1  4      
  movl %eax, %esi                     #  1101  0x647d5  2      
  movl %edx, %edx                     #  1102  0x647d7  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  1103  0x647d9  5      
  xorl %edx, %edx                     #  1104  0x647de  2      
  andl $0x7, %esi                     #  1105  0x647e0  3      
  movl 0xffd20e3(%rip), %ecx          #  1106  0x647e3  6      
  je .L_64d40                         #  1107  0x647e9  6      
  movl %esi, %edx                     #  1108  0x647ef  2      
  negl %edx                           #  1109  0x647f1  2      
  andl $0x7, %edx                     #  1110  0x647f3  3      
  nop                                 #  1111  0x647f6  1      
.L_64d40:                             #        0x647f7  0      
  addl %ecx, %r12d                    #  1112  0x647f7  3      
  leal (%rdx,%rax,1), %eax            #  1113  0x647fa  3      
  subl %edx, %r12d                    #  1114  0x647fd  3      
  movl %r12d, %edx                    #  1115  0x64800  3      
  movl %r12d, 0xffd20c2(%rip)         #  1116  0x64803  7      
  movl %eax, 0xffd20c8(%rip)          #  1117  0x6480a  6      
  orl $0x1, %edx                      #  1118  0x64810  3      
  nop                                 #  1119  0x64813  1      
  movl %eax, %eax                     #  1120  0x64814  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1121  0x64816  5      
  leal (%r12,%rax,1), %eax            #  1122  0x6481b  4      
  movl %eax, %eax                     #  1123  0x6481f  2      
  movl $0x28, 0x4(%r15,%rax,1)        #  1124  0x64821  9      
  movl 0xffd2070(%rip), %eax          #  1125  0x6482a  6      
  nop                                 #  1126  0x64830  1      
  movl %eax, 0xffd20a5(%rip)          #  1127  0x64831  6      
  jmpq .L_64360                       #  1128  0x64837  5      
  nop                                 #  1129  0x6483c  1      
  nop                                 #  1130  0x6483d  1      
.L_64da0:                             #        0x6483e  0      
  movl %r8d, %ecx                     #  1131  0x6483e  3      
  nop                                 #  1132  0x64841  1      
  nop                                 #  1133  0x64842  1      
.L_64dc0:                             #        0x64843  0      
  movl %ecx, %ecx                     #  1134  0x64843  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1135  0x64845  5      
  testb $0x8, %dl                     #  1136  0x6484a  3      
  jne .L_64160                        #  1137  0x6484d  6      
  andl $0x1, %edx                     #  1138  0x64853  3      
  je .L_64160                         #  1139  0x64856  6      
  movl %ecx, %ecx                     #  1140  0x6485c  2      
  movl (%r15,%rcx,1), %edx            #  1141  0x6485e  4      
  nop                                 #  1142  0x64862  1      
  movl %ecx, %ecx                     #  1143  0x64863  2      
  addl %r12d, 0x4(%r15,%rcx,1)        #  1144  0x64865  5      
  xorl %eax, %eax                     #  1145  0x6486a  2      
  movl %ecx, %ecx                     #  1146  0x6486c  2      
  movl %edi, (%r15,%rcx,1)            #  1147  0x6486e  4      
  movl %edi, %ecx                     #  1148  0x64872  2      
  andl $0x7, %ecx                     #  1149  0x64874  3      
  je .L_64e00                         #  1150  0x64877  6      
  movl %ecx, %eax                     #  1151  0x6487d  2      
  negl %eax                           #  1152  0x6487f  2      
  andl $0x7, %eax                     #  1153  0x64881  3      
  nop                                 #  1154  0x64884  1      
.L_64e00:                             #        0x64885  0      
  movl %edx, %ecx                     #  1155  0x64885  2      
  leal (%rax,%rdi,1), %edi            #  1156  0x64887  3      
  xorl %eax, %eax                     #  1157  0x6488a  2      
  andl $0x7, %ecx                     #  1158  0x6488c  3      
  je .L_64e20                         #  1159  0x6488f  6      
  movl %ecx, %eax                     #  1160  0x64895  2      
  negl %eax                           #  1161  0x64897  2      
  andl $0x7, %eax                     #  1162  0x64899  3      
  nop                                 #  1163  0x6489c  1      
.L_64e20:                             #        0x6489d  0      
  leal (%rax,%rdx,1), %edx            #  1164  0x6489d  3      
  leal (%rbx,%rdi,1), %eax            #  1165  0x648a0  3      
  movl %edx, %esi                     #  1166  0x648a3  2      
  subl %edi, %esi                     #  1167  0x648a5  2      
  subl %ebx, %esi                     #  1168  0x648a7  2      
  orl $0x3, %ebx                      #  1169  0x648a9  3      
  cmpl %edx, 0xffd2026(%rip)          #  1170  0x648ac  6      
  movl %edi, %edi                     #  1171  0x648b2  2      
  movl %ebx, 0x4(%r15,%rdi,1)         #  1172  0x648b4  5      
  nop                                 #  1173  0x648b9  1      
  je .L_65aa0                         #  1174  0x648ba  6      
  cmpl %edx, 0xffd200e(%rip)          #  1175  0x648c0  6      
  je .L_65ae0                         #  1176  0x648c6  6      
  movl %edx, %edx                     #  1177  0x648cc  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1178  0x648ce  5      
  movl %ebx, %ecx                     #  1179  0x648d3  2      
  andl $0x3, %ecx                     #  1180  0x648d5  3      
  xchgw %ax, %ax                      #  1181  0x648d8  3      
  cmpl $0x1, %ecx                     #  1182  0x648db  3      
  je .L_65a00                         #  1183  0x648de  6      
  nop                                 #  1184  0x648e4  1      
  nop                                 #  1185  0x648e5  1      
.L_64e80:                             #        0x648e6  0      
  andl $0xfffffffe, %ebx              #  1186  0x648e6  6      
  movl %esi, %ecx                     #  1187  0x648ec  2      
  movl %edx, %edx                     #  1188  0x648ee  2      
  movl %ebx, 0x4(%r15,%rdx,1)         #  1189  0x648f0  5      
  movl %esi, %edx                     #  1190  0x648f5  2      
  shrl $0x3, %ecx                     #  1191  0x648f7  3      
  orl $0x1, %edx                      #  1192  0x648fa  3      
  cmpl $0x1f, %ecx                    #  1193  0x648fd  3      
  movl %eax, %eax                     #  1194  0x64900  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1195  0x64902  5      
  xchgw %ax, %ax                      #  1196  0x64907  3      
  leal (%rsi,%rax,1), %edx            #  1197  0x6490a  3      
  movl %edx, %edx                     #  1198  0x6490d  2      
  movl %esi, (%r15,%rdx,1)            #  1199  0x6490f  4      
  ja .L_657a0                         #  1200  0x64913  6      
  movl 0xffd1fa1(%rip), %esi          #  1201  0x64919  6      
  movl $0x1, %ebx                     #  1202  0x6491f  5      
  nop                                 #  1203  0x64924  1      
  leal 0x100368e8(,%rcx,8), %edx      #  1204  0x64925  7      
  shll %cl, %ebx                      #  1205  0x6492c  2      
  testl %esi, %ebx                    #  1206  0x6492e  2      
  jne .L_659e0                        #  1207  0x64930  6      
  orl %esi, %ebx                      #  1208  0x64936  2      
  movq %rdx, %rcx                     #  1209  0x64938  3      
  movl %ebx, 0xffd1f7f(%rip)          #  1210  0x6493b  6      
  nop                                 #  1211  0x64941  1      
.L_64ee0:                             #        0x64942  0      
  movl %edx, %edx                     #  1212  0x64942  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1213  0x64944  5      
  movl %ecx, %ecx                     #  1214  0x64949  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1215  0x6494b  5      
  movl %eax, %eax                     #  1216  0x64950  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1217  0x64952  5      
  movl %eax, %eax                     #  1218  0x64957  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1219  0x64959  5      
  leal 0x8(%rdi), %eax                #  1220  0x6495e  3      
  nop                                 #  1221  0x64961  1      
  jmpq .L_63a80                       #  1222  0x64962  5      
  nop                                 #  1223  0x64967  1      
  nop                                 #  1224  0x64968  1      
.L_64f20:                             #        0x64969  0      
  movl %esi, %ecx                     #  1225  0x64969  2      
  xorl %r8d, %r8d                     #  1226  0x6496b  3      
  movl $0x1, %edx                     #  1227  0x6496e  5      
  shrl $0x8, %ecx                     #  1228  0x64973  3      
  testl %ecx, %ecx                    #  1229  0x64976  2      
  je .L_64f80                         #  1230  0x64978  6      
  cmpl $0xffff, %ecx                  #  1231  0x6497e  6      
  movl $0x80000000, %edx              #  1232  0x64984  5      
  movb $0x1f, %r8b                    #  1233  0x64989  3      
  nop                                 #  1234  0x6498c  1      
  ja .L_64f80                         #  1235  0x6498d  6      
  bsrl %ecx, %ecx                     #  1236  0x64993  3      
  movl $0x1f, %edx                    #  1237  0x64996  5      
  movl %esi, %r8d                     #  1238  0x6499b  3      
  xorl $0x1f, %ecx                    #  1239  0x6499e  3      
  subl %ecx, %edx                     #  1240  0x649a1  2      
  leal 0x7(%rdx), %ecx                #  1241  0x649a3  3      
  shrl %cl, %r8d                      #  1242  0x649a6  3      
  andl $0x1, %r8d                     #  1243  0x649a9  4      
  leal (%r8,%rdx,2), %r8d             #  1244  0x649ad  4      
  movl $0x1, %edx                     #  1245  0x649b1  5      
  movl %r8d, %ecx                     #  1246  0x649b6  3      
  shll %cl, %edx                      #  1247  0x649b9  2      
  nop                                 #  1248  0x649bb  1      
  nop                                 #  1249  0x649bc  1      
.L_64f80:                             #        0x649bd  0      
  movl %eax, %eax                     #  1250  0x649bd  2      
  movl %r8d, 0x1c(%r15,%rax,1)        #  1251  0x649bf  5      
  movl 0xffd1efa(%rip), %ecx          #  1252  0x649c4  6      
  movl %eax, %eax                     #  1253  0x649ca  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1254  0x649cc  9      
  nop                                 #  1255  0x649d5  1      
  movl %eax, %eax                     #  1256  0x649d6  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1257  0x649d8  9      
  testl %ecx, %edx                    #  1258  0x649e1  2      
  je .L_65640                         #  1259  0x649e3  6      
  leal 0x130(,%r8,4), %edx            #  1260  0x649e9  8      
  xorl %ecx, %ecx                     #  1261  0x649f1  2      
  nop                                 #  1262  0x649f3  1      
  cmpl $0x1f, %r8d                    #  1263  0x649f4  4      
  movslq %edx, %rdx                   #  1264  0x649f8  3      
  movl %edx, %edx                     #  1265  0x649fb  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1266  0x649fd  8      
  je .L_64fe0                         #  1267  0x64a05  6      
  shrl $0x1, %r8d                     #  1268  0x64a0b  3      
  movb $0x19, %cl                     #  1269  0x64a0e  2      
  subl %r8d, %ecx                     #  1270  0x64a10  3      
  nop                                 #  1271  0x64a13  1      
.L_64fe0:                             #        0x64a14  0      
  movl %esi, %edi                     #  1272  0x64a14  2      
  shll %cl, %edi                      #  1273  0x64a16  2      
  jmpq .L_65040                       #  1274  0x64a18  5      
  nop                                 #  1275  0x64a1d  1      
  nop                                 #  1276  0x64a1e  1      
.L_65000:                             #        0x64a1f  0      
  movl %edi, %ecx                     #  1277  0x64a1f  2      
  shrl $0x1f, %ecx                    #  1278  0x64a21  3      
  addl $0x4, %ecx                     #  1279  0x64a24  3      
  shll $0x2, %ecx                     #  1280  0x64a27  3      
  leal (%rcx,%rdx,1), %r9d            #  1281  0x64a2a  4      
  movslq %ecx, %rcx                   #  1282  0x64a2e  3      
  leaq (%rdx,%rcx,1), %rcx            #  1283  0x64a31  4      
  movl %ecx, %ecx                     #  1284  0x64a35  2      
  movl (%r15,%rcx,1), %r8d            #  1285  0x64a37  4      
  testq %r8, %r8                      #  1286  0x64a3b  3      
  nop                                 #  1287  0x64a3e  1      
  je .L_656a0                         #  1288  0x64a3f  6      
  addl %edi, %edi                     #  1289  0x64a45  2      
  movq %r8, %rdx                      #  1290  0x64a47  3      
  nop                                 #  1291  0x64a4a  1      
  nop                                 #  1292  0x64a4b  1      
.L_65040:                             #        0x64a4c  0      
  movl %edx, %edx                     #  1293  0x64a4c  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1294  0x64a4e  5      
  andl $0xfffffff8, %ecx              #  1295  0x64a53  6      
  cmpl %ecx, %esi                     #  1296  0x64a59  2      
  jne .L_65000                        #  1297  0x64a5b  6      
  movl 0xffd1e69(%rip), %esi          #  1298  0x64a61  6      
  movl %edx, %edx                     #  1299  0x64a67  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1300  0x64a69  5      
  cmpl %edx, %esi                     #  1301  0x64a6e  2      
  nop                                 #  1302  0x64a70  1      
  ja .L_64ae0                         #  1303  0x64a71  6      
  cmpl %ecx, %esi                     #  1304  0x64a77  2      
  ja .L_64ae0                         #  1305  0x64a79  6      
  movl %ecx, %ecx                     #  1306  0x64a7f  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1307  0x64a81  5      
  movl %edx, %edx                     #  1308  0x64a86  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1309  0x64a88  5      
  nop                                 #  1310  0x64a8d  1      
  movl %eax, %eax                     #  1311  0x64a8e  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1312  0x64a90  5      
  movl %eax, %eax                     #  1313  0x64a95  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1314  0x64a97  5      
  movl %eax, %eax                     #  1315  0x64a9c  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1316  0x64a9e  9      
  jmpq .L_64360                       #  1317  0x64aa7  5      
  xchgw %ax, %ax                      #  1318  0x64aac  3      
.L_650a0:                             #        0x64aaf  0      
  movl %edx, %ecx                     #  1319  0x64aaf  2      
  xorl %r10d, %r10d                   #  1320  0x64ab1  3      
  movl $0x1, %r8d                     #  1321  0x64ab4  6      
  shrl $0x8, %ecx                     #  1322  0x64aba  3      
  testl %ecx, %ecx                    #  1323  0x64abd  2      
  je .L_65100                         #  1324  0x64abf  6      
  cmpl $0xffff, %ecx                  #  1325  0x64ac5  6      
  movl $0x80000000, %r8d              #  1326  0x64acb  6      
  xchgw %ax, %ax                      #  1327  0x64ad1  3      
  movb $0x1f, %r10b                   #  1328  0x64ad4  3      
  ja .L_65100                         #  1329  0x64ad7  6      
  bsrl %ecx, %ecx                     #  1330  0x64add  3      
  movl $0x1f, %r8d                    #  1331  0x64ae0  6      
  movl %edx, %r10d                    #  1332  0x64ae6  3      
  xorl $0x1f, %ecx                    #  1333  0x64ae9  3      
  subl %ecx, %r8d                     #  1334  0x64aec  3      
  leal 0x7(%r8), %ecx                 #  1335  0x64aef  4      
  shrl %cl, %r10d                     #  1336  0x64af3  3      
  xchgw %ax, %ax                      #  1337  0x64af6  3      
  andl $0x1, %r10d                    #  1338  0x64af9  4      
  leal (%r10,%r8,2), %r10d            #  1339  0x64afd  4      
  movl $0x1, %r8d                     #  1340  0x64b01  6      
  movl %r10d, %ecx                    #  1341  0x64b07  3      
  shll %cl, %r8d                      #  1342  0x64b0a  3      
  nop                                 #  1343  0x64b0d  1      
.L_65100:                             #        0x64b0e  0      
  movl %eax, %eax                     #  1344  0x64b0e  2      
  movl %r10d, 0x1c(%r15,%rax,1)       #  1345  0x64b10  5      
  movl 0xffd1da9(%rip), %ecx          #  1346  0x64b15  6      
  movl %eax, %eax                     #  1347  0x64b1b  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1348  0x64b1d  9      
  nop                                 #  1349  0x64b26  1      
  movl %eax, %eax                     #  1350  0x64b27  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1351  0x64b29  9      
  testl %ecx, %r8d                    #  1352  0x64b32  3      
  jne .L_653c0                        #  1353  0x64b35  6      
  leal 0x130(,%r10,4), %r10d          #  1354  0x64b3b  8      
  orl %r8d, %ecx                      #  1355  0x64b43  3      
  nop                                 #  1356  0x64b46  1      
  movl %ecx, 0xffd1d77(%rip)          #  1357  0x64b47  6      
  movslq %r10d, %rdx                  #  1358  0x64b4d  3      
  addl $0x100368c0, %r10d             #  1359  0x64b50  7      
  movl %edx, %edx                     #  1360  0x64b57  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1361  0x64b59  8      
  nop                                 #  1362  0x64b61  1      
  movl %eax, %eax                     #  1363  0x64b62  2      
  movl %r10d, 0x18(%r15,%rax,1)       #  1364  0x64b64  5      
  movl %eax, %eax                     #  1365  0x64b69  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1366  0x64b6b  5      
  movl %eax, %eax                     #  1367  0x64b70  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1368  0x64b72  5      
  jmpq .L_646e0                       #  1369  0x64b77  5      
  nop                                 #  1370  0x64b7c  1      
.L_65180:                             #        0x64b7d  0      
  movl %r9d, %r9d                     #  1371  0x64b7d  3      
  movl 0x8(%r15,%r9,1), %ecx          #  1372  0x64b80  5      
  cmpl %ecx, 0xffd1d45(%rip)          #  1373  0x64b85  6      
  jbe .L_64a20                        #  1374  0x64b8b  6      
  jmpq .L_64ae0                       #  1375  0x64b91  5      
  nop                                 #  1376  0x64b96  1      
.L_651a0:                             #        0x64b97  0      
  movl %eax, %eax                     #  1377  0x64b97  2      
  movl 0x14(%r15,%rax,1), %r8d        #  1378  0x64b99  5      
  leal 0x14(%rax), %r9d               #  1379  0x64b9e  4      
  testq %r8, %r8                      #  1380  0x64ba2  3      
  jne .L_65200                        #  1381  0x64ba5  6      
  jmpq .L_65760                       #  1382  0x64bab  5      
  nop                                 #  1383  0x64bb0  1      
.L_651c0:                             #        0x64bb1  0      
  leal 0x14(%r8), %r9d                #  1384  0x64bb1  4      
  nop                                 #  1385  0x64bb5  1      
  nop                                 #  1386  0x64bb6  1      
.L_651e0:                             #        0x64bb7  0      
  movq %rcx, %r8                      #  1387  0x64bb7  3      
  nop                                 #  1388  0x64bba  1      
  nop                                 #  1389  0x64bbb  1      
.L_65200:                             #        0x64bbc  0      
  movl %r8d, %r8d                     #  1390  0x64bbc  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1391  0x64bbf  5      
  testq %rcx, %rcx                    #  1392  0x64bc4  3      
  jne .L_651c0                        #  1393  0x64bc7  6      
  movl %r8d, %r8d                     #  1394  0x64bcd  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1395  0x64bd0  5      
  testq %rcx, %rcx                    #  1396  0x64bd5  3      
  je .L_65240                         #  1397  0x64bd8  6      
  leal 0x10(%r8), %r9d                #  1398  0x64bde  4      
  xchgw %ax, %ax                      #  1399  0x64be2  3      
  jmpq .L_651e0                       #  1400  0x64be5  5      
  nop                                 #  1401  0x64bea  1      
  nop                                 #  1402  0x64beb  1      
.L_65240:                             #        0x64bec  0      
  cmpl %r9d, %edi                     #  1403  0x64bec  3      
  ja .L_64ae0                         #  1404  0x64bef  6      
  movl %r9d, %r9d                     #  1405  0x64bf5  3      
  movl $0x0, (%r15,%r9,1)             #  1406  0x64bf8  8      
  jmpq .L_648a0                       #  1407  0x64c00  5      
  nop                                 #  1408  0x64c05  1      
.L_65260:                             #        0x64c06  0      
  movl %esi, %esi                     #  1409  0x64c06  2      
  movl 0x14(%r15,%rsi,1), %r8d        #  1410  0x64c08  5      
  leal 0x14(%rsi), %r9d               #  1411  0x64c0d  4      
  testq %r8, %r8                      #  1412  0x64c11  3      
  jne .L_652c0                        #  1413  0x64c14  6      
  jmpq .L_65780                       #  1414  0x64c1a  5      
  nop                                 #  1415  0x64c1f  1      
.L_65280:                             #        0x64c20  0      
  leal 0x14(%r8), %r9d                #  1416  0x64c20  4      
  nop                                 #  1417  0x64c24  1      
  nop                                 #  1418  0x64c25  1      
.L_652a0:                             #        0x64c26  0      
  movq %rcx, %r8                      #  1419  0x64c26  3      
  nop                                 #  1420  0x64c29  1      
  nop                                 #  1421  0x64c2a  1      
.L_652c0:                             #        0x64c2b  0      
  movl %r8d, %r8d                     #  1422  0x64c2b  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1423  0x64c2e  5      
  testq %rcx, %rcx                    #  1424  0x64c33  3      
  jne .L_65280                        #  1425  0x64c36  6      
  movl %r8d, %r8d                     #  1426  0x64c3c  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1427  0x64c3f  5      
  testq %rcx, %rcx                    #  1428  0x64c44  3      
  je .L_65300                         #  1429  0x64c47  6      
  leal 0x10(%r8), %r9d                #  1430  0x64c4d  4      
  xchgw %ax, %ax                      #  1431  0x64c51  3      
  jmpq .L_652a0                       #  1432  0x64c54  5      
  nop                                 #  1433  0x64c59  1      
  nop                                 #  1434  0x64c5a  1      
.L_65300:                             #        0x64c5b  0      
  cmpl %r9d, %edi                     #  1435  0x64c5b  3      
  ja .L_64ae0                         #  1436  0x64c5e  6      
  movl %r9d, %r9d                     #  1437  0x64c64  3      
  movl $0x0, (%r15,%r9,1)             #  1438  0x64c67  8      
  jmpq .L_645a0                       #  1439  0x64c6f  5      
  nop                                 #  1440  0x64c74  1      
.L_65320:                             #        0x64c75  0      
  testq %r8, %r8                      #  1441  0x64c75  3      
  movl %r9d, %r9d                     #  1442  0x64c78  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1443  0x64c7b  8      
  jne .L_64920                        #  1444  0x64c83  6      
  movl $0xfffffffe, %edi              #  1445  0x64c89  5      
  roll %cl, %edi                      #  1446  0x64c8e  2      
  nop                                 #  1447  0x64c90  1      
  andl %edi, 0xffd1c2d(%rip)          #  1448  0x64c91  6      
  jmpq .L_649a0                       #  1449  0x64c97  5      
  nop                                 #  1450  0x64c9c  1      
  nop                                 #  1451  0x64c9d  1      
.L_65360:                             #        0x64c9e  0      
  testq %r8, %r8                      #  1452  0x64c9e  3      
  movl %r9d, %r9d                     #  1453  0x64ca1  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1454  0x64ca4  8      
  jne .L_64620                        #  1455  0x64cac  6      
  movl $0xfffffffe, %r8d              #  1456  0x64cb2  6      
  roll %cl, %r8d                      #  1457  0x64cb8  3      
  nop                                 #  1458  0x64cbb  1      
  andl %r8d, 0xffd1c01(%rip)          #  1459  0x64cbc  7      
  jmpq .L_646a0                       #  1460  0x64cc3  5      
  nop                                 #  1461  0x64cc8  1      
  nop                                 #  1462  0x64cc9  1      
.L_653a0:                             #        0x64cca  0      
  movl %esi, %esi                     #  1463  0x64cca  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1464  0x64ccc  5      
  cmpl %edx, 0xffd1bf9(%rip)          #  1465  0x64cd1  6      
  jbe .L_64340                        #  1466  0x64cd7  6      
  jmpq .L_64ae0                       #  1467  0x64cdd  5      
  nop                                 #  1468  0x64ce2  1      
.L_653c0:                             #        0x64ce3  0      
  leal 0x130(,%r10,4), %ecx           #  1469  0x64ce3  8      
  movslq %ecx, %rcx                   #  1470  0x64ceb  3      
  movl %ecx, %ecx                     #  1471  0x64cee  2      
  movl 0x100368c0(%r15,%rcx,1), %r8d  #  1472  0x64cf0  8      
  xorl %ecx, %ecx                     #  1473  0x64cf8  2      
  cmpl $0x1f, %r10d                   #  1474  0x64cfa  4      
  nop                                 #  1475  0x64cfe  1      
  je .L_65400                         #  1476  0x64cff  6      
  shrl $0x1, %r10d                    #  1477  0x64d05  3      
  movb $0x19, %cl                     #  1478  0x64d08  2      
  subl %r10d, %ecx                    #  1479  0x64d0a  3      
  nop                                 #  1480  0x64d0d  1      
  nop                                 #  1481  0x64d0e  1      
.L_65400:                             #        0x64d0f  0      
  movl %edx, %r9d                     #  1482  0x64d0f  3      
  shll %cl, %r9d                      #  1483  0x64d12  3      
  jmpq .L_65460                       #  1484  0x64d15  5      
  nop                                 #  1485  0x64d1a  1      
  nop                                 #  1486  0x64d1b  1      
.L_65420:                             #        0x64d1c  0      
  movl %r9d, %ecx                     #  1487  0x64d1c  3      
  shrl $0x1f, %ecx                    #  1488  0x64d1f  3      
  addl $0x4, %ecx                     #  1489  0x64d22  3      
  shll $0x2, %ecx                     #  1490  0x64d25  3      
  leal (%rcx,%r8,1), %r11d            #  1491  0x64d28  4      
  movslq %ecx, %rcx                   #  1492  0x64d2c  3      
  leaq (%r8,%rcx,1), %rcx             #  1493  0x64d2f  4      
  movl %ecx, %ecx                     #  1494  0x64d33  2      
  movl (%r15,%rcx,1), %r10d           #  1495  0x64d35  4      
  testq %r10, %r10                    #  1496  0x64d39  3      
  je .L_65720                         #  1497  0x64d3c  6      
  addl %r9d, %r9d                     #  1498  0x64d42  3      
  movq %r10, %r8                      #  1499  0x64d45  3      
  nop                                 #  1500  0x64d48  1      
  nop                                 #  1501  0x64d49  1      
.L_65460:                             #        0x64d4a  0      
  movl %r8d, %r8d                     #  1502  0x64d4a  3      
  movl 0x4(%r15,%r8,1), %ecx          #  1503  0x64d4d  5      
  andl $0xfffffff8, %ecx              #  1504  0x64d52  6      
  cmpl %ecx, %edx                     #  1505  0x64d58  2      
  jne .L_65420                        #  1506  0x64d5a  6      
  cmpl %r8d, %edi                     #  1507  0x64d60  3      
  movl %r8d, %r8d                     #  1508  0x64d63  3      
  movl 0x8(%r15,%r8,1), %edx          #  1509  0x64d66  5      
  ja .L_64ae0                         #  1510  0x64d6b  6      
  cmpl %edx, %edi                     #  1511  0x64d71  2      
  ja .L_64ae0                         #  1512  0x64d73  6      
  movl %edx, %edx                     #  1513  0x64d79  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1514  0x64d7b  5      
  movl %r8d, %r8d                     #  1515  0x64d80  3      
  movl %eax, 0x8(%r15,%r8,1)          #  1516  0x64d83  5      
  movl %eax, %eax                     #  1517  0x64d88  2      
  movl %r8d, 0xc(%r15,%rax,1)         #  1518  0x64d8a  5      
  xchgw %ax, %ax                      #  1519  0x64d8f  3      
  movl %eax, %eax                     #  1520  0x64d92  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1521  0x64d94  5      
  movl %eax, %eax                     #  1522  0x64d99  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1523  0x64d9b  9      
  jmpq .L_646e0                       #  1524  0x64da4  5      
  nop                                 #  1525  0x64da9  1      
.L_654c0:                             #        0x64daa  0      
  movl %edi, %edi                     #  1526  0x64daa  2      
  movl 0x8(%r15,%rdi,1), %edx         #  1527  0x64dac  5      
  cmpl %edx, 0xffd1b19(%rip)          #  1528  0x64db1  6      
  jbe .L_64c80                        #  1529  0x64db7  6      
  jmpq .L_64ae0                       #  1530  0x64dbd  5      
  nop                                 #  1531  0x64dc2  1      
.L_654e0:                             #        0x64dc3  0      
  movl %r10d, %r10d                   #  1532  0x64dc3  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1533  0x64dc6  5      
  jmpq .L_64900                       #  1534  0x64dcb  5      
  nop                                 #  1535  0x64dd0  1      
  nop                                 #  1536  0x64dd1  1      
.L_65500:                             #        0x64dd2  0      
  movl 0xffd1af8(%rip), %eax          #  1537  0x64dd2  6      
  testq %rax, %rax                    #  1538  0x64dd8  3      
  je .L_65520                         #  1539  0x64ddb  6      
  cmpl %eax, %edi                     #  1540  0x64de1  2      
  jae .L_65540                        #  1541  0x64de3  6      
  xchgw %ax, %ax                      #  1542  0x64de9  3      
  nop                                 #  1543  0x64dec  1      
.L_65520:                             #        0x64ded  0      
  movl %edi, 0xffd1add(%rip)          #  1544  0x64ded  6      
  nop                                 #  1545  0x64df3  1      
  nop                                 #  1546  0x64df4  1      
.L_65540:                             #        0x64df5  0      
  movl 0xffd1a95(%rip), %eax          #  1547  0x64df5  6      
  movl %edi, 0xffd1c83(%rip)          #  1548  0x64dfb  6      
  movl $0x100368e8, %edx              #  1549  0x64e01  5      
  movl %r12d, 0xffd1c7b(%rip)         #  1550  0x64e06  7      
  nop                                 #  1551  0x64e0d  1      
  movl $0x1, 0xffd1c78(%rip)          #  1552  0x64e0e  10     
  movl $0xfff, 0xffd1abe(%rip)        #  1553  0x64e18  10     
  movl %eax, 0xffd1abc(%rip)          #  1554  0x64e22  6      
  nop                                 #  1555  0x64e28  1      
.L_65580:                             #        0x64e29  0      
  movl %edx, %eax                     #  1556  0x64e29  2      
  addl $0x8, %edx                     #  1557  0x64e2b  3      
  cmpl $0x100369e8, %edx              #  1558  0x64e2e  6      
  movl %eax, %eax                     #  1559  0x64e34  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1560  0x64e36  5      
  movl %eax, %eax                     #  1561  0x64e3b  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1562  0x64e3d  5      
  jne .L_65580                        #  1563  0x64e42  6      
  movl %edi, %edx                     #  1564  0x64e48  2      
  xorl %eax, %eax                     #  1565  0x64e4a  2      
  nop                                 #  1566  0x64e4c  1      
  andl $0x7, %edx                     #  1567  0x64e4d  3      
  je .L_655c0                         #  1568  0x64e50  6      
  movl %edx, %eax                     #  1569  0x64e56  2      
  negl %eax                           #  1570  0x64e58  2      
  andl $0x7, %eax                     #  1571  0x64e5a  3      
  nop                                 #  1572  0x64e5d  1      
  nop                                 #  1573  0x64e5e  1      
.L_655c0:                             #        0x64e5f  0      
  subl $0x28, %r12d                   #  1574  0x64e5f  4      
  leal (%rax,%rdi,1), %edi            #  1575  0x64e63  3      
  subl %eax, %r12d                    #  1576  0x64e66  3      
  movl %r12d, %eax                    #  1577  0x64e69  3      
  movl %r12d, 0xffd1a59(%rip)         #  1578  0x64e6c  7      
  movl %edi, 0xffd1a5f(%rip)          #  1579  0x64e73  6      
  orl $0x1, %eax                      #  1580  0x64e79  3      
  nop                                 #  1581  0x64e7c  1      
  movl %edi, %edi                     #  1582  0x64e7d  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  1583  0x64e7f  5      
  leal (%r12,%rdi,1), %edi            #  1584  0x64e84  4      
  movl %edi, %edi                     #  1585  0x64e88  2      
  movl $0x28, 0x4(%r15,%rdi,1)        #  1586  0x64e8a  9      
  movl 0xffd1a07(%rip), %eax          #  1587  0x64e93  6      
  nop                                 #  1588  0x64e99  1      
  movl %eax, 0xffd1a3c(%rip)          #  1589  0x64e9a  6      
  jmpq .L_64360                       #  1590  0x64ea0  5      
  nop                                 #  1591  0x64ea5  1      
  nop                                 #  1592  0x64ea6  1      
.L_65620:                             #        0x64ea7  0      
  movl %r10d, %r10d                   #  1593  0x64ea7  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1594  0x64eaa  5      
  jmpq .L_64600                       #  1595  0x64eaf  5      
  nop                                 #  1596  0x64eb4  1      
  nop                                 #  1597  0x64eb5  1      
.L_65640:                             #        0x64eb6  0      
  leal 0x130(,%r8,4), %r8d            #  1598  0x64eb6  8      
  orl %ecx, %edx                      #  1599  0x64ebe  2      
  movl %edx, 0xffd19fe(%rip)          #  1600  0x64ec0  6      
  movslq %r8d, %rdx                   #  1601  0x64ec6  3      
  addl $0x100368c0, %r8d              #  1602  0x64ec9  7      
  nop                                 #  1603  0x64ed0  1      
  movl %edx, %edx                     #  1604  0x64ed1  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1605  0x64ed3  8      
  movl %eax, %eax                     #  1606  0x64edb  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1607  0x64edd  5      
  movl %eax, %eax                     #  1608  0x64ee2  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1609  0x64ee4  5      
  movl %eax, %eax                     #  1610  0x64ee9  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1611  0x64eeb  5      
  nop                                 #  1612  0x64ef0  1      
  jmpq .L_64360                       #  1613  0x64ef1  5      
  nop                                 #  1614  0x64ef6  1      
  nop                                 #  1615  0x64ef7  1      
.L_656a0:                             #        0x64ef8  0      
  cmpl %r9d, 0xffd19d1(%rip)          #  1616  0x64ef8  7      
  ja .L_64ae0                         #  1617  0x64eff  6      
  movl %ecx, %ecx                     #  1618  0x64f05  2      
  movl %eax, (%r15,%rcx,1)            #  1619  0x64f07  4      
  movl %eax, %eax                     #  1620  0x64f0b  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1621  0x64f0d  5      
  nop                                 #  1622  0x64f12  1      
  movl %eax, %eax                     #  1623  0x64f13  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1624  0x64f15  5      
  movl %eax, %eax                     #  1625  0x64f1a  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1626  0x64f1c  5      
  jmpq .L_64360                       #  1627  0x64f21  5      
  nop                                 #  1628  0x64f26  1      
.L_656e0:                             #        0x64f27  0      
  nop                                 #  1629  0x64f27  1      
  nop                                 #  1630  0x64f28  1      
  callq .__errno                      #  1631  0x64f29  5      
  movl %eax, %eax                     #  1632  0x64f2e  2      
  movl %eax, %eax                     #  1633  0x64f30  2      
  movl $0xc, (%r15,%rax,1)            #  1634  0x64f32  8      
  xorl %eax, %eax                     #  1635  0x64f3a  2      
  jmpq .L_63a80                       #  1636  0x64f3c  5      
  nop                                 #  1637  0x64f41  1      
.L_65720:                             #        0x64f42  0      
  cmpl %r11d, 0xffd1987(%rip)         #  1638  0x64f42  7      
  ja .L_64ae0                         #  1639  0x64f49  6      
  movl %ecx, %ecx                     #  1640  0x64f4f  2      
  movl %eax, (%r15,%rcx,1)            #  1641  0x64f51  4      
  movl %eax, %eax                     #  1642  0x64f55  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1643  0x64f57  5      
  nop                                 #  1644  0x64f5c  1      
  movl %eax, %eax                     #  1645  0x64f5d  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1646  0x64f5f  5      
  movl %eax, %eax                     #  1647  0x64f64  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1648  0x64f66  5      
  jmpq .L_646e0                       #  1649  0x64f6b  5      
  nop                                 #  1650  0x64f70  1      
.L_65760:                             #        0x64f71  0      
  movl %eax, %eax                     #  1651  0x64f71  2      
  movl 0x10(%r15,%rax,1), %r8d        #  1652  0x64f73  5      
  leal 0x10(%rax), %r9d               #  1653  0x64f78  4      
  testq %r8, %r8                      #  1654  0x64f7c  3      
  jne .L_65200                        #  1655  0x64f7f  6      
  jmpq .L_648a0                       #  1656  0x64f85  5      
  nop                                 #  1657  0x64f8a  1      
.L_65780:                             #        0x64f8b  0      
  movl %esi, %esi                     #  1658  0x64f8b  2      
  movl 0x10(%r15,%rsi,1), %r8d        #  1659  0x64f8d  5      
  leal 0x10(%rsi), %r9d               #  1660  0x64f92  4      
  testq %r8, %r8                      #  1661  0x64f96  3      
  jne .L_652c0                        #  1662  0x64f99  6      
  jmpq .L_645a0                       #  1663  0x64f9f  5      
  nop                                 #  1664  0x64fa4  1      
.L_657a0:                             #        0x64fa5  0      
  movl %esi, %ebx                     #  1665  0x64fa5  2      
  shrl $0x8, %ebx                     #  1666  0x64fa7  3      
  testl %ebx, %ebx                    #  1667  0x64faa  2      
  jne .L_659a0                        #  1668  0x64fac  6      
  movl $0x1, %edx                     #  1669  0x64fb2  5      
  xorl %ecx, %ecx                     #  1670  0x64fb7  2      
  nop                                 #  1671  0x64fb9  1      
.L_657c0:                             #        0x64fba  0      
  movl %eax, %eax                     #  1672  0x64fba  2      
  movl %ecx, 0x1c(%r15,%rax,1)        #  1673  0x64fbc  5      
  movl 0xffd18fd(%rip), %ebx          #  1674  0x64fc1  6      
  movl %eax, %eax                     #  1675  0x64fc7  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1676  0x64fc9  9      
  nop                                 #  1677  0x64fd2  1      
  movl %eax, %eax                     #  1678  0x64fd3  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1679  0x64fd5  9      
  testl %ebx, %edx                    #  1680  0x64fde  2      
  je .L_65940                         #  1681  0x64fe0  6      
  leal 0x130(,%rcx,4), %edx           #  1682  0x64fe6  7      
  xorl %ebx, %ebx                     #  1683  0x64fed  2      
  cmpl $0x1f, %ecx                    #  1684  0x64fef  3      
  nop                                 #  1685  0x64ff2  1      
  movslq %edx, %rdx                   #  1686  0x64ff3  3      
  movl %edx, %edx                     #  1687  0x64ff6  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1688  0x64ff8  8      
  je .L_65820                         #  1689  0x65000  6      
  shrl $0x1, %ecx                     #  1690  0x65006  2      
  movb $0x19, %bl                     #  1691  0x65008  2      
  subl %ecx, %ebx                     #  1692  0x6500a  2      
  nop                                 #  1693  0x6500c  1      
.L_65820:                             #        0x6500d  0      
  movl %ebx, %ecx                     #  1694  0x6500d  2      
  movl %esi, %r8d                     #  1695  0x6500f  3      
  shll %cl, %r8d                      #  1696  0x65012  3      
  movl %r8d, %ebx                     #  1697  0x65015  3      
  jmpq .L_65880                       #  1698  0x65018  5      
  nop                                 #  1699  0x6501d  1      
  nop                                 #  1700  0x6501e  1      
.L_65840:                             #        0x6501f  0      
  movl %ebx, %ecx                     #  1701  0x6501f  2      
  shrl $0x1f, %ecx                    #  1702  0x65021  3      
  addl $0x4, %ecx                     #  1703  0x65024  3      
  shll $0x2, %ecx                     #  1704  0x65027  3      
  leal (%rcx,%rdx,1), %r9d            #  1705  0x6502a  4      
  movslq %ecx, %rcx                   #  1706  0x6502e  3      
  leaq (%rdx,%rcx,1), %rcx            #  1707  0x65031  4      
  movl %ecx, %ecx                     #  1708  0x65035  2      
  movl (%r15,%rcx,1), %r8d            #  1709  0x65037  4      
  testq %r8, %r8                      #  1710  0x6503b  3      
  nop                                 #  1711  0x6503e  1      
  je .L_65900                         #  1712  0x6503f  6      
  addl %ebx, %ebx                     #  1713  0x65045  2      
  movq %r8, %rdx                      #  1714  0x65047  3      
  nop                                 #  1715  0x6504a  1      
  nop                                 #  1716  0x6504b  1      
.L_65880:                             #        0x6504c  0      
  movl %edx, %edx                     #  1717  0x6504c  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1718  0x6504e  5      
  andl $0xfffffff8, %ecx              #  1719  0x65053  6      
  cmpl %ecx, %esi                     #  1720  0x65059  2      
  jne .L_65840                        #  1721  0x6505b  6      
  movl 0xffd1869(%rip), %ebx          #  1722  0x65061  6      
  movl %edx, %edx                     #  1723  0x65067  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1724  0x65069  5      
  cmpl %edx, %ebx                     #  1725  0x6506e  2      
  nop                                 #  1726  0x65070  1      
  ja .L_64ae0                         #  1727  0x65071  6      
  cmpl %ecx, %ebx                     #  1728  0x65077  2      
  ja .L_64ae0                         #  1729  0x65079  6      
  movl %ecx, %ecx                     #  1730  0x6507f  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1731  0x65081  5      
  movl %edx, %edx                     #  1732  0x65086  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1733  0x65088  5      
  nop                                 #  1734  0x6508d  1      
  movl %eax, %eax                     #  1735  0x6508e  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1736  0x65090  5      
  movl %eax, %eax                     #  1737  0x65095  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1738  0x65097  5      
  movl %eax, %eax                     #  1739  0x6509c  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1740  0x6509e  9      
  leal 0x8(%rdi), %eax                #  1741  0x650a7  3      
  nop                                 #  1742  0x650aa  1      
  jmpq .L_63a80                       #  1743  0x650ab  5      
  nop                                 #  1744  0x650b0  1      
  nop                                 #  1745  0x650b1  1      
.L_65900:                             #        0x650b2  0      
  cmpl %r9d, 0xffd1817(%rip)          #  1746  0x650b2  7      
  ja .L_64ae0                         #  1747  0x650b9  6      
  movl %ecx, %ecx                     #  1748  0x650bf  2      
  movl %eax, (%r15,%rcx,1)            #  1749  0x650c1  4      
  movl %eax, %eax                     #  1750  0x650c5  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1751  0x650c7  5      
  nop                                 #  1752  0x650cc  1      
  movl %eax, %eax                     #  1753  0x650cd  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1754  0x650cf  5      
  movl %eax, %eax                     #  1755  0x650d4  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1756  0x650d6  5      
  leal 0x8(%rdi), %eax                #  1757  0x650db  3      
  jmpq .L_63a80                       #  1758  0x650de  5      
  nop                                 #  1759  0x650e3  1      
.L_65940:                             #        0x650e4  0      
  leal 0x130(,%rcx,4), %ecx           #  1760  0x650e4  7      
  orl %ebx, %edx                      #  1761  0x650eb  2      
  movl %edx, 0xffd17d1(%rip)          #  1762  0x650ed  6      
  movslq %ecx, %rdx                   #  1763  0x650f3  3      
  addl $0x100368c0, %ecx              #  1764  0x650f6  6      
  nop                                 #  1765  0x650fc  1      
  movl %edx, %edx                     #  1766  0x650fd  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1767  0x650ff  8      
  movl %eax, %eax                     #  1768  0x65107  2      
  movl %ecx, 0x18(%r15,%rax,1)        #  1769  0x65109  5      
  movl %eax, %eax                     #  1770  0x6510e  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1771  0x65110  5      
  movl %eax, %eax                     #  1772  0x65115  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1773  0x65117  5      
  nop                                 #  1774  0x6511c  1      
  leal 0x8(%rdi), %eax                #  1775  0x6511d  3      
  jmpq .L_63a80                       #  1776  0x65120  5      
  nop                                 #  1777  0x65125  1      
  nop                                 #  1778  0x65126  1      
.L_659a0:                             #        0x65127  0      
  cmpl $0xffff, %ebx                  #  1779  0x65127  6      
  movl $0x80000000, %edx              #  1780  0x6512d  5      
  movl $0x1f, %ecx                    #  1781  0x65132  5      
  ja .L_657c0                         #  1782  0x65137  6      
  bsrl %ebx, %ecx                     #  1783  0x6513d  3      
  movl $0x1f, %edx                    #  1784  0x65140  5      
  movl %esi, %ebx                     #  1785  0x65145  2      
  xorl $0x1f, %ecx                    #  1786  0x65147  3      
  subl %ecx, %edx                     #  1787  0x6514a  2      
  leal 0x7(%rdx), %ecx                #  1788  0x6514c  3      
  shrl %cl, %ebx                      #  1789  0x6514f  2      
  movl %ebx, %ecx                     #  1790  0x65151  2      
  andl $0x1, %ecx                     #  1791  0x65153  3      
  leal (%rcx,%rdx,2), %ecx            #  1792  0x65156  3      
  movl $0x1, %edx                     #  1793  0x65159  5      
  shll %cl, %edx                      #  1794  0x6515e  2      
  jmpq .L_657c0                       #  1795  0x65160  5      
  xchgw %ax, %ax                      #  1796  0x65165  3      
.L_659e0:                             #        0x65168  0      
  movl %edx, %edx                     #  1797  0x65168  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1798  0x6516a  5      
  cmpl %ecx, 0xffd175b(%rip)          #  1799  0x6516f  6      
  jbe .L_64ee0                        #  1800  0x65175  6      
  jmpq .L_64ae0                       #  1801  0x6517b  5      
  nop                                 #  1802  0x65180  1      
.L_65a00:                             #        0x65181  0      
  andl $0xfffffff8, %ebx              #  1803  0x65181  6      
  movl %ebx, %ecx                     #  1804  0x65187  2      
  shrl $0x3, %ecx                     #  1805  0x65189  3      
  cmpl $0x1f, %ecx                    #  1806  0x6518c  3      
  ja .L_65b80                         #  1807  0x6518f  6      
  movl %edx, %edx                     #  1808  0x65195  2      
  movl 0x8(%r15,%rdx,1), %r9d         #  1809  0x65197  5      
  leal 0x100368e8(,%rcx,8), %r10d     #  1810  0x6519c  8      
  movl %edx, %edx                     #  1811  0x651a4  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1812  0x651a6  5      
  cmpl %r10d, %r9d                    #  1813  0x651ab  3      
  jne .L_65b60                        #  1814  0x651ae  6      
  nop                                 #  1815  0x651b4  1      
  nop                                 #  1816  0x651b5  1      
.L_65a40:                             #        0x651b6  0      
  cmpl %r8d, %r9d                     #  1817  0x651b6  3      
  je .L_65b40                         #  1818  0x651b9  6      
  cmpl %r10d, %r8d                    #  1819  0x651bf  3      
  jne .L_65b20                        #  1820  0x651c2  6      
  nop                                 #  1821  0x651c8  1      
.L_65a60:                             #        0x651c9  0      
  movl %r9d, %r9d                     #  1822  0x651c9  3      
  movl %r8d, 0xc(%r15,%r9,1)          #  1823  0x651cc  5      
  movl %r8d, %r8d                     #  1824  0x651d1  3      
  movl %r9d, 0x8(%r15,%r8,1)          #  1825  0x651d4  5      
  nop                                 #  1826  0x651d9  1      
  nop                                 #  1827  0x651da  1      
.L_65a80:                             #        0x651db  0      
  leal (%rbx,%rdx,1), %edx            #  1828  0x651db  3      
  addl %ebx, %esi                     #  1829  0x651de  2      
  movl %edx, %edx                     #  1830  0x651e0  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1831  0x651e2  5      
  jmpq .L_64e80                       #  1832  0x651e7  5      
  nop                                 #  1833  0x651ec  1      
.L_65aa0:                             #        0x651ed  0      
  addl 0xffd16d9(%rip), %esi          #  1834  0x651ed  6      
  movl %eax, 0xffd16df(%rip)          #  1835  0x651f3  6      
  movl %esi, 0xffd16cd(%rip)          #  1836  0x651f9  6      
  orl $0x1, %esi                      #  1837  0x651ff  3      
  movl %eax, %eax                     #  1838  0x65202  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1839  0x65204  5      
  leal 0x8(%rdi), %eax                #  1840  0x65209  3      
  nop                                 #  1841  0x6520c  1      
  jmpq .L_63a80                       #  1842  0x6520d  5      
  nop                                 #  1843  0x65212  1      
  nop                                 #  1844  0x65213  1      
.L_65ae0:                             #        0x65214  0      
  addl 0xffd16ae(%rip), %esi          #  1845  0x65214  6      
  movl %eax, 0xffd16b4(%rip)          #  1846  0x6521a  6      
  movl %esi, %edx                     #  1847  0x65220  2      
  movl %esi, 0xffd16a0(%rip)          #  1848  0x65222  6      
  orl $0x1, %edx                      #  1849  0x65228  3      
  movl %eax, %eax                     #  1850  0x6522b  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1851  0x6522d  5      
  xchgw %ax, %ax                      #  1852  0x65232  3      
  leal (%rsi,%rax,1), %eax            #  1853  0x65235  3      
  movl %eax, %eax                     #  1854  0x65238  2      
  movl %esi, (%r15,%rax,1)            #  1855  0x6523a  4      
  leal 0x8(%rdi), %eax                #  1856  0x6523e  3      
  jmpq .L_63a80                       #  1857  0x65241  5      
  nop                                 #  1858  0x65246  1      
.L_65b20:                             #        0x65247  0      
  cmpl %r8d, 0xffd1682(%rip)          #  1859  0x65247  7      
  ja .L_64ae0                         #  1860  0x6524e  6      
  movl %r8d, %r8d                     #  1861  0x65254  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1862  0x65257  5      
  je .L_65a60                         #  1863  0x6525c  6      
  jmpq .L_64ae0                       #  1864  0x65262  5      
.L_65b40:                             #        0x65267  0      
  movl $0xfffffffe, %r8d              #  1865  0x65267  6      
  roll %cl, %r8d                      #  1866  0x6526d  3      
  andl %r8d, 0xffd1649(%rip)          #  1867  0x65270  7      
  jmpq .L_65a80                       #  1868  0x65277  5      
  nop                                 #  1869  0x6527c  1      
.L_65b60:                             #        0x6527d  0      
  cmpl %r9d, 0xffd164c(%rip)          #  1870  0x6527d  7      
  ja .L_64ae0                         #  1871  0x65284  6      
  movl %r9d, %r9d                     #  1872  0x6528a  3      
  cmpl %edx, 0xc(%r15,%r9,1)          #  1873  0x6528d  5      
  je .L_65a40                         #  1874  0x65292  6      
  jmpq .L_64ae0                       #  1875  0x65298  5      
.L_65b80:                             #        0x6529d  0      
  movl %edx, %edx                     #  1876  0x6529d  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1877  0x6529f  5      
  movl %edx, %edx                     #  1878  0x652a4  2      
  movl 0x18(%r15,%rdx,1), %r9d        #  1879  0x652a6  5      
  cmpl %r8d, %edx                     #  1880  0x652ab  3      
  je .L_65d40                         #  1881  0x652ae  6      
  movl %edx, %edx                     #  1882  0x652b4  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1883  0x652b6  5      
  xchgw %ax, %ax                      #  1884  0x652bb  3      
  cmpl %ecx, 0xffd160c(%rip)          #  1885  0x652be  6      
  ja .L_64ae0                         #  1886  0x652c4  6      
  movl %ecx, %ecx                     #  1887  0x652ca  2      
  cmpl %edx, 0xc(%r15,%rcx,1)         #  1888  0x652cc  5      
  jne .L_64ae0                        #  1889  0x652d1  6      
  nop                                 #  1890  0x652d7  1      
  movl %r8d, %r8d                     #  1891  0x652d8  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1892  0x652db  5      
  jne .L_64ae0                        #  1893  0x652e0  6      
  movl %ecx, %ecx                     #  1894  0x652e6  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  1895  0x652e8  5      
  movl %r8d, %r8d                     #  1896  0x652ed  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  1897  0x652f0  5      
  nop                                 #  1898  0x652f5  1      
.L_65be0:                             #        0x652f6  0      
  testq %r9, %r9                      #  1899  0x652f6  3      
  je .L_65a80                         #  1900  0x652f9  6      
  movl %edx, %edx                     #  1901  0x652ff  2      
  movl 0x1c(%r15,%rdx,1), %ecx        #  1902  0x65301  5      
  leal 0x130(,%rcx,4), %r10d          #  1903  0x65306  8      
  movslq %r10d, %r10                  #  1904  0x6530e  3      
  nop                                 #  1905  0x65311  1      
  movl %r10d, %r10d                   #  1906  0x65312  3      
  cmpl %edx, 0x100368c0(%r15,%r10,1)  #  1907  0x65315  8      
  je .L_65d00                         #  1908  0x6531d  6      
  cmpl %r9d, 0xffd15a6(%rip)          #  1909  0x65323  7      
  ja .L_64ae0                         #  1910  0x6532a  6      
  xchgw %ax, %ax                      #  1911  0x65330  3      
  movl %r9d, %r9d                     #  1912  0x65333  3      
  cmpl %edx, 0x10(%r15,%r9,1)         #  1913  0x65336  5      
  je .L_65ce0                         #  1914  0x6533b  6      
  movl %r9d, %r9d                     #  1915  0x65341  3      
  movl %r8d, 0x14(%r15,%r9,1)         #  1916  0x65344  5      
  nop                                 #  1917  0x65349  1      
.L_65c40:                             #        0x6534a  0      
  testq %r8, %r8                      #  1918  0x6534a  3      
  je .L_65a80                         #  1919  0x6534d  6      
  nop                                 #  1920  0x65353  1      
  nop                                 #  1921  0x65354  1      
.L_65c60:                             #        0x65355  0      
  movl 0xffd1574(%rip), %r10d         #  1922  0x65355  7      
  cmpl %r8d, %r10d                    #  1923  0x6535c  3      
  ja .L_64ae0                         #  1924  0x6535f  6      
  movl %edx, %edx                     #  1925  0x65365  2      
  movl 0x10(%r15,%rdx,1), %ecx        #  1926  0x65367  5      
  movl %r8d, %r8d                     #  1927  0x6536c  3      
  movl %r9d, 0x18(%r15,%r8,1)         #  1928  0x6536f  5      
  nop                                 #  1929  0x65374  1      
  testq %rcx, %rcx                    #  1930  0x65375  3      
  je .L_65ca0                         #  1931  0x65378  6      
  cmpl %ecx, %r10d                    #  1932  0x6537e  3      
  ja .L_64ae0                         #  1933  0x65381  6      
  movl %r8d, %r8d                     #  1934  0x65387  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  1935  0x6538a  5      
  movl %ecx, %ecx                     #  1936  0x6538f  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1937  0x65391  5      
  nop                                 #  1938  0x65396  1      
.L_65ca0:                             #        0x65397  0      
  movl %edx, %edx                     #  1939  0x65397  2      
  movl 0x14(%r15,%rdx,1), %ecx        #  1940  0x65399  5      
  testq %rcx, %rcx                    #  1941  0x6539e  3      
  je .L_65a80                         #  1942  0x653a1  6      
  cmpl %ecx, %r10d                    #  1943  0x653a7  3      
  ja .L_64ae0                         #  1944  0x653aa  6      
  nop                                 #  1945  0x653b0  1      
  movl %r8d, %r8d                     #  1946  0x653b1  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  1947  0x653b4  5      
  movl %ecx, %ecx                     #  1948  0x653b9  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1949  0x653bb  5      
  jmpq .L_65a80                       #  1950  0x653c0  5      
  nop                                 #  1951  0x653c5  1      
.L_65ce0:                             #        0x653c6  0      
  movl %r9d, %r9d                     #  1952  0x653c6  3      
  movl %r8d, 0x10(%r15,%r9,1)         #  1953  0x653c9  5      
  jmpq .L_65c40                       #  1954  0x653ce  5      
  nop                                 #  1955  0x653d3  1      
  nop                                 #  1956  0x653d4  1      
.L_65d00:                             #        0x653d5  0      
  testq %r8, %r8                      #  1957  0x653d5  3      
  movl %r10d, %r10d                   #  1958  0x653d8  3      
  movl %r8d, 0x100368c0(%r15,%r10,1)  #  1959  0x653db  8      
  jne .L_65c60                        #  1960  0x653e3  6      
  movl $0xfffffffe, %r8d              #  1961  0x653e9  6      
  roll %cl, %r8d                      #  1962  0x653ef  3      
  nop                                 #  1963  0x653f2  1      
  andl %r8d, 0xffd14ca(%rip)          #  1964  0x653f3  7      
  jmpq .L_65a80                       #  1965  0x653fa  5      
  nop                                 #  1966  0x653ff  1      
  nop                                 #  1967  0x65400  1      
.L_65d40:                             #        0x65401  0      
  movl %edx, %edx                     #  1968  0x65401  2      
  movl 0x14(%r15,%rdx,1), %r8d        #  1969  0x65403  5      
  leal 0x14(%rdx), %ecx               #  1970  0x65408  3      
  testq %r8, %r8                      #  1971  0x6540b  3      
  jne .L_65da0                        #  1972  0x6540e  6      
  jmpq .L_65de0                       #  1973  0x65414  5      
  nop                                 #  1974  0x65419  1      
.L_65d60:                             #        0x6541a  0      
  leal 0x14(%r8), %ecx                #  1975  0x6541a  4      
  nop                                 #  1976  0x6541e  1      
  nop                                 #  1977  0x6541f  1      
.L_65d80:                             #        0x65420  0      
  movq %r10, %r8                      #  1978  0x65420  3      
  nop                                 #  1979  0x65423  1      
  nop                                 #  1980  0x65424  1      
.L_65da0:                             #        0x65425  0      
  movl %r8d, %r8d                     #  1981  0x65425  3      
  movl 0x14(%r15,%r8,1), %r10d        #  1982  0x65428  5      
  testq %r10, %r10                    #  1983  0x6542d  3      
  jne .L_65d60                        #  1984  0x65430  6      
  movl %r8d, %r8d                     #  1985  0x65436  3      
  movl 0x10(%r15,%r8,1), %r10d        #  1986  0x65439  5      
  testq %r10, %r10                    #  1987  0x6543e  3      
  je .L_65e00                         #  1988  0x65441  6      
  leal 0x10(%r8), %ecx                #  1989  0x65447  4      
  xchgw %ax, %ax                      #  1990  0x6544b  3      
  jmpq .L_65d80                       #  1991  0x6544e  5      
  nop                                 #  1992  0x65453  1      
  nop                                 #  1993  0x65454  1      
.L_65de0:                             #        0x65455  0      
  movl %edx, %edx                     #  1994  0x65455  2      
  movl 0x10(%r15,%rdx,1), %r8d        #  1995  0x65457  5      
  leal 0x10(%rdx), %ecx               #  1996  0x6545c  3      
  testq %r8, %r8                      #  1997  0x6545f  3      
  jne .L_65da0                        #  1998  0x65462  6      
  jmpq .L_65be0                       #  1999  0x65468  5      
  nop                                 #  2000  0x6546d  1      
.L_65e00:                             #        0x6546e  0      
  cmpl %ecx, 0xffd145c(%rip)          #  2001  0x6546e  6      
  ja .L_64ae0                         #  2002  0x65474  6      
  movl %ecx, %ecx                     #  2003  0x6547a  2      
  movl $0x0, (%r15,%rcx,1)            #  2004  0x6547c  8      
  jmpq .L_65be0                       #  2005  0x65484  5      
  nop                                 #  2006  0x65489  1      
                                                               
.size malloc, .-malloc

