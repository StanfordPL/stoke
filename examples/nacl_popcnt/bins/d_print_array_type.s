  .text
  .globl d_print_array_type
  .type d_print_array_type, @function

#! file-offset 0x54a40
#! rip-offset  0x54a40
#! capacity    1344 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_array_type:              #        0x54a40  0      
  pushq %r14                      #  1     0x54a40  3      
  movl %edx, %r14d                #  2     0x54a43  3      
  movl %esi, %esi                 #  3     0x54a46  2      
  pushq %r13                      #  4     0x54a48  3      
  pushq %r12                      #  5     0x54a4b  3      
  pushq %rbx                      #  6     0x54a4e  2      
  movl %edi, %ebx                 #  7     0x54a50  2      
  subl $0x18, %esp                #  8     0x54a52  3      
  addq %r15, %rsp                 #  9     0x54a55  3      
  testq %r14, %r14                #  10    0x54a58  3      
  movq %rsi, (%rsp)               #  11    0x54a5b  4      
  nop                             #  12    0x54a5f  1      
  je .L_54ac0                     #  13    0x54a60  6      
  movl %r14d, %r14d               #  14    0x54a66  3      
  movl 0x8(%r15,%r14,1), %r8d     #  15    0x54a69  5      
  movq %r14, %rax                 #  16    0x54a6e  3      
  testl %r8d, %r8d                #  17    0x54a71  3      
  jne .L_54aa0                    #  18    0x54a74  6      
  jmpq .L_54c40                   #  19    0x54a7a  5      
  nop                             #  20    0x54a7f  1      
.L_54a80:                         #        0x54a80  0      
  movl %eax, %eax                 #  21    0x54a80  2      
  movl 0x8(%r15,%rax,1), %edi     #  22    0x54a82  5      
  testl %edi, %edi                #  23    0x54a87  2      
  je .L_54c40                     #  24    0x54a89  6      
  xchgw %ax, %ax                  #  25    0x54a8f  3      
  nop                             #  26    0x54a92  1      
.L_54aa0:                         #        0x54a93  0      
  movl %eax, %eax                 #  27    0x54a93  2      
  movl (%r15,%rax,1), %eax        #  28    0x54a95  4      
  testq %rax, %rax                #  29    0x54a99  3      
  jne .L_54a80                    #  30    0x54a9c  6      
  xorl %edx, %edx                 #  31    0x54aa2  2      
  movl %r14d, %esi                #  32    0x54aa4  3      
  movl %ebx, %edi                 #  33    0x54aa7  2      
  nop                             #  34    0x54aa9  1      
  callq .d_print_mod_list         #  35    0x54aaa  5      
.L_54ac0:                         #        0x54aaf  0      
  movl %ebx, %ebx                 #  36    0x54aaf  2      
  movl 0x104(%r15,%rbx,1), %eax   #  37    0x54ab1  8      
  nop                             #  38    0x54ab9  1      
  nop                             #  39    0x54aba  1      
.L_54ae0:                         #        0x54abb  0      
  cmpl $0xff, %eax                #  40    0x54abb  3      
  leal 0x1(%rax), %edx            #  41    0x54abe  3      
  je .L_54dc0                     #  42    0x54ac1  6      
  nop                             #  43    0x54ac7  1      
  nop                             #  44    0x54ac8  1      
.L_54b00:                         #        0x54ac9  0      
  cltq                            #  45    0x54ac9  2      
  movl %ebx, %ebx                 #  46    0x54acb  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  47    0x54acd  8      
  movl %ebx, %ebx                 #  48    0x54ad5  2      
  movb $0x20, 0x108(%r15,%rbx,1)  #  49    0x54ad7  9      
  leaq (%rbx,%rax,1), %rax        #  50    0x54ae0  4      
  nop                             #  51    0x54ae4  1      
  movl %eax, %eax                 #  52    0x54ae5  2      
  movb $0x20, 0x4(%r15,%rax,1)    #  53    0x54ae7  6      
  nop                             #  54    0x54aed  1      
  nop                             #  55    0x54aee  1      
.L_54b40:                         #        0x54aef  0      
  cmpl $0xff, %edx                #  56    0x54aef  3      
  leal 0x1(%rdx), %eax            #  57    0x54af2  3      
  je .L_54ee0                     #  58    0x54af5  6      
  xchgw %ax, %ax                  #  59    0x54afb  3      
  nop                             #  60    0x54afe  1      
