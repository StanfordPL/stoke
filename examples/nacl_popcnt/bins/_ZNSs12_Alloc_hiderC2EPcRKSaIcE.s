  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0x448a0
#! rip-offset  0x448a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0x448a0  0      
  popq %r11                        #  1     0x448a0  3      
  movl %edi, %edi                  #  2     0x448a3  2      
  movl %edi, %edi                  #  3     0x448a5  2      
  movl %esi, (%r15,%rdi,1)         #  4     0x448a7  4      
  andl $0xffffffe0, %r11d          #  5     0x448ab  7      
  addq %r15, %r11                  #  6     0x448b2  3      
  jmpq %r11                        #  7     0x448b5  3      
  nop                              #  8     0x448b8  1      
  nop                              #  9     0x448b9  1      
  nop                              #  10    0x448ba  1      
  nop                              #  11    0x448bb  1      
  nop                              #  12    0x448bc  1      
  nop                              #  13    0x448bd  1      
  nop                              #  14    0x448be  1      
  nop                              #  15    0x448bf  1      
  nop                              #  16    0x448c0  1      
  nop                              #  17    0x448c1  1      
  nop                              #  18    0x448c2  1      
  nop                              #  19    0x448c3  1      
                                                            
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

