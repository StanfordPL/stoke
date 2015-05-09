  .text
  .globl d_print_array_type
  .type d_print_array_type, @function

#! file-offset 0x549a0
#! rip-offset  0x549a0
#! capacity    1344 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_array_type:              #        0x549a0  0      
  pushq %r14                      #  1     0x549a0  3      
  movl %edx, %r14d                #  2     0x549a3  3      
  movl %esi, %esi                 #  3     0x549a6  2      
  pushq %r13                      #  4     0x549a8  3      
  pushq %r12                      #  5     0x549ab  3      
  pushq %rbx                      #  6     0x549ae  2      
  movl %edi, %ebx                 #  7     0x549b0  2      
  subl $0x18, %esp                #  8     0x549b2  3      
  addq %r15, %rsp                 #  9     0x549b5  3      
  testq %r14, %r14                #  10    0x549b8  3      
  movq %rsi, (%rsp)               #  11    0x549bb  4      
  nop                             #  12    0x549bf  1      
  je .L_54a20                     #  13    0x549c0  6      
  movl %r14d, %r14d               #  14    0x549c6  3      
  movl 0x8(%r15,%r14,1), %r8d     #  15    0x549c9  5      
  movq %r14, %rax                 #  16    0x549ce  3      
  testl %r8d, %r8d                #  17    0x549d1  3      
  jne .L_54a00                    #  18    0x549d4  6      
  jmpq .L_54ba0                   #  19    0x549da  5      
  nop                             #  20    0x549df  1      
.L_549e0:                         #        0x549e0  0      
  movl %eax, %eax                 #  21    0x549e0  2      
  movl 0x8(%r15,%rax,1), %edi     #  22    0x549e2  5      
  testl %edi, %edi                #  23    0x549e7  2      
  je .L_54ba0                     #  24    0x549e9  6      
  xchgw %ax, %ax                  #  25    0x549ef  3      
  nop                             #  26    0x549f2  1      
.L_54a00:                         #        0x549f3  0      
  movl %eax, %eax                 #  27    0x549f3  2      
  movl (%r15,%rax,1), %eax        #  28    0x549f5  4      
  testq %rax, %rax                #  29    0x549f9  3      
  jne .L_549e0                    #  30    0x549fc  6      
  xorl %edx, %edx                 #  31    0x54a02  2      
  movl %r14d, %esi                #  32    0x54a04  3      
  movl %ebx, %edi                 #  33    0x54a07  2      
  nop                             #  34    0x54a09  1      
  callq .d_print_mod_list         #  35    0x54a0a  5      
.L_54a20:                         #        0x54a0f  0      
  movl %ebx, %ebx                 #  36    0x54a0f  2      
  movl 0x104(%r15,%rbx,1), %eax   #  37    0x54a11  8      
  nop                             #  38    0x54a19  1      
  nop                             #  39    0x54a1a  1      
.L_54a40:                         #        0x54a1b  0      
  cmpl $0xff, %eax                #  40    0x54a1b  3      
  leal 0x1(%rax), %edx            #  41    0x54a1e  3      
  je .L_54d20                     #  42    0x54a21  6      
  nop                             #  43    0x54a27  1      
  nop                             #  44    0x54a28  1      
.L_54a60:                         #        0x54a29  0      
  cltq                            #  45    0x54a29  2      
  movl %ebx, %ebx                 #  46    0x54a2b  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  47    0x54a2d  8      
  movl %ebx, %ebx                 #  48    0x54a35  2      
  movb $0x20, 0x108(%r15,%rbx,1)  #  49    0x54a37  9      
  leaq (%rbx,%rax,1), %rax        #  50    0x54a40  4      
  nop                             #  51    0x54a44  1      
  movl %eax, %eax                 #  52    0x54a45  2      
  movb $0x20, 0x4(%r15,%rax,1)    #  53    0x54a47  6      
  nop                             #  54    0x54a4d  1      
  nop                             #  55    0x54a4e  1      
.L_54aa0:                         #        0x54a4f  0      
  cmpl $0xff, %edx                #  56    0x54a4f  3      
  leal 0x1(%rdx), %eax            #  57    0x54a52  3      
  je .L_54e40                     #  58    0x54a55  6      
  xchgw %ax, %ax                  #  59    0x54a5b  3      
  nop                             #  60    0x54a5e  1      
.L_54ac0:                         #        0x54a5f  0      
  movslq %edx, %rdx               #  61    0x54a5f  3      
  movl %ebx, %ebx                 #  62    0x54a62  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  63    0x54a64  8      
  movl %ebx, %ebx                 #  64    0x54a6c  2      
  movb $0x5b, 0x108(%r15,%rbx,1)  #  65    0x54a6e  9      
  leaq (%rbx,%rdx,1), %rdx        #  66    0x54a77  4      
  nop                             #  67    0x54a7b  1      
  movl %edx, %edx                 #  68    0x54a7c  2      
  movb $0x5b, 0x4(%r15,%rdx,1)    #  69    0x54a7e  6      
  movq (%rsp), %rdx               #  70    0x54a84  4      
  movl %edx, %edx                 #  71    0x54a88  2      
  movl 0x4(%r15,%rdx,1), %esi     #  72    0x54a8a  5      
  testq %rsi, %rsi                #  73    0x54a8f  3      
  je .L_54b20                     #  74    0x54a92  6      
  movl %ebx, %edi                 #  75    0x54a98  2      
  nop                             #  76    0x54a9a  1      
  callq .d_print_comp             #  77    0x54a9b  5      
  movl %ebx, %ebx                 #  78    0x54aa0  2      
  movl 0x104(%r15,%rbx,1), %eax   #  79    0x54aa2  8      
  nop                             #  80    0x54aaa  1      
  nop                             #  81    0x54aab  1      
.L_54b20:                         #        0x54aac  0      
  cmpl $0xff, %eax                #  82    0x54aac  3      
  leal 0x1(%rax), %edx            #  83    0x54aaf  3      
  je .L_54de0                     #  84    0x54ab2  6      
  nop                             #  85    0x54ab8  1      
  nop                             #  86    0x54ab9  1      
.L_54b40:                         #        0x54aba  0      
  cltq                            #  87    0x54aba  2      
  movl %ebx, %ebx                 #  88    0x54abc  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  89    0x54abe  8      
  movl %ebx, %ebx                 #  90    0x54ac6  2      
  movb $0x5d, 0x108(%r15,%rbx,1)  #  91    0x54ac8  9      
  leaq (%rbx,%rax,1), %rax        #  92    0x54ad1  4      
  nop                             #  93    0x54ad5  1      
  movl %eax, %eax                 #  94    0x54ad6  2      
  movb $0x5d, 0x4(%r15,%rax,1)    #  95    0x54ad8  6      
  addl $0x18, %esp                #  96    0x54ade  3      
  addq %r15, %rsp                 #  97    0x54ae1  3      
  popq %rbx                       #  98    0x54ae4  2      
  popq %r12                       #  99    0x54ae6  3      
  popq %r13                       #  100   0x54ae9  3      
  popq %r14                       #  101   0x54aec  3      
  popq %r11                       #  102   0x54aef  3      
  nop                             #  103   0x54af2  1      
  andl $0xffffffe0, %r11d         #  104   0x54af3  7      
  addq %r15, %r11                 #  105   0x54afa  3      
  jmpq %r11                       #  106   0x54afd  3      
  nop                             #  107   0x54b00  1      
  nop                             #  108   0x54b01  1      
.L_54ba0:                         #        0x54b02  0      
  movl %eax, %eax                 #  109   0x54b02  2      
  movl 0x4(%r15,%rax,1), %eax     #  110   0x54b04  5      
  movl %eax, %eax                 #  111   0x54b09  2      
  cmpl $0x26, (%r15,%rax,1)       #  112   0x54b0b  5      
  je .L_54ea0                     #  113   0x54b10  6      
  leal 0x4(%rbx), %edx            #  114   0x54b16  3      
  nop                             #  115   0x54b19  1      
  movl %ebx, %ebx                 #  116   0x54b1a  2      
  movl 0x104(%r15,%rbx,1), %eax   #  117   0x54b1c  8      
  movl $0x100229a3, %r12d         #  118   0x54b24  6      
  movq %rdx, 0x8(%rsp)            #  119   0x54b2a  5      
  jmpq .L_54c20                   #  120   0x54b2f  5      
  nop                             #  121   0x54b34  1      
.L_54be0:                         #        0x54b35  0      
  cltq                            #  122   0x54b35  2      
  addl $0x1, %r12d                #  123   0x54b37  4      
  movl %ebx, %ebx                 #  124   0x54b3b  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  125   0x54b3d  8      
  leaq (%rbx,%rax,1), %rax        #  126   0x54b45  4      
  cmpl $0x100229a5, %r12d         #  127   0x54b49  7      
  nop                             #  128   0x54b50  1      
  movl %ebx, %ebx                 #  129   0x54b51  2      
  movb %r13b, 0x108(%r15,%rbx,1)  #  130   0x54b53  8      
  movl %eax, %eax                 #  131   0x54b5b  2      
  movb %r13b, 0x4(%r15,%rax,1)    #  132   0x54b5d  5      
  je .L_54ca0                     #  133   0x54b62  6      
  movl %edx, %eax                 #  134   0x54b68  2      
  nop                             #  135   0x54b6a  1      
.L_54c20:                         #        0x54b6b  0      
  movl %r12d, %edx                #  136   0x54b6b  3      
  cmpl $0xff, %eax                #  137   0x54b6e  3      
  movl %edx, %edx                 #  138   0x54b71  2      
  movzbl (%r15,%rdx,1), %r13d     #  139   0x54b73  5      
  leal 0x1(%rax), %edx            #  140   0x54b78  3      
  jne .L_54be0                    #  141   0x54b7b  6      
  movl %ebx, %ebx                 #  142   0x54b81  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  143   0x54b83  8      
  xchgw %ax, %ax                  #  144   0x54b8b  3      
  movl %ebx, %ebx                 #  145   0x54b8e  2      
  movl 0x110(%r15,%rbx,1), %edx   #  146   0x54b90  8      
  movl %ebx, %ebx                 #  147   0x54b98  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  148   0x54b9a  9      
  movl %ebx, %ebx                 #  149   0x54ba3  2      
  movl 0x104(%r15,%rbx,1), %esi   #  150   0x54ba5  8      
  nop                             #  151   0x54bad  1      
  movl 0x8(%rsp), %edi            #  152   0x54bae  4      
  nop                             #  153   0x54bb2  1      
  nop                             #  154   0x54bb3  1      
  andl $0xffffffe0, %eax          #  155   0x54bb4  5      
  addq %r15, %rax                 #  156   0x54bb9  3      
  callq %rax                      #  157   0x54bbc  2      
  movl %ebx, %ebx                 #  158   0x54bbe  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  159   0x54bc0  12     
  movl $0x1, %edx                 #  160   0x54bcc  5      
  xorl %eax, %eax                 #  161   0x54bd1  2      
  jmpq .L_54be0                   #  162   0x54bd3  5      
  nop                             #  163   0x54bd8  1      
.L_54ca0:                         #        0x54bd9  0      
  xorl %edx, %edx                 #  164   0x54bd9  2      
  movl %r14d, %esi                #  165   0x54bdb  3      
  movl %ebx, %edi                 #  166   0x54bde  2      
  nop                             #  167   0x54be0  1      
  nop                             #  168   0x54be1  1      
  callq .d_print_mod_list         #  169   0x54be2  5      
  movl %ebx, %ebx                 #  170   0x54be7  2      
  movl 0x104(%r15,%rbx,1), %edx   #  171   0x54be9  8      
  cmpl $0xff, %edx                #  172   0x54bf1  3      
  leal 0x1(%rdx), %eax            #  173   0x54bf4  3      
  je .L_54d80                     #  174   0x54bf7  6      
  nop                             #  175   0x54bfd  1      
.L_54ce0:                         #        0x54bfe  0      
  movslq %edx, %rdx               #  176   0x54bfe  3      
  movl %ebx, %ebx                 #  177   0x54c01  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  178   0x54c03  8      
  movl %ebx, %ebx                 #  179   0x54c0b  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  180   0x54c0d  9      
  leaq (%rbx,%rdx,1), %rdx        #  181   0x54c16  4      
  nop                             #  182   0x54c1a  1      
  movl %edx, %edx                 #  183   0x54c1b  2      
  movb $0x29, 0x4(%r15,%rdx,1)    #  184   0x54c1d  6      
  jmpq .L_54a40                   #  185   0x54c23  5      
  nop                             #  186   0x54c28  1      
  nop                             #  187   0x54c29  1      
.L_54d20:                         #        0x54c2a  0      
  movl %ebx, %ebx                 #  188   0x54c2a  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  189   0x54c2c  8      
  movl %ebx, %ebx                 #  190   0x54c34  2      
  movl 0x110(%r15,%rbx,1), %edx   #  191   0x54c36  8      
  leal 0x4(%rbx), %edi            #  192   0x54c3e  3      
  nop                             #  193   0x54c41  1      
  movl %ebx, %ebx                 #  194   0x54c42  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  195   0x54c44  9      
  movl %ebx, %ebx                 #  196   0x54c4d  2      
  movl 0x104(%r15,%rbx,1), %esi   #  197   0x54c4f  8      
  nop                             #  198   0x54c57  1      
  andl $0xffffffe0, %eax          #  199   0x54c58  5      
  addq %r15, %rax                 #  200   0x54c5d  3      
  callq %rax                      #  201   0x54c60  2      
  movl %ebx, %ebx                 #  202   0x54c62  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  203   0x54c64  12     
  movl $0x1, %edx                 #  204   0x54c70  5      
  xorl %eax, %eax                 #  205   0x54c75  2      
  jmpq .L_54a60                   #  206   0x54c77  5      
  nop                             #  207   0x54c7c  1      
