  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0x44b20
#! rip-offset  0x44b20
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0x44b20  0      
  movl %edi, %edi                       #  1     0x44b20  2      
  movl %esi, %esi                       #  2     0x44b22  2      
  cmpl $0x10031da0, %edi                #  3     0x44b24  6      
  jne .L_44b60                          #  4     0x44b2a  6      
  nop                                   #  5     0x44b30  1      
  nop                                   #  6     0x44b31  1      
.L_44b40:                               #        0x44b32  0      
  popq %r11                             #  7     0x44b32  3      
  andl $0xffffffe0, %r11d               #  8     0x44b35  7      
  addq %r15, %r11                       #  9     0x44b3c  3      
  jmpq %r11                             #  10    0x44b3f  3      
  nop                                   #  11    0x44b42  1      
  nop                                   #  12    0x44b43  1      
.L_44b60:                               #        0x44b44  0      
  movl %edi, %edi                       #  13    0x44b44  2      
  movl 0x8(%r15,%rdi,1), %eax           #  14    0x44b46  5      
  leal -0x1(%rax), %edx                 #  15    0x44b4b  3      
  testl %eax, %eax                      #  16    0x44b4e  2      
  movl %edi, %edi                       #  17    0x44b50  2      
  movl %edx, 0x8(%r15,%rdi,1)           #  18    0x44b52  5      
  jg .L_44b40                           #  19    0x44b57  6      
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  20    0x44b5d  5      
  nop                                   #  21    0x44b62  1      
  nop                                   #  22    0x44b63  1      
  nop                                   #  23    0x44b64  1      
  nop                                   #  24    0x44b65  1      
  nop                                   #  25    0x44b66  1      
  nop                                   #  26    0x44b67  1      
                                                                 
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

