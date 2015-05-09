  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x4e620
#! rip-offset  0x4e620
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt14overflow_errorC1ERKSs:        #        0x4e620  0      
  pushq %rbx                          #  1     0x4e620  2      
  movl %edi, %ebx                     #  2     0x4e622  2      
  movl %esi, %esi                     #  3     0x4e624  2      
  movl %ebx, %edi                     #  4     0x4e626  2      
  nop                                 #  5     0x4e628  1      
  nop                                 #  6     0x4e629  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e62a  5      
  movl %ebx, %ebx                     #  8     0x4e62f  2      
  movl $0x10020ff8, (%r15,%rbx,1)     #  9     0x4e631  8      
  popq %rbx                           #  10    0x4e639  2      
  popq %r11                           #  11    0x4e63b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e63e  7      
  addq %r15, %r11                     #  13    0x4e645  3      
  jmpq %r11                           #  14    0x4e648  3      
  nop                                 #  15    0x4e64b  1      
  nop                                 #  16    0x4e64c  1      
  nop                                 #  17    0x4e64d  1      
  nop                                 #  18    0x4e64e  1      
  nop                                 #  19    0x4e64f  1      
  nop                                 #  20    0x4e650  1      
  nop                                 #  21    0x4e651  1      
  nop                                 #  22    0x4e652  1      
  nop                                 #  23    0x4e653  1      
                                                               
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

