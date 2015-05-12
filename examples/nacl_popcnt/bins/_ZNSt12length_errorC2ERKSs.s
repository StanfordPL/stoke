  .text
  .globl _ZNSt12length_errorC2ERKSs
  .type _ZNSt12length_errorC2ERKSs, @function

#! file-offset 0x4e900
#! rip-offset  0x4e900
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12length_errorC2ERKSs:        #        0x4e900  0      
  pushq %rbx                        #  1     0x4e900  2      
  movl %edi, %ebx                   #  2     0x4e902  2      
  movl %esi, %esi                   #  3     0x4e904  2      
  movl %ebx, %edi                   #  4     0x4e906  2      
  nop                               #  5     0x4e908  1      
  nop                               #  6     0x4e909  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e90a  5      
  movl %ebx, %ebx                   #  8     0x4e90f  2      
  movl $0x100210a8, (%r15,%rbx,1)   #  9     0x4e911  8      
  popq %rbx                         #  10    0x4e919  2      
  popq %r11                         #  11    0x4e91b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e91e  7      
  addq %r15, %r11                   #  13    0x4e925  3      
  jmpq %r11                         #  14    0x4e928  3      
  nop                               #  15    0x4e92b  1      
  nop                               #  16    0x4e92c  1      
  nop                               #  17    0x4e92d  1      
  nop                               #  18    0x4e92e  1      
  nop                               #  19    0x4e92f  1      
  nop                               #  20    0x4e930  1      
  nop                               #  21    0x4e931  1      
  nop                               #  22    0x4e932  1      
  nop                               #  23    0x4e933  1      
                                                             
.size _ZNSt12length_errorC2ERKSs, .-_ZNSt12length_errorC2ERKSs

