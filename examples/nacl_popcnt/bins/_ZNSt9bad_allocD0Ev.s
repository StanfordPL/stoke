  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x4f3c0
#! rip-offset  0x4f3c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9bad_allocD0Ev:              #        0x4f3c0  0      
  pushq %rbx                       #  1     0x4f3c0  2      
  movl %edi, %ebx                  #  2     0x4f3c2  2      
  movl %ebx, %edi                  #  3     0x4f3c4  2      
  movl %ebx, %ebx                  #  4     0x4f3c6  2      
  movl $0x10021418, (%r15,%rbx,1)  #  5     0x4f3c8  8      
  nop                              #  6     0x4f3d0  1      
  callq ._ZNSt9exceptionD2Ev       #  7     0x4f3d1  5      
  movl %ebx, %edi                  #  8     0x4f3d6  2      
  popq %rbx                        #  9     0x4f3d8  2      
  jmpq ._ZdlPv                     #  10    0x4f3da  5      
  nop                              #  11    0x4f3df  1      
  nop                              #  12    0x4f3e0  1      
  nop                              #  13    0x4f3e1  1      
  nop                              #  14    0x4f3e2  1      
  nop                              #  15    0x4f3e3  1      
  nop                              #  16    0x4f3e4  1      
  nop                              #  17    0x4f3e5  1      
  nop                              #  18    0x4f3e6  1      
  nop                              #  19    0x4f3e7  1      
  nop                              #  20    0x4f3e8  1      
  nop                              #  21    0x4f3e9  1      
  nop                              #  22    0x4f3ea  1      
  nop                              #  23    0x4f3eb  1      
  nop                              #  24    0x4f3ec  1      
  nop                              #  25    0x4f3ed  1      
  nop                              #  26    0x4f3ee  1      
  nop                              #  27    0x4f3ef  1      
  nop                              #  28    0x4f3f0  1      
  nop                              #  29    0x4f3f1  1      
  nop                              #  30    0x4f3f2  1      
  nop                              #  31    0x4f3f3  1      
  nop                              #  32    0x4f3f4  1      
  nop                              #  33    0x4f3f5  1      
  nop                              #  34    0x4f3f6  1      
                                                            
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

