  .text
  .globl quorem
  .type quorem, @function

#! file-offset 0x784a0
#! rip-offset  0x784a0
#! capacity    864 bytes

# Text                           #  Line  RIP      Bytes  
.quorem:                         #        0x784a0  0      
  pushq %r14                     #  1     0x784a0  3      
  movl %edi, %ecx                #  2     0x784a3  2      
  movl %esi, %esi                #  3     0x784a5  2      
  xorl %eax, %eax                #  4     0x784a7  2      
  pushq %r13                     #  5     0x784a9  3      
  pushq %r12                     #  6     0x784ac  3      
  pushq %rbx                     #  7     0x784af  2      
  subl $0x28, %esp               #  8     0x784b1  3      
  addq %r15, %rsp                #  9     0x784b4  3      
  movl %esi, %esi                #  10    0x784b7  2      
  movl 0x10(%r15,%rsi,1), %edx   #  11    0x784b9  5      
  nop                            #  12    0x784be  1      
  movl %ecx, %ecx                #  13    0x784bf  2      
  cmpl 0x10(%r15,%rcx,1), %edx   #  14    0x784c1  5      
  jg .L_787e0                    #  15    0x784c6  6      
  leal -0x1(%rdx), %r12d         #  16    0x784cc  4      
  leal 0xc(,%rdx,4), %edx        #  17    0x784d0  7      
  leal 0x14(%rcx), %eax          #  18    0x784d7  3      
  leal 0x14(%rsi), %ebx          #  19    0x784da  3      
  xchgw %ax, %ax                 #  20    0x784dd  3      
  leal 0x4(%rdx,%rsi,1), %r14d   #  21    0x784e0  5      
  movslq %edx, %rdx              #  22    0x784e5  3      
  movq %rax, 0x8(%rsp)           #  23    0x784e8  5      
  leaq (%rcx,%rdx,1), %rax       #  24    0x784ed  4      
  leaq (%rsi,%rdx,1), %rdx       #  25    0x784f1  4      
  movl %edx, %edx                #  26    0x784f5  2      
  movl 0x4(%r15,%rdx,1), %edi    #  27    0x784f7  5      
  nop                            #  28    0x784fc  1      
  movl %eax, %eax                #  29    0x784fd  2      
  movl 0x4(%r15,%rax,1), %eax    #  30    0x784ff  5      
  xorl %edx, %edx                #  31    0x78504  2      
  addl $0x1, %edi                #  32    0x78506  3      
  divl %edi                      #  33    0x78509  2      
  testl %eax, %eax               #  34    0x7850b  2      
  movl %eax, %r13d               #  35    0x7850d  3      
  movl %eax, 0x14(%rsp)          #  36    0x78510  4      
  je .L_78680                    #  37    0x78514  6      
  nop                            #  38    0x7851a  1      
  movq 0x8(%rsp), %rdx           #  39    0x7851b  5      
  movq %rbx, %rdi                #  40    0x78520  3      
  xorl %r11d, %r11d              #  41    0x78523  3      
  xorl %r10d, %r10d              #  42    0x78526  3      
  movq %rbx, 0x18(%rsp)          #  43    0x78529  5      
  nop                            #  44    0x7852e  1      
.L_78540:                        #        0x7852f  0      
  movl %edi, %edi                #  45    0x7852f  2      
  movl (%r15,%rdi,1), %eax       #  46    0x78531  4      
  movl %r13d, %ebx               #  47    0x78535  3      
  addl $0x4, %edi                #  48    0x78538  3      
  movzwl %ax, %r9d               #  49    0x7853b  4      
  shrl $0x10, %eax               #  50    0x7853f  3      
  imull %r13d, %r9d              #  51    0x78542  4      
  imull %eax, %ebx               #  52    0x78546  3      
  leal (%r11,%r9,1), %r9d        #  53    0x78549  4      
  xchgw %ax, %ax                 #  54    0x7854d  3      
  movl %r9d, %r8d                #  55    0x78550  3      
  andl $0xffff, %r9d             #  56    0x78553  7      
  shrl $0x10, %r8d               #  57    0x7855a  4      
  leal (%r8,%rbx,1), %ebx        #  58    0x7855e  4      
  movl %edx, %edx                #  59    0x78562  2      
  movl (%r15,%rdx,1), %r8d       #  60    0x78564  4      
  movl %ebx, %r11d               #  61    0x78568  3      
  nop                            #  62    0x7856b  1      
  andl $0xffff, %ebx             #  63    0x7856c  6      
  movzwl %r8w, %eax              #  64    0x78572  4      
  shrl $0x10, %r8d               #  65    0x78576  4      
  shrl $0x10, %r11d              #  66    0x7857a  4      
  leal (%r10,%rax,1), %eax       #  67    0x7857e  4      
  subl %ebx, %r8d                #  68    0x78582  3      
  subl %r9d, %eax                #  69    0x78585  3      
  movl %eax, %ebx                #  70    0x78588  2      
  xchgw %ax, %ax                 #  71    0x7858a  3      
  andl $0xffff, %eax             #  72    0x7858d  5      
  sarl $0x10, %ebx               #  73    0x78592  3      
  addl %ebx, %r8d                #  74    0x78595  3      
  movl %r8d, %r10d               #  75    0x78598  3      
  shll $0x10, %r8d               #  76    0x7859b  4      
  orl %eax, %r8d                 #  77    0x7859f  3      
  sarl $0x10, %r10d              #  78    0x785a2  4      
  movl %edx, %edx                #  79    0x785a6  2      
  movl %r8d, (%r15,%rdx,1)       #  80    0x785a8  4      
  nop                            #  81    0x785ac  1      
  addl $0x4, %edx                #  82    0x785ad  3      
  cmpl %edi, %r14d               #  83    0x785b0  3      
  jae .L_78540                   #  84    0x785b3  6      
  leal 0x10(,%r12,4), %eax       #  85    0x785b9  8      
  movq 0x18(%rsp), %rbx          #  86    0x785c1  5      
  movslq %eax, %rdx              #  87    0x785c6  3      
  leaq (%rcx,%rdx,1), %rdx       #  88    0x785c9  4      
  movl %edx, %edx                #  89    0x785cd  2      
  movl 0x4(%r15,%rdx,1), %r10d   #  90    0x785cf  5      
  testl %r10d, %r10d             #  91    0x785d4  3      
  jne .L_78680                   #  92    0x785d7  6      
  addl %ecx, %eax                #  93    0x785dd  2      
  cmpl %eax, 0x8(%rsp)           #  94    0x785df  4      
  jae .L_78660                   #  95    0x785e3  6      
  movl %eax, %eax                #  96    0x785e9  2      
  movl (%r15,%rax,1), %r9d       #  97    0x785eb  4      
  xchgw %ax, %ax                 #  98    0x785ef  3      
  testl %r9d, %r9d               #  99    0x785f2  3      
  jne .L_78660                   #  100   0x785f5  6      
  movq 0x8(%rsp), %rdx           #  101   0x785fb  5      
  jmpq .L_78640                  #  102   0x78600  5      
  nop                            #  103   0x78605  1      
  nop                            #  104   0x78606  1      
.L_78620:                        #        0x78607  0      
  movl %eax, %eax                #  105   0x78607  2      
  movl (%r15,%rax,1), %r8d       #  106   0x78609  4      
  testl %r8d, %r8d               #  107   0x7860d  3      
  jne .L_78660                   #  108   0x78610  6      
  nop                            #  109   0x78616  1      
  nop                            #  110   0x78617  1      
.L_78640:                        #        0x78618  0      
  subl $0x4, %eax                #  111   0x78618  3      
  subl $0x1, %r12d               #  112   0x7861b  4      
  cmpl %eax, %edx                #  113   0x7861f  2      
  jb .L_78620                    #  114   0x78621  6      
  nop                            #  115   0x78627  1      
  nop                            #  116   0x78628  1      
.L_78660:                        #        0x78629  0      
  movl %ecx, %ecx                #  117   0x78629  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  118   0x7862b  5      
  nop                            #  119   0x78630  1      
  nop                            #  120   0x78631  1      
.L_78680:                        #        0x78632  0      
  movl %ecx, %edi                #  121   0x78632  2      
  movq %rcx, (%rsp)              #  122   0x78634  4      
  nop                            #  123   0x78638  1      
  nop                            #  124   0x78639  1      
  callq .__mcmp                  #  125   0x7863a  5      
  testl %eax, %eax               #  126   0x7863f  2      
  movq (%rsp), %rcx              #  127   0x78641  4      
  js .L_787c0                    #  128   0x78645  6      
  movq 0x8(%rsp), %rax           #  129   0x7864b  5      
  addl $0x1, %r13d               #  130   0x78650  4      
  xorl %r8d, %r8d                #  131   0x78654  3      
  movl %r13d, 0x14(%rsp)         #  132   0x78657  5      
  nop                            #  133   0x7865c  1      
.L_786c0:                        #        0x7865d  0      
  movl %ebx, %ebx                #  134   0x7865d  2      
  movl (%r15,%rbx,1), %edi       #  135   0x7865f  4      
  movl %eax, %eax                #  136   0x78663  2      
  movl (%r15,%rax,1), %edx       #  137   0x78665  4      
  addl $0x4, %ebx                #  138   0x78669  3      
  movzwl %dx, %esi               #  139   0x7866c  3      
  movzwl %di, %r9d               #  140   0x7866f  4      
  shrl $0x10, %edx               #  141   0x78673  3      
  subl %r9d, %esi                #  142   0x78676  3      
  shrl $0x10, %edi               #  143   0x78679  3      
  nop                            #  144   0x7867c  1      
  addl %r8d, %esi                #  145   0x7867d  3      
  subl %edi, %edx                #  146   0x78680  2      
  movl %esi, %edi                #  147   0x78682  2      
  andl $0xffff, %esi             #  148   0x78684  6      
  sarl $0x10, %edi               #  149   0x7868a  3      
  addl %edi, %edx                #  150   0x7868d  2      
  movl %edx, %r8d                #  151   0x7868f  3      
  shll $0x10, %edx               #  152   0x78692  3      
  orl %esi, %edx                 #  153   0x78695  2      
  sarl $0x10, %r8d               #  154   0x78697  4      
  xchgw %ax, %ax                 #  155   0x7869b  3      
  movl %eax, %eax                #  156   0x7869e  2      
  movl %edx, (%r15,%rax,1)       #  157   0x786a0  4      
  addl $0x4, %eax                #  158   0x786a4  3      
  cmpl %ebx, %r14d               #  159   0x786a7  3      
  jae .L_786c0                   #  160   0x786aa  6      
  leal 0x10(,%r12,4), %eax       #  161   0x786b0  8      
  movslq %eax, %rdx              #  162   0x786b8  3      
  leaq (%rcx,%rdx,1), %rdx       #  163   0x786bb  4      
  nop                            #  164   0x786bf  1      
  movl %edx, %edx                #  165   0x786c0  2      
  movl 0x4(%r15,%rdx,1), %edi    #  166   0x786c2  5      
  testl %edi, %edi               #  167   0x786c7  2      
  jne .L_787c0                   #  168   0x786c9  6      
  addl %ecx, %eax                #  169   0x786cf  2      
  cmpl %eax, 0x8(%rsp)           #  170   0x786d1  4      
  jae .L_787a0                   #  171   0x786d5  6      
  movl %eax, %eax                #  172   0x786db  2      
  movl (%r15,%rax,1), %esi       #  173   0x786dd  4      
  testl %esi, %esi               #  174   0x786e1  2      
  nop                            #  175   0x786e3  1      
  jne .L_787a0                   #  176   0x786e4  6      
  movq 0x8(%rsp), %rdx           #  177   0x786ea  5      
  jmpq .L_78780                  #  178   0x786ef  5      
  nop                            #  179   0x786f4  1      
  nop                            #  180   0x786f5  1      
.L_78760:                        #        0x786f6  0      
  movl %eax, %eax                #  181   0x786f6  2      
  movl (%r15,%rax,1), %ebx       #  182   0x786f8  4      
  testl %ebx, %ebx               #  183   0x786fc  2      
  jne .L_787a0                   #  184   0x786fe  6      
  nop                            #  185   0x78704  1      
  nop                            #  186   0x78705  1      
.L_78780:                        #        0x78706  0      
  subl $0x4, %eax                #  187   0x78706  3      
  subl $0x1, %r12d               #  188   0x78709  4      
  cmpl %eax, %edx                #  189   0x7870d  2      
  jb .L_78760                    #  190   0x7870f  6      
  nop                            #  191   0x78715  1      
  nop                            #  192   0x78716  1      
.L_787a0:                        #        0x78717  0      
  movl %ecx, %ecx                #  193   0x78717  2      
  movl %r12d, 0x10(%r15,%rcx,1)  #  194   0x78719  5      
  nop                            #  195   0x7871e  1      
  nop                            #  196   0x7871f  1      
.L_787c0:                        #        0x78720  0      
  movl 0x14(%rsp), %eax          #  197   0x78720  4      
  nop                            #  198   0x78724  1      
  nop                            #  199   0x78725  1      
.L_787e0:                        #        0x78726  0      
  addl $0x28, %esp               #  200   0x78726  3      
  addq %r15, %rsp                #  201   0x78729  3      
  popq %rbx                      #  202   0x7872c  2      
  popq %r12                      #  203   0x7872e  3      
  popq %r13                      #  204   0x78731  3      
  popq %r14                      #  205   0x78734  3      
  popq %r11                      #  206   0x78737  3      
  andl $0xffffffe0, %r11d        #  207   0x7873a  7      
  addq %r15, %r11                #  208   0x78741  3      
  jmpq %r11                      #  209   0x78744  3      
  nop                            #  210   0x78747  1      
                                                          
.size quorem, .-quorem

