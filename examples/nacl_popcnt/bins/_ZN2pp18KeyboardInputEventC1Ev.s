  .text
  .globl _ZN2pp18KeyboardInputEventC1Ev
  .type _ZN2pp18KeyboardInputEventC1Ev, @function

#! file-offset 0x36260
#! rip-offset  0x36260
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1Ev:   #        0x36260  0      
  pushq %rbx                       #  1     0x36260  2      
  movl %edi, %ebx                  #  2     0x36262  2      
  movl %ebx, %edi                  #  3     0x36264  2      
  nop                              #  4     0x36266  1      
  nop                              #  5     0x36267  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36268  5      
  movl %ebx, %ebx                  #  7     0x3626d  2      
  movl $0x100207c8, (%r15,%rbx,1)  #  8     0x3626f  8      
  popq %rbx                        #  9     0x36277  2      
  popq %r11                        #  10    0x36279  3      
  andl $0xffffffe0, %r11d          #  11    0x3627c  7      
  addq %r15, %r11                  #  12    0x36283  3      
  jmpq %r11                        #  13    0x36286  3      
  nop                              #  14    0x36289  1      
  nop                              #  15    0x3628a  1      
                                                            
.size _ZN2pp18KeyboardInputEventC1Ev, .-_ZN2pp18KeyboardInputEventC1Ev

