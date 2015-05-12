  .text
  .globl T_278
  .type T_278, @function

#! file-offset 0x66f20
#! rip-offset  0x66f20
#! capacity    1248 bytes

# Text                          #  Line  RIP      Bytes  
.T_278:                         #        0x66f20  0      
  movq %rbx, -0x20(%rsp)        #  1     0x66f20  5      
  movq %r14, -0x8(%rsp)         #  2     0x66f25  5      
  movl %esi, %r8d               #  3     0x66f2a  3      
  movq %r12, -0x18(%rsp)        #  4     0x66f2d  5      
  movq %r13, -0x10(%rsp)        #  5     0x66f32  5      
  subl $0x58, %esp              #  6     0x66f37  3      
  addq %r15, %rsp               #  7     0x66f3a  3      
  nop                           #  8     0x66f3d  1      
  movl 0xffcf94c(%rip), %esi    #  9     0x66f3e  6      
  movl %edi, %ebx               #  10    0x66f44  2      
  movl %ecx, %r14d              #  11    0x66f46  3      
  testl %esi, %esi              #  12    0x66f49  2      
  je .L_66fc0                   #  13    0x66f4b  6      
  testq %r14, %r14              #  14    0x66f51  3      
  je .L_67000                   #  15    0x66f54  6      
  nop                           #  16    0x66f5a  1      
.L_66f60:                       #        0x66f5b  0      
  xorl %esi, %esi               #  17    0x66f5b  2      
  testl %ebx, %ebx              #  18    0x66f5d  2      
  movl $0xfffffffc, %edi        #  19    0x66f5f  5      
  jne .L_67080                  #  20    0x66f64  6      
  xchgw %ax, %ax                #  21    0x66f6a  3      
  nop                           #  22    0x66f6d  1      
.L_66f80:                       #        0x66f6e  0      
  movl %r14d, %eax              #  23    0x66f6e  3      
  movq 0x38(%rsp), %rbx         #  24    0x66f71  5      
  movq 0x40(%rsp), %r12         #  25    0x66f76  5      
  movq 0x48(%rsp), %r13         #  26    0x66f7b  5      
  movq 0x50(%rsp), %r14         #  27    0x66f80  5      
  addl $0x58, %esp              #  28    0x66f85  3      
  addq %r15, %rsp               #  29    0x66f88  3      
  popq %r11                     #  30    0x66f8b  3      
  nop                           #  31    0x66f8e  1      
  andl $0xffffffe0, %r11d       #  32    0x66f8f  7      
  addq %r15, %r11               #  33    0x66f96  3      
  jmpq %r11                     #  34    0x66f99  3      
  nop                           #  35    0x66f9c  1      
  nop                           #  36    0x66f9d  1      
.L_66fc0:                       #        0x66f9e  0      
  movl %edx, 0x10(%rsp)         #  37    0x66f9e  4      
  movq %r8, 0x8(%rsp)           #  38    0x66fa2  5      
  nop                           #  39    0x66fa7  1      
  nop                           #  40    0x66fa8  1      
  callq .init_mparams           #  41    0x66fa9  5      
  testq %r14, %r14              #  42    0x66fae  3      
  movq 0x8(%rsp), %r8           #  43    0x66fb1  5      
  movl 0x10(%rsp), %edx         #  44    0x66fb6  4      
  jne .L_66f60                  #  45    0x66fba  6      
  nop                           #  46    0x66fc0  1      
.L_67000:                       #        0x66fc1  0      
  testl %ebx, %ebx              #  47    0x66fc1  2      
  jne .L_67040                  #  48    0x66fc3  6      
  movq 0x38(%rsp), %rbx         #  49    0x66fc9  5      
  movq 0x40(%rsp), %r12         #  50    0x66fce  5      
  xorl %edi, %edi               #  51    0x66fd3  2      
  movq 0x48(%rsp), %r13         #  52    0x66fd5  5      
  movq 0x50(%rsp), %r14         #  53    0x66fda  5      
  addl $0x58, %esp              #  54    0x66fdf  3      
  addq %r15, %rsp               #  55    0x66fe2  3      
  jmpq .malloc                  #  56    0x66fe5  5      
  nop                           #  57    0x66fea  1      
  nop                           #  58    0x66feb  1      
