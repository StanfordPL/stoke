  .text
  .globl __utf8_mbtowc
  .type __utf8_mbtowc, @function

#! file-offset 0x7d560
#! rip-offset  0x7d560
#! capacity    1696 bytes

# Text                           #  Line  RIP      Bytes  
.__utf8_mbtowc:                  #        0x7d560  0      
  movl %esi, %esi                #  1     0x7d560  2      
  leal -0x4(%rsp), %eax          #  2     0x7d562  4      
  movl %edx, %edx                #  3     0x7d566  2      
  testq %rsi, %rsi               #  4     0x7d568  3      
  movl %edi, %edi                #  5     0x7d56b  2      
  movl %r9d, %r9d                #  6     0x7d56d  3      
  cmoveq %rax, %rsi              #  7     0x7d570  4      
  xorl %eax, %eax                #  8     0x7d574  2      
  testq %rdx, %rdx               #  9     0x7d576  3      
  jne .L_7d5a0                   #  10    0x7d579  6      
  nop                            #  11    0x7d57f  1      
.L_7d580:                        #        0x7d580  0      
  popq %r11                      #  12    0x7d580  3      
  andl $0xffffffe0, %r11d        #  13    0x7d583  7      
  addq %r15, %r11                #  14    0x7d58a  3      
  jmpq %r11                      #  15    0x7d58d  3      
  nop                            #  16    0x7d590  1      
  nop                            #  17    0x7d591  1      
.L_7d5a0:                        #        0x7d592  0      
  testl %ecx, %ecx               #  18    0x7d592  2      
  je .L_7d7e0                    #  19    0x7d594  6      
  movl %r9d, %r9d                #  20    0x7d59a  3      
  movl (%r15,%r9,1), %r10d       #  21    0x7d59d  4      
  testl %r10d, %r10d             #  22    0x7d5a1  3      
  jne .L_7d800                   #  23    0x7d5a4  6      
  movl %edx, %edx                #  24    0x7d5aa  2      
  movzbl (%r15,%rdx,1), %r8d     #  25    0x7d5ac  5      
  nop                            #  26    0x7d5b1  1      
  movb $0x1, %al                 #  27    0x7d5b2  2      
  nop                            #  28    0x7d5b4  1      
  nop                            #  29    0x7d5b5  1      
.L_7d5e0:                        #        0x7d5b6  0      
  testl %r8d, %r8d               #  30    0x7d5b6  3      
  je .L_7d860                    #  31    0x7d5b9  6      
  cmpl $0x7f, %r8d               #  32    0x7d5bf  4      
  jle .L_7d820                   #  33    0x7d5c3  6      
  leal -0xc0(%r8), %r10d         #  34    0x7d5c9  7      
  cmpl $0x1f, %r10d              #  35    0x7d5d0  4      
  xchgw %ax, %ax                 #  36    0x7d5d4  3      
  jbe .L_7dac0                   #  37    0x7d5d7  6      
  leal -0xe0(%r8), %r10d         #  38    0x7d5dd  7      
  cmpl $0xf, %r10d               #  39    0x7d5e4  4      
  jbe .L_7d960                   #  40    0x7d5e8  6      
  leal -0xf0(%r8), %r10d         #  41    0x7d5ee  7      
  xchgw %ax, %ax                 #  42    0x7d5f5  3      
  cmpl $0x4, %r10d               #  43    0x7d5f8  4      
  ja .L_7d8c0                    #  44    0x7d5fc  6      
  movl %r8d, %r11d               #  45    0x7d602  3      
  movl %r9d, %r9d                #  46    0x7d605  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  47    0x7d608  5      
  movl %r9d, %r9d                #  48    0x7d60d  3      
  movl (%r15,%r9,1), %r8d        #  49    0x7d610  4      
  testl %r8d, %r8d               #  50    0x7d614  3      
  nop                            #  51    0x7d617  1      
  jne .L_7d8e0                   #  52    0x7d618  6      
  movl %r9d, %r9d                #  53    0x7d61e  3      
  movl $0x1, (%r15,%r9,1)        #  54    0x7d621  8      
  nop                            #  55    0x7d629  1      
