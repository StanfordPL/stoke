  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0x47c00
#! rip-offset  0x47c00
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC1EjcRKSaIcE:                     #        0x47c00  0      
  pushq %rbx                            #  1     0x47c00  2      
  movl %ecx, %ecx                       #  2     0x47c02  2      
  movl %edi, %ebx                       #  3     0x47c04  2      
  movl %ebx, %ebx                       #  4     0x47c06  2      
  movl %esi, %edi                       #  5     0x47c08  2      
  movsbl %dl, %esi                      #  6     0x47c0a  3      
  movl %ecx, %edx                       #  7     0x47c0d  2      
  nop                                   #  8     0x47c0f  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47c10  5      
  movl %ebx, %ebx                       #  10    0x47c15  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47c17  4      
  popq %rbx                             #  12    0x47c1b  2      
  popq %r11                             #  13    0x47c1d  3      
  andl $0xffffffe0, %r11d               #  14    0x47c20  7      
  addq %r15, %r11                       #  15    0x47c27  3      
  jmpq %r11                             #  16    0x47c2a  3      
  nop                                   #  17    0x47c2d  1      
  nop                                   #  18    0x47c2e  1      
  nop                                   #  19    0x47c2f  1      
  nop                                   #  20    0x47c30  1      
  nop                                   #  21    0x47c31  1      
  nop                                   #  22    0x47c32  1      
  nop                                   #  23    0x47c33  1      
  nop                                   #  24    0x47c34  1      
  nop                                   #  25    0x47c35  1      
  nop                                   #  26    0x47c36  1      
  nop                                   #  27    0x47c37  1      
  nop                                   #  28    0x47c38  1      
  nop                                   #  29    0x47c39  1      
                                                                 
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

