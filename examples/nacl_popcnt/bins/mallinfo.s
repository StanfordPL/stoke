  .text
  .globl mallinfo
  .type mallinfo, @function

#! file-offset 0x63100
#! rip-offset  0x63100
#! capacity    896 bytes

# Text                           #  Line  RIP      Bytes  
.mallinfo:                       #        0x63100  0      
  pushq %r14                     #  1     0x63100  3      
  pushq %r13                     #  2     0x63103  3      
  pushq %r12                     #  3     0x63106  3      
  pushq %rbx                     #  4     0x63109  2      
  movl %edi, %ebx                #  5     0x6310b  2      
  subl $0x18, %esp               #  6     0x6310d  3      
  addq %r15, %rsp                #  7     0x63110  3      
  movl 0xffd3776(%rip), %r8d     #  8     0x63113  7      
  testl %r8d, %r8d               #  9     0x6311a  3      
  je .L_633e0                    #  10    0x6311d  6      
  nop                            #  11    0x63123  1      
.L_63120:                        #        0x63124  0      
  testb $0x2, 0xffd3951(%rip)    #  12    0x63124  7      
  movl $0x0, 0x8(%rsp)           #  13    0x6312b  8      
  jne .L_63380                   #  14    0x63133  6      
  nop                            #  15    0x63139  1      
.L_63140:                        #        0x6313a  0      
  movl 0xffd3797(%rip), %r10d    #  16    0x6313a  7      
  testq %r10, %r10               #  17    0x63141  3      
  je .L_633c0                    #  18    0x63144  6      
  nop                            #  19    0x6314a  1      
  nop                            #  20    0x6314b  1      
.L_63160:                        #        0x6314c  0      
  movl 0xffd377a(%rip), %eax     #  21    0x6314c  6      
  movl $0x10036a84, %r13d        #  22    0x63152  6      
  movl $0x1, %r12d               #  23    0x63158  6      
  movl %r13d, %r13d              #  24    0x6315e  3      
  movl $0x8, %r14d               #  25    0x63161  6      
  movl %eax, %r11d               #  26    0x63167  3      
  xchgw %ax, %ax                 #  27    0x6316a  3      
  movl %eax, 0xc(%rsp)           #  28    0x6316d  4      
  addl $0x28, %r11d              #  29    0x63171  4      
  movl %r11d, %esi               #  30    0x63175  3      
  nop                            #  31    0x63178  1      
  nop                            #  32    0x63179  1      
.L_631a0:                        #        0x6317a  0      
  movl %r13d, %r13d              #  33    0x6317a  3      
  movl (%r15,%r13,1), %r8d       #  34    0x6317d  4      
  movl %r8d, %eax                #  35    0x63181  3      
  movq %r8, %rdx                 #  36    0x63184  3      
  andl $0x7, %eax                #  37    0x63187  3      
  je .L_631e0                    #  38    0x6318a  6      
  movl %r14d, %edx               #  39    0x63190  3      
  subl %eax, %edx                #  40    0x63193  2      
  andl $0x7, %edx                #  41    0x63195  3      
  addl %r8d, %edx                #  42    0x63198  3      
  cmpl %edx, %r8d                #  43    0x6319b  3      
  ja .L_632a0                    #  44    0x6319e  6      
  nop                            #  45    0x631a4  1      
  nop                            #  46    0x631a5  1      
.L_631e0:                        #        0x631a6  0      
  movl %r13d, %r13d              #  47    0x631a6  3      
  movl 0x4(%r15,%r13,1), %r9d    #  48    0x631a9  5      
  addl %r8d, %r9d                #  49    0x631ae  3      
  cmpl %edx, %r9d                #  50    0x631b1  3      
  jbe .L_632a0                   #  51    0x631b4  6      
  cmpl %edx, %r10d               #  52    0x631ba  3      
  movq %rdx, %rax                #  53    0x631bd  3      
  je .L_632a0                    #  54    0x631c0  6      
  movl %edx, %edx                #  55    0x631c6  2      
  movl 0x4(%r15,%rdx,1), %edx    #  56    0x631c8  5      
  cmpl $0x7, %edx                #  57    0x631cd  3      
  jne .L_63260                   #  58    0x631d0  6      
  jmpq .L_632a0                  #  59    0x631d6  5      
  nop                            #  60    0x631db  1      
.L_63220:                        #        0x631dc  0      
  andl $0xfffffff8, %edx         #  61    0x631dc  6      
  leal (%rdx,%rax,1), %eax       #  62    0x631e2  3      
  cmpl %eax, %r8d                #  63    0x631e5  3      
  ja .L_632a0                    #  64    0x631e8  6      
  nop                            #  65    0x631ee  1      
  nop                            #  66    0x631ef  1      
.L_63240:                        #        0x631f0  0      
  cmpl %eax, %r9d                #  67    0x631f0  3      
  jbe .L_632a0                   #  68    0x631f3  6      
  cmpl %eax, %r10d               #  69    0x631f9  3      
  je .L_632a0                    #  70    0x631fc  6      
  movl %eax, %eax                #  71    0x63202  2      
  movl 0x4(%r15,%rax,1), %edx    #  72    0x63204  5      
  cmpl $0x7, %edx                #  73    0x63209  3      
  je .L_632a0                    #  74    0x6320c  6      
  nop                            #  75    0x63212  1      
.L_63260:                        #        0x63213  0      
  movl %edx, %ecx                #  76    0x63213  2      
  movl %edx, %edi                #  77    0x63215  2      
  andl $0xfffffff8, %ecx         #  78    0x63217  6      
  andl $0x3, %edi                #  79    0x6321d  3      
  addl %ecx, %esi                #  80    0x63220  2      
  cmpl $0x1, %edi                #  81    0x63222  3      
  jne .L_63220                   #  82    0x63225  6      
  andl $0xfffffff8, %edx         #  83    0x6322b  6      
  addl %ecx, %r11d               #  84    0x63231  3      
  addl $0x1, %r12d               #  85    0x63234  4      
  leal (%rdx,%rax,1), %eax       #  86    0x63238  3      
  xchgw %ax, %ax                 #  87    0x6323b  3      
  cmpl %eax, %r8d                #  88    0x6323e  3      
  jbe .L_63240                   #  89    0x63241  6      
  nop                            #  90    0x63247  1      
  nop                            #  91    0x63248  1      
.L_632a0:                        #        0x63249  0      
  movl %r13d, %r13d              #  92    0x63249  3      
  movl 0x8(%r15,%r13,1), %r13d   #  93    0x6324c  5      
  testq %r13, %r13               #  94    0x63251  3      
  jne .L_631a0                   #  95    0x63254  6      
  movl 0xffd3810(%rip), %eax     #  96    0x6325a  6      
  movl 0xffd380e(%rip), %ecx     #  97    0x63260  6      
  movl %eax, %edx                #  98    0x63266  2      
  nop                            #  99    0x63268  1      
  subl %r11d, %eax               #  100   0x63269  3      
  subl %esi, %edx                #  101   0x6326c  2      
  nop                            #  102   0x6326e  1      
  nop                            #  103   0x6326f  1      
.L_632e0:                        #        0x63270  0      
  movl 0x8(%rsp), %edi           #  104   0x63270  4      
  testl %edi, %edi               #  105   0x63274  2      
  je .L_63300                    #  106   0x63276  6      
  mfence                         #  107   0x6327c  3      
  movl $0x0, 0xffd37f7(%rip)     #  108   0x6327f  10     
  nop                            #  109   0x63289  1      
