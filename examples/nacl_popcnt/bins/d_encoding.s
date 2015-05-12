  .text
  .globl d_encoding
  .type d_encoding, @function

#! file-offset 0x53860
#! rip-offset  0x53860
#! capacity    2944 bytes

# Text                                #  Line  RIP      Bytes  
.d_encoding:                          #        0x53860  0      
  movq %rbx, -0x20(%rsp)              #  1     0x53860  5      
  movl %edi, %ebx                     #  2     0x53865  2      
  movq %r13, -0x10(%rsp)              #  3     0x53867  5      
  movq %r12, -0x18(%rsp)              #  4     0x5386c  5      
  movq %r14, -0x8(%rsp)               #  5     0x53871  5      
  subl $0x38, %esp                    #  6     0x53876  3      
  addq %r15, %rsp                     #  7     0x53879  3      
  nop                                 #  8     0x5387c  1      
  movl %ebx, %ebx                     #  9     0x5387d  2      
  movl 0xc(%r15,%rbx,1), %edx         #  10    0x5387f  5      
  movl %esi, %r13d                    #  11    0x53884  3      
  movl %edx, %edx                     #  12    0x53887  2      
  movzbl (%r15,%rdx,1), %eax          #  13    0x53889  5      
  cmpb $0x54, %al                     #  14    0x5388e  2      
  je .L_53ae0                         #  15    0x53890  6      
  cmpb $0x47, %al                     #  16    0x53896  2      
  nop                                 #  17    0x53898  1      
  je .L_53ae0                         #  18    0x53899  6      
  movl %ebx, %edi                     #  19    0x5389f  2      
  nop                                 #  20    0x538a1  1      
  nop                                 #  21    0x538a2  1      
  callq .d_name                       #  22    0x538a3  5      
  movl %eax, %r12d                    #  23    0x538a8  3      
  testq %r12, %r12                    #  24    0x538ab  3      
  je .L_538e0                         #  25    0x538ae  6      
  testl %r13d, %r13d                  #  26    0x538b4  3      
  jne .L_539e0                        #  27    0x538b7  6      
  nop                                 #  28    0x538bd  1      
.L_538e0:                             #        0x538be  0      
  movl %ebx, %ebx                     #  29    0x538be  2      
  movl 0xc(%r15,%rbx,1), %eax         #  30    0x538c0  5      
  testq %r12, %r12                    #  31    0x538c5  3      
  movl %eax, %eax                     #  32    0x538c8  2      
  movzbl (%r15,%rax,1), %eax          #  33    0x538ca  5      
  je .L_53aa0                         #  34    0x538cf  6      
  testb %al, %al                      #  35    0x538d5  2      
  je .L_53aa0                         #  36    0x538d7  6      
  nop                                 #  37    0x538dd  1      
  cmpb $0x45, %al                     #  38    0x538de  2      
  je .L_53aa0                         #  39    0x538e0  6      
  movq %r12, %rax                     #  40    0x538e6  3      
  nop                                 #  41    0x538e9  1      
  nop                                 #  42    0x538ea  1      
.L_53920:                             #        0x538eb  0      
  movl %eax, %eax                     #  43    0x538eb  2      
  movl (%r15,%rax,1), %edx            #  44    0x538ed  4      
  cmpl $0x4, %edx                     #  45    0x538f1  3      
  je .L_53be0                         #  46    0x538f4  6      
  jae .L_53b40                        #  47    0x538fa  6      
  nop                                 #  48    0x53900  1      
.L_53940:                             #        0x53901  0      
  xorl %esi, %esi                     #  49    0x53901  2      
  nop                                 #  50    0x53903  1      
  nop                                 #  51    0x53904  1      
.L_53960:                             #        0x53905  0      
  movl %ebx, %edi                     #  52    0x53905  2      
  nop                                 #  53    0x53907  1      
  nop                                 #  54    0x53908  1      
  callq .d_bare_function_type         #  55    0x53909  5      
  movl %r12d, %edx                    #  56    0x5390e  3      
  movl %eax, %ecx                     #  57    0x53911  2      
  movl $0x3, %esi                     #  58    0x53913  5      
  nop                                 #  59    0x53918  1      
  nop                                 #  60    0x53919  1      
.L_539a0:                             #        0x5391a  0      
  movl %ebx, %edi                     #  61    0x5391a  2      
  movq 0x20(%rsp), %r12               #  62    0x5391c  5      
  movq 0x18(%rsp), %rbx               #  63    0x53921  5      
  movq 0x28(%rsp), %r13               #  64    0x53926  5      
  movq 0x30(%rsp), %r14               #  65    0x5392b  5      
  addl $0x38, %esp                    #  66    0x53930  3      
  addq %r15, %rsp                     #  67    0x53933  3      
  nop                                 #  68    0x53936  1      
  jmpq .d_make_comp                   #  69    0x53937  5      
  nop                                 #  70    0x5393c  1      
  nop                                 #  71    0x5393d  1      
