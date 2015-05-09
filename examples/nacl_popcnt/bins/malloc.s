  .text
  .globl malloc
  .type malloc, @function

#! file-offset 0x63820
#! rip-offset  0x63820
#! capacity    9568 bytes

# Text                                #  Line  RIP      Bytes  
.malloc:                              #        0x63820  0      
  pushq %r12                          #  1     0x63820  3      
  pushq %rbx                          #  2     0x63823  2      
  movl %edi, %ebx                     #  3     0x63825  2      
  subl $0x8, %esp                     #  4     0x63827  3      
  addq %r15, %rsp                     #  5     0x6382a  3      
  movl 0xffd305d(%rip), %eax          #  6     0x6382d  6      
  testl %eax, %eax                    #  7     0x63833  2      
  je .L_63b00                         #  8     0x63835  6      
  nop                                 #  9     0x6383b  1      
.L_63840:                             #        0x6383c  0      
  testb $0x2, 0xffd3239(%rip)         #  10    0x6383c  7      
  jne .L_63ac0                        #  11    0x63843  6      
  nop                                 #  12    0x63849  1      
  nop                                 #  13    0x6384a  1      
.L_63860:                             #        0x6384b  0      
  cmpl $0xf4, %ebx                    #  14    0x6384b  3      
  ja .L_63960                         #  15    0x6384e  6      
  cmpl $0xa, %ebx                     #  16    0x63854  3      
  ja .L_63b80                         #  17    0x63857  6      
  movl $0x2, %ecx                     #  18    0x6385d  5      
  movl $0x2, %esi                     #  19    0x63862  5      
  nop                                 #  20    0x63867  1      
  movl $0x10, %ebx                    #  21    0x63868  5      
  nop                                 #  22    0x6386d  1      
  nop                                 #  23    0x6386e  1      
.L_638a0:                             #        0x6386f  0      
  movl 0xffd304b(%rip), %edx          #  24    0x6386f  6      
  movl %edx, %eax                     #  25    0x63875  2      
  shrl %cl, %eax                      #  26    0x63877  2      
  testb $0x3, %al                     #  27    0x63879  2      
  je .L_63a20                         #  28    0x6387b  6      
  andl $0x1, %eax                     #  29    0x63881  3      
  xorl $0x1, %eax                     #  30    0x63884  3      
  leal (%rax,%rsi,1), %ecx            #  31    0x63887  3      
  nop                                 #  32    0x6388a  1      
  leal 0x100368e8(,%rcx,8), %edi      #  33    0x6388b  7      
  movl %edi, %edi                     #  34    0x63892  2      
  movl 0x8(%r15,%rdi,1), %eax         #  35    0x63894  5      
  movl %eax, %eax                     #  36    0x63899  2      
  movl 0x8(%r15,%rax,1), %ebx         #  37    0x6389b  5      
  cmpl %ebx, %edi                     #  38    0x638a0  2      
  je .L_646e0                         #  39    0x638a2  6      
  nop                                 #  40    0x638a8  1      
  cmpl %ebx, 0xffd3021(%rip)          #  41    0x638a9  6      
  ja .L_64a40                         #  42    0x638af  6      
  movl %ebx, %ebx                     #  43    0x638b5  2      
  cmpl %eax, 0xc(%r15,%rbx,1)         #  44    0x638b7  5      
  jne .L_64a40                        #  45    0x638bc  6      
  movl %ebx, %ebx                     #  46    0x638c2  2      
  movl %edi, 0xc(%r15,%rbx,1)         #  47    0x638c4  5      
  movl %edi, %edi                     #  48    0x638c9  2      
  movl %ebx, 0x8(%r15,%rdi,1)         #  49    0x638cb  5      
  nop                                 #  50    0x638d0  1      
  nop                                 #  51    0x638d1  1      
.L_63920:                             #        0x638d2  0      
  shll $0x3, %ecx                     #  52    0x638d2  3      
  movl %ecx, %edx                     #  53    0x638d5  2      
  addl %eax, %ecx                     #  54    0x638d7  2      
  orl $0x3, %edx                      #  55    0x638d9  3      
  movl %eax, %eax                     #  56    0x638dc  2      
  movl %edx, 0x4(%r15,%rax,1)         #  57    0x638de  5      
  addl $0x8, %eax                     #  58    0x638e3  3      
  movl %ecx, %ecx                     #  59    0x638e6  2      
  orl $0x1, 0x4(%r15,%rcx,1)          #  60    0x638e8  6      
  nop                                 #  61    0x638ee  1      
  jmpq .L_639e0                       #  62    0x638ef  5      
  nop                                 #  63    0x638f4  1      
  nop                                 #  64    0x638f5  1      
.L_63960:                             #        0x638f6  0      
  cmpl $0xffffffbf, %ebx              #  65    0x638f6  6      
  jbe .L_63b40                        #  66    0x638fc  6      
  movl 0xffd2fbf(%rip), %r8d          #  67    0x63902  7      
  movl $0xffffffff, %ebx              #  68    0x63909  5      
  nop                                 #  69    0x6390e  1      
.L_63980:                             #        0x6390f  0      
  cmpl %r8d, %ebx                     #  70    0x6390f  3      
  jbe .L_63a40                        #  71    0x63912  6      
  nop                                 #  72    0x63918  1      
  nop                                 #  73    0x63919  1      
.L_639a0:                             #        0x6391a  0      
  movl 0xffd2fac(%rip), %eax          #  74    0x6391a  6      
  cmpl %ebx, %eax                     #  75    0x63920  2      
  jbe .L_63ea0                        #  76    0x63922  6      
  movl %eax, %ecx                     #  77    0x63928  2      
  movl 0xffd2fa8(%rip), %eax          #  78    0x6392a  6      
  subl %ebx, %ecx                     #  79    0x63930  2      
  movl %ecx, 0xffd2f94(%rip)          #  80    0x63932  6      
  xchgw %ax, %ax                      #  81    0x63938  3      
  orl $0x1, %ecx                      #  82    0x6393b  3      
  leal (%rbx,%rax,1), %edx            #  83    0x6393e  3      
  orl $0x3, %ebx                      #  84    0x63941  3      
  movl %edx, %edx                     #  85    0x63944  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  86    0x63946  5      
  movl %edx, 0xffd2f87(%rip)          #  87    0x6394b  6      
  movl %eax, %eax                     #  88    0x63951  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  89    0x63953  5      
  addl $0x8, %eax                     #  90    0x63958  3      
.L_639e0:                             #        0x6395b  0      
  testb $0x2, 0xffd311a(%rip)         #  91    0x6395b  7      
  je .L_63a00                         #  92    0x63962  6      
  mfence                              #  93    0x63968  3      
  movl $0x0, 0xffd310b(%rip)          #  94    0x6396b  10     
  nop                                 #  95    0x63975  1      
.L_63a00:                             #        0x63976  0      
  addl $0x8, %esp                     #  96    0x63976  3      
  addq %r15, %rsp                     #  97    0x63979  3      
  popq %rbx                           #  98    0x6397c  2      
  popq %r12                           #  99    0x6397e  3      
  popq %r11                           #  100   0x63981  3      
  andl $0xffffffe0, %r11d             #  101   0x63984  7      
  addq %r15, %r11                     #  102   0x6398b  3      
  jmpq %r11                           #  103   0x6398e  3      
  nop                                 #  104   0x63991  1      
.L_63a20:                             #        0x63992  0      
  movl 0xffd2f2f(%rip), %r8d          #  105   0x63992  7      
  cmpl %r8d, %ebx                     #  106   0x63999  3      
  ja .L_63be0                         #  107   0x6399c  6      
  nop                                 #  108   0x639a2  1      
  nop                                 #  109   0x639a3  1      
.L_63a40:                             #        0x639a4  0      
  movl %r8d, %edx                     #  110   0x639a4  3      
  movl 0xffd2f27(%rip), %eax          #  111   0x639a7  6      
  subl %ebx, %edx                     #  112   0x639ad  2      
  cmpl $0xf, %edx                     #  113   0x639af  3      
  ja .L_63ba0                         #  114   0x639b2  6      
  movl %r8d, %edx                     #  115   0x639b8  3      
  addl %eax, %r8d                     #  116   0x639bb  3      
  nop                                 #  117   0x639be  1      
  movl $0x0, 0xffd2eff(%rip)          #  118   0x639bf  10     
  orl $0x3, %edx                      #  119   0x639c9  3      
  movl $0x0, 0xffd2efe(%rip)          #  120   0x639cc  10     
  movl %eax, %eax                     #  121   0x639d6  2      
  movl %edx, 0x4(%r15,%rax,1)         #  122   0x639d8  5      
  xchgw %ax, %ax                      #  123   0x639dd  3      
  movl %r8d, %r8d                     #  124   0x639e0  3      
  orl $0x1, 0x4(%r15,%r8,1)           #  125   0x639e3  6      
  nop                                 #  126   0x639e9  1      
  nop                                 #  127   0x639ea  1      
.L_63aa0:                             #        0x639eb  0      
  addl $0x8, %eax                     #  128   0x639eb  3      
  jmpq .L_639e0                       #  129   0x639ee  5      
  nop                                 #  130   0x639f3  1      
  nop                                 #  131   0x639f4  1      
.L_63ac0:                             #        0x639f5  0      
  movl $0x1, %eax                     #  132   0x639f5  5      
  xchgl %eax, 0xffd3080(%rip)         #  133   0x639fa  6      
  testl %eax, %eax                    #  134   0x63a00  2      
  je .L_63860                         #  135   0x63a02  6      
  movl $0x10036a80, %edi              #  136   0x63a08  5      
  nop                                 #  137   0x63a0d  1      
  callq .spin_acquire_lock            #  138   0x63a0e  5      
  movl %eax, %edx                     #  139   0x63a13  2      
  xorl %eax, %eax                     #  140   0x63a15  2      
  testl %edx, %edx                    #  141   0x63a17  2      
  je .L_63860                         #  142   0x63a19  6      
  jmpq .L_63a00                       #  143   0x63a1f  5      
  nop                                 #  144   0x63a24  1      
.L_63b00:                             #        0x63a25  0      
  nop                                 #  145   0x63a25  1      
  nop                                 #  146   0x63a26  1      
  callq .init_mparams                 #  147   0x63a27  5      
  jmpq .L_63840                       #  148   0x63a2c  5      
  nop                                 #  149   0x63a31  1      
  nop                                 #  150   0x63a32  1      
.L_63b40:                             #        0x63a33  0      
  movl 0xffd2e8b(%rip), %edi          #  151   0x63a33  6      
  addl $0xb, %ebx                     #  152   0x63a39  3      
  andl $0xfffffff8, %ebx              #  153   0x63a3c  6      
  testl %edi, %edi                    #  154   0x63a42  2      
  jne .L_63d20                        #  155   0x63a44  6      
  nop                                 #  156   0x63a4a  1      
.L_63b60:                             #        0x63a4b  0      
  movl 0xffd2e76(%rip), %r8d          #  157   0x63a4b  7      
  jmpq .L_63980                       #  158   0x63a52  5      
  nop                                 #  159   0x63a57  1      
  nop                                 #  160   0x63a58  1      
.L_63b80:                             #        0x63a59  0      
  addl $0xb, %ebx                     #  161   0x63a59  3      
  andl $0xfffffff8, %ebx              #  162   0x63a5c  6      
  movl %ebx, %esi                     #  163   0x63a62  2      
  shrl $0x3, %esi                     #  164   0x63a64  3      
  movl %esi, %ecx                     #  165   0x63a67  2      
  jmpq .L_638a0                       #  166   0x63a69  5      
  nop                                 #  167   0x63a6e  1      
.L_63ba0:                             #        0x63a6f  0      
  leal (%rbx,%rax,1), %ecx            #  168   0x63a6f  3      
  movl %edx, %esi                     #  169   0x63a72  2      
  movl %edx, 0xffd2e4e(%rip)          #  170   0x63a74  6      
  orl $0x1, %esi                      #  171   0x63a7a  3      
  orl $0x3, %ebx                      #  172   0x63a7d  3      
  movl %ecx, %ecx                     #  173   0x63a80  2      
  movl %esi, 0x4(%r15,%rcx,1)         #  174   0x63a82  5      
  movl %ecx, 0xffd2e47(%rip)          #  175   0x63a87  6      
  xchgw %ax, %ax                      #  176   0x63a8d  3      
  leal (%rdx,%rcx,1), %ecx            #  177   0x63a90  3      
  movl %eax, %eax                     #  178   0x63a93  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  179   0x63a95  5      
  movl %ecx, %ecx                     #  180   0x63a9a  2      
  movl %edx, (%r15,%rcx,1)            #  181   0x63a9c  4      
  jmpq .L_63aa0                       #  182   0x63aa0  5      
  nop                                 #  183   0x63aa5  1      
.L_63be0:                             #        0x63aa6  0      
  testl %eax, %eax                    #  184   0x63aa6  2      
  je .L_64320                         #  185   0x63aa8  6      
  movl $0x1, %r8d                     #  186   0x63aae  6      
  shll %cl, %eax                      #  187   0x63ab4  2      
  movl %r8d, %edi                     #  188   0x63ab6  3      
  shll %cl, %edi                      #  189   0x63ab9  2      
  addl %edi, %edi                     #  190   0x63abb  2      
  movl %edi, %esi                     #  191   0x63abd  2      
  negl %esi                           #  192   0x63abf  2      
  orl %edi, %esi                      #  193   0x63ac1  2      
  nop                                 #  194   0x63ac3  1      
  movl $0x100368e8, %edi              #  195   0x63ac4  5      
  andl %eax, %esi                     #  196   0x63ac9  2      
  movl %edi, %edi                     #  197   0x63acb  2      
  movl %esi, %eax                     #  198   0x63acd  2      
  negl %eax                           #  199   0x63acf  2      
  andl %esi, %eax                     #  200   0x63ad1  2      
  bsfl %eax, %ecx                     #  201   0x63ad3  3      
  leal (%rdi,%rcx,8), %r9d            #  202   0x63ad6  4      
  movl %r9d, %r9d                     #  203   0x63ada  3      
  movl 0x8(%r15,%r9,1), %eax          #  204   0x63add  5      
  xchgw %ax, %ax                      #  205   0x63ae2  3      
  movl %eax, %eax                     #  206   0x63ae5  2      
  movl 0x8(%r15,%rax,1), %esi         #  207   0x63ae7  5      
  cmpl %esi, %r9d                     #  208   0x63aec  3      
  je .L_64b60                         #  209   0x63aef  6      
  cmpl %esi, 0xffd2dd5(%rip)          #  210   0x63af5  6      
  ja .L_64a40                         #  211   0x63afb  6      
  nop                                 #  212   0x63b01  1      
  movl %esi, %esi                     #  213   0x63b02  2      
  cmpl %eax, 0xc(%r15,%rsi,1)         #  214   0x63b04  5      
  jne .L_64a40                        #  215   0x63b09  6      
  movl %esi, %esi                     #  216   0x63b0f  2      
  movl %r9d, 0xc(%r15,%rsi,1)         #  217   0x63b11  5      
  movl %r9d, %r9d                     #  218   0x63b16  3      
  movl %esi, 0x8(%r15,%r9,1)          #  219   0x63b19  5      
  nop                                 #  220   0x63b1e  1      
.L_63c60:                             #        0x63b1f  0      
  leal (,%rcx,8), %edx                #  221   0x63b1f  7      
  movl %ebx, %ecx                     #  222   0x63b26  2      
  orl $0x3, %ecx                      #  223   0x63b28  3      
  subl %ebx, %edx                     #  224   0x63b2b  2      
  movl %eax, %eax                     #  225   0x63b2d  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  226   0x63b2f  5      
  addl %eax, %ebx                     #  227   0x63b34  2      
  movl %edx, %ecx                     #  228   0x63b36  2      
  orl $0x1, %ecx                      #  229   0x63b38  3      
  nop                                 #  230   0x63b3b  1      
  movl %ebx, %ebx                     #  231   0x63b3c  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  232   0x63b3e  5      
  leal (%rdx,%rbx,1), %ecx            #  233   0x63b43  3      
  movl %ecx, %ecx                     #  234   0x63b46  2      
  movl %edx, (%r15,%rcx,1)            #  235   0x63b48  4      
  movl 0xffd2d76(%rip), %ecx          #  236   0x63b4c  6      
  testl %ecx, %ecx                    #  237   0x63b52  2      
  je .L_63d00                         #  238   0x63b54  6      
  nop                                 #  239   0x63b5a  1      
  movl 0xffd2d5e(%rip), %r9d          #  240   0x63b5b  7      
  shrl $0x3, %ecx                     #  241   0x63b62  3      
  movl $0x1, %r8d                     #  242   0x63b65  6      
  shll %cl, %r8d                      #  243   0x63b6b  3      
  movl 0xffd2d60(%rip), %esi          #  244   0x63b6e  6      
  leal (%rdi,%rcx,8), %edi            #  245   0x63b74  3      
  testl %r9d, %r8d                    #  246   0x63b77  3      
  nop                                 #  247   0x63b7a  1      
  jne .L_64a20                        #  248   0x63b7b  6      
  orl %r9d, %r8d                      #  249   0x63b81  3      
  movq %rdi, %rcx                     #  250   0x63b84  3      
  movl %r8d, 0xffd2d32(%rip)          #  251   0x63b87  7      
  nop                                 #  252   0x63b8e  1      
