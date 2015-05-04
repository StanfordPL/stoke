  .text
  .globl __sfvwrite_r
  .type __sfvwrite_r, @function

#! file-offset 0x68c60
#! rip-offset  0x68c60
#! capacity    2368 bytes

# Text                            #  Line  RIP      Bytes  
.__sfvwrite_r:                    #        0x68c60  0      
  pushq %r14                      #  1     0x68c60  3      
  movl %edx, %r14d                #  2     0x68c63  3      
  movl %edi, %edi                 #  3     0x68c66  2      
  pushq %r13                      #  4     0x68c68  3      
  pushq %r12                      #  5     0x68c6b  3      
  pushq %rbx                      #  6     0x68c6e  2      
  movl %esi, %ebx                 #  7     0x68c70  2      
  subl $0x38, %esp                #  8     0x68c72  3      
  addq %r15, %rsp                 #  9     0x68c75  3      
  movl %r14d, %r14d               #  10    0x68c78  3      
  movl 0x8(%r15,%r14,1), %ecx     #  11    0x68c7b  5      
  nop                             #  12    0x68c80  1      
  movq %rdi, 0x20(%rsp)           #  13    0x68c81  5      
  testl %ecx, %ecx                #  14    0x68c86  2      
  je .L_68d60                     #  15    0x68c88  6      
  movl %ebx, %ebx                 #  16    0x68c8e  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  17    0x68c90  6      
  movswl %di, %eax                #  18    0x68c96  3      
  testb $0x8, %al                 #  19    0x68c99  2      
  je .L_69560                     #  20    0x68c9b  6      
  movl %ebx, %ebx                 #  21    0x68ca1  2      
  movl 0x10(%r15,%rbx,1), %edx    #  22    0x68ca3  5      
  testl %edx, %edx                #  23    0x68ca8  2      
  je .L_69560                     #  24    0x68caa  6      
  xchgw %ax, %ax                  #  25    0x68cb0  3      
  nop                             #  26    0x68cb3  1      
.L_68cc0:                         #        0x68cb4  0      
  testb $0x2, %al                 #  27    0x68cb4  2      
  movl %r14d, %r14d               #  28    0x68cb6  3      
  movl (%r15,%r14,1), %r12d       #  29    0x68cb9  4      
  je .L_68da0                     #  30    0x68cbd  6      
  xorl %r8d, %r8d                 #  31    0x68cc3  3      
  xorl %r13d, %r13d               #  32    0x68cc6  3      
  nop                             #  33    0x68cc9  1      
.L_68ce0:                         #        0x68cca  0      
  testl %r13d, %r13d              #  34    0x68cca  3      
  je .L_68ec0                     #  35    0x68ccd  6      
  cmpl $0x7ffffc00, %r13d         #  36    0x68cd3  7      
  movl $0x7ffffc00, %ecx          #  37    0x68cda  5      
  movl %ebx, %ebx                 #  38    0x68cdf  2      
  movl 0x24(%r15,%rbx,1), %eax    #  39    0x68ce1  5      
  cmovbel %r13d, %ecx             #  40    0x68ce6  4      
  movl %r8d, %edx                 #  41    0x68cea  3      
  movq %r8, (%rsp)                #  42    0x68ced  4      
  movl %ebx, %ebx                 #  43    0x68cf1  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  44    0x68cf3  5      
  movl 0x20(%rsp), %edi           #  45    0x68cf8  4      
  nop                             #  46    0x68cfc  1      
  andl $0xffffffe0, %eax          #  47    0x68cfd  5      
  addq %r15, %rax                 #  48    0x68d02  3      
  callq %rax                      #  49    0x68d05  2      
  testl %eax, %eax                #  50    0x68d07  2      
  movq (%rsp), %r8                #  51    0x68d09  4      
  jle .L_69200                    #  52    0x68d0d  6      
  movl %r14d, %r14d               #  53    0x68d13  3      
  movl 0x8(%r15,%r14,1), %edx     #  54    0x68d16  5      
  subl %eax, %r13d                #  55    0x68d1b  3      
  leal (%rax,%r8,1), %r8d         #  56    0x68d1e  4      
  subl %eax, %edx                 #  57    0x68d22  2      
  testl %edx, %edx                #  58    0x68d24  2      
  nop                             #  59    0x68d26  1      
  movl %r14d, %r14d               #  60    0x68d27  3      
  movl %edx, 0x8(%r15,%r14,1)     #  61    0x68d2a  5      
  jne .L_68ce0                    #  62    0x68d2f  6      
  nop                             #  63    0x68d35  1      
  nop                             #  64    0x68d36  1      
