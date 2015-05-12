  .text
  .globl _strerror_r
  .type _strerror_r, @function

#! file-offset 0x6af00
#! rip-offset  0x6af00
#! capacity    2080 bytes

# Text                     #  Line  RIP      Bytes  
._strerror_r:              #        0x6af00  0      
  movl %esi, %r8d          #  1     0x6af00  3      
  subl $0x8, %esp          #  2     0x6af03  3      
  addq %r15, %rsp          #  3     0x6af06  3      
  movl %edx, %esi          #  4     0x6af09  2      
  cmpl $0x3e, %r8d         #  5     0x6af0b  4      
  movl %edi, %edi          #  6     0x6af0f  2      
  movl %ecx, %ecx          #  7     0x6af11  2      
  movl $0x10023793, %eax   #  8     0x6af13  5      
  je .L_6afa0              #  9     0x6af18  6      
  xchgw %ax, %ax           #  10    0x6af1e  3      
  jle .L_6afc0             #  11    0x6af21  6      
  cmpl $0x5d, %r8d         #  12    0x6af27  4      
  movl $0x10023851, %eax   #  13    0x6af2b  5      
  je .L_6afa0              #  14    0x6af30  6      
  jle .L_6b080             #  15    0x6af36  6      
  cmpl $0x6c, %r8d         #  16    0x6af3c  4      
  movl $0x10023b90, %eax   #  17    0x6af40  5      
  je .L_6afa0              #  18    0x6af45  6      
  jg .L_6b240              #  19    0x6af4b  6      
  cmpl $0x64, %r8d         #  20    0x6af51  4      
  movl $0x10023a20, %eax   #  21    0x6af55  5      
  je .L_6afa0              #  22    0x6af5a  6      
  jg .L_6b2c0              #  23    0x6af60  6      
  cmpl $0x5f, %r8d         #  24    0x6af66  4      
  nop                      #  25    0x6af6a  1      
  movl $0x100236c5, %eax   #  26    0x6af6b  5      
  je .L_6afa0              #  27    0x6af70  6      
  movl $0x10023962, %eax   #  28    0x6af76  5      
  jl .L_6afa0              #  29    0x6af7b  6      
  cmpl $0x61, %r8d         #  30    0x6af81  4      
  movl $0x10023b20, %eax   #  31    0x6af85  5      
  je .L_6afa0              #  32    0x6af8a  6      
  cmpl $0x62, %r8d         #  33    0x6af90  4      
  nop                      #  34    0x6af94  1      
  movl $0x10023933, %eax   #  35    0x6af95  5      
  jne .L_6b040             #  36    0x6af9a  6      
  nop                      #  37    0x6afa0  1      
  nop                      #  38    0x6afa1  1      
.L_6afa0:                  #        0x6afa2  0      
  addl $0x8, %esp          #  39    0x6afa2  3      
  addq %r15, %rsp          #  40    0x6afa5  3      
  popq %r11                #  41    0x6afa8  3      
  andl $0xffffffe0, %r11d  #  42    0x6afab  7      
  addq %r15, %r11          #  43    0x6afb2  3      
  jmpq %r11                #  44    0x6afb5  3      
  nop                      #  45    0x6afb8  1      
