  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_, @function

#! file-offset 0x25aa0
#! rip-offset  0x25aa0
#! capacity    320 bytes

# Text                                                                                                                          #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_:  #        0x25aa0  0      
  movq %rbx, -0x20(%rsp)                                                                                                        #  1     0x25aa0  5      
  movq %r14, -0x8(%rsp)                                                                                                         #  2     0x25aa5  5      
  movl %edi, %ebx                                                                                                               #  3     0x25aaa  2      
  movq %r12, -0x18(%rsp)                                                                                                        #  4     0x25aac  5      
  movq %r13, -0x10(%rsp)                                                                                                        #  5     0x25ab1  5      
  subl $0x38, %esp                                                                                                              #  6     0x25ab6  3      
  addq %r15, %rsp                                                                                                               #  7     0x25ab9  3      
  testl %esi, %esi                                                                                                              #  8     0x25abc  2      
  xchgw %ax, %ax                                                                                                                #  9     0x25abe  3      
  movl %edx, %r14d                                                                                                              #  10    0x25ac1  3      
  movl %ecx, %ecx                                                                                                               #  11    0x25ac4  2      
  je .L_25ba0                                                                                                                   #  12    0x25ac6  6      
  nop                                                                                                                           #  13    0x25acc  1      
  nop                                                                                                                           #  14    0x25acd  1      
.L_25ae0:                                                                                                                       #        0x25ace  0      
  movl $0x1, %r12d                                                                                                              #  15    0x25ace  6      
  nop                                                                                                                           #  16    0x25ad4  1      
  nop                                                                                                                           #  17    0x25ad5  1      
.L_25b00:                                                                                                                       #        0x25ad6  0      
  movl $0x18, %edi                                                                                                              #  18    0x25ad6  5      
  movq %rcx, 0x8(%rsp)                                                                                                          #  19    0x25adb  5      
  xchgw %ax, %ax                                                                                                                #  20    0x25ae0  3      
  nop                                                                                                                           #  21    0x25ae3  1      
  callq ._Znwj                                                                                                                  #  22    0x25ae4  5      
  movl %eax, %r13d                                                                                                              #  23    0x25ae9  3      
  movq 0x8(%rsp), %rcx                                                                                                          #  24    0x25aec  5      
  cmpl $0xfffffff0, %r13d                                                                                                       #  25    0x25af1  7      
  je .L_25b40                                                                                                                   #  26    0x25af8  6      
  movl %ecx, %ecx                                                                                                               #  27    0x25afe  2      
  movq (%r15,%rcx,1), %rax                                                                                                      #  28    0x25b00  4      
  movl %r13d, %r13d                                                                                                             #  29    0x25b04  3      
  movq %rax, 0x10(%r15,%r13,1)                                                                                                  #  30    0x25b07  5      
  nop                                                                                                                           #  31    0x25b0c  1      
.L_25b40:                                                                                                                       #        0x25b0d  0      
  leal 0x4(%rbx), %ecx                                                                                                          #  32    0x25b0d  3      
  movl %r14d, %edx                                                                                                              #  33    0x25b10  3      
  movl %r13d, %esi                                                                                                              #  34    0x25b13  3      
  movl %r12d, %edi                                                                                                              #  35    0x25b16  3      
  nop                                                                                                                           #  36    0x25b19  1      
  callq ._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_                                                      #  37    0x25b1a  5      
  movl %ebx, %ebx                                                                                                               #  38    0x25b1f  2      
  addl $0x1, 0x14(%r15,%rbx,1)                                                                                                  #  39    0x25b21  6      
  movl %r13d, %eax                                                                                                              #  40    0x25b27  3      
  movq 0x18(%rsp), %rbx                                                                                                         #  41    0x25b2a  5      
  movq 0x20(%rsp), %r12                                                                                                         #  42    0x25b2f  5      
  movq 0x28(%rsp), %r13                                                                                                         #  43    0x25b34  5      
  movq 0x30(%rsp), %r14                                                                                                         #  44    0x25b39  5      
  nop                                                                                                                           #  45    0x25b3e  1      
  addl $0x38, %esp                                                                                                              #  46    0x25b3f  3      
  addq %r15, %rsp                                                                                                               #  47    0x25b42  3      
  popq %r11                                                                                                                     #  48    0x25b45  3      
  andl $0xffffffe0, %r11d                                                                                                       #  49    0x25b48  7      
  addq %r15, %r11                                                                                                               #  50    0x25b4f  3      
  jmpq %r11                                                                                                                     #  51    0x25b52  3      
  nop                                                                                                                           #  52    0x25b55  1      
.L_25ba0:                                                                                                                       #        0x25b56  0      
  leal 0x4(%rbx), %eax                                                                                                          #  53    0x25b56  3      
  cmpl %r14d, %eax                                                                                                              #  54    0x25b59  3      
  je .L_25ae0                                                                                                                   #  55    0x25b5c  6      
  xorl %r12d, %r12d                                                                                                             #  56    0x25b62  3      
  movl %ecx, %ecx                                                                                                               #  57    0x25b65  2      
  movl (%r15,%rcx,1), %eax                                                                                                      #  58    0x25b67  4      
  movl %r14d, %r14d                                                                                                             #  59    0x25b6b  3      
  cmpl 0x10(%r15,%r14,1), %eax                                                                                                  #  60    0x25b6e  5      
  nop                                                                                                                           #  61    0x25b73  1      
  setl %r12b                                                                                                                    #  62    0x25b74  4      
  jmpq .L_25b00                                                                                                                 #  63    0x25b78  5      
  nop                                                                                                                           #  64    0x25b7d  1      
  nop                                                                                                                           #  65    0x25b7e  1      
  nop                                                                                                                           #  66    0x25b7f  1      
  nop                                                                                                                           #  67    0x25b80  1      
  nop                                                                                                                           #  68    0x25b81  1      
  nop                                                                                                                           #  69    0x25b82  1      
  nop                                                                                                                           #  70    0x25b83  1      
  nop                                                                                                                           #  71    0x25b84  1      
  nop                                                                                                                           #  72    0x25b85  1      
  nop                                                                                                                           #  73    0x25b86  1      
  nop                                                                                                                           #  74    0x25b87  1      
  nop                                                                                                                           #  75    0x25b88  1      
  nop                                                                                                                           #  76    0x25b89  1      
  nop                                                                                                                           #  77    0x25b8a  1      
  nop                                                                                                                           #  78    0x25b8b  1      
  nop                                                                                                                           #  79    0x25b8c  1      
  nop                                                                                                                           #  80    0x25b8d  1      
  nop                                                                                                                           #  81    0x25b8e  1      
  nop                                                                                                                           #  82    0x25b8f  1      
  nop                                                                                                                           #  83    0x25b90  1      
  nop                                                                                                                           #  84    0x25b91  1      
  nop                                                                                                                           #  85    0x25b92  1      
  nop                                                                                                                           #  86    0x25b93  1      
                                                                                                                                                         
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_

