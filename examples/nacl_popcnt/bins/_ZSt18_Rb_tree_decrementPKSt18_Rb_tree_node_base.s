  .text
  .globl _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, @function

#! file-offset 0x42e20
#! rip-offset  0x42e20
#! capacity    288 bytes

# Text                                              #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base:  #        0x42e20  0      
  movl %edi, %edi                                   #  1     0x42e20  2      
  movl %edi, %edi                                   #  2     0x42e22  2      
  movl (%r15,%rdi,1), %edx                          #  3     0x42e24  4      
  testl %edx, %edx                                  #  4     0x42e28  2      
  jne .L_42e40                                      #  5     0x42e2a  6      
  movl %edi, %edi                                   #  6     0x42e30  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  7     0x42e32  5      
  movl %eax, %eax                                   #  8     0x42e37  2      
  cmpl %edi, 0x4(%r15,%rax,1)                       #  9     0x42e39  5      
  je .L_42ec0                                       #  10    0x42e3e  6      
.L_42e40:                                           #        0x42e44  0      
  movl %edi, %edi                                   #  11    0x42e44  2      
  movl 0x8(%r15,%rdi,1), %eax                       #  12    0x42e46  5      
  testq %rax, %rax                                  #  13    0x42e4b  3      
  jne .L_42e80                                      #  14    0x42e4e  6      
  jmpq .L_42ee0                                     #  15    0x42e54  5      
  nop                                               #  16    0x42e59  1      
.L_42e60:                                           #        0x42e5a  0      
  movq %rdx, %rax                                   #  17    0x42e5a  3      
  nop                                               #  18    0x42e5d  1      
  nop                                               #  19    0x42e5e  1      
.L_42e80:                                           #        0x42e5f  0      
  movl %eax, %eax                                   #  20    0x42e5f  2      
  movl 0xc(%r15,%rax,1), %edx                       #  21    0x42e61  5      
  testq %rdx, %rdx                                  #  22    0x42e66  3      
  jne .L_42e60                                      #  23    0x42e69  6      
  nop                                               #  24    0x42e6f  1      
  nop                                               #  25    0x42e70  1      
.L_42ea0:                                           #        0x42e71  0      
  popq %r11                                         #  26    0x42e71  3      
  andl $0xffffffe0, %r11d                           #  27    0x42e74  7      
  addq %r15, %r11                                   #  28    0x42e7b  3      
  jmpq %r11                                         #  29    0x42e7e  3      
  nop                                               #  30    0x42e81  1      
  nop                                               #  31    0x42e82  1      
.L_42ec0:                                           #        0x42e83  0      
  movl %edi, %edi                                   #  32    0x42e83  2      
  movl 0xc(%r15,%rdi,1), %eax                       #  33    0x42e85  5      
  popq %r11                                         #  34    0x42e8a  3      
  andl $0xffffffe0, %r11d                           #  35    0x42e8d  7      
  addq %r15, %r11                                   #  36    0x42e94  3      
  jmpq %r11                                         #  37    0x42e97  3      
  nop                                               #  38    0x42e9a  1      
.L_42ee0:                                           #        0x42e9b  0      
  movl %edi, %edi                                   #  39    0x42e9b  2      
  movl 0x4(%r15,%rdi,1), %eax                       #  40    0x42e9d  5      
  movl %eax, %eax                                   #  41    0x42ea2  2      
  cmpl %edi, 0x8(%r15,%rax,1)                       #  42    0x42ea4  5      
  je .L_42f20                                       #  43    0x42ea9  6      
  jmpq .L_42ea0                                     #  44    0x42eaf  5      
  nop                                               #  45    0x42eb4  1      
.L_42f00:                                           #        0x42eb5  0      
  movq %rdx, %rax                                   #  46    0x42eb5  3      
  nop                                               #  47    0x42eb8  1      
  nop                                               #  48    0x42eb9  1      
.L_42f20:                                           #        0x42eba  0      
  movl %eax, %eax                                   #  49    0x42eba  2      
  movl 0x4(%r15,%rax,1), %edx                       #  50    0x42ebc  5      
  movl %edx, %edx                                   #  51    0x42ec1  2      
  cmpl %eax, 0x8(%r15,%rdx,1)                       #  52    0x42ec3  5      
  je .L_42f00                                       #  53    0x42ec8  6      
  movq %rdx, %rax                                   #  54    0x42ece  3      
  popq %r11                                         #  55    0x42ed1  3      
  andl $0xffffffe0, %r11d                           #  56    0x42ed4  7      
  addq %r15, %r11                                   #  57    0x42edb  3      
  jmpq %r11                                         #  58    0x42ede  3      
  nop                                               #  59    0x42ee1  1      
                                                                             
.size _ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base