.L_6afc0:                  #        0x6afb9  0      
  cmpl $0x15, %r8d         #  46    0x6afb9  4      
  movl $0x10023621, %eax   #  47    0x6afbd  5      
  je .L_6afa0              #  48    0x6afc2  6      
  jle .L_6b100             #  49    0x6afc8  6      
  cmpl $0x21, %r8d         #  50    0x6afce  4      
  movl $0x10023711, %eax   #  51    0x6afd2  5      
  je .L_6afa0              #  52    0x6afd7  6      
  nop                      #  53    0x6afdd  1      
  jg .L_6b180              #  54    0x6afde  6      
  cmpl $0x1b, %r8d         #  55    0x6afe4  4      
  movl $0x1002368a, %eax   #  56    0x6afe8  5      
  je .L_6afa0              #  57    0x6afed  6      
  jg .L_6b340              #  58    0x6aff3  6      
  cmpl $0x17, %r8d         #  59    0x6aff9  4      
  movl $0x10023641, %eax   #  60    0x6affd  5      
  je .L_6afa0              #  61    0x6b002  6      
  movl $0x10023630, %eax   #  62    0x6b008  5      
  jl .L_6afa0              #  63    0x6b00d  6      
  cmpl $0x18, %r8d         #  64    0x6b013  4      
  movl $0x1002365f, %eax   #  65    0x6b017  5      
  je .L_6afa0              #  66    0x6b01c  6      
  cmpl $0x19, %r8d         #  67    0x6b022  4      
  movl $0x10023673, %eax   #  68    0x6b026  5      
  nop                      #  69    0x6b02b  1      
  je .L_6afa0              #  70    0x6b02c  6      
  nop                      #  71    0x6b032  1      
  nop                      #  72    0x6b033  1      
.L_6b040:                  #        0x6b034  0      
  testq %rcx, %rcx         #  73    0x6b034  3      
  cmoveq %rdi, %rcx        #  74    0x6b037  4      
  movl %r8d, %edi          #  75    0x6b03b  3      
  movl %ecx, %edx          #  76    0x6b03e  2      
  nop                      #  77    0x6b040  1      
  callq ._user_strerror    #  78    0x6b041  5      
  movl %eax, %eax          #  79    0x6b046  2      
  movl $0x1002149c, %edx   #  80    0x6b048  5      
  testq %rax, %rax         #  81    0x6b04d  3      
  cmoveq %rdx, %rax        #  82    0x6b050  4      
  jmpq .L_6afa0            #  83    0x6b054  5      
  nop                      #  84    0x6b059  1      
.L_6b080:                  #        0x6b05a  0      
  cmpl $0x4a, %r8d         #  85    0x6b05a  4      
  movl $0x10023875, %eax   #  86    0x6b05e  5      
  je .L_6afa0              #  87    0x6b063  6      
  jg .L_6b280              #  88    0x6b069  6      
  cmpl $0x43, %r8d         #  89    0x6b06f  4      
  movl $0x100237f8, %eax   #  90    0x6b073  5      
  xchgw %ax, %ax           #  91    0x6b078  3      
  je .L_6afa0              #  92    0x6b07b  6      
  jg .L_6b440              #  93    0x6b081  6      
  cmpl $0x40, %r8d         #  94    0x6b087  4      
  movl $0x100237bc, %eax   #  95    0x6b08b  5      
  je .L_6afa0              #  96    0x6b090  6      
  movl $0x100237a8, %eax   #  97    0x6b096  5      
  jl .L_6afa0              #  98    0x6b09b  6      
  cmpl $0x41, %r8d         #  99    0x6b0a1  4      
  movl $0x100237da, %eax   #  100   0x6b0a5  5      
  je .L_6afa0              #  101   0x6b0aa  6      
  cmpl $0x42, %r8d         #  102   0x6b0b0  4      
  movl $0x100237e5, %eax   #  103   0x6b0b4  5      
  xchgw %ax, %ax           #  104   0x6b0b9  3      
  jne .L_6b040             #  105   0x6b0bc  6      
  jmpq .L_6afa0            #  106   0x6b0c2  5      
  nop                      #  107   0x6b0c7  1      
  nop                      #  108   0x6b0c8  1      
