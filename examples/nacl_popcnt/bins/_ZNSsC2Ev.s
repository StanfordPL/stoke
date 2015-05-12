  .text
  .globl _ZNSsC2Ev
  .type _ZNSsC2Ev, @function

#! file-offset 0x443c0
#! rip-offset  0x443c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsC2Ev:                        #        0x443c0  0      
  popq %r11                        #  1     0x443c0  3      
  movl %edi, %edi                  #  2     0x443c3  2      
  movl %edi, %edi                  #  3     0x443c5  2      
  movl $0x10031dac, (%r15,%rdi,1)  #  4     0x443c7  8      
  andl $0xffffffe0, %r11d          #  5     0x443cf  7      
  addq %r15, %r11                  #  6     0x443d6  3      
  jmpq %r11                        #  7     0x443d9  3      
  nop                              #  8     0x443dc  1      
  nop                              #  9     0x443dd  1      
  nop                              #  10    0x443de  1      
  nop                              #  11    0x443df  1      
  nop                              #  12    0x443e0  1      
  nop                              #  13    0x443e1  1      
  nop                              #  14    0x443e2  1      
  nop                              #  15    0x443e3  1      
                                                            
.size _ZNSsC2Ev, .-_ZNSsC2Ev

