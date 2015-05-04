  .text
  .globl _ZNSt16invalid_argumentC2ERKSs
  .type _ZNSt16invalid_argumentC2ERKSs, @function

#! file-offset 0x4ea00
#! rip-offset  0x4ea00
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt16invalid_argumentC2ERKSs:    #        0x4ea00  0      
  pushq %rbx                        #  1     0x4ea00  2      
  movl %edi, %ebx                   #  2     0x4ea02  2      
  movl %esi, %esi                   #  3     0x4ea04  2      
  movl %ebx, %edi                   #  4     0x4ea06  2      
  nop                               #  5     0x4ea08  1      
  nop                               #  6     0x4ea09  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4ea0a  5      
  movl %ebx, %ebx                   #  8     0x4ea0f  2      
  movl $0x100210e8, (%r15,%rbx,1)   #  9     0x4ea11  8      
  popq %rbx                         #  10    0x4ea19  2      
  popq %r11                         #  11    0x4ea1b  3      
  andl $0xffffffe0, %r11d           #  12    0x4ea1e  7      
  addq %r15, %r11                   #  13    0x4ea25  3      
  jmpq %r11                         #  14    0x4ea28  3      
  nop                               #  15    0x4ea2b  1      
  nop                               #  16    0x4ea2c  1      
  nop                               #  17    0x4ea2d  1      
  nop                               #  18    0x4ea2e  1      
  nop                               #  19    0x4ea2f  1      
  nop                               #  20    0x4ea30  1      
  nop                               #  21    0x4ea31  1      
  nop                               #  22    0x4ea32  1      
  nop                               #  23    0x4ea33  1      
                                                             
.size _ZNSt16invalid_argumentC2ERKSs, .-_ZNSt16invalid_argumentC2ERKSs

