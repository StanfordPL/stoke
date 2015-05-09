  .text
  .globl __sfvwrite_r
  .type __sfvwrite_r, @function

#! file-offset 0x68bc0
#! rip-offset  0x68bc0
#! capacity    2368 bytes

# Text                            #  Line  RIP      Bytes  
.__sfvwrite_r:                    #        0x68bc0  0      
  pushq %r14                      #  1     0x68bc0  3      
  movl %edx, %r14d                #  2     0x68bc3  3      
  movl %edi, %edi                 #  3     0x68bc6  2      
  pushq %r13                      #  4     0x68bc8  3      
  pushq %r12                      #  5     0x68bcb  3      
  pushq %rbx                      #  6     0x68bce  2      
  movl %esi, %ebx                 #  7     0x68bd0  2      
  subl $0x38, %esp                #  8     0x68bd2  3      
  addq %r15, %rsp                 #  9     0x68bd5  3      
  movl %r14d, %r14d               #  10    0x68bd8  3      
  movl 0x8(%r15,%r14,1), %ecx     #  11    0x68bdb  5      
  nop                             #  12    0x68be0  1      
  movq %rdi, 0x20(%rsp)           #  13    0x68be1  5      
  testl %ecx, %ecx                #  14    0x68be6  2      
  je .L_68cc0                     #  15    0x68be8  6      
  movl %ebx, %ebx                 #  16    0x68bee  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  17    0x68bf0  6      
  movswl %di, %eax                #  18    0x68bf6  3      
  testb $0x8, %al                 #  19    0x68bf9  2      
  je .L_694c0                     #  20    0x68bfb  6      
  movl %ebx, %ebx                 #  21    0x68c01  2      
  movl 0x10(%r15,%rbx,1), %edx    #  22    0x68c03  5      
  testl %edx, %edx                #  23    0x68c08  2      
  je .L_694c0                     #  24    0x68c0a  6      
  xchgw %ax, %ax                  #  25    0x68c10  3      
  nop                             #  26    0x68c13  1      
.L_68c20:                         #        0x68c14  0      
  testb $0x2, %al                 #  27    0x68c14  2      
  movl %r14d, %r14d               #  28    0x68c16  3      
  movl (%r15,%r14,1), %r12d       #  29    0x68c19  4      
  je .L_68d00                     #  30    0x68c1d  6      
  xorl %r8d, %r8d                 #  31    0x68c23  3      
  xorl %r13d, %r13d               #  32    0x68c26  3      
  nop                             #  33    0x68c29  1      
.L_68c40:                         #        0x68c2a  0      
  testl %r13d, %r13d              #  34    0x68c2a  3      
  je .L_68e20                     #  35    0x68c2d  6      
  cmpl $0x7ffffc00, %r13d         #  36    0x68c33  7      
  movl $0x7ffffc00, %ecx          #  37    0x68c3a  5      
  movl %ebx, %ebx                 #  38    0x68c3f  2      
  movl 0x24(%r15,%rbx,1), %eax    #  39    0x68c41  5      
  cmovbel %r13d, %ecx             #  40    0x68c46  4      
  movl %r8d, %edx                 #  41    0x68c4a  3      
  movq %r8, (%rsp)                #  42    0x68c4d  4      
  movl %ebx, %ebx                 #  43    0x68c51  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  44    0x68c53  5      
  movl 0x20(%rsp), %edi           #  45    0x68c58  4      
  nop                             #  46    0x68c5c  1      
  andl $0xffffffe0, %eax          #  47    0x68c5d  5      
  addq %r15, %rax                 #  48    0x68c62  3      
  callq %rax                      #  49    0x68c65  2      
  testl %eax, %eax                #  50    0x68c67  2      
  movq (%rsp), %r8                #  51    0x68c69  4      
  jle .L_69160                    #  52    0x68c6d  6      
  movl %r14d, %r14d               #  53    0x68c73  3      
  movl 0x8(%r15,%r14,1), %edx     #  54    0x68c76  5      
  subl %eax, %r13d                #  55    0x68c7b  3      
  leal (%rax,%r8,1), %r8d         #  56    0x68c7e  4      
  subl %eax, %edx                 #  57    0x68c82  2      
  testl %edx, %edx                #  58    0x68c84  2      
  nop                             #  59    0x68c86  1      
  movl %r14d, %r14d               #  60    0x68c87  3      
  movl %edx, 0x8(%r15,%r14,1)     #  61    0x68c8a  5      
  jne .L_68c40                    #  62    0x68c8f  6      
  nop                             #  63    0x68c95  1      
  nop                             #  64    0x68c96  1      
