  .text
  .globl mallinfo
  .type mallinfo, @function

#! file-offset 0x631a0
#! rip-offset  0x631a0
#! capacity    896 bytes

# Text                           #  Line  RIP      Bytes  
.mallinfo:                       #        0x631a0  0      
  pushq %r14                     #  1     0x631a0  3      
  pushq %r13                     #  2     0x631a3  3      
  pushq %r12                     #  3     0x631a6  3      
  pushq %rbx                     #  4     0x631a9  2      
  movl %edi, %ebx                #  5     0x631ab  2      
  subl $0x18, %esp               #  6     0x631ad  3      
  addq %r15, %rsp                #  7     0x631b0  3      
  movl 0xffd36d6(%rip), %r8d     #  8     0x631b3  7      
  testl %r8d, %r8d               #  9     0x631ba  3      
  je .L_63480                    #  10    0x631bd  6      
  nop                            #  11    0x631c3  1      
.L_631c0:                        #        0x631c4  0      
  testb $0x2, 0xffd38b1(%rip)    #  12    0x631c4  7      
  movl $0x0, 0x8(%rsp)           #  13    0x631cb  8      
  jne .L_63420                   #  14    0x631d3  6      
  nop                            #  15    0x631d9  1      
.L_631e0:                        #        0x631da  0      
  movl 0xffd36f7(%rip), %r10d    #  16    0x631da  7      
  testq %r10, %r10               #  17    0x631e1  3      
  je .L_63460                    #  18    0x631e4  6      
  nop                            #  19    0x631ea  1      
  nop                            #  20    0x631eb  1      
.L_63200:                        #        0x631ec  0      
  movl 0xffd36da(%rip), %eax     #  21    0x631ec  6      
  movl $0x10036a84, %r13d        #  22    0x631f2  6      
  movl $0x1, %r12d               #  23    0x631f8  6      
  movl %r13d, %r13d              #  24    0x631fe  3      
  movl $0x8, %r14d               #  25    0x63201  6      
  movl %eax, %r11d               #  26    0x63207  3      
  xchgw %ax, %ax                 #  27    0x6320a  3      
  movl %eax, 0xc(%rsp)           #  28    0x6320d  4      
  addl $0x28, %r11d              #  29    0x63211  4      
  movl %r11d, %esi               #  30    0x63215  3      
  nop                            #  31    0x63218  1      
  nop                            #  32    0x63219  1      
.L_63240:                        #        0x6321a  0      
  movl %r13d, %r13d              #  33    0x6321a  3      
  movl (%r15,%r13,1), %r8d       #  34    0x6321d  4      
  movl %r8d, %eax                #  35    0x63221  3      
  movq %r8, %rdx                 #  36    0x63224  3      
  andl $0x7, %eax                #  37    0x63227  3      
  je .L_63280                    #  38    0x6322a  6      
  movl %r14d, %edx               #  39    0x63230  3      
  subl %eax, %edx                #  40    0x63233  2      
  andl $0x7, %edx                #  41    0x63235  3      
  addl %r8d, %edx                #  42    0x63238  3      
  cmpl %edx, %r8d                #  43    0x6323b  3      
  ja .L_63340                    #  44    0x6323e  6      
  nop                            #  45    0x63244  1      
  nop                            #  46    0x63245  1      
.L_63280:                        #        0x63246  0      
  movl %r13d, %r13d              #  47    0x63246  3      
  movl 0x4(%r15,%r13,1), %r9d    #  48    0x63249  5      
  addl %r8d, %r9d                #  49    0x6324e  3      
  cmpl %edx, %r9d                #  50    0x63251  3      
  jbe .L_63340                   #  51    0x63254  6      
  cmpl %edx, %r10d               #  52    0x6325a  3      
  movq %rdx, %rax                #  53    0x6325d  3      
  je .L_63340                    #  54    0x63260  6      
  movl %edx, %edx                #  55    0x63266  2      
  movl 0x4(%r15,%rdx,1), %edx    #  56    0x63268  5      
  cmpl $0x7, %edx                #  57    0x6326d  3      
  jne .L_63300                   #  58    0x63270  6      
  jmpq .L_63340                  #  59    0x63276  5      
  nop                            #  60    0x6327b  1      
