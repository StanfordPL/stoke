  .text
  .globl mallinfo
  .type mallinfo, @function

#! file-offset 0x63120
#! rip-offset  0x63120
#! capacity    896 bytes

# Text                           #  Line  RIP      Bytes  
.mallinfo:                       #        0x63120  0      
  pushq %r14                     #  1     0x63120  3      
  pushq %r13                     #  2     0x63123  3      
  pushq %r12                     #  3     0x63126  3      
  pushq %rbx                     #  4     0x63129  2      
  movl %edi, %ebx                #  5     0x6312b  2      
  subl $0x18, %esp               #  6     0x6312d  3      
  addq %r15, %rsp                #  7     0x63130  3      
  movl 0xffd3756(%rip), %r8d     #  8     0x63133  7      
  testl %r8d, %r8d               #  9     0x6313a  3      
  je .L_63400                    #  10    0x6313d  6      
  nop                            #  11    0x63143  1      
.L_63140:                        #        0x63144  0      
  testb $0x2, 0xffd3931(%rip)    #  12    0x63144  7      
  movl $0x0, 0x8(%rsp)           #  13    0x6314b  8      
  jne .L_633a0                   #  14    0x63153  6      
  nop                            #  15    0x63159  1      
.L_63160:                        #        0x6315a  0      
  movl 0xffd3777(%rip), %r10d    #  16    0x6315a  7      
  testq %r10, %r10               #  17    0x63161  3      
  je .L_633e0                    #  18    0x63164  6      
  nop                            #  19    0x6316a  1      
  nop                            #  20    0x6316b  1      
.L_63180:                        #        0x6316c  0      
  movl 0xffd375a(%rip), %eax     #  21    0x6316c  6      
  movl $0x10036a84, %r13d        #  22    0x63172  6      
  movl $0x1, %r12d               #  23    0x63178  6      
  movl %r13d, %r13d              #  24    0x6317e  3      
  movl $0x8, %r14d               #  25    0x63181  6      
  movl %eax, %r11d               #  26    0x63187  3      
  xchgw %ax, %ax                 #  27    0x6318a  3      
  movl %eax, 0xc(%rsp)           #  28    0x6318d  4      
  addl $0x28, %r11d              #  29    0x63191  4      
  movl %r11d, %esi               #  30    0x63195  3      
  nop                            #  31    0x63198  1      
  nop                            #  32    0x63199  1      
.L_631c0:                        #        0x6319a  0      
  movl %r13d, %r13d              #  33    0x6319a  3      
  movl (%r15,%r13,1), %r8d       #  34    0x6319d  4      
  movl %r8d, %eax                #  35    0x631a1  3      
  movq %r8, %rdx                 #  36    0x631a4  3      
  andl $0x7, %eax                #  37    0x631a7  3      
  je .L_63200                    #  38    0x631aa  6      
  movl %r14d, %edx               #  39    0x631b0  3      
  subl %eax, %edx                #  40    0x631b3  2      
  andl $0x7, %edx                #  41    0x631b5  3      
  addl %r8d, %edx                #  42    0x631b8  3      
  cmpl %edx, %r8d                #  43    0x631bb  3      
  ja .L_632c0                    #  44    0x631be  6      
  nop                            #  45    0x631c4  1      
  nop                            #  46    0x631c5  1      
.L_63200:                        #        0x631c6  0      
  movl %r13d, %r13d              #  47    0x631c6  3      
  movl 0x4(%r15,%r13,1), %r9d    #  48    0x631c9  5      
  addl %r8d, %r9d                #  49    0x631ce  3      
  cmpl %edx, %r9d                #  50    0x631d1  3      
  jbe .L_632c0                   #  51    0x631d4  6      
  cmpl %edx, %r10d               #  52    0x631da  3      
  movq %rdx, %rax                #  53    0x631dd  3      
  je .L_632c0                    #  54    0x631e0  6      
  movl %edx, %edx                #  55    0x631e6  2      
  movl 0x4(%r15,%rdx,1), %edx    #  56    0x631e8  5      
  cmpl $0x7, %edx                #  57    0x631ed  3      
  jne .L_63280                   #  58    0x631f0  6      
  jmpq .L_632c0                  #  59    0x631f6  5      
  nop                            #  60    0x631fb  1      
.L_63240:                        #        0x631fc  0      
  andl $0xfffffff8, %edx         #  61    0x631fc  6      
  leal (%rdx,%rax,1), %eax       #  62    0x63202  3      
  cmpl %eax, %r8d                #  63    0x63205  3      
  ja .L_632c0                    #  64    0x63208  6      
  nop                            #  65    0x6320e  1      
  nop                            #  66    0x6320f  1      
.L_63260:                        #        0x63210  0      
  cmpl %eax, %r9d                #  67    0x63210  3      
  jbe .L_632c0                   #  68    0x63213  6      
  cmpl %eax, %r10d               #  69    0x63219  3      
  je .L_632c0                    #  70    0x6321c  6      
  movl %eax, %eax                #  71    0x63222  2      
  movl 0x4(%r15,%rax,1), %edx    #  72    0x63224  5      
  cmpl $0x7, %edx                #  73    0x63229  3      
  je .L_632c0                    #  74    0x6322c  6      
  nop                            #  75    0x63232  1      
.L_63280:                        #        0x63233  0      
  movl %edx, %ecx                #  76    0x63233  2      
  movl %edx, %edi                #  77    0x63235  2      
  andl $0xfffffff8, %ecx         #  78    0x63237  6      
  andl $0x3, %edi                #  79    0x6323d  3      
  addl %ecx, %esi                #  80    0x63240  2      
  cmpl $0x1, %edi                #  81    0x63242  3      
  jne .L_63240                   #  82    0x63245  6      
  andl $0xfffffff8, %edx         #  83    0x6324b  6      
  addl %ecx, %r11d               #  84    0x63251  3      
  addl $0x1, %r12d               #  85    0x63254  4      
  leal (%rdx,%rax,1), %eax       #  86    0x63258  3      
  xchgw %ax, %ax                 #  87    0x6325b  3      
  cmpl %eax, %r8d                #  88    0x6325e  3      
  jbe .L_63260                   #  89    0x63261  6      
  nop                            #  90    0x63267  1      
  nop                            #  91    0x63268  1      
.L_632c0:                        #        0x63269  0      
  movl %r13d, %r13d              #  92    0x63269  3      
  movl 0x8(%r15,%r13,1), %r13d   #  93    0x6326c  5      
  testq %r13, %r13               #  94    0x63271  3      
  jne .L_631c0                   #  95    0x63274  6      
  movl 0xffd37f0(%rip), %eax     #  96    0x6327a  6      
  movl 0xffd37ee(%rip), %ecx     #  97    0x63280  6      
  movl %eax, %edx                #  98    0x63286  2      
  nop                            #  99    0x63288  1      
  subl %r11d, %eax               #  100   0x63289  3      
  subl %esi, %edx                #  101   0x6328c  2      
  nop                            #  102   0x6328e  1      
  nop                            #  103   0x6328f  1      
.L_63300:                        #        0x63290  0      
  movl 0x8(%rsp), %edi           #  104   0x63290  4      
  testl %edi, %edi               #  105   0x63294  2      
  je .L_63320                    #  106   0x63296  6      
  mfence                         #  107   0x6329c  3      
  movl $0x0, 0xffd37d7(%rip)     #  108   0x6329f  10     
  nop                            #  109   0x632a9  1      
