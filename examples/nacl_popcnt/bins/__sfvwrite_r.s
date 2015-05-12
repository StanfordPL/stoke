  .text
  .globl __sfvwrite_r
  .type __sfvwrite_r, @function

#! file-offset 0x68be0
#! rip-offset  0x68be0
#! capacity    2368 bytes

# Text                            #  Line  RIP      Bytes  
.__sfvwrite_r:                    #        0x68be0  0      
  pushq %r14                      #  1     0x68be0  3      
  movl %edx, %r14d                #  2     0x68be3  3      
  movl %edi, %edi                 #  3     0x68be6  2      
  pushq %r13                      #  4     0x68be8  3      
  pushq %r12                      #  5     0x68beb  3      
  pushq %rbx                      #  6     0x68bee  2      
  movl %esi, %ebx                 #  7     0x68bf0  2      
  subl $0x38, %esp                #  8     0x68bf2  3      
  addq %r15, %rsp                 #  9     0x68bf5  3      
  movl %r14d, %r14d               #  10    0x68bf8  3      
  movl 0x8(%r15,%r14,1), %ecx     #  11    0x68bfb  5      
  nop                             #  12    0x68c00  1      
  movq %rdi, 0x20(%rsp)           #  13    0x68c01  5      
  testl %ecx, %ecx                #  14    0x68c06  2      
  je .L_68ce0                     #  15    0x68c08  6      
  movl %ebx, %ebx                 #  16    0x68c0e  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  17    0x68c10  6      
  movswl %di, %eax                #  18    0x68c16  3      
  testb $0x8, %al                 #  19    0x68c19  2      
  je .L_694e0                     #  20    0x68c1b  6      
  movl %ebx, %ebx                 #  21    0x68c21  2      
  movl 0x10(%r15,%rbx,1), %edx    #  22    0x68c23  5      
  testl %edx, %edx                #  23    0x68c28  2      
  je .L_694e0                     #  24    0x68c2a  6      
  xchgw %ax, %ax                  #  25    0x68c30  3      
  nop                             #  26    0x68c33  1      
.L_68c40:                         #        0x68c34  0      
  testb $0x2, %al                 #  27    0x68c34  2      
  movl %r14d, %r14d               #  28    0x68c36  3      
  movl (%r15,%r14,1), %r12d       #  29    0x68c39  4      
  je .L_68d20                     #  30    0x68c3d  6      
  xorl %r8d, %r8d                 #  31    0x68c43  3      
  xorl %r13d, %r13d               #  32    0x68c46  3      
  nop                             #  33    0x68c49  1      
.L_68c60:                         #        0x68c4a  0      
  testl %r13d, %r13d              #  34    0x68c4a  3      
  je .L_68e40                     #  35    0x68c4d  6      
  cmpl $0x7ffffc00, %r13d         #  36    0x68c53  7      
  movl $0x7ffffc00, %ecx          #  37    0x68c5a  5      
  movl %ebx, %ebx                 #  38    0x68c5f  2      
  movl 0x24(%r15,%rbx,1), %eax    #  39    0x68c61  5      
  cmovbel %r13d, %ecx             #  40    0x68c66  4      
  movl %r8d, %edx                 #  41    0x68c6a  3      
  movq %r8, (%rsp)                #  42    0x68c6d  4      
  movl %ebx, %ebx                 #  43    0x68c71  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  44    0x68c73  5      
  movl 0x20(%rsp), %edi           #  45    0x68c78  4      
  nop                             #  46    0x68c7c  1      
  andl $0xffffffe0, %eax          #  47    0x68c7d  5      
  addq %r15, %rax                 #  48    0x68c82  3      
  callq %rax                      #  49    0x68c85  2      
  testl %eax, %eax                #  50    0x68c87  2      
  movq (%rsp), %r8                #  51    0x68c89  4      
  jle .L_69180                    #  52    0x68c8d  6      
  movl %r14d, %r14d               #  53    0x68c93  3      
  movl 0x8(%r15,%r14,1), %edx     #  54    0x68c96  5      
  subl %eax, %r13d                #  55    0x68c9b  3      
  leal (%rax,%r8,1), %r8d         #  56    0x68c9e  4      
  subl %eax, %edx                 #  57    0x68ca2  2      
  testl %edx, %edx                #  58    0x68ca4  2      
  nop                             #  59    0x68ca6  1      
  movl %r14d, %r14d               #  60    0x68ca7  3      
  movl %edx, 0x8(%r15,%r14,1)     #  61    0x68caa  5      
  jne .L_68c60                    #  62    0x68caf  6      
  nop                             #  63    0x68cb5  1      
  nop                             #  64    0x68cb6  1      
