  .text
  .globl _setlocale_r
  .type _setlocale_r, @function

#! file-offset 0x7cb40
#! rip-offset  0x7cb40
#! capacity    1728 bytes

# Text                         #  Line  RIP      Bytes  
._setlocale_r:                 #        0x7cb40  0      
  pushq %r14                   #  1     0x7cb40  3      
  movl %edx, %r14d             #  2     0x7cb43  3      
  pushq %r13                   #  3     0x7cb46  3      
  pushq %r12                   #  4     0x7cb49  3      
  movl %edi, %r12d             #  5     0x7cb4c  3      
  pushq %rbx                   #  6     0x7cb4f  2      
  movl %esi, %ebx              #  7     0x7cb51  2      
  subl $0x28, %esp             #  8     0x7cb53  3      
  addq %r15, %rsp              #  9     0x7cb56  3      
  cmpl $0x6, %esi              #  10    0x7cb59  3      
  ja .L_7cd60                  #  11    0x7cb5c  6      
  xchgw %ax, %ax               #  12    0x7cb62  3      
  xorl %r13d, %r13d            #  13    0x7cb65  3      
  testq %r14, %r14             #  14    0x7cb68  3      
  je .L_7cf00                  #  15    0x7cb6b  6      
  nop                          #  16    0x7cb71  1      
  nop                          #  17    0x7cb72  1      
.L_7cb80:                      #        0x7cb73  0      
  leal 0x10030b00(%r13), %esi  #  18    0x7cb73  7      
  leal 0x10036b00(%r13), %edi  #  19    0x7cb7a  7      
  addl $0x20, %r13d            #  20    0x7cb81  4      
  nop                          #  21    0x7cb85  1      
  callq .strcpy                #  22    0x7cb86  5      
  cmpl $0xc0, %r13d            #  23    0x7cb8b  4      
  jne .L_7cb80                 #  24    0x7cb8f  6      
  movl %r14d, %r14d            #  25    0x7cb95  3      
  cmpb $0x0, (%r15,%r14,1)     #  26    0x7cb98  5      
  jne .L_7cd00                 #  27    0x7cb9d  6      
  testl %ebx, %ebx             #  28    0x7cba3  2      
  jne .L_7cf20                 #  29    0x7cba5  6      
  nop                          #  30    0x7cbab  1      
  movl $0x10036b00, %r13d      #  31    0x7cbac  6      
  movb $0x1, %bl               #  32    0x7cbb2  2      
  nop                          #  33    0x7cbb4  1      
  nop                          #  34    0x7cbb5  1      
.L_7cbe0:                      #        0x7cbb6  0      
  movl %ebx, %esi              #  35    0x7cbb6  2      
  movl %r12d, %edi             #  36    0x7cbb8  3      
  nop                          #  37    0x7cbbb  1      
  nop                          #  38    0x7cbbc  1      
  callq .__get_locale_env      #  39    0x7cbbd  5      
  movl %eax, %r14d             #  40    0x7cbc2  3      
  movl %r14d, %edi             #  41    0x7cbc5  3      
  nop                          #  42    0x7cbc8  1      
  nop                          #  43    0x7cbc9  1      
  callq .strlen                #  44    0x7cbca  5      
  cmpl $0x1f, %eax             #  45    0x7cbcf  3      
  ja .L_7cd60                  #  46    0x7cbd2  6      
  movl %r13d, %edi             #  47    0x7cbd8  3      
  movl %r14d, %esi             #  48    0x7cbdb  3      
  addl $0x1, %ebx              #  49    0x7cbde  3      
  nop                          #  50    0x7cbe1  1      
  callq .strcpy                #  51    0x7cbe2  5      
  addl $0x20, %r13d            #  52    0x7cbe7  4      
  cmpl $0x7, %ebx              #  53    0x7cbeb  3      
  jne .L_7cbe0                 #  54    0x7cbee  6      
  nop                          #  55    0x7cbf4  1      
  nop                          #  56    0x7cbf5  1      
.L_7cc60:                      #        0x7cbf6  0      
  xorl %r13d, %r13d            #  57    0x7cbf6  3      
  movl $0x1, %ebx              #  58    0x7cbf9  5      
  nop                          #  59    0x7cbfe  1      
  nop                          #  60    0x7cbff  1      
