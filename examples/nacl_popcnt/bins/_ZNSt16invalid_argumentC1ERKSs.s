  .text
  .globl _ZNSt16invalid_argumentC1ERKSs
  .type _ZNSt16invalid_argumentC1ERKSs, @function

#! file-offset 0x4e940
#! rip-offset  0x4e940
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt16invalid_argumentC1ERKSs:    #        0x4e940  0      
  pushq %rbx                        #  1     0x4e940  2      
  movl %edi, %ebx                   #  2     0x4e942  2      
  movl %esi, %esi                   #  3     0x4e944  2      
  movl %ebx, %edi                   #  4     0x4e946  2      
  nop                               #  5     0x4e948  1      
  nop                               #  6     0x4e949  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e94a  5      
  movl %ebx, %ebx                   #  8     0x4e94f  2      
  movl $0x100210e8, (%r15,%rbx,1)   #  9     0x4e951  8      
  popq %rbx                         #  10    0x4e959  2      
  popq %r11                         #  11    0x4e95b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e95e  7      
  addq %r15, %r11                   #  13    0x4e965  3      
  jmpq %r11                         #  14    0x4e968  3      
  nop                               #  15    0x4e96b  1      
  nop                               #  16    0x4e96c  1      
  nop                               #  17    0x4e96d  1      
  nop                               #  18    0x4e96e  1      
  nop                               #  19    0x4e96f  1      
  nop                               #  20    0x4e970  1      
  nop                               #  21    0x4e971  1      
  nop                               #  22    0x4e972  1      
  nop                               #  23    0x4e973  1      
                                                             
.size _ZNSt16invalid_argumentC1ERKSs, .-_ZNSt16invalid_argumentC1ERKSs

