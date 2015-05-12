  .text
  .globl _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42ba0
#! rip-offset  0x42ba0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base:  #        0x42ba0  0      
  movl %edi, %eax                                   #  1     0x42ba0  2      
  movl %eax, %eax                                   #  2     0x42ba2  2      
  movl 0xc(%r15,%rax,1), %edx                       #  3     0x42ba4  5      
  testq %rdx, %rdx                                  #  4     0x42ba9  3      
  jne .L_42be0                                      #  5     0x42bac  6      
  jmpq .L_42c00                                     #  6     0x42bb2  5      
  nop                                               #  7     0x42bb7  1      
  nop                                               #  8     0x42bb8  1      
.L_42bc0:                                           #        0x42bb9  0      
  movq %rax, %rdx                                   #  9     0x42bb9  3      
  nop                                               #  10    0x42bbc  1      
  nop                                               #  11    0x42bbd  1      
.L_42be0:                                           #        0x42bbe  0      
  movl %edx, %edx                                   #  12    0x42bbe  2      
  movl 0x8(%r15,%rdx,1), %eax                       #  13    0x42bc0  5      
  testq %rax, %rax                                  #  14    0x42bc5  3      
  jne .L_42bc0                                      #  15    0x42bc8  6      
  movq %rdx, %rax                                   #  16    0x42bce  3      
  popq %r11                                         #  17    0x42bd1  3      
  andl $0xffffffe0, %r11d                           #  18    0x42bd4  7      
  addq %r15, %r11                                   #  19    0x42bdb  3      
  jmpq %r11                                         #  20    0x42bde  3      
  nop                                               #  21    0x42be1  1      
.L_42c00:                                           #        0x42be2  0      
  movl %eax, %eax                                   #  22    0x42be2  2      
  movl 0x4(%r15,%rax,1), %edx                       #  23    0x42be4  5      
  xorl %ecx, %ecx                                   #  24    0x42be9  2      
  movl %edx, %edx                                   #  25    0x42beb  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  26    0x42bed  5      
  jne .L_42c40                                      #  27    0x42bf2  6      
  nop                                               #  28    0x42bf8  1      
.L_42c20:                                           #        0x42bf9  0      
  movq %rdx, %rax                                   #  29    0x42bf9  3      
  movl %edx, %edx                                   #  30    0x42bfc  2      
  movl 0x4(%r15,%rdx,1), %edx                       #  31    0x42bfe  5      
  movl %edx, %edx                                   #  32    0x42c03  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  33    0x42c05  5      
  je .L_42c20                                       #  34    0x42c0a  6      
  movl %eax, %eax                                   #  35    0x42c10  2      
  movl 0xc(%r15,%rax,1), %ecx                       #  36    0x42c12  5      
  nop                                               #  37    0x42c17  1      
.L_42c40:                                           #        0x42c18  0      
  cmpl %ecx, %edx                                   #  38    0x42c18  2      
  cmovneq %rdx, %rax                                #  39    0x42c1a  4      
  popq %r11                                         #  40    0x42c1e  3      
  andl $0xffffffe0, %r11d                           #  41    0x42c21  7      
  addq %r15, %r11                                   #  42    0x42c28  3      
  jmpq %r11                                         #  43    0x42c2b  3      
  nop                                               #  44    0x42c2e  1      
  nop                                               #  45    0x42c2f  1      
  nop                                               #  46    0x42c30  1      
  nop                                               #  47    0x42c31  1      
  nop                                               #  48    0x42c32  1      
  nop                                               #  49    0x42c33  1      
  nop                                               #  50    0x42c34  1      
  nop                                               #  51    0x42c35  1      
  nop                                               #  52    0x42c36  1      
  nop                                               #  53    0x42c37  1      
  nop                                               #  54    0x42c38  1      
  nop                                               #  55    0x42c39  1      
  nop                                               #  56    0x42c3a  1      
  nop                                               #  57    0x42c3b  1      
                                                                             
.size _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base

