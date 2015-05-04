  .text
  .globl free
  .type free, @function

#! file-offset 0x62460
#! rip-offset  0x62460
#! capacity    3360 bytes

# Text                             #  Line  RIP      Bytes  
.free:                             #        0x62460  0      
  pushq %rbx                       #  1     0x62460  2      
  movl %edi, %ebx                  #  2     0x62462  2      
  testq %rbx, %rbx                 #  3     0x62464  3      
  je .L_62960                      #  4     0x62467  6      
  testb $0x2, 0xffd4608(%rip)      #  5     0x6246d  7      
  jne .L_62a20                     #  6     0x62474  6      
  nop                              #  7     0x6247a  1      
.L_62480:                          #        0x6247b  0      
  movl 0xffd444f(%rip), %esi       #  8     0x6247b  6      
  leal -0x8(%rbx), %edi            #  9     0x62481  3      
  movq %rdi, %r8                   #  10    0x62484  3      
  cmpl %edi, %esi                  #  11    0x62487  2      
  ja .L_63100                      #  12    0x62489  6      
  movl %edi, %edi                  #  13    0x6248f  2      
  movl 0x4(%r15,%rdi,1), %ecx      #  14    0x62491  5      
  movl %ecx, %r9d                  #  15    0x62496  3      
  xchgw %ax, %ax                   #  16    0x62499  3      
  andl $0x3, %r9d                  #  17    0x6249c  4      
  cmpl $0x1, %r9d                  #  18    0x624a0  4      
  je .L_63100                      #  19    0x624a4  6      
  movl %ecx, %eax                  #  20    0x624aa  2      
  andl $0xfffffff8, %eax           #  21    0x624ac  5      
  andl $0x1, %ecx                  #  22    0x624b1  3      
  leal (%rax,%rdi,1), %edx         #  23    0x624b4  3      
  jne .L_62660                     #  24    0x624b7  6      
  nop                              #  25    0x624bd  1      
  testl %r9d, %r9d                 #  26    0x624be  3      
  movl %edi, %edi                  #  27    0x624c1  2      
  movl (%r15,%rdi,1), %ecx         #  28    0x624c3  4      
  je .L_62c40                      #  29    0x624c7  6      
  subl %ecx, %edi                  #  30    0x624cd  2      
  cmpl %edi, %esi                  #  31    0x624cf  2      
  movq %rdi, %r8                   #  32    0x624d1  3      
  ja .L_63100                      #  33    0x624d4  6      
  addl %ecx, %eax                  #  34    0x624da  2      
  xchgw %ax, %ax                   #  35    0x624dc  3      
  cmpl %edi, 0xffd43ef(%rip)       #  36    0x624df  6      
  je .L_62de0                      #  37    0x624e5  6      
  shrl $0x3, %ecx                  #  38    0x624eb  3      
  cmpl $0x1f, %ecx                 #  39    0x624ee  3      
  jbe .L_62b00                     #  40    0x624f1  6      
  movl %edi, %edi                  #  41    0x624f7  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  42    0x624f9  5      
  nop                              #  43    0x624fe  1      
  movl %edi, %edi                  #  44    0x624ff  2      
  movl 0x18(%r15,%rdi,1), %r10d    #  45    0x62501  5      
  cmpl %edi, %r9d                  #  46    0x62506  3      
  je .L_62ee0                      #  47    0x62509  6      
  movl %edi, %edi                  #  48    0x6250f  2      
  movl 0x8(%r15,%rdi,1), %ecx      #  49    0x62511  5      
  cmpl %ecx, %esi                  #  50    0x62516  2      
  ja .L_63100                      #  51    0x62518  6      
  nop                              #  52    0x6251e  1      
  movl %ecx, %ecx                  #  53    0x6251f  2      
  cmpl %edi, 0xc(%r15,%rcx,1)      #  54    0x62521  5      
  jne .L_63100                     #  55    0x62526  6      
  movl %r9d, %r9d                  #  56    0x6252c  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  57    0x6252f  5      
  jne .L_63100                     #  58    0x62534  6      
  nop                              #  59    0x6253a  1      
  movl %ecx, %ecx                  #  60    0x6253b  2      
  movl %r9d, 0xc(%r15,%rcx,1)      #  61    0x6253d  5      
  movl %r9d, %r9d                  #  62    0x62542  3      
  movl %ecx, 0x8(%r15,%r9,1)       #  63    0x62545  5      
  movq %r9, %rbx                   #  64    0x6254a  3      
  nop                              #  65    0x6254d  1      
.L_62560:                          #        0x6254e  0      
  testq %r10, %r10                 #  66    0x6254e  3      
  je .L_62660                      #  67    0x62551  6      
  movl %edi, %edi                  #  68    0x62557  2      
  movl 0x1c(%r15,%rdi,1), %ecx     #  69    0x62559  5      
  leal 0x100369f0(,%rcx,4), %r9d   #  70    0x6255e  8      
  movl %r9d, %r9d                  #  71    0x62566  3      
  cmpl %edi, (%r15,%r9,1)          #  72    0x62569  4      
  nop                              #  73    0x6256d  1      
  je .L_63020                      #  74    0x6256e  6      
  cmpl %r10d, %esi                 #  75    0x62574  3      
  ja .L_63100                      #  76    0x62577  6      
  movl %r10d, %r10d                #  77    0x6257d  3      
  cmpl %edi, 0x10(%r15,%r10,1)     #  78    0x62580  5      
  je .L_63060                      #  79    0x62585  6      
  nop                              #  80    0x6258b  1      
  movl %r10d, %r10d                #  81    0x6258c  3      
  movl %ebx, 0x14(%r15,%r10,1)     #  82    0x6258f  5      
  nop                              #  83    0x62594  1      
  nop                              #  84    0x62595  1      
.L_625c0:                          #        0x62596  0      
  testq %rbx, %rbx                 #  85    0x62596  3      
  je .L_62660                      #  86    0x62599  6      
  nop                              #  87    0x6259f  1      
  nop                              #  88    0x625a0  1      
