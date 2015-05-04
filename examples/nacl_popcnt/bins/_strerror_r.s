  .text
  .globl _strerror_r
  .type _strerror_r, @function

#! file-offset 0x6af80
#! rip-offset  0x6af80
#! capacity    2080 bytes

# Text                     #  Line  RIP      Bytes  
._strerror_r:              #        0x6af80  0      
  movl %esi, %r8d          #  1     0x6af80  3      
  subl $0x8, %esp          #  2     0x6af83  3      
  addq %r15, %rsp          #  3     0x6af86  3      
  movl %edx, %esi          #  4     0x6af89  2      
  cmpl $0x3e, %r8d         #  5     0x6af8b  4      
  movl %edi, %edi          #  6     0x6af8f  2      
  movl %ecx, %ecx          #  7     0x6af91  2      
  movl $0x10023793, %eax   #  8     0x6af93  5      
  je .L_6b020              #  9     0x6af98  6      
  xchgw %ax, %ax           #  10    0x6af9e  3      
  jle .L_6b040             #  11    0x6afa1  6      
  cmpl $0x5d, %r8d         #  12    0x6afa7  4      
  movl $0x10023851, %eax   #  13    0x6afab  5      
  je .L_6b020              #  14    0x6afb0  6      
  jle .L_6b100             #  15    0x6afb6  6      
  cmpl $0x6c, %r8d         #  16    0x6afbc  4      
  movl $0x10023b90, %eax   #  17    0x6afc0  5      
  je .L_6b020              #  18    0x6afc5  6      
  jg .L_6b2c0              #  19    0x6afcb  6      
  cmpl $0x64, %r8d         #  20    0x6afd1  4      
  movl $0x10023a20, %eax   #  21    0x6afd5  5      
  je .L_6b020              #  22    0x6afda  6      
  jg .L_6b340              #  23    0x6afe0  6      
  cmpl $0x5f, %r8d         #  24    0x6afe6  4      
  nop                      #  25    0x6afea  1      
  movl $0x100236c5, %eax   #  26    0x6afeb  5      
  je .L_6b020              #  27    0x6aff0  6      
  movl $0x10023962, %eax   #  28    0x6aff6  5      
  jl .L_6b020              #  29    0x6affb  6      
  cmpl $0x61, %r8d         #  30    0x6b001  4      
  movl $0x10023b20, %eax   #  31    0x6b005  5      
  je .L_6b020              #  32    0x6b00a  6      
  cmpl $0x62, %r8d         #  33    0x6b010  4      
  nop                      #  34    0x6b014  1      
  movl $0x10023933, %eax   #  35    0x6b015  5      
  jne .L_6b0c0             #  36    0x6b01a  6      
  nop                      #  37    0x6b020  1      
  nop                      #  38    0x6b021  1      
.L_6b020:                  #        0x6b022  0      
  addl $0x8, %esp          #  39    0x6b022  3      
  addq %r15, %rsp          #  40    0x6b025  3      
  popq %r11                #  41    0x6b028  3      
  andl $0xffffffe0, %r11d  #  42    0x6b02b  7      
  addq %r15, %r11          #  43    0x6b032  3      
  jmpq %r11                #  44    0x6b035  3      
  nop                      #  45    0x6b038  1      
