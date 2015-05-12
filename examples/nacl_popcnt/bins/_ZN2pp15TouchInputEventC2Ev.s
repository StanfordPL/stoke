  .text
  .globl _ZN2pp15TouchInputEventC2Ev
  .type _ZN2pp15TouchInputEventC2Ev, @function

#! file-offset 0x36240
#! rip-offset  0x36240
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2Ev:      #        0x36240  0      
  pushq %rbx                       #  1     0x36240  2      
  movl %edi, %ebx                  #  2     0x36242  2      
  movl %ebx, %edi                  #  3     0x36244  2      
  nop                              #  4     0x36246  1      
  nop                              #  5     0x36247  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36248  5      
  movl %ebx, %ebx                  #  7     0x3624d  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x3624f  8      
  popq %rbx                        #  9     0x36257  2      
  popq %r11                        #  10    0x36259  3      
  andl $0xffffffe0, %r11d          #  11    0x3625c  7      
  addq %r15, %r11                  #  12    0x36263  3      
  jmpq %r11                        #  13    0x36266  3      
  nop                              #  14    0x36269  1      
  nop                              #  15    0x3626a  1      
                                                            
.size _ZN2pp15TouchInputEventC2Ev, .-_ZN2pp15TouchInputEventC2Ev

