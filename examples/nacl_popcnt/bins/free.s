  .text
  .globl free
  .type free, @function

#! file-offset 0x623e0
#! rip-offset  0x623e0
#! capacity    3360 bytes

# Text                             #  Line  RIP      Bytes  
.free:                             #        0x623e0  0      
  pushq %rbx                       #  1     0x623e0  2      
  movl %edi, %ebx                  #  2     0x623e2  2      
  testq %rbx, %rbx                 #  3     0x623e4  3      
  je .L_628e0                      #  4     0x623e7  6      
  testb $0x2, 0xffd4688(%rip)      #  5     0x623ed  7      
  jne .L_629a0                     #  6     0x623f4  6      
  nop                              #  7     0x623fa  1      
.L_62400:                          #        0x623fb  0      
  movl 0xffd44cf(%rip), %esi       #  8     0x623fb  6      
  leal -0x8(%rbx), %edi            #  9     0x62401  3      
  movq %rdi, %r8                   #  10    0x62404  3      
  cmpl %edi, %esi                  #  11    0x62407  2      
  ja .L_63080                      #  12    0x62409  6      
  movl %edi, %edi                  #  13    0x6240f  2      
  movl 0x4(%r15,%rdi,1), %ecx      #  14    0x62411  5      
  movl %ecx, %r9d                  #  15    0x62416  3      
  xchgw %ax, %ax                   #  16    0x62419  3      
  andl $0x3, %r9d                  #  17    0x6241c  4      
  cmpl $0x1, %r9d                  #  18    0x62420  4      
  je .L_63080                      #  19    0x62424  6      
  movl %ecx, %eax                  #  20    0x6242a  2      
  andl $0xfffffff8, %eax           #  21    0x6242c  5      
  andl $0x1, %ecx                  #  22    0x62431  3      
  leal (%rax,%rdi,1), %edx         #  23    0x62434  3      
  jne .L_625e0                     #  24    0x62437  6      
  nop                              #  25    0x6243d  1      
  testl %r9d, %r9d                 #  26    0x6243e  3      
  movl %edi, %edi                  #  27    0x62441  2      
  movl (%r15,%rdi,1), %ecx         #  28    0x62443  4      
  je .L_62bc0                      #  29    0x62447  6      
  subl %ecx, %edi                  #  30    0x6244d  2      
  cmpl %edi, %esi                  #  31    0x6244f  2      
  movq %rdi, %r8                   #  32    0x62451  3      
  ja .L_63080                      #  33    0x62454  6      
  addl %ecx, %eax                  #  34    0x6245a  2      
  xchgw %ax, %ax                   #  35    0x6245c  3      
  cmpl %edi, 0xffd446f(%rip)       #  36    0x6245f  6      
  je .L_62d60                      #  37    0x62465  6      
  shrl $0x3, %ecx                  #  38    0x6246b  3      
  cmpl $0x1f, %ecx                 #  39    0x6246e  3      
  jbe .L_62a80                     #  40    0x62471  6      
  movl %edi, %edi                  #  41    0x62477  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  42    0x62479  5      
  nop                              #  43    0x6247e  1      
  movl %edi, %edi                  #  44    0x6247f  2      
  movl 0x18(%r15,%rdi,1), %r10d    #  45    0x62481  5      
  cmpl %edi, %r9d                  #  46    0x62486  3      
  je .L_62e60                      #  47    0x62489  6      
  movl %edi, %edi                  #  48    0x6248f  2      
  movl 0x8(%r15,%rdi,1), %ecx      #  49    0x62491  5      
  cmpl %ecx, %esi                  #  50    0x62496  2      
  ja .L_63080                      #  51    0x62498  6      
  nop                              #  52    0x6249e  1      
  movl %ecx, %ecx                  #  53    0x6249f  2      
  cmpl %edi, 0xc(%r15,%rcx,1)      #  54    0x624a1  5      
  jne .L_63080                     #  55    0x624a6  6      
  movl %r9d, %r9d                  #  56    0x624ac  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  57    0x624af  5      
  jne .L_63080                     #  58    0x624b4  6      
  nop                              #  59    0x624ba  1      
  movl %ecx, %ecx                  #  60    0x624bb  2      
  movl %r9d, 0xc(%r15,%rcx,1)      #  61    0x624bd  5      
  movl %r9d, %r9d                  #  62    0x624c2  3      
  movl %ecx, 0x8(%r15,%r9,1)       #  63    0x624c5  5      
  movq %r9, %rbx                   #  64    0x624ca  3      
  nop                              #  65    0x624cd  1      
.L_624e0:                          #        0x624ce  0      
  testq %r10, %r10                 #  66    0x624ce  3      
  je .L_625e0                      #  67    0x624d1  6      
  movl %edi, %edi                  #  68    0x624d7  2      
  movl 0x1c(%r15,%rdi,1), %ecx     #  69    0x624d9  5      
  leal 0x100369f0(,%rcx,4), %r9d   #  70    0x624de  8      
  movl %r9d, %r9d                  #  71    0x624e6  3      
  cmpl %edi, (%r15,%r9,1)          #  72    0x624e9  4      
  nop                              #  73    0x624ed  1      
  je .L_62fa0                      #  74    0x624ee  6      
  cmpl %r10d, %esi                 #  75    0x624f4  3      
  ja .L_63080                      #  76    0x624f7  6      
  movl %r10d, %r10d                #  77    0x624fd  3      
  cmpl %edi, 0x10(%r15,%r10,1)     #  78    0x62500  5      
  je .L_62fe0                      #  79    0x62505  6      
  nop                              #  80    0x6250b  1      
  movl %r10d, %r10d                #  81    0x6250c  3      
  movl %ebx, 0x14(%r15,%r10,1)     #  82    0x6250f  5      
  nop                              #  83    0x62514  1      
  nop                              #  84    0x62515  1      
