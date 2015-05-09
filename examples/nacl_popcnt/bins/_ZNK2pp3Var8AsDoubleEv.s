  .text
  .globl _ZNK2pp3Var8AsDoubleEv
  .type _ZNK2pp3Var8AsDoubleEv, @function

#! file-offset 0x29c40
#! rip-offset  0x29c40
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3Var8AsDoubleEv:              #        0x29c40  0      
  movl %edi, %edi                     #  1     0x29c40  2      
  movl %edi, %edi                     #  2     0x29c42  2      
  movl 0x8(%r15,%rdi,1), %eax         #  3     0x29c44  5      
  cmpl $0x4, %eax                     #  4     0x29c49  3      
  je .L_29ca0                         #  5     0x29c4c  6      
  cmpl $0x3, %eax                     #  6     0x29c52  3      
  je .L_29c80                         #  7     0x29c55  6      
  xorpd %xmm0, %xmm0                  #  8     0x29c5b  4      
  popq %r11                           #  9     0x29c5f  3      
  nop                                 #  10    0x29c62  1      
  andl $0xffffffe0, %r11d             #  11    0x29c63  7      
  addq %r15, %r11                     #  12    0x29c6a  3      
  jmpq %r11                           #  13    0x29c6d  3      
  nop                                 #  14    0x29c70  1      
  nop                                 #  15    0x29c71  1      
.L_29c80:                             #        0x29c72  0      
  movl %edi, %edi                     #  16    0x29c72  2      
  cvtsi2sdl 0x10(%r15,%rdi,1), %xmm0  #  17    0x29c74  7      
  popq %r11                           #  18    0x29c7b  3      
  andl $0xffffffe0, %r11d             #  19    0x29c7e  7      
  addq %r15, %r11                     #  20    0x29c85  3      
  jmpq %r11                           #  21    0x29c88  3      
  nop                                 #  22    0x29c8b  1      
.L_29ca0:                             #        0x29c8c  0      
  movl %edi, %edi                     #  23    0x29c8c  2      
  movsd 0x10(%r15,%rdi,1), %xmm0      #  24    0x29c8e  7      
  popq %r11                           #  25    0x29c95  3      
  andl $0xffffffe0, %r11d             #  26    0x29c98  7      
  addq %r15, %r11                     #  27    0x29c9f  3      
  jmpq %r11                           #  28    0x29ca2  3      
  nop                                 #  29    0x29ca5  1      
                                                               
.size _ZNK2pp3Var8AsDoubleEv, .-_ZNK2pp3Var8AsDoubleEv