.L_68cc0:                         #        0x68c97  0      
  xorl %eax, %eax                 #  65    0x68c97  2      
  nop                             #  66    0x68c99  1      
  nop                             #  67    0x68c9a  1      
.L_68ce0:                         #        0x68c9b  0      
  addl $0x38, %esp                #  68    0x68c9b  3      
  addq %r15, %rsp                 #  69    0x68c9e  3      
  popq %rbx                       #  70    0x68ca1  2      
  popq %r12                       #  71    0x68ca3  3      
  popq %r13                       #  72    0x68ca6  3      
  popq %r14                       #  73    0x68ca9  3      
  popq %r11                       #  74    0x68cac  3      
  andl $0xffffffe0, %r11d         #  75    0x68caf  7      
  addq %r15, %r11                 #  76    0x68cb6  3      
  jmpq %r11                       #  77    0x68cb9  3      
  nop                             #  78    0x68cbc  1      
.L_68d00:                         #        0x68cbd  0      
  xorl %r9d, %r9d                 #  79    0x68cbd  3      
  xorl %r13d, %r13d               #  80    0x68cc0  3      
  testb $0x1, %al                 #  81    0x68cc3  2      
  jne .L_691a0                    #  82    0x68cc5  6      
  nop                             #  83    0x68ccb  1      
  nop                             #  84    0x68ccc  1      
.L_68d20:                         #        0x68ccd  0      
  testl %r13d, %r13d              #  85    0x68ccd  3      
  je .L_68e00                     #  86    0x68cd0  6      
  nop                             #  87    0x68cd6  1      
  nop                             #  88    0x68cd7  1      
.L_68d40:                         #        0x68cd8  0      
  movswl %di, %edi                #  89    0x68cd8  3      
  movl %ebx, %ebx                 #  90    0x68cdb  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  91    0x68cdd  5      
  testl $0x200, %edi              #  92    0x68ce2  6      
  je .L_68e40                     #  93    0x68ce8  6      
  cmpl %r8d, %r13d                #  94    0x68cee  3      
  movl %r8d, %r10d                #  95    0x68cf1  3      
  nop                             #  96    0x68cf4  1      
  jae .L_68ee0                    #  97    0x68cf5  6      
  movl %ebx, %ebx                 #  98    0x68cfb  2      
  movl (%r15,%rbx,1), %edi        #  99    0x68cfd  4      
  movl %r13d, %r8d                #  100   0x68d01  3      
  movl %r13d, %ecx                #  101   0x68d04  3      
  movl %r13d, %r10d               #  102   0x68d07  3      
  nop                             #  103   0x68d0a  1      
.L_68d80:                         #        0x68d0b  0      
  movl %r10d, %edx                #  104   0x68d0b  3      
  movl %r9d, %esi                 #  105   0x68d0e  3      
  movl %ecx, 0x18(%rsp)           #  106   0x68d11  4      
  movl %r8d, (%rsp)               #  107   0x68d15  4      
  movq %r9, 0x10(%rsp)            #  108   0x68d19  5      
  movl %r10d, 0x8(%rsp)           #  109   0x68d1e  5      
  nop                             #  110   0x68d23  1      
  callq .memmove                  #  111   0x68d24  5      
  movl (%rsp), %r8d               #  112   0x68d29  4      
  movl 0x8(%rsp), %r10d           #  113   0x68d2d  5      
  movl %ebx, %ebx                 #  114   0x68d32  2      
  subl %r8d, 0x8(%r15,%rbx,1)     #  115   0x68d34  5      
  movl %ebx, %ebx                 #  116   0x68d39  2      
  addl %r10d, (%r15,%rbx,1)       #  117   0x68d3b  4      
  movl 0x18(%rsp), %ecx           #  118   0x68d3f  4      
  movq 0x10(%rsp), %r9            #  119   0x68d43  5      
  nop                             #  120   0x68d48  1      
