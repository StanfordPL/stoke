  .text
  .globl free
  .type free, @function

#! file-offset 0x623c0
#! rip-offset  0x623c0
#! capacity    3360 bytes

# Text                             #  Line  RIP      Bytes  
.free:                             #        0x623c0  0      
  pushq %rbx                       #  1     0x623c0  2      
  movl %edi, %ebx                  #  2     0x623c2  2      
  testq %rbx, %rbx                 #  3     0x623c4  3      
  je .L_628c0                      #  4     0x623c7  6      
  testb $0x2, 0xffd46a8(%rip)      #  5     0x623cd  7      
  jne .L_62980                     #  6     0x623d4  6      
  nop                              #  7     0x623da  1      
.L_623e0:                          #        0x623db  0      
  movl 0xffd44ef(%rip), %esi       #  8     0x623db  6      
  leal -0x8(%rbx), %edi            #  9     0x623e1  3      
  movq %rdi, %r8                   #  10    0x623e4  3      
  cmpl %edi, %esi                  #  11    0x623e7  2      
  ja .L_63060                      #  12    0x623e9  6      
  movl %edi, %edi                  #  13    0x623ef  2      
  movl 0x4(%r15,%rdi,1), %ecx      #  14    0x623f1  5      
  movl %ecx, %r9d                  #  15    0x623f6  3      
  xchgw %ax, %ax                   #  16    0x623f9  3      
  andl $0x3, %r9d                  #  17    0x623fc  4      
  cmpl $0x1, %r9d                  #  18    0x62400  4      
  je .L_63060                      #  19    0x62404  6      
  movl %ecx, %eax                  #  20    0x6240a  2      
  andl $0xfffffff8, %eax           #  21    0x6240c  5      
  andl $0x1, %ecx                  #  22    0x62411  3      
  leal (%rax,%rdi,1), %edx         #  23    0x62414  3      
  jne .L_625c0                     #  24    0x62417  6      
  nop                              #  25    0x6241d  1      
  testl %r9d, %r9d                 #  26    0x6241e  3      
  movl %edi, %edi                  #  27    0x62421  2      
  movl (%r15,%rdi,1), %ecx         #  28    0x62423  4      
  je .L_62ba0                      #  29    0x62427  6      
  subl %ecx, %edi                  #  30    0x6242d  2      
  cmpl %edi, %esi                  #  31    0x6242f  2      
  movq %rdi, %r8                   #  32    0x62431  3      
  ja .L_63060                      #  33    0x62434  6      
  addl %ecx, %eax                  #  34    0x6243a  2      
  xchgw %ax, %ax                   #  35    0x6243c  3      
  cmpl %edi, 0xffd448f(%rip)       #  36    0x6243f  6      
  je .L_62d40                      #  37    0x62445  6      
  shrl $0x3, %ecx                  #  38    0x6244b  3      
  cmpl $0x1f, %ecx                 #  39    0x6244e  3      
  jbe .L_62a60                     #  40    0x62451  6      
  movl %edi, %edi                  #  41    0x62457  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  42    0x62459  5      
  nop                              #  43    0x6245e  1      
  movl %edi, %edi                  #  44    0x6245f  2      
  movl 0x18(%r15,%rdi,1), %r10d    #  45    0x62461  5      
  cmpl %edi, %r9d                  #  46    0x62466  3      
  je .L_62e40                      #  47    0x62469  6      
  movl %edi, %edi                  #  48    0x6246f  2      
  movl 0x8(%r15,%rdi,1), %ecx      #  49    0x62471  5      
  cmpl %ecx, %esi                  #  50    0x62476  2      
  ja .L_63060                      #  51    0x62478  6      
  nop                              #  52    0x6247e  1      
  movl %ecx, %ecx                  #  53    0x6247f  2      
  cmpl %edi, 0xc(%r15,%rcx,1)      #  54    0x62481  5      
  jne .L_63060                     #  55    0x62486  6      
  movl %r9d, %r9d                  #  56    0x6248c  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  57    0x6248f  5      
  jne .L_63060                     #  58    0x62494  6      
  nop                              #  59    0x6249a  1      
  movl %ecx, %ecx                  #  60    0x6249b  2      
  movl %r9d, 0xc(%r15,%rcx,1)      #  61    0x6249d  5      
  movl %r9d, %r9d                  #  62    0x624a2  3      
  movl %ecx, 0x8(%r15,%r9,1)       #  63    0x624a5  5      
  movq %r9, %rbx                   #  64    0x624aa  3      
  nop                              #  65    0x624ad  1      
.L_624c0:                          #        0x624ae  0      
  testq %r10, %r10                 #  66    0x624ae  3      
  je .L_625c0                      #  67    0x624b1  6      
  movl %edi, %edi                  #  68    0x624b7  2      
  movl 0x1c(%r15,%rdi,1), %ecx     #  69    0x624b9  5      
  leal 0x100369f0(,%rcx,4), %r9d   #  70    0x624be  8      
  movl %r9d, %r9d                  #  71    0x624c6  3      
  cmpl %edi, (%r15,%r9,1)          #  72    0x624c9  4      
  nop                              #  73    0x624cd  1      
  je .L_62f80                      #  74    0x624ce  6      
  cmpl %r10d, %esi                 #  75    0x624d4  3      
  ja .L_63060                      #  76    0x624d7  6      
  movl %r10d, %r10d                #  77    0x624dd  3      
  cmpl %edi, 0x10(%r15,%r10,1)     #  78    0x624e0  5      
  je .L_62fc0                      #  79    0x624e5  6      
  nop                              #  80    0x624eb  1      
  movl %r10d, %r10d                #  81    0x624ec  3      
  movl %ebx, 0x14(%r15,%r10,1)     #  82    0x624ef  5      
  nop                              #  83    0x624f4  1      
  nop                              #  84    0x624f5  1      
