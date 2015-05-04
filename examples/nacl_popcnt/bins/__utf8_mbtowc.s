  .text
  .globl __utf8_mbtowc
  .type __utf8_mbtowc, @function

#! file-offset 0x7d5e0
#! rip-offset  0x7d5e0
#! capacity    1696 bytes

# Text                           #  Line  RIP      Bytes  
.__utf8_mbtowc:                  #        0x7d5e0  0      
  movl %esi, %esi                #  1     0x7d5e0  2      
  leal -0x4(%rsp), %eax          #  2     0x7d5e2  4      
  movl %edx, %edx                #  3     0x7d5e6  2      
  testq %rsi, %rsi               #  4     0x7d5e8  3      
  movl %edi, %edi                #  5     0x7d5eb  2      
  movl %r9d, %r9d                #  6     0x7d5ed  3      
  cmoveq %rax, %rsi              #  7     0x7d5f0  4      
  xorl %eax, %eax                #  8     0x7d5f4  2      
  testq %rdx, %rdx               #  9     0x7d5f6  3      
  jne .L_7d620                   #  10    0x7d5f9  6      
  nop                            #  11    0x7d5ff  1      
.L_7d600:                        #        0x7d600  0      
  popq %r11                      #  12    0x7d600  3      
  andl $0xffffffe0, %r11d        #  13    0x7d603  7      
  addq %r15, %r11                #  14    0x7d60a  3      
  jmpq %r11                      #  15    0x7d60d  3      
  nop                            #  16    0x7d610  1      
  nop                            #  17    0x7d611  1      
.L_7d620:                        #        0x7d612  0      
  testl %ecx, %ecx               #  18    0x7d612  2      
  je .L_7d860                    #  19    0x7d614  6      
  movl %r9d, %r9d                #  20    0x7d61a  3      
  movl (%r15,%r9,1), %r10d       #  21    0x7d61d  4      
  testl %r10d, %r10d             #  22    0x7d621  3      
  jne .L_7d880                   #  23    0x7d624  6      
  movl %edx, %edx                #  24    0x7d62a  2      
  movzbl (%r15,%rdx,1), %r8d     #  25    0x7d62c  5      
  nop                            #  26    0x7d631  1      
  movb $0x1, %al                 #  27    0x7d632  2      
  nop                            #  28    0x7d634  1      
  nop                            #  29    0x7d635  1      
.L_7d660:                        #        0x7d636  0      
  testl %r8d, %r8d               #  30    0x7d636  3      
  je .L_7d8e0                    #  31    0x7d639  6      
  cmpl $0x7f, %r8d               #  32    0x7d63f  4      
  jle .L_7d8a0                   #  33    0x7d643  6      
  leal -0xc0(%r8), %r10d         #  34    0x7d649  7      
  cmpl $0x1f, %r10d              #  35    0x7d650  4      
  xchgw %ax, %ax                 #  36    0x7d654  3      
  jbe .L_7db40                   #  37    0x7d657  6      
  leal -0xe0(%r8), %r10d         #  38    0x7d65d  7      
  cmpl $0xf, %r10d               #  39    0x7d664  4      
  jbe .L_7d9e0                   #  40    0x7d668  6      
  leal -0xf0(%r8), %r10d         #  41    0x7d66e  7      
  xchgw %ax, %ax                 #  42    0x7d675  3      
  cmpl $0x4, %r10d               #  43    0x7d678  4      
  ja .L_7d940                    #  44    0x7d67c  6      
  movl %r8d, %r11d               #  45    0x7d682  3      
  movl %r9d, %r9d                #  46    0x7d685  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  47    0x7d688  5      
  movl %r9d, %r9d                #  48    0x7d68d  3      
  movl (%r15,%r9,1), %r8d        #  49    0x7d690  4      
  testl %r8d, %r8d               #  50    0x7d694  3      
  nop                            #  51    0x7d697  1      
  jne .L_7d960                   #  52    0x7d698  6      
  movl %r9d, %r9d                #  53    0x7d69e  3      
  movl $0x1, (%r15,%r9,1)        #  54    0x7d6a1  8      
  nop                            #  55    0x7d6a9  1      
.L_7d6e0:                        #        0x7d6aa  0      
  cmpl $0x1, %ecx                #  56    0x7d6aa  3      
  jbe .L_7d860                   #  57    0x7d6ad  6      
  movl %r9d, %r9d                #  58    0x7d6b3  3      
  movzbl 0x4(%r15,%r9,1), %r11d  #  59    0x7d6b6  6      
  movl %r9d, %r9d                #  60    0x7d6bc  3      
  movl (%r15,%r9,1), %r8d        #  61    0x7d6bf  4      
  nop                            #  62    0x7d6c3  1      
.L_7d700:                        #        0x7d6c4  0      
  cmpl $0x1, %r8d                #  63    0x7d6c4  4      
  je .L_7d980                    #  64    0x7d6c8  6      
  movl %r9d, %r9d                #  65    0x7d6ce  3      
  movzbl 0x5(%r15,%r9,1), %r10d  #  66    0x7d6d1  6      
  nop                            #  67    0x7d6d7  1      
.L_7d720:                        #        0x7d6d8  0      
  cmpl $0x8f, %r10d              #  68    0x7d6d8  4      
  jg .L_7d920                    #  69    0x7d6dc  6      
  cmpb $0xf0, %r11b              #  70    0x7d6e2  4      
  je .L_7d940                    #  71    0x7d6e6  6      
  nop                            #  72    0x7d6ec  1      
.L_7d740:                        #        0x7d6ed  0      
  leal -0x80(%r10), %r11d        #  73    0x7d6ed  4      
  cmpl $0x3f, %r11d              #  74    0x7d6f1  4      
  ja .L_7d940                    #  75    0x7d6f5  6      
  cmpl $0x1, %r8d                #  76    0x7d6fb  4      
  movl %r9d, %r9d                #  77    0x7d6ff  3      
  movb %r10b, 0x5(%r15,%r9,1)    #  78    0x7d702  5      
  je .L_7d9a0                    #  79    0x7d707  6      
  xorl %r10d, %r10d              #  80    0x7d70d  3      
  cmpl $0xffffffff, %ecx         #  81    0x7d710  6      
  setne %r10b                    #  82    0x7d716  4      
  addl %r10d, %ecx               #  83    0x7d71a  3      
  cmpl $0x2, %r8d                #  84    0x7d71d  4      
  je .L_7d9c0                    #  85    0x7d721  6      
  movl %r9d, %r9d                #  86    0x7d727  3      
  movzbl 0x6(%r15,%r9,1), %r8d   #  87    0x7d72a  6      
.L_7d780:                        #        0x7d730  0      
  leal -0x80(%r8), %r10d         #  88    0x7d730  4      
  cmpl $0x3f, %r10d              #  89    0x7d734  4      
  ja .L_7d940                    #  90    0x7d738  6      
  movl %r9d, %r9d                #  91    0x7d73e  3      
  cmpl $0x2, (%r15,%r9,1)        #  92    0x7d741  5      
  movl %r9d, %r9d                #  93    0x7d746  3      
  movb %r8b, 0x6(%r15,%r9,1)     #  94    0x7d749  5      
  xchgw %ax, %ax                 #  95    0x7d74e  3      
  je .L_7d840                    #  96    0x7d751  6      
  nop                            #  97    0x7d757  1      
  nop                            #  98    0x7d758  1      
.L_7d7c0:                        #        0x7d759  0      
  leal (%rax,%rdx,1), %edx       #  99    0x7d759  3      
  movl %edx, %edx                #  100   0x7d75c  2      
  movzbl (%r15,%rdx,1), %r8d     #  101   0x7d75e  5      
  leal -0x80(%r8), %edx          #  102   0x7d763  4      
  cmpl $0x3f, %edx               #  103   0x7d767  3      
  ja .L_7d940                    #  104   0x7d76a  6      
  movl %r9d, %r9d                #  105   0x7d770  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  106   0x7d773  6      
  movl %r9d, %r9d                #  107   0x7d779  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  108   0x7d77c  6      
  andl $0x3f, %r8d               #  109   0x7d782  4      
  addl $0x1, %eax                #  110   0x7d786  3      
  movl %r9d, %r9d                #  111   0x7d789  3      
  movl $0x0, (%r15,%r9,1)        #  112   0x7d78c  8      
  andl $0x3f, %edx               #  113   0x7d794  3      
  xchgw %ax, %ax                 #  114   0x7d797  3      
  andl $0x7, %ecx                #  115   0x7d79a  3      
  shll $0x12, %ecx               #  116   0x7d79d  3      
  shll $0xc, %edx                #  117   0x7d7a0  3      
  orl %ecx, %edx                 #  118   0x7d7a3  2      
  movl %r9d, %r9d                #  119   0x7d7a5  3      
  movzbl 0x6(%r15,%r9,1), %ecx   #  120   0x7d7a8  6      
  andl $0x3f, %ecx               #  121   0x7d7ae  3      
  shll $0x6, %ecx                #  122   0x7d7b1  3      
  orl %ecx, %edx                 #  123   0x7d7b4  2      
  orl %r8d, %edx                 #  124   0x7d7b6  3      
  nop                            #  125   0x7d7b9  1      
  movl %esi, %esi                #  126   0x7d7ba  2      
  movl %edx, (%r15,%rsi,1)       #  127   0x7d7bc  4      
  popq %r11                      #  128   0x7d7c0  3      
  andl $0xffffffe0, %r11d        #  129   0x7d7c3  7      
  addq %r15, %r11                #  130   0x7d7ca  3      
  jmpq %r11                      #  131   0x7d7cd  3      
  nop                            #  132   0x7d7d0  1      
.L_7d840:                        #        0x7d7d1  0      
  cmpl $0x3, %ecx                #  133   0x7d7d1  3      
  movl %r9d, %r9d                #  134   0x7d7d4  3      
  movl $0x3, (%r15,%r9,1)        #  135   0x7d7d7  8      
  jne .L_7d7c0                   #  136   0x7d7df  6      
  nop                            #  137   0x7d7e5  1      
.L_7d860:                        #        0x7d7e6  0      
  movl $0xfffffffe, %eax         #  138   0x7d7e6  5      
  jmpq .L_7d600                  #  139   0x7d7eb  5      
  nop                            #  140   0x7d7f0  1      
  nop                            #  141   0x7d7f1  1      
.L_7d880:                        #        0x7d7f2  0      
  movl %r9d, %r9d                #  142   0x7d7f2  3      
  movzbl 0x4(%r15,%r9,1), %r8d   #  143   0x7d7f5  6      
  xorl %eax, %eax                #  144   0x7d7fb  2      
  jmpq .L_7d660                  #  145   0x7d7fd  5      
  nop                            #  146   0x7d802  1      
  nop                            #  147   0x7d803  1      
.L_7d8a0:                        #        0x7d804  0      
  movl %r9d, %r9d                #  148   0x7d804  3      
  movl $0x0, (%r15,%r9,1)        #  149   0x7d807  8      
  movl %esi, %esi                #  150   0x7d80f  2      
  movl %r8d, (%r15,%rsi,1)       #  151   0x7d811  4      
  movl $0x1, %eax                #  152   0x7d815  5      
  popq %r11                      #  153   0x7d81a  3      
  nop                            #  154   0x7d81d  1      
  andl $0xffffffe0, %r11d        #  155   0x7d81e  7      
  addq %r15, %r11                #  156   0x7d825  3      
  jmpq %r11                      #  157   0x7d828  3      
  nop                            #  158   0x7d82b  1      
  nop                            #  159   0x7d82c  1      
.L_7d8e0:                        #        0x7d82d  0      
  movl %esi, %esi                #  160   0x7d82d  2      
  movl $0x0, (%r15,%rsi,1)       #  161   0x7d82f  8      
  movl %r9d, %r9d                #  162   0x7d837  3      
  movl $0x0, (%r15,%r9,1)        #  163   0x7d83a  8      
  xorl %eax, %eax                #  164   0x7d842  2      
  popq %r11                      #  165   0x7d844  3      
  nop                            #  166   0x7d847  1      
  andl $0xffffffe0, %r11d        #  167   0x7d848  7      
  addq %r15, %r11                #  168   0x7d84f  3      
  jmpq %r11                      #  169   0x7d852  3      
  nop                            #  170   0x7d855  1      
  nop                            #  171   0x7d856  1      
.L_7d920:                        #        0x7d857  0      
  cmpb $0xf4, %r11b              #  172   0x7d857  4      
  jne .L_7d740                   #  173   0x7d85b  6      
  nop                            #  174   0x7d861  1      
  nop                            #  175   0x7d862  1      
.L_7d940:                        #        0x7d863  0      
  movl %edi, %edi                #  176   0x7d863  2      
  movl $0x54, (%r15,%rdi,1)      #  177   0x7d865  8      
  movl $0xffffffff, %eax         #  178   0x7d86d  5      
  popq %r11                      #  179   0x7d872  3      
  andl $0xffffffe0, %r11d        #  180   0x7d875  7      
  addq %r15, %r11                #  181   0x7d87c  3      
  jmpq %r11                      #  182   0x7d87f  3      
  nop                            #  183   0x7d882  1      
.L_7d960:                        #        0x7d883  0      
  cmpl $0xffffffff, %ecx         #  184   0x7d883  6      
  je .L_7d700                    #  185   0x7d889  6      
  addl $0x1, %ecx                #  186   0x7d88f  3      
  jmpq .L_7d6e0                  #  187   0x7d892  5      
  nop                            #  188   0x7d897  1      
.L_7d980:                        #        0x7d898  0      
  leal (%rax,%rdx,1), %r10d      #  189   0x7d898  4      
  addl $0x1, %eax                #  190   0x7d89c  3      
  movl %r10d, %r10d              #  191   0x7d89f  3      
  movzbl (%r15,%r10,1), %r10d    #  192   0x7d8a2  5      
  jmpq .L_7d720                  #  193   0x7d8a7  5      
  nop                            #  194   0x7d8ac  1      
.L_7d9a0:                        #        0x7d8ad  0      
  cmpl $0x2, %ecx                #  195   0x7d8ad  3      
  movl %r9d, %r9d                #  196   0x7d8b0  3      
  movl $0x2, (%r15,%r9,1)        #  197   0x7d8b3  8      
  je .L_7d860                    #  198   0x7d8bb  6      
  nop                            #  199   0x7d8c1  1      
.L_7d9c0:                        #        0x7d8c2  0      
  leal (%rax,%rdx,1), %r8d       #  200   0x7d8c2  4      
  addl $0x1, %eax                #  201   0x7d8c6  3      
  movl %r8d, %r8d                #  202   0x7d8c9  3      
  movzbl (%r15,%r8,1), %r8d      #  203   0x7d8cc  5      
  jmpq .L_7d780                  #  204   0x7d8d1  5      
  nop                            #  205   0x7d8d6  1      
.L_7d9e0:                        #        0x7d8d7  0      
  movl %r8d, %r10d               #  206   0x7d8d7  3      
  movl %r9d, %r9d                #  207   0x7d8da  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  208   0x7d8dd  5      
  movl %r9d, %r9d                #  209   0x7d8e2  3      
  movl (%r15,%r9,1), %r8d        #  210   0x7d8e5  4      
  testl %r8d, %r8d               #  211   0x7d8e9  3      
  jne .L_7dc20                   #  212   0x7d8ec  6      
  nop                            #  213   0x7d8f2  1      
  movl %r9d, %r9d                #  214   0x7d8f3  3      
  movl $0x1, (%r15,%r9,1)        #  215   0x7d8f6  8      
  nop                            #  216   0x7d8fe  1      
  nop                            #  217   0x7d8ff  1      
.L_7da20:                        #        0x7d900  0      
  cmpl $0x1, %ecx                #  218   0x7d900  3      
  jbe .L_7d860                   #  219   0x7d903  6      
  movl %r9d, %r9d                #  220   0x7d909  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  221   0x7d90c  6      
  movl %r9d, %r9d                #  222   0x7d912  3      
  movl (%r15,%r9,1), %r8d        #  223   0x7d915  4      
  nop                            #  224   0x7d919  1      
