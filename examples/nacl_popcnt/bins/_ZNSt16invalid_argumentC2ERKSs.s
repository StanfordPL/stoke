  .text
  .globl _ZNSt16invalid_argumentC2ERKSs
  .type _ZNSt16invalid_argumentC2ERKSs, @function

#! file-offset 0x4e960
#! rip-offset  0x4e960
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt16invalid_argumentC2ERKSs:    #        0x4e960  0      
  pushq %rbx                        #  1     0x4e960  2      
  movl %edi, %ebx                   #  2     0x4e962  2      
  movl %esi, %esi                   #  3     0x4e964  2      
  movl %ebx, %edi                   #  4     0x4e966  2      
  nop                               #  5     0x4e968  1      
  nop                               #  6     0x4e969  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e96a  5      
  movl %ebx, %ebx                   #  8     0x4e96f  2      
  movl $0x100210e8, (%r15,%rbx,1)   #  9     0x4e971  8      
  popq %rbx                         #  10    0x4e979  2      
  popq %r11                         #  11    0x4e97b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e97e  7      
  addq %r15, %r11                   #  13    0x4e985  3      
  jmpq %r11                         #  14    0x4e988  3      
  nop                               #  15    0x4e98b  1      
  nop                               #  16    0x4e98c  1      
  nop                               #  17    0x4e98d  1      
  nop                               #  18    0x4e98e  1      
  nop                               #  19    0x4e98f  1      
  nop                               #  20    0x4e990  1      
  nop                               #  21    0x4e991  1      
  nop                               #  22    0x4e992  1      
  nop                               #  23    0x4e993  1      
                                                             
.size _ZNSt16invalid_argumentC2ERKSs, .-_ZNSt16invalid_argumentC2ERKSs