.L_68ce0:                         #        0x68cb7  0      
  xorl %eax, %eax                 #  65    0x68cb7  2      
  nop                             #  66    0x68cb9  1      
  nop                             #  67    0x68cba  1      
.L_68d00:                         #        0x68cbb  0      
  addl $0x38, %esp                #  68    0x68cbb  3      
  addq %r15, %rsp                 #  69    0x68cbe  3      
  popq %rbx                       #  70    0x68cc1  2      
  popq %r12                       #  71    0x68cc3  3      
  popq %r13                       #  72    0x68cc6  3      
  popq %r14                       #  73    0x68cc9  3      
  popq %r11                       #  74    0x68ccc  3      
  andl $0xffffffe0, %r11d         #  75    0x68ccf  7      
  addq %r15, %r11                 #  76    0x68cd6  3      
  jmpq %r11                       #  77    0x68cd9  3      
  nop                             #  78    0x68cdc  1      
.L_68d20:                         #        0x68cdd  0      
  xorl %r9d, %r9d                 #  79    0x68cdd  3      
  xorl %r13d, %r13d               #  80    0x68ce0  3      
  testb $0x1, %al                 #  81    0x68ce3  2      
  jne .L_691c0                    #  82    0x68ce5  6      
  nop                             #  83    0x68ceb  1      
  nop                             #  84    0x68cec  1      
.L_68d40:                         #        0x68ced  0      
  testl %r13d, %r13d              #  85    0x68ced  3      
  je .L_68e20                     #  86    0x68cf0  6      
  nop                             #  87    0x68cf6  1      
  nop                             #  88    0x68cf7  1      
.L_68d60:                         #        0x68cf8  0      
  movswl %di, %edi                #  89    0x68cf8  3      
  movl %ebx, %ebx                 #  90    0x68cfb  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  91    0x68cfd  5      
  testl $0x200, %edi              #  92    0x68d02  6      
  je .L_68e60                     #  93    0x68d08  6      
  cmpl %r8d, %r13d                #  94    0x68d0e  3      
  movl %r8d, %r10d                #  95    0x68d11  3      
  nop                             #  96    0x68d14  1      
  jae .L_68f00                    #  97    0x68d15  6      
  movl %ebx, %ebx                 #  98    0x68d1b  2      
  movl (%r15,%rbx,1), %edi        #  99    0x68d1d  4      
  movl %r13d, %r8d                #  100   0x68d21  3      
  movl %r13d, %ecx                #  101   0x68d24  3      
  movl %r13d, %r10d               #  102   0x68d27  3      
  nop                             #  103   0x68d2a  1      
.L_68da0:                         #        0x68d2b  0      
  movl %r10d, %edx                #  104   0x68d2b  3      
  movl %r9d, %esi                 #  105   0x68d2e  3      
  movl %ecx, 0x18(%rsp)           #  106   0x68d31  4      
  movl %r8d, (%rsp)               #  107   0x68d35  4      
  movq %r9, 0x10(%rsp)            #  108   0x68d39  5      
  movl %r10d, 0x8(%rsp)           #  109   0x68d3e  5      
  nop                             #  110   0x68d43  1      
  callq .memmove                  #  111   0x68d44  5      
  movl (%rsp), %r8d               #  112   0x68d49  4      
  movl 0x8(%rsp), %r10d           #  113   0x68d4d  5      
  movl %ebx, %ebx                 #  114   0x68d52  2      
  subl %r8d, 0x8(%r15,%rbx,1)     #  115   0x68d54  5      
  movl %ebx, %ebx                 #  116   0x68d59  2      
  addl %r10d, (%r15,%rbx,1)       #  117   0x68d5b  4      
  movl 0x18(%rsp), %ecx           #  118   0x68d5f  4      
  movq 0x10(%rsp), %r9            #  119   0x68d63  5      
  nop                             #  120   0x68d68  1      
