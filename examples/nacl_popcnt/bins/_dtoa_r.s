  .text
  .globl _dtoa_r
  .type _dtoa_r, @function

#! file-offset 0x78760
#! rip-offset  0x78760
#! capacity    8256 bytes

# Text                                  #  Line  RIP      Bytes  
._dtoa_r:                               #        0x78760  0      
  pushq %r14                            #  1     0x78760  3      
  movl %ecx, %ecx                       #  2     0x78763  2      
  movl %r8d, %r8d                       #  3     0x78765  3      
  movl %r9d, %r14d                      #  4     0x78768  3      
  pushq %r13                            #  5     0x7876b  3      
  pushq %r12                            #  6     0x7876e  3      
  pushq %rbx                            #  7     0x78771  2      
  movl %edi, %ebx                       #  8     0x78773  2      
  subl $0xc8, %esp                      #  9     0x78775  3      
  addq %r15, %rsp                       #  10    0x78778  3      
  movsd %xmm0, 0x8(%rsp)                #  11    0x7877b  6      
  movl %ebx, %ebx                       #  12    0x78781  2      
  movl 0x40(%r15,%rbx,1), %eax          #  13    0x78783  5      
  movl %esi, 0x50(%rsp)                 #  14    0x78788  4      
  movl %edx, 0x38(%rsp)                 #  15    0x7878c  4      
  movq %rcx, 0x58(%rsp)                 #  16    0x78790  5      
  movq 0x8(%rsp), %r13                  #  17    0x78795  5      
  testq %rax, %rax                      #  18    0x7879a  3      
  nop                                   #  19    0x7879d  1      
  je .L_78800                           #  20    0x7879e  6      
  movl %ebx, %ebx                       #  21    0x787a4  2      
  movl 0x44(%r15,%rbx,1), %edx          #  22    0x787a6  5      
  movl %ebx, %ebx                       #  23    0x787ab  2      
  movl 0x40(%r15,%rbx,1), %esi          #  24    0x787ad  5      
  movl %ebx, %edi                       #  25    0x787b2  2      
  movq %r8, 0x30(%rsp)                  #  26    0x787b4  5      
  movl %eax, %eax                       #  27    0x787b9  2      
  movl %edx, 0x4(%r15,%rax,1)           #  28    0x787bb  5      
  xchgw %ax, %ax                        #  29    0x787c0  3      
  movl %ebx, %ebx                       #  30    0x787c3  2      
  movl 0x44(%r15,%rbx,1), %ecx          #  31    0x787c5  5      
  movl $0x1, %edx                       #  32    0x787ca  5      
  shll %cl, %edx                        #  33    0x787cf  2      
  movl %eax, %eax                       #  34    0x787d1  2      
  movl %edx, 0x8(%r15,%rax,1)           #  35    0x787d3  5      
  nop                                   #  36    0x787d8  1      
  callq ._Bfree                         #  37    0x787d9  5      
  movq 0x30(%rsp), %r8                  #  38    0x787de  5      
  movl %ebx, %ebx                       #  39    0x787e3  2      
  movl $0x0, 0x40(%r15,%rbx,1)          #  40    0x787e5  9      
  nop                                   #  41    0x787ee  1      
  nop                                   #  42    0x787ef  1      
.L_78800:                               #        0x787f0  0      
  movq %r13, %r12                       #  43    0x787f0  3      
  shrq $0x20, %r12                      #  44    0x787f3  4      
  testl %r12d, %r12d                    #  45    0x787f7  3      
  js .L_78900                           #  46    0x787fa  6      
  movl %r8d, %r8d                       #  47    0x78800  3      
  movl $0x0, (%r15,%r8,1)               #  48    0x78803  8      
  nop                                   #  49    0x7880b  1      
.L_78820:                               #        0x7880c  0      
  movl %r12d, %eax                      #  50    0x7880c  3      
  andl $0x7ff00000, %eax                #  51    0x7880f  5      
  cmpl $0x7ff00000, %eax                #  52    0x78814  5      
  je .L_788a0                           #  53    0x78819  6      
  movq %r13, 0x8(%rsp)                  #  54    0x7881f  5      
  xorpd %xmm2, %xmm2                    #  55    0x78824  4      
  movsd 0x8(%rsp), %xmm1                #  56    0x78828  6      
  xchgw %ax, %ax                        #  57    0x7882e  3      
  ucomisd %xmm2, %xmm1                  #  58    0x78831  4      
  jne .L_78940                          #  59    0x78835  6      
  jp .L_78940                           #  60    0x7883b  6      
  movq 0x58(%rsp), %rdx                 #  61    0x78841  5      
  testq %r14, %r14                      #  62    0x78846  3      
  movl $0x100202fc, %eax                #  63    0x78849  5      
  nop                                   #  64    0x7884e  1      
  movl %edx, %edx                       #  65    0x7884f  2      
  movl $0x1, (%r15,%rdx,1)              #  66    0x78851  8      
  je .L_78880                           #  67    0x78859  6      
  movl %r14d, %r14d                     #  68    0x7885f  3      
  movl $0x100202fd, (%r15,%r14,1)       #  69    0x78862  8      
  nop                                   #  70    0x7886a  1      
.L_78880:                               #        0x7886b  0      
  addl $0xc8, %esp                      #  71    0x7886b  3      
  addq %r15, %rsp                       #  72    0x7886e  3      
  popq %rbx                             #  73    0x78871  2      
  popq %r12                             #  74    0x78873  3      
  popq %r13                             #  75    0x78876  3      
  popq %r14                             #  76    0x78879  3      
  popq %r11                             #  77    0x7887c  3      
  andl $0xffffffe0, %r11d               #  78    0x7887f  7      
  addq %r15, %r11                       #  79    0x78886  3      
  jmpq %r11                             #  80    0x78889  3      
  nop                                   #  81    0x7888c  1      
.L_788a0:                               #        0x7888d  0      
  movq 0x58(%rsp), %rax                 #  82    0x7888d  5      
  movq $0xfffffffffffff, %rdx           #  83    0x78892  10     
  testq %rdx, %r13                      #  84    0x7889c  3      
  movl $0x10024254, %edx                #  85    0x7889f  5      
  nop                                   #  86    0x788a4  1      
  movl %eax, %eax                       #  87    0x788a5  2      
  movl $0x270f, (%r15,%rax,1)           #  88    0x788a7  8      
  movl $0x10024250, %eax                #  89    0x788af  5      
  cmoveq %rdx, %rax                     #  90    0x788b4  4      
  testq %r14, %r14                      #  91    0x788b8  3      
  je .L_78880                           #  92    0x788bb  6      
  leal 0x3(%rax), %edx                  #  93    0x788c1  3      
  leal 0x8(%rax), %ecx                  #  94    0x788c4  3      
  xchgw %ax, %ax                        #  95    0x788c7  3      
  movl %edx, %edx                       #  96    0x788ca  2      
  cmpb $0x0, (%r15,%rdx,1)              #  97    0x788cc  5      
  cmovneq %rcx, %rdx                    #  98    0x788d1  4      
  movl %r14d, %r14d                     #  99    0x788d5  3      
  movl %edx, (%r15,%r14,1)              #  100   0x788d8  4      
  jmpq .L_78880                         #  101   0x788dc  5      
  nop                                   #  102   0x788e1  1      
.L_78900:                               #        0x788e2  0      
  andl $0x7fffffff, %r12d               #  103   0x788e2  7      
  andl $0xffffffff, %r13d               #  104   0x788e9  7      
  movl %r8d, %r8d                       #  105   0x788f0  3      
  movl $0x1, (%r15,%r8,1)               #  106   0x788f3  8      
  movq %r12, %rax                       #  107   0x788fb  3      
  shlq $0x20, %rax                      #  108   0x788fe  4      
  orq %rax, %r13                        #  109   0x78902  3      
  jmpq .L_78820                         #  110   0x78905  5      
  nop                                   #  111   0x7890a  1      
  nop                                   #  112   0x7890b  1      
.L_78940:                               #        0x7890c  0      
  leal 0xbc(%rsp), %edx                 #  113   0x7890c  7      
  movapd %xmm1, %xmm0                   #  114   0x78913  4      
  leal 0xb8(%rsp), %esi                 #  115   0x78917  7      
  movl %ebx, %edi                       #  116   0x7891e  2      
  movsd %xmm1, 0x20(%rsp)               #  117   0x78920  6      
  movsd %xmm2, 0x10(%rsp)               #  118   0x78926  6      
  nop                                   #  119   0x7892c  1      
  nop                                   #  120   0x7892d  1      
  callq .__d2b                          #  121   0x7892e  5      
  movl %r12d, %edx                      #  122   0x78933  3      
  movl %eax, %eax                       #  123   0x78936  2      
  shrl $0x14, %edx                      #  124   0x78938  3      
  movq %rax, 0x60(%rsp)                 #  125   0x7893b  5      
  andl $0x7ff, %edx                     #  126   0x78940  6      
  movsd 0x20(%rsp), %xmm1               #  127   0x78946  6      
  movsd 0x10(%rsp), %xmm2               #  128   0x7894c  6      
  nop                                   #  129   0x78952  1      
  jne .L_78f20                          #  130   0x78953  6      
  movl 0xbc(%rsp), %eax                 #  131   0x78959  7      
  movl 0xb8(%rsp), %esi                 #  132   0x78960  7      
  addl %eax, %esi                       #  133   0x78967  2      
  leal 0x432(%rsi), %edx                #  134   0x78969  6      
  cmpl $0x20, %edx                      #  135   0x7896f  3      
  nop                                   #  136   0x78972  1      
  jle .L_79940                          #  137   0x78973  6      
  movl $0x40, %ecx                      #  138   0x78979  5      
  subl %edx, %ecx                       #  139   0x7897e  2      
  shll %cl, %r12d                       #  140   0x78980  3      
  leal 0x412(%rsi), %ecx                #  141   0x78983  6      
  movl %r13d, %esi                      #  142   0x78989  3      
  shrl %cl, %esi                        #  143   0x7898c  2      
  orl %esi, %r12d                       #  144   0x7898e  3      
  xchgw %ax, %ax                        #  145   0x78991  3      
.L_789e0:                               #        0x78994  0      
  movl %r12d, %r12d                     #  146   0x78994  3      
  subl $0x433, %edx                     #  147   0x78997  6      
  movl $0x1, 0x8c(%rsp)                 #  148   0x7899d  11     
  cvtsi2sdq %r12, %xmm0                 #  149   0x789a8  5      
  movsd %xmm0, 0x8(%rsp)                #  150   0x789ad  6      
  nop                                   #  151   0x789b3  1      
  movq 0x8(%rsp), %r12                  #  152   0x789b4  5      
  movq %r12, %rcx                       #  153   0x789b9  3      
  andl $0xffffffff, %r12d               #  154   0x789bc  7      
  shrq $0x20, %rcx                      #  155   0x789c3  4      
  subl $0x1f00000, %ecx                 #  156   0x789c7  6      
  shlq $0x20, %rcx                      #  157   0x789cd  4      
  orq %rcx, %r12                        #  158   0x789d1  3      
  nop                                   #  159   0x789d4  1      
.L_78a20:                               #        0x789d5  0      
  movq %r12, 0x8(%rsp)                  #  160   0x789d5  5      
  cvtsi2sdl %edx, %xmm3                 #  161   0x789da  4      
  movsd 0x8(%rsp), %xmm0                #  162   0x789de  6      
  subsd 0xffab874(%rip), %xmm0          #  163   0x789e4  8      
  mulsd 0xffab874(%rip), %xmm0          #  164   0x789ec  8      
  nop                                   #  165   0x789f4  1      
  mulsd 0xffab87b(%rip), %xmm3          #  166   0x789f5  8      
  addsd 0xffab86b(%rip), %xmm0          #  167   0x789fd  8      
  addsd %xmm3, %xmm0                    #  168   0x78a05  4      
  cvttsd2si %xmm0, %ecx                 #  169   0x78a09  4      
  ucomisd %xmm0, %xmm2                  #  170   0x78a0d  4      
  movl %ecx, 0x40(%rsp)                 #  171   0x78a11  4      
  jbe .L_78a80                          #  172   0x78a15  6      
  cvtsi2sdl %ecx, %xmm3                 #  173   0x78a1b  4      
  ucomisd %xmm0, %xmm3                  #  174   0x78a1f  4      
  setne %cl                             #  175   0x78a23  3      
  setp %sil                             #  176   0x78a26  4      
  orl %esi, %ecx                        #  177   0x78a2a  2      
  movzbl %cl, %ecx                      #  178   0x78a2c  3      
  subl %ecx, 0x40(%rsp)                 #  179   0x78a2f  4      
  nop                                   #  180   0x78a33  1      
.L_78a80:                               #        0x78a34  0      
  cmpl $0x16, 0x40(%rsp)                #  181   0x78a34  5      
  movl $0x1, 0x88(%rsp)                 #  182   0x78a39  11     
  ja .L_78ae0                           #  183   0x78a44  6      
  movl 0x40(%rsp), %ecx                 #  184   0x78a4a  4      
  nop                                   #  185   0x78a4e  1      
  movl $0x0, 0x88(%rsp)                 #  186   0x78a4f  11     
  shll $0x3, %ecx                       #  187   0x78a5a  3      
  movslq %ecx, %rcx                     #  188   0x78a5d  3      
  movl %ecx, %ecx                       #  189   0x78a60  2      
  movsd 0x100247e0(%r15,%rcx,1), %xmm0  #  190   0x78a62  10     
  nop                                   #  191   0x78a6c  1      
  ucomisd %xmm1, %xmm0                  #  192   0x78a6d  4      
  jbe .L_78ae0                          #  193   0x78a71  6      
  subl $0x1, 0x40(%rsp)                 #  194   0x78a77  5      
  nop                                   #  195   0x78a7c  1      
  nop                                   #  196   0x78a7d  1      
.L_78ae0:                               #        0x78a7e  0      
  subl $0x1, %eax                       #  197   0x78a7e  3      
  subl %edx, %eax                       #  198   0x78a81  2      
  js .L_79920                           #  199   0x78a83  6      
  movl %eax, 0x74(%rsp)                 #  200   0x78a89  4      
  movl $0x0, 0x84(%rsp)                 #  201   0x78a8d  11     
  nop                                   #  202   0x78a98  1      
.L_78b00:                               #        0x78a99  0      
  movl 0x40(%rsp), %ecx                 #  203   0x78a99  4      
  testl %ecx, %ecx                      #  204   0x78a9d  2      
  js .L_798e0                           #  205   0x78a9f  6      
  movl 0x40(%rsp), %eax                 #  206   0x78aa5  4      
  addl %eax, 0x74(%rsp)                 #  207   0x78aa9  4      
  movl $0x0, 0x68(%rsp)                 #  208   0x78aad  8      
  nop                                   #  209   0x78ab5  1      
  movl %eax, 0x90(%rsp)                 #  210   0x78ab6  7      
  nop                                   #  211   0x78abd  1      
  nop                                   #  212   0x78abe  1      
.L_78b40:                               #        0x78abf  0      
  cmpl $0x9, 0x50(%rsp)                 #  213   0x78abf  5      
  ja .L_78f80                           #  214   0x78ac4  6      
  cmpl $0x5, 0x50(%rsp)                 #  215   0x78aca  5      
  jle .L_7a760                          #  216   0x78acf  6      
  subl $0x4, 0x50(%rsp)                 #  217   0x78ad5  5      
  xorl %r12d, %r12d                     #  218   0x78ada  3      
  xorl %eax, %eax                       #  219   0x78add  2      
.L_78b60:                               #        0x78adf  0      
  cmpl $0x3, 0x50(%rsp)                 #  220   0x78adf  5      
  je .L_7a1a0                           #  221   0x78ae4  6      
  jg .L_79960                           #  222   0x78aea  6      
  cmpl $0x2, 0x50(%rsp)                 #  223   0x78af0  5      
  jne .L_78fa0                          #  224   0x78af5  6      
  nop                                   #  225   0x78afb  1      
  movl $0x0, 0x94(%rsp)                 #  226   0x78afc  11     
  nop                                   #  227   0x78b07  1      
  nop                                   #  228   0x78b08  1      
.L_78ba0:                               #        0x78b09  0      
  movl 0x38(%rsp), %edx                 #  229   0x78b09  4      
  testl %edx, %edx                      #  230   0x78b0d  2      
  jle .L_7a300                          #  231   0x78b0f  6      
  movl 0x38(%rsp), %edi                 #  232   0x78b15  4      
  cmpl $0xe, %edi                       #  233   0x78b19  3      
  movl %edi, 0xa4(%rsp)                 #  234   0x78b1c  7      
  nop                                   #  235   0x78b23  1      
  movl %edi, 0x80(%rsp)                 #  236   0x78b24  7      
  setbe %r12b                           #  237   0x78b2b  4      
  andl %eax, %r12d                      #  238   0x78b2f  3      
  nop                                   #  239   0x78b32  1      
  nop                                   #  240   0x78b33  1      
.L_78be0:                               #        0x78b34  0      
  cmpl $0x17, %edi                      #  241   0x78b34  3      
  movl %ebx, %ebx                       #  242   0x78b37  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  243   0x78b39  9      
  jbe .L_79c40                          #  244   0x78b42  6      
  movl $0x1, %edx                       #  245   0x78b48  5      
  movl $0x4, %eax                       #  246   0x78b4d  5      
  xchgw %ax, %ax                        #  247   0x78b52  3      
.L_78c00:                               #        0x78b55  0      
  addl %eax, %eax                       #  248   0x78b55  2      
  movl %edx, %esi                       #  249   0x78b57  2      
  leal 0x14(%rax), %ecx                 #  250   0x78b59  3      
  leal 0x1(%rsi), %edx                  #  251   0x78b5c  3      
  cmpl %edi, %ecx                       #  252   0x78b5f  2      
  jbe .L_78c00                          #  253   0x78b61  6      
  movl %ebx, %ebx                       #  254   0x78b67  2      
  movl %esi, 0x44(%r15,%rbx,1)          #  255   0x78b69  5      
  nop                                   #  256   0x78b6e  1      
.L_78c20:                               #        0x78b6f  0      
  movl %ebx, %edi                       #  257   0x78b6f  2      
  movsd %xmm1, 0x20(%rsp)               #  258   0x78b71  6      
  movsd %xmm2, 0x10(%rsp)               #  259   0x78b77  6      
  nop                                   #  260   0x78b7d  1      
  callq ._Balloc                        #  261   0x78b7e  5      
  testb %r12b, %r12b                    #  262   0x78b83  3      
  movl %eax, %eax                       #  263   0x78b86  2      
  movq %rax, 0x78(%rsp)                 #  264   0x78b88  5      
  movl %ebx, %ebx                       #  265   0x78b8d  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  266   0x78b8f  5      
  movsd 0x20(%rsp), %xmm1               #  267   0x78b94  6      
  movsd 0x10(%rsp), %xmm2               #  268   0x78b9a  6      
  nop                                   #  269   0x78ba0  1      
  je .L_79020                           #  270   0x78ba1  6      
  movl 0x40(%rsp), %eax                 #  271   0x78ba7  4      
  testl %eax, %eax                      #  272   0x78bab  2      
  jle .L_79dc0                          #  273   0x78bad  6      
  movl 0x40(%rsp), %edx                 #  274   0x78bb3  4      
  movapd %xmm1, %xmm4                   #  275   0x78bb7  4      
  movl $0x2, %ecx                       #  276   0x78bbb  5      
  nop                                   #  277   0x78bc0  1      
  leaq (,%rdx,8), %rax                  #  278   0x78bc1  8      
  andl $0x78, %eax                      #  279   0x78bc9  3      
  movl %eax, %eax                       #  280   0x78bcc  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm0  #  281   0x78bce  10     
  movl %edx, %eax                       #  282   0x78bd8  2      
  sarl $0x4, %eax                       #  283   0x78bda  3      
  testb $0x10, %al                      #  284   0x78bdd  2      
  xchgw %ax, %ax                        #  285   0x78bdf  3      
  je .L_78cc0                           #  286   0x78be2  6      
  divsd 0xffabcf0(%rip), %xmm4          #  287   0x78be8  8      
  andl $0xf, %eax                       #  288   0x78bf0  3      
  movb $0x3, %cl                        #  289   0x78bf3  2      
  xchgw %ax, %ax                        #  290   0x78bf5  3      
  nop                                   #  291   0x78bf8  1      
.L_78cc0:                               #        0x78bf9  0      
  testl %eax, %eax                      #  292   0x78bf9  2      
  je .L_78d40                           #  293   0x78bfb  6      
  xorl %edx, %edx                       #  294   0x78c01  2      
  jmpq .L_78d00                         #  295   0x78c03  5      
  nop                                   #  296   0x78c08  1      
  nop                                   #  297   0x78c09  1      
.L_78ce0:                               #        0x78c0a  0      
  addl $0x1, %edx                       #  298   0x78c0a  3      
  nop                                   #  299   0x78c0d  1      
  nop                                   #  300   0x78c0e  1      
.L_78d00:                               #        0x78c0f  0      
  testb $0x1, %al                       #  301   0x78c0f  2      
  je .L_78d20                           #  302   0x78c11  6      
  movl %edx, %esi                       #  303   0x78c17  2      
  addl $0x1, %ecx                       #  304   0x78c19  3      
  movl %esi, %esi                       #  305   0x78c1c  2      
  mulsd 0x100248c0(%r15,%rsi,8), %xmm0  #  306   0x78c1e  10     
  nop                                   #  307   0x78c28  1      
.L_78d20:                               #        0x78c29  0      
  sarl $0x1, %eax                       #  308   0x78c29  2      
  jne .L_78ce0                          #  309   0x78c2b  6      
  nop                                   #  310   0x78c31  1      
  nop                                   #  311   0x78c32  1      
.L_78d40:                               #        0x78c33  0      
  divsd %xmm0, %xmm4                    #  312   0x78c33  4      
  nop                                   #  313   0x78c37  1      
  nop                                   #  314   0x78c38  1      
.L_78d60:                               #        0x78c39  0      
  movl 0x88(%rsp), %r13d                #  315   0x78c39  8      
  testl %r13d, %r13d                    #  316   0x78c41  3      
  je .L_79a20                           #  317   0x78c44  6      
  ucomisd 0xffab62e(%rip), %xmm4        #  318   0x78c4a  8      
  jae .L_79a20                          #  319   0x78c52  6      
  nop                                   #  320   0x78c58  1      
  jp .L_79a20                           #  321   0x78c59  6      
  movl 0x80(%rsp), %r12d                #  322   0x78c5f  8      
  testl %r12d, %r12d                    #  323   0x78c67  3      
  jle .L_79a20                          #  324   0x78c6a  6      
  movl 0xa4(%rsp), %r11d                #  325   0x78c70  8      
  nop                                   #  326   0x78c78  1      
  testl %r11d, %r11d                    #  327   0x78c79  3      
  jle .L_79d40                          #  328   0x78c7c  6      
  addl $0x1, %ecx                       #  329   0x78c82  3      
  mulsd 0xffab5fb(%rip), %xmm4          #  330   0x78c85  8      
  movl 0x40(%rsp), %r13d                #  331   0x78c8d  5      
  cvtsi2sdl %ecx, %xmm0                 #  332   0x78c92  4      
  nop                                   #  333   0x78c96  1      
  movl 0xa4(%rsp), %ecx                 #  334   0x78c97  7      
  subl $0x1, %r13d                      #  335   0x78c9e  4      
  mulsd %xmm4, %xmm0                    #  336   0x78ca2  4      
  addsd 0xffab5e2(%rip), %xmm0          #  337   0x78ca6  8      
  movsd %xmm0, 0x8(%rsp)                #  338   0x78cae  6      
  nop                                   #  339   0x78cb4  1      
  movq 0x8(%rsp), %rsi                  #  340   0x78cb5  5      
  movq %rsi, %rax                       #  341   0x78cba  3      
  andl $0xffffffff, %esi                #  342   0x78cbd  6      
  shrq $0x20, %rax                      #  343   0x78cc3  4      
  subl $0x3400000, %eax                 #  344   0x78cc7  5      
  shlq $0x20, %rax                      #  345   0x78ccc  4      
  orq %rax, %rsi                        #  346   0x78cd0  3      
  nop                                   #  347   0x78cd3  1      
.L_78e00:                               #        0x78cd4  0      
  movl 0x94(%rsp), %r9d                 #  348   0x78cd4  8      
  testl %r9d, %r9d                      #  349   0x78cdc  3      
  je .L_79ec0                           #  350   0x78cdf  6      
  leal -0x8(,%rcx,8), %eax              #  351   0x78ce5  7      
  movsd 0xffab244(%rip), %xmm0          #  352   0x78cec  8      
  movq %rsi, 0x8(%rsp)                  #  353   0x78cf4  5      
  movq 0x78(%rsp), %rdx                 #  354   0x78cf9  5      
  cltq                                  #  355   0x78cfe  2      
  movsd 0x8(%rsp), %xmm3                #  356   0x78d00  6      
  movl %eax, %eax                       #  357   0x78d06  2      
  divsd 0x100247e0(%r15,%rax,1), %xmm0  #  358   0x78d08  10     
  xchgw %ax, %ax                        #  359   0x78d12  3      
  cvttsd2si %xmm4, %eax                 #  360   0x78d15  4      
  subsd %xmm3, %xmm0                    #  361   0x78d19  4      
  cvtsi2sdl %eax, %xmm3                 #  362   0x78d1d  4      
  addl $0x30, %eax                      #  363   0x78d21  3      
  movl %edx, %edx                       #  364   0x78d24  2      
  movb %al, (%r15,%rdx,1)               #  365   0x78d26  4      
  movl 0x78(%rsp), %r12d                #  366   0x78d2a  5      
  addl $0x1, %r12d                      #  367   0x78d2f  4      
  xchgw %ax, %ax                        #  368   0x78d33  3      
  subsd %xmm3, %xmm4                    #  369   0x78d36  4      
  ucomisd %xmm4, %xmm0                  #  370   0x78d3a  4      
  ja .L_79260                           #  371   0x78d3e  6      
  movsd 0xffab534(%rip), %xmm6          #  372   0x78d44  8      
  movapd %xmm6, %xmm3                   #  373   0x78d4c  4      
  subsd %xmm4, %xmm3                    #  374   0x78d50  4      
  xchgw %ax, %ax                        #  375   0x78d54  3      
  ucomisd %xmm3, %xmm0                  #  376   0x78d57  4      
  ja .L_7a1e0                           #  377   0x78d5b  6      
  cmpl $0x1, %ecx                       #  378   0x78d61  3      
  jle .L_79d40                          #  379   0x78d64  6      
  movl $0x1, %edx                       #  380   0x78d6a  5      
  movsd 0xffab511(%rip), %xmm3          #  381   0x78d6f  8      
  jmpq .L_78ee0                         #  382   0x78d77  5      
  nop                                   #  383   0x78d7c  1      
  nop                                   #  384   0x78d7d  1      
.L_78ec0:                               #        0x78d7e  0      
  movapd %xmm6, %xmm5                   #  385   0x78d7e  4      
  subsd %xmm4, %xmm5                    #  386   0x78d82  4      
  ucomisd %xmm5, %xmm0                  #  387   0x78d86  4      
  ja .L_7a1e0                           #  388   0x78d8a  6      
  addl $0x1, %edx                       #  389   0x78d90  3      
  cmpl %ecx, %edx                       #  390   0x78d93  2      
  jge .L_79d40                          #  391   0x78d95  6      
  nop                                   #  392   0x78d9b  1      
.L_78ee0:                               #        0x78d9c  0      
  mulsd %xmm3, %xmm4                    #  393   0x78d9c  4      
  mulsd %xmm3, %xmm0                    #  394   0x78da0  4      
  cvttsd2si %xmm4, %eax                 #  395   0x78da4  4      
  cvtsi2sdl %eax, %xmm5                 #  396   0x78da8  4      
  addl $0x30, %eax                      #  397   0x78dac  3      
  movl %r12d, %r12d                     #  398   0x78daf  3      
  movb %al, (%r15,%r12,1)               #  399   0x78db2  4      
  addl $0x1, %r12d                      #  400   0x78db6  4      
  xchgw %ax, %ax                        #  401   0x78dba  3      
  subsd %xmm5, %xmm4                    #  402   0x78dbd  4      
  ucomisd %xmm4, %xmm0                  #  403   0x78dc1  4      
  jbe .L_78ec0                          #  404   0x78dc5  6      
  jmpq .L_79260                         #  405   0x78dcb  5      
  xchgw %ax, %ax                        #  406   0x78dd0  3      
  nop                                   #  407   0x78dd3  1      
.L_78f20:                               #        0x78dd4  0      
  movsd %xmm1, 0x8(%rsp)                #  408   0x78dd4  6      
  movq 0x8(%rsp), %r12                  #  409   0x78dda  5      
  subl $0x3ff, %edx                     #  410   0x78ddf  6      
  movl $0x0, 0x8c(%rsp)                 #  411   0x78de5  11     
  movq %r12, %rax                       #  412   0x78df0  3      
  nop                                   #  413   0x78df3  1      
  andl $0xffffffff, %r12d               #  414   0x78df4  7      
  shrq $0x20, %rax                      #  415   0x78dfb  4      
  andl $0xfffff, %eax                   #  416   0x78dff  5      
  orq $0x3ff00000, %rax                 #  417   0x78e04  6      
  shlq $0x20, %rax                      #  418   0x78e0a  4      
  orq %rax, %r12                        #  419   0x78e0e  3      
  nop                                   #  420   0x78e11  1      
  movl 0xbc(%rsp), %eax                 #  421   0x78e12  7      
  jmpq .L_78a20                         #  422   0x78e19  5      
  nop                                   #  423   0x78e1e  1      
  nop                                   #  424   0x78e1f  1      
.L_78f80:                               #        0x78e20  0      
  movl $0x0, 0x50(%rsp)                 #  425   0x78e20  8      
  nop                                   #  426   0x78e28  1      
  nop                                   #  427   0x78e29  1      
.L_78fa0:                               #        0x78e2a  0      
  movl %ebx, %ebx                       #  428   0x78e2a  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  429   0x78e2c  9      
  xorl %esi, %esi                       #  430   0x78e35  2      
  movl %ebx, %edi                       #  431   0x78e37  2      
  movsd %xmm2, 0x10(%rsp)               #  432   0x78e39  6      
  nop                                   #  433   0x78e3f  1      
  callq ._Balloc                        #  434   0x78e40  5      
  movl %eax, %eax                       #  435   0x78e45  2      
  movsd 0x10(%rsp), %xmm2               #  436   0x78e47  6      
  movq %rax, 0x78(%rsp)                 #  437   0x78e4d  5      
  movl %ebx, %ebx                       #  438   0x78e52  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  439   0x78e54  5      
  movl $0xffffffff, %eax                #  440   0x78e59  5      
  nop                                   #  441   0x78e5e  1      
  movl $0x0, 0x38(%rsp)                 #  442   0x78e5f  8      
  movl $0xffffffff, 0x80(%rsp)          #  443   0x78e67  11     
  movl $0x1, 0x94(%rsp)                 #  444   0x78e72  11     
  xchgw %ax, %ax                        #  445   0x78e7d  3      
  movl %eax, 0xa4(%rsp)                 #  446   0x78e80  7      
  nop                                   #  447   0x78e87  1      
  nop                                   #  448   0x78e88  1      
.L_79020:                               #        0x78e89  0      
  cmpl $0xe, 0x40(%rsp)                 #  449   0x78e89  5      
  movl 0xb8(%rsp), %eax                 #  450   0x78e8e  7      
  jg .L_792c0                           #  451   0x78e95  6      
  testl %eax, %eax                      #  452   0x78e9b  2      
  js .L_792c0                           #  453   0x78e9d  6      
  movl 0x40(%rsp), %eax                 #  454   0x78ea3  4      
  xchgw %ax, %ax                        #  455   0x78ea7  3      
  movl 0x80(%rsp), %r8d                 #  456   0x78eaa  8      
  shll $0x3, %eax                       #  457   0x78eb2  3      
  testl %r8d, %r8d                      #  458   0x78eb5  3      
  cltq                                  #  459   0x78eb8  2      
  movl %eax, %eax                       #  460   0x78eba  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm4  #  461   0x78ebc  10     
  nop                                   #  462   0x78ec6  1      
  jle .L_79c60                          #  463   0x78ec7  6      
  nop                                   #  464   0x78ecd  1      
  nop                                   #  465   0x78ece  1      
.L_79080:                               #        0x78ecf  0      
  movq %r13, 0x8(%rsp)                  #  466   0x78ecf  5      
  movq 0x78(%rsp), %rcx                 #  467   0x78ed4  5      
  movsd 0x8(%rsp), %xmm0                #  468   0x78ed9  6      
  movapd %xmm0, %xmm1                   #  469   0x78edf  4      
  divsd %xmm4, %xmm1                    #  470   0x78ee3  4      
  cvttsd2si %xmm1, %eax                 #  471   0x78ee7  4      
  cvtsi2sdl %eax, %xmm3                 #  472   0x78eeb  4      
  leal 0x30(%rax), %edx                 #  473   0x78eef  3      
  movl %ecx, %ecx                       #  474   0x78ef2  2      
  movb %dl, (%r15,%rcx,1)               #  475   0x78ef4  4      
  movl 0x78(%rsp), %r12d                #  476   0x78ef8  5      
  addl $0x1, %r12d                      #  477   0x78efd  4      
  cmpl $0x1, 0x80(%rsp)                 #  478   0x78f01  8      
  mulsd %xmm4, %xmm3                    #  479   0x78f09  4      
  xchgw %ax, %ax                        #  480   0x78f0d  3      
  subsd %xmm3, %xmm0                    #  481   0x78f10  4      
  je .L_79180                           #  482   0x78f14  6      
  movsd 0xffab366(%rip), %xmm3          #  483   0x78f1a  8      
  movl $0x1, %edx                       #  484   0x78f22  5      
  mulsd %xmm3, %xmm0                    #  485   0x78f27  4      
  ucomisd %xmm2, %xmm0                  #  486   0x78f2b  4      
  nop                                   #  487   0x78f2f  1      
  je .L_79bc0                           #  488   0x78f30  6      
  nop                                   #  489   0x78f36  1      
  nop                                   #  490   0x78f37  1      
.L_79100:                               #        0x78f38  0      
  movl 0x80(%rsp), %esi                 #  491   0x78f38  7      
  jmpq .L_79140                         #  492   0x78f3f  5      
  nop                                   #  493   0x78f44  1      
  nop                                   #  494   0x78f45  1      
.L_79120:                               #        0x78f46  0      
  mulsd %xmm3, %xmm0                    #  495   0x78f46  4      
  ucomisd %xmm2, %xmm0                  #  496   0x78f4a  4      
  jp .L_79140                           #  497   0x78f4e  6      
  je .L_79be0                           #  498   0x78f54  6      
  nop                                   #  499   0x78f5a  1      
  nop                                   #  500   0x78f5b  1      
.L_79140:                               #        0x78f5c  0      
  movapd %xmm0, %xmm1                   #  501   0x78f5c  4      
  addl $0x1, %edx                       #  502   0x78f60  3      
  divsd %xmm4, %xmm1                    #  503   0x78f63  4      
  cvttsd2si %xmm1, %eax                 #  504   0x78f67  4      
  cvtsi2sdl %eax, %xmm1                 #  505   0x78f6b  4      
  leal 0x30(%rax), %ecx                 #  506   0x78f6f  3      
  movl %r12d, %r12d                     #  507   0x78f72  3      
  movb %cl, (%r15,%r12,1)               #  508   0x78f75  4      
  nop                                   #  509   0x78f79  1      
  addl $0x1, %r12d                      #  510   0x78f7a  4      
  cmpl %edx, %esi                       #  511   0x78f7e  2      
  mulsd %xmm4, %xmm1                    #  512   0x78f80  4      
  subsd %xmm1, %xmm0                    #  513   0x78f84  4      
  jne .L_79120                          #  514   0x78f88  6      
  nop                                   #  515   0x78f8e  1      
  nop                                   #  516   0x78f8f  1      
.L_79180:                               #        0x78f90  0      
  addsd %xmm0, %xmm0                    #  517   0x78f90  4      
  ucomisd %xmm4, %xmm0                  #  518   0x78f94  4      
  ja .L_791c0                           #  519   0x78f98  6      
  ucomisd %xmm0, %xmm4                  #  520   0x78f9e  4      
  jne .L_79be0                          #  521   0x78fa2  6      
  jp .L_79be0                           #  522   0x78fa8  6      
  testb $0x1, %al                       #  523   0x78fae  2      
  nop                                   #  524   0x78fb0  1      
  je .L_79be0                           #  525   0x78fb1  6      
  nop                                   #  526   0x78fb7  1      
  nop                                   #  527   0x78fb8  1      
.L_791c0:                               #        0x78fb9  0      
  movq 0x78(%rsp), %rcx                 #  528   0x78fb9  5      
  jmpq .L_79200                         #  529   0x78fbe  5      
  nop                                   #  530   0x78fc3  1      
  nop                                   #  531   0x78fc4  1      
.L_791e0:                               #        0x78fc5  0      
  movq %rax, %r12                       #  532   0x78fc5  3      
  nop                                   #  533   0x78fc8  1      
  nop                                   #  534   0x78fc9  1      
.L_79200:                               #        0x78fca  0      
  leal -0x1(%r12), %eax                 #  535   0x78fca  5      
  movl %eax, %eax                       #  536   0x78fcf  2      
  movzbl (%r15,%rax,1), %edx            #  537   0x78fd1  5      
  cmpb $0x39, %dl                       #  538   0x78fd6  3      
  jne .L_7a480                          #  539   0x78fd9  6      
  cmpl %ecx, %eax                       #  540   0x78fdf  2      
  jne .L_791e0                          #  541   0x78fe1  6      
  movq 0x78(%rsp), %rax                 #  542   0x78fe7  5      
  xchgw %ax, %ax                        #  543   0x78fec  3      
  addl $0x1, 0x40(%rsp)                 #  544   0x78fef  5      
  movl $0x31, %edx                      #  545   0x78ff4  5      
  movl %eax, %eax                       #  546   0x78ff9  2      
  movb $0x30, (%r15,%rax,1)             #  547   0x78ffb  5      
  movq 0x78(%rsp), %rax                 #  548   0x79000  5      
  nop                                   #  549   0x79005  1      
.L_79240:                               #        0x79006  0      
  movl %eax, %eax                       #  550   0x79006  2      
  movb %dl, (%r15,%rax,1)               #  551   0x79008  4      
  movl 0x40(%rsp), %r13d                #  552   0x7900c  5      
  nop                                   #  553   0x79011  1      
  nop                                   #  554   0x79012  1      
.L_79260:                               #        0x79013  0      
  movl 0x60(%rsp), %esi                 #  555   0x79013  4      
  movl %ebx, %edi                       #  556   0x79017  2      
  addl $0x1, %r13d                      #  557   0x79019  4      
  xchgw %ax, %ax                        #  558   0x7901d  3      
  nop                                   #  559   0x79020  1      
  callq ._Bfree                         #  560   0x79021  5      
  movl %r12d, %r12d                     #  561   0x79026  3      
  movb $0x0, (%r15,%r12,1)              #  562   0x79029  5      
  movq 0x58(%rsp), %rcx                 #  563   0x7902e  5      
  testq %r14, %r14                      #  564   0x79033  3      
  movq 0x78(%rsp), %rax                 #  565   0x79036  5      
  movl %ecx, %ecx                       #  566   0x7903b  2      
  movl %r13d, (%r15,%rcx,1)             #  567   0x7903d  4      
  nop                                   #  568   0x79041  1      
  je .L_78880                           #  569   0x79042  6      
  movl %r14d, %r14d                     #  570   0x79048  3      
  movl %r12d, (%r15,%r14,1)             #  571   0x7904b  4      
  jmpq .L_78880                         #  572   0x7904f  5      
  nop                                   #  573   0x79054  1      
