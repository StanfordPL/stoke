  .text
  .globl T_278
  .type T_278, @function

#! file-offset 0x66f00
#! rip-offset  0x66f00
#! capacity    1248 bytes

# Text                          #  Line  RIP      Bytes  
.T_278:                         #        0x66f00  0      
  movq %rbx, -0x20(%rsp)        #  1     0x66f00  5      
  movq %r14, -0x8(%rsp)         #  2     0x66f05  5      
  movl %esi, %r8d               #  3     0x66f0a  3      
  movq %r12, -0x18(%rsp)        #  4     0x66f0d  5      
  movq %r13, -0x10(%rsp)        #  5     0x66f12  5      
  subl $0x58, %esp              #  6     0x66f17  3      
  addq %r15, %rsp               #  7     0x66f1a  3      
  nop                           #  8     0x66f1d  1      
  movl 0xffcf96c(%rip), %esi    #  9     0x66f1e  6      
  movl %edi, %ebx               #  10    0x66f24  2      
  movl %ecx, %r14d              #  11    0x66f26  3      
  testl %esi, %esi              #  12    0x66f29  2      
  je .L_66fa0                   #  13    0x66f2b  6      
  testq %r14, %r14              #  14    0x66f31  3      
  je .L_66fe0                   #  15    0x66f34  6      
  nop                           #  16    0x66f3a  1      
.L_66f40:                       #        0x66f3b  0      
  xorl %esi, %esi               #  17    0x66f3b  2      
  testl %ebx, %ebx              #  18    0x66f3d  2      
  movl $0xfffffffc, %edi        #  19    0x66f3f  5      
  jne .L_67060                  #  20    0x66f44  6      
  xchgw %ax, %ax                #  21    0x66f4a  3      
  nop                           #  22    0x66f4d  1      
.L_66f60:                       #        0x66f4e  0      
  movl %r14d, %eax              #  23    0x66f4e  3      
  movq 0x38(%rsp), %rbx         #  24    0x66f51  5      
  movq 0x40(%rsp), %r12         #  25    0x66f56  5      
  movq 0x48(%rsp), %r13         #  26    0x66f5b  5      
  movq 0x50(%rsp), %r14         #  27    0x66f60  5      
  addl $0x58, %esp              #  28    0x66f65  3      
  addq %r15, %rsp               #  29    0x66f68  3      
  popq %r11                     #  30    0x66f6b  3      
  nop                           #  31    0x66f6e  1      
  andl $0xffffffe0, %r11d       #  32    0x66f6f  7      
  addq %r15, %r11               #  33    0x66f76  3      
  jmpq %r11                     #  34    0x66f79  3      
  nop                           #  35    0x66f7c  1      
  nop                           #  36    0x66f7d  1      
.L_66fa0:                       #        0x66f7e  0      
  movl %edx, 0x10(%rsp)         #  37    0x66f7e  4      
  movq %r8, 0x8(%rsp)           #  38    0x66f82  5      
  nop                           #  39    0x66f87  1      
  nop                           #  40    0x66f88  1      
  callq .init_mparams           #  41    0x66f89  5      
  testq %r14, %r14              #  42    0x66f8e  3      
  movq 0x8(%rsp), %r8           #  43    0x66f91  5      
  movl 0x10(%rsp), %edx         #  44    0x66f96  4      
  jne .L_66f40                  #  45    0x66f9a  6      
  nop                           #  46    0x66fa0  1      
.L_66fe0:                       #        0x66fa1  0      
  testl %ebx, %ebx              #  47    0x66fa1  2      
  jne .L_67020                  #  48    0x66fa3  6      
  movq 0x38(%rsp), %rbx         #  49    0x66fa9  5      
  movq 0x40(%rsp), %r12         #  50    0x66fae  5      
  xorl %edi, %edi               #  51    0x66fb3  2      
  movq 0x48(%rsp), %r13         #  52    0x66fb5  5      
  movq 0x50(%rsp), %r14         #  53    0x66fba  5      
  addl $0x58, %esp              #  54    0x66fbf  3      
  addq %r15, %rsp               #  55    0x66fc2  3      
  jmpq .malloc                  #  56    0x66fc5  5      
  nop                           #  57    0x66fca  1      
  nop                           #  58    0x66fcb  1      
.L_67020:                       #        0x66fcc  0      
  leal (,%rbx,4), %eax          #  59    0x66fcc  7      
  movl $0xc, %edi               #  60    0x66fd3  5      
  movl $0x10, %esi              #  61    0x66fd8  5      
  cmpl $0xa, %eax               #  62    0x66fdd  3      
  jbe .L_67060                  #  63    0x66fe0  6      
  leal 0xb(,%rbx,4), %esi       #  64    0x66fe6  7      
  andl $0xfffffff8, %esi        #  65    0x66fed  6      
  leal -0x4(%rsi), %edi         #  66    0x66ff3  3      
  nop                           #  67    0x66ff6  1      
  nop                           #  68    0x66ff7  1      
.L_67060:                       #        0x66ff8  0      
  testb $0x1, %dl               #  69    0x66ff8  3      
  jne .L_67280                  #  70    0x66ffb  6      
  xorl %r13d, %r13d             #  71    0x67001  3      
  xorl %ecx, %ecx               #  72    0x67004  2      
  testl %ebx, %ebx              #  73    0x67006  2      
  je .L_670c0                   #  74    0x67008  6      
  movl %r8d, %r9d               #  75    0x6700e  3      
  xorl %r13d, %r13d             #  76    0x67011  3      
  xorl %ecx, %ecx               #  77    0x67014  2      
  nop                           #  78    0x67016  1      
.L_67080:                       #        0x67017  0      
  movl %r9d, %eax               #  79    0x67017  3      
  movl %eax, %eax               #  80    0x6701a  2      
  movl (%r15,%rax,1), %r10d     #  81    0x6701c  4      
  movl $0x10, %eax              #  82    0x67020  5      
  cmpl $0xa, %r10d              #  83    0x67025  4      
  jbe .L_670a0                  #  84    0x67029  6      
  leal 0xb(%r10), %eax          #  85    0x6702f  4      
  andl $0xfffffff8, %eax        #  86    0x67033  5      
  nop                           #  87    0x67038  1      
.L_670a0:                       #        0x67039  0      
  addl $0x1, %ecx               #  88    0x67039  3      
  addl %eax, %r13d              #  89    0x6703c  3      
  addl $0x4, %r9d               #  90    0x6703f  4      
  cmpl %ecx, %ebx               #  91    0x67043  2      
  jne .L_67080                  #  92    0x67045  6      
  xorl %ecx, %ecx               #  93    0x6704b  2      
  nop                           #  94    0x6704d  1      
  nop                           #  95    0x6704e  1      
.L_670c0:                       #        0x6704f  0      
  movl 0xffcfa26(%rip), %r12d   #  96    0x6704f  7      
  leal (%r13,%rdi,1), %edi      #  97    0x67056  5      
  movl %edx, 0x10(%rsp)         #  98    0x6705b  4      
  movl %ecx, 0x18(%rsp)         #  99    0x6705f  4      
  movl %esi, 0x28(%rsp)         #  100   0x67063  4      
  movq %r8, 0x8(%rsp)           #  101   0x67067  5      
  movl %r12d, %eax              #  102   0x6706c  3      
  andl $0xfffffffe, %eax        #  103   0x6706f  5      
  movl %eax, 0xffcfa02(%rip)    #  104   0x67074  6      
  nop                           #  105   0x6707a  1      
  nop                           #  106   0x6707b  1      
  callq .malloc                 #  107   0x6707c  5      
  andl $0x1, %r12d              #  108   0x67081  4      
  movl %eax, %r9d               #  109   0x67085  3      
  movl 0x10(%rsp), %edx         #  110   0x67088  4      
  movl 0x18(%rsp), %ecx         #  111   0x6708c  4      
  movl 0x28(%rsp), %esi         #  112   0x67090  4      
  movq 0x8(%rsp), %r8           #  113   0x67094  5      
  je .L_67140                   #  114   0x67099  6      
  nop                           #  115   0x6709f  1      
  orl $0x1, 0xffcf9d5(%rip)     #  116   0x670a0  7      
  nop                           #  117   0x670a7  1      
  nop                           #  118   0x670a8  1      
.L_67140:                       #        0x670a9  0      
  testq %r9, %r9                #  119   0x670a9  3      
  je .L_67340                   #  120   0x670ac  6      
  testb $0x2, 0xffcf9c3(%rip)   #  121   0x670b2  7      
  jne .L_672e0                  #  122   0x670b9  6      
  nop                           #  123   0x670bf  1      
