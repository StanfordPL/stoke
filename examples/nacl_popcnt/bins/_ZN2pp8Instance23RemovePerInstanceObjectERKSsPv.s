  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, @function

#! file-offset 0x20f80
#! rip-offset  0x20f80
#! capacity    576 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv:                      #        0x20f80  0      
  pushq %r12                                                           #  1     0x20f80  3      
  movl %esi, %r12d                                                     #  2     0x20f83  3      
  pushq %rbx                                                           #  3     0x20f86  2      
  movl %edi, %ebx                                                      #  4     0x20f88  2      
  leal 0xc(%rbx), %r11d                                                #  5     0x20f8a  4      
  subl $0x18, %esp                                                     #  6     0x20f8e  3      
  addq %r15, %rsp                                                      #  7     0x20f91  3      
  movl %ebx, %ebx                                                      #  8     0x20f94  2      
  movl 0x10(%r15,%rbx,1), %edx                                         #  9     0x20f96  5      
  movq %r11, %r10                                                      #  10    0x20f9b  3      
  testq %rdx, %rdx                                                     #  11    0x20f9e  3      
  nop                                                                  #  12    0x20fa1  1      
  je .L_21080                                                          #  13    0x20fa2  6      
  movl %r12d, %r12d                                                    #  14    0x20fa8  3      
  movl (%r15,%r12,1), %r9d                                             #  15    0x20fab  4      
  leal -0xc(%r9), %eax                                                 #  16    0x20faf  4      
  movl %eax, %eax                                                      #  17    0x20fb3  2      
  movl (%r15,%rax,1), %r8d                                             #  18    0x20fb5  4      
  jmpq .L_21000                                                        #  19    0x20fb9  5      
  nop                                                                  #  20    0x20fbe  1      
.L_20fc0:                                                              #        0x20fbf  0      
  movl %edx, %edx                                                      #  21    0x20fbf  2      
  movl 0x8(%r15,%rdx,1), %eax                                          #  22    0x20fc1  5      
  movq %rdx, %r10                                                      #  23    0x20fc6  3      
  testq %rax, %rax                                                     #  24    0x20fc9  3      
  je .L_21080                                                          #  25    0x20fcc  6      
  nop                                                                  #  26    0x20fd2  1      
.L_20fe0:                                                              #        0x20fd3  0      
  movq %rax, %rdx                                                      #  27    0x20fd3  3      
  nop                                                                  #  28    0x20fd6  1      
  nop                                                                  #  29    0x20fd7  1      
.L_21000:                                                              #        0x20fd8  0      
  movl %edx, %edx                                                      #  30    0x20fd8  2      
  movl 0x10(%r15,%rdx,1), %esi                                         #  31    0x20fda  5      
  movl %r8d, %ecx                                                      #  32    0x20fdf  3      
  movq %r9, %rdi                                                       #  33    0x20fe2  3      
  leal -0xc(%rsi), %eax                                                #  34    0x20fe5  3      
  movl %eax, %eax                                                      #  35    0x20fe8  2      
  movl (%r15,%rax,1), %eax                                             #  36    0x20fea  4      
  cmpl %r8d, %eax                                                      #  37    0x20fee  3      
  cmovbel %eax, %ecx                                                   #  38    0x20ff1  3      
  movl %ecx, %ecx                                                      #  39    0x20ff4  2      
  xchgw %ax, %ax                                                       #  40    0x20ff6  3      
  cmpq %rcx, %rcx                                                      #  41    0x20ff9  3      
  movl %esi, %esi                                                      #  42    0x20ffc  2      
  leaq (%r15,%rsi,1), %rsi                                             #  43    0x20ffe  4      
  movl %edi, %edi                                                      #  44    0x21002  2      
  leaq (%r15,%rdi,1), %rdi                                             #  45    0x21004  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  46    0x21008  3      
  movl %esi, %esi                                                      #  47    0x2100b  2      
  movl %edi, %edi                                                      #  48    0x2100d  2      
  seta %cl                                                             #  49    0x2100f  3      
  setb %sil                                                            #  50    0x21012  4      
  subl %r8d, %eax                                                      #  51    0x21016  3      
  nop                                                                  #  52    0x21019  1      
  subb %sil, %cl                                                       #  53    0x2101a  3      
  movsbl %cl, %ecx                                                     #  54    0x2101d  3      
  testl %ecx, %ecx                                                     #  55    0x21020  2      
  cmovel %eax, %ecx                                                    #  56    0x21022  3      
  testl %ecx, %ecx                                                     #  57    0x21025  2      
  jns .L_20fc0                                                         #  58    0x21027  6      
  movl %edx, %edx                                                      #  59    0x2102d  2      
  movl 0xc(%r15,%rdx,1), %eax                                          #  60    0x2102f  5      
  testq %rax, %rax                                                     #  61    0x21034  3      
  nop                                                                  #  62    0x21037  1      
  jne .L_20fe0                                                         #  63    0x21038  6      
  nop                                                                  #  64    0x2103e  1      
  nop                                                                  #  65    0x2103f  1      
