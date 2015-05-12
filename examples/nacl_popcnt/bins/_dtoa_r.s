  .text
  .globl _dtoa_r
  .type _dtoa_r, @function

#! file-offset 0x78780
#! rip-offset  0x78780
#! capacity    8256 bytes

# Text                                  #  Line  RIP      Bytes  
._dtoa_r:                               #        0x78780  0      
  pushq %r14                            #  1     0x78780  3      
  movl %ecx, %ecx                       #  2     0x78783  2      
  movl %r8d, %r8d                       #  3     0x78785  3      
  movl %r9d, %r14d                      #  4     0x78788  3      
  pushq %r13                            #  5     0x7878b  3      
  pushq %r12                            #  6     0x7878e  3      
  pushq %rbx                            #  7     0x78791  2      
  movl %edi, %ebx                       #  8     0x78793  2      
  subl $0xc8, %esp                      #  9     0x78795  3      
  addq %r15, %rsp                       #  10    0x78798  3      
  movsd %xmm0, 0x8(%rsp)                #  11    0x7879b  6      
  movl %ebx, %ebx                       #  12    0x787a1  2      
  movl 0x40(%r15,%rbx,1), %eax          #  13    0x787a3  5      
  movl %esi, 0x50(%rsp)                 #  14    0x787a8  4      
  movl %edx, 0x38(%rsp)                 #  15    0x787ac  4      
  movq %rcx, 0x58(%rsp)                 #  16    0x787b0  5      
  movq 0x8(%rsp), %r13                  #  17    0x787b5  5      
  testq %rax, %rax                      #  18    0x787ba  3      
  nop                                   #  19    0x787bd  1      
  je .L_78820                           #  20    0x787be  6      
  movl %ebx, %ebx                       #  21    0x787c4  2      
  movl 0x44(%r15,%rbx,1), %edx          #  22    0x787c6  5      
  movl %ebx, %ebx                       #  23    0x787cb  2      
  movl 0x40(%r15,%rbx,1), %esi          #  24    0x787cd  5      
  movl %ebx, %edi                       #  25    0x787d2  2      
  movq %r8, 0x30(%rsp)                  #  26    0x787d4  5      
  movl %eax, %eax                       #  27    0x787d9  2      
  movl %edx, 0x4(%r15,%rax,1)           #  28    0x787db  5      
  xchgw %ax, %ax                        #  29    0x787e0  3      
  movl %ebx, %ebx                       #  30    0x787e3  2      
  movl 0x44(%r15,%rbx,1), %ecx          #  31    0x787e5  5      
  movl $0x1, %edx                       #  32    0x787ea  5      
  shll %cl, %edx                        #  33    0x787ef  2      
  movl %eax, %eax                       #  34    0x787f1  2      
  movl %edx, 0x8(%r15,%rax,1)           #  35    0x787f3  5      
  nop                                   #  36    0x787f8  1      
  callq ._Bfree                         #  37    0x787f9  5      
  movq 0x30(%rsp), %r8                  #  38    0x787fe  5      
  movl %ebx, %ebx                       #  39    0x78803  2      
  movl $0x0, 0x40(%r15,%rbx,1)          #  40    0x78805  9      
  nop                                   #  41    0x7880e  1      
  nop                                   #  42    0x7880f  1      
.L_78820:                               #        0x78810  0      
  movq %r13, %r12                       #  43    0x78810  3      
  shrq $0x20, %r12                      #  44    0x78813  4      
  testl %r12d, %r12d                    #  45    0x78817  3      
  js .L_78920                           #  46    0x7881a  6      
  movl %r8d, %r8d                       #  47    0x78820  3      
  movl $0x0, (%r15,%r8,1)               #  48    0x78823  8      
  nop                                   #  49    0x7882b  1      
.L_78840:                               #        0x7882c  0      
  movl %r12d, %eax                      #  50    0x7882c  3      
  andl $0x7ff00000, %eax                #  51    0x7882f  5      
  cmpl $0x7ff00000, %eax                #  52    0x78834  5      
  je .L_788c0                           #  53    0x78839  6      
  movq %r13, 0x8(%rsp)                  #  54    0x7883f  5      
  xorpd %xmm2, %xmm2                    #  55    0x78844  4      
  movsd 0x8(%rsp), %xmm1                #  56    0x78848  6      
  xchgw %ax, %ax                        #  57    0x7884e  3      
  ucomisd %xmm2, %xmm1                  #  58    0x78851  4      
  jne .L_78960                          #  59    0x78855  6      
  jp .L_78960                           #  60    0x7885b  6      
  movq 0x58(%rsp), %rdx                 #  61    0x78861  5      
  testq %r14, %r14                      #  62    0x78866  3      
  movl $0x100202fc, %eax                #  63    0x78869  5      
  nop                                   #  64    0x7886e  1      
  movl %edx, %edx                       #  65    0x7886f  2      
  movl $0x1, (%r15,%rdx,1)              #  66    0x78871  8      
  je .L_788a0                           #  67    0x78879  6      
  movl %r14d, %r14d                     #  68    0x7887f  3      
  movl $0x100202fd, (%r15,%r14,1)       #  69    0x78882  8      
  nop                                   #  70    0x7888a  1      
.L_788a0:                               #        0x7888b  0      
  addl $0xc8, %esp                      #  71    0x7888b  3      
  addq %r15, %rsp                       #  72    0x7888e  3      
  popq %rbx                             #  73    0x78891  2      
  popq %r12                             #  74    0x78893  3      
  popq %r13                             #  75    0x78896  3      
  popq %r14                             #  76    0x78899  3      
  popq %r11                             #  77    0x7889c  3      
  andl $0xffffffe0, %r11d               #  78    0x7889f  7      
  addq %r15, %r11                       #  79    0x788a6  3      
  jmpq %r11                             #  80    0x788a9  3      
  nop                                   #  81    0x788ac  1      
.L_788c0:                               #        0x788ad  0      
  movq 0x58(%rsp), %rax                 #  82    0x788ad  5      
  movq $0xfffffffffffff, %rdx           #  83    0x788b2  10     
  testq %rdx, %r13                      #  84    0x788bc  3      
  movl $0x10024254, %edx                #  85    0x788bf  5      
  nop                                   #  86    0x788c4  1      
  movl %eax, %eax                       #  87    0x788c5  2      
  movl $0x270f, (%r15,%rax,1)           #  88    0x788c7  8      
  movl $0x10024250, %eax                #  89    0x788cf  5      
  cmoveq %rdx, %rax                     #  90    0x788d4  4      
  testq %r14, %r14                      #  91    0x788d8  3      
  je .L_788a0                           #  92    0x788db  6      
  leal 0x3(%rax), %edx                  #  93    0x788e1  3      
  leal 0x8(%rax), %ecx                  #  94    0x788e4  3      
  xchgw %ax, %ax                        #  95    0x788e7  3      
  movl %edx, %edx                       #  96    0x788ea  2      
  cmpb $0x0, (%r15,%rdx,1)              #  97    0x788ec  5      
  cmovneq %rcx, %rdx                    #  98    0x788f1  4      
  movl %r14d, %r14d                     #  99    0x788f5  3      
  movl %edx, (%r15,%r14,1)              #  100   0x788f8  4      
  jmpq .L_788a0                         #  101   0x788fc  5      
  nop                                   #  102   0x78901  1      
.L_78920:                               #        0x78902  0      
  andl $0x7fffffff, %r12d               #  103   0x78902  7      
  andl $0xffffffff, %r13d               #  104   0x78909  7      
  movl %r8d, %r8d                       #  105   0x78910  3      
  movl $0x1, (%r15,%r8,1)               #  106   0x78913  8      
  movq %r12, %rax                       #  107   0x7891b  3      
  shlq $0x20, %rax                      #  108   0x7891e  4      
  orq %rax, %r13                        #  109   0x78922  3      
  jmpq .L_78840                         #  110   0x78925  5      
  nop                                   #  111   0x7892a  1      
  nop                                   #  112   0x7892b  1      
.L_78960:                               #        0x7892c  0      
  leal 0xbc(%rsp), %edx                 #  113   0x7892c  7      
  movapd %xmm1, %xmm0                   #  114   0x78933  4      
  leal 0xb8(%rsp), %esi                 #  115   0x78937  7      
  movl %ebx, %edi                       #  116   0x7893e  2      
  movsd %xmm1, 0x20(%rsp)               #  117   0x78940  6      
  movsd %xmm2, 0x10(%rsp)               #  118   0x78946  6      
  nop                                   #  119   0x7894c  1      
  nop                                   #  120   0x7894d  1      
  callq .__d2b                          #  121   0x7894e  5      
  movl %r12d, %edx                      #  122   0x78953  3      
  movl %eax, %eax                       #  123   0x78956  2      
  shrl $0x14, %edx                      #  124   0x78958  3      
  movq %rax, 0x60(%rsp)                 #  125   0x7895b  5      
  andl $0x7ff, %edx                     #  126   0x78960  6      
  movsd 0x20(%rsp), %xmm1               #  127   0x78966  6      
  movsd 0x10(%rsp), %xmm2               #  128   0x7896c  6      
  nop                                   #  129   0x78972  1      
  jne .L_78f40                          #  130   0x78973  6      
  movl 0xbc(%rsp), %eax                 #  131   0x78979  7      
  movl 0xb8(%rsp), %esi                 #  132   0x78980  7      
  addl %eax, %esi                       #  133   0x78987  2      
  leal 0x432(%rsi), %edx                #  134   0x78989  6      
  cmpl $0x20, %edx                      #  135   0x7898f  3      
  nop                                   #  136   0x78992  1      
  jle .L_79960                          #  137   0x78993  6      
  movl $0x40, %ecx                      #  138   0x78999  5      
  subl %edx, %ecx                       #  139   0x7899e  2      
  shll %cl, %r12d                       #  140   0x789a0  3      
  leal 0x412(%rsi), %ecx                #  141   0x789a3  6      
  movl %r13d, %esi                      #  142   0x789a9  3      
  shrl %cl, %esi                        #  143   0x789ac  2      
  orl %esi, %r12d                       #  144   0x789ae  3      
  xchgw %ax, %ax                        #  145   0x789b1  3      
.L_78a00:                               #        0x789b4  0      
  movl %r12d, %r12d                     #  146   0x789b4  3      
  subl $0x433, %edx                     #  147   0x789b7  6      
  movl $0x1, 0x8c(%rsp)                 #  148   0x789bd  11     
  cvtsi2sdq %r12, %xmm0                 #  149   0x789c8  5      
  movsd %xmm0, 0x8(%rsp)                #  150   0x789cd  6      
  nop                                   #  151   0x789d3  1      
  movq 0x8(%rsp), %r12                  #  152   0x789d4  5      
  movq %r12, %rcx                       #  153   0x789d9  3      
  andl $0xffffffff, %r12d               #  154   0x789dc  7      
  shrq $0x20, %rcx                      #  155   0x789e3  4      
  subl $0x1f00000, %ecx                 #  156   0x789e7  6      
  shlq $0x20, %rcx                      #  157   0x789ed  4      
  orq %rcx, %r12                        #  158   0x789f1  3      
  nop                                   #  159   0x789f4  1      
.L_78a40:                               #        0x789f5  0      
  movq %r12, 0x8(%rsp)                  #  160   0x789f5  5      
  cvtsi2sdl %edx, %xmm3                 #  161   0x789fa  4      
  movsd 0x8(%rsp), %xmm0                #  162   0x789fe  6      
  subsd 0xffab854(%rip), %xmm0          #  163   0x78a04  8      
  mulsd 0xffab854(%rip), %xmm0          #  164   0x78a0c  8      
  nop                                   #  165   0x78a14  1      
  mulsd 0xffab85b(%rip), %xmm3          #  166   0x78a15  8      
  addsd 0xffab84b(%rip), %xmm0          #  167   0x78a1d  8      
  addsd %xmm3, %xmm0                    #  168   0x78a25  4      
  cvttsd2si %xmm0, %ecx                 #  169   0x78a29  4      
  ucomisd %xmm0, %xmm2                  #  170   0x78a2d  4      
  movl %ecx, 0x40(%rsp)                 #  171   0x78a31  4      
  jbe .L_78aa0                          #  172   0x78a35  6      
  cvtsi2sdl %ecx, %xmm3                 #  173   0x78a3b  4      
  ucomisd %xmm0, %xmm3                  #  174   0x78a3f  4      
  setne %cl                             #  175   0x78a43  3      
  setp %sil                             #  176   0x78a46  4      
  orl %esi, %ecx                        #  177   0x78a4a  2      
  movzbl %cl, %ecx                      #  178   0x78a4c  3      
  subl %ecx, 0x40(%rsp)                 #  179   0x78a4f  4      
  nop                                   #  180   0x78a53  1      
.L_78aa0:                               #        0x78a54  0      
  cmpl $0x16, 0x40(%rsp)                #  181   0x78a54  5      
  movl $0x1, 0x88(%rsp)                 #  182   0x78a59  11     
  ja .L_78b00                           #  183   0x78a64  6      
  movl 0x40(%rsp), %ecx                 #  184   0x78a6a  4      
  nop                                   #  185   0x78a6e  1      
  movl $0x0, 0x88(%rsp)                 #  186   0x78a6f  11     
  shll $0x3, %ecx                       #  187   0x78a7a  3      
  movslq %ecx, %rcx                     #  188   0x78a7d  3      
  movl %ecx, %ecx                       #  189   0x78a80  2      
  movsd 0x100247e0(%r15,%rcx,1), %xmm0  #  190   0x78a82  10     
  nop                                   #  191   0x78a8c  1      
  ucomisd %xmm1, %xmm0                  #  192   0x78a8d  4      
  jbe .L_78b00                          #  193   0x78a91  6      
  subl $0x1, 0x40(%rsp)                 #  194   0x78a97  5      
  nop                                   #  195   0x78a9c  1      
  nop                                   #  196   0x78a9d  1      
.L_78b00:                               #        0x78a9e  0      
  subl $0x1, %eax                       #  197   0x78a9e  3      
  subl %edx, %eax                       #  198   0x78aa1  2      
  js .L_79940                           #  199   0x78aa3  6      
  movl %eax, 0x74(%rsp)                 #  200   0x78aa9  4      
  movl $0x0, 0x84(%rsp)                 #  201   0x78aad  11     
  nop                                   #  202   0x78ab8  1      
.L_78b20:                               #        0x78ab9  0      
  movl 0x40(%rsp), %ecx                 #  203   0x78ab9  4      
  testl %ecx, %ecx                      #  204   0x78abd  2      
  js .L_79900                           #  205   0x78abf  6      
  movl 0x40(%rsp), %eax                 #  206   0x78ac5  4      
  addl %eax, 0x74(%rsp)                 #  207   0x78ac9  4      
  movl $0x0, 0x68(%rsp)                 #  208   0x78acd  8      
  nop                                   #  209   0x78ad5  1      
  movl %eax, 0x90(%rsp)                 #  210   0x78ad6  7      
  nop                                   #  211   0x78add  1      
  nop                                   #  212   0x78ade  1      
.L_78b60:                               #        0x78adf  0      
  cmpl $0x9, 0x50(%rsp)                 #  213   0x78adf  5      
  ja .L_78fa0                           #  214   0x78ae4  6      
  cmpl $0x5, 0x50(%rsp)                 #  215   0x78aea  5      
  jle .L_7a780                          #  216   0x78aef  6      
  subl $0x4, 0x50(%rsp)                 #  217   0x78af5  5      
  xorl %r12d, %r12d                     #  218   0x78afa  3      
  xorl %eax, %eax                       #  219   0x78afd  2      
.L_78b80:                               #        0x78aff  0      
  cmpl $0x3, 0x50(%rsp)                 #  220   0x78aff  5      
  je .L_7a1c0                           #  221   0x78b04  6      
  jg .L_79980                           #  222   0x78b0a  6      
  cmpl $0x2, 0x50(%rsp)                 #  223   0x78b10  5      
  jne .L_78fc0                          #  224   0x78b15  6      
  nop                                   #  225   0x78b1b  1      
  movl $0x0, 0x94(%rsp)                 #  226   0x78b1c  11     
  nop                                   #  227   0x78b27  1      
  nop                                   #  228   0x78b28  1      
.L_78bc0:                               #        0x78b29  0      
  movl 0x38(%rsp), %edx                 #  229   0x78b29  4      
  testl %edx, %edx                      #  230   0x78b2d  2      
  jle .L_7a320                          #  231   0x78b2f  6      
  movl 0x38(%rsp), %edi                 #  232   0x78b35  4      
  cmpl $0xe, %edi                       #  233   0x78b39  3      
  movl %edi, 0xa4(%rsp)                 #  234   0x78b3c  7      
  nop                                   #  235   0x78b43  1      
  movl %edi, 0x80(%rsp)                 #  236   0x78b44  7      
  setbe %r12b                           #  237   0x78b4b  4      
  andl %eax, %r12d                      #  238   0x78b4f  3      
  nop                                   #  239   0x78b52  1      
  nop                                   #  240   0x78b53  1      
.L_78c00:                               #        0x78b54  0      
  cmpl $0x17, %edi                      #  241   0x78b54  3      
  movl %ebx, %ebx                       #  242   0x78b57  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  243   0x78b59  9      
  jbe .L_79c60                          #  244   0x78b62  6      
  movl $0x1, %edx                       #  245   0x78b68  5      
  movl $0x4, %eax                       #  246   0x78b6d  5      
  xchgw %ax, %ax                        #  247   0x78b72  3      
.L_78c20:                               #        0x78b75  0      
  addl %eax, %eax                       #  248   0x78b75  2      
  movl %edx, %esi                       #  249   0x78b77  2      
  leal 0x14(%rax), %ecx                 #  250   0x78b79  3      
  leal 0x1(%rsi), %edx                  #  251   0x78b7c  3      
  cmpl %edi, %ecx                       #  252   0x78b7f  2      
  jbe .L_78c20                          #  253   0x78b81  6      
  movl %ebx, %ebx                       #  254   0x78b87  2      
  movl %esi, 0x44(%r15,%rbx,1)          #  255   0x78b89  5      
  nop                                   #  256   0x78b8e  1      
.L_78c40:                               #        0x78b8f  0      
  movl %ebx, %edi                       #  257   0x78b8f  2      
  movsd %xmm1, 0x20(%rsp)               #  258   0x78b91  6      
  movsd %xmm2, 0x10(%rsp)               #  259   0x78b97  6      
  nop                                   #  260   0x78b9d  1      
  callq ._Balloc                        #  261   0x78b9e  5      
  testb %r12b, %r12b                    #  262   0x78ba3  3      
  movl %eax, %eax                       #  263   0x78ba6  2      
  movq %rax, 0x78(%rsp)                 #  264   0x78ba8  5      
  movl %ebx, %ebx                       #  265   0x78bad  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  266   0x78baf  5      
  movsd 0x20(%rsp), %xmm1               #  267   0x78bb4  6      
  movsd 0x10(%rsp), %xmm2               #  268   0x78bba  6      
  nop                                   #  269   0x78bc0  1      
  je .L_79040                           #  270   0x78bc1  6      
  movl 0x40(%rsp), %eax                 #  271   0x78bc7  4      
  testl %eax, %eax                      #  272   0x78bcb  2      
  jle .L_79de0                          #  273   0x78bcd  6      
  movl 0x40(%rsp), %edx                 #  274   0x78bd3  4      
  movapd %xmm1, %xmm4                   #  275   0x78bd7  4      
  movl $0x2, %ecx                       #  276   0x78bdb  5      
  nop                                   #  277   0x78be0  1      
  leaq (,%rdx,8), %rax                  #  278   0x78be1  8      
  andl $0x78, %eax                      #  279   0x78be9  3      
  movl %eax, %eax                       #  280   0x78bec  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm0  #  281   0x78bee  10     
  movl %edx, %eax                       #  282   0x78bf8  2      
  sarl $0x4, %eax                       #  283   0x78bfa  3      
  testb $0x10, %al                      #  284   0x78bfd  2      
  xchgw %ax, %ax                        #  285   0x78bff  3      
  je .L_78ce0                           #  286   0x78c02  6      
  divsd 0xffabcd0(%rip), %xmm4          #  287   0x78c08  8      
  andl $0xf, %eax                       #  288   0x78c10  3      
  movb $0x3, %cl                        #  289   0x78c13  2      
  xchgw %ax, %ax                        #  290   0x78c15  3      
  nop                                   #  291   0x78c18  1      
.L_78ce0:                               #        0x78c19  0      
  testl %eax, %eax                      #  292   0x78c19  2      
  je .L_78d60                           #  293   0x78c1b  6      
  xorl %edx, %edx                       #  294   0x78c21  2      
  jmpq .L_78d20                         #  295   0x78c23  5      
  nop                                   #  296   0x78c28  1      
  nop                                   #  297   0x78c29  1      
.L_78d00:                               #        0x78c2a  0      
  addl $0x1, %edx                       #  298   0x78c2a  3      
  nop                                   #  299   0x78c2d  1      
  nop                                   #  300   0x78c2e  1      
.L_78d20:                               #        0x78c2f  0      
  testb $0x1, %al                       #  301   0x78c2f  2      
  je .L_78d40                           #  302   0x78c31  6      
  movl %edx, %esi                       #  303   0x78c37  2      
  addl $0x1, %ecx                       #  304   0x78c39  3      
  movl %esi, %esi                       #  305   0x78c3c  2      
  mulsd 0x100248c0(%r15,%rsi,8), %xmm0  #  306   0x78c3e  10     
  nop                                   #  307   0x78c48  1      
.L_78d40:                               #        0x78c49  0      
  sarl $0x1, %eax                       #  308   0x78c49  2      
  jne .L_78d00                          #  309   0x78c4b  6      
  nop                                   #  310   0x78c51  1      
  nop                                   #  311   0x78c52  1      
.L_78d60:                               #        0x78c53  0      
  divsd %xmm0, %xmm4                    #  312   0x78c53  4      
  nop                                   #  313   0x78c57  1      
  nop                                   #  314   0x78c58  1      
.L_78d80:                               #        0x78c59  0      
  movl 0x88(%rsp), %r13d                #  315   0x78c59  8      
  testl %r13d, %r13d                    #  316   0x78c61  3      
  je .L_79a40                           #  317   0x78c64  6      
  ucomisd 0xffab60e(%rip), %xmm4        #  318   0x78c6a  8      
  jae .L_79a40                          #  319   0x78c72  6      
  nop                                   #  320   0x78c78  1      
  jp .L_79a40                           #  321   0x78c79  6      
  movl 0x80(%rsp), %r12d                #  322   0x78c7f  8      
  testl %r12d, %r12d                    #  323   0x78c87  3      
  jle .L_79a40                          #  324   0x78c8a  6      
  movl 0xa4(%rsp), %r11d                #  325   0x78c90  8      
  nop                                   #  326   0x78c98  1      
  testl %r11d, %r11d                    #  327   0x78c99  3      
  jle .L_79d60                          #  328   0x78c9c  6      
  addl $0x1, %ecx                       #  329   0x78ca2  3      
  mulsd 0xffab5db(%rip), %xmm4          #  330   0x78ca5  8      
  movl 0x40(%rsp), %r13d                #  331   0x78cad  5      
  cvtsi2sdl %ecx, %xmm0                 #  332   0x78cb2  4      
  nop                                   #  333   0x78cb6  1      
  movl 0xa4(%rsp), %ecx                 #  334   0x78cb7  7      
  subl $0x1, %r13d                      #  335   0x78cbe  4      
  mulsd %xmm4, %xmm0                    #  336   0x78cc2  4      
  addsd 0xffab5c2(%rip), %xmm0          #  337   0x78cc6  8      
  movsd %xmm0, 0x8(%rsp)                #  338   0x78cce  6      
  nop                                   #  339   0x78cd4  1      
  movq 0x8(%rsp), %rsi                  #  340   0x78cd5  5      
  movq %rsi, %rax                       #  341   0x78cda  3      
  andl $0xffffffff, %esi                #  342   0x78cdd  6      
  shrq $0x20, %rax                      #  343   0x78ce3  4      
  subl $0x3400000, %eax                 #  344   0x78ce7  5      
  shlq $0x20, %rax                      #  345   0x78cec  4      
  orq %rax, %rsi                        #  346   0x78cf0  3      
  nop                                   #  347   0x78cf3  1      
.L_78e20:                               #        0x78cf4  0      
  movl 0x94(%rsp), %r9d                 #  348   0x78cf4  8      
  testl %r9d, %r9d                      #  349   0x78cfc  3      
  je .L_79ee0                           #  350   0x78cff  6      
  leal -0x8(,%rcx,8), %eax              #  351   0x78d05  7      
  movsd 0xffab224(%rip), %xmm0          #  352   0x78d0c  8      
  movq %rsi, 0x8(%rsp)                  #  353   0x78d14  5      
  movq 0x78(%rsp), %rdx                 #  354   0x78d19  5      
  cltq                                  #  355   0x78d1e  2      
  movsd 0x8(%rsp), %xmm3                #  356   0x78d20  6      
  movl %eax, %eax                       #  357   0x78d26  2      
  divsd 0x100247e0(%r15,%rax,1), %xmm0  #  358   0x78d28  10     
  xchgw %ax, %ax                        #  359   0x78d32  3      
  cvttsd2si %xmm4, %eax                 #  360   0x78d35  4      
  subsd %xmm3, %xmm0                    #  361   0x78d39  4      
  cvtsi2sdl %eax, %xmm3                 #  362   0x78d3d  4      
  addl $0x30, %eax                      #  363   0x78d41  3      
  movl %edx, %edx                       #  364   0x78d44  2      
  movb %al, (%r15,%rdx,1)               #  365   0x78d46  4      
  movl 0x78(%rsp), %r12d                #  366   0x78d4a  5      
  addl $0x1, %r12d                      #  367   0x78d4f  4      
  xchgw %ax, %ax                        #  368   0x78d53  3      
  subsd %xmm3, %xmm4                    #  369   0x78d56  4      
  ucomisd %xmm4, %xmm0                  #  370   0x78d5a  4      
  ja .L_79280                           #  371   0x78d5e  6      
  movsd 0xffab514(%rip), %xmm6          #  372   0x78d64  8      
  movapd %xmm6, %xmm3                   #  373   0x78d6c  4      
  subsd %xmm4, %xmm3                    #  374   0x78d70  4      
  xchgw %ax, %ax                        #  375   0x78d74  3      
  ucomisd %xmm3, %xmm0                  #  376   0x78d77  4      
  ja .L_7a200                           #  377   0x78d7b  6      
  cmpl $0x1, %ecx                       #  378   0x78d81  3      
  jle .L_79d60                          #  379   0x78d84  6      
  movl $0x1, %edx                       #  380   0x78d8a  5      
  movsd 0xffab4f1(%rip), %xmm3          #  381   0x78d8f  8      
  jmpq .L_78f00                         #  382   0x78d97  5      
  nop                                   #  383   0x78d9c  1      
  nop                                   #  384   0x78d9d  1      
