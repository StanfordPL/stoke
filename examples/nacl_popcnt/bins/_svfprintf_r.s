  .text
  .globl _svfprintf_r
  .type _svfprintf_r, @function

#! file-offset 0x6b9c0
#! rip-offset  0x6b9c0
#! capacity    22496 bytes

# Text                                #  Line  RIP      Bytes  
._svfprintf_r:                        #        0x6b9c0  0      
  pushq %r14                          #  1     0x6b9c0  3      
  movl %edi, %r14d                    #  2     0x6b9c3  3      
  movl %esi, %esi                     #  3     0x6b9c6  2      
  movl %ecx, %ecx                     #  4     0x6b9c8  2      
  movl %r14d, %edi                    #  5     0x6b9ca  3      
  pushq %r13                          #  6     0x6b9cd  3      
  pushq %r12                          #  7     0x6b9d0  3      
  pushq %rbx                          #  8     0x6b9d3  2      
  movl %edx, %ebx                     #  9     0x6b9d5  2      
  subl $0x2a8, %esp                   #  10    0x6b9d7  6      
  addq %r15, %rsp                     #  11    0x6b9dd  3      
  nop                                 #  12    0x6b9e0  1      
  movq %rsi, 0xc8(%rsp)               #  13    0x6b9e1  8      
  movq %rcx, 0xe0(%rsp)               #  14    0x6b9e9  8      
  nop                                 #  15    0x6b9f1  1      
  callq ._localeconv_r                #  16    0x6b9f2  5      
  movl %eax, %eax                     #  17    0x6b9f7  2      
  movl %eax, %eax                     #  18    0x6b9f9  2      
  movl (%r15,%rax,1), %eax            #  19    0x6b9fb  4      
  movl %eax, %edi                     #  20    0x6b9ff  2      
  movq %rax, 0x120(%rsp)              #  21    0x6ba01  8      
  nop                                 #  22    0x6ba09  1      
  callq .strlen                       #  23    0x6ba0a  5      
  movl %eax, 0x13c(%rsp)              #  24    0x6ba0f  7      
  leal 0x260(%rsp), %eax              #  25    0x6ba16  7      
  movl $0x8, %edx                     #  26    0x6ba1d  5      
  xorl %esi, %esi                     #  27    0x6ba22  2      
  movl %eax, %edi                     #  28    0x6ba24  2      
  movq %rax, 0x78(%rsp)               #  29    0x6ba26  5      
  nop                                 #  30    0x6ba2b  1      
  nop                                 #  31    0x6ba2c  1      
  nop                                 #  32    0x6ba2d  1      
  callq .memset                       #  33    0x6ba2e  5      
  movq 0xc8(%rsp), %rdx               #  34    0x6ba33  8      
  movl %edx, %edx                     #  35    0x6ba3b  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  36    0x6ba3d  6      
  jns .L_6baa0                        #  37    0x6ba43  6      
  movl %edx, %edx                     #  38    0x6ba49  2      
  movl 0x10(%r15,%rdx,1), %esi        #  39    0x6ba4b  5      
  testl %esi, %esi                    #  40    0x6ba50  2      
  nop                                 #  41    0x6ba52  1      
  je .L_6fca0                         #  42    0x6ba53  6      
  nop                                 #  43    0x6ba59  1      
  nop                                 #  44    0x6ba5a  1      
.L_6baa0:                             #        0x6ba5b  0      
  leal 0x1e0(%rsp), %eax              #  45    0x6ba5b  7      
  leal 0x170(%rsp), %ecx              #  46    0x6ba62  7      
  leal 0x288(%rsp), %edx              #  47    0x6ba69  7      
  movq %rbx, 0xb0(%rsp)               #  48    0x6ba70  8      
  nop                                 #  49    0x6ba78  1      
  leal 0x1e0(%rsp), %ebx              #  50    0x6ba79  7      
  movl $0x0, 0x228(%rsp)              #  51    0x6ba80  11     
  movq %rax, 0x70(%rsp)               #  52    0x6ba8b  5      
  movl %eax, 0x220(%rsp)              #  53    0x6ba90  7      
  xorl %eax, %eax                     #  54    0x6ba97  2      
  movq %rax, 0x130(%rsp)              #  55    0x6ba99  8      
  movq %rcx, 0x68(%rsp)               #  56    0x6baa1  5      
  movl 0x68(%rsp), %eax               #  57    0x6baa6  4      
  movl $0x0, 0x224(%rsp)              #  58    0x6baaa  11     
  nop                                 #  59    0x6bab5  1      
  movl $0x0, 0x118(%rsp)              #  60    0x6bab6  11     
  movq $0x0, 0x148(%rsp)              #  61    0x6bac1  12     
  nop                                 #  62    0x6bacd  1      
  movl $0x0, 0x144(%rsp)              #  63    0x6bace  11     
  movq $0x0, 0xf0(%rsp)               #  64    0x6bad9  12     
  addl $0x64, %eax                    #  65    0x6bae5  3      
  nop                                 #  66    0x6bae8  1      
  movl $0x0, 0x140(%rsp)              #  67    0x6bae9  11     
  movq $0x0, 0x150(%rsp)              #  68    0x6baf4  12     
  movl %eax, %eax                     #  69    0x6bb00  2      
  nop                                 #  70    0x6bb02  1      
  movl $0x0, 0xd0(%rsp)               #  71    0x6bb03  11     
  movq %rdx, 0x60(%rsp)               #  72    0x6bb0e  5      
  movl %eax, %esi                     #  73    0x6bb13  2      
  movq %rax, 0x108(%rsp)              #  74    0x6bb15  8      
  nop                                 #  75    0x6bb1d  1      
  leal 0x2a0(%rsp), %eax              #  76    0x6bb1e  7      
  subl $0x1, %esi                     #  77    0x6bb25  3      
  subl $0x69, %eax                    #  78    0x6bb28  3      
  movq %rsi, 0x158(%rsp)              #  79    0x6bb2b  8      
  movq %rax, 0x168(%rsp)              #  80    0x6bb33  8      
  nop                                 #  81    0x6bb3b  1      
.L_6bba0:                             #        0x6bb3c  0      
  movq 0xb0(%rsp), %r12               #  82    0x6bb3c  8      
  movq %rbx, %r13                     #  83    0x6bb44  3      
  jmpq .L_6bc00                       #  84    0x6bb47  5      
  nop                                 #  85    0x6bb4c  1      
  nop                                 #  86    0x6bb4d  1      
.L_6bbc0:                             #        0x6bb4e  0      
  cmpl $0x25, 0x288(%rsp)             #  87    0x6bb4e  8      
  je .L_6bcc0                         #  88    0x6bb56  6      
  nop                                 #  89    0x6bb5c  1      
  nop                                 #  90    0x6bb5d  1      
.L_6bbe0:                             #        0x6bb5e  0      
  leal (%rax,%r12,1), %r12d           #  91    0x6bb5e  4      
  nop                                 #  92    0x6bb62  1      
  nop                                 #  93    0x6bb63  1      
.L_6bc00:                             #        0x6bb64  0      
  movl 0xffc5056(%rip), %ebx          #  94    0x6bb64  6      
  nop                                 #  95    0x6bb6a  1      
  nop                                 #  96    0x6bb6b  1      
  callq .__locale_charset             #  97    0x6bb6c  5      
  movl %eax, %r8d                     #  98    0x6bb71  3      
  movq %r8, 0x88(%rsp)                #  99    0x6bb74  8      
  nop                                 #  100   0x6bb7c  1      
  nop                                 #  101   0x6bb7d  1      
  callq .__locale_mb_cur_max          #  102   0x6bb7e  5      
  movl 0x78(%rsp), %r9d               #  103   0x6bb83  5      
  movl %eax, %ecx                     #  104   0x6bb88  2      
  movq 0x88(%rsp), %r8                #  105   0x6bb8a  8      
  movl %r12d, %edx                    #  106   0x6bb92  3      
  movl 0x60(%rsp), %esi               #  107   0x6bb95  4      
  movl %r14d, %edi                    #  108   0x6bb99  3      
  nop                                 #  109   0x6bb9c  1      
  nop                                 #  110   0x6bb9d  1      
  nop                                 #  111   0x6bb9e  1      
  andl $0xffffffe0, %ebx              #  112   0x6bb9f  6      
  addq %r15, %rbx                     #  113   0x6bba5  3      
  callq %rbx                          #  114   0x6bba8  2      
  cmpl $0x0, %eax                     #  115   0x6bbaa  3      
  je .L_6bcc0                         #  116   0x6bbad  6      
  jge .L_6bbc0                        #  117   0x6bbb3  6      
  movl 0x78(%rsp), %edi               #  118   0x6bbb9  4      
  movl $0x8, %edx                     #  119   0x6bbbd  5      
  xorl %esi, %esi                     #  120   0x6bbc2  2      
  nop                                 #  121   0x6bbc4  1      
  callq .memset                       #  122   0x6bbc5  5      
  movl $0x1, %eax                     #  123   0x6bbca  5      
  jmpq .L_6bbe0                       #  124   0x6bbcf  5      
  nop                                 #  125   0x6bbd4  1      
  nop                                 #  126   0x6bbd5  1      
.L_6bcc0:                             #        0x6bbd6  0      
  movl %r12d, %ecx                    #  127   0x6bbd6  3      
  subl 0xb0(%rsp), %ecx               #  128   0x6bbd9  7      
  movq %r13, %rbx                     #  129   0x6bbe0  3      
  movl %eax, %r13d                    #  130   0x6bbe3  3      
  je .L_6bd40                         #  131   0x6bbe6  6      
  movl %ebx, %ebx                     #  132   0x6bbec  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  133   0x6bbee  5      
  movl 0x224(%rsp), %eax              #  134   0x6bbf3  7      
  movl 0xb0(%rsp), %edx               #  135   0x6bbfa  7      
  addl %ecx, 0x228(%rsp)              #  136   0x6bc01  7      
  addl $0x1, %eax                     #  137   0x6bc08  3      
  cmpl $0x7, %eax                     #  138   0x6bc0b  3      
  movl %ebx, %ebx                     #  139   0x6bc0e  2      
  movl %edx, (%r15,%rbx,1)            #  140   0x6bc10  4      
  nop                                 #  141   0x6bc14  1      
  movl %eax, 0x224(%rsp)              #  142   0x6bc15  7      
  jg .L_6c6a0                         #  143   0x6bc1c  6      
  addl $0x8, %ebx                     #  144   0x6bc22  3      
  nop                                 #  145   0x6bc25  1      
  nop                                 #  146   0x6bc26  1      
.L_6bd20:                             #        0x6bc27  0      
  addl %ecx, 0xd0(%rsp)               #  147   0x6bc27  7      
  nop                                 #  148   0x6bc2e  1      
  nop                                 #  149   0x6bc2f  1      
.L_6bd40:                             #        0x6bc30  0      
  testl %r13d, %r13d                  #  150   0x6bc30  3      
  je .L_6d260                         #  151   0x6bc33  6      
  addl $0x1, %r12d                    #  152   0x6bc39  4      
  movl $0xffffffff, %r10d             #  153   0x6bc3d  6      
  movb $0x0, 0x29f(%rsp)              #  154   0x6bc43  8      
  xorl %r13d, %r13d                   #  155   0x6bc4b  3      
  xchgw %ax, %ax                      #  156   0x6bc4e  3      
  movl %r12d, %r12d                   #  157   0x6bc51  3      
  movzbl (%r15,%r12,1), %eax          #  158   0x6bc54  5      
  movl %r10d, %edx                    #  159   0x6bc59  3      
  movl $0x0, 0xd4(%rsp)               #  160   0x6bc5c  11     
  nop                                 #  161   0x6bc67  1      
.L_6bd80:                             #        0x6bc68  0      
  movsbl %al, %eax                    #  162   0x6bc68  3      
  addl $0x1, %r12d                    #  163   0x6bc6b  4      
  nop                                 #  164   0x6bc6f  1      
  nop                                 #  165   0x6bc70  1      
.L_6bda0:                             #        0x6bc71  0      
  leal -0x20(%rax), %ecx              #  166   0x6bc71  3      
  cmpl $0x5a, %ecx                    #  167   0x6bc74  3      
  jbe .L_6c500                        #  168   0x6bc77  6      
  nop                                 #  169   0x6bc7d  1      
  nop                                 #  170   0x6bc7e  1      
  testl %eax, %eax                    #  171   0x6bc7f  2      
  movl %eax, 0x100(%rsp)              #  172   0x6bc81  7      
  je .L_6d260                         #  173   0x6bc88  6      
  leal 0x170(%rsp), %ecx              #  174   0x6bc8e  7      
  movb %al, 0x170(%rsp)               #  175   0x6bc95  7      
  nop                                 #  176   0x6bc9c  1      
  movb $0x0, 0x29f(%rsp)              #  177   0x6bc9d  8      
  xorl %eax, %eax                     #  178   0x6bca5  2      
  movl $0x1, 0xb8(%rsp)               #  179   0x6bca7  11     
  nop                                 #  180   0x6bcb2  1      
  movq $0x0, 0xe8(%rsp)               #  181   0x6bcb3  12     
  movl $0x1, 0xc4(%rsp)               #  182   0x6bcbf  11     
  nop                                 #  183   0x6bcca  1      
  movl $0x0, 0x104(%rsp)              #  184   0x6bccb  11     
  movl $0x0, 0x114(%rsp)              #  185   0x6bcd6  11     
  nop                                 #  186   0x6bce1  1      
  movl $0x0, 0x12c(%rsp)              #  187   0x6bce2  11     
  movl $0x0, 0x11c(%rsp)              #  188   0x6bced  11     
  movq %rcx, 0xb0(%rsp)               #  189   0x6bcf8  8      
  xchgw %ax, %ax                      #  190   0x6bd00  3      
.L_6be60:                             #        0x6bd03  0      
  movl 0xb8(%rsp), %edx               #  191   0x6bd03  7      
  movl %r13d, %esi                    #  192   0x6bd0a  3      
  addl $0x2, %edx                     #  193   0x6bd0d  3      
  andl $0x2, %esi                     #  194   0x6bd10  3      
  cmovel 0xb8(%rsp), %edx             #  195   0x6bd13  8      
  movl %esi, 0xd8(%rsp)               #  196   0x6bd1b  7      
  nop                                 #  197   0x6bd22  1      
  movl %edx, 0xb8(%rsp)               #  198   0x6bd23  7      
  movl %r13d, %edx                    #  199   0x6bd2a  3      
  andl $0x84, %edx                    #  200   0x6bd2d  3      
  movl %edx, 0xfc(%rsp)               #  201   0x6bd30  7      
  jne .L_6c000                        #  202   0x6bd37  6      
  nop                                 #  203   0x6bd3d  1      
  movl 0xd4(%rsp), %ecx               #  204   0x6bd3e  7      
  subl 0xb8(%rsp), %ecx               #  205   0x6bd45  7      
  testl %ecx, %ecx                    #  206   0x6bd4c  2      
  jle .L_6c000                        #  207   0x6bd4e  6      
  cmpl $0x10, %ecx                    #  208   0x6bd54  3      
  jle .L_6bfc0                        #  209   0x6bd57  6      
  nop                                 #  210   0x6bd5d  1      
  leal 0x220(%rsp), %esi              #  211   0x6bd5e  7      
  movq %rbx, %rax                     #  212   0x6bd65  3      
  movl %r13d, 0x164(%rsp)             #  213   0x6bd68  8      
  movl %ecx, %ebx                     #  214   0x6bd70  2      
  movq %r12, %r13                     #  215   0x6bd72  3      
  movq 0xc8(%rsp), %r12               #  216   0x6bd75  8      
  nop                                 #  217   0x6bd7d  1      
  movq %rsi, 0x50(%rsp)               #  218   0x6bd7e  5      
  jmpq .L_6bf20                       #  219   0x6bd83  5      
  nop                                 #  220   0x6bd88  1      
  nop                                 #  221   0x6bd89  1      
.L_6bf00:                             #        0x6bd8a  0      
  subl $0x10, %ebx                    #  222   0x6bd8a  3      
  addl $0x8, %eax                     #  223   0x6bd8d  3      
  cmpl $0x10, %ebx                    #  224   0x6bd90  3      
  jle .L_6bfa0                        #  225   0x6bd93  6      
  xchgw %ax, %ax                      #  226   0x6bd99  3      
  nop                                 #  227   0x6bd9c  1      
.L_6bf20:                             #        0x6bd9d  0      
  movl %eax, %eax                     #  228   0x6bd9d  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  229   0x6bd9f  9      
  movl 0x224(%rsp), %edx              #  230   0x6bda8  7      
  addl $0x10, 0x228(%rsp)             #  231   0x6bdaf  8      
  nop                                 #  232   0x6bdb7  1      
  movl %eax, %eax                     #  233   0x6bdb8  2      
  movl $0x10023f10, (%r15,%rax,1)     #  234   0x6bdba  8      
  addl $0x1, %edx                     #  235   0x6bdc2  3      
  cmpl $0x7, %edx                     #  236   0x6bdc5  3      
  movl %edx, 0x224(%rsp)              #  237   0x6bdc8  7      
  jle .L_6bf00                        #  238   0x6bdcf  6      
  movl 0x50(%rsp), %edx               #  239   0x6bdd5  4      
  movl %r12d, %esi                    #  240   0x6bdd9  3      
  movl %r14d, %edi                    #  241   0x6bddc  3      
  nop                                 #  242   0x6bddf  1      
  nop                                 #  243   0x6bde0  1      
  callq .__ssprint_r                  #  244   0x6bde1  5      
  testl %eax, %eax                    #  245   0x6bde6  2      
  jne .L_6d2c0                        #  246   0x6bde8  6      
  subl $0x10, %ebx                    #  247   0x6bdee  3      
  leal 0x1e0(%rsp), %eax              #  248   0x6bdf1  7      
  cmpl $0x10, %ebx                    #  249   0x6bdf8  3      
  jg .L_6bf20                         #  250   0x6bdfb  6      
  nop                                 #  251   0x6be01  1      
.L_6bfa0:                             #        0x6be02  0      
  movq %r13, %r12                     #  252   0x6be02  3      
  movl 0x164(%rsp), %r13d             #  253   0x6be05  8      
  movl %ebx, %ecx                     #  254   0x6be0d  2      
  movq %rax, %rbx                     #  255   0x6be0f  3      
  nop                                 #  256   0x6be12  1      
  nop                                 #  257   0x6be13  1      
.L_6bfc0:                             #        0x6be14  0      
  movl %ebx, %ebx                     #  258   0x6be14  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  259   0x6be16  5      
  movl 0x224(%rsp), %eax              #  260   0x6be1b  7      
  addl %ecx, 0x228(%rsp)              #  261   0x6be22  7      
  movl %ebx, %ebx                     #  262   0x6be29  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  263   0x6be2b  8      
  nop                                 #  264   0x6be33  1      
  addl $0x1, %eax                     #  265   0x6be34  3      
  cmpl $0x7, %eax                     #  266   0x6be37  3      
  movl %eax, 0x224(%rsp)              #  267   0x6be3a  7      
  jg .L_6dd00                         #  268   0x6be41  6      
  movzbl 0x29f(%rsp), %eax            #  269   0x6be47  8      
  addl $0x8, %ebx                     #  270   0x6be4f  3      
  xchgw %ax, %ax                      #  271   0x6be52  3      
.L_6c000:                             #        0x6be55  0      
  testb %al, %al                      #  272   0x6be55  2      
  je .L_6c060                         #  273   0x6be57  6      
  leal 0x29f(%rsp), %eax              #  274   0x6be5d  7      
  movl %ebx, %ebx                     #  275   0x6be64  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  276   0x6be66  9      
  addl $0x1, 0x228(%rsp)              #  277   0x6be6f  8      
  xchgw %ax, %ax                      #  278   0x6be77  3      
  movl %ebx, %ebx                     #  279   0x6be7a  2      
  movl %eax, (%r15,%rbx,1)            #  280   0x6be7c  4      
  movl 0x224(%rsp), %eax              #  281   0x6be80  7      
  addl $0x1, %eax                     #  282   0x6be87  3      
  cmpl $0x7, %eax                     #  283   0x6be8a  3      
  movl %eax, 0x224(%rsp)              #  284   0x6be8d  7      
  jg .L_6da20                         #  285   0x6be94  6      
  addl $0x8, %ebx                     #  286   0x6be9a  3      
  nop                                 #  287   0x6be9d  1      
  nop                                 #  288   0x6be9e  1      
.L_6c060:                             #        0x6be9f  0      
  movl 0xd8(%rsp), %r9d               #  289   0x6be9f  8      
  testl %r9d, %r9d                    #  290   0x6bea7  3      
  je .L_6c0c0                         #  291   0x6beaa  6      
  leal 0x290(%rsp), %eax              #  292   0x6beb0  7      
  movl %ebx, %ebx                     #  293   0x6beb7  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  294   0x6beb9  9      
  nop                                 #  295   0x6bec2  1      
  addl $0x2, 0x228(%rsp)              #  296   0x6bec3  8      
  movl %ebx, %ebx                     #  297   0x6becb  2      
  movl %eax, (%r15,%rbx,1)            #  298   0x6becd  4      
  movl 0x224(%rsp), %eax              #  299   0x6bed1  7      
  addl $0x1, %eax                     #  300   0x6bed8  3      
  cmpl $0x7, %eax                     #  301   0x6bedb  3      
  nop                                 #  302   0x6bede  1      
  movl %eax, 0x224(%rsp)              #  303   0x6bedf  7      
  jg .L_6d9e0                         #  304   0x6bee6  6      
  addl $0x8, %ebx                     #  305   0x6beec  3      
  nop                                 #  306   0x6beef  1      
  nop                                 #  307   0x6bef0  1      
.L_6c0c0:                             #        0x6bef1  0      
  cmpl $0x80, 0xfc(%rsp)              #  308   0x6bef1  8      
  je .L_6d600                         #  309   0x6bef9  6      
  nop                                 #  310   0x6beff  1      
.L_6c0e0:                             #        0x6bf00  0      
  movl 0x104(%rsp), %ecx              #  311   0x6bf00  7      
  subl 0xc4(%rsp), %ecx               #  312   0x6bf07  7      
  testl %ecx, %ecx                    #  313   0x6bf0e  2      
  jle .L_6c240                        #  314   0x6bf10  6      
  cmpl $0x10, %ecx                    #  315   0x6bf16  3      
  jle .L_6c200                        #  316   0x6bf19  6      
  nop                                 #  317   0x6bf1f  1      
  leal 0x220(%rsp), %edx              #  318   0x6bf20  7      
  movq %rbx, %rax                     #  319   0x6bf27  3      
  movl %r13d, 0xd8(%rsp)              #  320   0x6bf2a  8      
  movl %ecx, %ebx                     #  321   0x6bf32  2      
  movq %r12, %r13                     #  322   0x6bf34  3      
  movq 0xc8(%rsp), %r12               #  323   0x6bf37  8      
  nop                                 #  324   0x6bf3f  1      
  movq %rdx, 0x40(%rsp)               #  325   0x6bf40  5      
  jmpq .L_6c160                       #  326   0x6bf45  5      
  nop                                 #  327   0x6bf4a  1      
  nop                                 #  328   0x6bf4b  1      
.L_6c140:                             #        0x6bf4c  0      
  subl $0x10, %ebx                    #  329   0x6bf4c  3      
  addl $0x8, %eax                     #  330   0x6bf4f  3      
  cmpl $0x10, %ebx                    #  331   0x6bf52  3      
  jle .L_6c1e0                        #  332   0x6bf55  6      
  xchgw %ax, %ax                      #  333   0x6bf5b  3      
  nop                                 #  334   0x6bf5e  1      
.L_6c160:                             #        0x6bf5f  0      
  movl %eax, %eax                     #  335   0x6bf5f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  336   0x6bf61  9      
  movl 0x224(%rsp), %edx              #  337   0x6bf6a  7      
  addl $0x10, 0x228(%rsp)             #  338   0x6bf71  8      
  nop                                 #  339   0x6bf79  1      
  movl %eax, %eax                     #  340   0x6bf7a  2      
  movl $0x10023f00, (%r15,%rax,1)     #  341   0x6bf7c  8      
  addl $0x1, %edx                     #  342   0x6bf84  3      
  cmpl $0x7, %edx                     #  343   0x6bf87  3      
  movl %edx, 0x224(%rsp)              #  344   0x6bf8a  7      
  jle .L_6c140                        #  345   0x6bf91  6      
  movl 0x40(%rsp), %edx               #  346   0x6bf97  4      
  movl %r12d, %esi                    #  347   0x6bf9b  3      
  movl %r14d, %edi                    #  348   0x6bf9e  3      
  nop                                 #  349   0x6bfa1  1      
  nop                                 #  350   0x6bfa2  1      
  callq .__ssprint_r                  #  351   0x6bfa3  5      
  testl %eax, %eax                    #  352   0x6bfa8  2      
  jne .L_6d2c0                        #  353   0x6bfaa  6      
  subl $0x10, %ebx                    #  354   0x6bfb0  3      
  leal 0x1e0(%rsp), %eax              #  355   0x6bfb3  7      
  cmpl $0x10, %ebx                    #  356   0x6bfba  3      
  jg .L_6c160                         #  357   0x6bfbd  6      
  nop                                 #  358   0x6bfc3  1      
.L_6c1e0:                             #        0x6bfc4  0      
  movq %r13, %r12                     #  359   0x6bfc4  3      
  movl 0xd8(%rsp), %r13d              #  360   0x6bfc7  8      
  movl %ebx, %ecx                     #  361   0x6bfcf  2      
  movq %rax, %rbx                     #  362   0x6bfd1  3      
  nop                                 #  363   0x6bfd4  1      
  nop                                 #  364   0x6bfd5  1      
.L_6c200:                             #        0x6bfd6  0      
  movl %ebx, %ebx                     #  365   0x6bfd6  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  366   0x6bfd8  5      
  movl 0x224(%rsp), %eax              #  367   0x6bfdd  7      
  addl %ecx, 0x228(%rsp)              #  368   0x6bfe4  7      
  movl %ebx, %ebx                     #  369   0x6bfeb  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  370   0x6bfed  8      
  nop                                 #  371   0x6bff5  1      
  addl $0x1, %eax                     #  372   0x6bff6  3      
  cmpl $0x7, %eax                     #  373   0x6bff9  3      
  movl %eax, 0x224(%rsp)              #  374   0x6bffc  7      
  jg .L_6d9a0                         #  375   0x6c003  6      
  addl $0x8, %ebx                     #  376   0x6c009  3      
  nop                                 #  377   0x6c00c  1      
.L_6c240:                             #        0x6c00d  0      
  testl $0x100, %r13d                 #  378   0x6c00d  7      
  jne .L_6d360                        #  379   0x6c014  6      
  movl 0xc4(%rsp), %esi               #  380   0x6c01a  7      
  movl 0xb0(%rsp), %ecx               #  381   0x6c021  7      
  nop                                 #  382   0x6c028  1      
  movl %ebx, %ebx                     #  383   0x6c029  2      
  movl %esi, 0x4(%r15,%rbx,1)         #  384   0x6c02b  5      
  addl %esi, 0x228(%rsp)              #  385   0x6c030  7      
  movl %ebx, %ebx                     #  386   0x6c037  2      
  movl %ecx, (%r15,%rbx,1)            #  387   0x6c039  4      
  nop                                 #  388   0x6c03d  1      
.L_6c280:                             #        0x6c03e  0      
  movl 0x224(%rsp), %eax              #  389   0x6c03e  7      
  addl $0x1, %eax                     #  390   0x6c045  3      
  cmpl $0x7, %eax                     #  391   0x6c048  3      
  movl %eax, 0x224(%rsp)              #  392   0x6c04b  7      
  jg .L_6d920                         #  393   0x6c052  6      
  addl $0x8, %ebx                     #  394   0x6c058  3      
  nop                                 #  395   0x6c05b  1      
.L_6c2a0:                             #        0x6c05c  0      
  andl $0x4, %r13d                    #  396   0x6c05c  4      
  je .L_6c440                         #  397   0x6c060  6      
  movl 0xd4(%rsp), %r13d              #  398   0x6c066  8      
  subl 0xb8(%rsp), %r13d              #  399   0x6c06e  8      
  testl %r13d, %r13d                  #  400   0x6c076  3      
  nop                                 #  401   0x6c079  1      
  jle .L_6c440                        #  402   0x6c07a  6      
  cmpl $0x10, %r13d                   #  403   0x6c080  4      
  jle .L_6c3c0                        #  404   0x6c084  6      
  leal 0x220(%rsp), %ecx              #  405   0x6c08a  7      
  movq %rbx, %rax                     #  406   0x6c091  3      
  nop                                 #  407   0x6c094  1      
  movq 0xc8(%rsp), %rbx               #  408   0x6c095  8      
  movq %rcx, 0x8(%rsp)                #  409   0x6c09d  5      
  jmpq .L_6c320                       #  410   0x6c0a2  5      
  xchgw %ax, %ax                      #  411   0x6c0a7  3      
  nop                                 #  412   0x6c0aa  1      
.L_6c300:                             #        0x6c0ab  0      
  subl $0x10, %r13d                   #  413   0x6c0ab  4      
  addl $0x8, %eax                     #  414   0x6c0af  3      
  cmpl $0x10, %r13d                   #  415   0x6c0b2  4      
  jle .L_6c3a0                        #  416   0x6c0b6  6      
  nop                                 #  417   0x6c0bc  1      
.L_6c320:                             #        0x6c0bd  0      
  movl %eax, %eax                     #  418   0x6c0bd  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  419   0x6c0bf  9      
  movl 0x224(%rsp), %edx              #  420   0x6c0c8  7      
  addl $0x10, 0x228(%rsp)             #  421   0x6c0cf  8      
  nop                                 #  422   0x6c0d7  1      
  movl %eax, %eax                     #  423   0x6c0d8  2      
  movl $0x10023f10, (%r15,%rax,1)     #  424   0x6c0da  8      
  addl $0x1, %edx                     #  425   0x6c0e2  3      
  cmpl $0x7, %edx                     #  426   0x6c0e5  3      
  movl %edx, 0x224(%rsp)              #  427   0x6c0e8  7      
  jle .L_6c300                        #  428   0x6c0ef  6      
  movl 0x8(%rsp), %edx                #  429   0x6c0f5  4      
  movl %ebx, %esi                     #  430   0x6c0f9  2      
  nop                                 #  431   0x6c0fb  1      
  movl %r14d, %edi                    #  432   0x6c0fc  3      
  nop                                 #  433   0x6c0ff  1      
  nop                                 #  434   0x6c100  1      
  callq .__ssprint_r                  #  435   0x6c101  5      
  testl %eax, %eax                    #  436   0x6c106  2      
  jne .L_6d2c0                        #  437   0x6c108  6      
  subl $0x10, %r13d                   #  438   0x6c10e  4      
  leal 0x1e0(%rsp), %eax              #  439   0x6c112  7      
  cmpl $0x10, %r13d                   #  440   0x6c119  4      
  jg .L_6c320                         #  441   0x6c11d  6      
  nop                                 #  442   0x6c123  1      
.L_6c3a0:                             #        0x6c124  0      
  movq %rax, %rbx                     #  443   0x6c124  3      
  nop                                 #  444   0x6c127  1      
  nop                                 #  445   0x6c128  1      
.L_6c3c0:                             #        0x6c129  0      
  movl %ebx, %ebx                     #  446   0x6c129  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  447   0x6c12b  5      
  movl 0x224(%rsp), %eax              #  448   0x6c130  7      
  addl 0x228(%rsp), %r13d             #  449   0x6c137  8      
  movl %ebx, %ebx                     #  450   0x6c13f  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  451   0x6c141  8      
  addl $0x1, %eax                     #  452   0x6c149  3      
  cmpl $0x7, %eax                     #  453   0x6c14c  3      
  movl %eax, 0x224(%rsp)              #  454   0x6c14f  7      
  movl %r13d, 0x228(%rsp)             #  455   0x6c156  8      
  jle .L_6c460                        #  456   0x6c15e  6      
  movl 0xc8(%rsp), %esi               #  457   0x6c164  7      
  xchgw %ax, %ax                      #  458   0x6c16b  3      
  leal 0x220(%rsp), %edx              #  459   0x6c16e  7      
  movl %r14d, %edi                    #  460   0x6c175  3      
  xchgw %ax, %ax                      #  461   0x6c178  3      
  nop                                 #  462   0x6c17b  1      
  callq .__ssprint_r                  #  463   0x6c17c  5      
  testl %eax, %eax                    #  464   0x6c181  2      
  jne .L_6d2c0                        #  465   0x6c183  6      
  nop                                 #  466   0x6c189  1      
  nop                                 #  467   0x6c18a  1      
.L_6c440:                             #        0x6c18b  0      
  movl 0x228(%rsp), %r13d             #  468   0x6c18b  8      
  nop                                 #  469   0x6c193  1      
  nop                                 #  470   0x6c194  1      
.L_6c460:                             #        0x6c195  0      
  movl 0xd4(%rsp), %ebx               #  471   0x6c195  7      
  cmpl %ebx, 0xb8(%rsp)               #  472   0x6c19c  7      
  movl %ebx, %eax                     #  473   0x6c1a3  2      
  cmovgel 0xb8(%rsp), %eax            #  474   0x6c1a5  8      
  addl %eax, 0xd0(%rsp)               #  475   0x6c1ad  7      
  nop                                 #  476   0x6c1b4  1      
  testl %r13d, %r13d                  #  477   0x6c1b5  3      
  jne .L_6d960                        #  478   0x6c1b8  6      
  nop                                 #  479   0x6c1be  1      
  nop                                 #  480   0x6c1bf  1      
.L_6c4a0:                             #        0x6c1c0  0      
  cmpq $0x0, 0xe8(%rsp)               #  481   0x6c1c0  9      
  movl $0x0, 0x224(%rsp)              #  482   0x6c1c9  11     
  leal 0x1e0(%rsp), %ebx              #  483   0x6c1d4  7      
  nop                                 #  484   0x6c1db  1      
  je .L_6c4e0                         #  485   0x6c1dc  6      
  movl 0xe8(%rsp), %esi               #  486   0x6c1e2  7      
  leal 0x1e0(%rsp), %ebx              #  487   0x6c1e9  7      
  movl %r14d, %edi                    #  488   0x6c1f0  3      
  nop                                 #  489   0x6c1f3  1      
  callq ._free_r                      #  490   0x6c1f4  5      
.L_6c4e0:                             #        0x6c1f9  0      
  movq %r12, 0xb0(%rsp)               #  491   0x6c1f9  8      
  jmpq .L_6bba0                       #  492   0x6c201  5      
  nop                                 #  493   0x6c206  1      
  nop                                 #  494   0x6c207  1      
