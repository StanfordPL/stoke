  .text
  .globl _setlocale_r
  .type _setlocale_r, @function

#! file-offset 0x7cb20
#! rip-offset  0x7cb20
#! capacity    1728 bytes

# Text                         #  Line  RIP      Bytes  
._setlocale_r:                 #        0x7cb20  0      
  pushq %r14                   #  1     0x7cb20  3      
  movl %edx, %r14d             #  2     0x7cb23  3      
  pushq %r13                   #  3     0x7cb26  3      
  pushq %r12                   #  4     0x7cb29  3      
  movl %edi, %r12d             #  5     0x7cb2c  3      
  pushq %rbx                   #  6     0x7cb2f  2      
  movl %esi, %ebx              #  7     0x7cb31  2      
  subl $0x28, %esp             #  8     0x7cb33  3      
  addq %r15, %rsp              #  9     0x7cb36  3      
  cmpl $0x6, %esi              #  10    0x7cb39  3      
  ja .L_7cd40                  #  11    0x7cb3c  6      
  xchgw %ax, %ax               #  12    0x7cb42  3      
  xorl %r13d, %r13d            #  13    0x7cb45  3      
  testq %r14, %r14             #  14    0x7cb48  3      
  je .L_7cee0                  #  15    0x7cb4b  6      
  nop                          #  16    0x7cb51  1      
  nop                          #  17    0x7cb52  1      
.L_7cb60:                      #        0x7cb53  0      
  leal 0x10030b00(%r13), %esi  #  18    0x7cb53  7      
  leal 0x10036b00(%r13), %edi  #  19    0x7cb5a  7      
  addl $0x20, %r13d            #  20    0x7cb61  4      
  nop                          #  21    0x7cb65  1      
  callq .strcpy                #  22    0x7cb66  5      
  cmpl $0xc0, %r13d            #  23    0x7cb6b  4      
  jne .L_7cb60                 #  24    0x7cb6f  6      
  movl %r14d, %r14d            #  25    0x7cb75  3      
  cmpb $0x0, (%r15,%r14,1)     #  26    0x7cb78  5      
  jne .L_7cce0                 #  27    0x7cb7d  6      
  testl %ebx, %ebx             #  28    0x7cb83  2      
  jne .L_7cf00                 #  29    0x7cb85  6      
  nop                          #  30    0x7cb8b  1      
  movl $0x10036b00, %r13d      #  31    0x7cb8c  6      
  movb $0x1, %bl               #  32    0x7cb92  2      
  nop                          #  33    0x7cb94  1      
  nop                          #  34    0x7cb95  1      
.L_7cbc0:                      #        0x7cb96  0      
  movl %ebx, %esi              #  35    0x7cb96  2      
  movl %r12d, %edi             #  36    0x7cb98  3      
  nop                          #  37    0x7cb9b  1      
  nop                          #  38    0x7cb9c  1      
  callq .__get_locale_env      #  39    0x7cb9d  5      
  movl %eax, %r14d             #  40    0x7cba2  3      
  movl %r14d, %edi             #  41    0x7cba5  3      
  nop                          #  42    0x7cba8  1      
  nop                          #  43    0x7cba9  1      
  callq .strlen                #  44    0x7cbaa  5      
  cmpl $0x1f, %eax             #  45    0x7cbaf  3      
  ja .L_7cd40                  #  46    0x7cbb2  6      
  movl %r13d, %edi             #  47    0x7cbb8  3      
  movl %r14d, %esi             #  48    0x7cbbb  3      
  addl $0x1, %ebx              #  49    0x7cbbe  3      
  nop                          #  50    0x7cbc1  1      
  callq .strcpy                #  51    0x7cbc2  5      
  addl $0x20, %r13d            #  52    0x7cbc7  4      
  cmpl $0x7, %ebx              #  53    0x7cbcb  3      
  jne .L_7cbc0                 #  54    0x7cbce  6      
  nop                          #  55    0x7cbd4  1      
  nop                          #  56    0x7cbd5  1      
.L_7cc40:                      #        0x7cbd6  0      
  xorl %r13d, %r13d            #  57    0x7cbd6  3      
  movl $0x1, %ebx              #  58    0x7cbd9  5      
  nop                          #  59    0x7cbde  1      
  nop                          #  60    0x7cbdf  1      
