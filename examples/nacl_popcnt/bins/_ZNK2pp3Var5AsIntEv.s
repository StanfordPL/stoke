  .text
  .globl _ZNK2pp3Var5AsIntEv
  .type _ZNK2pp3Var5AsIntEv, @function

#! file-offset 0x29bc0
#! rip-offset  0x29bc0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
._ZNK2pp3Var5AsIntEv:             #        0x29bc0  0      
  movl %edi, %edi                 #  1     0x29bc0  2      
  movl %edi, %edi                 #  2     0x29bc2  2      
  movl 0x8(%r15,%rdi,1), %edx     #  3     0x29bc4  5      
  cmpl $0x3, %edx                 #  4     0x29bc9  3      
  je .L_29c20                     #  5     0x29bcc  6      
  xorl %eax, %eax                 #  6     0x29bd2  2      
  cmpl $0x4, %edx                 #  7     0x29bd4  3      
  je .L_29c00                     #  8     0x29bd7  6      
  popq %r11                       #  9     0x29bdd  3      
  nop                             #  10    0x29be0  1      
  andl $0xffffffe0, %r11d         #  11    0x29be1  7      
  addq %r15, %r11                 #  12    0x29be8  3      
  jmpq %r11                       #  13    0x29beb  3      
  nop                             #  14    0x29bee  1      
  nop                             #  15    0x29bef  1      
.L_29c00:                         #        0x29bf0  0      
  movl %edi, %edi                 #  16    0x29bf0  2      
  movsd 0x10(%r15,%rdi,1), %xmm0  #  17    0x29bf2  7      
  cvttsd2si %xmm0, %eax           #  18    0x29bf9  4      
  popq %r11                       #  19    0x29bfd  3      
  andl $0xffffffe0, %r11d         #  20    0x29c00  7      
  addq %r15, %r11                 #  21    0x29c07  3      
  jmpq %r11                       #  22    0x29c0a  3      
  nop                             #  23    0x29c0d  1      
.L_29c20:                         #        0x29c0e  0      
  movl %edi, %edi                 #  24    0x29c0e  2      
  movl 0x10(%r15,%rdi,1), %eax    #  25    0x29c10  5      
  popq %r11                       #  26    0x29c15  3      
  andl $0xffffffe0, %r11d         #  27    0x29c18  7      
  addq %r15, %r11                 #  28    0x29c1f  3      
  jmpq %r11                       #  29    0x29c22  3      
  nop                             #  30    0x29c25  1      
  nop                             #  31    0x29c26  1      
                                                           
.size _ZNK2pp3Var5AsIntEv, .-_ZNK2pp3Var5AsIntEv