.L_63ce0:                             #        0x63b8f  0      
  movl %edi, %edi                     #  253   0x63b8f  2      
  movl %esi, 0x8(%r15,%rdi,1)         #  254   0x63b91  5      
  movl %ecx, %ecx                     #  255   0x63b96  2      
  movl %esi, 0xc(%r15,%rcx,1)         #  256   0x63b98  5      
  movl %esi, %esi                     #  257   0x63b9d  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  258   0x63b9f  5      
  movl %esi, %esi                     #  259   0x63ba4  2      
  movl %edi, 0xc(%r15,%rsi,1)         #  260   0x63ba6  5      
  nop                                 #  261   0x63bab  1      
.L_63d00:                             #        0x63bac  0      
  movl %edx, 0xffd2d16(%rip)          #  262   0x63bac  6      
  movl %ebx, 0xffd2d1c(%rip)          #  263   0x63bb2  6      
  addl $0x8, %eax                     #  264   0x63bb8  3      
  jmpq .L_639e0                       #  265   0x63bbb  5      
  nop                                 #  266   0x63bc0  1      
.L_63d20:                             #        0x63bc1  0      
  movl %ebx, %eax                     #  267   0x63bc1  2      
  movl %ebx, %edx                     #  268   0x63bc3  2      
  xorl %r8d, %r8d                     #  269   0x63bc5  3      
  shrl $0x8, %eax                     #  270   0x63bc8  3      
  negl %edx                           #  271   0x63bcb  2      
  testl %eax, %eax                    #  272   0x63bcd  2      
  je .L_63d60                         #  273   0x63bcf  6      
  cmpl $0xffff, %eax                  #  274   0x63bd5  5      
  movb $0x1f, %r8b                    #  275   0x63bda  3      
  ja .L_63d60                         #  276   0x63bdd  6      
  bsrl %eax, %ecx                     #  277   0x63be3  3      
  nop                                 #  278   0x63be6  1      
  movl $0x1f, %eax                    #  279   0x63be7  5      
  movl %ebx, %r8d                     #  280   0x63bec  3      
  xorl $0x1f, %ecx                    #  281   0x63bef  3      
  subl %ecx, %eax                     #  282   0x63bf2  2      
  leal 0x7(%rax), %ecx                #  283   0x63bf4  3      
  shrl %cl, %r8d                      #  284   0x63bf7  3      
  andl $0x1, %r8d                     #  285   0x63bfa  4      
  leal (%r8,%rax,2), %r8d             #  286   0x63bfe  4      
  nop                                 #  287   0x63c02  1      
.L_63d60:                             #        0x63c03  0      
  leal 0x130(,%r8,4), %eax            #  288   0x63c03  8      
  cltq                                #  289   0x63c0b  2      
  movl %eax, %eax                     #  290   0x63c0d  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  291   0x63c0f  8      
  testq %rax, %rax                    #  292   0x63c17  3      
  je .L_64720                         #  293   0x63c1a  6      
  xorl %ecx, %ecx                     #  294   0x63c20  2      
  nop                                 #  295   0x63c22  1      
  cmpl $0x1f, %r8d                    #  296   0x63c23  4      
  je .L_63da0                         #  297   0x63c27  6      
  movl %r8d, %esi                     #  298   0x63c2d  3      
  movb $0x19, %cl                     #  299   0x63c30  2      
  shrl $0x1, %esi                     #  300   0x63c32  2      
  subl %esi, %ecx                     #  301   0x63c34  2      
  xchgw %ax, %ax                      #  302   0x63c36  3      
  nop                                 #  303   0x63c39  1      
.L_63da0:                             #        0x63c3a  0      
  movl %ebx, %r9d                     #  304   0x63c3a  3      
  xorl %r11d, %r11d                   #  305   0x63c3d  3      
  xorl %esi, %esi                     #  306   0x63c40  2      
  shll %cl, %r9d                      #  307   0x63c42  3      
  movl %edx, %ecx                     #  308   0x63c45  2      
  jmpq .L_63e40                       #  309   0x63c47  5      
  nop                                 #  310   0x63c4c  1      
.L_63dc0:                             #        0x63c4d  0      
  movl %ecx, %edx                     #  311   0x63c4d  2      
  nop                                 #  312   0x63c4f  1      
  nop                                 #  313   0x63c50  1      
.L_63de0:                             #        0x63c51  0      
  movl %r9d, %ecx                     #  314   0x63c51  3      
  movl %eax, %eax                     #  315   0x63c54  2      
  movl 0x14(%r15,%rax,1), %r10d       #  316   0x63c56  5      
  shrl $0x1f, %ecx                    #  317   0x63c5b  3      
  addl $0x4, %ecx                     #  318   0x63c5e  3      
  shll $0x2, %ecx                     #  319   0x63c61  3      
  movslq %ecx, %rcx                   #  320   0x63c64  3      
  addq %rcx, %rax                     #  321   0x63c67  3      
  movl %eax, %eax                     #  322   0x63c6a  2      
  movl (%r15,%rax,1), %ecx            #  323   0x63c6c  4      
  nop                                 #  324   0x63c70  1      
  cmpl %ecx, %r10d                    #  325   0x63c71  3      
  je .L_63e80                         #  326   0x63c74  6      
  testq %r10, %r10                    #  327   0x63c7a  3      
  movq %r10, %rax                     #  328   0x63c7d  3      
  je .L_63e80                         #  329   0x63c80  6      
  nop                                 #  330   0x63c86  1      
  nop                                 #  331   0x63c87  1      
.L_63e20:                             #        0x63c88  0      
  testq %rcx, %rcx                    #  332   0x63c88  3      
  je .L_643c0                         #  333   0x63c8b  6      
  movq %rax, %r11                     #  334   0x63c91  3      
  addl %r9d, %r9d                     #  335   0x63c94  3      
  movq %rcx, %rax                     #  336   0x63c97  3      
  movl %edx, %ecx                     #  337   0x63c9a  2      
  nop                                 #  338   0x63c9c  1      
.L_63e40:                             #        0x63c9d  0      
  movl %eax, %eax                     #  339   0x63c9d  2      
  movl 0x4(%r15,%rax,1), %edx         #  340   0x63c9f  5      
  andl $0xfffffff8, %edx              #  341   0x63ca4  6      
  subl %ebx, %edx                     #  342   0x63caa  2      
  cmpl %ecx, %edx                     #  343   0x63cac  2      
  jae .L_63dc0                        #  344   0x63cae  6      
  testl %edx, %edx                    #  345   0x63cb4  2      
  je .L_643a0                         #  346   0x63cb6  6      
  movq %rax, %rsi                     #  347   0x63cbc  3      
  nop                                 #  348   0x63cbf  1      
  jmpq .L_63de0                       #  349   0x63cc0  5      
  nop                                 #  350   0x63cc5  1      
  nop                                 #  351   0x63cc6  1      
.L_63e80:                             #        0x63cc7  0      
  movq %r11, %rax                     #  352   0x63cc7  3      
  jmpq .L_63e20                       #  353   0x63cca  5      
  nop                                 #  354   0x63ccf  1      
  nop                                 #  355   0x63cd0  1      
.L_63ea0:                             #        0x63cd1  0      
  movl 0xffd2bb8(%rip), %r12d         #  356   0x63cd1  7      
  testl %r12d, %r12d                  #  357   0x63cd8  3      
  je .L_649e0                         #  358   0x63cdb  6      
  nop                                 #  359   0x63ce1  1      
  nop                                 #  360   0x63ce2  1      
.L_63ec0:                             #        0x63ce3  0      
  testb $0x1, 0xffd2d92(%rip)         #  361   0x63ce3  7      
  je .L_63f20                         #  362   0x63cea  6      
  cmpl %ebx, 0xffd2ba6(%rip)          #  363   0x63cf0  6      
  ja .L_63f20                         #  364   0x63cf6  6      
  movl 0xffd2bc9(%rip), %r11d         #  365   0x63cfc  7      
  testl %r11d, %r11d                  #  366   0x63d03  3      
  nop                                 #  367   0x63d06  1      
  je .L_63f20                         #  368   0x63d07  6      
  movl 0xffd2b81(%rip), %eax          #  369   0x63d0d  6      
  leal 0x1e(%rax,%rbx,1), %r12d       #  370   0x63d13  5      
  negl %eax                           #  371   0x63d18  2      
  andl %eax, %r12d                    #  372   0x63d1a  3      
  movl 0xffd2d55(%rip), %eax          #  373   0x63d1d  6      
  testl %eax, %eax                    #  374   0x63d23  2      
  jne .L_64660                        #  375   0x63d25  6      
.L_63f00:                             #        0x63d2b  0      
  cmpl %ebx, %r12d                    #  376   0x63d2b  3      
  ja .L_64a60                         #  377   0x63d2e  6      
  nop                                 #  378   0x63d34  1      
  nop                                 #  379   0x63d35  1      
.L_63f20:                             #        0x63d36  0      
  movl 0xffd2b5c(%rip), %eax          #  380   0x63d36  6      
  leal 0x2f(%rax,%rbx,1), %r12d       #  381   0x63d3c  5      
  negl %eax                           #  382   0x63d41  2      
  andl %eax, %r12d                    #  383   0x63d43  3      
  cmpl %ebx, %r12d                    #  384   0x63d46  3      
  jbe .L_646c0                        #  385   0x63d49  6      
  movl 0xffd2d23(%rip), %eax          #  386   0x63d4f  6      
  nop                                 #  387   0x63d55  1      
  testl %eax, %eax                    #  388   0x63d56  2      
  jne .L_646a0                        #  389   0x63d58  6      
  nop                                 #  390   0x63d5e  1      
  nop                                 #  391   0x63d5f  1      
.L_63f60:                             #        0x63d60  0      
  xorl %edi, %edi                     #  392   0x63d60  2      
  xorl %r9d, %r9d                     #  393   0x63d62  3      
  movl $0xffffffff, %r8d              #  394   0x63d65  6      
  movl $0x22, %ecx                    #  395   0x63d6b  5      
  movl $0x3, %edx                     #  396   0x63d70  5      
  movl %r12d, %esi                    #  397   0x63d75  3      
  nop                                 #  398   0x63d78  1      
  callq .mmap                         #  399   0x63d79  5      
  movl %eax, %edi                     #  400   0x63d7e  2      
  cmpl $0xffffffff, %edi              #  401   0x63d80  6      
  je .L_65640                         #  402   0x63d86  6      
  movl 0xffd2cde(%rip), %eax          #  403   0x63d8c  6      
  addl %r12d, %eax                    #  404   0x63d92  3      
  cmpl 0xffd2cd9(%rip), %eax          #  405   0x63d95  6      
  movl %eax, 0xffd2ccf(%rip)          #  406   0x63d9b  6      
  jbe .L_63fc0                        #  407   0x63da1  6      
  movl %eax, 0xffd2cc7(%rip)          #  408   0x63da7  6      
  nop                                 #  409   0x63dad  1      
  nop                                 #  410   0x63dae  1      
.L_63fc0:                             #        0x63daf  0      
  movl 0xffd2b23(%rip), %eax          #  411   0x63daf  6      
  testq %rax, %rax                    #  412   0x63db5  3      
  je .L_65460                         #  413   0x63db8  6      
  movl 0xffd2cbf(%rip), %r9d          #  414   0x63dbe  7      
  movl 0xffd2cbd(%rip), %ecx          #  415   0x63dc5  6      
  nop                                 #  416   0x63dcb  1      
  movl $0x10036a84, %r8d              #  417   0x63dcc  6      
  movl %r8d, %edx                     #  418   0x63dd2  3      
  addl %r9d, %ecx                     #  419   0x63dd5  3      
  cmpl %edi, %ecx                     #  420   0x63dd8  2      
  jne .L_64020                        #  421   0x63dda  6      
  jmpq .L_64c40                       #  422   0x63de0  5      
  nop                                 #  423   0x63de5  1      
.L_64000:                             #        0x63de6  0      
  movl %edx, %edx                     #  424   0x63de6  2      
  movl (%r15,%rdx,1), %ecx            #  425   0x63de8  4      
  movl %edx, %edx                     #  426   0x63dec  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  427   0x63dee  5      
  cmpl %edi, %ecx                     #  428   0x63df3  2      
  je .L_64c40                         #  429   0x63df5  6      
  nop                                 #  430   0x63dfb  1      
.L_64020:                             #        0x63dfc  0      
  movl %edx, %edx                     #  431   0x63dfc  2      
  movl 0x8(%r15,%rdx,1), %edx         #  432   0x63dfe  5      
  testq %rdx, %rdx                    #  433   0x63e03  3      
  jne .L_64000                        #  434   0x63e06  6      
  nop                                 #  435   0x63e0c  1      
  nop                                 #  436   0x63e0d  1      
.L_64040:                             #        0x63e0e  0      
  cmpl %edi, 0xffd2abc(%rip)          #  437   0x63e0e  6      
  jbe .L_64060                        #  438   0x63e14  6      
  movl %edi, 0xffd2ab0(%rip)          #  439   0x63e1a  6      
  nop                                 #  440   0x63e20  1      
  nop                                 #  441   0x63e21  1      
.L_64060:                             #        0x63e22  0      
  leal (%r12,%rdi,1), %esi            #  442   0x63e22  4      
  cmpl %esi, %r9d                     #  443   0x63e26  3      
  je .L_64d00                         #  444   0x63e29  6      
  movl %r8d, %ecx                     #  445   0x63e2f  3      
  jmpq .L_640a0                       #  446   0x63e32  5      
  nop                                 #  447   0x63e37  1      
.L_64080:                             #        0x63e38  0      
  movl %ecx, %ecx                     #  448   0x63e38  2      
  cmpl %esi, (%r15,%rcx,1)            #  449   0x63e3a  4      
  je .L_64d20                         #  450   0x63e3e  6      
  nop                                 #  451   0x63e44  1      
  nop                                 #  452   0x63e45  1      
.L_640a0:                             #        0x63e46  0      
  movl %ecx, %ecx                     #  453   0x63e46  2      
  movl 0x8(%r15,%rcx,1), %ecx         #  454   0x63e48  5      
  testq %rcx, %rcx                    #  455   0x63e4d  3      
  jne .L_64080                        #  456   0x63e50  6      
  nop                                 #  457   0x63e56  1      
  nop                                 #  458   0x63e57  1      
.L_640c0:                             #        0x63e58  0      
  movl %r8d, %edx                     #  459   0x63e58  3      
  nop                                 #  460   0x63e5b  1      
  nop                                 #  461   0x63e5c  1      
.L_640e0:                             #        0x63e5d  0      
  movl %edx, %edx                     #  462   0x63e5d  2      
  movl (%r15,%rdx,1), %ecx            #  463   0x63e5f  4      
  cmpl %ecx, %eax                     #  464   0x63e63  2      
  jb .L_64100                         #  465   0x63e65  6      
  movl %edx, %edx                     #  466   0x63e6b  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  467   0x63e6d  5      
  cmpl %ecx, %eax                     #  468   0x63e72  2      
  jb .L_64120                         #  469   0x63e74  6      
  nop                                 #  470   0x63e7a  1      
.L_64100:                             #        0x63e7b  0      
  movl %edx, %edx                     #  471   0x63e7b  2      
  movl 0x8(%r15,%rdx,1), %edx         #  472   0x63e7d  5      
  testq %rdx, %rdx                    #  473   0x63e82  3      
  jne .L_640e0                        #  474   0x63e85  6      
  movl %edx, %edx                     #  475   0x63e8b  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  476   0x63e8d  5      
  movl %edx, %edx                     #  477   0x63e92  2      
  addl (%r15,%rdx,1), %ecx            #  478   0x63e94  4      
  nop                                 #  479   0x63e98  1      
.L_64120:                             #        0x63e99  0      
  leal -0x2f(%rcx), %edx              #  480   0x63e99  3      
  xorl %esi, %esi                     #  481   0x63e9c  2      
  movl %edx, %r8d                     #  482   0x63e9e  3      
  andl $0x7, %r8d                     #  483   0x63ea1  4      
  je .L_64140                         #  484   0x63ea5  6      
  movl %r8d, %esi                     #  485   0x63eab  3      
  negl %esi                           #  486   0x63eae  2      
  andl $0x7, %esi                     #  487   0x63eb0  3      
  nop                                 #  488   0x63eb3  1      
.L_64140:                             #        0x63eb4  0      
  addl %edx, %esi                     #  489   0x63eb4  2      
  leal 0x10(%rax), %edx               #  490   0x63eb6  3      
  cmpl %esi, %edx                     #  491   0x63eb9  2      
  movl %edi, %edx                     #  492   0x63ebb  2      
  cmovaq %rax, %rsi                   #  493   0x63ebd  4      
  xorl %r9d, %r9d                     #  494   0x63ec1  3      
  andl $0x7, %edx                     #  495   0x63ec4  3      
  leal 0x8(%rsi), %r10d               #  496   0x63ec7  4      
  je .L_64180                         #  497   0x63ecb  6      
  movl %edx, %r9d                     #  498   0x63ed1  3      
  negl %r9d                           #  499   0x63ed4  3      
  nop                                 #  500   0x63ed7  1      
  andl $0x7, %r9d                     #  501   0x63ed8  4      
  nop                                 #  502   0x63edc  1      
  nop                                 #  503   0x63edd  1      
.L_64180:                             #        0x63ede  0      
  leal -0x28(%r12), %r8d              #  504   0x63ede  5      
  leal (%r9,%rdi,1), %r11d            #  505   0x63ee3  4      
  leal 0x18(%rsi), %edx               #  506   0x63ee7  3      
  subl %r9d, %r8d                     #  507   0x63eea  3      
  movl %r11d, 0xffd29e4(%rip)         #  508   0x63eed  7      
  movl %r8d, %r9d                     #  509   0x63ef4  3      
  movl %r8d, 0xffd29ce(%rip)          #  510   0x63ef7  7      
  addl %r11d, %r8d                    #  511   0x63efe  3      
  orl $0x1, %r9d                      #  512   0x63f01  4      
  movl %r11d, %r11d                   #  513   0x63f05  3      
  movl %r9d, 0x4(%r15,%r11,1)         #  514   0x63f08  5      
  movl %r8d, %r8d                     #  515   0x63f0d  3      
  movl $0x28, 0x4(%r15,%r8,1)         #  516   0x63f10  9      
  nop                                 #  517   0x63f19  1      
  movl 0xffd297f(%rip), %r8d          #  518   0x63f1a  7      
  movl %r8d, 0xffd29b4(%rip)          #  519   0x63f21  7      
  movl %esi, %esi                     #  520   0x63f28  2      
  movl $0x1b, 0x4(%r15,%rsi,1)        #  521   0x63f2a  9      
  movq 0xffd2b4a(%rip), %r8           #  522   0x63f33  7      
  movl %r10d, %r10d                   #  523   0x63f3a  3      
  movq %r8, (%r15,%r10,1)             #  524   0x63f3d  4      
  movq 0xffd2b44(%rip), %r8           #  525   0x63f41  7      
  movl %r10d, %r10d                   #  526   0x63f48  3      
  movq %r8, 0x8(%r15,%r10,1)          #  527   0x63f4b  5      
  movl %edi, 0xffd2b2e(%rip)          #  528   0x63f50  6      
  nop                                 #  529   0x63f56  1      
  movl %r12d, 0xffd2b2a(%rip)         #  530   0x63f57  7      
  movl $0x1, 0xffd2b28(%rip)          #  531   0x63f5e  10     
  movl %r10d, 0xffd2b1d(%rip)         #  532   0x63f68  7      
  nop                                 #  533   0x63f6f  1      
.L_64220:                             #        0x63f70  0      
  addl $0x4, %edx                     #  534   0x63f70  3      
  leal 0x4(%rdx), %edi                #  535   0x63f73  3      
  movl %edx, %edx                     #  536   0x63f76  2      
  movl $0x7, (%r15,%rdx,1)            #  537   0x63f78  8      
  cmpl %ecx, %edi                     #  538   0x63f80  2      
  jb .L_64220                         #  539   0x63f82  6      
  cmpl %esi, %eax                     #  540   0x63f88  2      
  je .L_642c0                         #  541   0x63f8a  6      
  subl %eax, %esi                     #  542   0x63f90  2      
  xchgw %ax, %ax                      #  543   0x63f92  3      
  leal (%rsi,%rax,1), %edx            #  544   0x63f95  3      
  movl %esi, %ecx                     #  545   0x63f98  2      
  orl $0x1, %ecx                      #  546   0x63f9a  3      
  movl %edx, %edx                     #  547   0x63f9d  2      
  andl $0xfffffffe, 0x4(%r15,%rdx,1)  #  548   0x63f9f  9      
  movl %eax, %eax                     #  549   0x63fa8  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  550   0x63faa  5      
  movl %esi, %ecx                     #  551   0x63faf  2      
  shrl $0x3, %ecx                     #  552   0x63fb1  3      
  nop                                 #  553   0x63fb4  1      
  movl %edx, %edx                     #  554   0x63fb5  2      
  movl %esi, (%r15,%rdx,1)            #  555   0x63fb7  4      
  cmpl $0x1f, %ecx                    #  556   0x63fbb  3      
  ja .L_64e80                         #  557   0x63fbe  6      
  movl 0xffd28f6(%rip), %edi          #  558   0x63fc4  6      
  movl $0x1, %edx                     #  559   0x63fca  5      
  nop                                 #  560   0x63fcf  1      
  leal 0x100368e8(,%rcx,8), %esi      #  561   0x63fd0  7      
  shll %cl, %edx                      #  562   0x63fd7  2      
  testl %edi, %edx                    #  563   0x63fd9  2      
  jne .L_65300                        #  564   0x63fdb  6      
  orl %edi, %edx                      #  565   0x63fe1  2      
  movl %edx, 0xffd28d7(%rip)          #  566   0x63fe3  6      
  movq %rsi, %rdx                     #  567   0x63fe9  3      
  nop                                 #  568   0x63fec  1      
.L_642a0:                             #        0x63fed  0      
  movl %esi, %esi                     #  569   0x63fed  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  570   0x63fef  5      
  movl %edx, %edx                     #  571   0x63ff4  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  572   0x63ff6  5      
  movl %eax, %eax                     #  573   0x63ffb  2      
  movl %edx, 0x8(%r15,%rax,1)         #  574   0x63ffd  5      
  movl %eax, %eax                     #  575   0x64002  2      
  movl %esi, 0xc(%r15,%rax,1)         #  576   0x64004  5      
  nop                                 #  577   0x64009  1      
.L_642c0:                             #        0x6400a  0      
  movl 0xffd28bc(%rip), %eax          #  578   0x6400a  6      
  cmpl %ebx, %eax                     #  579   0x64010  2      
  jbe .L_65640                        #  580   0x64012  6      
  movl %eax, %ecx                     #  581   0x64018  2      
  movl 0xffd28b8(%rip), %eax          #  582   0x6401a  6      
  subl %ebx, %ecx                     #  583   0x64020  2      
  movl %ecx, 0xffd28a4(%rip)          #  584   0x64022  6      
  xchgw %ax, %ax                      #  585   0x64028  3      
  orl $0x1, %ecx                      #  586   0x6402b  3      
  leal (%rbx,%rax,1), %edx            #  587   0x6402e  3      
  orl $0x3, %ebx                      #  588   0x64031  3      
  movl %edx, %edx                     #  589   0x64034  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  590   0x64036  5      
  movl %edx, 0xffd2897(%rip)          #  591   0x6403b  6      
  movl %eax, %eax                     #  592   0x64041  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  593   0x64043  5      
  nop                                 #  594   0x64048  1      
  jmpq .L_63aa0                       #  595   0x64049  5      
  nop                                 #  596   0x6404e  1      
  nop                                 #  597   0x6404f  1      
.L_64320:                             #        0x64050  0      
  movl 0xffd286e(%rip), %eax          #  598   0x64050  6      
  testl %eax, %eax                    #  599   0x64056  2      
  je .L_639a0                         #  600   0x64058  6      
  movl %eax, %edx                     #  601   0x6405e  2      
  negl %edx                           #  602   0x64060  2      
  andl %eax, %edx                     #  603   0x64062  2      
  bsfl %edx, %eax                     #  604   0x64064  3      
  leal 0x130(,%rax,4), %eax           #  605   0x64067  7      
  cltq                                #  606   0x6406e  2      
  movl %eax, %eax                     #  607   0x64070  2      
  movl 0x100368c0(%r15,%rax,1), %esi  #  608   0x64072  8      
  movl %esi, %esi                     #  609   0x6407a  2      
  movl 0x4(%r15,%rsi,1), %edx         #  610   0x6407c  5      
  movq %rsi, %rax                     #  611   0x64081  3      
  andl $0xfffffff8, %edx              #  612   0x64084  6      
  subl %ebx, %edx                     #  613   0x6408a  2      
  nop                                 #  614   0x6408c  1      
.L_64360:                             #        0x6408d  0      
  movl %esi, %esi                     #  615   0x6408d  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  616   0x6408f  5      
  testq %rcx, %rcx                    #  617   0x64094  3      
  je .L_64760                         #  618   0x64097  6      
  movq %rcx, %rsi                     #  619   0x6409d  3      
  nop                                 #  620   0x640a0  1      
.L_64380:                             #        0x640a1  0      
  movl %esi, %esi                     #  621   0x640a1  2      
  movl 0x4(%r15,%rsi,1), %ecx         #  622   0x640a3  5      
  andl $0xfffffff8, %ecx              #  623   0x640a8  6      
  subl %ebx, %ecx                     #  624   0x640ae  2      
  cmpl %edx, %ecx                     #  625   0x640b0  2      
  jae .L_64680                        #  626   0x640b2  6      
  movq %rsi, %rax                     #  627   0x640b8  3      
  movl %ecx, %edx                     #  628   0x640bb  2      
  jmpq .L_64360                       #  629   0x640bd  5      
  nop                                 #  630   0x640c2  1      
.L_643a0:                             #        0x640c3  0      
  movq %rax, %rsi                     #  631   0x640c3  3      
  nop                                 #  632   0x640c6  1      
  nop                                 #  633   0x640c7  1      
.L_643c0:                             #        0x640c8  0      
  testq %rsi, %rsi                    #  634   0x640c8  3      
  je .L_64700                         #  635   0x640cb  6      
  nop                                 #  636   0x640d1  1      
  nop                                 #  637   0x640d2  1      
.L_643e0:                             #        0x640d3  0      
  testq %rax, %rax                    #  638   0x640d3  3      
  jne .L_64420                        #  639   0x640d6  6      
  jmpq .L_64460                       #  640   0x640dc  5      
  nop                                 #  641   0x640e1  1      
  nop                                 #  642   0x640e2  1      
.L_64400:                             #        0x640e3  0      
  movq %rcx, %rax                     #  643   0x640e3  3      
  nop                                 #  644   0x640e6  1      
  nop                                 #  645   0x640e7  1      
.L_64420:                             #        0x640e8  0      
  movl %eax, %eax                     #  646   0x640e8  2      
  movl 0x4(%r15,%rax,1), %ecx         #  647   0x640ea  5      
  andl $0xfffffff8, %ecx              #  648   0x640ef  6      
  subl %ebx, %ecx                     #  649   0x640f5  2      
  cmpl %edx, %ecx                     #  650   0x640f7  2      
  jae .L_64440                        #  651   0x640f9  6      
  movl %ecx, %edx                     #  652   0x640ff  2      
  movq %rax, %rsi                     #  653   0x64101  3      
  nop                                 #  654   0x64104  1      
.L_64440:                             #        0x64105  0      
  movl %eax, %eax                     #  655   0x64105  2      
  movl 0x10(%r15,%rax,1), %ecx        #  656   0x64107  5      
  testq %rcx, %rcx                    #  657   0x6410c  3      
  jne .L_64400                        #  658   0x6410f  6      
  movl %eax, %eax                     #  659   0x64115  2      
  movl 0x14(%r15,%rax,1), %eax        #  660   0x64117  5      
  testq %rax, %rax                    #  661   0x6411c  3      
  jne .L_64420                        #  662   0x6411f  6      
  nop                                 #  663   0x64125  1      
.L_64460:                             #        0x64126  0      
  testq %rsi, %rsi                    #  664   0x64126  3      
  je .L_63b60                         #  665   0x64129  6      
  movl 0xffd2792(%rip), %r8d          #  666   0x6412f  7      
  movl %r8d, %eax                     #  667   0x64136  3      
  subl %ebx, %eax                     #  668   0x64139  2      
  cmpl %edx, %eax                     #  669   0x6413b  2      
  jbe .L_63980                        #  670   0x6413d  6      
  nop                                 #  671   0x64143  1      
  movl 0xffd2786(%rip), %edi          #  672   0x64144  6      
  cmpl %esi, %edi                     #  673   0x6414a  2      
  ja .L_64a40                         #  674   0x6414c  6      
  leal (%rbx,%rsi,1), %eax            #  675   0x64152  3      
  cmpl %eax, %esi                     #  676   0x64155  2      
  jae .L_64a40                        #  677   0x64157  6      
  movl %esi, %esi                     #  678   0x6415d  2      
  movl 0xc(%r15,%rsi,1), %r8d         #  679   0x6415f  5      
  movl %esi, %esi                     #  680   0x64164  2      
  movl 0x18(%r15,%rsi,1), %r10d       #  681   0x64166  5      
  cmpl %r8d, %esi                     #  682   0x6416b  3      
  je .L_651c0                         #  683   0x6416e  6      
  movl %esi, %esi                     #  684   0x64174  2      
  movl 0x8(%r15,%rsi,1), %ecx         #  685   0x64176  5      
  cmpl %ecx, %edi                     #  686   0x6417b  2      
  ja .L_64a40                         #  687   0x6417d  6      
  nop                                 #  688   0x64183  1      
  movl %ecx, %ecx                     #  689   0x64184  2      
  cmpl %esi, 0xc(%r15,%rcx,1)         #  690   0x64186  5      
  jne .L_64a40                        #  691   0x6418b  6      
  movl %r8d, %r8d                     #  692   0x64191  3      
  cmpl %esi, 0x8(%r15,%r8,1)          #  693   0x64194  5      
  jne .L_64a40                        #  694   0x64199  6      
  nop                                 #  695   0x6419f  1      
  movl %ecx, %ecx                     #  696   0x641a0  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  697   0x641a2  5      
  movl %r8d, %r8d                     #  698   0x641a7  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  699   0x641aa  5      
  xchgw %ax, %ax                      #  700   0x641af  3      
  nop                                 #  701   0x641b2  1      
.L_64500:                             #        0x641b3  0      
  testq %r10, %r10                    #  702   0x641b3  3      
  je .L_64600                         #  703   0x641b6  6      
  movl %esi, %esi                     #  704   0x641bc  2      
  movl 0x1c(%r15,%rsi,1), %ecx        #  705   0x641be  5      
  leal 0x130(,%rcx,4), %r9d           #  706   0x641c3  8      
  movslq %r9d, %r9                    #  707   0x641cb  3      
  nop                                 #  708   0x641ce  1      
  movl %r9d, %r9d                     #  709   0x641cf  3      
  cmpl %esi, 0x100368c0(%r15,%r9,1)   #  710   0x641d2  8      
  je .L_652c0                         #  711   0x641da  6      
  cmpl %r10d, 0xffd26e9(%rip)         #  712   0x641e0  7      
  ja .L_64a40                         #  713   0x641e7  6      
  xchgw %ax, %ax                      #  714   0x641ed  3      
  movl %r10d, %r10d                   #  715   0x641f0  3      
  cmpl %esi, 0x10(%r15,%r10,1)        #  716   0x641f3  5      
  je .L_65580                         #  717   0x641f8  6      
  movl %r10d, %r10d                   #  718   0x641fe  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  719   0x64201  5      
  nop                                 #  720   0x64206  1      
.L_64560:                             #        0x64207  0      
  testq %r8, %r8                      #  721   0x64207  3      
  je .L_64600                         #  722   0x6420a  6      
  nop                                 #  723   0x64210  1      
  nop                                 #  724   0x64211  1      
.L_64580:                             #        0x64212  0      
  cmpl %r8d, %edi                     #  725   0x64212  3      
  ja .L_64a40                         #  726   0x64215  6      
  movl %esi, %esi                     #  727   0x6421b  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  728   0x6421d  5      
  movl %r8d, %r8d                     #  729   0x64222  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  730   0x64225  5      
  testq %rcx, %rcx                    #  731   0x6422a  3      
  nop                                 #  732   0x6422d  1      
  je .L_645c0                         #  733   0x6422e  6      
  cmpl %ecx, %edi                     #  734   0x64234  2      
  ja .L_64a40                         #  735   0x64236  6      
  movl %r8d, %r8d                     #  736   0x6423c  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  737   0x6423f  5      
  movl %ecx, %ecx                     #  738   0x64244  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  739   0x64246  5      
  nop                                 #  740   0x6424b  1      