.L_7cc60:                      #        0x7cbe0  0      
  leal 0x10030b00(%r13), %esi  #  61    0x7cbe0  7      
  leal 0x10036be0(%r13), %edi  #  62    0x7cbe7  7      
  nop                          #  63    0x7cbee  1      
  callq .strcpy                #  64    0x7cbef  5      
  movl %ebx, %esi              #  65    0x7cbf4  2      
  movl %r12d, %edi             #  66    0x7cbf6  3      
  nop                          #  67    0x7cbf9  1      
  nop                          #  68    0x7cbfa  1      
  callq .loadlocale            #  69    0x7cbfb  5      
  testl %eax, %eax             #  70    0x7cc00  2      
  je .L_7cf80                  #  71    0x7cc02  6      
  addl $0x1, %ebx              #  72    0x7cc08  3      
  addl $0x20, %r13d            #  73    0x7cc0b  4      
  cmpl $0x7, %ebx              #  74    0x7cc0f  3      
  jne .L_7cc60                 #  75    0x7cc12  6      
  nop                          #  76    0x7cc18  1      
.L_7ccc0:                      #        0x7cc19  0      
  addl $0x28, %esp             #  77    0x7cc19  3      
  addq %r15, %rsp              #  78    0x7cc1c  3      
  popq %rbx                    #  79    0x7cc1f  2      
  popq %r12                    #  80    0x7cc21  3      
  popq %r13                    #  81    0x7cc24  3      
  popq %r14                    #  82    0x7cc27  3      
  jmpq .currentlocale          #  83    0x7cc2a  5      
  nop                          #  84    0x7cc2f  1      
.L_7cce0:                      #        0x7cc30  0      
  testl %ebx, %ebx             #  85    0x7cc30  2      
  je .L_7cd80                  #  86    0x7cc32  6      
  movl %r14d, %edi             #  87    0x7cc38  3      
  nop                          #  88    0x7cc3b  1      
  nop                          #  89    0x7cc3c  1      
  callq .strlen                #  90    0x7cc3d  5      
  cmpl $0x1f, %eax             #  91    0x7cc42  3      
  ja .L_7cd40                  #  92    0x7cc45  6      
  movl %ebx, %edi              #  93    0x7cc4b  2      
  movl $0x10036ae0, %eax       #  94    0x7cc4d  5      
  movl %r14d, %esi             #  95    0x7cc52  3      
  shll $0x5, %edi              #  96    0x7cc55  3      
  addl %eax, %edi              #  97    0x7cc58  2      
  nop                          #  98    0x7cc5a  1      
  callq .strcpy                #  99    0x7cc5b  5      
.L_7cd20:                      #        0x7cc60  0      
  addl $0x28, %esp             #  100   0x7cc60  3      
  addq %r15, %rsp              #  101   0x7cc63  3      
  movl %ebx, %esi              #  102   0x7cc66  2      
  movl %r12d, %edi             #  103   0x7cc68  3      
  popq %rbx                    #  104   0x7cc6b  2      
  popq %r12                    #  105   0x7cc6d  3      
  popq %r13                    #  106   0x7cc70  3      
  popq %r14                    #  107   0x7cc73  3      
  jmpq .loadlocale             #  108   0x7cc76  5      
  nop                          #  109   0x7cc7b  1      
.L_7cd40:                      #        0x7cc7c  0      
  movl %r12d, %r12d            #  110   0x7cc7c  3      
  movl $0x16, (%r15,%r12,1)    #  111   0x7cc7f  8      
  xorl %eax, %eax              #  112   0x7cc87  2      
  nop                          #  113   0x7cc89  1      
  nop                          #  114   0x7cc8a  1      
.L_7cd60:                      #        0x7cc8b  0      
  addl $0x28, %esp             #  115   0x7cc8b  3      
  addq %r15, %rsp              #  116   0x7cc8e  3      
  popq %rbx                    #  117   0x7cc91  2      
  popq %r12                    #  118   0x7cc93  3      
  popq %r13                    #  119   0x7cc96  3      
  popq %r14                    #  120   0x7cc99  3      
  popq %r11                    #  121   0x7cc9c  3      
  andl $0xffffffe0, %r11d      #  122   0x7cc9f  7      
  addq %r15, %r11              #  123   0x7cca6  3      
  jmpq %r11                    #  124   0x7cca9  3      
  nop                          #  125   0x7ccac  1      
.L_7cd80:                      #        0x7ccad  0      
  movl $0x2f, %esi             #  126   0x7ccad  5      
  movl %r14d, %edi             #  127   0x7ccb2  3      
  nop                          #  128   0x7ccb5  1      
  nop                          #  129   0x7ccb6  1      
  callq .strchr                #  130   0x7ccb7  5      
  movl %eax, %ebx              #  131   0x7ccbc  2      
  testq %rbx, %rbx             #  132   0x7ccbe  3      
  je .L_7d160                  #  133   0x7ccc1  6      
  nop                          #  134   0x7ccc7  1      
  nop                          #  135   0x7ccc8  1      
.L_7cdc0:                      #        0x7ccc9  0      
  leal 0x1(%rbx), %eax         #  136   0x7ccc9  3      
  movq %rbx, %rcx              #  137   0x7cccc  3      
  movl %eax, %eax              #  138   0x7cccf  2      
  movzbl (%r15,%rax,1), %edx   #  139   0x7ccd1  5      
  movq %rax, %rbx              #  140   0x7ccd6  3      
  cmpb $0x2f, %dl              #  141   0x7ccd9  3      
  je .L_7cdc0                  #  142   0x7ccdc  6      
  testb %dl, %dl               #  143   0x7cce2  2      
  movq %rcx, %rbx              #  144   0x7cce4  3      
  movl $0x1, %r13d             #  145   0x7cce7  6      
  movl $0x10036b00, %ecx       #  146   0x7cced  5      
  je .L_7cd40                  #  147   0x7ccf2  6      
  nop                          #  148   0x7ccf8  1      
  nop                          #  149   0x7ccf9  1      
.L_7ce00:                      #        0x7ccfa  0      
  movl %ebx, %edx              #  150   0x7ccfa  2      
  subl %r14d, %edx             #  151   0x7ccfc  3      
  cmpl $0x1f, %edx             #  152   0x7ccff  3      
  jg .L_7cd40                  #  153   0x7cd02  6      
  addl $0x1, %edx              #  154   0x7cd08  3      
  movl %ecx, %edi              #  155   0x7cd0b  2      
  movl %r14d, %esi             #  156   0x7cd0d  3      
  movl %ecx, 0x8(%rsp)         #  157   0x7cd10  4      
  addl $0x1, %r13d             #  158   0x7cd14  4      
  xchgw %ax, %ax               #  159   0x7cd18  3      
  nop                          #  160   0x7cd1b  1      
  nop                          #  161   0x7cd1c  1      
  callq .strlcpy               #  162   0x7cd1d  5      
  movl %ebx, %ebx              #  163   0x7cd22  2      
  movzbl (%r15,%rbx,1), %edx   #  164   0x7cd24  5      
  movl 0x8(%rsp), %ecx         #  165   0x7cd29  4      
  cmpb $0x2f, %dl              #  166   0x7cd2d  3      
  jne .L_7ce80                 #  167   0x7cd30  6      
  nop                          #  168   0x7cd36  1      
  nop                          #  169   0x7cd37  1      
.L_7ce60:                      #        0x7cd38  0      
  addl $0x1, %ebx              #  170   0x7cd38  3      
  movl %ebx, %ebx              #  171   0x7cd3b  2      
  movzbl (%r15,%rbx,1), %edx   #  172   0x7cd3d  5      
  cmpb $0x2f, %dl              #  173   0x7cd42  3      
  je .L_7ce60                  #  174   0x7cd45  6      
  xchgw %ax, %ax               #  175   0x7cd4b  3      
  nop                          #  176   0x7cd4e  1      
.L_7ce80:                      #        0x7cd4f  0      
  testb %dl, %dl               #  177   0x7cd4f  2      
  movq %rbx, %r14              #  178   0x7cd51  3      
  je .L_7cec0                  #  179   0x7cd54  6      
  nop                          #  180   0x7cd5a  1      
  nop                          #  181   0x7cd5b  1      
.L_7cea0:                      #        0x7cd5c  0      
  addl $0x1, %ebx              #  182   0x7cd5c  3      
  movl %ebx, %ebx              #  183   0x7cd5f  2      
  movzbl (%r15,%rbx,1), %eax   #  184   0x7cd61  5      
  cmpb $0x2f, %al              #  185   0x7cd66  2      
  je .L_7cec0                  #  186   0x7cd68  6      
  testb %al, %al               #  187   0x7cd6e  2      
  jne .L_7cea0                 #  188   0x7cd70  6      
  nop                          #  189   0x7cd76  1      
.L_7cec0:                      #        0x7cd77  0      
  testb %dl, %dl               #  190   0x7cd77  2      
  je .L_7d0e0                  #  191   0x7cd79  6      
  addl $0x20, %ecx             #  192   0x7cd7f  3      
  cmpl $0x7, %r13d             #  193   0x7cd82  4      
  jne .L_7ce00                 #  194   0x7cd86  6      
  jmpq .L_7cc40                #  195   0x7cd8c  5      
  nop                          #  196   0x7cd91  1      