.L_62520:                          #        0x624f6  0      
  testq %rbx, %rbx                 #  85    0x624f6  3      
  je .L_625c0                      #  86    0x624f9  6      
  nop                              #  87    0x624ff  1      
  nop                              #  88    0x62500  1      
.L_62540:                          #        0x62501  0      
  cmpl %esi, %ebx                  #  89    0x62501  2      
  jb .L_63060                      #  90    0x62503  6      
  movl %edi, %edi                  #  91    0x62509  2      
  movl 0x10(%r15,%rdi,1), %ecx     #  92    0x6250b  5      
  movl %ebx, %ebx                  #  93    0x62510  2      
  movl %r10d, 0x18(%r15,%rbx,1)    #  94    0x62512  5      
  testq %rcx, %rcx                 #  95    0x62517  3      
  je .L_62580                      #  96    0x6251a  6      
  cmpl %esi, %ecx                  #  97    0x62520  2      
  nop                              #  98    0x62522  1      
  jb .L_63060                      #  99    0x62523  6      
  movl %ebx, %ebx                  #  100   0x62529  2      
  movl %ecx, 0x10(%r15,%rbx,1)     #  101   0x6252b  5      
  movl %ecx, %ecx                  #  102   0x62530  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  103   0x62532  5      
  nop                              #  104   0x62537  1      
.L_62580:                          #        0x62538  0      
  movl %edi, %edi                  #  105   0x62538  2      
  movl 0x14(%r15,%rdi,1), %ecx     #  106   0x6253a  5      
  testq %rcx, %rcx                 #  107   0x6253f  3      
  je .L_625c0                      #  108   0x62542  6      
  cmpl %esi, %ecx                  #  109   0x62548  2      
  jb .L_63060                      #  110   0x6254a  6      
  movl %ebx, %ebx                  #  111   0x62550  2      
  movl %ecx, 0x14(%r15,%rbx,1)     #  112   0x62552  5      
  nop                              #  113   0x62557  1      
  movl %ecx, %ecx                  #  114   0x62558  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  115   0x6255a  5      
  nop                              #  116   0x6255f  1      
  nop                              #  117   0x62560  1      
.L_625c0:                          #        0x62561  0      
  cmpl %edx, %r8d                  #  118   0x62561  3      
  jae .L_63060                     #  119   0x62564  6      
  movl %edx, %edx                  #  120   0x6256a  2      
  movl 0x4(%r15,%rdx,1), %r8d      #  121   0x6256c  5      
  testb $0x1, %r8b                 #  122   0x62571  4      
  je .L_63060                      #  123   0x62575  6      
  testb $0x2, %r8b                 #  124   0x6257b  4      
  xchgw %ax, %ax                   #  125   0x6257f  3      
  jne .L_628e0                     #  126   0x62582  6      
  cmpl %edx, 0xffd434a(%rip)       #  127   0x62588  6      
  je .L_62c60                      #  128   0x6258e  6      
  movl 0xffd433a(%rip), %ebx       #  129   0x62594  6      
  cmpl %edx, %ebx                  #  130   0x6259a  2      
  je .L_62d00                      #  131   0x6259c  6      
  andl $0xfffffff8, %r8d           #  132   0x625a2  7      
  movl %r8d, %ecx                  #  133   0x625a9  3      
  shrl $0x3, %ecx                  #  134   0x625ac  3      
  cmpl $0x1f, %ecx                 #  135   0x625af  3      
  jbe .L_62a00                     #  136   0x625b2  6      
  movl %edx, %edx                  #  137   0x625b8  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  138   0x625ba  5      
  nop                              #  139   0x625bf  1      
  movl %edx, %edx                  #  140   0x625c0  2      
  movl 0x18(%r15,%rdx,1), %r11d    #  141   0x625c2  5      
  cmpl %edx, %r10d                 #  142   0x625c7  3      
  je .L_62d80                      #  143   0x625ca  6      
  movl %edx, %edx                  #  144   0x625d0  2      
  movl 0x8(%r15,%rdx,1), %ecx      #  145   0x625d2  5      
  cmpl %ecx, 0xffd42f3(%rip)       #  146   0x625d7  6      
  nop                              #  147   0x625dd  1      
  ja .L_63060                      #  148   0x625de  6      
  movl %ecx, %ecx                  #  149   0x625e4  2      
  cmpl %edx, 0xc(%r15,%rcx,1)      #  150   0x625e6  5      
  jne .L_63060                     #  151   0x625eb  6      
  movl %r10d, %r10d                #  152   0x625f1  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  153   0x625f4  5      
  nop                              #  154   0x625f9  1      
  jne .L_63060                     #  155   0x625fa  6      
  movl %ecx, %ecx                  #  156   0x62600  2      
  movl %r10d, 0xc(%r15,%rcx,1)     #  157   0x62602  5      
  movl %r10d, %r10d                #  158   0x62607  3      
  movl %ecx, 0x8(%r15,%r10,1)      #  159   0x6260a  5      
  movq %r10, %r9                   #  160   0x6260f  3      
  nop                              #  161   0x62612  1      
.L_62680:                          #        0x62613  0      
  testq %r11, %r11                 #  162   0x62613  3      
  je .L_62780                      #  163   0x62616  6      
  movl %edx, %edx                  #  164   0x6261c  2      
  movl 0x1c(%r15,%rdx,1), %ecx     #  165   0x6261e  5      
  leal 0x100369f0(,%rcx,4), %r10d  #  166   0x62623  8      
  movl %r10d, %r10d                #  167   0x6262b  3      
  cmpl %edx, (%r15,%r10,1)         #  168   0x6262e  4      
  nop                              #  169   0x62632  1      
  je .L_62f40                      #  170   0x62633  6      
  cmpl %r11d, %esi                 #  171   0x62639  3      
  ja .L_63060                      #  172   0x6263c  6      
  movl %r11d, %r11d                #  173   0x62642  3      
  cmpl %edx, 0x10(%r15,%r11,1)     #  174   0x62645  5      
  je .L_62fe0                      #  175   0x6264a  6      
  nop                              #  176   0x62650  1      
  movl %r11d, %r11d                #  177   0x62651  3      
  movl %r9d, 0x14(%r15,%r11,1)     #  178   0x62654  5      
  nop                              #  179   0x62659  1      
  nop                              #  180   0x6265a  1      
