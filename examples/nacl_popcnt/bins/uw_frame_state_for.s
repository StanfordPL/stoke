  .text
  .globl uw_frame_state_for
  .type uw_frame_state_for, @function

#! file-offset 0x5c040
#! rip-offset  0x5c040
#! capacity    3392 bytes

# Text                             #  Line  RIP      Bytes  
.uw_frame_state_for:               #        0x5c040  0      
  pushq %r14                       #  1     0x5c040  3      
  xorl %eax, %eax                  #  2     0x5c043  2      
  movl $0x2d, %ecx                 #  3     0x5c045  5      
  pushq %r13                       #  4     0x5c04a  3      
  pushq %r12                       #  5     0x5c04d  3      
  movl %edi, %r12d                 #  6     0x5c050  3      
  pushq %rbx                       #  7     0x5c053  2      
  movl %esi, %ebx                  #  8     0x5c055  2      
  movq %rbx, %rdi                  #  9     0x5c057  3      
  subl $0x58, %esp                 #  10    0x5c05a  3      
  addq %r15, %rsp                  #  11    0x5c05d  3      
  nop                              #  12    0x5c060  1      
  movl %edi, %edi                  #  13    0x5c061  2      
  leaq (%r15,%rdi,1), %rdi         #  14    0x5c063  4      
  rep stosq %es:(%rdi)             #  15    0x5c067  4      
  movl %edi, %edi                  #  16    0x5c06b  2      
  movl %r12d, %r12d                #  17    0x5c06d  3      
  movq $0x0, 0x70(%r15,%r12,1)     #  18    0x5c070  9      
  nop                              #  19    0x5c079  1      
  movl %r12d, %r12d                #  20    0x5c07a  3      
  movl $0x0, 0x50(%r15,%r12,1)     #  21    0x5c07d  9      
  movl %r12d, %r12d                #  22    0x5c086  3      
  movl 0x4c(%r15,%r12,1), %edi     #  23    0x5c089  5      
  testq %rdi, %rdi                 #  24    0x5c08e  3      
  je .L_5c4e0                      #  25    0x5c091  6      
  nop                              #  26    0x5c097  1      
  movl %r12d, %r12d                #  27    0x5c098  3      
  movq 0x60(%r15,%r12,1), %rax     #  28    0x5c09b  5      
  leal 0x54(%r12), %esi            #  29    0x5c0a0  5      
  shrq $0x3f, %rax                 #  30    0x5c0a5  4      
  leal -0x1(%rax,%rdi,1), %edi     #  31    0x5c0a9  4      
  nop                              #  32    0x5c0ad  1      
  callq ._Unwind_Find_FDE          #  33    0x5c0ae  5      
  movl %eax, %r8d                  #  34    0x5c0b3  3      
  testq %r8, %r8                   #  35    0x5c0b6  3      
  je .L_5c4e0                      #  36    0x5c0b9  6      
  movl %r8d, %edx                  #  37    0x5c0bf  3      
  movl %r8d, %r8d                  #  38    0x5c0c2  3      
  subl 0x4(%r15,%r8,1), %edx       #  39    0x5c0c5  5      
  movl %r12d, %r12d                #  40    0x5c0ca  3      
  movl 0x5c(%r15,%r12,1), %eax     #  41    0x5c0cd  5      
  nop                              #  42    0x5c0d2  1      
  movq %r8, (%rsp)                 #  43    0x5c0d3  4      
  movl %ebx, %ebx                  #  44    0x5c0d7  2      
  movl %eax, 0x140(%r15,%rbx,1)    #  45    0x5c0d9  8      
  addl $0x4, %edx                  #  46    0x5c0e1  3      
  leal 0x9(%rdx), %r13d            #  47    0x5c0e4  4      
  movq %rdx, 0x8(%rsp)             #  48    0x5c0e8  5      
  movl %r13d, %edi                 #  49    0x5c0ed  3      
  nop                              #  50    0x5c0f0  1      
  nop                              #  51    0x5c0f1  1      
  nop                              #  52    0x5c0f2  1      
  callq .strlen                    #  53    0x5c0f3  5      
  movq 0x8(%rsp), %rdx             #  54    0x5c0f8  5      
  movq (%rsp), %r8                 #  55    0x5c0fd  4      
  movl %edx, %edx                  #  56    0x5c101  2      
  cmpb $0x65, 0x9(%r15,%rdx,1)     #  57    0x5c103  6      
  leal 0xa(%rax,%rdx,1), %edi      #  58    0x5c109  4      
  je .L_5c580                      #  59    0x5c10d  6      
  nop                              #  60    0x5c113  1      
.L_5c140:                          #        0x5c114  0      
  xorl %r9d, %r9d                  #  61    0x5c114  3      
  xorl %ecx, %ecx                  #  62    0x5c117  2      
  nop                              #  63    0x5c119  1      
  nop                              #  64    0x5c11a  1      
.L_5c160:                          #        0x5c11b  0      
  movl %edi, %edi                  #  65    0x5c11b  2      
  movzbl (%r15,%rdi,1), %esi       #  66    0x5c11d  5      
  addl $0x1, %edi                  #  67    0x5c122  3      
  movl %esi, %eax                  #  68    0x5c125  2      
  andl $0x7f, %eax                 #  69    0x5c127  3      
  shll %cl, %eax                   #  70    0x5c12a  2      
  addl $0x7, %ecx                  #  71    0x5c12c  3      
  orl %eax, %r9d                   #  72    0x5c12f  3      
  testb %sil, %sil                 #  73    0x5c132  3      
  js .L_5c160                      #  74    0x5c135  6      
  movl %r9d, %r9d                  #  75    0x5c13b  3      
  nop                              #  76    0x5c13e  1      
  leal 0x4c(%rsp), %esi            #  77    0x5c13f  4      
  movq %rdx, 0x8(%rsp)             #  78    0x5c143  5      
  movl %ebx, %ebx                  #  79    0x5c148  2      
  movq %r9, 0x150(%r15,%rbx,1)     #  80    0x5c14a  8      
  movq %r8, (%rsp)                 #  81    0x5c152  4      
  nop                              #  82    0x5c156  1      
  callq .read_sleb128              #  83    0x5c157  5      
  movl %eax, %edi                  #  84    0x5c15c  2      
  movslq 0x4c(%rsp), %rax          #  85    0x5c15e  5      
  movq 0x8(%rsp), %rdx             #  86    0x5c163  5      
  xorl %r9d, %r9d                  #  87    0x5c168  3      
  xorl %ecx, %ecx                  #  88    0x5c16b  2      
  movq (%rsp), %r8                 #  89    0x5c16d  4      
  movl %ebx, %ebx                  #  90    0x5c171  2      
  movq %rax, 0x148(%r15,%rbx,1)    #  91    0x5c173  8      
  nop                              #  92    0x5c17b  1      
  movl %edx, %edx                  #  93    0x5c17c  2      
  cmpb $0x1, 0x8(%r15,%rdx,1)      #  94    0x5c17e  6      
  je .L_5c560                      #  95    0x5c184  6      
  nop                              #  96    0x5c18a  1      
  nop                              #  97    0x5c18b  1      
.L_5c1e0:                          #        0x5c18c  0      
  movl %edi, %edi                  #  98    0x5c18c  2      
  movzbl (%r15,%rdi,1), %esi       #  99    0x5c18e  5      
  addl $0x1, %edi                  #  100   0x5c193  3      
  movl %esi, %eax                  #  101   0x5c196  2      
  andl $0x7f, %eax                 #  102   0x5c198  3      
  shll %cl, %eax                   #  103   0x5c19b  2      
  addl $0x7, %ecx                  #  104   0x5c19d  3      
  orl %eax, %r9d                   #  105   0x5c1a0  3      
  testb %sil, %sil                 #  106   0x5c1a3  3      
  js .L_5c1e0                      #  107   0x5c1a6  6      
  movl %r9d, %r9d                  #  108   0x5c1ac  3      
  nop                              #  109   0x5c1af  1      
  movl %ebx, %ebx                  #  110   0x5c1b0  2      
  movq %r9, 0x158(%r15,%rbx,1)     #  111   0x5c1b2  8      
  nop                              #  112   0x5c1ba  1      
  nop                              #  113   0x5c1bb  1      
.L_5c220:                          #        0x5c1bc  0      
  movl %ebx, %ebx                  #  114   0x5c1bc  2      
  movb $0xff, 0x161(%r15,%rbx,1)   #  115   0x5c1be  9      
  movl %r13d, %r13d                #  116   0x5c1c7  3      
  movzbl (%r15,%r13,1), %eax       #  117   0x5c1ca  5      
  xorl %r10d, %r10d                #  118   0x5c1cf  3      
  cmpb $0x7a, %al                  #  119   0x5c1d2  2      
  je .L_5c7a0                      #  120   0x5c1d4  6      
  xchgw %ax, %ax                   #  121   0x5c1da  3      
.L_5c240:                          #        0x5c1dd  0      
  leal 0x48(%rsp), %ecx            #  122   0x5c1dd  4      
  addl $0x1, %r13d                 #  123   0x5c1e1  4      
  movq %rcx, 0x38(%rsp)            #  124   0x5c1e5  5      
  jmpq .L_5c2c0                    #  125   0x5c1ea  5      
  xchgw %ax, %ax                   #  126   0x5c1ef  3      
  nop                              #  127   0x5c1f2  1      
.L_5c260:                          #        0x5c1f3  0      
  cmpb $0x52, %al                  #  128   0x5c1f3  2      
  je .L_5c300                      #  129   0x5c1f5  6      
  cmpb $0x50, %al                  #  130   0x5c1fb  2      
  je .L_5c320                      #  131   0x5c1fd  6      
  cmpb $0x53, %al                  #  132   0x5c203  2      
  jne .L_5c500                     #  133   0x5c205  6      
  nop                              #  134   0x5c20b  1      
  movl %ebx, %ebx                  #  135   0x5c20c  2      
  movb $0x1, 0x163(%r15,%rbx,1)    #  136   0x5c20e  9      
  movl %r13d, %eax                 #  137   0x5c217  3      
  movq %rdi, %r14                  #  138   0x5c21a  3      
  nop                              #  139   0x5c21d  1      
.L_5c2a0:                          #        0x5c21e  0      
  movl %eax, %eax                  #  140   0x5c21e  2      
  movzbl (%r15,%rax,1), %eax       #  141   0x5c220  5      
  addl $0x1, %r13d                 #  142   0x5c225  4      
  movq %r14, %rdi                  #  143   0x5c229  3      
  nop                              #  144   0x5c22c  1      
  nop                              #  145   0x5c22d  1      
.L_5c2c0:                          #        0x5c22e  0      
  testb %al, %al                   #  146   0x5c22e  2      
  je .L_5c3a0                      #  147   0x5c230  6      
  cmpb $0x4c, %al                  #  148   0x5c236  2      
  jne .L_5c260                     #  149   0x5c238  6      
  movl %edi, %edi                  #  150   0x5c23e  2      
  movzbl (%r15,%rdi,1), %eax       #  151   0x5c240  5      
  leal 0x1(%rdi), %r14d            #  152   0x5c245  4      
  nop                              #  153   0x5c249  1      
  movl %ebx, %ebx                  #  154   0x5c24a  2      
  movb %al, 0x161(%r15,%rbx,1)     #  155   0x5c24c  8      
  movl %r13d, %eax                 #  156   0x5c254  3      
  jmpq .L_5c2a0                    #  157   0x5c257  5      
  xchgw %ax, %ax                   #  158   0x5c25c  3      
  nop                              #  159   0x5c25f  1      
.L_5c300:                          #        0x5c260  0      
  movl %edi, %edi                  #  160   0x5c260  2      
  movzbl (%r15,%rdi,1), %eax       #  161   0x5c262  5      
  leal 0x1(%rdi), %r14d            #  162   0x5c267  4      
  movl %ebx, %ebx                  #  163   0x5c26b  2      
  movb %al, 0x160(%r15,%rbx,1)     #  164   0x5c26d  8      
  movl %r13d, %eax                 #  165   0x5c275  3      
  jmpq .L_5c2a0                    #  166   0x5c278  5      
  nop                              #  167   0x5c27d  1      
.L_5c320:                          #        0x5c27e  0      
  movl %edi, %edi                  #  168   0x5c27e  2      
  movzbl (%r15,%rdi,1), %r9d       #  169   0x5c280  5      
  leal 0x1(%rdi), %r14d            #  170   0x5c285  4      
  cmpb $0xff, %r9b                 #  171   0x5c289  4      
  movzbl %r9b, %r11d               #  172   0x5c28d  4      
  je .L_5c800                      #  173   0x5c291  6      
  movl %r11d, %eax                 #  174   0x5c297  3      
  andl $0x70, %eax                 #  175   0x5c29a  3      
  nop                              #  176   0x5c29d  1      
  cmpl $0x20, %eax                 #  177   0x5c29e  3      
  je .L_5c900                      #  178   0x5c2a1  6      
  jle .L_5c5c0                     #  179   0x5c2a7  6      
  cmpl $0x40, %eax                 #  180   0x5c2ad  3      
  je .L_5c8c0                      #  181   0x5c2b0  6      
  cmpl $0x50, %eax                 #  182   0x5c2b6  3      
  nop                              #  183   0x5c2b9  1      
  je .L_5c5e0                      #  184   0x5c2ba  6      
  cmpl $0x30, %eax                 #  185   0x5c2c0  3      
  je .L_5c860                      #  186   0x5c2c3  6      
  xchgw %ax, %ax                   #  187   0x5c2c9  3      
  nop                              #  188   0x5c2cc  1      
.L_5c380:                          #        0x5c2cd  0      
  nop                              #  189   0x5c2cd  1      
  nop                              #  190   0x5c2ce  1      
  callq .abort                     #  191   0x5c2cf  5      
.L_5c3a0:                          #        0x5c2d4  0      
  testq %r10, %r10                 #  192   0x5c2d4  3      
  je .L_5c520                      #  193   0x5c2d7  6      
  movq %r10, %rdi                  #  194   0x5c2dd  3      
  nop                              #  195   0x5c2e0  1      
  nop                              #  196   0x5c2e1  1      
.L_5c3c0:                          #        0x5c2e2  0      
  movl %edx, %edx                  #  197   0x5c2e2  2      
  movl (%r15,%rdx,1), %esi         #  198   0x5c2e4  4      
  movl %ebx, %ecx                  #  199   0x5c2e8  2      
  movq %r8, (%rsp)                 #  200   0x5c2ea  4      
  leal 0x4(%rsi,%rdx,1), %esi      #  201   0x5c2ee  4      
  movl %r12d, %edx                 #  202   0x5c2f2  3      
  nop                              #  203   0x5c2f5  1      
  callq .execute_cfa_program       #  204   0x5c2f6  5      
  movl %ebx, %ebx                  #  205   0x5c2fb  2      
  movzbl 0x160(%r15,%rbx,1), %eax  #  206   0x5c2fd  9      
  movq (%rsp), %r8                 #  207   0x5c306  4      
  cmpb $0xff, %al                  #  208   0x5c30a  2      
  je .L_5c820                      #  209   0x5c30c  6      
  andl $0x7, %eax                  #  210   0x5c312  3      
  cmpl $0x2, %eax                  #  211   0x5c315  3      
  nop                              #  212   0x5c318  1      
  je .L_5c940                      #  213   0x5c319  6      
  jg .L_5c660                      #  214   0x5c31f  6      
  testl %eax, %eax                 #  215   0x5c325  2      
  jne .L_5c380                     #  216   0x5c327  6      
  nop                              #  217   0x5c32d  1      
.L_5c420:                          #        0x5c32e  0      
  movl $0x8, %r14d                 #  218   0x5c32e  6      
  nop                              #  219   0x5c334  1      
  nop                              #  220   0x5c335  1      
.L_5c440:                          #        0x5c336  0      
  xorl %esi, %esi                  #  221   0x5c336  2      
  xorl %ecx, %ecx                  #  222   0x5c338  2      
  xorl %r13d, %r13d                #  223   0x5c33a  3      
  movl %ebx, %ebx                  #  224   0x5c33d  2      
  cmpb $0x0, 0x162(%r15,%rbx,1)    #  225   0x5c33f  9      
  leal 0x8(%r14,%r8,1), %r14d      #  226   0x5c348  5      
  jne .L_5c680                     #  227   0x5c34d  6      
  nop                              #  228   0x5c353  1      
  movl %ebx, %ebx                  #  229   0x5c354  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  230   0x5c356  9      
  cmpb $0xff, %dl                  #  231   0x5c35f  3      
  je .L_5c6c0                      #  232   0x5c362  6      
  nop                              #  233   0x5c368  1      
.L_5c480:                          #        0x5c369  0      
  movzbl %dl, %ecx                 #  234   0x5c369  3      
  movl %ecx, %r9d                  #  235   0x5c36c  3      
  andl $0x70, %r9d                 #  236   0x5c36f  4      
  cmpl $0x20, %r9d                 #  237   0x5c373  4      
  je .L_5cd40                      #  238   0x5c377  6      
  jg .L_5c960                      #  239   0x5c37d  6      
  testl %r9d, %r9d                 #  240   0x5c383  3      
  nop                              #  241   0x5c386  1      
  jne .L_5ca00                     #  242   0x5c387  6      
  nop                              #  243   0x5c38d  1      
  nop                              #  244   0x5c38e  1      
.L_5c4c0:                          #        0x5c38f  0      
  xorl %r10d, %r10d                #  245   0x5c38f  3      
  jmpq .L_5c9c0                    #  246   0x5c392  5      
  nop                              #  247   0x5c397  1      
  nop                              #  248   0x5c398  1      
.L_5c4e0:                          #        0x5c399  0      
  addl $0x58, %esp                 #  249   0x5c399  3      
  addq %r15, %rsp                  #  250   0x5c39c  3      
  movl $0x5, %eax                  #  251   0x5c39f  5      
  popq %rbx                        #  252   0x5c3a4  2      
  popq %r12                        #  253   0x5c3a6  3      
  popq %r13                        #  254   0x5c3a9  3      
  popq %r14                        #  255   0x5c3ac  3      
  popq %r11                        #  256   0x5c3af  3      
  andl $0xffffffe0, %r11d          #  257   0x5c3b2  7      
  addq %r15, %r11                  #  258   0x5c3b9  3      
  jmpq %r11                        #  259   0x5c3bc  3      
  xchgw %ax, %ax                   #  260   0x5c3bf  3      
.L_5c500:                          #        0x5c3c2  0      
  movq %r10, %rdi                  #  261   0x5c3c2  3      
  nop                              #  262   0x5c3c5  1      
  nop                              #  263   0x5c3c6  1      
.L_5c520:                          #        0x5c3c7  0      
  testq %rdi, %rdi                 #  264   0x5c3c7  3      
  movl $0x3, %eax                  #  265   0x5c3ca  5      
  jne .L_5c3c0                     #  266   0x5c3cf  6      
  addl $0x58, %esp                 #  267   0x5c3d5  3      
  addq %r15, %rsp                  #  268   0x5c3d8  3      
  popq %rbx                        #  269   0x5c3db  2      
  popq %r12                        #  270   0x5c3dd  3      
  popq %r13                        #  271   0x5c3e0  3      
  popq %r14                        #  272   0x5c3e3  3      
  popq %r11                        #  273   0x5c3e6  3      
  nop                              #  274   0x5c3e9  1      
  andl $0xffffffe0, %r11d          #  275   0x5c3ea  7      
  addq %r15, %r11                  #  276   0x5c3f1  3      
  jmpq %r11                        #  277   0x5c3f4  3      
  nop                              #  278   0x5c3f7  1      
  nop                              #  279   0x5c3f8  1      
.L_5c560:                          #        0x5c3f9  0      
  movl %edi, %edi                  #  280   0x5c3f9  2      
  movzbl (%r15,%rdi,1), %eax       #  281   0x5c3fb  5      
  addl $0x1, %edi                  #  282   0x5c400  3      
  movl %ebx, %ebx                  #  283   0x5c403  2      
  movq %rax, 0x158(%r15,%rbx,1)    #  284   0x5c405  8      
  jmpq .L_5c220                    #  285   0x5c40d  5      
  nop                              #  286   0x5c412  1      
.L_5c580:                          #        0x5c413  0      
  movl %r13d, %r13d                #  287   0x5c413  3      
  cmpb $0x68, 0x1(%r15,%r13,1)     #  288   0x5c416  6      
  jne .L_5c140                     #  289   0x5c41c  6      
  movl %edi, %edi                  #  290   0x5c422  2      
  movl (%r15,%rdi,1), %eax         #  291   0x5c424  4      
  addl $0x2, %r13d                 #  292   0x5c428  4      
  addl $0x4, %edi                  #  293   0x5c42c  3      
  nop                              #  294   0x5c42f  1      
  movl %ebx, %ebx                  #  295   0x5c430  2      
  movl %eax, 0x164(%r15,%rbx,1)    #  296   0x5c432  8      
  jmpq .L_5c140                    #  297   0x5c43a  5      
  xchgw %ax, %ax                   #  298   0x5c43f  3      
  nop                              #  299   0x5c442  1      
.L_5c5c0:                          #        0x5c443  0      
  testl %eax, %eax                 #  300   0x5c443  2      
  je .L_5c5e0                      #  301   0x5c445  6      
  cmpl $0x10, %eax                 #  302   0x5c44b  3      
  jne .L_5c380                     #  303   0x5c44e  6      
  nop                              #  304   0x5c454  1      
  nop                              #  305   0x5c455  1      
.L_5c5e0:                          #        0x5c456  0      
  movl $0x0, 0x2c(%rsp)            #  306   0x5c456  8      
  nop                              #  307   0x5c45e  1      
  nop                              #  308   0x5c45f  1      
.L_5c600:                          #        0x5c460  0      
  cmpb $0x50, %r9b                 #  309   0x5c460  4      
  movq %r14, 0x30(%rsp)            #  310   0x5c464  5      
  je .L_5c840                      #  311   0x5c469  6      
  xchgw %ax, %ax                   #  312   0x5c46f  3      
  nop                              #  313   0x5c472  1      
.L_5c620:                          #        0x5c473  0      
  movl %r11d, %eax                 #  314   0x5c473  3      
  andl $0xf, %eax                  #  315   0x5c476  3      
  cmpl $0xc, %eax                  #  316   0x5c479  3      
  ja .L_5c380                      #  317   0x5c47c  6      
  leal 0xffc6c6f(%rip), %ecx       #  318   0x5c482  6      
  movl %eax, %eax                  #  319   0x5c488  2      
  leaq (%rcx,%rax,4), %rax         #  320   0x5c48a  4      
  nop                              #  321   0x5c48e  1      
  movl %eax, %eax                  #  322   0x5c48f  2      
  movslq (%r15,%rax,1), %rax       #  323   0x5c491  4      
  addq %rcx, %rax                  #  324   0x5c495  3      
  andl $0xffffffe0, %eax           #  325   0x5c498  5      
  addq %r15, %rax                  #  326   0x5c49d  3      
  jmpq %rax                        #  327   0x5c4a0  2      
  nop                              #  328   0x5c4a2  1      
.L_5c660:                          #        0x5c4a3  0      
  cmpl $0x3, %eax                  #  329   0x5c4a3  3      
  je .L_5c420                      #  330   0x5c4a6  6      
  cmpl $0x4, %eax                  #  331   0x5c4ac  3      
  jne .L_5c380                     #  332   0x5c4af  6      
  movl $0x10, %r14d                #  333   0x5c4b5  6      
  jmpq .L_5c440                    #  334   0x5c4bb  5      
  nop                              #  335   0x5c4c0  1      
.L_5c680:                          #        0x5c4c1  0      
  movl %r14d, %r14d                #  336   0x5c4c1  3      
  movzbl (%r15,%r14,1), %edx       #  337   0x5c4c4  5      
  addl $0x1, %r14d                 #  338   0x5c4c9  4      
  movl %edx, %eax                  #  339   0x5c4cd  2      
  andl $0x7f, %eax                 #  340   0x5c4cf  3      
  shll %cl, %eax                   #  341   0x5c4d2  2      
  addl $0x7, %ecx                  #  342   0x5c4d4  3      
  orl %eax, %esi                   #  343   0x5c4d7  2      
  testb %dl, %dl                   #  344   0x5c4d9  2      
  js .L_5c680                      #  345   0x5c4db  6      
  nop                              #  346   0x5c4e1  1      
  movl %ebx, %ebx                  #  347   0x5c4e2  2      
  movzbl 0x161(%r15,%rbx,1), %edx  #  348   0x5c4e4  9      
  leal (%rsi,%r14,1), %r13d        #  349   0x5c4ed  4      
  cmpb $0xff, %dl                  #  350   0x5c4f1  3      
  jne .L_5c480                     #  351   0x5c4f4  6      
  nop                              #  352   0x5c4fa  1      
.L_5c6c0:                          #        0x5c4fb  0      
  movl %r8d, %r8d                  #  353   0x5c4fb  3      
  movl (%r15,%r8,1), %esi          #  354   0x5c4fe  4      
  testq %r13, %r13                 #  355   0x5c502  3      
  movl %ebx, %ecx                  #  356   0x5c505  2      
  cmoveq %r14, %r13                #  357   0x5c507  4      
  movl %r12d, %edx                 #  358   0x5c50b  3      
  movl %r13d, %edi                 #  359   0x5c50e  3      
  leal 0x4(%rsi,%r8,1), %esi       #  360   0x5c511  5      
  callq .execute_cfa_program       #  361   0x5c516  5      
  addl $0x58, %esp                 #  362   0x5c51b  3      
  addq %r15, %rsp                  #  363   0x5c51e  3      
  xorl %eax, %eax                  #  364   0x5c521  2      
  popq %rbx                        #  365   0x5c523  2      
  popq %r12                        #  366   0x5c525  3      
  popq %r13                        #  367   0x5c528  3      
  popq %r14                        #  368   0x5c52b  3      
  popq %r11                        #  369   0x5c52e  3      
  andl $0xffffffe0, %r11d          #  370   0x5c531  7      
  addq %r15, %r11                  #  371   0x5c538  3      
  jmpq %r11                        #  372   0x5c53b  3      
  nop                              #  373   0x5c53e  1      
  movl %r14d, %r14d                #  374   0x5c53f  3      
  movl (%r15,%r14,1), %eax         #  375   0x5c542  4      
  addl $0x4, %r14d                 #  376   0x5c546  4      
  nop                              #  377   0x5c54a  1      
  nop                              #  378   0x5c54b  1      
.L_5c720:                          #        0x5c54c  0      
  xorl %ecx, %ecx                  #  379   0x5c54c  2      
  testl %eax, %eax                 #  380   0x5c54e  2      
  je .L_5c760                      #  381   0x5c550  6      
  andl $0x70, %r11d                #  382   0x5c556  4      
  movl 0x30(%rsp), %ecx            #  383   0x5c55a  4      
  cmpl $0x10, %r11d                #  384   0x5c55e  4      
  cmovnel 0x2c(%rsp), %ecx         #  385   0x5c562  5      
  addl %ecx, %eax                  #  386   0x5c567  2      
  testb %r9b, %r9b                 #  387   0x5c569  3      
  movl %eax, %ecx                  #  388   0x5c56c  2      
  xchgw %ax, %ax                   #  389   0x5c56e  3      
  jns .L_5c760                     #  390   0x5c571  6      
  movl %eax, %eax                  #  391   0x5c577  2      
  movl %eax, %eax                  #  392   0x5c579  2      
  movl (%r15,%rax,1), %ecx         #  393   0x5c57b  4      
  nop                              #  394   0x5c57f  1      
  nop                              #  395   0x5c580  1      
.L_5c760:                          #        0x5c581  0      
  movl %ebx, %ebx                  #  396   0x5c581  2      
  movl %ecx, 0x144(%r15,%rbx,1)    #  397   0x5c583  8      
  movl %r13d, %eax                 #  398   0x5c58b  3      
  jmpq .L_5c2a0                    #  399   0x5c58e  5      
  nop                              #  400   0x5c593  1      
  movl %r14d, %r14d                #  401   0x5c594  3      
  movl (%r15,%r14,1), %eax         #  402   0x5c597  4      
  addl $0x8, %r14d                 #  403   0x5c59b  4      
  jmpq .L_5c720                    #  404   0x5c59f  5      
  nop                              #  405   0x5c5a4  1      
  nop                              #  406   0x5c5a5  1      
.L_5c7a0:                          #        0x5c5a6  0      
  xorl %ecx, %ecx                  #  407   0x5c5a6  2      
  nop                              #  408   0x5c5a8  1      
  nop                              #  409   0x5c5a9  1      
.L_5c7c0:                          #        0x5c5aa  0      
  movl %edi, %edi                  #  410   0x5c5aa  2      
  movzbl (%r15,%rdi,1), %esi       #  411   0x5c5ac  5      
  addl $0x1, %edi                  #  412   0x5c5b1  3      
  movl %esi, %eax                  #  413   0x5c5b4  2      
  andl $0x7f, %eax                 #  414   0x5c5b6  3      
  shll %cl, %eax                   #  415   0x5c5b9  2      
  addl $0x7, %ecx                  #  416   0x5c5bb  3      
  orl %eax, %r10d                  #  417   0x5c5be  3      
  testb %sil, %sil                 #  418   0x5c5c1  3      
  js .L_5c7c0                      #  419   0x5c5c4  6      
  addl $0x1, %r13d                 #  420   0x5c5ca  4      
  movl %ebx, %ebx                  #  421   0x5c5ce  2      
  movb $0x1, 0x162(%r15,%rbx,1)    #  422   0x5c5d0  9      
  addl %edi, %r10d                 #  423   0x5c5d9  3      
  movl %r13d, %r13d                #  424   0x5c5dc  3      
  movzbl (%r15,%r13,1), %eax       #  425   0x5c5df  5      
  jmpq .L_5c240                    #  426   0x5c5e4  5      
  nop                              #  427   0x5c5e9  1      
