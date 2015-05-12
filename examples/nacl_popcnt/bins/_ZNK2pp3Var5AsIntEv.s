  .text
  .globl _ZNK2pp3Var5AsIntEv
  .type _ZNK2pp3Var5AsIntEv, @function

#! file-offset 0x29be0
#! rip-offset  0x29be0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
._ZNK2pp3Var5AsIntEv:             #        0x29be0  0      
  movl %edi, %edi                 #  1     0x29be0  2      
  movl %edi, %edi                 #  2     0x29be2  2      
  movl 0x8(%r15,%rdi,1), %edx     #  3     0x29be4  5      
  cmpl $0x3, %edx                 #  4     0x29be9  3      
  je .L_29c40                     #  5     0x29bec  6      
  xorl %eax, %eax                 #  6     0x29bf2  2      
  cmpl $0x4, %edx                 #  7     0x29bf4  3      
  je .L_29c20                     #  8     0x29bf7  6      
  popq %r11                       #  9     0x29bfd  3      
  nop                             #  10    0x29c00  1      
  andl $0xffffffe0, %r11d         #  11    0x29c01  7      
  addq %r15, %r11                 #  12    0x29c08  3      
  jmpq %r11                       #  13    0x29c0b  3      
  nop                             #  14    0x29c0e  1      
  nop                             #  15    0x29c0f  1      
.L_29c20:                         #        0x29c10  0      
  movl %edi, %edi                 #  16    0x29c10  2      
  movsd 0x10(%r15,%rdi,1), %xmm0  #  17    0x29c12  7      
  cvttsd2si %xmm0, %eax           #  18    0x29c19  4      
  popq %r11                       #  19    0x29c1d  3      
  andl $0xffffffe0, %r11d         #  20    0x29c20  7      
  addq %r15, %r11                 #  21    0x29c27  3      
  jmpq %r11                       #  22    0x29c2a  3      
  nop                             #  23    0x29c2d  1      
.L_29c40:                         #        0x29c2e  0      
  movl %edi, %edi                 #  24    0x29c2e  2      
  movl 0x10(%r15,%rdi,1), %eax    #  25    0x29c30  5      
  popq %r11                       #  26    0x29c35  3      
  andl $0xffffffe0, %r11d         #  27    0x29c38  7      
  addq %r15, %r11                 #  28    0x29c3f  3      
  jmpq %r11                       #  29    0x29c42  3      
  nop                             #  30    0x29c45  1      
  nop                             #  31    0x29c46  1      
                                                           
.size _ZNK2pp3Var5AsIntEv, .-_ZNK2pp3Var5AsIntEv

