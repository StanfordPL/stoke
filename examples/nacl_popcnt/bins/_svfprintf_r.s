  .text
  .globl _svfprintf_r
  .type _svfprintf_r, @function

#! file-offset 0x6ba40
#! rip-offset  0x6ba40
#! capacity    22496 bytes

# Text                                #  Line  RIP      Bytes  
._svfprintf_r:                        #        0x6ba40  0      
  pushq %r14                          #  1     0x6ba40  3      
  movl %edi, %r14d                    #  2     0x6ba43  3      
  movl %esi, %esi                     #  3     0x6ba46  2      
  movl %ecx, %ecx                     #  4     0x6ba48  2      
  movl %r14d, %edi                    #  5     0x6ba4a  3      
  pushq %r13                          #  6     0x6ba4d  3      
  pushq %r12                          #  7     0x6ba50  3      
  pushq %rbx                          #  8     0x6ba53  2      
  movl %edx, %ebx                     #  9     0x6ba55  2      
  subl $0x2a8, %esp                   #  10    0x6ba57  6      
  addq %r15, %rsp                     #  11    0x6ba5d  3      
  nop                                 #  12    0x6ba60  1      
  movq %rsi, 0xc8(%rsp)               #  13    0x6ba61  8      
  movq %rcx, 0xe0(%rsp)               #  14    0x6ba69  8      
  nop                                 #  15    0x6ba71  1      
  callq ._localeconv_r                #  16    0x6ba72  5      
  movl %eax, %eax                     #  17    0x6ba77  2      
  movl %eax, %eax                     #  18    0x6ba79  2      
  movl (%r15,%rax,1), %eax            #  19    0x6ba7b  4      
  movl %eax, %edi                     #  20    0x6ba7f  2      
  movq %rax, 0x120(%rsp)              #  21    0x6ba81  8      
  nop                                 #  22    0x6ba89  1      
  callq .strlen                       #  23    0x6ba8a  5      
  movl %eax, 0x13c(%rsp)              #  24    0x6ba8f  7      
  leal 0x260(%rsp), %eax              #  25    0x6ba96  7      
  movl $0x8, %edx                     #  26    0x6ba9d  5      
  xorl %esi, %esi                     #  27    0x6baa2  2      
  movl %eax, %edi                     #  28    0x6baa4  2      
  movq %rax, 0x78(%rsp)               #  29    0x6baa6  5      
  nop                                 #  30    0x6baab  1      
  nop                                 #  31    0x6baac  1      
  nop                                 #  32    0x6baad  1      
  callq .memset                       #  33    0x6baae  5      
  movq 0xc8(%rsp), %rdx               #  34    0x6bab3  8      
  movl %edx, %edx                     #  35    0x6babb  2      
  cmpb $0x0, 0xc(%r15,%rdx,1)         #  36    0x6babd  6      
  jns .L_6bb20                        #  37    0x6bac3  6      
  movl %edx, %edx                     #  38    0x6bac9  2      
  movl 0x10(%r15,%rdx,1), %esi        #  39    0x6bacb  5      
  testl %esi, %esi                    #  40    0x6bad0  2      
  nop                                 #  41    0x6bad2  1      
  je .L_6fd20                         #  42    0x6bad3  6      
  nop                                 #  43    0x6bad9  1      
  nop                                 #  44    0x6bada  1      
.L_6bb20:                             #        0x6badb  0      
  leal 0x1e0(%rsp), %eax              #  45    0x6badb  7      
  leal 0x170(%rsp), %ecx              #  46    0x6bae2  7      
  leal 0x288(%rsp), %edx              #  47    0x6bae9  7      
  movq %rbx, 0xb0(%rsp)               #  48    0x6baf0  8      
  nop                                 #  49    0x6baf8  1      
  leal 0x1e0(%rsp), %ebx              #  50    0x6baf9  7      
  movl $0x0, 0x228(%rsp)              #  51    0x6bb00  11     
  movq %rax, 0x70(%rsp)               #  52    0x6bb0b  5      
  movl %eax, 0x220(%rsp)              #  53    0x6bb10  7      
  xorl %eax, %eax                     #  54    0x6bb17  2      
  movq %rax, 0x130(%rsp)              #  55    0x6bb19  8      
  movq %rcx, 0x68(%rsp)               #  56    0x6bb21  5      
  movl 0x68(%rsp), %eax               #  57    0x6bb26  4      
  movl $0x0, 0x224(%rsp)              #  58    0x6bb2a  11     
  nop                                 #  59    0x6bb35  1      
  movl $0x0, 0x118(%rsp)              #  60    0x6bb36  11     
  movq $0x0, 0x148(%rsp)              #  61    0x6bb41  12     
  nop                                 #  62    0x6bb4d  1      
  movl $0x0, 0x144(%rsp)              #  63    0x6bb4e  11     
  movq $0x0, 0xf0(%rsp)               #  64    0x6bb59  12     
  addl $0x64, %eax                    #  65    0x6bb65  3      
  nop                                 #  66    0x6bb68  1      
  movl $0x0, 0x140(%rsp)              #  67    0x6bb69  11     
  movq $0x0, 0x150(%rsp)              #  68    0x6bb74  12     
  movl %eax, %eax                     #  69    0x6bb80  2      
  nop                                 #  70    0x6bb82  1      
  movl $0x0, 0xd0(%rsp)               #  71    0x6bb83  11     
  movq %rdx, 0x60(%rsp)               #  72    0x6bb8e  5      
  movl %eax, %esi                     #  73    0x6bb93  2      
  movq %rax, 0x108(%rsp)              #  74    0x6bb95  8      
  nop                                 #  75    0x6bb9d  1      
  leal 0x2a0(%rsp), %eax              #  76    0x6bb9e  7      
  subl $0x1, %esi                     #  77    0x6bba5  3      
  subl $0x69, %eax                    #  78    0x6bba8  3      
  movq %rsi, 0x158(%rsp)              #  79    0x6bbab  8      
  movq %rax, 0x168(%rsp)              #  80    0x6bbb3  8      
  nop                                 #  81    0x6bbbb  1      
.L_6bc20:                             #        0x6bbbc  0      
  movq 0xb0(%rsp), %r12               #  82    0x6bbbc  8      
  movq %rbx, %r13                     #  83    0x6bbc4  3      
  jmpq .L_6bc80                       #  84    0x6bbc7  5      
  nop                                 #  85    0x6bbcc  1      
  nop                                 #  86    0x6bbcd  1      
.L_6bc40:                             #        0x6bbce  0      
  cmpl $0x25, 0x288(%rsp)             #  87    0x6bbce  8      
  je .L_6bd40                         #  88    0x6bbd6  6      
  nop                                 #  89    0x6bbdc  1      
  nop                                 #  90    0x6bbdd  1      
.L_6bc60:                             #        0x6bbde  0      
  leal (%rax,%r12,1), %r12d           #  91    0x6bbde  4      
  nop                                 #  92    0x6bbe2  1      
  nop                                 #  93    0x6bbe3  1      
.L_6bc80:                             #        0x6bbe4  0      
  movl 0xffc4fd6(%rip), %ebx          #  94    0x6bbe4  6      
  nop                                 #  95    0x6bbea  1      
  nop                                 #  96    0x6bbeb  1      
  callq .__locale_charset             #  97    0x6bbec  5      
  movl %eax, %r8d                     #  98    0x6bbf1  3      
  movq %r8, 0x88(%rsp)                #  99    0x6bbf4  8      
  nop                                 #  100   0x6bbfc  1      
  nop                                 #  101   0x6bbfd  1      
  callq .__locale_mb_cur_max          #  102   0x6bbfe  5      
  movl 0x78(%rsp), %r9d               #  103   0x6bc03  5      
  movl %eax, %ecx                     #  104   0x6bc08  2      
  movq 0x88(%rsp), %r8                #  105   0x6bc0a  8      
  movl %r12d, %edx                    #  106   0x6bc12  3      
  movl 0x60(%rsp), %esi               #  107   0x6bc15  4      
  movl %r14d, %edi                    #  108   0x6bc19  3      
  nop                                 #  109   0x6bc1c  1      
  nop                                 #  110   0x6bc1d  1      
  nop                                 #  111   0x6bc1e  1      
  andl $0xffffffe0, %ebx              #  112   0x6bc1f  6      
  addq %r15, %rbx                     #  113   0x6bc25  3      
  callq %rbx                          #  114   0x6bc28  2      
  cmpl $0x0, %eax                     #  115   0x6bc2a  3      
  je .L_6bd40                         #  116   0x6bc2d  6      
  jge .L_6bc40                        #  117   0x6bc33  6      
  movl 0x78(%rsp), %edi               #  118   0x6bc39  4      
  movl $0x8, %edx                     #  119   0x6bc3d  5      
  xorl %esi, %esi                     #  120   0x6bc42  2      
  nop                                 #  121   0x6bc44  1      
  callq .memset                       #  122   0x6bc45  5      
  movl $0x1, %eax                     #  123   0x6bc4a  5      
  jmpq .L_6bc60                       #  124   0x6bc4f  5      
  nop                                 #  125   0x6bc54  1      
  nop                                 #  126   0x6bc55  1      
.L_6bd40:                             #        0x6bc56  0      
  movl %r12d, %ecx                    #  127   0x6bc56  3      
  subl 0xb0(%rsp), %ecx               #  128   0x6bc59  7      
  movq %r13, %rbx                     #  129   0x6bc60  3      
  movl %eax, %r13d                    #  130   0x6bc63  3      
  je .L_6bdc0                         #  131   0x6bc66  6      
  movl %ebx, %ebx                     #  132   0x6bc6c  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  133   0x6bc6e  5      
  movl 0x224(%rsp), %eax              #  134   0x6bc73  7      
  movl 0xb0(%rsp), %edx               #  135   0x6bc7a  7      
  addl %ecx, 0x228(%rsp)              #  136   0x6bc81  7      
  addl $0x1, %eax                     #  137   0x6bc88  3      
  cmpl $0x7, %eax                     #  138   0x6bc8b  3      
  movl %ebx, %ebx                     #  139   0x6bc8e  2      
  movl %edx, (%r15,%rbx,1)            #  140   0x6bc90  4      
  nop                                 #  141   0x6bc94  1      
  movl %eax, 0x224(%rsp)              #  142   0x6bc95  7      
  jg .L_6c720                         #  143   0x6bc9c  6      
  addl $0x8, %ebx                     #  144   0x6bca2  3      
  nop                                 #  145   0x6bca5  1      
  nop                                 #  146   0x6bca6  1      
.L_6bda0:                             #        0x6bca7  0      
  addl %ecx, 0xd0(%rsp)               #  147   0x6bca7  7      
  nop                                 #  148   0x6bcae  1      
  nop                                 #  149   0x6bcaf  1      
.L_6bdc0:                             #        0x6bcb0  0      
  testl %r13d, %r13d                  #  150   0x6bcb0  3      
  je .L_6d2e0                         #  151   0x6bcb3  6      
  addl $0x1, %r12d                    #  152   0x6bcb9  4      
  movl $0xffffffff, %r10d             #  153   0x6bcbd  6      
  movb $0x0, 0x29f(%rsp)              #  154   0x6bcc3  8      
  xorl %r13d, %r13d                   #  155   0x6bccb  3      
  xchgw %ax, %ax                      #  156   0x6bcce  3      
  movl %r12d, %r12d                   #  157   0x6bcd1  3      
  movzbl (%r15,%r12,1), %eax          #  158   0x6bcd4  5      
  movl %r10d, %edx                    #  159   0x6bcd9  3      
  movl $0x0, 0xd4(%rsp)               #  160   0x6bcdc  11     
  nop                                 #  161   0x6bce7  1      
.L_6be00:                             #        0x6bce8  0      
  movsbl %al, %eax                    #  162   0x6bce8  3      
  addl $0x1, %r12d                    #  163   0x6bceb  4      
  nop                                 #  164   0x6bcef  1      
  nop                                 #  165   0x6bcf0  1      
.L_6be20:                             #        0x6bcf1  0      
  leal -0x20(%rax), %ecx              #  166   0x6bcf1  3      
  cmpl $0x5a, %ecx                    #  167   0x6bcf4  3      
  jbe .L_6c580                        #  168   0x6bcf7  6      
  nop                                 #  169   0x6bcfd  1      
  nop                                 #  170   0x6bcfe  1      
  testl %eax, %eax                    #  171   0x6bcff  2      
  movl %eax, 0x100(%rsp)              #  172   0x6bd01  7      
  je .L_6d2e0                         #  173   0x6bd08  6      
  leal 0x170(%rsp), %ecx              #  174   0x6bd0e  7      
  movb %al, 0x170(%rsp)               #  175   0x6bd15  7      
  nop                                 #  176   0x6bd1c  1      
  movb $0x0, 0x29f(%rsp)              #  177   0x6bd1d  8      
  xorl %eax, %eax                     #  178   0x6bd25  2      
  movl $0x1, 0xb8(%rsp)               #  179   0x6bd27  11     
  nop                                 #  180   0x6bd32  1      
  movq $0x0, 0xe8(%rsp)               #  181   0x6bd33  12     
  movl $0x1, 0xc4(%rsp)               #  182   0x6bd3f  11     
  nop                                 #  183   0x6bd4a  1      
  movl $0x0, 0x104(%rsp)              #  184   0x6bd4b  11     
  movl $0x0, 0x114(%rsp)              #  185   0x6bd56  11     
  nop                                 #  186   0x6bd61  1      
  movl $0x0, 0x12c(%rsp)              #  187   0x6bd62  11     
  movl $0x0, 0x11c(%rsp)              #  188   0x6bd6d  11     
  movq %rcx, 0xb0(%rsp)               #  189   0x6bd78  8      
  xchgw %ax, %ax                      #  190   0x6bd80  3      
.L_6bee0:                             #        0x6bd83  0      
  movl 0xb8(%rsp), %edx               #  191   0x6bd83  7      
  movl %r13d, %esi                    #  192   0x6bd8a  3      
  addl $0x2, %edx                     #  193   0x6bd8d  3      
  andl $0x2, %esi                     #  194   0x6bd90  3      
  cmovel 0xb8(%rsp), %edx             #  195   0x6bd93  8      
  movl %esi, 0xd8(%rsp)               #  196   0x6bd9b  7      
  nop                                 #  197   0x6bda2  1      
  movl %edx, 0xb8(%rsp)               #  198   0x6bda3  7      
  movl %r13d, %edx                    #  199   0x6bdaa  3      
  andl $0x84, %edx                    #  200   0x6bdad  3      
  movl %edx, 0xfc(%rsp)               #  201   0x6bdb0  7      
  jne .L_6c080                        #  202   0x6bdb7  6      
  nop                                 #  203   0x6bdbd  1      
  movl 0xd4(%rsp), %ecx               #  204   0x6bdbe  7      
  subl 0xb8(%rsp), %ecx               #  205   0x6bdc5  7      
  testl %ecx, %ecx                    #  206   0x6bdcc  2      
  jle .L_6c080                        #  207   0x6bdce  6      
  cmpl $0x10, %ecx                    #  208   0x6bdd4  3      
  jle .L_6c040                        #  209   0x6bdd7  6      
  nop                                 #  210   0x6bddd  1      
  leal 0x220(%rsp), %esi              #  211   0x6bdde  7      
  movq %rbx, %rax                     #  212   0x6bde5  3      
  movl %r13d, 0x164(%rsp)             #  213   0x6bde8  8      
  movl %ecx, %ebx                     #  214   0x6bdf0  2      
  movq %r12, %r13                     #  215   0x6bdf2  3      
  movq 0xc8(%rsp), %r12               #  216   0x6bdf5  8      
  nop                                 #  217   0x6bdfd  1      
  movq %rsi, 0x50(%rsp)               #  218   0x6bdfe  5      
  jmpq .L_6bfa0                       #  219   0x6be03  5      
  nop                                 #  220   0x6be08  1      
  nop                                 #  221   0x6be09  1      
.L_6bf80:                             #        0x6be0a  0      
  subl $0x10, %ebx                    #  222   0x6be0a  3      
  addl $0x8, %eax                     #  223   0x6be0d  3      
  cmpl $0x10, %ebx                    #  224   0x6be10  3      
  jle .L_6c020                        #  225   0x6be13  6      
  xchgw %ax, %ax                      #  226   0x6be19  3      
  nop                                 #  227   0x6be1c  1      
.L_6bfa0:                             #        0x6be1d  0      
  movl %eax, %eax                     #  228   0x6be1d  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  229   0x6be1f  9      
  movl 0x224(%rsp), %edx              #  230   0x6be28  7      
  addl $0x10, 0x228(%rsp)             #  231   0x6be2f  8      
  nop                                 #  232   0x6be37  1      
  movl %eax, %eax                     #  233   0x6be38  2      
  movl $0x10023f10, (%r15,%rax,1)     #  234   0x6be3a  8      
  addl $0x1, %edx                     #  235   0x6be42  3      
  cmpl $0x7, %edx                     #  236   0x6be45  3      
  movl %edx, 0x224(%rsp)              #  237   0x6be48  7      
  jle .L_6bf80                        #  238   0x6be4f  6      
  movl 0x50(%rsp), %edx               #  239   0x6be55  4      
  movl %r12d, %esi                    #  240   0x6be59  3      
  movl %r14d, %edi                    #  241   0x6be5c  3      
  nop                                 #  242   0x6be5f  1      
  nop                                 #  243   0x6be60  1      
  callq .__ssprint_r                  #  244   0x6be61  5      
  testl %eax, %eax                    #  245   0x6be66  2      
  jne .L_6d340                        #  246   0x6be68  6      
  subl $0x10, %ebx                    #  247   0x6be6e  3      
  leal 0x1e0(%rsp), %eax              #  248   0x6be71  7      
  cmpl $0x10, %ebx                    #  249   0x6be78  3      
  jg .L_6bfa0                         #  250   0x6be7b  6      
  nop                                 #  251   0x6be81  1      
.L_6c020:                             #        0x6be82  0      
  movq %r13, %r12                     #  252   0x6be82  3      
  movl 0x164(%rsp), %r13d             #  253   0x6be85  8      
  movl %ebx, %ecx                     #  254   0x6be8d  2      
  movq %rax, %rbx                     #  255   0x6be8f  3      
  nop                                 #  256   0x6be92  1      
  nop                                 #  257   0x6be93  1      
.L_6c040:                             #        0x6be94  0      
  movl %ebx, %ebx                     #  258   0x6be94  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  259   0x6be96  5      
  movl 0x224(%rsp), %eax              #  260   0x6be9b  7      
  addl %ecx, 0x228(%rsp)              #  261   0x6bea2  7      
  movl %ebx, %ebx                     #  262   0x6bea9  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  263   0x6beab  8      
  nop                                 #  264   0x6beb3  1      
  addl $0x1, %eax                     #  265   0x6beb4  3      
  cmpl $0x7, %eax                     #  266   0x6beb7  3      
  movl %eax, 0x224(%rsp)              #  267   0x6beba  7      
  jg .L_6dd80                         #  268   0x6bec1  6      
  movzbl 0x29f(%rsp), %eax            #  269   0x6bec7  8      
  addl $0x8, %ebx                     #  270   0x6becf  3      
  xchgw %ax, %ax                      #  271   0x6bed2  3      
.L_6c080:                             #        0x6bed5  0      
  testb %al, %al                      #  272   0x6bed5  2      
  je .L_6c0e0                         #  273   0x6bed7  6      
  leal 0x29f(%rsp), %eax              #  274   0x6bedd  7      
  movl %ebx, %ebx                     #  275   0x6bee4  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  276   0x6bee6  9      
  addl $0x1, 0x228(%rsp)              #  277   0x6beef  8      
  xchgw %ax, %ax                      #  278   0x6bef7  3      
  movl %ebx, %ebx                     #  279   0x6befa  2      
  movl %eax, (%r15,%rbx,1)            #  280   0x6befc  4      
  movl 0x224(%rsp), %eax              #  281   0x6bf00  7      
  addl $0x1, %eax                     #  282   0x6bf07  3      
  cmpl $0x7, %eax                     #  283   0x6bf0a  3      
  movl %eax, 0x224(%rsp)              #  284   0x6bf0d  7      
  jg .L_6daa0                         #  285   0x6bf14  6      
  addl $0x8, %ebx                     #  286   0x6bf1a  3      
  nop                                 #  287   0x6bf1d  1      
  nop                                 #  288   0x6bf1e  1      
.L_6c0e0:                             #        0x6bf1f  0      
  movl 0xd8(%rsp), %r9d               #  289   0x6bf1f  8      
  testl %r9d, %r9d                    #  290   0x6bf27  3      
  je .L_6c140                         #  291   0x6bf2a  6      
  leal 0x290(%rsp), %eax              #  292   0x6bf30  7      
  movl %ebx, %ebx                     #  293   0x6bf37  2      
  movl $0x2, 0x4(%r15,%rbx,1)         #  294   0x6bf39  9      
  nop                                 #  295   0x6bf42  1      
  addl $0x2, 0x228(%rsp)              #  296   0x6bf43  8      
  movl %ebx, %ebx                     #  297   0x6bf4b  2      
  movl %eax, (%r15,%rbx,1)            #  298   0x6bf4d  4      
  movl 0x224(%rsp), %eax              #  299   0x6bf51  7      
  addl $0x1, %eax                     #  300   0x6bf58  3      
  cmpl $0x7, %eax                     #  301   0x6bf5b  3      
  nop                                 #  302   0x6bf5e  1      
  movl %eax, 0x224(%rsp)              #  303   0x6bf5f  7      
  jg .L_6da60                         #  304   0x6bf66  6      
  addl $0x8, %ebx                     #  305   0x6bf6c  3      
  nop                                 #  306   0x6bf6f  1      
  nop                                 #  307   0x6bf70  1      
.L_6c140:                             #        0x6bf71  0      
  cmpl $0x80, 0xfc(%rsp)              #  308   0x6bf71  8      
  je .L_6d680                         #  309   0x6bf79  6      
  nop                                 #  310   0x6bf7f  1      
.L_6c160:                             #        0x6bf80  0      
  movl 0x104(%rsp), %ecx              #  311   0x6bf80  7      
  subl 0xc4(%rsp), %ecx               #  312   0x6bf87  7      
  testl %ecx, %ecx                    #  313   0x6bf8e  2      
  jle .L_6c2c0                        #  314   0x6bf90  6      
  cmpl $0x10, %ecx                    #  315   0x6bf96  3      
  jle .L_6c280                        #  316   0x6bf99  6      
  nop                                 #  317   0x6bf9f  1      
  leal 0x220(%rsp), %edx              #  318   0x6bfa0  7      
  movq %rbx, %rax                     #  319   0x6bfa7  3      
  movl %r13d, 0xd8(%rsp)              #  320   0x6bfaa  8      
  movl %ecx, %ebx                     #  321   0x6bfb2  2      
  movq %r12, %r13                     #  322   0x6bfb4  3      
  movq 0xc8(%rsp), %r12               #  323   0x6bfb7  8      
  nop                                 #  324   0x6bfbf  1      
  movq %rdx, 0x40(%rsp)               #  325   0x6bfc0  5      
  jmpq .L_6c1e0                       #  326   0x6bfc5  5      
  nop                                 #  327   0x6bfca  1      
  nop                                 #  328   0x6bfcb  1      
.L_6c1c0:                             #        0x6bfcc  0      
  subl $0x10, %ebx                    #  329   0x6bfcc  3      
  addl $0x8, %eax                     #  330   0x6bfcf  3      
  cmpl $0x10, %ebx                    #  331   0x6bfd2  3      
  jle .L_6c260                        #  332   0x6bfd5  6      
  xchgw %ax, %ax                      #  333   0x6bfdb  3      
  nop                                 #  334   0x6bfde  1      
.L_6c1e0:                             #        0x6bfdf  0      
  movl %eax, %eax                     #  335   0x6bfdf  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  336   0x6bfe1  9      
  movl 0x224(%rsp), %edx              #  337   0x6bfea  7      
  addl $0x10, 0x228(%rsp)             #  338   0x6bff1  8      
  nop                                 #  339   0x6bff9  1      
  movl %eax, %eax                     #  340   0x6bffa  2      
  movl $0x10023f00, (%r15,%rax,1)     #  341   0x6bffc  8      
  addl $0x1, %edx                     #  342   0x6c004  3      
  cmpl $0x7, %edx                     #  343   0x6c007  3      
  movl %edx, 0x224(%rsp)              #  344   0x6c00a  7      
  jle .L_6c1c0                        #  345   0x6c011  6      
  movl 0x40(%rsp), %edx               #  346   0x6c017  4      
  movl %r12d, %esi                    #  347   0x6c01b  3      
  movl %r14d, %edi                    #  348   0x6c01e  3      
  nop                                 #  349   0x6c021  1      
  nop                                 #  350   0x6c022  1      
  callq .__ssprint_r                  #  351   0x6c023  5      
  testl %eax, %eax                    #  352   0x6c028  2      
  jne .L_6d340                        #  353   0x6c02a  6      
  subl $0x10, %ebx                    #  354   0x6c030  3      
  leal 0x1e0(%rsp), %eax              #  355   0x6c033  7      
  cmpl $0x10, %ebx                    #  356   0x6c03a  3      
  jg .L_6c1e0                         #  357   0x6c03d  6      
  nop                                 #  358   0x6c043  1      
.L_6c260:                             #        0x6c044  0      
  movq %r13, %r12                     #  359   0x6c044  3      
  movl 0xd8(%rsp), %r13d              #  360   0x6c047  8      
  movl %ebx, %ecx                     #  361   0x6c04f  2      
  movq %rax, %rbx                     #  362   0x6c051  3      
  nop                                 #  363   0x6c054  1      
  nop                                 #  364   0x6c055  1      
.L_6c280:                             #        0x6c056  0      
  movl %ebx, %ebx                     #  365   0x6c056  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  366   0x6c058  5      
  movl 0x224(%rsp), %eax              #  367   0x6c05d  7      
  addl %ecx, 0x228(%rsp)              #  368   0x6c064  7      
  movl %ebx, %ebx                     #  369   0x6c06b  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  370   0x6c06d  8      
  nop                                 #  371   0x6c075  1      
  addl $0x1, %eax                     #  372   0x6c076  3      
  cmpl $0x7, %eax                     #  373   0x6c079  3      
  movl %eax, 0x224(%rsp)              #  374   0x6c07c  7      
  jg .L_6da20                         #  375   0x6c083  6      
  addl $0x8, %ebx                     #  376   0x6c089  3      
  nop                                 #  377   0x6c08c  1      
.L_6c2c0:                             #        0x6c08d  0      
  testl $0x100, %r13d                 #  378   0x6c08d  7      
  jne .L_6d3e0                        #  379   0x6c094  6      
  movl 0xc4(%rsp), %esi               #  380   0x6c09a  7      
  movl 0xb0(%rsp), %ecx               #  381   0x6c0a1  7      
  nop                                 #  382   0x6c0a8  1      
  movl %ebx, %ebx                     #  383   0x6c0a9  2      
  movl %esi, 0x4(%r15,%rbx,1)         #  384   0x6c0ab  5      
  addl %esi, 0x228(%rsp)              #  385   0x6c0b0  7      
  movl %ebx, %ebx                     #  386   0x6c0b7  2      
  movl %ecx, (%r15,%rbx,1)            #  387   0x6c0b9  4      
  nop                                 #  388   0x6c0bd  1      
.L_6c300:                             #        0x6c0be  0      
  movl 0x224(%rsp), %eax              #  389   0x6c0be  7      
  addl $0x1, %eax                     #  390   0x6c0c5  3      
  cmpl $0x7, %eax                     #  391   0x6c0c8  3      
  movl %eax, 0x224(%rsp)              #  392   0x6c0cb  7      
  jg .L_6d9a0                         #  393   0x6c0d2  6      
  addl $0x8, %ebx                     #  394   0x6c0d8  3      
  nop                                 #  395   0x6c0db  1      
.L_6c320:                             #        0x6c0dc  0      
  andl $0x4, %r13d                    #  396   0x6c0dc  4      
  je .L_6c4c0                         #  397   0x6c0e0  6      
  movl 0xd4(%rsp), %r13d              #  398   0x6c0e6  8      
  subl 0xb8(%rsp), %r13d              #  399   0x6c0ee  8      
  testl %r13d, %r13d                  #  400   0x6c0f6  3      
  nop                                 #  401   0x6c0f9  1      
  jle .L_6c4c0                        #  402   0x6c0fa  6      
  cmpl $0x10, %r13d                   #  403   0x6c100  4      
  jle .L_6c440                        #  404   0x6c104  6      
  leal 0x220(%rsp), %ecx              #  405   0x6c10a  7      
  movq %rbx, %rax                     #  406   0x6c111  3      
  nop                                 #  407   0x6c114  1      
  movq 0xc8(%rsp), %rbx               #  408   0x6c115  8      
  movq %rcx, 0x8(%rsp)                #  409   0x6c11d  5      
  jmpq .L_6c3a0                       #  410   0x6c122  5      
  xchgw %ax, %ax                      #  411   0x6c127  3      
  nop                                 #  412   0x6c12a  1      
.L_6c380:                             #        0x6c12b  0      
  subl $0x10, %r13d                   #  413   0x6c12b  4      
  addl $0x8, %eax                     #  414   0x6c12f  3      
  cmpl $0x10, %r13d                   #  415   0x6c132  4      
  jle .L_6c420                        #  416   0x6c136  6      
  nop                                 #  417   0x6c13c  1      
.L_6c3a0:                             #        0x6c13d  0      
  movl %eax, %eax                     #  418   0x6c13d  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  419   0x6c13f  9      
  movl 0x224(%rsp), %edx              #  420   0x6c148  7      
  addl $0x10, 0x228(%rsp)             #  421   0x6c14f  8      
  nop                                 #  422   0x6c157  1      
  movl %eax, %eax                     #  423   0x6c158  2      
  movl $0x10023f10, (%r15,%rax,1)     #  424   0x6c15a  8      
  addl $0x1, %edx                     #  425   0x6c162  3      
  cmpl $0x7, %edx                     #  426   0x6c165  3      
  movl %edx, 0x224(%rsp)              #  427   0x6c168  7      
  jle .L_6c380                        #  428   0x6c16f  6      
  movl 0x8(%rsp), %edx                #  429   0x6c175  4      
  movl %ebx, %esi                     #  430   0x6c179  2      
  nop                                 #  431   0x6c17b  1      
  movl %r14d, %edi                    #  432   0x6c17c  3      
  nop                                 #  433   0x6c17f  1      
  nop                                 #  434   0x6c180  1      
  callq .__ssprint_r                  #  435   0x6c181  5      
  testl %eax, %eax                    #  436   0x6c186  2      
  jne .L_6d340                        #  437   0x6c188  6      
  subl $0x10, %r13d                   #  438   0x6c18e  4      
  leal 0x1e0(%rsp), %eax              #  439   0x6c192  7      
  cmpl $0x10, %r13d                   #  440   0x6c199  4      
  jg .L_6c3a0                         #  441   0x6c19d  6      
  nop                                 #  442   0x6c1a3  1      
.L_6c420:                             #        0x6c1a4  0      
  movq %rax, %rbx                     #  443   0x6c1a4  3      
  nop                                 #  444   0x6c1a7  1      
  nop                                 #  445   0x6c1a8  1      
.L_6c440:                             #        0x6c1a9  0      
  movl %ebx, %ebx                     #  446   0x6c1a9  2      
  movl %r13d, 0x4(%r15,%rbx,1)        #  447   0x6c1ab  5      
  movl 0x224(%rsp), %eax              #  448   0x6c1b0  7      
  addl 0x228(%rsp), %r13d             #  449   0x6c1b7  8      
  movl %ebx, %ebx                     #  450   0x6c1bf  2      
  movl $0x10023f10, (%r15,%rbx,1)     #  451   0x6c1c1  8      
  addl $0x1, %eax                     #  452   0x6c1c9  3      
  cmpl $0x7, %eax                     #  453   0x6c1cc  3      
  movl %eax, 0x224(%rsp)              #  454   0x6c1cf  7      
  movl %r13d, 0x228(%rsp)             #  455   0x6c1d6  8      
  jle .L_6c4e0                        #  456   0x6c1de  6      
  movl 0xc8(%rsp), %esi               #  457   0x6c1e4  7      
  xchgw %ax, %ax                      #  458   0x6c1eb  3      
  leal 0x220(%rsp), %edx              #  459   0x6c1ee  7      
  movl %r14d, %edi                    #  460   0x6c1f5  3      
  xchgw %ax, %ax                      #  461   0x6c1f8  3      
  nop                                 #  462   0x6c1fb  1      
  callq .__ssprint_r                  #  463   0x6c1fc  5      
  testl %eax, %eax                    #  464   0x6c201  2      
  jne .L_6d340                        #  465   0x6c203  6      
  nop                                 #  466   0x6c209  1      
  nop                                 #  467   0x6c20a  1      
.L_6c4c0:                             #        0x6c20b  0      
  movl 0x228(%rsp), %r13d             #  468   0x6c20b  8      
  nop                                 #  469   0x6c213  1      
  nop                                 #  470   0x6c214  1      
.L_6c4e0:                             #        0x6c215  0      
  movl 0xd4(%rsp), %ebx               #  471   0x6c215  7      
  cmpl %ebx, 0xb8(%rsp)               #  472   0x6c21c  7      
  movl %ebx, %eax                     #  473   0x6c223  2      
  cmovgel 0xb8(%rsp), %eax            #  474   0x6c225  8      
  addl %eax, 0xd0(%rsp)               #  475   0x6c22d  7      
  nop                                 #  476   0x6c234  1      
  testl %r13d, %r13d                  #  477   0x6c235  3      
  jne .L_6d9e0                        #  478   0x6c238  6      
  nop                                 #  479   0x6c23e  1      
  nop                                 #  480   0x6c23f  1      
.L_6c520:                             #        0x6c240  0      
  cmpq $0x0, 0xe8(%rsp)               #  481   0x6c240  9      
  movl $0x0, 0x224(%rsp)              #  482   0x6c249  11     
  leal 0x1e0(%rsp), %ebx              #  483   0x6c254  7      
  nop                                 #  484   0x6c25b  1      
  je .L_6c560                         #  485   0x6c25c  6      
  movl 0xe8(%rsp), %esi               #  486   0x6c262  7      
  leal 0x1e0(%rsp), %ebx              #  487   0x6c269  7      
  movl %r14d, %edi                    #  488   0x6c270  3      
  nop                                 #  489   0x6c273  1      
  callq ._free_r                      #  490   0x6c274  5      
.L_6c560:                             #        0x6c279  0      
  movq %r12, 0xb0(%rsp)               #  491   0x6c279  8      
  jmpq .L_6bc20                       #  492   0x6c281  5      
  nop                                 #  493   0x6c286  1      
  nop                                 #  494   0x6c287  1      