.L_5c800:                          #        0x5c5ea  0      
  movq %r14, 0x30(%rsp)            #  428   0x5c5ea  5      
  movl $0x0, 0x2c(%rsp)            #  429   0x5c5ef  8      
  jmpq .L_5c620                    #  430   0x5c5f7  5      
  nop                              #  431   0x5c5fc  1      
.L_5c820:                          #        0x5c5fd  0      
  xorl %r14d, %r14d                #  432   0x5c5fd  3      
  jmpq .L_5c440                    #  433   0x5c600  5      
  nop                              #  434   0x5c605  1      
  nop                              #  435   0x5c606  1      
.L_5c840:                          #        0x5c607  0      
  leal 0x3(%r14), %eax             #  436   0x5c607  4      
  andl $0xfffffffc, %eax           #  437   0x5c60b  5      
  leal 0x4(%rax), %r14d            #  438   0x5c610  4      
  movl %eax, %eax                  #  439   0x5c614  2      
  movl %eax, %eax                  #  440   0x5c616  2      
  movl (%r15,%rax,1), %ecx         #  441   0x5c618  4      
  movl %r14d, %r14d                #  442   0x5c61c  3      
  jmpq .L_5c760                    #  443   0x5c61f  5      
  nop                              #  444   0x5c624  1      
.L_5c860:                          #        0x5c625  0      
  movl %r12d, %edi                 #  445   0x5c625  3      
  movq %rdx, 0x8(%rsp)             #  446   0x5c628  5      
  movq %r8, (%rsp)                 #  447   0x5c62d  4      
  movb %r9b, 0x10(%rsp)            #  448   0x5c631  5      
  movq %r10, 0x18(%rsp)            #  449   0x5c636  5      
  movl %r11d, 0x20(%rsp)           #  450   0x5c63b  5      
  callq ._Unwind_GetDataRelBase    #  451   0x5c640  5      
.L_5c880:                          #        0x5c645  0      
  movl %eax, 0x2c(%rsp)            #  452   0x5c645  4      
  movq 0x8(%rsp), %rdx             #  453   0x5c649  5      
  movq (%rsp), %r8                 #  454   0x5c64e  4      
  movzbl 0x10(%rsp), %r9d          #  455   0x5c652  6      
  movq 0x18(%rsp), %r10            #  456   0x5c658  5      
  movl 0x20(%rsp), %r11d           #  457   0x5c65d  5      
  nop                              #  458   0x5c662  1      
  jmpq .L_5c600                    #  459   0x5c663  5      
  nop                              #  460   0x5c668  1      
  nop                              #  461   0x5c669  1      
.L_5c8c0:                          #        0x5c66a  0      
  movl %r12d, %edi                 #  462   0x5c66a  3      
  movq %rdx, 0x8(%rsp)             #  463   0x5c66d  5      
  movq %r8, (%rsp)                 #  464   0x5c672  4      
  movb %r9b, 0x10(%rsp)            #  465   0x5c676  5      
  movq %r10, 0x18(%rsp)            #  466   0x5c67b  5      
  movl %r11d, 0x20(%rsp)           #  467   0x5c680  5      
  callq ._Unwind_GetRegionStart    #  468   0x5c685  5      
  jmpq .L_5c880                    #  469   0x5c68a  5      
  nop                              #  470   0x5c68f  1      
  nop                              #  471   0x5c690  1      
.L_5c900:                          #        0x5c691  0      
  movl %r12d, %edi                 #  472   0x5c691  3      
  movq %rdx, 0x8(%rsp)             #  473   0x5c694  5      
  movq %r8, (%rsp)                 #  474   0x5c699  4      
  movb %r9b, 0x10(%rsp)            #  475   0x5c69d  5      
  movq %r10, 0x18(%rsp)            #  476   0x5c6a2  5      
  movl %r11d, 0x20(%rsp)           #  477   0x5c6a7  5      
  callq ._Unwind_GetTextRelBase    #  478   0x5c6ac  5      
  jmpq .L_5c880                    #  479   0x5c6b1  5      
  nop                              #  480   0x5c6b6  1      
  nop                              #  481   0x5c6b7  1      
.L_5c940:                          #        0x5c6b8  0      
  movl $0x4, %r14d                 #  482   0x5c6b8  6      
  jmpq .L_5c440                    #  483   0x5c6be  5      
  nop                              #  484   0x5c6c3  1      
  nop                              #  485   0x5c6c4  1      
.L_5c960:                          #        0x5c6c5  0      
  cmpl $0x40, %r9d                 #  486   0x5c6c5  4      
  je .L_5cba0                      #  487   0x5c6c9  6      
  cmpl $0x50, %r9d                 #  488   0x5c6cf  4      
  je .L_5c4c0                      #  489   0x5c6d3  6      
  cmpl $0x30, %r9d                 #  490   0x5c6d9  4      
  jne .L_5c380                     #  491   0x5c6dd  6      
  xchgw %ax, %ax                   #  492   0x5c6e3  3      
  movl %r12d, %edi                 #  493   0x5c6e6  3      
  movb %dl, 0x8(%rsp)              #  494   0x5c6e9  4      
  movl %ecx, 0x20(%rsp)            #  495   0x5c6ed  4      
  movq %r8, (%rsp)                 #  496   0x5c6f1  4      
  movl %r9d, 0x10(%rsp)            #  497   0x5c6f5  5      
  nop                              #  498   0x5c6fa  1      
  callq ._Unwind_GetDataRelBase    #  499   0x5c6fb  5      
.L_5c9a0:                          #        0x5c700  0      
  movzbl 0x8(%rsp), %edx           #  500   0x5c700  5      
  movl 0x20(%rsp), %ecx            #  501   0x5c705  4      
  movl %eax, %r10d                 #  502   0x5c709  3      
  movq (%rsp), %r8                 #  503   0x5c70c  4      
  movl 0x10(%rsp), %r9d            #  504   0x5c710  5      
  nop                              #  505   0x5c715  1      
