  .text
  .globl _ZNSt13bad_exceptionD1Ev
  .type _ZNSt13bad_exceptionD1Ev, @function

#! file-offset 0x4c780
#! rip-offset  0x4c780
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt13bad_exceptionD1Ev:         #        0x4c780  0      
  popq %r11                        #  1     0x4c780  3      
  movl %edi, %edi                  #  2     0x4c783  2      
  movl %edi, %edi                  #  3     0x4c785  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c787  8      
  andl $0xffffffe0, %r11d          #  5     0x4c78f  7      
  addq %r15, %r11                  #  6     0x4c796  3      
  jmpq %r11                        #  7     0x4c799  3      
  nop                              #  8     0x4c79c  1      
  nop                              #  9     0x4c79d  1      
  nop                              #  10    0x4c79e  1      
  nop                              #  11    0x4c79f  1      
  nop                              #  12    0x4c7a0  1      
  nop                              #  13    0x4c7a1  1      
  nop                              #  14    0x4c7a2  1      
  nop                              #  15    0x4c7a3  1      
                                                            
.size _ZNSt13bad_exceptionD1Ev, .-_ZNSt13bad_exceptionD1Ev

