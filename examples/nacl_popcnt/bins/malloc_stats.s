  .text
  .globl malloc_stats
  .type malloc_stats, @function

#! file-offset 0x63520
#! rip-offset  0x63520
#! capacity    928 bytes

# Text                            #  Line  RIP      Bytes  
.malloc_stats:                    #        0x63520  0      
  pushq %r14                      #  1     0x63520  3      
  pushq %r13                      #  2     0x63523  3      
  pushq %r12                      #  3     0x63526  3      
  pushq %rbx                      #  4     0x63529  2      
  subl $0x8, %esp                 #  5     0x6352b  3      
  addq %r15, %rsp                 #  6     0x6352e  3      
  movl 0xffd3358(%rip), %r10d     #  7     0x63531  7      
  testl %r10d, %r10d              #  8     0x63538  3      
  je .L_637c0                     #  9     0x6353b  6      
  xorl %r11d, %r11d               #  10    0x63541  3      
  testb $0x2, 0xffd3531(%rip)     #  11    0x63544  7      
  jne .L_63800                    #  12    0x6354b  6      
  nop                             #  13    0x63551  1      
  nop                             #  14    0x63552  1      
.L_63560:                         #        0x63553  0      
  movl 0xffd337e(%rip), %r8d      #  15    0x63553  7      
  testq %r8, %r8                  #  16    0x6355a  3      
  je .L_63840                     #  17    0x6355d  6      
  nop                             #  18    0x63563  1      
  nop                             #  19    0x63564  1      
.L_63580:                         #        0x63565  0      
  movl 0xffd3504(%rip), %r13d     #  20    0x63565  7      
  movl 0xffd3501(%rip), %r14d     #  21    0x6356c  7      
  movl $0x10036a84, %r9d          #  22    0x63573  6      
  movl %r9d, %r9d                 #  23    0x63579  3      
  movl $0x8, %r10d                #  24    0x6357c  6      
  nop                             #  25    0x63582  1      
  leal -0x28(%r13), %ebx          #  26    0x63583  4      
  subl 0xffd333f(%rip), %ebx      #  27    0x63587  6      
  nop                             #  28    0x6358d  1      
  nop                             #  29    0x6358e  1      
.L_635c0:                         #        0x6358f  0      
  movl %r9d, %r9d                 #  30    0x6358f  3      
  movl (%r15,%r9,1), %esi         #  31    0x63592  4      
  movl %esi, %eax                 #  32    0x63596  2      
  movq %rsi, %rdx                 #  33    0x63598  3      
  andl $0x7, %eax                 #  34    0x6359b  3      
  je .L_63600                     #  35    0x6359e  6      
  movl %r10d, %edx                #  36    0x635a4  3      
  subl %eax, %edx                 #  37    0x635a7  2      
  andl $0x7, %edx                 #  38    0x635a9  3      
  addl %esi, %edx                 #  39    0x635ac  2      
  cmpl %edx, %esi                 #  40    0x635ae  2      
  nop                             #  41    0x635b0  1      
  ja .L_636a0                     #  42    0x635b1  6      
  nop                             #  43    0x635b7  1      
  nop                             #  44    0x635b8  1      
.L_63600:                         #        0x635b9  0      
  movl %r9d, %r9d                 #  45    0x635b9  3      
  movl 0x4(%r15,%r9,1), %edi      #  46    0x635bc  5      
  addl %esi, %edi                 #  47    0x635c1  2      
  cmpl %edi, %edx                 #  48    0x635c3  2      
  jae .L_636a0                    #  49    0x635c5  6      
  cmpl %edx, %r8d                 #  50    0x635cb  3      
  movq %rdx, %rax                 #  51    0x635ce  3      
  je .L_636a0                     #  52    0x635d1  6      
  xchgw %ax, %ax                  #  53    0x635d7  3      
  movl %edx, %edx                 #  54    0x635da  2      
  movl 0x4(%r15,%rdx,1), %edx     #  55    0x635dc  5      
  cmpl $0x7, %edx                 #  56    0x635e1  3      
  jne .L_63680                    #  57    0x635e4  6      
  jmpq .L_636a0                   #  58    0x635ea  5      
  nop                             #  59    0x635ef  1      
  nop                             #  60    0x635f0  1      
