  .text
  .globl _ZN2pp4ViewC1Ei
  .type _ZN2pp4ViewC1Ei, @function

#! file-offset 0x2d7a0
#! rip-offset  0x2d7a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC1Ei:                  #        0x2d7a0  0      
  pushq %rbx                       #  1     0x2d7a0  2      
  movl %edi, %ebx                  #  2     0x2d7a2  2      
  movl %ebx, %edi                  #  3     0x2d7a4  2      
  nop                              #  4     0x2d7a6  1      
  nop                              #  5     0x2d7a7  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x2d7a8  5      
  movl %ebx, %ebx                  #  7     0x2d7ad  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d7af  8      
  popq %rbx                        #  9     0x2d7b7  2      
  popq %r11                        #  10    0x2d7b9  3      
  andl $0xffffffe0, %r11d          #  11    0x2d7bc  7      
  addq %r15, %r11                  #  12    0x2d7c3  3      
  jmpq %r11                        #  13    0x2d7c6  3      
  nop                              #  14    0x2d7c9  1      
  nop                              #  15    0x2d7ca  1      
                                                            
.size _ZN2pp4ViewC1Ei, .-_ZN2pp4ViewC1Ei

