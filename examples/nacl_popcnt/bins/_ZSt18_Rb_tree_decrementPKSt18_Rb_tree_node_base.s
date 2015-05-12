  .text
  .globl _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42da0
#! rip-offset  0x42da0
#! capacity    288 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base:  #        0x42da0  0      
  movl %edi, %edi                                   #  1     0x42da0  2      
  movl %edi, %edi                                   #  2     0x42da2  2      
  movl (%r15,%rdi,1), %edx                          #  3     0x42da4  4      
  testl %edx, %edx                                  #  4     0x42da8  2      
  jne .L_42dc0                                      #  5     0x42daa  6      
  movl %edi, %edi                                   #  6     0x42db0  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  7     0x42db2  5      
  movl %eax, %eax                                   #  8     0x42db7  2      
  cmpl %edi, 0x4(%r15,%rax,1)                       #  9     0x42db9  5      
  je .L_42e40                                       #  10    0x42dbe  6      
.L_42dc0:                                           #        0x42dc4  0      
  movl %edi, %edi                                   #  11    0x42dc4  2      
  movl 0x8(%r15,%rdi,1), %eax                       #  12    0x42dc6  5      
  testq %rax, %rax                                  #  13    0x42dcb  3      
  jne .L_42e00                                      #  14    0x42dce  6      
  jmpq .L_42e60                                     #  15    0x42dd4  5      
  nop                                               #  16    0x42dd9  1      
.L_42de0:                                           #        0x42dda  0      
  movq %rdx, %rax                                   #  17    0x42dda  3      
  nop                                               #  18    0x42ddd  1      
  nop                                               #  19    0x42dde  1      
.L_42e00:                                           #        0x42ddf  0      
  movl %eax, %eax                                   #  20    0x42ddf  2      
  movl 0xc(%r15,%rax,1), %edx                       #  21    0x42de1  5      
  testq %rdx, %rdx                                  #  22    0x42de6  3      
  jne .L_42de0                                      #  23    0x42de9  6      
  nop                                               #  24    0x42def  1      
  nop                                               #  25    0x42df0  1      
.L_42e20:                                           #        0x42df1  0      
  popq %r11                                         #  26    0x42df1  3      
  andl $0xffffffe0, %r11d                           #  27    0x42df4  7      
  addq %r15, %r11                                   #  28    0x42dfb  3      
  jmpq %r11                                         #  29    0x42dfe  3      
  nop                                               #  30    0x42e01  1      
  nop                                               #  31    0x42e02  1      
.L_42e40:                                           #        0x42e03  0      
  movl %edi, %edi                                   #  32    0x42e03  2      
  movl 0xc(%r15,%rdi,1), %eax                       #  33    0x42e05  5      
  popq %r11                                         #  34    0x42e0a  3      
  andl $0xffffffe0, %r11d                           #  35    0x42e0d  7      
  addq %r15, %r11                                   #  36    0x42e14  3      
  jmpq %r11                                         #  37    0x42e17  3      
  nop                                               #  38    0x42e1a  1      
.L_42e60:                                           #        0x42e1b  0      
  movl %edi, %edi                                   #  39    0x42e1b  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  40    0x42e1d  5      
  movl %eax, %eax                                   #  41    0x42e22  2      
  cmpl %edi, 0x8(%r15,%rax,1)                       #  42    0x42e24  5      
  je .L_42ea0                                       #  43    0x42e29  6      
  jmpq .L_42e20                                     #  44    0x42e2f  5      
  nop                                               #  45    0x42e34  1      
.L_42e80:                                           #        0x42e35  0      
  movq %rdx, %rax                                   #  46    0x42e35  3      
  nop                                               #  47    0x42e38  1      
  nop                                               #  48    0x42e39  1      
.L_42ea0:                                           #        0x42e3a  0      
  movl %eax, %eax                                   #  49    0x42e3a  2      
  movl 0x4(%r15,%rax,1), %edx                       #  50    0x42e3c  5      
  movl %edx, %edx                                   #  51    0x42e41  2      
  cmpl %eax, 0x8(%r15,%rdx,1)                       #  52    0x42e43  5      
  je .L_42e80                                       #  53    0x42e48  6      
  movq %rdx, %rax                                   #  54    0x42e4e  3      
  popq %r11                                         #  55    0x42e51  3      
  andl $0xffffffe0, %r11d                           #  56    0x42e54  7      
  addq %r15, %r11                                   #  57    0x42e5b  3      
  jmpq %r11                                         #  58    0x42e5e  3      
  nop                                               #  59    0x42e61  1      
                                                                             
.size _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base

