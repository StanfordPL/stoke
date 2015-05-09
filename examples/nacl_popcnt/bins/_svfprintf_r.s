  .text
  .globl _svfprintf_r
  .type _svfprintf_r, @function

#! file-offset 0x6b9a0
#! rip-offset  0x6b9a0
#! capacity    22496 bytes

# Text                                #  Line  RIP      Bytes  
._svfprintf_r:                        #        0x6b9a0  0      
  pushq %r14                          #  1     0x6b9a0  3      
  movl %edi, %r14d                    #  2     0x6b9a3  3      
  movl %esi, %esi                     #  3     0x6b9a6  2      
  movl %ecx, %ecx                     #  4     0x6b9a8  2      
  movl %r14d, %edi                    #  5     0x6b9aa  3      
  pushq %r13                          #  6     0x6b9ad  3      
  pushq %r12                          #  7     0x6b9b0  3      
  pushq %rbx                          #  8     0x6b9b3  2      
  movl %edx, %ebx                     #  9     0x6b9b5  2      
  subl $0x2a8, %esp                   #  10    0x6b9b7  6      
  addq %r15, %rsp                     #  11    0x6b9bd  3      
  nop                                 #  12    0x6b9c0  1      
  movq %rsi, 0xc8(%rsp)               #  13    0x6b9c1  8      
  movq %rcx, 0xe0(%rsp)               #  14    0x6b9c9  8      
  nop                                 #  15    0x6b9d1  1      
  callq ._localeconv_r                #  16    0x6b9d2  5      
  movl %eax, %eax                     #  17    0x6b9d7  2      
  movl %eax, %eax                     #  18    0x6b9d9  2      
  movl (%r15,%rax,1), %eax            #  19    0x6b9db  4      
  movl %eax, %edi                     #  20    0x6b9df  2      
  movq %rax, 0x120(%rsp)              #  21    0x6b9e1  8      
  nop                                 #  22    0x6b9e9  1      
  callq .strlen                       #  23    0x6b9ea  5      
  movl %eax, 0x13c(%rsp)              #  24    0x6b9ef  7      
  leal 0x260(%rsp), %eax              #  25    0x6b9f6  7      
  movl $0x8, %edx                     #  26    0x6b9fd  5      
  xorl %esi, %esi                     #  27    0x6ba02  2      
  movl %eax, %edi                     #  28    0x6ba04  2      
  movq %rax, 0x78(%rsp)               #  29    0x6ba06  5      
  nop                                 #  30    0x6ba0b  1      
  nop                                 #  31    0x6ba0c  1      
  nop                                 #  32    0x6ba0d  1      
  callq .memset                       #  33    0x6ba0e  5      
  movq 0xc8(%rsp), %rdx               #  34    0x6ba13  8      
  movl %edx, %edx                     #  35    0x6ba1b  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  36    0x6ba1d  6      
  jns .L_6ba80                        #  37    0x6ba23  6      
  movl %edx, %edx                     #  38    0x6ba29  2      
  movl 0x10(%r15,%rdx,1), %esi        #  39    0x6ba2b  5      
  testl %esi, %esi                    #  40    0x6ba30  2      
  nop                                 #  41    0x6ba32  1      
  je .L_6fc80                         #  42    0x6ba33  6      
  nop                                 #  43    0x6ba39  1      
  nop                                 #  44    0x6ba3a  1      
.L_6ba80:                             #        0x6ba3b  0      
  leal 0x1e0(%rsp), %eax              #  45    0x6ba3b  7      
  leal 0x170(%rsp), %ecx              #  46    0x6ba42  7      
  leal 0x288(%rsp), %edx              #  47    0x6ba49  7      
  movq %rbx, 0xb0(%rsp)               #  48    0x6ba50  8      
  nop                                 #  49    0x6ba58  1      
  leal 0x1e0(%rsp), %ebx              #  50    0x6ba59  7      
  movl $0x0, 0x228(%rsp)              #  51    0x6ba60  11     
  movq %rax, 0x70(%rsp)               #  52    0x6ba6b  5      
  movl %eax, 0x220(%rsp)              #  53    0x6ba70  7      
  xorl %eax, %eax                     #  54    0x6ba77  2      
  movq %rax, 0x130(%rsp)              #  55    0x6ba79  8      
  movq %rcx, 0x68(%rsp)               #  56    0x6ba81  5      
  movl 0x68(%rsp), %eax               #  57    0x6ba86  4      
  movl $0x0, 0x224(%rsp)              #  58    0x6ba8a  11     
  nop                                 #  59    0x6ba95  1      
  movl $0x0, 0x118(%rsp)              #  60    0x6ba96  11     
  movq $0x0, 0x148(%rsp)              #  61    0x6baa1  12     
  nop                                 #  62    0x6baad  1      
  movl $0x0, 0x144(%rsp)              #  63    0x6baae  11     
  movq $0x0, 0xf0(%rsp)               #  64    0x6bab9  12     
  addl $0x64, %eax                    #  65    0x6bac5  3      
  nop                                 #  66    0x6bac8  1      
  movl $0x0, 0x140(%rsp)              #  67    0x6bac9  11     
  movq $0x0, 0x150(%rsp)              #  68    0x6bad4  12     
  movl %eax, %eax                     #  69    0x6bae0  2      
  nop                                 #  70    0x6bae2  1      
  movl $0x0, 0xd0(%rsp)               #  71    0x6bae3  11     
  movq %rdx, 0x60(%rsp)               #  72    0x6baee  5      
  movl %eax, %esi                     #  73    0x6baf3  2      
  movq %rax, 0x108(%rsp)              #  74    0x6baf5  8      
  nop                                 #  75    0x6bafd  1      
  leal 0x2a0(%rsp), %eax              #  76    0x6bafe  7      
  subl $0x1, %esi                     #  77    0x6bb05  3      
  subl $0x69, %eax                    #  78    0x6bb08  3      
  movq %rsi, 0x158(%rsp)              #  79    0x6bb0b  8      
  movq %rax, 0x168(%rsp)              #  80    0x6bb13  8      
  nop                                 #  81    0x6bb1b  1      
.L_6bb80:                             #        0x6bb1c  0      
  movq 0xb0(%rsp), %r12               #  82    0x6bb1c  8      
  movq %rbx, %r13                     #  83    0x6bb24  3      
  jmpq .L_6bbe0                       #  84    0x6bb27  5      
  nop                                 #  85    0x6bb2c  1      
  nop                                 #  86    0x6bb2d  1      
.L_6bba0:                             #        0x6bb2e  0      
  cmpl $0x25, 0x288(%rsp)             #  87    0x6bb2e  8      
  je .L_6bca0                         #  88    0x6bb36  6      
  nop                                 #  89    0x6bb3c  1      
  nop                                 #  90    0x6bb3d  1      
.L_6bbc0:                             #        0x6bb3e  0      
  leal (%rax,%r12,1), %r12d           #  91    0x6bb3e  4      
  nop                                 #  92    0x6bb42  1      
  nop                                 #  93    0x6bb43  1      
.L_6bbe0:                             #        0x6bb44  0      
  movl 0xffc5076(%rip), %ebx          #  94    0x6bb44  6      
  nop                                 #  95    0x6bb4a  1      
  nop                                 #  96    0x6bb4b  1      
  callq .__locale_charset             #  97    0x6bb4c  5      
  movl %eax, %r8d                     #  98    0x6bb51  3      
  movq %r8, 0x88(%rsp)                #  99    0x6bb54  8      
  nop                                 #  100   0x6bb5c  1      
  nop                                 #  101   0x6bb5d  1      
  callq .__locale_mb_cur_max          #  102   0x6bb5e  5      
  movl 0x78(%rsp), %r9d               #  103   0x6bb63  5      
  movl %eax, %ecx                     #  104   0x6bb68  2      
  movq 0x88(%rsp), %r8                #  105   0x6bb6a  8      
  movl %r12d, %edx                    #  106   0x6bb72  3      
  movl 0x60(%rsp), %esi               #  107   0x6bb75  4      
  movl %r14d, %edi                    #  108   0x6bb79  3      
  nop                                 #  109   0x6bb7c  1      
  nop                                 #  110   0x6bb7d  1      
  nop                                 #  111   0x6bb7e  1      
  andl $0xffffffe0, %ebx              #  112   0x6bb7f  6      
  addq %r15, %rbx                     #  113   0x6bb85  3      
  callq %rbx                          #  114   0x6bb88  2      
  cmpl $0x0, %eax                     #  115   0x6bb8a  3      
  je .L_6bca0                         #  116   0x6bb8d  6      
  jge .L_6bba0                        #  117   0x6bb93  6      
  movl 0x78(%rsp), %edi               #  118   0x6bb99  4      
  movl $0x8, %edx                     #  119   0x6bb9d  5      
  xorl %esi, %esi                     #  120   0x6bba2  2      
  nop                                 #  121   0x6bba4  1      
  callq .memset                       #  122   0x6bba5  5      
  movl $0x1, %eax                     #  123   0x6bbaa  5      
  jmpq .L_6bbc0                       #  124   0x6bbaf  5      
  nop                                 #  125   0x6bbb4  1      
  nop                                 #  126   0x6bbb5  1      
.L_6bca0:                             #        0x6bbb6  0      
  movl %r12d, %ecx                    #  127   0x6bbb6  3      
  subl 0xb0(%rsp), %ecx               #  128   0x6bbb9  7      
  movq %r13, %rbx                     #  129   0x6bbc0  3      
  movl %eax, %r13d                    #  130   0x6bbc3  3      
  je .L_6bd20                         #  131   0x6bbc6  6      
  movl %ebx, %ebx                     #  132   0x6bbcc  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  133   0x6bbce  5      
  movl 0x224(%rsp), %eax              #  134   0x6bbd3  7      
  movl 0xb0(%rsp), %edx               #  135   0x6bbda  7      
  addl %ecx, 0x228(%rsp)              #  136   0x6bbe1  7      
  addl $0x1, %eax                     #  137   0x6bbe8  3      
  cmpl $0x7, %eax                     #  138   0x6bbeb  3      
  movl %ebx, %ebx                     #  139   0x6bbee  2      
  movl %edx, (%r15,%rbx,1)            #  140   0x6bbf0  4      
  nop                                 #  141   0x6bbf4  1      
  movl %eax, 0x224(%rsp)              #  142   0x6bbf5  7      
  jg .L_6c680                         #  143   0x6bbfc  6      
  addl $0x8, %ebx                     #  144   0x6bc02  3      
  nop                                 #  145   0x6bc05  1      
  nop                                 #  146   0x6bc06  1      
.L_6bd00:                             #        0x6bc07  0      
  addl %ecx, 0xd0(%rsp)               #  147   0x6bc07  7      
  nop                                 #  148   0x6bc0e  1      
  nop                                 #  149   0x6bc0f  1      
.L_6bd20:                             #        0x6bc10  0      
  testl %r13d, %r13d                  #  150   0x6bc10  3      
  je .L_6d240                         #  151   0x6bc13  6      
  addl $0x1, %r12d                    #  152   0x6bc19  4      
  movl $0xffffffff, %r10d             #  153   0x6bc1d  6      
  movb $0x0, 0x29f(%rsp)              #  154   0x6bc23  8      
  xorl %r13d, %r13d                   #  155   0x6bc2b  3      
  xchgw %ax, %ax                      #  156   0x6bc2e  3      
  movl %r12d, %r12d                   #  157   0x6bc31  3      
  movzbl (%r15,%r12,1), %eax          #  158   0x6bc34  5      
  movl %r10d, %edx                    #  159   0x6bc39  3      
  movl $0x0, 0xd4(%rsp)               #  160   0x6bc3c  11     
  nop                                 #  161   0x6bc47  1      
.L_6bd60:                             #        0x6bc48  0      
  movsbl %al, %eax                    #  162   0x6bc48  3      
  addl $0x1, %r12d                    #  163   0x6bc4b  4      
  nop                                 #  164   0x6bc4f  1      
  nop                                 #  165   0x6bc50  1      
.L_6bd80:                             #        0x6bc51  0      
  leal -0x20(%rax), %ecx              #  166   0x6bc51  3      
  cmpl $0x5a, %ecx                    #  167   0x6bc54  3      
  jbe .L_6c4e0                        #  168   0x6bc57  6      
  nop                                 #  169   0x6bc5d  1      
  nop                                 #  170   0x6bc5e  1      
  testl %eax, %eax                    #  171   0x6bc5f  2      
  movl %eax, 0x100(%rsp)              #  172   0x6bc61  7      
  je .L_6d240                         #  173   0x6bc68  6      
  leal 0x170(%rsp), %ecx              #  174   0x6bc6e  7      
  movb %al, 0x170(%rsp)               #  175   0x6bc75  7      
  nop                                 #  176   0x6bc7c  1      
  movb $0x0, 0x29f(%rsp)              #  177   0x6bc7d  8      
  xorl %eax, %eax                     #  178   0x6bc85  2      
  movl $0x1, 0xb8(%rsp)               #  179   0x6bc87  11     
  nop                                 #  180   0x6bc92  1      
  movq $0x0, 0xe8(%rsp)               #  181   0x6bc93  12     
  movl $0x1, 0xc4(%rsp)               #  182   0x6bc9f  11     
  nop                                 #  183   0x6bcaa  1      
  movl $0x0, 0x104(%rsp)              #  184   0x6bcab  11     
  movl $0x0, 0x114(%rsp)              #  185   0x6bcb6  11     
  nop                                 #  186   0x6bcc1  1      
  movl $0x0, 0x12c(%rsp)              #  187   0x6bcc2  11     
  movl $0x0, 0x11c(%rsp)              #  188   0x6bccd  11     
  movq %rcx, 0xb0(%rsp)               #  189   0x6bcd8  8      
  xchgw %ax, %ax                      #  190   0x6bce0  3      
.L_6be40:                             #        0x6bce3  0      
  movl 0xb8(%rsp), %edx               #  191   0x6bce3  7      
  movl %r13d, %esi                    #  192   0x6bcea  3      
  addl $0x2, %edx                     #  193   0x6bced  3      
  andl $0x2, %esi                     #  194   0x6bcf0  3      
  cmovel 0xb8(%rsp), %edx             #  195   0x6bcf3  8      
  movl %esi, 0xd8(%rsp)               #  196   0x6bcfb  7      
  nop                                 #  197   0x6bd02  1      
  movl %edx, 0xb8(%rsp)               #  198   0x6bd03  7      
  movl %r13d, %edx                    #  199   0x6bd0a  3      
  andl $0x84, %edx                    #  200   0x6bd0d  3      
  movl %edx, 0xfc(%rsp)               #  201   0x6bd10  7      
  jne .L_6bfe0                        #  202   0x6bd17  6      
  nop                                 #  203   0x6bd1d  1      
  movl 0xd4(%rsp), %ecx               #  204   0x6bd1e  7      
  subl 0xb8(%rsp), %ecx               #  205   0x6bd25  7      
  testl %ecx, %ecx                    #  206   0x6bd2c  2      
  jle .L_6bfe0                        #  207   0x6bd2e  6      
  cmpl $0x10, %ecx                    #  208   0x6bd34  3      
  jle .L_6bfa0                        #  209   0x6bd37  6      
  nop                                 #  210   0x6bd3d  1      
  leal 0x220(%rsp), %esi              #  211   0x6bd3e  7      
  movq %rbx, %rax                     #  212   0x6bd45  3      
  movl %r13d, 0x164(%rsp)             #  213   0x6bd48  8      
  movl %ecx, %ebx                     #  214   0x6bd50  2      
  movq %r12, %r13                     #  215   0x6bd52  3      
  movq 0xc8(%rsp), %r12               #  216   0x6bd55  8      
  nop                                 #  217   0x6bd5d  1      
  movq %rsi, 0x50(%rsp)               #  218   0x6bd5e  5      
  jmpq .L_6bf00                       #  219   0x6bd63  5      
  nop                                 #  220   0x6bd68  1      
  nop                                 #  221   0x6bd69  1      
.L_6bee0:                             #        0x6bd6a  0      
  subl $0x10, %ebx                    #  222   0x6bd6a  3      
  addl $0x8, %eax                     #  223   0x6bd6d  3      
  cmpl $0x10, %ebx                    #  224   0x6bd70  3      
  jle .L_6bf80                        #  225   0x6bd73  6      
  xchgw %ax, %ax                      #  226   0x6bd79  3      
  nop                                 #  227   0x6bd7c  1      
.L_6bf00:                             #        0x6bd7d  0      
  movl %eax, %eax                     #  228   0x6bd7d  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  229   0x6bd7f  9      
  movl 0x224(%rsp), %edx              #  230   0x6bd88  7      
  addl $0x10, 0x228(%rsp)             #  231   0x6bd8f  8      
  nop                                 #  232   0x6bd97  1      
  movl %eax, %eax                     #  233   0x6bd98  2      
  movl $0x10023f10, (%r15,%rax,1)     #  234   0x6bd9a  8      
  addl $0x1, %edx                     #  235   0x6bda2  3      
  cmpl $0x7, %edx                     #  236   0x6bda5  3      
  movl %edx, 0x224(%rsp)              #  237   0x6bda8  7      
  jle .L_6bee0                        #  238   0x6bdaf  6      
  movl 0x50(%rsp), %edx               #  239   0x6bdb5  4      
  movl %r12d, %esi                    #  240   0x6bdb9  3      
  movl %r14d, %edi                    #  241   0x6bdbc  3      
  nop                                 #  242   0x6bdbf  1      
  nop                                 #  243   0x6bdc0  1      
  callq .__ssprint_r                  #  244   0x6bdc1  5      
  testl %eax, %eax                    #  245   0x6bdc6  2      
  jne .L_6d2a0                        #  246   0x6bdc8  6      
  subl $0x10, %ebx                    #  247   0x6bdce  3      
  leal 0x1e0(%rsp), %eax              #  248   0x6bdd1  7      
  cmpl $0x10, %ebx                    #  249   0x6bdd8  3      
  jg .L_6bf00                         #  250   0x6bddb  6      
  nop                                 #  251   0x6bde1  1      
.L_6bf80:                             #        0x6bde2  0      
  movq %r13, %r12                     #  252   0x6bde2  3      
  movl 0x164(%rsp), %r13d             #  253   0x6bde5  8      
  movl %ebx, %ecx                     #  254   0x6bded  2      
  movq %rax, %rbx                     #  255   0x6bdef  3      
  nop                                 #  256   0x6bdf2  1      
  nop                                 #  257   0x6bdf3  1      
.L_6bfa0:                             #        0x6bdf4  0      
  movl %ebx, %ebx                     #  258   0x6bdf4  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  259   0x6bdf6  5      
  movl 0x224(%rsp), %eax              #  260   0x6bdfb  7      
  addl %ecx, 0x228(%rsp)              #  261   0x6be02  7      
  movl %ebx, %ebx                     #  262   0x6be09  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  263   0x6be0b  8      
  nop                                 #  264   0x6be13  1      
  addl $0x1, %eax                     #  265   0x6be14  3      
  cmpl $0x7, %eax                     #  266   0x6be17  3      
  movl %eax, 0x224(%rsp)              #  267   0x6be1a  7      
  jg .L_6dce0                         #  268   0x6be21  6      
  movzbl 0x29f(%rsp), %eax            #  269   0x6be27  8      
  addl $0x8, %ebx                     #  270   0x6be2f  3      
  xchgw %ax, %ax                      #  271   0x6be32  3      
.L_6bfe0:                             #        0x6be35  0      
  testb %al, %al                      #  272   0x6be35  2      
  je .L_6c040                         #  273   0x6be37  6      
  leal 0x29f(%rsp), %eax              #  274   0x6be3d  7      
  movl %ebx, %ebx                     #  275   0x6be44  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  276   0x6be46  9      
  addl $0x1, 0x228(%rsp)              #  277   0x6be4f  8      
  xchgw %ax, %ax                      #  278   0x6be57  3      
  movl %ebx, %ebx                     #  279   0x6be5a  2      
  movl %eax, (%r15,%rbx,1)            #  280   0x6be5c  4      
  movl 0x224(%rsp), %eax              #  281   0x6be60  7      
  addl $0x1, %eax                     #  282   0x6be67  3      
  cmpl $0x7, %eax                     #  283   0x6be6a  3      
  movl %eax, 0x224(%rsp)              #  284   0x6be6d  7      
  jg .L_6da00                         #  285   0x6be74  6      
  addl $0x8, %ebx                     #  286   0x6be7a  3      
  nop                                 #  287   0x6be7d  1      
  nop                                 #  288   0x6be7e  1      
.L_6c040:                             #        0x6be7f  0      
  movl 0xd8(%rsp), %r9d               #  289   0x6be7f  8      
  testl %r9d, %r9d                    #  290   0x6be87  3      
  je .L_6c0a0                         #  291   0x6be8a  6      
  leal 0x290(%rsp), %eax              #  292   0x6be90  7      
  movl %ebx, %ebx                     #  293   0x6be97  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  294   0x6be99  9      
  nop                                 #  295   0x6bea2  1      
  addl $0x2, 0x228(%rsp)              #  296   0x6bea3  8      
  movl %ebx, %ebx                     #  297   0x6beab  2      
  movl %eax, (%r15,%rbx,1)            #  298   0x6bead  4      
  movl 0x224(%rsp), %eax              #  299   0x6beb1  7      
  addl $0x1, %eax                     #  300   0x6beb8  3      
  cmpl $0x7, %eax                     #  301   0x6bebb  3      
  nop                                 #  302   0x6bebe  1      
  movl %eax, 0x224(%rsp)              #  303   0x6bebf  7      
  jg .L_6d9c0                         #  304   0x6bec6  6      
  addl $0x8, %ebx                     #  305   0x6becc  3      
  nop                                 #  306   0x6becf  1      
  nop                                 #  307   0x6bed0  1      
.L_6c0a0:                             #        0x6bed1  0      
  cmpl $0x80, 0xfc(%rsp)              #  308   0x6bed1  8      
  je .L_6d5e0                         #  309   0x6bed9  6      
  nop                                 #  310   0x6bedf  1      
.L_6c0c0:                             #        0x6bee0  0      
  movl 0x104(%rsp), %ecx              #  311   0x6bee0  7      
  subl 0xc4(%rsp), %ecx               #  312   0x6bee7  7      
  testl %ecx, %ecx                    #  313   0x6beee  2      
  jle .L_6c220                        #  314   0x6bef0  6      
  cmpl $0x10, %ecx                    #  315   0x6bef6  3      
  jle .L_6c1e0                        #  316   0x6bef9  6      
  nop                                 #  317   0x6beff  1      
  leal 0x220(%rsp), %edx              #  318   0x6bf00  7      
  movq %rbx, %rax                     #  319   0x6bf07  3      
  movl %r13d, 0xd8(%rsp)              #  320   0x6bf0a  8      
  movl %ecx, %ebx                     #  321   0x6bf12  2      
  movq %r12, %r13                     #  322   0x6bf14  3      
  movq 0xc8(%rsp), %r12               #  323   0x6bf17  8      
  nop                                 #  324   0x6bf1f  1      
  movq %rdx, 0x40(%rsp)               #  325   0x6bf20  5      
  jmpq .L_6c140                       #  326   0x6bf25  5      
  nop                                 #  327   0x6bf2a  1      
  nop                                 #  328   0x6bf2b  1      
.L_6c120:                             #        0x6bf2c  0      
  subl $0x10, %ebx                    #  329   0x6bf2c  3      
  addl $0x8, %eax                     #  330   0x6bf2f  3      
  cmpl $0x10, %ebx                    #  331   0x6bf32  3      
  jle .L_6c1c0                        #  332   0x6bf35  6      
  xchgw %ax, %ax                      #  333   0x6bf3b  3      
  nop                                 #  334   0x6bf3e  1      
.L_6c140:                             #        0x6bf3f  0      
  movl %eax, %eax                     #  335   0x6bf3f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  336   0x6bf41  9      
  movl 0x224(%rsp), %edx              #  337   0x6bf4a  7      
  addl $0x10, 0x228(%rsp)             #  338   0x6bf51  8      
  nop                                 #  339   0x6bf59  1      
  movl %eax, %eax                     #  340   0x6bf5a  2      
  movl $0x10023f00, (%r15,%rax,1)     #  341   0x6bf5c  8      
  addl $0x1, %edx                     #  342   0x6bf64  3      
  cmpl $0x7, %edx                     #  343   0x6bf67  3      
  movl %edx, 0x224(%rsp)              #  344   0x6bf6a  7      
  jle .L_6c120                        #  345   0x6bf71  6      
  movl 0x40(%rsp), %edx               #  346   0x6bf77  4      
  movl %r12d, %esi                    #  347   0x6bf7b  3      
  movl %r14d, %edi                    #  348   0x6bf7e  3      
  nop                                 #  349   0x6bf81  1      
  nop                                 #  350   0x6bf82  1      
  callq .__ssprint_r                  #  351   0x6bf83  5      
  testl %eax, %eax                    #  352   0x6bf88  2      
  jne .L_6d2a0                        #  353   0x6bf8a  6      
  subl $0x10, %ebx                    #  354   0x6bf90  3      
  leal 0x1e0(%rsp), %eax              #  355   0x6bf93  7      
  cmpl $0x10, %ebx                    #  356   0x6bf9a  3      
  jg .L_6c140                         #  357   0x6bf9d  6      
  nop                                 #  358   0x6bfa3  1      
.L_6c1c0:                             #        0x6bfa4  0      
  movq %r13, %r12                     #  359   0x6bfa4  3      
  movl 0xd8(%rsp), %r13d              #  360   0x6bfa7  8      
  movl %ebx, %ecx                     #  361   0x6bfaf  2      
  movq %rax, %rbx                     #  362   0x6bfb1  3      
  nop                                 #  363   0x6bfb4  1      
  nop                                 #  364   0x6bfb5  1      
.L_6c1e0:                             #        0x6bfb6  0      
  movl %ebx, %ebx                     #  365   0x6bfb6  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  366   0x6bfb8  5      
  movl 0x224(%rsp), %eax              #  367   0x6bfbd  7      
  addl %ecx, 0x228(%rsp)              #  368   0x6bfc4  7      
  movl %ebx, %ebx                     #  369   0x6bfcb  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  370   0x6bfcd  8      
  nop                                 #  371   0x6bfd5  1      
  addl $0x1, %eax                     #  372   0x6bfd6  3      
  cmpl $0x7, %eax                     #  373   0x6bfd9  3      
  movl %eax, 0x224(%rsp)              #  374   0x6bfdc  7      
  jg .L_6d980                         #  375   0x6bfe3  6      
  addl $0x8, %ebx                     #  376   0x6bfe9  3      
  nop                                 #  377   0x6bfec  1      
.L_6c220:                             #        0x6bfed  0      
  testl $0x100, %r13d                 #  378   0x6bfed  7      
  jne .L_6d340                        #  379   0x6bff4  6      
  movl 0xc4(%rsp), %esi               #  380   0x6bffa  7      
  movl 0xb0(%rsp), %ecx               #  381   0x6c001  7      
  nop                                 #  382   0x6c008  1      
  movl %ebx, %ebx                     #  383   0x6c009  2      
  movl %esi, 0x4(%r15,%rbx,1)         #  384   0x6c00b  5      
  addl %esi, 0x228(%rsp)              #  385   0x6c010  7      
  movl %ebx, %ebx                     #  386   0x6c017  2      
  movl %ecx, (%r15,%rbx,1)            #  387   0x6c019  4      
  nop                                 #  388   0x6c01d  1      
.L_6c260:                             #        0x6c01e  0      
  movl 0x224(%rsp), %eax              #  389   0x6c01e  7      
  addl $0x1, %eax                     #  390   0x6c025  3      
  cmpl $0x7, %eax                     #  391   0x6c028  3      
  movl %eax, 0x224(%rsp)              #  392   0x6c02b  7      
  jg .L_6d900                         #  393   0x6c032  6      
  addl $0x8, %ebx                     #  394   0x6c038  3      
  nop                                 #  395   0x6c03b  1      
.L_6c280:                             #        0x6c03c  0      
  andl $0x4, %r13d                    #  396   0x6c03c  4      
  je .L_6c420                         #  397   0x6c040  6      
  movl 0xd4(%rsp), %r13d              #  398   0x6c046  8      
  subl 0xb8(%rsp), %r13d              #  399   0x6c04e  8      
  testl %r13d, %r13d                  #  400   0x6c056  3      
  nop                                 #  401   0x6c059  1      
  jle .L_6c420                        #  402   0x6c05a  6      
  cmpl $0x10, %r13d                   #  403   0x6c060  4      
  jle .L_6c3a0                        #  404   0x6c064  6      
  leal 0x220(%rsp), %ecx              #  405   0x6c06a  7      
  movq %rbx, %rax                     #  406   0x6c071  3      
  nop                                 #  407   0x6c074  1      
  movq 0xc8(%rsp), %rbx               #  408   0x6c075  8      
  movq %rcx, 0x8(%rsp)                #  409   0x6c07d  5      
  jmpq .L_6c300                       #  410   0x6c082  5      
  xchgw %ax, %ax                      #  411   0x6c087  3      
  nop                                 #  412   0x6c08a  1      
.L_6c2e0:                             #        0x6c08b  0      
  subl $0x10, %r13d                   #  413   0x6c08b  4      
  addl $0x8, %eax                     #  414   0x6c08f  3      
  cmpl $0x10, %r13d                   #  415   0x6c092  4      
  jle .L_6c380                        #  416   0x6c096  6      
  nop                                 #  417   0x6c09c  1      
.L_6c300:                             #        0x6c09d  0      
  movl %eax, %eax                     #  418   0x6c09d  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  419   0x6c09f  9      
  movl 0x224(%rsp), %edx              #  420   0x6c0a8  7      
  addl $0x10, 0x228(%rsp)             #  421   0x6c0af  8      
  nop                                 #  422   0x6c0b7  1      
  movl %eax, %eax                     #  423   0x6c0b8  2      
  movl $0x10023f10, (%r15,%rax,1)     #  424   0x6c0ba  8      
  addl $0x1, %edx                     #  425   0x6c0c2  3      
  cmpl $0x7, %edx                     #  426   0x6c0c5  3      
  movl %edx, 0x224(%rsp)              #  427   0x6c0c8  7      
  jle .L_6c2e0                        #  428   0x6c0cf  6      
  movl 0x8(%rsp), %edx                #  429   0x6c0d5  4      
  movl %ebx, %esi                     #  430   0x6c0d9  2      
  nop                                 #  431   0x6c0db  1      
  movl %r14d, %edi                    #  432   0x6c0dc  3      
  nop                                 #  433   0x6c0df  1      
  nop                                 #  434   0x6c0e0  1      
  callq .__ssprint_r                  #  435   0x6c0e1  5      
  testl %eax, %eax                    #  436   0x6c0e6  2      
  jne .L_6d2a0                        #  437   0x6c0e8  6      
  subl $0x10, %r13d                   #  438   0x6c0ee  4      
  leal 0x1e0(%rsp), %eax              #  439   0x6c0f2  7      
  cmpl $0x10, %r13d                   #  440   0x6c0f9  4      
  jg .L_6c300                         #  441   0x6c0fd  6      
  nop                                 #  442   0x6c103  1      
.L_6c380:                             #        0x6c104  0      
  movq %rax, %rbx                     #  443   0x6c104  3      
  nop                                 #  444   0x6c107  1      
  nop                                 #  445   0x6c108  1      
.L_6c3a0:                             #        0x6c109  0      
  movl %ebx, %ebx                     #  446   0x6c109  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  447   0x6c10b  5      
  movl 0x224(%rsp), %eax              #  448   0x6c110  7      
  addl 0x228(%rsp), %r13d             #  449   0x6c117  8      
  movl %ebx, %ebx                     #  450   0x6c11f  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  451   0x6c121  8      
  addl $0x1, %eax                     #  452   0x6c129  3      
  cmpl $0x7, %eax                     #  453   0x6c12c  3      
  movl %eax, 0x224(%rsp)              #  454   0x6c12f  7      
  movl %r13d, 0x228(%rsp)             #  455   0x6c136  8      
  jle .L_6c440                        #  456   0x6c13e  6      
  movl 0xc8(%rsp), %esi               #  457   0x6c144  7      
  xchgw %ax, %ax                      #  458   0x6c14b  3      
  leal 0x220(%rsp), %edx              #  459   0x6c14e  7      
  movl %r14d, %edi                    #  460   0x6c155  3      
  xchgw %ax, %ax                      #  461   0x6c158  3      
  nop                                 #  462   0x6c15b  1      
  callq .__ssprint_r                  #  463   0x6c15c  5      
  testl %eax, %eax                    #  464   0x6c161  2      
  jne .L_6d2a0                        #  465   0x6c163  6      
  nop                                 #  466   0x6c169  1      
  nop                                 #  467   0x6c16a  1      
.L_6c420:                             #        0x6c16b  0      
  movl 0x228(%rsp), %r13d             #  468   0x6c16b  8      
  nop                                 #  469   0x6c173  1      
  nop                                 #  470   0x6c174  1      
.L_6c440:                             #        0x6c175  0      
  movl 0xd4(%rsp), %ebx               #  471   0x6c175  7      
  cmpl %ebx, 0xb8(%rsp)               #  472   0x6c17c  7      
  movl %ebx, %eax                     #  473   0x6c183  2      
  cmovgel 0xb8(%rsp), %eax            #  474   0x6c185  8      
  addl %eax, 0xd0(%rsp)               #  475   0x6c18d  7      
  nop                                 #  476   0x6c194  1      
  testl %r13d, %r13d                  #  477   0x6c195  3      
  jne .L_6d940                        #  478   0x6c198  6      
  nop                                 #  479   0x6c19e  1      
  nop                                 #  480   0x6c19f  1      
.L_6c480:                             #        0x6c1a0  0      
  cmpq $0x0, 0xe8(%rsp)               #  481   0x6c1a0  9      
  movl $0x0, 0x224(%rsp)              #  482   0x6c1a9  11     
  leal 0x1e0(%rsp), %ebx              #  483   0x6c1b4  7      
  nop                                 #  484   0x6c1bb  1      
  je .L_6c4c0                         #  485   0x6c1bc  6      
  movl 0xe8(%rsp), %esi               #  486   0x6c1c2  7      
  leal 0x1e0(%rsp), %ebx              #  487   0x6c1c9  7      
  movl %r14d, %edi                    #  488   0x6c1d0  3      
  nop                                 #  489   0x6c1d3  1      
  callq ._free_r                      #  490   0x6c1d4  5      
.L_6c4c0:                             #        0x6c1d9  0      
  movq %r12, 0xb0(%rsp)               #  491   0x6c1d9  8      
  jmpq .L_6bb80                       #  492   0x6c1e1  5      
  nop                                 #  493   0x6c1e6  1      
  nop                                 #  494   0x6c1e7  1      
