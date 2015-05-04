  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0x47c80
#! rip-offset  0x47c80
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1EjcRKSaIcE:                     #        0x47c80  0      
  pushq %rbx                            #  1     0x47c80  2      
  movl %ecx, %ecx                       #  2     0x47c82  2      
  movl %edi, %ebx                       #  3     0x47c84  2      
  movl %ebx, %ebx                       #  4     0x47c86  2      
  movl %esi, %edi                       #  5     0x47c88  2      
  movsbl %dl, %esi                      #  6     0x47c8a  3      
  movl %ecx, %edx                       #  7     0x47c8d  2      
  nop                                   #  8     0x47c8f  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47c90  5      
  movl %ebx, %ebx                       #  10    0x47c95  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47c97  4      
  popq %rbx                             #  12    0x47c9b  2      
  popq %r11                             #  13    0x47c9d  3      
  andl $0xffffffe0, %r11d               #  14    0x47ca0  7      
  addq %r15, %r11                       #  15    0x47ca7  3      
  jmpq %r11                             #  16    0x47caa  3      
  nop                                   #  17    0x47cad  1      
  nop                                   #  18    0x47cae  1      
  nop                                   #  19    0x47caf  1      
  nop                                   #  20    0x47cb0  1      
  nop                                   #  21    0x47cb1  1      
  nop                                   #  22    0x47cb2  1      
  nop                                   #  23    0x47cb3  1      
  nop                                   #  24    0x47cb4  1      
  nop                                   #  25    0x47cb5  1      
  nop                                   #  26    0x47cb6  1      
  nop                                   #  27    0x47cb7  1      
  nop                                   #  28    0x47cb8  1      
  nop                                   #  29    0x47cb9  1      
                                                                 
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

