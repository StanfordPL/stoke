  .text
  .globl _ZNSs12_Alloc_hiderC1EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC1EPcRKSaIcE, @function

#! file-offset 0x448c0
#! rip-offset  0x448c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSs12_Alloc_hiderC1EPcRKSaIcE:  #        0x448c0  0      
  popq %r11                        #  1     0x448c0  3      
  movl %edi, %edi                  #  2     0x448c3  2      
  movl %edi, %edi                  #  3     0x448c5  2      
  movl %esi, (%r15,%rdi,1)         #  4     0x448c7  4      
  andl $0xffffffe0, %r11d          #  5     0x448cb  7      
  addq %r15, %r11                  #  6     0x448d2  3      
  jmpq %r11                        #  7     0x448d5  3      
  nop                              #  8     0x448d8  1      
  nop                              #  9     0x448d9  1      
  nop                              #  10    0x448da  1      
  nop                              #  11    0x448db  1      
  nop                              #  12    0x448dc  1      
  nop                              #  13    0x448dd  1      
  nop                              #  14    0x448de  1      
  nop                              #  15    0x448df  1      
  nop                              #  16    0x448e0  1      
  nop                              #  17    0x448e1  1      
  nop                              #  18    0x448e2  1      
  nop                              #  19    0x448e3  1      
                                                            
.size _ZNSs12_Alloc_hiderC1EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC1EPcRKSaIcE

