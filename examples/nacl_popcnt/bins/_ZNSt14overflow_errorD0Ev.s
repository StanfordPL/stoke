  .text
  .globl _ZNSt14overflow_errorD0Ev
  .type _ZNSt14overflow_errorD0Ev, @function

#! file-offset 0x4ccc0
#! rip-offset  0x4ccc0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt14overflow_errorD0Ev:        #        0x4ccc0  0      
  pushq %rbx                       #  1     0x4ccc0  2      
  movl %edi, %ebx                  #  2     0x4ccc2  2      
  movl %ebx, %edi                  #  3     0x4ccc4  2      
  movl %ebx, %ebx                  #  4     0x4ccc6  2      
  movl $0x10020ff8, (%r15,%rbx,1)  #  5     0x4ccc8  8      
  nop                              #  6     0x4ccd0  1      
  callq ._ZNSt13runtime_errorD2Ev  #  7     0x4ccd1  5      
  movl %ebx, %edi                  #  8     0x4ccd6  2      
  popq %rbx                        #  9     0x4ccd8  2      
  jmpq ._ZdlPv                     #  10    0x4ccda  5      
  nop                              #  11    0x4ccdf  1      
  nop                              #  12    0x4cce0  1      
  nop                              #  13    0x4cce1  1      
  nop                              #  14    0x4cce2  1      
  nop                              #  15    0x4cce3  1      
  nop                              #  16    0x4cce4  1      
  nop                              #  17    0x4cce5  1      
  nop                              #  18    0x4cce6  1      
  nop                              #  19    0x4cce7  1      
  nop                              #  20    0x4cce8  1      
  nop                              #  21    0x4cce9  1      
  nop                              #  22    0x4ccea  1      
  nop                              #  23    0x4cceb  1      
  nop                              #  24    0x4ccec  1      
  nop                              #  25    0x4cced  1      
  nop                              #  26    0x4ccee  1      
  nop                              #  27    0x4ccef  1      
  nop                              #  28    0x4ccf0  1      
  nop                              #  29    0x4ccf1  1      
  nop                              #  30    0x4ccf2  1      
  nop                              #  31    0x4ccf3  1      
  nop                              #  32    0x4ccf4  1      
  nop                              #  33    0x4ccf5  1      
  nop                              #  34    0x4ccf6  1      
                                                            
.size _ZNSt14overflow_errorD0Ev, .-_ZNSt14overflow_errorD0Ev

