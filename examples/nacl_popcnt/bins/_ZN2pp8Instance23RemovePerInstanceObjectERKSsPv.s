  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, @function

#! file-offset 0x20fa0
#! rip-offset  0x20fa0
#! capacity    576 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv:                      #        0x20fa0  0      
  pushq %r12                                                           #  1     0x20fa0  3      
  movl %esi, %r12d                                                     #  2     0x20fa3  3      
  pushq %rbx                                                           #  3     0x20fa6  2      
  movl %edi, %ebx                                                      #  4     0x20fa8  2      
  leal 0xc(%rbx), %r11d                                                #  5     0x20faa  4      
  subl $0x18, %esp                                                     #  6     0x20fae  3      
  addq %r15, %rsp                                                      #  7     0x20fb1  3      
  movl %ebx, %ebx                                                      #  8     0x20fb4  2      
  movl 0x10(%r15,%rbx,1), %edx                                         #  9     0x20fb6  5      
  movq %r11, %r10                                                      #  10    0x20fbb  3      
  testq %rdx, %rdx                                                     #  11    0x20fbe  3      
  nop                                                                  #  12    0x20fc1  1      
  je .L_210a0                                                          #  13    0x20fc2  6      
  movl %r12d, %r12d                                                    #  14    0x20fc8  3      
  movl (%r15,%r12,1), %r9d                                             #  15    0x20fcb  4      
  leal -0xc(%r9), %eax                                                 #  16    0x20fcf  4      
  movl %eax, %eax                                                      #  17    0x20fd3  2      
  movl (%r15,%rax,1), %r8d                                             #  18    0x20fd5  4      
  jmpq .L_21020                                                        #  19    0x20fd9  5      
  nop                                                                  #  20    0x20fde  1      
.L_20fe0:                                                              #        0x20fdf  0      
  movl %edx, %edx                                                      #  21    0x20fdf  2      
  movl 0x8(%r15,%rdx,1), %eax                                          #  22    0x20fe1  5      
  movq %rdx, %r10                                                      #  23    0x20fe6  3      
  testq %rax, %rax                                                     #  24    0x20fe9  3      
  je .L_210a0                                                          #  25    0x20fec  6      
  nop                                                                  #  26    0x20ff2  1      
.L_21000:                                                              #        0x20ff3  0      
  movq %rax, %rdx                                                      #  27    0x20ff3  3      
  nop                                                                  #  28    0x20ff6  1      
  nop                                                                  #  29    0x20ff7  1      
.L_21020:                                                              #        0x20ff8  0      
  movl %edx, %edx                                                      #  30    0x20ff8  2      
  movl 0x10(%r15,%rdx,1), %esi                                         #  31    0x20ffa  5      
  movl %r8d, %ecx                                                      #  32    0x20fff  3      
  movq %r9, %rdi                                                       #  33    0x21002  3      
  leal -0xc(%rsi), %eax                                                #  34    0x21005  3      
  movl %eax, %eax                                                      #  35    0x21008  2      
  movl (%r15,%rax,1), %eax                                             #  36    0x2100a  4      
  cmpl %r8d, %eax                                                      #  37    0x2100e  3      
  cmovbel %eax, %ecx                                                   #  38    0x21011  3      
  movl %ecx, %ecx                                                      #  39    0x21014  2      
  xchgw %ax, %ax                                                       #  40    0x21016  3      
  cmpq %rcx, %rcx                                                      #  41    0x21019  3      
  movl %esi, %esi                                                      #  42    0x2101c  2      
  leaq (%r15,%rsi,1), %rsi                                             #  43    0x2101e  4      
  movl %edi, %edi                                                      #  44    0x21022  2      
  leaq (%r15,%rdi,1), %rdi                                             #  45    0x21024  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  46    0x21028  3      
  movl %esi, %esi                                                      #  47    0x2102b  2      
  movl %edi, %edi                                                      #  48    0x2102d  2      
  seta %cl                                                             #  49    0x2102f  3      
  setb %sil                                                            #  50    0x21032  4      
  subl %r8d, %eax                                                      #  51    0x21036  3      
  nop                                                                  #  52    0x21039  1      
  subb %sil, %cl                                                       #  53    0x2103a  3      
  movsbl %cl, %ecx                                                     #  54    0x2103d  3      
  testl %ecx, %ecx                                                     #  55    0x21040  2      
  cmovel %eax, %ecx                                                    #  56    0x21042  3      
  testl %ecx, %ecx                                                     #  57    0x21045  2      
  jns .L_20fe0                                                         #  58    0x21047  6      
  movl %edx, %edx                                                      #  59    0x2104d  2      
  movl 0xc(%r15,%rdx,1), %eax                                          #  60    0x2104f  5      
  testq %rax, %rax                                                     #  61    0x21054  3      
  nop                                                                  #  62    0x21057  1      
  jne .L_21000                                                         #  63    0x21058  6      
  nop                                                                  #  64    0x2105e  1      
  nop                                                                  #  65    0x2105f  1      
.L_210a0:                                                              #        0x21060  0      
  cmpl %r10d, %r11d                                                    #  66    0x21060  3      
  je .L_21180                                                          #  67    0x21063  6      
  movl %r12d, %r12d                                                    #  68    0x21069  3      
  movl (%r15,%r12,1), %esi                                             #  69    0x2106c  4      
  movl %r10d, %r10d                                                    #  70    0x21070  3      
  movl 0x10(%r15,%r10,1), %edi                                         #  71    0x21073  5      
  leal -0xc(%rsi), %eax                                                #  72    0x21078  3      
  nop                                                                  #  73    0x2107b  1      
  movl %eax, %eax                                                      #  74    0x2107c  2      
  movl (%r15,%rax,1), %edx                                             #  75    0x2107e  4      
  leal -0xc(%rdi), %eax                                                #  76    0x21082  3      
  movl %eax, %eax                                                      #  77    0x21085  2      
  movl (%r15,%rax,1), %eax                                             #  78    0x21087  4      
  movl %edx, %ecx                                                      #  79    0x2108b  2      
  cmpl %edx, %eax                                                      #  80    0x2108d  2      
  cmovbel %eax, %ecx                                                   #  81    0x2108f  3      
  movl %ecx, %ecx                                                      #  82    0x21092  2      
  cmpq %rcx, %rcx                                                      #  83    0x21094  3      
  nop                                                                  #  84    0x21097  1      
  movl %esi, %esi                                                      #  85    0x21098  2      
  leaq (%r15,%rsi,1), %rsi                                             #  86    0x2109a  4      
  movl %edi, %edi                                                      #  87    0x2109e  2      
  leaq (%r15,%rdi,1), %rdi                                             #  88    0x210a0  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  89    0x210a4  3      
  movl %esi, %esi                                                      #  90    0x210a7  2      
  movl %edi, %edi                                                      #  91    0x210a9  2      
  seta %cl                                                             #  92    0x210ab  3      
  setb %sil                                                            #  93    0x210ae  4      
  subl %eax, %edx                                                      #  94    0x210b2  2      
  subb %sil, %cl                                                       #  95    0x210b4  3      
  xchgw %ax, %ax                                                       #  96    0x210b7  3      
  movsbl %cl, %ecx                                                     #  97    0x210ba  3      
  testl %ecx, %ecx                                                     #  98    0x210bd  2      
  cmovel %edx, %ecx                                                    #  99    0x210bf  3      
  testl %ecx, %ecx                                                     #  100   0x210c2  2      
  js .L_21180                                                          #  101   0x210c4  6      
  movl %r10d, %edi                                                     #  102   0x210ca  3      
  movl %r11d, %esi                                                     #  103   0x210cd  3      
  nop                                                                  #  104   0x210d0  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  105   0x210d1  5      
  movl %eax, %r12d                                                     #  106   0x210d6  3      
  movl %r12d, %r12d                                                    #  107   0x210d9  3      
  movl 0x10(%r15,%r12,1), %edi                                         #  108   0x210dc  5      
  subl $0xc, %edi                                                      #  109   0x210e1  3      
  cmpl $0x10031da0, %edi                                               #  110   0x210e4  6      
  jne .L_211a0                                                         #  111   0x210ea  6      
  nop                                                                  #  112   0x210f0  1      
.L_21140:                                                              #        0x210f1  0      
  movl %r12d, %edi                                                     #  113   0x210f1  3      
  nop                                                                  #  114   0x210f4  1      
  nop                                                                  #  115   0x210f5  1      
  callq ._ZdlPv                                                        #  116   0x210f6  5      
  movl %ebx, %ebx                                                      #  117   0x210fb  2      
  subl $0x1, 0x1c(%r15,%rbx,1)                                         #  118   0x210fd  6      
  nop                                                                  #  119   0x21103  1      
  nop                                                                  #  120   0x21104  1      
.L_21180:                                                              #        0x21105  0      
  addl $0x18, %esp                                                     #  121   0x21105  3      
  addq %r15, %rsp                                                      #  122   0x21108  3      
  popq %rbx                                                            #  123   0x2110b  2      
  popq %r12                                                            #  124   0x2110d  3      
  popq %r11                                                            #  125   0x21110  3      
  andl $0xffffffe0, %r11d                                              #  126   0x21113  7      
  addq %r15, %r11                                                      #  127   0x2111a  3      
  jmpq %r11                                                            #  128   0x2111d  3      
  nop                                                                  #  129   0x21120  1      
.L_211a0:                                                              #        0x21121  0      
  movl %edi, %edi                                                      #  130   0x21121  2      
  movl 0x8(%r15,%rdi,1), %eax                                          #  131   0x21123  5      
  leal -0x1(%rax), %edx                                                #  132   0x21128  3      
  testl %eax, %eax                                                     #  133   0x2112b  2      
  movl %edi, %edi                                                      #  134   0x2112d  2      
  movl %edx, 0x8(%r15,%rdi,1)                                          #  135   0x2112f  5      
  jg .L_21140                                                          #  136   0x21134  6      
  leal 0xf(%rsp), %esi                                                 #  137   0x2113a  4      
  xchgw %ax, %ax                                                       #  138   0x2113e  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                #  139   0x21141  5      
  jmpq .L_21140                                                        #  140   0x21146  5      
  nop                                                                  #  141   0x2114b  1      
  nop                                                                  #  142   0x2114c  1      
  nop                                                                  #  143   0x2114d  1      
                                                                                                
.size _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKSsPv

