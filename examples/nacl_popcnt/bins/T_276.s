  .text
  .globl T_276
  .type T_276, @function

#! file-offset 0x65f20
#! rip-offset  0x65f20
#! capacity    1696 bytes

# Text                                #  Line  RIP      Bytes  
.T_276:                               #        0x65f20  0      
  pushq %rbx                          #  1     0x65f20  2      
  movl %edi, %eax                     #  2     0x65f22  2      
  subl $0x10, %esp                    #  3     0x65f24  3      
  addq %r15, %rsp                     #  4     0x65f27  3      
  movl 0xffd099f(%rip), %r10d         #  5     0x65f2a  7      
  movl %eax, %eax                     #  6     0x65f31  2      
  movl 0x4(%r15,%rax,1), %edx         #  7     0x65f33  5      
  cmpl %eax, %r10d                    #  8     0x65f38  3      
  ja .L_66540                         #  9     0x65f3b  6      
  movl %edx, %edi                     #  10    0x65f41  2      
  movl %edx, %ecx                     #  11    0x65f43  2      
  andl $0xfffffff8, %edi              #  12    0x65f45  6      
  andl $0x3, %ecx                     #  13    0x65f4b  3      
  leal (%rdi,%rax,1), %r8d            #  14    0x65f4e  4      
  cmpl %r8d, %eax                     #  15    0x65f52  3      
  setb %r9b                           #  16    0x65f55  4      
  xorl %r11d, %r11d                   #  17    0x65f59  3      
  cmpl $0x1, %ecx                     #  18    0x65f5c  3      
  setne %r11b                         #  19    0x65f5f  4      
  nop                                 #  20    0x65f63  1      
  testl %r9d, %r11d                   #  21    0x65f64  3      
  je .L_66540                         #  22    0x65f67  6      
  movl %r8d, %r8d                     #  23    0x65f6d  3      
  movl 0x4(%r15,%r8,1), %r9d          #  24    0x65f70  5      
  testb $0x1, %r9b                    #  25    0x65f75  4      
  je .L_66540                         #  26    0x65f79  6      
  testl %ecx, %ecx                    #  27    0x65f7f  2      
  nop                                 #  28    0x65f81  1      
  jne .L_65fe0                        #  29    0x65f82  6      
  movl %esi, %edx                     #  30    0x65f88  2      
  shrl $0x3, %edx                     #  31    0x65f8a  3      
  cmpl $0x1f, %edx                    #  32    0x65f8d  3      
  jbe .L_660a0                        #  33    0x65f90  6      
  leal 0x4(%rsi), %edx                #  34    0x65f96  3      
  cmpl %edx, %edi                     #  35    0x65f99  2      
  jb .L_660a0                         #  36    0x65f9b  6      
  nop                                 #  37    0x65fa1  1      
  movl 0xffd08f0(%rip), %edx          #  38    0x65fa2  6      
  subl %esi, %edi                     #  39    0x65fa8  2      
  addl %edx, %edx                     #  40    0x65faa  2      
  cmpl %edx, %edi                     #  41    0x65fac  2      
  ja .L_660a0                         #  42    0x65fae  6      
  nop                                 #  43    0x65fb4  1      
.L_65fc0:                             #        0x65fb5  0      
  addl $0x10, %esp                    #  44    0x65fb5  3      
  addq %r15, %rsp                     #  45    0x65fb8  3      
  popq %rbx                           #  46    0x65fbb  2      
  popq %r11                           #  47    0x65fbd  3      
  andl $0xffffffe0, %r11d             #  48    0x65fc0  7      
  addq %r15, %r11                     #  49    0x65fc7  3      
  jmpq %r11                           #  50    0x65fca  3      
  nop                                 #  51    0x65fcd  1      
.L_65fe0:                             #        0x65fce  0      
  cmpl %esi, %edi                     #  52    0x65fce  2      
  jb .L_66060                         #  53    0x65fd0  6      
  movl %edi, %ecx                     #  54    0x65fd6  2      
  subl %esi, %ecx                     #  55    0x65fd8  2      
  cmpl $0xf, %ecx                     #  56    0x65fda  3      
  jbe .L_65fc0                        #  57    0x65fdd  6      
  andl $0x1, %edx                     #  58    0x65fe3  3      
  leal (%rsi,%rax,1), %edi            #  59    0x65fe6  3      
  orl $0x2, %edx                      #  60    0x65fe9  3      
  orl %esi, %edx                      #  61    0x65fec  2      
  movl %eax, %eax                     #  62    0x65fee  2      
  movl %edx, 0x4(%r15,%rax,1)         #  63    0x65ff0  5      
  nop                                 #  64    0x65ff5  1      