.L_67040:                       #        0x66fec  0      
  leal (,%rbx,4), %eax          #  59    0x66fec  7      
  movl $0xc, %edi               #  60    0x66ff3  5      
  movl $0x10, %esi              #  61    0x66ff8  5      
  cmpl $0xa, %eax               #  62    0x66ffd  3      
  jbe .L_67080                  #  63    0x67000  6      
  leal 0xb(,%rbx,4), %esi       #  64    0x67006  7      
  andl $0xfffffff8, %esi        #  65    0x6700d  6      
  leal -0x4(%rsi), %edi         #  66    0x67013  3      
  nop                           #  67    0x67016  1      
  nop                           #  68    0x67017  1      
.L_67080:                       #        0x67018  0      
  testb $0x1, %dl               #  69    0x67018  3      
  jne .L_672a0                  #  70    0x6701b  6      
  xorl %r13d, %r13d             #  71    0x67021  3      
  xorl %ecx, %ecx               #  72    0x67024  2      
  testl %ebx, %ebx              #  73    0x67026  2      
  je .L_670e0                   #  74    0x67028  6      
  movl %r8d, %r9d               #  75    0x6702e  3      
  xorl %r13d, %r13d             #  76    0x67031  3      
  xorl %ecx, %ecx               #  77    0x67034  2      
  nop                           #  78    0x67036  1      
.L_670a0:                       #        0x67037  0      
  movl %r9d, %eax               #  79    0x67037  3      
  movl %eax, %eax               #  80    0x6703a  2      
  movl (%r15,%rax,1), %r10d     #  81    0x6703c  4      
  movl $0x10, %eax              #  82    0x67040  5      
  cmpl $0xa, %r10d              #  83    0x67045  4      
  jbe .L_670c0                  #  84    0x67049  6      
  leal 0xb(%r10), %eax          #  85    0x6704f  4      
  andl $0xfffffff8, %eax        #  86    0x67053  5      
  nop                           #  87    0x67058  1      
.L_670c0:                       #        0x67059  0      
  addl $0x1, %ecx               #  88    0x67059  3      
  addl %eax, %r13d              #  89    0x6705c  3      
  addl $0x4, %r9d               #  90    0x6705f  4      
  cmpl %ecx, %ebx               #  91    0x67063  2      
  jne .L_670a0                  #  92    0x67065  6      
  xorl %ecx, %ecx               #  93    0x6706b  2      
  nop                           #  94    0x6706d  1      
  nop                           #  95    0x6706e  1      
.L_670e0:                       #        0x6706f  0      
  movl 0xffcfa06(%rip), %r12d   #  96    0x6706f  7      
  leal (%r13,%rdi,1), %edi      #  97    0x67076  5      
  movl %edx, 0x10(%rsp)         #  98    0x6707b  4      
  movl %ecx, 0x18(%rsp)         #  99    0x6707f  4      
  movl %esi, 0x28(%rsp)         #  100   0x67083  4      
  movq %r8, 0x8(%rsp)           #  101   0x67087  5      
  movl %r12d, %eax              #  102   0x6708c  3      
  andl $0xfffffffe, %eax        #  103   0x6708f  5      
  movl %eax, 0xffcf9e2(%rip)    #  104   0x67094  6      
  nop                           #  105   0x6709a  1      
  nop                           #  106   0x6709b  1      
  callq .malloc                 #  107   0x6709c  5      
  andl $0x1, %r12d              #  108   0x670a1  4      
  movl %eax, %r9d               #  109   0x670a5  3      
  movl 0x10(%rsp), %edx         #  110   0x670a8  4      
  movl 0x18(%rsp), %ecx         #  111   0x670ac  4      
  movl 0x28(%rsp), %esi         #  112   0x670b0  4      
  movq 0x8(%rsp), %r8           #  113   0x670b4  5      
  je .L_67160                   #  114   0x670b9  6      
  nop                           #  115   0x670bf  1      
  orl $0x1, 0xffcf9b5(%rip)     #  116   0x670c0  7      
  nop                           #  117   0x670c7  1      
  nop                           #  118   0x670c8  1      
.L_67160:                       #        0x670c9  0      
  testq %r9, %r9                #  119   0x670c9  3      
  je .L_67360                   #  120   0x670cc  6      
  testb $0x2, 0xffcf9a3(%rip)   #  121   0x670d2  7      
  jne .L_67300                  #  122   0x670d9  6      
  nop                           #  123   0x670df  1      
