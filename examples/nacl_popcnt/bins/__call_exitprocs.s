  .text
  .globl __call_exitprocs
  .type __call_exitprocs, @function

#! file-offset 0x78080
#! rip-offset  0x78080
#! capacity    896 bytes

# Text                                   #  Line  RIP      Bytes  
.__call_exitprocs:                       #        0x78080  0      
  pushq %r14                             #  1     0x78080  3      
  pushq %r13                             #  2     0x78083  3      
  movl %esi, %r13d                       #  3     0x78086  3      
  pushq %r12                             #  4     0x78089  3      
  pushq %rbx                             #  5     0x7808c  2      
  subl $0x38, %esp                       #  6     0x7808e  3      
  addq %r15, %rsp                        #  7     0x78091  3      
  movl %edi, 0x2c(%rsp)                  #  8     0x78094  4      
  movl $0x100309a0, %edi                 #  9     0x78098  5      
  xchgw %ax, %ax                         #  10    0x7809d  3      
  callq .__local_lock_acquire_recursive  #  11    0x780a0  5      
  movl 0xffab3e1(%rip), %eax             #  12    0x780a5  6      
  movq %rax, 0x10(%rsp)                  #  13    0x780ab  5      
  addl $0x148, %eax                      #  14    0x780b0  5      
  movq %rax, 0x18(%rsp)                  #  15    0x780b5  5      
  nop                                    #  16    0x780ba  1      
.L_780c0:                                #        0x780bb  0      
  movq 0x10(%rsp), %rax                  #  17    0x780bb  5      
  movl %eax, %eax                        #  18    0x780c0  2      
  movl 0x148(%r15,%rax,1), %r12d         #  19    0x780c2  8      
  testq %r12, %r12                       #  20    0x780ca  3      
  je .L_78180                            #  21    0x780cd  6      
  movq 0x18(%rsp), %rax                  #  22    0x780d3  5      
  nop                                    #  23    0x780d8  1      
  movq %rax, 0x20(%rsp)                  #  24    0x780d9  5      
  nop                                    #  25    0x780de  1      
  nop                                    #  26    0x780df  1      
.L_78100:                                #        0x780e0  0      
  movl %r12d, %r12d                      #  27    0x780e0  3      
  movl 0x4(%r15,%r12,1), %ebx            #  28    0x780e3  5      
  movl %ebx, %ecx                        #  29    0x780e8  2      
  subl $0x1, %ecx                        #  30    0x780ea  3      
  js .L_78160                            #  31    0x780ed  6      
  leal 0x84(%r12,%rbx,4), %ebx           #  32    0x780f3  8      
  nop                                    #  33    0x780fb  1      
.L_78120:                                #        0x780fc  0      
  testq %r13, %r13                       #  34    0x780fc  3      
  je .L_781a0                            #  35    0x780ff  6      
  movl %ebx, %eax                        #  36    0x78105  2      
  movl %eax, %eax                        #  37    0x78107  2      
  cmpl %r13d, 0x80(%r15,%rax,1)          #  38    0x78109  8      
  je .L_781a0                            #  39    0x78111  6      
  nop                                    #  40    0x78117  1      
.L_78140:                                #        0x78118  0      
  subl $0x4, %ebx                        #  41    0x78118  3      
  subl $0x1, %ecx                        #  42    0x7811b  3      
  jns .L_78120                           #  43    0x7811e  6      
  nop                                    #  44    0x78124  1      
  nop                                    #  45    0x78125  1      
.L_78160:                                #        0x78126  0      
  movl $0x623c0, %eax                    #  46    0x78126  5      
  testl %eax, %eax                       #  47    0x7812b  2      
  jne .L_78340                           #  48    0x7812d  6      
  nop                                    #  49    0x78133  1      
  nop                                    #  50    0x78134  1      
.L_78180:                                #        0x78135  0      
  addl $0x38, %esp                       #  51    0x78135  3      
  addq %r15, %rsp                        #  52    0x78138  3      
  movl $0x100309a0, %edi                 #  53    0x7813b  5      
  popq %rbx                              #  54    0x78140  2      
  popq %r12                              #  55    0x78142  3      
  popq %r13                              #  56    0x78145  3      
  popq %r14                              #  57    0x78148  3      
  jmpq .__local_lock_release_recursive   #  58    0x7814b  5      
  nop                                    #  59    0x78150  1      