.L_626e0:                          #        0x6265b  0      
  testq %r9, %r9                   #  181   0x6265b  3      
  je .L_62780                      #  182   0x6265e  6      
  nop                              #  183   0x62664  1      
  nop                              #  184   0x62665  1      
.L_62700:                          #        0x62666  0      
  cmpl %esi, %r9d                  #  185   0x62666  3      
  jb .L_63060                      #  186   0x62669  6      
  movl %edx, %edx                  #  187   0x6266f  2      
  movl 0x10(%r15,%rdx,1), %ecx     #  188   0x62671  5      
  movl %r9d, %r9d                  #  189   0x62676  3      
  movl %r11d, 0x18(%r15,%r9,1)     #  190   0x62679  5      
  testq %rcx, %rcx                 #  191   0x6267e  3      
  nop                              #  192   0x62681  1      
  je .L_62740                      #  193   0x62682  6      
  cmpl %esi, %ecx                  #  194   0x62688  2      
  jb .L_63060                      #  195   0x6268a  6      
  movl %r9d, %r9d                  #  196   0x62690  3      
  movl %ecx, 0x10(%r15,%r9,1)      #  197   0x62693  5      
  movl %ecx, %ecx                  #  198   0x62698  2      
  movl %r9d, 0x18(%r15,%rcx,1)     #  199   0x6269a  5      
  nop                              #  200   0x6269f  1      
.L_62740:                          #        0x626a0  0      
  movl %edx, %edx                  #  201   0x626a0  2      
  movl 0x14(%r15,%rdx,1), %edx     #  202   0x626a2  5      
  testq %rdx, %rdx                 #  203   0x626a7  3      
  je .L_62780                      #  204   0x626aa  6      
  cmpl %edx, %esi                  #  205   0x626b0  2      
  ja .L_63060                      #  206   0x626b2  6      
  movl %r9d, %r9d                  #  207   0x626b8  3      
  movl %edx, 0x14(%r15,%r9,1)      #  208   0x626bb  5      
  nop                              #  209   0x626c0  1      
  movl %edx, %edx                  #  210   0x626c1  2      
  movl %r9d, 0x18(%r15,%rdx,1)     #  211   0x626c3  5      
  nop                              #  212   0x626c8  1      
  nop                              #  213   0x626c9  1      
.L_62780:                          #        0x626ca  0      
  addl %r8d, %eax                  #  214   0x626ca  3      
  movl %eax, %edx                  #  215   0x626cd  2      
  orl $0x1, %edx                   #  216   0x626cf  3      
  cmpl %ebx, %edi                  #  217   0x626d2  2      
  movl %edi, %edi                  #  218   0x626d4  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  219   0x626d6  5      
  leal (%rax,%rdi,1), %edx         #  220   0x626db  3      
  movl %edx, %edx                  #  221   0x626de  2      
  movl %eax, (%r15,%rdx,1)         #  222   0x626e0  4      
  jne .L_62900                     #  223   0x626e4  6      
  movl %eax, 0xffd41d8(%rip)       #  224   0x626ea  6      
  jmpq .L_628a0                    #  225   0x626f0  5      
  nop                              #  226   0x626f5  1      
  nop                              #  227   0x626f6  1      
.L_627c0:                          #        0x626f7  0      
  movl %eax, %ecx                  #  228   0x626f7  2      
  shrl $0x8, %ecx                  #  229   0x626f9  3      
  testl %ecx, %ecx                 #  230   0x626fc  2      
  je .L_629c0                      #  231   0x626fe  6      
  movl $0x10036a6c, %ebx           #  232   0x62704  5      
  cmpl $0xffff, %ecx               #  233   0x62709  6      
  movl $0x80000000, %edx           #  234   0x6270f  5      
  movl %ebx, %ebx                  #  235   0x62714  2      
  nop                              #  236   0x62716  1      
  movl $0x1f, %r8d                 #  237   0x62717  6      
  ja .L_62820                      #  238   0x6271d  6      
  bsrl %ecx, %ecx                  #  239   0x62723  3      
  movl $0x1f, %edx                 #  240   0x62726  5      
  movl %eax, %r8d                  #  241   0x6272b  3      
  xorl $0x1f, %ecx                 #  242   0x6272e  3      
  subl %ecx, %edx                  #  243   0x62731  2      
  leal 0x7(%rdx), %ecx             #  244   0x62733  3      
  shrl %cl, %r8d                   #  245   0x62736  3      
  xchgw %ax, %ax                   #  246   0x62739  3      
  andl $0x1, %r8d                  #  247   0x6273c  4      
  leal (%r8,%rdx,2), %r8d          #  248   0x62740  4      
  movl $0x1, %edx                  #  249   0x62744  5      
  movl %r8d, %ecx                  #  250   0x62749  3      
  leal 0x100369f0(,%r8,4), %ebx    #  251   0x6274c  8      
  shll %cl, %edx                   #  252   0x62754  2      
  nop                              #  253   0x62756  1      
