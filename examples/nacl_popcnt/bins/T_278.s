  .text
  .globl T_278
  .type T_278, @function

#! file-offset 0x66fa0
#! rip-offset  0x66fa0
#! capacity    1248 bytes

# Text                          #  Line  RIP      Bytes  
.T_278:                         #        0x66fa0  0      
  movq %rbx, -0x20(%rsp)        #  1     0x66fa0  5      
  movq %r14, -0x8(%rsp)         #  2     0x66fa5  5      
  movl %esi, %r8d               #  3     0x66faa  3      
  movq %r12, -0x18(%rsp)        #  4     0x66fad  5      
  movq %r13, -0x10(%rsp)        #  5     0x66fb2  5      
  subl $0x58, %esp              #  6     0x66fb7  3      
  addq %r15, %rsp               #  7     0x66fba  3      
  nop                           #  8     0x66fbd  1      
  movl 0xffcf8cc(%rip), %esi    #  9     0x66fbe  6      
  movl %edi, %ebx               #  10    0x66fc4  2      
  movl %ecx, %r14d              #  11    0x66fc6  3      
  testl %esi, %esi              #  12    0x66fc9  2      
  je .L_67040                   #  13    0x66fcb  6      
  testq %r14, %r14              #  14    0x66fd1  3      
  je .L_67080                   #  15    0x66fd4  6      
  nop                           #  16    0x66fda  1      
.L_66fe0:                       #        0x66fdb  0      
  xorl %esi, %esi               #  17    0x66fdb  2      
  testl %ebx, %ebx              #  18    0x66fdd  2      
  movl $0xfffffffc, %edi        #  19    0x66fdf  5      
  jne .L_67100                  #  20    0x66fe4  6      
  xchgw %ax, %ax                #  21    0x66fea  3      
  nop                           #  22    0x66fed  1      
.L_67000:                       #        0x66fee  0      
  movl %r14d, %eax              #  23    0x66fee  3      
  movq 0x38(%rsp), %rbx         #  24    0x66ff1  5      
  movq 0x40(%rsp), %r12         #  25    0x66ff6  5      
  movq 0x48(%rsp), %r13         #  26    0x66ffb  5      
  movq 0x50(%rsp), %r14         #  27    0x67000  5      
  addl $0x58, %esp              #  28    0x67005  3      
  addq %r15, %rsp               #  29    0x67008  3      
  popq %r11                     #  30    0x6700b  3      
  nop                           #  31    0x6700e  1      
  andl $0xffffffe0, %r11d       #  32    0x6700f  7      
  addq %r15, %r11               #  33    0x67016  3      
  jmpq %r11                     #  34    0x67019  3      
  nop                           #  35    0x6701c  1      
  nop                           #  36    0x6701d  1      
.L_67040:                       #        0x6701e  0      
  movl %edx, 0x10(%rsp)         #  37    0x6701e  4      
  movq %r8, 0x8(%rsp)           #  38    0x67022  5      
  nop                           #  39    0x67027  1      
  nop                           #  40    0x67028  1      
  callq .init_mparams           #  41    0x67029  5      
  testq %r14, %r14              #  42    0x6702e  3      
  movq 0x8(%rsp), %r8           #  43    0x67031  5      
  movl 0x10(%rsp), %edx         #  44    0x67036  4      
  jne .L_66fe0                  #  45    0x6703a  6      
  nop                           #  46    0x67040  1      
.L_67080:                       #        0x67041  0      
  testl %ebx, %ebx              #  47    0x67041  2      
  jne .L_670c0                  #  48    0x67043  6      
  movq 0x38(%rsp), %rbx         #  49    0x67049  5      
  movq 0x40(%rsp), %r12         #  50    0x6704e  5      
  xorl %edi, %edi               #  51    0x67053  2      
  movq 0x48(%rsp), %r13         #  52    0x67055  5      
  movq 0x50(%rsp), %r14         #  53    0x6705a  5      
  addl $0x58, %esp              #  54    0x6705f  3      
  addq %r15, %rsp               #  55    0x67062  3      
  jmpq .malloc                  #  56    0x67065  5      
  nop                           #  57    0x6706a  1      
  nop                           #  58    0x6706b  1      