.L_6c580:                             #        0x6c288  0      
  movl %ecx, %ecx                     #  495   0x6c288  2      
  movl %ecx, %ecx                     #  496   0x6c28a  2      
  movq 0x10023c20(%r15,%rcx,8), %rcx  #  497   0x6c28c  8      
  andl $0xffffffe0, %ecx              #  498   0x6c294  6      
  addq %r15, %rcx                     #  499   0x6c29a  3      
  jmpq %rcx                           #  500   0x6c29d  2      
  nop                                 #  501   0x6c29f  1      
  movl %r14d, %edi                    #  502   0x6c2a0  3      
  movl %edx, 0xa8(%rsp)               #  503   0x6c2a3  7      
  movl %r10d, 0x90(%rsp)              #  504   0x6c2aa  8      
  nop                                 #  505   0x6c2b2  1      
  callq ._localeconv_r                #  506   0x6c2b3  5      
  movl %eax, %eax                     #  507   0x6c2b8  2      
  movl %eax, %eax                     #  508   0x6c2ba  2      
  movl 0x4(%r15,%rax,1), %eax         #  509   0x6c2bc  5      
  movl %eax, %edi                     #  510   0x6c2c1  2      
  movq %rax, 0x150(%rsp)              #  511   0x6c2c3  8      
  nop                                 #  512   0x6c2cb  1      
  callq .strlen                       #  513   0x6c2cc  5      
  movl %r14d, %edi                    #  514   0x6c2d1  3      
  movl %eax, 0x140(%rsp)              #  515   0x6c2d4  7      
  xchgw %ax, %ax                      #  516   0x6c2db  3      
  nop                                 #  517   0x6c2de  1      
  callq ._localeconv_r                #  518   0x6c2df  5      
  movl %eax, %eax                     #  519   0x6c2e4  2      
  movl 0x140(%rsp), %ecx              #  520   0x6c2e6  7      
  movl 0xa8(%rsp), %edx               #  521   0x6c2ed  7      
  movl %eax, %eax                     #  522   0x6c2f4  2      
  movl 0x8(%r15,%rax,1), %eax         #  523   0x6c2f6  5      
  movl 0x90(%rsp), %r10d              #  524   0x6c2fb  8      
  nop                                 #  525   0x6c303  1      
  testl %ecx, %ecx                    #  526   0x6c304  2      
  movq %rax, 0xf0(%rsp)               #  527   0x6c306  8      
  je .L_6c660                         #  528   0x6c30e  6      
  testq %rax, %rax                    #  529   0x6c314  3      
  je .L_6c660                         #  530   0x6c317  6      
  movq 0xf0(%rsp), %rcx               #  531   0x6c31d  8      
  movl %ecx, %ecx                     #  532   0x6c325  2      
  cmpb $0x0, (%r15,%rcx,1)            #  533   0x6c327  5      
  jne .L_6fa00                        #  534   0x6c32c  6      
  nop                                 #  535   0x6c332  1      
  nop                                 #  536   0x6c333  1      
.L_6c660:                             #        0x6c334  0      
  movl %r12d, %r12d                   #  537   0x6c334  3      
  movzbl (%r15,%r12,1), %eax          #  538   0x6c337  5      
  jmpq .L_6be00                       #  539   0x6c33c  5      
  nop                                 #  540   0x6c341  1      
  nop                                 #  541   0x6c342  1      
  orl $0x20, %r13d                    #  542   0x6c343  4      
  movl %r12d, %r12d                   #  543   0x6c347  3      
  movzbl (%r15,%r12,1), %eax          #  544   0x6c34a  5      
  jmpq .L_6be00                       #  545   0x6c34f  5      
  nop                                 #  546   0x6c354  1      
  movq 0xe0(%rsp), %rsi               #  547   0x6c355  8      
  movl %esi, %esi                     #  548   0x6c35d  2      
  movl (%r15,%rsi,1), %eax            #  549   0x6c35f  4      
  cmpl $0x2f, %eax                    #  550   0x6c363  3      
  ja .L_6f260                         #  551   0x6c366  6      
  movl %esi, %esi                     #  552   0x6c36c  2      
  movl 0xc(%r15,%rsi,1), %ecx         #  553   0x6c36e  5      
  addl %eax, %ecx                     #  554   0x6c373  2      
  addl $0x8, %eax                     #  555   0x6c375  3      
  movl %esi, %esi                     #  556   0x6c378  2      
  movl %eax, (%r15,%rsi,1)            #  557   0x6c37a  4      
  nop                                 #  558   0x6c37e  1      
  nop                                 #  559   0x6c37f  1      
.L_6c6e0:                             #        0x6c380  0      
  movl %ecx, %ecx                     #  560   0x6c380  2      
  movl (%r15,%rcx,1), %ecx            #  561   0x6c382  4      
  testl %ecx, %ecx                    #  562   0x6c386  2      
  movl %ecx, 0xd4(%rsp)               #  563   0x6c388  7      
  jns .L_6c660                        #  564   0x6c38f  6      
  negl 0xd4(%rsp)                     #  565   0x6c395  7      
  nop                                 #  566   0x6c39c  1      
  orl $0x4, %r13d                     #  567   0x6c39d  4      
  movl %r12d, %r12d                   #  568   0x6c3a1  3      
  movzbl (%r15,%r12,1), %eax          #  569   0x6c3a4  5      
  jmpq .L_6be00                       #  570   0x6c3a9  5      
  nop                                 #  571   0x6c3ae  1      
.L_6c720:                             #        0x6c3af  0      
  movl 0xc8(%rsp), %esi               #  572   0x6c3af  7      
  leal 0x220(%rsp), %edx              #  573   0x6c3b6  7      
  movl %r14d, %edi                    #  574   0x6c3bd  3      
  movl %ecx, 0x98(%rsp)               #  575   0x6c3c0  7      
  nop                                 #  576   0x6c3c7  1      
  callq .__ssprint_r                  #  577   0x6c3c8  5      
  testl %eax, %eax                    #  578   0x6c3cd  2      
  movl 0x98(%rsp), %ecx               #  579   0x6c3cf  7      
  jne .L_6fea0                        #  580   0x6c3d6  6      
  leal 0x1e0(%rsp), %ebx              #  581   0x6c3dc  7      
  jmpq .L_6bda0                       #  582   0x6c3e3  5      
  nop                                 #  583   0x6c3e8  1      
  movl %r12d, %r12d                   #  584   0x6c3e9  3      
  movzbl (%r15,%r12,1), %eax          #  585   0x6c3ec  5      
  cmpb $0x6c, %al                     #  586   0x6c3f1  2      
  je .L_6f9a0                         #  587   0x6c3f3  6      
  orl $0x10, %r13d                    #  588   0x6c3f9  4      
  jmpq .L_6be00                       #  589   0x6c3fd  5      
  nop                                 #  590   0x6c402  1      
  testb $0x20, %r13b                  #  591   0x6c403  4      
  je .L_6f140                         #  592   0x6c407  6      
  movq 0xe0(%rsp), %rcx               #  593   0x6c40d  8      
  movl %ecx, %ecx                     #  594   0x6c415  2      
  movl (%r15,%rcx,1), %eax            #  595   0x6c417  4      
  cmpl $0x2f, %eax                    #  596   0x6c41b  3      
  nop                                 #  597   0x6c41e  1      
  ja .L_6fc20                         #  598   0x6c41f  6      
  movl %ecx, %ecx                     #  599   0x6c425  2      
  movl 0xc(%r15,%rcx,1), %edx         #  600   0x6c427  5      
  addl %eax, %edx                     #  601   0x6c42c  2      
  addl $0x8, %eax                     #  602   0x6c42e  3      
  movl %ecx, %ecx                     #  603   0x6c431  2      
  movl %eax, (%r15,%rcx,1)            #  604   0x6c433  4      
  nop                                 #  605   0x6c437  1      
.L_6c7c0:                             #        0x6c438  0      
  movl %edx, %edx                     #  606   0x6c438  2      
  movl (%r15,%rdx,1), %eax            #  607   0x6c43a  4      
  movslq 0xd0(%rsp), %rdx             #  608   0x6c43e  8      
  movl %eax, %eax                     #  609   0x6c446  2      
  movq %rdx, (%r15,%rax,1)            #  610   0x6c448  4      
  jmpq .L_6c560                       #  611   0x6c44c  5      
  nop                                 #  612   0x6c451  1      
  testb $0x20, %r13b                  #  613   0x6c452  4      
  movl %eax, 0x100(%rsp)              #  614   0x6c456  7      
  movq $0x10023c01, 0x148(%rsp)       #  615   0x6c45d  12     
  je .L_6ce20                         #  616   0x6c469  6      
  nop                                 #  617   0x6c46f  1      
.L_6c800:                             #        0x6c470  0      
  movq 0xe0(%rsp), %rdx               #  618   0x6c470  8      
  movl %edx, %edx                     #  619   0x6c478  2      
  movl (%r15,%rdx,1), %eax            #  620   0x6c47a  4      
  cmpl $0x2f, %eax                    #  621   0x6c47e  3      
  ja .L_6f1c0                         #  622   0x6c481  6      
  movq %rdx, %rcx                     #  623   0x6c487  3      
  nop                                 #  624   0x6c48a  1      
  movl %edx, %edx                     #  625   0x6c48b  2      
  movl 0xc(%r15,%rdx,1), %edx         #  626   0x6c48d  5      
  addl %eax, %edx                     #  627   0x6c492  2      
  addl $0x8, %eax                     #  628   0x6c494  3      
  movl %ecx, %ecx                     #  629   0x6c497  2      
  movl %eax, (%r15,%rcx,1)            #  630   0x6c499  4      
  nop                                 #  631   0x6c49d  1      
.L_6c840:                             #        0x6c49e  0      
  movl %edx, %edx                     #  632   0x6c49e  2      
  movq (%r15,%rdx,1), %rcx            #  633   0x6c4a0  4      
  nop                                 #  634   0x6c4a4  1      
  nop                                 #  635   0x6c4a5  1      
.L_6c860:                             #        0x6c4a6  0      
  testq %rcx, %rcx                    #  636   0x6c4a6  3      
  setne %sil                          #  637   0x6c4a9  4      
  je .L_6c8a0                         #  638   0x6c4ad  6      
  testb $0x1, %r13b                   #  639   0x6c4b3  4      
  je .L_6c8a0                         #  640   0x6c4b7  6      
  movzbl 0x100(%rsp), %eax            #  641   0x6c4bd  8      
  movb $0x30, 0x290(%rsp)             #  642   0x6c4c5  8      
  nop                                 #  643   0x6c4cd  1      
  orl $0x2, %r13d                     #  644   0x6c4ce  4      
  movb %al, 0x291(%rsp)               #  645   0x6c4d2  7      
  nop                                 #  646   0x6c4d9  1      
  nop                                 #  647   0x6c4da  1      
.L_6c8a0:                             #        0x6c4db  0      
  andl $0xfffffbff, %r13d             #  648   0x6c4db  7      
  movl $0x2, %eax                     #  649   0x6c4e2  5      
  nop                                 #  650   0x6c4e7  1      
  nop                                 #  651   0x6c4e8  1      
.L_6c8c0:                             #        0x6c4e9  0      
  movb $0x0, 0x29f(%rsp)              #  652   0x6c4e9  8      
  nop                                 #  653   0x6c4f1  1      
  nop                                 #  654   0x6c4f2  1      
.L_6c8e0:                             #        0x6c4f3  0      
  movl %r13d, %edx                    #  655   0x6c4f3  3      
  andb $0x7f, %dl                     #  656   0x6c4f6  3      
  testl %r10d, %r10d                  #  657   0x6c4f9  3      
  cmovnsl %edx, %r13d                 #  658   0x6c4fc  4      
  testl %r10d, %r10d                  #  659   0x6c500  3      
  jne .L_6c900                        #  660   0x6c503  6      
  testb %sil, %sil                    #  661   0x6c509  3      
  je .L_6d600                         #  662   0x6c50c  6      
  nop                                 #  663   0x6c512  1      
.L_6c900:                             #        0x6c513  0      
  cmpl $0x1, %eax                     #  664   0x6c513  3      
  je .L_6dcc0                         #  665   0x6c516  6      
  cmpl $0x2, %eax                     #  666   0x6c51c  3      
  je .L_6dd00                         #  667   0x6c51f  6      
  movq 0x108(%rsp), %rdx              #  668   0x6c525  8      
  nop                                 #  669   0x6c52d  1      
  movq %rdx, 0xb0(%rsp)               #  670   0x6c52e  8      
  nop                                 #  671   0x6c536  1      
  nop                                 #  672   0x6c537  1      
.L_6c940:                             #        0x6c538  0      
  movl %ecx, %eax                     #  673   0x6c538  2      
  shrq $0x3, %rcx                     #  674   0x6c53a  4      
  subl $0x1, %edx                     #  675   0x6c53e  3      
  andl $0x7, %eax                     #  676   0x6c541  3      
  addl $0x30, %eax                    #  677   0x6c544  3      
  testq %rcx, %rcx                    #  678   0x6c547  3      
  movl %edx, %edx                     #  679   0x6c54a  2      
  movb %al, (%r15,%rdx,1)             #  680   0x6c54c  4      
  jne .L_6c940                        #  681   0x6c550  6      
  testb $0x1, %r13b                   #  682   0x6c556  4      
  xchgw %ax, %ax                      #  683   0x6c55a  3      
  movq %rdx, 0xb0(%rsp)               #  684   0x6c55d  8      
  jne .L_6eb20                        #  685   0x6c565  6      
  movl 0x108(%rsp), %ecx              #  686   0x6c56b  7      
  movq 0xf0(%rsp), %rsi               #  687   0x6c572  8      
  subl %edx, %ecx                     #  688   0x6c57a  2      
  nop                                 #  689   0x6c57c  1      
  movl %ecx, 0xc4(%rsp)               #  690   0x6c57d  7      
  nop                                 #  691   0x6c584  1      
  nop                                 #  692   0x6c585  1      
.L_6c9a0:                             #        0x6c586  0      
  cmpl %r10d, 0xc4(%rsp)              #  693   0x6c586  8      
  movl 0xc4(%rsp), %edx               #  694   0x6c58e  7      
  movzbl 0x29f(%rsp), %eax            #  695   0x6c595  8      
  movl %r10d, 0x104(%rsp)             #  696   0x6c59d  8      
  nop                                 #  697   0x6c5a5  1      
  movq %rsi, 0xf0(%rsp)               #  698   0x6c5a6  8      
  movq $0x0, 0xe8(%rsp)               #  699   0x6c5ae  12     
  movl $0x0, 0x114(%rsp)              #  700   0x6c5ba  11     
  nop                                 #  701   0x6c5c5  1      
  movl $0x0, 0x12c(%rsp)              #  702   0x6c5c6  11     
  cmovll %r10d, %edx                  #  703   0x6c5d1  4      
  movl $0x0, 0x11c(%rsp)              #  704   0x6c5d5  11     
  nop                                 #  705   0x6c5e0  1      
  movl %edx, 0xb8(%rsp)               #  706   0x6c5e1  7      
  nop                                 #  707   0x6c5e8  1      
  nop                                 #  708   0x6c5e9  1      
.L_6ca20:                             #        0x6c5ea  0      
  testb %al, %al                      #  709   0x6c5ea  2      
  je .L_6bee0                         #  710   0x6c5ec  6      
  nop                                 #  711   0x6c5f2  1      
  nop                                 #  712   0x6c5f3  1      
.L_6ca40:                             #        0x6c5f4  0      
  addl $0x1, 0xb8(%rsp)               #  713   0x6c5f4  8      
  jmpq .L_6bee0                       #  714   0x6c5fc  5      
  nop                                 #  715   0x6c601  1      
  nop                                 #  716   0x6c602  1      
  movq 0xe0(%rsp), %rdx               #  717   0x6c603  8      
  movl %edx, %edx                     #  718   0x6c60b  2      
  movl (%r15,%rdx,1), %eax            #  719   0x6c60d  4      
  cmpl $0x2f, %eax                    #  720   0x6c611  3      
  ja .L_6ebc0                         #  721   0x6c614  6      
  movq %rdx, %rcx                     #  722   0x6c61a  3      
  nop                                 #  723   0x6c61d  1      
  movl %edx, %edx                     #  724   0x6c61e  2      
  movl 0xc(%r15,%rdx,1), %edx         #  725   0x6c620  5      
  addl %eax, %edx                     #  726   0x6c625  2      
  addl $0x8, %eax                     #  727   0x6c627  3      
  movl %ecx, %ecx                     #  728   0x6c62a  2      
  movl %eax, (%r15,%rcx,1)            #  729   0x6c62c  4      
  nop                                 #  730   0x6c630  1      
.L_6caa0:                             #        0x6c631  0      
  movl %edx, %edx                     #  731   0x6c631  2      
  movl (%r15,%rdx,1), %ecx            #  732   0x6c633  4      
  orl $0x2, %r13d                     #  733   0x6c637  4      
  movb $0x30, 0x290(%rsp)             #  734   0x6c63b  8      
  movb $0x78, 0x291(%rsp)             #  735   0x6c643  8      
  nop                                 #  736   0x6c64b  1      
  movq $0x10023c01, 0x148(%rsp)       #  737   0x6c64c  12     
  movl $0x2, %eax                     #  738   0x6c658  5      
  movl $0x78, 0x100(%rsp)             #  739   0x6c65d  11     
  testq %rcx, %rcx                    #  740   0x6c668  3      
  nop                                 #  741   0x6c66b  1      
  setne %sil                          #  742   0x6c66c  4      
  jmpq .L_6c8c0                       #  743   0x6c670  5      
  nop                                 #  744   0x6c675  1      
  nop                                 #  745   0x6c676  1      
  orl $0x1, %r13d                     #  746   0x6c677  4      
  movl %r12d, %r12d                   #  747   0x6c67b  3      
  movzbl (%r15,%r12,1), %eax          #  748   0x6c67e  5      
  jmpq .L_6be00                       #  749   0x6c683  5      
  nop                                 #  750   0x6c688  1      
  cmpb $0x0, 0x29f(%rsp)              #  751   0x6c689  8      
  jne .L_6c660                        #  752   0x6c691  6      
  movb $0x20, 0x29f(%rsp)             #  753   0x6c697  8      
  movl %r12d, %r12d                   #  754   0x6c69f  3      
  movzbl (%r15,%r12,1), %eax          #  755   0x6c6a2  5      
  xchgw %ax, %ax                      #  756   0x6c6a7  3      
  jmpq .L_6be00                       #  757   0x6c6aa  5      
  nop                                 #  758   0x6c6af  1      
  nop                                 #  759   0x6c6b0  1      
  movq 0xe0(%rsp), %rdx               #  760   0x6c6b1  8      
  movl %eax, 0x100(%rsp)              #  761   0x6c6b9  7      
  movl %edx, %edx                     #  762   0x6c6c0  2      
  movl 0x4(%r15,%rdx,1), %eax         #  763   0x6c6c2  5      
  cmpl $0xaf, %eax                    #  764   0x6c6c7  3      
  nop                                 #  765   0x6c6ca  1      
  ja .L_6f6a0                         #  766   0x6c6cb  6      
  movq %rdx, %rcx                     #  767   0x6c6d1  3      
  movl %edx, %edx                     #  768   0x6c6d4  2      
  movl 0xc(%r15,%rdx,1), %edx         #  769   0x6c6d6  5      
  addl %eax, %edx                     #  770   0x6c6db  2      
  addl $0x10, %eax                    #  771   0x6c6dd  3      
  movl %ecx, %ecx                     #  772   0x6c6e0  2      
  movl %eax, 0x4(%r15,%rcx,1)         #  773   0x6c6e2  5      
  nop                                 #  774   0x6c6e7  1      
.L_6cba0:                             #        0x6c6e8  0      
  movl %edx, %edx                     #  775   0x6c6e8  2      
  movsd (%r15,%rdx,1), %xmm0          #  776   0x6c6ea  6      
  movl %r10d, 0x90(%rsp)              #  777   0x6c6f0  8      
  movsd %xmm0, 0x130(%rsp)            #  778   0x6c6f8  9      
  nop                                 #  779   0x6c701  1      
  movsd %xmm0, 0xb8(%rsp)             #  780   0x6c702  9      
  movsd 0x130(%rsp), %xmm0            #  781   0x6c70b  9      
  nop                                 #  782   0x6c714  1      
  callq .__fpclassifyd                #  783   0x6c715  5      
  cmpl $0x1, %eax                     #  784   0x6c71a  3      
  movl 0x90(%rsp), %r10d              #  785   0x6c71d  8      
  jne .L_6eca0                        #  786   0x6c725  6      
  movsd 0x130(%rsp), %xmm1            #  787   0x6c72b  9      
  nop                                 #  788   0x6c734  1      
  ucomisd 0xffb77e3(%rip), %xmm1      #  789   0x6c735  8      
  jb .L_6fca0                         #  790   0x6c73d  6      
  nop                                 #  791   0x6c743  1      
  nop                                 #  792   0x6c744  1      
.L_6cc20:                             #        0x6c745  0      
  cmpl $0x47, 0x100(%rsp)             #  793   0x6c745  8      
  movq $0x10023bf1, 0xb0(%rsp)        #  794   0x6c74d  12     
  movl $0x10023bf5, %eax              #  795   0x6c759  5      
  nop                                 #  796   0x6c75e  1      
.L_6cc40:                             #        0x6c75f  0      
  cmovleq 0xb0(%rsp), %rax            #  797   0x6c75f  9      
  movl $0x3, 0xb8(%rsp)               #  798   0x6c768  11     
  andb $0x7f, %r13b                   #  799   0x6c773  4      
  nop                                 #  800   0x6c777  1      
  movq $0x0, 0xe8(%rsp)               #  801   0x6c778  12     
  movl $0x3, 0xc4(%rsp)               #  802   0x6c784  11     
  nop                                 #  803   0x6c78f  1      
  movl $0x0, 0x104(%rsp)              #  804   0x6c790  11     
  movl $0x0, 0x114(%rsp)              #  805   0x6c79b  11     
  nop                                 #  806   0x6c7a6  1      
  movl $0x0, 0x12c(%rsp)              #  807   0x6c7a7  11     
  movl $0x0, 0x11c(%rsp)              #  808   0x6c7b2  11     
  movq %rax, 0xb0(%rsp)               #  809   0x6c7bd  8      
  xchgw %ax, %ax                      #  810   0x6c7c5  3      
  movzbl 0x29f(%rsp), %eax            #  811   0x6c7c8  8      
  jmpq .L_6ca20                       #  812   0x6c7d0  5      
  nop                                 #  813   0x6c7d5  1      
  nop                                 #  814   0x6c7d6  1      
  cmpl $0x43, %eax                    #  815   0x6c7d7  3      
  movl %eax, 0x100(%rsp)              #  816   0x6c7da  7      
  je .L_6e740                         #  817   0x6c7e1  6      
  testb $0x10, %r13b                  #  818   0x6c7e7  4      
  jne .L_6e740                        #  819   0x6c7eb  6      
  nop                                 #  820   0x6c7f1  1      
  movq 0xe0(%rsp), %rcx               #  821   0x6c7f2  8      
  movl %ecx, %ecx                     #  822   0x6c7fa  2      
  movl (%r15,%rcx,1), %eax            #  823   0x6c7fc  4      
  cmpl $0x2f, %eax                    #  824   0x6c800  3      
  ja .L_6fce0                         #  825   0x6c803  6      
  movl %ecx, %ecx                     #  826   0x6c809  2      
  movl 0xc(%r15,%rcx,1), %edx         #  827   0x6c80b  5      
  addl %eax, %edx                     #  828   0x6c810  2      
  addl $0x8, %eax                     #  829   0x6c812  3      
  movl %ecx, %ecx                     #  830   0x6c815  2      
  movl %eax, (%r15,%rcx,1)            #  831   0x6c817  4      
  nop                                 #  832   0x6c81b  1      
  nop                                 #  833   0x6c81c  1      
.L_6cd40:                             #        0x6c81d  0      
  movl %edx, %edx                     #  834   0x6c81d  2      
  movl (%r15,%rdx,1), %eax            #  835   0x6c81f  4      
  movl $0x1, 0xc4(%rsp)               #  836   0x6c823  11     
  movb %al, 0x170(%rsp)               #  837   0x6c82e  7      
  jmpq .L_6e7e0                       #  838   0x6c835  5      
  nop                                 #  839   0x6c83a  1      
  movl %eax, 0x100(%rsp)              #  840   0x6c83b  7      
  orl $0x10, %r13d                    #  841   0x6c842  4      
  nop                                 #  842   0x6c846  1      
  nop                                 #  843   0x6c847  1      
.L_6cd80:                             #        0x6c848  0      
  testb $0x20, %r13b                  #  844   0x6c848  4      
  je .L_6ddc0                         #  845   0x6c84c  6      
  movq 0xe0(%rsp), %rcx               #  846   0x6c852  8      
  movl %ecx, %ecx                     #  847   0x6c85a  2      
  movl (%r15,%rcx,1), %eax            #  848   0x6c85c  4      
  cmpl $0x2f, %eax                    #  849   0x6c860  3      
  nop                                 #  850   0x6c863  1      
  ja .L_6ec80                         #  851   0x6c864  6      
  movl %ecx, %ecx                     #  852   0x6c86a  2      
  movl 0xc(%r15,%rcx,1), %edx         #  853   0x6c86c  5      
  addl %eax, %edx                     #  854   0x6c871  2      
  addl $0x8, %eax                     #  855   0x6c873  3      
  movl %ecx, %ecx                     #  856   0x6c876  2      
  movl %eax, (%r15,%rcx,1)            #  857   0x6c878  4      
  nop                                 #  858   0x6c87c  1      
.L_6cdc0:                             #        0x6c87d  0      
  movl %edx, %edx                     #  859   0x6c87d  2      
  movq (%r15,%rdx,1), %rcx            #  860   0x6c87f  4      
  nop                                 #  861   0x6c883  1      
  nop                                 #  862   0x6c884  1      
.L_6cde0:                             #        0x6c885  0      
  cmpq $0x0, %rcx                     #  863   0x6c885  4      
  jl .L_6eb80                         #  864   0x6c889  6      
  setne %sil                          #  865   0x6c88f  4      
  movl $0x1, %eax                     #  866   0x6c893  5      
  jmpq .L_6c8e0                       #  867   0x6c898  5      
  nop                                 #  868   0x6c89d  1      
  testb $0x20, %r13b                  #  869   0x6c89e  4      
  movl %eax, 0x100(%rsp)              #  870   0x6c8a2  7      
  movq $0x10023be0, 0x148(%rsp)       #  871   0x6c8a9  12     
  jne .L_6c800                        #  872   0x6c8b5  6      
  nop                                 #  873   0x6c8bb  1      
.L_6ce20:                             #        0x6c8bc  0      
  testb $0x10, %r13b                  #  874   0x6c8bc  4      
  je .L_6f0c0                         #  875   0x6c8c0  6      
  movq 0xe0(%rsp), %rdx               #  876   0x6c8c6  8      
  movl %edx, %edx                     #  877   0x6c8ce  2      
  movl (%r15,%rdx,1), %eax            #  878   0x6c8d0  4      
  cmpl $0x2f, %eax                    #  879   0x6c8d4  3      
  nop                                 #  880   0x6c8d7  1      
  ja .L_6fa60                         #  881   0x6c8d8  6      
  movq %rdx, %rcx                     #  882   0x6c8de  3      
  movl %edx, %edx                     #  883   0x6c8e1  2      
  movl 0xc(%r15,%rdx,1), %edx         #  884   0x6c8e3  5      
  addl %eax, %edx                     #  885   0x6c8e8  2      
  addl $0x8, %eax                     #  886   0x6c8ea  3      
  movl %ecx, %ecx                     #  887   0x6c8ed  2      
  movl %eax, (%r15,%rcx,1)            #  888   0x6c8ef  4      
  nop                                 #  889   0x6c8f3  1      
.L_6ce60:                             #        0x6c8f4  0      
  movl %edx, %edx                     #  890   0x6c8f4  2      
  movl (%r15,%rdx,1), %ecx            #  891   0x6c8f6  4      
  jmpq .L_6c860                       #  892   0x6c8fa  5      
  nop                                 #  893   0x6c8ff  1      
  nop                                 #  894   0x6c900  1      
  orb $0x80, %r13b                    #  895   0x6c901  4      
  movl %r12d, %r12d                   #  896   0x6c905  3      
  movzbl (%r15,%r12,1), %eax          #  897   0x6c908  5      
  jmpq .L_6be00                       #  898   0x6c90d  5      
  nop                                 #  899   0x6c912  1      
  xorl %ecx, %ecx                     #  900   0x6c913  2      
  nop                                 #  901   0x6c915  1      
  nop                                 #  902   0x6c916  1      
.L_6cec0:                             #        0x6c917  0      
  leal (%rcx,%rcx,4), %ecx            #  903   0x6c917  3      
  leal -0x30(%rax,%rcx,2), %ecx       #  904   0x6c91a  4      
  movl %r12d, %r12d                   #  905   0x6c91e  3      
  movsbl (%r15,%r12,1), %eax          #  906   0x6c921  5      
  addl $0x1, %r12d                    #  907   0x6c926  4      
  leal -0x30(%rax), %esi              #  908   0x6c92a  3      
  cmpl $0x9, %esi                     #  909   0x6c92d  3      
  jbe .L_6cec0                        #  910   0x6c930  6      
  nop                                 #  911   0x6c936  1      
  movl %ecx, 0xd4(%rsp)               #  912   0x6c937  7      
  jmpq .L_6be20                       #  913   0x6c93e  5      
  nop                                 #  914   0x6c943  1      
  nop                                 #  915   0x6c944  1      
  movl %eax, 0x100(%rsp)              #  916   0x6c945  7      
  orl $0x10, %r13d                    #  917   0x6c94c  4      
  nop                                 #  918   0x6c950  1      
  nop                                 #  919   0x6c951  1      
.L_6cf20:                             #        0x6c952  0      
  testb $0x20, %r13b                  #  920   0x6c952  4      
  je .L_6dfa0                         #  921   0x6c956  6      
  movq 0xe0(%rsp), %rcx               #  922   0x6c95c  8      
  movl %ecx, %ecx                     #  923   0x6c964  2      
  movl (%r15,%rcx,1), %eax            #  924   0x6c966  4      
  cmpl $0x2f, %eax                    #  925   0x6c96a  3      
  nop                                 #  926   0x6c96d  1      
  ja .L_6f2a0                         #  927   0x6c96e  6      
  movl %ecx, %ecx                     #  928   0x6c974  2      
  movl 0xc(%r15,%rcx,1), %edx         #  929   0x6c976  5      
  addl %eax, %edx                     #  930   0x6c97b  2      
  addl $0x8, %eax                     #  931   0x6c97d  3      
  movl %ecx, %ecx                     #  932   0x6c980  2      
  movl %eax, (%r15,%rcx,1)            #  933   0x6c982  4      
  nop                                 #  934   0x6c986  1      
.L_6cf60:                             #        0x6c987  0      
  movl %edx, %edx                     #  935   0x6c987  2      
  movq (%r15,%rdx,1), %rcx            #  936   0x6c989  4      
  nop                                 #  937   0x6c98d  1      
  nop                                 #  938   0x6c98e  1      
.L_6cf80:                             #        0x6c98f  0      
  andl $0xfffffbff, %r13d             #  939   0x6c98f  7      
  testq %rcx, %rcx                    #  940   0x6c996  3      
  setne %sil                          #  941   0x6c999  4      
  xorl %eax, %eax                     #  942   0x6c99d  2      
  jmpq .L_6c8c0                       #  943   0x6c99f  5      
  nop                                 #  944   0x6c9a4  1      
  movq 0xe0(%rsp), %rdx               #  945   0x6c9a5  8      
  movl %eax, 0x100(%rsp)              #  946   0x6c9ad  7      
  movl %edx, %edx                     #  947   0x6c9b4  2      
  movl (%r15,%rdx,1), %eax            #  948   0x6c9b6  4      
  cmpl $0x2f, %eax                    #  949   0x6c9ba  3      
  ja .L_6ebe0                         #  950   0x6c9bd  6      
  xchgw %ax, %ax                      #  951   0x6c9c3  3      
  movq %rdx, %rcx                     #  952   0x6c9c6  3      
  movl %edx, %edx                     #  953   0x6c9c9  2      
  movl 0xc(%r15,%rdx,1), %edx         #  954   0x6c9cb  5      
  addl %eax, %edx                     #  955   0x6c9d0  2      
  addl $0x8, %eax                     #  956   0x6c9d2  3      
  movl %ecx, %ecx                     #  957   0x6c9d5  2      
  movl %eax, (%r15,%rcx,1)            #  958   0x6c9d7  4      
  nop                                 #  959   0x6c9db  1      
.L_6cfe0:                             #        0x6c9dc  0      
  movl %edx, %edx                     #  960   0x6c9dc  2      
  movl (%r15,%rdx,1), %edx            #  961   0x6c9de  4      
  movb $0x0, 0x29f(%rsp)              #  962   0x6c9e2  8      
  testq %rdx, %rdx                    #  963   0x6c9ea  3      
  movq %rdx, 0xb0(%rsp)               #  964   0x6c9ed  8      
  je .L_70040                         #  965   0x6c9f5  6      
  nop                                 #  966   0x6c9fb  1      
  cmpl $0x53, 0x100(%rsp)             #  967   0x6c9fc  8      
  je .L_6f3a0                         #  968   0x6ca04  6      
  movl %r13d, %ecx                    #  969   0x6ca0a  3      
  andl $0x10, %ecx                    #  970   0x6ca0d  3      
  jne .L_6f3a0                        #  971   0x6ca10  6      
  testl %r10d, %r10d                  #  972   0x6ca16  3      
  nop                                 #  973   0x6ca19  1      
  js .L_6fd80                         #  974   0x6ca1a  6      
  movl 0xb0(%rsp), %edi               #  975   0x6ca20  7      
  movl %r10d, %edx                    #  976   0x6ca27  3      
  xorl %esi, %esi                     #  977   0x6ca2a  2      
  movl %ecx, 0x98(%rsp)               #  978   0x6ca2c  7      
  nop                                 #  979   0x6ca33  1      
  movl %r10d, 0x90(%rsp)              #  980   0x6ca34  8      
  nop                                 #  981   0x6ca3c  1      
  nop                                 #  982   0x6ca3d  1      
  callq .memchr                       #  983   0x6ca3e  5      
  movl %eax, %eax                     #  984   0x6ca43  2      
  movl 0x98(%rsp), %ecx               #  985   0x6ca45  7      
  movl 0x90(%rsp), %r10d              #  986   0x6ca4c  8      
  testq %rax, %rax                    #  987   0x6ca54  3      
  je .L_700e0                         #  988   0x6ca57  6      
  nop                                 #  989   0x6ca5d  1      
  subl 0xb0(%rsp), %eax               #  990   0x6ca5e  7      
  cmpl %r10d, %eax                    #  991   0x6ca65  3      
  movl %eax, 0xc4(%rsp)               #  992   0x6ca68  7      
  jg .L_700e0                         #  993   0x6ca6f  6      
  cmpl $0x0, 0xc4(%rsp)               #  994   0x6ca75  8      
  nop                                 #  995   0x6ca7d  1      
  movzbl 0x29f(%rsp), %eax            #  996   0x6ca7e  8      
  cmovnsl 0xc4(%rsp), %ecx            #  997   0x6ca86  8      
  movl %ecx, 0xb8(%rsp)               #  998   0x6ca8e  7      
  nop                                 #  999   0x6ca95  1      
.L_6d0c0:                             #        0x6ca96  0      
  movq $0x0, 0xe8(%rsp)               #  1000  0x6ca96  12     
  movl $0x0, 0x104(%rsp)              #  1001  0x6caa2  11     
  nop                                 #  1002  0x6caad  1      
  movl $0x0, 0x114(%rsp)              #  1003  0x6caae  11     
  movl $0x0, 0x12c(%rsp)              #  1004  0x6cab9  11     
  nop                                 #  1005  0x6cac4  1      
  movl $0x0, 0x11c(%rsp)              #  1006  0x6cac5  11     
  jmpq .L_6ca20                       #  1007  0x6cad0  5      
  nop                                 #  1008  0x6cad5  1      
  nop                                 #  1009  0x6cad6  1      
  movl %eax, 0x100(%rsp)              #  1010  0x6cad7  7      
  orl $0x10, %r13d                    #  1011  0x6cade  4      
  nop                                 #  1012  0x6cae2  1      
  nop                                 #  1013  0x6cae3  1      
.L_6d140:                             #        0x6cae4  0      
  testb $0x20, %r13b                  #  1014  0x6cae4  4      
  je .L_6df40                         #  1015  0x6cae8  6      
  movq 0xe0(%rsp), %rcx               #  1016  0x6caee  8      
  movl %ecx, %ecx                     #  1017  0x6caf6  2      
  movl (%r15,%rcx,1), %eax            #  1018  0x6caf8  4      
  cmpl $0x2f, %eax                    #  1019  0x6cafc  3      
  nop                                 #  1020  0x6caff  1      
  ja .L_6f0a0                         #  1021  0x6cb00  6      
  movl %ecx, %ecx                     #  1022  0x6cb06  2      
  movl 0xc(%r15,%rcx,1), %edx         #  1023  0x6cb08  5      
  addl %eax, %edx                     #  1024  0x6cb0d  2      
  addl $0x8, %eax                     #  1025  0x6cb0f  3      
  movl %ecx, %ecx                     #  1026  0x6cb12  2      
  movl %eax, (%r15,%rcx,1)            #  1027  0x6cb14  4      
  nop                                 #  1028  0x6cb18  1      
