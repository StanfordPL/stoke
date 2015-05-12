  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0x47cc0
#! rip-offset  0x47cc0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2ERKSaIcE:                       #        0x47cc0  0      
  pushq %rbx                            #  1     0x47cc0  2      
  movl %esi, %edx                       #  2     0x47cc2  2      
  movl %edi, %ebx                       #  3     0x47cc4  2      
  xorl %esi, %esi                       #  4     0x47cc6  2      
  xorl %edi, %edi                       #  5     0x47cc8  2      
  nop                                   #  6     0x47cca  1      
  nop                                   #  7     0x47ccb  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47ccc  5      
  movl %ebx, %ebx                       #  9     0x47cd1  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47cd3  4      
  popq %rbx                             #  11    0x47cd7  2      
  popq %r11                             #  12    0x47cd9  3      
  andl $0xffffffe0, %r11d               #  13    0x47cdc  7      
  addq %r15, %r11                       #  14    0x47ce3  3      
  jmpq %r11                             #  15    0x47ce6  3      
  nop                                   #  16    0x47ce9  1      
  nop                                   #  17    0x47cea  1      
  nop                                   #  18    0x47ceb  1      
  nop                                   #  19    0x47cec  1      
  nop                                   #  20    0x47ced  1      
  nop                                   #  21    0x47cee  1      
  nop                                   #  22    0x47cef  1      
  nop                                   #  23    0x47cf0  1      
  nop                                   #  24    0x47cf1  1      
  nop                                   #  25    0x47cf2  1      
  nop                                   #  26    0x47cf3  1      
  nop                                   #  27    0x47cf4  1      
  nop                                   #  28    0x47cf5  1      
                                                                 
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

