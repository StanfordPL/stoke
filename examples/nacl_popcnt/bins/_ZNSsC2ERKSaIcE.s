  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0x47ca0
#! rip-offset  0x47ca0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSsC2ERKSaIcE:                       #        0x47ca0  0      
  pushq %rbx                            #  1     0x47ca0  2      
  movl %esi, %edx                       #  2     0x47ca2  2      
  movl %edi, %ebx                       #  3     0x47ca4  2      
  xorl %esi, %esi                       #  4     0x47ca6  2      
  xorl %edi, %edi                       #  5     0x47ca8  2      
  nop                                   #  6     0x47caa  1      
  nop                                   #  7     0x47cab  1      
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  8     0x47cac  5      
  movl %ebx, %ebx                       #  9     0x47cb1  2      
  movl %eax, (%r15,%rbx,1)              #  10    0x47cb3  4      
  popq %rbx                             #  11    0x47cb7  2      
  popq %r11                             #  12    0x47cb9  3      
  andl $0xffffffe0, %r11d               #  13    0x47cbc  7      
  addq %r15, %r11                       #  14    0x47cc3  3      
  jmpq %r11                             #  15    0x47cc6  3      
  nop                                   #  16    0x47cc9  1      
  nop                                   #  17    0x47cca  1      
  nop                                   #  18    0x47ccb  1      
  nop                                   #  19    0x47ccc  1      
  nop                                   #  20    0x47ccd  1      
  nop                                   #  21    0x47cce  1      
  nop                                   #  22    0x47ccf  1      
  nop                                   #  23    0x47cd0  1      
  nop                                   #  24    0x47cd1  1      
  nop                                   #  25    0x47cd2  1      
  nop                                   #  26    0x47cd3  1      
  nop                                   #  27    0x47cd4  1      
  nop                                   #  28    0x47cd5  1      
                                                                 
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

