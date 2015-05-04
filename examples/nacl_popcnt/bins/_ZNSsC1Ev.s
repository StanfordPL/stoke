  .text
  .globl _ZNSsC1Ev
  .type _ZNSsC1Ev, @function

#! file-offset 0x44460
#! rip-offset  0x44460
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsC1Ev:                        #        0x44460  0      
  popq %r11                        #  1     0x44460  3      
  movl %edi, %edi                  #  2     0x44463  2      
  movl %edi, %edi                  #  3     0x44465  2      
  movl $0x10031dac, (%r15,%rdi,1)  #  4     0x44467  8      
  andl $0xffffffe0, %r11d          #  5     0x4446f  7      
  addq %r15, %r11                  #  6     0x44476  3      
  jmpq %r11                        #  7     0x44479  3      
  nop                              #  8     0x4447c  1      
  nop                              #  9     0x4447d  1      
  nop                              #  10    0x4447e  1      
  nop                              #  11    0x4447f  1      
  nop                              #  12    0x44480  1      
  nop                              #  13    0x44481  1      
  nop                              #  14    0x44482  1      
  nop                              #  15    0x44483  1      
                                                            
.size _ZNSsC1Ev, .-_ZNSsC1Ev

