  .text
  .globl __call_exitprocs
  .type __call_exitprocs, @function

#! file-offset 0x780a0
#! rip-offset  0x780a0
#! capacity    896 bytes

# Text                                   #  Line  RIP      Bytes  
.__call_exitprocs:                       #        0x780a0  0      
  pushq %r14                             #  1     0x780a0  3      
  pushq %r13                             #  2     0x780a3  3      
  movl %esi, %r13d                       #  3     0x780a6  3      
  pushq %r12                             #  4     0x780a9  3      
  pushq %rbx                             #  5     0x780ac  2      
  subl $0x38, %esp                       #  6     0x780ae  3      
  addq %r15, %rsp                        #  7     0x780b1  3      
  movl %edi, 0x2c(%rsp)                  #  8     0x780b4  4      
  movl $0x100309a0, %edi                 #  9     0x780b8  5      
  xchgw %ax, %ax                         #  10    0x780bd  3      
  callq .__local_lock_acquire_recursive  #  11    0x780c0  5      
  movl 0xffab3c1(%rip), %eax             #  12    0x780c5  6      
  movq %rax, 0x10(%rsp)                  #  13    0x780cb  5      
  addl $0x148, %eax                      #  14    0x780d0  5      
  movq %rax, 0x18(%rsp)                  #  15    0x780d5  5      
  nop                                    #  16    0x780da  1      
.L_780e0:                                #        0x780db  0      
  movq 0x10(%rsp), %rax                  #  17    0x780db  5      
  movl %eax, %eax                        #  18    0x780e0  2      
  movl 0x148(%r15,%rax,1), %r12d         #  19    0x780e2  8      
  testq %r12, %r12                       #  20    0x780ea  3      
  je .L_781a0                            #  21    0x780ed  6      
  movq 0x18(%rsp), %rax                  #  22    0x780f3  5      
  nop                                    #  23    0x780f8  1      
  movq %rax, 0x20(%rsp)                  #  24    0x780f9  5      
  nop                                    #  25    0x780fe  1      
  nop                                    #  26    0x780ff  1      
.L_78120:                                #        0x78100  0      
  movl %r12d, %r12d                      #  27    0x78100  3      
  movl 0x4(%r15,%r12,1), %ebx            #  28    0x78103  5      
  movl %ebx, %ecx                        #  29    0x78108  2      
  subl $0x1, %ecx                        #  30    0x7810a  3      
  js .L_78180                            #  31    0x7810d  6      
  leal 0x84(%r12,%rbx,4), %ebx           #  32    0x78113  8      
  nop                                    #  33    0x7811b  1      
.L_78140:                                #        0x7811c  0      
  testq %r13, %r13                       #  34    0x7811c  3      
  je .L_781c0                            #  35    0x7811f  6      
  movl %ebx, %eax                        #  36    0x78125  2      
  movl %eax, %eax                        #  37    0x78127  2      
  cmpl %r13d, 0x80(%r15,%rax,1)          #  38    0x78129  8      
  je .L_781c0                            #  39    0x78131  6      
  nop                                    #  40    0x78137  1      
.L_78160:                                #        0x78138  0      
  subl $0x4, %ebx                        #  41    0x78138  3      
  subl $0x1, %ecx                        #  42    0x7813b  3      
  jns .L_78140                           #  43    0x7813e  6      
  nop                                    #  44    0x78144  1      
  nop                                    #  45    0x78145  1      
.L_78180:                                #        0x78146  0      
  movl $0x623e0, %eax                    #  46    0x78146  5      
  testl %eax, %eax                       #  47    0x7814b  2      
  jne .L_78360                           #  48    0x7814d  6      
  nop                                    #  49    0x78153  1      
  nop                                    #  50    0x78154  1      
.L_781a0:                                #        0x78155  0      
  addl $0x38, %esp                       #  51    0x78155  3      
  addq %r15, %rsp                        #  52    0x78158  3      
  movl $0x100309a0, %edi                 #  53    0x7815b  5      
  popq %rbx                              #  54    0x78160  2      
  popq %r12                              #  55    0x78162  3      
  popq %r13                              #  56    0x78165  3      
  popq %r14                              #  57    0x78168  3      
  jmpq .__local_lock_release_recursive   #  58    0x7816b  5      
  nop                                    #  59    0x78170  1      
.L_781c0:                                #        0x78171  0      
  movl %r12d, %r12d                      #  60    0x78171  3      
  movl 0x4(%r15,%r12,1), %esi            #  61    0x78174  5      
  leal -0x80(%rbx), %edx                 #  62    0x78179  3      
  movl %edx, %edx                        #  63    0x7817c  2      
  movl (%r15,%rdx,1), %eax               #  64    0x7817e  4      
  subl $0x1, %esi                        #  65    0x78182  3      
  cmpl %ecx, %esi                        #  66    0x78185  2      
  je .L_78300                            #  67    0x78187  6      
  nop                                    #  68    0x7818d  1      
  movl %edx, %edx                        #  69    0x7818e  2      
  movl $0x0, (%r15,%rdx,1)               #  70    0x78190  8      
  nop                                    #  71    0x78198  1      
  nop                                    #  72    0x78199  1      
.L_78200:                                #        0x7819a  0      
  testq %rax, %rax                       #  73    0x7819a  3      
  je .L_78160                            #  74    0x7819d  6      
  movl $0x1, %edx                        #  75    0x781a3  5      
  movl %r12d, %r12d                      #  76    0x781a8  3      
  movl 0x4(%r15,%r12,1), %r14d           #  77    0x781ab  5      
  shll %cl, %edx                         #  78    0x781b0  2      
  nop                                    #  79    0x781b2  1      
  movl %r12d, %r12d                      #  80    0x781b3  3      
  testl %edx, 0x188(%r15,%r12,1)         #  81    0x781b6  8      
  je .L_782c0                            #  82    0x781be  6      
  movl %r12d, %r12d                      #  83    0x781c4  3      
  testl %edx, 0x18c(%r15,%r12,1)         #  84    0x781c7  8      
  nop                                    #  85    0x781cf  1      
  jne .L_78320                           #  86    0x781d0  6      
  movl %ebx, %edx                        #  87    0x781d6  2      
  movl %ecx, 0x8(%rsp)                   #  88    0x781d8  4      
  movl 0x2c(%rsp), %edi                  #  89    0x781dc  4      
  movl %edx, %edx                        #  90    0x781e0  2      
  movl (%r15,%rdx,1), %esi               #  91    0x781e2  4      
  xchgw %ax, %ax                         #  92    0x781e6  3      
  andl $0xffffffe0, %eax                 #  93    0x781e9  5      
  addq %r15, %rax                        #  94    0x781ee  3      
  callq %rax                             #  95    0x781f1  2      
  movl 0x8(%rsp), %ecx                   #  96    0x781f3  4      
  nop                                    #  97    0x781f7  1      
  nop                                    #  98    0x781f8  1      
.L_78280:                                #        0x781f9  0      
  movl %r12d, %r12d                      #  99    0x781f9  3      
  cmpl %r14d, 0x4(%r15,%r12,1)           #  100   0x781fc  5      
  jne .L_780e0                           #  101   0x78201  6      
  movq 0x20(%rsp), %rax                  #  102   0x78207  5      
  movl %eax, %eax                        #  103   0x7820c  2      
  cmpl %r12d, (%r15,%rax,1)              #  104   0x7820e  4      
  jne .L_780e0                           #  105   0x78212  6      
  nop                                    #  106   0x78218  1      
  jmpq .L_78160                          #  107   0x78219  5      
  nop                                    #  108   0x7821e  1      
  nop                                    #  109   0x7821f  1      
.L_782c0:                                #        0x78220  0      
  movl %ecx, 0x8(%rsp)                   #  110   0x78220  4      
  nop                                    #  111   0x78224  1      
  nop                                    #  112   0x78225  1      
  andl $0xffffffe0, %eax                 #  113   0x78226  5      
  addq %r15, %rax                        #  114   0x7822b  3      
  callq %rax                             #  115   0x7822e  2      
  movl 0x8(%rsp), %ecx                   #  116   0x78230  4      
  jmpq .L_78280                          #  117   0x78234  5      
  nop                                    #  118   0x78239  1      
  nop                                    #  119   0x7823a  1      
.L_78300:                                #        0x7823b  0      
  movl %r12d, %r12d                      #  120   0x7823b  3      
  movl %ecx, 0x4(%r15,%r12,1)            #  121   0x7823e  5      
  jmpq .L_78200                          #  122   0x78243  5      
  nop                                    #  123   0x78248  1      
  nop                                    #  124   0x78249  1      
.L_78320:                                #        0x7824a  0      
  movl %ebx, %edx                        #  125   0x7824a  2      
  movl %ecx, 0x8(%rsp)                   #  126   0x7824c  4      
  movl %edx, %edx                        #  127   0x78250  2      
  movl (%r15,%rdx,1), %edi               #  128   0x78252  4      
  nop                                    #  129   0x78256  1      
  andl $0xffffffe0, %eax                 #  130   0x78257  5      
  addq %r15, %rax                        #  131   0x7825c  3      
  callq %rax                             #  132   0x7825f  2      
  movl 0x8(%rsp), %ecx                   #  133   0x78261  4      
  jmpq .L_78280                          #  134   0x78265  5      
  nop                                    #  135   0x7826a  1      
  nop                                    #  136   0x7826b  1      
.L_78360:                                #        0x7826c  0      
  movl %r12d, %r12d                      #  137   0x7826c  3      
  cmpl $0x0, 0x4(%r15,%r12,1)            #  138   0x7826f  6      
  jne .L_783e0                           #  139   0x78275  6      
  movl %r12d, %r12d                      #  140   0x7827b  3      
  movl (%r15,%r12,1), %edx               #  141   0x7827e  4      
  xorl %eax, %eax                        #  142   0x78282  2      
  testq %rdx, %rdx                       #  143   0x78284  3      
  je .L_78400                            #  144   0x78287  6      
  nop                                    #  145   0x7828d  1      
  movq 0x20(%rsp), %rax                  #  146   0x7828e  5      
  movl %r12d, %edi                       #  147   0x78293  3      
  movl %eax, %eax                        #  148   0x78296  2      
  movl %edx, (%r15,%rax,1)               #  149   0x78298  4      
  nop                                    #  150   0x7829c  1      
  callq .free                            #  151   0x7829d  5      
  movq 0x20(%rsp), %rax                  #  152   0x782a2  5      
  movl %eax, %eax                        #  153   0x782a7  2      
  movl (%r15,%rax,1), %r12d              #  154   0x782a9  4      
  nop                                    #  155   0x782ad  1      
  nop                                    #  156   0x782ae  1      
.L_783c0:                                #        0x782af  0      
  testq %r12, %r12                       #  157   0x782af  3      
  jne .L_78120                           #  158   0x782b2  6      
  jmpq .L_781a0                          #  159   0x782b8  5      
  nop                                    #  160   0x782bd  1      
  nop                                    #  161   0x782be  1      
.L_783e0:                                #        0x782bf  0      
  movl %r12d, %r12d                      #  162   0x782bf  3      
  movl (%r15,%r12,1), %eax               #  163   0x782c2  4      
  nop                                    #  164   0x782c6  1      
  nop                                    #  165   0x782c7  1      
.L_78400:                                #        0x782c8  0      
  movq %r12, 0x20(%rsp)                  #  166   0x782c8  5      
  movq %rax, %r12                        #  167   0x782cd  3      
  jmpq .L_783c0                          #  168   0x782d0  5      
  nop                                    #  169   0x782d5  1      
  nop                                    #  170   0x782d6  1      
  nop                                    #  171   0x782d7  1      
  nop                                    #  172   0x782d8  1      
  nop                                    #  173   0x782d9  1      
  nop                                    #  174   0x782da  1      
  nop                                    #  175   0x782db  1      
  nop                                    #  176   0x782dc  1      
  nop                                    #  177   0x782dd  1      
  nop                                    #  178   0x782de  1      
  nop                                    #  179   0x782df  1      
  nop                                    #  180   0x782e0  1      
  nop                                    #  181   0x782e1  1      
  nop                                    #  182   0x782e2  1      
  nop                                    #  183   0x782e3  1      
  nop                                    #  184   0x782e4  1      
  nop                                    #  185   0x782e5  1      
  nop                                    #  186   0x782e6  1      
  nop                                    #  187   0x782e7  1      
  nop                                    #  188   0x782e8  1      
  nop                                    #  189   0x782e9  1      
  nop                                    #  190   0x782ea  1      
                                                                  
.size __call_exitprocs, .-__call_exitprocs