.L_63640:                         #        0x635f1  0      
  andl $0xfffffff8, %edx          #  61    0x635f1  6      
  leal (%rdx,%rax,1), %eax        #  62    0x635f7  3      
  cmpl %eax, %esi                 #  63    0x635fa  2      
  ja .L_636a0                     #  64    0x635fc  6      
  nop                             #  65    0x63602  1      
  nop                             #  66    0x63603  1      
.L_63660:                         #        0x63604  0      
  cmpl %eax, %edi                 #  67    0x63604  2      
  jbe .L_636a0                    #  68    0x63606  6      
  cmpl %eax, %r8d                 #  69    0x6360c  3      
  je .L_636a0                     #  70    0x6360f  6      
  movl %eax, %eax                 #  71    0x63615  2      
  movl 0x4(%r15,%rax,1), %edx     #  72    0x63617  5      
  cmpl $0x7, %edx                 #  73    0x6361c  3      
  je .L_636a0                     #  74    0x6361f  6      
  nop                             #  75    0x63625  1      
.L_63680:                         #        0x63626  0      
  movl %edx, %ecx                 #  76    0x63626  2      
  andl $0x3, %ecx                 #  77    0x63628  3      
  cmpl $0x1, %ecx                 #  78    0x6362b  3      
  jne .L_63640                    #  79    0x6362e  6      
  movl %edx, %ecx                 #  80    0x63634  2      
  andl $0xfffffff8, %edx          #  81    0x63636  6      
  leal (%rdx,%rax,1), %eax        #  82    0x6363c  3      
  andl $0xfffffff8, %ecx          #  83    0x6363f  6      
  subl %ecx, %ebx                 #  84    0x63645  2      
  cmpl %eax, %esi                 #  85    0x63647  2      
  jbe .L_63660                    #  86    0x63649  6      
  nop                             #  87    0x6364f  1      
.L_636a0:                         #        0x63650  0      
  movl %r9d, %r9d                 #  88    0x63650  3      
  movl 0x8(%r15,%r9,1), %r9d      #  89    0x63653  5      
  testq %r9, %r9                  #  90    0x63658  3      
  jne .L_635c0                    #  91    0x6365b  6      
  testl %r11d, %r11d              #  92    0x63661  3      
  jne .L_63860                    #  93    0x63664  6      
  nop                             #  94    0x6366a  1      
.L_636c0:                         #        0x6366b  0      
  nop                             #  95    0x6366b  1      
  nop                             #  96    0x6366c  1      
  callq .__nacl_read_tp           #  97    0x6366d  5      
  movq $0xfffffffffffffb80, %r12  #  98    0x63672  7      
  movl %r14d, %edx                #  99    0x63679  3      
  movl $0x10023353, %esi          #  100   0x6367c  5      
  addq %r12, %rax                 #  101   0x63681  3      
  movl %eax, %eax                 #  102   0x63684  2      
  movl (%r15,%rax,1), %eax        #  103   0x63686  4      
  movl %eax, %eax                 #  104   0x6368a  2      
  movl 0xc(%r15,%rax,1), %edi     #  105   0x6368c  5      
  nop                             #  106   0x63691  1      
  xorl %eax, %eax                 #  107   0x63692  2      
  nop                             #  108   0x63694  1      
  nop                             #  109   0x63695  1      
  callq .fprintf                  #  110   0x63696  5      
  nop                             #  111   0x6369b  1      
  nop                             #  112   0x6369c  1      
  callq .__nacl_read_tp           #  113   0x6369d  5      
  addq %r12, %rax                 #  114   0x636a2  3      
  movl %r13d, %edx                #  115   0x636a5  3      
  movl $0x1002336d, %esi          #  116   0x636a8  5      
  movl %eax, %eax                 #  117   0x636ad  2      
  movl (%r15,%rax,1), %eax        #  118   0x636af  4      
  movl %eax, %eax                 #  119   0x636b3  2      
  movl 0xc(%r15,%rax,1), %edi     #  120   0x636b5  5      
  xorl %eax, %eax                 #  121   0x636ba  2      
  nop                             #  122   0x636bc  1      
  callq .fprintf                  #  123   0x636bd  5      
  nop                             #  124   0x636c2  1      
  nop                             #  125   0x636c3  1      
  callq .__nacl_read_tp           #  126   0x636c4  5      
  leaq (%rax,%r12,1), %r12        #  127   0x636c9  4      
  movl %ebx, %edx                 #  128   0x636cd  2      
  movl $0x10023387, %esi          #  129   0x636cf  5      
  movl %r12d, %r12d               #  130   0x636d4  3      
  movl (%r15,%r12,1), %eax        #  131   0x636d7  4      
  movl %eax, %eax                 #  132   0x636db  2      
  movl 0xc(%r15,%rax,1), %edi     #  133   0x636dd  5      
  addl $0x8, %esp                 #  134   0x636e2  3      
  addq %r15, %rsp                 #  135   0x636e5  3      
  nop                             #  136   0x636e8  1      
  xorl %eax, %eax                 #  137   0x636e9  2      
  popq %rbx                       #  138   0x636eb  2      
  popq %r12                       #  139   0x636ed  3      
  popq %r13                       #  140   0x636f0  3      
  popq %r14                       #  141   0x636f3  3      
  jmpq .fprintf                   #  142   0x636f6  5      
  nop                             #  143   0x636fb  1      
  nop                             #  144   0x636fc  1      