.L_7cee0:                      #        0x7cd92  0      
  testl %esi, %esi             #  197   0x7cd92  2      
  je .L_7ccc0                  #  198   0x7cd94  6      
  movl %esi, %eax              #  199   0x7cd9a  2      
  shll $0x5, %eax              #  200   0x7cd9c  3      
  addl $0x10030ae0, %eax       #  201   0x7cd9f  5      
  jmpq .L_7cd60                #  202   0x7cda4  5      
  nop                          #  203   0x7cda9  1      
.L_7cf00:                      #        0x7cdaa  0      
  movl %ebx, %esi              #  204   0x7cdaa  2      
  movl %r12d, %edi             #  205   0x7cdac  3      
  nop                          #  206   0x7cdaf  1      
  nop                          #  207   0x7cdb0  1      
  callq .__get_locale_env      #  208   0x7cdb1  5      
  movl %eax, %r13d             #  209   0x7cdb6  3      
  movl %r13d, %edi             #  210   0x7cdb9  3      
  nop                          #  211   0x7cdbc  1      
  nop                          #  212   0x7cdbd  1      
  callq .strlen                #  213   0x7cdbe  5      
  cmpl $0x1f, %eax             #  214   0x7cdc3  3      
  ja .L_7cd40                  #  215   0x7cdc6  6      
  movl %ebx, %edi              #  216   0x7cdcc  2      
  movl $0x10036ae0, %eax       #  217   0x7cdce  5      
  movl %r13d, %esi             #  218   0x7cdd3  3      
  shll $0x5, %edi              #  219   0x7cdd6  3      
  addl %eax, %edi              #  220   0x7cdd9  2      
  nop                          #  221   0x7cddb  1      
  callq .strcpy                #  222   0x7cddc  5      
  jmpq .L_7cd20                #  223   0x7cde1  5      
  nop                          #  224   0x7cde6  1      
  nop                          #  225   0x7cde7  1      
.L_7cf80:                      #        0x7cde8  0      
  movl %r12d, %r12d            #  226   0x7cde8  3      
  movl (%r15,%r12,1), %eax     #  227   0x7cdeb  4      
  cmpl $0x1, %ebx              #  228   0x7cdef  3      
  movl %eax, 0x1c(%rsp)        #  229   0x7cdf2  4      
  je .L_7d040                  #  230   0x7cdf6  6      
  movl $0x10036bc0, %r14d      #  231   0x7cdfc  6      
  movl $0x10036b00, %edx       #  232   0x7ce02  5      
  nop                          #  233   0x7ce07  1      
  movl $0x1, %r13d             #  234   0x7ce08  6      
  addl $0x20, %r14d            #  235   0x7ce0e  4      
  nop                          #  236   0x7ce12  1      
  nop                          #  237   0x7ce13  1      
.L_7cfc0:                      #        0x7ce14  0      
  movl %edx, %eax              #  238   0x7ce14  2      
  movl %r14d, %esi             #  239   0x7ce16  3      
  movl %edx, 0x8(%rsp)         #  240   0x7ce19  4      
  movl %eax, %edi              #  241   0x7ce1d  2      
  movq %rax, 0x10(%rsp)        #  242   0x7ce1f  5      
  nop                          #  243   0x7ce24  1      
  callq .strcpy                #  244   0x7ce25  5      
  movl %r13d, %esi             #  245   0x7ce2a  3      
  movl %r12d, %edi             #  246   0x7ce2d  3      
  nop                          #  247   0x7ce30  1      
  nop                          #  248   0x7ce31  1      
  callq .loadlocale            #  249   0x7ce32  5      
  testl %eax, %eax             #  250   0x7ce37  2      
  movl 0x8(%rsp), %edx         #  251   0x7ce39  4      
  je .L_7d080                  #  252   0x7ce3d  6      
  nop                          #  253   0x7ce43  1      
  nop                          #  254   0x7ce44  1      
.L_7d020:                      #        0x7ce45  0      
  addl $0x1, %r13d             #  255   0x7ce45  4      
  addl $0x20, %edx             #  256   0x7ce49  3      
  addl $0x20, %r14d            #  257   0x7ce4c  4      
  cmpl %ebx, %r13d             #  258   0x7ce50  3      
  jl .L_7cfc0                  #  259   0x7ce53  6      
  nop                          #  260   0x7ce59  1      
  nop                          #  261   0x7ce5a  1      