.L_645c0:                             #        0x6424c  0      
  movl %esi, %esi                     #  741   0x6424c  2      
  movl 0x14(%r15,%rsi,1), %ecx        #  742   0x6424e  5      
  testq %rcx, %rcx                    #  743   0x64253  3      
  je .L_64600                         #  744   0x64256  6      
  cmpl %ecx, %edi                     #  745   0x6425c  2      
  ja .L_64a40                         #  746   0x6425e  6      
  movl %r8d, %r8d                     #  747   0x64264  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  748   0x64267  5      
  nop                                 #  749   0x6426c  1      
  movl %ecx, %ecx                     #  750   0x6426d  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  751   0x6426f  5      
  nop                                 #  752   0x64274  1      
  nop                                 #  753   0x64275  1      
.L_64600:                             #        0x64276  0      
  cmpl $0xf, %edx                     #  754   0x64276  3      
  ja .L_64b80                         #  755   0x64279  6      
  leal (%rdx,%rbx,1), %eax            #  756   0x6427f  3      
  movl %eax, %edx                     #  757   0x64282  2      
  addl %esi, %eax                     #  758   0x64284  2      
  orl $0x3, %edx                      #  759   0x64286  3      
  movl %esi, %esi                     #  760   0x64289  2      
  movl %edx, 0x4(%r15,%rsi,1)         #  761   0x6428b  5      
  nop                                 #  762   0x64290  1      
  movl %eax, %eax                     #  763   0x64291  2      
  orl $0x1, 0x4(%r15,%rax,1)          #  764   0x64293  6      
  nop                                 #  765   0x64299  1      
  nop                                 #  766   0x6429a  1      
.L_64640:                             #        0x6429b  0      
  leal 0x8(%rsi), %eax                #  767   0x6429b  3      
  testq %rax, %rax                    #  768   0x6429e  3      
  jne .L_639e0                        #  769   0x642a1  6      
  jmpq .L_63b60                       #  770   0x642a7  5      
  nop                                 #  771   0x642ac  1      
.L_64660:                             #        0x642ad  0      
  movl 0xffd27bd(%rip), %edx          #  772   0x642ad  6      
  leal (%r12,%rdx,1), %ecx            #  773   0x642b3  4      
  cmpl %ecx, %edx                     #  774   0x642b7  2      
  jae .L_63f20                        #  775   0x642b9  6      
  cmpl %ecx, %eax                     #  776   0x642bf  2      
  jb .L_63f20                         #  777   0x642c1  6      
  jmpq .L_63f00                       #  778   0x642c7  5      
  nop                                 #  779   0x642cc  1      
.L_64680:                             #        0x642cd  0      
  movl %edx, %ecx                     #  780   0x642cd  2      
  movl %ecx, %edx                     #  781   0x642cf  2      
  jmpq .L_64360                       #  782   0x642d1  5      
  nop                                 #  783   0x642d6  1      
  nop                                 #  784   0x642d7  1      
.L_646a0:                             #        0x642d8  0      
  movl 0xffd2792(%rip), %edx          #  785   0x642d8  6      
  leal (%r12,%rdx,1), %ecx            #  786   0x642de  4      
  cmpl %ecx, %edx                     #  787   0x642e2  2      
  jae .L_646c0                        #  788   0x642e4  6      
  cmpl %ecx, %eax                     #  789   0x642ea  2      
  jae .L_63f60                        #  790   0x642ec  6      
  nop                                 #  791   0x642f2  1      
.L_646c0:                             #        0x642f3  0      
  xorl %eax, %eax                     #  792   0x642f3  2      
  jmpq .L_639e0                       #  793   0x642f5  5      
  nop                                 #  794   0x642fa  1      
  nop                                 #  795   0x642fb  1      
.L_646e0:                             #        0x642fc  0      
  movl $0xfffffffe, %ebx              #  796   0x642fc  5      
  roll %cl, %ebx                      #  797   0x64301  2      
  andl %edx, %ebx                     #  798   0x64303  2      
  movl %ebx, 0xffd25b5(%rip)          #  799   0x64305  6      
  jmpq .L_63920                       #  800   0x6430b  5      
  nop                                 #  801   0x64310  1      
.L_64700:                             #        0x64311  0      
  testq %rax, %rax                    #  802   0x64311  3      
  jne .L_64420                        #  803   0x64314  6      
  nop                                 #  804   0x6431a  1      
  nop                                 #  805   0x6431b  1      
.L_64720:                             #        0x6431c  0      
  movl %r8d, %ecx                     #  806   0x6431c  3      
  movl $0x2, %eax                     #  807   0x6431f  5      
  shll %cl, %eax                      #  808   0x64324  2      
  movl %eax, %ecx                     #  809   0x64326  2      
  negl %ecx                           #  810   0x64328  2      
  orl %eax, %ecx                      #  811   0x6432a  2      
  andl %ecx, %edi                     #  812   0x6432c  2      
  je .L_63b60                         #  813   0x6432e  6      
  movl %edi, %eax                     #  814   0x64334  2      
  xorl %esi, %esi                     #  815   0x64336  2      
  negl %eax                           #  816   0x64338  2      
  andl %edi, %eax                     #  817   0x6433a  2      
  bsfl %eax, %eax                     #  818   0x6433c  3      
  leal 0x130(,%rax,4), %eax           #  819   0x6433f  7      
  cltq                                #  820   0x64346  2      
  movl %eax, %eax                     #  821   0x64348  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  822   0x6434a  8      
  jmpq .L_643e0                       #  823   0x64352  5      
  nop                                 #  824   0x64357  1      
.L_64760:                             #        0x64358  0      
  movl %esi, %esi                     #  825   0x64358  2      
  movl 0x14(%r15,%rsi,1), %esi        #  826   0x6435a  5      
  testq %rsi, %rsi                    #  827   0x6435f  3      
  jne .L_64380                        #  828   0x64362  6      
  movl 0xffd2562(%rip), %edi          #  829   0x64368  6      
  cmpl %eax, %edi                     #  830   0x6436e  2      
  ja .L_64a40                         #  831   0x64370  6      
  xchgw %ax, %ax                      #  832   0x64376  3      
  leal (%rbx,%rax,1), %esi            #  833   0x64379  3      
  cmpl %esi, %eax                     #  834   0x6437c  2      
  jae .L_64a40                        #  835   0x6437e  6      
  movl %eax, %eax                     #  836   0x64384  2      
  movl 0xc(%r15,%rax,1), %r8d         #  837   0x64386  5      
  movl %eax, %eax                     #  838   0x6438b  2      
  movl 0x18(%r15,%rax,1), %r10d       #  839   0x6438d  5      
  cmpl %r8d, %eax                     #  840   0x64392  3      
  nop                                 #  841   0x64395  1      
  je .L_65100                         #  842   0x64396  6      
  movl %eax, %eax                     #  843   0x6439c  2      
  movl 0x8(%r15,%rax,1), %ecx         #  844   0x6439e  5      
  cmpl %ecx, %edi                     #  845   0x643a3  2      
  ja .L_64a40                         #  846   0x643a5  6      
  movl %ecx, %ecx                     #  847   0x643ab  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  848   0x643ad  5      
  nop                                 #  849   0x643b2  1      
  jne .L_64a40                        #  850   0x643b3  6      
  movl %r8d, %r8d                     #  851   0x643b9  3      
  cmpl %eax, 0x8(%r15,%r8,1)          #  852   0x643bc  5      
  jne .L_64a40                        #  853   0x643c1  6      
  movl %ecx, %ecx                     #  854   0x643c7  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  855   0x643c9  5      
  nop                                 #  856   0x643ce  1      
  movl %r8d, %r8d                     #  857   0x643cf  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  858   0x643d2  5      
  nop                                 #  859   0x643d7  1      
  nop                                 #  860   0x643d8  1      
.L_64800:                             #        0x643d9  0      
  testq %r10, %r10                    #  861   0x643d9  3      
  je .L_64900                         #  862   0x643dc  6      
  movl %eax, %eax                     #  863   0x643e2  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  864   0x643e4  5      
  leal 0x130(,%rcx,4), %r9d           #  865   0x643e9  8      
  movslq %r9d, %r9                    #  866   0x643f1  3      
  nop                                 #  867   0x643f4  1      
  movl %r9d, %r9d                     #  868   0x643f5  3      
  cmpl %eax, 0x100368c0(%r15,%r9,1)   #  869   0x643f8  8      
  je .L_65280                         #  870   0x64400  6      
  cmpl %r10d, 0xffd24c3(%rip)         #  871   0x64406  7      
  ja .L_64a40                         #  872   0x6440d  6      
  xchgw %ax, %ax                      #  873   0x64413  3      
  movl %r10d, %r10d                   #  874   0x64416  3      
  cmpl %eax, 0x10(%r15,%r10,1)        #  875   0x64419  5      
  je .L_65440                         #  876   0x6441e  6      
  movl %r10d, %r10d                   #  877   0x64424  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  878   0x64427  5      
  nop                                 #  879   0x6442c  1      
.L_64860:                             #        0x6442d  0      
  testq %r8, %r8                      #  880   0x6442d  3      
  je .L_64900                         #  881   0x64430  6      
  nop                                 #  882   0x64436  1      
  nop                                 #  883   0x64437  1      
.L_64880:                             #        0x64438  0      
  cmpl %r8d, %edi                     #  884   0x64438  3      
  ja .L_64a40                         #  885   0x6443b  6      
  movl %eax, %eax                     #  886   0x64441  2      
  movl 0x10(%r15,%rax,1), %ecx        #  887   0x64443  5      
  movl %r8d, %r8d                     #  888   0x64448  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  889   0x6444b  5      
  testq %rcx, %rcx                    #  890   0x64450  3      
  nop                                 #  891   0x64453  1      
  je .L_648c0                         #  892   0x64454  6      
  cmpl %ecx, %edi                     #  893   0x6445a  2      
  ja .L_64a40                         #  894   0x6445c  6      
  movl %r8d, %r8d                     #  895   0x64462  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  896   0x64465  5      
  movl %ecx, %ecx                     #  897   0x6446a  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  898   0x6446c  5      
  nop                                 #  899   0x64471  1      
.L_648c0:                             #        0x64472  0      
  movl %eax, %eax                     #  900   0x64472  2      
  movl 0x14(%r15,%rax,1), %ecx        #  901   0x64474  5      
  testq %rcx, %rcx                    #  902   0x64479  3      
  je .L_64900                         #  903   0x6447c  6      
  cmpl %ecx, %edi                     #  904   0x64482  2      
  ja .L_64a40                         #  905   0x64484  6      
  movl %r8d, %r8d                     #  906   0x6448a  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  907   0x6448d  5      
  nop                                 #  908   0x64492  1      
  movl %ecx, %ecx                     #  909   0x64493  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  910   0x64495  5      
  nop                                 #  911   0x6449a  1      
  nop                                 #  912   0x6449b  1      
.L_64900:                             #        0x6449c  0      
  cmpl $0xf, %edx                     #  913   0x6449c  3      
  jbe .L_64c20                        #  914   0x6449f  6      
  movl %ebx, %ecx                     #  915   0x644a5  2      
  orl $0x3, %ecx                      #  916   0x644a7  3      
  movl %eax, %eax                     #  917   0x644aa  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  918   0x644ac  5      
  movl %edx, %ecx                     #  919   0x644b1  2      
  orl $0x1, %ecx                      #  920   0x644b3  3      
  nop                                 #  921   0x644b6  1      
  movl %esi, %esi                     #  922   0x644b7  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  923   0x644b9  5      
  leal (%rdx,%rsi,1), %ecx            #  924   0x644be  3      
  movl %ecx, %ecx                     #  925   0x644c1  2      
  movl %edx, (%r15,%rcx,1)            #  926   0x644c3  4      
  movl 0xffd23fb(%rip), %ecx          #  927   0x644c7  6      
  testl %ecx, %ecx                    #  928   0x644cd  2      
  je .L_649a0                         #  929   0x644cf  6      
  nop                                 #  930   0x644d5  1      
  movl 0xffd23e3(%rip), %r10d         #  931   0x644d6  7      
  shrl $0x3, %ecx                     #  932   0x644dd  3      
  movl $0x1, %r8d                     #  933   0x644e0  6      
  shll %cl, %r8d                      #  934   0x644e6  3      
  movl 0xffd23e5(%rip), %edi          #  935   0x644e9  6      
  nop                                 #  936   0x644ef  1      
  leal 0x100368e8(,%rcx,8), %r9d      #  937   0x644f0  8      
  testl %r10d, %r8d                   #  938   0x644f8  3      
  jne .L_650e0                        #  939   0x644fb  6      
  orl %r10d, %r8d                     #  940   0x64501  3      
  movq %r9, %rcx                      #  941   0x64504  3      
  movl %r8d, 0xffd23b2(%rip)          #  942   0x64507  7      
  xchgw %ax, %ax                      #  943   0x6450e  3      
.L_64980:                             #        0x64511  0      
  movl %r9d, %r9d                     #  944   0x64511  3      
  movl %edi, 0x8(%r15,%r9,1)          #  945   0x64514  5      
  movl %ecx, %ecx                     #  946   0x64519  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  947   0x6451b  5      
  movl %edi, %edi                     #  948   0x64520  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  949   0x64522  5      
  movl %edi, %edi                     #  950   0x64527  2      
  movl %r9d, 0xc(%r15,%rdi,1)         #  951   0x64529  5      
  nop                                 #  952   0x6452e  1      
.L_649a0:                             #        0x6452f  0      
  movl %edx, 0xffd2393(%rip)          #  953   0x6452f  6      
  movl %esi, 0xffd2399(%rip)          #  954   0x64535  6      
  nop                                 #  955   0x6453b  1      
  nop                                 #  956   0x6453c  1      
.L_649c0:                             #        0x6453d  0      
  addl $0x8, %eax                     #  957   0x6453d  3      
  testq %rax, %rax                    #  958   0x64540  3      
  jne .L_639e0                        #  959   0x64543  6      
  jmpq .L_63b60                       #  960   0x64549  5      
  nop                                 #  961   0x6454e  1      
.L_649e0:                             #        0x6454f  0      
  nop                                 #  962   0x6454f  1      
  nop                                 #  963   0x64550  1      
  callq .init_mparams                 #  964   0x64551  5      
  jmpq .L_63ec0                       #  965   0x64556  5      
  nop                                 #  966   0x6455b  1      
  nop                                 #  967   0x6455c  1      
.L_64a20:                             #        0x6455d  0      
  movl %edi, %edi                     #  968   0x6455d  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  969   0x6455f  5      
  cmpl %ecx, 0xffd2366(%rip)          #  970   0x64564  6      
  jbe .L_63ce0                        #  971   0x6456a  6      
  nop                                 #  972   0x64570  1      
.L_64a40:                             #        0x64571  0      
  nop                                 #  973   0x64571  1      
  nop                                 #  974   0x64572  1      
  callq .abort                        #  975   0x64573  5      
.L_64a60:                             #        0x64578  0      
  xorl %r9d, %r9d                     #  976   0x64578  3      
  movl $0x3, %edx                     #  977   0x6457b  5      
  xorl %edi, %edi                     #  978   0x64580  2      
  movl $0xffffffff, %r8d              #  979   0x64582  6      
  movl $0x22, %ecx                    #  980   0x64588  5      
  movl %r12d, %esi                    #  981   0x6458d  3      
  nop                                 #  982   0x64590  1      
  callq .mmap                         #  983   0x64591  5      
  movl %eax, %edx                     #  984   0x64596  2      
  cmpl $0xffffffff, %edx              #  985   0x64598  6      
  je .L_63f20                         #  986   0x6459e  6      
  movl %edx, %eax                     #  987   0x645a4  2      
  xorl %ecx, %ecx                     #  988   0x645a6  2      
  andl $0x7, %eax                     #  989   0x645a8  3      
  je .L_64aa0                         #  990   0x645ab  6      
  movl %eax, %ecx                     #  991   0x645b1  2      
  negl %ecx                           #  992   0x645b3  2      
  andl $0x7, %ecx                     #  993   0x645b5  3      
  nop                                 #  994   0x645b8  1      
