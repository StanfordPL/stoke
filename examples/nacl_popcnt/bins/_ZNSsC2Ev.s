  .text
  .globl _ZNSsC2Ev
  .type _ZNSsC2Ev, @function

#! file-offset 0x44440
#! rip-offset  0x44440
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsC2Ev:                        #        0x44440  0      
  popq %r11                        #  1     0x44440  3      
  movl %edi, %edi                  #  2     0x44443  2      
  movl %edi, %edi                  #  3     0x44445  2      
  movl $0x10031dac, (%r15,%rdi,1)  #  4     0x44447  8      
  andl $0xffffffe0, %r11d          #  5     0x4444f  7      
  addq %r15, %r11                  #  6     0x44456  3      
  jmpq %r11                        #  7     0x44459  3      
  nop                              #  8     0x4445c  1      
  nop                              #  9     0x4445d  1      
  nop                              #  10    0x4445e  1      
  nop                              #  11    0x4445f  1      
  nop                              #  12    0x44460  1      
  nop                              #  13    0x44461  1      
  nop                              #  14    0x44462  1      
  nop                              #  15    0x44463  1      
                                                            
.size _ZNSsC2Ev, .-_ZNSsC2Ev

