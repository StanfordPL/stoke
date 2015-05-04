  .text
  .globl _ZNSt12domain_errorC1ERKSs
  .type _ZNSt12domain_errorC1ERKSs, @function

#! file-offset 0x4ea40
#! rip-offset  0x4ea40
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12domain_errorC1ERKSs:        #        0x4ea40  0      
  pushq %rbx                        #  1     0x4ea40  2      
  movl %edi, %ebx                   #  2     0x4ea42  2      
  movl %esi, %esi                   #  3     0x4ea44  2      
  movl %ebx, %edi                   #  4     0x4ea46  2      
  nop                               #  5     0x4ea48  1      
  nop                               #  6     0x4ea49  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4ea4a  5      
  movl %ebx, %ebx                   #  8     0x4ea4f  2      
  movl $0x10021128, (%r15,%rbx,1)   #  9     0x4ea51  8      
  popq %rbx                         #  10    0x4ea59  2      
  popq %r11                         #  11    0x4ea5b  3      
  andl $0xffffffe0, %r11d           #  12    0x4ea5e  7      
  addq %r15, %r11                   #  13    0x4ea65  3      
  jmpq %r11                         #  14    0x4ea68  3      
  nop                               #  15    0x4ea6b  1      
  nop                               #  16    0x4ea6c  1      
  nop                               #  17    0x4ea6d  1      
  nop                               #  18    0x4ea6e  1      
  nop                               #  19    0x4ea6f  1      
  nop                               #  20    0x4ea70  1      
  nop                               #  21    0x4ea71  1      
  nop                               #  22    0x4ea72  1      
  nop                               #  23    0x4ea73  1      
                                                             
.size _ZNSt12domain_errorC1ERKSs, .-_ZNSt12domain_errorC1ERKSs