.L_6c500:                             #        0x6c208  0      
  movl %ecx, %ecx                     #  495   0x6c208  2      
  movl %ecx, %ecx                     #  496   0x6c20a  2      
  movq 0x10023c20(%r15,%rcx,8), %rcx  #  497   0x6c20c  8      
  andl $0xffffffe0, %ecx              #  498   0x6c214  6      
  addq %r15, %rcx                     #  499   0x6c21a  3      
  jmpq %rcx                           #  500   0x6c21d  2      
  nop                                 #  501   0x6c21f  1      
  movl %r14d, %edi                    #  502   0x6c220  3      
  movl %edx, 0xa8(%rsp)               #  503   0x6c223  7      
  movl %r10d, 0x90(%rsp)              #  504   0x6c22a  8      
  nop                                 #  505   0x6c232  1      
  callq ._localeconv_r                #  506   0x6c233  5      
  movl %eax, %eax                     #  507   0x6c238  2      
  movl %eax, %eax                     #  508   0x6c23a  2      
  movl 0x4(%r15,%rax,1), %eax         #  509   0x6c23c  5      
  movl %eax, %edi                     #  510   0x6c241  2      
  movq %rax, 0x150(%rsp)              #  511   0x6c243  8      
  nop                                 #  512   0x6c24b  1      
  callq .strlen                       #  513   0x6c24c  5      
  movl %r14d, %edi                    #  514   0x6c251  3      
  movl %eax, 0x140(%rsp)              #  515   0x6c254  7      
  xchgw %ax, %ax                      #  516   0x6c25b  3      
  nop                                 #  517   0x6c25e  1      
  callq ._localeconv_r                #  518   0x6c25f  5      
  movl %eax, %eax                     #  519   0x6c264  2      
  movl 0x140(%rsp), %ecx              #  520   0x6c266  7      
  movl 0xa8(%rsp), %edx               #  521   0x6c26d  7      
  movl %eax, %eax                     #  522   0x6c274  2      
  movl 0x8(%r15,%rax,1), %eax         #  523   0x6c276  5      
  movl 0x90(%rsp), %r10d              #  524   0x6c27b  8      
  nop                                 #  525   0x6c283  1      
  testl %ecx, %ecx                    #  526   0x6c284  2      
  movq %rax, 0xf0(%rsp)               #  527   0x6c286  8      
  je .L_6c5e0                         #  528   0x6c28e  6      
  testq %rax, %rax                    #  529   0x6c294  3      
  je .L_6c5e0                         #  530   0x6c297  6      
  movq 0xf0(%rsp), %rcx               #  531   0x6c29d  8      
  movl %ecx, %ecx                     #  532   0x6c2a5  2      
  cmpb $0x0, (%r15,%rcx,1)            #  533   0x6c2a7  5      
  jne .L_6f980                        #  534   0x6c2ac  6      
  nop                                 #  535   0x6c2b2  1      
  nop                                 #  536   0x6c2b3  1      
.L_6c5e0:                             #        0x6c2b4  0      
  movl %r12d, %r12d                   #  537   0x6c2b4  3      
  movzbl (%r15,%r12,1), %eax          #  538   0x6c2b7  5      
  jmpq .L_6bd80                       #  539   0x6c2bc  5      
  nop                                 #  540   0x6c2c1  1      
  nop                                 #  541   0x6c2c2  1      
  orl $0x20, %r13d                    #  542   0x6c2c3  4      
  movl %r12d, %r12d                   #  543   0x6c2c7  3      
  movzbl (%r15,%r12,1), %eax          #  544   0x6c2ca  5      
  jmpq .L_6bd80                       #  545   0x6c2cf  5      
  nop                                 #  546   0x6c2d4  1      
  movq 0xe0(%rsp), %rsi               #  547   0x6c2d5  8      
  movl %esi, %esi                     #  548   0x6c2dd  2      
  movl (%r15,%rsi,1), %eax            #  549   0x6c2df  4      
  cmpl $0x2f, %eax                    #  550   0x6c2e3  3      
  ja .L_6f1e0                         #  551   0x6c2e6  6      
  movl %esi, %esi                     #  552   0x6c2ec  2      
  movl 0xc(%r15,%rsi,1), %ecx         #  553   0x6c2ee  5      
  addl %eax, %ecx                     #  554   0x6c2f3  2      
  addl $0x8, %eax                     #  555   0x6c2f5  3      
  movl %esi, %esi                     #  556   0x6c2f8  2      
  movl %eax, (%r15,%rsi,1)            #  557   0x6c2fa  4      
  nop                                 #  558   0x6c2fe  1      
  nop                                 #  559   0x6c2ff  1      
.L_6c660:                             #        0x6c300  0      
  movl %ecx, %ecx                     #  560   0x6c300  2      
  movl (%r15,%rcx,1), %ecx            #  561   0x6c302  4      
  testl %ecx, %ecx                    #  562   0x6c306  2      
  movl %ecx, 0xd4(%rsp)               #  563   0x6c308  7      
  jns .L_6c5e0                        #  564   0x6c30f  6      
  negl 0xd4(%rsp)                     #  565   0x6c315  7      
  nop                                 #  566   0x6c31c  1      
  orl $0x4, %r13d                     #  567   0x6c31d  4      
  movl %r12d, %r12d                   #  568   0x6c321  3      
  movzbl (%r15,%r12,1), %eax          #  569   0x6c324  5      
  jmpq .L_6bd80                       #  570   0x6c329  5      
  nop                                 #  571   0x6c32e  1      
.L_6c6a0:                             #        0x6c32f  0      
  movl 0xc8(%rsp), %esi               #  572   0x6c32f  7      
  leal 0x220(%rsp), %edx              #  573   0x6c336  7      
  movl %r14d, %edi                    #  574   0x6c33d  3      
  movl %ecx, 0x98(%rsp)               #  575   0x6c340  7      
  nop                                 #  576   0x6c347  1      
  callq .__ssprint_r                  #  577   0x6c348  5      
  testl %eax, %eax                    #  578   0x6c34d  2      
  movl 0x98(%rsp), %ecx               #  579   0x6c34f  7      
  jne .L_6fe20                        #  580   0x6c356  6      
  leal 0x1e0(%rsp), %ebx              #  581   0x6c35c  7      
  jmpq .L_6bd20                       #  582   0x6c363  5      
  nop                                 #  583   0x6c368  1      
  movl %r12d, %r12d                   #  584   0x6c369  3      
  movzbl (%r15,%r12,1), %eax          #  585   0x6c36c  5      
  cmpb $0x6c, %al                     #  586   0x6c371  2      
  je .L_6f920                         #  587   0x6c373  6      
  orl $0x10, %r13d                    #  588   0x6c379  4      
  jmpq .L_6bd80                       #  589   0x6c37d  5      
  nop                                 #  590   0x6c382  1      
  testb $0x20, %r13b                  #  591   0x6c383  4      
  je .L_6f0c0                         #  592   0x6c387  6      
  movq 0xe0(%rsp), %rcx               #  593   0x6c38d  8      
  movl %ecx, %ecx                     #  594   0x6c395  2      
  movl (%r15,%rcx,1), %eax            #  595   0x6c397  4      
  cmpl $0x2f, %eax                    #  596   0x6c39b  3      
  nop                                 #  597   0x6c39e  1      
  ja .L_6fba0                         #  598   0x6c39f  6      
  movl %ecx, %ecx                     #  599   0x6c3a5  2      
  movl 0xc(%r15,%rcx,1), %edx         #  600   0x6c3a7  5      
  addl %eax, %edx                     #  601   0x6c3ac  2      
  addl $0x8, %eax                     #  602   0x6c3ae  3      
  movl %ecx, %ecx                     #  603   0x6c3b1  2      
  movl %eax, (%r15,%rcx,1)            #  604   0x6c3b3  4      
  nop                                 #  605   0x6c3b7  1      
.L_6c740:                             #        0x6c3b8  0      
  movl %edx, %edx                     #  606   0x6c3b8  2      
  movl (%r15,%rdx,1), %eax            #  607   0x6c3ba  4      
  movslq 0xd0(%rsp), %rdx             #  608   0x6c3be  8      
  movl %eax, %eax                     #  609   0x6c3c6  2      
  movq %rdx, (%r15,%rax,1)            #  610   0x6c3c8  4      
  jmpq .L_6c4e0                       #  611   0x6c3cc  5      
  nop                                 #  612   0x6c3d1  1      
  testb $0x20, %r13b                  #  613   0x6c3d2  4      
  movl %eax, 0x100(%rsp)              #  614   0x6c3d6  7      
  movq $0x10023c01, 0x148(%rsp)       #  615   0x6c3dd  12     
  je .L_6cda0                         #  616   0x6c3e9  6      
  nop                                 #  617   0x6c3ef  1      
.L_6c780:                             #        0x6c3f0  0      
  movq 0xe0(%rsp), %rdx               #  618   0x6c3f0  8      
  movl %edx, %edx                     #  619   0x6c3f8  2      
  movl (%r15,%rdx,1), %eax            #  620   0x6c3fa  4      
  cmpl $0x2f, %eax                    #  621   0x6c3fe  3      
  ja .L_6f140                         #  622   0x6c401  6      
  movq %rdx, %rcx                     #  623   0x6c407  3      
  nop                                 #  624   0x6c40a  1      
  movl %edx, %edx                     #  625   0x6c40b  2      
  movl 0xc(%r15,%rdx,1), %edx         #  626   0x6c40d  5      
  addl %eax, %edx                     #  627   0x6c412  2      
  addl $0x8, %eax                     #  628   0x6c414  3      
  movl %ecx, %ecx                     #  629   0x6c417  2      
  movl %eax, (%r15,%rcx,1)            #  630   0x6c419  4      
  nop                                 #  631   0x6c41d  1      
.L_6c7c0:                             #        0x6c41e  0      
  movl %edx, %edx                     #  632   0x6c41e  2      
  movq (%r15,%rdx,1), %rcx            #  633   0x6c420  4      
  nop                                 #  634   0x6c424  1      
  nop                                 #  635   0x6c425  1      
.L_6c7e0:                             #        0x6c426  0      
  testq %rcx, %rcx                    #  636   0x6c426  3      
  setne %sil                          #  637   0x6c429  4      
  je .L_6c820                         #  638   0x6c42d  6      
  testb $0x1, %r13b                   #  639   0x6c433  4      
  je .L_6c820                         #  640   0x6c437  6      
  movzbl 0x100(%rsp), %eax            #  641   0x6c43d  8      
  movb $0x30, 0x290(%rsp)             #  642   0x6c445  8      
  nop                                 #  643   0x6c44d  1      
  orl $0x2, %r13d                     #  644   0x6c44e  4      
  movb %al, 0x291(%rsp)               #  645   0x6c452  7      
  nop                                 #  646   0x6c459  1      
  nop                                 #  647   0x6c45a  1      
.L_6c820:                             #        0x6c45b  0      
  andl $0xfffffbff, %r13d             #  648   0x6c45b  7      
  movl $0x2, %eax                     #  649   0x6c462  5      
  nop                                 #  650   0x6c467  1      
  nop                                 #  651   0x6c468  1      
.L_6c840:                             #        0x6c469  0      
  movb $0x0, 0x29f(%rsp)              #  652   0x6c469  8      
  nop                                 #  653   0x6c471  1      
  nop                                 #  654   0x6c472  1      
.L_6c860:                             #        0x6c473  0      
  movl %r13d, %edx                    #  655   0x6c473  3      
  andb $0x7f, %dl                     #  656   0x6c476  3      
  testl %r10d, %r10d                  #  657   0x6c479  3      
  cmovnsl %edx, %r13d                 #  658   0x6c47c  4      
  testl %r10d, %r10d                  #  659   0x6c480  3      
  jne .L_6c880                        #  660   0x6c483  6      
  testb %sil, %sil                    #  661   0x6c489  3      
  je .L_6d580                         #  662   0x6c48c  6      
  nop                                 #  663   0x6c492  1      
.L_6c880:                             #        0x6c493  0      
  cmpl $0x1, %eax                     #  664   0x6c493  3      
  je .L_6dc40                         #  665   0x6c496  6      
  cmpl $0x2, %eax                     #  666   0x6c49c  3      
  je .L_6dc80                         #  667   0x6c49f  6      
  movq 0x108(%rsp), %rdx              #  668   0x6c4a5  8      
  nop                                 #  669   0x6c4ad  1      
  movq %rdx, 0xb0(%rsp)               #  670   0x6c4ae  8      
  nop                                 #  671   0x6c4b6  1      
  nop                                 #  672   0x6c4b7  1      
.L_6c8c0:                             #        0x6c4b8  0      
  movl %ecx, %eax                     #  673   0x6c4b8  2      
  shrq $0x3, %rcx                     #  674   0x6c4ba  4      
  subl $0x1, %edx                     #  675   0x6c4be  3      
  andl $0x7, %eax                     #  676   0x6c4c1  3      
  addl $0x30, %eax                    #  677   0x6c4c4  3      
  testq %rcx, %rcx                    #  678   0x6c4c7  3      
  movl %edx, %edx                     #  679   0x6c4ca  2      
  movb %al, (%r15,%rdx,1)             #  680   0x6c4cc  4      
  jne .L_6c8c0                        #  681   0x6c4d0  6      
  testb $0x1, %r13b                   #  682   0x6c4d6  4      
  xchgw %ax, %ax                      #  683   0x6c4da  3      
  movq %rdx, 0xb0(%rsp)               #  684   0x6c4dd  8      
  jne .L_6eaa0                        #  685   0x6c4e5  6      
  movl 0x108(%rsp), %ecx              #  686   0x6c4eb  7      
  movq 0xf0(%rsp), %rsi               #  687   0x6c4f2  8      
  subl %edx, %ecx                     #  688   0x6c4fa  2      
  nop                                 #  689   0x6c4fc  1      
  movl %ecx, 0xc4(%rsp)               #  690   0x6c4fd  7      
  nop                                 #  691   0x6c504  1      
  nop                                 #  692   0x6c505  1      
.L_6c920:                             #        0x6c506  0      
  cmpl %r10d, 0xc4(%rsp)              #  693   0x6c506  8      
  movl 0xc4(%rsp), %edx               #  694   0x6c50e  7      
  movzbl 0x29f(%rsp), %eax            #  695   0x6c515  8      
  movl %r10d, 0x104(%rsp)             #  696   0x6c51d  8      
  nop                                 #  697   0x6c525  1      
  movq %rsi, 0xf0(%rsp)               #  698   0x6c526  8      
  movq $0x0, 0xe8(%rsp)               #  699   0x6c52e  12     
  movl $0x0, 0x114(%rsp)              #  700   0x6c53a  11     
  nop                                 #  701   0x6c545  1      
  movl $0x0, 0x12c(%rsp)              #  702   0x6c546  11     
  cmovll %r10d, %edx                  #  703   0x6c551  4      
  movl $0x0, 0x11c(%rsp)              #  704   0x6c555  11     
  nop                                 #  705   0x6c560  1      
  movl %edx, 0xb8(%rsp)               #  706   0x6c561  7      
  nop                                 #  707   0x6c568  1      
  nop                                 #  708   0x6c569  1      
.L_6c9a0:                             #        0x6c56a  0      
  testb %al, %al                      #  709   0x6c56a  2      
  je .L_6be60                         #  710   0x6c56c  6      
  nop                                 #  711   0x6c572  1      
  nop                                 #  712   0x6c573  1      
.L_6c9c0:                             #        0x6c574  0      
  addl $0x1, 0xb8(%rsp)               #  713   0x6c574  8      
  jmpq .L_6be60                       #  714   0x6c57c  5      
  nop                                 #  715   0x6c581  1      
  nop                                 #  716   0x6c582  1      
  movq 0xe0(%rsp), %rdx               #  717   0x6c583  8      
  movl %edx, %edx                     #  718   0x6c58b  2      
  movl (%r15,%rdx,1), %eax            #  719   0x6c58d  4      
  cmpl $0x2f, %eax                    #  720   0x6c591  3      
  ja .L_6eb40                         #  721   0x6c594  6      
  movq %rdx, %rcx                     #  722   0x6c59a  3      
  nop                                 #  723   0x6c59d  1      
  movl %edx, %edx                     #  724   0x6c59e  2      
  movl 0xc(%r15,%rdx,1), %edx         #  725   0x6c5a0  5      
  addl %eax, %edx                     #  726   0x6c5a5  2      
  addl $0x8, %eax                     #  727   0x6c5a7  3      
  movl %ecx, %ecx                     #  728   0x6c5aa  2      
  movl %eax, (%r15,%rcx,1)            #  729   0x6c5ac  4      
  nop                                 #  730   0x6c5b0  1      
.L_6ca20:                             #        0x6c5b1  0      
  movl %edx, %edx                     #  731   0x6c5b1  2      
  movl (%r15,%rdx,1), %ecx            #  732   0x6c5b3  4      
  orl $0x2, %r13d                     #  733   0x6c5b7  4      
  movb $0x30, 0x290(%rsp)             #  734   0x6c5bb  8      
  movb $0x78, 0x291(%rsp)             #  735   0x6c5c3  8      
  nop                                 #  736   0x6c5cb  1      
  movq $0x10023c01, 0x148(%rsp)       #  737   0x6c5cc  12     
  movl $0x2, %eax                     #  738   0x6c5d8  5      
  movl $0x78, 0x100(%rsp)             #  739   0x6c5dd  11     
  testq %rcx, %rcx                    #  740   0x6c5e8  3      
  nop                                 #  741   0x6c5eb  1      
  setne %sil                          #  742   0x6c5ec  4      
  jmpq .L_6c840                       #  743   0x6c5f0  5      
  nop                                 #  744   0x6c5f5  1      
  nop                                 #  745   0x6c5f6  1      
  orl $0x1, %r13d                     #  746   0x6c5f7  4      
  movl %r12d, %r12d                   #  747   0x6c5fb  3      
  movzbl (%r15,%r12,1), %eax          #  748   0x6c5fe  5      
  jmpq .L_6bd80                       #  749   0x6c603  5      
  nop                                 #  750   0x6c608  1      
  cmpb $0x0, 0x29f(%rsp)              #  751   0x6c609  8      
  jne .L_6c5e0                        #  752   0x6c611  6      
  movb $0x20, 0x29f(%rsp)             #  753   0x6c617  8      
  movl %r12d, %r12d                   #  754   0x6c61f  3      
  movzbl (%r15,%r12,1), %eax          #  755   0x6c622  5      
  xchgw %ax, %ax                      #  756   0x6c627  3      
  jmpq .L_6bd80                       #  757   0x6c62a  5      
  nop                                 #  758   0x6c62f  1      
  nop                                 #  759   0x6c630  1      
  movq 0xe0(%rsp), %rdx               #  760   0x6c631  8      
  movl %eax, 0x100(%rsp)              #  761   0x6c639  7      
  movl %edx, %edx                     #  762   0x6c640  2      
  movl 0x4(%r15,%rdx,1), %eax         #  763   0x6c642  5      
  cmpl $0xaf, %eax                    #  764   0x6c647  3      
  nop                                 #  765   0x6c64a  1      
  ja .L_6f620                         #  766   0x6c64b  6      
  movq %rdx, %rcx                     #  767   0x6c651  3      
  movl %edx, %edx                     #  768   0x6c654  2      
  movl 0xc(%r15,%rdx,1), %edx         #  769   0x6c656  5      
  addl %eax, %edx                     #  770   0x6c65b  2      
  addl $0x10, %eax                    #  771   0x6c65d  3      
  movl %ecx, %ecx                     #  772   0x6c660  2      
  movl %eax, 0x4(%r15,%rcx,1)         #  773   0x6c662  5      
  nop                                 #  774   0x6c667  1      
.L_6cb20:                             #        0x6c668  0      
  movl %edx, %edx                     #  775   0x6c668  2      
  movsd (%r15,%rdx,1), %xmm0          #  776   0x6c66a  6      
  movl %r10d, 0x90(%rsp)              #  777   0x6c670  8      
  movsd %xmm0, 0x130(%rsp)            #  778   0x6c678  9      
  nop                                 #  779   0x6c681  1      
  movsd %xmm0, 0xb8(%rsp)             #  780   0x6c682  9      
  movsd 0x130(%rsp), %xmm0            #  781   0x6c68b  9      
  nop                                 #  782   0x6c694  1      
  callq .__fpclassifyd                #  783   0x6c695  5      
  cmpl $0x1, %eax                     #  784   0x6c69a  3      
  movl 0x90(%rsp), %r10d              #  785   0x6c69d  8      
  jne .L_6ec20                        #  786   0x6c6a5  6      
  movsd 0x130(%rsp), %xmm1            #  787   0x6c6ab  9      
  nop                                 #  788   0x6c6b4  1      
  ucomisd 0xffb7863(%rip), %xmm1      #  789   0x6c6b5  8      
  jb .L_6fc20                         #  790   0x6c6bd  6      
  nop                                 #  791   0x6c6c3  1      
  nop                                 #  792   0x6c6c4  1      
.L_6cba0:                             #        0x6c6c5  0      
  cmpl $0x47, 0x100(%rsp)             #  793   0x6c6c5  8      
  movq $0x10023bf1, 0xb0(%rsp)        #  794   0x6c6cd  12     
  movl $0x10023bf5, %eax              #  795   0x6c6d9  5      
  nop                                 #  796   0x6c6de  1      
.L_6cbc0:                             #        0x6c6df  0      
  cmovleq 0xb0(%rsp), %rax            #  797   0x6c6df  9      
  movl $0x3, 0xb8(%rsp)               #  798   0x6c6e8  11     
  andb $0x7f, %r13b                   #  799   0x6c6f3  4      
  nop                                 #  800   0x6c6f7  1      
  movq $0x0, 0xe8(%rsp)               #  801   0x6c6f8  12     
  movl $0x3, 0xc4(%rsp)               #  802   0x6c704  11     
  nop                                 #  803   0x6c70f  1      
  movl $0x0, 0x104(%rsp)              #  804   0x6c710  11     
  movl $0x0, 0x114(%rsp)              #  805   0x6c71b  11     
  nop                                 #  806   0x6c726  1      
  movl $0x0, 0x12c(%rsp)              #  807   0x6c727  11     
  movl $0x0, 0x11c(%rsp)              #  808   0x6c732  11     
  movq %rax, 0xb0(%rsp)               #  809   0x6c73d  8      
  xchgw %ax, %ax                      #  810   0x6c745  3      
  movzbl 0x29f(%rsp), %eax            #  811   0x6c748  8      
  jmpq .L_6c9a0                       #  812   0x6c750  5      
  nop                                 #  813   0x6c755  1      
  nop                                 #  814   0x6c756  1      
  cmpl $0x43, %eax                    #  815   0x6c757  3      
  movl %eax, 0x100(%rsp)              #  816   0x6c75a  7      
  je .L_6e6c0                         #  817   0x6c761  6      
  testb $0x10, %r13b                  #  818   0x6c767  4      
  jne .L_6e6c0                        #  819   0x6c76b  6      
  nop                                 #  820   0x6c771  1      
  movq 0xe0(%rsp), %rcx               #  821   0x6c772  8      
  movl %ecx, %ecx                     #  822   0x6c77a  2      
  movl (%r15,%rcx,1), %eax            #  823   0x6c77c  4      
  cmpl $0x2f, %eax                    #  824   0x6c780  3      
  ja .L_6fc60                         #  825   0x6c783  6      
  movl %ecx, %ecx                     #  826   0x6c789  2      
  movl 0xc(%r15,%rcx,1), %edx         #  827   0x6c78b  5      
  addl %eax, %edx                     #  828   0x6c790  2      
  addl $0x8, %eax                     #  829   0x6c792  3      
  movl %ecx, %ecx                     #  830   0x6c795  2      
  movl %eax, (%r15,%rcx,1)            #  831   0x6c797  4      
  nop                                 #  832   0x6c79b  1      
  nop                                 #  833   0x6c79c  1      
.L_6ccc0:                             #        0x6c79d  0      
  movl %edx, %edx                     #  834   0x6c79d  2      
  movl (%r15,%rdx,1), %eax            #  835   0x6c79f  4      
  movl $0x1, 0xc4(%rsp)               #  836   0x6c7a3  11     
  movb %al, 0x170(%rsp)               #  837   0x6c7ae  7      
  jmpq .L_6e760                       #  838   0x6c7b5  5      
  nop                                 #  839   0x6c7ba  1      
  movl %eax, 0x100(%rsp)              #  840   0x6c7bb  7      
  orl $0x10, %r13d                    #  841   0x6c7c2  4      
  nop                                 #  842   0x6c7c6  1      
  nop                                 #  843   0x6c7c7  1      
.L_6cd00:                             #        0x6c7c8  0      
  testb $0x20, %r13b                  #  844   0x6c7c8  4      
  je .L_6dd40                         #  845   0x6c7cc  6      
  movq 0xe0(%rsp), %rcx               #  846   0x6c7d2  8      
  movl %ecx, %ecx                     #  847   0x6c7da  2      
  movl (%r15,%rcx,1), %eax            #  848   0x6c7dc  4      
  cmpl $0x2f, %eax                    #  849   0x6c7e0  3      
  nop                                 #  850   0x6c7e3  1      
  ja .L_6ec00                         #  851   0x6c7e4  6      
  movl %ecx, %ecx                     #  852   0x6c7ea  2      
  movl 0xc(%r15,%rcx,1), %edx         #  853   0x6c7ec  5      
  addl %eax, %edx                     #  854   0x6c7f1  2      
  addl $0x8, %eax                     #  855   0x6c7f3  3      
  movl %ecx, %ecx                     #  856   0x6c7f6  2      
  movl %eax, (%r15,%rcx,1)            #  857   0x6c7f8  4      
  nop                                 #  858   0x6c7fc  1      
.L_6cd40:                             #        0x6c7fd  0      
  movl %edx, %edx                     #  859   0x6c7fd  2      
  movq (%r15,%rdx,1), %rcx            #  860   0x6c7ff  4      
  nop                                 #  861   0x6c803  1      
  nop                                 #  862   0x6c804  1      
.L_6cd60:                             #        0x6c805  0      
  cmpq $0x0, %rcx                     #  863   0x6c805  4      
  jl .L_6eb00                         #  864   0x6c809  6      
  setne %sil                          #  865   0x6c80f  4      
  movl $0x1, %eax                     #  866   0x6c813  5      
  jmpq .L_6c860                       #  867   0x6c818  5      
  nop                                 #  868   0x6c81d  1      
  testb $0x20, %r13b                  #  869   0x6c81e  4      
  movl %eax, 0x100(%rsp)              #  870   0x6c822  7      
  movq $0x10023be0, 0x148(%rsp)       #  871   0x6c829  12     
  jne .L_6c780                        #  872   0x6c835  6      
  nop                                 #  873   0x6c83b  1      
.L_6cda0:                             #        0x6c83c  0      
  testb $0x10, %r13b                  #  874   0x6c83c  4      
  je .L_6f040                         #  875   0x6c840  6      
  movq 0xe0(%rsp), %rdx               #  876   0x6c846  8      
  movl %edx, %edx                     #  877   0x6c84e  2      
  movl (%r15,%rdx,1), %eax            #  878   0x6c850  4      
  cmpl $0x2f, %eax                    #  879   0x6c854  3      
  nop                                 #  880   0x6c857  1      
  ja .L_6f9e0                         #  881   0x6c858  6      
  movq %rdx, %rcx                     #  882   0x6c85e  3      
  movl %edx, %edx                     #  883   0x6c861  2      
  movl 0xc(%r15,%rdx,1), %edx         #  884   0x6c863  5      
  addl %eax, %edx                     #  885   0x6c868  2      
  addl $0x8, %eax                     #  886   0x6c86a  3      
  movl %ecx, %ecx                     #  887   0x6c86d  2      
  movl %eax, (%r15,%rcx,1)            #  888   0x6c86f  4      
  nop                                 #  889   0x6c873  1      
.L_6cde0:                             #        0x6c874  0      
  movl %edx, %edx                     #  890   0x6c874  2      
  movl (%r15,%rdx,1), %ecx            #  891   0x6c876  4      
  jmpq .L_6c7e0                       #  892   0x6c87a  5      
  nop                                 #  893   0x6c87f  1      
  nop                                 #  894   0x6c880  1      
  orb $0x80, %r13b                    #  895   0x6c881  4      
  movl %r12d, %r12d                   #  896   0x6c885  3      
  movzbl (%r15,%r12,1), %eax          #  897   0x6c888  5      
  jmpq .L_6bd80                       #  898   0x6c88d  5      
  nop                                 #  899   0x6c892  1      
  xorl %ecx, %ecx                     #  900   0x6c893  2      
  nop                                 #  901   0x6c895  1      
  nop                                 #  902   0x6c896  1      
.L_6ce40:                             #        0x6c897  0      
  leal (%rcx,%rcx,4), %ecx            #  903   0x6c897  3      
  leal -0x30(%rax,%rcx,2), %ecx       #  904   0x6c89a  4      
  movl %r12d, %r12d                   #  905   0x6c89e  3      
  movsbl (%r15,%r12,1), %eax          #  906   0x6c8a1  5      
  addl $0x1, %r12d                    #  907   0x6c8a6  4      
  leal -0x30(%rax), %esi              #  908   0x6c8aa  3      
  cmpl $0x9, %esi                     #  909   0x6c8ad  3      
  jbe .L_6ce40                        #  910   0x6c8b0  6      
  nop                                 #  911   0x6c8b6  1      
  movl %ecx, 0xd4(%rsp)               #  912   0x6c8b7  7      
  jmpq .L_6bda0                       #  913   0x6c8be  5      
  nop                                 #  914   0x6c8c3  1      
  nop                                 #  915   0x6c8c4  1      
  movl %eax, 0x100(%rsp)              #  916   0x6c8c5  7      
  orl $0x10, %r13d                    #  917   0x6c8cc  4      
  nop                                 #  918   0x6c8d0  1      
  nop                                 #  919   0x6c8d1  1      
.L_6cea0:                             #        0x6c8d2  0      
  testb $0x20, %r13b                  #  920   0x6c8d2  4      
  je .L_6df20                         #  921   0x6c8d6  6      
  movq 0xe0(%rsp), %rcx               #  922   0x6c8dc  8      
  movl %ecx, %ecx                     #  923   0x6c8e4  2      
  movl (%r15,%rcx,1), %eax            #  924   0x6c8e6  4      
  cmpl $0x2f, %eax                    #  925   0x6c8ea  3      
  nop                                 #  926   0x6c8ed  1      
  ja .L_6f220                         #  927   0x6c8ee  6      
  movl %ecx, %ecx                     #  928   0x6c8f4  2      
  movl 0xc(%r15,%rcx,1), %edx         #  929   0x6c8f6  5      
  addl %eax, %edx                     #  930   0x6c8fb  2      
  addl $0x8, %eax                     #  931   0x6c8fd  3      
  movl %ecx, %ecx                     #  932   0x6c900  2      
  movl %eax, (%r15,%rcx,1)            #  933   0x6c902  4      
  nop                                 #  934   0x6c906  1      
.L_6cee0:                             #        0x6c907  0      
  movl %edx, %edx                     #  935   0x6c907  2      
  movq (%r15,%rdx,1), %rcx            #  936   0x6c909  4      
  nop                                 #  937   0x6c90d  1      
  nop                                 #  938   0x6c90e  1      
.L_6cf00:                             #        0x6c90f  0      
  andl $0xfffffbff, %r13d             #  939   0x6c90f  7      
  testq %rcx, %rcx                    #  940   0x6c916  3      
  setne %sil                          #  941   0x6c919  4      
  xorl %eax, %eax                     #  942   0x6c91d  2      
  jmpq .L_6c840                       #  943   0x6c91f  5      
  nop                                 #  944   0x6c924  1      
  movq 0xe0(%rsp), %rdx               #  945   0x6c925  8      
  movl %eax, 0x100(%rsp)              #  946   0x6c92d  7      
  movl %edx, %edx                     #  947   0x6c934  2      
  movl (%r15,%rdx,1), %eax            #  948   0x6c936  4      
  cmpl $0x2f, %eax                    #  949   0x6c93a  3      
  ja .L_6eb60                         #  950   0x6c93d  6      
  xchgw %ax, %ax                      #  951   0x6c943  3      
  movq %rdx, %rcx                     #  952   0x6c946  3      
  movl %edx, %edx                     #  953   0x6c949  2      
  movl 0xc(%r15,%rdx,1), %edx         #  954   0x6c94b  5      
  addl %eax, %edx                     #  955   0x6c950  2      
  addl $0x8, %eax                     #  956   0x6c952  3      
  movl %ecx, %ecx                     #  957   0x6c955  2      
  movl %eax, (%r15,%rcx,1)            #  958   0x6c957  4      
  nop                                 #  959   0x6c95b  1      
.L_6cf60:                             #        0x6c95c  0      
  movl %edx, %edx                     #  960   0x6c95c  2      
  movl (%r15,%rdx,1), %edx            #  961   0x6c95e  4      
  movb $0x0, 0x29f(%rsp)              #  962   0x6c962  8      
  testq %rdx, %rdx                    #  963   0x6c96a  3      
  movq %rdx, 0xb0(%rsp)               #  964   0x6c96d  8      
  je .L_6ffc0                         #  965   0x6c975  6      
  nop                                 #  966   0x6c97b  1      
  cmpl $0x53, 0x100(%rsp)             #  967   0x6c97c  8      
  je .L_6f320                         #  968   0x6c984  6      
  movl %r13d, %ecx                    #  969   0x6c98a  3      
  andl $0x10, %ecx                    #  970   0x6c98d  3      
  jne .L_6f320                        #  971   0x6c990  6      
  testl %r10d, %r10d                  #  972   0x6c996  3      
  nop                                 #  973   0x6c999  1      
  js .L_6fd00                         #  974   0x6c99a  6      
  movl 0xb0(%rsp), %edi               #  975   0x6c9a0  7      
  movl %r10d, %edx                    #  976   0x6c9a7  3      
  xorl %esi, %esi                     #  977   0x6c9aa  2      
  movl %ecx, 0x98(%rsp)               #  978   0x6c9ac  7      
  nop                                 #  979   0x6c9b3  1      
  movl %r10d, 0x90(%rsp)              #  980   0x6c9b4  8      
  nop                                 #  981   0x6c9bc  1      
  nop                                 #  982   0x6c9bd  1      
  callq .memchr                       #  983   0x6c9be  5      
  movl %eax, %eax                     #  984   0x6c9c3  2      
  movl 0x98(%rsp), %ecx               #  985   0x6c9c5  7      
  movl 0x90(%rsp), %r10d              #  986   0x6c9cc  8      
  testq %rax, %rax                    #  987   0x6c9d4  3      
  je .L_70060                         #  988   0x6c9d7  6      
  nop                                 #  989   0x6c9dd  1      
  subl 0xb0(%rsp), %eax               #  990   0x6c9de  7      
  cmpl %r10d, %eax                    #  991   0x6c9e5  3      
  movl %eax, 0xc4(%rsp)               #  992   0x6c9e8  7      
  jg .L_70060                         #  993   0x6c9ef  6      
  cmpl $0x0, 0xc4(%rsp)               #  994   0x6c9f5  8      
  nop                                 #  995   0x6c9fd  1      
  movzbl 0x29f(%rsp), %eax            #  996   0x6c9fe  8      
  cmovnsl 0xc4(%rsp), %ecx            #  997   0x6ca06  8      
  movl %ecx, 0xb8(%rsp)               #  998   0x6ca0e  7      
  nop                                 #  999   0x6ca15  1      
.L_6d040:                             #        0x6ca16  0      
  movq $0x0, 0xe8(%rsp)               #  1000  0x6ca16  12     
  movl $0x0, 0x104(%rsp)              #  1001  0x6ca22  11     
  nop                                 #  1002  0x6ca2d  1      
  movl $0x0, 0x114(%rsp)              #  1003  0x6ca2e  11     
  movl $0x0, 0x12c(%rsp)              #  1004  0x6ca39  11     
  nop                                 #  1005  0x6ca44  1      
  movl $0x0, 0x11c(%rsp)              #  1006  0x6ca45  11     
  jmpq .L_6c9a0                       #  1007  0x6ca50  5      
  nop                                 #  1008  0x6ca55  1      
  nop                                 #  1009  0x6ca56  1      
  movl %eax, 0x100(%rsp)              #  1010  0x6ca57  7      
  orl $0x10, %r13d                    #  1011  0x6ca5e  4      
  nop                                 #  1012  0x6ca62  1      
  nop                                 #  1013  0x6ca63  1      
.L_6d0c0:                             #        0x6ca64  0      
  testb $0x20, %r13b                  #  1014  0x6ca64  4      
  je .L_6dec0                         #  1015  0x6ca68  6      
  movq 0xe0(%rsp), %rcx               #  1016  0x6ca6e  8      
  movl %ecx, %ecx                     #  1017  0x6ca76  2      
  movl (%r15,%rcx,1), %eax            #  1018  0x6ca78  4      
  cmpl $0x2f, %eax                    #  1019  0x6ca7c  3      
  nop                                 #  1020  0x6ca7f  1      
  ja .L_6f020                         #  1021  0x6ca80  6      
  movl %ecx, %ecx                     #  1022  0x6ca86  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1023  0x6ca88  5      
  addl %eax, %edx                     #  1024  0x6ca8d  2      
  addl $0x8, %eax                     #  1025  0x6ca8f  3      
  movl %ecx, %ecx                     #  1026  0x6ca92  2      
  movl %eax, (%r15,%rcx,1)            #  1027  0x6ca94  4      
  nop                                 #  1028  0x6ca98  1      