.L_7d660:                        #        0x7d62a  0      
  cmpl $0x1, %ecx                #  56    0x7d62a  3      
  jbe .L_7d7e0                   #  57    0x7d62d  6      
  movl %r9d, %r9d                #  58    0x7d633  3      
  movzbl 0x4(%r15,%r9,1), %r11d  #  59    0x7d636  6      
  movl %r9d, %r9d                #  60    0x7d63c  3      
  movl (%r15,%r9,1), %r8d        #  61    0x7d63f  4      
  nop                            #  62    0x7d643  1      
.L_7d680:                        #        0x7d644  0      
  cmpl $0x1, %r8d                #  63    0x7d644  4      
  je .L_7d900                    #  64    0x7d648  6      
  movl %r9d, %r9d                #  65    0x7d64e  3      
  movzbl 0x5(%r15,%r9,1), %r10d  #  66    0x7d651  6      
  nop                            #  67    0x7d657  1      
.L_7d6a0:                        #        0x7d658  0      
  cmpl $0x8f, %r10d              #  68    0x7d658  4      
  jg .L_7d8a0                    #  69    0x7d65c  6      
  cmpb $0xf0, %r11b              #  70    0x7d662  4      
  je .L_7d8c0                    #  71    0x7d666  6      
  nop                            #  72    0x7d66c  1      
.L_7d6c0:                        #        0x7d66d  0      
  leal -0x80(%r10), %r11d        #  73    0x7d66d  4      
  cmpl $0x3f, %r11d              #  74    0x7d671  4      
  ja .L_7d8c0                    #  75    0x7d675  6      
  cmpl $0x1, %r8d                #  76    0x7d67b  4      
  movl %r9d, %r9d                #  77    0x7d67f  3      
  movb %r10b, 0x5(%r15,%r9,1)    #  78    0x7d682  5      
  je .L_7d920                    #  79    0x7d687  6      
  xorl %r10d, %r10d              #  80    0x7d68d  3      
  cmpl $0xffffffff, %ecx         #  81    0x7d690  6      
  setne %r10b                    #  82    0x7d696  4      
  addl %r10d, %ecx               #  83    0x7d69a  3      
  cmpl $0x2, %r8d                #  84    0x7d69d  4      
  je .L_7d940                    #  85    0x7d6a1  6      
  movl %r9d, %r9d                #  86    0x7d6a7  3      
  movzbl 0x6(%r15,%r9,1), %r8d   #  87    0x7d6aa  6      
.L_7d700:                        #        0x7d6b0  0      
  leal -0x80(%r8), %r10d         #  88    0x7d6b0  4      
  cmpl $0x3f, %r10d              #  89    0x7d6b4  4      
  ja .L_7d8c0                    #  90    0x7d6b8  6      
  movl %r9d, %r9d                #  91    0x7d6be  3      
  cmpl $0x2, (%r15,%r9,1)        #  92    0x7d6c1  5      
  movl %r9d, %r9d                #  93    0x7d6c6  3      
  movb %r8b, 0x6(%r15,%r9,1)     #  94    0x7d6c9  5      
  xchgw %ax, %ax                 #  95    0x7d6ce  3      
  je .L_7d7c0                    #  96    0x7d6d1  6      
  nop                            #  97    0x7d6d7  1      
  nop                            #  98    0x7d6d8  1      
.L_7d740:                        #        0x7d6d9  0      
  leal (%rax,%rdx,1), %edx       #  99    0x7d6d9  3      
  movl %edx, %edx                #  100   0x7d6dc  2      
  movzbl (%r15,%rdx,1), %r8d     #  101   0x7d6de  5      
  leal -0x80(%r8), %edx          #  102   0x7d6e3  4      
  cmpl $0x3f, %edx               #  103   0x7d6e7  3      
  ja .L_7d8c0                    #  104   0x7d6ea  6      
  movl %r9d, %r9d                #  105   0x7d6f0  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  106   0x7d6f3  6      
  movl %r9d, %r9d                #  107   0x7d6f9  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  108   0x7d6fc  6      
  andl $0x3f, %r8d               #  109   0x7d702  4      
  addl $0x1, %eax                #  110   0x7d706  3      
  movl %r9d, %r9d                #  111   0x7d709  3      
  movl $0x0, (%r15,%r9,1)        #  112   0x7d70c  8      
  andl $0x3f, %edx               #  113   0x7d714  3      
  xchgw %ax, %ax                 #  114   0x7d717  3      
  andl $0x7, %ecx                #  115   0x7d71a  3      
  shll $0x12, %ecx               #  116   0x7d71d  3      
  shll $0xc, %edx                #  117   0x7d720  3      
  orl %ecx, %edx                 #  118   0x7d723  2      
  movl %r9d, %r9d                #  119   0x7d725  3      
  movzbl 0x6(%r15,%r9,1), %ecx   #  120   0x7d728  6      
  andl $0x3f, %ecx               #  121   0x7d72e  3      
  shll $0x6, %ecx                #  122   0x7d731  3      
  orl %ecx, %edx                 #  123   0x7d734  2      
  orl %r8d, %edx                 #  124   0x7d736  3      
  nop                            #  125   0x7d739  1      
  movl %esi, %esi                #  126   0x7d73a  2      
  movl %edx, (%r15,%rsi,1)       #  127   0x7d73c  4      
  popq %r11                      #  128   0x7d740  3      
  andl $0xffffffe0, %r11d        #  129   0x7d743  7      
  addq %r15, %r11                #  130   0x7d74a  3      
  jmpq %r11                      #  131   0x7d74d  3      
  nop                            #  132   0x7d750  1      
.L_7d7c0:                        #        0x7d751  0      
  cmpl $0x3, %ecx                #  133   0x7d751  3      
  movl %r9d, %r9d                #  134   0x7d754  3      
  movl $0x3, (%r15,%r9,1)        #  135   0x7d757  8      
  jne .L_7d740                   #  136   0x7d75f  6      
  nop                            #  137   0x7d765  1      
.L_7d7e0:                        #        0x7d766  0      
  movl $0xfffffffe, %eax         #  138   0x7d766  5      
  jmpq .L_7d580                  #  139   0x7d76b  5      
  nop                            #  140   0x7d770  1      
  nop                            #  141   0x7d771  1      
.L_7d800:                        #        0x7d772  0      
  movl %r9d, %r9d                #  142   0x7d772  3      
  movzbl 0x4(%r15,%r9,1), %r8d   #  143   0x7d775  6      
  xorl %eax, %eax                #  144   0x7d77b  2      
  jmpq .L_7d5e0                  #  145   0x7d77d  5      
  nop                            #  146   0x7d782  1      
  nop                            #  147   0x7d783  1      
.L_7d820:                        #        0x7d784  0      
  movl %r9d, %r9d                #  148   0x7d784  3      
  movl $0x0, (%r15,%r9,1)        #  149   0x7d787  8      
  movl %esi, %esi                #  150   0x7d78f  2      
  movl %r8d, (%r15,%rsi,1)       #  151   0x7d791  4      
  movl $0x1, %eax                #  152   0x7d795  5      
  popq %r11                      #  153   0x7d79a  3      
  nop                            #  154   0x7d79d  1      
  andl $0xffffffe0, %r11d        #  155   0x7d79e  7      
  addq %r15, %r11                #  156   0x7d7a5  3      
  jmpq %r11                      #  157   0x7d7a8  3      
  nop                            #  158   0x7d7ab  1      
  nop                            #  159   0x7d7ac  1      
.L_7d860:                        #        0x7d7ad  0      
  movl %esi, %esi                #  160   0x7d7ad  2      
  movl $0x0, (%r15,%rsi,1)       #  161   0x7d7af  8      
  movl %r9d, %r9d                #  162   0x7d7b7  3      
  movl $0x0, (%r15,%r9,1)        #  163   0x7d7ba  8      
  xorl %eax, %eax                #  164   0x7d7c2  2      
  popq %r11                      #  165   0x7d7c4  3      
  nop                            #  166   0x7d7c7  1      
  andl $0xffffffe0, %r11d        #  167   0x7d7c8  7      
  addq %r15, %r11                #  168   0x7d7cf  3      
  jmpq %r11                      #  169   0x7d7d2  3      
  nop                            #  170   0x7d7d5  1      
  nop                            #  171   0x7d7d6  1      
