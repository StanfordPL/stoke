  .text
  .globl __utf8_mbtowc
  .type __utf8_mbtowc, @function

#! file-offset 0x7d540
#! rip-offset  0x7d540
#! capacity    1696 bytes

# Text                           #  Line  RIP      Bytes  
.__utf8_mbtowc:                  #        0x7d540  0      
  movl %esi, %esi                #  1     0x7d540  2      
  leal -0x4(%rsp), %eax          #  2     0x7d542  4      
  movl %edx, %edx                #  3     0x7d546  2      
  testq %rsi, %rsi               #  4     0x7d548  3      
  movl %edi, %edi                #  5     0x7d54b  2      
  movl %r9d, %r9d                #  6     0x7d54d  3      
  cmoveq %rax, %rsi              #  7     0x7d550  4      
  xorl %eax, %eax                #  8     0x7d554  2      
  testq %rdx, %rdx               #  9     0x7d556  3      
  jne .L_7d580                   #  10    0x7d559  6      
  nop                            #  11    0x7d55f  1      
.L_7d560:                        #        0x7d560  0      
  popq %r11                      #  12    0x7d560  3      
  andl $0xffffffe0, %r11d        #  13    0x7d563  7      
  addq %r15, %r11                #  14    0x7d56a  3      
  jmpq %r11                      #  15    0x7d56d  3      
  nop                            #  16    0x7d570  1      
  nop                            #  17    0x7d571  1      
.L_7d580:                        #        0x7d572  0      
  testl %ecx, %ecx               #  18    0x7d572  2      
  je .L_7d7c0                    #  19    0x7d574  6      
  movl %r9d, %r9d                #  20    0x7d57a  3      
  movl (%r15,%r9,1), %r10d       #  21    0x7d57d  4      
  testl %r10d, %r10d             #  22    0x7d581  3      
  jne .L_7d7e0                   #  23    0x7d584  6      
  movl %edx, %edx                #  24    0x7d58a  2      
  movzbl (%r15,%rdx,1), %r8d     #  25    0x7d58c  5      
  nop                            #  26    0x7d591  1      
  movb $0x1, %al                 #  27    0x7d592  2      
  nop                            #  28    0x7d594  1      
  nop                            #  29    0x7d595  1      
.L_7d5c0:                        #        0x7d596  0      
  testl %r8d, %r8d               #  30    0x7d596  3      
  je .L_7d840                    #  31    0x7d599  6      
  cmpl $0x7f, %r8d               #  32    0x7d59f  4      
  jle .L_7d800                   #  33    0x7d5a3  6      
  leal -0xc0(%r8), %r10d         #  34    0x7d5a9  7      
  cmpl $0x1f, %r10d              #  35    0x7d5b0  4      
  xchgw %ax, %ax                 #  36    0x7d5b4  3      
  jbe .L_7daa0                   #  37    0x7d5b7  6      
  leal -0xe0(%r8), %r10d         #  38    0x7d5bd  7      
  cmpl $0xf, %r10d               #  39    0x7d5c4  4      
  jbe .L_7d940                   #  40    0x7d5c8  6      
  leal -0xf0(%r8), %r10d         #  41    0x7d5ce  7      
  xchgw %ax, %ax                 #  42    0x7d5d5  3      
  cmpl $0x4, %r10d               #  43    0x7d5d8  4      
  ja .L_7d8a0                    #  44    0x7d5dc  6      
  movl %r8d, %r11d               #  45    0x7d5e2  3      
  movl %r9d, %r9d                #  46    0x7d5e5  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  47    0x7d5e8  5      
  movl %r9d, %r9d                #  48    0x7d5ed  3      
  movl (%r15,%r9,1), %r8d        #  49    0x7d5f0  4      
  testl %r8d, %r8d               #  50    0x7d5f4  3      
  nop                            #  51    0x7d5f7  1      
  jne .L_7d8c0                   #  52    0x7d5f8  6      
  movl %r9d, %r9d                #  53    0x7d5fe  3      
  movl $0x1, (%r15,%r9,1)        #  54    0x7d601  8      
  nop                            #  55    0x7d609  1      
