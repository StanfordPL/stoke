  .text
  .globl _ZNSt15underflow_errorC1ERKSs
  .type _ZNSt15underflow_errorC1ERKSs, @function

#! file-offset 0x4e5a0
#! rip-offset  0x4e5a0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt15underflow_errorC1ERKSs:       #        0x4e5a0  0      
  pushq %rbx                          #  1     0x4e5a0  2      
  movl %edi, %ebx                     #  2     0x4e5a2  2      
  movl %esi, %esi                     #  3     0x4e5a4  2      
  movl %ebx, %edi                     #  4     0x4e5a6  2      
  nop                                 #  5     0x4e5a8  1      
  nop                                 #  6     0x4e5a9  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e5aa  5      
  movl %ebx, %ebx                     #  8     0x4e5af  2      
  movl $0x10020fb8, (%r15,%rbx,1)     #  9     0x4e5b1  8      
  popq %rbx                           #  10    0x4e5b9  2      
  popq %r11                           #  11    0x4e5bb  3      
  andl $0xffffffe0, %r11d             #  12    0x4e5be  7      
  addq %r15, %r11                     #  13    0x4e5c5  3      
  jmpq %r11                           #  14    0x4e5c8  3      
  nop                                 #  15    0x4e5cb  1      
  nop                                 #  16    0x4e5cc  1      
  nop                                 #  17    0x4e5cd  1      
  nop                                 #  18    0x4e5ce  1      
  nop                                 #  19    0x4e5cf  1      
  nop                                 #  20    0x4e5d0  1      
  nop                                 #  21    0x4e5d1  1      
  nop                                 #  22    0x4e5d2  1      
  nop                                 #  23    0x4e5d3  1      
                                                               
.size _ZNSt15underflow_errorC1ERKSs, .-_ZNSt15underflow_errorC1ERKSs

