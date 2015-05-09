  .text
  .globl _ZNSt12domain_errorC2ERKSs
  .type _ZNSt12domain_errorC2ERKSs, @function

#! file-offset 0x4e9e0
#! rip-offset  0x4e9e0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12domain_errorC2ERKSs:        #        0x4e9e0  0      
  pushq %rbx                        #  1     0x4e9e0  2      
  movl %edi, %ebx                   #  2     0x4e9e2  2      
  movl %esi, %esi                   #  3     0x4e9e4  2      
  movl %ebx, %edi                   #  4     0x4e9e6  2      
  nop                               #  5     0x4e9e8  1      
  nop                               #  6     0x4e9e9  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e9ea  5      
  movl %ebx, %ebx                   #  8     0x4e9ef  2      
  movl $0x10021128, (%r15,%rbx,1)   #  9     0x4e9f1  8      
  popq %rbx                         #  10    0x4e9f9  2      
  popq %r11                         #  11    0x4e9fb  3      
  andl $0xffffffe0, %r11d           #  12    0x4e9fe  7      
  addq %r15, %r11                   #  13    0x4ea05  3      
  jmpq %r11                         #  14    0x4ea08  3      
  nop                               #  15    0x4ea0b  1      
  nop                               #  16    0x4ea0c  1      
  nop                               #  17    0x4ea0d  1      
  nop                               #  18    0x4ea0e  1      
  nop                               #  19    0x4ea0f  1      
  nop                               #  20    0x4ea10  1      
  nop                               #  21    0x4ea11  1      
  nop                               #  22    0x4ea12  1      
  nop                               #  23    0x4ea13  1      
                                                             
.size _ZNSt12domain_errorC2ERKSs, .-_ZNSt12domain_errorC2ERKSs

