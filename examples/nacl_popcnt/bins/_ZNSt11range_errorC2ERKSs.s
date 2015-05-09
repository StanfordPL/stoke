  .text
  .globl _ZNSt11range_errorC2ERKSs
  .type _ZNSt11range_errorC2ERKSs, @function

#! file-offset 0x4e6e0
#! rip-offset  0x4e6e0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt11range_errorC2ERKSs:           #        0x4e6e0  0      
  pushq %rbx                          #  1     0x4e6e0  2      
  movl %edi, %ebx                     #  2     0x4e6e2  2      
  movl %esi, %esi                     #  3     0x4e6e4  2      
  movl %ebx, %edi                     #  4     0x4e6e6  2      
  nop                                 #  5     0x4e6e8  1      
  nop                                 #  6     0x4e6e9  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e6ea  5      
  movl %ebx, %ebx                     #  8     0x4e6ef  2      
  movl $0x10021028, (%r15,%rbx,1)     #  9     0x4e6f1  8      
  popq %rbx                           #  10    0x4e6f9  2      
  popq %r11                           #  11    0x4e6fb  3      
  andl $0xffffffe0, %r11d             #  12    0x4e6fe  7      
  addq %r15, %r11                     #  13    0x4e705  3      
  jmpq %r11                           #  14    0x4e708  3      
  nop                                 #  15    0x4e70b  1      
  nop                                 #  16    0x4e70c  1      
  nop                                 #  17    0x4e70d  1      
  nop                                 #  18    0x4e70e  1      
  nop                                 #  19    0x4e70f  1      
  nop                                 #  20    0x4e710  1      
  nop                                 #  21    0x4e711  1      
  nop                                 #  22    0x4e712  1      
  nop                                 #  23    0x4e713  1      
                                                               
.size _ZNSt11range_errorC2ERKSs, .-_ZNSt11range_errorC2ERKSs