.L_6c4e0:                             #        0x6c1e8  0      
  movl %ecx, %ecx                     #  495   0x6c1e8  2      
  movl %ecx, %ecx                     #  496   0x6c1ea  2      
  movq 0x10023c20(%r15,%rcx,8), %rcx  #  497   0x6c1ec  8      
  andl $0xffffffe0, %ecx              #  498   0x6c1f4  6      
  addq %r15, %rcx                     #  499   0x6c1fa  3      
  jmpq %rcx                           #  500   0x6c1fd  2      
  nop                                 #  501   0x6c1ff  1      
  movl %r14d, %edi                    #  502   0x6c200  3      
  movl %edx, 0xa8(%rsp)               #  503   0x6c203  7      
  movl %r10d, 0x90(%rsp)              #  504   0x6c20a  8      
  nop                                 #  505   0x6c212  1      
  callq ._localeconv_r                #  506   0x6c213  5      
  movl %eax, %eax                     #  507   0x6c218  2      
  movl %eax, %eax                     #  508   0x6c21a  2      
  movl 0x4(%r15,%rax,1), %eax         #  509   0x6c21c  5      
  movl %eax, %edi                     #  510   0x6c221  2      
  movq %rax, 0x150(%rsp)              #  511   0x6c223  8      
  nop                                 #  512   0x6c22b  1      
  callq .strlen                       #  513   0x6c22c  5      
  movl %r14d, %edi                    #  514   0x6c231  3      
  movl %eax, 0x140(%rsp)              #  515   0x6c234  7      
  xchgw %ax, %ax                      #  516   0x6c23b  3      
  nop                                 #  517   0x6c23e  1      
  callq ._localeconv_r                #  518   0x6c23f  5      
  movl %eax, %eax                     #  519   0x6c244  2      
  movl 0x140(%rsp), %ecx              #  520   0x6c246  7      
  movl 0xa8(%rsp), %edx               #  521   0x6c24d  7      
  movl %eax, %eax                     #  522   0x6c254  2      
  movl 0x8(%r15,%rax,1), %eax         #  523   0x6c256  5      
  movl 0x90(%rsp), %r10d              #  524   0x6c25b  8      
  nop                                 #  525   0x6c263  1      
  testl %ecx, %ecx                    #  526   0x6c264  2      
  movq %rax, 0xf0(%rsp)               #  527   0x6c266  8      
  je .L_6c5c0                         #  528   0x6c26e  6      
  testq %rax, %rax                    #  529   0x6c274  3      
  je .L_6c5c0                         #  530   0x6c277  6      
  movq 0xf0(%rsp), %rcx               #  531   0x6c27d  8      
  movl %ecx, %ecx                     #  532   0x6c285  2      
  cmpb $0x0, (%r15,%rcx,1)            #  533   0x6c287  5      
  jne .L_6f960                        #  534   0x6c28c  6      
  nop                                 #  535   0x6c292  1      
  nop                                 #  536   0x6c293  1      
.L_6c5c0:                             #        0x6c294  0      
  movl %r12d, %r12d                   #  537   0x6c294  3      
  movzbl (%r15,%r12,1), %eax          #  538   0x6c297  5      
  jmpq .L_6bd60                       #  539   0x6c29c  5      
  nop                                 #  540   0x6c2a1  1      
  nop                                 #  541   0x6c2a2  1      
  orl $0x20, %r13d                    #  542   0x6c2a3  4      
  movl %r12d, %r12d                   #  543   0x6c2a7  3      
  movzbl (%r15,%r12,1), %eax          #  544   0x6c2aa  5      
  jmpq .L_6bd60                       #  545   0x6c2af  5      
  nop                                 #  546   0x6c2b4  1      
  movq 0xe0(%rsp), %rsi               #  547   0x6c2b5  8      
  movl %esi, %esi                     #  548   0x6c2bd  2      
  movl (%r15,%rsi,1), %eax            #  549   0x6c2bf  4      
  cmpl $0x2f, %eax                    #  550   0x6c2c3  3      
  ja .L_6f1c0                         #  551   0x6c2c6  6      
  movl %esi, %esi                     #  552   0x6c2cc  2      
  movl 0xc(%r15,%rsi,1), %ecx         #  553   0x6c2ce  5      
  addl %eax, %ecx                     #  554   0x6c2d3  2      
  addl $0x8, %eax                     #  555   0x6c2d5  3      
  movl %esi, %esi                     #  556   0x6c2d8  2      
  movl %eax, (%r15,%rsi,1)            #  557   0x6c2da  4      
  nop                                 #  558   0x6c2de  1      
  nop                                 #  559   0x6c2df  1      
.L_6c640:                             #        0x6c2e0  0      
  movl %ecx, %ecx                     #  560   0x6c2e0  2      
  movl (%r15,%rcx,1), %ecx            #  561   0x6c2e2  4      
  testl %ecx, %ecx                    #  562   0x6c2e6  2      
  movl %ecx, 0xd4(%rsp)               #  563   0x6c2e8  7      
  jns .L_6c5c0                        #  564   0x6c2ef  6      
  negl 0xd4(%rsp)                     #  565   0x6c2f5  7      
  nop                                 #  566   0x6c2fc  1      
  orl $0x4, %r13d                     #  567   0x6c2fd  4      
  movl %r12d, %r12d                   #  568   0x6c301  3      
  movzbl (%r15,%r12,1), %eax          #  569   0x6c304  5      
  jmpq .L_6bd60                       #  570   0x6c309  5      
  nop                                 #  571   0x6c30e  1      
.L_6c680:                             #        0x6c30f  0      
  movl 0xc8(%rsp), %esi               #  572   0x6c30f  7      
  leal 0x220(%rsp), %edx              #  573   0x6c316  7      
  movl %r14d, %edi                    #  574   0x6c31d  3      
  movl %ecx, 0x98(%rsp)               #  575   0x6c320  7      
  nop                                 #  576   0x6c327  1      
  callq .__ssprint_r                  #  577   0x6c328  5      
  testl %eax, %eax                    #  578   0x6c32d  2      
  movl 0x98(%rsp), %ecx               #  579   0x6c32f  7      
  jne .L_6fe00                        #  580   0x6c336  6      
  leal 0x1e0(%rsp), %ebx              #  581   0x6c33c  7      
  jmpq .L_6bd00                       #  582   0x6c343  5      
  nop                                 #  583   0x6c348  1      
  movl %r12d, %r12d                   #  584   0x6c349  3      
  movzbl (%r15,%r12,1), %eax          #  585   0x6c34c  5      
  cmpb $0x6c, %al                     #  586   0x6c351  2      
  je .L_6f900                         #  587   0x6c353  6      
  orl $0x10, %r13d                    #  588   0x6c359  4      
  jmpq .L_6bd60                       #  589   0x6c35d  5      
  nop                                 #  590   0x6c362  1      
  testb $0x20, %r13b                  #  591   0x6c363  4      
  je .L_6f0a0                         #  592   0x6c367  6      
  movq 0xe0(%rsp), %rcx               #  593   0x6c36d  8      
  movl %ecx, %ecx                     #  594   0x6c375  2      
  movl (%r15,%rcx,1), %eax            #  595   0x6c377  4      
  cmpl $0x2f, %eax                    #  596   0x6c37b  3      
  nop                                 #  597   0x6c37e  1      
  ja .L_6fb80                         #  598   0x6c37f  6      
  movl %ecx, %ecx                     #  599   0x6c385  2      
  movl 0xc(%r15,%rcx,1), %edx         #  600   0x6c387  5      
  addl %eax, %edx                     #  601   0x6c38c  2      
  addl $0x8, %eax                     #  602   0x6c38e  3      
  movl %ecx, %ecx                     #  603   0x6c391  2      
  movl %eax, (%r15,%rcx,1)            #  604   0x6c393  4      
  nop                                 #  605   0x6c397  1      
.L_6c720:                             #        0x6c398  0      
  movl %edx, %edx                     #  606   0x6c398  2      
  movl (%r15,%rdx,1), %eax            #  607   0x6c39a  4      
  movslq 0xd0(%rsp), %rdx             #  608   0x6c39e  8      
  movl %eax, %eax                     #  609   0x6c3a6  2      
  movq %rdx, (%r15,%rax,1)            #  610   0x6c3a8  4      
  jmpq .L_6c4c0                       #  611   0x6c3ac  5      
  nop                                 #  612   0x6c3b1  1      
  testb $0x20, %r13b                  #  613   0x6c3b2  4      
  movl %eax, 0x100(%rsp)              #  614   0x6c3b6  7      
  movq $0x10023c01, 0x148(%rsp)       #  615   0x6c3bd  12     
  je .L_6cd80                         #  616   0x6c3c9  6      
  nop                                 #  617   0x6c3cf  1      
.L_6c760:                             #        0x6c3d0  0      
  movq 0xe0(%rsp), %rdx               #  618   0x6c3d0  8      
  movl %edx, %edx                     #  619   0x6c3d8  2      
  movl (%r15,%rdx,1), %eax            #  620   0x6c3da  4      
  cmpl $0x2f, %eax                    #  621   0x6c3de  3      
  ja .L_6f120                         #  622   0x6c3e1  6      
  movq %rdx, %rcx                     #  623   0x6c3e7  3      
  nop                                 #  624   0x6c3ea  1      
  movl %edx, %edx                     #  625   0x6c3eb  2      
  movl 0xc(%r15,%rdx,1), %edx         #  626   0x6c3ed  5      
  addl %eax, %edx                     #  627   0x6c3f2  2      
  addl $0x8, %eax                     #  628   0x6c3f4  3      
  movl %ecx, %ecx                     #  629   0x6c3f7  2      
  movl %eax, (%r15,%rcx,1)            #  630   0x6c3f9  4      
  nop                                 #  631   0x6c3fd  1      
.L_6c7a0:                             #        0x6c3fe  0      
  movl %edx, %edx                     #  632   0x6c3fe  2      
  movq (%r15,%rdx,1), %rcx            #  633   0x6c400  4      
  nop                                 #  634   0x6c404  1      
  nop                                 #  635   0x6c405  1      
.L_6c7c0:                             #        0x6c406  0      
  testq %rcx, %rcx                    #  636   0x6c406  3      
  setne %sil                          #  637   0x6c409  4      
  je .L_6c800                         #  638   0x6c40d  6      
  testb $0x1, %r13b                   #  639   0x6c413  4      
  je .L_6c800                         #  640   0x6c417  6      
  movzbl 0x100(%rsp), %eax            #  641   0x6c41d  8      
  movb $0x30, 0x290(%rsp)             #  642   0x6c425  8      
  nop                                 #  643   0x6c42d  1      
  orl $0x2, %r13d                     #  644   0x6c42e  4      
  movb %al, 0x291(%rsp)               #  645   0x6c432  7      
  nop                                 #  646   0x6c439  1      
  nop                                 #  647   0x6c43a  1      
.L_6c800:                             #        0x6c43b  0      
  andl $0xfffffbff, %r13d             #  648   0x6c43b  7      
  movl $0x2, %eax                     #  649   0x6c442  5      
  nop                                 #  650   0x6c447  1      
  nop                                 #  651   0x6c448  1      
.L_6c820:                             #        0x6c449  0      
  movb $0x0, 0x29f(%rsp)              #  652   0x6c449  8      
  nop                                 #  653   0x6c451  1      
  nop                                 #  654   0x6c452  1      
.L_6c840:                             #        0x6c453  0      
  movl %r13d, %edx                    #  655   0x6c453  3      
  andb $0x7f, %dl                     #  656   0x6c456  3      
  testl %r10d, %r10d                  #  657   0x6c459  3      
  cmovnsl %edx, %r13d                 #  658   0x6c45c  4      
  testl %r10d, %r10d                  #  659   0x6c460  3      
  jne .L_6c860                        #  660   0x6c463  6      
  testb %sil, %sil                    #  661   0x6c469  3      
  je .L_6d560                         #  662   0x6c46c  6      
  nop                                 #  663   0x6c472  1      
.L_6c860:                             #        0x6c473  0      
  cmpl $0x1, %eax                     #  664   0x6c473  3      
  je .L_6dc20                         #  665   0x6c476  6      
  cmpl $0x2, %eax                     #  666   0x6c47c  3      
  je .L_6dc60                         #  667   0x6c47f  6      
  movq 0x108(%rsp), %rdx              #  668   0x6c485  8      
  nop                                 #  669   0x6c48d  1      
  movq %rdx, 0xb0(%rsp)               #  670   0x6c48e  8      
  nop                                 #  671   0x6c496  1      
  nop                                 #  672   0x6c497  1      
.L_6c8a0:                             #        0x6c498  0      
  movl %ecx, %eax                     #  673   0x6c498  2      
  shrq $0x3, %rcx                     #  674   0x6c49a  4      
  subl $0x1, %edx                     #  675   0x6c49e  3      
  andl $0x7, %eax                     #  676   0x6c4a1  3      
  addl $0x30, %eax                    #  677   0x6c4a4  3      
  testq %rcx, %rcx                    #  678   0x6c4a7  3      
  movl %edx, %edx                     #  679   0x6c4aa  2      
  movb %al, (%r15,%rdx,1)             #  680   0x6c4ac  4      
  jne .L_6c8a0                        #  681   0x6c4b0  6      
  testb $0x1, %r13b                   #  682   0x6c4b6  4      
  xchgw %ax, %ax                      #  683   0x6c4ba  3      
  movq %rdx, 0xb0(%rsp)               #  684   0x6c4bd  8      
  jne .L_6ea80                        #  685   0x6c4c5  6      
  movl 0x108(%rsp), %ecx              #  686   0x6c4cb  7      
  movq 0xf0(%rsp), %rsi               #  687   0x6c4d2  8      
  subl %edx, %ecx                     #  688   0x6c4da  2      
  nop                                 #  689   0x6c4dc  1      
  movl %ecx, 0xc4(%rsp)               #  690   0x6c4dd  7      
  nop                                 #  691   0x6c4e4  1      
  nop                                 #  692   0x6c4e5  1      
.L_6c900:                             #        0x6c4e6  0      
  cmpl %r10d, 0xc4(%rsp)              #  693   0x6c4e6  8      
  movl 0xc4(%rsp), %edx               #  694   0x6c4ee  7      
  movzbl 0x29f(%rsp), %eax            #  695   0x6c4f5  8      
  movl %r10d, 0x104(%rsp)             #  696   0x6c4fd  8      
  nop                                 #  697   0x6c505  1      
  movq %rsi, 0xf0(%rsp)               #  698   0x6c506  8      
  movq $0x0, 0xe8(%rsp)               #  699   0x6c50e  12     
  movl $0x0, 0x114(%rsp)              #  700   0x6c51a  11     
  nop                                 #  701   0x6c525  1      
  movl $0x0, 0x12c(%rsp)              #  702   0x6c526  11     
  cmovll %r10d, %edx                  #  703   0x6c531  4      
  movl $0x0, 0x11c(%rsp)              #  704   0x6c535  11     
  nop                                 #  705   0x6c540  1      
  movl %edx, 0xb8(%rsp)               #  706   0x6c541  7      
  nop                                 #  707   0x6c548  1      
  nop                                 #  708   0x6c549  1      
.L_6c980:                             #        0x6c54a  0      
  testb %al, %al                      #  709   0x6c54a  2      
  je .L_6be40                         #  710   0x6c54c  6      
  nop                                 #  711   0x6c552  1      
  nop                                 #  712   0x6c553  1      
.L_6c9a0:                             #        0x6c554  0      
  addl $0x1, 0xb8(%rsp)               #  713   0x6c554  8      
  jmpq .L_6be40                       #  714   0x6c55c  5      
  nop                                 #  715   0x6c561  1      
  nop                                 #  716   0x6c562  1      
  movq 0xe0(%rsp), %rdx               #  717   0x6c563  8      
  movl %edx, %edx                     #  718   0x6c56b  2      
  movl (%r15,%rdx,1), %eax            #  719   0x6c56d  4      
  cmpl $0x2f, %eax                    #  720   0x6c571  3      
  ja .L_6eb20                         #  721   0x6c574  6      
  movq %rdx, %rcx                     #  722   0x6c57a  3      
  nop                                 #  723   0x6c57d  1      
  movl %edx, %edx                     #  724   0x6c57e  2      
  movl 0xc(%r15,%rdx,1), %edx         #  725   0x6c580  5      
  addl %eax, %edx                     #  726   0x6c585  2      
  addl $0x8, %eax                     #  727   0x6c587  3      
  movl %ecx, %ecx                     #  728   0x6c58a  2      
  movl %eax, (%r15,%rcx,1)            #  729   0x6c58c  4      
  nop                                 #  730   0x6c590  1      
.L_6ca00:                             #        0x6c591  0      
  movl %edx, %edx                     #  731   0x6c591  2      
  movl (%r15,%rdx,1), %ecx            #  732   0x6c593  4      
  orl $0x2, %r13d                     #  733   0x6c597  4      
  movb $0x30, 0x290(%rsp)             #  734   0x6c59b  8      
  movb $0x78, 0x291(%rsp)             #  735   0x6c5a3  8      
  nop                                 #  736   0x6c5ab  1      
  movq $0x10023c01, 0x148(%rsp)       #  737   0x6c5ac  12     
  movl $0x2, %eax                     #  738   0x6c5b8  5      
  movl $0x78, 0x100(%rsp)             #  739   0x6c5bd  11     
  testq %rcx, %rcx                    #  740   0x6c5c8  3      
  nop                                 #  741   0x6c5cb  1      
  setne %sil                          #  742   0x6c5cc  4      
  jmpq .L_6c820                       #  743   0x6c5d0  5      
  nop                                 #  744   0x6c5d5  1      
  nop                                 #  745   0x6c5d6  1      
  orl $0x1, %r13d                     #  746   0x6c5d7  4      
  movl %r12d, %r12d                   #  747   0x6c5db  3      
  movzbl (%r15,%r12,1), %eax          #  748   0x6c5de  5      
  jmpq .L_6bd60                       #  749   0x6c5e3  5      
  nop                                 #  750   0x6c5e8  1      
  cmpb $0x0, 0x29f(%rsp)              #  751   0x6c5e9  8      
  jne .L_6c5c0                        #  752   0x6c5f1  6      
  movb $0x20, 0x29f(%rsp)             #  753   0x6c5f7  8      
  movl %r12d, %r12d                   #  754   0x6c5ff  3      
  movzbl (%r15,%r12,1), %eax          #  755   0x6c602  5      
  xchgw %ax, %ax                      #  756   0x6c607  3      
  jmpq .L_6bd60                       #  757   0x6c60a  5      
  nop                                 #  758   0x6c60f  1      
  nop                                 #  759   0x6c610  1      
  movq 0xe0(%rsp), %rdx               #  760   0x6c611  8      
  movl %eax, 0x100(%rsp)              #  761   0x6c619  7      
  movl %edx, %edx                     #  762   0x6c620  2      
  movl 0x4(%r15,%rdx,1), %eax         #  763   0x6c622  5      
  cmpl $0xaf, %eax                    #  764   0x6c627  3      
  nop                                 #  765   0x6c62a  1      
  ja .L_6f600                         #  766   0x6c62b  6      
  movq %rdx, %rcx                     #  767   0x6c631  3      
  movl %edx, %edx                     #  768   0x6c634  2      
  movl 0xc(%r15,%rdx,1), %edx         #  769   0x6c636  5      
  addl %eax, %edx                     #  770   0x6c63b  2      
  addl $0x10, %eax                    #  771   0x6c63d  3      
  movl %ecx, %ecx                     #  772   0x6c640  2      
  movl %eax, 0x4(%r15,%rcx,1)         #  773   0x6c642  5      
  nop                                 #  774   0x6c647  1      
.L_6cb00:                             #        0x6c648  0      
  movl %edx, %edx                     #  775   0x6c648  2      
  movsd (%r15,%rdx,1), %xmm0          #  776   0x6c64a  6      
  movl %r10d, 0x90(%rsp)              #  777   0x6c650  8      
  movsd %xmm0, 0x130(%rsp)            #  778   0x6c658  9      
  nop                                 #  779   0x6c661  1      
  movsd %xmm0, 0xb8(%rsp)             #  780   0x6c662  9      
  movsd 0x130(%rsp), %xmm0            #  781   0x6c66b  9      
  nop                                 #  782   0x6c674  1      
  callq .__fpclassifyd                #  783   0x6c675  5      
  cmpl $0x1, %eax                     #  784   0x6c67a  3      
  movl 0x90(%rsp), %r10d              #  785   0x6c67d  8      
  jne .L_6ec00                        #  786   0x6c685  6      
  movsd 0x130(%rsp), %xmm1            #  787   0x6c68b  9      
  nop                                 #  788   0x6c694  1      
  ucomisd 0xffb7883(%rip), %xmm1      #  789   0x6c695  8      
  jb .L_6fc00                         #  790   0x6c69d  6      
  nop                                 #  791   0x6c6a3  1      
  nop                                 #  792   0x6c6a4  1      
.L_6cb80:                             #        0x6c6a5  0      
  cmpl $0x47, 0x100(%rsp)             #  793   0x6c6a5  8      
  movq $0x10023bf1, 0xb0(%rsp)        #  794   0x6c6ad  12     
  movl $0x10023bf5, %eax              #  795   0x6c6b9  5      
  nop                                 #  796   0x6c6be  1      
.L_6cba0:                             #        0x6c6bf  0      
  cmovleq 0xb0(%rsp), %rax            #  797   0x6c6bf  9      
  movl $0x3, 0xb8(%rsp)               #  798   0x6c6c8  11     
  andb $0x7f, %r13b                   #  799   0x6c6d3  4      
  nop                                 #  800   0x6c6d7  1      
  movq $0x0, 0xe8(%rsp)               #  801   0x6c6d8  12     
  movl $0x3, 0xc4(%rsp)               #  802   0x6c6e4  11     
  nop                                 #  803   0x6c6ef  1      
  movl $0x0, 0x104(%rsp)              #  804   0x6c6f0  11     
  movl $0x0, 0x114(%rsp)              #  805   0x6c6fb  11     
  nop                                 #  806   0x6c706  1      
  movl $0x0, 0x12c(%rsp)              #  807   0x6c707  11     
  movl $0x0, 0x11c(%rsp)              #  808   0x6c712  11     
  movq %rax, 0xb0(%rsp)               #  809   0x6c71d  8      
  xchgw %ax, %ax                      #  810   0x6c725  3      
  movzbl 0x29f(%rsp), %eax            #  811   0x6c728  8      
  jmpq .L_6c980                       #  812   0x6c730  5      
  nop                                 #  813   0x6c735  1      
  nop                                 #  814   0x6c736  1      
  cmpl $0x43, %eax                    #  815   0x6c737  3      
  movl %eax, 0x100(%rsp)              #  816   0x6c73a  7      
  je .L_6e6a0                         #  817   0x6c741  6      
  testb $0x10, %r13b                  #  818   0x6c747  4      
  jne .L_6e6a0                        #  819   0x6c74b  6      
  nop                                 #  820   0x6c751  1      
  movq 0xe0(%rsp), %rcx               #  821   0x6c752  8      
  movl %ecx, %ecx                     #  822   0x6c75a  2      
  movl (%r15,%rcx,1), %eax            #  823   0x6c75c  4      
  cmpl $0x2f, %eax                    #  824   0x6c760  3      
  ja .L_6fc40                         #  825   0x6c763  6      
  movl %ecx, %ecx                     #  826   0x6c769  2      
  movl 0xc(%r15,%rcx,1), %edx         #  827   0x6c76b  5      
  addl %eax, %edx                     #  828   0x6c770  2      
  addl $0x8, %eax                     #  829   0x6c772  3      
  movl %ecx, %ecx                     #  830   0x6c775  2      
  movl %eax, (%r15,%rcx,1)            #  831   0x6c777  4      
  nop                                 #  832   0x6c77b  1      
  nop                                 #  833   0x6c77c  1      
.L_6cca0:                             #        0x6c77d  0      
  movl %edx, %edx                     #  834   0x6c77d  2      
  movl (%r15,%rdx,1), %eax            #  835   0x6c77f  4      
  movl $0x1, 0xc4(%rsp)               #  836   0x6c783  11     
  movb %al, 0x170(%rsp)               #  837   0x6c78e  7      
  jmpq .L_6e740                       #  838   0x6c795  5      
  nop                                 #  839   0x6c79a  1      
  movl %eax, 0x100(%rsp)              #  840   0x6c79b  7      
  orl $0x10, %r13d                    #  841   0x6c7a2  4      
  nop                                 #  842   0x6c7a6  1      
  nop                                 #  843   0x6c7a7  1      
.L_6cce0:                             #        0x6c7a8  0      
  testb $0x20, %r13b                  #  844   0x6c7a8  4      
  je .L_6dd20                         #  845   0x6c7ac  6      
  movq 0xe0(%rsp), %rcx               #  846   0x6c7b2  8      
  movl %ecx, %ecx                     #  847   0x6c7ba  2      
  movl (%r15,%rcx,1), %eax            #  848   0x6c7bc  4      
  cmpl $0x2f, %eax                    #  849   0x6c7c0  3      
  nop                                 #  850   0x6c7c3  1      
  ja .L_6ebe0                         #  851   0x6c7c4  6      
  movl %ecx, %ecx                     #  852   0x6c7ca  2      
  movl 0xc(%r15,%rcx,1), %edx         #  853   0x6c7cc  5      
  addl %eax, %edx                     #  854   0x6c7d1  2      
  addl $0x8, %eax                     #  855   0x6c7d3  3      
  movl %ecx, %ecx                     #  856   0x6c7d6  2      
  movl %eax, (%r15,%rcx,1)            #  857   0x6c7d8  4      
  nop                                 #  858   0x6c7dc  1      
.L_6cd20:                             #        0x6c7dd  0      
  movl %edx, %edx                     #  859   0x6c7dd  2      
  movq (%r15,%rdx,1), %rcx            #  860   0x6c7df  4      
  nop                                 #  861   0x6c7e3  1      
  nop                                 #  862   0x6c7e4  1      
.L_6cd40:                             #        0x6c7e5  0      
  cmpq $0x0, %rcx                     #  863   0x6c7e5  4      
  jl .L_6eae0                         #  864   0x6c7e9  6      
  setne %sil                          #  865   0x6c7ef  4      
  movl $0x1, %eax                     #  866   0x6c7f3  5      
  jmpq .L_6c840                       #  867   0x6c7f8  5      
  nop                                 #  868   0x6c7fd  1      
  testb $0x20, %r13b                  #  869   0x6c7fe  4      
  movl %eax, 0x100(%rsp)              #  870   0x6c802  7      
  movq $0x10023be0, 0x148(%rsp)       #  871   0x6c809  12     
  jne .L_6c760                        #  872   0x6c815  6      
  nop                                 #  873   0x6c81b  1      
.L_6cd80:                             #        0x6c81c  0      
  testb $0x10, %r13b                  #  874   0x6c81c  4      
  je .L_6f020                         #  875   0x6c820  6      
  movq 0xe0(%rsp), %rdx               #  876   0x6c826  8      
  movl %edx, %edx                     #  877   0x6c82e  2      
  movl (%r15,%rdx,1), %eax            #  878   0x6c830  4      
  cmpl $0x2f, %eax                    #  879   0x6c834  3      
  nop                                 #  880   0x6c837  1      
  ja .L_6f9c0                         #  881   0x6c838  6      
  movq %rdx, %rcx                     #  882   0x6c83e  3      
  movl %edx, %edx                     #  883   0x6c841  2      
  movl 0xc(%r15,%rdx,1), %edx         #  884   0x6c843  5      
  addl %eax, %edx                     #  885   0x6c848  2      
  addl $0x8, %eax                     #  886   0x6c84a  3      
  movl %ecx, %ecx                     #  887   0x6c84d  2      
  movl %eax, (%r15,%rcx,1)            #  888   0x6c84f  4      
  nop                                 #  889   0x6c853  1      
.L_6cdc0:                             #        0x6c854  0      
  movl %edx, %edx                     #  890   0x6c854  2      
  movl (%r15,%rdx,1), %ecx            #  891   0x6c856  4      
  jmpq .L_6c7c0                       #  892   0x6c85a  5      
  nop                                 #  893   0x6c85f  1      
  nop                                 #  894   0x6c860  1      
  orb $0x80, %r13b                    #  895   0x6c861  4      
  movl %r12d, %r12d                   #  896   0x6c865  3      
  movzbl (%r15,%r12,1), %eax          #  897   0x6c868  5      
  jmpq .L_6bd60                       #  898   0x6c86d  5      
  nop                                 #  899   0x6c872  1      
  xorl %ecx, %ecx                     #  900   0x6c873  2      
  nop                                 #  901   0x6c875  1      
  nop                                 #  902   0x6c876  1      
.L_6ce20:                             #        0x6c877  0      
  leal (%rcx,%rcx,4), %ecx            #  903   0x6c877  3      
  leal -0x30(%rax,%rcx,2), %ecx       #  904   0x6c87a  4      
  movl %r12d, %r12d                   #  905   0x6c87e  3      
  movsbl (%r15,%r12,1), %eax          #  906   0x6c881  5      
  addl $0x1, %r12d                    #  907   0x6c886  4      
  leal -0x30(%rax), %esi              #  908   0x6c88a  3      
  cmpl $0x9, %esi                     #  909   0x6c88d  3      
  jbe .L_6ce20                        #  910   0x6c890  6      
  nop                                 #  911   0x6c896  1      
  movl %ecx, 0xd4(%rsp)               #  912   0x6c897  7      
  jmpq .L_6bd80                       #  913   0x6c89e  5      
  nop                                 #  914   0x6c8a3  1      
  nop                                 #  915   0x6c8a4  1      
  movl %eax, 0x100(%rsp)              #  916   0x6c8a5  7      
  orl $0x10, %r13d                    #  917   0x6c8ac  4      
  nop                                 #  918   0x6c8b0  1      
  nop                                 #  919   0x6c8b1  1      
.L_6ce80:                             #        0x6c8b2  0      
  testb $0x20, %r13b                  #  920   0x6c8b2  4      
  je .L_6df00                         #  921   0x6c8b6  6      
  movq 0xe0(%rsp), %rcx               #  922   0x6c8bc  8      
  movl %ecx, %ecx                     #  923   0x6c8c4  2      
  movl (%r15,%rcx,1), %eax            #  924   0x6c8c6  4      
  cmpl $0x2f, %eax                    #  925   0x6c8ca  3      
  nop                                 #  926   0x6c8cd  1      
  ja .L_6f200                         #  927   0x6c8ce  6      
  movl %ecx, %ecx                     #  928   0x6c8d4  2      
  movl 0xc(%r15,%rcx,1), %edx         #  929   0x6c8d6  5      
  addl %eax, %edx                     #  930   0x6c8db  2      
  addl $0x8, %eax                     #  931   0x6c8dd  3      
  movl %ecx, %ecx                     #  932   0x6c8e0  2      
  movl %eax, (%r15,%rcx,1)            #  933   0x6c8e2  4      
  nop                                 #  934   0x6c8e6  1      
.L_6cec0:                             #        0x6c8e7  0      
  movl %edx, %edx                     #  935   0x6c8e7  2      
  movq (%r15,%rdx,1), %rcx            #  936   0x6c8e9  4      
  nop                                 #  937   0x6c8ed  1      
  nop                                 #  938   0x6c8ee  1      
.L_6cee0:                             #        0x6c8ef  0      
  andl $0xfffffbff, %r13d             #  939   0x6c8ef  7      
  testq %rcx, %rcx                    #  940   0x6c8f6  3      
  setne %sil                          #  941   0x6c8f9  4      
  xorl %eax, %eax                     #  942   0x6c8fd  2      
  jmpq .L_6c820                       #  943   0x6c8ff  5      
  nop                                 #  944   0x6c904  1      
  movq 0xe0(%rsp), %rdx               #  945   0x6c905  8      
  movl %eax, 0x100(%rsp)              #  946   0x6c90d  7      
  movl %edx, %edx                     #  947   0x6c914  2      
  movl (%r15,%rdx,1), %eax            #  948   0x6c916  4      
  cmpl $0x2f, %eax                    #  949   0x6c91a  3      
  ja .L_6eb40                         #  950   0x6c91d  6      
  xchgw %ax, %ax                      #  951   0x6c923  3      
  movq %rdx, %rcx                     #  952   0x6c926  3      
  movl %edx, %edx                     #  953   0x6c929  2      
  movl 0xc(%r15,%rdx,1), %edx         #  954   0x6c92b  5      
  addl %eax, %edx                     #  955   0x6c930  2      
  addl $0x8, %eax                     #  956   0x6c932  3      
  movl %ecx, %ecx                     #  957   0x6c935  2      
  movl %eax, (%r15,%rcx,1)            #  958   0x6c937  4      
  nop                                 #  959   0x6c93b  1      
.L_6cf40:                             #        0x6c93c  0      
  movl %edx, %edx                     #  960   0x6c93c  2      
  movl (%r15,%rdx,1), %edx            #  961   0x6c93e  4      
  movb $0x0, 0x29f(%rsp)              #  962   0x6c942  8      
  testq %rdx, %rdx                    #  963   0x6c94a  3      
  movq %rdx, 0xb0(%rsp)               #  964   0x6c94d  8      
  je .L_6ffa0                         #  965   0x6c955  6      
  nop                                 #  966   0x6c95b  1      
  cmpl $0x53, 0x100(%rsp)             #  967   0x6c95c  8      
  je .L_6f300                         #  968   0x6c964  6      
  movl %r13d, %ecx                    #  969   0x6c96a  3      
  andl $0x10, %ecx                    #  970   0x6c96d  3      
  jne .L_6f300                        #  971   0x6c970  6      
  testl %r10d, %r10d                  #  972   0x6c976  3      
  nop                                 #  973   0x6c979  1      
  js .L_6fce0                         #  974   0x6c97a  6      
  movl 0xb0(%rsp), %edi               #  975   0x6c980  7      
  movl %r10d, %edx                    #  976   0x6c987  3      
  xorl %esi, %esi                     #  977   0x6c98a  2      
  movl %ecx, 0x98(%rsp)               #  978   0x6c98c  7      
  nop                                 #  979   0x6c993  1      
  movl %r10d, 0x90(%rsp)              #  980   0x6c994  8      
  nop                                 #  981   0x6c99c  1      
  nop                                 #  982   0x6c99d  1      
  callq .memchr                       #  983   0x6c99e  5      
  movl %eax, %eax                     #  984   0x6c9a3  2      
  movl 0x98(%rsp), %ecx               #  985   0x6c9a5  7      
  movl 0x90(%rsp), %r10d              #  986   0x6c9ac  8      
  testq %rax, %rax                    #  987   0x6c9b4  3      
  je .L_70040                         #  988   0x6c9b7  6      
  nop                                 #  989   0x6c9bd  1      
  subl 0xb0(%rsp), %eax               #  990   0x6c9be  7      
  cmpl %r10d, %eax                    #  991   0x6c9c5  3      
  movl %eax, 0xc4(%rsp)               #  992   0x6c9c8  7      
  jg .L_70040                         #  993   0x6c9cf  6      
  cmpl $0x0, 0xc4(%rsp)               #  994   0x6c9d5  8      
  nop                                 #  995   0x6c9dd  1      
  movzbl 0x29f(%rsp), %eax            #  996   0x6c9de  8      
  cmovnsl 0xc4(%rsp), %ecx            #  997   0x6c9e6  8      
  movl %ecx, 0xb8(%rsp)               #  998   0x6c9ee  7      
  nop                                 #  999   0x6c9f5  1      
.L_6d020:                             #        0x6c9f6  0      
  movq $0x0, 0xe8(%rsp)               #  1000  0x6c9f6  12     
  movl $0x0, 0x104(%rsp)              #  1001  0x6ca02  11     
  nop                                 #  1002  0x6ca0d  1      
  movl $0x0, 0x114(%rsp)              #  1003  0x6ca0e  11     
  movl $0x0, 0x12c(%rsp)              #  1004  0x6ca19  11     
  nop                                 #  1005  0x6ca24  1      
  movl $0x0, 0x11c(%rsp)              #  1006  0x6ca25  11     
  jmpq .L_6c980                       #  1007  0x6ca30  5      
  nop                                 #  1008  0x6ca35  1      
  nop                                 #  1009  0x6ca36  1      
  movl %eax, 0x100(%rsp)              #  1010  0x6ca37  7      
  orl $0x10, %r13d                    #  1011  0x6ca3e  4      
  nop                                 #  1012  0x6ca42  1      
  nop                                 #  1013  0x6ca43  1      
.L_6d0a0:                             #        0x6ca44  0      
  testb $0x20, %r13b                  #  1014  0x6ca44  4      
  je .L_6dea0                         #  1015  0x6ca48  6      
  movq 0xe0(%rsp), %rcx               #  1016  0x6ca4e  8      
  movl %ecx, %ecx                     #  1017  0x6ca56  2      
  movl (%r15,%rcx,1), %eax            #  1018  0x6ca58  4      
  cmpl $0x2f, %eax                    #  1019  0x6ca5c  3      
  nop                                 #  1020  0x6ca5f  1      
  ja .L_6f000                         #  1021  0x6ca60  6      
  movl %ecx, %ecx                     #  1022  0x6ca66  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1023  0x6ca68  5      
  addl %eax, %edx                     #  1024  0x6ca6d  2      
  addl $0x8, %eax                     #  1025  0x6ca6f  3      
  movl %ecx, %ecx                     #  1026  0x6ca72  2      
  movl %eax, (%r15,%rcx,1)            #  1027  0x6ca74  4      
  nop                                 #  1028  0x6ca78  1      