.L_6b100:                  #        0x6b0c9  0      
  cmpl $0x9, %r8d          #  109   0x6b0c9  4      
  movl $0x10023545, %eax   #  110   0x6b0cd  5      
  je .L_6afa0              #  111   0x6b0d2  6      
  jle .L_6b1e0             #  112   0x6b0d8  6      
  cmpl $0xe, %r8d          #  113   0x6b0de  4      
  movl $0x100235b3, %eax   #  114   0x6b0e2  5      
  xchgw %ax, %ax           #  115   0x6b0e7  3      
  je .L_6afa0              #  116   0x6b0ea  6      
  jg .L_6b380              #  117   0x6b0f0  6      
  cmpl $0xb, %r8d          #  118   0x6b0f6  4      
  movl $0x1002357e, %eax   #  119   0x6b0fa  5      
  je .L_6afa0              #  120   0x6b0ff  6      
  movl $0x10023555, %eax   #  121   0x6b105  5      
  jl .L_6afa0              #  122   0x6b10a  6      
  cmpl $0xc, %r8d          #  123   0x6b110  4      
  movl $0x10023590, %eax   #  124   0x6b114  5      
  je .L_6afa0              #  125   0x6b119  6      
  cmpl $0xd, %r8d          #  126   0x6b11f  4      
  movl $0x100235a1, %eax   #  127   0x6b123  5      
  xchgw %ax, %ax           #  128   0x6b128  3      
  jne .L_6b040             #  129   0x6b12b  6      
  jmpq .L_6afa0            #  130   0x6b131  5      
  nop                      #  131   0x6b136  1      
  nop                      #  132   0x6b137  1      
.L_6b180:                  #        0x6b138  0      
  cmpl $0x26, %r8d         #  133   0x6b138  4      
  movl $0x10023881, %eax   #  134   0x6b13c  5      
  je .L_6afa0              #  135   0x6b141  6      
  jg .L_6b480              #  136   0x6b147  6      
  cmpl $0x23, %r8d         #  137   0x6b14d  4      
  movl $0x1002375e, %eax   #  138   0x6b151  5      
  xchgw %ax, %ax           #  139   0x6b156  3      
  je .L_6afa0              #  140   0x6b159  6      
  movl $0x1002371f, %eax   #  141   0x6b15f  5      
  jl .L_6afa0              #  142   0x6b164  6      
  cmpl $0x24, %r8d         #  143   0x6b16a  4      
  movl $0x100238bc, %eax   #  144   0x6b16e  5      
  je .L_6afa0              #  145   0x6b173  6      
  cmpl $0x25, %r8d         #  146   0x6b179  4      
  movl $0x1002377e, %eax   #  147   0x6b17d  5      
  jne .L_6b040             #  148   0x6b182  6      
  jmpq .L_6afa0            #  149   0x6b188  5      
  nop                      #  150   0x6b18d  1      
.L_6b1e0:                  #        0x6b18e  0      
  cmpl $0x4, %r8d          #  151   0x6b18e  4      
  movl $0x100234cc, %eax   #  152   0x6b192  5      
  je .L_6afa0              #  153   0x6b197  6      
  jg .L_6b3c0              #  154   0x6b19d  6      
  cmpl $0x1, %r8d          #  155   0x6b1a3  4      
  movl $0x10023490, %eax   #  156   0x6b1a7  5      
  xchgw %ax, %ax           #  157   0x6b1ac  3      
  je .L_6afa0              #  158   0x6b1af  6      
  jle .L_6b700             #  159   0x6b1b5  6      
  cmpl $0x2, %r8d          #  160   0x6b1bb  4      
  movl $0x100234a2, %eax   #  161   0x6b1bf  5      
  je .L_6afa0              #  162   0x6b1c4  6      
  cmpl $0x3, %r8d          #  163   0x6b1ca  4      
  nop                      #  164   0x6b1ce  1      
  movl $0x100234bc, %eax   #  165   0x6b1cf  5      
  jne .L_6b040             #  166   0x6b1d4  6      
  jmpq .L_6afa0            #  167   0x6b1da  5      
  nop                      #  168   0x6b1df  1      
  nop                      #  169   0x6b1e0  1      