.L_625e0:                          #        0x625a1  0      
  cmpl %esi, %ebx                  #  89    0x625a1  2      
  jb .L_63100                      #  90    0x625a3  6      
  movl %edi, %edi                  #  91    0x625a9  2      
  movl 0x10(%r15,%rdi,1), %ecx     #  92    0x625ab  5      
  movl %ebx, %ebx                  #  93    0x625b0  2      
  movl %r10d, 0x18(%r15,%rbx,1)    #  94    0x625b2  5      
  testq %rcx, %rcx                 #  95    0x625b7  3      
  je .L_62620                      #  96    0x625ba  6      
  cmpl %esi, %ecx                  #  97    0x625c0  2      
  nop                              #  98    0x625c2  1      
  jb .L_63100                      #  99    0x625c3  6      
  movl %ebx, %ebx                  #  100   0x625c9  2      
  movl %ecx, 0x10(%r15,%rbx,1)     #  101   0x625cb  5      
  movl %ecx, %ecx                  #  102   0x625d0  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  103   0x625d2  5      
  nop                              #  104   0x625d7  1      
.L_62620:                          #        0x625d8  0      
  movl %edi, %edi                  #  105   0x625d8  2      
  movl 0x14(%r15,%rdi,1), %ecx     #  106   0x625da  5      
  testq %rcx, %rcx                 #  107   0x625df  3      
  je .L_62660                      #  108   0x625e2  6      
  cmpl %esi, %ecx                  #  109   0x625e8  2      
  jb .L_63100                      #  110   0x625ea  6      
  movl %ebx, %ebx                  #  111   0x625f0  2      
  movl %ecx, 0x14(%r15,%rbx,1)     #  112   0x625f2  5      
  nop                              #  113   0x625f7  1      
  movl %ecx, %ecx                  #  114   0x625f8  2      
  movl %ebx, 0x18(%r15,%rcx,1)     #  115   0x625fa  5      
  nop                              #  116   0x625ff  1      
  nop                              #  117   0x62600  1      
.L_62660:                          #        0x62601  0      
  cmpl %edx, %r8d                  #  118   0x62601  3      
  jae .L_63100                     #  119   0x62604  6      
  movl %edx, %edx                  #  120   0x6260a  2      
  movl 0x4(%r15,%rdx,1), %r8d      #  121   0x6260c  5      
  testb $0x1, %r8b                 #  122   0x62611  4      
  je .L_63100                      #  123   0x62615  6      
  testb $0x2, %r8b                 #  124   0x6261b  4      
  xchgw %ax, %ax                   #  125   0x6261f  3      
  jne .L_62980                     #  126   0x62622  6      
  cmpl %edx, 0xffd42aa(%rip)       #  127   0x62628  6      
  je .L_62d00                      #  128   0x6262e  6      
  movl 0xffd429a(%rip), %ebx       #  129   0x62634  6      
  cmpl %edx, %ebx                  #  130   0x6263a  2      
  je .L_62da0                      #  131   0x6263c  6      
  andl $0xfffffff8, %r8d           #  132   0x62642  7      
  movl %r8d, %ecx                  #  133   0x62649  3      
  shrl $0x3, %ecx                  #  134   0x6264c  3      
  cmpl $0x1f, %ecx                 #  135   0x6264f  3      
  jbe .L_62aa0                     #  136   0x62652  6      
  movl %edx, %edx                  #  137   0x62658  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  138   0x6265a  5      
  nop                              #  139   0x6265f  1      
  movl %edx, %edx                  #  140   0x62660  2      
  movl 0x18(%r15,%rdx,1), %r11d    #  141   0x62662  5      
  cmpl %edx, %r10d                 #  142   0x62667  3      
  je .L_62e20                      #  143   0x6266a  6      
  movl %edx, %edx                  #  144   0x62670  2      
  movl 0x8(%r15,%rdx,1), %ecx      #  145   0x62672  5      
  cmpl %ecx, 0xffd4253(%rip)       #  146   0x62677  6      
  nop                              #  147   0x6267d  1      
  ja .L_63100                      #  148   0x6267e  6      
  movl %ecx, %ecx                  #  149   0x62684  2      
  cmpl %edx, 0xc(%r15,%rcx,1)      #  150   0x62686  5      
  jne .L_63100                     #  151   0x6268b  6      
  movl %r10d, %r10d                #  152   0x62691  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  153   0x62694  5      
  nop                              #  154   0x62699  1      
  jne .L_63100                     #  155   0x6269a  6      
  movl %ecx, %ecx                  #  156   0x626a0  2      
  movl %r10d, 0xc(%r15,%rcx,1)     #  157   0x626a2  5      
  movl %r10d, %r10d                #  158   0x626a7  3      
  movl %ecx, 0x8(%r15,%r10,1)      #  159   0x626aa  5      
  movq %r10, %r9                   #  160   0x626af  3      
  nop                              #  161   0x626b2  1      
.L_62720:                          #        0x626b3  0      
  testq %r11, %r11                 #  162   0x626b3  3      
  je .L_62820                      #  163   0x626b6  6      
  movl %edx, %edx                  #  164   0x626bc  2      
  movl 0x1c(%r15,%rdx,1), %ecx     #  165   0x626be  5      
  leal 0x100369f0(,%rcx,4), %r10d  #  166   0x626c3  8      
  movl %r10d, %r10d                #  167   0x626cb  3      
  cmpl %edx, (%r15,%r10,1)         #  168   0x626ce  4      
  nop                              #  169   0x626d2  1      
  je .L_62fe0                      #  170   0x626d3  6      
  cmpl %r11d, %esi                 #  171   0x626d9  3      
  ja .L_63100                      #  172   0x626dc  6      
  movl %r11d, %r11d                #  173   0x626e2  3      
  cmpl %edx, 0x10(%r15,%r11,1)     #  174   0x626e5  5      
  je .L_63080                      #  175   0x626ea  6      
  nop                              #  176   0x626f0  1      
  movl %r11d, %r11d                #  177   0x626f1  3      
  movl %r9d, 0x14(%r15,%r11,1)     #  178   0x626f4  5      
  nop                              #  179   0x626f9  1      
  nop                              #  180   0x626fa  1      
