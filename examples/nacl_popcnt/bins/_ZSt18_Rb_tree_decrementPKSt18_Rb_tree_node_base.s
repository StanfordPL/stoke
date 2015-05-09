  .text
  .globl _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42d80
#! rip-offset  0x42d80
#! capacity    288 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base:  #        0x42d80  0      
  movl %edi, %edi                                   #  1     0x42d80  2      
  movl %edi, %edi                                   #  2     0x42d82  2      
  movl (%r15,%rdi,1), %edx                          #  3     0x42d84  4      
  testl %edx, %edx                                  #  4     0x42d88  2      
  jne .L_42da0                                      #  5     0x42d8a  6      
  movl %edi, %edi                                   #  6     0x42d90  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  7     0x42d92  5      
  movl %eax, %eax                                   #  8     0x42d97  2      
  cmpl %edi, 0x4(%r15,%rax,1)                       #  9     0x42d99  5      
  je .L_42e20                                       #  10    0x42d9e  6      
.L_42da0:                                           #        0x42da4  0      
  movl %edi, %edi                                   #  11    0x42da4  2      
  movl 0x8(%r15,%rdi,1), %eax                       #  12    0x42da6  5      
  testq %rax, %rax                                  #  13    0x42dab  3      
  jne .L_42de0                                      #  14    0x42dae  6      
  jmpq .L_42e40                                     #  15    0x42db4  5      
  nop                                               #  16    0x42db9  1      
.L_42dc0:                                           #        0x42dba  0      
  movq %rdx, %rax                                   #  17    0x42dba  3      
  nop                                               #  18    0x42dbd  1      
  nop                                               #  19    0x42dbe  1      
.L_42de0:                                           #        0x42dbf  0      
  movl %eax, %eax                                   #  20    0x42dbf  2      
  movl 0xc(%r15,%rax,1), %edx                       #  21    0x42dc1  5      
  testq %rdx, %rdx                                  #  22    0x42dc6  3      
  jne .L_42dc0                                      #  23    0x42dc9  6      
  nop                                               #  24    0x42dcf  1      
  nop                                               #  25    0x42dd0  1      
.L_42e00:                                           #        0x42dd1  0      
  popq %r11                                         #  26    0x42dd1  3      
  andl $0xffffffe0, %r11d                           #  27    0x42dd4  7      
  addq %r15, %r11                                   #  28    0x42ddb  3      
  jmpq %r11                                         #  29    0x42dde  3      
  nop                                               #  30    0x42de1  1      
  nop                                               #  31    0x42de2  1      
.L_42e20:                                           #        0x42de3  0      
  movl %edi, %edi                                   #  32    0x42de3  2      
  movl 0xc(%r15,%rdi,1), %eax                       #  33    0x42de5  5      
  popq %r11                                         #  34    0x42dea  3      
  andl $0xffffffe0, %r11d                           #  35    0x42ded  7      
  addq %r15, %r11                                   #  36    0x42df4  3      
  jmpq %r11                                         #  37    0x42df7  3      
  nop                                               #  38    0x42dfa  1      
.L_42e40:                                           #        0x42dfb  0      
  movl %edi, %edi                                   #  39    0x42dfb  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  40    0x42dfd  5      
  movl %eax, %eax                                   #  41    0x42e02  2      
  cmpl %edi, 0x8(%r15,%rax,1)                       #  42    0x42e04  5      
  je .L_42e80                                       #  43    0x42e09  6      
  jmpq .L_42e00                                     #  44    0x42e0f  5      
  nop                                               #  45    0x42e14  1      
.L_42e60:                                           #        0x42e15  0      
  movq %rdx, %rax                                   #  46    0x42e15  3      
  nop                                               #  47    0x42e18  1      
  nop                                               #  48    0x42e19  1      
.L_42e80:                                           #        0x42e1a  0      
  movl %eax, %eax                                   #  49    0x42e1a  2      
  movl 0x4(%r15,%rax,1), %edx                       #  50    0x42e1c  5      
  movl %edx, %edx                                   #  51    0x42e21  2      
  cmpl %eax, 0x8(%r15,%rdx,1)                       #  52    0x42e23  5      
  je .L_42e60                                       #  53    0x42e28  6      
  movq %rdx, %rax                                   #  54    0x42e2e  3      
  popq %r11                                         #  55    0x42e31  3      
  andl $0xffffffe0, %r11d                           #  56    0x42e34  7      
  addq %r15, %r11                                   #  57    0x42e3b  3      
  jmpq %r11                                         #  58    0x42e3e  3      
  nop                                               #  59    0x42e41  1      
                                                                             
.size _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base