.L_68de0:                         #        0x68d69  0      
  movl %r14d, %r14d               #  121   0x68d69  3      
  movl 0x8(%r15,%r14,1), %eax     #  122   0x68d6c  5      
  subl %ecx, %r13d                #  123   0x68d71  3      
  leal (%rcx,%r9,1), %r9d         #  124   0x68d74  4      
  subl %ecx, %eax                 #  125   0x68d78  2      
  testl %eax, %eax                #  126   0x68d7a  2      
  movl %r14d, %r14d               #  127   0x68d7c  3      
  movl %eax, 0x8(%r15,%r14,1)     #  128   0x68d7f  5      
  nop                             #  129   0x68d84  1      
  je .L_68ce0                     #  130   0x68d85  6      
  testl %r13d, %r13d              #  131   0x68d8b  3      
  movl %ebx, %ebx                 #  132   0x68d8e  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  133   0x68d90  6      
  jne .L_68d60                    #  134   0x68d96  6      
  nop                             #  135   0x68d9c  1      
.L_68e20:                         #        0x68d9d  0      
  movl %r12d, %r12d               #  136   0x68d9d  3      
  movl (%r15,%r12,1), %r9d        #  137   0x68da0  4      
  movl %r12d, %r12d               #  138   0x68da4  3      
  movl 0x4(%r15,%r12,1), %r13d    #  139   0x68da7  5      
  addl $0x8, %r12d                #  140   0x68dac  4      
  jmpq .L_68d40                   #  141   0x68db0  5      
  nop                             #  142   0x68db5  1      
.L_68e40:                         #        0x68db6  0      
  movl %r12d, %r12d               #  143   0x68db6  3      
  movl (%r15,%r12,1), %r8d        #  144   0x68db9  4      
  movl %r12d, %r12d               #  145   0x68dbd  3      
  movl 0x4(%r15,%r12,1), %r13d    #  146   0x68dc0  5      
  addl $0x8, %r12d                #  147   0x68dc5  4      
  jmpq .L_68c60                   #  148   0x68dc9  5      
  nop                             #  149   0x68dce  1      
.L_68e60:                         #        0x68dcf  0      
  movl %ebx, %ebx                 #  150   0x68dcf  2      
  movl (%r15,%rbx,1), %edi        #  151   0x68dd1  4      
  movl %ebx, %ebx                 #  152   0x68dd5  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  153   0x68dd7  5      
  jb .L_68e80                     #  154   0x68ddc  6      
  movl %ebx, %ebx                 #  155   0x68de2  2      
  movl 0x14(%r15,%rbx,1), %esi    #  156   0x68de4  5      
  cmpl %esi, %r13d                #  157   0x68de9  3      
  jae .L_69080                    #  158   0x68dec  6      
  nop                             #  159   0x68df2  1      
.L_68e80:                         #        0x68df3  0      
  cmpl %r8d, %r13d                #  160   0x68df3  3      
  movl %r9d, %esi                 #  161   0x68df6  3      
  movq %r9, 0x10(%rsp)            #  162   0x68df9  5      
  cmovbel %r13d, %r8d             #  163   0x68dfe  4      
  movl %r8d, %edx                 #  164   0x68e02  3      
  movl %r8d, (%rsp)               #  165   0x68e05  4      
  nop                             #  166   0x68e09  1      
  callq .memmove                  #  167   0x68e0a  5      
  movl (%rsp), %r8d               #  168   0x68e0f  4      
  movl %ebx, %ebx                 #  169   0x68e13  2      
  movl 0x8(%r15,%rbx,1), %eax     #  170   0x68e15  5      
  movl %ebx, %ebx                 #  171   0x68e1a  2      
  addl %r8d, (%r15,%rbx,1)        #  172   0x68e1c  4      
  movq 0x10(%rsp), %r9            #  173   0x68e20  5      
  subl %r8d, %eax                 #  174   0x68e25  3      
  movl %r8d, %ecx                 #  175   0x68e28  3      
  testl %eax, %eax                #  176   0x68e2b  2      
  xchgw %ax, %ax                  #  177   0x68e2d  3      
  movl %ebx, %ebx                 #  178   0x68e30  2      
  movl %eax, 0x8(%r15,%rbx,1)     #  179   0x68e32  5      
  jne .L_68de0                    #  180   0x68e37  6      
  movl 0x20(%rsp), %edi           #  181   0x68e3d  4      
  movl %ebx, %esi                 #  182   0x68e41  2      
  nop                             #  183   0x68e43  1      
  callq ._fflush_r                #  184   0x68e44  5      
  testl %eax, %eax                #  185   0x68e49  2      
  movl (%rsp), %r8d               #  186   0x68e4b  4      
  movq 0x10(%rsp), %r9            #  187   0x68e4f  5      
  jne .L_69180                    #  188   0x68e54  6      
  movl %r8d, %ecx                 #  189   0x68e5a  3      
  jmpq .L_68de0                   #  190   0x68e5d  5      
  nop                             #  191   0x68e62  1      
