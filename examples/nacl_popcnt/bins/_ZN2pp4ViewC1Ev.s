  .text
  .globl _ZN2pp4ViewC1Ev
  .type _ZN2pp4ViewC1Ev, @function

#! file-offset 0x2d820
#! rip-offset  0x2d820
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC1Ev:                  #        0x2d820  0      
  pushq %rbx                       #  1     0x2d820  2      
  movl %edi, %ebx                  #  2     0x2d822  2      
  movl %ebx, %edi                  #  3     0x2d824  2      
  nop                              #  4     0x2d826  1      
  nop                              #  5     0x2d827  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x2d828  5      
  movl %ebx, %ebx                  #  7     0x2d82d  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d82f  8      
  popq %rbx                        #  9     0x2d837  2      
  popq %r11                        #  10    0x2d839  3      
  andl $0xffffffe0, %r11d          #  11    0x2d83c  7      
  addq %r15, %r11                  #  12    0x2d843  3      
  jmpq %r11                        #  13    0x2d846  3      
  nop                              #  14    0x2d849  1      
  nop                              #  15    0x2d84a  1      
                                                            
.size _ZN2pp4ViewC1Ev, .-_ZN2pp4ViewC1Ev