.L_62540:                          #        0x62516  0      
  testq %rbx, %rbx                 #  85    0x62516  3      
  je .L_625e0                      #  86    0x62519  6      
  nop                              #  87    0x6251f  1      
  nop                              #  88    0x62520  1      
.L_62560:                          #        0x62521  0      
  cmpl %esi, %ebx                  #  89    0x62521  2      
  jb .L_63080                      #  90    0x62523  6      
  movl %edi, %edi                  #  91    0x62529  2      
  movl 0x10(%r15,%rdi,1), %ecx     #  92    0x6252b  5      
  movl %ebx, %ebx                  #  93    0x62530  2      
  movl %r10d, 0x18(%r15,%rbx,1)    #  94    0x62532  5      
  testq %rcx, %rcx                 #  95    0x62537  3      
  je .L_625a0                      #  96    0x6253a  6      
  cmpl %esi, %ecx                  #  97    0x62540  2      
  nop                              #  98    0x62542  1      
  jb .L_63080                      #  99    0x62543  6      
  movl %ebx, %ebx                  #  100   0x62549  2      
  movl %ecx, 0x10(%r15,%rbx,1)     #  101   0x6254b  5      
  movl %ecx, %ecx                  #  102   0x62550  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  103   0x62552  5      
  nop                              #  104   0x62557  1      
.L_625a0:                          #        0x62558  0      
  movl %edi, %edi                  #  105   0x62558  2      
  movl 0x14(%r15,%rdi,1), %ecx     #  106   0x6255a  5      
  testq %rcx, %rcx                 #  107   0x6255f  3      
  je .L_625e0                      #  108   0x62562  6      
  cmpl %esi, %ecx                  #  109   0x62568  2      
  jb .L_63080                      #  110   0x6256a  6      
  movl %ebx, %ebx                  #  111   0x62570  2      
  movl %ecx, 0x14(%r15,%rbx,1)     #  112   0x62572  5      
  nop                              #  113   0x62577  1      
  movl %ecx, %ecx                  #  114   0x62578  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  115   0x6257a  5      
  nop                              #  116   0x6257f  1      
  nop                              #  117   0x62580  1      
.L_625e0:                          #        0x62581  0      
  cmpl %edx, %r8d                  #  118   0x62581  3      
  jae .L_63080                     #  119   0x62584  6      
  movl %edx, %edx                  #  120   0x6258a  2      
  movl 0x4(%r15,%rdx,1), %r8d      #  121   0x6258c  5      
  testb $0x1, %r8b                 #  122   0x62591  4      
  je .L_63080                      #  123   0x62595  6      
  testb $0x2, %r8b                 #  124   0x6259b  4      
  xchgw %ax, %ax                   #  125   0x6259f  3      
  jne .L_62900                     #  126   0x625a2  6      
  cmpl %edx, 0xffd432a(%rip)       #  127   0x625a8  6      
  je .L_62c80                      #  128   0x625ae  6      
  movl 0xffd431a(%rip), %ebx       #  129   0x625b4  6      
  cmpl %edx, %ebx                  #  130   0x625ba  2      
  je .L_62d20                      #  131   0x625bc  6      
  andl $0xfffffff8, %r8d           #  132   0x625c2  7      
  movl %r8d, %ecx                  #  133   0x625c9  3      
  shrl $0x3, %ecx                  #  134   0x625cc  3      
  cmpl $0x1f, %ecx                 #  135   0x625cf  3      
  jbe .L_62a20                     #  136   0x625d2  6      
  movl %edx, %edx                  #  137   0x625d8  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  138   0x625da  5      
  nop                              #  139   0x625df  1      
  movl %edx, %edx                  #  140   0x625e0  2      
  movl 0x18(%r15,%rdx,1), %r11d    #  141   0x625e2  5      
  cmpl %edx, %r10d                 #  142   0x625e7  3      
  je .L_62da0                      #  143   0x625ea  6      
  movl %edx, %edx                  #  144   0x625f0  2      
  movl 0x8(%r15,%rdx,1), %ecx      #  145   0x625f2  5      
  cmpl %ecx, 0xffd42d3(%rip)       #  146   0x625f7  6      
  nop                              #  147   0x625fd  1      
  ja .L_63080                      #  148   0x625fe  6      
  movl %ecx, %ecx                  #  149   0x62604  2      
  cmpl %edx, 0xc(%r15,%rcx,1)      #  150   0x62606  5      
  jne .L_63080                     #  151   0x6260b  6      
  movl %r10d, %r10d                #  152   0x62611  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  153   0x62614  5      
  nop                              #  154   0x62619  1      
  jne .L_63080                     #  155   0x6261a  6      
  movl %ecx, %ecx                  #  156   0x62620  2      
  movl %r10d, 0xc(%r15,%rcx,1)     #  157   0x62622  5      
  movl %r10d, %r10d                #  158   0x62627  3      
  movl %ecx, 0x8(%r15,%r10,1)      #  159   0x6262a  5      
  movq %r10, %r9                   #  160   0x6262f  3      
  nop                              #  161   0x62632  1      
.L_626a0:                          #        0x62633  0      
  testq %r11, %r11                 #  162   0x62633  3      
  je .L_627a0                      #  163   0x62636  6      
  movl %edx, %edx                  #  164   0x6263c  2      
  movl 0x1c(%r15,%rdx,1), %ecx     #  165   0x6263e  5      
  leal 0x100369f0(,%rcx,4), %r10d  #  166   0x62643  8      
  movl %r10d, %r10d                #  167   0x6264b  3      
  cmpl %edx, (%r15,%r10,1)         #  168   0x6264e  4      
  nop                              #  169   0x62652  1      
  je .L_62f60                      #  170   0x62653  6      
  cmpl %r11d, %esi                 #  171   0x62659  3      
  ja .L_63080                      #  172   0x6265c  6      
  movl %r11d, %r11d                #  173   0x62662  3      
  cmpl %edx, 0x10(%r15,%r11,1)     #  174   0x62665  5      
  je .L_63000                      #  175   0x6266a  6      
  nop                              #  176   0x62670  1      
  movl %r11d, %r11d                #  177   0x62671  3      
  movl %r9d, 0x14(%r15,%r11,1)     #  178   0x62674  5      
  nop                              #  179   0x62679  1      
  nop                              #  180   0x6267a  1      
.L_62700:                          #        0x6267b  0      
  testq %r9, %r9                   #  181   0x6267b  3      
  je .L_627a0                      #  182   0x6267e  6      
  nop                              #  183   0x62684  1      
  nop                              #  184   0x62685  1      
.L_62720:                          #        0x62686  0      
  cmpl %esi, %r9d                  #  185   0x62686  3      
  jb .L_63080                      #  186   0x62689  6      
  movl %edx, %edx                  #  187   0x6268f  2      
  movl 0x10(%r15,%rdx,1), %ecx     #  188   0x62691  5      
  movl %r9d, %r9d                  #  189   0x62696  3      
  movl %r11d, 0x18(%r15,%r9,1)     #  190   0x62699  5      
  testq %rcx, %rcx                 #  191   0x6269e  3      
  nop                              #  192   0x626a1  1      
  je .L_62760                      #  193   0x626a2  6      
  cmpl %esi, %ecx                  #  194   0x626a8  2      
  jb .L_63080                      #  195   0x626aa  6      
  movl %r9d, %r9d                  #  196   0x626b0  3      
  movl %ecx, 0x10(%r15,%r9,1)      #  197   0x626b3  5      
  movl %ecx, %ecx                  #  198   0x626b8  2      
  movl %r9d, 0x18(%r15,%rcx,1)     #  199   0x626ba  5      
  nop                              #  200   0x626bf  1      
.L_62760:                          #        0x626c0  0      
  movl %edx, %edx                  #  201   0x626c0  2      
  movl 0x14(%r15,%rdx,1), %edx     #  202   0x626c2  5      
  testq %rdx, %rdx                 #  203   0x626c7  3      
  je .L_627a0                      #  204   0x626ca  6      
  cmpl %edx, %esi                  #  205   0x626d0  2      
  ja .L_63080                      #  206   0x626d2  6      
  movl %r9d, %r9d                  #  207   0x626d8  3      
  movl %edx, 0x14(%r15,%r9,1)      #  208   0x626db  5      
  nop                              #  209   0x626e0  1      
  movl %edx, %edx                  #  210   0x626e1  2      
  movl %r9d, 0x18(%r15,%rdx,1)     #  211   0x626e3  5      
  nop                              #  212   0x626e8  1      
  nop                              #  213   0x626e9  1      
.L_627a0:                          #        0x626ea  0      
  addl %r8d, %eax                  #  214   0x626ea  3      
  movl %eax, %edx                  #  215   0x626ed  2      
  orl $0x1, %edx                   #  216   0x626ef  3      
  cmpl %ebx, %edi                  #  217   0x626f2  2      
  movl %edi, %edi                  #  218   0x626f4  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  219   0x626f6  5      
  leal (%rax,%rdi,1), %edx         #  220   0x626fb  3      
  movl %edx, %edx                  #  221   0x626fe  2      
  movl %eax, (%r15,%rdx,1)         #  222   0x62700  4      
  jne .L_62920                     #  223   0x62704  6      
  movl %eax, 0xffd41b8(%rip)       #  224   0x6270a  6      
  jmpq .L_628c0                    #  225   0x62710  5      
  nop                              #  226   0x62715  1      
  nop                              #  227   0x62716  1      
.L_627e0:                          #        0x62717  0      
  movl %eax, %ecx                  #  228   0x62717  2      
  shrl $0x8, %ecx                  #  229   0x62719  3      
  testl %ecx, %ecx                 #  230   0x6271c  2      
  je .L_629e0                      #  231   0x6271e  6      
  movl $0x10036a6c, %ebx           #  232   0x62724  5      
  cmpl $0xffff, %ecx               #  233   0x62729  6      
  movl $0x80000000, %edx           #  234   0x6272f  5      
  movl %ebx, %ebx                  #  235   0x62734  2      
  nop                              #  236   0x62736  1      
  movl $0x1f, %r8d                 #  237   0x62737  6      
  ja .L_62840                      #  238   0x6273d  6      
  bsrl %ecx, %ecx                  #  239   0x62743  3      
  movl $0x1f, %edx                 #  240   0x62746  5      
  movl %eax, %r8d                  #  241   0x6274b  3      
  xorl $0x1f, %ecx                 #  242   0x6274e  3      
  subl %ecx, %edx                  #  243   0x62751  2      
  leal 0x7(%rdx), %ecx             #  244   0x62753  3      
  shrl %cl, %r8d                   #  245   0x62756  3      
  xchgw %ax, %ax                   #  246   0x62759  3      
  andl $0x1, %r8d                  #  247   0x6275c  4      
  leal (%r8,%rdx,2), %r8d          #  248   0x62760  4      
  movl $0x1, %edx                  #  249   0x62764  5      
  movl %r8d, %ecx                  #  250   0x62769  3      
  leal 0x100369f0(,%r8,4), %ebx    #  251   0x6276c  8      
  shll %cl, %edx                   #  252   0x62774  2      
  nop                              #  253   0x62776  1      