.L_67160:                       #        0x670c0  0      
  leal -0x8(%r9), %r12d         #  124   0x670c0  4      
  movl %r12d, %r12d             #  125   0x670c4  3      
  movl 0x4(%r15,%r12,1), %r10d  #  126   0x670c7  5      
  andl $0xfffffff8, %r10d       #  127   0x670cc  7      
  andl $0x2, %edx               #  128   0x670d3  3      
  jne .L_67360                  #  129   0x670d6  6      
  nop                           #  130   0x670dc  1      
.L_67180:                       #        0x670dd  0      
  testq %r14, %r14              #  131   0x670dd  3      
  je .L_673c0                   #  132   0x670e0  6      
  movl %r10d, %r13d             #  133   0x670e6  3      
  nop                           #  134   0x670e9  1      
  nop                           #  135   0x670ea  1      
.L_671a0:                       #        0x670eb  0      
  subl $0x1, %ebx               #  136   0x670eb  3      
  movl %r14d, %r14d             #  137   0x670ee  3      
  movl %r9d, (%r15,%r14,1)      #  138   0x670f1  4      
  je .L_67240                   #  139   0x670f5  6      
  movl %ecx, %r10d              #  140   0x670fb  3      
  movl %r14d, %esi              #  141   0x670fe  3      
  xorl %r9d, %r9d               #  142   0x67101  3      
  xorl %edx, %edx               #  143   0x67104  2      
  orl $0x3, %r10d               #  144   0x67106  4      
  nop                           #  145   0x6710a  1      
.L_671c0:                       #        0x6710b  0      
  testl %ecx, %ecx              #  146   0x6710b  2      
  movl %r10d, %edi              #  147   0x6710d  3      
  movl %ecx, %eax               #  148   0x67110  2      
  jne .L_67200                  #  149   0x67112  6      
  addl %r8d, %r9d               #  150   0x67118  3      
  movl $0x13, %edi              #  151   0x6711b  5      
  movl $0x10, %eax              #  152   0x67120  5      
  movl %r9d, %r9d               #  153   0x67125  3      
  movl (%r15,%r9,1), %r9d       #  154   0x67128  4      
  nop                           #  155   0x6712c  1      
  cmpl $0xa, %r9d               #  156   0x6712d  4      
  jbe .L_67200                  #  157   0x67131  6      
  leal 0xb(%r9), %eax           #  158   0x67137  4      
  andl $0xfffffff8, %eax        #  159   0x6713b  5      
  movl %eax, %edi               #  160   0x67140  2      
  orl $0x3, %edi                #  161   0x67142  3      
  nop                           #  162   0x67145  1      
.L_67200:                       #        0x67146  0      
  movl %r12d, %r12d             #  163   0x67146  3      
  movl %edi, 0x4(%r15,%r12,1)   #  164   0x67149  5      
  leal (%rax,%r12,1), %r12d     #  165   0x6714e  4      
  addl $0x1, %edx               #  166   0x67152  3      
  subl %eax, %r13d              #  167   0x67155  3      
  movl %esi, %eax               #  168   0x67158  2      
  addl $0x4, %esi               #  169   0x6715a  3      
  leal 0x8(%r12), %edi          #  170   0x6715d  5      
  cmpl %edx, %ebx               #  171   0x67162  2      
  xchgw %ax, %ax                #  172   0x67164  3      
  leal (,%rdx,4), %r9d          #  173   0x67167  8      
  movl %eax, %eax               #  174   0x6716f  2      
  movl %edi, 0x4(%r15,%rax,1)   #  175   0x67171  5      
  jne .L_671c0                  #  176   0x67176  6      
  nop                           #  177   0x6717c  1      
.L_67240:                       #        0x6717d  0      
  orl $0x3, %r13d               #  178   0x6717d  4      
  movl %r12d, %r12d             #  179   0x67181  3      
  movl %r13d, 0x4(%r15,%r12,1)  #  180   0x67184  5      
  testb $0x2, 0xffcf8ec(%rip)   #  181   0x67189  7      
  je .L_66f60                   #  182   0x67190  6      
  mfence                        #  183   0x67196  3      
  nop                           #  184   0x67199  1      
  movl $0x0, 0xffcf8dc(%rip)    #  185   0x6719a  10     
  jmpq .L_66f60                 #  186   0x671a4  5      
  xchgw %ax, %ax                #  187   0x671a9  3      
  nop                           #  188   0x671ac  1      
.L_67280:                       #        0x671ad  0      
  movl %r8d, %r8d               #  189   0x671ad  3      
  movl (%r15,%r8,1), %eax       #  190   0x671b0  4      
  movl $0x10, %ecx              #  191   0x671b4  5      
  cmpl $0xa, %eax               #  192   0x671b9  3      
  ja .L_672c0                   #  193   0x671bc  6      
  nop                           #  194   0x671c2  1      
.L_672a0:                       #        0x671c3  0      
  movl %ecx, %r13d              #  195   0x671c3  3      
  imull %ebx, %r13d             #  196   0x671c6  4      
  jmpq .L_670c0                 #  197   0x671ca  5      
  nop                           #  198   0x671cf  1      
  nop                           #  199   0x671d0  1      
.L_672c0:                       #        0x671d1  0      
  leal 0xb(%rax), %ecx          #  200   0x671d1  3      
  andl $0xfffffff8, %ecx        #  201   0x671d4  6      
  jmpq .L_672a0                 #  202   0x671da  5      
  nop                           #  203   0x671df  1      
  nop                           #  204   0x671e0  1      
.L_672e0:                       #        0x671e1  0      
  movl $0x1, %eax               #  205   0x671e1  5      
  xchgl %eax, 0xffcf894(%rip)   #  206   0x671e6  6      
  testl %eax, %eax              #  207   0x671ec  2      
  je .L_67160                   #  208   0x671ee  6      
  movl $0x10036a80, %edi        #  209   0x671f4  5      
  movl %edx, 0x10(%rsp)         #  210   0x671f9  4      
  movl %ecx, 0x18(%rsp)         #  211   0x671fd  4      
  movl %esi, 0x28(%rsp)         #  212   0x67201  4      
  movq %r8, 0x8(%rsp)           #  213   0x67205  5      
  movq %r9, 0x20(%rsp)          #  214   0x6720a  5      
  nop                           #  215   0x6720f  1      
  callq .spin_acquire_lock      #  216   0x67210  5      
  testl %eax, %eax              #  217   0x67215  2      
  movl 0x10(%rsp), %edx         #  218   0x67217  4      
  movl 0x18(%rsp), %ecx         #  219   0x6721b  4      
  movl 0x28(%rsp), %esi         #  220   0x6721f  4      
  movq 0x8(%rsp), %r8           #  221   0x67223  5      
  movq 0x20(%rsp), %r9          #  222   0x67228  5      
  je .L_67160                   #  223   0x6722d  6      
  xchgw %ax, %ax                #  224   0x67233  3      
.L_67340:                       #        0x67236  0      
  xorl %r14d, %r14d             #  225   0x67236  3      
  jmpq .L_66f60                 #  226   0x67239  5      
  nop                           #  227   0x6723e  1      
  nop                           #  228   0x6723f  1      
.L_67360:                       #        0x67240  0      
  movl %r10d, %edx              #  229   0x67240  3      
  movl %r9d, %edi               #  230   0x67243  3      
  movl %ecx, 0x18(%rsp)         #  231   0x67246  4      
  subl %esi, %edx               #  232   0x6724a  2      
  xorl %esi, %esi               #  233   0x6724c  2      
  movq %r8, 0x8(%rsp)           #  234   0x6724e  5      
  subl $0x4, %edx               #  235   0x67253  3      
  movq %r9, 0x20(%rsp)          #  236   0x67256  5      
  movl %r10d, 0x28(%rsp)        #  237   0x6725b  5      
  nop                           #  238   0x67260  1      
  nop                           #  239   0x67261  1      
  callq .memset                 #  240   0x67262  5      
  movl 0x28(%rsp), %r10d        #  241   0x67267  5      
  movq 0x20(%rsp), %r9          #  242   0x6726c  5      
  movq 0x8(%rsp), %r8           #  243   0x67271  5      
  movl 0x18(%rsp), %ecx         #  244   0x67276  4      
  jmpq .L_67180                 #  245   0x6727a  5      
  nop                           #  246   0x6727f  1      
.L_673c0:                       #        0x67280  0      
  leal (%r13,%r12,1), %eax      #  247   0x67280  5      
  subl %r13d, %r10d             #  248   0x67285  3      
  orl $0x3, %r10d               #  249   0x67288  4      
  leal 0x8(%rax), %r14d         #  250   0x6728c  4      
  movl %eax, %eax               #  251   0x67290  2      
  movl %r10d, 0x4(%r15,%rax,1)  #  252   0x67292  5      
  jmpq .L_671a0                 #  253   0x67297  5      
  nop                           #  254   0x6729c  1      
                                                         
.size T_278, .-T_278

