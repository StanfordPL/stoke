  .text
  .globl _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42b80
#! rip-offset  0x42b80
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base:  #        0x42b80  0      
  movl %edi, %eax                                   #  1     0x42b80  2      
  movl %eax, %eax                                   #  2     0x42b82  2      
  movl 0xc(%r15,%rax,1), %edx                       #  3     0x42b84  5      
  testq %rdx, %rdx                                  #  4     0x42b89  3      
  jne .L_42bc0                                      #  5     0x42b8c  6      
  jmpq .L_42be0                                     #  6     0x42b92  5      
  nop                                               #  7     0x42b97  1      
  nop                                               #  8     0x42b98  1      
.L_42ba0:                                           #        0x42b99  0      
  movq %rax, %rdx                                   #  9     0x42b99  3      
  nop                                               #  10    0x42b9c  1      
  nop                                               #  11    0x42b9d  1      
.L_42bc0:                                           #        0x42b9e  0      
  movl %edx, %edx                                   #  12    0x42b9e  2      
  movl 0x8(%r15,%rdx,1), %eax                       #  13    0x42ba0  5      
  testq %rax, %rax                                  #  14    0x42ba5  3      
  jne .L_42ba0                                      #  15    0x42ba8  6      
  movq %rdx, %rax                                   #  16    0x42bae  3      
  popq %r11                                         #  17    0x42bb1  3      
  andl $0xffffffe0, %r11d                           #  18    0x42bb4  7      
  addq %r15, %r11                                   #  19    0x42bbb  3      
  jmpq %r11                                         #  20    0x42bbe  3      
  nop                                               #  21    0x42bc1  1      
.L_42be0:                                           #        0x42bc2  0      
  movl %eax, %eax                                   #  22    0x42bc2  2      
  movl 0x4(%r15,%rax,1), %edx                       #  23    0x42bc4  5      
  xorl %ecx, %ecx                                   #  24    0x42bc9  2      
  movl %edx, %edx                                   #  25    0x42bcb  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  26    0x42bcd  5      
  jne .L_42c20                                      #  27    0x42bd2  6      
  nop                                               #  28    0x42bd8  1      
.L_42c00:                                           #        0x42bd9  0      
  movq %rdx, %rax                                   #  29    0x42bd9  3      
  movl %edx, %edx                                   #  30    0x42bdc  2      
  movl 0x4(%r15,%rdx,1), %edx                       #  31    0x42bde  5      
  movl %edx, %edx                                   #  32    0x42be3  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  33    0x42be5  5      
  je .L_42c00                                       #  34    0x42bea  6      
  movl %eax, %eax                                   #  35    0x42bf0  2      
  movl 0xc(%r15,%rax,1), %ecx                       #  36    0x42bf2  5      
  nop                                               #  37    0x42bf7  1      
.L_42c20:                                           #        0x42bf8  0      
  cmpl %ecx, %edx                                   #  38    0x42bf8  2      
  cmovneq %rdx, %rax                                #  39    0x42bfa  4      
  popq %r11                                         #  40    0x42bfe  3      
  andl $0xffffffe0, %r11d                           #  41    0x42c01  7      
  addq %r15, %r11                                   #  42    0x42c08  3      
  jmpq %r11                                         #  43    0x42c0b  3      
  nop                                               #  44    0x42c0e  1      
  nop                                               #  45    0x42c0f  1      
  nop                                               #  46    0x42c10  1      
  nop                                               #  47    0x42c11  1      
  nop                                               #  48    0x42c12  1      
  nop                                               #  49    0x42c13  1      
  nop                                               #  50    0x42c14  1      
  nop                                               #  51    0x42c15  1      
  nop                                               #  52    0x42c16  1      
  nop                                               #  53    0x42c17  1      
  nop                                               #  54    0x42c18  1      
  nop                                               #  55    0x42c19  1      
  nop                                               #  56    0x42c1a  1      
  nop                                               #  57    0x42c1b  1      
                                                                             
.size _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base