.L_539e0:                             #        0x5393e  0      
  movl %ebx, %ebx                     #  72    0x5393e  2      
  testb $0x1, 0x8(%r15,%rbx,1)        #  73    0x53940  6      
  jne .L_538e0                        #  74    0x53946  6      
  movl %r12d, %r12d                   #  75    0x5394c  3      
  movl (%r15,%r12,1), %eax            #  76    0x5394f  4      
  leal -0x1a(%rax), %edx              #  77    0x53953  3      
  cmpl $0x2, %edx                     #  78    0x53956  3      
  nop                                 #  79    0x53959  1      
  ja .L_53a40                         #  80    0x5395a  6      
  nop                                 #  81    0x53960  1      
  nop                                 #  82    0x53961  1      
.L_53a20:                             #        0x53962  0      
  movl %r12d, %r12d                   #  83    0x53962  3      
  movl 0x4(%r15,%r12,1), %r12d        #  84    0x53965  5      
  movl %r12d, %r12d                   #  85    0x5396a  3      
  movl (%r15,%r12,1), %eax            #  86    0x5396d  4      
  leal -0x1a(%rax), %edx              #  87    0x53971  3      
  cmpl $0x2, %edx                     #  88    0x53974  3      
  jbe .L_53a20                        #  89    0x53977  6      
  nop                                 #  90    0x5397d  1      
.L_53a40:                             #        0x5397e  0      
  cmpl $0x2, %eax                     #  91    0x5397e  3      
  jne .L_53aa0                        #  92    0x53981  6      
  movl %r12d, %r12d                   #  93    0x53987  3      
  movl 0x8(%r15,%r12,1), %eax         #  94    0x5398a  5      
  movl %eax, %eax                     #  95    0x5398f  2      
  movl (%r15,%rax,1), %edx            #  96    0x53991  4      
  subl $0x1a, %edx                    #  97    0x53995  3      
  cmpl $0x2, %edx                     #  98    0x53998  3      
  ja .L_53a80                         #  99    0x5399b  6      
  nop                                 #  100   0x539a1  1      
.L_53a60:                             #        0x539a2  0      
  movl %eax, %eax                     #  101   0x539a2  2      
  movl 0x4(%r15,%rax,1), %eax         #  102   0x539a4  5      
  movl %eax, %eax                     #  103   0x539a9  2      
  movl (%r15,%rax,1), %edx            #  104   0x539ab  4      
  subl $0x1a, %edx                    #  105   0x539af  3      
  cmpl $0x2, %edx                     #  106   0x539b2  3      
  jbe .L_53a60                        #  107   0x539b5  6      
  nop                                 #  108   0x539bb  1      
.L_53a80:                             #        0x539bc  0      
  movl %r12d, %r12d                   #  109   0x539bc  3      
  movl %eax, 0x8(%r15,%r12,1)         #  110   0x539bf  5      
  nop                                 #  111   0x539c4  1      
  nop                                 #  112   0x539c5  1      
.L_53aa0:                             #        0x539c6  0      
  movl %r12d, %eax                    #  113   0x539c6  3      
  movq 0x18(%rsp), %rbx               #  114   0x539c9  5      
  movq 0x20(%rsp), %r12               #  115   0x539ce  5      
  movq 0x28(%rsp), %r13               #  116   0x539d3  5      
  movq 0x30(%rsp), %r14               #  117   0x539d8  5      
  addl $0x38, %esp                    #  118   0x539dd  3      
  addq %r15, %rsp                     #  119   0x539e0  3      
  popq %r11                           #  120   0x539e3  3      
  nop                                 #  121   0x539e6  1      
  andl $0xffffffe0, %r11d             #  122   0x539e7  7      
  addq %r15, %r11                     #  123   0x539ee  3      
  jmpq %r11                           #  124   0x539f1  3      
  nop                                 #  125   0x539f4  1      
  nop                                 #  126   0x539f5  1      