.L_21080:                                                              #        0x21040  0      
  cmpl %r10d, %r11d                                                    #  66    0x21040  3      
  je .L_21160                                                          #  67    0x21043  6      
  movl %r12d, %r12d                                                    #  68    0x21049  3      
  movl (%r15,%r12,1), %esi                                             #  69    0x2104c  4      
  movl %r10d, %r10d                                                    #  70    0x21050  3      
  movl 0x10(%r15,%r10,1), %edi                                         #  71    0x21053  5      
  leal -0xc(%rsi), %eax                                                #  72    0x21058  3      
  nop                                                                  #  73    0x2105b  1      
  movl %eax, %eax                                                      #  74    0x2105c  2      
  movl (%r15,%rax,1), %edx                                             #  75    0x2105e  4      
  leal -0xc(%rdi), %eax                                                #  76    0x21062  3      
  movl %eax, %eax                                                      #  77    0x21065  2      
  movl (%r15,%rax,1), %eax                                             #  78    0x21067  4      
  movl %edx, %ecx                                                      #  79    0x2106b  2      
  cmpl %edx, %eax                                                      #  80    0x2106d  2      
  cmovbel %eax, %ecx                                                   #  81    0x2106f  3      
  movl %ecx, %ecx                                                      #  82    0x21072  2      
  cmpq %rcx, %rcx                                                      #  83    0x21074  3      
  nop                                                                  #  84    0x21077  1      
  movl %esi, %esi                                                      #  85    0x21078  2      
  leaq (%r15,%rsi,1), %rsi                                             #  86    0x2107a  4      
  movl %edi, %edi                                                      #  87    0x2107e  2      
  leaq (%r15,%rdi,1), %rdi                                             #  88    0x21080  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                    #  89    0x21084  3      
  movl %esi, %esi                                                      #  90    0x21087  2      
  movl %edi, %edi                                                      #  91    0x21089  2      
  seta %cl                                                             #  92    0x2108b  3      
  setb %sil                                                            #  93    0x2108e  4      
  subl %eax, %edx                                                      #  94    0x21092  2      
  subb %sil, %cl                                                       #  95    0x21094  3      
  xchgw %ax, %ax                                                       #  96    0x21097  3      
  movsbl %cl, %ecx                                                     #  97    0x2109a  3      
  testl %ecx, %ecx                                                     #  98    0x2109d  2      
  cmovel %edx, %ecx                                                    #  99    0x2109f  3      
  testl %ecx, %ecx                                                     #  100   0x210a2  2      
  js .L_21160                                                          #  101   0x210a4  6      
  movl %r10d, %edi                                                     #  102   0x210aa  3      
  movl %r11d, %esi                                                     #  103   0x210ad  3      
  nop                                                                  #  104   0x210b0  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  105   0x210b1  5      
  movl %eax, %r12d                                                     #  106   0x210b6  3      
  movl %r12d, %r12d                                                    #  107   0x210b9  3      
  movl 0x10(%r15,%r12,1), %edi                                         #  108   0x210bc  5      
  subl $0xc, %edi                                                      #  109   0x210c1  3      
  cmpl $0x10031da0, %edi                                               #  110   0x210c4  6      
  jne .L_21180                                                         #  111   0x210ca  6      
  nop                                                                  #  112   0x210d0  1      
.L_21120:                                                              #        0x210d1  0      
  movl %r12d, %edi                                                     #  113   0x210d1  3      
  nop                                                                  #  114   0x210d4  1      
  nop                                                                  #  115   0x210d5  1      
  callq ._ZdlPv                                                        #  116   0x210d6  5      
  movl %ebx, %ebx                                                      #  117   0x210db  2      
  subl $0x1, 0x1c(%r15,%rbx,1)                                         #  118   0x210dd  6      
  nop                                                                  #  119   0x210e3  1      
  nop                                                                  #  120   0x210e4  1      
.L_21160:                                                              #        0x210e5  0      
  addl $0x18, %esp                                                     #  121   0x210e5  3      
  addq %r15, %rsp                                                      #  122   0x210e8  3      
  popq %rbx                                                            #  123   0x210eb  2      
  popq %r12                                                            #  124   0x210ed  3      
  popq %r11                                                            #  125   0x210f0  3      
  andl $0xffffffe0, %r11d                                              #  126   0x210f3  7      
  addq %r15, %r11                                                      #  127   0x210fa  3      
  jmpq %r11                                                            #  128   0x210fd  3      
  nop                                                                  #  129   0x21100  1      
.L_21180:                                                              #        0x21101  0      
  movl %edi, %edi                                                      #  130   0x21101  2      
  movl 0x8(%r15,%rdi,1), %eax                                          #  131   0x21103  5      
  leal -0x1(%rax), %edx                                                #  132   0x21108  3      
  testl %eax, %eax                                                     #  133   0x2110b  2      
  movl %edi, %edi                                                      #  134   0x2110d  2      
  movl %edx, 0x8(%r15,%rdi,1)                                          #  135   0x2110f  5      
  jg .L_21120                                                          #  136   0x21114  6      
  leal 0xf(%rsp), %esi                                                 #  137   0x2111a  4      
  xchgw %ax, %ax                                                       #  138   0x2111e  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                #  139   0x21121  5      
  jmpq .L_21120                                                        #  140   0x21126  5      
  nop                                                                  #  141   0x2112b  1      
  nop                                                                  #  142   0x2112c  1      
  nop                                                                  #  143   0x2112d  1      
                                                                                                
.size _ZN2pp8Instance23RemovePerInstanceObjectERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKSsPv

