  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_, @function

#! file-offset 0x25ce0
#! rip-offset  0x25ce0
#! capacity    672 bytes

# Text                                                                                                                                      #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_:  #        0x25ce0  0      
  movq %rbx, -0x18(%rsp)                                                                                                                    #  1     0x25ce0  5      
  movl %edi, %ebx                                                                                                                           #  2     0x25ce5  2      
  movq %r12, -0x10(%rsp)                                                                                                                    #  3     0x25ce7  5      
  leal 0x4(%rbx), %eax                                                                                                                      #  4     0x25cec  3      
  movl %esi, %r12d                                                                                                                          #  5     0x25cef  3      
  movq %r13, -0x8(%rsp)                                                                                                                     #  6     0x25cf2  5      
  subl $0x18, %esp                                                                                                                          #  7     0x25cf7  3      
  addq %r15, %rsp                                                                                                                           #  8     0x25cfa  3      
  movl %edx, %r13d                                                                                                                          #  9     0x25cfd  3      
  cmpl %r12d, %eax                                                                                                                          #  10    0x25d00  3      
  je .L_25de0                                                                                                                               #  11    0x25d03  6      
  movl %r12d, %r12d                                                                                                                         #  12    0x25d09  3      
  movl 0x10(%r15,%r12,1), %eax                                                                                                              #  13    0x25d0c  5      
  movl %r13d, %r13d                                                                                                                         #  14    0x25d11  3      
  cmpl %eax, (%r15,%r13,1)                                                                                                                  #  15    0x25d14  4      
  jge .L_25da0                                                                                                                              #  16    0x25d18  6      
  xchgw %ax, %ax                                                                                                                            #  17    0x25d1e  3      
  movl %ebx, %ebx                                                                                                                           #  18    0x25d21  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                                               #  19    0x25d23  5      
  cmpl %r12d, %esi                                                                                                                          #  20    0x25d28  3      
  je .L_25ec0                                                                                                                               #  21    0x25d2b  6      
  movl %r12d, %edi                                                                                                                          #  22    0x25d31  3      
  nop                                                                                                                                       #  23    0x25d34  1      
  callq ._ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base                                                                                   #  24    0x25d35  5      
  movl %eax, %edx                                                                                                                           #  25    0x25d3a  2      
  movl %edx, %edx                                                                                                                           #  26    0x25d3c  2      
  movl 0x10(%r15,%rdx,1), %eax                                                                                                              #  27    0x25d3e  5      
  movl %r13d, %r13d                                                                                                                         #  28    0x25d43  3      
  cmpl (%r15,%r13,1), %eax                                                                                                                  #  29    0x25d46  4      
  jge .L_25e20                                                                                                                              #  30    0x25d4a  6      
  movl %edx, %edx                                                                                                                           #  31    0x25d50  2      
  movl 0xc(%r15,%rdx,1), %ecx                                                                                                               #  32    0x25d52  5      
  testl %ecx, %ecx                                                                                                                          #  33    0x25d57  2      
  nop                                                                                                                                       #  34    0x25d59  1      
  je .L_25f00                                                                                                                               #  35    0x25d5a  6      
  movl %r13d, %ecx                                                                                                                          #  36    0x25d60  3      
  movl %r12d, %edx                                                                                                                          #  37    0x25d63  3      
  movl %r12d, %esi                                                                                                                          #  38    0x25d66  3      
  movl %ebx, %edi                                                                                                                           #  39    0x25d69  2      
  nop                                                                                                                                       #  40    0x25d6b  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_       #  41    0x25d6c  5      
  movl %eax, %eax                                                                                                                           #  42    0x25d71  2      
  jmpq .L_25dc0                                                                                                                             #  43    0x25d73  5      
  nop                                                                                                                                       #  44    0x25d78  1      
  nop                                                                                                                                       #  45    0x25d79  1      
.L_25da0:                                                                                                                                   #        0x25d7a  0      
  jg .L_25e60                                                                                                                               #  46    0x25d7a  6      
  movq %r12, %rax                                                                                                                           #  47    0x25d80  3      
  nop                                                                                                                                       #  48    0x25d83  1      
  nop                                                                                                                                       #  49    0x25d84  1      
.L_25dc0:                                                                                                                                   #        0x25d85  0      
  movq (%rsp), %rbx                                                                                                                         #  50    0x25d85  4      
  movq 0x8(%rsp), %r12                                                                                                                      #  51    0x25d89  5      
  movq 0x10(%rsp), %r13                                                                                                                     #  52    0x25d8e  5      
  addl $0x18, %esp                                                                                                                          #  53    0x25d93  3      
  addq %r15, %rsp                                                                                                                           #  54    0x25d96  3      
  popq %r11                                                                                                                                 #  55    0x25d99  3      
  andl $0xffffffe0, %r11d                                                                                                                   #  56    0x25d9c  7      
  addq %r15, %r11                                                                                                                           #  57    0x25da3  3      
  jmpq %r11                                                                                                                                 #  58    0x25da6  3      
.L_25de0:                                                                                                                                   #        0x25da9  0      
  movl %ebx, %ebx                                                                                                                           #  59    0x25da9  2      
  movl 0x14(%r15,%rbx,1), %esi                                                                                                              #  60    0x25dab  5      
  testl %esi, %esi                                                                                                                          #  61    0x25db0  2      
  je .L_25e20                                                                                                                               #  62    0x25db2  6      
  movl %ebx, %ebx                                                                                                                           #  63    0x25db8  2      
  movl 0x10(%r15,%rbx,1), %edx                                                                                                              #  64    0x25dba  5      
  movl %edx, %edx                                                                                                                           #  65    0x25dbf  2      
  movl 0x10(%r15,%rdx,1), %eax                                                                                                              #  66    0x25dc1  5      
  movl %r13d, %r13d                                                                                                                         #  67    0x25dc6  3      
  cmpl (%r15,%r13,1), %eax                                                                                                                  #  68    0x25dc9  4      
  jl .L_25f00                                                                                                                               #  69    0x25dcd  6      
  nop                                                                                                                                       #  70    0x25dd3  1      
  nop                                                                                                                                       #  71    0x25dd4  1      
.L_25e20:                                                                                                                                   #        0x25dd5  0      
  movl %r13d, %esi                                                                                                                          #  72    0x25dd5  3      
  movl %ebx, %edi                                                                                                                           #  73    0x25dd8  2      
  nop                                                                                                                                       #  74    0x25dda  1      
  nop                                                                                                                                       #  75    0x25ddb  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_                            #  76    0x25ddc  5      
  movl %eax, %eax                                                                                                                           #  77    0x25de1  2      
  jmpq .L_25dc0                                                                                                                             #  78    0x25de3  5      
  nop                                                                                                                                       #  79    0x25de8  1      
  nop                                                                                                                                       #  80    0x25de9  1      
.L_25e60:                                                                                                                                   #        0x25dea  0      
  movl %ebx, %ebx                                                                                                                           #  81    0x25dea  2      
  movl 0x10(%r15,%rbx,1), %edx                                                                                                              #  82    0x25dec  5      
  cmpl %r12d, %edx                                                                                                                          #  83    0x25df1  3      
  je .L_25f00                                                                                                                               #  84    0x25df4  6      
  movl %r12d, %edi                                                                                                                          #  85    0x25dfa  3      
  nop                                                                                                                                       #  86    0x25dfd  1      
  callq ._ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base                                                                                   #  87    0x25dfe  5      
  movl %eax, %esi                                                                                                                           #  88    0x25e03  2      
  movl %r13d, %r13d                                                                                                                         #  89    0x25e05  3      
  movl (%r15,%r13,1), %eax                                                                                                                  #  90    0x25e08  4      
  movl %esi, %esi                                                                                                                           #  91    0x25e0c  2      
  cmpl 0x10(%r15,%rsi,1), %eax                                                                                                              #  92    0x25e0e  5      
  jge .L_25e20                                                                                                                              #  93    0x25e13  6      
  movl %r12d, %r12d                                                                                                                         #  94    0x25e19  3      
  movl 0xc(%r15,%r12,1), %eax                                                                                                               #  95    0x25e1c  5      
  testl %eax, %eax                                                                                                                          #  96    0x25e21  2      
  nop                                                                                                                                       #  97    0x25e23  1      
  je .L_25f40                                                                                                                               #  98    0x25e24  6      
  nop                                                                                                                                       #  99    0x25e2a  1      
  nop                                                                                                                                       #  100   0x25e2b  1      
.L_25ec0:                                                                                                                                   #        0x25e2c  0      
  movl %r13d, %ecx                                                                                                                          #  101   0x25e2c  3      
  movl %esi, %edx                                                                                                                           #  102   0x25e2f  2      
  movl %ebx, %edi                                                                                                                           #  103   0x25e31  2      
  nop                                                                                                                                       #  104   0x25e33  1      
  nop                                                                                                                                       #  105   0x25e34  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_       #  106   0x25e35  5      
  movl %eax, %eax                                                                                                                           #  107   0x25e3a  2      
  jmpq .L_25dc0                                                                                                                             #  108   0x25e3c  5      
  nop                                                                                                                                       #  109   0x25e41  1      
  nop                                                                                                                                       #  110   0x25e42  1      
.L_25f00:                                                                                                                                   #        0x25e43  0      
  movl %r13d, %ecx                                                                                                                          #  111   0x25e43  3      
  xorl %esi, %esi                                                                                                                           #  112   0x25e46  2      
  movl %ebx, %edi                                                                                                                           #  113   0x25e48  2      
  nop                                                                                                                                       #  114   0x25e4a  1      
  nop                                                                                                                                       #  115   0x25e4b  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_       #  116   0x25e4c  5      
  movl %eax, %eax                                                                                                                           #  117   0x25e51  2      
  jmpq .L_25dc0                                                                                                                             #  118   0x25e53  5      
  nop                                                                                                                                       #  119   0x25e58  1      
  nop                                                                                                                                       #  120   0x25e59  1      
.L_25f40:                                                                                                                                   #        0x25e5a  0      
  movl %r13d, %ecx                                                                                                                          #  121   0x25e5a  3      
  movl %r12d, %edx                                                                                                                          #  122   0x25e5d  3      
  xorl %esi, %esi                                                                                                                           #  123   0x25e60  2      
  movl %ebx, %edi                                                                                                                           #  124   0x25e62  2      
  xchgw %ax, %ax                                                                                                                            #  125   0x25e64  3      
  nop                                                                                                                                       #  126   0x25e67  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_       #  127   0x25e68  5      
  movl %eax, %eax                                                                                                                           #  128   0x25e6d  2      
  jmpq .L_25dc0                                                                                                                             #  129   0x25e6f  5      
  nop                                                                                                                                       #  130   0x25e74  1      
  nop                                                                                                                                       #  131   0x25e75  1      
  nop                                                                                                                                       #  132   0x25e76  1      
  nop                                                                                                                                       #  133   0x25e77  1      
  nop                                                                                                                                       #  134   0x25e78  1      
  nop                                                                                                                                       #  135   0x25e79  1      
  nop                                                                                                                                       #  136   0x25e7a  1      
  nop                                                                                                                                       #  137   0x25e7b  1      
  nop                                                                                                                                       #  138   0x25e7c  1      
  nop                                                                                                                                       #  139   0x25e7d  1      
  nop                                                                                                                                       #  140   0x25e7e  1      
  nop                                                                                                                                       #  141   0x25e7f  1      
  nop                                                                                                                                       #  142   0x25e80  1      
  nop                                                                                                                                       #  143   0x25e81  1      
  nop                                                                                                                                       #  144   0x25e82  1      
  nop                                                                                                                                       #  145   0x25e83  1      
  nop                                                                                                                                       #  146   0x25e84  1      
  nop                                                                                                                                       #  147   0x25e85  1      
  nop                                                                                                                                       #  148   0x25e86  1      
  nop                                                                                                                                       #  149   0x25e87  1      
  nop                                                                                                                                       #  150   0x25e88  1      
  nop                                                                                                                                       #  151   0x25e89  1      
  nop                                                                                                                                       #  152   0x25e8a  1      
  nop                                                                                                                                       #  153   0x25e8b  1      
  nop                                                                                                                                       #  154   0x25e8c  1      
                                                                                                                                                                     
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_