.L_63320:                        #        0x632aa  0      
  movl 0xc(%rsp), %edi           #  110   0x632aa  4      
  movl %ebx, %ebx                #  111   0x632ae  2      
  movl %r11d, 0x20(%r15,%rbx,1)  #  112   0x632b0  5      
  movl %ebx, %ebx                #  113   0x632b5  2      
  movl %eax, 0x1c(%r15,%rbx,1)   #  114   0x632b7  5      
  movl %ebx, %ebx                #  115   0x632bc  2      
  movl %r12d, 0x4(%r15,%rbx,1)   #  116   0x632be  5      
  movl %ebx, %eax                #  117   0x632c3  2      
  nop                            #  118   0x632c5  1      
  movl %ebx, %ebx                #  119   0x632c6  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  120   0x632c8  9      
  movl %ebx, %ebx                #  121   0x632d1  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  122   0x632d3  9      
  nop                            #  123   0x632dc  1      
  movl %ebx, %ebx                #  124   0x632dd  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  125   0x632df  9      
  movl %ebx, %ebx                #  126   0x632e8  2      
  movl %edi, 0x24(%r15,%rbx,1)   #  127   0x632ea  5      
  movl %ebx, %ebx                #  128   0x632ef  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  129   0x632f1  5      
  movl %ebx, %ebx                #  130   0x632f6  2      
  movl %edx, 0x10(%r15,%rbx,1)   #  131   0x632f8  5      
  movl %ebx, %ebx                #  132   0x632fd  2      
  movl %esi, (%r15,%rbx,1)       #  133   0x632ff  4      
  addl $0x18, %esp               #  134   0x63303  3      
  addq %r15, %rsp                #  135   0x63306  3      
  popq %rbx                      #  136   0x63309  2      
  popq %r12                      #  137   0x6330b  3      
  popq %r13                      #  138   0x6330e  3      
  popq %r14                      #  139   0x63311  3      
  popq %r11                      #  140   0x63314  3      
  andl $0xffffffe0, %r11d        #  141   0x63317  7      
  addq %r15, %r11                #  142   0x6331e  3      
  jmpq %r11                      #  143   0x63321  3      
  nop                            #  144   0x63324  1      
.L_633a0:                        #        0x63325  0      
  movl $0x1, %eax                #  145   0x63325  5      
  xchgl %eax, 0xffd3750(%rip)    #  146   0x6332a  6      
  testl %eax, %eax               #  147   0x63330  2      
  jne .L_63440                   #  148   0x63332  6      
  movl 0xffd3599(%rip), %r10d    #  149   0x63338  7      
  movl 0xffd3737(%rip), %eax     #  150   0x6333f  6      
  andl $0x2, %eax                #  151   0x63345  3      
  testq %r10, %r10               #  152   0x63348  3      
  movl %eax, 0x8(%rsp)           #  153   0x6334b  4      
  jne .L_63180                   #  154   0x6334f  6      
  nop                            #  155   0x63355  1      
  nop                            #  156   0x63356  1      
.L_633e0:                        #        0x63357  0      
  xorl %esi, %esi                #  157   0x63357  2      
  xorl %r12d, %r12d              #  158   0x63359  3      
  xorl %edx, %edx                #  159   0x6335c  2      
  xorl %ecx, %ecx                #  160   0x6335e  2      
  xorl %eax, %eax                #  161   0x63360  2      
  xorl %r11d, %r11d              #  162   0x63362  3      
  movl $0x0, 0xc(%rsp)           #  163   0x63365  8      
  jmpq .L_63300                  #  164   0x6336d  5      
  nop                            #  165   0x63372  1      
.L_63400:                        #        0x63373  0      
  nop                            #  166   0x63373  1      
  nop                            #  167   0x63374  1      
  callq .init_mparams            #  168   0x63375  5      
  jmpq .L_63140                  #  169   0x6337a  5      
  nop                            #  170   0x6337f  1      
  nop                            #  171   0x63380  1      
.L_63440:                        #        0x63381  0      
  movl $0x10036a80, %edi         #  172   0x63381  5      
  nop                            #  173   0x63386  1      
  nop                            #  174   0x63387  1      
  callq .spin_acquire_lock       #  175   0x63388  5      
  testl %eax, %eax               #  176   0x6338d  2      
  jne .L_63480                   #  177   0x6338f  6      
  movl 0xffd36e1(%rip), %edi     #  178   0x63395  6      
  andl $0x2, %edi                #  179   0x6339b  3      
  movl %edi, 0x8(%rsp)           #  180   0x6339e  4      
  jmpq .L_63160                  #  181   0x633a2  5      
  nop                            #  182   0x633a7  1      
.L_63480:                        #        0x633a8  0      
  xorl %esi, %esi                #  183   0x633a8  2      
  xorl %r12d, %r12d              #  184   0x633aa  3      
  xorl %edx, %edx                #  185   0x633ad  2      
  xorl %ecx, %ecx                #  186   0x633af  2      
  xorl %eax, %eax                #  187   0x633b1  2      
  xorl %r11d, %r11d              #  188   0x633b3  3      
  movl $0x0, 0xc(%rsp)           #  189   0x633b6  8      
  jmpq .L_63320                  #  190   0x633be  5      
  nop                            #  191   0x633c3  1      
                                                          
.size mallinfo, .-mallinfo

