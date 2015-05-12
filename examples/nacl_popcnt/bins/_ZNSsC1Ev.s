  .text
  .globl _ZNSsC1Ev
  .type _ZNSsC1Ev, @function

#! file-offset 0x443e0
#! rip-offset  0x443e0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsC1Ev:                        #        0x443e0  0      
  popq %r11                        #  1     0x443e0  3      
  movl %edi, %edi                  #  2     0x443e3  2      
  movl %edi, %edi                  #  3     0x443e5  2      
  movl $0x10031dac, (%r15,%rdi,1)  #  4     0x443e7  8      
  andl $0xffffffe0, %r11d          #  5     0x443ef  7      
  addq %r15, %r11                  #  6     0x443f6  3      
  jmpq %r11                        #  7     0x443f9  3      
  nop                              #  8     0x443fc  1      
  nop                              #  9     0x443fd  1      
  nop                              #  10    0x443fe  1      
  nop                              #  11    0x443ff  1      
  nop                              #  12    0x44400  1      
  nop                              #  13    0x44401  1      
  nop                              #  14    0x44402  1      
  nop                              #  15    0x44403  1      
                                                            
.size _ZNSsC1Ev, .-_ZNSsC1Ev

