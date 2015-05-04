  .text
  .globl _setlocale_r
  .type _setlocale_r, @function

#! file-offset 0x7cbc0
#! rip-offset  0x7cbc0
#! capacity    1728 bytes

# Text                         #  Line  RIP      Bytes  
._setlocale_r:                 #        0x7cbc0  0      
  pushq %r14                   #  1     0x7cbc0  3      
  movl %edx, %r14d             #  2     0x7cbc3  3      
  pushq %r13                   #  3     0x7cbc6  3      
  pushq %r12                   #  4     0x7cbc9  3      
  movl %edi, %r12d             #  5     0x7cbcc  3      
  pushq %rbx                   #  6     0x7cbcf  2      
  movl %esi, %ebx              #  7     0x7cbd1  2      
  subl $0x28, %esp             #  8     0x7cbd3  3      
  addq %r15, %rsp              #  9     0x7cbd6  3      
  cmpl $0x6, %esi              #  10    0x7cbd9  3      
  ja .L_7cde0                  #  11    0x7cbdc  6      
  xchgw %ax, %ax               #  12    0x7cbe2  3      
  xorl %r13d, %r13d            #  13    0x7cbe5  3      
  testq %r14, %r14             #  14    0x7cbe8  3      
  je .L_7cf80                  #  15    0x7cbeb  6      
  nop                          #  16    0x7cbf1  1      
  nop                          #  17    0x7cbf2  1      
.L_7cc00:                      #        0x7cbf3  0      
  leal 0x10030b00(%r13), %esi  #  18    0x7cbf3  7      
  leal 0x10036b00(%r13), %edi  #  19    0x7cbfa  7      
  addl $0x20, %r13d            #  20    0x7cc01  4      
  nop                          #  21    0x7cc05  1      
  callq .strcpy                #  22    0x7cc06  5      
  cmpl $0xc0, %r13d            #  23    0x7cc0b  4      
  jne .L_7cc00                 #  24    0x7cc0f  6      
  movl %r14d, %r14d            #  25    0x7cc15  3      
  cmpb $0x0, (%r15,%r14,1)     #  26    0x7cc18  5      
  jne .L_7cd80                 #  27    0x7cc1d  6      
  testl %ebx, %ebx             #  28    0x7cc23  2      
  jne .L_7cfa0                 #  29    0x7cc25  6      
  nop                          #  30    0x7cc2b  1      
  movl $0x10036b00, %r13d      #  31    0x7cc2c  6      
  movb $0x1, %bl               #  32    0x7cc32  2      
  nop                          #  33    0x7cc34  1      
  nop                          #  34    0x7cc35  1      
.L_7cc60:                      #        0x7cc36  0      
  movl %ebx, %esi              #  35    0x7cc36  2      
  movl %r12d, %edi             #  36    0x7cc38  3      
  nop                          #  37    0x7cc3b  1      
  nop                          #  38    0x7cc3c  1      
  callq .__get_locale_env      #  39    0x7cc3d  5      
  movl %eax, %r14d             #  40    0x7cc42  3      
  movl %r14d, %edi             #  41    0x7cc45  3      
  nop                          #  42    0x7cc48  1      
  nop                          #  43    0x7cc49  1      
  callq .strlen                #  44    0x7cc4a  5      
  cmpl $0x1f, %eax             #  45    0x7cc4f  3      
  ja .L_7cde0                  #  46    0x7cc52  6      
  movl %r13d, %edi             #  47    0x7cc58  3      
  movl %r14d, %esi             #  48    0x7cc5b  3      
  addl $0x1, %ebx              #  49    0x7cc5e  3      
  nop                          #  50    0x7cc61  1      
  callq .strcpy                #  51    0x7cc62  5      
  addl $0x20, %r13d            #  52    0x7cc67  4      
  cmpl $0x7, %ebx              #  53    0x7cc6b  3      
  jne .L_7cc60                 #  54    0x7cc6e  6      
  nop                          #  55    0x7cc74  1      
  nop                          #  56    0x7cc75  1      
