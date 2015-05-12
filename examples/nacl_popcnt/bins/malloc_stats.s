  .text
  .globl malloc_stats
  .type malloc_stats, @function

#! file-offset 0x634a0
#! rip-offset  0x634a0
#! capacity    928 bytes

# Text                            #  Line  RIP      Bytes  
.malloc_stats:                    #        0x634a0  0      
  pushq %r14                      #  1     0x634a0  3      
  pushq %r13                      #  2     0x634a3  3      
  pushq %r12                      #  3     0x634a6  3      
  pushq %rbx                      #  4     0x634a9  2      
  subl $0x8, %esp                 #  5     0x634ab  3      
  addq %r15, %rsp                 #  6     0x634ae  3      
  movl 0xffd33d8(%rip), %r10d     #  7     0x634b1  7      
  testl %r10d, %r10d              #  8     0x634b8  3      
  je .L_63740                     #  9     0x634bb  6      
  xorl %r11d, %r11d               #  10    0x634c1  3      
  testb $0x2, 0xffd35b1(%rip)     #  11    0x634c4  7      
  jne .L_63780                    #  12    0x634cb  6      
  nop                             #  13    0x634d1  1      
  nop                             #  14    0x634d2  1      
.L_634e0:                         #        0x634d3  0      
  movl 0xffd33fe(%rip), %r8d      #  15    0x634d3  7      
  testq %r8, %r8                  #  16    0x634da  3      
  je .L_637c0                     #  17    0x634dd  6      
  nop                             #  18    0x634e3  1      
  nop                             #  19    0x634e4  1      
.L_63500:                         #        0x634e5  0      
  movl 0xffd3584(%rip), %r13d     #  20    0x634e5  7      
  movl 0xffd3581(%rip), %r14d     #  21    0x634ec  7      
  movl $0x10036a84, %r9d          #  22    0x634f3  6      
  movl %r9d, %r9d                 #  23    0x634f9  3      
  movl $0x8, %r10d                #  24    0x634fc  6      
  nop                             #  25    0x63502  1      
  leal -0x28(%r13), %ebx          #  26    0x63503  4      
  subl 0xffd33bf(%rip), %ebx      #  27    0x63507  6      
  nop                             #  28    0x6350d  1      
  nop                             #  29    0x6350e  1      
.L_63540:                         #        0x6350f  0      
  movl %r9d, %r9d                 #  30    0x6350f  3      
  movl (%r15,%r9,1), %esi         #  31    0x63512  4      
  movl %esi, %eax                 #  32    0x63516  2      
  movq %rsi, %rdx                 #  33    0x63518  3      
  andl $0x7, %eax                 #  34    0x6351b  3      
  je .L_63580                     #  35    0x6351e  6      
  movl %r10d, %edx                #  36    0x63524  3      
  subl %eax, %edx                 #  37    0x63527  2      
  andl $0x7, %edx                 #  38    0x63529  3      
  addl %esi, %edx                 #  39    0x6352c  2      
  cmpl %edx, %esi                 #  40    0x6352e  2      
  nop                             #  41    0x63530  1      
  ja .L_63620                     #  42    0x63531  6      
  nop                             #  43    0x63537  1      
  nop                             #  44    0x63538  1      
.L_63580:                         #        0x63539  0      
  movl %r9d, %r9d                 #  45    0x63539  3      
  movl 0x4(%r15,%r9,1), %edi      #  46    0x6353c  5      
  addl %esi, %edi                 #  47    0x63541  2      
  cmpl %edi, %edx                 #  48    0x63543  2      
  jae .L_63620                    #  49    0x63545  6      
  cmpl %edx, %r8d                 #  50    0x6354b  3      
  movq %rdx, %rax                 #  51    0x6354e  3      
  je .L_63620                     #  52    0x63551  6      
  xchgw %ax, %ax                  #  53    0x63557  3      
  movl %edx, %edx                 #  54    0x6355a  2      
  movl 0x4(%r15,%rdx,1), %edx     #  55    0x6355c  5      
  cmpl $0x7, %edx                 #  56    0x63561  3      
  jne .L_63600                    #  57    0x63564  6      
  jmpq .L_63620                   #  58    0x6356a  5      
  nop                             #  59    0x6356f  1      
  nop                             #  60    0x63570  1      
.L_635c0:                         #        0x63571  0      
  andl $0xfffffff8, %edx          #  61    0x63571  6      
  leal (%rdx,%rax,1), %eax        #  62    0x63577  3      
  cmpl %eax, %esi                 #  63    0x6357a  2      
  ja .L_63620                     #  64    0x6357c  6      
  nop                             #  65    0x63582  1      
  nop                             #  66    0x63583  1      
.L_635e0:                         #        0x63584  0      
  cmpl %eax, %edi                 #  67    0x63584  2      
  jbe .L_63620                    #  68    0x63586  6      
  cmpl %eax, %r8d                 #  69    0x6358c  3      
  je .L_63620                     #  70    0x6358f  6      
  movl %eax, %eax                 #  71    0x63595  2      
  movl 0x4(%r15,%rax,1), %edx     #  72    0x63597  5      
  cmpl $0x7, %edx                 #  73    0x6359c  3      
  je .L_63620                     #  74    0x6359f  6      
  nop                             #  75    0x635a5  1      
.L_63600:                         #        0x635a6  0      
  movl %edx, %ecx                 #  76    0x635a6  2      
  andl $0x3, %ecx                 #  77    0x635a8  3      
  cmpl $0x1, %ecx                 #  78    0x635ab  3      
  jne .L_635c0                    #  79    0x635ae  6      
  movl %edx, %ecx                 #  80    0x635b4  2      
  andl $0xfffffff8, %edx          #  81    0x635b6  6      
  leal (%rdx,%rax,1), %eax        #  82    0x635bc  3      
  andl $0xfffffff8, %ecx          #  83    0x635bf  6      
  subl %ecx, %ebx                 #  84    0x635c5  2      
  cmpl %eax, %esi                 #  85    0x635c7  2      
  jbe .L_635e0                    #  86    0x635c9  6      
  nop                             #  87    0x635cf  1      
.L_63620:                         #        0x635d0  0      
  movl %r9d, %r9d                 #  88    0x635d0  3      
  movl 0x8(%r15,%r9,1), %r9d      #  89    0x635d3  5      
  testq %r9, %r9                  #  90    0x635d8  3      
  jne .L_63540                    #  91    0x635db  6      
  testl %r11d, %r11d              #  92    0x635e1  3      
  jne .L_637e0                    #  93    0x635e4  6      
  nop                             #  94    0x635ea  1      
.L_63640:                         #        0x635eb  0      
  nop                             #  95    0x635eb  1      
  nop                             #  96    0x635ec  1      
  callq .__nacl_read_tp           #  97    0x635ed  5      
  movq $0xfffffffffffffb80, %r12  #  98    0x635f2  7      
  movl %r14d, %edx                #  99    0x635f9  3      
  movl $0x10023353, %esi          #  100   0x635fc  5      
  addq %r12, %rax                 #  101   0x63601  3      
  movl %eax, %eax                 #  102   0x63604  2      
  movl (%r15,%rax,1), %eax        #  103   0x63606  4      
  movl %eax, %eax                 #  104   0x6360a  2      
  movl 0xc(%r15,%rax,1), %edi     #  105   0x6360c  5      
  nop                             #  106   0x63611  1      
  xorl %eax, %eax                 #  107   0x63612  2      
  nop                             #  108   0x63614  1      
  nop                             #  109   0x63615  1      
  callq .fprintf                  #  110   0x63616  5      
  nop                             #  111   0x6361b  1      
  nop                             #  112   0x6361c  1      
  callq .__nacl_read_tp           #  113   0x6361d  5      
  addq %r12, %rax                 #  114   0x63622  3      
  movl %r13d, %edx                #  115   0x63625  3      
  movl $0x1002336d, %esi          #  116   0x63628  5      
  movl %eax, %eax                 #  117   0x6362d  2      
  movl (%r15,%rax,1), %eax        #  118   0x6362f  4      
  movl %eax, %eax                 #  119   0x63633  2      
  movl 0xc(%r15,%rax,1), %edi     #  120   0x63635  5      
  xorl %eax, %eax                 #  121   0x6363a  2      
  nop                             #  122   0x6363c  1      
  callq .fprintf                  #  123   0x6363d  5      
  nop                             #  124   0x63642  1      
  nop                             #  125   0x63643  1      
  callq .__nacl_read_tp           #  126   0x63644  5      
  leaq (%rax,%r12,1), %r12        #  127   0x63649  4      
  movl %ebx, %edx                 #  128   0x6364d  2      
  movl $0x10023387, %esi          #  129   0x6364f  5      
  movl %r12d, %r12d               #  130   0x63654  3      
  movl (%r15,%r12,1), %eax        #  131   0x63657  4      
  movl %eax, %eax                 #  132   0x6365b  2      
  movl 0xc(%r15,%rax,1), %edi     #  133   0x6365d  5      
  addl $0x8, %esp                 #  134   0x63662  3      
  addq %r15, %rsp                 #  135   0x63665  3      
  nop                             #  136   0x63668  1      
  xorl %eax, %eax                 #  137   0x63669  2      
  popq %rbx                       #  138   0x6366b  2      
  popq %r12                       #  139   0x6366d  3      
  popq %r13                       #  140   0x63670  3      
  popq %r14                       #  141   0x63673  3      
  jmpq .fprintf                   #  142   0x63676  5      
  nop                             #  143   0x6367b  1      
  nop                             #  144   0x6367c  1      
.L_63740:                         #        0x6367d  0      
  nop                             #  145   0x6367d  1      
  nop                             #  146   0x6367e  1      
  callq .init_mparams             #  147   0x6367f  5      
  xorl %r11d, %r11d               #  148   0x63684  3      
  testb $0x2, 0xffd33ee(%rip)     #  149   0x63687  7      
  je .L_634e0                     #  150   0x6368e  6      
  nop                             #  151   0x63694  1      
  nop                             #  152   0x63695  1      
.L_63780:                         #        0x63696  0      
  movl $0x1, %eax                 #  153   0x63696  5      
  xchgl %eax, 0xffd33df(%rip)     #  154   0x6369b  6      
  testl %eax, %eax                #  155   0x636a1  2      
  jne .L_63800                    #  156   0x636a3  6      
  xchgw %ax, %ax                  #  157   0x636a9  3      
  nop                             #  158   0x636ac  1      
.L_637a0:                         #        0x636ad  0      
  movl 0xffd3224(%rip), %r8d      #  159   0x636ad  7      
  movl 0xffd33c1(%rip), %r11d     #  160   0x636b4  7      
  andl $0x2, %r11d                #  161   0x636bb  4      
  testq %r8, %r8                  #  162   0x636bf  3      
  jne .L_63500                    #  163   0x636c2  6      
  nop                             #  164   0x636c8  1      
.L_637c0:                         #        0x636c9  0      
  xorl %ebx, %ebx                 #  165   0x636c9  2      
  xorl %r13d, %r13d               #  166   0x636cb  3      
  xorl %r14d, %r14d               #  167   0x636ce  3      
  testl %r11d, %r11d              #  168   0x636d1  3      
  je .L_63640                     #  169   0x636d4  6      
  nop                             #  170   0x636da  1      
.L_637e0:                         #        0x636db  0      
  mfence                          #  171   0x636db  3      
  movl $0x0, 0xffd3398(%rip)      #  172   0x636de  10     
  jmpq .L_63640                   #  173   0x636e8  5      
  nop                             #  174   0x636ed  1      
.L_63800:                         #        0x636ee  0      
  movl $0x10036a80, %edi          #  175   0x636ee  5      
  nop                             #  176   0x636f3  1      
  nop                             #  177   0x636f4  1      
  callq .spin_acquire_lock        #  178   0x636f5  5      
  testl %eax, %eax                #  179   0x636fa  2      
  je .L_637a0                     #  180   0x636fc  6      
  popq %r9                        #  181   0x63702  3      
  popq %rbx                       #  182   0x63705  2      
  popq %r12                       #  183   0x63707  3      
  popq %r13                       #  184   0x6370a  3      
  popq %r14                       #  185   0x6370d  3      
  popq %r11                       #  186   0x63710  3      
  andl $0xffffffe0, %r11d         #  187   0x63713  7      
  addq %r15, %r11                 #  188   0x6371a  3      
  jmpq %r11                       #  189   0x6371d  3      
  nop                             #  190   0x63720  1      
                                                           
.size malloc_stats, .-malloc_stats

