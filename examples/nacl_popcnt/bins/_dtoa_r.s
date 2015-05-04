  .text
  .globl _dtoa_r
  .type _dtoa_r, @function

#! file-offset 0x78800
#! rip-offset  0x78800
#! capacity    8256 bytes

# Text                                  #  Line  RIP      Bytes  
._dtoa_r:                               #        0x78800  0      
  pushq %r14                            #  1     0x78800  3      
  movl %ecx, %ecx                       #  2     0x78803  2      
  movl %r8d, %r8d                       #  3     0x78805  3      
  movl %r9d, %r14d                      #  4     0x78808  3      
  pushq %r13                            #  5     0x7880b  3      
  pushq %r12                            #  6     0x7880e  3      
  pushq %rbx                            #  7     0x78811  2      
  movl %edi, %ebx                       #  8     0x78813  2      
  subl $0xc8, %esp                      #  9     0x78815  3      
  addq %r15, %rsp                       #  10    0x78818  3      
  movsd %xmm0, 0x8(%rsp)                #  11    0x7881b  6      
  movl %ebx, %ebx                       #  12    0x78821  2      
  movl 0x40(%r15,%rbx,1), %eax          #  13    0x78823  5      
  movl %esi, 0x50(%rsp)                 #  14    0x78828  4      
  movl %edx, 0x38(%rsp)                 #  15    0x7882c  4      
  movq %rcx, 0x58(%rsp)                 #  16    0x78830  5      
  movq 0x8(%rsp), %r13                  #  17    0x78835  5      
  testq %rax, %rax                      #  18    0x7883a  3      
  nop                                   #  19    0x7883d  1      
  je .L_788a0                           #  20    0x7883e  6      
  movl %ebx, %ebx                       #  21    0x78844  2      
  movl 0x44(%r15,%rbx,1), %edx          #  22    0x78846  5      
  movl %ebx, %ebx                       #  23    0x7884b  2      
  movl 0x40(%r15,%rbx,1), %esi          #  24    0x7884d  5      
  movl %ebx, %edi                       #  25    0x78852  2      
  movq %r8, 0x30(%rsp)                  #  26    0x78854  5      
  movl %eax, %eax                       #  27    0x78859  2      
  movl %edx, 0x4(%r15,%rax,1)           #  28    0x7885b  5      
  xchgw %ax, %ax                        #  29    0x78860  3      
  movl %ebx, %ebx                       #  30    0x78863  2      
  movl 0x44(%r15,%rbx,1), %ecx          #  31    0x78865  5      
  movl $0x1, %edx                       #  32    0x7886a  5      
  shll %cl, %edx                        #  33    0x7886f  2      
  movl %eax, %eax                       #  34    0x78871  2      
  movl %edx, 0x8(%r15,%rax,1)           #  35    0x78873  5      
  nop                                   #  36    0x78878  1      
  callq ._Bfree                         #  37    0x78879  5      
  movq 0x30(%rsp), %r8                  #  38    0x7887e  5      
  movl %ebx, %ebx                       #  39    0x78883  2      
  movl $0x0, 0x40(%r15,%rbx,1)          #  40    0x78885  9      
  nop                                   #  41    0x7888e  1      
  nop                                   #  42    0x7888f  1      
.L_788a0:                               #        0x78890  0      
  movq %r13, %r12                       #  43    0x78890  3      
  shrq $0x20, %r12                      #  44    0x78893  4      
  testl %r12d, %r12d                    #  45    0x78897  3      
  js .L_789a0                           #  46    0x7889a  6      
  movl %r8d, %r8d                       #  47    0x788a0  3      
  movl $0x0, (%r15,%r8,1)               #  48    0x788a3  8      
  nop                                   #  49    0x788ab  1      
.L_788c0:                               #        0x788ac  0      
  movl %r12d, %eax                      #  50    0x788ac  3      
  andl $0x7ff00000, %eax                #  51    0x788af  5      
  cmpl $0x7ff00000, %eax                #  52    0x788b4  5      
  je .L_78940                           #  53    0x788b9  6      
  movq %r13, 0x8(%rsp)                  #  54    0x788bf  5      
  xorpd %xmm2, %xmm2                    #  55    0x788c4  4      
  movsd 0x8(%rsp), %xmm1                #  56    0x788c8  6      
  xchgw %ax, %ax                        #  57    0x788ce  3      
  ucomisd %xmm2, %xmm1                  #  58    0x788d1  4      
  jne .L_789e0                          #  59    0x788d5  6      
  jp .L_789e0                           #  60    0x788db  6      
  movq 0x58(%rsp), %rdx                 #  61    0x788e1  5      
  testq %r14, %r14                      #  62    0x788e6  3      
  movl $0x100202fc, %eax                #  63    0x788e9  5      
  nop                                   #  64    0x788ee  1      
  movl %edx, %edx                       #  65    0x788ef  2      
  movl $0x1, (%r15,%rdx,1)              #  66    0x788f1  8      
  je .L_78920                           #  67    0x788f9  6      
  movl %r14d, %r14d                     #  68    0x788ff  3      
  movl $0x100202fd, (%r15,%r14,1)       #  69    0x78902  8      
  nop                                   #  70    0x7890a  1      
.L_78920:                               #        0x7890b  0      
  addl $0xc8, %esp                      #  71    0x7890b  3      
  addq %r15, %rsp                       #  72    0x7890e  3      
  popq %rbx                             #  73    0x78911  2      
  popq %r12                             #  74    0x78913  3      
  popq %r13                             #  75    0x78916  3      
  popq %r14                             #  76    0x78919  3      
  popq %r11                             #  77    0x7891c  3      
  andl $0xffffffe0, %r11d               #  78    0x7891f  7      
  addq %r15, %r11                       #  79    0x78926  3      
  jmpq %r11                             #  80    0x78929  3      
  nop                                   #  81    0x7892c  1      
.L_78940:                               #        0x7892d  0      
  movq 0x58(%rsp), %rax                 #  82    0x7892d  5      
  movq $0xfffffffffffff, %rdx           #  83    0x78932  10     
  testq %rdx, %r13                      #  84    0x7893c  3      
  movl $0x10024254, %edx                #  85    0x7893f  5      
  nop                                   #  86    0x78944  1      
  movl %eax, %eax                       #  87    0x78945  2      
  movl $0x270f, (%r15,%rax,1)           #  88    0x78947  8      
  movl $0x10024250, %eax                #  89    0x7894f  5      
  cmoveq %rdx, %rax                     #  90    0x78954  4      
  testq %r14, %r14                      #  91    0x78958  3      
  je .L_78920                           #  92    0x7895b  6      
  leal 0x3(%rax), %edx                  #  93    0x78961  3      
  leal 0x8(%rax), %ecx                  #  94    0x78964  3      
  xchgw %ax, %ax                        #  95    0x78967  3      
  movl %edx, %edx                       #  96    0x7896a  2      
  cmpb $0x0, (%r15,%rdx,1)              #  97    0x7896c  5      
  cmovneq %rcx, %rdx                    #  98    0x78971  4      
  movl %r14d, %r14d                     #  99    0x78975  3      
  movl %edx, (%r15,%r14,1)              #  100   0x78978  4      
  jmpq .L_78920                         #  101   0x7897c  5      
  nop                                   #  102   0x78981  1      
.L_789a0:                               #        0x78982  0      
  andl $0x7fffffff, %r12d               #  103   0x78982  7      
  andl $0xffffffff, %r13d               #  104   0x78989  7      
  movl %r8d, %r8d                       #  105   0x78990  3      
  movl $0x1, (%r15,%r8,1)               #  106   0x78993  8      
  movq %r12, %rax                       #  107   0x7899b  3      
  shlq $0x20, %rax                      #  108   0x7899e  4      
  orq %rax, %r13                        #  109   0x789a2  3      
  jmpq .L_788c0                         #  110   0x789a5  5      
  nop                                   #  111   0x789aa  1      
  nop                                   #  112   0x789ab  1      
.L_789e0:                               #        0x789ac  0      
  leal 0xbc(%rsp), %edx                 #  113   0x789ac  7      
  movapd %xmm1, %xmm0                   #  114   0x789b3  4      
  leal 0xb8(%rsp), %esi                 #  115   0x789b7  7      
  movl %ebx, %edi                       #  116   0x789be  2      
  movsd %xmm1, 0x20(%rsp)               #  117   0x789c0  6      
  movsd %xmm2, 0x10(%rsp)               #  118   0x789c6  6      
  nop                                   #  119   0x789cc  1      
  nop                                   #  120   0x789cd  1      
  callq .__d2b                          #  121   0x789ce  5      
  movl %r12d, %edx                      #  122   0x789d3  3      
  movl %eax, %eax                       #  123   0x789d6  2      
  shrl $0x14, %edx                      #  124   0x789d8  3      
  movq %rax, 0x60(%rsp)                 #  125   0x789db  5      
  andl $0x7ff, %edx                     #  126   0x789e0  6      
  movsd 0x20(%rsp), %xmm1               #  127   0x789e6  6      
  movsd 0x10(%rsp), %xmm2               #  128   0x789ec  6      
  nop                                   #  129   0x789f2  1      
  jne .L_78fc0                          #  130   0x789f3  6      
  movl 0xbc(%rsp), %eax                 #  131   0x789f9  7      
  movl 0xb8(%rsp), %esi                 #  132   0x78a00  7      
  addl %eax, %esi                       #  133   0x78a07  2      
  leal 0x432(%rsi), %edx                #  134   0x78a09  6      
  cmpl $0x20, %edx                      #  135   0x78a0f  3      
  nop                                   #  136   0x78a12  1      
  jle .L_799e0                          #  137   0x78a13  6      
  movl $0x40, %ecx                      #  138   0x78a19  5      
  subl %edx, %ecx                       #  139   0x78a1e  2      
  shll %cl, %r12d                       #  140   0x78a20  3      
  leal 0x412(%rsi), %ecx                #  141   0x78a23  6      
  movl %r13d, %esi                      #  142   0x78a29  3      
  shrl %cl, %esi                        #  143   0x78a2c  2      
  orl %esi, %r12d                       #  144   0x78a2e  3      
  xchgw %ax, %ax                        #  145   0x78a31  3      
.L_78a80:                               #        0x78a34  0      
  movl %r12d, %r12d                     #  146   0x78a34  3      
  subl $0x433, %edx                     #  147   0x78a37  6      
  movl $0x1, 0x8c(%rsp)                 #  148   0x78a3d  11     
  cvtsi2sdq %r12, %xmm0                 #  149   0x78a48  5      
  movsd %xmm0, 0x8(%rsp)                #  150   0x78a4d  6      
  nop                                   #  151   0x78a53  1      
  movq 0x8(%rsp), %r12                  #  152   0x78a54  5      
  movq %r12, %rcx                       #  153   0x78a59  3      
  andl $0xffffffff, %r12d               #  154   0x78a5c  7      
  shrq $0x20, %rcx                      #  155   0x78a63  4      
  subl $0x1f00000, %ecx                 #  156   0x78a67  6      
  shlq $0x20, %rcx                      #  157   0x78a6d  4      
  orq %rcx, %r12                        #  158   0x78a71  3      
  nop                                   #  159   0x78a74  1      
.L_78ac0:                               #        0x78a75  0      
  movq %r12, 0x8(%rsp)                  #  160   0x78a75  5      
  cvtsi2sdl %edx, %xmm3                 #  161   0x78a7a  4      
  movsd 0x8(%rsp), %xmm0                #  162   0x78a7e  6      
  subsd 0xffab7d4(%rip), %xmm0          #  163   0x78a84  8      
  mulsd 0xffab7d4(%rip), %xmm0          #  164   0x78a8c  8      
  nop                                   #  165   0x78a94  1      
  mulsd 0xffab7db(%rip), %xmm3          #  166   0x78a95  8      
  addsd 0xffab7cb(%rip), %xmm0          #  167   0x78a9d  8      
  addsd %xmm3, %xmm0                    #  168   0x78aa5  4      
  cvttsd2si %xmm0, %ecx                 #  169   0x78aa9  4      
  ucomisd %xmm0, %xmm2                  #  170   0x78aad  4      
  movl %ecx, 0x40(%rsp)                 #  171   0x78ab1  4      
  jbe .L_78b20                          #  172   0x78ab5  6      
  cvtsi2sdl %ecx, %xmm3                 #  173   0x78abb  4      
  ucomisd %xmm0, %xmm3                  #  174   0x78abf  4      
  setne %cl                             #  175   0x78ac3  3      
  setp %sil                             #  176   0x78ac6  4      
  orl %esi, %ecx                        #  177   0x78aca  2      
  movzbl %cl, %ecx                      #  178   0x78acc  3      
  subl %ecx, 0x40(%rsp)                 #  179   0x78acf  4      
  nop                                   #  180   0x78ad3  1      
