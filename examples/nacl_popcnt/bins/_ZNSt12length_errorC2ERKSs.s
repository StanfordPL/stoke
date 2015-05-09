  .text
  .globl _ZNSt12length_errorC2ERKSs
  .type _ZNSt12length_errorC2ERKSs, @function

#! file-offset 0x4e8e0
#! rip-offset  0x4e8e0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12length_errorC2ERKSs:        #        0x4e8e0  0      
  pushq %rbx                        #  1     0x4e8e0  2      
  movl %edi, %ebx                   #  2     0x4e8e2  2      
  movl %esi, %esi                   #  3     0x4e8e4  2      
  movl %ebx, %edi                   #  4     0x4e8e6  2      
  nop                               #  5     0x4e8e8  1      
  nop                               #  6     0x4e8e9  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e8ea  5      
  movl %ebx, %ebx                   #  8     0x4e8ef  2      
  movl $0x100210a8, (%r15,%rbx,1)   #  9     0x4e8f1  8      
  popq %rbx                         #  10    0x4e8f9  2      
  popq %r11                         #  11    0x4e8fb  3      
  andl $0xffffffe0, %r11d           #  12    0x4e8fe  7      
  addq %r15, %r11                   #  13    0x4e905  3      
  jmpq %r11                         #  14    0x4e908  3      
  nop                               #  15    0x4e90b  1      
  nop                               #  16    0x4e90c  1      
  nop                               #  17    0x4e90d  1      
  nop                               #  18    0x4e90e  1      
  nop                               #  19    0x4e90f  1      
  nop                               #  20    0x4e910  1      
  nop                               #  21    0x4e911  1      
  nop                               #  22    0x4e912  1      
  nop                               #  23    0x4e913  1      
                                                             
.size _ZNSt12length_errorC2ERKSs, .-_ZNSt12length_errorC2ERKSs