.L_54b60:                         #        0x54aff  0      
  movslq %edx, %rdx               #  61    0x54aff  3      
  movl %ebx, %ebx                 #  62    0x54b02  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  63    0x54b04  8      
  movl %ebx, %ebx                 #  64    0x54b0c  2      
  movb $0x5b, 0x108(%r15,%rbx,1)  #  65    0x54b0e  9      
  leaq (%rbx,%rdx,1), %rdx        #  66    0x54b17  4      
  nop                             #  67    0x54b1b  1      
  movl %edx, %edx                 #  68    0x54b1c  2      
  movb $0x5b, 0x4(%r15,%rdx,1)    #  69    0x54b1e  6      
  movq (%rsp), %rdx               #  70    0x54b24  4      
  movl %edx, %edx                 #  71    0x54b28  2      
  movl 0x4(%r15,%rdx,1), %esi     #  72    0x54b2a  5      
  testq %rsi, %rsi                #  73    0x54b2f  3      
  je .L_54bc0                     #  74    0x54b32  6      
  movl %ebx, %edi                 #  75    0x54b38  2      
  nop                             #  76    0x54b3a  1      
  callq .d_print_comp             #  77    0x54b3b  5      
  movl %ebx, %ebx                 #  78    0x54b40  2      
  movl 0x104(%r15,%rbx,1), %eax   #  79    0x54b42  8      
  nop                             #  80    0x54b4a  1      
  nop                             #  81    0x54b4b  1      
.L_54bc0:                         #        0x54b4c  0      
  cmpl $0xff, %eax                #  82    0x54b4c  3      
  leal 0x1(%rax), %edx            #  83    0x54b4f  3      
  je .L_54e80                     #  84    0x54b52  6      
  nop                             #  85    0x54b58  1      
  nop                             #  86    0x54b59  1      
.L_54be0:                         #        0x54b5a  0      
  cltq                            #  87    0x54b5a  2      
  movl %ebx, %ebx                 #  88    0x54b5c  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  89    0x54b5e  8      
  movl %ebx, %ebx                 #  90    0x54b66  2      
  movb $0x5d, 0x108(%r15,%rbx,1)  #  91    0x54b68  9      
  leaq (%rbx,%rax,1), %rax        #  92    0x54b71  4      
  nop                             #  93    0x54b75  1      
  movl %eax, %eax                 #  94    0x54b76  2      
  movb $0x5d, 0x4(%r15,%rax,1)    #  95    0x54b78  6      
  addl $0x18, %esp                #  96    0x54b7e  3      
  addq %r15, %rsp                 #  97    0x54b81  3      
  popq %rbx                       #  98    0x54b84  2      
  popq %r12                       #  99    0x54b86  3      
  popq %r13                       #  100   0x54b89  3      
  popq %r14                       #  101   0x54b8c  3      
  popq %r11                       #  102   0x54b8f  3      
  nop                             #  103   0x54b92  1      
  andl $0xffffffe0, %r11d         #  104   0x54b93  7      
  addq %r15, %r11                 #  105   0x54b9a  3      
  jmpq %r11                       #  106   0x54b9d  3      
  nop                             #  107   0x54ba0  1      
  nop                             #  108   0x54ba1  1      
.L_54c40:                         #        0x54ba2  0      
  movl %eax, %eax                 #  109   0x54ba2  2      
  movl 0x4(%r15,%rax,1), %eax     #  110   0x54ba4  5      
  movl %eax, %eax                 #  111   0x54ba9  2      
  cmpl $0x26, (%r15,%rax,1)       #  112   0x54bab  5      
  je .L_54f40                     #  113   0x54bb0  6      
  leal 0x4(%rbx), %edx            #  114   0x54bb6  3      
  nop                             #  115   0x54bb9  1      
  movl %ebx, %ebx                 #  116   0x54bba  2      
  movl 0x104(%r15,%rbx,1), %eax   #  117   0x54bbc  8      
  movl $0x100229a3, %r12d         #  118   0x54bc4  6      
  movq %rdx, 0x8(%rsp)            #  119   0x54bca  5      
  jmpq .L_54cc0                   #  120   0x54bcf  5      
  nop                             #  121   0x54bd4  1      
.L_54c80:                         #        0x54bd5  0      
  cltq                            #  122   0x54bd5  2      
  addl $0x1, %r12d                #  123   0x54bd7  4      
  movl %ebx, %ebx                 #  124   0x54bdb  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  125   0x54bdd  8      
  leaq (%rbx,%rax,1), %rax        #  126   0x54be5  4      
  cmpl $0x100229a5, %r12d         #  127   0x54be9  7      
  nop                             #  128   0x54bf0  1      
  movl %ebx, %ebx                 #  129   0x54bf1  2      
  movb %r13b, 0x108(%r15,%rbx,1)  #  130   0x54bf3  8      
  movl %eax, %eax                 #  131   0x54bfb  2      
  movb %r13b, 0x4(%r15,%rax,1)    #  132   0x54bfd  5      
  je .L_54d40                     #  133   0x54c02  6      
  movl %edx, %eax                 #  134   0x54c08  2      
  nop                             #  135   0x54c0a  1      
.L_54cc0:                         #        0x54c0b  0      
  movl %r12d, %edx                #  136   0x54c0b  3      
  cmpl $0xff, %eax                #  137   0x54c0e  3      
  movl %edx, %edx                 #  138   0x54c11  2      
  movzbl (%r15,%rdx,1), %r13d     #  139   0x54c13  5      
  leal 0x1(%rax), %edx            #  140   0x54c18  3      
  jne .L_54c80                    #  141   0x54c1b  6      
  movl %ebx, %ebx                 #  142   0x54c21  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  143   0x54c23  8      
  xchgw %ax, %ax                  #  144   0x54c2b  3      
  movl %ebx, %ebx                 #  145   0x54c2e  2      
  movl 0x110(%r15,%rbx,1), %edx   #  146   0x54c30  8      
  movl %ebx, %ebx                 #  147   0x54c38  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  148   0x54c3a  9      
  movl %ebx, %ebx                 #  149   0x54c43  2      
  movl 0x104(%r15,%rbx,1), %esi   #  150   0x54c45  8      
  nop                             #  151   0x54c4d  1      
  movl 0x8(%rsp), %edi            #  152   0x54c4e  4      
  nop                             #  153   0x54c52  1      
  nop                             #  154   0x54c53  1      
  andl $0xffffffe0, %eax          #  155   0x54c54  5      
  addq %r15, %rax                 #  156   0x54c59  3      
  callq %rax                      #  157   0x54c5c  2      
  movl %ebx, %ebx                 #  158   0x54c5e  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  159   0x54c60  12     
  movl $0x1, %edx                 #  160   0x54c6c  5      
  xorl %eax, %eax                 #  161   0x54c71  2      
  jmpq .L_54c80                   #  162   0x54c73  5      
  nop                             #  163   0x54c78  1      
.L_54d40:                         #        0x54c79  0      
  xorl %edx, %edx                 #  164   0x54c79  2      
  movl %r14d, %esi                #  165   0x54c7b  3      
  movl %ebx, %edi                 #  166   0x54c7e  2      
  nop                             #  167   0x54c80  1      
  nop                             #  168   0x54c81  1      
  callq .d_print_mod_list         #  169   0x54c82  5      
  movl %ebx, %ebx                 #  170   0x54c87  2      
  movl 0x104(%r15,%rbx,1), %edx   #  171   0x54c89  8      
  cmpl $0xff, %edx                #  172   0x54c91  3      
  leal 0x1(%rdx), %eax            #  173   0x54c94  3      
  je .L_54e20                     #  174   0x54c97  6      
  nop                             #  175   0x54c9d  1      
.L_54d80:                         #        0x54c9e  0      
  movslq %edx, %rdx               #  176   0x54c9e  3      
  movl %ebx, %ebx                 #  177   0x54ca1  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  178   0x54ca3  8      
  movl %ebx, %ebx                 #  179   0x54cab  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  180   0x54cad  9      
  leaq (%rbx,%rdx,1), %rdx        #  181   0x54cb6  4      
  nop                             #  182   0x54cba  1      
  movl %edx, %edx                 #  183   0x54cbb  2      
  movb $0x29, 0x4(%r15,%rdx,1)    #  184   0x54cbd  6      
  jmpq .L_54ae0                   #  185   0x54cc3  5      
  nop                             #  186   0x54cc8  1      
  nop                             #  187   0x54cc9  1      
.L_54dc0:                         #        0x54cca  0      
  movl %ebx, %ebx                 #  188   0x54cca  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  189   0x54ccc  8      
  movl %ebx, %ebx                 #  190   0x54cd4  2      
  movl 0x110(%r15,%rbx,1), %edx   #  191   0x54cd6  8      
  leal 0x4(%rbx), %edi            #  192   0x54cde  3      
  nop                             #  193   0x54ce1  1      
  movl %ebx, %ebx                 #  194   0x54ce2  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  195   0x54ce4  9      
  movl %ebx, %ebx                 #  196   0x54ced  2      
  movl 0x104(%r15,%rbx,1), %esi   #  197   0x54cef  8      
  nop                             #  198   0x54cf7  1      
  andl $0xffffffe0, %eax          #  199   0x54cf8  5      
  addq %r15, %rax                 #  200   0x54cfd  3      
  callq %rax                      #  201   0x54d00  2      
  movl %ebx, %ebx                 #  202   0x54d02  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  203   0x54d04  12     
  movl $0x1, %edx                 #  204   0x54d10  5      
  xorl %eax, %eax                 #  205   0x54d15  2      
  jmpq .L_54b00                   #  206   0x54d17  5      
  nop                             #  207   0x54d1c  1      
.L_54e20:                         #        0x54d1d  0      
  movl %ebx, %ebx                 #  208   0x54d1d  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  209   0x54d1f  8      
  movl %ebx, %ebx                 #  210   0x54d27  2      
  movl 0x110(%r15,%rbx,1), %edx   #  211   0x54d29  8      
  movl $0xff, %esi                #  212   0x54d31  5      
  nop                             #  213   0x54d36  1      
  movl %ebx, %ebx                 #  214   0x54d37  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  215   0x54d39  9      
  movl 0x8(%rsp), %edi            #  216   0x54d42  4      
  nop                             #  217   0x54d46  1      
  andl $0xffffffe0, %eax          #  218   0x54d47  5      
  addq %r15, %rax                 #  219   0x54d4c  3      
  callq %rax                      #  220   0x54d4f  2      
  movl %ebx, %ebx                 #  221   0x54d51  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  222   0x54d53  12     
  movl $0x1, %eax                 #  223   0x54d5f  5      
  xorl %edx, %edx                 #  224   0x54d64  2      
  jmpq .L_54d80                   #  225   0x54d66  5      
  nop                             #  226   0x54d6b  1      
.L_54e80:                         #        0x54d6c  0      
  movl %ebx, %ebx                 #  227   0x54d6c  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  228   0x54d6e  8      
  movl %ebx, %ebx                 #  229   0x54d76  2      
  movl 0x110(%r15,%rbx,1), %edx   #  230   0x54d78  8      
  leal 0x4(%rbx), %edi            #  231   0x54d80  3      
  nop                             #  232   0x54d83  1      
  movl %ebx, %ebx                 #  233   0x54d84  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  234   0x54d86  9      
  movl %ebx, %ebx                 #  235   0x54d8f  2      
  movl 0x104(%r15,%rbx,1), %esi   #  236   0x54d91  8      
  nop                             #  237   0x54d99  1      
  andl $0xffffffe0, %eax          #  238   0x54d9a  5      
  addq %r15, %rax                 #  239   0x54d9f  3      
  callq %rax                      #  240   0x54da2  2      
  movl %ebx, %ebx                 #  241   0x54da4  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  242   0x54da6  12     
  movl $0x1, %edx                 #  243   0x54db2  5      
  xorl %eax, %eax                 #  244   0x54db7  2      
  jmpq .L_54be0                   #  245   0x54db9  5      
  nop                             #  246   0x54dbe  1      
.L_54ee0:                         #        0x54dbf  0      
  movl %ebx, %ebx                 #  247   0x54dbf  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  248   0x54dc1  8      
  movl %ebx, %ebx                 #  249   0x54dc9  2      
  movl 0x110(%r15,%rbx,1), %edx   #  250   0x54dcb  8      
  leal 0x4(%rbx), %edi            #  251   0x54dd3  3      
  nop                             #  252   0x54dd6  1      
  movl %ebx, %ebx                 #  253   0x54dd7  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  254   0x54dd9  9      
  movl %ebx, %ebx                 #  255   0x54de2  2      
  movl 0x104(%r15,%rbx,1), %esi   #  256   0x54de4  8      
  nop                             #  257   0x54dec  1      
  andl $0xffffffe0, %eax          #  258   0x54ded  5      
  addq %r15, %rax                 #  259   0x54df2  3      
  callq %rax                      #  260   0x54df5  2      
  movl %ebx, %ebx                 #  261   0x54df7  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  262   0x54df9  12     
  movl $0x1, %eax                 #  263   0x54e05  5      
  xorl %edx, %edx                 #  264   0x54e0a  2      
  jmpq .L_54b60                   #  265   0x54e0c  5      
  nop                             #  266   0x54e11  1      
.L_54f40:                         #        0x54e12  0      
  xorl %edx, %edx                 #  267   0x54e12  2      
  movl %r14d, %esi                #  268   0x54e14  3      
  movl %ebx, %edi                 #  269   0x54e17  2      
  nop                             #  270   0x54e19  1      
  nop                             #  271   0x54e1a  1      
  callq .d_print_mod_list         #  272   0x54e1b  5      
  movl %ebx, %ebx                 #  273   0x54e20  2      
  movl 0x104(%r15,%rbx,1), %edx   #  274   0x54e22  8      
  jmpq .L_54b40                   #  275   0x54e2a  5      
  xchgw %ax, %ax                  #  276   0x54e2f  3      
  nop                             #  277   0x54e32  1      
                                                           
.size d_print_array_type, .-d_print_array_type