.L_68d60:                         #        0x68d37  0      
  xorl %eax, %eax                 #  65    0x68d37  2      
  nop                             #  66    0x68d39  1      
  nop                             #  67    0x68d3a  1      
.L_68d80:                         #        0x68d3b  0      
  addl $0x38, %esp                #  68    0x68d3b  3      
  addq %r15, %rsp                 #  69    0x68d3e  3      
  popq %rbx                       #  70    0x68d41  2      
  popq %r12                       #  71    0x68d43  3      
  popq %r13                       #  72    0x68d46  3      
  popq %r14                       #  73    0x68d49  3      
  popq %r11                       #  74    0x68d4c  3      
  andl $0xffffffe0, %r11d         #  75    0x68d4f  7      
  addq %r15, %r11                 #  76    0x68d56  3      
  jmpq %r11                       #  77    0x68d59  3      
  nop                             #  78    0x68d5c  1      
.L_68da0:                         #        0x68d5d  0      
  xorl %r9d, %r9d                 #  79    0x68d5d  3      
  xorl %r13d, %r13d               #  80    0x68d60  3      
  testb $0x1, %al                 #  81    0x68d63  2      
  jne .L_69240                    #  82    0x68d65  6      
  nop                             #  83    0x68d6b  1      
  nop                             #  84    0x68d6c  1      
.L_68dc0:                         #        0x68d6d  0      
  testl %r13d, %r13d              #  85    0x68d6d  3      
  je .L_68ea0                     #  86    0x68d70  6      
  nop                             #  87    0x68d76  1      
  nop                             #  88    0x68d77  1      
.L_68de0:                         #        0x68d78  0      
  movswl %di, %edi                #  89    0x68d78  3      
  movl %ebx, %ebx                 #  90    0x68d7b  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  91    0x68d7d  5      
  testl $0x200, %edi              #  92    0x68d82  6      
  je .L_68ee0                     #  93    0x68d88  6      
  cmpl %r8d, %r13d                #  94    0x68d8e  3      
  movl %r8d, %r10d                #  95    0x68d91  3      
  nop                             #  96    0x68d94  1      
  jae .L_68f80                    #  97    0x68d95  6      
  movl %ebx, %ebx                 #  98    0x68d9b  2      
  movl (%r15,%rbx,1), %edi        #  99    0x68d9d  4      
  movl %r13d, %r8d                #  100   0x68da1  3      
  movl %r13d, %ecx                #  101   0x68da4  3      
  movl %r13d, %r10d               #  102   0x68da7  3      
  nop                             #  103   0x68daa  1      
.L_68e20:                         #        0x68dab  0      
  movl %r10d, %edx                #  104   0x68dab  3      
  movl %r9d, %esi                 #  105   0x68dae  3      
  movl %ecx, 0x18(%rsp)           #  106   0x68db1  4      
  movl %r8d, (%rsp)               #  107   0x68db5  4      
  movq %r9, 0x10(%rsp)            #  108   0x68db9  5      
  movl %r10d, 0x8(%rsp)           #  109   0x68dbe  5      
  nop                             #  110   0x68dc3  1      
  callq .memmove                  #  111   0x68dc4  5      
  movl (%rsp), %r8d               #  112   0x68dc9  4      
  movl 0x8(%rsp), %r10d           #  113   0x68dcd  5      
  movl %ebx, %ebx                 #  114   0x68dd2  2      
  subl %r8d, 0x8(%r15,%rbx,1)     #  115   0x68dd4  5      
  movl %ebx, %ebx                 #  116   0x68dd9  2      
  addl %r10d, (%r15,%rbx,1)       #  117   0x68ddb  4      
  movl 0x18(%rsp), %ecx           #  118   0x68ddf  4      
  movq 0x10(%rsp), %r9            #  119   0x68de3  5      
  nop                             #  120   0x68de8  1      
