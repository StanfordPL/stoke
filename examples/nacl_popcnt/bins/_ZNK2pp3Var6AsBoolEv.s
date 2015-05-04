  .text
  .globl _ZNK2pp3Var6AsBoolEv
  .type _ZNK2pp3Var6AsBoolEv, @function

#! file-offset 0x29c20
#! rip-offset  0x29c20
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._ZNK2pp3Var6AsBoolEv:          #        0x29c20  0      
  movl %edi, %edi               #  1     0x29c20  2      
  xorl %eax, %eax               #  2     0x29c22  2      
  movl %edi, %edi               #  3     0x29c24  2      
  cmpl $0x2, 0x8(%r15,%rdi,1)   #  4     0x29c26  6      
  jne .L_29c40                  #  5     0x29c2c  6      
  movl %edi, %edi               #  6     0x29c32  2      
  movl 0x10(%r15,%rdi,1), %eax  #  7     0x29c34  5      
  testl %eax, %eax              #  8     0x29c39  2      
  setne %al                     #  9     0x29c3b  3      
  nop                           #  10    0x29c3e  1      
.L_29c40:                       #        0x29c3f  0      
  popq %r11                     #  11    0x29c3f  3      
  andl $0xffffffe0, %r11d       #  12    0x29c42  7      
  addq %r15, %r11               #  13    0x29c49  3      
  jmpq %r11                     #  14    0x29c4c  3      
  nop                           #  15    0x29c4f  1      
  nop                           #  16    0x29c50  1      
                                                         
.size _ZNK2pp3Var6AsBoolEv, .-_ZNK2pp3Var6AsBoolEv