.L_6b240:                  #        0x6b1e1  0      
  cmpl $0x72, %r8d         #  170   0x6b1e1  4      
  movl $0x1002352c, %eax   #  171   0x6b1e5  5      
  je .L_6afa0              #  172   0x6b1ea  6      
  jg .L_6b400              #  173   0x6b1f0  6      
  cmpl $0x6f, %r8d         #  174   0x6b1f6  4      
  movl $0x10023920, %eax   #  175   0x6b1fa  5      
  xchgw %ax, %ax           #  176   0x6b1ff  3      
  je .L_6afa0              #  177   0x6b202  6      
  jg .L_6b4c0              #  178   0x6b208  6      
  cmpl $0x6e, %r8d         #  179   0x6b20e  4      
  movl $0x100239e6, %eax   #  180   0x6b212  5      
  jne .L_6b040             #  181   0x6b217  6      
  jmpq .L_6afa0            #  182   0x6b21d  5      
.L_6b280:                  #        0x6b222  0      
  cmpl $0x53, %r8d         #  183   0x6b222  4      
  movl $0x10023af8, %eax   #  184   0x6b226  5      
  je .L_6afa0              #  185   0x6b22b  6      
  jg .L_6b300              #  186   0x6b231  6      
  cmpl $0x50, %r8d         #  187   0x6b237  4      
  movl $0x10023a70, %eax   #  188   0x6b23b  5      
  je .L_6afa0              #  189   0x6b240  6      
  jg .L_6b540              #  190   0x6b246  6      
  cmpl $0x4f, %r8d         #  191   0x6b24c  4      
  movl $0x10023a48, %eax   #  192   0x6b250  5      
  jne .L_6b040             #  193   0x6b255  6      
  jmpq .L_6afa0            #  194   0x6b25b  5      
  nop                      #  195   0x6b260  1      
.L_6b2c0:                  #        0x6b261  0      
  cmpl $0x69, %r8d         #  196   0x6b261  4      
  movl $0x100238ef, %eax   #  197   0x6b265  5      
  je .L_6afa0              #  198   0x6b26a  6      
  jg .L_6b580              #  199   0x6b270  6      
  cmpl $0x65, %r8d         #  200   0x6b276  4      
  movl $0x10023767, %eax   #  201   0x6b27a  5      
  xchgw %ax, %ax           #  202   0x6b27f  3      
  je .L_6afa0              #  203   0x6b282  6      
  cmpl $0x67, %r8d         #  204   0x6b288  4      
  movl $0x10023bb8, %eax   #  205   0x6b28c  5      
  jne .L_6b040             #  206   0x6b291  6      
  jmpq .L_6afa0            #  207   0x6b297  5      
  nop                      #  208   0x6b29c  1      
.L_6b300:                  #        0x6b29d  0      
  cmpl $0x5a, %r8d         #  209   0x6b29d  4      
  movl $0x100239d5, %eax   #  210   0x6b2a1  5      
  je .L_6afa0              #  211   0x6b2a6  6      
  jg .L_6b680              #  212   0x6b2ac  6      
  cmpl $0x58, %r8d         #  213   0x6b2b2  4      
  movl $0x10023b70, %eax   #  214   0x6b2b6  5      
  xchgw %ax, %ax           #  215   0x6b2bb  3      
  je .L_6afa0              #  216   0x6b2be  6      
  cmpl $0x59, %r8d         #  217   0x6b2c4  4      
  movl $0x10023561, %eax   #  218   0x6b2c8  5      
  jne .L_6b040             #  219   0x6b2cd  6      
  jmpq .L_6afa0            #  220   0x6b2d3  5      
  nop                      #  221   0x6b2d8  1      
