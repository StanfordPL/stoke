  .text
  .globl d_encoding
  .type d_encoding, @function

#! file-offset 0x53840
#! rip-offset  0x53840
#! capacity    2944 bytes

# Text                                #  Line  RIP      Bytes  
.d_encoding:                          #        0x53840  0      
  movq %rbx, -0x20(%rsp)              #  1     0x53840  5      
  movl %edi, %ebx                     #  2     0x53845  2      
  movq %r13, -0x10(%rsp)              #  3     0x53847  5      
  movq %r12, -0x18(%rsp)              #  4     0x5384c  5      
  movq %r14, -0x8(%rsp)               #  5     0x53851  5      
  subl $0x38, %esp                    #  6     0x53856  3      
  addq %r15, %rsp                     #  7     0x53859  3      
  nop                                 #  8     0x5385c  1      
  movl %ebx, %ebx                     #  9     0x5385d  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x5385f  5      
  movl %esi, %r13d                    #  11    0x53864  3      
  movl %edx, %edx                     #  12    0x53867  2      
  movzbl (%r15,%rdx,1), %eax          #  13    0x53869  5      
  cmpb $0x54, %al                     #  14    0x5386e  2      
  je .L_53ac0                         #  15    0x53870  6      
  cmpb $0x47, %al                     #  16    0x53876  2      
  nop                                 #  17    0x53878  1      
  je .L_53ac0                         #  18    0x53879  6      
  movl %ebx, %edi                     #  19    0x5387f  2      
  nop                                 #  20    0x53881  1      
  nop                                 #  21    0x53882  1      
  callq .d_name                       #  22    0x53883  5      
  movl %eax, %r12d                    #  23    0x53888  3      
  testq %r12, %r12                    #  24    0x5388b  3      
  je .L_538c0                         #  25    0x5388e  6      
  testl %r13d, %r13d                  #  26    0x53894  3      
  jne .L_539c0                        #  27    0x53897  6      
  nop                                 #  28    0x5389d  1      
.L_538c0:                             #        0x5389e  0      
  movl %ebx, %ebx                     #  29    0x5389e  2      
  movl 0xc(%r15,%rbx,1), %eax         #  30    0x538a0  5      
  testq %r12, %r12                    #  31    0x538a5  3      
  movl %eax, %eax                     #  32    0x538a8  2      
  movzbl (%r15,%rax,1), %eax          #  33    0x538aa  5      
  je .L_53a80                         #  34    0x538af  6      
  testb %al, %al                      #  35    0x538b5  2      
  je .L_53a80                         #  36    0x538b7  6      
  nop                                 #  37    0x538bd  1      
  cmpb $0x45, %al                     #  38    0x538be  2      
  je .L_53a80                         #  39    0x538c0  6      
  movq %r12, %rax                     #  40    0x538c6  3      
  nop                                 #  41    0x538c9  1      
  nop                                 #  42    0x538ca  1      
.L_53900:                             #        0x538cb  0      
  movl %eax, %eax                     #  43    0x538cb  2      
  movl (%r15,%rax,1), %edx            #  44    0x538cd  4      
  cmpl $0x4, %edx                     #  45    0x538d1  3      
  je .L_53bc0                         #  46    0x538d4  6      
  jae .L_53b20                        #  47    0x538da  6      
  nop                                 #  48    0x538e0  1      
.L_53920:                             #        0x538e1  0      
  xorl %esi, %esi                     #  49    0x538e1  2      
  nop                                 #  50    0x538e3  1      
  nop                                 #  51    0x538e4  1      
.L_53940:                             #        0x538e5  0      
  movl %ebx, %edi                     #  52    0x538e5  2      
  nop                                 #  53    0x538e7  1      
  nop                                 #  54    0x538e8  1      
  callq .d_bare_function_type         #  55    0x538e9  5      
  movl %r12d, %edx                    #  56    0x538ee  3      
  movl %eax, %ecx                     #  57    0x538f1  2      
  movl $0x3, %esi                     #  58    0x538f3  5      
  nop                                 #  59    0x538f8  1      
  nop                                 #  60    0x538f9  1      
.L_53980:                             #        0x538fa  0      
  movl %ebx, %edi                     #  61    0x538fa  2      
  movq 0x20(%rsp), %r12               #  62    0x538fc  5      
  movq 0x18(%rsp), %rbx               #  63    0x53901  5      
  movq 0x28(%rsp), %r13               #  64    0x53906  5      
  movq 0x30(%rsp), %r14               #  65    0x5390b  5      
  addl $0x38, %esp                    #  66    0x53910  3      
  addq %r15, %rsp                     #  67    0x53913  3      
  nop                                 #  68    0x53916  1      
  jmpq .d_make_comp                   #  69    0x53917  5      
  nop                                 #  70    0x5391c  1      
  nop                                 #  71    0x5391d  1      
