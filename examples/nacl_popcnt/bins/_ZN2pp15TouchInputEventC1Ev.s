  .text
  .globl _ZN2pp15TouchInputEventC1Ev
  .type _ZN2pp15TouchInputEventC1Ev, @function

#! file-offset 0x361e0
#! rip-offset  0x361e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1Ev:      #        0x361e0  0      
  pushq %rbx                       #  1     0x361e0  2      
  movl %edi, %ebx                  #  2     0x361e2  2      
  movl %ebx, %edi                  #  3     0x361e4  2      
  nop                              #  4     0x361e6  1      
  nop                              #  5     0x361e7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x361e8  5      
  movl %ebx, %ebx                  #  7     0x361ed  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x361ef  8      
  popq %rbx                        #  9     0x361f7  2      
  popq %r11                        #  10    0x361f9  3      
  andl $0xffffffe0, %r11d          #  11    0x361fc  7      
  addq %r15, %r11                  #  12    0x36203  3      
  jmpq %r11                        #  13    0x36206  3      
  nop                              #  14    0x36209  1      
  nop                              #  15    0x3620a  1      
                                                            
.size _ZN2pp15TouchInputEventC1Ev, .-_ZN2pp15TouchInputEventC1Ev