.L_6d180:                             #        0x6cb19  0      
  movl %edx, %edx                     #  1029  0x6cb19  2      
  movq (%r15,%rdx,1), %rcx            #  1030  0x6cb1b  4      
  movl $0x1, %eax                     #  1031  0x6cb1f  5      
  testq %rcx, %rcx                    #  1032  0x6cb24  3      
  setne %sil                          #  1033  0x6cb27  4      
  jmpq .L_6c8c0                       #  1034  0x6cb2b  5      
  nop                                 #  1035  0x6cb30  1      
  orl $0x8, %r13d                     #  1036  0x6cb31  4      
  movl %r12d, %r12d                   #  1037  0x6cb35  3      
  movzbl (%r15,%r12,1), %eax          #  1038  0x6cb38  5      
  jmpq .L_6be00                       #  1039  0x6cb3d  5      
  nop                                 #  1040  0x6cb42  1      
  movl %r12d, %r12d                   #  1041  0x6cb43  3      
  movsbl (%r15,%r12,1), %eax          #  1042  0x6cb46  5      
  addl $0x1, %r12d                    #  1043  0x6cb4b  4      
  cmpl $0x2a, %eax                    #  1044  0x6cb4f  3      
  je .L_71080                         #  1045  0x6cb52  6      
  leal -0x30(%rax), %esi              #  1046  0x6cb58  3      
  xorl %ecx, %ecx                     #  1047  0x6cb5b  2      
  xorl %r10d, %r10d                   #  1048  0x6cb5d  3      
  cmpl $0x9, %esi                     #  1049  0x6cb60  3      
  ja .L_6be20                         #  1050  0x6cb63  6      
  nop                                 #  1051  0x6cb69  1      
  nop                                 #  1052  0x6cb6a  1      
.L_6d200:                             #        0x6cb6b  0      
  movl %r12d, %r12d                   #  1053  0x6cb6b  3      
  movsbl (%r15,%r12,1), %eax          #  1054  0x6cb6e  5      
  leal (%rcx,%rcx,4), %ecx            #  1055  0x6cb73  3      
  addl $0x1, %r12d                    #  1056  0x6cb76  4      
  leal (%rsi,%rcx,2), %ecx            #  1057  0x6cb7a  3      
  leal -0x30(%rax), %esi              #  1058  0x6cb7d  3      
  cmpl $0x9, %esi                     #  1059  0x6cb80  3      
  jbe .L_6d200                        #  1060  0x6cb83  6      
  testl %ecx, %ecx                    #  1061  0x6cb89  2      
  movl %edx, %r10d                    #  1062  0x6cb8b  3      
  nop                                 #  1063  0x6cb8e  1      
  cmovnsl %ecx, %r10d                 #  1064  0x6cb8f  4      
  jmpq .L_6be20                       #  1065  0x6cb93  5      
  nop                                 #  1066  0x6cb98  1      
  nop                                 #  1067  0x6cb99  1      
  movl %r12d, %r12d                   #  1068  0x6cb9a  3      
  movzbl (%r15,%r12,1), %eax          #  1069  0x6cb9d  5      
  cmpb $0x68, %al                     #  1070  0x6cba2  2      
  je .L_6f9c0                         #  1071  0x6cba4  6      
  orl $0x40, %r13d                    #  1072  0x6cbaa  4      
  jmpq .L_6be00                       #  1073  0x6cbae  5      
  nop                                 #  1074  0x6cbb3  1      
  movb $0x2b, 0x29f(%rsp)             #  1075  0x6cbb4  8      
  movl %r12d, %r12d                   #  1076  0x6cbbc  3      
  movzbl (%r15,%r12,1), %eax          #  1077  0x6cbbf  5      
  jmpq .L_6be00                       #  1078  0x6cbc4  5      
  nop                                 #  1079  0x6cbc9  1      
  movl %eax, 0x100(%rsp)              #  1080  0x6cbca  7      
  jmpq .L_6cd80                       #  1081  0x6cbd1  5      
  nop                                 #  1082  0x6cbd6  1      
  nop                                 #  1083  0x6cbd7  1      
  movl %eax, 0x100(%rsp)              #  1084  0x6cbd8  7      
  jmpq .L_6cf20                       #  1085  0x6cbdf  5      
  nop                                 #  1086  0x6cbe4  1      
  nop                                 #  1087  0x6cbe5  1      
  movl %eax, 0x100(%rsp)              #  1088  0x6cbe6  7      
  jmpq .L_6d140                       #  1089  0x6cbed  5      
  nop                                 #  1090  0x6cbf2  1      
  nop                                 #  1091  0x6cbf3  1      
.L_6d2e0:                             #        0x6cbf4  0      
  movl 0x228(%rsp), %eax              #  1092  0x6cbf4  7      
  testl %eax, %eax                    #  1093  0x6cbfb  2      
  jne .L_6fe60                        #  1094  0x6cbfd  6      
  xchgw %ax, %ax                      #  1095  0x6cc03  3      
  nop                                 #  1096  0x6cc06  1      
.L_6d300:                             #        0x6cc07  0      
  movq 0xc8(%rsp), %rdx               #  1097  0x6cc07  8      
  movl %edx, %edx                     #  1098  0x6cc0f  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  1099  0x6cc11  6      
  jmpq .L_6d380                       #  1100  0x6cc17  5      
  nop                                 #  1101  0x6cc1c  1      
.L_6d320:                             #        0x6cc1d  0      
  movq 0xc8(%rsp), %rax               #  1102  0x6cc1d  8      
  movl %eax, %eax                     #  1103  0x6cc25  2      
  orw $0x40, 0xc(%r15,%rax,1)         #  1104  0x6cc27  7      
  nop                                 #  1105  0x6cc2e  1      
.L_6d340:                             #        0x6cc2f  0      
  cmpq $0x0, 0xe8(%rsp)               #  1106  0x6cc2f  9      
  je .L_6dae0                         #  1107  0x6cc38  6      
  movl 0xe8(%rsp), %esi               #  1108  0x6cc3e  7      
  movl %r14d, %edi                    #  1109  0x6cc45  3      
  xchgw %ax, %ax                      #  1110  0x6cc48  3      
  callq ._free_r                      #  1111  0x6cc4b  5      
  movq 0xc8(%rsp), %rbx               #  1112  0x6cc50  8      
  movl %ebx, %ebx                     #  1113  0x6cc58  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  1114  0x6cc5a  6      
  nop                                 #  1115  0x6cc60  1      
  nop                                 #  1116  0x6cc61  1      
.L_6d380:                             #        0x6cc62  0      
  testb $0x40, %al                    #  1117  0x6cc62  2      
  movl $0xffffffff, %eax              #  1118  0x6cc64  5      
  cmovel 0xd0(%rsp), %eax             #  1119  0x6cc69  8      
  movl %eax, 0xd0(%rsp)               #  1120  0x6cc71  7      
  nop                                 #  1121  0x6cc78  1      
.L_6d3a0:                             #        0x6cc79  0      
  movl 0xd0(%rsp), %eax               #  1122  0x6cc79  7      
  addl $0x2a8, %esp                   #  1123  0x6cc80  6      
  addq %r15, %rsp                     #  1124  0x6cc86  3      
  popq %rbx                           #  1125  0x6cc89  2      
  popq %r12                           #  1126  0x6cc8b  3      
  popq %r13                           #  1127  0x6cc8e  3      
  popq %r14                           #  1128  0x6cc91  3      
  popq %r11                           #  1129  0x6cc94  3      
  nop                                 #  1130  0x6cc97  1      
  andl $0xffffffe0, %r11d             #  1131  0x6cc98  7      
  addq %r15, %r11                     #  1132  0x6cc9f  3      
  jmpq %r11                           #  1133  0x6cca2  3      
  nop                                 #  1134  0x6cca5  1      
  nop                                 #  1135  0x6cca6  1      
.L_6d3e0:                             #        0x6cca7  0      
  cmpl $0x65, 0x100(%rsp)             #  1136  0x6cca7  8      
  jle .L_6d7e0                        #  1137  0x6ccaf  6      
  movsd 0x130(%rsp), %xmm0            #  1138  0x6ccb5  9      
  ucomisd 0xffb725a(%rip), %xmm0      #  1139  0x6ccbe  8      
  nop                                 #  1140  0x6ccc6  1      
  jne .L_6db00                        #  1141  0x6ccc7  6      
  jp .L_6db00                         #  1142  0x6cccd  6      
  movl %ebx, %ebx                     #  1143  0x6ccd3  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1144  0x6ccd5  9      
  movl 0x224(%rsp), %eax              #  1145  0x6ccde  7      
  xchgw %ax, %ax                      #  1146  0x6cce5  3      
  addl $0x1, 0x228(%rsp)              #  1147  0x6cce8  8      
  movl %ebx, %ebx                     #  1148  0x6ccf0  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  1149  0x6ccf2  8      
  addl $0x1, %eax                     #  1150  0x6ccfa  3      
  cmpl $0x7, %eax                     #  1151  0x6ccfd  3      
  movl %eax, 0x224(%rsp)              #  1152  0x6cd00  7      
  nop                                 #  1153  0x6cd07  1      
  jg .L_6f740                         #  1154  0x6cd08  6      
  addl $0x8, %ebx                     #  1155  0x6cd0e  3      
  nop                                 #  1156  0x6cd11  1      
  nop                                 #  1157  0x6cd12  1      
.L_6d460:                             #        0x6cd13  0      
  movl 0x118(%rsp), %eax              #  1158  0x6cd13  7      
  cmpl %eax, 0x28c(%rsp)              #  1159  0x6cd1a  7      
  jl .L_6d480                         #  1160  0x6cd21  6      
  testb $0x1, %r13b                   #  1161  0x6cd27  4      
  je .L_6c320                         #  1162  0x6cd2b  6      
  nop                                 #  1163  0x6cd31  1      
.L_6d480:                             #        0x6cd32  0      
  movl 0x13c(%rsp), %ecx              #  1164  0x6cd32  7      
  movl 0x120(%rsp), %edx              #  1165  0x6cd39  7      
  movl %ebx, %ebx                     #  1166  0x6cd40  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1167  0x6cd42  5      
  movl 0x224(%rsp), %eax              #  1168  0x6cd47  7      
  nop                                 #  1169  0x6cd4e  1      
  addl %ecx, 0x228(%rsp)              #  1170  0x6cd4f  7      
  movl %ebx, %ebx                     #  1171  0x6cd56  2      
  movl %edx, (%r15,%rbx,1)            #  1172  0x6cd58  4      
  addl $0x1, %eax                     #  1173  0x6cd5c  3      
  cmpl $0x7, %eax                     #  1174  0x6cd5f  3      
  movl %eax, 0x224(%rsp)              #  1175  0x6cd62  7      
  jg .L_6fec0                         #  1176  0x6cd69  6      
  addl $0x8, %ebx                     #  1177  0x6cd6f  3      
  nop                                 #  1178  0x6cd72  1      
  nop                                 #  1179  0x6cd73  1      
.L_6d4e0:                             #        0x6cd74  0      
  movl 0x118(%rsp), %ecx              #  1180  0x6cd74  7      
  subl $0x1, %ecx                     #  1181  0x6cd7b  3      
  testl %ecx, %ecx                    #  1182  0x6cd7e  2      
  jle .L_6c320                        #  1183  0x6cd80  6      
  cmpl $0x10, %ecx                    #  1184  0x6cd86  3      
  jle .L_6e020                        #  1185  0x6cd89  6      
  nop                                 #  1186  0x6cd8f  1      
  leal 0x220(%rsp), %esi              #  1187  0x6cd90  7      
  movq %rbx, %rax                     #  1188  0x6cd97  3      
  movl %r13d, 0xb0(%rsp)              #  1189  0x6cd9a  8      
  movl %ecx, %ebx                     #  1190  0x6cda2  2      
  movq %r12, %r13                     #  1191  0x6cda4  3      
  movq 0xc8(%rsp), %r12               #  1192  0x6cda7  8      
  nop                                 #  1193  0x6cdaf  1      
  movq %rsi, 0x38(%rsp)               #  1194  0x6cdb0  5      
  jmpq .L_6d580                       #  1195  0x6cdb5  5      
  nop                                 #  1196  0x6cdba  1      
  nop                                 #  1197  0x6cdbb  1      
.L_6d540:                             #        0x6cdbc  0      
  addl $0x8, %eax                     #  1198  0x6cdbc  3      
  nop                                 #  1199  0x6cdbf  1      
  nop                                 #  1200  0x6cdc0  1      
.L_6d560:                             #        0x6cdc1  0      
  subl $0x10, %ebx                    #  1201  0x6cdc1  3      
  cmpl $0x10, %ebx                    #  1202  0x6cdc4  3      
  jle .L_6f6c0                        #  1203  0x6cdc7  6      
  nop                                 #  1204  0x6cdcd  1      
  nop                                 #  1205  0x6cdce  1      
.L_6d580:                             #        0x6cdcf  0      
  movl %eax, %eax                     #  1206  0x6cdcf  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1207  0x6cdd1  9      
  movl 0x224(%rsp), %edx              #  1208  0x6cdda  7      
  addl $0x10, 0x228(%rsp)             #  1209  0x6cde1  8      
  nop                                 #  1210  0x6cde9  1      
  movl %eax, %eax                     #  1211  0x6cdea  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1212  0x6cdec  8      
  addl $0x1, %edx                     #  1213  0x6cdf4  3      
  cmpl $0x7, %edx                     #  1214  0x6cdf7  3      
  movl %edx, 0x224(%rsp)              #  1215  0x6cdfa  7      
  jle .L_6d540                        #  1216  0x6ce01  6      
  movl 0x38(%rsp), %edx               #  1217  0x6ce07  4      
  movl %r12d, %esi                    #  1218  0x6ce0b  3      
  movl %r14d, %edi                    #  1219  0x6ce0e  3      
  nop                                 #  1220  0x6ce11  1      
  nop                                 #  1221  0x6ce12  1      
  callq .__ssprint_r                  #  1222  0x6ce13  5      
  testl %eax, %eax                    #  1223  0x6ce18  2      
  jne .L_6d340                        #  1224  0x6ce1a  6      
  leal 0x1e0(%rsp), %eax              #  1225  0x6ce20  7      
  jmpq .L_6d560                       #  1226  0x6ce27  5      
  nop                                 #  1227  0x6ce2c  1      
.L_6d600:                             #        0x6ce2d  0      
  testl %eax, %eax                    #  1228  0x6ce2d  2      
  jne .L_6d640                        #  1229  0x6ce2f  6      
  testb $0x1, %r13b                   #  1230  0x6ce35  4      
  je .L_6d640                         #  1231  0x6ce39  6      
  movq 0x158(%rsp), %rcx              #  1232  0x6ce3f  8      
  movq %rcx, 0xb0(%rsp)               #  1233  0x6ce47  8      
  nop                                 #  1234  0x6ce4f  1      
  movl %ecx, %ecx                     #  1235  0x6ce50  2      
  movb $0x30, (%r15,%rcx,1)           #  1236  0x6ce52  5      
  movl $0x1, 0xc4(%rsp)               #  1237  0x6ce57  11     
  movq 0xf0(%rsp), %rsi               #  1238  0x6ce62  8      
  jmpq .L_6c9a0                       #  1239  0x6ce6a  5      
  nop                                 #  1240  0x6ce6f  1      
.L_6d640:                             #        0x6ce70  0      
  movq 0x108(%rsp), %rax              #  1241  0x6ce70  8      
  movq 0xf0(%rsp), %rsi               #  1242  0x6ce78  8      
  movl $0x0, 0xc4(%rsp)               #  1243  0x6ce80  11     
  nop                                 #  1244  0x6ce8b  1      
  movq %rax, 0xb0(%rsp)               #  1245  0x6ce8c  8      
  jmpq .L_6c9a0                       #  1246  0x6ce94  5      
  nop                                 #  1247  0x6ce99  1      
  nop                                 #  1248  0x6ce9a  1      
.L_6d680:                             #        0x6ce9b  0      
  movl 0xd4(%rsp), %ecx               #  1249  0x6ce9b  7      
  subl 0xb8(%rsp), %ecx               #  1250  0x6cea2  7      
  testl %ecx, %ecx                    #  1251  0x6cea9  2      
  jle .L_6c160                        #  1252  0x6ceab  6      
  cmpl $0x10, %ecx                    #  1253  0x6ceb1  3      
  jle .L_6d7a0                        #  1254  0x6ceb4  6      
  nop                                 #  1255  0x6ceba  1      
  leal 0x220(%rsp), %eax              #  1256  0x6cebb  7      
  movl %r13d, 0xd8(%rsp)              #  1257  0x6cec2  8      
  movq %r12, %r13                     #  1258  0x6ceca  3      
  movq 0xc8(%rsp), %r12               #  1259  0x6cecd  8      
  movq %rax, 0x48(%rsp)               #  1260  0x6ced5  5      
  nop                                 #  1261  0x6ceda  1      
  movq %rbx, %rax                     #  1262  0x6cedb  3      
  movl %ecx, %ebx                     #  1263  0x6cede  2      
  jmpq .L_6d700                       #  1264  0x6cee0  5      
  nop                                 #  1265  0x6cee5  1      
  nop                                 #  1266  0x6cee6  1      
.L_6d6e0:                             #        0x6cee7  0      
  subl $0x10, %ebx                    #  1267  0x6cee7  3      
  addl $0x8, %eax                     #  1268  0x6ceea  3      
  cmpl $0x10, %ebx                    #  1269  0x6ceed  3      
  jle .L_6d780                        #  1270  0x6cef0  6      
  xchgw %ax, %ax                      #  1271  0x6cef6  3      
  nop                                 #  1272  0x6cef9  1      
.L_6d700:                             #        0x6cefa  0      
  movl %eax, %eax                     #  1273  0x6cefa  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1274  0x6cefc  9      
  movl 0x224(%rsp), %edx              #  1275  0x6cf05  7      
  addl $0x10, 0x228(%rsp)             #  1276  0x6cf0c  8      
  nop                                 #  1277  0x6cf14  1      
  movl %eax, %eax                     #  1278  0x6cf15  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1279  0x6cf17  8      
  addl $0x1, %edx                     #  1280  0x6cf1f  3      
  cmpl $0x7, %edx                     #  1281  0x6cf22  3      
  movl %edx, 0x224(%rsp)              #  1282  0x6cf25  7      
  jle .L_6d6e0                        #  1283  0x6cf2c  6      
  movl 0x48(%rsp), %edx               #  1284  0x6cf32  4      
  movl %r12d, %esi                    #  1285  0x6cf36  3      
  movl %r14d, %edi                    #  1286  0x6cf39  3      
  nop                                 #  1287  0x6cf3c  1      
  nop                                 #  1288  0x6cf3d  1      
  callq .__ssprint_r                  #  1289  0x6cf3e  5      
  testl %eax, %eax                    #  1290  0x6cf43  2      
  jne .L_6d340                        #  1291  0x6cf45  6      
  subl $0x10, %ebx                    #  1292  0x6cf4b  3      
  leal 0x1e0(%rsp), %eax              #  1293  0x6cf4e  7      
  cmpl $0x10, %ebx                    #  1294  0x6cf55  3      
  jg .L_6d700                         #  1295  0x6cf58  6      
  nop                                 #  1296  0x6cf5e  1      
.L_6d780:                             #        0x6cf5f  0      
  movq %r13, %r12                     #  1297  0x6cf5f  3      
  movl 0xd8(%rsp), %r13d              #  1298  0x6cf62  8      
  movl %ebx, %ecx                     #  1299  0x6cf6a  2      
  movq %rax, %rbx                     #  1300  0x6cf6c  3      
  nop                                 #  1301  0x6cf6f  1      
  nop                                 #  1302  0x6cf70  1      
.L_6d7a0:                             #        0x6cf71  0      
  movl %ebx, %ebx                     #  1303  0x6cf71  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1304  0x6cf73  5      
  movl 0x224(%rsp), %eax              #  1305  0x6cf78  7      
  addl %ecx, 0x228(%rsp)              #  1306  0x6cf7f  7      
  movl %ebx, %ebx                     #  1307  0x6cf86  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1308  0x6cf88  8      
  nop                                 #  1309  0x6cf90  1      
  addl $0x1, %eax                     #  1310  0x6cf91  3      
  cmpl $0x7, %eax                     #  1311  0x6cf94  3      
  movl %eax, 0x224(%rsp)              #  1312  0x6cf97  7      
  jg .L_6eae0                         #  1313  0x6cf9e  6      
  addl $0x8, %ebx                     #  1314  0x6cfa4  3      
  jmpq .L_6c160                       #  1315  0x6cfa7  5      
  nop                                 #  1316  0x6cfac  1      
.L_6d7e0:                             #        0x6cfad  0      
  cmpl $0x1, 0x118(%rsp)              #  1317  0x6cfad  8      
  jle .L_6e620                        #  1318  0x6cfb5  6      
  nop                                 #  1319  0x6cfbb  1      
  nop                                 #  1320  0x6cfbc  1      
.L_6d800:                             #        0x6cfbd  0      
  movl %ebx, %ebx                     #  1321  0x6cfbd  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1322  0x6cfbf  9      
  movl 0x224(%rsp), %eax              #  1323  0x6cfc8  7      
  movl 0xb0(%rsp), %ecx               #  1324  0x6cfcf  7      
  nop                                 #  1325  0x6cfd6  1      
  addl $0x1, 0x228(%rsp)              #  1326  0x6cfd7  8      
  addl $0x1, %eax                     #  1327  0x6cfdf  3      
  cmpl $0x7, %eax                     #  1328  0x6cfe2  3      
  movl %ebx, %ebx                     #  1329  0x6cfe5  2      
  movl %ecx, (%r15,%rbx,1)            #  1330  0x6cfe7  4      
  movl %eax, 0x224(%rsp)              #  1331  0x6cfeb  7      
  nop                                 #  1332  0x6cff2  1      
  jg .L_6e700                         #  1333  0x6cff3  6      
  leal 0x8(%rbx), %eax                #  1334  0x6cff9  3      
  nop                                 #  1335  0x6cffc  1      
  nop                                 #  1336  0x6cffd  1      
.L_6d860:                             #        0x6cffe  0      
  movl 0x13c(%rsp), %esi              #  1337  0x6cffe  7      
  movl 0x120(%rsp), %ebx              #  1338  0x6d005  7      
  movl %eax, %eax                     #  1339  0x6d00c  2      
  movl %esi, 0x4(%r15,%rax,1)         #  1340  0x6d00e  5      
  movl 0x224(%rsp), %edx              #  1341  0x6d013  7      
  nop                                 #  1342  0x6d01a  1      
  addl %esi, 0x228(%rsp)              #  1343  0x6d01b  7      
  movl %eax, %eax                     #  1344  0x6d022  2      
  movl %ebx, (%r15,%rax,1)            #  1345  0x6d024  4      
  addl $0x1, %edx                     #  1346  0x6d028  3      
  cmpl $0x7, %edx                     #  1347  0x6d02b  3      
  movl %edx, 0x224(%rsp)              #  1348  0x6d02e  7      
  jg .L_6e6c0                         #  1349  0x6d035  6      
  addl $0x8, %eax                     #  1350  0x6d03b  3      
  nop                                 #  1351  0x6d03e  1      
  nop                                 #  1352  0x6d03f  1      
.L_6d8c0:                             #        0x6d040  0      
  movsd 0x130(%rsp), %xmm0            #  1353  0x6d040  9      
  ucomisd 0xffb6ecf(%rip), %xmm0      #  1354  0x6d049  8      
  jp .L_6d8e0                         #  1355  0x6d051  6      
  je .L_6de20                         #  1356  0x6d057  6      
  nop                                 #  1357  0x6d05d  1      
.L_6d8e0:                             #        0x6d05e  0      
  movl 0xb0(%rsp), %edx               #  1358  0x6d05e  7      
  movl 0x118(%rsp), %ecx              #  1359  0x6d065  7      
  addl $0x1, %edx                     #  1360  0x6d06c  3      
  movl %eax, %eax                     #  1361  0x6d06f  2      
  movl %edx, (%r15,%rax,1)            #  1362  0x6d071  4      
  movl 0x118(%rsp), %edx              #  1363  0x6d075  7      
  xchgw %ax, %ax                      #  1364  0x6d07c  3      
  subl $0x1, %edx                     #  1365  0x6d07f  3      
  movl %eax, %eax                     #  1366  0x6d082  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1367  0x6d084  5      
  movl 0x228(%rsp), %edx              #  1368  0x6d089  7      
  leal -0x1(%rcx,%rdx,1), %edx        #  1369  0x6d090  4      
  movl %edx, 0x228(%rsp)              #  1370  0x6d094  7      
  nop                                 #  1371  0x6d09b  1      
.L_6d920:                             #        0x6d09c  0      
  movl 0x224(%rsp), %edx              #  1372  0x6d09c  7      
  addl $0x1, %edx                     #  1373  0x6d0a3  3      
  cmpl $0x7, %edx                     #  1374  0x6d0a6  3      
  movl %edx, 0x224(%rsp)              #  1375  0x6d0a9  7      
  jg .L_6e680                         #  1376  0x6d0b0  6      
  addl $0x8, %eax                     #  1377  0x6d0b6  3      
  nop                                 #  1378  0x6d0b9  1      
.L_6d940:                             #        0x6d0ba  0      
  leal 0x270(%rsp), %edx              #  1379  0x6d0ba  7      
  movl %eax, %eax                     #  1380  0x6d0c1  2      
  movl %edx, (%r15,%rax,1)            #  1381  0x6d0c3  4      
  movl 0x144(%rsp), %edx              #  1382  0x6d0c7  7      
  movl %eax, %eax                     #  1383  0x6d0ce  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1384  0x6d0d0  5      
  nop                                 #  1385  0x6d0d5  1      
  addl %edx, 0x228(%rsp)              #  1386  0x6d0d6  7      
  nop                                 #  1387  0x6d0dd  1      
  nop                                 #  1388  0x6d0de  1      
.L_6d980:                             #        0x6d0df  0      
  movl 0x224(%rsp), %edx              #  1389  0x6d0df  7      
  leal 0x8(%rax), %ebx                #  1390  0x6d0e6  3      
  addl $0x1, %edx                     #  1391  0x6d0e9  3      
  cmpl $0x7, %edx                     #  1392  0x6d0ec  3      
  movl %edx, 0x224(%rsp)              #  1393  0x6d0ef  7      
  jle .L_6c320                        #  1394  0x6d0f6  6      
  nop                                 #  1395  0x6d0fc  1      
.L_6d9a0:                             #        0x6d0fd  0      
  movl 0xc8(%rsp), %esi               #  1396  0x6d0fd  7      
  leal 0x220(%rsp), %edx              #  1397  0x6d104  7      
  movl %r14d, %edi                    #  1398  0x6d10b  3      
  nop                                 #  1399  0x6d10e  1      
  callq .__ssprint_r                  #  1400  0x6d10f  5      
  testl %eax, %eax                    #  1401  0x6d114  2      
  jne .L_6d340                        #  1402  0x6d116  6      
  leal 0x1e0(%rsp), %ebx              #  1403  0x6d11c  7      
  jmpq .L_6c320                       #  1404  0x6d123  5      
  nop                                 #  1405  0x6d128  1      
.L_6d9e0:                             #        0x6d129  0      
  movl 0xc8(%rsp), %esi               #  1406  0x6d129  7      
  leal 0x220(%rsp), %edx              #  1407  0x6d130  7      
  movl %r14d, %edi                    #  1408  0x6d137  3      
  nop                                 #  1409  0x6d13a  1      
  callq .__ssprint_r                  #  1410  0x6d13b  5      
  testl %eax, %eax                    #  1411  0x6d140  2      
  je .L_6c520                         #  1412  0x6d142  6      
  jmpq .L_6d340                       #  1413  0x6d148  5      
  nop                                 #  1414  0x6d14d  1      
  nop                                 #  1415  0x6d14e  1      
.L_6da20:                             #        0x6d14f  0      
  movl 0xc8(%rsp), %esi               #  1416  0x6d14f  7      
  leal 0x220(%rsp), %edx              #  1417  0x6d156  7      
  movl %r14d, %edi                    #  1418  0x6d15d  3      
  nop                                 #  1419  0x6d160  1      
  callq .__ssprint_r                  #  1420  0x6d161  5      
  testl %eax, %eax                    #  1421  0x6d166  2      
  jne .L_6d340                        #  1422  0x6d168  6      
  leal 0x1e0(%rsp), %ebx              #  1423  0x6d16e  7      
  jmpq .L_6c2c0                       #  1424  0x6d175  5      
  nop                                 #  1425  0x6d17a  1      
.L_6da60:                             #        0x6d17b  0      
  movl 0xc8(%rsp), %esi               #  1426  0x6d17b  7      
  leal 0x220(%rsp), %edx              #  1427  0x6d182  7      
  movl %r14d, %edi                    #  1428  0x6d189  3      
  nop                                 #  1429  0x6d18c  1      
  callq .__ssprint_r                  #  1430  0x6d18d  5      
  testl %eax, %eax                    #  1431  0x6d192  2      
  jne .L_6d340                        #  1432  0x6d194  6      
  leal 0x1e0(%rsp), %ebx              #  1433  0x6d19a  7      
  jmpq .L_6c140                       #  1434  0x6d1a1  5      
  nop                                 #  1435  0x6d1a6  1      
.L_6daa0:                             #        0x6d1a7  0      
  movl 0xc8(%rsp), %esi               #  1436  0x6d1a7  7      
  leal 0x220(%rsp), %edx              #  1437  0x6d1ae  7      
  movl %r14d, %edi                    #  1438  0x6d1b5  3      
  nop                                 #  1439  0x6d1b8  1      
  callq .__ssprint_r                  #  1440  0x6d1b9  5      
  testl %eax, %eax                    #  1441  0x6d1be  2      
  jne .L_6d340                        #  1442  0x6d1c0  6      
  leal 0x1e0(%rsp), %ebx              #  1443  0x6d1c6  7      
  jmpq .L_6c0e0                       #  1444  0x6d1cd  5      
  nop                                 #  1445  0x6d1d2  1      
.L_6dae0:                             #        0x6d1d3  0      
  movq 0xc8(%rsp), %rcx               #  1446  0x6d1d3  8      
  movl %ecx, %ecx                     #  1447  0x6d1db  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  1448  0x6d1dd  6      
  jmpq .L_6d380                       #  1449  0x6d1e3  5      
  nop                                 #  1450  0x6d1e8  1      
.L_6db00:                             #        0x6d1e9  0      
  movl 0x28c(%rsp), %r8d              #  1451  0x6d1e9  8      
  testl %r8d, %r8d                    #  1452  0x6d1f1  3      
  jle .L_6f780                        #  1453  0x6d1f4  6      
  movl 0x118(%rsp), %eax              #  1454  0x6d1fa  7      
  addl 0xb0(%rsp), %eax               #  1455  0x6d201  7      
  nop                                 #  1456  0x6d208  1      
  movl %eax, %r8d                     #  1457  0x6d209  3      
  subl 0xb0(%rsp), %r8d               #  1458  0x6d20c  8      
  movq %rax, 0xd8(%rsp)               #  1459  0x6d214  8      
  cmpl 0x11c(%rsp), %r8d              #  1460  0x6d21c  8      
  nop                                 #  1461  0x6d224  1      
  movl %eax, 0xc4(%rsp)               #  1462  0x6d225  7      
  cmovgl 0x11c(%rsp), %r8d            #  1463  0x6d22c  9      
  testl %r8d, %r8d                    #  1464  0x6d235  3      
  jle .L_6dba0                        #  1465  0x6d238  6      
  movl %ebx, %ebx                     #  1466  0x6d23e  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1467  0x6d240  5      
  nop                                 #  1468  0x6d245  1      
  movl 0x224(%rsp), %eax              #  1469  0x6d246  7      
  movl 0xb0(%rsp), %edx               #  1470  0x6d24d  7      
  addl %r8d, 0x228(%rsp)              #  1471  0x6d254  8      
  addl $0x1, %eax                     #  1472  0x6d25c  3      
  cmpl $0x7, %eax                     #  1473  0x6d25f  3      
  nop                                 #  1474  0x6d262  1      
  movl %ebx, %ebx                     #  1475  0x6d263  2      
  movl %edx, (%r15,%rbx,1)            #  1476  0x6d265  4      
  movl %eax, 0x224(%rsp)              #  1477  0x6d269  7      
  jg .L_6ffa0                         #  1478  0x6d270  6      
  addl $0x8, %ebx                     #  1479  0x6d276  3      
  nop                                 #  1480  0x6d279  1      
.L_6dba0:                             #        0x6d27a  0      
  movl 0x11c(%rsp), %esi              #  1481  0x6d27a  7      
  xorl %ecx, %ecx                     #  1482  0x6d281  2      
  testl %r8d, %r8d                    #  1483  0x6d283  3      
  cmovnsl %r8d, %ecx                  #  1484  0x6d286  4      
  subl %ecx, %esi                     #  1485  0x6d28a  2      
  testl %esi, %esi                    #  1486  0x6d28c  2      
  movl %esi, %ecx                     #  1487  0x6d28e  2      
  jle .L_6e080                        #  1488  0x6d290  6      
  cmpl $0x10, %esi                    #  1489  0x6d296  3      
  nop                                 #  1490  0x6d299  1      
  jle .L_6f360                        #  1491  0x6d29a  6      
  leal 0x220(%rsp), %eax              #  1492  0x6d2a0  7      
  movl %r13d, 0xfc(%rsp)              #  1493  0x6d2a7  8      
  movq %r12, %r13                     #  1494  0x6d2af  3      
  movq 0xc8(%rsp), %r12               #  1495  0x6d2b2  8      
  movq %rax, 0x28(%rsp)               #  1496  0x6d2ba  5      
  movq %rbx, %rax                     #  1497  0x6d2bf  3      
  movl %esi, %ebx                     #  1498  0x6d2c2  2      
  jmpq .L_6dc40                       #  1499  0x6d2c4  5      
  nop                                 #  1500  0x6d2c9  1      
  nop                                 #  1501  0x6d2ca  1      
.L_6dc00:                             #        0x6d2cb  0      
  addl $0x8, %eax                     #  1502  0x6d2cb  3      
  nop                                 #  1503  0x6d2ce  1      
  nop                                 #  1504  0x6d2cf  1      
.L_6dc20:                             #        0x6d2d0  0      
  subl $0x10, %ebx                    #  1505  0x6d2d0  3      
  cmpl $0x10, %ebx                    #  1506  0x6d2d3  3      
  jle .L_6f340                        #  1507  0x6d2d6  6      
  nop                                 #  1508  0x6d2dc  1      
  nop                                 #  1509  0x6d2dd  1      
.L_6dc40:                             #        0x6d2de  0      
  movl %eax, %eax                     #  1510  0x6d2de  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1511  0x6d2e0  9      
  movl 0x224(%rsp), %edx              #  1512  0x6d2e9  7      
  addl $0x10, 0x228(%rsp)             #  1513  0x6d2f0  8      
  nop                                 #  1514  0x6d2f8  1      
  movl %eax, %eax                     #  1515  0x6d2f9  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1516  0x6d2fb  8      
  addl $0x1, %edx                     #  1517  0x6d303  3      
  cmpl $0x7, %edx                     #  1518  0x6d306  3      
  movl %edx, 0x224(%rsp)              #  1519  0x6d309  7      
  jle .L_6dc00                        #  1520  0x6d310  6      
  movl 0x28(%rsp), %edx               #  1521  0x6d316  4      
  movl %r12d, %esi                    #  1522  0x6d31a  3      
  movl %r14d, %edi                    #  1523  0x6d31d  3      
  nop                                 #  1524  0x6d320  1      
  nop                                 #  1525  0x6d321  1      
  callq .__ssprint_r                  #  1526  0x6d322  5      
  testl %eax, %eax                    #  1527  0x6d327  2      
  jne .L_6d340                        #  1528  0x6d329  6      
  leal 0x1e0(%rsp), %eax              #  1529  0x6d32f  7      
  jmpq .L_6dc20                       #  1530  0x6d336  5      
  nop                                 #  1531  0x6d33b  1      
