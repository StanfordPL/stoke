  .text
  .globl pthread_create
  .type pthread_create, @function

#! file-offset 0x41520
#! rip-offset  0x41520
#! capacity    1120 bytes

# Text                                 #  Line  RIP      Bytes  
.pthread_create:                       #        0x41520  0      
  pushq %r14                           #  1     0x41520  3      
  movl %edi, %edi                      #  2     0x41523  2      
  movl %edx, %edx                      #  3     0x41525  2      
  movl %ecx, %ecx                      #  4     0x41527  2      
  pushq %r13                           #  5     0x41529  3      
  movl %esi, %r13d                     #  6     0x4152c  3      
  pushq %r12                           #  7     0x4152f  3      
  pushq %rbx                           #  8     0x41532  2      
  subl $0x28, %esp                     #  9     0x41534  3      
  addq %r15, %rsp                      #  10    0x41537  3      
  movq %rdi, 0x10(%rsp)                #  11    0x4153a  5      
  movl $0x10036da0, %edi               #  12    0x4153f  5      
  movq %rdx, 0x8(%rsp)                 #  13    0x41544  5      
  movq %rcx, 0x18(%rsp)                #  14    0x41549  5      
  xchgw %ax, %ax                       #  15    0x4154e  3      
  nop                                  #  16    0x41551  1      
  callq .pthread_mutex_lock            #  17    0x41552  5      
  movl $0x3c, %edi                     #  18    0x41557  5      
  nop                                  #  19    0x4155c  1      
  nop                                  #  20    0x4155d  1      
  callq .__nacl_tls_combined_size      #  21    0x4155e  5      
  movl $0x1, %edi                      #  22    0x41563  5      
  movl %eax, %esi                      #  23    0x41568  2      
  nop                                  #  24    0x4156a  1      
  nop                                  #  25    0x4156b  1      
  callq .nc_allocate_memory_block_mu   #  26    0x4156c  5      
  movl %eax, %ebx                      #  27    0x41571  2      
  testq %rbx, %rbx                     #  28    0x41573  3      
  je .L_418e0                          #  29    0x41576  6      
  leal 0x20(%rbx), %edi                #  30    0x4157c  3      
  movl $0x3c, %esi                     #  31    0x4157f  5      
  nop                                  #  32    0x41584  1      
  callq .__nacl_tls_initialize_memory  #  33    0x41585  5      
  movl $0x14, %edi                     #  34    0x4158a  5      
  movl %eax, %r12d                     #  35    0x4158f  3      
  nop                                  #  36    0x41592  1      
  nop                                  #  37    0x41593  1      
  callq .malloc                        #  38    0x41594  5      
  movl %eax, %r14d                     #  39    0x41599  3      
  testq %r14, %r14                     #  40    0x4159c  3      
  je .L_41740                          #  41    0x4159f  6      
  movl %r14d, %esi                     #  42    0x415a5  3      
  movl %r12d, %edi                     #  43    0x415a8  3      
  nop                                  #  44    0x415ab  1      
  callq .nc_tdb_init                   #  45    0x415ac  5      
  movl 0x8(%rsp), %eax                 #  46    0x415b1  4      
  testq %r13, %r13                     #  47    0x415b5  3      
  movl %r12d, %r12d                    #  48    0x415b8  3      
  movl %ebx, 0x14(%r15,%r12,1)         #  49    0x415bb  5      
  movl $0x80000, %esi                  #  50    0x415c0  5      
  movl $0x80000, 0x8(%rsp)             #  51    0x415c5  8      
  nop                                  #  52    0x415cd  1      
  movl %r12d, %r12d                    #  53    0x415ce  3      
  movl %eax, 0x18(%r15,%r12,1)         #  54    0x415d1  5      
  movl 0x18(%rsp), %eax                #  55    0x415d6  4      
  movl %r12d, %r12d                    #  56    0x415da  3      
  movl %eax, 0x1c(%r15,%r12,1)         #  57    0x415dd  5      
  je .L_41660                          #  58    0x415e2  6      
  movl %r13d, %r13d                    #  59    0x415e8  3      
  movl (%r15,%r13,1), %eax             #  60    0x415eb  4      
  nop                                  #  61    0x415ef  1      
  movl %r12d, %r12d                    #  62    0x415f0  3      
  movl %eax, 0x8(%r15,%r12,1)          #  63    0x415f3  5      
  movl %r13d, %r13d                    #  64    0x415f8  3      
  movl 0x4(%r15,%r13,1), %r13d         #  65    0x415fb  5      
  movl %r13d, 0x8(%rsp)                #  66    0x41600  5      
  movl %r13d, %esi                     #  67    0x41605  3      
  nop                                  #  68    0x41608  1      
.L_41660:                              #        0x41609  0      
  xorl %edi, %edi                      #  69    0x41609  2      
  nop                                  #  70    0x4160b  1      
  nop                                  #  71    0x4160c  1      
  callq .nc_allocate_memory_block_mu   #  72    0x4160d  5      
  movl %eax, %r13d                     #  73    0x41612  3      
  testq %r13, %r13                     #  74    0x41615  3      
  je .L_41760                          #  75    0x41618  6      
  movq 0x10(%rsp), %rax                #  76    0x4161e  5      
  movl $0x10036da0, %edi               #  77    0x41623  5      
  movl %r12d, %r12d                    #  78    0x41628  3      
  movl %r13d, 0x10(%r15,%r12,1)        #  79    0x4162b  5      
  xchgw %ax, %ax                       #  80    0x41630  3      
  addl $0x1, 0xffeeeae(%rip)           #  81    0x41633  7      
  movl %eax, %eax                      #  82    0x4163a  2      
  movl %r14d, (%r15,%rax,1)            #  83    0x4163c  4      
  nop                                  #  84    0x41640  1      
  callq .pthread_mutex_unlock          #  85    0x41641  5      
  movl 0x8(%rsp), %eax                 #  86    0x41646  4      
  leal 0x3f(%r13), %esi                #  87    0x4164a  4      
  movl %r12d, %edx                     #  88    0x4164e  3      
  movl $0x41980, %edi                  #  89    0x41651  5      
  andl $0xffffffe0, %esi               #  90    0x41656  6      
  leal -0x8(%rax,%rsi,1), %esi         #  91    0x4165c  4      
  nop                                  #  92    0x41660  1      
  movl %esi, %esi                      #  93    0x41661  2      
  movq $0x0, (%r15,%rsi,1)             #  94    0x41663  8      
  movl 0xfff575f(%rip), %eax           #  95    0x4166b  6      
  nop                                  #  96    0x41671  1      
  andl $0xffffffe0, %eax               #  97    0x41672  5      
  addq %r15, %rax                      #  98    0x41677  3      
  callq %rax                           #  99    0x4167a  2      
  testl %eax, %eax                     #  100   0x4167c  2      
  movl %eax, %edx                      #  101   0x4167e  2      
  jne .L_41900                         #  102   0x41680  6      
  nop                                  #  103   0x41686  1      
  nop                                  #  104   0x41687  1      
.L_41720:                              #        0x41688  0      
  addl $0x28, %esp                     #  105   0x41688  3      
  addq %r15, %rsp                      #  106   0x4168b  3      
  movl %edx, %eax                      #  107   0x4168e  2      
  popq %rbx                            #  108   0x41690  2      
  popq %r12                            #  109   0x41692  3      
  popq %r13                            #  110   0x41695  3      
  popq %r14                            #  111   0x41698  3      
  popq %r11                            #  112   0x4169b  3      
  andl $0xffffffe0, %r11d              #  113   0x4169e  7      
  addq %r15, %r11                      #  114   0x416a5  3      
  jmpq %r11                            #  115   0x416a8  3      
  nop                                  #  116   0x416ab  1      
.L_41740:                              #        0x416ac  0      
  movl %r12d, %r12d                    #  117   0x416ac  3      
  movl $0x0, 0x24(%r15,%r12,1)         #  118   0x416af  9      
  nop                                  #  119   0x416b8  1      
  nop                                  #  120   0x416b9  1      
.L_41760:                              #        0x416ba  0      
  movl $0x10036da0, %edi               #  121   0x416ba  5      
  xorl %r13d, %r13d                    #  122   0x416bf  3      
  nop                                  #  123   0x416c2  1      
  nop                                  #  124   0x416c3  1      
  callq .pthread_mutex_unlock          #  125   0x416c4  5      
  movl $0x10036da0, %edi               #  126   0x416c9  5      
  nop                                  #  127   0x416ce  1      
  nop                                  #  128   0x416cf  1      
  callq .pthread_mutex_lock            #  129   0x416d0  5      
  testq %rbx, %rbx                     #  130   0x416d5  3      
  movl $0xb, %edx                      #  131   0x416d8  5      
  je .L_41820                          #  132   0x416dd  6      
  nop                                  #  133   0x416e3  1      
  nop                                  #  134   0x416e4  1      
.L_417c0:                              #        0x416e5  0      
  movl %r12d, %r12d                    #  135   0x416e5  3      
  movl 0x24(%r15,%r12,1), %eax         #  136   0x416e8  5      
  testq %rax, %rax                     #  137   0x416ed  3      
  je .L_417e0                          #  138   0x416f0  6      
  movl %eax, %eax                      #  139   0x416f6  2      
  movl $0x0, 0x10(%r15,%rax,1)         #  140   0x416f8  9      
  nop                                  #  141   0x41701  1      
