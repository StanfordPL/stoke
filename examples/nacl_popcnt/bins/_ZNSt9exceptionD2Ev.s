  .text
  .globl _ZNSt9exceptionD2Ev
  .type _ZNSt9exceptionD2Ev, @function

#! file-offset 0x4c700
#! rip-offset  0x4c700
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9exceptionD2Ev:              #        0x4c700  0      
  popq %r11                        #  1     0x4c700  3      
  movl %edi, %edi                  #  2     0x4c703  2      
  movl %edi, %edi                  #  3     0x4c705  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c707  8      
  andl $0xffffffe0, %r11d          #  5     0x4c70f  7      
  addq %r15, %r11                  #  6     0x4c716  3      
  jmpq %r11                        #  7     0x4c719  3      
  nop                              #  8     0x4c71c  1      
  nop                              #  9     0x4c71d  1      
  nop                              #  10    0x4c71e  1      
  nop                              #  11    0x4c71f  1      
  nop                              #  12    0x4c720  1      
  nop                              #  13    0x4c721  1      
  nop                              #  14    0x4c722  1      
  nop                              #  15    0x4c723  1      
                                                            
.size _ZNSt9exceptionD2Ev, .-_ZNSt9exceptionD2Ev

