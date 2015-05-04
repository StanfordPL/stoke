  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0x47cc0
#! rip-offset  0x47cc0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2EjcRKSaIcE:                     #        0x47cc0  0      
  pushq %rbx                            #  1     0x47cc0  2      
  movl %ecx, %ecx                       #  2     0x47cc2  2      
  movl %edi, %ebx                       #  3     0x47cc4  2      
  movl %ebx, %ebx                       #  4     0x47cc6  2      
  movl %esi, %edi                       #  5     0x47cc8  2      
  movsbl %dl, %esi                      #  6     0x47cca  3      
  movl %ecx, %edx                       #  7     0x47ccd  2      
  nop                                   #  8     0x47ccf  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47cd0  5      
  movl %ebx, %ebx                       #  10    0x47cd5  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47cd7  4      
  popq %rbx                             #  12    0x47cdb  2      
  popq %r11                             #  13    0x47cdd  3      
  andl $0xffffffe0, %r11d               #  14    0x47ce0  7      
  addq %r15, %r11                       #  15    0x47ce7  3      
  jmpq %r11                             #  16    0x47cea  3      
  nop                                   #  17    0x47ced  1      
  nop                                   #  18    0x47cee  1      
  nop                                   #  19    0x47cef  1      
  nop                                   #  20    0x47cf0  1      
  nop                                   #  21    0x47cf1  1      
  nop                                   #  22    0x47cf2  1      
  nop                                   #  23    0x47cf3  1      
  nop                                   #  24    0x47cf4  1      
  nop                                   #  25    0x47cf5  1      
  nop                                   #  26    0x47cf6  1      
  nop                                   #  27    0x47cf7  1      
  nop                                   #  28    0x47cf8  1      
  nop                                   #  29    0x47cf9  1      
                                                                 
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