.L_78b20:                               #        0x78ad4  0      
  cmpl $0x16, 0x40(%rsp)                #  181   0x78ad4  5      
  movl $0x1, 0x88(%rsp)                 #  182   0x78ad9  11     
  ja .L_78b80                           #  183   0x78ae4  6      
  movl 0x40(%rsp), %ecx                 #  184   0x78aea  4      
  nop                                   #  185   0x78aee  1      
  movl $0x0, 0x88(%rsp)                 #  186   0x78aef  11     
  shll $0x3, %ecx                       #  187   0x78afa  3      
  movslq %ecx, %rcx                     #  188   0x78afd  3      
  movl %ecx, %ecx                       #  189   0x78b00  2      
  movsd 0x100247e0(%r15,%rcx,1), %xmm0  #  190   0x78b02  10     
  nop                                   #  191   0x78b0c  1      
  ucomisd %xmm1, %xmm0                  #  192   0x78b0d  4      
  jbe .L_78b80                          #  193   0x78b11  6      
  subl $0x1, 0x40(%rsp)                 #  194   0x78b17  5      
  nop                                   #  195   0x78b1c  1      
  nop                                   #  196   0x78b1d  1      
.L_78b80:                               #        0x78b1e  0      
  subl $0x1, %eax                       #  197   0x78b1e  3      
  subl %edx, %eax                       #  198   0x78b21  2      
  js .L_799c0                           #  199   0x78b23  6      
  movl %eax, 0x74(%rsp)                 #  200   0x78b29  4      
  movl $0x0, 0x84(%rsp)                 #  201   0x78b2d  11     
  nop                                   #  202   0x78b38  1      
.L_78ba0:                               #        0x78b39  0      
  movl 0x40(%rsp), %ecx                 #  203   0x78b39  4      
  testl %ecx, %ecx                      #  204   0x78b3d  2      
  js .L_79980                           #  205   0x78b3f  6      
  movl 0x40(%rsp), %eax                 #  206   0x78b45  4      
  addl %eax, 0x74(%rsp)                 #  207   0x78b49  4      
  movl $0x0, 0x68(%rsp)                 #  208   0x78b4d  8      
  nop                                   #  209   0x78b55  1      
  movl %eax, 0x90(%rsp)                 #  210   0x78b56  7      
  nop                                   #  211   0x78b5d  1      
  nop                                   #  212   0x78b5e  1      
.L_78be0:                               #        0x78b5f  0      
  cmpl $0x9, 0x50(%rsp)                 #  213   0x78b5f  5      
  ja .L_79020                           #  214   0x78b64  6      
  cmpl $0x5, 0x50(%rsp)                 #  215   0x78b6a  5      
  jle .L_7a800                          #  216   0x78b6f  6      
  subl $0x4, 0x50(%rsp)                 #  217   0x78b75  5      
  xorl %r12d, %r12d                     #  218   0x78b7a  3      
  xorl %eax, %eax                       #  219   0x78b7d  2      
.L_78c00:                               #        0x78b7f  0      
  cmpl $0x3, 0x50(%rsp)                 #  220   0x78b7f  5      
  je .L_7a240                           #  221   0x78b84  6      
  jg .L_79a00                           #  222   0x78b8a  6      
  cmpl $0x2, 0x50(%rsp)                 #  223   0x78b90  5      
  jne .L_79040                          #  224   0x78b95  6      
  nop                                   #  225   0x78b9b  1      
  movl $0x0, 0x94(%rsp)                 #  226   0x78b9c  11     
  nop                                   #  227   0x78ba7  1      
  nop                                   #  228   0x78ba8  1      
.L_78c40:                               #        0x78ba9  0      
  movl 0x38(%rsp), %edx                 #  229   0x78ba9  4      
  testl %edx, %edx                      #  230   0x78bad  2      
  jle .L_7a3a0                          #  231   0x78baf  6      
  movl 0x38(%rsp), %edi                 #  232   0x78bb5  4      
  cmpl $0xe, %edi                       #  233   0x78bb9  3      
  movl %edi, 0xa4(%rsp)                 #  234   0x78bbc  7      
  nop                                   #  235   0x78bc3  1      
  movl %edi, 0x80(%rsp)                 #  236   0x78bc4  7      
  setbe %r12b                           #  237   0x78bcb  4      
  andl %eax, %r12d                      #  238   0x78bcf  3      
  nop                                   #  239   0x78bd2  1      
  nop                                   #  240   0x78bd3  1      
.L_78c80:                               #        0x78bd4  0      
  cmpl $0x17, %edi                      #  241   0x78bd4  3      
  movl %ebx, %ebx                       #  242   0x78bd7  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  243   0x78bd9  9      
  jbe .L_79ce0                          #  244   0x78be2  6      
  movl $0x1, %edx                       #  245   0x78be8  5      
  movl $0x4, %eax                       #  246   0x78bed  5      
  xchgw %ax, %ax                        #  247   0x78bf2  3      
.L_78ca0:                               #        0x78bf5  0      
  addl %eax, %eax                       #  248   0x78bf5  2      
  movl %edx, %esi                       #  249   0x78bf7  2      
  leal 0x14(%rax), %ecx                 #  250   0x78bf9  3      
  leal 0x1(%rsi), %edx                  #  251   0x78bfc  3      
  cmpl %edi, %ecx                       #  252   0x78bff  2      
  jbe .L_78ca0                          #  253   0x78c01  6      
  movl %ebx, %ebx                       #  254   0x78c07  2      
  movl %esi, 0x44(%r15,%rbx,1)          #  255   0x78c09  5      
  nop                                   #  256   0x78c0e  1      
.L_78cc0:                               #        0x78c0f  0      
  movl %ebx, %edi                       #  257   0x78c0f  2      
  movsd %xmm1, 0x20(%rsp)               #  258   0x78c11  6      
  movsd %xmm2, 0x10(%rsp)               #  259   0x78c17  6      
  nop                                   #  260   0x78c1d  1      
  callq ._Balloc                        #  261   0x78c1e  5      
  testb %r12b, %r12b                    #  262   0x78c23  3      
  movl %eax, %eax                       #  263   0x78c26  2      
  movq %rax, 0x78(%rsp)                 #  264   0x78c28  5      
  movl %ebx, %ebx                       #  265   0x78c2d  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  266   0x78c2f  5      
  movsd 0x20(%rsp), %xmm1               #  267   0x78c34  6      
  movsd 0x10(%rsp), %xmm2               #  268   0x78c3a  6      
  nop                                   #  269   0x78c40  1      
  je .L_790c0                           #  270   0x78c41  6      
  movl 0x40(%rsp), %eax                 #  271   0x78c47  4      
  testl %eax, %eax                      #  272   0x78c4b  2      
  jle .L_79e60                          #  273   0x78c4d  6      
  movl 0x40(%rsp), %edx                 #  274   0x78c53  4      
  movapd %xmm1, %xmm4                   #  275   0x78c57  4      
  movl $0x2, %ecx                       #  276   0x78c5b  5      
  nop                                   #  277   0x78c60  1      
  leaq (,%rdx,8), %rax                  #  278   0x78c61  8      
  andl $0x78, %eax                      #  279   0x78c69  3      
  movl %eax, %eax                       #  280   0x78c6c  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm0  #  281   0x78c6e  10     
  movl %edx, %eax                       #  282   0x78c78  2      
  sarl $0x4, %eax                       #  283   0x78c7a  3      
  testb $0x10, %al                      #  284   0x78c7d  2      
  xchgw %ax, %ax                        #  285   0x78c7f  3      
  je .L_78d60                           #  286   0x78c82  6      
  divsd 0xffabc50(%rip), %xmm4          #  287   0x78c88  8      
  andl $0xf, %eax                       #  288   0x78c90  3      
  movb $0x3, %cl                        #  289   0x78c93  2      
  xchgw %ax, %ax                        #  290   0x78c95  3      
  nop                                   #  291   0x78c98  1      
.L_78d60:                               #        0x78c99  0      
  testl %eax, %eax                      #  292   0x78c99  2      
  je .L_78de0                           #  293   0x78c9b  6      
  xorl %edx, %edx                       #  294   0x78ca1  2      
  jmpq .L_78da0                         #  295   0x78ca3  5      
  nop                                   #  296   0x78ca8  1      
  nop                                   #  297   0x78ca9  1      
.L_78d80:                               #        0x78caa  0      
  addl $0x1, %edx                       #  298   0x78caa  3      
  nop                                   #  299   0x78cad  1      
  nop                                   #  300   0x78cae  1      
.L_78da0:                               #        0x78caf  0      
  testb $0x1, %al                       #  301   0x78caf  2      
  je .L_78dc0                           #  302   0x78cb1  6      
  movl %edx, %esi                       #  303   0x78cb7  2      
  addl $0x1, %ecx                       #  304   0x78cb9  3      
  movl %esi, %esi                       #  305   0x78cbc  2      
  mulsd 0x100248c0(%r15,%rsi,8), %xmm0  #  306   0x78cbe  10     
  nop                                   #  307   0x78cc8  1      
.L_78dc0:                               #        0x78cc9  0      
  sarl $0x1, %eax                       #  308   0x78cc9  2      
  jne .L_78d80                          #  309   0x78ccb  6      
  nop                                   #  310   0x78cd1  1      
  nop                                   #  311   0x78cd2  1      
.L_78de0:                               #        0x78cd3  0      
  divsd %xmm0, %xmm4                    #  312   0x78cd3  4      
  nop                                   #  313   0x78cd7  1      
  nop                                   #  314   0x78cd8  1      
.L_78e00:                               #        0x78cd9  0      
  movl 0x88(%rsp), %r13d                #  315   0x78cd9  8      
  testl %r13d, %r13d                    #  316   0x78ce1  3      
  je .L_79ac0                           #  317   0x78ce4  6      
  ucomisd 0xffab58e(%rip), %xmm4        #  318   0x78cea  8      
  jae .L_79ac0                          #  319   0x78cf2  6      
  nop                                   #  320   0x78cf8  1      
  jp .L_79ac0                           #  321   0x78cf9  6      
  movl 0x80(%rsp), %r12d                #  322   0x78cff  8      
  testl %r12d, %r12d                    #  323   0x78d07  3      
  jle .L_79ac0                          #  324   0x78d0a  6      
  movl 0xa4(%rsp), %r11d                #  325   0x78d10  8      
  nop                                   #  326   0x78d18  1      
  testl %r11d, %r11d                    #  327   0x78d19  3      
  jle .L_79de0                          #  328   0x78d1c  6      
  addl $0x1, %ecx                       #  329   0x78d22  3      
  mulsd 0xffab55b(%rip), %xmm4          #  330   0x78d25  8      
  movl 0x40(%rsp), %r13d                #  331   0x78d2d  5      
  cvtsi2sdl %ecx, %xmm0                 #  332   0x78d32  4      
  nop                                   #  333   0x78d36  1      
  movl 0xa4(%rsp), %ecx                 #  334   0x78d37  7      
  subl $0x1, %r13d                      #  335   0x78d3e  4      
  mulsd %xmm4, %xmm0                    #  336   0x78d42  4      
  addsd 0xffab542(%rip), %xmm0          #  337   0x78d46  8      
  movsd %xmm0, 0x8(%rsp)                #  338   0x78d4e  6      
  nop                                   #  339   0x78d54  1      
  movq 0x8(%rsp), %rsi                  #  340   0x78d55  5      
  movq %rsi, %rax                       #  341   0x78d5a  3      
  andl $0xffffffff, %esi                #  342   0x78d5d  6      
  shrq $0x20, %rax                      #  343   0x78d63  4      
  subl $0x3400000, %eax                 #  344   0x78d67  5      
  shlq $0x20, %rax                      #  345   0x78d6c  4      
  orq %rax, %rsi                        #  346   0x78d70  3      
  nop                                   #  347   0x78d73  1      
.L_78ea0:                               #        0x78d74  0      
  movl 0x94(%rsp), %r9d                 #  348   0x78d74  8      
  testl %r9d, %r9d                      #  349   0x78d7c  3      
  je .L_79f60                           #  350   0x78d7f  6      
  leal -0x8(,%rcx,8), %eax              #  351   0x78d85  7      
  movsd 0xffab1a4(%rip), %xmm0          #  352   0x78d8c  8      
  movq %rsi, 0x8(%rsp)                  #  353   0x78d94  5      
  movq 0x78(%rsp), %rdx                 #  354   0x78d99  5      
  cltq                                  #  355   0x78d9e  2      
  movsd 0x8(%rsp), %xmm3                #  356   0x78da0  6      
  movl %eax, %eax                       #  357   0x78da6  2      
  divsd 0x100247e0(%r15,%rax,1), %xmm0  #  358   0x78da8  10     
  xchgw %ax, %ax                        #  359   0x78db2  3      
  cvttsd2si %xmm4, %eax                 #  360   0x78db5  4      
  subsd %xmm3, %xmm0                    #  361   0x78db9  4      
  cvtsi2sdl %eax, %xmm3                 #  362   0x78dbd  4      
  addl $0x30, %eax                      #  363   0x78dc1  3      
  movl %edx, %edx                       #  364   0x78dc4  2      
  movb %al, (%r15,%rdx,1)               #  365   0x78dc6  4      
  movl 0x78(%rsp), %r12d                #  366   0x78dca  5      
  addl $0x1, %r12d                      #  367   0x78dcf  4      
  xchgw %ax, %ax                        #  368   0x78dd3  3      
  subsd %xmm3, %xmm4                    #  369   0x78dd6  4      
  ucomisd %xmm4, %xmm0                  #  370   0x78dda  4      
  ja .L_79300                           #  371   0x78dde  6      
  movsd 0xffab494(%rip), %xmm6          #  372   0x78de4  8      
  movapd %xmm6, %xmm3                   #  373   0x78dec  4      
  subsd %xmm4, %xmm3                    #  374   0x78df0  4      
  xchgw %ax, %ax                        #  375   0x78df4  3      
  ucomisd %xmm3, %xmm0                  #  376   0x78df7  4      
  ja .L_7a280                           #  377   0x78dfb  6      
  cmpl $0x1, %ecx                       #  378   0x78e01  3      
  jle .L_79de0                          #  379   0x78e04  6      
  movl $0x1, %edx                       #  380   0x78e0a  5      
  movsd 0xffab471(%rip), %xmm3          #  381   0x78e0f  8      
  jmpq .L_78f80                         #  382   0x78e17  5      
  nop                                   #  383   0x78e1c  1      
  nop                                   #  384   0x78e1d  1      
.L_78f60:                               #        0x78e1e  0      
  movapd %xmm6, %xmm5                   #  385   0x78e1e  4      
  subsd %xmm4, %xmm5                    #  386   0x78e22  4      
  ucomisd %xmm5, %xmm0                  #  387   0x78e26  4      
  ja .L_7a280                           #  388   0x78e2a  6      
  addl $0x1, %edx                       #  389   0x78e30  3      
  cmpl %ecx, %edx                       #  390   0x78e33  2      
  jge .L_79de0                          #  391   0x78e35  6      
  nop                                   #  392   0x78e3b  1      
.L_78f80:                               #        0x78e3c  0      
  mulsd %xmm3, %xmm4                    #  393   0x78e3c  4      
  mulsd %xmm3, %xmm0                    #  394   0x78e40  4      
  cvttsd2si %xmm4, %eax                 #  395   0x78e44  4      
  cvtsi2sdl %eax, %xmm5                 #  396   0x78e48  4      
  addl $0x30, %eax                      #  397   0x78e4c  3      
  movl %r12d, %r12d                     #  398   0x78e4f  3      
  movb %al, (%r15,%r12,1)               #  399   0x78e52  4      
  addl $0x1, %r12d                      #  400   0x78e56  4      
  xchgw %ax, %ax                        #  401   0x78e5a  3      
  subsd %xmm5, %xmm4                    #  402   0x78e5d  4      
  ucomisd %xmm4, %xmm0                  #  403   0x78e61  4      
  jbe .L_78f60                          #  404   0x78e65  6      
  jmpq .L_79300                         #  405   0x78e6b  5      
  xchgw %ax, %ax                        #  406   0x78e70  3      
  nop                                   #  407   0x78e73  1      
.L_78fc0:                               #        0x78e74  0      
  movsd %xmm1, 0x8(%rsp)                #  408   0x78e74  6      
  movq 0x8(%rsp), %r12                  #  409   0x78e7a  5      
  subl $0x3ff, %edx                     #  410   0x78e7f  6      
  movl $0x0, 0x8c(%rsp)                 #  411   0x78e85  11     
  movq %r12, %rax                       #  412   0x78e90  3      
  nop                                   #  413   0x78e93  1      
  andl $0xffffffff, %r12d               #  414   0x78e94  7      
  shrq $0x20, %rax                      #  415   0x78e9b  4      
  andl $0xfffff, %eax                   #  416   0x78e9f  5      
  orq $0x3ff00000, %rax                 #  417   0x78ea4  6      
  shlq $0x20, %rax                      #  418   0x78eaa  4      
  orq %rax, %r12                        #  419   0x78eae  3      
  nop                                   #  420   0x78eb1  1      
  movl 0xbc(%rsp), %eax                 #  421   0x78eb2  7      
  jmpq .L_78ac0                         #  422   0x78eb9  5      
  nop                                   #  423   0x78ebe  1      
  nop                                   #  424   0x78ebf  1      
.L_79020:                               #        0x78ec0  0      
  movl $0x0, 0x50(%rsp)                 #  425   0x78ec0  8      
  nop                                   #  426   0x78ec8  1      
  nop                                   #  427   0x78ec9  1      
.L_79040:                               #        0x78eca  0      
  movl %ebx, %ebx                       #  428   0x78eca  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  429   0x78ecc  9      
  xorl %esi, %esi                       #  430   0x78ed5  2      
  movl %ebx, %edi                       #  431   0x78ed7  2      
  movsd %xmm2, 0x10(%rsp)               #  432   0x78ed9  6      
  nop                                   #  433   0x78edf  1      
  callq ._Balloc                        #  434   0x78ee0  5      
  movl %eax, %eax                       #  435   0x78ee5  2      
  movsd 0x10(%rsp), %xmm2               #  436   0x78ee7  6      
  movq %rax, 0x78(%rsp)                 #  437   0x78eed  5      
  movl %ebx, %ebx                       #  438   0x78ef2  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  439   0x78ef4  5      
  movl $0xffffffff, %eax                #  440   0x78ef9  5      
  nop                                   #  441   0x78efe  1      
  movl $0x0, 0x38(%rsp)                 #  442   0x78eff  8      
  movl $0xffffffff, 0x80(%rsp)          #  443   0x78f07  11     
  movl $0x1, 0x94(%rsp)                 #  444   0x78f12  11     
  xchgw %ax, %ax                        #  445   0x78f1d  3      
  movl %eax, 0xa4(%rsp)                 #  446   0x78f20  7      
  nop                                   #  447   0x78f27  1      
  nop                                   #  448   0x78f28  1      
.L_790c0:                               #        0x78f29  0      
  cmpl $0xe, 0x40(%rsp)                 #  449   0x78f29  5      
  movl 0xb8(%rsp), %eax                 #  450   0x78f2e  7      
  jg .L_79360                           #  451   0x78f35  6      
  testl %eax, %eax                      #  452   0x78f3b  2      
  js .L_79360                           #  453   0x78f3d  6      
  movl 0x40(%rsp), %eax                 #  454   0x78f43  4      
  xchgw %ax, %ax                        #  455   0x78f47  3      
  movl 0x80(%rsp), %r8d                 #  456   0x78f4a  8      
  shll $0x3, %eax                       #  457   0x78f52  3      
  testl %r8d, %r8d                      #  458   0x78f55  3      
  cltq                                  #  459   0x78f58  2      
  movl %eax, %eax                       #  460   0x78f5a  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm4  #  461   0x78f5c  10     
  nop                                   #  462   0x78f66  1      
  jle .L_79d00                          #  463   0x78f67  6      
  nop                                   #  464   0x78f6d  1      
  nop                                   #  465   0x78f6e  1      
.L_79120:                               #        0x78f6f  0      
  movq %r13, 0x8(%rsp)                  #  466   0x78f6f  5      
  movq 0x78(%rsp), %rcx                 #  467   0x78f74  5      
  movsd 0x8(%rsp), %xmm0                #  468   0x78f79  6      
  movapd %xmm0, %xmm1                   #  469   0x78f7f  4      
  divsd %xmm4, %xmm1                    #  470   0x78f83  4      
  cvttsd2si %xmm1, %eax                 #  471   0x78f87  4      
  cvtsi2sdl %eax, %xmm3                 #  472   0x78f8b  4      
  leal 0x30(%rax), %edx                 #  473   0x78f8f  3      
  movl %ecx, %ecx                       #  474   0x78f92  2      
  movb %dl, (%r15,%rcx,1)               #  475   0x78f94  4      
  movl 0x78(%rsp), %r12d                #  476   0x78f98  5      
  addl $0x1, %r12d                      #  477   0x78f9d  4      
  cmpl $0x1, 0x80(%rsp)                 #  478   0x78fa1  8      
  mulsd %xmm4, %xmm3                    #  479   0x78fa9  4      
  xchgw %ax, %ax                        #  480   0x78fad  3      
  subsd %xmm3, %xmm0                    #  481   0x78fb0  4      
  je .L_79220                           #  482   0x78fb4  6      
  movsd 0xffab2c6(%rip), %xmm3          #  483   0x78fba  8      
  movl $0x1, %edx                       #  484   0x78fc2  5      
  mulsd %xmm3, %xmm0                    #  485   0x78fc7  4      
  ucomisd %xmm2, %xmm0                  #  486   0x78fcb  4      
  nop                                   #  487   0x78fcf  1      
  je .L_79c60                           #  488   0x78fd0  6      
  nop                                   #  489   0x78fd6  1      
  nop                                   #  490   0x78fd7  1      
.L_791a0:                               #        0x78fd8  0      
  movl 0x80(%rsp), %esi                 #  491   0x78fd8  7      
  jmpq .L_791e0                         #  492   0x78fdf  5      
  nop                                   #  493   0x78fe4  1      
  nop                                   #  494   0x78fe5  1      
.L_791c0:                               #        0x78fe6  0      
  mulsd %xmm3, %xmm0                    #  495   0x78fe6  4      
  ucomisd %xmm2, %xmm0                  #  496   0x78fea  4      
  jp .L_791e0                           #  497   0x78fee  6      
  je .L_79c80                           #  498   0x78ff4  6      
  nop                                   #  499   0x78ffa  1      
  nop                                   #  500   0x78ffb  1      
.L_791e0:                               #        0x78ffc  0      
  movapd %xmm0, %xmm1                   #  501   0x78ffc  4      
  addl $0x1, %edx                       #  502   0x79000  3      
  divsd %xmm4, %xmm1                    #  503   0x79003  4      
  cvttsd2si %xmm1, %eax                 #  504   0x79007  4      
  cvtsi2sdl %eax, %xmm1                 #  505   0x7900b  4      
  leal 0x30(%rax), %ecx                 #  506   0x7900f  3      
  movl %r12d, %r12d                     #  507   0x79012  3      
  movb %cl, (%r15,%r12,1)               #  508   0x79015  4      
  nop                                   #  509   0x79019  1      
  addl $0x1, %r12d                      #  510   0x7901a  4      
  cmpl %edx, %esi                       #  511   0x7901e  2      
  mulsd %xmm4, %xmm1                    #  512   0x79020  4      
  subsd %xmm1, %xmm0                    #  513   0x79024  4      
  jne .L_791c0                          #  514   0x79028  6      
  nop                                   #  515   0x7902e  1      
  nop                                   #  516   0x7902f  1      
.L_79220:                               #        0x79030  0      
  addsd %xmm0, %xmm0                    #  517   0x79030  4      
  ucomisd %xmm4, %xmm0                  #  518   0x79034  4      
  ja .L_79260                           #  519   0x79038  6      
  ucomisd %xmm0, %xmm4                  #  520   0x7903e  4      
  jne .L_79c80                          #  521   0x79042  6      
  jp .L_79c80                           #  522   0x79048  6      
  testb $0x1, %al                       #  523   0x7904e  2      
  nop                                   #  524   0x79050  1      
  je .L_79c80                           #  525   0x79051  6      
  nop                                   #  526   0x79057  1      
  nop                                   #  527   0x79058  1      
.L_79260:                               #        0x79059  0      
  movq 0x78(%rsp), %rcx                 #  528   0x79059  5      
  jmpq .L_792a0                         #  529   0x7905e  5      
  nop                                   #  530   0x79063  1      
  nop                                   #  531   0x79064  1      
.L_79280:                               #        0x79065  0      
  movq %rax, %r12                       #  532   0x79065  3      
  nop                                   #  533   0x79068  1      
  nop                                   #  534   0x79069  1      
.L_792a0:                               #        0x7906a  0      
  leal -0x1(%r12), %eax                 #  535   0x7906a  5      
  movl %eax, %eax                       #  536   0x7906f  2      
  movzbl (%r15,%rax,1), %edx            #  537   0x79071  5      
  cmpb $0x39, %dl                       #  538   0x79076  3      
  jne .L_7a520                          #  539   0x79079  6      
  cmpl %ecx, %eax                       #  540   0x7907f  2      
  jne .L_79280                          #  541   0x79081  6      
  movq 0x78(%rsp), %rax                 #  542   0x79087  5      
  xchgw %ax, %ax                        #  543   0x7908c  3      
  addl $0x1, 0x40(%rsp)                 #  544   0x7908f  5      
  movl $0x31, %edx                      #  545   0x79094  5      
  movl %eax, %eax                       #  546   0x79099  2      
  movb $0x30, (%r15,%rax,1)             #  547   0x7909b  5      
  movq 0x78(%rsp), %rax                 #  548   0x790a0  5      
  nop                                   #  549   0x790a5  1      
.L_792e0:                               #        0x790a6  0      
  movl %eax, %eax                       #  550   0x790a6  2      
  movb %dl, (%r15,%rax,1)               #  551   0x790a8  4      
  movl 0x40(%rsp), %r13d                #  552   0x790ac  5      
  nop                                   #  553   0x790b1  1      
  nop                                   #  554   0x790b2  1      
.L_79300:                               #        0x790b3  0      
  movl 0x60(%rsp), %esi                 #  555   0x790b3  4      
  movl %ebx, %edi                       #  556   0x790b7  2      
  addl $0x1, %r13d                      #  557   0x790b9  4      
  xchgw %ax, %ax                        #  558   0x790bd  3      
  nop                                   #  559   0x790c0  1      
  callq ._Bfree                         #  560   0x790c1  5      
  movl %r12d, %r12d                     #  561   0x790c6  3      
  movb $0x0, (%r15,%r12,1)              #  562   0x790c9  5      
  movq 0x58(%rsp), %rcx                 #  563   0x790ce  5      
  testq %r14, %r14                      #  564   0x790d3  3      
  movq 0x78(%rsp), %rax                 #  565   0x790d6  5      
  movl %ecx, %ecx                       #  566   0x790db  2      
  movl %r13d, (%r15,%rcx,1)             #  567   0x790dd  4      
  nop                                   #  568   0x790e1  1      
  je .L_78920                           #  569   0x790e2  6      
  movl %r14d, %r14d                     #  570   0x790e8  3      
  movl %r12d, (%r15,%r14,1)             #  571   0x790eb  4      
  jmpq .L_78920                         #  572   0x790ef  5      
  nop                                   #  573   0x790f4  1      
.L_79360:                               #        0x790f5  0      
  movl 0x94(%rsp), %ecx                 #  574   0x790f5  7      
  testl %ecx, %ecx                      #  575   0x790fc  2      
  je .L_79a80                           #  576   0x790fe  6      
  cmpl $0x1, 0x50(%rsp)                 #  577   0x79104  5      
  jle .L_7a4e0                          #  578   0x79109  6      
  nop                                   #  579   0x7910f  1      
  movl 0x80(%rsp), %r12d                #  580   0x79110  8      
  subl $0x1, %r12d                      #  581   0x79118  4      
  cmpl %r12d, 0x68(%rsp)                #  582   0x7911c  5      
  jl .L_7a4c0                           #  583   0x79121  6      
  movl 0x68(%rsp), %ecx                 #  584   0x79127  4      
  subl %r12d, %ecx                      #  585   0x7912b  3      
  xchgw %ax, %ax                        #  586   0x7912e  3      
  movl %ecx, %r12d                      #  587   0x79131  3      
  nop                                   #  588   0x79134  1      
  nop                                   #  589   0x79135  1      
.L_793c0:                               #        0x79136  0      
  movl 0x84(%rsp), %eax                 #  590   0x79136  7      
  movl %eax, 0x8c(%rsp)                 #  591   0x7913d  7      
  movl 0x80(%rsp), %eax                 #  592   0x79144  7      
  testl %eax, %eax                      #  593   0x7914b  2      
  js .L_7a540                           #  594   0x7914d  6      
  nop                                   #  595   0x79153  1      
.L_793e0:                               #        0x79154  0      
  movl $0x1, %esi                       #  596   0x79154  5      
  movl %ebx, %edi                       #  597   0x79159  2      
  addl %eax, 0x84(%rsp)                 #  598   0x7915b  7      
  addl %eax, 0x74(%rsp)                 #  599   0x79162  4      
  nop                                   #  600   0x79166  1      
  callq .__i2b                          #  601   0x79167  5      
  movl %eax, %eax                       #  602   0x7916c  2      
  movq %rax, 0x98(%rsp)                 #  603   0x7916e  8      
  nop                                   #  604   0x79176  1      
  nop                                   #  605   0x79177  1      
.L_79420:                               #        0x79178  0      
  movl 0x74(%rsp), %eax                 #  606   0x79178  4      
  testl %eax, %eax                      #  607   0x7917c  2      
  jle .L_79460                          #  608   0x7917e  6      
  movl 0x8c(%rsp), %r11d                #  609   0x79184  8      
  testl %r11d, %r11d                    #  610   0x7918c  3      
  jle .L_79460                          #  611   0x7918f  6      
  movl 0x8c(%rsp), %ecx                 #  612   0x79195  7      
  cmpl %ecx, 0x74(%rsp)                 #  613   0x7919c  4      
  movl %ecx, %eax                       #  614   0x791a0  2      
  cmovlel 0x74(%rsp), %eax              #  615   0x791a2  5      
  subl %eax, 0x84(%rsp)                 #  616   0x791a7  7      
  subl %eax, 0x74(%rsp)                 #  617   0x791ae  4      
  subl %eax, %ecx                       #  618   0x791b2  2      
  movl %ecx, 0x8c(%rsp)                 #  619   0x791b4  7      
  nop                                   #  620   0x791bb  1      
.L_79460:                               #        0x791bc  0      
  movl 0x68(%rsp), %r10d                #  621   0x791bc  5      
  testl %r10d, %r10d                    #  622   0x791c1  3      
  jle .L_79520                          #  623   0x791c4  6      
  movl 0x94(%rsp), %r9d                 #  624   0x791ca  8      
  testl %r9d, %r9d                      #  625   0x791d2  3      
  je .L_79f00                           #  626   0x791d5  6      
  nop                                   #  627   0x791db  1      
  testl %r12d, %r12d                    #  628   0x791dc  3      
  jle .L_79500                          #  629   0x791df  6      
  movl 0x98(%rsp), %esi                 #  630   0x791e5  7      
  movl %r12d, %edx                      #  631   0x791ec  3      
  movl %ebx, %edi                       #  632   0x791ef  2      
  nop                                   #  633   0x791f1  1      
  callq .__pow5mult                     #  634   0x791f2  5      
  movl 0x60(%rsp), %edx                 #  635   0x791f7  4      
  movl %eax, %eax                       #  636   0x791fb  2      
  movl %ebx, %edi                       #  637   0x791fd  2      
  movl %eax, %esi                       #  638   0x791ff  2      
  movq %rax, 0x98(%rsp)                 #  639   0x79201  8      
  nop                                   #  640   0x79209  1      
  callq .__multiply                     #  641   0x7920a  5      
  movl 0x60(%rsp), %esi                 #  642   0x7920f  4      
  movl %eax, %eax                       #  643   0x79213  2      
  movl %ebx, %edi                       #  644   0x79215  2      
  movq %rax, 0xa8(%rsp)                 #  645   0x79217  8      
  nop                                   #  646   0x7921f  1      
  callq ._Bfree                         #  647   0x79220  5      
  movq 0xa8(%rsp), %rax                 #  648   0x79225  8      
  movq %rax, 0x60(%rsp)                 #  649   0x7922d  5      
  nop                                   #  650   0x79232  1      
  nop                                   #  651   0x79233  1      
.L_79500:                               #        0x79234  0      
  movl 0x68(%rsp), %edx                 #  652   0x79234  4      
  subl %r12d, %edx                      #  653   0x79238  3      
  jne .L_79f20                          #  654   0x7923b  6      
  nop                                   #  655   0x79241  1      
  nop                                   #  656   0x79242  1      
.L_79520:                               #        0x79243  0      
  movl $0x1, %esi                       #  657   0x79243  5      
  movl %ebx, %edi                       #  658   0x79248  2      
  nop                                   #  659   0x7924a  1      
  nop                                   #  660   0x7924b  1      
  callq .__i2b                          #  661   0x7924c  5      
  movl 0x90(%rsp), %r8d                 #  662   0x79251  8      
  movl %eax, %eax                       #  663   0x79259  2      
  movq %rax, 0x68(%rsp)                 #  664   0x7925b  5      
  testl %r8d, %r8d                      #  665   0x79260  3      
  jle .L_795a0                          #  666   0x79263  6      
  movl 0x90(%rsp), %edx                 #  667   0x79269  7      
  movl %eax, %esi                       #  668   0x79270  2      
  movl %ebx, %edi                       #  669   0x79272  2      
  nop                                   #  670   0x79274  1      
  nop                                   #  671   0x79275  1      
  nop                                   #  672   0x79276  1      
  callq .__pow5mult                     #  673   0x79277  5      
  movl %eax, %eax                       #  674   0x7927c  2      
  movq %rax, 0x68(%rsp)                 #  675   0x7927e  5      
  nop                                   #  676   0x79283  1      
  nop                                   #  677   0x79284  1      
.L_795a0:                               #        0x79285  0      
  cmpl $0x1, 0x50(%rsp)                 #  678   0x79285  5      
  jle .L_7a3e0                          #  679   0x7928a  6      
  nop                                   #  680   0x79290  1      
  nop                                   #  681   0x79291  1      
.L_795c0:                               #        0x79292  0      
  movl $0x0, 0xa8(%rsp)                 #  682   0x79292  11     
  nop                                   #  683   0x7929d  1      
  nop                                   #  684   0x7929e  1      
.L_795e0:                               #        0x7929f  0      
  movl 0x90(%rsp), %edi                 #  685   0x7929f  7      
  movl $0x1, %eax                       #  686   0x792a6  5      
  testl %edi, %edi                      #  687   0x792ab  2      
  jne .L_7a340                          #  688   0x792ad  6      
  nop                                   #  689   0x792b3  1      
.L_79600:                               #        0x792b4  0      
  movl 0x74(%rsp), %ecx                 #  690   0x792b4  4      
  leal (%rax,%rcx,1), %edx              #  691   0x792b8  3      
  movl $0x1c, %eax                      #  692   0x792bb  5      
  andl $0x1f, %edx                      #  693   0x792c0  3      
  jne .L_79da0                          #  694   0x792c3  6      
  nop                                   #  695   0x792c9  1      
.L_79620:                               #        0x792ca  0      
  addl %eax, 0x84(%rsp)                 #  696   0x792ca  7      
  addl %eax, 0x8c(%rsp)                 #  697   0x792d1  7      
  addl %eax, 0x74(%rsp)                 #  698   0x792d8  4      
  nop                                   #  699   0x792dc  1      
.L_79640:                               #        0x792dd  0      
  movl 0x84(%rsp), %esi                 #  700   0x792dd  7      
  testl %esi, %esi                      #  701   0x792e4  2      
  jle .L_79680                          #  702   0x792e6  6      
  movl 0x84(%rsp), %edx                 #  703   0x792ec  7      
  movl 0x60(%rsp), %esi                 #  704   0x792f3  4      
  movl %ebx, %edi                       #  705   0x792f7  2      
  nop                                   #  706   0x792f9  1      
  callq .__lshift                       #  707   0x792fa  5      
  movl %eax, %eax                       #  708   0x792ff  2      
  movq %rax, 0x60(%rsp)                 #  709   0x79301  5      
  nop                                   #  710   0x79306  1      
  nop                                   #  711   0x79307  1      
.L_79680:                               #        0x79308  0      
  movl 0x74(%rsp), %ecx                 #  712   0x79308  4      
  testl %ecx, %ecx                      #  713   0x7930c  2      
  jle .L_796c0                          #  714   0x7930e  6      
  movl 0x74(%rsp), %edx                 #  715   0x79314  4      
  movl 0x68(%rsp), %esi                 #  716   0x79318  4      
  movl %ebx, %edi                       #  717   0x7931c  2      
  nop                                   #  718   0x7931e  1      
  callq .__lshift                       #  719   0x7931f  5      
  movl %eax, %eax                       #  720   0x79324  2      
  movq %rax, 0x68(%rsp)                 #  721   0x79326  5      
  nop                                   #  722   0x7932b  1      
  nop                                   #  723   0x7932c  1      
.L_796c0:                               #        0x7932d  0      
  movl 0x88(%rsp), %edx                 #  724   0x7932d  7      
  testl %edx, %edx                      #  725   0x79334  2      
  jne .L_7a2a0                          #  726   0x79336  6      
  xchgw %ax, %ax                        #  727   0x7933c  3      
  nop                                   #  728   0x7933f  1      
.L_796e0:                               #        0x79340  0      
  movl 0x80(%rsp), %r12d                #  729   0x79340  8      
  testl %r12d, %r12d                    #  730   0x79348  3      
  jle .L_7a440                          #  731   0x7934b  6      
  nop                                   #  732   0x79351  1      
.L_79700:                               #        0x79352  0      
  movl 0x94(%rsp), %r10d                #  733   0x79352  8      
  movq 0x78(%rsp), %r12                 #  734   0x7935a  5      
  movl $0x1, %eax                       #  735   0x7935f  5      
  testl %r10d, %r10d                    #  736   0x79364  3      
  je .L_7a0a0                           #  737   0x79367  6      
  nop                                   #  738   0x7936d  1      
  movl 0x8c(%rsp), %r9d                 #  739   0x7936e  8      
  testl %r9d, %r9d                      #  740   0x79376  3      
  jle .L_79780                          #  741   0x79379  6      
  movl 0x8c(%rsp), %edx                 #  742   0x7937f  7      
  movl 0x98(%rsp), %esi                 #  743   0x79386  7      
  movl %ebx, %edi                       #  744   0x7938d  2      
  nop                                   #  745   0x7938f  1      
  nop                                   #  746   0x79390  1      
  nop                                   #  747   0x79391  1      
  callq .__lshift                       #  748   0x79392  5      
  movl %eax, %eax                       #  749   0x79397  2      
  movq %rax, 0x98(%rsp)                 #  750   0x79399  8      
  nop                                   #  751   0x793a1  1      
  nop                                   #  752   0x793a2  1      
.L_79780:                               #        0x793a3  0      
  movl 0xa8(%rsp), %r8d                 #  753   0x793a3  8      
  movq 0x98(%rsp), %rax                 #  754   0x793ab  8      
  testl %r8d, %r8d                      #  755   0x793b3  3      
  movq %rax, 0x38(%rsp)                 #  756   0x793b6  5      
  jne .L_7a680                          #  757   0x793bb  6      
  xchgw %ax, %ax                        #  758   0x793c1  3      
.L_797a0:                               #        0x793c4  0      
  andl $0x1, %r13d                      #  759   0x793c4  4      
  movq 0x78(%rsp), %r12                 #  760   0x793c8  5      
  movl %r13d, 0x88(%rsp)                #  761   0x793cd  8      
  movq 0x98(%rsp), %r13                 #  762   0x793d5  8      
  nop                                   #  763   0x793dd  1      
.L_797c0:                               #        0x793de  0      
  movl 0x68(%rsp), %esi                 #  764   0x793de  4      
  movl 0x60(%rsp), %edi                 #  765   0x793e2  4      
  nop                                   #  766   0x793e6  1      
  nop                                   #  767   0x793e7  1      
  callq .quorem                         #  768   0x793e8  5      
  movl 0x60(%rsp), %edi                 #  769   0x793ed  4      
  addl $0x30, %eax                      #  770   0x793f1  3      
  movl %r13d, %esi                      #  771   0x793f4  3      
  movl %eax, 0x74(%rsp)                 #  772   0x793f7  4      
  nop                                   #  773   0x793fb  1      
  callq .__mcmp                         #  774   0x793fc  5      
  movl 0x38(%rsp), %edx                 #  775   0x79401  4      
  movl 0x68(%rsp), %esi                 #  776   0x79405  4      
  movl %ebx, %edi                       #  777   0x79409  2      
  movl %eax, 0x84(%rsp)                 #  778   0x7940b  7      
  nop                                   #  779   0x79412  1      
  callq .__mdiff                        #  780   0x79413  5      
  movl %eax, %edx                       #  781   0x79418  2      
  movl $0x1, %eax                       #  782   0x7941a  5      
  movl %edx, %edx                       #  783   0x7941f  2      
  movl 0xc(%r15,%rdx,1), %edi           #  784   0x79421  5      
  testl %edi, %edi                      #  785   0x79426  2      
  je .L_79c20                           #  786   0x79428  6      
  nop                                   #  787   0x7942e  1      
.L_79840:                               #        0x7942f  0      
  movl %edx, %esi                       #  788   0x7942f  2      
  movl %ebx, %edi                       #  789   0x79431  2      
  movl %eax, 0x30(%rsp)                 #  790   0x79433  4      
  nop                                   #  791   0x79437  1      
  nop                                   #  792   0x79438  1      
  callq ._Bfree                         #  793   0x79439  5      
  movl 0x30(%rsp), %eax                 #  794   0x7943e  4      
  testl %eax, %eax                      #  795   0x79442  2      
  jne .L_79880                          #  796   0x79444  6      
  movl 0x50(%rsp), %esi                 #  797   0x7944a  4      
  testl %esi, %esi                      #  798   0x7944e  2      
  jne .L_79880                          #  799   0x79450  6      
  movl 0x88(%rsp), %ecx                 #  800   0x79456  7      
  testl %ecx, %ecx                      #  801   0x7945d  2      
  je .L_7a7a0                           #  802   0x7945f  6      
  nop                                   #  803   0x79465  1      
.L_79880:                               #        0x79466  0      
  cmpl $0x0, 0x84(%rsp)                 #  804   0x79466  8      
  jl .L_7a560                           #  805   0x7946e  6      
  jne .L_798c0                          #  806   0x79474  6      
  movl 0x50(%rsp), %edx                 #  807   0x7947a  4      
  testl %edx, %edx                      #  808   0x7947e  2      
  jne .L_798c0                          #  809   0x79480  6      
  movl 0x88(%rsp), %r11d                #  810   0x79486  8      
  testl %r11d, %r11d                    #  811   0x7948e  3      
  je .L_7a560                           #  812   0x79491  6      
  nop                                   #  813   0x79497  1      
  nop                                   #  814   0x79498  1      
.L_798c0:                               #        0x79499  0      
  testl %eax, %eax                      #  815   0x79499  2      
  jg .L_7a760                           #  816   0x7949b  6      
  movzbl 0x74(%rsp), %ecx               #  817   0x794a1  5      
  movl %r12d, %r12d                     #  818   0x794a6  3      
  movb %cl, (%r15,%r12,1)               #  819   0x794a9  4      
  addl $0x1, %r12d                      #  820   0x794ad  4      
  movl %r12d, %eax                      #  821   0x794b1  3      
  subl 0x78(%rsp), %eax                 #  822   0x794b4  4      
  nop                                   #  823   0x794b8  1      
  cmpl 0x80(%rsp), %eax                 #  824   0x794b9  7      
  je .L_7a160                           #  825   0x794c0  6      
  movl 0x60(%rsp), %esi                 #  826   0x794c6  4      
  xorl %ecx, %ecx                       #  827   0x794ca  2      
  movl $0xa, %edx                       #  828   0x794cc  5      
  movl %ebx, %edi                       #  829   0x794d1  2      
  nop                                   #  830   0x794d3  1      
  callq .__multadd                      #  831   0x794d4  5      
  cmpl 0x38(%rsp), %r13d                #  832   0x794d9  5      
  movl %eax, %eax                       #  833   0x794de  2      
  movq %rax, 0x60(%rsp)                 #  834   0x794e0  5      
  je .L_79e00                           #  835   0x794e5  6      
  movl %r13d, %esi                      #  836   0x794eb  3      
  xorl %ecx, %ecx                       #  837   0x794ee  2      
  movl $0xa, %edx                       #  838   0x794f0  5      
  movl %ebx, %edi                       #  839   0x794f5  2      
  xchgw %ax, %ax                        #  840   0x794f7  3      
  nop                                   #  841   0x794fa  1      
  nop                                   #  842   0x794fb  1      
  callq .__multadd                      #  843   0x794fc  5      
  movl 0x38(%rsp), %esi                 #  844   0x79501  4      
  xorl %ecx, %ecx                       #  845   0x79505  2      
  movl $0xa, %edx                       #  846   0x79507  5      
  movl %ebx, %edi                       #  847   0x7950c  2      
  movl %eax, %r13d                      #  848   0x7950e  3      
  nop                                   #  849   0x79511  1      
  callq .__multadd                      #  850   0x79512  5      
  movl %eax, %eax                       #  851   0x79517  2      
  movq %rax, 0x38(%rsp)                 #  852   0x79519  5      
  jmpq .L_797c0                         #  853   0x7951e  5      
  nop                                   #  854   0x79523  1      
  nop                                   #  855   0x79524  1      
.L_79980:                               #        0x79525  0      
  movl 0x40(%rsp), %edx                 #  856   0x79525  4      
  subl %edx, 0x84(%rsp)                 #  857   0x79529  7      
  movl $0x0, 0x90(%rsp)                 #  858   0x79530  11     
  negl %edx                             #  859   0x7953b  2      
  movl %edx, 0x68(%rsp)                 #  860   0x7953d  4      
  nop                                   #  861   0x79541  1      
  jmpq .L_78be0                         #  862   0x79542  5      
  nop                                   #  863   0x79547  1      
  nop                                   #  864   0x79548  1      
.L_799c0:                               #        0x79549  0      
  negl %eax                             #  865   0x79549  2      
  movl $0x0, 0x74(%rsp)                 #  866   0x7954b  8      
  movl %eax, 0x84(%rsp)                 #  867   0x79553  7      
  jmpq .L_78ba0                         #  868   0x7955a  5      
  nop                                   #  869   0x7955f  1      
.L_799e0:                               #        0x79560  0      
  movl $0x20, %ecx                      #  870   0x79560  5      
  movl %r13d, %r12d                     #  871   0x79565  3      
  subl %edx, %ecx                       #  872   0x79568  2      
  shll %cl, %r12d                       #  873   0x7956a  3      
  jmpq .L_78a80                         #  874   0x7956d  5      
  nop                                   #  875   0x79572  1      
.L_79a00:                               #        0x79573  0      
  cmpl $0x4, 0x50(%rsp)                 #  876   0x79573  5      
  je .L_7a260                           #  877   0x79578  6      
  cmpl $0x5, 0x50(%rsp)                 #  878   0x7957e  5      
  jne .L_79040                          #  879   0x79583  6      
  nop                                   #  880   0x79589  1      
  movl $0x1, 0x94(%rsp)                 #  881   0x7958a  11     
  nop                                   #  882   0x79595  1      
  nop                                   #  883   0x79596  1      
.L_79a40:                               #        0x79597  0      
  movl 0x40(%rsp), %ecx                 #  884   0x79597  4      
  addl 0x38(%rsp), %ecx                 #  885   0x7959b  4      
  movl %ecx, %edi                       #  886   0x7959f  2      
  movl %ecx, 0xa4(%rsp)                 #  887   0x795a1  7      
  addl $0x1, %edi                       #  888   0x795a8  3      
  testl %edi, %edi                      #  889   0x795ab  2      
  jle .L_79ca0                          #  890   0x795ad  6      
  cmpl $0xe, %edi                       #  891   0x795b3  3      
  nop                                   #  892   0x795b6  1      
  movl %edi, 0x80(%rsp)                 #  893   0x795b7  7      
  setbe %r12b                           #  894   0x795be  4      
  andl %eax, %r12d                      #  895   0x795c2  3      
  jmpq .L_78c80                         #  896   0x795c5  5      
  nop                                   #  897   0x795ca  1      
.L_79a80:                               #        0x795cb  0      
  movl 0x84(%rsp), %edx                 #  898   0x795cb  7      
  movl 0x68(%rsp), %r12d                #  899   0x795d2  5      
  movq $0x0, 0x98(%rsp)                 #  900   0x795d7  12     
  movl %edx, 0x8c(%rsp)                 #  901   0x795e3  7      
  nop                                   #  902   0x795ea  1      
  jmpq .L_79420                         #  903   0x795eb  5      
  nop                                   #  904   0x795f0  1      
  nop                                   #  905   0x795f1  1      
.L_79ac0:                               #        0x795f2  0      
  cvtsi2sdl %ecx, %xmm0                 #  906   0x795f2  4      
  movl 0x80(%rsp), %r10d                #  907   0x795f6  8      
  mulsd %xmm4, %xmm0                    #  908   0x795fe  4      
  addsd 0xffaac86(%rip), %xmm0          #  909   0x79602  8      
  movsd %xmm0, 0x8(%rsp)                #  910   0x7960a  6      
  xchgw %ax, %ax                        #  911   0x79610  3      
  movq 0x8(%rsp), %rsi                  #  912   0x79613  5      
  movq %rsi, %rdx                       #  913   0x79618  3      
  movq %rsi, %rax                       #  914   0x7961b  3      
  shrq $0x20, %rdx                      #  915   0x7961e  4      
  andl $0xffffffff, %eax                #  916   0x79622  5      
  subl $0x3400000, %edx                 #  917   0x79627  6      
  shlq $0x20, %rdx                      #  918   0x7962d  4      
  orq %rdx, %rax                        #  919   0x79631  3      
  nop                                   #  920   0x79634  1      
  testl %r10d, %r10d                    #  921   0x79635  3      
  movq %rax, %rsi                       #  922   0x79638  3      
  jne .L_79e40                          #  923   0x7963b  6      
  subsd 0xffaac4f(%rip), %xmm4          #  924   0x79641  8      
  movq %rax, 0x8(%rsp)                  #  925   0x79649  5      
  movsd 0x8(%rsp), %xmm0                #  926   0x7964e  6      
  nop                                   #  927   0x79654  1      
  ucomisd %xmm0, %xmm4                  #  928   0x79655  4      
  ja .L_79d40                           #  929   0x79659  6      
  movsd 0xffaa8d9(%rip), %xmm3          #  930   0x7965f  8      
  xorpd %xmm3, %xmm0                    #  931   0x79667  4      
  ucomisd %xmm4, %xmm0                  #  932   0x7966b  4      
  jbe .L_79de0                          #  933   0x7966f  6      
.L_79b40:                               #        0x79675  0      
  movq $0x0, 0x68(%rsp)                 #  934   0x79675  9      
  movq $0x0, 0x98(%rsp)                 #  935   0x7967e  12     
  nop                                   #  936   0x7968a  1      
.L_79b60:                               #        0x7968b  0      
  movl 0x38(%rsp), %ecx                 #  937   0x7968b  4      
  movq 0x98(%rsp), %rax                 #  938   0x7968f  8      
  xorl %r13d, %r13d                     #  939   0x79697  3      
  movq 0x78(%rsp), %r12                 #  940   0x7969a  5      
  notl %ecx                             #  941   0x7969f  2      
  movq %rax, 0x38(%rsp)                 #  942   0x796a1  5      
  movl %ecx, 0x40(%rsp)                 #  943   0x796a6  4      
  nop                                   #  944   0x796aa  1      
.L_79b80:                               #        0x796ab  0      
  movl 0x68(%rsp), %esi                 #  945   0x796ab  4      
  movl %ebx, %edi                       #  946   0x796af  2      
  nop                                   #  947   0x796b1  1      
  nop                                   #  948   0x796b2  1      
  callq ._Bfree                         #  949   0x796b3  5      
  cmpq $0x0, 0x38(%rsp)                 #  950   0x796b8  6      
  je .L_79c80                           #  951   0x796be  6      
  cmpl 0x38(%rsp), %r13d                #  952   0x796c4  5      
  je .L_79be0                           #  953   0x796c9  6      
  testq %r13, %r13                      #  954   0x796cf  3      
  je .L_79be0                           #  955   0x796d2  6      
  movl %r13d, %esi                      #  956   0x796d8  3      
  movl %ebx, %edi                       #  957   0x796db  2      
  nop                                   #  958   0x796dd  1      
  nop                                   #  959   0x796de  1      
  nop                                   #  960   0x796df  1      
  callq ._Bfree                         #  961   0x796e0  5      
