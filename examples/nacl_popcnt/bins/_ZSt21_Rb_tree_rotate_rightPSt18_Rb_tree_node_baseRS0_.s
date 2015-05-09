  .text
  .globl _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_
  .type _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x42f80
#! rip-offset  0x42f80
#! capacity    224 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_:  #        0x42f80  0      
  movl %edi, %edi                                         #  1     0x42f80  2      
  movl %esi, %esi                                         #  2     0x42f82  2      
  movl %edi, %edi                                         #  3     0x42f84  2      
  movl 0x8(%r15,%rdi,1), %eax                             #  4     0x42f86  5      
  movl %eax, %eax                                         #  5     0x42f8b  2      
  movl 0xc(%r15,%rax,1), %edx                             #  6     0x42f8d  5      
  movl %edi, %edi                                         #  7     0x42f92  2      
  movl %edx, 0x8(%r15,%rdi,1)                             #  8     0x42f94  5      
  movl %edx, %edx                                         #  9     0x42f99  2      
  testq %rdx, %rdx                                        #  10    0x42f9b  3      
  xchgw %ax, %ax                                          #  11    0x42f9e  3      
  je .L_42fc0                                             #  12    0x42fa1  6      
  movl %edx, %edx                                         #  13    0x42fa7  2      
  movl %edi, 0x4(%r15,%rdx,1)                             #  14    0x42fa9  5      
  nop                                                     #  15    0x42fae  1      
  nop                                                     #  16    0x42faf  1      
.L_42fc0:                                                 #        0x42fb0  0      
  movl %edi, %edi                                         #  17    0x42fb0  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  18    0x42fb2  5      
  movl %eax, %eax                                         #  19    0x42fb7  2      
  movl %edx, 0x4(%r15,%rax,1)                             #  20    0x42fb9  5      
  movl %esi, %esi                                         #  21    0x42fbe  2      
  cmpl %edi, (%r15,%rsi,1)                                #  22    0x42fc0  4      
  je .L_43020                                             #  23    0x42fc4  6      
  movl %edi, %edi                                         #  24    0x42fca  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  25    0x42fcc  5      
  nop                                                     #  26    0x42fd1  1      
  movl %edx, %edx                                         #  27    0x42fd2  2      
  cmpl %edi, 0xc(%r15,%rdx,1)                             #  28    0x42fd4  5      
  je .L_43040                                             #  29    0x42fd9  6      
  movl %edx, %edx                                         #  30    0x42fdf  2      
  movl %eax, 0x8(%r15,%rdx,1)                             #  31    0x42fe1  5      
  nop                                                     #  32    0x42fe6  1      
  nop                                                     #  33    0x42fe7  1      
.L_43000:                                                 #        0x42fe8  0      
  movl %eax, %eax                                         #  34    0x42fe8  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  35    0x42fea  5      
  movl %edi, %edi                                         #  36    0x42fef  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  37    0x42ff1  5      
  popq %r11                                               #  38    0x42ff6  3      
  andl $0xffffffe0, %r11d                                 #  39    0x42ff9  7      
  addq %r15, %r11                                         #  40    0x43000  3      
  jmpq %r11                                               #  41    0x43003  3      
  nop                                                     #  42    0x43006  1      
.L_43020:                                                 #        0x43007  0      
  movl %esi, %esi                                         #  43    0x43007  2      
  movl %eax, (%r15,%rsi,1)                                #  44    0x43009  4      
  movl %eax, %eax                                         #  45    0x4300d  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  46    0x4300f  5      
  popq %r11                                               #  47    0x43014  3      
  movl %edi, %edi                                         #  48    0x43017  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  49    0x43019  5      
  andl $0xffffffe0, %r11d                                 #  50    0x4301e  7      
  addq %r15, %r11                                         #  51    0x43025  3      
  jmpq %r11                                               #  52    0x43028  3      
.L_43040:                                                 #        0x4302b  0      
  movl %edx, %edx                                         #  53    0x4302b  2      
  movl %eax, 0xc(%r15,%rdx,1)                             #  54    0x4302d  5      
  jmpq .L_43000                                           #  55    0x43032  5      
  nop                                                     #  56    0x43037  1      
  nop                                                     #  57    0x43038  1      
  nop                                                     #  58    0x43039  1      
  nop                                                     #  59    0x4303a  1      
  nop                                                     #  60    0x4303b  1      
  nop                                                     #  61    0x4303c  1      
  nop                                                     #  62    0x4303d  1      
  nop                                                     #  63    0x4303e  1      
  nop                                                     #  64    0x4303f  1      
  nop                                                     #  65    0x43040  1      
  nop                                                     #  66    0x43041  1      
  nop                                                     #  67    0x43042  1      
  nop                                                     #  68    0x43043  1      
  nop                                                     #  69    0x43044  1      
  nop                                                     #  70    0x43045  1      
  nop                                                     #  71    0x43046  1      
  nop                                                     #  72    0x43047  1      
  nop                                                     #  73    0x43048  1      
  nop                                                     #  74    0x43049  1      
  nop                                                     #  75    0x4304a  1      
  nop                                                     #  76    0x4304b  1      
  nop                                                     #  77    0x4304c  1      
  nop                                                     #  78    0x4304d  1      
                                                                                   
.size _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, .-_ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_