.L_53ae0:                             #        0x539f6  0      
  movl %ebx, %ebx                     #  127   0x539f6  2      
  movl 0x30(%r15,%rbx,1), %ecx        #  128   0x539f8  5      
  addl $0x14, %ecx                    #  129   0x539fd  3      
  movl %ebx, %ebx                     #  130   0x53a00  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  131   0x53a02  5      
  movl %edx, %edx                     #  132   0x53a07  2      
  movzbl (%r15,%rdx,1), %eax          #  133   0x53a09  5      
  cmpb $0x54, %al                     #  134   0x53a0e  2      
  je .L_53b80                         #  135   0x53a10  6      
  cmpb $0x47, %al                     #  136   0x53a16  2      
  je .L_53c80                         #  137   0x53a18  6      
  nop                                 #  138   0x53a1e  1      
  nop                                 #  139   0x53a1f  1      
.L_53b20:                             #        0x53a20  0      
  xorl %r12d, %r12d                   #  140   0x53a20  3      
  jmpq .L_53aa0                       #  141   0x53a23  5      
  nop                                 #  142   0x53a28  1      
  nop                                 #  143   0x53a29  1      
.L_53b40:                             #        0x53a2a  0      
  subl $0x1a, %edx                    #  144   0x53a2a  3      
  cmpl $0x2, %edx                     #  145   0x53a2d  3      
  ja .L_53940                         #  146   0x53a30  6      
  movl %eax, %eax                     #  147   0x53a36  2      
  movl 0x4(%r15,%rax,1), %eax         #  148   0x53a38  5      
  testq %rax, %rax                    #  149   0x53a3d  3      
  jne .L_53920                        #  150   0x53a40  6      
  nop                                 #  151   0x53a46  1      
  jmpq .L_53940                       #  152   0x53a47  5      
  nop                                 #  153   0x53a4c  1      
  nop                                 #  154   0x53a4d  1      
.L_53b80:                             #        0x53a4e  0      
  addl $0x1, %edx                     #  155   0x53a4e  3      
  movl %ebx, %ebx                     #  156   0x53a51  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  157   0x53a53  5      
  movl %edx, %edx                     #  158   0x53a58  2      
  movzbl (%r15,%rdx,1), %eax          #  159   0x53a5a  5      
  testb %al, %al                      #  160   0x53a5f  2      
  je .L_53b20                         #  161   0x53a61  6      
  subl $0x43, %eax                    #  162   0x53a67  3      
  addl $0x1, %edx                     #  163   0x53a6a  3      
  cmpb $0x33, %al                     #  164   0x53a6d  2      
  nop                                 #  165   0x53a6f  1      
  movl %ebx, %ebx                     #  166   0x53a70  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  167   0x53a72  5      
  ja .L_53b20                         #  168   0x53a77  6      
  movzbl %al, %eax                    #  169   0x53a7d  3      
  movl %eax, %eax                     #  170   0x53a80  2      
  movq 0x10021ca0(%r15,%rax,8), %rax  #  171   0x53a82  8      
  nop                                 #  172   0x53a8a  1      
  andl $0xffffffe0, %eax              #  173   0x53a8b  5      
  addq %r15, %rax                     #  174   0x53a90  3      
  jmpq %rax                           #  175   0x53a93  2      
  nop                                 #  176   0x53a95  1      
  nop                                 #  177   0x53a96  1      
.L_53be0:                             #        0x53a97  0      
  movl %eax, %eax                     #  178   0x53a97  2      
  movl 0x4(%r15,%rax,1), %eax         #  179   0x53a99  5      
  testq %rax, %rax                    #  180   0x53a9e  3      
  je .L_53c20                         #  181   0x53aa1  6      
  movl $0x1, %esi                     #  182   0x53aa7  5      
  movq $0x200000000180, %rdx          #  183   0x53aac  10     
  nop                                 #  184   0x53ab6  1      
.L_53c00:                             #        0x53ab7  0      
  movl %eax, %eax                     #  185   0x53ab7  2      
  cmpl $0x2d, (%r15,%rax,1)           #  186   0x53ab9  5      
  jbe .L_53c40                        #  187   0x53abe  6      
  nop                                 #  188   0x53ac4  1      
  nop                                 #  189   0x53ac5  1      
.L_53c20:                             #        0x53ac6  0      
  movl $0x1, %esi                     #  190   0x53ac6  5      
  jmpq .L_53960                       #  191   0x53acb  5      
  nop                                 #  192   0x53ad0  1      
  nop                                 #  193   0x53ad1  1      
.L_53c40:                             #        0x53ad2  0      
  movl %eax, %eax                     #  194   0x53ad2  2      
  movslq (%r15,%rax,1), %rcx          #  195   0x53ad4  4      
  movq %rsi, %rdi                     #  196   0x53ad8  3      
  shlq %cl, %rdi                      #  197   0x53adb  3      
  testq %rdx, %rdi                    #  198   0x53ade  3      
  movq %rdi, %rcx                     #  199   0x53ae1  3      
  jne .L_53940                        #  200   0x53ae4  6      
  andl $0x6, %ecx                     #  201   0x53aea  3      
  nop                                 #  202   0x53aed  1      
  je .L_53c20                         #  203   0x53aee  6      
  movl %eax, %eax                     #  204   0x53af4  2      
  movl 0x8(%r15,%rax,1), %eax         #  205   0x53af6  5      
  testq %rax, %rax                    #  206   0x53afb  3      
  jne .L_53c00                        #  207   0x53afe  6      
  jmpq .L_53c20                       #  208   0x53b04  5      
  nop                                 #  209   0x53b09  1      
  nop                                 #  210   0x53b0a  1      
.L_53c80:                             #        0x53b0b  0      
  addl $0x1, %edx                     #  211   0x53b0b  3      
  movl %ebx, %ebx                     #  212   0x53b0e  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  213   0x53b10  5      
  movl %edx, %edx                     #  214   0x53b15  2      
  movzbl (%r15,%rdx,1), %eax          #  215   0x53b17  5      
  testb %al, %al                      #  216   0x53b1c  2      
  je .L_53b20                         #  217   0x53b1e  6      
  addl $0x1, %edx                     #  218   0x53b24  3      
  cmpb $0x52, %al                     #  219   0x53b27  2      
  xchgw %ax, %ax                      #  220   0x53b29  3      
  movl %ebx, %ebx                     #  221   0x53b2c  2      
  movl %edx, 0xc(%r15,%rbx,1)         #  222   0x53b2e  5      
  je .L_54060                         #  223   0x53b33  6      
  jg .L_540a0                         #  224   0x53b39  6      
  cmpb $0x41, %al                     #  225   0x53b3f  2      
  jne .L_53b20                        #  226   0x53b41  6      
  xorl %esi, %esi                     #  227   0x53b47  2      
  movl %ebx, %edi                     #  228   0x53b49  2      
  nop                                 #  229   0x53b4b  1      
  nop                                 #  230   0x53b4c  1      
  nop                                 #  231   0x53b4d  1      
  callq .d_encoding                   #  232   0x53b4e  5      
  xorl %ecx, %ecx                     #  233   0x53b53  2      
  movl %eax, %edx                     #  234   0x53b55  2      
  movl $0x15, %esi                    #  235   0x53b57  5      
  jmpq .L_539a0                       #  236   0x53b5c  5      
  nop                                 #  237   0x53b61  1      
  nop                                 #  238   0x53b62  1      
  movl $0x76, %esi                    #  239   0x53b63  5      
  movl %ebx, %edi                     #  240   0x53b68  2      
  nop                                 #  241   0x53b6a  1      
  nop                                 #  242   0x53b6b  1      
  callq .d_call_offset                #  243   0x53b6c  5      
  testl %eax, %eax                    #  244   0x53b71  2      
  je .L_53b20                         #  245   0x53b73  6      
  xorl %esi, %esi                     #  246   0x53b79  2      
  movl %ebx, %edi                     #  247   0x53b7b  2      
  nop                                 #  248   0x53b7d  1      
  callq .d_encoding                   #  249   0x53b7e  5      
  xorl %ecx, %ecx                     #  250   0x53b83  2      
  movl %eax, %edx                     #  251   0x53b85  2      
  movl $0x10, %esi                    #  252   0x53b87  5      
  jmpq .L_539a0                       #  253   0x53b8c  5      
  nop                                 #  254   0x53b91  1      
  nop                                 #  255   0x53b92  1      
  movl $0x68, %esi                    #  256   0x53b93  5      
  movl %ebx, %edi                     #  257   0x53b98  2      
  nop                                 #  258   0x53b9a  1      
  nop                                 #  259   0x53b9b  1      
  callq .d_call_offset                #  260   0x53b9c  5      
  testl %eax, %eax                    #  261   0x53ba1  2      
  je .L_53b20                         #  262   0x53ba3  6      
  xorl %esi, %esi                     #  263   0x53ba9  2      
  movl %ebx, %edi                     #  264   0x53bab  2      
  nop                                 #  265   0x53bad  1      
  callq .d_encoding                   #  266   0x53bae  5      
  xorl %ecx, %ecx                     #  267   0x53bb3  2      
  movl %eax, %edx                     #  268   0x53bb5  2      
  movl $0xf, %esi                     #  269   0x53bb7  5      
  jmpq .L_539a0                       #  270   0x53bbc  5      
  nop                                 #  271   0x53bc1  1      
  nop                                 #  272   0x53bc2  1      
  xorl %esi, %esi                     #  273   0x53bc3  2      
  movl %ebx, %edi                     #  274   0x53bc5  2      
  nop                                 #  275   0x53bc7  1      
  nop                                 #  276   0x53bc8  1      
  callq .d_call_offset                #  277   0x53bc9  5      
  testl %eax, %eax                    #  278   0x53bce  2      
  je .L_53b20                         #  279   0x53bd0  6      
  xorl %esi, %esi                     #  280   0x53bd6  2      
  movl %ebx, %edi                     #  281   0x53bd8  2      
  nop                                 #  282   0x53bda  1      
  callq .d_call_offset                #  283   0x53bdb  5      
  testl %eax, %eax                    #  284   0x53be0  2      
  je .L_53b20                         #  285   0x53be2  6      
  xorl %esi, %esi                     #  286   0x53be8  2      
  movl %ebx, %edi                     #  287   0x53bea  2      
  nop                                 #  288   0x53bec  1      
  callq .d_encoding                   #  289   0x53bed  5      
  xorl %ecx, %ecx                     #  290   0x53bf2  2      
  movl %eax, %edx                     #  291   0x53bf4  2      
  movl $0x11, %esi                    #  292   0x53bf6  5      
  jmpq .L_539a0                       #  293   0x53bfb  5      
  nop                                 #  294   0x53c00  1      
  nop                                 #  295   0x53c01  1      
  subl $0x5, %ecx                     #  296   0x53c02  3      
  movl %ebx, %edi                     #  297   0x53c05  2      
  movl %ebx, %ebx                     #  298   0x53c07  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  299   0x53c09  5      
  nop                                 #  300   0x53c0e  1      
  callq .d_type                       #  301   0x53c0f  5      
  xorl %ecx, %ecx                     #  302   0x53c14  2      
  movl %eax, %edx                     #  303   0x53c16  2      
  movl $0x9, %esi                     #  304   0x53c18  5      
  jmpq .L_539a0                       #  305   0x53c1d  5      
  nop                                 #  306   0x53c22  1      
  nop                                 #  307   0x53c23  1      
  subl $0xa, %ecx                     #  308   0x53c24  3      
  movl %ebx, %edi                     #  309   0x53c27  2      
  movl %ebx, %ebx                     #  310   0x53c29  2      
  movl %ecx, 0x30(%r15,%rbx,1)        #  311   0x53c2b  5      
  nop                                 #  312   0x53c30  1      
  callq .d_type                       #  313   0x53c31  5      
  xorl %ecx, %ecx                     #  314   0x53c36  2      
  movl %eax, %edx                     #  315   0x53c38  2      
  movl $0xa, %esi                     #  316   0x53c3a  5      
  jmpq .L_539a0                       #  317   0x53c3f  5      
  nop                                 #  318   0x53c44  1      
  nop                                 #  319   0x53c45  1      
  movl %ebx, %edi                     #  320   0x53c46  2      
  nop                                 #  321   0x53c48  1      
  nop                                 #  322   0x53c49  1      
  callq .d_type                       #  323   0x53c4a  5      
  xorl %ecx, %ecx                     #  324   0x53c4f  2      
  movl %eax, %edx                     #  325   0x53c51  2      
  movl $0xd, %esi                     #  326   0x53c53  5      
  jmpq .L_539a0                       #  327   0x53c58  5      
  nop                                 #  328   0x53c5d  1      
  nop                                 #  329   0x53c5e  1      
  movl %ebx, %edi                     #  330   0x53c5f  2      
  nop                                 #  331   0x53c61  1      
  nop                                 #  332   0x53c62  1      
  callq .d_type                       #  333   0x53c63  5      
  xorl %ecx, %ecx                     #  334   0x53c68  2      
  movl %eax, %edx                     #  335   0x53c6a  2      
  movl $0x12, %esi                    #  336   0x53c6c  5      
  jmpq .L_539a0                       #  337   0x53c71  5      
  nop                                 #  338   0x53c76  1      
  nop                                 #  339   0x53c77  1      
  movl %ebx, %edi                     #  340   0x53c78  2      
  nop                                 #  341   0x53c7a  1      
  nop                                 #  342   0x53c7b  1      
  callq .d_type                       #  343   0x53c7c  5      
  xorl %ecx, %ecx                     #  344   0x53c81  2      
  movl %eax, %edx                     #  345   0x53c83  2      
  movl $0xc, %esi                     #  346   0x53c85  5      
  jmpq .L_539a0                       #  347   0x53c8a  5      
  nop                                 #  348   0x53c8f  1      
  nop                                 #  349   0x53c90  1      
  movl %ebx, %edi                     #  350   0x53c91  2      
  nop                                 #  351   0x53c93  1      
  nop                                 #  352   0x53c94  1      
  callq .d_type                       #  353   0x53c95  5      
  xorl %ecx, %ecx                     #  354   0x53c9a  2      
  movl %eax, %edx                     #  355   0x53c9c  2      
  movl $0xe, %esi                     #  356   0x53c9e  5      
  jmpq .L_539a0                       #  357   0x53ca3  5      
  nop                                 #  358   0x53ca8  1      
  nop                                 #  359   0x53ca9  1      
  movl %ebx, %edi                     #  360   0x53caa  2      
  nop                                 #  361   0x53cac  1      
  nop                                 #  362   0x53cad  1      
  callq .d_type                       #  363   0x53cae  5      
  movl %ebx, %edi                     #  364   0x53cb3  2      
  movl %eax, %r12d                    #  365   0x53cb5  3      
  nop                                 #  366   0x53cb8  1      
  nop                                 #  367   0x53cb9  1      
  callq .d_number                     #  368   0x53cba  5      
  testl %eax, %eax                    #  369   0x53cbf  2      
  js .L_53b20                         #  370   0x53cc1  6      
  movl %ebx, %ebx                     #  371   0x53cc7  2      
  movl 0xc(%r15,%rbx,1), %eax         #  372   0x53cc9  5      
  movl %eax, %eax                     #  373   0x53cce  2      
  cmpb $0x5f, (%r15,%rax,1)           #  374   0x53cd0  5      
  jne .L_53b20                        #  375   0x53cd5  6      
  addl $0x1, %eax                     #  376   0x53cdb  3      
  nop                                 #  377   0x53cde  1      
  movl %ebx, %edi                     #  378   0x53cdf  2      
  movl %ebx, %ebx                     #  379   0x53ce1  2      
  movl %eax, 0xc(%r15,%rbx,1)         #  380   0x53ce3  5      
  nop                                 #  381   0x53ce8  1      
  nop                                 #  382   0x53ce9  1      
  callq .d_type                       #  383   0x53cea  5      
  movl %ebx, %ebx                     #  384   0x53cef  2      
  addl $0x5, 0x30(%r15,%rbx,1)        #  385   0x53cf1  6      
  movl %eax, %edx                     #  386   0x53cf7  2      
  movl %r12d, %ecx                    #  387   0x53cf9  3      
  movl $0xb, %esi                     #  388   0x53cfc  5      
  jmpq .L_539a0                       #  389   0x53d01  5      
  nop                                 #  390   0x53d06  1      
.L_54060:                             #        0x53d07  0      
  movl %ebx, %edi                     #  391   0x53d07  2      
  nop                                 #  392   0x53d09  1      
  nop                                 #  393   0x53d0a  1      
  callq .d_name                       #  394   0x53d0b  5      
  xorl %ecx, %ecx                     #  395   0x53d10  2      
  movl %eax, %edx                     #  396   0x53d12  2      
  movl $0x14, %esi                    #  397   0x53d14  5      
  jmpq .L_539a0                       #  398   0x53d19  5      
  nop                                 #  399   0x53d1e  1      
  nop                                 #  400   0x53d1f  1      
.L_540a0:                             #        0x53d20  0      
  cmpb $0x56, %al                     #  401   0x53d20  2      
  je .L_54220                         #  402   0x53d22  6      
  cmpb $0x72, %al                     #  403   0x53d28  2      
  jne .L_53b20                        #  404   0x53d2a  6      
  movl %ebx, %edi                     #  405   0x53d30  2      
  nop                                 #  406   0x53d32  1      
  callq .d_number                     #  407   0x53d33  5      
  cmpl $0x1, %eax                     #  408   0x53d38  3      
  jle .L_53b20                        #  409   0x53d3b  6      
  movl %ebx, %ebx                     #  410   0x53d41  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  411   0x53d43  5      
  movl %r12d, %r12d                   #  412   0x53d48  3      
  movzbl (%r15,%r12,1), %edx          #  413   0x53d4b  5      
  testb %dl, %dl                      #  414   0x53d50  2      
  je .L_53b20                         #  415   0x53d52  6      
  addl $0x1, %r12d                    #  416   0x53d58  4      
  cmpb $0x5f, %dl                     #  417   0x53d5c  3      
  movl %ebx, %ebx                     #  418   0x53d5f  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  419   0x53d61  5      
  jne .L_53b20                        #  420   0x53d66  6      
  leal -0x1(%rax), %r13d              #  421   0x53d6c  4      
  xorl %r14d, %r14d                   #  422   0x53d70  3      
  nop                                 #  423   0x53d73  1      
.L_54100:                             #        0x53d74  0      
  movl %r12d, %r12d                   #  424   0x53d74  3      
  movzbl (%r15,%r12,1), %eax          #  425   0x53d77  5      
  testb %al, %al                      #  426   0x53d7c  2      
  je .L_53b20                         #  427   0x53d7e  6      
  cmpb $0x24, %al                     #  428   0x53d84  2      
  je .L_54260                         #  429   0x53d86  6      
  movl %r12d, %eax                    #  430   0x53d8c  3      
  xorl %r8d, %r8d                     #  431   0x53d8f  3      
  xchgw %ax, %ax                      #  432   0x53d92  3      
  jmpq .L_54160                       #  433   0x53d95  5      
  nop                                 #  434   0x53d9a  1      
  nop                                 #  435   0x53d9b  1      
.L_54140:                             #        0x53d9c  0      
  movl %eax, %edx                     #  436   0x53d9c  2      
  addl $0x1, %eax                     #  437   0x53d9e  3      
  movl %edx, %edx                     #  438   0x53da1  2      
  movzbl 0x1(%r15,%rdx,1), %edx       #  439   0x53da3  6      
  testb %dl, %dl                      #  440   0x53da9  2      
  je .L_54180                         #  441   0x53dab  6      
  cmpb $0x24, %dl                     #  442   0x53db1  3      
  je .L_54180                         #  443   0x53db4  6      
  nop                                 #  444   0x53dba  1      
