  .text
  .globl malloc
  .type malloc, @function

#! file-offset 0x63840
#! rip-offset  0x63840
#! capacity    9568 bytes

# Text                                #  Line  RIP      Bytes  
.malloc:                              #        0x63840  0      
  pushq %r12                          #  1     0x63840  3      
  pushq %rbx                          #  2     0x63843  2      
  movl %edi, %ebx                     #  3     0x63845  2      
  subl $0x8, %esp                     #  4     0x63847  3      
  addq %r15, %rsp                     #  5     0x6384a  3      
  movl 0xffd303d(%rip), %eax          #  6     0x6384d  6      
  testl %eax, %eax                    #  7     0x63853  2      
  je .L_63b20                         #  8     0x63855  6      
  nop                                 #  9     0x6385b  1      
.L_63860:                             #        0x6385c  0      
  testb $0x2, 0xffd3219(%rip)         #  10    0x6385c  7      
  jne .L_63ae0                        #  11    0x63863  6      
  nop                                 #  12    0x63869  1      
  nop                                 #  13    0x6386a  1      
.L_63880:                             #        0x6386b  0      
  cmpl $0xf4, %ebx                    #  14    0x6386b  3      
  ja .L_63980                         #  15    0x6386e  6      
  cmpl $0xa, %ebx                     #  16    0x63874  3      
  ja .L_63ba0                         #  17    0x63877  6      
  movl $0x2, %ecx                     #  18    0x6387d  5      
  movl $0x2, %esi                     #  19    0x63882  5      
  nop                                 #  20    0x63887  1      
  movl $0x10, %ebx                    #  21    0x63888  5      
  nop                                 #  22    0x6388d  1      
  nop                                 #  23    0x6388e  1      
.L_638c0:                             #        0x6388f  0      
  movl 0xffd302b(%rip), %edx          #  24    0x6388f  6      
  movl %edx, %eax                     #  25    0x63895  2      
  shrl %cl, %eax                      #  26    0x63897  2      
  testb $0x3, %al                     #  27    0x63899  2      
  je .L_63a40                         #  28    0x6389b  6      
  andl $0x1, %eax                     #  29    0x638a1  3      
  xorl $0x1, %eax                     #  30    0x638a4  3      
  leal (%rax,%rsi,1), %ecx            #  31    0x638a7  3      
  nop                                 #  32    0x638aa  1      
  leal 0x100368e8(,%rcx,8), %edi      #  33    0x638ab  7      
  movl %edi, %edi                     #  34    0x638b2  2      
  movl 0x8(%r15,%rdi,1), %eax         #  35    0x638b4  5      
  movl %eax, %eax                     #  36    0x638b9  2      
  movl 0x8(%r15,%rax,1), %ebx         #  37    0x638bb  5      
  cmpl %ebx, %edi                     #  38    0x638c0  2      
  je .L_64700                         #  39    0x638c2  6      
  nop                                 #  40    0x638c8  1      
  cmpl %ebx, 0xffd3001(%rip)          #  41    0x638c9  6      
  ja .L_64a60                         #  42    0x638cf  6      
  movl %ebx, %ebx                     #  43    0x638d5  2      
  cmpl %eax, 0xc(%r15,%rbx,1)         #  44    0x638d7  5      
  jne .L_64a60                        #  45    0x638dc  6      
  movl %ebx, %ebx                     #  46    0x638e2  2      
  movl %edi, 0xc(%r15,%rbx,1)         #  47    0x638e4  5      
  movl %edi, %edi                     #  48    0x638e9  2      
  movl %ebx, 0x8(%r15,%rdi,1)         #  49    0x638eb  5      
  nop                                 #  50    0x638f0  1      
  nop                                 #  51    0x638f1  1      
.L_63940:                             #        0x638f2  0      
  shll $0x3, %ecx                     #  52    0x638f2  3      
  movl %ecx, %edx                     #  53    0x638f5  2      
  addl %eax, %ecx                     #  54    0x638f7  2      
  orl $0x3, %edx                      #  55    0x638f9  3      
  movl %eax, %eax                     #  56    0x638fc  2      
  movl %edx, 0x4(%r15,%rax,1)         #  57    0x638fe  5      
  addl $0x8, %eax                     #  58    0x63903  3      
  movl %ecx, %ecx                     #  59    0x63906  2      
  orl $0x1, 0x4(%r15,%rcx,1)          #  60    0x63908  6      
  nop                                 #  61    0x6390e  1      
  jmpq .L_63a00                       #  62    0x6390f  5      
  nop                                 #  63    0x63914  1      
  nop                                 #  64    0x63915  1      
.L_63980:                             #        0x63916  0      
  cmpl $0xffffffbf, %ebx              #  65    0x63916  6      
  jbe .L_63b60                        #  66    0x6391c  6      
  movl 0xffd2f9f(%rip), %r8d          #  67    0x63922  7      
  movl $0xffffffff, %ebx              #  68    0x63929  5      
  nop                                 #  69    0x6392e  1      
.L_639a0:                             #        0x6392f  0      
  cmpl %r8d, %ebx                     #  70    0x6392f  3      
  jbe .L_63a60                        #  71    0x63932  6      
  nop                                 #  72    0x63938  1      
  nop                                 #  73    0x63939  1      
.L_639c0:                             #        0x6393a  0      
  movl 0xffd2f8c(%rip), %eax          #  74    0x6393a  6      
  cmpl %ebx, %eax                     #  75    0x63940  2      
  jbe .L_63ec0                        #  76    0x63942  6      
  movl %eax, %ecx                     #  77    0x63948  2      
  movl 0xffd2f88(%rip), %eax          #  78    0x6394a  6      
  subl %ebx, %ecx                     #  79    0x63950  2      
  movl %ecx, 0xffd2f74(%rip)          #  80    0x63952  6      
  xchgw %ax, %ax                      #  81    0x63958  3      
  orl $0x1, %ecx                      #  82    0x6395b  3      
  leal (%rbx,%rax,1), %edx            #  83    0x6395e  3      
  orl $0x3, %ebx                      #  84    0x63961  3      
  movl %edx, %edx                     #  85    0x63964  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  86    0x63966  5      
  movl %edx, 0xffd2f67(%rip)          #  87    0x6396b  6      
  movl %eax, %eax                     #  88    0x63971  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  89    0x63973  5      
  addl $0x8, %eax                     #  90    0x63978  3      
.L_63a00:                             #        0x6397b  0      
  testb $0x2, 0xffd30fa(%rip)         #  91    0x6397b  7      
  je .L_63a20                         #  92    0x63982  6      
  mfence                              #  93    0x63988  3      
  movl $0x0, 0xffd30eb(%rip)          #  94    0x6398b  10     
  nop                                 #  95    0x63995  1      
.L_63a20:                             #        0x63996  0      
  addl $0x8, %esp                     #  96    0x63996  3      
  addq %r15, %rsp                     #  97    0x63999  3      
  popq %rbx                           #  98    0x6399c  2      
  popq %r12                           #  99    0x6399e  3      
  popq %r11                           #  100   0x639a1  3      
  andl $0xffffffe0, %r11d             #  101   0x639a4  7      
  addq %r15, %r11                     #  102   0x639ab  3      
  jmpq %r11                           #  103   0x639ae  3      
  nop                                 #  104   0x639b1  1      
.L_63a40:                             #        0x639b2  0      
  movl 0xffd2f0f(%rip), %r8d          #  105   0x639b2  7      
  cmpl %r8d, %ebx                     #  106   0x639b9  3      
  ja .L_63c00                         #  107   0x639bc  6      
  nop                                 #  108   0x639c2  1      
  nop                                 #  109   0x639c3  1      
.L_63a60:                             #        0x639c4  0      
  movl %r8d, %edx                     #  110   0x639c4  3      
  movl 0xffd2f07(%rip), %eax          #  111   0x639c7  6      
  subl %ebx, %edx                     #  112   0x639cd  2      
  cmpl $0xf, %edx                     #  113   0x639cf  3      
  ja .L_63bc0                         #  114   0x639d2  6      
  movl %r8d, %edx                     #  115   0x639d8  3      
  addl %eax, %r8d                     #  116   0x639db  3      
  nop                                 #  117   0x639de  1      
  movl $0x0, 0xffd2edf(%rip)          #  118   0x639df  10     
  orl $0x3, %edx                      #  119   0x639e9  3      
  movl $0x0, 0xffd2ede(%rip)          #  120   0x639ec  10     
  movl %eax, %eax                     #  121   0x639f6  2      
  movl %edx, 0x4(%r15,%rax,1)         #  122   0x639f8  5      
  xchgw %ax, %ax                      #  123   0x639fd  3      
  movl %r8d, %r8d                     #  124   0x63a00  3      
  orl $0x1, 0x4(%r15,%r8,1)           #  125   0x63a03  6      
  nop                                 #  126   0x63a09  1      
  nop                                 #  127   0x63a0a  1      
.L_63ac0:                             #        0x63a0b  0      
  addl $0x8, %eax                     #  128   0x63a0b  3      
  jmpq .L_63a00                       #  129   0x63a0e  5      
  nop                                 #  130   0x63a13  1      
  nop                                 #  131   0x63a14  1      
.L_63ae0:                             #        0x63a15  0      
  movl $0x1, %eax                     #  132   0x63a15  5      
  xchgl %eax, 0xffd3060(%rip)         #  133   0x63a1a  6      
  testl %eax, %eax                    #  134   0x63a20  2      
  je .L_63880                         #  135   0x63a22  6      
  movl $0x10036a80, %edi              #  136   0x63a28  5      
  nop                                 #  137   0x63a2d  1      
  callq .spin_acquire_lock            #  138   0x63a2e  5      
  movl %eax, %edx                     #  139   0x63a33  2      
  xorl %eax, %eax                     #  140   0x63a35  2      
  testl %edx, %edx                    #  141   0x63a37  2      
  je .L_63880                         #  142   0x63a39  6      
  jmpq .L_63a20                       #  143   0x63a3f  5      
  nop                                 #  144   0x63a44  1      
.L_63b20:                             #        0x63a45  0      
  nop                                 #  145   0x63a45  1      
  nop                                 #  146   0x63a46  1      
  callq .init_mparams                 #  147   0x63a47  5      
  jmpq .L_63860                       #  148   0x63a4c  5      
  nop                                 #  149   0x63a51  1      
  nop                                 #  150   0x63a52  1      
.L_63b60:                             #        0x63a53  0      
  movl 0xffd2e6b(%rip), %edi          #  151   0x63a53  6      
  addl $0xb, %ebx                     #  152   0x63a59  3      
  andl $0xfffffff8, %ebx              #  153   0x63a5c  6      
  testl %edi, %edi                    #  154   0x63a62  2      
  jne .L_63d40                        #  155   0x63a64  6      
  nop                                 #  156   0x63a6a  1      
.L_63b80:                             #        0x63a6b  0      
  movl 0xffd2e56(%rip), %r8d          #  157   0x63a6b  7      
  jmpq .L_639a0                       #  158   0x63a72  5      
  nop                                 #  159   0x63a77  1      
  nop                                 #  160   0x63a78  1      
.L_63ba0:                             #        0x63a79  0      
  addl $0xb, %ebx                     #  161   0x63a79  3      
  andl $0xfffffff8, %ebx              #  162   0x63a7c  6      
  movl %ebx, %esi                     #  163   0x63a82  2      
  shrl $0x3, %esi                     #  164   0x63a84  3      
  movl %esi, %ecx                     #  165   0x63a87  2      
  jmpq .L_638c0                       #  166   0x63a89  5      
  nop                                 #  167   0x63a8e  1      
.L_63bc0:                             #        0x63a8f  0      
  leal (%rbx,%rax,1), %ecx            #  168   0x63a8f  3      
  movl %edx, %esi                     #  169   0x63a92  2      
  movl %edx, 0xffd2e2e(%rip)          #  170   0x63a94  6      
  orl $0x1, %esi                      #  171   0x63a9a  3      
  orl $0x3, %ebx                      #  172   0x63a9d  3      
  movl %ecx, %ecx                     #  173   0x63aa0  2      
  movl %esi, 0x4(%r15,%rcx,1)         #  174   0x63aa2  5      
  movl %ecx, 0xffd2e27(%rip)          #  175   0x63aa7  6      
  xchgw %ax, %ax                      #  176   0x63aad  3      
  leal (%rdx,%rcx,1), %ecx            #  177   0x63ab0  3      
  movl %eax, %eax                     #  178   0x63ab3  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  179   0x63ab5  5      
  movl %ecx, %ecx                     #  180   0x63aba  2      
  movl %edx, (%r15,%rcx,1)            #  181   0x63abc  4      
  jmpq .L_63ac0                       #  182   0x63ac0  5      
  nop                                 #  183   0x63ac5  1      
.L_63c00:                             #        0x63ac6  0      
  testl %eax, %eax                    #  184   0x63ac6  2      
  je .L_64340                         #  185   0x63ac8  6      
  movl $0x1, %r8d                     #  186   0x63ace  6      
  shll %cl, %eax                      #  187   0x63ad4  2      
  movl %r8d, %edi                     #  188   0x63ad6  3      
  shll %cl, %edi                      #  189   0x63ad9  2      
  addl %edi, %edi                     #  190   0x63adb  2      
  movl %edi, %esi                     #  191   0x63add  2      
  negl %esi                           #  192   0x63adf  2      
  orl %edi, %esi                      #  193   0x63ae1  2      
  nop                                 #  194   0x63ae3  1      
  movl $0x100368e8, %edi              #  195   0x63ae4  5      
  andl %eax, %esi                     #  196   0x63ae9  2      
  movl %edi, %edi                     #  197   0x63aeb  2      
  movl %esi, %eax                     #  198   0x63aed  2      
  negl %eax                           #  199   0x63aef  2      
  andl %esi, %eax                     #  200   0x63af1  2      
  bsfl %eax, %ecx                     #  201   0x63af3  3      
  leal (%rdi,%rcx,8), %r9d            #  202   0x63af6  4      
  movl %r9d, %r9d                     #  203   0x63afa  3      
  movl 0x8(%r15,%r9,1), %eax          #  204   0x63afd  5      
  xchgw %ax, %ax                      #  205   0x63b02  3      
  movl %eax, %eax                     #  206   0x63b05  2      
  movl 0x8(%r15,%rax,1), %esi         #  207   0x63b07  5      
  cmpl %esi, %r9d                     #  208   0x63b0c  3      
  je .L_64b80                         #  209   0x63b0f  6      
  cmpl %esi, 0xffd2db5(%rip)          #  210   0x63b15  6      
  ja .L_64a60                         #  211   0x63b1b  6      
  nop                                 #  212   0x63b21  1      
  movl %esi, %esi                     #  213   0x63b22  2      
  cmpl %eax, 0xc(%r15,%rsi,1)         #  214   0x63b24  5      
  jne .L_64a60                        #  215   0x63b29  6      
  movl %esi, %esi                     #  216   0x63b2f  2      
  movl %r9d, 0xc(%r15,%rsi,1)         #  217   0x63b31  5      
  movl %r9d, %r9d                     #  218   0x63b36  3      
  movl %esi, 0x8(%r15,%r9,1)          #  219   0x63b39  5      
  nop                                 #  220   0x63b3e  1      
.L_63c80:                             #        0x63b3f  0      
  leal (,%rcx,8), %edx                #  221   0x63b3f  7      
  movl %ebx, %ecx                     #  222   0x63b46  2      
  orl $0x3, %ecx                      #  223   0x63b48  3      
  subl %ebx, %edx                     #  224   0x63b4b  2      
  movl %eax, %eax                     #  225   0x63b4d  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  226   0x63b4f  5      
  addl %eax, %ebx                     #  227   0x63b54  2      
  movl %edx, %ecx                     #  228   0x63b56  2      
  orl $0x1, %ecx                      #  229   0x63b58  3      
  nop                                 #  230   0x63b5b  1      
  movl %ebx, %ebx                     #  231   0x63b5c  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  232   0x63b5e  5      
  leal (%rdx,%rbx,1), %ecx            #  233   0x63b63  3      
  movl %ecx, %ecx                     #  234   0x63b66  2      
  movl %edx, (%r15,%rcx,1)            #  235   0x63b68  4      
  movl 0xffd2d56(%rip), %ecx          #  236   0x63b6c  6      
  testl %ecx, %ecx                    #  237   0x63b72  2      
  je .L_63d20                         #  238   0x63b74  6      
  nop                                 #  239   0x63b7a  1      
  movl 0xffd2d3e(%rip), %r9d          #  240   0x63b7b  7      
  shrl $0x3, %ecx                     #  241   0x63b82  3      
  movl $0x1, %r8d                     #  242   0x63b85  6      
  shll %cl, %r8d                      #  243   0x63b8b  3      
  movl 0xffd2d40(%rip), %esi          #  244   0x63b8e  6      
  leal (%rdi,%rcx,8), %edi            #  245   0x63b94  3      
  testl %r9d, %r8d                    #  246   0x63b97  3      
  nop                                 #  247   0x63b9a  1      
  jne .L_64a40                        #  248   0x63b9b  6      
  orl %r9d, %r8d                      #  249   0x63ba1  3      
  movq %rdi, %rcx                     #  250   0x63ba4  3      
  movl %r8d, 0xffd2d12(%rip)          #  251   0x63ba7  7      
  nop                                 #  252   0x63bae  1      