.L_62780:                          #        0x626fb  0      
  testq %r9, %r9                   #  181   0x626fb  3      
  je .L_62820                      #  182   0x626fe  6      
  nop                              #  183   0x62704  1      
  nop                              #  184   0x62705  1      
.L_627a0:                          #        0x62706  0      
  cmpl %esi, %r9d                  #  185   0x62706  3      
  jb .L_63100                      #  186   0x62709  6      
  movl %edx, %edx                  #  187   0x6270f  2      
  movl 0x10(%r15,%rdx,1), %ecx     #  188   0x62711  5      
  movl %r9d, %r9d                  #  189   0x62716  3      
  movl %r11d, 0x18(%r15,%r9,1)     #  190   0x62719  5      
  testq %rcx, %rcx                 #  191   0x6271e  3      
  nop                              #  192   0x62721  1      
  je .L_627e0                      #  193   0x62722  6      
  cmpl %esi, %ecx                  #  194   0x62728  2      
  jb .L_63100                      #  195   0x6272a  6      
  movl %r9d, %r9d                  #  196   0x62730  3      
  movl %ecx, 0x10(%r15,%r9,1)      #  197   0x62733  5      
  movl %ecx, %ecx                  #  198   0x62738  2      
  movl %r9d, 0x18(%r15,%rcx,1)     #  199   0x6273a  5      
  nop                              #  200   0x6273f  1      
.L_627e0:                          #        0x62740  0      
  movl %edx, %edx                  #  201   0x62740  2      
  movl 0x14(%r15,%rdx,1), %edx     #  202   0x62742  5      
  testq %rdx, %rdx                 #  203   0x62747  3      
  je .L_62820                      #  204   0x6274a  6      
  cmpl %edx, %esi                  #  205   0x62750  2      
  ja .L_63100                      #  206   0x62752  6      
  movl %r9d, %r9d                  #  207   0x62758  3      
  movl %edx, 0x14(%r15,%r9,1)      #  208   0x6275b  5      
  nop                              #  209   0x62760  1      
  movl %edx, %edx                  #  210   0x62761  2      
  movl %r9d, 0x18(%r15,%rdx,1)     #  211   0x62763  5      
  nop                              #  212   0x62768  1      
  nop                              #  213   0x62769  1      
.L_62820:                          #        0x6276a  0      
  addl %r8d, %eax                  #  214   0x6276a  3      
  movl %eax, %edx                  #  215   0x6276d  2      
  orl $0x1, %edx                   #  216   0x6276f  3      
  cmpl %ebx, %edi                  #  217   0x62772  2      
  movl %edi, %edi                  #  218   0x62774  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  219   0x62776  5      
  leal (%rax,%rdi,1), %edx         #  220   0x6277b  3      
  movl %edx, %edx                  #  221   0x6277e  2      
  movl %eax, (%r15,%rdx,1)         #  222   0x62780  4      
  jne .L_629a0                     #  223   0x62784  6      
  movl %eax, 0xffd4138(%rip)       #  224   0x6278a  6      
  jmpq .L_62940                    #  225   0x62790  5      
  nop                              #  226   0x62795  1      
  nop                              #  227   0x62796  1      
.L_62860:                          #        0x62797  0      
  movl %eax, %ecx                  #  228   0x62797  2      
  shrl $0x8, %ecx                  #  229   0x62799  3      
  testl %ecx, %ecx                 #  230   0x6279c  2      
  je .L_62a60                      #  231   0x6279e  6      
  movl $0x10036a6c, %ebx           #  232   0x627a4  5      
  cmpl $0xffff, %ecx               #  233   0x627a9  6      
  movl $0x80000000, %edx           #  234   0x627af  5      
  movl %ebx, %ebx                  #  235   0x627b4  2      
  nop                              #  236   0x627b6  1      
  movl $0x1f, %r8d                 #  237   0x627b7  6      
  ja .L_628c0                      #  238   0x627bd  6      
  bsrl %ecx, %ecx                  #  239   0x627c3  3      
  movl $0x1f, %edx                 #  240   0x627c6  5      
  movl %eax, %r8d                  #  241   0x627cb  3      
  xorl $0x1f, %ecx                 #  242   0x627ce  3      
  subl %ecx, %edx                  #  243   0x627d1  2      
  leal 0x7(%rdx), %ecx             #  244   0x627d3  3      
  shrl %cl, %r8d                   #  245   0x627d6  3      
  xchgw %ax, %ax                   #  246   0x627d9  3      
  andl $0x1, %r8d                  #  247   0x627dc  4      
  leal (%r8,%rdx,2), %r8d          #  248   0x627e0  4      
  movl $0x1, %edx                  #  249   0x627e4  5      
  movl %r8d, %ecx                  #  250   0x627e9  3      
  leal 0x100369f0(,%r8,4), %ebx    #  251   0x627ec  8      
  shll %cl, %edx                   #  252   0x627f4  2      
  nop                              #  253   0x627f6  1      
