  .text
  .globl _strerror_r
  .type _strerror_r, @function

#! file-offset 0x6aee0
#! rip-offset  0x6aee0
#! capacity    2080 bytes

# Text                     #  Line  RIP      Bytes  
._strerror_r:              #        0x6aee0  0      
  movl %esi, %r8d          #  1     0x6aee0  3      
  subl $0x8, %esp          #  2     0x6aee3  3      
  addq %r15, %rsp          #  3     0x6aee6  3      
  movl %edx, %esi          #  4     0x6aee9  2      
  cmpl $0x3e, %r8d         #  5     0x6aeeb  4      
  movl %edi, %edi          #  6     0x6aeef  2      
  movl %ecx, %ecx          #  7     0x6aef1  2      
  movl $0x10023793, %eax   #  8     0x6aef3  5      
  je .L_6af80              #  9     0x6aef8  6      
  xchgw %ax, %ax           #  10    0x6aefe  3      
  jle .L_6afa0             #  11    0x6af01  6      
  cmpl $0x5d, %r8d         #  12    0x6af07  4      
  movl $0x10023851, %eax   #  13    0x6af0b  5      
  je .L_6af80              #  14    0x6af10  6      
  jle .L_6b060             #  15    0x6af16  6      
  cmpl $0x6c, %r8d         #  16    0x6af1c  4      
  movl $0x10023b90, %eax   #  17    0x6af20  5      
  je .L_6af80              #  18    0x6af25  6      
  jg .L_6b220              #  19    0x6af2b  6      
  cmpl $0x64, %r8d         #  20    0x6af31  4      
  movl $0x10023a20, %eax   #  21    0x6af35  5      
  je .L_6af80              #  22    0x6af3a  6      
  jg .L_6b2a0              #  23    0x6af40  6      
  cmpl $0x5f, %r8d         #  24    0x6af46  4      
  nop                      #  25    0x6af4a  1      
  movl $0x100236c5, %eax   #  26    0x6af4b  5      
  je .L_6af80              #  27    0x6af50  6      
  movl $0x10023962, %eax   #  28    0x6af56  5      
  jl .L_6af80              #  29    0x6af5b  6      
  cmpl $0x61, %r8d         #  30    0x6af61  4      
  movl $0x10023b20, %eax   #  31    0x6af65  5      
  je .L_6af80              #  32    0x6af6a  6      
  cmpl $0x62, %r8d         #  33    0x6af70  4      
  nop                      #  34    0x6af74  1      
  movl $0x10023933, %eax   #  35    0x6af75  5      
  jne .L_6b020             #  36    0x6af7a  6      
  nop                      #  37    0x6af80  1      
  nop                      #  38    0x6af81  1      
.L_6af80:                  #        0x6af82  0      
  addl $0x8, %esp          #  39    0x6af82  3      
  addq %r15, %rsp          #  40    0x6af85  3      
  popq %r11                #  41    0x6af88  3      
  andl $0xffffffe0, %r11d  #  42    0x6af8b  7      
  addq %r15, %r11          #  43    0x6af92  3      
  jmpq %r11                #  44    0x6af95  3      
  nop                      #  45    0x6af98  1      
.L_6afa0:                  #        0x6af99  0      
  cmpl $0x15, %r8d         #  46    0x6af99  4      
  movl $0x10023621, %eax   #  47    0x6af9d  5      
  je .L_6af80              #  48    0x6afa2  6      
  jle .L_6b0e0             #  49    0x6afa8  6      
  cmpl $0x21, %r8d         #  50    0x6afae  4      
  movl $0x10023711, %eax   #  51    0x6afb2  5      
  je .L_6af80              #  52    0x6afb7  6      
  nop                      #  53    0x6afbd  1      
  jg .L_6b160              #  54    0x6afbe  6      
  cmpl $0x1b, %r8d         #  55    0x6afc4  4      
  movl $0x1002368a, %eax   #  56    0x6afc8  5      
  je .L_6af80              #  57    0x6afcd  6      
  jg .L_6b320              #  58    0x6afd3  6      
  cmpl $0x17, %r8d         #  59    0x6afd9  4      
  movl $0x10023641, %eax   #  60    0x6afdd  5      
  je .L_6af80              #  61    0x6afe2  6      
  movl $0x10023630, %eax   #  62    0x6afe8  5      
  jl .L_6af80              #  63    0x6afed  6      
  cmpl $0x18, %r8d         #  64    0x6aff3  4      
  movl $0x1002365f, %eax   #  65    0x6aff7  5      
  je .L_6af80              #  66    0x6affc  6      
  cmpl $0x19, %r8d         #  67    0x6b002  4      
  movl $0x10023673, %eax   #  68    0x6b006  5      
  nop                      #  69    0x6b00b  1      
  je .L_6af80              #  70    0x6b00c  6      
  nop                      #  71    0x6b012  1      
  nop                      #  72    0x6b013  1      
.L_6b020:                  #        0x6b014  0      
  testq %rcx, %rcx         #  73    0x6b014  3      
  cmoveq %rdi, %rcx        #  74    0x6b017  4      
  movl %r8d, %edi          #  75    0x6b01b  3      
  movl %ecx, %edx          #  76    0x6b01e  2      
  nop                      #  77    0x6b020  1      
  callq ._user_strerror    #  78    0x6b021  5      
  movl %eax, %eax          #  79    0x6b026  2      
  movl $0x1002149c, %edx   #  80    0x6b028  5      
  testq %rax, %rax         #  81    0x6b02d  3      
  cmoveq %rdx, %rax        #  82    0x6b030  4      
  jmpq .L_6af80            #  83    0x6b034  5      
  nop                      #  84    0x6b039  1      
.L_6b060:                  #        0x6b03a  0      
  cmpl $0x4a, %r8d         #  85    0x6b03a  4      
  movl $0x10023875, %eax   #  86    0x6b03e  5      
  je .L_6af80              #  87    0x6b043  6      
  jg .L_6b260              #  88    0x6b049  6      
  cmpl $0x43, %r8d         #  89    0x6b04f  4      
  movl $0x100237f8, %eax   #  90    0x6b053  5      
  xchgw %ax, %ax           #  91    0x6b058  3      
  je .L_6af80              #  92    0x6b05b  6      
  jg .L_6b420              #  93    0x6b061  6      
  cmpl $0x40, %r8d         #  94    0x6b067  4      
  movl $0x100237bc, %eax   #  95    0x6b06b  5      
  je .L_6af80              #  96    0x6b070  6      
  movl $0x100237a8, %eax   #  97    0x6b076  5      
  jl .L_6af80              #  98    0x6b07b  6      
  cmpl $0x41, %r8d         #  99    0x6b081  4      
  movl $0x100237da, %eax   #  100   0x6b085  5      
  je .L_6af80              #  101   0x6b08a  6      
  cmpl $0x42, %r8d         #  102   0x6b090  4      
  movl $0x100237e5, %eax   #  103   0x6b094  5      
  xchgw %ax, %ax           #  104   0x6b099  3      
  jne .L_6b020             #  105   0x6b09c  6      
  jmpq .L_6af80            #  106   0x6b0a2  5      
  nop                      #  107   0x6b0a7  1      
  nop                      #  108   0x6b0a8  1      
.L_6b0e0:                  #        0x6b0a9  0      
  cmpl $0x9, %r8d          #  109   0x6b0a9  4      
  movl $0x10023545, %eax   #  110   0x6b0ad  5      
  je .L_6af80              #  111   0x6b0b2  6      
  jle .L_6b1c0             #  112   0x6b0b8  6      
  cmpl $0xe, %r8d          #  113   0x6b0be  4      
  movl $0x100235b3, %eax   #  114   0x6b0c2  5      
  xchgw %ax, %ax           #  115   0x6b0c7  3      
  je .L_6af80              #  116   0x6b0ca  6      
  jg .L_6b360              #  117   0x6b0d0  6      
  cmpl $0xb, %r8d          #  118   0x6b0d6  4      
  movl $0x1002357e, %eax   #  119   0x6b0da  5      
  je .L_6af80              #  120   0x6b0df  6      
  movl $0x10023555, %eax   #  121   0x6b0e5  5      
  jl .L_6af80              #  122   0x6b0ea  6      
  cmpl $0xc, %r8d          #  123   0x6b0f0  4      
  movl $0x10023590, %eax   #  124   0x6b0f4  5      
  je .L_6af80              #  125   0x6b0f9  6      
  cmpl $0xd, %r8d          #  126   0x6b0ff  4      
  movl $0x100235a1, %eax   #  127   0x6b103  5      
  xchgw %ax, %ax           #  128   0x6b108  3      
  jne .L_6b020             #  129   0x6b10b  6      
  jmpq .L_6af80            #  130   0x6b111  5      
  nop                      #  131   0x6b116  1      
  nop                      #  132   0x6b117  1      
.L_6b160:                  #        0x6b118  0      
  cmpl $0x26, %r8d         #  133   0x6b118  4      
  movl $0x10023881, %eax   #  134   0x6b11c  5      
  je .L_6af80              #  135   0x6b121  6      
  jg .L_6b460              #  136   0x6b127  6      
  cmpl $0x23, %r8d         #  137   0x6b12d  4      
  movl $0x1002375e, %eax   #  138   0x6b131  5      
  xchgw %ax, %ax           #  139   0x6b136  3      
  je .L_6af80              #  140   0x6b139  6      
  movl $0x1002371f, %eax   #  141   0x6b13f  5      
  jl .L_6af80              #  142   0x6b144  6      
  cmpl $0x24, %r8d         #  143   0x6b14a  4      
  movl $0x100238bc, %eax   #  144   0x6b14e  5      
  je .L_6af80              #  145   0x6b153  6      
  cmpl $0x25, %r8d         #  146   0x6b159  4      
  movl $0x1002377e, %eax   #  147   0x6b15d  5      
  jne .L_6b020             #  148   0x6b162  6      
  jmpq .L_6af80            #  149   0x6b168  5      
  nop                      #  150   0x6b16d  1      
.L_6b1c0:                  #        0x6b16e  0      
  cmpl $0x4, %r8d          #  151   0x6b16e  4      
  movl $0x100234cc, %eax   #  152   0x6b172  5      
  je .L_6af80              #  153   0x6b177  6      
  jg .L_6b3a0              #  154   0x6b17d  6      
  cmpl $0x1, %r8d          #  155   0x6b183  4      
  movl $0x10023490, %eax   #  156   0x6b187  5      
  xchgw %ax, %ax           #  157   0x6b18c  3      
  je .L_6af80              #  158   0x6b18f  6      
  jle .L_6b6e0             #  159   0x6b195  6      
  cmpl $0x2, %r8d          #  160   0x6b19b  4      
  movl $0x100234a2, %eax   #  161   0x6b19f  5      
  je .L_6af80              #  162   0x6b1a4  6      
  cmpl $0x3, %r8d          #  163   0x6b1aa  4      
  nop                      #  164   0x6b1ae  1      
  movl $0x100234bc, %eax   #  165   0x6b1af  5      
  jne .L_6b020             #  166   0x6b1b4  6      
  jmpq .L_6af80            #  167   0x6b1ba  5      
  nop                      #  168   0x6b1bf  1      
  nop                      #  169   0x6b1c0  1      
.L_6b220:                  #        0x6b1c1  0      
  cmpl $0x72, %r8d         #  170   0x6b1c1  4      
  movl $0x1002352c, %eax   #  171   0x6b1c5  5      
  je .L_6af80              #  172   0x6b1ca  6      
  jg .L_6b3e0              #  173   0x6b1d0  6      
  cmpl $0x6f, %r8d         #  174   0x6b1d6  4      
  movl $0x10023920, %eax   #  175   0x6b1da  5      
  xchgw %ax, %ax           #  176   0x6b1df  3      
  je .L_6af80              #  177   0x6b1e2  6      
  jg .L_6b4a0              #  178   0x6b1e8  6      
  cmpl $0x6e, %r8d         #  179   0x6b1ee  4      
  movl $0x100239e6, %eax   #  180   0x6b1f2  5      
  jne .L_6b020             #  181   0x6b1f7  6      
  jmpq .L_6af80            #  182   0x6b1fd  5      
.L_6b260:                  #        0x6b202  0      
  cmpl $0x53, %r8d         #  183   0x6b202  4      
  movl $0x10023af8, %eax   #  184   0x6b206  5      
  je .L_6af80              #  185   0x6b20b  6      
  jg .L_6b2e0              #  186   0x6b211  6      
  cmpl $0x50, %r8d         #  187   0x6b217  4      
  movl $0x10023a70, %eax   #  188   0x6b21b  5      
  je .L_6af80              #  189   0x6b220  6      
  jg .L_6b520              #  190   0x6b226  6      
  cmpl $0x4f, %r8d         #  191   0x6b22c  4      
  movl $0x10023a48, %eax   #  192   0x6b230  5      
  jne .L_6b020             #  193   0x6b235  6      
  jmpq .L_6af80            #  194   0x6b23b  5      
  nop                      #  195   0x6b240  1      
.L_6b2a0:                  #        0x6b241  0      
  cmpl $0x69, %r8d         #  196   0x6b241  4      
  movl $0x100238ef, %eax   #  197   0x6b245  5      
  je .L_6af80              #  198   0x6b24a  6      
  jg .L_6b560              #  199   0x6b250  6      
  cmpl $0x65, %r8d         #  200   0x6b256  4      
  movl $0x10023767, %eax   #  201   0x6b25a  5      
  xchgw %ax, %ax           #  202   0x6b25f  3      
  je .L_6af80              #  203   0x6b262  6      
  cmpl $0x67, %r8d         #  204   0x6b268  4      
  movl $0x10023bb8, %eax   #  205   0x6b26c  5      
  jne .L_6b020             #  206   0x6b271  6      
  jmpq .L_6af80            #  207   0x6b277  5      
  nop                      #  208   0x6b27c  1      
.L_6b2e0:                  #        0x6b27d  0      
  cmpl $0x5a, %r8d         #  209   0x6b27d  4      
  movl $0x100239d5, %eax   #  210   0x6b281  5      
  je .L_6af80              #  211   0x6b286  6      
  jg .L_6b660              #  212   0x6b28c  6      
  cmpl $0x58, %r8d         #  213   0x6b292  4      
  movl $0x10023b70, %eax   #  214   0x6b296  5      
  xchgw %ax, %ax           #  215   0x6b29b  3      
  je .L_6af80              #  216   0x6b29e  6      
  cmpl $0x59, %r8d         #  217   0x6b2a4  4      
  movl $0x10023561, %eax   #  218   0x6b2a8  5      
  jne .L_6b020             #  219   0x6b2ad  6      
  jmpq .L_6af80            #  220   0x6b2b3  5      
  nop                      #  221   0x6b2b8  1      
.L_6b320:                  #        0x6b2b9  0      
  cmpl $0x1e, %r8d         #  222   0x6b2b9  4      
  movl $0x100236e0, %eax   #  223   0x6b2bd  5      
  je .L_6af80              #  224   0x6b2c2  6      
  jg .L_6b5a0              #  225   0x6b2c8  6      
  cmpl $0x1c, %r8d         #  226   0x6b2ce  4      
  movl $0x100236ad, %eax   #  227   0x6b2d2  5      
  xchgw %ax, %ax           #  228   0x6b2d7  3      
  je .L_6af80              #  229   0x6b2da  6      
  cmpl $0x1d, %r8d         #  230   0x6b2e0  4      
  movl $0x100236d3, %eax   #  231   0x6b2e4  5      
  jne .L_6b020             #  232   0x6b2e9  6      
  jmpq .L_6af80            #  233   0x6b2ef  5      
  nop                      #  234   0x6b2f4  1      
.L_6b360:                  #        0x6b2f5  0      
  cmpl $0x12, %r8d         #  235   0x6b2f5  4      
  movl $0x100235e3, %eax   #  236   0x6b2f9  5      
  je .L_6af80              #  237   0x6b2fe  6      
  jg .L_6b620              #  238   0x6b304  6      
  cmpl $0x10, %r8d         #  239   0x6b30a  4      
  movl $0x100235bf, %eax   #  240   0x6b30e  5      
  xchgw %ax, %ax           #  241   0x6b313  3      
  je .L_6af80              #  242   0x6b316  6      
  cmpl $0x11, %r8d         #  243   0x6b31c  4      
  movl $0x100235d7, %eax   #  244   0x6b320  5      
  jne .L_6b020             #  245   0x6b325  6      
  jmpq .L_6af80            #  246   0x6b32b  5      
  nop                      #  247   0x6b330  1      
.L_6b3a0:                  #        0x6b331  0      
  cmpl $0x6, %r8d          #  248   0x6b331  4      
  movl $0x100234ee, %eax   #  249   0x6b335  5      
  je .L_6af80              #  250   0x6b33a  6      
  movl $0x100234e4, %eax   #  251   0x6b340  5      
  jl .L_6af80              #  252   0x6b345  6      
  cmpl $0x7, %r8d          #  253   0x6b34b  4      
  xchgw %ax, %ax           #  254   0x6b34f  3      
  movl $0x10023508, %eax   #  255   0x6b352  5      
  je .L_6af80              #  256   0x6b357  6      
  cmpl $0x8, %r8d          #  257   0x6b35d  4      
  movl $0x1002351a, %eax   #  258   0x6b361  5      
  jne .L_6b020             #  259   0x6b366  6      
  jmpq .L_6af80            #  260   0x6b36c  5      
  nop                      #  261   0x6b371  1      
.L_6b3e0:                  #        0x6b372  0      
  cmpl $0x82, %r8d         #  262   0x6b372  4      
  movl $0x100239c1, %eax   #  263   0x6b376  5      
  je .L_6af80              #  264   0x6b37b  6      
  jg .L_6b5e0              #  265   0x6b381  6      
  cmpl $0x73, %r8d         #  266   0x6b387  4      
  nop                      #  267   0x6b38b  1      
  movl $0x10023a00, %eax   #  268   0x6b38c  5      
  je .L_6af80              #  269   0x6b391  6      
  cmpl $0x7d, %r8d         #  270   0x6b397  4      
  movl $0x10023998, %eax   #  271   0x6b39b  5      
  jne .L_6b020             #  272   0x6b3a0  6      
  jmpq .L_6af80            #  273   0x6b3a6  5      
  nop                      #  274   0x6b3ab  1      
.L_6b420:                  #        0x6b3ac  0      
  cmpl $0x46, %r8d         #  275   0x6b3ac  4      
  movl $0x1002382e, %eax   #  276   0x6b3b0  5      
  je .L_6af80              #  277   0x6b3b5  6      
  jg .L_6b6a0              #  278   0x6b3bb  6      
  cmpl $0x44, %r8d         #  279   0x6b3c1  4      
  movl $0x10023810, %eax   #  280   0x6b3c5  5      
  xchgw %ax, %ax           #  281   0x6b3ca  3      
  je .L_6af80              #  282   0x6b3cd  6      
  cmpl $0x45, %r8d         #  283   0x6b3d3  4      
  movl $0x10023820, %eax   #  284   0x6b3d7  5      
  jne .L_6b020             #  285   0x6b3dc  6      
  jmpq .L_6af80            #  286   0x6b3e2  5      
  nop                      #  287   0x6b3e7  1      
.L_6b460:                  #        0x6b3e8  0      
  cmpl $0x2a, %r8d         #  288   0x6b3e8  4      
  movl $0x10023730, %eax   #  289   0x6b3ec  5      
  je .L_6af80              #  290   0x6b3f1  6      
  jg .L_6b4e0              #  291   0x6b3f7  6      
  cmpl $0x27, %r8d         #  292   0x6b3fd  4      
  movl $0x100238a8, %eax   #  293   0x6b401  5      
  je .L_6af80              #  294   0x6b406  6      
  cmpl $0x28, %r8d         #  295   0x6b40c  4      
  movl $0x100238d7, %eax   #  296   0x6b410  5      
  jne .L_6b020             #  297   0x6b415  6      
  jmpq .L_6af80            #  298   0x6b41b  5      
  nop                      #  299   0x6b420  1      
.L_6b4a0:                  #        0x6b421  0      
  cmpl $0x70, %r8d         #  300   0x6b421  4      
  movl $0x10023614, %eax   #  301   0x6b425  5      
  je .L_6af80              #  302   0x6b42a  6      
  cmpl $0x71, %r8d         #  303   0x6b430  4      
  movl $0x10023699, %eax   #  304   0x6b434  5      
  jne .L_6b020             #  305   0x6b439  6      
  xchgw %ax, %ax           #  306   0x6b43f  3      
  jmpq .L_6af80            #  307   0x6b442  5      
  nop                      #  308   0x6b447  1      
  nop                      #  309   0x6b448  1      
.L_6b4e0:                  #        0x6b449  0      
  cmpl $0x2b, %r8d         #  310   0x6b449  4      
  movl $0x1002374b, %eax   #  311   0x6b44d  5      
  je .L_6af80              #  312   0x6b452  6      
  cmpl $0x3c, %r8d         #  313   0x6b458  4      
  movl $0x10023786, %eax   #  314   0x6b45c  5      
  jne .L_6b020             #  315   0x6b461  6      
  xchgw %ax, %ax           #  316   0x6b467  3      
  jmpq .L_6af80            #  317   0x6b46a  5      
  nop                      #  318   0x6b46f  1      
  nop                      #  319   0x6b470  1      
.L_6b520:                  #        0x6b471  0      
  cmpl $0x51, %r8d         #  320   0x6b471  4      
  movl $0x10023a98, %eax   #  321   0x6b475  5      
  je .L_6af80              #  322   0x6b47a  6      
  cmpl $0x52, %r8d         #  323   0x6b480  4      
  movl $0x10023ab8, %eax   #  324   0x6b484  5      
  jne .L_6b020             #  325   0x6b489  6      
  xchgw %ax, %ax           #  326   0x6b48f  3      
  jmpq .L_6af80            #  327   0x6b492  5      
  nop                      #  328   0x6b497  1      
  nop                      #  329   0x6b498  1      
.L_6b560:                  #        0x6b499  0      
  cmpl $0x6a, %r8d         #  330   0x6b499  4      
  movl $0x1002397c, %eax   #  331   0x6b49d  5      
  je .L_6af80              #  332   0x6b4a2  6      
  cmpl $0x6b, %r8d         #  333   0x6b4a8  4      
  movl $0x1002394a, %eax   #  334   0x6b4ac  5      
  jne .L_6b020             #  335   0x6b4b1  6      
  xchgw %ax, %ax           #  336   0x6b4b7  3      
  jmpq .L_6af80            #  337   0x6b4ba  5      
  nop                      #  338   0x6b4bf  1      
  nop                      #  339   0x6b4c0  1      
.L_6b5a0:                  #        0x6b4c1  0      
  cmpl $0x1f, %r8d         #  340   0x6b4c1  4      
  movl $0x100236f6, %eax   #  341   0x6b4c5  5      
  je .L_6af80              #  342   0x6b4ca  6      
  cmpl $0x20, %r8d         #  343   0x6b4d0  4      
  movl $0x10023705, %eax   #  344   0x6b4d4  5      
  jne .L_6b020             #  345   0x6b4d9  6      
  xchgw %ax, %ax           #  346   0x6b4df  3      
  jmpq .L_6af80            #  347   0x6b4e2  5      
  nop                      #  348   0x6b4e7  1      
  nop                      #  349   0x6b4e8  1      
.L_6b5e0:                  #        0x6b4e9  0      
  cmpl $0x83, %r8d         #  350   0x6b4e9  4      
  movl $0x100239ab, %eax   #  351   0x6b4ed  5      
  je .L_6af80              #  352   0x6b4f2  6      
  cmpl $0x802, %r8d        #  353   0x6b4f8  7      
  movl $0x1002389a, %eax   #  354   0x6b4ff  5      
  xchgw %ax, %ax           #  355   0x6b504  3      
  jne .L_6b020             #  356   0x6b507  6      
  jmpq .L_6af80            #  357   0x6b50d  5      
  nop                      #  358   0x6b512  1      
  nop                      #  359   0x6b513  1      
.L_6b620:                  #        0x6b514  0      
  cmpl $0x13, %r8d         #  360   0x6b514  4      
  movl $0x100235f5, %eax   #  361   0x6b518  5      
  je .L_6af80              #  362   0x6b51d  6      
  cmpl $0x14, %r8d         #  363   0x6b523  4      
  movl $0x10023604, %eax   #  364   0x6b527  5      
  jne .L_6b020             #  365   0x6b52c  6      
  xchgw %ax, %ax           #  366   0x6b532  3      
  jmpq .L_6af80            #  367   0x6b535  5      
  nop                      #  368   0x6b53a  1      
  nop                      #  369   0x6b53b  1      
.L_6b660:                  #        0x6b53c  0      
  cmpl $0x5b, %r8d         #  370   0x6b53c  4      
  movl $0x10023b50, %eax   #  371   0x6b540  5      
  je .L_6af80              #  372   0x6b545  6      
  cmpl $0x5c, %r8d         #  373   0x6b54b  4      
  movl $0x10023909, %eax   #  374   0x6b54f  5      
  jne .L_6b020             #  375   0x6b554  6      
  xchgw %ax, %ax           #  376   0x6b55a  3      
  jmpq .L_6af80            #  377   0x6b55d  5      
  nop                      #  378   0x6b562  1      
  nop                      #  379   0x6b563  1      
.L_6b6a0:                  #        0x6b564  0      
  cmpl $0x47, %r8d         #  380   0x6b564  4      
  movl $0x10023842, %eax   #  381   0x6b568  5      
  je .L_6af80              #  382   0x6b56d  6      
  cmpl $0x48, %r8d         #  383   0x6b573  4      
  movl $0x10023862, %eax   #  384   0x6b577  5      
  jne .L_6b020             #  385   0x6b57c  6      
  xchgw %ax, %ax           #  386   0x6b582  3      
  jmpq .L_6af80            #  387   0x6b585  5      
  nop                      #  388   0x6b58a  1      
  nop                      #  389   0x6b58b  1      
.L_6b6e0:                  #        0x6b58c  0      
  testl %r8d, %r8d         #  390   0x6b58c  3      
  movl $0x1002349a, %eax   #  391   0x6b58f  5      
  je .L_6af80              #  392   0x6b594  6      
  jmpq .L_6b020            #  393   0x6b59a  5      
  nop                      #  394   0x6b59f  1      
                                                    
.size _strerror_r, .-_strerror_r