.L_64aa0:                             #        0x645b9  0      
  leal (%rcx,%rdx,1), %eax            #  995   0x645b9  3      
  leal -0x10(%r12), %esi              #  996   0x645bc  5      
  movl %eax, %eax                     #  997   0x645c1  2      
  movl %ecx, (%r15,%rax,1)            #  998   0x645c3  4      
  subl %ecx, %esi                     #  999   0x645c7  2      
  movl 0xffd2301(%rip), %ecx          #  1000  0x645c9  6      
  movl %eax, %eax                     #  1001  0x645cf  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1002  0x645d1  5      
  addl %eax, %esi                     #  1003  0x645d6  2      
  nop                                 #  1004  0x645d8  1      
  movl %esi, %esi                     #  1005  0x645d9  2      
  movl $0x7, 0x4(%r15,%rsi,1)         #  1006  0x645db  9      
  movl %esi, %esi                     #  1007  0x645e4  2      
  movl $0x0, 0x8(%r15,%rsi,1)         #  1008  0x645e6  9      
  testq %rcx, %rcx                    #  1009  0x645ef  3      
  je .L_64b00                         #  1010  0x645f2  6      
  cmpl %ecx, %edx                     #  1011  0x645f8  2      
  nop                                 #  1012  0x645fa  1      
  jae .L_64b20                        #  1013  0x645fb  6      
  nop                                 #  1014  0x64601  1      
  nop                                 #  1015  0x64602  1      
.L_64b00:                             #        0x64603  0      
  movl %edx, 0xffd22c7(%rip)          #  1016  0x64603  6      
  nop                                 #  1017  0x64609  1      
  nop                                 #  1018  0x6460a  1      
.L_64b20:                             #        0x6460b  0      
  addl 0xffd245e(%rip), %r12d         #  1019  0x6460b  7      
  cmpl 0xffd245b(%rip), %r12d         #  1020  0x64612  7      
  movl %r12d, 0xffd2450(%rip)         #  1021  0x64619  7      
  jbe .L_64b40                        #  1022  0x64620  6      
  movl %r12d, 0xffd2447(%rip)         #  1023  0x64626  7      
  xchgw %ax, %ax                      #  1024  0x6462d  3      
.L_64b40:                             #        0x64630  0      
  addl $0x8, %eax                     #  1025  0x64630  3      
  testq %rax, %rax                    #  1026  0x64633  3      
  jne .L_639e0                        #  1027  0x64636  6      
  jmpq .L_63f20                       #  1028  0x6463c  5      
  nop                                 #  1029  0x64641  1      
.L_64b60:                             #        0x64642  0      
  shll %cl, %r8d                      #  1030  0x64642  3      
  notl %r8d                           #  1031  0x64645  3      
  andl %edx, %r8d                     #  1032  0x64648  3      
  movl %r8d, 0xffd226e(%rip)          #  1033  0x6464b  7      
  jmpq .L_63c60                       #  1034  0x64652  5      
  nop                                 #  1035  0x64657  1      
.L_64b80:                             #        0x64658  0      
  movl %ebx, %ecx                     #  1036  0x64658  2      
  orl $0x3, %ecx                      #  1037  0x6465a  3      
  movl %esi, %esi                     #  1038  0x6465d  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  1039  0x6465f  5      
  movl %edx, %ecx                     #  1040  0x64664  2      
  orl $0x1, %ecx                      #  1041  0x64666  3      
  movl %eax, %eax                     #  1042  0x64669  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1043  0x6466b  5      
  leal (%rdx,%rax,1), %ecx            #  1044  0x64670  3      
  nop                                 #  1045  0x64673  1      
  movl %ecx, %ecx                     #  1046  0x64674  2      
  movl %edx, (%r15,%rcx,1)            #  1047  0x64676  4      
  movl %edx, %ecx                     #  1048  0x6467a  2      
  shrl $0x3, %ecx                     #  1049  0x6467c  3      
  cmpl $0x1f, %ecx                    #  1050  0x6467f  3      
  ja .L_65000                         #  1051  0x64682  6      
  movl 0xffd2231(%rip), %r8d          #  1052  0x64688  7      
  movl $0x1, %edx                     #  1053  0x6468f  5      
  leal 0x100368e8(,%rcx,8), %edi      #  1054  0x64694  7      
  shll %cl, %edx                      #  1055  0x6469b  2      
  testl %r8d, %edx                    #  1056  0x6469d  3      
  jne .L_65420                        #  1057  0x646a0  6      
  orl %r8d, %edx                      #  1058  0x646a6  3      
  movl %edx, 0xffd2211(%rip)          #  1059  0x646a9  6      
  movq %rdi, %rdx                     #  1060  0x646af  3      
  xchgw %ax, %ax                      #  1061  0x646b2  3      
.L_64be0:                             #        0x646b5  0      
  movl %edi, %edi                     #  1062  0x646b5  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  1063  0x646b7  5      
  movl %edx, %edx                     #  1064  0x646bc  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1065  0x646be  5      
  movl %eax, %eax                     #  1066  0x646c3  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1067  0x646c5  5      
  movl %eax, %eax                     #  1068  0x646ca  2      
  movl %edi, 0xc(%r15,%rax,1)         #  1069  0x646cc  5      
  nop                                 #  1070  0x646d1  1      
  jmpq .L_64640                       #  1071  0x646d2  5      
  nop                                 #  1072  0x646d7  1      
  nop                                 #  1073  0x646d8  1      
.L_64c20:                             #        0x646d9  0      
  addl %ebx, %edx                     #  1074  0x646d9  2      
  movl %edx, %ecx                     #  1075  0x646db  2      
  addl %eax, %edx                     #  1076  0x646dd  2      
  orl $0x3, %ecx                      #  1077  0x646df  3      
  movl %eax, %eax                     #  1078  0x646e2  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1079  0x646e4  5      
  movl %edx, %edx                     #  1080  0x646e9  2      
  orl $0x1, 0x4(%r15,%rdx,1)          #  1081  0x646eb  6      
  jmpq .L_649c0                       #  1082  0x646f1  5      
  nop                                 #  1083  0x646f6  1      
.L_64c40:                             #        0x646f7  0      
  movl %edx, %edx                     #  1084  0x646f7  2      
  movl 0xc(%r15,%rdx,1), %ecx         #  1085  0x646f9  5      
  testb $0x8, %cl                     #  1086  0x646fe  3      
  jne .L_64040                        #  1087  0x64701  6      
  andl $0x1, %ecx                     #  1088  0x64707  3      
  je .L_64040                         #  1089  0x6470a  6      
  movl %edx, %edx                     #  1090  0x64710  2      
  movl (%r15,%rdx,1), %esi            #  1091  0x64712  4      
  nop                                 #  1092  0x64716  1      
  cmpl %esi, %eax                     #  1093  0x64717  2      
  jb .L_64040                         #  1094  0x64719  6      
  movl %edx, %edx                     #  1095  0x6471f  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1096  0x64721  5      
  leal (%rcx,%rsi,1), %esi            #  1097  0x64726  3      
  cmpl %eax, %esi                     #  1098  0x64729  2      
  jbe .L_64040                        #  1099  0x6472b  6      
  leal (%r12,%rcx,1), %ecx            #  1100  0x64731  4      
  movl %eax, %esi                     #  1101  0x64735  2      
  movl %edx, %edx                     #  1102  0x64737  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  1103  0x64739  5      
  xorl %edx, %edx                     #  1104  0x6473e  2      
  andl $0x7, %esi                     #  1105  0x64740  3      
  movl 0xffd2183(%rip), %ecx          #  1106  0x64743  6      
  je .L_64ca0                         #  1107  0x64749  6      
  movl %esi, %edx                     #  1108  0x6474f  2      
  negl %edx                           #  1109  0x64751  2      
  andl $0x7, %edx                     #  1110  0x64753  3      
  nop                                 #  1111  0x64756  1      
.L_64ca0:                             #        0x64757  0      
  addl %ecx, %r12d                    #  1112  0x64757  3      
  leal (%rdx,%rax,1), %eax            #  1113  0x6475a  3      
  subl %edx, %r12d                    #  1114  0x6475d  3      
  movl %r12d, %edx                    #  1115  0x64760  3      
  movl %r12d, 0xffd2162(%rip)         #  1116  0x64763  7      
  movl %eax, 0xffd2168(%rip)          #  1117  0x6476a  6      
  orl $0x1, %edx                      #  1118  0x64770  3      
  nop                                 #  1119  0x64773  1      
  movl %eax, %eax                     #  1120  0x64774  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1121  0x64776  5      
  leal (%r12,%rax,1), %eax            #  1122  0x6477b  4      
  movl %eax, %eax                     #  1123  0x6477f  2      
  movl $0x28, 0x4(%r15,%rax,1)        #  1124  0x64781  9      
  movl 0xffd2110(%rip), %eax          #  1125  0x6478a  6      
  nop                                 #  1126  0x64790  1      
  movl %eax, 0xffd2145(%rip)          #  1127  0x64791  6      
  jmpq .L_642c0                       #  1128  0x64797  5      
  nop                                 #  1129  0x6479c  1      
  nop                                 #  1130  0x6479d  1      
.L_64d00:                             #        0x6479e  0      
  movl %r8d, %ecx                     #  1131  0x6479e  3      
  nop                                 #  1132  0x647a1  1      
  nop                                 #  1133  0x647a2  1      
.L_64d20:                             #        0x647a3  0      
  movl %ecx, %ecx                     #  1134  0x647a3  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1135  0x647a5  5      
  testb $0x8, %dl                     #  1136  0x647aa  3      
  jne .L_640c0                        #  1137  0x647ad  6      
  andl $0x1, %edx                     #  1138  0x647b3  3      
  je .L_640c0                         #  1139  0x647b6  6      
  movl %ecx, %ecx                     #  1140  0x647bc  2      
  movl (%r15,%rcx,1), %edx            #  1141  0x647be  4      
  nop                                 #  1142  0x647c2  1      
  movl %ecx, %ecx                     #  1143  0x647c3  2      
  addl %r12d, 0x4(%r15,%rcx,1)        #  1144  0x647c5  5      
  xorl %eax, %eax                     #  1145  0x647ca  2      
  movl %ecx, %ecx                     #  1146  0x647cc  2      
  movl %edi, (%r15,%rcx,1)            #  1147  0x647ce  4      
  movl %edi, %ecx                     #  1148  0x647d2  2      
  andl $0x7, %ecx                     #  1149  0x647d4  3      
  je .L_64d60                         #  1150  0x647d7  6      
  movl %ecx, %eax                     #  1151  0x647dd  2      
  negl %eax                           #  1152  0x647df  2      
  andl $0x7, %eax                     #  1153  0x647e1  3      
  nop                                 #  1154  0x647e4  1      
.L_64d60:                             #        0x647e5  0      
  movl %edx, %ecx                     #  1155  0x647e5  2      
  leal (%rax,%rdi,1), %edi            #  1156  0x647e7  3      
  xorl %eax, %eax                     #  1157  0x647ea  2      
  andl $0x7, %ecx                     #  1158  0x647ec  3      
  je .L_64d80                         #  1159  0x647ef  6      
  movl %ecx, %eax                     #  1160  0x647f5  2      
  negl %eax                           #  1161  0x647f7  2      
  andl $0x7, %eax                     #  1162  0x647f9  3      
  nop                                 #  1163  0x647fc  1      
.L_64d80:                             #        0x647fd  0      
  leal (%rax,%rdx,1), %edx            #  1164  0x647fd  3      
  leal (%rbx,%rdi,1), %eax            #  1165  0x64800  3      
  movl %edx, %esi                     #  1166  0x64803  2      
  subl %edi, %esi                     #  1167  0x64805  2      
  subl %ebx, %esi                     #  1168  0x64807  2      
  orl $0x3, %ebx                      #  1169  0x64809  3      
  cmpl %edx, 0xffd20c6(%rip)          #  1170  0x6480c  6      
  movl %edi, %edi                     #  1171  0x64812  2      
  movl %ebx, 0x4(%r15,%rdi,1)         #  1172  0x64814  5      
  nop                                 #  1173  0x64819  1      
  je .L_65a00                         #  1174  0x6481a  6      
  cmpl %edx, 0xffd20ae(%rip)          #  1175  0x64820  6      
  je .L_65a40                         #  1176  0x64826  6      
  movl %edx, %edx                     #  1177  0x6482c  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1178  0x6482e  5      
  movl %ebx, %ecx                     #  1179  0x64833  2      
  andl $0x3, %ecx                     #  1180  0x64835  3      
  xchgw %ax, %ax                      #  1181  0x64838  3      
  cmpl $0x1, %ecx                     #  1182  0x6483b  3      
  je .L_65960                         #  1183  0x6483e  6      
  nop                                 #  1184  0x64844  1      
  nop                                 #  1185  0x64845  1      
.L_64de0:                             #        0x64846  0      
  andl $0xfffffffe, %ebx              #  1186  0x64846  6      
  movl %esi, %ecx                     #  1187  0x6484c  2      
  movl %edx, %edx                     #  1188  0x6484e  2      
  movl %ebx, 0x4(%r15,%rdx,1)         #  1189  0x64850  5      
  movl %esi, %edx                     #  1190  0x64855  2      
  shrl $0x3, %ecx                     #  1191  0x64857  3      
  orl $0x1, %edx                      #  1192  0x6485a  3      
  cmpl $0x1f, %ecx                    #  1193  0x6485d  3      
  movl %eax, %eax                     #  1194  0x64860  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1195  0x64862  5      
  xchgw %ax, %ax                      #  1196  0x64867  3      
  leal (%rsi,%rax,1), %edx            #  1197  0x6486a  3      
  movl %edx, %edx                     #  1198  0x6486d  2      
  movl %esi, (%r15,%rdx,1)            #  1199  0x6486f  4      
  ja .L_65700                         #  1200  0x64873  6      
  movl 0xffd2041(%rip), %esi          #  1201  0x64879  6      
  movl $0x1, %ebx                     #  1202  0x6487f  5      
  nop                                 #  1203  0x64884  1      
  leal 0x100368e8(,%rcx,8), %edx      #  1204  0x64885  7      
  shll %cl, %ebx                      #  1205  0x6488c  2      
  testl %esi, %ebx                    #  1206  0x6488e  2      
  jne .L_65940                        #  1207  0x64890  6      
  orl %esi, %ebx                      #  1208  0x64896  2      
  movq %rdx, %rcx                     #  1209  0x64898  3      
  movl %ebx, 0xffd201f(%rip)          #  1210  0x6489b  6      
  nop                                 #  1211  0x648a1  1      
.L_64e40:                             #        0x648a2  0      
  movl %edx, %edx                     #  1212  0x648a2  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1213  0x648a4  5      
  movl %ecx, %ecx                     #  1214  0x648a9  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1215  0x648ab  5      
  movl %eax, %eax                     #  1216  0x648b0  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1217  0x648b2  5      
  movl %eax, %eax                     #  1218  0x648b7  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1219  0x648b9  5      
  leal 0x8(%rdi), %eax                #  1220  0x648be  3      
  nop                                 #  1221  0x648c1  1      
  jmpq .L_639e0                       #  1222  0x648c2  5      
  nop                                 #  1223  0x648c7  1      
  nop                                 #  1224  0x648c8  1      
.L_64e80:                             #        0x648c9  0      
  movl %esi, %ecx                     #  1225  0x648c9  2      
  xorl %r8d, %r8d                     #  1226  0x648cb  3      
  movl $0x1, %edx                     #  1227  0x648ce  5      
  shrl $0x8, %ecx                     #  1228  0x648d3  3      
  testl %ecx, %ecx                    #  1229  0x648d6  2      
  je .L_64ee0                         #  1230  0x648d8  6      
  cmpl $0xffff, %ecx                  #  1231  0x648de  6      
  movl $0x80000000, %edx              #  1232  0x648e4  5      
  movb $0x1f, %r8b                    #  1233  0x648e9  3      
  nop                                 #  1234  0x648ec  1      
  ja .L_64ee0                         #  1235  0x648ed  6      
  bsrl %ecx, %ecx                     #  1236  0x648f3  3      
  movl $0x1f, %edx                    #  1237  0x648f6  5      
  movl %esi, %r8d                     #  1238  0x648fb  3      
  xorl $0x1f, %ecx                    #  1239  0x648fe  3      
  subl %ecx, %edx                     #  1240  0x64901  2      
  leal 0x7(%rdx), %ecx                #  1241  0x64903  3      
  shrl %cl, %r8d                      #  1242  0x64906  3      
  andl $0x1, %r8d                     #  1243  0x64909  4      
  leal (%r8,%rdx,2), %r8d             #  1244  0x6490d  4      
  movl $0x1, %edx                     #  1245  0x64911  5      
  movl %r8d, %ecx                     #  1246  0x64916  3      
  shll %cl, %edx                      #  1247  0x64919  2      
  nop                                 #  1248  0x6491b  1      
  nop                                 #  1249  0x6491c  1      
