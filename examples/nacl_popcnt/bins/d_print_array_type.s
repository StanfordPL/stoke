  .text
  .globl d_print_array_type
  .type d_print_array_type, @function

#! file-offset 0x549c0
#! rip-offset  0x549c0
#! capacity    1344 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_array_type:              #        0x549c0  0      
  pushq %r14                      #  1     0x549c0  3      
  movl %edx, %r14d                #  2     0x549c3  3      
  movl %esi, %esi                 #  3     0x549c6  2      
  pushq %r13                      #  4     0x549c8  3      
  pushq %r12                      #  5     0x549cb  3      
  pushq %rbx                      #  6     0x549ce  2      
  movl %edi, %ebx                 #  7     0x549d0  2      
  subl $0x18, %esp                #  8     0x549d2  3      
  addq %r15, %rsp                 #  9     0x549d5  3      
  testq %r14, %r14                #  10    0x549d8  3      
  movq %rsi, (%rsp)               #  11    0x549db  4      
  nop                             #  12    0x549df  1      
  je .L_54a40                     #  13    0x549e0  6      
  movl %r14d, %r14d               #  14    0x549e6  3      
  movl 0x8(%r15,%r14,1), %r8d     #  15    0x549e9  5      
  movq %r14, %rax                 #  16    0x549ee  3      
  testl %r8d, %r8d                #  17    0x549f1  3      
  jne .L_54a20                    #  18    0x549f4  6      
  jmpq .L_54bc0                   #  19    0x549fa  5      
  nop                             #  20    0x549ff  1      
.L_54a00:                         #        0x54a00  0      
  movl %eax, %eax                 #  21    0x54a00  2      
  movl 0x8(%r15,%rax,1), %edi     #  22    0x54a02  5      
  testl %edi, %edi                #  23    0x54a07  2      
  je .L_54bc0                     #  24    0x54a09  6      
  xchgw %ax, %ax                  #  25    0x54a0f  3      
  nop                             #  26    0x54a12  1      
.L_54a20:                         #        0x54a13  0      
  movl %eax, %eax                 #  27    0x54a13  2      
  movl (%r15,%rax,1), %eax        #  28    0x54a15  4      
  testq %rax, %rax                #  29    0x54a19  3      
  jne .L_54a00                    #  30    0x54a1c  6      
  xorl %edx, %edx                 #  31    0x54a22  2      
  movl %r14d, %esi                #  32    0x54a24  3      
  movl %ebx, %edi                 #  33    0x54a27  2      
  nop                             #  34    0x54a29  1      
  callq .d_print_mod_list         #  35    0x54a2a  5      
.L_54a40:                         #        0x54a2f  0      
  movl %ebx, %ebx                 #  36    0x54a2f  2      
  movl 0x104(%r15,%rbx,1), %eax   #  37    0x54a31  8      
  nop                             #  38    0x54a39  1      
  nop                             #  39    0x54a3a  1      
.L_54a60:                         #        0x54a3b  0      
  cmpl $0xff, %eax                #  40    0x54a3b  3      
  leal 0x1(%rax), %edx            #  41    0x54a3e  3      
  je .L_54d40                     #  42    0x54a41  6      
  nop                             #  43    0x54a47  1      
  nop                             #  44    0x54a48  1      
.L_54a80:                         #        0x54a49  0      
  cltq                            #  45    0x54a49  2      
  movl %ebx, %ebx                 #  46    0x54a4b  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  47    0x54a4d  8      
  movl %ebx, %ebx                 #  48    0x54a55  2      
  movb $0x20, 0x108(%r15,%rbx,1)  #  49    0x54a57  9      
  leaq (%rbx,%rax,1), %rax        #  50    0x54a60  4      
  nop                             #  51    0x54a64  1      
  movl %eax, %eax                 #  52    0x54a65  2      
  movb $0x20, 0x4(%r15,%rax,1)    #  53    0x54a67  6      
  nop                             #  54    0x54a6d  1      
  nop                             #  55    0x54a6e  1      
.L_54ac0:                         #        0x54a6f  0      
  cmpl $0xff, %edx                #  56    0x54a6f  3      
  leal 0x1(%rdx), %eax            #  57    0x54a72  3      
  je .L_54e60                     #  58    0x54a75  6      
  xchgw %ax, %ax                  #  59    0x54a7b  3      
  nop                             #  60    0x54a7e  1      