.L_6dcc0:                             #        0x6d33c  0      
  cmpq $0x9, %rcx                     #  1532  0x6d33c  4      
  ja .L_6e880                         #  1533  0x6d340  6      
  movq 0x158(%rsp), %rsi              #  1534  0x6d346  8      
  addl $0x30, %ecx                    #  1535  0x6d34e  3      
  movq %rsi, 0xb0(%rsp)               #  1536  0x6d351  8      
  nop                                 #  1537  0x6d359  1      
  movl %esi, %esi                     #  1538  0x6d35a  2      
  movb %cl, (%r15,%rsi,1)             #  1539  0x6d35c  4      
  movl $0x1, 0xc4(%rsp)               #  1540  0x6d360  11     
  movq 0xf0(%rsp), %rsi               #  1541  0x6d36b  8      
  jmpq .L_6c9a0                       #  1542  0x6d373  5      
  xchgw %ax, %ax                      #  1543  0x6d378  3      
.L_6dd00:                             #        0x6d37b  0      
  movq 0x108(%rsp), %rsi              #  1544  0x6d37b  8      
  movq %rsi, 0xb0(%rsp)               #  1545  0x6d383  8      
  movq 0x148(%rsp), %rsi              #  1546  0x6d38b  8      
  movq 0xb0(%rsp), %rax               #  1547  0x6d393  8      
.L_6dd20:                             #        0x6d39b  0      
  movl %ecx, %edx                     #  1548  0x6d39b  2      
  shrq $0x4, %rcx                     #  1549  0x6d39d  4      
  subl $0x1, %eax                     #  1550  0x6d3a1  3      
  andl $0xf, %edx                     #  1551  0x6d3a4  3      
  addl %esi, %edx                     #  1552  0x6d3a7  2      
  testq %rcx, %rcx                    #  1553  0x6d3a9  3      
  movl %edx, %edx                     #  1554  0x6d3ac  2      
  movzbl (%r15,%rdx,1), %edx          #  1555  0x6d3ae  5      
  movl %eax, %eax                     #  1556  0x6d3b3  2      
  movb %dl, (%r15,%rax,1)             #  1557  0x6d3b5  4      
  xchgw %ax, %ax                      #  1558  0x6d3b9  3      
  jne .L_6dd20                        #  1559  0x6d3bc  6      
  movl 0x108(%rsp), %edx              #  1560  0x6d3c2  7      
  movq %rax, 0xb0(%rsp)               #  1561  0x6d3c9  8      
  movq 0xf0(%rsp), %rsi               #  1562  0x6d3d1  8      
  subl %eax, %edx                     #  1563  0x6d3d9  2      
  nop                                 #  1564  0x6d3db  1      
  movl %edx, 0xc4(%rsp)               #  1565  0x6d3dc  7      
  jmpq .L_6c9a0                       #  1566  0x6d3e3  5      
  nop                                 #  1567  0x6d3e8  1      
  nop                                 #  1568  0x6d3e9  1      
.L_6dd80:                             #        0x6d3ea  0      
  movl 0xc8(%rsp), %esi               #  1569  0x6d3ea  7      
  leal 0x220(%rsp), %edx              #  1570  0x6d3f1  7      
  movl %r14d, %edi                    #  1571  0x6d3f8  3      
  nop                                 #  1572  0x6d3fb  1      
  callq .__ssprint_r                  #  1573  0x6d3fc  5      
  testl %eax, %eax                    #  1574  0x6d401  2      
  jne .L_6d340                        #  1575  0x6d403  6      
  movzbl 0x29f(%rsp), %eax            #  1576  0x6d409  8      
  leal 0x1e0(%rsp), %ebx              #  1577  0x6d411  7      
  jmpq .L_6c080                       #  1578  0x6d418  5      
  nop                                 #  1579  0x6d41d  1      
.L_6ddc0:                             #        0x6d41e  0      
  testb $0x10, %r13b                  #  1580  0x6d41e  4      
  je .L_6ec00                         #  1581  0x6d422  6      
  movq 0xe0(%rsp), %rdx               #  1582  0x6d428  8      
  movl %edx, %edx                     #  1583  0x6d430  2      
  movl (%r15,%rdx,1), %eax            #  1584  0x6d432  4      
  cmpl $0x2f, %eax                    #  1585  0x6d436  3      
  nop                                 #  1586  0x6d439  1      
  ja .L_6fa80                         #  1587  0x6d43a  6      
  movq %rdx, %rcx                     #  1588  0x6d440  3      
  movl %edx, %edx                     #  1589  0x6d443  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1590  0x6d445  5      
  addl %eax, %edx                     #  1591  0x6d44a  2      
  addl $0x8, %eax                     #  1592  0x6d44c  3      
  movl %ecx, %ecx                     #  1593  0x6d44f  2      
  movl %eax, (%r15,%rcx,1)            #  1594  0x6d451  4      
  nop                                 #  1595  0x6d455  1      
.L_6de00:                             #        0x6d456  0      
  movl %edx, %edx                     #  1596  0x6d456  2      
  movslq (%r15,%rdx,1), %rcx          #  1597  0x6d458  4      
  jmpq .L_6cde0                       #  1598  0x6d45c  5      
  nop                                 #  1599  0x6d461  1      
  nop                                 #  1600  0x6d462  1      
.L_6de20:                             #        0x6d463  0      
  movl 0x118(%rsp), %ebx              #  1601  0x6d463  7      
  subl $0x1, %ebx                     #  1602  0x6d46a  3      
  testl %ebx, %ebx                    #  1603  0x6d46d  2      
  jle .L_6d940                        #  1604  0x6d46f  6      
  cmpl $0x10, %ebx                    #  1605  0x6d475  3      
  jle .L_6ea40                        #  1606  0x6d478  6      
  nop                                 #  1607  0x6d47e  1      
  leal 0x220(%rsp), %esi              #  1608  0x6d47f  7      
  movl %r13d, 0xb0(%rsp)              #  1609  0x6d486  8      
  movq %r12, %r13                     #  1610  0x6d48e  3      
  movq 0xc8(%rsp), %r12               #  1611  0x6d491  8      
  movq %rsi, 0x10(%rsp)               #  1612  0x6d499  5      
  nop                                 #  1613  0x6d49e  1      
  jmpq .L_6dec0                       #  1614  0x6d49f  5      
  nop                                 #  1615  0x6d4a4  1      
  nop                                 #  1616  0x6d4a5  1      
.L_6de80:                             #        0x6d4a6  0      
  addl $0x8, %eax                     #  1617  0x6d4a6  3      
  nop                                 #  1618  0x6d4a9  1      
  nop                                 #  1619  0x6d4aa  1      
.L_6dea0:                             #        0x6d4ab  0      
  subl $0x10, %ebx                    #  1620  0x6d4ab  3      
  cmpl $0x10, %ebx                    #  1621  0x6d4ae  3      
  jle .L_6ea20                        #  1622  0x6d4b1  6      
  nop                                 #  1623  0x6d4b7  1      
  nop                                 #  1624  0x6d4b8  1      
.L_6dec0:                             #        0x6d4b9  0      
  movl %eax, %eax                     #  1625  0x6d4b9  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1626  0x6d4bb  9      
  movl 0x224(%rsp), %edx              #  1627  0x6d4c4  7      
  addl $0x10, 0x228(%rsp)             #  1628  0x6d4cb  8      
  nop                                 #  1629  0x6d4d3  1      
  movl %eax, %eax                     #  1630  0x6d4d4  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1631  0x6d4d6  8      
  addl $0x1, %edx                     #  1632  0x6d4de  3      
  cmpl $0x7, %edx                     #  1633  0x6d4e1  3      
  movl %edx, 0x224(%rsp)              #  1634  0x6d4e4  7      
  jle .L_6de80                        #  1635  0x6d4eb  6      
  movl 0x10(%rsp), %edx               #  1636  0x6d4f1  4      
  movl %r12d, %esi                    #  1637  0x6d4f5  3      
  movl %r14d, %edi                    #  1638  0x6d4f8  3      
  nop                                 #  1639  0x6d4fb  1      
  nop                                 #  1640  0x6d4fc  1      
  callq .__ssprint_r                  #  1641  0x6d4fd  5      
  testl %eax, %eax                    #  1642  0x6d502  2      
  jne .L_6d340                        #  1643  0x6d504  6      
  leal 0x1e0(%rsp), %eax              #  1644  0x6d50a  7      
  jmpq .L_6dea0                       #  1645  0x6d511  5      
  nop                                 #  1646  0x6d516  1      
.L_6df40:                             #        0x6d517  0      
  testb $0x10, %r13b                  #  1647  0x6d517  4      
  je .L_6f2c0                         #  1648  0x6d51b  6      
  movq 0xe0(%rsp), %rdx               #  1649  0x6d521  8      
  movl %edx, %edx                     #  1650  0x6d529  2      
  movl (%r15,%rdx,1), %eax            #  1651  0x6d52b  4      
  cmpl $0x2f, %eax                    #  1652  0x6d52f  3      
  nop                                 #  1653  0x6d532  1      
  ja .L_6fa40                         #  1654  0x6d533  6      
  movq %rdx, %rcx                     #  1655  0x6d539  3      
  movl %edx, %edx                     #  1656  0x6d53c  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1657  0x6d53e  5      
  addl %eax, %edx                     #  1658  0x6d543  2      
  addl $0x8, %eax                     #  1659  0x6d545  3      
  movl %ecx, %ecx                     #  1660  0x6d548  2      
  movl %eax, (%r15,%rcx,1)            #  1661  0x6d54a  4      
  nop                                 #  1662  0x6d54e  1      
.L_6df80:                             #        0x6d54f  0      
  movl %edx, %edx                     #  1663  0x6d54f  2      
  movl (%r15,%rdx,1), %ecx            #  1664  0x6d551  4      
  movl $0x1, %eax                     #  1665  0x6d555  5      
  testq %rcx, %rcx                    #  1666  0x6d55a  3      
  setne %sil                          #  1667  0x6d55d  4      
  jmpq .L_6c8c0                       #  1668  0x6d561  5      
  nop                                 #  1669  0x6d566  1      
.L_6dfa0:                             #        0x6d567  0      
  testb $0x10, %r13b                  #  1670  0x6d567  4      
  je .L_6f1e0                         #  1671  0x6d56b  6      
  movq 0xe0(%rsp), %rdx               #  1672  0x6d571  8      
  movl %edx, %edx                     #  1673  0x6d579  2      
  movl (%r15,%rdx,1), %eax            #  1674  0x6d57b  4      
  cmpl $0x2f, %eax                    #  1675  0x6d57f  3      
  nop                                 #  1676  0x6d582  1      
  ja .L_6fa20                         #  1677  0x6d583  6      
  movq %rdx, %rcx                     #  1678  0x6d589  3      
  movl %edx, %edx                     #  1679  0x6d58c  2      
  movl 0xc(%r15,%rdx,1), %edx         #  1680  0x6d58e  5      
  addl %eax, %edx                     #  1681  0x6d593  2      
  addl $0x8, %eax                     #  1682  0x6d595  3      
  movl %ecx, %ecx                     #  1683  0x6d598  2      
  movl %eax, (%r15,%rcx,1)            #  1684  0x6d59a  4      
  nop                                 #  1685  0x6d59e  1      
.L_6dfe0:                             #        0x6d59f  0      
  movl %edx, %edx                     #  1686  0x6d59f  2      
  movl (%r15,%rdx,1), %ecx            #  1687  0x6d5a1  4      
  jmpq .L_6cf80                       #  1688  0x6d5a5  5      
  nop                                 #  1689  0x6d5aa  1      
  nop                                 #  1690  0x6d5ab  1      
.L_6e000:                             #        0x6d5ac  0      
  movq %r13, %r12                     #  1691  0x6d5ac  3      
  movl 0xb0(%rsp), %r13d              #  1692  0x6d5af  8      
  movl %ebx, %ecx                     #  1693  0x6d5b7  2      
  movq %rax, %rbx                     #  1694  0x6d5b9  3      
  nop                                 #  1695  0x6d5bc  1      
  nop                                 #  1696  0x6d5bd  1      
.L_6e020:                             #        0x6d5be  0      
  movl %ebx, %ebx                     #  1697  0x6d5be  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1698  0x6d5c0  5      
  movl %ebx, %ebx                     #  1699  0x6d5c5  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  1700  0x6d5c7  8      
  addl %ecx, 0x228(%rsp)              #  1701  0x6d5cf  7      
  jmpq .L_6c300                       #  1702  0x6d5d6  5      
  nop                                 #  1703  0x6d5db  1      
.L_6e040:                             #        0x6d5dc  0      
  movl 0xc8(%rsp), %esi               #  1704  0x6d5dc  7      
  leal 0x220(%rsp), %edx              #  1705  0x6d5e3  7      
  movl %r14d, %edi                    #  1706  0x6d5ea  3      
  nop                                 #  1707  0x6d5ed  1      
  callq .__ssprint_r                  #  1708  0x6d5ee  5      
  testl %eax, %eax                    #  1709  0x6d5f3  2      
  jne .L_6d340                        #  1710  0x6d5f5  6      
  leal 0x1e0(%rsp), %ebx              #  1711  0x6d5fb  7      
  xchgw %ax, %ax                      #  1712  0x6d602  3      
  nop                                 #  1713  0x6d605  1      
.L_6e080:                             #        0x6d606  0      
  movl 0x11c(%rsp), %edx              #  1714  0x6d606  7      
  addl 0xb0(%rsp), %edx               #  1715  0x6d60d  7      
  testl $0x400, %r13d                 #  1716  0x6d614  7      
  movq %rdx, 0xb0(%rsp)               #  1717  0x6d61b  8      
  nop                                 #  1718  0x6d623  1      
  je .L_6e3a0                         #  1719  0x6d624  6      
  movl 0x12c(%rsp), %esi              #  1720  0x6d62a  7      
  testl %esi, %esi                    #  1721  0x6d631  2      
  jle .L_70c20                        #  1722  0x6d633  6      
  nop                                 #  1723  0x6d639  1      
.L_6e0c0:                             #        0x6d63a  0      
  leal 0x220(%rsp), %ecx              #  1724  0x6d63a  7      
  movl %r13d, 0xfc(%rsp)              #  1725  0x6d641  8      
  movq %r12, %r13                     #  1726  0x6d649  3      
  movq 0xc8(%rsp), %r12               #  1727  0x6d64c  8      
  movq %rbx, %rax                     #  1728  0x6d654  3      
  nop                                 #  1729  0x6d657  1      
  movq %rcx, 0x20(%rsp)               #  1730  0x6d658  5      
  nop                                 #  1731  0x6d65d  1      
  nop                                 #  1732  0x6d65e  1      
.L_6e100:                             #        0x6d65f  0      
  movl 0x114(%rsp), %ebx              #  1733  0x6d65f  7      
  testl %ebx, %ebx                    #  1734  0x6d666  2      
  je .L_6eba0                         #  1735  0x6d668  6      
  subl $0x1, 0x114(%rsp)              #  1736  0x6d66e  8      
  nop                                 #  1737  0x6d676  1      
.L_6e120:                             #        0x6d677  0      
  movl 0x140(%rsp), %edx              #  1738  0x6d677  7      
  movl 0x150(%rsp), %esi              #  1739  0x6d67e  7      
  movl %eax, %eax                     #  1740  0x6d685  2      
  movl %edx, 0x4(%r15,%rax,1)         #  1741  0x6d687  5      
  addl %edx, 0x228(%rsp)              #  1742  0x6d68c  7      
  nop                                 #  1743  0x6d693  1      
  movl 0x224(%rsp), %edx              #  1744  0x6d694  7      
  movl %eax, %eax                     #  1745  0x6d69b  2      
  movl %esi, (%r15,%rax,1)            #  1746  0x6d69d  4      
  addl $0x1, %edx                     #  1747  0x6d6a1  3      
  cmpl $0x7, %edx                     #  1748  0x6d6a4  3      
  movl %edx, 0x224(%rsp)              #  1749  0x6d6a7  7      
  jg .L_6eaa0                         #  1750  0x6d6ae  6      
  addl $0x8, %eax                     #  1751  0x6d6b4  3      
  nop                                 #  1752  0x6d6b7  1      
  nop                                 #  1753  0x6d6b8  1      
.L_6e180:                             #        0x6d6b9  0      
  movq 0xf0(%rsp), %rbx               #  1754  0x6d6b9  8      
  movl 0xc4(%rsp), %ecx               #  1755  0x6d6c1  7      
  subl 0xb0(%rsp), %ecx               #  1756  0x6d6c8  7      
  movl %ebx, %ebx                     #  1757  0x6d6cf  2      
  movsbl (%r15,%rbx,1), %edx          #  1758  0x6d6d1  5      
  cmpl %ecx, %edx                     #  1759  0x6d6d6  2      
  nop                                 #  1760  0x6d6d8  1      
  cmovlel %edx, %ecx                  #  1761  0x6d6d9  3      
  testl %ecx, %ecx                    #  1762  0x6d6dc  2      
  jle .L_6e200                        #  1763  0x6d6de  6      
  movl %eax, %eax                     #  1764  0x6d6e4  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  1765  0x6d6e6  5      
  movl 0x224(%rsp), %edx              #  1766  0x6d6eb  7      
  movl 0xb0(%rsp), %esi               #  1767  0x6d6f2  7      
  nop                                 #  1768  0x6d6f9  1      
  addl %ecx, 0x228(%rsp)              #  1769  0x6d6fa  7      
  addl $0x1, %edx                     #  1770  0x6d701  3      
  cmpl $0x7, %edx                     #  1771  0x6d704  3      
  movl %eax, %eax                     #  1772  0x6d707  2      
  movl %esi, (%r15,%rax,1)            #  1773  0x6d709  4      
  movl %edx, 0x224(%rsp)              #  1774  0x6d70d  7      
  jg .L_6f6e0                         #  1775  0x6d714  6      
  movl %ebx, %ebx                     #  1776  0x6d71a  2      
  movsbl (%r15,%rbx,1), %edx          #  1777  0x6d71c  5      
  addl $0x8, %eax                     #  1778  0x6d721  3      
  nop                                 #  1779  0x6d724  1      
  nop                                 #  1780  0x6d725  1      
.L_6e200:                             #        0x6d726  0      
  testl %ecx, %ecx                    #  1781  0x6d726  2      
  movl $0x0, %ebx                     #  1782  0x6d728  5      
  cmovsl %ebx, %ecx                   #  1783  0x6d72d  3      
  movl %edx, %ebx                     #  1784  0x6d730  2      
  subl %ecx, %ebx                     #  1785  0x6d732  2      
  testl %ebx, %ebx                    #  1786  0x6d734  2      
  jg .L_6e260                         #  1787  0x6d736  6      
  jmpq .L_6e320                       #  1788  0x6d73c  5      
  nop                                 #  1789  0x6d741  1      
.L_6e220:                             #        0x6d742  0      
  addl $0x8, %eax                     #  1790  0x6d742  3      
  nop                                 #  1791  0x6d745  1      
  nop                                 #  1792  0x6d746  1      
.L_6e240:                             #        0x6d747  0      
  subl $0x10, %ebx                    #  1793  0x6d747  3      
  nop                                 #  1794  0x6d74a  1      
  nop                                 #  1795  0x6d74b  1      
.L_6e260:                             #        0x6d74c  0      
  cmpl $0x10, %ebx                    #  1796  0x6d74c  3      
  jle .L_6e5c0                        #  1797  0x6d74f  6      
  movl %eax, %eax                     #  1798  0x6d755  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1799  0x6d757  9      
  movl 0x224(%rsp), %edx              #  1800  0x6d760  7      
  nop                                 #  1801  0x6d767  1      
  addl $0x10, 0x228(%rsp)             #  1802  0x6d768  8      
  movl %eax, %eax                     #  1803  0x6d770  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1804  0x6d772  8      
  addl $0x1, %edx                     #  1805  0x6d77a  3      
  cmpl $0x7, %edx                     #  1806  0x6d77d  3      
  movl %edx, 0x224(%rsp)              #  1807  0x6d780  7      
  nop                                 #  1808  0x6d787  1      
  jle .L_6e220                        #  1809  0x6d788  6      
  movl 0x20(%rsp), %edx               #  1810  0x6d78e  4      
  movl %r12d, %esi                    #  1811  0x6d792  3      
  movl %r14d, %edi                    #  1812  0x6d795  3      
  nop                                 #  1813  0x6d798  1      
  callq .__ssprint_r                  #  1814  0x6d799  5      
  testl %eax, %eax                    #  1815  0x6d79e  2      
  jne .L_6d340                        #  1816  0x6d7a0  6      
  leal 0x1e0(%rsp), %eax              #  1817  0x6d7a6  7      
  jmpq .L_6e240                       #  1818  0x6d7ad  5      
  nop                                 #  1819  0x6d7b2  1      
.L_6e2e0:                             #        0x6d7b3  0      
  movl 0x20(%rsp), %edx               #  1820  0x6d7b3  4      
  movl %r12d, %esi                    #  1821  0x6d7b7  3      
  movl %r14d, %edi                    #  1822  0x6d7ba  3      
  xchgw %ax, %ax                      #  1823  0x6d7bd  3      
  nop                                 #  1824  0x6d7c0  1      
  callq .__ssprint_r                  #  1825  0x6d7c1  5      
  testl %eax, %eax                    #  1826  0x6d7c6  2      
  jne .L_6d340                        #  1827  0x6d7c8  6      
  movq 0xf0(%rsp), %rcx               #  1828  0x6d7ce  8      
  leal 0x1e0(%rsp), %eax              #  1829  0x6d7d6  7      
  movl %ecx, %ecx                     #  1830  0x6d7dd  2      
  movsbl (%r15,%rcx,1), %edx          #  1831  0x6d7df  5      
  xchgw %ax, %ax                      #  1832  0x6d7e4  3      
.L_6e320:                             #        0x6d7e7  0      
  addl 0xb0(%rsp), %edx               #  1833  0x6d7e7  7      
  movl 0x114(%rsp), %ecx              #  1834  0x6d7ee  7      
  testl %ecx, %ecx                    #  1835  0x6d7f5  2      
  movq %rdx, 0xb0(%rsp)               #  1836  0x6d7f7  8      
  jg .L_6e100                         #  1837  0x6d7ff  6      
  xchgw %ax, %ax                      #  1838  0x6d805  3      
  movl 0x12c(%rsp), %edx              #  1839  0x6d808  7      
  testl %edx, %edx                    #  1840  0x6d80f  2      
  jg .L_6e100                         #  1841  0x6d811  6      
  movq %r13, %r12                     #  1842  0x6d817  3      
  movl 0xfc(%rsp), %r13d              #  1843  0x6d81a  8      
  movq %rax, %rbx                     #  1844  0x6d822  3      
  nop                                 #  1845  0x6d825  1      
.L_6e360:                             #        0x6d826  0      
  movl 0xb0(%rsp), %esi               #  1846  0x6d826  7      
  cmpl %esi, 0xd8(%rsp)               #  1847  0x6d82d  7      
  movq 0xd8(%rsp), %rax               #  1848  0x6d834  8      
  cmovaeq 0xb0(%rsp), %rax            #  1849  0x6d83c  9      
  nop                                 #  1850  0x6d845  1      
  movq %rax, 0xb0(%rsp)               #  1851  0x6d846  8      
  nop                                 #  1852  0x6d84e  1      
  nop                                 #  1853  0x6d84f  1      
.L_6e3a0:                             #        0x6d850  0      
  movl 0x28c(%rsp), %ecx              #  1854  0x6d850  7      
  cmpl 0x118(%rsp), %ecx              #  1855  0x6d857  7      
  jge .L_6fd00                        #  1856  0x6d85e  6      
  nop                                 #  1857  0x6d864  1      
.L_6e3c0:                             #        0x6d865  0      
  movl 0x13c(%rsp), %ecx              #  1858  0x6d865  7      
  movl 0x120(%rsp), %edx              #  1859  0x6d86c  7      
  movl %ebx, %ebx                     #  1860  0x6d873  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  1861  0x6d875  5      
  movl 0x224(%rsp), %eax              #  1862  0x6d87a  7      
  nop                                 #  1863  0x6d881  1      
  addl %ecx, 0x228(%rsp)              #  1864  0x6d882  7      
  movl %ebx, %ebx                     #  1865  0x6d889  2      
  movl %edx, (%r15,%rbx,1)            #  1866  0x6d88b  4      
  addl $0x1, %eax                     #  1867  0x6d88f  3      
  cmpl $0x7, %eax                     #  1868  0x6d892  3      
  movl %eax, 0x224(%rsp)              #  1869  0x6d895  7      
  jg .L_6fde0                         #  1870  0x6d89c  6      
  movl 0x28c(%rsp), %ecx              #  1871  0x6d8a2  7      
  addl $0x8, %ebx                     #  1872  0x6d8a9  3      
  nop                                 #  1873  0x6d8ac  1      
  nop                                 #  1874  0x6d8ad  1      
.L_6e420:                             #        0x6d8ae  0      
  movl 0xc4(%rsp), %r8d               #  1875  0x6d8ae  8      
  movl 0x118(%rsp), %esi              #  1876  0x6d8b6  7      
  subl 0xb0(%rsp), %r8d               #  1877  0x6d8bd  8      
  subl %ecx, %esi                     #  1878  0x6d8c5  2      
  movl %esi, %ecx                     #  1879  0x6d8c7  2      
  cmpl %r8d, %esi                     #  1880  0x6d8c9  3      
  xchgw %ax, %ax                      #  1881  0x6d8cc  3      
  cmovlel %esi, %r8d                  #  1882  0x6d8cf  4      
  testl %r8d, %r8d                    #  1883  0x6d8d3  3      
  jle .L_6e4a0                        #  1884  0x6d8d6  6      
  movl 0xb0(%rsp), %eax               #  1885  0x6d8dc  7      
  movl %ebx, %ebx                     #  1886  0x6d8e3  2      
  movl %r8d, 0x4(%r15,%rbx,1)         #  1887  0x6d8e5  5      
  addl %r8d, 0x228(%rsp)              #  1888  0x6d8ea  8      
  nop                                 #  1889  0x6d8f2  1      
  movl %ebx, %ebx                     #  1890  0x6d8f3  2      
  movl %eax, (%r15,%rbx,1)            #  1891  0x6d8f5  4      
  movl 0x224(%rsp), %eax              #  1892  0x6d8f9  7      
  addl $0x1, %eax                     #  1893  0x6d900  3      
  cmpl $0x7, %eax                     #  1894  0x6d903  3      
  movl %eax, 0x224(%rsp)              #  1895  0x6d906  7      
  jg .L_706e0                         #  1896  0x6d90d  6      
  movl 0x118(%rsp), %ecx              #  1897  0x6d913  7      
  subl 0x28c(%rsp), %ecx              #  1898  0x6d91a  7      
  addl $0x8, %ebx                     #  1899  0x6d921  3      
  nop                                 #  1900  0x6d924  1      
.L_6e4a0:                             #        0x6d925  0      
  xorl %eax, %eax                     #  1901  0x6d925  2      
  testl %r8d, %r8d                    #  1902  0x6d927  3      
  cmovnsl %r8d, %eax                  #  1903  0x6d92a  4      
  subl %eax, %ecx                     #  1904  0x6d92e  2      
  testl %ecx, %ecx                    #  1905  0x6d930  2      
  jle .L_6c320                        #  1906  0x6d932  6      
  cmpl $0x10, %ecx                    #  1907  0x6d938  3      
  jle .L_6e020                        #  1908  0x6d93b  6      
  nop                                 #  1909  0x6d941  1      
  leal 0x220(%rsp), %edx              #  1910  0x6d942  7      
  movq %rbx, %rax                     #  1911  0x6d949  3      
  movl %r13d, 0xb0(%rsp)              #  1912  0x6d94c  8      
  movl %ecx, %ebx                     #  1913  0x6d954  2      
  movq %r12, %r13                     #  1914  0x6d956  3      
  movq 0xc8(%rsp), %r12               #  1915  0x6d959  8      
  nop                                 #  1916  0x6d961  1      
  movq %rdx, 0x18(%rsp)               #  1917  0x6d962  5      
  jmpq .L_6e540                       #  1918  0x6d967  5      
  nop                                 #  1919  0x6d96c  1      
  nop                                 #  1920  0x6d96d  1      
.L_6e500:                             #        0x6d96e  0      
  addl $0x8, %eax                     #  1921  0x6d96e  3      
  nop                                 #  1922  0x6d971  1      
  nop                                 #  1923  0x6d972  1      
.L_6e520:                             #        0x6d973  0      
  subl $0x10, %ebx                    #  1924  0x6d973  3      
  cmpl $0x10, %ebx                    #  1925  0x6d976  3      
  jle .L_6e000                        #  1926  0x6d979  6      
  nop                                 #  1927  0x6d97f  1      
  nop                                 #  1928  0x6d980  1      
.L_6e540:                             #        0x6d981  0      
  movl %eax, %eax                     #  1929  0x6d981  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  1930  0x6d983  9      
  movl 0x224(%rsp), %edx              #  1931  0x6d98c  7      
  addl $0x10, 0x228(%rsp)             #  1932  0x6d993  8      
  nop                                 #  1933  0x6d99b  1      
  movl %eax, %eax                     #  1934  0x6d99c  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1935  0x6d99e  8      
  addl $0x1, %edx                     #  1936  0x6d9a6  3      
  cmpl $0x7, %edx                     #  1937  0x6d9a9  3      
  movl %edx, 0x224(%rsp)              #  1938  0x6d9ac  7      
  jle .L_6e500                        #  1939  0x6d9b3  6      
  movl 0x18(%rsp), %edx               #  1940  0x6d9b9  4      
  movl %r12d, %esi                    #  1941  0x6d9bd  3      
  movl %r14d, %edi                    #  1942  0x6d9c0  3      
  nop                                 #  1943  0x6d9c3  1      
  nop                                 #  1944  0x6d9c4  1      
  callq .__ssprint_r                  #  1945  0x6d9c5  5      
  testl %eax, %eax                    #  1946  0x6d9ca  2      
  jne .L_6d340                        #  1947  0x6d9cc  6      
  leal 0x1e0(%rsp), %eax              #  1948  0x6d9d2  7      
  jmpq .L_6e520                       #  1949  0x6d9d9  5      
  nop                                 #  1950  0x6d9de  1      
.L_6e5c0:                             #        0x6d9df  0      
  movl %eax, %eax                     #  1951  0x6d9df  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  1952  0x6d9e1  5      
  movl 0x224(%rsp), %edx              #  1953  0x6d9e6  7      
  addl %ebx, 0x228(%rsp)              #  1954  0x6d9ed  7      
  movl %eax, %eax                     #  1955  0x6d9f4  2      
  movl $0x10023f00, (%r15,%rax,1)     #  1956  0x6d9f6  8      
  nop                                 #  1957  0x6d9fe  1      
  addl $0x1, %edx                     #  1958  0x6d9ff  3      
  cmpl $0x7, %edx                     #  1959  0x6da02  3      
  movl %edx, 0x224(%rsp)              #  1960  0x6da05  7      
  jg .L_6e2e0                         #  1961  0x6da0c  6      
  movq 0xf0(%rsp), %rsi               #  1962  0x6da12  8      
  addl $0x8, %eax                     #  1963  0x6da1a  3      
  xchgw %ax, %ax                      #  1964  0x6da1d  3      
  movl %esi, %esi                     #  1965  0x6da20  2      
  movsbl (%r15,%rsi,1), %edx          #  1966  0x6da22  5      
  jmpq .L_6e320                       #  1967  0x6da27  5      
  nop                                 #  1968  0x6da2c  1      
  nop                                 #  1969  0x6da2d  1      
.L_6e620:                             #        0x6da2e  0      
  testb $0x1, %r13b                   #  1970  0x6da2e  4      
  jne .L_6d800                        #  1971  0x6da32  6      
  movl 0xb0(%rsp), %eax               #  1972  0x6da38  7      
  movl %ebx, %ebx                     #  1973  0x6da3f  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  1974  0x6da41  9      
  nop                                 #  1975  0x6da4a  1      
  addl $0x1, 0x228(%rsp)              #  1976  0x6da4b  8      
  movl %ebx, %ebx                     #  1977  0x6da53  2      
  movl %eax, (%r15,%rbx,1)            #  1978  0x6da55  4      
  movl 0x224(%rsp), %eax              #  1979  0x6da59  7      
  addl $0x1, %eax                     #  1980  0x6da60  3      
  cmpl $0x7, %eax                     #  1981  0x6da63  3      
  nop                                 #  1982  0x6da66  1      
  movl %eax, 0x224(%rsp)              #  1983  0x6da67  7      
  jg .L_6e680                         #  1984  0x6da6e  6      
  leal 0x8(%rbx), %eax                #  1985  0x6da74  3      
  jmpq .L_6d940                       #  1986  0x6da77  5      
  nop                                 #  1987  0x6da7c  1      
.L_6e680:                             #        0x6da7d  0      
  movl 0xc8(%rsp), %esi               #  1988  0x6da7d  7      
  leal 0x220(%rsp), %edx              #  1989  0x6da84  7      
  movl %r14d, %edi                    #  1990  0x6da8b  3      
  nop                                 #  1991  0x6da8e  1      
  callq .__ssprint_r                  #  1992  0x6da8f  5      
  testl %eax, %eax                    #  1993  0x6da94  2      
  jne .L_6d340                        #  1994  0x6da96  6      
  leal 0x1e0(%rsp), %eax              #  1995  0x6da9c  7      
  jmpq .L_6d940                       #  1996  0x6daa3  5      
  nop                                 #  1997  0x6daa8  1      
.L_6e6c0:                             #        0x6daa9  0      
  movl 0xc8(%rsp), %esi               #  1998  0x6daa9  7      
  leal 0x220(%rsp), %edx              #  1999  0x6dab0  7      
  movl %r14d, %edi                    #  2000  0x6dab7  3      
  nop                                 #  2001  0x6daba  1      
  callq .__ssprint_r                  #  2002  0x6dabb  5      
  testl %eax, %eax                    #  2003  0x6dac0  2      
  jne .L_6d340                        #  2004  0x6dac2  6      
  leal 0x1e0(%rsp), %eax              #  2005  0x6dac8  7      
  jmpq .L_6d8c0                       #  2006  0x6dacf  5      
  nop                                 #  2007  0x6dad4  1      
.L_6e700:                             #        0x6dad5  0      
  movl 0xc8(%rsp), %esi               #  2008  0x6dad5  7      
  leal 0x220(%rsp), %edx              #  2009  0x6dadc  7      
  movl %r14d, %edi                    #  2010  0x6dae3  3      
  nop                                 #  2011  0x6dae6  1      
  callq .__ssprint_r                  #  2012  0x6dae7  5      
  testl %eax, %eax                    #  2013  0x6daec  2      
  jne .L_6d340                        #  2014  0x6daee  6      
  leal 0x1e0(%rsp), %eax              #  2015  0x6daf4  7      
  jmpq .L_6d860                       #  2016  0x6dafb  5      
  nop                                 #  2017  0x6db00  1      
.L_6e740:                             #        0x6db01  0      
  leal 0x250(%rsp), %ecx              #  2018  0x6db01  7      
  movl $0x8, %edx                     #  2019  0x6db08  5      
  xorl %esi, %esi                     #  2020  0x6db0d  2      
  movl %ecx, %edi                     #  2021  0x6db0f  2      
  movq %rcx, 0x98(%rsp)               #  2022  0x6db11  8      
  nop                                 #  2023  0x6db19  1      
  callq .memset                       #  2024  0x6db1a  5      
  movq 0xe0(%rsp), %rax               #  2025  0x6db1f  8      
  movq 0x98(%rsp), %rcx               #  2026  0x6db27  8      
  movl %eax, %eax                     #  2027  0x6db2f  2      
  movl (%r15,%rax,1), %edx            #  2028  0x6db31  4      
  cmpl $0x2f, %edx                    #  2029  0x6db35  3      
  ja .L_6f960                         #  2030  0x6db38  6      
  nop                                 #  2031  0x6db3e  1      
  movq %rax, %rsi                     #  2032  0x6db3f  3      
  movl %eax, %eax                     #  2033  0x6db42  2      
  movl 0xc(%r15,%rax,1), %eax         #  2034  0x6db44  5      
  addl %edx, %eax                     #  2035  0x6db49  2      
  addl $0x8, %edx                     #  2036  0x6db4b  3      
  movl %esi, %esi                     #  2037  0x6db4e  2      
  movl %edx, (%r15,%rsi,1)            #  2038  0x6db50  4      
  nop                                 #  2039  0x6db54  1      
.L_6e7a0:                             #        0x6db55  0      
  movl %eax, %eax                     #  2040  0x6db55  2      
  movl (%r15,%rax,1), %edx            #  2041  0x6db57  4      
  movl 0x68(%rsp), %esi               #  2042  0x6db5b  4      
  movl %r14d, %edi                    #  2043  0x6db5f  3      
  nop                                 #  2044  0x6db62  1      
  callq ._wcrtomb_r                   #  2045  0x6db63  5      
  cmpl $0xffffffff, %eax              #  2046  0x6db68  5      
  movl %eax, 0xc4(%rsp)               #  2047  0x6db6d  7      
  je .L_710e0                         #  2048  0x6db74  6      
  nop                                 #  2049  0x6db7a  1      
  nop                                 #  2050  0x6db7b  1      
.L_6e7e0:                             #        0x6db7c  0      
  movl 0xc4(%rsp), %edx               #  2051  0x6db7c  7      
  movl $0x0, %eax                     #  2052  0x6db83  5      
  movb $0x0, 0x29f(%rsp)              #  2053  0x6db88  8      
  movq $0x0, 0xe8(%rsp)               #  2054  0x6db90  12     
  movl $0x0, 0x104(%rsp)              #  2055  0x6db9c  11     
  movl $0x0, 0x114(%rsp)              #  2056  0x6dba7  11     
  nop                                 #  2057  0x6dbb2  1      
  movl $0x0, 0x12c(%rsp)              #  2058  0x6dbb3  11     
  testl %edx, %edx                    #  2059  0x6dbbe  2      
  cmovnsl 0xc4(%rsp), %eax            #  2060  0x6dbc0  8      
  leal 0x170(%rsp), %edx              #  2061  0x6dbc8  7      
  nop                                 #  2062  0x6dbcf  1      
  movl $0x0, 0x11c(%rsp)              #  2063  0x6dbd0  11     
  movq %rdx, 0xb0(%rsp)               #  2064  0x6dbdb  8      
  movl %eax, 0xb8(%rsp)               #  2065  0x6dbe3  7      
  xorl %eax, %eax                     #  2066  0x6dbea  2      
  nop                                 #  2067  0x6dbec  1      
  jmpq .L_6bee0                       #  2068  0x6dbed  5      
  nop                                 #  2069  0x6dbf2  1      
  nop                                 #  2070  0x6dbf3  1      
.L_6e880:                             #        0x6dbf4  0      
  movl 0x140(%rsp), %r11d             #  2071  0x6dbf4  8      
  movq 0x108(%rsp), %rax              #  2072  0x6dbfc  8      
  movl %r13d, %r9d                    #  2073  0x6dc04  3      
  movl %r10d, 0xb8(%rsp)              #  2074  0x6dc07  8      
  nop                                 #  2075  0x6dc0f  1      
  andl $0x400, %r9d                   #  2076  0x6dc10  7      
  movq %rbx, %r10                     #  2077  0x6dc17  3      
  movl $0x0, 0x118(%rsp)              #  2078  0x6dc1a  11     
  movq $0xcccccccccccccccd, %r8       #  2079  0x6dc25  10     
  nop                                 #  2080  0x6dc2f  1      
  xorl %edi, %edi                     #  2081  0x6dc30  2      
  negl %r11d                          #  2082  0x6dc32  3      
  movq %rax, %rbx                     #  2083  0x6dc35  3      
  movl %r11d, 0xb0(%rsp)              #  2084  0x6dc38  8      
  movq %r12, %r11                     #  2085  0x6dc40  3      
  movq 0xf0(%rsp), %r12               #  2086  0x6dc43  8      
  jmpq .L_6e920                       #  2087  0x6dc4b  5      
  nop                                 #  2088  0x6dc50  1      
.L_6e8e0:                             #        0x6dc51  0      
  movq %r12, %rsi                     #  2089  0x6dc51  3      
  nop                                 #  2090  0x6dc54  1      
  nop                                 #  2091  0x6dc55  1      
.L_6e900:                             #        0x6dc56  0      
  movq %rcx, %rax                     #  2092  0x6dc56  3      
  mulq %r8                            #  2093  0x6dc59  3      
  movq %rdx, %rcx                     #  2094  0x6dc5c  3      
  shrq $0x3, %rcx                     #  2095  0x6dc5f  4      
  testq %rcx, %rcx                    #  2096  0x6dc63  3      
  je .L_6ea60                         #  2097  0x6dc66  6      
  movq %rsi, %r12                     #  2098  0x6dc6c  3      
  nop                                 #  2099  0x6dc6f  1      
.L_6e920:                             #        0x6dc70  0      
  movq %rcx, %rax                     #  2100  0x6dc70  3      
  subl $0x1, %ebx                     #  2101  0x6dc73  3      
  addl $0x1, %edi                     #  2102  0x6dc76  3      
  mulq %r8                            #  2103  0x6dc79  3      
  shrq $0x3, %rdx                     #  2104  0x6dc7c  4      
  leaq (%rdx,%rdx,4), %rax            #  2105  0x6dc80  4      
  movq %rcx, %rdx                     #  2106  0x6dc84  3      
  addq %rax, %rax                     #  2107  0x6dc87  3      
  subq %rax, %rdx                     #  2108  0x6dc8a  3      
  movq %rdx, %rax                     #  2109  0x6dc8d  3      
  addl $0x30, %eax                    #  2110  0x6dc90  3      
  testl %r9d, %r9d                    #  2111  0x6dc93  3      
  movl %ebx, %ebx                     #  2112  0x6dc96  2      
  movb %al, (%r15,%rbx,1)             #  2113  0x6dc98  4      
  je .L_6e8e0                         #  2114  0x6dc9c  6      
  movl %r12d, %r12d                   #  2115  0x6dca2  3      
  movzbl (%r15,%r12,1), %eax          #  2116  0x6dca5  5      
  movsbl %al, %edx                    #  2117  0x6dcaa  3      
  cmpl %edx, %edi                     #  2118  0x6dcad  2      
  nop                                 #  2119  0x6dcaf  1      
  jne .L_6e8e0                        #  2120  0x6dcb0  6      
  cmpb $0x7f, %al                     #  2121  0x6dcb6  2      
  je .L_6e8e0                         #  2122  0x6dcb8  6      
  cmpq $0x9, %rcx                     #  2123  0x6dcbe  4      
  jbe .L_6e8e0                        #  2124  0x6dcc2  6      
  addl 0xb0(%rsp), %ebx               #  2125  0x6dcc8  7      
  nop                                 #  2126  0x6dccf  1      
  movl 0x150(%rsp), %esi              #  2127  0x6dcd0  7      
  movl 0x140(%rsp), %edx              #  2128  0x6dcd7  7      
  movq %rcx, 0x98(%rsp)               #  2129  0x6dcde  8      
  movq %r8, 0x88(%rsp)                #  2130  0x6dce6  8      
  xchgw %ax, %ax                      #  2131  0x6dcee  3      
  movl %r9d, 0xa8(%rsp)               #  2132  0x6dcf1  8      
  movq %r10, 0x90(%rsp)               #  2133  0x6dcf9  8      
  movq %r11, 0xa0(%rsp)               #  2134  0x6dd01  8      
  movl %ebx, %edi                     #  2135  0x6dd09  2      
  nop                                 #  2136  0x6dd0b  1      
  callq .strncpy                      #  2137  0x6dd0c  5      
  leal 0x1(%r12), %esi                #  2138  0x6dd11  5      
  xorl %edi, %edi                     #  2139  0x6dd16  2      
  movq 0x98(%rsp), %rcx               #  2140  0x6dd18  8      
  movq 0x88(%rsp), %r8                #  2141  0x6dd20  8      
  movl 0xa8(%rsp), %r9d               #  2142  0x6dd28  8      
  nop                                 #  2143  0x6dd30  1      
  movl %esi, %esi                     #  2144  0x6dd31  2      
  cmpb $0x0, (%r15,%rsi,1)            #  2145  0x6dd33  5      
  movq 0x90(%rsp), %r10               #  2146  0x6dd38  8      
  movq 0xa0(%rsp), %r11               #  2147  0x6dd40  8      
  jne .L_6e900                        #  2148  0x6dd48  6      
  nop                                 #  2149  0x6dd4e  1      
  jmpq .L_6e8e0                       #  2150  0x6dd4f  5      
  nop                                 #  2151  0x6dd54  1      
  nop                                 #  2152  0x6dd55  1      
.L_6ea20:                             #        0x6dd56  0      
  movq %r13, %r12                     #  2153  0x6dd56  3      
  movl 0xb0(%rsp), %r13d              #  2154  0x6dd59  8      
  nop                                 #  2155  0x6dd61  1      
  nop                                 #  2156  0x6dd62  1      
.L_6ea40:                             #        0x6dd63  0      
  movl %eax, %eax                     #  2157  0x6dd63  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  2158  0x6dd65  5      
  movl %eax, %eax                     #  2159  0x6dd6a  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2160  0x6dd6c  8      
  addl %ebx, 0x228(%rsp)              #  2161  0x6dd74  7      
  jmpq .L_6d920                       #  2162  0x6dd7b  5      
  nop                                 #  2163  0x6dd80  1      
.L_6ea60:                             #        0x6dd81  0      
  movq %rbx, 0xb0(%rsp)               #  2164  0x6dd81  8      
  movl 0x108(%rsp), %ecx              #  2165  0x6dd89  7      
  movq %r10, %rbx                     #  2166  0x6dd90  3      
  subl 0xb0(%rsp), %ecx               #  2167  0x6dd93  7      
  movq %r11, %r12                     #  2168  0x6dd9a  3      
  nop                                 #  2169  0x6dd9d  1      
  movl %edi, 0x118(%rsp)              #  2170  0x6dd9e  7      
  movl 0xb8(%rsp), %r10d              #  2171  0x6dda5  8      
  movl %ecx, 0xc4(%rsp)               #  2172  0x6ddad  7      
  jmpq .L_6c9a0                       #  2173  0x6ddb4  5      
  nop                                 #  2174  0x6ddb9  1      
.L_6eaa0:                             #        0x6ddba  0      
  movl 0x20(%rsp), %edx               #  2175  0x6ddba  4      
  movl %r12d, %esi                    #  2176  0x6ddbe  3      
  movl %r14d, %edi                    #  2177  0x6ddc1  3      
  xchgw %ax, %ax                      #  2178  0x6ddc4  3      
  nop                                 #  2179  0x6ddc7  1      
  callq .__ssprint_r                  #  2180  0x6ddc8  5      
  testl %eax, %eax                    #  2181  0x6ddcd  2      
  jne .L_6d340                        #  2182  0x6ddcf  6      
  leal 0x1e0(%rsp), %eax              #  2183  0x6ddd5  7      
  jmpq .L_6e180                       #  2184  0x6dddc  5      
  nop                                 #  2185  0x6dde1  1      
.L_6eae0:                             #        0x6dde2  0      
  movl 0xc8(%rsp), %esi               #  2186  0x6dde2  7      
  leal 0x220(%rsp), %edx              #  2187  0x6dde9  7      
  movl %r14d, %edi                    #  2188  0x6ddf0  3      
  nop                                 #  2189  0x6ddf3  1      
  callq .__ssprint_r                  #  2190  0x6ddf4  5      
  testl %eax, %eax                    #  2191  0x6ddf9  2      
  jne .L_6d340                        #  2192  0x6ddfb  6      
  leal 0x1e0(%rsp), %ebx              #  2193  0x6de01  7      
  jmpq .L_6c160                       #  2194  0x6de08  5      
  nop                                 #  2195  0x6de0d  1      
.L_6eb20:                             #        0x6de0e  0      
  cmpb $0x30, %al                     #  2196  0x6de0e  2      
  je .L_70000                         #  2197  0x6de10  6      
  movl 0xb0(%rsp), %eax               #  2198  0x6de16  7      
  subl $0x1, %eax                     #  2199  0x6de1d  3      
  movq %rax, 0xb0(%rsp)               #  2200  0x6de20  8      
  nop                                 #  2201  0x6de28  1      
  movl %eax, %eax                     #  2202  0x6de29  2      
  movb $0x30, (%r15,%rax,1)           #  2203  0x6de2b  5      
  movl 0x108(%rsp), %edx              #  2204  0x6de30  7      
  movq 0xf0(%rsp), %rsi               #  2205  0x6de37  8      
  subl %eax, %edx                     #  2206  0x6de3f  2      
  movl %edx, 0xc4(%rsp)               #  2207  0x6de41  7      
  nop                                 #  2208  0x6de48  1      
  jmpq .L_6c9a0                       #  2209  0x6de49  5      
  nop                                 #  2210  0x6de4e  1      
  nop                                 #  2211  0x6de4f  1      
.L_6eb80:                             #        0x6de50  0      
  negq %rcx                           #  2212  0x6de50  3      
  movb $0x2d, 0x29f(%rsp)             #  2213  0x6de53  8      
  movl $0x1, %eax                     #  2214  0x6de5b  5      
  setne %sil                          #  2215  0x6de60  4      
  jmpq .L_6c8e0                       #  2216  0x6de64  5      
  nop                                 #  2217  0x6de69  1      
.L_6eba0:                             #        0x6de6a  0      
  movl 0xf0(%rsp), %ebx               #  2218  0x6de6a  7      
  subl $0x1, 0x12c(%rsp)              #  2219  0x6de71  8      
  subl $0x1, %ebx                     #  2220  0x6de79  3      
  movq %rbx, 0xf0(%rsp)               #  2221  0x6de7c  8      
  jmpq .L_6e120                       #  2222  0x6de84  5      
  nop                                 #  2223  0x6de89  1      
.L_6ebc0:                             #        0x6de8a  0      
  movq 0xe0(%rsp), %rsi               #  2224  0x6de8a  8      
  movl %esi, %esi                     #  2225  0x6de92  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2226  0x6de94  5      
  leal 0x8(%rdx), %eax                #  2227  0x6de99  3      
  movl %esi, %esi                     #  2228  0x6de9c  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2229  0x6de9e  5      
  jmpq .L_6caa0                       #  2230  0x6dea3  5      
  xchgw %ax, %ax                      #  2231  0x6dea8  3      
.L_6ebe0:                             #        0x6deab  0      
  movq 0xe0(%rsp), %rsi               #  2232  0x6deab  8      
  movl %esi, %esi                     #  2233  0x6deb3  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2234  0x6deb5  5      
  leal 0x8(%rdx), %eax                #  2235  0x6deba  3      
  movl %esi, %esi                     #  2236  0x6debd  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2237  0x6debf  5      
  jmpq .L_6cfe0                       #  2238  0x6dec4  5      
  xchgw %ax, %ax                      #  2239  0x6dec9  3      
.L_6ec00:                             #        0x6decc  0      
  testb $0x40, %r13b                  #  2240  0x6decc  4      
  jne .L_6faa0                        #  2241  0x6ded0  6      
  testl $0x200, %r13d                 #  2242  0x6ded6  7      
  je .L_70360                         #  2243  0x6dedd  6      
  movq 0xe0(%rsp), %rax               #  2244  0x6dee3  8      
  nop                                 #  2245  0x6deeb  1      
  movl %eax, %eax                     #  2246  0x6deec  2      
  movl (%r15,%rax,1), %edx            #  2247  0x6deee  4      
  cmpl $0x2f, %edx                    #  2248  0x6def2  3      
  ja .L_70b80                         #  2249  0x6def5  6      
  movq %rax, %rcx                     #  2250  0x6defb  3      
  movl %eax, %eax                     #  2251  0x6defe  2      
  movl 0xc(%r15,%rax,1), %eax         #  2252  0x6df00  5      
  addl %edx, %eax                     #  2253  0x6df05  2      
  addl $0x8, %edx                     #  2254  0x6df07  3      
  xchgw %ax, %ax                      #  2255  0x6df0a  3      
  movl %ecx, %ecx                     #  2256  0x6df0d  2      
  movl %edx, (%r15,%rcx,1)            #  2257  0x6df0f  4      
  nop                                 #  2258  0x6df13  1      
  nop                                 #  2259  0x6df14  1      
.L_6ec60:                             #        0x6df15  0      
  movl %eax, %eax                     #  2260  0x6df15  2      
  movsbq (%r15,%rax,1), %rcx          #  2261  0x6df17  5      
  jmpq .L_6cde0                       #  2262  0x6df1c  5      
  nop                                 #  2263  0x6df21  1      
  nop                                 #  2264  0x6df22  1      
.L_6ec80:                             #        0x6df23  0      
  movq 0xe0(%rsp), %rsi               #  2265  0x6df23  8      
  movl %esi, %esi                     #  2266  0x6df2b  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2267  0x6df2d  5      
  leal 0x8(%rdx), %eax                #  2268  0x6df32  3      
  movl %esi, %esi                     #  2269  0x6df35  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2270  0x6df37  5      
  jmpq .L_6cdc0                       #  2271  0x6df3c  5      
  xchgw %ax, %ax                      #  2272  0x6df41  3      
.L_6eca0:                             #        0x6df44  0      
  movsd 0x130(%rsp), %xmm0            #  2273  0x6df44  9      
  movl %r10d, 0x90(%rsp)              #  2274  0x6df4d  8      
  nop                                 #  2275  0x6df55  1      
  callq .__fpclassifyd                #  2276  0x6df56  5      
  testl %eax, %eax                    #  2277  0x6df5b  2      
  movl 0x90(%rsp), %r10d              #  2278  0x6df5d  8      
  je .L_6f9e0                         #  2279  0x6df65  6      
  cmpl $0x61, 0x100(%rsp)             #  2280  0x6df6b  8      
  sete 0xc4(%rsp)                     #  2281  0x6df73  8      
  cmpl $0x41, 0x100(%rsp)             #  2282  0x6df7b  8      
  sete %al                            #  2283  0x6df83  3      
  orb 0xc4(%rsp), %al                 #  2284  0x6df86  7      
  movb %al, 0xfc(%rsp)                #  2285  0x6df8d  7      
  je .L_70320                         #  2286  0x6df94  6      
  nop                                 #  2287  0x6df9a  1      
  cmpb $0x1, 0xc4(%rsp)               #  2288  0x6df9b  8      
  movb $0x30, 0x290(%rsp)             #  2289  0x6dfa3  8      
  sbbl %eax, %eax                     #  2290  0x6dfab  2      
  orl $0x2, %r13d                     #  2291  0x6dfad  4      
  andl $0xffffffe0, %eax              #  2292  0x6dfb1  5      
  addl $0x78, %eax                    #  2293  0x6dfb6  3      
  cmpl $0x63, %r10d                   #  2294  0x6dfb9  4      
  movb %al, 0x291(%rsp)               #  2295  0x6dfbd  7      
  jg .L_70ea0                         #  2296  0x6dfc4  6      
  cmpl $0x67, 0x100(%rsp)             #  2297  0x6dfca  8      
  nop                                 #  2298  0x6dfd2  1      
  movq $0x0, 0xe8(%rsp)               #  2299  0x6dfd3  12     
  sete %r11b                          #  2300  0x6dfdf  4      
  cmpl $0x47, 0x100(%rsp)             #  2301  0x6dfe3  8      
  sete %al                            #  2302  0x6dfeb  3      
  orl %eax, %r11d                     #  2303  0x6dfee  3      
  xchgw %ax, %ax                      #  2304  0x6dff1  3      
  leal 0x170(%rsp), %eax              #  2305  0x6dff4  7      
  movq %rax, 0xb0(%rsp)               #  2306  0x6dffb  8      
  xchgw %ax, %ax                      #  2307  0x6e003  3      
  nop                                 #  2308  0x6e006  1      
.L_6ed80:                             #        0x6e007  0      
  movsd 0x130(%rsp), %xmm0            #  2309  0x6e007  9      
  orl $0x100, %r13d                   #  2310  0x6e010  7      
  movb $0x0, 0xd8(%rsp)               #  2311  0x6e017  8      
  nop                                 #  2312  0x6e01f  1      
  movsd %xmm0, 0x230(%rsp)            #  2313  0x6e020  9      
  movl 0x234(%rsp), %eax              #  2314  0x6e029  7      
  testl %eax, %eax                    #  2315  0x6e030  2      
  js .L_70ac0                         #  2316  0x6e032  6      
  nop                                 #  2317  0x6e038  1      
.L_6edc0:                             #        0x6e039  0      
  cmpb $0x0, 0xfc(%rsp)               #  2318  0x6e039  8      
  jne .L_70920                        #  2319  0x6e041  6      
  cmpl $0x46, 0x100(%rsp)             #  2320  0x6e047  8      
  sete %al                            #  2321  0x6e04f  3      
  nop                                 #  2322  0x6e052  1      
  cmpl $0x66, 0x100(%rsp)             #  2323  0x6e053  8      
  sete %dl                            #  2324  0x6e05b  3      
  orb %dl, %al                        #  2325  0x6e05e  2      
  movb %al, 0xfc(%rsp)                #  2326  0x6e060  7      
  je .L_70760                         #  2327  0x6e067  6      
  nop                                 #  2328  0x6e06d  1      
  movl %r10d, 0xc4(%rsp)              #  2329  0x6e06e  8      
  movl $0x3, %esi                     #  2330  0x6e076  5      
  nop                                 #  2331  0x6e07b  1      
  nop                                 #  2332  0x6e07c  1      
.L_6ee20:                             #        0x6e07d  0      
  movl 0xc4(%rsp), %edx               #  2333  0x6e07d  7      
  leal 0x28c(%rsp), %ecx              #  2334  0x6e084  7      
  movl %esp, %r9d                     #  2335  0x6e08b  3      
  movl %esp, %r8d                     #  2336  0x6e08e  3      
  movsd 0xb8(%rsp), %xmm0             #  2337  0x6e091  9      
  nop                                 #  2338  0x6e09a  1      
  addl $0x27c, %r9d                   #  2339  0x6e09b  7      
  addl $0x280, %r8d                   #  2340  0x6e0a2  7      
  movl %r14d, %edi                    #  2341  0x6e0a9  3      
  movl %r10d, 0x90(%rsp)              #  2342  0x6e0ac  8      
  nop                                 #  2343  0x6e0b4  1      
  movb %r11b, 0xa0(%rsp)              #  2344  0x6e0b5  8      
  nop                                 #  2345  0x6e0bd  1      
  nop                                 #  2346  0x6e0be  1      
  callq ._dtoa_r                      #  2347  0x6e0bf  5      
  cmpl $0x47, 0x100(%rsp)             #  2348  0x6e0c4  8      
  movl %eax, %eax                     #  2349  0x6e0cc  2      
  movl 0x90(%rsp), %r10d              #  2350  0x6e0ce  8      
  movq %rax, 0xb0(%rsp)               #  2351  0x6e0d6  8      
  nop                                 #  2352  0x6e0de  1      
  movzbl 0xa0(%rsp), %r11d            #  2353  0x6e0df  9      
  je .L_70740                         #  2354  0x6e0e8  6      
  cmpl $0x67, 0x100(%rsp)             #  2355  0x6e0ee  8      
  je .L_70740                         #  2356  0x6e0f6  6      
  nop                                 #  2357  0x6e0fc  1      
.L_6eec0:                             #        0x6e0fd  0      
  movl 0xc4(%rsp), %edx               #  2358  0x6e0fd  7      
  addl 0xb0(%rsp), %edx               #  2359  0x6e104  7      
  cmpb $0x0, 0xfc(%rsp)               #  2360  0x6e10b  8      
  xorpd %xmm1, %xmm1                  #  2361  0x6e113  4      
  je .L_6ef20                         #  2362  0x6e117  6      
  nop                                 #  2363  0x6e11d  1      
  movq 0xb0(%rsp), %rcx               #  2364  0x6e11e  8      
  movl %ecx, %ecx                     #  2365  0x6e126  2      
  cmpb $0x30, (%r15,%rcx,1)           #  2366  0x6e128  5      
  je .L_71000                         #  2367  0x6e12d  6      
  movl 0x28c(%rsp), %eax              #  2368  0x6e133  7      
  xorpd %xmm1, %xmm1                  #  2369  0x6e13a  4      
.L_6ef00:                             #        0x6e13e  0      
  leal (%rax,%rdx,1), %edx            #  2370  0x6e13e  3      
  nop                                 #  2371  0x6e141  1      
  nop                                 #  2372  0x6e142  1      
.L_6ef20:                             #        0x6e143  0      
  movsd 0xb8(%rsp), %xmm0             #  2373  0x6e143  9      
  ucomisd %xmm1, %xmm0                #  2374  0x6e14c  4      
  jne .L_708c0                        #  2375  0x6e150  6      
  jp .L_708c0                         #  2376  0x6e156  6      
  movl %edx, 0x27c(%rsp)              #  2377  0x6e15c  7      
.L_6ef40:                             #        0x6e163  0      
  subl 0xb0(%rsp), %edx               #  2378  0x6e163  7      
  testb %r11b, %r11b                  #  2379  0x6e16a  3      
  movl %edx, 0x118(%rsp)              #  2380  0x6e16d  7      
  je .L_70100                         #  2381  0x6e174  6      
  movl 0x28c(%rsp), %ecx              #  2382  0x6e17a  7      
  xchgw %ax, %ax                      #  2383  0x6e181  3      
  cmpl $0xfffffffd, %ecx              #  2384  0x6e184  6      
  jl .L_70420                         #  2385  0x6e18a  6      
  cmpl %ecx, %r10d                    #  2386  0x6e190  3      
  jl .L_70420                         #  2387  0x6e193  6      
  movl $0x67, 0x100(%rsp)             #  2388  0x6e199  11     
  nop                                 #  2389  0x6e1a4  1      
.L_6ef80:                             #        0x6e1a5  0      
  cmpl %ecx, 0x118(%rsp)              #  2390  0x6e1a5  7      
  jg .L_70e00                         #  2391  0x6e1ac  6      
  testb $0x1, %r13b                   #  2392  0x6e1b2  4      
  je .L_70e40                         #  2393  0x6e1b6  6      
  leal 0x1(%rcx), %edx                #  2394  0x6e1bc  3      
  nop                                 #  2395  0x6e1bf  1      
  movl %edx, 0xc4(%rsp)               #  2396  0x6e1c0  7      
  nop                                 #  2397  0x6e1c7  1      
  nop                                 #  2398  0x6e1c8  1      
.L_6efc0:                             #        0x6e1c9  0      
  testl $0x400, %r13d                 #  2399  0x6e1c9  7      
  je .L_707e0                         #  2400  0x6e1d0  6      
  testl %ecx, %ecx                    #  2401  0x6e1d6  2      
  jle .L_707e0                        #  2402  0x6e1d8  6      
  movq 0xf0(%rsp), %rsi               #  2403  0x6e1de  8      
  nop                                 #  2404  0x6e1e6  1      
  movq 0xf0(%rsp), %r8                #  2405  0x6e1e7  8      
  movl %esi, %esi                     #  2406  0x6e1ef  2      
  movzbl (%r15,%rsi,1), %eax          #  2407  0x6e1f1  5      
  movl $0x0, 0x114(%rsp)              #  2408  0x6e1f6  11     
  movl %ecx, %esi                     #  2409  0x6e201  2      
  nop                                 #  2410  0x6e203  1      
  movl $0x0, 0x12c(%rsp)              #  2411  0x6e204  11     
  jmpq .L_6f060                       #  2412  0x6e20f  5      
  nop                                 #  2413  0x6e214  1      
  nop                                 #  2414  0x6e215  1      
.L_6f020:                             #        0x6e216  0      
  addl $0x1, 0x12c(%rsp)              #  2415  0x6e216  8      
  nop                                 #  2416  0x6e21e  1      
  nop                                 #  2417  0x6e21f  1      
.L_6f040:                             #        0x6e220  0      
  subl %edi, %esi                     #  2418  0x6e220  2      
  movl %ecx, %eax                     #  2419  0x6e222  2      
  movq %rdx, %r8                      #  2420  0x6e224  3      
  nop                                 #  2421  0x6e227  1      
  nop                                 #  2422  0x6e228  1      
.L_6f060:                             #        0x6e229  0      
  cmpb $0x7f, %al                     #  2423  0x6e229  2      
  je .L_70dc0                         #  2424  0x6e22b  6      
  movsbl %al, %edi                    #  2425  0x6e231  3      
  cmpl %edi, %esi                     #  2426  0x6e234  2      
  jle .L_70dc0                        #  2427  0x6e236  6      
  leal 0x1(%r8), %edx                 #  2428  0x6e23c  4      
  movl %edx, %edx                     #  2429  0x6e240  2      
  movzbl (%r15,%rdx,1), %ecx          #  2430  0x6e242  5      
  testb %cl, %cl                      #  2431  0x6e247  2      
  jne .L_6f020                        #  2432  0x6e249  6      
  addl $0x1, 0x114(%rsp)              #  2433  0x6e24f  8      
  movl %eax, %ecx                     #  2434  0x6e257  2      
  movq %r8, %rdx                      #  2435  0x6e259  3      
  jmpq .L_6f040                       #  2436  0x6e25c  5      
  nop                                 #  2437  0x6e261  1      
.L_6f0a0:                             #        0x6e262  0      
  movq 0xe0(%rsp), %rsi               #  2438  0x6e262  8      
  movl %esi, %esi                     #  2439  0x6e26a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2440  0x6e26c  5      
  leal 0x8(%rdx), %eax                #  2441  0x6e271  3      
  movl %esi, %esi                     #  2442  0x6e274  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2443  0x6e276  5      
  jmpq .L_6d180                       #  2444  0x6e27b  5      
  xchgw %ax, %ax                      #  2445  0x6e280  3      
.L_6f0c0:                             #        0x6e283  0      
  testb $0x40, %r13b                  #  2446  0x6e283  4      
  jne .L_6fbc0                        #  2447  0x6e287  6      
  testl $0x200, %r13d                 #  2448  0x6e28d  7      
  je .L_703c0                         #  2449  0x6e294  6      
  movq 0xe0(%rsp), %rax               #  2450  0x6e29a  8      
  nop                                 #  2451  0x6e2a2  1      
  movl %eax, %eax                     #  2452  0x6e2a3  2      
  movl (%r15,%rax,1), %edx            #  2453  0x6e2a5  4      
  cmpl $0x2f, %edx                    #  2454  0x6e2a9  3      
  ja .L_70be0                         #  2455  0x6e2ac  6      
  movq %rax, %rcx                     #  2456  0x6e2b2  3      
  movl %eax, %eax                     #  2457  0x6e2b5  2      
  movl 0xc(%r15,%rax,1), %eax         #  2458  0x6e2b7  5      
  addl %edx, %eax                     #  2459  0x6e2bc  2      
  addl $0x8, %edx                     #  2460  0x6e2be  3      
  xchgw %ax, %ax                      #  2461  0x6e2c1  3      
  movl %ecx, %ecx                     #  2462  0x6e2c4  2      
  movl %edx, (%r15,%rcx,1)            #  2463  0x6e2c6  4      
  nop                                 #  2464  0x6e2ca  1      
  nop                                 #  2465  0x6e2cb  1      
.L_6f120:                             #        0x6e2cc  0      
  movl %eax, %eax                     #  2466  0x6e2cc  2      
  movzbl (%r15,%rax,1), %ecx          #  2467  0x6e2ce  5      
  jmpq .L_6c860                       #  2468  0x6e2d3  5      
  nop                                 #  2469  0x6e2d8  1      
  nop                                 #  2470  0x6e2d9  1      
.L_6f140:                             #        0x6e2da  0      
  testb $0x10, %r13b                  #  2471  0x6e2da  4      
  jne .L_6fb60                        #  2472  0x6e2de  6      
  testb $0x40, %r13b                  #  2473  0x6e2e4  4      
  je .L_70200                         #  2474  0x6e2e8  6      
  movq 0xe0(%rsp), %rcx               #  2475  0x6e2ee  8      
  nop                                 #  2476  0x6e2f6  1      
  movl %ecx, %ecx                     #  2477  0x6e2f7  2      
  movl (%r15,%rcx,1), %edx            #  2478  0x6e2f9  4      
  cmpl $0x2f, %edx                    #  2479  0x6e2fd  3      
  ja .L_70ba0                         #  2480  0x6e300  6      
  movl %ecx, %ecx                     #  2481  0x6e306  2      
  movl 0xc(%r15,%rcx,1), %eax         #  2482  0x6e308  5      
  addl %edx, %eax                     #  2483  0x6e30d  2      
  addl $0x8, %edx                     #  2484  0x6e30f  3      
  nop                                 #  2485  0x6e312  1      
  movl %ecx, %ecx                     #  2486  0x6e313  2      
  movl %edx, (%r15,%rcx,1)            #  2487  0x6e315  4      
  nop                                 #  2488  0x6e319  1      
  nop                                 #  2489  0x6e31a  1      
.L_6f1a0:                             #        0x6e31b  0      
  movl %eax, %eax                     #  2490  0x6e31b  2      
  movl (%r15,%rax,1), %eax            #  2491  0x6e31d  4      
  movzwl 0xd0(%rsp), %edx             #  2492  0x6e321  8      
  movl %eax, %eax                     #  2493  0x6e329  2      
  movw %dx, (%r15,%rax,1)             #  2494  0x6e32b  5      
  jmpq .L_6c560                       #  2495  0x6e330  5      
  nop                                 #  2496  0x6e335  1      
.L_6f1c0:                             #        0x6e336  0      
  movq 0xe0(%rsp), %rsi               #  2497  0x6e336  8      
  movl %esi, %esi                     #  2498  0x6e33e  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2499  0x6e340  5      
  leal 0x8(%rdx), %eax                #  2500  0x6e345  3      
  movl %esi, %esi                     #  2501  0x6e348  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2502  0x6e34a  5      
  jmpq .L_6c840                       #  2503  0x6e34f  5      
  xchgw %ax, %ax                      #  2504  0x6e354  3      
.L_6f1e0:                             #        0x6e357  0      
  testb $0x40, %r13b                  #  2505  0x6e357  4      
  jne .L_6fc40                        #  2506  0x6e35b  6      
  testl $0x200, %r13d                 #  2507  0x6e361  7      
  je .L_701a0                         #  2508  0x6e368  6      
  movq 0xe0(%rsp), %rax               #  2509  0x6e36e  8      
  nop                                 #  2510  0x6e376  1      
  movl %eax, %eax                     #  2511  0x6e377  2      
  movl (%r15,%rax,1), %edx            #  2512  0x6e379  4      
  cmpl $0x2f, %edx                    #  2513  0x6e37d  3      
  ja .L_70880                         #  2514  0x6e380  6      
  movq %rax, %rcx                     #  2515  0x6e386  3      
  movl %eax, %eax                     #  2516  0x6e389  2      
  movl 0xc(%r15,%rax,1), %eax         #  2517  0x6e38b  5      
  addl %edx, %eax                     #  2518  0x6e390  2      
  addl $0x8, %edx                     #  2519  0x6e392  3      
  xchgw %ax, %ax                      #  2520  0x6e395  3      
  movl %ecx, %ecx                     #  2521  0x6e398  2      
  movl %edx, (%r15,%rcx,1)            #  2522  0x6e39a  4      
  nop                                 #  2523  0x6e39e  1      
  nop                                 #  2524  0x6e39f  1      
.L_6f240:                             #        0x6e3a0  0      
  movl %eax, %eax                     #  2525  0x6e3a0  2      
  movzbl (%r15,%rax,1), %ecx          #  2526  0x6e3a2  5      
  jmpq .L_6cf80                       #  2527  0x6e3a7  5      
  nop                                 #  2528  0x6e3ac  1      
  nop                                 #  2529  0x6e3ad  1      
.L_6f260:                             #        0x6e3ae  0      
  movq 0xe0(%rsp), %rax               #  2530  0x6e3ae  8      
  movq 0xe0(%rsp), %rsi               #  2531  0x6e3b6  8      
  movl %eax, %eax                     #  2532  0x6e3be  2      
  movl 0x8(%r15,%rax,1), %ecx         #  2533  0x6e3c0  5      
  leal 0x8(%rcx), %eax                #  2534  0x6e3c5  3      
  nop                                 #  2535  0x6e3c8  1      
  movl %esi, %esi                     #  2536  0x6e3c9  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2537  0x6e3cb  5      
  jmpq .L_6c6e0                       #  2538  0x6e3d0  5      
  nop                                 #  2539  0x6e3d5  1      
  nop                                 #  2540  0x6e3d6  1      
.L_6f2a0:                             #        0x6e3d7  0      
  movq 0xe0(%rsp), %rsi               #  2541  0x6e3d7  8      
  movl %esi, %esi                     #  2542  0x6e3df  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2543  0x6e3e1  5      
  leal 0x8(%rdx), %eax                #  2544  0x6e3e6  3      
  movl %esi, %esi                     #  2545  0x6e3e9  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2546  0x6e3eb  5      
  jmpq .L_6cf60                       #  2547  0x6e3f0  5      
  xchgw %ax, %ax                      #  2548  0x6e3f5  3      
.L_6f2c0:                             #        0x6e3f8  0      
  testb $0x40, %r13b                  #  2549  0x6e3f8  4      
  jne .L_6fb00                        #  2550  0x6e3fc  6      
  testl $0x200, %r13d                 #  2551  0x6e402  7      
  je .L_70260                         #  2552  0x6e409  6      
  movq 0xe0(%rsp), %rax               #  2553  0x6e40f  8      
  nop                                 #  2554  0x6e417  1      
  movl %eax, %eax                     #  2555  0x6e418  2      
  movl (%r15,%rax,1), %edx            #  2556  0x6e41a  4      
  cmpl $0x2f, %edx                    #  2557  0x6e41e  3      
  ja .L_708a0                         #  2558  0x6e421  6      
  movq %rax, %rcx                     #  2559  0x6e427  3      
  movl %eax, %eax                     #  2560  0x6e42a  2      
  movl 0xc(%r15,%rax,1), %eax         #  2561  0x6e42c  5      
  addl %edx, %eax                     #  2562  0x6e431  2      
  addl $0x8, %edx                     #  2563  0x6e433  3      
  xchgw %ax, %ax                      #  2564  0x6e436  3      
  movl %ecx, %ecx                     #  2565  0x6e439  2      
  movl %edx, (%r15,%rcx,1)            #  2566  0x6e43b  4      
  nop                                 #  2567  0x6e43f  1      
  nop                                 #  2568  0x6e440  1      
.L_6f320:                             #        0x6e441  0      
  movl %eax, %eax                     #  2569  0x6e441  2      
  movzbl (%r15,%rax,1), %ecx          #  2570  0x6e443  5      
  movl $0x1, %eax                     #  2571  0x6e448  5      
  testq %rcx, %rcx                    #  2572  0x6e44d  3      
  setne %sil                          #  2573  0x6e450  4      
  jmpq .L_6c8c0                       #  2574  0x6e454  5      
  nop                                 #  2575  0x6e459  1      
.L_6f340:                             #        0x6e45a  0      
  movq %r13, %r12                     #  2576  0x6e45a  3      
  movl 0xfc(%rsp), %r13d              #  2577  0x6e45d  8      
  movl %ebx, %ecx                     #  2578  0x6e465  2      
  movq %rax, %rbx                     #  2579  0x6e467  3      
  nop                                 #  2580  0x6e46a  1      
  nop                                 #  2581  0x6e46b  1      
.L_6f360:                             #        0x6e46c  0      
  movl %ebx, %ebx                     #  2582  0x6e46c  2      
  movl %ecx, 0x4(%r15,%rbx,1)         #  2583  0x6e46e  5      
  movl 0x224(%rsp), %eax              #  2584  0x6e473  7      
  addl %ecx, 0x228(%rsp)              #  2585  0x6e47a  7      
  movl %ebx, %ebx                     #  2586  0x6e481  2      
  movl $0x10023f00, (%r15,%rbx,1)     #  2587  0x6e483  8      
  nop                                 #  2588  0x6e48b  1      
  addl $0x1, %eax                     #  2589  0x6e48c  3      
  cmpl $0x7, %eax                     #  2590  0x6e48f  3      
  movl %eax, 0x224(%rsp)              #  2591  0x6e492  7      
  jg .L_6e040                         #  2592  0x6e499  6      
  addl $0x8, %ebx                     #  2593  0x6e49f  3      
  jmpq .L_6e080                       #  2594  0x6e4a2  5      
  nop                                 #  2595  0x6e4a7  1      
.L_6f3a0:                             #        0x6e4a8  0      
  movl 0xb0(%rsp), %edx               #  2596  0x6e4a8  7      
  leal 0x240(%rsp), %ecx              #  2597  0x6e4af  7      
  xorl %esi, %esi                     #  2598  0x6e4b6  2      
  movl %r10d, 0x90(%rsp)              #  2599  0x6e4b8  8      
  movl %ecx, %edi                     #  2600  0x6e4c0  2      
  movq %rcx, 0x58(%rsp)               #  2601  0x6e4c2  5      
  nop                                 #  2602  0x6e4c7  1      
  movl %edx, 0x284(%rsp)              #  2603  0x6e4c8  7      
  movl $0x8, %edx                     #  2604  0x6e4cf  5      
  nop                                 #  2605  0x6e4d4  1      
  callq .memset                       #  2606  0x6e4d5  5      
  movl 0x90(%rsp), %r10d              #  2607  0x6e4da  8      
  testl %r10d, %r10d                  #  2608  0x6e4e2  3      
  js .L_70820                         #  2609  0x6e4e5  6      
  xorl %r8d, %r8d                     #  2610  0x6e4eb  3      
  movq %r12, 0xb8(%rsp)               #  2611  0x6e4ee  8      
  nop                                 #  2612  0x6e4f6  1      
  movq %rbx, 0xe8(%rsp)               #  2613  0x6e4f7  8      
  movl %r13d, 0xd8(%rsp)              #  2614  0x6e4ff  8      
  movl $0x0, 0xc4(%rsp)               #  2615  0x6e507  11     
  movl %r8d, %ebx                     #  2616  0x6e512  3      
  xchgw %ax, %ax                      #  2617  0x6e515  3      
  movl %r10d, %r12d                   #  2618  0x6e518  3      
  xorl %r13d, %r13d                   #  2619  0x6e51b  3      
  jmpq .L_6f460                       #  2620  0x6e51e  5      
  nop                                 #  2621  0x6e523  1      
  nop                                 #  2622  0x6e524  1      
.L_6f440:                             #        0x6e525  0      
  movl %eax, %r13d                    #  2623  0x6e525  3      
  nop                                 #  2624  0x6e528  1      
  nop                                 #  2625  0x6e529  1      
.L_6f460:                             #        0x6e52a  0      
  movl 0x284(%rsp), %eax              #  2626  0x6e52a  7      
  addl %ebx, %eax                     #  2627  0x6e531  2      
  movl %eax, %eax                     #  2628  0x6e533  2      
  movl (%r15,%rax,1), %edx            #  2629  0x6e535  4      
  testl %edx, %edx                    #  2630  0x6e539  2      
  je .L_706a0                         #  2631  0x6e53b  6      
  movl 0x58(%rsp), %ecx               #  2632  0x6e541  4      
  movl 0x68(%rsp), %esi               #  2633  0x6e545  4      
  nop                                 #  2634  0x6e549  1      
  movl %r14d, %edi                    #  2635  0x6e54a  3      
  nop                                 #  2636  0x6e54d  1      
  nop                                 #  2637  0x6e54e  1      
  callq ._wcrtomb_r                   #  2638  0x6e54f  5      
  cmpl $0xffffffff, %eax              #  2639  0x6e554  5      
  je .L_70da0                         #  2640  0x6e559  6      
  addl %r13d, %eax                    #  2641  0x6e55f  3      
  cmpl %r12d, %eax                    #  2642  0x6e562  3      
  jg .L_706a0                         #  2643  0x6e565  6      
  addl $0x4, %ebx                     #  2644  0x6e56b  3      
  cmpl %eax, %r12d                    #  2645  0x6e56e  3      
  nop                                 #  2646  0x6e571  1      
  jne .L_6f440                        #  2647  0x6e572  6      
  movl %r12d, %r10d                   #  2648  0x6e578  3      
  movq 0xe8(%rsp), %rbx               #  2649  0x6e57b  8      
  movq 0xb8(%rsp), %r12               #  2650  0x6e583  8      
  nop                                 #  2651  0x6e58b  1      
  movl 0xd8(%rsp), %r13d              #  2652  0x6e58c  8      
  movl %r10d, 0xc4(%rsp)              #  2653  0x6e594  8      
  nop                                 #  2654  0x6e59c  1      
  nop                                 #  2655  0x6e59d  1      
.L_6f500:                             #        0x6e59e  0      
  movl 0xc4(%rsp), %r11d              #  2656  0x6e59e  8      
  testl %r11d, %r11d                  #  2657  0x6e5a6  3      
  je .L_6fcc0                         #  2658  0x6e5a9  6      
  cmpl $0x63, 0xc4(%rsp)              #  2659  0x6e5af  8      
  leal 0x170(%rsp), %edx              #  2660  0x6e5b7  7      
  movq $0x0, 0xe8(%rsp)               #  2661  0x6e5be  12     
  movq %rdx, 0xb0(%rsp)               #  2662  0x6e5ca  8      
  jle .L_6f5a0                        #  2663  0x6e5d2  6      
  movl 0xc4(%rsp), %esi               #  2664  0x6e5d8  7      
  movl %r14d, %edi                    #  2665  0x6e5df  3      
  addl $0x1, %esi                     #  2666  0x6e5e2  3      
  nop                                 #  2667  0x6e5e5  1      
  nop                                 #  2668  0x6e5e6  1      
  callq ._malloc_r                    #  2669  0x6e5e7  5      
  movl %eax, %eax                     #  2670  0x6e5ec  2      
  testq %rax, %rax                    #  2671  0x6e5ee  3      
  movq %rax, 0xe8(%rsp)               #  2672  0x6e5f1  8      
  je .L_711c0                         #  2673  0x6e5f9  6      
  movq 0xe8(%rsp), %rsi               #  2674  0x6e5ff  8      
  nop                                 #  2675  0x6e607  1      
  movq %rsi, 0xb0(%rsp)               #  2676  0x6e608  8      
  nop                                 #  2677  0x6e610  1      
  nop                                 #  2678  0x6e611  1      
.L_6f5a0:                             #        0x6e612  0      
  movl 0x58(%rsp), %edi               #  2679  0x6e612  4      
  xorl %esi, %esi                     #  2680  0x6e616  2      
  movl $0x8, %edx                     #  2681  0x6e618  5      
  nop                                 #  2682  0x6e61d  1      
  nop                                 #  2683  0x6e61e  1      
  callq .memset                       #  2684  0x6e61f  5      
  movl 0x58(%rsp), %r8d               #  2685  0x6e624  5      
  movl 0xc4(%rsp), %ecx               #  2686  0x6e629  7      
  leal 0x284(%rsp), %edx              #  2687  0x6e630  7      
  movl 0xb0(%rsp), %esi               #  2688  0x6e637  7      
  movl %r14d, %edi                    #  2689  0x6e63e  3      
  nop                                 #  2690  0x6e641  1      
  nop                                 #  2691  0x6e642  1      
  nop                                 #  2692  0x6e643  1      
  callq ._wcsrtombs_r                 #  2693  0x6e644  5      
  cmpl %eax, 0xc4(%rsp)               #  2694  0x6e649  7      
  jne .L_6d320                        #  2695  0x6e650  6      
  movl 0xc4(%rsp), %eax               #  2696  0x6e656  7      
  addl 0xb0(%rsp), %eax               #  2697  0x6e65d  7      
  movl $0x0, %edx                     #  2698  0x6e664  5      
  movl %eax, %eax                     #  2699  0x6e669  2      
  movb $0x0, (%r15,%rax,1)            #  2700  0x6e66b  5      
  movl 0xc4(%rsp), %r10d              #  2701  0x6e670  8      
  movzbl 0x29f(%rsp), %eax            #  2702  0x6e678  8      
  nop                                 #  2703  0x6e680  1      
  movl $0x0, 0x104(%rsp)              #  2704  0x6e681  11     
  movl $0x0, 0x114(%rsp)              #  2705  0x6e68c  11     
  nop                                 #  2706  0x6e697  1      
  movl $0x0, 0x12c(%rsp)              #  2707  0x6e698  11     
  testl %r10d, %r10d                  #  2708  0x6e6a3  3      
  cmovnsl 0xc4(%rsp), %edx            #  2709  0x6e6a6  8      
  nop                                 #  2710  0x6e6ae  1      
  movl $0x0, 0x11c(%rsp)              #  2711  0x6e6af  11     
  movl %edx, 0xb8(%rsp)               #  2712  0x6e6ba  7      
  jmpq .L_6ca20                       #  2713  0x6e6c1  5      
  nop                                 #  2714  0x6e6c6  1      
.L_6f6a0:                             #        0x6e6c7  0      
  movq 0xe0(%rsp), %rsi               #  2715  0x6e6c7  8      
  movl %esi, %esi                     #  2716  0x6e6cf  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2717  0x6e6d1  5      
  leal 0x8(%rdx), %eax                #  2718  0x6e6d6  3      
  movl %esi, %esi                     #  2719  0x6e6d9  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2720  0x6e6db  5      
  jmpq .L_6cba0                       #  2721  0x6e6e0  5      
  xchgw %ax, %ax                      #  2722  0x6e6e5  3      
.L_6f6c0:                             #        0x6e6e8  0      
  movl %ebx, %ecx                     #  2723  0x6e6e8  2      
  movq %r13, %r12                     #  2724  0x6e6ea  3      
  movq %rax, %rbx                     #  2725  0x6e6ed  3      
  movl 0xb0(%rsp), %r13d              #  2726  0x6e6f0  8      
  jmpq .L_6e020                       #  2727  0x6e6f8  5      
  nop                                 #  2728  0x6e6fd  1      
.L_6f6e0:                             #        0x6e6fe  0      
  movl 0x20(%rsp), %edx               #  2729  0x6e6fe  4      
  movl %r12d, %esi                    #  2730  0x6e702  3      
  movl %r14d, %edi                    #  2731  0x6e705  3      
  movl %ecx, 0x98(%rsp)               #  2732  0x6e708  7      
  nop                                 #  2733  0x6e70f  1      
  callq .__ssprint_r                  #  2734  0x6e710  5      
  testl %eax, %eax                    #  2735  0x6e715  2      
  movl 0x98(%rsp), %ecx               #  2736  0x6e717  7      
  jne .L_6d340                        #  2737  0x6e71e  6      
  movq 0xf0(%rsp), %rax               #  2738  0x6e724  8      
  movl %eax, %eax                     #  2739  0x6e72c  2      
  movsbl (%r15,%rax,1), %edx          #  2740  0x6e72e  5      
  xchgw %ax, %ax                      #  2741  0x6e733  3      
  leal 0x1e0(%rsp), %eax              #  2742  0x6e736  7      
  jmpq .L_6e200                       #  2743  0x6e73d  5      
  nop                                 #  2744  0x6e742  1      
  nop                                 #  2745  0x6e743  1      
.L_6f740:                             #        0x6e744  0      
  movl 0xc8(%rsp), %esi               #  2746  0x6e744  7      
  leal 0x220(%rsp), %edx              #  2747  0x6e74b  7      
  movl %r14d, %edi                    #  2748  0x6e752  3      
  nop                                 #  2749  0x6e755  1      
  callq .__ssprint_r                  #  2750  0x6e756  5      
  testl %eax, %eax                    #  2751  0x6e75b  2      
  jne .L_6d340                        #  2752  0x6e75d  6      
  leal 0x1e0(%rsp), %ebx              #  2753  0x6e763  7      
  jmpq .L_6d460                       #  2754  0x6e76a  5      
  nop                                 #  2755  0x6e76f  1      
.L_6f780:                             #        0x6e770  0      
  movl %ebx, %ebx                     #  2756  0x6e770  2      
  movl $0x1, 0x4(%r15,%rbx,1)         #  2757  0x6e772  9      
  movl 0x224(%rsp), %eax              #  2758  0x6e77b  7      
  addl $0x1, 0x228(%rsp)              #  2759  0x6e782  8      
  nop                                 #  2760  0x6e78a  1      
  movl %ebx, %ebx                     #  2761  0x6e78b  2      
  movl $0x100202fc, (%r15,%rbx,1)     #  2762  0x6e78d  8      
  addl $0x1, %eax                     #  2763  0x6e795  3      
  cmpl $0x7, %eax                     #  2764  0x6e798  3      
  movl %eax, 0x224(%rsp)              #  2765  0x6e79b  7      
  jg .L_6fe20                         #  2766  0x6e7a2  6      
  addl $0x8, %ebx                     #  2767  0x6e7a8  3      
.L_6f7c0:                             #        0x6e7ab  0      
  movl 0x28c(%rsp), %edi              #  2768  0x6e7ab  7      
  testl %edi, %edi                    #  2769  0x6e7b2  2      
  jne .L_6f7e0                        #  2770  0x6e7b4  6      
  cmpl $0x0, 0x118(%rsp)              #  2771  0x6e7ba  8      
  jne .L_6f7e0                        #  2772  0x6e7c2  6      
  testb $0x1, %r13b                   #  2773  0x6e7c8  4      
  je .L_6c320                         #  2774  0x6e7cc  6      
  nop                                 #  2775  0x6e7d2  1      
.L_6f7e0:                             #        0x6e7d3  0      
  movl 0x120(%rsp), %eax              #  2776  0x6e7d3  7      
  movl 0x13c(%rsp), %edx              #  2777  0x6e7da  7      
  movl %ebx, %ebx                     #  2778  0x6e7e1  2      
  movl %eax, (%r15,%rbx,1)            #  2779  0x6e7e3  4      
  movl %ebx, %ebx                     #  2780  0x6e7e7  2      
  movl %edx, 0x4(%r15,%rbx,1)         #  2781  0x6e7e9  5      
  nop                                 #  2782  0x6e7ee  1      
  movl 0x224(%rsp), %eax              #  2783  0x6e7ef  7      
  addl %edx, 0x228(%rsp)              #  2784  0x6e7f6  7      
  addl $0x1, %eax                     #  2785  0x6e7fd  3      
  cmpl $0x7, %eax                     #  2786  0x6e800  3      
  movl %eax, 0x224(%rsp)              #  2787  0x6e803  7      
  nop                                 #  2788  0x6e80a  1      
  jg .L_707a0                         #  2789  0x6e80b  6      
  leal 0x8(%rbx), %eax                #  2790  0x6e811  3      
  nop                                 #  2791  0x6e814  1      
  nop                                 #  2792  0x6e815  1      
.L_6f840:                             #        0x6e816  0      
  movl 0x28c(%rsp), %ebx              #  2793  0x6e816  7      
  negl %ebx                           #  2794  0x6e81d  2      
  testl %ebx, %ebx                    #  2795  0x6e81f  2      
  jle .L_6ff60                        #  2796  0x6e821  6      
  cmpl $0x10, %ebx                    #  2797  0x6e827  3      
  jle .L_6ff20                        #  2798  0x6e82a  6      
  nop                                 #  2799  0x6e830  1      
  leal 0x220(%rsp), %ecx              #  2800  0x6e831  7      
  movl %r13d, 0xc4(%rsp)              #  2801  0x6e838  8      
  movq %r12, %r13                     #  2802  0x6e840  3      
  movq 0xc8(%rsp), %r12               #  2803  0x6e843  8      
  movq %rcx, 0x30(%rsp)               #  2804  0x6e84b  5      
  nop                                 #  2805  0x6e850  1      
  jmpq .L_6f8e0                       #  2806  0x6e851  5      
  nop                                 #  2807  0x6e856  1      
  nop                                 #  2808  0x6e857  1      
.L_6f8a0:                             #        0x6e858  0      
  addl $0x8, %eax                     #  2809  0x6e858  3      
  nop                                 #  2810  0x6e85b  1      
  nop                                 #  2811  0x6e85c  1      
.L_6f8c0:                             #        0x6e85d  0      
  subl $0x10, %ebx                    #  2812  0x6e85d  3      
  cmpl $0x10, %ebx                    #  2813  0x6e860  3      
  jle .L_6ff00                        #  2814  0x6e863  6      
  nop                                 #  2815  0x6e869  1      
  nop                                 #  2816  0x6e86a  1      
.L_6f8e0:                             #        0x6e86b  0      
  movl %eax, %eax                     #  2817  0x6e86b  2      
  movl $0x10, 0x4(%r15,%rax,1)        #  2818  0x6e86d  9      
  movl 0x224(%rsp), %edx              #  2819  0x6e876  7      
  addl $0x10, 0x228(%rsp)             #  2820  0x6e87d  8      
  nop                                 #  2821  0x6e885  1      
  movl %eax, %eax                     #  2822  0x6e886  2      
  movl $0x10023f00, (%r15,%rax,1)     #  2823  0x6e888  8      
  addl $0x1, %edx                     #  2824  0x6e890  3      
  cmpl $0x7, %edx                     #  2825  0x6e893  3      
  movl %edx, 0x224(%rsp)              #  2826  0x6e896  7      
  jle .L_6f8a0                        #  2827  0x6e89d  6      
  movl 0x30(%rsp), %edx               #  2828  0x6e8a3  4      
  movl %r12d, %esi                    #  2829  0x6e8a7  3      
  movl %r14d, %edi                    #  2830  0x6e8aa  3      
  nop                                 #  2831  0x6e8ad  1      
  nop                                 #  2832  0x6e8ae  1      
  callq .__ssprint_r                  #  2833  0x6e8af  5      
  testl %eax, %eax                    #  2834  0x6e8b4  2      
  jne .L_6d340                        #  2835  0x6e8b6  6      
  leal 0x1e0(%rsp), %eax              #  2836  0x6e8bc  7      
  jmpq .L_6f8c0                       #  2837  0x6e8c3  5      
  nop                                 #  2838  0x6e8c8  1      
.L_6f960:                             #        0x6e8c9  0      
  movq 0xe0(%rsp), %rdx               #  2839  0x6e8c9  8      
  movq 0xe0(%rsp), %rsi               #  2840  0x6e8d1  8      
  movl %edx, %edx                     #  2841  0x6e8d9  2      
  movl 0x8(%r15,%rdx,1), %eax         #  2842  0x6e8db  5      
  leal 0x8(%rax), %edx                #  2843  0x6e8e0  3      
  nop                                 #  2844  0x6e8e3  1      
  movl %esi, %esi                     #  2845  0x6e8e4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  2846  0x6e8e6  5      
  jmpq .L_6e7a0                       #  2847  0x6e8eb  5      
  nop                                 #  2848  0x6e8f0  1      
  nop                                 #  2849  0x6e8f1  1      
.L_6f9a0:                             #        0x6e8f2  0      
  addl $0x1, %r12d                    #  2850  0x6e8f2  4      
  orl $0x20, %r13d                    #  2851  0x6e8f6  4      
  movl %r12d, %r12d                   #  2852  0x6e8fa  3      
  movzbl (%r15,%r12,1), %eax          #  2853  0x6e8fd  5      
  jmpq .L_6be00                       #  2854  0x6e902  5      
  nop                                 #  2855  0x6e907  1      
.L_6f9c0:                             #        0x6e908  0      
  addl $0x1, %r12d                    #  2856  0x6e908  4      
  orl $0x200, %r13d                   #  2857  0x6e90c  7      
  movl %r12d, %r12d                   #  2858  0x6e913  3      
  movzbl (%r15,%r12,1), %eax          #  2859  0x6e916  5      
  jmpq .L_6be00                       #  2860  0x6e91b  5      
  nop                                 #  2861  0x6e920  1      
.L_6f9e0:                             #        0x6e921  0      
  movq $0x10023bf9, 0xb0(%rsp)        #  2862  0x6e921  12     
  cmpl $0x47, 0x100(%rsp)             #  2863  0x6e92d  8      
  movl $0x10023bfd, %eax              #  2864  0x6e935  5      
  jmpq .L_6cc40                       #  2865  0x6e93a  5      
  xchgw %ax, %ax                      #  2866  0x6e93f  3      
.L_6fa00:                             #        0x6e942  0      
  orl $0x400, %r13d                   #  2867  0x6e942  7      
  movl %r12d, %r12d                   #  2868  0x6e949  3      
  movzbl (%r15,%r12,1), %eax          #  2869  0x6e94c  5      
  jmpq .L_6be00                       #  2870  0x6e951  5      
  nop                                 #  2871  0x6e956  1      
.L_6fa20:                             #        0x6e957  0      
  movq 0xe0(%rsp), %rsi               #  2872  0x6e957  8      
  movl %esi, %esi                     #  2873  0x6e95f  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2874  0x6e961  5      
  leal 0x8(%rdx), %eax                #  2875  0x6e966  3      
  movl %esi, %esi                     #  2876  0x6e969  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2877  0x6e96b  5      
  jmpq .L_6dfe0                       #  2878  0x6e970  5      
  xchgw %ax, %ax                      #  2879  0x6e975  3      
.L_6fa40:                             #        0x6e978  0      
  movq 0xe0(%rsp), %rsi               #  2880  0x6e978  8      
  movl %esi, %esi                     #  2881  0x6e980  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2882  0x6e982  5      
  leal 0x8(%rdx), %eax                #  2883  0x6e987  3      
  movl %esi, %esi                     #  2884  0x6e98a  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2885  0x6e98c  5      
  jmpq .L_6df80                       #  2886  0x6e991  5      
  xchgw %ax, %ax                      #  2887  0x6e996  3      
.L_6fa60:                             #        0x6e999  0      
  movq 0xe0(%rsp), %rsi               #  2888  0x6e999  8      
  movl %esi, %esi                     #  2889  0x6e9a1  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2890  0x6e9a3  5      
  leal 0x8(%rdx), %eax                #  2891  0x6e9a8  3      
  movl %esi, %esi                     #  2892  0x6e9ab  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2893  0x6e9ad  5      
  jmpq .L_6ce60                       #  2894  0x6e9b2  5      
  xchgw %ax, %ax                      #  2895  0x6e9b7  3      
.L_6fa80:                             #        0x6e9ba  0      
  movq 0xe0(%rsp), %rsi               #  2896  0x6e9ba  8      
  movl %esi, %esi                     #  2897  0x6e9c2  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2898  0x6e9c4  5      
  leal 0x8(%rdx), %eax                #  2899  0x6e9c9  3      
  movl %esi, %esi                     #  2900  0x6e9cc  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2901  0x6e9ce  5      
  jmpq .L_6de00                       #  2902  0x6e9d3  5      
  xchgw %ax, %ax                      #  2903  0x6e9d8  3      
.L_6faa0:                             #        0x6e9db  0      
  movq 0xe0(%rsp), %rax               #  2904  0x6e9db  8      
  movl %eax, %eax                     #  2905  0x6e9e3  2      
  movl (%r15,%rax,1), %edx            #  2906  0x6e9e5  4      
  cmpl $0x2f, %edx                    #  2907  0x6e9e9  3      
  ja .L_70300                         #  2908  0x6e9ec  6      
  movq %rax, %rcx                     #  2909  0x6e9f2  3      
  nop                                 #  2910  0x6e9f5  1      
  movl %eax, %eax                     #  2911  0x6e9f6  2      
  movl 0xc(%r15,%rax,1), %eax         #  2912  0x6e9f8  5      
  addl %edx, %eax                     #  2913  0x6e9fd  2      
  addl $0x8, %edx                     #  2914  0x6e9ff  3      
  movl %ecx, %ecx                     #  2915  0x6ea02  2      
  movl %edx, (%r15,%rcx,1)            #  2916  0x6ea04  4      
  nop                                 #  2917  0x6ea08  1      
.L_6fae0:                             #        0x6ea09  0      
  movl %eax, %eax                     #  2918  0x6ea09  2      
  movswq (%r15,%rax,1), %rcx          #  2919  0x6ea0b  5      
  jmpq .L_6cde0                       #  2920  0x6ea10  5      
  nop                                 #  2921  0x6ea15  1      
  nop                                 #  2922  0x6ea16  1      
.L_6fb00:                             #        0x6ea17  0      
  movq 0xe0(%rsp), %rax               #  2923  0x6ea17  8      
  movl %eax, %eax                     #  2924  0x6ea1f  2      
  movl (%r15,%rax,1), %edx            #  2925  0x6ea21  4      
  cmpl $0x2f, %edx                    #  2926  0x6ea25  3      
  ja .L_702e0                         #  2927  0x6ea28  6      
  movq %rax, %rcx                     #  2928  0x6ea2e  3      
  nop                                 #  2929  0x6ea31  1      
  movl %eax, %eax                     #  2930  0x6ea32  2      
  movl 0xc(%r15,%rax,1), %eax         #  2931  0x6ea34  5      
  addl %edx, %eax                     #  2932  0x6ea39  2      
  addl $0x8, %edx                     #  2933  0x6ea3b  3      
  movl %ecx, %ecx                     #  2934  0x6ea3e  2      
  movl %edx, (%r15,%rcx,1)            #  2935  0x6ea40  4      
  nop                                 #  2936  0x6ea44  1      
.L_6fb40:                             #        0x6ea45  0      
  movl %eax, %eax                     #  2937  0x6ea45  2      
  movzwl (%r15,%rax,1), %ecx          #  2938  0x6ea47  5      
  movl $0x1, %eax                     #  2939  0x6ea4c  5      
  testq %rcx, %rcx                    #  2940  0x6ea51  3      
  setne %sil                          #  2941  0x6ea54  4      
  jmpq .L_6c8c0                       #  2942  0x6ea58  5      
  nop                                 #  2943  0x6ea5d  1      
.L_6fb60:                             #        0x6ea5e  0      
  movq 0xe0(%rsp), %rax               #  2944  0x6ea5e  8      
  movl %eax, %eax                     #  2945  0x6ea66  2      
  movl (%r15,%rax,1), %edx            #  2946  0x6ea68  4      
  cmpl $0x2f, %edx                    #  2947  0x6ea6c  3      
  ja .L_6ffe0                         #  2948  0x6ea6f  6      
  movq %rax, %rcx                     #  2949  0x6ea75  3      
  nop                                 #  2950  0x6ea78  1      
  movl %eax, %eax                     #  2951  0x6ea79  2      
  movl 0xc(%r15,%rax,1), %eax         #  2952  0x6ea7b  5      
  addl %edx, %eax                     #  2953  0x6ea80  2      
  addl $0x8, %edx                     #  2954  0x6ea82  3      
  movl %ecx, %ecx                     #  2955  0x6ea85  2      
  movl %edx, (%r15,%rcx,1)            #  2956  0x6ea87  4      
  nop                                 #  2957  0x6ea8b  1      
.L_6fba0:                             #        0x6ea8c  0      
  movl %eax, %eax                     #  2958  0x6ea8c  2      
  movl (%r15,%rax,1), %eax            #  2959  0x6ea8e  4      
  movl 0xd0(%rsp), %edx               #  2960  0x6ea92  7      
  movl %eax, %eax                     #  2961  0x6ea99  2      
  movl %edx, (%r15,%rax,1)            #  2962  0x6ea9b  4      
  jmpq .L_6c560                       #  2963  0x6ea9f  5      
  nop                                 #  2964  0x6eaa4  1      
.L_6fbc0:                             #        0x6eaa5  0      
  movq 0xe0(%rsp), %rax               #  2965  0x6eaa5  8      
  movl %eax, %eax                     #  2966  0x6eaad  2      
  movl (%r15,%rax,1), %edx            #  2967  0x6eaaf  4      
  cmpl $0x2f, %edx                    #  2968  0x6eab3  3      
  ja .L_702c0                         #  2969  0x6eab6  6      
  movq %rax, %rcx                     #  2970  0x6eabc  3      
  nop                                 #  2971  0x6eabf  1      
  movl %eax, %eax                     #  2972  0x6eac0  2      
  movl 0xc(%r15,%rax,1), %eax         #  2973  0x6eac2  5      
  addl %edx, %eax                     #  2974  0x6eac7  2      
  addl $0x8, %edx                     #  2975  0x6eac9  3      
  movl %ecx, %ecx                     #  2976  0x6eacc  2      
  movl %edx, (%r15,%rcx,1)            #  2977  0x6eace  4      
  nop                                 #  2978  0x6ead2  1      
.L_6fc00:                             #        0x6ead3  0      
  movl %eax, %eax                     #  2979  0x6ead3  2      
  movzwl (%r15,%rax,1), %ecx          #  2980  0x6ead5  5      
  jmpq .L_6c860                       #  2981  0x6eada  5      
  nop                                 #  2982  0x6eadf  1      
  nop                                 #  2983  0x6eae0  1      
.L_6fc20:                             #        0x6eae1  0      
  movq 0xe0(%rsp), %rsi               #  2984  0x6eae1  8      
  movl %esi, %esi                     #  2985  0x6eae9  2      
  movl 0x8(%r15,%rsi,1), %edx         #  2986  0x6eaeb  5      
  leal 0x8(%rdx), %eax                #  2987  0x6eaf0  3      
  movl %esi, %esi                     #  2988  0x6eaf3  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  2989  0x6eaf5  5      
  jmpq .L_6c7c0                       #  2990  0x6eafa  5      
  xchgw %ax, %ax                      #  2991  0x6eaff  3      
.L_6fc40:                             #        0x6eb02  0      
  movq 0xe0(%rsp), %rax               #  2992  0x6eb02  8      
  movl %eax, %eax                     #  2993  0x6eb0a  2      
  movl (%r15,%rax,1), %edx            #  2994  0x6eb0c  4      
  cmpl $0x2f, %edx                    #  2995  0x6eb10  3      
  ja .L_70180                         #  2996  0x6eb13  6      
  movq %rax, %rcx                     #  2997  0x6eb19  3      
  nop                                 #  2998  0x6eb1c  1      
  movl %eax, %eax                     #  2999  0x6eb1d  2      
  movl 0xc(%r15,%rax,1), %eax         #  3000  0x6eb1f  5      
  addl %edx, %eax                     #  3001  0x6eb24  2      
  addl $0x8, %edx                     #  3002  0x6eb26  3      
  movl %ecx, %ecx                     #  3003  0x6eb29  2      
  movl %edx, (%r15,%rcx,1)            #  3004  0x6eb2b  4      
  nop                                 #  3005  0x6eb2f  1      
.L_6fc80:                             #        0x6eb30  0      
  movl %eax, %eax                     #  3006  0x6eb30  2      
  movzwl (%r15,%rax,1), %ecx          #  3007  0x6eb32  5      
  jmpq .L_6cf80                       #  3008  0x6eb37  5      
  nop                                 #  3009  0x6eb3c  1      
  nop                                 #  3010  0x6eb3d  1      
.L_6fca0:                             #        0x6eb3e  0      
  jp .L_6cc20                         #  3011  0x6eb3e  6      
  movb $0x2d, 0x29f(%rsp)             #  3012  0x6eb44  8      
  jmpq .L_6cc20                       #  3013  0x6eb4c  5      
  nop                                 #  3014  0x6eb51  1      
.L_6fcc0:                             #        0x6eb52  0      
  movzbl 0x29f(%rsp), %eax            #  3015  0x6eb52  8      
  movl $0x0, 0xb8(%rsp)               #  3016  0x6eb5a  11     
  jmpq .L_6d0c0                       #  3017  0x6eb65  5      
  nop                                 #  3018  0x6eb6a  1      
.L_6fce0:                             #        0x6eb6b  0      
  movq 0xe0(%rsp), %rsi               #  3019  0x6eb6b  8      
  movl %esi, %esi                     #  3020  0x6eb73  2      
  movl 0x8(%r15,%rsi,1), %edx         #  3021  0x6eb75  5      
  leal 0x8(%rdx), %eax                #  3022  0x6eb7a  3      
  movl %esi, %esi                     #  3023  0x6eb7d  2      
  movl %eax, 0x8(%r15,%rsi,1)         #  3024  0x6eb7f  5      
  jmpq .L_6cd40                       #  3025  0x6eb84  5      
  xchgw %ax, %ax                      #  3026  0x6eb89  3      
.L_6fd00:                             #        0x6eb8c  0      
  testb $0x1, %r13b                   #  3027  0x6eb8c  4      
  je .L_6e420                         #  3028  0x6eb90  6      
  jmpq .L_6e3c0                       #  3029  0x6eb96  5      
  xchgw %ax, %ax                      #  3030  0x6eb9b  3      
  nop                                 #  3031  0x6eb9e  1      
.L_6fd20:                             #        0x6eb9f  0      
  movl $0x40, %esi                    #  3032  0x6eb9f  5      
  movl %r14d, %edi                    #  3033  0x6eba4  3      
  nop                                 #  3034  0x6eba7  1      
  nop                                 #  3035  0x6eba8  1      
  callq ._malloc_r                    #  3036  0x6eba9  5      
  movq 0xc8(%rsp), %rcx               #  3037  0x6ebae  8      
  movl %eax, %eax                     #  3038  0x6ebb6  2      
  testq %rax, %rax                    #  3039  0x6ebb8  3      
  movl %ecx, %ecx                     #  3040  0x6ebbb  2      
  movl %eax, (%r15,%rcx,1)            #  3041  0x6ebbd  4      
  movl %ecx, %ecx                     #  3042  0x6ebc1  2      
  movl %eax, 0x10(%r15,%rcx,1)        #  3043  0x6ebc3  5      
  je .L_71180                         #  3044  0x6ebc8  6      
  movq 0xc8(%rsp), %rsi               #  3045  0x6ebce  8      
  movl %esi, %esi                     #  3046  0x6ebd6  2      
  movl $0x40, 0x14(%r15,%rsi,1)       #  3047  0x6ebd8  9      
  jmpq .L_6bb20                       #  3048  0x6ebe1  5      
  nop                                 #  3049  0x6ebe6  1      
.L_6fd80:                             #        0x6ebe7  0      
  movl 0xb0(%rsp), %edi               #  3050  0x6ebe7  7      
  movl %ecx, 0x98(%rsp)               #  3051  0x6ebee  7      
  nop                                 #  3052  0x6ebf5  1      
  callq .strlen                       #  3053  0x6ebf6  5      
  movl 0x98(%rsp), %ecx               #  3054  0x6ebfb  7      
  testl %eax, %eax                    #  3055  0x6ec02  2      
  movl %eax, 0xc4(%rsp)               #  3056  0x6ec04  7      
  cmovnsl %eax, %ecx                  #  3057  0x6ec0b  3      
  movzbl 0x29f(%rsp), %eax            #  3058  0x6ec0e  8      
  nop                                 #  3059  0x6ec16  1      
  movl %ecx, 0xb8(%rsp)               #  3060  0x6ec17  7      
  jmpq .L_6d0c0                       #  3061  0x6ec1e  5      
  nop                                 #  3062  0x6ec23  1      
  nop                                 #  3063  0x6ec24  1      
.L_6fde0:                             #        0x6ec25  0      
  movl 0xc8(%rsp), %esi               #  3064  0x6ec25  7      
  leal 0x220(%rsp), %edx              #  3065  0x6ec2c  7      
  movl %r14d, %edi                    #  3066  0x6ec33  3      
  nop                                 #  3067  0x6ec36  1      
  callq .__ssprint_r                  #  3068  0x6ec37  5      
  testl %eax, %eax                    #  3069  0x6ec3c  2      
  jne .L_6d340                        #  3070  0x6ec3e  6      
  movl 0x28c(%rsp), %ecx              #  3071  0x6ec44  7      
  leal 0x1e0(%rsp), %ebx              #  3072  0x6ec4b  7      
  jmpq .L_6e420                       #  3073  0x6ec52  5      
  nop                                 #  3074  0x6ec57  1      
.L_6fe20:                             #        0x6ec58  0      
  movl 0xc8(%rsp), %esi               #  3075  0x6ec58  7      
  leal 0x220(%rsp), %edx              #  3076  0x6ec5f  7      
  movl %r14d, %edi                    #  3077  0x6ec66  3      
  nop                                 #  3078  0x6ec69  1      
  callq .__ssprint_r                  #  3079  0x6ec6a  5      
  testl %eax, %eax                    #  3080  0x6ec6f  2      
  jne .L_6d340                        #  3081  0x6ec71  6      
  leal 0x1e0(%rsp), %ebx              #  3082  0x6ec77  7      
  jmpq .L_6f7c0                       #  3083  0x6ec7e  5      
  nop                                 #  3084  0x6ec83  1      
.L_6fe60:                             #        0x6ec84  0      
  movl 0xc8(%rsp), %esi               #  3085  0x6ec84  7      
  leal 0x220(%rsp), %edx              #  3086  0x6ec8b  7      
  movl %r14d, %edi                    #  3087  0x6ec92  3      
  nop                                 #  3088  0x6ec95  1      
  callq .__ssprint_r                  #  3089  0x6ec96  5      
  testl %eax, %eax                    #  3090  0x6ec9b  2      
  je .L_6d300                         #  3091  0x6ec9d  6      
  nop                                 #  3092  0x6eca3  1      
  nop                                 #  3093  0x6eca4  1      
.L_6fea0:                             #        0x6eca5  0      
  movq 0xc8(%rsp), %rsi               #  3094  0x6eca5  8      
  movl %esi, %esi                     #  3095  0x6ecad  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3096  0x6ecaf  6      
  jmpq .L_6d380                       #  3097  0x6ecb5  5      
  nop                                 #  3098  0x6ecba  1      
.L_6fec0:                             #        0x6ecbb  0      
  movl 0xc8(%rsp), %esi               #  3099  0x6ecbb  7      
  leal 0x220(%rsp), %edx              #  3100  0x6ecc2  7      
  movl %r14d, %edi                    #  3101  0x6ecc9  3      
  nop                                 #  3102  0x6eccc  1      
  callq .__ssprint_r                  #  3103  0x6eccd  5      
  testl %eax, %eax                    #  3104  0x6ecd2  2      
  jne .L_6d340                        #  3105  0x6ecd4  6      
  leal 0x1e0(%rsp), %ebx              #  3106  0x6ecda  7      
  jmpq .L_6d4e0                       #  3107  0x6ece1  5      
  nop                                 #  3108  0x6ece6  1      
.L_6ff00:                             #        0x6ece7  0      
  movq %r13, %r12                     #  3109  0x6ece7  3      
  movl 0xc4(%rsp), %r13d              #  3110  0x6ecea  8      
  nop                                 #  3111  0x6ecf2  1      
  nop                                 #  3112  0x6ecf3  1      
.L_6ff20:                             #        0x6ecf4  0      
  movl %eax, %eax                     #  3113  0x6ecf4  2      
  movl %ebx, 0x4(%r15,%rax,1)         #  3114  0x6ecf6  5      
  movl 0x224(%rsp), %edx              #  3115  0x6ecfb  7      
  addl %ebx, 0x228(%rsp)              #  3116  0x6ed02  7      
  movl %eax, %eax                     #  3117  0x6ed09  2      
  movl $0x10023f00, (%r15,%rax,1)     #  3118  0x6ed0b  8      
  nop                                 #  3119  0x6ed13  1      
  addl $0x1, %edx                     #  3120  0x6ed14  3      
  cmpl $0x7, %edx                     #  3121  0x6ed17  3      
  movl %edx, 0x224(%rsp)              #  3122  0x6ed1a  7      
  jg .L_70c80                         #  3123  0x6ed21  6      
  addl $0x8, %eax                     #  3124  0x6ed27  3      
  nop                                 #  3125  0x6ed2a  1      
.L_6ff60:                             #        0x6ed2b  0      
  movl 0x118(%rsp), %esi              #  3126  0x6ed2b  7      
  movl 0xb0(%rsp), %ebx               #  3127  0x6ed32  7      
  movl %eax, %eax                     #  3128  0x6ed39  2      
  movl %esi, 0x4(%r15,%rax,1)         #  3129  0x6ed3b  5      
  movl %eax, %eax                     #  3130  0x6ed40  2      
  movl %ebx, (%r15,%rax,1)            #  3131  0x6ed42  4      
  nop                                 #  3132  0x6ed46  1      
  addl %esi, 0x228(%rsp)              #  3133  0x6ed47  7      
  jmpq .L_6d980                       #  3134  0x6ed4e  5      
  nop                                 #  3135  0x6ed53  1      
  nop                                 #  3136  0x6ed54  1      
.L_6ffa0:                             #        0x6ed55  0      
  movl 0xc8(%rsp), %esi               #  3137  0x6ed55  7      
  leal 0x220(%rsp), %edx              #  3138  0x6ed5c  7      
  movl %r14d, %edi                    #  3139  0x6ed63  3      
  movl %r8d, 0x88(%rsp)               #  3140  0x6ed66  8      
  xchgw %ax, %ax                      #  3141  0x6ed6e  3      
  callq .__ssprint_r                  #  3142  0x6ed71  5      
  testl %eax, %eax                    #  3143  0x6ed76  2      
  movl 0x88(%rsp), %r8d               #  3144  0x6ed78  8      
  jne .L_6d340                        #  3145  0x6ed80  6      
  leal 0x1e0(%rsp), %ebx              #  3146  0x6ed86  7      
  jmpq .L_6dba0                       #  3147  0x6ed8d  5      
  nop                                 #  3148  0x6ed92  1      
.L_6ffe0:                             #        0x6ed93  0      
  movq 0xe0(%rsp), %rsi               #  3149  0x6ed93  8      
  movl %esi, %esi                     #  3150  0x6ed9b  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3151  0x6ed9d  5      
  leal 0x8(%rax), %edx                #  3152  0x6eda2  3      
  movl %esi, %esi                     #  3153  0x6eda5  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3154  0x6eda7  5      
  jmpq .L_6fba0                       #  3155  0x6edac  5      
  xchgw %ax, %ax                      #  3156  0x6edb1  3      
.L_70000:                             #        0x6edb4  0      
  movl 0x108(%rsp), %esi              #  3157  0x6edb4  7      
  subl 0xb0(%rsp), %esi               #  3158  0x6edbb  7      
  movl %esi, 0xc4(%rsp)               #  3159  0x6edc2  7      
  movq 0xf0(%rsp), %rsi               #  3160  0x6edc9  8      
  nop                                 #  3161  0x6edd1  1      
  jmpq .L_6c9a0                       #  3162  0x6edd2  5      
  nop                                 #  3163  0x6edd7  1      
  nop                                 #  3164  0x6edd8  1      
.L_70040:                             #        0x6edd9  0      
  movl $0x6, 0xc4(%rsp)               #  3165  0x6edd9  11     
  cmpl $0x6, %r10d                    #  3166  0x6ede4  4      
  cmoval 0xc4(%rsp), %r10d            #  3167  0x6ede8  9      
  movl $0x0, %eax                     #  3168  0x6edf1  5      
  nop                                 #  3169  0x6edf6  1      
  movq $0x0, 0xe8(%rsp)               #  3170  0x6edf7  12     
  movl $0x0, 0x104(%rsp)              #  3171  0x6ee03  11     
  nop                                 #  3172  0x6ee0e  1      
  movl $0x0, 0x114(%rsp)              #  3173  0x6ee0f  11     
  movl $0x0, 0x12c(%rsp)              #  3174  0x6ee1a  11     
  nop                                 #  3175  0x6ee25  1      
  movl $0x0, 0x11c(%rsp)              #  3176  0x6ee26  11     
  movq $0x10023c12, 0xb0(%rsp)        #  3177  0x6ee31  12     
  testl %r10d, %r10d                  #  3178  0x6ee3d  3      
  nop                                 #  3179  0x6ee40  1      
  movl %r10d, 0xc4(%rsp)              #  3180  0x6ee41  8      
  cmovnsl %r10d, %eax                 #  3181  0x6ee49  4      
  movl %eax, 0xb8(%rsp)               #  3182  0x6ee4d  7      
  xorl %eax, %eax                     #  3183  0x6ee54  2      
  jmpq .L_6bee0                       #  3184  0x6ee56  5      
  nop                                 #  3185  0x6ee5b  1      
.L_700e0:                             #        0x6ee5c  0      
  movl %r10d, 0xb8(%rsp)              #  3186  0x6ee5c  8      
  movzbl 0x29f(%rsp), %eax            #  3187  0x6ee64  8      
  movl %r10d, 0xc4(%rsp)              #  3188  0x6ee6c  8      
  jmpq .L_6d0c0                       #  3189  0x6ee74  5      
  nop                                 #  3190  0x6ee79  1      
.L_70100:                             #        0x6ee7a  0      
  cmpl $0x46, 0x100(%rsp)             #  3191  0x6ee7a  8      
  je .L_70fc0                         #  3192  0x6ee82  6      
  cmpl $0x65, 0x100(%rsp)             #  3193  0x6ee88  8      
  jle .L_70e60                        #  3194  0x6ee90  6      
  nop                                 #  3195  0x6ee96  1      
  cmpl $0x66, 0x100(%rsp)             #  3196  0x6ee97  8      
  movl 0x28c(%rsp), %ecx              #  3197  0x6ee9f  7      
  jne .L_6ef80                        #  3198  0x6eea6  6      
  nop                                 #  3199  0x6eeac  1      
.L_70140:                             #        0x6eead  0      
  testl %ecx, %ecx                    #  3200  0x6eead  2      
  jle .L_71040                        #  3201  0x6eeaf  6      
  testl %r10d, %r10d                  #  3202  0x6eeb5  3      
  jne .L_70160                        #  3203  0x6eeb8  6      
  testb $0x1, %r13b                   #  3204  0x6eebe  4      
  je .L_70e40                         #  3205  0x6eec2  6      
  nop                                 #  3206  0x6eec8  1      
.L_70160:                             #        0x6eec9  0      
  leal 0x1(%rcx,%r10,1), %r10d        #  3207  0x6eec9  5      
  movl %r10d, 0xc4(%rsp)              #  3208  0x6eece  8      
  jmpq .L_6efc0                       #  3209  0x6eed6  5      
  nop                                 #  3210  0x6eedb  1      
.L_70180:                             #        0x6eedc  0      
  movq 0xe0(%rsp), %rsi               #  3211  0x6eedc  8      
  movl %esi, %esi                     #  3212  0x6eee4  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3213  0x6eee6  5      
  leal 0x8(%rax), %edx                #  3214  0x6eeeb  3      
  movl %esi, %esi                     #  3215  0x6eeee  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3216  0x6eef0  5      
  jmpq .L_6fc80                       #  3217  0x6eef5  5      
  xchgw %ax, %ax                      #  3218  0x6eefa  3      
.L_701a0:                             #        0x6eefd  0      
  movq 0xe0(%rsp), %rax               #  3219  0x6eefd  8      
  movl %eax, %eax                     #  3220  0x6ef05  2      
  movl (%r15,%rax,1), %edx            #  3221  0x6ef07  4      
  cmpl $0x2f, %edx                    #  3222  0x6ef0b  3      
  ja .L_70bc0                         #  3223  0x6ef0e  6      
  movq %rax, %rcx                     #  3224  0x6ef14  3      
  nop                                 #  3225  0x6ef17  1      
  movl %eax, %eax                     #  3226  0x6ef18  2      
  movl 0xc(%r15,%rax,1), %eax         #  3227  0x6ef1a  5      
  addl %edx, %eax                     #  3228  0x6ef1f  2      
  addl $0x8, %edx                     #  3229  0x6ef21  3      
  movl %ecx, %ecx                     #  3230  0x6ef24  2      
  movl %edx, (%r15,%rcx,1)            #  3231  0x6ef26  4      
  nop                                 #  3232  0x6ef2a  1      
.L_701e0:                             #        0x6ef2b  0      
  movl %eax, %eax                     #  3233  0x6ef2b  2      
  movl (%r15,%rax,1), %ecx            #  3234  0x6ef2d  4      
  jmpq .L_6cf80                       #  3235  0x6ef31  5      
  nop                                 #  3236  0x6ef36  1      
  nop                                 #  3237  0x6ef37  1      
.L_70200:                             #        0x6ef38  0      
  andl $0x200, %r13d                  #  3238  0x6ef38  7      
  je .L_70b00                         #  3239  0x6ef3f  6      
  movq 0xe0(%rsp), %rcx               #  3240  0x6ef45  8      
  movl %ecx, %ecx                     #  3241  0x6ef4d  2      
  movl (%r15,%rcx,1), %edx            #  3242  0x6ef4f  4      
  cmpl $0x2f, %edx                    #  3243  0x6ef53  3      
  xchgw %ax, %ax                      #  3244  0x6ef56  3      
  ja .L_70fa0                         #  3245  0x6ef59  6      
  movl %ecx, %ecx                     #  3246  0x6ef5f  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3247  0x6ef61  5      
  addl %edx, %eax                     #  3248  0x6ef66  2      
  addl $0x8, %edx                     #  3249  0x6ef68  3      
  movl %ecx, %ecx                     #  3250  0x6ef6b  2      
  movl %edx, (%r15,%rcx,1)            #  3251  0x6ef6d  4      
  nop                                 #  3252  0x6ef71  1      
.L_70240:                             #        0x6ef72  0      
  movl %eax, %eax                     #  3253  0x6ef72  2      
  movl (%r15,%rax,1), %eax            #  3254  0x6ef74  4      
  movzbl 0xd0(%rsp), %edx             #  3255  0x6ef78  8      
  movl %eax, %eax                     #  3256  0x6ef80  2      
  movb %dl, (%r15,%rax,1)             #  3257  0x6ef82  4      
  jmpq .L_6c560                       #  3258  0x6ef86  5      
  nop                                 #  3259  0x6ef8b  1      
.L_70260:                             #        0x6ef8c  0      
  movq 0xe0(%rsp), %rax               #  3260  0x6ef8c  8      
  movl %eax, %eax                     #  3261  0x6ef94  2      
  movl (%r15,%rax,1), %edx            #  3262  0x6ef96  4      
  cmpl $0x2f, %edx                    #  3263  0x6ef9a  3      
  ja .L_70c40                         #  3264  0x6ef9d  6      
  movq %rax, %rcx                     #  3265  0x6efa3  3      
  nop                                 #  3266  0x6efa6  1      
  movl %eax, %eax                     #  3267  0x6efa7  2      
  movl 0xc(%r15,%rax,1), %eax         #  3268  0x6efa9  5      
  addl %edx, %eax                     #  3269  0x6efae  2      
  addl $0x8, %edx                     #  3270  0x6efb0  3      
  movl %ecx, %ecx                     #  3271  0x6efb3  2      
  movl %edx, (%r15,%rcx,1)            #  3272  0x6efb5  4      
  nop                                 #  3273  0x6efb9  1      
.L_702a0:                             #        0x6efba  0      
  movl %eax, %eax                     #  3274  0x6efba  2      
  movl (%r15,%rax,1), %ecx            #  3275  0x6efbc  4      
  movl $0x1, %eax                     #  3276  0x6efc0  5      
  testq %rcx, %rcx                    #  3277  0x6efc5  3      
  setne %sil                          #  3278  0x6efc8  4      
  jmpq .L_6c8c0                       #  3279  0x6efcc  5      
  nop                                 #  3280  0x6efd1  1      
.L_702c0:                             #        0x6efd2  0      
  movq 0xe0(%rsp), %rsi               #  3281  0x6efd2  8      
  movl %esi, %esi                     #  3282  0x6efda  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3283  0x6efdc  5      
  leal 0x8(%rax), %edx                #  3284  0x6efe1  3      
  movl %esi, %esi                     #  3285  0x6efe4  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3286  0x6efe6  5      
  jmpq .L_6fc00                       #  3287  0x6efeb  5      
  xchgw %ax, %ax                      #  3288  0x6eff0  3      
.L_702e0:                             #        0x6eff3  0      
  movq 0xe0(%rsp), %rsi               #  3289  0x6eff3  8      
  movl %esi, %esi                     #  3290  0x6effb  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3291  0x6effd  5      
  leal 0x8(%rax), %edx                #  3292  0x6f002  3      
  movl %esi, %esi                     #  3293  0x6f005  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3294  0x6f007  5      
  jmpq .L_6fb40                       #  3295  0x6f00c  5      
  xchgw %ax, %ax                      #  3296  0x6f011  3      
.L_70300:                             #        0x6f014  0      
  movq 0xe0(%rsp), %rsi               #  3297  0x6f014  8      
  movl %esi, %esi                     #  3298  0x6f01c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3299  0x6f01e  5      
  leal 0x8(%rax), %edx                #  3300  0x6f023  3      
  movl %esi, %esi                     #  3301  0x6f026  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3302  0x6f028  5      
  jmpq .L_6fae0                       #  3303  0x6f02d  5      
  xchgw %ax, %ax                      #  3304  0x6f032  3      
.L_70320:                             #        0x6f035  0      
  cmpl $0xffffffff, %r10d             #  3305  0x6f035  7      
  je .L_70f60                         #  3306  0x6f03c  6      
  cmpl $0x47, 0x100(%rsp)             #  3307  0x6f042  8      
  je .L_70cc0                         #  3308  0x6f04a  6      
  cmpl $0x67, 0x100(%rsp)             #  3309  0x6f050  8      
  je .L_70cc0                         #  3310  0x6f058  6      
  xorl %r11d, %r11d                   #  3311  0x6f05e  3      
  movq $0x0, 0xe8(%rsp)               #  3312  0x6f061  12     
  jmpq .L_6ed80                       #  3313  0x6f06d  5      
  nop                                 #  3314  0x6f072  1      
.L_70360:                             #        0x6f073  0      
  movq 0xe0(%rsp), %rax               #  3315  0x6f073  8      
  movl %eax, %eax                     #  3316  0x6f07b  2      
  movl (%r15,%rax,1), %edx            #  3317  0x6f07d  4      
  cmpl $0x2f, %edx                    #  3318  0x6f081  3      
  ja .L_70c00                         #  3319  0x6f084  6      
  movq %rax, %rcx                     #  3320  0x6f08a  3      
  nop                                 #  3321  0x6f08d  1      
  movl %eax, %eax                     #  3322  0x6f08e  2      
  movl 0xc(%r15,%rax,1), %eax         #  3323  0x6f090  5      
  addl %edx, %eax                     #  3324  0x6f095  2      
  addl $0x8, %edx                     #  3325  0x6f097  3      
  movl %ecx, %ecx                     #  3326  0x6f09a  2      
  movl %edx, (%r15,%rcx,1)            #  3327  0x6f09c  4      
  nop                                 #  3328  0x6f0a0  1      
.L_703a0:                             #        0x6f0a1  0      
  movl %eax, %eax                     #  3329  0x6f0a1  2      
  movslq (%r15,%rax,1), %rcx          #  3330  0x6f0a3  4      
  jmpq .L_6cde0                       #  3331  0x6f0a7  5      
  nop                                 #  3332  0x6f0ac  1      
  nop                                 #  3333  0x6f0ad  1      
.L_703c0:                             #        0x6f0ae  0      
  movq 0xe0(%rsp), %rax               #  3334  0x6f0ae  8      
  movl %eax, %eax                     #  3335  0x6f0b6  2      
  movl (%r15,%rax,1), %edx            #  3336  0x6f0b8  4      
  cmpl $0x2f, %edx                    #  3337  0x6f0bc  3      
  ja .L_70900                         #  3338  0x6f0bf  6      
  movq %rax, %rcx                     #  3339  0x6f0c5  3      
  nop                                 #  3340  0x6f0c8  1      
  movl %eax, %eax                     #  3341  0x6f0c9  2      
  movl 0xc(%r15,%rax,1), %eax         #  3342  0x6f0cb  5      
  addl %edx, %eax                     #  3343  0x6f0d0  2      
  addl $0x8, %edx                     #  3344  0x6f0d2  3      
  movl %ecx, %ecx                     #  3345  0x6f0d5  2      
  movl %edx, (%r15,%rcx,1)            #  3346  0x6f0d7  4      
  nop                                 #  3347  0x6f0db  1      
.L_70400:                             #        0x6f0dc  0      
  movl %eax, %eax                     #  3348  0x6f0dc  2      
  movl (%r15,%rax,1), %ecx            #  3349  0x6f0de  4      
  jmpq .L_6c860                       #  3350  0x6f0e2  5      
  nop                                 #  3351  0x6f0e7  1      
  nop                                 #  3352  0x6f0e8  1      
.L_70420:                             #        0x6f0e9  0      
  subl $0x2, 0x100(%rsp)              #  3353  0x6f0e9  8      
  nop                                 #  3354  0x6f0f1  1      
  nop                                 #  3355  0x6f0f2  1      
.L_70440:                             #        0x6f0f3  0      
  subl $0x1, %ecx                     #  3356  0x6f0f3  3      
  cmpl $0x41, 0x100(%rsp)             #  3357  0x6f0f6  8      
  movl %ecx, 0x28c(%rsp)              #  3358  0x6f0fe  7      
  sete %dl                            #  3359  0x6f105  3      
  cmpl $0x61, 0x100(%rsp)             #  3360  0x6f108  8      
  sete %al                            #  3361  0x6f110  3      
  orl %eax, %edx                      #  3362  0x6f113  2      
  movzbl 0x100(%rsp), %eax            #  3363  0x6f115  8      
  addl $0xf, %eax                     #  3364  0x6f11d  3      
  andl $0x1, %edx                     #  3365  0x6f120  3      
  cmovel 0x100(%rsp), %eax            #  3366  0x6f123  8      
  testl %ecx, %ecx                    #  3367  0x6f12b  2      
  nop                                 #  3368  0x6f12d  1      
  movb %al, 0x270(%rsp)               #  3369  0x6f12e  7      
  js .L_70f20                         #  3370  0x6f135  6      
  movb $0x2b, 0x271(%rsp)             #  3371  0x6f13b  8      
  nop                                 #  3372  0x6f143  1      
.L_704a0:                             #        0x6f144  0      
  cmpl $0x9, %ecx                     #  3373  0x6f144  3      
  jle .L_70b40                        #  3374  0x6f147  6      
  movq 0x168(%rsp), %rsi              #  3375  0x6f14d  8      
  movl $0x66666667, %edi              #  3376  0x6f155  5      
  nop                                 #  3377  0x6f15a  1      
.L_704c0:                             #        0x6f15b  0      
  movl %ecx, %eax                     #  3378  0x6f15b  2      
  subl $0x1, %esi                     #  3379  0x6f15d  3      
  imull %edi                          #  3380  0x6f160  2      
  movl %ecx, %eax                     #  3381  0x6f162  2      
  sarl $0x1f, %eax                    #  3382  0x6f164  3      
  sarl $0x2, %edx                     #  3383  0x6f167  3      
  subl %eax, %edx                     #  3384  0x6f16a  2      
  leal (%rdx,%rdx,4), %eax            #  3385  0x6f16c  3      
  addl %eax, %eax                     #  3386  0x6f16f  2      
  subl %eax, %ecx                     #  3387  0x6f171  2      
  movl %ecx, %eax                     #  3388  0x6f173  2      
  movl %edx, %ecx                     #  3389  0x6f175  2      
  addl $0x30, %eax                    #  3390  0x6f177  3      
  nop                                 #  3391  0x6f17a  1      
  cmpl $0x9, %edx                     #  3392  0x6f17b  3      
  movl %esi, %esi                     #  3393  0x6f17e  2      
  movb %al, (%r15,%rsi,1)             #  3394  0x6f180  4      
  jg .L_704c0                         #  3395  0x6f184  6      
  leal -0x1(%rsi), %eax               #  3396  0x6f18a  3      
  leal 0x30(%rcx), %edx               #  3397  0x6f18d  3      
  movl %eax, %eax                     #  3398  0x6f190  2      
  movb %dl, (%r15,%rax,1)             #  3399  0x6f192  4      
  cmpl %eax, 0x168(%rsp)              #  3400  0x6f196  7      
  xchgw %ax, %ax                      #  3401  0x6f19d  3      
  jbe .L_71200                        #  3402  0x6f1a0  6      
  movl %esi, %ecx                     #  3403  0x6f1a6  2      
  leal 0x270(%rsp), %esi              #  3404  0x6f1a8  7      
  movq 0x168(%rsp), %rdi              #  3405  0x6f1af  8      
  leaq 0x2(%rsi), %rax                #  3406  0x6f1b7  4      
  jmpq .L_70540                       #  3407  0x6f1bb  5      
  nop                                 #  3408  0x6f1c0  1      
.L_70520:                             #        0x6f1c1  0      
  movl %ecx, %edx                     #  3409  0x6f1c1  2      
  addl $0x1, %ecx                     #  3410  0x6f1c3  3      
  movl %edx, %edx                     #  3411  0x6f1c6  2      
  movzbl (%r15,%rdx,1), %edx          #  3412  0x6f1c8  5      
  nop                                 #  3413  0x6f1cd  1      
  nop                                 #  3414  0x6f1ce  1      
.L_70540:                             #        0x6f1cf  0      
  movl %eax, %eax                     #  3415  0x6f1cf  2      
  movb %dl, (%r15,%rax,1)             #  3416  0x6f1d1  4      
  addl $0x1, %eax                     #  3417  0x6f1d5  3      
  cmpl %edi, %ecx                     #  3418  0x6f1d8  2      
  jb .L_70520                         #  3419  0x6f1da  6      
  nop                                 #  3420  0x6f1e0  1      
  nop                                 #  3421  0x6f1e1  1      
.L_70560:                             #        0x6f1e2  0      
  subl %esi, %eax                     #  3422  0x6f1e2  2      
  movl %eax, 0x144(%rsp)              #  3423  0x6f1e4  7      
  addl 0x118(%rsp), %eax              #  3424  0x6f1eb  7      
  cmpl $0x1, 0x118(%rsp)              #  3425  0x6f1f2  8      
  movl %eax, 0xc4(%rsp)               #  3426  0x6f1fa  7      
  nop                                 #  3427  0x6f201  1      
  jle .L_70e80                        #  3428  0x6f202  6      
  nop                                 #  3429  0x6f208  1      
  nop                                 #  3430  0x6f209  1      
.L_705a0:                             #        0x6f20a  0      
  addl $0x1, 0xc4(%rsp)               #  3431  0x6f20a  8      
  nop                                 #  3432  0x6f212  1      
  nop                                 #  3433  0x6f213  1      
.L_705c0:                             #        0x6f214  0      
  andl $0xfffffbff, %r13d             #  3434  0x6f214  7      
  movl $0x0, 0x114(%rsp)              #  3435  0x6f21b  11     
  movl $0x0, 0x12c(%rsp)              #  3436  0x6f226  11     
  nop                                 #  3437  0x6f231  1      
  movl $0x0, 0x11c(%rsp)              #  3438  0x6f232  11     
  nop                                 #  3439  0x6f23d  1      
  nop                                 #  3440  0x6f23e  1      
.L_70600:                             #        0x6f23f  0      
  cmpb $0x0, 0xd8(%rsp)               #  3441  0x6f23f  8      
  je .L_70660                         #  3442  0x6f247  6      
  cmpl $0x0, 0xc4(%rsp)               #  3443  0x6f24d  8      
  movl $0x0, %edx                     #  3444  0x6f255  5      
  movb $0x2d, 0x29f(%rsp)             #  3445  0x6f25a  8      
  nop                                 #  3446  0x6f262  1      
  cmovnsl 0xc4(%rsp), %edx            #  3447  0x6f263  8      
  movl $0x2d, %eax                    #  3448  0x6f26b  5      
  movl $0x0, 0x104(%rsp)              #  3449  0x6f270  11     
  movl %edx, 0xb8(%rsp)               #  3450  0x6f27b  7      
  nop                                 #  3451  0x6f282  1      
  jmpq .L_6ca40                       #  3452  0x6f283  5      
  nop                                 #  3453  0x6f288  1      
  nop                                 #  3454  0x6f289  1      
.L_70660:                             #        0x6f28a  0      
  cmpl $0x0, 0xc4(%rsp)               #  3455  0x6f28a  8      
  movl $0x0, %eax                     #  3456  0x6f292  5      
  movl $0x0, 0x104(%rsp)              #  3457  0x6f297  11     
  cmovnsl 0xc4(%rsp), %eax            #  3458  0x6f2a2  8      
  movl %eax, 0xb8(%rsp)               #  3459  0x6f2aa  7      
  movzbl 0x29f(%rsp), %eax            #  3460  0x6f2b1  8      
  jmpq .L_6ca20                       #  3461  0x6f2b9  5      
  nop                                 #  3462  0x6f2be  1      
.L_706a0:                             #        0x6f2bf  0      
  movl %r13d, 0xc4(%rsp)              #  3463  0x6f2bf  8      
  movq 0xb8(%rsp), %r12               #  3464  0x6f2c7  8      
  movq 0xe8(%rsp), %rbx               #  3465  0x6f2cf  8      
  movl 0xd8(%rsp), %r13d              #  3466  0x6f2d7  8      
  jmpq .L_6f500                       #  3467  0x6f2df  5      
  nop                                 #  3468  0x6f2e4  1      
  nop                                 #  3469  0x6f2e5  1      
.L_706e0:                             #        0x6f2e6  0      
  movl 0xc8(%rsp), %esi               #  3470  0x6f2e6  7      
  leal 0x220(%rsp), %edx              #  3471  0x6f2ed  7      
  movl %r14d, %edi                    #  3472  0x6f2f4  3      
  movl %r8d, 0x88(%rsp)               #  3473  0x6f2f7  8      
  xchgw %ax, %ax                      #  3474  0x6f2ff  3      
  callq .__ssprint_r                  #  3475  0x6f302  5      
  testl %eax, %eax                    #  3476  0x6f307  2      
  movl 0x88(%rsp), %r8d               #  3477  0x6f309  8      
  jne .L_6d340                        #  3478  0x6f311  6      
  movl 0x118(%rsp), %ecx              #  3479  0x6f317  7      
  leal 0x1e0(%rsp), %ebx              #  3480  0x6f31e  7      
  xchgw %ax, %ax                      #  3481  0x6f325  3      
  subl 0x28c(%rsp), %ecx              #  3482  0x6f328  7      
  jmpq .L_6e4a0                       #  3483  0x6f32f  5      
  nop                                 #  3484  0x6f334  1      
  nop                                 #  3485  0x6f335  1      
.L_70740:                             #        0x6f336  0      
  testb $0x1, %r13b                   #  3486  0x6f336  4      
  jne .L_6eec0                        #  3487  0x6f33a  6      
  movl 0x27c(%rsp), %edx              #  3488  0x6f340  7      
  jmpq .L_6ef40                       #  3489  0x6f347  5      
  nop                                 #  3490  0x6f34c  1      
.L_70760:                             #        0x6f34d  0      
  cmpl $0x45, 0x100(%rsp)             #  3491  0x6f34d  8      
  je .L_70c60                         #  3492  0x6f355  6      
  cmpl $0x65, 0x100(%rsp)             #  3493  0x6f35b  8      
  je .L_70c60                         #  3494  0x6f363  6      
  nop                                 #  3495  0x6f369  1      
  movl %r10d, 0xc4(%rsp)              #  3496  0x6f36a  8      
  movl $0x2, %esi                     #  3497  0x6f372  5      
  jmpq .L_6ee20                       #  3498  0x6f377  5      
  nop                                 #  3499  0x6f37c  1      
.L_707a0:                             #        0x6f37d  0      
  movl 0xc8(%rsp), %esi               #  3500  0x6f37d  7      
  leal 0x220(%rsp), %edx              #  3501  0x6f384  7      
  movl %r14d, %edi                    #  3502  0x6f38b  3      
  nop                                 #  3503  0x6f38e  1      
  callq .__ssprint_r                  #  3504  0x6f38f  5      
  testl %eax, %eax                    #  3505  0x6f394  2      
  jne .L_6d340                        #  3506  0x6f396  6      
  leal 0x1e0(%rsp), %eax              #  3507  0x6f39c  7      
  jmpq .L_6f840                       #  3508  0x6f3a3  5      
  nop                                 #  3509  0x6f3a8  1      
.L_707e0:                             #        0x6f3a9  0      
  movl %ecx, 0x11c(%rsp)              #  3510  0x6f3a9  7      
  movl $0x0, 0x114(%rsp)              #  3511  0x6f3b0  11     
  movl $0x0, 0x12c(%rsp)              #  3512  0x6f3bb  11     
  nop                                 #  3513  0x6f3c6  1      
  jmpq .L_70600                       #  3514  0x6f3c7  5      
  nop                                 #  3515  0x6f3cc  1      
  nop                                 #  3516  0x6f3cd  1      
.L_70820:                             #        0x6f3ce  0      
  movl 0x58(%rsp), %r8d               #  3517  0x6f3ce  5      
  leal 0x284(%rsp), %edx              #  3518  0x6f3d3  7      
  xorl %ecx, %ecx                     #  3519  0x6f3da  2      
  xorl %esi, %esi                     #  3520  0x6f3dc  2      
  movl %r14d, %edi                    #  3521  0x6f3de  3      
  nop                                 #  3522  0x6f3e1  1      
  callq ._wcsrtombs_r                 #  3523  0x6f3e2  5      
  cmpl $0xffffffff, %eax              #  3524  0x6f3e7  5      
  movl %eax, 0xc4(%rsp)               #  3525  0x6f3ec  7      
  je .L_711a0                         #  3526  0x6f3f3  6      
  movl 0xb0(%rsp), %eax               #  3527  0x6f3f9  7      
  movl %eax, 0x284(%rsp)              #  3528  0x6f400  7      
  xchgw %ax, %ax                      #  3529  0x6f407  3      
  jmpq .L_6f500                       #  3530  0x6f40a  5      
  nop                                 #  3531  0x6f40f  1      
  nop                                 #  3532  0x6f410  1      
.L_70880:                             #        0x6f411  0      
  movq 0xe0(%rsp), %rsi               #  3533  0x6f411  8      
  movl %esi, %esi                     #  3534  0x6f419  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3535  0x6f41b  5      
  leal 0x8(%rax), %edx                #  3536  0x6f420  3      
  movl %esi, %esi                     #  3537  0x6f423  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3538  0x6f425  5      
  jmpq .L_6f240                       #  3539  0x6f42a  5      
  xchgw %ax, %ax                      #  3540  0x6f42f  3      
.L_708a0:                             #        0x6f432  0      
  movq 0xe0(%rsp), %rsi               #  3541  0x6f432  8      
  movl %esi, %esi                     #  3542  0x6f43a  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3543  0x6f43c  5      
  leal 0x8(%rax), %edx                #  3544  0x6f441  3      
  movl %esi, %esi                     #  3545  0x6f444  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3546  0x6f446  5      
  jmpq .L_6f320                       #  3547  0x6f44b  5      
  xchgw %ax, %ax                      #  3548  0x6f450  3      
.L_708c0:                             #        0x6f453  0      
  movl 0x27c(%rsp), %ecx              #  3549  0x6f453  7      
  cmpl %ecx, %edx                     #  3550  0x6f45a  2      
  movq %rcx, %rax                     #  3551  0x6f45c  3      
  jbe .L_711e0                        #  3552  0x6f45f  6      
  nop                                 #  3553  0x6f465  1      
.L_708e0:                             #        0x6f466  0      
  movl %eax, %eax                     #  3554  0x6f466  2      
  movb $0x30, (%r15,%rax,1)           #  3555  0x6f468  5      
  addl $0x1, %eax                     #  3556  0x6f46d  3      
  cmpl %eax, %edx                     #  3557  0x6f470  2      
  movl %eax, 0x27c(%rsp)              #  3558  0x6f472  7      
  ja .L_708e0                         #  3559  0x6f479  6      
  jmpq .L_6ef40                       #  3560  0x6f47f  5      
  nop                                 #  3561  0x6f484  1      
.L_70900:                             #        0x6f485  0      
  movq 0xe0(%rsp), %rsi               #  3562  0x6f485  8      
  movl %esi, %esi                     #  3563  0x6f48d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3564  0x6f48f  5      
  leal 0x8(%rax), %edx                #  3565  0x6f494  3      
  movl %esi, %esi                     #  3566  0x6f497  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3567  0x6f499  5      
  jmpq .L_70400                       #  3568  0x6f49e  5      
  xchgw %ax, %ax                      #  3569  0x6f4a3  3      
.L_70920:                             #        0x6f4a6  0      
  leal 0x28c(%rsp), %edi              #  3570  0x6f4a6  7      
  movsd 0xb8(%rsp), %xmm0             #  3571  0x6f4ad  9      
  movl %r10d, 0x90(%rsp)              #  3572  0x6f4b6  8      
  movb %r11b, 0xa0(%rsp)              #  3573  0x6f4be  8      
  nop                                 #  3574  0x6f4c6  1      
  nop                                 #  3575  0x6f4c7  1      
  callq .frexp                        #  3576  0x6f4c8  5      
  mulsd 0xffb4a53(%rip), %xmm0        #  3577  0x6f4cd  8      
  movl $0x1, %eax                     #  3578  0x6f4d5  5      
  movl 0x90(%rsp), %r10d              #  3579  0x6f4da  8      
  xorpd %xmm1, %xmm1                  #  3580  0x6f4e2  4      
  movl $0x10023c01, %edi              #  3581  0x6f4e6  5      
  xchgw %ax, %ax                      #  3582  0x6f4eb  3      
  movsd 0xffb4a3a(%rip), %xmm3        #  3583  0x6f4ee  8      
  movzbl 0xa0(%rsp), %r11d            #  3584  0x6f4f6  9      
  movl %r10d, %ecx                    #  3585  0x6f4ff  3      
  ucomisd %xmm1, %xmm0                #  3586  0x6f502  4      
  cmovnel 0x28c(%rsp), %eax           #  3587  0x6f506  8      
  cmovpl 0x28c(%rsp), %eax            #  3588  0x6f50e  8      
  cmpb $0x0, 0xc4(%rsp)               #  3589  0x6f516  8      
  movl %eax, 0x28c(%rsp)              #  3590  0x6f51e  7      
  movl $0x10023be0, %eax              #  3591  0x6f525  5      
  cmoveq %rax, %rdi                   #  3592  0x6f52a  4      
  movq 0xb0(%rsp), %rax               #  3593  0x6f52e  8      
  jmpq .L_70a00                       #  3594  0x6f536  5      
  nop                                 #  3595  0x6f53b  1      
  nop                                 #  3596  0x6f53c  1      
.L_709e0:                             #        0x6f53d  0      
  movq %rdx, %rax                     #  3597  0x6f53d  3      
  nop                                 #  3598  0x6f540  1      
  nop                                 #  3599  0x6f541  1      
.L_70a00:                             #        0x6f542  0      
  mulsd %xmm3, %xmm0                  #  3600  0x6f542  4      
  subl $0x1, %ecx                     #  3601  0x6f546  3      
  cmpl $0xffffffff, %ecx              #  3602  0x6f549  6      
  cvttsd2si %xmm0, %esi               #  3603  0x6f54f  4      
  cvtsi2sdl %esi, %xmm2               #  3604  0x6f553  4      
  leal (%rsi,%rdi,1), %edx            #  3605  0x6f557  3      
  movl %edx, %edx                     #  3606  0x6f55a  2      
  movzbl (%r15,%rdx,1), %edx          #  3607  0x6f55c  5      
  nop                                 #  3608  0x6f561  1      
  movl %eax, %eax                     #  3609  0x6f562  2      
  movb %dl, (%r15,%rax,1)             #  3610  0x6f564  4      
  leal 0x1(%rax), %edx                #  3611  0x6f568  3      
  subsd %xmm2, %xmm0                  #  3612  0x6f56b  4      
  je .L_70ce0                         #  3613  0x6f56f  6      
  ucomisd %xmm1, %xmm0                #  3614  0x6f575  4      
  jne .L_709e0                        #  3615  0x6f579  6      
  jp .L_709e0                         #  3616  0x6f57f  6      
  nop                                 #  3617  0x6f585  1      
  movsd 0xffb49aa(%rip), %xmm1        #  3618  0x6f586  8      
  nop                                 #  3619  0x6f58e  1      
  nop                                 #  3620  0x6f58f  1      
.L_70a60:                             #        0x6f590  0      
  movq %rdx, %r8                      #  3621  0x6f590  3      
  ucomisd %xmm1, %xmm0                #  3622  0x6f593  4      
  jne .L_70a80                        #  3623  0x6f597  6      
  jp .L_70a80                         #  3624  0x6f59d  6      
  andb $0x1, %sil                     #  3625  0x6f5a3  4      
  jne .L_70d00                        #  3626  0x6f5a7  6      
  nop                                 #  3627  0x6f5ad  1      
.L_70a80:                             #        0x6f5ae  0      
  testl %ecx, %ecx                    #  3628  0x6f5ae  2      
  leal -0x1(%rcx), %eax               #  3629  0x6f5b0  3      
  js .L_6ef40                         #  3630  0x6f5b3  6      
  nop                                 #  3631  0x6f5b9  1      
  nop                                 #  3632  0x6f5ba  1      
.L_70aa0:                             #        0x6f5bb  0      
  subl $0x1, %eax                     #  3633  0x6f5bb  3      
  movl %edx, %edx                     #  3634  0x6f5be  2      
  movb $0x30, (%r15,%rdx,1)           #  3635  0x6f5c0  5      
  addl $0x1, %edx                     #  3636  0x6f5c5  3      
  cmpl $0xfffffffe, %eax              #  3637  0x6f5c8  5      
  jne .L_70aa0                        #  3638  0x6f5cd  6      
  leal 0x1(%rcx,%r8,1), %edx          #  3639  0x6f5d3  5      
  jmpq .L_6ef40                       #  3640  0x6f5d8  5      
  nop                                 #  3641  0x6f5dd  1      
.L_70ac0:                             #        0x6f5de  0      
  movsd 0xffb495a(%rip), %xmm0        #  3642  0x6f5de  8      
  movb $0x2d, 0xd8(%rsp)              #  3643  0x6f5e6  8      
  movsd 0x130(%rsp), %xmm1            #  3644  0x6f5ee  9      
  xorpd %xmm0, %xmm1                  #  3645  0x6f5f7  4      
  nop                                 #  3646  0x6f5fb  1      
  movsd %xmm1, 0xb8(%rsp)             #  3647  0x6f5fc  9      
  jmpq .L_6edc0                       #  3648  0x6f605  5      
  nop                                 #  3649  0x6f60a  1      
  nop                                 #  3650  0x6f60b  1      
.L_70b00:                             #        0x6f60c  0      
  movq 0xe0(%rsp), %rcx               #  3651  0x6f60c  8      
  movl %ecx, %ecx                     #  3652  0x6f614  2      
  movl (%r15,%rcx,1), %edx            #  3653  0x6f616  4      
  cmpl $0x2f, %edx                    #  3654  0x6f61a  3      
  ja .L_6ffe0                         #  3655  0x6f61d  6      
  movl %ecx, %ecx                     #  3656  0x6f623  2      
  movl 0xc(%r15,%rcx,1), %eax         #  3657  0x6f625  5      
  addl %edx, %eax                     #  3658  0x6f62a  2      
  addl $0x8, %edx                     #  3659  0x6f62c  3      
  movl %ecx, %ecx                     #  3660  0x6f62f  2      
  movl %edx, (%r15,%rcx,1)            #  3661  0x6f631  4      
  jmpq .L_6fba0                       #  3662  0x6f635  5      
  nop                                 #  3663  0x6f63a  1      
  nop                                 #  3664  0x6f63b  1      
.L_70b40:                             #        0x6f63c  0      
  testl %edx, %edx                    #  3665  0x6f63c  2      
  je .L_70f40                         #  3666  0x6f63e  6      
  leal 0x270(%rsp), %esi              #  3667  0x6f644  7      
  leaq 0x3(%rsi), %rax                #  3668  0x6f64b  4      
  leaq 0x2(%rsi), %rdx                #  3669  0x6f64f  4      
  nop                                 #  3670  0x6f653  1      
.L_70b60:                             #        0x6f654  0      
  addl $0x30, %ecx                    #  3671  0x6f654  3      
  movl %edx, %edx                     #  3672  0x6f657  2      
  movb %cl, (%r15,%rdx,1)             #  3673  0x6f659  4      
  jmpq .L_70560                       #  3674  0x6f65d  5      
  nop                                 #  3675  0x6f662  1      
  nop                                 #  3676  0x6f663  1      
.L_70b80:                             #        0x6f664  0      
  movq 0xe0(%rsp), %rsi               #  3677  0x6f664  8      
  movl %esi, %esi                     #  3678  0x6f66c  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3679  0x6f66e  5      
  leal 0x8(%rax), %edx                #  3680  0x6f673  3      
  movl %esi, %esi                     #  3681  0x6f676  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3682  0x6f678  5      
  jmpq .L_6ec60                       #  3683  0x6f67d  5      
  xchgw %ax, %ax                      #  3684  0x6f682  3      
.L_70ba0:                             #        0x6f685  0      
  movq 0xe0(%rsp), %rsi               #  3685  0x6f685  8      
  movl %esi, %esi                     #  3686  0x6f68d  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3687  0x6f68f  5      
  leal 0x8(%rax), %edx                #  3688  0x6f694  3      
  movl %esi, %esi                     #  3689  0x6f697  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3690  0x6f699  5      
  jmpq .L_6f1a0                       #  3691  0x6f69e  5      
  xchgw %ax, %ax                      #  3692  0x6f6a3  3      
.L_70bc0:                             #        0x6f6a6  0      
  movq 0xe0(%rsp), %rsi               #  3693  0x6f6a6  8      
  movl %esi, %esi                     #  3694  0x6f6ae  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3695  0x6f6b0  5      
  leal 0x8(%rax), %edx                #  3696  0x6f6b5  3      
  movl %esi, %esi                     #  3697  0x6f6b8  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3698  0x6f6ba  5      
  jmpq .L_701e0                       #  3699  0x6f6bf  5      
  xchgw %ax, %ax                      #  3700  0x6f6c4  3      
.L_70be0:                             #        0x6f6c7  0      
  movq 0xe0(%rsp), %rsi               #  3701  0x6f6c7  8      
  movl %esi, %esi                     #  3702  0x6f6cf  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3703  0x6f6d1  5      
  leal 0x8(%rax), %edx                #  3704  0x6f6d6  3      
  movl %esi, %esi                     #  3705  0x6f6d9  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3706  0x6f6db  5      
  jmpq .L_6f120                       #  3707  0x6f6e0  5      
  xchgw %ax, %ax                      #  3708  0x6f6e5  3      
.L_70c00:                             #        0x6f6e8  0      
  movq 0xe0(%rsp), %rsi               #  3709  0x6f6e8  8      
  movl %esi, %esi                     #  3710  0x6f6f0  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3711  0x6f6f2  5      
  leal 0x8(%rax), %edx                #  3712  0x6f6f7  3      
  movl %esi, %esi                     #  3713  0x6f6fa  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3714  0x6f6fc  5      
  jmpq .L_703a0                       #  3715  0x6f701  5      
  xchgw %ax, %ax                      #  3716  0x6f706  3      
.L_70c20:                             #        0x6f709  0      
  cmpl $0x0, 0x114(%rsp)              #  3717  0x6f709  8      
  jg .L_6e0c0                         #  3718  0x6f711  6      
  jmpq .L_6e360                       #  3719  0x6f717  5      
  nop                                 #  3720  0x6f71c  1      
.L_70c40:                             #        0x6f71d  0      
  movq 0xe0(%rsp), %rsi               #  3721  0x6f71d  8      
  movl %esi, %esi                     #  3722  0x6f725  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3723  0x6f727  5      
  leal 0x8(%rax), %edx                #  3724  0x6f72c  3      
  movl %esi, %esi                     #  3725  0x6f72f  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3726  0x6f731  5      
  jmpq .L_702a0                       #  3727  0x6f736  5      
  xchgw %ax, %ax                      #  3728  0x6f73b  3      
.L_70c60:                             #        0x6f73e  0      
  leal 0x1(%r10), %eax                #  3729  0x6f73e  4      
  movl $0x2, %esi                     #  3730  0x6f742  5      
  movl %eax, 0xc4(%rsp)               #  3731  0x6f747  7      
  jmpq .L_6ee20                       #  3732  0x6f74e  5      
  nop                                 #  3733  0x6f753  1      
.L_70c80:                             #        0x6f754  0      
  movl 0xc8(%rsp), %esi               #  3734  0x6f754  7      
  leal 0x220(%rsp), %edx              #  3735  0x6f75b  7      
  movl %r14d, %edi                    #  3736  0x6f762  3      
  nop                                 #  3737  0x6f765  1      
  callq .__ssprint_r                  #  3738  0x6f766  5      
  testl %eax, %eax                    #  3739  0x6f76b  2      
  jne .L_6d340                        #  3740  0x6f76d  6      
  leal 0x1e0(%rsp), %eax              #  3741  0x6f773  7      
  jmpq .L_6ff60                       #  3742  0x6f77a  5      
  nop                                 #  3743  0x6f77f  1      
.L_70cc0:                             #        0x6f780  0      
  testl %r10d, %r10d                  #  3744  0x6f780  3      
  je .L_70fe0                         #  3745  0x6f783  6      
  movl $0x1, %r11d                    #  3746  0x6f789  6      
  movq $0x0, 0xe8(%rsp)               #  3747  0x6f78f  12     
  jmpq .L_6ed80                       #  3748  0x6f79b  5      
.L_70ce0:                             #        0x6f7a0  0      
  movsd 0xffb4790(%rip), %xmm1        #  3749  0x6f7a0  8      
  ucomisd %xmm1, %xmm0                #  3750  0x6f7a8  4      
  jbe .L_70a60                        #  3751  0x6f7ac  6      
  nop                                 #  3752  0x6f7b2  1      
.L_70d00:                             #        0x6f7b3  0      
  leal 0xf(%rdi), %esi                #  3753  0x6f7b3  3      
  movl %eax, 0x27c(%rsp)              #  3754  0x6f7b6  7      
  movl %eax, %eax                     #  3755  0x6f7bd  2      
  movzbl (%r15,%rax,1), %ecx          #  3756  0x6f7bf  5      
  movl %esi, %esi                     #  3757  0x6f7c4  2      
  cmpb (%r15,%rsi,1), %cl             #  3758  0x6f7c6  4      
  jne .L_70d60                        #  3759  0x6f7ca  6      
  nop                                 #  3760  0x6f7d0  1      
.L_70d20:                             #        0x6f7d1  0      
  movl %eax, %eax                     #  3761  0x6f7d1  2      
  movb $0x30, (%r15,%rax,1)           #  3762  0x6f7d3  5      
  movl 0x27c(%rsp), %eax              #  3763  0x6f7d8  7      
  subl $0x1, %eax                     #  3764  0x6f7df  3      
  movl %eax, 0x27c(%rsp)              #  3765  0x6f7e2  7      
  movl %eax, %eax                     #  3766  0x6f7e9  2      
  movzbl (%r15,%rax,1), %ecx          #  3767  0x6f7eb  5      
  nop                                 #  3768  0x6f7f0  1      
  movl %esi, %esi                     #  3769  0x6f7f1  2      
  cmpb (%r15,%rsi,1), %cl             #  3770  0x6f7f3  4      
  je .L_70d20                         #  3771  0x6f7f7  6      
  nop                                 #  3772  0x6f7fd  1      
  nop                                 #  3773  0x6f7fe  1      
.L_70d60:                             #        0x6f7ff  0      
  cmpb $0x39, %cl                     #  3774  0x6f7ff  3      
  je .L_71100                         #  3775  0x6f802  6      
  addl $0x1, %ecx                     #  3776  0x6f808  3      
  nop                                 #  3777  0x6f80b  1      
  nop                                 #  3778  0x6f80c  1      
.L_70d80:                             #        0x6f80d  0      
  movl %eax, %eax                     #  3779  0x6f80d  2      
  movb %cl, (%r15,%rax,1)             #  3780  0x6f80f  4      
  jmpq .L_6ef40                       #  3781  0x6f813  5      
  nop                                 #  3782  0x6f818  1      
  nop                                 #  3783  0x6f819  1      
.L_70da0:                             #        0x6f81a  0      
  movq 0xc8(%rsp), %rbx               #  3784  0x6f81a  8      
  movl %ebx, %ebx                     #  3785  0x6f822  2      
  movzwl 0xc(%r15,%rbx,1), %eax       #  3786  0x6f824  6      
  orl $0x40, %eax                     #  3787  0x6f82a  3      
  movl %ebx, %ebx                     #  3788  0x6f82d  2      
  movw %ax, 0xc(%r15,%rbx,1)          #  3789  0x6f82f  6      
  jmpq .L_6d380                       #  3790  0x6f835  5      
.L_70dc0:                             #        0x6f83a  0      
  movl 0x114(%rsp), %eax              #  3791  0x6f83a  7      
  addl 0x12c(%rsp), %eax              #  3792  0x6f841  7      
  imull 0x140(%rsp), %eax             #  3793  0x6f848  8      
  movl %esi, 0x11c(%rsp)              #  3794  0x6f850  7      
  nop                                 #  3795  0x6f857  1      
  movq %r8, 0xf0(%rsp)                #  3796  0x6f858  8      
  addl %eax, 0xc4(%rsp)               #  3797  0x6f860  7      
  jmpq .L_70600                       #  3798  0x6f867  5      
  nop                                 #  3799  0x6f86c  1      
.L_70e00:                             #        0x6f86d  0      
  testl %ecx, %ecx                    #  3800  0x6f86d  2      
  movl $0x1, %eax                     #  3801  0x6f86f  5      
  jg .L_70e20                         #  3802  0x6f874  6      
  movb $0x2, %al                      #  3803  0x6f87a  2      
  subl %ecx, %eax                     #  3804  0x6f87c  2      
  nop                                 #  3805  0x6f87e  1      
  nop                                 #  3806  0x6f87f  1      
.L_70e20:                             #        0x6f880  0      
  addl 0x118(%rsp), %eax              #  3807  0x6f880  7      
  movl %eax, 0xc4(%rsp)               #  3808  0x6f887  7      
  jmpq .L_6efc0                       #  3809  0x6f88e  5      
  nop                                 #  3810  0x6f893  1      
.L_70e40:                             #        0x6f894  0      
  movl %ecx, 0xc4(%rsp)               #  3811  0x6f894  7      
  jmpq .L_6efc0                       #  3812  0x6f89b  5      
  nop                                 #  3813  0x6f8a0  1      
  nop                                 #  3814  0x6f8a1  1      
.L_70e60:                             #        0x6f8a2  0      
  movl 0x28c(%rsp), %ecx              #  3815  0x6f8a2  7      
  jmpq .L_70440                       #  3816  0x6f8a9  5      
  nop                                 #  3817  0x6f8ae  1      
  nop                                 #  3818  0x6f8af  1      
.L_70e80:                             #        0x6f8b0  0      
  testb $0x1, %r13b                   #  3819  0x6f8b0  4      
  je .L_705c0                         #  3820  0x6f8b4  6      
  jmpq .L_705a0                       #  3821  0x6f8ba  5      
  xchgw %ax, %ax                      #  3822  0x6f8bf  3      
  nop                                 #  3823  0x6f8c2  1      
.L_70ea0:                             #        0x6f8c3  0      
  leal 0x1(%r10), %esi                #  3824  0x6f8c3  4      
  movl %r14d, %edi                    #  3825  0x6f8c7  3      
  movl %r10d, 0x90(%rsp)              #  3826  0x6f8ca  8      
  nop                                 #  3827  0x6f8d2  1      
  callq ._malloc_r                    #  3828  0x6f8d3  5      
  movl %eax, %eax                     #  3829  0x6f8d8  2      
  movl 0x90(%rsp), %r10d              #  3830  0x6f8da  8      
  testq %rax, %rax                    #  3831  0x6f8e2  3      
  movq %rax, 0xe8(%rsp)               #  3832  0x6f8e5  8      
  je .L_711c0                         #  3833  0x6f8ed  6      
  nop                                 #  3834  0x6f8f3  1      
  cmpl $0x67, 0x100(%rsp)             #  3835  0x6f8f4  8      
  movq 0xe8(%rsp), %rdx               #  3836  0x6f8fc  8      
  movq %rdx, 0xb0(%rsp)               #  3837  0x6f904  8      
  sete %r11b                          #  3838  0x6f90c  4      
  nop                                 #  3839  0x6f910  1      
  cmpl $0x47, 0x100(%rsp)             #  3840  0x6f911  8      
  sete %al                            #  3841  0x6f919  3      
  orl %eax, %r11d                     #  3842  0x6f91c  3      
  jmpq .L_6ed80                       #  3843  0x6f91f  5      
  nop                                 #  3844  0x6f924  1      
.L_70f20:                             #        0x6f925  0      
  negl %ecx                           #  3845  0x6f925  2      
  movb $0x2d, 0x271(%rsp)             #  3846  0x6f927  8      
  jmpq .L_704a0                       #  3847  0x6f92f  5      
  xchgw %ax, %ax                      #  3848  0x6f934  3      
  nop                                 #  3849  0x6f937  1      
.L_70f40:                             #        0x6f938  0      
  leal 0x270(%rsp), %esi              #  3850  0x6f938  7      
  movb $0x30, 0x272(%rsp)             #  3851  0x6f93f  8      
  leaq 0x4(%rsi), %rax                #  3852  0x6f947  4      
  leaq 0x3(%rsi), %rdx                #  3853  0x6f94b  4      
  jmpq .L_70b60                       #  3854  0x6f94f  5      
  nop                                 #  3855  0x6f954  1      
.L_70f60:                             #        0x6f955  0      
  cmpl $0x67, 0x100(%rsp)             #  3856  0x6f955  8      
  movq $0x0, 0xe8(%rsp)               #  3857  0x6f95d  12     
  movl $0x6, %r10d                    #  3858  0x6f969  6      
  sete %r11b                          #  3859  0x6f96f  4      
  xchgw %ax, %ax                      #  3860  0x6f973  3      
  cmpl $0x47, 0x100(%rsp)             #  3861  0x6f976  8      
  sete %al                            #  3862  0x6f97e  3      
  orl %eax, %r11d                     #  3863  0x6f981  3      
  jmpq .L_6ed80                       #  3864  0x6f984  5      
  nop                                 #  3865  0x6f989  1      
.L_70fa0:                             #        0x6f98a  0      
  movq 0xe0(%rsp), %rsi               #  3866  0x6f98a  8      
  movl %esi, %esi                     #  3867  0x6f992  2      
  movl 0x8(%r15,%rsi,1), %eax         #  3868  0x6f994  5      
  leal 0x8(%rax), %edx                #  3869  0x6f999  3      
  movl %esi, %esi                     #  3870  0x6f99c  2      
  movl %edx, 0x8(%r15,%rsi,1)         #  3871  0x6f99e  5      
  jmpq .L_70240                       #  3872  0x6f9a3  5      
  xchgw %ax, %ax                      #  3873  0x6f9a8  3      
.L_70fc0:                             #        0x6f9ab  0      
  movl 0x28c(%rsp), %ecx              #  3874  0x6f9ab  7      
  movl $0x66, 0x100(%rsp)             #  3875  0x6f9b2  11     
  jmpq .L_70140                       #  3876  0x6f9bd  5      
  nop                                 #  3877  0x6f9c2  1      
.L_70fe0:                             #        0x6f9c3  0      
  movl $0x1, %r11d                    #  3878  0x6f9c3  6      
  movq $0x0, 0xe8(%rsp)               #  3879  0x6f9c9  12     
  movl $0x1, %r10d                    #  3880  0x6f9d5  6      
  jmpq .L_6ed80                       #  3881  0x6f9db  5      
  nop                                 #  3882  0x6f9e0  1      
.L_71000:                             #        0x6f9e1  0      
  xorpd %xmm1, %xmm1                  #  3883  0x6f9e1  4      
  movsd 0xb8(%rsp), %xmm0             #  3884  0x6f9e5  9      
  ucomisd %xmm1, %xmm0                #  3885  0x6f9ee  4      
  jne .L_71120                        #  3886  0x6f9f2  6      
  jp .L_71120                         #  3887  0x6f9f8  6      
  nop                                 #  3888  0x6f9fe  1      
  movl 0x28c(%rsp), %eax              #  3889  0x6f9ff  7      
  jmpq .L_6ef00                       #  3890  0x6fa06  5      
  nop                                 #  3891  0x6fa0b  1      
  nop                                 #  3892  0x6fa0c  1      
.L_71040:                             #        0x6fa0d  0      
  testl %r10d, %r10d                  #  3893  0x6fa0d  3      
  jne .L_71060                        #  3894  0x6fa10  6      
  testb $0x1, %r13b                   #  3895  0x6fa16  4      
  movl $0x1, 0xc4(%rsp)               #  3896  0x6fa1a  11     
  je .L_6efc0                         #  3897  0x6fa25  6      
  nop                                 #  3898  0x6fa2b  1      
.L_71060:                             #        0x6fa2c  0      
  addl $0x2, %r10d                    #  3899  0x6fa2c  4      
  movl %r10d, 0xc4(%rsp)              #  3900  0x6fa30  8      
  jmpq .L_6efc0                       #  3901  0x6fa38  5      
  nop                                 #  3902  0x6fa3d  1      
.L_71080:                             #        0x6fa3e  0      
  movq 0xe0(%rsp), %rax               #  3903  0x6fa3e  8      
  movl %eax, %eax                     #  3904  0x6fa46  2      
  movl (%r15,%rax,1), %ecx            #  3905  0x6fa48  4      
  cmpl $0x2f, %ecx                    #  3906  0x6fa4c  3      
  ja .L_71140                         #  3907  0x6fa4f  6      
  movq %rax, %rsi                     #  3908  0x6fa55  3      
  nop                                 #  3909  0x6fa58  1      
  movl %eax, %eax                     #  3910  0x6fa59  2      
  movl 0xc(%r15,%rax,1), %eax         #  3911  0x6fa5b  5      
  addl %ecx, %eax                     #  3912  0x6fa60  2      
  addl $0x8, %ecx                     #  3913  0x6fa62  3      
  movl %esi, %esi                     #  3914  0x6fa65  2      
  movl %ecx, (%r15,%rsi,1)            #  3915  0x6fa67  4      
  nop                                 #  3916  0x6fa6b  1      
.L_710c0:                             #        0x6fa6c  0      
  movl %eax, %eax                     #  3917  0x6fa6c  2      
  movl (%r15,%rax,1), %r10d           #  3918  0x6fa6e  4      
  testl %r10d, %r10d                  #  3919  0x6fa72  3      
  jns .L_6c660                        #  3920  0x6fa75  6      
  movl %r12d, %r12d                   #  3921  0x6fa7b  3      
  movzbl (%r15,%r12,1), %eax          #  3922  0x6fa7e  5      
  orl $0xffffffff, %r10d              #  3923  0x6fa83  7      
  jmpq .L_6be00                       #  3924  0x6fa8a  5      
.L_710e0:                             #        0x6fa8f  0      
  movq 0xc8(%rsp), %rdx               #  3925  0x6fa8f  8      
  movl %edx, %edx                     #  3926  0x6fa97  2      
  movzwl 0xc(%r15,%rdx,1), %eax       #  3927  0x6fa99  6      
  orl $0x40, %eax                     #  3928  0x6fa9f  3      
  movl %edx, %edx                     #  3929  0x6faa2  2      
  movw %ax, 0xc(%r15,%rdx,1)          #  3930  0x6faa4  6      
  jmpq .L_6d380                       #  3931  0x6faaa  5      
.L_71100:                             #        0x6faaf  0      
  movl %edi, %edi                     #  3932  0x6faaf  2      
  movzbl 0xa(%r15,%rdi,1), %ecx       #  3933  0x6fab1  6      
  jmpq .L_70d80                       #  3934  0x6fab7  5      
  nop                                 #  3935  0x6fabc  1      
  nop                                 #  3936  0x6fabd  1      
.L_71120:                             #        0x6fabe  0      
  movl $0x1, %eax                     #  3937  0x6fabe  5      
  subl 0xc4(%rsp), %eax               #  3938  0x6fac3  7      
  movl %eax, 0x28c(%rsp)              #  3939  0x6faca  7      
  jmpq .L_6ef00                       #  3940  0x6fad1  5      
  nop                                 #  3941  0x6fad6  1      
.L_71140:                             #        0x6fad7  0      
  movq 0xe0(%rsp), %rcx               #  3942  0x6fad7  8      
  movq 0xe0(%rsp), %rsi               #  3943  0x6fadf  8      
  movl %ecx, %ecx                     #  3944  0x6fae7  2      
  movl 0x8(%r15,%rcx,1), %eax         #  3945  0x6fae9  5      
  leal 0x8(%rax), %ecx                #  3946  0x6faee  3      
  nop                                 #  3947  0x6faf1  1      
  movl %esi, %esi                     #  3948  0x6faf2  2      
  movl %ecx, 0x8(%r15,%rsi,1)         #  3949  0x6faf4  5      
  jmpq .L_710c0                       #  3950  0x6faf9  5      
  nop                                 #  3951  0x6fafe  1      
  nop                                 #  3952  0x6faff  1      
.L_71180:                             #        0x6fb00  0      
  movl %r14d, %r14d                   #  3953  0x6fb00  3      
  movl $0xc, (%r15,%r14,1)            #  3954  0x6fb03  8      
  movl $0xffffffff, 0xd0(%rsp)        #  3955  0x6fb0b  11     
  jmpq .L_6d3a0                       #  3956  0x6fb16  5      
  nop                                 #  3957  0x6fb1b  1      
.L_711a0:                             #        0x6fb1c  0      
  movq 0xc8(%rsp), %rsi               #  3958  0x6fb1c  8      
  movl %esi, %esi                     #  3959  0x6fb24  2      
  movzwl 0xc(%r15,%rsi,1), %eax       #  3960  0x6fb26  6      
  orl $0x40, %eax                     #  3961  0x6fb2c  3      
  movl %esi, %esi                     #  3962  0x6fb2f  2      
  movw %ax, 0xc(%r15,%rsi,1)          #  3963  0x6fb31  6      
  jmpq .L_6d380                       #  3964  0x6fb37  5      
.L_711c0:                             #        0x6fb3c  0      
  movq 0xc8(%rsp), %rcx               #  3965  0x6fb3c  8      
  movl %ecx, %ecx                     #  3966  0x6fb44  2      
  movzwl 0xc(%r15,%rcx,1), %eax       #  3967  0x6fb46  6      
  orl $0x40, %eax                     #  3968  0x6fb4c  3      
  movl %ecx, %ecx                     #  3969  0x6fb4f  2      
  movw %ax, 0xc(%r15,%rcx,1)          #  3970  0x6fb51  6      
  jmpq .L_6d380                       #  3971  0x6fb57  5      
.L_711e0:                             #        0x6fb5c  0      
  movq %rcx, %rdx                     #  3972  0x6fb5c  3      
  jmpq .L_6ef40                       #  3973  0x6fb5f  5      
  nop                                 #  3974  0x6fb64  1      
  nop                                 #  3975  0x6fb65  1      
.L_71200:                             #        0x6fb66  0      
  leal 0x270(%rsp), %esi              #  3976  0x6fb66  7      
  leaq 0x2(%rsi), %rax                #  3977  0x6fb6d  4      
  jmpq .L_70560                       #  3978  0x6fb71  5      
  nop                                 #  3979  0x6fb76  1      
  nop                                 #  3980  0x6fb77  1      
  nop                                 #  3981  0x6fb78  1      
  nop                                 #  3982  0x6fb79  1      
  nop                                 #  3983  0x6fb7a  1      
  nop                                 #  3984  0x6fb7b  1      
  nop                                 #  3985  0x6fb7c  1      
  nop                                 #  3986  0x6fb7d  1      
  nop                                 #  3987  0x6fb7e  1      
  nop                                 #  3988  0x6fb7f  1      
  nop                                 #  3989  0x6fb80  1      
  nop                                 #  3990  0x6fb81  1      
  nop                                 #  3991  0x6fb82  1      
  nop                                 #  3992  0x6fb83  1      
  nop                                 #  3993  0x6fb84  1      
  nop                                 #  3994  0x6fb85  1      
                                                               
.size _svfprintf_r, .-_svfprintf_r