.L_64ee0:                             #        0x6491d  0      
  movl %eax, %eax                     #  1250  0x6491d  2      
  movl %r8d, 0x1c(%r15,%rax,1)        #  1251  0x6491f  5      
  movl 0xffd1f9a(%rip), %ecx          #  1252  0x64924  6      
  movl %eax, %eax                     #  1253  0x6492a  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1254  0x6492c  9      
  nop                                 #  1255  0x64935  1      
  movl %eax, %eax                     #  1256  0x64936  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1257  0x64938  9      
  testl %ecx, %edx                    #  1258  0x64941  2      
  je .L_655a0                         #  1259  0x64943  6      
  leal 0x130(,%r8,4), %edx            #  1260  0x64949  8      
  xorl %ecx, %ecx                     #  1261  0x64951  2      
  nop                                 #  1262  0x64953  1      
  cmpl $0x1f, %r8d                    #  1263  0x64954  4      
  movslq %edx, %rdx                   #  1264  0x64958  3      
  movl %edx, %edx                     #  1265  0x6495b  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1266  0x6495d  8      
  je .L_64f40                         #  1267  0x64965  6      
  shrl $0x1, %r8d                     #  1268  0x6496b  3      
  movb $0x19, %cl                     #  1269  0x6496e  2      
  subl %r8d, %ecx                     #  1270  0x64970  3      
  nop                                 #  1271  0x64973  1      
.L_64f40:                             #        0x64974  0      
  movl %esi, %edi                     #  1272  0x64974  2      
  shll %cl, %edi                      #  1273  0x64976  2      
  jmpq .L_64fa0                       #  1274  0x64978  5      
  nop                                 #  1275  0x6497d  1      
  nop                                 #  1276  0x6497e  1      
.L_64f60:                             #        0x6497f  0      
  movl %edi, %ecx                     #  1277  0x6497f  2      
  shrl $0x1f, %ecx                    #  1278  0x64981  3      
  addl $0x4, %ecx                     #  1279  0x64984  3      
  shll $0x2, %ecx                     #  1280  0x64987  3      
  leal (%rcx,%rdx,1), %r9d            #  1281  0x6498a  4      
  movslq %ecx, %rcx                   #  1282  0x6498e  3      
  leaq (%rdx,%rcx,1), %rcx            #  1283  0x64991  4      
  movl %ecx, %ecx                     #  1284  0x64995  2      
  movl (%r15,%rcx,1), %r8d            #  1285  0x64997  4      
  testq %r8, %r8                      #  1286  0x6499b  3      
  nop                                 #  1287  0x6499e  1      
  je .L_65600                         #  1288  0x6499f  6      
  addl %edi, %edi                     #  1289  0x649a5  2      
  movq %r8, %rdx                      #  1290  0x649a7  3      
  nop                                 #  1291  0x649aa  1      
  nop                                 #  1292  0x649ab  1      
.L_64fa0:                             #        0x649ac  0      
  movl %edx, %edx                     #  1293  0x649ac  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1294  0x649ae  5      
  andl $0xfffffff8, %ecx              #  1295  0x649b3  6      
  cmpl %ecx, %esi                     #  1296  0x649b9  2      
  jne .L_64f60                        #  1297  0x649bb  6      
  movl 0xffd1f09(%rip), %esi          #  1298  0x649c1  6      
  movl %edx, %edx                     #  1299  0x649c7  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1300  0x649c9  5      
  cmpl %edx, %esi                     #  1301  0x649ce  2      
  nop                                 #  1302  0x649d0  1      
  ja .L_64a40                         #  1303  0x649d1  6      
  cmpl %ecx, %esi                     #  1304  0x649d7  2      
  ja .L_64a40                         #  1305  0x649d9  6      
  movl %ecx, %ecx                     #  1306  0x649df  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1307  0x649e1  5      
  movl %edx, %edx                     #  1308  0x649e6  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1309  0x649e8  5      
  nop                                 #  1310  0x649ed  1      
  movl %eax, %eax                     #  1311  0x649ee  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1312  0x649f0  5      
  movl %eax, %eax                     #  1313  0x649f5  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1314  0x649f7  5      
  movl %eax, %eax                     #  1315  0x649fc  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1316  0x649fe  9      
  jmpq .L_642c0                       #  1317  0x64a07  5      
  xchgw %ax, %ax                      #  1318  0x64a0c  3      
.L_65000:                             #        0x64a0f  0      
  movl %edx, %ecx                     #  1319  0x64a0f  2      
  xorl %r10d, %r10d                   #  1320  0x64a11  3      
  movl $0x1, %r8d                     #  1321  0x64a14  6      
  shrl $0x8, %ecx                     #  1322  0x64a1a  3      
  testl %ecx, %ecx                    #  1323  0x64a1d  2      
  je .L_65060                         #  1324  0x64a1f  6      
  cmpl $0xffff, %ecx                  #  1325  0x64a25  6      
  movl $0x80000000, %r8d              #  1326  0x64a2b  6      
  xchgw %ax, %ax                      #  1327  0x64a31  3      
  movb $0x1f, %r10b                   #  1328  0x64a34  3      
  ja .L_65060                         #  1329  0x64a37  6      
  bsrl %ecx, %ecx                     #  1330  0x64a3d  3      
  movl $0x1f, %r8d                    #  1331  0x64a40  6      
  movl %edx, %r10d                    #  1332  0x64a46  3      
  xorl $0x1f, %ecx                    #  1333  0x64a49  3      
  subl %ecx, %r8d                     #  1334  0x64a4c  3      
  leal 0x7(%r8), %ecx                 #  1335  0x64a4f  4      
  shrl %cl, %r10d                     #  1336  0x64a53  3      
  xchgw %ax, %ax                      #  1337  0x64a56  3      
  andl $0x1, %r10d                    #  1338  0x64a59  4      
  leal (%r10,%r8,2), %r10d            #  1339  0x64a5d  4      
  movl $0x1, %r8d                     #  1340  0x64a61  6      
  movl %r10d, %ecx                    #  1341  0x64a67  3      
  shll %cl, %r8d                      #  1342  0x64a6a  3      
  nop                                 #  1343  0x64a6d  1      
.L_65060:                             #        0x64a6e  0      
  movl %eax, %eax                     #  1344  0x64a6e  2      
  movl %r10d, 0x1c(%r15,%rax,1)       #  1345  0x64a70  5      
  movl 0xffd1e49(%rip), %ecx          #  1346  0x64a75  6      
  movl %eax, %eax                     #  1347  0x64a7b  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1348  0x64a7d  9      
  nop                                 #  1349  0x64a86  1      
  movl %eax, %eax                     #  1350  0x64a87  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1351  0x64a89  9      
  testl %ecx, %r8d                    #  1352  0x64a92  3      
  jne .L_65320                        #  1353  0x64a95  6      
  leal 0x130(,%r10,4), %r10d          #  1354  0x64a9b  8      
  orl %r8d, %ecx                      #  1355  0x64aa3  3      
  nop                                 #  1356  0x64aa6  1      
  movl %ecx, 0xffd1e17(%rip)          #  1357  0x64aa7  6      
  movslq %r10d, %rdx                  #  1358  0x64aad  3      
  addl $0x100368c0, %r10d             #  1359  0x64ab0  7      
  movl %edx, %edx                     #  1360  0x64ab7  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1361  0x64ab9  8      
  nop                                 #  1362  0x64ac1  1      
  movl %eax, %eax                     #  1363  0x64ac2  2      
  movl %r10d, 0x18(%r15,%rax,1)       #  1364  0x64ac4  5      
  movl %eax, %eax                     #  1365  0x64ac9  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1366  0x64acb  5      
  movl %eax, %eax                     #  1367  0x64ad0  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1368  0x64ad2  5      
  jmpq .L_64640                       #  1369  0x64ad7  5      
  nop                                 #  1370  0x64adc  1      
.L_650e0:                             #        0x64add  0      
  movl %r9d, %r9d                     #  1371  0x64add  3      
  movl 0x8(%r15,%r9,1), %ecx          #  1372  0x64ae0  5      
  cmpl %ecx, 0xffd1de5(%rip)          #  1373  0x64ae5  6      
  jbe .L_64980                        #  1374  0x64aeb  6      
  jmpq .L_64a40                       #  1375  0x64af1  5      
  nop                                 #  1376  0x64af6  1      
.L_65100:                             #        0x64af7  0      
  movl %eax, %eax                     #  1377  0x64af7  2      
  movl 0x14(%r15,%rax,1), %r8d        #  1378  0x64af9  5      
  leal 0x14(%rax), %r9d               #  1379  0x64afe  4      
  testq %r8, %r8                      #  1380  0x64b02  3      
  jne .L_65160                        #  1381  0x64b05  6      
  jmpq .L_656c0                       #  1382  0x64b0b  5      
  nop                                 #  1383  0x64b10  1      
.L_65120:                             #        0x64b11  0      
  leal 0x14(%r8), %r9d                #  1384  0x64b11  4      
  nop                                 #  1385  0x64b15  1      
  nop                                 #  1386  0x64b16  1      
.L_65140:                             #        0x64b17  0      
  movq %rcx, %r8                      #  1387  0x64b17  3      
  nop                                 #  1388  0x64b1a  1      
  nop                                 #  1389  0x64b1b  1      
.L_65160:                             #        0x64b1c  0      
  movl %r8d, %r8d                     #  1390  0x64b1c  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1391  0x64b1f  5      
  testq %rcx, %rcx                    #  1392  0x64b24  3      
  jne .L_65120                        #  1393  0x64b27  6      
  movl %r8d, %r8d                     #  1394  0x64b2d  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1395  0x64b30  5      
  testq %rcx, %rcx                    #  1396  0x64b35  3      
  je .L_651a0                         #  1397  0x64b38  6      
  leal 0x10(%r8), %r9d                #  1398  0x64b3e  4      
  xchgw %ax, %ax                      #  1399  0x64b42  3      
  jmpq .L_65140                       #  1400  0x64b45  5      
  nop                                 #  1401  0x64b4a  1      
  nop                                 #  1402  0x64b4b  1      
.L_651a0:                             #        0x64b4c  0      
  cmpl %r9d, %edi                     #  1403  0x64b4c  3      
  ja .L_64a40                         #  1404  0x64b4f  6      
  movl %r9d, %r9d                     #  1405  0x64b55  3      
  movl $0x0, (%r15,%r9,1)             #  1406  0x64b58  8      
  jmpq .L_64800                       #  1407  0x64b60  5      
  nop                                 #  1408  0x64b65  1      
.L_651c0:                             #        0x64b66  0      
  movl %esi, %esi                     #  1409  0x64b66  2      
  movl 0x14(%r15,%rsi,1), %r8d        #  1410  0x64b68  5      
  leal 0x14(%rsi), %r9d               #  1411  0x64b6d  4      
  testq %r8, %r8                      #  1412  0x64b71  3      
  jne .L_65220                        #  1413  0x64b74  6      
  jmpq .L_656e0                       #  1414  0x64b7a  5      
  nop                                 #  1415  0x64b7f  1      
.L_651e0:                             #        0x64b80  0      
  leal 0x14(%r8), %r9d                #  1416  0x64b80  4      
  nop                                 #  1417  0x64b84  1      
  nop                                 #  1418  0x64b85  1      
.L_65200:                             #        0x64b86  0      
  movq %rcx, %r8                      #  1419  0x64b86  3      
  nop                                 #  1420  0x64b89  1      
  nop                                 #  1421  0x64b8a  1      
.L_65220:                             #        0x64b8b  0      
  movl %r8d, %r8d                     #  1422  0x64b8b  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1423  0x64b8e  5      
  testq %rcx, %rcx                    #  1424  0x64b93  3      
  jne .L_651e0                        #  1425  0x64b96  6      
  movl %r8d, %r8d                     #  1426  0x64b9c  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1427  0x64b9f  5      
  testq %rcx, %rcx                    #  1428  0x64ba4  3      
  je .L_65260                         #  1429  0x64ba7  6      
  leal 0x10(%r8), %r9d                #  1430  0x64bad  4      
  xchgw %ax, %ax                      #  1431  0x64bb1  3      
  jmpq .L_65200                       #  1432  0x64bb4  5      
  nop                                 #  1433  0x64bb9  1      
  nop                                 #  1434  0x64bba  1      
.L_65260:                             #        0x64bbb  0      
  cmpl %r9d, %edi                     #  1435  0x64bbb  3      
  ja .L_64a40                         #  1436  0x64bbe  6      
  movl %r9d, %r9d                     #  1437  0x64bc4  3      
  movl $0x0, (%r15,%r9,1)             #  1438  0x64bc7  8      
  jmpq .L_64500                       #  1439  0x64bcf  5      
  nop                                 #  1440  0x64bd4  1      
.L_65280:                             #        0x64bd5  0      
  testq %r8, %r8                      #  1441  0x64bd5  3      
  movl %r9d, %r9d                     #  1442  0x64bd8  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1443  0x64bdb  8      
  jne .L_64880                        #  1444  0x64be3  6      
  movl $0xfffffffe, %edi              #  1445  0x64be9  5      
  roll %cl, %edi                      #  1446  0x64bee  2      
  nop                                 #  1447  0x64bf0  1      
  andl %edi, 0xffd1ccd(%rip)          #  1448  0x64bf1  6      
  jmpq .L_64900                       #  1449  0x64bf7  5      
  nop                                 #  1450  0x64bfc  1      
  nop                                 #  1451  0x64bfd  1      
.L_652c0:                             #        0x64bfe  0      
  testq %r8, %r8                      #  1452  0x64bfe  3      
  movl %r9d, %r9d                     #  1453  0x64c01  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1454  0x64c04  8      
  jne .L_64580                        #  1455  0x64c0c  6      
  movl $0xfffffffe, %r8d              #  1456  0x64c12  6      
  roll %cl, %r8d                      #  1457  0x64c18  3      
  nop                                 #  1458  0x64c1b  1      
  andl %r8d, 0xffd1ca1(%rip)          #  1459  0x64c1c  7      
  jmpq .L_64600                       #  1460  0x64c23  5      
  nop                                 #  1461  0x64c28  1      
  nop                                 #  1462  0x64c29  1      
.L_65300:                             #        0x64c2a  0      
  movl %esi, %esi                     #  1463  0x64c2a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1464  0x64c2c  5      
  cmpl %edx, 0xffd1c99(%rip)          #  1465  0x64c31  6      
  jbe .L_642a0                        #  1466  0x64c37  6      
  jmpq .L_64a40                       #  1467  0x64c3d  5      
  nop                                 #  1468  0x64c42  1      
.L_65320:                             #        0x64c43  0      
  leal 0x130(,%r10,4), %ecx           #  1469  0x64c43  8      
  movslq %ecx, %rcx                   #  1470  0x64c4b  3      
  movl %ecx, %ecx                     #  1471  0x64c4e  2      
  movl 0x100368c0(%r15,%rcx,1), %r8d  #  1472  0x64c50  8      
  xorl %ecx, %ecx                     #  1473  0x64c58  2      
  cmpl $0x1f, %r10d                   #  1474  0x64c5a  4      
  nop                                 #  1475  0x64c5e  1      
  je .L_65360                         #  1476  0x64c5f  6      
  shrl $0x1, %r10d                    #  1477  0x64c65  3      
  movb $0x19, %cl                     #  1478  0x64c68  2      
  subl %r10d, %ecx                    #  1479  0x64c6a  3      
  nop                                 #  1480  0x64c6d  1      
  nop                                 #  1481  0x64c6e  1      
.L_65360:                             #        0x64c6f  0      
  movl %edx, %r9d                     #  1482  0x64c6f  3      
  shll %cl, %r9d                      #  1483  0x64c72  3      
  jmpq .L_653c0                       #  1484  0x64c75  5      
  nop                                 #  1485  0x64c7a  1      
  nop                                 #  1486  0x64c7b  1      
.L_65380:                             #        0x64c7c  0      
  movl %r9d, %ecx                     #  1487  0x64c7c  3      
  shrl $0x1f, %ecx                    #  1488  0x64c7f  3      
  addl $0x4, %ecx                     #  1489  0x64c82  3      
  shll $0x2, %ecx                     #  1490  0x64c85  3      
  leal (%rcx,%r8,1), %r11d            #  1491  0x64c88  4      
  movslq %ecx, %rcx                   #  1492  0x64c8c  3      
  leaq (%r8,%rcx,1), %rcx             #  1493  0x64c8f  4      
  movl %ecx, %ecx                     #  1494  0x64c93  2      
  movl (%r15,%rcx,1), %r10d           #  1495  0x64c95  4      
  testq %r10, %r10                    #  1496  0x64c99  3      
  je .L_65680                         #  1497  0x64c9c  6      
  addl %r9d, %r9d                     #  1498  0x64ca2  3      
  movq %r10, %r8                      #  1499  0x64ca5  3      
  nop                                 #  1500  0x64ca8  1      
  nop                                 #  1501  0x64ca9  1      