.L_7d8a0:                        #        0x7d7d7  0      
  cmpb $0xf4, %r11b              #  172   0x7d7d7  4      
  jne .L_7d6c0                   #  173   0x7d7db  6      
  nop                            #  174   0x7d7e1  1      
  nop                            #  175   0x7d7e2  1      
.L_7d8c0:                        #        0x7d7e3  0      
  movl %edi, %edi                #  176   0x7d7e3  2      
  movl $0x54, (%r15,%rdi,1)      #  177   0x7d7e5  8      
  movl $0xffffffff, %eax         #  178   0x7d7ed  5      
  popq %r11                      #  179   0x7d7f2  3      
  andl $0xffffffe0, %r11d        #  180   0x7d7f5  7      
  addq %r15, %r11                #  181   0x7d7fc  3      
  jmpq %r11                      #  182   0x7d7ff  3      
  nop                            #  183   0x7d802  1      
.L_7d8e0:                        #        0x7d803  0      
  cmpl $0xffffffff, %ecx         #  184   0x7d803  6      
  je .L_7d680                    #  185   0x7d809  6      
  addl $0x1, %ecx                #  186   0x7d80f  3      
  jmpq .L_7d660                  #  187   0x7d812  5      
  nop                            #  188   0x7d817  1      
.L_7d900:                        #        0x7d818  0      
  leal (%rax,%rdx,1), %r10d      #  189   0x7d818  4      
  addl $0x1, %eax                #  190   0x7d81c  3      
  movl %r10d, %r10d              #  191   0x7d81f  3      
  movzbl (%r15,%r10,1), %r10d    #  192   0x7d822  5      
  jmpq .L_7d6a0                  #  193   0x7d827  5      
  nop                            #  194   0x7d82c  1      
.L_7d920:                        #        0x7d82d  0      
  cmpl $0x2, %ecx                #  195   0x7d82d  3      
  movl %r9d, %r9d                #  196   0x7d830  3      
  movl $0x2, (%r15,%r9,1)        #  197   0x7d833  8      
  je .L_7d7e0                    #  198   0x7d83b  6      
  nop                            #  199   0x7d841  1      
.L_7d940:                        #        0x7d842  0      
  leal (%rax,%rdx,1), %r8d       #  200   0x7d842  4      
  addl $0x1, %eax                #  201   0x7d846  3      
  movl %r8d, %r8d                #  202   0x7d849  3      
  movzbl (%r15,%r8,1), %r8d      #  203   0x7d84c  5      
  jmpq .L_7d700                  #  204   0x7d851  5      
  nop                            #  205   0x7d856  1      
.L_7d960:                        #        0x7d857  0      
  movl %r8d, %r10d               #  206   0x7d857  3      
  movl %r9d, %r9d                #  207   0x7d85a  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  208   0x7d85d  5      
  movl %r9d, %r9d                #  209   0x7d862  3      
  movl (%r15,%r9,1), %r8d        #  210   0x7d865  4      
  testl %r8d, %r8d               #  211   0x7d869  3      
  jne .L_7dba0                   #  212   0x7d86c  6      
  nop                            #  213   0x7d872  1      
  movl %r9d, %r9d                #  214   0x7d873  3      
  movl $0x1, (%r15,%r9,1)        #  215   0x7d876  8      
  nop                            #  216   0x7d87e  1      
  nop                            #  217   0x7d87f  1      
.L_7d9a0:                        #        0x7d880  0      
  cmpl $0x1, %ecx                #  218   0x7d880  3      
  jbe .L_7d7e0                   #  219   0x7d883  6      
  movl %r9d, %r9d                #  220   0x7d889  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  221   0x7d88c  6      
  movl %r9d, %r9d                #  222   0x7d892  3      
  movl (%r15,%r9,1), %r8d        #  223   0x7d895  4      
  nop                            #  224   0x7d899  1      
.L_7d9c0:                        #        0x7d89a  0      
  cmpl $0x1, %r8d                #  225   0x7d89a  4      
  je .L_7dbc0                    #  226   0x7d89e  6      
  movl %r9d, %r9d                #  227   0x7d8a4  3      
  movzbl 0x5(%r15,%r9,1), %r8d   #  228   0x7d8a7  6      
  nop                            #  229   0x7d8ad  1      
.L_7d9e0:                        #        0x7d8ae  0      
  cmpl $0x9f, %r8d               #  230   0x7d8ae  4      
  jg .L_7da00                    #  231   0x7d8b2  6      
  cmpb $0xe0, %r10b              #  232   0x7d8b8  4      
  je .L_7d8c0                    #  233   0x7d8bc  6      
  nop                            #  234   0x7d8c2  1      
.L_7da00:                        #        0x7d8c3  0      
  leal -0x80(%r8), %r10d         #  235   0x7d8c3  4      
  cmpl $0x3f, %r10d              #  236   0x7d8c7  4      
  ja .L_7d8c0                    #  237   0x7d8cb  6      
  movl %r9d, %r9d                #  238   0x7d8d1  3      
  cmpl $0x1, (%r15,%r9,1)        #  239   0x7d8d4  5      
  movl %r9d, %r9d                #  240   0x7d8d9  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  241   0x7d8dc  5      
  xchgw %ax, %ax                 #  242   0x7d8e1  3      
  je .L_7dbe0                    #  243   0x7d8e4  6      
  nop                            #  244   0x7d8ea  1      
  nop                            #  245   0x7d8eb  1      
.L_7da40:                        #        0x7d8ec  0      
  leal (%rax,%rdx,1), %edx       #  246   0x7d8ec  3      
  movl %edx, %edx                #  247   0x7d8ef  2      
  movzbl (%r15,%rdx,1), %r8d     #  248   0x7d8f1  5      
  leal -0x80(%r8), %edx          #  249   0x7d8f6  4      
  cmpl $0x3f, %edx               #  250   0x7d8fa  3      
  ja .L_7d8c0                    #  251   0x7d8fd  6      
  movl %r9d, %r9d                #  252   0x7d903  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  253   0x7d906  6      
  movl %r9d, %r9d                #  254   0x7d90c  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  255   0x7d90f  6      
  andl $0x3f, %r8d               #  256   0x7d915  4      
  addl $0x1, %eax                #  257   0x7d919  3      
  movl %r9d, %r9d                #  258   0x7d91c  3      
  movl $0x0, (%r15,%r9,1)        #  259   0x7d91f  8      
  andl $0x3f, %edx               #  260   0x7d927  3      
  xchgw %ax, %ax                 #  261   0x7d92a  3      
  shll $0xc, %ecx                #  262   0x7d92d  3      
  shll $0x6, %edx                #  263   0x7d930  3      
  andl $0xffff, %ecx             #  264   0x7d933  6      
  orl %ecx, %edx                 #  265   0x7d939  2      
  orl %r8d, %edx                 #  266   0x7d93b  3      
  movl %esi, %esi                #  267   0x7d93e  2      
  movl %edx, (%r15,%rsi,1)       #  268   0x7d940  4      
  popq %r11                      #  269   0x7d944  3      
  nop                            #  270   0x7d947  1      
  andl $0xffffffe0, %r11d        #  271   0x7d948  7      
  addq %r15, %r11                #  272   0x7d94f  3      
  jmpq %r11                      #  273   0x7d952  3      
  nop                            #  274   0x7d955  1      
  nop                            #  275   0x7d956  1      
.L_7dac0:                        #        0x7d957  0      
  movl %r9d, %r9d                #  276   0x7d957  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  277   0x7d95a  5      
  movl %r9d, %r9d                #  278   0x7d95f  3      
  movl (%r15,%r9,1), %r8d        #  279   0x7d962  4      
  testl %r8d, %r8d               #  280   0x7d966  3      
  jne .L_7db80                   #  281   0x7d969  6      
  nop                            #  282   0x7d96f  1      
  movl %r9d, %r9d                #  283   0x7d970  3      
  movl $0x1, (%r15,%r9,1)        #  284   0x7d973  8      
  nop                            #  285   0x7d97b  1      
  nop                            #  286   0x7d97c  1      
.L_7db00:                        #        0x7d97d  0      
  cmpl $0x1, %ecx                #  287   0x7d97d  3      
  jbe .L_7d7e0                   #  288   0x7d980  6      
  nop                            #  289   0x7d986  1      
  nop                            #  290   0x7d987  1      
.L_7db20:                        #        0x7d988  0      
  leal (%rax,%rdx,1), %edx       #  291   0x7d988  3      
  movl %edx, %edx                #  292   0x7d98b  2      
  movzbl (%r15,%rdx,1), %ecx     #  293   0x7d98d  5      
  leal -0x80(%rcx), %edx         #  294   0x7d992  3      
  cmpl $0x3f, %edx               #  295   0x7d995  3      
  ja .L_7d8c0                    #  296   0x7d998  6      
  movl %r9d, %r9d                #  297   0x7d99e  3      
  cmpb $0xc1, 0x4(%r15,%r9,1)    #  298   0x7d9a1  6      
  nop                            #  299   0x7d9a7  1      
  jbe .L_7d8c0                   #  300   0x7d9a8  6      
  movl %r9d, %r9d                #  301   0x7d9ae  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  302   0x7d9b1  6      
  andl $0x3f, %ecx               #  303   0x7d9b7  3      
  addl $0x1, %eax                #  304   0x7d9ba  3      
  movl %r9d, %r9d                #  305   0x7d9bd  3      
  movl $0x0, (%r15,%r9,1)        #  306   0x7d9c0  8      
  andl $0x1f, %edx               #  307   0x7d9c8  3      
  shll $0x6, %edx                #  308   0x7d9cb  3      
  orl %edx, %ecx                 #  309   0x7d9ce  2      
  movl %esi, %esi                #  310   0x7d9d0  2      
  movl %ecx, (%r15,%rsi,1)       #  311   0x7d9d2  4      
  popq %r11                      #  312   0x7d9d6  3      
  andl $0xffffffe0, %r11d        #  313   0x7d9d9  7      
  addq %r15, %r11                #  314   0x7d9e0  3      
  jmpq %r11                      #  315   0x7d9e3  3      
  nop                            #  316   0x7d9e6  1      
.L_7db80:                        #        0x7d9e7  0      
  cmpl $0xffffffff, %ecx         #  317   0x7d9e7  6      
  je .L_7db20                    #  318   0x7d9ed  6      
  addl $0x1, %ecx                #  319   0x7d9f3  3      
  jmpq .L_7db00                  #  320   0x7d9f6  5      
  nop                            #  321   0x7d9fb  1      
  nop                            #  322   0x7d9fc  1      
.L_7dba0:                        #        0x7d9fd  0      
  cmpl $0xffffffff, %ecx         #  323   0x7d9fd  6      
  je .L_7d9c0                    #  324   0x7da03  6      
  addl $0x1, %ecx                #  325   0x7da09  3      
  jmpq .L_7d9a0                  #  326   0x7da0c  5      
  nop                            #  327   0x7da11  1      
.L_7dbc0:                        #        0x7da12  0      
  leal (%rax,%rdx,1), %r8d       #  328   0x7da12  4      
  addl $0x1, %eax                #  329   0x7da16  3      
  movl %r8d, %r8d                #  330   0x7da19  3      
  movzbl (%r15,%r8,1), %r8d      #  331   0x7da1c  5      
  jmpq .L_7d9e0                  #  332   0x7da21  5      
  nop                            #  333   0x7da26  1      
.L_7dbe0:                        #        0x7da27  0      
  cmpl $0x2, %ecx                #  334   0x7da27  3      
  movl %r9d, %r9d                #  335   0x7da2a  3      
  movl $0x2, (%r15,%r9,1)        #  336   0x7da2d  8      
  je .L_7d7e0                    #  337   0x7da35  6      
  jmpq .L_7da40                  #  338   0x7da3b  5      
  nop                            #  339   0x7da40  1      
                                                          
.size __utf8_mbtowc, .-__utf8_mbtowc