.L_7d640:                        #        0x7d60a  0      
  cmpl $0x1, %ecx                #  56    0x7d60a  3      
  jbe .L_7d7c0                   #  57    0x7d60d  6      
  movl %r9d, %r9d                #  58    0x7d613  3      
  movzbl 0x4(%r15,%r9,1), %r11d  #  59    0x7d616  6      
  movl %r9d, %r9d                #  60    0x7d61c  3      
  movl (%r15,%r9,1), %r8d        #  61    0x7d61f  4      
  nop                            #  62    0x7d623  1      
.L_7d660:                        #        0x7d624  0      
  cmpl $0x1, %r8d                #  63    0x7d624  4      
  je .L_7d8e0                    #  64    0x7d628  6      
  movl %r9d, %r9d                #  65    0x7d62e  3      
  movzbl 0x5(%r15,%r9,1), %r10d  #  66    0x7d631  6      
  nop                            #  67    0x7d637  1      
.L_7d680:                        #        0x7d638  0      
  cmpl $0x8f, %r10d              #  68    0x7d638  4      
  jg .L_7d880                    #  69    0x7d63c  6      
  cmpb $0xf0, %r11b              #  70    0x7d642  4      
  je .L_7d8a0                    #  71    0x7d646  6      
  nop                            #  72    0x7d64c  1      
.L_7d6a0:                        #        0x7d64d  0      
  leal -0x80(%r10), %r11d        #  73    0x7d64d  4      
  cmpl $0x3f, %r11d              #  74    0x7d651  4      
  ja .L_7d8a0                    #  75    0x7d655  6      
  cmpl $0x1, %r8d                #  76    0x7d65b  4      
  movl %r9d, %r9d                #  77    0x7d65f  3      
  movb %r10b, 0x5(%r15,%r9,1)    #  78    0x7d662  5      
  je .L_7d900                    #  79    0x7d667  6      
  xorl %r10d, %r10d              #  80    0x7d66d  3      
  cmpl $0xffffffff, %ecx         #  81    0x7d670  6      
  setne %r10b                    #  82    0x7d676  4      
  addl %r10d, %ecx               #  83    0x7d67a  3      
  cmpl $0x2, %r8d                #  84    0x7d67d  4      
  je .L_7d920                    #  85    0x7d681  6      
  movl %r9d, %r9d                #  86    0x7d687  3      
  movzbl 0x6(%r15,%r9,1), %r8d   #  87    0x7d68a  6      
.L_7d6e0:                        #        0x7d690  0      
  leal -0x80(%r8), %r10d         #  88    0x7d690  4      
  cmpl $0x3f, %r10d              #  89    0x7d694  4      
  ja .L_7d8a0                    #  90    0x7d698  6      
  movl %r9d, %r9d                #  91    0x7d69e  3      
  cmpl $0x2, (%r15,%r9,1)        #  92    0x7d6a1  5      
  movl %r9d, %r9d                #  93    0x7d6a6  3      
  movb %r8b, 0x6(%r15,%r9,1)     #  94    0x7d6a9  5      
  xchgw %ax, %ax                 #  95    0x7d6ae  3      
  je .L_7d7a0                    #  96    0x7d6b1  6      
  nop                            #  97    0x7d6b7  1      
  nop                            #  98    0x7d6b8  1      
.L_7d720:                        #        0x7d6b9  0      
  leal (%rax,%rdx,1), %edx       #  99    0x7d6b9  3      
  movl %edx, %edx                #  100   0x7d6bc  2      
  movzbl (%r15,%rdx,1), %r8d     #  101   0x7d6be  5      
  leal -0x80(%r8), %edx          #  102   0x7d6c3  4      
  cmpl $0x3f, %edx               #  103   0x7d6c7  3      
  ja .L_7d8a0                    #  104   0x7d6ca  6      
  movl %r9d, %r9d                #  105   0x7d6d0  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  106   0x7d6d3  6      
  movl %r9d, %r9d                #  107   0x7d6d9  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  108   0x7d6dc  6      
  andl $0x3f, %r8d               #  109   0x7d6e2  4      
  addl $0x1, %eax                #  110   0x7d6e6  3      
  movl %r9d, %r9d                #  111   0x7d6e9  3      
  movl $0x0, (%r15,%r9,1)        #  112   0x7d6ec  8      
  andl $0x3f, %edx               #  113   0x7d6f4  3      
  xchgw %ax, %ax                 #  114   0x7d6f7  3      
  andl $0x7, %ecx                #  115   0x7d6fa  3      
  shll $0x12, %ecx               #  116   0x7d6fd  3      
  shll $0xc, %edx                #  117   0x7d700  3      
  orl %ecx, %edx                 #  118   0x7d703  2      
  movl %r9d, %r9d                #  119   0x7d705  3      
  movzbl 0x6(%r15,%r9,1), %ecx   #  120   0x7d708  6      
  andl $0x3f, %ecx               #  121   0x7d70e  3      
  shll $0x6, %ecx                #  122   0x7d711  3      
  orl %ecx, %edx                 #  123   0x7d714  2      
  orl %r8d, %edx                 #  124   0x7d716  3      
  nop                            #  125   0x7d719  1      
  movl %esi, %esi                #  126   0x7d71a  2      
  movl %edx, (%r15,%rsi,1)       #  127   0x7d71c  4      
  popq %r11                      #  128   0x7d720  3      
  andl $0xffffffe0, %r11d        #  129   0x7d723  7      
  addq %r15, %r11                #  130   0x7d72a  3      
  jmpq %r11                      #  131   0x7d72d  3      
  nop                            #  132   0x7d730  1      
.L_7d7a0:                        #        0x7d731  0      
  cmpl $0x3, %ecx                #  133   0x7d731  3      
  movl %r9d, %r9d                #  134   0x7d734  3      
  movl $0x3, (%r15,%r9,1)        #  135   0x7d737  8      
  jne .L_7d720                   #  136   0x7d73f  6      
  nop                            #  137   0x7d745  1      
.L_7d7c0:                        #        0x7d746  0      
  movl $0xfffffffe, %eax         #  138   0x7d746  5      
  jmpq .L_7d560                  #  139   0x7d74b  5      
  nop                            #  140   0x7d750  1      
  nop                            #  141   0x7d751  1      
.L_7d7e0:                        #        0x7d752  0      
  movl %r9d, %r9d                #  142   0x7d752  3      
  movzbl 0x4(%r15,%r9,1), %r8d   #  143   0x7d755  6      
  xorl %eax, %eax                #  144   0x7d75b  2      
  jmpq .L_7d5c0                  #  145   0x7d75d  5      
  nop                            #  146   0x7d762  1      
  nop                            #  147   0x7d763  1      
.L_7d800:                        #        0x7d764  0      
  movl %r9d, %r9d                #  148   0x7d764  3      
  movl $0x0, (%r15,%r9,1)        #  149   0x7d767  8      
  movl %esi, %esi                #  150   0x7d76f  2      
  movl %r8d, (%r15,%rsi,1)       #  151   0x7d771  4      
  movl $0x1, %eax                #  152   0x7d775  5      
  popq %r11                      #  153   0x7d77a  3      
  nop                            #  154   0x7d77d  1      
  andl $0xffffffe0, %r11d        #  155   0x7d77e  7      
  addq %r15, %r11                #  156   0x7d785  3      
  jmpq %r11                      #  157   0x7d788  3      
  nop                            #  158   0x7d78b  1      
  nop                            #  159   0x7d78c  1      
.L_7d840:                        #        0x7d78d  0      
  movl %esi, %esi                #  160   0x7d78d  2      
  movl $0x0, (%r15,%rsi,1)       #  161   0x7d78f  8      
  movl %r9d, %r9d                #  162   0x7d797  3      
  movl $0x0, (%r15,%r9,1)        #  163   0x7d79a  8      
  xorl %eax, %eax                #  164   0x7d7a2  2      
  popq %r11                      #  165   0x7d7a4  3      
  nop                            #  166   0x7d7a7  1      
  andl $0xffffffe0, %r11d        #  167   0x7d7a8  7      
  addq %r15, %r11                #  168   0x7d7af  3      
  jmpq %r11                      #  169   0x7d7b2  3      
  nop                            #  170   0x7d7b5  1      
  nop                            #  171   0x7d7b6  1      
.L_7d880:                        #        0x7d7b7  0      
  cmpb $0xf4, %r11b              #  172   0x7d7b7  4      
  jne .L_7d6a0                   #  173   0x7d7bb  6      
  nop                            #  174   0x7d7c1  1      
  nop                            #  175   0x7d7c2  1      
.L_7d8a0:                        #        0x7d7c3  0      
  movl %edi, %edi                #  176   0x7d7c3  2      
  movl $0x54, (%r15,%rdi,1)      #  177   0x7d7c5  8      
  movl $0xffffffff, %eax         #  178   0x7d7cd  5      
  popq %r11                      #  179   0x7d7d2  3      
  andl $0xffffffe0, %r11d        #  180   0x7d7d5  7      
  addq %r15, %r11                #  181   0x7d7dc  3      
  jmpq %r11                      #  182   0x7d7df  3      
  nop                            #  183   0x7d7e2  1      
.L_7d8c0:                        #        0x7d7e3  0      
  cmpl $0xffffffff, %ecx         #  184   0x7d7e3  6      
  je .L_7d660                    #  185   0x7d7e9  6      
  addl $0x1, %ecx                #  186   0x7d7ef  3      
  jmpq .L_7d640                  #  187   0x7d7f2  5      
  nop                            #  188   0x7d7f7  1      
.L_7d8e0:                        #        0x7d7f8  0      
  leal (%rax,%rdx,1), %r10d      #  189   0x7d7f8  4      
  addl $0x1, %eax                #  190   0x7d7fc  3      
  movl %r10d, %r10d              #  191   0x7d7ff  3      
  movzbl (%r15,%r10,1), %r10d    #  192   0x7d802  5      
  jmpq .L_7d680                  #  193   0x7d807  5      
  nop                            #  194   0x7d80c  1      
.L_7d900:                        #        0x7d80d  0      
  cmpl $0x2, %ecx                #  195   0x7d80d  3      
  movl %r9d, %r9d                #  196   0x7d810  3      
  movl $0x2, (%r15,%r9,1)        #  197   0x7d813  8      
  je .L_7d7c0                    #  198   0x7d81b  6      
  nop                            #  199   0x7d821  1      
.L_7d920:                        #        0x7d822  0      
  leal (%rax,%rdx,1), %r8d       #  200   0x7d822  4      
  addl $0x1, %eax                #  201   0x7d826  3      
  movl %r8d, %r8d                #  202   0x7d829  3      
  movzbl (%r15,%r8,1), %r8d      #  203   0x7d82c  5      
  jmpq .L_7d6e0                  #  204   0x7d831  5      
  nop                            #  205   0x7d836  1      
.L_7d940:                        #        0x7d837  0      
  movl %r8d, %r10d               #  206   0x7d837  3      
  movl %r9d, %r9d                #  207   0x7d83a  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  208   0x7d83d  5      
  movl %r9d, %r9d                #  209   0x7d842  3      
  movl (%r15,%r9,1), %r8d        #  210   0x7d845  4      
  testl %r8d, %r8d               #  211   0x7d849  3      
  jne .L_7db80                   #  212   0x7d84c  6      
  nop                            #  213   0x7d852  1      
  movl %r9d, %r9d                #  214   0x7d853  3      
  movl $0x1, (%r15,%r9,1)        #  215   0x7d856  8      
  nop                            #  216   0x7d85e  1      
  nop                            #  217   0x7d85f  1      
.L_7d980:                        #        0x7d860  0      
  cmpl $0x1, %ecx                #  218   0x7d860  3      
  jbe .L_7d7c0                   #  219   0x7d863  6      
  movl %r9d, %r9d                #  220   0x7d869  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  221   0x7d86c  6      
  movl %r9d, %r9d                #  222   0x7d872  3      
  movl (%r15,%r9,1), %r8d        #  223   0x7d875  4      
  nop                            #  224   0x7d879  1      
.L_7d9a0:                        #        0x7d87a  0      
  cmpl $0x1, %r8d                #  225   0x7d87a  4      
  je .L_7dba0                    #  226   0x7d87e  6      
  movl %r9d, %r9d                #  227   0x7d884  3      
  movzbl 0x5(%r15,%r9,1), %r8d   #  228   0x7d887  6      
  nop                            #  229   0x7d88d  1      
