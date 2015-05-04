  .text
  .globl _ZNSs12_Alloc_hiderC1EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC1EPcRKSaIcE, @function

#! file-offset 0x44940
#! rip-offset  0x44940
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSs12_Alloc_hiderC1EPcRKSaIcE:  #        0x44940  0      
  popq %r11                        #  1     0x44940  3      
  movl %edi, %edi                  #  2     0x44943  2      
  movl %edi, %edi                  #  3     0x44945  2      
  movl %esi, (%r15,%rdi,1)         #  4     0x44947  4      
  andl $0xffffffe0, %r11d          #  5     0x4494b  7      
  addq %r15, %r11                  #  6     0x44952  3      
  jmpq %r11                        #  7     0x44955  3      
  nop                              #  8     0x44958  1      
  nop                              #  9     0x44959  1      
  nop                              #  10    0x4495a  1      
  nop                              #  11    0x4495b  1      
  nop                              #  12    0x4495c  1      
  nop                              #  13    0x4495d  1      
  nop                              #  14    0x4495e  1      
  nop                              #  15    0x4495f  1      
  nop                              #  16    0x44960  1      
  nop                              #  17    0x44961  1      
  nop                              #  18    0x44962  1      
  nop                              #  19    0x44963  1      
                                                            
.size _ZNSs12_Alloc_hiderC1EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC1EPcRKSaIcE

