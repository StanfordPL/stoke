  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, @function

#! file-offset 0x21020
#! rip-offset  0x21020
#! capacity    576 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv:                      #        0x21020  0      
  pushq %r12                                                           #  1     0x21020  3      
  movl %esi, %r12d                                                     #  2     0x21023  3      
  pushq %rbx                                                           #  3     0x21026  2      
  movl %edi, %ebx                                                      #  4     0x21028  2      
  leal 0xc(%rbx), %r11d                                                #  5     0x2102a  4      
  subl $0x18, %esp                                                     #  6     0x2102e  3      
  addq %r15, %rsp                                                      #  7     0x21031  3      
  movl %ebx, %ebx                                                      #  8     0x21034  2      
  movl 0x10(%r15,%rbx,1), %edx                                         #  9     0x21036  5      
  movq %r11, %r10                                                      #  10    0x2103b  3      
  testq %rdx, %rdx                                                     #  11    0x2103e  3      
  nop                                                                  #  12    0x21041  1      
  je .L_21120                                                          #  13    0x21042  6      
  movl %r12d, %r12d                                                    #  14    0x21048  3      
  movl (%r15,%r12,1), %r9d                                             #  15    0x2104b  4      
  leal -0xc(%r9), %eax                                                 #  16    0x2104f  4      
  movl %eax, %eax                                                      #  17    0x21053  2      
  movl (%r15,%rax,1), %r8d                                             #  18    0x21055  4      
  jmpq .L_210a0                                                        #  19    0x21059  5      
  nop                                                                  #  20    0x2105e  1      
.L_21060:                                                              #        0x2105f  0      
  movl %edx, %edx                                                      #  21    0x2105f  2      
  movl 0x8(%r15,%rdx,1), %eax                                          #  22    0x21061  5      
  movq %rdx, %r10                                                      #  23    0x21066  3      
  testq %rax, %rax                                                     #  24    0x21069  3      
  je .L_21120                                                          #  25    0x2106c  6      
  nop                                                                  #  26    0x21072  1      
.L_21080:                                                              #        0x21073  0      
  movq %rax, %rdx                                                      #  27    0x21073  3      
  nop                                                                  #  28    0x21076  1      
  nop                                                                  #  29    0x21077  1      
.L_210a0:                                                              #        0x21078  0      
  movl %edx, %edx                                                      #  30    0x21078  2      
  movl 0x10(%r15,%rdx,1), %esi                                         #  31    0x2107a  5      
  movl %r8d, %ecx                                                      #  32    0x2107f  3      
  movq %r9, %rdi                                                       #  33    0x21082  3      
  leal -0xc(%rsi), %eax                                                #  34    0x21085  3      
  movl %eax, %eax                                                      #  35    0x21088  2      
  movl (%r15,%rax,1), %eax                                             #  36    0x2108a  4      
  cmpl %r8d, %eax                                                      #  37    0x2108e  3      
  cmovbel %eax, %ecx                                                   #  38    0x21091  3      
  movl %ecx, %ecx                                                      #  39    0x21094  2      
  xchgw %ax, %ax                                                       #  40    0x21096  3      
  cmpq %rcx, %rcx                                                      #  41    0x21099  3      
  movl %esi, %esi                                                      #  42    0x2109c  2      
  leaq (%r15,%rsi,1), %rsi                                             #  43    0x2109e  4      
  movl %edi, %edi                                                      #  44    0x210a2  2      
  leaq (%r15,%rdi,1), %rdi                                             #  45    0x210a4  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  46    0x210a8  3      
  movl %esi, %esi                                                      #  47    0x210ab  2      
  movl %edi, %edi                                                      #  48    0x210ad  2      
  seta %cl                                                             #  49    0x210af  3      
  setb %sil                                                            #  50    0x210b2  4      
  subl %r8d, %eax                                                      #  51    0x210b6  3      
  nop                                                                  #  52    0x210b9  1      
  subb %sil, %cl                                                       #  53    0x210ba  3      
  movsbl %cl, %ecx                                                     #  54    0x210bd  3      
  testl %ecx, %ecx                                                     #  55    0x210c0  2      
  cmovel %eax, %ecx                                                    #  56    0x210c2  3      
  testl %ecx, %ecx                                                     #  57    0x210c5  2      
  jns .L_21060                                                         #  58    0x210c7  6      
  movl %edx, %edx                                                      #  59    0x210cd  2      
  movl 0xc(%r15,%rdx,1), %eax                                          #  60    0x210cf  5      
  testq %rax, %rax                                                     #  61    0x210d4  3      
  nop                                                                  #  62    0x210d7  1      
  jne .L_21080                                                         #  63    0x210d8  6      
  nop                                                                  #  64    0x210de  1      
  nop                                                                  #  65    0x210df  1      