.L_78ee0:                               #        0x78d9e  0      
  movapd %xmm6, %xmm5                   #  385   0x78d9e  4      
  subsd %xmm4, %xmm5                    #  386   0x78da2  4      
  ucomisd %xmm5, %xmm0                  #  387   0x78da6  4      
  ja .L_7a200                           #  388   0x78daa  6      
  addl $0x1, %edx                       #  389   0x78db0  3      
  cmpl %ecx, %edx                       #  390   0x78db3  2      
  jge .L_79d60                          #  391   0x78db5  6      
  nop                                   #  392   0x78dbb  1      
.L_78f00:                               #        0x78dbc  0      
  mulsd %xmm3, %xmm4                    #  393   0x78dbc  4      
  mulsd %xmm3, %xmm0                    #  394   0x78dc0  4      
  cvttsd2si %xmm4, %eax                 #  395   0x78dc4  4      
  cvtsi2sdl %eax, %xmm5                 #  396   0x78dc8  4      
  addl $0x30, %eax                      #  397   0x78dcc  3      
  movl %r12d, %r12d                     #  398   0x78dcf  3      
  movb %al, (%r15,%r12,1)               #  399   0x78dd2  4      
  addl $0x1, %r12d                      #  400   0x78dd6  4      
  xchgw %ax, %ax                        #  401   0x78dda  3      
  subsd %xmm5, %xmm4                    #  402   0x78ddd  4      
  ucomisd %xmm4, %xmm0                  #  403   0x78de1  4      
  jbe .L_78ee0                          #  404   0x78de5  6      
  jmpq .L_79280                         #  405   0x78deb  5      
  xchgw %ax, %ax                        #  406   0x78df0  3      
  nop                                   #  407   0x78df3  1      
.L_78f40:                               #        0x78df4  0      
  movsd %xmm1, 0x8(%rsp)                #  408   0x78df4  6      
  movq 0x8(%rsp), %r12                  #  409   0x78dfa  5      
  subl $0x3ff, %edx                     #  410   0x78dff  6      
  movl $0x0, 0x8c(%rsp)                 #  411   0x78e05  11     
  movq %r12, %rax                       #  412   0x78e10  3      
  nop                                   #  413   0x78e13  1      
  andl $0xffffffff, %r12d               #  414   0x78e14  7      
  shrq $0x20, %rax                      #  415   0x78e1b  4      
  andl $0xfffff, %eax                   #  416   0x78e1f  5      
  orq $0x3ff00000, %rax                 #  417   0x78e24  6      
  shlq $0x20, %rax                      #  418   0x78e2a  4      
  orq %rax, %r12                        #  419   0x78e2e  3      
  nop                                   #  420   0x78e31  1      
  movl 0xbc(%rsp), %eax                 #  421   0x78e32  7      
  jmpq .L_78a40                         #  422   0x78e39  5      
  nop                                   #  423   0x78e3e  1      
  nop                                   #  424   0x78e3f  1      
.L_78fa0:                               #        0x78e40  0      
  movl $0x0, 0x50(%rsp)                 #  425   0x78e40  8      
  nop                                   #  426   0x78e48  1      
  nop                                   #  427   0x78e49  1      
.L_78fc0:                               #        0x78e4a  0      
  movl %ebx, %ebx                       #  428   0x78e4a  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  429   0x78e4c  9      
  xorl %esi, %esi                       #  430   0x78e55  2      
  movl %ebx, %edi                       #  431   0x78e57  2      
  movsd %xmm2, 0x10(%rsp)               #  432   0x78e59  6      
  nop                                   #  433   0x78e5f  1      
  callq ._Balloc                        #  434   0x78e60  5      
  movl %eax, %eax                       #  435   0x78e65  2      
  movsd 0x10(%rsp), %xmm2               #  436   0x78e67  6      
  movq %rax, 0x78(%rsp)                 #  437   0x78e6d  5      
  movl %ebx, %ebx                       #  438   0x78e72  2      
  movl %eax, 0x40(%r15,%rbx,1)          #  439   0x78e74  5      
  movl $0xffffffff, %eax                #  440   0x78e79  5      
  nop                                   #  441   0x78e7e  1      
  movl $0x0, 0x38(%rsp)                 #  442   0x78e7f  8      
  movl $0xffffffff, 0x80(%rsp)          #  443   0x78e87  11     
  movl $0x1, 0x94(%rsp)                 #  444   0x78e92  11     
  xchgw %ax, %ax                        #  445   0x78e9d  3      
  movl %eax, 0xa4(%rsp)                 #  446   0x78ea0  7      
  nop                                   #  447   0x78ea7  1      
  nop                                   #  448   0x78ea8  1      
.L_79040:                               #        0x78ea9  0      
  cmpl $0xe, 0x40(%rsp)                 #  449   0x78ea9  5      
  movl 0xb8(%rsp), %eax                 #  450   0x78eae  7      
  jg .L_792e0                           #  451   0x78eb5  6      
  testl %eax, %eax                      #  452   0x78ebb  2      
  js .L_792e0                           #  453   0x78ebd  6      
  movl 0x40(%rsp), %eax                 #  454   0x78ec3  4      
  xchgw %ax, %ax                        #  455   0x78ec7  3      
  movl 0x80(%rsp), %r8d                 #  456   0x78eca  8      
  shll $0x3, %eax                       #  457   0x78ed2  3      
  testl %r8d, %r8d                      #  458   0x78ed5  3      
  cltq                                  #  459   0x78ed8  2      
  movl %eax, %eax                       #  460   0x78eda  2      
  movsd 0x100247e0(%r15,%rax,1), %xmm4  #  461   0x78edc  10     
  nop                                   #  462   0x78ee6  1      
  jle .L_79c80                          #  463   0x78ee7  6      
  nop                                   #  464   0x78eed  1      
  nop                                   #  465   0x78eee  1      
.L_790a0:                               #        0x78eef  0      
  movq %r13, 0x8(%rsp)                  #  466   0x78eef  5      
  movq 0x78(%rsp), %rcx                 #  467   0x78ef4  5      
  movsd 0x8(%rsp), %xmm0                #  468   0x78ef9  6      
  movapd %xmm0, %xmm1                   #  469   0x78eff  4      
  divsd %xmm4, %xmm1                    #  470   0x78f03  4      
  cvttsd2si %xmm1, %eax                 #  471   0x78f07  4      
  cvtsi2sdl %eax, %xmm3                 #  472   0x78f0b  4      
  leal 0x30(%rax), %edx                 #  473   0x78f0f  3      
  movl %ecx, %ecx                       #  474   0x78f12  2      
  movb %dl, (%r15,%rcx,1)               #  475   0x78f14  4      
  movl 0x78(%rsp), %r12d                #  476   0x78f18  5      
  addl $0x1, %r12d                      #  477   0x78f1d  4      
  cmpl $0x1, 0x80(%rsp)                 #  478   0x78f21  8      
  mulsd %xmm4, %xmm3                    #  479   0x78f29  4      
  xchgw %ax, %ax                        #  480   0x78f2d  3      
  subsd %xmm3, %xmm0                    #  481   0x78f30  4      
  je .L_791a0                           #  482   0x78f34  6      
  movsd 0xffab346(%rip), %xmm3          #  483   0x78f3a  8      
  movl $0x1, %edx                       #  484   0x78f42  5      
  mulsd %xmm3, %xmm0                    #  485   0x78f47  4      
  ucomisd %xmm2, %xmm0                  #  486   0x78f4b  4      
  nop                                   #  487   0x78f4f  1      
  je .L_79be0                           #  488   0x78f50  6      
  nop                                   #  489   0x78f56  1      
  nop                                   #  490   0x78f57  1      
.L_79120:                               #        0x78f58  0      
  movl 0x80(%rsp), %esi                 #  491   0x78f58  7      
  jmpq .L_79160                         #  492   0x78f5f  5      
  nop                                   #  493   0x78f64  1      
  nop                                   #  494   0x78f65  1      
.L_79140:                               #        0x78f66  0      
  mulsd %xmm3, %xmm0                    #  495   0x78f66  4      
  ucomisd %xmm2, %xmm0                  #  496   0x78f6a  4      
  jp .L_79160                           #  497   0x78f6e  6      
  je .L_79c00                           #  498   0x78f74  6      
  nop                                   #  499   0x78f7a  1      
  nop                                   #  500   0x78f7b  1      
.L_79160:                               #        0x78f7c  0      
  movapd %xmm0, %xmm1                   #  501   0x78f7c  4      
  addl $0x1, %edx                       #  502   0x78f80  3      
  divsd %xmm4, %xmm1                    #  503   0x78f83  4      
  cvttsd2si %xmm1, %eax                 #  504   0x78f87  4      
  cvtsi2sdl %eax, %xmm1                 #  505   0x78f8b  4      
  leal 0x30(%rax), %ecx                 #  506   0x78f8f  3      
  movl %r12d, %r12d                     #  507   0x78f92  3      
  movb %cl, (%r15,%r12,1)               #  508   0x78f95  4      
  nop                                   #  509   0x78f99  1      
  addl $0x1, %r12d                      #  510   0x78f9a  4      
  cmpl %edx, %esi                       #  511   0x78f9e  2      
  mulsd %xmm4, %xmm1                    #  512   0x78fa0  4      
  subsd %xmm1, %xmm0                    #  513   0x78fa4  4      
  jne .L_79140                          #  514   0x78fa8  6      
  nop                                   #  515   0x78fae  1      
  nop                                   #  516   0x78faf  1      
.L_791a0:                               #        0x78fb0  0      
  addsd %xmm0, %xmm0                    #  517   0x78fb0  4      
  ucomisd %xmm4, %xmm0                  #  518   0x78fb4  4      
  ja .L_791e0                           #  519   0x78fb8  6      
  ucomisd %xmm0, %xmm4                  #  520   0x78fbe  4      
  jne .L_79c00                          #  521   0x78fc2  6      
  jp .L_79c00                           #  522   0x78fc8  6      
  testb $0x1, %al                       #  523   0x78fce  2      
  nop                                   #  524   0x78fd0  1      
  je .L_79c00                           #  525   0x78fd1  6      
  nop                                   #  526   0x78fd7  1      
  nop                                   #  527   0x78fd8  1      
.L_791e0:                               #        0x78fd9  0      
  movq 0x78(%rsp), %rcx                 #  528   0x78fd9  5      
  jmpq .L_79220                         #  529   0x78fde  5      
  nop                                   #  530   0x78fe3  1      
  nop                                   #  531   0x78fe4  1      
.L_79200:                               #        0x78fe5  0      
  movq %rax, %r12                       #  532   0x78fe5  3      
  nop                                   #  533   0x78fe8  1      
  nop                                   #  534   0x78fe9  1      
.L_79220:                               #        0x78fea  0      
  leal -0x1(%r12), %eax                 #  535   0x78fea  5      
  movl %eax, %eax                       #  536   0x78fef  2      
  movzbl (%r15,%rax,1), %edx            #  537   0x78ff1  5      
  cmpb $0x39, %dl                       #  538   0x78ff6  3      
  jne .L_7a4a0                          #  539   0x78ff9  6      
  cmpl %ecx, %eax                       #  540   0x78fff  2      
  jne .L_79200                          #  541   0x79001  6      
  movq 0x78(%rsp), %rax                 #  542   0x79007  5      
  xchgw %ax, %ax                        #  543   0x7900c  3      
  addl $0x1, 0x40(%rsp)                 #  544   0x7900f  5      
  movl $0x31, %edx                      #  545   0x79014  5      
  movl %eax, %eax                       #  546   0x79019  2      
  movb $0x30, (%r15,%rax,1)             #  547   0x7901b  5      
  movq 0x78(%rsp), %rax                 #  548   0x79020  5      
  nop                                   #  549   0x79025  1      
.L_79260:                               #        0x79026  0      
  movl %eax, %eax                       #  550   0x79026  2      
  movb %dl, (%r15,%rax,1)               #  551   0x79028  4      
  movl 0x40(%rsp), %r13d                #  552   0x7902c  5      
  nop                                   #  553   0x79031  1      
  nop                                   #  554   0x79032  1      
.L_79280:                               #        0x79033  0      
  movl 0x60(%rsp), %esi                 #  555   0x79033  4      
  movl %ebx, %edi                       #  556   0x79037  2      
  addl $0x1, %r13d                      #  557   0x79039  4      
  xchgw %ax, %ax                        #  558   0x7903d  3      
  nop                                   #  559   0x79040  1      
  callq ._Bfree                         #  560   0x79041  5      
  movl %r12d, %r12d                     #  561   0x79046  3      
  movb $0x0, (%r15,%r12,1)              #  562   0x79049  5      
  movq 0x58(%rsp), %rcx                 #  563   0x7904e  5      
  testq %r14, %r14                      #  564   0x79053  3      
  movq 0x78(%rsp), %rax                 #  565   0x79056  5      
  movl %ecx, %ecx                       #  566   0x7905b  2      
  movl %r13d, (%r15,%rcx,1)             #  567   0x7905d  4      
  nop                                   #  568   0x79061  1      
  je .L_788a0                           #  569   0x79062  6      
  movl %r14d, %r14d                     #  570   0x79068  3      
  movl %r12d, (%r15,%r14,1)             #  571   0x7906b  4      
  jmpq .L_788a0                         #  572   0x7906f  5      
  nop                                   #  573   0x79074  1      