.L_62820:                          #        0x62757  0      
  movl %edi, %edi                  #  254   0x62757  2      
  movl %r8d, 0x1c(%r15,%rdi,1)     #  255   0x62759  5      
  movl 0xffd4160(%rip), %ecx       #  256   0x6275e  6      
  movl %edi, %edi                  #  257   0x62764  2      
  movl $0x0, 0x14(%r15,%rdi,1)     #  258   0x62766  9      
  nop                              #  259   0x6276f  1      
  movl %edi, %edi                  #  260   0x62770  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  261   0x62772  9      
  testl %ecx, %edx                 #  262   0x6277b  2      
  jne .L_62ac0                     #  263   0x6277d  6      
  orl %ecx, %edx                   #  264   0x62783  2      
  movl %ebx, %ebx                  #  265   0x62785  2      
  movl %edi, (%r15,%rbx,1)         #  266   0x62787  4      
  nop                              #  267   0x6278b  1      
  movl %edi, %edi                  #  268   0x6278c  2      
  movl %ebx, 0x18(%r15,%rdi,1)     #  269   0x6278e  5      
  movl %edx, 0xffd412b(%rip)       #  270   0x62793  6      
  movl %edi, %edi                  #  271   0x62799  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  272   0x6279b  5      
  movl %edi, %edi                  #  273   0x627a0  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  274   0x627a2  5      
  nop                              #  275   0x627a7  1      
.L_62880:                          #        0x627a8  0      
  movl 0xffd4132(%rip), %eax       #  276   0x627a8  6      
  subl $0x1, %eax                  #  277   0x627ae  3      
  testl %eax, %eax                 #  278   0x627b1  2      
  movl %eax, 0xffd4127(%rip)       #  279   0x627b3  6      
  je .L_62be0                      #  280   0x627b9  6      
  nop                              #  281   0x627bf  1      
.L_628a0:                          #        0x627c0  0      
  testb $0x2, 0xffd42b5(%rip)      #  282   0x627c0  7      
  je .L_628c0                      #  283   0x627c7  6      
  mfence                           #  284   0x627cd  3      
  movl $0x0, 0xffd42a6(%rip)       #  285   0x627d0  10     
  nop                              #  286   0x627da  1      
.L_628c0:                          #        0x627db  0      
  popq %rbx                        #  287   0x627db  2      
  popq %r11                        #  288   0x627dd  3      
  andl $0xffffffe0, %r11d          #  289   0x627e0  7      
  addq %r15, %r11                  #  290   0x627e7  3      
  jmpq %r11                        #  291   0x627ea  3      
  nop                              #  292   0x627ed  1      
  nop                              #  293   0x627ee  1      
.L_628e0:                          #        0x627ef  0      
  andl $0xfffffffe, %r8d           #  294   0x627ef  7      
  movl %edx, %edx                  #  295   0x627f6  2      
  movl %r8d, 0x4(%r15,%rdx,1)      #  296   0x627f8  5      
  movl %eax, %edx                  #  297   0x627fd  2      
  orl $0x1, %edx                   #  298   0x627ff  3      
  movl %edi, %edi                  #  299   0x62802  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  300   0x62804  5      
  leal (%rax,%rdi,1), %edx         #  301   0x62809  3      
  movl %edx, %edx                  #  302   0x6280c  2      
  movl %eax, (%r15,%rdx,1)         #  303   0x6280e  4      
.L_62900:                          #        0x62812  0      
  movl %eax, %ecx                  #  304   0x62812  2      
  shrl $0x3, %ecx                  #  305   0x62814  3      
  cmpl $0x1f, %ecx                 #  306   0x62817  3      
  ja .L_627c0                      #  307   0x6281a  6      
  movl 0xffd409a(%rip), %ebx       #  308   0x62820  6      
  movl $0x1, %eax                  #  309   0x62826  5      
  leal 0x100368e8(,%rcx,8), %edx   #  310   0x6282b  7      
  shll %cl, %eax                   #  311   0x62832  2      
  testl %ebx, %eax                 #  312   0x62834  2      
  je .L_629e0                      #  313   0x62836  6      
  movl %edx, %edx                  #  314   0x6283c  2      
  movl 0x8(%r15,%rdx,1), %eax      #  315   0x6283e  5      
  cmpl %eax, 0xffd4087(%rip)       #  316   0x62843  6      
  ja .L_63060                      #  317   0x62849  6      
  nop                              #  318   0x6284f  1      
.L_62940:                          #        0x62850  0      
  movl %edx, %edx                  #  319   0x62850  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  320   0x62852  5      
  movl %eax, %eax                  #  321   0x62857  2      
  movl %edi, 0xc(%r15,%rax,1)      #  322   0x62859  5      
  movl %edi, %edi                  #  323   0x6285e  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  324   0x62860  5      
  movl %edi, %edi                  #  325   0x62865  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  326   0x62867  5      
  nop                              #  327   0x6286c  1      
  jmpq .L_628a0                    #  328   0x6286d  5      
  nop                              #  329   0x62872  1      
  nop                              #  330   0x62873  1      
.L_62980:                          #        0x62874  0      
  movl $0x1, %eax                  #  331   0x62874  5      
  xchgl %eax, 0xffd4201(%rip)      #  332   0x62879  6      
  testl %eax, %eax                 #  333   0x6287f  2      
  je .L_623e0                      #  334   0x62881  6      
  movl $0x10036a80, %edi           #  335   0x62887  5      
  nop                              #  336   0x6288c  1      
  callq .spin_acquire_lock         #  337   0x6288d  5      
  testl %eax, %eax                 #  338   0x62892  2      
  je .L_623e0                      #  339   0x62894  6      
  jmpq .L_628c0                    #  340   0x6289a  5      
  nop                              #  341   0x6289f  1      
  nop                              #  342   0x628a0  1      
.L_629c0:                          #        0x628a1  0      
  movl $0x100369f0, %ebx           #  343   0x628a1  5      
  movl $0x1, %edx                  #  344   0x628a6  5      
  xorl %r8d, %r8d                  #  345   0x628ab  3      
  movl %ebx, %ebx                  #  346   0x628ae  2      
  jmpq .L_62820                    #  347   0x628b0  5      
  nop                              #  348   0x628b5  1      