.L_63300:                        #        0x6328a  0      
  movl 0xc(%rsp), %edi           #  110   0x6328a  4      
  movl %ebx, %ebx                #  111   0x6328e  2      
  movl %r11d, 0x20(%r15,%rbx,1)  #  112   0x63290  5      
  movl %ebx, %ebx                #  113   0x63295  2      
  movl %eax, 0x1c(%r15,%rbx,1)   #  114   0x63297  5      
  movl %ebx, %ebx                #  115   0x6329c  2      
  movl %r12d, 0x4(%r15,%rbx,1)   #  116   0x6329e  5      
  movl %ebx, %eax                #  117   0x632a3  2      
  nop                            #  118   0x632a5  1      
  movl %ebx, %ebx                #  119   0x632a6  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  120   0x632a8  9      
  movl %ebx, %ebx                #  121   0x632b1  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  122   0x632b3  9      
  nop                            #  123   0x632bc  1      
  movl %ebx, %ebx                #  124   0x632bd  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  125   0x632bf  9      
  movl %ebx, %ebx                #  126   0x632c8  2      
  movl %edi, 0x24(%r15,%rbx,1)   #  127   0x632ca  5      
  movl %ebx, %ebx                #  128   0x632cf  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  129   0x632d1  5      
  movl %ebx, %ebx                #  130   0x632d6  2      
  movl %edx, 0x10(%r15,%rbx,1)   #  131   0x632d8  5      
  movl %ebx, %ebx                #  132   0x632dd  2      
  movl %esi, (%r15,%rbx,1)       #  133   0x632df  4      
  addl $0x18, %esp               #  134   0x632e3  3      
  addq %r15, %rsp                #  135   0x632e6  3      
  popq %rbx                      #  136   0x632e9  2      
  popq %r12                      #  137   0x632eb  3      
  popq %r13                      #  138   0x632ee  3      
  popq %r14                      #  139   0x632f1  3      
  popq %r11                      #  140   0x632f4  3      
  andl $0xffffffe0, %r11d        #  141   0x632f7  7      
  addq %r15, %r11                #  142   0x632fe  3      
  jmpq %r11                      #  143   0x63301  3      
  nop                            #  144   0x63304  1      
.L_63380:                        #        0x63305  0      
  movl $0x1, %eax                #  145   0x63305  5      
  xchgl %eax, 0xffd3770(%rip)    #  146   0x6330a  6      
  testl %eax, %eax               #  147   0x63310  2      
  jne .L_63420                   #  148   0x63312  6      
  movl 0xffd35b9(%rip), %r10d    #  149   0x63318  7      
  movl 0xffd3757(%rip), %eax     #  150   0x6331f  6      
  andl $0x2, %eax                #  151   0x63325  3      
  testq %r10, %r10               #  152   0x63328  3      
  movl %eax, 0x8(%rsp)           #  153   0x6332b  4      
  jne .L_63160                   #  154   0x6332f  6      
  nop                            #  155   0x63335  1      
  nop                            #  156   0x63336  1      
.L_633c0:                        #        0x63337  0      
  xorl %esi, %esi                #  157   0x63337  2      
  xorl %r12d, %r12d              #  158   0x63339  3      
  xorl %edx, %edx                #  159   0x6333c  2      
  xorl %ecx, %ecx                #  160   0x6333e  2      
  xorl %eax, %eax                #  161   0x63340  2      
  xorl %r11d, %r11d              #  162   0x63342  3      
  movl $0x0, 0xc(%rsp)           #  163   0x63345  8      
  jmpq .L_632e0                  #  164   0x6334d  5      
  nop                            #  165   0x63352  1      
.L_633e0:                        #        0x63353  0      
  nop                            #  166   0x63353  1      
  nop                            #  167   0x63354  1      
  callq .init_mparams            #  168   0x63355  5      
  jmpq .L_63120                  #  169   0x6335a  5      
  nop                            #  170   0x6335f  1      
  nop                            #  171   0x63360  1      
.L_63420:                        #        0x63361  0      
  movl $0x10036a80, %edi         #  172   0x63361  5      
  nop                            #  173   0x63366  1      
  nop                            #  174   0x63367  1      
  callq .spin_acquire_lock       #  175   0x63368  5      
  testl %eax, %eax               #  176   0x6336d  2      
  jne .L_63460                   #  177   0x6336f  6      
  movl 0xffd3701(%rip), %edi     #  178   0x63375  6      
  andl $0x2, %edi                #  179   0x6337b  3      
  movl %edi, 0x8(%rsp)           #  180   0x6337e  4      
  jmpq .L_63140                  #  181   0x63382  5      
  nop                            #  182   0x63387  1      
.L_63460:                        #        0x63388  0      
  xorl %esi, %esi                #  183   0x63388  2      
  xorl %r12d, %r12d              #  184   0x6338a  3      
  xorl %edx, %edx                #  185   0x6338d  2      
  xorl %ecx, %ecx                #  186   0x6338f  2      
  xorl %eax, %eax                #  187   0x63391  2      
  xorl %r11d, %r11d              #  188   0x63393  3      
  movl $0x0, 0xc(%rsp)           #  189   0x63396  8      
  jmpq .L_63300                  #  190   0x6339e  5      
  nop                            #  191   0x633a3  1      
                                                          
.size mallinfo, .-mallinfo

