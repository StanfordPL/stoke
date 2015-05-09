  .text
  .globl _ZNKSs7_M_iendEv
  .type _ZNKSs7_M_iendEv, @function

#! file-offset 0x442a0
#! rip-offset  0x442a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs7_M_iendEv:          #        0x442a0  0      
  movl %edi, %edi           #  1     0x442a0  2      
  movl %edi, %edi           #  2     0x442a2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x442a4  4      
  popq %r11                 #  4     0x442a8  3      
  leal -0xc(%rax), %edx     #  5     0x442ab  3      
  movl %edx, %edx           #  6     0x442ae  2      
  addl (%r15,%rdx,1), %eax  #  7     0x442b0  4      
  andl $0xffffffe0, %r11d   #  8     0x442b4  7      
  addq %r15, %r11           #  9     0x442bb  3      
  jmpq %r11                 #  10    0x442be  3      
  nop                       #  11    0x442c1  1      
  nop                       #  12    0x442c2  1      
  nop                       #  13    0x442c3  1      
                                                     
.size _ZNKSs7_M_iendEv, .-_ZNKSs7_M_iendEv