.L_792c0:                               #        0x79055  0      
  movl 0x94(%rsp), %ecx                 #  574   0x79055  7      
  testl %ecx, %ecx                      #  575   0x7905c  2      
  je .L_799e0                           #  576   0x7905e  6      
  cmpl $0x1, 0x50(%rsp)                 #  577   0x79064  5      
  jle .L_7a440                          #  578   0x79069  6      
  nop                                   #  579   0x7906f  1      
  movl 0x80(%rsp), %r12d                #  580   0x79070  8      
  subl $0x1, %r12d                      #  581   0x79078  4      
  cmpl %r12d, 0x68(%rsp)                #  582   0x7907c  5      
  jl .L_7a420                           #  583   0x79081  6      
  movl 0x68(%rsp), %ecx                 #  584   0x79087  4      
  subl %r12d, %ecx                      #  585   0x7908b  3      
  xchgw %ax, %ax                        #  586   0x7908e  3      
  movl %ecx, %r12d                      #  587   0x79091  3      
  nop                                   #  588   0x79094  1      
  nop                                   #  589   0x79095  1      
.L_79320:                               #        0x79096  0      
  movl 0x84(%rsp), %eax                 #  590   0x79096  7      
  movl %eax, 0x8c(%rsp)                 #  591   0x7909d  7      
  movl 0x80(%rsp), %eax                 #  592   0x790a4  7      
  testl %eax, %eax                      #  593   0x790ab  2      
  js .L_7a4a0                           #  594   0x790ad  6      
  nop                                   #  595   0x790b3  1      
.L_79340:                               #        0x790b4  0      
  movl $0x1, %esi                       #  596   0x790b4  5      
  movl %ebx, %edi                       #  597   0x790b9  2      
  addl %eax, 0x84(%rsp)                 #  598   0x790bb  7      
  addl %eax, 0x74(%rsp)                 #  599   0x790c2  4      
  nop                                   #  600   0x790c6  1      
  callq .__i2b                          #  601   0x790c7  5      
  movl %eax, %eax                       #  602   0x790cc  2      
  movq %rax, 0x98(%rsp)                 #  603   0x790ce  8      
  nop                                   #  604   0x790d6  1      
  nop                                   #  605   0x790d7  1      
.L_79380:                               #        0x790d8  0      
  movl 0x74(%rsp), %eax                 #  606   0x790d8  4      
  testl %eax, %eax                      #  607   0x790dc  2      
  jle .L_793c0                          #  608   0x790de  6      
  movl 0x8c(%rsp), %r11d                #  609   0x790e4  8      
  testl %r11d, %r11d                    #  610   0x790ec  3      
  jle .L_793c0                          #  611   0x790ef  6      
  movl 0x8c(%rsp), %ecx                 #  612   0x790f5  7      
  cmpl %ecx, 0x74(%rsp)                 #  613   0x790fc  4      
  movl %ecx, %eax                       #  614   0x79100  2      
  cmovlel 0x74(%rsp), %eax              #  615   0x79102  5      
  subl %eax, 0x84(%rsp)                 #  616   0x79107  7      
  subl %eax, 0x74(%rsp)                 #  617   0x7910e  4      
  subl %eax, %ecx                       #  618   0x79112  2      
  movl %ecx, 0x8c(%rsp)                 #  619   0x79114  7      
  nop                                   #  620   0x7911b  1      
.L_793c0:                               #        0x7911c  0      
  movl 0x68(%rsp), %r10d                #  621   0x7911c  5      
  testl %r10d, %r10d                    #  622   0x79121  3      
  jle .L_79480                          #  623   0x79124  6      
  movl 0x94(%rsp), %r9d                 #  624   0x7912a  8      
  testl %r9d, %r9d                      #  625   0x79132  3      
  je .L_79e60                           #  626   0x79135  6      
  nop                                   #  627   0x7913b  1      
  testl %r12d, %r12d                    #  628   0x7913c  3      
  jle .L_79460                          #  629   0x7913f  6      
  movl 0x98(%rsp), %esi                 #  630   0x79145  7      
  movl %r12d, %edx                      #  631   0x7914c  3      
  movl %ebx, %edi                       #  632   0x7914f  2      
  nop                                   #  633   0x79151  1      
  callq .__pow5mult                     #  634   0x79152  5      
  movl 0x60(%rsp), %edx                 #  635   0x79157  4      
  movl %eax, %eax                       #  636   0x7915b  2      
  movl %ebx, %edi                       #  637   0x7915d  2      
  movl %eax, %esi                       #  638   0x7915f  2      
  movq %rax, 0x98(%rsp)                 #  639   0x79161  8      
  nop                                   #  640   0x79169  1      
  callq .__multiply                     #  641   0x7916a  5      
  movl 0x60(%rsp), %esi                 #  642   0x7916f  4      
  movl %eax, %eax                       #  643   0x79173  2      
  movl %ebx, %edi                       #  644   0x79175  2      
  movq %rax, 0xa8(%rsp)                 #  645   0x79177  8      
  nop                                   #  646   0x7917f  1      
  callq ._Bfree                         #  647   0x79180  5      
  movq 0xa8(%rsp), %rax                 #  648   0x79185  8      
  movq %rax, 0x60(%rsp)                 #  649   0x7918d  5      
  nop                                   #  650   0x79192  1      
  nop                                   #  651   0x79193  1      
.L_79460:                               #        0x79194  0      
  movl 0x68(%rsp), %edx                 #  652   0x79194  4      
  subl %r12d, %edx                      #  653   0x79198  3      
  jne .L_79e80                          #  654   0x7919b  6      
  nop                                   #  655   0x791a1  1      
  nop                                   #  656   0x791a2  1      
.L_79480:                               #        0x791a3  0      
  movl $0x1, %esi                       #  657   0x791a3  5      
  movl %ebx, %edi                       #  658   0x791a8  2      
  nop                                   #  659   0x791aa  1      
  nop                                   #  660   0x791ab  1      
  callq .__i2b                          #  661   0x791ac  5      
  movl 0x90(%rsp), %r8d                 #  662   0x791b1  8      
  movl %eax, %eax                       #  663   0x791b9  2      
  movq %rax, 0x68(%rsp)                 #  664   0x791bb  5      
  testl %r8d, %r8d                      #  665   0x791c0  3      
  jle .L_79500                          #  666   0x791c3  6      
  movl 0x90(%rsp), %edx                 #  667   0x791c9  7      
  movl %eax, %esi                       #  668   0x791d0  2      
  movl %ebx, %edi                       #  669   0x791d2  2      
  nop                                   #  670   0x791d4  1      
  nop                                   #  671   0x791d5  1      
  nop                                   #  672   0x791d6  1      
  callq .__pow5mult                     #  673   0x791d7  5      
  movl %eax, %eax                       #  674   0x791dc  2      
  movq %rax, 0x68(%rsp)                 #  675   0x791de  5      
  nop                                   #  676   0x791e3  1      
  nop                                   #  677   0x791e4  1      
.L_79500:                               #        0x791e5  0      
  cmpl $0x1, 0x50(%rsp)                 #  678   0x791e5  5      
  jle .L_7a340                          #  679   0x791ea  6      
  nop                                   #  680   0x791f0  1      
  nop                                   #  681   0x791f1  1      
.L_79520:                               #        0x791f2  0      
  movl $0x0, 0xa8(%rsp)                 #  682   0x791f2  11     
  nop                                   #  683   0x791fd  1      
  nop                                   #  684   0x791fe  1      
.L_79540:                               #        0x791ff  0      
  movl 0x90(%rsp), %edi                 #  685   0x791ff  7      
  movl $0x1, %eax                       #  686   0x79206  5      
  testl %edi, %edi                      #  687   0x7920b  2      
  jne .L_7a2a0                          #  688   0x7920d  6      
  nop                                   #  689   0x79213  1      
.L_79560:                               #        0x79214  0      
  movl 0x74(%rsp), %ecx                 #  690   0x79214  4      
  leal (%rax,%rcx,1), %edx              #  691   0x79218  3      
  movl $0x1c, %eax                      #  692   0x7921b  5      
  andl $0x1f, %edx                      #  693   0x79220  3      
  jne .L_79d00                          #  694   0x79223  6      
  nop                                   #  695   0x79229  1      
.L_79580:                               #        0x7922a  0      
  addl %eax, 0x84(%rsp)                 #  696   0x7922a  7      
  addl %eax, 0x8c(%rsp)                 #  697   0x79231  7      
  addl %eax, 0x74(%rsp)                 #  698   0x79238  4      
  nop                                   #  699   0x7923c  1      
.L_795a0:                               #        0x7923d  0      
  movl 0x84(%rsp), %esi                 #  700   0x7923d  7      
  testl %esi, %esi                      #  701   0x79244  2      
  jle .L_795e0                          #  702   0x79246  6      
  movl 0x84(%rsp), %edx                 #  703   0x7924c  7      
  movl 0x60(%rsp), %esi                 #  704   0x79253  4      
  movl %ebx, %edi                       #  705   0x79257  2      
  nop                                   #  706   0x79259  1      
  callq .__lshift                       #  707   0x7925a  5      
  movl %eax, %eax                       #  708   0x7925f  2      
  movq %rax, 0x60(%rsp)                 #  709   0x79261  5      
  nop                                   #  710   0x79266  1      
  nop                                   #  711   0x79267  1      
.L_795e0:                               #        0x79268  0      
  movl 0x74(%rsp), %ecx                 #  712   0x79268  4      
  testl %ecx, %ecx                      #  713   0x7926c  2      
  jle .L_79620                          #  714   0x7926e  6      
  movl 0x74(%rsp), %edx                 #  715   0x79274  4      
  movl 0x68(%rsp), %esi                 #  716   0x79278  4      
  movl %ebx, %edi                       #  717   0x7927c  2      
  nop                                   #  718   0x7927e  1      
  callq .__lshift                       #  719   0x7927f  5      
  movl %eax, %eax                       #  720   0x79284  2      
  movq %rax, 0x68(%rsp)                 #  721   0x79286  5      
  nop                                   #  722   0x7928b  1      
  nop                                   #  723   0x7928c  1      
.L_79620:                               #        0x7928d  0      
  movl 0x88(%rsp), %edx                 #  724   0x7928d  7      
  testl %edx, %edx                      #  725   0x79294  2      
  jne .L_7a200                          #  726   0x79296  6      
  xchgw %ax, %ax                        #  727   0x7929c  3      
  nop                                   #  728   0x7929f  1      
.L_79640:                               #        0x792a0  0      
  movl 0x80(%rsp), %r12d                #  729   0x792a0  8      
  testl %r12d, %r12d                    #  730   0x792a8  3      
  jle .L_7a3a0                          #  731   0x792ab  6      
  nop                                   #  732   0x792b1  1      
.L_79660:                               #        0x792b2  0      
  movl 0x94(%rsp), %r10d                #  733   0x792b2  8      
  movq 0x78(%rsp), %r12                 #  734   0x792ba  5      
  movl $0x1, %eax                       #  735   0x792bf  5      
  testl %r10d, %r10d                    #  736   0x792c4  3      
  je .L_7a000                           #  737   0x792c7  6      
  nop                                   #  738   0x792cd  1      
  movl 0x8c(%rsp), %r9d                 #  739   0x792ce  8      
  testl %r9d, %r9d                      #  740   0x792d6  3      
  jle .L_796e0                          #  741   0x792d9  6      
  movl 0x8c(%rsp), %edx                 #  742   0x792df  7      
  movl 0x98(%rsp), %esi                 #  743   0x792e6  7      
  movl %ebx, %edi                       #  744   0x792ed  2      
  nop                                   #  745   0x792ef  1      
  nop                                   #  746   0x792f0  1      
  nop                                   #  747   0x792f1  1      
  callq .__lshift                       #  748   0x792f2  5      
  movl %eax, %eax                       #  749   0x792f7  2      
  movq %rax, 0x98(%rsp)                 #  750   0x792f9  8      
  nop                                   #  751   0x79301  1      
  nop                                   #  752   0x79302  1      
.L_796e0:                               #        0x79303  0      
  movl 0xa8(%rsp), %r8d                 #  753   0x79303  8      
  movq 0x98(%rsp), %rax                 #  754   0x7930b  8      
  testl %r8d, %r8d                      #  755   0x79313  3      
  movq %rax, 0x38(%rsp)                 #  756   0x79316  5      
  jne .L_7a5e0                          #  757   0x7931b  6      
  xchgw %ax, %ax                        #  758   0x79321  3      
.L_79700:                               #        0x79324  0      
  andl $0x1, %r13d                      #  759   0x79324  4      
  movq 0x78(%rsp), %r12                 #  760   0x79328  5      
  movl %r13d, 0x88(%rsp)                #  761   0x7932d  8      
  movq 0x98(%rsp), %r13                 #  762   0x79335  8      
  nop                                   #  763   0x7933d  1      
