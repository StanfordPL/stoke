  .text
  .globl _ZNK2pp3Var6AsBoolEv
  .type _ZNK2pp3Var6AsBoolEv, @function

#! file-offset 0x29b80
#! rip-offset  0x29b80
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._ZNK2pp3Var6AsBoolEv:          #        0x29b80  0      
  movl %edi, %edi               #  1     0x29b80  2      
  xorl %eax, %eax               #  2     0x29b82  2      
  movl %edi, %edi               #  3     0x29b84  2      
  cmpl $0x2, 0x8(%r15,%rdi,1)   #  4     0x29b86  6      
  jne .L_29ba0                  #  5     0x29b8c  6      
  movl %edi, %edi               #  6     0x29b92  2      
  movl 0x10(%r15,%rdi,1), %eax  #  7     0x29b94  5      
  testl %eax, %eax              #  8     0x29b99  2      
  setne %al                     #  9     0x29b9b  3      
  nop                           #  10    0x29b9e  1      
.L_29ba0:                       #        0x29b9f  0      
  popq %r11                     #  11    0x29b9f  3      
  andl $0xffffffe0, %r11d       #  12    0x29ba2  7      
  addq %r15, %r11               #  13    0x29ba9  3      
  jmpq %r11                     #  14    0x29bac  3      
  nop                           #  15    0x29baf  1      
  nop                           #  16    0x29bb0  1      
                                                         
.size _ZNK2pp3Var6AsBoolEv, .-_ZNK2pp3Var6AsBoolEv