.L_781a0:                                #        0x78151  0      
  movl %r12d, %r12d                      #  60    0x78151  3      
  movl 0x4(%r15,%r12,1), %esi            #  61    0x78154  5      
  leal -0x80(%rbx), %edx                 #  62    0x78159  3      
  movl %edx, %edx                        #  63    0x7815c  2      
  movl (%r15,%rdx,1), %eax               #  64    0x7815e  4      
  subl $0x1, %esi                        #  65    0x78162  3      
  cmpl %ecx, %esi                        #  66    0x78165  2      
  je .L_782e0                            #  67    0x78167  6      
  nop                                    #  68    0x7816d  1      
  movl %edx, %edx                        #  69    0x7816e  2      
  movl $0x0, (%r15,%rdx,1)               #  70    0x78170  8      
  nop                                    #  71    0x78178  1      
  nop                                    #  72    0x78179  1      
.L_781e0:                                #        0x7817a  0      
  testq %rax, %rax                       #  73    0x7817a  3      
  je .L_78140                            #  74    0x7817d  6      
  movl $0x1, %edx                        #  75    0x78183  5      
  movl %r12d, %r12d                      #  76    0x78188  3      
  movl 0x4(%r15,%r12,1), %r14d           #  77    0x7818b  5      
  shll %cl, %edx                         #  78    0x78190  2      
  nop                                    #  79    0x78192  1      
  movl %r12d, %r12d                      #  80    0x78193  3      
  testl %edx, 0x188(%r15,%r12,1)         #  81    0x78196  8      
  je .L_782a0                            #  82    0x7819e  6      
  movl %r12d, %r12d                      #  83    0x781a4  3      
  testl %edx, 0x18c(%r15,%r12,1)         #  84    0x781a7  8      
  nop                                    #  85    0x781af  1      
  jne .L_78300                           #  86    0x781b0  6      
  movl %ebx, %edx                        #  87    0x781b6  2      
  movl %ecx, 0x8(%rsp)                   #  88    0x781b8  4      
  movl 0x2c(%rsp), %edi                  #  89    0x781bc  4      
  movl %edx, %edx                        #  90    0x781c0  2      
  movl (%r15,%rdx,1), %esi               #  91    0x781c2  4      
  xchgw %ax, %ax                         #  92    0x781c6  3      
  andl $0xffffffe0, %eax                 #  93    0x781c9  5      
  addq %r15, %rax                        #  94    0x781ce  3      
  callq %rax                             #  95    0x781d1  2      
  movl 0x8(%rsp), %ecx                   #  96    0x781d3  4      
  nop                                    #  97    0x781d7  1      
  nop                                    #  98    0x781d8  1      
.L_78260:                                #        0x781d9  0      
  movl %r12d, %r12d                      #  99    0x781d9  3      
  cmpl %r14d, 0x4(%r15,%r12,1)           #  100   0x781dc  5      
  jne .L_780c0                           #  101   0x781e1  6      
  movq 0x20(%rsp), %rax                  #  102   0x781e7  5      
  movl %eax, %eax                        #  103   0x781ec  2      
  cmpl %r12d, (%r15,%rax,1)              #  104   0x781ee  4      
  jne .L_780c0                           #  105   0x781f2  6      
  nop                                    #  106   0x781f8  1      
  jmpq .L_78140                          #  107   0x781f9  5      
  nop                                    #  108   0x781fe  1      
  nop                                    #  109   0x781ff  1      
.L_782a0:                                #        0x78200  0      
  movl %ecx, 0x8(%rsp)                   #  110   0x78200  4      
  nop                                    #  111   0x78204  1      
  nop                                    #  112   0x78205  1      
  andl $0xffffffe0, %eax                 #  113   0x78206  5      
  addq %r15, %rax                        #  114   0x7820b  3      
  callq %rax                             #  115   0x7820e  2      
  movl 0x8(%rsp), %ecx                   #  116   0x78210  4      
  jmpq .L_78260                          #  117   0x78214  5      
  nop                                    #  118   0x78219  1      
  nop                                    #  119   0x7821a  1      
.L_782e0:                                #        0x7821b  0      
  movl %r12d, %r12d                      #  120   0x7821b  3      
  movl %ecx, 0x4(%r15,%r12,1)            #  121   0x7821e  5      
  jmpq .L_781e0                          #  122   0x78223  5      
  nop                                    #  123   0x78228  1      
  nop                                    #  124   0x78229  1      
