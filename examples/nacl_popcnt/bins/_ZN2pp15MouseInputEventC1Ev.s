  .text
  .globl _ZN2pp15MouseInputEventC1Ev
  .type _ZN2pp15MouseInputEventC1Ev, @function

#! file-offset 0x36360
#! rip-offset  0x36360
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1Ev:      #        0x36360  0      
  pushq %rbx                       #  1     0x36360  2      
  movl %edi, %ebx                  #  2     0x36362  2      
  movl %ebx, %edi                  #  3     0x36364  2      
  nop                              #  4     0x36366  1      
  nop                              #  5     0x36367  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36368  5      
  movl %ebx, %ebx                  #  7     0x3636d  2      
  movl $0x10020848, (%r15,%rbx,1)  #  8     0x3636f  8      
  popq %rbx                        #  9     0x36377  2      
  popq %r11                        #  10    0x36379  3      
  andl $0xffffffe0, %r11d          #  11    0x3637c  7      
  addq %r15, %r11                  #  12    0x36383  3      
  jmpq %r11                        #  13    0x36386  3      
  nop                              #  14    0x36389  1      
  nop                              #  15    0x3638a  1      
                                                            
.size _ZN2pp15MouseInputEventC1Ev, .-_ZN2pp15MouseInputEventC1Ev

