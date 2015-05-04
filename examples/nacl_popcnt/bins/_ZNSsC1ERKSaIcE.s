  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0x47d00
#! rip-offset  0x47d00
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1ERKSaIcE:                       #        0x47d00  0      
  pushq %rbx                            #  1     0x47d00  2      
  movl %esi, %edx                       #  2     0x47d02  2      
  movl %edi, %ebx                       #  3     0x47d04  2      
  xorl %esi, %esi                       #  4     0x47d06  2      
  xorl %edi, %edi                       #  5     0x47d08  2      
  nop                                   #  6     0x47d0a  1      
  nop                                   #  7     0x47d0b  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47d0c  5      
  movl %ebx, %ebx                       #  9     0x47d11  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47d13  4      
  popq %rbx                             #  11    0x47d17  2      
  popq %r11                             #  12    0x47d19  3      
  andl $0xffffffe0, %r11d               #  13    0x47d1c  7      
  addq %r15, %r11                       #  14    0x47d23  3      
  jmpq %r11                             #  15    0x47d26  3      
  nop                                   #  16    0x47d29  1      
  nop                                   #  17    0x47d2a  1      
  nop                                   #  18    0x47d2b  1      
  nop                                   #  19    0x47d2c  1      
  nop                                   #  20    0x47d2d  1      
  nop                                   #  21    0x47d2e  1      
  nop                                   #  22    0x47d2f  1      
  nop                                   #  23    0x47d30  1      
  nop                                   #  24    0x47d31  1      
  nop                                   #  25    0x47d32  1      
  nop                                   #  26    0x47d33  1      
  nop                                   #  27    0x47d34  1      
  nop                                   #  28    0x47d35  1      
                                                                 
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

