  .text
  .globl _wcsnrtombs_r
  .type _wcsnrtombs_r, @function

#! file-offset 0x876e0
#! rip-offset  0x876e0
#! capacity    736 bytes

# Text                          #  Line  RIP      Bytes  
._wcsnrtombs_r:                 #        0x876e0  0      
  pushq %r14                    #  1     0x876e0  3      
  movl %edi, %edi               #  2     0x876e3  2      
  movl %esi, %esi               #  3     0x876e5  2      
  movl %edx, %edx               #  4     0x876e7  2      
  pushq %r13                    #  5     0x876e9  3      
  pushq %r12                    #  6     0x876ec  3      
  pushq %rbx                    #  7     0x876ef  2      
  movl %r9d, %ebx               #  8     0x876f1  3      
  subl $0x68, %esp              #  9     0x876f4  3      
  addq %r15, %rsp               #  10    0x876f7  3      
  movq %rdi, 0x38(%rsp)         #  11    0x876fa  5      
  movl 0x38(%rsp), %eax         #  12    0x876ff  4      
  nop                           #  13    0x87703  1      
  movl %r8d, 0x24(%rsp)         #  14    0x87704  5      
  movq %rsi, 0x48(%rsp)         #  15    0x87709  5      
  movq %rdx, 0x40(%rsp)         #  16    0x8770e  5      
  addl $0x11c, %eax             #  17    0x87713  5      
  testq %rbx, %rbx              #  18    0x87718  3      
  cmoveq %rax, %rbx             #  19    0x8771b  4      
  testq %rsi, %rsi              #  20    0x8771f  3      
  xchgw %ax, %ax                #  21    0x87722  3      
  je .L_87940                   #  22    0x87725  6      
  testl %r8d, %r8d              #  23    0x8772b  3      
  movl %edx, %edx               #  24    0x8772e  2      
  movl (%r15,%rdx,1), %r12d     #  25    0x87730  4      
  je .L_879a0                   #  26    0x87734  6      
  nop                           #  27    0x8773a  1      
.L_87740:                       #        0x8773b  0      
  testl %ecx, %ecx              #  28    0x8773b  2      
  je .L_879a0                   #  29    0x8773d  6      
  movq 0x48(%rsp), %rax         #  30    0x87743  5      
  leal 0x50(%rsp), %edx         #  31    0x87748  4      
  leal -0x1(%rcx), %r13d        #  32    0x8774c  4      
  xorl %r14d, %r14d             #  33    0x87750  3      
  movq %rdx, 0x8(%rsp)          #  34    0x87753  5      
  nop                           #  35    0x87758  1      
  movq %rax, 0x30(%rsp)         #  36    0x87759  5      
  nop                           #  37    0x8775e  1      
  nop                           #  38    0x8775f  1      
.L_87780:                       #        0x87760  0      
  movl %ebx, %ebx               #  39    0x87760  2      
  movl (%r15,%rbx,1), %esi      #  40    0x87762  4      
  movl 0xffa9223(%rip), %r9d    #  41    0x87766  7      
  movl %esi, 0x2c(%rsp)         #  42    0x8776d  4      
  movl %ebx, %ebx               #  43    0x87771  2      
  movl 0x4(%r15,%rbx,1), %eax   #  44    0x87773  5      
  movq %r9, 0x18(%rsp)          #  45    0x87778  5      
  nop                           #  46    0x8777d  1      
  movl %eax, 0x28(%rsp)         #  47    0x8777e  4      
  nop                           #  48    0x87782  1      
  nop                           #  49    0x87783  1      
  callq .__locale_charset       #  50    0x87784  5      
  movl %ebx, %r8d               #  51    0x87789  3      
  movl %eax, %ecx               #  52    0x8778c  2      
  movl %r12d, %r12d             #  53    0x8778e  3      
  movl (%r15,%r12,1), %edx      #  54    0x87791  4      
  movl 0x8(%rsp), %esi          #  55    0x87795  4      
  movl 0x38(%rsp), %edi         #  56    0x87799  4      
  movq 0x18(%rsp), %r9          #  57    0x8779d  5      
  nop                           #  58    0x877a2  1      
  nop                           #  59    0x877a3  1      
  nop                           #  60    0x877a4  1      
  andl $0xffffffe0, %r9d        #  61    0x877a5  7      
  addq %r15, %r9                #  62    0x877ac  3      
  callq %r9                     #  63    0x877af  3      
  cmpl $0xffffffff, %eax        #  64    0x877b2  5      
  je .L_87920                   #  65    0x877b7  6      
  leal (%rax,%r14,1), %ecx      #  66    0x877bd  4      
  cmpl 0x24(%rsp), %ecx         #  67    0x877c1  4      
  ja .L_878e0                   #  68    0x877c5  6      
  cmpq $0x0, 0x48(%rsp)         #  69    0x877cb  6      
  nop                           #  70    0x877d1  1      
  je .L_878a0                   #  71    0x877d2  6      
  testl %eax, %eax              #  72    0x877d8  2      
  jle .L_87880                  #  73    0x877da  6      
  movl 0x8(%rsp), %edx          #  74    0x877e0  4      
  movl %edx, %esi               #  75    0x877e4  2      
  leal (%rax,%rsi,1), %r8d      #  76    0x877e6  4      
  movq 0x30(%rsp), %rsi         #  77    0x877ea  5      
  nop                           #  78    0x877ef  1      
.L_87840:                       #        0x877f0  0      
  movl %edx, %edi               #  79    0x877f0  2      
  addl $0x1, %edx               #  80    0x877f2  3      
  movl %edi, %edi               #  81    0x877f5  2      
  movzbl (%r15,%rdi,1), %edi    #  82    0x877f7  5      
  movl %esi, %esi               #  83    0x877fc  2      
  movb %dil, (%r15,%rsi,1)      #  84    0x877fe  4      
  addl $0x1, %esi               #  85    0x87802  3      
  cmpl %r8d, %edx               #  86    0x87805  3      
  jne .L_87840                  #  87    0x87808  6      
  addl 0x30(%rsp), %eax         #  88    0x8780e  4      
  xchgw %ax, %ax                #  89    0x87812  3      
  movq %rax, 0x30(%rsp)         #  90    0x87815  5      
  nop                           #  91    0x8781a  1      
  nop                           #  92    0x8781b  1      
.L_87880:                       #        0x8781c  0      
  movq 0x40(%rsp), %rax         #  93    0x8781c  5      
  movl %eax, %eax               #  94    0x87821  2      
  addl $0x4, (%r15,%rax,1)      #  95    0x87823  5      
  nop                           #  96    0x87828  1      
  nop                           #  97    0x87829  1      
.L_878a0:                       #        0x8782a  0      
  movl %r12d, %r12d             #  98    0x8782a  3      
  movl (%r15,%r12,1), %eax      #  99    0x8782d  4      
  testl %eax, %eax              #  100   0x87831  2      
  je .L_87960                   #  101   0x87833  6      
  cmpl 0x24(%rsp), %ecx         #  102   0x87839  4      
  jae .L_87900                  #  103   0x8783d  6      
  testl %r13d, %r13d            #  104   0x87843  3      
  je .L_87900                   #  105   0x87846  6      
  addl $0x4, %r12d              #  106   0x8784c  4      
  xchgw %ax, %ax                #  107   0x87850  3      
  subl $0x1, %r13d              #  108   0x87853  4      
  movl %ecx, %r14d              #  109   0x87857  3      
  jmpq .L_87780                 #  110   0x8785a  5      
  nop                           #  111   0x8785f  1      
  nop                           #  112   0x87860  1      
.L_878e0:                       #        0x87861  0      
  movl 0x2c(%rsp), %esi         #  113   0x87861  4      
  movl 0x28(%rsp), %eax         #  114   0x87865  4      
  movl %r14d, %ecx              #  115   0x87869  3      
  movl %ebx, %ebx               #  116   0x8786c  2      
  movl %esi, (%r15,%rbx,1)      #  117   0x8786e  4      
  movl %ebx, %ebx               #  118   0x87872  2      
  movl %eax, 0x4(%r15,%rbx,1)   #  119   0x87874  5      
  nop                           #  120   0x87879  1      
.L_87900:                       #        0x8787a  0      
  addl $0x68, %esp              #  121   0x8787a  3      
  addq %r15, %rsp               #  122   0x8787d  3      
  movl %ecx, %eax               #  123   0x87880  2      
  popq %rbx                     #  124   0x87882  2      
  popq %r12                     #  125   0x87884  3      
  popq %r13                     #  126   0x87887  3      
  popq %r14                     #  127   0x8788a  3      
  popq %r11                     #  128   0x8788d  3      
  andl $0xffffffe0, %r11d       #  129   0x87890  7      
  addq %r15, %r11               #  130   0x87897  3      
  jmpq %r11                     #  131   0x8789a  3      
  nop                           #  132   0x8789d  1      
.L_87920:                       #        0x8789e  0      
  movq 0x38(%rsp), %rdx         #  133   0x8789e  5      
  movl %eax, %ecx               #  134   0x878a3  2      
  movl %edx, %edx               #  135   0x878a5  2      
  movl $0x54, (%r15,%rdx,1)     #  136   0x878a7  8      
  movl %ebx, %ebx               #  137   0x878af  2      
  movl $0x0, (%r15,%rbx,1)      #  138   0x878b1  8      
  jmpq .L_87900                 #  139   0x878b9  5      
  nop                           #  140   0x878be  1      
.L_87940:                       #        0x878bf  0      
  movq 0x40(%rsp), %rdx         #  141   0x878bf  5      
  movl $0xffffffff, 0x24(%rsp)  #  142   0x878c4  8      
  movl %edx, %edx               #  143   0x878cc  2      
  movl (%r15,%rdx,1), %r12d     #  144   0x878ce  4      
  jmpq .L_87740                 #  145   0x878d2  5      
  nop                           #  146   0x878d7  1      
.L_87960:                       #        0x878d8  0      
  cmpq $0x0, 0x48(%rsp)         #  147   0x878d8  6      
  je .L_87980                   #  148   0x878de  6      
  movq 0x40(%rsp), %rdx         #  149   0x878e4  5      
  movl %edx, %edx               #  150   0x878e9  2      
  movl $0x0, (%r15,%rdx,1)      #  151   0x878eb  8      
  nop                           #  152   0x878f3  1      
.L_87980:                       #        0x878f4  0      
  movl %ebx, %ebx               #  153   0x878f4  2      
  movl $0x0, (%r15,%rbx,1)      #  154   0x878f6  8      
  subl $0x1, %ecx               #  155   0x878fe  3      
  jmpq .L_87900                 #  156   0x87901  5      
  nop                           #  157   0x87906  1      
.L_879a0:                       #        0x87907  0      
  xorl %ecx, %ecx               #  158   0x87907  2      
  jmpq .L_87900                 #  159   0x87909  5      
  nop                           #  160   0x8790e  1      
  nop                           #  161   0x8790f  1      
                                                         
.size _wcsnrtombs_r, .-_wcsnrtombs_r