.L_632c0:                        #        0x6327c  0      
  andl $0xfffffff8, %edx         #  61    0x6327c  6      
  leal (%rdx,%rax,1), %eax       #  62    0x63282  3      
  cmpl %eax, %r8d                #  63    0x63285  3      
  ja .L_63340                    #  64    0x63288  6      
  nop                            #  65    0x6328e  1      
  nop                            #  66    0x6328f  1      
.L_632e0:                        #        0x63290  0      
  cmpl %eax, %r9d                #  67    0x63290  3      
  jbe .L_63340                   #  68    0x63293  6      
  cmpl %eax, %r10d               #  69    0x63299  3      
  je .L_63340                    #  70    0x6329c  6      
  movl %eax, %eax                #  71    0x632a2  2      
  movl 0x4(%r15,%rax,1), %edx    #  72    0x632a4  5      
  cmpl $0x7, %edx                #  73    0x632a9  3      
  je .L_63340                    #  74    0x632ac  6      
  nop                            #  75    0x632b2  1      
.L_63300:                        #        0x632b3  0      
  movl %edx, %ecx                #  76    0x632b3  2      
  movl %edx, %edi                #  77    0x632b5  2      
  andl $0xfffffff8, %ecx         #  78    0x632b7  6      
  andl $0x3, %edi                #  79    0x632bd  3      
  addl %ecx, %esi                #  80    0x632c0  2      
  cmpl $0x1, %edi                #  81    0x632c2  3      
  jne .L_632c0                   #  82    0x632c5  6      
  andl $0xfffffff8, %edx         #  83    0x632cb  6      
  addl %ecx, %r11d               #  84    0x632d1  3      
  addl $0x1, %r12d               #  85    0x632d4  4      
  leal (%rdx,%rax,1), %eax       #  86    0x632d8  3      
  xchgw %ax, %ax                 #  87    0x632db  3      
  cmpl %eax, %r8d                #  88    0x632de  3      
  jbe .L_632e0                   #  89    0x632e1  6      
  nop                            #  90    0x632e7  1      
  nop                            #  91    0x632e8  1      
.L_63340:                        #        0x632e9  0      
  movl %r13d, %r13d              #  92    0x632e9  3      
  movl 0x8(%r15,%r13,1), %r13d   #  93    0x632ec  5      
  testq %r13, %r13               #  94    0x632f1  3      
  jne .L_63240                   #  95    0x632f4  6      
  movl 0xffd3770(%rip), %eax     #  96    0x632fa  6      
  movl 0xffd376e(%rip), %ecx     #  97    0x63300  6      
  movl %eax, %edx                #  98    0x63306  2      
  nop                            #  99    0x63308  1      
  subl %r11d, %eax               #  100   0x63309  3      
  subl %esi, %edx                #  101   0x6330c  2      
  nop                            #  102   0x6330e  1      
  nop                            #  103   0x6330f  1      
.L_63380:                        #        0x63310  0      
  movl 0x8(%rsp), %edi           #  104   0x63310  4      
  testl %edi, %edi               #  105   0x63314  2      
  je .L_633a0                    #  106   0x63316  6      
  mfence                         #  107   0x6331c  3      
  movl $0x0, 0xffd3757(%rip)     #  108   0x6331f  10     
  nop                            #  109   0x63329  1      