.L_628c0:                          #        0x627f7  0      
  movl %edi, %edi                  #  254   0x627f7  2      
  movl %r8d, 0x1c(%r15,%rdi,1)     #  255   0x627f9  5      
  movl 0xffd40c0(%rip), %ecx       #  256   0x627fe  6      
  movl %edi, %edi                  #  257   0x62804  2      
  movl $0x0, 0x14(%r15,%rdi,1)     #  258   0x62806  9      
  nop                              #  259   0x6280f  1      
  movl %edi, %edi                  #  260   0x62810  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  261   0x62812  9      
  testl %ecx, %edx                 #  262   0x6281b  2      
  jne .L_62b60                     #  263   0x6281d  6      
  orl %ecx, %edx                   #  264   0x62823  2      
  movl %ebx, %ebx                  #  265   0x62825  2      
  movl %edi, (%r15,%rbx,1)         #  266   0x62827  4      
  nop                              #  267   0x6282b  1      
  movl %edi, %edi                  #  268   0x6282c  2      
  movl %ebx, 0x18(%r15,%rdi,1)     #  269   0x6282e  5      
  movl %edx, 0xffd408b(%rip)       #  270   0x62833  6      
  movl %edi, %edi                  #  271   0x62839  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  272   0x6283b  5      
  movl %edi, %edi                  #  273   0x62840  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  274   0x62842  5      
  nop                              #  275   0x62847  1      
.L_62920:                          #        0x62848  0      
  movl 0xffd4092(%rip), %eax       #  276   0x62848  6      
  subl $0x1, %eax                  #  277   0x6284e  3      
  testl %eax, %eax                 #  278   0x62851  2      
  movl %eax, 0xffd4087(%rip)       #  279   0x62853  6      
  je .L_62c80                      #  280   0x62859  6      
  nop                              #  281   0x6285f  1      
.L_62940:                          #        0x62860  0      
  testb $0x2, 0xffd4215(%rip)      #  282   0x62860  7      
  je .L_62960                      #  283   0x62867  6      
  mfence                           #  284   0x6286d  3      
  movl $0x0, 0xffd4206(%rip)       #  285   0x62870  10     
  nop                              #  286   0x6287a  1      
.L_62960:                          #        0x6287b  0      
  popq %rbx                        #  287   0x6287b  2      
  popq %r11                        #  288   0x6287d  3      
  andl $0xffffffe0, %r11d          #  289   0x62880  7      
  addq %r15, %r11                  #  290   0x62887  3      
  jmpq %r11                        #  291   0x6288a  3      
  nop                              #  292   0x6288d  1      
  nop                              #  293   0x6288e  1      
.L_62980:                          #        0x6288f  0      
  andl $0xfffffffe, %r8d           #  294   0x6288f  7      
  movl %edx, %edx                  #  295   0x62896  2      
  movl %r8d, 0x4(%r15,%rdx,1)      #  296   0x62898  5      
  movl %eax, %edx                  #  297   0x6289d  2      
  orl $0x1, %edx                   #  298   0x6289f  3      
  movl %edi, %edi                  #  299   0x628a2  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  300   0x628a4  5      
  leal (%rax,%rdi,1), %edx         #  301   0x628a9  3      
  movl %edx, %edx                  #  302   0x628ac  2      
  movl %eax, (%r15,%rdx,1)         #  303   0x628ae  4      
.L_629a0:                          #        0x628b2  0      
  movl %eax, %ecx                  #  304   0x628b2  2      
  shrl $0x3, %ecx                  #  305   0x628b4  3      
  cmpl $0x1f, %ecx                 #  306   0x628b7  3      
  ja .L_62860                      #  307   0x628ba  6      
  movl 0xffd3ffa(%rip), %ebx       #  308   0x628c0  6      
  movl $0x1, %eax                  #  309   0x628c6  5      
  leal 0x100368e8(,%rcx,8), %edx   #  310   0x628cb  7      
  shll %cl, %eax                   #  311   0x628d2  2      
  testl %ebx, %eax                 #  312   0x628d4  2      
  je .L_62a80                      #  313   0x628d6  6      
  movl %edx, %edx                  #  314   0x628dc  2      
  movl 0x8(%r15,%rdx,1), %eax      #  315   0x628de  5      
  cmpl %eax, 0xffd3fe7(%rip)       #  316   0x628e3  6      
  ja .L_63100                      #  317   0x628e9  6      
  nop                              #  318   0x628ef  1      
.L_629e0:                          #        0x628f0  0      
  movl %edx, %edx                  #  319   0x628f0  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  320   0x628f2  5      
  movl %eax, %eax                  #  321   0x628f7  2      
  movl %edi, 0xc(%r15,%rax,1)      #  322   0x628f9  5      
  movl %edi, %edi                  #  323   0x628fe  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  324   0x62900  5      
  movl %edi, %edi                  #  325   0x62905  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  326   0x62907  5      
  nop                              #  327   0x6290c  1      
  jmpq .L_62940                    #  328   0x6290d  5      
  nop                              #  329   0x62912  1      
  nop                              #  330   0x62913  1      
.L_62a20:                          #        0x62914  0      
  movl $0x1, %eax                  #  331   0x62914  5      
  xchgl %eax, 0xffd4161(%rip)      #  332   0x62919  6      
  testl %eax, %eax                 #  333   0x6291f  2      
  je .L_62480                      #  334   0x62921  6      
  movl $0x10036a80, %edi           #  335   0x62927  5      
  nop                              #  336   0x6292c  1      
  callq .spin_acquire_lock         #  337   0x6292d  5      
  testl %eax, %eax                 #  338   0x62932  2      
  je .L_62480                      #  339   0x62934  6      
  jmpq .L_62960                    #  340   0x6293a  5      
  nop                              #  341   0x6293f  1      
  nop                              #  342   0x62940  1      
.L_62a60:                          #        0x62941  0      
  movl $0x100369f0, %ebx           #  343   0x62941  5      
  movl $0x1, %edx                  #  344   0x62946  5      
  xorl %r8d, %r8d                  #  345   0x6294b  3      
  movl %ebx, %ebx                  #  346   0x6294e  2      
  jmpq .L_628c0                    #  347   0x62950  5      
  nop                              #  348   0x62955  1      
.L_62a80:                          #        0x62956  0      
  orl %ebx, %eax                   #  349   0x62956  2      
  movl %eax, 0xffd3f62(%rip)       #  350   0x62958  6      
  movq %rdx, %rax                  #  351   0x6295e  3      
  jmpq .L_629e0                    #  352   0x62961  5      
  nop                              #  353   0x62966  1      
  nop                              #  354   0x62967  1      