.L_792e0:                               #        0x79075  0      
  movl 0x94(%rsp), %ecx                 #  574   0x79075  7      
  testl %ecx, %ecx                      #  575   0x7907c  2      
  je .L_79a00                           #  576   0x7907e  6      
  cmpl $0x1, 0x50(%rsp)                 #  577   0x79084  5      
  jle .L_7a460                          #  578   0x79089  6      
  nop                                   #  579   0x7908f  1      
  movl 0x80(%rsp), %r12d                #  580   0x79090  8      
  subl $0x1, %r12d                      #  581   0x79098  4      
  cmpl %r12d, 0x68(%rsp)                #  582   0x7909c  5      
  jl .L_7a440                           #  583   0x790a1  6      
  movl 0x68(%rsp), %ecx                 #  584   0x790a7  4      
  subl %r12d, %ecx                      #  585   0x790ab  3      
  xchgw %ax, %ax                        #  586   0x790ae  3      
  movl %ecx, %r12d                      #  587   0x790b1  3      
  nop                                   #  588   0x790b4  1      
  nop                                   #  589   0x790b5  1      
.L_79340:                               #        0x790b6  0      
  movl 0x84(%rsp), %eax                 #  590   0x790b6  7      
  movl %eax, 0x8c(%rsp)                 #  591   0x790bd  7      
  movl 0x80(%rsp), %eax                 #  592   0x790c4  7      
  testl %eax, %eax                      #  593   0x790cb  2      
  js .L_7a4c0                           #  594   0x790cd  6      
  nop                                   #  595   0x790d3  1      
.L_79360:                               #        0x790d4  0      
  movl $0x1, %esi                       #  596   0x790d4  5      
  movl %ebx, %edi                       #  597   0x790d9  2      
  addl %eax, 0x84(%rsp)                 #  598   0x790db  7      
  addl %eax, 0x74(%rsp)                 #  599   0x790e2  4      
  nop                                   #  600   0x790e6  1      
  callq .__i2b                          #  601   0x790e7  5      
  movl %eax, %eax                       #  602   0x790ec  2      
  movq %rax, 0x98(%rsp)                 #  603   0x790ee  8      
  nop                                   #  604   0x790f6  1      
  nop                                   #  605   0x790f7  1      
.L_793a0:                               #        0x790f8  0      
  movl 0x74(%rsp), %eax                 #  606   0x790f8  4      
  testl %eax, %eax                      #  607   0x790fc  2      
  jle .L_793e0                          #  608   0x790fe  6      
  movl 0x8c(%rsp), %r11d                #  609   0x79104  8      
  testl %r11d, %r11d                    #  610   0x7910c  3      
  jle .L_793e0                          #  611   0x7910f  6      
  movl 0x8c(%rsp), %ecx                 #  612   0x79115  7      
  cmpl %ecx, 0x74(%rsp)                 #  613   0x7911c  4      
  movl %ecx, %eax                       #  614   0x79120  2      
  cmovlel 0x74(%rsp), %eax              #  615   0x79122  5      
  subl %eax, 0x84(%rsp)                 #  616   0x79127  7      
  subl %eax, 0x74(%rsp)                 #  617   0x7912e  4      
  subl %eax, %ecx                       #  618   0x79132  2      
  movl %ecx, 0x8c(%rsp)                 #  619   0x79134  7      
  nop                                   #  620   0x7913b  1      
.L_793e0:                               #        0x7913c  0      
  movl 0x68(%rsp), %r10d                #  621   0x7913c  5      
  testl %r10d, %r10d                    #  622   0x79141  3      
  jle .L_794a0                          #  623   0x79144  6      
  movl 0x94(%rsp), %r9d                 #  624   0x7914a  8      
  testl %r9d, %r9d                      #  625   0x79152  3      
  je .L_79e80                           #  626   0x79155  6      
  nop                                   #  627   0x7915b  1      
  testl %r12d, %r12d                    #  628   0x7915c  3      
  jle .L_79480                          #  629   0x7915f  6      
  movl 0x98(%rsp), %esi                 #  630   0x79165  7      
  movl %r12d, %edx                      #  631   0x7916c  3      
  movl %ebx, %edi                       #  632   0x7916f  2      
  nop                                   #  633   0x79171  1      
  callq .__pow5mult                     #  634   0x79172  5      
  movl 0x60(%rsp), %edx                 #  635   0x79177  4      
  movl %eax, %eax                       #  636   0x7917b  2      
  movl %ebx, %edi                       #  637   0x7917d  2      
  movl %eax, %esi                       #  638   0x7917f  2      
  movq %rax, 0x98(%rsp)                 #  639   0x79181  8      
  nop                                   #  640   0x79189  1      
  callq .__multiply                     #  641   0x7918a  5      
  movl 0x60(%rsp), %esi                 #  642   0x7918f  4      
  movl %eax, %eax                       #  643   0x79193  2      
  movl %ebx, %edi                       #  644   0x79195  2      
  movq %rax, 0xa8(%rsp)                 #  645   0x79197  8      
  nop                                   #  646   0x7919f  1      
  callq ._Bfree                         #  647   0x791a0  5      
  movq 0xa8(%rsp), %rax                 #  648   0x791a5  8      
  movq %rax, 0x60(%rsp)                 #  649   0x791ad  5      
  nop                                   #  650   0x791b2  1      
  nop                                   #  651   0x791b3  1      
.L_79480:                               #        0x791b4  0      
  movl 0x68(%rsp), %edx                 #  652   0x791b4  4      
  subl %r12d, %edx                      #  653   0x791b8  3      
  jne .L_79ea0                          #  654   0x791bb  6      
  nop                                   #  655   0x791c1  1      
  nop                                   #  656   0x791c2  1      
.L_794a0:                               #        0x791c3  0      
  movl $0x1, %esi                       #  657   0x791c3  5      
  movl %ebx, %edi                       #  658   0x791c8  2      
  nop                                   #  659   0x791ca  1      
  nop                                   #  660   0x791cb  1      
  callq .__i2b                          #  661   0x791cc  5      
  movl 0x90(%rsp), %r8d                 #  662   0x791d1  8      
  movl %eax, %eax                       #  663   0x791d9  2      
  movq %rax, 0x68(%rsp)                 #  664   0x791db  5      
  testl %r8d, %r8d                      #  665   0x791e0  3      
  jle .L_79520                          #  666   0x791e3  6      
  movl 0x90(%rsp), %edx                 #  667   0x791e9  7      
  movl %eax, %esi                       #  668   0x791f0  2      
  movl %ebx, %edi                       #  669   0x791f2  2      
  nop                                   #  670   0x791f4  1      
  nop                                   #  671   0x791f5  1      
  nop                                   #  672   0x791f6  1      
  callq .__pow5mult                     #  673   0x791f7  5      
  movl %eax, %eax                       #  674   0x791fc  2      
  movq %rax, 0x68(%rsp)                 #  675   0x791fe  5      
  nop                                   #  676   0x79203  1      
  nop                                   #  677   0x79204  1      
.L_79520:                               #        0x79205  0      
  cmpl $0x1, 0x50(%rsp)                 #  678   0x79205  5      
  jle .L_7a360                          #  679   0x7920a  6      
  nop                                   #  680   0x79210  1      
  nop                                   #  681   0x79211  1      
.L_79540:                               #        0x79212  0      
  movl $0x0, 0xa8(%rsp)                 #  682   0x79212  11     
  nop                                   #  683   0x7921d  1      
  nop                                   #  684   0x7921e  1      
.L_79560:                               #        0x7921f  0      
  movl 0x90(%rsp), %edi                 #  685   0x7921f  7      
  movl $0x1, %eax                       #  686   0x79226  5      
  testl %edi, %edi                      #  687   0x7922b  2      
  jne .L_7a2c0                          #  688   0x7922d  6      
  nop                                   #  689   0x79233  1      
.L_79580:                               #        0x79234  0      
  movl 0x74(%rsp), %ecx                 #  690   0x79234  4      
  leal (%rax,%rcx,1), %edx              #  691   0x79238  3      
  movl $0x1c, %eax                      #  692   0x7923b  5      
  andl $0x1f, %edx                      #  693   0x79240  3      
  jne .L_79d20                          #  694   0x79243  6      
  nop                                   #  695   0x79249  1      
.L_795a0:                               #        0x7924a  0      
  addl %eax, 0x84(%rsp)                 #  696   0x7924a  7      
  addl %eax, 0x8c(%rsp)                 #  697   0x79251  7      
  addl %eax, 0x74(%rsp)                 #  698   0x79258  4      
  nop                                   #  699   0x7925c  1      
.L_795c0:                               #        0x7925d  0      
  movl 0x84(%rsp), %esi                 #  700   0x7925d  7      
  testl %esi, %esi                      #  701   0x79264  2      
  jle .L_79600                          #  702   0x79266  6      
  movl 0x84(%rsp), %edx                 #  703   0x7926c  7      
  movl 0x60(%rsp), %esi                 #  704   0x79273  4      
  movl %ebx, %edi                       #  705   0x79277  2      
  nop                                   #  706   0x79279  1      
  callq .__lshift                       #  707   0x7927a  5      
  movl %eax, %eax                       #  708   0x7927f  2      
  movq %rax, 0x60(%rsp)                 #  709   0x79281  5      
  nop                                   #  710   0x79286  1      
  nop                                   #  711   0x79287  1      
.L_79600:                               #        0x79288  0      
  movl 0x74(%rsp), %ecx                 #  712   0x79288  4      
  testl %ecx, %ecx                      #  713   0x7928c  2      
  jle .L_79640                          #  714   0x7928e  6      
  movl 0x74(%rsp), %edx                 #  715   0x79294  4      
  movl 0x68(%rsp), %esi                 #  716   0x79298  4      
  movl %ebx, %edi                       #  717   0x7929c  2      
  nop                                   #  718   0x7929e  1      
  callq .__lshift                       #  719   0x7929f  5      
  movl %eax, %eax                       #  720   0x792a4  2      
  movq %rax, 0x68(%rsp)                 #  721   0x792a6  5      
  nop                                   #  722   0x792ab  1      
  nop                                   #  723   0x792ac  1      
.L_79640:                               #        0x792ad  0      
  movl 0x88(%rsp), %edx                 #  724   0x792ad  7      
  testl %edx, %edx                      #  725   0x792b4  2      
  jne .L_7a220                          #  726   0x792b6  6      
  xchgw %ax, %ax                        #  727   0x792bc  3      
  nop                                   #  728   0x792bf  1      
.L_79660:                               #        0x792c0  0      
  movl 0x80(%rsp), %r12d                #  729   0x792c0  8      
  testl %r12d, %r12d                    #  730   0x792c8  3      
  jle .L_7a3c0                          #  731   0x792cb  6      
  nop                                   #  732   0x792d1  1      
.L_79680:                               #        0x792d2  0      
  movl 0x94(%rsp), %r10d                #  733   0x792d2  8      
  movq 0x78(%rsp), %r12                 #  734   0x792da  5      
  movl $0x1, %eax                       #  735   0x792df  5      
  testl %r10d, %r10d                    #  736   0x792e4  3      
  je .L_7a020                           #  737   0x792e7  6      
  nop                                   #  738   0x792ed  1      
  movl 0x8c(%rsp), %r9d                 #  739   0x792ee  8      
  testl %r9d, %r9d                      #  740   0x792f6  3      
  jle .L_79700                          #  741   0x792f9  6      
  movl 0x8c(%rsp), %edx                 #  742   0x792ff  7      
  movl 0x98(%rsp), %esi                 #  743   0x79306  7      
  movl %ebx, %edi                       #  744   0x7930d  2      
  nop                                   #  745   0x7930f  1      
  nop                                   #  746   0x79310  1      
  nop                                   #  747   0x79311  1      
  callq .__lshift                       #  748   0x79312  5      
  movl %eax, %eax                       #  749   0x79317  2      
  movq %rax, 0x98(%rsp)                 #  750   0x79319  8      
  nop                                   #  751   0x79321  1      
  nop                                   #  752   0x79322  1      
.L_79700:                               #        0x79323  0      
  movl 0xa8(%rsp), %r8d                 #  753   0x79323  8      
  movq 0x98(%rsp), %rax                 #  754   0x7932b  8      
  testl %r8d, %r8d                      #  755   0x79333  3      
  movq %rax, 0x38(%rsp)                 #  756   0x79336  5      
  jne .L_7a600                          #  757   0x7933b  6      
  xchgw %ax, %ax                        #  758   0x79341  3      
.L_79720:                               #        0x79344  0      
  andl $0x1, %r13d                      #  759   0x79344  4      
  movq 0x78(%rsp), %r12                 #  760   0x79348  5      
  movl %r13d, 0x88(%rsp)                #  761   0x7934d  8      
  movq 0x98(%rsp), %r13                 #  762   0x79355  8      
  nop                                   #  763   0x7935d  1      