.L_6d100:                             #        0x6ca99  0      
  movl %edx, %edx                     #  1029  0x6ca99  2      
  movq (%r15,%rdx,1), %rcx            #  1030  0x6ca9b  4      
  movl $0x1, %eax                     #  1031  0x6ca9f  5      
  testq %rcx, %rcx                    #  1032  0x6caa4  3      
  setne %sil                          #  1033  0x6caa7  4      
  jmpq .L_6c840                       #  1034  0x6caab  5      
  nop                                 #  1035  0x6cab0  1      
  orl $0x8, %r13d                     #  1036  0x6cab1  4      
  movl %r12d, %r12d                   #  1037  0x6cab5  3      
  movzbl (%r15,%r12,1), %eax          #  1038  0x6cab8  5      
  jmpq .L_6bd80                       #  1039  0x6cabd  5      
  nop                                 #  1040  0x6cac2  1      
  movl %r12d, %r12d                   #  1041  0x6cac3  3      
  movsbl (%r15,%r12,1), %eax          #  1042  0x6cac6  5      
  addl $0x1, %r12d                    #  1043  0x6cacb  4      
  cmpl $0x2a, %eax                    #  1044  0x6cacf  3      
  je .L_71000                         #  1045  0x6cad2  6      
  leal -0x30(%rax), %esi              #  1046  0x6cad8  3      
  xorl %ecx, %ecx                     #  1047  0x6cadb  2      
  xorl %r10d, %r10d                   #  1048  0x6cadd  3      
  cmpl $0x9, %esi                     #  1049  0x6cae0  3      
  ja .L_6bda0                         #  1050  0x6cae3  6      
  nop                                 #  1051  0x6cae9  1      
  nop                                 #  1052  0x6caea  1      
.L_6d180:                             #        0x6caeb  0      
  movl %r12d, %r12d                   #  1053  0x6caeb  3      
  movsbl (%r15,%r12,1), %eax          #  1054  0x6caee  5      
  leal (%rcx,%rcx,4), %ecx            #  1055  0x6caf3  3      
  addl $0x1, %r12d                    #  1056  0x6caf6  4      
  leal (%rsi,%rcx,2), %ecx            #  1057  0x6cafa  3      
  leal -0x30(%rax), %esi              #  1058  0x6cafd  3      
  cmpl $0x9, %esi                     #  1059  0x6cb00  3      
  jbe .L_6d180                        #  1060  0x6cb03  6      
  testl %ecx, %ecx                    #  1061  0x6cb09  2      
  movl %edx, %r10d                    #  1062  0x6cb0b  3      
  nop                                 #  1063  0x6cb0e  1      
  cmovnsl %ecx, %r10d                 #  1064  0x6cb0f  4      
  jmpq .L_6bda0                       #  1065  0x6cb13  5      
  nop                                 #  1066  0x6cb18  1      
  nop                                 #  1067  0x6cb19  1      
  movl %r12d, %r12d                   #  1068  0x6cb1a  3      
  movzbl (%r15,%r12,1), %eax          #  1069  0x6cb1d  5      
  cmpb $0x68, %al                     #  1070  0x6cb22  2      
  je .L_6f940                         #  1071  0x6cb24  6      
  orl $0x40, %r13d                    #  1072  0x6cb2a  4      
  jmpq .L_6bd80                       #  1073  0x6cb2e  5      
  nop                                 #  1074  0x6cb33  1      
  movb $0x2b, 0x29f(%rsp)             #  1075  0x6cb34  8      
  movl %r12d, %r12d                   #  1076  0x6cb3c  3      
  movzbl (%r15,%r12,1), %eax          #  1077  0x6cb3f  5      
  jmpq .L_6bd80                       #  1078  0x6cb44  5      
  nop                                 #  1079  0x6cb49  1      
  movl %eax, 0x100(%rsp)              #  1080  0x6cb4a  7      
  jmpq .L_6cd00                       #  1081  0x6cb51  5      
  nop                                 #  1082  0x6cb56  1      
  nop                                 #  1083  0x6cb57  1      
  movl %eax, 0x100(%rsp)              #  1084  0x6cb58  7      
  jmpq .L_6cea0                       #  1085  0x6cb5f  5      
  nop                                 #  1086  0x6cb64  1      
  nop                                 #  1087  0x6cb65  1      
  movl %eax, 0x100(%rsp)              #  1088  0x6cb66  7      
  jmpq .L_6d0c0                       #  1089  0x6cb6d  5      
  nop                                 #  1090  0x6cb72  1      
  nop                                 #  1091  0x6cb73  1      
.L_6d260:                             #        0x6cb74  0      
  movl 0x228(%rsp), %eax              #  1092  0x6cb74  7      
  testl %eax, %eax                    #  1093  0x6cb7b  2      
  jne .L_6fde0                        #  1094  0x6cb7d  6      
  xchgw %ax, %ax                      #  1095  0x6cb83  3      
  nop                                 #  1096  0x6cb86  1      
.L_6d280:                             #        0x6cb87  0      
  movq 0xc8(%rsp), %rdx               #  1097  0x6cb87  8      
  movl %edx, %edx                     #  1098  0x6cb8f  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1099  0x6cb91  6      
  jmpq .L_6d300                       #  1100  0x6cb97  5      
  nop                                 #  1101  0x6cb9c  1      
.L_6d2a0:                             #        0x6cb9d  0      
  movq 0xc8(%rsp), %rax               #  1102  0x6cb9d  8      
  movl %eax, %eax                     #  1103  0x6cba5  2      
  orw $0x40, 0xc(%r15,%rax,1)         #  1104  0x6cba7  7      
  nop                                 #  1105  0x6cbae  1      
.L_6d2c0:                             #        0x6cbaf  0      
  cmpq $0x0, 0xe8(%rsp)               #  1106  0x6cbaf  9      
  je .L_6da60                         #  1107  0x6cbb8  6      
  movl 0xe8(%rsp), %esi               #  1108  0x6cbbe  7      
  movl %r14d, %edi                    #  1109  0x6cbc5  3      
  xchgw %ax, %ax                      #  1110  0x6cbc8  3      
  callq ._free_r                      #  1111  0x6cbcb  5      
  movq 0xc8(%rsp), %rbx               #  1112  0x6cbd0  8      
  movl %ebx, %ebx                     #  1113  0x6cbd8  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  1114  0x6cbda  6      
  nop                                 #  1115  0x6cbe0  1      
  nop                                 #  1116  0x6cbe1  1      
.L_6d300:                             #        0x6cbe2  0      
  testb $0x40, %al                    #  1117  0x6cbe2  2      
  movl $0xffffffff, %eax              #  1118  0x6cbe4  5      
  cmovel 0xd0(%rsp), %eax             #  1119  0x6cbe9  8      
  movl %eax, 0xd0(%rsp)               #  1120  0x6cbf1  7      
  nop                                 #  1121  0x6cbf8  1      
.L_6d320:                             #        0x6cbf9  0      
  movl 0xd0(%rsp), %eax               #  1122  0x6cbf9  7      
  addl $0x2a8, %esp                   #  1123  0x6cc00  6      
  addq %r15, %rsp                     #  1124  0x6cc06  3      
  popq %rbx                           #  1125  0x6cc09  2      
  popq %r12                           #  1126  0x6cc0b  3      
  popq %r13                           #  1127  0x6cc0e  3      
  popq %r14                           #  1128  0x6cc11  3      
  popq %r11                           #  1129  0x6cc14  3      
  nop                                 #  1130  0x6cc17  1      
  andl $0xffffffe0, %r11d             #  1131  0x6cc18  7      
  addq %r15, %r11                     #  1132  0x6cc1f  3      
  jmpq %r11                           #  1133  0x6cc22  3      
  nop                                 #  1134  0x6cc25  1      
  nop                                 #  1135  0x6cc26  1      
.L_6d360:                             #        0x6cc27  0      
  cmpl $0x65, 0x100(%rsp)             #  1136  0x6cc27  8      
  jle .L_6d760                        #  1137  0x6cc2f  6      
  movsd 0x130(%rsp), %xmm0            #  1138  0x6cc35  9      
  ucomisd 0xffb72da(%rip), %xmm0      #  1139  0x6cc3e  8      
  nop                                 #  1140  0x6cc46  1      
  jne .L_6da80                        #  1141  0x6cc47  6      
  jp .L_6da80                         #  1142  0x6cc4d  6      
  movl %ebx, %ebx                     #  1143  0x6cc53  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1144  0x6cc55  9      
  movl 0x224(%rsp), %eax              #  1145  0x6cc5e  7      
  xchgw %ax, %ax                      #  1146  0x6cc65  3      
  addl $0x1, 0x228(%rsp)              #  1147  0x6cc68  8      
  movl %ebx, %ebx                     #  1148  0x6cc70  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  1149  0x6cc72  8      
  addl $0x1, %eax                     #  1150  0x6cc7a  3      
  cmpl $0x7, %eax                     #  1151  0x6cc7d  3      
  movl %eax, 0x224(%rsp)              #  1152  0x6cc80  7      
  nop                                 #  1153  0x6cc87  1      
  jg .L_6f6c0                         #  1154  0x6cc88  6      
  addl $0x8, %ebx                     #  1155  0x6cc8e  3      
  nop                                 #  1156  0x6cc91  1      
  nop                                 #  1157  0x6cc92  1      
.L_6d3e0:                             #        0x6cc93  0      
  movl 0x118(%rsp), %eax              #  1158  0x6cc93  7      
  cmpl %eax, 0x28c(%rsp)              #  1159  0x6cc9a  7      
  jl .L_6d400                         #  1160  0x6cca1  6      
  testb $0x1, %r13b                   #  1161  0x6cca7  4      
  je .L_6c2a0                         #  1162  0x6ccab  6      
  nop                                 #  1163  0x6ccb1  1      
.L_6d400:                             #        0x6ccb2  0      
  movl 0x13c(%rsp), %ecx              #  1164  0x6ccb2  7      
  movl 0x120(%rsp), %edx              #  1165  0x6ccb9  7      
  movl %ebx, %ebx                     #  1166  0x6ccc0  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1167  0x6ccc2  5      
  movl 0x224(%rsp), %eax              #  1168  0x6ccc7  7      
  nop                                 #  1169  0x6ccce  1      
  addl %ecx, 0x228(%rsp)              #  1170  0x6cccf  7      
  movl %ebx, %ebx                     #  1171  0x6ccd6  2      
  movl %edx, (%r15,%rbx,1)            #  1172  0x6ccd8  4      
  addl $0x1, %eax                     #  1173  0x6ccdc  3      
  cmpl $0x7, %eax                     #  1174  0x6ccdf  3      
  movl %eax, 0x224(%rsp)              #  1175  0x6cce2  7      
  jg .L_6fe40                         #  1176  0x6cce9  6      
  addl $0x8, %ebx                     #  1177  0x6ccef  3      
  nop                                 #  1178  0x6ccf2  1      
  nop                                 #  1179  0x6ccf3  1      
.L_6d460:                             #        0x6ccf4  0      
  movl 0x118(%rsp), %ecx              #  1180  0x6ccf4  7      
  subl $0x1, %ecx                     #  1181  0x6ccfb  3      
  testl %ecx, %ecx                    #  1182  0x6ccfe  2      
  jle .L_6c2a0                        #  1183  0x6cd00  6      
  cmpl $0x10, %ecx                    #  1184  0x6cd06  3      
  jle .L_6dfa0                        #  1185  0x6cd09  6      
  nop                                 #  1186  0x6cd0f  1      
  leal 0x220(%rsp), %esi              #  1187  0x6cd10  7      
  movq %rbx, %rax                     #  1188  0x6cd17  3      
  movl %r13d, 0xb0(%rsp)              #  1189  0x6cd1a  8      
  movl %ecx, %ebx                     #  1190  0x6cd22  2      
  movq %r12, %r13                     #  1191  0x6cd24  3      
  movq 0xc8(%rsp), %r12               #  1192  0x6cd27  8      
  nop                                 #  1193  0x6cd2f  1      
  movq %rsi, 0x38(%rsp)               #  1194  0x6cd30  5      
  jmpq .L_6d500                       #  1195  0x6cd35  5      
  nop                                 #  1196  0x6cd3a  1      
  nop                                 #  1197  0x6cd3b  1      
.L_6d4c0:                             #        0x6cd3c  0      
  addl $0x8, %eax                     #  1198  0x6cd3c  3      
  nop                                 #  1199  0x6cd3f  1      
  nop                                 #  1200  0x6cd40  1      
.L_6d4e0:                             #        0x6cd41  0      
  subl $0x10, %ebx                    #  1201  0x6cd41  3      
  cmpl $0x10, %ebx                    #  1202  0x6cd44  3      
  jle .L_6f640                        #  1203  0x6cd47  6      
  nop                                 #  1204  0x6cd4d  1      
  nop                                 #  1205  0x6cd4e  1      
.L_6d500:                             #        0x6cd4f  0      
  movl %eax, %eax                     #  1206  0x6cd4f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1207  0x6cd51  9      
  movl 0x224(%rsp), %edx              #  1208  0x6cd5a  7      
  addl $0x10, 0x228(%rsp)             #  1209  0x6cd61  8      
  nop                                 #  1210  0x6cd69  1      
  movl %eax, %eax                     #  1211  0x6cd6a  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1212  0x6cd6c  8      
  addl $0x1, %edx                     #  1213  0x6cd74  3      
  cmpl $0x7, %edx                     #  1214  0x6cd77  3      
  movl %edx, 0x224(%rsp)              #  1215  0x6cd7a  7      
  jle .L_6d4c0                        #  1216  0x6cd81  6      
  movl 0x38(%rsp), %edx               #  1217  0x6cd87  4      
  movl %r12d, %esi                    #  1218  0x6cd8b  3      
  movl %r14d, %edi                    #  1219  0x6cd8e  3      
  nop                                 #  1220  0x6cd91  1      
  nop                                 #  1221  0x6cd92  1      
  callq .__ssprint_r                  #  1222  0x6cd93  5      
  testl %eax, %eax                    #  1223  0x6cd98  2      
  jne .L_6d2c0                        #  1224  0x6cd9a  6      
  leal 0x1e0(%rsp), %eax              #  1225  0x6cda0  7      
  jmpq .L_6d4e0                       #  1226  0x6cda7  5      
  nop                                 #  1227  0x6cdac  1      
.L_6d580:                             #        0x6cdad  0      
  testl %eax, %eax                    #  1228  0x6cdad  2      
  jne .L_6d5c0                        #  1229  0x6cdaf  6      
  testb $0x1, %r13b                   #  1230  0x6cdb5  4      
  je .L_6d5c0                         #  1231  0x6cdb9  6      
  movq 0x158(%rsp), %rcx              #  1232  0x6cdbf  8      
  movq %rcx, 0xb0(%rsp)               #  1233  0x6cdc7  8      
  nop                                 #  1234  0x6cdcf  1      
  movl %ecx, %ecx                     #  1235  0x6cdd0  2      
  movb $0x30, (%r15,%rcx,1)           #  1236  0x6cdd2  5      
  movl $0x1, 0xc4(%rsp)               #  1237  0x6cdd7  11     
  movq 0xf0(%rsp), %rsi               #  1238  0x6cde2  8      
  jmpq .L_6c920                       #  1239  0x6cdea  5      
  nop                                 #  1240  0x6cdef  1      
.L_6d5c0:                             #        0x6cdf0  0      
  movq 0x108(%rsp), %rax              #  1241  0x6cdf0  8      
  movq 0xf0(%rsp), %rsi               #  1242  0x6cdf8  8      
  movl $0x0, 0xc4(%rsp)               #  1243  0x6ce00  11     
  nop                                 #  1244  0x6ce0b  1      
  movq %rax, 0xb0(%rsp)               #  1245  0x6ce0c  8      
  jmpq .L_6c920                       #  1246  0x6ce14  5      
  nop                                 #  1247  0x6ce19  1      
  nop                                 #  1248  0x6ce1a  1      
.L_6d600:                             #        0x6ce1b  0      
  movl 0xd4(%rsp), %ecx               #  1249  0x6ce1b  7      
  subl 0xb8(%rsp), %ecx               #  1250  0x6ce22  7      
  testl %ecx, %ecx                    #  1251  0x6ce29  2      
  jle .L_6c0e0                        #  1252  0x6ce2b  6      
  cmpl $0x10, %ecx                    #  1253  0x6ce31  3      
  jle .L_6d720                        #  1254  0x6ce34  6      
  nop                                 #  1255  0x6ce3a  1      
  leal 0x220(%rsp), %eax              #  1256  0x6ce3b  7      
  movl %r13d, 0xd8(%rsp)              #  1257  0x6ce42  8      
  movq %r12, %r13                     #  1258  0x6ce4a  3      
  movq 0xc8(%rsp), %r12               #  1259  0x6ce4d  8      
  movq %rax, 0x48(%rsp)               #  1260  0x6ce55  5      
  nop                                 #  1261  0x6ce5a  1      
  movq %rbx, %rax                     #  1262  0x6ce5b  3      
  movl %ecx, %ebx                     #  1263  0x6ce5e  2      
  jmpq .L_6d680                       #  1264  0x6ce60  5      
  nop                                 #  1265  0x6ce65  1      
  nop                                 #  1266  0x6ce66  1      
.L_6d660:                             #        0x6ce67  0      
  subl $0x10, %ebx                    #  1267  0x6ce67  3      
  addl $0x8, %eax                     #  1268  0x6ce6a  3      
  cmpl $0x10, %ebx                    #  1269  0x6ce6d  3      
  jle .L_6d700                        #  1270  0x6ce70  6      
  xchgw %ax, %ax                      #  1271  0x6ce76  3      
  nop                                 #  1272  0x6ce79  1      
.L_6d680:                             #        0x6ce7a  0      
  movl %eax, %eax                     #  1273  0x6ce7a  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1274  0x6ce7c  9      
  movl 0x224(%rsp), %edx              #  1275  0x6ce85  7      
  addl $0x10, 0x228(%rsp)             #  1276  0x6ce8c  8      
  nop                                 #  1277  0x6ce94  1      
  movl %eax, %eax                     #  1278  0x6ce95  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1279  0x6ce97  8      
  addl $0x1, %edx                     #  1280  0x6ce9f  3      
  cmpl $0x7, %edx                     #  1281  0x6cea2  3      
  movl %edx, 0x224(%rsp)              #  1282  0x6cea5  7      
  jle .L_6d660                        #  1283  0x6ceac  6      
  movl 0x48(%rsp), %edx               #  1284  0x6ceb2  4      
  movl %r12d, %esi                    #  1285  0x6ceb6  3      
  movl %r14d, %edi                    #  1286  0x6ceb9  3      
  nop                                 #  1287  0x6cebc  1      
  nop                                 #  1288  0x6cebd  1      
  callq .__ssprint_r                  #  1289  0x6cebe  5      
  testl %eax, %eax                    #  1290  0x6cec3  2      
  jne .L_6d2c0                        #  1291  0x6cec5  6      
  subl $0x10, %ebx                    #  1292  0x6cecb  3      
  leal 0x1e0(%rsp), %eax              #  1293  0x6cece  7      
  cmpl $0x10, %ebx                    #  1294  0x6ced5  3      
  jg .L_6d680                         #  1295  0x6ced8  6      
  nop                                 #  1296  0x6cede  1      
.L_6d700:                             #        0x6cedf  0      
  movq %r13, %r12                     #  1297  0x6cedf  3      
  movl 0xd8(%rsp), %r13d              #  1298  0x6cee2  8      
  movl %ebx, %ecx                     #  1299  0x6ceea  2      
  movq %rax, %rbx                     #  1300  0x6ceec  3      
  nop                                 #  1301  0x6ceef  1      
  nop                                 #  1302  0x6cef0  1      
.L_6d720:                             #        0x6cef1  0      
  movl %ebx, %ebx                     #  1303  0x6cef1  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1304  0x6cef3  5      
  movl 0x224(%rsp), %eax              #  1305  0x6cef8  7      
  addl %ecx, 0x228(%rsp)              #  1306  0x6ceff  7      
  movl %ebx, %ebx                     #  1307  0x6cf06  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1308  0x6cf08  8      
  nop                                 #  1309  0x6cf10  1      
  addl $0x1, %eax                     #  1310  0x6cf11  3      
  cmpl $0x7, %eax                     #  1311  0x6cf14  3      
  movl %eax, 0x224(%rsp)              #  1312  0x6cf17  7      
  jg .L_6ea60                         #  1313  0x6cf1e  6      
  addl $0x8, %ebx                     #  1314  0x6cf24  3      
  jmpq .L_6c0e0                       #  1315  0x6cf27  5      
  nop                                 #  1316  0x6cf2c  1      
.L_6d760:                             #        0x6cf2d  0      
  cmpl $0x1, 0x118(%rsp)              #  1317  0x6cf2d  8      
  jle .L_6e5a0                        #  1318  0x6cf35  6      
  nop                                 #  1319  0x6cf3b  1      
  nop                                 #  1320  0x6cf3c  1      
.L_6d780:                             #        0x6cf3d  0      
  movl %ebx, %ebx                     #  1321  0x6cf3d  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1322  0x6cf3f  9      
  movl 0x224(%rsp), %eax              #  1323  0x6cf48  7      
  movl 0xb0(%rsp), %ecx               #  1324  0x6cf4f  7      
  nop                                 #  1325  0x6cf56  1      
  addl $0x1, 0x228(%rsp)              #  1326  0x6cf57  8      
  addl $0x1, %eax                     #  1327  0x6cf5f  3      
  cmpl $0x7, %eax                     #  1328  0x6cf62  3      
  movl %ebx, %ebx                     #  1329  0x6cf65  2      
  movl %ecx, (%r15,%rbx,1)            #  1330  0x6cf67  4      
  movl %eax, 0x224(%rsp)              #  1331  0x6cf6b  7      
  nop                                 #  1332  0x6cf72  1      
  jg .L_6e680                         #  1333  0x6cf73  6      
  leal 0x8(%rbx), %eax                #  1334  0x6cf79  3      
  nop                                 #  1335  0x6cf7c  1      
  nop                                 #  1336  0x6cf7d  1      
.L_6d7e0:                             #        0x6cf7e  0      
  movl 0x13c(%rsp), %esi              #  1337  0x6cf7e  7      
  movl 0x120(%rsp), %ebx              #  1338  0x6cf85  7      
  movl %eax, %eax                     #  1339  0x6cf8c  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1340  0x6cf8e  5      
  movl 0x224(%rsp), %edx              #  1341  0x6cf93  7      
  nop                                 #  1342  0x6cf9a  1      
  addl %esi, 0x228(%rsp)              #  1343  0x6cf9b  7      
  movl %eax, %eax                     #  1344  0x6cfa2  2      
  movl %ebx, (%r15,%rax,1)            #  1345  0x6cfa4  4      
  addl $0x1, %edx                     #  1346  0x6cfa8  3      
  cmpl $0x7, %edx                     #  1347  0x6cfab  3      
  movl %edx, 0x224(%rsp)              #  1348  0x6cfae  7      
  jg .L_6e640                         #  1349  0x6cfb5  6      
  addl $0x8, %eax                     #  1350  0x6cfbb  3      
  nop                                 #  1351  0x6cfbe  1      
  nop                                 #  1352  0x6cfbf  1      
.L_6d840:                             #        0x6cfc0  0      
  movsd 0x130(%rsp), %xmm0            #  1353  0x6cfc0  9      
  ucomisd 0xffb6f4f(%rip), %xmm0      #  1354  0x6cfc9  8      
  jp .L_6d860                         #  1355  0x6cfd1  6      
  je .L_6dda0                         #  1356  0x6cfd7  6      
  nop                                 #  1357  0x6cfdd  1      
.L_6d860:                             #        0x6cfde  0      
  movl 0xb0(%rsp), %edx               #  1358  0x6cfde  7      
  movl 0x118(%rsp), %ecx              #  1359  0x6cfe5  7      
  addl $0x1, %edx                     #  1360  0x6cfec  3      
  movl %eax, %eax                     #  1361  0x6cfef  2      
  movl %edx, (%r15,%rax,1)            #  1362  0x6cff1  4      
  movl 0x118(%rsp), %edx              #  1363  0x6cff5  7      
  xchgw %ax, %ax                      #  1364  0x6cffc  3      
  subl $0x1, %edx                     #  1365  0x6cfff  3      
  movl %eax, %eax                     #  1366  0x6d002  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1367  0x6d004  5      
  movl 0x228(%rsp), %edx              #  1368  0x6d009  7      
  leal -0x1(%rcx,%rdx,1), %edx        #  1369  0x6d010  4      
  movl %edx, 0x228(%rsp)              #  1370  0x6d014  7      
  nop                                 #  1371  0x6d01b  1      
.L_6d8a0:                             #        0x6d01c  0      
  movl 0x224(%rsp), %edx              #  1372  0x6d01c  7      
  addl $0x1, %edx                     #  1373  0x6d023  3      
  cmpl $0x7, %edx                     #  1374  0x6d026  3      
  movl %edx, 0x224(%rsp)              #  1375  0x6d029  7      
  jg .L_6e600                         #  1376  0x6d030  6      
  addl $0x8, %eax                     #  1377  0x6d036  3      
  nop                                 #  1378  0x6d039  1      
.L_6d8c0:                             #        0x6d03a  0      
  leal 0x270(%rsp), %edx              #  1379  0x6d03a  7      
  movl %eax, %eax                     #  1380  0x6d041  2      
  movl %edx, (%r15,%rax,1)            #  1381  0x6d043  4      
  movl 0x144(%rsp), %edx              #  1382  0x6d047  7      
  movl %eax, %eax                     #  1383  0x6d04e  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1384  0x6d050  5      
  nop                                 #  1385  0x6d055  1      
  addl %edx, 0x228(%rsp)              #  1386  0x6d056  7      
  nop                                 #  1387  0x6d05d  1      
  nop                                 #  1388  0x6d05e  1      
.L_6d900:                             #        0x6d05f  0      
  movl 0x224(%rsp), %edx              #  1389  0x6d05f  7      
  leal 0x8(%rax), %ebx                #  1390  0x6d066  3      
  addl $0x1, %edx                     #  1391  0x6d069  3      
  cmpl $0x7, %edx                     #  1392  0x6d06c  3      
  movl %edx, 0x224(%rsp)              #  1393  0x6d06f  7      
  jle .L_6c2a0                        #  1394  0x6d076  6      
  nop                                 #  1395  0x6d07c  1      
.L_6d920:                             #        0x6d07d  0      
  movl 0xc8(%rsp), %esi               #  1396  0x6d07d  7      
  leal 0x220(%rsp), %edx              #  1397  0x6d084  7      
  movl %r14d, %edi                    #  1398  0x6d08b  3      
  nop                                 #  1399  0x6d08e  1      
  callq .__ssprint_r                  #  1400  0x6d08f  5      
  testl %eax, %eax                    #  1401  0x6d094  2      
  jne .L_6d2c0                        #  1402  0x6d096  6      
  leal 0x1e0(%rsp), %ebx              #  1403  0x6d09c  7      
  jmpq .L_6c2a0                       #  1404  0x6d0a3  5      
  nop                                 #  1405  0x6d0a8  1      
.L_6d960:                             #        0x6d0a9  0      
  movl 0xc8(%rsp), %esi               #  1406  0x6d0a9  7      
  leal 0x220(%rsp), %edx              #  1407  0x6d0b0  7      
  movl %r14d, %edi                    #  1408  0x6d0b7  3      
  nop                                 #  1409  0x6d0ba  1      
  callq .__ssprint_r                  #  1410  0x6d0bb  5      
  testl %eax, %eax                    #  1411  0x6d0c0  2      
  je .L_6c4a0                         #  1412  0x6d0c2  6      
  jmpq .L_6d2c0                       #  1413  0x6d0c8  5      
  nop                                 #  1414  0x6d0cd  1      
  nop                                 #  1415  0x6d0ce  1      
.L_6d9a0:                             #        0x6d0cf  0      
  movl 0xc8(%rsp), %esi               #  1416  0x6d0cf  7      
  leal 0x220(%rsp), %edx              #  1417  0x6d0d6  7      
  movl %r14d, %edi                    #  1418  0x6d0dd  3      
  nop                                 #  1419  0x6d0e0  1      
  callq .__ssprint_r                  #  1420  0x6d0e1  5      
  testl %eax, %eax                    #  1421  0x6d0e6  2      
  jne .L_6d2c0                        #  1422  0x6d0e8  6      
  leal 0x1e0(%rsp), %ebx              #  1423  0x6d0ee  7      
  jmpq .L_6c240                       #  1424  0x6d0f5  5      
  nop                                 #  1425  0x6d0fa  1      
.L_6d9e0:                             #        0x6d0fb  0      
  movl 0xc8(%rsp), %esi               #  1426  0x6d0fb  7      
  leal 0x220(%rsp), %edx              #  1427  0x6d102  7      
  movl %r14d, %edi                    #  1428  0x6d109  3      
  nop                                 #  1429  0x6d10c  1      
  callq .__ssprint_r                  #  1430  0x6d10d  5      
  testl %eax, %eax                    #  1431  0x6d112  2      
  jne .L_6d2c0                        #  1432  0x6d114  6      
  leal 0x1e0(%rsp), %ebx              #  1433  0x6d11a  7      
  jmpq .L_6c0c0                       #  1434  0x6d121  5      
  nop                                 #  1435  0x6d126  1      
.L_6da20:                             #        0x6d127  0      
  movl 0xc8(%rsp), %esi               #  1436  0x6d127  7      
  leal 0x220(%rsp), %edx              #  1437  0x6d12e  7      
  movl %r14d, %edi                    #  1438  0x6d135  3      
  nop                                 #  1439  0x6d138  1      
  callq .__ssprint_r                  #  1440  0x6d139  5      
  testl %eax, %eax                    #  1441  0x6d13e  2      
  jne .L_6d2c0                        #  1442  0x6d140  6      
  leal 0x1e0(%rsp), %ebx              #  1443  0x6d146  7      
  jmpq .L_6c060                       #  1444  0x6d14d  5      
  nop                                 #  1445  0x6d152  1      
.L_6da60:                             #        0x6d153  0      
  movq 0xc8(%rsp), %rcx               #  1446  0x6d153  8      
  movl %ecx, %ecx                     #  1447  0x6d15b  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  1448  0x6d15d  6      
  jmpq .L_6d300                       #  1449  0x6d163  5      
  nop                                 #  1450  0x6d168  1      
.L_6da80:                             #        0x6d169  0      
  movl 0x28c(%rsp), %r8d              #  1451  0x6d169  8      
  testl %r8d, %r8d                    #  1452  0x6d171  3      
  jle .L_6f700                        #  1453  0x6d174  6      
  movl 0x118(%rsp), %eax              #  1454  0x6d17a  7      
  addl 0xb0(%rsp), %eax               #  1455  0x6d181  7      
  nop                                 #  1456  0x6d188  1      
  movl %eax, %r8d                     #  1457  0x6d189  3      
  subl 0xb0(%rsp), %r8d               #  1458  0x6d18c  8      
  movq %rax, 0xd8(%rsp)               #  1459  0x6d194  8      
  cmpl 0x11c(%rsp), %r8d              #  1460  0x6d19c  8      
  nop                                 #  1461  0x6d1a4  1      
  movl %eax, 0xc4(%rsp)               #  1462  0x6d1a5  7      
  cmovgl 0x11c(%rsp), %r8d            #  1463  0x6d1ac  9      
  testl %r8d, %r8d                    #  1464  0x6d1b5  3      
  jle .L_6db20                        #  1465  0x6d1b8  6      
  movl %ebx, %ebx                     #  1466  0x6d1be  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1467  0x6d1c0  5      
  nop                                 #  1468  0x6d1c5  1      
  movl 0x224(%rsp), %eax              #  1469  0x6d1c6  7      
  movl 0xb0(%rsp), %edx               #  1470  0x6d1cd  7      
  addl %r8d, 0x228(%rsp)              #  1471  0x6d1d4  8      
  addl $0x1, %eax                     #  1472  0x6d1dc  3      
  cmpl $0x7, %eax                     #  1473  0x6d1df  3      
  nop                                 #  1474  0x6d1e2  1      
  movl %ebx, %ebx                     #  1475  0x6d1e3  2      
  movl %edx, (%r15,%rbx,1)            #  1476  0x6d1e5  4      
  movl %eax, 0x224(%rsp)              #  1477  0x6d1e9  7      
  jg .L_6ff20                         #  1478  0x6d1f0  6      
  addl $0x8, %ebx                     #  1479  0x6d1f6  3      
  nop                                 #  1480  0x6d1f9  1      
.L_6db20:                             #        0x6d1fa  0      
  movl 0x11c(%rsp), %esi              #  1481  0x6d1fa  7      
  xorl %ecx, %ecx                     #  1482  0x6d201  2      
  testl %r8d, %r8d                    #  1483  0x6d203  3      
  cmovnsl %r8d, %ecx                  #  1484  0x6d206  4      
  subl %ecx, %esi                     #  1485  0x6d20a  2      
  testl %esi, %esi                    #  1486  0x6d20c  2      
  movl %esi, %ecx                     #  1487  0x6d20e  2      
  jle .L_6e000                        #  1488  0x6d210  6      
  cmpl $0x10, %esi                    #  1489  0x6d216  3      
  nop                                 #  1490  0x6d219  1      
  jle .L_6f2e0                        #  1491  0x6d21a  6      
  leal 0x220(%rsp), %eax              #  1492  0x6d220  7      
  movl %r13d, 0xfc(%rsp)              #  1493  0x6d227  8      
  movq %r12, %r13                     #  1494  0x6d22f  3      
  movq 0xc8(%rsp), %r12               #  1495  0x6d232  8      
  movq %rax, 0x28(%rsp)               #  1496  0x6d23a  5      
  movq %rbx, %rax                     #  1497  0x6d23f  3      
  movl %esi, %ebx                     #  1498  0x6d242  2      
  jmpq .L_6dbc0                       #  1499  0x6d244  5      
  nop                                 #  1500  0x6d249  1      
  nop                                 #  1501  0x6d24a  1      
.L_6db80:                             #        0x6d24b  0      
  addl $0x8, %eax                     #  1502  0x6d24b  3      
  nop                                 #  1503  0x6d24e  1      
  nop                                 #  1504  0x6d24f  1      
.L_6dba0:                             #        0x6d250  0      
  subl $0x10, %ebx                    #  1505  0x6d250  3      
  cmpl $0x10, %ebx                    #  1506  0x6d253  3      
  jle .L_6f2c0                        #  1507  0x6d256  6      
  nop                                 #  1508  0x6d25c  1      
  nop                                 #  1509  0x6d25d  1      
.L_6dbc0:                             #        0x6d25e  0      
  movl %eax, %eax                     #  1510  0x6d25e  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1511  0x6d260  9      
  movl 0x224(%rsp), %edx              #  1512  0x6d269  7      
  addl $0x10, 0x228(%rsp)             #  1513  0x6d270  8      
  nop                                 #  1514  0x6d278  1      
  movl %eax, %eax                     #  1515  0x6d279  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1516  0x6d27b  8      
  addl $0x1, %edx                     #  1517  0x6d283  3      
  cmpl $0x7, %edx                     #  1518  0x6d286  3      
  movl %edx, 0x224(%rsp)              #  1519  0x6d289  7      
  jle .L_6db80                        #  1520  0x6d290  6      
  movl 0x28(%rsp), %edx               #  1521  0x6d296  4      
  movl %r12d, %esi                    #  1522  0x6d29a  3      
  movl %r14d, %edi                    #  1523  0x6d29d  3      
  nop                                 #  1524  0x6d2a0  1      
  nop                                 #  1525  0x6d2a1  1      
  callq .__ssprint_r                  #  1526  0x6d2a2  5      
  testl %eax, %eax                    #  1527  0x6d2a7  2      
  jne .L_6d2c0                        #  1528  0x6d2a9  6      
  leal 0x1e0(%rsp), %eax              #  1529  0x6d2af  7      
  jmpq .L_6dba0                       #  1530  0x6d2b6  5      
  nop                                 #  1531  0x6d2bb  1      