.L_6d0e0:                             #        0x6ca79  0      
  movl %edx, %edx                     #  1029  0x6ca79  2      
  movq (%r15,%rdx,1), %rcx            #  1030  0x6ca7b  4      
  movl $0x1, %eax                     #  1031  0x6ca7f  5      
  testq %rcx, %rcx                    #  1032  0x6ca84  3      
  setne %sil                          #  1033  0x6ca87  4      
  jmpq .L_6c820                       #  1034  0x6ca8b  5      
  nop                                 #  1035  0x6ca90  1      
  orl $0x8, %r13d                     #  1036  0x6ca91  4      
  movl %r12d, %r12d                   #  1037  0x6ca95  3      
  movzbl (%r15,%r12,1), %eax          #  1038  0x6ca98  5      
  jmpq .L_6bd60                       #  1039  0x6ca9d  5      
  nop                                 #  1040  0x6caa2  1      
  movl %r12d, %r12d                   #  1041  0x6caa3  3      
  movsbl (%r15,%r12,1), %eax          #  1042  0x6caa6  5      
  addl $0x1, %r12d                    #  1043  0x6caab  4      
  cmpl $0x2a, %eax                    #  1044  0x6caaf  3      
  je .L_70fe0                         #  1045  0x6cab2  6      
  leal -0x30(%rax), %esi              #  1046  0x6cab8  3      
  xorl %ecx, %ecx                     #  1047  0x6cabb  2      
  xorl %r10d, %r10d                   #  1048  0x6cabd  3      
  cmpl $0x9, %esi                     #  1049  0x6cac0  3      
  ja .L_6bd80                         #  1050  0x6cac3  6      
  nop                                 #  1051  0x6cac9  1      
  nop                                 #  1052  0x6caca  1      
.L_6d160:                             #        0x6cacb  0      
  movl %r12d, %r12d                   #  1053  0x6cacb  3      
  movsbl (%r15,%r12,1), %eax          #  1054  0x6cace  5      
  leal (%rcx,%rcx,4), %ecx            #  1055  0x6cad3  3      
  addl $0x1, %r12d                    #  1056  0x6cad6  4      
  leal (%rsi,%rcx,2), %ecx            #  1057  0x6cada  3      
  leal -0x30(%rax), %esi              #  1058  0x6cadd  3      
  cmpl $0x9, %esi                     #  1059  0x6cae0  3      
  jbe .L_6d160                        #  1060  0x6cae3  6      
  testl %ecx, %ecx                    #  1061  0x6cae9  2      
  movl %edx, %r10d                    #  1062  0x6caeb  3      
  nop                                 #  1063  0x6caee  1      
  cmovnsl %ecx, %r10d                 #  1064  0x6caef  4      
  jmpq .L_6bd80                       #  1065  0x6caf3  5      
  nop                                 #  1066  0x6caf8  1      
  nop                                 #  1067  0x6caf9  1      
  movl %r12d, %r12d                   #  1068  0x6cafa  3      
  movzbl (%r15,%r12,1), %eax          #  1069  0x6cafd  5      
  cmpb $0x68, %al                     #  1070  0x6cb02  2      
  je .L_6f920                         #  1071  0x6cb04  6      
  orl $0x40, %r13d                    #  1072  0x6cb0a  4      
  jmpq .L_6bd60                       #  1073  0x6cb0e  5      
  nop                                 #  1074  0x6cb13  1      
  movb $0x2b, 0x29f(%rsp)             #  1075  0x6cb14  8      
  movl %r12d, %r12d                   #  1076  0x6cb1c  3      
  movzbl (%r15,%r12,1), %eax          #  1077  0x6cb1f  5      
  jmpq .L_6bd60                       #  1078  0x6cb24  5      
  nop                                 #  1079  0x6cb29  1      
  movl %eax, 0x100(%rsp)              #  1080  0x6cb2a  7      
  jmpq .L_6cce0                       #  1081  0x6cb31  5      
  nop                                 #  1082  0x6cb36  1      
  nop                                 #  1083  0x6cb37  1      
  movl %eax, 0x100(%rsp)              #  1084  0x6cb38  7      
  jmpq .L_6ce80                       #  1085  0x6cb3f  5      
  nop                                 #  1086  0x6cb44  1      
  nop                                 #  1087  0x6cb45  1      
  movl %eax, 0x100(%rsp)              #  1088  0x6cb46  7      
  jmpq .L_6d0a0                       #  1089  0x6cb4d  5      
  nop                                 #  1090  0x6cb52  1      
  nop                                 #  1091  0x6cb53  1      
.L_6d240:                             #        0x6cb54  0      
  movl 0x228(%rsp), %eax              #  1092  0x6cb54  7      
  testl %eax, %eax                    #  1093  0x6cb5b  2      
  jne .L_6fdc0                        #  1094  0x6cb5d  6      
  xchgw %ax, %ax                      #  1095  0x6cb63  3      
  nop                                 #  1096  0x6cb66  1      
.L_6d260:                             #        0x6cb67  0      
  movq 0xc8(%rsp), %rdx               #  1097  0x6cb67  8      
  movl %edx, %edx                     #  1098  0x6cb6f  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1099  0x6cb71  6      
  jmpq .L_6d2e0                       #  1100  0x6cb77  5      
  nop                                 #  1101  0x6cb7c  1      
.L_6d280:                             #        0x6cb7d  0      
  movq 0xc8(%rsp), %rax               #  1102  0x6cb7d  8      
  movl %eax, %eax                     #  1103  0x6cb85  2      
  orw $0x40, 0xc(%r15,%rax,1)         #  1104  0x6cb87  7      
  nop                                 #  1105  0x6cb8e  1      
.L_6d2a0:                             #        0x6cb8f  0      
  cmpq $0x0, 0xe8(%rsp)               #  1106  0x6cb8f  9      
  je .L_6da40                         #  1107  0x6cb98  6      
  movl 0xe8(%rsp), %esi               #  1108  0x6cb9e  7      
  movl %r14d, %edi                    #  1109  0x6cba5  3      
  xchgw %ax, %ax                      #  1110  0x6cba8  3      
  callq ._free_r                      #  1111  0x6cbab  5      
  movq 0xc8(%rsp), %rbx               #  1112  0x6cbb0  8      
  movl %ebx, %ebx                     #  1113  0x6cbb8  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  1114  0x6cbba  6      
  nop                                 #  1115  0x6cbc0  1      
  nop                                 #  1116  0x6cbc1  1      
.L_6d2e0:                             #        0x6cbc2  0      
  testb $0x40, %al                    #  1117  0x6cbc2  2      
  movl $0xffffffff, %eax              #  1118  0x6cbc4  5      
  cmovel 0xd0(%rsp), %eax             #  1119  0x6cbc9  8      
  movl %eax, 0xd0(%rsp)               #  1120  0x6cbd1  7      
  nop                                 #  1121  0x6cbd8  1      
.L_6d300:                             #        0x6cbd9  0      
  movl 0xd0(%rsp), %eax               #  1122  0x6cbd9  7      
  addl $0x2a8, %esp                   #  1123  0x6cbe0  6      
  addq %r15, %rsp                     #  1124  0x6cbe6  3      
  popq %rbx                           #  1125  0x6cbe9  2      
  popq %r12                           #  1126  0x6cbeb  3      
  popq %r13                           #  1127  0x6cbee  3      
  popq %r14                           #  1128  0x6cbf1  3      
  popq %r11                           #  1129  0x6cbf4  3      
  nop                                 #  1130  0x6cbf7  1      
  andl $0xffffffe0, %r11d             #  1131  0x6cbf8  7      
  addq %r15, %r11                     #  1132  0x6cbff  3      
  jmpq %r11                           #  1133  0x6cc02  3      
  nop                                 #  1134  0x6cc05  1      
  nop                                 #  1135  0x6cc06  1      
.L_6d340:                             #        0x6cc07  0      
  cmpl $0x65, 0x100(%rsp)             #  1136  0x6cc07  8      
  jle .L_6d740                        #  1137  0x6cc0f  6      
  movsd 0x130(%rsp), %xmm0            #  1138  0x6cc15  9      
  ucomisd 0xffb72fa(%rip), %xmm0      #  1139  0x6cc1e  8      
  nop                                 #  1140  0x6cc26  1      
  jne .L_6da60                        #  1141  0x6cc27  6      
  jp .L_6da60                         #  1142  0x6cc2d  6      
  movl %ebx, %ebx                     #  1143  0x6cc33  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1144  0x6cc35  9      
  movl 0x224(%rsp), %eax              #  1145  0x6cc3e  7      
  xchgw %ax, %ax                      #  1146  0x6cc45  3      
  addl $0x1, 0x228(%rsp)              #  1147  0x6cc48  8      
  movl %ebx, %ebx                     #  1148  0x6cc50  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  1149  0x6cc52  8      
  addl $0x1, %eax                     #  1150  0x6cc5a  3      
  cmpl $0x7, %eax                     #  1151  0x6cc5d  3      
  movl %eax, 0x224(%rsp)              #  1152  0x6cc60  7      
  nop                                 #  1153  0x6cc67  1      
  jg .L_6f6a0                         #  1154  0x6cc68  6      
  addl $0x8, %ebx                     #  1155  0x6cc6e  3      
  nop                                 #  1156  0x6cc71  1      
  nop                                 #  1157  0x6cc72  1      
.L_6d3c0:                             #        0x6cc73  0      
  movl 0x118(%rsp), %eax              #  1158  0x6cc73  7      
  cmpl %eax, 0x28c(%rsp)              #  1159  0x6cc7a  7      
  jl .L_6d3e0                         #  1160  0x6cc81  6      
  testb $0x1, %r13b                   #  1161  0x6cc87  4      
  je .L_6c280                         #  1162  0x6cc8b  6      
  nop                                 #  1163  0x6cc91  1      
.L_6d3e0:                             #        0x6cc92  0      
  movl 0x13c(%rsp), %ecx              #  1164  0x6cc92  7      
  movl 0x120(%rsp), %edx              #  1165  0x6cc99  7      
  movl %ebx, %ebx                     #  1166  0x6cca0  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1167  0x6cca2  5      
  movl 0x224(%rsp), %eax              #  1168  0x6cca7  7      
  nop                                 #  1169  0x6ccae  1      
  addl %ecx, 0x228(%rsp)              #  1170  0x6ccaf  7      
  movl %ebx, %ebx                     #  1171  0x6ccb6  2      
  movl %edx, (%r15,%rbx,1)            #  1172  0x6ccb8  4      
  addl $0x1, %eax                     #  1173  0x6ccbc  3      
  cmpl $0x7, %eax                     #  1174  0x6ccbf  3      
  movl %eax, 0x224(%rsp)              #  1175  0x6ccc2  7      
  jg .L_6fe20                         #  1176  0x6ccc9  6      
  addl $0x8, %ebx                     #  1177  0x6cccf  3      
  nop                                 #  1178  0x6ccd2  1      
  nop                                 #  1179  0x6ccd3  1      
.L_6d440:                             #        0x6ccd4  0      
  movl 0x118(%rsp), %ecx              #  1180  0x6ccd4  7      
  subl $0x1, %ecx                     #  1181  0x6ccdb  3      
  testl %ecx, %ecx                    #  1182  0x6ccde  2      
  jle .L_6c280                        #  1183  0x6cce0  6      
  cmpl $0x10, %ecx                    #  1184  0x6cce6  3      
  jle .L_6df80                        #  1185  0x6cce9  6      
  nop                                 #  1186  0x6ccef  1      
  leal 0x220(%rsp), %esi              #  1187  0x6ccf0  7      
  movq %rbx, %rax                     #  1188  0x6ccf7  3      
  movl %r13d, 0xb0(%rsp)              #  1189  0x6ccfa  8      
  movl %ecx, %ebx                     #  1190  0x6cd02  2      
  movq %r12, %r13                     #  1191  0x6cd04  3      
  movq 0xc8(%rsp), %r12               #  1192  0x6cd07  8      
  nop                                 #  1193  0x6cd0f  1      
  movq %rsi, 0x38(%rsp)               #  1194  0x6cd10  5      
  jmpq .L_6d4e0                       #  1195  0x6cd15  5      
  nop                                 #  1196  0x6cd1a  1      
  nop                                 #  1197  0x6cd1b  1      
.L_6d4a0:                             #        0x6cd1c  0      
  addl $0x8, %eax                     #  1198  0x6cd1c  3      
  nop                                 #  1199  0x6cd1f  1      
  nop                                 #  1200  0x6cd20  1      
.L_6d4c0:                             #        0x6cd21  0      
  subl $0x10, %ebx                    #  1201  0x6cd21  3      
  cmpl $0x10, %ebx                    #  1202  0x6cd24  3      
  jle .L_6f620                        #  1203  0x6cd27  6      
  nop                                 #  1204  0x6cd2d  1      
  nop                                 #  1205  0x6cd2e  1      
.L_6d4e0:                             #        0x6cd2f  0      
  movl %eax, %eax                     #  1206  0x6cd2f  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1207  0x6cd31  9      
  movl 0x224(%rsp), %edx              #  1208  0x6cd3a  7      
  addl $0x10, 0x228(%rsp)             #  1209  0x6cd41  8      
  nop                                 #  1210  0x6cd49  1      
  movl %eax, %eax                     #  1211  0x6cd4a  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1212  0x6cd4c  8      
  addl $0x1, %edx                     #  1213  0x6cd54  3      
  cmpl $0x7, %edx                     #  1214  0x6cd57  3      
  movl %edx, 0x224(%rsp)              #  1215  0x6cd5a  7      
  jle .L_6d4a0                        #  1216  0x6cd61  6      
  movl 0x38(%rsp), %edx               #  1217  0x6cd67  4      
  movl %r12d, %esi                    #  1218  0x6cd6b  3      
  movl %r14d, %edi                    #  1219  0x6cd6e  3      
  nop                                 #  1220  0x6cd71  1      
  nop                                 #  1221  0x6cd72  1      
  callq .__ssprint_r                  #  1222  0x6cd73  5      
  testl %eax, %eax                    #  1223  0x6cd78  2      
  jne .L_6d2a0                        #  1224  0x6cd7a  6      
  leal 0x1e0(%rsp), %eax              #  1225  0x6cd80  7      
  jmpq .L_6d4c0                       #  1226  0x6cd87  5      
  nop                                 #  1227  0x6cd8c  1      
.L_6d560:                             #        0x6cd8d  0      
  testl %eax, %eax                    #  1228  0x6cd8d  2      
  jne .L_6d5a0                        #  1229  0x6cd8f  6      
  testb $0x1, %r13b                   #  1230  0x6cd95  4      
  je .L_6d5a0                         #  1231  0x6cd99  6      
  movq 0x158(%rsp), %rcx              #  1232  0x6cd9f  8      
  movq %rcx, 0xb0(%rsp)               #  1233  0x6cda7  8      
  nop                                 #  1234  0x6cdaf  1      
  movl %ecx, %ecx                     #  1235  0x6cdb0  2      
  movb $0x30, (%r15,%rcx,1)           #  1236  0x6cdb2  5      
  movl $0x1, 0xc4(%rsp)               #  1237  0x6cdb7  11     
  movq 0xf0(%rsp), %rsi               #  1238  0x6cdc2  8      
  jmpq .L_6c900                       #  1239  0x6cdca  5      
  nop                                 #  1240  0x6cdcf  1      
.L_6d5a0:                             #        0x6cdd0  0      
  movq 0x108(%rsp), %rax              #  1241  0x6cdd0  8      
  movq 0xf0(%rsp), %rsi               #  1242  0x6cdd8  8      
  movl $0x0, 0xc4(%rsp)               #  1243  0x6cde0  11     
  nop                                 #  1244  0x6cdeb  1      
  movq %rax, 0xb0(%rsp)               #  1245  0x6cdec  8      
  jmpq .L_6c900                       #  1246  0x6cdf4  5      
  nop                                 #  1247  0x6cdf9  1      
  nop                                 #  1248  0x6cdfa  1      
.L_6d5e0:                             #        0x6cdfb  0      
  movl 0xd4(%rsp), %ecx               #  1249  0x6cdfb  7      
  subl 0xb8(%rsp), %ecx               #  1250  0x6ce02  7      
  testl %ecx, %ecx                    #  1251  0x6ce09  2      
  jle .L_6c0c0                        #  1252  0x6ce0b  6      
  cmpl $0x10, %ecx                    #  1253  0x6ce11  3      
  jle .L_6d700                        #  1254  0x6ce14  6      
  nop                                 #  1255  0x6ce1a  1      
  leal 0x220(%rsp), %eax              #  1256  0x6ce1b  7      
  movl %r13d, 0xd8(%rsp)              #  1257  0x6ce22  8      
  movq %r12, %r13                     #  1258  0x6ce2a  3      
  movq 0xc8(%rsp), %r12               #  1259  0x6ce2d  8      
  movq %rax, 0x48(%rsp)               #  1260  0x6ce35  5      
  nop                                 #  1261  0x6ce3a  1      
  movq %rbx, %rax                     #  1262  0x6ce3b  3      
  movl %ecx, %ebx                     #  1263  0x6ce3e  2      
  jmpq .L_6d660                       #  1264  0x6ce40  5      
  nop                                 #  1265  0x6ce45  1      
  nop                                 #  1266  0x6ce46  1      
.L_6d640:                             #        0x6ce47  0      
  subl $0x10, %ebx                    #  1267  0x6ce47  3      
  addl $0x8, %eax                     #  1268  0x6ce4a  3      
  cmpl $0x10, %ebx                    #  1269  0x6ce4d  3      
  jle .L_6d6e0                        #  1270  0x6ce50  6      
  xchgw %ax, %ax                      #  1271  0x6ce56  3      
  nop                                 #  1272  0x6ce59  1      
.L_6d660:                             #        0x6ce5a  0      
  movl %eax, %eax                     #  1273  0x6ce5a  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1274  0x6ce5c  9      
  movl 0x224(%rsp), %edx              #  1275  0x6ce65  7      
  addl $0x10, 0x228(%rsp)             #  1276  0x6ce6c  8      
  nop                                 #  1277  0x6ce74  1      
  movl %eax, %eax                     #  1278  0x6ce75  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1279  0x6ce77  8      
  addl $0x1, %edx                     #  1280  0x6ce7f  3      
  cmpl $0x7, %edx                     #  1281  0x6ce82  3      
  movl %edx, 0x224(%rsp)              #  1282  0x6ce85  7      
  jle .L_6d640                        #  1283  0x6ce8c  6      
  movl 0x48(%rsp), %edx               #  1284  0x6ce92  4      
  movl %r12d, %esi                    #  1285  0x6ce96  3      
  movl %r14d, %edi                    #  1286  0x6ce99  3      
  nop                                 #  1287  0x6ce9c  1      
  nop                                 #  1288  0x6ce9d  1      
  callq .__ssprint_r                  #  1289  0x6ce9e  5      
  testl %eax, %eax                    #  1290  0x6cea3  2      
  jne .L_6d2a0                        #  1291  0x6cea5  6      
  subl $0x10, %ebx                    #  1292  0x6ceab  3      
  leal 0x1e0(%rsp), %eax              #  1293  0x6ceae  7      
  cmpl $0x10, %ebx                    #  1294  0x6ceb5  3      
  jg .L_6d660                         #  1295  0x6ceb8  6      
  nop                                 #  1296  0x6cebe  1      
.L_6d6e0:                             #        0x6cebf  0      
  movq %r13, %r12                     #  1297  0x6cebf  3      
  movl 0xd8(%rsp), %r13d              #  1298  0x6cec2  8      
  movl %ebx, %ecx                     #  1299  0x6ceca  2      
  movq %rax, %rbx                     #  1300  0x6cecc  3      
  nop                                 #  1301  0x6cecf  1      
  nop                                 #  1302  0x6ced0  1      
.L_6d700:                             #        0x6ced1  0      
  movl %ebx, %ebx                     #  1303  0x6ced1  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1304  0x6ced3  5      
  movl 0x224(%rsp), %eax              #  1305  0x6ced8  7      
  addl %ecx, 0x228(%rsp)              #  1306  0x6cedf  7      
  movl %ebx, %ebx                     #  1307  0x6cee6  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1308  0x6cee8  8      
  nop                                 #  1309  0x6cef0  1      
  addl $0x1, %eax                     #  1310  0x6cef1  3      
  cmpl $0x7, %eax                     #  1311  0x6cef4  3      
  movl %eax, 0x224(%rsp)              #  1312  0x6cef7  7      
  jg .L_6ea40                         #  1313  0x6cefe  6      
  addl $0x8, %ebx                     #  1314  0x6cf04  3      
  jmpq .L_6c0c0                       #  1315  0x6cf07  5      
  nop                                 #  1316  0x6cf0c  1      
.L_6d740:                             #        0x6cf0d  0      
  cmpl $0x1, 0x118(%rsp)              #  1317  0x6cf0d  8      
  jle .L_6e580                        #  1318  0x6cf15  6      
  nop                                 #  1319  0x6cf1b  1      
  nop                                 #  1320  0x6cf1c  1      
.L_6d760:                             #        0x6cf1d  0      
  movl %ebx, %ebx                     #  1321  0x6cf1d  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1322  0x6cf1f  9      
  movl 0x224(%rsp), %eax              #  1323  0x6cf28  7      
  movl 0xb0(%rsp), %ecx               #  1324  0x6cf2f  7      
  nop                                 #  1325  0x6cf36  1      
  addl $0x1, 0x228(%rsp)              #  1326  0x6cf37  8      
  addl $0x1, %eax                     #  1327  0x6cf3f  3      
  cmpl $0x7, %eax                     #  1328  0x6cf42  3      
  movl %ebx, %ebx                     #  1329  0x6cf45  2      
  movl %ecx, (%r15,%rbx,1)            #  1330  0x6cf47  4      
  movl %eax, 0x224(%rsp)              #  1331  0x6cf4b  7      
  nop                                 #  1332  0x6cf52  1      
  jg .L_6e660                         #  1333  0x6cf53  6      
  leal 0x8(%rbx), %eax                #  1334  0x6cf59  3      
  nop                                 #  1335  0x6cf5c  1      
  nop                                 #  1336  0x6cf5d  1      
.L_6d7c0:                             #        0x6cf5e  0      
  movl 0x13c(%rsp), %esi              #  1337  0x6cf5e  7      
  movl 0x120(%rsp), %ebx              #  1338  0x6cf65  7      
  movl %eax, %eax                     #  1339  0x6cf6c  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1340  0x6cf6e  5      
  movl 0x224(%rsp), %edx              #  1341  0x6cf73  7      
  nop                                 #  1342  0x6cf7a  1      
  addl %esi, 0x228(%rsp)              #  1343  0x6cf7b  7      
  movl %eax, %eax                     #  1344  0x6cf82  2      
  movl %ebx, (%r15,%rax,1)            #  1345  0x6cf84  4      
  addl $0x1, %edx                     #  1346  0x6cf88  3      
  cmpl $0x7, %edx                     #  1347  0x6cf8b  3      
  movl %edx, 0x224(%rsp)              #  1348  0x6cf8e  7      
  jg .L_6e620                         #  1349  0x6cf95  6      
  addl $0x8, %eax                     #  1350  0x6cf9b  3      
  nop                                 #  1351  0x6cf9e  1      
  nop                                 #  1352  0x6cf9f  1      
.L_6d820:                             #        0x6cfa0  0      
  movsd 0x130(%rsp), %xmm0            #  1353  0x6cfa0  9      
  ucomisd 0xffb6f6f(%rip), %xmm0      #  1354  0x6cfa9  8      
  jp .L_6d840                         #  1355  0x6cfb1  6      
  je .L_6dd80                         #  1356  0x6cfb7  6      
  nop                                 #  1357  0x6cfbd  1      
.L_6d840:                             #        0x6cfbe  0      
  movl 0xb0(%rsp), %edx               #  1358  0x6cfbe  7      
  movl 0x118(%rsp), %ecx              #  1359  0x6cfc5  7      
  addl $0x1, %edx                     #  1360  0x6cfcc  3      
  movl %eax, %eax                     #  1361  0x6cfcf  2      
  movl %edx, (%r15,%rax,1)            #  1362  0x6cfd1  4      
  movl 0x118(%rsp), %edx              #  1363  0x6cfd5  7      
  xchgw %ax, %ax                      #  1364  0x6cfdc  3      
  subl $0x1, %edx                     #  1365  0x6cfdf  3      
  movl %eax, %eax                     #  1366  0x6cfe2  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1367  0x6cfe4  5      
  movl 0x228(%rsp), %edx              #  1368  0x6cfe9  7      
  leal -0x1(%rcx,%rdx,1), %edx        #  1369  0x6cff0  4      
  movl %edx, 0x228(%rsp)              #  1370  0x6cff4  7      
  nop                                 #  1371  0x6cffb  1      
.L_6d880:                             #        0x6cffc  0      
  movl 0x224(%rsp), %edx              #  1372  0x6cffc  7      
  addl $0x1, %edx                     #  1373  0x6d003  3      
  cmpl $0x7, %edx                     #  1374  0x6d006  3      
  movl %edx, 0x224(%rsp)              #  1375  0x6d009  7      
  jg .L_6e5e0                         #  1376  0x6d010  6      
  addl $0x8, %eax                     #  1377  0x6d016  3      
  nop                                 #  1378  0x6d019  1      
.L_6d8a0:                             #        0x6d01a  0      
  leal 0x270(%rsp), %edx              #  1379  0x6d01a  7      
  movl %eax, %eax                     #  1380  0x6d021  2      
  movl %edx, (%r15,%rax,1)            #  1381  0x6d023  4      
  movl 0x144(%rsp), %edx              #  1382  0x6d027  7      
  movl %eax, %eax                     #  1383  0x6d02e  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1384  0x6d030  5      
  nop                                 #  1385  0x6d035  1      
  addl %edx, 0x228(%rsp)              #  1386  0x6d036  7      
  nop                                 #  1387  0x6d03d  1      
  nop                                 #  1388  0x6d03e  1      
.L_6d8e0:                             #        0x6d03f  0      
  movl 0x224(%rsp), %edx              #  1389  0x6d03f  7      
  leal 0x8(%rax), %ebx                #  1390  0x6d046  3      
  addl $0x1, %edx                     #  1391  0x6d049  3      
  cmpl $0x7, %edx                     #  1392  0x6d04c  3      
  movl %edx, 0x224(%rsp)              #  1393  0x6d04f  7      
  jle .L_6c280                        #  1394  0x6d056  6      
  nop                                 #  1395  0x6d05c  1      
.L_6d900:                             #        0x6d05d  0      
  movl 0xc8(%rsp), %esi               #  1396  0x6d05d  7      
  leal 0x220(%rsp), %edx              #  1397  0x6d064  7      
  movl %r14d, %edi                    #  1398  0x6d06b  3      
  nop                                 #  1399  0x6d06e  1      
  callq .__ssprint_r                  #  1400  0x6d06f  5      
  testl %eax, %eax                    #  1401  0x6d074  2      
  jne .L_6d2a0                        #  1402  0x6d076  6      
  leal 0x1e0(%rsp), %ebx              #  1403  0x6d07c  7      
  jmpq .L_6c280                       #  1404  0x6d083  5      
  nop                                 #  1405  0x6d088  1      
.L_6d940:                             #        0x6d089  0      
  movl 0xc8(%rsp), %esi               #  1406  0x6d089  7      
  leal 0x220(%rsp), %edx              #  1407  0x6d090  7      
  movl %r14d, %edi                    #  1408  0x6d097  3      
  nop                                 #  1409  0x6d09a  1      
  callq .__ssprint_r                  #  1410  0x6d09b  5      
  testl %eax, %eax                    #  1411  0x6d0a0  2      
  je .L_6c480                         #  1412  0x6d0a2  6      
  jmpq .L_6d2a0                       #  1413  0x6d0a8  5      
  nop                                 #  1414  0x6d0ad  1      
  nop                                 #  1415  0x6d0ae  1      
.L_6d980:                             #        0x6d0af  0      
  movl 0xc8(%rsp), %esi               #  1416  0x6d0af  7      
  leal 0x220(%rsp), %edx              #  1417  0x6d0b6  7      
  movl %r14d, %edi                    #  1418  0x6d0bd  3      
  nop                                 #  1419  0x6d0c0  1      
  callq .__ssprint_r                  #  1420  0x6d0c1  5      
  testl %eax, %eax                    #  1421  0x6d0c6  2      
  jne .L_6d2a0                        #  1422  0x6d0c8  6      
  leal 0x1e0(%rsp), %ebx              #  1423  0x6d0ce  7      
  jmpq .L_6c220                       #  1424  0x6d0d5  5      
  nop                                 #  1425  0x6d0da  1      
.L_6d9c0:                             #        0x6d0db  0      
  movl 0xc8(%rsp), %esi               #  1426  0x6d0db  7      
  leal 0x220(%rsp), %edx              #  1427  0x6d0e2  7      
  movl %r14d, %edi                    #  1428  0x6d0e9  3      
  nop                                 #  1429  0x6d0ec  1      
  callq .__ssprint_r                  #  1430  0x6d0ed  5      
  testl %eax, %eax                    #  1431  0x6d0f2  2      
  jne .L_6d2a0                        #  1432  0x6d0f4  6      
  leal 0x1e0(%rsp), %ebx              #  1433  0x6d0fa  7      
  jmpq .L_6c0a0                       #  1434  0x6d101  5      
  nop                                 #  1435  0x6d106  1      
.L_6da00:                             #        0x6d107  0      
  movl 0xc8(%rsp), %esi               #  1436  0x6d107  7      
  leal 0x220(%rsp), %edx              #  1437  0x6d10e  7      
  movl %r14d, %edi                    #  1438  0x6d115  3      
  nop                                 #  1439  0x6d118  1      
  callq .__ssprint_r                  #  1440  0x6d119  5      
  testl %eax, %eax                    #  1441  0x6d11e  2      
  jne .L_6d2a0                        #  1442  0x6d120  6      
  leal 0x1e0(%rsp), %ebx              #  1443  0x6d126  7      
  jmpq .L_6c040                       #  1444  0x6d12d  5      
  nop                                 #  1445  0x6d132  1      
.L_6da40:                             #        0x6d133  0      
  movq 0xc8(%rsp), %rcx               #  1446  0x6d133  8      
  movl %ecx, %ecx                     #  1447  0x6d13b  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  1448  0x6d13d  6      
  jmpq .L_6d2e0                       #  1449  0x6d143  5      
  nop                                 #  1450  0x6d148  1      
.L_6da60:                             #        0x6d149  0      
  movl 0x28c(%rsp), %r8d              #  1451  0x6d149  8      
  testl %r8d, %r8d                    #  1452  0x6d151  3      
  jle .L_6f6e0                        #  1453  0x6d154  6      
  movl 0x118(%rsp), %eax              #  1454  0x6d15a  7      
  addl 0xb0(%rsp), %eax               #  1455  0x6d161  7      
  nop                                 #  1456  0x6d168  1      
  movl %eax, %r8d                     #  1457  0x6d169  3      
  subl 0xb0(%rsp), %r8d               #  1458  0x6d16c  8      
  movq %rax, 0xd8(%rsp)               #  1459  0x6d174  8      
  cmpl 0x11c(%rsp), %r8d              #  1460  0x6d17c  8      
  nop                                 #  1461  0x6d184  1      
  movl %eax, 0xc4(%rsp)               #  1462  0x6d185  7      
  cmovgl 0x11c(%rsp), %r8d            #  1463  0x6d18c  9      
  testl %r8d, %r8d                    #  1464  0x6d195  3      
  jle .L_6db00                        #  1465  0x6d198  6      
  movl %ebx, %ebx                     #  1466  0x6d19e  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1467  0x6d1a0  5      
  nop                                 #  1468  0x6d1a5  1      
  movl 0x224(%rsp), %eax              #  1469  0x6d1a6  7      
  movl 0xb0(%rsp), %edx               #  1470  0x6d1ad  7      
  addl %r8d, 0x228(%rsp)              #  1471  0x6d1b4  8      
  addl $0x1, %eax                     #  1472  0x6d1bc  3      
  cmpl $0x7, %eax                     #  1473  0x6d1bf  3      
  nop                                 #  1474  0x6d1c2  1      
  movl %ebx, %ebx                     #  1475  0x6d1c3  2      
  movl %edx, (%r15,%rbx,1)            #  1476  0x6d1c5  4      
  movl %eax, 0x224(%rsp)              #  1477  0x6d1c9  7      
  jg .L_6ff00                         #  1478  0x6d1d0  6      
  addl $0x8, %ebx                     #  1479  0x6d1d6  3      
  nop                                 #  1480  0x6d1d9  1      
.L_6db00:                             #        0x6d1da  0      
  movl 0x11c(%rsp), %esi              #  1481  0x6d1da  7      
  xorl %ecx, %ecx                     #  1482  0x6d1e1  2      
  testl %r8d, %r8d                    #  1483  0x6d1e3  3      
  cmovnsl %r8d, %ecx                  #  1484  0x6d1e6  4      
  subl %ecx, %esi                     #  1485  0x6d1ea  2      
  testl %esi, %esi                    #  1486  0x6d1ec  2      
  movl %esi, %ecx                     #  1487  0x6d1ee  2      
  jle .L_6dfe0                        #  1488  0x6d1f0  6      
  cmpl $0x10, %esi                    #  1489  0x6d1f6  3      
  nop                                 #  1490  0x6d1f9  1      
  jle .L_6f2c0                        #  1491  0x6d1fa  6      
  leal 0x220(%rsp), %eax              #  1492  0x6d200  7      
  movl %r13d, 0xfc(%rsp)              #  1493  0x6d207  8      
  movq %r12, %r13                     #  1494  0x6d20f  3      
  movq 0xc8(%rsp), %r12               #  1495  0x6d212  8      
  movq %rax, 0x28(%rsp)               #  1496  0x6d21a  5      
  movq %rbx, %rax                     #  1497  0x6d21f  3      
  movl %esi, %ebx                     #  1498  0x6d222  2      
  jmpq .L_6dba0                       #  1499  0x6d224  5      
  nop                                 #  1500  0x6d229  1      
  nop                                 #  1501  0x6d22a  1      
.L_6db60:                             #        0x6d22b  0      
  addl $0x8, %eax                     #  1502  0x6d22b  3      
  nop                                 #  1503  0x6d22e  1      
  nop                                 #  1504  0x6d22f  1      
.L_6db80:                             #        0x6d230  0      
  subl $0x10, %ebx                    #  1505  0x6d230  3      
  cmpl $0x10, %ebx                    #  1506  0x6d233  3      
  jle .L_6f2a0                        #  1507  0x6d236  6      
  nop                                 #  1508  0x6d23c  1      
  nop                                 #  1509  0x6d23d  1      
.L_6dba0:                             #        0x6d23e  0      
  movl %eax, %eax                     #  1510  0x6d23e  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1511  0x6d240  9      
  movl 0x224(%rsp), %edx              #  1512  0x6d249  7      
  addl $0x10, 0x228(%rsp)             #  1513  0x6d250  8      
  nop                                 #  1514  0x6d258  1      
  movl %eax, %eax                     #  1515  0x6d259  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1516  0x6d25b  8      
  addl $0x1, %edx                     #  1517  0x6d263  3      
  cmpl $0x7, %edx                     #  1518  0x6d266  3      
  movl %edx, 0x224(%rsp)              #  1519  0x6d269  7      
  jle .L_6db60                        #  1520  0x6d270  6      
  movl 0x28(%rsp), %edx               #  1521  0x6d276  4      
  movl %r12d, %esi                    #  1522  0x6d27a  3      
  movl %r14d, %edi                    #  1523  0x6d27d  3      
  nop                                 #  1524  0x6d280  1      
  nop                                 #  1525  0x6d281  1      
  callq .__ssprint_r                  #  1526  0x6d282  5      
  testl %eax, %eax                    #  1527  0x6d287  2      
  jne .L_6d2a0                        #  1528  0x6d289  6      
  leal 0x1e0(%rsp), %eax              #  1529  0x6d28f  7      
  jmpq .L_6db80                       #  1530  0x6d296  5      
  nop                                 #  1531  0x6d29b  1      