.L_539c0:                             #        0x5391e  0      
  movl %ebx, %ebx                     #  72    0x5391e  2      
  testb $0x1, 0x8(%r15,%rbx,1)        #  73    0x53920  6      
  jne .L_538c0                        #  74    0x53926  6      
  movl %r12d, %r12d                   #  75    0x5392c  3      
  movl (%r15,%r12,1), %eax            #  76    0x5392f  4      
  leal -0x1a(%rax), %edx              #  77    0x53933  3      
  cmpl $0x2, %edx                     #  78    0x53936  3      
  nop                                 #  79    0x53939  1      
  ja .L_53a20                         #  80    0x5393a  6      
  nop                                 #  81    0x53940  1      
  nop                                 #  82    0x53941  1      
.L_53a00:                             #        0x53942  0      
  movl %r12d, %r12d                   #  83    0x53942  3      
  movl 0x4(%r15,%r12,1), %r12d        #  84    0x53945  5      
  movl %r12d, %r12d                   #  85    0x5394a  3      
  movl (%r15,%r12,1), %eax            #  86    0x5394d  4      
  leal -0x1a(%rax), %edx              #  87    0x53951  3      
  cmpl $0x2, %edx                     #  88    0x53954  3      
  jbe .L_53a00                        #  89    0x53957  6      
  nop                                 #  90    0x5395d  1      
.L_53a20:                             #        0x5395e  0      
  cmpl $0x2, %eax                     #  91    0x5395e  3      
  jne .L_53a80                        #  92    0x53961  6      
  movl %r12d, %r12d                   #  93    0x53967  3      
  movl 0x8(%r15,%r12,1), %eax         #  94    0x5396a  5      
  movl %eax, %eax                     #  95    0x5396f  2      
  movl (%r15,%rax,1), %edx            #  96    0x53971  4      
  subl $0x1a, %edx                    #  97    0x53975  3      
  cmpl $0x2, %edx                     #  98    0x53978  3      
  ja .L_53a60                         #  99    0x5397b  6      
  nop                                 #  100   0x53981  1      
.L_53a40:                             #        0x53982  0      
  movl %eax, %eax                     #  101   0x53982  2      
  movl 0x4(%r15,%rax,1), %eax         #  102   0x53984  5      
  movl %eax, %eax                     #  103   0x53989  2      
  movl (%r15,%rax,1), %edx            #  104   0x5398b  4      
  subl $0x1a, %edx                    #  105   0x5398f  3      
  cmpl $0x2, %edx                     #  106   0x53992  3      
  jbe .L_53a40                        #  107   0x53995  6      
  nop                                 #  108   0x5399b  1      
.L_53a60:                             #        0x5399c  0      
  movl %r12d, %r12d                   #  109   0x5399c  3      
  movl %eax, 0x8(%r15,%r12,1)         #  110   0x5399f  5      
  nop                                 #  111   0x539a4  1      
  nop                                 #  112   0x539a5  1      
.L_53a80:                             #        0x539a6  0      
  movl %r12d, %eax                    #  113   0x539a6  3      
  movq 0x18(%rsp), %rbx               #  114   0x539a9  5      
  movq 0x20(%rsp), %r12               #  115   0x539ae  5      
  movq 0x28(%rsp), %r13               #  116   0x539b3  5      
  movq 0x30(%rsp), %r14               #  117   0x539b8  5      
  addl $0x38, %esp                    #  118   0x539bd  3      
  addq %r15, %rsp                     #  119   0x539c0  3      
  popq %r11                           #  120   0x539c3  3      
  nop                                 #  121   0x539c6  1      
  andl $0xffffffe0, %r11d             #  122   0x539c7  7      
  addq %r15, %r11                     #  123   0x539ce  3      
  jmpq %r11                           #  124   0x539d1  3      
  nop                                 #  125   0x539d4  1      
  nop                                 #  126   0x539d5  1      
