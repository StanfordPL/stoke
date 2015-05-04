  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0x44920
#! rip-offset  0x44920
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0x44920  0      
  popq %r11                        #  1     0x44920  3      
  movl %edi, %edi                  #  2     0x44923  2      
  movl %edi, %edi                  #  3     0x44925  2      
  movl %esi, (%r15,%rdi,1)         #  4     0x44927  4      
  andl $0xffffffe0, %r11d          #  5     0x4492b  7      
  addq %r15, %r11                  #  6     0x44932  3      
  jmpq %r11                        #  7     0x44935  3      
  nop                              #  8     0x44938  1      
  nop                              #  9     0x44939  1      
  nop                              #  10    0x4493a  1      
  nop                              #  11    0x4493b  1      
  nop                              #  12    0x4493c  1      
  nop                              #  13    0x4493d  1      
  nop                              #  14    0x4493e  1      
  nop                              #  15    0x4493f  1      
  nop                              #  16    0x44940  1      
  nop                              #  17    0x44941  1      
  nop                              #  18    0x44942  1      
  nop                              #  19    0x44943  1      
                                                            
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