.L_653c0:                             #        0x64caa  0      
  movl %r8d, %r8d                     #  1502  0x64caa  3      
  movl 0x4(%r15,%r8,1), %ecx          #  1503  0x64cad  5      
  andl $0xfffffff8, %ecx              #  1504  0x64cb2  6      
  cmpl %ecx, %edx                     #  1505  0x64cb8  2      
  jne .L_65380                        #  1506  0x64cba  6      
  cmpl %r8d, %edi                     #  1507  0x64cc0  3      
  movl %r8d, %r8d                     #  1508  0x64cc3  3      
  movl 0x8(%r15,%r8,1), %edx          #  1509  0x64cc6  5      
  ja .L_64a40                         #  1510  0x64ccb  6      
  cmpl %edx, %edi                     #  1511  0x64cd1  2      
  ja .L_64a40                         #  1512  0x64cd3  6      
  movl %edx, %edx                     #  1513  0x64cd9  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1514  0x64cdb  5      
  movl %r8d, %r8d                     #  1515  0x64ce0  3      
  movl %eax, 0x8(%r15,%r8,1)          #  1516  0x64ce3  5      
  movl %eax, %eax                     #  1517  0x64ce8  2      
  movl %r8d, 0xc(%r15,%rax,1)         #  1518  0x64cea  5      
  xchgw %ax, %ax                      #  1519  0x64cef  3      
  movl %eax, %eax                     #  1520  0x64cf2  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1521  0x64cf4  5      
  movl %eax, %eax                     #  1522  0x64cf9  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1523  0x64cfb  9      
  jmpq .L_64640                       #  1524  0x64d04  5      
  nop                                 #  1525  0x64d09  1      
.L_65420:                             #        0x64d0a  0      
  movl %edi, %edi                     #  1526  0x64d0a  2      
  movl 0x8(%r15,%rdi,1), %edx         #  1527  0x64d0c  5      
  cmpl %edx, 0xffd1bb9(%rip)          #  1528  0x64d11  6      
  jbe .L_64be0                        #  1529  0x64d17  6      
  jmpq .L_64a40                       #  1530  0x64d1d  5      
  nop                                 #  1531  0x64d22  1      
.L_65440:                             #        0x64d23  0      
  movl %r10d, %r10d                   #  1532  0x64d23  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1533  0x64d26  5      
  jmpq .L_64860                       #  1534  0x64d2b  5      
  nop                                 #  1535  0x64d30  1      
  nop                                 #  1536  0x64d31  1      
.L_65460:                             #        0x64d32  0      
  movl 0xffd1b98(%rip), %eax          #  1537  0x64d32  6      
  testq %rax, %rax                    #  1538  0x64d38  3      
  je .L_65480                         #  1539  0x64d3b  6      
  cmpl %eax, %edi                     #  1540  0x64d41  2      
  jae .L_654a0                        #  1541  0x64d43  6      
  xchgw %ax, %ax                      #  1542  0x64d49  3      
  nop                                 #  1543  0x64d4c  1      
.L_65480:                             #        0x64d4d  0      
  movl %edi, 0xffd1b7d(%rip)          #  1544  0x64d4d  6      
  nop                                 #  1545  0x64d53  1      
  nop                                 #  1546  0x64d54  1      
.L_654a0:                             #        0x64d55  0      
  movl 0xffd1b35(%rip), %eax          #  1547  0x64d55  6      
  movl %edi, 0xffd1d23(%rip)          #  1548  0x64d5b  6      
  movl $0x100368e8, %edx              #  1549  0x64d61  5      
  movl %r12d, 0xffd1d1b(%rip)         #  1550  0x64d66  7      
  nop                                 #  1551  0x64d6d  1      
  movl $0x1, 0xffd1d18(%rip)          #  1552  0x64d6e  10     
  movl $0xfff, 0xffd1b5e(%rip)        #  1553  0x64d78  10     
  movl %eax, 0xffd1b5c(%rip)          #  1554  0x64d82  6      
  nop                                 #  1555  0x64d88  1      
.L_654e0:                             #        0x64d89  0      
  movl %edx, %eax                     #  1556  0x64d89  2      
  addl $0x8, %edx                     #  1557  0x64d8b  3      
  cmpl $0x100369e8, %edx              #  1558  0x64d8e  6      
  movl %eax, %eax                     #  1559  0x64d94  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1560  0x64d96  5      
  movl %eax, %eax                     #  1561  0x64d9b  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1562  0x64d9d  5      
  jne .L_654e0                        #  1563  0x64da2  6      
  movl %edi, %edx                     #  1564  0x64da8  2      
  xorl %eax, %eax                     #  1565  0x64daa  2      
  nop                                 #  1566  0x64dac  1      
  andl $0x7, %edx                     #  1567  0x64dad  3      
  je .L_65520                         #  1568  0x64db0  6      
  movl %edx, %eax                     #  1569  0x64db6  2      
  negl %eax                           #  1570  0x64db8  2      
  andl $0x7, %eax                     #  1571  0x64dba  3      
  nop                                 #  1572  0x64dbd  1      
  nop                                 #  1573  0x64dbe  1      
.L_65520:                             #        0x64dbf  0      
  subl $0x28, %r12d                   #  1574  0x64dbf  4      
  leal (%rax,%rdi,1), %edi            #  1575  0x64dc3  3      
  subl %eax, %r12d                    #  1576  0x64dc6  3      
  movl %r12d, %eax                    #  1577  0x64dc9  3      
  movl %r12d, 0xffd1af9(%rip)         #  1578  0x64dcc  7      
  movl %edi, 0xffd1aff(%rip)          #  1579  0x64dd3  6      
  orl $0x1, %eax                      #  1580  0x64dd9  3      
  nop                                 #  1581  0x64ddc  1      
  movl %edi, %edi                     #  1582  0x64ddd  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  1583  0x64ddf  5      
  leal (%r12,%rdi,1), %edi            #  1584  0x64de4  4      
  movl %edi, %edi                     #  1585  0x64de8  2      
  movl $0x28, 0x4(%r15,%rdi,1)        #  1586  0x64dea  9      
  movl 0xffd1aa7(%rip), %eax          #  1587  0x64df3  6      
  nop                                 #  1588  0x64df9  1      
  movl %eax, 0xffd1adc(%rip)          #  1589  0x64dfa  6      
  jmpq .L_642c0                       #  1590  0x64e00  5      
  nop                                 #  1591  0x64e05  1      
  nop                                 #  1592  0x64e06  1      
.L_65580:                             #        0x64e07  0      
  movl %r10d, %r10d                   #  1593  0x64e07  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1594  0x64e0a  5      
  jmpq .L_64560                       #  1595  0x64e0f  5      
  nop                                 #  1596  0x64e14  1      
  nop                                 #  1597  0x64e15  1      
.L_655a0:                             #        0x64e16  0      
  leal 0x130(,%r8,4), %r8d            #  1598  0x64e16  8      
  orl %ecx, %edx                      #  1599  0x64e1e  2      
  movl %edx, 0xffd1a9e(%rip)          #  1600  0x64e20  6      
  movslq %r8d, %rdx                   #  1601  0x64e26  3      
  addl $0x100368c0, %r8d              #  1602  0x64e29  7      
  nop                                 #  1603  0x64e30  1      
  movl %edx, %edx                     #  1604  0x64e31  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1605  0x64e33  8      
  movl %eax, %eax                     #  1606  0x64e3b  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1607  0x64e3d  5      
  movl %eax, %eax                     #  1608  0x64e42  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1609  0x64e44  5      
  movl %eax, %eax                     #  1610  0x64e49  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1611  0x64e4b  5      
  nop                                 #  1612  0x64e50  1      
  jmpq .L_642c0                       #  1613  0x64e51  5      
  nop                                 #  1614  0x64e56  1      
  nop                                 #  1615  0x64e57  1      
.L_65600:                             #        0x64e58  0      
  cmpl %r9d, 0xffd1a71(%rip)          #  1616  0x64e58  7      
  ja .L_64a40                         #  1617  0x64e5f  6      
  movl %ecx, %ecx                     #  1618  0x64e65  2      
  movl %eax, (%r15,%rcx,1)            #  1619  0x64e67  4      
  movl %eax, %eax                     #  1620  0x64e6b  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1621  0x64e6d  5      
  nop                                 #  1622  0x64e72  1      
  movl %eax, %eax                     #  1623  0x64e73  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1624  0x64e75  5      
  movl %eax, %eax                     #  1625  0x64e7a  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1626  0x64e7c  5      
  jmpq .L_642c0                       #  1627  0x64e81  5      
  nop                                 #  1628  0x64e86  1      
.L_65640:                             #        0x64e87  0      
  nop                                 #  1629  0x64e87  1      
  nop                                 #  1630  0x64e88  1      
  callq .__errno                      #  1631  0x64e89  5      
  movl %eax, %eax                     #  1632  0x64e8e  2      
  movl %eax, %eax                     #  1633  0x64e90  2      
  movl $0xc, (%r15,%rax,1)            #  1634  0x64e92  8      
  xorl %eax, %eax                     #  1635  0x64e9a  2      
  jmpq .L_639e0                       #  1636  0x64e9c  5      
  nop                                 #  1637  0x64ea1  1      
.L_65680:                             #        0x64ea2  0      
  cmpl %r11d, 0xffd1a27(%rip)         #  1638  0x64ea2  7      
  ja .L_64a40                         #  1639  0x64ea9  6      
  movl %ecx, %ecx                     #  1640  0x64eaf  2      
  movl %eax, (%r15,%rcx,1)            #  1641  0x64eb1  4      
  movl %eax, %eax                     #  1642  0x64eb5  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1643  0x64eb7  5      
  nop                                 #  1644  0x64ebc  1      
  movl %eax, %eax                     #  1645  0x64ebd  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1646  0x64ebf  5      
  movl %eax, %eax                     #  1647  0x64ec4  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1648  0x64ec6  5      
  jmpq .L_64640                       #  1649  0x64ecb  5      
  nop                                 #  1650  0x64ed0  1      
.L_656c0:                             #        0x64ed1  0      
  movl %eax, %eax                     #  1651  0x64ed1  2      
  movl 0x10(%r15,%rax,1), %r8d        #  1652  0x64ed3  5      
  leal 0x10(%rax), %r9d               #  1653  0x64ed8  4      
  testq %r8, %r8                      #  1654  0x64edc  3      
  jne .L_65160                        #  1655  0x64edf  6      
  jmpq .L_64800                       #  1656  0x64ee5  5      
  nop                                 #  1657  0x64eea  1      
.L_656e0:                             #        0x64eeb  0      
  movl %esi, %esi                     #  1658  0x64eeb  2      
  movl 0x10(%r15,%rsi,1), %r8d        #  1659  0x64eed  5      
  leal 0x10(%rsi), %r9d               #  1660  0x64ef2  4      
  testq %r8, %r8                      #  1661  0x64ef6  3      
  jne .L_65220                        #  1662  0x64ef9  6      
  jmpq .L_64500                       #  1663  0x64eff  5      
  nop                                 #  1664  0x64f04  1      
.L_65700:                             #        0x64f05  0      
  movl %esi, %ebx                     #  1665  0x64f05  2      
  shrl $0x8, %ebx                     #  1666  0x64f07  3      
  testl %ebx, %ebx                    #  1667  0x64f0a  2      
  jne .L_65900                        #  1668  0x64f0c  6      
  movl $0x1, %edx                     #  1669  0x64f12  5      
  xorl %ecx, %ecx                     #  1670  0x64f17  2      
  nop                                 #  1671  0x64f19  1      
.L_65720:                             #        0x64f1a  0      
  movl %eax, %eax                     #  1672  0x64f1a  2      
  movl %ecx, 0x1c(%r15,%rax,1)        #  1673  0x64f1c  5      
  movl 0xffd199d(%rip), %ebx          #  1674  0x64f21  6      
  movl %eax, %eax                     #  1675  0x64f27  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1676  0x64f29  9      
  nop                                 #  1677  0x64f32  1      
  movl %eax, %eax                     #  1678  0x64f33  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1679  0x64f35  9      
  testl %ebx, %edx                    #  1680  0x64f3e  2      
  je .L_658a0                         #  1681  0x64f40  6      
  leal 0x130(,%rcx,4), %edx           #  1682  0x64f46  7      
  xorl %ebx, %ebx                     #  1683  0x64f4d  2      
  cmpl $0x1f, %ecx                    #  1684  0x64f4f  3      
  nop                                 #  1685  0x64f52  1      
  movslq %edx, %rdx                   #  1686  0x64f53  3      
  movl %edx, %edx                     #  1687  0x64f56  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1688  0x64f58  8      
  je .L_65780                         #  1689  0x64f60  6      
  shrl $0x1, %ecx                     #  1690  0x64f66  2      
  movb $0x19, %bl                     #  1691  0x64f68  2      
  subl %ecx, %ebx                     #  1692  0x64f6a  2      
  nop                                 #  1693  0x64f6c  1      
.L_65780:                             #        0x64f6d  0      
  movl %ebx, %ecx                     #  1694  0x64f6d  2      
  movl %esi, %r8d                     #  1695  0x64f6f  3      
  shll %cl, %r8d                      #  1696  0x64f72  3      
  movl %r8d, %ebx                     #  1697  0x64f75  3      
  jmpq .L_657e0                       #  1698  0x64f78  5      
  nop                                 #  1699  0x64f7d  1      
  nop                                 #  1700  0x64f7e  1      
.L_657a0:                             #        0x64f7f  0      
  movl %ebx, %ecx                     #  1701  0x64f7f  2      
  shrl $0x1f, %ecx                    #  1702  0x64f81  3      
  addl $0x4, %ecx                     #  1703  0x64f84  3      
  shll $0x2, %ecx                     #  1704  0x64f87  3      
  leal (%rcx,%rdx,1), %r9d            #  1705  0x64f8a  4      
  movslq %ecx, %rcx                   #  1706  0x64f8e  3      
  leaq (%rdx,%rcx,1), %rcx            #  1707  0x64f91  4      
  movl %ecx, %ecx                     #  1708  0x64f95  2      
  movl (%r15,%rcx,1), %r8d            #  1709  0x64f97  4      
  testq %r8, %r8                      #  1710  0x64f9b  3      
  nop                                 #  1711  0x64f9e  1      
  je .L_65860                         #  1712  0x64f9f  6      
  addl %ebx, %ebx                     #  1713  0x64fa5  2      
  movq %r8, %rdx                      #  1714  0x64fa7  3      
  nop                                 #  1715  0x64faa  1      
  nop                                 #  1716  0x64fab  1      
.L_657e0:                             #        0x64fac  0      
  movl %edx, %edx                     #  1717  0x64fac  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1718  0x64fae  5      
  andl $0xfffffff8, %ecx              #  1719  0x64fb3  6      
  cmpl %ecx, %esi                     #  1720  0x64fb9  2      
  jne .L_657a0                        #  1721  0x64fbb  6      
  movl 0xffd1909(%rip), %ebx          #  1722  0x64fc1  6      
  movl %edx, %edx                     #  1723  0x64fc7  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1724  0x64fc9  5      
  cmpl %edx, %ebx                     #  1725  0x64fce  2      
  nop                                 #  1726  0x64fd0  1      
  ja .L_64a40                         #  1727  0x64fd1  6      
  cmpl %ecx, %ebx                     #  1728  0x64fd7  2      
  ja .L_64a40                         #  1729  0x64fd9  6      
  movl %ecx, %ecx                     #  1730  0x64fdf  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1731  0x64fe1  5      
  movl %edx, %edx                     #  1732  0x64fe6  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1733  0x64fe8  5      
  nop                                 #  1734  0x64fed  1      
  movl %eax, %eax                     #  1735  0x64fee  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1736  0x64ff0  5      
  movl %eax, %eax                     #  1737  0x64ff5  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1738  0x64ff7  5      
  movl %eax, %eax                     #  1739  0x64ffc  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1740  0x64ffe  9      
  leal 0x8(%rdi), %eax                #  1741  0x65007  3      
  nop                                 #  1742  0x6500a  1      
  jmpq .L_639e0                       #  1743  0x6500b  5      
  nop                                 #  1744  0x65010  1      
  nop                                 #  1745  0x65011  1      
.L_65860:                             #        0x65012  0      
  cmpl %r9d, 0xffd18b7(%rip)          #  1746  0x65012  7      
  ja .L_64a40                         #  1747  0x65019  6      
  movl %ecx, %ecx                     #  1748  0x6501f  2      
  movl %eax, (%r15,%rcx,1)            #  1749  0x65021  4      
  movl %eax, %eax                     #  1750  0x65025  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1751  0x65027  5      
  nop                                 #  1752  0x6502c  1      
  movl %eax, %eax                     #  1753  0x6502d  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1754  0x6502f  5      
  movl %eax, %eax                     #  1755  0x65034  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1756  0x65036  5      
  leal 0x8(%rdi), %eax                #  1757  0x6503b  3      
  jmpq .L_639e0                       #  1758  0x6503e  5      
  nop                                 #  1759  0x65043  1      