.L_7da40:                        #        0x7d91a  0      
  cmpl $0x1, %r8d                #  225   0x7d91a  4      
  je .L_7dc40                    #  226   0x7d91e  6      
  movl %r9d, %r9d                #  227   0x7d924  3      
  movzbl 0x5(%r15,%r9,1), %r8d   #  228   0x7d927  6      
  nop                            #  229   0x7d92d  1      
.L_7da60:                        #        0x7d92e  0      
  cmpl $0x9f, %r8d               #  230   0x7d92e  4      
  jg .L_7da80                    #  231   0x7d932  6      
  cmpb $0xe0, %r10b              #  232   0x7d938  4      
  je .L_7d940                    #  233   0x7d93c  6      
  nop                            #  234   0x7d942  1      
.L_7da80:                        #        0x7d943  0      
  leal -0x80(%r8), %r10d         #  235   0x7d943  4      
  cmpl $0x3f, %r10d              #  236   0x7d947  4      
  ja .L_7d940                    #  237   0x7d94b  6      
  movl %r9d, %r9d                #  238   0x7d951  3      
  cmpl $0x1, (%r15,%r9,1)        #  239   0x7d954  5      
  movl %r9d, %r9d                #  240   0x7d959  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  241   0x7d95c  5      
  xchgw %ax, %ax                 #  242   0x7d961  3      
  je .L_7dc60                    #  243   0x7d964  6      
  nop                            #  244   0x7d96a  1      
  nop                            #  245   0x7d96b  1      
.L_7dac0:                        #        0x7d96c  0      
  leal (%rax,%rdx,1), %edx       #  246   0x7d96c  3      
  movl %edx, %edx                #  247   0x7d96f  2      
  movzbl (%r15,%rdx,1), %r8d     #  248   0x7d971  5      
  leal -0x80(%r8), %edx          #  249   0x7d976  4      
  cmpl $0x3f, %edx               #  250   0x7d97a  3      
  ja .L_7d940                    #  251   0x7d97d  6      
  movl %r9d, %r9d                #  252   0x7d983  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  253   0x7d986  6      
  movl %r9d, %r9d                #  254   0x7d98c  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  255   0x7d98f  6      
  andl $0x3f, %r8d               #  256   0x7d995  4      
  addl $0x1, %eax                #  257   0x7d999  3      
  movl %r9d, %r9d                #  258   0x7d99c  3      
  movl $0x0, (%r15,%r9,1)        #  259   0x7d99f  8      
  andl $0x3f, %edx               #  260   0x7d9a7  3      
  xchgw %ax, %ax                 #  261   0x7d9aa  3      
  shll $0xc, %ecx                #  262   0x7d9ad  3      
  shll $0x6, %edx                #  263   0x7d9b0  3      
  andl $0xffff, %ecx             #  264   0x7d9b3  6      
  orl %ecx, %edx                 #  265   0x7d9b9  2      
  orl %r8d, %edx                 #  266   0x7d9bb  3      
  movl %esi, %esi                #  267   0x7d9be  2      
  movl %edx, (%r15,%rsi,1)       #  268   0x7d9c0  4      
  popq %r11                      #  269   0x7d9c4  3      
  nop                            #  270   0x7d9c7  1      
  andl $0xffffffe0, %r11d        #  271   0x7d9c8  7      
  addq %r15, %r11                #  272   0x7d9cf  3      
  jmpq %r11                      #  273   0x7d9d2  3      
  nop                            #  274   0x7d9d5  1      
  nop                            #  275   0x7d9d6  1      
.L_7db40:                        #        0x7d9d7  0      
  movl %r9d, %r9d                #  276   0x7d9d7  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  277   0x7d9da  5      
  movl %r9d, %r9d                #  278   0x7d9df  3      
  movl (%r15,%r9,1), %r8d        #  279   0x7d9e2  4      
  testl %r8d, %r8d               #  280   0x7d9e6  3      
  jne .L_7dc00                   #  281   0x7d9e9  6      
  nop                            #  282   0x7d9ef  1      
  movl %r9d, %r9d                #  283   0x7d9f0  3      
  movl $0x1, (%r15,%r9,1)        #  284   0x7d9f3  8      
  nop                            #  285   0x7d9fb  1      
  nop                            #  286   0x7d9fc  1      
.L_7db80:                        #        0x7d9fd  0      
  cmpl $0x1, %ecx                #  287   0x7d9fd  3      
  jbe .L_7d860                   #  288   0x7da00  6      
  nop                            #  289   0x7da06  1      
  nop                            #  290   0x7da07  1      
.L_7dba0:                        #        0x7da08  0      
  leal (%rax,%rdx,1), %edx       #  291   0x7da08  3      
  movl %edx, %edx                #  292   0x7da0b  2      
  movzbl (%r15,%rdx,1), %ecx     #  293   0x7da0d  5      
  leal -0x80(%rcx), %edx         #  294   0x7da12  3      
  cmpl $0x3f, %edx               #  295   0x7da15  3      
  ja .L_7d940                    #  296   0x7da18  6      
  movl %r9d, %r9d                #  297   0x7da1e  3      
  cmpb $0xc1, 0x4(%r15,%r9,1)    #  298   0x7da21  6      
  nop                            #  299   0x7da27  1      
  jbe .L_7d940                   #  300   0x7da28  6      
  movl %r9d, %r9d                #  301   0x7da2e  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  302   0x7da31  6      
  andl $0x3f, %ecx               #  303   0x7da37  3      
  addl $0x1, %eax                #  304   0x7da3a  3      
  movl %r9d, %r9d                #  305   0x7da3d  3      
  movl $0x0, (%r15,%r9,1)        #  306   0x7da40  8      
  andl $0x1f, %edx               #  307   0x7da48  3      
  shll $0x6, %edx                #  308   0x7da4b  3      
  orl %edx, %ecx                 #  309   0x7da4e  2      
  movl %esi, %esi                #  310   0x7da50  2      
  movl %ecx, (%r15,%rsi,1)       #  311   0x7da52  4      
  popq %r11                      #  312   0x7da56  3      
  andl $0xffffffe0, %r11d        #  313   0x7da59  7      
  addq %r15, %r11                #  314   0x7da60  3      
  jmpq %r11                      #  315   0x7da63  3      
  nop                            #  316   0x7da66  1      
.L_7dc00:                        #        0x7da67  0      
  cmpl $0xffffffff, %ecx         #  317   0x7da67  6      
  je .L_7dba0                    #  318   0x7da6d  6      
  addl $0x1, %ecx                #  319   0x7da73  3      
  jmpq .L_7db80                  #  320   0x7da76  5      
  nop                            #  321   0x7da7b  1      
  nop                            #  322   0x7da7c  1      
.L_7dc20:                        #        0x7da7d  0      
  cmpl $0xffffffff, %ecx         #  323   0x7da7d  6      
  je .L_7da40                    #  324   0x7da83  6      
  addl $0x1, %ecx                #  325   0x7da89  3      
  jmpq .L_7da20                  #  326   0x7da8c  5      
  nop                            #  327   0x7da91  1      
.L_7dc40:                        #        0x7da92  0      
  leal (%rax,%rdx,1), %r8d       #  328   0x7da92  4      
  addl $0x1, %eax                #  329   0x7da96  3      
  movl %r8d, %r8d                #  330   0x7da99  3      
  movzbl (%r15,%r8,1), %r8d      #  331   0x7da9c  5      
  jmpq .L_7da60                  #  332   0x7daa1  5      
  nop                            #  333   0x7daa6  1      
.L_7dc60:                        #        0x7daa7  0      
  cmpl $0x2, %ecx                #  334   0x7daa7  3      
  movl %r9d, %r9d                #  335   0x7daaa  3      
  movl $0x2, (%r15,%r9,1)        #  336   0x7daad  8      
  je .L_7d860                    #  337   0x7dab5  6      
  jmpq .L_7dac0                  #  338   0x7dabb  5      
  nop                            #  339   0x7dac0  1      
                                                          
.size __utf8_mbtowc, .-__utf8_mbtowc

