  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x4e6c0
#! rip-offset  0x4e6c0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt14overflow_errorC1ERKSs:        #        0x4e6c0  0      
  pushq %rbx                          #  1     0x4e6c0  2      
  movl %edi, %ebx                     #  2     0x4e6c2  2      
  movl %esi, %esi                     #  3     0x4e6c4  2      
  movl %ebx, %edi                     #  4     0x4e6c6  2      
  nop                                 #  5     0x4e6c8  1      
  nop                                 #  6     0x4e6c9  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e6ca  5      
  movl %ebx, %ebx                     #  8     0x4e6cf  2      
  movl $0x10020ff8, (%r15,%rbx,1)     #  9     0x4e6d1  8      
  popq %rbx                           #  10    0x4e6d9  2      
  popq %r11                           #  11    0x4e6db  3      
  andl $0xffffffe0, %r11d             #  12    0x4e6de  7      
  addq %r15, %r11                     #  13    0x4e6e5  3      
  jmpq %r11                           #  14    0x4e6e8  3      
  nop                                 #  15    0x4e6eb  1      
  nop                                 #  16    0x4e6ec  1      
  nop                                 #  17    0x4e6ed  1      
  nop                                 #  18    0x4e6ee  1      
  nop                                 #  19    0x4e6ef  1      
  nop                                 #  20    0x4e6f0  1      
  nop                                 #  21    0x4e6f1  1      
  nop                                 #  22    0x4e6f2  1      
  nop                                 #  23    0x4e6f3  1      
                                                               
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