.L_67180:                       #        0x670e0  0      
  leal -0x8(%r9), %r12d         #  124   0x670e0  4      
  movl %r12d, %r12d             #  125   0x670e4  3      
  movl 0x4(%r15,%r12,1), %r10d  #  126   0x670e7  5      
  andl $0xfffffff8, %r10d       #  127   0x670ec  7      
  andl $0x2, %edx               #  128   0x670f3  3      
  jne .L_67380                  #  129   0x670f6  6      
  nop                           #  130   0x670fc  1      
.L_671a0:                       #        0x670fd  0      
  testq %r14, %r14              #  131   0x670fd  3      
  je .L_673e0                   #  132   0x67100  6      
  movl %r10d, %r13d             #  133   0x67106  3      
  nop                           #  134   0x67109  1      
  nop                           #  135   0x6710a  1      
.L_671c0:                       #        0x6710b  0      
  subl $0x1, %ebx               #  136   0x6710b  3      
  movl %r14d, %r14d             #  137   0x6710e  3      
  movl %r9d, (%r15,%r14,1)      #  138   0x67111  4      
  je .L_67260                   #  139   0x67115  6      
  movl %ecx, %r10d              #  140   0x6711b  3      
  movl %r14d, %esi              #  141   0x6711e  3      
  xorl %r9d, %r9d               #  142   0x67121  3      
  xorl %edx, %edx               #  143   0x67124  2      
  orl $0x3, %r10d               #  144   0x67126  4      
  nop                           #  145   0x6712a  1      
.L_671e0:                       #        0x6712b  0      
  testl %ecx, %ecx              #  146   0x6712b  2      
  movl %r10d, %edi              #  147   0x6712d  3      
  movl %ecx, %eax               #  148   0x67130  2      
  jne .L_67220                  #  149   0x67132  6      
  addl %r8d, %r9d               #  150   0x67138  3      
  movl $0x13, %edi              #  151   0x6713b  5      
  movl $0x10, %eax              #  152   0x67140  5      
  movl %r9d, %r9d               #  153   0x67145  3      
  movl (%r15,%r9,1), %r9d       #  154   0x67148  4      
  nop                           #  155   0x6714c  1      
  cmpl $0xa, %r9d               #  156   0x6714d  4      
  jbe .L_67220                  #  157   0x67151  6      
  leal 0xb(%r9), %eax           #  158   0x67157  4      
  andl $0xfffffff8, %eax        #  159   0x6715b  5      
  movl %eax, %edi               #  160   0x67160  2      
  orl $0x3, %edi                #  161   0x67162  3      
  nop                           #  162   0x67165  1      
.L_67220:                       #        0x67166  0      
  movl %r12d, %r12d             #  163   0x67166  3      
  movl %edi, 0x4(%r15,%r12,1)   #  164   0x67169  5      
  leal (%rax,%r12,1), %r12d     #  165   0x6716e  4      
  addl $0x1, %edx               #  166   0x67172  3      
  subl %eax, %r13d              #  167   0x67175  3      
  movl %esi, %eax               #  168   0x67178  2      
  addl $0x4, %esi               #  169   0x6717a  3      
  leal 0x8(%r12), %edi          #  170   0x6717d  5      
  cmpl %edx, %ebx               #  171   0x67182  2      
  xchgw %ax, %ax                #  172   0x67184  3      
  leal (,%rdx,4), %r9d          #  173   0x67187  8      
  movl %eax, %eax               #  174   0x6718f  2      
  movl %edi, 0x4(%r15,%rax,1)   #  175   0x67191  5      
  jne .L_671e0                  #  176   0x67196  6      
  nop                           #  177   0x6719c  1      
.L_67260:                       #        0x6719d  0      
  orl $0x3, %r13d               #  178   0x6719d  4      
  movl %r12d, %r12d             #  179   0x671a1  3      
  movl %r13d, 0x4(%r15,%r12,1)  #  180   0x671a4  5      
  testb $0x2, 0xffcf8cc(%rip)   #  181   0x671a9  7      
  je .L_66f80                   #  182   0x671b0  6      
  mfence                        #  183   0x671b6  3      
  nop                           #  184   0x671b9  1      
  movl $0x0, 0xffcf8bc(%rip)    #  185   0x671ba  10     
  jmpq .L_66f80                 #  186   0x671c4  5      
  xchgw %ax, %ax                #  187   0x671c9  3      
  nop                           #  188   0x671cc  1      
.L_672a0:                       #        0x671cd  0      
  movl %r8d, %r8d               #  189   0x671cd  3      
  movl (%r15,%r8,1), %eax       #  190   0x671d0  4      
  movl $0x10, %ecx              #  191   0x671d4  5      
  cmpl $0xa, %eax               #  192   0x671d9  3      
  ja .L_672e0                   #  193   0x671dc  6      
  nop                           #  194   0x671e2  1      
.L_672c0:                       #        0x671e3  0      
  movl %ecx, %r13d              #  195   0x671e3  3      
  imull %ebx, %r13d             #  196   0x671e6  4      
  jmpq .L_670e0                 #  197   0x671ea  5      
  nop                           #  198   0x671ef  1      
  nop                           #  199   0x671f0  1      
.L_672e0:                       #        0x671f1  0      
  leal 0xb(%rax), %ecx          #  200   0x671f1  3      
  andl $0xfffffff8, %ecx        #  201   0x671f4  6      
  jmpq .L_672c0                 #  202   0x671fa  5      
  nop                           #  203   0x671ff  1      
  nop                           #  204   0x67200  1      
.L_67300:                       #        0x67201  0      
  movl $0x1, %eax               #  205   0x67201  5      
  xchgl %eax, 0xffcf874(%rip)   #  206   0x67206  6      
  testl %eax, %eax              #  207   0x6720c  2      
  je .L_67180                   #  208   0x6720e  6      
  movl $0x10036a80, %edi        #  209   0x67214  5      
  movl %edx, 0x10(%rsp)         #  210   0x67219  4      
  movl %ecx, 0x18(%rsp)         #  211   0x6721d  4      
  movl %esi, 0x28(%rsp)         #  212   0x67221  4      
  movq %r8, 0x8(%rsp)           #  213   0x67225  5      
  movq %r9, 0x20(%rsp)          #  214   0x6722a  5      
  nop                           #  215   0x6722f  1      
  callq .spin_acquire_lock      #  216   0x67230  5      
  testl %eax, %eax              #  217   0x67235  2      
  movl 0x10(%rsp), %edx         #  218   0x67237  4      
  movl 0x18(%rsp), %ecx         #  219   0x6723b  4      
  movl 0x28(%rsp), %esi         #  220   0x6723f  4      
  movq 0x8(%rsp), %r8           #  221   0x67243  5      
  movq 0x20(%rsp), %r9          #  222   0x67248  5      
  je .L_67180                   #  223   0x6724d  6      
  xchgw %ax, %ax                #  224   0x67253  3      
.L_67360:                       #        0x67256  0      
  xorl %r14d, %r14d             #  225   0x67256  3      
  jmpq .L_66f80                 #  226   0x67259  5      
  nop                           #  227   0x6725e  1      
  nop                           #  228   0x6725f  1      
.L_67380:                       #        0x67260  0      
  movl %r10d, %edx              #  229   0x67260  3      
  movl %r9d, %edi               #  230   0x67263  3      
  movl %ecx, 0x18(%rsp)         #  231   0x67266  4      
  subl %esi, %edx               #  232   0x6726a  2      
  xorl %esi, %esi               #  233   0x6726c  2      
  movq %r8, 0x8(%rsp)           #  234   0x6726e  5      
  subl $0x4, %edx               #  235   0x67273  3      
  movq %r9, 0x20(%rsp)          #  236   0x67276  5      
  movl %r10d, 0x28(%rsp)        #  237   0x6727b  5      
  nop                           #  238   0x67280  1      
  nop                           #  239   0x67281  1      
  callq .memset                 #  240   0x67282  5      
  movl 0x28(%rsp), %r10d        #  241   0x67287  5      
  movq 0x20(%rsp), %r9          #  242   0x6728c  5      
  movq 0x8(%rsp), %r8           #  243   0x67291  5      
  movl 0x18(%rsp), %ecx         #  244   0x67296  4      
  jmpq .L_671a0                 #  245   0x6729a  5      
  nop                           #  246   0x6729f  1      
.L_673e0:                       #        0x672a0  0      
  leal (%r13,%r12,1), %eax      #  247   0x672a0  5      
  subl %r13d, %r10d             #  248   0x672a5  3      
  orl $0x3, %r10d               #  249   0x672a8  4      
  leal 0x8(%rax), %r14d         #  250   0x672ac  4      
  movl %eax, %eax               #  251   0x672b0  2      
  movl %r10d, 0x4(%r15,%rax,1)  #  252   0x672b2  5      
  jmpq .L_671c0                 #  253   0x672b7  5      
  nop                           #  254   0x672bc  1      
                                                         
.size T_278, .-T_278