.L_6b340:                  #        0x6b2d9  0      
  cmpl $0x1e, %r8d         #  222   0x6b2d9  4      
  movl $0x100236e0, %eax   #  223   0x6b2dd  5      
  je .L_6afa0              #  224   0x6b2e2  6      
  jg .L_6b5c0              #  225   0x6b2e8  6      
  cmpl $0x1c, %r8d         #  226   0x6b2ee  4      
  movl $0x100236ad, %eax   #  227   0x6b2f2  5      
  xchgw %ax, %ax           #  228   0x6b2f7  3      
  je .L_6afa0              #  229   0x6b2fa  6      
  cmpl $0x1d, %r8d         #  230   0x6b300  4      
  movl $0x100236d3, %eax   #  231   0x6b304  5      
  jne .L_6b040             #  232   0x6b309  6      
  jmpq .L_6afa0            #  233   0x6b30f  5      
  nop                      #  234   0x6b314  1      
.L_6b380:                  #        0x6b315  0      
  cmpl $0x12, %r8d         #  235   0x6b315  4      
  movl $0x100235e3, %eax   #  236   0x6b319  5      
  je .L_6afa0              #  237   0x6b31e  6      
  jg .L_6b640              #  238   0x6b324  6      
  cmpl $0x10, %r8d         #  239   0x6b32a  4      
  movl $0x100235bf, %eax   #  240   0x6b32e  5      
  xchgw %ax, %ax           #  241   0x6b333  3      
  je .L_6afa0              #  242   0x6b336  6      
  cmpl $0x11, %r8d         #  243   0x6b33c  4      
  movl $0x100235d7, %eax   #  244   0x6b340  5      
  jne .L_6b040             #  245   0x6b345  6      
  jmpq .L_6afa0            #  246   0x6b34b  5      
  nop                      #  247   0x6b350  1      
.L_6b3c0:                  #        0x6b351  0      
  cmpl $0x6, %r8d          #  248   0x6b351  4      
  movl $0x100234ee, %eax   #  249   0x6b355  5      
  je .L_6afa0              #  250   0x6b35a  6      
  movl $0x100234e4, %eax   #  251   0x6b360  5      
  jl .L_6afa0              #  252   0x6b365  6      
  cmpl $0x7, %r8d          #  253   0x6b36b  4      
  xchgw %ax, %ax           #  254   0x6b36f  3      
  movl $0x10023508, %eax   #  255   0x6b372  5      
  je .L_6afa0              #  256   0x6b377  6      
  cmpl $0x8, %r8d          #  257   0x6b37d  4      
  movl $0x1002351a, %eax   #  258   0x6b381  5      
  jne .L_6b040             #  259   0x6b386  6      
  jmpq .L_6afa0            #  260   0x6b38c  5      
  nop                      #  261   0x6b391  1      
.L_6b400:                  #        0x6b392  0      
  cmpl $0x82, %r8d         #  262   0x6b392  4      
  movl $0x100239c1, %eax   #  263   0x6b396  5      
  je .L_6afa0              #  264   0x6b39b  6      
  jg .L_6b600              #  265   0x6b3a1  6      
  cmpl $0x73, %r8d         #  266   0x6b3a7  4      
  nop                      #  267   0x6b3ab  1      
  movl $0x10023a00, %eax   #  268   0x6b3ac  5      
  je .L_6afa0              #  269   0x6b3b1  6      
  cmpl $0x7d, %r8d         #  270   0x6b3b7  4      
  movl $0x10023998, %eax   #  271   0x6b3bb  5      
  jne .L_6b040             #  272   0x6b3c0  6      
  jmpq .L_6afa0            #  273   0x6b3c6  5      
  nop                      #  274   0x6b3cb  1      
.L_6b440:                  #        0x6b3cc  0      
  cmpl $0x46, %r8d         #  275   0x6b3cc  4      
  movl $0x1002382e, %eax   #  276   0x6b3d0  5      
  je .L_6afa0              #  277   0x6b3d5  6      
  jg .L_6b6c0              #  278   0x6b3db  6      
  cmpl $0x44, %r8d         #  279   0x6b3e1  4      
  movl $0x10023810, %eax   #  280   0x6b3e5  5      
  xchgw %ax, %ax           #  281   0x6b3ea  3      
  je .L_6afa0              #  282   0x6b3ed  6      
  cmpl $0x45, %r8d         #  283   0x6b3f3  4      
  movl $0x10023820, %eax   #  284   0x6b3f7  5      
  jne .L_6b040             #  285   0x6b3fc  6      
  jmpq .L_6afa0            #  286   0x6b402  5      
  nop                      #  287   0x6b407  1      