.L_79740:                               #        0x7935e  0      
  movl 0x68(%rsp), %esi                 #  764   0x7935e  4      
  movl 0x60(%rsp), %edi                 #  765   0x79362  4      
  nop                                   #  766   0x79366  1      
  nop                                   #  767   0x79367  1      
  callq .quorem                         #  768   0x79368  5      
  movl 0x60(%rsp), %edi                 #  769   0x7936d  4      
  addl $0x30, %eax                      #  770   0x79371  3      
  movl %r13d, %esi                      #  771   0x79374  3      
  movl %eax, 0x74(%rsp)                 #  772   0x79377  4      
  nop                                   #  773   0x7937b  1      
  callq .__mcmp                         #  774   0x7937c  5      
  movl 0x38(%rsp), %edx                 #  775   0x79381  4      
  movl 0x68(%rsp), %esi                 #  776   0x79385  4      
  movl %ebx, %edi                       #  777   0x79389  2      
  movl %eax, 0x84(%rsp)                 #  778   0x7938b  7      
  nop                                   #  779   0x79392  1      
  callq .__mdiff                        #  780   0x79393  5      
  movl %eax, %edx                       #  781   0x79398  2      
  movl $0x1, %eax                       #  782   0x7939a  5      
  movl %edx, %edx                       #  783   0x7939f  2      
  movl 0xc(%r15,%rdx,1), %edi           #  784   0x793a1  5      
  testl %edi, %edi                      #  785   0x793a6  2      
  je .L_79ba0                           #  786   0x793a8  6      
  nop                                   #  787   0x793ae  1      
.L_797c0:                               #        0x793af  0      
  movl %edx, %esi                       #  788   0x793af  2      
  movl %ebx, %edi                       #  789   0x793b1  2      
  movl %eax, 0x30(%rsp)                 #  790   0x793b3  4      
  nop                                   #  791   0x793b7  1      
  nop                                   #  792   0x793b8  1      
  callq ._Bfree                         #  793   0x793b9  5      
  movl 0x30(%rsp), %eax                 #  794   0x793be  4      
  testl %eax, %eax                      #  795   0x793c2  2      
  jne .L_79800                          #  796   0x793c4  6      
  movl 0x50(%rsp), %esi                 #  797   0x793ca  4      
  testl %esi, %esi                      #  798   0x793ce  2      
  jne .L_79800                          #  799   0x793d0  6      
  movl 0x88(%rsp), %ecx                 #  800   0x793d6  7      
  testl %ecx, %ecx                      #  801   0x793dd  2      
  je .L_7a720                           #  802   0x793df  6      
  nop                                   #  803   0x793e5  1      
.L_79800:                               #        0x793e6  0      
  cmpl $0x0, 0x84(%rsp)                 #  804   0x793e6  8      
  jl .L_7a4e0                           #  805   0x793ee  6      
  jne .L_79840                          #  806   0x793f4  6      
  movl 0x50(%rsp), %edx                 #  807   0x793fa  4      
  testl %edx, %edx                      #  808   0x793fe  2      
  jne .L_79840                          #  809   0x79400  6      
  movl 0x88(%rsp), %r11d                #  810   0x79406  8      
  testl %r11d, %r11d                    #  811   0x7940e  3      
  je .L_7a4e0                           #  812   0x79411  6      
  nop                                   #  813   0x79417  1      
  nop                                   #  814   0x79418  1      
.L_79840:                               #        0x79419  0      
  testl %eax, %eax                      #  815   0x79419  2      
  jg .L_7a6e0                           #  816   0x7941b  6      
  movzbl 0x74(%rsp), %ecx               #  817   0x79421  5      
  movl %r12d, %r12d                     #  818   0x79426  3      
  movb %cl, (%r15,%r12,1)               #  819   0x79429  4      
  addl $0x1, %r12d                      #  820   0x7942d  4      
  movl %r12d, %eax                      #  821   0x79431  3      
  subl 0x78(%rsp), %eax                 #  822   0x79434  4      
  nop                                   #  823   0x79438  1      
  cmpl 0x80(%rsp), %eax                 #  824   0x79439  7      
  je .L_7a0e0                           #  825   0x79440  6      
  movl 0x60(%rsp), %esi                 #  826   0x79446  4      
  xorl %ecx, %ecx                       #  827   0x7944a  2      
  movl $0xa, %edx                       #  828   0x7944c  5      
  movl %ebx, %edi                       #  829   0x79451  2      
  nop                                   #  830   0x79453  1      
  callq .__multadd                      #  831   0x79454  5      
  cmpl 0x38(%rsp), %r13d                #  832   0x79459  5      
  movl %eax, %eax                       #  833   0x7945e  2      
  movq %rax, 0x60(%rsp)                 #  834   0x79460  5      
  je .L_79d80                           #  835   0x79465  6      
  movl %r13d, %esi                      #  836   0x7946b  3      
  xorl %ecx, %ecx                       #  837   0x7946e  2      
  movl $0xa, %edx                       #  838   0x79470  5      
  movl %ebx, %edi                       #  839   0x79475  2      
  xchgw %ax, %ax                        #  840   0x79477  3      
  nop                                   #  841   0x7947a  1      
  nop                                   #  842   0x7947b  1      
  callq .__multadd                      #  843   0x7947c  5      
  movl 0x38(%rsp), %esi                 #  844   0x79481  4      
  xorl %ecx, %ecx                       #  845   0x79485  2      
  movl $0xa, %edx                       #  846   0x79487  5      
  movl %ebx, %edi                       #  847   0x7948c  2      
  movl %eax, %r13d                      #  848   0x7948e  3      
  nop                                   #  849   0x79491  1      
  callq .__multadd                      #  850   0x79492  5      
  movl %eax, %eax                       #  851   0x79497  2      
  movq %rax, 0x38(%rsp)                 #  852   0x79499  5      
  jmpq .L_79740                         #  853   0x7949e  5      
  nop                                   #  854   0x794a3  1      
  nop                                   #  855   0x794a4  1      
.L_79900:                               #        0x794a5  0      
  movl 0x40(%rsp), %edx                 #  856   0x794a5  4      
  subl %edx, 0x84(%rsp)                 #  857   0x794a9  7      
  movl $0x0, 0x90(%rsp)                 #  858   0x794b0  11     
  negl %edx                             #  859   0x794bb  2      
  movl %edx, 0x68(%rsp)                 #  860   0x794bd  4      
  nop                                   #  861   0x794c1  1      
  jmpq .L_78b60                         #  862   0x794c2  5      
  nop                                   #  863   0x794c7  1      
  nop                                   #  864   0x794c8  1      
.L_79940:                               #        0x794c9  0      
  negl %eax                             #  865   0x794c9  2      
  movl $0x0, 0x74(%rsp)                 #  866   0x794cb  8      
  movl %eax, 0x84(%rsp)                 #  867   0x794d3  7      
  jmpq .L_78b20                         #  868   0x794da  5      
  nop                                   #  869   0x794df  1      
.L_79960:                               #        0x794e0  0      
  movl $0x20, %ecx                      #  870   0x794e0  5      
  movl %r13d, %r12d                     #  871   0x794e5  3      
  subl %edx, %ecx                       #  872   0x794e8  2      
  shll %cl, %r12d                       #  873   0x794ea  3      
  jmpq .L_78a00                         #  874   0x794ed  5      
  nop                                   #  875   0x794f2  1      
.L_79980:                               #        0x794f3  0      
  cmpl $0x4, 0x50(%rsp)                 #  876   0x794f3  5      
  je .L_7a1e0                           #  877   0x794f8  6      
  cmpl $0x5, 0x50(%rsp)                 #  878   0x794fe  5      
  jne .L_78fc0                          #  879   0x79503  6      
  nop                                   #  880   0x79509  1      
  movl $0x1, 0x94(%rsp)                 #  881   0x7950a  11     
  nop                                   #  882   0x79515  1      
  nop                                   #  883   0x79516  1      
.L_799c0:                               #        0x79517  0      
  movl 0x40(%rsp), %ecx                 #  884   0x79517  4      
  addl 0x38(%rsp), %ecx                 #  885   0x7951b  4      
  movl %ecx, %edi                       #  886   0x7951f  2      
  movl %ecx, 0xa4(%rsp)                 #  887   0x79521  7      
  addl $0x1, %edi                       #  888   0x79528  3      
  testl %edi, %edi                      #  889   0x7952b  2      
  jle .L_79c20                          #  890   0x7952d  6      
  cmpl $0xe, %edi                       #  891   0x79533  3      
  nop                                   #  892   0x79536  1      
  movl %edi, 0x80(%rsp)                 #  893   0x79537  7      
  setbe %r12b                           #  894   0x7953e  4      
  andl %eax, %r12d                      #  895   0x79542  3      
  jmpq .L_78c00                         #  896   0x79545  5      
  nop                                   #  897   0x7954a  1      
.L_79a00:                               #        0x7954b  0      
  movl 0x84(%rsp), %edx                 #  898   0x7954b  7      
  movl 0x68(%rsp), %r12d                #  899   0x79552  5      
  movq $0x0, 0x98(%rsp)                 #  900   0x79557  12     
  movl %edx, 0x8c(%rsp)                 #  901   0x79563  7      
  nop                                   #  902   0x7956a  1      
  jmpq .L_793a0                         #  903   0x7956b  5      
  nop                                   #  904   0x79570  1      
  nop                                   #  905   0x79571  1      
.L_79a40:                               #        0x79572  0      
  cvtsi2sdl %ecx, %xmm0                 #  906   0x79572  4      
  movl 0x80(%rsp), %r10d                #  907   0x79576  8      
  mulsd %xmm4, %xmm0                    #  908   0x7957e  4      
  addsd 0xffaad06(%rip), %xmm0          #  909   0x79582  8      
  movsd %xmm0, 0x8(%rsp)                #  910   0x7958a  6      
  xchgw %ax, %ax                        #  911   0x79590  3      
  movq 0x8(%rsp), %rsi                  #  912   0x79593  5      
  movq %rsi, %rdx                       #  913   0x79598  3      
  movq %rsi, %rax                       #  914   0x7959b  3      
  shrq $0x20, %rdx                      #  915   0x7959e  4      
  andl $0xffffffff, %eax                #  916   0x795a2  5      
  subl $0x3400000, %edx                 #  917   0x795a7  6      
  shlq $0x20, %rdx                      #  918   0x795ad  4      
  orq %rdx, %rax                        #  919   0x795b1  3      
  nop                                   #  920   0x795b4  1      
  testl %r10d, %r10d                    #  921   0x795b5  3      
  movq %rax, %rsi                       #  922   0x795b8  3      
  jne .L_79dc0                          #  923   0x795bb  6      
  subsd 0xffaaccf(%rip), %xmm4          #  924   0x795c1  8      
  movq %rax, 0x8(%rsp)                  #  925   0x795c9  5      
  movsd 0x8(%rsp), %xmm0                #  926   0x795ce  6      
  nop                                   #  927   0x795d4  1      
  ucomisd %xmm0, %xmm4                  #  928   0x795d5  4      
  ja .L_79cc0                           #  929   0x795d9  6      
  movsd 0xffaa959(%rip), %xmm3          #  930   0x795df  8      
  xorpd %xmm3, %xmm0                    #  931   0x795e7  4      
  ucomisd %xmm4, %xmm0                  #  932   0x795eb  4      
  jbe .L_79d60                          #  933   0x795ef  6      
.L_79ac0:                               #        0x795f5  0      
  movq $0x0, 0x68(%rsp)                 #  934   0x795f5  9      
  movq $0x0, 0x98(%rsp)                 #  935   0x795fe  12     
  nop                                   #  936   0x7960a  1      
.L_79ae0:                               #        0x7960b  0      
  movl 0x38(%rsp), %ecx                 #  937   0x7960b  4      
  movq 0x98(%rsp), %rax                 #  938   0x7960f  8      
  xorl %r13d, %r13d                     #  939   0x79617  3      
  movq 0x78(%rsp), %r12                 #  940   0x7961a  5      
  notl %ecx                             #  941   0x7961f  2      
  movq %rax, 0x38(%rsp)                 #  942   0x79621  5      
  movl %ecx, 0x40(%rsp)                 #  943   0x79626  4      
  nop                                   #  944   0x7962a  1      
.L_79b00:                               #        0x7962b  0      
  movl 0x68(%rsp), %esi                 #  945   0x7962b  4      
  movl %ebx, %edi                       #  946   0x7962f  2      
  nop                                   #  947   0x79631  1      
  nop                                   #  948   0x79632  1      
  callq ._Bfree                         #  949   0x79633  5      
  cmpq $0x0, 0x38(%rsp)                 #  950   0x79638  6      
  je .L_79c00                           #  951   0x7963e  6      
  cmpl 0x38(%rsp), %r13d                #  952   0x79644  5      
  je .L_79b60                           #  953   0x79649  6      
  testq %r13, %r13                      #  954   0x7964f  3      
  je .L_79b60                           #  955   0x79652  6      
  movl %r13d, %esi                      #  956   0x79658  3      
  movl %ebx, %edi                       #  957   0x7965b  2      
  nop                                   #  958   0x7965d  1      
  nop                                   #  959   0x7965e  1      
  nop                                   #  960   0x7965f  1      
  callq ._Bfree                         #  961   0x79660  5      
.L_79b60:                               #        0x79665  0      
  movl 0x38(%rsp), %esi                 #  962   0x79665  4      
  movl %ebx, %edi                       #  963   0x79669  2      
  nop                                   #  964   0x7966b  1      
  nop                                   #  965   0x7966c  1      
  callq ._Bfree                         #  966   0x7966d  5      
  movl 0x40(%rsp), %r13d                #  967   0x79672  5      
  jmpq .L_79280                         #  968   0x79677  5      
  nop                                   #  969   0x7967c  1      
  nop                                   #  970   0x7967d  1      
.L_79ba0:                               #        0x7967e  0      
  movl 0x60(%rsp), %edi                 #  971   0x7967e  4      
  movl %edx, %esi                       #  972   0x79682  2      
  movq %rdx, 0x30(%rsp)                 #  973   0x79684  5      
  nop                                   #  974   0x79689  1      
  nop                                   #  975   0x7968a  1      
  callq .__mcmp                         #  976   0x7968b  5      
  movq 0x30(%rsp), %rdx                 #  977   0x79690  5      
  jmpq .L_797c0                         #  978   0x79695  5      
  nop                                   #  979   0x7969a  1      
  nop                                   #  980   0x7969b  1      
.L_79be0:                               #        0x7969c  0      
  jp .L_79120                           #  981   0x7969c  6      
  nop                                   #  982   0x796a2  1      
  nop                                   #  983   0x796a3  1      
.L_79c00:                               #        0x796a4  0      
  movl 0x40(%rsp), %r13d                #  984   0x796a4  5      
  jmpq .L_79280                         #  985   0x796a9  5      
  nop                                   #  986   0x796ae  1      
  nop                                   #  987   0x796af  1      
.L_79c20:                               #        0x796b0  0      
  cmpl $0xe, %edi                       #  988   0x796b0  3      
  movl %edi, 0x80(%rsp)                 #  989   0x796b3  7      
  setbe %al                             #  990   0x796ba  3      
  nop                                   #  991   0x796bd  1      
  nop                                   #  992   0x796be  1      
.L_79c40:                               #        0x796bf  0      
  movl %ebx, %ebx                       #  993   0x796bf  2      
  movl $0x0, 0x44(%r15,%rbx,1)          #  994   0x796c1  9      
  andl %eax, %r12d                      #  995   0x796ca  3      
  nop                                   #  996   0x796cd  1      
  nop                                   #  997   0x796ce  1      
.L_79c60:                               #        0x796cf  0      
  xorl %esi, %esi                       #  998   0x796cf  2      
  jmpq .L_78c40                         #  999   0x796d1  5      
  nop                                   #  1000  0x796d6  1      
  nop                                   #  1001  0x796d7  1      
.L_79c80:                               #        0x796d8  0      
  movl 0x38(%rsp), %edi                 #  1002  0x796d8  4      
  testl %edi, %edi                      #  1003  0x796dc  2      
  jns .L_790a0                          #  1004  0x796de  6      
  movl 0x80(%rsp), %esi                 #  1005  0x796e4  7      
  testl %esi, %esi                      #  1006  0x796eb  2      
  jne .L_79ac0                          #  1007  0x796ed  6      
  nop                                   #  1008  0x796f3  1      
  mulsd 0xffaab9c(%rip), %xmm4          #  1009  0x796f4  8      
  movq %r13, 0x8(%rsp)                  #  1010  0x796fc  5      
  movsd 0x8(%rsp), %xmm0                #  1011  0x79701  6      
  ucomisd %xmm0, %xmm4                  #  1012  0x79707  4      
  jae .L_79ac0                          #  1013  0x7970b  6      
  nop                                   #  1014  0x79711  1      
.L_79cc0:                               #        0x79712  0      
  movq $0x0, 0x68(%rsp)                 #  1015  0x79712  9      
  movq $0x0, 0x98(%rsp)                 #  1016  0x7971b  12     
  nop                                   #  1017  0x79727  1      
.L_79ce0:                               #        0x79728  0      
  movq 0x78(%rsp), %rdx                 #  1018  0x79728  5      
  xorl %r13d, %r13d                     #  1019  0x7972d  3      
  movl %edx, %edx                       #  1020  0x79730  2      
  movb $0x31, (%r15,%rdx,1)             #  1021  0x79732  5      
  movl 0x78(%rsp), %r12d                #  1022  0x79737  5      
  movq 0x98(%rsp), %rcx                 #  1023  0x7973c  8      
  nop                                   #  1024  0x79744  1      
  addl $0x1, 0x40(%rsp)                 #  1025  0x79745  5      
  addl $0x1, %r12d                      #  1026  0x7974a  4      
  movq %rcx, 0x38(%rsp)                 #  1027  0x7974e  5      
  jmpq .L_79b00                         #  1028  0x79753  5      
  nop                                   #  1029  0x79758  1      
.L_79d20:                               #        0x79759  0      
  movb $0x20, %al                       #  1030  0x79759  2      
  subl %edx, %eax                       #  1031  0x7975b  2      
  cmpl $0x4, %eax                       #  1032  0x7975d  3      
  jle .L_7a7a0                          #  1033  0x79760  6      
  subl $0x4, %eax                       #  1034  0x79766  3      
  addl %eax, 0x84(%rsp)                 #  1035  0x79769  7      
  addl %eax, 0x8c(%rsp)                 #  1036  0x79770  7      
  xchgw %ax, %ax                        #  1037  0x79777  3      
  addl %eax, 0x74(%rsp)                 #  1038  0x7977a  4      
  jmpq .L_795c0                         #  1039  0x7977e  5      
  nop                                   #  1040  0x79783  1      
  nop                                   #  1041  0x79784  1      
.L_79d60:                               #        0x79785  0      
  movsd %xmm1, 0x8(%rsp)                #  1042  0x79785  6      
  movq 0x8(%rsp), %r13                  #  1043  0x7978b  5      
  jmpq .L_79040                         #  1044  0x79790  5      
  nop                                   #  1045  0x79795  1      
  nop                                   #  1046  0x79796  1      
.L_79d80:                               #        0x79797  0      
  movl %r13d, %esi                      #  1047  0x79797  3      
  xorl %ecx, %ecx                       #  1048  0x7979a  2      
  movl $0xa, %edx                       #  1049  0x7979c  5      
  movl %ebx, %edi                       #  1050  0x797a1  2      
  nop                                   #  1051  0x797a3  1      
  callq .__multadd                      #  1052  0x797a4  5      
  movl %eax, %r13d                      #  1053  0x797a9  3      
  movq %r13, 0x38(%rsp)                 #  1054  0x797ac  5      
  jmpq .L_79740                         #  1055  0x797b1  5      
  nop                                   #  1056  0x797b6  1      
  nop                                   #  1057  0x797b7  1      
.L_79dc0:                               #        0x797b8  0      
  movl 0x40(%rsp), %r13d                #  1058  0x797b8  5      
  movl 0x80(%rsp), %ecx                 #  1059  0x797bd  7      
  jmpq .L_78e20                         #  1060  0x797c4  5      
  nop                                   #  1061  0x797c9  1      
.L_79de0:                               #        0x797ca  0      
  movl 0x40(%rsp), %edx                 #  1062  0x797ca  4      
  movapd %xmm1, %xmm4                   #  1063  0x797ce  4      
  movl $0x2, %ecx                       #  1064  0x797d2  5      
  negl %edx                             #  1065  0x797d7  2      
  je .L_78d80                           #  1066  0x797d9  6      
  leaq (,%rdx,8), %rax                  #  1067  0x797df  8      
  xorl %esi, %esi                       #  1068  0x797e7  2      
  nop                                   #  1069  0x797e9  1      
  andl $0x78, %eax                      #  1070  0x797ea  3      
  movl %eax, %eax                       #  1071  0x797ed  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm4  #  1072  0x797ef  10     
  movl %edx, %eax                       #  1073  0x797f9  2      
  sarl $0x4, %eax                       #  1074  0x797fb  3      
  testl %eax, %eax                      #  1075  0x797fe  2      
  jne .L_79e40                          #  1076  0x79800  6      
  jmpq .L_78d80                         #  1077  0x79806  5      
  nop                                   #  1078  0x7980b  1      
.L_79e20:                               #        0x7980c  0      
  addl $0x1, %esi                       #  1079  0x7980c  3      
  nop                                   #  1080  0x7980f  1      
  nop                                   #  1081  0x79810  1      
.L_79e40:                               #        0x79811  0      
  testb $0x1, %al                       #  1082  0x79811  2      
  je .L_79e60                           #  1083  0x79813  6      
  movl %esi, %edx                       #  1084  0x79819  2      
  addl $0x1, %ecx                       #  1085  0x7981b  3      
  movl %edx, %edx                       #  1086  0x7981e  2      
  mulsd 0x100248c0(%r15,%rdx,8), %xmm4  #  1087  0x79820  10     
  nop                                   #  1088  0x7982a  1      
.L_79e60:                               #        0x7982b  0      
  sarl $0x1, %eax                       #  1089  0x7982b  2      
  jne .L_79e20                          #  1090  0x7982d  6      
  jmpq .L_78d80                         #  1091  0x79833  5      
  nop                                   #  1092  0x79838  1      
  nop                                   #  1093  0x79839  1      
.L_79e80:                               #        0x7983a  0      
  movl 0x68(%rsp), %edx                 #  1094  0x7983a  4      
  nop                                   #  1095  0x7983e  1      
  nop                                   #  1096  0x7983f  1      
.L_79ea0:                               #        0x79840  0      
  movl 0x60(%rsp), %esi                 #  1097  0x79840  4      
  movl %ebx, %edi                       #  1098  0x79844  2      
  nop                                   #  1099  0x79846  1      
  nop                                   #  1100  0x79847  1      
  callq .__pow5mult                     #  1101  0x79848  5      
  movl %eax, %eax                       #  1102  0x7984d  2      
  movq %rax, 0x60(%rsp)                 #  1103  0x7984f  5      
  jmpq .L_794a0                         #  1104  0x79854  5      
  nop                                   #  1105  0x79859  1      
  nop                                   #  1106  0x7985a  1      
.L_79ee0:                               #        0x7985b  0      
  movq %rsi, 0x8(%rsp)                  #  1107  0x7985b  5      
  leal -0x8(,%rcx,8), %eax              #  1108  0x79860  7      
  movq 0x78(%rsp), %rdx                 #  1109  0x79867  5      
  movsd 0x8(%rsp), %xmm5                #  1110  0x7986c  6      
  cltq                                  #  1111  0x79872  2      
  nop                                   #  1112  0x79874  1      
  movl %eax, %eax                       #  1113  0x79875  2      
  mulsd 0x100247e0(%r15,%rax,1), %xmm5  #  1114  0x79877  10     
  cvttsd2si %xmm4, %eax                 #  1115  0x79881  4      
  cvtsi2sdl %eax, %xmm0                 #  1116  0x79885  4      
  addl $0x30, %eax                      #  1117  0x79889  3      
  movl %edx, %edx                       #  1118  0x7988c  2      
  movb %al, (%r15,%rdx,1)               #  1119  0x7988e  4      
  nop                                   #  1120  0x79892  1      
  movl 0x78(%rsp), %r12d                #  1121  0x79893  5      
  addl $0x1, %r12d                      #  1122  0x79898  4      
  cmpl $0x1, %ecx                       #  1123  0x7989c  3      
  subsd %xmm0, %xmm4                    #  1124  0x7989f  4      
  movapd %xmm4, %xmm0                   #  1125  0x798a3  4      
  je .L_79fa0                           #  1126  0x798a7  6      
  movl 0x78(%rsp), %eax                 #  1127  0x798ad  4      
  nop                                   #  1128  0x798b1  1      
  movsd 0xffaa9ce(%rip), %xmm3          #  1129  0x798b2  8      
  leal (%rcx,%rax,1), %esi              #  1130  0x798ba  3      
  movq %r12, %rax                       #  1131  0x798bd  3      
  nop                                   #  1132  0x798c0  1      
  nop                                   #  1133  0x798c1  1      
.L_79f60:                               #        0x798c2  0      
  mulsd %xmm3, %xmm0                    #  1134  0x798c2  4      
  cvttsd2si %xmm0, %edx                 #  1135  0x798c6  4      
  cvtsi2sdl %edx, %xmm4                 #  1136  0x798ca  4      
  addl $0x30, %edx                      #  1137  0x798ce  3      
  movl %eax, %eax                       #  1138  0x798d1  2      
  movb %dl, (%r15,%rax,1)               #  1139  0x798d3  4      
  addl $0x1, %eax                       #  1140  0x798d7  3      
  cmpl %esi, %eax                       #  1141  0x798da  2      
  subsd %xmm4, %xmm0                    #  1142  0x798dc  4      
  xchgw %ax, %ax                        #  1143  0x798e0  3      
  jne .L_79f60                          #  1144  0x798e3  6      
  leal -0x1(%rcx,%r12,1), %r12d         #  1145  0x798e9  5      
  nop                                   #  1146  0x798ee  1      
  nop                                   #  1147  0x798ef  1      