.L_62840:                          #        0x62777  0      
  movl %edi, %edi                  #  254   0x62777  2      
  movl %r8d, 0x1c(%r15,%rdi,1)     #  255   0x62779  5      
  movl 0xffd4140(%rip), %ecx       #  256   0x6277e  6      
  movl %edi, %edi                  #  257   0x62784  2      
  movl $0x0, 0x14(%r15,%rdi,1)     #  258   0x62786  9      
  nop                              #  259   0x6278f  1      
  movl %edi, %edi                  #  260   0x62790  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  261   0x62792  9      
  testl %ecx, %edx                 #  262   0x6279b  2      
  jne .L_62ae0                     #  263   0x6279d  6      
  orl %ecx, %edx                   #  264   0x627a3  2      
  movl %ebx, %ebx                  #  265   0x627a5  2      
  movl %edi, (%r15,%rbx,1)         #  266   0x627a7  4      
  nop                              #  267   0x627ab  1      
  movl %edi, %edi                  #  268   0x627ac  2      
  movl %ebx, 0x18(%r15,%rdi,1)     #  269   0x627ae  5      
  movl %edx, 0xffd410b(%rip)       #  270   0x627b3  6      
  movl %edi, %edi                  #  271   0x627b9  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  272   0x627bb  5      
  movl %edi, %edi                  #  273   0x627c0  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  274   0x627c2  5      
  nop                              #  275   0x627c7  1      
.L_628a0:                          #        0x627c8  0      
  movl 0xffd4112(%rip), %eax       #  276   0x627c8  6      
  subl $0x1, %eax                  #  277   0x627ce  3      
  testl %eax, %eax                 #  278   0x627d1  2      
  movl %eax, 0xffd4107(%rip)       #  279   0x627d3  6      
  je .L_62c00                      #  280   0x627d9  6      
  nop                              #  281   0x627df  1      
.L_628c0:                          #        0x627e0  0      
  testb $0x2, 0xffd4295(%rip)      #  282   0x627e0  7      
  je .L_628e0                      #  283   0x627e7  6      
  mfence                           #  284   0x627ed  3      
  movl $0x0, 0xffd4286(%rip)       #  285   0x627f0  10     
  nop                              #  286   0x627fa  1      
.L_628e0:                          #        0x627fb  0      
  popq %rbx                        #  287   0x627fb  2      
  popq %r11                        #  288   0x627fd  3      
  andl $0xffffffe0, %r11d          #  289   0x62800  7      
  addq %r15, %r11                  #  290   0x62807  3      
  jmpq %r11                        #  291   0x6280a  3      
  nop                              #  292   0x6280d  1      
  nop                              #  293   0x6280e  1      
.L_62900:                          #        0x6280f  0      
  andl $0xfffffffe, %r8d           #  294   0x6280f  7      
  movl %edx, %edx                  #  295   0x62816  2      
  movl %r8d, 0x4(%r15,%rdx,1)      #  296   0x62818  5      
  movl %eax, %edx                  #  297   0x6281d  2      
  orl $0x1, %edx                   #  298   0x6281f  3      
  movl %edi, %edi                  #  299   0x62822  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  300   0x62824  5      
  leal (%rax,%rdi,1), %edx         #  301   0x62829  3      
  movl %edx, %edx                  #  302   0x6282c  2      
  movl %eax, (%r15,%rdx,1)         #  303   0x6282e  4      
.L_62920:                          #        0x62832  0      
  movl %eax, %ecx                  #  304   0x62832  2      
  shrl $0x3, %ecx                  #  305   0x62834  3      
  cmpl $0x1f, %ecx                 #  306   0x62837  3      
  ja .L_627e0                      #  307   0x6283a  6      
  movl 0xffd407a(%rip), %ebx       #  308   0x62840  6      
  movl $0x1, %eax                  #  309   0x62846  5      
  leal 0x100368e8(,%rcx,8), %edx   #  310   0x6284b  7      
  shll %cl, %eax                   #  311   0x62852  2      
  testl %ebx, %eax                 #  312   0x62854  2      
  je .L_62a00                      #  313   0x62856  6      
  movl %edx, %edx                  #  314   0x6285c  2      
  movl 0x8(%r15,%rdx,1), %eax      #  315   0x6285e  5      
  cmpl %eax, 0xffd4067(%rip)       #  316   0x62863  6      
  ja .L_63080                      #  317   0x62869  6      
  nop                              #  318   0x6286f  1      
.L_62960:                          #        0x62870  0      
  movl %edx, %edx                  #  319   0x62870  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  320   0x62872  5      
  movl %eax, %eax                  #  321   0x62877  2      
  movl %edi, 0xc(%r15,%rax,1)      #  322   0x62879  5      
  movl %edi, %edi                  #  323   0x6287e  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  324   0x62880  5      
  movl %edi, %edi                  #  325   0x62885  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  326   0x62887  5      
  nop                              #  327   0x6288c  1      
  jmpq .L_628c0                    #  328   0x6288d  5      
  nop                              #  329   0x62892  1      
  nop                              #  330   0x62893  1      
.L_629a0:                          #        0x62894  0      
  movl $0x1, %eax                  #  331   0x62894  5      
  xchgl %eax, 0xffd41e1(%rip)      #  332   0x62899  6      
  testl %eax, %eax                 #  333   0x6289f  2      
  je .L_62400                      #  334   0x628a1  6      
  movl $0x10036a80, %edi           #  335   0x628a7  5      
  nop                              #  336   0x628ac  1      
  callq .spin_acquire_lock         #  337   0x628ad  5      
  testl %eax, %eax                 #  338   0x628b2  2      
  je .L_62400                      #  339   0x628b4  6      
  jmpq .L_628e0                    #  340   0x628ba  5      
  nop                              #  341   0x628bf  1      
  nop                              #  342   0x628c0  1      
.L_629e0:                          #        0x628c1  0      
  movl $0x100369f0, %ebx           #  343   0x628c1  5      
  movl $0x1, %edx                  #  344   0x628c6  5      
  xorl %r8d, %r8d                  #  345   0x628cb  3      
  movl %ebx, %ebx                  #  346   0x628ce  2      
  jmpq .L_62840                    #  347   0x628d0  5      
  nop                              #  348   0x628d5  1      
.L_62a00:                          #        0x628d6  0      
  orl %ebx, %eax                   #  349   0x628d6  2      
  movl %eax, 0xffd3fe2(%rip)       #  350   0x628d8  6      
  movq %rdx, %rax                  #  351   0x628de  3      
  jmpq .L_62960                    #  352   0x628e1  5      
  nop                              #  353   0x628e6  1      
  nop                              #  354   0x628e7  1      
.L_62a20:                          #        0x628e8  0      
  movl %edx, %edx                  #  355   0x628e8  2      
  movl 0x8(%r15,%rdx,1), %r9d      #  356   0x628ea  5      
  leal 0x100368e8(,%rcx,8), %r11d  #  357   0x628ef  8      
  movl %edx, %edx                  #  358   0x628f7  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  359   0x628f9  5      
  cmpl %r11d, %r9d                 #  360   0x628fe  3      
  jne .L_630c0                     #  361   0x62901  6      
  nop                              #  362   0x62907  1      
.L_62a40:                          #        0x62908  0      
  cmpl %r9d, %r10d                 #  363   0x62908  3      
  je .L_62f00                      #  364   0x6290b  6      
  cmpl %r11d, %r10d                #  365   0x62911  3      
  jne .L_63060                     #  366   0x62914  6      
  nop                              #  367   0x6291a  1      
.L_62a60:                          #        0x6291b  0      
  movl %r9d, %r9d                  #  368   0x6291b  3      
  movl %r10d, 0xc(%r15,%r9,1)      #  369   0x6291e  5      
  movl %r10d, %r10d                #  370   0x62923  3      
  movl %r9d, 0x8(%r15,%r10,1)      #  371   0x62926  5      
  jmpq .L_627a0                    #  372   0x6292b  5      
  nop                              #  373   0x62930  1      
.L_62a80:                          #        0x62931  0      
  movl %edi, %edi                  #  374   0x62931  2      
  movl 0x8(%r15,%rdi,1), %ebx      #  375   0x62933  5      
  leal 0x100368e8(,%rcx,8), %r10d  #  376   0x62938  8      
  movl %edi, %edi                  #  377   0x62940  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  378   0x62942  5      
  cmpl %r10d, %ebx                 #  379   0x62947  3      
  jne .L_630a0                     #  380   0x6294a  6      
  nop                              #  381   0x62950  1      
.L_62aa0:                          #        0x62951  0      
  cmpl %ebx, %r9d                  #  382   0x62951  3      
  je .L_62e40                      #  383   0x62954  6      
  cmpl %r10d, %r9d                 #  384   0x6295a  3      
  jne .L_630e0                     #  385   0x6295d  6      
  nop                              #  386   0x62963  1      
.L_62ac0:                          #        0x62964  0      
  movl %ebx, %ebx                  #  387   0x62964  2      
  movl %r9d, 0xc(%r15,%rbx,1)      #  388   0x62966  5      
  movl %r9d, %r9d                  #  389   0x6296b  3      
  movl %ebx, 0x8(%r15,%r9,1)       #  390   0x6296e  5      
  jmpq .L_625e0                    #  391   0x62973  5      
  nop                              #  392   0x62978  1      
.L_62ae0:                          #        0x62979  0      
  xorl %ecx, %ecx                  #  393   0x62979  2      
  cmpl $0x1f, %r8d                 #  394   0x6297b  4      
  movl %ebx, %ebx                  #  395   0x6297f  2      
  movl (%r15,%rbx,1), %edx         #  396   0x62981  4      
  je .L_62b00                      #  397   0x62985  6      
  shrl $0x1, %r8d                  #  398   0x6298b  3      
  movb $0x19, %cl                  #  399   0x6298e  2      
  subl %r8d, %ecx                  #  400   0x62990  3      
  nop                              #  401   0x62993  1      
.L_62b00:                          #        0x62994  0      
  movl %eax, %ebx                  #  402   0x62994  2      
  shll %cl, %ebx                   #  403   0x62996  2      
  movl %ebx, %ecx                  #  404   0x62998  2      
  jmpq .L_62b60                    #  405   0x6299a  5      
  nop                              #  406   0x6299f  1      
  nop                              #  407   0x629a0  1      
.L_62b20:                          #        0x629a1  0      
  movl %ecx, %ebx                  #  408   0x629a1  2      
  shrl $0x1f, %ebx                 #  409   0x629a3  3      
  addl $0x4, %ebx                  #  410   0x629a6  3      
  shll $0x2, %ebx                  #  411   0x629a9  3      
  leal (%rbx,%rdx,1), %r9d         #  412   0x629ac  4      
  movslq %ebx, %rbx                #  413   0x629b0  3      
  leaq (%rdx,%rbx,1), %rbx         #  414   0x629b3  4      
  movl %ebx, %ebx                  #  415   0x629b7  2      
  movl (%r15,%rbx,1), %r8d         #  416   0x629b9  4      
  testq %r8, %r8                   #  417   0x629bd  3      
  nop                              #  418   0x629c0  1      
  je .L_62c40                      #  419   0x629c1  6      
  addl %ecx, %ecx                  #  420   0x629c7  2      
  movq %r8, %rdx                   #  421   0x629c9  3      
  nop                              #  422   0x629cc  1      
  nop                              #  423   0x629cd  1      