.L_62aa0:                          #        0x62968  0      
  movl %edx, %edx                  #  355   0x62968  2      
  movl 0x8(%r15,%rdx,1), %r9d      #  356   0x6296a  5      
  leal 0x100368e8(,%rcx,8), %r11d  #  357   0x6296f  8      
  movl %edx, %edx                  #  358   0x62977  2      
  movl 0xc(%r15,%rdx,1), %r10d     #  359   0x62979  5      
  cmpl %r11d, %r9d                 #  360   0x6297e  3      
  jne .L_63140                     #  361   0x62981  6      
  nop                              #  362   0x62987  1      
.L_62ac0:                          #        0x62988  0      
  cmpl %r9d, %r10d                 #  363   0x62988  3      
  je .L_62f80                      #  364   0x6298b  6      
  cmpl %r11d, %r10d                #  365   0x62991  3      
  jne .L_630e0                     #  366   0x62994  6      
  nop                              #  367   0x6299a  1      
.L_62ae0:                          #        0x6299b  0      
  movl %r9d, %r9d                  #  368   0x6299b  3      
  movl %r10d, 0xc(%r15,%r9,1)      #  369   0x6299e  5      
  movl %r10d, %r10d                #  370   0x629a3  3      
  movl %r9d, 0x8(%r15,%r10,1)      #  371   0x629a6  5      
  jmpq .L_62820                    #  372   0x629ab  5      
  nop                              #  373   0x629b0  1      
.L_62b00:                          #        0x629b1  0      
  movl %edi, %edi                  #  374   0x629b1  2      
  movl 0x8(%r15,%rdi,1), %ebx      #  375   0x629b3  5      
  leal 0x100368e8(,%rcx,8), %r10d  #  376   0x629b8  8      
  movl %edi, %edi                  #  377   0x629c0  2      
  movl 0xc(%r15,%rdi,1), %r9d      #  378   0x629c2  5      
  cmpl %r10d, %ebx                 #  379   0x629c7  3      
  jne .L_63120                     #  380   0x629ca  6      
  nop                              #  381   0x629d0  1      
.L_62b20:                          #        0x629d1  0      
  cmpl %ebx, %r9d                  #  382   0x629d1  3      
  je .L_62ec0                      #  383   0x629d4  6      
  cmpl %r10d, %r9d                 #  384   0x629da  3      
  jne .L_63160                     #  385   0x629dd  6      
  nop                              #  386   0x629e3  1      
.L_62b40:                          #        0x629e4  0      
  movl %ebx, %ebx                  #  387   0x629e4  2      
  movl %r9d, 0xc(%r15,%rbx,1)      #  388   0x629e6  5      
  movl %r9d, %r9d                  #  389   0x629eb  3      
  movl %ebx, 0x8(%r15,%r9,1)       #  390   0x629ee  5      
  jmpq .L_62660                    #  391   0x629f3  5      
  nop                              #  392   0x629f8  1      
.L_62b60:                          #        0x629f9  0      
  xorl %ecx, %ecx                  #  393   0x629f9  2      
  cmpl $0x1f, %r8d                 #  394   0x629fb  4      
  movl %ebx, %ebx                  #  395   0x629ff  2      
  movl (%r15,%rbx,1), %edx         #  396   0x62a01  4      
  je .L_62b80                      #  397   0x62a05  6      
  shrl $0x1, %r8d                  #  398   0x62a0b  3      
  movb $0x19, %cl                  #  399   0x62a0e  2      
  subl %r8d, %ecx                  #  400   0x62a10  3      
  nop                              #  401   0x62a13  1      
.L_62b80:                          #        0x62a14  0      
  movl %eax, %ebx                  #  402   0x62a14  2      
  shll %cl, %ebx                   #  403   0x62a16  2      
  movl %ebx, %ecx                  #  404   0x62a18  2      
  jmpq .L_62be0                    #  405   0x62a1a  5      
  nop                              #  406   0x62a1f  1      
  nop                              #  407   0x62a20  1      
.L_62ba0:                          #        0x62a21  0      
  movl %ecx, %ebx                  #  408   0x62a21  2      
  shrl $0x1f, %ebx                 #  409   0x62a23  3      
  addl $0x4, %ebx                  #  410   0x62a26  3      
  shll $0x2, %ebx                  #  411   0x62a29  3      
  leal (%rbx,%rdx,1), %r9d         #  412   0x62a2c  4      
  movslq %ebx, %rbx                #  413   0x62a30  3      
  leaq (%rdx,%rbx,1), %rbx         #  414   0x62a33  4      
  movl %ebx, %ebx                  #  415   0x62a37  2      
  movl (%r15,%rbx,1), %r8d         #  416   0x62a39  4      
  testq %r8, %r8                   #  417   0x62a3d  3      
  nop                              #  418   0x62a40  1      
  je .L_62cc0                      #  419   0x62a41  6      
  addl %ecx, %ecx                  #  420   0x62a47  2      
  movq %r8, %rdx                   #  421   0x62a49  3      
  nop                              #  422   0x62a4c  1      
  nop                              #  423   0x62a4d  1      