.L_54ae0:                         #        0x54a7f  0      
  movslq %edx, %rdx               #  61    0x54a7f  3      
  movl %ebx, %ebx                 #  62    0x54a82  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  63    0x54a84  8      
  movl %ebx, %ebx                 #  64    0x54a8c  2      
  movb $0x5b, 0x108(%r15,%rbx,1)  #  65    0x54a8e  9      
  leaq (%rbx,%rdx,1), %rdx        #  66    0x54a97  4      
  nop                             #  67    0x54a9b  1      
  movl %edx, %edx                 #  68    0x54a9c  2      
  movb $0x5b, 0x4(%r15,%rdx,1)    #  69    0x54a9e  6      
  movq (%rsp), %rdx               #  70    0x54aa4  4      
  movl %edx, %edx                 #  71    0x54aa8  2      
  movl 0x4(%r15,%rdx,1), %esi     #  72    0x54aaa  5      
  testq %rsi, %rsi                #  73    0x54aaf  3      
  je .L_54b40                     #  74    0x54ab2  6      
  movl %ebx, %edi                 #  75    0x54ab8  2      
  nop                             #  76    0x54aba  1      
  callq .d_print_comp             #  77    0x54abb  5      
  movl %ebx, %ebx                 #  78    0x54ac0  2      
  movl 0x104(%r15,%rbx,1), %eax   #  79    0x54ac2  8      
  nop                             #  80    0x54aca  1      
  nop                             #  81    0x54acb  1      
.L_54b40:                         #        0x54acc  0      
  cmpl $0xff, %eax                #  82    0x54acc  3      
  leal 0x1(%rax), %edx            #  83    0x54acf  3      
  je .L_54e00                     #  84    0x54ad2  6      
  nop                             #  85    0x54ad8  1      
  nop                             #  86    0x54ad9  1      
.L_54b60:                         #        0x54ada  0      
  cltq                            #  87    0x54ada  2      
  movl %ebx, %ebx                 #  88    0x54adc  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  89    0x54ade  8      
  movl %ebx, %ebx                 #  90    0x54ae6  2      
  movb $0x5d, 0x108(%r15,%rbx,1)  #  91    0x54ae8  9      
  leaq (%rbx,%rax,1), %rax        #  92    0x54af1  4      
  nop                             #  93    0x54af5  1      
  movl %eax, %eax                 #  94    0x54af6  2      
  movb $0x5d, 0x4(%r15,%rax,1)    #  95    0x54af8  6      
  addl $0x18, %esp                #  96    0x54afe  3      
  addq %r15, %rsp                 #  97    0x54b01  3      
  popq %rbx                       #  98    0x54b04  2      
  popq %r12                       #  99    0x54b06  3      
  popq %r13                       #  100   0x54b09  3      
  popq %r14                       #  101   0x54b0c  3      
  popq %r11                       #  102   0x54b0f  3      
  nop                             #  103   0x54b12  1      
  andl $0xffffffe0, %r11d         #  104   0x54b13  7      
  addq %r15, %r11                 #  105   0x54b1a  3      
  jmpq %r11                       #  106   0x54b1d  3      
  nop                             #  107   0x54b20  1      
  nop                             #  108   0x54b21  1      
.L_54bc0:                         #        0x54b22  0      
  movl %eax, %eax                 #  109   0x54b22  2      
  movl 0x4(%r15,%rax,1), %eax     #  110   0x54b24  5      
  movl %eax, %eax                 #  111   0x54b29  2      
  cmpl $0x26, (%r15,%rax,1)       #  112   0x54b2b  5      
  je .L_54ec0                     #  113   0x54b30  6      
  leal 0x4(%rbx), %edx            #  114   0x54b36  3      
  nop                             #  115   0x54b39  1      
  movl %ebx, %ebx                 #  116   0x54b3a  2      
  movl 0x104(%r15,%rbx,1), %eax   #  117   0x54b3c  8      
  movl $0x100229a3, %r12d         #  118   0x54b44  6      
  movq %rdx, 0x8(%rsp)            #  119   0x54b4a  5      
  jmpq .L_54c40                   #  120   0x54b4f  5      
  nop                             #  121   0x54b54  1      
.L_54c00:                         #        0x54b55  0      
  cltq                            #  122   0x54b55  2      
  addl $0x1, %r12d                #  123   0x54b57  4      
  movl %ebx, %ebx                 #  124   0x54b5b  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  125   0x54b5d  8      
  leaq (%rbx,%rax,1), %rax        #  126   0x54b65  4      
  cmpl $0x100229a5, %r12d         #  127   0x54b69  7      
  nop                             #  128   0x54b70  1      
  movl %ebx, %ebx                 #  129   0x54b71  2      
  movb %r13b, 0x108(%r15,%rbx,1)  #  130   0x54b73  8      
  movl %eax, %eax                 #  131   0x54b7b  2      
  movb %r13b, 0x4(%r15,%rax,1)    #  132   0x54b7d  5      
  je .L_54cc0                     #  133   0x54b82  6      
  movl %edx, %eax                 #  134   0x54b88  2      
  nop                             #  135   0x54b8a  1      
.L_54c40:                         #        0x54b8b  0      
  movl %r12d, %edx                #  136   0x54b8b  3      
  cmpl $0xff, %eax                #  137   0x54b8e  3      
  movl %edx, %edx                 #  138   0x54b91  2      
  movzbl (%r15,%rdx,1), %r13d     #  139   0x54b93  5      
  leal 0x1(%rax), %edx            #  140   0x54b98  3      
  jne .L_54c00                    #  141   0x54b9b  6      
  movl %ebx, %ebx                 #  142   0x54ba1  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  143   0x54ba3  8      
  xchgw %ax, %ax                  #  144   0x54bab  3      
  movl %ebx, %ebx                 #  145   0x54bae  2      
  movl 0x110(%r15,%rbx,1), %edx   #  146   0x54bb0  8      
  movl %ebx, %ebx                 #  147   0x54bb8  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  148   0x54bba  9      
  movl %ebx, %ebx                 #  149   0x54bc3  2      
  movl 0x104(%r15,%rbx,1), %esi   #  150   0x54bc5  8      
  nop                             #  151   0x54bcd  1      
  movl 0x8(%rsp), %edi            #  152   0x54bce  4      
  nop                             #  153   0x54bd2  1      
  nop                             #  154   0x54bd3  1      
  andl $0xffffffe0, %eax          #  155   0x54bd4  5      
  addq %r15, %rax                 #  156   0x54bd9  3      
  callq %rax                      #  157   0x54bdc  2      
  movl %ebx, %ebx                 #  158   0x54bde  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  159   0x54be0  12     
  movl $0x1, %edx                 #  160   0x54bec  5      
  xorl %eax, %eax                 #  161   0x54bf1  2      
  jmpq .L_54c00                   #  162   0x54bf3  5      
  nop                             #  163   0x54bf8  1      
.L_54cc0:                         #        0x54bf9  0      
  xorl %edx, %edx                 #  164   0x54bf9  2      
  movl %r14d, %esi                #  165   0x54bfb  3      
  movl %ebx, %edi                 #  166   0x54bfe  2      
  nop                             #  167   0x54c00  1      
  nop                             #  168   0x54c01  1      
  callq .d_print_mod_list         #  169   0x54c02  5      
  movl %ebx, %ebx                 #  170   0x54c07  2      
  movl 0x104(%r15,%rbx,1), %edx   #  171   0x54c09  8      
  cmpl $0xff, %edx                #  172   0x54c11  3      
  leal 0x1(%rdx), %eax            #  173   0x54c14  3      
  je .L_54da0                     #  174   0x54c17  6      
  nop                             #  175   0x54c1d  1      
.L_54d00:                         #        0x54c1e  0      
  movslq %edx, %rdx               #  176   0x54c1e  3      
  movl %ebx, %ebx                 #  177   0x54c21  2      
  movl %eax, 0x104(%r15,%rbx,1)   #  178   0x54c23  8      
  movl %ebx, %ebx                 #  179   0x54c2b  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  180   0x54c2d  9      
  leaq (%rbx,%rdx,1), %rdx        #  181   0x54c36  4      
  nop                             #  182   0x54c3a  1      
  movl %edx, %edx                 #  183   0x54c3b  2      
  movb $0x29, 0x4(%r15,%rdx,1)    #  184   0x54c3d  6      
  jmpq .L_54a60                   #  185   0x54c43  5      
  nop                             #  186   0x54c48  1      
  nop                             #  187   0x54c49  1      
.L_54d40:                         #        0x54c4a  0      
  movl %ebx, %ebx                 #  188   0x54c4a  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  189   0x54c4c  8      
  movl %ebx, %ebx                 #  190   0x54c54  2      
  movl 0x110(%r15,%rbx,1), %edx   #  191   0x54c56  8      
  leal 0x4(%rbx), %edi            #  192   0x54c5e  3      
  nop                             #  193   0x54c61  1      
  movl %ebx, %ebx                 #  194   0x54c62  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  195   0x54c64  9      
  movl %ebx, %ebx                 #  196   0x54c6d  2      
  movl 0x104(%r15,%rbx,1), %esi   #  197   0x54c6f  8      
  nop                             #  198   0x54c77  1      
  andl $0xffffffe0, %eax          #  199   0x54c78  5      
  addq %r15, %rax                 #  200   0x54c7d  3      
  callq %rax                      #  201   0x54c80  2      
  movl %ebx, %ebx                 #  202   0x54c82  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  203   0x54c84  12     
  movl $0x1, %edx                 #  204   0x54c90  5      
  xorl %eax, %eax                 #  205   0x54c95  2      
  jmpq .L_54a80                   #  206   0x54c97  5      
  nop                             #  207   0x54c9c  1      
.L_54da0:                         #        0x54c9d  0      
  movl %ebx, %ebx                 #  208   0x54c9d  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  209   0x54c9f  8      
  movl %ebx, %ebx                 #  210   0x54ca7  2      
  movl 0x110(%r15,%rbx,1), %edx   #  211   0x54ca9  8      
  movl $0xff, %esi                #  212   0x54cb1  5      
  nop                             #  213   0x54cb6  1      
  movl %ebx, %ebx                 #  214   0x54cb7  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  215   0x54cb9  9      
  movl 0x8(%rsp), %edi            #  216   0x54cc2  4      
  nop                             #  217   0x54cc6  1      
  andl $0xffffffe0, %eax          #  218   0x54cc7  5      
  addq %r15, %rax                 #  219   0x54ccc  3      
  callq %rax                      #  220   0x54ccf  2      
  movl %ebx, %ebx                 #  221   0x54cd1  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  222   0x54cd3  12     
  movl $0x1, %eax                 #  223   0x54cdf  5      
  xorl %edx, %edx                 #  224   0x54ce4  2      
  jmpq .L_54d00                   #  225   0x54ce6  5      
  nop                             #  226   0x54ceb  1      
.L_54e00:                         #        0x54cec  0      
  movl %ebx, %ebx                 #  227   0x54cec  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  228   0x54cee  8      
  movl %ebx, %ebx                 #  229   0x54cf6  2      
  movl 0x110(%r15,%rbx,1), %edx   #  230   0x54cf8  8      
  leal 0x4(%rbx), %edi            #  231   0x54d00  3      
  nop                             #  232   0x54d03  1      
  movl %ebx, %ebx                 #  233   0x54d04  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  234   0x54d06  9      
  movl %ebx, %ebx                 #  235   0x54d0f  2      
  movl 0x104(%r15,%rbx,1), %esi   #  236   0x54d11  8      
  nop                             #  237   0x54d19  1      
  andl $0xffffffe0, %eax          #  238   0x54d1a  5      
  addq %r15, %rax                 #  239   0x54d1f  3      
  callq %rax                      #  240   0x54d22  2      
  movl %ebx, %ebx                 #  241   0x54d24  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  242   0x54d26  12     
  movl $0x1, %edx                 #  243   0x54d32  5      
  xorl %eax, %eax                 #  244   0x54d37  2      
  jmpq .L_54b60                   #  245   0x54d39  5      
  nop                             #  246   0x54d3e  1      
.L_54e60:                         #        0x54d3f  0      
  movl %ebx, %ebx                 #  247   0x54d3f  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  248   0x54d41  8      
  movl %ebx, %ebx                 #  249   0x54d49  2      
  movl 0x110(%r15,%rbx,1), %edx   #  250   0x54d4b  8      
  leal 0x4(%rbx), %edi            #  251   0x54d53  3      
  nop                             #  252   0x54d56  1      
  movl %ebx, %ebx                 #  253   0x54d57  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  254   0x54d59  9      
  movl %ebx, %ebx                 #  255   0x54d62  2      
  movl 0x104(%r15,%rbx,1), %esi   #  256   0x54d64  8      
  nop                             #  257   0x54d6c  1      
  andl $0xffffffe0, %eax          #  258   0x54d6d  5      
  addq %r15, %rax                 #  259   0x54d72  3      
  callq %rax                      #  260   0x54d75  2      
  movl %ebx, %ebx                 #  261   0x54d77  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  262   0x54d79  12     
  movl $0x1, %eax                 #  263   0x54d85  5      
  xorl %edx, %edx                 #  264   0x54d8a  2      
  jmpq .L_54ae0                   #  265   0x54d8c  5      
  nop                             #  266   0x54d91  1      
.L_54ec0:                         #        0x54d92  0      
  xorl %edx, %edx                 #  267   0x54d92  2      
  movl %r14d, %esi                #  268   0x54d94  3      
  movl %ebx, %edi                 #  269   0x54d97  2      
  nop                             #  270   0x54d99  1      
  nop                             #  271   0x54d9a  1      
  callq .d_print_mod_list         #  272   0x54d9b  5      
  movl %ebx, %ebx                 #  273   0x54da0  2      
  movl 0x104(%r15,%rbx,1), %edx   #  274   0x54da2  8      
  jmpq .L_54ac0                   #  275   0x54daa  5      
  xchgw %ax, %ax                  #  276   0x54daf  3      
  nop                             #  277   0x54db2  1      
                                                           
.size d_print_array_type, .-d_print_array_type