.L_5c9c0:                          #        0x5c716  0      
  cmpb $0x50, %dl                  #  506   0x5c716  3      
  je .L_5cd20                      #  507   0x5c719  6      
  andl $0xf, %ecx                  #  508   0x5c71f  3      
  movq %r14, %r11                  #  509   0x5c722  3      
  cmpl $0xc, %ecx                  #  510   0x5c725  3      
  ja .L_5c380                      #  511   0x5c728  6      
  leal 0xffc68fa(%rip), %eax       #  512   0x5c72e  6      
  movl %ecx, %ecx                  #  513   0x5c734  2      
  leaq (%rax,%rcx,4), %rcx         #  514   0x5c736  4      
  movl %ecx, %ecx                  #  515   0x5c73a  2      
  movslq (%r15,%rcx,1), %rcx       #  516   0x5c73c  4      
  leaq (%rcx,%rax,1), %rax         #  517   0x5c740  4      
  andl $0xffffffe0, %eax           #  518   0x5c744  5      
  addq %r15, %rax                  #  519   0x5c749  3      
  jmpq %rax                        #  520   0x5c74c  2      
  nop                              #  521   0x5c74e  1      
.L_5ca00:                          #        0x5c74f  0      
  cmpl $0x10, %r9d                 #  522   0x5c74f  4      
  jne .L_5c380                     #  523   0x5c753  6      
  jmpq .L_5c4c0                    #  524   0x5c759  5      
  xchgw %ax, %ax                   #  525   0x5c75e  3      
  nop                              #  526   0x5c761  1      
  xorl %eax, %eax                  #  527   0x5c762  2      
  xorl %ecx, %ecx                  #  528   0x5c764  2      
  nop                              #  529   0x5c766  1      
  nop                              #  530   0x5c767  1      
.L_5ca40:                          #        0x5c768  0      
  movl %r14d, %r14d                #  531   0x5c768  3      
  movzbl (%r15,%r14,1), %edi       #  532   0x5c76b  5      
  movl $0x7f, %esi                 #  533   0x5c770  5      
  addl $0x1, %r14d                 #  534   0x5c775  4      
  andl %edi, %esi                  #  535   0x5c779  2      
  shll %cl, %esi                   #  536   0x5c77b  2      
  addl $0x7, %ecx                  #  537   0x5c77d  3      
  orl %esi, %eax                   #  538   0x5c780  2      
  testb %dil, %dil                 #  539   0x5c782  3      
  nop                              #  540   0x5c785  1      
  js .L_5ca40                      #  541   0x5c786  6      
  jmpq .L_5c720                    #  542   0x5c78c  5      
  nop                              #  543   0x5c791  1      
  nop                              #  544   0x5c792  1      
  movl 0x38(%rsp), %esi            #  545   0x5c793  4      
  movl %r14d, %edi                 #  546   0x5c797  3      
  movq %rdx, 0x8(%rsp)             #  547   0x5c79a  5      
  movq %r8, (%rsp)                 #  548   0x5c79f  4      
  movb %r9b, 0x10(%rsp)            #  549   0x5c7a3  5      
  movq %r10, 0x18(%rsp)            #  550   0x5c7a8  5      
  movl %r11d, 0x20(%rsp)           #  551   0x5c7ad  5      
  nop                              #  552   0x5c7b2  1      
  nop                              #  553   0x5c7b3  1      
  nop                              #  554   0x5c7b4  1      
  callq .read_sleb128              #  555   0x5c7b5  5      
  movq 0x8(%rsp), %rdx             #  556   0x5c7ba  5      
  movl %eax, %r14d                 #  557   0x5c7bf  3      
  movq (%rsp), %r8                 #  558   0x5c7c2  4      
  movl 0x48(%rsp), %eax            #  559   0x5c7c6  4      
  movzbl 0x10(%rsp), %r9d          #  560   0x5c7ca  6      
  movq 0x18(%rsp), %r10            #  561   0x5c7d0  5      
  movl 0x20(%rsp), %r11d           #  562   0x5c7d5  5      
  jmpq .L_5c720                    #  563   0x5c7da  5      
  nop                              #  564   0x5c7df  1      
  nop                              #  565   0x5c7e0  1      
  movl %r14d, %r14d                #  566   0x5c7e1  3      
  movswl (%r15,%r14,1), %eax       #  567   0x5c7e4  5      
  addl $0x2, %r14d                 #  568   0x5c7e9  4      
  jmpq .L_5c720                    #  569   0x5c7ed  5      
  nop                              #  570   0x5c7f2  1      
  movl %r14d, %r14d                #  571   0x5c7f3  3      
  movzwl (%r15,%r14,1), %eax       #  572   0x5c7f6  5      
  addl $0x2, %r14d                 #  573   0x5c7fb  4      
  jmpq .L_5c720                    #  574   0x5c7ff  5      
  nop                              #  575   0x5c804  1      
  movl %r14d, %r14d                #  576   0x5c805  3      
  movl (%r15,%r14,1), %eax         #  577   0x5c808  4      
  addl $0x4, %r14d                 #  578   0x5c80c  4      
  nop                              #  579   0x5c810  1      
  nop                              #  580   0x5c811  1      
.L_5cb60:                          #        0x5c812  0      
  xorl %ecx, %ecx                  #  581   0x5c812  2      
  testl %eax, %eax                 #  582   0x5c814  2      
  je .L_5cb80                      #  583   0x5c816  6      
  cmpl $0x10, %r9d                 #  584   0x5c81c  4      
  cmovel %r11d, %r10d              #  585   0x5c820  4      
  testb %dl, %dl                   #  586   0x5c824  2      
  leal (%r10,%rax,1), %eax         #  587   0x5c826  4      
  movl %eax, %ecx                  #  588   0x5c82a  2      
  jns .L_5cb80                     #  589   0x5c82c  6      
  movl %eax, %eax                  #  590   0x5c832  2      
  movl %eax, %eax                  #  591   0x5c834  2      
  movl (%r15,%rax,1), %ecx         #  592   0x5c836  4      
.L_5cb80:                          #        0x5c83a  0      
  movl %r12d, %r12d                #  593   0x5c83a  3      
  movl %ecx, 0x50(%r15,%r12,1)     #  594   0x5c83d  5      
  jmpq .L_5c6c0                    #  595   0x5c842  5      
  nop                              #  596   0x5c847  1      
  nop                              #  597   0x5c848  1      