.L_6b480:                  #        0x6b408  0      
  cmpl $0x2a, %r8d         #  288   0x6b408  4      
  movl $0x10023730, %eax   #  289   0x6b40c  5      
  je .L_6afa0              #  290   0x6b411  6      
  jg .L_6b500              #  291   0x6b417  6      
  cmpl $0x27, %r8d         #  292   0x6b41d  4      
  movl $0x100238a8, %eax   #  293   0x6b421  5      
  je .L_6afa0              #  294   0x6b426  6      
  cmpl $0x28, %r8d         #  295   0x6b42c  4      
  movl $0x100238d7, %eax   #  296   0x6b430  5      
  jne .L_6b040             #  297   0x6b435  6      
  jmpq .L_6afa0            #  298   0x6b43b  5      
  nop                      #  299   0x6b440  1      
.L_6b4c0:                  #        0x6b441  0      
  cmpl $0x70, %r8d         #  300   0x6b441  4      
  movl $0x10023614, %eax   #  301   0x6b445  5      
  je .L_6afa0              #  302   0x6b44a  6      
  cmpl $0x71, %r8d         #  303   0x6b450  4      
  movl $0x10023699, %eax   #  304   0x6b454  5      
  jne .L_6b040             #  305   0x6b459  6      
  xchgw %ax, %ax           #  306   0x6b45f  3      
  jmpq .L_6afa0            #  307   0x6b462  5      
  nop                      #  308   0x6b467  1      
  nop                      #  309   0x6b468  1      
.L_6b500:                  #        0x6b469  0      
  cmpl $0x2b, %r8d         #  310   0x6b469  4      
  movl $0x1002374b, %eax   #  311   0x6b46d  5      
  je .L_6afa0              #  312   0x6b472  6      
  cmpl $0x3c, %r8d         #  313   0x6b478  4      
  movl $0x10023786, %eax   #  314   0x6b47c  5      
  jne .L_6b040             #  315   0x6b481  6      
  xchgw %ax, %ax           #  316   0x6b487  3      
  jmpq .L_6afa0            #  317   0x6b48a  5      
  nop                      #  318   0x6b48f  1      
  nop                      #  319   0x6b490  1      
.L_6b540:                  #        0x6b491  0      
  cmpl $0x51, %r8d         #  320   0x6b491  4      
  movl $0x10023a98, %eax   #  321   0x6b495  5      
  je .L_6afa0              #  322   0x6b49a  6      
  cmpl $0x52, %r8d         #  323   0x6b4a0  4      
  movl $0x10023ab8, %eax   #  324   0x6b4a4  5      
  jne .L_6b040             #  325   0x6b4a9  6      
  xchgw %ax, %ax           #  326   0x6b4af  3      
  jmpq .L_6afa0            #  327   0x6b4b2  5      
  nop                      #  328   0x6b4b7  1      
  nop                      #  329   0x6b4b8  1      
.L_6b580:                  #        0x6b4b9  0      
  cmpl $0x6a, %r8d         #  330   0x6b4b9  4      
  movl $0x1002397c, %eax   #  331   0x6b4bd  5      
  je .L_6afa0              #  332   0x6b4c2  6      
  cmpl $0x6b, %r8d         #  333   0x6b4c8  4      
  movl $0x1002394a, %eax   #  334   0x6b4cc  5      
  jne .L_6b040             #  335   0x6b4d1  6      
  xchgw %ax, %ax           #  336   0x6b4d7  3      
  jmpq .L_6afa0            #  337   0x6b4da  5      
  nop                      #  338   0x6b4df  1      
  nop                      #  339   0x6b4e0  1      
