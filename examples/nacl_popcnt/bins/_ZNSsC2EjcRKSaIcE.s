  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0x47c20
#! rip-offset  0x47c20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2EjcRKSaIcE:                     #        0x47c20  0      
  pushq %rbx                            #  1     0x47c20  2      
  movl %ecx, %ecx                       #  2     0x47c22  2      
  movl %edi, %ebx                       #  3     0x47c24  2      
  movl %ebx, %ebx                       #  4     0x47c26  2      
  movl %esi, %edi                       #  5     0x47c28  2      
  movsbl %dl, %esi                      #  6     0x47c2a  3      
  movl %ecx, %edx                       #  7     0x47c2d  2      
  nop                                   #  8     0x47c2f  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47c30  5      
  movl %ebx, %ebx                       #  10    0x47c35  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47c37  4      
  popq %rbx                             #  12    0x47c3b  2      
  popq %r11                             #  13    0x47c3d  3      
  andl $0xffffffe0, %r11d               #  14    0x47c40  7      
  addq %r15, %r11                       #  15    0x47c47  3      
  jmpq %r11                             #  16    0x47c4a  3      
  nop                                   #  17    0x47c4d  1      
  nop                                   #  18    0x47c4e  1      
  nop                                   #  19    0x47c4f  1      
  nop                                   #  20    0x47c50  1      
  nop                                   #  21    0x47c51  1      
  nop                                   #  22    0x47c52  1      
  nop                                   #  23    0x47c53  1      
  nop                                   #  24    0x47c54  1      
  nop                                   #  25    0x47c55  1      
  nop                                   #  26    0x47c56  1      
  nop                                   #  27    0x47c57  1      
  nop                                   #  28    0x47c58  1      
  nop                                   #  29    0x47c59  1      
                                                                 
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