.L_7d040:                      #        0x7ce5b  0      
  movl 0x1c(%rsp), %eax        #  262   0x7ce5b  4      
  movl %r12d, %r12d            #  263   0x7ce5f  3      
  movl %eax, (%r15,%r12,1)     #  264   0x7ce62  4      
  addl $0x28, %esp             #  265   0x7ce66  3      
  addq %r15, %rsp              #  266   0x7ce69  3      
  xorl %eax, %eax              #  267   0x7ce6c  2      
  popq %rbx                    #  268   0x7ce6e  2      
  popq %r12                    #  269   0x7ce70  3      
  popq %r13                    #  270   0x7ce73  3      
  popq %r14                    #  271   0x7ce76  3      
  popq %r11                    #  272   0x7ce79  3      
  nop                          #  273   0x7ce7c  1      
  andl $0xffffffe0, %r11d      #  274   0x7ce7d  7      
  addq %r15, %r11              #  275   0x7ce84  3      
  jmpq %r11                    #  276   0x7ce87  3      
  nop                          #  277   0x7ce8a  1      
  nop                          #  278   0x7ce8b  1      
.L_7d080:                      #        0x7ce8c  0      
  movl 0x10(%rsp), %edi        #  279   0x7ce8c  4      
  movl $0x10024370, %esi       #  280   0x7ce90  5      
  nop                          #  281   0x7ce95  1      
  nop                          #  282   0x7ce96  1      
  callq .strcpy                #  283   0x7ce97  5      
  movl %r13d, %esi             #  284   0x7ce9c  3      
  movl %r12d, %edi             #  285   0x7ce9f  3      
  nop                          #  286   0x7cea2  1      
  nop                          #  287   0x7cea3  1      
  callq .loadlocale            #  288   0x7cea4  5      
  movl 0x8(%rsp), %edx         #  289   0x7cea9  4      
  jmpq .L_7d020                #  290   0x7cead  5      
  nop                          #  291   0x7ceb2  1      
  nop                          #  292   0x7ceb3  1      
.L_7d0e0:                      #        0x7ceb4  0      
  cmpl $0x6, %r13d             #  293   0x7ceb4  4      
  jg .L_7cc40                  #  294   0x7ceb8  6      
  movl %r13d, %r14d            #  295   0x7cebe  3      
  movl %r13d, %ebx             #  296   0x7cec1  3      
  movl $0x10036ae0, %eax       #  297   0x7cec4  5      
  shll $0x5, %r14d             #  298   0x7cec9  4      
  shll $0x5, %ebx              #  299   0x7cecd  3      
  addl %eax, %r14d             #  300   0x7ced0  3      
  nop                          #  301   0x7ced3  1      
  addl $0x10036ac0, %ebx       #  302   0x7ced4  6      
  nop                          #  303   0x7ceda  1      
  nop                          #  304   0x7cedb  1      
.L_7d120:                      #        0x7cedc  0      
  movl %ebx, %esi              #  305   0x7cedc  2      
  movl %r14d, %edi             #  306   0x7cede  3      
  addl $0x1, %r13d             #  307   0x7cee1  4      
  nop                          #  308   0x7cee5  1      
  nop                          #  309   0x7cee6  1      
  callq .strcpy                #  310   0x7cee7  5      
  addl $0x20, %r14d            #  311   0x7ceec  4      
  addl $0x20, %ebx             #  312   0x7cef0  3      
  cmpl $0x6, %r13d             #  313   0x7cef3  4      
  jle .L_7d120                 #  314   0x7cef7  6      
  jmpq .L_7cc40                #  315   0x7cefd  5      
  nop                          #  316   0x7cf02  1      
.L_7d160:                      #        0x7cf03  0      
  movl %r14d, %edi             #  317   0x7cf03  3      
  movl $0x10036b00, %ebx       #  318   0x7cf06  5      
  nop                          #  319   0x7cf0b  1      
  nop                          #  320   0x7cf0c  1      
  callq .strlen                #  321   0x7cf0d  5      
  cmpl $0x1f, %eax             #  322   0x7cf12  3      
  ja .L_7cd40                  #  323   0x7cf15  6      
  nop                          #  324   0x7cf1b  1      
  nop                          #  325   0x7cf1c  1      
.L_7d1a0:                      #        0x7cf1d  0      
  movl %ebx, %edi              #  326   0x7cf1d  2      
  movl %r14d, %esi             #  327   0x7cf1f  3      
  addl $0x20, %ebx             #  328   0x7cf22  3      
  nop                          #  329   0x7cf25  1      
  nop                          #  330   0x7cf26  1      
  callq .strcpy                #  331   0x7cf27  5      
  cmpl $0x10036bc0, %ebx       #  332   0x7cf2c  6      
  jne .L_7d1a0                 #  333   0x7cf32  6      
  jmpq .L_7cc40                #  334   0x7cf38  5      
  nop                          #  335   0x7cf3d  1      
  nop                          #  336   0x7cf3e  1      
                                                        
.size _setlocale_r, .-_setlocale_r