.L_6b5c0:                  #        0x6b4e1  0      
  cmpl $0x1f, %r8d         #  340   0x6b4e1  4      
  movl $0x100236f6, %eax   #  341   0x6b4e5  5      
  je .L_6afa0              #  342   0x6b4ea  6      
  cmpl $0x20, %r8d         #  343   0x6b4f0  4      
  movl $0x10023705, %eax   #  344   0x6b4f4  5      
  jne .L_6b040             #  345   0x6b4f9  6      
  xchgw %ax, %ax           #  346   0x6b4ff  3      
  jmpq .L_6afa0            #  347   0x6b502  5      
  nop                      #  348   0x6b507  1      
  nop                      #  349   0x6b508  1      
.L_6b600:                  #        0x6b509  0      
  cmpl $0x83, %r8d         #  350   0x6b509  4      
  movl $0x100239ab, %eax   #  351   0x6b50d  5      
  je .L_6afa0              #  352   0x6b512  6      
  cmpl $0x802, %r8d        #  353   0x6b518  7      
  movl $0x1002389a, %eax   #  354   0x6b51f  5      
  xchgw %ax, %ax           #  355   0x6b524  3      
  jne .L_6b040             #  356   0x6b527  6      
  jmpq .L_6afa0            #  357   0x6b52d  5      
  nop                      #  358   0x6b532  1      
  nop                      #  359   0x6b533  1      
.L_6b640:                  #        0x6b534  0      
  cmpl $0x13, %r8d         #  360   0x6b534  4      
  movl $0x100235f5, %eax   #  361   0x6b538  5      
  je .L_6afa0              #  362   0x6b53d  6      
  cmpl $0x14, %r8d         #  363   0x6b543  4      
  movl $0x10023604, %eax   #  364   0x6b547  5      
  jne .L_6b040             #  365   0x6b54c  6      
  xchgw %ax, %ax           #  366   0x6b552  3      
  jmpq .L_6afa0            #  367   0x6b555  5      
  nop                      #  368   0x6b55a  1      
  nop                      #  369   0x6b55b  1      
.L_6b680:                  #        0x6b55c  0      
  cmpl $0x5b, %r8d         #  370   0x6b55c  4      
  movl $0x10023b50, %eax   #  371   0x6b560  5      
  je .L_6afa0              #  372   0x6b565  6      
  cmpl $0x5c, %r8d         #  373   0x6b56b  4      
  movl $0x10023909, %eax   #  374   0x6b56f  5      
  jne .L_6b040             #  375   0x6b574  6      
  xchgw %ax, %ax           #  376   0x6b57a  3      
  jmpq .L_6afa0            #  377   0x6b57d  5      
  nop                      #  378   0x6b582  1      
  nop                      #  379   0x6b583  1      
.L_6b6c0:                  #        0x6b584  0      
  cmpl $0x47, %r8d         #  380   0x6b584  4      
  movl $0x10023842, %eax   #  381   0x6b588  5      
  je .L_6afa0              #  382   0x6b58d  6      
  cmpl $0x48, %r8d         #  383   0x6b593  4      
  movl $0x10023862, %eax   #  384   0x6b597  5      
  jne .L_6b040             #  385   0x6b59c  6      
  xchgw %ax, %ax           #  386   0x6b5a2  3      
  jmpq .L_6afa0            #  387   0x6b5a5  5      
  nop                      #  388   0x6b5aa  1      
  nop                      #  389   0x6b5ab  1      
.L_6b700:                  #        0x6b5ac  0      
  testl %r8d, %r8d         #  390   0x6b5ac  3      
  movl $0x1002349a, %eax   #  391   0x6b5af  5      
  je .L_6afa0              #  392   0x6b5b4  6      
  jmpq .L_6b040            #  393   0x6b5ba  5      
  nop                      #  394   0x6b5bf  1      
                                                    
.size _strerror_r, .-_strerror_r