.L_68dc0:                         #        0x68d49  0      
  movl %r14d, %r14d               #  121   0x68d49  3      
  movl 0x8(%r15,%r14,1), %eax     #  122   0x68d4c  5      
  subl %ecx, %r13d                #  123   0x68d51  3      
  leal (%rcx,%r9,1), %r9d         #  124   0x68d54  4      
  subl %ecx, %eax                 #  125   0x68d58  2      
  testl %eax, %eax                #  126   0x68d5a  2      
  movl %r14d, %r14d               #  127   0x68d5c  3      
  movl %eax, 0x8(%r15,%r14,1)     #  128   0x68d5f  5      
  nop                             #  129   0x68d64  1      
  je .L_68cc0                     #  130   0x68d65  6      
  testl %r13d, %r13d              #  131   0x68d6b  3      
  movl %ebx, %ebx                 #  132   0x68d6e  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  133   0x68d70  6      
  jne .L_68d40                    #  134   0x68d76  6      
  nop                             #  135   0x68d7c  1      
.L_68e00:                         #        0x68d7d  0      
  movl %r12d, %r12d               #  136   0x68d7d  3      
  movl (%r15,%r12,1), %r9d        #  137   0x68d80  4      
  movl %r12d, %r12d               #  138   0x68d84  3      
  movl 0x4(%r15,%r12,1), %r13d    #  139   0x68d87  5      
  addl $0x8, %r12d                #  140   0x68d8c  4      
  jmpq .L_68d20                   #  141   0x68d90  5      
  nop                             #  142   0x68d95  1      
.L_68e20:                         #        0x68d96  0      
  movl %r12d, %r12d               #  143   0x68d96  3      
  movl (%r15,%r12,1), %r8d        #  144   0x68d99  4      
  movl %r12d, %r12d               #  145   0x68d9d  3      
  movl 0x4(%r15,%r12,1), %r13d    #  146   0x68da0  5      
  addl $0x8, %r12d                #  147   0x68da5  4      
  jmpq .L_68c40                   #  148   0x68da9  5      
  nop                             #  149   0x68dae  1      
.L_68e40:                         #        0x68daf  0      
  movl %ebx, %ebx                 #  150   0x68daf  2      
  movl (%r15,%rbx,1), %edi        #  151   0x68db1  4      
  movl %ebx, %ebx                 #  152   0x68db5  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  153   0x68db7  5      
  jb .L_68e60                     #  154   0x68dbc  6      
  movl %ebx, %ebx                 #  155   0x68dc2  2      
  movl 0x14(%r15,%rbx,1), %esi    #  156   0x68dc4  5      
  cmpl %esi, %r13d                #  157   0x68dc9  3      
  jae .L_69060                    #  158   0x68dcc  6      
  nop                             #  159   0x68dd2  1      
.L_68e60:                         #        0x68dd3  0      
  cmpl %r8d, %r13d                #  160   0x68dd3  3      
  movl %r9d, %esi                 #  161   0x68dd6  3      
  movq %r9, 0x10(%rsp)            #  162   0x68dd9  5      
  cmovbel %r13d, %r8d             #  163   0x68dde  4      
  movl %r8d, %edx                 #  164   0x68de2  3      
  movl %r8d, (%rsp)               #  165   0x68de5  4      
  nop                             #  166   0x68de9  1      
  callq .memmove                  #  167   0x68dea  5      
  movl (%rsp), %r8d               #  168   0x68def  4      
  movl %ebx, %ebx                 #  169   0x68df3  2      
  movl 0x8(%r15,%rbx,1), %eax     #  170   0x68df5  5      
  movl %ebx, %ebx                 #  171   0x68dfa  2      
  addl %r8d, (%r15,%rbx,1)        #  172   0x68dfc  4      
  movq 0x10(%rsp), %r9            #  173   0x68e00  5      
  subl %r8d, %eax                 #  174   0x68e05  3      
  movl %r8d, %ecx                 #  175   0x68e08  3      
  testl %eax, %eax                #  176   0x68e0b  2      
  xchgw %ax, %ax                  #  177   0x68e0d  3      
  movl %ebx, %ebx                 #  178   0x68e10  2      
  movl %eax, 0x8(%r15,%rbx,1)     #  179   0x68e12  5      
  jne .L_68dc0                    #  180   0x68e17  6      
  movl 0x20(%rsp), %edi           #  181   0x68e1d  4      
  movl %ebx, %esi                 #  182   0x68e21  2      
  nop                             #  183   0x68e23  1      
  callq ._fflush_r                #  184   0x68e24  5      
  testl %eax, %eax                #  185   0x68e29  2      
  movl (%rsp), %r8d               #  186   0x68e2b  4      
  movq 0x10(%rsp), %r9            #  187   0x68e2f  5      
  jne .L_69160                    #  188   0x68e34  6      
  movl %r8d, %ecx                 #  189   0x68e3a  3      
  jmpq .L_68dc0                   #  190   0x68e3d  5      
  nop                             #  191   0x68e42  1      