.L_6dc40:                             #        0x6d2bc  0      
  cmpq $0x9, %rcx                     #  1532  0x6d2bc  4      
  ja .L_6e800                         #  1533  0x6d2c0  6      
  movq 0x158(%rsp), %rsi              #  1534  0x6d2c6  8      
  addl $0x30, %ecx                    #  1535  0x6d2ce  3      
  movq %rsi, 0xb0(%rsp)               #  1536  0x6d2d1  8      
  nop                                 #  1537  0x6d2d9  1      
  movl %esi, %esi                     #  1538  0x6d2da  2      
  movb %cl, (%r15,%rsi,1)             #  1539  0x6d2dc  4      
  movl $0x1, 0xc4(%rsp)               #  1540  0x6d2e0  11     
  movq 0xf0(%rsp), %rsi               #  1541  0x6d2eb  8      
  jmpq .L_6c920                       #  1542  0x6d2f3  5      
  xchgw %ax, %ax                      #  1543  0x6d2f8  3      
.L_6dc80:                             #        0x6d2fb  0      
  movq 0x108(%rsp), %rsi              #  1544  0x6d2fb  8      
  movq %rsi, 0xb0(%rsp)               #  1545  0x6d303  8      
  movq 0x148(%rsp), %rsi              #  1546  0x6d30b  8      
  movq 0xb0(%rsp), %rax               #  1547  0x6d313  8      
.L_6dca0:                             #        0x6d31b  0      
  movl %ecx, %edx                     #  1548  0x6d31b  2      
  shrq $0x4, %rcx                     #  1549  0x6d31d  4      
  subl $0x1, %eax                     #  1550  0x6d321  3      
  andl $0xf, %edx                     #  1551  0x6d324  3      
  addl %esi, %edx                     #  1552  0x6d327  2      
  testq %rcx, %rcx                    #  1553  0x6d329  3      
  movl %edx, %edx                     #  1554  0x6d32c  2      
  movzbl (%r15,%rdx,1), %edx          #  1555  0x6d32e  5      
  movl %eax, %eax                     #  1556  0x6d333  2      
  movb %dl, (%r15,%rax,1)             #  1557  0x6d335  4      
  xchgw %ax, %ax                      #  1558  0x6d339  3      
  jne .L_6dca0                        #  1559  0x6d33c  6      
  movl 0x108(%rsp), %edx              #  1560  0x6d342  7      
  movq %rax, 0xb0(%rsp)               #  1561  0x6d349  8      
  movq 0xf0(%rsp), %rsi               #  1562  0x6d351  8      
  subl %eax, %edx                     #  1563  0x6d359  2      
  nop                                 #  1564  0x6d35b  1      
  movl %edx, 0xc4(%rsp)               #  1565  0x6d35c  7      
  jmpq .L_6c920                       #  1566  0x6d363  5      
  nop                                 #  1567  0x6d368  1      
  nop                                 #  1568  0x6d369  1      
.L_6dd00:                             #        0x6d36a  0      
  movl 0xc8(%rsp), %esi               #  1569  0x6d36a  7      
  leal 0x220(%rsp), %edx              #  1570  0x6d371  7      
  movl %r14d, %edi                    #  1571  0x6d378  3      
  nop                                 #  1572  0x6d37b  1      
  callq .__ssprint_r                  #  1573  0x6d37c  5      
  testl %eax, %eax                    #  1574  0x6d381  2      
  jne .L_6d2c0                        #  1575  0x6d383  6      
  movzbl 0x29f(%rsp), %eax            #  1576  0x6d389  8      
  leal 0x1e0(%rsp), %ebx              #  1577  0x6d391  7      
  jmpq .L_6c000                       #  1578  0x6d398  5      
  nop                                 #  1579  0x6d39d  1      
.L_6dd40:                             #        0x6d39e  0      
  testb $0x10, %r13b                  #  1580  0x6d39e  4      
  je .L_6eb80                         #  1581  0x6d3a2  6      
  movq 0xe0(%rsp), %rdx               #  1582  0x6d3a8  8      
  movl %edx, %edx                     #  1583  0x6d3b0  2      
  movl (%r15,%rdx,1), %eax            #  1584  0x6d3b2  4      
  cmpl $0x2f, %eax                    #  1585  0x6d3b6  3      
  nop                                 #  1586  0x6d3b9  1      
  ja .L_6fa00                         #  1587  0x6d3ba  6      
  movq %rdx, %rcx                     #  1588  0x6d3c0  3      
  movl %edx, %edx                     #  1589  0x6d3c3  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1590  0x6d3c5  5      
  addl %eax, %edx                     #  1591  0x6d3ca  2      
  addl $0x8, %eax                     #  1592  0x6d3cc  3      
  movl %ecx, %ecx                     #  1593  0x6d3cf  2      
  movl %eax, (%r15,%rcx,1)            #  1594  0x6d3d1  4      
  nop                                 #  1595  0x6d3d5  1      
.L_6dd80:                             #        0x6d3d6  0      
  movl %edx, %edx                     #  1596  0x6d3d6  2      
  movslq (%r15,%rdx,1), %rcx          #  1597  0x6d3d8  4      
  jmpq .L_6cd60                       #  1598  0x6d3dc  5      
  nop                                 #  1599  0x6d3e1  1      
  nop                                 #  1600  0x6d3e2  1      
.L_6dda0:                             #        0x6d3e3  0      
  movl 0x118(%rsp), %ebx              #  1601  0x6d3e3  7      
  subl $0x1, %ebx                     #  1602  0x6d3ea  3      
  testl %ebx, %ebx                    #  1603  0x6d3ed  2      
  jle .L_6d8c0                        #  1604  0x6d3ef  6      
  cmpl $0x10, %ebx                    #  1605  0x6d3f5  3      
  jle .L_6e9c0                        #  1606  0x6d3f8  6      
  nop                                 #  1607  0x6d3fe  1      
  leal 0x220(%rsp), %esi              #  1608  0x6d3ff  7      
  movl %r13d, 0xb0(%rsp)              #  1609  0x6d406  8      
  movq %r12, %r13                     #  1610  0x6d40e  3      
  movq 0xc8(%rsp), %r12               #  1611  0x6d411  8      
  movq %rsi, 0x10(%rsp)               #  1612  0x6d419  5      
  nop                                 #  1613  0x6d41e  1      
  jmpq .L_6de40                       #  1614  0x6d41f  5      
  nop                                 #  1615  0x6d424  1      
  nop                                 #  1616  0x6d425  1      
.L_6de00:                             #        0x6d426  0      
  addl $0x8, %eax                     #  1617  0x6d426  3      
  nop                                 #  1618  0x6d429  1      
  nop                                 #  1619  0x6d42a  1      
.L_6de20:                             #        0x6d42b  0      
  subl $0x10, %ebx                    #  1620  0x6d42b  3      
  cmpl $0x10, %ebx                    #  1621  0x6d42e  3      
  jle .L_6e9a0                        #  1622  0x6d431  6      
  nop                                 #  1623  0x6d437  1      
  nop                                 #  1624  0x6d438  1      
.L_6de40:                             #        0x6d439  0      
  movl %eax, %eax                     #  1625  0x6d439  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1626  0x6d43b  9      
  movl 0x224(%rsp), %edx              #  1627  0x6d444  7      
  addl $0x10, 0x228(%rsp)             #  1628  0x6d44b  8      
  nop                                 #  1629  0x6d453  1      
  movl %eax, %eax                     #  1630  0x6d454  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1631  0x6d456  8      
  addl $0x1, %edx                     #  1632  0x6d45e  3      
  cmpl $0x7, %edx                     #  1633  0x6d461  3      
  movl %edx, 0x224(%rsp)              #  1634  0x6d464  7      
  jle .L_6de00                        #  1635  0x6d46b  6      
  movl 0x10(%rsp), %edx               #  1636  0x6d471  4      
  movl %r12d, %esi                    #  1637  0x6d475  3      
  movl %r14d, %edi                    #  1638  0x6d478  3      
  nop                                 #  1639  0x6d47b  1      
  nop                                 #  1640  0x6d47c  1      
  callq .__ssprint_r                  #  1641  0x6d47d  5      
  testl %eax, %eax                    #  1642  0x6d482  2      
  jne .L_6d2c0                        #  1643  0x6d484  6      
  leal 0x1e0(%rsp), %eax              #  1644  0x6d48a  7      
  jmpq .L_6de20                       #  1645  0x6d491  5      
  nop                                 #  1646  0x6d496  1      
.L_6dec0:                             #        0x6d497  0      
  testb $0x10, %r13b                  #  1647  0x6d497  4      
  je .L_6f240                         #  1648  0x6d49b  6      
  movq 0xe0(%rsp), %rdx               #  1649  0x6d4a1  8      
  movl %edx, %edx                     #  1650  0x6d4a9  2      
  movl (%r15,%rdx,1), %eax            #  1651  0x6d4ab  4      
  cmpl $0x2f, %eax                    #  1652  0x6d4af  3      
  nop                                 #  1653  0x6d4b2  1      
  ja .L_6f9c0                         #  1654  0x6d4b3  6      
  movq %rdx, %rcx                     #  1655  0x6d4b9  3      
  movl %edx, %edx                     #  1656  0x6d4bc  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1657  0x6d4be  5      
  addl %eax, %edx                     #  1658  0x6d4c3  2      
  addl $0x8, %eax                     #  1659  0x6d4c5  3      
  movl %ecx, %ecx                     #  1660  0x6d4c8  2      
  movl %eax, (%r15,%rcx,1)            #  1661  0x6d4ca  4      
  nop                                 #  1662  0x6d4ce  1      
.L_6df00:                             #        0x6d4cf  0      
  movl %edx, %edx                     #  1663  0x6d4cf  2      
  movl (%r15,%rdx,1), %ecx            #  1664  0x6d4d1  4      
  movl $0x1, %eax                     #  1665  0x6d4d5  5      
  testq %rcx, %rcx                    #  1666  0x6d4da  3      
  setne %sil                          #  1667  0x6d4dd  4      
  jmpq .L_6c840                       #  1668  0x6d4e1  5      
  nop                                 #  1669  0x6d4e6  1      
.L_6df20:                             #        0x6d4e7  0      
  testb $0x10, %r13b                  #  1670  0x6d4e7  4      
  je .L_6f160                         #  1671  0x6d4eb  6      
  movq 0xe0(%rsp), %rdx               #  1672  0x6d4f1  8      
  movl %edx, %edx                     #  1673  0x6d4f9  2      
  movl (%r15,%rdx,1), %eax            #  1674  0x6d4fb  4      
  cmpl $0x2f, %eax                    #  1675  0x6d4ff  3      
  nop                                 #  1676  0x6d502  1      
  ja .L_6f9a0                         #  1677  0x6d503  6      
  movq %rdx, %rcx                     #  1678  0x6d509  3      
  movl %edx, %edx                     #  1679  0x6d50c  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1680  0x6d50e  5      
  addl %eax, %edx                     #  1681  0x6d513  2      
  addl $0x8, %eax                     #  1682  0x6d515  3      
  movl %ecx, %ecx                     #  1683  0x6d518  2      
  movl %eax, (%r15,%rcx,1)            #  1684  0x6d51a  4      
  nop                                 #  1685  0x6d51e  1      
.L_6df60:                             #        0x6d51f  0      
  movl %edx, %edx                     #  1686  0x6d51f  2      
  movl (%r15,%rdx,1), %ecx            #  1687  0x6d521  4      
  jmpq .L_6cf00                       #  1688  0x6d525  5      
  nop                                 #  1689  0x6d52a  1      
  nop                                 #  1690  0x6d52b  1      
.L_6df80:                             #        0x6d52c  0      
  movq %r13, %r12                     #  1691  0x6d52c  3      
  movl 0xb0(%rsp), %r13d              #  1692  0x6d52f  8      
  movl %ebx, %ecx                     #  1693  0x6d537  2      
  movq %rax, %rbx                     #  1694  0x6d539  3      
  nop                                 #  1695  0x6d53c  1      
  nop                                 #  1696  0x6d53d  1      
.L_6dfa0:                             #        0x6d53e  0      
  movl %ebx, %ebx                     #  1697  0x6d53e  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1698  0x6d540  5      
  movl %ebx, %ebx                     #  1699  0x6d545  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1700  0x6d547  8      
  addl %ecx, 0x228(%rsp)              #  1701  0x6d54f  7      
  jmpq .L_6c280                       #  1702  0x6d556  5      
  nop                                 #  1703  0x6d55b  1      
.L_6dfc0:                             #        0x6d55c  0      
  movl 0xc8(%rsp), %esi               #  1704  0x6d55c  7      
  leal 0x220(%rsp), %edx              #  1705  0x6d563  7      
  movl %r14d, %edi                    #  1706  0x6d56a  3      
  nop                                 #  1707  0x6d56d  1      
  callq .__ssprint_r                  #  1708  0x6d56e  5      
  testl %eax, %eax                    #  1709  0x6d573  2      
  jne .L_6d2c0                        #  1710  0x6d575  6      
  leal 0x1e0(%rsp), %ebx              #  1711  0x6d57b  7      
  xchgw %ax, %ax                      #  1712  0x6d582  3      
  nop                                 #  1713  0x6d585  1      
.L_6e000:                             #        0x6d586  0      
  movl 0x11c(%rsp), %edx              #  1714  0x6d586  7      
  addl 0xb0(%rsp), %edx               #  1715  0x6d58d  7      
  testl $0x400, %r13d                 #  1716  0x6d594  7      
  movq %rdx, 0xb0(%rsp)               #  1717  0x6d59b  8      
  nop                                 #  1718  0x6d5a3  1      
  je .L_6e320                         #  1719  0x6d5a4  6      
  movl 0x12c(%rsp), %esi              #  1720  0x6d5aa  7      
  testl %esi, %esi                    #  1721  0x6d5b1  2      
  jle .L_70ba0                        #  1722  0x6d5b3  6      
  nop                                 #  1723  0x6d5b9  1      
.L_6e040:                             #        0x6d5ba  0      
  leal 0x220(%rsp), %ecx              #  1724  0x6d5ba  7      
  movl %r13d, 0xfc(%rsp)              #  1725  0x6d5c1  8      
  movq %r12, %r13                     #  1726  0x6d5c9  3      
  movq 0xc8(%rsp), %r12               #  1727  0x6d5cc  8      
  movq %rbx, %rax                     #  1728  0x6d5d4  3      
  nop                                 #  1729  0x6d5d7  1      
  movq %rcx, 0x20(%rsp)               #  1730  0x6d5d8  5      
  nop                                 #  1731  0x6d5dd  1      
  nop                                 #  1732  0x6d5de  1      
.L_6e080:                             #        0x6d5df  0      
  movl 0x114(%rsp), %ebx              #  1733  0x6d5df  7      
  testl %ebx, %ebx                    #  1734  0x6d5e6  2      
  je .L_6eb20                         #  1735  0x6d5e8  6      
  subl $0x1, 0x114(%rsp)              #  1736  0x6d5ee  8      
  nop                                 #  1737  0x6d5f6  1      
.L_6e0a0:                             #        0x6d5f7  0      
  movl 0x140(%rsp), %edx              #  1738  0x6d5f7  7      
  movl 0x150(%rsp), %esi              #  1739  0x6d5fe  7      
  movl %eax, %eax                     #  1740  0x6d605  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1741  0x6d607  5      
  addl %edx, 0x228(%rsp)              #  1742  0x6d60c  7      
  nop                                 #  1743  0x6d613  1      
  movl 0x224(%rsp), %edx              #  1744  0x6d614  7      
  movl %eax, %eax                     #  1745  0x6d61b  2      
  movl %esi, (%r15,%rax,1)            #  1746  0x6d61d  4      
  addl $0x1, %edx                     #  1747  0x6d621  3      
  cmpl $0x7, %edx                     #  1748  0x6d624  3      
  movl %edx, 0x224(%rsp)              #  1749  0x6d627  7      
  jg .L_6ea20                         #  1750  0x6d62e  6      
  addl $0x8, %eax                     #  1751  0x6d634  3      
  nop                                 #  1752  0x6d637  1      
  nop                                 #  1753  0x6d638  1      
.L_6e100:                             #        0x6d639  0      
  movq 0xf0(%rsp), %rbx               #  1754  0x6d639  8      
  movl 0xc4(%rsp), %ecx               #  1755  0x6d641  7      
  subl 0xb0(%rsp), %ecx               #  1756  0x6d648  7      
  movl %ebx, %ebx                     #  1757  0x6d64f  2      
  movsbl (%r15,%rbx,1), %edx          #  1758  0x6d651  5      
  cmpl %ecx, %edx                     #  1759  0x6d656  2      
  nop                                 #  1760  0x6d658  1      
  cmovlel %edx, %ecx                  #  1761  0x6d659  3      
  testl %ecx, %ecx                    #  1762  0x6d65c  2      
  jle .L_6e180                        #  1763  0x6d65e  6      
  movl %eax, %eax                     #  1764  0x6d664  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1765  0x6d666  5      
  movl 0x224(%rsp), %edx              #  1766  0x6d66b  7      
  movl 0xb0(%rsp), %esi               #  1767  0x6d672  7      
  nop                                 #  1768  0x6d679  1      
  addl %ecx, 0x228(%rsp)              #  1769  0x6d67a  7      
  addl $0x1, %edx                     #  1770  0x6d681  3      
  cmpl $0x7, %edx                     #  1771  0x6d684  3      
  movl %eax, %eax                     #  1772  0x6d687  2      
  movl %esi, (%r15,%rax,1)            #  1773  0x6d689  4      
  movl %edx, 0x224(%rsp)              #  1774  0x6d68d  7      
  jg .L_6f660                         #  1775  0x6d694  6      
  movl %ebx, %ebx                     #  1776  0x6d69a  2      
  movsbl (%r15,%rbx,1), %edx          #  1777  0x6d69c  5      
  addl $0x8, %eax                     #  1778  0x6d6a1  3      
  nop                                 #  1779  0x6d6a4  1      
  nop                                 #  1780  0x6d6a5  1      
.L_6e180:                             #        0x6d6a6  0      
  testl %ecx, %ecx                    #  1781  0x6d6a6  2      
  movl $0x0, %ebx                     #  1782  0x6d6a8  5      
  cmovsl %ebx, %ecx                   #  1783  0x6d6ad  3      
  movl %edx, %ebx                     #  1784  0x6d6b0  2      
  subl %ecx, %ebx                     #  1785  0x6d6b2  2      
  testl %ebx, %ebx                    #  1786  0x6d6b4  2      
  jg .L_6e1e0                         #  1787  0x6d6b6  6      
  jmpq .L_6e2a0                       #  1788  0x6d6bc  5      
  nop                                 #  1789  0x6d6c1  1      
.L_6e1a0:                             #        0x6d6c2  0      
  addl $0x8, %eax                     #  1790  0x6d6c2  3      
  nop                                 #  1791  0x6d6c5  1      
  nop                                 #  1792  0x6d6c6  1      
.L_6e1c0:                             #        0x6d6c7  0      
  subl $0x10, %ebx                    #  1793  0x6d6c7  3      
  nop                                 #  1794  0x6d6ca  1      
  nop                                 #  1795  0x6d6cb  1      
.L_6e1e0:                             #        0x6d6cc  0      
  cmpl $0x10, %ebx                    #  1796  0x6d6cc  3      
  jle .L_6e540                        #  1797  0x6d6cf  6      
  movl %eax, %eax                     #  1798  0x6d6d5  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1799  0x6d6d7  9      
  movl 0x224(%rsp), %edx              #  1800  0x6d6e0  7      
  nop                                 #  1801  0x6d6e7  1      
  addl $0x10, 0x228(%rsp)             #  1802  0x6d6e8  8      
  movl %eax, %eax                     #  1803  0x6d6f0  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1804  0x6d6f2  8      
  addl $0x1, %edx                     #  1805  0x6d6fa  3      
  cmpl $0x7, %edx                     #  1806  0x6d6fd  3      
  movl %edx, 0x224(%rsp)              #  1807  0x6d700  7      
  nop                                 #  1808  0x6d707  1      
  jle .L_6e1a0                        #  1809  0x6d708  6      
  movl 0x20(%rsp), %edx               #  1810  0x6d70e  4      
  movl %r12d, %esi                    #  1811  0x6d712  3      
  movl %r14d, %edi                    #  1812  0x6d715  3      
  nop                                 #  1813  0x6d718  1      
  callq .__ssprint_r                  #  1814  0x6d719  5      
  testl %eax, %eax                    #  1815  0x6d71e  2      
  jne .L_6d2c0                        #  1816  0x6d720  6      
  leal 0x1e0(%rsp), %eax              #  1817  0x6d726  7      
  jmpq .L_6e1c0                       #  1818  0x6d72d  5      
  nop                                 #  1819  0x6d732  1      
.L_6e260:                             #        0x6d733  0      
  movl 0x20(%rsp), %edx               #  1820  0x6d733  4      
  movl %r12d, %esi                    #  1821  0x6d737  3      
  movl %r14d, %edi                    #  1822  0x6d73a  3      
  xchgw %ax, %ax                      #  1823  0x6d73d  3      
  nop                                 #  1824  0x6d740  1      
  callq .__ssprint_r                  #  1825  0x6d741  5      
  testl %eax, %eax                    #  1826  0x6d746  2      
  jne .L_6d2c0                        #  1827  0x6d748  6      
  movq 0xf0(%rsp), %rcx               #  1828  0x6d74e  8      
  leal 0x1e0(%rsp), %eax              #  1829  0x6d756  7      
  movl %ecx, %ecx                     #  1830  0x6d75d  2      
  movsbl (%r15,%rcx,1), %edx          #  1831  0x6d75f  5      
  xchgw %ax, %ax                      #  1832  0x6d764  3      
.L_6e2a0:                             #        0x6d767  0      
  addl 0xb0(%rsp), %edx               #  1833  0x6d767  7      
  movl 0x114(%rsp), %ecx              #  1834  0x6d76e  7      
  testl %ecx, %ecx                    #  1835  0x6d775  2      
  movq %rdx, 0xb0(%rsp)               #  1836  0x6d777  8      
  jg .L_6e080                         #  1837  0x6d77f  6      
  xchgw %ax, %ax                      #  1838  0x6d785  3      
  movl 0x12c(%rsp), %edx              #  1839  0x6d788  7      
  testl %edx, %edx                    #  1840  0x6d78f  2      
  jg .L_6e080                         #  1841  0x6d791  6      
  movq %r13, %r12                     #  1842  0x6d797  3      
  movl 0xfc(%rsp), %r13d              #  1843  0x6d79a  8      
  movq %rax, %rbx                     #  1844  0x6d7a2  3      
  nop                                 #  1845  0x6d7a5  1      
.L_6e2e0:                             #        0x6d7a6  0      
  movl 0xb0(%rsp), %esi               #  1846  0x6d7a6  7      
  cmpl %esi, 0xd8(%rsp)               #  1847  0x6d7ad  7      
  movq 0xd8(%rsp), %rax               #  1848  0x6d7b4  8      
  cmovaeq 0xb0(%rsp), %rax            #  1849  0x6d7bc  9      
  nop                                 #  1850  0x6d7c5  1      
  movq %rax, 0xb0(%rsp)               #  1851  0x6d7c6  8      
  nop                                 #  1852  0x6d7ce  1      
  nop                                 #  1853  0x6d7cf  1      
.L_6e320:                             #        0x6d7d0  0      
  movl 0x28c(%rsp), %ecx              #  1854  0x6d7d0  7      
  cmpl 0x118(%rsp), %ecx              #  1855  0x6d7d7  7      
  jge .L_6fc80                        #  1856  0x6d7de  6      
  nop                                 #  1857  0x6d7e4  1      
.L_6e340:                             #        0x6d7e5  0      
  movl 0x13c(%rsp), %ecx              #  1858  0x6d7e5  7      
  movl 0x120(%rsp), %edx              #  1859  0x6d7ec  7      
  movl %ebx, %ebx                     #  1860  0x6d7f3  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1861  0x6d7f5  5      
  movl 0x224(%rsp), %eax              #  1862  0x6d7fa  7      
  nop                                 #  1863  0x6d801  1      
  addl %ecx, 0x228(%rsp)              #  1864  0x6d802  7      
  movl %ebx, %ebx                     #  1865  0x6d809  2      
  movl %edx, (%r15,%rbx,1)            #  1866  0x6d80b  4      
  addl $0x1, %eax                     #  1867  0x6d80f  3      
  cmpl $0x7, %eax                     #  1868  0x6d812  3      
  movl %eax, 0x224(%rsp)              #  1869  0x6d815  7      
  jg .L_6fd60                         #  1870  0x6d81c  6      
  movl 0x28c(%rsp), %ecx              #  1871  0x6d822  7      
  addl $0x8, %ebx                     #  1872  0x6d829  3      
  nop                                 #  1873  0x6d82c  1      
  nop                                 #  1874  0x6d82d  1      
.L_6e3a0:                             #        0x6d82e  0      
  movl 0xc4(%rsp), %r8d               #  1875  0x6d82e  8      
  movl 0x118(%rsp), %esi              #  1876  0x6d836  7      
  subl 0xb0(%rsp), %r8d               #  1877  0x6d83d  8      
  subl %ecx, %esi                     #  1878  0x6d845  2      
  movl %esi, %ecx                     #  1879  0x6d847  2      
  cmpl %r8d, %esi                     #  1880  0x6d849  3      
  xchgw %ax, %ax                      #  1881  0x6d84c  3      
  cmovlel %esi, %r8d                  #  1882  0x6d84f  4      
  testl %r8d, %r8d                    #  1883  0x6d853  3      
  jle .L_6e420                        #  1884  0x6d856  6      
  movl 0xb0(%rsp), %eax               #  1885  0x6d85c  7      
  movl %ebx, %ebx                     #  1886  0x6d863  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1887  0x6d865  5      
  addl %r8d, 0x228(%rsp)              #  1888  0x6d86a  8      
  nop                                 #  1889  0x6d872  1      
  movl %ebx, %ebx                     #  1890  0x6d873  2      
  movl %eax, (%r15,%rbx,1)            #  1891  0x6d875  4      
  movl 0x224(%rsp), %eax              #  1892  0x6d879  7      
  addl $0x1, %eax                     #  1893  0x6d880  3      
  cmpl $0x7, %eax                     #  1894  0x6d883  3      
  movl %eax, 0x224(%rsp)              #  1895  0x6d886  7      
  jg .L_70660                         #  1896  0x6d88d  6      
  movl 0x118(%rsp), %ecx              #  1897  0x6d893  7      
  subl 0x28c(%rsp), %ecx              #  1898  0x6d89a  7      
  addl $0x8, %ebx                     #  1899  0x6d8a1  3      
  nop                                 #  1900  0x6d8a4  1      
.L_6e420:                             #        0x6d8a5  0      
  xorl %eax, %eax                     #  1901  0x6d8a5  2      
  testl %r8d, %r8d                    #  1902  0x6d8a7  3      
  cmovnsl %r8d, %eax                  #  1903  0x6d8aa  4      
  subl %eax, %ecx                     #  1904  0x6d8ae  2      
  testl %ecx, %ecx                    #  1905  0x6d8b0  2      
  jle .L_6c2a0                        #  1906  0x6d8b2  6      
  cmpl $0x10, %ecx                    #  1907  0x6d8b8  3      
  jle .L_6dfa0                        #  1908  0x6d8bb  6      
  nop                                 #  1909  0x6d8c1  1      
  leal 0x220(%rsp), %edx              #  1910  0x6d8c2  7      
  movq %rbx, %rax                     #  1911  0x6d8c9  3      
  movl %r13d, 0xb0(%rsp)              #  1912  0x6d8cc  8      
  movl %ecx, %ebx                     #  1913  0x6d8d4  2      
  movq %r12, %r13                     #  1914  0x6d8d6  3      
  movq 0xc8(%rsp), %r12               #  1915  0x6d8d9  8      
  nop                                 #  1916  0x6d8e1  1      
  movq %rdx, 0x18(%rsp)               #  1917  0x6d8e2  5      
  jmpq .L_6e4c0                       #  1918  0x6d8e7  5      
  nop                                 #  1919  0x6d8ec  1      
  nop                                 #  1920  0x6d8ed  1      
.L_6e480:                             #        0x6d8ee  0      
  addl $0x8, %eax                     #  1921  0x6d8ee  3      
  nop                                 #  1922  0x6d8f1  1      
  nop                                 #  1923  0x6d8f2  1      
.L_6e4a0:                             #        0x6d8f3  0      
  subl $0x10, %ebx                    #  1924  0x6d8f3  3      
  cmpl $0x10, %ebx                    #  1925  0x6d8f6  3      
  jle .L_6df80                        #  1926  0x6d8f9  6      
  nop                                 #  1927  0x6d8ff  1      
  nop                                 #  1928  0x6d900  1      
.L_6e4c0:                             #        0x6d901  0      
  movl %eax, %eax                     #  1929  0x6d901  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1930  0x6d903  9      
  movl 0x224(%rsp), %edx              #  1931  0x6d90c  7      
  addl $0x10, 0x228(%rsp)             #  1932  0x6d913  8      
  nop                                 #  1933  0x6d91b  1      
  movl %eax, %eax                     #  1934  0x6d91c  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1935  0x6d91e  8      
  addl $0x1, %edx                     #  1936  0x6d926  3      
  cmpl $0x7, %edx                     #  1937  0x6d929  3      
  movl %edx, 0x224(%rsp)              #  1938  0x6d92c  7      
  jle .L_6e480                        #  1939  0x6d933  6      
  movl 0x18(%rsp), %edx               #  1940  0x6d939  4      
  movl %r12d, %esi                    #  1941  0x6d93d  3      
  movl %r14d, %edi                    #  1942  0x6d940  3      
  nop                                 #  1943  0x6d943  1      
  nop                                 #  1944  0x6d944  1      
  callq .__ssprint_r                  #  1945  0x6d945  5      
  testl %eax, %eax                    #  1946  0x6d94a  2      
  jne .L_6d2c0                        #  1947  0x6d94c  6      
  leal 0x1e0(%rsp), %eax              #  1948  0x6d952  7      
  jmpq .L_6e4a0                       #  1949  0x6d959  5      
  nop                                 #  1950  0x6d95e  1      
.L_6e540:                             #        0x6d95f  0      
  movl %eax, %eax                     #  1951  0x6d95f  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  1952  0x6d961  5      
  movl 0x224(%rsp), %edx              #  1953  0x6d966  7      
  addl %ebx, 0x228(%rsp)              #  1954  0x6d96d  7      
  movl %eax, %eax                     #  1955  0x6d974  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1956  0x6d976  8      
  nop                                 #  1957  0x6d97e  1      
  addl $0x1, %edx                     #  1958  0x6d97f  3      
  cmpl $0x7, %edx                     #  1959  0x6d982  3      
  movl %edx, 0x224(%rsp)              #  1960  0x6d985  7      
  jg .L_6e260                         #  1961  0x6d98c  6      
  movq 0xf0(%rsp), %rsi               #  1962  0x6d992  8      
  addl $0x8, %eax                     #  1963  0x6d99a  3      
  xchgw %ax, %ax                      #  1964  0x6d99d  3      
  movl %esi, %esi                     #  1965  0x6d9a0  2      
  movsbl (%r15,%rsi,1), %edx          #  1966  0x6d9a2  5      
  jmpq .L_6e2a0                       #  1967  0x6d9a7  5      
  nop                                 #  1968  0x6d9ac  1      
  nop                                 #  1969  0x6d9ad  1      
.L_6e5a0:                             #        0x6d9ae  0      
  testb $0x1, %r13b                   #  1970  0x6d9ae  4      
  jne .L_6d780                        #  1971  0x6d9b2  6      
  movl 0xb0(%rsp), %eax               #  1972  0x6d9b8  7      
  movl %ebx, %ebx                     #  1973  0x6d9bf  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1974  0x6d9c1  9      
  nop                                 #  1975  0x6d9ca  1      
  addl $0x1, 0x228(%rsp)              #  1976  0x6d9cb  8      
  movl %ebx, %ebx                     #  1977  0x6d9d3  2      
  movl %eax, (%r15,%rbx,1)            #  1978  0x6d9d5  4      
  movl 0x224(%rsp), %eax              #  1979  0x6d9d9  7      
  addl $0x1, %eax                     #  1980  0x6d9e0  3      
  cmpl $0x7, %eax                     #  1981  0x6d9e3  3      
  nop                                 #  1982  0x6d9e6  1      
  movl %eax, 0x224(%rsp)              #  1983  0x6d9e7  7      
  jg .L_6e600                         #  1984  0x6d9ee  6      
  leal 0x8(%rbx), %eax                #  1985  0x6d9f4  3      
  jmpq .L_6d8c0                       #  1986  0x6d9f7  5      
  nop                                 #  1987  0x6d9fc  1      
.L_6e600:                             #        0x6d9fd  0      
  movl 0xc8(%rsp), %esi               #  1988  0x6d9fd  7      
  leal 0x220(%rsp), %edx              #  1989  0x6da04  7      
  movl %r14d, %edi                    #  1990  0x6da0b  3      
  nop                                 #  1991  0x6da0e  1      
  callq .__ssprint_r                  #  1992  0x6da0f  5      
  testl %eax, %eax                    #  1993  0x6da14  2      
  jne .L_6d2c0                        #  1994  0x6da16  6      
  leal 0x1e0(%rsp), %eax              #  1995  0x6da1c  7      
  jmpq .L_6d8c0                       #  1996  0x6da23  5      
  nop                                 #  1997  0x6da28  1      
.L_6e640:                             #        0x6da29  0      
  movl 0xc8(%rsp), %esi               #  1998  0x6da29  7      
  leal 0x220(%rsp), %edx              #  1999  0x6da30  7      
  movl %r14d, %edi                    #  2000  0x6da37  3      
  nop                                 #  2001  0x6da3a  1      
  callq .__ssprint_r                  #  2002  0x6da3b  5      
  testl %eax, %eax                    #  2003  0x6da40  2      
  jne .L_6d2c0                        #  2004  0x6da42  6      
  leal 0x1e0(%rsp), %eax              #  2005  0x6da48  7      
  jmpq .L_6d840                       #  2006  0x6da4f  5      
  nop                                 #  2007  0x6da54  1      
.L_6e680:                             #        0x6da55  0      
  movl 0xc8(%rsp), %esi               #  2008  0x6da55  7      
  leal 0x220(%rsp), %edx              #  2009  0x6da5c  7      
  movl %r14d, %edi                    #  2010  0x6da63  3      
  nop                                 #  2011  0x6da66  1      
  callq .__ssprint_r                  #  2012  0x6da67  5      
  testl %eax, %eax                    #  2013  0x6da6c  2      
  jne .L_6d2c0                        #  2014  0x6da6e  6      
  leal 0x1e0(%rsp), %eax              #  2015  0x6da74  7      
  jmpq .L_6d7e0                       #  2016  0x6da7b  5      
  nop                                 #  2017  0x6da80  1      
.L_6e6c0:                             #        0x6da81  0      
  leal 0x250(%rsp), %ecx              #  2018  0x6da81  7      
  movl $0x8, %edx                     #  2019  0x6da88  5      
  xorl %esi, %esi                     #  2020  0x6da8d  2      
  movl %ecx, %edi                     #  2021  0x6da8f  2      
  movq %rcx, 0x98(%rsp)               #  2022  0x6da91  8      
  nop                                 #  2023  0x6da99  1      
  callq .memset                       #  2024  0x6da9a  5      
  movq 0xe0(%rsp), %rax               #  2025  0x6da9f  8      
  movq 0x98(%rsp), %rcx               #  2026  0x6daa7  8      
  movl %eax, %eax                     #  2027  0x6daaf  2      
  movl (%r15,%rax,1), %edx            #  2028  0x6dab1  4      
  cmpl $0x2f, %edx                    #  2029  0x6dab5  3      
  ja .L_6f8e0                         #  2030  0x6dab8  6      
  nop                                 #  2031  0x6dabe  1      
  movq %rax, %rsi                     #  2032  0x6dabf  3      
  movl %eax, %eax                     #  2033  0x6dac2  2      
  movl 0xc(%r15,%rax,1), %eax         #  2034  0x6dac4  5      
  addl %edx, %eax                     #  2035  0x6dac9  2      
  addl $0x8, %edx                     #  2036  0x6dacb  3      
  movl %esi, %esi                     #  2037  0x6dace  2      
  movl %edx, (%r15,%rsi,1)            #  2038  0x6dad0  4      
  nop                                 #  2039  0x6dad4  1      
.L_6e720:                             #        0x6dad5  0      
  movl %eax, %eax                     #  2040  0x6dad5  2      
  movl (%r15,%rax,1), %edx            #  2041  0x6dad7  4      
  movl 0x68(%rsp), %esi               #  2042  0x6dadb  4      
  movl %r14d, %edi                    #  2043  0x6dadf  3      
  nop                                 #  2044  0x6dae2  1      
  callq ._wcrtomb_r                   #  2045  0x6dae3  5      
  cmpl $0xffffffff, %eax              #  2046  0x6dae8  5      
  movl %eax, 0xc4(%rsp)               #  2047  0x6daed  7      
  je .L_71060                         #  2048  0x6daf4  6      
  nop                                 #  2049  0x6dafa  1      
  nop                                 #  2050  0x6dafb  1      
.L_6e760:                             #        0x6dafc  0      
  movl 0xc4(%rsp), %edx               #  2051  0x6dafc  7      
  movl $0x0, %eax                     #  2052  0x6db03  5      
  movb $0x0, 0x29f(%rsp)              #  2053  0x6db08  8      
  movq $0x0, 0xe8(%rsp)               #  2054  0x6db10  12     
  movl $0x0, 0x104(%rsp)              #  2055  0x6db1c  11     
  movl $0x0, 0x114(%rsp)              #  2056  0x6db27  11     
  nop                                 #  2057  0x6db32  1      
  movl $0x0, 0x12c(%rsp)              #  2058  0x6db33  11     
  testl %edx, %edx                    #  2059  0x6db3e  2      
  cmovnsl 0xc4(%rsp), %eax            #  2060  0x6db40  8      
  leal 0x170(%rsp), %edx              #  2061  0x6db48  7      
  nop                                 #  2062  0x6db4f  1      
  movl $0x0, 0x11c(%rsp)              #  2063  0x6db50  11     
  movq %rdx, 0xb0(%rsp)               #  2064  0x6db5b  8      
  movl %eax, 0xb8(%rsp)               #  2065  0x6db63  7      
  xorl %eax, %eax                     #  2066  0x6db6a  2      
  nop                                 #  2067  0x6db6c  1      
  jmpq .L_6be60                       #  2068  0x6db6d  5      
  nop                                 #  2069  0x6db72  1      
  nop                                 #  2070  0x6db73  1      
.L_6e800:                             #        0x6db74  0      
  movl 0x140(%rsp), %r11d             #  2071  0x6db74  8      
  movq 0x108(%rsp), %rax              #  2072  0x6db7c  8      
  movl %r13d, %r9d                    #  2073  0x6db84  3      
  movl %r10d, 0xb8(%rsp)              #  2074  0x6db87  8      
  nop                                 #  2075  0x6db8f  1      
  andl $0x400, %r9d                   #  2076  0x6db90  7      
  movq %rbx, %r10                     #  2077  0x6db97  3      
  movl $0x0, 0x118(%rsp)              #  2078  0x6db9a  11     
  movq $0xcccccccccccccccd, %r8       #  2079  0x6dba5  10     
  nop                                 #  2080  0x6dbaf  1      
  xorl %edi, %edi                     #  2081  0x6dbb0  2      
  negl %r11d                          #  2082  0x6dbb2  3      
  movq %rax, %rbx                     #  2083  0x6dbb5  3      
  movl %r11d, 0xb0(%rsp)              #  2084  0x6dbb8  8      
  movq %r12, %r11                     #  2085  0x6dbc0  3      
  movq 0xf0(%rsp), %r12               #  2086  0x6dbc3  8      
  jmpq .L_6e8a0                       #  2087  0x6dbcb  5      
  nop                                 #  2088  0x6dbd0  1      
.L_6e860:                             #        0x6dbd1  0      
  movq %r12, %rsi                     #  2089  0x6dbd1  3      
  nop                                 #  2090  0x6dbd4  1      
  nop                                 #  2091  0x6dbd5  1      
.L_6e880:                             #        0x6dbd6  0      
  movq %rcx, %rax                     #  2092  0x6dbd6  3      
  mulq %r8                            #  2093  0x6dbd9  3      
  movq %rdx, %rcx                     #  2094  0x6dbdc  3      
  shrq $0x3, %rcx                     #  2095  0x6dbdf  4      
  testq %rcx, %rcx                    #  2096  0x6dbe3  3      
  je .L_6e9e0                         #  2097  0x6dbe6  6      
  movq %rsi, %r12                     #  2098  0x6dbec  3      
  nop                                 #  2099  0x6dbef  1      
.L_6e8a0:                             #        0x6dbf0  0      
  movq %rcx, %rax                     #  2100  0x6dbf0  3      
  subl $0x1, %ebx                     #  2101  0x6dbf3  3      
  addl $0x1, %edi                     #  2102  0x6dbf6  3      
  mulq %r8                            #  2103  0x6dbf9  3      
  shrq $0x3, %rdx                     #  2104  0x6dbfc  4      
  leaq (%rdx,%rdx,4), %rax            #  2105  0x6dc00  4      
  movq %rcx, %rdx                     #  2106  0x6dc04  3      
  addq %rax, %rax                     #  2107  0x6dc07  3      
  subq %rax, %rdx                     #  2108  0x6dc0a  3      
  movq %rdx, %rax                     #  2109  0x6dc0d  3      
  addl $0x30, %eax                    #  2110  0x6dc10  3      
  testl %r9d, %r9d                    #  2111  0x6dc13  3      
  movl %ebx, %ebx                     #  2112  0x6dc16  2      
  movb %al, (%r15,%rbx,1)             #  2113  0x6dc18  4      
  je .L_6e860                         #  2114  0x6dc1c  6      
  movl %r12d, %r12d                   #  2115  0x6dc22  3      
  movzbl (%r15,%r12,1), %eax          #  2116  0x6dc25  5      
  movsbl %al, %edx                    #  2117  0x6dc2a  3      
  cmpl %edx, %edi                     #  2118  0x6dc2d  2      
  nop                                 #  2119  0x6dc2f  1      
  jne .L_6e860                        #  2120  0x6dc30  6      
  cmpb $0x7f, %al                     #  2121  0x6dc36  2      
  je .L_6e860                         #  2122  0x6dc38  6      
  cmpq $0x9, %rcx                     #  2123  0x6dc3e  4      
  jbe .L_6e860                        #  2124  0x6dc42  6      
  addl 0xb0(%rsp), %ebx               #  2125  0x6dc48  7      
  nop                                 #  2126  0x6dc4f  1      
  movl 0x150(%rsp), %esi              #  2127  0x6dc50  7      
  movl 0x140(%rsp), %edx              #  2128  0x6dc57  7      
  movq %rcx, 0x98(%rsp)               #  2129  0x6dc5e  8      
  movq %r8, 0x88(%rsp)                #  2130  0x6dc66  8      
  xchgw %ax, %ax                      #  2131  0x6dc6e  3      
  movl %r9d, 0xa8(%rsp)               #  2132  0x6dc71  8      
  movq %r10, 0x90(%rsp)               #  2133  0x6dc79  8      
  movq %r11, 0xa0(%rsp)               #  2134  0x6dc81  8      
  movl %ebx, %edi                     #  2135  0x6dc89  2      
  nop                                 #  2136  0x6dc8b  1      
  callq .strncpy                      #  2137  0x6dc8c  5      
  leal 0x1(%r12), %esi                #  2138  0x6dc91  5      
  xorl %edi, %edi                     #  2139  0x6dc96  2      
  movq 0x98(%rsp), %rcx               #  2140  0x6dc98  8      
  movq 0x88(%rsp), %r8                #  2141  0x6dca0  8      
  movl 0xa8(%rsp), %r9d               #  2142  0x6dca8  8      
  nop                                 #  2143  0x6dcb0  1      
  movl %esi, %esi                     #  2144  0x6dcb1  2      
  cmpb $0x0, (%r15,%rsi,1)            #  2145  0x6dcb3  5      
  movq 0x90(%rsp), %r10               #  2146  0x6dcb8  8      
  movq 0xa0(%rsp), %r11               #  2147  0x6dcc0  8      
  jne .L_6e880                        #  2148  0x6dcc8  6      
  nop                                 #  2149  0x6dcce  1      
  jmpq .L_6e860                       #  2150  0x6dccf  5      
  nop                                 #  2151  0x6dcd4  1      
  nop                                 #  2152  0x6dcd5  1      
.L_6e9a0:                             #        0x6dcd6  0      
  movq %r13, %r12                     #  2153  0x6dcd6  3      
  movl 0xb0(%rsp), %r13d              #  2154  0x6dcd9  8      
  nop                                 #  2155  0x6dce1  1      
  nop                                 #  2156  0x6dce2  1      
.L_6e9c0:                             #        0x6dce3  0      
  movl %eax, %eax                     #  2157  0x6dce3  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  2158  0x6dce5  5      
  movl %eax, %eax                     #  2159  0x6dcea  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2160  0x6dcec  8      
  addl %ebx, 0x228(%rsp)              #  2161  0x6dcf4  7      
  jmpq .L_6d8a0                       #  2162  0x6dcfb  5      
  nop                                 #  2163  0x6dd00  1      
.L_6e9e0:                             #        0x6dd01  0      
  movq %rbx, 0xb0(%rsp)               #  2164  0x6dd01  8      
  movl 0x108(%rsp), %ecx              #  2165  0x6dd09  7      
  movq %r10, %rbx                     #  2166  0x6dd10  3      
  subl 0xb0(%rsp), %ecx               #  2167  0x6dd13  7      
  movq %r11, %r12                     #  2168  0x6dd1a  3      
  nop                                 #  2169  0x6dd1d  1      
  movl %edi, 0x118(%rsp)              #  2170  0x6dd1e  7      
  movl 0xb8(%rsp), %r10d              #  2171  0x6dd25  8      
  movl %ecx, 0xc4(%rsp)               #  2172  0x6dd2d  7      
  jmpq .L_6c920                       #  2173  0x6dd34  5      
  nop                                 #  2174  0x6dd39  1      
.L_6ea20:                             #        0x6dd3a  0      
  movl 0x20(%rsp), %edx               #  2175  0x6dd3a  4      
  movl %r12d, %esi                    #  2176  0x6dd3e  3      
  movl %r14d, %edi                    #  2177  0x6dd41  3      
  xchgw %ax, %ax                      #  2178  0x6dd44  3      
  nop                                 #  2179  0x6dd47  1      
  callq .__ssprint_r                  #  2180  0x6dd48  5      
  testl %eax, %eax                    #  2181  0x6dd4d  2      
  jne .L_6d2c0                        #  2182  0x6dd4f  6      
  leal 0x1e0(%rsp), %eax              #  2183  0x6dd55  7      
  jmpq .L_6e100                       #  2184  0x6dd5c  5      
  nop                                 #  2185  0x6dd61  1      
.L_6ea60:                             #        0x6dd62  0      
  movl 0xc8(%rsp), %esi               #  2186  0x6dd62  7      
  leal 0x220(%rsp), %edx              #  2187  0x6dd69  7      
  movl %r14d, %edi                    #  2188  0x6dd70  3      
  nop                                 #  2189  0x6dd73  1      
  callq .__ssprint_r                  #  2190  0x6dd74  5      
  testl %eax, %eax                    #  2191  0x6dd79  2      
  jne .L_6d2c0                        #  2192  0x6dd7b  6      
  leal 0x1e0(%rsp), %ebx              #  2193  0x6dd81  7      
  jmpq .L_6c0e0                       #  2194  0x6dd88  5      
  nop                                 #  2195  0x6dd8d  1      
.L_6eaa0:                             #        0x6dd8e  0      
  cmpb $0x30, %al                     #  2196  0x6dd8e  2      
  je .L_6ff80                         #  2197  0x6dd90  6      
  movl 0xb0(%rsp), %eax               #  2198  0x6dd96  7      
  subl $0x1, %eax                     #  2199  0x6dd9d  3      
  movq %rax, 0xb0(%rsp)               #  2200  0x6dda0  8      
  nop                                 #  2201  0x6dda8  1      
  movl %eax, %eax                     #  2202  0x6dda9  2      
  movb $0x30, (%r15,%rax,1)           #  2203  0x6ddab  5      
  movl 0x108(%rsp), %edx              #  2204  0x6ddb0  7      
  movq 0xf0(%rsp), %rsi               #  2205  0x6ddb7  8      
  subl %eax, %edx                     #  2206  0x6ddbf  2      
  movl %edx, 0xc4(%rsp)               #  2207  0x6ddc1  7      
  nop                                 #  2208  0x6ddc8  1      
  jmpq .L_6c920                       #  2209  0x6ddc9  5      
  nop                                 #  2210  0x6ddce  1      
  nop                                 #  2211  0x6ddcf  1      
.L_6eb00:                             #        0x6ddd0  0      
  negq %rcx                           #  2212  0x6ddd0  3      
  movb $0x2d, 0x29f(%rsp)             #  2213  0x6ddd3  8      
  movl $0x1, %eax                     #  2214  0x6dddb  5      
  setne %sil                          #  2215  0x6dde0  4      
  jmpq .L_6c860                       #  2216  0x6dde4  5      
  nop                                 #  2217  0x6dde9  1      
.L_6eb20:                             #        0x6ddea  0      
  movl 0xf0(%rsp), %ebx               #  2218  0x6ddea  7      
  subl $0x1, 0x12c(%rsp)              #  2219  0x6ddf1  8      
  subl $0x1, %ebx                     #  2220  0x6ddf9  3      
  movq %rbx, 0xf0(%rsp)               #  2221  0x6ddfc  8      
  jmpq .L_6e0a0                       #  2222  0x6de04  5      
  nop                                 #  2223  0x6de09  1      
.L_6eb40:                             #        0x6de0a  0      
  movq 0xe0(%rsp), %rsi               #  2224  0x6de0a  8      
  movl %esi, %esi                     #  2225  0x6de12  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2226  0x6de14  5      
  leal 0x8(%rdx), %eax                #  2227  0x6de19  3      
  movl %esi, %esi                     #  2228  0x6de1c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2229  0x6de1e  5      
  jmpq .L_6ca20                       #  2230  0x6de23  5      
  xchgw %ax, %ax                      #  2231  0x6de28  3      
.L_6eb60:                             #        0x6de2b  0      
  movq 0xe0(%rsp), %rsi               #  2232  0x6de2b  8      
  movl %esi, %esi                     #  2233  0x6de33  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2234  0x6de35  5      
  leal 0x8(%rdx), %eax                #  2235  0x6de3a  3      
  movl %esi, %esi                     #  2236  0x6de3d  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2237  0x6de3f  5      
  jmpq .L_6cf60                       #  2238  0x6de44  5      
  xchgw %ax, %ax                      #  2239  0x6de49  3      
.L_6eb80:                             #        0x6de4c  0      
  testb $0x40, %r13b                  #  2240  0x6de4c  4      
  jne .L_6fa20                        #  2241  0x6de50  6      
  testl $0x200, %r13d                 #  2242  0x6de56  7      
  je .L_702e0                         #  2243  0x6de5d  6      
  movq 0xe0(%rsp), %rax               #  2244  0x6de63  8      
  nop                                 #  2245  0x6de6b  1      
  movl %eax, %eax                     #  2246  0x6de6c  2      
  movl (%r15,%rax,1), %edx            #  2247  0x6de6e  4      
  cmpl $0x2f, %edx                    #  2248  0x6de72  3      
  ja .L_70b00                         #  2249  0x6de75  6      
  movq %rax, %rcx                     #  2250  0x6de7b  3      
  movl %eax, %eax                     #  2251  0x6de7e  2      
  movl 0xc(%r15,%rax,1), %eax         #  2252  0x6de80  5      
  addl %edx, %eax                     #  2253  0x6de85  2      
  addl $0x8, %edx                     #  2254  0x6de87  3      
  xchgw %ax, %ax                      #  2255  0x6de8a  3      
  movl %ecx, %ecx                     #  2256  0x6de8d  2      
  movl %edx, (%r15,%rcx,1)            #  2257  0x6de8f  4      
  nop                                 #  2258  0x6de93  1      
  nop                                 #  2259  0x6de94  1      
.L_6ebe0:                             #        0x6de95  0      
  movl %eax, %eax                     #  2260  0x6de95  2      
  movsbq (%r15,%rax,1), %rcx          #  2261  0x6de97  5      
  jmpq .L_6cd60                       #  2262  0x6de9c  5      
  nop                                 #  2263  0x6dea1  1      
  nop                                 #  2264  0x6dea2  1      
.L_6ec00:                             #        0x6dea3  0      
  movq 0xe0(%rsp), %rsi               #  2265  0x6dea3  8      
  movl %esi, %esi                     #  2266  0x6deab  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2267  0x6dead  5      
  leal 0x8(%rdx), %eax                #  2268  0x6deb2  3      
  movl %esi, %esi                     #  2269  0x6deb5  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2270  0x6deb7  5      
  jmpq .L_6cd40                       #  2271  0x6debc  5      
  xchgw %ax, %ax                      #  2272  0x6dec1  3      
.L_6ec20:                             #        0x6dec4  0      
  movsd 0x130(%rsp), %xmm0            #  2273  0x6dec4  9      
  movl %r10d, 0x90(%rsp)              #  2274  0x6decd  8      
  nop                                 #  2275  0x6ded5  1      
  callq .__fpclassifyd                #  2276  0x6ded6  5      
  testl %eax, %eax                    #  2277  0x6dedb  2      
  movl 0x90(%rsp), %r10d              #  2278  0x6dedd  8      
  je .L_6f960                         #  2279  0x6dee5  6      
  cmpl $0x61, 0x100(%rsp)             #  2280  0x6deeb  8      
  sete 0xc4(%rsp)                     #  2281  0x6def3  8      
  cmpl $0x41, 0x100(%rsp)             #  2282  0x6defb  8      
  sete %al                            #  2283  0x6df03  3      
  orb 0xc4(%rsp), %al                 #  2284  0x6df06  7      
  movb %al, 0xfc(%rsp)                #  2285  0x6df0d  7      
  je .L_702a0                         #  2286  0x6df14  6      
  nop                                 #  2287  0x6df1a  1      
  cmpb $0x1, 0xc4(%rsp)               #  2288  0x6df1b  8      
  movb $0x30, 0x290(%rsp)             #  2289  0x6df23  8      
  sbbl %eax, %eax                     #  2290  0x6df2b  2      
  orl $0x2, %r13d                     #  2291  0x6df2d  4      
  andl $0xffffffe0, %eax              #  2292  0x6df31  5      
  addl $0x78, %eax                    #  2293  0x6df36  3      
  cmpl $0x63, %r10d                   #  2294  0x6df39  4      
  movb %al, 0x291(%rsp)               #  2295  0x6df3d  7      
  jg .L_70e20                         #  2296  0x6df44  6      
  cmpl $0x67, 0x100(%rsp)             #  2297  0x6df4a  8      
  nop                                 #  2298  0x6df52  1      
  movq $0x0, 0xe8(%rsp)               #  2299  0x6df53  12     
  sete %r11b                          #  2300  0x6df5f  4      
  cmpl $0x47, 0x100(%rsp)             #  2301  0x6df63  8      
  sete %al                            #  2302  0x6df6b  3      
  orl %eax, %r11d                     #  2303  0x6df6e  3      
  xchgw %ax, %ax                      #  2304  0x6df71  3      
  leal 0x170(%rsp), %eax              #  2305  0x6df74  7      
  movq %rax, 0xb0(%rsp)               #  2306  0x6df7b  8      
  xchgw %ax, %ax                      #  2307  0x6df83  3      
  nop                                 #  2308  0x6df86  1      
.L_6ed00:                             #        0x6df87  0      
  movsd 0x130(%rsp), %xmm0            #  2309  0x6df87  9      
  orl $0x100, %r13d                   #  2310  0x6df90  7      
  movb $0x0, 0xd8(%rsp)               #  2311  0x6df97  8      
  nop                                 #  2312  0x6df9f  1      
  movsd %xmm0, 0x230(%rsp)            #  2313  0x6dfa0  9      
  movl 0x234(%rsp), %eax              #  2314  0x6dfa9  7      
  testl %eax, %eax                    #  2315  0x6dfb0  2      
  js .L_70a40                         #  2316  0x6dfb2  6      
  nop                                 #  2317  0x6dfb8  1      
.L_6ed40:                             #        0x6dfb9  0      
  cmpb $0x0, 0xfc(%rsp)               #  2318  0x6dfb9  8      
  jne .L_708a0                        #  2319  0x6dfc1  6      
  cmpl $0x46, 0x100(%rsp)             #  2320  0x6dfc7  8      
  sete %al                            #  2321  0x6dfcf  3      
  nop                                 #  2322  0x6dfd2  1      
  cmpl $0x66, 0x100(%rsp)             #  2323  0x6dfd3  8      
  sete %dl                            #  2324  0x6dfdb  3      
  orb %dl, %al                        #  2325  0x6dfde  2      
  movb %al, 0xfc(%rsp)                #  2326  0x6dfe0  7      
  je .L_706e0                         #  2327  0x6dfe7  6      
  nop                                 #  2328  0x6dfed  1      
  movl %r10d, 0xc4(%rsp)              #  2329  0x6dfee  8      
  movl $0x3, %esi                     #  2330  0x6dff6  5      
  nop                                 #  2331  0x6dffb  1      
  nop                                 #  2332  0x6dffc  1      
.L_6eda0:                             #        0x6dffd  0      
  movl 0xc4(%rsp), %edx               #  2333  0x6dffd  7      
  leal 0x28c(%rsp), %ecx              #  2334  0x6e004  7      
  movl %esp, %r9d                     #  2335  0x6e00b  3      
  movl %esp, %r8d                     #  2336  0x6e00e  3      
  movsd 0xb8(%rsp), %xmm0             #  2337  0x6e011  9      
  nop                                 #  2338  0x6e01a  1      
  addl $0x27c, %r9d                   #  2339  0x6e01b  7      
  addl $0x280, %r8d                   #  2340  0x6e022  7      
  movl %r14d, %edi                    #  2341  0x6e029  3      
  movl %r10d, 0x90(%rsp)              #  2342  0x6e02c  8      
  nop                                 #  2343  0x6e034  1      
  movb %r11b, 0xa0(%rsp)              #  2344  0x6e035  8      
  nop                                 #  2345  0x6e03d  1      
  nop                                 #  2346  0x6e03e  1      
  callq ._dtoa_r                      #  2347  0x6e03f  5      
  cmpl $0x47, 0x100(%rsp)             #  2348  0x6e044  8      
  movl %eax, %eax                     #  2349  0x6e04c  2      
  movl 0x90(%rsp), %r10d              #  2350  0x6e04e  8      
  movq %rax, 0xb0(%rsp)               #  2351  0x6e056  8      
  nop                                 #  2352  0x6e05e  1      
  movzbl 0xa0(%rsp), %r11d            #  2353  0x6e05f  9      
  je .L_706c0                         #  2354  0x6e068  6      
  cmpl $0x67, 0x100(%rsp)             #  2355  0x6e06e  8      
  je .L_706c0                         #  2356  0x6e076  6      
  nop                                 #  2357  0x6e07c  1      
.L_6ee40:                             #        0x6e07d  0      
  movl 0xc4(%rsp), %edx               #  2358  0x6e07d  7      
  addl 0xb0(%rsp), %edx               #  2359  0x6e084  7      
  cmpb $0x0, 0xfc(%rsp)               #  2360  0x6e08b  8      
  xorpd %xmm1, %xmm1                  #  2361  0x6e093  4      
  je .L_6eea0                         #  2362  0x6e097  6      
  nop                                 #  2363  0x6e09d  1      
  movq 0xb0(%rsp), %rcx               #  2364  0x6e09e  8      
  movl %ecx, %ecx                     #  2365  0x6e0a6  2      
  cmpb $0x30, (%r15,%rcx,1)           #  2366  0x6e0a8  5      
  je .L_70f80                         #  2367  0x6e0ad  6      
  movl 0x28c(%rsp), %eax              #  2368  0x6e0b3  7      
  xorpd %xmm1, %xmm1                  #  2369  0x6e0ba  4      
.L_6ee80:                             #        0x6e0be  0      
  leal (%rax,%rdx,1), %edx            #  2370  0x6e0be  3      
  nop                                 #  2371  0x6e0c1  1      
  nop                                 #  2372  0x6e0c2  1      
.L_6eea0:                             #        0x6e0c3  0      
  movsd 0xb8(%rsp), %xmm0             #  2373  0x6e0c3  9      
  ucomisd %xmm1, %xmm0                #  2374  0x6e0cc  4      
  jne .L_70840                        #  2375  0x6e0d0  6      
  jp .L_70840                         #  2376  0x6e0d6  6      
  movl %edx, 0x27c(%rsp)              #  2377  0x6e0dc  7      
.L_6eec0:                             #        0x6e0e3  0      
  subl 0xb0(%rsp), %edx               #  2378  0x6e0e3  7      
  testb %r11b, %r11b                  #  2379  0x6e0ea  3      
  movl %edx, 0x118(%rsp)              #  2380  0x6e0ed  7      
  je .L_70080                         #  2381  0x6e0f4  6      
  movl 0x28c(%rsp), %ecx              #  2382  0x6e0fa  7      
  xchgw %ax, %ax                      #  2383  0x6e101  3      
  cmpl $0xfffffffd, %ecx              #  2384  0x6e104  6      
  jl .L_703a0                         #  2385  0x6e10a  6      
  cmpl %ecx, %r10d                    #  2386  0x6e110  3      
  jl .L_703a0                         #  2387  0x6e113  6      
  movl $0x67, 0x100(%rsp)             #  2388  0x6e119  11     
  nop                                 #  2389  0x6e124  1      
.L_6ef00:                             #        0x6e125  0      
  cmpl %ecx, 0x118(%rsp)              #  2390  0x6e125  7      
  jg .L_70d80                         #  2391  0x6e12c  6      
  testb $0x1, %r13b                   #  2392  0x6e132  4      
  je .L_70dc0                         #  2393  0x6e136  6      
  leal 0x1(%rcx), %edx                #  2394  0x6e13c  3      
  nop                                 #  2395  0x6e13f  1      
  movl %edx, 0xc4(%rsp)               #  2396  0x6e140  7      
  nop                                 #  2397  0x6e147  1      
  nop                                 #  2398  0x6e148  1      
.L_6ef40:                             #        0x6e149  0      
  testl $0x400, %r13d                 #  2399  0x6e149  7      
  je .L_70760                         #  2400  0x6e150  6      
  testl %ecx, %ecx                    #  2401  0x6e156  2      
  jle .L_70760                        #  2402  0x6e158  6      
  movq 0xf0(%rsp), %rsi               #  2403  0x6e15e  8      
  nop                                 #  2404  0x6e166  1      
  movq 0xf0(%rsp), %r8                #  2405  0x6e167  8      
  movl %esi, %esi                     #  2406  0x6e16f  2      
  movzbl (%r15,%rsi,1), %eax          #  2407  0x6e171  5      
  movl $0x0, 0x114(%rsp)              #  2408  0x6e176  11     
  movl %ecx, %esi                     #  2409  0x6e181  2      
  nop                                 #  2410  0x6e183  1      
  movl $0x0, 0x12c(%rsp)              #  2411  0x6e184  11     
  jmpq .L_6efe0                       #  2412  0x6e18f  5      
  nop                                 #  2413  0x6e194  1      
  nop                                 #  2414  0x6e195  1      
.L_6efa0:                             #        0x6e196  0      
  addl $0x1, 0x12c(%rsp)              #  2415  0x6e196  8      
  nop                                 #  2416  0x6e19e  1      
  nop                                 #  2417  0x6e19f  1      
.L_6efc0:                             #        0x6e1a0  0      
  subl %edi, %esi                     #  2418  0x6e1a0  2      
  movl %ecx, %eax                     #  2419  0x6e1a2  2      
  movq %rdx, %r8                      #  2420  0x6e1a4  3      
  nop                                 #  2421  0x6e1a7  1      
  nop                                 #  2422  0x6e1a8  1      
.L_6efe0:                             #        0x6e1a9  0      
  cmpb $0x7f, %al                     #  2423  0x6e1a9  2      
  je .L_70d40                         #  2424  0x6e1ab  6      
  movsbl %al, %edi                    #  2425  0x6e1b1  3      
  cmpl %edi, %esi                     #  2426  0x6e1b4  2      
  jle .L_70d40                        #  2427  0x6e1b6  6      
  leal 0x1(%r8), %edx                 #  2428  0x6e1bc  4      
  movl %edx, %edx                     #  2429  0x6e1c0  2      
  movzbl (%r15,%rdx,1), %ecx          #  2430  0x6e1c2  5      
  testb %cl, %cl                      #  2431  0x6e1c7  2      
  jne .L_6efa0                        #  2432  0x6e1c9  6      
  addl $0x1, 0x114(%rsp)              #  2433  0x6e1cf  8      
  movl %eax, %ecx                     #  2434  0x6e1d7  2      
  movq %r8, %rdx                      #  2435  0x6e1d9  3      
  jmpq .L_6efc0                       #  2436  0x6e1dc  5      
  nop                                 #  2437  0x6e1e1  1      
.L_6f020:                             #        0x6e1e2  0      
  movq 0xe0(%rsp), %rsi               #  2438  0x6e1e2  8      
  movl %esi, %esi                     #  2439  0x6e1ea  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2440  0x6e1ec  5      
  leal 0x8(%rdx), %eax                #  2441  0x6e1f1  3      
  movl %esi, %esi                     #  2442  0x6e1f4  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2443  0x6e1f6  5      
  jmpq .L_6d100                       #  2444  0x6e1fb  5      
  xchgw %ax, %ax                      #  2445  0x6e200  3      
.L_6f040:                             #        0x6e203  0      
  testb $0x40, %r13b                  #  2446  0x6e203  4      
  jne .L_6fb40                        #  2447  0x6e207  6      
  testl $0x200, %r13d                 #  2448  0x6e20d  7      
  je .L_70340                         #  2449  0x6e214  6      
  movq 0xe0(%rsp), %rax               #  2450  0x6e21a  8      
  nop                                 #  2451  0x6e222  1      
  movl %eax, %eax                     #  2452  0x6e223  2      
  movl (%r15,%rax,1), %edx            #  2453  0x6e225  4      
  cmpl $0x2f, %edx                    #  2454  0x6e229  3      
  ja .L_70b60                         #  2455  0x6e22c  6      
  movq %rax, %rcx                     #  2456  0x6e232  3      
  movl %eax, %eax                     #  2457  0x6e235  2      
  movl 0xc(%r15,%rax,1), %eax         #  2458  0x6e237  5      
  addl %edx, %eax                     #  2459  0x6e23c  2      
  addl $0x8, %edx                     #  2460  0x6e23e  3      
  xchgw %ax, %ax                      #  2461  0x6e241  3      
  movl %ecx, %ecx                     #  2462  0x6e244  2      
  movl %edx, (%r15,%rcx,1)            #  2463  0x6e246  4      
  nop                                 #  2464  0x6e24a  1      
  nop                                 #  2465  0x6e24b  1      
.L_6f0a0:                             #        0x6e24c  0      
  movl %eax, %eax                     #  2466  0x6e24c  2      
  movzbl (%r15,%rax,1), %ecx          #  2467  0x6e24e  5      
  jmpq .L_6c7e0                       #  2468  0x6e253  5      
  nop                                 #  2469  0x6e258  1      
  nop                                 #  2470  0x6e259  1      
.L_6f0c0:                             #        0x6e25a  0      
  testb $0x10, %r13b                  #  2471  0x6e25a  4      
  jne .L_6fae0                        #  2472  0x6e25e  6      
  testb $0x40, %r13b                  #  2473  0x6e264  4      
  je .L_70180                         #  2474  0x6e268  6      
  movq 0xe0(%rsp), %rcx               #  2475  0x6e26e  8      
  nop                                 #  2476  0x6e276  1      
  movl %ecx, %ecx                     #  2477  0x6e277  2      
  movl (%r15,%rcx,1), %edx            #  2478  0x6e279  4      
  cmpl $0x2f, %edx                    #  2479  0x6e27d  3      
  ja .L_70b20                         #  2480  0x6e280  6      
  movl %ecx, %ecx                     #  2481  0x6e286  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2482  0x6e288  5      
  addl %edx, %eax                     #  2483  0x6e28d  2      
  addl $0x8, %edx                     #  2484  0x6e28f  3      
  nop                                 #  2485  0x6e292  1      
  movl %ecx, %ecx                     #  2486  0x6e293  2      
  movl %edx, (%r15,%rcx,1)            #  2487  0x6e295  4      
  nop                                 #  2488  0x6e299  1      
  nop                                 #  2489  0x6e29a  1      
.L_6f120:                             #        0x6e29b  0      
  movl %eax, %eax                     #  2490  0x6e29b  2      
  movl (%r15,%rax,1), %eax            #  2491  0x6e29d  4      
  movzwl 0xd0(%rsp), %edx             #  2492  0x6e2a1  8      
  movl %eax, %eax                     #  2493  0x6e2a9  2      
  movw %dx, (%r15,%rax,1)             #  2494  0x6e2ab  5      
  jmpq .L_6c4e0                       #  2495  0x6e2b0  5      
  nop                                 #  2496  0x6e2b5  1      
.L_6f140:                             #        0x6e2b6  0      
  movq 0xe0(%rsp), %rsi               #  2497  0x6e2b6  8      
  movl %esi, %esi                     #  2498  0x6e2be  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2499  0x6e2c0  5      
  leal 0x8(%rdx), %eax                #  2500  0x6e2c5  3      
  movl %esi, %esi                     #  2501  0x6e2c8  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2502  0x6e2ca  5      
  jmpq .L_6c7c0                       #  2503  0x6e2cf  5      
  xchgw %ax, %ax                      #  2504  0x6e2d4  3      
.L_6f160:                             #        0x6e2d7  0      
  testb $0x40, %r13b                  #  2505  0x6e2d7  4      
  jne .L_6fbc0                        #  2506  0x6e2db  6      
  testl $0x200, %r13d                 #  2507  0x6e2e1  7      
  je .L_70120                         #  2508  0x6e2e8  6      
  movq 0xe0(%rsp), %rax               #  2509  0x6e2ee  8      
  nop                                 #  2510  0x6e2f6  1      
  movl %eax, %eax                     #  2511  0x6e2f7  2      
  movl (%r15,%rax,1), %edx            #  2512  0x6e2f9  4      
  cmpl $0x2f, %edx                    #  2513  0x6e2fd  3      
  ja .L_70800                         #  2514  0x6e300  6      
  movq %rax, %rcx                     #  2515  0x6e306  3      
  movl %eax, %eax                     #  2516  0x6e309  2      
  movl 0xc(%r15,%rax,1), %eax         #  2517  0x6e30b  5      
  addl %edx, %eax                     #  2518  0x6e310  2      
  addl $0x8, %edx                     #  2519  0x6e312  3      
  xchgw %ax, %ax                      #  2520  0x6e315  3      
  movl %ecx, %ecx                     #  2521  0x6e318  2      
  movl %edx, (%r15,%rcx,1)            #  2522  0x6e31a  4      
  nop                                 #  2523  0x6e31e  1      
  nop                                 #  2524  0x6e31f  1      
