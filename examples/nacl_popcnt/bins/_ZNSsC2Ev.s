  .text
  .globl _ZNSsC2Ev
  .type _ZNSsC2Ev, @function

#! file-offset 0x443a0
#! rip-offset  0x443a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsC2Ev:                        #        0x443a0  0      
  popq %r11                        #  1     0x443a0  3      
  movl %edi, %edi                  #  2     0x443a3  2      
  movl %edi, %edi                  #  3     0x443a5  2      
  movl $0x10031dac, (%r15,%rdi,1)  #  4     0x443a7  8      
  andl $0xffffffe0, %r11d          #  5     0x443af  7      
  addq %r15, %r11                  #  6     0x443b6  3      
  jmpq %r11                        #  7     0x443b9  3      
  nop                              #  8     0x443bc  1      
  nop                              #  9     0x443bd  1      
  nop                              #  10    0x443be  1      
  nop                              #  11    0x443bf  1      
  nop                              #  12    0x443c0  1      
  nop                              #  13    0x443c1  1      
  nop                              #  14    0x443c2  1      
  nop                              #  15    0x443c3  1      
                                                            
.size _ZNSsC2Ev, .-_ZNSsC2Ev

