  .text
  .globl quorem
  .type quorem, @function

#! file-offset 0x78400
#! rip-offset  0x78400
#! capacity    864 bytes

# Text                           #  Line  RIP      Bytes  
.quorem:                         #        0x78400  0      
  pushq %r14                     #  1     0x78400  3      
  movl %edi, %ecx                #  2     0x78403  2      
  movl %esi, %esi                #  3     0x78405  2      
  xorl %eax, %eax                #  4     0x78407  2      
  pushq %r13                     #  5     0x78409  3      
  pushq %r12                     #  6     0x7840c  3      
  pushq %rbx                     #  7     0x7840f  2      
  subl $0x28, %esp               #  8     0x78411  3      
  addq %r15, %rsp                #  9     0x78414  3      
  movl %esi, %esi                #  10    0x78417  2      
  movl 0x10(%r15,%rsi,1), %edx   #  11    0x78419  5      
  nop                            #  12    0x7841e  1      
  movl %ecx, %ecx                #  13    0x7841f  2      
  cmpl 0x10(%r15,%rcx,1), %edx   #  14    0x78421  5      
  jg .L_78740                    #  15    0x78426  6      
  leal -0x1(%rdx), %r12d         #  16    0x7842c  4      
  leal 0xc(,%rdx,4), %edx        #  17    0x78430  7      
  leal 0x14(%rcx), %eax          #  18    0x78437  3      
  leal 0x14(%rsi), %ebx          #  19    0x7843a  3      
  xchgw %ax, %ax                 #  20    0x7843d  3      
  leal 0x4(%rdx,%rsi,1), %r14d   #  21    0x78440  5      
  movslq %edx, %rdx              #  22    0x78445  3      
  movq %rax, 0x8(%rsp)           #  23    0x78448  5      
  leaq (%rcx,%rdx,1), %rax       #  24    0x7844d  4      
  leaq (%rsi,%rdx,1), %rdx       #  25    0x78451  4      
  movl %edx, %edx                #  26    0x78455  2      
  movl 0x4(%r15,%rdx,1), %edi    #  27    0x78457  5      
  nop                            #  28    0x7845c  1      
  movl %eax, %eax                #  29    0x7845d  2      
  movl 0x4(%r15,%rax,1), %eax    #  30    0x7845f  5      
  xorl %edx, %edx                #  31    0x78464  2      
  addl $0x1, %edi                #  32    0x78466  3      
  divl %edi                      #  33    0x78469  2      
  testl %eax, %eax               #  34    0x7846b  2      
  movl %eax, %r13d               #  35    0x7846d  3      
  movl %eax, 0x14(%rsp)          #  36    0x78470  4      
  je .L_785e0                    #  37    0x78474  6      
  nop                            #  38    0x7847a  1      
  movq 0x8(%rsp), %rdx           #  39    0x7847b  5      
  movq %rbx, %rdi                #  40    0x78480  3      
  xorl %r11d, %r11d              #  41    0x78483  3      
  xorl %r10d, %r10d              #  42    0x78486  3      
  movq %rbx, 0x18(%rsp)          #  43    0x78489  5      
  nop                            #  44    0x7848e  1      
.L_784a0:                        #        0x7848f  0      
  movl %edi, %edi                #  45    0x7848f  2      
  movl (%r15,%rdi,1), %eax       #  46    0x78491  4      
  movl %r13d, %ebx               #  47    0x78495  3      
  addl $0x4, %edi                #  48    0x78498  3      
  movzwl %ax, %r9d               #  49    0x7849b  4      
  shrl $0x10, %eax               #  50    0x7849f  3      
  imull %r13d, %r9d              #  51    0x784a2  4      
  imull %eax, %ebx               #  52    0x784a6  3      
  leal (%r11,%r9,1), %r9d        #  53    0x784a9  4      
  xchgw %ax, %ax                 #  54    0x784ad  3      
  movl %r9d, %r8d                #  55    0x784b0  3      
  andl $0xffff, %r9d             #  56    0x784b3  7      
  shrl $0x10, %r8d               #  57    0x784ba  4      
  leal (%r8,%rbx,1), %ebx        #  58    0x784be  4      
  movl %edx, %edx                #  59    0x784c2  2      
  movl (%r15,%rdx,1), %r8d       #  60    0x784c4  4      
  movl %ebx, %r11d               #  61    0x784c8  3      
  nop                            #  62    0x784cb  1      
  andl $0xffff, %ebx             #  63    0x784cc  6      
  movzwl %r8w, %eax              #  64    0x784d2  4      
  shrl $0x10, %r8d               #  65    0x784d6  4      
  shrl $0x10, %r11d              #  66    0x784da  4      
  leal (%r10,%rax,1), %eax       #  67    0x784de  4      
  subl %ebx, %r8d                #  68    0x784e2  3      
  subl %r9d, %eax                #  69    0x784e5  3      
  movl %eax, %ebx                #  70    0x784e8  2      
  xchgw %ax, %ax                 #  71    0x784ea  3      
  andl $0xffff, %eax             #  72    0x784ed  5      
  sarl $0x10, %ebx               #  73    0x784f2  3      
  addl %ebx, %r8d                #  74    0x784f5  3      
  movl %r8d, %r10d               #  75    0x784f8  3      
  shll $0x10, %r8d               #  76    0x784fb  4      
  orl %eax, %r8d                 #  77    0x784ff  3      
  sarl $0x10, %r10d              #  78    0x78502  4      
  movl %edx, %edx                #  79    0x78506  2      
  movl %r8d, (%r15,%rdx,1)       #  80    0x78508  4      
  nop                            #  81    0x7850c  1      
  addl $0x4, %edx                #  82    0x7850d  3      
  cmpl %edi, %r14d               #  83    0x78510  3      
  jae .L_784a0                   #  84    0x78513  6      
  leal 0x10(,%r12,4), %eax       #  85    0x78519  8      
  movq 0x18(%rsp), %rbx          #  86    0x78521  5      
  movslq %eax, %rdx              #  87    0x78526  3      
  leaq (%rcx,%rdx,1), %rdx       #  88    0x78529  4      
  movl %edx, %edx                #  89    0x7852d  2      
  movl 0x4(%r15,%rdx,1), %r10d   #  90    0x7852f  5      
  testl %r10d, %r10d             #  91    0x78534  3      
  jne .L_785e0                   #  92    0x78537  6      
  addl %ecx, %eax                #  93    0x7853d  2      
  cmpl %eax, 0x8(%rsp)           #  94    0x7853f  4      
  jae .L_785c0                   #  95    0x78543  6      
  movl %eax, %eax                #  96    0x78549  2      
  movl (%r15,%rax,1), %r9d       #  97    0x7854b  4      
  xchgw %ax, %ax                 #  98    0x7854f  3      
  testl %r9d, %r9d               #  99    0x78552  3      
  jne .L_785c0                   #  100   0x78555  6      
  movq 0x8(%rsp), %rdx           #  101   0x7855b  5      
  jmpq .L_785a0                  #  102   0x78560  5      
  nop                            #  103   0x78565  1      
  nop                            #  104   0x78566  1      
.L_78580:                        #        0x78567  0      
  movl %eax, %eax                #  105   0x78567  2      
  movl (%r15,%rax,1), %r8d       #  106   0x78569  4      
  testl %r8d, %r8d               #  107   0x7856d  3      
  jne .L_785c0                   #  108   0x78570  6      
  nop                            #  109   0x78576  1      
  nop                            #  110   0x78577  1      
.L_785a0:                        #        0x78578  0      
  subl $0x4, %eax                #  111   0x78578  3      
  subl $0x1, %r12d               #  112   0x7857b  4      
  cmpl %eax, %edx                #  113   0x7857f  2      
  jb .L_78580                    #  114   0x78581  6      
  nop                            #  115   0x78587  1      
  nop                            #  116   0x78588  1      
.L_785c0:                        #        0x78589  0      
  movl %ecx, %ecx                #  117   0x78589  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  118   0x7858b  5      
  nop                            #  119   0x78590  1      
  nop                            #  120   0x78591  1      
.L_785e0:                        #        0x78592  0      
  movl %ecx, %edi                #  121   0x78592  2      
  movq %rcx, (%rsp)              #  122   0x78594  4      
  nop                            #  123   0x78598  1      
  nop                            #  124   0x78599  1      
  callq .__mcmp                  #  125   0x7859a  5      
  testl %eax, %eax               #  126   0x7859f  2      
  movq (%rsp), %rcx              #  127   0x785a1  4      
  js .L_78720                    #  128   0x785a5  6      
  movq 0x8(%rsp), %rax           #  129   0x785ab  5      
  addl $0x1, %r13d               #  130   0x785b0  4      
  xorl %r8d, %r8d                #  131   0x785b4  3      
  movl %r13d, 0x14(%rsp)         #  132   0x785b7  5      
  nop                            #  133   0x785bc  1      
.L_78620:                        #        0x785bd  0      
  movl %ebx, %ebx                #  134   0x785bd  2      
  movl (%r15,%rbx,1), %edi       #  135   0x785bf  4      
  movl %eax, %eax                #  136   0x785c3  2      
  movl (%r15,%rax,1), %edx       #  137   0x785c5  4      
  addl $0x4, %ebx                #  138   0x785c9  3      
  movzwl %dx, %esi               #  139   0x785cc  3      
  movzwl %di, %r9d               #  140   0x785cf  4      
  shrl $0x10, %edx               #  141   0x785d3  3      
  subl %r9d, %esi                #  142   0x785d6  3      
  shrl $0x10, %edi               #  143   0x785d9  3      
  nop                            #  144   0x785dc  1      
  addl %r8d, %esi                #  145   0x785dd  3      
  subl %edi, %edx                #  146   0x785e0  2      
  movl %esi, %edi                #  147   0x785e2  2      
  andl $0xffff, %esi             #  148   0x785e4  6      
  sarl $0x10, %edi               #  149   0x785ea  3      
  addl %edi, %edx                #  150   0x785ed  2      
  movl %edx, %r8d                #  151   0x785ef  3      
  shll $0x10, %edx               #  152   0x785f2  3      
  orl %esi, %edx                 #  153   0x785f5  2      
  sarl $0x10, %r8d               #  154   0x785f7  4      
  xchgw %ax, %ax                 #  155   0x785fb  3      
  movl %eax, %eax                #  156   0x785fe  2      
  movl %edx, (%r15,%rax,1)       #  157   0x78600  4      
  addl $0x4, %eax                #  158   0x78604  3      
  cmpl %ebx, %r14d               #  159   0x78607  3      
  jae .L_78620                   #  160   0x7860a  6      
  leal 0x10(,%r12,4), %eax       #  161   0x78610  8      
  movslq %eax, %rdx              #  162   0x78618  3      
  leaq (%rcx,%rdx,1), %rdx       #  163   0x7861b  4      
  nop                            #  164   0x7861f  1      
  movl %edx, %edx                #  165   0x78620  2      
  movl 0x4(%r15,%rdx,1), %edi    #  166   0x78622  5      
  testl %edi, %edi               #  167   0x78627  2      
  jne .L_78720                   #  168   0x78629  6      
  addl %ecx, %eax                #  169   0x7862f  2      
  cmpl %eax, 0x8(%rsp)           #  170   0x78631  4      
  jae .L_78700                   #  171   0x78635  6      
  movl %eax, %eax                #  172   0x7863b  2      
  movl (%r15,%rax,1), %esi       #  173   0x7863d  4      
  testl %esi, %esi               #  174   0x78641  2      
  nop                            #  175   0x78643  1      
  jne .L_78700                   #  176   0x78644  6      
  movq 0x8(%rsp), %rdx           #  177   0x7864a  5      
  jmpq .L_786e0                  #  178   0x7864f  5      
  nop                            #  179   0x78654  1      
  nop                            #  180   0x78655  1      
.L_786c0:                        #        0x78656  0      
  movl %eax, %eax                #  181   0x78656  2      
  movl (%r15,%rax,1), %ebx       #  182   0x78658  4      
  testl %ebx, %ebx               #  183   0x7865c  2      
  jne .L_78700                   #  184   0x7865e  6      
  nop                            #  185   0x78664  1      
  nop                            #  186   0x78665  1      
.L_786e0:                        #        0x78666  0      
  subl $0x4, %eax                #  187   0x78666  3      
  subl $0x1, %r12d               #  188   0x78669  4      
  cmpl %eax, %edx                #  189   0x7866d  2      
  jb .L_786c0                    #  190   0x7866f  6      
  nop                            #  191   0x78675  1      
  nop                            #  192   0x78676  1      
.L_78700:                        #        0x78677  0      
  movl %ecx, %ecx                #  193   0x78677  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  194   0x78679  5      
  nop                            #  195   0x7867e  1      
  nop                            #  196   0x7867f  1      
.L_78720:                        #        0x78680  0      
  movl 0x14(%rsp), %eax          #  197   0x78680  4      
  nop                            #  198   0x78684  1      
  nop                            #  199   0x78685  1      
.L_78740:                        #        0x78686  0      
  addl $0x28, %esp               #  200   0x78686  3      
  addq %r15, %rsp                #  201   0x78689  3      
  popq %rbx                      #  202   0x7868c  2      
  popq %r12                      #  203   0x7868e  3      
  popq %r13                      #  204   0x78691  3      
  popq %r14                      #  205   0x78694  3      
  popq %r11                      #  206   0x78697  3      
  andl $0xffffffe0, %r11d        #  207   0x7869a  7      
  addq %r15, %r11                #  208   0x786a1  3      
  jmpq %r11                      #  209   0x786a4  3      
  nop                            #  210   0x786a7  1      
                                                          
.size quorem, .-quorem

