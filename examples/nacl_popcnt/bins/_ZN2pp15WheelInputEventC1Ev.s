  .text
  .globl _ZN2pp15WheelInputEventC1Ev
  .type _ZN2pp15WheelInputEventC1Ev, @function

#! file-offset 0x362e0
#! rip-offset  0x362e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1Ev:      #        0x362e0  0      
  pushq %rbx                       #  1     0x362e0  2      
  movl %edi, %ebx                  #  2     0x362e2  2      
  movl %ebx, %edi                  #  3     0x362e4  2      
  nop                              #  4     0x362e6  1      
  nop                              #  5     0x362e7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x362e8  5      
  movl %ebx, %ebx                  #  7     0x362ed  2      
  movl $0x10020808, (%r15,%rbx,1)  #  8     0x362ef  8      
  popq %rbx                        #  9     0x362f7  2      
  popq %r11                        #  10    0x362f9  3      
  andl $0xffffffe0, %r11d          #  11    0x362fc  7      
  addq %r15, %r11                  #  12    0x36303  3      
  jmpq %r11                        #  13    0x36306  3      
  nop                              #  14    0x36309  1      
  nop                              #  15    0x3630a  1      
                                                            
.size _ZN2pp15WheelInputEventC1Ev, .-_ZN2pp15WheelInputEventC1Ev

