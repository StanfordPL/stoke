  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0x47c60
#! rip-offset  0x47c60
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1ERKSaIcE:                       #        0x47c60  0      
  pushq %rbx                            #  1     0x47c60  2      
  movl %esi, %edx                       #  2     0x47c62  2      
  movl %edi, %ebx                       #  3     0x47c64  2      
  xorl %esi, %esi                       #  4     0x47c66  2      
  xorl %edi, %edi                       #  5     0x47c68  2      
  nop                                   #  6     0x47c6a  1      
  nop                                   #  7     0x47c6b  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47c6c  5      
  movl %ebx, %ebx                       #  9     0x47c71  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47c73  4      
  popq %rbx                             #  11    0x47c77  2      
  popq %r11                             #  12    0x47c79  3      
  andl $0xffffffe0, %r11d               #  13    0x47c7c  7      
  addq %r15, %r11                       #  14    0x47c83  3      
  jmpq %r11                             #  15    0x47c86  3      
  nop                                   #  16    0x47c89  1      
  nop                                   #  17    0x47c8a  1      
  nop                                   #  18    0x47c8b  1      
  nop                                   #  19    0x47c8c  1      
  nop                                   #  20    0x47c8d  1      
  nop                                   #  21    0x47c8e  1      
  nop                                   #  22    0x47c8f  1      
  nop                                   #  23    0x47c90  1      
  nop                                   #  24    0x47c91  1      
  nop                                   #  25    0x47c92  1      
  nop                                   #  26    0x47c93  1      
  nop                                   #  27    0x47c94  1      
  nop                                   #  28    0x47c95  1      
                                                                 
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

