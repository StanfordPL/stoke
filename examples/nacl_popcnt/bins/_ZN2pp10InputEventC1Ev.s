  .text
  .globl _ZN2pp10InputEventC1Ev
  .type _ZN2pp10InputEventC1Ev, @function

#! file-offset 0x36180
#! rip-offset  0x36180
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ev:           #        0x36180  0      
  pushq %rbx                       #  1     0x36180  2      
  movl %edi, %ebx                  #  2     0x36182  2      
  movl %ebx, %edi                  #  3     0x36184  2      
  nop                              #  4     0x36186  1      
  nop                              #  5     0x36187  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x36188  5      
  movl %ebx, %ebx                  #  7     0x3618d  2      
  movl $0x10020718, (%r15,%rbx,1)  #  8     0x3618f  8      
  popq %rbx                        #  9     0x36197  2      
  popq %r11                        #  10    0x36199  3      
  andl $0xffffffe0, %r11d          #  11    0x3619c  7      
  addq %r15, %r11                  #  12    0x361a3  3      
  jmpq %r11                        #  13    0x361a6  3      
  nop                              #  14    0x361a9  1      
  nop                              #  15    0x361aa  1      
                                                            
.size _ZN2pp10InputEventC1Ev, .-_ZN2pp10InputEventC1Ev

