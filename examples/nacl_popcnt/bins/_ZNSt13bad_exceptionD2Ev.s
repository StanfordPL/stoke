  .text
  .globl _ZNSt13bad_exceptionD2Ev
  .type _ZNSt13bad_exceptionD2Ev, @function

#! file-offset 0x4c760
#! rip-offset  0x4c760
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt13bad_exceptionD2Ev:         #        0x4c760  0      
  popq %r11                        #  1     0x4c760  3      
  movl %edi, %edi                  #  2     0x4c763  2      
  movl %edi, %edi                  #  3     0x4c765  2      
  movl $0x10020e48, (%r15,%rdi,1)  #  4     0x4c767  8      
  andl $0xffffffe0, %r11d          #  5     0x4c76f  7      
  addq %r15, %r11                  #  6     0x4c776  3      
  jmpq %r11                        #  7     0x4c779  3      
  nop                              #  8     0x4c77c  1      
  nop                              #  9     0x4c77d  1      
  nop                              #  10    0x4c77e  1      
  nop                              #  11    0x4c77f  1      
  nop                              #  12    0x4c780  1      
  nop                              #  13    0x4c781  1      
  nop                              #  14    0x4c782  1      
  nop                              #  15    0x4c783  1      
                                                            
.size _ZNSt13bad_exceptionD2Ev, .-_ZNSt13bad_exceptionD2Ev

