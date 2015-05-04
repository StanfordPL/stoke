  .text
  .globl _ZNKSs7_M_iendEv
  .type _ZNKSs7_M_iendEv, @function

#! file-offset 0x44340
#! rip-offset  0x44340
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs7_M_iendEv:          #        0x44340  0      
  movl %edi, %edi           #  1     0x44340  2      
  movl %edi, %edi           #  2     0x44342  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44344  4      
  popq %r11                 #  4     0x44348  3      
  leal -0xc(%rax), %edx     #  5     0x4434b  3      
  movl %edx, %edx           #  6     0x4434e  2      
  addl (%r15,%rdx,1), %eax  #  7     0x44350  4      
  andl $0xffffffe0, %r11d   #  8     0x44354  7      
  addq %r15, %r11           #  9     0x4435b  3      
  jmpq %r11                 #  10    0x4435e  3      
  nop                       #  11    0x44361  1      
  nop                       #  12    0x44362  1      
  nop                       #  13    0x44363  1      
                                                     
.size _ZNKSs7_M_iendEv, .-_ZNKSs7_M_iendEv

