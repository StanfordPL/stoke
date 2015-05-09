  .text
  .globl _ZNSt12length_errorC1ERKSs
  .type _ZNSt12length_errorC1ERKSs, @function

#! file-offset 0x4e8a0
#! rip-offset  0x4e8a0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12length_errorC1ERKSs:        #        0x4e8a0  0      
  pushq %rbx                        #  1     0x4e8a0  2      
  movl %edi, %ebx                   #  2     0x4e8a2  2      
  movl %esi, %esi                   #  3     0x4e8a4  2      
  movl %ebx, %edi                   #  4     0x4e8a6  2      
  nop                               #  5     0x4e8a8  1      
  nop                               #  6     0x4e8a9  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e8aa  5      
  movl %ebx, %ebx                   #  8     0x4e8af  2      
  movl $0x100210a8, (%r15,%rbx,1)   #  9     0x4e8b1  8      
  popq %rbx                         #  10    0x4e8b9  2      
  popq %r11                         #  11    0x4e8bb  3      
  andl $0xffffffe0, %r11d           #  12    0x4e8be  7      
  addq %r15, %r11                   #  13    0x4e8c5  3      
  jmpq %r11                         #  14    0x4e8c8  3      
  nop                               #  15    0x4e8cb  1      
  nop                               #  16    0x4e8cc  1      
  nop                               #  17    0x4e8cd  1      
  nop                               #  18    0x4e8ce  1      
  nop                               #  19    0x4e8cf  1      
  nop                               #  20    0x4e8d0  1      
  nop                               #  21    0x4e8d1  1      
  nop                               #  22    0x4e8d2  1      
  nop                               #  23    0x4e8d3  1      
                                                             
.size _ZNSt12length_errorC1ERKSs, .-_ZNSt12length_errorC1ERKSs