.L_6f1c0:                             #        0x6e320  0      
  movl %eax, %eax                     #  2525  0x6e320  2      
  movzbl (%r15,%rax,1), %ecx          #  2526  0x6e322  5      
  jmpq .L_6cf00                       #  2527  0x6e327  5      
  nop                                 #  2528  0x6e32c  1      
  nop                                 #  2529  0x6e32d  1      
.L_6f1e0:                             #        0x6e32e  0      
  movq 0xe0(%rsp), %rax               #  2530  0x6e32e  8      
  movq 0xe0(%rsp), %rsi               #  2531  0x6e336  8      
  movl %eax, %eax                     #  2532  0x6e33e  2      
  movl 0x8(%r15,%rax,1), %ecx         #  2533  0x6e340  5      
  leal 0x8(%rcx), %eax                #  2534  0x6e345  3      
  nop                                 #  2535  0x6e348  1      
  movl %esi, %esi                     #  2536  0x6e349  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2537  0x6e34b  5      
  jmpq .L_6c660                       #  2538  0x6e350  5      
  nop                                 #  2539  0x6e355  1      
  nop                                 #  2540  0x6e356  1      
.L_6f220:                             #        0x6e357  0      
  movq 0xe0(%rsp), %rsi               #  2541  0x6e357  8      
  movl %esi, %esi                     #  2542  0x6e35f  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2543  0x6e361  5      
  leal 0x8(%rdx), %eax                #  2544  0x6e366  3      
  movl %esi, %esi                     #  2545  0x6e369  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2546  0x6e36b  5      
  jmpq .L_6cee0                       #  2547  0x6e370  5      
  xchgw %ax, %ax                      #  2548  0x6e375  3      
.L_6f240:                             #        0x6e378  0      
  testb $0x40, %r13b                  #  2549  0x6e378  4      
  jne .L_6fa80                        #  2550  0x6e37c  6      
  testl $0x200, %r13d                 #  2551  0x6e382  7      
  je .L_701e0                         #  2552  0x6e389  6      
  movq 0xe0(%rsp), %rax               #  2553  0x6e38f  8      
  nop                                 #  2554  0x6e397  1      
  movl %eax, %eax                     #  2555  0x6e398  2      
  movl (%r15,%rax,1), %edx            #  2556  0x6e39a  4      
  cmpl $0x2f, %edx                    #  2557  0x6e39e  3      
  ja .L_70820                         #  2558  0x6e3a1  6      
  movq %rax, %rcx                     #  2559  0x6e3a7  3      
  movl %eax, %eax                     #  2560  0x6e3aa  2      
  movl 0xc(%r15,%rax,1), %eax         #  2561  0x6e3ac  5      
  addl %edx, %eax                     #  2562  0x6e3b1  2      
  addl $0x8, %edx                     #  2563  0x6e3b3  3      
  xchgw %ax, %ax                      #  2564  0x6e3b6  3      
  movl %ecx, %ecx                     #  2565  0x6e3b9  2      
  movl %edx, (%r15,%rcx,1)            #  2566  0x6e3bb  4      
  nop                                 #  2567  0x6e3bf  1      
  nop                                 #  2568  0x6e3c0  1      
.L_6f2a0:                             #        0x6e3c1  0      
  movl %eax, %eax                     #  2569  0x6e3c1  2      
  movzbl (%r15,%rax,1), %ecx          #  2570  0x6e3c3  5      
  movl $0x1, %eax                     #  2571  0x6e3c8  5      
  testq %rcx, %rcx                    #  2572  0x6e3cd  3      
  setne %sil                          #  2573  0x6e3d0  4      
  jmpq .L_6c840                       #  2574  0x6e3d4  5      
  nop                                 #  2575  0x6e3d9  1      
.L_6f2c0:                             #        0x6e3da  0      
  movq %r13, %r12                     #  2576  0x6e3da  3      
  movl 0xfc(%rsp), %r13d              #  2577  0x6e3dd  8      
  movl %ebx, %ecx                     #  2578  0x6e3e5  2      
  movq %rax, %rbx                     #  2579  0x6e3e7  3      
  nop                                 #  2580  0x6e3ea  1      
  nop                                 #  2581  0x6e3eb  1      
.L_6f2e0:                             #        0x6e3ec  0      
  movl %ebx, %ebx                     #  2582  0x6e3ec  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  2583  0x6e3ee  5      
  movl 0x224(%rsp), %eax              #  2584  0x6e3f3  7      
  addl %ecx, 0x228(%rsp)              #  2585  0x6e3fa  7      
  movl %ebx, %ebx                     #  2586  0x6e401  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  2587  0x6e403  8      
  nop                                 #  2588  0x6e40b  1      
  addl $0x1, %eax                     #  2589  0x6e40c  3      
  cmpl $0x7, %eax                     #  2590  0x6e40f  3      
  movl %eax, 0x224(%rsp)              #  2591  0x6e412  7      
  jg .L_6dfc0                         #  2592  0x6e419  6      
  addl $0x8, %ebx                     #  2593  0x6e41f  3      
  jmpq .L_6e000                       #  2594  0x6e422  5      
  nop                                 #  2595  0x6e427  1      
.L_6f320:                             #        0x6e428  0      
  movl 0xb0(%rsp), %edx               #  2596  0x6e428  7      
  leal 0x240(%rsp), %ecx              #  2597  0x6e42f  7      
  xorl %esi, %esi                     #  2598  0x6e436  2      
  movl %r10d, 0x90(%rsp)              #  2599  0x6e438  8      
  movl %ecx, %edi                     #  2600  0x6e440  2      
  movq %rcx, 0x58(%rsp)               #  2601  0x6e442  5      
  nop                                 #  2602  0x6e447  1      
  movl %edx, 0x284(%rsp)              #  2603  0x6e448  7      
  movl $0x8, %edx                     #  2604  0x6e44f  5      
  nop                                 #  2605  0x6e454  1      
  callq .memset                       #  2606  0x6e455  5      
  movl 0x90(%rsp), %r10d              #  2607  0x6e45a  8      
  testl %r10d, %r10d                  #  2608  0x6e462  3      
  js .L_707a0                         #  2609  0x6e465  6      
  xorl %r8d, %r8d                     #  2610  0x6e46b  3      
  movq %r12, 0xb8(%rsp)               #  2611  0x6e46e  8      
  nop                                 #  2612  0x6e476  1      
  movq %rbx, 0xe8(%rsp)               #  2613  0x6e477  8      
  movl %r13d, 0xd8(%rsp)              #  2614  0x6e47f  8      
  movl $0x0, 0xc4(%rsp)               #  2615  0x6e487  11     
  movl %r8d, %ebx                     #  2616  0x6e492  3      
  xchgw %ax, %ax                      #  2617  0x6e495  3      
  movl %r10d, %r12d                   #  2618  0x6e498  3      
  xorl %r13d, %r13d                   #  2619  0x6e49b  3      
  jmpq .L_6f3e0                       #  2620  0x6e49e  5      
  nop                                 #  2621  0x6e4a3  1      
  nop                                 #  2622  0x6e4a4  1      
.L_6f3c0:                             #        0x6e4a5  0      
  movl %eax, %r13d                    #  2623  0x6e4a5  3      
  nop                                 #  2624  0x6e4a8  1      
  nop                                 #  2625  0x6e4a9  1      
.L_6f3e0:                             #        0x6e4aa  0      
  movl 0x284(%rsp), %eax              #  2626  0x6e4aa  7      
  addl %ebx, %eax                     #  2627  0x6e4b1  2      
  movl %eax, %eax                     #  2628  0x6e4b3  2      
  movl (%r15,%rax,1), %edx            #  2629  0x6e4b5  4      
  testl %edx, %edx                    #  2630  0x6e4b9  2      
  je .L_70620                         #  2631  0x6e4bb  6      
  movl 0x58(%rsp), %ecx               #  2632  0x6e4c1  4      
  movl 0x68(%rsp), %esi               #  2633  0x6e4c5  4      
  nop                                 #  2634  0x6e4c9  1      
  movl %r14d, %edi                    #  2635  0x6e4ca  3      
  nop                                 #  2636  0x6e4cd  1      
  nop                                 #  2637  0x6e4ce  1      
  callq ._wcrtomb_r                   #  2638  0x6e4cf  5      
  cmpl $0xffffffff, %eax              #  2639  0x6e4d4  5      
  je .L_70d20                         #  2640  0x6e4d9  6      
  addl %r13d, %eax                    #  2641  0x6e4df  3      
  cmpl %r12d, %eax                    #  2642  0x6e4e2  3      
  jg .L_70620                         #  2643  0x6e4e5  6      
  addl $0x4, %ebx                     #  2644  0x6e4eb  3      
  cmpl %eax, %r12d                    #  2645  0x6e4ee  3      
  nop                                 #  2646  0x6e4f1  1      
  jne .L_6f3c0                        #  2647  0x6e4f2  6      
  movl %r12d, %r10d                   #  2648  0x6e4f8  3      
  movq 0xe8(%rsp), %rbx               #  2649  0x6e4fb  8      
  movq 0xb8(%rsp), %r12               #  2650  0x6e503  8      
  nop                                 #  2651  0x6e50b  1      
  movl 0xd8(%rsp), %r13d              #  2652  0x6e50c  8      
  movl %r10d, 0xc4(%rsp)              #  2653  0x6e514  8      
  nop                                 #  2654  0x6e51c  1      
  nop                                 #  2655  0x6e51d  1      
.L_6f480:                             #        0x6e51e  0      
  movl 0xc4(%rsp), %r11d              #  2656  0x6e51e  8      
  testl %r11d, %r11d                  #  2657  0x6e526  3      
  je .L_6fc40                         #  2658  0x6e529  6      
  cmpl $0x63, 0xc4(%rsp)              #  2659  0x6e52f  8      
  leal 0x170(%rsp), %edx              #  2660  0x6e537  7      
  movq $0x0, 0xe8(%rsp)               #  2661  0x6e53e  12     
  movq %rdx, 0xb0(%rsp)               #  2662  0x6e54a  8      
  jle .L_6f520                        #  2663  0x6e552  6      
  movl 0xc4(%rsp), %esi               #  2664  0x6e558  7      
  movl %r14d, %edi                    #  2665  0x6e55f  3      
  addl $0x1, %esi                     #  2666  0x6e562  3      
  nop                                 #  2667  0x6e565  1      
  nop                                 #  2668  0x6e566  1      
  callq ._malloc_r                    #  2669  0x6e567  5      
  movl %eax, %eax                     #  2670  0x6e56c  2      
  testq %rax, %rax                    #  2671  0x6e56e  3      
  movq %rax, 0xe8(%rsp)               #  2672  0x6e571  8      
  je .L_71140                         #  2673  0x6e579  6      
  movq 0xe8(%rsp), %rsi               #  2674  0x6e57f  8      
  nop                                 #  2675  0x6e587  1      
  movq %rsi, 0xb0(%rsp)               #  2676  0x6e588  8      
  nop                                 #  2677  0x6e590  1      
  nop                                 #  2678  0x6e591  1      
.L_6f520:                             #        0x6e592  0      
  movl 0x58(%rsp), %edi               #  2679  0x6e592  4      
  xorl %esi, %esi                     #  2680  0x6e596  2      
  movl $0x8, %edx                     #  2681  0x6e598  5      
  nop                                 #  2682  0x6e59d  1      
  nop                                 #  2683  0x6e59e  1      
  callq .memset                       #  2684  0x6e59f  5      
  movl 0x58(%rsp), %r8d               #  2685  0x6e5a4  5      
  movl 0xc4(%rsp), %ecx               #  2686  0x6e5a9  7      
  leal 0x284(%rsp), %edx              #  2687  0x6e5b0  7      
  movl 0xb0(%rsp), %esi               #  2688  0x6e5b7  7      
  movl %r14d, %edi                    #  2689  0x6e5be  3      
  nop                                 #  2690  0x6e5c1  1      
  nop                                 #  2691  0x6e5c2  1      
  nop                                 #  2692  0x6e5c3  1      
  callq ._wcsrtombs_r                 #  2693  0x6e5c4  5      
  cmpl %eax, 0xc4(%rsp)               #  2694  0x6e5c9  7      
  jne .L_6d2a0                        #  2695  0x6e5d0  6      
  movl 0xc4(%rsp), %eax               #  2696  0x6e5d6  7      
  addl 0xb0(%rsp), %eax               #  2697  0x6e5dd  7      
  movl $0x0, %edx                     #  2698  0x6e5e4  5      
  movl %eax, %eax                     #  2699  0x6e5e9  2      
  movb $0x0, (%r15,%rax,1)            #  2700  0x6e5eb  5      
  movl 0xc4(%rsp), %r10d              #  2701  0x6e5f0  8      
  movzbl 0x29f(%rsp), %eax            #  2702  0x6e5f8  8      
  nop                                 #  2703  0x6e600  1      
  movl $0x0, 0x104(%rsp)              #  2704  0x6e601  11     
  movl $0x0, 0x114(%rsp)              #  2705  0x6e60c  11     
  nop                                 #  2706  0x6e617  1      
  movl $0x0, 0x12c(%rsp)              #  2707  0x6e618  11     
  testl %r10d, %r10d                  #  2708  0x6e623  3      
  cmovnsl 0xc4(%rsp), %edx            #  2709  0x6e626  8      
  nop                                 #  2710  0x6e62e  1      
  movl $0x0, 0x11c(%rsp)              #  2711  0x6e62f  11     
  movl %edx, 0xb8(%rsp)               #  2712  0x6e63a  7      
  jmpq .L_6c9a0                       #  2713  0x6e641  5      
  nop                                 #  2714  0x6e646  1      
.L_6f620:                             #        0x6e647  0      
  movq 0xe0(%rsp), %rsi               #  2715  0x6e647  8      
  movl %esi, %esi                     #  2716  0x6e64f  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2717  0x6e651  5      
  leal 0x8(%rdx), %eax                #  2718  0x6e656  3      
  movl %esi, %esi                     #  2719  0x6e659  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2720  0x6e65b  5      
  jmpq .L_6cb20                       #  2721  0x6e660  5      
  xchgw %ax, %ax                      #  2722  0x6e665  3      
.L_6f640:                             #        0x6e668  0      
  movl %ebx, %ecx                     #  2723  0x6e668  2      
  movq %r13, %r12                     #  2724  0x6e66a  3      
  movq %rax, %rbx                     #  2725  0x6e66d  3      
  movl 0xb0(%rsp), %r13d              #  2726  0x6e670  8      
  jmpq .L_6dfa0                       #  2727  0x6e678  5      
  nop                                 #  2728  0x6e67d  1      
.L_6f660:                             #        0x6e67e  0      
  movl 0x20(%rsp), %edx               #  2729  0x6e67e  4      
  movl %r12d, %esi                    #  2730  0x6e682  3      
  movl %r14d, %edi                    #  2731  0x6e685  3      
  movl %ecx, 0x98(%rsp)               #  2732  0x6e688  7      
  nop                                 #  2733  0x6e68f  1      
  callq .__ssprint_r                  #  2734  0x6e690  5      
  testl %eax, %eax                    #  2735  0x6e695  2      
  movl 0x98(%rsp), %ecx               #  2736  0x6e697  7      
  jne .L_6d2c0                        #  2737  0x6e69e  6      
  movq 0xf0(%rsp), %rax               #  2738  0x6e6a4  8      
  movl %eax, %eax                     #  2739  0x6e6ac  2      
  movsbl (%r15,%rax,1), %edx          #  2740  0x6e6ae  5      
  xchgw %ax, %ax                      #  2741  0x6e6b3  3      
  leal 0x1e0(%rsp), %eax              #  2742  0x6e6b6  7      
  jmpq .L_6e180                       #  2743  0x6e6bd  5      
  nop                                 #  2744  0x6e6c2  1      
  nop                                 #  2745  0x6e6c3  1      
.L_6f6c0:                             #        0x6e6c4  0      
  movl 0xc8(%rsp), %esi               #  2746  0x6e6c4  7      
  leal 0x220(%rsp), %edx              #  2747  0x6e6cb  7      
  movl %r14d, %edi                    #  2748  0x6e6d2  3      
  nop                                 #  2749  0x6e6d5  1      
  callq .__ssprint_r                  #  2750  0x6e6d6  5      
  testl %eax, %eax                    #  2751  0x6e6db  2      
  jne .L_6d2c0                        #  2752  0x6e6dd  6      
  leal 0x1e0(%rsp), %ebx              #  2753  0x6e6e3  7      
  jmpq .L_6d3e0                       #  2754  0x6e6ea  5      
  nop                                 #  2755  0x6e6ef  1      
.L_6f700:                             #        0x6e6f0  0      
  movl %ebx, %ebx                     #  2756  0x6e6f0  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  2757  0x6e6f2  9      
  movl 0x224(%rsp), %eax              #  2758  0x6e6fb  7      
  addl $0x1, 0x228(%rsp)              #  2759  0x6e702  8      
  nop                                 #  2760  0x6e70a  1      
  movl %ebx, %ebx                     #  2761  0x6e70b  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  2762  0x6e70d  8      
  addl $0x1, %eax                     #  2763  0x6e715  3      
  cmpl $0x7, %eax                     #  2764  0x6e718  3      
  movl %eax, 0x224(%rsp)              #  2765  0x6e71b  7      
  jg .L_6fda0                         #  2766  0x6e722  6      
  addl $0x8, %ebx                     #  2767  0x6e728  3      
.L_6f740:                             #        0x6e72b  0      
  movl 0x28c(%rsp), %edi              #  2768  0x6e72b  7      
  testl %edi, %edi                    #  2769  0x6e732  2      
  jne .L_6f760                        #  2770  0x6e734  6      
  cmpl $0x0, 0x118(%rsp)              #  2771  0x6e73a  8      
  jne .L_6f760                        #  2772  0x6e742  6      
  testb $0x1, %r13b                   #  2773  0x6e748  4      
  je .L_6c2a0                         #  2774  0x6e74c  6      
  nop                                 #  2775  0x6e752  1      
.L_6f760:                             #        0x6e753  0      
  movl 0x120(%rsp), %eax              #  2776  0x6e753  7      
  movl 0x13c(%rsp), %edx              #  2777  0x6e75a  7      
  movl %ebx, %ebx                     #  2778  0x6e761  2      
  movl %eax, (%r15,%rbx,1)            #  2779  0x6e763  4      
  movl %ebx, %ebx                     #  2780  0x6e767  2      
  movl %edx, 0x4(%r15,%rbx,1)         #  2781  0x6e769  5      
  nop                                 #  2782  0x6e76e  1      
  movl 0x224(%rsp), %eax              #  2783  0x6e76f  7      
  addl %edx, 0x228(%rsp)              #  2784  0x6e776  7      
  addl $0x1, %eax                     #  2785  0x6e77d  3      
  cmpl $0x7, %eax                     #  2786  0x6e780  3      
  movl %eax, 0x224(%rsp)              #  2787  0x6e783  7      
  nop                                 #  2788  0x6e78a  1      
  jg .L_70720                         #  2789  0x6e78b  6      
  leal 0x8(%rbx), %eax                #  2790  0x6e791  3      
  nop                                 #  2791  0x6e794  1      
  nop                                 #  2792  0x6e795  1      
.L_6f7c0:                             #        0x6e796  0      
  movl 0x28c(%rsp), %ebx              #  2793  0x6e796  7      
  negl %ebx                           #  2794  0x6e79d  2      
  testl %ebx, %ebx                    #  2795  0x6e79f  2      
  jle .L_6fee0                        #  2796  0x6e7a1  6      
  cmpl $0x10, %ebx                    #  2797  0x6e7a7  3      
  jle .L_6fea0                        #  2798  0x6e7aa  6      
  nop                                 #  2799  0x6e7b0  1      
  leal 0x220(%rsp), %ecx              #  2800  0x6e7b1  7      
  movl %r13d, 0xc4(%rsp)              #  2801  0x6e7b8  8      
  movq %r12, %r13                     #  2802  0x6e7c0  3      
  movq 0xc8(%rsp), %r12               #  2803  0x6e7c3  8      
  movq %rcx, 0x30(%rsp)               #  2804  0x6e7cb  5      
  nop                                 #  2805  0x6e7d0  1      
  jmpq .L_6f860                       #  2806  0x6e7d1  5      
  nop                                 #  2807  0x6e7d6  1      
  nop                                 #  2808  0x6e7d7  1      
.L_6f820:                             #        0x6e7d8  0      
  addl $0x8, %eax                     #  2809  0x6e7d8  3      
  nop                                 #  2810  0x6e7db  1      
  nop                                 #  2811  0x6e7dc  1      
.L_6f840:                             #        0x6e7dd  0      
  subl $0x10, %ebx                    #  2812  0x6e7dd  3      
  cmpl $0x10, %ebx                    #  2813  0x6e7e0  3      
  jle .L_6fe80                        #  2814  0x6e7e3  6      
  nop                                 #  2815  0x6e7e9  1      
  nop                                 #  2816  0x6e7ea  1      
.L_6f860:                             #        0x6e7eb  0      
  movl %eax, %eax                     #  2817  0x6e7eb  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  2818  0x6e7ed  9      
  movl 0x224(%rsp), %edx              #  2819  0x6e7f6  7      
  addl $0x10, 0x228(%rsp)             #  2820  0x6e7fd  8      
  nop                                 #  2821  0x6e805  1      
  movl %eax, %eax                     #  2822  0x6e806  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2823  0x6e808  8      
  addl $0x1, %edx                     #  2824  0x6e810  3      
  cmpl $0x7, %edx                     #  2825  0x6e813  3      
  movl %edx, 0x224(%rsp)              #  2826  0x6e816  7      
  jle .L_6f820                        #  2827  0x6e81d  6      
  movl 0x30(%rsp), %edx               #  2828  0x6e823  4      
  movl %r12d, %esi                    #  2829  0x6e827  3      
  movl %r14d, %edi                    #  2830  0x6e82a  3      
  nop                                 #  2831  0x6e82d  1      
  nop                                 #  2832  0x6e82e  1      
  callq .__ssprint_r                  #  2833  0x6e82f  5      
  testl %eax, %eax                    #  2834  0x6e834  2      
  jne .L_6d2c0                        #  2835  0x6e836  6      
  leal 0x1e0(%rsp), %eax              #  2836  0x6e83c  7      
  jmpq .L_6f840                       #  2837  0x6e843  5      
  nop                                 #  2838  0x6e848  1      
.L_6f8e0:                             #        0x6e849  0      
  movq 0xe0(%rsp), %rdx               #  2839  0x6e849  8      
  movq 0xe0(%rsp), %rsi               #  2840  0x6e851  8      
  movl %edx, %edx                     #  2841  0x6e859  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2842  0x6e85b  5      
  leal 0x8(%rax), %edx                #  2843  0x6e860  3      
  nop                                 #  2844  0x6e863  1      
  movl %esi, %esi                     #  2845  0x6e864  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2846  0x6e866  5      
  jmpq .L_6e720                       #  2847  0x6e86b  5      
  nop                                 #  2848  0x6e870  1      
  nop                                 #  2849  0x6e871  1      
.L_6f920:                             #        0x6e872  0      
  addl $0x1, %r12d                    #  2850  0x6e872  4      
  orl $0x20, %r13d                    #  2851  0x6e876  4      
  movl %r12d, %r12d                   #  2852  0x6e87a  3      
  movzbl (%r15,%r12,1), %eax          #  2853  0x6e87d  5      
  jmpq .L_6bd80                       #  2854  0x6e882  5      
  nop                                 #  2855  0x6e887  1      
.L_6f940:                             #        0x6e888  0      
  addl $0x1, %r12d                    #  2856  0x6e888  4      
  orl $0x200, %r13d                   #  2857  0x6e88c  7      
  movl %r12d, %r12d                   #  2858  0x6e893  3      
  movzbl (%r15,%r12,1), %eax          #  2859  0x6e896  5      
  jmpq .L_6bd80                       #  2860  0x6e89b  5      
  nop                                 #  2861  0x6e8a0  1      
.L_6f960:                             #        0x6e8a1  0      
  movq $0x10023bf9, 0xb0(%rsp)        #  2862  0x6e8a1  12     
  cmpl $0x47, 0x100(%rsp)             #  2863  0x6e8ad  8      
  movl $0x10023bfd, %eax              #  2864  0x6e8b5  5      
  jmpq .L_6cbc0                       #  2865  0x6e8ba  5      
  xchgw %ax, %ax                      #  2866  0x6e8bf  3      
.L_6f980:                             #        0x6e8c2  0      
  orl $0x400, %r13d                   #  2867  0x6e8c2  7      
  movl %r12d, %r12d                   #  2868  0x6e8c9  3      
  movzbl (%r15,%r12,1), %eax          #  2869  0x6e8cc  5      
  jmpq .L_6bd80                       #  2870  0x6e8d1  5      
  nop                                 #  2871  0x6e8d6  1      
.L_6f9a0:                             #        0x6e8d7  0      
  movq 0xe0(%rsp), %rsi               #  2872  0x6e8d7  8      
  movl %esi, %esi                     #  2873  0x6e8df  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2874  0x6e8e1  5      
  leal 0x8(%rdx), %eax                #  2875  0x6e8e6  3      
  movl %esi, %esi                     #  2876  0x6e8e9  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2877  0x6e8eb  5      
  jmpq .L_6df60                       #  2878  0x6e8f0  5      
  xchgw %ax, %ax                      #  2879  0x6e8f5  3      
.L_6f9c0:                             #        0x6e8f8  0      
  movq 0xe0(%rsp), %rsi               #  2880  0x6e8f8  8      
  movl %esi, %esi                     #  2881  0x6e900  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2882  0x6e902  5      
  leal 0x8(%rdx), %eax                #  2883  0x6e907  3      
  movl %esi, %esi                     #  2884  0x6e90a  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2885  0x6e90c  5      
  jmpq .L_6df00                       #  2886  0x6e911  5      
  xchgw %ax, %ax                      #  2887  0x6e916  3      
.L_6f9e0:                             #        0x6e919  0      
  movq 0xe0(%rsp), %rsi               #  2888  0x6e919  8      
  movl %esi, %esi                     #  2889  0x6e921  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2890  0x6e923  5      
  leal 0x8(%rdx), %eax                #  2891  0x6e928  3      
  movl %esi, %esi                     #  2892  0x6e92b  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2893  0x6e92d  5      
  jmpq .L_6cde0                       #  2894  0x6e932  5      
  xchgw %ax, %ax                      #  2895  0x6e937  3      
.L_6fa00:                             #        0x6e93a  0      
  movq 0xe0(%rsp), %rsi               #  2896  0x6e93a  8      
  movl %esi, %esi                     #  2897  0x6e942  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2898  0x6e944  5      
  leal 0x8(%rdx), %eax                #  2899  0x6e949  3      
  movl %esi, %esi                     #  2900  0x6e94c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2901  0x6e94e  5      
  jmpq .L_6dd80                       #  2902  0x6e953  5      
  xchgw %ax, %ax                      #  2903  0x6e958  3      
.L_6fa20:                             #        0x6e95b  0      
  movq 0xe0(%rsp), %rax               #  2904  0x6e95b  8      
  movl %eax, %eax                     #  2905  0x6e963  2      
  movl (%r15,%rax,1), %edx            #  2906  0x6e965  4      
  cmpl $0x2f, %edx                    #  2907  0x6e969  3      
  ja .L_70280                         #  2908  0x6e96c  6      
  movq %rax, %rcx                     #  2909  0x6e972  3      
  nop                                 #  2910  0x6e975  1      
  movl %eax, %eax                     #  2911  0x6e976  2      
  movl 0xc(%r15,%rax,1), %eax         #  2912  0x6e978  5      
  addl %edx, %eax                     #  2913  0x6e97d  2      
  addl $0x8, %edx                     #  2914  0x6e97f  3      
  movl %ecx, %ecx                     #  2915  0x6e982  2      
  movl %edx, (%r15,%rcx,1)            #  2916  0x6e984  4      
  nop                                 #  2917  0x6e988  1      
.L_6fa60:                             #        0x6e989  0      
  movl %eax, %eax                     #  2918  0x6e989  2      
  movswq (%r15,%rax,1), %rcx          #  2919  0x6e98b  5      
  jmpq .L_6cd60                       #  2920  0x6e990  5      
  nop                                 #  2921  0x6e995  1      
  nop                                 #  2922  0x6e996  1      
.L_6fa80:                             #        0x6e997  0      
  movq 0xe0(%rsp), %rax               #  2923  0x6e997  8      
  movl %eax, %eax                     #  2924  0x6e99f  2      
  movl (%r15,%rax,1), %edx            #  2925  0x6e9a1  4      
  cmpl $0x2f, %edx                    #  2926  0x6e9a5  3      
  ja .L_70260                         #  2927  0x6e9a8  6      
  movq %rax, %rcx                     #  2928  0x6e9ae  3      
  nop                                 #  2929  0x6e9b1  1      
  movl %eax, %eax                     #  2930  0x6e9b2  2      
  movl 0xc(%r15,%rax,1), %eax         #  2931  0x6e9b4  5      
  addl %edx, %eax                     #  2932  0x6e9b9  2      
  addl $0x8, %edx                     #  2933  0x6e9bb  3      
  movl %ecx, %ecx                     #  2934  0x6e9be  2      
  movl %edx, (%r15,%rcx,1)            #  2935  0x6e9c0  4      
  nop                                 #  2936  0x6e9c4  1      
.L_6fac0:                             #        0x6e9c5  0      
  movl %eax, %eax                     #  2937  0x6e9c5  2      
  movzwl (%r15,%rax,1), %ecx          #  2938  0x6e9c7  5      
  movl $0x1, %eax                     #  2939  0x6e9cc  5      
  testq %rcx, %rcx                    #  2940  0x6e9d1  3      
  setne %sil                          #  2941  0x6e9d4  4      
  jmpq .L_6c840                       #  2942  0x6e9d8  5      
  nop                                 #  2943  0x6e9dd  1      
.L_6fae0:                             #        0x6e9de  0      
  movq 0xe0(%rsp), %rax               #  2944  0x6e9de  8      
  movl %eax, %eax                     #  2945  0x6e9e6  2      
  movl (%r15,%rax,1), %edx            #  2946  0x6e9e8  4      
  cmpl $0x2f, %edx                    #  2947  0x6e9ec  3      
  ja .L_6ff60                         #  2948  0x6e9ef  6      
  movq %rax, %rcx                     #  2949  0x6e9f5  3      
  nop                                 #  2950  0x6e9f8  1      
  movl %eax, %eax                     #  2951  0x6e9f9  2      
  movl 0xc(%r15,%rax,1), %eax         #  2952  0x6e9fb  5      
  addl %edx, %eax                     #  2953  0x6ea00  2      
  addl $0x8, %edx                     #  2954  0x6ea02  3      
  movl %ecx, %ecx                     #  2955  0x6ea05  2      
  movl %edx, (%r15,%rcx,1)            #  2956  0x6ea07  4      
  nop                                 #  2957  0x6ea0b  1      
.L_6fb20:                             #        0x6ea0c  0      
  movl %eax, %eax                     #  2958  0x6ea0c  2      
  movl (%r15,%rax,1), %eax            #  2959  0x6ea0e  4      
  movl 0xd0(%rsp), %edx               #  2960  0x6ea12  7      
  movl %eax, %eax                     #  2961  0x6ea19  2      
  movl %edx, (%r15,%rax,1)            #  2962  0x6ea1b  4      
  jmpq .L_6c4e0                       #  2963  0x6ea1f  5      
  nop                                 #  2964  0x6ea24  1      
.L_6fb40:                             #        0x6ea25  0      
  movq 0xe0(%rsp), %rax               #  2965  0x6ea25  8      
  movl %eax, %eax                     #  2966  0x6ea2d  2      
  movl (%r15,%rax,1), %edx            #  2967  0x6ea2f  4      
  cmpl $0x2f, %edx                    #  2968  0x6ea33  3      
  ja .L_70240                         #  2969  0x6ea36  6      
  movq %rax, %rcx                     #  2970  0x6ea3c  3      
  nop                                 #  2971  0x6ea3f  1      
  movl %eax, %eax                     #  2972  0x6ea40  2      
  movl 0xc(%r15,%rax,1), %eax         #  2973  0x6ea42  5      
  addl %edx, %eax                     #  2974  0x6ea47  2      
  addl $0x8, %edx                     #  2975  0x6ea49  3      
  movl %ecx, %ecx                     #  2976  0x6ea4c  2      
  movl %edx, (%r15,%rcx,1)            #  2977  0x6ea4e  4      
  nop                                 #  2978  0x6ea52  1      
.L_6fb80:                             #        0x6ea53  0      
  movl %eax, %eax                     #  2979  0x6ea53  2      
  movzwl (%r15,%rax,1), %ecx          #  2980  0x6ea55  5      
  jmpq .L_6c7e0                       #  2981  0x6ea5a  5      
  nop                                 #  2982  0x6ea5f  1      
  nop                                 #  2983  0x6ea60  1      
.L_6fba0:                             #        0x6ea61  0      
  movq 0xe0(%rsp), %rsi               #  2984  0x6ea61  8      
  movl %esi, %esi                     #  2985  0x6ea69  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2986  0x6ea6b  5      
  leal 0x8(%rdx), %eax                #  2987  0x6ea70  3      
  movl %esi, %esi                     #  2988  0x6ea73  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2989  0x6ea75  5      
  jmpq .L_6c740                       #  2990  0x6ea7a  5      
  xchgw %ax, %ax                      #  2991  0x6ea7f  3      
.L_6fbc0:                             #        0x6ea82  0      
  movq 0xe0(%rsp), %rax               #  2992  0x6ea82  8      
  movl %eax, %eax                     #  2993  0x6ea8a  2      
  movl (%r15,%rax,1), %edx            #  2994  0x6ea8c  4      
  cmpl $0x2f, %edx                    #  2995  0x6ea90  3      
  ja .L_70100                         #  2996  0x6ea93  6      
  movq %rax, %rcx                     #  2997  0x6ea99  3      
  nop                                 #  2998  0x6ea9c  1      
  movl %eax, %eax                     #  2999  0x6ea9d  2      
  movl 0xc(%r15,%rax,1), %eax         #  3000  0x6ea9f  5      
  addl %edx, %eax                     #  3001  0x6eaa4  2      
  addl $0x8, %edx                     #  3002  0x6eaa6  3      
  movl %ecx, %ecx                     #  3003  0x6eaa9  2      
  movl %edx, (%r15,%rcx,1)            #  3004  0x6eaab  4      
  nop                                 #  3005  0x6eaaf  1      
.L_6fc00:                             #        0x6eab0  0      
  movl %eax, %eax                     #  3006  0x6eab0  2      
  movzwl (%r15,%rax,1), %ecx          #  3007  0x6eab2  5      
  jmpq .L_6cf00                       #  3008  0x6eab7  5      
  nop                                 #  3009  0x6eabc  1      
  nop                                 #  3010  0x6eabd  1      
.L_6fc20:                             #        0x6eabe  0      
  jp .L_6cba0                         #  3011  0x6eabe  6      
  movb $0x2d, 0x29f(%rsp)             #  3012  0x6eac4  8      
  jmpq .L_6cba0                       #  3013  0x6eacc  5      
  nop                                 #  3014  0x6ead1  1      
.L_6fc40:                             #        0x6ead2  0      
  movzbl 0x29f(%rsp), %eax            #  3015  0x6ead2  8      
  movl $0x0, 0xb8(%rsp)               #  3016  0x6eada  11     
  jmpq .L_6d040                       #  3017  0x6eae5  5      
  nop                                 #  3018  0x6eaea  1      