.L_5cba0:                          #        0x5c849  0      
  movl %r12d, %edi                 #  598   0x5c849  3      
  movb %dl, 0x8(%rsp)              #  599   0x5c84c  4      
  movl %ecx, 0x20(%rsp)            #  600   0x5c850  4      
  movq %r8, (%rsp)                 #  601   0x5c854  4      
  movl %r9d, 0x10(%rsp)            #  602   0x5c858  5      
  nop                              #  603   0x5c85d  1      
  callq ._Unwind_GetRegionStart    #  604   0x5c85e  5      
  jmpq .L_5c9a0                    #  605   0x5c863  5      
  nop                              #  606   0x5c868  1      
  nop                              #  607   0x5c869  1      
  movl %r14d, %r14d                #  608   0x5c86a  3      
  movl (%r15,%r14,1), %eax         #  609   0x5c86d  4      
  addl $0x8, %r14d                 #  610   0x5c871  4      
  jmpq .L_5cb60                    #  611   0x5c875  5      
  nop                              #  612   0x5c87a  1      
  nop                              #  613   0x5c87b  1      
  xorl %eax, %eax                  #  614   0x5c87c  2      
  xorl %ecx, %ecx                  #  615   0x5c87e  2      
  nop                              #  616   0x5c880  1      
  nop                              #  617   0x5c881  1      
.L_5cc20:                          #        0x5c882  0      
  movl %r14d, %r14d                #  618   0x5c882  3      
  movzbl (%r15,%r14,1), %edi       #  619   0x5c885  5      
  movl $0x7f, %esi                 #  620   0x5c88a  5      
  addl $0x1, %r14d                 #  621   0x5c88f  4      
  andl %edi, %esi                  #  622   0x5c893  2      
  shll %cl, %esi                   #  623   0x5c895  2      
  addl $0x7, %ecx                  #  624   0x5c897  3      
  orl %esi, %eax                   #  625   0x5c89a  2      
  testb %dil, %dil                 #  626   0x5c89c  3      
  nop                              #  627   0x5c89f  1      
  js .L_5cc20                      #  628   0x5c8a0  6      
  jmpq .L_5cb60                    #  629   0x5c8a6  5      
  nop                              #  630   0x5c8ab  1      
  nop                              #  631   0x5c8ac  1      
  movl %r14d, %r14d                #  632   0x5c8ad  3      
  movzwl (%r15,%r14,1), %eax       #  633   0x5c8b0  5      
  addl $0x2, %r14d                 #  634   0x5c8b5  4      
  jmpq .L_5cb60                    #  635   0x5c8b9  5      
  nop                              #  636   0x5c8be  1      
  leal 0x48(%rsp), %esi            #  637   0x5c8bf  4      
  movl %r14d, %edi                 #  638   0x5c8c3  3      
  movb %dl, 0x8(%rsp)              #  639   0x5c8c6  4      
  movq %r8, (%rsp)                 #  640   0x5c8ca  4      
  movl %r9d, 0x10(%rsp)            #  641   0x5c8ce  5      
  movl %r10d, 0x18(%rsp)           #  642   0x5c8d3  5      
  movq %r14, 0x20(%rsp)            #  643   0x5c8d8  5      
  xchgw %ax, %ax                   #  644   0x5c8dd  3      
  nop                              #  645   0x5c8e0  1      
  nop                              #  646   0x5c8e1  1      
  callq .read_sleb128              #  647   0x5c8e2  5      
  movzbl 0x8(%rsp), %edx           #  648   0x5c8e7  5      
  movl %eax, %r14d                 #  649   0x5c8ec  3      
  movq (%rsp), %r8                 #  650   0x5c8ef  4      
  movl 0x48(%rsp), %eax            #  651   0x5c8f3  4      
  movl 0x10(%rsp), %r9d            #  652   0x5c8f7  5      
  movl 0x18(%rsp), %r10d           #  653   0x5c8fc  5      
  movq 0x20(%rsp), %r11            #  654   0x5c901  5      
  nop                              #  655   0x5c906  1      
  jmpq .L_5cb60                    #  656   0x5c907  5      
  nop                              #  657   0x5c90c  1      
  nop                              #  658   0x5c90d  1      
  movl %r14d, %r14d                #  659   0x5c90e  3      
  movswl (%r15,%r14,1), %eax       #  660   0x5c911  5      
  addl $0x2, %r14d                 #  661   0x5c916  4      
  jmpq .L_5cb60                    #  662   0x5c91a  5      
  nop                              #  663   0x5c91f  1      
.L_5cd20:                          #        0x5c920  0      
  leal 0x3(%r14), %eax             #  664   0x5c920  4      
  andl $0xfffffffc, %eax           #  665   0x5c924  5      
  leal 0x4(%rax), %r14d            #  666   0x5c929  4      
  movl %eax, %eax                  #  667   0x5c92d  2      
  movl %eax, %eax                  #  668   0x5c92f  2      
  movl (%r15,%rax,1), %ecx         #  669   0x5c931  4      
  movl %r14d, %r14d                #  670   0x5c935  3      
  jmpq .L_5cb80                    #  671   0x5c938  5      
  nop                              #  672   0x5c93d  1      
.L_5cd40:                          #        0x5c93e  0      
  movl %r12d, %edi                 #  673   0x5c93e  3      
  movb %dl, 0x8(%rsp)              #  674   0x5c941  4      
  movl %ecx, 0x20(%rsp)            #  675   0x5c945  4      
  movq %r8, (%rsp)                 #  676   0x5c949  4      
  movl %r9d, 0x10(%rsp)            #  677   0x5c94d  5      
  nop                              #  678   0x5c952  1      
  callq ._Unwind_GetTextRelBase    #  679   0x5c953  5      
  jmpq .L_5c9a0                    #  680   0x5c958  5      
  nop                              #  681   0x5c95d  1      
  nop                              #  682   0x5c95e  1      
                                                            
.size uw_frame_state_for, .-uw_frame_state_for