.L_63d00:                             #        0x63baf  0      
  movl %edi, %edi                     #  253   0x63baf  2      
  movl %esi, 0x8(%r15,%rdi,1)         #  254   0x63bb1  5      
  movl %ecx, %ecx                     #  255   0x63bb6  2      
  movl %esi, 0xc(%r15,%rcx,1)         #  256   0x63bb8  5      
  movl %esi, %esi                     #  257   0x63bbd  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  258   0x63bbf  5      
  movl %esi, %esi                     #  259   0x63bc4  2      
  movl %edi, 0xc(%r15,%rsi,1)         #  260   0x63bc6  5      
  nop                                 #  261   0x63bcb  1      
.L_63d20:                             #        0x63bcc  0      
  movl %edx, 0xffd2cf6(%rip)          #  262   0x63bcc  6      
  movl %ebx, 0xffd2cfc(%rip)          #  263   0x63bd2  6      
  addl $0x8, %eax                     #  264   0x63bd8  3      
  jmpq .L_63a00                       #  265   0x63bdb  5      
  nop                                 #  266   0x63be0  1      
.L_63d40:                             #        0x63be1  0      
  movl %ebx, %eax                     #  267   0x63be1  2      
  movl %ebx, %edx                     #  268   0x63be3  2      
  xorl %r8d, %r8d                     #  269   0x63be5  3      
  shrl $0x8, %eax                     #  270   0x63be8  3      
  negl %edx                           #  271   0x63beb  2      
  testl %eax, %eax                    #  272   0x63bed  2      
  je .L_63d80                         #  273   0x63bef  6      
  cmpl $0xffff, %eax                  #  274   0x63bf5  5      
  movb $0x1f, %r8b                    #  275   0x63bfa  3      
  ja .L_63d80                         #  276   0x63bfd  6      
  bsrl %eax, %ecx                     #  277   0x63c03  3      
  nop                                 #  278   0x63c06  1      
  movl $0x1f, %eax                    #  279   0x63c07  5      
  movl %ebx, %r8d                     #  280   0x63c0c  3      
  xorl $0x1f, %ecx                    #  281   0x63c0f  3      
  subl %ecx, %eax                     #  282   0x63c12  2      
  leal 0x7(%rax), %ecx                #  283   0x63c14  3      
  shrl %cl, %r8d                      #  284   0x63c17  3      
  andl $0x1, %r8d                     #  285   0x63c1a  4      
  leal (%r8,%rax,2), %r8d             #  286   0x63c1e  4      
  nop                                 #  287   0x63c22  1      
.L_63d80:                             #        0x63c23  0      
  leal 0x130(,%r8,4), %eax            #  288   0x63c23  8      
  cltq                                #  289   0x63c2b  2      
  movl %eax, %eax                     #  290   0x63c2d  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  291   0x63c2f  8      
  testq %rax, %rax                    #  292   0x63c37  3      
  je .L_64740                         #  293   0x63c3a  6      
  xorl %ecx, %ecx                     #  294   0x63c40  2      
  nop                                 #  295   0x63c42  1      
  cmpl $0x1f, %r8d                    #  296   0x63c43  4      
  je .L_63dc0                         #  297   0x63c47  6      
  movl %r8d, %esi                     #  298   0x63c4d  3      
  movb $0x19, %cl                     #  299   0x63c50  2      
  shrl $0x1, %esi                     #  300   0x63c52  2      
  subl %esi, %ecx                     #  301   0x63c54  2      
  xchgw %ax, %ax                      #  302   0x63c56  3      
  nop                                 #  303   0x63c59  1      
.L_63dc0:                             #        0x63c5a  0      
  movl %ebx, %r9d                     #  304   0x63c5a  3      
  xorl %r11d, %r11d                   #  305   0x63c5d  3      
  xorl %esi, %esi                     #  306   0x63c60  2      
  shll %cl, %r9d                      #  307   0x63c62  3      
  movl %edx, %ecx                     #  308   0x63c65  2      
  jmpq .L_63e60                       #  309   0x63c67  5      
  nop                                 #  310   0x63c6c  1      
.L_63de0:                             #        0x63c6d  0      
  movl %ecx, %edx                     #  311   0x63c6d  2      
  nop                                 #  312   0x63c6f  1      
  nop                                 #  313   0x63c70  1      
.L_63e00:                             #        0x63c71  0      
  movl %r9d, %ecx                     #  314   0x63c71  3      
  movl %eax, %eax                     #  315   0x63c74  2      
  movl 0x14(%r15,%rax,1), %r10d       #  316   0x63c76  5      
  shrl $0x1f, %ecx                    #  317   0x63c7b  3      
  addl $0x4, %ecx                     #  318   0x63c7e  3      
  shll $0x2, %ecx                     #  319   0x63c81  3      
  movslq %ecx, %rcx                   #  320   0x63c84  3      
  addq %rcx, %rax                     #  321   0x63c87  3      
  movl %eax, %eax                     #  322   0x63c8a  2      
  movl (%r15,%rax,1), %ecx            #  323   0x63c8c  4      
  nop                                 #  324   0x63c90  1      
  cmpl %ecx, %r10d                    #  325   0x63c91  3      
  je .L_63ea0                         #  326   0x63c94  6      
  testq %r10, %r10                    #  327   0x63c9a  3      
  movq %r10, %rax                     #  328   0x63c9d  3      
  je .L_63ea0                         #  329   0x63ca0  6      
  nop                                 #  330   0x63ca6  1      
  nop                                 #  331   0x63ca7  1      
.L_63e40:                             #        0x63ca8  0      
  testq %rcx, %rcx                    #  332   0x63ca8  3      
  je .L_643e0                         #  333   0x63cab  6      
  movq %rax, %r11                     #  334   0x63cb1  3      
  addl %r9d, %r9d                     #  335   0x63cb4  3      
  movq %rcx, %rax                     #  336   0x63cb7  3      
  movl %edx, %ecx                     #  337   0x63cba  2      
  nop                                 #  338   0x63cbc  1      
.L_63e60:                             #        0x63cbd  0      
  movl %eax, %eax                     #  339   0x63cbd  2      
  movl 0x4(%r15,%rax,1), %edx         #  340   0x63cbf  5      
  andl $0xfffffff8, %edx              #  341   0x63cc4  6      
  subl %ebx, %edx                     #  342   0x63cca  2      
  cmpl %ecx, %edx                     #  343   0x63ccc  2      
  jae .L_63de0                        #  344   0x63cce  6      
  testl %edx, %edx                    #  345   0x63cd4  2      
  je .L_643c0                         #  346   0x63cd6  6      
  movq %rax, %rsi                     #  347   0x63cdc  3      
  nop                                 #  348   0x63cdf  1      
  jmpq .L_63e00                       #  349   0x63ce0  5      
  nop                                 #  350   0x63ce5  1      
  nop                                 #  351   0x63ce6  1      
.L_63ea0:                             #        0x63ce7  0      
  movq %r11, %rax                     #  352   0x63ce7  3      
  jmpq .L_63e40                       #  353   0x63cea  5      
  nop                                 #  354   0x63cef  1      
  nop                                 #  355   0x63cf0  1      
.L_63ec0:                             #        0x63cf1  0      
  movl 0xffd2b98(%rip), %r12d         #  356   0x63cf1  7      
  testl %r12d, %r12d                  #  357   0x63cf8  3      
  je .L_64a00                         #  358   0x63cfb  6      
  nop                                 #  359   0x63d01  1      
  nop                                 #  360   0x63d02  1      
.L_63ee0:                             #        0x63d03  0      
  testb $0x1, 0xffd2d72(%rip)         #  361   0x63d03  7      
  je .L_63f40                         #  362   0x63d0a  6      
  cmpl %ebx, 0xffd2b86(%rip)          #  363   0x63d10  6      
  ja .L_63f40                         #  364   0x63d16  6      
  movl 0xffd2ba9(%rip), %r11d         #  365   0x63d1c  7      
  testl %r11d, %r11d                  #  366   0x63d23  3      
  nop                                 #  367   0x63d26  1      
  je .L_63f40                         #  368   0x63d27  6      
  movl 0xffd2b61(%rip), %eax          #  369   0x63d2d  6      
  leal 0x1e(%rax,%rbx,1), %r12d       #  370   0x63d33  5      
  negl %eax                           #  371   0x63d38  2      
  andl %eax, %r12d                    #  372   0x63d3a  3      
  movl 0xffd2d35(%rip), %eax          #  373   0x63d3d  6      
  testl %eax, %eax                    #  374   0x63d43  2      
  jne .L_64680                        #  375   0x63d45  6      
.L_63f20:                             #        0x63d4b  0      
  cmpl %ebx, %r12d                    #  376   0x63d4b  3      
  ja .L_64a80                         #  377   0x63d4e  6      
  nop                                 #  378   0x63d54  1      
  nop                                 #  379   0x63d55  1      
.L_63f40:                             #        0x63d56  0      
  movl 0xffd2b3c(%rip), %eax          #  380   0x63d56  6      
  leal 0x2f(%rax,%rbx,1), %r12d       #  381   0x63d5c  5      
  negl %eax                           #  382   0x63d61  2      
  andl %eax, %r12d                    #  383   0x63d63  3      
  cmpl %ebx, %r12d                    #  384   0x63d66  3      
  jbe .L_646e0                        #  385   0x63d69  6      
  movl 0xffd2d03(%rip), %eax          #  386   0x63d6f  6      
  nop                                 #  387   0x63d75  1      
  testl %eax, %eax                    #  388   0x63d76  2      
  jne .L_646c0                        #  389   0x63d78  6      
  nop                                 #  390   0x63d7e  1      
  nop                                 #  391   0x63d7f  1      
.L_63f80:                             #        0x63d80  0      
  xorl %edi, %edi                     #  392   0x63d80  2      
  xorl %r9d, %r9d                     #  393   0x63d82  3      
  movl $0xffffffff, %r8d              #  394   0x63d85  6      
  movl $0x22, %ecx                    #  395   0x63d8b  5      
  movl $0x3, %edx                     #  396   0x63d90  5      
  movl %r12d, %esi                    #  397   0x63d95  3      
  nop                                 #  398   0x63d98  1      
  callq .mmap                         #  399   0x63d99  5      
  movl %eax, %edi                     #  400   0x63d9e  2      
  cmpl $0xffffffff, %edi              #  401   0x63da0  6      
  je .L_65660                         #  402   0x63da6  6      
  movl 0xffd2cbe(%rip), %eax          #  403   0x63dac  6      
  addl %r12d, %eax                    #  404   0x63db2  3      
  cmpl 0xffd2cb9(%rip), %eax          #  405   0x63db5  6      
  movl %eax, 0xffd2caf(%rip)          #  406   0x63dbb  6      
  jbe .L_63fe0                        #  407   0x63dc1  6      
  movl %eax, 0xffd2ca7(%rip)          #  408   0x63dc7  6      
  nop                                 #  409   0x63dcd  1      
  nop                                 #  410   0x63dce  1      
.L_63fe0:                             #        0x63dcf  0      
  movl 0xffd2b03(%rip), %eax          #  411   0x63dcf  6      
  testq %rax, %rax                    #  412   0x63dd5  3      
  je .L_65480                         #  413   0x63dd8  6      
  movl 0xffd2c9f(%rip), %r9d          #  414   0x63dde  7      
  movl 0xffd2c9d(%rip), %ecx          #  415   0x63de5  6      
  nop                                 #  416   0x63deb  1      
  movl $0x10036a84, %r8d              #  417   0x63dec  6      
  movl %r8d, %edx                     #  418   0x63df2  3      
  addl %r9d, %ecx                     #  419   0x63df5  3      
  cmpl %edi, %ecx                     #  420   0x63df8  2      
  jne .L_64040                        #  421   0x63dfa  6      
  jmpq .L_64c60                       #  422   0x63e00  5      
  nop                                 #  423   0x63e05  1      
.L_64020:                             #        0x63e06  0      
  movl %edx, %edx                     #  424   0x63e06  2      
  movl (%r15,%rdx,1), %ecx            #  425   0x63e08  4      
  movl %edx, %edx                     #  426   0x63e0c  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  427   0x63e0e  5      
  cmpl %edi, %ecx                     #  428   0x63e13  2      
  je .L_64c60                         #  429   0x63e15  6      
  nop                                 #  430   0x63e1b  1      
.L_64040:                             #        0x63e1c  0      
  movl %edx, %edx                     #  431   0x63e1c  2      
  movl 0x8(%r15,%rdx,1), %edx         #  432   0x63e1e  5      
  testq %rdx, %rdx                    #  433   0x63e23  3      
  jne .L_64020                        #  434   0x63e26  6      
  nop                                 #  435   0x63e2c  1      
  nop                                 #  436   0x63e2d  1      
.L_64060:                             #        0x63e2e  0      
  cmpl %edi, 0xffd2a9c(%rip)          #  437   0x63e2e  6      
  jbe .L_64080                        #  438   0x63e34  6      
  movl %edi, 0xffd2a90(%rip)          #  439   0x63e3a  6      
  nop                                 #  440   0x63e40  1      
  nop                                 #  441   0x63e41  1      
.L_64080:                             #        0x63e42  0      
  leal (%r12,%rdi,1), %esi            #  442   0x63e42  4      
  cmpl %esi, %r9d                     #  443   0x63e46  3      
  je .L_64d20                         #  444   0x63e49  6      
  movl %r8d, %ecx                     #  445   0x63e4f  3      
  jmpq .L_640c0                       #  446   0x63e52  5      
  nop                                 #  447   0x63e57  1      
.L_640a0:                             #        0x63e58  0      
  movl %ecx, %ecx                     #  448   0x63e58  2      
  cmpl %esi, (%r15,%rcx,1)            #  449   0x63e5a  4      
  je .L_64d40                         #  450   0x63e5e  6      
  nop                                 #  451   0x63e64  1      
  nop                                 #  452   0x63e65  1      
.L_640c0:                             #        0x63e66  0      
  movl %ecx, %ecx                     #  453   0x63e66  2      
  movl 0x8(%r15,%rcx,1), %ecx         #  454   0x63e68  5      
  testq %rcx, %rcx                    #  455   0x63e6d  3      
  jne .L_640a0                        #  456   0x63e70  6      
  nop                                 #  457   0x63e76  1      
  nop                                 #  458   0x63e77  1      
.L_640e0:                             #        0x63e78  0      
  movl %r8d, %edx                     #  459   0x63e78  3      
  nop                                 #  460   0x63e7b  1      
  nop                                 #  461   0x63e7c  1      
.L_64100:                             #        0x63e7d  0      
  movl %edx, %edx                     #  462   0x63e7d  2      
  movl (%r15,%rdx,1), %ecx            #  463   0x63e7f  4      
  cmpl %ecx, %eax                     #  464   0x63e83  2      
  jb .L_64120                         #  465   0x63e85  6      
  movl %edx, %edx                     #  466   0x63e8b  2      
  addl 0x4(%r15,%rdx,1), %ecx         #  467   0x63e8d  5      
  cmpl %ecx, %eax                     #  468   0x63e92  2      
  jb .L_64140                         #  469   0x63e94  6      
  nop                                 #  470   0x63e9a  1      
.L_64120:                             #        0x63e9b  0      
  movl %edx, %edx                     #  471   0x63e9b  2      
  movl 0x8(%r15,%rdx,1), %edx         #  472   0x63e9d  5      
  testq %rdx, %rdx                    #  473   0x63ea2  3      
  jne .L_64100                        #  474   0x63ea5  6      
  movl %edx, %edx                     #  475   0x63eab  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  476   0x63ead  5      
  movl %edx, %edx                     #  477   0x63eb2  2      
  addl (%r15,%rdx,1), %ecx            #  478   0x63eb4  4      
  nop                                 #  479   0x63eb8  1      
.L_64140:                             #        0x63eb9  0      
  leal -0x2f(%rcx), %edx              #  480   0x63eb9  3      
  xorl %esi, %esi                     #  481   0x63ebc  2      
  movl %edx, %r8d                     #  482   0x63ebe  3      
  andl $0x7, %r8d                     #  483   0x63ec1  4      
  je .L_64160                         #  484   0x63ec5  6      
  movl %r8d, %esi                     #  485   0x63ecb  3      
  negl %esi                           #  486   0x63ece  2      
  andl $0x7, %esi                     #  487   0x63ed0  3      
  nop                                 #  488   0x63ed3  1      