.L_54160:                             #        0x53dbb  0      
  addl $0x1, %r8d                     #  445   0x53dbb  4      
  cmpl %r13d, %r8d                    #  446   0x53dbf  3      
  jl .L_54140                         #  447   0x53dc2  6      
  nop                                 #  448   0x53dc8  1      
  nop                                 #  449   0x53dc9  1      
.L_54180:                             #        0x53dca  0      
  movl %r8d, %edx                     #  450   0x53dca  3      
  movl %r12d, %esi                    #  451   0x53dcd  3      
  movl %ebx, %edi                     #  452   0x53dd0  2      
  movl %r8d, 0x8(%rsp)                #  453   0x53dd2  5      
  nop                                 #  454   0x53dd7  1      
  callq .d_make_name                  #  455   0x53dd8  5      
  movl %ebx, %ebx                     #  456   0x53ddd  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  457   0x53ddf  5      
  movl 0x8(%rsp), %r8d                #  458   0x53de4  5      
  movl %eax, %edx                     #  459   0x53de9  2      
  addl %r8d, %r12d                    #  460   0x53deb  3      
  testq %rdx, %rdx                    #  461   0x53dee  3      
  movl %ebx, %ebx                     #  462   0x53df1  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  463   0x53df3  5      
  nop                                 #  464   0x53df8  1      
  je .L_53b20                         #  465   0x53df9  6      
  subl %r8d, %r13d                    #  466   0x53dff  3      
  nop                                 #  467   0x53e02  1      
  nop                                 #  468   0x53e03  1      
.L_541e0:                             #        0x53e04  0      
  testq %r14, %r14                    #  469   0x53e04  3      
  jne .L_54340                        #  470   0x53e07  6      
  nop                                 #  471   0x53e0d  1      
  nop                                 #  472   0x53e0e  1      
.L_54200:                             #        0x53e0f  0      
  testl %r13d, %r13d                  #  473   0x53e0f  3      
  jle .L_54320                        #  474   0x53e12  6      
  movq %rdx, %r14                     #  475   0x53e18  3      
  jmpq .L_54100                       #  476   0x53e1b  5      
  nop                                 #  477   0x53e20  1      
.L_54220:                             #        0x53e21  0      
  movl %ebx, %edi                     #  478   0x53e21  2      
  nop                                 #  479   0x53e23  1      
  nop                                 #  480   0x53e24  1      
  callq .d_name                       #  481   0x53e25  5      
  xorl %ecx, %ecx                     #  482   0x53e2a  2      
  movl %eax, %edx                     #  483   0x53e2c  2      
  movl $0x13, %esi                    #  484   0x53e2e  5      
  jmpq .L_539a0                       #  485   0x53e33  5      
  nop                                 #  486   0x53e38  1      
  nop                                 #  487   0x53e39  1      