.L_6fc60:                             #        0x6eaeb  0      
  movq 0xe0(%rsp), %rsi               #  3019  0x6eaeb  8      
  movl %esi, %esi                     #  3020  0x6eaf3  2      
  movl 0x8(%r15,%rsi,1), %edx         #  3021  0x6eaf5  5      
  leal 0x8(%rdx), %eax                #  3022  0x6eafa  3      
  movl %esi, %esi                     #  3023  0x6eafd  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  3024  0x6eaff  5      
  jmpq .L_6ccc0                       #  3025  0x6eb04  5      
  xchgw %ax, %ax                      #  3026  0x6eb09  3      
.L_6fc80:                             #        0x6eb0c  0      
  testb $0x1, %r13b                   #  3027  0x6eb0c  4      
  je .L_6e3a0                         #  3028  0x6eb10  6      
  jmpq .L_6e340                       #  3029  0x6eb16  5      
  xchgw %ax, %ax                      #  3030  0x6eb1b  3      
  nop                                 #  3031  0x6eb1e  1      
.L_6fca0:                             #        0x6eb1f  0      
  movl $0x40, %esi                    #  3032  0x6eb1f  5      
  movl %r14d, %edi                    #  3033  0x6eb24  3      
  nop                                 #  3034  0x6eb27  1      
  nop                                 #  3035  0x6eb28  1      
  callq ._malloc_r                    #  3036  0x6eb29  5      
  movq 0xc8(%rsp), %rcx               #  3037  0x6eb2e  8      
  movl %eax, %eax                     #  3038  0x6eb36  2      
  testq %rax, %rax                    #  3039  0x6eb38  3      
  movl %ecx, %ecx                     #  3040  0x6eb3b  2      
  movl %eax, (%r15,%rcx,1)            #  3041  0x6eb3d  4      
  movl %ecx, %ecx                     #  3042  0x6eb41  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  3043  0x6eb43  5      
  je .L_71100                         #  3044  0x6eb48  6      
  movq 0xc8(%rsp), %rsi               #  3045  0x6eb4e  8      
  movl %esi, %esi                     #  3046  0x6eb56  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  3047  0x6eb58  9      
  jmpq .L_6baa0                       #  3048  0x6eb61  5      
  nop                                 #  3049  0x6eb66  1      
.L_6fd00:                             #        0x6eb67  0      
  movl 0xb0(%rsp), %edi               #  3050  0x6eb67  7      
  movl %ecx, 0x98(%rsp)               #  3051  0x6eb6e  7      
  nop                                 #  3052  0x6eb75  1      
  callq .strlen                       #  3053  0x6eb76  5      
  movl 0x98(%rsp), %ecx               #  3054  0x6eb7b  7      
  testl %eax, %eax                    #  3055  0x6eb82  2      
  movl %eax, 0xc4(%rsp)               #  3056  0x6eb84  7      
  cmovnsl %eax, %ecx                  #  3057  0x6eb8b  3      
  movzbl 0x29f(%rsp), %eax            #  3058  0x6eb8e  8      
  nop                                 #  3059  0x6eb96  1      
  movl %ecx, 0xb8(%rsp)               #  3060  0x6eb97  7      
  jmpq .L_6d040                       #  3061  0x6eb9e  5      
  nop                                 #  3062  0x6eba3  1      
  nop                                 #  3063  0x6eba4  1      
.L_6fd60:                             #        0x6eba5  0      
  movl 0xc8(%rsp), %esi               #  3064  0x6eba5  7      
  leal 0x220(%rsp), %edx              #  3065  0x6ebac  7      
  movl %r14d, %edi                    #  3066  0x6ebb3  3      
  nop                                 #  3067  0x6ebb6  1      
  callq .__ssprint_r                  #  3068  0x6ebb7  5      
  testl %eax, %eax                    #  3069  0x6ebbc  2      
  jne .L_6d2c0                        #  3070  0x6ebbe  6      
  movl 0x28c(%rsp), %ecx              #  3071  0x6ebc4  7      
  leal 0x1e0(%rsp), %ebx              #  3072  0x6ebcb  7      
  jmpq .L_6e3a0                       #  3073  0x6ebd2  5      
  nop                                 #  3074  0x6ebd7  1      
.L_6fda0:                             #        0x6ebd8  0      
  movl 0xc8(%rsp), %esi               #  3075  0x6ebd8  7      
  leal 0x220(%rsp), %edx              #  3076  0x6ebdf  7      
  movl %r14d, %edi                    #  3077  0x6ebe6  3      
  nop                                 #  3078  0x6ebe9  1      
  callq .__ssprint_r                  #  3079  0x6ebea  5      
  testl %eax, %eax                    #  3080  0x6ebef  2      
  jne .L_6d2c0                        #  3081  0x6ebf1  6      
  leal 0x1e0(%rsp), %ebx              #  3082  0x6ebf7  7      
  jmpq .L_6f740                       #  3083  0x6ebfe  5      
  nop                                 #  3084  0x6ec03  1      
.L_6fde0:                             #        0x6ec04  0      
  movl 0xc8(%rsp), %esi               #  3085  0x6ec04  7      
  leal 0x220(%rsp), %edx              #  3086  0x6ec0b  7      
  movl %r14d, %edi                    #  3087  0x6ec12  3      
  nop                                 #  3088  0x6ec15  1      
  callq .__ssprint_r                  #  3089  0x6ec16  5      
  testl %eax, %eax                    #  3090  0x6ec1b  2      
  je .L_6d280                         #  3091  0x6ec1d  6      
  nop                                 #  3092  0x6ec23  1      
  nop                                 #  3093  0x6ec24  1      
.L_6fe20:                             #        0x6ec25  0      
  movq 0xc8(%rsp), %rsi               #  3094  0x6ec25  8      
  movl %esi, %esi                     #  3095  0x6ec2d  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3096  0x6ec2f  6      
  jmpq .L_6d300                       #  3097  0x6ec35  5      
  nop                                 #  3098  0x6ec3a  1      
.L_6fe40:                             #        0x6ec3b  0      
  movl 0xc8(%rsp), %esi               #  3099  0x6ec3b  7      
  leal 0x220(%rsp), %edx              #  3100  0x6ec42  7      
  movl %r14d, %edi                    #  3101  0x6ec49  3      
  nop                                 #  3102  0x6ec4c  1      
  callq .__ssprint_r                  #  3103  0x6ec4d  5      
  testl %eax, %eax                    #  3104  0x6ec52  2      
  jne .L_6d2c0                        #  3105  0x6ec54  6      
  leal 0x1e0(%rsp), %ebx              #  3106  0x6ec5a  7      
  jmpq .L_6d460                       #  3107  0x6ec61  5      
  nop                                 #  3108  0x6ec66  1      
.L_6fe80:                             #        0x6ec67  0      
  movq %r13, %r12                     #  3109  0x6ec67  3      
  movl 0xc4(%rsp), %r13d              #  3110  0x6ec6a  8      
  nop                                 #  3111  0x6ec72  1      
  nop                                 #  3112  0x6ec73  1      
.L_6fea0:                             #        0x6ec74  0      
  movl %eax, %eax                     #  3113  0x6ec74  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  3114  0x6ec76  5      
  movl 0x224(%rsp), %edx              #  3115  0x6ec7b  7      
  addl %ebx, 0x228(%rsp)              #  3116  0x6ec82  7      
  movl %eax, %eax                     #  3117  0x6ec89  2      
  movl $0x10023f00, (%r15,%rax,1)     #  3118  0x6ec8b  8      
  nop                                 #  3119  0x6ec93  1      
  addl $0x1, %edx                     #  3120  0x6ec94  3      
  cmpl $0x7, %edx                     #  3121  0x6ec97  3      
  movl %edx, 0x224(%rsp)              #  3122  0x6ec9a  7      
  jg .L_70c00                         #  3123  0x6eca1  6      
  addl $0x8, %eax                     #  3124  0x6eca7  3      
  nop                                 #  3125  0x6ecaa  1      
.L_6fee0:                             #        0x6ecab  0      
  movl 0x118(%rsp), %esi              #  3126  0x6ecab  7      
  movl 0xb0(%rsp), %ebx               #  3127  0x6ecb2  7      
  movl %eax, %eax                     #  3128  0x6ecb9  2      
  movl %esi, 0x4(%r15,%rax,1)         #  3129  0x6ecbb  5      
  movl %eax, %eax                     #  3130  0x6ecc0  2      
  movl %ebx, (%r15,%rax,1)            #  3131  0x6ecc2  4      
  nop                                 #  3132  0x6ecc6  1      
  addl %esi, 0x228(%rsp)              #  3133  0x6ecc7  7      
  jmpq .L_6d900                       #  3134  0x6ecce  5      
  nop                                 #  3135  0x6ecd3  1      
  nop                                 #  3136  0x6ecd4  1      
.L_6ff20:                             #        0x6ecd5  0      
  movl 0xc8(%rsp), %esi               #  3137  0x6ecd5  7      
  leal 0x220(%rsp), %edx              #  3138  0x6ecdc  7      
  movl %r14d, %edi                    #  3139  0x6ece3  3      
  movl %r8d, 0x88(%rsp)               #  3140  0x6ece6  8      
  xchgw %ax, %ax                      #  3141  0x6ecee  3      
  callq .__ssprint_r                  #  3142  0x6ecf1  5      
  testl %eax, %eax                    #  3143  0x6ecf6  2      
  movl 0x88(%rsp), %r8d               #  3144  0x6ecf8  8      
  jne .L_6d2c0                        #  3145  0x6ed00  6      
  leal 0x1e0(%rsp), %ebx              #  3146  0x6ed06  7      
  jmpq .L_6db20                       #  3147  0x6ed0d  5      
  nop                                 #  3148  0x6ed12  1      
.L_6ff60:                             #        0x6ed13  0      
  movq 0xe0(%rsp), %rsi               #  3149  0x6ed13  8      
  movl %esi, %esi                     #  3150  0x6ed1b  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3151  0x6ed1d  5      
  leal 0x8(%rax), %edx                #  3152  0x6ed22  3      
  movl %esi, %esi                     #  3153  0x6ed25  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3154  0x6ed27  5      
  jmpq .L_6fb20                       #  3155  0x6ed2c  5      
  xchgw %ax, %ax                      #  3156  0x6ed31  3      
.L_6ff80:                             #        0x6ed34  0      
  movl 0x108(%rsp), %esi              #  3157  0x6ed34  7      
  subl 0xb0(%rsp), %esi               #  3158  0x6ed3b  7      
  movl %esi, 0xc4(%rsp)               #  3159  0x6ed42  7      
  movq 0xf0(%rsp), %rsi               #  3160  0x6ed49  8      
  nop                                 #  3161  0x6ed51  1      
  jmpq .L_6c920                       #  3162  0x6ed52  5      
  nop                                 #  3163  0x6ed57  1      
  nop                                 #  3164  0x6ed58  1      
.L_6ffc0:                             #        0x6ed59  0      
  movl $0x6, 0xc4(%rsp)               #  3165  0x6ed59  11     
  cmpl $0x6, %r10d                    #  3166  0x6ed64  4      
  cmoval 0xc4(%rsp), %r10d            #  3167  0x6ed68  9      
  movl $0x0, %eax                     #  3168  0x6ed71  5      
  nop                                 #  3169  0x6ed76  1      
  movq $0x0, 0xe8(%rsp)               #  3170  0x6ed77  12     
  movl $0x0, 0x104(%rsp)              #  3171  0x6ed83  11     
  nop                                 #  3172  0x6ed8e  1      
  movl $0x0, 0x114(%rsp)              #  3173  0x6ed8f  11     
  movl $0x0, 0x12c(%rsp)              #  3174  0x6ed9a  11     
  nop                                 #  3175  0x6eda5  1      
  movl $0x0, 0x11c(%rsp)              #  3176  0x6eda6  11     
  movq $0x10023c12, 0xb0(%rsp)        #  3177  0x6edb1  12     
  testl %r10d, %r10d                  #  3178  0x6edbd  3      
  nop                                 #  3179  0x6edc0  1      
  movl %r10d, 0xc4(%rsp)              #  3180  0x6edc1  8      
  cmovnsl %r10d, %eax                 #  3181  0x6edc9  4      
  movl %eax, 0xb8(%rsp)               #  3182  0x6edcd  7      
  xorl %eax, %eax                     #  3183  0x6edd4  2      
  jmpq .L_6be60                       #  3184  0x6edd6  5      
  nop                                 #  3185  0x6eddb  1      
.L_70060:                             #        0x6eddc  0      
  movl %r10d, 0xb8(%rsp)              #  3186  0x6eddc  8      
  movzbl 0x29f(%rsp), %eax            #  3187  0x6ede4  8      
  movl %r10d, 0xc4(%rsp)              #  3188  0x6edec  8      
  jmpq .L_6d040                       #  3189  0x6edf4  5      
  nop                                 #  3190  0x6edf9  1      
.L_70080:                             #        0x6edfa  0      
  cmpl $0x46, 0x100(%rsp)             #  3191  0x6edfa  8      
  je .L_70f40                         #  3192  0x6ee02  6      
  cmpl $0x65, 0x100(%rsp)             #  3193  0x6ee08  8      
  jle .L_70de0                        #  3194  0x6ee10  6      
  nop                                 #  3195  0x6ee16  1      
  cmpl $0x66, 0x100(%rsp)             #  3196  0x6ee17  8      
  movl 0x28c(%rsp), %ecx              #  3197  0x6ee1f  7      
  jne .L_6ef00                        #  3198  0x6ee26  6      
  nop                                 #  3199  0x6ee2c  1      
.L_700c0:                             #        0x6ee2d  0      
  testl %ecx, %ecx                    #  3200  0x6ee2d  2      
  jle .L_70fc0                        #  3201  0x6ee2f  6      
  testl %r10d, %r10d                  #  3202  0x6ee35  3      
  jne .L_700e0                        #  3203  0x6ee38  6      
  testb $0x1, %r13b                   #  3204  0x6ee3e  4      
  je .L_70dc0                         #  3205  0x6ee42  6      
  nop                                 #  3206  0x6ee48  1      
.L_700e0:                             #        0x6ee49  0      
  leal 0x1(%rcx,%r10,1), %r10d        #  3207  0x6ee49  5      
  movl %r10d, 0xc4(%rsp)              #  3208  0x6ee4e  8      
  jmpq .L_6ef40                       #  3209  0x6ee56  5      
  nop                                 #  3210  0x6ee5b  1      
.L_70100:                             #        0x6ee5c  0      
  movq 0xe0(%rsp), %rsi               #  3211  0x6ee5c  8      
  movl %esi, %esi                     #  3212  0x6ee64  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3213  0x6ee66  5      
  leal 0x8(%rax), %edx                #  3214  0x6ee6b  3      
  movl %esi, %esi                     #  3215  0x6ee6e  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3216  0x6ee70  5      
  jmpq .L_6fc00                       #  3217  0x6ee75  5      
  xchgw %ax, %ax                      #  3218  0x6ee7a  3      
.L_70120:                             #        0x6ee7d  0      
  movq 0xe0(%rsp), %rax               #  3219  0x6ee7d  8      
  movl %eax, %eax                     #  3220  0x6ee85  2      
  movl (%r15,%rax,1), %edx            #  3221  0x6ee87  4      
  cmpl $0x2f, %edx                    #  3222  0x6ee8b  3      
  ja .L_70b40                         #  3223  0x6ee8e  6      
  movq %rax, %rcx                     #  3224  0x6ee94  3      
  nop                                 #  3225  0x6ee97  1      
  movl %eax, %eax                     #  3226  0x6ee98  2      
  movl 0xc(%r15,%rax,1), %eax         #  3227  0x6ee9a  5      
  addl %edx, %eax                     #  3228  0x6ee9f  2      
  addl $0x8, %edx                     #  3229  0x6eea1  3      
  movl %ecx, %ecx                     #  3230  0x6eea4  2      
  movl %edx, (%r15,%rcx,1)            #  3231  0x6eea6  4      
  nop                                 #  3232  0x6eeaa  1      
.L_70160:                             #        0x6eeab  0      
  movl %eax, %eax                     #  3233  0x6eeab  2      
  movl (%r15,%rax,1), %ecx            #  3234  0x6eead  4      
  jmpq .L_6cf00                       #  3235  0x6eeb1  5      
  nop                                 #  3236  0x6eeb6  1      
  nop                                 #  3237  0x6eeb7  1      
.L_70180:                             #        0x6eeb8  0      
  andl $0x200, %r13d                  #  3238  0x6eeb8  7      
  je .L_70a80                         #  3239  0x6eebf  6      
  movq 0xe0(%rsp), %rcx               #  3240  0x6eec5  8      
  movl %ecx, %ecx                     #  3241  0x6eecd  2      
  movl (%r15,%rcx,1), %edx            #  3242  0x6eecf  4      
  cmpl $0x2f, %edx                    #  3243  0x6eed3  3      
  xchgw %ax, %ax                      #  3244  0x6eed6  3      
  ja .L_70f20                         #  3245  0x6eed9  6      
  movl %ecx, %ecx                     #  3246  0x6eedf  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3247  0x6eee1  5      
  addl %edx, %eax                     #  3248  0x6eee6  2      
  addl $0x8, %edx                     #  3249  0x6eee8  3      
  movl %ecx, %ecx                     #  3250  0x6eeeb  2      
  movl %edx, (%r15,%rcx,1)            #  3251  0x6eeed  4      
  nop                                 #  3252  0x6eef1  1      
.L_701c0:                             #        0x6eef2  0      
  movl %eax, %eax                     #  3253  0x6eef2  2      
  movl (%r15,%rax,1), %eax            #  3254  0x6eef4  4      
  movzbl 0xd0(%rsp), %edx             #  3255  0x6eef8  8      
  movl %eax, %eax                     #  3256  0x6ef00  2      
  movb %dl, (%r15,%rax,1)             #  3257  0x6ef02  4      
  jmpq .L_6c4e0                       #  3258  0x6ef06  5      
  nop                                 #  3259  0x6ef0b  1      
.L_701e0:                             #        0x6ef0c  0      
  movq 0xe0(%rsp), %rax               #  3260  0x6ef0c  8      
  movl %eax, %eax                     #  3261  0x6ef14  2      
  movl (%r15,%rax,1), %edx            #  3262  0x6ef16  4      
  cmpl $0x2f, %edx                    #  3263  0x6ef1a  3      
  ja .L_70bc0                         #  3264  0x6ef1d  6      
  movq %rax, %rcx                     #  3265  0x6ef23  3      
  nop                                 #  3266  0x6ef26  1      
  movl %eax, %eax                     #  3267  0x6ef27  2      
  movl 0xc(%r15,%rax,1), %eax         #  3268  0x6ef29  5      
  addl %edx, %eax                     #  3269  0x6ef2e  2      
  addl $0x8, %edx                     #  3270  0x6ef30  3      
  movl %ecx, %ecx                     #  3271  0x6ef33  2      
  movl %edx, (%r15,%rcx,1)            #  3272  0x6ef35  4      
  nop                                 #  3273  0x6ef39  1      
.L_70220:                             #        0x6ef3a  0      
  movl %eax, %eax                     #  3274  0x6ef3a  2      
  movl (%r15,%rax,1), %ecx            #  3275  0x6ef3c  4      
  movl $0x1, %eax                     #  3276  0x6ef40  5      
  testq %rcx, %rcx                    #  3277  0x6ef45  3      
  setne %sil                          #  3278  0x6ef48  4      
  jmpq .L_6c840                       #  3279  0x6ef4c  5      
  nop                                 #  3280  0x6ef51  1      
.L_70240:                             #        0x6ef52  0      
  movq 0xe0(%rsp), %rsi               #  3281  0x6ef52  8      
  movl %esi, %esi                     #  3282  0x6ef5a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3283  0x6ef5c  5      
  leal 0x8(%rax), %edx                #  3284  0x6ef61  3      
  movl %esi, %esi                     #  3285  0x6ef64  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3286  0x6ef66  5      
  jmpq .L_6fb80                       #  3287  0x6ef6b  5      
  xchgw %ax, %ax                      #  3288  0x6ef70  3      
.L_70260:                             #        0x6ef73  0      
  movq 0xe0(%rsp), %rsi               #  3289  0x6ef73  8      
  movl %esi, %esi                     #  3290  0x6ef7b  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3291  0x6ef7d  5      
  leal 0x8(%rax), %edx                #  3292  0x6ef82  3      
  movl %esi, %esi                     #  3293  0x6ef85  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3294  0x6ef87  5      
  jmpq .L_6fac0                       #  3295  0x6ef8c  5      
  xchgw %ax, %ax                      #  3296  0x6ef91  3      
.L_70280:                             #        0x6ef94  0      
  movq 0xe0(%rsp), %rsi               #  3297  0x6ef94  8      
  movl %esi, %esi                     #  3298  0x6ef9c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3299  0x6ef9e  5      
  leal 0x8(%rax), %edx                #  3300  0x6efa3  3      
  movl %esi, %esi                     #  3301  0x6efa6  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3302  0x6efa8  5      
  jmpq .L_6fa60                       #  3303  0x6efad  5      
  xchgw %ax, %ax                      #  3304  0x6efb2  3      
.L_702a0:                             #        0x6efb5  0      
  cmpl $0xffffffff, %r10d             #  3305  0x6efb5  7      
  je .L_70ee0                         #  3306  0x6efbc  6      
  cmpl $0x47, 0x100(%rsp)             #  3307  0x6efc2  8      
  je .L_70c40                         #  3308  0x6efca  6      
  cmpl $0x67, 0x100(%rsp)             #  3309  0x6efd0  8      
  je .L_70c40                         #  3310  0x6efd8  6      
  xorl %r11d, %r11d                   #  3311  0x6efde  3      
  movq $0x0, 0xe8(%rsp)               #  3312  0x6efe1  12     
  jmpq .L_6ed00                       #  3313  0x6efed  5      
  nop                                 #  3314  0x6eff2  1      
.L_702e0:                             #        0x6eff3  0      
  movq 0xe0(%rsp), %rax               #  3315  0x6eff3  8      
  movl %eax, %eax                     #  3316  0x6effb  2      
  movl (%r15,%rax,1), %edx            #  3317  0x6effd  4      
  cmpl $0x2f, %edx                    #  3318  0x6f001  3      
  ja .L_70b80                         #  3319  0x6f004  6      
  movq %rax, %rcx                     #  3320  0x6f00a  3      
  nop                                 #  3321  0x6f00d  1      
  movl %eax, %eax                     #  3322  0x6f00e  2      
  movl 0xc(%r15,%rax,1), %eax         #  3323  0x6f010  5      
  addl %edx, %eax                     #  3324  0x6f015  2      
  addl $0x8, %edx                     #  3325  0x6f017  3      
  movl %ecx, %ecx                     #  3326  0x6f01a  2      
  movl %edx, (%r15,%rcx,1)            #  3327  0x6f01c  4      
  nop                                 #  3328  0x6f020  1      
.L_70320:                             #        0x6f021  0      
  movl %eax, %eax                     #  3329  0x6f021  2      
  movslq (%r15,%rax,1), %rcx          #  3330  0x6f023  4      
  jmpq .L_6cd60                       #  3331  0x6f027  5      
  nop                                 #  3332  0x6f02c  1      
  nop                                 #  3333  0x6f02d  1      
.L_70340:                             #        0x6f02e  0      
  movq 0xe0(%rsp), %rax               #  3334  0x6f02e  8      
  movl %eax, %eax                     #  3335  0x6f036  2      
  movl (%r15,%rax,1), %edx            #  3336  0x6f038  4      
  cmpl $0x2f, %edx                    #  3337  0x6f03c  3      
  ja .L_70880                         #  3338  0x6f03f  6      
  movq %rax, %rcx                     #  3339  0x6f045  3      
  nop                                 #  3340  0x6f048  1      
  movl %eax, %eax                     #  3341  0x6f049  2      
  movl 0xc(%r15,%rax,1), %eax         #  3342  0x6f04b  5      
  addl %edx, %eax                     #  3343  0x6f050  2      
  addl $0x8, %edx                     #  3344  0x6f052  3      
  movl %ecx, %ecx                     #  3345  0x6f055  2      
  movl %edx, (%r15,%rcx,1)            #  3346  0x6f057  4      
  nop                                 #  3347  0x6f05b  1      
.L_70380:                             #        0x6f05c  0      
  movl %eax, %eax                     #  3348  0x6f05c  2      
  movl (%r15,%rax,1), %ecx            #  3349  0x6f05e  4      
  jmpq .L_6c7e0                       #  3350  0x6f062  5      
  nop                                 #  3351  0x6f067  1      
  nop                                 #  3352  0x6f068  1      
.L_703a0:                             #        0x6f069  0      
  subl $0x2, 0x100(%rsp)              #  3353  0x6f069  8      
  nop                                 #  3354  0x6f071  1      
  nop                                 #  3355  0x6f072  1      
.L_703c0:                             #        0x6f073  0      
  subl $0x1, %ecx                     #  3356  0x6f073  3      
  cmpl $0x41, 0x100(%rsp)             #  3357  0x6f076  8      
  movl %ecx, 0x28c(%rsp)              #  3358  0x6f07e  7      
  sete %dl                            #  3359  0x6f085  3      
  cmpl $0x61, 0x100(%rsp)             #  3360  0x6f088  8      
  sete %al                            #  3361  0x6f090  3      
  orl %eax, %edx                      #  3362  0x6f093  2      
  movzbl 0x100(%rsp), %eax            #  3363  0x6f095  8      
  addl $0xf, %eax                     #  3364  0x6f09d  3      
  andl $0x1, %edx                     #  3365  0x6f0a0  3      
  cmovel 0x100(%rsp), %eax            #  3366  0x6f0a3  8      
  testl %ecx, %ecx                    #  3367  0x6f0ab  2      
  nop                                 #  3368  0x6f0ad  1      
  movb %al, 0x270(%rsp)               #  3369  0x6f0ae  7      
  js .L_70ea0                         #  3370  0x6f0b5  6      
  movb $0x2b, 0x271(%rsp)             #  3371  0x6f0bb  8      
  nop                                 #  3372  0x6f0c3  1      
.L_70420:                             #        0x6f0c4  0      
  cmpl $0x9, %ecx                     #  3373  0x6f0c4  3      
  jle .L_70ac0                        #  3374  0x6f0c7  6      
  movq 0x168(%rsp), %rsi              #  3375  0x6f0cd  8      
  movl $0x66666667, %edi              #  3376  0x6f0d5  5      
  nop                                 #  3377  0x6f0da  1      
.L_70440:                             #        0x6f0db  0      
  movl %ecx, %eax                     #  3378  0x6f0db  2      
  subl $0x1, %esi                     #  3379  0x6f0dd  3      
  imull %edi                          #  3380  0x6f0e0  2      
  movl %ecx, %eax                     #  3381  0x6f0e2  2      
  sarl $0x1f, %eax                    #  3382  0x6f0e4  3      
  sarl $0x2, %edx                     #  3383  0x6f0e7  3      
  subl %eax, %edx                     #  3384  0x6f0ea  2      
  leal (%rdx,%rdx,4), %eax            #  3385  0x6f0ec  3      
  addl %eax, %eax                     #  3386  0x6f0ef  2      
  subl %eax, %ecx                     #  3387  0x6f0f1  2      
  movl %ecx, %eax                     #  3388  0x6f0f3  2      
  movl %edx, %ecx                     #  3389  0x6f0f5  2      
  addl $0x30, %eax                    #  3390  0x6f0f7  3      
  nop                                 #  3391  0x6f0fa  1      
  cmpl $0x9, %edx                     #  3392  0x6f0fb  3      
  movl %esi, %esi                     #  3393  0x6f0fe  2      
  movb %al, (%r15,%rsi,1)             #  3394  0x6f100  4      
  jg .L_70440                         #  3395  0x6f104  6      
  leal -0x1(%rsi), %eax               #  3396  0x6f10a  3      
  leal 0x30(%rcx), %edx               #  3397  0x6f10d  3      
  movl %eax, %eax                     #  3398  0x6f110  2      
  movb %dl, (%r15,%rax,1)             #  3399  0x6f112  4      
  cmpl %eax, 0x168(%rsp)              #  3400  0x6f116  7      
  xchgw %ax, %ax                      #  3401  0x6f11d  3      
  jbe .L_71180                        #  3402  0x6f120  6      
  movl %esi, %ecx                     #  3403  0x6f126  2      
  leal 0x270(%rsp), %esi              #  3404  0x6f128  7      
  movq 0x168(%rsp), %rdi              #  3405  0x6f12f  8      
  leaq 0x2(%rsi), %rax                #  3406  0x6f137  4      
  jmpq .L_704c0                       #  3407  0x6f13b  5      
  nop                                 #  3408  0x6f140  1      
.L_704a0:                             #        0x6f141  0      
  movl %ecx, %edx                     #  3409  0x6f141  2      
  addl $0x1, %ecx                     #  3410  0x6f143  3      
  movl %edx, %edx                     #  3411  0x6f146  2      
  movzbl (%r15,%rdx,1), %edx          #  3412  0x6f148  5      
  nop                                 #  3413  0x6f14d  1      
  nop                                 #  3414  0x6f14e  1      
.L_704c0:                             #        0x6f14f  0      
  movl %eax, %eax                     #  3415  0x6f14f  2      
  movb %dl, (%r15,%rax,1)             #  3416  0x6f151  4      
  addl $0x1, %eax                     #  3417  0x6f155  3      
  cmpl %edi, %ecx                     #  3418  0x6f158  2      
  jb .L_704a0                         #  3419  0x6f15a  6      
  nop                                 #  3420  0x6f160  1      
  nop                                 #  3421  0x6f161  1      
.L_704e0:                             #        0x6f162  0      
  subl %esi, %eax                     #  3422  0x6f162  2      
  movl %eax, 0x144(%rsp)              #  3423  0x6f164  7      
  addl 0x118(%rsp), %eax              #  3424  0x6f16b  7      
  cmpl $0x1, 0x118(%rsp)              #  3425  0x6f172  8      
  movl %eax, 0xc4(%rsp)               #  3426  0x6f17a  7      
  nop                                 #  3427  0x6f181  1      
  jle .L_70e00                        #  3428  0x6f182  6      
  nop                                 #  3429  0x6f188  1      
  nop                                 #  3430  0x6f189  1      
.L_70520:                             #        0x6f18a  0      
  addl $0x1, 0xc4(%rsp)               #  3431  0x6f18a  8      
  nop                                 #  3432  0x6f192  1      
  nop                                 #  3433  0x6f193  1      
.L_70540:                             #        0x6f194  0      
  andl $0xfffffbff, %r13d             #  3434  0x6f194  7      
  movl $0x0, 0x114(%rsp)              #  3435  0x6f19b  11     
  movl $0x0, 0x12c(%rsp)              #  3436  0x6f1a6  11     
  nop                                 #  3437  0x6f1b1  1      
  movl $0x0, 0x11c(%rsp)              #  3438  0x6f1b2  11     
  nop                                 #  3439  0x6f1bd  1      
  nop                                 #  3440  0x6f1be  1      
.L_70580:                             #        0x6f1bf  0      
  cmpb $0x0, 0xd8(%rsp)               #  3441  0x6f1bf  8      
  je .L_705e0                         #  3442  0x6f1c7  6      
  cmpl $0x0, 0xc4(%rsp)               #  3443  0x6f1cd  8      
  movl $0x0, %edx                     #  3444  0x6f1d5  5      
  movb $0x2d, 0x29f(%rsp)             #  3445  0x6f1da  8      
  nop                                 #  3446  0x6f1e2  1      
  cmovnsl 0xc4(%rsp), %edx            #  3447  0x6f1e3  8      
  movl $0x2d, %eax                    #  3448  0x6f1eb  5      
  movl $0x0, 0x104(%rsp)              #  3449  0x6f1f0  11     
  movl %edx, 0xb8(%rsp)               #  3450  0x6f1fb  7      
  nop                                 #  3451  0x6f202  1      
  jmpq .L_6c9c0                       #  3452  0x6f203  5      
  nop                                 #  3453  0x6f208  1      
  nop                                 #  3454  0x6f209  1      
.L_705e0:                             #        0x6f20a  0      
  cmpl $0x0, 0xc4(%rsp)               #  3455  0x6f20a  8      
  movl $0x0, %eax                     #  3456  0x6f212  5      
  movl $0x0, 0x104(%rsp)              #  3457  0x6f217  11     
  cmovnsl 0xc4(%rsp), %eax            #  3458  0x6f222  8      
  movl %eax, 0xb8(%rsp)               #  3459  0x6f22a  7      
  movzbl 0x29f(%rsp), %eax            #  3460  0x6f231  8      
  jmpq .L_6c9a0                       #  3461  0x6f239  5      
  nop                                 #  3462  0x6f23e  1      
.L_70620:                             #        0x6f23f  0      
  movl %r13d, 0xc4(%rsp)              #  3463  0x6f23f  8      
  movq 0xb8(%rsp), %r12               #  3464  0x6f247  8      
  movq 0xe8(%rsp), %rbx               #  3465  0x6f24f  8      
  movl 0xd8(%rsp), %r13d              #  3466  0x6f257  8      
  jmpq .L_6f480                       #  3467  0x6f25f  5      
  nop                                 #  3468  0x6f264  1      
  nop                                 #  3469  0x6f265  1      
.L_70660:                             #        0x6f266  0      
  movl 0xc8(%rsp), %esi               #  3470  0x6f266  7      
  leal 0x220(%rsp), %edx              #  3471  0x6f26d  7      
  movl %r14d, %edi                    #  3472  0x6f274  3      
  movl %r8d, 0x88(%rsp)               #  3473  0x6f277  8      
  xchgw %ax, %ax                      #  3474  0x6f27f  3      
  callq .__ssprint_r                  #  3475  0x6f282  5      
  testl %eax, %eax                    #  3476  0x6f287  2      
  movl 0x88(%rsp), %r8d               #  3477  0x6f289  8      
  jne .L_6d2c0                        #  3478  0x6f291  6      
  movl 0x118(%rsp), %ecx              #  3479  0x6f297  7      
  leal 0x1e0(%rsp), %ebx              #  3480  0x6f29e  7      
  xchgw %ax, %ax                      #  3481  0x6f2a5  3      
  subl 0x28c(%rsp), %ecx              #  3482  0x6f2a8  7      
  jmpq .L_6e420                       #  3483  0x6f2af  5      
  nop                                 #  3484  0x6f2b4  1      
  nop                                 #  3485  0x6f2b5  1      
.L_706c0:                             #        0x6f2b6  0      
  testb $0x1, %r13b                   #  3486  0x6f2b6  4      
  jne .L_6ee40                        #  3487  0x6f2ba  6      
  movl 0x27c(%rsp), %edx              #  3488  0x6f2c0  7      
  jmpq .L_6eec0                       #  3489  0x6f2c7  5      
  nop                                 #  3490  0x6f2cc  1      
.L_706e0:                             #        0x6f2cd  0      
  cmpl $0x45, 0x100(%rsp)             #  3491  0x6f2cd  8      
  je .L_70be0                         #  3492  0x6f2d5  6      
  cmpl $0x65, 0x100(%rsp)             #  3493  0x6f2db  8      
  je .L_70be0                         #  3494  0x6f2e3  6      
  nop                                 #  3495  0x6f2e9  1      
  movl %r10d, 0xc4(%rsp)              #  3496  0x6f2ea  8      
  movl $0x2, %esi                     #  3497  0x6f2f2  5      
  jmpq .L_6eda0                       #  3498  0x6f2f7  5      
  nop                                 #  3499  0x6f2fc  1      
.L_70720:                             #        0x6f2fd  0      
  movl 0xc8(%rsp), %esi               #  3500  0x6f2fd  7      
  leal 0x220(%rsp), %edx              #  3501  0x6f304  7      
  movl %r14d, %edi                    #  3502  0x6f30b  3      
  nop                                 #  3503  0x6f30e  1      
  callq .__ssprint_r                  #  3504  0x6f30f  5      
  testl %eax, %eax                    #  3505  0x6f314  2      
  jne .L_6d2c0                        #  3506  0x6f316  6      
  leal 0x1e0(%rsp), %eax              #  3507  0x6f31c  7      
  jmpq .L_6f7c0                       #  3508  0x6f323  5      
  nop                                 #  3509  0x6f328  1      
.L_70760:                             #        0x6f329  0      
  movl %ecx, 0x11c(%rsp)              #  3510  0x6f329  7      
  movl $0x0, 0x114(%rsp)              #  3511  0x6f330  11     
  movl $0x0, 0x12c(%rsp)              #  3512  0x6f33b  11     
  nop                                 #  3513  0x6f346  1      
  jmpq .L_70580                       #  3514  0x6f347  5      
  nop                                 #  3515  0x6f34c  1      
  nop                                 #  3516  0x6f34d  1      
.L_707a0:                             #        0x6f34e  0      
  movl 0x58(%rsp), %r8d               #  3517  0x6f34e  5      
  leal 0x284(%rsp), %edx              #  3518  0x6f353  7      
  xorl %ecx, %ecx                     #  3519  0x6f35a  2      
  xorl %esi, %esi                     #  3520  0x6f35c  2      
  movl %r14d, %edi                    #  3521  0x6f35e  3      
  nop                                 #  3522  0x6f361  1      
  callq ._wcsrtombs_r                 #  3523  0x6f362  5      
  cmpl $0xffffffff, %eax              #  3524  0x6f367  5      
  movl %eax, 0xc4(%rsp)               #  3525  0x6f36c  7      
  je .L_71120                         #  3526  0x6f373  6      
  movl 0xb0(%rsp), %eax               #  3527  0x6f379  7      
  movl %eax, 0x284(%rsp)              #  3528  0x6f380  7      
  xchgw %ax, %ax                      #  3529  0x6f387  3      
  jmpq .L_6f480                       #  3530  0x6f38a  5      
  nop                                 #  3531  0x6f38f  1      
  nop                                 #  3532  0x6f390  1      
.L_70800:                             #        0x6f391  0      
  movq 0xe0(%rsp), %rsi               #  3533  0x6f391  8      
  movl %esi, %esi                     #  3534  0x6f399  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3535  0x6f39b  5      
  leal 0x8(%rax), %edx                #  3536  0x6f3a0  3      
  movl %esi, %esi                     #  3537  0x6f3a3  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3538  0x6f3a5  5      
  jmpq .L_6f1c0                       #  3539  0x6f3aa  5      
  xchgw %ax, %ax                      #  3540  0x6f3af  3      
.L_70820:                             #        0x6f3b2  0      
  movq 0xe0(%rsp), %rsi               #  3541  0x6f3b2  8      
  movl %esi, %esi                     #  3542  0x6f3ba  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3543  0x6f3bc  5      
  leal 0x8(%rax), %edx                #  3544  0x6f3c1  3      
  movl %esi, %esi                     #  3545  0x6f3c4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3546  0x6f3c6  5      
  jmpq .L_6f2a0                       #  3547  0x6f3cb  5      
  xchgw %ax, %ax                      #  3548  0x6f3d0  3      
.L_70840:                             #        0x6f3d3  0      
  movl 0x27c(%rsp), %ecx              #  3549  0x6f3d3  7      
  cmpl %ecx, %edx                     #  3550  0x6f3da  2      
  movq %rcx, %rax                     #  3551  0x6f3dc  3      
  jbe .L_71160                        #  3552  0x6f3df  6      
  nop                                 #  3553  0x6f3e5  1      
.L_70860:                             #        0x6f3e6  0      
  movl %eax, %eax                     #  3554  0x6f3e6  2      
  movb $0x30, (%r15,%rax,1)           #  3555  0x6f3e8  5      
  addl $0x1, %eax                     #  3556  0x6f3ed  3      
  cmpl %eax, %edx                     #  3557  0x6f3f0  2      
  movl %eax, 0x27c(%rsp)              #  3558  0x6f3f2  7      
  ja .L_70860                         #  3559  0x6f3f9  6      
  jmpq .L_6eec0                       #  3560  0x6f3ff  5      
  nop                                 #  3561  0x6f404  1      
.L_70880:                             #        0x6f405  0      
  movq 0xe0(%rsp), %rsi               #  3562  0x6f405  8      
  movl %esi, %esi                     #  3563  0x6f40d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3564  0x6f40f  5      
  leal 0x8(%rax), %edx                #  3565  0x6f414  3      
  movl %esi, %esi                     #  3566  0x6f417  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3567  0x6f419  5      
  jmpq .L_70380                       #  3568  0x6f41e  5      
  xchgw %ax, %ax                      #  3569  0x6f423  3      
.L_708a0:                             #        0x6f426  0      
  leal 0x28c(%rsp), %edi              #  3570  0x6f426  7      
  movsd 0xb8(%rsp), %xmm0             #  3571  0x6f42d  9      
  movl %r10d, 0x90(%rsp)              #  3572  0x6f436  8      
  movb %r11b, 0xa0(%rsp)              #  3573  0x6f43e  8      
  nop                                 #  3574  0x6f446  1      
  nop                                 #  3575  0x6f447  1      
  callq .frexp                        #  3576  0x6f448  5      
  mulsd 0xffb4ad3(%rip), %xmm0        #  3577  0x6f44d  8      
  movl $0x1, %eax                     #  3578  0x6f455  5      
  movl 0x90(%rsp), %r10d              #  3579  0x6f45a  8      
  xorpd %xmm1, %xmm1                  #  3580  0x6f462  4      
  movl $0x10023c01, %edi              #  3581  0x6f466  5      
  xchgw %ax, %ax                      #  3582  0x6f46b  3      
  movsd 0xffb4aba(%rip), %xmm3        #  3583  0x6f46e  8      
  movzbl 0xa0(%rsp), %r11d            #  3584  0x6f476  9      
  movl %r10d, %ecx                    #  3585  0x6f47f  3      
  ucomisd %xmm1, %xmm0                #  3586  0x6f482  4      
  cmovnel 0x28c(%rsp), %eax           #  3587  0x6f486  8      
  cmovpl 0x28c(%rsp), %eax            #  3588  0x6f48e  8      
  cmpb $0x0, 0xc4(%rsp)               #  3589  0x6f496  8      
  movl %eax, 0x28c(%rsp)              #  3590  0x6f49e  7      
  movl $0x10023be0, %eax              #  3591  0x6f4a5  5      
  cmoveq %rax, %rdi                   #  3592  0x6f4aa  4      
  movq 0xb0(%rsp), %rax               #  3593  0x6f4ae  8      
  jmpq .L_70980                       #  3594  0x6f4b6  5      
  nop                                 #  3595  0x6f4bb  1      
  nop                                 #  3596  0x6f4bc  1      
.L_70960:                             #        0x6f4bd  0      
  movq %rdx, %rax                     #  3597  0x6f4bd  3      
  nop                                 #  3598  0x6f4c0  1      
  nop                                 #  3599  0x6f4c1  1      
.L_70980:                             #        0x6f4c2  0      
  mulsd %xmm3, %xmm0                  #  3600  0x6f4c2  4      
  subl $0x1, %ecx                     #  3601  0x6f4c6  3      
  cmpl $0xffffffff, %ecx              #  3602  0x6f4c9  6      
  cvttsd2si %xmm0, %esi               #  3603  0x6f4cf  4      
  cvtsi2sdl %esi, %xmm2               #  3604  0x6f4d3  4      
  leal (%rsi,%rdi,1), %edx            #  3605  0x6f4d7  3      
  movl %edx, %edx                     #  3606  0x6f4da  2      
  movzbl (%r15,%rdx,1), %edx          #  3607  0x6f4dc  5      
  nop                                 #  3608  0x6f4e1  1      
  movl %eax, %eax                     #  3609  0x6f4e2  2      
  movb %dl, (%r15,%rax,1)             #  3610  0x6f4e4  4      
  leal 0x1(%rax), %edx                #  3611  0x6f4e8  3      
  subsd %xmm2, %xmm0                  #  3612  0x6f4eb  4      
  je .L_70c60                         #  3613  0x6f4ef  6      
  ucomisd %xmm1, %xmm0                #  3614  0x6f4f5  4      
  jne .L_70960                        #  3615  0x6f4f9  6      
  jp .L_70960                         #  3616  0x6f4ff  6      
  nop                                 #  3617  0x6f505  1      
  movsd 0xffb4a2a(%rip), %xmm1        #  3618  0x6f506  8      
  nop                                 #  3619  0x6f50e  1      
  nop                                 #  3620  0x6f50f  1      
.L_709e0:                             #        0x6f510  0      
  movq %rdx, %r8                      #  3621  0x6f510  3      
  ucomisd %xmm1, %xmm0                #  3622  0x6f513  4      
  jne .L_70a00                        #  3623  0x6f517  6      
  jp .L_70a00                         #  3624  0x6f51d  6      
  andb $0x1, %sil                     #  3625  0x6f523  4      
  jne .L_70c80                        #  3626  0x6f527  6      
  nop                                 #  3627  0x6f52d  1      
.L_70a00:                             #        0x6f52e  0      
  testl %ecx, %ecx                    #  3628  0x6f52e  2      
  leal -0x1(%rcx), %eax               #  3629  0x6f530  3      
  js .L_6eec0                         #  3630  0x6f533  6      
  nop                                 #  3631  0x6f539  1      
  nop                                 #  3632  0x6f53a  1      
.L_70a20:                             #        0x6f53b  0      
  subl $0x1, %eax                     #  3633  0x6f53b  3      
  movl %edx, %edx                     #  3634  0x6f53e  2      
  movb $0x30, (%r15,%rdx,1)           #  3635  0x6f540  5      
  addl $0x1, %edx                     #  3636  0x6f545  3      
  cmpl $0xfffffffe, %eax              #  3637  0x6f548  5      
  jne .L_70a20                        #  3638  0x6f54d  6      
  leal 0x1(%rcx,%r8,1), %edx          #  3639  0x6f553  5      
  jmpq .L_6eec0                       #  3640  0x6f558  5      
  nop                                 #  3641  0x6f55d  1      
.L_70a40:                             #        0x6f55e  0      
  movsd 0xffb49da(%rip), %xmm0        #  3642  0x6f55e  8      
  movb $0x2d, 0xd8(%rsp)              #  3643  0x6f566  8      
  movsd 0x130(%rsp), %xmm1            #  3644  0x6f56e  9      
  xorpd %xmm0, %xmm1                  #  3645  0x6f577  4      
  nop                                 #  3646  0x6f57b  1      
  movsd %xmm1, 0xb8(%rsp)             #  3647  0x6f57c  9      
  jmpq .L_6ed40                       #  3648  0x6f585  5      
  nop                                 #  3649  0x6f58a  1      
  nop                                 #  3650  0x6f58b  1      
.L_70a80:                             #        0x6f58c  0      
  movq 0xe0(%rsp), %rcx               #  3651  0x6f58c  8      
  movl %ecx, %ecx                     #  3652  0x6f594  2      
  movl (%r15,%rcx,1), %edx            #  3653  0x6f596  4      
  cmpl $0x2f, %edx                    #  3654  0x6f59a  3      
  ja .L_6ff60                         #  3655  0x6f59d  6      
  movl %ecx, %ecx                     #  3656  0x6f5a3  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3657  0x6f5a5  5      
  addl %edx, %eax                     #  3658  0x6f5aa  2      
  addl $0x8, %edx                     #  3659  0x6f5ac  3      
  movl %ecx, %ecx                     #  3660  0x6f5af  2      
  movl %edx, (%r15,%rcx,1)            #  3661  0x6f5b1  4      
  jmpq .L_6fb20                       #  3662  0x6f5b5  5      
  nop                                 #  3663  0x6f5ba  1      
  nop                                 #  3664  0x6f5bb  1      
.L_70ac0:                             #        0x6f5bc  0      
  testl %edx, %edx                    #  3665  0x6f5bc  2      
  je .L_70ec0                         #  3666  0x6f5be  6      
  leal 0x270(%rsp), %esi              #  3667  0x6f5c4  7      
  leaq 0x3(%rsi), %rax                #  3668  0x6f5cb  4      
  leaq 0x2(%rsi), %rdx                #  3669  0x6f5cf  4      
  nop                                 #  3670  0x6f5d3  1      
.L_70ae0:                             #        0x6f5d4  0      
  addl $0x30, %ecx                    #  3671  0x6f5d4  3      
  movl %edx, %edx                     #  3672  0x6f5d7  2      
  movb %cl, (%r15,%rdx,1)             #  3673  0x6f5d9  4      
  jmpq .L_704e0                       #  3674  0x6f5dd  5      
  nop                                 #  3675  0x6f5e2  1      
  nop                                 #  3676  0x6f5e3  1      
.L_70b00:                             #        0x6f5e4  0      
  movq 0xe0(%rsp), %rsi               #  3677  0x6f5e4  8      
  movl %esi, %esi                     #  3678  0x6f5ec  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3679  0x6f5ee  5      
  leal 0x8(%rax), %edx                #  3680  0x6f5f3  3      
  movl %esi, %esi                     #  3681  0x6f5f6  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3682  0x6f5f8  5      
  jmpq .L_6ebe0                       #  3683  0x6f5fd  5      
  xchgw %ax, %ax                      #  3684  0x6f602  3      
.L_70b20:                             #        0x6f605  0      
  movq 0xe0(%rsp), %rsi               #  3685  0x6f605  8      
  movl %esi, %esi                     #  3686  0x6f60d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3687  0x6f60f  5      
  leal 0x8(%rax), %edx                #  3688  0x6f614  3      
  movl %esi, %esi                     #  3689  0x6f617  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3690  0x6f619  5      
  jmpq .L_6f120                       #  3691  0x6f61e  5      
  xchgw %ax, %ax                      #  3692  0x6f623  3      
.L_70b40:                             #        0x6f626  0      
  movq 0xe0(%rsp), %rsi               #  3693  0x6f626  8      
  movl %esi, %esi                     #  3694  0x6f62e  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3695  0x6f630  5      
  leal 0x8(%rax), %edx                #  3696  0x6f635  3      
  movl %esi, %esi                     #  3697  0x6f638  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3698  0x6f63a  5      
  jmpq .L_70160                       #  3699  0x6f63f  5      
  xchgw %ax, %ax                      #  3700  0x6f644  3      
.L_70b60:                             #        0x6f647  0      
  movq 0xe0(%rsp), %rsi               #  3701  0x6f647  8      
  movl %esi, %esi                     #  3702  0x6f64f  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3703  0x6f651  5      
  leal 0x8(%rax), %edx                #  3704  0x6f656  3      
  movl %esi, %esi                     #  3705  0x6f659  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3706  0x6f65b  5      
  jmpq .L_6f0a0                       #  3707  0x6f660  5      
  xchgw %ax, %ax                      #  3708  0x6f665  3      
.L_70b80:                             #        0x6f668  0      
  movq 0xe0(%rsp), %rsi               #  3709  0x6f668  8      
  movl %esi, %esi                     #  3710  0x6f670  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3711  0x6f672  5      
  leal 0x8(%rax), %edx                #  3712  0x6f677  3      
  movl %esi, %esi                     #  3713  0x6f67a  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3714  0x6f67c  5      
  jmpq .L_70320                       #  3715  0x6f681  5      
  xchgw %ax, %ax                      #  3716  0x6f686  3      
.L_70ba0:                             #        0x6f689  0      
  cmpl $0x0, 0x114(%rsp)              #  3717  0x6f689  8      
  jg .L_6e040                         #  3718  0x6f691  6      
  jmpq .L_6e2e0                       #  3719  0x6f697  5      
  nop                                 #  3720  0x6f69c  1      
.L_70bc0:                             #        0x6f69d  0      
  movq 0xe0(%rsp), %rsi               #  3721  0x6f69d  8      
  movl %esi, %esi                     #  3722  0x6f6a5  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3723  0x6f6a7  5      
  leal 0x8(%rax), %edx                #  3724  0x6f6ac  3      
  movl %esi, %esi                     #  3725  0x6f6af  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3726  0x6f6b1  5      
  jmpq .L_70220                       #  3727  0x6f6b6  5      
  xchgw %ax, %ax                      #  3728  0x6f6bb  3      
.L_70be0:                             #        0x6f6be  0      
  leal 0x1(%r10), %eax                #  3729  0x6f6be  4      
  movl $0x2, %esi                     #  3730  0x6f6c2  5      
  movl %eax, 0xc4(%rsp)               #  3731  0x6f6c7  7      
  jmpq .L_6eda0                       #  3732  0x6f6ce  5      
  nop                                 #  3733  0x6f6d3  1      
.L_70c00:                             #        0x6f6d4  0      
  movl 0xc8(%rsp), %esi               #  3734  0x6f6d4  7      
  leal 0x220(%rsp), %edx              #  3735  0x6f6db  7      
  movl %r14d, %edi                    #  3736  0x6f6e2  3      
  nop                                 #  3737  0x6f6e5  1      
  callq .__ssprint_r                  #  3738  0x6f6e6  5      
  testl %eax, %eax                    #  3739  0x6f6eb  2      
  jne .L_6d2c0                        #  3740  0x6f6ed  6      
  leal 0x1e0(%rsp), %eax              #  3741  0x6f6f3  7      
  jmpq .L_6fee0                       #  3742  0x6f6fa  5      
  nop                                 #  3743  0x6f6ff  1      
.L_70c40:                             #        0x6f700  0      
  testl %r10d, %r10d                  #  3744  0x6f700  3      
  je .L_70f60                         #  3745  0x6f703  6      
  movl $0x1, %r11d                    #  3746  0x6f709  6      
  movq $0x0, 0xe8(%rsp)               #  3747  0x6f70f  12     
  jmpq .L_6ed00                       #  3748  0x6f71b  5      
.L_70c60:                             #        0x6f720  0      
  movsd 0xffb4810(%rip), %xmm1        #  3749  0x6f720  8      
  ucomisd %xmm1, %xmm0                #  3750  0x6f728  4      
  jbe .L_709e0                        #  3751  0x6f72c  6      
  nop                                 #  3752  0x6f732  1      
.L_70c80:                             #        0x6f733  0      
  leal 0xf(%rdi), %esi                #  3753  0x6f733  3      
  movl %eax, 0x27c(%rsp)              #  3754  0x6f736  7      
  movl %eax, %eax                     #  3755  0x6f73d  2      
  movzbl (%r15,%rax,1), %ecx          #  3756  0x6f73f  5      
  movl %esi, %esi                     #  3757  0x6f744  2      
  cmpb (%r15,%rsi,1), %cl             #  3758  0x6f746  4      
  jne .L_70ce0                        #  3759  0x6f74a  6      
  nop                                 #  3760  0x6f750  1      
.L_70ca0:                             #        0x6f751  0      
  movl %eax, %eax                     #  3761  0x6f751  2      
  movb $0x30, (%r15,%rax,1)           #  3762  0x6f753  5      
  movl 0x27c(%rsp), %eax              #  3763  0x6f758  7      
  subl $0x1, %eax                     #  3764  0x6f75f  3      
  movl %eax, 0x27c(%rsp)              #  3765  0x6f762  7      
  movl %eax, %eax                     #  3766  0x6f769  2      
  movzbl (%r15,%rax,1), %ecx          #  3767  0x6f76b  5      
  nop                                 #  3768  0x6f770  1      
  movl %esi, %esi                     #  3769  0x6f771  2      
  cmpb (%r15,%rsi,1), %cl             #  3770  0x6f773  4      
  je .L_70ca0                         #  3771  0x6f777  6      
  nop                                 #  3772  0x6f77d  1      
  nop                                 #  3773  0x6f77e  1      
.L_70ce0:                             #        0x6f77f  0      
  cmpb $0x39, %cl                     #  3774  0x6f77f  3      
  je .L_71080                         #  3775  0x6f782  6      
  addl $0x1, %ecx                     #  3776  0x6f788  3      
  nop                                 #  3777  0x6f78b  1      
  nop                                 #  3778  0x6f78c  1      
.L_70d00:                             #        0x6f78d  0      
  movl %eax, %eax                     #  3779  0x6f78d  2      
  movb %cl, (%r15,%rax,1)             #  3780  0x6f78f  4      
  jmpq .L_6eec0                       #  3781  0x6f793  5      
  nop                                 #  3782  0x6f798  1      
  nop                                 #  3783  0x6f799  1      
.L_70d20:                             #        0x6f79a  0      
  movq 0xc8(%rsp), %rbx               #  3784  0x6f79a  8      
  movl %ebx, %ebx                     #  3785  0x6f7a2  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  3786  0x6f7a4  6      
  orl $0x40, %eax                     #  3787  0x6f7aa  3      
  movl %ebx, %ebx                     #  3788  0x6f7ad  2      
  movw %ax, 0xc(%r15,%rbx,1)          #  3789  0x6f7af  6      
  jmpq .L_6d300                       #  3790  0x6f7b5  5      
.L_70d40:                             #        0x6f7ba  0      
  movl 0x114(%rsp), %eax              #  3791  0x6f7ba  7      
  addl 0x12c(%rsp), %eax              #  3792  0x6f7c1  7      
  imull 0x140(%rsp), %eax             #  3793  0x6f7c8  8      
  movl %esi, 0x11c(%rsp)              #  3794  0x6f7d0  7      
  nop                                 #  3795  0x6f7d7  1      
  movq %r8, 0xf0(%rsp)                #  3796  0x6f7d8  8      
  addl %eax, 0xc4(%rsp)               #  3797  0x6f7e0  7      
  jmpq .L_70580                       #  3798  0x6f7e7  5      
  nop                                 #  3799  0x6f7ec  1      
.L_70d80:                             #        0x6f7ed  0      
  testl %ecx, %ecx                    #  3800  0x6f7ed  2      
  movl $0x1, %eax                     #  3801  0x6f7ef  5      
  jg .L_70da0                         #  3802  0x6f7f4  6      
  movb $0x2, %al                      #  3803  0x6f7fa  2      
  subl %ecx, %eax                     #  3804  0x6f7fc  2      
  nop                                 #  3805  0x6f7fe  1      
  nop                                 #  3806  0x6f7ff  1      
.L_70da0:                             #        0x6f800  0      
  addl 0x118(%rsp), %eax              #  3807  0x6f800  7      
  movl %eax, 0xc4(%rsp)               #  3808  0x6f807  7      
  jmpq .L_6ef40                       #  3809  0x6f80e  5      
  nop                                 #  3810  0x6f813  1      
.L_70dc0:                             #        0x6f814  0      
  movl %ecx, 0xc4(%rsp)               #  3811  0x6f814  7      
  jmpq .L_6ef40                       #  3812  0x6f81b  5      
  nop                                 #  3813  0x6f820  1      
  nop                                 #  3814  0x6f821  1      
.L_70de0:                             #        0x6f822  0      
  movl 0x28c(%rsp), %ecx              #  3815  0x6f822  7      
  jmpq .L_703c0                       #  3816  0x6f829  5      
  nop                                 #  3817  0x6f82e  1      
  nop                                 #  3818  0x6f82f  1      
.L_70e00:                             #        0x6f830  0      
  testb $0x1, %r13b                   #  3819  0x6f830  4      
  je .L_70540                         #  3820  0x6f834  6      
  jmpq .L_70520                       #  3821  0x6f83a  5      
  xchgw %ax, %ax                      #  3822  0x6f83f  3      
  nop                                 #  3823  0x6f842  1      
.L_70e20:                             #        0x6f843  0      
  leal 0x1(%r10), %esi                #  3824  0x6f843  4      
  movl %r14d, %edi                    #  3825  0x6f847  3      
  movl %r10d, 0x90(%rsp)              #  3826  0x6f84a  8      
  nop                                 #  3827  0x6f852  1      
  callq ._malloc_r                    #  3828  0x6f853  5      
  movl %eax, %eax                     #  3829  0x6f858  2      
  movl 0x90(%rsp), %r10d              #  3830  0x6f85a  8      
  testq %rax, %rax                    #  3831  0x6f862  3      
  movq %rax, 0xe8(%rsp)               #  3832  0x6f865  8      
  je .L_71140                         #  3833  0x6f86d  6      
  nop                                 #  3834  0x6f873  1      
  cmpl $0x67, 0x100(%rsp)             #  3835  0x6f874  8      
  movq 0xe8(%rsp), %rdx               #  3836  0x6f87c  8      
  movq %rdx, 0xb0(%rsp)               #  3837  0x6f884  8      
  sete %r11b                          #  3838  0x6f88c  4      
  nop                                 #  3839  0x6f890  1      
  cmpl $0x47, 0x100(%rsp)             #  3840  0x6f891  8      
  sete %al                            #  3841  0x6f899  3      
  orl %eax, %r11d                     #  3842  0x6f89c  3      
  jmpq .L_6ed00                       #  3843  0x6f89f  5      
  nop                                 #  3844  0x6f8a4  1      
.L_70ea0:                             #        0x6f8a5  0      
  negl %ecx                           #  3845  0x6f8a5  2      
  movb $0x2d, 0x271(%rsp)             #  3846  0x6f8a7  8      
  jmpq .L_70420                       #  3847  0x6f8af  5      
  xchgw %ax, %ax                      #  3848  0x6f8b4  3      
  nop                                 #  3849  0x6f8b7  1      
.L_70ec0:                             #        0x6f8b8  0      
  leal 0x270(%rsp), %esi              #  3850  0x6f8b8  7      
  movb $0x30, 0x272(%rsp)             #  3851  0x6f8bf  8      
  leaq 0x4(%rsi), %rax                #  3852  0x6f8c7  4      
  leaq 0x3(%rsi), %rdx                #  3853  0x6f8cb  4      
  jmpq .L_70ae0                       #  3854  0x6f8cf  5      
  nop                                 #  3855  0x6f8d4  1      
.L_70ee0:                             #        0x6f8d5  0      
  cmpl $0x67, 0x100(%rsp)             #  3856  0x6f8d5  8      
  movq $0x0, 0xe8(%rsp)               #  3857  0x6f8dd  12     
  movl $0x6, %r10d                    #  3858  0x6f8e9  6      
  sete %r11b                          #  3859  0x6f8ef  4      
  xchgw %ax, %ax                      #  3860  0x6f8f3  3      
  cmpl $0x47, 0x100(%rsp)             #  3861  0x6f8f6  8      
  sete %al                            #  3862  0x6f8fe  3      
  orl %eax, %r11d                     #  3863  0x6f901  3      
  jmpq .L_6ed00                       #  3864  0x6f904  5      
  nop                                 #  3865  0x6f909  1      
.L_70f20:                             #        0x6f90a  0      
  movq 0xe0(%rsp), %rsi               #  3866  0x6f90a  8      
  movl %esi, %esi                     #  3867  0x6f912  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3868  0x6f914  5      
  leal 0x8(%rax), %edx                #  3869  0x6f919  3      
  movl %esi, %esi                     #  3870  0x6f91c  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3871  0x6f91e  5      
  jmpq .L_701c0                       #  3872  0x6f923  5      
  xchgw %ax, %ax                      #  3873  0x6f928  3      
.L_70f40:                             #        0x6f92b  0      
  movl 0x28c(%rsp), %ecx              #  3874  0x6f92b  7      
  movl $0x66, 0x100(%rsp)             #  3875  0x6f932  11     
  jmpq .L_700c0                       #  3876  0x6f93d  5      
  nop                                 #  3877  0x6f942  1      
.L_70f60:                             #        0x6f943  0      
  movl $0x1, %r11d                    #  3878  0x6f943  6      
  movq $0x0, 0xe8(%rsp)               #  3879  0x6f949  12     
  movl $0x1, %r10d                    #  3880  0x6f955  6      
  jmpq .L_6ed00                       #  3881  0x6f95b  5      
  nop                                 #  3882  0x6f960  1      
.L_70f80:                             #        0x6f961  0      
  xorpd %xmm1, %xmm1                  #  3883  0x6f961  4      
  movsd 0xb8(%rsp), %xmm0             #  3884  0x6f965  9      
  ucomisd %xmm1, %xmm0                #  3885  0x6f96e  4      
  jne .L_710a0                        #  3886  0x6f972  6      
  jp .L_710a0                         #  3887  0x6f978  6      
  nop                                 #  3888  0x6f97e  1      
  movl 0x28c(%rsp), %eax              #  3889  0x6f97f  7      
  jmpq .L_6ee80                       #  3890  0x6f986  5      
  nop                                 #  3891  0x6f98b  1      
  nop                                 #  3892  0x6f98c  1      
.L_70fc0:                             #        0x6f98d  0      
  testl %r10d, %r10d                  #  3893  0x6f98d  3      
  jne .L_70fe0                        #  3894  0x6f990  6      
  testb $0x1, %r13b                   #  3895  0x6f996  4      
  movl $0x1, 0xc4(%rsp)               #  3896  0x6f99a  11     
  je .L_6ef40                         #  3897  0x6f9a5  6      
  nop                                 #  3898  0x6f9ab  1      
.L_70fe0:                             #        0x6f9ac  0      
  addl $0x2, %r10d                    #  3899  0x6f9ac  4      
  movl %r10d, 0xc4(%rsp)              #  3900  0x6f9b0  8      
  jmpq .L_6ef40                       #  3901  0x6f9b8  5      
  nop                                 #  3902  0x6f9bd  1      
.L_71000:                             #        0x6f9be  0      
  movq 0xe0(%rsp), %rax               #  3903  0x6f9be  8      
  movl %eax, %eax                     #  3904  0x6f9c6  2      
  movl (%r15,%rax,1), %ecx            #  3905  0x6f9c8  4      
  cmpl $0x2f, %ecx                    #  3906  0x6f9cc  3      
  ja .L_710c0                         #  3907  0x6f9cf  6      
  movq %rax, %rsi                     #  3908  0x6f9d5  3      
  nop                                 #  3909  0x6f9d8  1      
  movl %eax, %eax                     #  3910  0x6f9d9  2      
  movl 0xc(%r15,%rax,1), %eax         #  3911  0x6f9db  5      
  addl %ecx, %eax                     #  3912  0x6f9e0  2      
  addl $0x8, %ecx                     #  3913  0x6f9e2  3      
  movl %esi, %esi                     #  3914  0x6f9e5  2      
  movl %ecx, (%r15,%rsi,1)            #  3915  0x6f9e7  4      
  nop                                 #  3916  0x6f9eb  1      
.L_71040:                             #        0x6f9ec  0      
  movl %eax, %eax                     #  3917  0x6f9ec  2      
  movl (%r15,%rax,1), %r10d           #  3918  0x6f9ee  4      
  testl %r10d, %r10d                  #  3919  0x6f9f2  3      
  jns .L_6c5e0                        #  3920  0x6f9f5  6      
  movl %r12d, %r12d                   #  3921  0x6f9fb  3      
  movzbl (%r15,%r12,1), %eax          #  3922  0x6f9fe  5      
  orl $0xffffffff, %r10d              #  3923  0x6fa03  7      
  jmpq .L_6bd80                       #  3924  0x6fa0a  5      
.L_71060:                             #        0x6fa0f  0      
  movq 0xc8(%rsp), %rdx               #  3925  0x6fa0f  8      
  movl %edx, %edx                     #  3926  0x6fa17  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  3927  0x6fa19  6      
  orl $0x40, %eax                     #  3928  0x6fa1f  3      
  movl %edx, %edx                     #  3929  0x6fa22  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  3930  0x6fa24  6      
  jmpq .L_6d300                       #  3931  0x6fa2a  5      
.L_71080:                             #        0x6fa2f  0      
  movl %edi, %edi                     #  3932  0x6fa2f  2      
  movzbl 0xa(%r15,%rdi,1), %ecx       #  3933  0x6fa31  6      
  jmpq .L_70d00                       #  3934  0x6fa37  5      
  nop                                 #  3935  0x6fa3c  1      
  nop                                 #  3936  0x6fa3d  1      
.L_710a0:                             #        0x6fa3e  0      
  movl $0x1, %eax                     #  3937  0x6fa3e  5      
  subl 0xc4(%rsp), %eax               #  3938  0x6fa43  7      
  movl %eax, 0x28c(%rsp)              #  3939  0x6fa4a  7      
  jmpq .L_6ee80                       #  3940  0x6fa51  5      
  nop                                 #  3941  0x6fa56  1      
.L_710c0:                             #        0x6fa57  0      
  movq 0xe0(%rsp), %rcx               #  3942  0x6fa57  8      
  movq 0xe0(%rsp), %rsi               #  3943  0x6fa5f  8      
  movl %ecx, %ecx                     #  3944  0x6fa67  2      
  movl 0x8(%r15,%rcx,1), %eax         #  3945  0x6fa69  5      
  leal 0x8(%rax), %ecx                #  3946  0x6fa6e  3      
  nop                                 #  3947  0x6fa71  1      
  movl %esi, %esi                     #  3948  0x6fa72  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  3949  0x6fa74  5      
  jmpq .L_71040                       #  3950  0x6fa79  5      
  nop                                 #  3951  0x6fa7e  1      
  nop                                 #  3952  0x6fa7f  1      
.L_71100:                             #        0x6fa80  0      
  movl %r14d, %r14d                   #  3953  0x6fa80  3      
  movl $0xc, (%r15,%r14,1)            #  3954  0x6fa83  8      
  movl $0xffffffff, 0xd0(%rsp)        #  3955  0x6fa8b  11     
  jmpq .L_6d320                       #  3956  0x6fa96  5      
  nop                                 #  3957  0x6fa9b  1      
.L_71120:                             #        0x6fa9c  0      
  movq 0xc8(%rsp), %rsi               #  3958  0x6fa9c  8      
  movl %esi, %esi                     #  3959  0x6faa4  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3960  0x6faa6  6      
  orl $0x40, %eax                     #  3961  0x6faac  3      
  movl %esi, %esi                     #  3962  0x6faaf  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  3963  0x6fab1  6      
  jmpq .L_6d300                       #  3964  0x6fab7  5      
.L_71140:                             #        0x6fabc  0      
  movq 0xc8(%rsp), %rcx               #  3965  0x6fabc  8      
  movl %ecx, %ecx                     #  3966  0x6fac4  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  3967  0x6fac6  6      
  orl $0x40, %eax                     #  3968  0x6facc  3      
  movl %ecx, %ecx                     #  3969  0x6facf  2      
  movw %ax, 0xc(%r15,%rcx,1)          #  3970  0x6fad1  6      
  jmpq .L_6d300                       #  3971  0x6fad7  5      
.L_71160:                             #        0x6fadc  0      
  movq %rcx, %rdx                     #  3972  0x6fadc  3      
  jmpq .L_6eec0                       #  3973  0x6fadf  5      
  nop                                 #  3974  0x6fae4  1      
  nop                                 #  3975  0x6fae5  1      
.L_71180:                             #        0x6fae6  0      
  leal 0x270(%rsp), %esi              #  3976  0x6fae6  7      
  leaq 0x2(%rsi), %rax                #  3977  0x6faed  4      
  jmpq .L_704e0                       #  3978  0x6faf1  5      
  nop                                 #  3979  0x6faf6  1      
  nop                                 #  3980  0x6faf7  1      
  nop                                 #  3981  0x6faf8  1      
  nop                                 #  3982  0x6faf9  1      
  nop                                 #  3983  0x6fafa  1      
  nop                                 #  3984  0x6fafb  1      
  nop                                 #  3985  0x6fafc  1      
  nop                                 #  3986  0x6fafd  1      
  nop                                 #  3987  0x6fafe  1      
  nop                                 #  3988  0x6faff  1      
  nop                                 #  3989  0x6fb00  1      
  nop                                 #  3990  0x6fb01  1      
  nop                                 #  3991  0x6fb02  1      
  nop                                 #  3992  0x6fb03  1      
  nop                                 #  3993  0x6fb04  1      
  nop                                 #  3994  0x6fb05  1      
                                                               
.size _svfprintf_r, .-_svfprintf_r

