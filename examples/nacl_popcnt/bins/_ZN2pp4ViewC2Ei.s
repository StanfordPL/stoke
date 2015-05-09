  .text
  .globl _ZN2pp4ViewC2Ei
  .type _ZN2pp4ViewC2Ei, @function

#! file-offset 0x2d7e0
#! rip-offset  0x2d7e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC2Ei:                  #        0x2d7e0  0      
  pushq %rbx                       #  1     0x2d7e0  2      
  movl %edi, %ebx                  #  2     0x2d7e2  2      
  movl %ebx, %edi                  #  3     0x2d7e4  2      
  nop                              #  4     0x2d7e6  1      
  nop                              #  5     0x2d7e7  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x2d7e8  5      
  movl %ebx, %ebx                  #  7     0x2d7ed  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d7ef  8      
  popq %rbx                        #  9     0x2d7f7  2      
  popq %r11                        #  10    0x2d7f9  3      
  andl $0xffffffe0, %r11d          #  11    0x2d7fc  7      
  addq %r15, %r11                  #  12    0x2d803  3      
  jmpq %r11                        #  13    0x2d806  3      
  nop                              #  14    0x2d809  1      
  nop                              #  15    0x2d80a  1      
                                                            
.size _ZN2pp4ViewC2Ei, .-_ZN2pp4ViewC2Ei

