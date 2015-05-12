  .text
  .globl _ZNK2pp3Var8AsDoubleEv
  .type _ZNK2pp3Var8AsDoubleEv, @function

#! file-offset 0x29c60
#! rip-offset  0x29c60
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3Var8AsDoubleEv:              #        0x29c60  0      
  movl %edi, %edi                     #  1     0x29c60  2      
  movl %edi, %edi                     #  2     0x29c62  2      
  movl 0x8(%r15,%rdi,1), %eax         #  3     0x29c64  5      
  cmpl $0x4, %eax                     #  4     0x29c69  3      
  je .L_29cc0                         #  5     0x29c6c  6      
  cmpl $0x3, %eax                     #  6     0x29c72  3      
  je .L_29ca0                         #  7     0x29c75  6      
  xorpd %xmm0, %xmm0                  #  8     0x29c7b  4      
  popq %r11                           #  9     0x29c7f  3      
  nop                                 #  10    0x29c82  1      
  andl $0xffffffe0, %r11d             #  11    0x29c83  7      
  addq %r15, %r11                     #  12    0x29c8a  3      
  jmpq %r11                           #  13    0x29c8d  3      
  nop                                 #  14    0x29c90  1      
  nop                                 #  15    0x29c91  1      
.L_29ca0:                             #        0x29c92  0      
  movl %edi, %edi                     #  16    0x29c92  2      
  cvtsi2sdl 0x10(%r15,%rdi,1), %xmm0  #  17    0x29c94  7      
  popq %r11                           #  18    0x29c9b  3      
  andl $0xffffffe0, %r11d             #  19    0x29c9e  7      
  addq %r15, %r11                     #  20    0x29ca5  3      
  jmpq %r11                           #  21    0x29ca8  3      
  nop                                 #  22    0x29cab  1      
.L_29cc0:                             #        0x29cac  0      
  movl %edi, %edi                     #  23    0x29cac  2      
  movsd 0x10(%r15,%rdi,1), %xmm0      #  24    0x29cae  7      
  popq %r11                           #  25    0x29cb5  3      
  andl $0xffffffe0, %r11d             #  26    0x29cb8  7      
  addq %r15, %r11                     #  27    0x29cbf  3      
  jmpq %r11                           #  28    0x29cc2  3      
  nop                                 #  29    0x29cc5  1      
                                                               
.size _ZNK2pp3Var8AsDoubleEv, .-_ZNK2pp3Var8AsDoubleEv

