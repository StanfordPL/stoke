  .text
  .globl _ZNSt12domain_errorC1ERKSs
  .type _ZNSt12domain_errorC1ERKSs, @function

#! file-offset 0x4e9c0
#! rip-offset  0x4e9c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12domain_errorC1ERKSs:        #        0x4e9c0  0      
  pushq %rbx                        #  1     0x4e9c0  2      
  movl %edi, %ebx                   #  2     0x4e9c2  2      
  movl %esi, %esi                   #  3     0x4e9c4  2      
  movl %ebx, %edi                   #  4     0x4e9c6  2      
  nop                               #  5     0x4e9c8  1      
  nop                               #  6     0x4e9c9  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e9ca  5      
  movl %ebx, %ebx                   #  8     0x4e9cf  2      
  movl $0x10021128, (%r15,%rbx,1)   #  9     0x4e9d1  8      
  popq %rbx                         #  10    0x4e9d9  2      
  popq %r11                         #  11    0x4e9db  3      
  andl $0xffffffe0, %r11d           #  12    0x4e9de  7      
  addq %r15, %r11                   #  13    0x4e9e5  3      
  jmpq %r11                         #  14    0x4e9e8  3      
  nop                               #  15    0x4e9eb  1      
  nop                               #  16    0x4e9ec  1      
  nop                               #  17    0x4e9ed  1      
  nop                               #  18    0x4e9ee  1      
  nop                               #  19    0x4e9ef  1      
  nop                               #  20    0x4e9f0  1      
  nop                               #  21    0x4e9f1  1      
  nop                               #  22    0x4e9f2  1      
  nop                               #  23    0x4e9f3  1      
                                                             
.size _ZNSt12domain_errorC1ERKSs, .-_ZNSt12domain_errorC1ERKSs

