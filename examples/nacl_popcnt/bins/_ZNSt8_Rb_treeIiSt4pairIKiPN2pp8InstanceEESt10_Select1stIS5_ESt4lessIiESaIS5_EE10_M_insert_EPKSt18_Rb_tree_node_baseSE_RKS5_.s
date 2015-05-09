  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_, @function

#! file-offset 0x25a00
#! rip-offset  0x25a00
#! capacity    320 bytes

# Text                                                                                                                          #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_:  #        0x25a00  0      
  movq %rbx, -0x20(%rsp)                                                                                                        #  1     0x25a00  5      
  movq %r14, -0x8(%rsp)                                                                                                         #  2     0x25a05  5      
  movl %edi, %ebx                                                                                                               #  3     0x25a0a  2      
  movq %r12, -0x18(%rsp)                                                                                                        #  4     0x25a0c  5      
  movq %r13, -0x10(%rsp)                                                                                                        #  5     0x25a11  5      
  subl $0x38, %esp                                                                                                              #  6     0x25a16  3      
  addq %r15, %rsp                                                                                                               #  7     0x25a19  3      
  testl %esi, %esi                                                                                                              #  8     0x25a1c  2      
  xchgw %ax, %ax                                                                                                                #  9     0x25a1e  3      
  movl %edx, %r14d                                                                                                              #  10    0x25a21  3      
  movl %ecx, %ecx                                                                                                               #  11    0x25a24  2      
  je .L_25b00                                                                                                                   #  12    0x25a26  6      
  nop                                                                                                                           #  13    0x25a2c  1      
  nop                                                                                                                           #  14    0x25a2d  1      
.L_25a40:                                                                                                                       #        0x25a2e  0      
  movl $0x1, %r12d                                                                                                              #  15    0x25a2e  6      
  nop                                                                                                                           #  16    0x25a34  1      
  nop                                                                                                                           #  17    0x25a35  1      
.L_25a60:                                                                                                                       #        0x25a36  0      
  movl $0x18, %edi                                                                                                              #  18    0x25a36  5      
  movq %rcx, 0x8(%rsp)                                                                                                          #  19    0x25a3b  5      
  xchgw %ax, %ax                                                                                                                #  20    0x25a40  3      
  nop                                                                                                                           #  21    0x25a43  1      
  callq ._Znwj                                                                                                                  #  22    0x25a44  5      
  movl %eax, %r13d                                                                                                              #  23    0x25a49  3      
  movq 0x8(%rsp), %rcx                                                                                                          #  24    0x25a4c  5      
  cmpl $0xfffffff0, %r13d                                                                                                       #  25    0x25a51  7      
  je .L_25aa0                                                                                                                   #  26    0x25a58  6      
  movl %ecx, %ecx                                                                                                               #  27    0x25a5e  2      
  movq (%r15,%rcx,1), %rax                                                                                                      #  28    0x25a60  4      
  movl %r13d, %r13d                                                                                                             #  29    0x25a64  3      
  movq %rax, 0x10(%r15,%r13,1)                                                                                                  #  30    0x25a67  5      
  nop                                                                                                                           #  31    0x25a6c  1      
.L_25aa0:                                                                                                                       #        0x25a6d  0      
  leal 0x4(%rbx), %ecx                                                                                                          #  32    0x25a6d  3      
  movl %r14d, %edx                                                                                                              #  33    0x25a70  3      
  movl %r13d, %esi                                                                                                              #  34    0x25a73  3      
  movl %r12d, %edi                                                                                                              #  35    0x25a76  3      
  nop                                                                                                                           #  36    0x25a79  1      
  callq ._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_                                                      #  37    0x25a7a  5      
  movl %ebx, %ebx                                                                                                               #  38    0x25a7f  2      
  addl $0x1, 0x14(%r15,%rbx,1)                                                                                                  #  39    0x25a81  6      
  movl %r13d, %eax                                                                                                              #  40    0x25a87  3      
  movq 0x18(%rsp), %rbx                                                                                                         #  41    0x25a8a  5      
  movq 0x20(%rsp), %r12                                                                                                         #  42    0x25a8f  5      
  movq 0x28(%rsp), %r13                                                                                                         #  43    0x25a94  5      
  movq 0x30(%rsp), %r14                                                                                                         #  44    0x25a99  5      
  nop                                                                                                                           #  45    0x25a9e  1      
  addl $0x38, %esp                                                                                                              #  46    0x25a9f  3      
  addq %r15, %rsp                                                                                                               #  47    0x25aa2  3      
  popq %r11                                                                                                                     #  48    0x25aa5  3      
  andl $0xffffffe0, %r11d                                                                                                       #  49    0x25aa8  7      
  addq %r15, %r11                                                                                                               #  50    0x25aaf  3      
  jmpq %r11                                                                                                                     #  51    0x25ab2  3      
  nop                                                                                                                           #  52    0x25ab5  1      
.L_25b00:                                                                                                                       #        0x25ab6  0      
  leal 0x4(%rbx), %eax                                                                                                          #  53    0x25ab6  3      
  cmpl %r14d, %eax                                                                                                              #  54    0x25ab9  3      
  je .L_25a40                                                                                                                   #  55    0x25abc  6      
  xorl %r12d, %r12d                                                                                                             #  56    0x25ac2  3      
  movl %ecx, %ecx                                                                                                               #  57    0x25ac5  2      
  movl (%r15,%rcx,1), %eax                                                                                                      #  58    0x25ac7  4      
  movl %r14d, %r14d                                                                                                             #  59    0x25acb  3      
  cmpl 0x10(%r15,%r14,1), %eax                                                                                                  #  60    0x25ace  5      
  nop                                                                                                                           #  61    0x25ad3  1      
  setl %r12b                                                                                                                    #  62    0x25ad4  4      
  jmpq .L_25a60                                                                                                                 #  63    0x25ad8  5      
  nop                                                                                                                           #  64    0x25add  1      
  nop                                                                                                                           #  65    0x25ade  1      
  nop                                                                                                                           #  66    0x25adf  1      
  nop                                                                                                                           #  67    0x25ae0  1      
  nop                                                                                                                           #  68    0x25ae1  1      
  nop                                                                                                                           #  69    0x25ae2  1      
  nop                                                                                                                           #  70    0x25ae3  1      
  nop                                                                                                                           #  71    0x25ae4  1      
  nop                                                                                                                           #  72    0x25ae5  1      
  nop                                                                                                                           #  73    0x25ae6  1      
  nop                                                                                                                           #  74    0x25ae7  1      
  nop                                                                                                                           #  75    0x25ae8  1      
  nop                                                                                                                           #  76    0x25ae9  1      
  nop                                                                                                                           #  77    0x25aea  1      
  nop                                                                                                                           #  78    0x25aeb  1      
  nop                                                                                                                           #  79    0x25aec  1      
  nop                                                                                                                           #  80    0x25aed  1      
  nop                                                                                                                           #  81    0x25aee  1      
  nop                                                                                                                           #  82    0x25aef  1      
  nop                                                                                                                           #  83    0x25af0  1      
  nop                                                                                                                           #  84    0x25af1  1      
  nop                                                                                                                           #  85    0x25af2  1      
  nop                                                                                                                           #  86    0x25af3  1      
                                                                                                                                                         
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_

