  .text
  .globl malloc_stats
  .type malloc_stats, @function

#! file-offset 0x63480
#! rip-offset  0x63480
#! capacity    928 bytes

# Text                            #  Line  RIP      Bytes  
.malloc_stats:                    #        0x63480  0      
  pushq %r14                      #  1     0x63480  3      
  pushq %r13                      #  2     0x63483  3      
  pushq %r12                      #  3     0x63486  3      
  pushq %rbx                      #  4     0x63489  2      
  subl $0x8, %esp                 #  5     0x6348b  3      
  addq %r15, %rsp                 #  6     0x6348e  3      
  movl 0xffd33f8(%rip), %r10d     #  7     0x63491  7      
  testl %r10d, %r10d              #  8     0x63498  3      
  je .L_63720                     #  9     0x6349b  6      
  xorl %r11d, %r11d               #  10    0x634a1  3      
  testb $0x2, 0xffd35d1(%rip)     #  11    0x634a4  7      
  jne .L_63760                    #  12    0x634ab  6      
  nop                             #  13    0x634b1  1      
  nop                             #  14    0x634b2  1      
.L_634c0:                         #        0x634b3  0      
  movl 0xffd341e(%rip), %r8d      #  15    0x634b3  7      
  testq %r8, %r8                  #  16    0x634ba  3      
  je .L_637a0                     #  17    0x634bd  6      
  nop                             #  18    0x634c3  1      
  nop                             #  19    0x634c4  1      
.L_634e0:                         #        0x634c5  0      
  movl 0xffd35a4(%rip), %r13d     #  20    0x634c5  7      
  movl 0xffd35a1(%rip), %r14d     #  21    0x634cc  7      
  movl $0x10036a84, %r9d          #  22    0x634d3  6      
  movl %r9d, %r9d                 #  23    0x634d9  3      
  movl $0x8, %r10d                #  24    0x634dc  6      
  nop                             #  25    0x634e2  1      
  leal -0x28(%r13), %ebx          #  26    0x634e3  4      
  subl 0xffd33df(%rip), %ebx      #  27    0x634e7  6      
  nop                             #  28    0x634ed  1      
  nop                             #  29    0x634ee  1      
.L_63520:                         #        0x634ef  0      
  movl %r9d, %r9d                 #  30    0x634ef  3      
  movl (%r15,%r9,1), %esi         #  31    0x634f2  4      
  movl %esi, %eax                 #  32    0x634f6  2      
  movq %rsi, %rdx                 #  33    0x634f8  3      
  andl $0x7, %eax                 #  34    0x634fb  3      
  je .L_63560                     #  35    0x634fe  6      
  movl %r10d, %edx                #  36    0x63504  3      
  subl %eax, %edx                 #  37    0x63507  2      
  andl $0x7, %edx                 #  38    0x63509  3      
  addl %esi, %edx                 #  39    0x6350c  2      
  cmpl %edx, %esi                 #  40    0x6350e  2      
  nop                             #  41    0x63510  1      
  ja .L_63600                     #  42    0x63511  6      
  nop                             #  43    0x63517  1      
  nop                             #  44    0x63518  1      
.L_63560:                         #        0x63519  0      
  movl %r9d, %r9d                 #  45    0x63519  3      
  movl 0x4(%r15,%r9,1), %edi      #  46    0x6351c  5      
  addl %esi, %edi                 #  47    0x63521  2      
  cmpl %edi, %edx                 #  48    0x63523  2      
  jae .L_63600                    #  49    0x63525  6      
  cmpl %edx, %r8d                 #  50    0x6352b  3      
  movq %rdx, %rax                 #  51    0x6352e  3      
  je .L_63600                     #  52    0x63531  6      
  xchgw %ax, %ax                  #  53    0x63537  3      
  movl %edx, %edx                 #  54    0x6353a  2      
  movl 0x4(%r15,%rdx,1), %edx     #  55    0x6353c  5      
  cmpl $0x7, %edx                 #  56    0x63541  3      
  jne .L_635e0                    #  57    0x63544  6      
  jmpq .L_63600                   #  58    0x6354a  5      
  nop                             #  59    0x6354f  1      
  nop                             #  60    0x63550  1      
.L_635a0:                         #        0x63551  0      
  andl $0xfffffff8, %edx          #  61    0x63551  6      
  leal (%rdx,%rax,1), %eax        #  62    0x63557  3      
  cmpl %eax, %esi                 #  63    0x6355a  2      
  ja .L_63600                     #  64    0x6355c  6      
  nop                             #  65    0x63562  1      
  nop                             #  66    0x63563  1      
.L_635c0:                         #        0x63564  0      
  cmpl %eax, %edi                 #  67    0x63564  2      
  jbe .L_63600                    #  68    0x63566  6      
  cmpl %eax, %r8d                 #  69    0x6356c  3      
  je .L_63600                     #  70    0x6356f  6      
  movl %eax, %eax                 #  71    0x63575  2      
  movl 0x4(%r15,%rax,1), %edx     #  72    0x63577  5      
  cmpl $0x7, %edx                 #  73    0x6357c  3      
  je .L_63600                     #  74    0x6357f  6      
  nop                             #  75    0x63585  1      
.L_635e0:                         #        0x63586  0      
  movl %edx, %ecx                 #  76    0x63586  2      
  andl $0x3, %ecx                 #  77    0x63588  3      
  cmpl $0x1, %ecx                 #  78    0x6358b  3      
  jne .L_635a0                    #  79    0x6358e  6      
  movl %edx, %ecx                 #  80    0x63594  2      
  andl $0xfffffff8, %edx          #  81    0x63596  6      
  leal (%rdx,%rax,1), %eax        #  82    0x6359c  3      
  andl $0xfffffff8, %ecx          #  83    0x6359f  6      
  subl %ecx, %ebx                 #  84    0x635a5  2      
  cmpl %eax, %esi                 #  85    0x635a7  2      
  jbe .L_635c0                    #  86    0x635a9  6      
  nop                             #  87    0x635af  1      
.L_63600:                         #        0x635b0  0      
  movl %r9d, %r9d                 #  88    0x635b0  3      
  movl 0x8(%r15,%r9,1), %r9d      #  89    0x635b3  5      
  testq %r9, %r9                  #  90    0x635b8  3      
  jne .L_63520                    #  91    0x635bb  6      
  testl %r11d, %r11d              #  92    0x635c1  3      
  jne .L_637c0                    #  93    0x635c4  6      
  nop                             #  94    0x635ca  1      
.L_63620:                         #        0x635cb  0      
  nop                             #  95    0x635cb  1      
  nop                             #  96    0x635cc  1      
  callq .__nacl_read_tp           #  97    0x635cd  5      
  movq $0xfffffffffffffb80, %r12  #  98    0x635d2  7      
  movl %r14d, %edx                #  99    0x635d9  3      
  movl $0x10023353, %esi          #  100   0x635dc  5      
  addq %r12, %rax                 #  101   0x635e1  3      
  movl %eax, %eax                 #  102   0x635e4  2      
  movl (%r15,%rax,1), %eax        #  103   0x635e6  4      
  movl %eax, %eax                 #  104   0x635ea  2      
  movl 0xc(%r15,%rax,1), %edi     #  105   0x635ec  5      
  nop                             #  106   0x635f1  1      
  xorl %eax, %eax                 #  107   0x635f2  2      
  nop                             #  108   0x635f4  1      
  nop                             #  109   0x635f5  1      
  callq .fprintf                  #  110   0x635f6  5      
  nop                             #  111   0x635fb  1      
  nop                             #  112   0x635fc  1      
  callq .__nacl_read_tp           #  113   0x635fd  5      
  addq %r12, %rax                 #  114   0x63602  3      
  movl %r13d, %edx                #  115   0x63605  3      
  movl $0x1002336d, %esi          #  116   0x63608  5      
  movl %eax, %eax                 #  117   0x6360d  2      
  movl (%r15,%rax,1), %eax        #  118   0x6360f  4      
  movl %eax, %eax                 #  119   0x63613  2      
  movl 0xc(%r15,%rax,1), %edi     #  120   0x63615  5      
  xorl %eax, %eax                 #  121   0x6361a  2      
  nop                             #  122   0x6361c  1      
  callq .fprintf                  #  123   0x6361d  5      
  nop                             #  124   0x63622  1      
  nop                             #  125   0x63623  1      
  callq .__nacl_read_tp           #  126   0x63624  5      
  leaq (%rax,%r12,1), %r12        #  127   0x63629  4      
  movl %ebx, %edx                 #  128   0x6362d  2      
  movl $0x10023387, %esi          #  129   0x6362f  5      
  movl %r12d, %r12d               #  130   0x63634  3      
  movl (%r15,%r12,1), %eax        #  131   0x63637  4      
  movl %eax, %eax                 #  132   0x6363b  2      
  movl 0xc(%r15,%rax,1), %edi     #  133   0x6363d  5      
  addl $0x8, %esp                 #  134   0x63642  3      
  addq %r15, %rsp                 #  135   0x63645  3      
  nop                             #  136   0x63648  1      
  xorl %eax, %eax                 #  137   0x63649  2      
  popq %rbx                       #  138   0x6364b  2      
  popq %r12                       #  139   0x6364d  3      
  popq %r13                       #  140   0x63650  3      
  popq %r14                       #  141   0x63653  3      
  jmpq .fprintf                   #  142   0x63656  5      
  nop                             #  143   0x6365b  1      
  nop                             #  144   0x6365c  1      