.L_62be0:                          #        0x62a4e  0      
  movl %edx, %edx                  #  424   0x62a4e  2      
  movl 0x4(%r15,%rdx,1), %ebx      #  425   0x62a50  5      
  andl $0xfffffff8, %ebx           #  426   0x62a55  6      
  cmpl %eax, %ebx                  #  427   0x62a5b  2      
  jne .L_62ba0                     #  428   0x62a5d  6      
  cmpl %edx, %esi                  #  429   0x62a63  2      
  movl %edx, %edx                  #  430   0x62a65  2      
  movl 0x8(%r15,%rdx,1), %eax      #  431   0x62a67  5      
  ja .L_63100                      #  432   0x62a6c  6      
  cmpl %eax, %esi                  #  433   0x62a72  2      
  nop                              #  434   0x62a74  1      
  ja .L_63100                      #  435   0x62a75  6      
  movl %eax, %eax                  #  436   0x62a7b  2      
  movl %edi, 0xc(%r15,%rax,1)      #  437   0x62a7d  5      
  movl %edx, %edx                  #  438   0x62a82  2      
  movl %edi, 0x8(%r15,%rdx,1)      #  439   0x62a84  5      
  movl %edi, %edi                  #  440   0x62a89  2      
  movl %edx, 0xc(%r15,%rdi,1)      #  441   0x62a8b  5      
  nop                              #  442   0x62a90  1      
  movl %edi, %edi                  #  443   0x62a91  2      
  movl %eax, 0x8(%r15,%rdi,1)      #  444   0x62a93  5      
  movl %edi, %edi                  #  445   0x62a98  2      
  movl $0x0, 0x18(%r15,%rdi,1)     #  446   0x62a9a  9      
  jmpq .L_62920                    #  447   0x62aa3  5      
  nop                              #  448   0x62aa8  1      
.L_62c40:                          #        0x62aa9  0      
  leal 0x10(%rcx,%rax,1), %ebx     #  449   0x62aa9  4      
  subl %ecx, %edi                  #  450   0x62aad  2      
  movl %ebx, %esi                  #  451   0x62aaf  2      
  nop                              #  452   0x62ab1  1      
  nop                              #  453   0x62ab2  1      
  callq .munmap                    #  454   0x62ab3  5      
  testl %eax, %eax                 #  455   0x62ab8  2      
  jne .L_62940                     #  456   0x62aba  6      
  subl %ebx, 0xffd3faa(%rip)       #  457   0x62ac0  6      
  jmpq .L_62940                    #  458   0x62ac6  5      
  nop                              #  459   0x62acb  1      
.L_62c80:                          #        0x62acc  0      
  nop                              #  460   0x62acc  1      
  nop                              #  461   0x62acd  1      
  callq .T_268                     #  462   0x62ace  5      
  jmpq .L_62940                    #  463   0x62ad3  5      
  nop                              #  464   0x62ad8  1      
  nop                              #  465   0x62ad9  1      
.L_62cc0:                          #        0x62ada  0      
  cmpl %r9d, 0xffd3def(%rip)       #  466   0x62ada  7      
  ja .L_63100                      #  467   0x62ae1  6      
  movl %ebx, %ebx                  #  468   0x62ae7  2      
  movl %edi, (%r15,%rbx,1)         #  469   0x62ae9  4      
  movl %edi, %edi                  #  470   0x62aed  2      
  movl %edx, 0x18(%r15,%rdi,1)     #  471   0x62aef  5      
  nop                              #  472   0x62af4  1      
  movl %edi, %edi                  #  473   0x62af5  2      
  movl %edi, 0xc(%r15,%rdi,1)      #  474   0x62af7  5      
  movl %edi, %edi                  #  475   0x62afc  2      
  movl %edi, 0x8(%r15,%rdi,1)      #  476   0x62afe  5      
  jmpq .L_62920                    #  477   0x62b03  5      
  nop                              #  478   0x62b08  1      
.L_62d00:                          #        0x62b09  0      
  addl 0xffd3dbd(%rip), %eax       #  479   0x62b09  6      
  movl %edi, 0xffd3dc3(%rip)       #  480   0x62b0f  6      
  movl %eax, %edx                  #  481   0x62b15  2      
  movl %eax, 0xffd3daf(%rip)       #  482   0x62b17  6      
  orl $0x1, %edx                   #  483   0x62b1d  3      
  cmpl %edi, 0xffd3dae(%rip)       #  484   0x62b20  6      
  nop                              #  485   0x62b26  1      
  movl %edi, %edi                  #  486   0x62b27  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  487   0x62b29  5      
  je .L_62d80                      #  488   0x62b2e  6      
  nop                              #  489   0x62b34  1      
  nop                              #  490   0x62b35  1      
.L_62d40:                          #        0x62b36  0      
  cmpl 0xffd3da0(%rip), %eax       #  491   0x62b36  6      
  jbe .L_62940                     #  492   0x62b3c  6      
  xorl %edi, %edi                  #  493   0x62b42  2      
  nop                              #  494   0x62b44  1      
  callq .T_266                     #  495   0x62b45  5      
  jmpq .L_62940                    #  496   0x62b4a  5      
  nop                              #  497   0x62b4f  1      
  nop                              #  498   0x62b50  1      
.L_62d80:                          #        0x62b51  0      
  movl $0x0, 0xffd3d79(%rip)       #  499   0x62b51  10     
  movl $0x0, 0xffd3d63(%rip)       #  500   0x62b5b  10     
  jmpq .L_62d40                    #  501   0x62b65  5      
  nop                              #  502   0x62b6a  1      
.L_62da0:                          #        0x62b6b  0      
  addl 0xffd3d57(%rip), %eax       #  503   0x62b6b  6      
  movl %edi, 0xffd3d5d(%rip)       #  504   0x62b71  6      
  movl %eax, 0xffd3d4b(%rip)       #  505   0x62b77  6      
  nop                              #  506   0x62b7d  1      
.L_62dc0:                          #        0x62b7e  0      
  movl %eax, %edx                  #  507   0x62b7e  2      
  orl $0x1, %edx                   #  508   0x62b80  3      
  movl %edi, %edi                  #  509   0x62b83  2      
  movl %edx, 0x4(%r15,%rdi,1)      #  510   0x62b85  5      
  leal (%rax,%rdi,1), %edi         #  511   0x62b8a  3      
  movl %edi, %edi                  #  512   0x62b8d  2      
  movl %eax, (%r15,%rdi,1)         #  513   0x62b8f  4      
  jmpq .L_62940                    #  514   0x62b93  5      
  nop                              #  515   0x62b98  1      