.L_633a0:                        #        0x6332a  0      
  movl 0xc(%rsp), %edi           #  110   0x6332a  4      
  movl %ebx, %ebx                #  111   0x6332e  2      
  movl %r11d, 0x20(%r15,%rbx,1)  #  112   0x63330  5      
  movl %ebx, %ebx                #  113   0x63335  2      
  movl %eax, 0x1c(%r15,%rbx,1)   #  114   0x63337  5      
  movl %ebx, %ebx                #  115   0x6333c  2      
  movl %r12d, 0x4(%r15,%rbx,1)   #  116   0x6333e  5      
  movl %ebx, %eax                #  117   0x63343  2      
  nop                            #  118   0x63345  1      
  movl %ebx, %ebx                #  119   0x63346  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  120   0x63348  9      
  movl %ebx, %ebx                #  121   0x63351  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  122   0x63353  9      
  nop                            #  123   0x6335c  1      
  movl %ebx, %ebx                #  124   0x6335d  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  125   0x6335f  9      
  movl %ebx, %ebx                #  126   0x63368  2      
  movl %edi, 0x24(%r15,%rbx,1)   #  127   0x6336a  5      
  movl %ebx, %ebx                #  128   0x6336f  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  129   0x63371  5      
  movl %ebx, %ebx                #  130   0x63376  2      
  movl %edx, 0x10(%r15,%rbx,1)   #  131   0x63378  5      
  movl %ebx, %ebx                #  132   0x6337d  2      
  movl %esi, (%r15,%rbx,1)       #  133   0x6337f  4      
  addl $0x18, %esp               #  134   0x63383  3      
  addq %r15, %rsp                #  135   0x63386  3      
  popq %rbx                      #  136   0x63389  2      
  popq %r12                      #  137   0x6338b  3      
  popq %r13                      #  138   0x6338e  3      
  popq %r14                      #  139   0x63391  3      
  popq %r11                      #  140   0x63394  3      
  andl $0xffffffe0, %r11d        #  141   0x63397  7      
  addq %r15, %r11                #  142   0x6339e  3      
  jmpq %r11                      #  143   0x633a1  3      
  nop                            #  144   0x633a4  1      
.L_63420:                        #        0x633a5  0      
  movl $0x1, %eax                #  145   0x633a5  5      
  xchgl %eax, 0xffd36d0(%rip)    #  146   0x633aa  6      
  testl %eax, %eax               #  147   0x633b0  2      
  jne .L_634c0                   #  148   0x633b2  6      
  movl 0xffd3519(%rip), %r10d    #  149   0x633b8  7      
  movl 0xffd36b7(%rip), %eax     #  150   0x633bf  6      
  andl $0x2, %eax                #  151   0x633c5  3      
  testq %r10, %r10               #  152   0x633c8  3      
  movl %eax, 0x8(%rsp)           #  153   0x633cb  4      
  jne .L_63200                   #  154   0x633cf  6      
  nop                            #  155   0x633d5  1      
  nop                            #  156   0x633d6  1      
.L_63460:                        #        0x633d7  0      
  xorl %esi, %esi                #  157   0x633d7  2      
  xorl %r12d, %r12d              #  158   0x633d9  3      
  xorl %edx, %edx                #  159   0x633dc  2      
  xorl %ecx, %ecx                #  160   0x633de  2      
  xorl %eax, %eax                #  161   0x633e0  2      
  xorl %r11d, %r11d              #  162   0x633e2  3      
  movl $0x0, 0xc(%rsp)           #  163   0x633e5  8      
  jmpq .L_63380                  #  164   0x633ed  5      
  nop                            #  165   0x633f2  1      
.L_63480:                        #        0x633f3  0      
  nop                            #  166   0x633f3  1      
  nop                            #  167   0x633f4  1      
  callq .init_mparams            #  168   0x633f5  5      
  jmpq .L_631c0                  #  169   0x633fa  5      
  nop                            #  170   0x633ff  1      
  nop                            #  171   0x63400  1      
.L_634c0:                        #        0x63401  0      
  movl $0x10036a80, %edi         #  172   0x63401  5      
  nop                            #  173   0x63406  1      
  nop                            #  174   0x63407  1      
  callq .spin_acquire_lock       #  175   0x63408  5      
  testl %eax, %eax               #  176   0x6340d  2      
  jne .L_63500                   #  177   0x6340f  6      
  movl 0xffd3661(%rip), %edi     #  178   0x63415  6      
  andl $0x2, %edi                #  179   0x6341b  3      
  movl %edi, 0x8(%rsp)           #  180   0x6341e  4      
  jmpq .L_631e0                  #  181   0x63422  5      
  nop                            #  182   0x63427  1      
.L_63500:                        #        0x63428  0      
  xorl %esi, %esi                #  183   0x63428  2      
  xorl %r12d, %r12d              #  184   0x6342a  3      
  xorl %edx, %edx                #  185   0x6342d  2      
  xorl %ecx, %ecx                #  186   0x6342f  2      
  xorl %eax, %eax                #  187   0x63431  2      
  xorl %r11d, %r11d              #  188   0x63433  3      
  movl $0x0, 0xc(%rsp)           #  189   0x63436  8      
  jmpq .L_633a0                  #  190   0x6343e  5      
  nop                            #  191   0x63443  1      
                                                          
.size mallinfo, .-mallinfo