.L_62b60:                          #        0x629ce  0      
  movl %edx, %edx                  #  424   0x629ce  2      
  movl 0x4(%r15,%rdx,1), %ebx      #  425   0x629d0  5      
  andl $0xfffffff8, %ebx           #  426   0x629d5  6      
  cmpl %eax, %ebx                  #  427   0x629db  2      
  jne .L_62b20                     #  428   0x629dd  6      
  cmpl %edx, %esi                  #  429   0x629e3  2      
  movl %edx, %edx                  #  430   0x629e5  2      
  movl 0x8(%r15,%rdx,1), %eax      #  431   0x629e7  5      
  ja .L_63080                      #  432   0x629ec  6      
  cmpl %eax, %esi                  #  433   0x629f2  2      
  nop                              #  434   0x629f4  1      
  ja .L_63080                      #  435   0x629f5  6      
  movl %eax, %eax                  #  436   0x629fb  2      
  movl %edi, 0xc(%r15,%rax,1)      #  437   0x629fd  5      
  movl %edx, %edx                  #  438   0x62a02  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  439   0x62a04  5      
  movl %edi, %edi                  #  440   0x62a09  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  441   0x62a0b  5      
  nop                              #  442   0x62a10  1      
  movl %edi, %edi                  #  443   0x62a11  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  444   0x62a13  5      
  movl %edi, %edi                  #  445   0x62a18  2      
  movl $0x0, 0x18(%r15,%rdi,1)     #  446   0x62a1a  9      
  jmpq .L_628a0                    #  447   0x62a23  5      
  nop                              #  448   0x62a28  1      
.L_62bc0:                          #        0x62a29  0      
  leal 0x10(%rcx,%rax,1), %ebx     #  449   0x62a29  4      
  subl %ecx, %edi                  #  450   0x62a2d  2      
  movl %ebx, %esi                  #  451   0x62a2f  2      
  nop                              #  452   0x62a31  1      
  nop                              #  453   0x62a32  1      
  callq .munmap                    #  454   0x62a33  5      
  testl %eax, %eax                 #  455   0x62a38  2      
  jne .L_628c0                     #  456   0x62a3a  6      
  subl %ebx, 0xffd402a(%rip)       #  457   0x62a40  6      
  jmpq .L_628c0                    #  458   0x62a46  5      
  nop                              #  459   0x62a4b  1      
.L_62c00:                          #        0x62a4c  0      
  nop                              #  460   0x62a4c  1      
  nop                              #  461   0x62a4d  1      
  callq .T_268                     #  462   0x62a4e  5      
  jmpq .L_628c0                    #  463   0x62a53  5      
  nop                              #  464   0x62a58  1      
  nop                              #  465   0x62a59  1      
.L_62c40:                          #        0x62a5a  0      
  cmpl %r9d, 0xffd3e6f(%rip)       #  466   0x62a5a  7      
  ja .L_63080                      #  467   0x62a61  6      
  movl %ebx, %ebx                  #  468   0x62a67  2      
  movl %edi, (%r15,%rbx,1)         #  469   0x62a69  4      
  movl %edi, %edi                  #  470   0x62a6d  2      
  movl %edx, 0x18(%r15,%rdi,1)     #  471   0x62a6f  5      
  nop                              #  472   0x62a74  1      
  movl %edi, %edi                  #  473   0x62a75  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  474   0x62a77  5      
  movl %edi, %edi                  #  475   0x62a7c  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  476   0x62a7e  5      
  jmpq .L_628a0                    #  477   0x62a83  5      
  nop                              #  478   0x62a88  1      
.L_62c80:                          #        0x62a89  0      
  addl 0xffd3e3d(%rip), %eax       #  479   0x62a89  6      
  movl %edi, 0xffd3e43(%rip)       #  480   0x62a8f  6      
  movl %eax, %edx                  #  481   0x62a95  2      
  movl %eax, 0xffd3e2f(%rip)       #  482   0x62a97  6      
  orl $0x1, %edx                   #  483   0x62a9d  3      
  cmpl %edi, 0xffd3e2e(%rip)       #  484   0x62aa0  6      
  nop                              #  485   0x62aa6  1      
  movl %edi, %edi                  #  486   0x62aa7  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  487   0x62aa9  5      
  je .L_62d00                      #  488   0x62aae  6      
  nop                              #  489   0x62ab4  1      
  nop                              #  490   0x62ab5  1      
.L_62cc0:                          #        0x62ab6  0      
  cmpl 0xffd3e20(%rip), %eax       #  491   0x62ab6  6      
  jbe .L_628c0                     #  492   0x62abc  6      
  xorl %edi, %edi                  #  493   0x62ac2  2      
  nop                              #  494   0x62ac4  1      
  callq .T_266                     #  495   0x62ac5  5      
  jmpq .L_628c0                    #  496   0x62aca  5      
  nop                              #  497   0x62acf  1      
  nop                              #  498   0x62ad0  1      
.L_62d00:                          #        0x62ad1  0      
  movl $0x0, 0xffd3df9(%rip)       #  499   0x62ad1  10     
  movl $0x0, 0xffd3de3(%rip)       #  500   0x62adb  10     
  jmpq .L_62cc0                    #  501   0x62ae5  5      
  nop                              #  502   0x62aea  1      
.L_62d20:                          #        0x62aeb  0      
  addl 0xffd3dd7(%rip), %eax       #  503   0x62aeb  6      
  movl %edi, 0xffd3ddd(%rip)       #  504   0x62af1  6      
  movl %eax, 0xffd3dcb(%rip)       #  505   0x62af7  6      
  nop                              #  506   0x62afd  1      
.L_62d40:                          #        0x62afe  0      
  movl %eax, %edx                  #  507   0x62afe  2      
  orl $0x1, %edx                   #  508   0x62b00  3      
  movl %edi, %edi                  #  509   0x62b03  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  510   0x62b05  5      
  leal (%rax,%rdi,1), %edi         #  511   0x62b0a  3      
  movl %edi, %edi                  #  512   0x62b0d  2      
  movl %eax, (%r15,%rdi,1)         #  513   0x62b0f  4      
  jmpq .L_628c0                    #  514   0x62b13  5      
  nop                              #  515   0x62b18  1      
