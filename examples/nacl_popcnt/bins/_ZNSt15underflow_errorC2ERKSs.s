  .text
  .globl _ZNSt15underflow_errorC2ERKSs
  .type _ZNSt15underflow_errorC2ERKSs, @function

#! file-offset 0x4e5e0
#! rip-offset  0x4e5e0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt15underflow_errorC2ERKSs:       #        0x4e5e0  0      
  pushq %rbx                          #  1     0x4e5e0  2      
  movl %edi, %ebx                     #  2     0x4e5e2  2      
  movl %esi, %esi                     #  3     0x4e5e4  2      
  movl %ebx, %edi                     #  4     0x4e5e6  2      
  nop                                 #  5     0x4e5e8  1      
  nop                                 #  6     0x4e5e9  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e5ea  5      
  movl %ebx, %ebx                     #  8     0x4e5ef  2      
  movl $0x10020fb8, (%r15,%rbx,1)     #  9     0x4e5f1  8      
  popq %rbx                           #  10    0x4e5f9  2      
  popq %r11                           #  11    0x4e5fb  3      
  andl $0xffffffe0, %r11d             #  12    0x4e5fe  7      
  addq %r15, %r11                     #  13    0x4e605  3      
  jmpq %r11                           #  14    0x4e608  3      
  nop                                 #  15    0x4e60b  1      
  nop                                 #  16    0x4e60c  1      
  nop                                 #  17    0x4e60d  1      
  nop                                 #  18    0x4e60e  1      
  nop                                 #  19    0x4e60f  1      
  nop                                 #  20    0x4e610  1      
  nop                                 #  21    0x4e611  1      
  nop                                 #  22    0x4e612  1      
  nop                                 #  23    0x4e613  1      
                                                               
.size _ZNSt15underflow_errorC2ERKSs, .-_ZNSt15underflow_errorC2ERKSs