.L_68e60:                         #        0x68de9  0      
  movl %r14d, %r14d               #  121   0x68de9  3      
  movl 0x8(%r15,%r14,1), %eax     #  122   0x68dec  5      
  subl %ecx, %r13d                #  123   0x68df1  3      
  leal (%rcx,%r9,1), %r9d         #  124   0x68df4  4      
  subl %ecx, %eax                 #  125   0x68df8  2      
  testl %eax, %eax                #  126   0x68dfa  2      
  movl %r14d, %r14d               #  127   0x68dfc  3      
  movl %eax, 0x8(%r15,%r14,1)     #  128   0x68dff  5      
  nop                             #  129   0x68e04  1      
  je .L_68d60                     #  130   0x68e05  6      
  testl %r13d, %r13d              #  131   0x68e0b  3      
  movl %ebx, %ebx                 #  132   0x68e0e  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  133   0x68e10  6      
  jne .L_68de0                    #  134   0x68e16  6      
  nop                             #  135   0x68e1c  1      
.L_68ea0:                         #        0x68e1d  0      
  movl %r12d, %r12d               #  136   0x68e1d  3      
  movl (%r15,%r12,1), %r9d        #  137   0x68e20  4      
  movl %r12d, %r12d               #  138   0x68e24  3      
  movl 0x4(%r15,%r12,1), %r13d    #  139   0x68e27  5      
  addl $0x8, %r12d                #  140   0x68e2c  4      
  jmpq .L_68dc0                   #  141   0x68e30  5      
  nop                             #  142   0x68e35  1      
.L_68ec0:                         #        0x68e36  0      
  movl %r12d, %r12d               #  143   0x68e36  3      
  movl (%r15,%r12,1), %r8d        #  144   0x68e39  4      
  movl %r12d, %r12d               #  145   0x68e3d  3      
  movl 0x4(%r15,%r12,1), %r13d    #  146   0x68e40  5      
  addl $0x8, %r12d                #  147   0x68e45  4      
  jmpq .L_68ce0                   #  148   0x68e49  5      
  nop                             #  149   0x68e4e  1      
.L_68ee0:                         #        0x68e4f  0      
  movl %ebx, %ebx                 #  150   0x68e4f  2      
  movl (%r15,%rbx,1), %edi        #  151   0x68e51  4      
  movl %ebx, %ebx                 #  152   0x68e55  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  153   0x68e57  5      
  jb .L_68f00                     #  154   0x68e5c  6      
  movl %ebx, %ebx                 #  155   0x68e62  2      
  movl 0x14(%r15,%rbx,1), %esi    #  156   0x68e64  5      
  cmpl %esi, %r13d                #  157   0x68e69  3      
  jae .L_69100                    #  158   0x68e6c  6      
  nop                             #  159   0x68e72  1      
.L_68f00:                         #        0x68e73  0      
  cmpl %r8d, %r13d                #  160   0x68e73  3      
  movl %r9d, %esi                 #  161   0x68e76  3      
  movq %r9, 0x10(%rsp)            #  162   0x68e79  5      
  cmovbel %r13d, %r8d             #  163   0x68e7e  4      
  movl %r8d, %edx                 #  164   0x68e82  3      
  movl %r8d, (%rsp)               #  165   0x68e85  4      
  nop                             #  166   0x68e89  1      
  callq .memmove                  #  167   0x68e8a  5      
  movl (%rsp), %r8d               #  168   0x68e8f  4      
  movl %ebx, %ebx                 #  169   0x68e93  2      
  movl 0x8(%r15,%rbx,1), %eax     #  170   0x68e95  5      
  movl %ebx, %ebx                 #  171   0x68e9a  2      
  addl %r8d, (%r15,%rbx,1)        #  172   0x68e9c  4      
  movq 0x10(%rsp), %r9            #  173   0x68ea0  5      
  subl %r8d, %eax                 #  174   0x68ea5  3      
  movl %r8d, %ecx                 #  175   0x68ea8  3      
  testl %eax, %eax                #  176   0x68eab  2      
  xchgw %ax, %ax                  #  177   0x68ead  3      
  movl %ebx, %ebx                 #  178   0x68eb0  2      
  movl %eax, 0x8(%r15,%rbx,1)     #  179   0x68eb2  5      
  jne .L_68e60                    #  180   0x68eb7  6      
  movl 0x20(%rsp), %edi           #  181   0x68ebd  4      
  movl %ebx, %esi                 #  182   0x68ec1  2      
  nop                             #  183   0x68ec3  1      
  callq ._fflush_r                #  184   0x68ec4  5      
  testl %eax, %eax                #  185   0x68ec9  2      
  movl (%rsp), %r8d               #  186   0x68ecb  4      
  movq 0x10(%rsp), %r9            #  187   0x68ecf  5      
  jne .L_69200                    #  188   0x68ed4  6      
  movl %r8d, %ecx                 #  189   0x68eda  3      
  jmpq .L_68e60                   #  190   0x68edd  5      
  nop                             #  191   0x68ee2  1      
.L_68f80:                         #        0x68ee3  0      
  testl $0x480, %edi              #  192   0x68ee3  6      
  jne .L_68fa0                    #  193   0x68ee9  6      
  movl %ebx, %ebx                 #  194   0x68eef  2      
  movl (%r15,%rbx,1), %edi        #  195   0x68ef1  4      
  movl %r13d, %ecx                #  196   0x68ef5  3      
  jmpq .L_68e20                   #  197   0x68ef8  5      
  nop                             #  198   0x68efd  1      
.L_68fa0:                         #        0x68efe  0      
  movl %ebx, %ebx                 #  199   0x68efe  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  200   0x68f00  5      
  movl %ebx, %ebx                 #  201   0x68f05  2      
  movl 0x10(%r15,%rbx,1), %eax    #  202   0x68f07  5      
  movl %ebx, %ebx                 #  203   0x68f0c  2      
  movl (%r15,%rbx,1), %r10d       #  204   0x68f0e  4      
  leal (%rcx,%rcx,2), %ecx        #  205   0x68f12  3      
  subl %eax, %r10d                #  206   0x68f15  3      
  movl %ecx, %edx                 #  207   0x68f18  2      
  nop                             #  208   0x68f1a  1      
  leal 0x1(%r13,%r10,1), %esi     #  209   0x68f1b  5      
  shrl $0x1f, %edx                #  210   0x68f20  3      
  leal (%rdx,%rcx,1), %ecx        #  211   0x68f23  3      
  sarl $0x1, %ecx                 #  212   0x68f26  2      
  cmpl %esi, %ecx                 #  213   0x68f28  2      
  movl %ecx, %edx                 #  214   0x68f2a  2      
  jae .L_68fe0                    #  215   0x68f2c  6      
  movl %esi, %ecx                 #  216   0x68f32  2      
  movl %esi, %edx                 #  217   0x68f34  2      
  nop                             #  218   0x68f36  1      
.L_68fe0:                         #        0x68f37  0      
  andl $0x400, %edi               #  219   0x68f37  6      
  je .L_69160                     #  220   0x68f3d  6      
  movl 0x20(%rsp), %edi           #  221   0x68f43  4      
  movl %edx, %esi                 #  222   0x68f47  2      
  movl %ecx, 0x18(%rsp)           #  223   0x68f49  4      
  movq %r9, 0x10(%rsp)            #  224   0x68f4d  5      
  movl %r10d, 0x8(%rsp)           #  225   0x68f52  5      
  nop                             #  226   0x68f57  1      
  nop                             #  227   0x68f58  1      
  callq ._malloc_r                #  228   0x68f59  5      
  movl %eax, %r8d                 #  229   0x68f5e  3      
  movl 0x18(%rsp), %ecx           #  230   0x68f61  4      
  movq 0x10(%rsp), %r9            #  231   0x68f65  5      
  testq %r8, %r8                  #  232   0x68f6a  3      
  movl 0x8(%rsp), %r10d           #  233   0x68f6d  5      
  je .L_691e0                     #  234   0x68f72  6      
  nop                             #  235   0x68f78  1      
  movl %ebx, %ebx                 #  236   0x68f79  2      
  movl 0x10(%r15,%rbx,1), %esi    #  237   0x68f7b  5      
  movl %r10d, %edx                #  238   0x68f80  3      
  movl %r8d, %edi                 #  239   0x68f83  3      
  movl %ecx, 0x18(%rsp)           #  240   0x68f86  4      
  movq %r8, (%rsp)                #  241   0x68f8a  4      
  movq %r9, 0x10(%rsp)            #  242   0x68f8e  5      
  movl %r10d, 0x8(%rsp)           #  243   0x68f93  5      
  nop                             #  244   0x68f98  1      
  nop                             #  245   0x68f99  1      
  nop                             #  246   0x68f9a  1      
  callq .memcpy                   #  247   0x68f9b  5      
  movl %ebx, %ebx                 #  248   0x68fa0  2      
  movzwl 0xc(%r15,%rbx,1), %eax   #  249   0x68fa2  6      
  movl 0x18(%rsp), %ecx           #  250   0x68fa8  4      
  movq (%rsp), %r8                #  251   0x68fac  4      
  movq 0x10(%rsp), %r9            #  252   0x68fb0  5      
  movl 0x8(%rsp), %r10d           #  253   0x68fb5  5      
  andw $0xfb7f, %ax               #  254   0x68fba  4      
  orb $0x80, %al                  #  255   0x68fbe  2      
  movl %ebx, %ebx                 #  256   0x68fc0  2      
  movw %ax, 0xc(%r15,%rbx,1)      #  257   0x68fc2  6      
  nop                             #  258   0x68fc8  1      
  nop                             #  259   0x68fc9  1      
.L_690c0:                         #        0x68fca  0      
  leal (%r10,%r8,1), %edi         #  260   0x68fca  4      
  movl %ebx, %ebx                 #  261   0x68fce  2      
  movl %ecx, 0x14(%r15,%rbx,1)    #  262   0x68fd0  5      
  subl %r10d, %ecx                #  263   0x68fd5  3      
  movl %ebx, %ebx                 #  264   0x68fd8  2      
  movl %r8d, 0x10(%r15,%rbx,1)    #  265   0x68fda  5      
  movl %ebx, %ebx                 #  266   0x68fdf  2      
  movl %ecx, 0x8(%r15,%rbx,1)     #  267   0x68fe1  5      
  movl %r13d, %r8d                #  268   0x68fe6  3      
  nop                             #  269   0x68fe9  1      
  movl %ebx, %ebx                 #  270   0x68fea  2      
  movl %edi, (%r15,%rbx,1)        #  271   0x68fec  4      
  movl %r13d, %ecx                #  272   0x68ff0  3      
  movl %r13d, %r10d               #  273   0x68ff3  3      
  jmpq .L_68e20                   #  274   0x68ff6  5      
  nop                             #  275   0x68ffb  1      
.L_69100:                         #        0x68ffc  0      
  cmpl $0x7fffffff, %r13d         #  276   0x68ffc  7      
  movl $0x7fffffff, %edx          #  277   0x69003  5      
  movl %ebx, %ebx                 #  278   0x69008  2      
  movl 0x24(%r15,%rbx,1), %r8d    #  279   0x6900a  5      
  cmovbel %r13d, %edx             #  280   0x6900f  4      
  movq %r9, 0x10(%rsp)            #  281   0x69013  5      
  movl 0x20(%rsp), %edi           #  282   0x69018  4      
  movl %edx, %eax                 #  283   0x6901c  2      
  sarl $0x1f, %edx                #  284   0x6901e  3      
  idivl %esi                      #  285   0x69021  2      
  movl %r9d, %edx                 #  286   0x69023  3      
  movl %eax, %ecx                 #  287   0x69026  2      
  imull %esi, %ecx                #  288   0x69028  3      
  movl %ebx, %ebx                 #  289   0x6902b  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  290   0x6902d  5      
  andl $0xffffffe0, %r8d          #  291   0x69032  7      
  addq %r15, %r8                  #  292   0x69039  3      
  callq %r8                       #  293   0x6903c  3      
  testl %eax, %eax                #  294   0x6903f  2      
  movq 0x10(%rsp), %r9            #  295   0x69041  5      
  jle .L_69200                    #  296   0x69046  6      
  movl %eax, %ecx                 #  297   0x6904c  2      
  jmpq .L_68e60                   #  298   0x6904e  5      
  nop                             #  299   0x69053  1      
.L_69160:                         #        0x69054  0      
  movl 0x20(%rsp), %edi           #  300   0x69054  4      
  movl %eax, %esi                 #  301   0x69058  2      
  movl %ecx, 0x18(%rsp)           #  302   0x6905a  4      
  movq %r9, 0x10(%rsp)            #  303   0x6905e  5      
  movl %r10d, 0x8(%rsp)           #  304   0x69063  5      
  nop                             #  305   0x69068  1      
  callq ._realloc_r               #  306   0x69069  5      
  movl %eax, %r8d                 #  307   0x6906e  3      
  movl 0x18(%rsp), %ecx           #  308   0x69071  4      
  movq 0x10(%rsp), %r9            #  309   0x69075  5      
  testq %r8, %r8                  #  310   0x6907a  3      
  movl 0x8(%rsp), %r10d           #  311   0x6907d  5      
  jne .L_690c0                    #  312   0x69082  6      
  nop                             #  313   0x69088  1      
  movl %ebx, %ebx                 #  314   0x69089  2      
  movl 0x10(%r15,%rbx,1), %esi    #  315   0x6908b  5      
  movl 0x20(%rsp), %edi           #  316   0x69090  4      
  nop                             #  317   0x69094  1      
  nop                             #  318   0x69095  1      
  callq ._free_r                  #  319   0x69096  5      
  movl %ebx, %ebx                 #  320   0x6909b  2      
  andw $0xff7f, 0xc(%r15,%rbx,1)  #  321   0x6909d  8      
  nop                             #  322   0x690a5  1      
  nop                             #  323   0x690a6  1      
.L_691e0:                         #        0x690a7  0      
  movq 0x20(%rsp), %rax           #  324   0x690a7  5      
  movl %eax, %eax                 #  325   0x690ac  2      
  movl $0xc, (%r15,%rax,1)        #  326   0x690ae  8      
  xchgw %ax, %ax                  #  327   0x690b6  3      
  nop                             #  328   0x690b9  1      
.L_69200:                         #        0x690ba  0      
  movl %ebx, %ebx                 #  329   0x690ba  2      
  orw $0x40, 0xc(%r15,%rbx,1)     #  330   0x690bc  7      
  addl $0x38, %esp                #  331   0x690c3  3      
  addq %r15, %rsp                 #  332   0x690c6  3      
  movl $0xffffffff, %eax          #  333   0x690c9  5      
  popq %rbx                       #  334   0x690ce  2      
  popq %r12                       #  335   0x690d0  3      
  popq %r13                       #  336   0x690d3  3      
  popq %r14                       #  337   0x690d6  3      
  popq %r11                       #  338   0x690d9  3      
  nop                             #  339   0x690dc  1      
  andl $0xffffffe0, %r11d         #  340   0x690dd  7      
  addq %r15, %r11                 #  341   0x690e4  3      
  jmpq %r11                       #  342   0x690e7  3      
  nop                             #  343   0x690ea  1      
  nop                             #  344   0x690eb  1      
.L_69240:                         #        0x690ec  0      
  xorl %r11d, %r11d               #  345   0x690ec  3      
  movl $0x0, 0x2c(%rsp)           #  346   0x690ef  8      
  xorl %r10d, %r10d               #  347   0x690f7  3      
  nop                             #  348   0x690fa  1      
  nop                             #  349   0x690fb  1      
.L_69260:                         #        0x690fc  0      
  testl %r13d, %r13d              #  350   0x690fc  3      
  je .L_693a0                     #  351   0x690ff  6      
  nop                             #  352   0x69105  1      
  nop                             #  353   0x69106  1      
.L_69280:                         #        0x69107  0      
  movl 0x2c(%rsp), %eax           #  354   0x69107  4      
  testl %eax, %eax                #  355   0x6910b  2      
  je .L_694e0                     #  356   0x6910d  6      
  nop                             #  357   0x69113  1      
  nop                             #  358   0x69114  1      
.L_692a0:                         #        0x69115  0      
  movl %ebx, %ebx                 #  359   0x69115  2      
  movl 0x14(%r15,%rbx,1), %ecx    #  360   0x69117  5      
  movl %ebx, %ebx                 #  361   0x6911c  2      
  movl 0x8(%r15,%rbx,1), %r8d     #  362   0x6911e  5      
  cmpl %r13d, %r11d               #  363   0x69123  3      
  movl %r13d, %r9d                #  364   0x69126  3      
  movl %ebx, %ebx                 #  365   0x69129  2      
  movl (%r15,%rbx,1), %edi        #  366   0x6912b  4      
  cmovbel %r11d, %r9d             #  367   0x6912f  4      
  xchgw %ax, %ax                  #  368   0x69133  3      
  addl %ecx, %r8d                 #  369   0x69136  3      
  cmpl %r8d, %r9d                 #  370   0x69139  3      
  jle .L_693c0                    #  371   0x6913c  6      
  movl %ebx, %ebx                 #  372   0x69142  2      
  cmpl %edi, 0x10(%r15,%rbx,1)    #  373   0x69144  5      
  jae .L_693c0                    #  374   0x69149  6      
  movl %r10d, %esi                #  375   0x6914f  3      
  movl %r8d, %edx                 #  376   0x69152  3      
  nop                             #  377   0x69155  1      
  movq %r10, 0x8(%rsp)            #  378   0x69156  5      
  movl %r11d, 0x18(%rsp)          #  379   0x6915b  5      
  movl %r8d, (%rsp)               #  380   0x69160  4      
  nop                             #  381   0x69164  1      
  callq .memmove                  #  382   0x69165  5      
  movl (%rsp), %r8d               #  383   0x6916a  4      
  movl %ebx, %ebx                 #  384   0x6916e  2      
  addl %r8d, (%r15,%rbx,1)        #  385   0x69170  4      
  movl %ebx, %esi                 #  386   0x69174  2      
  movl 0x20(%rsp), %edi           #  387   0x69176  4      
  nop                             #  388   0x6917a  1      
  callq ._fflush_r                #  389   0x6917b  5      
  testl %eax, %eax                #  390   0x69180  2      
  movl (%rsp), %r8d               #  391   0x69182  4      
  movq 0x8(%rsp), %r10            #  392   0x69186  5      
  movl 0x18(%rsp), %r11d          #  393   0x6918b  5      
  jne .L_69200                    #  394   0x69190  6      
  nop                             #  395   0x69196  1      
.L_69340:                         #        0x69197  0      
  subl %r8d, %r11d                #  396   0x69197  3      
  je .L_69420                     #  397   0x6919a  6      
  nop                             #  398   0x691a0  1      
  nop                             #  399   0x691a1  1      
.L_69360:                         #        0x691a2  0      
  movl %r14d, %r14d               #  400   0x691a2  3      
  movl 0x8(%r15,%r14,1), %eax     #  401   0x691a5  5      
  subl %r8d, %r13d                #  402   0x691aa  3      
  leal (%r8,%r10,1), %r10d        #  403   0x691ad  4      
  subl %r8d, %eax                 #  404   0x691b1  3      
  testl %eax, %eax                #  405   0x691b4  2      
  movl %r14d, %r14d               #  406   0x691b6  3      
  movl %eax, 0x8(%r15,%r14,1)     #  407   0x691b9  5      
  nop                             #  408   0x691be  1      
  je .L_68d60                     #  409   0x691bf  6      
  testl %r13d, %r13d              #  410   0x691c5  3      
  jne .L_69280                    #  411   0x691c8  6      
  xchgw %ax, %ax                  #  412   0x691ce  3      
  nop                             #  413   0x691d1  1      
.L_693a0:                         #        0x691d2  0      
  movl %r12d, %r12d               #  414   0x691d2  3      
  movl (%r15,%r12,1), %r10d       #  415   0x691d5  4      
  movl %r12d, %r12d               #  416   0x691d9  3      
  movl 0x4(%r15,%r12,1), %r13d    #  417   0x691dc  5      
  addl $0x8, %r12d                #  418   0x691e1  4      
  movl $0x0, 0x2c(%rsp)           #  419   0x691e5  8      
  jmpq .L_69260                   #  420   0x691ed  5      
.L_693c0:                         #        0x691f2  0      
  cmpl %ecx, %r9d                 #  421   0x691f2  3      
  jl .L_69480                     #  422   0x691f5  6      
  movl %ebx, %ebx                 #  423   0x691fb  2      
  movl 0x24(%r15,%rbx,1), %eax    #  424   0x691fd  5      
  movl %r10d, %edx                #  425   0x69202  3      
  movq %r10, 0x8(%rsp)            #  426   0x69205  5      
  movl %r11d, 0x18(%rsp)          #  427   0x6920a  5      
  nop                             #  428   0x6920f  1      
  movl %ebx, %ebx                 #  429   0x69210  2      
  movl 0x1c(%r15,%rbx,1), %esi    #  430   0x69212  5      
  movl 0x20(%rsp), %edi           #  431   0x69217  4      
  nop                             #  432   0x6921b  1      
  andl $0xffffffe0, %eax          #  433   0x6921c  5      
  addq %r15, %rax                 #  434   0x69221  3      
  callq %rax                      #  435   0x69224  2      
  testl %eax, %eax                #  436   0x69226  2      
  movl %eax, %r8d                 #  437   0x69228  3      
  movq 0x8(%rsp), %r10            #  438   0x6922b  5      
  movl 0x18(%rsp), %r11d          #  439   0x69230  5      
  jle .L_69200                    #  440   0x69235  6      
  subl %r8d, %r11d                #  441   0x6923b  3      
  jne .L_69360                    #  442   0x6923e  6      
  xchgw %ax, %ax                  #  443   0x69244  3      
.L_69420:                         #        0x69247  0      
  movl 0x20(%rsp), %edi           #  444   0x69247  4      
  movl %ebx, %esi                 #  445   0x6924b  2      
  movl %r8d, (%rsp)               #  446   0x6924d  4      
  movq %r10, 0x8(%rsp)            #  447   0x69251  5      
  movl %r11d, 0x18(%rsp)          #  448   0x69256  5      
  nop                             #  449   0x6925b  1      
  callq ._fflush_r                #  450   0x6925c  5      
  testl %eax, %eax                #  451   0x69261  2      
  movl (%rsp), %r8d               #  452   0x69263  4      
  movq 0x8(%rsp), %r10            #  453   0x69267  5      
  movl 0x18(%rsp), %r11d          #  454   0x6926c  5      
  jne .L_69200                    #  455   0x69271  6      
  movl $0x0, 0x2c(%rsp)           #  456   0x69277  8      
  xchgw %ax, %ax                  #  457   0x6927f  3      
  jmpq .L_69360                   #  458   0x69282  5      
  nop                             #  459   0x69287  1      
  nop                             #  460   0x69288  1      
.L_69480:                         #        0x69289  0      
  movl %r9d, %edx                 #  461   0x69289  3      
  movl %r10d, %esi                #  462   0x6928c  3      
  movl %r9d, 0x10(%rsp)           #  463   0x6928f  5      
  movq %r10, 0x8(%rsp)            #  464   0x69294  5      
  movl %r11d, 0x18(%rsp)          #  465   0x69299  5      
  nop                             #  466   0x6929e  1      
  callq .memmove                  #  467   0x6929f  5      
  movl 0x10(%rsp), %r9d           #  468   0x692a4  5      
  movl 0x18(%rsp), %r11d          #  469   0x692a9  5      
  movl %ebx, %ebx                 #  470   0x692ae  2      
  subl %r9d, 0x8(%r15,%rbx,1)     #  471   0x692b0  5      
  movl %ebx, %ebx                 #  472   0x692b5  2      
  addl %r9d, (%r15,%rbx,1)        #  473   0x692b7  4      
  movl %r9d, %r8d                 #  474   0x692bb  3      
  movq 0x8(%rsp), %r10            #  475   0x692be  5      
  nop                             #  476   0x692c3  1      
  jmpq .L_69340                   #  477   0x692c4  5      
  nop                             #  478   0x692c9  1      
  nop                             #  479   0x692ca  1      
.L_694e0:                         #        0x692cb  0      
  movl %r10d, %edi                #  480   0x692cb  3      
  movl %r13d, %edx                #  481   0x692ce  3      
  movl $0xa, %esi                 #  482   0x692d1  5      
  movq %r10, 0x8(%rsp)            #  483   0x692d6  5      
  nop                             #  484   0x692db  1      
  callq .memchr                   #  485   0x692dc  5      
  movl %eax, %r11d                #  486   0x692e1  3      
  movq 0x8(%rsp), %r10            #  487   0x692e4  5      
  testq %r11, %r11                #  488   0x692e9  3      
  je .L_69540                     #  489   0x692ec  6      
  addl $0x1, %r11d                #  490   0x692f2  4      
  movl $0x1, 0x2c(%rsp)           #  491   0x692f6  8      
  subl %r10d, %r11d               #  492   0x692fe  3      
  nop                             #  493   0x69301  1      
  jmpq .L_692a0                   #  494   0x69302  5      
  nop                             #  495   0x69307  1      
  nop                             #  496   0x69308  1      
.L_69540:                         #        0x69309  0      
  leal 0x1(%r13), %r11d           #  497   0x69309  4      
  movl $0x1, 0x2c(%rsp)           #  498   0x6930d  8      
  jmpq .L_692a0                   #  499   0x69315  5      
  nop                             #  500   0x6931a  1      
.L_69560:                         #        0x6931b  0      
  movl 0x20(%rsp), %edi           #  501   0x6931b  4      
  movl %ebx, %esi                 #  502   0x6931f  2      
  nop                             #  503   0x69321  1      
  nop                             #  504   0x69322  1      
  callq .__swsetup_r              #  505   0x69323  5      
  movl %eax, %edx                 #  506   0x69328  2      
  movl $0xffffffff, %eax          #  507   0x6932a  5      
  testl %edx, %edx                #  508   0x6932f  2      
  jne .L_68d80                    #  509   0x69331  6      
  movl %ebx, %ebx                 #  510   0x69337  2      
  movzwl 0xc(%r15,%rbx,1), %edi   #  511   0x69339  6      
  movswl %di, %eax                #  512   0x6933f  3      
  jmpq .L_68cc0                   #  513   0x69342  5      
  nop                             #  514   0x69347  1      
                                                           
.size __sfvwrite_r, .-__sfvwrite_r

