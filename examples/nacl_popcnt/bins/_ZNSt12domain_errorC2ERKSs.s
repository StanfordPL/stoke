  .text
  .globl _ZNSt12domain_errorC2ERKSs
  .type _ZNSt12domain_errorC2ERKSs, @function

#! file-offset 0x4ea80
#! rip-offset  0x4ea80
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12domain_errorC2ERKSs:        #        0x4ea80  0      
  pushq %rbx                        #  1     0x4ea80  2      
  movl %edi, %ebx                   #  2     0x4ea82  2      
  movl %esi, %esi                   #  3     0x4ea84  2      
  movl %ebx, %edi                   #  4     0x4ea86  2      
  nop                               #  5     0x4ea88  1      
  nop                               #  6     0x4ea89  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4ea8a  5      
  movl %ebx, %ebx                   #  8     0x4ea8f  2      
  movl $0x10021128, (%r15,%rbx,1)   #  9     0x4ea91  8      
  popq %rbx                         #  10    0x4ea99  2      
  popq %r11                         #  11    0x4ea9b  3      
  andl $0xffffffe0, %r11d           #  12    0x4ea9e  7      
  addq %r15, %r11                   #  13    0x4eaa5  3      
  jmpq %r11                         #  14    0x4eaa8  3      
  nop                               #  15    0x4eaab  1      
  nop                               #  16    0x4eaac  1      
  nop                               #  17    0x4eaad  1      
  nop                               #  18    0x4eaae  1      
  nop                               #  19    0x4eaaf  1      
  nop                               #  20    0x4eab0  1      
  nop                               #  21    0x4eab1  1      
  nop                               #  22    0x4eab2  1      
  nop                               #  23    0x4eab3  1      
                                                             
.size _ZNSt12domain_errorC2ERKSs, .-_ZNSt12domain_errorC2ERKSs