.L_417e0:                              #        0x41702  0      
  movl 0xfff56c4(%rip), %eax           #  142   0x41702  6      
  movl %ebx, %ebx                      #  143   0x41708  2      
  movl $0x0, 0x4(%r15,%rbx,1)          #  144   0x4170a  9      
  addl $0x1, 0xfff569e(%rip)           #  145   0x41713  7      
  nop                                  #  146   0x4171a  1      
  movl %ebx, %ebx                      #  147   0x4171b  2      
  movl $0x0, (%r15,%rbx,1)             #  148   0x4171d  8      
  movl %ebx, 0xfff56a1(%rip)           #  149   0x41725  6      
  movl %eax, %eax                      #  150   0x4172b  2      
  movl %ebx, (%r15,%rax,1)             #  151   0x4172d  4      
  nop                                  #  152   0x41731  1      
.L_41820:                              #        0x41732  0      
  testq %r14, %r14                     #  153   0x41732  3      
  je .L_41860                          #  154   0x41735  6      
  movl %r14d, %edi                     #  155   0x4173b  3      
  movl %edx, (%rsp)                    #  156   0x4173e  3      
  nop                                  #  157   0x41741  1      
  nop                                  #  158   0x41742  1      
  callq .nc_release_basic_data_mu      #  159   0x41743  5      
  movl (%rsp), %edx                    #  160   0x41748  3      
  nop                                  #  161   0x4174b  1      
  nop                                  #  162   0x4174c  1      
.L_41860:                              #        0x4174d  0      
  testq %r13, %r13                     #  163   0x4174d  3      
  je .L_418a0                          #  164   0x41750  6      
  movl 0xfff5668(%rip), %eax           #  165   0x41756  6      
  movl %r13d, %r13d                    #  166   0x4175c  3      
  movl $0x0, 0x4(%r15,%r13,1)          #  167   0x4175f  9      
  addl $0x1, 0xfff5645(%rip)           #  168   0x41768  7      
  xchgw %ax, %ax                       #  169   0x4176f  3      
  movl %r13d, %r13d                    #  170   0x41772  3      
  movl $0x0, (%r15,%r13,1)             #  171   0x41775  8      
  movl %r13d, 0xfff5640(%rip)          #  172   0x4177d  7      
  movl %eax, %eax                      #  173   0x41784  2      
  movl %r13d, (%r15,%rax,1)            #  174   0x41786  4      
  nop                                  #  175   0x4178a  1      
.L_418a0:                              #        0x4178b  0      
  movl $0x10036da0, %edi               #  176   0x4178b  5      
  movl %edx, (%rsp)                    #  177   0x41790  3      
  nop                                  #  178   0x41793  1      
  nop                                  #  179   0x41794  1      
  callq .pthread_mutex_unlock          #  180   0x41795  5      
  movq 0x10(%rsp), %rax                #  181   0x4179a  5      
  movl (%rsp), %edx                    #  182   0x4179f  3      
  movl %eax, %eax                      #  183   0x417a2  2      
  movl $0x0, (%r15,%rax,1)             #  184   0x417a4  8      
  jmpq .L_41720                        #  185   0x417ac  5      
  nop                                  #  186   0x417b1  1      
.L_418e0:                              #        0x417b2  0      
  xorl %r14d, %r14d                    #  187   0x417b2  3      
  xorl %r12d, %r12d                    #  188   0x417b5  3      
  jmpq .L_41760                        #  189   0x417b8  5      
  nop                                  #  190   0x417bd  1      
  nop                                  #  191   0x417be  1      
.L_41900:                              #        0x417bf  0      
  movl $0x10036da0, %edi               #  192   0x417bf  5      
  movl %eax, (%rsp)                    #  193   0x417c4  3      
  nop                                  #  194   0x417c7  1      
  nop                                  #  195   0x417c8  1      
  callq .pthread_mutex_lock            #  196   0x417c9  5      
  movl $0x10036da0, %edi               #  197   0x417ce  5      
  subl $0x1, 0xffeed0e(%rip)           #  198   0x417d3  7      
  nop                                  #  199   0x417da  1      
  callq .pthread_mutex_unlock          #  200   0x417db  5      
  movl $0x10036da0, %edi               #  201   0x417e0  5      
  nop                                  #  202   0x417e5  1      
  nop                                  #  203   0x417e6  1      
  callq .pthread_mutex_lock            #  204   0x417e7  5      
  movl (%rsp), %edx                    #  205   0x417ec  3      
  jmpq .L_417c0                        #  206   0x417ef  5      
  nop                                  #  207   0x417f4  1      
  nop                                  #  208   0x417f5  1      
                                                                
.size pthread_create, .-pthread_create