.L_670c0:                       #        0x6706c  0      
  leal (,%rbx,4), %eax          #  59    0x6706c  7      
  movl $0xc, %edi               #  60    0x67073  5      
  movl $0x10, %esi              #  61    0x67078  5      
  cmpl $0xa, %eax               #  62    0x6707d  3      
  jbe .L_67100                  #  63    0x67080  6      
  leal 0xb(,%rbx,4), %esi       #  64    0x67086  7      
  andl $0xfffffff8, %esi        #  65    0x6708d  6      
  leal -0x4(%rsi), %edi         #  66    0x67093  3      
  nop                           #  67    0x67096  1      
  nop                           #  68    0x67097  1      
.L_67100:                       #        0x67098  0      
  testb $0x1, %dl               #  69    0x67098  3      
  jne .L_67320                  #  70    0x6709b  6      
  xorl %r13d, %r13d             #  71    0x670a1  3      
  xorl %ecx, %ecx               #  72    0x670a4  2      
  testl %ebx, %ebx              #  73    0x670a6  2      
  je .L_67160                   #  74    0x670a8  6      
  movl %r8d, %r9d               #  75    0x670ae  3      
  xorl %r13d, %r13d             #  76    0x670b1  3      
  xorl %ecx, %ecx               #  77    0x670b4  2      
  nop                           #  78    0x670b6  1      
.L_67120:                       #        0x670b7  0      
  movl %r9d, %eax               #  79    0x670b7  3      
  movl %eax, %eax               #  80    0x670ba  2      
  movl (%r15,%rax,1), %r10d     #  81    0x670bc  4      
  movl $0x10, %eax              #  82    0x670c0  5      
  cmpl $0xa, %r10d              #  83    0x670c5  4      
  jbe .L_67140                  #  84    0x670c9  6      
  leal 0xb(%r10), %eax          #  85    0x670cf  4      
  andl $0xfffffff8, %eax        #  86    0x670d3  5      
  nop                           #  87    0x670d8  1      
.L_67140:                       #        0x670d9  0      
  addl $0x1, %ecx               #  88    0x670d9  3      
  addl %eax, %r13d              #  89    0x670dc  3      
  addl $0x4, %r9d               #  90    0x670df  4      
  cmpl %ecx, %ebx               #  91    0x670e3  2      
  jne .L_67120                  #  92    0x670e5  6      
  xorl %ecx, %ecx               #  93    0x670eb  2      
  nop                           #  94    0x670ed  1      
  nop                           #  95    0x670ee  1      
.L_67160:                       #        0x670ef  0      
  movl 0xffcf986(%rip), %r12d   #  96    0x670ef  7      
  leal (%r13,%rdi,1), %edi      #  97    0x670f6  5      
  movl %edx, 0x10(%rsp)         #  98    0x670fb  4      
  movl %ecx, 0x18(%rsp)         #  99    0x670ff  4      
  movl %esi, 0x28(%rsp)         #  100   0x67103  4      
  movq %r8, 0x8(%rsp)           #  101   0x67107  5      
  movl %r12d, %eax              #  102   0x6710c  3      
  andl $0xfffffffe, %eax        #  103   0x6710f  5      
  movl %eax, 0xffcf962(%rip)    #  104   0x67114  6      
  nop                           #  105   0x6711a  1      
  nop                           #  106   0x6711b  1      
  callq .malloc                 #  107   0x6711c  5      
  andl $0x1, %r12d              #  108   0x67121  4      
  movl %eax, %r9d               #  109   0x67125  3      
  movl 0x10(%rsp), %edx         #  110   0x67128  4      
  movl 0x18(%rsp), %ecx         #  111   0x6712c  4      
  movl 0x28(%rsp), %esi         #  112   0x67130  4      
  movq 0x8(%rsp), %r8           #  113   0x67134  5      
  je .L_671e0                   #  114   0x67139  6      
  nop                           #  115   0x6713f  1      
  orl $0x1, 0xffcf935(%rip)     #  116   0x67140  7      
  nop                           #  117   0x67147  1      
  nop                           #  118   0x67148  1      
.L_671e0:                       #        0x67149  0      
  testq %r9, %r9                #  119   0x67149  3      
  je .L_673e0                   #  120   0x6714c  6      
  testb $0x2, 0xffcf923(%rip)   #  121   0x67152  7      
  jne .L_67380                  #  122   0x67159  6      
  nop                           #  123   0x6715f  1      
