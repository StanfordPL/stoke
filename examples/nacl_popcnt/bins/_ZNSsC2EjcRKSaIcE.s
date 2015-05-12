  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0x47c40
#! rip-offset  0x47c40
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2EjcRKSaIcE:                     #        0x47c40  0      
  pushq %rbx                            #  1     0x47c40  2      
  movl %ecx, %ecx                       #  2     0x47c42  2      
  movl %edi, %ebx                       #  3     0x47c44  2      
  movl %ebx, %ebx                       #  4     0x47c46  2      
  movl %esi, %edi                       #  5     0x47c48  2      
  movsbl %dl, %esi                      #  6     0x47c4a  3      
  movl %ecx, %edx                       #  7     0x47c4d  2      
  nop                                   #  8     0x47c4f  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  9     0x47c50  5      
  movl %ebx, %ebx                       #  10    0x47c55  2      
  movl %eax, (%r15,%rbx,1)              #  11    0x47c57  4      
  popq %rbx                             #  12    0x47c5b  2      
  popq %r11                             #  13    0x47c5d  3      
  andl $0xffffffe0, %r11d               #  14    0x47c60  7      
  addq %r15, %r11                       #  15    0x47c67  3      
  jmpq %r11                             #  16    0x47c6a  3      
  nop                                   #  17    0x47c6d  1      
  nop                                   #  18    0x47c6e  1      
  nop                                   #  19    0x47c6f  1      
  nop                                   #  20    0x47c70  1      
  nop                                   #  21    0x47c71  1      
  nop                                   #  22    0x47c72  1      
  nop                                   #  23    0x47c73  1      
  nop                                   #  24    0x47c74  1      
  nop                                   #  25    0x47c75  1      
  nop                                   #  26    0x47c76  1      
  nop                                   #  27    0x47c77  1      
  nop                                   #  28    0x47c78  1      
  nop                                   #  29    0x47c79  1      
                                                                 
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

