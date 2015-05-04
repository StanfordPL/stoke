  .text
  .globl _ZNK2pp3Var8AsDoubleEv
  .type _ZNK2pp3Var8AsDoubleEv, @function

#! file-offset 0x29ce0
#! rip-offset  0x29ce0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3Var8AsDoubleEv:              #        0x29ce0  0      
  movl %edi, %edi                     #  1     0x29ce0  2      
  movl %edi, %edi                     #  2     0x29ce2  2      
  movl 0x8(%r15,%rdi,1), %eax         #  3     0x29ce4  5      
  cmpl $0x4, %eax                     #  4     0x29ce9  3      
  je .L_29d40                         #  5     0x29cec  6      
  cmpl $0x3, %eax                     #  6     0x29cf2  3      
  je .L_29d20                         #  7     0x29cf5  6      
  xorpd %xmm0, %xmm0                  #  8     0x29cfb  4      
  popq %r11                           #  9     0x29cff  3      
  nop                                 #  10    0x29d02  1      
  andl $0xffffffe0, %r11d             #  11    0x29d03  7      
  addq %r15, %r11                     #  12    0x29d0a  3      
  jmpq %r11                           #  13    0x29d0d  3      
  nop                                 #  14    0x29d10  1      
  nop                                 #  15    0x29d11  1      
.L_29d20:                             #        0x29d12  0      
  movl %edi, %edi                     #  16    0x29d12  2      
  cvtsi2sdl 0x10(%r15,%rdi,1), %xmm0  #  17    0x29d14  7      
  popq %r11                           #  18    0x29d1b  3      
  andl $0xffffffe0, %r11d             #  19    0x29d1e  7      
  addq %r15, %r11                     #  20    0x29d25  3      
  jmpq %r11                           #  21    0x29d28  3      
  nop                                 #  22    0x29d2b  1      
.L_29d40:                             #        0x29d2c  0      
  movl %edi, %edi                     #  23    0x29d2c  2      
  movsd 0x10(%r15,%rdi,1), %xmm0      #  24    0x29d2e  7      
  popq %r11                           #  25    0x29d35  3      
  andl $0xffffffe0, %r11d             #  26    0x29d38  7      
  addq %r15, %r11                     #  27    0x29d3f  3      
  jmpq %r11                           #  28    0x29d42  3      
  nop                                 #  29    0x29d45  1      
                                                               
.size _ZNK2pp3Var8AsDoubleEv, .-_ZNK2pp3Var8AsDoubleEv