.L_53ac0:                             #        0x539d6  0      
  movl %ebx, %ebx                     #  127   0x539d6  2      
  movl 0x30(%r15,%rbx,1), %ecx        #  128   0x539d8  5      
  addl $0x14, %ecx                    #  129   0x539dd  3      
  movl %ebx, %ebx                     #  130   0x539e0  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  131   0x539e2  5      
  movl %edx, %edx                     #  132   0x539e7  2      
  movzbl (%r15,%rdx,1), %eax          #  133   0x539e9  5      
  cmpb $0x54, %al                     #  134   0x539ee  2      
  je .L_53b60                         #  135   0x539f0  6      
  cmpb $0x47, %al                     #  136   0x539f6  2      
  je .L_53c60                         #  137   0x539f8  6      
  nop                                 #  138   0x539fe  1      
  nop                                 #  139   0x539ff  1      
.L_53b00:                             #        0x53a00  0      
  xorl %r12d, %r12d                   #  140   0x53a00  3      
  jmpq .L_53a80                       #  141   0x53a03  5      
  nop                                 #  142   0x53a08  1      
  nop                                 #  143   0x53a09  1      
.L_53b20:                             #        0x53a0a  0      
  subl $0x1a, %edx                    #  144   0x53a0a  3      
  cmpl $0x2, %edx                     #  145   0x53a0d  3      
  ja .L_53920                         #  146   0x53a10  6      
  movl %eax, %eax                     #  147   0x53a16  2      
  movl 0x4(%r15,%rax,1), %eax         #  148   0x53a18  5      
  testq %rax, %rax                    #  149   0x53a1d  3      
  jne .L_53900                        #  150   0x53a20  6      
  nop                                 #  151   0x53a26  1      
  jmpq .L_53920                       #  152   0x53a27  5      
  nop                                 #  153   0x53a2c  1      
  nop                                 #  154   0x53a2d  1      
.L_53b60:                             #        0x53a2e  0      
  addl $0x1, %edx                     #  155   0x53a2e  3      
  movl %ebx, %ebx                     #  156   0x53a31  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  157   0x53a33  5      
  movl %edx, %edx                     #  158   0x53a38  2      
  movzbl (%r15,%rdx,1), %eax          #  159   0x53a3a  5      
  testb %al, %al                      #  160   0x53a3f  2      
  je .L_53b00                         #  161   0x53a41  6      
  subl $0x43, %eax                    #  162   0x53a47  3      
  addl $0x1, %edx                     #  163   0x53a4a  3      
  cmpb $0x33, %al                     #  164   0x53a4d  2      
  nop                                 #  165   0x53a4f  1      
  movl %ebx, %ebx                     #  166   0x53a50  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  167   0x53a52  5      
  ja .L_53b00                         #  168   0x53a57  6      
  movzbl %al, %eax                    #  169   0x53a5d  3      
  movl %eax, %eax                     #  170   0x53a60  2      
  movq 0x10021ca0(%r15,%rax,8), %rax  #  171   0x53a62  8      
  nop                                 #  172   0x53a6a  1      
  andl $0xffffffe0, %eax              #  173   0x53a6b  5      
  addq %r15, %rax                     #  174   0x53a70  3      
  jmpq %rax                           #  175   0x53a73  2      
  nop                                 #  176   0x53a75  1      
  nop                                 #  177   0x53a76  1      
.L_53bc0:                             #        0x53a77  0      
  movl %eax, %eax                     #  178   0x53a77  2      
  movl 0x4(%r15,%rax,1), %eax         #  179   0x53a79  5      
  testq %rax, %rax                    #  180   0x53a7e  3      
  je .L_53c00                         #  181   0x53a81  6      
  movl $0x1, %esi                     #  182   0x53a87  5      
  movq $0x200000000180, %rdx          #  183   0x53a8c  10     
  nop                                 #  184   0x53a96  1      
.L_53be0:                             #        0x53a97  0      
  movl %eax, %eax                     #  185   0x53a97  2      
  cmpl $0x2d, (%r15,%rax,1)           #  186   0x53a99  5      
  jbe .L_53c20                        #  187   0x53a9e  6      
  nop                                 #  188   0x53aa4  1      
  nop                                 #  189   0x53aa5  1      
.L_53c00:                             #        0x53aa6  0      
  movl $0x1, %esi                     #  190   0x53aa6  5      
  jmpq .L_53940                       #  191   0x53aab  5      
  nop                                 #  192   0x53ab0  1      
  nop                                 #  193   0x53ab1  1      