.L_66000:                             #        0x65ff6  0      
  movl %ecx, %edx                     #  65    0x65ff6  2      
  movl %ecx, %esi                     #  66    0x65ff8  2      
  movq %rax, 0x8(%rsp)                #  67    0x65ffa  5      
  orl $0x3, %edx                      #  68    0x65fff  3      
  movl %edi, %edi                     #  69    0x66002  2      
  movl %edx, 0x4(%r15,%rdi,1)         #  70    0x66004  5      
  leal (%rcx,%rdi,1), %edx            #  71    0x66009  3      
  movl %edx, %edx                     #  72    0x6600c  2      
  orl $0x1, 0x4(%r15,%rdx,1)          #  73    0x6600e  6      
  xchgw %ax, %ax                      #  74    0x66014  3      
  nop                                 #  75    0x66017  1      
  nop                                 #  76    0x66018  1      
  callq .T_267                        #  77    0x66019  5      
  movq 0x8(%rsp), %rax                #  78    0x6601e  5      
  jmpq .L_65fc0                       #  79    0x66023  5      
  nop                                 #  80    0x66028  1      
  nop                                 #  81    0x66029  1      
.L_66060:                             #        0x6602a  0      
  cmpl %r8d, 0xffd08a7(%rip)          #  82    0x6602a  7      
  je .L_66380                         #  83    0x66031  6      
  cmpl %r8d, 0xffd0896(%rip)          #  84    0x66037  7      
  je .L_66180                         #  85    0x6603e  6      
  testb $0x2, %r9b                    #  86    0x66044  4      
  xchgw %ax, %ax                      #  87    0x66048  3      
  je .L_660c0                         #  88    0x6604b  6      
  nop                                 #  89    0x66051  1      
  nop                                 #  90    0x66052  1      
.L_660a0:                             #        0x66053  0      
  addl $0x10, %esp                    #  91    0x66053  3      
  addq %r15, %rsp                     #  92    0x66056  3      
  xorl %eax, %eax                     #  93    0x66059  2      
  popq %rbx                           #  94    0x6605b  2      
  popq %r11                           #  95    0x6605d  3      
  andl $0xffffffe0, %r11d             #  96    0x66060  7      
  addq %r15, %r11                     #  97    0x66067  3      
  jmpq %r11                           #  98    0x6606a  3      
  nop                                 #  99    0x6606d  1      
.L_660c0:                             #        0x6606e  0      
  andl $0xfffffff8, %r9d              #  100   0x6606e  7      
  leal (%r9,%rdi,1), %edi             #  101   0x66075  4      
  cmpl %edi, %esi                     #  102   0x66079  2      
  ja .L_660a0                         #  103   0x6607b  6      
  shrl $0x3, %r9d                     #  104   0x66081  4      
  cmpl $0x1f, %r9d                    #  105   0x66085  4      
  ja .L_66220                         #  106   0x66089  6      
  nop                                 #  107   0x6608f  1      
  movl %r8d, %r8d                     #  108   0x66090  3      
  movl 0x8(%r15,%r8,1), %ecx          #  109   0x66093  5      
  leal 0x100368e8(,%r9,8), %ebx       #  110   0x66098  8      
  movl %r8d, %r8d                     #  111   0x660a0  3      
  movl 0xc(%r15,%r8,1), %r11d         #  112   0x660a3  5      
  cmpl %ebx, %ecx                     #  113   0x660a8  2      
  jne .L_665a0                        #  114   0x660aa  6      
.L_66100:                             #        0x660b0  0      
  cmpl %r11d, %ecx                    #  115   0x660b0  3      
  je .L_664a0                         #  116   0x660b3  6      
  cmpl %ebx, %r11d                    #  117   0x660b9  3      
  jne .L_66520                        #  118   0x660bc  6      
  nop                                 #  119   0x660c2  1      
.L_66120:                             #        0x660c3  0      
  movl %ecx, %ecx                     #  120   0x660c3  2      
  movl %r11d, 0xc(%r15,%rcx,1)        #  121   0x660c5  5      
  movl %r11d, %r11d                   #  122   0x660ca  3      
  movl %ecx, 0x8(%r15,%r11,1)         #  123   0x660cd  5      
  xchgw %ax, %ax                      #  124   0x660d2  3      
  nop                                 #  125   0x660d5  1      
.L_66140:                             #        0x660d6  0      
  movl %edi, %ecx                     #  126   0x660d6  2      
  subl %esi, %ecx                     #  127   0x660d8  2      
  cmpl $0xf, %ecx                     #  128   0x660da  3      
  ja .L_663e0                         #  129   0x660dd  6      
  movl %edi, %ecx                     #  130   0x660e3  2      
  andl $0x1, %edx                     #  131   0x660e5  3      
  addl %eax, %edi                     #  132   0x660e8  2      
  orl $0x2, %ecx                      #  133   0x660ea  3      
  orl %edx, %ecx                      #  134   0x660ed  2      
  movl %eax, %eax                     #  135   0x660ef  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  136   0x660f1  5      
  movl %edi, %edi                     #  137   0x660f6  2      
  orl $0x1, 0x4(%r15,%rdi,1)          #  138   0x660f8  6      
  jmpq .L_65fc0                       #  139   0x660fe  5      
  nop                                 #  140   0x66103  1      
  nop                                 #  141   0x66104  1      
.L_66180:                             #        0x66105  0      
  addl 0xffd07bd(%rip), %edi          #  142   0x66105  6      
  cmpl %edi, %esi                     #  143   0x6610b  2      
  ja .L_660a0                         #  144   0x6610d  6      
  movl %edi, %ecx                     #  145   0x66113  2      
  subl %esi, %ecx                     #  146   0x66115  2      
  cmpl $0xf, %ecx                     #  147   0x66117  3      
  jbe .L_661e0                        #  148   0x6611a  6      
  andl $0x1, %edx                     #  149   0x66120  3      
  leal (%rsi,%rax,1), %edi            #  150   0x66123  3      
  orl $0x2, %edx                      #  151   0x66126  3      
  orl %esi, %edx                      #  152   0x66129  2      
  leal (%rcx,%rdi,1), %r8d            #  153   0x6612b  4      
  movl %edi, 0xffd079f(%rip)          #  154   0x6612f  6      
  movl %eax, %eax                     #  155   0x66135  2      
  movl %edx, 0x4(%r15,%rax,1)         #  156   0x66137  5      
  movl %ecx, %edx                     #  157   0x6613c  2      
  orl $0x1, %edx                      #  158   0x6613e  3      
  movl %r8d, %r8d                     #  159   0x66141  3      
  movl %ecx, (%r15,%r8,1)             #  160   0x66144  4      
  nop                                 #  161   0x66148  1      
  movl %edi, %edi                     #  162   0x66149  2      
  movl %edx, 0x4(%r15,%rdi,1)         #  163   0x6614b  5      
  movl %r8d, %r8d                     #  164   0x66150  3      
  andl $0xfffffffe, 0x4(%r15,%r8,1)   #  165   0x66153  9      
  movl %ecx, 0xffd0766(%rip)          #  166   0x6615c  6      
  jmpq .L_65fc0                       #  167   0x66162  5      
  nop                                 #  168   0x66167  1      
.L_661e0:                             #        0x66168  0      
  andl $0x1, %edx                     #  169   0x66168  3      
  movl $0x0, 0xffd075f(%rip)          #  170   0x6616b  10     
  orl $0x2, %edx                      #  171   0x66175  3      
  orl %edi, %edx                      #  172   0x66178  2      
  addl %eax, %edi                     #  173   0x6617a  2      
  movl %eax, %eax                     #  174   0x6617c  2      
  movl %edx, 0x4(%r15,%rax,1)         #  175   0x6617e  5      
  nop                                 #  176   0x66183  1      
  movl %edi, %edi                     #  177   0x66184  2      
  orl $0x1, 0x4(%r15,%rdi,1)          #  178   0x66186  6      
  movl $0x0, 0xffd0732(%rip)          #  179   0x6618c  10     
  jmpq .L_65fc0                       #  180   0x66196  5      
  nop                                 #  181   0x6619b  1      
