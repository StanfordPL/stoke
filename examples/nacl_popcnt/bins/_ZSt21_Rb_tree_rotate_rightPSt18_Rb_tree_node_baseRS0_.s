  .text
  .globl _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_
  .type _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x43020
#! rip-offset  0x43020
#! capacity    224 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_:  #        0x43020  0      
  movl %edi, %edi                                         #  1     0x43020  2      
  movl %esi, %esi                                         #  2     0x43022  2      
  movl %edi, %edi                                         #  3     0x43024  2      
  movl 0x8(%r15,%rdi,1), %eax                             #  4     0x43026  5      
  movl %eax, %eax                                         #  5     0x4302b  2      
  movl 0xc(%r15,%rax,1), %edx                             #  6     0x4302d  5      
  movl %edi, %edi                                         #  7     0x43032  2      
  movl %edx, 0x8(%r15,%rdi,1)                             #  8     0x43034  5      
  movl %edx, %edx                                         #  9     0x43039  2      
  testq %rdx, %rdx                                        #  10    0x4303b  3      
  xchgw %ax, %ax                                          #  11    0x4303e  3      
  je .L_43060                                             #  12    0x43041  6      
  movl %edx, %edx                                         #  13    0x43047  2      
  movl %edi, 0x4(%r15,%rdx,1)                             #  14    0x43049  5      
  nop                                                     #  15    0x4304e  1      
  nop                                                     #  16    0x4304f  1      
.L_43060:                                                 #        0x43050  0      
  movl %edi, %edi                                         #  17    0x43050  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  18    0x43052  5      
  movl %eax, %eax                                         #  19    0x43057  2      
  movl %edx, 0x4(%r15,%rax,1)                             #  20    0x43059  5      
  movl %esi, %esi                                         #  21    0x4305e  2      
  cmpl %edi, (%r15,%rsi,1)                                #  22    0x43060  4      
  je .L_430c0                                             #  23    0x43064  6      
  movl %edi, %edi                                         #  24    0x4306a  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  25    0x4306c  5      
  nop                                                     #  26    0x43071  1      
  movl %edx, %edx                                         #  27    0x43072  2      
  cmpl %edi, 0xc(%r15,%rdx,1)                             #  28    0x43074  5      
  je .L_430e0                                             #  29    0x43079  6      
  movl %edx, %edx                                         #  30    0x4307f  2      
  movl %eax, 0x8(%r15,%rdx,1)                             #  31    0x43081  5      
  nop                                                     #  32    0x43086  1      
  nop                                                     #  33    0x43087  1      
.L_430a0:                                                 #        0x43088  0      
  movl %eax, %eax                                         #  34    0x43088  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  35    0x4308a  5      
  movl %edi, %edi                                         #  36    0x4308f  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  37    0x43091  5      
  popq %r11                                               #  38    0x43096  3      
  andl $0xffffffe0, %r11d                                 #  39    0x43099  7      
  addq %r15, %r11                                         #  40    0x430a0  3      
  jmpq %r11                                               #  41    0x430a3  3      
  nop                                                     #  42    0x430a6  1      
.L_430c0:                                                 #        0x430a7  0      
  movl %esi, %esi                                         #  43    0x430a7  2      
  movl %eax, (%r15,%rsi,1)                                #  44    0x430a9  4      
  movl %eax, %eax                                         #  45    0x430ad  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  46    0x430af  5      
  popq %r11                                               #  47    0x430b4  3      
  movl %edi, %edi                                         #  48    0x430b7  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  49    0x430b9  5      
  andl $0xffffffe0, %r11d                                 #  50    0x430be  7      
  addq %r15, %r11                                         #  51    0x430c5  3      
  jmpq %r11                                               #  52    0x430c8  3      
.L_430e0:                                                 #        0x430cb  0      
  movl %edx, %edx                                         #  53    0x430cb  2      
  movl %eax, 0xc(%r15,%rdx,1)                             #  54    0x430cd  5      
  jmpq .L_430a0                                           #  55    0x430d2  5      
  nop                                                     #  56    0x430d7  1      
  nop                                                     #  57    0x430d8  1      
  nop                                                     #  58    0x430d9  1      
  nop                                                     #  59    0x430da  1      
  nop                                                     #  60    0x430db  1      
  nop                                                     #  61    0x430dc  1      
  nop                                                     #  62    0x430dd  1      
  nop                                                     #  63    0x430de  1      
  nop                                                     #  64    0x430df  1      
  nop                                                     #  65    0x430e0  1      
  nop                                                     #  66    0x430e1  1      
  nop                                                     #  67    0x430e2  1      
  nop                                                     #  68    0x430e3  1      
  nop                                                     #  69    0x430e4  1      
  nop                                                     #  70    0x430e5  1      
  nop                                                     #  71    0x430e6  1      
  nop                                                     #  72    0x430e7  1      
  nop                                                     #  73    0x430e8  1      
  nop                                                     #  74    0x430e9  1      
  nop                                                     #  75    0x430ea  1      
  nop                                                     #  76    0x430eb  1      
  nop                                                     #  77    0x430ec  1      
  nop                                                     #  78    0x430ed  1      
                                                                                   
.size _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, .-_ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_