.L_53c20:                             #        0x53ab2  0      
  movl %eax, %eax                     #  194   0x53ab2  2      
  movslq (%r15,%rax,1), %rcx          #  195   0x53ab4  4      
  movq %rsi, %rdi                     #  196   0x53ab8  3      
  shlq %cl, %rdi                      #  197   0x53abb  3      
  testq %rdx, %rdi                    #  198   0x53abe  3      
  movq %rdi, %rcx                     #  199   0x53ac1  3      
  jne .L_53920                        #  200   0x53ac4  6      
  andl $0x6, %ecx                     #  201   0x53aca  3      
  nop                                 #  202   0x53acd  1      
  je .L_53c00                         #  203   0x53ace  6      
  movl %eax, %eax                     #  204   0x53ad4  2      
  movl 0x8(%r15,%rax,1), %eax         #  205   0x53ad6  5      
  testq %rax, %rax                    #  206   0x53adb  3      
  jne .L_53be0                        #  207   0x53ade  6      
  jmpq .L_53c00                       #  208   0x53ae4  5      
  nop                                 #  209   0x53ae9  1      
  nop                                 #  210   0x53aea  1      
.L_53c60:                             #        0x53aeb  0      
  addl $0x1, %edx                     #  211   0x53aeb  3      
  movl %ebx, %ebx                     #  212   0x53aee  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  213   0x53af0  5      
  movl %edx, %edx                     #  214   0x53af5  2      
  movzbl (%r15,%rdx,1), %eax          #  215   0x53af7  5      
  testb %al, %al                      #  216   0x53afc  2      
  je .L_53b00                         #  217   0x53afe  6      
  addl $0x1, %edx                     #  218   0x53b04  3      
  cmpb $0x52, %al                     #  219   0x53b07  2      
  xchgw %ax, %ax                      #  220   0x53b09  3      
  movl %ebx, %ebx                     #  221   0x53b0c  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  222   0x53b0e  5      
  je .L_54040                         #  223   0x53b13  6      
  jg .L_54080                         #  224   0x53b19  6      
  cmpb $0x41, %al                     #  225   0x53b1f  2      
  jne .L_53b00                        #  226   0x53b21  6      
  xorl %esi, %esi                     #  227   0x53b27  2      
  movl %ebx, %edi                     #  228   0x53b29  2      
  nop                                 #  229   0x53b2b  1      
  nop                                 #  230   0x53b2c  1      
  nop                                 #  231   0x53b2d  1      
  callq .d_encoding                   #  232   0x53b2e  5      
  xorl %ecx, %ecx                     #  233   0x53b33  2      
  movl %eax, %edx                     #  234   0x53b35  2      
  movl $0x15, %esi                    #  235   0x53b37  5      
  jmpq .L_53980                       #  236   0x53b3c  5      
  nop                                 #  237   0x53b41  1      
  nop                                 #  238   0x53b42  1      
  movl $0x76, %esi                    #  239   0x53b43  5      
  movl %ebx, %edi                     #  240   0x53b48  2      
  nop                                 #  241   0x53b4a  1      
  nop                                 #  242   0x53b4b  1      
  callq .d_call_offset                #  243   0x53b4c  5      
  testl %eax, %eax                    #  244   0x53b51  2      
  je .L_53b00                         #  245   0x53b53  6      
  xorl %esi, %esi                     #  246   0x53b59  2      
  movl %ebx, %edi                     #  247   0x53b5b  2      
  nop                                 #  248   0x53b5d  1      
  callq .d_encoding                   #  249   0x53b5e  5      
  xorl %ecx, %ecx                     #  250   0x53b63  2      
  movl %eax, %edx                     #  251   0x53b65  2      
  movl $0x10, %esi                    #  252   0x53b67  5      
  jmpq .L_53980                       #  253   0x53b6c  5      
  nop                                 #  254   0x53b71  1      
  nop                                 #  255   0x53b72  1      
  movl $0x68, %esi                    #  256   0x53b73  5      
  movl %ebx, %edi                     #  257   0x53b78  2      
  nop                                 #  258   0x53b7a  1      
  nop                                 #  259   0x53b7b  1      
  callq .d_call_offset                #  260   0x53b7c  5      
  testl %eax, %eax                    #  261   0x53b81  2      
  je .L_53b00                         #  262   0x53b83  6      
  xorl %esi, %esi                     #  263   0x53b89  2      
  movl %ebx, %edi                     #  264   0x53b8b  2      
  nop                                 #  265   0x53b8d  1      
  callq .d_encoding                   #  266   0x53b8e  5      
  xorl %ecx, %ecx                     #  267   0x53b93  2      
  movl %eax, %edx                     #  268   0x53b95  2      
  movl $0xf, %esi                     #  269   0x53b97  5      
  jmpq .L_53980                       #  270   0x53b9c  5      
  nop                                 #  271   0x53ba1  1      
  nop                                 #  272   0x53ba2  1      
  xorl %esi, %esi                     #  273   0x53ba3  2      
  movl %ebx, %edi                     #  274   0x53ba5  2      
  nop                                 #  275   0x53ba7  1      
  nop                                 #  276   0x53ba8  1      
  callq .d_call_offset                #  277   0x53ba9  5      
  testl %eax, %eax                    #  278   0x53bae  2      
  je .L_53b00                         #  279   0x53bb0  6      
  xorl %esi, %esi                     #  280   0x53bb6  2      
  movl %ebx, %edi                     #  281   0x53bb8  2      
  nop                                 #  282   0x53bba  1      
  callq .d_call_offset                #  283   0x53bbb  5      
  testl %eax, %eax                    #  284   0x53bc0  2      
  je .L_53b00                         #  285   0x53bc2  6      
  xorl %esi, %esi                     #  286   0x53bc8  2      
  movl %ebx, %edi                     #  287   0x53bca  2      
  nop                                 #  288   0x53bcc  1      
  callq .d_encoding                   #  289   0x53bcd  5      
  xorl %ecx, %ecx                     #  290   0x53bd2  2      
  movl %eax, %edx                     #  291   0x53bd4  2      
  movl $0x11, %esi                    #  292   0x53bd6  5      
  jmpq .L_53980                       #  293   0x53bdb  5      
  nop                                 #  294   0x53be0  1      
  nop                                 #  295   0x53be1  1      
  subl $0x5, %ecx                     #  296   0x53be2  3      
  movl %ebx, %edi                     #  297   0x53be5  2      
  movl %ebx, %ebx                     #  298   0x53be7  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  299   0x53be9  5      
  nop                                 #  300   0x53bee  1      
  callq .d_type                       #  301   0x53bef  5      
  xorl %ecx, %ecx                     #  302   0x53bf4  2      
  movl %eax, %edx                     #  303   0x53bf6  2      
  movl $0x9, %esi                     #  304   0x53bf8  5      
  jmpq .L_53980                       #  305   0x53bfd  5      
  nop                                 #  306   0x53c02  1      
  nop                                 #  307   0x53c03  1      
  subl $0xa, %ecx                     #  308   0x53c04  3      
  movl %ebx, %edi                     #  309   0x53c07  2      
  movl %ebx, %ebx                     #  310   0x53c09  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  311   0x53c0b  5      
  nop                                 #  312   0x53c10  1      
  callq .d_type                       #  313   0x53c11  5      
  xorl %ecx, %ecx                     #  314   0x53c16  2      
  movl %eax, %edx                     #  315   0x53c18  2      
  movl $0xa, %esi                     #  316   0x53c1a  5      
  jmpq .L_53980                       #  317   0x53c1f  5      
  nop                                 #  318   0x53c24  1      
  nop                                 #  319   0x53c25  1      
  movl %ebx, %edi                     #  320   0x53c26  2      
  nop                                 #  321   0x53c28  1      
  nop                                 #  322   0x53c29  1      
  callq .d_type                       #  323   0x53c2a  5      
  xorl %ecx, %ecx                     #  324   0x53c2f  2      
  movl %eax, %edx                     #  325   0x53c31  2      
  movl $0xd, %esi                     #  326   0x53c33  5      
  jmpq .L_53980                       #  327   0x53c38  5      
  nop                                 #  328   0x53c3d  1      
  nop                                 #  329   0x53c3e  1      
  movl %ebx, %edi                     #  330   0x53c3f  2      
  nop                                 #  331   0x53c41  1      
  nop                                 #  332   0x53c42  1      
  callq .d_type                       #  333   0x53c43  5      
  xorl %ecx, %ecx                     #  334   0x53c48  2      
  movl %eax, %edx                     #  335   0x53c4a  2      
  movl $0x12, %esi                    #  336   0x53c4c  5      
  jmpq .L_53980                       #  337   0x53c51  5      
  nop                                 #  338   0x53c56  1      
  nop                                 #  339   0x53c57  1      
  movl %ebx, %edi                     #  340   0x53c58  2      
  nop                                 #  341   0x53c5a  1      
  nop                                 #  342   0x53c5b  1      
  callq .d_type                       #  343   0x53c5c  5      
  xorl %ecx, %ecx                     #  344   0x53c61  2      
  movl %eax, %edx                     #  345   0x53c63  2      
  movl $0xc, %esi                     #  346   0x53c65  5      
  jmpq .L_53980                       #  347   0x53c6a  5      
  nop                                 #  348   0x53c6f  1      
  nop                                 #  349   0x53c70  1      
  movl %ebx, %edi                     #  350   0x53c71  2      
  nop                                 #  351   0x53c73  1      
  nop                                 #  352   0x53c74  1      
  callq .d_type                       #  353   0x53c75  5      
  xorl %ecx, %ecx                     #  354   0x53c7a  2      
  movl %eax, %edx                     #  355   0x53c7c  2      
  movl $0xe, %esi                     #  356   0x53c7e  5      
  jmpq .L_53980                       #  357   0x53c83  5      
  nop                                 #  358   0x53c88  1      
  nop                                 #  359   0x53c89  1      
  movl %ebx, %edi                     #  360   0x53c8a  2      
  nop                                 #  361   0x53c8c  1      
  nop                                 #  362   0x53c8d  1      
  callq .d_type                       #  363   0x53c8e  5      
  movl %ebx, %edi                     #  364   0x53c93  2      
  movl %eax, %r12d                    #  365   0x53c95  3      
  nop                                 #  366   0x53c98  1      
  nop                                 #  367   0x53c99  1      
  callq .d_number                     #  368   0x53c9a  5      
  testl %eax, %eax                    #  369   0x53c9f  2      
  js .L_53b00                         #  370   0x53ca1  6      
  movl %ebx, %ebx                     #  371   0x53ca7  2      
  movl 0xc(%r15,%rbx,1), %eax         #  372   0x53ca9  5      
  movl %eax, %eax                     #  373   0x53cae  2      
  cmpb $0x5f, (%r15,%rax,1)           #  374   0x53cb0  5      
  jne .L_53b00                        #  375   0x53cb5  6      
  addl $0x1, %eax                     #  376   0x53cbb  3      
  nop                                 #  377   0x53cbe  1      
  movl %ebx, %edi                     #  378   0x53cbf  2      
  movl %ebx, %ebx                     #  379   0x53cc1  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  380   0x53cc3  5      
  nop                                 #  381   0x53cc8  1      
  nop                                 #  382   0x53cc9  1      
  callq .d_type                       #  383   0x53cca  5      
  movl %ebx, %ebx                     #  384   0x53ccf  2      
  addl $0x5, 0x30(%r15,%rbx,1)        #  385   0x53cd1  6      
  movl %eax, %edx                     #  386   0x53cd7  2      
  movl %r12d, %ecx                    #  387   0x53cd9  3      
  movl $0xb, %esi                     #  388   0x53cdc  5      
  jmpq .L_53980                       #  389   0x53ce1  5      
  nop                                 #  390   0x53ce6  1      