.L_79fa0:                               #        0x798f0  0      
  movsd 0xffaa640(%rip), %xmm3          #  1148  0x798f0  8      
  movapd %xmm5, %xmm4                   #  1149  0x798f8  4      
  addsd %xmm3, %xmm4                    #  1150  0x798fc  4      
  ucomisd %xmm4, %xmm0                  #  1151  0x79900  4      
  ja .L_7a200                           #  1152  0x79904  6      
  subsd %xmm5, %xmm3                    #  1153  0x7990a  4      
  xchgw %ax, %ax                        #  1154  0x7990e  3      
  ucomisd %xmm0, %xmm3                  #  1155  0x79911  4      
  jbe .L_79d60                          #  1156  0x79915  6      
  jmpq .L_7a000                         #  1157  0x7991b  5      
  nop                                   #  1158  0x79920  1      
  nop                                   #  1159  0x79921  1      
.L_79fe0:                               #        0x79922  0      
  movq %rax, %r12                       #  1160  0x79922  3      
  nop                                   #  1161  0x79925  1      
  nop                                   #  1162  0x79926  1      
.L_7a000:                               #        0x79927  0      
  leal -0x1(%r12), %eax                 #  1163  0x79927  5      
  movl %eax, %eax                       #  1164  0x7992c  2      
  cmpb $0x30, (%r15,%rax,1)             #  1165  0x7992e  5      
  je .L_79fe0                           #  1166  0x79933  6      
  jmpq .L_79280                         #  1167  0x79939  5      
  nop                                   #  1168  0x7993e  1      
.L_7a020:                               #        0x7993f  0      
  movq %r14, 0x50(%rsp)                 #  1169  0x7993f  5      
  movq 0x60(%rsp), %r13                 #  1170  0x79944  5      
  movq %rbx, %r14                       #  1171  0x79949  3      
  movl %eax, %ebx                       #  1172  0x7994c  2      
  jmpq .L_7a080                         #  1173  0x7994e  5      
  nop                                   #  1174  0x79953  1      
.L_7a040:                               #        0x79954  0      
  movl %r13d, %esi                      #  1175  0x79954  3      
  xorl %ecx, %ecx                       #  1176  0x79957  2      
  movl $0xa, %edx                       #  1177  0x79959  5      
  movl %r14d, %edi                      #  1178  0x7995e  3      
  addl $0x1, %ebx                       #  1179  0x79961  3      
  nop                                   #  1180  0x79964  1      
  callq .__multadd                      #  1181  0x79965  5      
  movl %eax, %r13d                      #  1182  0x7996a  3      
  nop                                   #  1183  0x7996d  1      
  nop                                   #  1184  0x7996e  1      
.L_7a080:                               #        0x7996f  0      
  movl 0x68(%rsp), %esi                 #  1185  0x7996f  4      
  movl %r13d, %edi                      #  1186  0x79973  3      
  nop                                   #  1187  0x79976  1      
  nop                                   #  1188  0x79977  1      
  callq .quorem                         #  1189  0x79978  5      
  addl $0x30, %eax                      #  1190  0x7997d  3      
  movl %r12d, %r12d                     #  1191  0x79980  3      
  movb %al, (%r15,%r12,1)               #  1192  0x79983  4      
  addl $0x1, %r12d                      #  1193  0x79987  4      
  cmpl 0x80(%rsp), %ebx                 #  1194  0x7998b  7      
  jl .L_7a040                           #  1195  0x79992  6      
  movl %eax, 0x74(%rsp)                 #  1196  0x79998  4      
  nop                                   #  1197  0x7999c  1      
  movq 0x98(%rsp), %rax                 #  1198  0x7999d  8      
  movq %r14, %rbx                       #  1199  0x799a5  3      
  movq 0x50(%rsp), %r14                 #  1200  0x799a8  5      
  movq %r13, 0x60(%rsp)                 #  1201  0x799ad  5      
  xorl %r13d, %r13d                     #  1202  0x799b2  3      
  movq %rax, 0x38(%rsp)                 #  1203  0x799b5  5      
  nop                                   #  1204  0x799ba  1      
.L_7a0e0:                               #        0x799bb  0      
  movl 0x60(%rsp), %esi                 #  1205  0x799bb  4      
  movl $0x1, %edx                       #  1206  0x799bf  5      
  movl %ebx, %edi                       #  1207  0x799c4  2      
  nop                                   #  1208  0x799c6  1      
  nop                                   #  1209  0x799c7  1      
  callq .__lshift                       #  1210  0x799c8  5      
  movl 0x68(%rsp), %esi                 #  1211  0x799cd  4      
  movl %eax, %eax                       #  1212  0x799d1  2      
  movl %eax, %edi                       #  1213  0x799d3  2      
  movq %rax, 0x60(%rsp)                 #  1214  0x799d5  5      
  nop                                   #  1215  0x799da  1      
  callq .__mcmp                         #  1216  0x799db  5      
  cmpl $0x0, %eax                       #  1217  0x799e0  3      
  jle .L_7a580                          #  1218  0x799e3  6      
  nop                                   #  1219  0x799e9  1      
  nop                                   #  1220  0x799ea  1      
.L_7a140:                               #        0x799eb  0      
  movq 0x78(%rsp), %rcx                 #  1221  0x799eb  5      
  jmpq .L_7a180                         #  1222  0x799f0  5      
  nop                                   #  1223  0x799f5  1      
  nop                                   #  1224  0x799f6  1      
.L_7a160:                               #        0x799f7  0      
  movq %rax, %r12                       #  1225  0x799f7  3      
  nop                                   #  1226  0x799fa  1      
  nop                                   #  1227  0x799fb  1      
.L_7a180:                               #        0x799fc  0      
  leal -0x1(%r12), %eax                 #  1228  0x799fc  5      
  movl %eax, %eax                       #  1229  0x79a01  2      
  movzbl (%r15,%rax,1), %edx            #  1230  0x79a03  5      
  cmpb $0x39, %dl                       #  1231  0x79a08  3      
  jne .L_7a5e0                          #  1232  0x79a0b  6      
  cmpl %ecx, %eax                       #  1233  0x79a11  2      
  jne .L_7a160                          #  1234  0x79a13  6      
  movq 0x78(%rsp), %rdx                 #  1235  0x79a19  5      
  xchgw %ax, %ax                        #  1236  0x79a1e  3      
  addl $0x1, 0x40(%rsp)                 #  1237  0x79a21  5      
  movl %edx, %edx                       #  1238  0x79a26  2      
  movb $0x31, (%r15,%rdx,1)             #  1239  0x79a28  5      
  jmpq .L_79b00                         #  1240  0x79a2d  5      
  nop                                   #  1241  0x79a32  1      
.L_7a1c0:                               #        0x79a33  0      
  movl $0x0, 0x94(%rsp)                 #  1242  0x79a33  11     
  jmpq .L_799c0                         #  1243  0x79a3e  5      
  nop                                   #  1244  0x79a43  1      
  nop                                   #  1245  0x79a44  1      
.L_7a1e0:                               #        0x79a45  0      
  movl $0x1, 0x94(%rsp)                 #  1246  0x79a45  11     
  jmpq .L_78bc0                         #  1247  0x79a50  5      
  nop                                   #  1248  0x79a55  1      
  nop                                   #  1249  0x79a56  1      
.L_7a200:                               #        0x79a57  0      
  movl %r13d, 0x40(%rsp)                #  1250  0x79a57  5      
  movq 0x78(%rsp), %rcx                 #  1251  0x79a5c  5      
  jmpq .L_79220                         #  1252  0x79a61  5      
  xchgw %ax, %ax                        #  1253  0x79a66  3      
  nop                                   #  1254  0x79a69  1      
.L_7a220:                               #        0x79a6a  0      
  movl 0x68(%rsp), %esi                 #  1255  0x79a6a  4      
  movl 0x60(%rsp), %edi                 #  1256  0x79a6e  4      
  nop                                   #  1257  0x79a72  1      
  nop                                   #  1258  0x79a73  1      
  callq .__mcmp                         #  1259  0x79a74  5      
  testl %eax, %eax                      #  1260  0x79a79  2      
  jns .L_79660                          #  1261  0x79a7b  6      
  movl 0x60(%rsp), %esi                 #  1262  0x79a81  4      
  xorl %ecx, %ecx                       #  1263  0x79a85  2      
  movl $0xa, %edx                       #  1264  0x79a87  5      
  movl %ebx, %edi                       #  1265  0x79a8c  2      
  subl $0x1, 0x40(%rsp)                 #  1266  0x79a8e  5      
  nop                                   #  1267  0x79a93  1      
  callq .__multadd                      #  1268  0x79a94  5      
  movl %eax, %eax                       #  1269  0x79a99  2      
  movq %rax, 0x60(%rsp)                 #  1270  0x79a9b  5      
  movl 0xa4(%rsp), %eax                 #  1271  0x79aa0  7      
  movl %eax, 0x80(%rsp)                 #  1272  0x79aa7  7      
  movl 0x94(%rsp), %eax                 #  1273  0x79aae  7      
  testl %eax, %eax                      #  1274  0x79ab5  2      
  xchgw %ax, %ax                        #  1275  0x79ab7  3      
  je .L_79660                           #  1276  0x79aba  6      
  movl 0x98(%rsp), %esi                 #  1277  0x79ac0  7      
  movl $0xa, %edx                       #  1278  0x79ac7  5      
  xorl %ecx, %ecx                       #  1279  0x79acc  2      
  movl %ebx, %edi                       #  1280  0x79ace  2      
  nop                                   #  1281  0x79ad0  1      
  callq .__multadd                      #  1282  0x79ad1  5      
  movl 0xa4(%rsp), %edx                 #  1283  0x79ad6  7      
  movl %eax, %eax                       #  1284  0x79add  2      
  movq %rax, 0x98(%rsp)                 #  1285  0x79adf  8      
  movl %edx, 0x80(%rsp)                 #  1286  0x79ae7  7      
  jmpq .L_79660                         #  1287  0x79aee  5      
  nop                                   #  1288  0x79af3  1      
.L_7a2c0:                               #        0x79af4  0      
  movq 0x68(%rsp), %rdx                 #  1289  0x79af4  5      
  movl %edx, %edx                       #  1290  0x79af9  2      
  movl 0x10(%r15,%rdx,1), %eax          #  1291  0x79afb  5      
  leal 0xc(,%rax,4), %eax               #  1292  0x79b00  7      
  cltq                                  #  1293  0x79b07  2      
  addq %rdx, %rax                       #  1294  0x79b09  3      
  movl %eax, %eax                       #  1295  0x79b0c  2      
  movl 0x4(%r15,%rax,1), %edi           #  1296  0x79b0e  5      
  nop                                   #  1297  0x79b13  1      
  nop                                   #  1298  0x79b14  1      
  nop                                   #  1299  0x79b15  1      
  callq .__hi0bits                      #  1300  0x79b16  5      
  movl %eax, %edx                       #  1301  0x79b1b  2      
  movl $0x20, %eax                      #  1302  0x79b1d  5      
  subl %edx, %eax                       #  1303  0x79b22  2      
  jmpq .L_79580                         #  1304  0x79b24  5      
  nop                                   #  1305  0x79b29  1      
  nop                                   #  1306  0x79b2a  1      
.L_7a320:                               #        0x79b2b  0      
  movl $0x1, %eax                       #  1307  0x79b2b  5      
  movl $0x1, 0xa4(%rsp)                 #  1308  0x79b30  11     
  movl $0x1, 0x80(%rsp)                 #  1309  0x79b3b  11     
  nop                                   #  1310  0x79b46  1      
  movl $0x1, 0x38(%rsp)                 #  1311  0x79b47  8      
  jmpq .L_79c40                         #  1312  0x79b4f  5      
  nop                                   #  1313  0x79b54  1      
  nop                                   #  1314  0x79b55  1      
.L_7a360:                               #        0x79b56  0      
  movq $0xfffffffffffff, %rax           #  1315  0x79b56  10     
  testq %rax, %r13                      #  1316  0x79b60  3      
  jne .L_79540                          #  1317  0x79b63  6      
  movq %r13, %rax                       #  1318  0x79b69  3      
  shrq $0x20, %rax                      #  1319  0x79b6c  4      
  testl $0x7ff00000, %eax               #  1320  0x79b70  5      
  nop                                   #  1321  0x79b75  1      
  je .L_79540                           #  1322  0x79b76  6      
  addl $0x1, 0x84(%rsp)                 #  1323  0x79b7c  8      
  addl $0x1, 0x74(%rsp)                 #  1324  0x79b84  5      
  movl $0x1, 0xa8(%rsp)                 #  1325  0x79b89  11     
  xchgw %ax, %ax                        #  1326  0x79b94  3      
  jmpq .L_79560                         #  1327  0x79b97  5      
  nop                                   #  1328  0x79b9c  1      
  nop                                   #  1329  0x79b9d  1      
.L_7a3c0:                               #        0x79b9e  0      
  cmpl $0x2, 0x50(%rsp)                 #  1330  0x79b9e  5      
  jle .L_79680                          #  1331  0x79ba3  6      
  movl 0x80(%rsp), %r11d                #  1332  0x79ba9  8      
  testl %r11d, %r11d                    #  1333  0x79bb1  3      
  jne .L_79ae0                          #  1334  0x79bb4  6      
  movl 0x68(%rsp), %esi                 #  1335  0x79bba  4      
  xorl %ecx, %ecx                       #  1336  0x79bbe  2      
  movl $0x5, %edx                       #  1337  0x79bc0  5      
  movl %ebx, %edi                       #  1338  0x79bc5  2      
  nop                                   #  1339  0x79bc7  1      
  nop                                   #  1340  0x79bc8  1      
  callq .__multadd                      #  1341  0x79bc9  5      
  movl 0x60(%rsp), %edi                 #  1342  0x79bce  4      
  movl %eax, %eax                       #  1343  0x79bd2  2      
  movl %eax, %esi                       #  1344  0x79bd4  2      
  movq %rax, 0x68(%rsp)                 #  1345  0x79bd6  5      
  nop                                   #  1346  0x79bdb  1      
  callq .__mcmp                         #  1347  0x79bdc  5      
  testl %eax, %eax                      #  1348  0x79be1  2      
  jg .L_79ce0                           #  1349  0x79be3  6      
  jmpq .L_79ae0                         #  1350  0x79be9  5      
  nop                                   #  1351  0x79bee  1      
  nop                                   #  1352  0x79bef  1      
.L_7a440:                               #        0x79bf0  0      
  subl 0x68(%rsp), %r12d                #  1353  0x79bf0  5      
  addl %r12d, 0x90(%rsp)                #  1354  0x79bf5  8      
  addl %r12d, 0x68(%rsp)                #  1355  0x79bfd  5      
  xorl %r12d, %r12d                     #  1356  0x79c02  3      
  jmpq .L_79340                         #  1357  0x79c05  5      
  nop                                   #  1358  0x79c0a  1      
.L_7a460:                               #        0x79c0b  0      
  movl 0x8c(%rsp), %edx                 #  1359  0x79c0b  7      
  testl %edx, %edx                      #  1360  0x79c12  2      
  je .L_7a6a0                           #  1361  0x79c14  6      
  movl 0x84(%rsp), %ecx                 #  1362  0x79c1a  7      
  addl $0x433, %eax                     #  1363  0x79c21  5      
  movl 0x68(%rsp), %r12d                #  1364  0x79c26  5      
  movl %ecx, 0x8c(%rsp)                 #  1365  0x79c2b  7      
  jmpq .L_79360                         #  1366  0x79c32  5      
  nop                                   #  1367  0x79c37  1      
  nop                                   #  1368  0x79c38  1      
.L_7a4a0:                               #        0x79c39  0      
  addl $0x1, %edx                       #  1369  0x79c39  3      
  jmpq .L_79260                         #  1370  0x79c3c  5      
  nop                                   #  1371  0x79c41  1      
  nop                                   #  1372  0x79c42  1      
.L_7a4c0:                               #        0x79c43  0      
  movl 0x84(%rsp), %edx                 #  1373  0x79c43  7      
  subl %eax, %edx                       #  1374  0x79c4a  2      
  xorl %eax, %eax                       #  1375  0x79c4c  2      
  movl %edx, 0x8c(%rsp)                 #  1376  0x79c4e  7      
  jmpq .L_79360                         #  1377  0x79c55  5      
  nop                                   #  1378  0x79c5a  1      
.L_7a4e0:                               #        0x79c5b  0      
  testl %eax, %eax                      #  1379  0x79c5b  2      
  jle .L_7a560                          #  1380  0x79c5d  6      
  movl 0x60(%rsp), %esi                 #  1381  0x79c63  4      
  movl $0x1, %edx                       #  1382  0x79c67  5      
  movl %ebx, %edi                       #  1383  0x79c6c  2      
  nop                                   #  1384  0x79c6e  1      
  callq .__lshift                       #  1385  0x79c6f  5      
  movl 0x68(%rsp), %esi                 #  1386  0x79c74  4      
  movl %eax, %eax                       #  1387  0x79c78  2      
  movl %eax, %edi                       #  1388  0x79c7a  2      
  movq %rax, 0x60(%rsp)                 #  1389  0x79c7c  5      
  nop                                   #  1390  0x79c81  1      
  callq .__mcmp                         #  1391  0x79c82  5      
  cmpl $0x0, %eax                       #  1392  0x79c87  3      
  jle .L_7a760                          #  1393  0x79c8a  6      
  nop                                   #  1394  0x79c90  1      
  nop                                   #  1395  0x79c91  1      
.L_7a540:                               #        0x79c92  0      
  cmpl $0x39, 0x74(%rsp)                #  1396  0x79c92  5      
  je .L_7a700                           #  1397  0x79c97  6      
  addl $0x1, 0x74(%rsp)                 #  1398  0x79c9d  5      
  nop                                   #  1399  0x79ca2  1      
  nop                                   #  1400  0x79ca3  1      
.L_7a560:                               #        0x79ca4  0      
  movzbl 0x74(%rsp), %edx               #  1401  0x79ca4  5      
  movl %r12d, %r12d                     #  1402  0x79ca9  3      
  movb %dl, (%r15,%r12,1)               #  1403  0x79cac  4      
  addl $0x1, %r12d                      #  1404  0x79cb0  4      
  jmpq .L_79b00                         #  1405  0x79cb4  5      
  nop                                   #  1406  0x79cb9  1      
.L_7a580:                               #        0x79cba  0      
  jne .L_7a5c0                          #  1407  0x79cba  6      
  testb $0x1, 0x74(%rsp)                #  1408  0x79cc0  5      
  jne .L_7a140                          #  1409  0x79cc5  6      
  jmpq .L_7a5c0                         #  1410  0x79ccb  5      
  xchgw %ax, %ax                        #  1411  0x79cd0  3      
  nop                                   #  1412  0x79cd3  1      
.L_7a5a0:                               #        0x79cd4  0      
  movq %rax, %r12                       #  1413  0x79cd4  3      
  nop                                   #  1414  0x79cd7  1      
  nop                                   #  1415  0x79cd8  1      
.L_7a5c0:                               #        0x79cd9  0      
  leal -0x1(%r12), %eax                 #  1416  0x79cd9  5      
  movl %eax, %eax                       #  1417  0x79cde  2      
  cmpb $0x30, (%r15,%rax,1)             #  1418  0x79ce0  5      
  je .L_7a5a0                           #  1419  0x79ce5  6      
  jmpq .L_79b00                         #  1420  0x79ceb  5      
  nop                                   #  1421  0x79cf0  1      
.L_7a5e0:                               #        0x79cf1  0      
  addl $0x1, %edx                       #  1422  0x79cf1  3      
  movl %eax, %eax                       #  1423  0x79cf4  2      
  movb %dl, (%r15,%rax,1)               #  1424  0x79cf6  4      
  jmpq .L_79b00                         #  1425  0x79cfa  5      
  nop                                   #  1426  0x79cff  1      
  nop                                   #  1427  0x79d00  1      
.L_7a600:                               #        0x79d01  0      
  movl %eax, %eax                       #  1428  0x79d01  2      
  movl 0x4(%r15,%rax,1), %esi           #  1429  0x79d03  5      
  movl %ebx, %edi                       #  1430  0x79d08  2      
  nop                                   #  1431  0x79d0a  1      
  nop                                   #  1432  0x79d0b  1      
  callq ._Balloc                        #  1433  0x79d0c  5      
  movq 0x98(%rsp), %rcx                 #  1434  0x79d11  8      
  movl 0x98(%rsp), %esi                 #  1435  0x79d19  7      
  movl %eax, %r12d                      #  1436  0x79d20  3      
  leal 0xc(%r12), %edi                  #  1437  0x79d23  5      
  movl %ecx, %ecx                       #  1438  0x79d28  2      
  movl 0x10(%r15,%rcx,1), %edx          #  1439  0x79d2a  5      
  xchgw %ax, %ax                        #  1440  0x79d2f  3      
  addl $0xc, %esi                       #  1441  0x79d32  3      
  leal 0x8(,%rdx,4), %edx               #  1442  0x79d35  7      
  xchgw %ax, %ax                        #  1443  0x79d3c  3      
  nop                                   #  1444  0x79d3f  1      
  callq .memcpy                         #  1445  0x79d40  5      
  movl $0x1, %edx                       #  1446  0x79d45  5      
  movl %r12d, %esi                      #  1447  0x79d4a  3      
  movl %ebx, %edi                       #  1448  0x79d4d  2      
  xchgw %ax, %ax                        #  1449  0x79d4f  3      
  nop                                   #  1450  0x79d52  1      
  callq .__lshift                       #  1451  0x79d53  5      
  movl %eax, %eax                       #  1452  0x79d58  2      
  movq %rax, 0x38(%rsp)                 #  1453  0x79d5a  5      
  jmpq .L_79720                         #  1454  0x79d5f  5      
  nop                                   #  1455  0x79d64  1      
  nop                                   #  1456  0x79d65  1      
.L_7a6a0:                               #        0x79d66  0      
  movl 0x84(%rsp), %edx                 #  1457  0x79d66  7      
  movl $0x36, %eax                      #  1458  0x79d6d  5      
  movl 0x68(%rsp), %r12d                #  1459  0x79d72  5      
  subl 0xbc(%rsp), %eax                 #  1460  0x79d77  7      
  movl %edx, 0x8c(%rsp)                 #  1461  0x79d7e  7      
  nop                                   #  1462  0x79d85  1      
  jmpq .L_79360                         #  1463  0x79d86  5      
  nop                                   #  1464  0x79d8b  1      
  nop                                   #  1465  0x79d8c  1      
.L_7a6e0:                               #        0x79d8d  0      
  cmpl $0x39, 0x74(%rsp)                #  1466  0x79d8d  5      
  je .L_7a700                           #  1467  0x79d92  6      
  movzbl 0x74(%rsp), %eax               #  1468  0x79d98  5      
  addl $0x1, %eax                       #  1469  0x79d9d  3      
  movl %r12d, %r12d                     #  1470  0x79da0  3      
  movb %al, (%r15,%r12,1)               #  1471  0x79da3  4      
  addl $0x1, %r12d                      #  1472  0x79da7  4      
  jmpq .L_79b00                         #  1473  0x79dab  5      
  nop                                   #  1474  0x79db0  1      
.L_7a700:                               #        0x79db1  0      
  movl %r12d, %r12d                     #  1475  0x79db1  3      
  movb $0x39, (%r15,%r12,1)             #  1476  0x79db4  5      
  addl $0x1, %r12d                      #  1477  0x79db9  4      
  movq 0x78(%rsp), %rcx                 #  1478  0x79dbd  5      
  jmpq .L_7a180                         #  1479  0x79dc2  5      
  nop                                   #  1480  0x79dc7  1      
.L_7a720:                               #        0x79dc8  0      
  cmpl $0x39, 0x74(%rsp)                #  1481  0x79dc8  5      
  je .L_7a700                           #  1482  0x79dcd  6      
  xorl %eax, %eax                       #  1483  0x79dd3  2      
  cmpl $0x0, 0x84(%rsp)                 #  1484  0x79dd5  8      
  setg %al                              #  1485  0x79ddd  3      
  addl %eax, 0x74(%rsp)                 #  1486  0x79de0  4      
  movzbl 0x74(%rsp), %eax               #  1487  0x79de4  5      
  nop                                   #  1488  0x79de9  1      
  movl %r12d, %r12d                     #  1489  0x79dea  3      
  movb %al, (%r15,%r12,1)               #  1490  0x79ded  4      
  addl $0x1, %r12d                      #  1491  0x79df1  4      
  jmpq .L_79b00                         #  1492  0x79df5  5      
  nop                                   #  1493  0x79dfa  1      
  nop                                   #  1494  0x79dfb  1      
.L_7a760:                               #        0x79dfc  0      
  jne .L_7a560                          #  1495  0x79dfc  6      
  testb $0x1, 0x74(%rsp)                #  1496  0x79e02  5      
  je .L_7a560                           #  1497  0x79e07  6      
  jmpq .L_7a540                         #  1498  0x79e0d  5      
  nop                                   #  1499  0x79e12  1      
.L_7a780:                               #        0x79e13  0      
  movl $0x1, %r12d                      #  1500  0x79e13  6      
  movl $0x1, %eax                       #  1501  0x79e19  5      
  jmpq .L_78b80                         #  1502  0x79e1e  5      
  nop                                   #  1503  0x79e23  1      
  nop                                   #  1504  0x79e24  1      
.L_7a7a0:                               #        0x79e25  0      
  je .L_795c0                           #  1505  0x79e25  6      
  addl $0x1c, %eax                      #  1506  0x79e2b  3      
  jmpq .L_795a0                         #  1507  0x79e2e  5      
  nop                                   #  1508  0x79e33  1      
  nop                                   #  1509  0x79e34  1      
  nop                                   #  1510  0x79e35  1      
  nop                                   #  1511  0x79e36  1      
  nop                                   #  1512  0x79e37  1      
  nop                                   #  1513  0x79e38  1      
  nop                                   #  1514  0x79e39  1      
  nop                                   #  1515  0x79e3a  1      
  nop                                   #  1516  0x79e3b  1      
  nop                                   #  1517  0x79e3c  1      
  nop                                   #  1518  0x79e3d  1      
  nop                                   #  1519  0x79e3e  1      
  nop                                   #  1520  0x79e3f  1      
  nop                                   #  1521  0x79e40  1      
  nop                                   #  1522  0x79e41  1      
  nop                                   #  1523  0x79e42  1      
  nop                                   #  1524  0x79e43  1      
  nop                                   #  1525  0x79e44  1      
                                                                 
.size _dtoa_r, .-_dtoa_r