.L_658a0:                             #        0x65044  0      
  leal 0x130(,%rcx,4), %ecx           #  1760  0x65044  7      
  orl %ebx, %edx                      #  1761  0x6504b  2      
  movl %edx, 0xffd1871(%rip)          #  1762  0x6504d  6      
  movslq %ecx, %rdx                   #  1763  0x65053  3      
  addl $0x100368c0, %ecx              #  1764  0x65056  6      
  nop                                 #  1765  0x6505c  1      
  movl %edx, %edx                     #  1766  0x6505d  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1767  0x6505f  8      
  movl %eax, %eax                     #  1768  0x65067  2      
  movl %ecx, 0x18(%r15,%rax,1)        #  1769  0x65069  5      
  movl %eax, %eax                     #  1770  0x6506e  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1771  0x65070  5      
  movl %eax, %eax                     #  1772  0x65075  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1773  0x65077  5      
  nop                                 #  1774  0x6507c  1      
  leal 0x8(%rdi), %eax                #  1775  0x6507d  3      
  jmpq .L_639e0                       #  1776  0x65080  5      
  nop                                 #  1777  0x65085  1      
  nop                                 #  1778  0x65086  1      
.L_65900:                             #        0x65087  0      
  cmpl $0xffff, %ebx                  #  1779  0x65087  6      
  movl $0x80000000, %edx              #  1780  0x6508d  5      
  movl $0x1f, %ecx                    #  1781  0x65092  5      
  ja .L_65720                         #  1782  0x65097  6      
  bsrl %ebx, %ecx                     #  1783  0x6509d  3      
  movl $0x1f, %edx                    #  1784  0x650a0  5      
  movl %esi, %ebx                     #  1785  0x650a5  2      
  xorl $0x1f, %ecx                    #  1786  0x650a7  3      
  subl %ecx, %edx                     #  1787  0x650aa  2      
  leal 0x7(%rdx), %ecx                #  1788  0x650ac  3      
  shrl %cl, %ebx                      #  1789  0x650af  2      
  movl %ebx, %ecx                     #  1790  0x650b1  2      
  andl $0x1, %ecx                     #  1791  0x650b3  3      
  leal (%rcx,%rdx,2), %ecx            #  1792  0x650b6  3      
  movl $0x1, %edx                     #  1793  0x650b9  5      
  shll %cl, %edx                      #  1794  0x650be  2      
  jmpq .L_65720                       #  1795  0x650c0  5      
  xchgw %ax, %ax                      #  1796  0x650c5  3      
.L_65940:                             #        0x650c8  0      
  movl %edx, %edx                     #  1797  0x650c8  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1798  0x650ca  5      
  cmpl %ecx, 0xffd17fb(%rip)          #  1799  0x650cf  6      
  jbe .L_64e40                        #  1800  0x650d5  6      
  jmpq .L_64a40                       #  1801  0x650db  5      
  nop                                 #  1802  0x650e0  1      
.L_65960:                             #        0x650e1  0      
  andl $0xfffffff8, %ebx              #  1803  0x650e1  6      
  movl %ebx, %ecx                     #  1804  0x650e7  2      
  shrl $0x3, %ecx                     #  1805  0x650e9  3      
  cmpl $0x1f, %ecx                    #  1806  0x650ec  3      
  ja .L_65ae0                         #  1807  0x650ef  6      
  movl %edx, %edx                     #  1808  0x650f5  2      
  movl 0x8(%r15,%rdx,1), %r9d         #  1809  0x650f7  5      
  leal 0x100368e8(,%rcx,8), %r10d     #  1810  0x650fc  8      
  movl %edx, %edx                     #  1811  0x65104  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1812  0x65106  5      
  cmpl %r10d, %r9d                    #  1813  0x6510b  3      
  jne .L_65ac0                        #  1814  0x6510e  6      
  nop                                 #  1815  0x65114  1      
  nop                                 #  1816  0x65115  1      
.L_659a0:                             #        0x65116  0      
  cmpl %r8d, %r9d                     #  1817  0x65116  3      
  je .L_65aa0                         #  1818  0x65119  6      
  cmpl %r10d, %r8d                    #  1819  0x6511f  3      
  jne .L_65a80                        #  1820  0x65122  6      
  nop                                 #  1821  0x65128  1      
.L_659c0:                             #        0x65129  0      
  movl %r9d, %r9d                     #  1822  0x65129  3      
  movl %r8d, 0xc(%r15,%r9,1)          #  1823  0x6512c  5      
  movl %r8d, %r8d                     #  1824  0x65131  3      
  movl %r9d, 0x8(%r15,%r8,1)          #  1825  0x65134  5      
  nop                                 #  1826  0x65139  1      
  nop                                 #  1827  0x6513a  1      
.L_659e0:                             #        0x6513b  0      
  leal (%rbx,%rdx,1), %edx            #  1828  0x6513b  3      
  addl %ebx, %esi                     #  1829  0x6513e  2      
  movl %edx, %edx                     #  1830  0x65140  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1831  0x65142  5      
  jmpq .L_64de0                       #  1832  0x65147  5      
  nop                                 #  1833  0x6514c  1      
.L_65a00:                             #        0x6514d  0      
  addl 0xffd1779(%rip), %esi          #  1834  0x6514d  6      
  movl %eax, 0xffd177f(%rip)          #  1835  0x65153  6      
  movl %esi, 0xffd176d(%rip)          #  1836  0x65159  6      
  orl $0x1, %esi                      #  1837  0x6515f  3      
  movl %eax, %eax                     #  1838  0x65162  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1839  0x65164  5      
  leal 0x8(%rdi), %eax                #  1840  0x65169  3      
  nop                                 #  1841  0x6516c  1      
  jmpq .L_639e0                       #  1842  0x6516d  5      
  nop                                 #  1843  0x65172  1      
  nop                                 #  1844  0x65173  1      
.L_65a40:                             #        0x65174  0      
  addl 0xffd174e(%rip), %esi          #  1845  0x65174  6      
  movl %eax, 0xffd1754(%rip)          #  1846  0x6517a  6      
  movl %esi, %edx                     #  1847  0x65180  2      
  movl %esi, 0xffd1740(%rip)          #  1848  0x65182  6      
  orl $0x1, %edx                      #  1849  0x65188  3      
  movl %eax, %eax                     #  1850  0x6518b  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1851  0x6518d  5      
  xchgw %ax, %ax                      #  1852  0x65192  3      
  leal (%rsi,%rax,1), %eax            #  1853  0x65195  3      
  movl %eax, %eax                     #  1854  0x65198  2      
  movl %esi, (%r15,%rax,1)            #  1855  0x6519a  4      
  leal 0x8(%rdi), %eax                #  1856  0x6519e  3      
  jmpq .L_639e0                       #  1857  0x651a1  5      
  nop                                 #  1858  0x651a6  1      
.L_65a80:                             #        0x651a7  0      
  cmpl %r8d, 0xffd1722(%rip)          #  1859  0x651a7  7      
  ja .L_64a40                         #  1860  0x651ae  6      
  movl %r8d, %r8d                     #  1861  0x651b4  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1862  0x651b7  5      
  je .L_659c0                         #  1863  0x651bc  6      
  jmpq .L_64a40                       #  1864  0x651c2  5      
.L_65aa0:                             #        0x651c7  0      
  movl $0xfffffffe, %r8d              #  1865  0x651c7  6      
  roll %cl, %r8d                      #  1866  0x651cd  3      
  andl %r8d, 0xffd16e9(%rip)          #  1867  0x651d0  7      
  jmpq .L_659e0                       #  1868  0x651d7  5      
  nop                                 #  1869  0x651dc  1      
.L_65ac0:                             #        0x651dd  0      
  cmpl %r9d, 0xffd16ec(%rip)          #  1870  0x651dd  7      
  ja .L_64a40                         #  1871  0x651e4  6      
  movl %r9d, %r9d                     #  1872  0x651ea  3      
  cmpl %edx, 0xc(%r15,%r9,1)          #  1873  0x651ed  5      
  je .L_659a0                         #  1874  0x651f2  6      
  jmpq .L_64a40                       #  1875  0x651f8  5      
.L_65ae0:                             #        0x651fd  0      
  movl %edx, %edx                     #  1876  0x651fd  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1877  0x651ff  5      
  movl %edx, %edx                     #  1878  0x65204  2      
  movl 0x18(%r15,%rdx,1), %r9d        #  1879  0x65206  5      
  cmpl %r8d, %edx                     #  1880  0x6520b  3      
  je .L_65ca0                         #  1881  0x6520e  6      
  movl %edx, %edx                     #  1882  0x65214  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1883  0x65216  5      
  xchgw %ax, %ax                      #  1884  0x6521b  3      
  cmpl %ecx, 0xffd16ac(%rip)          #  1885  0x6521e  6      
  ja .L_64a40                         #  1886  0x65224  6      
  movl %ecx, %ecx                     #  1887  0x6522a  2      
  cmpl %edx, 0xc(%r15,%rcx,1)         #  1888  0x6522c  5      
  jne .L_64a40                        #  1889  0x65231  6      
  nop                                 #  1890  0x65237  1      
  movl %r8d, %r8d                     #  1891  0x65238  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1892  0x6523b  5      
  jne .L_64a40                        #  1893  0x65240  6      
  movl %ecx, %ecx                     #  1894  0x65246  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  1895  0x65248  5      
  movl %r8d, %r8d                     #  1896  0x6524d  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  1897  0x65250  5      
  nop                                 #  1898  0x65255  1      
.L_65b40:                             #        0x65256  0      
  testq %r9, %r9                      #  1899  0x65256  3      
  je .L_659e0                         #  1900  0x65259  6      
  movl %edx, %edx                     #  1901  0x6525f  2      
  movl 0x1c(%r15,%rdx,1), %ecx        #  1902  0x65261  5      
  leal 0x130(,%rcx,4), %r10d          #  1903  0x65266  8      
  movslq %r10d, %r10                  #  1904  0x6526e  3      
  nop                                 #  1905  0x65271  1      
  movl %r10d, %r10d                   #  1906  0x65272  3      
  cmpl %edx, 0x100368c0(%r15,%r10,1)  #  1907  0x65275  8      
  je .L_65c60                         #  1908  0x6527d  6      
  cmpl %r9d, 0xffd1646(%rip)          #  1909  0x65283  7      
  ja .L_64a40                         #  1910  0x6528a  6      
  xchgw %ax, %ax                      #  1911  0x65290  3      
  movl %r9d, %r9d                     #  1912  0x65293  3      
  cmpl %edx, 0x10(%r15,%r9,1)         #  1913  0x65296  5      
  je .L_65c40                         #  1914  0x6529b  6      
  movl %r9d, %r9d                     #  1915  0x652a1  3      
  movl %r8d, 0x14(%r15,%r9,1)         #  1916  0x652a4  5      
  nop                                 #  1917  0x652a9  1      
.L_65ba0:                             #        0x652aa  0      
  testq %r8, %r8                      #  1918  0x652aa  3      
  je .L_659e0                         #  1919  0x652ad  6      
  nop                                 #  1920  0x652b3  1      
  nop                                 #  1921  0x652b4  1      
.L_65bc0:                             #        0x652b5  0      
  movl 0xffd1614(%rip), %r10d         #  1922  0x652b5  7      
  cmpl %r8d, %r10d                    #  1923  0x652bc  3      
  ja .L_64a40                         #  1924  0x652bf  6      
  movl %edx, %edx                     #  1925  0x652c5  2      
  movl 0x10(%r15,%rdx,1), %ecx        #  1926  0x652c7  5      
  movl %r8d, %r8d                     #  1927  0x652cc  3      
  movl %r9d, 0x18(%r15,%r8,1)         #  1928  0x652cf  5      
  nop                                 #  1929  0x652d4  1      
  testq %rcx, %rcx                    #  1930  0x652d5  3      
  je .L_65c00                         #  1931  0x652d8  6      
  cmpl %ecx, %r10d                    #  1932  0x652de  3      
  ja .L_64a40                         #  1933  0x652e1  6      
  movl %r8d, %r8d                     #  1934  0x652e7  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  1935  0x652ea  5      
  movl %ecx, %ecx                     #  1936  0x652ef  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1937  0x652f1  5      
  nop                                 #  1938  0x652f6  1      
.L_65c00:                             #        0x652f7  0      
  movl %edx, %edx                     #  1939  0x652f7  2      
  movl 0x14(%r15,%rdx,1), %ecx        #  1940  0x652f9  5      
  testq %rcx, %rcx                    #  1941  0x652fe  3      
  je .L_659e0                         #  1942  0x65301  6      
  cmpl %ecx, %r10d                    #  1943  0x65307  3      
  ja .L_64a40                         #  1944  0x6530a  6      
  nop                                 #  1945  0x65310  1      
  movl %r8d, %r8d                     #  1946  0x65311  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  1947  0x65314  5      
  movl %ecx, %ecx                     #  1948  0x65319  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1949  0x6531b  5      
  jmpq .L_659e0                       #  1950  0x65320  5      
  nop                                 #  1951  0x65325  1      
.L_65c40:                             #        0x65326  0      
  movl %r9d, %r9d                     #  1952  0x65326  3      
  movl %r8d, 0x10(%r15,%r9,1)         #  1953  0x65329  5      
  jmpq .L_65ba0                       #  1954  0x6532e  5      
  nop                                 #  1955  0x65333  1      
  nop                                 #  1956  0x65334  1      
.L_65c60:                             #        0x65335  0      
  testq %r8, %r8                      #  1957  0x65335  3      
  movl %r10d, %r10d                   #  1958  0x65338  3      
  movl %r8d, 0x100368c0(%r15,%r10,1)  #  1959  0x6533b  8      
  jne .L_65bc0                        #  1960  0x65343  6      
  movl $0xfffffffe, %r8d              #  1961  0x65349  6      
  roll %cl, %r8d                      #  1962  0x6534f  3      
  nop                                 #  1963  0x65352  1      
  andl %r8d, 0xffd156a(%rip)          #  1964  0x65353  7      
  jmpq .L_659e0                       #  1965  0x6535a  5      
  nop                                 #  1966  0x6535f  1      
  nop                                 #  1967  0x65360  1      
.L_65ca0:                             #        0x65361  0      
  movl %edx, %edx                     #  1968  0x65361  2      
  movl 0x14(%r15,%rdx,1), %r8d        #  1969  0x65363  5      
  leal 0x14(%rdx), %ecx               #  1970  0x65368  3      
  testq %r8, %r8                      #  1971  0x6536b  3      
  jne .L_65d00                        #  1972  0x6536e  6      
  jmpq .L_65d40                       #  1973  0x65374  5      
  nop                                 #  1974  0x65379  1      
.L_65cc0:                             #        0x6537a  0      
  leal 0x14(%r8), %ecx                #  1975  0x6537a  4      
  nop                                 #  1976  0x6537e  1      
  nop                                 #  1977  0x6537f  1      
.L_65ce0:                             #        0x65380  0      
  movq %r10, %r8                      #  1978  0x65380  3      
  nop                                 #  1979  0x65383  1      
  nop                                 #  1980  0x65384  1      
.L_65d00:                             #        0x65385  0      
  movl %r8d, %r8d                     #  1981  0x65385  3      
  movl 0x14(%r15,%r8,1), %r10d        #  1982  0x65388  5      
  testq %r10, %r10                    #  1983  0x6538d  3      
  jne .L_65cc0                        #  1984  0x65390  6      
  movl %r8d, %r8d                     #  1985  0x65396  3      
  movl 0x10(%r15,%r8,1), %r10d        #  1986  0x65399  5      
  testq %r10, %r10                    #  1987  0x6539e  3      
  je .L_65d60                         #  1988  0x653a1  6      
  leal 0x10(%r8), %ecx                #  1989  0x653a7  4      
  xchgw %ax, %ax                      #  1990  0x653ab  3      
  jmpq .L_65ce0                       #  1991  0x653ae  5      
  nop                                 #  1992  0x653b3  1      
  nop                                 #  1993  0x653b4  1      
.L_65d40:                             #        0x653b5  0      
  movl %edx, %edx                     #  1994  0x653b5  2      
  movl 0x10(%r15,%rdx,1), %r8d        #  1995  0x653b7  5      
  leal 0x10(%rdx), %ecx               #  1996  0x653bc  3      
  testq %r8, %r8                      #  1997  0x653bf  3      
  jne .L_65d00                        #  1998  0x653c2  6      
  jmpq .L_65b40                       #  1999  0x653c8  5      
  nop                                 #  2000  0x653cd  1      
.L_65d60:                             #        0x653ce  0      
  cmpl %ecx, 0xffd14fc(%rip)          #  2001  0x653ce  6      
  ja .L_64a40                         #  2002  0x653d4  6      
  movl %ecx, %ecx                     #  2003  0x653da  2      
  movl $0x0, (%r15,%rcx,1)            #  2004  0x653dc  8      
  jmpq .L_65b40                       #  2005  0x653e4  5      
  nop                                 #  2006  0x653e9  1      
                                                               
.size malloc, .-malloc