.L_78300:                                #        0x7822a  0      
  movl %ebx, %edx                        #  125   0x7822a  2      
  movl %ecx, 0x8(%rsp)                   #  126   0x7822c  4      
  movl %edx, %edx                        #  127   0x78230  2      
  movl (%r15,%rdx,1), %edi               #  128   0x78232  4      
  nop                                    #  129   0x78236  1      
  andl $0xffffffe0, %eax                 #  130   0x78237  5      
  addq %r15, %rax                        #  131   0x7823c  3      
  callq %rax                             #  132   0x7823f  2      
  movl 0x8(%rsp), %ecx                   #  133   0x78241  4      
  jmpq .L_78260                          #  134   0x78245  5      
  nop                                    #  135   0x7824a  1      
  nop                                    #  136   0x7824b  1      
.L_78340:                                #        0x7824c  0      
  movl %r12d, %r12d                      #  137   0x7824c  3      
  cmpl $0x0, 0x4(%r15,%r12,1)            #  138   0x7824f  6      
  jne .L_783c0                           #  139   0x78255  6      
  movl %r12d, %r12d                      #  140   0x7825b  3      
  movl (%r15,%r12,1), %edx               #  141   0x7825e  4      
  xorl %eax, %eax                        #  142   0x78262  2      
  testq %rdx, %rdx                       #  143   0x78264  3      
  je .L_783e0                            #  144   0x78267  6      
  nop                                    #  145   0x7826d  1      
  movq 0x20(%rsp), %rax                  #  146   0x7826e  5      
  movl %r12d, %edi                       #  147   0x78273  3      
  movl %eax, %eax                        #  148   0x78276  2      
  movl %edx, (%r15,%rax,1)               #  149   0x78278  4      
  nop                                    #  150   0x7827c  1      
  callq .free                            #  151   0x7827d  5      
  movq 0x20(%rsp), %rax                  #  152   0x78282  5      
  movl %eax, %eax                        #  153   0x78287  2      
  movl (%r15,%rax,1), %r12d              #  154   0x78289  4      
  nop                                    #  155   0x7828d  1      
  nop                                    #  156   0x7828e  1      
.L_783a0:                                #        0x7828f  0      
  testq %r12, %r12                       #  157   0x7828f  3      
  jne .L_78100                           #  158   0x78292  6      
  jmpq .L_78180                          #  159   0x78298  5      
  nop                                    #  160   0x7829d  1      
  nop                                    #  161   0x7829e  1      
.L_783c0:                                #        0x7829f  0      
  movl %r12d, %r12d                      #  162   0x7829f  3      
  movl (%r15,%r12,1), %eax               #  163   0x782a2  4      
  nop                                    #  164   0x782a6  1      
  nop                                    #  165   0x782a7  1      
.L_783e0:                                #        0x782a8  0      
  movq %r12, 0x20(%rsp)                  #  166   0x782a8  5      
  movq %rax, %r12                        #  167   0x782ad  3      
  jmpq .L_783a0                          #  168   0x782b0  5      
  nop                                    #  169   0x782b5  1      
  nop                                    #  170   0x782b6  1      
  nop                                    #  171   0x782b7  1      
  nop                                    #  172   0x782b8  1      
  nop                                    #  173   0x782b9  1      
  nop                                    #  174   0x782ba  1      
  nop                                    #  175   0x782bb  1      
  nop                                    #  176   0x782bc  1      
  nop                                    #  177   0x782bd  1      
  nop                                    #  178   0x782be  1      
  nop                                    #  179   0x782bf  1      
  nop                                    #  180   0x782c0  1      
  nop                                    #  181   0x782c1  1      
  nop                                    #  182   0x782c2  1      
  nop                                    #  183   0x782c3  1      
  nop                                    #  184   0x782c4  1      
  nop                                    #  185   0x782c5  1      
  nop                                    #  186   0x782c6  1      
  nop                                    #  187   0x782c7  1      
  nop                                    #  188   0x782c8  1      
  nop                                    #  189   0x782c9  1      
  nop                                    #  190   0x782ca  1      
                                                                  
.size __call_exitprocs, .-__call_exitprocs