.L_637c0:                         #        0x636fd  0      
  nop                             #  145   0x636fd  1      
  nop                             #  146   0x636fe  1      
  callq .init_mparams             #  147   0x636ff  5      
  xorl %r11d, %r11d               #  148   0x63704  3      
  testb $0x2, 0xffd336e(%rip)     #  149   0x63707  7      
  je .L_63560                     #  150   0x6370e  6      
  nop                             #  151   0x63714  1      
  nop                             #  152   0x63715  1      
.L_63800:                         #        0x63716  0      
  movl $0x1, %eax                 #  153   0x63716  5      
  xchgl %eax, 0xffd335f(%rip)     #  154   0x6371b  6      
  testl %eax, %eax                #  155   0x63721  2      
  jne .L_63880                    #  156   0x63723  6      
  xchgw %ax, %ax                  #  157   0x63729  3      
  nop                             #  158   0x6372c  1      
.L_63820:                         #        0x6372d  0      
  movl 0xffd31a4(%rip), %r8d      #  159   0x6372d  7      
  movl 0xffd3341(%rip), %r11d     #  160   0x63734  7      
  andl $0x2, %r11d                #  161   0x6373b  4      
  testq %r8, %r8                  #  162   0x6373f  3      
  jne .L_63580                    #  163   0x63742  6      
  nop                             #  164   0x63748  1      
.L_63840:                         #        0x63749  0      
  xorl %ebx, %ebx                 #  165   0x63749  2      
  xorl %r13d, %r13d               #  166   0x6374b  3      
  xorl %r14d, %r14d               #  167   0x6374e  3      
  testl %r11d, %r11d              #  168   0x63751  3      
  je .L_636c0                     #  169   0x63754  6      
  nop                             #  170   0x6375a  1      
.L_63860:                         #        0x6375b  0      
  mfence                          #  171   0x6375b  3      
  movl $0x0, 0xffd3318(%rip)      #  172   0x6375e  10     
  jmpq .L_636c0                   #  173   0x63768  5      
  nop                             #  174   0x6376d  1      
.L_63880:                         #        0x6376e  0      
  movl $0x10036a80, %edi          #  175   0x6376e  5      
  nop                             #  176   0x63773  1      
  nop                             #  177   0x63774  1      
  callq .spin_acquire_lock        #  178   0x63775  5      
  testl %eax, %eax                #  179   0x6377a  2      
  je .L_63820                     #  180   0x6377c  6      
  popq %r9                        #  181   0x63782  3      
  popq %rbx                       #  182   0x63785  2      
  popq %r12                       #  183   0x63787  3      
  popq %r13                       #  184   0x6378a  3      
  popq %r14                       #  185   0x6378d  3      
  popq %r11                       #  186   0x63790  3      
  andl $0xffffffe0, %r11d         #  187   0x63793  7      
  addq %r15, %r11                 #  188   0x6379a  3      
  jmpq %r11                       #  189   0x6379d  3      
  nop                             #  190   0x637a0  1      
                                                           
.size malloc_stats, .-malloc_stats