.L_68f00:                         #        0x68e63  0      
  testl $0x480, %edi              #  192   0x68e63  6      
  jne .L_68f20                    #  193   0x68e69  6      
  movl %ebx, %ebx                 #  194   0x68e6f  2      
  movl (%r15,%rbx,1), %edi        #  195   0x68e71  4      
  movl %r13d, %ecx                #  196   0x68e75  3      
  jmpq .L_68da0                   #  197   0x68e78  5      
  nop                             #  198   0x68e7d  1      
.L_68f20:                         #        0x68e7e  0      
  movl %ebx, %ebx                 #  199   0x68e7e  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  200   0x68e80  5      
  movl %ebx, %ebx                 #  201   0x68e85  2      
  movl 0x10(%r15,%rbx,1), %eax    #  202   0x68e87  5      
  movl %ebx, %ebx                 #  203   0x68e8c  2      
  movl (%r15,%rbx,1), %r10d       #  204   0x68e8e  4      
  leal (%rcx,%rcx,2), %ecx        #  205   0x68e92  3      
  subl %eax, %r10d                #  206   0x68e95  3      
  movl %ecx, %edx                 #  207   0x68e98  2      
  nop                             #  208   0x68e9a  1      
  leal 0x1(%r13,%r10,1), %esi     #  209   0x68e9b  5      
  shrl $0x1f, %edx                #  210   0x68ea0  3      
  leal (%rdx,%rcx,1), %ecx        #  211   0x68ea3  3      
  sarl $0x1, %ecx                 #  212   0x68ea6  2      
  cmpl %esi, %ecx                 #  213   0x68ea8  2      
  movl %ecx, %edx                 #  214   0x68eaa  2      
  jae .L_68f60                    #  215   0x68eac  6      
  movl %esi, %ecx                 #  216   0x68eb2  2      
  movl %esi, %edx                 #  217   0x68eb4  2      
  nop                             #  218   0x68eb6  1      
.L_68f60:                         #        0x68eb7  0      
  andl $0x400, %edi               #  219   0x68eb7  6      
  je .L_690e0                     #  220   0x68ebd  6      
  movl 0x20(%rsp), %edi           #  221   0x68ec3  4      
  movl %edx, %esi                 #  222   0x68ec7  2      
  movl %ecx, 0x18(%rsp)           #  223   0x68ec9  4      
  movq %r9, 0x10(%rsp)            #  224   0x68ecd  5      
  movl %r10d, 0x8(%rsp)           #  225   0x68ed2  5      
  nop                             #  226   0x68ed7  1      
  nop                             #  227   0x68ed8  1      
  callq ._malloc_r                #  228   0x68ed9  5      
  movl %eax, %r8d                 #  229   0x68ede  3      
  movl 0x18(%rsp), %ecx           #  230   0x68ee1  4      
  movq 0x10(%rsp), %r9            #  231   0x68ee5  5      
  testq %r8, %r8                  #  232   0x68eea  3      
  movl 0x8(%rsp), %r10d           #  233   0x68eed  5      
  je .L_69160                     #  234   0x68ef2  6      
  nop                             #  235   0x68ef8  1      
  movl %ebx, %ebx                 #  236   0x68ef9  2      
  movl 0x10(%r15,%rbx,1), %esi    #  237   0x68efb  5      
  movl %r10d, %edx                #  238   0x68f00  3      
  movl %r8d, %edi                 #  239   0x68f03  3      
  movl %ecx, 0x18(%rsp)           #  240   0x68f06  4      
  movq %r8, (%rsp)                #  241   0x68f0a  4      
  movq %r9, 0x10(%rsp)            #  242   0x68f0e  5      
  movl %r10d, 0x8(%rsp)           #  243   0x68f13  5      
  nop                             #  244   0x68f18  1      
  nop                             #  245   0x68f19  1      
  nop                             #  246   0x68f1a  1      
  callq .memcpy                   #  247   0x68f1b  5      
  movl %ebx, %ebx                 #  248   0x68f20  2      
  movzwl 0xc(%r15,%rbx,1), %eax   #  249   0x68f22  6      
  movl 0x18(%rsp), %ecx           #  250   0x68f28  4      
  movq (%rsp), %r8                #  251   0x68f2c  4      
  movq 0x10(%rsp), %r9            #  252   0x68f30  5      
  movl 0x8(%rsp), %r10d           #  253   0x68f35  5      
  andw $0xfb7f, %ax               #  254   0x68f3a  4      
  orb $0x80, %al                  #  255   0x68f3e  2      
  movl %ebx, %ebx                 #  256   0x68f40  2      
  movw %ax, 0xc(%r15,%rbx,1)      #  257   0x68f42  6      
  nop                             #  258   0x68f48  1      
  nop                             #  259   0x68f49  1      
.L_69040:                         #        0x68f4a  0      
  leal (%r10,%r8,1), %edi         #  260   0x68f4a  4      
  movl %ebx, %ebx                 #  261   0x68f4e  2      
  movl %ecx, 0x14(%r15,%rbx,1)    #  262   0x68f50  5      
  subl %r10d, %ecx                #  263   0x68f55  3      
  movl %ebx, %ebx                 #  264   0x68f58  2      
  movl %r8d, 0x10(%r15,%rbx,1)    #  265   0x68f5a  5      
  movl %ebx, %ebx                 #  266   0x68f5f  2      
  movl %ecx, 0x8(%r15,%rbx,1)     #  267   0x68f61  5      
  movl %r13d, %r8d                #  268   0x68f66  3      
  nop                             #  269   0x68f69  1      
  movl %ebx, %ebx                 #  270   0x68f6a  2      
  movl %edi, (%r15,%rbx,1)        #  271   0x68f6c  4      
  movl %r13d, %ecx                #  272   0x68f70  3      
  movl %r13d, %r10d               #  273   0x68f73  3      
  jmpq .L_68da0                   #  274   0x68f76  5      
  nop                             #  275   0x68f7b  1      
.L_69080:                         #        0x68f7c  0      
  cmpl $0x7fffffff, %r13d         #  276   0x68f7c  7      
  movl $0x7fffffff, %edx          #  277   0x68f83  5      
  movl %ebx, %ebx                 #  278   0x68f88  2      
  movl 0x24(%r15,%rbx,1), %r8d    #  279   0x68f8a  5      
  cmovbel %r13d, %edx             #  280   0x68f8f  4      
  movq %r9, 0x10(%rsp)            #  281   0x68f93  5      
  movl 0x20(%rsp), %edi           #  282   0x68f98  4      
  movl %edx, %eax                 #  283   0x68f9c  2      
  sarl $0x1f, %edx                #  284   0x68f9e  3      
  idivl %esi                      #  285   0x68fa1  2      
  movl %r9d, %edx                 #  286   0x68fa3  3      
  movl %eax, %ecx                 #  287   0x68fa6  2      
  imull %esi, %ecx                #  288   0x68fa8  3      
  movl %ebx, %ebx                 #  289   0x68fab  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  290   0x68fad  5      
  andl $0xffffffe0, %r8d          #  291   0x68fb2  7      
  addq %r15, %r8                  #  292   0x68fb9  3      
  callq %r8                       #  293   0x68fbc  3      
  testl %eax, %eax                #  294   0x68fbf  2      
  movq 0x10(%rsp), %r9            #  295   0x68fc1  5      
  jle .L_69180                    #  296   0x68fc6  6      
  movl %eax, %ecx                 #  297   0x68fcc  2      
  jmpq .L_68de0                   #  298   0x68fce  5      
  nop                             #  299   0x68fd3  1      
.L_690e0:                         #        0x68fd4  0      
  movl 0x20(%rsp), %edi           #  300   0x68fd4  4      
  movl %eax, %esi                 #  301   0x68fd8  2      
  movl %ecx, 0x18(%rsp)           #  302   0x68fda  4      
  movq %r9, 0x10(%rsp)            #  303   0x68fde  5      
  movl %r10d, 0x8(%rsp)           #  304   0x68fe3  5      
  nop                             #  305   0x68fe8  1      
  callq ._realloc_r               #  306   0x68fe9  5      
  movl %eax, %r8d                 #  307   0x68fee  3      
  movl 0x18(%rsp), %ecx           #  308   0x68ff1  4      
  movq 0x10(%rsp), %r9            #  309   0x68ff5  5      
  testq %r8, %r8                  #  310   0x68ffa  3      
  movl 0x8(%rsp), %r10d           #  311   0x68ffd  5      
  jne .L_69040                    #  312   0x69002  6      
  nop                             #  313   0x69008  1      
  movl %ebx, %ebx                 #  314   0x69009  2      
  movl 0x10(%r15,%rbx,1), %esi    #  315   0x6900b  5      
  movl 0x20(%rsp), %edi           #  316   0x69010  4      
  nop                             #  317   0x69014  1      
  nop                             #  318   0x69015  1      
  callq ._free_r                  #  319   0x69016  5      
  movl %ebx, %ebx                 #  320   0x6901b  2      
  andw $0xff7f, 0xc(%r15,%rbx,1)  #  321   0x6901d  8      
  nop                             #  322   0x69025  1      
  nop                             #  323   0x69026  1      
.L_69160:                         #        0x69027  0      
  movq 0x20(%rsp), %rax           #  324   0x69027  5      
  movl %eax, %eax                 #  325   0x6902c  2      
  movl $0xc, (%r15,%rax,1)        #  326   0x6902e  8      
  xchgw %ax, %ax                  #  327   0x69036  3      
  nop                             #  328   0x69039  1      
.L_69180:                         #        0x6903a  0      
  movl %ebx, %ebx                 #  329   0x6903a  2      
  orw $0x40, 0xc(%r15,%rbx,1)     #  330   0x6903c  7      
  addl $0x38, %esp                #  331   0x69043  3      
  addq %r15, %rsp                 #  332   0x69046  3      
  movl $0xffffffff, %eax          #  333   0x69049  5      
  popq %rbx                       #  334   0x6904e  2      
  popq %r12                       #  335   0x69050  3      
  popq %r13                       #  336   0x69053  3      
  popq %r14                       #  337   0x69056  3      
  popq %r11                       #  338   0x69059  3      
  nop                             #  339   0x6905c  1      
  andl $0xffffffe0, %r11d         #  340   0x6905d  7      
  addq %r15, %r11                 #  341   0x69064  3      
  jmpq %r11                       #  342   0x69067  3      
  nop                             #  343   0x6906a  1      
  nop                             #  344   0x6906b  1      
.L_691c0:                         #        0x6906c  0      
  xorl %r11d, %r11d               #  345   0x6906c  3      
  movl $0x0, 0x2c(%rsp)           #  346   0x6906f  8      
  xorl %r10d, %r10d               #  347   0x69077  3      
  nop                             #  348   0x6907a  1      
  nop                             #  349   0x6907b  1      
.L_691e0:                         #        0x6907c  0      
  testl %r13d, %r13d              #  350   0x6907c  3      
  je .L_69320                     #  351   0x6907f  6      
  nop                             #  352   0x69085  1      
  nop                             #  353   0x69086  1      
.L_69200:                         #        0x69087  0      
  movl 0x2c(%rsp), %eax           #  354   0x69087  4      
  testl %eax, %eax                #  355   0x6908b  2      
  je .L_69460                     #  356   0x6908d  6      
  nop                             #  357   0x69093  1      
  nop                             #  358   0x69094  1      
.L_69220:                         #        0x69095  0      
  movl %ebx, %ebx                 #  359   0x69095  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  360   0x69097  5      
  movl %ebx, %ebx                 #  361   0x6909c  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  362   0x6909e  5      
  cmpl %r13d, %r11d               #  363   0x690a3  3      
  movl %r13d, %r9d                #  364   0x690a6  3      
  movl %ebx, %ebx                 #  365   0x690a9  2      
  movl (%r15,%rbx,1), %edi        #  366   0x690ab  4      
  cmovbel %r11d, %r9d             #  367   0x690af  4      
  xchgw %ax, %ax                  #  368   0x690b3  3      
  addl %ecx, %r8d                 #  369   0x690b6  3      
  cmpl %r8d, %r9d                 #  370   0x690b9  3      
  jle .L_69340                    #  371   0x690bc  6      
  movl %ebx, %ebx                 #  372   0x690c2  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  373   0x690c4  5      
  jae .L_69340                    #  374   0x690c9  6      
  movl %r10d, %esi                #  375   0x690cf  3      
  movl %r8d, %edx                 #  376   0x690d2  3      
  nop                             #  377   0x690d5  1      
  movq %r10, 0x8(%rsp)            #  378   0x690d6  5      
  movl %r11d, 0x18(%rsp)          #  379   0x690db  5      
  movl %r8d, (%rsp)               #  380   0x690e0  4      
  nop                             #  381   0x690e4  1      
  callq .memmove                  #  382   0x690e5  5      
  movl (%rsp), %r8d               #  383   0x690ea  4      
  movl %ebx, %ebx                 #  384   0x690ee  2      
  addl %r8d, (%r15,%rbx,1)        #  385   0x690f0  4      
  movl %ebx, %esi                 #  386   0x690f4  2      
  movl 0x20(%rsp), %edi           #  387   0x690f6  4      
  nop                             #  388   0x690fa  1      
  callq ._fflush_r                #  389   0x690fb  5      
  testl %eax, %eax                #  390   0x69100  2      
  movl (%rsp), %r8d               #  391   0x69102  4      
  movq 0x8(%rsp), %r10            #  392   0x69106  5      
  movl 0x18(%rsp), %r11d          #  393   0x6910b  5      
  jne .L_69180                    #  394   0x69110  6      
  nop                             #  395   0x69116  1      
.L_692c0:                         #        0x69117  0      
  subl %r8d, %r11d                #  396   0x69117  3      
  je .L_693a0                     #  397   0x6911a  6      
  nop                             #  398   0x69120  1      
  nop                             #  399   0x69121  1      
.L_692e0:                         #        0x69122  0      
  movl %r14d, %r14d               #  400   0x69122  3      
  movl 0x8(%r15,%r14,1), %eax     #  401   0x69125  5      
  subl %r8d, %r13d                #  402   0x6912a  3      
  leal (%r8,%r10,1), %r10d        #  403   0x6912d  4      
  subl %r8d, %eax                 #  404   0x69131  3      
  testl %eax, %eax                #  405   0x69134  2      
  movl %r14d, %r14d               #  406   0x69136  3      
  movl %eax, 0x8(%r15,%r14,1)     #  407   0x69139  5      
  nop                             #  408   0x6913e  1      
  je .L_68ce0                     #  409   0x6913f  6      
  testl %r13d, %r13d              #  410   0x69145  3      
  jne .L_69200                    #  411   0x69148  6      
  xchgw %ax, %ax                  #  412   0x6914e  3      
  nop                             #  413   0x69151  1      
.L_69320:                         #        0x69152  0      
  movl %r12d, %r12d               #  414   0x69152  3      
  movl (%r15,%r12,1), %r10d       #  415   0x69155  4      
  movl %r12d, %r12d               #  416   0x69159  3      
  movl 0x4(%r15,%r12,1), %r13d    #  417   0x6915c  5      
  addl $0x8, %r12d                #  418   0x69161  4      
  movl $0x0, 0x2c(%rsp)           #  419   0x69165  8      
  jmpq .L_691e0                   #  420   0x6916d  5      
.L_69340:                         #        0x69172  0      
  cmpl %ecx, %r9d                 #  421   0x69172  3      
  jl .L_69400                     #  422   0x69175  6      
  movl %ebx, %ebx                 #  423   0x6917b  2      
  movl 0x24(%r15,%rbx,1), %eax    #  424   0x6917d  5      
  movl %r10d, %edx                #  425   0x69182  3      
  movq %r10, 0x8(%rsp)            #  426   0x69185  5      
  movl %r11d, 0x18(%rsp)          #  427   0x6918a  5      
  nop                             #  428   0x6918f  1      
  movl %ebx, %ebx                 #  429   0x69190  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  430   0x69192  5      
  movl 0x20(%rsp), %edi           #  431   0x69197  4      
  nop                             #  432   0x6919b  1      
  andl $0xffffffe0, %eax          #  433   0x6919c  5      
  addq %r15, %rax                 #  434   0x691a1  3      
  callq %rax                      #  435   0x691a4  2      
  testl %eax, %eax                #  436   0x691a6  2      
  movl %eax, %r8d                 #  437   0x691a8  3      
  movq 0x8(%rsp), %r10            #  438   0x691ab  5      
  movl 0x18(%rsp), %r11d          #  439   0x691b0  5      
  jle .L_69180                    #  440   0x691b5  6      
  subl %r8d, %r11d                #  441   0x691bb  3      
  jne .L_692e0                    #  442   0x691be  6      
  xchgw %ax, %ax                  #  443   0x691c4  3      
.L_693a0:                         #        0x691c7  0      
  movl 0x20(%rsp), %edi           #  444   0x691c7  4      
  movl %ebx, %esi                 #  445   0x691cb  2      
  movl %r8d, (%rsp)               #  446   0x691cd  4      
  movq %r10, 0x8(%rsp)            #  447   0x691d1  5      
  movl %r11d, 0x18(%rsp)          #  448   0x691d6  5      
  nop                             #  449   0x691db  1      
  callq ._fflush_r                #  450   0x691dc  5      
  testl %eax, %eax                #  451   0x691e1  2      
  movl (%rsp), %r8d               #  452   0x691e3  4      
  movq 0x8(%rsp), %r10            #  453   0x691e7  5      
  movl 0x18(%rsp), %r11d          #  454   0x691ec  5      
  jne .L_69180                    #  455   0x691f1  6      
  movl $0x0, 0x2c(%rsp)           #  456   0x691f7  8      
  xchgw %ax, %ax                  #  457   0x691ff  3      
  jmpq .L_692e0                   #  458   0x69202  5      
  nop                             #  459   0x69207  1      
  nop                             #  460   0x69208  1      
.L_69400:                         #        0x69209  0      
  movl %r9d, %edx                 #  461   0x69209  3      
  movl %r10d, %esi                #  462   0x6920c  3      
  movl %r9d, 0x10(%rsp)           #  463   0x6920f  5      
  movq %r10, 0x8(%rsp)            #  464   0x69214  5      
  movl %r11d, 0x18(%rsp)          #  465   0x69219  5      
  nop                             #  466   0x6921e  1      
  callq .memmove                  #  467   0x6921f  5      
  movl 0x10(%rsp), %r9d           #  468   0x69224  5      
  movl 0x18(%rsp), %r11d          #  469   0x69229  5      
  movl %ebx, %ebx                 #  470   0x6922e  2      
  subl %r9d, 0x8(%r15,%rbx,1)     #  471   0x69230  5      
  movl %ebx, %ebx                 #  472   0x69235  2      
  addl %r9d, (%r15,%rbx,1)        #  473   0x69237  4      
  movl %r9d, %r8d                 #  474   0x6923b  3      
  movq 0x8(%rsp), %r10            #  475   0x6923e  5      
  nop                             #  476   0x69243  1      
  jmpq .L_692c0                   #  477   0x69244  5      
  nop                             #  478   0x69249  1      
  nop                             #  479   0x6924a  1      
.L_69460:                         #        0x6924b  0      
  movl %r10d, %edi                #  480   0x6924b  3      
  movl %r13d, %edx                #  481   0x6924e  3      
  movl $0xa, %esi                 #  482   0x69251  5      
  movq %r10, 0x8(%rsp)            #  483   0x69256  5      
  nop                             #  484   0x6925b  1      
  callq .memchr                   #  485   0x6925c  5      
  movl %eax, %r11d                #  486   0x69261  3      
  movq 0x8(%rsp), %r10            #  487   0x69264  5      
  testq %r11, %r11                #  488   0x69269  3      
  je .L_694c0                     #  489   0x6926c  6      
  addl $0x1, %r11d                #  490   0x69272  4      
  movl $0x1, 0x2c(%rsp)           #  491   0x69276  8      
  subl %r10d, %r11d               #  492   0x6927e  3      
  nop                             #  493   0x69281  1      
  jmpq .L_69220                   #  494   0x69282  5      
  nop                             #  495   0x69287  1      
  nop                             #  496   0x69288  1      
.L_694c0:                         #        0x69289  0      
  leal 0x1(%r13), %r11d           #  497   0x69289  4      
  movl $0x1, 0x2c(%rsp)           #  498   0x6928d  8      
  jmpq .L_69220                   #  499   0x69295  5      
  nop                             #  500   0x6929a  1      
.L_694e0:                         #        0x6929b  0      
  movl 0x20(%rsp), %edi           #  501   0x6929b  4      
  movl %ebx, %esi                 #  502   0x6929f  2      
  nop                             #  503   0x692a1  1      
  nop                             #  504   0x692a2  1      
  callq .__swsetup_r              #  505   0x692a3  5      
  movl %eax, %edx                 #  506   0x692a8  2      
  movl $0xffffffff, %eax          #  507   0x692aa  5      
  testl %edx, %edx                #  508   0x692af  2      
  jne .L_68d00                    #  509   0x692b1  6      
  movl %ebx, %ebx                 #  510   0x692b7  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  511   0x692b9  6      
  movswl %di, %eax                #  512   0x692bf  3      
  jmpq .L_68c40                   #  513   0x692c2  5      
  nop                             #  514   0x692c7  1      
                                                           
.size __sfvwrite_r, .-__sfvwrite_r

