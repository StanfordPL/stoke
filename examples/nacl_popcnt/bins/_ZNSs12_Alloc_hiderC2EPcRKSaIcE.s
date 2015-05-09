  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0x44880
#! rip-offset  0x44880
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0x44880  0      
  popq %r11                        #  1     0x44880  3      
  movl %edi, %edi                  #  2     0x44883  2      
  movl %edi, %edi                  #  3     0x44885  2      
  movl %esi, (%r15,%rdi,1)         #  4     0x44887  4      
  andl $0xffffffe0, %r11d          #  5     0x4488b  7      
  addq %r15, %r11                  #  6     0x44892  3      
  jmpq %r11                        #  7     0x44895  3      
  nop                              #  8     0x44898  1      
  nop                              #  9     0x44899  1      
  nop                              #  10    0x4489a  1      
  nop                              #  11    0x4489b  1      
  nop                              #  12    0x4489c  1      
  nop                              #  13    0x4489d  1      
  nop                              #  14    0x4489e  1      
  nop                              #  15    0x4489f  1      
  nop                              #  16    0x448a0  1      
  nop                              #  17    0x448a1  1      
  nop                              #  18    0x448a2  1      
  nop                              #  19    0x448a3  1      
                                                            
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

