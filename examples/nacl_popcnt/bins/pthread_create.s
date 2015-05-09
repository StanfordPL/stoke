  .text
  .globl pthread_create
  .type pthread_create, @function

#! file-offset 0x41500
#! rip-offset  0x41500
#! capacity    1120 bytes

# Text                                 #  Line  RIP      Bytes  
.pthread_create:                       #        0x41500  0      
  pushq %r14                           #  1     0x41500  3      
  movl %edi, %edi                      #  2     0x41503  2      
  movl %edx, %edx                      #  3     0x41505  2      
  movl %ecx, %ecx                      #  4     0x41507  2      
  pushq %r13                           #  5     0x41509  3      
  movl %esi, %r13d                     #  6     0x4150c  3      
  pushq %r12                           #  7     0x4150f  3      
  pushq %rbx                           #  8     0x41512  2      
  subl $0x28, %esp                     #  9     0x41514  3      
  addq %r15, %rsp                      #  10    0x41517  3      
  movq %rdi, 0x10(%rsp)                #  11    0x4151a  5      
  movl $0x10036da0, %edi               #  12    0x4151f  5      
  movq %rdx, 0x8(%rsp)                 #  13    0x41524  5      
  movq %rcx, 0x18(%rsp)                #  14    0x41529  5      
  xchgw %ax, %ax                       #  15    0x4152e  3      
  nop                                  #  16    0x41531  1      
  callq .pthread_mutex_lock            #  17    0x41532  5      
  movl $0x3c, %edi                     #  18    0x41537  5      
  nop                                  #  19    0x4153c  1      
  nop                                  #  20    0x4153d  1      
  callq .__nacl_tls_combined_size      #  21    0x4153e  5      
  movl $0x1, %edi                      #  22    0x41543  5      
  movl %eax, %esi                      #  23    0x41548  2      
  nop                                  #  24    0x4154a  1      
  nop                                  #  25    0x4154b  1      
  callq .nc_allocate_memory_block_mu   #  26    0x4154c  5      
  movl %eax, %ebx                      #  27    0x41551  2      
  testq %rbx, %rbx                     #  28    0x41553  3      
  je .L_418c0                          #  29    0x41556  6      
  leal 0x20(%rbx), %edi                #  30    0x4155c  3      
  movl $0x3c, %esi                     #  31    0x4155f  5      
  nop                                  #  32    0x41564  1      
  callq .__nacl_tls_initialize_memory  #  33    0x41565  5      
  movl $0x14, %edi                     #  34    0x4156a  5      
  movl %eax, %r12d                     #  35    0x4156f  3      
  nop                                  #  36    0x41572  1      
  nop                                  #  37    0x41573  1      
  callq .malloc                        #  38    0x41574  5      
  movl %eax, %r14d                     #  39    0x41579  3      
  testq %r14, %r14                     #  40    0x4157c  3      
  je .L_41720                          #  41    0x4157f  6      
  movl %r14d, %esi                     #  42    0x41585  3      
  movl %r12d, %edi                     #  43    0x41588  3      
  nop                                  #  44    0x4158b  1      
  callq .nc_tdb_init                   #  45    0x4158c  5      
  movl 0x8(%rsp), %eax                 #  46    0x41591  4      
  testq %r13, %r13                     #  47    0x41595  3      
  movl %r12d, %r12d                    #  48    0x41598  3      
  movl %ebx, 0x14(%r15,%r12,1)         #  49    0x4159b  5      
  movl $0x80000, %esi                  #  50    0x415a0  5      
  movl $0x80000, 0x8(%rsp)             #  51    0x415a5  8      
  nop                                  #  52    0x415ad  1      
  movl %r12d, %r12d                    #  53    0x415ae  3      
  movl %eax, 0x18(%r15,%r12,1)         #  54    0x415b1  5      
  movl 0x18(%rsp), %eax                #  55    0x415b6  4      
  movl %r12d, %r12d                    #  56    0x415ba  3      
  movl %eax, 0x1c(%r15,%r12,1)         #  57    0x415bd  5      
  je .L_41640                          #  58    0x415c2  6      
  movl %r13d, %r13d                    #  59    0x415c8  3      
  movl (%r15,%r13,1), %eax             #  60    0x415cb  4      
  nop                                  #  61    0x415cf  1      
  movl %r12d, %r12d                    #  62    0x415d0  3      
  movl %eax, 0x8(%r15,%r12,1)          #  63    0x415d3  5      
  movl %r13d, %r13d                    #  64    0x415d8  3      
  movl 0x4(%r15,%r13,1), %r13d         #  65    0x415db  5      
  movl %r13d, 0x8(%rsp)                #  66    0x415e0  5      
  movl %r13d, %esi                     #  67    0x415e5  3      
  nop                                  #  68    0x415e8  1      
.L_41640:                              #        0x415e9  0      
  xorl %edi, %edi                      #  69    0x415e9  2      
  nop                                  #  70    0x415eb  1      
  nop                                  #  71    0x415ec  1      
  callq .nc_allocate_memory_block_mu   #  72    0x415ed  5      
  movl %eax, %r13d                     #  73    0x415f2  3      
  testq %r13, %r13                     #  74    0x415f5  3      
  je .L_41740                          #  75    0x415f8  6      
  movq 0x10(%rsp), %rax                #  76    0x415fe  5      
  movl $0x10036da0, %edi               #  77    0x41603  5      
  movl %r12d, %r12d                    #  78    0x41608  3      
  movl %r13d, 0x10(%r15,%r12,1)        #  79    0x4160b  5      
  xchgw %ax, %ax                       #  80    0x41610  3      
  addl $0x1, 0xffeeece(%rip)           #  81    0x41613  7      
  movl %eax, %eax                      #  82    0x4161a  2      
  movl %r14d, (%r15,%rax,1)            #  83    0x4161c  4      
  nop                                  #  84    0x41620  1      
  callq .pthread_mutex_unlock          #  85    0x41621  5      
  movl 0x8(%rsp), %eax                 #  86    0x41626  4      
  leal 0x3f(%r13), %esi                #  87    0x4162a  4      
  movl %r12d, %edx                     #  88    0x4162e  3      
  movl $0x41960, %edi                  #  89    0x41631  5      
  andl $0xffffffe0, %esi               #  90    0x41636  6      
  leal -0x8(%rax,%rsi,1), %esi         #  91    0x4163c  4      
  nop                                  #  92    0x41640  1      
  movl %esi, %esi                      #  93    0x41641  2      
  movq $0x0, (%r15,%rsi,1)             #  94    0x41643  8      
  movl 0xfff577f(%rip), %eax           #  95    0x4164b  6      
  nop                                  #  96    0x41651  1      
  andl $0xffffffe0, %eax               #  97    0x41652  5      
  addq %r15, %rax                      #  98    0x41657  3      
  callq %rax                           #  99    0x4165a  2      
  testl %eax, %eax                     #  100   0x4165c  2      
  movl %eax, %edx                      #  101   0x4165e  2      
  jne .L_418e0                         #  102   0x41660  6      
  nop                                  #  103   0x41666  1      
  nop                                  #  104   0x41667  1      
.L_41700:                              #        0x41668  0      
  addl $0x28, %esp                     #  105   0x41668  3      
  addq %r15, %rsp                      #  106   0x4166b  3      
  movl %edx, %eax                      #  107   0x4166e  2      
  popq %rbx                            #  108   0x41670  2      
  popq %r12                            #  109   0x41672  3      
  popq %r13                            #  110   0x41675  3      
  popq %r14                            #  111   0x41678  3      
  popq %r11                            #  112   0x4167b  3      
  andl $0xffffffe0, %r11d              #  113   0x4167e  7      
  addq %r15, %r11                      #  114   0x41685  3      
  jmpq %r11                            #  115   0x41688  3      
  nop                                  #  116   0x4168b  1      
.L_41720:                              #        0x4168c  0      
  movl %r12d, %r12d                    #  117   0x4168c  3      
  movl $0x0, 0x24(%r15,%r12,1)         #  118   0x4168f  9      
  nop                                  #  119   0x41698  1      
  nop                                  #  120   0x41699  1      
.L_41740:                              #        0x4169a  0      
  movl $0x10036da0, %edi               #  121   0x4169a  5      
  xorl %r13d, %r13d                    #  122   0x4169f  3      
  nop                                  #  123   0x416a2  1      
  nop                                  #  124   0x416a3  1      
  callq .pthread_mutex_unlock          #  125   0x416a4  5      
  movl $0x10036da0, %edi               #  126   0x416a9  5      
  nop                                  #  127   0x416ae  1      
  nop                                  #  128   0x416af  1      
  callq .pthread_mutex_lock            #  129   0x416b0  5      
  testq %rbx, %rbx                     #  130   0x416b5  3      
  movl $0xb, %edx                      #  131   0x416b8  5      
  je .L_41800                          #  132   0x416bd  6      
  nop                                  #  133   0x416c3  1      
  nop                                  #  134   0x416c4  1      
.L_417a0:                              #        0x416c5  0      
  movl %r12d, %r12d                    #  135   0x416c5  3      
  movl 0x24(%r15,%r12,1), %eax         #  136   0x416c8  5      
  testq %rax, %rax                     #  137   0x416cd  3      
  je .L_417c0                          #  138   0x416d0  6      
  movl %eax, %eax                      #  139   0x416d6  2      
  movl $0x0, 0x10(%r15,%rax,1)         #  140   0x416d8  9      
  nop                                  #  141   0x416e1  1      
.L_417c0:                              #        0x416e2  0      
  movl 0xfff56e4(%rip), %eax           #  142   0x416e2  6      
  movl %ebx, %ebx                      #  143   0x416e8  2      
  movl $0x0, 0x4(%r15,%rbx,1)          #  144   0x416ea  9      
  addl $0x1, 0xfff56be(%rip)           #  145   0x416f3  7      
  nop                                  #  146   0x416fa  1      
  movl %ebx, %ebx                      #  147   0x416fb  2      
  movl $0x0, (%r15,%rbx,1)             #  148   0x416fd  8      
  movl %ebx, 0xfff56c1(%rip)           #  149   0x41705  6      
  movl %eax, %eax                      #  150   0x4170b  2      
  movl %ebx, (%r15,%rax,1)             #  151   0x4170d  4      
  nop                                  #  152   0x41711  1      
.L_41800:                              #        0x41712  0      
  testq %r14, %r14                     #  153   0x41712  3      
  je .L_41840                          #  154   0x41715  6      
  movl %r14d, %edi                     #  155   0x4171b  3      
  movl %edx, (%rsp)                    #  156   0x4171e  3      
  nop                                  #  157   0x41721  1      
  nop                                  #  158   0x41722  1      
  callq .nc_release_basic_data_mu      #  159   0x41723  5      
  movl (%rsp), %edx                    #  160   0x41728  3      
  nop                                  #  161   0x4172b  1      
  nop                                  #  162   0x4172c  1      
.L_41840:                              #        0x4172d  0      
  testq %r13, %r13                     #  163   0x4172d  3      
  je .L_41880                          #  164   0x41730  6      
  movl 0xfff5688(%rip), %eax           #  165   0x41736  6      
  movl %r13d, %r13d                    #  166   0x4173c  3      
  movl $0x0, 0x4(%r15,%r13,1)          #  167   0x4173f  9      
  addl $0x1, 0xfff5665(%rip)           #  168   0x41748  7      
  xchgw %ax, %ax                       #  169   0x4174f  3      
  movl %r13d, %r13d                    #  170   0x41752  3      
  movl $0x0, (%r15,%r13,1)             #  171   0x41755  8      
  movl %r13d, 0xfff5660(%rip)          #  172   0x4175d  7      
  movl %eax, %eax                      #  173   0x41764  2      
  movl %r13d, (%r15,%rax,1)            #  174   0x41766  4      
  nop                                  #  175   0x4176a  1      
.L_41880:                              #        0x4176b  0      
  movl $0x10036da0, %edi               #  176   0x4176b  5      
  movl %edx, (%rsp)                    #  177   0x41770  3      
  nop                                  #  178   0x41773  1      
  nop                                  #  179   0x41774  1      
  callq .pthread_mutex_unlock          #  180   0x41775  5      
  movq 0x10(%rsp), %rax                #  181   0x4177a  5      
  movl (%rsp), %edx                    #  182   0x4177f  3      
  movl %eax, %eax                      #  183   0x41782  2      
  movl $0x0, (%r15,%rax,1)             #  184   0x41784  8      
  jmpq .L_41700                        #  185   0x4178c  5      
  nop                                  #  186   0x41791  1      
.L_418c0:                              #        0x41792  0      
  xorl %r14d, %r14d                    #  187   0x41792  3      
  xorl %r12d, %r12d                    #  188   0x41795  3      
  jmpq .L_41740                        #  189   0x41798  5      
  nop                                  #  190   0x4179d  1      
  nop                                  #  191   0x4179e  1      
.L_418e0:                              #        0x4179f  0      
  movl $0x10036da0, %edi               #  192   0x4179f  5      
  movl %eax, (%rsp)                    #  193   0x417a4  3      
  nop                                  #  194   0x417a7  1      
  nop                                  #  195   0x417a8  1      
  callq .pthread_mutex_lock            #  196   0x417a9  5      
  movl $0x10036da0, %edi               #  197   0x417ae  5      
  subl $0x1, 0xffeed2e(%rip)           #  198   0x417b3  7      
  nop                                  #  199   0x417ba  1      
  callq .pthread_mutex_unlock          #  200   0x417bb  5      
  movl $0x10036da0, %edi               #  201   0x417c0  5      
  nop                                  #  202   0x417c5  1      
  nop                                  #  203   0x417c6  1      
  callq .pthread_mutex_lock            #  204   0x417c7  5      
  movl (%rsp), %edx                    #  205   0x417cc  3      
  jmpq .L_417a0                        #  206   0x417cf  5      
  nop                                  #  207   0x417d4  1      
  nop                                  #  208   0x417d5  1      
                                                                
.size pthread_create, .-pthread_create