.L_79720:                               #        0x7933e  0      
  movl 0x68(%rsp), %esi                 #  764   0x7933e  4      
  movl 0x60(%rsp), %edi                 #  765   0x79342  4      
  nop                                   #  766   0x79346  1      
  nop                                   #  767   0x79347  1      
  callq .quorem                         #  768   0x79348  5      
  movl 0x60(%rsp), %edi                 #  769   0x7934d  4      
  addl $0x30, %eax                      #  770   0x79351  3      
  movl %r13d, %esi                      #  771   0x79354  3      
  movl %eax, 0x74(%rsp)                 #  772   0x79357  4      
  nop                                   #  773   0x7935b  1      
  callq .__mcmp                         #  774   0x7935c  5      
  movl 0x38(%rsp), %edx                 #  775   0x79361  4      
  movl 0x68(%rsp), %esi                 #  776   0x79365  4      
  movl %ebx, %edi                       #  777   0x79369  2      
  movl %eax, 0x84(%rsp)                 #  778   0x7936b  7      
  nop                                   #  779   0x79372  1      
  callq .__mdiff                        #  780   0x79373  5      
  movl %eax, %edx                       #  781   0x79378  2      
  movl $0x1, %eax                       #  782   0x7937a  5      
  movl %edx, %edx                       #  783   0x7937f  2      
  movl 0xc(%r15,%rdx,1), %edi           #  784   0x79381  5      
  testl %edi, %edi                      #  785   0x79386  2      
  je .L_79b80                           #  786   0x79388  6      
  nop                                   #  787   0x7938e  1      
.L_797a0:                               #        0x7938f  0      
  movl %edx, %esi                       #  788   0x7938f  2      
  movl %ebx, %edi                       #  789   0x79391  2      
  movl %eax, 0x30(%rsp)                 #  790   0x79393  4      
  nop                                   #  791   0x79397  1      
  nop                                   #  792   0x79398  1      
  callq ._Bfree                         #  793   0x79399  5      
  movl 0x30(%rsp), %eax                 #  794   0x7939e  4      
  testl %eax, %eax                      #  795   0x793a2  2      
  jne .L_797e0                          #  796   0x793a4  6      
  movl 0x50(%rsp), %esi                 #  797   0x793aa  4      
  testl %esi, %esi                      #  798   0x793ae  2      
  jne .L_797e0                          #  799   0x793b0  6      
  movl 0x88(%rsp), %ecx                 #  800   0x793b6  7      
  testl %ecx, %ecx                      #  801   0x793bd  2      
  je .L_7a700                           #  802   0x793bf  6      
  nop                                   #  803   0x793c5  1      
.L_797e0:                               #        0x793c6  0      
  cmpl $0x0, 0x84(%rsp)                 #  804   0x793c6  8      
  jl .L_7a4c0                           #  805   0x793ce  6      
  jne .L_79820                          #  806   0x793d4  6      
  movl 0x50(%rsp), %edx                 #  807   0x793da  4      
  testl %edx, %edx                      #  808   0x793de  2      
  jne .L_79820                          #  809   0x793e0  6      
  movl 0x88(%rsp), %r11d                #  810   0x793e6  8      
  testl %r11d, %r11d                    #  811   0x793ee  3      
  je .L_7a4c0                           #  812   0x793f1  6      
  nop                                   #  813   0x793f7  1      
  nop                                   #  814   0x793f8  1      
.L_79820:                               #        0x793f9  0      
  testl %eax, %eax                      #  815   0x793f9  2      
  jg .L_7a6c0                           #  816   0x793fb  6      
  movzbl 0x74(%rsp), %ecx               #  817   0x79401  5      
  movl %r12d, %r12d                     #  818   0x79406  3      
  movb %cl, (%r15,%r12,1)               #  819   0x79409  4      
  addl $0x1, %r12d                      #  820   0x7940d  4      
  movl %r12d, %eax                      #  821   0x79411  3      
  subl 0x78(%rsp), %eax                 #  822   0x79414  4      
  nop                                   #  823   0x79418  1      
  cmpl 0x80(%rsp), %eax                 #  824   0x79419  7      
  je .L_7a0c0                           #  825   0x79420  6      
  movl 0x60(%rsp), %esi                 #  826   0x79426  4      
  xorl %ecx, %ecx                       #  827   0x7942a  2      
  movl $0xa, %edx                       #  828   0x7942c  5      
  movl %ebx, %edi                       #  829   0x79431  2      
  nop                                   #  830   0x79433  1      
  callq .__multadd                      #  831   0x79434  5      
  cmpl 0x38(%rsp), %r13d                #  832   0x79439  5      
  movl %eax, %eax                       #  833   0x7943e  2      
  movq %rax, 0x60(%rsp)                 #  834   0x79440  5      
  je .L_79d60                           #  835   0x79445  6      
  movl %r13d, %esi                      #  836   0x7944b  3      
  xorl %ecx, %ecx                       #  837   0x7944e  2      
  movl $0xa, %edx                       #  838   0x79450  5      
  movl %ebx, %edi                       #  839   0x79455  2      
  xchgw %ax, %ax                        #  840   0x79457  3      
  nop                                   #  841   0x7945a  1      
  nop                                   #  842   0x7945b  1      
  callq .__multadd                      #  843   0x7945c  5      
  movl 0x38(%rsp), %esi                 #  844   0x79461  4      
  xorl %ecx, %ecx                       #  845   0x79465  2      
  movl $0xa, %edx                       #  846   0x79467  5      
  movl %ebx, %edi                       #  847   0x7946c  2      
  movl %eax, %r13d                      #  848   0x7946e  3      
  nop                                   #  849   0x79471  1      
  callq .__multadd                      #  850   0x79472  5      
  movl %eax, %eax                       #  851   0x79477  2      
  movq %rax, 0x38(%rsp)                 #  852   0x79479  5      
  jmpq .L_79720                         #  853   0x7947e  5      
  nop                                   #  854   0x79483  1      
  nop                                   #  855   0x79484  1      
.L_798e0:                               #        0x79485  0      
  movl 0x40(%rsp), %edx                 #  856   0x79485  4      
  subl %edx, 0x84(%rsp)                 #  857   0x79489  7      
  movl $0x0, 0x90(%rsp)                 #  858   0x79490  11     
  negl %edx                             #  859   0x7949b  2      
  movl %edx, 0x68(%rsp)                 #  860   0x7949d  4      
  nop                                   #  861   0x794a1  1      
  jmpq .L_78b40                         #  862   0x794a2  5      
  nop                                   #  863   0x794a7  1      
  nop                                   #  864   0x794a8  1      
.L_79920:                               #        0x794a9  0      
  negl %eax                             #  865   0x794a9  2      
  movl $0x0, 0x74(%rsp)                 #  866   0x794ab  8      
  movl %eax, 0x84(%rsp)                 #  867   0x794b3  7      
  jmpq .L_78b00                         #  868   0x794ba  5      
  nop                                   #  869   0x794bf  1      
.L_79940:                               #        0x794c0  0      
  movl $0x20, %ecx                      #  870   0x794c0  5      
  movl %r13d, %r12d                     #  871   0x794c5  3      
  subl %edx, %ecx                       #  872   0x794c8  2      
  shll %cl, %r12d                       #  873   0x794ca  3      
  jmpq .L_789e0                         #  874   0x794cd  5      
  nop                                   #  875   0x794d2  1      
.L_79960:                               #        0x794d3  0      
  cmpl $0x4, 0x50(%rsp)                 #  876   0x794d3  5      
  je .L_7a1c0                           #  877   0x794d8  6      
  cmpl $0x5, 0x50(%rsp)                 #  878   0x794de  5      
  jne .L_78fa0                          #  879   0x794e3  6      
  nop                                   #  880   0x794e9  1      
  movl $0x1, 0x94(%rsp)                 #  881   0x794ea  11     
  nop                                   #  882   0x794f5  1      
  nop                                   #  883   0x794f6  1      
.L_799a0:                               #        0x794f7  0      
  movl 0x40(%rsp), %ecx                 #  884   0x794f7  4      
  addl 0x38(%rsp), %ecx                 #  885   0x794fb  4      
  movl %ecx, %edi                       #  886   0x794ff  2      
  movl %ecx, 0xa4(%rsp)                 #  887   0x79501  7      
  addl $0x1, %edi                       #  888   0x79508  3      
  testl %edi, %edi                      #  889   0x7950b  2      
  jle .L_79c00                          #  890   0x7950d  6      
  cmpl $0xe, %edi                       #  891   0x79513  3      
  nop                                   #  892   0x79516  1      
  movl %edi, 0x80(%rsp)                 #  893   0x79517  7      
  setbe %r12b                           #  894   0x7951e  4      
  andl %eax, %r12d                      #  895   0x79522  3      
  jmpq .L_78be0                         #  896   0x79525  5      
  nop                                   #  897   0x7952a  1      
.L_799e0:                               #        0x7952b  0      
  movl 0x84(%rsp), %edx                 #  898   0x7952b  7      
  movl 0x68(%rsp), %r12d                #  899   0x79532  5      
  movq $0x0, 0x98(%rsp)                 #  900   0x79537  12     
  movl %edx, 0x8c(%rsp)                 #  901   0x79543  7      
  nop                                   #  902   0x7954a  1      
  jmpq .L_79380                         #  903   0x7954b  5      
  nop                                   #  904   0x79550  1      
  nop                                   #  905   0x79551  1      
.L_79a20:                               #        0x79552  0      
  cvtsi2sdl %ecx, %xmm0                 #  906   0x79552  4      
  movl 0x80(%rsp), %r10d                #  907   0x79556  8      
  mulsd %xmm4, %xmm0                    #  908   0x7955e  4      
  addsd 0xffaad26(%rip), %xmm0          #  909   0x79562  8      
  movsd %xmm0, 0x8(%rsp)                #  910   0x7956a  6      
  xchgw %ax, %ax                        #  911   0x79570  3      
  movq 0x8(%rsp), %rsi                  #  912   0x79573  5      
  movq %rsi, %rdx                       #  913   0x79578  3      
  movq %rsi, %rax                       #  914   0x7957b  3      
  shrq $0x20, %rdx                      #  915   0x7957e  4      
  andl $0xffffffff, %eax                #  916   0x79582  5      
  subl $0x3400000, %edx                 #  917   0x79587  6      
  shlq $0x20, %rdx                      #  918   0x7958d  4      
  orq %rdx, %rax                        #  919   0x79591  3      
  nop                                   #  920   0x79594  1      
  testl %r10d, %r10d                    #  921   0x79595  3      
  movq %rax, %rsi                       #  922   0x79598  3      
  jne .L_79da0                          #  923   0x7959b  6      
  subsd 0xffaacef(%rip), %xmm4          #  924   0x795a1  8      
  movq %rax, 0x8(%rsp)                  #  925   0x795a9  5      
  movsd 0x8(%rsp), %xmm0                #  926   0x795ae  6      
  nop                                   #  927   0x795b4  1      
  ucomisd %xmm0, %xmm4                  #  928   0x795b5  4      
  ja .L_79ca0                           #  929   0x795b9  6      
  movsd 0xffaa979(%rip), %xmm3          #  930   0x795bf  8      
  xorpd %xmm3, %xmm0                    #  931   0x795c7  4      
  ucomisd %xmm4, %xmm0                  #  932   0x795cb  4      
  jbe .L_79d40                          #  933   0x795cf  6      
.L_79aa0:                               #        0x795d5  0      
  movq $0x0, 0x68(%rsp)                 #  934   0x795d5  9      
  movq $0x0, 0x98(%rsp)                 #  935   0x795de  12     
  nop                                   #  936   0x795ea  1      
.L_79ac0:                               #        0x795eb  0      
  movl 0x38(%rsp), %ecx                 #  937   0x795eb  4      
  movq 0x98(%rsp), %rax                 #  938   0x795ef  8      
  xorl %r13d, %r13d                     #  939   0x795f7  3      
  movq 0x78(%rsp), %r12                 #  940   0x795fa  5      
  notl %ecx                             #  941   0x795ff  2      
  movq %rax, 0x38(%rsp)                 #  942   0x79601  5      
  movl %ecx, 0x40(%rsp)                 #  943   0x79606  4      
  nop                                   #  944   0x7960a  1      
.L_79ae0:                               #        0x7960b  0      
  movl 0x68(%rsp), %esi                 #  945   0x7960b  4      
  movl %ebx, %edi                       #  946   0x7960f  2      
  nop                                   #  947   0x79611  1      
  nop                                   #  948   0x79612  1      
  callq ._Bfree                         #  949   0x79613  5      
  cmpq $0x0, 0x38(%rsp)                 #  950   0x79618  6      
  je .L_79be0                           #  951   0x7961e  6      
  cmpl 0x38(%rsp), %r13d                #  952   0x79624  5      
  je .L_79b40                           #  953   0x79629  6      
  testq %r13, %r13                      #  954   0x7962f  3      
  je .L_79b40                           #  955   0x79632  6      
  movl %r13d, %esi                      #  956   0x79638  3      
  movl %ebx, %edi                       #  957   0x7963b  2      
  nop                                   #  958   0x7963d  1      
  nop                                   #  959   0x7963e  1      
  nop                                   #  960   0x7963f  1      
  callq ._Bfree                         #  961   0x79640  5      
.L_79b40:                               #        0x79645  0      
  movl 0x38(%rsp), %esi                 #  962   0x79645  4      
  movl %ebx, %edi                       #  963   0x79649  2      
  nop                                   #  964   0x7964b  1      
  nop                                   #  965   0x7964c  1      
  callq ._Bfree                         #  966   0x7964d  5      
  movl 0x40(%rsp), %r13d                #  967   0x79652  5      
  jmpq .L_79260                         #  968   0x79657  5      
  nop                                   #  969   0x7965c  1      
  nop                                   #  970   0x7965d  1      
.L_79b80:                               #        0x7965e  0      
  movl 0x60(%rsp), %edi                 #  971   0x7965e  4      
  movl %edx, %esi                       #  972   0x79662  2      
  movq %rdx, 0x30(%rsp)                 #  973   0x79664  5      
  nop                                   #  974   0x79669  1      
  nop                                   #  975   0x7966a  1      
  callq .__mcmp                         #  976   0x7966b  5      
  movq 0x30(%rsp), %rdx                 #  977   0x79670  5      
  jmpq .L_797a0                         #  978   0x79675  5      
  nop                                   #  979   0x7967a  1      
  nop                                   #  980   0x7967b  1      
.L_79bc0:                               #        0x7967c  0      
  jp .L_79100                           #  981   0x7967c  6      
  nop                                   #  982   0x79682  1      
  nop                                   #  983   0x79683  1      
.L_79be0:                               #        0x79684  0      
  movl 0x40(%rsp), %r13d                #  984   0x79684  5      
  jmpq .L_79260                         #  985   0x79689  5      
  nop                                   #  986   0x7968e  1      
  nop                                   #  987   0x7968f  1      
.L_79c00:                               #        0x79690  0      
  cmpl $0xe, %edi                       #  988   0x79690  3      
  movl %edi, 0x80(%rsp)                 #  989   0x79693  7      
  setbe %al                             #  990   0x7969a  3      
  nop                                   #  991   0x7969d  1      
  nop                                   #  992   0x7969e  1      
.L_79c20:                               #        0x7969f  0      
  movl %ebx, %ebx                       #  993   0x7969f  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  994   0x796a1  9      
  andl %eax, %r12d                      #  995   0x796aa  3      
  nop                                   #  996   0x796ad  1      
  nop                                   #  997   0x796ae  1      
.L_79c40:                               #        0x796af  0      
  xorl %esi, %esi                       #  998   0x796af  2      
  jmpq .L_78c20                         #  999   0x796b1  5      
  nop                                   #  1000  0x796b6  1      
  nop                                   #  1001  0x796b7  1      
.L_79c60:                               #        0x796b8  0      
  movl 0x38(%rsp), %edi                 #  1002  0x796b8  4      
  testl %edi, %edi                      #  1003  0x796bc  2      
  jns .L_79080                          #  1004  0x796be  6      
  movl 0x80(%rsp), %esi                 #  1005  0x796c4  7      
  testl %esi, %esi                      #  1006  0x796cb  2      
  jne .L_79aa0                          #  1007  0x796cd  6      
  nop                                   #  1008  0x796d3  1      
  mulsd 0xffaabbc(%rip), %xmm4          #  1009  0x796d4  8      
  movq %r13, 0x8(%rsp)                  #  1010  0x796dc  5      
  movsd 0x8(%rsp), %xmm0                #  1011  0x796e1  6      
  ucomisd %xmm0, %xmm4                  #  1012  0x796e7  4      
  jae .L_79aa0                          #  1013  0x796eb  6      
  nop                                   #  1014  0x796f1  1      
.L_79ca0:                               #        0x796f2  0      
  movq $0x0, 0x68(%rsp)                 #  1015  0x796f2  9      
  movq $0x0, 0x98(%rsp)                 #  1016  0x796fb  12     
  nop                                   #  1017  0x79707  1      
.L_79cc0:                               #        0x79708  0      
  movq 0x78(%rsp), %rdx                 #  1018  0x79708  5      
  xorl %r13d, %r13d                     #  1019  0x7970d  3      
  movl %edx, %edx                       #  1020  0x79710  2      
  movb $0x31, (%r15,%rdx,1)             #  1021  0x79712  5      
  movl 0x78(%rsp), %r12d                #  1022  0x79717  5      
  movq 0x98(%rsp), %rcx                 #  1023  0x7971c  8      
  nop                                   #  1024  0x79724  1      
  addl $0x1, 0x40(%rsp)                 #  1025  0x79725  5      
  addl $0x1, %r12d                      #  1026  0x7972a  4      
  movq %rcx, 0x38(%rsp)                 #  1027  0x7972e  5      
  jmpq .L_79ae0                         #  1028  0x79733  5      
  nop                                   #  1029  0x79738  1      
.L_79d00:                               #        0x79739  0      
  movb $0x20, %al                       #  1030  0x79739  2      
  subl %edx, %eax                       #  1031  0x7973b  2      
  cmpl $0x4, %eax                       #  1032  0x7973d  3      
  jle .L_7a780                          #  1033  0x79740  6      
  subl $0x4, %eax                       #  1034  0x79746  3      
  addl %eax, 0x84(%rsp)                 #  1035  0x79749  7      
  addl %eax, 0x8c(%rsp)                 #  1036  0x79750  7      
  xchgw %ax, %ax                        #  1037  0x79757  3      
  addl %eax, 0x74(%rsp)                 #  1038  0x7975a  4      
  jmpq .L_795a0                         #  1039  0x7975e  5      
  nop                                   #  1040  0x79763  1      
  nop                                   #  1041  0x79764  1      
.L_79d40:                               #        0x79765  0      
  movsd %xmm1, 0x8(%rsp)                #  1042  0x79765  6      
  movq 0x8(%rsp), %r13                  #  1043  0x7976b  5      
  jmpq .L_79020                         #  1044  0x79770  5      
  nop                                   #  1045  0x79775  1      
  nop                                   #  1046  0x79776  1      
.L_79d60:                               #        0x79777  0      
  movl %r13d, %esi                      #  1047  0x79777  3      
  xorl %ecx, %ecx                       #  1048  0x7977a  2      
  movl $0xa, %edx                       #  1049  0x7977c  5      
  movl %ebx, %edi                       #  1050  0x79781  2      
  nop                                   #  1051  0x79783  1      
  callq .__multadd                      #  1052  0x79784  5      
  movl %eax, %r13d                      #  1053  0x79789  3      
  movq %r13, 0x38(%rsp)                 #  1054  0x7978c  5      
  jmpq .L_79720                         #  1055  0x79791  5      
  nop                                   #  1056  0x79796  1      
  nop                                   #  1057  0x79797  1      
.L_79da0:                               #        0x79798  0      
  movl 0x40(%rsp), %r13d                #  1058  0x79798  5      
  movl 0x80(%rsp), %ecx                 #  1059  0x7979d  7      
  jmpq .L_78e00                         #  1060  0x797a4  5      
  nop                                   #  1061  0x797a9  1      
.L_79dc0:                               #        0x797aa  0      
  movl 0x40(%rsp), %edx                 #  1062  0x797aa  4      
  movapd %xmm1, %xmm4                   #  1063  0x797ae  4      
  movl $0x2, %ecx                       #  1064  0x797b2  5      
  negl %edx                             #  1065  0x797b7  2      
  je .L_78d60                           #  1066  0x797b9  6      
  leaq (,%rdx,8), %rax                  #  1067  0x797bf  8      
  xorl %esi, %esi                       #  1068  0x797c7  2      
  nop                                   #  1069  0x797c9  1      
  andl $0x78, %eax                      #  1070  0x797ca  3      
  movl %eax, %eax                       #  1071  0x797cd  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm4  #  1072  0x797cf  10     
  movl %edx, %eax                       #  1073  0x797d9  2      
  sarl $0x4, %eax                       #  1074  0x797db  3      
  testl %eax, %eax                      #  1075  0x797de  2      
  jne .L_79e20                          #  1076  0x797e0  6      
  jmpq .L_78d60                         #  1077  0x797e6  5      
  nop                                   #  1078  0x797eb  1      
.L_79e00:                               #        0x797ec  0      
  addl $0x1, %esi                       #  1079  0x797ec  3      
  nop                                   #  1080  0x797ef  1      
  nop                                   #  1081  0x797f0  1      
.L_79e20:                               #        0x797f1  0      
  testb $0x1, %al                       #  1082  0x797f1  2      
  je .L_79e40                           #  1083  0x797f3  6      
  movl %esi, %edx                       #  1084  0x797f9  2      
  addl $0x1, %ecx                       #  1085  0x797fb  3      
  movl %edx, %edx                       #  1086  0x797fe  2      
  mulsd 0x100248c0(%r15,%rdx,8), %xmm4  #  1087  0x79800  10     
  nop                                   #  1088  0x7980a  1      
.L_79e40:                               #        0x7980b  0      
  sarl $0x1, %eax                       #  1089  0x7980b  2      
  jne .L_79e00                          #  1090  0x7980d  6      
  jmpq .L_78d60                         #  1091  0x79813  5      
  nop                                   #  1092  0x79818  1      
  nop                                   #  1093  0x79819  1      
.L_79e60:                               #        0x7981a  0      
  movl 0x68(%rsp), %edx                 #  1094  0x7981a  4      
  nop                                   #  1095  0x7981e  1      
  nop                                   #  1096  0x7981f  1      
.L_79e80:                               #        0x79820  0      
  movl 0x60(%rsp), %esi                 #  1097  0x79820  4      
  movl %ebx, %edi                       #  1098  0x79824  2      
  nop                                   #  1099  0x79826  1      
  nop                                   #  1100  0x79827  1      
  callq .__pow5mult                     #  1101  0x79828  5      
  movl %eax, %eax                       #  1102  0x7982d  2      
  movq %rax, 0x60(%rsp)                 #  1103  0x7982f  5      
  jmpq .L_79480                         #  1104  0x79834  5      
  nop                                   #  1105  0x79839  1      
  nop                                   #  1106  0x7983a  1      
.L_79ec0:                               #        0x7983b  0      
  movq %rsi, 0x8(%rsp)                  #  1107  0x7983b  5      
  leal -0x8(,%rcx,8), %eax              #  1108  0x79840  7      
  movq 0x78(%rsp), %rdx                 #  1109  0x79847  5      
  movsd 0x8(%rsp), %xmm5                #  1110  0x7984c  6      
  cltq                                  #  1111  0x79852  2      
  nop                                   #  1112  0x79854  1      
  movl %eax, %eax                       #  1113  0x79855  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm5  #  1114  0x79857  10     
  cvttsd2si %xmm4, %eax                 #  1115  0x79861  4      
  cvtsi2sdl %eax, %xmm0                 #  1116  0x79865  4      
  addl $0x30, %eax                      #  1117  0x79869  3      
  movl %edx, %edx                       #  1118  0x7986c  2      
  movb %al, (%r15,%rdx,1)               #  1119  0x7986e  4      
  nop                                   #  1120  0x79872  1      
  movl 0x78(%rsp), %r12d                #  1121  0x79873  5      
  addl $0x1, %r12d                      #  1122  0x79878  4      
  cmpl $0x1, %ecx                       #  1123  0x7987c  3      
  subsd %xmm0, %xmm4                    #  1124  0x7987f  4      
  movapd %xmm4, %xmm0                   #  1125  0x79883  4      
  je .L_79f80                           #  1126  0x79887  6      
  movl 0x78(%rsp), %eax                 #  1127  0x7988d  4      
  nop                                   #  1128  0x79891  1      
  movsd 0xffaa9ee(%rip), %xmm3          #  1129  0x79892  8      
  leal (%rcx,%rax,1), %esi              #  1130  0x7989a  3      
  movq %r12, %rax                       #  1131  0x7989d  3      
  nop                                   #  1132  0x798a0  1      
  nop                                   #  1133  0x798a1  1      
.L_79f40:                               #        0x798a2  0      
  mulsd %xmm3, %xmm0                    #  1134  0x798a2  4      
  cvttsd2si %xmm0, %edx                 #  1135  0x798a6  4      
  cvtsi2sdl %edx, %xmm4                 #  1136  0x798aa  4      
  addl $0x30, %edx                      #  1137  0x798ae  3      
  movl %eax, %eax                       #  1138  0x798b1  2      
  movb %dl, (%r15,%rax,1)               #  1139  0x798b3  4      
  addl $0x1, %eax                       #  1140  0x798b7  3      
  cmpl %esi, %eax                       #  1141  0x798ba  2      
  subsd %xmm4, %xmm0                    #  1142  0x798bc  4      
  xchgw %ax, %ax                        #  1143  0x798c0  3      
  jne .L_79f40                          #  1144  0x798c3  6      
  leal -0x1(%rcx,%r12,1), %r12d         #  1145  0x798c9  5      
  nop                                   #  1146  0x798ce  1      
  nop                                   #  1147  0x798cf  1      
.L_79f80:                               #        0x798d0  0      
  movsd 0xffaa660(%rip), %xmm3          #  1148  0x798d0  8      
  movapd %xmm5, %xmm4                   #  1149  0x798d8  4      
  addsd %xmm3, %xmm4                    #  1150  0x798dc  4      
  ucomisd %xmm4, %xmm0                  #  1151  0x798e0  4      
  ja .L_7a1e0                           #  1152  0x798e4  6      
  subsd %xmm5, %xmm3                    #  1153  0x798ea  4      
  xchgw %ax, %ax                        #  1154  0x798ee  3      
  ucomisd %xmm0, %xmm3                  #  1155  0x798f1  4      
  jbe .L_79d40                          #  1156  0x798f5  6      
  jmpq .L_79fe0                         #  1157  0x798fb  5      
  nop                                   #  1158  0x79900  1      
  nop                                   #  1159  0x79901  1      
.L_79fc0:                               #        0x79902  0      
  movq %rax, %r12                       #  1160  0x79902  3      
  nop                                   #  1161  0x79905  1      
  nop                                   #  1162  0x79906  1      
.L_79fe0:                               #        0x79907  0      
  leal -0x1(%r12), %eax                 #  1163  0x79907  5      
  movl %eax, %eax                       #  1164  0x7990c  2      
  cmpb $0x30, (%r15,%rax,1)             #  1165  0x7990e  5      
  je .L_79fc0                           #  1166  0x79913  6      
  jmpq .L_79260                         #  1167  0x79919  5      
  nop                                   #  1168  0x7991e  1      
.L_7a000:                               #        0x7991f  0      
  movq %r14, 0x50(%rsp)                 #  1169  0x7991f  5      
  movq 0x60(%rsp), %r13                 #  1170  0x79924  5      
  movq %rbx, %r14                       #  1171  0x79929  3      
  movl %eax, %ebx                       #  1172  0x7992c  2      
  jmpq .L_7a060                         #  1173  0x7992e  5      
  nop                                   #  1174  0x79933  1      
.L_7a020:                               #        0x79934  0      
  movl %r13d, %esi                      #  1175  0x79934  3      
  xorl %ecx, %ecx                       #  1176  0x79937  2      
  movl $0xa, %edx                       #  1177  0x79939  5      
  movl %r14d, %edi                      #  1178  0x7993e  3      
  addl $0x1, %ebx                       #  1179  0x79941  3      
  nop                                   #  1180  0x79944  1      
  callq .__multadd                      #  1181  0x79945  5      
  movl %eax, %r13d                      #  1182  0x7994a  3      
  nop                                   #  1183  0x7994d  1      
  nop                                   #  1184  0x7994e  1      
.L_7a060:                               #        0x7994f  0      
  movl 0x68(%rsp), %esi                 #  1185  0x7994f  4      
  movl %r13d, %edi                      #  1186  0x79953  3      
  nop                                   #  1187  0x79956  1      
  nop                                   #  1188  0x79957  1      
  callq .quorem                         #  1189  0x79958  5      
  addl $0x30, %eax                      #  1190  0x7995d  3      
  movl %r12d, %r12d                     #  1191  0x79960  3      
  movb %al, (%r15,%r12,1)               #  1192  0x79963  4      
  addl $0x1, %r12d                      #  1193  0x79967  4      
  cmpl 0x80(%rsp), %ebx                 #  1194  0x7996b  7      
  jl .L_7a020                           #  1195  0x79972  6      
  movl %eax, 0x74(%rsp)                 #  1196  0x79978  4      
  nop                                   #  1197  0x7997c  1      
  movq 0x98(%rsp), %rax                 #  1198  0x7997d  8      
  movq %r14, %rbx                       #  1199  0x79985  3      
  movq 0x50(%rsp), %r14                 #  1200  0x79988  5      
  movq %r13, 0x60(%rsp)                 #  1201  0x7998d  5      
  xorl %r13d, %r13d                     #  1202  0x79992  3      
  movq %rax, 0x38(%rsp)                 #  1203  0x79995  5      
  nop                                   #  1204  0x7999a  1      
.L_7a0c0:                               #        0x7999b  0      
  movl 0x60(%rsp), %esi                 #  1205  0x7999b  4      
  movl $0x1, %edx                       #  1206  0x7999f  5      
  movl %ebx, %edi                       #  1207  0x799a4  2      
  nop                                   #  1208  0x799a6  1      
  nop                                   #  1209  0x799a7  1      
  callq .__lshift                       #  1210  0x799a8  5      
  movl 0x68(%rsp), %esi                 #  1211  0x799ad  4      
  movl %eax, %eax                       #  1212  0x799b1  2      
  movl %eax, %edi                       #  1213  0x799b3  2      
  movq %rax, 0x60(%rsp)                 #  1214  0x799b5  5      
  nop                                   #  1215  0x799ba  1      
  callq .__mcmp                         #  1216  0x799bb  5      
  cmpl $0x0, %eax                       #  1217  0x799c0  3      
  jle .L_7a560                          #  1218  0x799c3  6      
  nop                                   #  1219  0x799c9  1      
  nop                                   #  1220  0x799ca  1      
.L_7a120:                               #        0x799cb  0      
  movq 0x78(%rsp), %rcx                 #  1221  0x799cb  5      
  jmpq .L_7a160                         #  1222  0x799d0  5      
  nop                                   #  1223  0x799d5  1      
  nop                                   #  1224  0x799d6  1      
.L_7a140:                               #        0x799d7  0      
  movq %rax, %r12                       #  1225  0x799d7  3      
  nop                                   #  1226  0x799da  1      
  nop                                   #  1227  0x799db  1      
.L_7a160:                               #        0x799dc  0      
  leal -0x1(%r12), %eax                 #  1228  0x799dc  5      
  movl %eax, %eax                       #  1229  0x799e1  2      
  movzbl (%r15,%rax,1), %edx            #  1230  0x799e3  5      
  cmpb $0x39, %dl                       #  1231  0x799e8  3      
  jne .L_7a5c0                          #  1232  0x799eb  6      
  cmpl %ecx, %eax                       #  1233  0x799f1  2      
  jne .L_7a140                          #  1234  0x799f3  6      
  movq 0x78(%rsp), %rdx                 #  1235  0x799f9  5      
  xchgw %ax, %ax                        #  1236  0x799fe  3      
  addl $0x1, 0x40(%rsp)                 #  1237  0x79a01  5      
  movl %edx, %edx                       #  1238  0x79a06  2      
  movb $0x31, (%r15,%rdx,1)             #  1239  0x79a08  5      
  jmpq .L_79ae0                         #  1240  0x79a0d  5      
  nop                                   #  1241  0x79a12  1      
.L_7a1a0:                               #        0x79a13  0      
  movl $0x0, 0x94(%rsp)                 #  1242  0x79a13  11     
  jmpq .L_799a0                         #  1243  0x79a1e  5      
  nop                                   #  1244  0x79a23  1      
  nop                                   #  1245  0x79a24  1      
.L_7a1c0:                               #        0x79a25  0      
  movl $0x1, 0x94(%rsp)                 #  1246  0x79a25  11     
  jmpq .L_78ba0                         #  1247  0x79a30  5      
  nop                                   #  1248  0x79a35  1      
  nop                                   #  1249  0x79a36  1      
.L_7a1e0:                               #        0x79a37  0      
  movl %r13d, 0x40(%rsp)                #  1250  0x79a37  5      
  movq 0x78(%rsp), %rcx                 #  1251  0x79a3c  5      
  jmpq .L_79200                         #  1252  0x79a41  5      
  xchgw %ax, %ax                        #  1253  0x79a46  3      
  nop                                   #  1254  0x79a49  1      
.L_7a200:                               #        0x79a4a  0      
  movl 0x68(%rsp), %esi                 #  1255  0x79a4a  4      
  movl 0x60(%rsp), %edi                 #  1256  0x79a4e  4      
  nop                                   #  1257  0x79a52  1      
  nop                                   #  1258  0x79a53  1      
  callq .__mcmp                         #  1259  0x79a54  5      
  testl %eax, %eax                      #  1260  0x79a59  2      
  jns .L_79640                          #  1261  0x79a5b  6      
  movl 0x60(%rsp), %esi                 #  1262  0x79a61  4      
  xorl %ecx, %ecx                       #  1263  0x79a65  2      
  movl $0xa, %edx                       #  1264  0x79a67  5      
  movl %ebx, %edi                       #  1265  0x79a6c  2      
  subl $0x1, 0x40(%rsp)                 #  1266  0x79a6e  5      
  nop                                   #  1267  0x79a73  1      
  callq .__multadd                      #  1268  0x79a74  5      
  movl %eax, %eax                       #  1269  0x79a79  2      
  movq %rax, 0x60(%rsp)                 #  1270  0x79a7b  5      
  movl 0xa4(%rsp), %eax                 #  1271  0x79a80  7      
  movl %eax, 0x80(%rsp)                 #  1272  0x79a87  7      
  movl 0x94(%rsp), %eax                 #  1273  0x79a8e  7      
  testl %eax, %eax                      #  1274  0x79a95  2      
  xchgw %ax, %ax                        #  1275  0x79a97  3      
  je .L_79640                           #  1276  0x79a9a  6      
  movl 0x98(%rsp), %esi                 #  1277  0x79aa0  7      
  movl $0xa, %edx                       #  1278  0x79aa7  5      
  xorl %ecx, %ecx                       #  1279  0x79aac  2      
  movl %ebx, %edi                       #  1280  0x79aae  2      
  nop                                   #  1281  0x79ab0  1      
  callq .__multadd                      #  1282  0x79ab1  5      
  movl 0xa4(%rsp), %edx                 #  1283  0x79ab6  7      
  movl %eax, %eax                       #  1284  0x79abd  2      
  movq %rax, 0x98(%rsp)                 #  1285  0x79abf  8      
  movl %edx, 0x80(%rsp)                 #  1286  0x79ac7  7      
  jmpq .L_79640                         #  1287  0x79ace  5      
  nop                                   #  1288  0x79ad3  1      
.L_7a2a0:                               #        0x79ad4  0      
  movq 0x68(%rsp), %rdx                 #  1289  0x79ad4  5      
  movl %edx, %edx                       #  1290  0x79ad9  2      
  movl 0x10(%r15,%rdx,1), %eax          #  1291  0x79adb  5      
  leal 0xc(,%rax,4), %eax               #  1292  0x79ae0  7      
  cltq                                  #  1293  0x79ae7  2      
  addq %rdx, %rax                       #  1294  0x79ae9  3      
  movl %eax, %eax                       #  1295  0x79aec  2      
  movl 0x4(%r15,%rax,1), %edi           #  1296  0x79aee  5      
  nop                                   #  1297  0x79af3  1      
  nop                                   #  1298  0x79af4  1      
  nop                                   #  1299  0x79af5  1      
  callq .__hi0bits                      #  1300  0x79af6  5      
  movl %eax, %edx                       #  1301  0x79afb  2      
  movl $0x20, %eax                      #  1302  0x79afd  5      
  subl %edx, %eax                       #  1303  0x79b02  2      
  jmpq .L_79560                         #  1304  0x79b04  5      
  nop                                   #  1305  0x79b09  1      
  nop                                   #  1306  0x79b0a  1      
.L_7a300:                               #        0x79b0b  0      
  movl $0x1, %eax                       #  1307  0x79b0b  5      
  movl $0x1, 0xa4(%rsp)                 #  1308  0x79b10  11     
  movl $0x1, 0x80(%rsp)                 #  1309  0x79b1b  11     
  nop                                   #  1310  0x79b26  1      
  movl $0x1, 0x38(%rsp)                 #  1311  0x79b27  8      
  jmpq .L_79c20                         #  1312  0x79b2f  5      
  nop                                   #  1313  0x79b34  1      
  nop                                   #  1314  0x79b35  1      
.L_7a340:                               #        0x79b36  0      
  movq $0xfffffffffffff, %rax           #  1315  0x79b36  10     
  testq %rax, %r13                      #  1316  0x79b40  3      
  jne .L_79520                          #  1317  0x79b43  6      
  movq %r13, %rax                       #  1318  0x79b49  3      
  shrq $0x20, %rax                      #  1319  0x79b4c  4      
  testl $0x7ff00000, %eax               #  1320  0x79b50  5      
  nop                                   #  1321  0x79b55  1      
  je .L_79520                           #  1322  0x79b56  6      
  addl $0x1, 0x84(%rsp)                 #  1323  0x79b5c  8      
  addl $0x1, 0x74(%rsp)                 #  1324  0x79b64  5      
  movl $0x1, 0xa8(%rsp)                 #  1325  0x79b69  11     
  xchgw %ax, %ax                        #  1326  0x79b74  3      
  jmpq .L_79540                         #  1327  0x79b77  5      
  nop                                   #  1328  0x79b7c  1      
  nop                                   #  1329  0x79b7d  1      
.L_7a3a0:                               #        0x79b7e  0      
  cmpl $0x2, 0x50(%rsp)                 #  1330  0x79b7e  5      
  jle .L_79660                          #  1331  0x79b83  6      
  movl 0x80(%rsp), %r11d                #  1332  0x79b89  8      
  testl %r11d, %r11d                    #  1333  0x79b91  3      
  jne .L_79ac0                          #  1334  0x79b94  6      
  movl 0x68(%rsp), %esi                 #  1335  0x79b9a  4      
  xorl %ecx, %ecx                       #  1336  0x79b9e  2      
  movl $0x5, %edx                       #  1337  0x79ba0  5      
  movl %ebx, %edi                       #  1338  0x79ba5  2      
  nop                                   #  1339  0x79ba7  1      
  nop                                   #  1340  0x79ba8  1      
  callq .__multadd                      #  1341  0x79ba9  5      
  movl 0x60(%rsp), %edi                 #  1342  0x79bae  4      
  movl %eax, %eax                       #  1343  0x79bb2  2      
  movl %eax, %esi                       #  1344  0x79bb4  2      
  movq %rax, 0x68(%rsp)                 #  1345  0x79bb6  5      
  nop                                   #  1346  0x79bbb  1      
  callq .__mcmp                         #  1347  0x79bbc  5      
  testl %eax, %eax                      #  1348  0x79bc1  2      
  jg .L_79cc0                           #  1349  0x79bc3  6      
  jmpq .L_79ac0                         #  1350  0x79bc9  5      
  nop                                   #  1351  0x79bce  1      
  nop                                   #  1352  0x79bcf  1      
.L_7a420:                               #        0x79bd0  0      
  subl 0x68(%rsp), %r12d                #  1353  0x79bd0  5      
  addl %r12d, 0x90(%rsp)                #  1354  0x79bd5  8      
  addl %r12d, 0x68(%rsp)                #  1355  0x79bdd  5      
  xorl %r12d, %r12d                     #  1356  0x79be2  3      
  jmpq .L_79320                         #  1357  0x79be5  5      
  nop                                   #  1358  0x79bea  1      
.L_7a440:                               #        0x79beb  0      
  movl 0x8c(%rsp), %edx                 #  1359  0x79beb  7      
  testl %edx, %edx                      #  1360  0x79bf2  2      
  je .L_7a680                           #  1361  0x79bf4  6      
  movl 0x84(%rsp), %ecx                 #  1362  0x79bfa  7      
  addl $0x433, %eax                     #  1363  0x79c01  5      
  movl 0x68(%rsp), %r12d                #  1364  0x79c06  5      
  movl %ecx, 0x8c(%rsp)                 #  1365  0x79c0b  7      
  jmpq .L_79340                         #  1366  0x79c12  5      
  nop                                   #  1367  0x79c17  1      
  nop                                   #  1368  0x79c18  1      
.L_7a480:                               #        0x79c19  0      
  addl $0x1, %edx                       #  1369  0x79c19  3      
  jmpq .L_79240                         #  1370  0x79c1c  5      
  nop                                   #  1371  0x79c21  1      
  nop                                   #  1372  0x79c22  1      
.L_7a4a0:                               #        0x79c23  0      
  movl 0x84(%rsp), %edx                 #  1373  0x79c23  7      
  subl %eax, %edx                       #  1374  0x79c2a  2      
  xorl %eax, %eax                       #  1375  0x79c2c  2      
  movl %edx, 0x8c(%rsp)                 #  1376  0x79c2e  7      
  jmpq .L_79340                         #  1377  0x79c35  5      
  nop                                   #  1378  0x79c3a  1      
.L_7a4c0:                               #        0x79c3b  0      
  testl %eax, %eax                      #  1379  0x79c3b  2      
  jle .L_7a540                          #  1380  0x79c3d  6      
  movl 0x60(%rsp), %esi                 #  1381  0x79c43  4      
  movl $0x1, %edx                       #  1382  0x79c47  5      
  movl %ebx, %edi                       #  1383  0x79c4c  2      
  nop                                   #  1384  0x79c4e  1      
  callq .__lshift                       #  1385  0x79c4f  5      
  movl 0x68(%rsp), %esi                 #  1386  0x79c54  4      
  movl %eax, %eax                       #  1387  0x79c58  2      
  movl %eax, %edi                       #  1388  0x79c5a  2      
  movq %rax, 0x60(%rsp)                 #  1389  0x79c5c  5      
  nop                                   #  1390  0x79c61  1      
  callq .__mcmp                         #  1391  0x79c62  5      
  cmpl $0x0, %eax                       #  1392  0x79c67  3      
  jle .L_7a740                          #  1393  0x79c6a  6      
  nop                                   #  1394  0x79c70  1      
  nop                                   #  1395  0x79c71  1      
.L_7a520:                               #        0x79c72  0      
  cmpl $0x39, 0x74(%rsp)                #  1396  0x79c72  5      
  je .L_7a6e0                           #  1397  0x79c77  6      
  addl $0x1, 0x74(%rsp)                 #  1398  0x79c7d  5      
  nop                                   #  1399  0x79c82  1      
  nop                                   #  1400  0x79c83  1      
.L_7a540:                               #        0x79c84  0      
  movzbl 0x74(%rsp), %edx               #  1401  0x79c84  5      
  movl %r12d, %r12d                     #  1402  0x79c89  3      
  movb %dl, (%r15,%r12,1)               #  1403  0x79c8c  4      
  addl $0x1, %r12d                      #  1404  0x79c90  4      
  jmpq .L_79ae0                         #  1405  0x79c94  5      
  nop                                   #  1406  0x79c99  1      
.L_7a560:                               #        0x79c9a  0      
  jne .L_7a5a0                          #  1407  0x79c9a  6      
  testb $0x1, 0x74(%rsp)                #  1408  0x79ca0  5      
  jne .L_7a120                          #  1409  0x79ca5  6      
  jmpq .L_7a5a0                         #  1410  0x79cab  5      
  xchgw %ax, %ax                        #  1411  0x79cb0  3      
  nop                                   #  1412  0x79cb3  1      
.L_7a580:                               #        0x79cb4  0      
  movq %rax, %r12                       #  1413  0x79cb4  3      
  nop                                   #  1414  0x79cb7  1      
  nop                                   #  1415  0x79cb8  1      
.L_7a5a0:                               #        0x79cb9  0      
  leal -0x1(%r12), %eax                 #  1416  0x79cb9  5      
  movl %eax, %eax                       #  1417  0x79cbe  2      
  cmpb $0x30, (%r15,%rax,1)             #  1418  0x79cc0  5      
  je .L_7a580                           #  1419  0x79cc5  6      
  jmpq .L_79ae0                         #  1420  0x79ccb  5      
  nop                                   #  1421  0x79cd0  1      
.L_7a5c0:                               #        0x79cd1  0      
  addl $0x1, %edx                       #  1422  0x79cd1  3      
  movl %eax, %eax                       #  1423  0x79cd4  2      
  movb %dl, (%r15,%rax,1)               #  1424  0x79cd6  4      
  jmpq .L_79ae0                         #  1425  0x79cda  5      
  nop                                   #  1426  0x79cdf  1      
  nop                                   #  1427  0x79ce0  1      
.L_7a5e0:                               #        0x79ce1  0      
  movl %eax, %eax                       #  1428  0x79ce1  2      
  movl 0x4(%r15,%rax,1), %esi           #  1429  0x79ce3  5      
  movl %ebx, %edi                       #  1430  0x79ce8  2      
  nop                                   #  1431  0x79cea  1      
  nop                                   #  1432  0x79ceb  1      
  callq ._Balloc                        #  1433  0x79cec  5      
  movq 0x98(%rsp), %rcx                 #  1434  0x79cf1  8      
  movl 0x98(%rsp), %esi                 #  1435  0x79cf9  7      
  movl %eax, %r12d                      #  1436  0x79d00  3      
  leal 0xc(%r12), %edi                  #  1437  0x79d03  5      
  movl %ecx, %ecx                       #  1438  0x79d08  2      
  movl 0x10(%r15,%rcx,1), %edx          #  1439  0x79d0a  5      
  xchgw %ax, %ax                        #  1440  0x79d0f  3      
  addl $0xc, %esi                       #  1441  0x79d12  3      
  leal 0x8(,%rdx,4), %edx               #  1442  0x79d15  7      
  xchgw %ax, %ax                        #  1443  0x79d1c  3      
  nop                                   #  1444  0x79d1f  1      
  callq .memcpy                         #  1445  0x79d20  5      
  movl $0x1, %edx                       #  1446  0x79d25  5      
  movl %r12d, %esi                      #  1447  0x79d2a  3      
  movl %ebx, %edi                       #  1448  0x79d2d  2      
  xchgw %ax, %ax                        #  1449  0x79d2f  3      
  nop                                   #  1450  0x79d32  1      
  callq .__lshift                       #  1451  0x79d33  5      
  movl %eax, %eax                       #  1452  0x79d38  2      
  movq %rax, 0x38(%rsp)                 #  1453  0x79d3a  5      
  jmpq .L_79700                         #  1454  0x79d3f  5      
  nop                                   #  1455  0x79d44  1      
  nop                                   #  1456  0x79d45  1      
.L_7a680:                               #        0x79d46  0      
  movl 0x84(%rsp), %edx                 #  1457  0x79d46  7      
  movl $0x36, %eax                      #  1458  0x79d4d  5      
  movl 0x68(%rsp), %r12d                #  1459  0x79d52  5      
  subl 0xbc(%rsp), %eax                 #  1460  0x79d57  7      
  movl %edx, 0x8c(%rsp)                 #  1461  0x79d5e  7      
  nop                                   #  1462  0x79d65  1      
  jmpq .L_79340                         #  1463  0x79d66  5      
  nop                                   #  1464  0x79d6b  1      
  nop                                   #  1465  0x79d6c  1      
.L_7a6c0:                               #        0x79d6d  0      
  cmpl $0x39, 0x74(%rsp)                #  1466  0x79d6d  5      
  je .L_7a6e0                           #  1467  0x79d72  6      
  movzbl 0x74(%rsp), %eax               #  1468  0x79d78  5      
  addl $0x1, %eax                       #  1469  0x79d7d  3      
  movl %r12d, %r12d                     #  1470  0x79d80  3      
  movb %al, (%r15,%r12,1)               #  1471  0x79d83  4      
  addl $0x1, %r12d                      #  1472  0x79d87  4      
  jmpq .L_79ae0                         #  1473  0x79d8b  5      
  nop                                   #  1474  0x79d90  1      
.L_7a6e0:                               #        0x79d91  0      
  movl %r12d, %r12d                     #  1475  0x79d91  3      
  movb $0x39, (%r15,%r12,1)             #  1476  0x79d94  5      
  addl $0x1, %r12d                      #  1477  0x79d99  4      
  movq 0x78(%rsp), %rcx                 #  1478  0x79d9d  5      
  jmpq .L_7a160                         #  1479  0x79da2  5      
  nop                                   #  1480  0x79da7  1      
.L_7a700:                               #        0x79da8  0      
  cmpl $0x39, 0x74(%rsp)                #  1481  0x79da8  5      
  je .L_7a6e0                           #  1482  0x79dad  6      
  xorl %eax, %eax                       #  1483  0x79db3  2      
  cmpl $0x0, 0x84(%rsp)                 #  1484  0x79db5  8      
  setg %al                              #  1485  0x79dbd  3      
  addl %eax, 0x74(%rsp)                 #  1486  0x79dc0  4      
  movzbl 0x74(%rsp), %eax               #  1487  0x79dc4  5      
  nop                                   #  1488  0x79dc9  1      
  movl %r12d, %r12d                     #  1489  0x79dca  3      
  movb %al, (%r15,%r12,1)               #  1490  0x79dcd  4      
  addl $0x1, %r12d                      #  1491  0x79dd1  4      
  jmpq .L_79ae0                         #  1492  0x79dd5  5      
  nop                                   #  1493  0x79dda  1      
  nop                                   #  1494  0x79ddb  1      
.L_7a740:                               #        0x79ddc  0      
  jne .L_7a540                          #  1495  0x79ddc  6      
  testb $0x1, 0x74(%rsp)                #  1496  0x79de2  5      
  je .L_7a540                           #  1497  0x79de7  6      
  jmpq .L_7a520                         #  1498  0x79ded  5      
  nop                                   #  1499  0x79df2  1      
.L_7a760:                               #        0x79df3  0      
  movl $0x1, %r12d                      #  1500  0x79df3  6      
  movl $0x1, %eax                       #  1501  0x79df9  5      
  jmpq .L_78b60                         #  1502  0x79dfe  5      
  nop                                   #  1503  0x79e03  1      
  nop                                   #  1504  0x79e04  1      
.L_7a780:                               #        0x79e05  0      
  je .L_795a0                           #  1505  0x79e05  6      
  addl $0x1c, %eax                      #  1506  0x79e0b  3      
  jmpq .L_79580                         #  1507  0x79e0e  5      
  nop                                   #  1508  0x79e13  1      
  nop                                   #  1509  0x79e14  1      
  nop                                   #  1510  0x79e15  1      
  nop                                   #  1511  0x79e16  1      
  nop                                   #  1512  0x79e17  1      
  nop                                   #  1513  0x79e18  1      
  nop                                   #  1514  0x79e19  1      
  nop                                   #  1515  0x79e1a  1      
  nop                                   #  1516  0x79e1b  1      
  nop                                   #  1517  0x79e1c  1      
  nop                                   #  1518  0x79e1d  1      
  nop                                   #  1519  0x79e1e  1      
  nop                                   #  1520  0x79e1f  1      
  nop                                   #  1521  0x79e20  1      
  nop                                   #  1522  0x79e21  1      
  nop                                   #  1523  0x79e22  1      
  nop                                   #  1524  0x79e23  1      
  nop                                   #  1525  0x79e24  1      
                                                                 
.size _dtoa_r, .-_dtoa_r