.L_54260:                             #        0x53e3a  0      
  movl %r12d, %r12d                   #  488   0x53e3a  3      
  movzbl 0x1(%r15,%r12,1), %eax       #  489   0x53e3d  6      
  cmpb $0x53, %al                     #  490   0x53e43  2      
  je .L_543c0                         #  491   0x53e45  6      
  cmpb $0x5f, %al                     #  492   0x53e4b  2      
  je .L_543a0                         #  493   0x53e4d  6      
  cmpb $0x24, %al                     #  494   0x53e53  2      
  nop                                 #  495   0x53e55  1      
  jne .L_53b20                        #  496   0x53e56  6      
  movl $0x24, %eax                    #  497   0x53e5c  5      
  nop                                 #  498   0x53e61  1      
  nop                                 #  499   0x53e62  1      
.L_542a0:                             #        0x53e63  0      
  movl %ebx, %ebx                     #  500   0x53e63  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  501   0x53e65  5      
  movl %ebx, %ebx                     #  502   0x53e6a  2      
  cmpl 0x18(%r15,%rbx,1), %ecx        #  503   0x53e6c  5      
  jge .L_54380                        #  504   0x53e71  6      
  imull $0xc, %ecx, %edx              #  505   0x53e77  3      
  movl %ebx, %ebx                     #  506   0x53e7a  2      
  addl 0x10(%r15,%rbx,1), %edx        #  507   0x53e7c  5      
  xchgw %ax, %ax                      #  508   0x53e81  3      
  addl $0x1, %ecx                     #  509   0x53e84  3      
  movl %ebx, %ebx                     #  510   0x53e87  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  511   0x53e89  5      
  testq %rdx, %rdx                    #  512   0x53e8e  3      
  je .L_54380                         #  513   0x53e91  6      
  movl %edx, %edx                     #  514   0x53e97  2      
  movl %eax, 0x4(%r15,%rdx,1)         #  515   0x53e99  5      
  nop                                 #  516   0x53e9e  1      
  movl %ebx, %ebx                     #  517   0x53e9f  2      
  movl 0xc(%r15,%rbx,1), %r12d        #  518   0x53ea1  5      
  subl $0x2, %r13d                    #  519   0x53ea6  4      
  movl %edx, %edx                     #  520   0x53eaa  2      
  movl $0x38, (%r15,%rdx,1)           #  521   0x53eac  8      
  addl $0x2, %r12d                    #  522   0x53eb4  4      
  movl %ebx, %ebx                     #  523   0x53eb8  2      
  movl %r12d, 0xc(%r15,%rbx,1)        #  524   0x53eba  5      
  jmpq .L_541e0                       #  525   0x53ebf  5      
  nop                                 #  526   0x53ec4  1      
  nop                                 #  527   0x53ec5  1      
.L_54320:                             #        0x53ec6  0      
  xorl %ecx, %ecx                     #  528   0x53ec6  2      
  movl $0x36, %esi                    #  529   0x53ec8  5      
  jmpq .L_539a0                       #  530   0x53ecd  5      
  nop                                 #  531   0x53ed2  1      
  nop                                 #  532   0x53ed3  1      
.L_54340:                             #        0x53ed4  0      
  movl %edx, %ecx                     #  533   0x53ed4  2      
  movl $0x37, %esi                    #  534   0x53ed6  5      
  movl %r14d, %edx                    #  535   0x53edb  3      
  movl %ebx, %edi                     #  536   0x53ede  2      
  nop                                 #  537   0x53ee0  1      
  callq .d_make_comp                  #  538   0x53ee1  5      
  movl %eax, %edx                     #  539   0x53ee6  2      
  testq %rdx, %rdx                    #  540   0x53ee8  3      
  jne .L_54200                        #  541   0x53eeb  6      
  jmpq .L_53b20                       #  542   0x53ef1  5      
  nop                                 #  543   0x53ef6  1      
  nop                                 #  544   0x53ef7  1      
.L_54380:                             #        0x53ef8  0      
  movl %ebx, %ebx                     #  545   0x53ef8  2      
  addl $0x2, 0xc(%r15,%rbx,1)         #  546   0x53efa  6      
  xorl %r12d, %r12d                   #  547   0x53f00  3      
  jmpq .L_53aa0                       #  548   0x53f03  5      
  nop                                 #  549   0x53f08  1      
  nop                                 #  550   0x53f09  1      
.L_543a0:                             #        0x53f0a  0      
  movl $0x2e, %eax                    #  551   0x53f0a  5      
  jmpq .L_542a0                       #  552   0x53f0f  5      
  nop                                 #  553   0x53f14  1      
  nop                                 #  554   0x53f15  1      
.L_543c0:                             #        0x53f16  0      
  movl $0x2f, %eax                    #  555   0x53f16  5      
  jmpq .L_542a0                       #  556   0x53f1b  5      
  nop                                 #  557   0x53f20  1      
  nop                                 #  558   0x53f21  1      
                                                               
.size d_encoding, .-d_encoding