.L_7d9c0:                        #        0x7d88e  0      
  cmpl $0x9f, %r8d               #  230   0x7d88e  4      
  jg .L_7d9e0                    #  231   0x7d892  6      
  cmpb $0xe0, %r10b              #  232   0x7d898  4      
  je .L_7d8a0                    #  233   0x7d89c  6      
  nop                            #  234   0x7d8a2  1      
.L_7d9e0:                        #        0x7d8a3  0      
  leal -0x80(%r8), %r10d         #  235   0x7d8a3  4      
  cmpl $0x3f, %r10d              #  236   0x7d8a7  4      
  ja .L_7d8a0                    #  237   0x7d8ab  6      
  movl %r9d, %r9d                #  238   0x7d8b1  3      
  cmpl $0x1, (%r15,%r9,1)        #  239   0x7d8b4  5      
  movl %r9d, %r9d                #  240   0x7d8b9  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  241   0x7d8bc  5      
  xchgw %ax, %ax                 #  242   0x7d8c1  3      
  je .L_7dbc0                    #  243   0x7d8c4  6      
  nop                            #  244   0x7d8ca  1      
  nop                            #  245   0x7d8cb  1      
.L_7da20:                        #        0x7d8cc  0      
  leal (%rax,%rdx,1), %edx       #  246   0x7d8cc  3      
  movl %edx, %edx                #  247   0x7d8cf  2      
  movzbl (%r15,%rdx,1), %r8d     #  248   0x7d8d1  5      
  leal -0x80(%r8), %edx          #  249   0x7d8d6  4      
  cmpl $0x3f, %edx               #  250   0x7d8da  3      
  ja .L_7d8a0                    #  251   0x7d8dd  6      
  movl %r9d, %r9d                #  252   0x7d8e3  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  253   0x7d8e6  6      
  movl %r9d, %r9d                #  254   0x7d8ec  3      
  movzbl 0x4(%r15,%r9,1), %ecx   #  255   0x7d8ef  6      
  andl $0x3f, %r8d               #  256   0x7d8f5  4      
  addl $0x1, %eax                #  257   0x7d8f9  3      
  movl %r9d, %r9d                #  258   0x7d8fc  3      
  movl $0x0, (%r15,%r9,1)        #  259   0x7d8ff  8      
  andl $0x3f, %edx               #  260   0x7d907  3      
  xchgw %ax, %ax                 #  261   0x7d90a  3      
  shll $0xc, %ecx                #  262   0x7d90d  3      
  shll $0x6, %edx                #  263   0x7d910  3      
  andl $0xffff, %ecx             #  264   0x7d913  6      
  orl %ecx, %edx                 #  265   0x7d919  2      
  orl %r8d, %edx                 #  266   0x7d91b  3      
  movl %esi, %esi                #  267   0x7d91e  2      
  movl %edx, (%r15,%rsi,1)       #  268   0x7d920  4      
  popq %r11                      #  269   0x7d924  3      
  nop                            #  270   0x7d927  1      
  andl $0xffffffe0, %r11d        #  271   0x7d928  7      
  addq %r15, %r11                #  272   0x7d92f  3      
  jmpq %r11                      #  273   0x7d932  3      
  nop                            #  274   0x7d935  1      
  nop                            #  275   0x7d936  1      
.L_7daa0:                        #        0x7d937  0      
  movl %r9d, %r9d                #  276   0x7d937  3      
  movb %r8b, 0x4(%r15,%r9,1)     #  277   0x7d93a  5      
  movl %r9d, %r9d                #  278   0x7d93f  3      
  movl (%r15,%r9,1), %r8d        #  279   0x7d942  4      
  testl %r8d, %r8d               #  280   0x7d946  3      
  jne .L_7db60                   #  281   0x7d949  6      
  nop                            #  282   0x7d94f  1      
  movl %r9d, %r9d                #  283   0x7d950  3      
  movl $0x1, (%r15,%r9,1)        #  284   0x7d953  8      
  nop                            #  285   0x7d95b  1      
  nop                            #  286   0x7d95c  1      
.L_7dae0:                        #        0x7d95d  0      
  cmpl $0x1, %ecx                #  287   0x7d95d  3      
  jbe .L_7d7c0                   #  288   0x7d960  6      
  nop                            #  289   0x7d966  1      
  nop                            #  290   0x7d967  1      
.L_7db00:                        #        0x7d968  0      
  leal (%rax,%rdx,1), %edx       #  291   0x7d968  3      
  movl %edx, %edx                #  292   0x7d96b  2      
  movzbl (%r15,%rdx,1), %ecx     #  293   0x7d96d  5      
  leal -0x80(%rcx), %edx         #  294   0x7d972  3      
  cmpl $0x3f, %edx               #  295   0x7d975  3      
  ja .L_7d8a0                    #  296   0x7d978  6      
  movl %r9d, %r9d                #  297   0x7d97e  3      
  cmpb $0xc1, 0x4(%r15,%r9,1)    #  298   0x7d981  6      
  nop                            #  299   0x7d987  1      
  jbe .L_7d8a0                   #  300   0x7d988  6      
  movl %r9d, %r9d                #  301   0x7d98e  3      
  movzbl 0x4(%r15,%r9,1), %edx   #  302   0x7d991  6      
  andl $0x3f, %ecx               #  303   0x7d997  3      
  addl $0x1, %eax                #  304   0x7d99a  3      
  movl %r9d, %r9d                #  305   0x7d99d  3      
  movl $0x0, (%r15,%r9,1)        #  306   0x7d9a0  8      
  andl $0x1f, %edx               #  307   0x7d9a8  3      
  shll $0x6, %edx                #  308   0x7d9ab  3      
  orl %edx, %ecx                 #  309   0x7d9ae  2      
  movl %esi, %esi                #  310   0x7d9b0  2      
  movl %ecx, (%r15,%rsi,1)       #  311   0x7d9b2  4      
  popq %r11                      #  312   0x7d9b6  3      
  andl $0xffffffe0, %r11d        #  313   0x7d9b9  7      
  addq %r15, %r11                #  314   0x7d9c0  3      
  jmpq %r11                      #  315   0x7d9c3  3      
  nop                            #  316   0x7d9c6  1      
.L_7db60:                        #        0x7d9c7  0      
  cmpl $0xffffffff, %ecx         #  317   0x7d9c7  6      
  je .L_7db00                    #  318   0x7d9cd  6      
  addl $0x1, %ecx                #  319   0x7d9d3  3      
  jmpq .L_7dae0                  #  320   0x7d9d6  5      
  nop                            #  321   0x7d9db  1      
  nop                            #  322   0x7d9dc  1      
.L_7db80:                        #        0x7d9dd  0      
  cmpl $0xffffffff, %ecx         #  323   0x7d9dd  6      
  je .L_7d9a0                    #  324   0x7d9e3  6      
  addl $0x1, %ecx                #  325   0x7d9e9  3      
  jmpq .L_7d980                  #  326   0x7d9ec  5      
  nop                            #  327   0x7d9f1  1      
.L_7dba0:                        #        0x7d9f2  0      
  leal (%rax,%rdx,1), %r8d       #  328   0x7d9f2  4      
  addl $0x1, %eax                #  329   0x7d9f6  3      
  movl %r8d, %r8d                #  330   0x7d9f9  3      
  movzbl (%r15,%r8,1), %r8d      #  331   0x7d9fc  5      
  jmpq .L_7d9c0                  #  332   0x7da01  5      
  nop                            #  333   0x7da06  1      
.L_7dbc0:                        #        0x7da07  0      
  cmpl $0x2, %ecx                #  334   0x7da07  3      
  movl %r9d, %r9d                #  335   0x7da0a  3      
  movl $0x2, (%r15,%r9,1)        #  336   0x7da0d  8      
  je .L_7d7c0                    #  337   0x7da15  6      
  jmpq .L_7da20                  #  338   0x7da1b  5      
  nop                            #  339   0x7da20  1      
                                                          
.size __utf8_mbtowc, .-__utf8_mbtowc

