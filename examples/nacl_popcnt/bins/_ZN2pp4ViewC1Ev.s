  .text
  .globl _ZN2pp4ViewC1Ev
  .type _ZN2pp4ViewC1Ev, @function

#! file-offset 0x2d840
#! rip-offset  0x2d840
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC1Ev:                  #        0x2d840  0      
  pushq %rbx                       #  1     0x2d840  2      
  movl %edi, %ebx                  #  2     0x2d842  2      
  movl %ebx, %edi                  #  3     0x2d844  2      
  nop                              #  4     0x2d846  1      
  nop                              #  5     0x2d847  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x2d848  5      
  movl %ebx, %ebx                  #  7     0x2d84d  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d84f  8      
  popq %rbx                        #  9     0x2d857  2      
  popq %r11                        #  10    0x2d859  3      
  andl $0xffffffe0, %r11d          #  11    0x2d85c  7      
  addq %r15, %r11                  #  12    0x2d863  3      
  jmpq %r11                        #  13    0x2d866  3      
  nop                              #  14    0x2d869  1      
  nop                              #  15    0x2d86a  1      
                                                            
.size _ZN2pp4ViewC1Ev, .-_ZN2pp4ViewC1Ev

