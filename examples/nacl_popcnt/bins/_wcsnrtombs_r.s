  .text
  .globl _wcsnrtombs_r
  .type _wcsnrtombs_r, @function

#! file-offset 0x87640
#! rip-offset  0x87640
#! capacity    736 bytes

# Text                          #  Line  RIP      Bytes  
._wcsnrtombs_r:                 #        0x87640  0      
  pushq %r14                    #  1     0x87640  3      
  movl %edi, %edi               #  2     0x87643  2      
  movl %esi, %esi               #  3     0x87645  2      
  movl %edx, %edx               #  4     0x87647  2      
  pushq %r13                    #  5     0x87649  3      
  pushq %r12                    #  6     0x8764c  3      
  pushq %rbx                    #  7     0x8764f  2      
  movl %r9d, %ebx               #  8     0x87651  3      
  subl $0x68, %esp              #  9     0x87654  3      
  addq %r15, %rsp               #  10    0x87657  3      
  movq %rdi, 0x38(%rsp)         #  11    0x8765a  5      
  movl 0x38(%rsp), %eax         #  12    0x8765f  4      
  nop                           #  13    0x87663  1      
  movl %r8d, 0x24(%rsp)         #  14    0x87664  5      
  movq %rsi, 0x48(%rsp)         #  15    0x87669  5      
  movq %rdx, 0x40(%rsp)         #  16    0x8766e  5      
  addl $0x11c, %eax             #  17    0x87673  5      
  testq %rbx, %rbx              #  18    0x87678  3      
  cmoveq %rax, %rbx             #  19    0x8767b  4      
  testq %rsi, %rsi              #  20    0x8767f  3      
  xchgw %ax, %ax                #  21    0x87682  3      
  je .L_878a0                   #  22    0x87685  6      
  testl %r8d, %r8d              #  23    0x8768b  3      
  movl %edx, %edx               #  24    0x8768e  2      
  movl (%r15,%rdx,1), %r12d     #  25    0x87690  4      
  je .L_87900                   #  26    0x87694  6      
  nop                           #  27    0x8769a  1      
.L_876a0:                       #        0x8769b  0      
  testl %ecx, %ecx              #  28    0x8769b  2      
  je .L_87900                   #  29    0x8769d  6      
  movq 0x48(%rsp), %rax         #  30    0x876a3  5      
  leal 0x50(%rsp), %edx         #  31    0x876a8  4      
  leal -0x1(%rcx), %r13d        #  32    0x876ac  4      
  xorl %r14d, %r14d             #  33    0x876b0  3      
  movq %rdx, 0x8(%rsp)          #  34    0x876b3  5      
  nop                           #  35    0x876b8  1      
  movq %rax, 0x30(%rsp)         #  36    0x876b9  5      
  nop                           #  37    0x876be  1      
  nop                           #  38    0x876bf  1      
.L_876e0:                       #        0x876c0  0      
  movl %ebx, %ebx               #  39    0x876c0  2      
  movl (%r15,%rbx,1), %esi      #  40    0x876c2  4      
  movl 0xffa92c3(%rip), %r9d    #  41    0x876c6  7      
  movl %esi, 0x2c(%rsp)         #  42    0x876cd  4      
  movl %ebx, %ebx               #  43    0x876d1  2      
  movl 0x4(%r15,%rbx,1), %eax   #  44    0x876d3  5      
  movq %r9, 0x18(%rsp)          #  45    0x876d8  5      
  nop                           #  46    0x876dd  1      
  movl %eax, 0x28(%rsp)         #  47    0x876de  4      
  nop                           #  48    0x876e2  1      
  nop                           #  49    0x876e3  1      
  callq .__locale_charset       #  50    0x876e4  5      
  movl %ebx, %r8d               #  51    0x876e9  3      
  movl %eax, %ecx               #  52    0x876ec  2      
  movl %r12d, %r12d             #  53    0x876ee  3      
  movl (%r15,%r12,1), %edx      #  54    0x876f1  4      
  movl 0x8(%rsp), %esi          #  55    0x876f5  4      
  movl 0x38(%rsp), %edi         #  56    0x876f9  4      
  movq 0x18(%rsp), %r9          #  57    0x876fd  5      
  nop                           #  58    0x87702  1      
  nop                           #  59    0x87703  1      
  nop                           #  60    0x87704  1      
  andl $0xffffffe0, %r9d        #  61    0x87705  7      
  addq %r15, %r9                #  62    0x8770c  3      
  callq %r9                     #  63    0x8770f  3      
  cmpl $0xffffffff, %eax        #  64    0x87712  5      
  je .L_87880                   #  65    0x87717  6      
  leal (%rax,%r14,1), %ecx      #  66    0x8771d  4      
  cmpl 0x24(%rsp), %ecx         #  67    0x87721  4      
  ja .L_87840                   #  68    0x87725  6      
  cmpq $0x0, 0x48(%rsp)         #  69    0x8772b  6      
  nop                           #  70    0x87731  1      
  je .L_87800                   #  71    0x87732  6      
  testl %eax, %eax              #  72    0x87738  2      
  jle .L_877e0                  #  73    0x8773a  6      
  movl 0x8(%rsp), %edx          #  74    0x87740  4      
  movl %edx, %esi               #  75    0x87744  2      
  leal (%rax,%rsi,1), %r8d      #  76    0x87746  4      
  movq 0x30(%rsp), %rsi         #  77    0x8774a  5      
  nop                           #  78    0x8774f  1      
.L_877a0:                       #        0x87750  0      
  movl %edx, %edi               #  79    0x87750  2      
  addl $0x1, %edx               #  80    0x87752  3      
  movl %edi, %edi               #  81    0x87755  2      
  movzbl (%r15,%rdi,1), %edi    #  82    0x87757  5      
  movl %esi, %esi               #  83    0x8775c  2      
  movb %dil, (%r15,%rsi,1)      #  84    0x8775e  4      
  addl $0x1, %esi               #  85    0x87762  3      
  cmpl %r8d, %edx               #  86    0x87765  3      
  jne .L_877a0                  #  87    0x87768  6      
  addl 0x30(%rsp), %eax         #  88    0x8776e  4      
  xchgw %ax, %ax                #  89    0x87772  3      
  movq %rax, 0x30(%rsp)         #  90    0x87775  5      
  nop                           #  91    0x8777a  1      
  nop                           #  92    0x8777b  1      
.L_877e0:                       #        0x8777c  0      
  movq 0x40(%rsp), %rax         #  93    0x8777c  5      
  movl %eax, %eax               #  94    0x87781  2      
  addl $0x4, (%r15,%rax,1)      #  95    0x87783  5      
  nop                           #  96    0x87788  1      
  nop                           #  97    0x87789  1      
.L_87800:                       #        0x8778a  0      
  movl %r12d, %r12d             #  98    0x8778a  3      
  movl (%r15,%r12,1), %eax      #  99    0x8778d  4      
  testl %eax, %eax              #  100   0x87791  2      
  je .L_878c0                   #  101   0x87793  6      
  cmpl 0x24(%rsp), %ecx         #  102   0x87799  4      
  jae .L_87860                  #  103   0x8779d  6      
  testl %r13d, %r13d            #  104   0x877a3  3      
  je .L_87860                   #  105   0x877a6  6      
  addl $0x4, %r12d              #  106   0x877ac  4      
  xchgw %ax, %ax                #  107   0x877b0  3      
  subl $0x1, %r13d              #  108   0x877b3  4      
  movl %ecx, %r14d              #  109   0x877b7  3      
  jmpq .L_876e0                 #  110   0x877ba  5      
  nop                           #  111   0x877bf  1      
  nop                           #  112   0x877c0  1      
.L_87840:                       #        0x877c1  0      
  movl 0x2c(%rsp), %esi         #  113   0x877c1  4      
  movl 0x28(%rsp), %eax         #  114   0x877c5  4      
  movl %r14d, %ecx              #  115   0x877c9  3      
  movl %ebx, %ebx               #  116   0x877cc  2      
  movl %esi, (%r15,%rbx,1)      #  117   0x877ce  4      
  movl %ebx, %ebx               #  118   0x877d2  2      
  movl %eax, 0x4(%r15,%rbx,1)   #  119   0x877d4  5      
  nop                           #  120   0x877d9  1      
.L_87860:                       #        0x877da  0      
  addl $0x68, %esp              #  121   0x877da  3      
  addq %r15, %rsp               #  122   0x877dd  3      
  movl %ecx, %eax               #  123   0x877e0  2      
  popq %rbx                     #  124   0x877e2  2      
  popq %r12                     #  125   0x877e4  3      
  popq %r13                     #  126   0x877e7  3      
  popq %r14                     #  127   0x877ea  3      
  popq %r11                     #  128   0x877ed  3      
  andl $0xffffffe0, %r11d       #  129   0x877f0  7      
  addq %r15, %r11               #  130   0x877f7  3      
  jmpq %r11                     #  131   0x877fa  3      
  nop                           #  132   0x877fd  1      
.L_87880:                       #        0x877fe  0      
  movq 0x38(%rsp), %rdx         #  133   0x877fe  5      
  movl %eax, %ecx               #  134   0x87803  2      
  movl %edx, %edx               #  135   0x87805  2      
  movl $0x54, (%r15,%rdx,1)     #  136   0x87807  8      
  movl %ebx, %ebx               #  137   0x8780f  2      
  movl $0x0, (%r15,%rbx,1)      #  138   0x87811  8      
  jmpq .L_87860                 #  139   0x87819  5      
  nop                           #  140   0x8781e  1      
.L_878a0:                       #        0x8781f  0      
  movq 0x40(%rsp), %rdx         #  141   0x8781f  5      
  movl $0xffffffff, 0x24(%rsp)  #  142   0x87824  8      
  movl %edx, %edx               #  143   0x8782c  2      
  movl (%r15,%rdx,1), %r12d     #  144   0x8782e  4      
  jmpq .L_876a0                 #  145   0x87832  5      
  nop                           #  146   0x87837  1      
.L_878c0:                       #        0x87838  0      
  cmpq $0x0, 0x48(%rsp)         #  147   0x87838  6      
  je .L_878e0                   #  148   0x8783e  6      
  movq 0x40(%rsp), %rdx         #  149   0x87844  5      
  movl %edx, %edx               #  150   0x87849  2      
  movl $0x0, (%r15,%rdx,1)      #  151   0x8784b  8      
  nop                           #  152   0x87853  1      
.L_878e0:                       #        0x87854  0      
  movl %ebx, %ebx               #  153   0x87854  2      
  movl $0x0, (%r15,%rbx,1)      #  154   0x87856  8      
  subl $0x1, %ecx               #  155   0x8785e  3      
  jmpq .L_87860                 #  156   0x87861  5      
  nop                           #  157   0x87866  1      
.L_87900:                       #        0x87867  0      
  xorl %ecx, %ecx               #  158   0x87867  2      
  jmpq .L_87860                 #  159   0x87869  5      
  nop                           #  160   0x8786e  1      
  nop                           #  161   0x8786f  1      
                                                         
.size _wcsnrtombs_r, .-_wcsnrtombs_r

