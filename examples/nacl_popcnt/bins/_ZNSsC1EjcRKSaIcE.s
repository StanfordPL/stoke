  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0x47be0
#! rip-offset  0x47be0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1EjcRKSaIcE:                     #        0x47be0  0      
  pushq %rbx                            #  1     0x47be0  2      
  movl %ecx, %ecx                       #  2     0x47be2  2      
  movl %edi, %ebx                       #  3     0x47be4  2      
  movl %ebx, %ebx                       #  4     0x47be6  2      
  movl %esi, %edi                       #  5     0x47be8  2      
  movsbl %dl, %esi                      #  6     0x47bea  3      
  movl %ecx, %edx                       #  7     0x47bed  2      
  nop                                   #  8     0x47bef  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47bf0  5      
  movl %ebx, %ebx                       #  10    0x47bf5  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47bf7  4      
  popq %rbx                             #  12    0x47bfb  2      
  popq %r11                             #  13    0x47bfd  3      
  andl $0xffffffe0, %r11d               #  14    0x47c00  7      
  addq %r15, %r11                       #  15    0x47c07  3      
  jmpq %r11                             #  16    0x47c0a  3      
  nop                                   #  17    0x47c0d  1      
  nop                                   #  18    0x47c0e  1      
  nop                                   #  19    0x47c0f  1      
  nop                                   #  20    0x47c10  1      
  nop                                   #  21    0x47c11  1      
  nop                                   #  22    0x47c12  1      
  nop                                   #  23    0x47c13  1      
  nop                                   #  24    0x47c14  1      
  nop                                   #  25    0x47c15  1      
  nop                                   #  26    0x47c16  1      
  nop                                   #  27    0x47c17  1      
  nop                                   #  28    0x47c18  1      
  nop                                   #  29    0x47c19  1      
                                                                 
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

