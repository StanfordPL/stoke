  .text
  .globl quorem
  .type quorem, @function

#! file-offset 0x78420
#! rip-offset  0x78420
#! capacity    864 bytes

# Text                           #  Line  RIP      Bytes  
.quorem:                         #        0x78420  0      
  pushq %r14                     #  1     0x78420  3      
  movl %edi, %ecx                #  2     0x78423  2      
  movl %esi, %esi                #  3     0x78425  2      
  xorl %eax, %eax                #  4     0x78427  2      
  pushq %r13                     #  5     0x78429  3      
  pushq %r12                     #  6     0x7842c  3      
  pushq %rbx                     #  7     0x7842f  2      
  subl $0x28, %esp               #  8     0x78431  3      
  addq %r15, %rsp                #  9     0x78434  3      
  movl %esi, %esi                #  10    0x78437  2      
  movl 0x10(%r15,%rsi,1), %edx   #  11    0x78439  5      
  nop                            #  12    0x7843e  1      
  movl %ecx, %ecx                #  13    0x7843f  2      
  cmpl 0x10(%r15,%rcx,1), %edx   #  14    0x78441  5      
  jg .L_78760                    #  15    0x78446  6      
  leal -0x1(%rdx), %r12d         #  16    0x7844c  4      
  leal 0xc(,%rdx,4), %edx        #  17    0x78450  7      
  leal 0x14(%rcx), %eax          #  18    0x78457  3      
  leal 0x14(%rsi), %ebx          #  19    0x7845a  3      
  xchgw %ax, %ax                 #  20    0x7845d  3      
  leal 0x4(%rdx,%rsi,1), %r14d   #  21    0x78460  5      
  movslq %edx, %rdx              #  22    0x78465  3      
  movq %rax, 0x8(%rsp)           #  23    0x78468  5      
  leaq (%rcx,%rdx,1), %rax       #  24    0x7846d  4      
  leaq (%rsi,%rdx,1), %rdx       #  25    0x78471  4      
  movl %edx, %edx                #  26    0x78475  2      
  movl 0x4(%r15,%rdx,1), %edi    #  27    0x78477  5      
  nop                            #  28    0x7847c  1      
  movl %eax, %eax                #  29    0x7847d  2      
  movl 0x4(%r15,%rax,1), %eax    #  30    0x7847f  5      
  xorl %edx, %edx                #  31    0x78484  2      
  addl $0x1, %edi                #  32    0x78486  3      
  divl %edi                      #  33    0x78489  2      
  testl %eax, %eax               #  34    0x7848b  2      
  movl %eax, %r13d               #  35    0x7848d  3      
  movl %eax, 0x14(%rsp)          #  36    0x78490  4      
  je .L_78600                    #  37    0x78494  6      
  nop                            #  38    0x7849a  1      
  movq 0x8(%rsp), %rdx           #  39    0x7849b  5      
  movq %rbx, %rdi                #  40    0x784a0  3      
  xorl %r11d, %r11d              #  41    0x784a3  3      
  xorl %r10d, %r10d              #  42    0x784a6  3      
  movq %rbx, 0x18(%rsp)          #  43    0x784a9  5      
  nop                            #  44    0x784ae  1      
.L_784c0:                        #        0x784af  0      
  movl %edi, %edi                #  45    0x784af  2      
  movl (%r15,%rdi,1), %eax       #  46    0x784b1  4      
  movl %r13d, %ebx               #  47    0x784b5  3      
  addl $0x4, %edi                #  48    0x784b8  3      
  movzwl %ax, %r9d               #  49    0x784bb  4      
  shrl $0x10, %eax               #  50    0x784bf  3      
  imull %r13d, %r9d              #  51    0x784c2  4      
  imull %eax, %ebx               #  52    0x784c6  3      
  leal (%r11,%r9,1), %r9d        #  53    0x784c9  4      
  xchgw %ax, %ax                 #  54    0x784cd  3      
  movl %r9d, %r8d                #  55    0x784d0  3      
  andl $0xffff, %r9d             #  56    0x784d3  7      
  shrl $0x10, %r8d               #  57    0x784da  4      
  leal (%r8,%rbx,1), %ebx        #  58    0x784de  4      
  movl %edx, %edx                #  59    0x784e2  2      
  movl (%r15,%rdx,1), %r8d       #  60    0x784e4  4      
  movl %ebx, %r11d               #  61    0x784e8  3      
  nop                            #  62    0x784eb  1      
  andl $0xffff, %ebx             #  63    0x784ec  6      
  movzwl %r8w, %eax              #  64    0x784f2  4      
  shrl $0x10, %r8d               #  65    0x784f6  4      
  shrl $0x10, %r11d              #  66    0x784fa  4      
  leal (%r10,%rax,1), %eax       #  67    0x784fe  4      
  subl %ebx, %r8d                #  68    0x78502  3      
  subl %r9d, %eax                #  69    0x78505  3      
  movl %eax, %ebx                #  70    0x78508  2      
  xchgw %ax, %ax                 #  71    0x7850a  3      
  andl $0xffff, %eax             #  72    0x7850d  5      
  sarl $0x10, %ebx               #  73    0x78512  3      
  addl %ebx, %r8d                #  74    0x78515  3      
  movl %r8d, %r10d               #  75    0x78518  3      
  shll $0x10, %r8d               #  76    0x7851b  4      
  orl %eax, %r8d                 #  77    0x7851f  3      
  sarl $0x10, %r10d              #  78    0x78522  4      
  movl %edx, %edx                #  79    0x78526  2      
  movl %r8d, (%r15,%rdx,1)       #  80    0x78528  4      
  nop                            #  81    0x7852c  1      
  addl $0x4, %edx                #  82    0x7852d  3      
  cmpl %edi, %r14d               #  83    0x78530  3      
  jae .L_784c0                   #  84    0x78533  6      
  leal 0x10(,%r12,4), %eax       #  85    0x78539  8      
  movq 0x18(%rsp), %rbx          #  86    0x78541  5      
  movslq %eax, %rdx              #  87    0x78546  3      
  leaq (%rcx,%rdx,1), %rdx       #  88    0x78549  4      
  movl %edx, %edx                #  89    0x7854d  2      
  movl 0x4(%r15,%rdx,1), %r10d   #  90    0x7854f  5      
  testl %r10d, %r10d             #  91    0x78554  3      
  jne .L_78600                   #  92    0x78557  6      
  addl %ecx, %eax                #  93    0x7855d  2      
  cmpl %eax, 0x8(%rsp)           #  94    0x7855f  4      
  jae .L_785e0                   #  95    0x78563  6      
  movl %eax, %eax                #  96    0x78569  2      
  movl (%r15,%rax,1), %r9d       #  97    0x7856b  4      
  xchgw %ax, %ax                 #  98    0x7856f  3      
  testl %r9d, %r9d               #  99    0x78572  3      
  jne .L_785e0                   #  100   0x78575  6      
  movq 0x8(%rsp), %rdx           #  101   0x7857b  5      
  jmpq .L_785c0                  #  102   0x78580  5      
  nop                            #  103   0x78585  1      
  nop                            #  104   0x78586  1      
.L_785a0:                        #        0x78587  0      
  movl %eax, %eax                #  105   0x78587  2      
  movl (%r15,%rax,1), %r8d       #  106   0x78589  4      
  testl %r8d, %r8d               #  107   0x7858d  3      
  jne .L_785e0                   #  108   0x78590  6      
  nop                            #  109   0x78596  1      
  nop                            #  110   0x78597  1      
.L_785c0:                        #        0x78598  0      
  subl $0x4, %eax                #  111   0x78598  3      
  subl $0x1, %r12d               #  112   0x7859b  4      
  cmpl %eax, %edx                #  113   0x7859f  2      
  jb .L_785a0                    #  114   0x785a1  6      
  nop                            #  115   0x785a7  1      
  nop                            #  116   0x785a8  1      
.L_785e0:                        #        0x785a9  0      
  movl %ecx, %ecx                #  117   0x785a9  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  118   0x785ab  5      
  nop                            #  119   0x785b0  1      
  nop                            #  120   0x785b1  1      
.L_78600:                        #        0x785b2  0      
  movl %ecx, %edi                #  121   0x785b2  2      
  movq %rcx, (%rsp)              #  122   0x785b4  4      
  nop                            #  123   0x785b8  1      
  nop                            #  124   0x785b9  1      
  callq .__mcmp                  #  125   0x785ba  5      
  testl %eax, %eax               #  126   0x785bf  2      
  movq (%rsp), %rcx              #  127   0x785c1  4      
  js .L_78740                    #  128   0x785c5  6      
  movq 0x8(%rsp), %rax           #  129   0x785cb  5      
  addl $0x1, %r13d               #  130   0x785d0  4      
  xorl %r8d, %r8d                #  131   0x785d4  3      
  movl %r13d, 0x14(%rsp)         #  132   0x785d7  5      
  nop                            #  133   0x785dc  1      
.L_78640:                        #        0x785dd  0      
  movl %ebx, %ebx                #  134   0x785dd  2      
  movl (%r15,%rbx,1), %edi       #  135   0x785df  4      
  movl %eax, %eax                #  136   0x785e3  2      
  movl (%r15,%rax,1), %edx       #  137   0x785e5  4      
  addl $0x4, %ebx                #  138   0x785e9  3      
  movzwl %dx, %esi               #  139   0x785ec  3      
  movzwl %di, %r9d               #  140   0x785ef  4      
  shrl $0x10, %edx               #  141   0x785f3  3      
  subl %r9d, %esi                #  142   0x785f6  3      
  shrl $0x10, %edi               #  143   0x785f9  3      
  nop                            #  144   0x785fc  1      
  addl %r8d, %esi                #  145   0x785fd  3      
  subl %edi, %edx                #  146   0x78600  2      
  movl %esi, %edi                #  147   0x78602  2      
  andl $0xffff, %esi             #  148   0x78604  6      
  sarl $0x10, %edi               #  149   0x7860a  3      
  addl %edi, %edx                #  150   0x7860d  2      
  movl %edx, %r8d                #  151   0x7860f  3      
  shll $0x10, %edx               #  152   0x78612  3      
  orl %esi, %edx                 #  153   0x78615  2      
  sarl $0x10, %r8d               #  154   0x78617  4      
  xchgw %ax, %ax                 #  155   0x7861b  3      
  movl %eax, %eax                #  156   0x7861e  2      
  movl %edx, (%r15,%rax,1)       #  157   0x78620  4      
  addl $0x4, %eax                #  158   0x78624  3      
  cmpl %ebx, %r14d               #  159   0x78627  3      
  jae .L_78640                   #  160   0x7862a  6      
  leal 0x10(,%r12,4), %eax       #  161   0x78630  8      
  movslq %eax, %rdx              #  162   0x78638  3      
  leaq (%rcx,%rdx,1), %rdx       #  163   0x7863b  4      
  nop                            #  164   0x7863f  1      
  movl %edx, %edx                #  165   0x78640  2      
  movl 0x4(%r15,%rdx,1), %edi    #  166   0x78642  5      
  testl %edi, %edi               #  167   0x78647  2      
  jne .L_78740                   #  168   0x78649  6      
  addl %ecx, %eax                #  169   0x7864f  2      
  cmpl %eax, 0x8(%rsp)           #  170   0x78651  4      
  jae .L_78720                   #  171   0x78655  6      
  movl %eax, %eax                #  172   0x7865b  2      
  movl (%r15,%rax,1), %esi       #  173   0x7865d  4      
  testl %esi, %esi               #  174   0x78661  2      
  nop                            #  175   0x78663  1      
  jne .L_78720                   #  176   0x78664  6      
  movq 0x8(%rsp), %rdx           #  177   0x7866a  5      
  jmpq .L_78700                  #  178   0x7866f  5      
  nop                            #  179   0x78674  1      
  nop                            #  180   0x78675  1      
.L_786e0:                        #        0x78676  0      
  movl %eax, %eax                #  181   0x78676  2      
  movl (%r15,%rax,1), %ebx       #  182   0x78678  4      
  testl %ebx, %ebx               #  183   0x7867c  2      
  jne .L_78720                   #  184   0x7867e  6      
  nop                            #  185   0x78684  1      
  nop                            #  186   0x78685  1      
.L_78700:                        #        0x78686  0      
  subl $0x4, %eax                #  187   0x78686  3      
  subl $0x1, %r12d               #  188   0x78689  4      
  cmpl %eax, %edx                #  189   0x7868d  2      
  jb .L_786e0                    #  190   0x7868f  6      
  nop                            #  191   0x78695  1      
  nop                            #  192   0x78696  1      
.L_78720:                        #        0x78697  0      
  movl %ecx, %ecx                #  193   0x78697  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  194   0x78699  5      
  nop                            #  195   0x7869e  1      
  nop                            #  196   0x7869f  1      
.L_78740:                        #        0x786a0  0      
  movl 0x14(%rsp), %eax          #  197   0x786a0  4      
  nop                            #  198   0x786a4  1      
  nop                            #  199   0x786a5  1      
.L_78760:                        #        0x786a6  0      
  addl $0x28, %esp               #  200   0x786a6  3      
  addq %r15, %rsp                #  201   0x786a9  3      
  popq %rbx                      #  202   0x786ac  2      
  popq %r12                      #  203   0x786ae  3      
  popq %r13                      #  204   0x786b1  3      
  popq %r14                      #  205   0x786b4  3      
  popq %r11                      #  206   0x786b7  3      
  andl $0xffffffe0, %r11d        #  207   0x786ba  7      
  addq %r15, %r11                #  208   0x786c1  3      
  jmpq %r11                      #  209   0x786c4  3      
  nop                            #  210   0x786c7  1      
                                                          
.size quorem, .-quorem