.L_7cce0:                      #        0x7cc76  0      
  xorl %r13d, %r13d            #  57    0x7cc76  3      
  movl $0x1, %ebx              #  58    0x7cc79  5      
  nop                          #  59    0x7cc7e  1      
  nop                          #  60    0x7cc7f  1      
.L_7cd00:                      #        0x7cc80  0      
  leal 0x10030b00(%r13), %esi  #  61    0x7cc80  7      
  leal 0x10036be0(%r13), %edi  #  62    0x7cc87  7      
  nop                          #  63    0x7cc8e  1      
  callq .strcpy                #  64    0x7cc8f  5      
  movl %ebx, %esi              #  65    0x7cc94  2      
  movl %r12d, %edi             #  66    0x7cc96  3      
  nop                          #  67    0x7cc99  1      
  nop                          #  68    0x7cc9a  1      
  callq .loadlocale            #  69    0x7cc9b  5      
  testl %eax, %eax             #  70    0x7cca0  2      
  je .L_7d020                  #  71    0x7cca2  6      
  addl $0x1, %ebx              #  72    0x7cca8  3      
  addl $0x20, %r13d            #  73    0x7ccab  4      
  cmpl $0x7, %ebx              #  74    0x7ccaf  3      
  jne .L_7cd00                 #  75    0x7ccb2  6      
  nop                          #  76    0x7ccb8  1      
.L_7cd60:                      #        0x7ccb9  0      
  addl $0x28, %esp             #  77    0x7ccb9  3      
  addq %r15, %rsp              #  78    0x7ccbc  3      
  popq %rbx                    #  79    0x7ccbf  2      
  popq %r12                    #  80    0x7ccc1  3      
  popq %r13                    #  81    0x7ccc4  3      
  popq %r14                    #  82    0x7ccc7  3      
  jmpq .currentlocale          #  83    0x7ccca  5      
  nop                          #  84    0x7cccf  1      
.L_7cd80:                      #        0x7ccd0  0      
  testl %ebx, %ebx             #  85    0x7ccd0  2      
  je .L_7ce20                  #  86    0x7ccd2  6      
  movl %r14d, %edi             #  87    0x7ccd8  3      
  nop                          #  88    0x7ccdb  1      
  nop                          #  89    0x7ccdc  1      
  callq .strlen                #  90    0x7ccdd  5      
  cmpl $0x1f, %eax             #  91    0x7cce2  3      
  ja .L_7cde0                  #  92    0x7cce5  6      
  movl %ebx, %edi              #  93    0x7cceb  2      
  movl $0x10036ae0, %eax       #  94    0x7cced  5      
  movl %r14d, %esi             #  95    0x7ccf2  3      
  shll $0x5, %edi              #  96    0x7ccf5  3      
  addl %eax, %edi              #  97    0x7ccf8  2      
  nop                          #  98    0x7ccfa  1      
  callq .strcpy                #  99    0x7ccfb  5      
.L_7cdc0:                      #        0x7cd00  0      
  addl $0x28, %esp             #  100   0x7cd00  3      
  addq %r15, %rsp              #  101   0x7cd03  3      
  movl %ebx, %esi              #  102   0x7cd06  2      
  movl %r12d, %edi             #  103   0x7cd08  3      
  popq %rbx                    #  104   0x7cd0b  2      
  popq %r12                    #  105   0x7cd0d  3      
  popq %r13                    #  106   0x7cd10  3      
  popq %r14                    #  107   0x7cd13  3      
  jmpq .loadlocale             #  108   0x7cd16  5      
  nop                          #  109   0x7cd1b  1      
.L_7cde0:                      #        0x7cd1c  0      
  movl %r12d, %r12d            #  110   0x7cd1c  3      
  movl $0x16, (%r15,%r12,1)    #  111   0x7cd1f  8      
  xorl %eax, %eax              #  112   0x7cd27  2      
  nop                          #  113   0x7cd29  1      
  nop                          #  114   0x7cd2a  1      
.L_7ce00:                      #        0x7cd2b  0      
  addl $0x28, %esp             #  115   0x7cd2b  3      
  addq %r15, %rsp              #  116   0x7cd2e  3      
  popq %rbx                    #  117   0x7cd31  2      
  popq %r12                    #  118   0x7cd33  3      
  popq %r13                    #  119   0x7cd36  3      
  popq %r14                    #  120   0x7cd39  3      
  popq %r11                    #  121   0x7cd3c  3      
  andl $0xffffffe0, %r11d      #  122   0x7cd3f  7      
  addq %r15, %r11              #  123   0x7cd46  3      
  jmpq %r11                    #  124   0x7cd49  3      
  nop                          #  125   0x7cd4c  1      
.L_7ce20:                      #        0x7cd4d  0      
  movl $0x2f, %esi             #  126   0x7cd4d  5      
  movl %r14d, %edi             #  127   0x7cd52  3      
  nop                          #  128   0x7cd55  1      
  nop                          #  129   0x7cd56  1      
  callq .strchr                #  130   0x7cd57  5      
  movl %eax, %ebx              #  131   0x7cd5c  2      
  testq %rbx, %rbx             #  132   0x7cd5e  3      
  je .L_7d200                  #  133   0x7cd61  6      
  nop                          #  134   0x7cd67  1      
  nop                          #  135   0x7cd68  1      
.L_7ce60:                      #        0x7cd69  0      
  leal 0x1(%rbx), %eax         #  136   0x7cd69  3      
  movq %rbx, %rcx              #  137   0x7cd6c  3      
  movl %eax, %eax              #  138   0x7cd6f  2      
  movzbl (%r15,%rax,1), %edx   #  139   0x7cd71  5      
  movq %rax, %rbx              #  140   0x7cd76  3      
  cmpb $0x2f, %dl              #  141   0x7cd79  3      
  je .L_7ce60                  #  142   0x7cd7c  6      
  testb %dl, %dl               #  143   0x7cd82  2      
  movq %rcx, %rbx              #  144   0x7cd84  3      
  movl $0x1, %r13d             #  145   0x7cd87  6      
  movl $0x10036b00, %ecx       #  146   0x7cd8d  5      
  je .L_7cde0                  #  147   0x7cd92  6      
  nop                          #  148   0x7cd98  1      
  nop                          #  149   0x7cd99  1      
.L_7cea0:                      #        0x7cd9a  0      
  movl %ebx, %edx              #  150   0x7cd9a  2      
  subl %r14d, %edx             #  151   0x7cd9c  3      
  cmpl $0x1f, %edx             #  152   0x7cd9f  3      
  jg .L_7cde0                  #  153   0x7cda2  6      
  addl $0x1, %edx              #  154   0x7cda8  3      
  movl %ecx, %edi              #  155   0x7cdab  2      
  movl %r14d, %esi             #  156   0x7cdad  3      
  movl %ecx, 0x8(%rsp)         #  157   0x7cdb0  4      
  addl $0x1, %r13d             #  158   0x7cdb4  4      
  xchgw %ax, %ax               #  159   0x7cdb8  3      
  nop                          #  160   0x7cdbb  1      
  nop                          #  161   0x7cdbc  1      
  callq .strlcpy               #  162   0x7cdbd  5      
  movl %ebx, %ebx              #  163   0x7cdc2  2      
  movzbl (%r15,%rbx,1), %edx   #  164   0x7cdc4  5      
  movl 0x8(%rsp), %ecx         #  165   0x7cdc9  4      
  cmpb $0x2f, %dl              #  166   0x7cdcd  3      
  jne .L_7cf20                 #  167   0x7cdd0  6      
  nop                          #  168   0x7cdd6  1      
  nop                          #  169   0x7cdd7  1      
.L_7cf00:                      #        0x7cdd8  0      
  addl $0x1, %ebx              #  170   0x7cdd8  3      
  movl %ebx, %ebx              #  171   0x7cddb  2      
  movzbl (%r15,%rbx,1), %edx   #  172   0x7cddd  5      
  cmpb $0x2f, %dl              #  173   0x7cde2  3      
  je .L_7cf00                  #  174   0x7cde5  6      
  xchgw %ax, %ax               #  175   0x7cdeb  3      
  nop                          #  176   0x7cdee  1      
.L_7cf20:                      #        0x7cdef  0      
  testb %dl, %dl               #  177   0x7cdef  2      
  movq %rbx, %r14              #  178   0x7cdf1  3      
  je .L_7cf60                  #  179   0x7cdf4  6      
  nop                          #  180   0x7cdfa  1      
  nop                          #  181   0x7cdfb  1      
.L_7cf40:                      #        0x7cdfc  0      
  addl $0x1, %ebx              #  182   0x7cdfc  3      
  movl %ebx, %ebx              #  183   0x7cdff  2      
  movzbl (%r15,%rbx,1), %eax   #  184   0x7ce01  5      
  cmpb $0x2f, %al              #  185   0x7ce06  2      
  je .L_7cf60                  #  186   0x7ce08  6      
  testb %al, %al               #  187   0x7ce0e  2      
  jne .L_7cf40                 #  188   0x7ce10  6      
  nop                          #  189   0x7ce16  1      
.L_7cf60:                      #        0x7ce17  0      
  testb %dl, %dl               #  190   0x7ce17  2      
  je .L_7d180                  #  191   0x7ce19  6      
  addl $0x20, %ecx             #  192   0x7ce1f  3      
  cmpl $0x7, %r13d             #  193   0x7ce22  4      
  jne .L_7cea0                 #  194   0x7ce26  6      
  jmpq .L_7cce0                #  195   0x7ce2c  5      
  nop                          #  196   0x7ce31  1      
.L_7cf80:                      #        0x7ce32  0      
  testl %esi, %esi             #  197   0x7ce32  2      
  je .L_7cd60                  #  198   0x7ce34  6      
  movl %esi, %eax              #  199   0x7ce3a  2      
  shll $0x5, %eax              #  200   0x7ce3c  3      
  addl $0x10030ae0, %eax       #  201   0x7ce3f  5      
  jmpq .L_7ce00                #  202   0x7ce44  5      
  nop                          #  203   0x7ce49  1      
.L_7cfa0:                      #        0x7ce4a  0      
  movl %ebx, %esi              #  204   0x7ce4a  2      
  movl %r12d, %edi             #  205   0x7ce4c  3      
  nop                          #  206   0x7ce4f  1      
  nop                          #  207   0x7ce50  1      
  callq .__get_locale_env      #  208   0x7ce51  5      
  movl %eax, %r13d             #  209   0x7ce56  3      
  movl %r13d, %edi             #  210   0x7ce59  3      
  nop                          #  211   0x7ce5c  1      
  nop                          #  212   0x7ce5d  1      
  callq .strlen                #  213   0x7ce5e  5      
  cmpl $0x1f, %eax             #  214   0x7ce63  3      
  ja .L_7cde0                  #  215   0x7ce66  6      
  movl %ebx, %edi              #  216   0x7ce6c  2      
  movl $0x10036ae0, %eax       #  217   0x7ce6e  5      
  movl %r13d, %esi             #  218   0x7ce73  3      
  shll $0x5, %edi              #  219   0x7ce76  3      
  addl %eax, %edi              #  220   0x7ce79  2      
  nop                          #  221   0x7ce7b  1      
  callq .strcpy                #  222   0x7ce7c  5      
  jmpq .L_7cdc0                #  223   0x7ce81  5      
  nop                          #  224   0x7ce86  1      
  nop                          #  225   0x7ce87  1      
.L_7d020:                      #        0x7ce88  0      
  movl %r12d, %r12d            #  226   0x7ce88  3      
  movl (%r15,%r12,1), %eax     #  227   0x7ce8b  4      
  cmpl $0x1, %ebx              #  228   0x7ce8f  3      
  movl %eax, 0x1c(%rsp)        #  229   0x7ce92  4      
  je .L_7d0e0                  #  230   0x7ce96  6      
  movl $0x10036bc0, %r14d      #  231   0x7ce9c  6      
  movl $0x10036b00, %edx       #  232   0x7cea2  5      
  nop                          #  233   0x7cea7  1      
  movl $0x1, %r13d             #  234   0x7cea8  6      
  addl $0x20, %r14d            #  235   0x7ceae  4      
  nop                          #  236   0x7ceb2  1      
  nop                          #  237   0x7ceb3  1      
.L_7d060:                      #        0x7ceb4  0      
  movl %edx, %eax              #  238   0x7ceb4  2      
  movl %r14d, %esi             #  239   0x7ceb6  3      
  movl %edx, 0x8(%rsp)         #  240   0x7ceb9  4      
  movl %eax, %edi              #  241   0x7cebd  2      
  movq %rax, 0x10(%rsp)        #  242   0x7cebf  5      
  nop                          #  243   0x7cec4  1      
  callq .strcpy                #  244   0x7cec5  5      
  movl %r13d, %esi             #  245   0x7ceca  3      
  movl %r12d, %edi             #  246   0x7cecd  3      
  nop                          #  247   0x7ced0  1      
  nop                          #  248   0x7ced1  1      
  callq .loadlocale            #  249   0x7ced2  5      
  testl %eax, %eax             #  250   0x7ced7  2      
  movl 0x8(%rsp), %edx         #  251   0x7ced9  4      
  je .L_7d120                  #  252   0x7cedd  6      
  nop                          #  253   0x7cee3  1      
  nop                          #  254   0x7cee4  1      
.L_7d0c0:                      #        0x7cee5  0      
  addl $0x1, %r13d             #  255   0x7cee5  4      
  addl $0x20, %edx             #  256   0x7cee9  3      
  addl $0x20, %r14d            #  257   0x7ceec  4      
  cmpl %ebx, %r13d             #  258   0x7cef0  3      
  jl .L_7d060                  #  259   0x7cef3  6      
  nop                          #  260   0x7cef9  1      
  nop                          #  261   0x7cefa  1      
.L_7d0e0:                      #        0x7cefb  0      
  movl 0x1c(%rsp), %eax        #  262   0x7cefb  4      
  movl %r12d, %r12d            #  263   0x7ceff  3      
  movl %eax, (%r15,%r12,1)     #  264   0x7cf02  4      
  addl $0x28, %esp             #  265   0x7cf06  3      
  addq %r15, %rsp              #  266   0x7cf09  3      
  xorl %eax, %eax              #  267   0x7cf0c  2      
  popq %rbx                    #  268   0x7cf0e  2      
  popq %r12                    #  269   0x7cf10  3      
  popq %r13                    #  270   0x7cf13  3      
  popq %r14                    #  271   0x7cf16  3      
  popq %r11                    #  272   0x7cf19  3      
  nop                          #  273   0x7cf1c  1      
  andl $0xffffffe0, %r11d      #  274   0x7cf1d  7      
  addq %r15, %r11              #  275   0x7cf24  3      
  jmpq %r11                    #  276   0x7cf27  3      
  nop                          #  277   0x7cf2a  1      
  nop                          #  278   0x7cf2b  1      