.L_64160:                             #        0x63ed4  0      
  addl %edx, %esi                     #  489   0x63ed4  2      
  leal 0x10(%rax), %edx               #  490   0x63ed6  3      
  cmpl %esi, %edx                     #  491   0x63ed9  2      
  movl %edi, %edx                     #  492   0x63edb  2      
  cmovaq %rax, %rsi                   #  493   0x63edd  4      
  xorl %r9d, %r9d                     #  494   0x63ee1  3      
  andl $0x7, %edx                     #  495   0x63ee4  3      
  leal 0x8(%rsi), %r10d               #  496   0x63ee7  4      
  je .L_641a0                         #  497   0x63eeb  6      
  movl %edx, %r9d                     #  498   0x63ef1  3      
  negl %r9d                           #  499   0x63ef4  3      
  nop                                 #  500   0x63ef7  1      
  andl $0x7, %r9d                     #  501   0x63ef8  4      
  nop                                 #  502   0x63efc  1      
  nop                                 #  503   0x63efd  1      
.L_641a0:                             #        0x63efe  0      
  leal -0x28(%r12), %r8d              #  504   0x63efe  5      
  leal (%r9,%rdi,1), %r11d            #  505   0x63f03  4      
  leal 0x18(%rsi), %edx               #  506   0x63f07  3      
  subl %r9d, %r8d                     #  507   0x63f0a  3      
  movl %r11d, 0xffd29c4(%rip)         #  508   0x63f0d  7      
  movl %r8d, %r9d                     #  509   0x63f14  3      
  movl %r8d, 0xffd29ae(%rip)          #  510   0x63f17  7      
  addl %r11d, %r8d                    #  511   0x63f1e  3      
  orl $0x1, %r9d                      #  512   0x63f21  4      
  movl %r11d, %r11d                   #  513   0x63f25  3      
  movl %r9d, 0x4(%r15,%r11,1)         #  514   0x63f28  5      
  movl %r8d, %r8d                     #  515   0x63f2d  3      
  movl $0x28, 0x4(%r15,%r8,1)         #  516   0x63f30  9      
  nop                                 #  517   0x63f39  1      
  movl 0xffd295f(%rip), %r8d          #  518   0x63f3a  7      
  movl %r8d, 0xffd2994(%rip)          #  519   0x63f41  7      
  movl %esi, %esi                     #  520   0x63f48  2      
  movl $0x1b, 0x4(%r15,%rsi,1)        #  521   0x63f4a  9      
  movq 0xffd2b2a(%rip), %r8           #  522   0x63f53  7      
  movl %r10d, %r10d                   #  523   0x63f5a  3      
  movq %r8, (%r15,%r10,1)             #  524   0x63f5d  4      
  movq 0xffd2b24(%rip), %r8           #  525   0x63f61  7      
  movl %r10d, %r10d                   #  526   0x63f68  3      
  movq %r8, 0x8(%r15,%r10,1)          #  527   0x63f6b  5      
  movl %edi, 0xffd2b0e(%rip)          #  528   0x63f70  6      
  nop                                 #  529   0x63f76  1      
  movl %r12d, 0xffd2b0a(%rip)         #  530   0x63f77  7      
  movl $0x1, 0xffd2b08(%rip)          #  531   0x63f7e  10     
  movl %r10d, 0xffd2afd(%rip)         #  532   0x63f88  7      
  nop                                 #  533   0x63f8f  1      
.L_64240:                             #        0x63f90  0      
  addl $0x4, %edx                     #  534   0x63f90  3      
  leal 0x4(%rdx), %edi                #  535   0x63f93  3      
  movl %edx, %edx                     #  536   0x63f96  2      
  movl $0x7, (%r15,%rdx,1)            #  537   0x63f98  8      
  cmpl %ecx, %edi                     #  538   0x63fa0  2      
  jb .L_64240                         #  539   0x63fa2  6      
  cmpl %esi, %eax                     #  540   0x63fa8  2      
  je .L_642e0                         #  541   0x63faa  6      
  subl %eax, %esi                     #  542   0x63fb0  2      
  xchgw %ax, %ax                      #  543   0x63fb2  3      
  leal (%rsi,%rax,1), %edx            #  544   0x63fb5  3      
  movl %esi, %ecx                     #  545   0x63fb8  2      
  orl $0x1, %ecx                      #  546   0x63fba  3      
  movl %edx, %edx                     #  547   0x63fbd  2      
  andl $0xfffffffe, 0x4(%r15,%rdx,1)  #  548   0x63fbf  9      
  movl %eax, %eax                     #  549   0x63fc8  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  550   0x63fca  5      
  movl %esi, %ecx                     #  551   0x63fcf  2      
  shrl $0x3, %ecx                     #  552   0x63fd1  3      
  nop                                 #  553   0x63fd4  1      
  movl %edx, %edx                     #  554   0x63fd5  2      
  movl %esi, (%r15,%rdx,1)            #  555   0x63fd7  4      
  cmpl $0x1f, %ecx                    #  556   0x63fdb  3      
  ja .L_64ea0                         #  557   0x63fde  6      
  movl 0xffd28d6(%rip), %edi          #  558   0x63fe4  6      
  movl $0x1, %edx                     #  559   0x63fea  5      
  nop                                 #  560   0x63fef  1      
  leal 0x100368e8(,%rcx,8), %esi      #  561   0x63ff0  7      
  shll %cl, %edx                      #  562   0x63ff7  2      
  testl %edi, %edx                    #  563   0x63ff9  2      
  jne .L_65320                        #  564   0x63ffb  6      
  orl %edi, %edx                      #  565   0x64001  2      
  movl %edx, 0xffd28b7(%rip)          #  566   0x64003  6      
  movq %rsi, %rdx                     #  567   0x64009  3      
  nop                                 #  568   0x6400c  1      
.L_642c0:                             #        0x6400d  0      
  movl %esi, %esi                     #  569   0x6400d  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  570   0x6400f  5      
  movl %edx, %edx                     #  571   0x64014  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  572   0x64016  5      
  movl %eax, %eax                     #  573   0x6401b  2      
  movl %edx, 0x8(%r15,%rax,1)         #  574   0x6401d  5      
  movl %eax, %eax                     #  575   0x64022  2      
  movl %esi, 0xc(%r15,%rax,1)         #  576   0x64024  5      
  nop                                 #  577   0x64029  1      
.L_642e0:                             #        0x6402a  0      
  movl 0xffd289c(%rip), %eax          #  578   0x6402a  6      
  cmpl %ebx, %eax                     #  579   0x64030  2      
  jbe .L_65660                        #  580   0x64032  6      
  movl %eax, %ecx                     #  581   0x64038  2      
  movl 0xffd2898(%rip), %eax          #  582   0x6403a  6      
  subl %ebx, %ecx                     #  583   0x64040  2      
  movl %ecx, 0xffd2884(%rip)          #  584   0x64042  6      
  xchgw %ax, %ax                      #  585   0x64048  3      
  orl $0x1, %ecx                      #  586   0x6404b  3      
  leal (%rbx,%rax,1), %edx            #  587   0x6404e  3      
  orl $0x3, %ebx                      #  588   0x64051  3      
  movl %edx, %edx                     #  589   0x64054  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  590   0x64056  5      
  movl %edx, 0xffd2877(%rip)          #  591   0x6405b  6      
  movl %eax, %eax                     #  592   0x64061  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  593   0x64063  5      
  nop                                 #  594   0x64068  1      
  jmpq .L_63ac0                       #  595   0x64069  5      
  nop                                 #  596   0x6406e  1      
  nop                                 #  597   0x6406f  1      
.L_64340:                             #        0x64070  0      
  movl 0xffd284e(%rip), %eax          #  598   0x64070  6      
  testl %eax, %eax                    #  599   0x64076  2      
  je .L_639c0                         #  600   0x64078  6      
  movl %eax, %edx                     #  601   0x6407e  2      
  negl %edx                           #  602   0x64080  2      
  andl %eax, %edx                     #  603   0x64082  2      
  bsfl %edx, %eax                     #  604   0x64084  3      
  leal 0x130(,%rax,4), %eax           #  605   0x64087  7      
  cltq                                #  606   0x6408e  2      
  movl %eax, %eax                     #  607   0x64090  2      
  movl 0x100368c0(%r15,%rax,1), %esi  #  608   0x64092  8      
  movl %esi, %esi                     #  609   0x6409a  2      
  movl 0x4(%r15,%rsi,1), %edx         #  610   0x6409c  5      
  movq %rsi, %rax                     #  611   0x640a1  3      
  andl $0xfffffff8, %edx              #  612   0x640a4  6      
  subl %ebx, %edx                     #  613   0x640aa  2      
  nop                                 #  614   0x640ac  1      
.L_64380:                             #        0x640ad  0      
  movl %esi, %esi                     #  615   0x640ad  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  616   0x640af  5      
  testq %rcx, %rcx                    #  617   0x640b4  3      
  je .L_64780                         #  618   0x640b7  6      
  movq %rcx, %rsi                     #  619   0x640bd  3      
  nop                                 #  620   0x640c0  1      
.L_643a0:                             #        0x640c1  0      
  movl %esi, %esi                     #  621   0x640c1  2      
  movl 0x4(%r15,%rsi,1), %ecx         #  622   0x640c3  5      
  andl $0xfffffff8, %ecx              #  623   0x640c8  6      
  subl %ebx, %ecx                     #  624   0x640ce  2      
  cmpl %edx, %ecx                     #  625   0x640d0  2      
  jae .L_646a0                        #  626   0x640d2  6      
  movq %rsi, %rax                     #  627   0x640d8  3      
  movl %ecx, %edx                     #  628   0x640db  2      
  jmpq .L_64380                       #  629   0x640dd  5      
  nop                                 #  630   0x640e2  1      
.L_643c0:                             #        0x640e3  0      
  movq %rax, %rsi                     #  631   0x640e3  3      
  nop                                 #  632   0x640e6  1      
  nop                                 #  633   0x640e7  1      
.L_643e0:                             #        0x640e8  0      
  testq %rsi, %rsi                    #  634   0x640e8  3      
  je .L_64720                         #  635   0x640eb  6      
  nop                                 #  636   0x640f1  1      
  nop                                 #  637   0x640f2  1      
.L_64400:                             #        0x640f3  0      
  testq %rax, %rax                    #  638   0x640f3  3      
  jne .L_64440                        #  639   0x640f6  6      
  jmpq .L_64480                       #  640   0x640fc  5      
  nop                                 #  641   0x64101  1      
  nop                                 #  642   0x64102  1      
.L_64420:                             #        0x64103  0      
  movq %rcx, %rax                     #  643   0x64103  3      
  nop                                 #  644   0x64106  1      
  nop                                 #  645   0x64107  1      
.L_64440:                             #        0x64108  0      
  movl %eax, %eax                     #  646   0x64108  2      
  movl 0x4(%r15,%rax,1), %ecx         #  647   0x6410a  5      
  andl $0xfffffff8, %ecx              #  648   0x6410f  6      
  subl %ebx, %ecx                     #  649   0x64115  2      
  cmpl %edx, %ecx                     #  650   0x64117  2      
  jae .L_64460                        #  651   0x64119  6      
  movl %ecx, %edx                     #  652   0x6411f  2      
  movq %rax, %rsi                     #  653   0x64121  3      
  nop                                 #  654   0x64124  1      
.L_64460:                             #        0x64125  0      
  movl %eax, %eax                     #  655   0x64125  2      
  movl 0x10(%r15,%rax,1), %ecx        #  656   0x64127  5      
  testq %rcx, %rcx                    #  657   0x6412c  3      
  jne .L_64420                        #  658   0x6412f  6      
  movl %eax, %eax                     #  659   0x64135  2      
  movl 0x14(%r15,%rax,1), %eax        #  660   0x64137  5      
  testq %rax, %rax                    #  661   0x6413c  3      
  jne .L_64440                        #  662   0x6413f  6      
  nop                                 #  663   0x64145  1      
.L_64480:                             #        0x64146  0      
  testq %rsi, %rsi                    #  664   0x64146  3      
  je .L_63b80                         #  665   0x64149  6      
  movl 0xffd2772(%rip), %r8d          #  666   0x6414f  7      
  movl %r8d, %eax                     #  667   0x64156  3      
  subl %ebx, %eax                     #  668   0x64159  2      
  cmpl %edx, %eax                     #  669   0x6415b  2      
  jbe .L_639a0                        #  670   0x6415d  6      
  nop                                 #  671   0x64163  1      
  movl 0xffd2766(%rip), %edi          #  672   0x64164  6      
  cmpl %esi, %edi                     #  673   0x6416a  2      
  ja .L_64a60                         #  674   0x6416c  6      
  leal (%rbx,%rsi,1), %eax            #  675   0x64172  3      
  cmpl %eax, %esi                     #  676   0x64175  2      
  jae .L_64a60                        #  677   0x64177  6      
  movl %esi, %esi                     #  678   0x6417d  2      
  movl 0xc(%r15,%rsi,1), %r8d         #  679   0x6417f  5      
  movl %esi, %esi                     #  680   0x64184  2      
  movl 0x18(%r15,%rsi,1), %r10d       #  681   0x64186  5      
  cmpl %r8d, %esi                     #  682   0x6418b  3      
  je .L_651e0                         #  683   0x6418e  6      
  movl %esi, %esi                     #  684   0x64194  2      
  movl 0x8(%r15,%rsi,1), %ecx         #  685   0x64196  5      
  cmpl %ecx, %edi                     #  686   0x6419b  2      
  ja .L_64a60                         #  687   0x6419d  6      
  nop                                 #  688   0x641a3  1      
  movl %ecx, %ecx                     #  689   0x641a4  2      
  cmpl %esi, 0xc(%r15,%rcx,1)         #  690   0x641a6  5      
  jne .L_64a60                        #  691   0x641ab  6      
  movl %r8d, %r8d                     #  692   0x641b1  3      
  cmpl %esi, 0x8(%r15,%r8,1)          #  693   0x641b4  5      
  jne .L_64a60                        #  694   0x641b9  6      
  nop                                 #  695   0x641bf  1      
  movl %ecx, %ecx                     #  696   0x641c0  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  697   0x641c2  5      
  movl %r8d, %r8d                     #  698   0x641c7  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  699   0x641ca  5      
  xchgw %ax, %ax                      #  700   0x641cf  3      
  nop                                 #  701   0x641d2  1      
.L_64520:                             #        0x641d3  0      
  testq %r10, %r10                    #  702   0x641d3  3      
  je .L_64620                         #  703   0x641d6  6      
  movl %esi, %esi                     #  704   0x641dc  2      
  movl 0x1c(%r15,%rsi,1), %ecx        #  705   0x641de  5      
  leal 0x130(,%rcx,4), %r9d           #  706   0x641e3  8      
  movslq %r9d, %r9                    #  707   0x641eb  3      
  nop                                 #  708   0x641ee  1      
  movl %r9d, %r9d                     #  709   0x641ef  3      
  cmpl %esi, 0x100368c0(%r15,%r9,1)   #  710   0x641f2  8      
  je .L_652e0                         #  711   0x641fa  6      
  cmpl %r10d, 0xffd26c9(%rip)         #  712   0x64200  7      
  ja .L_64a60                         #  713   0x64207  6      
  xchgw %ax, %ax                      #  714   0x6420d  3      
  movl %r10d, %r10d                   #  715   0x64210  3      
  cmpl %esi, 0x10(%r15,%r10,1)        #  716   0x64213  5      
  je .L_655a0                         #  717   0x64218  6      
  movl %r10d, %r10d                   #  718   0x6421e  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  719   0x64221  5      
  nop                                 #  720   0x64226  1      
.L_64580:                             #        0x64227  0      
  testq %r8, %r8                      #  721   0x64227  3      
  je .L_64620                         #  722   0x6422a  6      
  nop                                 #  723   0x64230  1      
  nop                                 #  724   0x64231  1      
.L_645a0:                             #        0x64232  0      
  cmpl %r8d, %edi                     #  725   0x64232  3      
  ja .L_64a60                         #  726   0x64235  6      
  movl %esi, %esi                     #  727   0x6423b  2      
  movl 0x10(%r15,%rsi,1), %ecx        #  728   0x6423d  5      
  movl %r8d, %r8d                     #  729   0x64242  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  730   0x64245  5      
  testq %rcx, %rcx                    #  731   0x6424a  3      
  nop                                 #  732   0x6424d  1      
  je .L_645e0                         #  733   0x6424e  6      
  cmpl %ecx, %edi                     #  734   0x64254  2      
  ja .L_64a60                         #  735   0x64256  6      
  movl %r8d, %r8d                     #  736   0x6425c  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  737   0x6425f  5      
  movl %ecx, %ecx                     #  738   0x64264  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  739   0x64266  5      
  nop                                 #  740   0x6426b  1      
.L_645e0:                             #        0x6426c  0      
  movl %esi, %esi                     #  741   0x6426c  2      
  movl 0x14(%r15,%rsi,1), %ecx        #  742   0x6426e  5      
  testq %rcx, %rcx                    #  743   0x64273  3      
  je .L_64620                         #  744   0x64276  6      
  cmpl %ecx, %edi                     #  745   0x6427c  2      
  ja .L_64a60                         #  746   0x6427e  6      
  movl %r8d, %r8d                     #  747   0x64284  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  748   0x64287  5      
  nop                                 #  749   0x6428c  1      
  movl %ecx, %ecx                     #  750   0x6428d  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  751   0x6428f  5      
  nop                                 #  752   0x64294  1      
  nop                                 #  753   0x64295  1      
