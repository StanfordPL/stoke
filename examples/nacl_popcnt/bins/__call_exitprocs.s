  .text
  .globl __call_exitprocs
  .type __call_exitprocs, @function

#! file-offset 0x78120
#! rip-offset  0x78120
#! capacity    896 bytes

# Text                                   #  Line  RIP      Bytes  
.__call_exitprocs:                       #        0x78120  0      
  pushq %r14                             #  1     0x78120  3      
  pushq %r13                             #  2     0x78123  3      
  movl %esi, %r13d                       #  3     0x78126  3      
  pushq %r12                             #  4     0x78129  3      
  pushq %rbx                             #  5     0x7812c  2      
  subl $0x38, %esp                       #  6     0x7812e  3      
  addq %r15, %rsp                        #  7     0x78131  3      
  movl %edi, 0x2c(%rsp)                  #  8     0x78134  4      
  movl $0x100309a0, %edi                 #  9     0x78138  5      
  xchgw %ax, %ax                         #  10    0x7813d  3      
  callq .__local_lock_acquire_recursive  #  11    0x78140  5      
  movl 0xffab341(%rip), %eax             #  12    0x78145  6      
  movq %rax, 0x10(%rsp)                  #  13    0x7814b  5      
  addl $0x148, %eax                      #  14    0x78150  5      
  movq %rax, 0x18(%rsp)                  #  15    0x78155  5      
  nop                                    #  16    0x7815a  1      
.L_78160:                                #        0x7815b  0      
  movq 0x10(%rsp), %rax                  #  17    0x7815b  5      
  movl %eax, %eax                        #  18    0x78160  2      
  movl 0x148(%r15,%rax,1), %r12d         #  19    0x78162  8      
  testq %r12, %r12                       #  20    0x7816a  3      
  je .L_78220                            #  21    0x7816d  6      
  movq 0x18(%rsp), %rax                  #  22    0x78173  5      
  nop                                    #  23    0x78178  1      
  movq %rax, 0x20(%rsp)                  #  24    0x78179  5      
  nop                                    #  25    0x7817e  1      
  nop                                    #  26    0x7817f  1      
.L_781a0:                                #        0x78180  0      
  movl %r12d, %r12d                      #  27    0x78180  3      
  movl 0x4(%r15,%r12,1), %ebx            #  28    0x78183  5      
  movl %ebx, %ecx                        #  29    0x78188  2      
  subl $0x1, %ecx                        #  30    0x7818a  3      
  js .L_78200                            #  31    0x7818d  6      
  leal 0x84(%r12,%rbx,4), %ebx           #  32    0x78193  8      
  nop                                    #  33    0x7819b  1      
.L_781c0:                                #        0x7819c  0      
  testq %r13, %r13                       #  34    0x7819c  3      
  je .L_78240                            #  35    0x7819f  6      
  movl %ebx, %eax                        #  36    0x781a5  2      
  movl %eax, %eax                        #  37    0x781a7  2      
  cmpl %r13d, 0x80(%r15,%rax,1)          #  38    0x781a9  8      
  je .L_78240                            #  39    0x781b1  6      
  nop                                    #  40    0x781b7  1      
.L_781e0:                                #        0x781b8  0      
  subl $0x4, %ebx                        #  41    0x781b8  3      
  subl $0x1, %ecx                        #  42    0x781bb  3      
  jns .L_781c0                           #  43    0x781be  6      
  nop                                    #  44    0x781c4  1      
  nop                                    #  45    0x781c5  1      
.L_78200:                                #        0x781c6  0      
  movl $0x62460, %eax                    #  46    0x781c6  5      
  testl %eax, %eax                       #  47    0x781cb  2      
  jne .L_783e0                           #  48    0x781cd  6      
  nop                                    #  49    0x781d3  1      
  nop                                    #  50    0x781d4  1      
.L_78220:                                #        0x781d5  0      
  addl $0x38, %esp                       #  51    0x781d5  3      
  addq %r15, %rsp                        #  52    0x781d8  3      
  movl $0x100309a0, %edi                 #  53    0x781db  5      
  popq %rbx                              #  54    0x781e0  2      
  popq %r12                              #  55    0x781e2  3      
  popq %r13                              #  56    0x781e5  3      
  popq %r14                              #  57    0x781e8  3      
  jmpq .__local_lock_release_recursive   #  58    0x781eb  5      
  nop                                    #  59    0x781f0  1      