.L_79be0:                               #        0x796e5  0      
  movl 0x38(%rsp), %esi                 #  962   0x796e5  4      
  movl %ebx, %edi                       #  963   0x796e9  2      
  nop                                   #  964   0x796eb  1      
  nop                                   #  965   0x796ec  1      
  callq ._Bfree                         #  966   0x796ed  5      
  movl 0x40(%rsp), %r13d                #  967   0x796f2  5      
  jmpq .L_79300                         #  968   0x796f7  5      
  nop                                   #  969   0x796fc  1      
  nop                                   #  970   0x796fd  1      
.L_79c20:                               #        0x796fe  0      
  movl 0x60(%rsp), %edi                 #  971   0x796fe  4      
  movl %edx, %esi                       #  972   0x79702  2      
  movq %rdx, 0x30(%rsp)                 #  973   0x79704  5      
  nop                                   #  974   0x79709  1      
  nop                                   #  975   0x7970a  1      
  callq .__mcmp                         #  976   0x7970b  5      
  movq 0x30(%rsp), %rdx                 #  977   0x79710  5      
  jmpq .L_79840                         #  978   0x79715  5      
  nop                                   #  979   0x7971a  1      
  nop                                   #  980   0x7971b  1      
.L_79c60:                               #        0x7971c  0      
  jp .L_791a0                           #  981   0x7971c  6      
  nop                                   #  982   0x79722  1      
  nop                                   #  983   0x79723  1      
.L_79c80:                               #        0x79724  0      
  movl 0x40(%rsp), %r13d                #  984   0x79724  5      
  jmpq .L_79300                         #  985   0x79729  5      
  nop                                   #  986   0x7972e  1      
  nop                                   #  987   0x7972f  1      
.L_79ca0:                               #        0x79730  0      
  cmpl $0xe, %edi                       #  988   0x79730  3      
  movl %edi, 0x80(%rsp)                 #  989   0x79733  7      
  setbe %al                             #  990   0x7973a  3      
  nop                                   #  991   0x7973d  1      
  nop                                   #  992   0x7973e  1      
.L_79cc0:                               #        0x7973f  0      
  movl %ebx, %ebx                       #  993   0x7973f  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  994   0x79741  9      
  andl %eax, %r12d                      #  995   0x7974a  3      
  nop                                   #  996   0x7974d  1      
  nop                                   #  997   0x7974e  1      
.L_79ce0:                               #        0x7974f  0      
  xorl %esi, %esi                       #  998   0x7974f  2      
  jmpq .L_78cc0                         #  999   0x79751  5      
  nop                                   #  1000  0x79756  1      
  nop                                   #  1001  0x79757  1      
.L_79d00:                               #        0x79758  0      
  movl 0x38(%rsp), %edi                 #  1002  0x79758  4      
  testl %edi, %edi                      #  1003  0x7975c  2      
  jns .L_79120                          #  1004  0x7975e  6      
  movl 0x80(%rsp), %esi                 #  1005  0x79764  7      
  testl %esi, %esi                      #  1006  0x7976b  2      
  jne .L_79b40                          #  1007  0x7976d  6      
  nop                                   #  1008  0x79773  1      
  mulsd 0xffaab1c(%rip), %xmm4          #  1009  0x79774  8      
  movq %r13, 0x8(%rsp)                  #  1010  0x7977c  5      
  movsd 0x8(%rsp), %xmm0                #  1011  0x79781  6      
  ucomisd %xmm0, %xmm4                  #  1012  0x79787  4      
  jae .L_79b40                          #  1013  0x7978b  6      
  nop                                   #  1014  0x79791  1      
.L_79d40:                               #        0x79792  0      
  movq $0x0, 0x68(%rsp)                 #  1015  0x79792  9      
  movq $0x0, 0x98(%rsp)                 #  1016  0x7979b  12     
  nop                                   #  1017  0x797a7  1      
.L_79d60:                               #        0x797a8  0      
  movq 0x78(%rsp), %rdx                 #  1018  0x797a8  5      
  xorl %r13d, %r13d                     #  1019  0x797ad  3      
  movl %edx, %edx                       #  1020  0x797b0  2      
  movb $0x31, (%r15,%rdx,1)             #  1021  0x797b2  5      
  movl 0x78(%rsp), %r12d                #  1022  0x797b7  5      
  movq 0x98(%rsp), %rcx                 #  1023  0x797bc  8      
  nop                                   #  1024  0x797c4  1      
  addl $0x1, 0x40(%rsp)                 #  1025  0x797c5  5      
  addl $0x1, %r12d                      #  1026  0x797ca  4      
  movq %rcx, 0x38(%rsp)                 #  1027  0x797ce  5      
  jmpq .L_79b80                         #  1028  0x797d3  5      
  nop                                   #  1029  0x797d8  1      
.L_79da0:                               #        0x797d9  0      
  movb $0x20, %al                       #  1030  0x797d9  2      
  subl %edx, %eax                       #  1031  0x797db  2      
  cmpl $0x4, %eax                       #  1032  0x797dd  3      
  jle .L_7a820                          #  1033  0x797e0  6      
  subl $0x4, %eax                       #  1034  0x797e6  3      
  addl %eax, 0x84(%rsp)                 #  1035  0x797e9  7      
  addl %eax, 0x8c(%rsp)                 #  1036  0x797f0  7      
  xchgw %ax, %ax                        #  1037  0x797f7  3      
  addl %eax, 0x74(%rsp)                 #  1038  0x797fa  4      
  jmpq .L_79640                         #  1039  0x797fe  5      
  nop                                   #  1040  0x79803  1      
  nop                                   #  1041  0x79804  1      
.L_79de0:                               #        0x79805  0      
  movsd %xmm1, 0x8(%rsp)                #  1042  0x79805  6      
  movq 0x8(%rsp), %r13                  #  1043  0x7980b  5      
  jmpq .L_790c0                         #  1044  0x79810  5      
  nop                                   #  1045  0x79815  1      
  nop                                   #  1046  0x79816  1      
.L_79e00:                               #        0x79817  0      
  movl %r13d, %esi                      #  1047  0x79817  3      
  xorl %ecx, %ecx                       #  1048  0x7981a  2      
  movl $0xa, %edx                       #  1049  0x7981c  5      
  movl %ebx, %edi                       #  1050  0x79821  2      
  nop                                   #  1051  0x79823  1      
  callq .__multadd                      #  1052  0x79824  5      
  movl %eax, %r13d                      #  1053  0x79829  3      
  movq %r13, 0x38(%rsp)                 #  1054  0x7982c  5      
  jmpq .L_797c0                         #  1055  0x79831  5      
  nop                                   #  1056  0x79836  1      
  nop                                   #  1057  0x79837  1      
.L_79e40:                               #        0x79838  0      
  movl 0x40(%rsp), %r13d                #  1058  0x79838  5      
  movl 0x80(%rsp), %ecx                 #  1059  0x7983d  7      
  jmpq .L_78ea0                         #  1060  0x79844  5      
  nop                                   #  1061  0x79849  1      
.L_79e60:                               #        0x7984a  0      
  movl 0x40(%rsp), %edx                 #  1062  0x7984a  4      
  movapd %xmm1, %xmm4                   #  1063  0x7984e  4      
  movl $0x2, %ecx                       #  1064  0x79852  5      
  negl %edx                             #  1065  0x79857  2      
  je .L_78e00                           #  1066  0x79859  6      
  leaq (,%rdx,8), %rax                  #  1067  0x7985f  8      
  xorl %esi, %esi                       #  1068  0x79867  2      
  nop                                   #  1069  0x79869  1      
  andl $0x78, %eax                      #  1070  0x7986a  3      
  movl %eax, %eax                       #  1071  0x7986d  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm4  #  1072  0x7986f  10     
  movl %edx, %eax                       #  1073  0x79879  2      
  sarl $0x4, %eax                       #  1074  0x7987b  3      
  testl %eax, %eax                      #  1075  0x7987e  2      
  jne .L_79ec0                          #  1076  0x79880  6      
  jmpq .L_78e00                         #  1077  0x79886  5      
  nop                                   #  1078  0x7988b  1      
.L_79ea0:                               #        0x7988c  0      
  addl $0x1, %esi                       #  1079  0x7988c  3      
  nop                                   #  1080  0x7988f  1      
  nop                                   #  1081  0x79890  1      
.L_79ec0:                               #        0x79891  0      
  testb $0x1, %al                       #  1082  0x79891  2      
  je .L_79ee0                           #  1083  0x79893  6      
  movl %esi, %edx                       #  1084  0x79899  2      
  addl $0x1, %ecx                       #  1085  0x7989b  3      
  movl %edx, %edx                       #  1086  0x7989e  2      
  mulsd 0x100248c0(%r15,%rdx,8), %xmm4  #  1087  0x798a0  10     
  nop                                   #  1088  0x798aa  1      
.L_79ee0:                               #        0x798ab  0      
  sarl $0x1, %eax                       #  1089  0x798ab  2      
  jne .L_79ea0                          #  1090  0x798ad  6      
  jmpq .L_78e00                         #  1091  0x798b3  5      
  nop                                   #  1092  0x798b8  1      
  nop                                   #  1093  0x798b9  1      
.L_79f00:                               #        0x798ba  0      
  movl 0x68(%rsp), %edx                 #  1094  0x798ba  4      
  nop                                   #  1095  0x798be  1      
  nop                                   #  1096  0x798bf  1      
.L_79f20:                               #        0x798c0  0      
  movl 0x60(%rsp), %esi                 #  1097  0x798c0  4      
  movl %ebx, %edi                       #  1098  0x798c4  2      
  nop                                   #  1099  0x798c6  1      
  nop                                   #  1100  0x798c7  1      
  callq .__pow5mult                     #  1101  0x798c8  5      
  movl %eax, %eax                       #  1102  0x798cd  2      
  movq %rax, 0x60(%rsp)                 #  1103  0x798cf  5      
  jmpq .L_79520                         #  1104  0x798d4  5      
  nop                                   #  1105  0x798d9  1      
  nop                                   #  1106  0x798da  1      
.L_79f60:                               #        0x798db  0      
  movq %rsi, 0x8(%rsp)                  #  1107  0x798db  5      
  leal -0x8(,%rcx,8), %eax              #  1108  0x798e0  7      
  movq 0x78(%rsp), %rdx                 #  1109  0x798e7  5      
  movsd 0x8(%rsp), %xmm5                #  1110  0x798ec  6      
  cltq                                  #  1111  0x798f2  2      
  nop                                   #  1112  0x798f4  1      
  movl %eax, %eax                       #  1113  0x798f5  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm5  #  1114  0x798f7  10     
  cvttsd2si %xmm4, %eax                 #  1115  0x79901  4      
  cvtsi2sdl %eax, %xmm0                 #  1116  0x79905  4      
  addl $0x30, %eax                      #  1117  0x79909  3      
  movl %edx, %edx                       #  1118  0x7990c  2      
  movb %al, (%r15,%rdx,1)               #  1119  0x7990e  4      
  nop                                   #  1120  0x79912  1      
  movl 0x78(%rsp), %r12d                #  1121  0x79913  5      
  addl $0x1, %r12d                      #  1122  0x79918  4      
  cmpl $0x1, %ecx                       #  1123  0x7991c  3      
  subsd %xmm0, %xmm4                    #  1124  0x7991f  4      
  movapd %xmm4, %xmm0                   #  1125  0x79923  4      
  je .L_7a020                           #  1126  0x79927  6      
  movl 0x78(%rsp), %eax                 #  1127  0x7992d  4      
  nop                                   #  1128  0x79931  1      
  movsd 0xffaa94e(%rip), %xmm3          #  1129  0x79932  8      
  leal (%rcx,%rax,1), %esi              #  1130  0x7993a  3      
  movq %r12, %rax                       #  1131  0x7993d  3      
  nop                                   #  1132  0x79940  1      
  nop                                   #  1133  0x79941  1      
.L_79fe0:                               #        0x79942  0      
  mulsd %xmm3, %xmm0                    #  1134  0x79942  4      
  cvttsd2si %xmm0, %edx                 #  1135  0x79946  4      
  cvtsi2sdl %edx, %xmm4                 #  1136  0x7994a  4      
  addl $0x30, %edx                      #  1137  0x7994e  3      
  movl %eax, %eax                       #  1138  0x79951  2      
  movb %dl, (%r15,%rax,1)               #  1139  0x79953  4      
  addl $0x1, %eax                       #  1140  0x79957  3      
  cmpl %esi, %eax                       #  1141  0x7995a  2      
  subsd %xmm4, %xmm0                    #  1142  0x7995c  4      
  xchgw %ax, %ax                        #  1143  0x79960  3      
  jne .L_79fe0                          #  1144  0x79963  6      
  leal -0x1(%rcx,%r12,1), %r12d         #  1145  0x79969  5      
  nop                                   #  1146  0x7996e  1      
  nop                                   #  1147  0x7996f  1      
.L_7a020:                               #        0x79970  0      
  movsd 0xffaa5c0(%rip), %xmm3          #  1148  0x79970  8      
  movapd %xmm5, %xmm4                   #  1149  0x79978  4      
  addsd %xmm3, %xmm4                    #  1150  0x7997c  4      
  ucomisd %xmm4, %xmm0                  #  1151  0x79980  4      
  ja .L_7a280                           #  1152  0x79984  6      
  subsd %xmm5, %xmm3                    #  1153  0x7998a  4      
  xchgw %ax, %ax                        #  1154  0x7998e  3      
  ucomisd %xmm0, %xmm3                  #  1155  0x79991  4      
  jbe .L_79de0                          #  1156  0x79995  6      
  jmpq .L_7a080                         #  1157  0x7999b  5      
  nop                                   #  1158  0x799a0  1      
  nop                                   #  1159  0x799a1  1      
.L_7a060:                               #        0x799a2  0      
  movq %rax, %r12                       #  1160  0x799a2  3      
  nop                                   #  1161  0x799a5  1      
  nop                                   #  1162  0x799a6  1      
.L_7a080:                               #        0x799a7  0      
  leal -0x1(%r12), %eax                 #  1163  0x799a7  5      
  movl %eax, %eax                       #  1164  0x799ac  2      
  cmpb $0x30, (%r15,%rax,1)             #  1165  0x799ae  5      
  je .L_7a060                           #  1166  0x799b3  6      
  jmpq .L_79300                         #  1167  0x799b9  5      
  nop                                   #  1168  0x799be  1      
.L_7a0a0:                               #        0x799bf  0      
  movq %r14, 0x50(%rsp)                 #  1169  0x799bf  5      
  movq 0x60(%rsp), %r13                 #  1170  0x799c4  5      
  movq %rbx, %r14                       #  1171  0x799c9  3      
  movl %eax, %ebx                       #  1172  0x799cc  2      
  jmpq .L_7a100                         #  1173  0x799ce  5      
  nop                                   #  1174  0x799d3  1      
.L_7a0c0:                               #        0x799d4  0      
  movl %r13d, %esi                      #  1175  0x799d4  3      
  xorl %ecx, %ecx                       #  1176  0x799d7  2      
  movl $0xa, %edx                       #  1177  0x799d9  5      
  movl %r14d, %edi                      #  1178  0x799de  3      
  addl $0x1, %ebx                       #  1179  0x799e1  3      
  nop                                   #  1180  0x799e4  1      
  callq .__multadd                      #  1181  0x799e5  5      
  movl %eax, %r13d                      #  1182  0x799ea  3      
  nop                                   #  1183  0x799ed  1      
  nop                                   #  1184  0x799ee  1      
.L_7a100:                               #        0x799ef  0      
  movl 0x68(%rsp), %esi                 #  1185  0x799ef  4      
  movl %r13d, %edi                      #  1186  0x799f3  3      
  nop                                   #  1187  0x799f6  1      
  nop                                   #  1188  0x799f7  1      
  callq .quorem                         #  1189  0x799f8  5      
  addl $0x30, %eax                      #  1190  0x799fd  3      
  movl %r12d, %r12d                     #  1191  0x79a00  3      
  movb %al, (%r15,%r12,1)               #  1192  0x79a03  4      
  addl $0x1, %r12d                      #  1193  0x79a07  4      
  cmpl 0x80(%rsp), %ebx                 #  1194  0x79a0b  7      
  jl .L_7a0c0                           #  1195  0x79a12  6      
  movl %eax, 0x74(%rsp)                 #  1196  0x79a18  4      
  nop                                   #  1197  0x79a1c  1      
  movq 0x98(%rsp), %rax                 #  1198  0x79a1d  8      
  movq %r14, %rbx                       #  1199  0x79a25  3      
  movq 0x50(%rsp), %r14                 #  1200  0x79a28  5      
  movq %r13, 0x60(%rsp)                 #  1201  0x79a2d  5      
  xorl %r13d, %r13d                     #  1202  0x79a32  3      
  movq %rax, 0x38(%rsp)                 #  1203  0x79a35  5      
  nop                                   #  1204  0x79a3a  1      
.L_7a160:                               #        0x79a3b  0      
  movl 0x60(%rsp), %esi                 #  1205  0x79a3b  4      
  movl $0x1, %edx                       #  1206  0x79a3f  5      
  movl %ebx, %edi                       #  1207  0x79a44  2      
  nop                                   #  1208  0x79a46  1      
  nop                                   #  1209  0x79a47  1      
  callq .__lshift                       #  1210  0x79a48  5      
  movl 0x68(%rsp), %esi                 #  1211  0x79a4d  4      
  movl %eax, %eax                       #  1212  0x79a51  2      
  movl %eax, %edi                       #  1213  0x79a53  2      
  movq %rax, 0x60(%rsp)                 #  1214  0x79a55  5      
  nop                                   #  1215  0x79a5a  1      
  callq .__mcmp                         #  1216  0x79a5b  5      
  cmpl $0x0, %eax                       #  1217  0x79a60  3      
  jle .L_7a600                          #  1218  0x79a63  6      
  nop                                   #  1219  0x79a69  1      
  nop                                   #  1220  0x79a6a  1      
.L_7a1c0:                               #        0x79a6b  0      
  movq 0x78(%rsp), %rcx                 #  1221  0x79a6b  5      
  jmpq .L_7a200                         #  1222  0x79a70  5      
  nop                                   #  1223  0x79a75  1      
  nop                                   #  1224  0x79a76  1      
.L_7a1e0:                               #        0x79a77  0      
  movq %rax, %r12                       #  1225  0x79a77  3      
  nop                                   #  1226  0x79a7a  1      
  nop                                   #  1227  0x79a7b  1      
.L_7a200:                               #        0x79a7c  0      
  leal -0x1(%r12), %eax                 #  1228  0x79a7c  5      
  movl %eax, %eax                       #  1229  0x79a81  2      
  movzbl (%r15,%rax,1), %edx            #  1230  0x79a83  5      
  cmpb $0x39, %dl                       #  1231  0x79a88  3      
  jne .L_7a660                          #  1232  0x79a8b  6      
  cmpl %ecx, %eax                       #  1233  0x79a91  2      
  jne .L_7a1e0                          #  1234  0x79a93  6      
  movq 0x78(%rsp), %rdx                 #  1235  0x79a99  5      
  xchgw %ax, %ax                        #  1236  0x79a9e  3      
  addl $0x1, 0x40(%rsp)                 #  1237  0x79aa1  5      
  movl %edx, %edx                       #  1238  0x79aa6  2      
  movb $0x31, (%r15,%rdx,1)             #  1239  0x79aa8  5      
  jmpq .L_79b80                         #  1240  0x79aad  5      
  nop                                   #  1241  0x79ab2  1      
.L_7a240:                               #        0x79ab3  0      
  movl $0x0, 0x94(%rsp)                 #  1242  0x79ab3  11     
  jmpq .L_79a40                         #  1243  0x79abe  5      
  nop                                   #  1244  0x79ac3  1      
  nop                                   #  1245  0x79ac4  1      
.L_7a260:                               #        0x79ac5  0      
  movl $0x1, 0x94(%rsp)                 #  1246  0x79ac5  11     
  jmpq .L_78c40                         #  1247  0x79ad0  5      
  nop                                   #  1248  0x79ad5  1      
  nop                                   #  1249  0x79ad6  1      
.L_7a280:                               #        0x79ad7  0      
  movl %r13d, 0x40(%rsp)                #  1250  0x79ad7  5      
  movq 0x78(%rsp), %rcx                 #  1251  0x79adc  5      
  jmpq .L_792a0                         #  1252  0x79ae1  5      
  xchgw %ax, %ax                        #  1253  0x79ae6  3      
  nop                                   #  1254  0x79ae9  1      
.L_7a2a0:                               #        0x79aea  0      
  movl 0x68(%rsp), %esi                 #  1255  0x79aea  4      
  movl 0x60(%rsp), %edi                 #  1256  0x79aee  4      
  nop                                   #  1257  0x79af2  1      
  nop                                   #  1258  0x79af3  1      
  callq .__mcmp                         #  1259  0x79af4  5      
  testl %eax, %eax                      #  1260  0x79af9  2      
  jns .L_796e0                          #  1261  0x79afb  6      
  movl 0x60(%rsp), %esi                 #  1262  0x79b01  4      
  xorl %ecx, %ecx                       #  1263  0x79b05  2      
  movl $0xa, %edx                       #  1264  0x79b07  5      
  movl %ebx, %edi                       #  1265  0x79b0c  2      
  subl $0x1, 0x40(%rsp)                 #  1266  0x79b0e  5      
  nop                                   #  1267  0x79b13  1      
  callq .__multadd                      #  1268  0x79b14  5      
  movl %eax, %eax                       #  1269  0x79b19  2      
  movq %rax, 0x60(%rsp)                 #  1270  0x79b1b  5      
  movl 0xa4(%rsp), %eax                 #  1271  0x79b20  7      
  movl %eax, 0x80(%rsp)                 #  1272  0x79b27  7      
  movl 0x94(%rsp), %eax                 #  1273  0x79b2e  7      
  testl %eax, %eax                      #  1274  0x79b35  2      
  xchgw %ax, %ax                        #  1275  0x79b37  3      
  je .L_796e0                           #  1276  0x79b3a  6      
  movl 0x98(%rsp), %esi                 #  1277  0x79b40  7      
  movl $0xa, %edx                       #  1278  0x79b47  5      
  xorl %ecx, %ecx                       #  1279  0x79b4c  2      
  movl %ebx, %edi                       #  1280  0x79b4e  2      
  nop                                   #  1281  0x79b50  1      
  callq .__multadd                      #  1282  0x79b51  5      
  movl 0xa4(%rsp), %edx                 #  1283  0x79b56  7      
  movl %eax, %eax                       #  1284  0x79b5d  2      
  movq %rax, 0x98(%rsp)                 #  1285  0x79b5f  8      
  movl %edx, 0x80(%rsp)                 #  1286  0x79b67  7      
  jmpq .L_796e0                         #  1287  0x79b6e  5      
  nop                                   #  1288  0x79b73  1      
.L_7a340:                               #        0x79b74  0      
  movq 0x68(%rsp), %rdx                 #  1289  0x79b74  5      
  movl %edx, %edx                       #  1290  0x79b79  2      
  movl 0x10(%r15,%rdx,1), %eax          #  1291  0x79b7b  5      
  leal 0xc(,%rax,4), %eax               #  1292  0x79b80  7      
  cltq                                  #  1293  0x79b87  2      
  addq %rdx, %rax                       #  1294  0x79b89  3      
  movl %eax, %eax                       #  1295  0x79b8c  2      
  movl 0x4(%r15,%rax,1), %edi           #  1296  0x79b8e  5      
  nop                                   #  1297  0x79b93  1      
  nop                                   #  1298  0x79b94  1      
  nop                                   #  1299  0x79b95  1      
  callq .__hi0bits                      #  1300  0x79b96  5      
  movl %eax, %edx                       #  1301  0x79b9b  2      
  movl $0x20, %eax                      #  1302  0x79b9d  5      
  subl %edx, %eax                       #  1303  0x79ba2  2      
  jmpq .L_79600                         #  1304  0x79ba4  5      
  nop                                   #  1305  0x79ba9  1      
  nop                                   #  1306  0x79baa  1      
.L_7a3a0:                               #        0x79bab  0      
  movl $0x1, %eax                       #  1307  0x79bab  5      
  movl $0x1, 0xa4(%rsp)                 #  1308  0x79bb0  11     
  movl $0x1, 0x80(%rsp)                 #  1309  0x79bbb  11     
  nop                                   #  1310  0x79bc6  1      
  movl $0x1, 0x38(%rsp)                 #  1311  0x79bc7  8      
  jmpq .L_79cc0                         #  1312  0x79bcf  5      
  nop                                   #  1313  0x79bd4  1      
  nop                                   #  1314  0x79bd5  1      
.L_7a3e0:                               #        0x79bd6  0      
  movq $0xfffffffffffff, %rax           #  1315  0x79bd6  10     
  testq %rax, %r13                      #  1316  0x79be0  3      
  jne .L_795c0                          #  1317  0x79be3  6      
  movq %r13, %rax                       #  1318  0x79be9  3      
  shrq $0x20, %rax                      #  1319  0x79bec  4      
  testl $0x7ff00000, %eax               #  1320  0x79bf0  5      
  nop                                   #  1321  0x79bf5  1      
  je .L_795c0                           #  1322  0x79bf6  6      
  addl $0x1, 0x84(%rsp)                 #  1323  0x79bfc  8      
  addl $0x1, 0x74(%rsp)                 #  1324  0x79c04  5      
  movl $0x1, 0xa8(%rsp)                 #  1325  0x79c09  11     
  xchgw %ax, %ax                        #  1326  0x79c14  3      
  jmpq .L_795e0                         #  1327  0x79c17  5      
  nop                                   #  1328  0x79c1c  1      
  nop                                   #  1329  0x79c1d  1      
.L_7a440:                               #        0x79c1e  0      
  cmpl $0x2, 0x50(%rsp)                 #  1330  0x79c1e  5      
  jle .L_79700                          #  1331  0x79c23  6      
  movl 0x80(%rsp), %r11d                #  1332  0x79c29  8      
  testl %r11d, %r11d                    #  1333  0x79c31  3      
  jne .L_79b60                          #  1334  0x79c34  6      
  movl 0x68(%rsp), %esi                 #  1335  0x79c3a  4      
  xorl %ecx, %ecx                       #  1336  0x79c3e  2      
  movl $0x5, %edx                       #  1337  0x79c40  5      
  movl %ebx, %edi                       #  1338  0x79c45  2      
  nop                                   #  1339  0x79c47  1      
  nop                                   #  1340  0x79c48  1      
  callq .__multadd                      #  1341  0x79c49  5      
  movl 0x60(%rsp), %edi                 #  1342  0x79c4e  4      
  movl %eax, %eax                       #  1343  0x79c52  2      
  movl %eax, %esi                       #  1344  0x79c54  2      
  movq %rax, 0x68(%rsp)                 #  1345  0x79c56  5      
  nop                                   #  1346  0x79c5b  1      
  callq .__mcmp                         #  1347  0x79c5c  5      
  testl %eax, %eax                      #  1348  0x79c61  2      
  jg .L_79d60                           #  1349  0x79c63  6      
  jmpq .L_79b60                         #  1350  0x79c69  5      
  nop                                   #  1351  0x79c6e  1      
  nop                                   #  1352  0x79c6f  1      
.L_7a4c0:                               #        0x79c70  0      
  subl 0x68(%rsp), %r12d                #  1353  0x79c70  5      
  addl %r12d, 0x90(%rsp)                #  1354  0x79c75  8      
  addl %r12d, 0x68(%rsp)                #  1355  0x79c7d  5      
  xorl %r12d, %r12d                     #  1356  0x79c82  3      
  jmpq .L_793c0                         #  1357  0x79c85  5      
  nop                                   #  1358  0x79c8a  1      
.L_7a4e0:                               #        0x79c8b  0      
  movl 0x8c(%rsp), %edx                 #  1359  0x79c8b  7      
  testl %edx, %edx                      #  1360  0x79c92  2      
  je .L_7a720                           #  1361  0x79c94  6      
  movl 0x84(%rsp), %ecx                 #  1362  0x79c9a  7      
  addl $0x433, %eax                     #  1363  0x79ca1  5      
  movl 0x68(%rsp), %r12d                #  1364  0x79ca6  5      
  movl %ecx, 0x8c(%rsp)                 #  1365  0x79cab  7      
  jmpq .L_793e0                         #  1366  0x79cb2  5      
  nop                                   #  1367  0x79cb7  1      
  nop                                   #  1368  0x79cb8  1      
.L_7a520:                               #        0x79cb9  0      
  addl $0x1, %edx                       #  1369  0x79cb9  3      
  jmpq .L_792e0                         #  1370  0x79cbc  5      
  nop                                   #  1371  0x79cc1  1      
  nop                                   #  1372  0x79cc2  1      
.L_7a540:                               #        0x79cc3  0      
  movl 0x84(%rsp), %edx                 #  1373  0x79cc3  7      
  subl %eax, %edx                       #  1374  0x79cca  2      
  xorl %eax, %eax                       #  1375  0x79ccc  2      
  movl %edx, 0x8c(%rsp)                 #  1376  0x79cce  7      
  jmpq .L_793e0                         #  1377  0x79cd5  5      
  nop                                   #  1378  0x79cda  1      
.L_7a560:                               #        0x79cdb  0      
  testl %eax, %eax                      #  1379  0x79cdb  2      
  jle .L_7a5e0                          #  1380  0x79cdd  6      
  movl 0x60(%rsp), %esi                 #  1381  0x79ce3  4      
  movl $0x1, %edx                       #  1382  0x79ce7  5      
  movl %ebx, %edi                       #  1383  0x79cec  2      
  nop                                   #  1384  0x79cee  1      
  callq .__lshift                       #  1385  0x79cef  5      
  movl 0x68(%rsp), %esi                 #  1386  0x79cf4  4      
  movl %eax, %eax                       #  1387  0x79cf8  2      
  movl %eax, %edi                       #  1388  0x79cfa  2      
  movq %rax, 0x60(%rsp)                 #  1389  0x79cfc  5      
  nop                                   #  1390  0x79d01  1      
  callq .__mcmp                         #  1391  0x79d02  5      
  cmpl $0x0, %eax                       #  1392  0x79d07  3      
  jle .L_7a7e0                          #  1393  0x79d0a  6      
  nop                                   #  1394  0x79d10  1      
  nop                                   #  1395  0x79d11  1      
.L_7a5c0:                               #        0x79d12  0      
  cmpl $0x39, 0x74(%rsp)                #  1396  0x79d12  5      
  je .L_7a780                           #  1397  0x79d17  6      
  addl $0x1, 0x74(%rsp)                 #  1398  0x79d1d  5      
  nop                                   #  1399  0x79d22  1      
  nop                                   #  1400  0x79d23  1      
.L_7a5e0:                               #        0x79d24  0      
  movzbl 0x74(%rsp), %edx               #  1401  0x79d24  5      
  movl %r12d, %r12d                     #  1402  0x79d29  3      
  movb %dl, (%r15,%r12,1)               #  1403  0x79d2c  4      
  addl $0x1, %r12d                      #  1404  0x79d30  4      
  jmpq .L_79b80                         #  1405  0x79d34  5      
  nop                                   #  1406  0x79d39  1      
.L_7a600:                               #        0x79d3a  0      
  jne .L_7a640                          #  1407  0x79d3a  6      
  testb $0x1, 0x74(%rsp)                #  1408  0x79d40  5      
  jne .L_7a1c0                          #  1409  0x79d45  6      
  jmpq .L_7a640                         #  1410  0x79d4b  5      
  xchgw %ax, %ax                        #  1411  0x79d50  3      
  nop                                   #  1412  0x79d53  1      
.L_7a620:                               #        0x79d54  0      
  movq %rax, %r12                       #  1413  0x79d54  3      
  nop                                   #  1414  0x79d57  1      
  nop                                   #  1415  0x79d58  1      
.L_7a640:                               #        0x79d59  0      
  leal -0x1(%r12), %eax                 #  1416  0x79d59  5      
  movl %eax, %eax                       #  1417  0x79d5e  2      
  cmpb $0x30, (%r15,%rax,1)             #  1418  0x79d60  5      
  je .L_7a620                           #  1419  0x79d65  6      
  jmpq .L_79b80                         #  1420  0x79d6b  5      
  nop                                   #  1421  0x79d70  1      
.L_7a660:                               #        0x79d71  0      
  addl $0x1, %edx                       #  1422  0x79d71  3      
  movl %eax, %eax                       #  1423  0x79d74  2      
  movb %dl, (%r15,%rax,1)               #  1424  0x79d76  4      
  jmpq .L_79b80                         #  1425  0x79d7a  5      
  nop                                   #  1426  0x79d7f  1      
  nop                                   #  1427  0x79d80  1      
.L_7a680:                               #        0x79d81  0      
  movl %eax, %eax                       #  1428  0x79d81  2      
  movl 0x4(%r15,%rax,1), %esi           #  1429  0x79d83  5      
  movl %ebx, %edi                       #  1430  0x79d88  2      
  nop                                   #  1431  0x79d8a  1      
  nop                                   #  1432  0x79d8b  1      
  callq ._Balloc                        #  1433  0x79d8c  5      
  movq 0x98(%rsp), %rcx                 #  1434  0x79d91  8      
  movl 0x98(%rsp), %esi                 #  1435  0x79d99  7      
  movl %eax, %r12d                      #  1436  0x79da0  3      
  leal 0xc(%r12), %edi                  #  1437  0x79da3  5      
  movl %ecx, %ecx                       #  1438  0x79da8  2      
  movl 0x10(%r15,%rcx,1), %edx          #  1439  0x79daa  5      
  xchgw %ax, %ax                        #  1440  0x79daf  3      
  addl $0xc, %esi                       #  1441  0x79db2  3      
  leal 0x8(,%rdx,4), %edx               #  1442  0x79db5  7      
  xchgw %ax, %ax                        #  1443  0x79dbc  3      
  nop                                   #  1444  0x79dbf  1      
  callq .memcpy                         #  1445  0x79dc0  5      
  movl $0x1, %edx                       #  1446  0x79dc5  5      
  movl %r12d, %esi                      #  1447  0x79dca  3      
  movl %ebx, %edi                       #  1448  0x79dcd  2      
  xchgw %ax, %ax                        #  1449  0x79dcf  3      
  nop                                   #  1450  0x79dd2  1      
  callq .__lshift                       #  1451  0x79dd3  5      
  movl %eax, %eax                       #  1452  0x79dd8  2      
  movq %rax, 0x38(%rsp)                 #  1453  0x79dda  5      
  jmpq .L_797a0                         #  1454  0x79ddf  5      
  nop                                   #  1455  0x79de4  1      
  nop                                   #  1456  0x79de5  1      
.L_7a720:                               #        0x79de6  0      
  movl 0x84(%rsp), %edx                 #  1457  0x79de6  7      
  movl $0x36, %eax                      #  1458  0x79ded  5      
  movl 0x68(%rsp), %r12d                #  1459  0x79df2  5      
  subl 0xbc(%rsp), %eax                 #  1460  0x79df7  7      
  movl %edx, 0x8c(%rsp)                 #  1461  0x79dfe  7      
  nop                                   #  1462  0x79e05  1      
  jmpq .L_793e0                         #  1463  0x79e06  5      
  nop                                   #  1464  0x79e0b  1      
  nop                                   #  1465  0x79e0c  1      
.L_7a760:                               #        0x79e0d  0      
  cmpl $0x39, 0x74(%rsp)                #  1466  0x79e0d  5      
  je .L_7a780                           #  1467  0x79e12  6      
  movzbl 0x74(%rsp), %eax               #  1468  0x79e18  5      
  addl $0x1, %eax                       #  1469  0x79e1d  3      
  movl %r12d, %r12d                     #  1470  0x79e20  3      
  movb %al, (%r15,%r12,1)               #  1471  0x79e23  4      
  addl $0x1, %r12d                      #  1472  0x79e27  4      
  jmpq .L_79b80                         #  1473  0x79e2b  5      
  nop                                   #  1474  0x79e30  1      
.L_7a780:                               #        0x79e31  0      
  movl %r12d, %r12d                     #  1475  0x79e31  3      
  movb $0x39, (%r15,%r12,1)             #  1476  0x79e34  5      
  addl $0x1, %r12d                      #  1477  0x79e39  4      
  movq 0x78(%rsp), %rcx                 #  1478  0x79e3d  5      
  jmpq .L_7a200                         #  1479  0x79e42  5      
  nop                                   #  1480  0x79e47  1      
.L_7a7a0:                               #        0x79e48  0      
  cmpl $0x39, 0x74(%rsp)                #  1481  0x79e48  5      
  je .L_7a780                           #  1482  0x79e4d  6      
  xorl %eax, %eax                       #  1483  0x79e53  2      
  cmpl $0x0, 0x84(%rsp)                 #  1484  0x79e55  8      
  setg %al                              #  1485  0x79e5d  3      
  addl %eax, 0x74(%rsp)                 #  1486  0x79e60  4      
  movzbl 0x74(%rsp), %eax               #  1487  0x79e64  5      
  nop                                   #  1488  0x79e69  1      
  movl %r12d, %r12d                     #  1489  0x79e6a  3      
  movb %al, (%r15,%r12,1)               #  1490  0x79e6d  4      
  addl $0x1, %r12d                      #  1491  0x79e71  4      
  jmpq .L_79b80                         #  1492  0x79e75  5      
  nop                                   #  1493  0x79e7a  1      
  nop                                   #  1494  0x79e7b  1      
.L_7a7e0:                               #        0x79e7c  0      
  jne .L_7a5e0                          #  1495  0x79e7c  6      
  testb $0x1, 0x74(%rsp)                #  1496  0x79e82  5      
  je .L_7a5e0                           #  1497  0x79e87  6      
  jmpq .L_7a5c0                         #  1498  0x79e8d  5      
  nop                                   #  1499  0x79e92  1      
.L_7a800:                               #        0x79e93  0      
  movl $0x1, %r12d                      #  1500  0x79e93  6      
  movl $0x1, %eax                       #  1501  0x79e99  5      
  jmpq .L_78c00                         #  1502  0x79e9e  5      
  nop                                   #  1503  0x79ea3  1      
  nop                                   #  1504  0x79ea4  1      
.L_7a820:                               #        0x79ea5  0      
  je .L_79640                           #  1505  0x79ea5  6      
  addl $0x1c, %eax                      #  1506  0x79eab  3      
  jmpq .L_79620                         #  1507  0x79eae  5      
  nop                                   #  1508  0x79eb3  1      
  nop                                   #  1509  0x79eb4  1      
  nop                                   #  1510  0x79eb5  1      
  nop                                   #  1511  0x79eb6  1      
  nop                                   #  1512  0x79eb7  1      
  nop                                   #  1513  0x79eb8  1      
  nop                                   #  1514  0x79eb9  1      
  nop                                   #  1515  0x79eba  1      
  nop                                   #  1516  0x79ebb  1      
  nop                                   #  1517  0x79ebc  1      
  nop                                   #  1518  0x79ebd  1      
  nop                                   #  1519  0x79ebe  1      
  nop                                   #  1520  0x79ebf  1      
  nop                                   #  1521  0x79ec0  1      
  nop                                   #  1522  0x79ec1  1      
  nop                                   #  1523  0x79ec2  1      
  nop                                   #  1524  0x79ec3  1      
  nop                                   #  1525  0x79ec4  1      
                                                                 
.size _dtoa_r, .-_dtoa_r

