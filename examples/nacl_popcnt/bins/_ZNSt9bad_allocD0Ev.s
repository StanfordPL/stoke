  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x4f460
#! rip-offset  0x4f460
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9bad_allocD0Ev:              #        0x4f460  0      
  pushq %rbx                       #  1     0x4f460  2      
  movl %edi, %ebx                  #  2     0x4f462  2      
  movl %ebx, %edi                  #  3     0x4f464  2      
  movl %ebx, %ebx                  #  4     0x4f466  2      
  movl $0x10021418, (%r15,%rbx,1)  #  5     0x4f468  8      
  nop                              #  6     0x4f470  1      
  callq ._ZNSt9exceptionD2Ev       #  7     0x4f471  5      
  movl %ebx, %edi                  #  8     0x4f476  2      
  popq %rbx                        #  9     0x4f478  2      
  jmpq ._ZdlPv                     #  10    0x4f47a  5      
  nop                              #  11    0x4f47f  1      
  nop                              #  12    0x4f480  1      
  nop                              #  13    0x4f481  1      
  nop                              #  14    0x4f482  1      
  nop                              #  15    0x4f483  1      
  nop                              #  16    0x4f484  1      
  nop                              #  17    0x4f485  1      
  nop                              #  18    0x4f486  1      
  nop                              #  19    0x4f487  1      
  nop                              #  20    0x4f488  1      
  nop                              #  21    0x4f489  1      
  nop                              #  22    0x4f48a  1      
  nop                              #  23    0x4f48b  1      
  nop                              #  24    0x4f48c  1      
  nop                              #  25    0x4f48d  1      
  nop                              #  26    0x4f48e  1      
  nop                              #  27    0x4f48f  1      
  nop                              #  28    0x4f490  1      
  nop                              #  29    0x4f491  1      
  nop                              #  30    0x4f492  1      
  nop                              #  31    0x4f493  1      
  nop                              #  32    0x4f494  1      
  nop                              #  33    0x4f495  1      
  nop                              #  34    0x4f496  1      
                                                            
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

