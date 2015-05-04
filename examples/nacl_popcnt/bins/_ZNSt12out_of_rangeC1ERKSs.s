  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x4e8c0
#! rip-offset  0x4e8c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12out_of_rangeC1ERKSs:        #        0x4e8c0  0      
  pushq %rbx                        #  1     0x4e8c0  2      
  movl %edi, %ebx                   #  2     0x4e8c2  2      
  movl %esi, %esi                   #  3     0x4e8c4  2      
  movl %ebx, %edi                   #  4     0x4e8c6  2      
  nop                               #  5     0x4e8c8  1      
  nop                               #  6     0x4e8c9  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e8ca  5      
  movl %ebx, %ebx                   #  8     0x4e8cf  2      
  movl $0x10021068, (%r15,%rbx,1)   #  9     0x4e8d1  8      
  popq %rbx                         #  10    0x4e8d9  2      
  popq %r11                         #  11    0x4e8db  3      
  andl $0xffffffe0, %r11d           #  12    0x4e8de  7      
  addq %r15, %r11                   #  13    0x4e8e5  3      
  jmpq %r11                         #  14    0x4e8e8  3      
  nop                               #  15    0x4e8eb  1      
  nop                               #  16    0x4e8ec  1      
  nop                               #  17    0x4e8ed  1      
  nop                               #  18    0x4e8ee  1      
  nop                               #  19    0x4e8ef  1      
  nop                               #  20    0x4e8f0  1      
  nop                               #  21    0x4e8f1  1      
  nop                               #  22    0x4e8f2  1      
  nop                               #  23    0x4e8f3  1      
                                                             
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

