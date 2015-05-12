  .text
  .globl _ZNSt15underflow_errorC2ERKSs
  .type _ZNSt15underflow_errorC2ERKSs, @function

#! file-offset 0x4e600
#! rip-offset  0x4e600
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt15underflow_errorC2ERKSs:       #        0x4e600  0      
  pushq %rbx                          #  1     0x4e600  2      
  movl %edi, %ebx                     #  2     0x4e602  2      
  movl %esi, %esi                     #  3     0x4e604  2      
  movl %ebx, %edi                     #  4     0x4e606  2      
  nop                                 #  5     0x4e608  1      
  nop                                 #  6     0x4e609  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e60a  5      
  movl %ebx, %ebx                     #  8     0x4e60f  2      
  movl $0x10020fb8, (%r15,%rbx,1)     #  9     0x4e611  8      
  popq %rbx                           #  10    0x4e619  2      
  popq %r11                           #  11    0x4e61b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e61e  7      
  addq %r15, %r11                     #  13    0x4e625  3      
  jmpq %r11                           #  14    0x4e628  3      
  nop                                 #  15    0x4e62b  1      
  nop                                 #  16    0x4e62c  1      
  nop                                 #  17    0x4e62d  1      
  nop                                 #  18    0x4e62e  1      
  nop                                 #  19    0x4e62f  1      
  nop                                 #  20    0x4e630  1      
  nop                                 #  21    0x4e631  1      
  nop                                 #  22    0x4e632  1      
  nop                                 #  23    0x4e633  1      
                                                               
.size _ZNSt15underflow_errorC2ERKSs, .-_ZNSt15underflow_errorC2ERKSs

