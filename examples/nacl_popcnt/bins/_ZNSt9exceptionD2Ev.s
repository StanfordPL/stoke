  .text
  .globl _ZNSt9exceptionD2Ev
  .type _ZNSt9exceptionD2Ev, @function

#! file-offset 0x4c7a0
#! rip-offset  0x4c7a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9exceptionD2Ev:              #        0x4c7a0  0      
  popq %r11                        #  1     0x4c7a0  3      
  movl %edi, %edi                  #  2     0x4c7a3  2      
  movl %edi, %edi                  #  3     0x4c7a5  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c7a7  8      
  andl $0xffffffe0, %r11d          #  5     0x4c7af  7      
  addq %r15, %r11                  #  6     0x4c7b6  3      
  jmpq %r11                        #  7     0x4c7b9  3      
  nop                              #  8     0x4c7bc  1      
  nop                              #  9     0x4c7bd  1      
  nop                              #  10    0x4c7be  1      
  nop                              #  11    0x4c7bf  1      
  nop                              #  12    0x4c7c0  1      
  nop                              #  13    0x4c7c1  1      
  nop                              #  14    0x4c7c2  1      
  nop                              #  15    0x4c7c3  1      
                                                            
.size _ZNSt9exceptionD2Ev, .-_ZNSt9exceptionD2Ev

