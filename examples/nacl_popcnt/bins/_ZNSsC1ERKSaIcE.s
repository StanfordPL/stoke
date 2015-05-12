  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0x47c80
#! rip-offset  0x47c80
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1ERKSaIcE:                       #        0x47c80  0      
  pushq %rbx                            #  1     0x47c80  2      
  movl %esi, %edx                       #  2     0x47c82  2      
  movl %edi, %ebx                       #  3     0x47c84  2      
  xorl %esi, %esi                       #  4     0x47c86  2      
  xorl %edi, %edi                       #  5     0x47c88  2      
  nop                                   #  6     0x47c8a  1      
  nop                                   #  7     0x47c8b  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47c8c  5      
  movl %ebx, %ebx                       #  9     0x47c91  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47c93  4      
  popq %rbx                             #  11    0x47c97  2      
  popq %r11                             #  12    0x47c99  3      
  andl $0xffffffe0, %r11d               #  13    0x47c9c  7      
  addq %r15, %r11                       #  14    0x47ca3  3      
  jmpq %r11                             #  15    0x47ca6  3      
  nop                                   #  16    0x47ca9  1      
  nop                                   #  17    0x47caa  1      
  nop                                   #  18    0x47cab  1      
  nop                                   #  19    0x47cac  1      
  nop                                   #  20    0x47cad  1      
  nop                                   #  21    0x47cae  1      
  nop                                   #  22    0x47caf  1      
  nop                                   #  23    0x47cb0  1      
  nop                                   #  24    0x47cb1  1      
  nop                                   #  25    0x47cb2  1      
  nop                                   #  26    0x47cb3  1      
  nop                                   #  27    0x47cb4  1      
  nop                                   #  28    0x47cb5  1      
                                                                 
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