.L_6dc20:                             #        0x6d29c  0      
  cmpq $0x9, %rcx                     #  1532  0x6d29c  4      
  ja .L_6e7e0                         #  1533  0x6d2a0  6      
  movq 0x158(%rsp), %rsi              #  1534  0x6d2a6  8      
  addl $0x30, %ecx                    #  1535  0x6d2ae  3      
  movq %rsi, 0xb0(%rsp)               #  1536  0x6d2b1  8      
  nop                                 #  1537  0x6d2b9  1      
  movl %esi, %esi                     #  1538  0x6d2ba  2      
  movb %cl, (%r15,%rsi,1)             #  1539  0x6d2bc  4      
  movl $0x1, 0xc4(%rsp)               #  1540  0x6d2c0  11     
  movq 0xf0(%rsp), %rsi               #  1541  0x6d2cb  8      
  jmpq .L_6c900                       #  1542  0x6d2d3  5      
  xchgw %ax, %ax                      #  1543  0x6d2d8  3      
.L_6dc60:                             #        0x6d2db  0      
  movq 0x108(%rsp), %rsi              #  1544  0x6d2db  8      
  movq %rsi, 0xb0(%rsp)               #  1545  0x6d2e3  8      
  movq 0x148(%rsp), %rsi              #  1546  0x6d2eb  8      
  movq 0xb0(%rsp), %rax               #  1547  0x6d2f3  8      
.L_6dc80:                             #        0x6d2fb  0      
  movl %ecx, %edx                     #  1548  0x6d2fb  2      
  shrq $0x4, %rcx                     #  1549  0x6d2fd  4      
  subl $0x1, %eax                     #  1550  0x6d301  3      
  andl $0xf, %edx                     #  1551  0x6d304  3      
  addl %esi, %edx                     #  1552  0x6d307  2      
  testq %rcx, %rcx                    #  1553  0x6d309  3      
  movl %edx, %edx                     #  1554  0x6d30c  2      
  movzbl (%r15,%rdx,1), %edx          #  1555  0x6d30e  5      
  movl %eax, %eax                     #  1556  0x6d313  2      
  movb %dl, (%r15,%rax,1)             #  1557  0x6d315  4      
  xchgw %ax, %ax                      #  1558  0x6d319  3      
  jne .L_6dc80                        #  1559  0x6d31c  6      
  movl 0x108(%rsp), %edx              #  1560  0x6d322  7      
  movq %rax, 0xb0(%rsp)               #  1561  0x6d329  8      
  movq 0xf0(%rsp), %rsi               #  1562  0x6d331  8      
  subl %eax, %edx                     #  1563  0x6d339  2      
  nop                                 #  1564  0x6d33b  1      
  movl %edx, 0xc4(%rsp)               #  1565  0x6d33c  7      
  jmpq .L_6c900                       #  1566  0x6d343  5      
  nop                                 #  1567  0x6d348  1      
  nop                                 #  1568  0x6d349  1      
.L_6dce0:                             #        0x6d34a  0      
  movl 0xc8(%rsp), %esi               #  1569  0x6d34a  7      
  leal 0x220(%rsp), %edx              #  1570  0x6d351  7      
  movl %r14d, %edi                    #  1571  0x6d358  3      
  nop                                 #  1572  0x6d35b  1      
  callq .__ssprint_r                  #  1573  0x6d35c  5      
  testl %eax, %eax                    #  1574  0x6d361  2      
  jne .L_6d2a0                        #  1575  0x6d363  6      
  movzbl 0x29f(%rsp), %eax            #  1576  0x6d369  8      
  leal 0x1e0(%rsp), %ebx              #  1577  0x6d371  7      
  jmpq .L_6bfe0                       #  1578  0x6d378  5      
  nop                                 #  1579  0x6d37d  1      
.L_6dd20:                             #        0x6d37e  0      
  testb $0x10, %r13b                  #  1580  0x6d37e  4      
  je .L_6eb60                         #  1581  0x6d382  6      
  movq 0xe0(%rsp), %rdx               #  1582  0x6d388  8      
  movl %edx, %edx                     #  1583  0x6d390  2      
  movl (%r15,%rdx,1), %eax            #  1584  0x6d392  4      
  cmpl $0x2f, %eax                    #  1585  0x6d396  3      
  nop                                 #  1586  0x6d399  1      
  ja .L_6f9e0                         #  1587  0x6d39a  6      
  movq %rdx, %rcx                     #  1588  0x6d3a0  3      
  movl %edx, %edx                     #  1589  0x6d3a3  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1590  0x6d3a5  5      
  addl %eax, %edx                     #  1591  0x6d3aa  2      
  addl $0x8, %eax                     #  1592  0x6d3ac  3      
  movl %ecx, %ecx                     #  1593  0x6d3af  2      
  movl %eax, (%r15,%rcx,1)            #  1594  0x6d3b1  4      
  nop                                 #  1595  0x6d3b5  1      
.L_6dd60:                             #        0x6d3b6  0      
  movl %edx, %edx                     #  1596  0x6d3b6  2      
  movslq (%r15,%rdx,1), %rcx          #  1597  0x6d3b8  4      
  jmpq .L_6cd40                       #  1598  0x6d3bc  5      
  nop                                 #  1599  0x6d3c1  1      
  nop                                 #  1600  0x6d3c2  1      
.L_6dd80:                             #        0x6d3c3  0      
  movl 0x118(%rsp), %ebx              #  1601  0x6d3c3  7      
  subl $0x1, %ebx                     #  1602  0x6d3ca  3      
  testl %ebx, %ebx                    #  1603  0x6d3cd  2      
  jle .L_6d8a0                        #  1604  0x6d3cf  6      
  cmpl $0x10, %ebx                    #  1605  0x6d3d5  3      
  jle .L_6e9a0                        #  1606  0x6d3d8  6      
  nop                                 #  1607  0x6d3de  1      
  leal 0x220(%rsp), %esi              #  1608  0x6d3df  7      
  movl %r13d, 0xb0(%rsp)              #  1609  0x6d3e6  8      
  movq %r12, %r13                     #  1610  0x6d3ee  3      
  movq 0xc8(%rsp), %r12               #  1611  0x6d3f1  8      
  movq %rsi, 0x10(%rsp)               #  1612  0x6d3f9  5      
  nop                                 #  1613  0x6d3fe  1      
  jmpq .L_6de20                       #  1614  0x6d3ff  5      
  nop                                 #  1615  0x6d404  1      
  nop                                 #  1616  0x6d405  1      
.L_6dde0:                             #        0x6d406  0      
  addl $0x8, %eax                     #  1617  0x6d406  3      
  nop                                 #  1618  0x6d409  1      
  nop                                 #  1619  0x6d40a  1      
.L_6de00:                             #        0x6d40b  0      
  subl $0x10, %ebx                    #  1620  0x6d40b  3      
  cmpl $0x10, %ebx                    #  1621  0x6d40e  3      
  jle .L_6e980                        #  1622  0x6d411  6      
  nop                                 #  1623  0x6d417  1      
  nop                                 #  1624  0x6d418  1      
.L_6de20:                             #        0x6d419  0      
  movl %eax, %eax                     #  1625  0x6d419  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1626  0x6d41b  9      
  movl 0x224(%rsp), %edx              #  1627  0x6d424  7      
  addl $0x10, 0x228(%rsp)             #  1628  0x6d42b  8      
  nop                                 #  1629  0x6d433  1      
  movl %eax, %eax                     #  1630  0x6d434  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1631  0x6d436  8      
  addl $0x1, %edx                     #  1632  0x6d43e  3      
  cmpl $0x7, %edx                     #  1633  0x6d441  3      
  movl %edx, 0x224(%rsp)              #  1634  0x6d444  7      
  jle .L_6dde0                        #  1635  0x6d44b  6      
  movl 0x10(%rsp), %edx               #  1636  0x6d451  4      
  movl %r12d, %esi                    #  1637  0x6d455  3      
  movl %r14d, %edi                    #  1638  0x6d458  3      
  nop                                 #  1639  0x6d45b  1      
  nop                                 #  1640  0x6d45c  1      
  callq .__ssprint_r                  #  1641  0x6d45d  5      
  testl %eax, %eax                    #  1642  0x6d462  2      
  jne .L_6d2a0                        #  1643  0x6d464  6      
  leal 0x1e0(%rsp), %eax              #  1644  0x6d46a  7      
  jmpq .L_6de00                       #  1645  0x6d471  5      
  nop                                 #  1646  0x6d476  1      
.L_6dea0:                             #        0x6d477  0      
  testb $0x10, %r13b                  #  1647  0x6d477  4      
  je .L_6f220                         #  1648  0x6d47b  6      
  movq 0xe0(%rsp), %rdx               #  1649  0x6d481  8      
  movl %edx, %edx                     #  1650  0x6d489  2      
  movl (%r15,%rdx,1), %eax            #  1651  0x6d48b  4      
  cmpl $0x2f, %eax                    #  1652  0x6d48f  3      
  nop                                 #  1653  0x6d492  1      
  ja .L_6f9a0                         #  1654  0x6d493  6      
  movq %rdx, %rcx                     #  1655  0x6d499  3      
  movl %edx, %edx                     #  1656  0x6d49c  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1657  0x6d49e  5      
  addl %eax, %edx                     #  1658  0x6d4a3  2      
  addl $0x8, %eax                     #  1659  0x6d4a5  3      
  movl %ecx, %ecx                     #  1660  0x6d4a8  2      
  movl %eax, (%r15,%rcx,1)            #  1661  0x6d4aa  4      
  nop                                 #  1662  0x6d4ae  1      
.L_6dee0:                             #        0x6d4af  0      
  movl %edx, %edx                     #  1663  0x6d4af  2      
  movl (%r15,%rdx,1), %ecx            #  1664  0x6d4b1  4      
  movl $0x1, %eax                     #  1665  0x6d4b5  5      
  testq %rcx, %rcx                    #  1666  0x6d4ba  3      
  setne %sil                          #  1667  0x6d4bd  4      
  jmpq .L_6c820                       #  1668  0x6d4c1  5      
  nop                                 #  1669  0x6d4c6  1      
.L_6df00:                             #        0x6d4c7  0      
  testb $0x10, %r13b                  #  1670  0x6d4c7  4      
  je .L_6f140                         #  1671  0x6d4cb  6      
  movq 0xe0(%rsp), %rdx               #  1672  0x6d4d1  8      
  movl %edx, %edx                     #  1673  0x6d4d9  2      
  movl (%r15,%rdx,1), %eax            #  1674  0x6d4db  4      
  cmpl $0x2f, %eax                    #  1675  0x6d4df  3      
  nop                                 #  1676  0x6d4e2  1      
  ja .L_6f980                         #  1677  0x6d4e3  6      
  movq %rdx, %rcx                     #  1678  0x6d4e9  3      
  movl %edx, %edx                     #  1679  0x6d4ec  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1680  0x6d4ee  5      
  addl %eax, %edx                     #  1681  0x6d4f3  2      
  addl $0x8, %eax                     #  1682  0x6d4f5  3      
  movl %ecx, %ecx                     #  1683  0x6d4f8  2      
  movl %eax, (%r15,%rcx,1)            #  1684  0x6d4fa  4      
  nop                                 #  1685  0x6d4fe  1      
.L_6df40:                             #        0x6d4ff  0      
  movl %edx, %edx                     #  1686  0x6d4ff  2      
  movl (%r15,%rdx,1), %ecx            #  1687  0x6d501  4      
  jmpq .L_6cee0                       #  1688  0x6d505  5      
  nop                                 #  1689  0x6d50a  1      
  nop                                 #  1690  0x6d50b  1      
.L_6df60:                             #        0x6d50c  0      
  movq %r13, %r12                     #  1691  0x6d50c  3      
  movl 0xb0(%rsp), %r13d              #  1692  0x6d50f  8      
  movl %ebx, %ecx                     #  1693  0x6d517  2      
  movq %rax, %rbx                     #  1694  0x6d519  3      
  nop                                 #  1695  0x6d51c  1      
  nop                                 #  1696  0x6d51d  1      
.L_6df80:                             #        0x6d51e  0      
  movl %ebx, %ebx                     #  1697  0x6d51e  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1698  0x6d520  5      
  movl %ebx, %ebx                     #  1699  0x6d525  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1700  0x6d527  8      
  addl %ecx, 0x228(%rsp)              #  1701  0x6d52f  7      
  jmpq .L_6c260                       #  1702  0x6d536  5      
  nop                                 #  1703  0x6d53b  1      
.L_6dfa0:                             #        0x6d53c  0      
  movl 0xc8(%rsp), %esi               #  1704  0x6d53c  7      
  leal 0x220(%rsp), %edx              #  1705  0x6d543  7      
  movl %r14d, %edi                    #  1706  0x6d54a  3      
  nop                                 #  1707  0x6d54d  1      
  callq .__ssprint_r                  #  1708  0x6d54e  5      
  testl %eax, %eax                    #  1709  0x6d553  2      
  jne .L_6d2a0                        #  1710  0x6d555  6      
  leal 0x1e0(%rsp), %ebx              #  1711  0x6d55b  7      
  xchgw %ax, %ax                      #  1712  0x6d562  3      
  nop                                 #  1713  0x6d565  1      
.L_6dfe0:                             #        0x6d566  0      
  movl 0x11c(%rsp), %edx              #  1714  0x6d566  7      
  addl 0xb0(%rsp), %edx               #  1715  0x6d56d  7      
  testl $0x400, %r13d                 #  1716  0x6d574  7      
  movq %rdx, 0xb0(%rsp)               #  1717  0x6d57b  8      
  nop                                 #  1718  0x6d583  1      
  je .L_6e300                         #  1719  0x6d584  6      
  movl 0x12c(%rsp), %esi              #  1720  0x6d58a  7      
  testl %esi, %esi                    #  1721  0x6d591  2      
  jle .L_70b80                        #  1722  0x6d593  6      
  nop                                 #  1723  0x6d599  1      
.L_6e020:                             #        0x6d59a  0      
  leal 0x220(%rsp), %ecx              #  1724  0x6d59a  7      
  movl %r13d, 0xfc(%rsp)              #  1725  0x6d5a1  8      
  movq %r12, %r13                     #  1726  0x6d5a9  3      
  movq 0xc8(%rsp), %r12               #  1727  0x6d5ac  8      
  movq %rbx, %rax                     #  1728  0x6d5b4  3      
  nop                                 #  1729  0x6d5b7  1      
  movq %rcx, 0x20(%rsp)               #  1730  0x6d5b8  5      
  nop                                 #  1731  0x6d5bd  1      
  nop                                 #  1732  0x6d5be  1      
.L_6e060:                             #        0x6d5bf  0      
  movl 0x114(%rsp), %ebx              #  1733  0x6d5bf  7      
  testl %ebx, %ebx                    #  1734  0x6d5c6  2      
  je .L_6eb00                         #  1735  0x6d5c8  6      
  subl $0x1, 0x114(%rsp)              #  1736  0x6d5ce  8      
  nop                                 #  1737  0x6d5d6  1      
.L_6e080:                             #        0x6d5d7  0      
  movl 0x140(%rsp), %edx              #  1738  0x6d5d7  7      
  movl 0x150(%rsp), %esi              #  1739  0x6d5de  7      
  movl %eax, %eax                     #  1740  0x6d5e5  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1741  0x6d5e7  5      
  addl %edx, 0x228(%rsp)              #  1742  0x6d5ec  7      
  nop                                 #  1743  0x6d5f3  1      
  movl 0x224(%rsp), %edx              #  1744  0x6d5f4  7      
  movl %eax, %eax                     #  1745  0x6d5fb  2      
  movl %esi, (%r15,%rax,1)            #  1746  0x6d5fd  4      
  addl $0x1, %edx                     #  1747  0x6d601  3      
  cmpl $0x7, %edx                     #  1748  0x6d604  3      
  movl %edx, 0x224(%rsp)              #  1749  0x6d607  7      
  jg .L_6ea00                         #  1750  0x6d60e  6      
  addl $0x8, %eax                     #  1751  0x6d614  3      
  nop                                 #  1752  0x6d617  1      
  nop                                 #  1753  0x6d618  1      
.L_6e0e0:                             #        0x6d619  0      
  movq 0xf0(%rsp), %rbx               #  1754  0x6d619  8      
  movl 0xc4(%rsp), %ecx               #  1755  0x6d621  7      
  subl 0xb0(%rsp), %ecx               #  1756  0x6d628  7      
  movl %ebx, %ebx                     #  1757  0x6d62f  2      
  movsbl (%r15,%rbx,1), %edx          #  1758  0x6d631  5      
  cmpl %ecx, %edx                     #  1759  0x6d636  2      
  nop                                 #  1760  0x6d638  1      
  cmovlel %edx, %ecx                  #  1761  0x6d639  3      
  testl %ecx, %ecx                    #  1762  0x6d63c  2      
  jle .L_6e160                        #  1763  0x6d63e  6      
  movl %eax, %eax                     #  1764  0x6d644  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1765  0x6d646  5      
  movl 0x224(%rsp), %edx              #  1766  0x6d64b  7      
  movl 0xb0(%rsp), %esi               #  1767  0x6d652  7      
  nop                                 #  1768  0x6d659  1      
  addl %ecx, 0x228(%rsp)              #  1769  0x6d65a  7      
  addl $0x1, %edx                     #  1770  0x6d661  3      
  cmpl $0x7, %edx                     #  1771  0x6d664  3      
  movl %eax, %eax                     #  1772  0x6d667  2      
  movl %esi, (%r15,%rax,1)            #  1773  0x6d669  4      
  movl %edx, 0x224(%rsp)              #  1774  0x6d66d  7      
  jg .L_6f640                         #  1775  0x6d674  6      
  movl %ebx, %ebx                     #  1776  0x6d67a  2      
  movsbl (%r15,%rbx,1), %edx          #  1777  0x6d67c  5      
  addl $0x8, %eax                     #  1778  0x6d681  3      
  nop                                 #  1779  0x6d684  1      
  nop                                 #  1780  0x6d685  1      
.L_6e160:                             #        0x6d686  0      
  testl %ecx, %ecx                    #  1781  0x6d686  2      
  movl $0x0, %ebx                     #  1782  0x6d688  5      
  cmovsl %ebx, %ecx                   #  1783  0x6d68d  3      
  movl %edx, %ebx                     #  1784  0x6d690  2      
  subl %ecx, %ebx                     #  1785  0x6d692  2      
  testl %ebx, %ebx                    #  1786  0x6d694  2      
  jg .L_6e1c0                         #  1787  0x6d696  6      
  jmpq .L_6e280                       #  1788  0x6d69c  5      
  nop                                 #  1789  0x6d6a1  1      
.L_6e180:                             #        0x6d6a2  0      
  addl $0x8, %eax                     #  1790  0x6d6a2  3      
  nop                                 #  1791  0x6d6a5  1      
  nop                                 #  1792  0x6d6a6  1      
.L_6e1a0:                             #        0x6d6a7  0      
  subl $0x10, %ebx                    #  1793  0x6d6a7  3      
  nop                                 #  1794  0x6d6aa  1      
  nop                                 #  1795  0x6d6ab  1      
.L_6e1c0:                             #        0x6d6ac  0      
  cmpl $0x10, %ebx                    #  1796  0x6d6ac  3      
  jle .L_6e520                        #  1797  0x6d6af  6      
  movl %eax, %eax                     #  1798  0x6d6b5  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1799  0x6d6b7  9      
  movl 0x224(%rsp), %edx              #  1800  0x6d6c0  7      
  nop                                 #  1801  0x6d6c7  1      
  addl $0x10, 0x228(%rsp)             #  1802  0x6d6c8  8      
  movl %eax, %eax                     #  1803  0x6d6d0  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1804  0x6d6d2  8      
  addl $0x1, %edx                     #  1805  0x6d6da  3      
  cmpl $0x7, %edx                     #  1806  0x6d6dd  3      
  movl %edx, 0x224(%rsp)              #  1807  0x6d6e0  7      
  nop                                 #  1808  0x6d6e7  1      
  jle .L_6e180                        #  1809  0x6d6e8  6      
  movl 0x20(%rsp), %edx               #  1810  0x6d6ee  4      
  movl %r12d, %esi                    #  1811  0x6d6f2  3      
  movl %r14d, %edi                    #  1812  0x6d6f5  3      
  nop                                 #  1813  0x6d6f8  1      
  callq .__ssprint_r                  #  1814  0x6d6f9  5      
  testl %eax, %eax                    #  1815  0x6d6fe  2      
  jne .L_6d2a0                        #  1816  0x6d700  6      
  leal 0x1e0(%rsp), %eax              #  1817  0x6d706  7      
  jmpq .L_6e1a0                       #  1818  0x6d70d  5      
  nop                                 #  1819  0x6d712  1      
.L_6e240:                             #        0x6d713  0      
  movl 0x20(%rsp), %edx               #  1820  0x6d713  4      
  movl %r12d, %esi                    #  1821  0x6d717  3      
  movl %r14d, %edi                    #  1822  0x6d71a  3      
  xchgw %ax, %ax                      #  1823  0x6d71d  3      
  nop                                 #  1824  0x6d720  1      
  callq .__ssprint_r                  #  1825  0x6d721  5      
  testl %eax, %eax                    #  1826  0x6d726  2      
  jne .L_6d2a0                        #  1827  0x6d728  6      
  movq 0xf0(%rsp), %rcx               #  1828  0x6d72e  8      
  leal 0x1e0(%rsp), %eax              #  1829  0x6d736  7      
  movl %ecx, %ecx                     #  1830  0x6d73d  2      
  movsbl (%r15,%rcx,1), %edx          #  1831  0x6d73f  5      
  xchgw %ax, %ax                      #  1832  0x6d744  3      
.L_6e280:                             #        0x6d747  0      
  addl 0xb0(%rsp), %edx               #  1833  0x6d747  7      
  movl 0x114(%rsp), %ecx              #  1834  0x6d74e  7      
  testl %ecx, %ecx                    #  1835  0x6d755  2      
  movq %rdx, 0xb0(%rsp)               #  1836  0x6d757  8      
  jg .L_6e060                         #  1837  0x6d75f  6      
  xchgw %ax, %ax                      #  1838  0x6d765  3      
  movl 0x12c(%rsp), %edx              #  1839  0x6d768  7      
  testl %edx, %edx                    #  1840  0x6d76f  2      
  jg .L_6e060                         #  1841  0x6d771  6      
  movq %r13, %r12                     #  1842  0x6d777  3      
  movl 0xfc(%rsp), %r13d              #  1843  0x6d77a  8      
  movq %rax, %rbx                     #  1844  0x6d782  3      
  nop                                 #  1845  0x6d785  1      
.L_6e2c0:                             #        0x6d786  0      
  movl 0xb0(%rsp), %esi               #  1846  0x6d786  7      
  cmpl %esi, 0xd8(%rsp)               #  1847  0x6d78d  7      
  movq 0xd8(%rsp), %rax               #  1848  0x6d794  8      
  cmovaeq 0xb0(%rsp), %rax            #  1849  0x6d79c  9      
  nop                                 #  1850  0x6d7a5  1      
  movq %rax, 0xb0(%rsp)               #  1851  0x6d7a6  8      
  nop                                 #  1852  0x6d7ae  1      
  nop                                 #  1853  0x6d7af  1      
.L_6e300:                             #        0x6d7b0  0      
  movl 0x28c(%rsp), %ecx              #  1854  0x6d7b0  7      
  cmpl 0x118(%rsp), %ecx              #  1855  0x6d7b7  7      
  jge .L_6fc60                        #  1856  0x6d7be  6      
  nop                                 #  1857  0x6d7c4  1      
.L_6e320:                             #        0x6d7c5  0      
  movl 0x13c(%rsp), %ecx              #  1858  0x6d7c5  7      
  movl 0x120(%rsp), %edx              #  1859  0x6d7cc  7      
  movl %ebx, %ebx                     #  1860  0x6d7d3  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1861  0x6d7d5  5      
  movl 0x224(%rsp), %eax              #  1862  0x6d7da  7      
  nop                                 #  1863  0x6d7e1  1      
  addl %ecx, 0x228(%rsp)              #  1864  0x6d7e2  7      
  movl %ebx, %ebx                     #  1865  0x6d7e9  2      
  movl %edx, (%r15,%rbx,1)            #  1866  0x6d7eb  4      
  addl $0x1, %eax                     #  1867  0x6d7ef  3      
  cmpl $0x7, %eax                     #  1868  0x6d7f2  3      
  movl %eax, 0x224(%rsp)              #  1869  0x6d7f5  7      
  jg .L_6fd40                         #  1870  0x6d7fc  6      
  movl 0x28c(%rsp), %ecx              #  1871  0x6d802  7      
  addl $0x8, %ebx                     #  1872  0x6d809  3      
  nop                                 #  1873  0x6d80c  1      
  nop                                 #  1874  0x6d80d  1      
.L_6e380:                             #        0x6d80e  0      
  movl 0xc4(%rsp), %r8d               #  1875  0x6d80e  8      
  movl 0x118(%rsp), %esi              #  1876  0x6d816  7      
  subl 0xb0(%rsp), %r8d               #  1877  0x6d81d  8      
  subl %ecx, %esi                     #  1878  0x6d825  2      
  movl %esi, %ecx                     #  1879  0x6d827  2      
  cmpl %r8d, %esi                     #  1880  0x6d829  3      
  xchgw %ax, %ax                      #  1881  0x6d82c  3      
  cmovlel %esi, %r8d                  #  1882  0x6d82f  4      
  testl %r8d, %r8d                    #  1883  0x6d833  3      
  jle .L_6e400                        #  1884  0x6d836  6      
  movl 0xb0(%rsp), %eax               #  1885  0x6d83c  7      
  movl %ebx, %ebx                     #  1886  0x6d843  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1887  0x6d845  5      
  addl %r8d, 0x228(%rsp)              #  1888  0x6d84a  8      
  nop                                 #  1889  0x6d852  1      
  movl %ebx, %ebx                     #  1890  0x6d853  2      
  movl %eax, (%r15,%rbx,1)            #  1891  0x6d855  4      
  movl 0x224(%rsp), %eax              #  1892  0x6d859  7      
  addl $0x1, %eax                     #  1893  0x6d860  3      
  cmpl $0x7, %eax                     #  1894  0x6d863  3      
  movl %eax, 0x224(%rsp)              #  1895  0x6d866  7      
  jg .L_70640                         #  1896  0x6d86d  6      
  movl 0x118(%rsp), %ecx              #  1897  0x6d873  7      
  subl 0x28c(%rsp), %ecx              #  1898  0x6d87a  7      
  addl $0x8, %ebx                     #  1899  0x6d881  3      
  nop                                 #  1900  0x6d884  1      
.L_6e400:                             #        0x6d885  0      
  xorl %eax, %eax                     #  1901  0x6d885  2      
  testl %r8d, %r8d                    #  1902  0x6d887  3      
  cmovnsl %r8d, %eax                  #  1903  0x6d88a  4      
  subl %eax, %ecx                     #  1904  0x6d88e  2      
  testl %ecx, %ecx                    #  1905  0x6d890  2      
  jle .L_6c280                        #  1906  0x6d892  6      
  cmpl $0x10, %ecx                    #  1907  0x6d898  3      
  jle .L_6df80                        #  1908  0x6d89b  6      
  nop                                 #  1909  0x6d8a1  1      
  leal 0x220(%rsp), %edx              #  1910  0x6d8a2  7      
  movq %rbx, %rax                     #  1911  0x6d8a9  3      
  movl %r13d, 0xb0(%rsp)              #  1912  0x6d8ac  8      
  movl %ecx, %ebx                     #  1913  0x6d8b4  2      
  movq %r12, %r13                     #  1914  0x6d8b6  3      
  movq 0xc8(%rsp), %r12               #  1915  0x6d8b9  8      
  nop                                 #  1916  0x6d8c1  1      
  movq %rdx, 0x18(%rsp)               #  1917  0x6d8c2  5      
  jmpq .L_6e4a0                       #  1918  0x6d8c7  5      
  nop                                 #  1919  0x6d8cc  1      
  nop                                 #  1920  0x6d8cd  1      
.L_6e460:                             #        0x6d8ce  0      
  addl $0x8, %eax                     #  1921  0x6d8ce  3      
  nop                                 #  1922  0x6d8d1  1      
  nop                                 #  1923  0x6d8d2  1      
.L_6e480:                             #        0x6d8d3  0      
  subl $0x10, %ebx                    #  1924  0x6d8d3  3      
  cmpl $0x10, %ebx                    #  1925  0x6d8d6  3      
  jle .L_6df60                        #  1926  0x6d8d9  6      
  nop                                 #  1927  0x6d8df  1      
  nop                                 #  1928  0x6d8e0  1      
.L_6e4a0:                             #        0x6d8e1  0      
  movl %eax, %eax                     #  1929  0x6d8e1  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1930  0x6d8e3  9      
  movl 0x224(%rsp), %edx              #  1931  0x6d8ec  7      
  addl $0x10, 0x228(%rsp)             #  1932  0x6d8f3  8      
  nop                                 #  1933  0x6d8fb  1      
  movl %eax, %eax                     #  1934  0x6d8fc  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1935  0x6d8fe  8      
  addl $0x1, %edx                     #  1936  0x6d906  3      
  cmpl $0x7, %edx                     #  1937  0x6d909  3      
  movl %edx, 0x224(%rsp)              #  1938  0x6d90c  7      
  jle .L_6e460                        #  1939  0x6d913  6      
  movl 0x18(%rsp), %edx               #  1940  0x6d919  4      
  movl %r12d, %esi                    #  1941  0x6d91d  3      
  movl %r14d, %edi                    #  1942  0x6d920  3      
  nop                                 #  1943  0x6d923  1      
  nop                                 #  1944  0x6d924  1      
  callq .__ssprint_r                  #  1945  0x6d925  5      
  testl %eax, %eax                    #  1946  0x6d92a  2      
  jne .L_6d2a0                        #  1947  0x6d92c  6      
  leal 0x1e0(%rsp), %eax              #  1948  0x6d932  7      
  jmpq .L_6e480                       #  1949  0x6d939  5      
  nop                                 #  1950  0x6d93e  1      
.L_6e520:                             #        0x6d93f  0      
  movl %eax, %eax                     #  1951  0x6d93f  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  1952  0x6d941  5      
  movl 0x224(%rsp), %edx              #  1953  0x6d946  7      
  addl %ebx, 0x228(%rsp)              #  1954  0x6d94d  7      
  movl %eax, %eax                     #  1955  0x6d954  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1956  0x6d956  8      
  nop                                 #  1957  0x6d95e  1      
  addl $0x1, %edx                     #  1958  0x6d95f  3      
  cmpl $0x7, %edx                     #  1959  0x6d962  3      
  movl %edx, 0x224(%rsp)              #  1960  0x6d965  7      
  jg .L_6e240                         #  1961  0x6d96c  6      
  movq 0xf0(%rsp), %rsi               #  1962  0x6d972  8      
  addl $0x8, %eax                     #  1963  0x6d97a  3      
  xchgw %ax, %ax                      #  1964  0x6d97d  3      
  movl %esi, %esi                     #  1965  0x6d980  2      
  movsbl (%r15,%rsi,1), %edx          #  1966  0x6d982  5      
  jmpq .L_6e280                       #  1967  0x6d987  5      
  nop                                 #  1968  0x6d98c  1      
  nop                                 #  1969  0x6d98d  1      
.L_6e580:                             #        0x6d98e  0      
  testb $0x1, %r13b                   #  1970  0x6d98e  4      
  jne .L_6d760                        #  1971  0x6d992  6      
  movl 0xb0(%rsp), %eax               #  1972  0x6d998  7      
  movl %ebx, %ebx                     #  1973  0x6d99f  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1974  0x6d9a1  9      
  nop                                 #  1975  0x6d9aa  1      
  addl $0x1, 0x228(%rsp)              #  1976  0x6d9ab  8      
  movl %ebx, %ebx                     #  1977  0x6d9b3  2      
  movl %eax, (%r15,%rbx,1)            #  1978  0x6d9b5  4      
  movl 0x224(%rsp), %eax              #  1979  0x6d9b9  7      
  addl $0x1, %eax                     #  1980  0x6d9c0  3      
  cmpl $0x7, %eax                     #  1981  0x6d9c3  3      
  nop                                 #  1982  0x6d9c6  1      
  movl %eax, 0x224(%rsp)              #  1983  0x6d9c7  7      
  jg .L_6e5e0                         #  1984  0x6d9ce  6      
  leal 0x8(%rbx), %eax                #  1985  0x6d9d4  3      
  jmpq .L_6d8a0                       #  1986  0x6d9d7  5      
  nop                                 #  1987  0x6d9dc  1      
.L_6e5e0:                             #        0x6d9dd  0      
  movl 0xc8(%rsp), %esi               #  1988  0x6d9dd  7      
  leal 0x220(%rsp), %edx              #  1989  0x6d9e4  7      
  movl %r14d, %edi                    #  1990  0x6d9eb  3      
  nop                                 #  1991  0x6d9ee  1      
  callq .__ssprint_r                  #  1992  0x6d9ef  5      
  testl %eax, %eax                    #  1993  0x6d9f4  2      
  jne .L_6d2a0                        #  1994  0x6d9f6  6      
  leal 0x1e0(%rsp), %eax              #  1995  0x6d9fc  7      
  jmpq .L_6d8a0                       #  1996  0x6da03  5      
  nop                                 #  1997  0x6da08  1      
.L_6e620:                             #        0x6da09  0      
  movl 0xc8(%rsp), %esi               #  1998  0x6da09  7      
  leal 0x220(%rsp), %edx              #  1999  0x6da10  7      
  movl %r14d, %edi                    #  2000  0x6da17  3      
  nop                                 #  2001  0x6da1a  1      
  callq .__ssprint_r                  #  2002  0x6da1b  5      
  testl %eax, %eax                    #  2003  0x6da20  2      
  jne .L_6d2a0                        #  2004  0x6da22  6      
  leal 0x1e0(%rsp), %eax              #  2005  0x6da28  7      
  jmpq .L_6d820                       #  2006  0x6da2f  5      
  nop                                 #  2007  0x6da34  1      
.L_6e660:                             #        0x6da35  0      
  movl 0xc8(%rsp), %esi               #  2008  0x6da35  7      
  leal 0x220(%rsp), %edx              #  2009  0x6da3c  7      
  movl %r14d, %edi                    #  2010  0x6da43  3      
  nop                                 #  2011  0x6da46  1      
  callq .__ssprint_r                  #  2012  0x6da47  5      
  testl %eax, %eax                    #  2013  0x6da4c  2      
  jne .L_6d2a0                        #  2014  0x6da4e  6      
  leal 0x1e0(%rsp), %eax              #  2015  0x6da54  7      
  jmpq .L_6d7c0                       #  2016  0x6da5b  5      
  nop                                 #  2017  0x6da60  1      
.L_6e6a0:                             #        0x6da61  0      
  leal 0x250(%rsp), %ecx              #  2018  0x6da61  7      
  movl $0x8, %edx                     #  2019  0x6da68  5      
  xorl %esi, %esi                     #  2020  0x6da6d  2      
  movl %ecx, %edi                     #  2021  0x6da6f  2      
  movq %rcx, 0x98(%rsp)               #  2022  0x6da71  8      
  nop                                 #  2023  0x6da79  1      
  callq .memset                       #  2024  0x6da7a  5      
  movq 0xe0(%rsp), %rax               #  2025  0x6da7f  8      
  movq 0x98(%rsp), %rcx               #  2026  0x6da87  8      
  movl %eax, %eax                     #  2027  0x6da8f  2      
  movl (%r15,%rax,1), %edx            #  2028  0x6da91  4      
  cmpl $0x2f, %edx                    #  2029  0x6da95  3      
  ja .L_6f8c0                         #  2030  0x6da98  6      
  nop                                 #  2031  0x6da9e  1      
  movq %rax, %rsi                     #  2032  0x6da9f  3      
  movl %eax, %eax                     #  2033  0x6daa2  2      
  movl 0xc(%r15,%rax,1), %eax         #  2034  0x6daa4  5      
  addl %edx, %eax                     #  2035  0x6daa9  2      
  addl $0x8, %edx                     #  2036  0x6daab  3      
  movl %esi, %esi                     #  2037  0x6daae  2      
  movl %edx, (%r15,%rsi,1)            #  2038  0x6dab0  4      
  nop                                 #  2039  0x6dab4  1      
.L_6e700:                             #        0x6dab5  0      
  movl %eax, %eax                     #  2040  0x6dab5  2      
  movl (%r15,%rax,1), %edx            #  2041  0x6dab7  4      
  movl 0x68(%rsp), %esi               #  2042  0x6dabb  4      
  movl %r14d, %edi                    #  2043  0x6dabf  3      
  nop                                 #  2044  0x6dac2  1      
  callq ._wcrtomb_r                   #  2045  0x6dac3  5      
  cmpl $0xffffffff, %eax              #  2046  0x6dac8  5      
  movl %eax, 0xc4(%rsp)               #  2047  0x6dacd  7      
  je .L_71040                         #  2048  0x6dad4  6      
  nop                                 #  2049  0x6dada  1      
  nop                                 #  2050  0x6dadb  1      
.L_6e740:                             #        0x6dadc  0      
  movl 0xc4(%rsp), %edx               #  2051  0x6dadc  7      
  movl $0x0, %eax                     #  2052  0x6dae3  5      
  movb $0x0, 0x29f(%rsp)              #  2053  0x6dae8  8      
  movq $0x0, 0xe8(%rsp)               #  2054  0x6daf0  12     
  movl $0x0, 0x104(%rsp)              #  2055  0x6dafc  11     
  movl $0x0, 0x114(%rsp)              #  2056  0x6db07  11     
  nop                                 #  2057  0x6db12  1      
  movl $0x0, 0x12c(%rsp)              #  2058  0x6db13  11     
  testl %edx, %edx                    #  2059  0x6db1e  2      
  cmovnsl 0xc4(%rsp), %eax            #  2060  0x6db20  8      
  leal 0x170(%rsp), %edx              #  2061  0x6db28  7      
  nop                                 #  2062  0x6db2f  1      
  movl $0x0, 0x11c(%rsp)              #  2063  0x6db30  11     
  movq %rdx, 0xb0(%rsp)               #  2064  0x6db3b  8      
  movl %eax, 0xb8(%rsp)               #  2065  0x6db43  7      
  xorl %eax, %eax                     #  2066  0x6db4a  2      
  nop                                 #  2067  0x6db4c  1      
  jmpq .L_6be40                       #  2068  0x6db4d  5      
  nop                                 #  2069  0x6db52  1      
  nop                                 #  2070  0x6db53  1      
.L_6e7e0:                             #        0x6db54  0      
  movl 0x140(%rsp), %r11d             #  2071  0x6db54  8      
  movq 0x108(%rsp), %rax              #  2072  0x6db5c  8      
  movl %r13d, %r9d                    #  2073  0x6db64  3      
  movl %r10d, 0xb8(%rsp)              #  2074  0x6db67  8      
  nop                                 #  2075  0x6db6f  1      
  andl $0x400, %r9d                   #  2076  0x6db70  7      
  movq %rbx, %r10                     #  2077  0x6db77  3      
  movl $0x0, 0x118(%rsp)              #  2078  0x6db7a  11     
  movq $0xcccccccccccccccd, %r8       #  2079  0x6db85  10     
  nop                                 #  2080  0x6db8f  1      
  xorl %edi, %edi                     #  2081  0x6db90  2      
  negl %r11d                          #  2082  0x6db92  3      
  movq %rax, %rbx                     #  2083  0x6db95  3      
  movl %r11d, 0xb0(%rsp)              #  2084  0x6db98  8      
  movq %r12, %r11                     #  2085  0x6dba0  3      
  movq 0xf0(%rsp), %r12               #  2086  0x6dba3  8      
  jmpq .L_6e880                       #  2087  0x6dbab  5      
  nop                                 #  2088  0x6dbb0  1      
.L_6e840:                             #        0x6dbb1  0      
  movq %r12, %rsi                     #  2089  0x6dbb1  3      
  nop                                 #  2090  0x6dbb4  1      
  nop                                 #  2091  0x6dbb5  1      
.L_6e860:                             #        0x6dbb6  0      
  movq %rcx, %rax                     #  2092  0x6dbb6  3      
  mulq %r8                            #  2093  0x6dbb9  3      
  movq %rdx, %rcx                     #  2094  0x6dbbc  3      
  shrq $0x3, %rcx                     #  2095  0x6dbbf  4      
  testq %rcx, %rcx                    #  2096  0x6dbc3  3      
  je .L_6e9c0                         #  2097  0x6dbc6  6      
  movq %rsi, %r12                     #  2098  0x6dbcc  3      
  nop                                 #  2099  0x6dbcf  1      
.L_6e880:                             #        0x6dbd0  0      
  movq %rcx, %rax                     #  2100  0x6dbd0  3      
  subl $0x1, %ebx                     #  2101  0x6dbd3  3      
  addl $0x1, %edi                     #  2102  0x6dbd6  3      
  mulq %r8                            #  2103  0x6dbd9  3      
  shrq $0x3, %rdx                     #  2104  0x6dbdc  4      
  leaq (%rdx,%rdx,4), %rax            #  2105  0x6dbe0  4      
  movq %rcx, %rdx                     #  2106  0x6dbe4  3      
  addq %rax, %rax                     #  2107  0x6dbe7  3      
  subq %rax, %rdx                     #  2108  0x6dbea  3      
  movq %rdx, %rax                     #  2109  0x6dbed  3      
  addl $0x30, %eax                    #  2110  0x6dbf0  3      
  testl %r9d, %r9d                    #  2111  0x6dbf3  3      
  movl %ebx, %ebx                     #  2112  0x6dbf6  2      
  movb %al, (%r15,%rbx,1)             #  2113  0x6dbf8  4      
  je .L_6e840                         #  2114  0x6dbfc  6      
  movl %r12d, %r12d                   #  2115  0x6dc02  3      
  movzbl (%r15,%r12,1), %eax          #  2116  0x6dc05  5      
  movsbl %al, %edx                    #  2117  0x6dc0a  3      
  cmpl %edx, %edi                     #  2118  0x6dc0d  2      
  nop                                 #  2119  0x6dc0f  1      
  jne .L_6e840                        #  2120  0x6dc10  6      
  cmpb $0x7f, %al                     #  2121  0x6dc16  2      
  je .L_6e840                         #  2122  0x6dc18  6      
  cmpq $0x9, %rcx                     #  2123  0x6dc1e  4      
  jbe .L_6e840                        #  2124  0x6dc22  6      
  addl 0xb0(%rsp), %ebx               #  2125  0x6dc28  7      
  nop                                 #  2126  0x6dc2f  1      
  movl 0x150(%rsp), %esi              #  2127  0x6dc30  7      
  movl 0x140(%rsp), %edx              #  2128  0x6dc37  7      
  movq %rcx, 0x98(%rsp)               #  2129  0x6dc3e  8      
  movq %r8, 0x88(%rsp)                #  2130  0x6dc46  8      
  xchgw %ax, %ax                      #  2131  0x6dc4e  3      
  movl %r9d, 0xa8(%rsp)               #  2132  0x6dc51  8      
  movq %r10, 0x90(%rsp)               #  2133  0x6dc59  8      
  movq %r11, 0xa0(%rsp)               #  2134  0x6dc61  8      
  movl %ebx, %edi                     #  2135  0x6dc69  2      
  nop                                 #  2136  0x6dc6b  1      
  callq .strncpy                      #  2137  0x6dc6c  5      
  leal 0x1(%r12), %esi                #  2138  0x6dc71  5      
  xorl %edi, %edi                     #  2139  0x6dc76  2      
  movq 0x98(%rsp), %rcx               #  2140  0x6dc78  8      
  movq 0x88(%rsp), %r8                #  2141  0x6dc80  8      
  movl 0xa8(%rsp), %r9d               #  2142  0x6dc88  8      
  nop                                 #  2143  0x6dc90  1      
  movl %esi, %esi                     #  2144  0x6dc91  2      
  cmpb $0x0, (%r15,%rsi,1)            #  2145  0x6dc93  5      
  movq 0x90(%rsp), %r10               #  2146  0x6dc98  8      
  movq 0xa0(%rsp), %r11               #  2147  0x6dca0  8      
  jne .L_6e860                        #  2148  0x6dca8  6      
  nop                                 #  2149  0x6dcae  1      
  jmpq .L_6e840                       #  2150  0x6dcaf  5      
  nop                                 #  2151  0x6dcb4  1      
  nop                                 #  2152  0x6dcb5  1      
.L_6e980:                             #        0x6dcb6  0      
  movq %r13, %r12                     #  2153  0x6dcb6  3      
  movl 0xb0(%rsp), %r13d              #  2154  0x6dcb9  8      
  nop                                 #  2155  0x6dcc1  1      
  nop                                 #  2156  0x6dcc2  1      
.L_6e9a0:                             #        0x6dcc3  0      
  movl %eax, %eax                     #  2157  0x6dcc3  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  2158  0x6dcc5  5      
  movl %eax, %eax                     #  2159  0x6dcca  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2160  0x6dccc  8      
  addl %ebx, 0x228(%rsp)              #  2161  0x6dcd4  7      
  jmpq .L_6d880                       #  2162  0x6dcdb  5      
  nop                                 #  2163  0x6dce0  1      
.L_6e9c0:                             #        0x6dce1  0      
  movq %rbx, 0xb0(%rsp)               #  2164  0x6dce1  8      
  movl 0x108(%rsp), %ecx              #  2165  0x6dce9  7      
  movq %r10, %rbx                     #  2166  0x6dcf0  3      
  subl 0xb0(%rsp), %ecx               #  2167  0x6dcf3  7      
  movq %r11, %r12                     #  2168  0x6dcfa  3      
  nop                                 #  2169  0x6dcfd  1      
  movl %edi, 0x118(%rsp)              #  2170  0x6dcfe  7      
  movl 0xb8(%rsp), %r10d              #  2171  0x6dd05  8      
  movl %ecx, 0xc4(%rsp)               #  2172  0x6dd0d  7      
  jmpq .L_6c900                       #  2173  0x6dd14  5      
  nop                                 #  2174  0x6dd19  1      
.L_6ea00:                             #        0x6dd1a  0      
  movl 0x20(%rsp), %edx               #  2175  0x6dd1a  4      
  movl %r12d, %esi                    #  2176  0x6dd1e  3      
  movl %r14d, %edi                    #  2177  0x6dd21  3      
  xchgw %ax, %ax                      #  2178  0x6dd24  3      
  nop                                 #  2179  0x6dd27  1      
  callq .__ssprint_r                  #  2180  0x6dd28  5      
  testl %eax, %eax                    #  2181  0x6dd2d  2      
  jne .L_6d2a0                        #  2182  0x6dd2f  6      
  leal 0x1e0(%rsp), %eax              #  2183  0x6dd35  7      
  jmpq .L_6e0e0                       #  2184  0x6dd3c  5      
  nop                                 #  2185  0x6dd41  1      
.L_6ea40:                             #        0x6dd42  0      
  movl 0xc8(%rsp), %esi               #  2186  0x6dd42  7      
  leal 0x220(%rsp), %edx              #  2187  0x6dd49  7      
  movl %r14d, %edi                    #  2188  0x6dd50  3      
  nop                                 #  2189  0x6dd53  1      
  callq .__ssprint_r                  #  2190  0x6dd54  5      
  testl %eax, %eax                    #  2191  0x6dd59  2      
  jne .L_6d2a0                        #  2192  0x6dd5b  6      
  leal 0x1e0(%rsp), %ebx              #  2193  0x6dd61  7      
  jmpq .L_6c0c0                       #  2194  0x6dd68  5      
  nop                                 #  2195  0x6dd6d  1      
.L_6ea80:                             #        0x6dd6e  0      
  cmpb $0x30, %al                     #  2196  0x6dd6e  2      
  je .L_6ff60                         #  2197  0x6dd70  6      
  movl 0xb0(%rsp), %eax               #  2198  0x6dd76  7      
  subl $0x1, %eax                     #  2199  0x6dd7d  3      
  movq %rax, 0xb0(%rsp)               #  2200  0x6dd80  8      
  nop                                 #  2201  0x6dd88  1      
  movl %eax, %eax                     #  2202  0x6dd89  2      
  movb $0x30, (%r15,%rax,1)           #  2203  0x6dd8b  5      
  movl 0x108(%rsp), %edx              #  2204  0x6dd90  7      
  movq 0xf0(%rsp), %rsi               #  2205  0x6dd97  8      
  subl %eax, %edx                     #  2206  0x6dd9f  2      
  movl %edx, 0xc4(%rsp)               #  2207  0x6dda1  7      
  nop                                 #  2208  0x6dda8  1      
  jmpq .L_6c900                       #  2209  0x6dda9  5      
  nop                                 #  2210  0x6ddae  1      
  nop                                 #  2211  0x6ddaf  1      
.L_6eae0:                             #        0x6ddb0  0      
  negq %rcx                           #  2212  0x6ddb0  3      
  movb $0x2d, 0x29f(%rsp)             #  2213  0x6ddb3  8      
  movl $0x1, %eax                     #  2214  0x6ddbb  5      
  setne %sil                          #  2215  0x6ddc0  4      
  jmpq .L_6c840                       #  2216  0x6ddc4  5      
  nop                                 #  2217  0x6ddc9  1      
.L_6eb00:                             #        0x6ddca  0      
  movl 0xf0(%rsp), %ebx               #  2218  0x6ddca  7      
  subl $0x1, 0x12c(%rsp)              #  2219  0x6ddd1  8      
  subl $0x1, %ebx                     #  2220  0x6ddd9  3      
  movq %rbx, 0xf0(%rsp)               #  2221  0x6dddc  8      
  jmpq .L_6e080                       #  2222  0x6dde4  5      
  nop                                 #  2223  0x6dde9  1      
.L_6eb20:                             #        0x6ddea  0      
  movq 0xe0(%rsp), %rsi               #  2224  0x6ddea  8      
  movl %esi, %esi                     #  2225  0x6ddf2  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2226  0x6ddf4  5      
  leal 0x8(%rdx), %eax                #  2227  0x6ddf9  3      
  movl %esi, %esi                     #  2228  0x6ddfc  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2229  0x6ddfe  5      
  jmpq .L_6ca00                       #  2230  0x6de03  5      
  xchgw %ax, %ax                      #  2231  0x6de08  3      
.L_6eb40:                             #        0x6de0b  0      
  movq 0xe0(%rsp), %rsi               #  2232  0x6de0b  8      
  movl %esi, %esi                     #  2233  0x6de13  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2234  0x6de15  5      
  leal 0x8(%rdx), %eax                #  2235  0x6de1a  3      
  movl %esi, %esi                     #  2236  0x6de1d  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2237  0x6de1f  5      
  jmpq .L_6cf40                       #  2238  0x6de24  5      
  xchgw %ax, %ax                      #  2239  0x6de29  3      
.L_6eb60:                             #        0x6de2c  0      
  testb $0x40, %r13b                  #  2240  0x6de2c  4      
  jne .L_6fa00                        #  2241  0x6de30  6      
  testl $0x200, %r13d                 #  2242  0x6de36  7      
  je .L_702c0                         #  2243  0x6de3d  6      
  movq 0xe0(%rsp), %rax               #  2244  0x6de43  8      
  nop                                 #  2245  0x6de4b  1      
  movl %eax, %eax                     #  2246  0x6de4c  2      
  movl (%r15,%rax,1), %edx            #  2247  0x6de4e  4      
  cmpl $0x2f, %edx                    #  2248  0x6de52  3      
  ja .L_70ae0                         #  2249  0x6de55  6      
  movq %rax, %rcx                     #  2250  0x6de5b  3      
  movl %eax, %eax                     #  2251  0x6de5e  2      
  movl 0xc(%r15,%rax,1), %eax         #  2252  0x6de60  5      
  addl %edx, %eax                     #  2253  0x6de65  2      
  addl $0x8, %edx                     #  2254  0x6de67  3      
  xchgw %ax, %ax                      #  2255  0x6de6a  3      
  movl %ecx, %ecx                     #  2256  0x6de6d  2      
  movl %edx, (%r15,%rcx,1)            #  2257  0x6de6f  4      
  nop                                 #  2258  0x6de73  1      
  nop                                 #  2259  0x6de74  1      
.L_6ebc0:                             #        0x6de75  0      
  movl %eax, %eax                     #  2260  0x6de75  2      
  movsbq (%r15,%rax,1), %rcx          #  2261  0x6de77  5      
  jmpq .L_6cd40                       #  2262  0x6de7c  5      
  nop                                 #  2263  0x6de81  1      
  nop                                 #  2264  0x6de82  1      
.L_6ebe0:                             #        0x6de83  0      
  movq 0xe0(%rsp), %rsi               #  2265  0x6de83  8      
  movl %esi, %esi                     #  2266  0x6de8b  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2267  0x6de8d  5      
  leal 0x8(%rdx), %eax                #  2268  0x6de92  3      
  movl %esi, %esi                     #  2269  0x6de95  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2270  0x6de97  5      
  jmpq .L_6cd20                       #  2271  0x6de9c  5      
  xchgw %ax, %ax                      #  2272  0x6dea1  3      
.L_6ec00:                             #        0x6dea4  0      
  movsd 0x130(%rsp), %xmm0            #  2273  0x6dea4  9      
  movl %r10d, 0x90(%rsp)              #  2274  0x6dead  8      
  nop                                 #  2275  0x6deb5  1      
  callq .__fpclassifyd                #  2276  0x6deb6  5      
  testl %eax, %eax                    #  2277  0x6debb  2      
  movl 0x90(%rsp), %r10d              #  2278  0x6debd  8      
  je .L_6f940                         #  2279  0x6dec5  6      
  cmpl $0x61, 0x100(%rsp)             #  2280  0x6decb  8      
  sete 0xc4(%rsp)                     #  2281  0x6ded3  8      
  cmpl $0x41, 0x100(%rsp)             #  2282  0x6dedb  8      
  sete %al                            #  2283  0x6dee3  3      
  orb 0xc4(%rsp), %al                 #  2284  0x6dee6  7      
  movb %al, 0xfc(%rsp)                #  2285  0x6deed  7      
  je .L_70280                         #  2286  0x6def4  6      
  nop                                 #  2287  0x6defa  1      
  cmpb $0x1, 0xc4(%rsp)               #  2288  0x6defb  8      
  movb $0x30, 0x290(%rsp)             #  2289  0x6df03  8      
  sbbl %eax, %eax                     #  2290  0x6df0b  2      
  orl $0x2, %r13d                     #  2291  0x6df0d  4      
  andl $0xffffffe0, %eax              #  2292  0x6df11  5      
  addl $0x78, %eax                    #  2293  0x6df16  3      
  cmpl $0x63, %r10d                   #  2294  0x6df19  4      
  movb %al, 0x291(%rsp)               #  2295  0x6df1d  7      
  jg .L_70e00                         #  2296  0x6df24  6      
  cmpl $0x67, 0x100(%rsp)             #  2297  0x6df2a  8      
  nop                                 #  2298  0x6df32  1      
  movq $0x0, 0xe8(%rsp)               #  2299  0x6df33  12     
  sete %r11b                          #  2300  0x6df3f  4      
  cmpl $0x47, 0x100(%rsp)             #  2301  0x6df43  8      
  sete %al                            #  2302  0x6df4b  3      
  orl %eax, %r11d                     #  2303  0x6df4e  3      
  xchgw %ax, %ax                      #  2304  0x6df51  3      
  leal 0x170(%rsp), %eax              #  2305  0x6df54  7      
  movq %rax, 0xb0(%rsp)               #  2306  0x6df5b  8      
  xchgw %ax, %ax                      #  2307  0x6df63  3      
  nop                                 #  2308  0x6df66  1      
.L_6ece0:                             #        0x6df67  0      
  movsd 0x130(%rsp), %xmm0            #  2309  0x6df67  9      
  orl $0x100, %r13d                   #  2310  0x6df70  7      
  movb $0x0, 0xd8(%rsp)               #  2311  0x6df77  8      
  nop                                 #  2312  0x6df7f  1      
  movsd %xmm0, 0x230(%rsp)            #  2313  0x6df80  9      
  movl 0x234(%rsp), %eax              #  2314  0x6df89  7      
  testl %eax, %eax                    #  2315  0x6df90  2      
  js .L_70a20                         #  2316  0x6df92  6      
  nop                                 #  2317  0x6df98  1      
.L_6ed20:                             #        0x6df99  0      
  cmpb $0x0, 0xfc(%rsp)               #  2318  0x6df99  8      
  jne .L_70880                        #  2319  0x6dfa1  6      
  cmpl $0x46, 0x100(%rsp)             #  2320  0x6dfa7  8      
  sete %al                            #  2321  0x6dfaf  3      
  nop                                 #  2322  0x6dfb2  1      
  cmpl $0x66, 0x100(%rsp)             #  2323  0x6dfb3  8      
  sete %dl                            #  2324  0x6dfbb  3      
  orb %dl, %al                        #  2325  0x6dfbe  2      
  movb %al, 0xfc(%rsp)                #  2326  0x6dfc0  7      
  je .L_706c0                         #  2327  0x6dfc7  6      
  nop                                 #  2328  0x6dfcd  1      
  movl %r10d, 0xc4(%rsp)              #  2329  0x6dfce  8      
  movl $0x3, %esi                     #  2330  0x6dfd6  5      
  nop                                 #  2331  0x6dfdb  1      
  nop                                 #  2332  0x6dfdc  1      
.L_6ed80:                             #        0x6dfdd  0      
  movl 0xc4(%rsp), %edx               #  2333  0x6dfdd  7      
  leal 0x28c(%rsp), %ecx              #  2334  0x6dfe4  7      
  movl %esp, %r9d                     #  2335  0x6dfeb  3      
  movl %esp, %r8d                     #  2336  0x6dfee  3      
  movsd 0xb8(%rsp), %xmm0             #  2337  0x6dff1  9      
  nop                                 #  2338  0x6dffa  1      
  addl $0x27c, %r9d                   #  2339  0x6dffb  7      
  addl $0x280, %r8d                   #  2340  0x6e002  7      
  movl %r14d, %edi                    #  2341  0x6e009  3      
  movl %r10d, 0x90(%rsp)              #  2342  0x6e00c  8      
  nop                                 #  2343  0x6e014  1      
  movb %r11b, 0xa0(%rsp)              #  2344  0x6e015  8      
  nop                                 #  2345  0x6e01d  1      
  nop                                 #  2346  0x6e01e  1      
  callq ._dtoa_r                      #  2347  0x6e01f  5      
  cmpl $0x47, 0x100(%rsp)             #  2348  0x6e024  8      
  movl %eax, %eax                     #  2349  0x6e02c  2      
  movl 0x90(%rsp), %r10d              #  2350  0x6e02e  8      
  movq %rax, 0xb0(%rsp)               #  2351  0x6e036  8      
  nop                                 #  2352  0x6e03e  1      
  movzbl 0xa0(%rsp), %r11d            #  2353  0x6e03f  9      
  je .L_706a0                         #  2354  0x6e048  6      
  cmpl $0x67, 0x100(%rsp)             #  2355  0x6e04e  8      
  je .L_706a0                         #  2356  0x6e056  6      
  nop                                 #  2357  0x6e05c  1      
.L_6ee20:                             #        0x6e05d  0      
  movl 0xc4(%rsp), %edx               #  2358  0x6e05d  7      
  addl 0xb0(%rsp), %edx               #  2359  0x6e064  7      
  cmpb $0x0, 0xfc(%rsp)               #  2360  0x6e06b  8      
  xorpd %xmm1, %xmm1                  #  2361  0x6e073  4      
  je .L_6ee80                         #  2362  0x6e077  6      
  nop                                 #  2363  0x6e07d  1      
  movq 0xb0(%rsp), %rcx               #  2364  0x6e07e  8      
  movl %ecx, %ecx                     #  2365  0x6e086  2      
  cmpb $0x30, (%r15,%rcx,1)           #  2366  0x6e088  5      
  je .L_70f60                         #  2367  0x6e08d  6      
  movl 0x28c(%rsp), %eax              #  2368  0x6e093  7      
  xorpd %xmm1, %xmm1                  #  2369  0x6e09a  4      
.L_6ee60:                             #        0x6e09e  0      
  leal (%rax,%rdx,1), %edx            #  2370  0x6e09e  3      
  nop                                 #  2371  0x6e0a1  1      
  nop                                 #  2372  0x6e0a2  1      
.L_6ee80:                             #        0x6e0a3  0      
  movsd 0xb8(%rsp), %xmm0             #  2373  0x6e0a3  9      
  ucomisd %xmm1, %xmm0                #  2374  0x6e0ac  4      
  jne .L_70820                        #  2375  0x6e0b0  6      
  jp .L_70820                         #  2376  0x6e0b6  6      
  movl %edx, 0x27c(%rsp)              #  2377  0x6e0bc  7      
.L_6eea0:                             #        0x6e0c3  0      
  subl 0xb0(%rsp), %edx               #  2378  0x6e0c3  7      
  testb %r11b, %r11b                  #  2379  0x6e0ca  3      
  movl %edx, 0x118(%rsp)              #  2380  0x6e0cd  7      
  je .L_70060                         #  2381  0x6e0d4  6      
  movl 0x28c(%rsp), %ecx              #  2382  0x6e0da  7      
  xchgw %ax, %ax                      #  2383  0x6e0e1  3      
  cmpl $0xfffffffd, %ecx              #  2384  0x6e0e4  6      
  jl .L_70380                         #  2385  0x6e0ea  6      
  cmpl %ecx, %r10d                    #  2386  0x6e0f0  3      
  jl .L_70380                         #  2387  0x6e0f3  6      
  movl $0x67, 0x100(%rsp)             #  2388  0x6e0f9  11     
  nop                                 #  2389  0x6e104  1      
.L_6eee0:                             #        0x6e105  0      
  cmpl %ecx, 0x118(%rsp)              #  2390  0x6e105  7      
  jg .L_70d60                         #  2391  0x6e10c  6      
  testb $0x1, %r13b                   #  2392  0x6e112  4      
  je .L_70da0                         #  2393  0x6e116  6      
  leal 0x1(%rcx), %edx                #  2394  0x6e11c  3      
  nop                                 #  2395  0x6e11f  1      
  movl %edx, 0xc4(%rsp)               #  2396  0x6e120  7      
  nop                                 #  2397  0x6e127  1      
  nop                                 #  2398  0x6e128  1      
.L_6ef20:                             #        0x6e129  0      
  testl $0x400, %r13d                 #  2399  0x6e129  7      
  je .L_70740                         #  2400  0x6e130  6      
  testl %ecx, %ecx                    #  2401  0x6e136  2      
  jle .L_70740                        #  2402  0x6e138  6      
  movq 0xf0(%rsp), %rsi               #  2403  0x6e13e  8      
  nop                                 #  2404  0x6e146  1      
  movq 0xf0(%rsp), %r8                #  2405  0x6e147  8      
  movl %esi, %esi                     #  2406  0x6e14f  2      
  movzbl (%r15,%rsi,1), %eax          #  2407  0x6e151  5      
  movl $0x0, 0x114(%rsp)              #  2408  0x6e156  11     
  movl %ecx, %esi                     #  2409  0x6e161  2      
  nop                                 #  2410  0x6e163  1      
  movl $0x0, 0x12c(%rsp)              #  2411  0x6e164  11     
  jmpq .L_6efc0                       #  2412  0x6e16f  5      
  nop                                 #  2413  0x6e174  1      
  nop                                 #  2414  0x6e175  1      
.L_6ef80:                             #        0x6e176  0      
  addl $0x1, 0x12c(%rsp)              #  2415  0x6e176  8      
  nop                                 #  2416  0x6e17e  1      
  nop                                 #  2417  0x6e17f  1      
.L_6efa0:                             #        0x6e180  0      
  subl %edi, %esi                     #  2418  0x6e180  2      
  movl %ecx, %eax                     #  2419  0x6e182  2      
  movq %rdx, %r8                      #  2420  0x6e184  3      
  nop                                 #  2421  0x6e187  1      
  nop                                 #  2422  0x6e188  1      
.L_6efc0:                             #        0x6e189  0      
  cmpb $0x7f, %al                     #  2423  0x6e189  2      
  je .L_70d20                         #  2424  0x6e18b  6      
  movsbl %al, %edi                    #  2425  0x6e191  3      
  cmpl %edi, %esi                     #  2426  0x6e194  2      
  jle .L_70d20                        #  2427  0x6e196  6      
  leal 0x1(%r8), %edx                 #  2428  0x6e19c  4      
  movl %edx, %edx                     #  2429  0x6e1a0  2      
  movzbl (%r15,%rdx,1), %ecx          #  2430  0x6e1a2  5      
  testb %cl, %cl                      #  2431  0x6e1a7  2      
  jne .L_6ef80                        #  2432  0x6e1a9  6      
  addl $0x1, 0x114(%rsp)              #  2433  0x6e1af  8      
  movl %eax, %ecx                     #  2434  0x6e1b7  2      
  movq %r8, %rdx                      #  2435  0x6e1b9  3      
  jmpq .L_6efa0                       #  2436  0x6e1bc  5      
  nop                                 #  2437  0x6e1c1  1      
.L_6f000:                             #        0x6e1c2  0      
  movq 0xe0(%rsp), %rsi               #  2438  0x6e1c2  8      
  movl %esi, %esi                     #  2439  0x6e1ca  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2440  0x6e1cc  5      
  leal 0x8(%rdx), %eax                #  2441  0x6e1d1  3      
  movl %esi, %esi                     #  2442  0x6e1d4  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2443  0x6e1d6  5      
  jmpq .L_6d0e0                       #  2444  0x6e1db  5      
  xchgw %ax, %ax                      #  2445  0x6e1e0  3      
.L_6f020:                             #        0x6e1e3  0      
  testb $0x40, %r13b                  #  2446  0x6e1e3  4      
  jne .L_6fb20                        #  2447  0x6e1e7  6      
  testl $0x200, %r13d                 #  2448  0x6e1ed  7      
  je .L_70320                         #  2449  0x6e1f4  6      
  movq 0xe0(%rsp), %rax               #  2450  0x6e1fa  8      
  nop                                 #  2451  0x6e202  1      
  movl %eax, %eax                     #  2452  0x6e203  2      
  movl (%r15,%rax,1), %edx            #  2453  0x6e205  4      
  cmpl $0x2f, %edx                    #  2454  0x6e209  3      
  ja .L_70b40                         #  2455  0x6e20c  6      
  movq %rax, %rcx                     #  2456  0x6e212  3      
  movl %eax, %eax                     #  2457  0x6e215  2      
  movl 0xc(%r15,%rax,1), %eax         #  2458  0x6e217  5      
  addl %edx, %eax                     #  2459  0x6e21c  2      
  addl $0x8, %edx                     #  2460  0x6e21e  3      
  xchgw %ax, %ax                      #  2461  0x6e221  3      
  movl %ecx, %ecx                     #  2462  0x6e224  2      
  movl %edx, (%r15,%rcx,1)            #  2463  0x6e226  4      
  nop                                 #  2464  0x6e22a  1      
  nop                                 #  2465  0x6e22b  1      
.L_6f080:                             #        0x6e22c  0      
  movl %eax, %eax                     #  2466  0x6e22c  2      
  movzbl (%r15,%rax,1), %ecx          #  2467  0x6e22e  5      
  jmpq .L_6c7c0                       #  2468  0x6e233  5      
  nop                                 #  2469  0x6e238  1      
  nop                                 #  2470  0x6e239  1      
.L_6f0a0:                             #        0x6e23a  0      
  testb $0x10, %r13b                  #  2471  0x6e23a  4      
  jne .L_6fac0                        #  2472  0x6e23e  6      
  testb $0x40, %r13b                  #  2473  0x6e244  4      
  je .L_70160                         #  2474  0x6e248  6      
  movq 0xe0(%rsp), %rcx               #  2475  0x6e24e  8      
  nop                                 #  2476  0x6e256  1      
  movl %ecx, %ecx                     #  2477  0x6e257  2      
  movl (%r15,%rcx,1), %edx            #  2478  0x6e259  4      
  cmpl $0x2f, %edx                    #  2479  0x6e25d  3      
  ja .L_70b00                         #  2480  0x6e260  6      
  movl %ecx, %ecx                     #  2481  0x6e266  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2482  0x6e268  5      
  addl %edx, %eax                     #  2483  0x6e26d  2      
  addl $0x8, %edx                     #  2484  0x6e26f  3      
  nop                                 #  2485  0x6e272  1      
  movl %ecx, %ecx                     #  2486  0x6e273  2      
  movl %edx, (%r15,%rcx,1)            #  2487  0x6e275  4      
  nop                                 #  2488  0x6e279  1      
  nop                                 #  2489  0x6e27a  1      
.L_6f100:                             #        0x6e27b  0      
  movl %eax, %eax                     #  2490  0x6e27b  2      
  movl (%r15,%rax,1), %eax            #  2491  0x6e27d  4      
  movzwl 0xd0(%rsp), %edx             #  2492  0x6e281  8      
  movl %eax, %eax                     #  2493  0x6e289  2      
  movw %dx, (%r15,%rax,1)             #  2494  0x6e28b  5      
  jmpq .L_6c4c0                       #  2495  0x6e290  5      
  nop                                 #  2496  0x6e295  1      
.L_6f120:                             #        0x6e296  0      
  movq 0xe0(%rsp), %rsi               #  2497  0x6e296  8      
  movl %esi, %esi                     #  2498  0x6e29e  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2499  0x6e2a0  5      
  leal 0x8(%rdx), %eax                #  2500  0x6e2a5  3      
  movl %esi, %esi                     #  2501  0x6e2a8  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2502  0x6e2aa  5      
  jmpq .L_6c7a0                       #  2503  0x6e2af  5      
  xchgw %ax, %ax                      #  2504  0x6e2b4  3      
.L_6f140:                             #        0x6e2b7  0      
  testb $0x40, %r13b                  #  2505  0x6e2b7  4      
  jne .L_6fba0                        #  2506  0x6e2bb  6      
  testl $0x200, %r13d                 #  2507  0x6e2c1  7      
  je .L_70100                         #  2508  0x6e2c8  6      
  movq 0xe0(%rsp), %rax               #  2509  0x6e2ce  8      
  nop                                 #  2510  0x6e2d6  1      
  movl %eax, %eax                     #  2511  0x6e2d7  2      
  movl (%r15,%rax,1), %edx            #  2512  0x6e2d9  4      
  cmpl $0x2f, %edx                    #  2513  0x6e2dd  3      
  ja .L_707e0                         #  2514  0x6e2e0  6      
  movq %rax, %rcx                     #  2515  0x6e2e6  3      
  movl %eax, %eax                     #  2516  0x6e2e9  2      
  movl 0xc(%r15,%rax,1), %eax         #  2517  0x6e2eb  5      
  addl %edx, %eax                     #  2518  0x6e2f0  2      
  addl $0x8, %edx                     #  2519  0x6e2f2  3      
  xchgw %ax, %ax                      #  2520  0x6e2f5  3      
  movl %ecx, %ecx                     #  2521  0x6e2f8  2      
  movl %edx, (%r15,%rcx,1)            #  2522  0x6e2fa  4      
  nop                                 #  2523  0x6e2fe  1      
  nop                                 #  2524  0x6e2ff  1      
.L_6f1a0:                             #        0x6e300  0      
  movl %eax, %eax                     #  2525  0x6e300  2      
  movzbl (%r15,%rax,1), %ecx          #  2526  0x6e302  5      
  jmpq .L_6cee0                       #  2527  0x6e307  5      
  nop                                 #  2528  0x6e30c  1      
  nop                                 #  2529  0x6e30d  1      
.L_6f1c0:                             #        0x6e30e  0      
  movq 0xe0(%rsp), %rax               #  2530  0x6e30e  8      
  movq 0xe0(%rsp), %rsi               #  2531  0x6e316  8      
  movl %eax, %eax                     #  2532  0x6e31e  2      
  movl 0x8(%r15,%rax,1), %ecx         #  2533  0x6e320  5      
  leal 0x8(%rcx), %eax                #  2534  0x6e325  3      
  nop                                 #  2535  0x6e328  1      
  movl %esi, %esi                     #  2536  0x6e329  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2537  0x6e32b  5      
  jmpq .L_6c640                       #  2538  0x6e330  5      
  nop                                 #  2539  0x6e335  1      
  nop                                 #  2540  0x6e336  1      
.L_6f200:                             #        0x6e337  0      
  movq 0xe0(%rsp), %rsi               #  2541  0x6e337  8      
  movl %esi, %esi                     #  2542  0x6e33f  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2543  0x6e341  5      
  leal 0x8(%rdx), %eax                #  2544  0x6e346  3      
  movl %esi, %esi                     #  2545  0x6e349  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2546  0x6e34b  5      
  jmpq .L_6cec0                       #  2547  0x6e350  5      
  xchgw %ax, %ax                      #  2548  0x6e355  3      
.L_6f220:                             #        0x6e358  0      
  testb $0x40, %r13b                  #  2549  0x6e358  4      
  jne .L_6fa60                        #  2550  0x6e35c  6      
  testl $0x200, %r13d                 #  2551  0x6e362  7      
  je .L_701c0                         #  2552  0x6e369  6      
  movq 0xe0(%rsp), %rax               #  2553  0x6e36f  8      
  nop                                 #  2554  0x6e377  1      
  movl %eax, %eax                     #  2555  0x6e378  2      
  movl (%r15,%rax,1), %edx            #  2556  0x6e37a  4      
  cmpl $0x2f, %edx                    #  2557  0x6e37e  3      
  ja .L_70800                         #  2558  0x6e381  6      
  movq %rax, %rcx                     #  2559  0x6e387  3      
  movl %eax, %eax                     #  2560  0x6e38a  2      
  movl 0xc(%r15,%rax,1), %eax         #  2561  0x6e38c  5      
  addl %edx, %eax                     #  2562  0x6e391  2      
  addl $0x8, %edx                     #  2563  0x6e393  3      
  xchgw %ax, %ax                      #  2564  0x6e396  3      
  movl %ecx, %ecx                     #  2565  0x6e399  2      
  movl %edx, (%r15,%rcx,1)            #  2566  0x6e39b  4      
  nop                                 #  2567  0x6e39f  1      
  nop                                 #  2568  0x6e3a0  1      
.L_6f280:                             #        0x6e3a1  0      
  movl %eax, %eax                     #  2569  0x6e3a1  2      
  movzbl (%r15,%rax,1), %ecx          #  2570  0x6e3a3  5      
  movl $0x1, %eax                     #  2571  0x6e3a8  5      
  testq %rcx, %rcx                    #  2572  0x6e3ad  3      
  setne %sil                          #  2573  0x6e3b0  4      
  jmpq .L_6c820                       #  2574  0x6e3b4  5      
  nop                                 #  2575  0x6e3b9  1      
.L_6f2a0:                             #        0x6e3ba  0      
  movq %r13, %r12                     #  2576  0x6e3ba  3      
  movl 0xfc(%rsp), %r13d              #  2577  0x6e3bd  8      
  movl %ebx, %ecx                     #  2578  0x6e3c5  2      
  movq %rax, %rbx                     #  2579  0x6e3c7  3      
  nop                                 #  2580  0x6e3ca  1      
  nop                                 #  2581  0x6e3cb  1      
.L_6f2c0:                             #        0x6e3cc  0      
  movl %ebx, %ebx                     #  2582  0x6e3cc  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  2583  0x6e3ce  5      
  movl 0x224(%rsp), %eax              #  2584  0x6e3d3  7      
  addl %ecx, 0x228(%rsp)              #  2585  0x6e3da  7      
  movl %ebx, %ebx                     #  2586  0x6e3e1  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  2587  0x6e3e3  8      
  nop                                 #  2588  0x6e3eb  1      
  addl $0x1, %eax                     #  2589  0x6e3ec  3      
  cmpl $0x7, %eax                     #  2590  0x6e3ef  3      
  movl %eax, 0x224(%rsp)              #  2591  0x6e3f2  7      
  jg .L_6dfa0                         #  2592  0x6e3f9  6      
  addl $0x8, %ebx                     #  2593  0x6e3ff  3      
  jmpq .L_6dfe0                       #  2594  0x6e402  5      
  nop                                 #  2595  0x6e407  1      
.L_6f300:                             #        0x6e408  0      
  movl 0xb0(%rsp), %edx               #  2596  0x6e408  7      
  leal 0x240(%rsp), %ecx              #  2597  0x6e40f  7      
  xorl %esi, %esi                     #  2598  0x6e416  2      
  movl %r10d, 0x90(%rsp)              #  2599  0x6e418  8      
  movl %ecx, %edi                     #  2600  0x6e420  2      
  movq %rcx, 0x58(%rsp)               #  2601  0x6e422  5      
  nop                                 #  2602  0x6e427  1      
  movl %edx, 0x284(%rsp)              #  2603  0x6e428  7      
  movl $0x8, %edx                     #  2604  0x6e42f  5      
  nop                                 #  2605  0x6e434  1      
  callq .memset                       #  2606  0x6e435  5      
  movl 0x90(%rsp), %r10d              #  2607  0x6e43a  8      
  testl %r10d, %r10d                  #  2608  0x6e442  3      
  js .L_70780                         #  2609  0x6e445  6      
  xorl %r8d, %r8d                     #  2610  0x6e44b  3      
  movq %r12, 0xb8(%rsp)               #  2611  0x6e44e  8      
  nop                                 #  2612  0x6e456  1      
  movq %rbx, 0xe8(%rsp)               #  2613  0x6e457  8      
  movl %r13d, 0xd8(%rsp)              #  2614  0x6e45f  8      
  movl $0x0, 0xc4(%rsp)               #  2615  0x6e467  11     
  movl %r8d, %ebx                     #  2616  0x6e472  3      
  xchgw %ax, %ax                      #  2617  0x6e475  3      
  movl %r10d, %r12d                   #  2618  0x6e478  3      
  xorl %r13d, %r13d                   #  2619  0x6e47b  3      
  jmpq .L_6f3c0                       #  2620  0x6e47e  5      
  nop                                 #  2621  0x6e483  1      
  nop                                 #  2622  0x6e484  1      
.L_6f3a0:                             #        0x6e485  0      
  movl %eax, %r13d                    #  2623  0x6e485  3      
  nop                                 #  2624  0x6e488  1      
  nop                                 #  2625  0x6e489  1      
.L_6f3c0:                             #        0x6e48a  0      
  movl 0x284(%rsp), %eax              #  2626  0x6e48a  7      
  addl %ebx, %eax                     #  2627  0x6e491  2      
  movl %eax, %eax                     #  2628  0x6e493  2      
  movl (%r15,%rax,1), %edx            #  2629  0x6e495  4      
  testl %edx, %edx                    #  2630  0x6e499  2      
  je .L_70600                         #  2631  0x6e49b  6      
  movl 0x58(%rsp), %ecx               #  2632  0x6e4a1  4      
  movl 0x68(%rsp), %esi               #  2633  0x6e4a5  4      
  nop                                 #  2634  0x6e4a9  1      
  movl %r14d, %edi                    #  2635  0x6e4aa  3      
  nop                                 #  2636  0x6e4ad  1      
  nop                                 #  2637  0x6e4ae  1      
  callq ._wcrtomb_r                   #  2638  0x6e4af  5      
  cmpl $0xffffffff, %eax              #  2639  0x6e4b4  5      
  je .L_70d00                         #  2640  0x6e4b9  6      
  addl %r13d, %eax                    #  2641  0x6e4bf  3      
  cmpl %r12d, %eax                    #  2642  0x6e4c2  3      
  jg .L_70600                         #  2643  0x6e4c5  6      
  addl $0x4, %ebx                     #  2644  0x6e4cb  3      
  cmpl %eax, %r12d                    #  2645  0x6e4ce  3      
  nop                                 #  2646  0x6e4d1  1      
  jne .L_6f3a0                        #  2647  0x6e4d2  6      
  movl %r12d, %r10d                   #  2648  0x6e4d8  3      
  movq 0xe8(%rsp), %rbx               #  2649  0x6e4db  8      
  movq 0xb8(%rsp), %r12               #  2650  0x6e4e3  8      
  nop                                 #  2651  0x6e4eb  1      
  movl 0xd8(%rsp), %r13d              #  2652  0x6e4ec  8      
  movl %r10d, 0xc4(%rsp)              #  2653  0x6e4f4  8      
  nop                                 #  2654  0x6e4fc  1      
  nop                                 #  2655  0x6e4fd  1      
.L_6f460:                             #        0x6e4fe  0      
  movl 0xc4(%rsp), %r11d              #  2656  0x6e4fe  8      
  testl %r11d, %r11d                  #  2657  0x6e506  3      
  je .L_6fc20                         #  2658  0x6e509  6      
  cmpl $0x63, 0xc4(%rsp)              #  2659  0x6e50f  8      
  leal 0x170(%rsp), %edx              #  2660  0x6e517  7      
  movq $0x0, 0xe8(%rsp)               #  2661  0x6e51e  12     
  movq %rdx, 0xb0(%rsp)               #  2662  0x6e52a  8      
  jle .L_6f500                        #  2663  0x6e532  6      
  movl 0xc4(%rsp), %esi               #  2664  0x6e538  7      
  movl %r14d, %edi                    #  2665  0x6e53f  3      
  addl $0x1, %esi                     #  2666  0x6e542  3      
  nop                                 #  2667  0x6e545  1      
  nop                                 #  2668  0x6e546  1      
  callq ._malloc_r                    #  2669  0x6e547  5      
  movl %eax, %eax                     #  2670  0x6e54c  2      
  testq %rax, %rax                    #  2671  0x6e54e  3      
  movq %rax, 0xe8(%rsp)               #  2672  0x6e551  8      
  je .L_71120                         #  2673  0x6e559  6      
  movq 0xe8(%rsp), %rsi               #  2674  0x6e55f  8      
  nop                                 #  2675  0x6e567  1      
  movq %rsi, 0xb0(%rsp)               #  2676  0x6e568  8      
  nop                                 #  2677  0x6e570  1      
  nop                                 #  2678  0x6e571  1      
.L_6f500:                             #        0x6e572  0      
  movl 0x58(%rsp), %edi               #  2679  0x6e572  4      
  xorl %esi, %esi                     #  2680  0x6e576  2      
  movl $0x8, %edx                     #  2681  0x6e578  5      
  nop                                 #  2682  0x6e57d  1      
  nop                                 #  2683  0x6e57e  1      
  callq .memset                       #  2684  0x6e57f  5      
  movl 0x58(%rsp), %r8d               #  2685  0x6e584  5      
  movl 0xc4(%rsp), %ecx               #  2686  0x6e589  7      
  leal 0x284(%rsp), %edx              #  2687  0x6e590  7      
  movl 0xb0(%rsp), %esi               #  2688  0x6e597  7      
  movl %r14d, %edi                    #  2689  0x6e59e  3      
  nop                                 #  2690  0x6e5a1  1      
  nop                                 #  2691  0x6e5a2  1      
  nop                                 #  2692  0x6e5a3  1      
  callq ._wcsrtombs_r                 #  2693  0x6e5a4  5      
  cmpl %eax, 0xc4(%rsp)               #  2694  0x6e5a9  7      
  jne .L_6d280                        #  2695  0x6e5b0  6      
  movl 0xc4(%rsp), %eax               #  2696  0x6e5b6  7      
  addl 0xb0(%rsp), %eax               #  2697  0x6e5bd  7      
  movl $0x0, %edx                     #  2698  0x6e5c4  5      
  movl %eax, %eax                     #  2699  0x6e5c9  2      
  movb $0x0, (%r15,%rax,1)            #  2700  0x6e5cb  5      
  movl 0xc4(%rsp), %r10d              #  2701  0x6e5d0  8      
  movzbl 0x29f(%rsp), %eax            #  2702  0x6e5d8  8      
  nop                                 #  2703  0x6e5e0  1      
  movl $0x0, 0x104(%rsp)              #  2704  0x6e5e1  11     
  movl $0x0, 0x114(%rsp)              #  2705  0x6e5ec  11     
  nop                                 #  2706  0x6e5f7  1      
  movl $0x0, 0x12c(%rsp)              #  2707  0x6e5f8  11     
  testl %r10d, %r10d                  #  2708  0x6e603  3      
  cmovnsl 0xc4(%rsp), %edx            #  2709  0x6e606  8      
  nop                                 #  2710  0x6e60e  1      
  movl $0x0, 0x11c(%rsp)              #  2711  0x6e60f  11     
  movl %edx, 0xb8(%rsp)               #  2712  0x6e61a  7      
  jmpq .L_6c980                       #  2713  0x6e621  5      
  nop                                 #  2714  0x6e626  1      
.L_6f600:                             #        0x6e627  0      
  movq 0xe0(%rsp), %rsi               #  2715  0x6e627  8      
  movl %esi, %esi                     #  2716  0x6e62f  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2717  0x6e631  5      
  leal 0x8(%rdx), %eax                #  2718  0x6e636  3      
  movl %esi, %esi                     #  2719  0x6e639  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2720  0x6e63b  5      
  jmpq .L_6cb00                       #  2721  0x6e640  5      
  xchgw %ax, %ax                      #  2722  0x6e645  3      
.L_6f620:                             #        0x6e648  0      
  movl %ebx, %ecx                     #  2723  0x6e648  2      
  movq %r13, %r12                     #  2724  0x6e64a  3      
  movq %rax, %rbx                     #  2725  0x6e64d  3      
  movl 0xb0(%rsp), %r13d              #  2726  0x6e650  8      
  jmpq .L_6df80                       #  2727  0x6e658  5      
  nop                                 #  2728  0x6e65d  1      
.L_6f640:                             #        0x6e65e  0      
  movl 0x20(%rsp), %edx               #  2729  0x6e65e  4      
  movl %r12d, %esi                    #  2730  0x6e662  3      
  movl %r14d, %edi                    #  2731  0x6e665  3      
  movl %ecx, 0x98(%rsp)               #  2732  0x6e668  7      
  nop                                 #  2733  0x6e66f  1      
  callq .__ssprint_r                  #  2734  0x6e670  5      
  testl %eax, %eax                    #  2735  0x6e675  2      
  movl 0x98(%rsp), %ecx               #  2736  0x6e677  7      
  jne .L_6d2a0                        #  2737  0x6e67e  6      
  movq 0xf0(%rsp), %rax               #  2738  0x6e684  8      
  movl %eax, %eax                     #  2739  0x6e68c  2      
  movsbl (%r15,%rax,1), %edx          #  2740  0x6e68e  5      
  xchgw %ax, %ax                      #  2741  0x6e693  3      
  leal 0x1e0(%rsp), %eax              #  2742  0x6e696  7      
  jmpq .L_6e160                       #  2743  0x6e69d  5      
  nop                                 #  2744  0x6e6a2  1      
  nop                                 #  2745  0x6e6a3  1      
.L_6f6a0:                             #        0x6e6a4  0      
  movl 0xc8(%rsp), %esi               #  2746  0x6e6a4  7      
  leal 0x220(%rsp), %edx              #  2747  0x6e6ab  7      
  movl %r14d, %edi                    #  2748  0x6e6b2  3      
  nop                                 #  2749  0x6e6b5  1      
  callq .__ssprint_r                  #  2750  0x6e6b6  5      
  testl %eax, %eax                    #  2751  0x6e6bb  2      
  jne .L_6d2a0                        #  2752  0x6e6bd  6      
  leal 0x1e0(%rsp), %ebx              #  2753  0x6e6c3  7      
  jmpq .L_6d3c0                       #  2754  0x6e6ca  5      
  nop                                 #  2755  0x6e6cf  1      
.L_6f6e0:                             #        0x6e6d0  0      
  movl %ebx, %ebx                     #  2756  0x6e6d0  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  2757  0x6e6d2  9      
  movl 0x224(%rsp), %eax              #  2758  0x6e6db  7      
  addl $0x1, 0x228(%rsp)              #  2759  0x6e6e2  8      
  nop                                 #  2760  0x6e6ea  1      
  movl %ebx, %ebx                     #  2761  0x6e6eb  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  2762  0x6e6ed  8      
  addl $0x1, %eax                     #  2763  0x6e6f5  3      
  cmpl $0x7, %eax                     #  2764  0x6e6f8  3      
  movl %eax, 0x224(%rsp)              #  2765  0x6e6fb  7      
  jg .L_6fd80                         #  2766  0x6e702  6      
  addl $0x8, %ebx                     #  2767  0x6e708  3      
.L_6f720:                             #        0x6e70b  0      
  movl 0x28c(%rsp), %edi              #  2768  0x6e70b  7      
  testl %edi, %edi                    #  2769  0x6e712  2      
  jne .L_6f740                        #  2770  0x6e714  6      
  cmpl $0x0, 0x118(%rsp)              #  2771  0x6e71a  8      
  jne .L_6f740                        #  2772  0x6e722  6      
  testb $0x1, %r13b                   #  2773  0x6e728  4      
  je .L_6c280                         #  2774  0x6e72c  6      
  nop                                 #  2775  0x6e732  1      
.L_6f740:                             #        0x6e733  0      
  movl 0x120(%rsp), %eax              #  2776  0x6e733  7      
  movl 0x13c(%rsp), %edx              #  2777  0x6e73a  7      
  movl %ebx, %ebx                     #  2778  0x6e741  2      
  movl %eax, (%r15,%rbx,1)            #  2779  0x6e743  4      
  movl %ebx, %ebx                     #  2780  0x6e747  2      
  movl %edx, 0x4(%r15,%rbx,1)         #  2781  0x6e749  5      
  nop                                 #  2782  0x6e74e  1      
  movl 0x224(%rsp), %eax              #  2783  0x6e74f  7      
  addl %edx, 0x228(%rsp)              #  2784  0x6e756  7      
  addl $0x1, %eax                     #  2785  0x6e75d  3      
  cmpl $0x7, %eax                     #  2786  0x6e760  3      
  movl %eax, 0x224(%rsp)              #  2787  0x6e763  7      
  nop                                 #  2788  0x6e76a  1      
  jg .L_70700                         #  2789  0x6e76b  6      
  leal 0x8(%rbx), %eax                #  2790  0x6e771  3      
  nop                                 #  2791  0x6e774  1      
  nop                                 #  2792  0x6e775  1      
.L_6f7a0:                             #        0x6e776  0      
  movl 0x28c(%rsp), %ebx              #  2793  0x6e776  7      
  negl %ebx                           #  2794  0x6e77d  2      
  testl %ebx, %ebx                    #  2795  0x6e77f  2      
  jle .L_6fec0                        #  2796  0x6e781  6      
  cmpl $0x10, %ebx                    #  2797  0x6e787  3      
  jle .L_6fe80                        #  2798  0x6e78a  6      
  nop                                 #  2799  0x6e790  1      
  leal 0x220(%rsp), %ecx              #  2800  0x6e791  7      
  movl %r13d, 0xc4(%rsp)              #  2801  0x6e798  8      
  movq %r12, %r13                     #  2802  0x6e7a0  3      
  movq 0xc8(%rsp), %r12               #  2803  0x6e7a3  8      
  movq %rcx, 0x30(%rsp)               #  2804  0x6e7ab  5      
  nop                                 #  2805  0x6e7b0  1      
  jmpq .L_6f840                       #  2806  0x6e7b1  5      
  nop                                 #  2807  0x6e7b6  1      
  nop                                 #  2808  0x6e7b7  1      
.L_6f800:                             #        0x6e7b8  0      
  addl $0x8, %eax                     #  2809  0x6e7b8  3      
  nop                                 #  2810  0x6e7bb  1      
  nop                                 #  2811  0x6e7bc  1      
.L_6f820:                             #        0x6e7bd  0      
  subl $0x10, %ebx                    #  2812  0x6e7bd  3      
  cmpl $0x10, %ebx                    #  2813  0x6e7c0  3      
  jle .L_6fe60                        #  2814  0x6e7c3  6      
  nop                                 #  2815  0x6e7c9  1      
  nop                                 #  2816  0x6e7ca  1      
.L_6f840:                             #        0x6e7cb  0      
  movl %eax, %eax                     #  2817  0x6e7cb  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  2818  0x6e7cd  9      
  movl 0x224(%rsp), %edx              #  2819  0x6e7d6  7      
  addl $0x10, 0x228(%rsp)             #  2820  0x6e7dd  8      
  nop                                 #  2821  0x6e7e5  1      
  movl %eax, %eax                     #  2822  0x6e7e6  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2823  0x6e7e8  8      
  addl $0x1, %edx                     #  2824  0x6e7f0  3      
  cmpl $0x7, %edx                     #  2825  0x6e7f3  3      
  movl %edx, 0x224(%rsp)              #  2826  0x6e7f6  7      
  jle .L_6f800                        #  2827  0x6e7fd  6      
  movl 0x30(%rsp), %edx               #  2828  0x6e803  4      
  movl %r12d, %esi                    #  2829  0x6e807  3      
  movl %r14d, %edi                    #  2830  0x6e80a  3      
  nop                                 #  2831  0x6e80d  1      
  nop                                 #  2832  0x6e80e  1      
  callq .__ssprint_r                  #  2833  0x6e80f  5      
  testl %eax, %eax                    #  2834  0x6e814  2      
  jne .L_6d2a0                        #  2835  0x6e816  6      
  leal 0x1e0(%rsp), %eax              #  2836  0x6e81c  7      
  jmpq .L_6f820                       #  2837  0x6e823  5      
  nop                                 #  2838  0x6e828  1      
.L_6f8c0:                             #        0x6e829  0      
  movq 0xe0(%rsp), %rdx               #  2839  0x6e829  8      
  movq 0xe0(%rsp), %rsi               #  2840  0x6e831  8      
  movl %edx, %edx                     #  2841  0x6e839  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2842  0x6e83b  5      
  leal 0x8(%rax), %edx                #  2843  0x6e840  3      
  nop                                 #  2844  0x6e843  1      
  movl %esi, %esi                     #  2845  0x6e844  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2846  0x6e846  5      
  jmpq .L_6e700                       #  2847  0x6e84b  5      
  nop                                 #  2848  0x6e850  1      
  nop                                 #  2849  0x6e851  1      
.L_6f900:                             #        0x6e852  0      
  addl $0x1, %r12d                    #  2850  0x6e852  4      
  orl $0x20, %r13d                    #  2851  0x6e856  4      
  movl %r12d, %r12d                   #  2852  0x6e85a  3      
  movzbl (%r15,%r12,1), %eax          #  2853  0x6e85d  5      
  jmpq .L_6bd60                       #  2854  0x6e862  5      
  nop                                 #  2855  0x6e867  1      
.L_6f920:                             #        0x6e868  0      
  addl $0x1, %r12d                    #  2856  0x6e868  4      
  orl $0x200, %r13d                   #  2857  0x6e86c  7      
  movl %r12d, %r12d                   #  2858  0x6e873  3      
  movzbl (%r15,%r12,1), %eax          #  2859  0x6e876  5      
  jmpq .L_6bd60                       #  2860  0x6e87b  5      
  nop                                 #  2861  0x6e880  1      
.L_6f940:                             #        0x6e881  0      
  movq $0x10023bf9, 0xb0(%rsp)        #  2862  0x6e881  12     
  cmpl $0x47, 0x100(%rsp)             #  2863  0x6e88d  8      
  movl $0x10023bfd, %eax              #  2864  0x6e895  5      
  jmpq .L_6cba0                       #  2865  0x6e89a  5      
  xchgw %ax, %ax                      #  2866  0x6e89f  3      
.L_6f960:                             #        0x6e8a2  0      
  orl $0x400, %r13d                   #  2867  0x6e8a2  7      
  movl %r12d, %r12d                   #  2868  0x6e8a9  3      
  movzbl (%r15,%r12,1), %eax          #  2869  0x6e8ac  5      
  jmpq .L_6bd60                       #  2870  0x6e8b1  5      
  nop                                 #  2871  0x6e8b6  1      
.L_6f980:                             #        0x6e8b7  0      
  movq 0xe0(%rsp), %rsi               #  2872  0x6e8b7  8      
  movl %esi, %esi                     #  2873  0x6e8bf  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2874  0x6e8c1  5      
  leal 0x8(%rdx), %eax                #  2875  0x6e8c6  3      
  movl %esi, %esi                     #  2876  0x6e8c9  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2877  0x6e8cb  5      
  jmpq .L_6df40                       #  2878  0x6e8d0  5      
  xchgw %ax, %ax                      #  2879  0x6e8d5  3      
.L_6f9a0:                             #        0x6e8d8  0      
  movq 0xe0(%rsp), %rsi               #  2880  0x6e8d8  8      
  movl %esi, %esi                     #  2881  0x6e8e0  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2882  0x6e8e2  5      
  leal 0x8(%rdx), %eax                #  2883  0x6e8e7  3      
  movl %esi, %esi                     #  2884  0x6e8ea  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2885  0x6e8ec  5      
  jmpq .L_6dee0                       #  2886  0x6e8f1  5      
  xchgw %ax, %ax                      #  2887  0x6e8f6  3      
.L_6f9c0:                             #        0x6e8f9  0      
  movq 0xe0(%rsp), %rsi               #  2888  0x6e8f9  8      
  movl %esi, %esi                     #  2889  0x6e901  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2890  0x6e903  5      
  leal 0x8(%rdx), %eax                #  2891  0x6e908  3      
  movl %esi, %esi                     #  2892  0x6e90b  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2893  0x6e90d  5      
  jmpq .L_6cdc0                       #  2894  0x6e912  5      
  xchgw %ax, %ax                      #  2895  0x6e917  3      
.L_6f9e0:                             #        0x6e91a  0      
  movq 0xe0(%rsp), %rsi               #  2896  0x6e91a  8      
  movl %esi, %esi                     #  2897  0x6e922  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2898  0x6e924  5      
  leal 0x8(%rdx), %eax                #  2899  0x6e929  3      
  movl %esi, %esi                     #  2900  0x6e92c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2901  0x6e92e  5      
  jmpq .L_6dd60                       #  2902  0x6e933  5      
  xchgw %ax, %ax                      #  2903  0x6e938  3      
.L_6fa00:                             #        0x6e93b  0      
  movq 0xe0(%rsp), %rax               #  2904  0x6e93b  8      
  movl %eax, %eax                     #  2905  0x6e943  2      
  movl (%r15,%rax,1), %edx            #  2906  0x6e945  4      
  cmpl $0x2f, %edx                    #  2907  0x6e949  3      
  ja .L_70260                         #  2908  0x6e94c  6      
  movq %rax, %rcx                     #  2909  0x6e952  3      
  nop                                 #  2910  0x6e955  1      
  movl %eax, %eax                     #  2911  0x6e956  2      
  movl 0xc(%r15,%rax,1), %eax         #  2912  0x6e958  5      
  addl %edx, %eax                     #  2913  0x6e95d  2      
  addl $0x8, %edx                     #  2914  0x6e95f  3      
  movl %ecx, %ecx                     #  2915  0x6e962  2      
  movl %edx, (%r15,%rcx,1)            #  2916  0x6e964  4      
  nop                                 #  2917  0x6e968  1      
.L_6fa40:                             #        0x6e969  0      
  movl %eax, %eax                     #  2918  0x6e969  2      
  movswq (%r15,%rax,1), %rcx          #  2919  0x6e96b  5      
  jmpq .L_6cd40                       #  2920  0x6e970  5      
  nop                                 #  2921  0x6e975  1      
  nop                                 #  2922  0x6e976  1      
.L_6fa60:                             #        0x6e977  0      
  movq 0xe0(%rsp), %rax               #  2923  0x6e977  8      
  movl %eax, %eax                     #  2924  0x6e97f  2      
  movl (%r15,%rax,1), %edx            #  2925  0x6e981  4      
  cmpl $0x2f, %edx                    #  2926  0x6e985  3      
  ja .L_70240                         #  2927  0x6e988  6      
  movq %rax, %rcx                     #  2928  0x6e98e  3      
  nop                                 #  2929  0x6e991  1      
  movl %eax, %eax                     #  2930  0x6e992  2      
  movl 0xc(%r15,%rax,1), %eax         #  2931  0x6e994  5      
  addl %edx, %eax                     #  2932  0x6e999  2      
  addl $0x8, %edx                     #  2933  0x6e99b  3      
  movl %ecx, %ecx                     #  2934  0x6e99e  2      
  movl %edx, (%r15,%rcx,1)            #  2935  0x6e9a0  4      
  nop                                 #  2936  0x6e9a4  1      
.L_6faa0:                             #        0x6e9a5  0      
  movl %eax, %eax                     #  2937  0x6e9a5  2      
  movzwl (%r15,%rax,1), %ecx          #  2938  0x6e9a7  5      
  movl $0x1, %eax                     #  2939  0x6e9ac  5      
  testq %rcx, %rcx                    #  2940  0x6e9b1  3      
  setne %sil                          #  2941  0x6e9b4  4      
  jmpq .L_6c820                       #  2942  0x6e9b8  5      
  nop                                 #  2943  0x6e9bd  1      
.L_6fac0:                             #        0x6e9be  0      
  movq 0xe0(%rsp), %rax               #  2944  0x6e9be  8      
  movl %eax, %eax                     #  2945  0x6e9c6  2      
  movl (%r15,%rax,1), %edx            #  2946  0x6e9c8  4      
  cmpl $0x2f, %edx                    #  2947  0x6e9cc  3      
  ja .L_6ff40                         #  2948  0x6e9cf  6      
  movq %rax, %rcx                     #  2949  0x6e9d5  3      
  nop                                 #  2950  0x6e9d8  1      
  movl %eax, %eax                     #  2951  0x6e9d9  2      
  movl 0xc(%r15,%rax,1), %eax         #  2952  0x6e9db  5      
  addl %edx, %eax                     #  2953  0x6e9e0  2      
  addl $0x8, %edx                     #  2954  0x6e9e2  3      
  movl %ecx, %ecx                     #  2955  0x6e9e5  2      
  movl %edx, (%r15,%rcx,1)            #  2956  0x6e9e7  4      
  nop                                 #  2957  0x6e9eb  1      
.L_6fb00:                             #        0x6e9ec  0      
  movl %eax, %eax                     #  2958  0x6e9ec  2      
  movl (%r15,%rax,1), %eax            #  2959  0x6e9ee  4      
  movl 0xd0(%rsp), %edx               #  2960  0x6e9f2  7      
  movl %eax, %eax                     #  2961  0x6e9f9  2      
  movl %edx, (%r15,%rax,1)            #  2962  0x6e9fb  4      
  jmpq .L_6c4c0                       #  2963  0x6e9ff  5      
  nop                                 #  2964  0x6ea04  1      
.L_6fb20:                             #        0x6ea05  0      
  movq 0xe0(%rsp), %rax               #  2965  0x6ea05  8      
  movl %eax, %eax                     #  2966  0x6ea0d  2      
  movl (%r15,%rax,1), %edx            #  2967  0x6ea0f  4      
  cmpl $0x2f, %edx                    #  2968  0x6ea13  3      
  ja .L_70220                         #  2969  0x6ea16  6      
  movq %rax, %rcx                     #  2970  0x6ea1c  3      
  nop                                 #  2971  0x6ea1f  1      
  movl %eax, %eax                     #  2972  0x6ea20  2      
  movl 0xc(%r15,%rax,1), %eax         #  2973  0x6ea22  5      
  addl %edx, %eax                     #  2974  0x6ea27  2      
  addl $0x8, %edx                     #  2975  0x6ea29  3      
  movl %ecx, %ecx                     #  2976  0x6ea2c  2      
  movl %edx, (%r15,%rcx,1)            #  2977  0x6ea2e  4      
  nop                                 #  2978  0x6ea32  1      
.L_6fb60:                             #        0x6ea33  0      
  movl %eax, %eax                     #  2979  0x6ea33  2      
  movzwl (%r15,%rax,1), %ecx          #  2980  0x6ea35  5      
  jmpq .L_6c7c0                       #  2981  0x6ea3a  5      
  nop                                 #  2982  0x6ea3f  1      
  nop                                 #  2983  0x6ea40  1      
.L_6fb80:                             #        0x6ea41  0      
  movq 0xe0(%rsp), %rsi               #  2984  0x6ea41  8      
  movl %esi, %esi                     #  2985  0x6ea49  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2986  0x6ea4b  5      
  leal 0x8(%rdx), %eax                #  2987  0x6ea50  3      
  movl %esi, %esi                     #  2988  0x6ea53  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2989  0x6ea55  5      
  jmpq .L_6c720                       #  2990  0x6ea5a  5      
  xchgw %ax, %ax                      #  2991  0x6ea5f  3      
.L_6fba0:                             #        0x6ea62  0      
  movq 0xe0(%rsp), %rax               #  2992  0x6ea62  8      
  movl %eax, %eax                     #  2993  0x6ea6a  2      
  movl (%r15,%rax,1), %edx            #  2994  0x6ea6c  4      
  cmpl $0x2f, %edx                    #  2995  0x6ea70  3      
  ja .L_700e0                         #  2996  0x6ea73  6      
  movq %rax, %rcx                     #  2997  0x6ea79  3      
  nop                                 #  2998  0x6ea7c  1      
  movl %eax, %eax                     #  2999  0x6ea7d  2      
  movl 0xc(%r15,%rax,1), %eax         #  3000  0x6ea7f  5      
  addl %edx, %eax                     #  3001  0x6ea84  2      
  addl $0x8, %edx                     #  3002  0x6ea86  3      
  movl %ecx, %ecx                     #  3003  0x6ea89  2      
  movl %edx, (%r15,%rcx,1)            #  3004  0x6ea8b  4      
  nop                                 #  3005  0x6ea8f  1      
.L_6fbe0:                             #        0x6ea90  0      
  movl %eax, %eax                     #  3006  0x6ea90  2      
  movzwl (%r15,%rax,1), %ecx          #  3007  0x6ea92  5      
  jmpq .L_6cee0                       #  3008  0x6ea97  5      
  nop                                 #  3009  0x6ea9c  1      
  nop                                 #  3010  0x6ea9d  1      
.L_6fc00:                             #        0x6ea9e  0      
  jp .L_6cb80                         #  3011  0x6ea9e  6      
  movb $0x2d, 0x29f(%rsp)             #  3012  0x6eaa4  8      
  jmpq .L_6cb80                       #  3013  0x6eaac  5      
  nop                                 #  3014  0x6eab1  1      
.L_6fc20:                             #        0x6eab2  0      
  movzbl 0x29f(%rsp), %eax            #  3015  0x6eab2  8      
  movl $0x0, 0xb8(%rsp)               #  3016  0x6eaba  11     
  jmpq .L_6d020                       #  3017  0x6eac5  5      
  nop                                 #  3018  0x6eaca  1      
.L_6fc40:                             #        0x6eacb  0      
  movq 0xe0(%rsp), %rsi               #  3019  0x6eacb  8      
  movl %esi, %esi                     #  3020  0x6ead3  2      
  movl 0x8(%r15,%rsi,1), %edx         #  3021  0x6ead5  5      
  leal 0x8(%rdx), %eax                #  3022  0x6eada  3      
  movl %esi, %esi                     #  3023  0x6eadd  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  3024  0x6eadf  5      
  jmpq .L_6cca0                       #  3025  0x6eae4  5      
  xchgw %ax, %ax                      #  3026  0x6eae9  3      
.L_6fc60:                             #        0x6eaec  0      
  testb $0x1, %r13b                   #  3027  0x6eaec  4      
  je .L_6e380                         #  3028  0x6eaf0  6      
  jmpq .L_6e320                       #  3029  0x6eaf6  5      
  xchgw %ax, %ax                      #  3030  0x6eafb  3      
  nop                                 #  3031  0x6eafe  1      
.L_6fc80:                             #        0x6eaff  0      
  movl $0x40, %esi                    #  3032  0x6eaff  5      
  movl %r14d, %edi                    #  3033  0x6eb04  3      
  nop                                 #  3034  0x6eb07  1      
  nop                                 #  3035  0x6eb08  1      
  callq ._malloc_r                    #  3036  0x6eb09  5      
  movq 0xc8(%rsp), %rcx               #  3037  0x6eb0e  8      
  movl %eax, %eax                     #  3038  0x6eb16  2      
  testq %rax, %rax                    #  3039  0x6eb18  3      
  movl %ecx, %ecx                     #  3040  0x6eb1b  2      
  movl %eax, (%r15,%rcx,1)            #  3041  0x6eb1d  4      
  movl %ecx, %ecx                     #  3042  0x6eb21  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  3043  0x6eb23  5      
  je .L_710e0                         #  3044  0x6eb28  6      
  movq 0xc8(%rsp), %rsi               #  3045  0x6eb2e  8      
  movl %esi, %esi                     #  3046  0x6eb36  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  3047  0x6eb38  9      
  jmpq .L_6ba80                       #  3048  0x6eb41  5      
  nop                                 #  3049  0x6eb46  1      
.L_6fce0:                             #        0x6eb47  0      
  movl 0xb0(%rsp), %edi               #  3050  0x6eb47  7      
  movl %ecx, 0x98(%rsp)               #  3051  0x6eb4e  7      
  nop                                 #  3052  0x6eb55  1      
  callq .strlen                       #  3053  0x6eb56  5      
  movl 0x98(%rsp), %ecx               #  3054  0x6eb5b  7      
  testl %eax, %eax                    #  3055  0x6eb62  2      
  movl %eax, 0xc4(%rsp)               #  3056  0x6eb64  7      
  cmovnsl %eax, %ecx                  #  3057  0x6eb6b  3      
  movzbl 0x29f(%rsp), %eax            #  3058  0x6eb6e  8      
  nop                                 #  3059  0x6eb76  1      
  movl %ecx, 0xb8(%rsp)               #  3060  0x6eb77  7      
  jmpq .L_6d020                       #  3061  0x6eb7e  5      
  nop                                 #  3062  0x6eb83  1      
  nop                                 #  3063  0x6eb84  1      
.L_6fd40:                             #        0x6eb85  0      
  movl 0xc8(%rsp), %esi               #  3064  0x6eb85  7      
  leal 0x220(%rsp), %edx              #  3065  0x6eb8c  7      
  movl %r14d, %edi                    #  3066  0x6eb93  3      
  nop                                 #  3067  0x6eb96  1      
  callq .__ssprint_r                  #  3068  0x6eb97  5      
  testl %eax, %eax                    #  3069  0x6eb9c  2      
  jne .L_6d2a0                        #  3070  0x6eb9e  6      
  movl 0x28c(%rsp), %ecx              #  3071  0x6eba4  7      
  leal 0x1e0(%rsp), %ebx              #  3072  0x6ebab  7      
  jmpq .L_6e380                       #  3073  0x6ebb2  5      
  nop                                 #  3074  0x6ebb7  1      
.L_6fd80:                             #        0x6ebb8  0      
  movl 0xc8(%rsp), %esi               #  3075  0x6ebb8  7      
  leal 0x220(%rsp), %edx              #  3076  0x6ebbf  7      
  movl %r14d, %edi                    #  3077  0x6ebc6  3      
  nop                                 #  3078  0x6ebc9  1      
  callq .__ssprint_r                  #  3079  0x6ebca  5      
  testl %eax, %eax                    #  3080  0x6ebcf  2      
  jne .L_6d2a0                        #  3081  0x6ebd1  6      
  leal 0x1e0(%rsp), %ebx              #  3082  0x6ebd7  7      
  jmpq .L_6f720                       #  3083  0x6ebde  5      
  nop                                 #  3084  0x6ebe3  1      
.L_6fdc0:                             #        0x6ebe4  0      
  movl 0xc8(%rsp), %esi               #  3085  0x6ebe4  7      
  leal 0x220(%rsp), %edx              #  3086  0x6ebeb  7      
  movl %r14d, %edi                    #  3087  0x6ebf2  3      
  nop                                 #  3088  0x6ebf5  1      
  callq .__ssprint_r                  #  3089  0x6ebf6  5      
  testl %eax, %eax                    #  3090  0x6ebfb  2      
  je .L_6d260                         #  3091  0x6ebfd  6      
  nop                                 #  3092  0x6ec03  1      
  nop                                 #  3093  0x6ec04  1      
.L_6fe00:                             #        0x6ec05  0      
  movq 0xc8(%rsp), %rsi               #  3094  0x6ec05  8      
  movl %esi, %esi                     #  3095  0x6ec0d  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3096  0x6ec0f  6      
  jmpq .L_6d2e0                       #  3097  0x6ec15  5      
  nop                                 #  3098  0x6ec1a  1      
.L_6fe20:                             #        0x6ec1b  0      
  movl 0xc8(%rsp), %esi               #  3099  0x6ec1b  7      
  leal 0x220(%rsp), %edx              #  3100  0x6ec22  7      
  movl %r14d, %edi                    #  3101  0x6ec29  3      
  nop                                 #  3102  0x6ec2c  1      
  callq .__ssprint_r                  #  3103  0x6ec2d  5      
  testl %eax, %eax                    #  3104  0x6ec32  2      
  jne .L_6d2a0                        #  3105  0x6ec34  6      
  leal 0x1e0(%rsp), %ebx              #  3106  0x6ec3a  7      
  jmpq .L_6d440                       #  3107  0x6ec41  5      
  nop                                 #  3108  0x6ec46  1      
.L_6fe60:                             #        0x6ec47  0      
  movq %r13, %r12                     #  3109  0x6ec47  3      
  movl 0xc4(%rsp), %r13d              #  3110  0x6ec4a  8      
  nop                                 #  3111  0x6ec52  1      
  nop                                 #  3112  0x6ec53  1      
.L_6fe80:                             #        0x6ec54  0      
  movl %eax, %eax                     #  3113  0x6ec54  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  3114  0x6ec56  5      
  movl 0x224(%rsp), %edx              #  3115  0x6ec5b  7      
  addl %ebx, 0x228(%rsp)              #  3116  0x6ec62  7      
  movl %eax, %eax                     #  3117  0x6ec69  2      
  movl $0x10023f00, (%r15,%rax,1)     #  3118  0x6ec6b  8      
  nop                                 #  3119  0x6ec73  1      
  addl $0x1, %edx                     #  3120  0x6ec74  3      
  cmpl $0x7, %edx                     #  3121  0x6ec77  3      
  movl %edx, 0x224(%rsp)              #  3122  0x6ec7a  7      
  jg .L_70be0                         #  3123  0x6ec81  6      
  addl $0x8, %eax                     #  3124  0x6ec87  3      
  nop                                 #  3125  0x6ec8a  1      
.L_6fec0:                             #        0x6ec8b  0      
  movl 0x118(%rsp), %esi              #  3126  0x6ec8b  7      
  movl 0xb0(%rsp), %ebx               #  3127  0x6ec92  7      
  movl %eax, %eax                     #  3128  0x6ec99  2      
  movl %esi, 0x4(%r15,%rax,1)         #  3129  0x6ec9b  5      
  movl %eax, %eax                     #  3130  0x6eca0  2      
  movl %ebx, (%r15,%rax,1)            #  3131  0x6eca2  4      
  nop                                 #  3132  0x6eca6  1      
  addl %esi, 0x228(%rsp)              #  3133  0x6eca7  7      
  jmpq .L_6d8e0                       #  3134  0x6ecae  5      
  nop                                 #  3135  0x6ecb3  1      
  nop                                 #  3136  0x6ecb4  1      
.L_6ff00:                             #        0x6ecb5  0      
  movl 0xc8(%rsp), %esi               #  3137  0x6ecb5  7      
  leal 0x220(%rsp), %edx              #  3138  0x6ecbc  7      
  movl %r14d, %edi                    #  3139  0x6ecc3  3      
  movl %r8d, 0x88(%rsp)               #  3140  0x6ecc6  8      
  xchgw %ax, %ax                      #  3141  0x6ecce  3      
  callq .__ssprint_r                  #  3142  0x6ecd1  5      
  testl %eax, %eax                    #  3143  0x6ecd6  2      
  movl 0x88(%rsp), %r8d               #  3144  0x6ecd8  8      
  jne .L_6d2a0                        #  3145  0x6ece0  6      
  leal 0x1e0(%rsp), %ebx              #  3146  0x6ece6  7      
  jmpq .L_6db00                       #  3147  0x6eced  5      
  nop                                 #  3148  0x6ecf2  1      
.L_6ff40:                             #        0x6ecf3  0      
  movq 0xe0(%rsp), %rsi               #  3149  0x6ecf3  8      
  movl %esi, %esi                     #  3150  0x6ecfb  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3151  0x6ecfd  5      
  leal 0x8(%rax), %edx                #  3152  0x6ed02  3      
  movl %esi, %esi                     #  3153  0x6ed05  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3154  0x6ed07  5      
  jmpq .L_6fb00                       #  3155  0x6ed0c  5      
  xchgw %ax, %ax                      #  3156  0x6ed11  3      
.L_6ff60:                             #        0x6ed14  0      
  movl 0x108(%rsp), %esi              #  3157  0x6ed14  7      
  subl 0xb0(%rsp), %esi               #  3158  0x6ed1b  7      
  movl %esi, 0xc4(%rsp)               #  3159  0x6ed22  7      
  movq 0xf0(%rsp), %rsi               #  3160  0x6ed29  8      
  nop                                 #  3161  0x6ed31  1      
  jmpq .L_6c900                       #  3162  0x6ed32  5      
  nop                                 #  3163  0x6ed37  1      
  nop                                 #  3164  0x6ed38  1      
.L_6ffa0:                             #        0x6ed39  0      
  movl $0x6, 0xc4(%rsp)               #  3165  0x6ed39  11     
  cmpl $0x6, %r10d                    #  3166  0x6ed44  4      
  cmoval 0xc4(%rsp), %r10d            #  3167  0x6ed48  9      
  movl $0x0, %eax                     #  3168  0x6ed51  5      
  nop                                 #  3169  0x6ed56  1      
  movq $0x0, 0xe8(%rsp)               #  3170  0x6ed57  12     
  movl $0x0, 0x104(%rsp)              #  3171  0x6ed63  11     
  nop                                 #  3172  0x6ed6e  1      
  movl $0x0, 0x114(%rsp)              #  3173  0x6ed6f  11     
  movl $0x0, 0x12c(%rsp)              #  3174  0x6ed7a  11     
  nop                                 #  3175  0x6ed85  1      
  movl $0x0, 0x11c(%rsp)              #  3176  0x6ed86  11     
  movq $0x10023c12, 0xb0(%rsp)        #  3177  0x6ed91  12     
  testl %r10d, %r10d                  #  3178  0x6ed9d  3      
  nop                                 #  3179  0x6eda0  1      
  movl %r10d, 0xc4(%rsp)              #  3180  0x6eda1  8      
  cmovnsl %r10d, %eax                 #  3181  0x6eda9  4      
  movl %eax, 0xb8(%rsp)               #  3182  0x6edad  7      
  xorl %eax, %eax                     #  3183  0x6edb4  2      
  jmpq .L_6be40                       #  3184  0x6edb6  5      
  nop                                 #  3185  0x6edbb  1      
.L_70040:                             #        0x6edbc  0      
  movl %r10d, 0xb8(%rsp)              #  3186  0x6edbc  8      
  movzbl 0x29f(%rsp), %eax            #  3187  0x6edc4  8      
  movl %r10d, 0xc4(%rsp)              #  3188  0x6edcc  8      
  jmpq .L_6d020                       #  3189  0x6edd4  5      
  nop                                 #  3190  0x6edd9  1      
.L_70060:                             #        0x6edda  0      
  cmpl $0x46, 0x100(%rsp)             #  3191  0x6edda  8      
  je .L_70f20                         #  3192  0x6ede2  6      
  cmpl $0x65, 0x100(%rsp)             #  3193  0x6ede8  8      
  jle .L_70dc0                        #  3194  0x6edf0  6      
  nop                                 #  3195  0x6edf6  1      
  cmpl $0x66, 0x100(%rsp)             #  3196  0x6edf7  8      
  movl 0x28c(%rsp), %ecx              #  3197  0x6edff  7      
  jne .L_6eee0                        #  3198  0x6ee06  6      
  nop                                 #  3199  0x6ee0c  1      
.L_700a0:                             #        0x6ee0d  0      
  testl %ecx, %ecx                    #  3200  0x6ee0d  2      
  jle .L_70fa0                        #  3201  0x6ee0f  6      
  testl %r10d, %r10d                  #  3202  0x6ee15  3      
  jne .L_700c0                        #  3203  0x6ee18  6      
  testb $0x1, %r13b                   #  3204  0x6ee1e  4      
  je .L_70da0                         #  3205  0x6ee22  6      
  nop                                 #  3206  0x6ee28  1      
.L_700c0:                             #        0x6ee29  0      
  leal 0x1(%rcx,%r10,1), %r10d        #  3207  0x6ee29  5      
  movl %r10d, 0xc4(%rsp)              #  3208  0x6ee2e  8      
  jmpq .L_6ef20                       #  3209  0x6ee36  5      
  nop                                 #  3210  0x6ee3b  1      
.L_700e0:                             #        0x6ee3c  0      
  movq 0xe0(%rsp), %rsi               #  3211  0x6ee3c  8      
  movl %esi, %esi                     #  3212  0x6ee44  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3213  0x6ee46  5      
  leal 0x8(%rax), %edx                #  3214  0x6ee4b  3      
  movl %esi, %esi                     #  3215  0x6ee4e  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3216  0x6ee50  5      
  jmpq .L_6fbe0                       #  3217  0x6ee55  5      
  xchgw %ax, %ax                      #  3218  0x6ee5a  3      
.L_70100:                             #        0x6ee5d  0      
  movq 0xe0(%rsp), %rax               #  3219  0x6ee5d  8      
  movl %eax, %eax                     #  3220  0x6ee65  2      
  movl (%r15,%rax,1), %edx            #  3221  0x6ee67  4      
  cmpl $0x2f, %edx                    #  3222  0x6ee6b  3      
  ja .L_70b20                         #  3223  0x6ee6e  6      
  movq %rax, %rcx                     #  3224  0x6ee74  3      
  nop                                 #  3225  0x6ee77  1      
  movl %eax, %eax                     #  3226  0x6ee78  2      
  movl 0xc(%r15,%rax,1), %eax         #  3227  0x6ee7a  5      
  addl %edx, %eax                     #  3228  0x6ee7f  2      
  addl $0x8, %edx                     #  3229  0x6ee81  3      
  movl %ecx, %ecx                     #  3230  0x6ee84  2      
  movl %edx, (%r15,%rcx,1)            #  3231  0x6ee86  4      
  nop                                 #  3232  0x6ee8a  1      
.L_70140:                             #        0x6ee8b  0      
  movl %eax, %eax                     #  3233  0x6ee8b  2      
  movl (%r15,%rax,1), %ecx            #  3234  0x6ee8d  4      
  jmpq .L_6cee0                       #  3235  0x6ee91  5      
  nop                                 #  3236  0x6ee96  1      
  nop                                 #  3237  0x6ee97  1      
.L_70160:                             #        0x6ee98  0      
  andl $0x200, %r13d                  #  3238  0x6ee98  7      
  je .L_70a60                         #  3239  0x6ee9f  6      
  movq 0xe0(%rsp), %rcx               #  3240  0x6eea5  8      
  movl %ecx, %ecx                     #  3241  0x6eead  2      
  movl (%r15,%rcx,1), %edx            #  3242  0x6eeaf  4      
  cmpl $0x2f, %edx                    #  3243  0x6eeb3  3      
  xchgw %ax, %ax                      #  3244  0x6eeb6  3      
  ja .L_70f00                         #  3245  0x6eeb9  6      
  movl %ecx, %ecx                     #  3246  0x6eebf  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3247  0x6eec1  5      
  addl %edx, %eax                     #  3248  0x6eec6  2      
  addl $0x8, %edx                     #  3249  0x6eec8  3      
  movl %ecx, %ecx                     #  3250  0x6eecb  2      
  movl %edx, (%r15,%rcx,1)            #  3251  0x6eecd  4      
  nop                                 #  3252  0x6eed1  1      
.L_701a0:                             #        0x6eed2  0      
  movl %eax, %eax                     #  3253  0x6eed2  2      
  movl (%r15,%rax,1), %eax            #  3254  0x6eed4  4      
  movzbl 0xd0(%rsp), %edx             #  3255  0x6eed8  8      
  movl %eax, %eax                     #  3256  0x6eee0  2      
  movb %dl, (%r15,%rax,1)             #  3257  0x6eee2  4      
  jmpq .L_6c4c0                       #  3258  0x6eee6  5      
  nop                                 #  3259  0x6eeeb  1      
.L_701c0:                             #        0x6eeec  0      
  movq 0xe0(%rsp), %rax               #  3260  0x6eeec  8      
  movl %eax, %eax                     #  3261  0x6eef4  2      
  movl (%r15,%rax,1), %edx            #  3262  0x6eef6  4      
  cmpl $0x2f, %edx                    #  3263  0x6eefa  3      
  ja .L_70ba0                         #  3264  0x6eefd  6      
  movq %rax, %rcx                     #  3265  0x6ef03  3      
  nop                                 #  3266  0x6ef06  1      
  movl %eax, %eax                     #  3267  0x6ef07  2      
  movl 0xc(%r15,%rax,1), %eax         #  3268  0x6ef09  5      
  addl %edx, %eax                     #  3269  0x6ef0e  2      
  addl $0x8, %edx                     #  3270  0x6ef10  3      
  movl %ecx, %ecx                     #  3271  0x6ef13  2      
  movl %edx, (%r15,%rcx,1)            #  3272  0x6ef15  4      
  nop                                 #  3273  0x6ef19  1      
.L_70200:                             #        0x6ef1a  0      
  movl %eax, %eax                     #  3274  0x6ef1a  2      
  movl (%r15,%rax,1), %ecx            #  3275  0x6ef1c  4      
  movl $0x1, %eax                     #  3276  0x6ef20  5      
  testq %rcx, %rcx                    #  3277  0x6ef25  3      
  setne %sil                          #  3278  0x6ef28  4      
  jmpq .L_6c820                       #  3279  0x6ef2c  5      
  nop                                 #  3280  0x6ef31  1      
.L_70220:                             #        0x6ef32  0      
  movq 0xe0(%rsp), %rsi               #  3281  0x6ef32  8      
  movl %esi, %esi                     #  3282  0x6ef3a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3283  0x6ef3c  5      
  leal 0x8(%rax), %edx                #  3284  0x6ef41  3      
  movl %esi, %esi                     #  3285  0x6ef44  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3286  0x6ef46  5      
  jmpq .L_6fb60                       #  3287  0x6ef4b  5      
  xchgw %ax, %ax                      #  3288  0x6ef50  3      
.L_70240:                             #        0x6ef53  0      
  movq 0xe0(%rsp), %rsi               #  3289  0x6ef53  8      
  movl %esi, %esi                     #  3290  0x6ef5b  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3291  0x6ef5d  5      
  leal 0x8(%rax), %edx                #  3292  0x6ef62  3      
  movl %esi, %esi                     #  3293  0x6ef65  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3294  0x6ef67  5      
  jmpq .L_6faa0                       #  3295  0x6ef6c  5      
  xchgw %ax, %ax                      #  3296  0x6ef71  3      
.L_70260:                             #        0x6ef74  0      
  movq 0xe0(%rsp), %rsi               #  3297  0x6ef74  8      
  movl %esi, %esi                     #  3298  0x6ef7c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3299  0x6ef7e  5      
  leal 0x8(%rax), %edx                #  3300  0x6ef83  3      
  movl %esi, %esi                     #  3301  0x6ef86  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3302  0x6ef88  5      
  jmpq .L_6fa40                       #  3303  0x6ef8d  5      
  xchgw %ax, %ax                      #  3304  0x6ef92  3      
.L_70280:                             #        0x6ef95  0      
  cmpl $0xffffffff, %r10d             #  3305  0x6ef95  7      
  je .L_70ec0                         #  3306  0x6ef9c  6      
  cmpl $0x47, 0x100(%rsp)             #  3307  0x6efa2  8      
  je .L_70c20                         #  3308  0x6efaa  6      
  cmpl $0x67, 0x100(%rsp)             #  3309  0x6efb0  8      
  je .L_70c20                         #  3310  0x6efb8  6      
  xorl %r11d, %r11d                   #  3311  0x6efbe  3      
  movq $0x0, 0xe8(%rsp)               #  3312  0x6efc1  12     
  jmpq .L_6ece0                       #  3313  0x6efcd  5      
  nop                                 #  3314  0x6efd2  1      
.L_702c0:                             #        0x6efd3  0      
  movq 0xe0(%rsp), %rax               #  3315  0x6efd3  8      
  movl %eax, %eax                     #  3316  0x6efdb  2      
  movl (%r15,%rax,1), %edx            #  3317  0x6efdd  4      
  cmpl $0x2f, %edx                    #  3318  0x6efe1  3      
  ja .L_70b60                         #  3319  0x6efe4  6      
  movq %rax, %rcx                     #  3320  0x6efea  3      
  nop                                 #  3321  0x6efed  1      
  movl %eax, %eax                     #  3322  0x6efee  2      
  movl 0xc(%r15,%rax,1), %eax         #  3323  0x6eff0  5      
  addl %edx, %eax                     #  3324  0x6eff5  2      
  addl $0x8, %edx                     #  3325  0x6eff7  3      
  movl %ecx, %ecx                     #  3326  0x6effa  2      
  movl %edx, (%r15,%rcx,1)            #  3327  0x6effc  4      
  nop                                 #  3328  0x6f000  1      
.L_70300:                             #        0x6f001  0      
  movl %eax, %eax                     #  3329  0x6f001  2      
  movslq (%r15,%rax,1), %rcx          #  3330  0x6f003  4      
  jmpq .L_6cd40                       #  3331  0x6f007  5      
  nop                                 #  3332  0x6f00c  1      
  nop                                 #  3333  0x6f00d  1      
.L_70320:                             #        0x6f00e  0      
  movq 0xe0(%rsp), %rax               #  3334  0x6f00e  8      
  movl %eax, %eax                     #  3335  0x6f016  2      
  movl (%r15,%rax,1), %edx            #  3336  0x6f018  4      
  cmpl $0x2f, %edx                    #  3337  0x6f01c  3      
  ja .L_70860                         #  3338  0x6f01f  6      
  movq %rax, %rcx                     #  3339  0x6f025  3      
  nop                                 #  3340  0x6f028  1      
  movl %eax, %eax                     #  3341  0x6f029  2      
  movl 0xc(%r15,%rax,1), %eax         #  3342  0x6f02b  5      
  addl %edx, %eax                     #  3343  0x6f030  2      
  addl $0x8, %edx                     #  3344  0x6f032  3      
  movl %ecx, %ecx                     #  3345  0x6f035  2      
  movl %edx, (%r15,%rcx,1)            #  3346  0x6f037  4      
  nop                                 #  3347  0x6f03b  1      
.L_70360:                             #        0x6f03c  0      
  movl %eax, %eax                     #  3348  0x6f03c  2      
  movl (%r15,%rax,1), %ecx            #  3349  0x6f03e  4      
  jmpq .L_6c7c0                       #  3350  0x6f042  5      
  nop                                 #  3351  0x6f047  1      
  nop                                 #  3352  0x6f048  1      
.L_70380:                             #        0x6f049  0      
  subl $0x2, 0x100(%rsp)              #  3353  0x6f049  8      
  nop                                 #  3354  0x6f051  1      
  nop                                 #  3355  0x6f052  1      
.L_703a0:                             #        0x6f053  0      
  subl $0x1, %ecx                     #  3356  0x6f053  3      
  cmpl $0x41, 0x100(%rsp)             #  3357  0x6f056  8      
  movl %ecx, 0x28c(%rsp)              #  3358  0x6f05e  7      
  sete %dl                            #  3359  0x6f065  3      
  cmpl $0x61, 0x100(%rsp)             #  3360  0x6f068  8      
  sete %al                            #  3361  0x6f070  3      
  orl %eax, %edx                      #  3362  0x6f073  2      
  movzbl 0x100(%rsp), %eax            #  3363  0x6f075  8      
  addl $0xf, %eax                     #  3364  0x6f07d  3      
  andl $0x1, %edx                     #  3365  0x6f080  3      
  cmovel 0x100(%rsp), %eax            #  3366  0x6f083  8      
  testl %ecx, %ecx                    #  3367  0x6f08b  2      
  nop                                 #  3368  0x6f08d  1      
  movb %al, 0x270(%rsp)               #  3369  0x6f08e  7      
  js .L_70e80                         #  3370  0x6f095  6      
  movb $0x2b, 0x271(%rsp)             #  3371  0x6f09b  8      
  nop                                 #  3372  0x6f0a3  1      
.L_70400:                             #        0x6f0a4  0      
  cmpl $0x9, %ecx                     #  3373  0x6f0a4  3      
  jle .L_70aa0                        #  3374  0x6f0a7  6      
  movq 0x168(%rsp), %rsi              #  3375  0x6f0ad  8      
  movl $0x66666667, %edi              #  3376  0x6f0b5  5      
  nop                                 #  3377  0x6f0ba  1      
.L_70420:                             #        0x6f0bb  0      
  movl %ecx, %eax                     #  3378  0x6f0bb  2      
  subl $0x1, %esi                     #  3379  0x6f0bd  3      
  imull %edi                          #  3380  0x6f0c0  2      
  movl %ecx, %eax                     #  3381  0x6f0c2  2      
  sarl $0x1f, %eax                    #  3382  0x6f0c4  3      
  sarl $0x2, %edx                     #  3383  0x6f0c7  3      
  subl %eax, %edx                     #  3384  0x6f0ca  2      
  leal (%rdx,%rdx,4), %eax            #  3385  0x6f0cc  3      
  addl %eax, %eax                     #  3386  0x6f0cf  2      
  subl %eax, %ecx                     #  3387  0x6f0d1  2      
  movl %ecx, %eax                     #  3388  0x6f0d3  2      
  movl %edx, %ecx                     #  3389  0x6f0d5  2      
  addl $0x30, %eax                    #  3390  0x6f0d7  3      
  nop                                 #  3391  0x6f0da  1      
  cmpl $0x9, %edx                     #  3392  0x6f0db  3      
  movl %esi, %esi                     #  3393  0x6f0de  2      
  movb %al, (%r15,%rsi,1)             #  3394  0x6f0e0  4      
  jg .L_70420                         #  3395  0x6f0e4  6      
  leal -0x1(%rsi), %eax               #  3396  0x6f0ea  3      
  leal 0x30(%rcx), %edx               #  3397  0x6f0ed  3      
  movl %eax, %eax                     #  3398  0x6f0f0  2      
  movb %dl, (%r15,%rax,1)             #  3399  0x6f0f2  4      
  cmpl %eax, 0x168(%rsp)              #  3400  0x6f0f6  7      
  xchgw %ax, %ax                      #  3401  0x6f0fd  3      
  jbe .L_71160                        #  3402  0x6f100  6      
  movl %esi, %ecx                     #  3403  0x6f106  2      
  leal 0x270(%rsp), %esi              #  3404  0x6f108  7      
  movq 0x168(%rsp), %rdi              #  3405  0x6f10f  8      
  leaq 0x2(%rsi), %rax                #  3406  0x6f117  4      
  jmpq .L_704a0                       #  3407  0x6f11b  5      
  nop                                 #  3408  0x6f120  1      
.L_70480:                             #        0x6f121  0      
  movl %ecx, %edx                     #  3409  0x6f121  2      
  addl $0x1, %ecx                     #  3410  0x6f123  3      
  movl %edx, %edx                     #  3411  0x6f126  2      
  movzbl (%r15,%rdx,1), %edx          #  3412  0x6f128  5      
  nop                                 #  3413  0x6f12d  1      
  nop                                 #  3414  0x6f12e  1      
.L_704a0:                             #        0x6f12f  0      
  movl %eax, %eax                     #  3415  0x6f12f  2      
  movb %dl, (%r15,%rax,1)             #  3416  0x6f131  4      
  addl $0x1, %eax                     #  3417  0x6f135  3      
  cmpl %edi, %ecx                     #  3418  0x6f138  2      
  jb .L_70480                         #  3419  0x6f13a  6      
  nop                                 #  3420  0x6f140  1      
  nop                                 #  3421  0x6f141  1      
.L_704c0:                             #        0x6f142  0      
  subl %esi, %eax                     #  3422  0x6f142  2      
  movl %eax, 0x144(%rsp)              #  3423  0x6f144  7      
  addl 0x118(%rsp), %eax              #  3424  0x6f14b  7      
  cmpl $0x1, 0x118(%rsp)              #  3425  0x6f152  8      
  movl %eax, 0xc4(%rsp)               #  3426  0x6f15a  7      
  nop                                 #  3427  0x6f161  1      
  jle .L_70de0                        #  3428  0x6f162  6      
  nop                                 #  3429  0x6f168  1      
  nop                                 #  3430  0x6f169  1      
.L_70500:                             #        0x6f16a  0      
  addl $0x1, 0xc4(%rsp)               #  3431  0x6f16a  8      
  nop                                 #  3432  0x6f172  1      
  nop                                 #  3433  0x6f173  1      
.L_70520:                             #        0x6f174  0      
  andl $0xfffffbff, %r13d             #  3434  0x6f174  7      
  movl $0x0, 0x114(%rsp)              #  3435  0x6f17b  11     
  movl $0x0, 0x12c(%rsp)              #  3436  0x6f186  11     
  nop                                 #  3437  0x6f191  1      
  movl $0x0, 0x11c(%rsp)              #  3438  0x6f192  11     
  nop                                 #  3439  0x6f19d  1      
  nop                                 #  3440  0x6f19e  1      
.L_70560:                             #        0x6f19f  0      
  cmpb $0x0, 0xd8(%rsp)               #  3441  0x6f19f  8      
  je .L_705c0                         #  3442  0x6f1a7  6      
  cmpl $0x0, 0xc4(%rsp)               #  3443  0x6f1ad  8      
  movl $0x0, %edx                     #  3444  0x6f1b5  5      
  movb $0x2d, 0x29f(%rsp)             #  3445  0x6f1ba  8      
  nop                                 #  3446  0x6f1c2  1      
  cmovnsl 0xc4(%rsp), %edx            #  3447  0x6f1c3  8      
  movl $0x2d, %eax                    #  3448  0x6f1cb  5      
  movl $0x0, 0x104(%rsp)              #  3449  0x6f1d0  11     
  movl %edx, 0xb8(%rsp)               #  3450  0x6f1db  7      
  nop                                 #  3451  0x6f1e2  1      
  jmpq .L_6c9a0                       #  3452  0x6f1e3  5      
  nop                                 #  3453  0x6f1e8  1      
  nop                                 #  3454  0x6f1e9  1      
.L_705c0:                             #        0x6f1ea  0      
  cmpl $0x0, 0xc4(%rsp)               #  3455  0x6f1ea  8      
  movl $0x0, %eax                     #  3456  0x6f1f2  5      
  movl $0x0, 0x104(%rsp)              #  3457  0x6f1f7  11     
  cmovnsl 0xc4(%rsp), %eax            #  3458  0x6f202  8      
  movl %eax, 0xb8(%rsp)               #  3459  0x6f20a  7      
  movzbl 0x29f(%rsp), %eax            #  3460  0x6f211  8      
  jmpq .L_6c980                       #  3461  0x6f219  5      
  nop                                 #  3462  0x6f21e  1      
.L_70600:                             #        0x6f21f  0      
  movl %r13d, 0xc4(%rsp)              #  3463  0x6f21f  8      
  movq 0xb8(%rsp), %r12               #  3464  0x6f227  8      
  movq 0xe8(%rsp), %rbx               #  3465  0x6f22f  8      
  movl 0xd8(%rsp), %r13d              #  3466  0x6f237  8      
  jmpq .L_6f460                       #  3467  0x6f23f  5      
  nop                                 #  3468  0x6f244  1      
  nop                                 #  3469  0x6f245  1      
.L_70640:                             #        0x6f246  0      
  movl 0xc8(%rsp), %esi               #  3470  0x6f246  7      
  leal 0x220(%rsp), %edx              #  3471  0x6f24d  7      
  movl %r14d, %edi                    #  3472  0x6f254  3      
  movl %r8d, 0x88(%rsp)               #  3473  0x6f257  8      
  xchgw %ax, %ax                      #  3474  0x6f25f  3      
  callq .__ssprint_r                  #  3475  0x6f262  5      
  testl %eax, %eax                    #  3476  0x6f267  2      
  movl 0x88(%rsp), %r8d               #  3477  0x6f269  8      
  jne .L_6d2a0                        #  3478  0x6f271  6      
  movl 0x118(%rsp), %ecx              #  3479  0x6f277  7      
  leal 0x1e0(%rsp), %ebx              #  3480  0x6f27e  7      
  xchgw %ax, %ax                      #  3481  0x6f285  3      
  subl 0x28c(%rsp), %ecx              #  3482  0x6f288  7      
  jmpq .L_6e400                       #  3483  0x6f28f  5      
  nop                                 #  3484  0x6f294  1      
  nop                                 #  3485  0x6f295  1      
.L_706a0:                             #        0x6f296  0      
  testb $0x1, %r13b                   #  3486  0x6f296  4      
  jne .L_6ee20                        #  3487  0x6f29a  6      
  movl 0x27c(%rsp), %edx              #  3488  0x6f2a0  7      
  jmpq .L_6eea0                       #  3489  0x6f2a7  5      
  nop                                 #  3490  0x6f2ac  1      
.L_706c0:                             #        0x6f2ad  0      
  cmpl $0x45, 0x100(%rsp)             #  3491  0x6f2ad  8      
  je .L_70bc0                         #  3492  0x6f2b5  6      
  cmpl $0x65, 0x100(%rsp)             #  3493  0x6f2bb  8      
  je .L_70bc0                         #  3494  0x6f2c3  6      
  nop                                 #  3495  0x6f2c9  1      
  movl %r10d, 0xc4(%rsp)              #  3496  0x6f2ca  8      
  movl $0x2, %esi                     #  3497  0x6f2d2  5      
  jmpq .L_6ed80                       #  3498  0x6f2d7  5      
  nop                                 #  3499  0x6f2dc  1      
.L_70700:                             #        0x6f2dd  0      
  movl 0xc8(%rsp), %esi               #  3500  0x6f2dd  7      
  leal 0x220(%rsp), %edx              #  3501  0x6f2e4  7      
  movl %r14d, %edi                    #  3502  0x6f2eb  3      
  nop                                 #  3503  0x6f2ee  1      
  callq .__ssprint_r                  #  3504  0x6f2ef  5      
  testl %eax, %eax                    #  3505  0x6f2f4  2      
  jne .L_6d2a0                        #  3506  0x6f2f6  6      
  leal 0x1e0(%rsp), %eax              #  3507  0x6f2fc  7      
  jmpq .L_6f7a0                       #  3508  0x6f303  5      
  nop                                 #  3509  0x6f308  1      
.L_70740:                             #        0x6f309  0      
  movl %ecx, 0x11c(%rsp)              #  3510  0x6f309  7      
  movl $0x0, 0x114(%rsp)              #  3511  0x6f310  11     
  movl $0x0, 0x12c(%rsp)              #  3512  0x6f31b  11     
  nop                                 #  3513  0x6f326  1      
  jmpq .L_70560                       #  3514  0x6f327  5      
  nop                                 #  3515  0x6f32c  1      
  nop                                 #  3516  0x6f32d  1      
.L_70780:                             #        0x6f32e  0      
  movl 0x58(%rsp), %r8d               #  3517  0x6f32e  5      
  leal 0x284(%rsp), %edx              #  3518  0x6f333  7      
  xorl %ecx, %ecx                     #  3519  0x6f33a  2      
  xorl %esi, %esi                     #  3520  0x6f33c  2      
  movl %r14d, %edi                    #  3521  0x6f33e  3      
  nop                                 #  3522  0x6f341  1      
  callq ._wcsrtombs_r                 #  3523  0x6f342  5      
  cmpl $0xffffffff, %eax              #  3524  0x6f347  5      
  movl %eax, 0xc4(%rsp)               #  3525  0x6f34c  7      
  je .L_71100                         #  3526  0x6f353  6      
  movl 0xb0(%rsp), %eax               #  3527  0x6f359  7      
  movl %eax, 0x284(%rsp)              #  3528  0x6f360  7      
  xchgw %ax, %ax                      #  3529  0x6f367  3      
  jmpq .L_6f460                       #  3530  0x6f36a  5      
  nop                                 #  3531  0x6f36f  1      
  nop                                 #  3532  0x6f370  1      
.L_707e0:                             #        0x6f371  0      
  movq 0xe0(%rsp), %rsi               #  3533  0x6f371  8      
  movl %esi, %esi                     #  3534  0x6f379  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3535  0x6f37b  5      
  leal 0x8(%rax), %edx                #  3536  0x6f380  3      
  movl %esi, %esi                     #  3537  0x6f383  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3538  0x6f385  5      
  jmpq .L_6f1a0                       #  3539  0x6f38a  5      
  xchgw %ax, %ax                      #  3540  0x6f38f  3      
.L_70800:                             #        0x6f392  0      
  movq 0xe0(%rsp), %rsi               #  3541  0x6f392  8      
  movl %esi, %esi                     #  3542  0x6f39a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3543  0x6f39c  5      
  leal 0x8(%rax), %edx                #  3544  0x6f3a1  3      
  movl %esi, %esi                     #  3545  0x6f3a4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3546  0x6f3a6  5      
  jmpq .L_6f280                       #  3547  0x6f3ab  5      
  xchgw %ax, %ax                      #  3548  0x6f3b0  3      
.L_70820:                             #        0x6f3b3  0      
  movl 0x27c(%rsp), %ecx              #  3549  0x6f3b3  7      
  cmpl %ecx, %edx                     #  3550  0x6f3ba  2      
  movq %rcx, %rax                     #  3551  0x6f3bc  3      
  jbe .L_71140                        #  3552  0x6f3bf  6      
  nop                                 #  3553  0x6f3c5  1      
.L_70840:                             #        0x6f3c6  0      
  movl %eax, %eax                     #  3554  0x6f3c6  2      
  movb $0x30, (%r15,%rax,1)           #  3555  0x6f3c8  5      
  addl $0x1, %eax                     #  3556  0x6f3cd  3      
  cmpl %eax, %edx                     #  3557  0x6f3d0  2      
  movl %eax, 0x27c(%rsp)              #  3558  0x6f3d2  7      
  ja .L_70840                         #  3559  0x6f3d9  6      
  jmpq .L_6eea0                       #  3560  0x6f3df  5      
  nop                                 #  3561  0x6f3e4  1      
.L_70860:                             #        0x6f3e5  0      
  movq 0xe0(%rsp), %rsi               #  3562  0x6f3e5  8      
  movl %esi, %esi                     #  3563  0x6f3ed  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3564  0x6f3ef  5      
  leal 0x8(%rax), %edx                #  3565  0x6f3f4  3      
  movl %esi, %esi                     #  3566  0x6f3f7  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3567  0x6f3f9  5      
  jmpq .L_70360                       #  3568  0x6f3fe  5      
  xchgw %ax, %ax                      #  3569  0x6f403  3      
.L_70880:                             #        0x6f406  0      
  leal 0x28c(%rsp), %edi              #  3570  0x6f406  7      
  movsd 0xb8(%rsp), %xmm0             #  3571  0x6f40d  9      
  movl %r10d, 0x90(%rsp)              #  3572  0x6f416  8      
  movb %r11b, 0xa0(%rsp)              #  3573  0x6f41e  8      
  nop                                 #  3574  0x6f426  1      
  nop                                 #  3575  0x6f427  1      
  callq .frexp                        #  3576  0x6f428  5      
  mulsd 0xffb4af3(%rip), %xmm0        #  3577  0x6f42d  8      
  movl $0x1, %eax                     #  3578  0x6f435  5      
  movl 0x90(%rsp), %r10d              #  3579  0x6f43a  8      
  xorpd %xmm1, %xmm1                  #  3580  0x6f442  4      
  movl $0x10023c01, %edi              #  3581  0x6f446  5      
  xchgw %ax, %ax                      #  3582  0x6f44b  3      
  movsd 0xffb4ada(%rip), %xmm3        #  3583  0x6f44e  8      
  movzbl 0xa0(%rsp), %r11d            #  3584  0x6f456  9      
  movl %r10d, %ecx                    #  3585  0x6f45f  3      
  ucomisd %xmm1, %xmm0                #  3586  0x6f462  4      
  cmovnel 0x28c(%rsp), %eax           #  3587  0x6f466  8      
  cmovpl 0x28c(%rsp), %eax            #  3588  0x6f46e  8      
  cmpb $0x0, 0xc4(%rsp)               #  3589  0x6f476  8      
  movl %eax, 0x28c(%rsp)              #  3590  0x6f47e  7      
  movl $0x10023be0, %eax              #  3591  0x6f485  5      
  cmoveq %rax, %rdi                   #  3592  0x6f48a  4      
  movq 0xb0(%rsp), %rax               #  3593  0x6f48e  8      
  jmpq .L_70960                       #  3594  0x6f496  5      
  nop                                 #  3595  0x6f49b  1      
  nop                                 #  3596  0x6f49c  1      
.L_70940:                             #        0x6f49d  0      
  movq %rdx, %rax                     #  3597  0x6f49d  3      
  nop                                 #  3598  0x6f4a0  1      
  nop                                 #  3599  0x6f4a1  1      
.L_70960:                             #        0x6f4a2  0      
  mulsd %xmm3, %xmm0                  #  3600  0x6f4a2  4      
  subl $0x1, %ecx                     #  3601  0x6f4a6  3      
  cmpl $0xffffffff, %ecx              #  3602  0x6f4a9  6      
  cvttsd2si %xmm0, %esi               #  3603  0x6f4af  4      
  cvtsi2sdl %esi, %xmm2               #  3604  0x6f4b3  4      
  leal (%rsi,%rdi,1), %edx            #  3605  0x6f4b7  3      
  movl %edx, %edx                     #  3606  0x6f4ba  2      
  movzbl (%r15,%rdx,1), %edx          #  3607  0x6f4bc  5      
  nop                                 #  3608  0x6f4c1  1      
  movl %eax, %eax                     #  3609  0x6f4c2  2      
  movb %dl, (%r15,%rax,1)             #  3610  0x6f4c4  4      
  leal 0x1(%rax), %edx                #  3611  0x6f4c8  3      
  subsd %xmm2, %xmm0                  #  3612  0x6f4cb  4      
  je .L_70c40                         #  3613  0x6f4cf  6      
  ucomisd %xmm1, %xmm0                #  3614  0x6f4d5  4      
  jne .L_70940                        #  3615  0x6f4d9  6      
  jp .L_70940                         #  3616  0x6f4df  6      
  nop                                 #  3617  0x6f4e5  1      
  movsd 0xffb4a4a(%rip), %xmm1        #  3618  0x6f4e6  8      
  nop                                 #  3619  0x6f4ee  1      
  nop                                 #  3620  0x6f4ef  1      
.L_709c0:                             #        0x6f4f0  0      
  movq %rdx, %r8                      #  3621  0x6f4f0  3      
  ucomisd %xmm1, %xmm0                #  3622  0x6f4f3  4      
  jne .L_709e0                        #  3623  0x6f4f7  6      
  jp .L_709e0                         #  3624  0x6f4fd  6      
  andb $0x1, %sil                     #  3625  0x6f503  4      
  jne .L_70c60                        #  3626  0x6f507  6      
  nop                                 #  3627  0x6f50d  1      
.L_709e0:                             #        0x6f50e  0      
  testl %ecx, %ecx                    #  3628  0x6f50e  2      
  leal -0x1(%rcx), %eax               #  3629  0x6f510  3      
  js .L_6eea0                         #  3630  0x6f513  6      
  nop                                 #  3631  0x6f519  1      
  nop                                 #  3632  0x6f51a  1      
.L_70a00:                             #        0x6f51b  0      
  subl $0x1, %eax                     #  3633  0x6f51b  3      
  movl %edx, %edx                     #  3634  0x6f51e  2      
  movb $0x30, (%r15,%rdx,1)           #  3635  0x6f520  5      
  addl $0x1, %edx                     #  3636  0x6f525  3      
  cmpl $0xfffffffe, %eax              #  3637  0x6f528  5      
  jne .L_70a00                        #  3638  0x6f52d  6      
  leal 0x1(%rcx,%r8,1), %edx          #  3639  0x6f533  5      
  jmpq .L_6eea0                       #  3640  0x6f538  5      
  nop                                 #  3641  0x6f53d  1      
.L_70a20:                             #        0x6f53e  0      
  movsd 0xffb49fa(%rip), %xmm0        #  3642  0x6f53e  8      
  movb $0x2d, 0xd8(%rsp)              #  3643  0x6f546  8      
  movsd 0x130(%rsp), %xmm1            #  3644  0x6f54e  9      
  xorpd %xmm0, %xmm1                  #  3645  0x6f557  4      
  nop                                 #  3646  0x6f55b  1      
  movsd %xmm1, 0xb8(%rsp)             #  3647  0x6f55c  9      
  jmpq .L_6ed20                       #  3648  0x6f565  5      
  nop                                 #  3649  0x6f56a  1      
  nop                                 #  3650  0x6f56b  1      
.L_70a60:                             #        0x6f56c  0      
  movq 0xe0(%rsp), %rcx               #  3651  0x6f56c  8      
  movl %ecx, %ecx                     #  3652  0x6f574  2      
  movl (%r15,%rcx,1), %edx            #  3653  0x6f576  4      
  cmpl $0x2f, %edx                    #  3654  0x6f57a  3      
  ja .L_6ff40                         #  3655  0x6f57d  6      
  movl %ecx, %ecx                     #  3656  0x6f583  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3657  0x6f585  5      
  addl %edx, %eax                     #  3658  0x6f58a  2      
  addl $0x8, %edx                     #  3659  0x6f58c  3      
  movl %ecx, %ecx                     #  3660  0x6f58f  2      
  movl %edx, (%r15,%rcx,1)            #  3661  0x6f591  4      
  jmpq .L_6fb00                       #  3662  0x6f595  5      
  nop                                 #  3663  0x6f59a  1      
  nop                                 #  3664  0x6f59b  1      
.L_70aa0:                             #        0x6f59c  0      
  testl %edx, %edx                    #  3665  0x6f59c  2      
  je .L_70ea0                         #  3666  0x6f59e  6      
  leal 0x270(%rsp), %esi              #  3667  0x6f5a4  7      
  leaq 0x3(%rsi), %rax                #  3668  0x6f5ab  4      
  leaq 0x2(%rsi), %rdx                #  3669  0x6f5af  4      
  nop                                 #  3670  0x6f5b3  1      
.L_70ac0:                             #        0x6f5b4  0      
  addl $0x30, %ecx                    #  3671  0x6f5b4  3      
  movl %edx, %edx                     #  3672  0x6f5b7  2      
  movb %cl, (%r15,%rdx,1)             #  3673  0x6f5b9  4      
  jmpq .L_704c0                       #  3674  0x6f5bd  5      
  nop                                 #  3675  0x6f5c2  1      
  nop                                 #  3676  0x6f5c3  1      
.L_70ae0:                             #        0x6f5c4  0      
  movq 0xe0(%rsp), %rsi               #  3677  0x6f5c4  8      
  movl %esi, %esi                     #  3678  0x6f5cc  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3679  0x6f5ce  5      
  leal 0x8(%rax), %edx                #  3680  0x6f5d3  3      
  movl %esi, %esi                     #  3681  0x6f5d6  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3682  0x6f5d8  5      
  jmpq .L_6ebc0                       #  3683  0x6f5dd  5      
  xchgw %ax, %ax                      #  3684  0x6f5e2  3      
.L_70b00:                             #        0x6f5e5  0      
  movq 0xe0(%rsp), %rsi               #  3685  0x6f5e5  8      
  movl %esi, %esi                     #  3686  0x6f5ed  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3687  0x6f5ef  5      
  leal 0x8(%rax), %edx                #  3688  0x6f5f4  3      
  movl %esi, %esi                     #  3689  0x6f5f7  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3690  0x6f5f9  5      
  jmpq .L_6f100                       #  3691  0x6f5fe  5      
  xchgw %ax, %ax                      #  3692  0x6f603  3      
.L_70b20:                             #        0x6f606  0      
  movq 0xe0(%rsp), %rsi               #  3693  0x6f606  8      
  movl %esi, %esi                     #  3694  0x6f60e  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3695  0x6f610  5      
  leal 0x8(%rax), %edx                #  3696  0x6f615  3      
  movl %esi, %esi                     #  3697  0x6f618  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3698  0x6f61a  5      
  jmpq .L_70140                       #  3699  0x6f61f  5      
  xchgw %ax, %ax                      #  3700  0x6f624  3      
.L_70b40:                             #        0x6f627  0      
  movq 0xe0(%rsp), %rsi               #  3701  0x6f627  8      
  movl %esi, %esi                     #  3702  0x6f62f  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3703  0x6f631  5      
  leal 0x8(%rax), %edx                #  3704  0x6f636  3      
  movl %esi, %esi                     #  3705  0x6f639  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3706  0x6f63b  5      
  jmpq .L_6f080                       #  3707  0x6f640  5      
  xchgw %ax, %ax                      #  3708  0x6f645  3      
.L_70b60:                             #        0x6f648  0      
  movq 0xe0(%rsp), %rsi               #  3709  0x6f648  8      
  movl %esi, %esi                     #  3710  0x6f650  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3711  0x6f652  5      
  leal 0x8(%rax), %edx                #  3712  0x6f657  3      
  movl %esi, %esi                     #  3713  0x6f65a  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3714  0x6f65c  5      
  jmpq .L_70300                       #  3715  0x6f661  5      
  xchgw %ax, %ax                      #  3716  0x6f666  3      
.L_70b80:                             #        0x6f669  0      
  cmpl $0x0, 0x114(%rsp)              #  3717  0x6f669  8      
  jg .L_6e020                         #  3718  0x6f671  6      
  jmpq .L_6e2c0                       #  3719  0x6f677  5      
  nop                                 #  3720  0x6f67c  1      
.L_70ba0:                             #        0x6f67d  0      
  movq 0xe0(%rsp), %rsi               #  3721  0x6f67d  8      
  movl %esi, %esi                     #  3722  0x6f685  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3723  0x6f687  5      
  leal 0x8(%rax), %edx                #  3724  0x6f68c  3      
  movl %esi, %esi                     #  3725  0x6f68f  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3726  0x6f691  5      
  jmpq .L_70200                       #  3727  0x6f696  5      
  xchgw %ax, %ax                      #  3728  0x6f69b  3      
.L_70bc0:                             #        0x6f69e  0      
  leal 0x1(%r10), %eax                #  3729  0x6f69e  4      
  movl $0x2, %esi                     #  3730  0x6f6a2  5      
  movl %eax, 0xc4(%rsp)               #  3731  0x6f6a7  7      
  jmpq .L_6ed80                       #  3732  0x6f6ae  5      
  nop                                 #  3733  0x6f6b3  1      
.L_70be0:                             #        0x6f6b4  0      
  movl 0xc8(%rsp), %esi               #  3734  0x6f6b4  7      
  leal 0x220(%rsp), %edx              #  3735  0x6f6bb  7      
  movl %r14d, %edi                    #  3736  0x6f6c2  3      
  nop                                 #  3737  0x6f6c5  1      
  callq .__ssprint_r                  #  3738  0x6f6c6  5      
  testl %eax, %eax                    #  3739  0x6f6cb  2      
  jne .L_6d2a0                        #  3740  0x6f6cd  6      
  leal 0x1e0(%rsp), %eax              #  3741  0x6f6d3  7      
  jmpq .L_6fec0                       #  3742  0x6f6da  5      
  nop                                 #  3743  0x6f6df  1      
.L_70c20:                             #        0x6f6e0  0      
  testl %r10d, %r10d                  #  3744  0x6f6e0  3      
  je .L_70f40                         #  3745  0x6f6e3  6      
  movl $0x1, %r11d                    #  3746  0x6f6e9  6      
  movq $0x0, 0xe8(%rsp)               #  3747  0x6f6ef  12     
  jmpq .L_6ece0                       #  3748  0x6f6fb  5      
.L_70c40:                             #        0x6f700  0      
  movsd 0xffb4830(%rip), %xmm1        #  3749  0x6f700  8      
  ucomisd %xmm1, %xmm0                #  3750  0x6f708  4      
  jbe .L_709c0                        #  3751  0x6f70c  6      
  nop                                 #  3752  0x6f712  1      
.L_70c60:                             #        0x6f713  0      
  leal 0xf(%rdi), %esi                #  3753  0x6f713  3      
  movl %eax, 0x27c(%rsp)              #  3754  0x6f716  7      
  movl %eax, %eax                     #  3755  0x6f71d  2      
  movzbl (%r15,%rax,1), %ecx          #  3756  0x6f71f  5      
  movl %esi, %esi                     #  3757  0x6f724  2      
  cmpb (%r15,%rsi,1), %cl             #  3758  0x6f726  4      
  jne .L_70cc0                        #  3759  0x6f72a  6      
  nop                                 #  3760  0x6f730  1      
.L_70c80:                             #        0x6f731  0      
  movl %eax, %eax                     #  3761  0x6f731  2      
  movb $0x30, (%r15,%rax,1)           #  3762  0x6f733  5      
  movl 0x27c(%rsp), %eax              #  3763  0x6f738  7      
  subl $0x1, %eax                     #  3764  0x6f73f  3      
  movl %eax, 0x27c(%rsp)              #  3765  0x6f742  7      
  movl %eax, %eax                     #  3766  0x6f749  2      
  movzbl (%r15,%rax,1), %ecx          #  3767  0x6f74b  5      
  nop                                 #  3768  0x6f750  1      
  movl %esi, %esi                     #  3769  0x6f751  2      
  cmpb (%r15,%rsi,1), %cl             #  3770  0x6f753  4      
  je .L_70c80                         #  3771  0x6f757  6      
  nop                                 #  3772  0x6f75d  1      
  nop                                 #  3773  0x6f75e  1      
.L_70cc0:                             #        0x6f75f  0      
  cmpb $0x39, %cl                     #  3774  0x6f75f  3      
  je .L_71060                         #  3775  0x6f762  6      
  addl $0x1, %ecx                     #  3776  0x6f768  3      
  nop                                 #  3777  0x6f76b  1      
  nop                                 #  3778  0x6f76c  1      
.L_70ce0:                             #        0x6f76d  0      
  movl %eax, %eax                     #  3779  0x6f76d  2      
  movb %cl, (%r15,%rax,1)             #  3780  0x6f76f  4      
  jmpq .L_6eea0                       #  3781  0x6f773  5      
  nop                                 #  3782  0x6f778  1      
  nop                                 #  3783  0x6f779  1      
.L_70d00:                             #        0x6f77a  0      
  movq 0xc8(%rsp), %rbx               #  3784  0x6f77a  8      
  movl %ebx, %ebx                     #  3785  0x6f782  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  3786  0x6f784  6      
  orl $0x40, %eax                     #  3787  0x6f78a  3      
  movl %ebx, %ebx                     #  3788  0x6f78d  2      
  movw %ax, 0xc(%r15,%rbx,1)          #  3789  0x6f78f  6      
  jmpq .L_6d2e0                       #  3790  0x6f795  5      
.L_70d20:                             #        0x6f79a  0      
  movl 0x114(%rsp), %eax              #  3791  0x6f79a  7      
  addl 0x12c(%rsp), %eax              #  3792  0x6f7a1  7      
  imull 0x140(%rsp), %eax             #  3793  0x6f7a8  8      
  movl %esi, 0x11c(%rsp)              #  3794  0x6f7b0  7      
  nop                                 #  3795  0x6f7b7  1      
  movq %r8, 0xf0(%rsp)                #  3796  0x6f7b8  8      
  addl %eax, 0xc4(%rsp)               #  3797  0x6f7c0  7      
  jmpq .L_70560                       #  3798  0x6f7c7  5      
  nop                                 #  3799  0x6f7cc  1      
.L_70d60:                             #        0x6f7cd  0      
  testl %ecx, %ecx                    #  3800  0x6f7cd  2      
  movl $0x1, %eax                     #  3801  0x6f7cf  5      
  jg .L_70d80                         #  3802  0x6f7d4  6      
  movb $0x2, %al                      #  3803  0x6f7da  2      
  subl %ecx, %eax                     #  3804  0x6f7dc  2      
  nop                                 #  3805  0x6f7de  1      
  nop                                 #  3806  0x6f7df  1      
.L_70d80:                             #        0x6f7e0  0      
  addl 0x118(%rsp), %eax              #  3807  0x6f7e0  7      
  movl %eax, 0xc4(%rsp)               #  3808  0x6f7e7  7      
  jmpq .L_6ef20                       #  3809  0x6f7ee  5      
  nop                                 #  3810  0x6f7f3  1      
.L_70da0:                             #        0x6f7f4  0      
  movl %ecx, 0xc4(%rsp)               #  3811  0x6f7f4  7      
  jmpq .L_6ef20                       #  3812  0x6f7fb  5      
  nop                                 #  3813  0x6f800  1      
  nop                                 #  3814  0x6f801  1      
.L_70dc0:                             #        0x6f802  0      
  movl 0x28c(%rsp), %ecx              #  3815  0x6f802  7      
  jmpq .L_703a0                       #  3816  0x6f809  5      
  nop                                 #  3817  0x6f80e  1      
  nop                                 #  3818  0x6f80f  1      
.L_70de0:                             #        0x6f810  0      
  testb $0x1, %r13b                   #  3819  0x6f810  4      
  je .L_70520                         #  3820  0x6f814  6      
  jmpq .L_70500                       #  3821  0x6f81a  5      
  xchgw %ax, %ax                      #  3822  0x6f81f  3      
  nop                                 #  3823  0x6f822  1      
.L_70e00:                             #        0x6f823  0      
  leal 0x1(%r10), %esi                #  3824  0x6f823  4      
  movl %r14d, %edi                    #  3825  0x6f827  3      
  movl %r10d, 0x90(%rsp)              #  3826  0x6f82a  8      
  nop                                 #  3827  0x6f832  1      
  callq ._malloc_r                    #  3828  0x6f833  5      
  movl %eax, %eax                     #  3829  0x6f838  2      
  movl 0x90(%rsp), %r10d              #  3830  0x6f83a  8      
  testq %rax, %rax                    #  3831  0x6f842  3      
  movq %rax, 0xe8(%rsp)               #  3832  0x6f845  8      
  je .L_71120                         #  3833  0x6f84d  6      
  nop                                 #  3834  0x6f853  1      
  cmpl $0x67, 0x100(%rsp)             #  3835  0x6f854  8      
  movq 0xe8(%rsp), %rdx               #  3836  0x6f85c  8      
  movq %rdx, 0xb0(%rsp)               #  3837  0x6f864  8      
  sete %r11b                          #  3838  0x6f86c  4      
  nop                                 #  3839  0x6f870  1      
  cmpl $0x47, 0x100(%rsp)             #  3840  0x6f871  8      
  sete %al                            #  3841  0x6f879  3      
  orl %eax, %r11d                     #  3842  0x6f87c  3      
  jmpq .L_6ece0                       #  3843  0x6f87f  5      
  nop                                 #  3844  0x6f884  1      
.L_70e80:                             #        0x6f885  0      
  negl %ecx                           #  3845  0x6f885  2      
  movb $0x2d, 0x271(%rsp)             #  3846  0x6f887  8      
  jmpq .L_70400                       #  3847  0x6f88f  5      
  xchgw %ax, %ax                      #  3848  0x6f894  3      
  nop                                 #  3849  0x6f897  1      
.L_70ea0:                             #        0x6f898  0      
  leal 0x270(%rsp), %esi              #  3850  0x6f898  7      
  movb $0x30, 0x272(%rsp)             #  3851  0x6f89f  8      
  leaq 0x4(%rsi), %rax                #  3852  0x6f8a7  4      
  leaq 0x3(%rsi), %rdx                #  3853  0x6f8ab  4      
  jmpq .L_70ac0                       #  3854  0x6f8af  5      
  nop                                 #  3855  0x6f8b4  1      
.L_70ec0:                             #        0x6f8b5  0      
  cmpl $0x67, 0x100(%rsp)             #  3856  0x6f8b5  8      
  movq $0x0, 0xe8(%rsp)               #  3857  0x6f8bd  12     
  movl $0x6, %r10d                    #  3858  0x6f8c9  6      
  sete %r11b                          #  3859  0x6f8cf  4      
  xchgw %ax, %ax                      #  3860  0x6f8d3  3      
  cmpl $0x47, 0x100(%rsp)             #  3861  0x6f8d6  8      
  sete %al                            #  3862  0x6f8de  3      
  orl %eax, %r11d                     #  3863  0x6f8e1  3      
  jmpq .L_6ece0                       #  3864  0x6f8e4  5      
  nop                                 #  3865  0x6f8e9  1      
.L_70f00:                             #        0x6f8ea  0      
  movq 0xe0(%rsp), %rsi               #  3866  0x6f8ea  8      
  movl %esi, %esi                     #  3867  0x6f8f2  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3868  0x6f8f4  5      
  leal 0x8(%rax), %edx                #  3869  0x6f8f9  3      
  movl %esi, %esi                     #  3870  0x6f8fc  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3871  0x6f8fe  5      
  jmpq .L_701a0                       #  3872  0x6f903  5      
  xchgw %ax, %ax                      #  3873  0x6f908  3      
.L_70f20:                             #        0x6f90b  0      
  movl 0x28c(%rsp), %ecx              #  3874  0x6f90b  7      
  movl $0x66, 0x100(%rsp)             #  3875  0x6f912  11     
  jmpq .L_700a0                       #  3876  0x6f91d  5      
  nop                                 #  3877  0x6f922  1      
.L_70f40:                             #        0x6f923  0      
  movl $0x1, %r11d                    #  3878  0x6f923  6      
  movq $0x0, 0xe8(%rsp)               #  3879  0x6f929  12     
  movl $0x1, %r10d                    #  3880  0x6f935  6      
  jmpq .L_6ece0                       #  3881  0x6f93b  5      
  nop                                 #  3882  0x6f940  1      
.L_70f60:                             #        0x6f941  0      
  xorpd %xmm1, %xmm1                  #  3883  0x6f941  4      
  movsd 0xb8(%rsp), %xmm0             #  3884  0x6f945  9      
  ucomisd %xmm1, %xmm0                #  3885  0x6f94e  4      
  jne .L_71080                        #  3886  0x6f952  6      
  jp .L_71080                         #  3887  0x6f958  6      
  nop                                 #  3888  0x6f95e  1      
  movl 0x28c(%rsp), %eax              #  3889  0x6f95f  7      
  jmpq .L_6ee60                       #  3890  0x6f966  5      
  nop                                 #  3891  0x6f96b  1      
  nop                                 #  3892  0x6f96c  1      
.L_70fa0:                             #        0x6f96d  0      
  testl %r10d, %r10d                  #  3893  0x6f96d  3      
  jne .L_70fc0                        #  3894  0x6f970  6      
  testb $0x1, %r13b                   #  3895  0x6f976  4      
  movl $0x1, 0xc4(%rsp)               #  3896  0x6f97a  11     
  je .L_6ef20                         #  3897  0x6f985  6      
  nop                                 #  3898  0x6f98b  1      
.L_70fc0:                             #        0x6f98c  0      
  addl $0x2, %r10d                    #  3899  0x6f98c  4      
  movl %r10d, 0xc4(%rsp)              #  3900  0x6f990  8      
  jmpq .L_6ef20                       #  3901  0x6f998  5      
  nop                                 #  3902  0x6f99d  1      
.L_70fe0:                             #        0x6f99e  0      
  movq 0xe0(%rsp), %rax               #  3903  0x6f99e  8      
  movl %eax, %eax                     #  3904  0x6f9a6  2      
  movl (%r15,%rax,1), %ecx            #  3905  0x6f9a8  4      
  cmpl $0x2f, %ecx                    #  3906  0x6f9ac  3      
  ja .L_710a0                         #  3907  0x6f9af  6      
  movq %rax, %rsi                     #  3908  0x6f9b5  3      
  nop                                 #  3909  0x6f9b8  1      
  movl %eax, %eax                     #  3910  0x6f9b9  2      
  movl 0xc(%r15,%rax,1), %eax         #  3911  0x6f9bb  5      
  addl %ecx, %eax                     #  3912  0x6f9c0  2      
  addl $0x8, %ecx                     #  3913  0x6f9c2  3      
  movl %esi, %esi                     #  3914  0x6f9c5  2      
  movl %ecx, (%r15,%rsi,1)            #  3915  0x6f9c7  4      
  nop                                 #  3916  0x6f9cb  1      
.L_71020:                             #        0x6f9cc  0      
  movl %eax, %eax                     #  3917  0x6f9cc  2      
  movl (%r15,%rax,1), %r10d           #  3918  0x6f9ce  4      
  testl %r10d, %r10d                  #  3919  0x6f9d2  3      
  jns .L_6c5c0                        #  3920  0x6f9d5  6      
  movl %r12d, %r12d                   #  3921  0x6f9db  3      
  movzbl (%r15,%r12,1), %eax          #  3922  0x6f9de  5      
  orl $0xffffffff, %r10d              #  3923  0x6f9e3  7      
  jmpq .L_6bd60                       #  3924  0x6f9ea  5      
.L_71040:                             #        0x6f9ef  0      
  movq 0xc8(%rsp), %rdx               #  3925  0x6f9ef  8      
  movl %edx, %edx                     #  3926  0x6f9f7  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  3927  0x6f9f9  6      
  orl $0x40, %eax                     #  3928  0x6f9ff  3      
  movl %edx, %edx                     #  3929  0x6fa02  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  3930  0x6fa04  6      
  jmpq .L_6d2e0                       #  3931  0x6fa0a  5      
.L_71060:                             #        0x6fa0f  0      
  movl %edi, %edi                     #  3932  0x6fa0f  2      
  movzbl 0xa(%r15,%rdi,1), %ecx       #  3933  0x6fa11  6      
  jmpq .L_70ce0                       #  3934  0x6fa17  5      
  nop                                 #  3935  0x6fa1c  1      
  nop                                 #  3936  0x6fa1d  1      
.L_71080:                             #        0x6fa1e  0      
  movl $0x1, %eax                     #  3937  0x6fa1e  5      
  subl 0xc4(%rsp), %eax               #  3938  0x6fa23  7      
  movl %eax, 0x28c(%rsp)              #  3939  0x6fa2a  7      
  jmpq .L_6ee60                       #  3940  0x6fa31  5      
  nop                                 #  3941  0x6fa36  1      
.L_710a0:                             #        0x6fa37  0      
  movq 0xe0(%rsp), %rcx               #  3942  0x6fa37  8      
  movq 0xe0(%rsp), %rsi               #  3943  0x6fa3f  8      
  movl %ecx, %ecx                     #  3944  0x6fa47  2      
  movl 0x8(%r15,%rcx,1), %eax         #  3945  0x6fa49  5      
  leal 0x8(%rax), %ecx                #  3946  0x6fa4e  3      
  nop                                 #  3947  0x6fa51  1      
  movl %esi, %esi                     #  3948  0x6fa52  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  3949  0x6fa54  5      
  jmpq .L_71020                       #  3950  0x6fa59  5      
  nop                                 #  3951  0x6fa5e  1      
  nop                                 #  3952  0x6fa5f  1      
.L_710e0:                             #        0x6fa60  0      
  movl %r14d, %r14d                   #  3953  0x6fa60  3      
  movl $0xc, (%r15,%r14,1)            #  3954  0x6fa63  8      
  movl $0xffffffff, 0xd0(%rsp)        #  3955  0x6fa6b  11     
  jmpq .L_6d300                       #  3956  0x6fa76  5      
  nop                                 #  3957  0x6fa7b  1      
.L_71100:                             #        0x6fa7c  0      
  movq 0xc8(%rsp), %rsi               #  3958  0x6fa7c  8      
  movl %esi, %esi                     #  3959  0x6fa84  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3960  0x6fa86  6      
  orl $0x40, %eax                     #  3961  0x6fa8c  3      
  movl %esi, %esi                     #  3962  0x6fa8f  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  3963  0x6fa91  6      
  jmpq .L_6d2e0                       #  3964  0x6fa97  5      
.L_71120:                             #        0x6fa9c  0      
  movq 0xc8(%rsp), %rcx               #  3965  0x6fa9c  8      
  movl %ecx, %ecx                     #  3966  0x6faa4  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  3967  0x6faa6  6      
  orl $0x40, %eax                     #  3968  0x6faac  3      
  movl %ecx, %ecx                     #  3969  0x6faaf  2      
  movw %ax, 0xc(%r15,%rcx,1)          #  3970  0x6fab1  6      
  jmpq .L_6d2e0                       #  3971  0x6fab7  5      
.L_71140:                             #        0x6fabc  0      
  movq %rcx, %rdx                     #  3972  0x6fabc  3      
  jmpq .L_6eea0                       #  3973  0x6fabf  5      
  nop                                 #  3974  0x6fac4  1      
  nop                                 #  3975  0x6fac5  1      
.L_71160:                             #        0x6fac6  0      
  leal 0x270(%rsp), %esi              #  3976  0x6fac6  7      
  leaq 0x2(%rsi), %rax                #  3977  0x6facd  4      
  jmpq .L_704c0                       #  3978  0x6fad1  5      
  nop                                 #  3979  0x6fad6  1      
  nop                                 #  3980  0x6fad7  1      
  nop                                 #  3981  0x6fad8  1      
  nop                                 #  3982  0x6fad9  1      
  nop                                 #  3983  0x6fada  1      
  nop                                 #  3984  0x6fadb  1      
  nop                                 #  3985  0x6fadc  1      
  nop                                 #  3986  0x6fadd  1      
  nop                                 #  3987  0x6fade  1      
  nop                                 #  3988  0x6fadf  1      
  nop                                 #  3989  0x6fae0  1      
  nop                                 #  3990  0x6fae1  1      
  nop                                 #  3991  0x6fae2  1      
  nop                                 #  3992  0x6fae3  1      
  nop                                 #  3993  0x6fae4  1      
  nop                                 #  3994  0x6fae5  1      
                                                               
.size _svfprintf_r, .-_svfprintf_r