.L_78240:                                #        0x781f1  0      
  movl %r12d, %r12d                      #  60    0x781f1  3      
  movl 0x4(%r15,%r12,1), %esi            #  61    0x781f4  5      
  leal -0x80(%rbx), %edx                 #  62    0x781f9  3      
  movl %edx, %edx                        #  63    0x781fc  2      
  movl (%r15,%rdx,1), %eax               #  64    0x781fe  4      
  subl $0x1, %esi                        #  65    0x78202  3      
  cmpl %ecx, %esi                        #  66    0x78205  2      
  je .L_78380                            #  67    0x78207  6      
  nop                                    #  68    0x7820d  1      
  movl %edx, %edx                        #  69    0x7820e  2      
  movl $0x0, (%r15,%rdx,1)               #  70    0x78210  8      
  nop                                    #  71    0x78218  1      
  nop                                    #  72    0x78219  1      
.L_78280:                                #        0x7821a  0      
  testq %rax, %rax                       #  73    0x7821a  3      
  je .L_781e0                            #  74    0x7821d  6      
  movl $0x1, %edx                        #  75    0x78223  5      
  movl %r12d, %r12d                      #  76    0x78228  3      
  movl 0x4(%r15,%r12,1), %r14d           #  77    0x7822b  5      
  shll %cl, %edx                         #  78    0x78230  2      
  nop                                    #  79    0x78232  1      
  movl %r12d, %r12d                      #  80    0x78233  3      
  testl %edx, 0x188(%r15,%r12,1)         #  81    0x78236  8      
  je .L_78340                            #  82    0x7823e  6      
  movl %r12d, %r12d                      #  83    0x78244  3      
  testl %edx, 0x18c(%r15,%r12,1)         #  84    0x78247  8      
  nop                                    #  85    0x7824f  1      
  jne .L_783a0                           #  86    0x78250  6      
  movl %ebx, %edx                        #  87    0x78256  2      
  movl %ecx, 0x8(%rsp)                   #  88    0x78258  4      
  movl 0x2c(%rsp), %edi                  #  89    0x7825c  4      
  movl %edx, %edx                        #  90    0x78260  2      
  movl (%r15,%rdx,1), %esi               #  91    0x78262  4      
  xchgw %ax, %ax                         #  92    0x78266  3      
  andl $0xffffffe0, %eax                 #  93    0x78269  5      
  addq %r15, %rax                        #  94    0x7826e  3      
  callq %rax                             #  95    0x78271  2      
  movl 0x8(%rsp), %ecx                   #  96    0x78273  4      
  nop                                    #  97    0x78277  1      
  nop                                    #  98    0x78278  1      
.L_78300:                                #        0x78279  0      
  movl %r12d, %r12d                      #  99    0x78279  3      
  cmpl %r14d, 0x4(%r15,%r12,1)           #  100   0x7827c  5      
  jne .L_78160                           #  101   0x78281  6      
  movq 0x20(%rsp), %rax                  #  102   0x78287  5      
  movl %eax, %eax                        #  103   0x7828c  2      
  cmpl %r12d, (%r15,%rax,1)              #  104   0x7828e  4      
  jne .L_78160                           #  105   0x78292  6      
  nop                                    #  106   0x78298  1      
  jmpq .L_781e0                          #  107   0x78299  5      
  nop                                    #  108   0x7829e  1      
  nop                                    #  109   0x7829f  1      
.L_78340:                                #        0x782a0  0      
  movl %ecx, 0x8(%rsp)                   #  110   0x782a0  4      
  nop                                    #  111   0x782a4  1      
  nop                                    #  112   0x782a5  1      
  andl $0xffffffe0, %eax                 #  113   0x782a6  5      
  addq %r15, %rax                        #  114   0x782ab  3      
  callq %rax                             #  115   0x782ae  2      
  movl 0x8(%rsp), %ecx                   #  116   0x782b0  4      
  jmpq .L_78300                          #  117   0x782b4  5      
  nop                                    #  118   0x782b9  1      
  nop                                    #  119   0x782ba  1      
.L_78380:                                #        0x782bb  0      
  movl %r12d, %r12d                      #  120   0x782bb  3      
  movl %ecx, 0x4(%r15,%r12,1)            #  121   0x782be  5      
  jmpq .L_78280                          #  122   0x782c3  5      
  nop                                    #  123   0x782c8  1      
  nop                                    #  124   0x782c9  1      
.L_783a0:                                #        0x782ca  0      
  movl %ebx, %edx                        #  125   0x782ca  2      
  movl %ecx, 0x8(%rsp)                   #  126   0x782cc  4      
  movl %edx, %edx                        #  127   0x782d0  2      
  movl (%r15,%rdx,1), %edi               #  128   0x782d2  4      
  nop                                    #  129   0x782d6  1      
  andl $0xffffffe0, %eax                 #  130   0x782d7  5      
  addq %r15, %rax                        #  131   0x782dc  3      
  callq %rax                             #  132   0x782df  2      
  movl 0x8(%rsp), %ecx                   #  133   0x782e1  4      
  jmpq .L_78300                          #  134   0x782e5  5      
  nop                                    #  135   0x782ea  1      
  nop                                    #  136   0x782eb  1      
.L_783e0:                                #        0x782ec  0      
  movl %r12d, %r12d                      #  137   0x782ec  3      
  cmpl $0x0, 0x4(%r15,%r12,1)            #  138   0x782ef  6      
  jne .L_78460                           #  139   0x782f5  6      
  movl %r12d, %r12d                      #  140   0x782fb  3      
  movl (%r15,%r12,1), %edx               #  141   0x782fe  4      
  xorl %eax, %eax                        #  142   0x78302  2      
  testq %rdx, %rdx                       #  143   0x78304  3      
  je .L_78480                            #  144   0x78307  6      
  nop                                    #  145   0x7830d  1      
  movq 0x20(%rsp), %rax                  #  146   0x7830e  5      
  movl %r12d, %edi                       #  147   0x78313  3      
  movl %eax, %eax                        #  148   0x78316  2      
  movl %edx, (%r15,%rax,1)               #  149   0x78318  4      
  nop                                    #  150   0x7831c  1      
  callq .free                            #  151   0x7831d  5      
  movq 0x20(%rsp), %rax                  #  152   0x78322  5      
  movl %eax, %eax                        #  153   0x78327  2      
  movl (%r15,%rax,1), %r12d              #  154   0x78329  4      
  nop                                    #  155   0x7832d  1      
  nop                                    #  156   0x7832e  1      
.L_78440:                                #        0x7832f  0      
  testq %r12, %r12                       #  157   0x7832f  3      
  jne .L_781a0                           #  158   0x78332  6      
  jmpq .L_78220                          #  159   0x78338  5      
  nop                                    #  160   0x7833d  1      
  nop                                    #  161   0x7833e  1      
.L_78460:                                #        0x7833f  0      
  movl %r12d, %r12d                      #  162   0x7833f  3      
  movl (%r15,%r12,1), %eax               #  163   0x78342  4      
  nop                                    #  164   0x78346  1      
  nop                                    #  165   0x78347  1      
.L_78480:                                #        0x78348  0      
  movq %r12, 0x20(%rsp)                  #  166   0x78348  5      
  movq %rax, %r12                        #  167   0x7834d  3      
  jmpq .L_78440                          #  168   0x78350  5      
  nop                                    #  169   0x78355  1      
  nop                                    #  170   0x78356  1      
  nop                                    #  171   0x78357  1      
  nop                                    #  172   0x78358  1      
  nop                                    #  173   0x78359  1      
  nop                                    #  174   0x7835a  1      
  nop                                    #  175   0x7835b  1      
  nop                                    #  176   0x7835c  1      
  nop                                    #  177   0x7835d  1      
  nop                                    #  178   0x7835e  1      
  nop                                    #  179   0x7835f  1      
  nop                                    #  180   0x78360  1      
  nop                                    #  181   0x78361  1      
  nop                                    #  182   0x78362  1      
  nop                                    #  183   0x78363  1      
  nop                                    #  184   0x78364  1      
  nop                                    #  185   0x78365  1      
  nop                                    #  186   0x78366  1      
  nop                                    #  187   0x78367  1      
  nop                                    #  188   0x78368  1      
  nop                                    #  189   0x78369  1      
  nop                                    #  190   0x7836a  1      
                                                                  
.size __call_exitprocs, .-__call_exitprocs

