  .text
  .globl _ZNSt9exceptionD1Ev
  .type _ZNSt9exceptionD1Ev, @function

#! file-offset 0x4c740
#! rip-offset  0x4c740
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt9exceptionD1Ev:              #        0x4c740  0      
  popq %r11                        #  1     0x4c740  3      
  movl %edi, %edi                  #  2     0x4c743  2      
  movl %edi, %edi                  #  3     0x4c745  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c747  8      
  andl $0xffffffe0, %r11d          #  5     0x4c74f  7      
  addq %r15, %r11                  #  6     0x4c756  3      
  jmpq %r11                        #  7     0x4c759  3      
  nop                              #  8     0x4c75c  1      
  nop                              #  9     0x4c75d  1      
  nop                              #  10    0x4c75e  1      
  nop                              #  11    0x4c75f  1      
  nop                              #  12    0x4c760  1      
  nop                              #  13    0x4c761  1      
  nop                              #  14    0x4c762  1      
  nop                              #  15    0x4c763  1      
                                                            
.size _ZNSt9exceptionD1Ev, .-_ZNSt9exceptionD1Ev

