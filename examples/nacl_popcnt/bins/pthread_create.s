  .text
  .globl pthread_create
  .type pthread_create, @function

#! file-offset 0x415a0
#! rip-offset  0x415a0
#! capacity    1120 bytes

# Text                                 #  Line  RIP      Bytes  
.pthread_create:                       #        0x415a0  0      
  pushq %r14                           #  1     0x415a0  3      
  movl %edi, %edi                      #  2     0x415a3  2      
  movl %edx, %edx                      #  3     0x415a5  2      
  movl %ecx, %ecx                      #  4     0x415a7  2      
  pushq %r13                           #  5     0x415a9  3      
  movl %esi, %r13d                     #  6     0x415ac  3      
  pushq %r12                           #  7     0x415af  3      
  pushq %rbx                           #  8     0x415b2  2      
  subl $0x28, %esp                     #  9     0x415b4  3      
  addq %r15, %rsp                      #  10    0x415b7  3      
  movq %rdi, 0x10(%rsp)                #  11    0x415ba  5      
  movl $0x10036da0, %edi               #  12    0x415bf  5      
  movq %rdx, 0x8(%rsp)                 #  13    0x415c4  5      
  movq %rcx, 0x18(%rsp)                #  14    0x415c9  5      
  xchgw %ax, %ax                       #  15    0x415ce  3      
  nop                                  #  16    0x415d1  1      
  callq .pthread_mutex_lock            #  17    0x415d2  5      
  movl $0x3c, %edi                     #  18    0x415d7  5      
  nop                                  #  19    0x415dc  1      
  nop                                  #  20    0x415dd  1      
  callq .__nacl_tls_combined_size      #  21    0x415de  5      
  movl $0x1, %edi                      #  22    0x415e3  5      
  movl %eax, %esi                      #  23    0x415e8  2      
  nop                                  #  24    0x415ea  1      
  nop                                  #  25    0x415eb  1      
  callq .nc_allocate_memory_block_mu   #  26    0x415ec  5      
  movl %eax, %ebx                      #  27    0x415f1  2      
  testq %rbx, %rbx                     #  28    0x415f3  3      
  je .L_41960                          #  29    0x415f6  6      
  leal 0x20(%rbx), %edi                #  30    0x415fc  3      
  movl $0x3c, %esi                     #  31    0x415ff  5      
  nop                                  #  32    0x41604  1      
  callq .__nacl_tls_initialize_memory  #  33    0x41605  5      
  movl $0x14, %edi                     #  34    0x4160a  5      
  movl %eax, %r12d                     #  35    0x4160f  3      
  nop                                  #  36    0x41612  1      
  nop                                  #  37    0x41613  1      
  callq .malloc                        #  38    0x41614  5      
  movl %eax, %r14d                     #  39    0x41619  3      
  testq %r14, %r14                     #  40    0x4161c  3      
  je .L_417c0                          #  41    0x4161f  6      
  movl %r14d, %esi                     #  42    0x41625  3      
  movl %r12d, %edi                     #  43    0x41628  3      
  nop                                  #  44    0x4162b  1      
  callq .nc_tdb_init                   #  45    0x4162c  5      
  movl 0x8(%rsp), %eax                 #  46    0x41631  4      
  testq %r13, %r13                     #  47    0x41635  3      
  movl %r12d, %r12d                    #  48    0x41638  3      
  movl %ebx, 0x14(%r15,%r12,1)         #  49    0x4163b  5      
  movl $0x80000, %esi                  #  50    0x41640  5      
  movl $0x80000, 0x8(%rsp)             #  51    0x41645  8      
  nop                                  #  52    0x4164d  1      
  movl %r12d, %r12d                    #  53    0x4164e  3      
  movl %eax, 0x18(%r15,%r12,1)         #  54    0x41651  5      
  movl 0x18(%rsp), %eax                #  55    0x41656  4      
  movl %r12d, %r12d                    #  56    0x4165a  3      
  movl %eax, 0x1c(%r15,%r12,1)         #  57    0x4165d  5      
  je .L_416e0                          #  58    0x41662  6      
  movl %r13d, %r13d                    #  59    0x41668  3      
  movl (%r15,%r13,1), %eax             #  60    0x4166b  4      
  nop                                  #  61    0x4166f  1      
  movl %r12d, %r12d                    #  62    0x41670  3      
  movl %eax, 0x8(%r15,%r12,1)          #  63    0x41673  5      
  movl %r13d, %r13d                    #  64    0x41678  3      
  movl 0x4(%r15,%r13,1), %r13d         #  65    0x4167b  5      
  movl %r13d, 0x8(%rsp)                #  66    0x41680  5      
  movl %r13d, %esi                     #  67    0x41685  3      
  nop                                  #  68    0x41688  1      
.L_416e0:                              #        0x41689  0      
  xorl %edi, %edi                      #  69    0x41689  2      
  nop                                  #  70    0x4168b  1      
  nop                                  #  71    0x4168c  1      
  callq .nc_allocate_memory_block_mu   #  72    0x4168d  5      
  movl %eax, %r13d                     #  73    0x41692  3      
  testq %r13, %r13                     #  74    0x41695  3      
  je .L_417e0                          #  75    0x41698  6      
  movq 0x10(%rsp), %rax                #  76    0x4169e  5      
  movl $0x10036da0, %edi               #  77    0x416a3  5      
  movl %r12d, %r12d                    #  78    0x416a8  3      
  movl %r13d, 0x10(%r15,%r12,1)        #  79    0x416ab  5      
  xchgw %ax, %ax                       #  80    0x416b0  3      
  addl $0x1, 0xffeee2e(%rip)           #  81    0x416b3  7      
  movl %eax, %eax                      #  82    0x416ba  2      
  movl %r14d, (%r15,%rax,1)            #  83    0x416bc  4      
  nop                                  #  84    0x416c0  1      
  callq .pthread_mutex_unlock          #  85    0x416c1  5      
  movl 0x8(%rsp), %eax                 #  86    0x416c6  4      
  leal 0x3f(%r13), %esi                #  87    0x416ca  4      
  movl %r12d, %edx                     #  88    0x416ce  3      
  movl $0x41a00, %edi                  #  89    0x416d1  5      
  andl $0xffffffe0, %esi               #  90    0x416d6  6      
  leal -0x8(%rax,%rsi,1), %esi         #  91    0x416dc  4      
  nop                                  #  92    0x416e0  1      
  movl %esi, %esi                      #  93    0x416e1  2      
  movq $0x0, (%r15,%rsi,1)             #  94    0x416e3  8      
  movl 0xfff56df(%rip), %eax           #  95    0x416eb  6      
  nop                                  #  96    0x416f1  1      
  andl $0xffffffe0, %eax               #  97    0x416f2  5      
  addq %r15, %rax                      #  98    0x416f7  3      
  callq %rax                           #  99    0x416fa  2      
  testl %eax, %eax                     #  100   0x416fc  2      
  movl %eax, %edx                      #  101   0x416fe  2      
  jne .L_41980                         #  102   0x41700  6      
  nop                                  #  103   0x41706  1      
  nop                                  #  104   0x41707  1      
.L_417a0:                              #        0x41708  0      
  addl $0x28, %esp                     #  105   0x41708  3      
  addq %r15, %rsp                      #  106   0x4170b  3      
  movl %edx, %eax                      #  107   0x4170e  2      
  popq %rbx                            #  108   0x41710  2      
  popq %r12                            #  109   0x41712  3      
  popq %r13                            #  110   0x41715  3      
  popq %r14                            #  111   0x41718  3      
  popq %r11                            #  112   0x4171b  3      
  andl $0xffffffe0, %r11d              #  113   0x4171e  7      
  addq %r15, %r11                      #  114   0x41725  3      
  jmpq %r11                            #  115   0x41728  3      
  nop                                  #  116   0x4172b  1      
.L_417c0:                              #        0x4172c  0      
  movl %r12d, %r12d                    #  117   0x4172c  3      
  movl $0x0, 0x24(%r15,%r12,1)         #  118   0x4172f  9      
  nop                                  #  119   0x41738  1      
  nop                                  #  120   0x41739  1      
.L_417e0:                              #        0x4173a  0      
  movl $0x10036da0, %edi               #  121   0x4173a  5      
  xorl %r13d, %r13d                    #  122   0x4173f  3      
  nop                                  #  123   0x41742  1      
  nop                                  #  124   0x41743  1      
  callq .pthread_mutex_unlock          #  125   0x41744  5      
  movl $0x10036da0, %edi               #  126   0x41749  5      
  nop                                  #  127   0x4174e  1      
  nop                                  #  128   0x4174f  1      
  callq .pthread_mutex_lock            #  129   0x41750  5      
  testq %rbx, %rbx                     #  130   0x41755  3      
  movl $0xb, %edx                      #  131   0x41758  5      
  je .L_418a0                          #  132   0x4175d  6      
  nop                                  #  133   0x41763  1      
  nop                                  #  134   0x41764  1      
.L_41840:                              #        0x41765  0      
  movl %r12d, %r12d                    #  135   0x41765  3      
  movl 0x24(%r15,%r12,1), %eax         #  136   0x41768  5      
  testq %rax, %rax                     #  137   0x4176d  3      
  je .L_41860                          #  138   0x41770  6      
  movl %eax, %eax                      #  139   0x41776  2      
  movl $0x0, 0x10(%r15,%rax,1)         #  140   0x41778  9      
  nop                                  #  141   0x41781  1      
.L_41860:                              #        0x41782  0      
  movl 0xfff5644(%rip), %eax           #  142   0x41782  6      
  movl %ebx, %ebx                      #  143   0x41788  2      
  movl $0x0, 0x4(%r15,%rbx,1)          #  144   0x4178a  9      
  addl $0x1, 0xfff561e(%rip)           #  145   0x41793  7      
  nop                                  #  146   0x4179a  1      
  movl %ebx, %ebx                      #  147   0x4179b  2      
  movl $0x0, (%r15,%rbx,1)             #  148   0x4179d  8      
  movl %ebx, 0xfff5621(%rip)           #  149   0x417a5  6      
  movl %eax, %eax                      #  150   0x417ab  2      
  movl %ebx, (%r15,%rax,1)             #  151   0x417ad  4      
  nop                                  #  152   0x417b1  1      
.L_418a0:                              #        0x417b2  0      
  testq %r14, %r14                     #  153   0x417b2  3      
  je .L_418e0                          #  154   0x417b5  6      
  movl %r14d, %edi                     #  155   0x417bb  3      
  movl %edx, (%rsp)                    #  156   0x417be  3      
  nop                                  #  157   0x417c1  1      
  nop                                  #  158   0x417c2  1      
  callq .nc_release_basic_data_mu      #  159   0x417c3  5      
  movl (%rsp), %edx                    #  160   0x417c8  3      
  nop                                  #  161   0x417cb  1      
  nop                                  #  162   0x417cc  1      
.L_418e0:                              #        0x417cd  0      
  testq %r13, %r13                     #  163   0x417cd  3      
  je .L_41920                          #  164   0x417d0  6      
  movl 0xfff55e8(%rip), %eax           #  165   0x417d6  6      
  movl %r13d, %r13d                    #  166   0x417dc  3      
  movl $0x0, 0x4(%r15,%r13,1)          #  167   0x417df  9      
  addl $0x1, 0xfff55c5(%rip)           #  168   0x417e8  7      
  xchgw %ax, %ax                       #  169   0x417ef  3      
  movl %r13d, %r13d                    #  170   0x417f2  3      
  movl $0x0, (%r15,%r13,1)             #  171   0x417f5  8      
  movl %r13d, 0xfff55c0(%rip)          #  172   0x417fd  7      
  movl %eax, %eax                      #  173   0x41804  2      
  movl %r13d, (%r15,%rax,1)            #  174   0x41806  4      
  nop                                  #  175   0x4180a  1      
.L_41920:                              #        0x4180b  0      
  movl $0x10036da0, %edi               #  176   0x4180b  5      
  movl %edx, (%rsp)                    #  177   0x41810  3      
  nop                                  #  178   0x41813  1      
  nop                                  #  179   0x41814  1      
  callq .pthread_mutex_unlock          #  180   0x41815  5      
  movq 0x10(%rsp), %rax                #  181   0x4181a  5      
  movl (%rsp), %edx                    #  182   0x4181f  3      
  movl %eax, %eax                      #  183   0x41822  2      
  movl $0x0, (%r15,%rax,1)             #  184   0x41824  8      
  jmpq .L_417a0                        #  185   0x4182c  5      
  nop                                  #  186   0x41831  1      
.L_41960:                              #        0x41832  0      
  xorl %r14d, %r14d                    #  187   0x41832  3      
  xorl %r12d, %r12d                    #  188   0x41835  3      
  jmpq .L_417e0                        #  189   0x41838  5      
  nop                                  #  190   0x4183d  1      
  nop                                  #  191   0x4183e  1      
.L_41980:                              #        0x4183f  0      
  movl $0x10036da0, %edi               #  192   0x4183f  5      
  movl %eax, (%rsp)                    #  193   0x41844  3      
  nop                                  #  194   0x41847  1      
  nop                                  #  195   0x41848  1      
  callq .pthread_mutex_lock            #  196   0x41849  5      
  movl $0x10036da0, %edi               #  197   0x4184e  5      
  subl $0x1, 0xffeec8e(%rip)           #  198   0x41853  7      
  nop                                  #  199   0x4185a  1      
  callq .pthread_mutex_unlock          #  200   0x4185b  5      
  movl $0x10036da0, %edi               #  201   0x41860  5      
  nop                                  #  202   0x41865  1      
  nop                                  #  203   0x41866  1      
  callq .pthread_mutex_lock            #  204   0x41867  5      
  movl (%rsp), %edx                    #  205   0x4186c  3      
  jmpq .L_41840                        #  206   0x4186f  5      
  nop                                  #  207   0x41874  1      
  nop                                  #  208   0x41875  1      
                                                                
.size pthread_create, .-pthread_create

