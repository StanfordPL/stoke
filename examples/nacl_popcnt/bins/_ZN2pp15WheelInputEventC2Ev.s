  .text
  .globl _ZN2pp15WheelInputEventC2Ev
  .type _ZN2pp15WheelInputEventC2Ev, @function

#! file-offset 0x36340
#! rip-offset  0x36340
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2Ev:      #        0x36340  0      
  pushq %rbx                       #  1     0x36340  2      
  movl %edi, %ebx                  #  2     0x36342  2      
  movl %ebx, %edi                  #  3     0x36344  2      
  nop                              #  4     0x36346  1      
  nop                              #  5     0x36347  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36348  5      
  movl %ebx, %ebx                  #  7     0x3634d  2      
  movl $0x10020808, (%r15,%rbx,1)  #  8     0x3634f  8      
  popq %rbx                        #  9     0x36357  2      
  popq %r11                        #  10    0x36359  3      
  andl $0xffffffe0, %r11d          #  11    0x3635c  7      
  addq %r15, %r11                  #  12    0x36363  3      
  jmpq %r11                        #  13    0x36366  3      
  nop                              #  14    0x36369  1      
  nop                              #  15    0x3636a  1      
                                                            
.size _ZN2pp15WheelInputEventC2Ev, .-_ZN2pp15WheelInputEventC2Ev