.L_7cc80:                      #        0x7cc00  0      
  leal 0x10030b00(%r13), %esi  #  61    0x7cc00  7      
  leal 0x10036be0(%r13), %edi  #  62    0x7cc07  7      
  nop                          #  63    0x7cc0e  1      
  callq .strcpy                #  64    0x7cc0f  5      
  movl %ebx, %esi              #  65    0x7cc14  2      
  movl %r12d, %edi             #  66    0x7cc16  3      
  nop                          #  67    0x7cc19  1      
  nop                          #  68    0x7cc1a  1      
  callq .loadlocale            #  69    0x7cc1b  5      
  testl %eax, %eax             #  70    0x7cc20  2      
  je .L_7cfa0                  #  71    0x7cc22  6      
  addl $0x1, %ebx              #  72    0x7cc28  3      
  addl $0x20, %r13d            #  73    0x7cc2b  4      
  cmpl $0x7, %ebx              #  74    0x7cc2f  3      
  jne .L_7cc80                 #  75    0x7cc32  6      
  nop                          #  76    0x7cc38  1      
.L_7cce0:                      #        0x7cc39  0      
  addl $0x28, %esp             #  77    0x7cc39  3      
  addq %r15, %rsp              #  78    0x7cc3c  3      
  popq %rbx                    #  79    0x7cc3f  2      
  popq %r12                    #  80    0x7cc41  3      
  popq %r13                    #  81    0x7cc44  3      
  popq %r14                    #  82    0x7cc47  3      
  jmpq .currentlocale          #  83    0x7cc4a  5      
  nop                          #  84    0x7cc4f  1      
.L_7cd00:                      #        0x7cc50  0      
  testl %ebx, %ebx             #  85    0x7cc50  2      
  je .L_7cda0                  #  86    0x7cc52  6      
  movl %r14d, %edi             #  87    0x7cc58  3      
  nop                          #  88    0x7cc5b  1      
  nop                          #  89    0x7cc5c  1      
  callq .strlen                #  90    0x7cc5d  5      
  cmpl $0x1f, %eax             #  91    0x7cc62  3      
  ja .L_7cd60                  #  92    0x7cc65  6      
  movl %ebx, %edi              #  93    0x7cc6b  2      
  movl $0x10036ae0, %eax       #  94    0x7cc6d  5      
  movl %r14d, %esi             #  95    0x7cc72  3      
  shll $0x5, %edi              #  96    0x7cc75  3      
  addl %eax, %edi              #  97    0x7cc78  2      
  nop                          #  98    0x7cc7a  1      
  callq .strcpy                #  99    0x7cc7b  5      
.L_7cd40:                      #        0x7cc80  0      
  addl $0x28, %esp             #  100   0x7cc80  3      
  addq %r15, %rsp              #  101   0x7cc83  3      
  movl %ebx, %esi              #  102   0x7cc86  2      
  movl %r12d, %edi             #  103   0x7cc88  3      
  popq %rbx                    #  104   0x7cc8b  2      
  popq %r12                    #  105   0x7cc8d  3      
  popq %r13                    #  106   0x7cc90  3      
  popq %r14                    #  107   0x7cc93  3      
  jmpq .loadlocale             #  108   0x7cc96  5      
  nop                          #  109   0x7cc9b  1      
.L_7cd60:                      #        0x7cc9c  0      
  movl %r12d, %r12d            #  110   0x7cc9c  3      
  movl $0x16, (%r15,%r12,1)    #  111   0x7cc9f  8      
  xorl %eax, %eax              #  112   0x7cca7  2      
  nop                          #  113   0x7cca9  1      
  nop                          #  114   0x7ccaa  1      
.L_7cd80:                      #        0x7ccab  0      
  addl $0x28, %esp             #  115   0x7ccab  3      
  addq %r15, %rsp              #  116   0x7ccae  3      
  popq %rbx                    #  117   0x7ccb1  2      
  popq %r12                    #  118   0x7ccb3  3      
  popq %r13                    #  119   0x7ccb6  3      
  popq %r14                    #  120   0x7ccb9  3      
  popq %r11                    #  121   0x7ccbc  3      
  andl $0xffffffe0, %r11d      #  122   0x7ccbf  7      
  addq %r15, %r11              #  123   0x7ccc6  3      
  jmpq %r11                    #  124   0x7ccc9  3      
  nop                          #  125   0x7cccc  1      
.L_7cda0:                      #        0x7cccd  0      
  movl $0x2f, %esi             #  126   0x7cccd  5      
  movl %r14d, %edi             #  127   0x7ccd2  3      
  nop                          #  128   0x7ccd5  1      
  nop                          #  129   0x7ccd6  1      
  callq .strchr                #  130   0x7ccd7  5      
  movl %eax, %ebx              #  131   0x7ccdc  2      
  testq %rbx, %rbx             #  132   0x7ccde  3      
  je .L_7d180                  #  133   0x7cce1  6      
  nop                          #  134   0x7cce7  1      
  nop                          #  135   0x7cce8  1      
.L_7cde0:                      #        0x7cce9  0      
  leal 0x1(%rbx), %eax         #  136   0x7cce9  3      
  movq %rbx, %rcx              #  137   0x7ccec  3      
  movl %eax, %eax              #  138   0x7ccef  2      
  movzbl (%r15,%rax,1), %edx   #  139   0x7ccf1  5      
  movq %rax, %rbx              #  140   0x7ccf6  3      
  cmpb $0x2f, %dl              #  141   0x7ccf9  3      
  je .L_7cde0                  #  142   0x7ccfc  6      
  testb %dl, %dl               #  143   0x7cd02  2      
  movq %rcx, %rbx              #  144   0x7cd04  3      
  movl $0x1, %r13d             #  145   0x7cd07  6      
  movl $0x10036b00, %ecx       #  146   0x7cd0d  5      
  je .L_7cd60                  #  147   0x7cd12  6      
  nop                          #  148   0x7cd18  1      
  nop                          #  149   0x7cd19  1      
.L_7ce20:                      #        0x7cd1a  0      
  movl %ebx, %edx              #  150   0x7cd1a  2      
  subl %r14d, %edx             #  151   0x7cd1c  3      
  cmpl $0x1f, %edx             #  152   0x7cd1f  3      
  jg .L_7cd60                  #  153   0x7cd22  6      
  addl $0x1, %edx              #  154   0x7cd28  3      
  movl %ecx, %edi              #  155   0x7cd2b  2      
  movl %r14d, %esi             #  156   0x7cd2d  3      
  movl %ecx, 0x8(%rsp)         #  157   0x7cd30  4      
  addl $0x1, %r13d             #  158   0x7cd34  4      
  xchgw %ax, %ax               #  159   0x7cd38  3      
  nop                          #  160   0x7cd3b  1      
  nop                          #  161   0x7cd3c  1      
  callq .strlcpy               #  162   0x7cd3d  5      
  movl %ebx, %ebx              #  163   0x7cd42  2      
  movzbl (%r15,%rbx,1), %edx   #  164   0x7cd44  5      
  movl 0x8(%rsp), %ecx         #  165   0x7cd49  4      
  cmpb $0x2f, %dl              #  166   0x7cd4d  3      
  jne .L_7cea0                 #  167   0x7cd50  6      
  nop                          #  168   0x7cd56  1      
  nop                          #  169   0x7cd57  1      
.L_7ce80:                      #        0x7cd58  0      
  addl $0x1, %ebx              #  170   0x7cd58  3      
  movl %ebx, %ebx              #  171   0x7cd5b  2      
  movzbl (%r15,%rbx,1), %edx   #  172   0x7cd5d  5      
  cmpb $0x2f, %dl              #  173   0x7cd62  3      
  je .L_7ce80                  #  174   0x7cd65  6      
  xchgw %ax, %ax               #  175   0x7cd6b  3      
  nop                          #  176   0x7cd6e  1      
.L_7cea0:                      #        0x7cd6f  0      
  testb %dl, %dl               #  177   0x7cd6f  2      
  movq %rbx, %r14              #  178   0x7cd71  3      
  je .L_7cee0                  #  179   0x7cd74  6      
  nop                          #  180   0x7cd7a  1      
  nop                          #  181   0x7cd7b  1      
.L_7cec0:                      #        0x7cd7c  0      
  addl $0x1, %ebx              #  182   0x7cd7c  3      
  movl %ebx, %ebx              #  183   0x7cd7f  2      
  movzbl (%r15,%rbx,1), %eax   #  184   0x7cd81  5      
  cmpb $0x2f, %al              #  185   0x7cd86  2      
  je .L_7cee0                  #  186   0x7cd88  6      
  testb %al, %al               #  187   0x7cd8e  2      
  jne .L_7cec0                 #  188   0x7cd90  6      
  nop                          #  189   0x7cd96  1      
.L_7cee0:                      #        0x7cd97  0      
  testb %dl, %dl               #  190   0x7cd97  2      
  je .L_7d100                  #  191   0x7cd99  6      
  addl $0x20, %ecx             #  192   0x7cd9f  3      
  cmpl $0x7, %r13d             #  193   0x7cda2  4      
  jne .L_7ce20                 #  194   0x7cda6  6      
  jmpq .L_7cc60                #  195   0x7cdac  5      
  nop                          #  196   0x7cdb1  1      
.L_7cf00:                      #        0x7cdb2  0      
  testl %esi, %esi             #  197   0x7cdb2  2      
  je .L_7cce0                  #  198   0x7cdb4  6      
  movl %esi, %eax              #  199   0x7cdba  2      
  shll $0x5, %eax              #  200   0x7cdbc  3      
  addl $0x10030ae0, %eax       #  201   0x7cdbf  5      
  jmpq .L_7cd80                #  202   0x7cdc4  5      
  nop                          #  203   0x7cdc9  1      
.L_7cf20:                      #        0x7cdca  0      
  movl %ebx, %esi              #  204   0x7cdca  2      
  movl %r12d, %edi             #  205   0x7cdcc  3      
  nop                          #  206   0x7cdcf  1      
  nop                          #  207   0x7cdd0  1      
  callq .__get_locale_env      #  208   0x7cdd1  5      
  movl %eax, %r13d             #  209   0x7cdd6  3      
  movl %r13d, %edi             #  210   0x7cdd9  3      
  nop                          #  211   0x7cddc  1      
  nop                          #  212   0x7cddd  1      
  callq .strlen                #  213   0x7cdde  5      
  cmpl $0x1f, %eax             #  214   0x7cde3  3      
  ja .L_7cd60                  #  215   0x7cde6  6      
  movl %ebx, %edi              #  216   0x7cdec  2      
  movl $0x10036ae0, %eax       #  217   0x7cdee  5      
  movl %r13d, %esi             #  218   0x7cdf3  3      
  shll $0x5, %edi              #  219   0x7cdf6  3      
  addl %eax, %edi              #  220   0x7cdf9  2      
  nop                          #  221   0x7cdfb  1      
  callq .strcpy                #  222   0x7cdfc  5      
  jmpq .L_7cd40                #  223   0x7ce01  5      
  nop                          #  224   0x7ce06  1      
  nop                          #  225   0x7ce07  1      
.L_7cfa0:                      #        0x7ce08  0      
  movl %r12d, %r12d            #  226   0x7ce08  3      
  movl (%r15,%r12,1), %eax     #  227   0x7ce0b  4      
  cmpl $0x1, %ebx              #  228   0x7ce0f  3      
  movl %eax, 0x1c(%rsp)        #  229   0x7ce12  4      
  je .L_7d060                  #  230   0x7ce16  6      
  movl $0x10036bc0, %r14d      #  231   0x7ce1c  6      
  movl $0x10036b00, %edx       #  232   0x7ce22  5      
  nop                          #  233   0x7ce27  1      
  movl $0x1, %r13d             #  234   0x7ce28  6      
  addl $0x20, %r14d            #  235   0x7ce2e  4      
  nop                          #  236   0x7ce32  1      
  nop                          #  237   0x7ce33  1      
.L_7cfe0:                      #        0x7ce34  0      
  movl %edx, %eax              #  238   0x7ce34  2      
  movl %r14d, %esi             #  239   0x7ce36  3      
  movl %edx, 0x8(%rsp)         #  240   0x7ce39  4      
  movl %eax, %edi              #  241   0x7ce3d  2      
  movq %rax, 0x10(%rsp)        #  242   0x7ce3f  5      
  nop                          #  243   0x7ce44  1      
  callq .strcpy                #  244   0x7ce45  5      
  movl %r13d, %esi             #  245   0x7ce4a  3      
  movl %r12d, %edi             #  246   0x7ce4d  3      
  nop                          #  247   0x7ce50  1      
  nop                          #  248   0x7ce51  1      
  callq .loadlocale            #  249   0x7ce52  5      
  testl %eax, %eax             #  250   0x7ce57  2      
  movl 0x8(%rsp), %edx         #  251   0x7ce59  4      
  je .L_7d0a0                  #  252   0x7ce5d  6      
  nop                          #  253   0x7ce63  1      
  nop                          #  254   0x7ce64  1      
.L_7d040:                      #        0x7ce65  0      
  addl $0x1, %r13d             #  255   0x7ce65  4      
  addl $0x20, %edx             #  256   0x7ce69  3      
  addl $0x20, %r14d            #  257   0x7ce6c  4      
  cmpl %ebx, %r13d             #  258   0x7ce70  3      
  jl .L_7cfe0                  #  259   0x7ce73  6      
  nop                          #  260   0x7ce79  1      
  nop                          #  261   0x7ce7a  1      
.L_7d060:                      #        0x7ce7b  0      
  movl 0x1c(%rsp), %eax        #  262   0x7ce7b  4      
  movl %r12d, %r12d            #  263   0x7ce7f  3      
  movl %eax, (%r15,%r12,1)     #  264   0x7ce82  4      
  addl $0x28, %esp             #  265   0x7ce86  3      
  addq %r15, %rsp              #  266   0x7ce89  3      
  xorl %eax, %eax              #  267   0x7ce8c  2      
  popq %rbx                    #  268   0x7ce8e  2      
  popq %r12                    #  269   0x7ce90  3      
  popq %r13                    #  270   0x7ce93  3      
  popq %r14                    #  271   0x7ce96  3      
  popq %r11                    #  272   0x7ce99  3      
  nop                          #  273   0x7ce9c  1      
  andl $0xffffffe0, %r11d      #  274   0x7ce9d  7      
  addq %r15, %r11              #  275   0x7cea4  3      
  jmpq %r11                    #  276   0x7cea7  3      
  nop                          #  277   0x7ceaa  1      
  nop                          #  278   0x7ceab  1      
.L_7d0a0:                      #        0x7ceac  0      
  movl 0x10(%rsp), %edi        #  279   0x7ceac  4      
  movl $0x10024370, %esi       #  280   0x7ceb0  5      
  nop                          #  281   0x7ceb5  1      
  nop                          #  282   0x7ceb6  1      
  callq .strcpy                #  283   0x7ceb7  5      
  movl %r13d, %esi             #  284   0x7cebc  3      
  movl %r12d, %edi             #  285   0x7cebf  3      
  nop                          #  286   0x7cec2  1      
  nop                          #  287   0x7cec3  1      
  callq .loadlocale            #  288   0x7cec4  5      
  movl 0x8(%rsp), %edx         #  289   0x7cec9  4      
  jmpq .L_7d040                #  290   0x7cecd  5      
  nop                          #  291   0x7ced2  1      
  nop                          #  292   0x7ced3  1      
.L_7d100:                      #        0x7ced4  0      
  cmpl $0x6, %r13d             #  293   0x7ced4  4      
  jg .L_7cc60                  #  294   0x7ced8  6      
  movl %r13d, %r14d            #  295   0x7cede  3      
  movl %r13d, %ebx             #  296   0x7cee1  3      
  movl $0x10036ae0, %eax       #  297   0x7cee4  5      
  shll $0x5, %r14d             #  298   0x7cee9  4      
  shll $0x5, %ebx              #  299   0x7ceed  3      
  addl %eax, %r14d             #  300   0x7cef0  3      
  nop                          #  301   0x7cef3  1      
  addl $0x10036ac0, %ebx       #  302   0x7cef4  6      
  nop                          #  303   0x7cefa  1      
  nop                          #  304   0x7cefb  1      
.L_7d140:                      #        0x7cefc  0      
  movl %ebx, %esi              #  305   0x7cefc  2      
  movl %r14d, %edi             #  306   0x7cefe  3      
  addl $0x1, %r13d             #  307   0x7cf01  4      
  nop                          #  308   0x7cf05  1      
  nop                          #  309   0x7cf06  1      
  callq .strcpy                #  310   0x7cf07  5      
  addl $0x20, %r14d            #  311   0x7cf0c  4      
  addl $0x20, %ebx             #  312   0x7cf10  3      
  cmpl $0x6, %r13d             #  313   0x7cf13  4      
  jle .L_7d140                 #  314   0x7cf17  6      
  jmpq .L_7cc60                #  315   0x7cf1d  5      
  nop                          #  316   0x7cf22  1      
.L_7d180:                      #        0x7cf23  0      
  movl %r14d, %edi             #  317   0x7cf23  3      
  movl $0x10036b00, %ebx       #  318   0x7cf26  5      
  nop                          #  319   0x7cf2b  1      
  nop                          #  320   0x7cf2c  1      
  callq .strlen                #  321   0x7cf2d  5      
  cmpl $0x1f, %eax             #  322   0x7cf32  3      
  ja .L_7cd60                  #  323   0x7cf35  6      
  nop                          #  324   0x7cf3b  1      
  nop                          #  325   0x7cf3c  1      
.L_7d1c0:                      #        0x7cf3d  0      
  movl %ebx, %edi              #  326   0x7cf3d  2      
  movl %r14d, %esi             #  327   0x7cf3f  3      
  addl $0x20, %ebx             #  328   0x7cf42  3      
  nop                          #  329   0x7cf45  1      
  nop                          #  330   0x7cf46  1      
  callq .strcpy                #  331   0x7cf47  5      
  cmpl $0x10036bc0, %ebx       #  332   0x7cf4c  6      
  jne .L_7d1c0                 #  333   0x7cf52  6      
  jmpq .L_7cc60                #  334   0x7cf58  5      
  nop                          #  335   0x7cf5d  1      
  nop                          #  336   0x7cf5e  1      
                                                        
.size _setlocale_r, .-_setlocale_r