.L_66220:                             #        0x6619c  0      
  movl %r8d, %r8d                     #  182   0x6619c  3      
  movl 0xc(%r15,%r8,1), %r9d          #  183   0x6619f  5      
  movl %r8d, %r8d                     #  184   0x661a4  3      
  movl 0x18(%r15,%r8,1), %ebx         #  185   0x661a7  5      
  cmpl %r9d, %r8d                     #  186   0x661ac  3      
  je .L_66400                         #  187   0x661af  6      
  nop                                 #  188   0x661b5  1      
  movl %r8d, %r8d                     #  189   0x661b6  3      
  movl 0x8(%r15,%r8,1), %ecx          #  190   0x661b9  5      
  cmpl %ecx, %r10d                    #  191   0x661be  3      
  ja .L_66540                         #  192   0x661c1  6      
  movl %ecx, %ecx                     #  193   0x661c7  2      
  cmpl %r8d, 0xc(%r15,%rcx,1)         #  194   0x661c9  5      
  jne .L_66540                        #  195   0x661ce  6      
  xchgw %ax, %ax                      #  196   0x661d4  3      
  movl %r9d, %r9d                     #  197   0x661d7  3      
  cmpl %r8d, 0x8(%r15,%r9,1)          #  198   0x661da  5      
  jne .L_66540                        #  199   0x661df  6      
  movl %ecx, %ecx                     #  200   0x661e5  2      
  movl %r9d, 0xc(%r15,%rcx,1)         #  201   0x661e7  5      
  movl %r9d, %r9d                     #  202   0x661ec  3      
  movl %ecx, 0x8(%r15,%r9,1)          #  203   0x661ef  5      
  nop                                 #  204   0x661f4  1      
.L_66280:                             #        0x661f5  0      
  testq %rbx, %rbx                    #  205   0x661f5  3      
  je .L_66140                         #  206   0x661f8  6      
  movl %r8d, %r8d                     #  207   0x661fe  3      
  movl 0x1c(%r15,%r8,1), %ecx         #  208   0x66201  5      
  leal 0x130(,%rcx,4), %r11d          #  209   0x66206  8      
  movslq %r11d, %r11                  #  210   0x6620e  3      
  nop                                 #  211   0x66211  1      
  movl %r11d, %r11d                   #  212   0x66212  3      
  cmpl %r8d, 0x100368c0(%r15,%r11,1)  #  213   0x66215  8      
  je .L_664e0                         #  214   0x6621d  6      
  cmpl %ebx, %r10d                    #  215   0x66223  3      
  ja .L_66540                         #  216   0x66226  6      
  nop                                 #  217   0x6622c  1      
  movl %ebx, %ebx                     #  218   0x6622d  2      
  cmpl %r8d, 0x10(%r15,%rbx,1)        #  219   0x6622f  5      
  je .L_66560                         #  220   0x66234  6      
  movl %ebx, %ebx                     #  221   0x6623a  2      
  movl %r9d, 0x14(%r15,%rbx,1)        #  222   0x6623c  5      
  nop                                 #  223   0x66241  1      
.L_662e0:                             #        0x66242  0      
  testq %r9, %r9                      #  224   0x66242  3      
  je .L_66140                         #  225   0x66245  6      
  nop                                 #  226   0x6624b  1      
  nop                                 #  227   0x6624c  1      
.L_66300:                             #        0x6624d  0      
  cmpl %r9d, %r10d                    #  228   0x6624d  3      
  ja .L_66540                         #  229   0x66250  6      
  movl %r8d, %r8d                     #  230   0x66256  3      
  movl 0x10(%r15,%r8,1), %ecx         #  231   0x66259  5      
  movl %r9d, %r9d                     #  232   0x6625e  3      
  movl %ebx, 0x18(%r15,%r9,1)         #  233   0x66261  5      
  testq %rcx, %rcx                    #  234   0x66266  3      
  nop                                 #  235   0x66269  1      
  je .L_66340                         #  236   0x6626a  6      
  cmpl %ecx, %r10d                    #  237   0x66270  3      
  ja .L_66540                         #  238   0x66273  6      
  movl %r9d, %r9d                     #  239   0x66279  3      
  movl %ecx, 0x10(%r15,%r9,1)         #  240   0x6627c  5      
  movl %ecx, %ecx                     #  241   0x66281  2      
  movl %r9d, 0x18(%r15,%rcx,1)        #  242   0x66283  5      
  nop                                 #  243   0x66288  1      