.L_7d120:                      #        0x7cf2c  0      
  movl 0x10(%rsp), %edi        #  279   0x7cf2c  4      
  movl $0x10024370, %esi       #  280   0x7cf30  5      
  nop                          #  281   0x7cf35  1      
  nop                          #  282   0x7cf36  1      
  callq .strcpy                #  283   0x7cf37  5      
  movl %r13d, %esi             #  284   0x7cf3c  3      
  movl %r12d, %edi             #  285   0x7cf3f  3      
  nop                          #  286   0x7cf42  1      
  nop                          #  287   0x7cf43  1      
  callq .loadlocale            #  288   0x7cf44  5      
  movl 0x8(%rsp), %edx         #  289   0x7cf49  4      
  jmpq .L_7d0c0                #  290   0x7cf4d  5      
  nop                          #  291   0x7cf52  1      
  nop                          #  292   0x7cf53  1      
.L_7d180:                      #        0x7cf54  0      
  cmpl $0x6, %r13d             #  293   0x7cf54  4      
  jg .L_7cce0                  #  294   0x7cf58  6      
  movl %r13d, %r14d            #  295   0x7cf5e  3      
  movl %r13d, %ebx             #  296   0x7cf61  3      
  movl $0x10036ae0, %eax       #  297   0x7cf64  5      
  shll $0x5, %r14d             #  298   0x7cf69  4      
  shll $0x5, %ebx              #  299   0x7cf6d  3      
  addl %eax, %r14d             #  300   0x7cf70  3      
  nop                          #  301   0x7cf73  1      
  addl $0x10036ac0, %ebx       #  302   0x7cf74  6      
  nop                          #  303   0x7cf7a  1      
  nop                          #  304   0x7cf7b  1      
.L_7d1c0:                      #        0x7cf7c  0      
  movl %ebx, %esi              #  305   0x7cf7c  2      
  movl %r14d, %edi             #  306   0x7cf7e  3      
  addl $0x1, %r13d             #  307   0x7cf81  4      
  nop                          #  308   0x7cf85  1      
  nop                          #  309   0x7cf86  1      
  callq .strcpy                #  310   0x7cf87  5      
  addl $0x20, %r14d            #  311   0x7cf8c  4      
  addl $0x20, %ebx             #  312   0x7cf90  3      
  cmpl $0x6, %r13d             #  313   0x7cf93  4      
  jle .L_7d1c0                 #  314   0x7cf97  6      
  jmpq .L_7cce0                #  315   0x7cf9d  5      
  nop                          #  316   0x7cfa2  1      
.L_7d200:                      #        0x7cfa3  0      
  movl %r14d, %edi             #  317   0x7cfa3  3      
  movl $0x10036b00, %ebx       #  318   0x7cfa6  5      
  nop                          #  319   0x7cfab  1      
  nop                          #  320   0x7cfac  1      
  callq .strlen                #  321   0x7cfad  5      
  cmpl $0x1f, %eax             #  322   0x7cfb2  3      
  ja .L_7cde0                  #  323   0x7cfb5  6      
  nop                          #  324   0x7cfbb  1      
  nop                          #  325   0x7cfbc  1      
.L_7d240:                      #        0x7cfbd  0      
  movl %ebx, %edi              #  326   0x7cfbd  2      
  movl %r14d, %esi             #  327   0x7cfbf  3      
  addl $0x20, %ebx             #  328   0x7cfc2  3      
  nop                          #  329   0x7cfc5  1      
  nop                          #  330   0x7cfc6  1      
  callq .strcpy                #  331   0x7cfc7  5      
  cmpl $0x10036bc0, %ebx       #  332   0x7cfcc  6      
  jne .L_7d240                 #  333   0x7cfd2  6      
  jmpq .L_7cce0                #  334   0x7cfd8  5      
  nop                          #  335   0x7cfdd  1      
  nop                          #  336   0x7cfde  1      
                                                        
.size _setlocale_r, .-_setlocale_r