.L_62d60:                          #        0x62b19  0      
  movl %edx, %edx                  #  516   0x62b19  2      
  movl 0x4(%r15,%rdx,1), %ecx      #  517   0x62b1b  5      
  movl %ecx, %ebx                  #  518   0x62b20  2      
  andl $0x3, %ebx                  #  519   0x62b22  3      
  cmpl $0x3, %ebx                  #  520   0x62b25  3      
  jne .L_625e0                     #  521   0x62b28  6      
  andl $0xfffffffe, %ecx           #  522   0x62b2e  6      
  movl %eax, 0xffd3d8e(%rip)       #  523   0x62b34  6      
  xchgw %ax, %ax                   #  524   0x62b3a  3      
  movl %edx, %edx                  #  525   0x62b3d  2      
  movl %ecx, 0x4(%r15,%rdx,1)      #  526   0x62b3f  5      
  jmpq .L_62d40                    #  527   0x62b44  5      
  nop                              #  528   0x62b49  1      
  nop                              #  529   0x62b4a  1      
.L_62da0:                          #        0x62b4b  0      
  movl %r10d, %r10d                #  530   0x62b4b  3      
  movl 0x14(%r15,%r10,1), %r9d     #  531   0x62b4e  5      
  testq %r9, %r9                   #  532   0x62b53  3      
  je .L_63020                      #  533   0x62b56  6      
  addl $0x14, %r10d                #  534   0x62b5c  4      
  jmpq .L_62e00                    #  535   0x62b60  5      
  nop                              #  536   0x62b65  1      
.L_62dc0:                          #        0x62b66  0      
  leal 0x14(%r9), %r10d            #  537   0x62b66  4      
  nop                              #  538   0x62b6a  1      
  nop                              #  539   0x62b6b  1      
.L_62de0:                          #        0x62b6c  0      
  movq %rcx, %r9                   #  540   0x62b6c  3      
  nop                              #  541   0x62b6f  1      
  nop                              #  542   0x62b70  1      
.L_62e00:                          #        0x62b71  0      
  movl %r9d, %r9d                  #  543   0x62b71  3      
  movl 0x14(%r15,%r9,1), %ecx      #  544   0x62b74  5      
  testq %rcx, %rcx                 #  545   0x62b79  3      
  jne .L_62dc0                     #  546   0x62b7c  6      
  movl %r9d, %r9d                  #  547   0x62b82  3      
  movl 0x10(%r15,%r9,1), %ecx      #  548   0x62b85  5      
  testq %rcx, %rcx                 #  549   0x62b8a  3      
  je .L_62f20                      #  550   0x62b8d  6      
  xchgw %ax, %ax                   #  551   0x62b93  3      
  leal 0x10(%r9), %r10d            #  552   0x62b96  4      
  jmpq .L_62de0                    #  553   0x62b9a  5      
  nop                              #  554   0x62b9f  1      
  nop                              #  555   0x62ba0  1      
.L_62e40:                          #        0x62ba1  0      
  movl $0xfffffffe, %r9d           #  556   0x62ba1  6      
  roll %cl, %r9d                   #  557   0x62ba7  3      
  andl %r9d, 0xffd3d0f(%rip)       #  558   0x62baa  7      
  jmpq .L_625e0                    #  559   0x62bb1  5      
  nop                              #  560   0x62bb6  1      
.L_62e60:                          #        0x62bb7  0      
  movl %r9d, %r9d                  #  561   0x62bb7  3      
  movl 0x14(%r15,%r9,1), %ebx      #  562   0x62bba  5      
  testq %rbx, %rbx                 #  563   0x62bbf  3      
  je .L_63040                      #  564   0x62bc2  6      
  addl $0x14, %r9d                 #  565   0x62bc8  4      
  jmpq .L_62ec0                    #  566   0x62bcc  5      
  nop                              #  567   0x62bd1  1      
.L_62e80:                          #        0x62bd2  0      
  leal 0x14(%rbx), %r9d            #  568   0x62bd2  4      
  nop                              #  569   0x62bd6  1      
  nop                              #  570   0x62bd7  1      
.L_62ea0:                          #        0x62bd8  0      
  movq %rcx, %rbx                  #  571   0x62bd8  3      
  nop                              #  572   0x62bdb  1      
  nop                              #  573   0x62bdc  1      
.L_62ec0:                          #        0x62bdd  0      
  movl %ebx, %ebx                  #  574   0x62bdd  2      
  movl 0x14(%r15,%rbx,1), %ecx     #  575   0x62bdf  5      
  testq %rcx, %rcx                 #  576   0x62be4  3      
  jne .L_62e80                     #  577   0x62be7  6      
  movl %ebx, %ebx                  #  578   0x62bed  2      
  movl 0x10(%r15,%rbx,1), %ecx     #  579   0x62bef  5      
  testq %rcx, %rcx                 #  580   0x62bf4  3      
  je .L_62f40                      #  581   0x62bf7  6      
  leal 0x10(%rbx), %r9d            #  582   0x62bfd  4      
  nop                              #  583   0x62c01  1      
  jmpq .L_62ea0                    #  584   0x62c02  5      
  nop                              #  585   0x62c07  1      
  nop                              #  586   0x62c08  1      
.L_62f00:                          #        0x62c09  0      
  movl $0xfffffffe, %edx           #  587   0x62c09  5      
  roll %cl, %edx                   #  588   0x62c0e  2      
  andl %edx, 0xffd3caa(%rip)       #  589   0x62c10  6      
  jmpq .L_627a0                    #  590   0x62c16  5      
  nop                              #  591   0x62c1b  1      
.L_62f20:                          #        0x62c1c  0      
  cmpl %r10d, 0xffd3cad(%rip)      #  592   0x62c1c  7      
  ja .L_63080                      #  593   0x62c23  6      
  movl %r10d, %r10d                #  594   0x62c29  3      
  movl $0x0, (%r15,%r10,1)         #  595   0x62c2c  8      
  jmpq .L_626a0                    #  596   0x62c34  5      
  nop                              #  597   0x62c39  1      
.L_62f40:                          #        0x62c3a  0      
  cmpl %r9d, %esi                  #  598   0x62c3a  3      
  ja .L_63080                      #  599   0x62c3d  6      
  movl %r9d, %r9d                  #  600   0x62c43  3      
  movl $0x0, (%r15,%r9,1)          #  601   0x62c46  8      
  jmpq .L_624e0                    #  602   0x62c4e  5      
  nop                              #  603   0x62c53  1      
.L_62f60:                          #        0x62c54  0      
  testq %r9, %r9                   #  604   0x62c54  3      
  movl %r10d, %r10d                #  605   0x62c57  3      
  movl %r9d, (%r15,%r10,1)         #  606   0x62c5a  4      
  jne .L_62720                     #  607   0x62c5e  6      
  movl $0xfffffffe, %edx           #  608   0x62c64  5      
  roll %cl, %edx                   #  609   0x62c69  2      
  andl %edx, 0xffd3c53(%rip)       #  610   0x62c6b  6      
  nop                              #  611   0x62c71  1      
  jmpq .L_627a0                    #  612   0x62c72  5      
  nop                              #  613   0x62c77  1      
  nop                              #  614   0x62c78  1      
.L_62fa0:                          #        0x62c79  0      
  testq %rbx, %rbx                 #  615   0x62c79  3      
  movl %r9d, %r9d                  #  616   0x62c7c  3      
  movl %ebx, (%r15,%r9,1)          #  617   0x62c7f  4      
  jne .L_62560                     #  618   0x62c83  6      
  movl $0xfffffffe, %ebx           #  619   0x62c89  5      
  roll %cl, %ebx                   #  620   0x62c8e  2      
  andl %ebx, 0xffd3c2e(%rip)       #  621   0x62c90  6      
  nop                              #  622   0x62c96  1      
  jmpq .L_625e0                    #  623   0x62c97  5      
  nop                              #  624   0x62c9c  1      
  nop                              #  625   0x62c9d  1      
.L_62fe0:                          #        0x62c9e  0      
  movl %r10d, %r10d                #  626   0x62c9e  3      
  movl %ebx, 0x10(%r15,%r10,1)     #  627   0x62ca1  5      
  jmpq .L_62540                    #  628   0x62ca6  5      
  nop                              #  629   0x62cab  1      
  nop                              #  630   0x62cac  1      
.L_63000:                          #        0x62cad  0      
  movl %r11d, %r11d                #  631   0x62cad  3      
  movl %r9d, 0x10(%r15,%r11,1)     #  632   0x62cb0  5      
  jmpq .L_62700                    #  633   0x62cb5  5      
  nop                              #  634   0x62cba  1      
  nop                              #  635   0x62cbb  1      
.L_63020:                          #        0x62cbc  0      
  movl %r10d, %r10d                #  636   0x62cbc  3      
  movl 0x10(%r15,%r10,1), %r9d     #  637   0x62cbf  5      
  testq %r9, %r9                   #  638   0x62cc4  3      
  je .L_626a0                      #  639   0x62cc7  6      
  addl $0x10, %r10d                #  640   0x62ccd  4      
  jmpq .L_62e00                    #  641   0x62cd1  5      
  nop                              #  642   0x62cd6  1      
.L_63040:                          #        0x62cd7  0      
  movl %r9d, %r9d                  #  643   0x62cd7  3      
  movl 0x10(%r15,%r9,1), %ebx      #  644   0x62cda  5      
  testq %rbx, %rbx                 #  645   0x62cdf  3      
  je .L_624e0                      #  646   0x62ce2  6      
  addl $0x10, %r9d                 #  647   0x62ce8  4      
  jmpq .L_62ec0                    #  648   0x62cec  5      
  nop                              #  649   0x62cf1  1      
.L_63060:                          #        0x62cf2  0      
  cmpl %r10d, 0xffd3bd7(%rip)      #  650   0x62cf2  7      
  ja .L_63080                      #  651   0x62cf9  6      
  movl %r10d, %r10d                #  652   0x62cff  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  653   0x62d02  5      
  je .L_62a60                      #  654   0x62d07  6      
  nop                              #  655   0x62d0d  1      
.L_63080:                          #        0x62d0e  0      
  nop                              #  656   0x62d0e  1      
  nop                              #  657   0x62d0f  1      
  callq .abort                     #  658   0x62d10  5      
.L_630a0:                          #        0x62d15  0      
  cmpl %ebx, %esi                  #  659   0x62d15  2      
  ja .L_63080                      #  660   0x62d17  6      
  movl %ebx, %ebx                  #  661   0x62d1d  2      
  cmpl %edi, 0xc(%r15,%rbx,1)      #  662   0x62d1f  5      
  je .L_62aa0                      #  663   0x62d24  6      
  jmpq .L_63080                    #  664   0x62d2a  5      
  nop                              #  665   0x62d2f  1      
.L_630c0:                          #        0x62d30  0      
  cmpl %r9d, 0xffd3b99(%rip)       #  666   0x62d30  7      
  ja .L_63080                      #  667   0x62d37  6      
  movl %r9d, %r9d                  #  668   0x62d3d  3      
  cmpl %edx, 0xc(%r15,%r9,1)       #  669   0x62d40  5      
  je .L_62a40                      #  670   0x62d45  6      
  jmpq .L_63080                    #  671   0x62d4b  5      
  nop                              #  672   0x62d50  1      
.L_630e0:                          #        0x62d51  0      
  cmpl %r9d, %esi                  #  673   0x62d51  3      
  ja .L_63080                      #  674   0x62d54  6      
  movl %r9d, %r9d                  #  675   0x62d5a  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  676   0x62d5d  5      
  je .L_62ac0                      #  677   0x62d62  6      
  jmpq .L_63080                    #  678   0x62d68  5      
  nop                              #  679   0x62d6d  1      
                                                            
.size free, .-free

