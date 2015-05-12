  .text
  .globl _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_
  .type _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x42fa0
#! rip-offset  0x42fa0
#! capacity    224 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_:  #        0x42fa0  0      
  movl %edi, %edi                                         #  1     0x42fa0  2      
  movl %esi, %esi                                         #  2     0x42fa2  2      
  movl %edi, %edi                                         #  3     0x42fa4  2      
  movl 0x8(%r15,%rdi,1), %eax                             #  4     0x42fa6  5      
  movl %eax, %eax                                         #  5     0x42fab  2      
  movl 0xc(%r15,%rax,1), %edx                             #  6     0x42fad  5      
  movl %edi, %edi                                         #  7     0x42fb2  2      
  movl %edx, 0x8(%r15,%rdi,1)                             #  8     0x42fb4  5      
  movl %edx, %edx                                         #  9     0x42fb9  2      
  testq %rdx, %rdx                                        #  10    0x42fbb  3      
  xchgw %ax, %ax                                          #  11    0x42fbe  3      
  je .L_42fe0                                             #  12    0x42fc1  6      
  movl %edx, %edx                                         #  13    0x42fc7  2      
  movl %edi, 0x4(%r15,%rdx,1)                             #  14    0x42fc9  5      
  nop                                                     #  15    0x42fce  1      
  nop                                                     #  16    0x42fcf  1      
.L_42fe0:                                                 #        0x42fd0  0      
  movl %edi, %edi                                         #  17    0x42fd0  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  18    0x42fd2  5      
  movl %eax, %eax                                         #  19    0x42fd7  2      
  movl %edx, 0x4(%r15,%rax,1)                             #  20    0x42fd9  5      
  movl %esi, %esi                                         #  21    0x42fde  2      
  cmpl %edi, (%r15,%rsi,1)                                #  22    0x42fe0  4      
  je .L_43040                                             #  23    0x42fe4  6      
  movl %edi, %edi                                         #  24    0x42fea  2      
  movl 0x4(%r15,%rdi,1), %edx                             #  25    0x42fec  5      
  nop                                                     #  26    0x42ff1  1      
  movl %edx, %edx                                         #  27    0x42ff2  2      
  cmpl %edi, 0xc(%r15,%rdx,1)                             #  28    0x42ff4  5      
  je .L_43060                                             #  29    0x42ff9  6      
  movl %edx, %edx                                         #  30    0x42fff  2      
  movl %eax, 0x8(%r15,%rdx,1)                             #  31    0x43001  5      
  nop                                                     #  32    0x43006  1      
  nop                                                     #  33    0x43007  1      
.L_43020:                                                 #        0x43008  0      
  movl %eax, %eax                                         #  34    0x43008  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  35    0x4300a  5      
  movl %edi, %edi                                         #  36    0x4300f  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  37    0x43011  5      
  popq %r11                                               #  38    0x43016  3      
  andl $0xffffffe0, %r11d                                 #  39    0x43019  7      
  addq %r15, %r11                                         #  40    0x43020  3      
  jmpq %r11                                               #  41    0x43023  3      
  nop                                                     #  42    0x43026  1      
.L_43040:                                                 #        0x43027  0      
  movl %esi, %esi                                         #  43    0x43027  2      
  movl %eax, (%r15,%rsi,1)                                #  44    0x43029  4      
  movl %eax, %eax                                         #  45    0x4302d  2      
  movl %edi, 0xc(%r15,%rax,1)                             #  46    0x4302f  5      
  popq %r11                                               #  47    0x43034  3      
  movl %edi, %edi                                         #  48    0x43037  2      
  movl %eax, 0x4(%r15,%rdi,1)                             #  49    0x43039  5      
  andl $0xffffffe0, %r11d                                 #  50    0x4303e  7      
  addq %r15, %r11                                         #  51    0x43045  3      
  jmpq %r11                                               #  52    0x43048  3      
.L_43060:                                                 #        0x4304b  0      
  movl %edx, %edx                                         #  53    0x4304b  2      
  movl %eax, 0xc(%r15,%rdx,1)                             #  54    0x4304d  5      
  jmpq .L_43020                                           #  55    0x43052  5      
  nop                                                     #  56    0x43057  1      
  nop                                                     #  57    0x43058  1      
  nop                                                     #  58    0x43059  1      
  nop                                                     #  59    0x4305a  1      
  nop                                                     #  60    0x4305b  1      
  nop                                                     #  61    0x4305c  1      
  nop                                                     #  62    0x4305d  1      
  nop                                                     #  63    0x4305e  1      
  nop                                                     #  64    0x4305f  1      
  nop                                                     #  65    0x43060  1      
  nop                                                     #  66    0x43061  1      
  nop                                                     #  67    0x43062  1      
  nop                                                     #  68    0x43063  1      
  nop                                                     #  69    0x43064  1      
  nop                                                     #  70    0x43065  1      
  nop                                                     #  71    0x43066  1      
  nop                                                     #  72    0x43067  1      
  nop                                                     #  73    0x43068  1      
  nop                                                     #  74    0x43069  1      
  nop                                                     #  75    0x4306a  1      
  nop                                                     #  76    0x4306b  1      
  nop                                                     #  77    0x4306c  1      
  nop                                                     #  78    0x4306d  1      
                                                                                   
.size _ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_, .-_ZSt21_Rb_tree_rotate_rightPSt18_Rb_tree_node_baseRS0_

