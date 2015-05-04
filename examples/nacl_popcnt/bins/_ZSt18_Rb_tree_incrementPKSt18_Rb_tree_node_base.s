  .text
  .globl _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42c20
#! rip-offset  0x42c20
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base:  #        0x42c20  0      
  movl %edi, %eax                                   #  1     0x42c20  2      
  movl %eax, %eax                                   #  2     0x42c22  2      
  movl 0xc(%r15,%rax,1), %edx                       #  3     0x42c24  5      
  testq %rdx, %rdx                                  #  4     0x42c29  3      
  jne .L_42c60                                      #  5     0x42c2c  6      
  jmpq .L_42c80                                     #  6     0x42c32  5      
  nop                                               #  7     0x42c37  1      
  nop                                               #  8     0x42c38  1      
.L_42c40:                                           #        0x42c39  0      
  movq %rax, %rdx                                   #  9     0x42c39  3      
  nop                                               #  10    0x42c3c  1      
  nop                                               #  11    0x42c3d  1      
.L_42c60:                                           #        0x42c3e  0      
  movl %edx, %edx                                   #  12    0x42c3e  2      
  movl 0x8(%r15,%rdx,1), %eax                       #  13    0x42c40  5      
  testq %rax, %rax                                  #  14    0x42c45  3      
  jne .L_42c40                                      #  15    0x42c48  6      
  movq %rdx, %rax                                   #  16    0x42c4e  3      
  popq %r11                                         #  17    0x42c51  3      
  andl $0xffffffe0, %r11d                           #  18    0x42c54  7      
  addq %r15, %r11                                   #  19    0x42c5b  3      
  jmpq %r11                                         #  20    0x42c5e  3      
  nop                                               #  21    0x42c61  1      
.L_42c80:                                           #        0x42c62  0      
  movl %eax, %eax                                   #  22    0x42c62  2      
  movl 0x4(%r15,%rax,1), %edx                       #  23    0x42c64  5      
  xorl %ecx, %ecx                                   #  24    0x42c69  2      
  movl %edx, %edx                                   #  25    0x42c6b  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  26    0x42c6d  5      
  jne .L_42cc0                                      #  27    0x42c72  6      
  nop                                               #  28    0x42c78  1      
.L_42ca0:                                           #        0x42c79  0      
  movq %rdx, %rax                                   #  29    0x42c79  3      
  movl %edx, %edx                                   #  30    0x42c7c  2      
  movl 0x4(%r15,%rdx,1), %edx                       #  31    0x42c7e  5      
  movl %edx, %edx                                   #  32    0x42c83  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                       #  33    0x42c85  5      
  je .L_42ca0                                       #  34    0x42c8a  6      
  movl %eax, %eax                                   #  35    0x42c90  2      
  movl 0xc(%r15,%rax,1), %ecx                       #  36    0x42c92  5      
  nop                                               #  37    0x42c97  1      
.L_42cc0:                                           #        0x42c98  0      
  cmpl %ecx, %edx                                   #  38    0x42c98  2      
  cmovneq %rdx, %rax                                #  39    0x42c9a  4      
  popq %r11                                         #  40    0x42c9e  3      
  andl $0xffffffe0, %r11d                           #  41    0x42ca1  7      
  addq %r15, %r11                                   #  42    0x42ca8  3      
  jmpq %r11                                         #  43    0x42cab  3      
  nop                                               #  44    0x42cae  1      
  nop                                               #  45    0x42caf  1      
  nop                                               #  46    0x42cb0  1      
  nop                                               #  47    0x42cb1  1      
  nop                                               #  48    0x42cb2  1      
  nop                                               #  49    0x42cb3  1      
  nop                                               #  50    0x42cb4  1      
  nop                                               #  51    0x42cb5  1      
  nop                                               #  52    0x42cb6  1      
  nop                                               #  53    0x42cb7  1      
  nop                                               #  54    0x42cb8  1      
  nop                                               #  55    0x42cb9  1      
  nop                                               #  56    0x42cba  1      
  nop                                               #  57    0x42cbb  1      
                                                                             
.size _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base