.L_64620:                             #        0x64296  0      
  cmpl $0xf, %edx                     #  754   0x64296  3      
  ja .L_64ba0                         #  755   0x64299  6      
  leal (%rdx,%rbx,1), %eax            #  756   0x6429f  3      
  movl %eax, %edx                     #  757   0x642a2  2      
  addl %esi, %eax                     #  758   0x642a4  2      
  orl $0x3, %edx                      #  759   0x642a6  3      
  movl %esi, %esi                     #  760   0x642a9  2      
  movl %edx, 0x4(%r15,%rsi,1)         #  761   0x642ab  5      
  nop                                 #  762   0x642b0  1      
  movl %eax, %eax                     #  763   0x642b1  2      
  orl $0x1, 0x4(%r15,%rax,1)          #  764   0x642b3  6      
  nop                                 #  765   0x642b9  1      
  nop                                 #  766   0x642ba  1      
.L_64660:                             #        0x642bb  0      
  leal 0x8(%rsi), %eax                #  767   0x642bb  3      
  testq %rax, %rax                    #  768   0x642be  3      
  jne .L_63a00                        #  769   0x642c1  6      
  jmpq .L_63b80                       #  770   0x642c7  5      
  nop                                 #  771   0x642cc  1      
.L_64680:                             #        0x642cd  0      
  movl 0xffd279d(%rip), %edx          #  772   0x642cd  6      
  leal (%r12,%rdx,1), %ecx            #  773   0x642d3  4      
  cmpl %ecx, %edx                     #  774   0x642d7  2      
  jae .L_63f40                        #  775   0x642d9  6      
  cmpl %ecx, %eax                     #  776   0x642df  2      
  jb .L_63f40                         #  777   0x642e1  6      
  jmpq .L_63f20                       #  778   0x642e7  5      
  nop                                 #  779   0x642ec  1      
.L_646a0:                             #        0x642ed  0      
  movl %edx, %ecx                     #  780   0x642ed  2      
  movl %ecx, %edx                     #  781   0x642ef  2      
  jmpq .L_64380                       #  782   0x642f1  5      
  nop                                 #  783   0x642f6  1      
  nop                                 #  784   0x642f7  1      
.L_646c0:                             #        0x642f8  0      
  movl 0xffd2772(%rip), %edx          #  785   0x642f8  6      
  leal (%r12,%rdx,1), %ecx            #  786   0x642fe  4      
  cmpl %ecx, %edx                     #  787   0x64302  2      
  jae .L_646e0                        #  788   0x64304  6      
  cmpl %ecx, %eax                     #  789   0x6430a  2      
  jae .L_63f80                        #  790   0x6430c  6      
  nop                                 #  791   0x64312  1      
.L_646e0:                             #        0x64313  0      
  xorl %eax, %eax                     #  792   0x64313  2      
  jmpq .L_63a00                       #  793   0x64315  5      
  nop                                 #  794   0x6431a  1      
  nop                                 #  795   0x6431b  1      
.L_64700:                             #        0x6431c  0      
  movl $0xfffffffe, %ebx              #  796   0x6431c  5      
  roll %cl, %ebx                      #  797   0x64321  2      
  andl %edx, %ebx                     #  798   0x64323  2      
  movl %ebx, 0xffd2595(%rip)          #  799   0x64325  6      
  jmpq .L_63940                       #  800   0x6432b  5      
  nop                                 #  801   0x64330  1      
.L_64720:                             #        0x64331  0      
  testq %rax, %rax                    #  802   0x64331  3      
  jne .L_64440                        #  803   0x64334  6      
  nop                                 #  804   0x6433a  1      
  nop                                 #  805   0x6433b  1      
.L_64740:                             #        0x6433c  0      
  movl %r8d, %ecx                     #  806   0x6433c  3      
  movl $0x2, %eax                     #  807   0x6433f  5      
  shll %cl, %eax                      #  808   0x64344  2      
  movl %eax, %ecx                     #  809   0x64346  2      
  negl %ecx                           #  810   0x64348  2      
  orl %eax, %ecx                      #  811   0x6434a  2      
  andl %ecx, %edi                     #  812   0x6434c  2      
  je .L_63b80                         #  813   0x6434e  6      
  movl %edi, %eax                     #  814   0x64354  2      
  xorl %esi, %esi                     #  815   0x64356  2      
  negl %eax                           #  816   0x64358  2      
  andl %edi, %eax                     #  817   0x6435a  2      
  bsfl %eax, %eax                     #  818   0x6435c  3      
  leal 0x130(,%rax,4), %eax           #  819   0x6435f  7      
  cltq                                #  820   0x64366  2      
  movl %eax, %eax                     #  821   0x64368  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  822   0x6436a  8      
  jmpq .L_64400                       #  823   0x64372  5      
  nop                                 #  824   0x64377  1      
.L_64780:                             #        0x64378  0      
  movl %esi, %esi                     #  825   0x64378  2      
  movl 0x14(%r15,%rsi,1), %esi        #  826   0x6437a  5      
  testq %rsi, %rsi                    #  827   0x6437f  3      
  jne .L_643a0                        #  828   0x64382  6      
  movl 0xffd2542(%rip), %edi          #  829   0x64388  6      
  cmpl %eax, %edi                     #  830   0x6438e  2      
  ja .L_64a60                         #  831   0x64390  6      
  xchgw %ax, %ax                      #  832   0x64396  3      
  leal (%rbx,%rax,1), %esi            #  833   0x64399  3      
  cmpl %esi, %eax                     #  834   0x6439c  2      
  jae .L_64a60                        #  835   0x6439e  6      
  movl %eax, %eax                     #  836   0x643a4  2      
  movl 0xc(%r15,%rax,1), %r8d         #  837   0x643a6  5      
  movl %eax, %eax                     #  838   0x643ab  2      
  movl 0x18(%r15,%rax,1), %r10d       #  839   0x643ad  5      
  cmpl %r8d, %eax                     #  840   0x643b2  3      
  nop                                 #  841   0x643b5  1      
  je .L_65120                         #  842   0x643b6  6      
  movl %eax, %eax                     #  843   0x643bc  2      
  movl 0x8(%r15,%rax,1), %ecx         #  844   0x643be  5      
  cmpl %ecx, %edi                     #  845   0x643c3  2      
  ja .L_64a60                         #  846   0x643c5  6      
  movl %ecx, %ecx                     #  847   0x643cb  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  848   0x643cd  5      
  nop                                 #  849   0x643d2  1      
  jne .L_64a60                        #  850   0x643d3  6      
  movl %r8d, %r8d                     #  851   0x643d9  3      
  cmpl %eax, 0x8(%r15,%r8,1)          #  852   0x643dc  5      
  jne .L_64a60                        #  853   0x643e1  6      
  movl %ecx, %ecx                     #  854   0x643e7  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  855   0x643e9  5      
  nop                                 #  856   0x643ee  1      
  movl %r8d, %r8d                     #  857   0x643ef  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  858   0x643f2  5      
  nop                                 #  859   0x643f7  1      
  nop                                 #  860   0x643f8  1      
.L_64820:                             #        0x643f9  0      
  testq %r10, %r10                    #  861   0x643f9  3      
  je .L_64920                         #  862   0x643fc  6      
  movl %eax, %eax                     #  863   0x64402  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  864   0x64404  5      
  leal 0x130(,%rcx,4), %r9d           #  865   0x64409  8      
  movslq %r9d, %r9                    #  866   0x64411  3      
  nop                                 #  867   0x64414  1      
  movl %r9d, %r9d                     #  868   0x64415  3      
  cmpl %eax, 0x100368c0(%r15,%r9,1)   #  869   0x64418  8      
  je .L_652a0                         #  870   0x64420  6      
  cmpl %r10d, 0xffd24a3(%rip)         #  871   0x64426  7      
  ja .L_64a60                         #  872   0x6442d  6      
  xchgw %ax, %ax                      #  873   0x64433  3      
  movl %r10d, %r10d                   #  874   0x64436  3      
  cmpl %eax, 0x10(%r15,%r10,1)        #  875   0x64439  5      
  je .L_65460                         #  876   0x6443e  6      
  movl %r10d, %r10d                   #  877   0x64444  3      
  movl %r8d, 0x14(%r15,%r10,1)        #  878   0x64447  5      
  nop                                 #  879   0x6444c  1      
.L_64880:                             #        0x6444d  0      
  testq %r8, %r8                      #  880   0x6444d  3      
  je .L_64920                         #  881   0x64450  6      
  nop                                 #  882   0x64456  1      
  nop                                 #  883   0x64457  1      
.L_648a0:                             #        0x64458  0      
  cmpl %r8d, %edi                     #  884   0x64458  3      
  ja .L_64a60                         #  885   0x6445b  6      
  movl %eax, %eax                     #  886   0x64461  2      
  movl 0x10(%r15,%rax,1), %ecx        #  887   0x64463  5      
  movl %r8d, %r8d                     #  888   0x64468  3      
  movl %r10d, 0x18(%r15,%r8,1)        #  889   0x6446b  5      
  testq %rcx, %rcx                    #  890   0x64470  3      
  nop                                 #  891   0x64473  1      
  je .L_648e0                         #  892   0x64474  6      
  cmpl %ecx, %edi                     #  893   0x6447a  2      
  ja .L_64a60                         #  894   0x6447c  6      
  movl %r8d, %r8d                     #  895   0x64482  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  896   0x64485  5      
  movl %ecx, %ecx                     #  897   0x6448a  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  898   0x6448c  5      
  nop                                 #  899   0x64491  1      
.L_648e0:                             #        0x64492  0      
  movl %eax, %eax                     #  900   0x64492  2      
  movl 0x14(%r15,%rax,1), %ecx        #  901   0x64494  5      
  testq %rcx, %rcx                    #  902   0x64499  3      
  je .L_64920                         #  903   0x6449c  6      
  cmpl %ecx, %edi                     #  904   0x644a2  2      
  ja .L_64a60                         #  905   0x644a4  6      
  movl %r8d, %r8d                     #  906   0x644aa  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  907   0x644ad  5      
  nop                                 #  908   0x644b2  1      
  movl %ecx, %ecx                     #  909   0x644b3  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  910   0x644b5  5      
  nop                                 #  911   0x644ba  1      
  nop                                 #  912   0x644bb  1      
.L_64920:                             #        0x644bc  0      
  cmpl $0xf, %edx                     #  913   0x644bc  3      
  jbe .L_64c40                        #  914   0x644bf  6      
  movl %ebx, %ecx                     #  915   0x644c5  2      
  orl $0x3, %ecx                      #  916   0x644c7  3      
  movl %eax, %eax                     #  917   0x644ca  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  918   0x644cc  5      
  movl %edx, %ecx                     #  919   0x644d1  2      
  orl $0x1, %ecx                      #  920   0x644d3  3      
  nop                                 #  921   0x644d6  1      
  movl %esi, %esi                     #  922   0x644d7  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  923   0x644d9  5      
  leal (%rdx,%rsi,1), %ecx            #  924   0x644de  3      
  movl %ecx, %ecx                     #  925   0x644e1  2      
  movl %edx, (%r15,%rcx,1)            #  926   0x644e3  4      
  movl 0xffd23db(%rip), %ecx          #  927   0x644e7  6      
  testl %ecx, %ecx                    #  928   0x644ed  2      
  je .L_649c0                         #  929   0x644ef  6      
  nop                                 #  930   0x644f5  1      
  movl 0xffd23c3(%rip), %r10d         #  931   0x644f6  7      
  shrl $0x3, %ecx                     #  932   0x644fd  3      
  movl $0x1, %r8d                     #  933   0x64500  6      
  shll %cl, %r8d                      #  934   0x64506  3      
  movl 0xffd23c5(%rip), %edi          #  935   0x64509  6      
  nop                                 #  936   0x6450f  1      
  leal 0x100368e8(,%rcx,8), %r9d      #  937   0x64510  8      
  testl %r10d, %r8d                   #  938   0x64518  3      
  jne .L_65100                        #  939   0x6451b  6      
  orl %r10d, %r8d                     #  940   0x64521  3      
  movq %r9, %rcx                      #  941   0x64524  3      
  movl %r8d, 0xffd2392(%rip)          #  942   0x64527  7      
  xchgw %ax, %ax                      #  943   0x6452e  3      
.L_649a0:                             #        0x64531  0      
  movl %r9d, %r9d                     #  944   0x64531  3      
  movl %edi, 0x8(%r15,%r9,1)          #  945   0x64534  5      
  movl %ecx, %ecx                     #  946   0x64539  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  947   0x6453b  5      
  movl %edi, %edi                     #  948   0x64540  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  949   0x64542  5      
  movl %edi, %edi                     #  950   0x64547  2      
  movl %r9d, 0xc(%r15,%rdi,1)         #  951   0x64549  5      
  nop                                 #  952   0x6454e  1      
.L_649c0:                             #        0x6454f  0      
  movl %edx, 0xffd2373(%rip)          #  953   0x6454f  6      
  movl %esi, 0xffd2379(%rip)          #  954   0x64555  6      
  nop                                 #  955   0x6455b  1      
  nop                                 #  956   0x6455c  1      
.L_649e0:                             #        0x6455d  0      
  addl $0x8, %eax                     #  957   0x6455d  3      
  testq %rax, %rax                    #  958   0x64560  3      
  jne .L_63a00                        #  959   0x64563  6      
  jmpq .L_63b80                       #  960   0x64569  5      
  nop                                 #  961   0x6456e  1      
.L_64a00:                             #        0x6456f  0      
  nop                                 #  962   0x6456f  1      
  nop                                 #  963   0x64570  1      
  callq .init_mparams                 #  964   0x64571  5      
  jmpq .L_63ee0                       #  965   0x64576  5      
  nop                                 #  966   0x6457b  1      
  nop                                 #  967   0x6457c  1      
.L_64a40:                             #        0x6457d  0      
  movl %edi, %edi                     #  968   0x6457d  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  969   0x6457f  5      
  cmpl %ecx, 0xffd2346(%rip)          #  970   0x64584  6      
  jbe .L_63d00                        #  971   0x6458a  6      
  nop                                 #  972   0x64590  1      
.L_64a60:                             #        0x64591  0      
  nop                                 #  973   0x64591  1      
  nop                                 #  974   0x64592  1      
  callq .abort                        #  975   0x64593  5      
.L_64a80:                             #        0x64598  0      
  xorl %r9d, %r9d                     #  976   0x64598  3      
  movl $0x3, %edx                     #  977   0x6459b  5      
  xorl %edi, %edi                     #  978   0x645a0  2      
  movl $0xffffffff, %r8d              #  979   0x645a2  6      
  movl $0x22, %ecx                    #  980   0x645a8  5      
  movl %r12d, %esi                    #  981   0x645ad  3      
  nop                                 #  982   0x645b0  1      
  callq .mmap                         #  983   0x645b1  5      
  movl %eax, %edx                     #  984   0x645b6  2      
  cmpl $0xffffffff, %edx              #  985   0x645b8  6      
  je .L_63f40                         #  986   0x645be  6      
  movl %edx, %eax                     #  987   0x645c4  2      
  xorl %ecx, %ecx                     #  988   0x645c6  2      
  andl $0x7, %eax                     #  989   0x645c8  3      
  je .L_64ac0                         #  990   0x645cb  6      
  movl %eax, %ecx                     #  991   0x645d1  2      
  negl %ecx                           #  992   0x645d3  2      
  andl $0x7, %ecx                     #  993   0x645d5  3      
  nop                                 #  994   0x645d8  1      
.L_64ac0:                             #        0x645d9  0      
  leal (%rcx,%rdx,1), %eax            #  995   0x645d9  3      
  leal -0x10(%r12), %esi              #  996   0x645dc  5      
  movl %eax, %eax                     #  997   0x645e1  2      
  movl %ecx, (%r15,%rax,1)            #  998   0x645e3  4      
  subl %ecx, %esi                     #  999   0x645e7  2      
  movl 0xffd22e1(%rip), %ecx          #  1000  0x645e9  6      
  movl %eax, %eax                     #  1001  0x645ef  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1002  0x645f1  5      
  addl %eax, %esi                     #  1003  0x645f6  2      
  nop                                 #  1004  0x645f8  1      
  movl %esi, %esi                     #  1005  0x645f9  2      
  movl $0x7, 0x4(%r15,%rsi,1)         #  1006  0x645fb  9      
  movl %esi, %esi                     #  1007  0x64604  2      
  movl $0x0, 0x8(%r15,%rsi,1)         #  1008  0x64606  9      
  testq %rcx, %rcx                    #  1009  0x6460f  3      
  je .L_64b20                         #  1010  0x64612  6      
  cmpl %ecx, %edx                     #  1011  0x64618  2      
  nop                                 #  1012  0x6461a  1      
  jae .L_64b40                        #  1013  0x6461b  6      
  nop                                 #  1014  0x64621  1      
  nop                                 #  1015  0x64622  1      
.L_64b20:                             #        0x64623  0      
  movl %edx, 0xffd22a7(%rip)          #  1016  0x64623  6      
  nop                                 #  1017  0x64629  1      
  nop                                 #  1018  0x6462a  1      
.L_64b40:                             #        0x6462b  0      
  addl 0xffd243e(%rip), %r12d         #  1019  0x6462b  7      
  cmpl 0xffd243b(%rip), %r12d         #  1020  0x64632  7      
  movl %r12d, 0xffd2430(%rip)         #  1021  0x64639  7      
  jbe .L_64b60                        #  1022  0x64640  6      
  movl %r12d, 0xffd2427(%rip)         #  1023  0x64646  7      
  xchgw %ax, %ax                      #  1024  0x6464d  3      
.L_64b60:                             #        0x64650  0      
  addl $0x8, %eax                     #  1025  0x64650  3      
  testq %rax, %rax                    #  1026  0x64653  3      
  jne .L_63a00                        #  1027  0x64656  6      
  jmpq .L_63f40                       #  1028  0x6465c  5      
  nop                                 #  1029  0x64661  1      
.L_64b80:                             #        0x64662  0      
  shll %cl, %r8d                      #  1030  0x64662  3      
  notl %r8d                           #  1031  0x64665  3      
  andl %edx, %r8d                     #  1032  0x64668  3      
  movl %r8d, 0xffd224e(%rip)          #  1033  0x6466b  7      
  jmpq .L_63c80                       #  1034  0x64672  5      
  nop                                 #  1035  0x64677  1      
.L_64ba0:                             #        0x64678  0      
  movl %ebx, %ecx                     #  1036  0x64678  2      
  orl $0x3, %ecx                      #  1037  0x6467a  3      
  movl %esi, %esi                     #  1038  0x6467d  2      
  movl %ecx, 0x4(%r15,%rsi,1)         #  1039  0x6467f  5      
  movl %edx, %ecx                     #  1040  0x64684  2      
  orl $0x1, %ecx                      #  1041  0x64686  3      
  movl %eax, %eax                     #  1042  0x64689  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1043  0x6468b  5      
  leal (%rdx,%rax,1), %ecx            #  1044  0x64690  3      
  nop                                 #  1045  0x64693  1      
  movl %ecx, %ecx                     #  1046  0x64694  2      
  movl %edx, (%r15,%rcx,1)            #  1047  0x64696  4      
  movl %edx, %ecx                     #  1048  0x6469a  2      
  shrl $0x3, %ecx                     #  1049  0x6469c  3      
  cmpl $0x1f, %ecx                    #  1050  0x6469f  3      
  ja .L_65020                         #  1051  0x646a2  6      
  movl 0xffd2211(%rip), %r8d          #  1052  0x646a8  7      
  movl $0x1, %edx                     #  1053  0x646af  5      
  leal 0x100368e8(,%rcx,8), %edi      #  1054  0x646b4  7      
  shll %cl, %edx                      #  1055  0x646bb  2      
  testl %r8d, %edx                    #  1056  0x646bd  3      
  jne .L_65440                        #  1057  0x646c0  6      
  orl %r8d, %edx                      #  1058  0x646c6  3      
  movl %edx, 0xffd21f1(%rip)          #  1059  0x646c9  6      
  movq %rdi, %rdx                     #  1060  0x646cf  3      
  xchgw %ax, %ax                      #  1061  0x646d2  3      
.L_64c00:                             #        0x646d5  0      
  movl %edi, %edi                     #  1062  0x646d5  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  1063  0x646d7  5      
  movl %edx, %edx                     #  1064  0x646dc  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1065  0x646de  5      
  movl %eax, %eax                     #  1066  0x646e3  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1067  0x646e5  5      
  movl %eax, %eax                     #  1068  0x646ea  2      
  movl %edi, 0xc(%r15,%rax,1)         #  1069  0x646ec  5      
  nop                                 #  1070  0x646f1  1      
  jmpq .L_64660                       #  1071  0x646f2  5      
  nop                                 #  1072  0x646f7  1      
  nop                                 #  1073  0x646f8  1      
.L_64c40:                             #        0x646f9  0      
  addl %ebx, %edx                     #  1074  0x646f9  2      
  movl %edx, %ecx                     #  1075  0x646fb  2      
  addl %eax, %edx                     #  1076  0x646fd  2      
  orl $0x3, %ecx                      #  1077  0x646ff  3      
  movl %eax, %eax                     #  1078  0x64702  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1079  0x64704  5      
  movl %edx, %edx                     #  1080  0x64709  2      
  orl $0x1, 0x4(%r15,%rdx,1)          #  1081  0x6470b  6      
  jmpq .L_649e0                       #  1082  0x64711  5      
  nop                                 #  1083  0x64716  1      
.L_64c60:                             #        0x64717  0      
  movl %edx, %edx                     #  1084  0x64717  2      
  movl 0xc(%r15,%rdx,1), %ecx         #  1085  0x64719  5      
  testb $0x8, %cl                     #  1086  0x6471e  3      
  jne .L_64060                        #  1087  0x64721  6      
  andl $0x1, %ecx                     #  1088  0x64727  3      
  je .L_64060                         #  1089  0x6472a  6      
  movl %edx, %edx                     #  1090  0x64730  2      
  movl (%r15,%rdx,1), %esi            #  1091  0x64732  4      
  nop                                 #  1092  0x64736  1      
  cmpl %esi, %eax                     #  1093  0x64737  2      
  jb .L_64060                         #  1094  0x64739  6      
  movl %edx, %edx                     #  1095  0x6473f  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1096  0x64741  5      
  leal (%rcx,%rsi,1), %esi            #  1097  0x64746  3      
  cmpl %eax, %esi                     #  1098  0x64749  2      
  jbe .L_64060                        #  1099  0x6474b  6      
  leal (%r12,%rcx,1), %ecx            #  1100  0x64751  4      
  movl %eax, %esi                     #  1101  0x64755  2      
  movl %edx, %edx                     #  1102  0x64757  2      
  movl %ecx, 0x4(%r15,%rdx,1)         #  1103  0x64759  5      
  xorl %edx, %edx                     #  1104  0x6475e  2      
  andl $0x7, %esi                     #  1105  0x64760  3      
  movl 0xffd2163(%rip), %ecx          #  1106  0x64763  6      
  je .L_64cc0                         #  1107  0x64769  6      
  movl %esi, %edx                     #  1108  0x6476f  2      
  negl %edx                           #  1109  0x64771  2      
  andl $0x7, %edx                     #  1110  0x64773  3      
  nop                                 #  1111  0x64776  1      
.L_64cc0:                             #        0x64777  0      
  addl %ecx, %r12d                    #  1112  0x64777  3      
  leal (%rdx,%rax,1), %eax            #  1113  0x6477a  3      
  subl %edx, %r12d                    #  1114  0x6477d  3      
  movl %r12d, %edx                    #  1115  0x64780  3      
  movl %r12d, 0xffd2142(%rip)         #  1116  0x64783  7      
  movl %eax, 0xffd2148(%rip)          #  1117  0x6478a  6      
  orl $0x1, %edx                      #  1118  0x64790  3      
  nop                                 #  1119  0x64793  1      
  movl %eax, %eax                     #  1120  0x64794  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1121  0x64796  5      
  leal (%r12,%rax,1), %eax            #  1122  0x6479b  4      
  movl %eax, %eax                     #  1123  0x6479f  2      
  movl $0x28, 0x4(%r15,%rax,1)        #  1124  0x647a1  9      
  movl 0xffd20f0(%rip), %eax          #  1125  0x647aa  6      
  nop                                 #  1126  0x647b0  1      
  movl %eax, 0xffd2125(%rip)          #  1127  0x647b1  6      
  jmpq .L_642e0                       #  1128  0x647b7  5      
  nop                                 #  1129  0x647bc  1      
  nop                                 #  1130  0x647bd  1      
.L_64d20:                             #        0x647be  0      
  movl %r8d, %ecx                     #  1131  0x647be  3      
  nop                                 #  1132  0x647c1  1      
  nop                                 #  1133  0x647c2  1      
.L_64d40:                             #        0x647c3  0      
  movl %ecx, %ecx                     #  1134  0x647c3  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1135  0x647c5  5      
  testb $0x8, %dl                     #  1136  0x647ca  3      
  jne .L_640e0                        #  1137  0x647cd  6      
  andl $0x1, %edx                     #  1138  0x647d3  3      
  je .L_640e0                         #  1139  0x647d6  6      
  movl %ecx, %ecx                     #  1140  0x647dc  2      
  movl (%r15,%rcx,1), %edx            #  1141  0x647de  4      
  nop                                 #  1142  0x647e2  1      
  movl %ecx, %ecx                     #  1143  0x647e3  2      
  addl %r12d, 0x4(%r15,%rcx,1)        #  1144  0x647e5  5      
  xorl %eax, %eax                     #  1145  0x647ea  2      
  movl %ecx, %ecx                     #  1146  0x647ec  2      
  movl %edi, (%r15,%rcx,1)            #  1147  0x647ee  4      
  movl %edi, %ecx                     #  1148  0x647f2  2      
  andl $0x7, %ecx                     #  1149  0x647f4  3      
  je .L_64d80                         #  1150  0x647f7  6      
  movl %ecx, %eax                     #  1151  0x647fd  2      
  negl %eax                           #  1152  0x647ff  2      
  andl $0x7, %eax                     #  1153  0x64801  3      
  nop                                 #  1154  0x64804  1      
.L_64d80:                             #        0x64805  0      
  movl %edx, %ecx                     #  1155  0x64805  2      
  leal (%rax,%rdi,1), %edi            #  1156  0x64807  3      
  xorl %eax, %eax                     #  1157  0x6480a  2      
  andl $0x7, %ecx                     #  1158  0x6480c  3      
  je .L_64da0                         #  1159  0x6480f  6      
  movl %ecx, %eax                     #  1160  0x64815  2      
  negl %eax                           #  1161  0x64817  2      
  andl $0x7, %eax                     #  1162  0x64819  3      
  nop                                 #  1163  0x6481c  1      
.L_64da0:                             #        0x6481d  0      
  leal (%rax,%rdx,1), %edx            #  1164  0x6481d  3      
  leal (%rbx,%rdi,1), %eax            #  1165  0x64820  3      
  movl %edx, %esi                     #  1166  0x64823  2      
  subl %edi, %esi                     #  1167  0x64825  2      
  subl %ebx, %esi                     #  1168  0x64827  2      
  orl $0x3, %ebx                      #  1169  0x64829  3      
  cmpl %edx, 0xffd20a6(%rip)          #  1170  0x6482c  6      
  movl %edi, %edi                     #  1171  0x64832  2      
  movl %ebx, 0x4(%r15,%rdi,1)         #  1172  0x64834  5      
  nop                                 #  1173  0x64839  1      
  je .L_65a20                         #  1174  0x6483a  6      
  cmpl %edx, 0xffd208e(%rip)          #  1175  0x64840  6      
  je .L_65a60                         #  1176  0x64846  6      
  movl %edx, %edx                     #  1177  0x6484c  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1178  0x6484e  5      
  movl %ebx, %ecx                     #  1179  0x64853  2      
  andl $0x3, %ecx                     #  1180  0x64855  3      
  xchgw %ax, %ax                      #  1181  0x64858  3      
  cmpl $0x1, %ecx                     #  1182  0x6485b  3      
  je .L_65980                         #  1183  0x6485e  6      
  nop                                 #  1184  0x64864  1      
  nop                                 #  1185  0x64865  1      
.L_64e00:                             #        0x64866  0      
  andl $0xfffffffe, %ebx              #  1186  0x64866  6      
  movl %esi, %ecx                     #  1187  0x6486c  2      
  movl %edx, %edx                     #  1188  0x6486e  2      
  movl %ebx, 0x4(%r15,%rdx,1)         #  1189  0x64870  5      
  movl %esi, %edx                     #  1190  0x64875  2      
  shrl $0x3, %ecx                     #  1191  0x64877  3      
  orl $0x1, %edx                      #  1192  0x6487a  3      
  cmpl $0x1f, %ecx                    #  1193  0x6487d  3      
  movl %eax, %eax                     #  1194  0x64880  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1195  0x64882  5      
  xchgw %ax, %ax                      #  1196  0x64887  3      
  leal (%rsi,%rax,1), %edx            #  1197  0x6488a  3      
  movl %edx, %edx                     #  1198  0x6488d  2      
  movl %esi, (%r15,%rdx,1)            #  1199  0x6488f  4      
  ja .L_65720                         #  1200  0x64893  6      
  movl 0xffd2021(%rip), %esi          #  1201  0x64899  6      
  movl $0x1, %ebx                     #  1202  0x6489f  5      
  nop                                 #  1203  0x648a4  1      
  leal 0x100368e8(,%rcx,8), %edx      #  1204  0x648a5  7      
  shll %cl, %ebx                      #  1205  0x648ac  2      
  testl %esi, %ebx                    #  1206  0x648ae  2      
  jne .L_65960                        #  1207  0x648b0  6      
  orl %esi, %ebx                      #  1208  0x648b6  2      
  movq %rdx, %rcx                     #  1209  0x648b8  3      
  movl %ebx, 0xffd1fff(%rip)          #  1210  0x648bb  6      
  nop                                 #  1211  0x648c1  1      
.L_64e60:                             #        0x648c2  0      
  movl %edx, %edx                     #  1212  0x648c2  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1213  0x648c4  5      
  movl %ecx, %ecx                     #  1214  0x648c9  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1215  0x648cb  5      
  movl %eax, %eax                     #  1216  0x648d0  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1217  0x648d2  5      
  movl %eax, %eax                     #  1218  0x648d7  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1219  0x648d9  5      
  leal 0x8(%rdi), %eax                #  1220  0x648de  3      
  nop                                 #  1221  0x648e1  1      
  jmpq .L_63a00                       #  1222  0x648e2  5      
  nop                                 #  1223  0x648e7  1      
  nop                                 #  1224  0x648e8  1      
.L_64ea0:                             #        0x648e9  0      
  movl %esi, %ecx                     #  1225  0x648e9  2      
  xorl %r8d, %r8d                     #  1226  0x648eb  3      
  movl $0x1, %edx                     #  1227  0x648ee  5      
  shrl $0x8, %ecx                     #  1228  0x648f3  3      
  testl %ecx, %ecx                    #  1229  0x648f6  2      
  je .L_64f00                         #  1230  0x648f8  6      
  cmpl $0xffff, %ecx                  #  1231  0x648fe  6      
  movl $0x80000000, %edx              #  1232  0x64904  5      
  movb $0x1f, %r8b                    #  1233  0x64909  3      
  nop                                 #  1234  0x6490c  1      
  ja .L_64f00                         #  1235  0x6490d  6      
  bsrl %ecx, %ecx                     #  1236  0x64913  3      
  movl $0x1f, %edx                    #  1237  0x64916  5      
  movl %esi, %r8d                     #  1238  0x6491b  3      
  xorl $0x1f, %ecx                    #  1239  0x6491e  3      
  subl %ecx, %edx                     #  1240  0x64921  2      
  leal 0x7(%rdx), %ecx                #  1241  0x64923  3      
  shrl %cl, %r8d                      #  1242  0x64926  3      
  andl $0x1, %r8d                     #  1243  0x64929  4      
  leal (%r8,%rdx,2), %r8d             #  1244  0x6492d  4      
  movl $0x1, %edx                     #  1245  0x64931  5      
  movl %r8d, %ecx                     #  1246  0x64936  3      
  shll %cl, %edx                      #  1247  0x64939  2      
  nop                                 #  1248  0x6493b  1      
  nop                                 #  1249  0x6493c  1      
.L_64f00:                             #        0x6493d  0      
  movl %eax, %eax                     #  1250  0x6493d  2      
  movl %r8d, 0x1c(%r15,%rax,1)        #  1251  0x6493f  5      
  movl 0xffd1f7a(%rip), %ecx          #  1252  0x64944  6      
  movl %eax, %eax                     #  1253  0x6494a  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1254  0x6494c  9      
  nop                                 #  1255  0x64955  1      
  movl %eax, %eax                     #  1256  0x64956  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1257  0x64958  9      
  testl %ecx, %edx                    #  1258  0x64961  2      
  je .L_655c0                         #  1259  0x64963  6      
  leal 0x130(,%r8,4), %edx            #  1260  0x64969  8      
  xorl %ecx, %ecx                     #  1261  0x64971  2      
  nop                                 #  1262  0x64973  1      
  cmpl $0x1f, %r8d                    #  1263  0x64974  4      
  movslq %edx, %rdx                   #  1264  0x64978  3      
  movl %edx, %edx                     #  1265  0x6497b  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1266  0x6497d  8      
  je .L_64f60                         #  1267  0x64985  6      
  shrl $0x1, %r8d                     #  1268  0x6498b  3      
  movb $0x19, %cl                     #  1269  0x6498e  2      
  subl %r8d, %ecx                     #  1270  0x64990  3      
  nop                                 #  1271  0x64993  1      
.L_64f60:                             #        0x64994  0      
  movl %esi, %edi                     #  1272  0x64994  2      
  shll %cl, %edi                      #  1273  0x64996  2      
  jmpq .L_64fc0                       #  1274  0x64998  5      
  nop                                 #  1275  0x6499d  1      
  nop                                 #  1276  0x6499e  1      
.L_64f80:                             #        0x6499f  0      
  movl %edi, %ecx                     #  1277  0x6499f  2      
  shrl $0x1f, %ecx                    #  1278  0x649a1  3      
  addl $0x4, %ecx                     #  1279  0x649a4  3      
  shll $0x2, %ecx                     #  1280  0x649a7  3      
  leal (%rcx,%rdx,1), %r9d            #  1281  0x649aa  4      
  movslq %ecx, %rcx                   #  1282  0x649ae  3      
  leaq (%rdx,%rcx,1), %rcx            #  1283  0x649b1  4      
  movl %ecx, %ecx                     #  1284  0x649b5  2      
  movl (%r15,%rcx,1), %r8d            #  1285  0x649b7  4      
  testq %r8, %r8                      #  1286  0x649bb  3      
  nop                                 #  1287  0x649be  1      
  je .L_65620                         #  1288  0x649bf  6      
  addl %edi, %edi                     #  1289  0x649c5  2      
  movq %r8, %rdx                      #  1290  0x649c7  3      
  nop                                 #  1291  0x649ca  1      
  nop                                 #  1292  0x649cb  1      
.L_64fc0:                             #        0x649cc  0      
  movl %edx, %edx                     #  1293  0x649cc  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1294  0x649ce  5      
  andl $0xfffffff8, %ecx              #  1295  0x649d3  6      
  cmpl %ecx, %esi                     #  1296  0x649d9  2      
  jne .L_64f80                        #  1297  0x649db  6      
  movl 0xffd1ee9(%rip), %esi          #  1298  0x649e1  6      
  movl %edx, %edx                     #  1299  0x649e7  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1300  0x649e9  5      
  cmpl %edx, %esi                     #  1301  0x649ee  2      
  nop                                 #  1302  0x649f0  1      
  ja .L_64a60                         #  1303  0x649f1  6      
  cmpl %ecx, %esi                     #  1304  0x649f7  2      
  ja .L_64a60                         #  1305  0x649f9  6      
  movl %ecx, %ecx                     #  1306  0x649ff  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1307  0x64a01  5      
  movl %edx, %edx                     #  1308  0x64a06  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1309  0x64a08  5      
  nop                                 #  1310  0x64a0d  1      
  movl %eax, %eax                     #  1311  0x64a0e  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1312  0x64a10  5      
  movl %eax, %eax                     #  1313  0x64a15  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1314  0x64a17  5      
  movl %eax, %eax                     #  1315  0x64a1c  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1316  0x64a1e  9      
  jmpq .L_642e0                       #  1317  0x64a27  5      
  xchgw %ax, %ax                      #  1318  0x64a2c  3      
.L_65020:                             #        0x64a2f  0      
  movl %edx, %ecx                     #  1319  0x64a2f  2      
  xorl %r10d, %r10d                   #  1320  0x64a31  3      
  movl $0x1, %r8d                     #  1321  0x64a34  6      
  shrl $0x8, %ecx                     #  1322  0x64a3a  3      
  testl %ecx, %ecx                    #  1323  0x64a3d  2      
  je .L_65080                         #  1324  0x64a3f  6      
  cmpl $0xffff, %ecx                  #  1325  0x64a45  6      
  movl $0x80000000, %r8d              #  1326  0x64a4b  6      
  xchgw %ax, %ax                      #  1327  0x64a51  3      
  movb $0x1f, %r10b                   #  1328  0x64a54  3      
  ja .L_65080                         #  1329  0x64a57  6      
  bsrl %ecx, %ecx                     #  1330  0x64a5d  3      
  movl $0x1f, %r8d                    #  1331  0x64a60  6      
  movl %edx, %r10d                    #  1332  0x64a66  3      
  xorl $0x1f, %ecx                    #  1333  0x64a69  3      
  subl %ecx, %r8d                     #  1334  0x64a6c  3      
  leal 0x7(%r8), %ecx                 #  1335  0x64a6f  4      
  shrl %cl, %r10d                     #  1336  0x64a73  3      
  xchgw %ax, %ax                      #  1337  0x64a76  3      
  andl $0x1, %r10d                    #  1338  0x64a79  4      
  leal (%r10,%r8,2), %r10d            #  1339  0x64a7d  4      
  movl $0x1, %r8d                     #  1340  0x64a81  6      
  movl %r10d, %ecx                    #  1341  0x64a87  3      
  shll %cl, %r8d                      #  1342  0x64a8a  3      
  nop                                 #  1343  0x64a8d  1      
.L_65080:                             #        0x64a8e  0      
  movl %eax, %eax                     #  1344  0x64a8e  2      
  movl %r10d, 0x1c(%r15,%rax,1)       #  1345  0x64a90  5      
  movl 0xffd1e29(%rip), %ecx          #  1346  0x64a95  6      
  movl %eax, %eax                     #  1347  0x64a9b  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1348  0x64a9d  9      
  nop                                 #  1349  0x64aa6  1      
  movl %eax, %eax                     #  1350  0x64aa7  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1351  0x64aa9  9      
  testl %ecx, %r8d                    #  1352  0x64ab2  3      
  jne .L_65340                        #  1353  0x64ab5  6      
  leal 0x130(,%r10,4), %r10d          #  1354  0x64abb  8      
  orl %r8d, %ecx                      #  1355  0x64ac3  3      
  nop                                 #  1356  0x64ac6  1      
  movl %ecx, 0xffd1df7(%rip)          #  1357  0x64ac7  6      
  movslq %r10d, %rdx                  #  1358  0x64acd  3      
  addl $0x100368c0, %r10d             #  1359  0x64ad0  7      
  movl %edx, %edx                     #  1360  0x64ad7  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1361  0x64ad9  8      
  nop                                 #  1362  0x64ae1  1      
  movl %eax, %eax                     #  1363  0x64ae2  2      
  movl %r10d, 0x18(%r15,%rax,1)       #  1364  0x64ae4  5      
  movl %eax, %eax                     #  1365  0x64ae9  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1366  0x64aeb  5      
  movl %eax, %eax                     #  1367  0x64af0  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1368  0x64af2  5      
  jmpq .L_64660                       #  1369  0x64af7  5      
  nop                                 #  1370  0x64afc  1      
.L_65100:                             #        0x64afd  0      
  movl %r9d, %r9d                     #  1371  0x64afd  3      
  movl 0x8(%r15,%r9,1), %ecx          #  1372  0x64b00  5      
  cmpl %ecx, 0xffd1dc5(%rip)          #  1373  0x64b05  6      
  jbe .L_649a0                        #  1374  0x64b0b  6      
  jmpq .L_64a60                       #  1375  0x64b11  5      
  nop                                 #  1376  0x64b16  1      
.L_65120:                             #        0x64b17  0      
  movl %eax, %eax                     #  1377  0x64b17  2      
  movl 0x14(%r15,%rax,1), %r8d        #  1378  0x64b19  5      
  leal 0x14(%rax), %r9d               #  1379  0x64b1e  4      
  testq %r8, %r8                      #  1380  0x64b22  3      
  jne .L_65180                        #  1381  0x64b25  6      
  jmpq .L_656e0                       #  1382  0x64b2b  5      
  nop                                 #  1383  0x64b30  1      
.L_65140:                             #        0x64b31  0      
  leal 0x14(%r8), %r9d                #  1384  0x64b31  4      
  nop                                 #  1385  0x64b35  1      
  nop                                 #  1386  0x64b36  1      
.L_65160:                             #        0x64b37  0      
  movq %rcx, %r8                      #  1387  0x64b37  3      
  nop                                 #  1388  0x64b3a  1      
  nop                                 #  1389  0x64b3b  1      
.L_65180:                             #        0x64b3c  0      
  movl %r8d, %r8d                     #  1390  0x64b3c  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1391  0x64b3f  5      
  testq %rcx, %rcx                    #  1392  0x64b44  3      
  jne .L_65140                        #  1393  0x64b47  6      
  movl %r8d, %r8d                     #  1394  0x64b4d  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1395  0x64b50  5      
  testq %rcx, %rcx                    #  1396  0x64b55  3      
  je .L_651c0                         #  1397  0x64b58  6      
  leal 0x10(%r8), %r9d                #  1398  0x64b5e  4      
  xchgw %ax, %ax                      #  1399  0x64b62  3      
  jmpq .L_65160                       #  1400  0x64b65  5      
  nop                                 #  1401  0x64b6a  1      
  nop                                 #  1402  0x64b6b  1      
.L_651c0:                             #        0x64b6c  0      
  cmpl %r9d, %edi                     #  1403  0x64b6c  3      
  ja .L_64a60                         #  1404  0x64b6f  6      
  movl %r9d, %r9d                     #  1405  0x64b75  3      
  movl $0x0, (%r15,%r9,1)             #  1406  0x64b78  8      
  jmpq .L_64820                       #  1407  0x64b80  5      
  nop                                 #  1408  0x64b85  1      
.L_651e0:                             #        0x64b86  0      
  movl %esi, %esi                     #  1409  0x64b86  2      
  movl 0x14(%r15,%rsi,1), %r8d        #  1410  0x64b88  5      
  leal 0x14(%rsi), %r9d               #  1411  0x64b8d  4      
  testq %r8, %r8                      #  1412  0x64b91  3      
  jne .L_65240                        #  1413  0x64b94  6      
  jmpq .L_65700                       #  1414  0x64b9a  5      
  nop                                 #  1415  0x64b9f  1      
.L_65200:                             #        0x64ba0  0      
  leal 0x14(%r8), %r9d                #  1416  0x64ba0  4      
  nop                                 #  1417  0x64ba4  1      
  nop                                 #  1418  0x64ba5  1      
.L_65220:                             #        0x64ba6  0      
  movq %rcx, %r8                      #  1419  0x64ba6  3      
  nop                                 #  1420  0x64ba9  1      
  nop                                 #  1421  0x64baa  1      
.L_65240:                             #        0x64bab  0      
  movl %r8d, %r8d                     #  1422  0x64bab  3      
  movl 0x14(%r15,%r8,1), %ecx         #  1423  0x64bae  5      
  testq %rcx, %rcx                    #  1424  0x64bb3  3      
  jne .L_65200                        #  1425  0x64bb6  6      
  movl %r8d, %r8d                     #  1426  0x64bbc  3      
  movl 0x10(%r15,%r8,1), %ecx         #  1427  0x64bbf  5      
  testq %rcx, %rcx                    #  1428  0x64bc4  3      
  je .L_65280                         #  1429  0x64bc7  6      
  leal 0x10(%r8), %r9d                #  1430  0x64bcd  4      
  xchgw %ax, %ax                      #  1431  0x64bd1  3      
  jmpq .L_65220                       #  1432  0x64bd4  5      
  nop                                 #  1433  0x64bd9  1      
  nop                                 #  1434  0x64bda  1      
.L_65280:                             #        0x64bdb  0      
  cmpl %r9d, %edi                     #  1435  0x64bdb  3      
  ja .L_64a60                         #  1436  0x64bde  6      
  movl %r9d, %r9d                     #  1437  0x64be4  3      
  movl $0x0, (%r15,%r9,1)             #  1438  0x64be7  8      
  jmpq .L_64520                       #  1439  0x64bef  5      
  nop                                 #  1440  0x64bf4  1      
.L_652a0:                             #        0x64bf5  0      
  testq %r8, %r8                      #  1441  0x64bf5  3      
  movl %r9d, %r9d                     #  1442  0x64bf8  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1443  0x64bfb  8      
  jne .L_648a0                        #  1444  0x64c03  6      
  movl $0xfffffffe, %edi              #  1445  0x64c09  5      
  roll %cl, %edi                      #  1446  0x64c0e  2      
  nop                                 #  1447  0x64c10  1      
  andl %edi, 0xffd1cad(%rip)          #  1448  0x64c11  6      
  jmpq .L_64920                       #  1449  0x64c17  5      
  nop                                 #  1450  0x64c1c  1      
  nop                                 #  1451  0x64c1d  1      
.L_652e0:                             #        0x64c1e  0      
  testq %r8, %r8                      #  1452  0x64c1e  3      
  movl %r9d, %r9d                     #  1453  0x64c21  3      
  movl %r8d, 0x100368c0(%r15,%r9,1)   #  1454  0x64c24  8      
  jne .L_645a0                        #  1455  0x64c2c  6      
  movl $0xfffffffe, %r8d              #  1456  0x64c32  6      
  roll %cl, %r8d                      #  1457  0x64c38  3      
  nop                                 #  1458  0x64c3b  1      
  andl %r8d, 0xffd1c81(%rip)          #  1459  0x64c3c  7      
  jmpq .L_64620                       #  1460  0x64c43  5      
  nop                                 #  1461  0x64c48  1      
  nop                                 #  1462  0x64c49  1      
.L_65320:                             #        0x64c4a  0      
  movl %esi, %esi                     #  1463  0x64c4a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  1464  0x64c4c  5      
  cmpl %edx, 0xffd1c79(%rip)          #  1465  0x64c51  6      
  jbe .L_642c0                        #  1466  0x64c57  6      
  jmpq .L_64a60                       #  1467  0x64c5d  5      
  nop                                 #  1468  0x64c62  1      
.L_65340:                             #        0x64c63  0      
  leal 0x130(,%r10,4), %ecx           #  1469  0x64c63  8      
  movslq %ecx, %rcx                   #  1470  0x64c6b  3      
  movl %ecx, %ecx                     #  1471  0x64c6e  2      
  movl 0x100368c0(%r15,%rcx,1), %r8d  #  1472  0x64c70  8      
  xorl %ecx, %ecx                     #  1473  0x64c78  2      
  cmpl $0x1f, %r10d                   #  1474  0x64c7a  4      
  nop                                 #  1475  0x64c7e  1      
  je .L_65380                         #  1476  0x64c7f  6      
  shrl $0x1, %r10d                    #  1477  0x64c85  3      
  movb $0x19, %cl                     #  1478  0x64c88  2      
  subl %r10d, %ecx                    #  1479  0x64c8a  3      
  nop                                 #  1480  0x64c8d  1      
  nop                                 #  1481  0x64c8e  1      
.L_65380:                             #        0x64c8f  0      
  movl %edx, %r9d                     #  1482  0x64c8f  3      
  shll %cl, %r9d                      #  1483  0x64c92  3      
  jmpq .L_653e0                       #  1484  0x64c95  5      
  nop                                 #  1485  0x64c9a  1      
  nop                                 #  1486  0x64c9b  1      
.L_653a0:                             #        0x64c9c  0      
  movl %r9d, %ecx                     #  1487  0x64c9c  3      
  shrl $0x1f, %ecx                    #  1488  0x64c9f  3      
  addl $0x4, %ecx                     #  1489  0x64ca2  3      
  shll $0x2, %ecx                     #  1490  0x64ca5  3      
  leal (%rcx,%r8,1), %r11d            #  1491  0x64ca8  4      
  movslq %ecx, %rcx                   #  1492  0x64cac  3      
  leaq (%r8,%rcx,1), %rcx             #  1493  0x64caf  4      
  movl %ecx, %ecx                     #  1494  0x64cb3  2      
  movl (%r15,%rcx,1), %r10d           #  1495  0x64cb5  4      
  testq %r10, %r10                    #  1496  0x64cb9  3      
  je .L_656a0                         #  1497  0x64cbc  6      
  addl %r9d, %r9d                     #  1498  0x64cc2  3      
  movq %r10, %r8                      #  1499  0x64cc5  3      
  nop                                 #  1500  0x64cc8  1      
  nop                                 #  1501  0x64cc9  1      
.L_653e0:                             #        0x64cca  0      
  movl %r8d, %r8d                     #  1502  0x64cca  3      
  movl 0x4(%r15,%r8,1), %ecx          #  1503  0x64ccd  5      
  andl $0xfffffff8, %ecx              #  1504  0x64cd2  6      
  cmpl %ecx, %edx                     #  1505  0x64cd8  2      
  jne .L_653a0                        #  1506  0x64cda  6      
  cmpl %r8d, %edi                     #  1507  0x64ce0  3      
  movl %r8d, %r8d                     #  1508  0x64ce3  3      
  movl 0x8(%r15,%r8,1), %edx          #  1509  0x64ce6  5      
  ja .L_64a60                         #  1510  0x64ceb  6      
  cmpl %edx, %edi                     #  1511  0x64cf1  2      
  ja .L_64a60                         #  1512  0x64cf3  6      
  movl %edx, %edx                     #  1513  0x64cf9  2      
  movl %eax, 0xc(%r15,%rdx,1)         #  1514  0x64cfb  5      
  movl %r8d, %r8d                     #  1515  0x64d00  3      
  movl %eax, 0x8(%r15,%r8,1)          #  1516  0x64d03  5      
  movl %eax, %eax                     #  1517  0x64d08  2      
  movl %r8d, 0xc(%r15,%rax,1)         #  1518  0x64d0a  5      
  xchgw %ax, %ax                      #  1519  0x64d0f  3      
  movl %eax, %eax                     #  1520  0x64d12  2      
  movl %edx, 0x8(%r15,%rax,1)         #  1521  0x64d14  5      
  movl %eax, %eax                     #  1522  0x64d19  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1523  0x64d1b  9      
  jmpq .L_64660                       #  1524  0x64d24  5      
  nop                                 #  1525  0x64d29  1      
.L_65440:                             #        0x64d2a  0      
  movl %edi, %edi                     #  1526  0x64d2a  2      
  movl 0x8(%r15,%rdi,1), %edx         #  1527  0x64d2c  5      
  cmpl %edx, 0xffd1b99(%rip)          #  1528  0x64d31  6      
  jbe .L_64c00                        #  1529  0x64d37  6      
  jmpq .L_64a60                       #  1530  0x64d3d  5      
  nop                                 #  1531  0x64d42  1      
.L_65460:                             #        0x64d43  0      
  movl %r10d, %r10d                   #  1532  0x64d43  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1533  0x64d46  5      
  jmpq .L_64880                       #  1534  0x64d4b  5      
  nop                                 #  1535  0x64d50  1      
  nop                                 #  1536  0x64d51  1      
.L_65480:                             #        0x64d52  0      
  movl 0xffd1b78(%rip), %eax          #  1537  0x64d52  6      
  testq %rax, %rax                    #  1538  0x64d58  3      
  je .L_654a0                         #  1539  0x64d5b  6      
  cmpl %eax, %edi                     #  1540  0x64d61  2      
  jae .L_654c0                        #  1541  0x64d63  6      
  xchgw %ax, %ax                      #  1542  0x64d69  3      
  nop                                 #  1543  0x64d6c  1      
.L_654a0:                             #        0x64d6d  0      
  movl %edi, 0xffd1b5d(%rip)          #  1544  0x64d6d  6      
  nop                                 #  1545  0x64d73  1      
  nop                                 #  1546  0x64d74  1      
.L_654c0:                             #        0x64d75  0      
  movl 0xffd1b15(%rip), %eax          #  1547  0x64d75  6      
  movl %edi, 0xffd1d03(%rip)          #  1548  0x64d7b  6      
  movl $0x100368e8, %edx              #  1549  0x64d81  5      
  movl %r12d, 0xffd1cfb(%rip)         #  1550  0x64d86  7      
  nop                                 #  1551  0x64d8d  1      
  movl $0x1, 0xffd1cf8(%rip)          #  1552  0x64d8e  10     
  movl $0xfff, 0xffd1b3e(%rip)        #  1553  0x64d98  10     
  movl %eax, 0xffd1b3c(%rip)          #  1554  0x64da2  6      
  nop                                 #  1555  0x64da8  1      
.L_65500:                             #        0x64da9  0      
  movl %edx, %eax                     #  1556  0x64da9  2      
  addl $0x8, %edx                     #  1557  0x64dab  3      
  cmpl $0x100369e8, %edx              #  1558  0x64dae  6      
  movl %eax, %eax                     #  1559  0x64db4  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1560  0x64db6  5      
  movl %eax, %eax                     #  1561  0x64dbb  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1562  0x64dbd  5      
  jne .L_65500                        #  1563  0x64dc2  6      
  movl %edi, %edx                     #  1564  0x64dc8  2      
  xorl %eax, %eax                     #  1565  0x64dca  2      
  nop                                 #  1566  0x64dcc  1      
  andl $0x7, %edx                     #  1567  0x64dcd  3      
  je .L_65540                         #  1568  0x64dd0  6      
  movl %edx, %eax                     #  1569  0x64dd6  2      
  negl %eax                           #  1570  0x64dd8  2      
  andl $0x7, %eax                     #  1571  0x64dda  3      
  nop                                 #  1572  0x64ddd  1      
  nop                                 #  1573  0x64dde  1      
.L_65540:                             #        0x64ddf  0      
  subl $0x28, %r12d                   #  1574  0x64ddf  4      
  leal (%rax,%rdi,1), %edi            #  1575  0x64de3  3      
  subl %eax, %r12d                    #  1576  0x64de6  3      
  movl %r12d, %eax                    #  1577  0x64de9  3      
  movl %r12d, 0xffd1ad9(%rip)         #  1578  0x64dec  7      
  movl %edi, 0xffd1adf(%rip)          #  1579  0x64df3  6      
  orl $0x1, %eax                      #  1580  0x64df9  3      
  nop                                 #  1581  0x64dfc  1      
  movl %edi, %edi                     #  1582  0x64dfd  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  1583  0x64dff  5      
  leal (%r12,%rdi,1), %edi            #  1584  0x64e04  4      
  movl %edi, %edi                     #  1585  0x64e08  2      
  movl $0x28, 0x4(%r15,%rdi,1)        #  1586  0x64e0a  9      
  movl 0xffd1a87(%rip), %eax          #  1587  0x64e13  6      
  nop                                 #  1588  0x64e19  1      
  movl %eax, 0xffd1abc(%rip)          #  1589  0x64e1a  6      
  jmpq .L_642e0                       #  1590  0x64e20  5      
  nop                                 #  1591  0x64e25  1      
  nop                                 #  1592  0x64e26  1      
.L_655a0:                             #        0x64e27  0      
  movl %r10d, %r10d                   #  1593  0x64e27  3      
  movl %r8d, 0x10(%r15,%r10,1)        #  1594  0x64e2a  5      
  jmpq .L_64580                       #  1595  0x64e2f  5      
  nop                                 #  1596  0x64e34  1      
  nop                                 #  1597  0x64e35  1      
.L_655c0:                             #        0x64e36  0      
  leal 0x130(,%r8,4), %r8d            #  1598  0x64e36  8      
  orl %ecx, %edx                      #  1599  0x64e3e  2      
  movl %edx, 0xffd1a7e(%rip)          #  1600  0x64e40  6      
  movslq %r8d, %rdx                   #  1601  0x64e46  3      
  addl $0x100368c0, %r8d              #  1602  0x64e49  7      
  nop                                 #  1603  0x64e50  1      
  movl %edx, %edx                     #  1604  0x64e51  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1605  0x64e53  8      
  movl %eax, %eax                     #  1606  0x64e5b  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1607  0x64e5d  5      
  movl %eax, %eax                     #  1608  0x64e62  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1609  0x64e64  5      
  movl %eax, %eax                     #  1610  0x64e69  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1611  0x64e6b  5      
  nop                                 #  1612  0x64e70  1      
  jmpq .L_642e0                       #  1613  0x64e71  5      
  nop                                 #  1614  0x64e76  1      
  nop                                 #  1615  0x64e77  1      
.L_65620:                             #        0x64e78  0      
  cmpl %r9d, 0xffd1a51(%rip)          #  1616  0x64e78  7      
  ja .L_64a60                         #  1617  0x64e7f  6      
  movl %ecx, %ecx                     #  1618  0x64e85  2      
  movl %eax, (%r15,%rcx,1)            #  1619  0x64e87  4      
  movl %eax, %eax                     #  1620  0x64e8b  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1621  0x64e8d  5      
  nop                                 #  1622  0x64e92  1      
  movl %eax, %eax                     #  1623  0x64e93  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1624  0x64e95  5      
  movl %eax, %eax                     #  1625  0x64e9a  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1626  0x64e9c  5      
  jmpq .L_642e0                       #  1627  0x64ea1  5      
  nop                                 #  1628  0x64ea6  1      
.L_65660:                             #        0x64ea7  0      
  nop                                 #  1629  0x64ea7  1      
  nop                                 #  1630  0x64ea8  1      
  callq .__errno                      #  1631  0x64ea9  5      
  movl %eax, %eax                     #  1632  0x64eae  2      
  movl %eax, %eax                     #  1633  0x64eb0  2      
  movl $0xc, (%r15,%rax,1)            #  1634  0x64eb2  8      
  xorl %eax, %eax                     #  1635  0x64eba  2      
  jmpq .L_63a00                       #  1636  0x64ebc  5      
  nop                                 #  1637  0x64ec1  1      
.L_656a0:                             #        0x64ec2  0      
  cmpl %r11d, 0xffd1a07(%rip)         #  1638  0x64ec2  7      
  ja .L_64a60                         #  1639  0x64ec9  6      
  movl %ecx, %ecx                     #  1640  0x64ecf  2      
  movl %eax, (%r15,%rcx,1)            #  1641  0x64ed1  4      
  movl %eax, %eax                     #  1642  0x64ed5  2      
  movl %r8d, 0x18(%r15,%rax,1)        #  1643  0x64ed7  5      
  nop                                 #  1644  0x64edc  1      
  movl %eax, %eax                     #  1645  0x64edd  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1646  0x64edf  5      
  movl %eax, %eax                     #  1647  0x64ee4  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1648  0x64ee6  5      
  jmpq .L_64660                       #  1649  0x64eeb  5      
  nop                                 #  1650  0x64ef0  1      
.L_656e0:                             #        0x64ef1  0      
  movl %eax, %eax                     #  1651  0x64ef1  2      
  movl 0x10(%r15,%rax,1), %r8d        #  1652  0x64ef3  5      
  leal 0x10(%rax), %r9d               #  1653  0x64ef8  4      
  testq %r8, %r8                      #  1654  0x64efc  3      
  jne .L_65180                        #  1655  0x64eff  6      
  jmpq .L_64820                       #  1656  0x64f05  5      
  nop                                 #  1657  0x64f0a  1      
.L_65700:                             #        0x64f0b  0      
  movl %esi, %esi                     #  1658  0x64f0b  2      
  movl 0x10(%r15,%rsi,1), %r8d        #  1659  0x64f0d  5      
  leal 0x10(%rsi), %r9d               #  1660  0x64f12  4      
  testq %r8, %r8                      #  1661  0x64f16  3      
  jne .L_65240                        #  1662  0x64f19  6      
  jmpq .L_64520                       #  1663  0x64f1f  5      
  nop                                 #  1664  0x64f24  1      
.L_65720:                             #        0x64f25  0      
  movl %esi, %ebx                     #  1665  0x64f25  2      
  shrl $0x8, %ebx                     #  1666  0x64f27  3      
  testl %ebx, %ebx                    #  1667  0x64f2a  2      
  jne .L_65920                        #  1668  0x64f2c  6      
  movl $0x1, %edx                     #  1669  0x64f32  5      
  xorl %ecx, %ecx                     #  1670  0x64f37  2      
  nop                                 #  1671  0x64f39  1      
.L_65740:                             #        0x64f3a  0      
  movl %eax, %eax                     #  1672  0x64f3a  2      
  movl %ecx, 0x1c(%r15,%rax,1)        #  1673  0x64f3c  5      
  movl 0xffd197d(%rip), %ebx          #  1674  0x64f41  6      
  movl %eax, %eax                     #  1675  0x64f47  2      
  movl $0x0, 0x14(%r15,%rax,1)        #  1676  0x64f49  9      
  nop                                 #  1677  0x64f52  1      
  movl %eax, %eax                     #  1678  0x64f53  2      
  movl $0x0, 0x10(%r15,%rax,1)        #  1679  0x64f55  9      
  testl %ebx, %edx                    #  1680  0x64f5e  2      
  je .L_658c0                         #  1681  0x64f60  6      
  leal 0x130(,%rcx,4), %edx           #  1682  0x64f66  7      
  xorl %ebx, %ebx                     #  1683  0x64f6d  2      
  cmpl $0x1f, %ecx                    #  1684  0x64f6f  3      
  nop                                 #  1685  0x64f72  1      
  movslq %edx, %rdx                   #  1686  0x64f73  3      
  movl %edx, %edx                     #  1687  0x64f76  2      
  movl 0x100368c0(%r15,%rdx,1), %edx  #  1688  0x64f78  8      
  je .L_657a0                         #  1689  0x64f80  6      
  shrl $0x1, %ecx                     #  1690  0x64f86  2      
  movb $0x19, %bl                     #  1691  0x64f88  2      
  subl %ecx, %ebx                     #  1692  0x64f8a  2      
  nop                                 #  1693  0x64f8c  1      
.L_657a0:                             #        0x64f8d  0      
  movl %ebx, %ecx                     #  1694  0x64f8d  2      
  movl %esi, %r8d                     #  1695  0x64f8f  3      
  shll %cl, %r8d                      #  1696  0x64f92  3      
  movl %r8d, %ebx                     #  1697  0x64f95  3      
  jmpq .L_65800                       #  1698  0x64f98  5      
  nop                                 #  1699  0x64f9d  1      
  nop                                 #  1700  0x64f9e  1      
.L_657c0:                             #        0x64f9f  0      
  movl %ebx, %ecx                     #  1701  0x64f9f  2      
  shrl $0x1f, %ecx                    #  1702  0x64fa1  3      
  addl $0x4, %ecx                     #  1703  0x64fa4  3      
  shll $0x2, %ecx                     #  1704  0x64fa7  3      
  leal (%rcx,%rdx,1), %r9d            #  1705  0x64faa  4      
  movslq %ecx, %rcx                   #  1706  0x64fae  3      
  leaq (%rdx,%rcx,1), %rcx            #  1707  0x64fb1  4      
  movl %ecx, %ecx                     #  1708  0x64fb5  2      
  movl (%r15,%rcx,1), %r8d            #  1709  0x64fb7  4      
  testq %r8, %r8                      #  1710  0x64fbb  3      
  nop                                 #  1711  0x64fbe  1      
  je .L_65880                         #  1712  0x64fbf  6      
  addl %ebx, %ebx                     #  1713  0x64fc5  2      
  movq %r8, %rdx                      #  1714  0x64fc7  3      
  nop                                 #  1715  0x64fca  1      
  nop                                 #  1716  0x64fcb  1      
.L_65800:                             #        0x64fcc  0      
  movl %edx, %edx                     #  1717  0x64fcc  2      
  movl 0x4(%r15,%rdx,1), %ecx         #  1718  0x64fce  5      
  andl $0xfffffff8, %ecx              #  1719  0x64fd3  6      
  cmpl %ecx, %esi                     #  1720  0x64fd9  2      
  jne .L_657c0                        #  1721  0x64fdb  6      
  movl 0xffd18e9(%rip), %ebx          #  1722  0x64fe1  6      
  movl %edx, %edx                     #  1723  0x64fe7  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1724  0x64fe9  5      
  cmpl %edx, %ebx                     #  1725  0x64fee  2      
  nop                                 #  1726  0x64ff0  1      
  ja .L_64a60                         #  1727  0x64ff1  6      
  cmpl %ecx, %ebx                     #  1728  0x64ff7  2      
  ja .L_64a60                         #  1729  0x64ff9  6      
  movl %ecx, %ecx                     #  1730  0x64fff  2      
  movl %eax, 0xc(%r15,%rcx,1)         #  1731  0x65001  5      
  movl %edx, %edx                     #  1732  0x65006  2      
  movl %eax, 0x8(%r15,%rdx,1)         #  1733  0x65008  5      
  nop                                 #  1734  0x6500d  1      
  movl %eax, %eax                     #  1735  0x6500e  2      
  movl %edx, 0xc(%r15,%rax,1)         #  1736  0x65010  5      
  movl %eax, %eax                     #  1737  0x65015  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  1738  0x65017  5      
  movl %eax, %eax                     #  1739  0x6501c  2      
  movl $0x0, 0x18(%r15,%rax,1)        #  1740  0x6501e  9      
  leal 0x8(%rdi), %eax                #  1741  0x65027  3      
  nop                                 #  1742  0x6502a  1      
  jmpq .L_63a00                       #  1743  0x6502b  5      
  nop                                 #  1744  0x65030  1      
  nop                                 #  1745  0x65031  1      
.L_65880:                             #        0x65032  0      
  cmpl %r9d, 0xffd1897(%rip)          #  1746  0x65032  7      
  ja .L_64a60                         #  1747  0x65039  6      
  movl %ecx, %ecx                     #  1748  0x6503f  2      
  movl %eax, (%r15,%rcx,1)            #  1749  0x65041  4      
  movl %eax, %eax                     #  1750  0x65045  2      
  movl %edx, 0x18(%r15,%rax,1)        #  1751  0x65047  5      
  nop                                 #  1752  0x6504c  1      
  movl %eax, %eax                     #  1753  0x6504d  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1754  0x6504f  5      
  movl %eax, %eax                     #  1755  0x65054  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1756  0x65056  5      
  leal 0x8(%rdi), %eax                #  1757  0x6505b  3      
  jmpq .L_63a00                       #  1758  0x6505e  5      
  nop                                 #  1759  0x65063  1      
.L_658c0:                             #        0x65064  0      
  leal 0x130(,%rcx,4), %ecx           #  1760  0x65064  7      
  orl %ebx, %edx                      #  1761  0x6506b  2      
  movl %edx, 0xffd1851(%rip)          #  1762  0x6506d  6      
  movslq %ecx, %rdx                   #  1763  0x65073  3      
  addl $0x100368c0, %ecx              #  1764  0x65076  6      
  nop                                 #  1765  0x6507c  1      
  movl %edx, %edx                     #  1766  0x6507d  2      
  movl %eax, 0x100368c0(%r15,%rdx,1)  #  1767  0x6507f  8      
  movl %eax, %eax                     #  1768  0x65087  2      
  movl %ecx, 0x18(%r15,%rax,1)        #  1769  0x65089  5      
  movl %eax, %eax                     #  1770  0x6508e  2      
  movl %eax, 0xc(%r15,%rax,1)         #  1771  0x65090  5      
  movl %eax, %eax                     #  1772  0x65095  2      
  movl %eax, 0x8(%r15,%rax,1)         #  1773  0x65097  5      
  nop                                 #  1774  0x6509c  1      
  leal 0x8(%rdi), %eax                #  1775  0x6509d  3      
  jmpq .L_63a00                       #  1776  0x650a0  5      
  nop                                 #  1777  0x650a5  1      
  nop                                 #  1778  0x650a6  1      
.L_65920:                             #        0x650a7  0      
  cmpl $0xffff, %ebx                  #  1779  0x650a7  6      
  movl $0x80000000, %edx              #  1780  0x650ad  5      
  movl $0x1f, %ecx                    #  1781  0x650b2  5      
  ja .L_65740                         #  1782  0x650b7  6      
  bsrl %ebx, %ecx                     #  1783  0x650bd  3      
  movl $0x1f, %edx                    #  1784  0x650c0  5      
  movl %esi, %ebx                     #  1785  0x650c5  2      
  xorl $0x1f, %ecx                    #  1786  0x650c7  3      
  subl %ecx, %edx                     #  1787  0x650ca  2      
  leal 0x7(%rdx), %ecx                #  1788  0x650cc  3      
  shrl %cl, %ebx                      #  1789  0x650cf  2      
  movl %ebx, %ecx                     #  1790  0x650d1  2      
  andl $0x1, %ecx                     #  1791  0x650d3  3      
  leal (%rcx,%rdx,2), %ecx            #  1792  0x650d6  3      
  movl $0x1, %edx                     #  1793  0x650d9  5      
  shll %cl, %edx                      #  1794  0x650de  2      
  jmpq .L_65740                       #  1795  0x650e0  5      
  xchgw %ax, %ax                      #  1796  0x650e5  3      
.L_65960:                             #        0x650e8  0      
  movl %edx, %edx                     #  1797  0x650e8  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1798  0x650ea  5      
  cmpl %ecx, 0xffd17db(%rip)          #  1799  0x650ef  6      
  jbe .L_64e60                        #  1800  0x650f5  6      
  jmpq .L_64a60                       #  1801  0x650fb  5      
  nop                                 #  1802  0x65100  1      
.L_65980:                             #        0x65101  0      
  andl $0xfffffff8, %ebx              #  1803  0x65101  6      
  movl %ebx, %ecx                     #  1804  0x65107  2      
  shrl $0x3, %ecx                     #  1805  0x65109  3      
  cmpl $0x1f, %ecx                    #  1806  0x6510c  3      
  ja .L_65b00                         #  1807  0x6510f  6      
  movl %edx, %edx                     #  1808  0x65115  2      
  movl 0x8(%r15,%rdx,1), %r9d         #  1809  0x65117  5      
  leal 0x100368e8(,%rcx,8), %r10d     #  1810  0x6511c  8      
  movl %edx, %edx                     #  1811  0x65124  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1812  0x65126  5      
  cmpl %r10d, %r9d                    #  1813  0x6512b  3      
  jne .L_65ae0                        #  1814  0x6512e  6      
  nop                                 #  1815  0x65134  1      
  nop                                 #  1816  0x65135  1      
.L_659c0:                             #        0x65136  0      
  cmpl %r8d, %r9d                     #  1817  0x65136  3      
  je .L_65ac0                         #  1818  0x65139  6      
  cmpl %r10d, %r8d                    #  1819  0x6513f  3      
  jne .L_65aa0                        #  1820  0x65142  6      
  nop                                 #  1821  0x65148  1      
.L_659e0:                             #        0x65149  0      
  movl %r9d, %r9d                     #  1822  0x65149  3      
  movl %r8d, 0xc(%r15,%r9,1)          #  1823  0x6514c  5      
  movl %r8d, %r8d                     #  1824  0x65151  3      
  movl %r9d, 0x8(%r15,%r8,1)          #  1825  0x65154  5      
  nop                                 #  1826  0x65159  1      
  nop                                 #  1827  0x6515a  1      
.L_65a00:                             #        0x6515b  0      
  leal (%rbx,%rdx,1), %edx            #  1828  0x6515b  3      
  addl %ebx, %esi                     #  1829  0x6515e  2      
  movl %edx, %edx                     #  1830  0x65160  2      
  movl 0x4(%r15,%rdx,1), %ebx         #  1831  0x65162  5      
  jmpq .L_64e00                       #  1832  0x65167  5      
  nop                                 #  1833  0x6516c  1      
.L_65a20:                             #        0x6516d  0      
  addl 0xffd1759(%rip), %esi          #  1834  0x6516d  6      
  movl %eax, 0xffd175f(%rip)          #  1835  0x65173  6      
  movl %esi, 0xffd174d(%rip)          #  1836  0x65179  6      
  orl $0x1, %esi                      #  1837  0x6517f  3      
  movl %eax, %eax                     #  1838  0x65182  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1839  0x65184  5      
  leal 0x8(%rdi), %eax                #  1840  0x65189  3      
  nop                                 #  1841  0x6518c  1      
  jmpq .L_63a00                       #  1842  0x6518d  5      
  nop                                 #  1843  0x65192  1      
  nop                                 #  1844  0x65193  1      
.L_65a60:                             #        0x65194  0      
  addl 0xffd172e(%rip), %esi          #  1845  0x65194  6      
  movl %eax, 0xffd1734(%rip)          #  1846  0x6519a  6      
  movl %esi, %edx                     #  1847  0x651a0  2      
  movl %esi, 0xffd1720(%rip)          #  1848  0x651a2  6      
  orl $0x1, %edx                      #  1849  0x651a8  3      
  movl %eax, %eax                     #  1850  0x651ab  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1851  0x651ad  5      
  xchgw %ax, %ax                      #  1852  0x651b2  3      
  leal (%rsi,%rax,1), %eax            #  1853  0x651b5  3      
  movl %eax, %eax                     #  1854  0x651b8  2      
  movl %esi, (%r15,%rax,1)            #  1855  0x651ba  4      
  leal 0x8(%rdi), %eax                #  1856  0x651be  3      
  jmpq .L_63a00                       #  1857  0x651c1  5      
  nop                                 #  1858  0x651c6  1      
.L_65aa0:                             #        0x651c7  0      
  cmpl %r8d, 0xffd1702(%rip)          #  1859  0x651c7  7      
  ja .L_64a60                         #  1860  0x651ce  6      
  movl %r8d, %r8d                     #  1861  0x651d4  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1862  0x651d7  5      
  je .L_659e0                         #  1863  0x651dc  6      
  jmpq .L_64a60                       #  1864  0x651e2  5      
.L_65ac0:                             #        0x651e7  0      
  movl $0xfffffffe, %r8d              #  1865  0x651e7  6      
  roll %cl, %r8d                      #  1866  0x651ed  3      
  andl %r8d, 0xffd16c9(%rip)          #  1867  0x651f0  7      
  jmpq .L_65a00                       #  1868  0x651f7  5      
  nop                                 #  1869  0x651fc  1      
.L_65ae0:                             #        0x651fd  0      
  cmpl %r9d, 0xffd16cc(%rip)          #  1870  0x651fd  7      
  ja .L_64a60                         #  1871  0x65204  6      
  movl %r9d, %r9d                     #  1872  0x6520a  3      
  cmpl %edx, 0xc(%r15,%r9,1)          #  1873  0x6520d  5      
  je .L_659c0                         #  1874  0x65212  6      
  jmpq .L_64a60                       #  1875  0x65218  5      
.L_65b00:                             #        0x6521d  0      
  movl %edx, %edx                     #  1876  0x6521d  2      
  movl 0xc(%r15,%rdx,1), %r8d         #  1877  0x6521f  5      
  movl %edx, %edx                     #  1878  0x65224  2      
  movl 0x18(%r15,%rdx,1), %r9d        #  1879  0x65226  5      
  cmpl %r8d, %edx                     #  1880  0x6522b  3      
  je .L_65cc0                         #  1881  0x6522e  6      
  movl %edx, %edx                     #  1882  0x65234  2      
  movl 0x8(%r15,%rdx,1), %ecx         #  1883  0x65236  5      
  xchgw %ax, %ax                      #  1884  0x6523b  3      
  cmpl %ecx, 0xffd168c(%rip)          #  1885  0x6523e  6      
  ja .L_64a60                         #  1886  0x65244  6      
  movl %ecx, %ecx                     #  1887  0x6524a  2      
  cmpl %edx, 0xc(%r15,%rcx,1)         #  1888  0x6524c  5      
  jne .L_64a60                        #  1889  0x65251  6      
  nop                                 #  1890  0x65257  1      
  movl %r8d, %r8d                     #  1891  0x65258  3      
  cmpl %edx, 0x8(%r15,%r8,1)          #  1892  0x6525b  5      
  jne .L_64a60                        #  1893  0x65260  6      
  movl %ecx, %ecx                     #  1894  0x65266  2      
  movl %r8d, 0xc(%r15,%rcx,1)         #  1895  0x65268  5      
  movl %r8d, %r8d                     #  1896  0x6526d  3      
  movl %ecx, 0x8(%r15,%r8,1)          #  1897  0x65270  5      
  nop                                 #  1898  0x65275  1      
.L_65b60:                             #        0x65276  0      
  testq %r9, %r9                      #  1899  0x65276  3      
  je .L_65a00                         #  1900  0x65279  6      
  movl %edx, %edx                     #  1901  0x6527f  2      
  movl 0x1c(%r15,%rdx,1), %ecx        #  1902  0x65281  5      
  leal 0x130(,%rcx,4), %r10d          #  1903  0x65286  8      
  movslq %r10d, %r10                  #  1904  0x6528e  3      
  nop                                 #  1905  0x65291  1      
  movl %r10d, %r10d                   #  1906  0x65292  3      
  cmpl %edx, 0x100368c0(%r15,%r10,1)  #  1907  0x65295  8      
  je .L_65c80                         #  1908  0x6529d  6      
  cmpl %r9d, 0xffd1626(%rip)          #  1909  0x652a3  7      
  ja .L_64a60                         #  1910  0x652aa  6      
  xchgw %ax, %ax                      #  1911  0x652b0  3      
  movl %r9d, %r9d                     #  1912  0x652b3  3      
  cmpl %edx, 0x10(%r15,%r9,1)         #  1913  0x652b6  5      
  je .L_65c60                         #  1914  0x652bb  6      
  movl %r9d, %r9d                     #  1915  0x652c1  3      
  movl %r8d, 0x14(%r15,%r9,1)         #  1916  0x652c4  5      
  nop                                 #  1917  0x652c9  1      
.L_65bc0:                             #        0x652ca  0      
  testq %r8, %r8                      #  1918  0x652ca  3      
  je .L_65a00                         #  1919  0x652cd  6      
  nop                                 #  1920  0x652d3  1      
  nop                                 #  1921  0x652d4  1      
.L_65be0:                             #        0x652d5  0      
  movl 0xffd15f4(%rip), %r10d         #  1922  0x652d5  7      
  cmpl %r8d, %r10d                    #  1923  0x652dc  3      
  ja .L_64a60                         #  1924  0x652df  6      
  movl %edx, %edx                     #  1925  0x652e5  2      
  movl 0x10(%r15,%rdx,1), %ecx        #  1926  0x652e7  5      
  movl %r8d, %r8d                     #  1927  0x652ec  3      
  movl %r9d, 0x18(%r15,%r8,1)         #  1928  0x652ef  5      
  nop                                 #  1929  0x652f4  1      
  testq %rcx, %rcx                    #  1930  0x652f5  3      
  je .L_65c20                         #  1931  0x652f8  6      
  cmpl %ecx, %r10d                    #  1932  0x652fe  3      
  ja .L_64a60                         #  1933  0x65301  6      
  movl %r8d, %r8d                     #  1934  0x65307  3      
  movl %ecx, 0x10(%r15,%r8,1)         #  1935  0x6530a  5      
  movl %ecx, %ecx                     #  1936  0x6530f  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1937  0x65311  5      
  nop                                 #  1938  0x65316  1      
.L_65c20:                             #        0x65317  0      
  movl %edx, %edx                     #  1939  0x65317  2      
  movl 0x14(%r15,%rdx,1), %ecx        #  1940  0x65319  5      
  testq %rcx, %rcx                    #  1941  0x6531e  3      
  je .L_65a00                         #  1942  0x65321  6      
  cmpl %ecx, %r10d                    #  1943  0x65327  3      
  ja .L_64a60                         #  1944  0x6532a  6      
  nop                                 #  1945  0x65330  1      
  movl %r8d, %r8d                     #  1946  0x65331  3      
  movl %ecx, 0x14(%r15,%r8,1)         #  1947  0x65334  5      
  movl %ecx, %ecx                     #  1948  0x65339  2      
  movl %r8d, 0x18(%r15,%rcx,1)        #  1949  0x6533b  5      
  jmpq .L_65a00                       #  1950  0x65340  5      
  nop                                 #  1951  0x65345  1      
.L_65c60:                             #        0x65346  0      
  movl %r9d, %r9d                     #  1952  0x65346  3      
  movl %r8d, 0x10(%r15,%r9,1)         #  1953  0x65349  5      
  jmpq .L_65bc0                       #  1954  0x6534e  5      
  nop                                 #  1955  0x65353  1      
  nop                                 #  1956  0x65354  1      
.L_65c80:                             #        0x65355  0      
  testq %r8, %r8                      #  1957  0x65355  3      
  movl %r10d, %r10d                   #  1958  0x65358  3      
  movl %r8d, 0x100368c0(%r15,%r10,1)  #  1959  0x6535b  8      
  jne .L_65be0                        #  1960  0x65363  6      
  movl $0xfffffffe, %r8d              #  1961  0x65369  6      
  roll %cl, %r8d                      #  1962  0x6536f  3      
  nop                                 #  1963  0x65372  1      
  andl %r8d, 0xffd154a(%rip)          #  1964  0x65373  7      
  jmpq .L_65a00                       #  1965  0x6537a  5      
  nop                                 #  1966  0x6537f  1      
  nop                                 #  1967  0x65380  1      
.L_65cc0:                             #        0x65381  0      
  movl %edx, %edx                     #  1968  0x65381  2      
  movl 0x14(%r15,%rdx,1), %r8d        #  1969  0x65383  5      
  leal 0x14(%rdx), %ecx               #  1970  0x65388  3      
  testq %r8, %r8                      #  1971  0x6538b  3      
  jne .L_65d20                        #  1972  0x6538e  6      
  jmpq .L_65d60                       #  1973  0x65394  5      
  nop                                 #  1974  0x65399  1      
.L_65ce0:                             #        0x6539a  0      
  leal 0x14(%r8), %ecx                #  1975  0x6539a  4      
  nop                                 #  1976  0x6539e  1      
  nop                                 #  1977  0x6539f  1      
.L_65d00:                             #        0x653a0  0      
  movq %r10, %r8                      #  1978  0x653a0  3      
  nop                                 #  1979  0x653a3  1      
  nop                                 #  1980  0x653a4  1      
.L_65d20:                             #        0x653a5  0      
  movl %r8d, %r8d                     #  1981  0x653a5  3      
  movl 0x14(%r15,%r8,1), %r10d        #  1982  0x653a8  5      
  testq %r10, %r10                    #  1983  0x653ad  3      
  jne .L_65ce0                        #  1984  0x653b0  6      
  movl %r8d, %r8d                     #  1985  0x653b6  3      
  movl 0x10(%r15,%r8,1), %r10d        #  1986  0x653b9  5      
  testq %r10, %r10                    #  1987  0x653be  3      
  je .L_65d80                         #  1988  0x653c1  6      
  leal 0x10(%r8), %ecx                #  1989  0x653c7  4      
  xchgw %ax, %ax                      #  1990  0x653cb  3      
  jmpq .L_65d00                       #  1991  0x653ce  5      
  nop                                 #  1992  0x653d3  1      
  nop                                 #  1993  0x653d4  1      
.L_65d60:                             #        0x653d5  0      
  movl %edx, %edx                     #  1994  0x653d5  2      
  movl 0x10(%r15,%rdx,1), %r8d        #  1995  0x653d7  5      
  leal 0x10(%rdx), %ecx               #  1996  0x653dc  3      
  testq %r8, %r8                      #  1997  0x653df  3      
  jne .L_65d20                        #  1998  0x653e2  6      
  jmpq .L_65b60                       #  1999  0x653e8  5      
  nop                                 #  2000  0x653ed  1      
.L_65d80:                             #        0x653ee  0      
  cmpl %ecx, 0xffd14dc(%rip)          #  2001  0x653ee  6      
  ja .L_64a60                         #  2002  0x653f4  6      
  movl %ecx, %ecx                     #  2003  0x653fa  2      
  movl $0x0, (%r15,%rcx,1)            #  2004  0x653fc  8      
  jmpq .L_65b60                       #  2005  0x65404  5      
  nop                                 #  2006  0x65409  1      
                                                               
.size malloc, .-malloc