.L_66340:                             #        0x66289  0      
  movl %r8d, %r8d                     #  244   0x66289  3      
  movl 0x14(%r15,%r8,1), %ecx         #  245   0x6628c  5      
  testq %rcx, %rcx                    #  246   0x66291  3      
  je .L_66140                         #  247   0x66294  6      
  cmpl %ecx, %r10d                    #  248   0x6629a  3      
  ja .L_66540                         #  249   0x6629d  6      
  nop                                 #  250   0x662a3  1      
  movl %r9d, %r9d                     #  251   0x662a4  3      
  movl %ecx, 0x14(%r15,%r9,1)         #  252   0x662a7  5      
  movl %ecx, %ecx                     #  253   0x662ac  2      
  movl %r9d, 0x18(%r15,%rcx,1)        #  254   0x662ae  5      
  jmpq .L_66140                       #  255   0x662b3  5      
  nop                                 #  256   0x662b8  1      
.L_66380:                             #        0x662b9  0      
  addl 0xffd060d(%rip), %edi          #  257   0x662b9  6      
  cmpl %edi, %esi                     #  258   0x662bf  2      
  jae .L_660a0                        #  259   0x662c1  6      
  andl $0x1, %edx                     #  260   0x662c7  3      
  subl %esi, %edi                     #  261   0x662ca  2      
  leal (%rsi,%rax,1), %ecx            #  262   0x662cc  3      
  orl $0x2, %edx                      #  263   0x662cf  3      
  orl %esi, %edx                      #  264   0x662d2  2      
  nop                                 #  265   0x662d4  1      
  movl %ecx, 0xffd05fd(%rip)          #  266   0x662d5  6      
  movl %eax, %eax                     #  267   0x662db  2      
  movl %edx, 0x4(%r15,%rax,1)         #  268   0x662dd  5      
  movl %edi, %edx                     #  269   0x662e2  2      
  orl $0x1, %edx                      #  270   0x662e4  3      
  movl %ecx, %ecx                     #  271   0x662e7  2      
  movl %edx, 0x4(%r15,%rcx,1)         #  272   0x662e9  5      
  movl %edi, 0xffd05d8(%rip)          #  273   0x662ee  6      
  nop                                 #  274   0x662f4  1      
  jmpq .L_65fc0                       #  275   0x662f5  5      
  nop                                 #  276   0x662fa  1      
  nop                                 #  277   0x662fb  1      
.L_663e0:                             #        0x662fc  0      
  leal (%rsi,%rax,1), %edi            #  278   0x662fc  3      
  andl $0x1, %edx                     #  279   0x662ff  3      
  orl $0x2, %esi                      #  280   0x66302  3      
  orl %edx, %esi                      #  281   0x66305  2      
  movl %eax, %eax                     #  282   0x66307  2      
  movl %esi, 0x4(%r15,%rax,1)         #  283   0x66309  5      
  jmpq .L_66000                       #  284   0x6630e  5      
  nop                                 #  285   0x66313  1      
.L_66400:                             #        0x66314  0      
  movl %r8d, %r8d                     #  286   0x66314  3      
  movl 0x14(%r15,%r8,1), %r9d         #  287   0x66317  5      
  leal 0x14(%r8), %r11d               #  288   0x6631c  4      
  testq %r9, %r9                      #  289   0x66320  3      
  jne .L_66460                        #  290   0x66323  6      
  jmpq .L_66580                       #  291   0x66329  5      
  nop                                 #  292   0x6632e  1      
.L_66420:                             #        0x6632f  0      
  leal 0x14(%r9), %r11d               #  293   0x6632f  4      
  nop                                 #  294   0x66333  1      
  nop                                 #  295   0x66334  1      
.L_66440:                             #        0x66335  0      
  movq %rcx, %r9                      #  296   0x66335  3      
  nop                                 #  297   0x66338  1      
  nop                                 #  298   0x66339  1      
.L_66460:                             #        0x6633a  0      
  movl %r9d, %r9d                     #  299   0x6633a  3      
  movl 0x14(%r15,%r9,1), %ecx         #  300   0x6633d  5      
  testq %rcx, %rcx                    #  301   0x66342  3      
  jne .L_66420                        #  302   0x66345  6      
  movl %r9d, %r9d                     #  303   0x6634b  3      
  movl 0x10(%r15,%r9,1), %ecx         #  304   0x6634e  5      
  testq %rcx, %rcx                    #  305   0x66353  3      
  je .L_664c0                         #  306   0x66356  6      
  leal 0x10(%r9), %r11d               #  307   0x6635c  4      
  xchgw %ax, %ax                      #  308   0x66360  3      
  jmpq .L_66440                       #  309   0x66363  5      
  nop                                 #  310   0x66368  1      
  nop                                 #  311   0x66369  1      
.L_664a0:                             #        0x6636a  0      
  movl $0xfffffffe, %r8d              #  312   0x6636a  6      
  movl %r9d, %ecx                     #  313   0x66370  3      
  roll %cl, %r8d                      #  314   0x66373  3      
  andl %r8d, 0xffd0543(%rip)          #  315   0x66376  7      
  jmpq .L_66140                       #  316   0x6637d  5      
  nop                                 #  317   0x66382  1      
.L_664c0:                             #        0x66383  0      
  cmpl %r11d, %r10d                   #  318   0x66383  3      
  ja .L_66540                         #  319   0x66386  6      
  movl %r11d, %r11d                   #  320   0x6638c  3      
  movl $0x0, (%r15,%r11,1)            #  321   0x6638f  8      
  jmpq .L_66280                       #  322   0x66397  5      
  nop                                 #  323   0x6639c  1      
.L_664e0:                             #        0x6639d  0      
  testq %r9, %r9                      #  324   0x6639d  3      
  movl %r11d, %r11d                   #  325   0x663a0  3      
  movl %r9d, 0x100368c0(%r15,%r11,1)  #  326   0x663a3  8      
  jne .L_66300                        #  327   0x663ab  6      
  movl $0xfffffffe, %r8d              #  328   0x663b1  6      
  roll %cl, %r8d                      #  329   0x663b7  3      
  nop                                 #  330   0x663ba  1      
  andl %r8d, 0xffd0502(%rip)          #  331   0x663bb  7      
  jmpq .L_66140                       #  332   0x663c2  5      
  nop                                 #  333   0x663c7  1      
  nop                                 #  334   0x663c8  1      
.L_66520:                             #        0x663c9  0      
  cmpl %r11d, %r10d                   #  335   0x663c9  3      
  ja .L_66540                         #  336   0x663cc  6      
  movl %r11d, %r11d                   #  337   0x663d2  3      
  cmpl %r8d, 0x8(%r15,%r11,1)         #  338   0x663d5  5      
  je .L_66120                         #  339   0x663da  6      
  nop                                 #  340   0x663e0  1      
.L_66540:                             #        0x663e1  0      
  nop                                 #  341   0x663e1  1      
  nop                                 #  342   0x663e2  1      
  callq .abort                        #  343   0x663e3  5      
.L_66560:                             #        0x663e8  0      
  movl %ebx, %ebx                     #  344   0x663e8  2      
  movl %r9d, 0x10(%r15,%rbx,1)        #  345   0x663ea  5      
  jmpq .L_662e0                       #  346   0x663ef  5      
  nop                                 #  347   0x663f4  1      
  nop                                 #  348   0x663f5  1      
.L_66580:                             #        0x663f6  0      
  movl %r8d, %r8d                     #  349   0x663f6  3      
  movl 0x10(%r15,%r8,1), %r9d         #  350   0x663f9  5      
  leal 0x10(%r8), %r11d               #  351   0x663fe  4      
  testq %r9, %r9                      #  352   0x66402  3      
  jne .L_66460                        #  353   0x66405  6      
  jmpq .L_66280                       #  354   0x6640b  5      
  nop                                 #  355   0x66410  1      
.L_665a0:                             #        0x66411  0      
  cmpl %ecx, %r10d                    #  356   0x66411  3      
  ja .L_66540                         #  357   0x66414  6      
  movl %ecx, %ecx                     #  358   0x6641a  2      
  cmpl %r8d, 0xc(%r15,%rcx,1)         #  359   0x6641c  5      
  jne .L_66540                        #  360   0x66421  6      
  jmpq .L_66100                       #  361   0x66427  5      
  nop                                 #  362   0x6642c  1      
                                                               
.size T_276, .-T_276

