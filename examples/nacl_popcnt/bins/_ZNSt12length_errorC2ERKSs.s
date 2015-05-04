  .text
  .globl _ZNSt12length_errorC2ERKSs
  .type _ZNSt12length_errorC2ERKSs, @function

#! file-offset 0x4e980
#! rip-offset  0x4e980
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12length_errorC2ERKSs:        #        0x4e980  0      
  pushq %rbx                        #  1     0x4e980  2      
  movl %edi, %ebx                   #  2     0x4e982  2      
  movl %esi, %esi                   #  3     0x4e984  2      
  movl %ebx, %edi                   #  4     0x4e986  2      
  nop                               #  5     0x4e988  1      
  nop                               #  6     0x4e989  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e98a  5      
  movl %ebx, %ebx                   #  8     0x4e98f  2      
  movl $0x100210a8, (%r15,%rbx,1)   #  9     0x4e991  8      
  popq %rbx                         #  10    0x4e999  2      
  popq %r11                         #  11    0x4e99b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e99e  7      
  addq %r15, %r11                   #  13    0x4e9a5  3      
  jmpq %r11                         #  14    0x4e9a8  3      
  nop                               #  15    0x4e9ab  1      
  nop                               #  16    0x4e9ac  1      
  nop                               #  17    0x4e9ad  1      
  nop                               #  18    0x4e9ae  1      
  nop                               #  19    0x4e9af  1      
  nop                               #  20    0x4e9b0  1      
  nop                               #  21    0x4e9b1  1      
  nop                               #  22    0x4e9b2  1      
  nop                               #  23    0x4e9b3  1      
                                                             
.size _ZNSt12length_errorC2ERKSs, .-_ZNSt12length_errorC2ERKSs