.L_68ee0:                         #        0x68e43  0      
  testl $0x480, %edi              #  192   0x68e43  6      
  jne .L_68f00                    #  193   0x68e49  6      
  movl %ebx, %ebx                 #  194   0x68e4f  2      
  movl (%r15,%rbx,1), %edi        #  195   0x68e51  4      
  movl %r13d, %ecx                #  196   0x68e55  3      
  jmpq .L_68d80                   #  197   0x68e58  5      
  nop                             #  198   0x68e5d  1      
.L_68f00:                         #        0x68e5e  0      
  movl %ebx, %ebx                 #  199   0x68e5e  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  200   0x68e60  5      
  movl %ebx, %ebx                 #  201   0x68e65  2      
  movl 0x10(%r15,%rbx,1), %eax    #  202   0x68e67  5      
  movl %ebx, %ebx                 #  203   0x68e6c  2      
  movl (%r15,%rbx,1), %r10d       #  204   0x68e6e  4      
  leal (%rcx,%rcx,2), %ecx        #  205   0x68e72  3      
  subl %eax, %r10d                #  206   0x68e75  3      
  movl %ecx, %edx                 #  207   0x68e78  2      
  nop                             #  208   0x68e7a  1      
  leal 0x1(%r13,%r10,1), %esi     #  209   0x68e7b  5      
  shrl $0x1f, %edx                #  210   0x68e80  3      
  leal (%rdx,%rcx,1), %ecx        #  211   0x68e83  3      
  sarl $0x1, %ecx                 #  212   0x68e86  2      
  cmpl %esi, %ecx                 #  213   0x68e88  2      
  movl %ecx, %edx                 #  214   0x68e8a  2      
  jae .L_68f40                    #  215   0x68e8c  6      
  movl %esi, %ecx                 #  216   0x68e92  2      
  movl %esi, %edx                 #  217   0x68e94  2      
  nop                             #  218   0x68e96  1      
.L_68f40:                         #        0x68e97  0      
  andl $0x400, %edi               #  219   0x68e97  6      
  je .L_690c0                     #  220   0x68e9d  6      
  movl 0x20(%rsp), %edi           #  221   0x68ea3  4      
  movl %edx, %esi                 #  222   0x68ea7  2      
  movl %ecx, 0x18(%rsp)           #  223   0x68ea9  4      
  movq %r9, 0x10(%rsp)            #  224   0x68ead  5      
  movl %r10d, 0x8(%rsp)           #  225   0x68eb2  5      
  nop                             #  226   0x68eb7  1      
  nop                             #  227   0x68eb8  1      
  callq ._malloc_r                #  228   0x68eb9  5      
  movl %eax, %r8d                 #  229   0x68ebe  3      
  movl 0x18(%rsp), %ecx           #  230   0x68ec1  4      
  movq 0x10(%rsp), %r9            #  231   0x68ec5  5      
  testq %r8, %r8                  #  232   0x68eca  3      
  movl 0x8(%rsp), %r10d           #  233   0x68ecd  5      
  je .L_69140                     #  234   0x68ed2  6      
  nop                             #  235   0x68ed8  1      
  movl %ebx, %ebx                 #  236   0x68ed9  2      
  movl 0x10(%r15,%rbx,1), %esi    #  237   0x68edb  5      
  movl %r10d, %edx                #  238   0x68ee0  3      
  movl %r8d, %edi                 #  239   0x68ee3  3      
  movl %ecx, 0x18(%rsp)           #  240   0x68ee6  4      
  movq %r8, (%rsp)                #  241   0x68eea  4      
  movq %r9, 0x10(%rsp)            #  242   0x68eee  5      
  movl %r10d, 0x8(%rsp)           #  243   0x68ef3  5      
  nop                             #  244   0x68ef8  1      
  nop                             #  245   0x68ef9  1      
  nop                             #  246   0x68efa  1      
  callq .memcpy                   #  247   0x68efb  5      
  movl %ebx, %ebx                 #  248   0x68f00  2      
  movzwl 0xc(%r15,%rbx,1), %eax   #  249   0x68f02  6      
  movl 0x18(%rsp), %ecx           #  250   0x68f08  4      
  movq (%rsp), %r8                #  251   0x68f0c  4      
  movq 0x10(%rsp), %r9            #  252   0x68f10  5      
  movl 0x8(%rsp), %r10d           #  253   0x68f15  5      
  andw $0xfb7f, %ax               #  254   0x68f1a  4      
  orb $0x80, %al                  #  255   0x68f1e  2      
  movl %ebx, %ebx                 #  256   0x68f20  2      
  movw %ax, 0xc(%r15,%rbx,1)      #  257   0x68f22  6      
  nop                             #  258   0x68f28  1      
  nop                             #  259   0x68f29  1      
.L_69020:                         #        0x68f2a  0      
  leal (%r10,%r8,1), %edi         #  260   0x68f2a  4      
  movl %ebx, %ebx                 #  261   0x68f2e  2      
  movl %ecx, 0x14(%r15,%rbx,1)    #  262   0x68f30  5      
  subl %r10d, %ecx                #  263   0x68f35  3      
  movl %ebx, %ebx                 #  264   0x68f38  2      
  movl %r8d, 0x10(%r15,%rbx,1)    #  265   0x68f3a  5      
  movl %ebx, %ebx                 #  266   0x68f3f  2      
  movl %ecx, 0x8(%r15,%rbx,1)     #  267   0x68f41  5      
  movl %r13d, %r8d                #  268   0x68f46  3      
  nop                             #  269   0x68f49  1      
  movl %ebx, %ebx                 #  270   0x68f4a  2      
  movl %edi, (%r15,%rbx,1)        #  271   0x68f4c  4      
  movl %r13d, %ecx                #  272   0x68f50  3      
  movl %r13d, %r10d               #  273   0x68f53  3      
  jmpq .L_68d80                   #  274   0x68f56  5      
  nop                             #  275   0x68f5b  1      
.L_69060:                         #        0x68f5c  0      
  cmpl $0x7fffffff, %r13d         #  276   0x68f5c  7      
  movl $0x7fffffff, %edx          #  277   0x68f63  5      
  movl %ebx, %ebx                 #  278   0x68f68  2      
  movl 0x24(%r15,%rbx,1), %r8d    #  279   0x68f6a  5      
  cmovbel %r13d, %edx             #  280   0x68f6f  4      
  movq %r9, 0x10(%rsp)            #  281   0x68f73  5      
  movl 0x20(%rsp), %edi           #  282   0x68f78  4      
  movl %edx, %eax                 #  283   0x68f7c  2      
  sarl $0x1f, %edx                #  284   0x68f7e  3      
  idivl %esi                      #  285   0x68f81  2      
  movl %r9d, %edx                 #  286   0x68f83  3      
  movl %eax, %ecx                 #  287   0x68f86  2      
  imull %esi, %ecx                #  288   0x68f88  3      
  movl %ebx, %ebx                 #  289   0x68f8b  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  290   0x68f8d  5      
  andl $0xffffffe0, %r8d          #  291   0x68f92  7      
  addq %r15, %r8                  #  292   0x68f99  3      
  callq %r8                       #  293   0x68f9c  3      
  testl %eax, %eax                #  294   0x68f9f  2      
  movq 0x10(%rsp), %r9            #  295   0x68fa1  5      
  jle .L_69160                    #  296   0x68fa6  6      
  movl %eax, %ecx                 #  297   0x68fac  2      
  jmpq .L_68dc0                   #  298   0x68fae  5      
  nop                             #  299   0x68fb3  1      
.L_690c0:                         #        0x68fb4  0      
  movl 0x20(%rsp), %edi           #  300   0x68fb4  4      
  movl %eax, %esi                 #  301   0x68fb8  2      
  movl %ecx, 0x18(%rsp)           #  302   0x68fba  4      
  movq %r9, 0x10(%rsp)            #  303   0x68fbe  5      
  movl %r10d, 0x8(%rsp)           #  304   0x68fc3  5      
  nop                             #  305   0x68fc8  1      
  callq ._realloc_r               #  306   0x68fc9  5      
  movl %eax, %r8d                 #  307   0x68fce  3      
  movl 0x18(%rsp), %ecx           #  308   0x68fd1  4      
  movq 0x10(%rsp), %r9            #  309   0x68fd5  5      
  testq %r8, %r8                  #  310   0x68fda  3      
  movl 0x8(%rsp), %r10d           #  311   0x68fdd  5      
  jne .L_69020                    #  312   0x68fe2  6      
  nop                             #  313   0x68fe8  1      
  movl %ebx, %ebx                 #  314   0x68fe9  2      
  movl 0x10(%r15,%rbx,1), %esi    #  315   0x68feb  5      
  movl 0x20(%rsp), %edi           #  316   0x68ff0  4      
  nop                             #  317   0x68ff4  1      
  nop                             #  318   0x68ff5  1      
  callq ._free_r                  #  319   0x68ff6  5      
  movl %ebx, %ebx                 #  320   0x68ffb  2      
  andw $0xff7f, 0xc(%r15,%rbx,1)  #  321   0x68ffd  8      
  nop                             #  322   0x69005  1      
  nop                             #  323   0x69006  1      
.L_69140:                         #        0x69007  0      
  movq 0x20(%rsp), %rax           #  324   0x69007  5      
  movl %eax, %eax                 #  325   0x6900c  2      
  movl $0xc, (%r15,%rax,1)        #  326   0x6900e  8      
  xchgw %ax, %ax                  #  327   0x69016  3      
  nop                             #  328   0x69019  1      
.L_69160:                         #        0x6901a  0      
  movl %ebx, %ebx                 #  329   0x6901a  2      
  orw $0x40, 0xc(%r15,%rbx,1)     #  330   0x6901c  7      
  addl $0x38, %esp                #  331   0x69023  3      
  addq %r15, %rsp                 #  332   0x69026  3      
  movl $0xffffffff, %eax          #  333   0x69029  5      
  popq %rbx                       #  334   0x6902e  2      
  popq %r12                       #  335   0x69030  3      
  popq %r13                       #  336   0x69033  3      
  popq %r14                       #  337   0x69036  3      
  popq %r11                       #  338   0x69039  3      
  nop                             #  339   0x6903c  1      
  andl $0xffffffe0, %r11d         #  340   0x6903d  7      
  addq %r15, %r11                 #  341   0x69044  3      
  jmpq %r11                       #  342   0x69047  3      
  nop                             #  343   0x6904a  1      
  nop                             #  344   0x6904b  1      
.L_691a0:                         #        0x6904c  0      
  xorl %r11d, %r11d               #  345   0x6904c  3      
  movl $0x0, 0x2c(%rsp)           #  346   0x6904f  8      
  xorl %r10d, %r10d               #  347   0x69057  3      
  nop                             #  348   0x6905a  1      
  nop                             #  349   0x6905b  1      
.L_691c0:                         #        0x6905c  0      
  testl %r13d, %r13d              #  350   0x6905c  3      
  je .L_69300                     #  351   0x6905f  6      
  nop                             #  352   0x69065  1      
  nop                             #  353   0x69066  1      
.L_691e0:                         #        0x69067  0      
  movl 0x2c(%rsp), %eax           #  354   0x69067  4      
  testl %eax, %eax                #  355   0x6906b  2      
  je .L_69440                     #  356   0x6906d  6      
  nop                             #  357   0x69073  1      
  nop                             #  358   0x69074  1      
.L_69200:                         #        0x69075  0      
  movl %ebx, %ebx                 #  359   0x69075  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  360   0x69077  5      
  movl %ebx, %ebx                 #  361   0x6907c  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  362   0x6907e  5      
  cmpl %r13d, %r11d               #  363   0x69083  3      
  movl %r13d, %r9d                #  364   0x69086  3      
  movl %ebx, %ebx                 #  365   0x69089  2      
  movl (%r15,%rbx,1), %edi        #  366   0x6908b  4      
  cmovbel %r11d, %r9d             #  367   0x6908f  4      
  xchgw %ax, %ax                  #  368   0x69093  3      
  addl %ecx, %r8d                 #  369   0x69096  3      
  cmpl %r8d, %r9d                 #  370   0x69099  3      
  jle .L_69320                    #  371   0x6909c  6      
  movl %ebx, %ebx                 #  372   0x690a2  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  373   0x690a4  5      
  jae .L_69320                    #  374   0x690a9  6      
  movl %r10d, %esi                #  375   0x690af  3      
  movl %r8d, %edx                 #  376   0x690b2  3      
  nop                             #  377   0x690b5  1      
  movq %r10, 0x8(%rsp)            #  378   0x690b6  5      
  movl %r11d, 0x18(%rsp)          #  379   0x690bb  5      
  movl %r8d, (%rsp)               #  380   0x690c0  4      
  nop                             #  381   0x690c4  1      
  callq .memmove                  #  382   0x690c5  5      
  movl (%rsp), %r8d               #  383   0x690ca  4      
  movl %ebx, %ebx                 #  384   0x690ce  2      
  addl %r8d, (%r15,%rbx,1)        #  385   0x690d0  4      
  movl %ebx, %esi                 #  386   0x690d4  2      
  movl 0x20(%rsp), %edi           #  387   0x690d6  4      
  nop                             #  388   0x690da  1      
  callq ._fflush_r                #  389   0x690db  5      
  testl %eax, %eax                #  390   0x690e0  2      
  movl (%rsp), %r8d               #  391   0x690e2  4      
  movq 0x8(%rsp), %r10            #  392   0x690e6  5      
  movl 0x18(%rsp), %r11d          #  393   0x690eb  5      
  jne .L_69160                    #  394   0x690f0  6      
  nop                             #  395   0x690f6  1      
.L_692a0:                         #        0x690f7  0      
  subl %r8d, %r11d                #  396   0x690f7  3      
  je .L_69380                     #  397   0x690fa  6      
  nop                             #  398   0x69100  1      
  nop                             #  399   0x69101  1      
.L_692c0:                         #        0x69102  0      
  movl %r14d, %r14d               #  400   0x69102  3      
  movl 0x8(%r15,%r14,1), %eax     #  401   0x69105  5      
  subl %r8d, %r13d                #  402   0x6910a  3      
  leal (%r8,%r10,1), %r10d        #  403   0x6910d  4      
  subl %r8d, %eax                 #  404   0x69111  3      
  testl %eax, %eax                #  405   0x69114  2      
  movl %r14d, %r14d               #  406   0x69116  3      
  movl %eax, 0x8(%r15,%r14,1)     #  407   0x69119  5      
  nop                             #  408   0x6911e  1      
  je .L_68cc0                     #  409   0x6911f  6      
  testl %r13d, %r13d              #  410   0x69125  3      
  jne .L_691e0                    #  411   0x69128  6      
  xchgw %ax, %ax                  #  412   0x6912e  3      
  nop                             #  413   0x69131  1      
.L_69300:                         #        0x69132  0      
  movl %r12d, %r12d               #  414   0x69132  3      
  movl (%r15,%r12,1), %r10d       #  415   0x69135  4      
  movl %r12d, %r12d               #  416   0x69139  3      
  movl 0x4(%r15,%r12,1), %r13d    #  417   0x6913c  5      
  addl $0x8, %r12d                #  418   0x69141  4      
  movl $0x0, 0x2c(%rsp)           #  419   0x69145  8      
  jmpq .L_691c0                   #  420   0x6914d  5      
.L_69320:                         #        0x69152  0      
  cmpl %ecx, %r9d                 #  421   0x69152  3      
  jl .L_693e0                     #  422   0x69155  6      
  movl %ebx, %ebx                 #  423   0x6915b  2      
  movl 0x24(%r15,%rbx,1), %eax    #  424   0x6915d  5      
  movl %r10d, %edx                #  425   0x69162  3      
  movq %r10, 0x8(%rsp)            #  426   0x69165  5      
  movl %r11d, 0x18(%rsp)          #  427   0x6916a  5      
  nop                             #  428   0x6916f  1      
  movl %ebx, %ebx                 #  429   0x69170  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  430   0x69172  5      
  movl 0x20(%rsp), %edi           #  431   0x69177  4      
  nop                             #  432   0x6917b  1      
  andl $0xffffffe0, %eax          #  433   0x6917c  5      
  addq %r15, %rax                 #  434   0x69181  3      
  callq %rax                      #  435   0x69184  2      
  testl %eax, %eax                #  436   0x69186  2      
  movl %eax, %r8d                 #  437   0x69188  3      
  movq 0x8(%rsp), %r10            #  438   0x6918b  5      
  movl 0x18(%rsp), %r11d          #  439   0x69190  5      
  jle .L_69160                    #  440   0x69195  6      
  subl %r8d, %r11d                #  441   0x6919b  3      
  jne .L_692c0                    #  442   0x6919e  6      
  xchgw %ax, %ax                  #  443   0x691a4  3      