.L_54d80:                         #        0x54c7d  0      
  movl %ebx, %ebx                 #  208   0x54c7d  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  209   0x54c7f  8      
  movl %ebx, %ebx                 #  210   0x54c87  2      
  movl 0x110(%r15,%rbx,1), %edx   #  211   0x54c89  8      
  movl $0xff, %esi                #  212   0x54c91  5      
  nop                             #  213   0x54c96  1      
  movl %ebx, %ebx                 #  214   0x54c97  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  215   0x54c99  9      
  movl 0x8(%rsp), %edi            #  216   0x54ca2  4      
  nop                             #  217   0x54ca6  1      
  andl $0xffffffe0, %eax          #  218   0x54ca7  5      
  addq %r15, %rax                 #  219   0x54cac  3      
  callq %rax                      #  220   0x54caf  2      
  movl %ebx, %ebx                 #  221   0x54cb1  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  222   0x54cb3  12     
  movl $0x1, %eax                 #  223   0x54cbf  5      
  xorl %edx, %edx                 #  224   0x54cc4  2      
  jmpq .L_54ce0                   #  225   0x54cc6  5      
  nop                             #  226   0x54ccb  1      
.L_54de0:                         #        0x54ccc  0      
  movl %ebx, %ebx                 #  227   0x54ccc  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  228   0x54cce  8      
  movl %ebx, %ebx                 #  229   0x54cd6  2      
  movl 0x110(%r15,%rbx,1), %edx   #  230   0x54cd8  8      
  leal 0x4(%rbx), %edi            #  231   0x54ce0  3      
  nop                             #  232   0x54ce3  1      
  movl %ebx, %ebx                 #  233   0x54ce4  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  234   0x54ce6  9      
  movl %ebx, %ebx                 #  235   0x54cef  2      
  movl 0x104(%r15,%rbx,1), %esi   #  236   0x54cf1  8      
  nop                             #  237   0x54cf9  1      
  andl $0xffffffe0, %eax          #  238   0x54cfa  5      
  addq %r15, %rax                 #  239   0x54cff  3      
  callq %rax                      #  240   0x54d02  2      
  movl %ebx, %ebx                 #  241   0x54d04  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  242   0x54d06  12     
  movl $0x1, %edx                 #  243   0x54d12  5      
  xorl %eax, %eax                 #  244   0x54d17  2      
  jmpq .L_54b40                   #  245   0x54d19  5      
  nop                             #  246   0x54d1e  1      
.L_54e40:                         #        0x54d1f  0      
  movl %ebx, %ebx                 #  247   0x54d1f  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  248   0x54d21  8      
  movl %ebx, %ebx                 #  249   0x54d29  2      
  movl 0x110(%r15,%rbx,1), %edx   #  250   0x54d2b  8      
  leal 0x4(%rbx), %edi            #  251   0x54d33  3      
  nop                             #  252   0x54d36  1      
  movl %ebx, %ebx                 #  253   0x54d37  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  254   0x54d39  9      
  movl %ebx, %ebx                 #  255   0x54d42  2      
  movl 0x104(%r15,%rbx,1), %esi   #  256   0x54d44  8      
  nop                             #  257   0x54d4c  1      
  andl $0xffffffe0, %eax          #  258   0x54d4d  5      
  addq %r15, %rax                 #  259   0x54d52  3      
  callq %rax                      #  260   0x54d55  2      
  movl %ebx, %ebx                 #  261   0x54d57  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  262   0x54d59  12     
  movl $0x1, %eax                 #  263   0x54d65  5      
  xorl %edx, %edx                 #  264   0x54d6a  2      
  jmpq .L_54ac0                   #  265   0x54d6c  5      
  nop                             #  266   0x54d71  1      
.L_54ea0:                         #        0x54d72  0      
  xorl %edx, %edx                 #  267   0x54d72  2      
  movl %r14d, %esi                #  268   0x54d74  3      
  movl %ebx, %edi                 #  269   0x54d77  2      
  nop                             #  270   0x54d79  1      
  nop                             #  271   0x54d7a  1      
  callq .d_print_mod_list         #  272   0x54d7b  5      
  movl %ebx, %ebx                 #  273   0x54d80  2      
  movl 0x104(%r15,%rbx,1), %edx   #  274   0x54d82  8      
  jmpq .L_54aa0                   #  275   0x54d8a  5      
  xchgw %ax, %ax                  #  276   0x54d8f  3      
  nop                             #  277   0x54d92  1      
                                                           
.size d_print_array_type, .-d_print_array_type