.L_54040:                             #        0x53ce7  0      
  movl %ebx, %edi                     #  391   0x53ce7  2      
  nop                                 #  392   0x53ce9  1      
  nop                                 #  393   0x53cea  1      
  callq .d_name                       #  394   0x53ceb  5      
  xorl %ecx, %ecx                     #  395   0x53cf0  2      
  movl %eax, %edx                     #  396   0x53cf2  2      
  movl $0x14, %esi                    #  397   0x53cf4  5      
  jmpq .L_53980                       #  398   0x53cf9  5      
  nop                                 #  399   0x53cfe  1      
  nop                                 #  400   0x53cff  1      
.L_54080:                             #        0x53d00  0      
  cmpb $0x56, %al                     #  401   0x53d00  2      
  je .L_54200                         #  402   0x53d02  6      
  cmpb $0x72, %al                     #  403   0x53d08  2      
  jne .L_53b00                        #  404   0x53d0a  6      
  movl %ebx, %edi                     #  405   0x53d10  2      
  nop                                 #  406   0x53d12  1      
  callq .d_number                     #  407   0x53d13  5      
  cmpl $0x1, %eax                     #  408   0x53d18  3      
  jle .L_53b00                        #  409   0x53d1b  6      
  movl %ebx, %ebx                     #  410   0x53d21  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  411   0x53d23  5      
  movl %r12d, %r12d                   #  412   0x53d28  3      
  movzbl (%r15,%r12,1), %edx          #  413   0x53d2b  5      
  testb %dl, %dl                      #  414   0x53d30  2      
  je .L_53b00                         #  415   0x53d32  6      
  addl $0x1, %r12d                    #  416   0x53d38  4      
  cmpb $0x5f, %dl                     #  417   0x53d3c  3      
  movl %ebx, %ebx                     #  418   0x53d3f  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  419   0x53d41  5      
  jne .L_53b00                        #  420   0x53d46  6      
  leal -0x1(%rax), %r13d              #  421   0x53d4c  4      
  xorl %r14d, %r14d                   #  422   0x53d50  3      
  nop                                 #  423   0x53d53  1      
.L_540e0:                             #        0x53d54  0      
  movl %r12d, %r12d                   #  424   0x53d54  3      
  movzbl (%r15,%r12,1), %eax          #  425   0x53d57  5      
  testb %al, %al                      #  426   0x53d5c  2      
  je .L_53b00                         #  427   0x53d5e  6      
  cmpb $0x24, %al                     #  428   0x53d64  2      
  je .L_54240                         #  429   0x53d66  6      
  movl %r12d, %eax                    #  430   0x53d6c  3      
  xorl %r8d, %r8d                     #  431   0x53d6f  3      
  xchgw %ax, %ax                      #  432   0x53d72  3      
  jmpq .L_54140                       #  433   0x53d75  5      
  nop                                 #  434   0x53d7a  1      
  nop                                 #  435   0x53d7b  1      
.L_54120:                             #        0x53d7c  0      
  movl %eax, %edx                     #  436   0x53d7c  2      
  addl $0x1, %eax                     #  437   0x53d7e  3      
  movl %edx, %edx                     #  438   0x53d81  2      
  movzbl 0x1(%r15,%rdx,1), %edx       #  439   0x53d83  6      
  testb %dl, %dl                      #  440   0x53d89  2      
  je .L_54160                         #  441   0x53d8b  6      
  cmpb $0x24, %dl                     #  442   0x53d91  3      
  je .L_54160                         #  443   0x53d94  6      
  nop                                 #  444   0x53d9a  1      
.L_54140:                             #        0x53d9b  0      
  addl $0x1, %r8d                     #  445   0x53d9b  4      
  cmpl %r13d, %r8d                    #  446   0x53d9f  3      
  jl .L_54120                         #  447   0x53da2  6      
  nop                                 #  448   0x53da8  1      
  nop                                 #  449   0x53da9  1      
.L_54160:                             #        0x53daa  0      
  movl %r8d, %edx                     #  450   0x53daa  3      
  movl %r12d, %esi                    #  451   0x53dad  3      
  movl %ebx, %edi                     #  452   0x53db0  2      
  movl %r8d, 0x8(%rsp)                #  453   0x53db2  5      
  nop                                 #  454   0x53db7  1      
  callq .d_make_name                  #  455   0x53db8  5      
  movl %ebx, %ebx                     #  456   0x53dbd  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  457   0x53dbf  5      
  movl 0x8(%rsp), %r8d                #  458   0x53dc4  5      
  movl %eax, %edx                     #  459   0x53dc9  2      
  addl %r8d, %r12d                    #  460   0x53dcb  3      
  testq %rdx, %rdx                    #  461   0x53dce  3      
  movl %ebx, %ebx                     #  462   0x53dd1  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  463   0x53dd3  5      
  nop                                 #  464   0x53dd8  1      
  je .L_53b00                         #  465   0x53dd9  6      
  subl %r8d, %r13d                    #  466   0x53ddf  3      
  nop                                 #  467   0x53de2  1      
  nop                                 #  468   0x53de3  1      
.L_541c0:                             #        0x53de4  0      
  testq %r14, %r14                    #  469   0x53de4  3      
  jne .L_54320                        #  470   0x53de7  6      
  nop                                 #  471   0x53ded  1      
  nop                                 #  472   0x53dee  1      
.L_541e0:                             #        0x53def  0      
  testl %r13d, %r13d                  #  473   0x53def  3      
  jle .L_54300                        #  474   0x53df2  6      
  movq %rdx, %r14                     #  475   0x53df8  3      
  jmpq .L_540e0                       #  476   0x53dfb  5      
  nop                                 #  477   0x53e00  1      
.L_54200:                             #        0x53e01  0      
  movl %ebx, %edi                     #  478   0x53e01  2      
  nop                                 #  479   0x53e03  1      
  nop                                 #  480   0x53e04  1      
  callq .d_name                       #  481   0x53e05  5      
  xorl %ecx, %ecx                     #  482   0x53e0a  2      
  movl %eax, %edx                     #  483   0x53e0c  2      
  movl $0x13, %esi                    #  484   0x53e0e  5      
  jmpq .L_53980                       #  485   0x53e13  5      
  nop                                 #  486   0x53e18  1      
  nop                                 #  487   0x53e19  1      
