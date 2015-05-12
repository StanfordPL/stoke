  .text
  .globl _ZNSt11range_errorC2ERKSs
  .type _ZNSt11range_errorC2ERKSs, @function

#! file-offset 0x4e700
#! rip-offset  0x4e700
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt11range_errorC2ERKSs:           #        0x4e700  0      
  pushq %rbx                          #  1     0x4e700  2      
  movl %edi, %ebx                     #  2     0x4e702  2      
  movl %esi, %esi                     #  3     0x4e704  2      
  movl %ebx, %edi                     #  4     0x4e706  2      
  nop                                 #  5     0x4e708  1      
  nop                                 #  6     0x4e709  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e70a  5      
  movl %ebx, %ebx                     #  8     0x4e70f  2      
  movl $0x10021028, (%r15,%rbx,1)     #  9     0x4e711  8      
  popq %rbx                           #  10    0x4e719  2      
  popq %r11                           #  11    0x4e71b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e71e  7      
  addq %r15, %r11                     #  13    0x4e725  3      
  jmpq %r11                           #  14    0x4e728  3      
  nop                                 #  15    0x4e72b  1      
  nop                                 #  16    0x4e72c  1      
  nop                                 #  17    0x4e72d  1      
  nop                                 #  18    0x4e72e  1      
  nop                                 #  19    0x4e72f  1      
  nop                                 #  20    0x4e730  1      
  nop                                 #  21    0x4e731  1      
  nop                                 #  22    0x4e732  1      
  nop                                 #  23    0x4e733  1      
                                                               
.size _ZNSt11range_errorC2ERKSs, .-_ZNSt11range_errorC2ERKSs