.L_63720:                         #        0x6365d  0      
  nop                             #  145   0x6365d  1      
  nop                             #  146   0x6365e  1      
  callq .init_mparams             #  147   0x6365f  5      
  xorl %r11d, %r11d               #  148   0x63664  3      
  testb $0x2, 0xffd340e(%rip)     #  149   0x63667  7      
  je .L_634c0                     #  150   0x6366e  6      
  nop                             #  151   0x63674  1      
  nop                             #  152   0x63675  1      
.L_63760:                         #        0x63676  0      
  movl $0x1, %eax                 #  153   0x63676  5      
  xchgl %eax, 0xffd33ff(%rip)     #  154   0x6367b  6      
  testl %eax, %eax                #  155   0x63681  2      
  jne .L_637e0                    #  156   0x63683  6      
  xchgw %ax, %ax                  #  157   0x63689  3      
  nop                             #  158   0x6368c  1      
.L_63780:                         #        0x6368d  0      
  movl 0xffd3244(%rip), %r8d      #  159   0x6368d  7      
  movl 0xffd33e1(%rip), %r11d     #  160   0x63694  7      
  andl $0x2, %r11d                #  161   0x6369b  4      
  testq %r8, %r8                  #  162   0x6369f  3      
  jne .L_634e0                    #  163   0x636a2  6      
  nop                             #  164   0x636a8  1      
.L_637a0:                         #        0x636a9  0      
  xorl %ebx, %ebx                 #  165   0x636a9  2      
  xorl %r13d, %r13d               #  166   0x636ab  3      
  xorl %r14d, %r14d               #  167   0x636ae  3      
  testl %r11d, %r11d              #  168   0x636b1  3      
  je .L_63620                     #  169   0x636b4  6      
  nop                             #  170   0x636ba  1      
.L_637c0:                         #        0x636bb  0      
  mfence                          #  171   0x636bb  3      
  movl $0x0, 0xffd33b8(%rip)      #  172   0x636be  10     
  jmpq .L_63620                   #  173   0x636c8  5      
  nop                             #  174   0x636cd  1      
.L_637e0:                         #        0x636ce  0      
  movl $0x10036a80, %edi          #  175   0x636ce  5      
  nop                             #  176   0x636d3  1      
  nop                             #  177   0x636d4  1      
  callq .spin_acquire_lock        #  178   0x636d5  5      
  testl %eax, %eax                #  179   0x636da  2      
  je .L_63780                     #  180   0x636dc  6      
  popq %r9                        #  181   0x636e2  3      
  popq %rbx                       #  182   0x636e5  2      
  popq %r12                       #  183   0x636e7  3      
  popq %r13                       #  184   0x636ea  3      
  popq %r14                       #  185   0x636ed  3      
  popq %r11                       #  186   0x636f0  3      
  andl $0xffffffe0, %r11d         #  187   0x636f3  7      
  addq %r15, %r11                 #  188   0x636fa  3      
  jmpq %r11                       #  189   0x636fd  3      
  nop                             #  190   0x63700  1      
                                                           
.size malloc_stats, .-malloc_stats