.L_629e0:                          #        0x628b6  0      
  orl %ebx, %eax                   #  349   0x628b6  2      
  movl %eax, 0xffd4002(%rip)       #  350   0x628b8  6      
  movq %rdx, %rax                  #  351   0x628be  3      
  jmpq .L_62940                    #  352   0x628c1  5      
  nop                              #  353   0x628c6  1      
  nop                              #  354   0x628c7  1      
.L_62a00:                          #        0x628c8  0      
  movl %edx, %edx                  #  355   0x628c8  2      
  movl 0x8(%r15,%rdx,1), %r9d      #  356   0x628ca  5      
  leal 0x100368e8(,%rcx,8), %r11d  #  357   0x628cf  8      
  movl %edx, %edx                  #  358   0x628d7  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  359   0x628d9  5      
  cmpl %r11d, %r9d                 #  360   0x628de  3      
  jne .L_630a0                     #  361   0x628e1  6      
  nop                              #  362   0x628e7  1      
.L_62a20:                          #        0x628e8  0      
  cmpl %r9d, %r10d                 #  363   0x628e8  3      
  je .L_62ee0                      #  364   0x628eb  6      
  cmpl %r11d, %r10d                #  365   0x628f1  3      
  jne .L_63040                     #  366   0x628f4  6      
  nop                              #  367   0x628fa  1      
.L_62a40:                          #        0x628fb  0      
  movl %r9d, %r9d                  #  368   0x628fb  3      
  movl %r10d, 0xc(%r15,%r9,1)      #  369   0x628fe  5      
  movl %r10d, %r10d                #  370   0x62903  3      
  movl %r9d, 0x8(%r15,%r10,1)      #  371   0x62906  5      
  jmpq .L_62780                    #  372   0x6290b  5      
  nop                              #  373   0x62910  1      
.L_62a60:                          #        0x62911  0      
  movl %edi, %edi                  #  374   0x62911  2      
  movl 0x8(%r15,%rdi,1), %ebx      #  375   0x62913  5      
  leal 0x100368e8(,%rcx,8), %r10d  #  376   0x62918  8      
  movl %edi, %edi                  #  377   0x62920  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  378   0x62922  5      
  cmpl %r10d, %ebx                 #  379   0x62927  3      
  jne .L_63080                     #  380   0x6292a  6      
  nop                              #  381   0x62930  1      
.L_62a80:                          #        0x62931  0      
  cmpl %ebx, %r9d                  #  382   0x62931  3      
  je .L_62e20                      #  383   0x62934  6      
  cmpl %r10d, %r9d                 #  384   0x6293a  3      
  jne .L_630c0                     #  385   0x6293d  6      
  nop                              #  386   0x62943  1      
.L_62aa0:                          #        0x62944  0      
  movl %ebx, %ebx                  #  387   0x62944  2      
  movl %r9d, 0xc(%r15,%rbx,1)      #  388   0x62946  5      
  movl %r9d, %r9d                  #  389   0x6294b  3      
  movl %ebx, 0x8(%r15,%r9,1)       #  390   0x6294e  5      
  jmpq .L_625c0                    #  391   0x62953  5      
  nop                              #  392   0x62958  1      
.L_62ac0:                          #        0x62959  0      
  xorl %ecx, %ecx                  #  393   0x62959  2      
  cmpl $0x1f, %r8d                 #  394   0x6295b  4      
  movl %ebx, %ebx                  #  395   0x6295f  2      
  movl (%r15,%rbx,1), %edx         #  396   0x62961  4      
  je .L_62ae0                      #  397   0x62965  6      
  shrl $0x1, %r8d                  #  398   0x6296b  3      
  movb $0x19, %cl                  #  399   0x6296e  2      
  subl %r8d, %ecx                  #  400   0x62970  3      
  nop                              #  401   0x62973  1      
.L_62ae0:                          #        0x62974  0      
  movl %eax, %ebx                  #  402   0x62974  2      
  shll %cl, %ebx                   #  403   0x62976  2      
  movl %ebx, %ecx                  #  404   0x62978  2      
  jmpq .L_62b40                    #  405   0x6297a  5      
  nop                              #  406   0x6297f  1      
  nop                              #  407   0x62980  1      
.L_62b00:                          #        0x62981  0      
  movl %ecx, %ebx                  #  408   0x62981  2      
  shrl $0x1f, %ebx                 #  409   0x62983  3      
  addl $0x4, %ebx                  #  410   0x62986  3      
  shll $0x2, %ebx                  #  411   0x62989  3      
  leal (%rbx,%rdx,1), %r9d         #  412   0x6298c  4      
  movslq %ebx, %rbx                #  413   0x62990  3      
  leaq (%rdx,%rbx,1), %rbx         #  414   0x62993  4      
  movl %ebx, %ebx                  #  415   0x62997  2      
  movl (%r15,%rbx,1), %r8d         #  416   0x62999  4      
  testq %r8, %r8                   #  417   0x6299d  3      
  nop                              #  418   0x629a0  1      
  je .L_62c20                      #  419   0x629a1  6      
  addl %ecx, %ecx                  #  420   0x629a7  2      
  movq %r8, %rdx                   #  421   0x629a9  3      
  nop                              #  422   0x629ac  1      
  nop                              #  423   0x629ad  1      