.L_67200:                       #        0x67160  0      
  leal -0x8(%r9), %r12d         #  124   0x67160  4      
  movl %r12d, %r12d             #  125   0x67164  3      
  movl 0x4(%r15,%r12,1), %r10d  #  126   0x67167  5      
  andl $0xfffffff8, %r10d       #  127   0x6716c  7      
  andl $0x2, %edx               #  128   0x67173  3      
  jne .L_67400                  #  129   0x67176  6      
  nop                           #  130   0x6717c  1      
.L_67220:                       #        0x6717d  0      
  testq %r14, %r14              #  131   0x6717d  3      
  je .L_67460                   #  132   0x67180  6      
  movl %r10d, %r13d             #  133   0x67186  3      
  nop                           #  134   0x67189  1      
  nop                           #  135   0x6718a  1      
.L_67240:                       #        0x6718b  0      
  subl $0x1, %ebx               #  136   0x6718b  3      
  movl %r14d, %r14d             #  137   0x6718e  3      
  movl %r9d, (%r15,%r14,1)      #  138   0x67191  4      
  je .L_672e0                   #  139   0x67195  6      
  movl %ecx, %r10d              #  140   0x6719b  3      
  movl %r14d, %esi              #  141   0x6719e  3      
  xorl %r9d, %r9d               #  142   0x671a1  3      
  xorl %edx, %edx               #  143   0x671a4  2      
  orl $0x3, %r10d               #  144   0x671a6  4      
  nop                           #  145   0x671aa  1      
.L_67260:                       #        0x671ab  0      
  testl %ecx, %ecx              #  146   0x671ab  2      
  movl %r10d, %edi              #  147   0x671ad  3      
  movl %ecx, %eax               #  148   0x671b0  2      
  jne .L_672a0                  #  149   0x671b2  6      
  addl %r8d, %r9d               #  150   0x671b8  3      
  movl $0x13, %edi              #  151   0x671bb  5      
  movl $0x10, %eax              #  152   0x671c0  5      
  movl %r9d, %r9d               #  153   0x671c5  3      
  movl (%r15,%r9,1), %r9d       #  154   0x671c8  4      
  nop                           #  155   0x671cc  1      
  cmpl $0xa, %r9d               #  156   0x671cd  4      
  jbe .L_672a0                  #  157   0x671d1  6      
  leal 0xb(%r9), %eax           #  158   0x671d7  4      
  andl $0xfffffff8, %eax        #  159   0x671db  5      
  movl %eax, %edi               #  160   0x671e0  2      
  orl $0x3, %edi                #  161   0x671e2  3      
  nop                           #  162   0x671e5  1      
.L_672a0:                       #        0x671e6  0      
  movl %r12d, %r12d             #  163   0x671e6  3      
  movl %edi, 0x4(%r15,%r12,1)   #  164   0x671e9  5      
  leal (%rax,%r12,1), %r12d     #  165   0x671ee  4      
  addl $0x1, %edx               #  166   0x671f2  3      
  subl %eax, %r13d              #  167   0x671f5  3      
  movl %esi, %eax               #  168   0x671f8  2      
  addl $0x4, %esi               #  169   0x671fa  3      
  leal 0x8(%r12), %edi          #  170   0x671fd  5      
  cmpl %edx, %ebx               #  171   0x67202  2      
  xchgw %ax, %ax                #  172   0x67204  3      
  leal (,%rdx,4), %r9d          #  173   0x67207  8      
  movl %eax, %eax               #  174   0x6720f  2      
  movl %edi, 0x4(%r15,%rax,1)   #  175   0x67211  5      
  jne .L_67260                  #  176   0x67216  6      
  nop                           #  177   0x6721c  1      
.L_672e0:                       #        0x6721d  0      
  orl $0x3, %r13d               #  178   0x6721d  4      
  movl %r12d, %r12d             #  179   0x67221  3      
  movl %r13d, 0x4(%r15,%r12,1)  #  180   0x67224  5      
  testb $0x2, 0xffcf84c(%rip)   #  181   0x67229  7      
  je .L_67000                   #  182   0x67230  6      
  mfence                        #  183   0x67236  3      
  nop                           #  184   0x67239  1      
  movl $0x0, 0xffcf83c(%rip)    #  185   0x6723a  10     
  jmpq .L_67000                 #  186   0x67244  5      
  xchgw %ax, %ax                #  187   0x67249  3      
  nop                           #  188   0x6724c  1      
.L_67320:                       #        0x6724d  0      
  movl %r8d, %r8d               #  189   0x6724d  3      
  movl (%r15,%r8,1), %eax       #  190   0x67250  4      
  movl $0x10, %ecx              #  191   0x67254  5      
  cmpl $0xa, %eax               #  192   0x67259  3      
  ja .L_67360                   #  193   0x6725c  6      
  nop                           #  194   0x67262  1      
.L_67340:                       #        0x67263  0      
  movl %ecx, %r13d              #  195   0x67263  3      
  imull %ebx, %r13d             #  196   0x67266  4      
  jmpq .L_67160                 #  197   0x6726a  5      
  nop                           #  198   0x6726f  1      
  nop                           #  199   0x67270  1      
.L_67360:                       #        0x67271  0      
  leal 0xb(%rax), %ecx          #  200   0x67271  3      
  andl $0xfffffff8, %ecx        #  201   0x67274  6      
  jmpq .L_67340                 #  202   0x6727a  5      
  nop                           #  203   0x6727f  1      
  nop                           #  204   0x67280  1      
.L_67380:                       #        0x67281  0      
  movl $0x1, %eax               #  205   0x67281  5      
  xchgl %eax, 0xffcf7f4(%rip)   #  206   0x67286  6      
  testl %eax, %eax              #  207   0x6728c  2      
  je .L_67200                   #  208   0x6728e  6      
  movl $0x10036a80, %edi        #  209   0x67294  5      
  movl %edx, 0x10(%rsp)         #  210   0x67299  4      
  movl %ecx, 0x18(%rsp)         #  211   0x6729d  4      
  movl %esi, 0x28(%rsp)         #  212   0x672a1  4      
  movq %r8, 0x8(%rsp)           #  213   0x672a5  5      
  movq %r9, 0x20(%rsp)          #  214   0x672aa  5      
  nop                           #  215   0x672af  1      
  callq .spin_acquire_lock      #  216   0x672b0  5      
  testl %eax, %eax              #  217   0x672b5  2      
  movl 0x10(%rsp), %edx         #  218   0x672b7  4      
  movl 0x18(%rsp), %ecx         #  219   0x672bb  4      
  movl 0x28(%rsp), %esi         #  220   0x672bf  4      
  movq 0x8(%rsp), %r8           #  221   0x672c3  5      
  movq 0x20(%rsp), %r9          #  222   0x672c8  5      
  je .L_67200                   #  223   0x672cd  6      
  xchgw %ax, %ax                #  224   0x672d3  3      
.L_673e0:                       #        0x672d6  0      
  xorl %r14d, %r14d             #  225   0x672d6  3      
  jmpq .L_67000                 #  226   0x672d9  5      
  nop                           #  227   0x672de  1      
  nop                           #  228   0x672df  1      
.L_67400:                       #        0x672e0  0      
  movl %r10d, %edx              #  229   0x672e0  3      
  movl %r9d, %edi               #  230   0x672e3  3      
  movl %ecx, 0x18(%rsp)         #  231   0x672e6  4      
  subl %esi, %edx               #  232   0x672ea  2      
  xorl %esi, %esi               #  233   0x672ec  2      
  movq %r8, 0x8(%rsp)           #  234   0x672ee  5      
  subl $0x4, %edx               #  235   0x672f3  3      
  movq %r9, 0x20(%rsp)          #  236   0x672f6  5      
  movl %r10d, 0x28(%rsp)        #  237   0x672fb  5      
  nop                           #  238   0x67300  1      
  nop                           #  239   0x67301  1      
  callq .memset                 #  240   0x67302  5      
  movl 0x28(%rsp), %r10d        #  241   0x67307  5      
  movq 0x20(%rsp), %r9          #  242   0x6730c  5      
  movq 0x8(%rsp), %r8           #  243   0x67311  5      
  movl 0x18(%rsp), %ecx         #  244   0x67316  4      
  jmpq .L_67220                 #  245   0x6731a  5      
  nop                           #  246   0x6731f  1      
.L_67460:                       #        0x67320  0      
  leal (%r13,%r12,1), %eax      #  247   0x67320  5      
  subl %r13d, %r10d             #  248   0x67325  3      
  orl $0x3, %r10d               #  249   0x67328  4      
  leal 0x8(%rax), %r14d         #  250   0x6732c  4      
  movl %eax, %eax               #  251   0x67330  2      
  movl %r10d, 0x4(%r15,%rax,1)  #  252   0x67332  5      
  jmpq .L_67240                 #  253   0x67337  5      
  nop                           #  254   0x6733c  1      
                                                         
.size T_278, .-T_278