.L_6b040:                  #        0x6b039  0      
  cmpl $0x15, %r8d         #  46    0x6b039  4      
  movl $0x10023621, %eax   #  47    0x6b03d  5      
  je .L_6b020              #  48    0x6b042  6      
  jle .L_6b180             #  49    0x6b048  6      
  cmpl $0x21, %r8d         #  50    0x6b04e  4      
  movl $0x10023711, %eax   #  51    0x6b052  5      
  je .L_6b020              #  52    0x6b057  6      
  nop                      #  53    0x6b05d  1      
  jg .L_6b200              #  54    0x6b05e  6      
  cmpl $0x1b, %r8d         #  55    0x6b064  4      
  movl $0x1002368a, %eax   #  56    0x6b068  5      
  je .L_6b020              #  57    0x6b06d  6      
  jg .L_6b3c0              #  58    0x6b073  6      
  cmpl $0x17, %r8d         #  59    0x6b079  4      
  movl $0x10023641, %eax   #  60    0x6b07d  5      
  je .L_6b020              #  61    0x6b082  6      
  movl $0x10023630, %eax   #  62    0x6b088  5      
  jl .L_6b020              #  63    0x6b08d  6      
  cmpl $0x18, %r8d         #  64    0x6b093  4      
  movl $0x1002365f, %eax   #  65    0x6b097  5      
  je .L_6b020              #  66    0x6b09c  6      
  cmpl $0x19, %r8d         #  67    0x6b0a2  4      
  movl $0x10023673, %eax   #  68    0x6b0a6  5      
  nop                      #  69    0x6b0ab  1      
  je .L_6b020              #  70    0x6b0ac  6      
  nop                      #  71    0x6b0b2  1      
  nop                      #  72    0x6b0b3  1      
.L_6b0c0:                  #        0x6b0b4  0      
  testq %rcx, %rcx         #  73    0x6b0b4  3      
  cmoveq %rdi, %rcx        #  74    0x6b0b7  4      
  movl %r8d, %edi          #  75    0x6b0bb  3      
  movl %ecx, %edx          #  76    0x6b0be  2      
  nop                      #  77    0x6b0c0  1      
  callq ._user_strerror    #  78    0x6b0c1  5      
  movl %eax, %eax          #  79    0x6b0c6  2      
  movl $0x1002149c, %edx   #  80    0x6b0c8  5      
  testq %rax, %rax         #  81    0x6b0cd  3      
  cmoveq %rdx, %rax        #  82    0x6b0d0  4      
  jmpq .L_6b020            #  83    0x6b0d4  5      
  nop                      #  84    0x6b0d9  1      
.L_6b100:                  #        0x6b0da  0      
  cmpl $0x4a, %r8d         #  85    0x6b0da  4      
  movl $0x10023875, %eax   #  86    0x6b0de  5      
  je .L_6b020              #  87    0x6b0e3  6      
  jg .L_6b300              #  88    0x6b0e9  6      
  cmpl $0x43, %r8d         #  89    0x6b0ef  4      
  movl $0x100237f8, %eax   #  90    0x6b0f3  5      
  xchgw %ax, %ax           #  91    0x6b0f8  3      
  je .L_6b020              #  92    0x6b0fb  6      
  jg .L_6b4c0              #  93    0x6b101  6      
  cmpl $0x40, %r8d         #  94    0x6b107  4      
  movl $0x100237bc, %eax   #  95    0x6b10b  5      
  je .L_6b020              #  96    0x6b110  6      
  movl $0x100237a8, %eax   #  97    0x6b116  5      
  jl .L_6b020              #  98    0x6b11b  6      
  cmpl $0x41, %r8d         #  99    0x6b121  4      
  movl $0x100237da, %eax   #  100   0x6b125  5      
  je .L_6b020              #  101   0x6b12a  6      
  cmpl $0x42, %r8d         #  102   0x6b130  4      
  movl $0x100237e5, %eax   #  103   0x6b134  5      
  xchgw %ax, %ax           #  104   0x6b139  3      
  jne .L_6b0c0             #  105   0x6b13c  6      
  jmpq .L_6b020            #  106   0x6b142  5      
  nop                      #  107   0x6b147  1      
  nop                      #  108   0x6b148  1      
.L_6b180:                  #        0x6b149  0      
  cmpl $0x9, %r8d          #  109   0x6b149  4      
  movl $0x10023545, %eax   #  110   0x6b14d  5      
  je .L_6b020              #  111   0x6b152  6      
  jle .L_6b260             #  112   0x6b158  6      
  cmpl $0xe, %r8d          #  113   0x6b15e  4      
  movl $0x100235b3, %eax   #  114   0x6b162  5      
  xchgw %ax, %ax           #  115   0x6b167  3      
  je .L_6b020              #  116   0x6b16a  6      
  jg .L_6b400              #  117   0x6b170  6      
  cmpl $0xb, %r8d          #  118   0x6b176  4      
  movl $0x1002357e, %eax   #  119   0x6b17a  5      
  je .L_6b020              #  120   0x6b17f  6      
  movl $0x10023555, %eax   #  121   0x6b185  5      
  jl .L_6b020              #  122   0x6b18a  6      
  cmpl $0xc, %r8d          #  123   0x6b190  4      
  movl $0x10023590, %eax   #  124   0x6b194  5      
  je .L_6b020              #  125   0x6b199  6      
  cmpl $0xd, %r8d          #  126   0x6b19f  4      
  movl $0x100235a1, %eax   #  127   0x6b1a3  5      
  xchgw %ax, %ax           #  128   0x6b1a8  3      
  jne .L_6b0c0             #  129   0x6b1ab  6      
  jmpq .L_6b020            #  130   0x6b1b1  5      
  nop                      #  131   0x6b1b6  1      
  nop                      #  132   0x6b1b7  1      
.L_6b200:                  #        0x6b1b8  0      
  cmpl $0x26, %r8d         #  133   0x6b1b8  4      
  movl $0x10023881, %eax   #  134   0x6b1bc  5      
  je .L_6b020              #  135   0x6b1c1  6      
  jg .L_6b500              #  136   0x6b1c7  6      
  cmpl $0x23, %r8d         #  137   0x6b1cd  4      
  movl $0x1002375e, %eax   #  138   0x6b1d1  5      
  xchgw %ax, %ax           #  139   0x6b1d6  3      
  je .L_6b020              #  140   0x6b1d9  6      
  movl $0x1002371f, %eax   #  141   0x6b1df  5      
  jl .L_6b020              #  142   0x6b1e4  6      
  cmpl $0x24, %r8d         #  143   0x6b1ea  4      
  movl $0x100238bc, %eax   #  144   0x6b1ee  5      
  je .L_6b020              #  145   0x6b1f3  6      
  cmpl $0x25, %r8d         #  146   0x6b1f9  4      
  movl $0x1002377e, %eax   #  147   0x6b1fd  5      
  jne .L_6b0c0             #  148   0x6b202  6      
  jmpq .L_6b020            #  149   0x6b208  5      
  nop                      #  150   0x6b20d  1      
.L_6b260:                  #        0x6b20e  0      
  cmpl $0x4, %r8d          #  151   0x6b20e  4      
  movl $0x100234cc, %eax   #  152   0x6b212  5      
  je .L_6b020              #  153   0x6b217  6      
  jg .L_6b440              #  154   0x6b21d  6      
  cmpl $0x1, %r8d          #  155   0x6b223  4      
  movl $0x10023490, %eax   #  156   0x6b227  5      
  xchgw %ax, %ax           #  157   0x6b22c  3      
  je .L_6b020              #  158   0x6b22f  6      
  jle .L_6b780             #  159   0x6b235  6      
  cmpl $0x2, %r8d          #  160   0x6b23b  4      
  movl $0x100234a2, %eax   #  161   0x6b23f  5      
  je .L_6b020              #  162   0x6b244  6      
  cmpl $0x3, %r8d          #  163   0x6b24a  4      
  nop                      #  164   0x6b24e  1      
  movl $0x100234bc, %eax   #  165   0x6b24f  5      
  jne .L_6b0c0             #  166   0x6b254  6      
  jmpq .L_6b020            #  167   0x6b25a  5      
  nop                      #  168   0x6b25f  1      
  nop                      #  169   0x6b260  1      
.L_6b2c0:                  #        0x6b261  0      
  cmpl $0x72, %r8d         #  170   0x6b261  4      
  movl $0x1002352c, %eax   #  171   0x6b265  5      
  je .L_6b020              #  172   0x6b26a  6      
  jg .L_6b480              #  173   0x6b270  6      
  cmpl $0x6f, %r8d         #  174   0x6b276  4      
  movl $0x10023920, %eax   #  175   0x6b27a  5      
  xchgw %ax, %ax           #  176   0x6b27f  3      
  je .L_6b020              #  177   0x6b282  6      
  jg .L_6b540              #  178   0x6b288  6      
  cmpl $0x6e, %r8d         #  179   0x6b28e  4      
  movl $0x100239e6, %eax   #  180   0x6b292  5      
  jne .L_6b0c0             #  181   0x6b297  6      
  jmpq .L_6b020            #  182   0x6b29d  5      
.L_6b300:                  #        0x6b2a2  0      
  cmpl $0x53, %r8d         #  183   0x6b2a2  4      
  movl $0x10023af8, %eax   #  184   0x6b2a6  5      
  je .L_6b020              #  185   0x6b2ab  6      
  jg .L_6b380              #  186   0x6b2b1  6      
  cmpl $0x50, %r8d         #  187   0x6b2b7  4      
  movl $0x10023a70, %eax   #  188   0x6b2bb  5      
  je .L_6b020              #  189   0x6b2c0  6      
  jg .L_6b5c0              #  190   0x6b2c6  6      
  cmpl $0x4f, %r8d         #  191   0x6b2cc  4      
  movl $0x10023a48, %eax   #  192   0x6b2d0  5      
  jne .L_6b0c0             #  193   0x6b2d5  6      
  jmpq .L_6b020            #  194   0x6b2db  5      
  nop                      #  195   0x6b2e0  1      
.L_6b340:                  #        0x6b2e1  0      
  cmpl $0x69, %r8d         #  196   0x6b2e1  4      
  movl $0x100238ef, %eax   #  197   0x6b2e5  5      
  je .L_6b020              #  198   0x6b2ea  6      
  jg .L_6b600              #  199   0x6b2f0  6      
  cmpl $0x65, %r8d         #  200   0x6b2f6  4      
  movl $0x10023767, %eax   #  201   0x6b2fa  5      
  xchgw %ax, %ax           #  202   0x6b2ff  3      
  je .L_6b020              #  203   0x6b302  6      
  cmpl $0x67, %r8d         #  204   0x6b308  4      
  movl $0x10023bb8, %eax   #  205   0x6b30c  5      
  jne .L_6b0c0             #  206   0x6b311  6      
  jmpq .L_6b020            #  207   0x6b317  5      
  nop                      #  208   0x6b31c  1      
.L_6b380:                  #        0x6b31d  0      
  cmpl $0x5a, %r8d         #  209   0x6b31d  4      
  movl $0x100239d5, %eax   #  210   0x6b321  5      
  je .L_6b020              #  211   0x6b326  6      
  jg .L_6b700              #  212   0x6b32c  6      
  cmpl $0x58, %r8d         #  213   0x6b332  4      
  movl $0x10023b70, %eax   #  214   0x6b336  5      
  xchgw %ax, %ax           #  215   0x6b33b  3      
  je .L_6b020              #  216   0x6b33e  6      
  cmpl $0x59, %r8d         #  217   0x6b344  4      
  movl $0x10023561, %eax   #  218   0x6b348  5      
  jne .L_6b0c0             #  219   0x6b34d  6      
  jmpq .L_6b020            #  220   0x6b353  5      
  nop                      #  221   0x6b358  1      
.L_6b3c0:                  #        0x6b359  0      
  cmpl $0x1e, %r8d         #  222   0x6b359  4      
  movl $0x100236e0, %eax   #  223   0x6b35d  5      
  je .L_6b020              #  224   0x6b362  6      
  jg .L_6b640              #  225   0x6b368  6      
  cmpl $0x1c, %r8d         #  226   0x6b36e  4      
  movl $0x100236ad, %eax   #  227   0x6b372  5      
  xchgw %ax, %ax           #  228   0x6b377  3      
  je .L_6b020              #  229   0x6b37a  6      
  cmpl $0x1d, %r8d         #  230   0x6b380  4      
  movl $0x100236d3, %eax   #  231   0x6b384  5      
  jne .L_6b0c0             #  232   0x6b389  6      
  jmpq .L_6b020            #  233   0x6b38f  5      
  nop                      #  234   0x6b394  1      
.L_6b400:                  #        0x6b395  0      
  cmpl $0x12, %r8d         #  235   0x6b395  4      
  movl $0x100235e3, %eax   #  236   0x6b399  5      
  je .L_6b020              #  237   0x6b39e  6      
  jg .L_6b6c0              #  238   0x6b3a4  6      
  cmpl $0x10, %r8d         #  239   0x6b3aa  4      
  movl $0x100235bf, %eax   #  240   0x6b3ae  5      
  xchgw %ax, %ax           #  241   0x6b3b3  3      
  je .L_6b020              #  242   0x6b3b6  6      
  cmpl $0x11, %r8d         #  243   0x6b3bc  4      
  movl $0x100235d7, %eax   #  244   0x6b3c0  5      
  jne .L_6b0c0             #  245   0x6b3c5  6      
  jmpq .L_6b020            #  246   0x6b3cb  5      
  nop                      #  247   0x6b3d0  1      
.L_6b440:                  #        0x6b3d1  0      
  cmpl $0x6, %r8d          #  248   0x6b3d1  4      
  movl $0x100234ee, %eax   #  249   0x6b3d5  5      
  je .L_6b020              #  250   0x6b3da  6      
  movl $0x100234e4, %eax   #  251   0x6b3e0  5      
  jl .L_6b020              #  252   0x6b3e5  6      
  cmpl $0x7, %r8d          #  253   0x6b3eb  4      
  xchgw %ax, %ax           #  254   0x6b3ef  3      
  movl $0x10023508, %eax   #  255   0x6b3f2  5      
  je .L_6b020              #  256   0x6b3f7  6      
  cmpl $0x8, %r8d          #  257   0x6b3fd  4      
  movl $0x1002351a, %eax   #  258   0x6b401  5      
  jne .L_6b0c0             #  259   0x6b406  6      
  jmpq .L_6b020            #  260   0x6b40c  5      
  nop                      #  261   0x6b411  1      
.L_6b480:                  #        0x6b412  0      
  cmpl $0x82, %r8d         #  262   0x6b412  4      
  movl $0x100239c1, %eax   #  263   0x6b416  5      
  je .L_6b020              #  264   0x6b41b  6      
  jg .L_6b680              #  265   0x6b421  6      
  cmpl $0x73, %r8d         #  266   0x6b427  4      
  nop                      #  267   0x6b42b  1      
  movl $0x10023a00, %eax   #  268   0x6b42c  5      
  je .L_6b020              #  269   0x6b431  6      
  cmpl $0x7d, %r8d         #  270   0x6b437  4      
  movl $0x10023998, %eax   #  271   0x6b43b  5      
  jne .L_6b0c0             #  272   0x6b440  6      
  jmpq .L_6b020            #  273   0x6b446  5      
  nop                      #  274   0x6b44b  1      
.L_6b4c0:                  #        0x6b44c  0      
  cmpl $0x46, %r8d         #  275   0x6b44c  4      
  movl $0x1002382e, %eax   #  276   0x6b450  5      
  je .L_6b020              #  277   0x6b455  6      
  jg .L_6b740              #  278   0x6b45b  6      
  cmpl $0x44, %r8d         #  279   0x6b461  4      
  movl $0x10023810, %eax   #  280   0x6b465  5      
  xchgw %ax, %ax           #  281   0x6b46a  3      
  je .L_6b020              #  282   0x6b46d  6      
  cmpl $0x45, %r8d         #  283   0x6b473  4      
  movl $0x10023820, %eax   #  284   0x6b477  5      
  jne .L_6b0c0             #  285   0x6b47c  6      
  jmpq .L_6b020            #  286   0x6b482  5      
  nop                      #  287   0x6b487  1      
.L_6b500:                  #        0x6b488  0      
  cmpl $0x2a, %r8d         #  288   0x6b488  4      
  movl $0x10023730, %eax   #  289   0x6b48c  5      
  je .L_6b020              #  290   0x6b491  6      
  jg .L_6b580              #  291   0x6b497  6      
  cmpl $0x27, %r8d         #  292   0x6b49d  4      
  movl $0x100238a8, %eax   #  293   0x6b4a1  5      
  je .L_6b020              #  294   0x6b4a6  6      
  cmpl $0x28, %r8d         #  295   0x6b4ac  4      
  movl $0x100238d7, %eax   #  296   0x6b4b0  5      
  jne .L_6b0c0             #  297   0x6b4b5  6      
  jmpq .L_6b020            #  298   0x6b4bb  5      
  nop                      #  299   0x6b4c0  1      
.L_6b540:                  #        0x6b4c1  0      
  cmpl $0x70, %r8d         #  300   0x6b4c1  4      
  movl $0x10023614, %eax   #  301   0x6b4c5  5      
  je .L_6b020              #  302   0x6b4ca  6      
  cmpl $0x71, %r8d         #  303   0x6b4d0  4      
  movl $0x10023699, %eax   #  304   0x6b4d4  5      
  jne .L_6b0c0             #  305   0x6b4d9  6      
  xchgw %ax, %ax           #  306   0x6b4df  3      
  jmpq .L_6b020            #  307   0x6b4e2  5      
  nop                      #  308   0x6b4e7  1      
  nop                      #  309   0x6b4e8  1      
.L_6b580:                  #        0x6b4e9  0      
  cmpl $0x2b, %r8d         #  310   0x6b4e9  4      
  movl $0x1002374b, %eax   #  311   0x6b4ed  5      
  je .L_6b020              #  312   0x6b4f2  6      
  cmpl $0x3c, %r8d         #  313   0x6b4f8  4      
  movl $0x10023786, %eax   #  314   0x6b4fc  5      
  jne .L_6b0c0             #  315   0x6b501  6      
  xchgw %ax, %ax           #  316   0x6b507  3      
  jmpq .L_6b020            #  317   0x6b50a  5      
  nop                      #  318   0x6b50f  1      
  nop                      #  319   0x6b510  1      
.L_6b5c0:                  #        0x6b511  0      
  cmpl $0x51, %r8d         #  320   0x6b511  4      
  movl $0x10023a98, %eax   #  321   0x6b515  5      
  je .L_6b020              #  322   0x6b51a  6      
  cmpl $0x52, %r8d         #  323   0x6b520  4      
  movl $0x10023ab8, %eax   #  324   0x6b524  5      
  jne .L_6b0c0             #  325   0x6b529  6      
  xchgw %ax, %ax           #  326   0x6b52f  3      
  jmpq .L_6b020            #  327   0x6b532  5      
  nop                      #  328   0x6b537  1      
  nop                      #  329   0x6b538  1      
.L_6b600:                  #        0x6b539  0      
  cmpl $0x6a, %r8d         #  330   0x6b539  4      
  movl $0x1002397c, %eax   #  331   0x6b53d  5      
  je .L_6b020              #  332   0x6b542  6      
  cmpl $0x6b, %r8d         #  333   0x6b548  4      
  movl $0x1002394a, %eax   #  334   0x6b54c  5      
  jne .L_6b0c0             #  335   0x6b551  6      
  xchgw %ax, %ax           #  336   0x6b557  3      
  jmpq .L_6b020            #  337   0x6b55a  5      
  nop                      #  338   0x6b55f  1      
  nop                      #  339   0x6b560  1      
.L_6b640:                  #        0x6b561  0      
  cmpl $0x1f, %r8d         #  340   0x6b561  4      
  movl $0x100236f6, %eax   #  341   0x6b565  5      
  je .L_6b020              #  342   0x6b56a  6      
  cmpl $0x20, %r8d         #  343   0x6b570  4      
  movl $0x10023705, %eax   #  344   0x6b574  5      
  jne .L_6b0c0             #  345   0x6b579  6      
  xchgw %ax, %ax           #  346   0x6b57f  3      
  jmpq .L_6b020            #  347   0x6b582  5      
  nop                      #  348   0x6b587  1      
  nop                      #  349   0x6b588  1      
.L_6b680:                  #        0x6b589  0      
  cmpl $0x83, %r8d         #  350   0x6b589  4      
  movl $0x100239ab, %eax   #  351   0x6b58d  5      
  je .L_6b020              #  352   0x6b592  6      
  cmpl $0x802, %r8d        #  353   0x6b598  7      
  movl $0x1002389a, %eax   #  354   0x6b59f  5      
  xchgw %ax, %ax           #  355   0x6b5a4  3      
  jne .L_6b0c0             #  356   0x6b5a7  6      
  jmpq .L_6b020            #  357   0x6b5ad  5      
  nop                      #  358   0x6b5b2  1      
  nop                      #  359   0x6b5b3  1      
.L_6b6c0:                  #        0x6b5b4  0      
  cmpl $0x13, %r8d         #  360   0x6b5b4  4      
  movl $0x100235f5, %eax   #  361   0x6b5b8  5      
  je .L_6b020              #  362   0x6b5bd  6      
  cmpl $0x14, %r8d         #  363   0x6b5c3  4      
  movl $0x10023604, %eax   #  364   0x6b5c7  5      
  jne .L_6b0c0             #  365   0x6b5cc  6      
  xchgw %ax, %ax           #  366   0x6b5d2  3      
  jmpq .L_6b020            #  367   0x6b5d5  5      
  nop                      #  368   0x6b5da  1      
  nop                      #  369   0x6b5db  1      
.L_6b700:                  #        0x6b5dc  0      
  cmpl $0x5b, %r8d         #  370   0x6b5dc  4      
  movl $0x10023b50, %eax   #  371   0x6b5e0  5      
  je .L_6b020              #  372   0x6b5e5  6      
  cmpl $0x5c, %r8d         #  373   0x6b5eb  4      
  movl $0x10023909, %eax   #  374   0x6b5ef  5      
  jne .L_6b0c0             #  375   0x6b5f4  6      
  xchgw %ax, %ax           #  376   0x6b5fa  3      
  jmpq .L_6b020            #  377   0x6b5fd  5      
  nop                      #  378   0x6b602  1      
  nop                      #  379   0x6b603  1      
.L_6b740:                  #        0x6b604  0      
  cmpl $0x47, %r8d         #  380   0x6b604  4      
  movl $0x10023842, %eax   #  381   0x6b608  5      
  je .L_6b020              #  382   0x6b60d  6      
  cmpl $0x48, %r8d         #  383   0x6b613  4      
  movl $0x10023862, %eax   #  384   0x6b617  5      
  jne .L_6b0c0             #  385   0x6b61c  6      
  xchgw %ax, %ax           #  386   0x6b622  3      
  jmpq .L_6b020            #  387   0x6b625  5      
  nop                      #  388   0x6b62a  1      
  nop                      #  389   0x6b62b  1      
.L_6b780:                  #        0x6b62c  0      
  testl %r8d, %r8d         #  390   0x6b62c  3      
  movl $0x1002349a, %eax   #  391   0x6b62f  5      
  je .L_6b020              #  392   0x6b634  6      
  jmpq .L_6b0c0            #  393   0x6b63a  5      
  nop                      #  394   0x6b63f  1      
                                                    
.size _strerror_r, .-_strerror_r