.L_54240:                             #        0x53e1a  0      
  movl %r12d, %r12d                   #  488   0x53e1a  3      
  movzbl 0x1(%r15,%r12,1), %eax       #  489   0x53e1d  6      
  cmpb $0x53, %al                     #  490   0x53e23  2      
  je .L_543a0                         #  491   0x53e25  6      
  cmpb $0x5f, %al                     #  492   0x53e2b  2      
  je .L_54380                         #  493   0x53e2d  6      
  cmpb $0x24, %al                     #  494   0x53e33  2      
  nop                                 #  495   0x53e35  1      
  jne .L_53b00                        #  496   0x53e36  6      
  movl $0x24, %eax                    #  497   0x53e3c  5      
  nop                                 #  498   0x53e41  1      
  nop                                 #  499   0x53e42  1      
.L_54280:                             #        0x53e43  0      
  movl %ebx, %ebx                     #  500   0x53e43  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  501   0x53e45  5      
  movl %ebx, %ebx                     #  502   0x53e4a  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  503   0x53e4c  5      
  jge .L_54360                        #  504   0x53e51  6      
  imull $0xc, %ecx, %edx              #  505   0x53e57  3      
  movl %ebx, %ebx                     #  506   0x53e5a  2      
  addl 0x10(%r15,%rbx,1), %edx        #  507   0x53e5c  5      
  xchgw %ax, %ax                      #  508   0x53e61  3      
  addl $0x1, %ecx                     #  509   0x53e64  3      
  movl %ebx, %ebx                     #  510   0x53e67  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  511   0x53e69  5      
  testq %rdx, %rdx                    #  512   0x53e6e  3      
  je .L_54360                         #  513   0x53e71  6      
  movl %edx, %edx                     #  514   0x53e77  2      
  movl %eax, 0x4(%r15,%rdx,1)         #  515   0x53e79  5      
  nop                                 #  516   0x53e7e  1      
  movl %ebx, %ebx                     #  517   0x53e7f  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  518   0x53e81  5      
  subl $0x2, %r13d                    #  519   0x53e86  4      
  movl %edx, %edx                     #  520   0x53e8a  2      
  movl $0x38, (%r15,%rdx,1)           #  521   0x53e8c  8      
  addl $0x2, %r12d                    #  522   0x53e94  4      
  movl %ebx, %ebx                     #  523   0x53e98  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  524   0x53e9a  5      
  jmpq .L_541c0                       #  525   0x53e9f  5      
  nop                                 #  526   0x53ea4  1      
  nop                                 #  527   0x53ea5  1      
.L_54300:                             #        0x53ea6  0      
  xorl %ecx, %ecx                     #  528   0x53ea6  2      
  movl $0x36, %esi                    #  529   0x53ea8  5      
  jmpq .L_53980                       #  530   0x53ead  5      
  nop                                 #  531   0x53eb2  1      
  nop                                 #  532   0x53eb3  1      
.L_54320:                             #        0x53eb4  0      
  movl %edx, %ecx                     #  533   0x53eb4  2      
  movl $0x37, %esi                    #  534   0x53eb6  5      
  movl %r14d, %edx                    #  535   0x53ebb  3      
  movl %ebx, %edi                     #  536   0x53ebe  2      
  nop                                 #  537   0x53ec0  1      
  callq .d_make_comp                  #  538   0x53ec1  5      
  movl %eax, %edx                     #  539   0x53ec6  2      
  testq %rdx, %rdx                    #  540   0x53ec8  3      
  jne .L_541e0                        #  541   0x53ecb  6      
  jmpq .L_53b00                       #  542   0x53ed1  5      
  nop                                 #  543   0x53ed6  1      
  nop                                 #  544   0x53ed7  1      
.L_54360:                             #        0x53ed8  0      
  movl %ebx, %ebx                     #  545   0x53ed8  2      
  addl $0x2, 0xc(%r15,%rbx,1)         #  546   0x53eda  6      
  xorl %r12d, %r12d                   #  547   0x53ee0  3      
  jmpq .L_53a80                       #  548   0x53ee3  5      
  nop                                 #  549   0x53ee8  1      
  nop                                 #  550   0x53ee9  1      
.L_54380:                             #        0x53eea  0      
  movl $0x2e, %eax                    #  551   0x53eea  5      
  jmpq .L_54280                       #  552   0x53eef  5      
  nop                                 #  553   0x53ef4  1      
  nop                                 #  554   0x53ef5  1      
.L_543a0:                             #        0x53ef6  0      
  movl $0x2f, %eax                    #  555   0x53ef6  5      
  jmpq .L_54280                       #  556   0x53efb  5      
  nop                                 #  557   0x53f00  1      
  nop                                 #  558   0x53f01  1      
                                                               
.size d_encoding, .-d_encoding

