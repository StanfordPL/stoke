  .text
  .globl _ZNSt16invalid_argumentC1ERKSs
  .type _ZNSt16invalid_argumentC1ERKSs, @function

#! file-offset 0x4e920
#! rip-offset  0x4e920
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt16invalid_argumentC1ERKSs:    #        0x4e920  0      
  pushq %rbx                        #  1     0x4e920  2      
  movl %edi, %ebx                   #  2     0x4e922  2      
  movl %esi, %esi                   #  3     0x4e924  2      
  movl %ebx, %edi                   #  4     0x4e926  2      
  nop                               #  5     0x4e928  1      
  nop                               #  6     0x4e929  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e92a  5      
  movl %ebx, %ebx                   #  8     0x4e92f  2      
  movl $0x100210e8, (%r15,%rbx,1)   #  9     0x4e931  8      
  popq %rbx                         #  10    0x4e939  2      
  popq %r11                         #  11    0x4e93b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e93e  7      
  addq %r15, %r11                   #  13    0x4e945  3      
  jmpq %r11                         #  14    0x4e948  3      
  nop                               #  15    0x4e94b  1      
  nop                               #  16    0x4e94c  1      
  nop                               #  17    0x4e94d  1      
  nop                               #  18    0x4e94e  1      
  nop                               #  19    0x4e94f  1      
  nop                               #  20    0x4e950  1      
  nop                               #  21    0x4e951  1      
  nop                               #  22    0x4e952  1      
  nop                               #  23    0x4e953  1      
                                                             
.size _ZNSt16invalid_argumentC1ERKSs, .-_ZNSt16invalid_argumentC1ERKSs

