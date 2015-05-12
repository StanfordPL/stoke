  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x4f3e0
#! rip-offset  0x4f3e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9bad_allocD0Ev:              #        0x4f3e0  0      
  pushq %rbx                       #  1     0x4f3e0  2      
  movl %edi, %ebx                  #  2     0x4f3e2  2      
  movl %ebx, %edi                  #  3     0x4f3e4  2      
  movl %ebx, %ebx                  #  4     0x4f3e6  2      
  movl $0x10021418, (%r15,%rbx,1)  #  5     0x4f3e8  8      
  nop                              #  6     0x4f3f0  1      
  callq ._ZNSt9exceptionD2Ev       #  7     0x4f3f1  5      
  movl %ebx, %edi                  #  8     0x4f3f6  2      
  popq %rbx                        #  9     0x4f3f8  2      
  jmpq ._ZdlPv                     #  10    0x4f3fa  5      
  nop                              #  11    0x4f3ff  1      
  nop                              #  12    0x4f400  1      
  nop                              #  13    0x4f401  1      
  nop                              #  14    0x4f402  1      
  nop                              #  15    0x4f403  1      
  nop                              #  16    0x4f404  1      
  nop                              #  17    0x4f405  1      
  nop                              #  18    0x4f406  1      
  nop                              #  19    0x4f407  1      
  nop                              #  20    0x4f408  1      
  nop                              #  21    0x4f409  1      
  nop                              #  22    0x4f40a  1      
  nop                              #  23    0x4f40b  1      
  nop                              #  24    0x4f40c  1      
  nop                              #  25    0x4f40d  1      
  nop                              #  26    0x4f40e  1      
  nop                              #  27    0x4f40f  1      
  nop                              #  28    0x4f410  1      
  nop                              #  29    0x4f411  1      
  nop                              #  30    0x4f412  1      
  nop                              #  31    0x4f413  1      
  nop                              #  32    0x4f414  1      
  nop                              #  33    0x4f415  1      
  nop                              #  34    0x4f416  1      
                                                            
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