.L_21120:                                                              #        0x210e0  0      
  cmpl %r10d, %r11d                                                    #  66    0x210e0  3      
  je .L_21200                                                          #  67    0x210e3  6      
  movl %r12d, %r12d                                                    #  68    0x210e9  3      
  movl (%r15,%r12,1), %esi                                             #  69    0x210ec  4      
  movl %r10d, %r10d                                                    #  70    0x210f0  3      
  movl 0x10(%r15,%r10,1), %edi                                         #  71    0x210f3  5      
  leal -0xc(%rsi), %eax                                                #  72    0x210f8  3      
  nop                                                                  #  73    0x210fb  1      
  movl %eax, %eax                                                      #  74    0x210fc  2      
  movl (%r15,%rax,1), %edx                                             #  75    0x210fe  4      
  leal -0xc(%rdi), %eax                                                #  76    0x21102  3      
  movl %eax, %eax                                                      #  77    0x21105  2      
  movl (%r15,%rax,1), %eax                                             #  78    0x21107  4      
  movl %edx, %ecx                                                      #  79    0x2110b  2      
  cmpl %edx, %eax                                                      #  80    0x2110d  2      
  cmovbel %eax, %ecx                                                   #  81    0x2110f  3      
  movl %ecx, %ecx                                                      #  82    0x21112  2      
  cmpq %rcx, %rcx                                                      #  83    0x21114  3      
  nop                                                                  #  84    0x21117  1      
  movl %esi, %esi                                                      #  85    0x21118  2      
  leaq (%r15,%rsi,1), %rsi                                             #  86    0x2111a  4      
  movl %edi, %edi                                                      #  87    0x2111e  2      
  leaq (%r15,%rdi,1), %rdi                                             #  88    0x21120  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  89    0x21124  3      
  movl %esi, %esi                                                      #  90    0x21127  2      
  movl %edi, %edi                                                      #  91    0x21129  2      
  seta %cl                                                             #  92    0x2112b  3      
  setb %sil                                                            #  93    0x2112e  4      
  subl %eax, %edx                                                      #  94    0x21132  2      
  subb %sil, %cl                                                       #  95    0x21134  3      
  xchgw %ax, %ax                                                       #  96    0x21137  3      
  movsbl %cl, %ecx                                                     #  97    0x2113a  3      
  testl %ecx, %ecx                                                     #  98    0x2113d  2      
  cmovel %edx, %ecx                                                    #  99    0x2113f  3      
  testl %ecx, %ecx                                                     #  100   0x21142  2      
  js .L_21200                                                          #  101   0x21144  6      
  movl %r10d, %edi                                                     #  102   0x2114a  3      
  movl %r11d, %esi                                                     #  103   0x2114d  3      
  nop                                                                  #  104   0x21150  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  105   0x21151  5      
  movl %eax, %r12d                                                     #  106   0x21156  3      
  movl %r12d, %r12d                                                    #  107   0x21159  3      
  movl 0x10(%r15,%r12,1), %edi                                         #  108   0x2115c  5      
  subl $0xc, %edi                                                      #  109   0x21161  3      
  cmpl $0x10031da0, %edi                                               #  110   0x21164  6      
  jne .L_21220                                                         #  111   0x2116a  6      
  nop                                                                  #  112   0x21170  1      
.L_211c0:                                                              #        0x21171  0      
  movl %r12d, %edi                                                     #  113   0x21171  3      
  nop                                                                  #  114   0x21174  1      
  nop                                                                  #  115   0x21175  1      
  callq ._ZdlPv                                                        #  116   0x21176  5      
  movl %ebx, %ebx                                                      #  117   0x2117b  2      
  subl $0x1, 0x1c(%r15,%rbx,1)                                         #  118   0x2117d  6      
  nop                                                                  #  119   0x21183  1      
  nop                                                                  #  120   0x21184  1      
.L_21200:                                                              #        0x21185  0      
  addl $0x18, %esp                                                     #  121   0x21185  3      
  addq %r15, %rsp                                                      #  122   0x21188  3      
  popq %rbx                                                            #  123   0x2118b  2      
  popq %r12                                                            #  124   0x2118d  3      
  popq %r11                                                            #  125   0x21190  3      
  andl $0xffffffe0, %r11d                                              #  126   0x21193  7      
  addq %r15, %r11                                                      #  127   0x2119a  3      
  jmpq %r11                                                            #  128   0x2119d  3      
  nop                                                                  #  129   0x211a0  1      
.L_21220:                                                              #        0x211a1  0      
  movl %edi, %edi                                                      #  130   0x211a1  2      
  movl 0x8(%r15,%rdi,1), %eax                                          #  131   0x211a3  5      
  leal -0x1(%rax), %edx                                                #  132   0x211a8  3      
  testl %eax, %eax                                                     #  133   0x211ab  2      
  movl %edi, %edi                                                      #  134   0x211ad  2      
  movl %edx, 0x8(%r15,%rdi,1)                                          #  135   0x211af  5      
  jg .L_211c0                                                          #  136   0x211b4  6      
  leal 0xf(%rsp), %esi                                                 #  137   0x211ba  4      
  xchgw %ax, %ax                                                       #  138   0x211be  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                #  139   0x211c1  5      
  jmpq .L_211c0                                                        #  140   0x211c6  5      
  nop                                                                  #  141   0x211cb  1      
  nop                                                                  #  142   0x211cc  1      
  nop                                                                  #  143   0x211cd  1      
                                                                                                
.size _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKSsPv

