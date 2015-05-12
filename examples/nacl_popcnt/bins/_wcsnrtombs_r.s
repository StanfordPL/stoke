  .text
  .globl _wcsnrtombs_r
  .type _wcsnrtombs_r, @function

#! file-offset 0x87660
#! rip-offset  0x87660
#! capacity    736 bytes

# Text                          #  Line  RIP      Bytes  
._wcsnrtombs_r:                 #        0x87660  0      
  pushq %r14                    #  1     0x87660  3      
  movl %edi, %edi               #  2     0x87663  2      
  movl %esi, %esi               #  3     0x87665  2      
  movl %edx, %edx               #  4     0x87667  2      
  pushq %r13                    #  5     0x87669  3      
  pushq %r12                    #  6     0x8766c  3      
  pushq %rbx                    #  7     0x8766f  2      
  movl %r9d, %ebx               #  8     0x87671  3      
  subl $0x68, %esp              #  9     0x87674  3      
  addq %r15, %rsp               #  10    0x87677  3      
  movq %rdi, 0x38(%rsp)         #  11    0x8767a  5      
  movl 0x38(%rsp), %eax         #  12    0x8767f  4      
  nop                           #  13    0x87683  1      
  movl %r8d, 0x24(%rsp)         #  14    0x87684  5      
  movq %rsi, 0x48(%rsp)         #  15    0x87689  5      
  movq %rdx, 0x40(%rsp)         #  16    0x8768e  5      
  addl $0x11c, %eax             #  17    0x87693  5      
  testq %rbx, %rbx              #  18    0x87698  3      
  cmoveq %rax, %rbx             #  19    0x8769b  4      
  testq %rsi, %rsi              #  20    0x8769f  3      
  xchgw %ax, %ax                #  21    0x876a2  3      
  je .L_878c0                   #  22    0x876a5  6      
  testl %r8d, %r8d              #  23    0x876ab  3      
  movl %edx, %edx               #  24    0x876ae  2      
  movl (%r15,%rdx,1), %r12d     #  25    0x876b0  4      
  je .L_87920                   #  26    0x876b4  6      
  nop                           #  27    0x876ba  1      
.L_876c0:                       #        0x876bb  0      
  testl %ecx, %ecx              #  28    0x876bb  2      
  je .L_87920                   #  29    0x876bd  6      
  movq 0x48(%rsp), %rax         #  30    0x876c3  5      
  leal 0x50(%rsp), %edx         #  31    0x876c8  4      
  leal -0x1(%rcx), %r13d        #  32    0x876cc  4      
  xorl %r14d, %r14d             #  33    0x876d0  3      
  movq %rdx, 0x8(%rsp)          #  34    0x876d3  5      
  nop                           #  35    0x876d8  1      
  movq %rax, 0x30(%rsp)         #  36    0x876d9  5      
  nop                           #  37    0x876de  1      
  nop                           #  38    0x876df  1      
.L_87700:                       #        0x876e0  0      
  movl %ebx, %ebx               #  39    0x876e0  2      
  movl (%r15,%rbx,1), %esi      #  40    0x876e2  4      
  movl 0xffa92a3(%rip), %r9d    #  41    0x876e6  7      
  movl %esi, 0x2c(%rsp)         #  42    0x876ed  4      
  movl %ebx, %ebx               #  43    0x876f1  2      
  movl 0x4(%r15,%rbx,1), %eax   #  44    0x876f3  5      
  movq %r9, 0x18(%rsp)          #  45    0x876f8  5      
  nop                           #  46    0x876fd  1      
  movl %eax, 0x28(%rsp)         #  47    0x876fe  4      
  nop                           #  48    0x87702  1      
  nop                           #  49    0x87703  1      
  callq .__locale_charset       #  50    0x87704  5      
  movl %ebx, %r8d               #  51    0x87709  3      
  movl %eax, %ecx               #  52    0x8770c  2      
  movl %r12d, %r12d             #  53    0x8770e  3      
  movl (%r15,%r12,1), %edx      #  54    0x87711  4      
  movl 0x8(%rsp), %esi          #  55    0x87715  4      
  movl 0x38(%rsp), %edi         #  56    0x87719  4      
  movq 0x18(%rsp), %r9          #  57    0x8771d  5      
  nop                           #  58    0x87722  1      
  nop                           #  59    0x87723  1      
  nop                           #  60    0x87724  1      
  andl $0xffffffe0, %r9d        #  61    0x87725  7      
  addq %r15, %r9                #  62    0x8772c  3      
  callq %r9                     #  63    0x8772f  3      
  cmpl $0xffffffff, %eax        #  64    0x87732  5      
  je .L_878a0                   #  65    0x87737  6      
  leal (%rax,%r14,1), %ecx      #  66    0x8773d  4      
  cmpl 0x24(%rsp), %ecx         #  67    0x87741  4      
  ja .L_87860                   #  68    0x87745  6      
  cmpq $0x0, 0x48(%rsp)         #  69    0x8774b  6      
  nop                           #  70    0x87751  1      
  je .L_87820                   #  71    0x87752  6      
  testl %eax, %eax              #  72    0x87758  2      
  jle .L_87800                  #  73    0x8775a  6      
  movl 0x8(%rsp), %edx          #  74    0x87760  4      
  movl %edx, %esi               #  75    0x87764  2      
  leal (%rax,%rsi,1), %r8d      #  76    0x87766  4      
  movq 0x30(%rsp), %rsi         #  77    0x8776a  5      
  nop                           #  78    0x8776f  1      
.L_877c0:                       #        0x87770  0      
  movl %edx, %edi               #  79    0x87770  2      
  addl $0x1, %edx               #  80    0x87772  3      
  movl %edi, %edi               #  81    0x87775  2      
  movzbl (%r15,%rdi,1), %edi    #  82    0x87777  5      
  movl %esi, %esi               #  83    0x8777c  2      
  movb %dil, (%r15,%rsi,1)      #  84    0x8777e  4      
  addl $0x1, %esi               #  85    0x87782  3      
  cmpl %r8d, %edx               #  86    0x87785  3      
  jne .L_877c0                  #  87    0x87788  6      
  addl 0x30(%rsp), %eax         #  88    0x8778e  4      
  xchgw %ax, %ax                #  89    0x87792  3      
  movq %rax, 0x30(%rsp)         #  90    0x87795  5      
  nop                           #  91    0x8779a  1      
  nop                           #  92    0x8779b  1      
.L_87800:                       #        0x8779c  0      
  movq 0x40(%rsp), %rax         #  93    0x8779c  5      
  movl %eax, %eax               #  94    0x877a1  2      
  addl $0x4, (%r15,%rax,1)      #  95    0x877a3  5      
  nop                           #  96    0x877a8  1      
  nop                           #  97    0x877a9  1      
.L_87820:                       #        0x877aa  0      
  movl %r12d, %r12d             #  98    0x877aa  3      
  movl (%r15,%r12,1), %eax      #  99    0x877ad  4      
  testl %eax, %eax              #  100   0x877b1  2      
  je .L_878e0                   #  101   0x877b3  6      
  cmpl 0x24(%rsp), %ecx         #  102   0x877b9  4      
  jae .L_87880                  #  103   0x877bd  6      
  testl %r13d, %r13d            #  104   0x877c3  3      
  je .L_87880                   #  105   0x877c6  6      
  addl $0x4, %r12d              #  106   0x877cc  4      
  xchgw %ax, %ax                #  107   0x877d0  3      
  subl $0x1, %r13d              #  108   0x877d3  4      
  movl %ecx, %r14d              #  109   0x877d7  3      
  jmpq .L_87700                 #  110   0x877da  5      
  nop                           #  111   0x877df  1      
  nop                           #  112   0x877e0  1      
.L_87860:                       #        0x877e1  0      
  movl 0x2c(%rsp), %esi         #  113   0x877e1  4      
  movl 0x28(%rsp), %eax         #  114   0x877e5  4      
  movl %r14d, %ecx              #  115   0x877e9  3      
  movl %ebx, %ebx               #  116   0x877ec  2      
  movl %esi, (%r15,%rbx,1)      #  117   0x877ee  4      
  movl %ebx, %ebx               #  118   0x877f2  2      
  movl %eax, 0x4(%r15,%rbx,1)   #  119   0x877f4  5      
  nop                           #  120   0x877f9  1      
.L_87880:                       #        0x877fa  0      
  addl $0x68, %esp              #  121   0x877fa  3      
  addq %r15, %rsp               #  122   0x877fd  3      
  movl %ecx, %eax               #  123   0x87800  2      
  popq %rbx                     #  124   0x87802  2      
  popq %r12                     #  125   0x87804  3      
  popq %r13                     #  126   0x87807  3      
  popq %r14                     #  127   0x8780a  3      
  popq %r11                     #  128   0x8780d  3      
  andl $0xffffffe0, %r11d       #  129   0x87810  7      
  addq %r15, %r11               #  130   0x87817  3      
  jmpq %r11                     #  131   0x8781a  3      
  nop                           #  132   0x8781d  1      
.L_878a0:                       #        0x8781e  0      
  movq 0x38(%rsp), %rdx         #  133   0x8781e  5      
  movl %eax, %ecx               #  134   0x87823  2      
  movl %edx, %edx               #  135   0x87825  2      
  movl $0x54, (%r15,%rdx,1)     #  136   0x87827  8      
  movl %ebx, %ebx               #  137   0x8782f  2      
  movl $0x0, (%r15,%rbx,1)      #  138   0x87831  8      
  jmpq .L_87880                 #  139   0x87839  5      
  nop                           #  140   0x8783e  1      
.L_878c0:                       #        0x8783f  0      
  movq 0x40(%rsp), %rdx         #  141   0x8783f  5      
  movl $0xffffffff, 0x24(%rsp)  #  142   0x87844  8      
  movl %edx, %edx               #  143   0x8784c  2      
  movl (%r15,%rdx,1), %r12d     #  144   0x8784e  4      
  jmpq .L_876c0                 #  145   0x87852  5      
  nop                           #  146   0x87857  1      
.L_878e0:                       #        0x87858  0      
  cmpq $0x0, 0x48(%rsp)         #  147   0x87858  6      
  je .L_87900                   #  148   0x8785e  6      
  movq 0x40(%rsp), %rdx         #  149   0x87864  5      
  movl %edx, %edx               #  150   0x87869  2      
  movl $0x0, (%r15,%rdx,1)      #  151   0x8786b  8      
  nop                           #  152   0x87873  1      
.L_87900:                       #        0x87874  0      
  movl %ebx, %ebx               #  153   0x87874  2      
  movl $0x0, (%r15,%rbx,1)      #  154   0x87876  8      
  subl $0x1, %ecx               #  155   0x8787e  3      
  jmpq .L_87880                 #  156   0x87881  5      
  nop                           #  157   0x87886  1      
.L_87920:                       #        0x87887  0      
  xorl %ecx, %ecx               #  158   0x87887  2      
  jmpq .L_87880                 #  159   0x87889  5      
  nop                           #  160   0x8788e  1      
  nop                           #  161   0x8788f  1      
                                                         
.size _wcsnrtombs_r, .-_wcsnrtombs_r

