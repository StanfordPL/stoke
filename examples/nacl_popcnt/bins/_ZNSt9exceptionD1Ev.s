  .text
  .globl _ZNSt9exceptionD1Ev
  .type _ZNSt9exceptionD1Ev, @function

#! file-offset 0x4c7c0
#! rip-offset  0x4c7c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9exceptionD1Ev:              #        0x4c7c0  0      
  popq %r11                        #  1     0x4c7c0  3      
  movl %edi, %edi                  #  2     0x4c7c3  2      
  movl %edi, %edi                  #  3     0x4c7c5  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c7c7  8      
  andl $0xffffffe0, %r11d          #  5     0x4c7cf  7      
  addq %r15, %r11                  #  6     0x4c7d6  3      
  jmpq %r11                        #  7     0x4c7d9  3      
  nop                              #  8     0x4c7dc  1      
  nop                              #  9     0x4c7dd  1      
  nop                              #  10    0x4c7de  1      
  nop                              #  11    0x4c7df  1      
  nop                              #  12    0x4c7e0  1      
  nop                              #  13    0x4c7e1  1      
  nop                              #  14    0x4c7e2  1      
  nop                              #  15    0x4c7e3  1      
                                                            
.size _ZNSt9exceptionD1Ev, .-_ZNSt9exceptionD1Ev