.L_62b40:                          #        0x629ae  0      
  movl %edx, %edx                  #  424   0x629ae  2      
  movl 0x4(%r15,%rdx,1), %ebx      #  425   0x629b0  5      
  andl $0xfffffff8, %ebx           #  426   0x629b5  6      
  cmpl %eax, %ebx                  #  427   0x629bb  2      
  jne .L_62b00                     #  428   0x629bd  6      
  cmpl %edx, %esi                  #  429   0x629c3  2      
  movl %edx, %edx                  #  430   0x629c5  2      
  movl 0x8(%r15,%rdx,1), %eax      #  431   0x629c7  5      
  ja .L_63060                      #  432   0x629cc  6      
  cmpl %eax, %esi                  #  433   0x629d2  2      
  nop                              #  434   0x629d4  1      
  ja .L_63060                      #  435   0x629d5  6      
  movl %eax, %eax                  #  436   0x629db  2      
  movl %edi, 0xc(%r15,%rax,1)      #  437   0x629dd  5      
  movl %edx, %edx                  #  438   0x629e2  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  439   0x629e4  5      
  movl %edi, %edi                  #  440   0x629e9  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  441   0x629eb  5      
  nop                              #  442   0x629f0  1      
  movl %edi, %edi                  #  443   0x629f1  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  444   0x629f3  5      
  movl %edi, %edi                  #  445   0x629f8  2      
  movl $0x0, 0x18(%r15,%rdi,1)     #  446   0x629fa  9      
  jmpq .L_62880                    #  447   0x62a03  5      
  nop                              #  448   0x62a08  1      
.L_62ba0:                          #        0x62a09  0      
  leal 0x10(%rcx,%rax,1), %ebx     #  449   0x62a09  4      
  subl %ecx, %edi                  #  450   0x62a0d  2      
  movl %ebx, %esi                  #  451   0x62a0f  2      
  nop                              #  452   0x62a11  1      
  nop                              #  453   0x62a12  1      
  callq .munmap                    #  454   0x62a13  5      
  testl %eax, %eax                 #  455   0x62a18  2      
  jne .L_628a0                     #  456   0x62a1a  6      
  subl %ebx, 0xffd404a(%rip)       #  457   0x62a20  6      
  jmpq .L_628a0                    #  458   0x62a26  5      
  nop                              #  459   0x62a2b  1      
.L_62be0:                          #        0x62a2c  0      
  nop                              #  460   0x62a2c  1      
  nop                              #  461   0x62a2d  1      
  callq .T_268                     #  462   0x62a2e  5      
  jmpq .L_628a0                    #  463   0x62a33  5      
  nop                              #  464   0x62a38  1      
  nop                              #  465   0x62a39  1      
.L_62c20:                          #        0x62a3a  0      
  cmpl %r9d, 0xffd3e8f(%rip)       #  466   0x62a3a  7      
  ja .L_63060                      #  467   0x62a41  6      
  movl %ebx, %ebx                  #  468   0x62a47  2      
  movl %edi, (%r15,%rbx,1)         #  469   0x62a49  4      
  movl %edi, %edi                  #  470   0x62a4d  2      
  movl %edx, 0x18(%r15,%rdi,1)     #  471   0x62a4f  5      
  nop                              #  472   0x62a54  1      
  movl %edi, %edi                  #  473   0x62a55  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  474   0x62a57  5      
  movl %edi, %edi                  #  475   0x62a5c  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  476   0x62a5e  5      
  jmpq .L_62880                    #  477   0x62a63  5      
  nop                              #  478   0x62a68  1      
.L_62c60:                          #        0x62a69  0      
  addl 0xffd3e5d(%rip), %eax       #  479   0x62a69  6      
  movl %edi, 0xffd3e63(%rip)       #  480   0x62a6f  6      
  movl %eax, %edx                  #  481   0x62a75  2      
  movl %eax, 0xffd3e4f(%rip)       #  482   0x62a77  6      
  orl $0x1, %edx                   #  483   0x62a7d  3      
  cmpl %edi, 0xffd3e4e(%rip)       #  484   0x62a80  6      
  nop                              #  485   0x62a86  1      
  movl %edi, %edi                  #  486   0x62a87  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  487   0x62a89  5      
  je .L_62ce0                      #  488   0x62a8e  6      
  nop                              #  489   0x62a94  1      
  nop                              #  490   0x62a95  1      
.L_62ca0:                          #        0x62a96  0      
  cmpl 0xffd3e40(%rip), %eax       #  491   0x62a96  6      
  jbe .L_628a0                     #  492   0x62a9c  6      
  xorl %edi, %edi                  #  493   0x62aa2  2      
  nop                              #  494   0x62aa4  1      
  callq .T_266                     #  495   0x62aa5  5      
  jmpq .L_628a0                    #  496   0x62aaa  5      
  nop                              #  497   0x62aaf  1      
  nop                              #  498   0x62ab0  1      
.L_62ce0:                          #        0x62ab1  0      
  movl $0x0, 0xffd3e19(%rip)       #  499   0x62ab1  10     
  movl $0x0, 0xffd3e03(%rip)       #  500   0x62abb  10     
  jmpq .L_62ca0                    #  501   0x62ac5  5      
  nop                              #  502   0x62aca  1      
.L_62d00:                          #        0x62acb  0      
  addl 0xffd3df7(%rip), %eax       #  503   0x62acb  6      
  movl %edi, 0xffd3dfd(%rip)       #  504   0x62ad1  6      
  movl %eax, 0xffd3deb(%rip)       #  505   0x62ad7  6      
  nop                              #  506   0x62add  1      
.L_62d20:                          #        0x62ade  0      
  movl %eax, %edx                  #  507   0x62ade  2      
  orl $0x1, %edx                   #  508   0x62ae0  3      
  movl %edi, %edi                  #  509   0x62ae3  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  510   0x62ae5  5      
  leal (%rax,%rdi,1), %edi         #  511   0x62aea  3      
  movl %edi, %edi                  #  512   0x62aed  2      
  movl %eax, (%r15,%rdi,1)         #  513   0x62aef  4      
  jmpq .L_628a0                    #  514   0x62af3  5      
  nop                              #  515   0x62af8  1      
.L_62d40:                          #        0x62af9  0      
  movl %edx, %edx                  #  516   0x62af9  2      
  movl 0x4(%r15,%rdx,1), %ecx      #  517   0x62afb  5      
  movl %ecx, %ebx                  #  518   0x62b00  2      
  andl $0x3, %ebx                  #  519   0x62b02  3      
  cmpl $0x3, %ebx                  #  520   0x62b05  3      
  jne .L_625c0                     #  521   0x62b08  6      
  andl $0xfffffffe, %ecx           #  522   0x62b0e  6      
  movl %eax, 0xffd3dae(%rip)       #  523   0x62b14  6      
  xchgw %ax, %ax                   #  524   0x62b1a  3      
  movl %edx, %edx                  #  525   0x62b1d  2      
  movl %ecx, 0x4(%r15,%rdx,1)      #  526   0x62b1f  5      
  jmpq .L_62d20                    #  527   0x62b24  5      
  nop                              #  528   0x62b29  1      
  nop                              #  529   0x62b2a  1      
.L_62d80:                          #        0x62b2b  0      
  movl %r10d, %r10d                #  530   0x62b2b  3      
  movl 0x14(%r15,%r10,1), %r9d     #  531   0x62b2e  5      
  testq %r9, %r9                   #  532   0x62b33  3      
  je .L_63000                      #  533   0x62b36  6      
  addl $0x14, %r10d                #  534   0x62b3c  4      
  jmpq .L_62de0                    #  535   0x62b40  5      
  nop                              #  536   0x62b45  1      
.L_62da0:                          #        0x62b46  0      
  leal 0x14(%r9), %r10d            #  537   0x62b46  4      
  nop                              #  538   0x62b4a  1      
  nop                              #  539   0x62b4b  1      
.L_62dc0:                          #        0x62b4c  0      
  movq %rcx, %r9                   #  540   0x62b4c  3      
  nop                              #  541   0x62b4f  1      
  nop                              #  542   0x62b50  1      
.L_62de0:                          #        0x62b51  0      
  movl %r9d, %r9d                  #  543   0x62b51  3      
  movl 0x14(%r15,%r9,1), %ecx      #  544   0x62b54  5      
  testq %rcx, %rcx                 #  545   0x62b59  3      
  jne .L_62da0                     #  546   0x62b5c  6      
  movl %r9d, %r9d                  #  547   0x62b62  3      
  movl 0x10(%r15,%r9,1), %ecx      #  548   0x62b65  5      
  testq %rcx, %rcx                 #  549   0x62b6a  3      
  je .L_62f00                      #  550   0x62b6d  6      
  xchgw %ax, %ax                   #  551   0x62b73  3      
  leal 0x10(%r9), %r10d            #  552   0x62b76  4      
  jmpq .L_62dc0                    #  553   0x62b7a  5      
  nop                              #  554   0x62b7f  1      
  nop                              #  555   0x62b80  1      
.L_62e20:                          #        0x62b81  0      
  movl $0xfffffffe, %r9d           #  556   0x62b81  6      
  roll %cl, %r9d                   #  557   0x62b87  3      
  andl %r9d, 0xffd3d2f(%rip)       #  558   0x62b8a  7      
  jmpq .L_625c0                    #  559   0x62b91  5      
  nop                              #  560   0x62b96  1      
.L_62e40:                          #        0x62b97  0      
  movl %r9d, %r9d                  #  561   0x62b97  3      
  movl 0x14(%r15,%r9,1), %ebx      #  562   0x62b9a  5      
  testq %rbx, %rbx                 #  563   0x62b9f  3      
  je .L_63020                      #  564   0x62ba2  6      
  addl $0x14, %r9d                 #  565   0x62ba8  4      
  jmpq .L_62ea0                    #  566   0x62bac  5      
  nop                              #  567   0x62bb1  1      
.L_62e60:                          #        0x62bb2  0      
  leal 0x14(%rbx), %r9d            #  568   0x62bb2  4      
  nop                              #  569   0x62bb6  1      
  nop                              #  570   0x62bb7  1      
.L_62e80:                          #        0x62bb8  0      
  movq %rcx, %rbx                  #  571   0x62bb8  3      
  nop                              #  572   0x62bbb  1      
  nop                              #  573   0x62bbc  1      
.L_62ea0:                          #        0x62bbd  0      
  movl %ebx, %ebx                  #  574   0x62bbd  2      
  movl 0x14(%r15,%rbx,1), %ecx     #  575   0x62bbf  5      
  testq %rcx, %rcx                 #  576   0x62bc4  3      
  jne .L_62e60                     #  577   0x62bc7  6      
  movl %ebx, %ebx                  #  578   0x62bcd  2      
  movl 0x10(%r15,%rbx,1), %ecx     #  579   0x62bcf  5      
  testq %rcx, %rcx                 #  580   0x62bd4  3      
  je .L_62f20                      #  581   0x62bd7  6      
  leal 0x10(%rbx), %r9d            #  582   0x62bdd  4      
  nop                              #  583   0x62be1  1      
  jmpq .L_62e80                    #  584   0x62be2  5      
  nop                              #  585   0x62be7  1      
  nop                              #  586   0x62be8  1      
.L_62ee0:                          #        0x62be9  0      
  movl $0xfffffffe, %edx           #  587   0x62be9  5      
  roll %cl, %edx                   #  588   0x62bee  2      
  andl %edx, 0xffd3cca(%rip)       #  589   0x62bf0  6      
  jmpq .L_62780                    #  590   0x62bf6  5      
  nop                              #  591   0x62bfb  1      
.L_62f00:                          #        0x62bfc  0      
  cmpl %r10d, 0xffd3ccd(%rip)      #  592   0x62bfc  7      
  ja .L_63060                      #  593   0x62c03  6      
  movl %r10d, %r10d                #  594   0x62c09  3      
  movl $0x0, (%r15,%r10,1)         #  595   0x62c0c  8      
  jmpq .L_62680                    #  596   0x62c14  5      
  nop                              #  597   0x62c19  1      
.L_62f20:                          #        0x62c1a  0      
  cmpl %r9d, %esi                  #  598   0x62c1a  3      
  ja .L_63060                      #  599   0x62c1d  6      
  movl %r9d, %r9d                  #  600   0x62c23  3      
  movl $0x0, (%r15,%r9,1)          #  601   0x62c26  8      
  jmpq .L_624c0                    #  602   0x62c2e  5      
  nop                              #  603   0x62c33  1      
.L_62f40:                          #        0x62c34  0      
  testq %r9, %r9                   #  604   0x62c34  3      
  movl %r10d, %r10d                #  605   0x62c37  3      
  movl %r9d, (%r15,%r10,1)         #  606   0x62c3a  4      
  jne .L_62700                     #  607   0x62c3e  6      
  movl $0xfffffffe, %edx           #  608   0x62c44  5      
  roll %cl, %edx                   #  609   0x62c49  2      
  andl %edx, 0xffd3c73(%rip)       #  610   0x62c4b  6      
  nop                              #  611   0x62c51  1      
  jmpq .L_62780                    #  612   0x62c52  5      
  nop                              #  613   0x62c57  1      
  nop                              #  614   0x62c58  1      
.L_62f80:                          #        0x62c59  0      
  testq %rbx, %rbx                 #  615   0x62c59  3      
  movl %r9d, %r9d                  #  616   0x62c5c  3      
  movl %ebx, (%r15,%r9,1)          #  617   0x62c5f  4      
  jne .L_62540                     #  618   0x62c63  6      
  movl $0xfffffffe, %ebx           #  619   0x62c69  5      
  roll %cl, %ebx                   #  620   0x62c6e  2      
  andl %ebx, 0xffd3c4e(%rip)       #  621   0x62c70  6      
  nop                              #  622   0x62c76  1      
  jmpq .L_625c0                    #  623   0x62c77  5      
  nop                              #  624   0x62c7c  1      
  nop                              #  625   0x62c7d  1      
.L_62fc0:                          #        0x62c7e  0      
  movl %r10d, %r10d                #  626   0x62c7e  3      
  movl %ebx, 0x10(%r15,%r10,1)     #  627   0x62c81  5      
  jmpq .L_62520                    #  628   0x62c86  5      
  nop                              #  629   0x62c8b  1      
  nop                              #  630   0x62c8c  1      
.L_62fe0:                          #        0x62c8d  0      
  movl %r11d, %r11d                #  631   0x62c8d  3      
  movl %r9d, 0x10(%r15,%r11,1)     #  632   0x62c90  5      
  jmpq .L_626e0                    #  633   0x62c95  5      
  nop                              #  634   0x62c9a  1      
  nop                              #  635   0x62c9b  1      
.L_63000:                          #        0x62c9c  0      
  movl %r10d, %r10d                #  636   0x62c9c  3      
  movl 0x10(%r15,%r10,1), %r9d     #  637   0x62c9f  5      
  testq %r9, %r9                   #  638   0x62ca4  3      
  je .L_62680                      #  639   0x62ca7  6      
  addl $0x10, %r10d                #  640   0x62cad  4      
  jmpq .L_62de0                    #  641   0x62cb1  5      
  nop                              #  642   0x62cb6  1      
.L_63020:                          #        0x62cb7  0      
  movl %r9d, %r9d                  #  643   0x62cb7  3      
  movl 0x10(%r15,%r9,1), %ebx      #  644   0x62cba  5      
  testq %rbx, %rbx                 #  645   0x62cbf  3      
  je .L_624c0                      #  646   0x62cc2  6      
  addl $0x10, %r9d                 #  647   0x62cc8  4      
  jmpq .L_62ea0                    #  648   0x62ccc  5      
  nop                              #  649   0x62cd1  1      
.L_63040:                          #        0x62cd2  0      
  cmpl %r10d, 0xffd3bf7(%rip)      #  650   0x62cd2  7      
  ja .L_63060                      #  651   0x62cd9  6      
  movl %r10d, %r10d                #  652   0x62cdf  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  653   0x62ce2  5      
  je .L_62a40                      #  654   0x62ce7  6      
  nop                              #  655   0x62ced  1      
.L_63060:                          #        0x62cee  0      
  nop                              #  656   0x62cee  1      
  nop                              #  657   0x62cef  1      
  callq .abort                     #  658   0x62cf0  5      
.L_63080:                          #        0x62cf5  0      
  cmpl %ebx, %esi                  #  659   0x62cf5  2      
  ja .L_63060                      #  660   0x62cf7  6      
  movl %ebx, %ebx                  #  661   0x62cfd  2      
  cmpl %edi, 0xc(%r15,%rbx,1)      #  662   0x62cff  5      
  je .L_62a80                      #  663   0x62d04  6      
  jmpq .L_63060                    #  664   0x62d0a  5      
  nop                              #  665   0x62d0f  1      
.L_630a0:                          #        0x62d10  0      
  cmpl %r9d, 0xffd3bb9(%rip)       #  666   0x62d10  7      
  ja .L_63060                      #  667   0x62d17  6      
  movl %r9d, %r9d                  #  668   0x62d1d  3      
  cmpl %edx, 0xc(%r15,%r9,1)       #  669   0x62d20  5      
  je .L_62a20                      #  670   0x62d25  6      
  jmpq .L_63060                    #  671   0x62d2b  5      
  nop                              #  672   0x62d30  1      
.L_630c0:                          #        0x62d31  0      
  cmpl %r9d, %esi                  #  673   0x62d31  3      
  ja .L_63060                      #  674   0x62d34  6      
  movl %r9d, %r9d                  #  675   0x62d3a  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  676   0x62d3d  5      
  je .L_62aa0                      #  677   0x62d42  6      
  jmpq .L_63060                    #  678   0x62d48  5      
  nop                              #  679   0x62d4d  1      
                                                            
.size free, .-free