.L_62de0:                          #        0x62b99  0      
  movl %edx, %edx                  #  516   0x62b99  2      
  movl 0x4(%r15,%rdx,1), %ecx      #  517   0x62b9b  5      
  movl %ecx, %ebx                  #  518   0x62ba0  2      
  andl $0x3, %ebx                  #  519   0x62ba2  3      
  cmpl $0x3, %ebx                  #  520   0x62ba5  3      
  jne .L_62660                     #  521   0x62ba8  6      
  andl $0xfffffffe, %ecx           #  522   0x62bae  6      
  movl %eax, 0xffd3d0e(%rip)       #  523   0x62bb4  6      
  xchgw %ax, %ax                   #  524   0x62bba  3      
  movl %edx, %edx                  #  525   0x62bbd  2      
  movl %ecx, 0x4(%r15,%rdx,1)      #  526   0x62bbf  5      
  jmpq .L_62dc0                    #  527   0x62bc4  5      
  nop                              #  528   0x62bc9  1      
  nop                              #  529   0x62bca  1      
.L_62e20:                          #        0x62bcb  0      
  movl %r10d, %r10d                #  530   0x62bcb  3      
  movl 0x14(%r15,%r10,1), %r9d     #  531   0x62bce  5      
  testq %r9, %r9                   #  532   0x62bd3  3      
  je .L_630a0                      #  533   0x62bd6  6      
  addl $0x14, %r10d                #  534   0x62bdc  4      
  jmpq .L_62e80                    #  535   0x62be0  5      
  nop                              #  536   0x62be5  1      
.L_62e40:                          #        0x62be6  0      
  leal 0x14(%r9), %r10d            #  537   0x62be6  4      
  nop                              #  538   0x62bea  1      
  nop                              #  539   0x62beb  1      
.L_62e60:                          #        0x62bec  0      
  movq %rcx, %r9                   #  540   0x62bec  3      
  nop                              #  541   0x62bef  1      
  nop                              #  542   0x62bf0  1      
.L_62e80:                          #        0x62bf1  0      
  movl %r9d, %r9d                  #  543   0x62bf1  3      
  movl 0x14(%r15,%r9,1), %ecx      #  544   0x62bf4  5      
  testq %rcx, %rcx                 #  545   0x62bf9  3      
  jne .L_62e40                     #  546   0x62bfc  6      
  movl %r9d, %r9d                  #  547   0x62c02  3      
  movl 0x10(%r15,%r9,1), %ecx      #  548   0x62c05  5      
  testq %rcx, %rcx                 #  549   0x62c0a  3      
  je .L_62fa0                      #  550   0x62c0d  6      
  xchgw %ax, %ax                   #  551   0x62c13  3      
  leal 0x10(%r9), %r10d            #  552   0x62c16  4      
  jmpq .L_62e60                    #  553   0x62c1a  5      
  nop                              #  554   0x62c1f  1      
  nop                              #  555   0x62c20  1      
.L_62ec0:                          #        0x62c21  0      
  movl $0xfffffffe, %r9d           #  556   0x62c21  6      
  roll %cl, %r9d                   #  557   0x62c27  3      
  andl %r9d, 0xffd3c8f(%rip)       #  558   0x62c2a  7      
  jmpq .L_62660                    #  559   0x62c31  5      
  nop                              #  560   0x62c36  1      
.L_62ee0:                          #        0x62c37  0      
  movl %r9d, %r9d                  #  561   0x62c37  3      
  movl 0x14(%r15,%r9,1), %ebx      #  562   0x62c3a  5      
  testq %rbx, %rbx                 #  563   0x62c3f  3      
  je .L_630c0                      #  564   0x62c42  6      
  addl $0x14, %r9d                 #  565   0x62c48  4      
  jmpq .L_62f40                    #  566   0x62c4c  5      
  nop                              #  567   0x62c51  1      
.L_62f00:                          #        0x62c52  0      
  leal 0x14(%rbx), %r9d            #  568   0x62c52  4      
  nop                              #  569   0x62c56  1      
  nop                              #  570   0x62c57  1      
.L_62f20:                          #        0x62c58  0      
  movq %rcx, %rbx                  #  571   0x62c58  3      
  nop                              #  572   0x62c5b  1      
  nop                              #  573   0x62c5c  1      
.L_62f40:                          #        0x62c5d  0      
  movl %ebx, %ebx                  #  574   0x62c5d  2      
  movl 0x14(%r15,%rbx,1), %ecx     #  575   0x62c5f  5      
  testq %rcx, %rcx                 #  576   0x62c64  3      
  jne .L_62f00                     #  577   0x62c67  6      
  movl %ebx, %ebx                  #  578   0x62c6d  2      
  movl 0x10(%r15,%rbx,1), %ecx     #  579   0x62c6f  5      
  testq %rcx, %rcx                 #  580   0x62c74  3      
  je .L_62fc0                      #  581   0x62c77  6      
  leal 0x10(%rbx), %r9d            #  582   0x62c7d  4      
  nop                              #  583   0x62c81  1      
  jmpq .L_62f20                    #  584   0x62c82  5      
  nop                              #  585   0x62c87  1      
  nop                              #  586   0x62c88  1      
.L_62f80:                          #        0x62c89  0      
  movl $0xfffffffe, %edx           #  587   0x62c89  5      
  roll %cl, %edx                   #  588   0x62c8e  2      
  andl %edx, 0xffd3c2a(%rip)       #  589   0x62c90  6      
  jmpq .L_62820                    #  590   0x62c96  5      
  nop                              #  591   0x62c9b  1      
.L_62fa0:                          #        0x62c9c  0      
  cmpl %r10d, 0xffd3c2d(%rip)      #  592   0x62c9c  7      
  ja .L_63100                      #  593   0x62ca3  6      
  movl %r10d, %r10d                #  594   0x62ca9  3      
  movl $0x0, (%r15,%r10,1)         #  595   0x62cac  8      
  jmpq .L_62720                    #  596   0x62cb4  5      
  nop                              #  597   0x62cb9  1      
.L_62fc0:                          #        0x62cba  0      
  cmpl %r9d, %esi                  #  598   0x62cba  3      
  ja .L_63100                      #  599   0x62cbd  6      
  movl %r9d, %r9d                  #  600   0x62cc3  3      
  movl $0x0, (%r15,%r9,1)          #  601   0x62cc6  8      
  jmpq .L_62560                    #  602   0x62cce  5      
  nop                              #  603   0x62cd3  1      
.L_62fe0:                          #        0x62cd4  0      
  testq %r9, %r9                   #  604   0x62cd4  3      
  movl %r10d, %r10d                #  605   0x62cd7  3      
  movl %r9d, (%r15,%r10,1)         #  606   0x62cda  4      
  jne .L_627a0                     #  607   0x62cde  6      
  movl $0xfffffffe, %edx           #  608   0x62ce4  5      
  roll %cl, %edx                   #  609   0x62ce9  2      
  andl %edx, 0xffd3bd3(%rip)       #  610   0x62ceb  6      
  nop                              #  611   0x62cf1  1      
  jmpq .L_62820                    #  612   0x62cf2  5      
  nop                              #  613   0x62cf7  1      
  nop                              #  614   0x62cf8  1      
.L_63020:                          #        0x62cf9  0      
  testq %rbx, %rbx                 #  615   0x62cf9  3      
  movl %r9d, %r9d                  #  616   0x62cfc  3      
  movl %ebx, (%r15,%r9,1)          #  617   0x62cff  4      
  jne .L_625e0                     #  618   0x62d03  6      
  movl $0xfffffffe, %ebx           #  619   0x62d09  5      
  roll %cl, %ebx                   #  620   0x62d0e  2      
  andl %ebx, 0xffd3bae(%rip)       #  621   0x62d10  6      
  nop                              #  622   0x62d16  1      
  jmpq .L_62660                    #  623   0x62d17  5      
  nop                              #  624   0x62d1c  1      
  nop                              #  625   0x62d1d  1      
.L_63060:                          #        0x62d1e  0      
  movl %r10d, %r10d                #  626   0x62d1e  3      
  movl %ebx, 0x10(%r15,%r10,1)     #  627   0x62d21  5      
  jmpq .L_625c0                    #  628   0x62d26  5      
  nop                              #  629   0x62d2b  1      
  nop                              #  630   0x62d2c  1      
.L_63080:                          #        0x62d2d  0      
  movl %r11d, %r11d                #  631   0x62d2d  3      
  movl %r9d, 0x10(%r15,%r11,1)     #  632   0x62d30  5      
  jmpq .L_62780                    #  633   0x62d35  5      
  nop                              #  634   0x62d3a  1      
  nop                              #  635   0x62d3b  1      
.L_630a0:                          #        0x62d3c  0      
  movl %r10d, %r10d                #  636   0x62d3c  3      
  movl 0x10(%r15,%r10,1), %r9d     #  637   0x62d3f  5      
  testq %r9, %r9                   #  638   0x62d44  3      
  je .L_62720                      #  639   0x62d47  6      
  addl $0x10, %r10d                #  640   0x62d4d  4      
  jmpq .L_62e80                    #  641   0x62d51  5      
  nop                              #  642   0x62d56  1      
.L_630c0:                          #        0x62d57  0      
  movl %r9d, %r9d                  #  643   0x62d57  3      
  movl 0x10(%r15,%r9,1), %ebx      #  644   0x62d5a  5      
  testq %rbx, %rbx                 #  645   0x62d5f  3      
  je .L_62560                      #  646   0x62d62  6      
  addl $0x10, %r9d                 #  647   0x62d68  4      
  jmpq .L_62f40                    #  648   0x62d6c  5      
  nop                              #  649   0x62d71  1      
.L_630e0:                          #        0x62d72  0      
  cmpl %r10d, 0xffd3b57(%rip)      #  650   0x62d72  7      
  ja .L_63100                      #  651   0x62d79  6      
  movl %r10d, %r10d                #  652   0x62d7f  3      
  cmpl %edx, 0x8(%r15,%r10,1)      #  653   0x62d82  5      
  je .L_62ae0                      #  654   0x62d87  6      
  nop                              #  655   0x62d8d  1      
.L_63100:                          #        0x62d8e  0      
  nop                              #  656   0x62d8e  1      
  nop                              #  657   0x62d8f  1      
  callq .abort                     #  658   0x62d90  5      
.L_63120:                          #        0x62d95  0      
  cmpl %ebx, %esi                  #  659   0x62d95  2      
  ja .L_63100                      #  660   0x62d97  6      
  movl %ebx, %ebx                  #  661   0x62d9d  2      
  cmpl %edi, 0xc(%r15,%rbx,1)      #  662   0x62d9f  5      
  je .L_62b20                      #  663   0x62da4  6      
  jmpq .L_63100                    #  664   0x62daa  5      
  nop                              #  665   0x62daf  1      
.L_63140:                          #        0x62db0  0      
  cmpl %r9d, 0xffd3b19(%rip)       #  666   0x62db0  7      
  ja .L_63100                      #  667   0x62db7  6      
  movl %r9d, %r9d                  #  668   0x62dbd  3      
  cmpl %edx, 0xc(%r15,%r9,1)       #  669   0x62dc0  5      
  je .L_62ac0                      #  670   0x62dc5  6      
  jmpq .L_63100                    #  671   0x62dcb  5      
  nop                              #  672   0x62dd0  1      
.L_63160:                          #        0x62dd1  0      
  cmpl %r9d, %esi                  #  673   0x62dd1  3      
  ja .L_63100                      #  674   0x62dd4  6      
  movl %r9d, %r9d                  #  675   0x62dda  3      
  cmpl %edi, 0x8(%r15,%r9,1)       #  676   0x62ddd  5      
  je .L_62b40                      #  677   0x62de2  6      
  jmpq .L_63100                    #  678   0x62de8  5      
  nop                              #  679   0x62ded  1      
                                                            
.size free, .-free

