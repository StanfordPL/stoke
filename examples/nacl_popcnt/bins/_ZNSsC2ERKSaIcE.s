  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0x47d40
#! rip-offset  0x47d40
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2ERKSaIcE:                       #        0x47d40  0      
  pushq %rbx                            #  1     0x47d40  2      
  movl %esi, %edx                       #  2     0x47d42  2      
  movl %edi, %ebx                       #  3     0x47d44  2      
  xorl %esi, %esi                       #  4     0x47d46  2      
  xorl %edi, %edi                       #  5     0x47d48  2      
  nop                                   #  6     0x47d4a  1      
  nop                                   #  7     0x47d4b  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47d4c  5      
  movl %ebx, %ebx                       #  9     0x47d51  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47d53  4      
  popq %rbx                             #  11    0x47d57  2      
  popq %r11                             #  12    0x47d59  3      
  andl $0xffffffe0, %r11d               #  13    0x47d5c  7      
  addq %r15, %r11                       #  14    0x47d63  3      
  jmpq %r11                             #  15    0x47d66  3      
  nop                                   #  16    0x47d69  1      
  nop                                   #  17    0x47d6a  1      
  nop                                   #  18    0x47d6b  1      
  nop                                   #  19    0x47d6c  1      
  nop                                   #  20    0x47d6d  1      
  nop                                   #  21    0x47d6e  1      
  nop                                   #  22    0x47d6f  1      
  nop                                   #  23    0x47d70  1      
  nop                                   #  24    0x47d71  1      
  nop                                   #  25    0x47d72  1      
  nop                                   #  26    0x47d73  1      
  nop                                   #  27    0x47d74  1      
  nop                                   #  28    0x47d75  1      
                                                                 
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