.L_69380:                         #        0x691a7  0      
  movl 0x20(%rsp), %edi           #  444   0x691a7  4      
  movl %ebx, %esi                 #  445   0x691ab  2      
  movl %r8d, (%rsp)               #  446   0x691ad  4      
  movq %r10, 0x8(%rsp)            #  447   0x691b1  5      
  movl %r11d, 0x18(%rsp)          #  448   0x691b6  5      
  nop                             #  449   0x691bb  1      
  callq ._fflush_r                #  450   0x691bc  5      
  testl %eax, %eax                #  451   0x691c1  2      
  movl (%rsp), %r8d               #  452   0x691c3  4      
  movq 0x8(%rsp), %r10            #  453   0x691c7  5      
  movl 0x18(%rsp), %r11d          #  454   0x691cc  5      
  jne .L_69160                    #  455   0x691d1  6      
  movl $0x0, 0x2c(%rsp)           #  456   0x691d7  8      
  xchgw %ax, %ax                  #  457   0x691df  3      
  jmpq .L_692c0                   #  458   0x691e2  5      
  nop                             #  459   0x691e7  1      
  nop                             #  460   0x691e8  1      
.L_693e0:                         #        0x691e9  0      
  movl %r9d, %edx                 #  461   0x691e9  3      
  movl %r10d, %esi                #  462   0x691ec  3      
  movl %r9d, 0x10(%rsp)           #  463   0x691ef  5      
  movq %r10, 0x8(%rsp)            #  464   0x691f4  5      
  movl %r11d, 0x18(%rsp)          #  465   0x691f9  5      
  nop                             #  466   0x691fe  1      
  callq .memmove                  #  467   0x691ff  5      
  movl 0x10(%rsp), %r9d           #  468   0x69204  5      
  movl 0x18(%rsp), %r11d          #  469   0x69209  5      
  movl %ebx, %ebx                 #  470   0x6920e  2      
  subl %r9d, 0x8(%r15,%rbx,1)     #  471   0x69210  5      
  movl %ebx, %ebx                 #  472   0x69215  2      
  addl %r9d, (%r15,%rbx,1)        #  473   0x69217  4      
  movl %r9d, %r8d                 #  474   0x6921b  3      
  movq 0x8(%rsp), %r10            #  475   0x6921e  5      
  nop                             #  476   0x69223  1      
  jmpq .L_692a0                   #  477   0x69224  5      
  nop                             #  478   0x69229  1      
  nop                             #  479   0x6922a  1      
.L_69440:                         #        0x6922b  0      
  movl %r10d, %edi                #  480   0x6922b  3      
  movl %r13d, %edx                #  481   0x6922e  3      
  movl $0xa, %esi                 #  482   0x69231  5      
  movq %r10, 0x8(%rsp)            #  483   0x69236  5      
  nop                             #  484   0x6923b  1      
  callq .memchr                   #  485   0x6923c  5      
  movl %eax, %r11d                #  486   0x69241  3      
  movq 0x8(%rsp), %r10            #  487   0x69244  5      
  testq %r11, %r11                #  488   0x69249  3      
  je .L_694a0                     #  489   0x6924c  6      
  addl $0x1, %r11d                #  490   0x69252  4      
  movl $0x1, 0x2c(%rsp)           #  491   0x69256  8      
  subl %r10d, %r11d               #  492   0x6925e  3      
  nop                             #  493   0x69261  1      
  jmpq .L_69200                   #  494   0x69262  5      
  nop                             #  495   0x69267  1      
  nop                             #  496   0x69268  1      
.L_694a0:                         #        0x69269  0      
  leal 0x1(%r13), %r11d           #  497   0x69269  4      
  movl $0x1, 0x2c(%rsp)           #  498   0x6926d  8      
  jmpq .L_69200                   #  499   0x69275  5      
  nop                             #  500   0x6927a  1      
.L_694c0:                         #        0x6927b  0      
  movl 0x20(%rsp), %edi           #  501   0x6927b  4      
  movl %ebx, %esi                 #  502   0x6927f  2      
  nop                             #  503   0x69281  1      
  nop                             #  504   0x69282  1      
  callq .__swsetup_r              #  505   0x69283  5      
  movl %eax, %edx                 #  506   0x69288  2      
  movl $0xffffffff, %eax          #  507   0x6928a  5      
  testl %edx, %edx                #  508   0x6928f  2      
  jne .L_68ce0                    #  509   0x69291  6      
  movl %ebx, %ebx                 #  510   0x69297  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  511   0x69299  6      
  movswl %di, %eax                #  512   0x6929f  3      
  jmpq .L_68c20                   #  513   0x692a2  5      
  nop                             #  514   0x692a7  1      
                                                           
.size __sfvwrite_r, .-__sfvwrite_r

